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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `Cliente_numero` int NOT NULL,
  `Cliente` varchar(80) NOT NULL,
  `CNPJ` varchar(20) DEFAULT NULL,
  `IE` varchar(25) DEFAULT NULL,
  `IM` varchar(14) DEFAULT NULL,
  `Telefones` varchar(60) DEFAULT NULL,
  `Numero_compra` int NOT NULL,
  `Numero_entrega` int NOT NULL,
  `Grupo_numero` int NOT NULL,
  `Cod_log_compra` int NOT NULL,
  `Cod_log_entrega` int NOT NULL,
  PRIMARY KEY (`Cliente_numero`,`Grupo_numero`,`Cod_log_compra`,`Cod_log_entrega`),
  UNIQUE KEY `CNPJ_UNIQUE` (`CNPJ`),
  KEY `fk_Cliente_Grupo_idx` (`Grupo_numero`),
  KEY `fk_Cliente_Endereco1_idx` (`Cod_log_compra`),
  KEY `fk_Cliente_Endereco2_idx` (`Cod_log_entrega`),
  CONSTRAINT `fk_Cliente_Endereco1` FOREIGN KEY (`Cod_log_compra`) REFERENCES `endereco` (`Cod_log`),
  CONSTRAINT `fk_Cliente_Endereco2` FOREIGN KEY (`Cod_log_entrega`) REFERENCES `endereco` (`Cod_log`),
  CONSTRAINT `fk_Cliente_Grupo` FOREIGN KEY (`Grupo_numero`) REFERENCES `grupo` (`Grupo_numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Desenvolvimento de Engenharia Industrial Ltda','98.765.432/0001-98','987654321','12345678','(84) 99876-5432',4789,4789,6,115567,115567),(2,'Desenvolvimento de Equipamentos Industriais Ltda','32.109.876/0001-61','321098765','76543210','(13) 65432-1098',4961,4961,6,253427,253427),(3,'Desenvolvimento de Materiais Avancados Ltda','34.567.890/0001-40','345678901','98765432','(64) 76543-2109',4667,4667,5,199382,199382),(4,'Desenvolvimento de Polimeros de Alta Performance Ltda','43.210.987/0001-50','432109876','9876543','(64) 21098-7654',2856,2856,6,152786,152786),(5,'Desenvolvimento de Polimeros Especiais em Engenharia Ltda','43.210.987/0001-09','432109876','9876543','(64) 21098-7654',2856,1256,6,152786,152780),(6,'Desenvolvimento de Solucoes em Polimeros Ltda','89.123.456/0001-96','891234567','54321098','(24) 65432-1098',476,476,3,25315,25315),(7,'Desenvolvimento de Solucoes Industriais Ltda','12.345.678/0001-16','123456789','76543210','(24) 76543-2109',2563,2563,6,276542,276542),(8,'Desenvolvimento de Solucoes Tecnologicas Ltda','23.456.789/0001-54','234567891','98765432','(74) 91234-5678',2345,2345,4,271924,271924),(9,'Desenvolvimento de Tecnologia Avancada Ltda','78.912.345/0001-32','789123456','21098765','(54) 65432-1098',1701,1701,7,119034,119034),(10,'Desenvolvimento de Tecnologia em Polimeros Ltda','12.345.678/0001-21','123456789','12345678','(84) 99876-5432',4789,4789,6,115567,115567),(11,'Desenvolvimento de Tecnologia Industrial em Polimeros Ltda','54.321.098/0001-94','543210987','9876543','(04) 32109-8765',3724,3724,6,158219,158219),(12,'Desenvolvimento de Tecnologia Industrial Ltda','17.601.925/0001-23','176019252','12345678','(22) 99876-5432',4789,4789,6,115567,115567),(13,'Desenvolvimento de Tecnologias Industriais Ltda','87.654.321/0001-49','876543210','21098765','(92) 09876-5432',499,6578,1,169805,169809),(14,'Desenvolvimento e Pesquisa Industrial Ltda','87.654.321/0001-05','876543210','76543210','(52) 54321-0987',1997,1997,3,245112,245112),(15,'Desenvolvimento em Engenharia de Materiais Industriais Ltda','66.777.888/0001-99','677788889','54321098','(66) 65432-1098',476,476,3,25315,25315),(16,'Desenvolvimento em Engenharia de Materiais Tecnologicos Ltda','54.321.098/0001-76','543210987','87654321','(33) 98765-4321',1523,1523,2,90927,90927),(17,'Desenvolvimento em Engenharia de Polimeros Ltda','67.890.123/0001-49','678901234','21098765','(94) 65432-1098',3776,3776,6,177623,177623),(18,'Desenvolvimento em Engenharia e Tecnologia Ltda','89.123.456/0001-87','891234567','54321098','(24) 65432-1098',476,476,3,25315,25315),(19,'Desenvolvimento em Engenharia Industrial Ltda','17.203.541/0001-89','172035419','12345678','(22) 99876-5432',4789,4789,6,115567,115567),(20,'Desenvolvimento em Engenharia Tecnologica Ltda','45.539.482/0001-21','455394821','65432109','(55) 76543-2109',2950,2950,7,129879,129879),(21,'Desenvolvimento em Inovacao Industrial Avancada Ltda','10.987.654/0001-32','109876543','98765432','(74) 98765-4321',4723,4723,4,22818,22818),(22,'Desenvolvimento em Inovacao Industrial Ltda','10.987.654/0001-87','109876543','98765432','(74) 98765-4321',4723,4723,4,22818,22818),(23,'Desenvolvimento em Inovacao Tecnologica Ltda','21.987.654/0001-99','219876549','54321098','(66) 65432-1098',476,6547,3,25315,25317),(24,'Desenvolvimento em Polimeros de Alta Performance Ltda','67.891.234/0001-75','678912345','65432109','(14) 76543-2109',2950,2950,7,129879,129879),(25,'Desenvolvimento em Polimeros Especiais de Engenharia Ltda','32.109.876/0001-83','321098765','21098765','(94) 65432-1098',4992,4992,6,293282,293282),(26,'Desenvolvimento em Polimeros Sustentaveis Ltda','98.765.432/0001-94','987654321','21098765','(54) 21098-7654',4756,4756,5,229864,229864),(27,'Desenvolvimento em Solucoes Tecnologicas Ltda','37.318.961/0001-59','373189615','43210987','(77) 32109-8765',3893,987,5,186755,186753),(28,'Desenvolvimento em Tecnologia Avancada de Engenharia Ltda','87.654.321/0001-65','876543210','54321098','(66) 65432-1098',476,476,3,25315,25315),(29,'Desenvolvimento em Tecnologia Avancada de Materiais Ltda','32.109.876/0001-98','321098769','98765432','(11) 91234-5678',2345,2345,4,271924,271924),(30,'Desenvolvimento em Tecnologia Avancada Ltda','89.123.456/0001-21','891234567','54321098','(24) 65432-1098',476,476,3,25315,25315),(31,'Desenvolvimento em Tecnologia de Engenharia Industrial Ltda','87.654.321/0001-76','876543210','87654321','(14) 21098-7654',1997,765,4,245112,245110),(32,'Desenvolvimento em Tecnologia de Engenharia Ltda','87.654.321/0001-21','876543210','87654321','(14) 21098-7654',1997,1997,4,245112,245112),(33,'Desenvolvimento em Tecnologia de Materiais Avancados Ltda','76.543.210/0001-32','891234567','54321098','(66) 65432-1098',476,476,3,25315,25315),(34,'Desenvolvimento em Tecnologia de Polimeros Ltda','90.123.456/0001-49','901234567','21098765','(74) 21098-7654',3927,7645,4,154832,154834),(35,'Desenvolvimento em Tecnologia Industrial Ltda','22.987.654/0001-55','229876545','12345678','(22) 99876-5432',4789,4789,6,115567,115567),(36,'Desenvolvimento em Tecnologia Industrial Sustentavel Ltda','50.555.666/0001-77','505556677','76543210','(44) 87654-3210',3721,3721,4,201383,201383),(37,'Desenvolvimento em Tecnologia Sustentavel Ltda','12.345.678/0001-90','123456789','98765432','(11) 91234-5678',2345,2345,4,271924,271924),(38,'Desenvolvimento Industrial de Alta Performance Ltda','90.123.456/0001-57','901234567','76543210','(44) 76543-2109',4350,4350,3,28019,28019),(39,'Desenvolvimento Industrial de Tecnologia Ltda','24.987.654/0001-35','249876543','21098765','(99) 65432-1098',1701,1701,7,119034,119034),(40,'Desenvolvimento Industrial em Polimeros Ltda','78.912.345/0001-49','789123456','21098765','(54) 65432-1098',1701,8734,7,119034,119031),(41,'Desenvolvimento Industrial em Tecnologia Ltda','58.604.715/0001-28','586047152','32109876','(88) 54321-0987',4822,4822,2,290144,290144),(42,'Desenvolvimento Industrial Tecnologico Ltda','89.123.456/0001-83','891234567','21098765','(44) 21098-7654',4023,4023,6,295871,295871),(43,'Desenvolvimento Tecnologico Avancado Ltda','78.912.345/0001-10','789123456','21098765','(54) 65432-1098',1701,765,7,119034,119036),(44,'Desenvolvimento Tecnologico em Componentes Ltda','55.539.281/0001-47','555392819','65432109','(55) 76543-2109',2950,2950,7,129879,129879),(45,'Desenvolvimento Tecnologico em Engenharia de Solucoes Industriais Ltda','43.210.987/0001-67','432109876','9876543','(00) 21098-7654',2856,2856,6,152786,152786),(46,'Desenvolvimento Tecnologico em Engenharia Industrial Avancada Ltda','10.111.222/0001-33','101112233','9876543','(00) 21098-7654',2856,2856,6,152786,152786),(47,'Desenvolvimento Tecnologico em Engenharia Industrial Ltda','11.222.333/0001-44','112223334','98765432','(11) 98765-4321',2345,956,4,271924,271922),(48,'Desenvolvimento Tecnologico em Engenharia Ltda','89.123.456/0001-09','891234567','54321098','(24) 65432-1098',476,476,3,25315,25315),(49,'Desenvolvimento Tecnologico em Industria Ltda','33.485.926/0001-99','334859263','87654321','(33) 98765-4321',1523,1523,2,90927,90927),(50,'Desenvolvimento Tecnologico em Materiais Ltda','87.654.321/0001-50','876543210','21098765','(04) 21098-7654',3002,3002,5,287413,287413),(51,'Desenvolvimento Tecnologico em Polimeros Ltda','23.456.789/0001-90','234567891','98765432','(74) 91234-5678',2345,2345,4,271924,271924),(52,'Desenvolvimento Tecnologico em Solucoes Industriais Ltda','108.539.281/0001-47','108539281','65432109','(55) 76543-2109',2950,6743,7,129879,129882),(53,'Desenvolvimento Tecnologico Industrial Ltda','10.987.654/0001-61','109876543','98765432','(12) 98765-4321',4723,4723,4,22818,22818),(54,'Engenharia de Inovacao Tecnologica em Materiais Especiais Ltda','98.765.432/0001-45','789123456','21098765','(99) 65432-1098',1701,1701,7,119034,119034),(55,'Engenharia de Inovacao Tecnologica em Materiais Industriais Ltda','18.765.432/0001-56','876543210','21098765','(99) 65432-1098',1701,98,7,119034,119032),(56,'Engenharia de Materiais Avancados e Solucoes Ltda','45.678.912/0001-54','456789123','87654321','(94) 98765-4321',1523,1523,2,90927,90927),(57,'Engenharia de Materiais Avancados em Polimeros Ltda','34.567.891/0001-27','345678912','43210987','(34) 32109-8765',3893,3893,5,186755,186755),(58,'Engenharia de Materiais Avancados Ltda','45.678.912/0001-98','456789123','87654321','(94) 98765-4321',1523,1523,2,90927,90927),(59,'Engenharia de Materiais de Alto Desempenho em Polimeros Ltda','34.567.891/0001-76','345678912','43210987','(34) 32109-8765',3893,3893,5,186755,186755),(60,'Engenharia de Materiais Especiais em Polimeros Ltda','45.678.912/0001-33','456789123','87654321','(94) 98765-4321',1523,1523,2,90927,90927),(61,'Engenharia de Materiais Especiais Ltda','98.765.432/0001-05','987654321','87654321','(43) 98765-4321',3748,534,3,199872,199870),(62,'Engenharia de Materiais Especiais Tecnologicos Ltda','40.444.555/0001-66','404455566','87654321','(33) 98765-4321',1523,1523,2,90927,90927),(63,'Engenharia de Materiais Industriais Ltda','89.012.345/0001-75','890123456','54321098','(14) 76543-2109',4999,4999,1,303017,303017),(64,'Engenharia de Materiais Polimericos Avancados Ltda','45.678.912/0001-32','456789123','87654321','(94) 98765-4321',1523,8756,2,90927,290925),(65,'Engenharia de Materiais Tecnologicos Ltda','70.987.654/0001-00','709876540','43210987','(77) 32109-8765',3893,3893,5,186755,186755),(66,'Engenharia de Polimeros Especiais Ltda','21.098.765/0001-27','210987654','9876543','(74) 98765-4321',2178,2178,2,303183,303183),(67,'Engenharia em Materiais Avancados Ltda','21.098.765/0001-71','210987654','12345678','(84) 99876-5432',4289,4289,6,189276,189276),(68,'Engenharia em Materiais Industriais Ltda','34.567.891/0001-61','345678912','65432109','(14) 65432-1098',4756,4756,4,229864,229864),(69,'Engenharia em Polimeros de Alto Desempenho Ltda','34.567.890/0001-27','345678901','12345678','(54) 32109-8765',3134,3134,5,187463,187463),(70,'Engenharia em Processos Industriais Ltda','90.123.456/0001-28','901234567','21098765','(44) 43210-9876',2085,8723,4,290561,290564),(71,'Industria de Componentes Especiais Avancados Ltda','67.891.234/0001-98','678912345','65432109','(14) 76543-2109',2950,2950,7,129879,129879),(72,'Industria de Componentes Especiais Ltda','67.891.234/0001-10','678912345','65432109','(14) 76543-2109',2950,2950,7,129879,129879),(73,'Industria de Componentes Industriais Avancados Ltda','67.891.234/0001-76','678912345','65432109','(14) 76543-2109',2950,2950,7,129879,129879),(74,'Industria de Componentes Industriais Ltda','67.891.234/0001-21','678912345','65432109','(14) 76543-2109',2950,1234,7,129879,129881),(75,'Industria de Componentes Tecnologicos Avancados Ltda','55.666.777/0001-88','556667778','65432109','(55) 76543-2109',2950,2950,7,129879,129879),(76,'Industria de Componentes Tecnologicos de Engenharia Ltda','60.666.777/0001-88','606667778','65432109','(55) 76543-2109',2950,2950,7,129879,129879),(77,'Industria de Componentes Tecnologicos Industriais Ltda','72.109.876/0001-54','210987654','65432109','(55) 76543-2109',2950,2950,7,129879,129879),(78,'Industria de Componentes Tecnologicos Ltda','50.987.654/0001-88','509876548','65432109','(55) 76543-2109',2950,976,7,129879,129877),(79,'Industria de Desenvolvimento em Materiais Polimericos Ltda','76.543.210/0001-16','765432101','54321098','(64) 54321-0987',3633,3633,4,281465,281465),(80,'Industria de Desenvolvimento em Polimeros Ltda','78.901.234/0001-16','789012345','9876543','(44) 76543-2109',4211,4211,6,224718,224718),(81,'Industria de Desenvolvimento em Polimeros Sustentaveis Ltda','32.109.876/0001-32','321098765','21098765','(94) 65432-1098',4992,4992,6,293282,293282),(82,'Industria de Desenvolvimento em Tecnologia e Inovacao Ltda','32.109.876/0001-54','321098765','21098765','(94) 65432-1098',4992,7689,6,293282,293284),(83,'Industria de Desenvolvimento em Tecnologia Ltda','51.875.642/0001-36','518756423','98765432','(11) 91234-5678',2345,2345,4,271924,271924),(84,'Industria de Desenvolvimento em Tecnologia Sustentavel Ltda','32.109.876/0001-09','321098765','21098765','(94) 65432-1098',4992,4992,6,293282,293282),(85,'Industria de Desenvolvimento Ltda','80.875.642/0001-36','808756423','98765432','(11) 91234-5678',2345,2345,4,271924,271924),(86,'Industria de Desenvolvimento Tecnologico Ltda','20.987.654/0001-55','209876545','12345678','(22) 99876-5432',4789,4789,6,115567,115567),(87,'Industria de Engenharia Avancada Ltda','98.765.432/0001-65','987654321','12345678','(84) 99876-5432',4789,45,6,115567,115563),(88,'Industria de Engenharia de Componentes Especiais Ltda','98.765.432/0001-76','678912345','65432109','(55) 76543-2109',2950,2950,7,129879,129879),(89,'Industria de Engenharia de Componentes Tecnologicos Ltda','76.543.210/0001-21','765432109','65432109','(55) 76543-2109',2950,2950,7,129879,129879),(90,'Industria de Inovacao em Polimeros Ltda','98.765.432/0001-90','987654321','87654321','(74) 91234-5678',2345,2345,4,271924,271924),(91,'Industria de Inovacao Tecnologica Industrial Ltda','34.697.153/0001-74','346971537','76543210','(44) 87654-3210',3721,7658,4,201383,201381),(92,'Industria de Inovacao Tecnologica Ltda','99.155.308/0001-19','991553081','21098765','(99) 65432-1098',1701,1701,7,119034,119034),(93,'Industria de Materiais Avancados Ltda','23.456.789/0001-49','234567891','98765432','(94) 98765-4321',3971,3971,1,175621,175621),(94,'Industria de Materiais de Alto Rendimento Ltda','34.567.891/0001-10','345678912','43210987','(34) 32109-8765',3893,3893,5,186755,186755),(95,'Industria de Materiais de Alto Rendimento Tecnologico Ltda','34.567.891/0001-98','345678912','43210987','(34) 32109-8765',3893,8765,5,186755,186757),(96,'Industria de Materiais Industriais Avancados Ltda','22.333.444/0001-55','223334445','12345678','(22) 99876-5432',4789,984,6,115567,115565),(97,'Industria de Materiais Industriais de Tecnologia Avancada Ltda','36.543.210/0001-12','654321098','98765432','(11) 91234-5678',2345,2345,4,271924,271924),(98,'Industria de Solucoes Avancadas Ltda','23.456.789/0001-76','234567891','98765432','(74) 91234-5678',2345,879,4,271924,271921),(99,'Industria de Solucoes em Engenharia Avancada Ltda','23.456.789/0001-32','234567891','98765432','(74) 91234-5678',2345,2345,4,271924,271924),(100,'Industria de Solucoes em Engenharia e Tecnologia Ltda','20.222.333/0001-44','202223334','98765432','(11) 91234-5678',2345,2345,4,271924,271924),(101,'Industria de Solucoes em Engenharia Ltda','18.790.321/0001-87','187903218','87654321','(33) 98765-4321',1523,1523,2,90927,90927),(102,'Industria de Solucoes em Materiais Ltda','73.603.417/0001-62','736034170','43210987','(77) 32109-8765',3893,3893,5,186755,186755),(103,'Industria de Solucoes Industriais em Polimeros Ltda','98.765.432/0001-21','987654321','12345678','(84) 99876-5432',4789,9876,6,115567,115564),(104,'Industria de Solucoes Tecnologicas Avancadas Ltda','65.432.109/0001-21','654321098','12345678','(22) 99876-5432',4789,4789,6,115567,115567),(105,'Industria de Solucoes Tecnologicas e Inovacao Ltda','54.321.098/0001-21','345678912','43210987','(77) 32109-8765',3893,3893,5,186755,186755),(106,'Industria de Solucoes Tecnologicas em Desenvolvimento Ltda','110.318.961/0001-59','110318961','43210987','(77) 32109-8765',3893,3893,5,186755,186755),(107,'Industria de Solucoes Tecnologicas em Engenharia Ltda','41.726.894/0001-89','417268941','98765432','(11) 91234-5678',2345,2345,4,271924,271924),(109,'Industria de Solucoes Tecnologicas em Materiais Especiais Ltda','98.765.432/0001-32','987654321','43210987','(77) 32109-8765',3893,3893,5,186755,186755),(110,'Industria de Solucoes Tecnologicas Ltda','11.987.654/0001-44','119876544','98765432','(11) 91234-5678',2345,2345,4,271924,271924),(111,'Industria de Tecnologia Avancada Ltda','25.654.321/0001-42','256543214','9876543','(00) 21098-7654',2856,2856,6,152786,152786),(112,'Industria de Tecnologia e Inovacao Ltda','31.875.642/0001-36','318756423','98765432','(11) 91234-5678',2345,2345,4,271924,271924),(114,'Industria de Tecnologia em Engenharia Avancada Ltda','43.210.987/0001-43','432109876','9876543','(64) 21098-7654',2856,2856,6,152786,152786),(115,'Industria de Tecnologia em Engenharia Industrial Ltda','43.210.987/0001-21','432109876','9876543','(64) 21098-7654',2856,2856,6,152786,152786),(116,'Industria de Tecnologia em Engenharia Ltda','38.604.715/0001-28','386047152','32109876','(88) 54321-0987',4822,4822,2,290144,290144),(117,'Industria de Tecnologia em Materiais Avancados Ltda','44.969.583/0001-54','449695830','76543210','(44) 87654-3210',3721,3721,5,201383,201383),(118,'Industria de Tecnologia em Polimeros de Engenharia Ltda','56.789.012/0001-50','567890123','87654321','(24) 87654-3210',2497,2497,2,276541,276541),(119,'Industria Tecnologica de Componentes Ltda','20.123.456/0001-98','201234569','65432109','(55) 76543-2109',2950,2950,7,129879,129879),(120,'Industria Tecnologica de Desenvolvimento Ltda','80.987.654/0001-11','809876541','32109876','(88) 54321-0987',4822,4822,2,290144,290144),(121,'Industria Tecnologica de Solucoes Avancadas Ltda','23.456.789/0001-87','234567891','98765432','(74) 91234-5678',2345,2345,4,271924,271924),(122,'Industria Tecnologica em Engenharia Avancada Ltda','43.210.987/0001-76','432109876','9876543','(64) 21098-7654',2856,2856,6,152786,152786),(123,'Inovacao em Desenvolvimento Industrial Avancado Ltda','87.654.321/0001-43','234567891','76543210','(44) 87654-3210',3721,3721,4,201383,201383),(124,'Inovacao em Desenvolvimento Industrial Ltda','30.142.536/0001-55','301425366','65432109','(55) 76543-2109',2950,2950,3,129879,129879),(125,'Inovacao em Desenvolvimento Industrial Sustentavel Ltda','23.456.789/0001-65','234567891','76543210','(04) 87654-3210',3721,3721,4,201383,201383),(126,'Inovacao em Desenvolvimento Industrial Tecnologico Ltda','65.432.109/0001-54','654321098','76543210','(44) 87654-3210',3721,3721,4,201383,201383),(127,'Inovacao em Desenvolvimento Tecnologico Ltda','23.456.789/0001-09','234567891','76543210','(04) 87654-3210',3721,3721,4,201383,201383),(128,'Inovacao em Engenharia de Materiais Especiais Ltda','44.555.666/0001-77','445556667','76543210','(44) 87654-3210',3721,3721,4,201383,201383),(129,'Inovacao em Engenharia de Polimeros Ltda','43.210.987/0001-83','432109876','65432109','(04) 65432-1098',3002,3002,2,287413,287413),(130,'Inovacao em Engenharia e Tecnologia Ltda','49.503.622/0001-11','495036227','76543210','(44) 87654-3210',3721,3721,4,201383,201383),(131,'Inovacao em Engenharia Industrial Ltda','21.098.765/0001-16','210987654','9876543','(62) 43210-9876',1123,1123,2,202886,202886),(132,'Inovacao em Engenharia Tecnologica Ltda','23.777.888/0001-45','237778884','32109876','(88) 54321-0987',4822,4822,2,290144,290144),(133,'Inovacao em Equipamentos Industriais Ltda','76.543.210/0001-38','765432109','9876543','(84) 09876-5432',1489,1489,7,268935,268935),(134,'Inovacao em Materiais de Polimeros Ltda','98.765.432/0001-50','987654321','65432109','(54) 54321-0987',4667,4667,3,199382,199382),(135,'Inovacao em Materiais Industriais Ltda','54.321.098/0001-72','543210987','43210987','(23) 54321-0987',4350,4350,3,28019,28019),(136,'Inovacao em Materiais Polimericos Especiais Ltda','12.345.678/0001-38','123456789','98765432','(64) 98765-4321',2865,2865,3,291847,291847),(137,'Inovacao em Polimeros de Engenharia Ltda','56.789.123/0001-38','567891234','32109876','(44) 54321-0987',4822,4822,2,290144,290144),(138,'Inovacao em Tecnologia Avancada Industrial Ltda','63.210.987/0001-98','321098769','76543210','(44) 87654-3210',3721,3721,4,201383,201383),(139,'Inovacao em Tecnologia de Materiais Ltda','67.890.123/0001-24','678901234','65432109','(14) 76543-2109',2563,2563,1,276542,276542),(140,'Inovacao em Tecnologia Industrial Ltda','10.123.456/0001-90','101234567','98765432','(74) 91234-5678',2497,2497,5,268037,268037),(141,'Inovacao Industrial em Polimeros Especiais Ltda','10.987.654/0001-10','109876543','98765432','(74) 98765-4321',4723,4723,4,22818,22818),(142,'Inovacao Industrial em Tecnologia Ltda','107.697.153/0001-74','107697153','76543210','(44) 87654-3210',3721,3721,4,201383,201383),(143,'Inovacao Industrial Tecnologica Ltda','23.456.789/0001-10','234567891','76543210','(04) 87654-3210',3721,3721,4,201383,201383),(144,'Inovacao Tecnologica em Engenharia Ltda','36.893.142/0001-10','368931420','54321098','(66) 65432-1098',476,476,3,25315,25315),(145,'Inovacao Tecnologica Industrial Ltda','39.783.023/0001-44','397830235','12345678','(22) 99876-5432',4789,4789,6,115567,115567),(146,'Solucoes Avancadas em Materiais Compostos Ltda','21.098.765/0001-35','210987654','9876543','(24) 65432-1098',3002,3002,5,287413,287413),(147,'Solucoes Avancadas em Processos Industriais Ltda','67.890.123/0001-96','678901234','32109876','(24) 65432-1098',3633,3633,6,281465,281465),(148,'Solucoes em Engenharia de Materiais Ltda','76.901.234/0001-79','769012345','87654321','(64) 87654-3210',4421,4421,1,133979,133979),(149,'Solucoes em Engenharia de Materiais Polimericos Ltda','54.321.098/0001-43','543210987','9876543','(04) 32109-8765',3724,3724,3,158219,158219),(150,'Solucoes em Engenharia e Tecnologia Industrial Ltda','54.321.098/0001-65','543210987','9876543','(04) 32109-8765',3724,3724,3,158219,158219),(151,'Solucoes em Engenharia Industrial Ltda','81.694.537/0001-22','816945372','12345678','(22) 99876-5432',4789,4789,6,115567,115567),(152,'Solucoes em Engenharia Tecnologica Ltda','54.321.098/0001-10','543210987','9876543','(04) 32109-8765',3724,3724,3,158219,158219),(153,'Solucoes em Equipamentos Avancados Ltda','65.432.109/0001-72','654321098','32109876','(34) 32109-8765',2178,2178,1,303183,303183),(154,'Solucoes em Tecnologia Industrial Ltda','26.987.654/0001-33','269876543','98765432','(11) 91234-5678',2345,2345,4,271924,271924),(155,'Solucoes Industriais de Desenvolvimento Tecnologico Ltda','105.694.537/0001-22','105694537','12345678','(22) 99876-5432',4789,4789,6,115567,115567),(156,'Solucoes Industriais de Engenharia Ltda','67.890.123/0001-21','678901234','12345678','(84) 99876-5432',4129,4129,4,191567,191567),(157,'Solucoes Industriais de Tecnologia e Polimeros Ltda','113.694.537/0001-22','113694537','12345678','(22) 99876-5432',768,879,6,115573,115570),(158,'Solucoes Industriais de Tecnologia em Polimeros Ltda','32.109.876/0001-05','321098765','87654321','(14) 87654-3210',4999,4999,3,303017,303017),(159,'Solucoes Industriais de Tecnologia Ltda','32.694.537/0001-22','326945372','12345678','(22) 99876-5432',4789,4789,6,115567,115567),(160,'Solucoes Industriais em Polimeros Avancados Ltda','23.456.789/0001-61','234567891','54321098','(34) 54321-0987',3824,3824,7,196723,196723),(161,'Solucoes Industriais Inovadoras Ltda','10.987.654/0001-50','109876543','98765432','(02) 87654-3210',2115,2115,5,242536,242536),(162,'Solucoes Integradas em Engenharia Ltda','43.210.987/0001-38','432109876','32109876','(82) 21098-7654',2864,2864,4,27103,27103),(163,'Solucoes Tecnologicas em Engenharia Industrial Ltda','52.694.537/0001-22','526945372','12345678','(22) 99876-5432',4789,4789,6,115567,115567),(164,'Solucoes Tecnologicas em Polimeros Ltda','76.543.210/0001-72','765432109','65432109','(84) 87654-3210',2916,2916,1,298740,298740),(165,'Tecnologia Avancada em Desenvolvimento Industrial Ltda','106.485.926/0001-99','106485926','87654321','(33) 98765-4321',1523,1523,2,90927,90927),(166,'Tecnologia Avancada em Engenharia Ltda','19.564.729/0001-45','195647294','76543210','(44) 87654-3210',3721,3721,4,201383,201383),(167,'Tecnologia Avancada Industrial Ltda','13.468.729/0001-22','134687290','98765432','(11) 91234-5678',2345,2345,4,271924,271924),(168,'Tecnologia de Inovacao Industrial Ltda','00.987.654/0001-33','9876543','9876543','(00) 21098-7654',2856,2856,6,152786,152786),(169,'Tecnologia de Manufatura Avancada Ltda','65.432.109/0001-27','654321098','54321098','(72) 32109-8765',4421,4421,7,133979,133979),(170,'Tecnologia de Materiais Compostos Ltda','45.678.901/0001-33','456789012','87654321','(94) 98765-4321',3874,3874,7,287126,287126),(171,'Tecnologia de Materiais Polimericos Ltda','87.654.321/0001-72','876543210','32109876','(94) 32109-8765',2178,2178,1,303183,303183),(172,'Tecnologia de Processamento Industrial Ltda','76.543.210/0001-83','765432109','32109876','(33) 32109-8765',723,723,2,91066,91066),(173,'Tecnologia de Processos e Equipamentos Ltda','76.901.234/0001-94','769012345','98765432','(54) 98765-4321',3406,3406,3,212994,212994),(174,'Tecnologia de Processos Especiais Ltda','90.123.456/0001-92','901234567','87654321','(94) 98765-4321',3914,3914,2,297623,297623),(175,'Tecnologia em Desenvolvimento Industrial Avancado Ltda','45.678.912/0001-76','456789123','87654321','(94) 98765-4321',1523,1523,2,90927,90927),(176,'Tecnologia em Desenvolvimento Industrial de Alta Performance Ltda','23.456.789/0001-12','567891234','32109876','(88) 54321-0987',4822,4822,2,290144,290144),(177,'Tecnologia em Desenvolvimento Industrial de Alto Desempenho Ltda','98.765.432/0001-43','987654321','12345678','(84) 99876-5432',4789,4789,6,115567,115567),(178,'Tecnologia em Desenvolvimento Industrial Ltda','98.765.432/0001-87','987654321','12345678','(84) 99876-5432',4789,4789,6,115567,115567),(179,'Tecnologia em Desenvolvimento Industrial Sustentavel Ltda','33.444.555/0001-66','334445556','87654321','(33) 98765-4321',1523,1523,2,90927,90927),(180,'Tecnologia em Desenvolvimento Tecnologico Ltda','33.987.654/0001-66','339876546','87654321','(33) 98765-4321',1523,1523,2,90927,90927),(181,'Tecnologia em Engenharia de Alto Desempenho Industrial Ltda','76.543.210/0001-43','765432109','65432109','(84) 87654-3210',2916,2916,5,298740,298740),(182,'Tecnologia em Engenharia de Alto Desempenho Ltda','76.543.210/0001-98','765432109','65432109','(84) 87654-3210',2916,2916,5,298740,298740),(183,'Tecnologia em Engenharia Industrial Ltda','30.987.654/0001-66','309876546','87654321','(33) 98765-4321',1523,1523,2,90927,90927),(184,'Tecnologia em Inovacao de Engenharia Industrial Ltda','88.999.000/0001-11','889990001','32109876','(88) 54321-0987',4822,4822,2,290144,290144),(185,'Tecnologia em Inovacao em Engenharia Industrial Ltda','109.893.142/0001-10','109893142','54321098','(66) 65432-1098',476,476,3,25315,25315),(186,'Tecnologia em Inovacao Industrial Avancada Ltda','56.789.123/0001-09','567891234','32109876','(44) 54321-0987',4822,4822,2,290144,290144),(187,'Tecnologia em Inovacao Industrial de Componentes Especiais Ltda','45.432.109/0001-43','432109874','12345678','(22) 99876-5432',4789,4789,6,115567,115567),(188,'Tecnologia em Inovacao Industrial Ltda','56.893.142/0001-10','568931420','54321098','(66) 65432-1098',476,476,3,25315,25315),(189,'Tecnologia em Inovacao Sustentavel Ltda','56.789.123/0001-21','567891234','32109876','(44) 54321-0987',4822,4822,2,290144,290144),(190,'Tecnologia em Materiais e Solucoes Avancadas Ltda','45.678.912/0001-09','456789123','87654321','(94) 98765-4321',1523,1523,2,90927,90927),(191,'Tecnologia em Materiais Industriais Ltda','34.567.890/0001-68','345678901','54321098','(54) 54321-0987',723,723,2,91066,91066),(192,'Tecnologia em Polimeros de Alta Performance Ltda','54.321.098/0001-38','543210987','87654321','(84) 87654-3210',3406,3406,5,212994,212994),(193,'Tecnologia em Processos Industriais Ltda','54.321.098/0001-27','543210987','21098765','(64) 21098-7654',4237,4237,2,199444,199444),(194,'Tecnologia Industrial de Alto Desempenho Ltda','65.254.929/0001-21','652549290','54321098','(66) 65432-1098',476,476,3,25315,25315),(195,'Tecnologia Industrial de Componentes Avancados Ltda','35.539.281/0001-47','355392819','65432109','(55) 76543-2109',2950,2950,7,129879,129879),(196,'Tecnologia Industrial de Componentes Ltda','11.706.990/0001-28','117069903','9876543','(00) 21098-7654',2856,2856,6,152786,152786),(197,'Tecnologia Industrial de Engenharia Ltda','29.983.642/0001-32','299836424','76543210','(44) 87654-3210',3721,3721,7,201383,201383),(198,'Tecnologia Industrial de Materiais Avancados Ltda','60.129.738/0001-15','601297381','9876543','(00) 21098-7654',2856,2856,6,152786,152786),(199,'Tecnologia Industrial de Materiais Ltda','22.333.777/0001-78','223337778','43210987','(77) 32109-8765',3893,3893,5,186755,186755),(200,'Industrial do Vale LTDA','22.333.777/0002-79','299367778','43210987','(72) 32119-8769',4567,4567,6,201383,201383);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-10 19:05:07
