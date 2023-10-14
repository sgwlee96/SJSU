-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: car_dealership
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `vin` varchar(8) NOT NULL,
  `make` varchar(16) NOT NULL,
  `model` varchar(16) NOT NULL,
  `year` int NOT NULL,
  `price` double NOT NULL,
  `transaction_id` varchar(5) NOT NULL,
  PRIMARY KEY (`vin`),
  KEY `transaction_id` (`transaction_id`),
  CONSTRAINT `car_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES ('VIN11111','Ford','Taurus',2016,10000,'T0005'),('VIN12345','Chevy','Nova',1975,1000,'T0002'),('VIN22222','Ford','Fiesta',2016,10000,'T0007'),('VIN33333','Volvo','X90',2015,11000,'T0004'),('VIN44444','Volvo','850',1996,5000,'T0001'),('VIN45678','Volvo','240 DL',1983,1000,'T0011'),('VIN55555','Volvo','S60',2016,16000,'T0006'),('VIN66666','Honda','Accord',2014,2200,'T0001'),('VIN77777','Honda','Civic',2005,5000,'T0010'),('VIN88888','Toyota','Prius',2015,15000,'T0002'),('VIN98765','Volkswagen','Beetle',1965,200,'T0010'),('VIN99999','Ford','Focus',2012,700,'T0007');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` varchar(4) NOT NULL,
  `name` varchar(32) NOT NULL,
  `gender` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('C111','Ron','m'),('C222','Mara','f'),('C333','Tom','m'),('C444','Susan','f'),('C555','Marsha','f'),('C666','Max','m'),('C777','Arnold','m');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesperson`
--

DROP TABLE IF EXISTS `salesperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesperson` (
  `id` varchar(4) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesperson`
--

LOCK TABLES `salesperson` WRITE;
/*!40000 ALTER TABLE `salesperson` DISABLE KEYS */;
INSERT INTO `salesperson` VALUES ('SP11','Sarah'),('SP22','Leslie'),('SP33','Steve'),('SP44','Judy'),('SP55','Bruno');
/*!40000 ALTER TABLE `salesperson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `salesperson_sales_sept`
--

DROP TABLE IF EXISTS `salesperson_sales_sept`;
/*!50001 DROP VIEW IF EXISTS `salesperson_sales_sept`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `salesperson_sales_sept` AS SELECT 
 1 AS `pname`,
 1 AS `cars_sold_in_sept`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` varchar(5) NOT NULL,
  `month` int NOT NULL,
  `customer_id` varchar(4) NOT NULL,
  `salesperson_id` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `salesperson_id` (`salesperson_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`salesperson_id`) REFERENCES `salesperson` (`id`),
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES ('T0001',9,'C444','SP22'),('T0002',9,'C333','SP11'),('T0003',9,'C444','SP55'),('T0004',9,'C222','SP22'),('T0005',9,'C666','SP33'),('T0006',9,'C111','SP55'),('T0007',9,'C333','SP44'),('T0008',9,'C222','SP44'),('T0009',9,'C555','SP22'),('T0010',9,'C777','SP11'),('T0011',9,'C222','SP22'),('T0012',9,'C777','SP11'),('T0013',9,'C777','SP11');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `salesperson_sales_sept`
--

/*!50001 DROP VIEW IF EXISTS `salesperson_sales_sept`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salesperson_sales_sept` AS select `sp`.`name` AS `pname`,count(`sp`.`name`) AS `cars_sold_in_sept` from (`salesperson` `sp` join `transaction` `t`) where ((`t`.`salesperson_id` = `sp`.`id`) and (`t`.`month` = 9)) group by `pname` */;
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

-- Dump completed on 2023-03-13 21:29:43
