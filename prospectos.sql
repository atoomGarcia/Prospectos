-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2021 a las 02:34:11
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prospectos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `idEstado` char(1) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`idEstado`, `Estado`) VALUES
('E', 'ENVIADO'),
('A', 'AUTORIZADO'),
('R', 'RECHAZADO'),
('S', 'STANDBY'),
('N', 'NULO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospectos`
--

CREATE TABLE `prospectos` (
  `idProspecto` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apPaterno` varchar(50) NOT NULL,
  `apMaterno` varchar(50) NOT NULL,
  `calle` varchar(50) NOT NULL,
  `num` int(11) NOT NULL,
  `colonia` varchar(35) NOT NULL,
  `cp` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `rfc` varchar(13) NOT NULL,
  `estatus` char(1) NOT NULL,
  `obs` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `prospectos`
--

INSERT INTO `prospectos` (`idProspecto`, `nombre`, `apPaterno`, `apMaterno`, `calle`, `num`, `colonia`, `cp`, `telefono`, `rfc`, `estatus`, `obs`) VALUES
(1, 'MARIA ', '', '', 'AV. MARAVILLA', 5455, '0', 80143, 54645644, 'DSWE555214521', 'A', ''),
(2, 'JOSE', 'ANTONIO', 'GARCIA', 'M', 3545, 'TERR', 80143, 664755646, 'GAMA458721BB5', 'E', ''),
(3, 'Andres', 'Rosales', 'Z', 'asa', 244, 'Br', 80000, 6656456, 'HDJSHDJSHJD', 'E', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `prospectos`
--
ALTER TABLE `prospectos`
  ADD PRIMARY KEY (`idProspecto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `prospectos`
--
ALTER TABLE `prospectos`
  MODIFY `idProspecto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
