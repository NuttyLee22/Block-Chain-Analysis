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
-- Table structure for table `uf`
--

DROP TABLE IF EXISTS `uf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uf` (
  `UF` varchar(2) NOT NULL,
  `Descricao` varchar(50) NOT NULL,
  `Regiao` varchar(50) NOT NULL,
  PRIMARY KEY (`UF`),
  UNIQUE KEY `UF_UNIQUE` (`UF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uf`
--

LOCK TABLES `uf` WRITE;
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
INSERT INTO `uf` VALUES ('AC','Acre','Norte'),('AL','Alagoas','Nordeste'),('AM','Amazonas','Norte'),('AP','Amapa','Norte'),('BA','Bahia','Nordeste'),('CE','Ceara','Nordeste'),('DF','Distrito Federal','Centro Oeste'),('ES','Espirito Santo','Sudeste'),('GO','Goias','Centro Oeste'),('MA','Maranhao','Nordeste'),('MG','Minas Gerais','Sudeste'),('MS','Mato Grosso do Sul','Centro Oeste'),('MT','Mato Grosso','Centro Oeste'),('PA','Para','Norte'),('PB','Paracba','Nordeste'),('PE','Pernambuco','Nordeste'),('PI','Piauc','Nordeste'),('PR','Parana','Sul'),('RJ','Rio de Janeiro','Sudeste'),('RN','Rio Grande do Norte','Nordeste'),('RO','Rondonia','Norte'),('RR','Roraima','Norte'),('RS','Rio Grande do Sul','Sul'),('SC','Santa Catarina','Sul'),('SE','Sergipe','Nordeste'),('SP','Sao Paulo','Sudeste'),('TO','Tocantins','Norte');
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;
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
