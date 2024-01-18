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
-- Table structure for table `uso`
--

DROP TABLE IF EXISTS `uso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uso` (
  `Uso_numero` int NOT NULL,
  `Uso` varchar(45) NOT NULL,
  PRIMARY KEY (`Uso_numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uso`
--

LOCK TABLES `uso` WRITE;
/*!40000 ALTER TABLE `uso` DISABLE KEYS */;
INSERT INTO `uso` VALUES (0,'Consumo'),(1,'Comercializacao'),(2,'Industrializacao'),(3,'Consignacao Mercantil'),(4,'Consignacao Industrial'),(5,'Ativo Imobilizado'),(6,'Exportacao'),(7,'Emprestimo'),(8,'Descarte'),(9,'Sucata'),(10,'Correcao'),(14,'Especial'),(21,'A Ordem'),(22,'Conta e Ordem'),(26,'Entrega Futura'),(28,'Uso-Consumo'),(29,'Aplicado'),(30,'Aplicado 3o'),(31,'Nao Aplicado'),(32,'Nao Aplicado 3o'),(33,'Conserto'),(34,'Comodato'),(35,'Simbolico'),(36,'Bonificacao'),(37,'Doacao'),(38,'Brinde'),(39,'Demonstracao'),(40,'Icms'),(41,'ICMS ST'),(42,'IPI'),(43,'PIS'),(44,'COFINS'),(45,'Fora do Estabecimento'),(46,'Qtde'),(47,'Valor'),(48,'Perda'),(49,'Transporte'),(50,'Armazenagem'),(51,'Vasilhames ou Sacarias'),(52,'Pallets ou Contentores'),(53,'Nao Especificado'),(54,'Manejo'),(55,'Interno'),(56,'Reciclagem'),(57,'A Ordem c/retencao PIS/COFINS'),(58,'Caixas Clientes'),(59,'Outras saidas ICMS/IPI'),(60,'Remessa de moldes de 3o'),(61,'Industrializacao por 3o.'),(62,'Industrializacao para 3o'),(63,'Venda a Ordem com IPI'),(64,'Outras Saidas s/ICMS e IPI'),(65,'Servicos Industrializacao'),(66,'Servicos MO por 3os'),(67,'Ferramental/Manutencao'),(68,'Servicos Gerais'),(69,'A Odem revenda'),(70,'Industrializacao c/ IPI'),(71,'Ferramental/dispositivo IPI'),(72,'A ordem c/IPI'),(73,'Teste s/ retorno'),(74,'Ferramental/Moldes'),(75,'Teste c/ retorno'),(76,'Ativo Imobilizado NF entrada'),(77,'p/ troca em garantia'),(78,'Remessa p/troca em garantia'),(79,'A Ordem com ST'),(80,'A Ordem com IPI e ST'),(81,'Locacao'),(82,'Ferramental/Manutencao c/IPI'),(83,'Amostra s/retorno'),(84,'NF Complementar'),(85,'Servicos de Calibracao p/3os'),(86,'Calibracao por terceiros'),(87,'Amostra c/retorno'),(88,'Transportes'),(89,'Pagamento Antecipado'),(90,'Complemento de Preco'),(91,'Devolucao Embalagens Klippan'),(92,'A ordem s/icms de PIS/COFINS'),(93,'Residuo de Oleo Industrial'),(94,'MP  Utilizado /Industrializacao'),(95,'Amostra c/retorno c/ICMS'),(96,'Amostra para testes s/retorno');
/*!40000 ALTER TABLE `uso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-18 20:01:48
