-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-09-2018 a las 23:12:49
-- Versión del servidor: 5.6.37
-- Versión de PHP: 5.6.31

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

INSERT INTO `productos` (`ID`, `codigo`, `nombre`, `categoria`, `descripcion`, `rendimiento`, `ficha`, `caracteristicas`, `imagen`, 'preparacion de producto') VALUES
(1, 'textur-premium', 'Textur Premium', 'pinturas', 'Para crear un ambiente clásico y con la mejor proteccion, elige Textur Premium', '12 a 14 metros cuadrados por litro. A una mano', 'fichas/pinturas/F-Textur-Premium.pdf', '100% acrilica<br>Exteriores/Interiroes<br>', 'images/pinturas/texturpremium.jpg'),
(2, 'pintura-deportiva', 'Pintura Deportiva', 'pinturas', '', '', 'fichas/pinturas/.pdf', '', 'images/pinturas/pintura deportiva.jpg'),
(3, 'pintura-trafico', 'Pintura Tráfico', 'pinturas', '', '', 'ficha/pinturas/F-Pintura-Trafico.pdf', '', 'ficha/pinturas/pintura trafico.jpg'),
(12, 'vinitur', 'Vinitur', 'pinturas', 'prueba', '', 'fichas/pinturas/F-Vinitur.pdf', 'Hola si funciona', 'images/pinturas/vinitur.jpg'),
(13, 'pintutex-plus', 'Pintutex Plus', 'pinturas', '', '', 'fichas/pinturas/F-Pintutex-Plus.pdf', '', 'images/pinturas/pintutex plus.jpg'),
(14, 'vivendi', 'Vivendi', 'pinturas', '', '', 'fichas/pinturas/F-Vivendi.pdf', '', 'images/pinturas/vivendi.jpg'),
(15, 'popular', 'Popular', 'pinturas', '', '', 'fichas/pintura/F-Popular.pdf', '', 'images/pinturas/popular.jpg'),
(16, 'vitrificante', 'Vitrificante', 'selladores-adhesivos', '', '', '', '', ''),
(17, 'sellador-acrilico', 'Sellador Acrílico', 'selladores-adhesivos', '', '', 'fichas/sella/F-Sellador-Acrílico.pdf', '', 'images/sella/sellador acrílico wetlook.jpg'),
(18, 'vitrificante', 'Vitrificante', 'selladores-adhesivos', '', '', '', '', ''),
(19, 'vitrificante', 'Vitrificante', 'selladores-adhesivos', '', '', '', '', ''),
(20, 'sellador-5x1', 'Sellador 5x1', 'selladores-adhesivos', '', '', 'fichas/sella/F-Sellador-5x1.pdf', '', 'images/sella/sellador 5x1.jpg'),
(21, 'sellador-entintable', 'Sellador Entintable', 'selladores-adhesivos', '', '', 'fichas/sella/F-Sellador-Entintable.pdf', '', 'images/sella/sellador entintable.jpg'),
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
(33, 'terracota-10a', 'Terracota 10 años', 'impermeabilizantes', '', '', 'fichas/imper/F-Impermeabilizantes.pdf', '', ''),
(34, 'terracota-7a', 'Terracota 7 años', 'impermeabilizantes', '', '', 'fichas/imper/F-Impermeabilizantes.pdf', '', ''),
(35, 'terracota-5a', 'Terracota 5 años', 'impermeabilizantes', '', '', 'fichas/imper/F-Impermeabilizantes.pdf', '', ''),
(36, 'terracota-3a', 'Terracota 3 años', 'impermeabilizantes', '', '', 'fichas/imper/F-Impermeabilizantes.pdf', '', ''),
(37, 'blanco-10a', 'Blanco 10 años', 'impermeabilizantes', '', '', 'fichas/imper/F-Impermeabilizantes.pdf', '', ''),
(38, 'blanco-7a', 'Blanco 7 años', 'impermeabilizantes', '', '', 'fichas/imper/F-Impermeabilizantes.pdf', '', ''),
(39, 'prefabricado-35-app', 'Prefabricado 3.5MM APP', 'impermeabilizantes', '', '', 'fichas/imper/F-Impermeabilizantes.pdf', '', ''),
(40, 'prefabricado-35-sbs', 'Prefabricado 3.5MM SBS', 'impermeabilizantes', '', '', 'fichas/imper/F-Impermeabilizantes.pdf', '', ''),
(41, 'asilantes-termicos', 'Aislantes térmicos', 'impermeabilizantes', '', '', 'fichas/imper/F-Impermeabilizantes.pdf', '', ''),
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
