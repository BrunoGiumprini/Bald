CREATE DATABASE  IF NOT EXISTS `bald`;
USE `bald`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bald
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acerca`
--

DROP TABLE IF EXISTS `acerca`;
CREATE TABLE `acerca` (
  `IdNotificacion` int NOT NULL,
  `HoraComienzo` time NOT NULL,
  `DondeSeJuega` varchar(45) NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`IdNotificacion`,`HoraComienzo`,`DondeSeJuega`,`Fecha`),
  KEY `fk_acercajuega_idx` (`HoraComienzo`,`DondeSeJuega`,`Fecha`),
  CONSTRAINT `fk_acercajuega` FOREIGN KEY (`HoraComienzo`, `DondeSeJuega`, `Fecha`) REFERENCES `juega` (`HoraComienzo`, `DondeSeJuega`, `Fecha`),
  CONSTRAINT `fk_acercanotificacion` FOREIGN KEY (`IdNotificacion`) REFERENCES `notificacion` (`idNotificacion`)
) ;


--
-- Dumping data for table `acerca`
--

LOCK TABLES `acerca` WRITE;
/*!40000 ALTER TABLE `acerca` DISABLE KEYS */;
INSERT INTO `acerca` VALUES (5,'14:00:00','Camp Nou','2010-12-02'),(4,'15:00:00','Staples Center','2021-12-01');
/*!40000 ALTER TABLE `acerca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acontece`
--

DROP TABLE IF EXISTS `acontece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acontece` (
  `HoraComienzo` time NOT NULL,
  `DondeSeJuega` varchar(45) NOT NULL,
  `Fecha` date NOT NULL,
  `NombreCampeonatoInternacional` varchar(45) NOT NULL,
  PRIMARY KEY (`HoraComienzo`,`DondeSeJuega`,`Fecha`,`NombreCampeonatoInternacional`),
  KEY `fk_acontececampeonatointer_idx` (`NombreCampeonatoInternacional`),
  CONSTRAINT `fk_acontececampeonatointer` FOREIGN KEY (`NombreCampeonatoInternacional`) REFERENCES `campeonatointernacional` (`Nombre`),
  CONSTRAINT `fk_acontecepartidointer` FOREIGN KEY (`HoraComienzo`, `DondeSeJuega`, `Fecha`) REFERENCES `partidointernacional` (`HoraComiezo`, `DondeSeJuega`, `Fecha`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acontece`
--

LOCK TABLES `acontece` WRITE;
/*!40000 ALTER TABLE `acontece` DISABLE KEYS */;
INSERT INTO `acontece` VALUES ('18:00:00','Centenario','2023-06-02','Mundial');
/*!40000 ALTER TABLE `acontece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aparece`
--

DROP TABLE IF EXISTS `aparece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aparece` (
  `NombreUsuario` varchar(45) NOT NULL,
  `IdPublicidad` int NOT NULL,
  PRIMARY KEY (`NombreUsuario`,`IdPublicidad`),
  KEY `fk_aparecepublicidad_idx` (`IdPublicidad`),
  CONSTRAINT `fk_aparecepublicidad` FOREIGN KEY (`IdPublicidad`) REFERENCES `publicidad` (`idPublicidad`),
  CONSTRAINT `fk_apareceusuario` FOREIGN KEY (`NombreUsuario`) REFERENCES `usuario` (`NombreUsuario`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aparece`
--

LOCK TABLES `aparece` WRITE;
/*!40000 ALTER TABLE `aparece` DISABLE KEYS */;
INSERT INTO `aparece` VALUES ('mateofarias',1),('silvana',1),('mateofarias',4),('silvana',6);
/*!40000 ALTER TABLE `aparece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atleta`
--

DROP TABLE IF EXISTS `atleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atleta` (
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Foto` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`Nombre`,`Apellido`),
  KEY `idx_apellido` (`Apellido`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atleta`
--

LOCK TABLES `atleta` WRITE;
/*!40000 ALTER TABLE `atleta` DISABLE KEYS */;
INSERT INTO `atleta` VALUES ('Cristiano','Ronaldo','cr7.jpg','SIUUUUUUUUUU'),('Lebron','James','lbj.png','goat'),('Leonel','Messi','mesi.png','golazo'),('Lewis','Hamilton','ham.jpg','autitos'),('Rafael','Nadal','rafa.png','tenis god');
/*!40000 ALTER TABLE `atleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campeonato`
--

DROP TABLE IF EXISTS `campeonato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campeonato` (
  `Nombre` varchar(45) NOT NULL,
  `Organizador` varchar(45) NOT NULL,
  `FechaFin` date NOT NULL,
  `FechaInicio` date NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Ubicacion` varchar(45) NOT NULL,
  PRIMARY KEY (`Nombre`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campeonato`
--

LOCK TABLES `campeonato` WRITE;
/*!40000 ALTER TABLE `campeonato` DISABLE KEYS */;
INSERT INTO `campeonato` VALUES ('Champions','FIFA','2023-01-09','2022-01-09','elbichosiu','Europa'),('Copa America','Conmebol','2022-09-01','2022-09-01','futbol suarez','Brasil'),('F1','Europa','2007-01-02','2007-03-01','F1 hamilton','Italia'),('Mundial','FIFA','2012-02-13','2012-07-01','futbol messi','Qatar'),('NBA','USA','2021-01-12','2021-10-01','basketball lebron ','USA'),('Olimpiadas','ONU','2034-08-22','2035-01-01','olimpiadas phelps','Mundial'),('Roland Garros','Tenis fifa','2001-02-02','2002-01-01','tenis federer','Suiza');
/*!40000 ALTER TABLE `campeonato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campeonatoclub`
--

DROP TABLE IF EXISTS `campeonatoclub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campeonatoclub` (
  `nombrecampeonato` varchar(45) NOT NULL,
  PRIMARY KEY (`nombrecampeonato`),
  CONSTRAINT `fk_nombrecampeonatoclub` FOREIGN KEY (`nombrecampeonato`) REFERENCES `campeonato` (`Nombre`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campeonatoclub`
--

LOCK TABLES `campeonatoclub` WRITE;
/*!40000 ALTER TABLE `campeonatoclub` DISABLE KEYS */;
INSERT INTO `campeonatoclub` VALUES ('Champions'),('F1'),('NBA');
/*!40000 ALTER TABLE `campeonatoclub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campeonatointernacional`
--

DROP TABLE IF EXISTS `campeonatointernacional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campeonatointernacional` (
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`Nombre`),
  CONSTRAINT `fk_NombreCampInter` FOREIGN KEY (`Nombre`) REFERENCES `campeonato` (`Nombre`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campeonatointernacional`
--

LOCK TABLES `campeonatointernacional` WRITE;
/*!40000 ALTER TABLE `campeonatointernacional` DISABLE KEYS */;
INSERT INTO `campeonatointernacional` VALUES ('Copa America'),('Mundial'),('Olimpiadas'),('Roland Garros');
/*!40000 ALTER TABLE `campeonatointernacional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compite`
--

DROP TABLE IF EXISTS `compite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compite` (
  `CodigoPais` varchar(2) NOT NULL,
  `HoraComienzo` time NOT NULL,
  `DondeSeJuega` varchar(45) NOT NULL,
  `Fecha` date NOT NULL,
  `Alineacion` varchar(255) NOT NULL,
  `NombreArbitro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CodigoPais`,`HoraComienzo`,`DondeSeJuega`,`Fecha`),
  KEY `fk_compitepartidointer_idx` (`HoraComienzo`,`DondeSeJuega`,`Fecha`),
  CONSTRAINT `fk_compitepais` FOREIGN KEY (`CodigoPais`) REFERENCES `pais` (`CodigoPais`),
  CONSTRAINT `fk_compitepartidointer` FOREIGN KEY (`HoraComienzo`, `DondeSeJuega`, `Fecha`) REFERENCES `partidointernacional` (`HoraComiezo`, `DondeSeJuega`, `Fecha`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compite`
--

LOCK TABLES `compite` WRITE;
/*!40000 ALTER TABLE `compite` DISABLE KEYS */;
INSERT INTO `compite` VALUES ('ar','08:00:00','Pamukkale','2011-04-12','Delfina Pignatiello','Caballero'),('es','18:00:00','Centenario','2023-06-02','Casillas-Ramos','Rodriguez'),('pr','08:00:00','Pamukkale','2011-04-12','Diana Duraes','Caballero');
/*!40000 ALTER TABLE `compite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concurre`
--

DROP TABLE IF EXISTS `concurre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concurre` (
  `CodPais` varchar(2) NOT NULL,
  `NombreCampeonatoInternacional` varchar(45) NOT NULL,
  PRIMARY KEY (`CodPais`,`NombreCampeonatoInternacional`),
  KEY `fk_concurrecampint_idx` (`NombreCampeonatoInternacional`),
  CONSTRAINT `fk_concurrecampint` FOREIGN KEY (`NombreCampeonatoInternacional`) REFERENCES `campeonatointernacional` (`Nombre`),
  CONSTRAINT `fk_concurrepais` FOREIGN KEY (`CodPais`) REFERENCES `pais` (`CodigoPais`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concurre`
--

LOCK TABLES `concurre` WRITE;
/*!40000 ALTER TABLE `concurre` DISABLE KEYS */;
INSERT INTO `concurre` VALUES ('ar','Copa America'),('br','Copa America'),('uy','Copa America'),('pr','Mundial'),('es','Roland Garros');
/*!40000 ALTER TABLE `concurre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convocado`
--

DROP TABLE IF EXISTS `convocado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convocado` (
  `NombreSeleccionado` varchar(45) NOT NULL,
  `ApellidoSeleccionado` varchar(45) NOT NULL,
  `CodPais` varchar(2) NOT NULL,
  PRIMARY KEY (`NombreSeleccionado`,`ApellidoSeleccionado`),
  KEY `fk_convocadopais_idx` (`CodPais`),
  CONSTRAINT `fk_convocadopais` FOREIGN KEY (`CodPais`) REFERENCES `pais` (`CodigoPais`),
  CONSTRAINT `fk_convocadoseleccionado` FOREIGN KEY (`NombreSeleccionado`, `ApellidoSeleccionado`) REFERENCES `seleccionado` (`Nombre`, `Apellido`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convocado`
--

LOCK TABLES `convocado` WRITE;
/*!40000 ALTER TABLE `convocado` DISABLE KEYS */;
INSERT INTO `convocado` VALUES ('Leonel','Messi','ar'),('Cristiano','Ronaldo','pr');
/*!40000 ALTER TABLE `convocado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuenta` (
  `NombreStaff` varchar(45) NOT NULL,
  `ApellidoStaff` varchar(45) NOT NULL,
  `CodEquipo` int NOT NULL,
  PRIMARY KEY (`NombreStaff`,`ApellidoStaff`),
  KEY `fk_CuentaCodEquipo_idx` (`CodEquipo`),
  CONSTRAINT `fk_CuentaCodEquipo` FOREIGN KEY (`CodEquipo`) REFERENCES `equipo` (`CodigoEquipo`),
  CONSTRAINT `fk_CuentaStaff` FOREIGN KEY (`NombreStaff`, `ApellidoStaff`) REFERENCES `miembrostaff` (`Nombre`, `Apellido`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` VALUES ('Alberto','Fernandez',1),('Juan','Rodriguez',1),('Juan','Gonzalez',6);
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deportes`
--

DROP TABLE IF EXISTS `deportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deportes` (
  `NombreDeporte` varchar(45) NOT NULL,
  `FotoDeporte` varchar(255) NOT NULL,
  `DuracionDePartidos` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`NombreDeporte`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deportes`
--

LOCK TABLES `deportes` WRITE;
/*!40000 ALTER TABLE `deportes` DISABLE KEYS */;
INSERT INTO `deportes` VALUES ('American Football','American.jpg','4 tiempos'),('Basketball','Basketball.jpg','1hr'),('F1','F1.jpg','depende'),('Futbol','Futbol.jpg','90min'),('Natacion','Natacion.jpg','100mts'),('Tenis','Tenis.jpg','3Sets');
/*!40000 ALTER TABLE `deportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo` (
  `CodigoEquipo` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Individual` tinyint(1) NOT NULL,
  `Logo` varchar(255) NOT NULL,
  PRIMARY KEY (`CodigoEquipo`),
  KEY `idx_CodigoEquipo` (`CodigoEquipo`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` VALUES (1,'Manchester United',0,'manu.jpg'),(2,'Lakers',0,'lakers.jpg'),(3,'Rafael Nadal',1,'nadal.jpg'),(4,'Equipo RedBull',0,'rb.jpg'),(5,'Tampa Bay Bucaneers',0,'buca.jpg'),(6,'Real Madrid',0,'rmd.jpg'),(7,'Liverpool',0,'lvp.jpg'),(8,'Arsenal',0,'Arsenal.jpg'),(9,'Barcelona',0,'Barca.jpg'),(10,'Aguada',0,'aguada.jpg');
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `IDEvento` int NOT NULL AUTO_INCREMENT,
  `NombreEvento` varchar(45) NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IDEvento`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (1,'Gol','elbicho metio gol'),(2,'triple','lebron metio un triple'),(3,'falta-tarjeta amarilla','messi le pego makelele'),(4,'neumatico explotado','hamilton se le exploto larueda'),(5,'punto','punto de nadal');
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incluye`
--

DROP TABLE IF EXISTS `incluye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incluye` (
  `idResultado` int NOT NULL,
  `CodPais` varchar(2) NOT NULL,
  `Fecha` date NOT NULL,
  `DondeSeJuega` varchar(45) NOT NULL,
  `HoraComienzo` time NOT NULL,
  PRIMARY KEY (`idResultado`),
  KEY `CodPais` (`CodPais`,`HoraComienzo`,`DondeSeJuega`,`Fecha`),
  CONSTRAINT `incluye_ibfk_1` FOREIGN KEY (`CodPais`, `HoraComienzo`, `DondeSeJuega`, `Fecha`) REFERENCES `compite` (`CodigoPais`, `HoraComienzo`, `DondeSeJuega`, `Fecha`),
  CONSTRAINT `incluye_ibfk_2` FOREIGN KEY (`idResultado`) REFERENCES `resultado` (`idResultado`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incluye`
--

LOCK TABLES `incluye` WRITE;
/*!40000 ALTER TABLE `incluye` DISABLE KEYS */;
/*!40000 ALTER TABLE `incluye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juega`
--

DROP TABLE IF EXISTS `juega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `juega` (
  `DondeSeJuega` varchar(45) NOT NULL,
  `HoraComienzo` time NOT NULL,
  `Fecha` date NOT NULL,
  `CodigoEquipo` int NOT NULL,
  `NombreArbitro` varchar(45) DEFAULT NULL,
  `Alineacion` varchar(255) NOT NULL,
  `Encuentro` varchar(45) NOT NULL,
  PRIMARY KEY (`DondeSeJuega`,`HoraComienzo`,`Fecha`,`CodigoEquipo`),
  KEY `fk_CodigoEquipo_idx` (`CodigoEquipo`),
  KEY `juega_idx` (`CodigoEquipo`,`HoraComienzo`,`DondeSeJuega`,`Fecha`),
  KEY `idx_juegaacerca` (`HoraComienzo`,`DondeSeJuega`,`Fecha`),
  CONSTRAINT `fk_CodigoEquipo` FOREIGN KEY (`CodigoEquipo`) REFERENCES `equipo` (`CodigoEquipo`),
  CONSTRAINT `fk_DondeHoraFecha` FOREIGN KEY (`DondeSeJuega`, `HoraComienzo`, `Fecha`) REFERENCES `partidos` (`DondeSeJuega`, `HoraComienzo`, `Fecha`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juega`
--

LOCK TABLES `juega` WRITE;
/*!40000 ALTER TABLE `juega` DISABLE KEYS */;
INSERT INTO `juega` VALUES ('Anfield','13:00:00','2012-04-03',1,'Rodriguez','De Gea-Cr7',''),('Anfield','13:00:00','2012-04-03',7,'Rodriguez','Alisson-Salah',''),('Bernabeu','19:00:00','2021-10-11',1,'Manzano','De Gea-Cr7',''),('Bernabeu','19:00:00','2021-10-11',6,'Manzano','Courtois-Vinicius',''),('Bernabeu','19:00:00','2021-11-11',1,'Gilbert','De Gea-Cr7',''),('Bernabeu','19:00:00','2021-11-11',6,'Gilbert','Courtois-Vinicius',''),('Camp Nou','14:00:00','2010-12-02',1,'Smith','De Gea-CR7',''),('Camp Nou','14:00:00','2010-12-02',9,'Smith','Valdez-Messi',''),('Old Traford','13:00:00','2015-02-23',1,'Mendez','De Gea-Cr7',''),('Old Traford','13:00:00','2015-02-23',8,'Mendez','Lehman-Henry',''),('Staples Center','15:00:00','2021-12-01',2,'Gelson','Anthony Davis- Lebron James','');
/*!40000 ALTER TABLE `juega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lee`
--

DROP TABLE IF EXISTS `lee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lee` (
  `NombreUsuario` varchar(45) NOT NULL,
  `NombreNoticia` varchar(45) NOT NULL,
  PRIMARY KEY (`NombreUsuario`,`NombreNoticia`),
  KEY `fk_leenoticia_idx` (`NombreNoticia`),
  CONSTRAINT `fk_leenoticia` FOREIGN KEY (`NombreNoticia`) REFERENCES `noticias` (`NombreNoticia`),
  CONSTRAINT `fk_leeusuario` FOREIGN KEY (`NombreUsuario`) REFERENCES `usuario` (`NombreUsuario`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lee`
--

LOCK TABLES `lee` WRITE;
/*!40000 ALTER TABLE `lee` DISABLE KEYS */;
INSERT INTO `lee` VALUES ('giumpiurri','CR7 Mete 3 goles'),('Vicky7Siuu','CR7 Mete 3 goles'),('giumpiurri','Lebron anota de 3'),('Vicky7Siuu','Messi se droga'),('nachosil','Nadal se declara homosexual');
/*!40000 ALTER TABLE `lee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `llegan`
--

DROP TABLE IF EXISTS `llegan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llegan` (
  `NombreUsuario` varchar(45) NOT NULL,
  `IdNotificacion` int NOT NULL,
  PRIMARY KEY (`NombreUsuario`,`IdNotificacion`),
  KEY `fk_lleganNotificaciones_idx` (`IdNotificacion`),
  CONSTRAINT `fk_lleganNotificaciones` FOREIGN KEY (`IdNotificacion`) REFERENCES `notificacion` (`idNotificacion`),
  CONSTRAINT `fk_lleganUsuario` FOREIGN KEY (`NombreUsuario`) REFERENCES `usuario` (`NombreUsuario`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llegan`
--

LOCK TABLES `llegan` WRITE;
/*!40000 ALTER TABLE `llegan` DISABLE KEYS */;
INSERT INTO `llegan` VALUES ('Vicky7Siuu',1),('nachosil',2),('nachosil',3),('giumpiurri',4),('Vicky7Siuu',5);
/*!40000 ALTER TABLE `llegan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miembrostaff`
--

DROP TABLE IF EXISTS `miembrostaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `miembrostaff` (
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Trabajo` varchar(45) NOT NULL,
  PRIMARY KEY (`Nombre`,`Apellido`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miembrostaff`
--

LOCK TABLES `miembrostaff` WRITE;
/*!40000 ALTER TABLE `miembrostaff` DISABLE KEYS */;
INSERT INTO `miembrostaff` VALUES ('Alberto','Fernandez','Doctor'),('Andrea','Karashkova','Porrista'),('Juan','Gonzalez','Asistente'),('Juan','Rodriguez','DT'),('Robert','Ackerman','Mecanico');
/*!40000 ALTER TABLE `miembrostaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noticias` (
  `NombreNoticia` varchar(45) NOT NULL,
  `Fecha` date NOT NULL,
  `Informacion` varchar(255) NOT NULL,
  `Imagen` varchar(45) NOT NULL,
  PRIMARY KEY (`NombreNoticia`,`Fecha`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES ('Brasil arroya voley','2015-10-06','brasil gana por 3 sets a todos','brasil.jpg'),('CR7 Mete 3 goles','2022-01-12','cr7 metio muchos goles vs el psg','imagen.jpg'),('Lebron anota de 3','2022-02-12','lebron metio un triple desde su casa','lebron.jpg'),('Messi se droga','2012-05-12','messi se inyecta heroina los martes','messi.jpg'),('Nadal se declara homosexual','2015-10-06','nadal confirma su matrimonio con su amigo bruno','nadal.jpg');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificacion`
--

DROP TABLE IF EXISTS `notificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificacion` (
  `idNotificacion` int NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(45) NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idNotificacion`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacion`
--

LOCK TABLES `notificacion` WRITE;
/*!40000 ALTER TABLE `notificacion` DISABLE KEYS */;
INSERT INTO `notificacion` VALUES (1,'ghana vs uruguay',NULL),(2,'nadal vs federer',NULL),(3,'suarez lesionado',NULL),(4,'lakers campeones',NULL),(5,'muere messi',NULL);
/*!40000 ALTER TABLE `notificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocurren`
--

DROP TABLE IF EXISTS `ocurren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocurren` (
  `HoraComienzo` time NOT NULL,
  `DondeSeJuega` varchar(45) NOT NULL,
  `Fecha` date NOT NULL,
  `NombreCampeonato` varchar(45) NOT NULL,
  PRIMARY KEY (`HoraComienzo`,`DondeSeJuega`,`Fecha`,`NombreCampeonato`),
  KEY `fk_ocurrencampeonatoclub_idx` (`NombreCampeonato`),
  CONSTRAINT `fk_ocurrencampeonatoclub` FOREIGN KEY (`NombreCampeonato`) REFERENCES `campeonatoclub` (`nombrecampeonato`),
  CONSTRAINT `fk_ocurrenpartidoclub` FOREIGN KEY (`HoraComienzo`, `DondeSeJuega`, `Fecha`) REFERENCES `partidosclub` (`HoraComienzo`, `DondeSeJuega`, `Fecha`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocurren`
--

LOCK TABLES `ocurren` WRITE;
/*!40000 ALTER TABLE `ocurren` DISABLE KEYS */;
INSERT INTO `ocurren` VALUES ('19:00:00','Bernabeu','2021-10-11','Champions'),('19:00:00','Bernabeu','2021-11-11','Champions'),('15:00:00','Staples Center','2021-12-01','NBA');
/*!40000 ALTER TABLE `ocurren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ostenta`
--

DROP TABLE IF EXISTS `ostenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ostenta` (
  `idResultado` int NOT NULL,
  `CodEquipo` int NOT NULL,
  `Fecha` date NOT NULL,
  `DondeSeJuega` varchar(45) NOT NULL,
  `HoraComienzo` time NOT NULL,
  PRIMARY KEY (`idResultado`),
  KEY `CodEquipo` (`CodEquipo`,`HoraComienzo`,`DondeSeJuega`,`Fecha`),
  CONSTRAINT `ostenta_ibfk_1` FOREIGN KEY (`idResultado`) REFERENCES `resultado` (`idResultado`),
  CONSTRAINT `ostenta_ibfk_2` FOREIGN KEY (`CodEquipo`, `HoraComienzo`, `DondeSeJuega`, `Fecha`) REFERENCES `juega` (`CodigoEquipo`, `HoraComienzo`, `DondeSeJuega`, `Fecha`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ostenta`
--

LOCK TABLES `ostenta` WRITE;
/*!40000 ALTER TABLE `ostenta` DISABLE KEYS */;
/*!40000 ALTER TABLE `ostenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `CodigoPais` varchar(2) NOT NULL,
  `Logo` varchar(45) NOT NULL,
  `NombrePais` varchar(45) NOT NULL,
  `Individual` tinyint(1) NOT NULL,
  PRIMARY KEY (`CodigoPais`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES ('ar','arg.jpg','Argentina',0),('br','br.jpg','Brasil',0),('es','esp.logo','España',1),('pr','por.jpg','Portugal',0),('uy','uy.jpg','Uruguay',0);
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participan`
--

DROP TABLE IF EXISTS `participan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participan` (
  `NombreCampeonato` varchar(45) NOT NULL,
  `CodEquipo` int NOT NULL,
  KEY `fk_codEquipoparticipan_idx` (`CodEquipo`),
  KEY `fk_ParticipanCampeonato_idx` (`NombreCampeonato`),
  CONSTRAINT `fk_codEquipoparticipan` FOREIGN KEY (`CodEquipo`) REFERENCES `equipo` (`CodigoEquipo`),
  CONSTRAINT `fk_ParticipanCampeonato` FOREIGN KEY (`NombreCampeonato`) REFERENCES `campeonatoclub` (`nombrecampeonato`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participan`
--

LOCK TABLES `participan` WRITE;
/*!40000 ALTER TABLE `participan` DISABLE KEYS */;
INSERT INTO `participan` VALUES ('Champions',1),('Champions',6),('Champions',7),('Champions',8),('Champions',9),('NBA',2);
/*!40000 ALTER TABLE `participan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidointernacional`
--

DROP TABLE IF EXISTS `partidointernacional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidointernacional` (
  `HoraComiezo` time NOT NULL,
  `DondeSeJuega` varchar(45) NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`HoraComiezo`,`DondeSeJuega`,`Fecha`),
  KEY `fk_DondeInter` (`DondeSeJuega`),
  KEY `fk_FechaInter` (`Fecha`),
  CONSTRAINT `fk_DondeInter` FOREIGN KEY (`DondeSeJuega`) REFERENCES `partidos` (`DondeSeJuega`),
  CONSTRAINT `fk_FechaInter` FOREIGN KEY (`Fecha`) REFERENCES `partidos` (`Fecha`),
  CONSTRAINT `fk_HoraInter` FOREIGN KEY (`HoraComiezo`) REFERENCES `partidos` (`HoraComienzo`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidointernacional`
--

LOCK TABLES `partidointernacional` WRITE;
/*!40000 ALTER TABLE `partidointernacional` DISABLE KEYS */;
INSERT INTO `partidointernacional` VALUES ('08:00:00','Pamukkale','2011-04-12'),('18:00:00','Centenario','2023-06-02');
/*!40000 ALTER TABLE `partidointernacional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidos`
--

DROP TABLE IF EXISTS `partidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidos` (
  `HoraComienzo` time NOT NULL,
  `DondeSeJuega` varchar(45) NOT NULL,
  `Fecha` date NOT NULL,
  `HoraFin` time NOT NULL,
  PRIMARY KEY (`HoraComienzo`,`DondeSeJuega`,`Fecha`),
  KEY `fk_Donde_idx` (`DondeSeJuega`),
  KEY `idx_Donde` (`DondeSeJuega`),
  KEY `idx_Fecha` (`Fecha`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidos`
--

LOCK TABLES `partidos` WRITE;
/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` VALUES ('08:00:00','Pamukkale','2011-04-12','12:00:00'),('13:00:00','Anfield','2012-04-03','15:00:00'),('13:00:00','Old Traford','2015-02-23','15:00:00'),('14:00:00','Camp Nou','2010-12-02','16:00:00'),('15:00:00','Staples Center','2021-12-01','17:00:00'),('18:00:00','Centenario','2023-06-02','20:00:00'),('19:00:00','Bernabeu','2021-10-11','21:00:00'),('19:00:00','Bernabeu','2021-11-11','21:00:00'),('19:00:00','Bombonera','2020-11-11','21:00:00'),('21:00:00','Le Mans','2001-01-01','00:00:00');
/*!40000 ALTER TABLE `partidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidosclub`
--

DROP TABLE IF EXISTS `partidosclub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidosclub` (
  `HoraComienzo` time NOT NULL,
  `DondeSeJuega` varchar(45) NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`HoraComienzo`,`DondeSeJuega`,`Fecha`),
  KEY `fk_Donde_idx` (`DondeSeJuega`),
  KEY `fk_Fecha_idx` (`Fecha`),
  CONSTRAINT `fk_Donde` FOREIGN KEY (`DondeSeJuega`) REFERENCES `partidos` (`DondeSeJuega`),
  CONSTRAINT `fk_Fecha` FOREIGN KEY (`Fecha`) REFERENCES `partidos` (`Fecha`),
  CONSTRAINT `fk_Hora` FOREIGN KEY (`HoraComienzo`) REFERENCES `partidos` (`HoraComienzo`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidosclub`
--

LOCK TABLES `partidosclub` WRITE;
/*!40000 ALTER TABLE `partidosclub` DISABLE KEYS */;
INSERT INTO `partidosclub` VALUES ('21:00:00','Le Mans','2001-01-01'),('14:00:00','Camp Nou','2010-12-02'),('13:00:00','Anfield','2012-04-03'),('13:00:00','Old Traford','2015-02-23'),('19:00:00','Bombonera','2020-11-11'),('19:00:00','Bernabeu','2021-10-11'),('19:00:00','Bernabeu','2021-11-11'),('15:00:00','Staples Center','2021-12-01');
/*!40000 ALTER TABLE `partidosclub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasan`
--

DROP TABLE IF EXISTS `pasan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pasan` (
  `IdEvento` int NOT NULL,
  `CodigoEquipo` int NOT NULL,
  `HoraComienzo` time NOT NULL,
  `DondeSeJuega` varchar(45) NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`IdEvento`,`CodigoEquipo`,`HoraComienzo`,`DondeSeJuega`,`Fecha`),
  KEY `fk_pasanjuega_idx` (`CodigoEquipo`,`HoraComienzo`,`DondeSeJuega`,`Fecha`),
  CONSTRAINT `fk_pasanevento` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IDEvento`),
  CONSTRAINT `fk_pasanjuega` FOREIGN KEY (`CodigoEquipo`, `HoraComienzo`, `DondeSeJuega`, `Fecha`) REFERENCES `juega` (`CodigoEquipo`, `HoraComienzo`, `DondeSeJuega`, `Fecha`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasan`
--

LOCK TABLES `pasan` WRITE;
/*!40000 ALTER TABLE `pasan` DISABLE KEYS */;
INSERT INTO `pasan` VALUES (1,1,'13:00:00','Anfield','2012-04-03'),(1,1,'19:00:00','Bernabeu','2021-10-11'),(2,2,'15:00:00','Staples Center','2021-12-01'),(3,9,'14:00:00','Camp Nou','2010-12-02');
/*!40000 ALTER TABLE `pasan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posee`
--

DROP TABLE IF EXISTS `posee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posee` (
  `NombreStaff` varchar(45) NOT NULL,
  `ApellidoStaff` varchar(45) NOT NULL,
  `CodPais` varchar(2) NOT NULL,
  PRIMARY KEY (`NombreStaff`,`ApellidoStaff`),
  KEY `fk_poseepais_idx` (`CodPais`),
  CONSTRAINT `fk_poseepais` FOREIGN KEY (`CodPais`) REFERENCES `pais` (`CodigoPais`),
  CONSTRAINT `fk_poseestaff` FOREIGN KEY (`NombreStaff`, `ApellidoStaff`) REFERENCES `miembrostaff` (`Nombre`, `Apellido`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posee`
--

LOCK TABLES `posee` WRITE;
/*!40000 ALTER TABLE `posee` DISABLE KEYS */;
INSERT INTO `posee` VALUES ('Robert','Ackerman','ar'),('Andrea','Karashkova','es');
/*!40000 ALTER TABLE `posee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practican`
--

DROP TABLE IF EXISTS `practican`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `practican` (
  `CodigoEquipo` int NOT NULL,
  `NombreDeporte` varchar(45) NOT NULL,
  PRIMARY KEY (`CodigoEquipo`,`NombreDeporte`),
  KEY `fk_nombredeportepractican_idx` (`NombreDeporte`),
  CONSTRAINT `fk_codequipopractican` FOREIGN KEY (`CodigoEquipo`) REFERENCES `equipo` (`CodigoEquipo`),
  CONSTRAINT `fk_nombredeportepractican` FOREIGN KEY (`NombreDeporte`) REFERENCES `deportes` (`NombreDeporte`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practican`
--

LOCK TABLES `practican` WRITE;
/*!40000 ALTER TABLE `practican` DISABLE KEYS */;
INSERT INTO `practican` VALUES (5,'American Football'),(2,'Basketball'),(10,'Basketball'),(4,'F1'),(1,'Futbol'),(6,'Futbol'),(7,'Futbol'),(8,'Futbol'),(9,'Futbol'),(3,'Tenis');
/*!40000 ALTER TABLE `practican` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicidad`
--

DROP TABLE IF EXISTS `publicidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicidad` (
  `idPublicidad` int NOT NULL AUTO_INCREMENT,
  `NombrePublicidad` varchar(45) NOT NULL,
  `URL` varchar(255) NOT NULL,
  `ImagenPublicidad` varchar(45) NOT NULL,
  PRIMARY KEY (`idPublicidad`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicidad`
--

LOCK TABLES `publicidad` WRITE;
/*!40000 ALTER TABLE `publicidad` DISABLE KEYS */;
INSERT INTO `publicidad` VALUES (1,'MC','mc.com','mc.jpg'),(2,'BK','bk.com','bk.jpg'),(3,'Mdeo Shoping','mdeo.com','mdeo.jpg'),(4,'Poweade','power.com','power.jpg'),(5,'Coscu','coscu.com','coscu.jpg'),(6,'Rexona','rexona.com','rexona.jpg');
/*!40000 ALTER TABLE `publicidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultado`
--

DROP TABLE IF EXISTS `resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultado` (
  `idResultado` int NOT NULL AUTO_INCREMENT,
  `Puntaje` varchar(255) NOT NULL,
  PRIMARY KEY (`idResultado`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultado`
--

LOCK TABLES `resultado` WRITE;
/*!40000 ALTER TABLE `resultado` DISABLE KEYS */;
/*!40000 ALTER TABLE `resultado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seleccionado`
--

DROP TABLE IF EXISTS `seleccionado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seleccionado` (
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Nacionalidad` varchar(45) NOT NULL,
  PRIMARY KEY (`Nombre`,`Apellido`),
  KEY `idx_apellido` (`Apellido`),
  CONSTRAINT `fk_ApellidoSelec` FOREIGN KEY (`Apellido`) REFERENCES `atleta` (`Apellido`),
  CONSTRAINT `fk_NombreSelec` FOREIGN KEY (`Nombre`) REFERENCES `atleta` (`Nombre`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seleccionado`
--

LOCK TABLES `seleccionado` WRITE;
/*!40000 ALTER TABLE `seleccionado` DISABLE KEYS */;
INSERT INTO `seleccionado` VALUES ('Cristiano','Ronaldo','Portugal'),('Leonel','Messi','Argentina'),('Rafael','Nadal','España');
/*!40000 ALTER TABLE `seleccionado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sigue`
--

DROP TABLE IF EXISTS `sigue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sigue` (
  `NombreUsuario` varchar(45) NOT NULL,
  `CodigoEquipo` int NOT NULL,
  PRIMARY KEY (`NombreUsuario`,`CodigoEquipo`),
  KEY `fk_equiposigue_idx` (`CodigoEquipo`),
  CONSTRAINT `fk_equiposigue` FOREIGN KEY (`CodigoEquipo`) REFERENCES `equipo` (`CodigoEquipo`),
  CONSTRAINT `fk_UsuarioSigue` FOREIGN KEY (`NombreUsuario`) REFERENCES `usuario` (`NombreUsuario`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sigue`
--

LOCK TABLES `sigue` WRITE;
/*!40000 ALTER TABLE `sigue` DISABLE KEYS */;
INSERT INTO `sigue` VALUES ('giumpiurri',1),('Vicky7Siuu',3),('nachosil',5),('giumpiurri',6),('Vicky7Siuu',7);
/*!40000 ALTER TABLE `sigue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sobre`
--

DROP TABLE IF EXISTS `sobre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sobre` (
  `NombreDeportes` varchar(45) NOT NULL,
  `NombreNoticias` varchar(45) NOT NULL,
  `FechaNoticia` date NOT NULL,
  PRIMARY KEY (`NombreDeportes`,`NombreNoticias`,`FechaNoticia`),
  KEY `fk_sobrenoticia_idx` (`NombreNoticias`,`FechaNoticia`),
  CONSTRAINT `fk_sobreDeporte` FOREIGN KEY (`NombreDeportes`) REFERENCES `deportes` (`NombreDeporte`),
  CONSTRAINT `fk_sobrenoticia` FOREIGN KEY (`NombreNoticias`, `FechaNoticia`) REFERENCES `noticias` (`NombreNoticia`, `Fecha`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sobre`
--

LOCK TABLES `sobre` WRITE;
/*!40000 ALTER TABLE `sobre` DISABLE KEYS */;
INSERT INTO `sobre` VALUES ('Futbol','CR7 Mete 3 goles','2022-01-12'),('Basketball','Lebron anota de 3','2022-02-12'),('Futbol','Messi se droga','2012-05-12'),('Tenis','Nadal se declara homosexual','2015-10-06');
/*!40000 ALTER TABLE `sobre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucede`
--

DROP TABLE IF EXISTS `sucede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucede` (
  `IdEvento` int NOT NULL,
  `CodPais` varchar(2) NOT NULL,
  `HoraComienzo` time NOT NULL,
  `DondeSeJuega` varchar(45) NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`IdEvento`,`HoraComienzo`,`CodPais`,`DondeSeJuega`,`Fecha`),
  KEY `fk_compitesucede_idx` (`CodPais`,`HoraComienzo`,`DondeSeJuega`,`Fecha`),
  CONSTRAINT `fk_compitesucede` FOREIGN KEY (`CodPais`, `HoraComienzo`, `DondeSeJuega`, `Fecha`) REFERENCES `compite` (`CodigoPais`, `HoraComienzo`, `DondeSeJuega`, `Fecha`),
  CONSTRAINT `fk_eventocompite` FOREIGN KEY (`IdEvento`) REFERENCES `evento` (`IDEvento`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucede`
--

LOCK TABLES `sucede` WRITE;
/*!40000 ALTER TABLE `sucede` DISABLE KEYS */;
/*!40000 ALTER TABLE `sucede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiene`
--

DROP TABLE IF EXISTS `tiene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tiene` (
  `NombreAtleta` varchar(45) NOT NULL,
  `ApellidoAtleta` varchar(45) NOT NULL,
  `CodigoEquipo` int NOT NULL,
  PRIMARY KEY (`NombreAtleta`,`ApellidoAtleta`),
  KEY `fk_CodEquipoTiene_idx` (`CodigoEquipo`),
  CONSTRAINT `fk_CodEquipoTiene` FOREIGN KEY (`CodigoEquipo`) REFERENCES `equipo` (`CodigoEquipo`),
  CONSTRAINT `fk_NombreApellido` FOREIGN KEY (`NombreAtleta`, `ApellidoAtleta`) REFERENCES `atleta` (`Nombre`, `Apellido`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiene`
--

LOCK TABLES `tiene` WRITE;
/*!40000 ALTER TABLE `tiene` DISABLE KEYS */;
INSERT INTO `tiene` VALUES ('Cristiano','Ronaldo',1),('Lebron','James',2),('Rafael','Nadal',3);
/*!40000 ALTER TABLE `tiene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `NombreUsuario` varchar(45) NOT NULL,
  `Fnacimiento` date NOT NULL,
  `Contraseña` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Premiun` tinyint(1) NOT NULL,
  `TipoDePago` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`NombreUsuario`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('giumpiurri','2003-10-09','bruno123','bruno@gmail.com',1,'Tarjeta'),('mateofarias','2003-11-18','vicky07','mateo@gmail.com',0,'Online'),('nachosil','1999-02-12','nachito','nacho@gmail.com',1,'Contado'),('silvana','1890-04-21','nachito','silvana@gmail.com',0,'Tarjeta'),('Vicky7Siuu','2005-08-26','mateo123','vicky@gmail.com',1,'Tarjeta');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-08  3:16:42
