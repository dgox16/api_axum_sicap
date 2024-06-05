CREATE TABLE conceptos_fira (
    id_concepto_fira INTEGER NOT NULL,
    cadena INTEGER NOT NULL,
    nombre VARCHAR(100) NOT NULL
);

INSERT INTO conceptos_fira (id_concepto_fira, cadena, nombre) VALUES
(5,	0,	'POZO PROFUNDO ADEME'),
(40,	0,	'BOCATOMAS'),
(52,	0,	'BOMBAS CENTRIFUGAS'),
(53,	0,	'BOMBAS DE TAZONES'),
(60,	0,	'BORDOS CONSTRUCCION'),
(61,	0,	'BORDOS MANTENIMIENTO'),
(90,	0,	'CANALES CONSTRUCCION'),
(100,	0,	'CANALES MANTENIMIENTO'),
(130,	0,	'DRENES CONSTRUCCION'),
(131,	0,	'DRENAJE PARCELARIO'),
(132,	0,	'DRENES MANTENIMIENTO'),
(140,	0,	'DEPOSITOS DE AGUA'),
(141,	0,	'COSECHA DE AGUA PARA RIEGO AGRICOLA'),
(159,	0,	'OTRAS CONSTRUCCIONES HIDRAULICAS'),
(160,	0,	'EQUIPO DE BOMBEO'),
(161,	0,	'RIEGO IMPULSOS'),
(164,	0,	'MEDIDORES DE AGUA'),
(166,	0,	'OTRAS INSTALACIONES HIDRAULICAS'),
(167,	0,	'OTROS EQUIPOS HIDRAULICOS'),
(185,	0,	'POZO PROFUNDO EQUIPO PERFORACION'),
(190,	0,	'POZO PROFUNDO PERFORACION'),
(191,	0,	'POZO PROFUNDO REHABILITACION'),
(192,	0,	'POZO PROFUNDO ESTUDIO/SONDEO'),
(200,	0,	'NORIAS'),
(220,	0,	'PRESA ALMACENADORA CONSTRUCCION'),
(222,	0,	'PRESA ALMACENADORA MANTENIMIENTO'),
(223,	0,	'PRESA DERIVADORA CONSTRUCCION'),
(224,	0,	'PRESA DERIVADORA MANTENIMIENTO'),
(254,	0,	'TAZONES DE BOMBAS'),
(255,	0,	'TUBERIA'),
(256,	0,	'RIEGO SIFONES'),
(265,	0,	'RIEGO MICROASPERSION'),
(270,	0,	'RIEGO COMPUERTAS'),
(273,	0,	'RIEGO ASPERSION'),
(274,	0,	'RIEGO GOTEO'),
(275,	0,	'RIEGO OTROS TIPOS'),
(280,	0,	'APICULTURA EQUIPO'),
(295,	0,	'APIARIOS (COLMENAS NUCLEOS ETC)'),
(340,	0,	'GALLINA'),
(344,	0,	'PATOS'),
(349,	0,	'PAVOS'),
(355,	0,	'POLLOS'),
(375,	2006,	'HUEVO PARA INCUBACION'),
(401,	0,	'OTROS FORRAJES'),
(402,	0,	'OTROS PERENNES NO FRUTALES'),
(412,	1057,	'AGAVE'),
(415,	0,	'ACELGA'),
(420,	1019,	'AJO'),
(430,	1006,	'AJONJOLI'),
(465,	1020,	'ALCACHOFA'),
(470,	1058,	'ALFALFA'),
(480,	1043,	'ALGODON'),
(490,	1049,	'ALPISTE'),
(495,	1050,	'ALUBIA'),
(500,	0,	'ANIS'),
(505,	1135,	'APIO'),
(510,	1001,	'ARROZ'),
(520,	1051,	'ARVEJON'),
(530,	1011,	'AVENA FORRAJERA'),
(540,	1052,	'AVENA'),
(545,	0,	'BARBASCO'),
(550,	1118,	'BERENJENA'),
(555,	0,	'BETABEL'),
(557,	1021,	'BROCOLI'),
(560,	1044,	'CACAHUATE'),
(565,	1022,	'CALABACITA'),
(570,	0,	'CALABAZA'),
(580,	1023,	'CAMOTE'),
(600,	1059,	'CAÑA DE AZUCAR PLANTILLA'),
(610,	1059,	'CAÑA DE AZUCAR SOCAS Y RESOCAS'),
(630,	1007,	'CARTAMO'),
(640,	0,	'AZUCAR'),
(650,	1012,	'CEBADA FORRAJERA'),
(660,	1053,	'CEBADA'),
(670,	1024,	'CEBOLLA'),
(680,	1054,	'CENTENO'),
(690,	1060,	'CACAO'),
(700,	1061,	'CAFE'),
(710,	0,	'CANDELILLA'),
(749,	1025,	'CHAMPI?ON'),
(750,	1026,	'CHICHARO'),
(755,	1027,	'CHILE'),
(759,	0,	'CILANTRO'),
(765,	0,	'CITRONELA'),
(772,	1028,	'COL O REPOLLO'),
(773,	0,	'COMINO'),
(775,	1013,	'EBO VEZA O JANAMARGO'),
(780,	1029,	'EJOTE'),
(782,	1030,	'ELOTE'),
(785,	1062,	'ESPARRAGO'),
(787,	0,	'ESPINACA'),
(790,	1002,	'FRIJOL'),
(800,	1031,	'FRESA'),
(810,	1055,	'GARBANZO'),
(820,	1014,	'GARBANZO FORRAJERO'),
(830,	1008,	'GIRASOL'),
(850,	1032,	'HABA'),
(860,	1063,	'HENEQUEN'),
(885,	0,	'JICAMA'),
(890,	1033,	'JITOMATE'),
(900,	1034,	'LECHUGA'),
(910,	0,	'LECHUGUILLA'),
(920,	1035,	'LENTEJA'),
(930,	1009,	'LINAZA'),
(940,	0,	'LINO'),
(950,	1064,	'MAGUEY'),
(960,	1003,	'MAIZ'),
(963,	1015,	'MAIZ FORRAJERO'),
(965,	1036,	'MELON'),
(966,	1046,	'MAIZ PALOMERO'),
(975,	0,	'NABO'),
(980,	1065,	'NOPAL'),
(984,	1037,	'OKRA O BOMBO'),
(990,	1038,	'PAPA'),
(1000,	1136,	'PASTIZALES'),
(1005,	1039,	'PEPINO'),
(1006,	0,	'PEREJIL'),
(1007,	1112,	'PIMIENTA'),
(1010,	0,	'RABANO'),
(1020,	0,	'REMOLACHA FORRAJERA'),
(1035,	1040,	'SANDIA'),
(1050,	1047,	'SORGO ESCOBERO MIJO'),
(1060,	1016,	'SORGO FORRAJERO'),
(1070,	1004,	'SORGO'),
(1080,	1010,	'SOYA'),
(1083,	0,	'PASTA DE SOYA'),
(1090,	1066,	'TABACO'),
(1100,	1041,	'TOMATE CASCARA'),
(1110,	1018,	'TREBOL'),
(1120,	1005,	'TRIGO'),
(1130,	1067,	'VAINILLA'),
(1131,	0,	'OTROS CULTIVOS INDUSTRIALES'),
(1150,	1056,	'ZACATON'),
(1160,	1042,	'ZANAHORIA'),
(1165,	1045,	'CEMPOAL'),
(1167,	0,	'MANTENIMIENTO CONSTRUCCS E INSTALAC'),
(1168,	0,	'GALERAS'),
(1169,	0,	'OTRAS CONSTRUCCIONES RURALES'),
(1172,	0,	'APRISCOS'),
(1176,	0,	'BA?OS PARA GANADO'),
(1190,	0,	'CABALLERIZAS'),
(1200,	0,	'CASAS CABA?AS VIVIENDA RURAL'),
(1215,	0,	'CERCAS'),
(1220,	0,	'COBERTIZOS'),
(1226,	0,	'CONEJERAS'),
(1230,	0,	'CAMINOS INTERNOS EN EXPLOTACIONES'),
(1231,	0,	'CAMINOS VECINALES'),
(1251,	0,	'CASETAS NAVES GALLINEROS'),
(1253,	0,	'ERAS'),
(1255,	0,	'ESTABLOS Y SALAS DE ORDE?A'),
(1256,	0,	'ESTACION CLIMATOLOGICA CONSTRUCCIO'),
(1257,	0,	'FOSA SEPTICA'),
(1258,	0,	'ESTERCOLEROS'),
(1260,	0,	'FRIGORIFICOS'),
(1283,	0,	'PISTA PARA AVIONES'),
(1284,	0,	'HORNOS'),
(1290,	0,	'PUENTES'),
(1297,	0,	'SALAS DE INCUBACION'),
(1299,	0,	'SALAS DE TRASQUILA'),
(1300,	0,	'SANITARIOS RODANTES O FIJOS'),
(1310,	0,	'SILOS'),
(1320,	0,	'TANQUES'),
(1343,	0,	'TOLDOS Y MALLAS PROTECTORAS'),
(1352,	0,	'INVERNADEROS'),
(1365,	0,	'ZAHURDAS'),
(1375,	0,	'INSTALACIONES Y LINEAS ELECTRICAS'),
(1380,	0,	'PLANTAS Y GENERADORES ELECTRICIDAD'),
(1381,	0,	'SUBESTACIONES ELECTRICAS'),
(1382,	0,	'OTRAS INSTALACIONES RURALES'),
(1390,	0,	'TRANSFORMADORES ELECTRICOS'),
(1398,	0,	'CASETAS PARA EQUIPO ELECTRICO'),
(1399,	0,	'EQUIPO ELECTRICO'),
(1400,	0,	'TURBINAS PARA GENERADORES'),
(1410,	1068,	'AGUACATE'),
(1415,	1069,	'ALBARICOQUE O CHABACANO'),
(1417,	0,	'ANONA'),
(1420,	0,	'ALMENDRO'),
(1425,	0,	'CAPULIN'),
(1430,	0,	'CEREZO'),
(1439,	0,	'CAIMITO'),
(1450,	1071,	'CHICOZAPOTE'),
(1455,	0,	'CHIRIMOYO'),
(1460,	1070,	'CIRUELO'),
(1463,	1088,	'PALMA DE COCO'),
(1467,	1086,	'PALMA ACEITERA'),
(1470,	1087,	'PALMA DATILERA'),
(1480,	1072,	'DURAZNO'),
(1495,	0,	'GRANADA ROJA'),
(1496,	1073,	'GRANADA CHINA'),
(1497,	0,	'GUANABANO'),
(1500,	1074,	'GUAYABO'),
(1510,	1075,	'HIGUERA'),
(1520,	0,	'KAKI O PERSIMONIO'),
(1530,	1076,	'LIMA'),
(1540,	1077,	'LIMON'),
(1543,	1078,	'LITCHI'),
(1545,	0,	'MAMEY'),
(1547,	1079,	'MANDARINO'),
(1550,	1080,	'MANGO'),
(1560,	1081,	'MANZANO'),
(1570,	0,	'MARA?ON'),
(1580,	0,	'MEMBRILLO'),
(1585,	1096,	'MORA O ZARZAMORA'),
(1590,	1082,	'NARANJO'),
(1595,	1083,	'NECTARINO'),
(1597,	0,	'NISPERO'),
(1600,	0,	'NOGAL'),
(1610,	1085,	'OLIVO'),
(1620,	1089,	'PAPAYO'),
(1630,	1090,	'PERAL'),
(1635,	0,	'POMARROSA'),
(1640,	1091,	'PI?A'),
(1650,	1092,	'PLATANO'),
(1653,	1093,	'TAMARINDO'),
(1654,	0,	'TEJOCOTE'),
(1655,	1094,	'TORONJA O POMELO'),
(1670,	1095,	'VID'),
(1672,	0,	'ZAPOTES'),
(1674,	0,	'OTROS FRUTALES'),
(1676,	0,	'COMPRA DE FERTILIZANTES'),
(1677,	0,	'COMPRA DE AGROQUIMICOS'),
(1680,	0,	'ANIMALES DE TRABAJO'),
(1682,	0,	'DERECHOS DE AGUA COMPRA'),
(1683,	0,	'DERECHOS DE AGUA RENTA'),
(1684,	0,	'LABORATORIOS CONSTRUCCION'),
(1686,	0,	'LABORATORIOS EQUIPAMIENTO'),
(1687,	0,	'ESTABLECIMIENTO PRADERAS PERENNES'),
(1691,	0,	'UREA'),
(1692,	0,	'SULFATO DE AMONIO'),
(1693,	0,	'FOSFATO MONOAMÓNICO'),
(1694,	0,	'FOSFATO DIAMÓNICO'),
(1710,	0,	'COMPRA DE ALIMENTOS CONCENTRADOS'),
(1712,	0,	'COMPRA DE FORRAJES'),
(1717,	0,	'FLETES Y TRANSPORTES'),
(1720,	0,	'MEDICINAS Y VACUNAS'),
(1723,	0,	'MAQUILAS'),
(1727,	0,	'IMPUESTOS Y CUOTAS'),
(1730,	0,	'INSEMINACION ARTIFICIAL Y MONTAS'),
(1750,	0,	'PRIMAS DE SEGUROS'),
(1751,	0,	'OTROS CONCEPTOS AVIO NO LISTADOS'),
(1752,	0,	'COSTO SERVICIO DE GARANTIAS'),
(1753,	0,	'PRIMA POR COBERTURA'),
(1754,	0,	'FACTORAJE FINANCIERO A PROVEEDORES'),
(1755,	0,	'COMPRA DE ACCIONES'),
(1756,	0,	'FACTORAJE FINANCIERO A CLIENTES'),
(1760,	0,	'CONEJO VIENTRE'),
(1761,	0,	'CONEJO SEMENTAL'),
(1764,	0,	'GASTOS PARA ENGORDA'),
(1773,	0,	'GASTOS ALIMENTACION'),
(1783,	0,	'CEBU VIENTRE'),
(1784,	0,	'CEBU SEMENTAL'),
(1792,	0,	'CRUZA VIENTRE'),
(1793,	0,	'CRUZA SEMENTAL'),
(1802,	0,	'NOVILLONA'),
(1813,	0,	'CEBU VAQUILLA'),
(1815,	0,	'EUROPEO VAQUILLA'),
(1818,	0,	'CRUZA VAQUILLA'),
(1833,	0,	'EUROPEO VIENTRE'),
(1834,	0,	'EUROPEO SEMENTAL'),
(1853,	2009,	'VENADO MACHO PIE DE CRIA'),
(1854,	2009,	'VENADO HEMBRA PIE DE CRIA'),
(1855,	0,	'CAPRINO P/ENGORDA'),
(1900,	0,	'PRESTAMO ESPECIAL A LA BANCA'),
(1940,	0,	'CAPRINO VIENTRE'),
(1952,	0,	'CAPRINO SEMENTAL'),
(1955,	0,	'OVINO P/ENGORDA'),
(1975,	2007,	'AVESTRUZ HEMBRA PIE DE CRIA'),
(1976,	2007,	'AVESTRUZ MACHO PIE DE CRIA'),
(1977,	0,	'OTRAS ESPECIES DE FAUNA SILVESTRE'),
(1984,	0,	'CORRALES'),
(1990,	0,	'OVINO VIENTRE'),
(1995,	0,	'OVINO SEMENTAL'),
(2010,	0,	'PORCINO P/ENGORDA'),
(2060,	0,	'PORCINO VIENTRE'),
(2077,	0,	'PORCINO SEMENTAL'),
(2110,	0,	'ARADOS'),
(2112,	0,	'AVION FUMIGADOR'),
(2121,	0,	'ASPERJADORAS'),
(2145,	0,	'BASCULA'),
(2147,	0,	'BEBEDEROS'),
(2150,	0,	'BORDEADORAS DE DISCOS'),
(2152,	0,	'CALDERAS'),
(2156,	0,	'CALENTADORES'),
(2157,	0,	'CAJAS PARA EMPACAR'),
(2160,	0,	'CARROS DE CAMPO'),
(2162,	0,	'CHAPEADORAS O CORTADORES ROT'),
(2165,	0,	'CLASIFICADORA SELECCIONADORA'),
(2182,	0,	'COMEDEROS'),
(2183,	0,	'COMPRESORES'),
(2210,	0,	'DESENRAIZADORAS'),
(2220,	0,	'CORTADORA'),
(2228,	0,	'COSECHADORA'),
(2232,	0,	'CRIADORAS'),
(2240,	0,	'CUADROS NIVELADORES'),
(2250,	0,	'CULTIVADORAS'),
(2290,	0,	'DESGRANADORAS'),
(2310,	0,	'DESVARADORAS'),
(2313,	0,	'DESTERRONADORAS'),
(2315,	0,	'EQUIPO DE AFILADO'),
(2320,	0,	'EQUIPO PARA ASERRAR'),
(2340,	0,	'EMPACADORAS DE FORRAJE'),
(2360,	0,	'EQUIPO PARA ENSILAR'),
(2363,	0,	'EQUIPO PARA SOLDAR'),
(2365,	0,	'EQUIPO PARA TRASQUILA'),
(2380,	0,	'ESCREPAS'),
(2385,	0,	'ESTUFAS DE SECADO'),
(2390,	0,	'SISTEMAS DE CALEFACCION'),
(2391,	0,	'SISTEMAS DE ENFRIAMIENTO'),
(2400,	0,	'ESPOLVOREADORAS'),
(2410,	0,	'FERTILIZADORAS'),
(2415,	0,	'FUMIGADORAS'),
(2417,	0,	'GATOS HIDRAULICOS'),
(2420,	0,	'GRUAS MECANICAS'),
(2423,	0,	'INCUBADORAS'),
(2425,	0,	'HILERADORA'),
(2426,	0,	'JAULAS'),
(2427,	0,	'IMPLEMENTOS AGRICOLAS'),
(2435,	0,	'LAVADORA'),
(2451,	0,	'MOTOCONFORMADORA'),
(2455,	0,	'MAQUINARIA PESADA'),
(2465,	0,	'MOLINO'),
(2467,	0,	'MONTACARGAS'),
(2470,	0,	'MOTORES ELECTRICOS'),
(2475,	0,	'MOTOGRUA'),
(2480,	0,	'MOTORES DE COMBUSTION INTERNA'),
(2490,	0,	'NIVELADORA'),
(2491,	0,	'NIVELADORA LASSER'),
(2495,	0,	'ORDE?ADORA'),
(2510,	0,	'PICADORAS DE FORRAJE'),
(2511,	0,	'EQUIPO DE COMPUTO Y SOFTWARE'),
(2512,	0,	'EQUIPO DE TOPOGRAFIA'),
(2513,	0,	'ESTACION CLIMATOLOGICA EQUIPO'),
(2514,	0,	'EQUIPO DE ENERGIA SOLAR'),
(2515,	0,	'TRATAMIENTO DE AGUAS RESIDUALES'),
(2523,	0,	'PRENSAS'),
(2524,	0,	'EQUIPO COMUNICACION (RADIO TELEFON'),
(2525,	0,	'RASTRAS'),
(2528,	0,	'REVOLVEDORAS'),
(2560,	0,	'SECADORAS'),
(2580,	0,	'SEMBRADORAS'),
(2581,	0,	'SEMBRADORAS DE PRECISION'),
(2589,	0,	'SIERRAS MOTOSIERRAS'),
(2596,	0,	'TANQUE ENFRIADOR'),
(2598,	0,	'TINAS DE INMERSION'),
(2601,	0,	'TRACTOR CAT 1 (HASTA 45 HP) NUEVO'),
(2602,	0,	'TRACTOR CAT 2 (HASTA 100 HP) NUEVO'),
(2603,	0,	'TRACTOR CAT 3 (MAS DE 100 HP) NUEVO'),
(2605,	0,	'REPARACIONES Y/O REHABILITACIONES'),
(2608,	0,	'HERRAMIENTAS DIVERSAS'),
(2611,	0,	'TRACTOR CAT 1 (HASTA 45 HP) USADO'),
(2612,	0,	'TRACTOR CAT 2 (HASTA 100 HP) USADO'),
(2613,	0,	'TRACTOR CAT 3 (MAS DE 100 HP) USADO'),
(2614,	0,	'TRASCABO'),
(2620,	0,	'TRILLADORA NUEVA'),
(2621,	0,	'TRILLADORA USADA'),
(2630,	0,	'VEHICULOS DE CAMPO'),
(2640,	0,	'ZANJEADORAS'),
(2642,	0,	'TORNOS'),
(2660,	0,	'EQUIPO Y/O IMPLEMENTOS OTROS'),
(2661,	0,	'MAQUINARIA OTROS'),
(2662,	0,	'DRAGAS'),
(2850,	0,	'DESMONTES'),
(2860,	0,	'DESEMPIEDRES'),
(2865,	0,	'DESENRAICES'),
(2870,	0,	'NIVELACIONES'),
(2880,	0,	'MEJORADORES DE SUELOS'),
(2895,	0,	'TERRAZAS'),
(2900,	0,	'DESHIERBES - CHAPEOS'),
(2955,	0,	'LEVANTAMIENTO TOPOGRAFICO'),
(2959,	0,	'COSTOS PREOPERATIVOS'),
(2970,	0,	'SUBSOLEOS'),
(3000,	0,	'APORTACION DE FONDOS'),
(3002,	0,	'COMISION X AP.CREDITO'),
(3005,	0,	'AZALEA'),
(3024,	1101,	'CLAVEL ESTANDAR'),
(3025,	1102,	'CRISANTEMO ESTANDAR'),
(3027,	0,	'DALIA'),
(3030,	0,	'GARDENIA'),
(3032,	1104,	'GLADIOLO'),
(3044,	0,	'ORQUIDEA'),
(3046,	1107,	'NARDO'),
(3050,	1108,	'ROSAL'),
(3052,	1098,	'AVE DEL PARAISO'),
(3054,	1113,	'OTRAS PLANTAS DE ORNATO'),
(3056,	0,	'AGAPANDO'),
(3057,	0,	'ALCATRAZ'),
(3058,	0,	'ALSTROEMERIA'),
(3060,	1097,	'ANTHURIUM'),
(3061,	1099,	'AZUCENA'),
(3062,	0,	'BOUGAMBILIA'),
(3063,	0,	'BOUVARDIA'),
(3064,	0,	'CEDRO'),
(3065,	0,	'CEDRO ITALIANO'),
(3066,	0,	'CEDRO LIMON'),
(3067,	0,	'CELOSIA'),
(3068,	1101,	'CLAVEL MINIATURA'),
(3069,	1102,	'CRISANTEMO POMPON'),
(3070,	0,	'DRACENA'),
(3071,	0,	'ESPARRAGO ORNAMENTAL'),
(3072,	0,	'FICUS BENJAMINA'),
(3073,	0,	'FREESIA'),
(3074,	1103,	'GERBERA'),
(3075,	0,	'GYPSOPHILA'),
(3076,	1105,	'HELECHO CUERO'),
(3077,	1106,	'HELECHOS'),
(3078,	0,	'HELICORNIA'),
(3079,	0,	'IRIS'),
(3080,	0,	'LAUREL DE LA INDIA'),
(3081,	0,	'LIATRIX'),
(3082,	1125,	'PALMA'),
(3083,	0,	'PROTEA'),
(3086,	0,	'TULIPAN HOLANDES'),
(3087,	0,	'OTROS FOLLAJES'),
(4037,	0,	'GASTOS DE PUBLICIDAD Y PROMOCION'),
(4040,	0,	'ESTUDIOS DE MERCADO'),
(4052,	0,	'ESTUDIOS DE PREINVERSION'),
(4064,	0,	'PATENTES MARCAS FRANQUICIAS'),
(5060,	2001,	'NOVILLO (CARNE)'),
(5170,	0,	'OTRAS ESPECIES AVICOLAS'),
(5370,	0,	'GASTOS DE MANTENIMIENTO'),
(5650,	0,	'SUELDOS Y SALARIOS'),
(6529,	0,	'OTRAS OLEAGINOSAS'),
(6729,	0,	'OTRAS HORTALIZAS'),
(6801,	0,	'MAQUINARIA PARA EXTRACCION FORESTAL'),
(6805,	3006,	'INDUSTRIALIZ MADERA ASERRADA'),
(6811,	1130,	'EUCALIPTO'),
(6812,	0,	'OTRAS CONIFERAS'),
(6813,	0,	'OTRAS HOJOSAS'),
(6814,	3004,	'HULE'),
(6816,	0,	'EQUIPO PARA MOLDURAR'),
(6830,	1128,	'CAOBA'),
(6831,	1100,	'CEDRO ROJO'),
(6832,	1131,	'MELINA'),
(6833,	1132,	'PINO'),
(6834,	1129,	'TECA'),
(6835,	0,	'VIVERO FORESTAL'),
(7004,	0,	'CONGELADORA PROD. PESQUEROS'),
(7006,	0,	'HARINA Y ACEITE PESCADO'),
(7018,	0,	'EMBARCACION MAYOR NUEVA'),
(7019,	0,	'EMBARCACION MAYOR USADA'),
(7020,	0,	'EMBARCACION MAYOR REHABILITACION'),
(7022,	0,	'ARTES DE PESCA'),
(7030,	0,	'EMBARCACION MENOR NUEVA'),
(7031,	0,	'EMBARCACION MENOR USADA'),
(7032,	0,	'EMBARCACION MENOR REHABILITACION'),
(7033,	0,	'EQUIPOS PESQUEROS ELECTRONICOS'),
(7034,	0,	'REDES'),
(7035,	0,	'CONSTRUCCION DE ESTANQUERIA'),
(7060,	4003,	'CAMARON'),
(7211,	0,	'SERVICIOS TECNICOS COMPRA'),
(7212,	0,	'DESPACHOS TECNICOS CONSTRUCCION'),
(7213,	0,	'SERVICIOS TECNICOS PRESTACION'),
(7802,	0,	'CAPITAL DE TRABAJO'),
(8020,	0,	'CARTERA VENCIDA RECURSOS FIRA - BA'),
(8022,	0,	'CARTERA VIGENTE RECURSOS FIRA - BA'),
(8024,	0,	'INTERESES RECURSOS FIRA - BANCA'),
(8028,	0,	'CARTERA VIGENTE RECURSOS BANCA'),
(8029,	0,	'CARTERA VENCIDA DEL IF'),
(8111,	0,	'MATERIAS PRIMAS E INSUMOS'),
(8113,	0,	'COMBUSTIBLES Y LUBRICANTES'),
(8117,	0,	'GASTOS DE ADMINISTRACION'),
(8121,	0,	'TERRENOS Y MEJORAS'),
(8123,	0,	'BODEGAS Y ALMACENES'),
(8125,	0,	'MAQUINARIA Y EQUIPO DE PROCESO'),
(8126,	0,	'MOBILIARIO Y EQUIPO DE OFICINA'),
(8127,	0,	'INSTALACIONES COMPLEMENTARIAS'),
(8128,	0,	'EQUIPO DE TRANSPORTE'),
(8129,	0,	'SERVICIOS AUXILIARES'),
(8130,	0,	'OTROS CONCEPTOS REFACCION NO LISTAD'),
(8131,	0,	'TRATAMIENTO DE PASIVOS PROCREA'),
(8132,	0,	'CREDITO DE LIQUIDEZ'),
(8133,	0,	'CRA. VIG. NO BANCA DE DESARROLLO'),
(8134,	0,	'CRA. VDA. NO BANCA DE DESARROLLO'),
(8135,	0,	'INTERESES NO BANCA DE DESARROLLO'),
(8137,	0,	'APORTACION ACREDITADO TRAT. CARTERA'),
(8138,	0,	'APORTACION PRODUCTOR GARANTÍA LÍQUIDA'),
(8140,	0,	'GASTOS DE COSECHA'),
(8141,	0,	'REPARACIÓN DE MAQUINARIA Y EQUIPO'),
(8142,	0,	'EQUIPO DE COSECHA'),
(8143,	0,	'MAQUINARIA Y EQUIPO AGRICOLA'),
(8144,	0,	'REPARACION DE EQUIPO DE COSECHA'),
(8145,	0,	'REPARACION DE EQUIPO DE TRANSPORTE'),
(8146,	0,	'CANALES REVESTIMIENTO'),
(8147,	0,	'CANALES ENTUBAMIENTO'),
(8148,	0,	'DRENAJE INTERPARCELARIO'),
(8149,	0,	'AGRICULTURA PROTEGIDA'),
(8150,	0,	'MAQ. ESPE. INFRAESTRUCTURA HIDROAGRÍCOLA'),
(8151,	0,	'PROCESADORA DE PROD. PESQUEROS'),
(8152,	0,	'MODERNIZACIÓN DE ESTANQUERÍA'),
(8153,	0,	'INFRAESTRUCTURA PARA PROD. PESQUEROS'),
(8154,	0,	'MARICULTURA'),
(8156,	0,	'MODERNIZACIÓN DE ASERRÍO'),
(8157,	0,	'SERVICIOS AMBIENTALES'),
(8158,	0,	'SISTEMAS FOTOVOLTAICOS'),
(8159,	0,	'SISTEMAS SOLARES TÉRMICOS'),
(8160,	0,	'GENERADORES EOLICOS'),
(8161,	0,	'GENERADORES HIDRÁULICOS (MINIHIDRÁULICAS'),
(8162,	0,	'BIODIGESTORES'),
(8163,	0,	'CALENTDORES DE AGUA SOLAR'),
(8164,	0,	'PROTECCIÓN A LA BIODIVERSIDAD'),
(8165,	0,	'ECOTURISMO'),
(8166,	0,	'INSUMOS'),
(8167,	0,	'CREDITO DE LIQUIDEZ LARGO PLAZO'),
(8168,	4001,	'ATUN ENLATADO'),
(8169,	4001,	'ATUN CONGELADO'),
(8170,	0,	'MOTOGENERADORES'),
(8171,	0,	'INSTALACIONES FUENTES RENOVABLES BIOENER'),
(8172,	0,	'MAQ Y EQUI PRODUCCIÓN BIOCOMBUSTIBLES'),
(8173,	0,	'OTROS EQUIPOS GENERACIÓN DE ENERGÍA'),
(8174,	1111,	'JATROPHA'),
(8176,	0,	'OTROS CULTIVOS PROD BIOCOMB  BIOENERGETI'),
(8177,	0,	'REPROD SEMILLAS PROD ENERGÍA FUENT RENOV'),
(8178,	0,	'ESTABLECIMIENTO PLANTACIONES FORESTALES'),
(8179,	0,	'MANTENIMIENTO PLANTACIONES FORESTALES'),
(8180,	0,	'EQUIPAMIENTO IFNB'),
(8181,	0,	'ADQUISICION SISTEMAS INFORMATICOS IFNB'),
(8182,	4016,	'AMARANTO'),
(8183,	1115,	'STEVIA'),
(8184,	0,	'VALVULAS ALFALFERAS'),
(8185,	0,	'ESTABLECIMIENTO'),
(8187,	0,	'MOTOR FUERA DE BORDA'),
(8188,	4004,	'PULPO'),
(8189,	4018,	'JAIBA'),
(8190,	4002,	'CALAMAR'),
(8191,	0,	'MOTOR MARINO ECOLÓGICO'),
(8192,	0,	'SISTEMAS DE RIEGO'),
(8193,	4019,	'OTROS PESCADOS Y MARISCOS'),
(8194,	0,	'PRODUCCIÓN DE BIOFERTILIZANTES'),
(8195,	0,	'ABONOS ORGÁNICOS'),
(8196,	1117,	'PIMIENTO MORRON');