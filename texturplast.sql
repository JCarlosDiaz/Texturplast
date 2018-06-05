-- phpMyAdmin SQL Dump
-- version 4.4.15.8
-- https://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-06-2018 a las 16:39:55
-- Versión del servidor: 5.6.31
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `texturplast`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `ID` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `descripcion` varchar(600) NOT NULL,
  `rendimiento` varchar(400) NOT NULL,
  `ficha` varchar(50) NOT NULL,
  `caracteristicas` varchar(400) NOT NULL,
  `imagen` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `codigo`, `nombre`, `categoria`, `descripcion`, `rendimiento`, `ficha`, `caracteristicas`, `imagen`) VALUES
(1, 'textur-premium', 'Textur Premium', 'pinturas', 'Para crear un ambiente clásico y con la mejor proteccion, elige Textur Premium', '12 a 14 metros cuadrados por litro. A una mano', 'fichas/ficha1.pdf', '100% acrilica<br>Exteriores/Interiroes<br>', 'productos/pinturas/textur-premium.jpg'),
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

CREATE TABLE IF NOT EXISTS `usuarios` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `correo` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `nombre`, `apellido`, `estado`, `cp`, `correo`) VALUES
(2, 'John', 'Doe', 'QR', '77500', 'john@example.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
