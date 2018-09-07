-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-09-2018 a las 19:06:48
-- Versión del servidor: 10.2.16-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dappcun_suncorp`
--
CREATE DATABASE IF NOT EXISTS `dappcun_suncorp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dappcun_suncorp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `recid` int(5) NOT NULL,
  `sesId` varchar(100) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `prodid` varchar(100) NOT NULL,
  `indate` date NOT NULL,
  `intime` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `code` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`id`, `code`, `name`) VALUES
(1, 'AD', 'Andorra'),
(2, 'AE', 'United Arab Emirates'),
(3, 'AF', 'Afghanistan'),
(4, 'AG', 'Antigua and Barbuda'),
(5, 'AI', 'Anguilla'),
(6, 'AL', 'Albania'),
(7, 'AM', 'Armenia'),
(8, 'AN', 'Netherlands Antillas'),
(9, 'AO', 'Angola'),
(10, 'AQ', 'Antarctica'),
(11, 'AR', 'Argentina'),
(12, 'AS', 'American Samoa'),
(13, 'AT', 'Austria'),
(14, 'AU', 'Australia'),
(15, 'AW', 'Aruba '),
(16, 'AZ', 'Azerbaidjan '),
(17, 'BA', 'Bosnia-Herzegovina '),
(18, 'BB', 'Barbados '),
(19, 'BD', 'Bangladesh '),
(20, 'BE', 'Belgium'),
(21, 'BF', 'Burkina Faso '),
(22, 'BG', 'Bulgaria '),
(23, 'BH', 'Bahrain '),
(24, 'BI', 'Burundi '),
(25, 'BJ', 'Benin '),
(26, 'BM', 'Bermuda '),
(27, 'BN', 'Brunei Darussalam '),
(28, 'BO', 'Bolivia '),
(29, 'BR', 'Brazil '),
(30, 'BS', 'Bahamas '),
(31, 'BT', 'Bhutan '),
(32, 'BV', 'Bouvet Island'),
(33, 'BW', 'Botswana '),
(34, 'BY', 'Belarus '),
(35, 'BZ', 'Belize '),
(36, 'CA', 'Canada'),
(37, 'CC', 'Cocos (Keeling) Islands '),
(38, 'CF', 'Central African Republic '),
(39, 'CG', 'Congo '),
(40, 'CI', 'Ivory Coast '),
(41, 'CK', 'Cook Islands '),
(42, 'CL', 'Chile '),
(43, 'CM', 'Cameroon '),
(44, 'CN', 'China '),
(45, 'CO', 'Colombia '),
(46, 'CR', 'Costa Rica '),
(47, 'CU', 'Cuba '),
(48, 'CV', 'Cape Verde '),
(49, 'CX', 'Christmas Island '),
(50, 'CY', 'Cyprus '),
(51, 'CZ', 'Czech Republic '),
(52, 'CH', 'Switzerland '),
(53, 'DE', 'Germany '),
(54, 'DJ', 'Djibouti '),
(55, 'DK', 'Denmark '),
(56, 'DM', 'Dominica '),
(57, 'DO', 'Dominican Republic '),
(58, 'DZ', 'Algeria '),
(59, 'EC', 'Ecuador '),
(60, 'EE', 'Estonia '),
(61, 'EG', 'Egypt '),
(62, 'EH', 'Western Sahara '),
(63, 'ES', 'Spain '),
(64, 'ET', 'Ethiopia '),
(65, 'FI', 'Finland '),
(66, 'FJ', 'Fiji '),
(67, 'FK', 'Falkland Islands '),
(68, 'FM', 'Micronesia '),
(69, 'FO', 'Faroe Islands '),
(70, 'FR', 'France '),
(71, 'GA', 'Gabon '),
(72, 'GB', 'Great Britain/UK '),
(73, 'GD', 'Grenada '),
(74, 'GE', 'Georgia '),
(75, 'GF', 'French Guyana '),
(76, 'GH', 'Ghana '),
(77, 'GI', 'Gibraltar '),
(78, 'GL', 'Greenland '),
(79, 'GM', 'Gambia '),
(80, 'GN', 'Guinea '),
(81, 'GP', 'Guadeloupe (French) '),
(82, 'GQ', 'Equatorial Guinea '),
(83, 'GR', 'Greece '),
(84, 'GS', 'S. Georgia Is.  '),
(85, 'GT', 'Guatemala '),
(86, 'GU', 'Guam (USA) '),
(87, 'GW', 'Guinea Bissau '),
(88, 'GY', 'Guyana '),
(89, 'HK', 'Hong Kong '),
(90, 'HM', 'Heard & McDonald Islands '),
(91, 'HN', 'Honduras '),
(92, 'HR', 'Croatia '),
(93, 'HT', 'Haiti '),
(94, 'HU', 'Hungary '),
(95, 'ID', 'Indonesia '),
(96, 'IE', 'Ireland '),
(97, 'IL', 'Israel '),
(98, 'IN', 'India '),
(99, 'IO', 'British Indian Ocean '),
(100, 'IQ', 'Iraq '),
(101, 'IR ', 'Iran '),
(102, 'IS ', 'Iceland '),
(103, 'IT ', 'Italy '),
(104, 'JM ', 'Jamaica '),
(105, 'JO ', 'Jordan '),
(106, 'JP ', 'Japan '),
(107, 'KE ', 'Kenya '),
(108, 'KG ', 'Kyrgyzstan '),
(109, 'KH ', 'Cambodia '),
(110, 'KI ', 'Kiribati '),
(111, 'KM ', 'Comoros '),
(112, 'KN', 'Saint Kitts & Nevis Anguilla'),
(113, 'KP ', 'North Corea '),
(114, 'KR ', 'South Corea '),
(115, 'KW ', 'Kuwait '),
(116, 'KY ', 'Cayman Islands '),
(117, 'KZ ', 'Kazakhstan '),
(118, 'LA ', 'Laos '),
(119, 'LB ', 'Lebanon '),
(120, 'LC ', 'Saint Lucia '),
(121, 'LI ', 'Liechtenstein '),
(122, 'LK ', 'Sri Lanka '),
(123, 'LR ', 'Liberia '),
(124, 'LS ', 'Lesotho '),
(125, 'LT ', 'Lithuania '),
(126, 'LU ', 'Luxembourg '),
(127, 'LV ', 'Latvia '),
(128, 'LY ', 'Libya '),
(129, 'MA ', 'Morocco '),
(130, 'MC ', 'Monaco '),
(131, 'MD ', 'Moldavia '),
(132, 'MG ', 'Madagascar '),
(133, 'MH ', 'Marshall Islands '),
(134, 'MI ', 'USA Military '),
(135, 'MK ', 'Macedonia '),
(136, 'ML ', 'Mali '),
(137, 'MM ', 'Myanmar '),
(138, 'MN ', 'Mongolia '),
(139, 'MO ', 'Macau '),
(140, 'MP ', 'Northern Mariana Islands '),
(141, 'MQ ', 'Martinique '),
(142, 'MR ', 'Mauritania '),
(143, 'MS ', 'Montserrat '),
(144, 'MT ', 'Malta '),
(145, 'MU ', 'Mauritius '),
(146, 'MV ', 'Maldives '),
(147, 'MW ', 'Malawi '),
(148, 'MX', 'Mexico'),
(149, 'MY ', 'Malaysia '),
(150, 'MZ ', 'Mozambique '),
(151, 'NA ', 'Namibia '),
(152, 'NC ', 'New Caledonia '),
(153, 'NE ', 'Niger '),
(154, 'NF ', 'Norfolk Island '),
(155, 'NG ', 'Nigeria '),
(156, 'NI ', 'Nicaragua '),
(157, 'NL ', 'Netherlands '),
(158, 'NO ', 'Norway '),
(159, 'NP ', 'Nepal '),
(160, 'NR ', 'Nauru '),
(161, 'NT ', 'Neutral Zone '),
(162, 'NU ', 'Niue '),
(163, 'NZ ', 'New Zealand '),
(164, 'OM ', 'Oman '),
(165, 'PA ', 'Panama '),
(166, 'PE ', 'Peru '),
(167, 'PF ', 'Polynesia '),
(168, 'PG ', 'Papua New Guinea '),
(169, 'PH ', 'Philippines '),
(170, 'PK ', 'Pakistan '),
(171, 'PL ', 'Poland '),
(172, 'PM ', 'Saint Pierre and Miquelon '),
(173, 'PN ', 'Pitcairn Island '),
(174, 'PR ', 'Puerto Rico '),
(175, 'PT ', 'Portugal '),
(176, 'PW ', 'Palau '),
(177, 'PY ', 'Paraguay '),
(178, 'QA ', 'Qatar '),
(179, 'RE ', 'Reunion '),
(180, 'RO ', 'Romania '),
(181, 'RU ', 'Russian Federation '),
(182, 'RW ', 'Rwanda '),
(183, 'SA ', 'Saudi Arabia '),
(184, 'SB ', 'Solomon Islands '),
(185, 'SC ', 'Seychelles '),
(186, 'SD ', 'Sudan '),
(187, 'SE ', 'Sweden '),
(188, 'SG ', 'Singapore '),
(189, 'SH ', 'Saint Helena '),
(190, 'SI ', 'Slovenia '),
(191, 'SJ ', 'Svalvard & Jan Mayen Is. '),
(192, 'SK ', 'Slovak Republic '),
(193, 'SL ', 'Sierra Leone '),
(194, 'SM ', 'San Marino '),
(195, 'SN ', 'Senegal '),
(196, 'SO ', 'Somalia '),
(197, 'SR ', 'Suriname '),
(198, 'ST ', 'Saint Tome and Principe '),
(199, 'SU ', 'Former USSR '),
(200, 'SV ', 'El Salvador '),
(201, 'SY ', 'Syria '),
(202, 'SZ ', 'Swaziland '),
(203, 'TC ', 'Turks and Caicos Islands '),
(204, 'TD ', 'Chad '),
(205, 'TF ', 'French Southern Territories '),
(206, 'TG ', 'Togo '),
(207, 'TH ', 'Thailand '),
(208, 'TJ ', 'Tadjikistan '),
(209, 'TK ', 'Tokelau '),
(210, 'TM ', 'Turkmenistan '),
(211, 'TN ', 'Tunisia '),
(212, 'TO ', 'Tonga '),
(213, 'TP ', 'East Timor '),
(214, 'TR ', 'Turkey '),
(215, 'TT ', 'Trinidad and Tobago '),
(216, 'TV ', 'Tuvalu '),
(217, 'TW ', 'Taiwan '),
(218, 'TZ ', 'Tanzania '),
(219, 'UA ', 'Ukraine '),
(220, 'UG ', 'Uganda '),
(221, 'UK ', 'United Kingdom '),
(222, 'UM ', 'USA Minor Outlying Islands '),
(223, 'US', 'United States'),
(224, 'UY', 'Uruguay '),
(225, 'UZ ', 'Uzbekistan '),
(226, 'VA ', 'Vatican City State '),
(227, 'VC ', 'Saint Vicent & Grenadines '),
(228, 'VE ', 'Venezuela '),
(229, 'VG ', 'Virgin Islands (British) '),
(230, 'VI ', 'Virgin Islands (USA) '),
(231, 'VN ', 'Vietnam '),
(232, 'VU', 'Vanuatu '),
(233, 'WF', 'Wallis and Futura Islands '),
(234, 'WS', 'Samoa '),
(235, 'YE', 'Yemen '),
(236, 'YT', 'Mayotte '),
(237, 'YU', 'Yugoslavia '),
(238, 'ZA', 'South Africa '),
(239, 'ZM', 'Zambia '),
(240, 'ZR', 'Zaire '),
(241, 'ZW', 'Zimbabwe ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `recid` int(10) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `clasifica` varchar(100) NOT NULL,
  `descripcion` mediumtext NOT NULL,
  `precio` double(10,2) NOT NULL,
  `panel` varchar(50) NOT NULL,
  `resolucion` varchar(50) NOT NULL,
  `frecuencia` varchar(50) NOT NULL,
  `aspecto` varchar(50) NOT NULL,
  `audio` varchar(50) NOT NULL DEFAULT '',
  `puertos` mediumtext NOT NULL,
  `existencias` int(10) NOT NULL,
  `cpu` varchar(50) NOT NULL,
  `gnu` varchar(50) NOT NULL,
  `network` varchar(50) NOT NULL,
  `os` varchar(50) NOT NULL,
  `video` varchar(50) NOT NULL,
  `dtv` varchar(50) NOT NULL,
  `memoria` varchar(50) NOT NULL,
  `bateria` varchar(100) NOT NULL,
  `interfase` varchar(50) NOT NULL,
  `voltaje` varchar(50) NOT NULL,
  `recepcion` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`recid`, `marca`, `nombre`, `modelo`, `clasifica`, `descripcion`, `precio`, `panel`, `resolucion`, `frecuencia`, `aspecto`, `audio`, `puertos`, `existencias`, `cpu`, `gnu`, `network`, `os`, `video`, `dtv`, `memoria`, `bateria`, `interfase`, `voltaje`, `recepcion`, `foto`) VALUES
(1, '', 'Consola Power Station', '', '', '<b>Características:</b>\r\n<br>\r\nSistema de Entretenimiento que se conecta a la TV. Cuenta con 20 juegos ARCADE en una sola consola, para que juegues con tus familiares o amigos.\r\n<br>\r\n<b>Incluye:</b>\r\n<ul>\r\n<li>3 controles</li>\r\n<li>Cable AV</li>\r\n<li>Adaptador de corriente</li>\r\n</ul>\r\n', 200.00, '', '', '', '', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', ''),
(2, '', 'Videojuego Iplay Con 40 Juegos 4 Controles Inalámbricos', '', '', 'Sistema de Entretenimiento con controles inalámbricos que se conecta a la TV\r\nCuenta con 33 juegos ARCADE y 8 Juegos Deportivos para que juegues con tus familiares o amigos\r\nIncluye:\r\n<ul>\r\n<li>4 controles wireless</li>\r\n<li>5 accesorios deportivos</li>\r\n<li>Cable AV</li>\r\n<li>Adaptador de corriente</li>\r\n</ul>\r\n', 999.00, '', '', '', '', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', ''),
(3, '', 'Videojuego Interactivo En Dvd Sin Consola Zooos', '', '', 'ESPECIFICACIONES:\r\n<br>\r\nLOS JUEGOS SON EDUCACIONALES E INTERACTIVOS. NO NECESITAS CONSOLA FUNCIONA CON CUALQUIER DVD.\r\n\r\n<b>INCLUYE:</b>\r\n<ul>\r\n<li>MANDO</li>\r\n<li>4 JUEGOS DVD</li> \r\n</ul>\r\n<b>**NO INCLUYE BATERIAS</b>\r\n', 550.00, '', '', '', '', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', ''),
(4, '', 'Bocina Magnavox Sport Resistente Al Agua Y Polvo', '', '', 'MMA3639 es un altavoz resistente para ser llevado a la naturaleza. Con su resistencia al agua y protección contra el polvo del tiempo o el terreno nunca debe ser una preocupación para dar un paso más allá que fue creado con un diseño ergonómico para crear el más alto nivel de confort al llevar alrededor.\r\n<br>\r\n<b>ESPECIFICACIONES</b>\r\n<ul>\r\n<li>Protección contra el polvo / nivel de agua: IP67</li>\r\n<li>Salida de 6W RMS total (2 x 3W)\r\n<li>Función de respuesta del teléfono manos libres</li>\r\n<li>Batería recargable incorporada</li>\r\n<li>Conecte a cualquier dispositivo de audio a través de un puerto auxiliar de 3,5 mm</li>\r\n<li>Rango Bluetooth®: hasta 32 pies</li>\r\n<li>Encendido y indicador de carga</li>\r\n<li>Botón de control de volumen</li>\r\n</ul>\r\n<b>ACCESORIOS INCLUIDOS</b>\r\n<ul>\r\n<li>Cable de carga USB</li>\r\n<li>Cable de conexión auxiliar de 3,5 mm</li>\r\n</ul>\r\n\r\n', 799.00, '', '', '', '', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', ''),
(5, '', 'Bocina Resistente Al Agua Portátil 360 Grados Con Bluetooth', '', '', 'MMA3632 impermeable DSP 360 altavoz mantiene la fiesta ante la lluvia o bajo el sol. Disfrute de una experiencia de audio premium que se construye para el aire libre. ¡Conéctese a su smartphone, tableta u otro dispositivo de audio a través de Bluetooth o el puerto auxiliar para escuchar su música, videos o juegos donde quiera que vaya!\r\n<b>Especificaciones</b>\r\n<ul>\r\n<li>Conectividad Bluetooth / AUX</li>\r\n<li>Puertos 3.5mm aux-in</li>\r\n<li>Salida (total) 16W (2x 8W)</li>\r\n<li>Tiempo de funcionamiento 15 hrs</li>\r\n<li>Potencia Batería recargable incorporada</li>\r\n</ul>\r\n<b>Contiene:</b>\r\n<ul>\r\n<li>AC adaptador de pared</li>\r\n<li>Cable de carga</li>\r\n<li>Cable aux-in de 3,5 mm</li>\r\n</ul>\r\n', 1999.00, '', '', '', '', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', ''),
(6, '', 'Reproductor De Cd Con Bluetooth', '', '', 'MD6920 Reproductor de CD Magnavox con Bluetooth trae una pantalla digital que le ayuda a  navegar por la configuración y el sintonizador AM/ FM con facilidad.\r\nEste pequeño reproductor de CD está hecho con la simplicidad en mente para disfrutar de toda su música favorita.\r\n<br>\r\n<b>Especificaciones</b>\r\n<ul>\r\n<li>Conectividad AUX</li>\r\n<li>CD-R / CD-RW</li>\r\n<li>Radio AM / FM</li>\r\n<li>Puertos 3.5mm aux-in</li>\r\n<li>Bandeja de carga de CD</li>\r\n<li>Salida (total) 2W (2x 1W)</li>\r\n<li>Alimentación A/C y D/C</li>\r\n</ul>\r\n\r\n', 855.00, '', '', '', '', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', ''),
(7, '', 'Bocina Portátil Que Cambia De Color Con Bluetooth', '', '', 'La Bocina portatil MMA3645 que cambia el color es el altavoz perfecto de luz nocturna para cualquier mesa para crear un ambiente mientras disfruta de su música favorita. Este altavoz viene con un mando a distancia para cambiar fácilmente entre una gran selección de colores y controlar su altavoz portátil a distancia. Con Bluetooth y un puerto auxiliar incorporad.\r\n<br>\r\n<b>Especificaciones:</b>\r\n<li>Conectividad Bluetooth/AUX</li>\r\n<li>Puertos 3.5mm aux-in</li>\r\n<li>Salida (total) 1.5W</li>\r\n<li>Tiempo de operación 5 horas Potencia</li>\r\n<li>Batería recargable incorporada</li>\r\n</ul>\r\n<b>ACCESORIOS INCLUIDOS</b>\r\n<ul>\r\n<li>Cable de carga USB</li>\r\n<li>Cable aux-in de 3,5 mm</li>\r\n<li>Control remoto (utiliza 1 batería x\r\nCR2025, incluida)</li>\r\n\r\n</ul>\r\n', 999.00, '', '', '', '', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', ''),
(8, '', 'Bocina Portátil Resistente Al Agua Y Al Aire Libre', '', '', 'MMA3628 Magnavox La bocina potable impermeable de Bluetooth es la definición de lo que un altavoz portable al aire libre debe ser. Aquí en Magnavox tomamos nuestro tiempo y nos cercioramos de que este altavoz podría ser llevado alrededor de la lluvia o del brillo para todas sus actividades al aire libre haciéndolo impermeable, a prueba de polvo y encerrándolo en un diseño ergonómico durable. Además, con una duración de la batería de 10 horas, es sencillo mantenerla sin carga durante todo el día.\r\n<br>\r\n<b>Especificaciones</b>\r\n<ul>\r\n<li>Protección contra el polvo / impermeable</li>\r\n<li>Conectividad Manos libres para contestar el teléfono</li>\r\n<li>Bluetooth 4.1 LE</li>\r\n<li>Puertos 3.5mm aux-in</li>\r\n<li>Salida (total) 10W (2x 5W</li>)\r\n<li>Tiempo de funcionamiento 10 horas</li>\r\n</ul>\r\n<b>ACCESORIOS INCLUIDOS</b>\r\n<ul>\r\n<li>Cable de carga USB</li>\r\n<li>Cable aux-in de 3,5 mm</li>\r\n</ul>', 1799.00, '', '', '', '', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', ''),
(9, '', 'Bocina Portatil Magnavox Con Bluetooth', '', '', 'La bocina MMA3640 con manijas es su caja de auge clasificada como clásica con la tecnología  moderna que disfrutamos hoy. Este altavoz tiene una batería recargable incorporada junto con Bluetooth para transmitir su música de forma inalámbrica, y un puerto auxiliar de 3,5 mm para una conectividad simple a la mayoría de los dispositivos de audio.\r\n<br>\r\n<b>Especificaciones</b>\r\n<ul>\r\n<li>Conectividad Bluetooth/AUX</li>\r\n<li>Puertos 3.5mm aux-in</li>\r\n<li>Salida (total) 6W (2x 3W)</li>\r\n<li>Tiempo de funcionamiento 4 hora</li>\r\n<li>Potencia Batería recargable incorporada</li>\r\n</ul>\r\n<b>ACCESORIOS INCLUIDOS</b>\r\n<ul>\r\n<li>Cable de carga USB</li>\r\n</ul>', 1799.00, '', '', '', '', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', ''),
(10, '', 'Radio Reloj Con Bluetooth', '', '', 'La radio reloj MR41806BT es más que un reloj de alarma con radio AM / FM, este pequeño reloj trae la tecnología Bluetooth para que sea fácil de tocar las estaciones de escucha fácil o listas de reproducción favoritas a través de su teléfono sin problemas y sin cables. Coloque las baterías en él para asegurarse de que mantiene su reloj y alarma operativos en caso de un corte de energía. Con una pantalla grande de 1.8inch usted puede ver el tiempo en una buena distancia, lejos de la unidad.\r\n<br>\r\n<b>Especificaciones</b>\r\n<ul>\r\n<li>Dimensiones 8,27 (W) x 4,37 (H) x 2,36 (D)</li>\r\n<li>Peso 0.86lbs\r\n<li>Conectividad Bluetooth: hasta 32 pies</li>\r\n<li>Puertos 3.5mm aux-in</li>\r\n<li>Funciones del sintonizador AM / FM digital</li>\r\n<li>20 emisoras memorizadas (10Am y 10FM)</li>\r\n<li>Alarma del zumbador del reloj</li>\r\n<li>Snooze alarma</li>\r\n<li>Alarma de radio</li>\r\n<li>Pantalla LED de 1,8 “(rojo)</li>\r\n<li>Funcionamiento del A / C de la energía </li>\r\n<li>Batería de respaldo que mantiene el reloj y la operación de alarma en caso de corte de energía</li>\r\n</ul>', 495.00, '', '', '', '', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', ''),
(11, '', 'Cinta Kinesilógica individual (Azul, Morada, Negra, Naranja, Rosa y Verde)', '', '', '<b>Descripción </b>\r\n<ul>\r\n<li>Reducción del dolor y de la inflamación.</li>\r\n<li>Ayuda a mejorar la contracción de la postura.</li>\r\n<li>Facilita la circulación sanguínea y linfática.</li>\r\n<li>Contribuye en la aceleración del proceso de reparación de las lesiones.\r\n<li>Adhesivo modelado que es suave e hipoalergénico.</li>\r\n<li>Ola de patrón adhesivo que levanta la piel para ayudar a mejorar la circulación.</li>\r\n<li>Cinta de algodón de alta calidad 100% no contiene látex, transpirable, elástico y que mantiene la flexibilidad de la piel y los músculos.</li>\r\n<li>Resistente al agua y portátil de hasta cinco días. </li>\r\n</ul>\r\n<br>', 149.99, '', '', '', '', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', ''),
(12, '', 'Bocina Con Bluetooth TLK-FC15BT-1', '', '', '<b>CARACTERISTICAS</b>\r\n<ul>\r\n<li>Marca: TLK</li>\r\n<li>Respuesta de frecuencia: 45Hz-20KHz (-10dB)</li>\r\n<li>Sensibilidad: (1 m / 1 W) 97dB\r\n<li>Tweeter: controlador de compresión de 1.0 \"</li>\r\n<li>Woofer: bobina de voz de 15 \"MF / LF 2.0\"</li>\r\n<li>Impedancia nominal: 6 Ohm</li>\r\n<li>Potencia nominal: 150 W RMS</li>\r\n<li>Potencia máxima: 300W</li>\r\n<li>ENTRADA: XLR / 1/4 \"ST JACK Entrada y volumen del micrófono; Balance XLR / entrada RCA / 1/8 ST JACK y nivel de línea;</li>\r\n<li>Equilibrio XLR Salida de línea. Built-in USB / SD FM + BLUETOOTH</li>\r\n<li>Accesorios: cable de alimentación, control remoto, cable de altavoz, soporte de altavoz de trípode 1x.</li>\r\n<li>Micrófono con cable incluido</li>\r\n</ul>', 2999.00, '', '', '', '', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '', 'Bocina Portable Audioverse AV-3000', '', '', '<b>BOCINA PORTATIL AUDIOVERSE</b>\r\n<ul>\r\n<li>PLASTICO EN VIDRIO EN ACERO DE 2 VÍAS</li>\r\n<li>AMPLIFICADOR DEL ALTAVOZ DEL GABINETE</li>\r\n<li>MICRÓFONO INALÁMBRICO Y TRÍPODE INCLUIDOS</li>\r\n<li>BLUETOOTH MUSIC STREAMING</li>\r\n<li>FM RADIOAND USB / SD</li>\r\n<li>GRABACIÓN USB / SD</li>\r\n<li>LUZ RGB</li>\r\n</ul>\r\n<b>CARACTERISTICAS</b>\r\n<li>Cable macho de 3.5 mm a 2 RCA incluido</li>\r\n<li>Reproductor USB con control remoto</li>\r\n<li>Radio FM</li>\r\n<li>Ecualizador</li>\r\n<li>Altavoces cubiertos con parrilla de metal</li>\r\n<li>15 \"Woofer 540z Magnet, 75 mm Voice Coil, 40</li>\r\n<li>Tweeter 230z 44mm Ti.Diap Driver 80</li>\r\n<li>Sensibilidad 98 ± 2 dB / M / W</li>\r\n<li>Frecuencia 50-20KHz (-dB)</li>\r\n<li>UnitWeight: 37.35 LBS</li>\r\n</ul>', 2999.00, '', '', '', '', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '', 'Bocina Portable Audioverse AV-818', '', '', '<b>BOCINA PORTATIL AUDIOVERSE\r\nIDEAL PARA TUS FIESTAS</b>\r\n<br>\r\n<b>CARACTERISTICAS</b>\r\n<li>Reproductor USB / TF con control remoto</li>\r\n<li>Bajo y Peso: 9.5 LBS</li>\r\n<li>UPC: 8 611640 0038 7</li>\r\n<li>Control de agudos</li>\r\n<li>Altavoces cubiertos con parrilla de metal</li>\r\n<li>Woofer de 8\"</li>\r\n<li>Puerto de micrófono</li>\r\n<li>Volumen del micrófono</li>\r\n<li>Eco de micrófono</li>\r\n<li>Agudos</li>\r\n<li>Bajo</li>\r\n<li>AUX-In</li>\r\n<li>Batería recargable de 7.4Vcc 4400mAh</li>\r\n<li>AC 100-240V 50 / 60Hz 6W</li>\r\n<li>Toma de montaje en poste integrado de 36 mm</li>\r\n<li>Colores: negro</li>\r\n<li>Cant. Principal del cartón: 1</li>\r\n<li>Peso del cartón principal: 12 LBS</li>\r\n<li>Dimensiones principales del cartón: 11.6x9.45x17</li>\r\n<li>Dimensiones de la unidad: 11x9x16</li>\r\n</ul>\r\n', 1600.00, '', '', '', '', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', ''),
(15, '', 'Bocina Audioverse Con Bluetooth AV-8', '', '', '<b>ALTAVOZ PORTATIL PARA LAS FIESTAS\r\nBLUETOOTH RADIO FM Y USB / TF LUZ RGB</b>\r\n<ul>\r\n\r\n<li>Reproductor USB / TF con control remoto</li>\r\n<li>Altavoces cubiertos con parrilla de metal</li>\r\n<li>Woofer de 8 \"</li>\r\n<li>Entradas: conector de micrófono\r\nAUX-In</li>\r\n<li>Batería recargable de 7.4Vcc 4400mAh</li>\r\n<li>AC 100-240V 50 / 60Hz 6W</li>\r\n<li>Toma de montaje en poste integrado de 36 mm</li>\r\n<li>Colores: negro</li>\r\n<li>Cant. Principal del cartón: 1</li>\r\n<li>Peso del cartón principal: 10 LBS</li>\r\n<li>Dimensiones principales del cartón: 11.6x9.45x17</li>\r\n<li>Dimensiones de la unidad: 11x9x16</li>\r\n</ul>', 1200.00, '', '', '', '', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos-old`
--

CREATE TABLE `productos-old` (
  `recid` int(10) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `clasifica` varchar(100) NOT NULL,
  `descripcion` mediumtext NOT NULL,
  `precio` double(10,2) NOT NULL,
  `panel` varchar(50) NOT NULL,
  `resolucion` varchar(50) NOT NULL,
  `frecuencia` varchar(50) NOT NULL,
  `aspecto` varchar(50) NOT NULL,
  `audio` varchar(50) NOT NULL DEFAULT '',
  `puertos` mediumtext NOT NULL,
  `existencias` int(10) NOT NULL,
  `cpu` varchar(50) NOT NULL,
  `gnu` varchar(50) NOT NULL,
  `network` varchar(50) NOT NULL,
  `os` varchar(50) NOT NULL,
  `video` varchar(50) NOT NULL,
  `dtv` varchar(50) NOT NULL,
  `memoria` varchar(50) NOT NULL,
  `bateria` varchar(100) NOT NULL,
  `interfase` varchar(50) NOT NULL,
  `voltaje` varchar(50) NOT NULL,
  `recepcion` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos-old`
--

INSERT INTO `productos-old` (`recid`, `marca`, `modelo`, `clasifica`, `descripcion`, `precio`, `panel`, `resolucion`, `frecuencia`, `aspecto`, `audio`, `puertos`, `existencias`, `cpu`, `gnu`, `network`, `os`, `video`, `dtv`, `memoria`, `bateria`, `interfase`, `voltaje`, `recepcion`, `foto`) VALUES
(1, 'RCA', 'DEUC490M4', 'TVS', '', 3500.00, '49\" LED', '3840 x 2160', '60Hz', '16:9', '8 w + 8 w', '1 RF Antena <br>\r\n4 HDMI<br>\r\n1 Component Input <br>\r\n1 Composite Input <br>\r\n1 Audio L/R <br>\r\n1 VGA <br>\r\n1 PC Audio <br>\r\n1 Digital Audio Output  (Coaxial)<br>\r\n1 USB<br>', 1, '', '', '', '', '', '', '', '', '', '', '', 'deuc490m4.jpg'),
(2, 'RCA', 'DEUC420M4', 'TVS', '', 2500.00, '42\" LED', '3840 x 2160', '60Hz', '16:9', '8 w + 8 w', '1 RF Antena <br>\r\n4 HDMI <br>\r\n1 Component Input <br>\r\n1 Composite Input <br>\r\n1 Audio L/R <br>\r\n1 VGA <br>\r\n1 PC Audio <br>\r\n1 Digital Audio Output  (Coaxial)<br>\r\n1 USB <br>', 1, '', '', '', '', '', '', '', '', '', '', '', 'deuc420m4.jpg'),
(3, 'RCA', 'DEDM550M4', 'TVS', '', 6000.00, '55\" LED', '3840 x 2160', '60Hz', '16:9', '10w + 10w', '1 RF Antena <br>\r\n3 HDMI <br>\r\n1 Component Input <br>\r\n1 Composite Input <br>\r\n1 Audio L/R <br>\r\n1 VGA <br>\r\n1 PC Audio <br>\r\n1 Digital Audio Output  (Coaxial)<br>\r\n1 USB <br>', 1, '', '', '', '', '', '', '', '', '', '', '', 'dedm550m4.jpg'),
(4, 'RCA', 'DEDE500M4', 'TVS', '', 5500.00, '50\" LED', '1080p', '60Hz', '16:9', '10w + 10w', '1 RF Antena <br>\r\n3 HDMI <br>\r\n1 Component Input <br>\r\n1 Composite Input <br>\r\n1 Audio L/R <br>\r\n1 VGA <br>\r\n1 PC Audio <br>\r\n1 Digital Audio Output  (Coaxial) <br>\r\n1 USB <br>', 1, '', '', '', '', '', '', '', '', '', '', '', 'dede500m4.jpg'),
(5, 'RCA', 'DEDE430M4', 'TVS', '', 4300.00, '43\" LED', '1080p', '60Hz', '16:9', '10 w + 10 w', '1 RF Antena <br>\r\n3 HDMI <br>\r\n1 Component Input <br>\r\n1 Composite Input <br>\r\n1 Audio L/R <br>\r\n1 VGA <br>\r\n1 PC Audio <br>\r\n1 Digital Audio Output  (Coaxial)<br>\r\n1 USB<br>', 1, '', '', '', '', '', '', '', '', '', '', '', 'dede430m4.jpg'),
(6, 'RCA', 'DEDE400M4', 'TVS', '', 3950.00, '39.52 LED', '1080p', '60Hz', '16:9', '10 w + 10 w', '1 RF Antena <br>\r\n3 HDMI <br>\r\n1 Component Input <br>\r\n1 Composite Input <br>\r\n1 Audio L/R <br>\r\n1 VGA <br>\r\n1 PC Audio <br>\r\n1 Digital Audio Output  (Coaxial)<br>\r\n1 USB <br>', 1, '', '', '', '', '', '', '', '', '', '', '', 'dede400m4.jpg'),
(7, 'RCS', 'DEDK390M4S', 'TVS', '1 RF Antena\r\n2 HDMI\r\n1 Component Input\r\n1 Composite Input\r\n1 Audio L/R\r\n1 VGA\r\n1 PC Audio\r\n1 Digital Audio Output  (Coaxial)\r\n3 USB\r\n1 RJ45 Ethernet Input', 3800.00, '38.5\" LED', '720p', '60Hz', '16:9', '8 w + 8 w', '', 1, 'Amlogic S805/1.5GHz', 'Quad core Mali450', 'WIFI 802.11b/g/n  RJ45 Ethernet', 'Android 4.4', '', '', '', '', '', '', '', 'dedk390m4s.jpg'),
(8, 'RCA', 'DEDE280M4', 'TVS', '', 2750.00, '27.5\" LED', '720p', '60Hz', '16:9', '10 w + 10 w', '1 RF Antena <br>\r\n3 HDMI <br>\r\n1 Component Input <br>\r\n1 Composite Input <br>\r\n1 Audio L/R <br>\r\n1 VGA <br>\r\n1 PC Audio <br>\r\n1 Digital Audio Output  (Coaxial) <br>\r\n1 USB <br>', 1, '', '', '', '', '', '', '', '', '', '', '', 'dede280m4.jpg'),
(9, 'RCA', 'DETC240M4', 'TVS', '', 2400.00, '24\" LED', '1080p', '60Hz', '16:9', '3 w + 3 w', '1 RF Antena <br>\r\n3 HDMI <br>\r\n1 Component Input <br>\r\n1 Composite Input <br>\r\n1 Audio L/R <br>\r\n1 VGA <br>\r\n1 PC Audio <br>\r\n1 Digital Audio Output  (Coaxial)<br>\r\n1 USB<br>', 0, '', '', '', '', '', '', '', '', '', '', '', 'detc240m4.png'),
(10, 'RCA', 'DAA730R', 'TVS', '', 4000.00, '7\" LED', '1024 X 600', '60Hz', '', 'Dolby Digital Audio, MPEG-4', '', 0, '', '', 'Wifi 802.11b/g/n', 'Android 4.1 Jelli Bean', 'MPEG, ATSC', 'ATSC HD, Antena', '1 GB DDR3, 8GB Flash', 'Bateria de Littio 3200mAh (TV: 2Hrs, Tablet: 6.5Hrs)', 'Pantalla touch', '', '', 'daa730r.png'),
(11, 'TAI-MEX', 'MEC2100', 'OTROS', '', 4300.00, '4:3\'', '480i', '50/60 Hz', '4:3\'', 'DD 5.1', '', 1, '', '', '', '', 'MPEG-2, H.264/AVC', '', '', '', '', '100-240 V', 'ATSC', 'mec2100.jpg'),
(12, 'TAI-MEX', 'CDT1', 'otros', '', 4800.00, '', '480p / 720p / 1080i / 1080p en HDTV  480i en SDTV', '50/60 Hz', '4:3, 16:9 o Automatico', 'Sonido Estereo', '', 1, '', '', '', '', 'CVSB y HDMI', '', '', '', '', '100-240 V', 'ATSC', 'cdt1.jpg'),
(13, 'Consola Power Station', '', '', 'Características:\r\n<ul>\r\n<li>Sistema de Entretenimiento que se conecta a la TV</li>\r\n<li>Cuenta con 20 juegos ARCADE en una sola consola, para que juegues con tus familiares o amigos</li>\r\n</ul>\r\n<br>\r\nIncluye:\r\n<ul>\r\n<li>3 controles </li>\r\n<li>Cable AV</li>\r\n<li>Adaptador de corriente</li>\r\n</ul>\r\n', 200.00, '', '', '', '', '', '', 10, '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `recid` int(5) NOT NULL,
  `user` varchar(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ape` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `movil` varchar(20) NOT NULL,
  `passcode` varchar(20) NOT NULL,
  `indate` date NOT NULL,
  `intime` varchar(10) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `colonia` varchar(100) NOT NULL,
  `numext` varchar(20) NOT NULL,
  `numint` varchar(20) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `cp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`recid`, `user`, `nombre`, `ape`, `tel`, `movil`, `passcode`, `indate`, `intime`, `calle`, `colonia`, `numext`, `numint`, `ciudad`, `estado`, `pais`, `cp`) VALUES
(3, 's.casal@hotmail.com', 'SAUL', 'CASAL', '9981659584', '9981659584', 'ú\01®.l§c', '2016-11-21', '12:36:37', 'Alba ', 'SM 44 Mz. 10', '12', '', 'Cancun', 'Quintana Roo', 'MX', ''),
(4, 'caribesoft@gmail.com', 'Victor', 'Rodriguez', '9982423459', '9982423459', 'g<ŸÛ^5ˆ´', '2017-02-01', '12:59:15', 'BUGAMBILIAS', 'LAS FLORES2', '12', '', 'Cancun', 'Quintana Roo', 'MX', '77500'),
(5, 'graphic.design.crea@gmail.com', 'Elena', 'Delgado', '2224429843', '2224429843', '/A¡¢	!÷„x', '2017-02-02', '04:51:58', 'magnolias', 'rincon de arboledas', '12-2', '', 'puebla', 'Puebla', 'MX', ''),
(6, 'victor@aol.com', 'TEST', 'TEST', '1234567890', '1112222222', 'g<ŸÛ¿', '2017-02-02', '04:52:52', '', '', '', '', '', '', '', ''),
(7, 'carlos@aol.com', 'CARLOS', 'ZAPATA', '', '1234567890', 'g<ŸÛ*~¨', '2017-02-05', '12:29:05', 'calavera', 'espanto', '12', '', 'Zapata', 'Qro', 'Mexico', '3321'),
(8, 'victor@gmail.com', 'Victor', 'Rodriguez', '1234567890', '1234567890', 'g<Ÿõi’ÉXº', '2017-02-06', '11:59:37', 'Falta 25', 'Rivira', '34', '', 'Cancun', 'Quintana Roo', 'MX', ''),
(9, 'zapo@aol.com', 'zapo', 'perez', '1212121212', '2323232323', 'g<ŸÛ^5ˆ´', '2017-11-09', '08:44:45', 'calle', 'colonia', '12', '', 'Cancun', 'Quintana Roo', 'MX', ''),
(10, 'dog@gmail.com', 'Dog', 'Sanchez', '1212121212', '2323232323', 'g<¿Ú.Z­', '2017-11-09', '10:25:47', 'AAAAA', 'bbbbb', '12', '', 'cancun', 'Quintana Roo', 'MX', ''),
(11, 'j.diaz@dappertechnologies.com', 'Jorge', 'Diaz', '998189632', '4498456295', '«(æaÈP', '2017-11-11', '08:43:54', 'sm 524', 'santa fe', '1', '', 'cancun', 'Quintana Roo', 'MX', ''),
(12, '', '', '', '', '', '', '2017-12-26', '07:27:16', '', '', '', '', '', '', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`recid`);

--
-- Indices de la tabla `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`recid`),
  ADD KEY `recid` (`recid`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`recid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `recid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `recid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `recid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Base de datos: `dappcun_texturplast`
--
CREATE DATABASE IF NOT EXISTS `dappcun_texturplast` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dappcun_texturplast`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `descripcion` varchar(600) NOT NULL,
  `rendimiento` varchar(400) NOT NULL,
  `ficha` varchar(50) NOT NULL,
  `caracteristicas` varchar(400) NOT NULL,
  `imagen` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `codigo`, `nombre`, `categoria`, `descripcion`, `rendimiento`, `ficha`, `caracteristicas`, `imagen`) VALUES
(1, 'textur-premium', 'Textur Premium 2', 'pinturas', 'Para crear un ambiente clásico y con la mejor proteccion, elige Textur Premium', '12 a 14 metros cuadrados por litro. A una mano', 'fichas/ficha1.pdf', '100% acrilica<br>Exteriores/Interiroes<br>', 'productos/pinturas/textur-premium.jpg'),
(12, 'vinitur', 'Vinitur', 'pinturas', '', '', 'fichas/vinitur.pdf', '', 'productos/placeholder.jpg'),
(13, 'pintutex-plus', 'Pintutex Plus', 'pinturas', '', '', 'fichas/pintutex-plus.pdf', '', 'productos/placeholder.jpg'),
(14, 'vivendi', 'Vivendi', 'pinturas', '', '', '', '', ''),
(15, 'popular', 'Popular', 'pinturas', '', '', '', '', ''),
(16, 'vitrificante', 'Vitrificante', 'selladores-adhesivos', '', '', '', '', ''),
(17, 'sellador-acrilico', 'Sellador Acrílico', 'selladores-adhesivos', '', '', '', '', ''),
(18, 'vitrificante', 'Vitrificante', 'selladores-adhesivos', '', '', '', '', ''),
(19, 'vitrificante', 'Vitrificante', 'selladores-adhesivos', '', '', '', '', ''),
(20, 'sellador-5x1', 'Sellador 5x1', 'selladores-adhesivos', '', '', '', '', ''),
(21, 'sellador-entintable', 'Sellador Entintable', 'selladores-adhesivos', '', '', '', '', ''),
(22, 'texturbond-plus-concreto', 'Texturbond Plus / para concret', 'selladores-adhesivos', '', '', '', '', ''),
(23, 'texturbond-eco-concreto', 'Texturbond Eco / para concreto', 'selladores-adhesivos', '', '', '', '', ''),
(24, 'pegatirol', 'Pegatirol', 'selladores-adhesivos', '', '', '', '', ''),
(25, 'pegayeso', 'Pegayeso', 'selladores-adhesivos', '', '', '', '', ''),
(26, 'pasta-textur-d', 'Pasta Textur D', 'pastas-acrilicas', '', '', '', '', ''),
(27, 'pasta-textur-f', 'Pasta Textur F', 'pastas-acrilicas', '', '', '', '', ''),
(28, 'pasta-textur-r', 'Pasta Textur R', 'pastas-acrilicas', '', '', '', '', ''),
(29, 'estuvo-veneciano', 'Estuvo Veneciano', 'pastas-acrilicas', '', '', '', '', ''),
(30, 'pasta-grano-lanzado', 'Pasta para Grano Lanzado', 'pastas-acrilicas', '', '', '', '', ''),
(31, 'cascara-naranja', 'Cáscara de Naranja', 'pastas-acrilicas', '', '', '', '', ''),
(32, 'pasta-tablaroca', 'Pasta para tablaroca', 'pastas-acrilicas', '', '', '', '', ''),
(33, 'terracota-10a', 'Terracota 10 años', 'impermeabilizantes', '', '', '', '', ''),
(34, 'terracota-7a', 'Terracota 7 años', 'impermeabilizantes', '', '', '', '', ''),
(35, 'terracota-5a', 'Terracota 5 años', 'impermeabilizantes', '', '', '', '', ''),
(36, 'terracota-3a', 'Terracota 3 años', 'impermeabilizantes', '', '', '', '', ''),
(37, 'blanco-10a', 'Blanco 10 años', 'impermeabilizantes', '', '', '', '', ''),
(38, 'blanco-7a', 'Blanco 7 años', 'impermeabilizantes', '', '', '', '', ''),
(39, 'prefabricado-35-app', 'Prefabricado 3.5MM APP', 'impermeabilizantes', '', '', '', '', ''),
(40, 'prefabricado-35-sbs', 'Prefabricado 3.5MM SBS', 'impermeabilizantes', '', '', '', '', ''),
(41, 'asilantes-termicos', 'Aislantes térmicos', 'impermeabilizantes', '', '', '', '', ''),
(42, 'granito-planchado-1-4', 'Granito Planchado 1/4 de cero', 'granitos-planchados', '', '', '', '', ''),
(43, 'granito-planchado-1-2', 'Granito Planchado 1/2 de cero', 'granitos-planchados', '', '', '', '', ''),
(44, 'granito-planchado-cero-grueso', 'Granito Planchado cero grueso', 'granitos-planchados', '', '', '', '', ''),
(45, 'granito-planchado-pigmentado', 'Granito Planchado pigmentado', 'granitos-planchados', '', '', '', '', ''),
(46, 'normal-blanco', 'Normal Blanco', 'pegazulejos', '', '', '', '', ''),
(47, 'pegapiso-gris-normal', 'Pegapiso Gris Normal', 'pegazulejos', '', '', '', '', ''),
(48, 'pegapiso-gris-reforzado', 'Pegapiso Gris Reforzado', 'pegazulejos', '', '', '', '', ''),
(49, 'adhesivo-marmol-cantera-gris', 'Adhesivo Marmol y Cantera Gris', 'pegazulejos', '', '', '', '', ''),
(50, 'adhesivo-gres-procelanico-int-', 'Adhesivo Gres Porcelánico Int.', 'pegazulejos', '', '', '', '', ''),
(51, 'adhesivo-gres-procelanico-int-', 'Adhesivo Gres Porcelánico Int.', 'pegazulejos', '', '', '', '', ''),
(52, 'adhesivo-psp-fijaveneciano-gri', 'Adhesivo PSP y Fijaveneciano G', 'pegazulejos', '', '', '', '', ''),
(53, 'adhesivo-psp-fijaveneciano-bla', 'Adhesivo PSP y Fijaveneciano B', 'pegazulejos', '', '', '', '', ''),
(54, 'adhesivo-procelanato-exteriore', 'Adhesivo Porcelanato Exteriore', 'pegazulejos', '', '', '', '', ''),
(55, 'resanador-durock', 'Resanador Durock', 'productos-especiales', '', '', '', '', ''),
(56, 'texturblock-plus-claro', 'Texturblock Plus Claro', 'productos-especiales', '', '', '', '', ''),
(57, 'texturblock-plus-intenso', 'Texturblock Plus Intenso', 'productos-especiales', '', '', '', '', ''),
(58, 'cemento-autonivelante', 'Cemento autonivelante', 'productos-especiales', '', '', '', '', ''),
(59, 'sombreador-blind-invernaderos', 'Sombreador Blind para Invernad', 'productos-especiales', '', '', '', '', ''),
(60, 'solvente-sombreador-blind', 'Solvente para Sombreador Blind', 'productos-especiales', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nombre`, `apellido`, `estado`, `codigo`, `correo`) VALUES
('jonh', 'doe', 'qw', 'da12', '2@as.com'),
('jorge', 'diaz', 'quintana', '12131', 'prueba@jorge.com'),
('jorge', 'diaz', 'quintana', '12131', 'prueba@jorge.com'),
('jorge', 'diaz', 'BajaCaliforniaSur', '121312', '123@hotmai.com'),
('Jorge', 'Díaz', 'Aguascalientes', '7500', '123@hotmai.com'),
('Jorge', 'Díaz', 'Aguascalientes', '7500', '123@hotmai.com'),
('Jorge', 'Díaz', 'Aguascalientes', '7500', '123@hotmai.com'),
('Jorge', 'Díaz', 'Aguascalientes', '7500', '123@hotmai.com'),
('Jorge', 'Díaz Gogora', 'QuintanaRoo', '7500', '123@hotmai.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
