-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2022 a las 08:30:21
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bald`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acerca`
--

CREATE TABLE `acerca` (
  `IdNotificacion` int(11) NOT NULL,
  `idPartido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acontece`
--

CREATE TABLE `acontece` (
  `idPartido` int(11) NOT NULL,
  `NombreCampeonatoInternacional` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aparece`
--

CREATE TABLE `aparece` (
  `NombreUsuario` varchar(45) NOT NULL,
  `IdPublicidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aparece`
--

INSERT INTO `aparece` (`NombreUsuario`, `IdPublicidad`) VALUES
('mateofarias', 1),
('mateofarias', 4),
('silvana', 1),
('silvana', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atleta`
--

CREATE TABLE `atleta` (
  `idAtleta` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `atleta`
--

INSERT INTO `atleta` (`idAtleta`, `Nombre`, `Apellido`, `Foto`) VALUES
(1, 'Cristiano', 'Ronaldo', 'cr7.jpg'),
(2, 'Lebron', 'James', 'lbj.png'),
(3, 'Leonel', 'Messi', 'mesi.png'),
(4, 'Lewis', 'Hamilton', 'ham.jpg'),
(5, 'Rafael', 'Nadal', 'rafa.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atletaclub`
--

CREATE TABLE `atletaclub` (
  `idAtleta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campeonato`
--

CREATE TABLE `campeonato` (
  `Nombre` varchar(45) NOT NULL,
  `Organizador` varchar(45) NOT NULL,
  `FechaFin` date NOT NULL,
  `FechaInicio` date NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Ubicacion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `campeonato`
--

INSERT INTO `campeonato` (`Nombre`, `Organizador`, `FechaFin`, `FechaInicio`, `Descripcion`, `Ubicacion`) VALUES
('Champions', 'FIFA', '2023-01-09', '2022-01-09', 'elbichosiu', 'Europa'),
('Copa America', 'Conmebol', '2022-09-01', '2022-09-01', 'futbol suarez', 'Brasil'),
('F1', 'Europa', '2007-01-02', '2007-03-01', 'F1 hamilton', 'Italia'),
('Mundial', 'FIFA', '2012-02-13', '2012-07-01', 'futbol messi', 'Qatar'),
('NBA', 'USA', '2021-01-12', '2021-10-01', 'basketball lebron ', 'USA'),
('Olimpiadas', 'ONU', '2034-08-22', '2035-01-01', 'olimpiadas phelps', 'Mundial'),
('Roland Garros', 'Tenis fifa', '2001-02-02', '2002-01-01', 'tenis federer', 'Suiza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campeonatoclub`
--

CREATE TABLE `campeonatoclub` (
  `nombrecampeonato` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `campeonatoclub`
--

INSERT INTO `campeonatoclub` (`nombrecampeonato`) VALUES
('Champions'),
('F1'),
('NBA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campeonatointernacional`
--

CREATE TABLE `campeonatointernacional` (
  `Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `campeonatointernacional`
--

INSERT INTO `campeonatointernacional` (`Nombre`) VALUES
('Copa America'),
('Mundial'),
('Olimpiadas'),
('Roland Garros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compite`
--

CREATE TABLE `compite` (
  `CodigoPais` varchar(2) NOT NULL,
  `idPartido` int(11) NOT NULL,
  `NombreArbitro` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concurre`
--

CREATE TABLE `concurre` (
  `CodPais` varchar(2) NOT NULL,
  `NombreCampeonatoInternacional` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `concurre`
--

INSERT INTO `concurre` (`CodPais`, `NombreCampeonatoInternacional`) VALUES
('ar', 'Copa America'),
('br', 'Copa America'),
('es', 'Roland Garros'),
('pr', 'Mundial'),
('uy', 'Copa America');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocado`
--

CREATE TABLE `convocado` (
  `idSeleccionado` int(11) NOT NULL,
  `CodPais` varchar(2) NOT NULL,
  `idPartido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `NombreStaff` varchar(45) NOT NULL,
  `ApellidoStaff` varchar(45) NOT NULL,
  `CodEquipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`NombreStaff`, `ApellidoStaff`, `CodEquipo`) VALUES
('Alberto', 'Fernandez', 1),
('Juan', 'Rodriguez', 1),
('Juan', 'Gonzalez', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportes`
--

CREATE TABLE `deportes` (
  `NombreDeporte` varchar(45) NOT NULL,
  `FotoDeporte` varchar(255) NOT NULL,
  `DuracionDePartidos` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `deportes`
--

INSERT INTO `deportes` (`NombreDeporte`, `FotoDeporte`, `DuracionDePartidos`) VALUES
('American Football', 'American.jpg', '4 tiempos'),
('Basketball', 'Basketball.jpg', '1hr'),
('F1', 'F1.jpg', 'depende'),
('Futbol', 'Futbol.jpg', '90min'),
('Natacion', 'Natacion.jpg', '100mts'),
('Tenis', 'Tenis.jpg', '3Sets');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `CodigoEquipo` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Individual` tinyint(1) NOT NULL,
  `Logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`CodigoEquipo`, `Nombre`, `Individual`, `Logo`) VALUES
(1, 'Manchester United', 0, 'manu.jpg'),
(2, 'Lakers', 0, 'lakers.jpg'),
(3, 'Rafael Nadal', 1, 'nadal.jpg'),
(4, 'Equipo RedBull', 0, 'rb.jpg'),
(5, 'Tampa Bay Bucaneers', 0, 'buca.jpg'),
(6, 'Real Madrid', 0, 'rmd.jpg'),
(7, 'Liverpool', 0, 'lvp.jpg'),
(8, 'Arsenal', 0, 'Arsenal.jpg'),
(9, 'Barcelona', 0, 'Barca.jpg'),
(10, 'Aguada', 0, 'aguada.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `IDEvento` int(11) NOT NULL,
  `NombreEvento` varchar(45) NOT NULL,
  `idAtleta` int(11) NOT NULL,
  `Minuto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`IDEvento`, `NombreEvento`, `idAtleta`, `Minuto`) VALUES
(1, 'Gol', 1, 32),
(2, 'triple', 2, 45),
(3, 'falta-tarjeta amarilla', 3, 23),
(4, 'neumatico explotado', 4, 4),
(5, 'punto', 5, 13);

--
-- Disparadores `evento`
--
DELIMITER $$
CREATE TRIGGER `idatletaevento` BEFORE INSERT ON `evento` FOR EACH ROW begin 
if(select evento.idAtleta 
from evento
where evento.idAtleta = (select atleta.idAtleta
from atleta
where atleta.idAtleta = inserted.idAtleta) )
then insert into evento(IDEvento,NombreEvento,idAtleta,Minuto)VALUES(inserted.IDEvento,inserted.NombreEvento,inserted.idAtleta,inserted.Minuto);
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incluye`
--

CREATE TABLE `incluye` (
  `idResultado` int(11) NOT NULL,
  `CodPais` varchar(2) NOT NULL,
  `idPartido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juega`
--

CREATE TABLE `juega` (
  `idPartido` int(11) NOT NULL,
  `CodigoEquipo` int(11) NOT NULL,
  `NombreArbitro` varchar(45) DEFAULT NULL,
  `Encuentro` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lee`
--

CREATE TABLE `lee` (
  `NombreUsuario` varchar(45) NOT NULL,
  `NombreNoticia` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lee`
--

INSERT INTO `lee` (`NombreUsuario`, `NombreNoticia`) VALUES
('giumpiurri', 'CR7 Mete 3 goles'),
('giumpiurri', 'Lebron anota de 3'),
('nachosil', 'Nadal se declara homosexual'),
('Vicky7Siuu', 'CR7 Mete 3 goles'),
('Vicky7Siuu', 'Messi se droga');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `llegan`
--

CREATE TABLE `llegan` (
  `NombreUsuario` varchar(45) NOT NULL,
  `IdNotificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `llegan`
--

INSERT INTO `llegan` (`NombreUsuario`, `IdNotificacion`) VALUES
('giumpiurri', 4),
('nachosil', 2),
('nachosil', 3),
('Vicky7Siuu', 1),
('Vicky7Siuu', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `miembrostaff`
--

CREATE TABLE `miembrostaff` (
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Trabajo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `miembrostaff`
--

INSERT INTO `miembrostaff` (`Nombre`, `Apellido`, `Trabajo`) VALUES
('Alberto', 'Fernandez', 'Doctor'),
('Andrea', 'Karashkova', 'Porrista'),
('Juan', 'Gonzalez', 'Asistente'),
('Juan', 'Rodriguez', 'DT'),
('Robert', 'Ackerman', 'Mecanico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `NombreNoticia` varchar(45) NOT NULL,
  `Fecha` date NOT NULL,
  `Informacion` varchar(255) NOT NULL,
  `Imagen` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`NombreNoticia`, `Fecha`, `Informacion`, `Imagen`) VALUES
('Brasil arroya voley', '2015-10-06', 'brasil gana por 3 sets a todos', 'brasil.jpg'),
('CR7 Mete 3 goles', '2022-01-12', 'cr7 metio muchos goles vs el psg', 'imagen.jpg'),
('Lebron anota de 3', '2022-02-12', 'lebron metio un triple desde su casa', 'lebron.jpg'),
('Messi se droga', '2012-05-12', 'messi se inyecta heroina los martes', 'messi.jpg'),
('Nadal se declara homosexual', '2015-10-06', 'nadal confirma su matrimonio con su amigo bruno', 'nadal.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion`
--

CREATE TABLE `notificacion` (
  `idNotificacion` int(11) NOT NULL,
  `Titulo` varchar(45) NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `notificacion`
--

INSERT INTO `notificacion` (`idNotificacion`, `Titulo`, `Descripcion`) VALUES
(1, 'ghana vs uruguay', NULL),
(2, 'nadal vs federer', NULL),
(3, 'suarez lesionado', NULL),
(4, 'lakers campeones', NULL),
(5, 'muere messi', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocurren`
--

CREATE TABLE `ocurren` (
  `idPartido` int(11) NOT NULL,
  `NombreCampeonato` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ostenta`
--

CREATE TABLE `ostenta` (
  `idResultado` int(11) NOT NULL,
  `CodEquipo` int(11) NOT NULL,
  `idPartido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `CodigoPais` varchar(2) NOT NULL,
  `Logo` varchar(45) NOT NULL,
  `NombrePais` varchar(45) NOT NULL,
  `Individual` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`CodigoPais`, `Logo`, `NombrePais`, `Individual`) VALUES
('ar', 'arg.jpg', 'Argentina', 0),
('br', 'br.jpg', 'Brasil', 0),
('es', 'esp.logo', 'España', 1),
('pr', 'por.jpg', 'Portugal', 0),
('uy', 'uy.jpg', 'Uruguay', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participan`
--

CREATE TABLE `participan` (
  `NombreCampeonato` varchar(45) NOT NULL,
  `CodEquipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `participan`
--

INSERT INTO `participan` (`NombreCampeonato`, `CodEquipo`) VALUES
('Champions', 1),
('Champions', 6),
('Champions', 7),
('Champions', 8),
('Champions', 9),
('NBA', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidointernacional`
--

CREATE TABLE `partidointernacional` (
  `idPartido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `idPartido` int(11) NOT NULL,
  `HoraComienzo` time NOT NULL,
  `DondeSeJuega` varchar(45) NOT NULL,
  `Fecha` date NOT NULL,
  `HoraFin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `partidos`
--

INSERT INTO `partidos` (`idPartido`, `HoraComienzo`, `DondeSeJuega`, `Fecha`, `HoraFin`) VALUES
(0, '08:00:00', 'Pamukkale', '2011-04-12', '12:00:00'),
(1, '13:00:00', 'Anfield', '2012-04-03', '15:00:00'),
(2, '13:00:00', 'Old Traford', '2015-02-23', '15:00:00'),
(3, '14:00:00', 'Camp Nou', '2010-12-02', '16:00:00'),
(4, '15:00:00', 'Staples Center', '2021-12-01', '17:00:00'),
(5, '18:00:00', 'Centenario', '2023-06-02', '20:00:00'),
(6, '19:00:00', 'Bernabeu', '2021-10-11', '21:00:00'),
(7, '19:00:00', 'Bernabeu', '2021-11-11', '21:00:00'),
(8, '19:00:00', 'Bombonera', '2020-11-11', '21:00:00'),
(9, '21:00:00', 'Le Mans', '2001-01-01', '00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidosclub`
--

CREATE TABLE `partidosclub` (
  `idPartido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasan`
--

CREATE TABLE `pasan` (
  `IdEvento` int(11) NOT NULL,
  `CodigoEquipo` int(11) NOT NULL,
  `idPartido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posee`
--

CREATE TABLE `posee` (
  `NombreStaff` varchar(45) NOT NULL,
  `ApellidoStaff` varchar(45) NOT NULL,
  `CodPais` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `posee`
--

INSERT INTO `posee` (`NombreStaff`, `ApellidoStaff`, `CodPais`) VALUES
('Robert', 'Ackerman', 'ar'),
('Andrea', 'Karashkova', 'es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posiciona`
--

CREATE TABLE `posiciona` (
  `idAtleta` int(11) NOT NULL,
  `CodEquipo` int(11) NOT NULL,
  `idPartido` int(11) NOT NULL,
  `Titular` tinyint(2) DEFAULT NULL,
  `Posicion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Disparadores `posiciona`
--
DELIMITER $$
CREATE TRIGGER `posicionidatleta_tgr` BEFORE INSERT ON `posiciona` FOR EACH ROW begin 
if(select posiciona.idAtleta 
from posiciona
where posiciona.idAtleta = (select tiene.idAtleta
from tiene
where tiene.idAtleta = inserted.idAtleta) )
then insert into posiciona(idAtleta,titular,posicion)VALUES(inserted.idAtleta,inserted.titular,inserted.posicion);
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `practican`
--

CREATE TABLE `practican` (
  `NombreCampeonato` varchar(45) NOT NULL,
  `NombreDeporte` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicidad`
--

CREATE TABLE `publicidad` (
  `idPublicidad` int(11) NOT NULL,
  `NombrePublicidad` varchar(45) NOT NULL,
  `URL` varchar(255) NOT NULL,
  `ImagenPublicidad` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `publicidad`
--

INSERT INTO `publicidad` (`idPublicidad`, `NombrePublicidad`, `URL`, `ImagenPublicidad`) VALUES
(1, 'MC', 'mc.com', 'mc.jpg'),
(2, 'BK', 'bk.com', 'bk.jpg'),
(3, 'Mdeo Shoping', 'mdeo.com', 'mdeo.jpg'),
(4, 'Poweade', 'power.com', 'power.jpg'),
(5, 'Coscu', 'coscu.com', 'coscu.jpg'),
(6, 'Rexona', 'rexona.com', 'rexona.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado`
--

CREATE TABLE `resultado` (
  `idResultado` int(11) NOT NULL,
  `Puntaje` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seleccionado`
--

CREATE TABLE `seleccionado` (
  `idAtleta` int(11) NOT NULL,
  `Nacionalidad` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sigue`
--

CREATE TABLE `sigue` (
  `NombreUsuario` varchar(45) NOT NULL,
  `CodigoEquipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sigue`
--

INSERT INTO `sigue` (`NombreUsuario`, `CodigoEquipo`) VALUES
('giumpiurri', 1),
('giumpiurri', 6),
('nachosil', 5),
('Vicky7Siuu', 3),
('Vicky7Siuu', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobre`
--

CREATE TABLE `sobre` (
  `NombreDeportes` varchar(45) NOT NULL,
  `NombreNoticias` varchar(45) NOT NULL,
  `FechaNoticia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sobre`
--

INSERT INTO `sobre` (`NombreDeportes`, `NombreNoticias`, `FechaNoticia`) VALUES
('Basketball', 'Lebron anota de 3', '2022-02-12'),
('Futbol', 'CR7 Mete 3 goles', '2022-01-12'),
('Futbol', 'Messi se droga', '2012-05-12'),
('Tenis', 'Nadal se declara homosexual', '2015-10-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucede`
--

CREATE TABLE `sucede` (
  `IdEvento` int(11) NOT NULL,
  `CodPais` varchar(2) NOT NULL,
  `idPartido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiene`
--

CREATE TABLE `tiene` (
  `idAtleta` int(11) NOT NULL,
  `CodigoEquipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `NombreUsuario` varchar(45) NOT NULL,
  `Fnacimiento` date NOT NULL,
  `Contraseña` varchar(255) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Premium` tinyint(1) NOT NULL DEFAULT 0,
  `TipoDePago` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`NombreUsuario`, `Fnacimiento`, `Contraseña`, `Email`, `Premium`, `TipoDePago`) VALUES
('giumpiurri', '2003-10-09', 'bruno123', 'bruno@gmail.com', 1, 'Tarjeta'),
('mateofarias', '2003-11-18', 'vicky07', 'mateo@gmail.com', 0, 'Online'),
('nachosil', '1999-02-12', 'nachito', 'nacho@gmail.com', 1, 'Contado'),
('silvana', '1890-04-21', 'nachito', 'silvana@gmail.com', 0, 'Tarjeta'),
('Vicky7Siuu', '2005-08-26', 'mateo123', 'vicky@gmail.com', 1, 'Tarjeta');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acerca`
--
ALTER TABLE `acerca`
  ADD PRIMARY KEY (`IdNotificacion`,`idPartido`),
  ADD KEY `fk_acercajuega` (`idPartido`);

--
-- Indices de la tabla `acontece`
--
ALTER TABLE `acontece`
  ADD PRIMARY KEY (`idPartido`,`NombreCampeonatoInternacional`),
  ADD KEY `fk_acontececampeonatointer_idx` (`NombreCampeonatoInternacional`);

--
-- Indices de la tabla `aparece`
--
ALTER TABLE `aparece`
  ADD PRIMARY KEY (`NombreUsuario`,`IdPublicidad`),
  ADD KEY `fk_aparecepublicidad_idx` (`IdPublicidad`);

--
-- Indices de la tabla `atleta`
--
ALTER TABLE `atleta`
  ADD PRIMARY KEY (`idAtleta`);

--
-- Indices de la tabla `atletaclub`
--
ALTER TABLE `atletaclub`
  ADD PRIMARY KEY (`idAtleta`);

--
-- Indices de la tabla `campeonato`
--
ALTER TABLE `campeonato`
  ADD PRIMARY KEY (`Nombre`);

--
-- Indices de la tabla `campeonatoclub`
--
ALTER TABLE `campeonatoclub`
  ADD PRIMARY KEY (`nombrecampeonato`);

--
-- Indices de la tabla `campeonatointernacional`
--
ALTER TABLE `campeonatointernacional`
  ADD PRIMARY KEY (`Nombre`);

--
-- Indices de la tabla `compite`
--
ALTER TABLE `compite`
  ADD PRIMARY KEY (`CodigoPais`,`idPartido`),
  ADD KEY `fk_compitepartidointer_idx` (`idPartido`);

--
-- Indices de la tabla `concurre`
--
ALTER TABLE `concurre`
  ADD PRIMARY KEY (`CodPais`,`NombreCampeonatoInternacional`),
  ADD KEY `fk_concurrecampint_idx` (`NombreCampeonatoInternacional`);

--
-- Indices de la tabla `convocado`
--
ALTER TABLE `convocado`
  ADD PRIMARY KEY (`idSeleccionado`),
  ADD KEY `fk_convocadopais_idx` (`CodPais`),
  ADD KEY `fk_convocadopartido` (`idPartido`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`NombreStaff`,`ApellidoStaff`),
  ADD KEY `fk_CuentaCodEquipo_idx` (`CodEquipo`);

--
-- Indices de la tabla `deportes`
--
ALTER TABLE `deportes`
  ADD PRIMARY KEY (`NombreDeporte`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`CodigoEquipo`),
  ADD KEY `idx_CodigoEquipo` (`CodigoEquipo`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`IDEvento`),
  ADD KEY `idx_idatletaevento` (`idAtleta`);

--
-- Indices de la tabla `incluye`
--
ALTER TABLE `incluye`
  ADD PRIMARY KEY (`idResultado`),
  ADD KEY `CodPais` (`CodPais`,`idPartido`);

--
-- Indices de la tabla `juega`
--
ALTER TABLE `juega`
  ADD PRIMARY KEY (`idPartido`,`CodigoEquipo`),
  ADD KEY `fk_CodigoEquipo_idx` (`CodigoEquipo`),
  ADD KEY `juega_idx` (`CodigoEquipo`,`idPartido`),
  ADD KEY `idx_juegaacerca` (`idPartido`);

--
-- Indices de la tabla `lee`
--
ALTER TABLE `lee`
  ADD PRIMARY KEY (`NombreUsuario`,`NombreNoticia`),
  ADD KEY `fk_leenoticia_idx` (`NombreNoticia`);

--
-- Indices de la tabla `llegan`
--
ALTER TABLE `llegan`
  ADD PRIMARY KEY (`NombreUsuario`,`IdNotificacion`),
  ADD KEY `fk_lleganNotificaciones_idx` (`IdNotificacion`);

--
-- Indices de la tabla `miembrostaff`
--
ALTER TABLE `miembrostaff`
  ADD PRIMARY KEY (`Nombre`,`Apellido`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`NombreNoticia`,`Fecha`);

--
-- Indices de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`idNotificacion`);

--
-- Indices de la tabla `ocurren`
--
ALTER TABLE `ocurren`
  ADD PRIMARY KEY (`idPartido`,`NombreCampeonato`),
  ADD KEY `fk_ocurrencampeonatoclub_idx` (`NombreCampeonato`);

--
-- Indices de la tabla `ostenta`
--
ALTER TABLE `ostenta`
  ADD PRIMARY KEY (`idResultado`),
  ADD KEY `CodEquipo` (`CodEquipo`,`idPartido`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`CodigoPais`);

--
-- Indices de la tabla `participan`
--
ALTER TABLE `participan`
  ADD PRIMARY KEY (`NombreCampeonato`,`CodEquipo`),
  ADD KEY `fk_codEquipoparticipan_idx` (`CodEquipo`),
  ADD KEY `fk_ParticipanCampeonato_idx` (`NombreCampeonato`);

--
-- Indices de la tabla `partidointernacional`
--
ALTER TABLE `partidointernacional`
  ADD PRIMARY KEY (`idPartido`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`idPartido`);

--
-- Indices de la tabla `partidosclub`
--
ALTER TABLE `partidosclub`
  ADD PRIMARY KEY (`idPartido`);

--
-- Indices de la tabla `pasan`
--
ALTER TABLE `pasan`
  ADD PRIMARY KEY (`IdEvento`,`CodigoEquipo`,`idPartido`),
  ADD KEY `fk_pasanjuega_idx` (`CodigoEquipo`,`idPartido`);

--
-- Indices de la tabla `posee`
--
ALTER TABLE `posee`
  ADD PRIMARY KEY (`NombreStaff`,`ApellidoStaff`),
  ADD KEY `fk_poseepais_idx` (`CodPais`);

--
-- Indices de la tabla `posiciona`
--
ALTER TABLE `posiciona`
  ADD PRIMARY KEY (`idAtleta`),
  ADD KEY `fk_posipartido` (`CodEquipo`,`idPartido`);

--
-- Indices de la tabla `practican`
--
ALTER TABLE `practican`
  ADD PRIMARY KEY (`NombreCampeonato`,`NombreDeporte`),
  ADD KEY `fk_nombredeportepractican_idx` (`NombreDeporte`);

--
-- Indices de la tabla `publicidad`
--
ALTER TABLE `publicidad`
  ADD PRIMARY KEY (`idPublicidad`);

--
-- Indices de la tabla `resultado`
--
ALTER TABLE `resultado`
  ADD PRIMARY KEY (`idResultado`);

--
-- Indices de la tabla `seleccionado`
--
ALTER TABLE `seleccionado`
  ADD PRIMARY KEY (`idAtleta`),
  ADD KEY `idx_idatleta` (`idAtleta`);

--
-- Indices de la tabla `sigue`
--
ALTER TABLE `sigue`
  ADD PRIMARY KEY (`NombreUsuario`,`CodigoEquipo`),
  ADD KEY `fk_equiposigue_idx` (`CodigoEquipo`);

--
-- Indices de la tabla `sobre`
--
ALTER TABLE `sobre`
  ADD PRIMARY KEY (`NombreDeportes`,`NombreNoticias`,`FechaNoticia`),
  ADD KEY `fk_sobrenoticia_idx` (`NombreNoticias`,`FechaNoticia`);

--
-- Indices de la tabla `sucede`
--
ALTER TABLE `sucede`
  ADD PRIMARY KEY (`IdEvento`,`CodPais`,`idPartido`),
  ADD KEY `fk_compitesucede_idx` (`CodPais`,`idPartido`);

--
-- Indices de la tabla `tiene`
--
ALTER TABLE `tiene`
  ADD PRIMARY KEY (`idAtleta`),
  ADD KEY `fk_CodEquipoTiene_idx` (`CodigoEquipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`NombreUsuario`),
  ADD UNIQUE KEY `Email_UNIQUE` (`Email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atleta`
--
ALTER TABLE `atleta`
  MODIFY `idAtleta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `CodigoEquipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `IDEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  MODIFY `idNotificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
  MODIFY `idPartido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `publicidad`
--
ALTER TABLE `publicidad`
  MODIFY `idPublicidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `resultado`
--
ALTER TABLE `resultado`
  MODIFY `idResultado` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acerca`
--
ALTER TABLE `acerca`
  ADD CONSTRAINT `fk_acercajuega` FOREIGN KEY (`idPartido`) REFERENCES `juega` (`idPartido`),
  ADD CONSTRAINT `fk_acercanotificacion` FOREIGN KEY (`IdNotificacion`) REFERENCES `notificacion` (`idNotificacion`);

--
-- Filtros para la tabla `acontece`
--
ALTER TABLE `acontece`
  ADD CONSTRAINT `fk_acontececampeonatointer` FOREIGN KEY (`NombreCampeonatoInternacional`) REFERENCES `campeonatointernacional` (`Nombre`),
  ADD CONSTRAINT `fk_acontecepartidointer` FOREIGN KEY (`idPartido`) REFERENCES `partidointernacional` (`idPartido`);

--
-- Filtros para la tabla `aparece`
--
ALTER TABLE `aparece`
  ADD CONSTRAINT `fk_aparecepublicidad` FOREIGN KEY (`IdPublicidad`) REFERENCES `publicidad` (`idPublicidad`),
  ADD CONSTRAINT `fk_apareceusuario` FOREIGN KEY (`NombreUsuario`) REFERENCES `usuario` (`NombreUsuario`);

--
-- Filtros para la tabla `atletaclub`
--
ALTER TABLE `atletaclub`
  ADD CONSTRAINT `fk_idatletaclub` FOREIGN KEY (`idAtleta`) REFERENCES `atleta` (`idAtleta`);

--
-- Filtros para la tabla `campeonatoclub`
--
ALTER TABLE `campeonatoclub`
  ADD CONSTRAINT `fk_nombrecampeonatoclub` FOREIGN KEY (`nombrecampeonato`) REFERENCES `campeonato` (`Nombre`);

--
-- Filtros para la tabla `campeonatointernacional`
--
ALTER TABLE `campeonatointernacional`
  ADD CONSTRAINT `fk_NombreCampInter` FOREIGN KEY (`Nombre`) REFERENCES `campeonato` (`Nombre`);

--
-- Filtros para la tabla `compite`
--
ALTER TABLE `compite`
  ADD CONSTRAINT `fk_compitepais` FOREIGN KEY (`CodigoPais`) REFERENCES `pais` (`CodigoPais`),
  ADD CONSTRAINT `fk_compitepartidointer` FOREIGN KEY (`idPartido`) REFERENCES `partidointernacional` (`idPartido`);

--
-- Filtros para la tabla `concurre`
--
ALTER TABLE `concurre`
  ADD CONSTRAINT `fk_concurrecampint` FOREIGN KEY (`NombreCampeonatoInternacional`) REFERENCES `campeonatointernacional` (`Nombre`),
  ADD CONSTRAINT `fk_concurrepais` FOREIGN KEY (`CodPais`) REFERENCES `pais` (`CodigoPais`);

--
-- Filtros para la tabla `convocado`
--
ALTER TABLE `convocado`
  ADD CONSTRAINT `fk_convocadopais` FOREIGN KEY (`CodPais`) REFERENCES `compite` (`CodigoPais`),
  ADD CONSTRAINT `fk_convocadopartido` FOREIGN KEY (`idPartido`) REFERENCES `compite` (`idPartido`),
  ADD CONSTRAINT `fk_convocadoseleccionado` FOREIGN KEY (`idSeleccionado`) REFERENCES `seleccionado` (`idAtleta`);

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `fk_CuentaCodEquipo` FOREIGN KEY (`CodEquipo`) REFERENCES `equipo` (`CodigoEquipo`),
  ADD CONSTRAINT `fk_CuentaStaff` FOREIGN KEY (`NombreStaff`,`ApellidoStaff`) REFERENCES `miembrostaff` (`Nombre`, `Apellido`);

--
-- Filtros para la tabla `incluye`
--
ALTER TABLE `incluye`
  ADD CONSTRAINT `incluye_ibfk_1` FOREIGN KEY (`CodPais`,`idPartido`) REFERENCES `compite` (`CodigoPais`, `idPartido`),
  ADD CONSTRAINT `incluye_ibfk_2` FOREIGN KEY (`idResultado`) REFERENCES `resultado` (`idResultado`);

--
-- Filtros para la tabla `juega`
--
ALTER TABLE `juega`
  ADD CONSTRAINT `fk_CodigoEquipo` FOREIGN KEY (`CodigoEquipo`) REFERENCES `equipo` (`CodigoEquipo`),
  ADD CONSTRAINT `fk_idPartidojuega` FOREIGN KEY (`idPartido`) REFERENCES `partidos` (`idPartido`);

--
-- Filtros para la tabla `lee`
--
ALTER TABLE `lee`
  ADD CONSTRAINT `fk_leenoticia` FOREIGN KEY (`NombreNoticia`) REFERENCES `noticias` (`NombreNoticia`),
  ADD CONSTRAINT `fk_leeusuario` FOREIGN KEY (`NombreUsuario`) REFERENCES `usuario` (`NombreUsuario`);

--
-- Filtros para la tabla `llegan`
--
ALTER TABLE `llegan`
  ADD CONSTRAINT `fk_lleganNotificaciones` FOREIGN KEY (`IdNotificacion`) REFERENCES `notificacion` (`idNotificacion`),
  ADD CONSTRAINT `fk_lleganUsuario` FOREIGN KEY (`NombreUsuario`) REFERENCES `usuario` (`NombreUsuario`);

--
-- Filtros para la tabla `ocurren`
--
ALTER TABLE `ocurren`
  ADD CONSTRAINT `fk_ocurrencampeonatoclub` FOREIGN KEY (`NombreCampeonato`) REFERENCES `campeonatoclub` (`nombrecampeonato`),
  ADD CONSTRAINT `fk_ocurrenpartidoclub` FOREIGN KEY (`idPartido`) REFERENCES `partidosclub` (`idPartido`);

--
-- Filtros para la tabla `ostenta`
--
ALTER TABLE `ostenta`
  ADD CONSTRAINT `ostenta_ibfk_1` FOREIGN KEY (`idResultado`) REFERENCES `resultado` (`idResultado`),
  ADD CONSTRAINT `ostenta_ibfk_2` FOREIGN KEY (`CodEquipo`,`idPartido`) REFERENCES `juega` (`CodigoEquipo`, `idPartido`);

--
-- Filtros para la tabla `participan`
--
ALTER TABLE `participan`
  ADD CONSTRAINT `fk_ParticipanCampeonato` FOREIGN KEY (`NombreCampeonato`) REFERENCES `campeonatoclub` (`nombrecampeonato`),
  ADD CONSTRAINT `fk_codEquipoparticipan` FOREIGN KEY (`CodEquipo`) REFERENCES `equipo` (`CodigoEquipo`);

--
-- Filtros para la tabla `partidointernacional`
--
ALTER TABLE `partidointernacional`
  ADD CONSTRAINT `fk_idPartidoInter` FOREIGN KEY (`idPartido`) REFERENCES `partidos` (`idPartido`);

--
-- Filtros para la tabla `partidosclub`
--
ALTER TABLE `partidosclub`
  ADD CONSTRAINT `fk_idPartido` FOREIGN KEY (`idPartido`) REFERENCES `partidos` (`idPartido`);

--
-- Filtros para la tabla `pasan`
--
ALTER TABLE `pasan`
  ADD CONSTRAINT `fk_pasanevento` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IDEvento`),
  ADD CONSTRAINT `fk_pasanjuega` FOREIGN KEY (`CodigoEquipo`,`idPartido`) REFERENCES `juega` (`CodigoEquipo`, `idPartido`);

--
-- Filtros para la tabla `posee`
--
ALTER TABLE `posee`
  ADD CONSTRAINT `fk_poseepais` FOREIGN KEY (`CodPais`) REFERENCES `pais` (`CodigoPais`),
  ADD CONSTRAINT `fk_poseestaff` FOREIGN KEY (`NombreStaff`,`ApellidoStaff`) REFERENCES `miembrostaff` (`Nombre`, `Apellido`);

--
-- Filtros para la tabla `posiciona`
--
ALTER TABLE `posiciona`
  ADD CONSTRAINT `fk_posiatleta` FOREIGN KEY (`idAtleta`) REFERENCES `atletaclub` (`idAtleta`),
  ADD CONSTRAINT `fk_posipartido` FOREIGN KEY (`CodEquipo`,`idPartido`) REFERENCES `juega` (`CodigoEquipo`, `idPartido`);

--
-- Filtros para la tabla `practican`
--
ALTER TABLE `practican`
  ADD CONSTRAINT `fk_nombrecamppractican` FOREIGN KEY (`NombreCampeonato`) REFERENCES `campeonato` (`Nombre`),
  ADD CONSTRAINT `fk_nombredeportepractican` FOREIGN KEY (`NombreDeporte`) REFERENCES `deportes` (`NombreDeporte`);

--
-- Filtros para la tabla `seleccionado`
--
ALTER TABLE `seleccionado`
  ADD CONSTRAINT `fk_Atletaidselec` FOREIGN KEY (`idAtleta`) REFERENCES `atleta` (`idAtleta`);

--
-- Filtros para la tabla `sigue`
--
ALTER TABLE `sigue`
  ADD CONSTRAINT `fk_UsuarioSigue` FOREIGN KEY (`NombreUsuario`) REFERENCES `usuario` (`NombreUsuario`),
  ADD CONSTRAINT `fk_equiposigue` FOREIGN KEY (`CodigoEquipo`) REFERENCES `equipo` (`CodigoEquipo`);

--
-- Filtros para la tabla `sobre`
--
ALTER TABLE `sobre`
  ADD CONSTRAINT `fk_sobreDeporte` FOREIGN KEY (`NombreDeportes`) REFERENCES `deportes` (`NombreDeporte`),
  ADD CONSTRAINT `fk_sobrenoticia` FOREIGN KEY (`NombreNoticias`,`FechaNoticia`) REFERENCES `noticias` (`NombreNoticia`, `Fecha`);

--
-- Filtros para la tabla `sucede`
--
ALTER TABLE `sucede`
  ADD CONSTRAINT `fk_compitesucede` FOREIGN KEY (`CodPais`,`idPartido`) REFERENCES `compite` (`CodigoPais`, `idPartido`),
  ADD CONSTRAINT `fk_eventocompite` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IDEvento`);

--
-- Filtros para la tabla `tiene`
--
ALTER TABLE `tiene`
  ADD CONSTRAINT `fk_CodEquipoTiene` FOREIGN KEY (`CodigoEquipo`) REFERENCES `equipo` (`CodigoEquipo`),
  ADD CONSTRAINT `fk_idAtleta` FOREIGN KEY (`idAtleta`) REFERENCES `atleta` (`idAtleta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
