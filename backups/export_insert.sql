<<<<<<< HEAD
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Gerente','Responsable de toda la operación'),(2,'Analista','Análisis de datos e informes'),(3,'Desarrollador','Desarrollo de software'),(4,'Contador','Manejo de contabilidad'),(5,'Vendedor','Ventas y atención al cliente'),(6,'Ingeniero','Desarrollo de proyectos de ingeniería'),(7,'Abogado','Asesoría legal'),(8,'Director','Dirección y liderazgo'),(9,'Técnico','Soporte técnico y mantenimiento'),(10,'Consultor','Consultoría empresarial');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Medellín',1),(2,'Bogotá',2),(3,'La Plata',3),(4,'São Paulo',4),(5,'CdMéxico',5),(6,'Santiago de Chile',6),(7,'Lima',7),(8,'Quito',8),(9,'Caracas',9),(10,'La Paz',10);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` VALUES (1,12345,1),(2,67890,2),(3,11223,3),(4,44556,4),(5,77889,5);
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
  `departamento` varchar(30) NOT NULL,
  `idpais` int DEFAULT NULL,
  PRIMARY KEY (`iddepartamento`),
  KEY `idpais` (`idpais`),
  CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`idpais`) REFERENCES `pais` (`idpais`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Antioquia',1),(2,'Cundinamarca',2),(3,'Buenos Aires',3),(4,'São Paulo',4),(5,'Cde México',5),(6,'Santiago',6),(7,'Lima',7),(8,'Quito',8),(9,'Caracas',9),(10,'La Paz',10);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,900123456,1),(2,900654321,2),(3,900987654,3),(4,901234567,4),(5,901345678,5),(6,901456789,6),(7,901567890,7),(8,901678901,8),(9,901789012,9),(10,901890123,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_cargo`
--

LOCK TABLES `empresa_cargo` WRITE;
/*!40000 ALTER TABLE `empresa_cargo` DISABLE KEYS */;
INSERT INTO `empresa_cargo` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
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
  `genero` varchar(20) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Masculino'),(2,'Femenino'),(3,'Otro'),(4,'Prefiero no decir');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion`
--

LOCK TABLES `institucion` WRITE;
/*!40000 ALTER TABLE `institucion` DISABLE KEYS */;
INSERT INTO `institucion` VALUES (1,800123456,1),(2,800654321,2),(3,800987654,3),(4,801234567,4),(5,801345678,5),(6,801456789,6),(7,801567890,7),(8,801678901,8),(9,801789012,9),(10,801890123,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion_persona`
--

LOCK TABLES `institucion_persona` WRITE;
/*!40000 ALTER TABLE `institucion_persona` DISABLE KEYS */;
INSERT INTO `institucion_persona` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
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
  `pais` varchar(30) NOT NULL,
  PRIMARY KEY (`idpais`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Colombia'),(2,'Argentina'),(3,'Brasil'),(4,'México'),(5,'Chile'),(6,'Perú'),(7,'Ecuador'),(8,'Venezuela'),(9,'Bolivia'),(10,'Paraguay');
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
  `telefono` varchar(20) DEFAULT NULL,
  `idgenero` int DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `libreta_militar` varchar(10) DEFAULT NULL,
  `idtipo_libreta` int DEFAULT NULL,
  `idrh` int DEFAULT NULL,
  `idciudad` int DEFAULT NULL,
  `idinstitucion` int DEFAULT NULL,
  PRIMARY KEY (`idpersona`),
  UNIQUE KEY `idpersona` (`idpersona`),
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Juan','Carlos','Pérez','Gómez',123456789,1,'juan@example.com','Calle 123','3123456789',1,'1990-05-15','12345',1,1,1,1),(2,'María','Elena','Rodríguez','López',987654321,2,'maria@example.com','Carrera 456','3109876543',2,'1992-08-10','67890',3,2,1,2),(3,'Pedro','Luis','Sánchez','Torres',112233445,3,'pedro@example.com','Avenida 789','3001234567',1,'1985-12-25','34567',3,3,3,3),(4,'Ana','Isabel','Martínez','Hernández',223344556,4,'ana@example.com','Calle 111','3204567890',2,'1995-03-12','45678',3,2,2,4),(5,'Laura','Patricia','Ramírez','Moreno',334455667,5,'laura@example.com','Carrera 222','3156789012',2,'1998-07-23','56789',2,5,4,5),(6,'Carlos','Andrés','García','Rivas',445566778,1,'carlos@example.com','Avenida 333','3198765432',1,'1993-11-14','67890',3,6,1,6),(7,'Luis','Fernando','Fernández','Ruiz',556677889,2,'luis@example.com','Calle 444','3112345678',1,'1987-09-09','78901',1,6,7,7),(8,'Andrea','Carolina','Suárez','Díaz',667788990,3,'andrea@example.com','Carrera 555','3134567890',2,'1991-06-01','89012',2,2,8,8),(9,'Diana','Paola','Vargas','Castillo',778899001,4,'diana@example.com','Avenida 666','3145678901',2,'1996-10-27','90123',3,4,9,9),(10,'José','Antonio','Ortiz','Mejía',889900112,5,'jose@example.com','Calle 777','3167890123',1,'1982-02-18','01234',1,2,10,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_referencia`
--

LOCK TABLES `persona_referencia` WRITE;
/*!40000 ALTER TABLE `persona_referencia` DISABLE KEYS */;
INSERT INTO `persona_referencia` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
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
  `telefono` varchar(20) NOT NULL,
  `mail` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idreferencia_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencia_personal`
--

LOCK TABLES `referencia_personal` WRITE;
/*!40000 ALTER TABLE `referencia_personal` DISABLE KEYS */;
INSERT INTO `referencia_personal` VALUES (1,'3123456789','juan@example.com'),(2,'3109876543','maria@example.com'),(3,'3001234567','pedro@example.com'),(4,'3204567890','ana@example.com'),(5,'3156789012','laura@example.com'),(6,'3198765432','carlos@example.com'),(7,'3112345678','luis@example.com'),(8,'3134567890','andrea@example.com'),(9,'3145678901','diana@example.com'),(10,'3167890123','jose@example.com');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rh`
--

LOCK TABLES `rh` WRITE;
/*!40000 ALTER TABLE `rh` DISABLE KEYS */;
INSERT INTO `rh` VALUES (1,'O+'),(2,'A+'),(3,'B+'),(4,'AB+'),(5,'O-'),(6,'A-'),(7,'B-'),(8,'AB-');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_contrato`
--

LOCK TABLES `tipo_contrato` WRITE;
/*!40000 ALTER TABLE `tipo_contrato` DISABLE KEYS */;
INSERT INTO `tipo_contrato` VALUES (1,'Indefinido'),(2,'Temporal'),(3,'Por Obra o Labor'),(4,'Pasantía'),(5,'Consultoría');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documento`
--

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
INSERT INTO `tipo_documento` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_libreta`
--

LOCK TABLES `tipo_libreta` WRITE;
/*!40000 ALTER TABLE `tipo_libreta` DISABLE KEYS */;
INSERT INTO `tipo_libreta` VALUES (1,1),(2,2),(3,3);
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

-- Dump completed on 2024-09-06  4:12:58
=======
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Gerente','Responsable de toda la operación'),(2,'Analista','Análisis de datos e informes'),(3,'Desarrollador','Desarrollo de software'),(4,'Contador','Manejo de contabilidad'),(5,'Vendedor','Ventas y atención al cliente'),(6,'Ingeniero','Desarrollo de proyectos de ingeniería'),(7,'Abogado','Asesoría legal'),(8,'Director','Dirección y liderazgo'),(9,'Técnico','Soporte técnico y mantenimiento'),(10,'Consultor','Consultoría empresarial');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Medellín',1),(2,'Bogotá',2),(3,'La Plata',3),(4,'São Paulo',4),(5,'CdMéxico',5),(6,'Santiago de Chile',6),(7,'Lima',7),(8,'Quito',8),(9,'Caracas',9),(10,'La Paz',10);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` VALUES (1,12345,1),(2,67890,2),(3,11223,3),(4,44556,4),(5,77889,5);
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
  `departamento` varchar(30) NOT NULL,
  `idpais` int DEFAULT NULL,
  PRIMARY KEY (`iddepartamento`),
  KEY `idpais` (`idpais`),
  CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`idpais`) REFERENCES `pais` (`idpais`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Antioquia',1),(2,'Cundinamarca',2),(3,'Buenos Aires',3),(4,'São Paulo',4),(5,'Cde México',5),(6,'Santiago',6),(7,'Lima',7),(8,'Quito',8),(9,'Caracas',9),(10,'La Paz',10);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,900123456,1),(2,900654321,2),(3,900987654,3),(4,901234567,4),(5,901345678,5),(6,901456789,6),(7,901567890,7),(8,901678901,8),(9,901789012,9),(10,901890123,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_cargo`
--

LOCK TABLES `empresa_cargo` WRITE;
/*!40000 ALTER TABLE `empresa_cargo` DISABLE KEYS */;
INSERT INTO `empresa_cargo` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
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
  `genero` varchar(20) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Masculino'),(2,'Femenino'),(3,'Otro'),(4,'Prefiero no decir');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion`
--

LOCK TABLES `institucion` WRITE;
/*!40000 ALTER TABLE `institucion` DISABLE KEYS */;
INSERT INTO `institucion` VALUES (1,800123456,1),(2,800654321,2),(3,800987654,3),(4,801234567,4),(5,801345678,5),(6,801456789,6),(7,801567890,7),(8,801678901,8),(9,801789012,9),(10,801890123,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion_persona`
--

LOCK TABLES `institucion_persona` WRITE;
/*!40000 ALTER TABLE `institucion_persona` DISABLE KEYS */;
INSERT INTO `institucion_persona` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
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
  `pais` varchar(30) NOT NULL,
  PRIMARY KEY (`idpais`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Colombia'),(2,'Argentina'),(3,'Brasil'),(4,'México'),(5,'Chile'),(6,'Perú'),(7,'Ecuador'),(8,'Venezuela'),(9,'Bolivia'),(10,'Paraguay');
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
  `telefono` varchar(20) DEFAULT NULL,
  `idgenero` int DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `libreta_militar` varchar(10) DEFAULT NULL,
  `idtipo_libreta` int DEFAULT NULL,
  `idrh` int DEFAULT NULL,
  `idciudad` int DEFAULT NULL,
  `idinstitucion` int DEFAULT NULL,
  PRIMARY KEY (`idpersona`),
  UNIQUE KEY `idpersona` (`idpersona`),
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Juan','Carlos','Pérez','Gómez',123456789,1,'juan@example.com','Calle 123','3123456789',1,'1990-05-15','12345',1,1,1,1),(2,'María','Elena','Rodríguez','López',987654321,2,'maria@example.com','Carrera 456','3109876543',2,'1992-08-10','67890',3,2,1,2),(3,'Pedro','Luis','Sánchez','Torres',112233445,3,'pedro@example.com','Avenida 789','3001234567',1,'1985-12-25','34567',3,3,3,3),(4,'Ana','Isabel','Martínez','Hernández',223344556,4,'ana@example.com','Calle 111','3204567890',2,'1995-03-12','45678',3,2,2,4),(5,'Laura','Patricia','Ramírez','Moreno',334455667,5,'laura@example.com','Carrera 222','3156789012',2,'1998-07-23','56789',2,5,4,5),(6,'Carlos','Andrés','García','Rivas',445566778,1,'carlos@example.com','Avenida 333','3198765432',1,'1993-11-14','67890',3,6,1,6),(7,'Luis','Fernando','Fernández','Ruiz',556677889,2,'luis@example.com','Calle 444','3112345678',1,'1987-09-09','78901',1,6,7,7),(8,'Andrea','Carolina','Suárez','Díaz',667788990,3,'andrea@example.com','Carrera 555','3134567890',2,'1991-06-01','89012',2,2,8,8),(9,'Diana','Paola','Vargas','Castillo',778899001,4,'diana@example.com','Avenida 666','3145678901',2,'1996-10-27','90123',3,4,9,9),(10,'José','Antonio','Ortiz','Mejía',889900112,5,'jose@example.com','Calle 777','3167890123',1,'1982-02-18','01234',1,2,10,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_referencia`
--

LOCK TABLES `persona_referencia` WRITE;
/*!40000 ALTER TABLE `persona_referencia` DISABLE KEYS */;
INSERT INTO `persona_referencia` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
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
  `telefono` varchar(20) NOT NULL,
  `mail` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idreferencia_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencia_personal`
--

LOCK TABLES `referencia_personal` WRITE;
/*!40000 ALTER TABLE `referencia_personal` DISABLE KEYS */;
INSERT INTO `referencia_personal` VALUES (1,'3123456789','juan@example.com'),(2,'3109876543','maria@example.com'),(3,'3001234567','pedro@example.com'),(4,'3204567890','ana@example.com'),(5,'3156789012','laura@example.com'),(6,'3198765432','carlos@example.com'),(7,'3112345678','luis@example.com'),(8,'3134567890','andrea@example.com'),(9,'3145678901','diana@example.com'),(10,'3167890123','jose@example.com');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rh`
--

LOCK TABLES `rh` WRITE;
/*!40000 ALTER TABLE `rh` DISABLE KEYS */;
INSERT INTO `rh` VALUES (1,'O+'),(2,'A+'),(3,'B+'),(4,'AB+'),(5,'O-'),(6,'A-'),(7,'B-'),(8,'AB-');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_contrato`
--

LOCK TABLES `tipo_contrato` WRITE;
/*!40000 ALTER TABLE `tipo_contrato` DISABLE KEYS */;
INSERT INTO `tipo_contrato` VALUES (1,'Indefinido'),(2,'Temporal'),(3,'Por Obra o Labor'),(4,'Pasantía'),(5,'Consultoría');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documento`
--

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
INSERT INTO `tipo_documento` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_libreta`
--

LOCK TABLES `tipo_libreta` WRITE;
/*!40000 ALTER TABLE `tipo_libreta` DISABLE KEYS */;
INSERT INTO `tipo_libreta` VALUES (1,1),(2,2),(3,3);
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

-- Dump completed on 2024-09-06  4:12:58
>>>>>>> 52bf74415dcd2ae4c45d583a9f35edee5e40abe6
