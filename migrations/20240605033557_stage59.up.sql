CREATE TABLE cadenas (
    id_cadena SERIAL,
    subrama INTEGER NOT NULL,
    nombre VARCHAR(70) NOT NULL
);

INSERT INTO cadenas (id_cadena, subrama, nombre) VALUES
(1001,	101,	'ARROZ'),
(1002,	101,	'FRIJOL'),
(1003,	105,	'MAIZ'),
(1003,	101,	'MAIZ '),
(1003,	103,	'MAIZ'),
(1004,	101,	'SORGO'),
(1004,	106,	'SORGO'),
(1004,	103,	'SORGO'),
(1005,	101,	'TRIGO'),
(1006,	102,	'AJONJOLI'),
(1007,	101,	'CARTAMO'),
(1007,	102,	'CARTAMO'),
(1008,	102,	'GIRASOL'),
(1008,	105,	'GIRASOL'),
(1009,	102,	'LINAZA'),
(1010,	101,	'SOYA'),
(1010,	102,	'SOYA'),
(1011,	103,	'AVENA FORRAJERA'),
(1012,	103,	'CEBADA FORRAJERA'),
(1013,	103,	'EBO VEZA O JANAMARGO'),
(1014,	103,	'GARBANZO FORRAJERO'),
(1015,	103,	'MAIZ FORRAJERO'),
(1015,	101,	'MAIZ FORRAJERO'),
(1016,	103,	'SORGO FORRAJERO'),
(1017,	103,	'REMOLACHA FORRAJERA'),
(1018,	103,	'TREBOL'),
(1019,	104,	'AJO'),
(1020,	104,	'ALCACHOFA'),
(1021,	104,	'BROCOLI'),
(1022,	104,	'CALABACITA'),
(1023,	106,	'CAMOTE'),
(1023,	104,	'CAMOTE'),
(1024,	104,	'CEBOLLA'),
(1025,	104,	'CHAMPIÑON'),
(1026,	104,	'CHICHARO'),
(1027,	104,	'CHILE'),
(1028,	104,	'COL O REPOLLO'),
(1029,	104,	'EJOTE'),
(1030,	104,	'ELOTE'),
(1031,	515,	'FRESA'),
(1031,	105,	'FRESA'),
(1031,	104,	'FRESA'),
(1032,	104,	'HABA'),
(1033,	104,	'JITOMATE'),
(1034,	104,	'LECHUGA'),
(1035,	514,	'LENTEJA'),
(1035,	104,	'LENTEJA'),
(1035,	101,	'LENTEJA'),
(1036,	104,	'MELON'),
(1037,	104,	'OKRA O BOMBO'),
(1038,	104,	'PAPA'),
(1039,	104,	'PEPINO'),
(1040,	104,	'SANDIA'),
(1040,	110,	'SANDIA'),
(1040,	109,	'SANDIA'),
(1041,	104,	'TOMATE CASCARA'),
(1042,	104,	'ZANAHORIA'),
(1043,	105,	'ALGODON'),
(1044,	102,	'CACAHUATE'),
(1044,	105,	'CACAHUATE'),
(1045,	105,	'CEMPOAL'),
(1046,	105,	'MAIZ PALOMERO'),
(1047,	105,	'SORGO ESCOBERO'),
(1048,	105,	'YUCA'),
(1048,	303,	'YUCA'),
(1049,	106,	'ALPISTE'),
(1050,	106,	'ALUBIA'),
(1051,	106,	'ARVEJON'),
(1052,	106,	'AVENA'),
(1053,	106,	'CEBADA'),
(1053,	105,	'CEBADA'),
(1053,	101,	'CEBADA'),
(1054,	106,	'CENTENO'),
(1055,	101,	'GARBANZO'),
(1055,	106,	'GARBANZO'),
(1056,	106,	'ZACATON'),
(1057,	108,	'AGAVE'),
(1057,	107,	'AGAVE'),
(1058,	107,	'ALFALFA'),
(1058,	103,	'ALFALFA'),
(1058,	108,	'ALFALFA'),
(1059,	108,	'CAÑA DE AZUCAR'),
(1059,	107,	'CAÑA DE AZUCAR'),
(1060,	108,	'CACAO'),
(1060,	107,	'CACAO'),
(1061,	108,	'CAFÉ'),
(1061,	107,	'CAFÉ'),
(1062,	107,	'ESPARRAGO'),
(1062,	104,	'ESPARRAGO'),
(1062,	108,	'ESPARRAGO'),
(1063,	108,	'HENEQUÉN'),
(1063,	107,	'HENEQUÉN'),
(1064,	108,	'MAGUEY'),
(1064,	107,	'MAGUEY'),
(1065,	108,	'NOPAL'),
(1065,	107,	'NOPAL'),
(1066,	108,	'TABACO'),
(1066,	107,	'TABACO'),
(1067,	108,	'VAINILLA'),
(1067,	107,	'VAINILLA'),
(1068,	109,	'AGUACATE'),
(1068,	110,	'AGUACATE'),
(1069,	109,	'ALBARICOQUE O CHABACANO'),
(1069,	110,	'ALBARICOQUE O CHABACANO'),
(1070,	109,	'CIRUELO'),
(1070,	110,	'CIRUELO'),
(1071,	110,	'CHICOZAPOTE'),
(1071,	301,	'CHICOZAPOTE'),
(1071,	302,	'CHICOZAPOTE'),
(1071,	303,	'CHICOZAPOTE'),
(1071,	109,	'CHICOZAPOTE'),
(1071,	999,	'CHICOZAPOTE'),
(1071,	999,	'CHICOZAPOTE'),
(1071,	999,	'CHICOZAPOTE'),
(1071,	999,	'CHICOZAPOTE'),
(1071,	999,	'CHICOZAPOTE'),
(1072,	109,	'DURAZNO'),
(1072,	110,	'DURAZNO'),
(1073,	109,	'GRANADA CHINA'),
(1073,	110,	'GRANADA CHINA'),
(1074,	109,	'GUAYABO'),
(1074,	110,	'GUAYABO'),
(1075,	109,	'HIGUERA'),
(1075,	110,	'HIGUERA'),
(1076,	109,	'LIMA'),
(1076,	110,	'LIMA'),
(1077,	110,	'LIMÓN'),
(1077,	109,	'LIMÓN'),
(1077,	108,	'LIMÓN'),
(1078,	109,	'LITCHI'),
(1078,	110,	'LITCHI'),
(1079,	109,	'MANDARINO'),
(1079,	110,	'MANDARINO'),
(1080,	109,	'MANGO'),
(1080,	110,	'MANGO'),
(1081,	109,	'MANZANO'),
(1081,	110,	'MANZANO'),
(1082,	109,	'NARANJO'),
(1082,	110,	'NARANJO'),
(1083,	109,	'NECTARINA'),
(1083,	110,	'NECTARINA'),
(1084,	110,	'NUEZ'),
(1084,	105,	'NUEZ'),
(1084,	109,	'NUEZ'),
(1085,	110,	'OLIVO'),
(1085,	999,	'OLIVO'),
(1085,	999,	'OLIVO'),
(1085,	109,	'OLIVO'),
(1085,	999,	'OLIVO'),
(1085,	999,	'OLIVO'),
(1085,	105,	'OLIVO'),
(1085,	999,	'OLIVO'),
(1086,	109,	'PALMA ACEITERA'),
(1086,	110,	'PALMA ACEITERA'),
(1087,	109,	'PALMA DATILERA'),
(1087,	110,	'PALMA DATILERA'),
(1088,	109,	'PALMA DE COCO'),
(1088,	110,	'PALMA DE COCO'),
(1089,	109,	'PAPAYO'),
(1089,	110,	'PAPAYO'),
(1090,	109,	'PERAL'),
(1090,	110,	'PERAL'),
(1091,	109,	'PIÑA'),
(1091,	110,	'PIÑA'),
(1092,	109,	'PLATANO'),
(1092,	110,	'PLATANO'),
(1093,	109,	'TAMARINDO'),
(1093,	110,	'TAMARINDO'),
(1094,	109,	'TORONJA'),
(1094,	110,	'TORONJA'),
(1095,	109,	'VID'),
(1095,	110,	'VID'),
(1096,	109,	'ZARZAMORA'),
(1096,	110,	'ZARZAMORA'),
(1097,	111,	'ANTHURIUM'),
(1097,	114,	'ANTHURIUM'),
(1097,	113,	'ANTHURIUM'),
(1097,	112,	'ANTHURIUM'),
(1098,	111,	'AVE DEL PARAISO'),
(1098,	114,	'AVE DEL PARAISO'),
(1098,	113,	'AVE DEL PARAISO'),
(1098,	112,	'AVE DEL PARAISO'),
(1099,	111,	'AZUCENA'),
(1099,	114,	'AZUCENA'),
(1099,	113,	'AZUCENA'),
(1099,	112,	'AZUCENA'),
(1100,	111,	'CEDRO ROJO'),
(1100,	112,	'CEDRO ROJO'),
(1100,	113,	'CEDRO ROJO'),
(1100,	114,	'CEDRO ROJO'),
(1100,	302,	'CEDRO ROJO'),
(1100,	303,	'CEDRO ROJO'),
(1101,	114,	'CLAVEL'),
(1101,	111,	'CLAVEL'),
(1101,	112,	'CLAVEL'),
(1101,	113,	'CLAVEL'),
(1102,	114,	'CRISANTEMO'),
(1102,	112,	'CRISANTEMO'),
(1102,	111,	'CRISANTEMO'),
(1102,	113,	'CRISANTEMO'),
(1103,	113,	'GERBERA'),
(1103,	114,	'GERBERA'),
(1103,	111,	'GERBERA'),
(1103,	112,	'GERBERA'),
(1104,	111,	'GLADIOLO'),
(1104,	112,	'GLADIOLO'),
(1104,	113,	'GLADIOLO'),
(1104,	114,	'GLADIOLO'),
(1105,	112,	'HELECHO CUERO'),
(1105,	111,	'HELECHO CUERO'),
(1105,	114,	'HELECHO CUERO'),
(1105,	113,	'HELECHO CUERO'),
(1106,	113,	'HELECHOS'),
(1106,	111,	'HELECHOS'),
(1106,	114,	'HELECHOS'),
(1106,	112,	'HELECHOS'),
(1107,	113,	'NARDO'),
(1107,	114,	'NARDO'),
(1107,	111,	'NARDO'),
(1107,	112,	'NARDO'),
(1108,	112,	'ROSAL'),
(1108,	114,	'ROSAL'),
(1108,	111,	'ROSAL'),
(1108,	113,	'ROSAL'),
(1109,	114,	'SILVER DOLAR'),
(1109,	113,	'SILVER DOLAR'),
(1109,	111,	'SILVER DOLAR'),
(1109,	112,	'SILVER DOLAR'),
(1110,	114,	'STATICE'),
(1110,	113,	'STATICE'),
(1110,	112,	'STATICE'),
(1110,	111,	'STATICE'),
(1111,	107,	'JATROPHA'),
(1111,	108,	'JATROPHA'),
(1112,	107,	'PIMIENTA'),
(1112,	108,	'PIMIENTA'),
(1113,	111,	'OTRAS PLANTAS DE ORNATO'),
(1113,	113,	'OTRAS PLANTAS DE ORNATO'),
(1113,	114,	'OTRAS PLANTAS DE ORNATO'),
(1113,	112,	'OTRAS PLANTAS DE ORNATO'),
(1114,	107,	'MALANGA'),
(1115,	107,	'STEVIA'),
(1115,	108,	'STEVIA'),
(1116,	104,	'COLIFLOR'),
(1117,	104,	'PIMIENTO'),
(1118,	104,	'BERENJENA'),
(1122,	109,	'ARANDANO'),
(1122,	110,	'ARANDANO'),
(1124,	102,	'CANOLA'),
(1125,	108,	'PALMA'),
(1125,	107,	'PALMA'),
(1126,	108,	'ZACATE PENNISETUM'),
(1126,	107,	'ZACATE PENNISETUM'),
(1127,	108,	'CHICLE'),
(1127,	107,	'CHICLE'),
(1127,	999,	'CHICLE'),
(1127,	999,	'CHICLE'),
(1127,	999,	'CHICLE'),
(1127,	999,	'CHICLE'),
(1127,	999,	'CHICLE'),
(1127,	302,	'CHICLE'),
(1128,	302,	'CAOBA'),
(1128,	303,	'CAOBA'),
(1129,	302,	'TECA'),
(1129,	303,	'TECA'),
(1130,	302,	'EUCALIPTO'),
(1130,	303,	'EUCALIPTO'),
(1131,	302,	'MELINA'),
(1131,	303,	'MELINA'),
(1132,	301,	'PINO'),
(1132,	302,	'PINO'),
(1132,	303,	'PINO'),
(1133,	303,	'OTRAS ESPECIES FORESTALES'),
(1133,	302,	'OTRAS ESPECIES FORESTALES'),
(1134,	109,	'FRAMBUESA'),
(1134,	110,	'FRAMBUESA'),
(1135,	104,	'APIO'),
(1136,	107,	'PASTOS'),
(2001,	205,	'CARNE'),
(2001,	201,	'CARNE'),
(2001,	207,	'CARNE'),
(2001,	202,	'CARNE'),
(2001,	203,	'CARNE'),
(2001,	206,	'CARNE'),
(2002,	999,	'LECHE'),
(2002,	201,	'LECHE'),
(2002,	999,	'LECHE'),
(2002,	999,	'LECHE'),
(2002,	999,	'LECHE'),
(2002,	999,	'LECHE'),
(2002,	205,	'LECHE'),
(2003,	201,	'CARNE-LECHE(DOBLE PROPOSITO)'),
(2004,	207,	'LANA'),
(2005,	204,	'MIEL'),
(2006,	203,	'HUEVO'),
(2007,	208,	'AVESTRUZ'),
(2008,	208,	'RANCHOS CINEGETICOS'),
(2009,	208,	'VENADO'),
(3001,	303,	'ARBOLES DE NAVIDAD'),
(3002,	303,	'CELULOSA Y PAPEL'),
(3002,	301,	'CELULOSA Y PAPEL'),
(3003,	302,	'EMPAQUES Y TARIMAS'),
(3004,	301,	'HULE'),
(3004,	303,	'HULE'),
(3004,	302,	'HULE'),
(3005,	303,	'LEÑA'),
(3005,	301,	'LEÑA'),
(3006,	302,	'MADERA ASERRADA'),
(3006,	999,	'MADERA ASERRADA'),
(3006,	301,	'MADERA ASERRADA'),
(3006,	999,	'MADERA ASERRADA'),
(3006,	999,	'MADERA ASERRADA'),
(3006,	303,	'MADERA ASERRADA'),
(3006,	999,	'MADERA ASERRADA'),
(3006,	999,	'MADERA ASERRADA'),
(3007,	301,	'MADERA EN ROLLO'),
(3007,	303,	'MADERA EN ROLLO'),
(3008,	302,	'MOLDURAS'),
(3008,	303,	'MOLDURAS'),
(3008,	301,	'MOLDURAS'),
(3009,	999,	'MUEBLES'),
(3009,	999,	'MUEBLES'),
(3009,	999,	'MUEBLES'),
(3009,	999,	'MUEBLES'),
(3009,	999,	'MUEBLES'),
(3009,	505,	'MUEBLES'),
(3011,	301,	'RESINA'),
(3011,	303,	'RESINA'),
(3011,	302,	'RESINA'),
(3012,	301,	'TABLEROS'),
(3012,	303,	'TABLEROS'),
(3013,	107,	'MACADAMIA'),
(3013,	108,	'MACADAMIA'),
(3014,	108,	'MANGOSTÍN'),
(3014,	107,	'MANGOSTÍN'),
(4001,	402,	'ATUN'),
(4001,	406,	'ATUN'),
(4002,	402,	'CALAMAR'),
(4002,	406,	'CALAMAR'),
(4002,	403,	'CALAMAR'),
(4003,	405,	'CAMARÓN'),
(4003,	404,	'CAMARÓN'),
(4003,	406,	'CAMARÓN'),
(4003,	403,	'CAMARÓN'),
(4003,	402,	'CAMARÓN'),
(4003,	401,	'CAMARÓN'),
(4004,	403,	'PULPO'),
(4004,	401,	'PULPO'),
(4004,	406,	'PULPO'),
(4005,	402,	'SARDINA'),
(4005,	406,	'SARDINA'),
(4006,	404,	'PEPINO DE MAR'),
(4007,	404,	'TILAPIA'),
(4008,	405,	'PECES DE ORNATO'),
(4008,	404,	'PECES DE ORNATO'),
(4010,	404,	'TRUCHA'),
(4010,	405,	'TRUCHA'),
(4011,	405,	'OSTIÓN'),
(4011,	404,	'OSTIÓN'),
(4012,	404,	'COBIA'),
(4012,	405,	'COBIA'),
(4013,	404,	'CORVINA'),
(4013,	405,	'CORVINA'),
(4014,	405,	'PÁMPANO'),
(4014,	404,	'PÁMPANO'),
(4015,	404,	'PARGO'),
(4015,	405,	'PARGO'),
(4015,	401,	'PARGO'),
(4016,	101,	'AMARANTO'),
(4016,	105,	'AMARANTO'),
(4017,	999,	'LANGOSTA'),
(4017,	999,	'LANGOSTA'),
(4017,	999,	'LANGOSTA'),
(4017,	401,	'LANGOSTA'),
(4017,	999,	'LANGOSTA'),
(4017,	999,	'LANGOSTA'),
(4018,	402,	'JAIBA'),
(4018,	403,	'JAIBA'),
(4018,	406,	'JAIBA'),
(4019,	403,	'OTROS PESCADOS Y MARISCOS'),
(4019,	402,	'OTROS PESCADOS Y MARISCOS'),
(4019,	406,	'OTROS PESCADOS Y MARISCOS'),
(9999,	101,	'OTRAS CADENAS PRODUC.'),
(9999,	999,	'OTRAS CADENAS PRODUC.'),
(9999,	103,	'OTRAS CADENAS PRODUC.'),
(9999,	104,	'OTRAS CADENAS PRODUC.'),
(9999,	105,	'OTRAS CADENAS PRODUC.'),
(9999,	106,	'OTRAS CADENAS PRODUC.'),
(9999,	107,	'OTRAS CADENAS PRODUC.'),
(9999,	108,	'OTRAS CADENAS PRODUC.'),
(9999,	109,	'OTRAS CADENAS PRODUC.'),
(9999,	110,	'OTRAS CADENAS PRODUC.'),
(9999,	111,	'OTRAS CADENAS PRODUC.'),
(9999,	112,	'OTRAS CADENAS PRODUC.'),
(9999,	113,	'OTRAS CADENAS PRODUC.'),
(9999,	114,	'OTRAS CADENAS PRODUC.'),
(9999,	999,	'OTRAS CADENAS PRODUC.'),
(9999,	999,	'OTRAS CADENAS PRODUC.'),
(9999,	999,	'OTRAS CADENAS PRODUC.'),
(9999,	999,	'OTRAS CADENAS PRODUC.'),
(9999,	999,	'OTRAS CADENAS PRODUC.'),
(9999,	201,	'OTRAS CADENAS PRODUC.'),
(9999,	202,	'OTRAS CADENAS PRODUC.'),
(9999,	203,	'OTRAS CADENAS PRODUC.'),
(9999,	204,	'OTRAS CADENAS PRODUC.'),
(9999,	205,	'OTRAS CADENAS PRODUC.'),
(9999,	206,	'OTRAS CADENAS PRODUC.'),
(9999,	207,	'OTRAS CADENAS PRODUC.'),
(9999,	208,	'OTRAS CADENAS PRODUC.'),
(9999,	301,	'OTRAS CADENAS PRODUC.'),
(9999,	302,	'OTRAS CADENAS PRODUC.'),
(9999,	303,	'OTRAS CADENAS PRODUC.'),
(9999,	999,	'OTRAS CADENAS PRODUC.'),
(9999,	999,	'OTRAS CADENAS PRODUC.'),
(9999,	999,	'OTRAS CADENAS PRODUC.'),
(9999,	999,	'OTRAS CADENAS PRODUC.'),
(9999,	999,	'OTRAS CADENAS PRODUC.'),
(9999,	401,	'OTRAS CADENAS PRODUC.'),
(9999,	402,	'OTRAS CADENAS PRODUC.'),
(9999,	403,	'OTRAS CADENAS PRODUC.'),
(9999,	404,	'OTRAS CADENAS PRODUC.'),
(9999,	405,	'OTRAS CADENAS PRODUC.'),
(9999,	406,	'OTRAS CADENAS PRODUC.'),
(9999,	501,	'OTRAS CADENAS PRODUC.'),
(9999,	502,	'OTRAS CADENAS PRODUC.'),
(9999,	503,	'OTRAS CADENAS PRODUC.'),
(9999,	504,	'OTRAS CADENAS PRODUC.'),
(9999,	505,	'OTRAS CADENAS PRODUC.'),
(9999,	506,	'OTRAS CADENAS PRODUC.'),
(9999,	507,	'OTRAS CADENAS PRODUC.'),
(9999,	508,	'OTRAS CADENAS PRODUC.'),
(9999,	509,	'OTRAS CADENAS PRODUC.'),
(9999,	510,	'OTRAS CADENAS PRODUC.'),
(9999,	511,	'OTRAS CADENAS PRODUC.'),
(9999,	512,	'OTRAS CADENAS PRODUC.'),
(9999,	513,	'OTRAS CADENAS PRODUC.'),
(9999,	514,	'OTRAS CADENAS PRODUC.'),
(9999,	515,	'OTRAS CADENAS PRODUC.'),
(9999,	516,	'OTRAS CADENAS PRODUC.'),
(9999,	599,	'OTRAS CADENAS PRODUC.'),
(9999,	999,	'OTRAS CADENAS PRODUC.'),
(9999,	999,	'OTRAS CADENAS PRODUC.'),
(9999,	999,	'OTRAS CADENAS PRODUC.'),
(9999,	999,	'OTRAS CADENAS PRODUC.'),
(9999,	102,	'OTRAS CADENAS PRODUC.');
