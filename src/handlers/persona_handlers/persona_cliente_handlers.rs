use std::sync::Arc;

use axum::{
    extract::{Path, State},
    http::StatusCode,
    response::IntoResponse,
    Json,
};
use serde_json::json;

use crate::{
    models::persona_models::{
        persona_cliente_models::ClientePersonaModelo,
        persona_types::{ClasificacionPersona, PeriodoPersona, RegimenConyugalPersona},
    },
    responses::error_responses::error_base_datos,
    schemas::persona_schemas::{
        persona_cliente_schemas::CrearPersonaClienteSchema,
        persona_principal_schemas::ObtenerPersonaParams,
    },
    validators::persona_validators::persona_cliente_validators::validar_nueva_persona_cliente,
    AppState,
};

pub async fn crear_nueva_persona_cliente_handler(
    State(data): State<Arc<AppState>>,
    Path(params): Path<ObtenerPersonaParams>,
    Json(body): Json<CrearPersonaClienteSchema>,
) -> Result<impl IntoResponse, (StatusCode, Json<serde_json::Value>)> {
    validar_nueva_persona_cliente(&data, params.id_persona, &body).await?;
    let nuevo_cliente = sqlx::query_as!(
        ClientePersonaModelo,
        r#"INSERT INTO clientes_persona
        (id_persona, clasificacion, ocupacion_pld, especificacion_pld, actividad_pld, 
        antiguedad, periodo, frecuencia_captacion, operacion_maxima_captacion,
        perfil_frecuencia_prestamo, operacion_maxima_prestamo,ingresos_mensual, egresos_mensual,
        grado_afectacion, afectacion,proveedor_recursos, parentesco,entre_calle, y_calle,
        fecha_residencia, lugar_nacimiento,estado_nacimiento,regimen_conyugal,profesion,
        escolaridad,autorizo_compartir_informacion_ifai, autorizo_publicidad)
        VALUES ($1, $2, $3, $4, $5, $6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,
        $19,$20,$21,$22,$23, $24,$25,$26,$27)
        RETURNING
        id_persona_cliente, id_persona, clasificacion AS "clasificacion: ClasificacionPersona",
        ocupacion_pld, especificacion_pld, antiguedad, actividad_pld,
        periodo AS "periodo: PeriodoPersona", frecuencia_captacion, operacion_maxima_captacion,
        perfil_frecuencia_prestamo, operacion_maxima_prestamo,
        ingresos_mensual, egresos_mensual, grado_afectacion, afectacion,
        proveedor_recursos, parentesco,entre_calle, y_calle, 
        fecha_residencia, lugar_nacimiento, estado_nacimiento,
        regimen_conyugal AS "regimen_conyugal: RegimenConyugalPersona",profesion,escolaridad, 
        autorizo_compartir_informacion_ifai,autorizo_publicidad"#,
        params.id_persona,
        body.clasificacion as ClasificacionPersona,
        body.ocupacion_pld,
        body.especificacion_pld,
        body.actividad_pld,
        body.antiguedad,
        body.periodo as PeriodoPersona,
        body.frecuencia_captacion,
        body.operacion_maxima_captacion,
        body.perfil_frecuencia_prestamo,
        body.operacion_maxima_prestamo,
        body.ingresos_mensual,
        body.egresos_mensual,
        body.grado_afectacion,
        body.afectacion,
        body.proveedor_recursos,
        body.parentesco,
        body.entre_calle,
        body.y_calle,
        body.fecha_residencia,
        body.lugar_nacimiento,
        body.estado_nacimiento,
        body.regimen_conyugal as RegimenConyugalPersona,
        body.profesion,
        body.escolaridad,
        body.autorizo_compartir_informacion_ifai,
        body.autorizo_publicidad,
    )
    .fetch_one(&data.db)
    .await
    .map_err(error_base_datos)?;

    let respuesta = json!({
        "estado": true,
        "datos": nuevo_cliente
    });

    Ok(Json(respuesta))
}

pub async fn obtener_persona_cliente_handler(
    data: &Arc<AppState>,
    id_persona: i32,
) -> Result<ClientePersonaModelo, (StatusCode, Json<serde_json::Value>)> {
    let cliente_encontrado = sqlx::query_as!(
        ClientePersonaModelo,
        r#"SELECT id_persona_cliente, id_persona, 
        clasificacion AS "clasificacion: ClasificacionPersona",
        ocupacion_pld, especificacion_pld, antiguedad, actividad_pld,
        periodo AS "periodo: PeriodoPersona", frecuencia_captacion, 
        operacion_maxima_captacion,perfil_frecuencia_prestamo, operacion_maxima_prestamo,
        ingresos_mensual, egresos_mensual, grado_afectacion, afectacion,
        proveedor_recursos, parentesco,entre_calle, y_calle, 
        fecha_residencia, lugar_nacimiento, estado_nacimiento,
        regimen_conyugal AS "regimen_conyugal: RegimenConyugalPersona",profesion,
        escolaridad,autorizo_compartir_informacion_ifai,autorizo_publicidad 
        FROM clientes_persona 
        WHERE id_persona=$1"#,
        id_persona,
    )
    .fetch_one(&data.db)
    .await
    .map_err(error_base_datos)?;

    Ok(cliente_encontrado)
}
