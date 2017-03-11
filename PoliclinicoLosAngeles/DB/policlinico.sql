-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2017 a las 10:42:43
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

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `administrador_login_validar` (IN `_codigo` INT(7))  BEGIN
	SELECT dniadmin FROM administrador WHERE codadmin=_codigo;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `cita_insert` (IN `_refEsp` VARCHAR(20), IN `_refcodpac` INT(10), IN `_hora_atenc` VARCHAR(25), IN `_refDoc` VARCHAR(25), IN `_refFecha` VARCHAR(20), IN `_refDia` VARCHAR(20))  BEGIN
    INSERT INTO `cita` (`refEsp`, `refcodPac`, `hora_atenc`, `refDoc`, `refFecha`, `refDia`) VALUES (_refEsp, _refcodPac, _hora_atenc, _refDoc, _refFecha, _refDia);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `cita_select` ()  BEGIN SELECT *FROM cita; END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `consulta_insert` (IN `_nom` VARCHAR(30), IN `_correo` VARCHAR(30), IN `_Asunto` VARCHAR(50), IN `_Mensaje` TEXT)  BEGIN
    INSERT INTO `mensajes` (`nom`, `correo`, `Asunto`, `Mensaje`) VALUES (_nom, _correo, _Asunto, _Mensaje);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `dia_select` ()  BEGIN SELECT *FROM dias; END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `doctor_login_validar` (IN `_codigo` INT(7))  BEGIN
	SELECT dnidoc FROM doctor WHERE codigodoc=_codigo;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `doctor_select` ()  BEGIN
    SELECT *FROM doctor;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_cita` (IN `_codcita` INT(10))  BEGIN
	DELETE from cita WHERE codcita=_codcita;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_todo_cita` ()  BEGIN
    DELETE from cita;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `especialidad_select` ()  BEGIN SELECT *FROM especialidad; END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `historialcitas_select` ()  BEGIN SELECT *FROM historialcitas; END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hora_select` ()  BEGIN
	SELECT *FROM hora;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_cita_historial` (IN `_CodCitapas` INT(10), IN `_refpac` INT(20), IN `_refesp` VARCHAR(25), IN `_refFecha` VARCHAR(20))  BEGIN
    INSERT INTO historialcitas (`CodCitapas`,`refpac`, `refesp`, `refFecha`) VALUES (_CodCitapas,_refpac, _refesp, _refFecha);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `mensajes_eliminar` (IN `_Codmens` INT(10))  BEGIN
	DELETE from mensajes WHERE Codmens=_Codmens;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `mensajes_select` ()  BEGIN
    SELECT *FROM mensajes;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_cita` (IN `_codcita` VARCHAR(10), IN `_refEsp` VARCHAR(20), IN `_refturno` VARCHAR(15), IN `_refDoc` VARCHAR(25))  BEGIN
	UPDATE cita set refEsp=_refEsp, refturno=_refturno, refDoc=_refDoc WHERE codcita=_codcita;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_citas` ()  BEGIN
	SELECT *FROM cita;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pacientegeneral_login_validar` (IN `_codigo` INT(10))  BEGIN
	SELECT dni FROM pacientegeneral WHERE codigo=_codigo;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pacientegeneral_select` ()  BEGIN SELECT *FROM pacientegeneral; END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pacientegeneral_update` (IN `_codigo` INT(10), IN `_nombre` VARCHAR(25), IN `_appaterno` VARCHAR(25), IN `_apmaterno` VARCHAR(25), IN `_sexo` VARCHAR(5), IN `_dni` INT(11), IN `_edad` INT(3), IN `_peso` DECIMAL(3,1), IN `_talla` DECIMAL(3,2), IN `_nacimiento` DATE)  BEGIN UPDATE pacientegeneral set nombre=_nombre, appaterno=_appaterno, apmaterno=_apmaterno, sexo=_sexo, dni=_dni, edad=_edad, peso=_peso, talla=_talla, nacimiento=_nacimiento WHERE codigo=_codigo; END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `codadmin` int(10) NOT NULL,
  `nombreadmin` varchar(25) NOT NULL,
  `dniadmin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`codadmin`, `nombreadmin`, `dniadmin`) VALUES
(2014006995, 'Axel Carhuatocto', 74200544),
(2014234925, 'July Torres', 48533198),
(2015230432, 'Kevin Sevinche', 76312190),
(2015233165, 'Renzo Quispe', 72510515);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `codcita` int(10) NOT NULL,
  `refEsp` varchar(20) NOT NULL,
  `refcodPac` int(10) NOT NULL,
  `hora_atenc` varchar(20) NOT NULL,
  `refDoc` varchar(25) NOT NULL,
  `refFecha` varchar(20) NOT NULL,
  `refDia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`codcita`, `refEsp`, `refcodPac`, `hora_atenc`, `refDoc`, `refFecha`, `refDia`) VALUES
(4, 'Cardiologia', 202830001, '01:00 PM', 'Dra Paredes', '16 - 03 - 2017', 'Jueves'),
(9, 'Cardiologia', 202830001, '01:00 PM', 'Dra Paredes', '13 - 03 - 2017', 'Lunes'),
(10, 'Pediatria', 202830001, '01:15 PM', 'Dra Elizabeth', '13 - 03 - 2017', 'Lunes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dias`
--

CREATE TABLE `dias` (
  `codDia` int(10) NOT NULL,
  `dia` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dias`
--

INSERT INTO `dias` (`codDia`, `dia`) VALUES
(4, 'Jueves'),
(1, 'Lunes'),
(2, 'Martes'),
(3, 'Miercoles'),
(6, 'Sabado'),
(5, 'Viernes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `codigodoc` int(7) NOT NULL,
  `nombredoc` varchar(75) NOT NULL,
  `dnidoc` int(10) NOT NULL,
  `turnodoc` varchar(15) NOT NULL,
  `especialidadoc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`codigodoc`, `nombredoc`, `dnidoc`, `turnodoc`, `especialidadoc`) VALUES
(2015001, 'Dr. Maya', 73892847, 'Manana', 'Cirugia'),
(2015002, 'Dr Trujillo', 73898356, 'Tarde', 'Cirugia'),
(2015003, 'Dr Loo', 23450643, 'Manana', 'Cardiologia'),
(2015004, 'Dra Paredes', 67253478, 'Tarde', 'Cardiologia'),
(2015005, 'Dr Curbelo', 98237493, 'Manana', 'Ecografia'),
(2015006, 'Dr Quiroga', 75468374, 'Tarde', 'Ecografia'),
(2015007, 'Dr Bendezu', 23465878, 'Manana', 'Dermatologia'),
(2015008, 'Dr Garibay', 99236478, 'Tarde', 'Dermatologia'),
(2015009, 'Dr Obregon', 67523480, 'Manana', 'Endocrinologia'),
(2015010, 'Dr Ruiz', 23645849, 'Tarde', 'Endocrinologia'),
(2015011, 'Dr Astocondor', 12378464, 'Manana', 'Geriatria'),
(2015012, 'Dr Oyola', 23486953, 'Tarde', 'Geriatria'),
(2015013, 'Dr Linares C', 23423890, 'Manana', 'Ginecologia'),
(2015014, 'Dra Silva', 88764358, 'Tarde', 'Ginecologia'),
(2015015, 'Dra Martinez', 73547890, 'Manana', 'Hematologia'),
(2015016, 'Dr Carrion', 78647859, 'Tarde', 'Hematologia'),
(2015017, 'Dra Ruiz', 76458930, 'Manana', 'Medicina General'),
(2015018, 'Dra Polo', 23747823, 'Tarde', 'Medicina General'),
(2015019, 'Dr Escobar', 82934005, 'Manana', 'Medicina Interna'),
(2015020, 'Dra Palacios', 68878878, 'Tarde', 'Medicina Interna'),
(2015021, 'Dr Martinez', 23342246, 'Manana', 'Medicina Integral'),
(2015022, 'Dra Linares', 98986007, 'Tarde', 'Medicina Integral'),
(2015023, 'Dr Thomas', 65749375, 'Manana', 'Neumologia'),
(2015024, 'Dra Cristina', 47835943, 'Tarde', 'Neumologia'),
(2015025, 'Dr Mires', 89247234, 'Manana', 'Nutricion'),
(2015026, 'Dra Gomez', 12342345, 'Tarde', 'Nutricion'),
(2015027, 'Dr Toledo', 97485760, 'Manana', 'Odontologia'),
(2015028, 'Dra Pino', 28374895, 'Tarde', 'Odontologia'),
(2015029, 'Dr Edgar', 23488345, 'Manana', 'Oftalmologia'),
(2015030, 'Dra Elena', 87597684, 'Tarde', 'Oftalmologia'),
(2015031, 'Dra Efrain', 12357894, 'Manana', 'Pediatria'),
(2015032, 'Dra Elizabeth', 87294458, 'Tarde', 'Pediatria'),
(2015033, 'Dr Eloy', 82375405, 'Manana', 'Podologia'),
(2015034, 'Dra Elvira', 8923740, 'Tarde', 'Podologia'),
(2015035, 'Dr Emilio', 48549503, 'Manana', 'Psicologia'),
(2015036, 'Dra Emma', 23498543, 'Tarde', 'Psicologia'),
(2015037, 'Dr Emanuel', 23470508, 'Manana', 'Psiquiatria'),
(2015038, 'Dra Erica', 84758492, 'Tarde', 'Psiquiatria'),
(2015039, 'Dr Ernesto', 43859439, 'Manana', 'Traumatologia'),
(2015040, 'Dra Sofia', 23498275, 'Tarde', 'Traumatologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `codesp` int(10) NOT NULL,
  `nomesp` varchar(20) NOT NULL,
  `consultorio` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`codesp`, `nomesp`, `consultorio`) VALUES
(1, 'Cardiologia', 'A-21'),
(2, 'Ecografia', 'A-33'),
(3, 'Dermatologia', 'B-12'),
(4, 'Endocrinologia', 'B-13'),
(5, 'Geriatria', 'C-23'),
(6, 'Ginecologia', 'C-24'),
(7, 'Hematologia', 'D-15'),
(8, 'Medicina General', 'D-22'),
(9, 'Medicina Interna', 'E-15'),
(10, 'Medicina Integral', 'E-21'),
(11, 'Neumologia', 'A-25'),
(12, 'Cirugia', 'B-24'),
(13, 'Nutricion', 'C-11'),
(14, 'Odontologia', 'D-14'),
(15, 'Oftalmologia', 'D-16'),
(16, 'Pediatria', 'D-15'),
(17, 'Podologia', 'A-27'),
(18, 'Psicologia', 'B-12'),
(19, 'Psiquiatria', 'C-11'),
(20, 'Traumatologia', 'C-56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historialcitas`
--

CREATE TABLE `historialcitas` (
  `CodCitapas` int(10) NOT NULL,
  `refpac` int(20) NOT NULL,
  `refesp` varchar(25) NOT NULL,
  `refFecha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `historialcitas`
--

INSERT INTO `historialcitas` (`CodCitapas`, `refpac`, `refesp`, `refFecha`) VALUES
(3, 202830001, 'Cardiologia', '13 - 03 - 2017');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hora`
--

CREATE TABLE `hora` (
  `codigoHora` int(10) NOT NULL,
  `hora` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hora`
--

INSERT INTO `hora` (`codigoHora`, `hora`) VALUES
(21, '01:00 PM'),
(22, '01:15 PM'),
(23, '01:30 PM'),
(24, '01:45 PM'),
(25, '02:00 PM'),
(26, '02:15 PM'),
(27, '02:30 PM'),
(28, '02:45 PM'),
(29, '03:00 PM'),
(30, '03:15 PM'),
(31, '03:30 PM'),
(32, '03:45 PM'),
(33, '04:00 PM'),
(34, '04:15 PM'),
(35, '04:30 PM'),
(36, '04:45 PM'),
(37, '05:00 PM'),
(38, '05:15 PM'),
(39, '05:30 PM'),
(40, '05:45 PM'),
(1, '07:00 AM'),
(2, '07:15 AM'),
(3, '07:30 AM'),
(4, '07:45 AM'),
(5, '08:00 AM '),
(6, '08:15 AM'),
(7, '08:30 AM'),
(8, '08:45 AM'),
(9, '09:00 AM'),
(10, '09:15 AM'),
(11, '09:30 AM'),
(12, '09:45 AM'),
(13, '10:00 AM'),
(14, '10:15 AM'),
(15, '10:30 AM'),
(16, '10:45 AM'),
(17, '11:00 AM'),
(18, '11:15 AM'),
(19, '11:30 AM'),
(20, '11:45 AM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `Codmens` int(10) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `Asunto` varchar(50) NOT NULL,
  `Mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientegeneral`
--

CREATE TABLE `pacientegeneral` (
  `codigo` int(20) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `appaterno` varchar(25) NOT NULL,
  `apmaterno` varchar(25) NOT NULL,
  `sexo` varchar(25) NOT NULL,
  `dni` int(11) NOT NULL,
  `edad` int(3) NOT NULL,
  `peso` decimal(3,1) NOT NULL,
  `talla` decimal(3,2) NOT NULL,
  `nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pacientegeneral`
--

INSERT INTO `pacientegeneral` (`codigo`, `nombre`, `appaterno`, `apmaterno`, `sexo`, `dni`, `edad`, `peso`, `talla`, `nacimiento`) VALUES
(202830001, 'Rodrigo', 'Garcia', 'Rojas', 'M', 34567895, 34, '80.0', '1.76', '1983-02-02'),
(311710001, 'Luis', 'Garcia', 'Cajavilca', 'M', 47865213, 45, '72.0', '1.70', '1971-11-03'),
(401940001, 'July ', 'Torres', 'Chavez', 'F', 48533198, 23, '55.5', '1.65', '1994-01-04'),
(409900001, 'Edgar', 'Murga', 'Orellana', 'M', 54677865, 26, '75.0', '1.72', '1990-09-04'),
(604600001, 'Sebastian ', 'Vargas', 'Canepa', 'M', 76789956, 56, '78.0', '1.82', '1960-04-06'),
(807820001, 'Jose Carlos', 'Montes', 'Rojas', 'M', 89776493, 34, '76.0', '1.78', '1982-07-08'),
(906880001, 'Lucia', 'Paima', 'Contreras', 'F', 56453766, 28, '65.0', '1.74', '1988-06-09'),
(1208660001, 'Sonia', 'Estrada', 'Privat', 'F', 65678753, 50, '74.0', '1.72', '1966-08-12'),
(1209940001, 'Yahayra', 'Arteaga', 'Quelopana', 'F', 45678946, 22, '58.0', '1.73', '1994-09-12'),
(1302570001, 'Alexandra', 'Mendiola', 'Flores', 'F', 34567353, 32, '60.0', '1.72', '1957-02-13'),
(1612810001, 'Macarena', 'Veles', 'Samaniego', 'F', 34453467, 35, '67.0', '1.72', '1981-12-16'),
(1709910001, 'Cristopher', 'Venegas', 'Garibay', 'M', 46753688, 25, '67.0', '1.68', '1991-09-17'),
(1806910001, 'Kasandra', 'Mendez', 'Lopez', 'F', 45637545, 25, '62.0', '1.72', '1991-06-18'),
(2103170001, 'Millet', 'Alvarado', 'Figueroa', 'F', 54677839, 20, '65.0', '1.70', '2017-03-01'),
(2110970001, 'Federico', 'Basalar', 'Monterico', 'M', 67645387, 19, '56.0', '1.65', '1997-10-21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`codadmin`),
  ADD UNIQUE KEY `dniadmin` (`dniadmin`);

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`codcita`),
  ADD KEY `refEsp` (`refEsp`),
  ADD KEY `refcodPac` (`refcodPac`),
  ADD KEY `refDoc` (`refDoc`),
  ADD KEY `refDia` (`refDia`),
  ADD KEY `hora_atenc` (`hora_atenc`);

--
-- Indices de la tabla `dias`
--
ALTER TABLE `dias`
  ADD PRIMARY KEY (`codDia`),
  ADD UNIQUE KEY `dia` (`dia`);

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`codigodoc`),
  ADD UNIQUE KEY `nombredoc` (`nombredoc`),
  ADD KEY `especialidadoc` (`especialidadoc`),
  ADD KEY `especialidadoc_2` (`especialidadoc`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`codesp`),
  ADD UNIQUE KEY `nomesp` (`nomesp`);

--
-- Indices de la tabla `historialcitas`
--
ALTER TABLE `historialcitas`
  ADD PRIMARY KEY (`CodCitapas`),
  ADD KEY `refpac` (`refpac`),
  ADD KEY `refesp` (`refesp`);

--
-- Indices de la tabla `hora`
--
ALTER TABLE `hora`
  ADD PRIMARY KEY (`codigoHora`),
  ADD UNIQUE KEY `hora` (`hora`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`Codmens`);

--
-- Indices de la tabla `pacientegeneral`
--
ALTER TABLE `pacientegeneral`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cita`
--
ALTER TABLE `cita`
  MODIFY `codcita` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `dias`
--
ALTER TABLE `dias`
  MODIFY `codDia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `codesp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `hora`
--
ALTER TABLE `hora`
  MODIFY `codigoHora` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `Codmens` int(10) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`refcodPac`) REFERENCES `pacientegeneral` (`codigo`),
  ADD CONSTRAINT `cita_ibfk_2` FOREIGN KEY (`refEsp`) REFERENCES `especialidad` (`nomesp`),
  ADD CONSTRAINT `cita_ibfk_3` FOREIGN KEY (`refDoc`) REFERENCES `doctor` (`nombredoc`),
  ADD CONSTRAINT `cita_ibfk_4` FOREIGN KEY (`hora_atenc`) REFERENCES `hora` (`hora`),
  ADD CONSTRAINT `cita_ibfk_5` FOREIGN KEY (`refDia`) REFERENCES `dias` (`dia`);

--
-- Filtros para la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`especialidadoc`) REFERENCES `especialidad` (`nomesp`);

--
-- Filtros para la tabla `historialcitas`
--
ALTER TABLE `historialcitas`
  ADD CONSTRAINT `historialcitas_ibfk_1` FOREIGN KEY (`refpac`) REFERENCES `pacientegeneral` (`codigo`),
  ADD CONSTRAINT `historialcitas_ibfk_2` FOREIGN KEY (`refesp`) REFERENCES `especialidad` (`nomesp`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
