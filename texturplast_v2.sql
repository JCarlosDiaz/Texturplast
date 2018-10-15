-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-10-2018 a las 17:25:05
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
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cp` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID`, `nombre`, `apellido`, `correo`, `telefono`, `estado`, `cp`) VALUES
(1, '', '', '', 0, '', 0);

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
  `imagen` varchar(60) NOT NULL,
  `prepSuperficie` varchar(500) NOT NULL,
  `preproducto` varchar(500) NOT NULL,
  `sugerencias` varchar(500) NOT NULL,
  `limpsuperficie` varchar(500) NOT NULL,
  `apli_producto` varchar(500) NOT NULL,
  `apli_pintura` varchar(500) NOT NULL,
  `limpieza` varchar(500) NOT NULL,
  `sellado_superficie` varchar(500) NOT NULL,
  `reparacion_grietas` varchar(500) NOT NULL,
  `pre_apli_producto` varchar(500) NOT NULL,
  `secado` varchar(500) NOT NULL,
  `tamano` varchar(500) NOT NULL,
  `lavabilidad` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `codigo`, `nombre`, `categoria`, `descripcion`, `rendimiento`, `ficha`, `caracteristicas`, `imagen`, `prepSuperficie`, `preproducto`, `sugerencias`, `limpsuperficie`, `apli_producto`, `apli_pintura`, `limpieza`, `sellado_superficie`, `reparacion_grietas`, `pre_apli_producto`, `secado`, `tamano`, `lavabilidad`) VALUES
(1, 'textur-premium', 'Textur Premium', 'pinturas', 'Textur Premium es la línea más avanzada de pinturas que ofrecemos. Con una sola mano logra los mejores resultados en cualquiera de los colores en nuestro catálogo. Si estás buscando un producto de alto rendimiento y calidad que proteja tus superficies Textur Premium es la mejor opción. ', '12 a 14 metros cuadrados por litro. A una mano', 'fichas/pinturas/F-Textur-Premium.pdf', '100% acrílica.<br> Exteriores / Interiores.<br> Acabado mate o semimate.<br> Máximo rendimiento.<br> Máxima lavabilidad.', 'images/pinturas/texturpremium.jpg', 'Remover con espátula o cepillo de alambre la pintura que se encuentre en mal estado.', 'Mezclar bien la pintura y después diluir con agua limpia en cantidades que pueden ser desde un 10% hasta un 20% dependiendo de la viscosidad que se requiera para aplicarse ya sea con rodillo, brocha o pistola airless.', 'Se recomienda sellar la superficie con sellador 5x1 Texturplast para obtener el mejor rendimiento y anclaje de la pintura.', 'Limpiar la superficie de polvo o grasa para asegurarnos de tener una buena adherencia. Deberá estar libre completamente de humedad para no tener problemas de desprendimientos.', 'Aplique Textur Premium® a 2 manos con brocha, rodillo o equipo de aspersión airless, dejando secar 60 minutos entre mano y mano.', '', 'En caso necesario lave sus manos y equipos de aplicación en un recipiente con agua.', '', '', '', '60 mins por mano', '1 Lt<br> 4 Lts<br> 19 Lts', 'Mayor a 10,000 ciclos'),
(2, 'vinitur', 'Vinitur', 'pinturas', 'Con alta durabilidad y terminado mate esta pintura crea superficies suaves y opacas que son ideales para interiores y acabados clásicos. Esta apariencia también ayuda a disimular desperfectos que pueda tener la superficie.', '10 a 12 metros cuadrados por litro. A una mano.', 'fichas/pinturas/F-Vinitur.pdf', 'Vinil acrílica.<br> Exteriores / Interiores.<br> Acabado mate.<br> Alta durabilidad.', 'images/pinturas/vinitur.jpg', 'Remover con espátula o cepillo de alambre la pintura que se encuentre en mal estado.', 'Mezclar bien la pintura y después diluir con agua limpia en cantidades que pueden ser desde un 10% hasta un 20% dependiendo de la viscosidad que se requiera para aplicarse ya sea con rodillo, brocha o pistola airless.', 'Se recomienda sellar la superficie con sellador 5x1 Texturplast para obtener el mejor rendimiento y anclaje de la pintura.', 'Limpiar la superficie de polvo o grasa para asegurarnos de tener una buena adherencia. Deberá estar libre completamente de humedad para no tener problemas de desprendimientos.', 'Aplique Vinitur® a 2 manos con brocha, rodillo o equipo de aspersión airless, dejando secar 60 minutos entre mano y mano.', '', 'En caso necesario lave sus manos y equipos de aplicación en un recipiente con agua.', '', '', '', '60 mins por mano', '1 Lt<br> 4 Lts<br> 19 Lts', '7,000 ciclos'),
(3, 'pintutex-plus', 'Pintutex Plus', 'pinturas', 'Para un acabado clásico, fácil de lavar y de excelente calidad utiliza Pintutex Plus. Es una pintura todo propósito para interiores que se puede usar en una gran variedad de superficies. ', '7 a 9 metros cuadrados por litro. A una mano.', 'fichas/pinturas/F-Pintutex-Plus.pdf', 'Vinil acrílica.<br> Interiores.<br> Mate.', 'images/pinturas/pintutex plus.jpg', 'Remover con espátula o cepillo de alambre la pintura que se encuentre en mal estado.', 'Mezclar bien la pintura y después diluir con agua limpia en cantidades que pueden ser desde un 10% hasta un 20% dependiendo de la viscosidad que se requiera para aplicarse ya sea con rodillo, brocha o pistola airless.', 'Se recomienda sellar la superficie con sellador 5x1 Texturplast para obtener el mejor rendimiento y anclaje de la pintura.', 'Limpiar la superficie de polvo o grasa para asegurarnos de tener una buena adherencia. Deberá estar libre completamente de humedad para no tener problemas de desprendimientos.', 'Aplique Pintutex Plus® a 2 manos con brocha, rodillo o equipo de aspersión airless, dejando secar 60 minutos entre mano y mano.', '', 'En caso necesario lave sus manos y equipos de aplicación en un recipiente con agua.', '', '', '', '60 mins por mano', '1 Lt<br> 4 Lts<br> 19 Lts', '4,000 ciclos'),
(4, 'vivendi', 'Vivendi', 'pinturas', 'Vivendi es una pintura económica con una gran relación costo-beneficio que se utiliza para proteger y cubrir una amplia variedad de superficies. El acabado semimate le da versatilidad creando apariencias modernas y agradables.', '5 a 7 metros cuadrados por litro. A una mano.', 'fichas/pinturas/F-Vivendi.pdf', 'Vinil acrílica.<br> Interiores.<br> Mate y semimate.', 'images/pinturas/vivendi.jpg', 'Remover con espátula o cepillo de alambre la pintura que se encuentre en mal estado.', 'Mezclar bien la pintura y después diluir con agua limpia en cantidades que pueden ser desde un 10% hasta un 20% dependiendo de la viscosidad que se requiera para aplicarse ya sea con rodillo, brocha o pistola airless.', 'Se recomienda sellar la superficie con sellador 5x1 Texturplast para obtener el mejor rendimiento y anclaje de la pintura.', 'Limpiar la superficie de polvo o grasa para asegurarnos de tener una buena adherencia. Deberá estar libre completamente de humedad para no tener problemas de desprendimientos.', 'Aplique Vivendi® a 2 manos con brocha, rodillo o equipo de aspersión airless, dejando secar 60 minutos entre mano y mano.', '', 'En caso necesario lave sus manos y equipos de aplicación en un recipiente con agua.', '', '', '', '60 mins por mano', '1 Lt<br> 4 Lts<br> 19 Lts', '3,000 ciclos'),
(5, 'popular', 'Popular', 'pinturas', 'Popular es nuestra línea de pintura más accesible, ideal para proyectos grandes sin tener que sacrificar tu economía. ', '4 a 6 metros cuadrados por litro. A una mano.', 'fichas/pinturas/F-Popular.pdf', 'Ideal para proyectos económicos.<br> Vinílica.<br> Interiores.<br> Mate.', 'images/pinturas/popular.jpg', 'Remover con espátula o cepillo de alambre la pintura que se encuentre en mal estado.', 'Mezclar bien la pintura y después diluir con agua limpia en cantidades que pueden ser desde un 10% hasta un 20% dependiendo de la viscosidad que se requiera para aplicarse ya sea con rodillo, brocha o pistola airless.', 'Se recomienda sellar la superficie con sellador 5x1 Texturplast para obtener el mejor rendimiento y anclaje de la pintura.', 'Limpiar la superficie de polvo o grasa para asegurarnos de tener una buena adherencia. Deberá estar libre completamente de humedad para no tener problemas de desprendimientos.', 'Aplique Popular® a 2 manos con brocha, rodillo o equipo de aspersión airless, dejando secar 60 minutos entre mano y mano.', '', 'En caso necesario lave sus manos y equipos de aplicación en un recipiente con agua.', '', '', '', '60 mins por mano', '1 Lt<br> 4 Lts<br> 19 Lts', '800 - 1,300 ciclos'),
(8, 'pintura-deportiva', 'Pintura Deportiva', 'acrilicas', '', '', 'fichas/pinturas/.pdf', '', 'images/pinturas/pintura deportiva.jpg', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 'pintura-trafico', 'Pintura Tráfico', 'acrilicas', 'Diseñada para señalamientos de tránsito, pavimentos asfálticos y de concreto.  ', '4 a 5 metros cuadrados por litro con brocha // 2 a 3 metros cuadrados por litro con maquina pintarayas.', 'fichas/pinturas/F-Pintura-Trafico.pdf', 'Acrílica.<br> Máximo rendimiento.<br> Máxima durabilidad.<br> Ecológica.', 'images/pinturas/pintura trafico.jpg', '', '', '', '', '', '', '', '', '', '', '10 mins secado al tacto // 15 mins secado total', '', ''),
(16, 'vitrificante', 'Vitrificante', 'selladores-adhesivos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 'sellador-acrilico', 'Sellador Acrílico', 'selladores-adhesivos', 'Se utiliza para sellar la porosidad de superficies como cantera, teja, barro o concreto con el objetivo de mantener la apariencia natural de la superficie. Ideal para reavivar los colores y texturas de tus acabados.  ', '75 a 100 gramos por metro cuadrado.', 'fichas/sella/F-Sellador-Acrílico.pdf', 'Intensifica los colores.<br> Transparente.<br> Sella porosidad.<br> Mantiene apariencia natural.', 'images/sella/sellador acrílico wetlook.jpg', 'Remover con espátula o cepillo de alambre la grasa, el polvo y la basura que se encuentre en la superficie. Deberá estar totalmente seca y libre de humedad y salitre.', '', '', '', '', '', '', 'El sellador Wet Look de Texturplast puede aplicarse con brocha o pistola. No debe diluirse para que no pierda sus propiedades. Deberá darse una mano y esperar media hora hasta que se se seque perfectamente. Aplicar una siguiente mano . Si la superficie es muy porosa deberá aplicarse una siguiente mano hasta que al poner un poco de agua esta ya no se absorba.', '', '', '30 mins por capa', '1 Lt<br> 4 Lts<br> 19 Lts', ''),
(20, 'sellador-5x1', 'Sellador 5x1', 'selladores-adhesivos', 'El sellador 5x1 tiene la máxima durabilidad y resistencia. Se utiliza para sellar la porosidad y dar mejor anclaje y rendimiento a las pinturas en superficies nuevas de yeso y cemento.  ', '30 a 40 metros cuadrados por litro dependiendo de la superficie.', 'fichas/sella/F-Sellador-5x1.pdf', 'Resina estiren acrílica.<br> Alta resistencia.<br> Transparente.<br> Sella porosidad.', 'images/sella/sellador 5x1.jpg', 'Remover con espátula o cepillo de alambre la pintura que se encuentre en mal estado.', '', 'Se recomienda usar junto con Textur Premium para lograr el mejor rendimiento de la pintura.', 'Limpiar la superficie de polvo o grasa para asegurarnos de tener una buena adherencia. Deberá estar libre completamente de humedad y salitre para no tener problemas de desprendimientos.', '', '', 'En caso necesario lave sus manos y equipos de aplicación en un recipiente con agua.', 'Diluir el sellador 5x1 en 5 partes de agua por una de sellador. Si se desea una mejor resistencia a la alcalinidad es más recomendable diluir 3 partes de agua por una de sellador. Aplicar dicha dilución en el sustrato con brocha o rodillo o pistola airless de manera uniforme en toda la superficie para asegurarnos de que toda la porosidad del muro será sellada y así  lograr un mejor rendimiento de la pintura y garantizar su adherencia', '', '', '1 hr primera capa // 2 hrs re-aplicado', '1 Lt<br> 4 Lts<br> 19 Lts', ''),
(21, 'sellador-entintable', 'Sellador Entintable', 'selladores-adhesivos', 'Se utiliza para sellar la porosidad y fondear superficies sobre todo cuando se van a usar colores intensos. El sellador entintable está desarrollado para superficies de yeso y cemento.  ', '20 a 30 metros cuadrados por litro dependiendo de la superficie.', 'fichas/sella/F-Sellador-Entintable.pdf', 'Resina vinil acrílica.<br> Extiende la vida de tus acabados.<br> Sella porosidad<br> 40 colores disponibles.', 'images/sella/sellador entintable.jpg', 'Remover con espátula o cepillo de alambre la pintura que se encuentre en mal estado.', '', 'Se recomienda usar junto con Textur Premium para lograr el mejor rendimiento de la pintura.', 'Limpiar la superficie de polvo o grasa para asegurarnos de tener una buena adherencia. Deberá estar libre completamente de humedad y salitre para no tener problemas de desprendimientos.', '', '', 'En caso necesario lave sus manos y equipos de aplicación en un recipiente con agua.', 'Diluir el Sellador Entintable Texturplast en 2 partes de agua por una de sellador. Aplicar dicha dilución en el sustrato con brocha o rodillo o pistola airless de manera uniforme en toda la superficie para asegurarnos de que toda la porosidad del muro será sellada y así  lograr un mejor rendimiento de la pintura, garantizar su adherencia y obtener un fondeo que nos permita un gran desempeño en la pintura que utilicemos como terminación. ', '', '', '1 hr primera capa // 2 hrs re-aplicado', '1 Lt<br> 4 Lts<br> 19 Lts', ''),
(22, 'texturbond-plus-concreto', 'Texturbond Plus / para concret', 'selladores-adhesivos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 'texturbond-eco-concreto', 'Texturbond Eco / para concreto', 'selladores-adhesivos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 'pegatirol', 'Pegatirol', 'selladores-adhesivos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, 'pegayeso', 'Pegayeso', 'selladores-adhesivos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, 'pasta-textur-d', 'Pasta Textur D', 'pastas-acrilicas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, 'pasta-textur-f', 'Pasta Textur F', 'pastas-acrilicas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 'pasta-textur-r', 'Pasta Textur R', 'pastas-acrilicas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 'estuvo-veneciano', 'Estuvo Veneciano', 'pastas-acrilicas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, 'pasta-grano-lanzado', 'Pasta para Grano Lanzado', 'pastas-acrilicas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, 'cascara-naranja', 'Cáscara de Naranja', 'pastas-acrilicas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 'pasta-tablaroca', 'Pasta para tablaroca', 'pastas-acrilicas', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 'terracota-10a', 'Terracota 10 años', 'impermeabilizantes', 'El impermeabilizante Texturplast está fabricado con polímeros acrílicos, cargas minerales, pigmentos inorgánicos y aditivos. Se utiliza para impermeabilizar y proteger losas de concreto, techumbres de lámina, fibrocemento y acabados térmicos de poliuretano. ', '1 a 1.5 metros cuadrados a una mano dependiendo de la superficie.', 'fichas/imper/F-Impermeabilizantes.pdf', 'Excelente cobertura.<br> 100% tallable y lavable.<br> Lavado con agua y jabón.<br> Acabado mate.', 'images/imper/impermeabilizante terracota.jpg', 'Remover con espátula o cepillo de alambre la pintura que se encuentre en mal estado y asegurarse de nivelar los puntos donde pueden existir encharcamientos y limpiar las bajadas de agua.', '', '', 'Limpiar la superficie de polvo, óxidos o grasa para asegurarnos de tener una buena adherencia. Deberá estar libre completamente de humedad para no tener problemas de desprendimientos.', '', '', '', 'Aplicar sellador Texturplast sin diluir en el sustrato para lograr un mejor rendimiento del impermeabilizante y garantizar su adherencia.', 'Reparar las grietas visibles con cemento plástico Texturplast, el cual debe aplicarse con cuña o espátula y asegurarse que las grietas no mayores a 4 mm de espesor. Para grietas mayores habrá que reparar con malla de refuerzo y la aplicación del cemento plástico del cemento plástico sobre la malla para darle cuerpo monolítico.', 'Mezclar bien el impermeabilizante  y después aplicar una primera mano con rodillo de felpa corta. Esperar 1 hora y aplicar la segunda mano en sentido cruzado con respecto a la primera mano.', '60 a 70 mins primera capa, 2 hrs re-aplicado', '1 Lt<br> 4 Lts<br> 19 Lts', ''),
(34, 'terracota-7a', 'Terracota 7 años', 'impermeabilizantes', 'El impermeabilizante Texturplast está fabricado con polímeros acrílicos, cargas minerales, pigmentos inorgánicos y aditivos. Se utiliza para impermeabilizar y proteger losas de concreto, techumbres de lámina, fibrocemento y acabados térmicos de poliuretano. ', '1 a 1.5 metros cuadrados a una mano dependiendo de la superficie.', 'fichas/imper/F-Impermeabilizantes.pdf', 'Excelente cobertura.<br> 100% tallable y lavable.<br> Lavado con agua y jabón.<br> Acabado mate.', 'images/imper/impermeabilizante terracota.jpg', 'Remover con espátula o cepillo de alambre la pintura que se encuentre en mal estado y asegurarse de nivelar los puntos donde pueden existir encharcamientos y limpiar las bajadas de agua.', '', '', 'Limpiar la superficie de polvo, óxidos o grasa para asegurarnos de tener una buena adherencia. Deberá estar libre completamente de humedad para no tener problemas de desprendimientos.', '', '', '', 'Aplicar sellador Texturplast sin diluir en el sustrato para lograr un mejor rendimiento del impermeabilizante y garantizar su adherencia.', 'Reparar las grietas visibles con cemento plástico Texturplast, el cual debe aplicarse con cuña o espátula y asegurarse que las grietas no mayores a 4 mm de espesor. Para grietas mayores habrá que reparar con malla de refuerzo y la aplicación del cemento plástico del cemento plástico sobre la malla para darle cuerpo monolítico.', 'Mezclar bien el impermeabilizante  y después aplicar una primera mano con rodillo de felpa corta. Esperar 1 hora y aplicar la segunda mano en sentido cruzado con respecto a la primera mano.', '60 a 70 mins primera capa, 2 hrs re-aplicado', '1 Lt<br> 4 Lts<br> 19 Lts', ''),
(35, 'terracota-5a', 'Terracota 5 años', 'impermeabilizantes', 'El impermeabilizante Texturplast está fabricado con polímeros acrílicos, cargas minerales, pigmentos inorgánicos y aditivos. Se utiliza para impermeabilizar y proteger losas de concreto, techumbres de lámina, fibrocemento y acabados térmicos de poliuretano. ', '1 a 1.5 metros cuadrados a una mano dependiendo de la superficie.', 'fichas/imper/F-Impermeabilizantes.pdf', 'Excelente cobertura.<br> 100% tallable y lavable.<br> Lavado con agua y jabón.<br> Acabado mate.', 'images/imper/impermeabilizante terracota.jpg', 'Remover con espátula o cepillo de alambre la pintura que se encuentre en mal estado y asegurarse de nivelar los puntos donde pueden existir encharcamientos y limpiar las bajadas de agua.', '', '', 'Limpiar la superficie de polvo, óxidos o grasa para asegurarnos de tener una buena adherencia. Deberá estar libre completamente de humedad para no tener problemas de desprendimientos.', '', '', '', 'Aplicar sellador Texturplast sin diluir en el sustrato para lograr un mejor rendimiento del impermeabilizante y garantizar su adherencia.', 'Reparar las grietas visibles con cemento plástico Texturplast, el cual debe aplicarse con cuña o espátula y asegurarse que las grietas no mayores a 4 mm de espesor. Para grietas mayores habrá que reparar con malla de refuerzo y la aplicación del cemento plástico del cemento plástico sobre la malla para darle cuerpo monolítico.', 'Mezclar bien el impermeabilizante  y después aplicar una primera mano con rodillo de felpa corta. Esperar 1 hora y aplicar la segunda mano en sentido cruzado con respecto a la primera mano.', '60 a 70 mins primera capa, 2 hrs re-aplicado', '1 Lt<br> 4 Lts<br> 19 Lts', ''),
(36, 'terracota-3a', 'Terracota 3 años', 'impermeabilizantes', 'El impermeabilizante Texturplast está fabricado con polímeros acrílicos, cargas minerales, pigmentos inorgánicos y aditivos. Se utiliza para impermeabilizar y proteger losas de concreto, techumbres de lámina, fibrocemento y acabados térmicos de poliuretano. ', '1 a 1.5 metros cuadrados a una mano dependiendo de la superficie.', 'fichas/imper/F-Impermeabilizantes.pdf', 'Excelente cobertura.<br> 100% tallable y lavable.<br> Lavado con agua y jabón.<br> Acabado mate.', 'images/imper/impermeabilizante terracota.jpg', 'Remover con espátula o cepillo de alambre la pintura que se encuentre en mal estado y asegurarse de nivelar los puntos donde pueden existir encharcamientos y limpiar las bajadas de agua.', '', '', 'Limpiar la superficie de polvo, óxidos o grasa para asegurarnos de tener una buena adherencia. Deberá estar libre completamente de humedad para no tener problemas de desprendimientos.', '', '', '', 'Aplicar sellador Texturplast sin diluir en el sustrato para lograr un mejor rendimiento del impermeabilizante y garantizar su adherencia.', 'Reparar las grietas visibles con cemento plástico Texturplast, el cual debe aplicarse con cuña o espátula y asegurarse que las grietas no mayores a 4 mm de espesor. Para grietas mayores habrá que reparar con malla de refuerzo y la aplicación del cemento plástico del cemento plástico sobre la malla para darle cuerpo monolítico.', 'Mezclar bien el impermeabilizante  y después aplicar una primera mano con rodillo de felpa corta. Esperar 1 hora y aplicar la segunda mano en sentido cruzado con respecto a la primera mano.', '60 a 70 mins primera capa, 2 hrs re-aplicado', '1 Lt<br> 4 Lts<br> 19 Lts', ''),
(37, 'blanco-10a', 'Blanco 10 años', 'impermeabilizantes', 'El impermeabilizante Texturplast está fabricado con polímeros acrílicos, cargas minerales, pigmentos inorgánicos y aditivos. Se utiliza para impermeabilizar y proteger losas de concreto, techumbres de lámina, fibrocemento y acabados térmicos de poliuretano. ', '1 a 1.5 metros cuadrados a una mano dependiendo de la superficie.', 'fichas/imper/F-Impermeabilizantes.pdf', 'Excelente cobertura.<br> 100% tallable y lavable.<br> Lavado con agua y jabón.<br> Acabado mate.', 'images/imper/impermeabilizante blanco.jpg', 'Remover con espátula o cepillo de alambre la pintura que se encuentre en mal estado y asegurarse de nivelar los puntos donde pueden existir encharcamientos y limpiar las bajadas de agua.', '', '', 'Limpiar la superficie de polvo, óxidos o grasa para asegurarnos de tener una buena adherencia. Deberá estar libre completamente de humedad para no tener problemas de desprendimientos.', '', '', '', 'Aplicar sellador Texturplast sin diluir en el sustrato para lograr un mejor rendimiento del impermeabilizante y garantizar su adherencia.', 'Reparar las grietas visibles con cemento plástico Texturplast, el cual debe aplicarse con cuña o espátula y asegurarse que las grietas no mayores a 4 mm de espesor. Para grietas mayores habrá que reparar con malla de refuerzo y la aplicación del cemento plástico del cemento plástico sobre la malla para darle cuerpo monolítico.', 'Mezclar bien el impermeabilizante  y después aplicar una primera mano con rodillo de felpa corta. Esperar 1 hora y aplicar la segunda mano en sentido cruzado con respecto a la primera mano.', '60 a 70 mins primera capa, 2 hrs re-aplicado', '1 Lt<br> 4 Lts<br> 19 Lts', ''),
(38, 'blanco-7a', 'Blanco 7 años', 'impermeabilizantes', 'El impermeabilizante Texturplast está fabricado con polímeros acrílicos, cargas minerales, pigmentos inorgánicos y aditivos. Se utiliza para impermeabilizar y proteger losas de concreto, techumbres de lámina, fibrocemento y acabados térmicos de poliuretano. ', '1 a 1.5 metros cuadrados a una mano dependiendo de la superficie.', 'fichas/imper/F-Impermeabilizantes.pdf', 'Excelente cobertura.<br> 100% tallable y lavable.<br> Lavado con agua y jabón.<br> Acabado mate.', 'images/imper/impermeabilizante blanco.jpg', 'Remover con espátula o cepillo de alambre la pintura que se encuentre en mal estado y asegurarse de nivelar los puntos donde pueden existir encharcamientos y limpiar las bajadas de agua.', '', '', 'Limpiar la superficie de polvo, óxidos o grasa para asegurarnos de tener una buena adherencia. Deberá estar libre completamente de humedad para no tener problemas de desprendimientos.', '', '', '', 'Aplicar sellador Texturplast sin diluir en el sustrato para lograr un mejor rendimiento del impermeablizante y garantizar su adherencia.', 'Reparar las grietas visibles con cemento plástico Texturplast, el cual debe aplicarse con cuña o espátula y asegurarse que las grietas no mayores a 4 mm de espesor. Para grietas mayores habrá que reparar con malla de refuerzo y la aplicación del cemento plástico del cemento plástico sobre la malla para darle cuerpo monolítico.', 'Mezclar bien el impermeabilizante  y después aplicar una primera mano con rodillo de felpa corta. Esperar 1 hora y aplicar la segunda mano en sentido cruzado con respecto a la primera mano.', '60 a 70 mins primera capa, 2 hrs re-aplicado', '1 Lt<br> 4 Lts<br> 19 Lts', ''),
(39, 'prefabricado-35-app', 'Prefabricado 3.5MM APP', 'impermeabilizantes', '', '', 'fichas/imper/F-Impermeabilizantes.pdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 'prefabricado-35-sbs', 'Prefabricado 3.5MM SBS', 'impermeabilizantes', '', '', 'fichas/imper/F-Impermeabilizantes.pdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, 'asilantes-termicos', 'Aislantes térmicos', 'impermeabilizantes', '', '', 'fichas/imper/F-Impermeabilizantes.pdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, 'granito-planchado-1-4', 'Granito Planchado 1/4 de cero', 'granitos-planchados', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 'granito-planchado-1-2', 'Granito Planchado 1/2 de cero', 'granitos-planchados', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, 'granito-planchado-cero-grueso', 'Granito Planchado cero grueso', 'granitos-planchados', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, 'granito-planchado-pigmentado', 'Granito Planchado pigmentado', 'granitos-planchados', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, 'normal-blanco', 'Normal Blanco', 'pegazulejos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, 'pegapiso-gris-normal', 'Pegapiso Gris Normal', 'pegazulejos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(48, 'pegapiso-gris-reforzado', 'Pegapiso Gris Reforzado', 'pegazulejos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(49, 'adhesivo-marmol-cantera-gris', 'Adhesivo Marmol y Cantera Gris', 'pegazulejos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(50, 'adhesivo-gres-procelanico-int-', 'Adhesivo Gres Porcelánico Int.', 'pegazulejos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(51, 'adhesivo-gres-procelanico-int-', 'Adhesivo Gres Porcelánico Int.', 'pegazulejos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(52, 'adhesivo-psp-fijaveneciano-gri', 'Adhesivo PSP y Fijaveneciano G', 'pegazulejos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, 'adhesivo-psp-fijaveneciano-bla', 'Adhesivo PSP y Fijaveneciano B', 'pegazulejos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, 'adhesivo-procelanato-exteriore', 'Adhesivo Porcelanato Exteriores', 'pegazulejos', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(55, 'resanador-durock', 'Resanador Durock', 'productos-especiales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, 'texturblock-plus-claro', 'Texturblock Plus Claro', 'productos-especiales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, 'texturblock-plus-intenso', 'Texturblock Plus Intenso', 'productos-especiales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, 'cemento-autonivelante', 'Cemento autonivelante', 'productos-especiales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, 'sombreador-blind-invernaderos', 'Sombreador Blind para Invernaderos', 'productos-especiales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, 'solvente-sombreador-blind', 'Solvente para Sombreador Blind', 'productos-especiales', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

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
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID`);

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
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
