ALTER TABLE prestamos_migrado ALTER COLUMN solicitud DROP NOT NULL;
ALTER TABLE prestamos_migrado ALTER COLUMN cuenta DROP NOT NULL;
ALTER TABLE prestamos_migrado ALTER COLUMN nombre_servicio_migrado DROP NOT NULL;
ALTER TABLE prestamos_migrado ALTER COLUMN persona DROP NOT NULL;
ALTER TABLE prestamos_migrado ALTER COLUMN sucursal DROP NOT NULL;
ALTER TABLE prestamos_migrado ALTER COLUMN usuario DROP NOT NULL;

ALTER TABLE prestamos_proyecto ALTER COLUMN monto_del_proyecto DROP NOT NULL;

ALTER TABLE prestamos_linea_credito ALTER COLUMN linea_de_credito DROP NOT NULL;
ALTER TABLE prestamos_linea_credito ALTER COLUMN ultima_ministracion DROP NOT NULL;
ALTER TABLE prestamos_linea_credito ALTER COLUMN monto DROP NOT NULL;
ALTER TABLE prestamos_linea_credito ALTER COLUMN numero_abonos DROP NOT NULL;
ALTER TABLE prestamos_linea_credito ALTER COLUMN plazo DROP NOT NULL;
ALTER TABLE prestamos_linea_credito ALTER COLUMN servicio DROP NOT NULL;
ALTER TABLE prestamos_linea_credito ALTER COLUMN fuente_financiamiento DROP NOT NULL;

ALTER TABLE prestamos_fira ALTER COLUMN actividad DROP NOT NULL;
ALTER TABLE prestamos_fira ALTER COLUMN subrama DROP NOT NULL;
ALTER TABLE prestamos_fira ALTER COLUMN cadena DROP NOT NULL;
ALTER TABLE prestamos_fira ALTER COLUMN elegible_fira DROP NOT NULL;
ALTER TABLE prestamos_fira ALTER COLUMN concepto_fira DROP NOT NULL;
ALTER TABLE prestamos_fira ALTER COLUMN grupo_finalidad_prestamo DROP NOT NULL;
ALTER TABLE prestamos_fira ALTER COLUMN reciprocidad_subclasificacion DROP NOT NULL;
ALTER TABLE prestamos_fira ALTER COLUMN finalidad DROP NOT NULL;
ALTER TABLE prestamos_fira ALTER COLUMN descripcion_destino DROP NOT NULL;
ALTER TABLE prestamos_fira ALTER COLUMN obtendra_recursos_para_pagar DROP NOT NULL;
ALTER TABLE prestamos_fira ALTER COLUMN fuente_alternativa_de_pago DROP NOT NULL;
ALTER TABLE prestamos_fira ALTER COLUMN programa DROP NOT NULL;
ALTER TABLE prestamos_fira ALTER COLUMN tipo_disposicion DROP NOT NULL;
ALTER TABLE prestamos_fira ALTER COLUMN tipo_credito DROP NOT NULL;

ALTER TABLE prestamos_seguro ALTER COLUMN tiene_seguro DROP NOT NULL;
ALTER TABLE prestamos_seguro ALTER COLUMN afectacion DROP NOT NULL;
ALTER TABLE prestamos_seguro ALTER COLUMN tasa_interes DROP NOT NULL;
ALTER TABLE prestamos_seguro ALTER COLUMN tasa_moratoria DROP NOT NULL;
ALTER TABLE prestamos_seguro ALTER COLUMN tasa_iva DROP NOT NULL;
ALTER TABLE prestamos_seguro ALTER COLUMN pagos_otras_deudas DROP NOT NULL;
ALTER TABLE prestamos_seguro ALTER COLUMN interes_otras_deudas DROP NOT NULL;

ALTER TABLE prestamos_documentos ALTER COLUMN compromiso_ahorro DROP NOT NULL;
ALTER TABLE prestamos_documentos ALTER COLUMN folio DROP NOT NULL;
ALTER TABLE prestamos_documentos ALTER COLUMN contrato DROP NOT NULL;
ALTER TABLE prestamos_documentos ALTER COLUMN pagare DROP NOT NULL;
ALTER TABLE prestamos_documentos ALTER COLUMN opinion_analista DROP NOT NULL;
ALTER TABLE prestamos_documentos ALTER COLUMN clasificacion DROP NOT NULL;
ALTER TABLE prestamos_documentos ALTER COLUMN estrato DROP NOT NULL;
ALTER TABLE prestamos_documentos ALTER COLUMN subclasificacion DROP NOT NULL;
ALTER TABLE prestamos_documentos ALTER COLUMN id_prestamo_migrado DROP NOT NULL;
ALTER TABLE prestamos_documentos ALTER COLUMN reestructurado DROP NOT NULL;
ALTER TABLE prestamos_documentos ALTER COLUMN pagos_sostenidos DROP NOT NULL;

ALTER TABLE prestamos_crediticio ALTER COLUMN fecha_buro DROP NOT NULL;
ALTER TABLE prestamos_crediticio ALTER COLUMN folio_buro DROP NOT NULL;
ALTER TABLE prestamos_crediticio ALTER COLUMN calificacion_buro DROP NOT NULL;
ALTER TABLE prestamos_crediticio ALTER COLUMN bc_score DROP NOT NULL;
ALTER TABLE prestamos_crediticio ALTER COLUMN indice_capacidad_crediticia DROP NOT NULL;

ALTER TABLE prestamos_lavado ALTER COLUMN forma_liquidacion DROP NOT NULL;
ALTER TABLE prestamos_lavado ALTER COLUMN antecedente_crediticio DROP NOT NULL;
ALTER TABLE prestamos_lavado ALTER COLUMN tipo_de_cliente DROP NOT NULL;
ALTER TABLE prestamos_lavado ALTER COLUMN observacion_credito DROP NOT NULL;

ALTER TABLE carteras_pasiva ALTER COLUMN persona DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN sucursal DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN servicio DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN credito_fira DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN direccion_regional DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN residencia_estatal DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN agencia DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN evaluador DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN dtuid DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN fecha_inicial DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN fecha_descuento DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN fecha_vencimiento DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN fecha_interes_normal DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN fecha_interes_moratorio DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN fecha_pagada DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN numero_pagos DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN plazo DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN estrato DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN clasificacion_fira DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN actividad_fira DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN subrama DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN cadena DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN concepto_fira DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN etapa DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN monto DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN meses_recuperacion DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN seguro DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN clave DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN garantia_fija DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN tipo_garantia DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN clave_garantia DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN procampo DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN garantia_acreditado DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN garantia_otros DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN clave_autorizacion DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN analisis_riesgo DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN exito_esperado DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN solicitante DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN fira DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN ubicacion_predio DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN clave_predio DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN condiciones_especificas DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN tipo_de_sujeto_de_credito DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN tipo_avio DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN tipo_tenencia DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN necesidad_anual DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN denominacion DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN activo_total DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN activo_fijo DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN pasivo_total DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN pasivo_fijo DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN tasa DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN puntos DROP NOT NULL;
ALTER TABLE carteras_pasiva ALTER COLUMN tasa_moratoria DROP NOT NULL;

ALTER TABLE prestamos_analisis_capacidad ALTER COLUMN firma_a_ruego DROP NOT NULL;
ALTER TABLE prestamos_analisis_capacidad ALTER COLUMN cartera_pasiva DROP NOT NULL;
ALTER TABLE prestamos_analisis_capacidad ALTER COLUMN capacidad_pago DROP NOT NULL;
ALTER TABLE prestamos_analisis_capacidad ALTER COLUMN capacidad_pago_ajustada DROP NOT NULL;
ALTER TABLE prestamos_analisis_capacidad ALTER COLUMN independencia_financiera DROP NOT NULL;
ALTER TABLE prestamos_analisis_capacidad ALTER COLUMN solvencia_general DROP NOT NULL;
ALTER TABLE prestamos_analisis_capacidad ALTER COLUMN indice_de_liquidez DROP NOT NULL;
ALTER TABLE prestamos_analisis_capacidad ALTER COLUMN rentabilidad DROP NOT NULL;
ALTER TABLE prestamos_analisis_capacidad ALTER COLUMN grado_de_riesgo DROP NOT NULL;

ALTER TABLE prestamos_fecha ALTER COLUMN fecha_solicitud DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN fecha_autorizacion DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN fecha_entrega DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN fecha_vencimiento DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN fecha_vencimiento_linea DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN fecha_interes DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN fecha_interes_moratorio DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN fecha_primer_incumplimiento DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN fecha_primer_pagare DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN fecha_ultima_ministracion DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN fecha_antes_interes DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN fecha_antes_moratorio DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN fecha_devolucion_garantia DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN fecha_ultima_investigacion DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN estado DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN etapa DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN ministracion DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN tipo_de_pagares DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN monto_abono DROP NOT NULL;
ALTER TABLE prestamos_fecha ALTER COLUMN fecha_ajustar_primer_pagare DROP NOT NULL;

ALTER TABLE prestamos_anterior ALTER COLUMN incumplimiento_credito_anterior DROP NOT NULL;
ALTER TABLE prestamos_anterior ALTER COLUMN periodo_pactado_original DROP NOT NULL;
