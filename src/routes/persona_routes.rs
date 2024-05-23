use std::sync::Arc;

use axum::{
    middleware,
    routing::{get, post},
    Router,
};

use crate::{
    handlers::persona_handlers::{
        persona_aspirante_handlers::crear_nueva_persona_aspirante_handler,
        persona_principal_handlers::{
            buscar_personas_handler, crear_nueva_persona_handler, obtener_persona_handler,
        },
        persona_socio_handlers::crear_nueva_persona_socio_handler,
    },
    middlewares::jwt_middlewares::auth_required,
    AppState,
};

pub fn persona_router(app_state: Arc<AppState>) -> Router {
    Router::new()
        .route(
            "/api/persona/nueva",
            post(crear_nueva_persona_handler).route_layer(middleware::from_fn_with_state(
                app_state.clone(),
                auth_required,
            )),
        )
        .route(
            "/api/persona/obtener/:id_persona",
            get(obtener_persona_handler),
        )
        .route("/api/persona/buscar/", get(buscar_personas_handler))
        .route(
            "/api/persona/aspirante/nuevo/:id_persona",
            get(crear_nueva_persona_aspirante_handler),
        )
        .route(
            "/api/persona/socio/nuevo/:id_persona",
            get(crear_nueva_persona_socio_handler),
        )
        .with_state(app_state)
}
