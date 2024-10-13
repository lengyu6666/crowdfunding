-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: crowdfunding_db
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `CATEGORY_ID` int NOT NULL,
  `NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Education'),(2,'Animal Welfare'),(3,'Environmental Protection'),(4,'Community Development'),(5,'Arts and Culture');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `money` varchar(45) DEFAULT NULL,
  `donors` varchar(45) DEFAULT NULL,
  `fundraiser` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation`
--

LOCK TABLES `donation` WRITE;
/*!40000 ALTER TABLE `donation` DISABLE KEYS */;
INSERT INTO `donation` VALUES (1,'2024-10-10','10','Amy',1),(2,'2024-10-10','15','Wang',2),(3,'2024-10-10','22','2',1),(4,'2024-10-10','8','3',1),(5,'2024-10-10','8','li',2),(6,'2024-10-10','7','May',2),(7,'2024-10-10','9','Joker',2),(8,'2024-10-10','9','A',6),(9,'2024-10-10','6','B',7),(10,'2024-10-10','8','c',2);
/*!40000 ALTER TABLE `donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fundraiser`
--

DROP TABLE IF EXISTS `fundraiser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fundraiser` (
  `FUNDRAISER_ID` int NOT NULL AUTO_INCREMENT,
  `ORGANIZER` varchar(45) DEFAULT NULL,
  `CAPTION` varchar(45) DEFAULT NULL,
  `TARGET_FUNDING` varchar(45) DEFAULT NULL,
  `CURRENT_FUNDING` varchar(45) DEFAULT NULL,
  `CITY` varchar(45) DEFAULT NULL,
  `ACTIVE` varchar(45) DEFAULT NULL,
  `CATEGORY_ID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`FUNDRAISER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fundraiser`
--

LOCK TABLES `fundraiser` WRITE;
/*!40000 ALTER TABLE `fundraiser` DISABLE KEYS */;
INSERT INTO `fundraiser` VALUES (1,'Organizer A','Support for Children Education','50000','25001','New York','1','3'),(2,'Organizer B','Rescue Stray Animals','80000','15007','Los Angeles','1','2'),(3,'Organizer C','Environmental Protection Project','100000','60000','London','1','3'),(4,'Organizer D','Community Health Promotion','40000','20000','Toronto','1','1'),(5,'Organizer G','Support for Low-Income Families','80000','40000','Sydney','1','2'),(6,'Organizer G','Cultural Arts Activities','20000','12000','Berlin','1','3'),(11,'John Smith','Support Local School','15000','8000','New York','1','1'),(12,'Green Planet','Protect Wildlife in Amazon','30000','25000','Manaus','1','2'),(13,'EcoFuture','Reduce Ocean Pollution','50000','32000','Sydney','1','3'),(14,'Healthy World','Vaccination for Children','40000','15000','Mumbai','1','4'),(15,'Disaster Aid','Flood Relief in Southeast Asia','35000','20000','Bangkok','1','5'),(16,'Tech for All','Empower Students with Technology','20000','10000','San Francisco','1','1'),(17,'Animal Rescue','Save Endangered Species','45000','25000','Nairobi','1','2'),(18,'Clean Ocean Initiative','Beach Cleanup Campaign','10000','6000','Cape Town','1','3'),(19,'HealthFirst','Mental Health Awareness','25000','10000','Berlin','1','4'),(20,'Crisis Relief','Earthquake Support','50000','40000','Istanbul','1','5');
/*!40000 ALTER TABLE `fundraiser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-10 21:07:27
