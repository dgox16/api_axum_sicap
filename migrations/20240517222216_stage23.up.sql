-- Add up migration script here
CREATE TABLE profesiones (
    id_profesion SERIAL PRIMARY KEY,
    profesion_migrado BIGINT NOT NULL,
    nombre VARCHAR(80) NOT NULL,
    abreviatura VARCHAR(20)
);

INSERT INTO profesiones (id_profesion, profesion_migrado, nombre, abreviatura) VALUES
(1,	'000000000000000',	'ING. QUIMICO INDUSTRIAL',	''),
(12,	'000010000000011',	'SIN DATOS',	''),
(15,	'000010000000014',	'PASANTE DE INGENIERO CIVIL',	''),
(18,	'000010000000017',	'INGENIERIA ELECTRICA',	''),
(19,	'000010000000018',	'INGENIERIA EN SISTEMAS',	''),
(21,	'000020000000002',	'LICENCIATURA EN MUSICA',	'LM'),
(22,	'000030000000001',	'LIC. EN DISEÑO DE INTERIORES',	''),
(25,	'000050000000001',	'TEC.SUP. UNIVERSITARIO',	''),
(26,	'000050000000002',	'TECNICO',	''),
(27,	'000050000000003',	'LIC.EDUCACION PRIMARIA',	''),
(28,	'000050000000004',	'INGENIERIA EN ALIMENTOS',	''),
(29,	'000050000000005',	'INGENIERO AGRONOMO',	''),
(31,	'000060000000001',	'PASANTE DE DERECHO',	''),
(32,	'000060000000002',	'DISEÑO',	''),
(33,	'000060000000003',	'INGENIERIA MADERERA',	''),
(34,	'000060000000004',	'TEC MEC AUTOMOTRIZ',	''),
(37,	'000060000000007',	'INEA',	''),
(38,	'000070000000001',	'DOCTORADO',	''),
(39,	'000070000000002',	'PASANTE DE VETERINARIA',	''),
(41,	'000070000000004',	'PASANTE DE INGENIERO AGRONOMO',	''),
(42,	'000070000000005',	'PASANTE DE INGENERIA MECANICA',	''),
(43,	'000070000000006',	'TECNICO EN TRABAJO SOCIAL',	''),
(44,	'000070000000007',	'PROFESOR DE EDUCACION MEDIO BASICO',	''),
(45,	'000080000000001',	'LIC. EN EDUCACION FISICA',	''),
(46,	'000080000000002',	'PASANTE INGENIERIA INDUSTRIAL',	''),
(48,	'000080000000004',	'TECNICO EN CONTABILIDAD',	''),
(49,	'000080000000005',	'TECNICO NATURISTA',	''),
(50,	'000080000000006',	'CONTADURIA PUBLICA',	''),
(51,	'000090000000001',	'INGENIERIA EN NEGOCIOS Y GESTION EMPRESA',	''),
(53,	'000090000000003',	'CONTADURIA FISCAL',	''),
(54,	'999999999999999',	'DESOCUPADA',	''),
(55,	'051544861502154',	'NO APLICA',	'N/A'),
(56,	'000050000000004',	'LICENCIATURA EN PSICOLOGIA',	'LP'),
(57,	'000050000000004',	'LICENCIATURA EN ARQUITECTURA',	'LA'),
(58,	'000050000000004',	'LICENCIATURA EN MEDICINA GENERAL',	'LMG'),
(59,	'000050000000004',	'LICENCIATURA EN PETROQUIMICA',	'LPQ'),
(60,	'000050000000004',	'LICENCIATURA EN CIENCIAS POLITICAS',	'LCP'),
(61,	'000050000000004',	'LICENCIATURA EN DERECHO',	'LIC'),
(62,	'000050000000004',	'LICENCIATURA EN BIOLOGIA',	'LB'),
(63,	'63',	'TECNICO EN ENFERMERIA',	'TS'),
(64,	'64',	'LICENCIATURA EN EDUCACION ESPECIAL',	'LEE'),
(65,	'000050000000004',	'INGENIERIA METAL MECANICA',	'IMM'),
(66,	'000050000000004',	'LICENCIATURA EN ADMINISTRACION',	'LA'),
(67,	'67',	'LICENCIATURA EN TRABAJO SOCIAL',	'LTS'),
(68,	'68',	'LICENCIATURA EN EDUCACION SECUNDARIA',	'LES'),
(69,	'42',	'MEDICO VETERINARIO',	'VETERINARI'),
(70,	'43',	'INGENIERIA INSTRUMENTACION DE PROCESOS',	'PROCESOS'),
(71,	'34',	'LICENCIATURA EN NUTRICION',	'LN'),
(72,	'43',	'LICENCIATURA EN PEDAGOGIA',	'LEP'),
(73,	'44',	'LICENCIATURA EN ARTES VISUALES',	'LAV'),
(74,	'74',	'INGENIERIA EN MECATRONICA',	'IM'),
(75,	'42',	'INGENIERIA EN MECANICA',	'ING'),
(76,	'1',	'SECRETARIA EN COMERCIO',	'SC'),
(77,	'1',	'LICENCIATURA EN ENFERMERIA',	'LEE'),
(78,	'1',	'INGENIERIA INDUSTRIAL',	'ING'),
(79,	'42',	'LICENCIATURA EN FISIOTERAPIA',	'LEF'),
(80,	'44',	'LICENCIATURA EN EDUCACION PREESCOLAR',	'LEP'),
(81,	'1',	'INGENIERIA AMBIENTAL',	'ING'),
(82,	'23',	'LICENCIATURA EN ODONTOLOGIA',	'LEO'),
(83,	'1',	'TECNICO EN GASTRONOMIA',	'TEC'),
(84,	'1',	'LICENCIATURA EN NEGOCIOS TURISTICOS',	'LNT'),
(85,	'85',	'LICENCIATURA EN METEOROLOGO',	'LM'),
(86,	'1',	'TECNICO EN DISEÑO GRAFICO',	'TDG'),
(87,	'1',	'LICENCIATURA EN LENGUAS Y LETRAS',	'LLL'),
(88,	'88',	'LICENCIATURA EN SOCIOLOGIA',	'LSL'),
(89,	'1',	'LICENCIATURA EN EDUCACION',	'LEE'),
(90,	'1',	'LICENCIATURA EN COMERCIO INTERNACIONAL',	'LCI'),
(91,	'1',	'INGENIERIA CIVIL',	'INGCIVIL'),
(92,	'1',	'LICENCIATURA EN DISEÑO INDUSTRIAL',	'LDI'),
(93,	'1',	'LICENCIATURA EN MANTENIMIENTO INDUSTRIAL',	'LMI'),
(94,	'1',	'INGENIERIA EN LOGISTICA',	'IL'),
(95,	'1',	'LICENCIATURA EN CRIMINOLOGIA',	'LC'),
(96,	'1',	'LIC. EN CIENCIAS DE LA COMUNICACION',	'LCC'),
(97,	'1',	'LICENCIATURA EN MERCADOTECNIA',	'LM'),
(98,	'1',	'LICENCIATURA EN SEGURIDAD PUBLICA',	'SEG'),
(99,	'1',	'LICENCIATURA ACTUARIA',	'ACT'),
(100,	'1',	'INGENIERIA EN ELECTROMECANICO',	'INGEM'),
(101,	'1',	'TECNICO EN MECATRONICA',	'TEM'),
(102,	'1',	'ING. EN ENERGIAS RENOVABLES',	'IER'),
(103,	'1',	'MEDICO GENERAL',	'MED'),
(105,	'105',	'TÉCNICO LABORATORISTA CLÍNICO',	'TLC'),
(106,	'1',	'MAESTRÍA EN CIENCIAS',	'MC');

