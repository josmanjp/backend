-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2022 a las 19:40:13
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portfolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudio`
--

CREATE TABLE `estudio` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estudio`
--

INSERT INTO `estudio` (`id`, `titulo`, `descripcion`, `url_imagen`, `persona_id`) VALUES
(1, 'Mi Carrera', 'T.S.U Informatica. Instituto Universitario de Tecnología de los LLanos. Venezuela. Año 2002', 'assets/images/features-icon-black-01.png', 1),
(2, 'Windows', 'Especialista en Desarrollo de Sistemas Administrativos en ambiente Windows. Visual Basic 6.0 y .net. Autodidacta', 'assets/images/features-icon-black-02.png', 1),
(3, 'Aplicaciones Web', 'Aplicaciones Web. PHP - Mysql - HTMl- CSS. Autodidacta', 'assets/images/features-icon-black-01.png', 1),
(4, 'Aplicaciones Moviles', 'Integracion de aplicaciones web en ambiente Android', 'assets/images/features-icon-black-02.png', 1),
(5, 'xxxx', 'xxxx', 'assets/images/features-icon-black-01.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `porcentaje` int(11) DEFAULT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`id`, `titulo`, `porcentaje`, `persona_id`) VALUES
(1, 'Vb 6.0', 100, 1),
(2, 'Vb. net', 60, 1),
(3, 'PHP/Mysql', 80, 1),
(4, 'android Studio', 70, 1),
(5, 'xxxxx', 50, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `domicilio` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sobre_mi` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_foto` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contrasena` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `precios` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `soporte` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `apellido`, `domicilio`, `telefono`, `correo`, `sobre_mi`, `url_foto`, `contrasena`, `titulo`, `estado`, `precios`, `soporte`) VALUES
(1, 'JOSMAN JOSE', 'PEREZ', 'Argentina', '+5491135124243', 'josmanjp@gmail.com', 'Soy TSU en Informatica especializado en Programacion de sistemas administarticos para windows, actualmente ampliando conocimientos a la programación web y aplicaciones moviles, tengo 19 años de experiencia y multiples proyectos terminados en uso', 'assets/images/profile-pic.png', '12345678', 'Programador de Apps en Windows y Web Full Stack Jr.', 'Disponible', 'A Acordar', '24/7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id`, `titulo`, `descripcion`, `url_imagen`, `url`, `persona_id`) VALUES
(1, 'SIFX3', 'Sistema de Inventario y Facturacion', 'assets/images/sifx3.png', 'https://sifx3.com/', 1),
(2, 'CAMBIOS RAPIPAGOS', 'App andorid y pagina web para control de remesas', 'assets/images/rapipagos.jpg', 'https://cambiosrapipagos.com/', 1),
(3, 'CAMBIOS JG', 'App andorid y pagina web para control de remesas', 'assets/images/cambiosjg.png', 'https://cambiosjg.com/', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_imagen` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id`, `titulo`, `descripcion`, `url_imagen`, `persona_id`) VALUES
(1, 'Desarrollo de Sistemas Windows', 'Desarrollo de Sistemas administrativos para control de inventario, hoteles, restaurantes, etc', 'assets/images/service-icon-01.png', 1),
(2, 'Paginas Web', 'Diseño y desaroolo de paginas web para todo tipo de negocios', 'assets/images/service-icon-02.png', 1),
(3, 'Redes', 'Instalacion y configuiracion de redes en ambiente windows', 'assets/images/service-icon-03.png', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudio`
--
ALTER TABLE `estudio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7ncfaw5uni0x3r9psx03ikae1` (`persona_id`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK30e9aa2tv4x2kirmadmmggsme` (`persona_id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKh9q3ib0v2a6x56ch8dbcw40by` (`persona_id`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKig0xpy03tnarueifhj191c3o2` (`persona_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudio`
--
ALTER TABLE `estudio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudio`
--
ALTER TABLE `estudio`
  ADD CONSTRAINT `FK7ncfaw5uni0x3r9psx03ikae1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD CONSTRAINT `FK30e9aa2tv4x2kirmadmmggsme` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `FKh9q3ib0v2a6x56ch8dbcw40by` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `FKig0xpy03tnarueifhj191c3o2` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
