-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: tv_shop
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `television`
--

DROP TABLE IF EXISTS `television`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `television` (
  `model_number` int NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `screen_size` varchar(20) NOT NULL,
  `display_type` varchar(20) NOT NULL,
  `resolution` varchar(45) NOT NULL,
  `color` varchar(20) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`model_number`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `television`
--

LOCK TABLES `television` WRITE;
/*!40000 ALTER TABLE `television` DISABLE KEYS */;
INSERT INTO `television` VALUES (1001,'Standard TV','Samsung','60 inch','LCD','1920x1080','Black',499.99),(1002,'High end TV','Sony','80 inch','LED','4K','Black',999.99),(1003,'Smart TV','LG','64 inch','Plasma','2K','White',599.99),(1004,'Smart TV','Olevia','80 inch','LCD/LED','2K','Black',699.99),(1005,'Standard TV','Silo Digital','74 inch','LCD','1920x1080','Black',550.00),(1006,'High end TV','Magnavox','60 inch','LED','8k','Black',999.99),(1007,'Smart TV','Panasonic','80 inch','LED','4k','Red',899.99),(1008,'Standard TV','Vizio','48 inch','OLED','2K','Black',399.99),(1009,'Standard TV','Sharp','48 inch','DLP','1920x1080','Blue',450.00),(1010,'High end TV','Toshiba','90 inch','OLED','4k','Back',950.00);
/*!40000 ALTER TABLE `television` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-28 13:09:28
