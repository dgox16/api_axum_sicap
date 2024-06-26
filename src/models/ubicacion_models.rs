use serde::{Deserialize, Serialize};

#[derive(Clone, Debug, PartialEq, PartialOrd, sqlx::Type, Deserialize, Serialize)]
#[sqlx(type_name = "tipo_calle", rename_all = "lowercase")]
pub enum TipoCalle {
    Calle,
    Avenida,
    Prolongacion,
    Cerrada,
    Privada,
    Calzada,
}

#[derive(Debug, sqlx::FromRow, Deserialize, Serialize)]
pub struct CalleModelo {
    pub id_calle: i64,
    pub nombre: String,
    pub tipo: TipoCalle,
}

#[derive(Debug, sqlx::FromRow, Deserialize, Serialize)]
pub struct DomicilioModelo {
    pub id_domicilio: i32,
    pub cp: String,
    pub colonia: String,
    pub calle_id: i64,
    pub entre_calle_id: i64,
    pub y_calle_id: i64,
    pub numero_exterior: String,
    pub numero_interior: Option<String>,
    pub geolocalizacion: Option<String>,
}

#[derive(Debug, sqlx::FromRow, Deserialize, Serialize)]
pub struct PaisModelo {
    pub id_pais: i32,
    pub abreviatura: String,
    pub nombre: String,
    pub orden: i32,
}

#[derive(Debug, sqlx::FromRow, Deserialize, Serialize)]
pub struct EstadoModelo {
    pub id_estado: i32,
    pub nombre: String,
    pub abreviado: String,
    pub corto: String,
    pub clave_buro: String,
}

#[derive(Debug, sqlx::FromRow, Deserialize, Serialize)]
pub struct MunicipioModelo {
    pub id_municipio: i32,
    pub nombre: String,
    pub estado: Option<i32>,
    pub factor_riesgo: i32,
}

#[derive(Clone, Debug, PartialEq, PartialOrd, sqlx::Type, Deserialize, Serialize)]
#[sqlx(type_name = "tipo_ciudad", rename_all = "lowercase")]
pub enum TipoCiudad {
    Tipo1,
    Tipo2,
}

#[derive(Clone, Debug, PartialEq, PartialOrd, sqlx::Type, Deserialize, Serialize)]
#[sqlx(type_name = "clasificacion_ciudad", rename_all = "lowercase")]
pub enum ClasificacionCiudad {
    Ciudad,
    Localidad,
}

#[derive(Debug, sqlx::FromRow, Deserialize, Serialize)]
pub struct CiudadModelo {
    pub id_ciudad: i32,
    pub clave_localidad: i32,
    pub estado: i32,
    pub municipio: i32,
    pub nombre: String,
    pub tipo: TipoCiudad,
    pub clasificacion: ClasificacionCiudad,
    pub numero_habitantes: i32,
    pub orden: i32,
    pub cp: String,
}

#[derive(Clone, Debug, PartialEq, PartialOrd, sqlx::Type, Deserialize, Serialize)]
#[sqlx(type_name = "tipo_zona_barrio", rename_all = "lowercase")]
pub enum TipoZonaBarrio {
    Tipo1,
    Tipo2,
}

#[derive(Clone, Debug, PartialEq, PartialOrd, sqlx::Type, Deserialize, Serialize)]
#[sqlx(type_name = "indice_marginacion_barrio", rename_all = "snake_case")]
pub enum IndiceMarginacionBarrio {
    MuyBajo,
    Bajo,
    Medio,
    Alto,
    MuyAlto,
}

#[derive(Debug, sqlx::FromRow, Deserialize, Serialize)]
pub struct BarrioModelo {
    pub id_barrio: i32,
    pub ciudad: i32,
    pub nombre: String,
    pub cp: String,
    pub tipo_cp: i32,
    pub sindicatura: i32,
    pub tipo_zona: TipoZonaBarrio,
    pub numero_habitantes: i32,
    pub indice_marginacion: IndiceMarginacionBarrio,
    pub ponderacion_5c: f64,
    pub c_municipio: i32,
    pub unico_asentamiento: i32,
}
