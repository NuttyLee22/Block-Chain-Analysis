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
-- Temporary view structure for view `order_fill_rate`
--

DROP TABLE IF EXISTS `order_fill_rate`;
/*!50001 DROP VIEW IF EXISTS `order_fill_rate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_fill_rate` AS SELECT 
 1 AS `Cliente`,
 1 AS `Pedidos_Recebidos`,
 1 AS `Pedidos_Recebidos_Porc`,
 1 AS `TotalPedidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `otd`
--

DROP TABLE IF EXISTS `otd`;
/*!50001 DROP VIEW IF EXISTS `otd`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `otd` AS SELECT 
 1 AS `Cliente`,
 1 AS `Pedidos Recebidos`,
 1 AS `Pedidos Recebidos %`,
 1 AS `Total Pedidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ofr_sep_exp`
--

DROP TABLE IF EXISTS `ofr_sep_exp`;
/*!50001 DROP VIEW IF EXISTS `ofr_sep_exp`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ofr_sep_exp` AS SELECT 
 1 AS `Operacao`,
 1 AS `Uso`,
 1 AS `Transportadora`,
 1 AS `Grupo`,
 1 AS `Municipio`,
 1 AS `UF`,
 1 AS `Emitido em`,
 1 AS `Data Embarque`,
 1 AS `Tempo Processamento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `otif`
--

DROP TABLE IF EXISTS `otif`;
/*!50001 DROP VIEW IF EXISTS `otif`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `otif` AS SELECT 
 1 AS `Cliente`,
 1 AS `Pedidos Recebidos`,
 1 AS `Pedidos Recebidos %`,
 1 AS `Total Pedidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tempo_entrega`
--

DROP TABLE IF EXISTS `tempo_entrega`;
/*!50001 DROP VIEW IF EXISTS `tempo_entrega`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tempo_entrega` AS SELECT 
 1 AS `Operacao`,
 1 AS `Uso`,
 1 AS `Transportadora`,
 1 AS `Grupo`,
 1 AS `Municipio`,
 1 AS `UF`,
 1 AS `Emitido em`,
 1 AS `Previsao Entrega`,
 1 AS `Data Embarque`,
 1 AS `Data Entregue`,
 1 AS `Tempo Entrega`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ticket_medio_pedido`
--

DROP TABLE IF EXISTS `ticket_medio_pedido`;
/*!50001 DROP VIEW IF EXISTS `ticket_medio_pedido`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ticket_medio_pedido` AS SELECT 
 1 AS `Operacao`,
 1 AS `Uso`,
 1 AS `Transportadora`,
 1 AS `Grupo`,
 1 AS `Municipio`,
 1 AS `UF`,
 1 AS `Mes_Entregue`,
 1 AS `Ticket Medio por Pedido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tempo_ciclo_pedido`
--

DROP TABLE IF EXISTS `tempo_ciclo_pedido`;
/*!50001 DROP VIEW IF EXISTS `tempo_ciclo_pedido`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tempo_ciclo_pedido` AS SELECT 
 1 AS `Operacao`,
 1 AS `Uso`,
 1 AS `Transportadora`,
 1 AS `Grupo`,
 1 AS `Municipio`,
 1 AS `UF`,
 1 AS `Emitido em`,
 1 AS `Previsao Entrega`,
 1 AS `Data Embarque`,
 1 AS `Data Entregue`,
 1 AS `Ciclo Pedido`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `order_fill_rate`
--

/*!50001 DROP VIEW IF EXISTS `order_fill_rate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_fill_rate` AS select `result`.`Cliente` AS `Cliente`,`result`.`Pedidos_Recebidos` AS `Pedidos_Recebidos`,`result`.`Pedidos_Recebidos_Porc` AS `Pedidos_Recebidos_Porc`,`result`.`TotalPedidos` AS `TotalPedidos` from (select `clt`.`Cliente` AS `Cliente`,count(`pv`.`Pedido_numero`) AS `Pedidos_Recebidos`,round(((count(`pv`.`Pedido_numero`) * 100) / `totalped`.`total_pedidos`),2) AS `Pedidos_Recebidos_Porc`,`totalped`.`total_pedidos` AS `TotalPedidos` from (((`pedidovenda` `pv` left join `cliente` `clt` on((`pv`.`Cliente_numero` = `clt`.`Cliente_numero`))) left join (select `clt`.`Cliente_numero` AS `NumeroCliente`,`clt`.`Cliente` AS `Cliente`,count(`pv`.`Pedido_numero`) AS `total_pedidos` from ((`pedidovenda` `pv` left join `cliente` `clt` on((`pv`.`Cliente_numero` = `clt`.`Cliente_numero`))) left join `pedidovendaitem` `pvi` on(((`pv`.`Serie` = `pvi`.`Serie`) and (`pv`.`Pedido_numero` = `pvi`.`Pedido_numero`)))) group by `clt`.`Cliente_numero`,`clt`.`Cliente`) `totalped` on((`clt`.`Cliente_numero` = `totalped`.`NumeroCliente`))) left join `pedidovendaitem` `pvi` on(((`pv`.`Serie` = `pvi`.`Serie`) and (`pv`.`Pedido_numero` = `pvi`.`Pedido_numero`)))) where ((`pv`.`DT_entregue` <= `pv`.`Previsao_entrega`) and (`pv`.`OnTime_InFull` = 0)) group by `clt`.`Cliente`,`totalped`.`total_pedidos` order by `clt`.`Cliente`) `result` where (`result`.`Pedidos_Recebidos` = `result`.`TotalPedidos`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `otd`
--

/*!50001 DROP VIEW IF EXISTS `otd`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `otd` AS select `clt`.`Cliente` AS `Cliente`,count(`pv`.`Pedido_numero`) AS `Pedidos Recebidos`,round(((count(`pv`.`Pedido_numero`) * 100) / `totalped`.`total_pedidos`),2) AS `Pedidos Recebidos %`,`totalped`.`total_pedidos` AS `Total Pedidos` from (((`pedidovenda` `pv` left join `cliente` `clt` on((`pv`.`Cliente_numero` = `clt`.`Cliente_numero`))) left join (select `clt`.`Cliente_numero` AS `NumeroCliente`,`clt`.`Cliente` AS `Cliente`,count(`pv`.`Pedido_numero`) AS `total_pedidos` from ((`pedidovenda` `pv` left join `cliente` `clt` on((`pv`.`Cliente_numero` = `clt`.`Cliente_numero`))) left join `pedidovendaitem` `pvi` on(((`pv`.`Serie` = `pvi`.`Serie`) and (`pv`.`Pedido_numero` = `pvi`.`Pedido_numero`)))) group by `clt`.`Cliente_numero`,`clt`.`Cliente`) `totalped` on((`clt`.`Cliente_numero` = `totalped`.`NumeroCliente`))) left join `pedidovendaitem` `pvi` on(((`pv`.`Serie` = `pvi`.`Serie`) and (`pv`.`Pedido_numero` = `pvi`.`Pedido_numero`)))) where (`pv`.`DT_entregue` <= `pv`.`Previsao_entrega`) group by `clt`.`Cliente`,`totalped`.`total_pedidos` order by `clt`.`Cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ofr_sep_exp`
--

/*!50001 DROP VIEW IF EXISTS `ofr_sep_exp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ofr_sep_exp` AS select `opr`.`Nome` AS `Operacao`,`uso`.`Uso` AS `Uso`,`tpd`.`Nome` AS `Transportadora`,`grupo`.`Nome` AS `Grupo`,`mun`.`Municipio` AS `Municipio`,`uf`.`UF` AS `UF`,`pv`.`Emitido_em` AS `Emitido em`,`pv`.`DT_embarque` AS `Data Embarque`,concat(cast((`pv`.`DT_entregue` - `pv`.`Emitido_em`) as char charset utf8mb4),' dia(s)') AS `Tempo Processamento` from (((((((`pedidovenda` `pv` left join `operacao` `opr` on((`pv`.`Operacao_numero` = `opr`.`Operacao_numero`))) left join `uso` on((`pv`.`Uso_numero` = `uso`.`Uso_numero`))) left join `transportadora` `tpd` on((`pv`.`Transportadora_numero` = `tpd`.`Transportadora_numero`))) left join `endereco` `edc` on((`pv`.`Cod_log_entrega` = `edc`.`Cod_log`))) left join `grupo` on((`tpd`.`Grupo_numero` = `grupo`.`Grupo_numero`))) left join `municipio` `mun` on((`edc`.`Municipio_numero` = `mun`.`Municipio_numero`))) left join `uf` on((`mun`.`UF` = `uf`.`UF`))) order by `pv`.`Emitido_em` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `otif`
--

/*!50001 DROP VIEW IF EXISTS `otif`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `otif` AS select `clt`.`Cliente` AS `Cliente`,count(`pv`.`Pedido_numero`) AS `Pedidos Recebidos`,round(((count(`pv`.`Pedido_numero`) * 100) / `totalped`.`total_pedidos`),2) AS `Pedidos Recebidos %`,`totalped`.`total_pedidos` AS `Total Pedidos` from (((`pedidovenda` `pv` left join `cliente` `clt` on((`pv`.`Cliente_numero` = `clt`.`Cliente_numero`))) left join (select `clt`.`Cliente_numero` AS `NumeroCliente`,`clt`.`Cliente` AS `Cliente`,count(`pv`.`Pedido_numero`) AS `total_pedidos` from ((`pedidovenda` `pv` left join `cliente` `clt` on((`pv`.`Cliente_numero` = `clt`.`Cliente_numero`))) left join `pedidovendaitem` `pvi` on(((`pv`.`Serie` = `pvi`.`Serie`) and (`pv`.`Pedido_numero` = `pvi`.`Pedido_numero`)))) group by `clt`.`Cliente_numero`,`clt`.`Cliente`) `totalped` on((`clt`.`Cliente_numero` = `totalped`.`NumeroCliente`))) left join `pedidovendaitem` `pvi` on(((`pv`.`Serie` = `pvi`.`Serie`) and (`pv`.`Pedido_numero` = `pvi`.`Pedido_numero`)))) where ((`pv`.`DT_entregue` <= `pv`.`Previsao_entrega`) and (`pv`.`OnTime_InFull` = 0)) group by `clt`.`Cliente`,`totalped`.`total_pedidos` order by `clt`.`Cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tempo_entrega`
--

/*!50001 DROP VIEW IF EXISTS `tempo_entrega`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tempo_entrega` AS select `opr`.`Nome` AS `Operacao`,`uso`.`Uso` AS `Uso`,`tpd`.`Nome` AS `Transportadora`,`grupo`.`Nome` AS `Grupo`,`mun`.`Municipio` AS `Municipio`,`uf`.`UF` AS `UF`,`pv`.`Emitido_em` AS `Emitido em`,`pv`.`Previsao_entrega` AS `Previsao Entrega`,`pv`.`DT_embarque` AS `Data Embarque`,`pv`.`DT_entregue` AS `Data Entregue`,concat(cast((`pv`.`DT_entregue` - `pv`.`DT_embarque`) as char charset utf8mb4),' dia(s)') AS `Tempo Entrega` from (((((((`pedidovenda` `pv` left join `operacao` `opr` on((`pv`.`Operacao_numero` = `opr`.`Operacao_numero`))) left join `uso` on((`pv`.`Uso_numero` = `uso`.`Uso_numero`))) left join `transportadora` `tpd` on((`pv`.`Transportadora_numero` = `tpd`.`Transportadora_numero`))) left join `endereco` `edc` on((`pv`.`Cod_log_entrega` = `edc`.`Cod_log`))) left join `grupo` on((`tpd`.`Grupo_numero` = `grupo`.`Grupo_numero`))) left join `municipio` `mun` on((`edc`.`Municipio_numero` = `mun`.`Municipio_numero`))) left join `uf` on((`mun`.`UF` = `uf`.`UF`))) order by `pv`.`Emitido_em` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ticket_medio_pedido`
--

/*!50001 DROP VIEW IF EXISTS `ticket_medio_pedido`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ticket_medio_pedido` AS select `opr`.`Nome` AS `Operacao`,`uso`.`Uso` AS `Uso`,`tpd`.`Nome` AS `Transportadora`,`grupo`.`Nome` AS `Grupo`,`mun`.`Municipio` AS `Municipio`,`uf`.`UF` AS `UF`,(case month(`pv`.`DT_entregue`) when 1 then 'Janeiro' when 2 then 'Fevereiro' when 3 then 'Março' when 4 then 'Abril' when 5 then 'Maio' when 6 then 'Junho' when 7 then 'Julho' when 8 then 'Agosto' when 9 then 'Setembro' when 10 then 'Outubro' when 11 then 'Novembro' when 12 then 'Dezembro' end) AS `Mes_Entregue`,round(sum((`pvi`.`Preco_Total` / `total_ped_atendidos`.`Pedido`)),2) AS `Ticket Medio por Pedido` from (((((((((`pedidovenda` `pv` left join `pedidovendaitem` `pvi` on(((`pv`.`Serie` = `pvi`.`Serie`) and (`pv`.`Pedido_numero` = `pvi`.`Pedido_numero`)))) join (select `pv`.`Pedido_numero` AS `ID`,count(`pv`.`Pedido_numero`) AS `Pedido` from `pedidovenda` `pv` where ((`pv`.`DT_entregue` <= `pv`.`Previsao_entrega`) and (`pv`.`OnTime_InFull` = 0)) group by `pv`.`Pedido_numero`) `total_ped_atendidos` on((`pv`.`Pedido_numero` = `total_ped_atendidos`.`ID`))) left join `operacao` `opr` on((`pv`.`Operacao_numero` = `opr`.`Operacao_numero`))) left join `uso` on((`pv`.`Uso_numero` = `uso`.`Uso_numero`))) left join `transportadora` `tpd` on((`pv`.`Transportadora_numero` = `tpd`.`Transportadora_numero`))) left join `endereco` `edc` on((`pv`.`Cod_log_entrega` = `edc`.`Cod_log`))) left join `grupo` on((`tpd`.`Grupo_numero` = `grupo`.`Grupo_numero`))) left join `municipio` `mun` on((`edc`.`Municipio_numero` = `mun`.`Municipio_numero`))) left join `uf` on((`mun`.`UF` = `uf`.`UF`))) group by `opr`.`Nome`,`uso`.`Uso`,`tpd`.`Nome`,`grupo`.`Nome`,`mun`.`Municipio`,`uf`.`UF`,`Mes_Entregue` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tempo_ciclo_pedido`
--

/*!50001 DROP VIEW IF EXISTS `tempo_ciclo_pedido`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tempo_ciclo_pedido` AS select `opr`.`Nome` AS `Operacao`,`uso`.`Uso` AS `Uso`,`tpd`.`Nome` AS `Transportadora`,`grupo`.`Nome` AS `Grupo`,`mun`.`Municipio` AS `Municipio`,`uf`.`UF` AS `UF`,`pv`.`Emitido_em` AS `Emitido em`,`pv`.`Previsao_entrega` AS `Previsao Entrega`,`pv`.`DT_embarque` AS `Data Embarque`,`pv`.`DT_entregue` AS `Data Entregue`,concat(cast((`pv`.`DT_entregue` - `pv`.`Emitido_em`) as char charset utf8mb4),' dia(s)') AS `Ciclo Pedido` from (((((((`pedidovenda` `pv` left join `operacao` `opr` on((`pv`.`Operacao_numero` = `opr`.`Operacao_numero`))) left join `uso` on((`pv`.`Uso_numero` = `uso`.`Uso_numero`))) left join `transportadora` `tpd` on((`pv`.`Transportadora_numero` = `tpd`.`Transportadora_numero`))) left join `endereco` `edc` on((`pv`.`Cod_log_entrega` = `edc`.`Cod_log`))) left join `grupo` on((`tpd`.`Grupo_numero` = `grupo`.`Grupo_numero`))) left join `municipio` `mun` on((`edc`.`Municipio_numero` = `mun`.`Municipio_numero`))) left join `uf` on((`mun`.`UF` = `uf`.`UF`))) order by `pv`.`Emitido_em` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-06 21:40:12
