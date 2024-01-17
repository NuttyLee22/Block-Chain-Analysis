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
-- Temporary view structure for view `ofr_sep_exp`
--

DROP TABLE IF EXISTS `ofr_sep_exp`;
/*!50001 DROP VIEW IF EXISTS `ofr_sep_exp`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ofr_sep_exp` AS SELECT 
 1 AS `Pedido Numero`,
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
-- Temporary view structure for view `ticket_medio_pedido`
--

DROP TABLE IF EXISTS `ticket_medio_pedido`;
/*!50001 DROP VIEW IF EXISTS `ticket_medio_pedido`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ticket_medio_pedido` AS SELECT 
 1 AS `Pedido Numero`,
 1 AS `Operacao`,
 1 AS `Uso`,
 1 AS `Transportadora`,
 1 AS `Grupo`,
 1 AS `Municipio`,
 1 AS `UF`,
 1 AS `Mes_Entregue`,
 1 AS `Data Entregue`,
 1 AS `Ticket Medio por Pedido`*/;
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
-- Temporary view structure for view `tempo_ciclo_pedido`
--

DROP TABLE IF EXISTS `tempo_ciclo_pedido`;
/*!50001 DROP VIEW IF EXISTS `tempo_ciclo_pedido`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tempo_ciclo_pedido` AS SELECT 
 1 AS `Pedido Numero`,
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
 1 AS `Ciclo Pedido`,
 1 AS `Dias`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `otif`
--

DROP TABLE IF EXISTS `otif`;
/*!50001 DROP VIEW IF EXISTS `otif`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `otif` AS SELECT 
 1 AS `Pedido Numero`,
 1 AS `Cliente`,
 1 AS `Pedidos Recebidos`,
 1 AS `Pedidos Recebidos %`,
 1 AS `Total Pedidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `info_gerais`
--

DROP TABLE IF EXISTS `info_gerais`;
/*!50001 DROP VIEW IF EXISTS `info_gerais`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `info_gerais` AS SELECT 
 1 AS `Pedido Numero`,
 1 AS `Cliente`,
 1 AS `Produto`,
 1 AS `Operacao`,
 1 AS `Uso`,
 1 AS `Familia`,
 1 AS `Linha`,
 1 AS `Ordem Venda`,
 1 AS `Transportadora`,
 1 AS `Tipo Transporte`,
 1 AS `Grupo`,
 1 AS `Volume`,
 1 AS `Valor Mercadoria (R$)`,
 1 AS `Frete  (R$)`,
 1 AS `Seguro (R$)`,
 1 AS `Acrescimos (R$)`,
 1 AS `Peso Liquido (Kg)`,
 1 AS `Peso Bruto (Kg)`,
 1 AS `Emitido em`,
 1 AS `Previsao Entrega`,
 1 AS `Data Embarque`,
 1 AS `Data Entregue`,
 1 AS `On Time`,
 1 AS `In Full`,
 1 AS `On Time/In Full`,
 1 AS `Municipio`,
 1 AS `UF`,
 1 AS `Regiao`,
 1 AS `Pais`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tempo_entrega`
--

DROP TABLE IF EXISTS `tempo_entrega`;
/*!50001 DROP VIEW IF EXISTS `tempo_entrega`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tempo_entrega` AS SELECT 
 1 AS `Pedido Numero`,
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
 1 AS `Tempo Entrega`,
 1 AS `Dias`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `orderfillrateresult`
--

DROP TABLE IF EXISTS `orderfillrateresult`;
/*!50001 DROP VIEW IF EXISTS `orderfillrateresult`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orderfillrateresult` AS SELECT 
 1 AS `Cliente_numero`,
 1 AS `Cliente`,
 1 AS `Total_Pedidos`,
 1 AS `Pedidos_Atendidos_Completamente`,
 1 AS `Order_Fill_Rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `orderfillrateview`
--

DROP TABLE IF EXISTS `orderfillrateview`;
/*!50001 DROP VIEW IF EXISTS `orderfillrateview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orderfillrateview` AS SELECT 
 1 AS `Serie`,
 1 AS `Pedido_numero`,
 1 AS `Cliente_numero`,
 1 AS `Cliente`,
 1 AS `Operacao`,
 1 AS `Uso`,
 1 AS `Transportadora`,
 1 AS `Grupo`,
 1 AS `UF`,
 1 AS `Emitido_Em`,
 1 AS `Previsao_Entrega`,
 1 AS `Data_Embarque`,
 1 AS `Data_Entregue`,
 1 AS `Operacao_numero`,
 1 AS `Uso_numero`,
 1 AS `Transportadora_numero`,
 1 AS `Cod_log_entrega`,
 1 AS `OnTime`,
 1 AS `InFull`,
 1 AS `OnTime_InFull`,
 1 AS `Item_Serie`,
 1 AS `Item_Pedido_numero`,
 1 AS `Produto_numero`*/;
SET character_set_client = @saved_cs_client;

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
/*!50001 VIEW `ofr_sep_exp` AS select `pv`.`Pedido_numero` AS `Pedido Numero`,`opr`.`Nome` AS `Operacao`,`uso`.`Uso` AS `Uso`,`tpd`.`Nome` AS `Transportadora`,`grupo`.`Nome` AS `Grupo`,`mun`.`Municipio` AS `Municipio`,`uf`.`UF` AS `UF`,`pv`.`Emitido_em` AS `Emitido em`,`pv`.`DT_embarque` AS `Data Embarque`,concat(cast((`pv`.`DT_entregue` - `pv`.`Emitido_em`) as char charset utf8mb4),' dia(s)') AS `Tempo Processamento` from (((((((`pedidovenda` `pv` left join `operacao` `opr` on((`pv`.`Operacao_numero` = `opr`.`Operacao_numero`))) left join `uso` on((`pv`.`Uso_numero` = `uso`.`Uso_numero`))) left join `transportadora` `tpd` on((`pv`.`Transportadora_numero` = `tpd`.`Transportadora_numero`))) left join `endereco` `edc` on((`pv`.`Cod_log_entrega` = `edc`.`Cod_log`))) left join `grupo` on((`tpd`.`Grupo_numero` = `grupo`.`Grupo_numero`))) left join `municipio` `mun` on((`edc`.`Municipio_numero` = `mun`.`Municipio_numero`))) left join `uf` on((`mun`.`UF` = `uf`.`UF`))) order by `pv`.`Emitido_em` */;
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
/*!50001 VIEW `ticket_medio_pedido` AS select `pv`.`Pedido_numero` AS `Pedido Numero`,`opr`.`Nome` AS `Operacao`,`uso`.`Uso` AS `Uso`,`tpd`.`Nome` AS `Transportadora`,`grupo`.`Nome` AS `Grupo`,`mun`.`Municipio` AS `Municipio`,`uf`.`UF` AS `UF`,(case month(`pv`.`DT_entregue`) when 1 then 'Janeiro' when 2 then 'Fevereiro' when 3 then 'Março' when 4 then 'Abril' when 5 then 'Maio' when 6 then 'Junho' when 7 then 'Julho' when 8 then 'Agosto' when 9 then 'Setembro' when 10 then 'Outubro' when 11 then 'Novembro' when 12 then 'Dezembro' end) AS `Mes_Entregue`,`pv`.`DT_entregue` AS `Data Entregue`,round(sum((`pvi`.`Preco_Total` / `total_ped_atendidos`.`Pedido`)),2) AS `Ticket Medio por Pedido` from (((((((((`pedidovenda` `pv` left join `pedidovendaitem` `pvi` on(((`pv`.`Serie` = `pvi`.`Serie`) and (`pv`.`Pedido_numero` = `pvi`.`Pedido_numero`)))) join (select `pv`.`Pedido_numero` AS `ID`,count(`pv`.`Pedido_numero`) AS `Pedido` from `pedidovenda` `pv` where ((`pv`.`DT_entregue` <= `pv`.`Previsao_entrega`) and (`pv`.`OnTime_InFull` = 0)) group by `pv`.`Pedido_numero`) `total_ped_atendidos` on((`pv`.`Pedido_numero` = `total_ped_atendidos`.`ID`))) left join `operacao` `opr` on((`pv`.`Operacao_numero` = `opr`.`Operacao_numero`))) left join `uso` on((`pv`.`Uso_numero` = `uso`.`Uso_numero`))) left join `transportadora` `tpd` on((`pv`.`Transportadora_numero` = `tpd`.`Transportadora_numero`))) left join `endereco` `edc` on((`pv`.`Cod_log_entrega` = `edc`.`Cod_log`))) left join `grupo` on((`tpd`.`Grupo_numero` = `grupo`.`Grupo_numero`))) left join `municipio` `mun` on((`edc`.`Municipio_numero` = `mun`.`Municipio_numero`))) left join `uf` on((`mun`.`UF` = `uf`.`UF`))) group by `pv`.`Pedido_numero`,`opr`.`Nome`,`uso`.`Uso`,`tpd`.`Nome`,`grupo`.`Nome`,`mun`.`Municipio`,`uf`.`UF`,`Mes_Entregue`,`pv`.`DT_entregue` */;
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
/*!50001 VIEW `tempo_ciclo_pedido` AS select `pv`.`Pedido_numero` AS `Pedido Numero`,`opr`.`Nome` AS `Operacao`,`uso`.`Uso` AS `Uso`,`tpd`.`Nome` AS `Transportadora`,`grupo`.`Nome` AS `Grupo`,`mun`.`Municipio` AS `Municipio`,`uf`.`UF` AS `UF`,`pv`.`Emitido_em` AS `Emitido em`,`pv`.`Previsao_entrega` AS `Previsao Entrega`,`pv`.`DT_embarque` AS `Data Embarque`,`pv`.`DT_entregue` AS `Data Entregue`,concat(cast((to_days(`pv`.`DT_entregue`) - to_days(`pv`.`Emitido_em`)) as char charset utf8mb4),' dia(s)') AS `Ciclo Pedido`,(to_days(`pv`.`DT_entregue`) - to_days(`pv`.`Emitido_em`)) AS `Dias` from (((((((`pedidovenda` `pv` left join `operacao` `opr` on((`pv`.`Operacao_numero` = `opr`.`Operacao_numero`))) left join `uso` on((`pv`.`Uso_numero` = `uso`.`Uso_numero`))) left join `transportadora` `tpd` on((`pv`.`Transportadora_numero` = `tpd`.`Transportadora_numero`))) left join `endereco` `edc` on((`pv`.`Cod_log_entrega` = `edc`.`Cod_log`))) left join `grupo` on((`tpd`.`Grupo_numero` = `grupo`.`Grupo_numero`))) left join `municipio` `mun` on((`edc`.`Municipio_numero` = `mun`.`Municipio_numero`))) left join `uf` on((`mun`.`UF` = `uf`.`UF`))) where ((`pv`.`DT_entregue` - `pv`.`Emitido_em`) > 10) order by `pv`.`Emitido_em` */;
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
/*!50001 VIEW `otif` AS select `pv`.`Pedido_numero` AS `Pedido Numero`,`clt`.`Cliente` AS `Cliente`,count(`pv`.`Pedido_numero`) AS `Pedidos Recebidos`,round(((count(`pv`.`Pedido_numero`) * 100) / `totalped`.`total_pedidos`),2) AS `Pedidos Recebidos %`,`totalped`.`total_pedidos` AS `Total Pedidos` from (((`pedidovenda` `pv` left join `cliente` `clt` on((`pv`.`Cliente_numero` = `clt`.`Cliente_numero`))) left join (select `clt`.`Cliente_numero` AS `NumeroCliente`,`clt`.`Cliente` AS `Cliente`,count(`pv`.`Pedido_numero`) AS `total_pedidos` from ((`pedidovenda` `pv` left join `cliente` `clt` on((`pv`.`Cliente_numero` = `clt`.`Cliente_numero`))) left join `pedidovendaitem` `pvi` on(((`pv`.`Serie` = `pvi`.`Serie`) and (`pv`.`Pedido_numero` = `pvi`.`Pedido_numero`)))) group by `clt`.`Cliente_numero`,`clt`.`Cliente`) `totalped` on((`clt`.`Cliente_numero` = `totalped`.`NumeroCliente`))) left join `pedidovendaitem` `pvi` on(((`pv`.`Serie` = `pvi`.`Serie`) and (`pv`.`Pedido_numero` = `pvi`.`Pedido_numero`)))) where ((`pv`.`DT_entregue` <= `pv`.`Previsao_entrega`) and (`pv`.`OnTime_InFull` = 1)) group by `pv`.`Pedido_numero`,`clt`.`Cliente`,`totalped`.`total_pedidos` order by `clt`.`Cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `info_gerais`
--

/*!50001 DROP VIEW IF EXISTS `info_gerais`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `info_gerais` AS select `pv`.`Pedido_numero` AS `Pedido Numero`,`cli`.`Cliente` AS `Cliente`,`prd`.`Nome` AS `Produto`,`opr`.`Nome` AS `Operacao`,`uso`.`Uso` AS `Uso`,`fam`.`Nome` AS `Familia`,`linha`.`Nome` AS `Linha`,`pv`.`Ordem_venda` AS `Ordem Venda`,`tpd`.`Nome` AS `Transportadora`,`pv`.`Transporte` AS `Tipo Transporte`,`grupo`.`Nome` AS `Grupo`,`pv`.`Volume` AS `Volume`,round(`pv`.`Valor_mercadoria`,2) AS `Valor Mercadoria (R$)`,round(`pv`.`Frete`,2) AS `Frete  (R$)`,round(`pv`.`Seguro`,2) AS `Seguro (R$)`,round(`pv`.`Acrescimos`,2) AS `Acrescimos (R$)`,round(`pv`.`Peso_liquido`,2) AS `Peso Liquido (Kg)`,round(`pv`.`Peso_bruto`,2) AS `Peso Bruto (Kg)`,`pv`.`Emitido_em` AS `Emitido em`,`pv`.`Previsao_entrega` AS `Previsao Entrega`,`pv`.`DT_embarque` AS `Data Embarque`,`pv`.`DT_entregue` AS `Data Entregue`,`pv`.`OnTime` AS `On Time`,`pv`.`InFull` AS `In Full`,`pv`.`OnTime_InFull` AS `On Time/In Full`,`mun`.`Municipio` AS `Municipio`,(case when (`uf`.`UF` = 'SP') then 'São Paulo' when (`uf`.`UF` = 'RJ') then 'Rio de Janeiro' when (`uf`.`UF` = 'MT') then 'Mato Grosso' end) AS `UF`,`uf`.`Regiao` AS `Regiao`,'BR' AS `Pais` from ((((((((((((`pedidovenda` `pv` left join `cliente` `cli` on((`pv`.`Cliente_numero` = `cli`.`Cliente_numero`))) left join `operacao` `opr` on((`pv`.`Operacao_numero` = `opr`.`Operacao_numero`))) left join `uso` on((`pv`.`Uso_numero` = `uso`.`Uso_numero`))) left join `transportadora` `tpd` on((`pv`.`Transportadora_numero` = `tpd`.`Transportadora_numero`))) left join `endereco` `edc` on((`pv`.`Cod_log_entrega` = `edc`.`Cod_log`))) left join `grupo` on((`tpd`.`Grupo_numero` = `grupo`.`Grupo_numero`))) left join `municipio` `mun` on((`edc`.`Municipio_numero` = `mun`.`Municipio_numero`))) left join `uf` on((`mun`.`UF` = `uf`.`UF`))) left join `pedidovendaitem` `pvi` on(((`pv`.`Serie` = `pvi`.`Serie`) and (`pv`.`Pedido_numero` = `pvi`.`Pedido_numero`)))) left join `produto` `prd` on((`pvi`.`Produto_numero` = `prd`.`Produto_numero`))) left join `familia` `fam` on((`prd`.`Familia_numero` = `fam`.`Familia_numero`))) left join `linha` on((`prd`.`Linha_numero` = `linha`.`Linha_numero`))) order by `cli`.`Cliente`,`pv`.`Emitido_em` */;
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
/*!50001 VIEW `tempo_entrega` AS select `pv`.`Pedido_numero` AS `Pedido Numero`,`opr`.`Nome` AS `Operacao`,`uso`.`Uso` AS `Uso`,`tpd`.`Nome` AS `Transportadora`,`grupo`.`Nome` AS `Grupo`,`mun`.`Municipio` AS `Municipio`,`uf`.`UF` AS `UF`,`pv`.`Emitido_em` AS `Emitido em`,`pv`.`Previsao_entrega` AS `Previsao Entrega`,`pv`.`DT_embarque` AS `Data Embarque`,`pv`.`DT_entregue` AS `Data Entregue`,concat(cast((to_days(`pv`.`DT_entregue`) - to_days(`pv`.`DT_embarque`)) as char charset utf8mb4),' dia(s)') AS `Tempo Entrega`,(to_days(`pv`.`DT_entregue`) - to_days(`pv`.`DT_embarque`)) AS `Dias` from (((((((`pedidovenda` `pv` left join `operacao` `opr` on((`pv`.`Operacao_numero` = `opr`.`Operacao_numero`))) left join `uso` on((`pv`.`Uso_numero` = `uso`.`Uso_numero`))) left join `transportadora` `tpd` on((`pv`.`Transportadora_numero` = `tpd`.`Transportadora_numero`))) left join `endereco` `edc` on((`pv`.`Cod_log_entrega` = `edc`.`Cod_log`))) left join `grupo` on((`tpd`.`Grupo_numero` = `grupo`.`Grupo_numero`))) left join `municipio` `mun` on((`edc`.`Municipio_numero` = `mun`.`Municipio_numero`))) left join `uf` on((`mun`.`UF` = `uf`.`UF`))) order by `pv`.`Emitido_em` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orderfillrateresult`
--

/*!50001 DROP VIEW IF EXISTS `orderfillrateresult`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orderfillrateresult` AS select `orderfillrateview`.`Cliente_numero` AS `Cliente_numero`,`orderfillrateview`.`Cliente` AS `Cliente`,count(distinct `orderfillrateview`.`Pedido_numero`) AS `Total_Pedidos`,count(distinct (case when (`orderfillrateview`.`OnTime_InFull` = 1) then `orderfillrateview`.`Pedido_numero` end)) AS `Pedidos_Atendidos_Completamente`,((count(distinct (case when (`orderfillrateview`.`OnTime_InFull` = 1) then `orderfillrateview`.`Pedido_numero` end)) / count(distinct `orderfillrateview`.`Pedido_numero`)) * 100) AS `Order_Fill_Rate` from `orderfillrateview` group by `orderfillrateview`.`Cliente_numero`,`orderfillrateview`.`Cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orderfillrateview`
--

/*!50001 DROP VIEW IF EXISTS `orderfillrateview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orderfillrateview` AS select `pv`.`Serie` AS `Serie`,`pv`.`Pedido_numero` AS `Pedido_numero`,`pv`.`Cliente_numero` AS `Cliente_numero`,`clt`.`Cliente` AS `Cliente`,`opr`.`Nome` AS `Operacao`,`uso`.`Uso` AS `Uso`,`tpd`.`Nome` AS `Transportadora`,`grupo`.`Nome` AS `Grupo`,`uf`.`UF` AS `UF`,`pv`.`Emitido_em` AS `Emitido_Em`,`pv`.`Previsao_entrega` AS `Previsao_Entrega`,`pv`.`DT_embarque` AS `Data_Embarque`,`pv`.`DT_entregue` AS `Data_Entregue`,`pv`.`Operacao_numero` AS `Operacao_numero`,`pv`.`Uso_numero` AS `Uso_numero`,`pv`.`Transportadora_numero` AS `Transportadora_numero`,`pv`.`Cod_log_entrega` AS `Cod_log_entrega`,`pv`.`OnTime` AS `OnTime`,`pv`.`InFull` AS `InFull`,`pv`.`OnTime_InFull` AS `OnTime_InFull`,`pvi`.`Serie` AS `Item_Serie`,`pvi`.`Pedido_numero` AS `Item_Pedido_numero`,`pvi`.`Produto_numero` AS `Produto_numero` from (((((((((`pedidovenda` `pv` join `pedidovendaitem` `pvi` on(((`pv`.`Serie` = `pvi`.`Serie`) and (`pv`.`Pedido_numero` = `pvi`.`Pedido_numero`)))) left join `cliente` `clt` on((`pv`.`Cliente_numero` = `clt`.`Cliente_numero`))) left join `operacao` `opr` on((`pv`.`Operacao_numero` = `opr`.`Operacao_numero`))) left join `uso` on((`pv`.`Uso_numero` = `uso`.`Uso_numero`))) left join `transportadora` `tpd` on((`pv`.`Transportadora_numero` = `tpd`.`Transportadora_numero`))) left join `endereco` `edc` on((`pv`.`Cod_log_entrega` = `edc`.`Cod_log`))) left join `grupo` on((`tpd`.`Grupo_numero` = `grupo`.`Grupo_numero`))) left join `municipio` `mun` on((`edc`.`Municipio_numero` = `mun`.`Municipio_numero`))) left join `uf` on((`mun`.`UF` = `uf`.`UF`))) */;
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

-- Dump completed on 2024-01-17 19:00:56
