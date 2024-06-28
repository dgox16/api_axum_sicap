use crate::{
    models::{token_models::TokenClaims, user_models::UsuarioModelo},
    AppState,
};
use axum::{
    body::Body,
    extract::State,
    http::{header, Request, StatusCode},
    middleware::Next,
    response::IntoResponse,
    Json,
};
use axum_extra::extract::CookieJar;
use jsonwebtoken::{decode, DecodingKey, Validation};
use serde::Serialize;
use std::sync::Arc;

#[derive(Debug, Serialize)]
pub struct ErrorRespuesta {
    pub estado: &'static str,
    pub mensaje: String,
}

pub async fn auth_required(
    cookie_jar: CookieJar,
    State(data): State<Arc<AppState>>,
    mut req: Request<Body>,
    next: Next,
) -> Result<impl IntoResponse, (StatusCode, Json<ErrorRespuesta>)> {
    // Busca el token en las cookies con el nombre de cookies, en caso de encontrarlo lo convierte en String
    let token = cookie_jar
        .get("token")
        .map(|cookie| cookie.value().to_string())
        // Si no lo encuentra lo busca en la cabecera y lo formatea
        .or_else(|| {
            req.headers()
                .get(header::AUTHORIZATION)
                .and_then(|auth_header| auth_header.to_str().ok())
                .and_then(|auth_value| {
                    let starts_with = auth_value.starts_with("Bearer ");
                    if starts_with {
                        Some(auth_value[7..].to_owned())
                    } else {
                        None
                    }
                })
        });

    // Si no hay token, mandamos el error
    let token = token.ok_or_else(|| {
        let json_error = ErrorRespuesta {
            estado: "error",
            mensaje: "Tú no estas logueado, por favor otorga un token".to_string(),
        };
        (StatusCode::UNAUTHORIZED, Json(json_error))
    })?;

    // Decodificamos el token
    let claims = decode::<TokenClaims>(
        &token,
        &DecodingKey::from_secret(data.env.jwt_secreto.as_ref()),
        &Validation::default(),
    )
    .map_err(|_| {
        // Si falla mandamos un fallo
        let json_error = ErrorRespuesta {
            estado: "error",
            mensaje: "Token invalido".to_string(),
        };
        (StatusCode::UNAUTHORIZED, Json(json_error))
    })?
    .claims;

    // Buscamos el usuario en la base de datos
    let usuario = sqlx::query_as!(
        UsuarioModelo,
        "SELECT * FROM usuarios WHERE id = $1",
        claims.sub
    )
    .fetch_optional(&data.db)
    .await
    .map_err(|e| {
        // Si falla lo mostramos
        let json_error = ErrorRespuesta {
            estado: "error",
            mensaje: format!("Error con la base de datos: {}", e),
        };
        (StatusCode::INTERNAL_SERVER_ERROR, Json(json_error))
    })?;

    // Ultima comprobacion de que el usuario exista o no
    let usuario = usuario.ok_or_else(|| {
        let json_error = ErrorRespuesta {
            estado: "error",
            mensaje: "Este usuario ya no existe".to_string(),
        };
        (StatusCode::UNAUTHORIZED, Json(json_error))
    })?;

    // Si todo funciona; guardamos el usuario en la request para que el siguiente handler pueda utilizarlo
    req.extensions_mut().insert(usuario);
    // Se sigue a la siguiente funcion
    Ok(next.run(req).await)
}
