-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2016 a las 04:08:38
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dentistware_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `id_cita` bigint(20) NOT NULL,
  `fecha_cita` date NOT NULL,
  `hora_cita` time NOT NULL,
  `estado_cita` tinyint(1) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_odonto` int(11) NOT NULL,
  `consultorio` varchar(10) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`id_cita`, `fecha_cita`, `hora_cita`, `estado_cita`, `id_cliente`, `id_odonto`, `consultorio`) VALUES
(1, '2016-10-12', '16:00:00', 1, 3, 6, '302'),
(2, '2016-11-16', '08:17:00', 1, 4, 7, '1'),
(3, '2015-03-08', '11:55:00', 1, 5, 10, '201'),
(4, '2014-07-30', '17:55:00', 1, 11, 6, '46'),
(5, '2016-10-12', '10:18:00', 1, 12, 7, '174'),
(6, '2016-11-16', '09:45:00', 1, 3, 10, '10'),
(7, '2015-03-08', '15:28:00', 1, 4, 10, '604'),
(8, '2014-07-30', '14:15:00', 1, 5, 6, '403'),
(9, '2016-10-12', '10:30:00', 1, 11, 7, '5'),
(10, '2016-11-16', '14:45:00', 1, 12, 10, '502');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `nombre_ciudad` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `id_departamento`, `nombre_ciudad`) VALUES
(2242, 0, 'Sin asignar'),
(5001, 5, 'MEDELLÍN'),
(5002, 5, 'ABEJORRAL'),
(5004, 5, 'ABRIAQUÍ'),
(5020, 5, 'ALEJANDRÍA'),
(5030, 5, 'AMAGÁ'),
(5031, 5, 'AMALFI'),
(5034, 5, 'ANDES'),
(5036, 5, 'ANGELÓPOLIS'),
(5038, 5, 'ANGOSTURA'),
(5040, 5, 'ANORÍ'),
(5042, 5, 'SANTAFÉ DE ANTIOQUIA'),
(5044, 5, 'ANZA'),
(5045, 5, 'APARTADÓ'),
(5051, 5, 'ARBOLETES'),
(5055, 5, 'ARGELIA'),
(5059, 5, 'ARMENIA'),
(5079, 5, 'BARBOSA'),
(5086, 5, 'BELMIRA'),
(5088, 5, 'BELLO'),
(5091, 5, 'BETANIA'),
(5093, 5, 'BETULIA'),
(5101, 5, 'CIUDAD BOLÍVAR'),
(5107, 5, 'BRICEÑO'),
(5113, 5, 'BURITICÁ'),
(5120, 5, 'CÁCERES'),
(5125, 5, 'CAICEDO'),
(5129, 5, 'CALDAS'),
(5134, 5, 'CAMPAMENTO'),
(5138, 5, 'CAÑASGORDAS'),
(5142, 5, 'CARACOLÍ'),
(5145, 5, 'CARAMANTA'),
(5147, 5, 'CAREPA'),
(5148, 5, 'EL CARMEN DE VIBORAL'),
(5150, 5, 'CAROLINA'),
(5154, 5, 'CAUCASIA'),
(5172, 5, 'CHIGORODÓ'),
(5190, 5, 'CISNEROS'),
(5197, 5, 'COCORNÁ'),
(5206, 5, 'CONCEPCIÓN'),
(5209, 5, 'CONCORDIA'),
(5212, 5, 'COPACABANA'),
(5234, 5, 'DABEIBA'),
(5237, 5, 'DON MATÍAS'),
(5240, 5, 'EBÉJICO'),
(5250, 5, 'EL BAGRE'),
(5264, 5, 'ENTRERRIOS'),
(5266, 5, 'ENVIGADO'),
(5282, 5, 'FREDONIA'),
(5284, 5, 'FRONTINO'),
(5306, 5, 'GIRALDO'),
(5308, 5, 'GIRARDOTA'),
(5310, 5, 'GÓMEZ PLATA'),
(5313, 5, 'GRANADA'),
(5315, 5, 'GUADALUPE'),
(5318, 5, 'GUARNE'),
(5321, 5, 'GUATAPE'),
(5347, 5, 'HELICONIA'),
(5353, 5, 'HISPANIA'),
(5360, 5, 'ITAGUI'),
(5361, 5, 'ITUANGO'),
(5364, 5, 'JARDÍN'),
(5368, 5, 'JERICÓ'),
(5376, 5, 'LA CEJA'),
(5380, 5, 'LA ESTRELLA'),
(5390, 5, 'LA PINTADA'),
(5400, 5, 'LA UNIÓN'),
(5411, 5, 'LIBORINA'),
(5425, 5, 'MACEO'),
(5440, 5, 'MARINILLA'),
(5467, 5, 'MONTEBELLO'),
(5475, 5, 'MURINDÓ'),
(5480, 5, 'MUTATÁ'),
(5483, 5, 'NARIÑO'),
(5490, 5, 'NECOCLÍ'),
(5495, 5, 'NECHÍ'),
(5501, 5, 'OLAYA'),
(5541, 5, 'PEÑOL'),
(5543, 5, 'PEQUE'),
(5576, 5, 'PUEBLORRICO'),
(5579, 5, 'PUERTO BERRÍO'),
(5585, 5, 'PUERTO NARE'),
(5591, 5, 'PUERTO TRIUNFO'),
(5604, 5, 'REMEDIOS'),
(5607, 5, 'RETIRO'),
(5615, 5, 'RIONEGRO'),
(5628, 5, 'SABANALARGA'),
(5631, 5, 'SABANETA'),
(5642, 5, 'SALGAR'),
(5647, 5, 'SAN ANDRÉS'),
(5649, 5, 'SAN CARLOS'),
(5652, 5, 'SAN FRANCISCO'),
(5656, 5, 'SAN JERÓNIMO'),
(5658, 5, 'SAN JOSÉ DE LA MONTAÑA'),
(5659, 5, 'SAN JUAN DE URABÁ'),
(5660, 5, 'SAN LUIS'),
(5664, 5, 'SAN PEDRO'),
(5665, 5, 'SAN PEDRO DE URABA'),
(5667, 5, 'SAN RAFAEL'),
(5670, 5, 'SAN ROQUE'),
(5674, 5, 'SAN VICENTE'),
(5679, 5, 'SANTA BÁRBARA'),
(5686, 5, 'SANTA ROSA DE OSOS'),
(5690, 5, 'SANTO DOMINGO'),
(5697, 5, 'EL SANTUARIO'),
(5736, 5, 'SEGOVIA'),
(5756, 5, 'SONSON'),
(5761, 5, 'SOPETRÁN'),
(5789, 5, 'TÁMESIS'),
(5790, 5, 'TARAZÁ'),
(5792, 5, 'TARSO'),
(5809, 5, 'TITIRIBÍ'),
(5819, 5, 'TOLEDO'),
(5837, 5, 'TURBO'),
(5842, 5, 'URAMITA'),
(5847, 5, 'URRAO'),
(5854, 5, 'VALDIVIA'),
(5856, 5, 'VALPARAÍSO'),
(5858, 5, 'VEGACHÍ'),
(5861, 5, 'VENECIA'),
(5873, 5, 'VIGÍA DEL FUERTE'),
(5885, 5, 'YALÍ'),
(5887, 5, 'YARUMAL'),
(5890, 5, 'YOLOMBÓ'),
(5893, 5, 'YONDÓ'),
(5895, 5, 'ZARAGOZA'),
(8001, 8, 'BARRANQUILLA'),
(8078, 8, 'BARANOA'),
(8137, 8, 'CAMPO DE LA CRUZ'),
(8141, 8, 'CANDELARIA'),
(8296, 8, 'GALAPA'),
(8372, 8, 'JUAN DE ACOSTA'),
(8421, 8, 'LURUACO'),
(8433, 8, 'MALAMBO'),
(8436, 8, 'MANATÍ'),
(8520, 8, 'PALMAR DE VARELA'),
(8549, 8, 'PIOJÓ'),
(8558, 8, 'POLONUEVO'),
(8560, 8, 'PONEDERA'),
(8573, 8, 'PUERTO COLOMBIA'),
(8606, 8, 'REPELÓN'),
(8634, 8, 'SABANAGRANDE'),
(8638, 8, 'SABANALARGA'),
(8675, 8, 'SANTA LUCÍA'),
(8685, 8, 'SANTO TOMÁS'),
(8758, 8, 'SOLEDAD'),
(8770, 8, 'SUAN'),
(8832, 8, 'TUBARÁ'),
(8849, 8, 'USIACURÍ'),
(11001, 11, 'BOGOTÁ'),
(13001, 13, 'CARTAGENA'),
(13006, 13, 'ACHÍ'),
(13030, 13, 'ALTOS DEL ROSARIO'),
(13042, 13, 'ARENAL'),
(13052, 13, 'ARJONA'),
(13062, 13, 'ARROYOHONDO'),
(13074, 13, 'BARRANCO DE LOBA'),
(13140, 13, 'CALAMAR'),
(13160, 13, 'CANTAGALLO'),
(13188, 13, 'CICUCO'),
(13212, 13, 'CÓRDOBA'),
(13222, 13, 'CLEMENCIA'),
(13244, 13, 'EL CARMEN DE BOLÍVAR'),
(13248, 13, 'EL GUAMO'),
(13268, 13, 'EL PEÑÓN'),
(13300, 13, 'HATILLO DE LOBA'),
(13430, 13, 'MAGANGUÉ'),
(13433, 13, 'MAHATES'),
(13440, 13, 'MARGARITA'),
(13442, 13, 'MARÍA LA BAJA'),
(13458, 13, 'MONTECRISTO'),
(13468, 13, 'MOMPÓS'),
(13473, 13, 'MORALES'),
(13549, 13, 'PINILLOS'),
(13580, 13, 'REGIDOR'),
(13600, 13, 'RÍO VIEJO'),
(13620, 13, 'SAN CRISTÓBAL'),
(13647, 13, 'SAN ESTANISLAO'),
(13650, 13, 'SAN FERNANDO'),
(13654, 13, 'SAN JACINTO'),
(13655, 13, 'SAN JACINTO DEL CAUCA'),
(13657, 13, 'SAN JUAN NEPOMUCENO'),
(13667, 13, 'SAN MARTÍN DE LOBA'),
(13670, 13, 'SAN PABLO'),
(13673, 13, 'SANTA CATALINA'),
(13683, 13, 'SANTA ROSA'),
(13688, 13, 'SANTA ROSA DEL SUR'),
(13744, 13, 'SIMITÍ'),
(13760, 13, 'SOPLAVIENTO'),
(13780, 13, 'TALAIGUA NUEVO'),
(13810, 13, 'TIQUISIO'),
(13836, 13, 'TURBACO'),
(13838, 13, 'TURBANÁ'),
(13873, 13, 'VILLANUEVA'),
(13894, 13, 'ZAMBRANO'),
(15001, 15, 'TUNJA'),
(15022, 15, 'ALMEIDA'),
(15047, 15, 'AQUITANIA'),
(15051, 15, 'ARCABUCO'),
(15087, 15, 'BELÉN'),
(15090, 15, 'BERBEO'),
(15092, 15, 'BETÉITIVA'),
(15097, 15, 'BOAVITA'),
(15104, 15, 'BOYACÁ'),
(15106, 15, 'BRICEÑO'),
(15109, 15, 'BUENAVISTA'),
(15114, 15, 'BUSBANZÁ'),
(15131, 15, 'CALDAS'),
(15135, 15, 'CAMPOHERMOSO'),
(15162, 15, 'CERINZA'),
(15172, 15, 'CHINAVITA'),
(15176, 15, 'CHIQUINQUIRÁ'),
(15180, 15, 'CHISCAS'),
(15183, 15, 'CHITA'),
(15185, 15, 'CHITARAQUE'),
(15187, 15, 'CHIVATÁ'),
(15189, 15, 'CIÉNEGA'),
(15204, 15, 'CÓMBITA'),
(15212, 15, 'COPER'),
(15215, 15, 'CORRALES'),
(15218, 15, 'COVARACHÍA'),
(15223, 15, 'CUBARÁ'),
(15224, 15, 'CUCAITA'),
(15226, 15, 'CUÍTIVA'),
(15232, 15, 'CHÍQUIZA'),
(15236, 15, 'CHIVOR'),
(15238, 15, 'DUITAMA'),
(15244, 15, 'EL COCUY'),
(15248, 15, 'EL ESPINO'),
(15272, 15, 'FIRAVITOBA'),
(15276, 15, 'FLORESTA'),
(15293, 15, 'GACHANTIVÁ'),
(15296, 15, 'GAMEZA'),
(15299, 15, 'GARAGOA'),
(15317, 15, 'GUACAMAYAS'),
(15322, 15, 'GUATEQUE'),
(15325, 15, 'GUAYATÁ'),
(15332, 15, 'GÜICÁN'),
(15362, 15, 'IZA'),
(15367, 15, 'JENESANO'),
(15368, 15, 'JERICÓ'),
(15377, 15, 'LABRANZAGRANDE'),
(15380, 15, 'LA CAPILLA'),
(15401, 15, 'LA VICTORIA'),
(15403, 15, 'LA UVITA'),
(15407, 15, 'VILLA DE LEYVA'),
(15425, 15, 'MACANAL'),
(15442, 15, 'MARIPÍ'),
(15455, 15, 'MIRAFLORES'),
(15464, 15, 'MONGUA'),
(15466, 15, 'MONGUÍ'),
(15469, 15, 'MONIQUIRÁ'),
(15476, 15, 'MOTAVITA'),
(15480, 15, 'MUZO'),
(15491, 15, 'NOBSA'),
(15494, 15, 'NUEVO COLÓN'),
(15500, 15, 'OICATÁ'),
(15507, 15, 'OTANCHE'),
(15511, 15, 'PACHAVITA'),
(15514, 15, 'PÁEZ'),
(15516, 15, 'PAIPA'),
(15518, 15, 'PAJARITO'),
(15522, 15, 'PANQUEBA'),
(15531, 15, 'PAUNA'),
(15533, 15, 'PAYA'),
(15537, 15, 'PAZ DE RÍO'),
(15542, 15, 'PESCA'),
(15550, 15, 'PISBA'),
(15572, 15, 'PUERTO BOYACÁ'),
(15580, 15, 'QUÍPAMA'),
(15599, 15, 'RAMIRIQUÍ'),
(15600, 15, 'RÁQUIRA'),
(15621, 15, 'RONDÓN'),
(15632, 15, 'SABOYÁ'),
(15638, 15, 'SÁCHICA'),
(15646, 15, 'SAMACÁ'),
(15660, 15, 'SAN EDUARDO'),
(15664, 15, 'SAN JOSÉ DE PARE'),
(15667, 15, 'SAN LUIS DE GACENO'),
(15673, 15, 'SAN MATEO'),
(15676, 15, 'SAN MIGUEL DE SEMA'),
(15681, 15, 'SAN PABLO DE BORBUR'),
(15686, 15, 'SANTANA'),
(15690, 15, 'SANTA MARÍA'),
(15693, 15, 'SANTA ROSA DE VITERBO'),
(15696, 15, 'SANTA SOFÍA'),
(15720, 15, 'SATIVANORTE'),
(15723, 15, 'SATIVASUR'),
(15740, 15, 'SIACHOQUE'),
(15753, 15, 'SOATÁ'),
(15755, 15, 'SOCOTÁ'),
(15757, 15, 'SOCHA'),
(15759, 15, 'SOGAMOSO'),
(15761, 15, 'SOMONDOCO'),
(15762, 15, 'SORA'),
(15763, 15, 'SOTAQUIRÁ'),
(15764, 15, 'SORACÁ'),
(15774, 15, 'SUSACÓN'),
(15776, 15, 'SUTAMARCHÁN'),
(15778, 15, 'SUTATENZA'),
(15790, 15, 'TASCO'),
(15798, 15, 'TENZA'),
(15804, 15, 'TIBANÁ'),
(15806, 15, 'TIBASOSA'),
(15808, 15, 'TINJACÁ'),
(15810, 15, 'TIPACOQUE'),
(15814, 15, 'TOCA'),
(15816, 15, 'TOGÜÍ'),
(15820, 15, 'TÓPAGA'),
(15822, 15, 'TOTA'),
(15832, 15, 'TUNUNGUÁ'),
(15835, 15, 'TURMEQUÉ'),
(15837, 15, 'TUTA'),
(15839, 15, 'TUTAZÁ'),
(15842, 15, 'UMBITA'),
(15861, 15, 'VENTAQUEMADA'),
(15879, 15, 'VIRACACHÁ'),
(15897, 15, 'ZETAQUIRA'),
(17001, 17, 'MANIZALES'),
(17013, 17, 'AGUADAS'),
(17042, 17, 'ANSERMA'),
(17050, 17, 'ARANZAZU'),
(17088, 17, 'BELALCÁZAR'),
(17174, 17, 'CHINCHINÁ'),
(17272, 17, 'FILADELFIA'),
(17380, 17, 'LA DORADA'),
(17388, 17, 'LA MERCED'),
(17433, 17, 'MANZANARES'),
(17442, 17, 'MARMATO'),
(17444, 17, 'MARQUETALIA'),
(17446, 17, 'MARULANDA'),
(17486, 17, 'NEIRA'),
(17495, 17, 'NORCASIA'),
(17513, 17, 'PÁCORA'),
(17524, 17, 'PALESTINA'),
(17541, 17, 'PENSILVANIA'),
(17614, 17, 'RIOSUCIO'),
(17616, 17, 'RISARALDA'),
(17653, 17, 'SALAMINA'),
(17662, 17, 'SAMANÁ'),
(17665, 17, 'SAN JOSÉ'),
(17777, 17, 'SUPÍA'),
(17867, 17, 'VICTORIA'),
(17873, 17, 'VILLAMARÍA'),
(17877, 17, 'VITERBO'),
(18001, 18, 'FLORENCIA'),
(18029, 18, 'ALBANIA'),
(18094, 18, 'BELÉN DE LOS ANDAQUIES'),
(18150, 18, 'CARTAGENA DEL CHAIRÁ'),
(18205, 18, 'CURILLO'),
(18247, 18, 'EL DONCELLO'),
(18256, 18, 'EL PAUJIL'),
(18410, 18, 'LA MONTAÑITA'),
(18460, 18, 'MILÁN'),
(18479, 18, 'MORELIA'),
(18592, 18, 'PUERTO RICO'),
(18610, 18, 'SAN JOSÉ DEL FRAGUA'),
(18753, 18, 'SAN VICENTE DEL CAGUÁN'),
(18756, 18, 'SOLANO'),
(18785, 18, 'SOLITA'),
(18860, 18, 'VALPARAÍSO'),
(19001, 19, 'POPAYÁN'),
(19022, 19, 'ALMAGUER'),
(19050, 19, 'ARGELIA'),
(19075, 19, 'BALBOA'),
(19100, 19, 'BOLÍVAR'),
(19110, 19, 'BUENOS AIRES'),
(19130, 19, 'CAJIBÍO'),
(19137, 19, 'CALDONO'),
(19142, 19, 'CALOTO'),
(19212, 19, 'CORINTO'),
(19256, 19, 'EL TAMBO'),
(19290, 19, 'FLORENCIA'),
(19318, 19, 'GUAPI'),
(19355, 19, 'INZÁ'),
(19364, 19, 'JAMBALÓ'),
(19392, 19, 'LA SIERRA'),
(19397, 19, 'LA VEGA'),
(19418, 19, 'LÓPEZ'),
(19450, 19, 'MERCADERES'),
(19455, 19, 'MIRANDA'),
(19473, 19, 'MORALES'),
(19513, 19, 'PADILLA'),
(19517, 19, 'PAEZ'),
(19532, 19, 'PATÍA'),
(19533, 19, 'PIAMONTE'),
(19548, 19, 'PIENDAMÓ'),
(19573, 19, 'PUERTO TEJADA'),
(19585, 19, 'PURACÉ'),
(19622, 19, 'ROSAS'),
(19693, 19, 'SAN SEBASTIÁN'),
(19698, 19, 'SANTANDER DE QUILICHAO'),
(19701, 19, 'SANTA ROSA'),
(19743, 19, 'SILVIA'),
(19760, 19, 'SOTARA'),
(19780, 19, 'SUÁREZ'),
(19785, 19, 'SUCRE'),
(19807, 19, 'TIMBÍO'),
(19809, 19, 'TIMBIQUÍ'),
(19821, 19, 'TORIBIO'),
(19824, 19, 'TOTORÓ'),
(19845, 19, 'VILLA RICA'),
(20001, 20, 'VALLEDUPAR'),
(20011, 20, 'AGUACHICA'),
(20013, 20, 'AGUSTÍN CODAZZI'),
(20032, 20, 'ASTREA'),
(20045, 20, 'BECERRIL'),
(20060, 20, 'BOSCONIA'),
(20175, 20, 'CHIMICHAGUA'),
(20178, 20, 'CHIRIGUANÁ'),
(20228, 20, 'CURUMANÍ'),
(20238, 20, 'EL COPEY'),
(20250, 20, 'EL PASO'),
(20295, 20, 'GAMARRA'),
(20310, 20, 'GONZÁLEZ'),
(20383, 20, 'LA GLORIA'),
(20400, 20, 'LA JAGUA DE IBIRICO'),
(20443, 20, 'MANAURE'),
(20517, 20, 'PAILITAS'),
(20550, 20, 'PELAYA'),
(20570, 20, 'PUEBLO BELLO'),
(20614, 20, 'RÍO DE ORO'),
(20621, 20, 'LA PAZ'),
(20710, 20, 'SAN ALBERTO'),
(20750, 20, 'SAN DIEGO'),
(20770, 20, 'SAN MARTÍN'),
(20787, 20, 'TAMALAMEQUE'),
(23001, 23, 'MONTERÍA'),
(23068, 23, 'AYAPEL'),
(23079, 23, 'BUENAVISTA'),
(23090, 23, 'CANALETE'),
(23162, 23, 'CERETÉ'),
(23168, 23, 'CHIMÁ'),
(23182, 23, 'CHINÚ'),
(23189, 23, 'CIÉNAGA DE ORO'),
(23300, 23, 'COTORRA'),
(23350, 23, 'LA APARTADA'),
(23417, 23, 'LORICA'),
(23419, 23, 'LOS CÓRDOBAS'),
(23464, 23, 'MOMIL'),
(23466, 23, 'MONTELÍBANO'),
(23500, 23, 'MOÑITOS'),
(23555, 23, 'PLANETA RICA'),
(23570, 23, 'PUEBLO NUEVO'),
(23574, 23, 'PUERTO ESCONDIDO'),
(23580, 23, 'PUERTO LIBERTADOR'),
(23586, 23, 'PURÍSIMA'),
(23660, 23, 'SAHAGÚN'),
(23670, 23, 'SAN ANDRÉS SOTAVENTO'),
(23672, 23, 'SAN ANTERO'),
(23675, 23, 'SAN BERNARDO DEL VIENTO'),
(23678, 23, 'SAN CARLOS'),
(23686, 23, 'SAN PELAYO'),
(23807, 23, 'TIERRALTA'),
(23855, 23, 'VALENCIA'),
(25001, 25, 'AGUA DE DIOS'),
(25019, 25, 'ALBÁN'),
(25035, 25, 'ANAPOIMA'),
(25040, 25, 'ANOLAIMA'),
(25053, 25, 'ARBELÁEZ'),
(25086, 25, 'BELTRÁN'),
(25095, 25, 'BITUIMA'),
(25099, 25, 'BOJACÁ'),
(25120, 25, 'CABRERA'),
(25123, 25, 'CACHIPAY'),
(25126, 25, 'CAJICÁ'),
(25148, 25, 'CAPARRAPÍ'),
(25151, 25, 'CAQUEZA'),
(25154, 25, 'CARMEN DE CARUPA'),
(25168, 25, 'CHAGUANÍ'),
(25175, 25, 'CHÍA'),
(25178, 25, 'CHIPAQUE'),
(25181, 25, 'CHOACHÍ'),
(25183, 25, 'CHOCONTÁ'),
(25200, 25, 'COGUA'),
(25214, 25, 'COTA'),
(25224, 25, 'CUCUNUBÁ'),
(25245, 25, 'EL COLEGIO'),
(25258, 25, 'EL PEÑÓN'),
(25260, 25, 'EL ROSAL'),
(25269, 25, 'FACATATIVÁ'),
(25279, 25, 'FOMEQUE'),
(25281, 25, 'FOSCA'),
(25286, 25, 'FUNZA'),
(25288, 25, 'FÚQUENE'),
(25290, 25, 'FUSAGASUGÁ'),
(25293, 25, 'GACHALA'),
(25295, 25, 'GACHANCIPÁ'),
(25297, 25, 'GACHETÁ'),
(25299, 25, 'GAMA'),
(25307, 25, 'GIRARDOT'),
(25312, 25, 'GRANADA'),
(25317, 25, 'GUACHETÁ'),
(25320, 25, 'GUADUAS'),
(25322, 25, 'GUASCA'),
(25324, 25, 'GUATAQUÍ'),
(25326, 25, 'GUATAVITA'),
(25328, 25, 'GUAYABAL DE SIQUIMA'),
(25335, 25, 'GUAYABETAL'),
(25339, 25, 'GUTIÉRREZ'),
(25368, 25, 'JERUSALÉN'),
(25372, 25, 'JUNÍN'),
(25377, 25, 'LA CALERA'),
(25386, 25, 'LA MESA'),
(25394, 25, 'LA PALMA'),
(25398, 25, 'LA PEÑA'),
(25402, 25, 'LA VEGA'),
(25407, 25, 'LENGUAZAQUE'),
(25426, 25, 'MACHETA'),
(25430, 25, 'MADRID'),
(25436, 25, 'MANTA'),
(25438, 25, 'MEDINA'),
(25473, 25, 'MOSQUERA'),
(25483, 25, 'NARIÑO'),
(25486, 25, 'NEMOCÓN'),
(25488, 25, 'NILO'),
(25489, 25, 'NIMAIMA'),
(25491, 25, 'NOCAIMA'),
(25506, 25, 'VENECIA'),
(25513, 25, 'PACHO'),
(25518, 25, 'PAIME'),
(25524, 25, 'PANDI'),
(25530, 25, 'PARATEBUENO'),
(25535, 25, 'PASCA'),
(25572, 25, 'PUERTO SALGAR'),
(25580, 25, 'PULÍ'),
(25592, 25, 'QUEBRADANEGRA'),
(25594, 25, 'QUETAME'),
(25596, 25, 'QUIPILE'),
(25599, 25, 'APULO'),
(25612, 25, 'RICAURTE'),
(25645, 25, 'SAN ANTONIO DEL TEQUENDAMA'),
(25649, 25, 'SAN BERNARDO'),
(25653, 25, 'SAN CAYETANO'),
(25658, 25, 'SAN FRANCISCO'),
(25662, 25, 'SAN JUAN DE RÍO SECO'),
(25718, 25, 'SASAIMA'),
(25736, 25, 'SESQUILÉ'),
(25740, 25, 'SIBATÉ'),
(25743, 25, 'SILVANIA'),
(25745, 25, 'SIMIJACA'),
(25754, 25, 'SOACHA'),
(25758, 25, 'SOPÓ'),
(25769, 25, 'SUBACHOQUE'),
(25772, 25, 'SUESCA'),
(25777, 25, 'SUPATÁ'),
(25779, 25, 'SUSA'),
(25781, 25, 'SUTATAUSA'),
(25785, 25, 'TABIO'),
(25793, 25, 'TAUSA'),
(25797, 25, 'TENA'),
(25799, 25, 'TENJO'),
(25805, 25, 'TIBACUY'),
(25807, 25, 'TIBIRITA'),
(25815, 25, 'TOCAIMA'),
(25817, 25, 'TOCANCIPÁ'),
(25823, 25, 'TOPAIPÍ'),
(25839, 25, 'UBALÁ'),
(25841, 25, 'UBAQUE'),
(25843, 25, 'VILLA DE SAN DIEGO DE UBATE'),
(25845, 25, 'UNE'),
(25851, 25, 'ÚTICA'),
(25862, 25, 'VERGARA'),
(25867, 25, 'VIANÍ'),
(25871, 25, 'VILLAGÓMEZ'),
(25873, 25, 'VILLAPINZÓN'),
(25875, 25, 'VILLETA'),
(25878, 25, 'VIOTÁ'),
(25885, 25, 'YACOPÍ'),
(25898, 25, 'ZIPACÓN'),
(25899, 25, 'ZIPAQUIRÁ'),
(27001, 27, 'QUIBDÓ'),
(27006, 27, 'ACANDÍ'),
(27025, 27, 'ALTO BAUDO'),
(27050, 27, 'ATRATO'),
(27073, 27, 'BAGADÓ'),
(27075, 27, 'BAHÍA SOLANO'),
(27077, 27, 'BAJO BAUDÓ'),
(27086, 27, 'BELÉN DE BAJIRÁ'),
(27099, 27, 'BOJAYA'),
(27135, 27, 'EL CANTÓN DEL SAN PABLO'),
(27150, 27, 'CARMEN DEL DARIEN'),
(27160, 27, 'CÉRTEGUI'),
(27205, 27, 'CONDOTO'),
(27245, 27, 'EL CARMEN DE ATRATO'),
(27250, 27, 'EL LITORAL DEL SAN JUAN'),
(27361, 27, 'ISTMINA'),
(27372, 27, 'JURADÓ'),
(27413, 27, 'LLORÓ'),
(27425, 27, 'MEDIO ATRATO'),
(27430, 27, 'MEDIO BAUDÓ'),
(27450, 27, 'MEDIO SAN JUAN'),
(27491, 27, 'NÓVITA'),
(27495, 27, 'NUQUÍ'),
(27580, 27, 'RÍO IRO'),
(27600, 27, 'RÍO QUITO'),
(27615, 27, 'RIOSUCIO'),
(27660, 27, 'SAN JOSÉ DEL PALMAR'),
(27745, 27, 'SIPÍ'),
(27787, 27, 'TADÓ'),
(27800, 27, 'UNGUÍA'),
(27810, 27, 'UNIÓN PANAMERICANA'),
(41001, 41, 'NEIVA'),
(41006, 41, 'ACEVEDO'),
(41013, 41, 'AGRADO'),
(41016, 41, 'AIPE'),
(41020, 41, 'ALGECIRAS'),
(41026, 41, 'ALTAMIRA'),
(41078, 41, 'BARAYA'),
(41132, 41, 'CAMPOALEGRE'),
(41206, 41, 'COLOMBIA'),
(41244, 41, 'ELÍAS'),
(41298, 41, 'GARZÓN'),
(41306, 41, 'GIGANTE'),
(41319, 41, 'GUADALUPE'),
(41349, 41, 'HOBO'),
(41357, 41, 'IQUIRA'),
(41359, 41, 'ISNOS'),
(41378, 41, 'LA ARGENTINA'),
(41396, 41, 'LA PLATA'),
(41483, 41, 'NÁTAGA'),
(41503, 41, 'OPORAPA'),
(41518, 41, 'PAICOL'),
(41524, 41, 'PALERMO'),
(41530, 41, 'PALESTINA'),
(41548, 41, 'PITAL'),
(41551, 41, 'PITALITO'),
(41615, 41, 'RIVERA'),
(41660, 41, 'SALADOBLANCO'),
(41668, 41, 'SAN AGUSTÍN'),
(41676, 41, 'SANTA MARÍA'),
(41770, 41, 'SUAZA'),
(41791, 41, 'TARQUI'),
(41797, 41, 'TESALIA'),
(41799, 41, 'TELLO'),
(41801, 41, 'TERUEL'),
(41807, 41, 'TIMANÁ'),
(41872, 41, 'VILLAVIEJA'),
(41885, 41, 'YAGUARÁ'),
(44001, 44, 'RIOHACHA'),
(44035, 44, 'ALBANIA'),
(44078, 44, 'BARRANCAS'),
(44090, 44, 'DIBULLA'),
(44098, 44, 'DISTRACCIÓN'),
(44110, 44, 'EL MOLINO'),
(44279, 44, 'FONSECA'),
(44378, 44, 'HATONUEVO'),
(44420, 44, 'LA JAGUA DEL PILAR'),
(44430, 44, 'MAICAO'),
(44560, 44, 'MANAURE'),
(44650, 44, 'SAN JUAN DEL CESAR'),
(44847, 44, 'URIBIA'),
(44855, 44, 'URUMITA'),
(44874, 44, 'VILLANUEVA'),
(47001, 47, 'SANTA MARTA'),
(47030, 47, 'ALGARROBO'),
(47053, 47, 'ARACATACA'),
(47058, 47, 'ARIGUANÍ'),
(47161, 47, 'CERRO SAN ANTONIO'),
(47170, 47, 'CHIBOLO'),
(47189, 47, 'CIÉNAGA'),
(47205, 47, 'CONCORDIA'),
(47245, 47, 'EL BANCO'),
(47258, 47, 'EL PIÑON'),
(47268, 47, 'EL RETÉN'),
(47288, 47, 'FUNDACIÓN'),
(47318, 47, 'GUAMAL'),
(47460, 47, 'NUEVA GRANADA'),
(47541, 47, 'PEDRAZA'),
(47545, 47, 'PIJIÑO DEL CARMEN'),
(47551, 47, 'PIVIJAY'),
(47555, 47, 'PLATO'),
(47570, 47, 'PUEBLOVIEJO'),
(47605, 47, 'REMOLINO'),
(47660, 47, 'SABANAS DE SAN ANGEL'),
(47675, 47, 'SALAMINA'),
(47692, 47, 'SAN SEBASTIÁN DE BUENAVISTA'),
(47703, 47, 'SAN ZENÓN'),
(47707, 47, 'SANTA ANA'),
(47720, 47, 'SANTA BÁRBARA DE PINTO'),
(47745, 47, 'SITIONUEVO'),
(47798, 47, 'TENERIFE'),
(47960, 47, 'ZAPAYÁN'),
(47980, 47, 'ZONA BANANERA'),
(50001, 50, 'VILLAVICENCIO'),
(50006, 50, 'ACACÍAS'),
(50110, 50, 'BARRANCA DE UPÍA'),
(50124, 50, 'CABUYARO'),
(50150, 50, 'CASTILLA LA NUEVA'),
(50223, 50, 'CUBARRAL'),
(50226, 50, 'CUMARAL'),
(50245, 50, 'EL CALVARIO'),
(50251, 50, 'EL CASTILLO'),
(50270, 50, 'EL DORADO'),
(50287, 50, 'FUENTE DE ORO'),
(50313, 50, 'GRANADA'),
(50318, 50, 'GUAMAL'),
(50325, 50, 'MAPIRIPÁN'),
(50330, 50, 'MESETAS'),
(50350, 50, 'LA MACARENA'),
(50370, 50, 'URIBE'),
(50400, 50, 'LEJANÍAS'),
(50450, 50, 'PUERTO CONCORDIA'),
(50568, 50, 'PUERTO GAITÁN'),
(50573, 50, 'PUERTO LÓPEZ'),
(50577, 50, 'PUERTO LLERAS'),
(50590, 50, 'PUERTO RICO'),
(50606, 50, 'RESTREPO'),
(50680, 50, 'SAN CARLOS DE GUAROA'),
(50683, 50, 'SAN JUAN DE ARAMA'),
(50686, 50, 'SAN JUANITO'),
(50689, 50, 'SAN MARTÍN'),
(50711, 50, 'VISTAHERMOSA'),
(52001, 52, 'PASTO'),
(52019, 52, 'ALBÁN'),
(52022, 52, 'ALDANA'),
(52036, 52, 'ANCUYÁ'),
(52051, 52, 'ARBOLEDA'),
(52079, 52, 'BARBACOAS'),
(52083, 52, 'BELÉN'),
(52110, 52, 'BUESACO'),
(52203, 52, 'COLÓN'),
(52207, 52, 'CONSACA'),
(52210, 52, 'CONTADERO'),
(52215, 52, 'CÓRDOBA'),
(52224, 52, 'CUASPUD'),
(52227, 52, 'CUMBAL'),
(52233, 52, 'CUMBITARA'),
(52240, 52, 'CHACHAGÜÍ'),
(52250, 52, 'EL CHARCO'),
(52254, 52, 'EL PEÑOL'),
(52256, 52, 'EL ROSARIO'),
(52258, 52, 'EL TABLÓN DE GÓMEZ'),
(52260, 52, 'EL TAMBO'),
(52287, 52, 'FUNES'),
(52317, 52, 'GUACHUCAL'),
(52320, 52, 'GUAITARILLA'),
(52323, 52, 'GUALMATÁN'),
(52352, 52, 'ILES'),
(52354, 52, 'IMUÉS'),
(52356, 52, 'IPIALES'),
(52378, 52, 'LA CRUZ'),
(52381, 52, 'LA FLORIDA'),
(52385, 52, 'LA LLANADA'),
(52390, 52, 'LA TOLA'),
(52399, 52, 'LA UNIÓN'),
(52405, 52, 'LEIVA'),
(52411, 52, 'LINARES'),
(52418, 52, 'LOS ANDES'),
(52427, 52, 'MAGÜI'),
(52435, 52, 'MALLAMA'),
(52473, 52, 'MOSQUERA'),
(52480, 52, 'NARIÑO'),
(52490, 52, 'OLAYA HERRERA'),
(52506, 52, 'OSPINA'),
(52520, 52, 'FRANCISCO PIZARRO'),
(52540, 52, 'POLICARPA'),
(52560, 52, 'POTOSÍ'),
(52565, 52, 'PROVIDENCIA'),
(52573, 52, 'PUERRES'),
(52585, 52, 'PUPIALES'),
(52612, 52, 'RICAURTE'),
(52621, 52, 'ROBERTO PAYÁN'),
(52678, 52, 'SAMANIEGO'),
(52683, 52, 'SANDONÁ'),
(52685, 52, 'SAN BERNARDO'),
(52687, 52, 'SAN LORENZO'),
(52693, 52, 'SAN PABLO'),
(52694, 52, 'SAN PEDRO DE CARTAGO'),
(52696, 52, 'SANTA BÁRBARA'),
(52699, 52, 'SANTACRUZ'),
(52720, 52, 'SAPUYES'),
(52786, 52, 'TAMINANGO'),
(52788, 52, 'TANGUA'),
(52835, 52, 'TUMACO'),
(52838, 52, 'TÚQUERRES'),
(52885, 52, 'YACUANQUER'),
(54001, 54, 'CÚCUTA'),
(54003, 54, 'ABREGO'),
(54051, 54, 'ARBOLEDAS'),
(54099, 54, 'BOCHALEMA'),
(54109, 54, 'BUCARASICA'),
(54125, 54, 'CÁCOTA'),
(54128, 54, 'CACHIRÁ'),
(54172, 54, 'CHINÁCOTA'),
(54174, 54, 'CHITAGÁ'),
(54206, 54, 'CONVENCIÓN'),
(54223, 54, 'CUCUTILLA'),
(54239, 54, 'DURANIA'),
(54245, 54, 'EL CARMEN'),
(54250, 54, 'EL TARRA'),
(54261, 54, 'EL ZULIA'),
(54313, 54, 'GRAMALOTE'),
(54344, 54, 'HACARÍ'),
(54347, 54, 'HERRÁN'),
(54377, 54, 'LABATECA'),
(54385, 54, 'LA ESPERANZA'),
(54398, 54, 'LA PLAYA'),
(54405, 54, 'LOS PATIOS'),
(54418, 54, 'LOURDES'),
(54480, 54, 'MUTISCUA'),
(54498, 54, 'OCAÑA'),
(54518, 54, 'PAMPLONA'),
(54520, 54, 'PAMPLONITA'),
(54553, 54, 'PUERTO SANTANDER'),
(54599, 54, 'RAGONVALIA'),
(54660, 54, 'SALAZAR'),
(54670, 54, 'SAN CALIXTO'),
(54673, 54, 'SAN CAYETANO'),
(54680, 54, 'SANTIAGO'),
(54720, 54, 'SARDINATA'),
(54743, 54, 'SILOS'),
(54800, 54, 'TEORAMA'),
(54810, 54, 'TIBÚ'),
(54820, 54, 'TOLEDO'),
(54871, 54, 'VILLA CARO'),
(54874, 54, 'VILLA DEL ROSARIO'),
(63001, 63, 'ARMENIA'),
(63111, 63, 'BUENAVISTA'),
(63130, 63, 'CALARCA'),
(63190, 63, 'CIRCASIA'),
(63212, 63, 'CÓRDOBA'),
(63272, 63, 'FILANDIA'),
(63302, 63, 'GÉNOVA'),
(63401, 63, 'LA TEBAIDA'),
(63470, 63, 'MONTENEGRO'),
(63548, 63, 'PIJAO'),
(63594, 63, 'QUIMBAYA'),
(63690, 63, 'SALENTO'),
(66001, 66, 'PEREIRA'),
(66045, 66, 'APÍA'),
(66075, 66, 'BALBOA'),
(66088, 66, 'BELÉN DE UMBRÍA'),
(66170, 66, 'DOSQUEBRADAS'),
(66318, 66, 'GUÁTICA'),
(66383, 66, 'LA CELIA'),
(66400, 66, 'LA VIRGINIA'),
(66440, 66, 'MARSELLA'),
(66456, 66, 'MISTRATÓ'),
(66572, 66, 'PUEBLO RICO'),
(66594, 66, 'QUINCHÍA'),
(66682, 66, 'SANTA ROSA DE CABAL'),
(66687, 66, 'SANTUARIO'),
(68001, 68, 'BUCARAMANGA'),
(68013, 68, 'AGUADA'),
(68020, 68, 'ALBANIA'),
(68051, 68, 'ARATOCA'),
(68077, 68, 'BARBOSA'),
(68079, 68, 'BARICHARA'),
(68081, 68, 'BARRANCABERMEJA'),
(68092, 68, 'BETULIA'),
(68101, 68, 'BOLÍVAR'),
(68121, 68, 'CABRERA'),
(68132, 68, 'CALIFORNIA'),
(68147, 68, 'CAPITANEJO'),
(68152, 68, 'CARCASÍ'),
(68160, 68, 'CEPITÁ'),
(68162, 68, 'CERRITO'),
(68167, 68, 'CHARALÁ'),
(68169, 68, 'CHARTA'),
(68176, 68, 'CHIMA'),
(68179, 68, 'CHIPATÁ'),
(68190, 68, 'CIMITARRA'),
(68207, 68, 'CONCEPCIÓN'),
(68209, 68, 'CONFINES'),
(68211, 68, 'CONTRATACIÓN'),
(68217, 68, 'COROMORO'),
(68229, 68, 'CURITÍ'),
(68235, 68, 'EL CARMEN DE CHUCURÍ'),
(68245, 68, 'EL GUACAMAYO'),
(68250, 68, 'EL PEÑÓN'),
(68255, 68, 'EL PLAYÓN'),
(68264, 68, 'ENCINO'),
(68266, 68, 'ENCISO'),
(68271, 68, 'FLORIÁN'),
(68276, 68, 'FLORIDABLANCA'),
(68296, 68, 'GALÁN'),
(68298, 68, 'GAMBITA'),
(68307, 68, 'GIRÓN'),
(68318, 68, 'GUACA'),
(68320, 68, 'GUADALUPE'),
(68322, 68, 'GUAPOTÁ'),
(68324, 68, 'GUAVATÁ'),
(68327, 68, 'GÜEPSA'),
(68344, 68, 'HATO'),
(68368, 68, 'JESÚS MARÍA'),
(68370, 68, 'JORDÁN'),
(68377, 68, 'LA BELLEZA'),
(68385, 68, 'LANDÁZURI'),
(68397, 68, 'LA PAZ'),
(68406, 68, 'LEBRÍJA'),
(68418, 68, 'LOS SANTOS'),
(68425, 68, 'MACARAVITA'),
(68432, 68, 'MÁLAGA'),
(68444, 68, 'MATANZA'),
(68464, 68, 'MOGOTES'),
(68468, 68, 'MOLAGAVITA'),
(68498, 68, 'OCAMONTE'),
(68500, 68, 'OIBA'),
(68502, 68, 'ONZAGA'),
(68522, 68, 'PALMAR'),
(68524, 68, 'PALMAS DEL SOCORRO'),
(68533, 68, 'PÁRAMO'),
(68547, 68, 'PIEDECUESTA'),
(68549, 68, 'PINCHOTE'),
(68572, 68, 'PUENTE NACIONAL'),
(68573, 68, 'PUERTO PARRA'),
(68575, 68, 'PUERTO WILCHES'),
(68615, 68, 'RIONEGRO'),
(68655, 68, 'SABANA DE TORRES'),
(68669, 68, 'SAN ANDRÉS'),
(68673, 68, 'SAN BENITO'),
(68679, 68, 'SAN GIL'),
(68682, 68, 'SAN JOAQUÍN'),
(68684, 68, 'SAN JOSÉ DE MIRANDA'),
(68686, 68, 'SAN MIGUEL'),
(68689, 68, 'SAN VICENTE DE CHUCURÍ'),
(68705, 68, 'SANTA BÁRBARA'),
(68720, 68, 'SANTA HELENA DEL OPÓN'),
(68745, 68, 'SIMACOTA'),
(68755, 68, 'SOCORRO'),
(68770, 68, 'SUAITA'),
(68773, 68, 'SUCRE'),
(68780, 68, 'SURATÁ'),
(68820, 68, 'TONA'),
(68855, 68, 'VALLE DE SAN JOSÉ'),
(68861, 68, 'VÉLEZ'),
(68867, 68, 'VETAS'),
(68872, 68, 'VILLANUEVA'),
(68895, 68, 'ZAPATOCA'),
(70001, 70, 'SINCELEJO'),
(70110, 70, 'BUENAVISTA'),
(70124, 70, 'CAIMITO'),
(70204, 70, 'COLOSO'),
(70215, 70, 'COROZAL'),
(70221, 70, 'COVEÑAS'),
(70230, 70, 'CHALÁN'),
(70233, 70, 'EL ROBLE'),
(70235, 70, 'GALERAS'),
(70265, 70, 'GUARANDA'),
(70400, 70, 'LA UNIÓN'),
(70418, 70, 'LOS PALMITOS'),
(70429, 70, 'MAJAGUAL'),
(70473, 70, 'MORROA'),
(70508, 70, 'OVEJAS'),
(70523, 70, 'PALMITO'),
(70670, 70, 'SAMPUÉS'),
(70678, 70, 'SAN BENITO ABAD'),
(70702, 70, 'SAN JUAN DE BETULIA'),
(70708, 70, 'SAN MARCOS'),
(70713, 70, 'SAN ONOFRE'),
(70717, 70, 'SAN PEDRO'),
(70742, 70, 'SINCÉ'),
(70771, 70, 'SUCRE'),
(70820, 70, 'SANTIAGO DE TOLÚ'),
(70823, 70, 'TOLÚ VIEJO'),
(73001, 73, 'IBAGUÉ'),
(73024, 73, 'ALPUJARRA'),
(73026, 73, 'ALVARADO'),
(73030, 73, 'AMBALEMA'),
(73043, 73, 'ANZOÁTEGUI'),
(73055, 73, 'ARMERO'),
(73067, 73, 'ATACO'),
(73124, 73, 'CAJAMARCA'),
(73148, 73, 'CARMEN DE APICALÁ'),
(73152, 73, 'CASABIANCA'),
(73168, 73, 'CHAPARRAL'),
(73200, 73, 'COELLO'),
(73217, 73, 'COYAIMA'),
(73226, 73, 'CUNDAY'),
(73236, 73, 'DOLORES'),
(73268, 73, 'ESPINAL'),
(73270, 73, 'FALAN'),
(73275, 73, 'FLANDES'),
(73283, 73, 'FRESNO'),
(73319, 73, 'GUAMO'),
(73347, 73, 'HERVEO'),
(73349, 73, 'HONDA'),
(73352, 73, 'ICONONZO'),
(73408, 73, 'LÉRIDA'),
(73411, 73, 'LÍBANO'),
(73443, 73, 'MARIQUITA'),
(73449, 73, 'MELGAR'),
(73461, 73, 'MURILLO'),
(73483, 73, 'NATAGAIMA'),
(73504, 73, 'ORTEGA'),
(73520, 73, 'PALOCABILDO'),
(73547, 73, 'PIEDRAS'),
(73555, 73, 'PLANADAS'),
(73563, 73, 'PRADO'),
(73585, 73, 'PURIFICACIÓN'),
(73616, 73, 'RIOBLANCO'),
(73622, 73, 'RONCESVALLES'),
(73624, 73, 'ROVIRA'),
(73671, 73, 'SALDAÑA'),
(73675, 73, 'SAN ANTONIO'),
(73678, 73, 'SAN LUIS'),
(73686, 73, 'SANTA ISABEL'),
(73770, 73, 'SUÁREZ'),
(73854, 73, 'VALLE DE SAN JUAN'),
(73861, 73, 'VENADILLO'),
(73870, 73, 'VILLAHERMOSA'),
(73873, 73, 'VILLARRICA'),
(76001, 76, 'CALI'),
(76020, 76, 'ALCALÁ'),
(76036, 76, 'ANDALUCÍA'),
(76041, 76, 'ANSERMANUEVO'),
(76054, 76, 'ARGELIA'),
(76100, 76, 'BOLÍVAR'),
(76109, 76, 'BUENAVENTURA'),
(76111, 76, 'GUADALAJARA DE BUGA'),
(76113, 76, 'BUGALAGRANDE'),
(76122, 76, 'CAICEDONIA'),
(76126, 76, 'CALIMA'),
(76130, 76, 'CANDELARIA'),
(76147, 76, 'CARTAGO'),
(76233, 76, 'DAGUA'),
(76243, 76, 'EL ÁGUILA'),
(76246, 76, 'EL CAIRO'),
(76248, 76, 'EL CERRITO'),
(76250, 76, 'EL DOVIO'),
(76275, 76, 'FLORIDA'),
(76306, 76, 'GINEBRA'),
(76318, 76, 'GUACARÍ'),
(76364, 76, 'JAMUNDÍ'),
(76377, 76, 'LA CUMBRE'),
(76400, 76, 'LA UNIÓN'),
(76403, 76, 'LA VICTORIA'),
(76497, 76, 'OBANDO'),
(76520, 76, 'PALMIRA'),
(76563, 76, 'PRADERA'),
(76606, 76, 'RESTREPO'),
(76616, 76, 'RIOFRÍO'),
(76622, 76, 'ROLDANILLO'),
(76670, 76, 'SAN PEDRO'),
(76736, 76, 'SEVILLA'),
(76823, 76, 'TORO'),
(76828, 76, 'TRUJILLO'),
(76834, 76, 'TULUÁ'),
(76845, 76, 'ULLOA'),
(76863, 76, 'VERSALLES'),
(76869, 76, 'VIJES'),
(76890, 76, 'YOTOCO'),
(76892, 76, 'YUMBO'),
(76895, 76, 'ZARZAL'),
(81001, 81, 'ARAUCA'),
(81065, 81, 'ARAUQUITA'),
(81220, 81, 'CRAVO NORTE'),
(81300, 81, 'FORTUL'),
(81591, 81, 'PUERTO RONDÓN'),
(81736, 81, 'SARAVENA'),
(81794, 81, 'TAME'),
(85001, 85, 'YOPAL'),
(85010, 85, 'AGUAZUL'),
(85015, 85, 'CHAMEZA'),
(85125, 85, 'HATO COROZAL'),
(85136, 85, 'LA SALINA'),
(85139, 85, 'MANÍ'),
(85162, 85, 'MONTERREY'),
(85225, 85, 'NUNCHÍA'),
(85230, 85, 'OROCUÉ'),
(85250, 85, 'PAZ DE ARIPORO'),
(85263, 85, 'PORE'),
(85279, 85, 'RECETOR'),
(85300, 85, 'SABANALARGA'),
(85315, 85, 'SÁCAMA'),
(85325, 85, 'SAN LUIS DE PALENQUE'),
(85400, 85, 'TÁMARA'),
(85410, 85, 'TAURAMENA'),
(85430, 85, 'TRINIDAD'),
(85440, 85, 'VILLANUEVA'),
(86001, 86, 'MOCOA'),
(86219, 86, 'COLÓN'),
(86320, 86, 'ORITO'),
(86568, 86, 'PUERTO ASÍS'),
(86569, 86, 'PUERTO CAICEDO'),
(86571, 86, 'PUERTO GUZMÁN'),
(86573, 86, 'LEGUÍZAMO'),
(86749, 86, 'SIBUNDOY'),
(86755, 86, 'SAN FRANCISCO'),
(86757, 86, 'SAN MIGUEL'),
(86760, 86, 'SANTIAGO'),
(86865, 86, 'VALLE DEL GUAMUEZ'),
(86885, 86, 'VILLAGARZÓN'),
(88001, 88, 'SAN ANDRÉS'),
(88564, 88, 'PROVIDENCIA'),
(91001, 91, 'LETICIA'),
(91263, 91, 'EL ENCANTO'),
(91405, 91, 'LA CHORRERA'),
(91407, 91, 'LA PEDRERA'),
(91430, 91, 'LA VICTORIA'),
(91460, 91, 'MIRITI - PARANÁ'),
(91530, 91, 'PUERTO ALEGRÍA'),
(91536, 91, 'PUERTO ARICA'),
(91540, 91, 'PUERTO NARIÑO'),
(91669, 91, 'PUERTO SANTANDER'),
(91798, 91, 'TARAPACÁ'),
(94001, 94, 'INÍRIDA'),
(94343, 94, 'BARRANCO MINAS'),
(94663, 94, 'MAPIRIPANA'),
(94883, 94, 'SAN FELIPE'),
(94884, 94, 'PUERTO COLOMBIA'),
(94885, 94, 'LA GUADALUPE'),
(94886, 94, 'CACAHUAL'),
(94887, 94, 'PANA PANA'),
(94888, 94, 'MORICHAL'),
(95001, 95, 'SAN JOSÉ DEL GUAVIARE'),
(95015, 95, 'CALAMAR'),
(95025, 95, 'EL RETORNO'),
(95200, 95, 'MIRAFLORES'),
(97001, 97, 'MITÚ'),
(97161, 97, 'CARURU'),
(97511, 97, 'PACOA'),
(97666, 97, 'TARAIRA'),
(97777, 97, 'PAPUNAUA'),
(97889, 97, 'YAVARATÉ'),
(99001, 99, 'PUERTO CARREÑO'),
(99524, 99, 'LA PRIMAVERA'),
(99624, 99, 'SANTA ROSALÍA'),
(99773, 99, 'CUMARIBO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `nombre_dept` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `nombre_dept`) VALUES
(0, 'Sin asignar'),
(5, 'ANTIOQUIA'),
(8, 'ATLÁNTICO'),
(11, 'BOGOTÁ D.C'),
(13, 'BOLÍVAR'),
(15, 'BOYACÁ'),
(17, 'CALDAS'),
(18, 'CAQUETÁ'),
(19, 'CAUCA'),
(20, 'CESAR'),
(23, 'CÓRDOBA'),
(25, 'CUNDINAMARCA'),
(27, 'CHOCÓ'),
(41, 'HUILA'),
(44, 'LA GUAJIRA'),
(47, 'MAGDALENA'),
(50, 'META'),
(52, 'NARIÑO'),
(54, 'NORTE DE SANTAN'),
(63, 'QUINDIO'),
(66, 'RISARALDA'),
(68, 'SANTANDER'),
(70, 'SUCRE'),
(73, 'TOLIMA'),
(76, 'VALLE DEL CAUCA'),
(81, 'ARAUCA'),
(85, 'CASANARE'),
(86, 'PUTUMAYO'),
(88, 'SAN ANDRÉS'),
(91, 'AMAZONAS'),
(94, 'GUAINÍA'),
(95, 'GUAVIARE'),
(97, 'VAUPÉS'),
(99, 'VICHADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diente`
--

CREATE TABLE `diente` (
  `id_diente` int(11) NOT NULL,
  `num_diente` int(11) NOT NULL,
  `nombre_diente` varchar(60) COLLATE utf8_bin NOT NULL,
  `ausente` tinyint(1) NOT NULL,
  `extraer` tinyint(1) NOT NULL,
  `carie` tinyint(1) NOT NULL,
  `obturacion` tinyint(1) NOT NULL,
  `corona` tinyint(1) NOT NULL,
  `tramo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia_clinica`
--

CREATE TABLE `historia_clinica` (
  `id_historia` bigint(20) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `motivo_consulta` varchar(1000) COLLATE utf8_bin NOT NULL,
  `fecha_apertura` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `antecedentes_fam` varchar(3000) COLLATE utf8_bin NOT NULL,
  `enfermedad_actual` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` varchar(3000) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `historia_clinica`
--

INSERT INTO `historia_clinica` (`id_historia`, `id_cliente`, `motivo_consulta`, `fecha_apertura`, `antecedentes_fam`, `enfermedad_actual`, `observaciones`) VALUES
(1, 2, 'chequeo ', '2016-08-08 00:00:00', 'Ninguno', 'Ninguna', 'Buena salud oral');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia_diente`
--

CREATE TABLE `historia_diente` (
  `id_diente` int(11) NOT NULL,
  `id_historia` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia_pregunta`
--

CREATE TABLE `historia_pregunta` (
  `id_info` int(11) NOT NULL,
  `id_historia` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_paciente`
--

CREATE TABLE `info_paciente` (
  `id_info` int(11) NOT NULL,
  `desc_pregunta` varchar(100) COLLATE utf8_bin NOT NULL,
  `estado_pregunta` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multa`
--

CREATE TABLE `multa` (
  `id_multa` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `concepto_multa` varchar(60) COLLATE utf8_bin NOT NULL,
  `valor_multa` float(6,3) NOT NULL,
  `estado_multa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `multa`
--

INSERT INTO `multa` (`id_multa`, `id_cliente`, `concepto_multa`, `valor_multa`, `estado_multa`) VALUES
(1, 12, 'Cita no cancelada a tiempo', 10.000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `documento_persona` bigint(20) NOT NULL,
  `tipo_documento` varchar(2) COLLATE utf8_bin NOT NULL,
  `nombre_persona` varchar(60) COLLATE utf8_bin NOT NULL,
  `telefono_persona` varchar(30) COLLATE utf8_bin NOT NULL,
  `direccion_persona` varchar(40) COLLATE utf8_bin NOT NULL,
  `clave_acceso` varchar(60) COLLATE utf8_bin NOT NULL,
  `tipo_persona` varchar(3) COLLATE utf8_bin NOT NULL,
  `edad_persona` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero_persona` varchar(1) COLLATE utf8_bin NOT NULL,
  `estado_persona` varchar(3) COLLATE utf8_bin NOT NULL,
  `foto_persona` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `correo_persona` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `contacto_cliente` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `telefono_contacto_cliente` varchar(30) COLLATE utf8_bin NOT NULL,
  `estudios_odont` varchar(3000) COLLATE utf8_bin DEFAULT NULL,
  `tipo_sangre_cliente` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `rh_cliente` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `eps_persona` varchar(60) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `id_ciudad`, `documento_persona`, `tipo_documento`, `nombre_persona`, `telefono_persona`, `direccion_persona`, `clave_acceso`, `tipo_persona`, `edad_persona`, `fecha_nacimiento`, `genero_persona`, `estado_persona`, `foto_persona`, `correo_persona`, `contacto_cliente`, `telefono_contacto_cliente`, `estudios_odont`, `tipo_sangre_cliente`, `rh_cliente`, `eps_persona`) VALUES
(1, 5001, 1049648379, 'CC', 'Ricardo Antonio Perez Manrique', '3152467963', 'Calle 20 #50 - 60', '$2y$10$bgmJGvYgCUa7gbPnkajfP.ErLrCBFtjXs.ZqJbv9In8dOYBQ154ou', 'ADM', 34, '1980-10-21', 'M', 'ACT', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL),
(2, 5030, 1046214338, 'CC', 'Cristian Julian Torres Barreto', '3142145624', 'Cr 50 #50 - 50', '$2y$10$bgmJGvYgCUa7gbPnkajfP.ErLrCBFtjXs.ZqJbv9In8dOYBQ154ou', 'CLT', 20, '1996-04-27', 'M', 'ACT', NULL, NULL, 'Maria Angelica Torres Barreto', '314788824', NULL, 'AB', '+', 'Sanitas EPS'),
(3, 2242, 1008648639, 'CC', 'Leidy Johana Benavidez Dorzo', '8563451', 'Trans. 30c # 40 - 23', '$2y$10$bgmJGvYgCUa7gbPnkajfP.ErLrCBFtjXs.ZqJbv9In8dOYBQ154ou', 'CLT', 20, '1996-06-27', 'F', 'ACT', NULL, 'LeidyDorzo@gmail.com', 'Martha lucia Torres', '8563451', NULL, 'A', '+', 'Salud total'),
(4, 5001, 79567413, 'CC', 'Alvaro Hernando Cardona', '3193564932', 'Calle 123 # 78 -34', '$2y$10$bgmJGvYgCUa7gbPnkajfP.ErLrCBFtjXs.ZqJbv9In8dOYBQ154ou', 'CLT', 52, '1964-12-30', 'M', 'ACT', NULL, 'Cardona.hernando@hotmail.com', 'Nery Arias', '3256135555', NULL, 'AB', '-', 'Famisanar'),
(5, 5002, 02010125632, 'TI', 'Mara Alexandra Figueroa', '8464294', 'Carrera 46 J # 18-34', '$2y$10$bgmJGvYgCUa7gbPnkajfP.ErLrCBFtjXs.ZqJbv9In8dOYBQ154ou', 'CLT', 14, '2002-01-04', 'F', 'ACT', NULL, 'mari.2039@hotmail.com', 'Cesar Agusto Bonilla', '3215467894', NULL, 'B', '+', 'vive sano'),
(6, 5004, 72436235, 'CC', 'Luis Carlos Camargo Medilla', '3132946024', 'Trans. 45 # 23 - 9', '$2y$10$bgmJGvYgCUa7gbPnkajfP.ErLrCBFtjXs.ZqJbv9In8dOYBQ154ou', 'ODO', 67, '1949-09-05', 'M', 'ACT', NULL, 'camargo.medina29@gmail.com', NULL, NULL, 'Soy graduado en Odontologia de la Universidad de la Salle', 'O', '-', NULL),
(7, 5020, 41246456, 'CC', 'Luz Amparo Bello Frieto', '32052946392', 'Diagonal 37 #319 g - 53', '$2y$10$bgmJGvYgCUa7gbPnkajfP.ErLrCBFtjXs.ZqJbv9In8dOYBQ154ou', 'ODO', 37, '1979-05-13', 'F', 'ACT', NULL, 'luz.amparitho@sisi.co', NULL, NULL, 'Especialista en cirujia Maxilofacial', 'A', '-', NULL),
(8, 5030, 1007678330, 'CC', 'Karen Alexandra Fonseca Carrijo', '5593027', 'Av ciudad de cali # 29 - 34', '$2y$10$bgmJGvYgCUa7gbPnkajfP.ErLrCBFtjXs.ZqJbv9In8dOYBQ154ou', 'EMP', 19, '1997-10-31', 'F', 'ACT', NULL, 'Karren.30@vivir.es', NULL, NULL, NULL, 'O', '+', NULL),
(9, 5031, 51356359, 'CC', 'Martha lucia Vargas', '6204619', 'Carrera 27 # 19 - 78', '$2y$10$bgmJGvYgCUa7gbPnkajfP.ErLrCBFtjXs.ZqJbv9In8dOYBQ154ou', 'EMP', 54, '1962-01-27', 'F', 'ACT', NULL, 'luci.vargas@party.net', NULL, NULL, NULL, 'A', '-', NULL),
(10, 5034, 43355087, 'CC', 'Nelly Jasbleidy  Leon Infante', '3506294628', 'diagonal 23 #31 - 85', '$2y$10$bgmJGvYgCUa7gbPnkajfP.ErLrCBFtjXs.ZqJbv9In8dOYBQ154ou', 'ODO', 30, '1986-12-23', 'F', 'ACT', NULL, 'yas.leo23@vivir.co', NULL, NULL, 'Odontologo graduado de la Universidad Nacional de Colombia', 'B', '+', NULL),
(11, 5036, 56129365, 'CC', 'Carol Jazmín Forero Bojaca', '2840410', 'AV ind # 57 - 23', '$2y$10$bgmJGvYgCUa7gbPnkajfP.ErLrCBFtjXs.ZqJbv9In8dOYBQ154ou', 'CLT', 35, '1981-03-25', 'M', 'ACT', NULL, 'forero.boja@gmail.com', 'Alexandra Banguardia Fe', '3156483241', NULL, 'AB', '+', 'Famisanar'),
(12, 5038, 97080536215, 'TI', 'Jhonatan del Jesus Valencia', '3142947503', 'Calle 45 # 39 f - 23 sur', '$2y$10$bgmJGvYgCUa7gbPnkajfP.ErLrCBFtjXs.ZqJbv9In8dOYBQ154ou', 'CLT', 17, '1999-04-03', 'M', 'ACT', NULL, 'jhonatan2155@hotmail.com', 'Alvaro Hernando Cardona G.', '8521244', NULL, 'A', '-', 'vive sano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_historia`
--

CREATE TABLE `registro_historia` (
  `id_historia` bigint(20) NOT NULL,
  `id_odon` int(11) NOT NULL,
  `fecha_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `desc_procedimiento` varchar(3000) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `registro_historia`
--

INSERT INTO `registro_historia` (`id_historia`, `id_odon`, `fecha_reg`, `desc_procedimiento`) VALUES
(1, 6, '2016-07-09 00:00:00', 'general'),
(1, 6, '2016-07-10 00:00:00', 'general');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`id_cita`),
  ADD KEY `fk_cliente_cita` (`id_cliente`),
  ADD KEY `fk_odont_cita` (`id_odonto`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD KEY `fk_dept_ciudad` (`id_departamento`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `diente`
--
ALTER TABLE `diente`
  ADD PRIMARY KEY (`id_diente`);

--
-- Indices de la tabla `historia_clinica`
--
ALTER TABLE `historia_clinica`
  ADD PRIMARY KEY (`id_historia`),
  ADD KEY `fk_cliente_historia` (`id_cliente`);

--
-- Indices de la tabla `historia_diente`
--
ALTER TABLE `historia_diente`
  ADD PRIMARY KEY (`id_diente`,`id_historia`),
  ADD KEY `fk_historia_diente` (`id_historia`);

--
-- Indices de la tabla `historia_pregunta`
--
ALTER TABLE `historia_pregunta`
  ADD PRIMARY KEY (`id_info`,`id_historia`),
  ADD KEY `fk_pregunta_historia` (`id_historia`);

--
-- Indices de la tabla `info_paciente`
--
ALTER TABLE `info_paciente`
  ADD PRIMARY KEY (`id_info`);

--
-- Indices de la tabla `multa`
--
ALTER TABLE `multa`
  ADD PRIMARY KEY (`id_multa`),
  ADD KEY `fk_cliente_multa` (`id_cliente`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`),
  ADD UNIQUE KEY `documento_persona` (`documento_persona`),
  ADD KEY `fk_ciudad_persona` (`id_ciudad`);

--
-- Indices de la tabla `registro_historia`
--
ALTER TABLE `registro_historia`
  ADD PRIMARY KEY (`id_historia`,`fecha_reg`),
  ADD KEY `fk_historia_odontologo2` (`id_odon`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cita`
--
ALTER TABLE `cita`
  MODIFY `id_cita` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `diente`
--
ALTER TABLE `diente`
  MODIFY `id_diente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `historia_clinica`
--
ALTER TABLE `historia_clinica`
  MODIFY `id_historia` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `info_paciente`
--
ALTER TABLE `info_paciente`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `multa`
--
ALTER TABLE `multa`
  MODIFY `id_multa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `fk_cliente_cita` FOREIGN KEY (`id_cliente`) REFERENCES `persona` (`id_persona`),
  ADD CONSTRAINT `fk_odont_cita` FOREIGN KEY (`id_odonto`) REFERENCES `persona` (`id_persona`);

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `fk_dept_ciudad` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`);

--
-- Filtros para la tabla `historia_clinica`
--
ALTER TABLE `historia_clinica`
  ADD CONSTRAINT `fk_cliente_historia` FOREIGN KEY (`id_cliente`) REFERENCES `persona` (`id_persona`);

--
-- Filtros para la tabla `historia_diente`
--
ALTER TABLE `historia_diente`
  ADD CONSTRAINT `fk_diente_historia` FOREIGN KEY (`id_diente`) REFERENCES `diente` (`id_diente`),
  ADD CONSTRAINT `fk_historia_diente` FOREIGN KEY (`id_historia`) REFERENCES `historia_clinica` (`id_historia`);

--
-- Filtros para la tabla `historia_pregunta`
--
ALTER TABLE `historia_pregunta`
  ADD CONSTRAINT `fk_historia_pregunta` FOREIGN KEY (`id_info`) REFERENCES `info_paciente` (`id_info`),
  ADD CONSTRAINT `fk_pregunta_historia` FOREIGN KEY (`id_historia`) REFERENCES `historia_clinica` (`id_historia`);

--
-- Filtros para la tabla `multa`
--
ALTER TABLE `multa`
  ADD CONSTRAINT `fk_cliente_multa` FOREIGN KEY (`id_cliente`) REFERENCES `persona` (`id_persona`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_ciudad_persona` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`);

--
-- Filtros para la tabla `registro_historia`
--
ALTER TABLE `registro_historia`
  ADD CONSTRAINT `fk_historia_odontologo` FOREIGN KEY (`id_historia`) REFERENCES `historia_clinica` (`id_historia`),
  ADD CONSTRAINT `fk_historia_odontologo2` FOREIGN KEY (`id_odon`) REFERENCES `persona` (`id_persona`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
