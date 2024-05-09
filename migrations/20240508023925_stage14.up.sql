CREATE TABLE estados_mexico (
    id_estado SERIAL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    abreviado VARCHAR(4) NOT NULL,
    corto VARCHAR(4) NOT NULL,
    clave_buro VARCHAR(4) NOT NULL
);

INSERT INTO estados_mexico (id_estado, nombre, abreviado, corto, clave_buro) VALUES
(1,	'AGUASCALIENTES',	'AGS',	'AS',	'AGS'),
(2,	'BAJA CALIFORNIA NORTE',	'BCN',	'BC',	'BCN'),
(3,	'BAJA CALIFORNIA SUR',	'BCS',	'BS',	'BCS'),
(4,	'CAMPECHE',	'CAM',	'CC',	'CAM'),
(5,	'COAHUILA',	'COA',	'CL',	'COA'),
(6,	'COLIMA',	'COL',	'CM',	'COL'),
(7,	'CHIAPAS',	'CHS',	'CS',	'CHS'),
(8,	'CHIHUAHUA',	'CHI',	'CH',	'CHI'),
(9,	'CIUDAD DE MÉXICO',	'DIF',	'DF',	'CDMX'),
(10,	'DURANGO',	'DGO',	'DG',	'DGO'),
(11,	'GUANAJUATO',	'GUA',	'GT',	'GTO'),
(12,	'GUERRERO',	'GRO',	'GR',	'GRO'),
(13,	'HIDALGO',	'HGO',	'HG',	'HGO'),
(14,	'JALISCO',	'JAL',	'JC',	'JAL'),
(15,	'ESTADO DE MEXICO',	'MEX',	'MC',	'EM'),
(16,	'MICHOACAN DE OCAMPO',	'MIC',	'MN',	'MICH'),
(17,	'MORELOS',	'MOR',	'MS',	'MOR'),
(18,	'NAYARIT',	'NAY',	'NT',	'NAY'),
(19,	'NUEVO LEON',	'NL',	'NL',	'NL'),
(20,	'OAXACA',	'OAX',	'OC',	'OAX'),
(21,	'PUEBLA',	'PUE',	'PL',	'PUE'),
(22,	'QUERÉTARO',	'QUE',	'QT',	'QRO'),
(23,	'QUINTANA ROO',	'QR',	'QR',	'QR'),
(24,	'SAN LUIS POTOSI',	'SLP',	'SP',	'SLP'),
(25,	'SINALOA',	'SIN',	'SL',	'SIN'),
(26,	'SONORA',	'SON',	'SR',	'SON'),
(27,	'TABASCO',	'TAB',	'TC',	'TAB'),
(28,	'TAMAULIPAS',	'TAM',	'TS',	'TAM'),
(29,	'TLAXCALA',	'TLAX',	'TL',	'TLAX'),
(30,	'VERACRUZ',	'VER',	'VZ',	'VER'),
(31,	'YUCATAN',	'YUC',	'YN',	'YUC'),
(32,	'ZACATECAS',	'ZAC',	'ZS',	'ZAC');
