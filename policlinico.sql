-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2017 a las 23:20:08
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `policlinico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `codcita` varchar(10) NOT NULL,
  `refEsp` varchar(20) NOT NULL,
  `refcodpac` int(10) NOT NULL,
  `refturno` varchar(15) NOT NULL,
  `refhorario` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `codigodoc` int(7) NOT NULL,
  `nombredoc` varchar(75) NOT NULL,
  `turnodoc` varchar(15) NOT NULL,
  `especialidadoc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`codigodoc`, `nombredoc`, `turnodoc`, `especialidadoc`) VALUES
(1, 'Dr. Maya', 'mañana', 'g'),
(2, 'Dr Trujillo', 'mCirugia', 'k'),
(3, 'Dr Loo', 'm2Cardio', 'a'),
(4, 'Dra Paredes', 'tCirugia', 'k'),
(5, 'Dr Curbelo', 'mPsiquiatria', 's'),
(6, 'Dr Quiroga', 'tTrauma', 't'),
(7, 'Dr Bendezu', 't2Trauma', 't'),
(8, 'Dr Garibay', 'tGineco', 'e'),
(9, 'Dr Obregon', 't2Gineco', 'e'),
(10, 'Dr Ruiz', 'tHemato', 'f'),
(11, 'Dr Astocondor', 'mMedGener', 'g'),
(12, 'Dr Oyola', 'mEndocrino', 'c'),
(13, 'Dr Linares C', 'mNeumologia', 'j'),
(14, 'Dra Silva', 'm2MedGener', 'g'),
(15, 'Dra Martinez', 'mMedInter', 'h');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `codesp` varchar(6) NOT NULL,
  `nomesp` varchar(20) NOT NULL,
  `consultorio` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`codesp`, `nomesp`, `consultorio`) VALUES
('a', 'Cardiología', ''),
('aa', 'Ecografia', ''),
('b', 'Dermatología', ''),
('c', 'Endocrinología', ''),
('d', 'Geriatría', ''),
('e', 'Ginecología', ''),
('f', 'Hematología', ''),
('g', 'Medicina General', ''),
('h', 'Medicina Interna', ''),
('i', 'Medicina Integral', ''),
('j', 'Neumología', ''),
('k', 'Cirugía', ''),
('l', 'Nutricionista', ''),
('m', 'Odontogía', ''),
('n', 'Oftalmología', ''),
('o', 'Pediatría', ''),
('p', 'Podología', ''),
('q', 'Psicología', ''),
('r', 'Psiquiatría', ''),
('s', 'Psiquiatría', ''),
('t', 'Traumatología', ''),
('u', 'Tomografía', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `Hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`Hora`) VALUES
('07:00:00'),
('07:15:00'),
('07:20:00'),
('07:30:00'),
('07:45:00'),
('08:00:00'),
('08:30:00'),
('09:00:00'),
('11:30:00'),
('13:00:00'),
('13:45:00'),
('14:00:00'),
('14:30:00'),
('15:00:00'),
('16:00:00'),
('17:30:00'),
('18:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientegeneral`
--

CREATE TABLE `pacientegeneral` (
  `codigo` int(10) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `appaterno` varchar(25) NOT NULL,
  `apmaterno` varchar(25) NOT NULL,
  `sexo` varchar(5) NOT NULL,
  `dni` int(11) NOT NULL,
  `edad` int(3) NOT NULL,
  `peso` decimal(3,1) NOT NULL,
  `talla` decimal(3,2) NOT NULL,
  `nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `Turnoat` varchar(15) NOT NULL,
  `refHorario` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`Turnoat`, `refHorario`) VALUES
('mañana', '07:00:00'),
('mEndocrino', '08:00:00'),
('mMedInter', '08:00:00'),
('mPsiquiatria', '08:00:00'),
('m2MedGener', '08:30:00'),
('mMedGener', '08:30:00'),
('mCardio', '09:00:00'),
('mCirugia', '09:00:00'),
('mNeumologia', '09:00:00'),
('tGineco', '13:00:00'),
('tCirugia', '13:45:00'),
('m2Cardio', '14:00:00'),
('tTrauma', '14:30:00'),
('t2Cirugia', '16:00:00'),
('tHemato', '17:30:00'),
('t2Gineco', '18:00:00'),
('t2Trauma', '18:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`codcita`),
  ADD KEY `refEsp` (`refEsp`),
  ADD KEY `refcodpac` (`refcodpac`),
  ADD KEY `refturno` (`refturno`),
  ADD KEY `refhorario` (`refhorario`),
  ADD KEY `refcodpac_2` (`refcodpac`);

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`codigodoc`),
  ADD UNIQUE KEY `nombredoc` (`nombredoc`),
  ADD KEY `especialidadoc` (`especialidadoc`),
  ADD KEY `turnodoc` (`turnodoc`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`codesp`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`Hora`),
  ADD UNIQUE KEY `Hora` (`Hora`);

--
-- Indices de la tabla `pacientegeneral`
--
ALTER TABLE `pacientegeneral`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`Turnoat`),
  ADD KEY `refHorario` (`refHorario`),
  ADD KEY `refHorario_2` (`refHorario`),
  ADD KEY `refHorario_3` (`refHorario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pacientegeneral`
--
ALTER TABLE `pacientegeneral`
  MODIFY `codigo` int(10) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`refEsp`) REFERENCES `especialidad` (`codesp`),
  ADD CONSTRAINT `cita_ibfk_2` FOREIGN KEY (`refturno`) REFERENCES `turno` (`Turnoat`),
  ADD CONSTRAINT `cita_ibfk_3` FOREIGN KEY (`refhorario`) REFERENCES `horario` (`Hora`),
  ADD CONSTRAINT `cita_ibfk_4` FOREIGN KEY (`refcodpac`) REFERENCES `pacientegeneral` (`codigo`);

--
-- Filtros para la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`turnodoc`) REFERENCES `turno` (`Turnoat`),
  ADD CONSTRAINT `doctor_ibfk_2` FOREIGN KEY (`especialidadoc`) REFERENCES `especialidad` (`codesp`);

--
-- Filtros para la tabla `turno`
--
ALTER TABLE `turno`
  ADD CONSTRAINT `turno_ibfk_1` FOREIGN KEY (`refHorario`) REFERENCES `horario` (`Hora`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
