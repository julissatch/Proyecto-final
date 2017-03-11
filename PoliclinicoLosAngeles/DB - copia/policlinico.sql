-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-03-2017 a las 04:29:53
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `policlinicola`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `administrador_login_validar` (IN `_codigo` INT(7))  BEGIN
	SELECT dniadmin FROM administrador WHERE codadmin=_codigo;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `cita_historial_insert` (IN `_refpac` INT(20), IN `_refesp` VARCHAR(25), IN `_refFecha` VARCHAR(20))  BEGIN
    INSERT INTO `historialcitas` (`refpac`, `refesp`, `refFecha`) VALUES (_refpac, _refesp, _refFecha);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `cita_insert` (IN `_refEsp` VARCHAR(20), IN `_refcodpac` INT(10), IN `_hora_atenc` VARCHAR(25), IN `_refDoc` VARCHAR(25), IN `_refFecha` VARCHAR(20), IN `_refDia` VARCHAR(20))  BEGIN
    INSERT INTO `cita` (`refEsp`, `refcodpac`, `hora_atenc`, `refDoc`, `refFecha`, `refDia`) VALUES (_refEsp, _refcodpac, _hora_atenc, _refDoc, _refFecha, _refDia);
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
  `dniadmin` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`codadmin`, `nombreadmin`, `dniadmin`) VALUES
(1, 'Juan Perez', 3428597),
(2, 'Carlos Quispe', 3126845);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `codcita` int(10) NOT NULL,
  `refEsp` varchar(20) NOT NULL,
  `refcodpac` int(10) NOT NULL,
  `hora_atenc` varchar(25) NOT NULL,
  `refDoc` varchar(25) NOT NULL,
  `refFecha` varchar(20) NOT NULL,
  `refDia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`codcita`, `refEsp`, `refcodpac`, `hora_atenc`, `refDoc`, `refFecha`, `refDia`) VALUES
(26, 'Ecografia', 2, '08:00 AM', 'Dr Curbelo', '5 - 3 - 2017', 'Martes'),
(50, 'Cardiologia', 1, '02:00 PM', 'Dra Paredes', '7 - 3 - 2017', 'Lunes'),
(51, 'Cardiologia', 1, '02:00 PM', 'Dra Paredes', '8 - 3 - 2017', 'Martes'),
(52, 'Cardiologia', 1, '02:00 PM', 'Dra Paredes', '8 - 3 - 2017', 'Miercoles'),
(53, 'Cardiologia', 1, '08:00 AM', 'Dr Loo', '8 - 3 - 2017', 'Jueves'),
(54, 'Cardiologia', 1, '08:00 AM', 'Dr Loo', '8 - 3 - 2017', 'Viernes'),
(55, 'Cardiologia', 1, '08:00 AM', 'Dr Loo', '8 - 3 - 2017', 'Sabado'),
(56, 'Cardiologia', 1, '02:00 PM', 'Dra Paredes', '8 - 3 - 2017', 'Jueves'),
(57, 'Cardiologia', 2, '08:00 AM', 'Dr Loo', '8 - 3 - 2017', 'Miercoles'),
(58, 'Cardiologia', 2, '09:00 AM', 'Dr Loo', '8 - 3 - 2017', 'Miercoles'),
(59, 'Cardiologia', 2, '03:00 PM', 'Dra Paredes', '8 - 3 - 2017', 'Miercoles'),
(60, 'Cardiologia', 2, '03:00 PM', 'Dra Paredes', '8 - 3 - 2017', 'Jueves'),
(61, 'Cardiologia', 1, '03:00 PM', 'Dra Paredes', '8 - 3 - 2017', 'Sabado'),
(62, 'Ecografia', 1, '09:00 AM', 'Dr Curbelo', '8 - 3 - 2017', 'Jueves');

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
(1, 'Lunes'),
(2, 'Martes'),
(3, 'Miercoles'),
(4, 'Jueves'),
(5, 'Viernes'),
(6, 'Sabado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `codigodoc` int(7) NOT NULL,
  `nombredoc` varchar(75) NOT NULL,
  `dnidoc` int(7) NOT NULL,
  `turnodoc` varchar(15) NOT NULL,
  `especialidadoc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`codigodoc`, `nombredoc`, `dnidoc`, `turnodoc`, `especialidadoc`) VALUES
(1, 'Dr. Maya', 5762984, 'MCirugia', 'Cirugía'),
(2, 'Dr Trujillo', 3684519, 'TCirugia', 'Cirujia'),
(3, 'Dr Loo', 5726485, 'MCardiologia', 'Cardiologia'),
(4, 'Dra Paredes', 5824657, 'TCardiologia', 'Cardiologia'),
(5, 'Dr Curbelo', 0, 'MEcografia', 'Ecografia'),
(6, 'Dr Quiroga', 0, 'TEcografia', 'Ecografia'),
(7, 'Dr Bendezu', 0, 'mDermatologia', 'b'),
(8, 'Dr Garibay', 0, 'TDermatologia', 'b'),
(9, 'Dr Obregon', 0, 'MEndocrinologia', 'c'),
(10, 'Dr Ruiz', 0, 'TEndicronologia', 'c'),
(11, 'Dr Astocondor', 0, 'MGeriatria', 'd'),
(12, 'Dr Oyola', 0, 'TGeriatria', 'd'),
(13, 'Dr Linares C', 0, 'MGinecologia', 'e'),
(14, 'Dra Silva', 0, 'TgGinecologia', 'e'),
(15, 'Dra Martinez', 0, 'MHematologia', 'f'),
(16, 'Dr Carrion', 0, 'THematologia', 'f'),
(17, 'Dra Ruiz', 0, 'MMedGeneral', 'g'),
(18, 'Dra Polo', 0, 'TMedGeneral', 'g'),
(19, 'Dr Escobar', 0, 'MMedInterna', 'h'),
(20, 'Dra Palacios', 0, 'TMedInterna', 'h'),
(21, 'Dr Martinez', 0, 'MMedIntegral', 'i'),
(22, 'Dra Linares', 0, 'TMedIntegral', 'i'),
(23, 'Dr Thomas', 0, 'MNeumologia', 'j'),
(24, 'Dra Cristina', 0, 'TNeumologia', 'l'),
(25, 'Dr Mires', 0, 'MNutricionista', 'l'),
(26, 'Dra Gomez', 0, 'TNutricionista', 'k'),
(27, 'Dr Toledo', 0, 'MOdontologia', 'm'),
(28, 'Dra Pino', 0, 'TOdontologia', 'm'),
(29, 'Dr Edgar', 0, 'MOftalmologia', 'n'),
(30, 'Dra Elena', 0, 'TOftalmologia', 'n'),
(31, 'Dra Efrain', 0, 'MPediatria', 'o'),
(32, 'Dra Elizabeth', 0, 'TPediatria', 'o'),
(33, 'Dr Eloy', 0, 'MPodologia', 'p'),
(34, 'Dra Elvira', 0, 'TPodologia', 'p'),
(35, 'Dr Emilio', 0, 'MPsicologia', 'q'),
(36, 'Dra Emma', 0, 'TPsicologia', 'q'),
(37, 'Dr Emanuel', 0, 'MPsiquiatria', 'r'),
(38, 'Dra Erica', 0, 'TPsiquiatria', 'r'),
(39, 'Dr Ernesto', 0, 'MTraumatologia', 's'),
(40, 'Dra Sofia', 0, 'TTraumatologia', 's');

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
('a', 'Cardiologia', 'A-21'),
('aa', 'Ecografia', 'A-33'),
('b', 'Dermatología', 'B-12'),
('c', 'Endocrinología', 'B-13'),
('d', 'Geriatría', 'C-23'),
('e', 'Ginecología', 'C-24'),
('f', 'Hematología', 'D-15'),
('g', 'Medicina General', 'D-22'),
('h', 'Medicina Interna', 'E-15'),
('i', 'Medicina Integral', 'E-21'),
('j', 'Neumología', 'A-25'),
('k', 'Cirugía', 'B-24'),
('l', 'Nutrición', 'C-11'),
('m', 'Odontogía', 'D-14'),
('n', 'Oftalmología', 'D-16'),
('o', 'Pediatría', 'D-15'),
('p', 'Podología', 'A-27'),
('q', 'Psicología', 'B-12'),
('r', 'Psiquiatría', 'C-11'),
('s', 'Traumatologia', 'C-56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fecha`
--

CREATE TABLE `fecha` (
  `Dia` varchar(20) NOT NULL,
  `Fec` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fecha`
--

INSERT INTO `fecha` (`Dia`, `Fec`) VALUES
('Jueves', ''),
('Lunes', ''),
('Martes', ''),
('Miercoles', ''),
('Sábado', ''),
('Viernes', '');

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
(11, 1, 'Cardiologia', '07 - 03 - 17'),
(12, 1, 'Cardiologia', '10 - 03 - 17'),
(13, 1, 'Cardiologia', '7 - 3 - 2017'),
(14, 1, 'Cardiologia', '8 - 3 - 2017'),
(15, 1, 'Cardiologia', '8 - 3 - 2017'),
(16, 1, 'Cardiologia', '8 - 3 - 2017'),
(17, 1, 'Cardiologia', '8 - 3 - 2017'),
(18, 1, 'Cardiologia', '8 - 3 - 2017'),
(19, 1, 'Cardiologia', '8 - 3 - 2017'),
(20, 2, 'Cardiologia', '8 - 3 - 2017'),
(21, 2, 'Cardiologia', '8 - 3 - 2017'),
(22, 2, 'Cardiologia', '8 - 3 - 2017'),
(23, 2, 'Cardiologia', '8 - 3 - 2017'),
(24, 1, 'Cardiologia', '8 - 3 - 2017'),
(25, 1, 'Ecografia', '8 - 3 - 2017');

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
(1, '02:00 PM'),
(8, '03:00 PM'),
(6, '08:00 AM'),
(7, '09:00 AM'),
(4, '2:15 PM'),
(5, '2:30 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `CodHorario` int(7) NOT NULL,
  `Turno` varchar(25) NOT NULL,
  `refDoc` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`CodHorario`, `Turno`, `refDoc`) VALUES
(1, '7:00am. - 12:00m.', 1),
(4, '1:30pm. - 4:00pm.', 2),
(5, '7:00am. - 12:00m.', 3),
(6, '1:30pm. - 4:00pm.', 4),
(7, '7:00am. - 12:00m.', 5),
(8, '1:30pm. - 4:00pm.', 6),
(9, '7:00am. - 12:00m.', 7),
(10, '1:30pm. - 4:00pm.', 8),
(11, '7:00am. - 12:00m.', 9),
(12, '1:30pm. - 4:00pm.', 10),
(13, '7:00am. - 12:00m.', 11),
(14, '1:30pm. - 4:00pm.', 12),
(15, '7:00am. - 12:00m.', 13),
(16, '1:30pm. - 4:00pm.', 14),
(17, '7:00am. - 12:00m.', 15),
(18, '1:30pm. - 4:00pm.', 16),
(19, '7:00am. - 12:00m.', 17),
(20, '1:30pm. - 4:00pm.', 18),
(21, '7:00am. - 12:00m.', 19),
(22, '1:30pm. - 4:00pm.', 20),
(23, '7:00am. - 12:00m.', 21),
(24, '1:30pm. - 4:00pm.', 22),
(25, '7:00am. - 12:00m.', 23),
(26, '1:30pm. - 4:00pm.', 24),
(27, '7:00am. - 12:00m.', 25),
(28, '1:30pm. - 4:00pm.', 26),
(29, '7:00am. - 12:00m.', 27),
(30, '1:30pm. - 4:00pm.', 28),
(31, '7:00am. - 12:00m.', 29),
(32, '1:30pm. - 4:00pm.', 30),
(33, '7:00am. - 12:00m.', 31),
(34, '1:30pm. - 4:00pm.', 32),
(35, '7:00am. - 12:00m.', 33),
(36, '1:30pm. - 4:00pm.', 34),
(37, '7:00am. - 12:00m.', 35),
(38, '1:30pm. - 4:00pm.', 36),
(39, '7:00am. - 12:00m.', 37),
(40, '1:30pm. - 4:00pm.', 38),
(41, '7:00am. - 12:00m.', 39),
(42, '1:30pm. - 4:00pm.', 40);

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

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`Codmens`, `nom`, `correo`, `Asunto`, `Mensaje`) VALUES
(2, 'kevin', 'kevin_px7@hotmail.com', 'Cita', 'El Real Madrid Club de FÃºtbol, mejor conocido como Real Madrid, es una entidad polideportiva con sede en Madrid, EspaÃ±a. Fue declarada oficialmente registrada por sus socios el 6 de marzo de 1902 con el Ãºnico objeto de la prÃ¡ctica del fÃºtbol â??aunque recientes investigaciones de antiguas publicaciones datan sus orÃ­genes a la Nueva Sociedad de Foot-Ball en 1900â??,8 teniendo en JuliÃ¡n Palacios y los hermanos barceloneses Juan y Carlos PadrÃ³s a sus principales valedores.9 Fue en noviembre de 1901 cuando se estableciÃ³ su denominaciÃ³n de (Sociedad) Madrid Foot-ball Club.');

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

--
-- Volcado de datos para la tabla `pacientegeneral`
--

INSERT INTO `pacientegeneral` (`codigo`, `nombre`, `appaterno`, `apmaterno`, `sexo`, `dni`, `edad`, `peso`, `talla`, `nacimiento`) VALUES
(1, 'July ', 'Torres', 'Chavez', 'F', 48533198, 23, '55.0', '1.65', '1994-01-04'),
(2, 'Millet', 'Alvarado', 'Figueroa', 'F', 54677839, 20, '65.0', '1.70', '2017-03-01'),
(3, 'Sebastian ', 'Vargas', 'Canepa', 'M', 76789956, 56, '78.0', '1.82', '1960-04-06'),
(4, 'Jose Carlos', 'Montes', 'Rojas', 'M', 89776493, 34, '76.0', '1.78', '1982-07-08'),
(5, 'Cristopher', 'Venegas', 'Garibay', 'M', 46753688, 25, '67.0', '1.68', '1991-09-17'),
(6, 'Luis', 'Garcia', 'Cajavilca', 'M', 47865213, 45, '72.0', '1.70', '1971-11-03'),
(7, 'Sandra', 'Paola', 'Alvarez', 'F', 36748594, 28, '59.0', '1.70', '1989-06-25'),
(8, 'Alexandra', 'Mendiola', 'Flores', 'F', 34567353, 32, '60.0', '1.72', '1957-02-13'),
(9, 'Edgar', 'Murga', 'Orellana', 'M', 54677865, 26, '75.0', '1.72', '1990-09-04'),
(10, 'Camila', 'Trujillo', 'Vidal', 'F', 54678354, 12, '49.0', '1.58', '2005-01-19'),
(11, 'Macarena', 'Veles', 'Samaniego', 'F', 34453467, 35, '67.0', '1.72', '1981-12-16'),
(12, 'Lorena', 'Carrillo', 'Rojas', 'F', 45673856, 56, '65.0', '1.69', '1951-05-23'),
(13, 'Francisco', 'Toledo', 'Ramirez', 'M', 65676489, 32, '78.0', '1.73', '1985-01-24'),
(14, 'Lucia', 'Paima', 'Contreras', 'F', 5645376, 28, '65.0', '1.74', '1988-06-09'),
(15, 'Sonia', 'Estrada', 'Privat', 'F', 65678753, 50, '74.0', '1.72', '1966-08-12'),
(16, 'Rodrigo', 'Garcia', 'Miró', 'M', 34567895, 34, '80.0', '1.76', '1983-02-02'),
(17, 'Nicola', 'Zavaleta', 'Chavez', 'M', 45698789, 23, '62.0', '1.68', '1992-01-30'),
(18, 'Federico', 'Basalar', 'Monterico', 'M', 67645387, 19, '56.0', '1.65', '1997-10-21'),
(19, 'Yahayra', 'Arteaga', 'Quelopana', 'F', 45678946, 22, '58.0', '1.73', '1994-09-12'),
(20, 'Kasandra', 'Mendez', 'Lopez', 'F', 45637545, 25, '62.0', '1.72', '1991-06-18');

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
  ADD KEY `refcodpac` (`refcodpac`),
  ADD KEY `refturno` (`hora_atenc`),
  ADD KEY `refhorario` (`refDoc`),
  ADD KEY `refcodpac_2` (`refcodpac`),
  ADD KEY `refFecha` (`refFecha`),
  ADD KEY `refDia` (`refDia`);

--
-- Indices de la tabla `dias`
--
ALTER TABLE `dias`
  ADD PRIMARY KEY (`codDia`);

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`codigodoc`),
  ADD UNIQUE KEY `nombredoc` (`nombredoc`),
  ADD KEY `especialidadoc` (`especialidadoc`),
  ADD KEY `turnodoc` (`turnodoc`),
  ADD KEY `turnodoc_2` (`turnodoc`),
  ADD KEY `turnodoc_3` (`turnodoc`),
  ADD KEY `turnodoc_4` (`turnodoc`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`codesp`),
  ADD UNIQUE KEY `nomesp` (`nomesp`),
  ADD KEY `nomesp_2` (`nomesp`);

--
-- Indices de la tabla `fecha`
--
ALTER TABLE `fecha`
  ADD PRIMARY KEY (`Dia`),
  ADD KEY `Fec` (`Fec`),
  ADD KEY `Fec_2` (`Fec`),
  ADD KEY `Fec_3` (`Fec`);

--
-- Indices de la tabla `historialcitas`
--
ALTER TABLE `historialcitas`
  ADD PRIMARY KEY (`CodCitapas`),
  ADD KEY `refpac` (`refpac`),
  ADD KEY `refesp` (`refesp`),
  ADD KEY `refFecha` (`refFecha`);

--
-- Indices de la tabla `hora`
--
ALTER TABLE `hora`
  ADD PRIMARY KEY (`codigoHora`),
  ADD UNIQUE KEY `hora` (`hora`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`CodHorario`),
  ADD KEY `refDoc` (`refDoc`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`Codmens`);

--
-- Indices de la tabla `pacientegeneral`
--
ALTER TABLE `pacientegeneral`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `codadmin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `cita`
--
ALTER TABLE `cita`
  MODIFY `codcita` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT de la tabla `dias`
--
ALTER TABLE `dias`
  MODIFY `codDia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `historialcitas`
--
ALTER TABLE `historialcitas`
  MODIFY `CodCitapas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `hora`
--
ALTER TABLE `hora`
  MODIFY `codigoHora` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `CodHorario` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `Codmens` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `pacientegeneral`
--
ALTER TABLE `pacientegeneral`
  MODIFY `codigo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `cita_ibfk_4` FOREIGN KEY (`refcodpac`) REFERENCES `pacientegeneral` (`codigo`),
  ADD CONSTRAINT `cita_ibfk_5` FOREIGN KEY (`refDoc`) REFERENCES `doctor` (`nombredoc`),
  ADD CONSTRAINT `cita_ibfk_6` FOREIGN KEY (`refDia`) REFERENCES `fecha` (`Dia`);

--
-- Filtros para la tabla `historialcitas`
--
ALTER TABLE `historialcitas`
  ADD CONSTRAINT `historialcitas_ibfk_1` FOREIGN KEY (`refpac`) REFERENCES `pacientegeneral` (`codigo`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`refDoc`) REFERENCES `doctor` (`codigodoc`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
