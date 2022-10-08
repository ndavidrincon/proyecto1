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
-- Dumping data for table `contratista`
--

INSERT INTO `contratista` VALUES (1,'Carlos Garrido',3456);

--
-- Dumping data for table `contrato`
--

INSERT INTO `contrato` VALUES (1,'2022-01-01','2022-03-01',1);

--
-- Dumping data for table `documento`
--
insert into documento  values (1,'certificado afiliacion arl', 1);
insert into documento  values (2,'certificado eps',2);
insert into documento  values (3,'certificado afiliacion parafiscales',3);
insert into documento  values (4,'certi aprobacion curso alturas',4);
insert into documento  values (5,'certi aprobacion curso espacios confinados',5);


--
-- Dumping data for table `requerimiento`
--

INSERT INTO `requerimiento` VALUES (1,'arl');
INSERT INTO `requerimiento` VALUES (2,'eps');
INSERT INTO `requerimiento` VALUES (3,'parafiscales');
INSERT INTO `requerimiento` VALUES (4,'formacion alturas');
INSERT INTO `requerimiento` VALUES (5,'formacion espacios confinados');

--
-- Dumping data for table `trabajador_contratista`
--

INSERT INTO `trabajador_contratista` VALUES (1,'Nicolas Caicedo',2909267,40,1);
INSERT INTO `trabajador_contratista` VALUES (2,'Santiago Zapata',19187551,30,1);

--
-- Dumping data for table `trabajador_contrato`
--

INSERT INTO `trabajador_contrato`  VALUES (1,1,1);
INSERT INTO `trabajador_contrato`  VALUES (2,2,1);

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` VALUES (1,'Ivan Steves');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
