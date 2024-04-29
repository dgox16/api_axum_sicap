use serde::Deserialize;

use crate::models::entidades_models::{
    ClasificacionCuenta, FinalidadCuenta, GrupoCuenta, NaturalezaCuenta,
};

#[derive(Deserialize)]
pub struct CrearSucursalSchema {
    pub nombre: String,
    pub encargado: i32,
    pub domicilio: i32,
}

#[derive(Deserialize)]
pub struct CrearBancoSchema {
    pub nombre: String,
}

#[derive(Deserialize)]
pub struct CrearCuentaSchema {
    pub cuenta: String,
    pub cuenta_siti: String,
    pub nombre: String,
    pub clasificacion: Option<ClasificacionCuenta>,
    pub grupo: Option<GrupoCuenta>,
    pub finalidad: Option<FinalidadCuenta>,
    pub naturaleza: Option<NaturalezaCuenta>,
    pub afectable: Option<bool>,
    pub padre: String,
    pub nivel: i32,
    pub en_balance: Option<bool>,
    pub en_catalogo_minimo: Option<bool>,
    pub nombre_balance: String,
    pub nombre_siti: String,
    pub cuenta_padre_siti: String,
    pub cuenta_agrupar: String,
    pub orden_siti: i32,
    pub subcuenta_siti: Option<bool>,
    pub prorrateo: Option<bool>,
}
