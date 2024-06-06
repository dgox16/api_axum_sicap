CREATE TABLE prestamos_fira (
    actividad INTEGER NOT NULL,
    subrama INTEGER NOT NULL,
    cadena INTEGER NOT NULL,
    elegible_fira BOOLEAN NOT NULL,
    concepto_fira INTEGER NOT NULL,
    grupo_finalidad_prestamo INTEGER NOT NULL,
    reciprocidad_subclasificacion INTEGER NOT NULL,
    finalidad INTEGER NOT NULL,
    descripcion_destino VARCHAR(100) NOT NULL,
    obtendra_recursos_para_pagar VARCHAR(50) NOT NULL,
    fuente_alternativa_de_pago VARCHAR(50) NOT NULL,
    programa INTEGER NOT NULL,
    tipo_disposicion INTEGER NOT NULL,
    tipo_credito INTEGER NOT NULL,
    FOREIGN KEY (actividad) REFERENCES actividades(id_actividad) ON DELETE RESTRICT,
    FOREIGN KEY (concepto_fira) REFERENCES conceptos_fira(id_concepto_fira) ON DELETE RESTRICT,
    FOREIGN KEY (grupo_finalidad_prestamo) REFERENCES grupos_finalidad_prestamo(id_grupo_finalidad_prestamo) ON DELETE RESTRICT,
    FOREIGN KEY (reciprocidad_subclasificacion) REFERENCES reciprocidades_subclasificacion(id_reciprocidad_subclasificacion) ON DELETE RESTRICT,
    FOREIGN KEY (finalidad) REFERENCES finalidades(id_finalidad) ON DELETE RESTRICT,
    FOREIGN KEY (programa) REFERENCES programas(id_programa) ON DELETE RESTRICT,
    FOREIGN KEY (tipo_disposicion) REFERENCES tipos_disposicion(id_tipo_disposicion) ON DELETE RESTRICT,
    FOREIGN KEY (tipo_credito) REFERENCES tipos_credito(id_tipo_credito) ON DELETE RESTRICT
);
