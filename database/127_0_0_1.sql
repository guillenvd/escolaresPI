-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-10-2015 a las 23:17:23
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
  PRIMARY KEY (`id`),
  KEY `carreraFk` (`carrera`) COMMENT 'Carrera de inscripción'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `turno`, `hora_inicio`, `hora_fin`, `estado`, `carrera`, `ficha_inscripcion`) VALUES
(1, 'dav ', 1, '2015-10-01 09:12:00', '2015-10-02 09:30:00', 2, 1, 0),
(2, 'dav ', 1, '2015-10-01 09:32:00', '2015-10-03 09:40:00', 2, 1, 1),
(3, 'dav ', 1, '2015-10-01 09:42:00', '2015-10-02 10:00:00', 1, 1, 1);

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
