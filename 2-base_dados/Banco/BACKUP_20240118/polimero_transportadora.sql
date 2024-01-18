-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: polimero
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `transportadora`
--

DROP TABLE IF EXISTS `transportadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transportadora` (
  `Transportadora_numero` int NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `CNPJ` varchar(18) DEFAULT NULL,
  `IE` varchar(25) NOT NULL,
  `IM` varchar(14) NOT NULL,
  `Telefones` varchar(60) DEFAULT NULL,
  `Numero` int NOT NULL,
  `Grupo_numero` int NOT NULL,
  `Cod_log` int NOT NULL,
  PRIMARY KEY (`Transportadora_numero`,`Grupo_numero`,`Cod_log`),
  KEY `fk_Transportadora_Grupo1_idx` (`Grupo_numero`),
  KEY `fk_Transportadora_Endereco1_idx` (`Cod_log`),
  CONSTRAINT `fk_Transportadora_Endereco1` FOREIGN KEY (`Cod_log`) REFERENCES `endereco` (`Cod_log`),
  CONSTRAINT `fk_Transportadora_Grupo1` FOREIGN KEY (`Grupo_numero`) REFERENCES `grupo` (`Grupo_numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportadora`
--

LOCK TABLES `transportadora` WRITE;
/*!40000 ALTER TABLE `transportadora` DISABLE KEYS */;
INSERT INTO `transportadora` VALUES (1,'Transportadora Expressa Ltda','12.345.678/0001-90','123456789','98765432','(11) 91234-5678',1234,9,11394),(2,'Transportadora Velozes S/A','98.765.432/0001-10','987654321','12345678','(22) 99876-5432',564,9,21100),(3,'Translogistica Nacional Ltda','34.567.890/0001-21','345678901','87654321','(33) 98765-4321',678,9,34651),(4,'TransRapido Ltda','23.456.789/0001-30','234567890','76543210','(44) 87654-3210',7789,9,38398),(5,'Transportes Eficientes S/A','56.789.012/0001-43','567890123','65432109','(55) 76543-2109',3456,9,38401),(6,'Transportadora Agil Ltda','67.890.123/0001-54','678901234','54321098','(66) 65432-1098',456,9,38666),(7,'Transportes Rapidos e Seguros Ltda','78.901.234/0001-65','789012345','43210987','(77) 32109-8765',433,9,38725),(8,'Transportadora Logistica Ltda','89.012.345/0001-76','890123456','32109876','(88) 54321-0987',2235,9,38777),(9,'TransExpress Brasil S/A','90.123.456/0001-87','901234567','21098765','(99) 65432-1098',5674,9,38818),(10,'Transportadora Agil e Rapida Ltda','21.098.765/0001-98','210987654','9876543','(00) 98765-4321',2345,9,38824);
/*!40000 ALTER TABLE `transportadora` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-18 20:01:53
