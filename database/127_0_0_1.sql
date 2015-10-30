-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2015 a las 09:35:48
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET time_zone = "+00:00";

--
-- Base de datos: `escolarespi_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `turno` int(4) NOT NULL,
  `hora_inicio` datetime NOT NULL,
  `hora_fin` datetime NOT NULL,
  `estado` int(12) NOT NULL,
  `carrera` int(12) NOT NULL,
  `ficha_inscripcion` int(10) NOT NULL,
  `indice` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `carreraFk` (`carrera`) COMMENT 'Carrera de inscripción'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `turno`, `hora_inicio`, `hora_fin`, `estado`, `carrera`, `ficha_inscripcion`, `indice`) VALUES
(1, 'dav ', 1, '2015-10-01 09:12:00', '2015-10-01 09:15:00', 2, 1, 123, '2015-10-30'),
(33, 'ssss', 2, '2015-10-30 09:10:00', '2015-10-30 09:18:00', 2, 1, 123, '2015-10-30'),
(38, 'DavidGuillen', 3, '2015-10-30 01:10:31', '0000-00-00 00:00:00', 1, 1, 123, '2015-10-30'),
(39, 'davdguillen', 4, '2015-10-30 01:10:19', '0000-00-00 00:00:00', 1, 1, 123, '2015-10-30'),
(40, 'dasa', 5, '2015-10-30 01:10:40', '0000-00-00 00:00:00', 1, 1, 132, '2015-10-30'),
(41, 'davidguillen vazquez', 6, '2015-10-30 01:10:58', '0000-00-00 00:00:00', 1, 1, 12345, '2015-10-30'),
(42, 'David Guillen Vazquez', 7, '2015-10-30 01:10:49', '0000-00-00 00:00:00', 1, 1, 12345, '2015-10-30'),
(43, 'David Guillen Vazquez', 8, '2015-10-30 01:10:45', '0000-00-00 00:00:00', 1, 1, 1234, '2015-10-30'),
(44, 'a s', 9, '2015-10-30 01:10:26', '0000-00-00 00:00:00', 1, 1, 2, '2015-10-30'),
(45, '12 12', 10, '2015-10-30 01:10:48', '0000-00-00 00:00:00', 1, 1, 12, '2015-10-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE IF NOT EXISTS `carreras` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`) VALUES
(1, 'Ing. Sistemas Computacionales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `carreraFk` FOREIGN KEY (`carrera`) REFERENCES `carreras` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
