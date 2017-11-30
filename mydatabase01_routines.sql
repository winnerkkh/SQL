-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydatabase01
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `empinfo`
--

DROP TABLE IF EXISTS `empinfo`;
/*!50001 DROP VIEW IF EXISTS `empinfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `empinfo` AS SELECT 
 1 AS `empno`,
 1 AS `ename`,
 1 AS `deptname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `goodsinfodetail`
--

DROP TABLE IF EXISTS `goodsinfodetail`;
/*!50001 DROP VIEW IF EXISTS `goodsinfodetail`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `goodsinfodetail` AS SELECT 
 1 AS `상품코드`,
 1 AS `상품명`,
 1 AS `제조사명`,
 1 AS `가격`,
 1 AS `재고`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `goodsinf`
--

DROP TABLE IF EXISTS `goodsinf`;
/*!50001 DROP VIEW IF EXISTS `goodsinf`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `goodsinf` AS SELECT 
 1 AS `상품코드`,
 1 AS `상품명`,
 1 AS `제조사명`,
 1 AS `가격`,
 1 AS `전체재고`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `empinfo`
--

/*!50001 DROP VIEW IF EXISTS `empinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empinfo` AS select `emp`.`empno` AS `empno`,`emp`.`ename` AS `ename`,`dept`.`deptname` AS `deptname` from (`emp` join `dept`) where (`emp`.`deptno` = `dept`.`deptno`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `goodsinfodetail`
--

/*!50001 DROP VIEW IF EXISTS `goodsinfodetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `goodsinfodetail` AS select `goods`.`id` AS `상품코드`,`goods`.`name` AS `상품명`,`maker`.`name` AS `제조사명`,`goods`.`price` AS `가격`,`stock`.`qty` AS `재고` from ((`goods` join `maker`) join `stock`) where ((`goods`.`id` = `stock`.`goods_id`) and (`goods`.`maker_makercd` = `maker`.`makercd`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `goodsinf`
--

/*!50001 DROP VIEW IF EXISTS `goodsinf`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `goodsinf` AS select `goods`.`id` AS `상품코드`,max(`goods`.`name`) AS `상품명`,max(`maker`.`name`) AS `제조사명`,max(`goods`.`price`) AS `가격`,sum(`stock`.`qty`) AS `전체재고` from ((`goods` join `maker`) join `stock`) where ((`goods`.`id` = `stock`.`goods_id`) and (`goods`.`maker_makercd` = `maker`.`makercd`)) group by `goods`.`id` */;
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

-- Dump completed on 2017-11-30 11:44:44
