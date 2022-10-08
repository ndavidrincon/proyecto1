-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: salud
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contratista`
--

DROP TABLE IF EXISTS contratista;
CREATE TABLE contratista (
  id int NOT NULL AUTO_INCREMENT,
  nombre varchar(45) NOT NULL,
  tarjeta_profesional int NOT NULL,
  PRIMARY KEY (id)
) ;
--
-- Dumping data for table `contratista`



--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS contrato;
CREATE TABLE contrato (
  id int NOT NULL AUTO_INCREMENT,
  fecha_inicio date NOT NULL,
  fecha_fin date NOT NULL,
  id_contratista int NOT NULL,
  PRIMARY KEY (id,id_contratista),
  FOREIGN KEY (id_contratista) REFERENCES contratista (id)
) ;

--
-- Dumping data for table `contrato`
--


--
-- Table structure for table `documento`
--

DROP TABLE IF EXISTS documento;
CREATE TABLE documento (
  id int NOT NULL AUTO_INCREMENT,
  nombre varchar(45) NOT NULL, 
  id_requerimiento int NOT NULL, 
  PRIMARY KEY (id),
  FOREIGN KEY (id_requerimiento) REFERENCES requerimiento (id)
) ;

--
-- Dumping data for table `documento`
--
--
-- Table structure for table `requerimiento`
--

DROP TABLE IF EXISTS requerimiento;
CREATE TABLE requerimiento (
  id int NOT NULL AUTO_INCREMENT,
  tipo varchar(45) NOT NULL,
  PRIMARY KEY (id)
) ;

--
-- Dumping data for table `requerimiento`
--


--
-- Table structure for table `trabajador_contratista`
--

DROP TABLE IF EXISTS trabajador_contratista;
CREATE TABLE trabajador_contratista (
  id int NOT NULL AUTO_INCREMENT,
  nombre varchar(45) NOT NULL,
  cedula int NOT NULL,
  edad int NOT NULL,
  id_contratista int DEFAULT NULL,
  PRIMARY KEY (id),
 FOREIGN KEY (id_contratista) REFERENCES contratista (id)
) ;

--
-- Dumping data for table `trabajador_contratista`
--


--
-- Table structure for table `trabajador_contrato`
--

DROP TABLE IF EXISTS trabajador_contrato;
CREATE TABLE trabajador_contrato (
  id int NOT NULL AUTO_INCREMENT,
  id_trabajador int NOT NULL,
  id_contrato int NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id_contrato) REFERENCES contrato (id),
  FOREIGN KEY (id_trabajador) REFERENCES trabajador_contratista (id)
  
) ;


--
-- Dumping data for table `trabajador_contrato`
--


--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS usuario;
CREATE TABLE usuario (
  id int NOT NULL AUTO_INCREMENT,
  nombre varchar(45) NOT NULL,
  PRIMARY KEY (id)
) ;

--
-- Dumping data for table `usuario`
--



-- Dumping events for database 'salud'
--
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
