-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 03, 2015 at 09:42 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `escolarespi_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `turno` int(4) NOT NULL,
  `hora_inicio` datetime NOT NULL,
  `hora_fin` datetime NOT NULL,
  `tiempo_estimado` int(2) NOT NULL,
  `estado` int(12) NOT NULL,
  `carrera` int(12) NOT NULL,
  `ficha_inscripcion` int(10) NOT NULL,
  `indice` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `carreraFk` (`carrera`) COMMENT 'Carrera de inscripción'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `turno`, `hora_inicio`, `hora_fin`, `tiempo_estimado`, `estado`, `carrera`, `ficha_inscripcion`, `indice`) VALUES
(53, 'ivan gastelum', 1, '2015-11-03 13:11:16', '2015-11-03 13:27:22', 11, 2, 6, 1, '2015-11-03'),
(54, 'David Guillens', 2, '2015-11-03 13:11:38', '2015-11-03 13:52:11', 11, 2, 3, 2, '2015-11-03'),
(58, 'ivan romero', 3, '2015-11-03 13:11:02', '2015-11-03 13:25:48', 15, 2, 3, 5, '2015-11-03'),
(60, 'ivan gasdsets', 4, '2015-11-03 13:11:04', '2015-11-03 13:25:59', 29, 2, 6, 6, '2015-11-03'),
(61, 'juan juanca', 5, '2015-11-03 13:11:24', '2015-11-03 13:27:26', 25, 2, 2, 56, '2015-11-03');

-- --------------------------------------------------------

--
-- Table structure for table `carreras`
--

CREATE TABLE IF NOT EXISTS `carreras` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`) VALUES
(1, 'Ing. Electrónica'),
(2, 'Ing. Electrómecanica'),
(3, 'Ing. Gestión Empresarial'),
(4, 'Ing. Industrial'),
(5, 'Ing. Mecatrónica'),
(6, 'Ing. Sistemas Computacionales'),
(7, 'Lic. Administación');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `carreraFk` FOREIGN KEY (`carrera`) REFERENCES `carreras` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
