use crate::{
    models::{
        poliza_models::{
            AplicacionPoliza, DetallePolizaModelo, FuentePoliza, IvaDetallePoliza,
            PolizaEgresoModelo, PolizaModelo, TipoPoliza,
        },
        user_models::UsuarioModelo,
    },
    schemas::poliza_schema::{CrearDetallePolizaSchema, CrearPolizaSchema},
    validators::poliza_validators::validar_nueva_poliza_egreso,
    AppState,
};
use axum::{extract::State, http::StatusCode, response::IntoResponse, Extension, Json};
use serde_json::json;
use std::sync::Arc;

pub async fn crear_nueva_poliza_handler(
    State(data): State<Arc<AppState>>,
    Extension(usuario): Extension<UsuarioModelo>,
    Json(body): Json<CrearPolizaSchema>,
) -> Result<impl IntoResponse, (StatusCode, Json<serde_json::Value>)> {
    let resultado = if body.tipo == TipoPoliza::Egreso {
        insertar_poliza_con_egreso(&data, &usuario, &body).await
    } else {
        insertar_poliza_solamente(&data, &usuario, &body).await
    };

    match resultado {
        Ok((nueva_poliza, Some(nueva_poliza_egreso))) => match body.detalles_poliza {
            Some(detalles_poliza) => {
                let detalles_creados =
                    crear_detalles_poliza(&data, nueva_poliza.id_poliza, detalles_poliza).await?;
                let respuesta = json!({
                    "estado": "exitoso",
                    "data": {
                        "poliza": nueva_poliza,
                        "detalles_poliza": detalles_creados,
                        "poliza_egreso": nueva_poliza_egreso,
                    }
                });
                Ok(Json(respuesta))
            }
            None => {
                let respuesta = json!({
                    "estado": "exitoso",
                    "data": {
                        "poliza": nueva_poliza,
                        "poliza_egreso": nueva_poliza_egreso,
                    }
                });
                Ok(Json(respuesta))
            }
        },
        Ok((nueva_poliza, None)) => match body.detalles_poliza {
            Some(detalles_poliza) => {
                let detalles_creados =
                    crear_detalles_poliza(&data, nueva_poliza.id_poliza, detalles_poliza).await?;
                let respuesta = json!({
                    "estado": "exitoso",
                    "data": {
                        "poliza": nueva_poliza,
                        "detalles_poliza": detalles_creados,
                    }
                });
                Ok(Json(respuesta))
            }
            None => {
                let respuesta = json!({
                    "estado": "exitoso",
                    "data": nueva_poliza,
                });
                Ok(Json(respuesta))
            }
        },
        Err((status, error)) => Err((status, error)),
    }
}

async fn crear_detalles_poliza(
    data: &Arc<AppState>,
    nueva_poliza_id: i32,
    detalles_poliza: Vec<CrearDetallePolizaSchema>,
) -> Result<Vec<DetallePolizaModelo>, (StatusCode, Json<serde_json::Value>)> {
    let mut detalles_creados = Vec::new();
    for detalle in detalles_poliza {
        let iva = detalle.iva.unwrap_or(IvaDetallePoliza::NoAplica);
        let nuevo_detalle = sqlx::query_as!(
                DetallePolizaModelo,
                r#"INSERT INTO detalles_poliza
                (poliza,cuenta,sucursal,cargo,abono,proveedor,concepto,iva) 
                VALUES ($1,$2,$3,$4,$5,$6,$7,$8)
                RETURNING id_detalle_poliza, poliza,cuenta,sucursal,cargo,abono,proveedor,concepto,iva AS "iva: IvaDetallePoliza""#,
                nueva_poliza_id,
                detalle.cuenta,
                detalle.sucursal,
                detalle.cargo,
                detalle.abono,
                detalle.proveedor,
                detalle.concepto,
                iva as IvaDetallePoliza
            )
            .fetch_one(&data.db)
            .await
            .map_err(|e| {
                (
                    StatusCode::INTERNAL_SERVER_ERROR,
                    Json(serde_json::json!({
                        "estado": "error",
                        "mensaje": format!("Error en la base de datos: {}", e),
                    })),
                )
            })?;
        detalles_creados.push(nuevo_detalle);
    }
    Ok(detalles_creados)
}

async fn insertar_poliza_con_egreso(
    data: &Arc<AppState>,
    usuario: &UsuarioModelo,
    body: &CrearPolizaSchema,
) -> Result<(PolizaModelo, Option<PolizaEgresoModelo>), (StatusCode, Json<serde_json::Value>)> {
    let body_poliza_egreso = match &body.poliza_egreso {
        Some(poliza_egreso) => {
            validar_nueva_poliza_egreso(data, poliza_egreso).await?;
            poliza_egreso
        }
        None => {
            return Err((
                StatusCode::BAD_REQUEST,
                Json(serde_json::json!({
                    "estado": "error",
                    "mensaje": "No se ha proporcionado una póliza de egreso",
                })),
            ));
        }
    };

    let nueva_poliza = crear_poliza(data, usuario.id, body).await?;
    let nueva_poliza_egreso = sqlx::query_as!(
        PolizaEgresoModelo,
        "INSERT INTO polizas_egreso (poliza,beneficiario, banco, cheque) VALUES ($1,$2,$3,$4) RETURNING *",
        nueva_poliza.id_poliza,
        body_poliza_egreso.beneficiario.to_string(),
        body_poliza_egreso.banco,
        body_poliza_egreso.cheque.to_string()
    )
    .fetch_one(&data.db)
    .await
    .map_err(|e| {
        (
            StatusCode::INTERNAL_SERVER_ERROR,
            Json(serde_json::json!({
                "estado": "error",
                "mensaje": format!("Error en la base de datos: {}", e),
            })),
        )
    })?;

    Ok((nueva_poliza, Some(nueva_poliza_egreso)))
}

async fn insertar_poliza_solamente(
    data: &Arc<AppState>,
    usuario: &UsuarioModelo,
    body: &CrearPolizaSchema,
) -> Result<(PolizaModelo, Option<PolizaEgresoModelo>), (StatusCode, Json<serde_json::Value>)> {
    let nueva_poliza = crear_poliza(data, usuario.id, body).await?;
    Ok((nueva_poliza, None))
}

async fn crear_poliza(
    data: &Arc<AppState>,
    usuario_id: i32,
    body: &CrearPolizaSchema,
) -> Result<PolizaModelo, (StatusCode, Json<serde_json::Value>)> {
    let tipo = body.tipo.clone();
    let numero = body.numero.unwrap_or(1);
    let aplicacion = <std::option::Option<AplicacionPoliza> as Clone>::clone(&body.aplicacion)
        .unwrap_or(AplicacionPoliza::Normal);
    let fuente = <std::option::Option<FuentePoliza> as Clone>::clone(&body.fuente)
        .unwrap_or(FuentePoliza::Operacion);
    let poliza_result = sqlx::query_as!(
        PolizaModelo,
        r#"INSERT INTO polizas 
        (tipo, numero, sucursal, concepto, usuario_autoriza, usuario_elabora, aplicacion,fuente)
        VALUES ($1, $2, $3, $4, $5, $6,$7,$8)
        RETURNING id_poliza,tipo AS "tipo: TipoPoliza",numero,sucursal,fecha_poliza,fecha_registro_poliza,concepto,
        usuario_autoriza,usuario_elabora,aplicacion AS "aplicacion: AplicacionPoliza",fuente AS "fuente: FuentePoliza",automatico"#,
        tipo as TipoPoliza,
        numero,
        body.sucursal,
        body.concepto.to_string(),
        usuario_id,
        usuario_id,
        aplicacion as AplicacionPoliza,
        fuente as FuentePoliza
    )
    .fetch_one(&data.db)
    .await;

    match poliza_result {
        Ok(poliza) => Ok(poliza),
        Err(e) => Err((
            StatusCode::INTERNAL_SERVER_ERROR,
            Json(serde_json::json!({
                "estado": "error",
                "mensaje": format!("Error en la base de datos: {}", e),
            })),
        )),
    }
}
