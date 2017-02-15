-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2017 a las 17:53:20
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `literatura`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `idAutor` int(6) NOT NULL,
  `Autor` varchar(255) NOT NULL,
  `Año nacimiento` int(4) NOT NULL,
  `Año fallecimiento` int(4) NOT NULL,
  `Lugar nacimiento` varchar(255) NOT NULL,
  `Vida` text NOT NULL,
  `Estilo` text NOT NULL,
  `refEpoca` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`idAutor`, `Autor`, `Año nacimiento`, `Año fallecimiento`, `Lugar nacimiento`, `Vida`, `Estilo`, `refEpoca`) VALUES
(2, 'William Shakespeare', 1564, 1616, 'Inglaterra', 'Existen muy pocos hechos documentados en la vida de Shakespeare. Lo que sí se puede afirmar es que fue bautizado en Stratford-upon-Avon, Warwickshire, el 26 de abril de 1564 y falleció el 23 de abril de 1616, según el calendario juliano, poco antes de cumplir los 52 años.', 'Dramaturgo.', 'Renacimiento'),
(3, 'Gabo', 1927, 2014, 'Colombia', 'Hijo de Gabriel Eligio García payasito y Luisa Santiaga Márquez, nació en Aracataca, departamento del Magdalena (Colombia), «el domingo 6 de marzo de 1927 a las nueve de la mañana...», como refiere el propio escritor en sus memorias.', 'Realismo Mágico.', 'Generación 98'),
(4, 'Cesar Vallejo', 1982, 1938, 'La Libertad', 'César Abraham Vallejo Mendoza nació en Santiago de Chuco, pueblo en una zona alta del departamento de La Libertad, en Perú. Hijo de Francisco de Paula Vallejo Benítez y María de los Santos Mendoza Gurrionero, fue el menor de once hermanos; su apariencia mestiza se debió a que sus abuelas fueron indígenas y sus abuelos gallegos, uno de ellos fue el sacerdote mercedario José Rufo Vallejo, quien yace en las catacumbas de la iglesia del pueblo de Pallasca en Áncash.', 'Vanguardista.', 'Generación 27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `epoca`
--

CREATE TABLE `epoca` (
  `idEpoca` int(6) NOT NULL,
  `Epoca` varchar(255) NOT NULL,
  `Tiempo comprendido` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `epoca`
--

INSERT INTO `epoca` (`idEpoca`, `Epoca`, `Tiempo comprendido`) VALUES
(1, 'Edad Media', 'Siglos X a XIV'),
(2, 'Renacimiento', 'Siglos XV'),
(3, 'Barroco', 'Siglos XVI a XVII'),
(4, 'Neoclásico', 'Siglos XVIII'),
(5, 'Romanticismo', 'Siglos XIX, primera mitad'),
(6, 'Realismo', 'Siglos XIX, segunda mitad'),
(7, 'Generación 98', 'De 1890 a 1920'),
(8, 'Generación 27', 'De 1920 a 1940'),
(9, 'Actual', 'De 1940 hasta hoy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `idGenero` int(6) NOT NULL,
  `Genero` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`idGenero`, `Genero`) VALUES
(1, 'Novela'),
(2, 'Poesia'),
(3, 'Teatro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obras`
--

CREATE TABLE `obras` (
  `idObra` int(6) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Año 1º edicion` int(4) NOT NULL,
  `Argumento` text NOT NULL,
  `Critica` text NOT NULL,
  `refAutor` varchar(255) NOT NULL,
  `refEpoca` varchar(255) NOT NULL,
  `refGenero` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `obras`
--

INSERT INTO `obras` (`idObra`, `Titulo`, `Año 1º edicion`, `Argumento`, `Critica`, `refAutor`, `refEpoca`, `refGenero`) VALUES
(1, 'Libro del buen amor', 1330, 'El libro contiene una colección heterogénea de diversos materiales unidos entorno a una pretendida narración autobiográfica de asuntos amorosos del propio autor.', 'Es una composición extensa y variada de 1728 estrofas. Esta considerada de forma unánime como una de las cumbres literarias españolas de cualquier tiempo, y no solo de la edad media.', 'Arcipreste de Hita', 'Edad Media', 'Poesia'),
(3, 'Los heraldos negros', 1918, 'Los heraldos negros es el título de un libro de poemas escrito por el poeta peruano César Vallejo entre 1915 y 1918, y publicado por primera vez en julio de 1919 (aunque con fecha de 1918). Fue el primer libro publicado por Vallejo y en él evidencia su evolución desde un modernismo decadentista, hasta la creación de una poética sumamente personal. Los heraldos negros es también el título del poema liminar o que sirve de introducción al libro.', 'Es difícil de comprender.', 'Cesar Vallejo', 'Generación 27', 'Poesia'),
(4, 'Cien años de soledad', 1967, 'Los heraldos negros es el título de un libro de poemas escrito por el poeta peruano César Vallejo entre 1915 y 1918, y publicado por primera vez en julio de 1919 (aunque con fecha de 1918). Fue el primer libro publicado por Vallejo y en él evidencia su evolución desde un modernismo decadentista, hasta la creación de una poética sumamente personal. Los heraldos negros es también el título del poema liminar o que sirve de introducción al libro.', 'Dura muchos años.', 'Gabo', 'Generación 98', 'Novela'),
(5, 'Pantaleón y las visitadoras', 1973, 'La historia de la novela habla de un capitán del Ejército peruano, Pantaleón Pantoja, quien se ve involucrado, muy a su pesar, por sus superiores en una misión para satisfacer las necesidades sexuales de un grupo de soldados destinados en la Amazonía Peruana. Pantoja es escogido para llevar a cabo dicha misión por ser un militar modelo, sin vicios ni hijos.', 'Faltaban más visitadoras.', 'Vargas Llosa', 'Actual', 'Novela'),
(6, 'Elogio de la madrastra', 1988, 'Lucrecia y Rigoberto son un matrimonio burgués, sin grandes pretensiones terrenales, que practica el sexo de forma repetida a lo largo de la novela. No es amor platónico el que existe entre ambos, son relaciones frívolas, lúdicas y alegres.\r\n\r\nRigoberto realiza una serie de rituales físicos y mentales preparatorios antes de las relaciones, mientras que Lucrecia y Fonchito se comportan como si entre ellos existiera una clara tendencia hacia el incesto. Existe además una trama fantástica que se relaciona con cuadros famosos que representan escenas eróticas, entre ellos uno del pintor peruano Fernando de Szyszlo y uno del maestro flamenco Jacob Jordaens.', 'La madrasta era mentirosa.', 'Vargas Llosa', 'Actual', 'Novela');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`idAutor`),
  ADD UNIQUE KEY `Autor` (`Autor`),
  ADD KEY `refEpoca` (`refEpoca`);

--
-- Indices de la tabla `epoca`
--
ALTER TABLE `epoca`
  ADD PRIMARY KEY (`idEpoca`),
  ADD UNIQUE KEY `Epoca` (`Epoca`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idGenero`),
  ADD UNIQUE KEY `Genero` (`Genero`);

--
-- Indices de la tabla `obras`
--
ALTER TABLE `obras`
  ADD PRIMARY KEY (`idObra`),
  ADD UNIQUE KEY `Titulo` (`Titulo`),
  ADD KEY `refAutor` (`refAutor`,`refEpoca`,`refGenero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `idAutor` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `epoca`
--
ALTER TABLE `epoca`
  MODIFY `idEpoca` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `idGenero` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `obras`
--
ALTER TABLE `obras`
  MODIFY `idObra` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
