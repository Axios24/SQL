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
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Running','Son especiales para correr,los aspectos más destacados deben ser su flexibilidad, su ligereza y su comodidad'),(2,'Sportswear','El tipo de calzado deportivo más común, son las tan usadas para el día a día. De un estilo cómodo que si bien nos permite estar a la moda, no son las más adecuadas para realizar deportes'),(3,'Skate','calzado especializado para practicar skating.Estilo urbano'),(4,'Mountain','Pueden ser especiales para senderismo, alpinismo u otras actividades relacionadas con la montaña. Suelen ser antideslizantes, esto para evitar problemas al moverse en terrenos rocosos'),(5,'SlipOn','Estas zapatillas son de estilo casual y tienen la suela lisa. Normalmente son zapatillas de lona, aunque también las podemos encontrar de pie. Los elásticos en los laterales y el empeine cerrado son sus principales características'),(6,'Gym','Calzado para entrenamiento en gimnasio, corte mas alto que una zapatilla de running y mayor agarre de tobillo'),(7,'Basketball','calzado especializado para practicar Baske'),(8,'Tennis','calzado especializado para practicar Tennis'),(9,'FootBall','calzado especializado para practicar futbol o futbol sala'),(10,'Premium','Calzados mas exclusivos o de diseñador');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21 12:42:17
