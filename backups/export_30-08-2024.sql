-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hoja_de_vida
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `idcargo` int NOT NULL AUTO_INCREMENT,
  `cargo` varchar(40) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idcargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `idciudad` int NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(40) NOT NULL,
  `iddepartamento` int DEFAULT NULL,
  PRIMARY KEY (`idciudad`),
  KEY `iddepartamento` (`iddepartamento`),
  CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrato` (
  `idcontrato` int NOT NULL AUTO_INCREMENT,
  `codigo_contrato` int NOT NULL,
  `idtipo_contrato` int DEFAULT NULL,
  PRIMARY KEY (`idcontrato`),
  KEY `idtipo_contrato` (`idtipo_contrato`),
  CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`idtipo_contrato`) REFERENCES `tipo_contrato` (`idtipo_contrato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `iddepartamento` int NOT NULL AUTO_INCREMENT,
  `departamento` varchar(15) NOT NULL,
  `idpais` int DEFAULT NULL,
  PRIMARY KEY (`iddepartamento`),
  UNIQUE KEY `departamento` (`departamento`),
  KEY `idpais` (`idpais`),
  CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`idpais`) REFERENCES `pais` (`idpais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `idempresa` int NOT NULL AUTO_INCREMENT,
  `nit` int NOT NULL,
  `idcontrato` int DEFAULT NULL,
  PRIMARY KEY (`idempresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_cargo`
--

DROP TABLE IF EXISTS `empresa_cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa_cargo` (
  `idempresa_cargo` int NOT NULL AUTO_INCREMENT,
  `idempresa` int NOT NULL,
  `idcargo` int DEFAULT NULL,
  PRIMARY KEY (`idempresa_cargo`),
  KEY `idempresa` (`idempresa`),
  KEY `idcargo` (`idcargo`),
  CONSTRAINT `empresa_cargo_ibfk_1` FOREIGN KEY (`idempresa`) REFERENCES `empresa` (`idempresa`),
  CONSTRAINT `empresa_cargo_ibfk_2` FOREIGN KEY (`idcargo`) REFERENCES `cargo` (`idcargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_cargo`
--

LOCK TABLES `empresa_cargo` WRITE;
/*!40000 ALTER TABLE `empresa_cargo` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa_cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `idgenero` int NOT NULL AUTO_INCREMENT,
  `genero` varchar(10) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucion`
--

DROP TABLE IF EXISTS `institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institucion` (
  `idinstitucion` int NOT NULL AUTO_INCREMENT,
  `nit` int NOT NULL,
  `institucion` int DEFAULT NULL,
  PRIMARY KEY (`idinstitucion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion`
--

LOCK TABLES `institucion` WRITE;
/*!40000 ALTER TABLE `institucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucion_persona`
--

DROP TABLE IF EXISTS `institucion_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institucion_persona` (
  `idinstitucion_persona` int NOT NULL AUTO_INCREMENT,
  `idinstitucion` int NOT NULL,
  `idpersona` int DEFAULT NULL,
  PRIMARY KEY (`idinstitucion_persona`),
  KEY `idinstitucion` (`idinstitucion`),
  KEY `idpersona` (`idpersona`),
  CONSTRAINT `institucion_persona_ibfk_1` FOREIGN KEY (`idinstitucion`) REFERENCES `institucion` (`idinstitucion`),
  CONSTRAINT `institucion_persona_ibfk_2` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion_persona`
--

LOCK TABLES `institucion_persona` WRITE;
/*!40000 ALTER TABLE `institucion_persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `institucion_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `idpais` int NOT NULL AUTO_INCREMENT,
  `pais` varchar(15) NOT NULL,
  PRIMARY KEY (`idpais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `idpersona` int NOT NULL AUTO_INCREMENT,
  `nombre1` varchar(10) NOT NULL,
  `nombre2` varchar(10) DEFAULT NULL,
  `apellido1` varchar(10) NOT NULL,
  `apellido2` varchar(10) DEFAULT NULL,
  `documento` int NOT NULL,
  `idtipo_documento` int DEFAULT NULL,
  `mail` varchar(20) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `idgenero` int DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `libreta_militar` varchar(10) DEFAULT NULL,
  `idtipo_libreta` int DEFAULT NULL,
  `idrh` int DEFAULT NULL,
  `idciudad` int DEFAULT NULL,
  `idinstitucion` int DEFAULT NULL,
  PRIMARY KEY (`idpersona`),
  KEY `idgenero` (`idgenero`),
  KEY `idtipo_libreta` (`idtipo_libreta`),
  KEY `idtipo_documento` (`idtipo_documento`),
  KEY `idrh` (`idrh`),
  KEY `idciudad` (`idciudad`),
  KEY `idinstitucion` (`idinstitucion`),
  CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`idtipo_documento`) REFERENCES `tipo_documento` (`idtipo_documento`),
  CONSTRAINT `persona_ibfk_2` FOREIGN KEY (`idgenero`) REFERENCES `genero` (`idgenero`),
  CONSTRAINT `persona_ibfk_3` FOREIGN KEY (`idtipo_libreta`) REFERENCES `tipo_libreta` (`idtipo_libreta`),
  CONSTRAINT `persona_ibfk_4` FOREIGN KEY (`idtipo_documento`) REFERENCES `tipo_documento` (`idtipo_documento`),
  CONSTRAINT `persona_ibfk_5` FOREIGN KEY (`idrh`) REFERENCES `rh` (`idrh`),
  CONSTRAINT `persona_ibfk_6` FOREIGN KEY (`idciudad`) REFERENCES `ciudad` (`idciudad`),
  CONSTRAINT `persona_ibfk_7` FOREIGN KEY (`idinstitucion`) REFERENCES `institucion` (`idinstitucion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_referencia`
--

DROP TABLE IF EXISTS `persona_referencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona_referencia` (
  `idpersona_referencia` int NOT NULL AUTO_INCREMENT,
  `idreferencia_personal` int NOT NULL,
  `idpersona` int DEFAULT NULL,
  PRIMARY KEY (`idpersona_referencia`),
  KEY `idreferencia_personal` (`idreferencia_personal`),
  KEY `idpersona` (`idpersona`),
  CONSTRAINT `persona_referencia_ibfk_1` FOREIGN KEY (`idreferencia_personal`) REFERENCES `referencia_personal` (`idreferencia_personal`),
  CONSTRAINT `persona_referencia_ibfk_2` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_referencia`
--

LOCK TABLES `persona_referencia` WRITE;
/*!40000 ALTER TABLE `persona_referencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `persona_referencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencia_personal`
--

DROP TABLE IF EXISTS `referencia_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referencia_personal` (
  `idreferencia_personal` int NOT NULL AUTO_INCREMENT,
  `telefono` varchar(11) NOT NULL,
  `mail` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idreferencia_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencia_personal`
--

LOCK TABLES `referencia_personal` WRITE;
/*!40000 ALTER TABLE `referencia_personal` DISABLE KEYS */;
/*!40000 ALTER TABLE `referencia_personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh`
--

DROP TABLE IF EXISTS `rh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rh` (
  `idrh` int NOT NULL AUTO_INCREMENT,
  `rh` varchar(4) NOT NULL,
  PRIMARY KEY (`idrh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rh`
--

LOCK TABLES `rh` WRITE;
/*!40000 ALTER TABLE `rh` DISABLE KEYS */;
/*!40000 ALTER TABLE `rh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_contrato`
--

DROP TABLE IF EXISTS `tipo_contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_contrato` (
  `idtipo_contrato` int NOT NULL AUTO_INCREMENT,
  `tipo_contrato` varchar(20) NOT NULL,
  PRIMARY KEY (`idtipo_contrato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_contrato`
--

LOCK TABLES `tipo_contrato` WRITE;
/*!40000 ALTER TABLE `tipo_contrato` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_documento` (
  `idtipo_documento` int NOT NULL AUTO_INCREMENT,
  `tipo_documento` int NOT NULL,
  PRIMARY KEY (`idtipo_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documento`
--

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_libreta`
--

DROP TABLE IF EXISTS `tipo_libreta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_libreta` (
  `idtipo_libreta` int NOT NULL AUTO_INCREMENT,
  `tipo_libreta` int NOT NULL,
  PRIMARY KEY (`idtipo_libreta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_libreta`
--

LOCK TABLES `tipo_libreta` WRITE;
/*!40000 ALTER TABLE `tipo_libreta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_libreta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-30 22:37:36
