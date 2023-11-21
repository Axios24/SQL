-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_shoestore
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Temporary view structure for view `ventacategoria`
--

DROP TABLE IF EXISTS `ventacategoria`;
/*!50001 DROP VIEW IF EXISTS `ventacategoria`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventacategoria` AS SELECT 
 1 AS `CategoryName`,
 1 AS `Quantity`,
 1 AS `amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ventaunidadesmarca`
--

DROP TABLE IF EXISTS `ventaunidadesmarca`;
/*!50001 DROP VIEW IF EXISTS `ventaunidadesmarca`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventaunidadesmarca` AS SELECT 
 1 AS `brandname`,
 1 AS `Quantity`,
 1 AS `amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ventaxempleado`
--

DROP TABLE IF EXISTS `ventaxempleado`;
/*!50001 DROP VIEW IF EXISTS `ventaxempleado`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventaxempleado` AS SELECT 
 1 AS `EmployeeID`,
 1 AS `FirstName`,
 1 AS `Jobdescription`,
 1 AS `StoreID`,
 1 AS `amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ventatienda`
--

DROP TABLE IF EXISTS `ventatienda`;
/*!50001 DROP VIEW IF EXISTS `ventatienda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventatienda` AS SELECT 
 1 AS `StoreID`,
 1 AS `style`,
 1 AS `province`,
 1 AS `Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ventasxedades`
--

DROP TABLE IF EXISTS `ventasxedades`;
/*!50001 DROP VIEW IF EXISTS `ventasxedades`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventasxedades` AS SELECT 
 1 AS `Age`,
 1 AS `amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `ventacategoria`
--

/*!50001 DROP VIEW IF EXISTS `ventacategoria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventacategoria` AS select `c`.`CategoryName` AS `CategoryName`,`ss`.`Quantity` AS `Quantity`,`s`.`Amount` AS `amount` from (((`saledetails` `ss` join `products` `p` on((`ss`.`ProductID` = `p`.`ProductID`))) join `sales` `s` on((`ss`.`SaleID` = `s`.`SaleID`))) join `categories` `c` on((`p`.`CategoryID` = `c`.`CategoryID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventaunidadesmarca`
--

/*!50001 DROP VIEW IF EXISTS `ventaunidadesmarca`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventaunidadesmarca` AS select `b`.`BrandName` AS `brandname`,`ss`.`Quantity` AS `Quantity`,`s`.`Amount` AS `amount` from (((`saledetails` `ss` join `products` `p` on((`ss`.`ProductID` = `p`.`ProductID`))) join `sales` `s` on((`ss`.`SaleID` = `s`.`SaleID`))) join `brands` `b` on((`p`.`BrandID` = `b`.`BrandID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventaxempleado`
--

/*!50001 DROP VIEW IF EXISTS `ventaxempleado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventaxempleado` AS select `e`.`EmployeeID` AS `EmployeeID`,`e`.`FirstName` AS `FirstName`,`e`.`JobDescription` AS `Jobdescription`,`e`.`StoreID` AS `StoreID`,`s`.`Amount` AS `amount` from (`sales` `s` join `employees` `e` on((`e`.`EmployeeID` = `s`.`EmployeeID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventatienda`
--

/*!50001 DROP VIEW IF EXISTS `ventatienda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventatienda` AS select `st`.`StoreID` AS `StoreID`,`st`.`Style` AS `style`,`st`.`Province` AS `province`,`s`.`Amount` AS `Amount` from (`sales` `s` join `stores` `st` on((`s`.`StoreID` = `st`.`StoreID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventasxedades`
--

/*!50001 DROP VIEW IF EXISTS `ventasxedades`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventasxedades` AS select `c`.`Age` AS `Age`,`s`.`Amount` AS `amount` from (`sales` `s` join `customers` `c` on((`c`.`CustomerID` = `s`.`CustomerID`))) */;
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

-- Dump completed on 2023-11-21 12:42:17
