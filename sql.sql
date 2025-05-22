CREATE DATABASE  IF NOT EXISTS `poetas_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `poetas_db`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: poetas_db
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_code` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `surname` varchar(40) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL,
  `telephone_number` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`customer_code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Jose','Holguin','calle 234','31050','1111111'),(2,'Jose','Holguin','calle 234','31050','1111111'),(3,'Jose','Holguin','calle 234','31050','1111111'),(4,'Jose','Holguin','calle 234','31050','1111111'),(5,'Jose','Holguin','calle 234','31050','1111111'),(6,'Jose','Holguin','calle 234','31050','1111111'),(7,'Cristiano','Ronaldo','XD','11111','344444'),(8,'Jose','Holguin','calle 234','31050','1111111'),(9,'Jose','Holguin','calle 234','31050','1111111'),(10,'Jose','Holguin','calle 234','31050','1111111');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poem`
--

DROP TABLE IF EXISTS `poem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poem` (
  `poem_code` int NOT NULL AUTO_INCREMENT,
  `poem_title` text,
  `poem_contents` text,
  `poet_code` int DEFAULT NULL,
  PRIMARY KEY (`poem_code`),
  KEY `fk_poet` (`poet_code`),
  CONSTRAINT `fk_poet` FOREIGN KEY (`poet_code`) REFERENCES `poet` (`poet_code`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poem`
--

LOCK TABLES `poem` WRITE;
/*!40000 ALTER TABLE `poem` DISABLE KEYS */;
INSERT INTO `poem` VALUES (1,'fortnite','JAJAJA',5),(2,'fortnite','JAJAJA',5),(3,'fortnite','JAJAJA',5),(4,'fortnite','JAJAJA',8),(5,'fortnite','JAJAJA',5),(6,'fortnite','JAJAJA',5),(10,'El despertar','El sol asoma en el horizonte...',2),(11,'Noche estrellada','Brillan las estrellas en el cielo...',2),(12,'Ríos y montañas','El río canta y la montaña calla...',3);
/*!40000 ALTER TABLE `poem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poem_publication`
--

DROP TABLE IF EXISTS `poem_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poem_publication` (
  `poem_code` int NOT NULL,
  `publication_code` int NOT NULL,
  PRIMARY KEY (`poem_code`,`publication_code`),
  KEY `fk_pp_publication` (`publication_code`),
  KEY `fk_pp_poem` (`poem_code`),
  CONSTRAINT `fk_pp_poem` FOREIGN KEY (`poem_code`) REFERENCES `poem` (`poem_code`),
  CONSTRAINT `fk_pp_publication` FOREIGN KEY (`publication_code`) REFERENCES `publication` (`publication_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poem_publication`
--

LOCK TABLES `poem_publication` WRITE;
/*!40000 ALTER TABLE `poem_publication` DISABLE KEYS */;
INSERT INTO `poem_publication` VALUES (10,10),(11,11),(12,12);
/*!40000 ALTER TABLE `poem_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poet`
--

DROP TABLE IF EXISTS `poet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poet` (
  `poet_code` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `surname` varchar(40) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL,
  `telephone_number` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`poet_code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poet`
--

LOCK TABLES `poet` WRITE;
/*!40000 ALTER TABLE `poet` DISABLE KEYS */;
INSERT INTO `poet` VALUES (1,'jose','esoj','su casa','31469','6149999999'),(2,'Jorge','Parra','calle 123','31050','6141224058'),(3,'Jorge','Parra','calle 123','31050','6141224058'),(4,'Jorge','Parra','calle 123','31050','6141224058'),(5,'Jorge','Parra','calle 123','31050','6141224058'),(6,'Jorge','Parra','calle 123','31050','6141224058'),(7,'Jorge','Parra','calle 123','31050','6141224058'),(8,'Jorge','Parra','calle 123','31050','6141224058'),(9,'Jorge','Parra','calle 123','31050','6141224058'),(10,'Jorge','Parra','calle 123','31050','6141224058'),(11,'Jorge','Parra','calle 123','31050','6141224058');
/*!40000 ALTER TABLE `poet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication`
--

DROP TABLE IF EXISTS `publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publication` (
  `publication_code` int NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`publication_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication`
--

LOCK TABLES `publication` WRITE;
/*!40000 ALTER TABLE `publication` DISABLE KEYS */;
INSERT INTO `publication` VALUES (5,'xd',500.00),(10,'Antología Moderna',120.50),(11,'Versos de la Luna',80.00),(12,'Cantos Ancestrales',95.75),(100,'Libro A',500.00),(101,'Libro B',300.00),(102,'Revista X',100.00);
/*!40000 ALTER TABLE `publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale` (
  `sale_code` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `customer_code` int DEFAULT NULL,
  PRIMARY KEY (`sale_code`),
  KEY `fk_sale_customer` (`customer_code`),
  CONSTRAINT `fk_sale_customer` FOREIGN KEY (`customer_code`) REFERENCES `customer` (`customer_code`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (2,'2025-05-21',699.00,7),(100,'2025-05-20',250.00,1),(101,'2025-05-21',699.00,7),(102,'2025-05-22',120.00,2);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_publication`
--

DROP TABLE IF EXISTS `sale_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_publication` (
  `sale_code` int NOT NULL,
  `publication_code` int NOT NULL,
  PRIMARY KEY (`sale_code`,`publication_code`),
  KEY `fk_sp_publication` (`publication_code`),
  CONSTRAINT `fk_sp_publication` FOREIGN KEY (`publication_code`) REFERENCES `publication` (`publication_code`),
  CONSTRAINT `fk_sp_sale` FOREIGN KEY (`sale_code`) REFERENCES `sale` (`sale_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_publication`
--

LOCK TABLES `sale_publication` WRITE;
/*!40000 ALTER TABLE `sale_publication` DISABLE KEYS */;
INSERT INTO `sale_publication` VALUES (100,100),(101,101),(102,102);
/*!40000 ALTER TABLE `sale_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'poetas_db'
--

--
-- Dumping routines for database 'poetas_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `get_publication_poems` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_publication_poems`()
BEGIN
SELECT 
        pub.publication_code,
        pub.title AS publication_title,
        pub.price,
        p.poem_code,
        p.poem_title,
        p.poem_contents,
        poet.first_name AS poet_first_name,
        poet.surname AS poet_surname
    FROM publication AS pub
    JOIN poem_publication AS pp ON pub.publication_code = pp.publication_code
    JOIN poem AS p ON pp.poem_code = p.poem_code
    LEFT JOIN poet ON p.poet_code = poet.poet_code
    ORDER BY pub.publication_code, p.poem_code;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-22  0:32:47
