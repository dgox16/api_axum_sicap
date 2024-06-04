use std::sync::Arc;

use axum::{http::StatusCode, Json};

use crate::{
    schemas::persona_schemas::tutores_de_persona_schemas::CrearTutorDePersonaSchema, AppState,
};

pub async fn validar_nuevo_tutor_de_persona(
    data: &Arc<AppState>,
    id_persona: i32,
    tutores_de_persona: &Vec<CrearTutorDePersonaSchema>,
) -> Result<(), (StatusCode, Json<serde_json::Value>)> {
    let persona_existente = sqlx::query_scalar!(
        "SELECT tipo FROM personas WHERE id_persona = $1",
        id_persona
    )
    .fetch_optional(&data.db)
    .await
    .map_err(|e| {
        let respuesta_error = serde_json::json!({
            "estado": "error",
            "mensaje": format!("Error en la base de datos: {}", e),
        });
        (StatusCode::INTERNAL_SERVER_ERROR, Json(respuesta_error))
    })?;

    if let Some(tipo) = persona_existente {
        if tipo != 4 {
            let respuesta_error = serde_json::json!({
                "estado": "error",
                "mensaje": "El tipo de persona no coincide",
            });
            return Err((StatusCode::BAD_REQUEST, Json(respuesta_error)));
        }
    } else {
        let respuesta_error = serde_json::json!({
            "estado": "error",
            "mensaje": "El ID de la persona no existe",
        });
        return Err((StatusCode::BAD_REQUEST, Json(respuesta_error)));
    }

    for tutor in tutores_de_persona {
        if tutor.tutor_migrado.trim().is_empty() {
            let respuesta_error = serde_json::json!({
                "estado": "error",
                "mensaje": "El tutor migrado no puede estar vacio",
            });
            return Err((StatusCode::BAD_REQUEST, Json(respuesta_error)));
        }
        if tutor.documento_legal.trim().is_empty() {
            let respuesta_error = serde_json::json!({
                "estado": "error",
                "mensaje": "El documento legal no puede estar vacio",
            });
            return Err((StatusCode::BAD_REQUEST, Json(respuesta_error)));
        }
    }

    Ok(())
}