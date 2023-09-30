CREATE DATABASE  IF NOT EXISTS `rair_football` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rair_football`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: rair_football
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
-- Table structure for table `appearances`
--

DROP TABLE IF EXISTS `appearances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appearances` (
  `ID` int NOT NULL,
  `gameID` int DEFAULT NULL,
  `playerID` int DEFAULT NULL,
  `goals` int DEFAULT NULL,
  `ownGoals` int DEFAULT NULL,
  `shots` int DEFAULT NULL,
  `assists` int DEFAULT NULL,
  `keyPasses` int DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `positionOrder` int DEFAULT NULL,
  `yellowCard` int DEFAULT NULL,
  `redCard` int DEFAULT NULL,
  `time` int DEFAULT NULL,
  `leagueID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_GAMEID` (`gameID`),
  KEY `FK_PLAYERID` (`playerID`),
  KEY `FK_LEAGUEID` (`leagueID`),
  CONSTRAINT `FK_GAMEID` FOREIGN KEY (`gameID`) REFERENCES `games` (`gameID`),
  CONSTRAINT `FK_LEAGUEID` FOREIGN KEY (`leagueID`) REFERENCES `league` (`leagueID`),
  CONSTRAINT `FK_PLAYERID` FOREIGN KEY (`playerID`) REFERENCES `players` (`playerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appearances`
--

LOCK TABLES `appearances` WRITE;
/*!40000 ALTER TABLE `appearances` DISABLE KEYS */;
INSERT INTO `appearances` VALUES (1,82,455,0,0,0,0,0,'Goalkeeper',1,0,0,90,1),(2,82,456,0,0,0,0,2,'Right Defender',2,0,0,90,1),(3,82,458,0,0,0,0,0,'Central Defender',3,1,0,90,1),(4,82,457,0,0,0,0,0,'Central Defender',3,0,0,90,1),(5,82,459,0,0,0,0,1,'Left Defender',4,0,0,90,1),(6,82,461,0,0,2,0,1,'Midfielder, Right',8,0,0,90,1),(7,82,460,0,0,2,0,4,'Midfielder, Center',9,0,0,90,1),(8,82,462,0,0,1,0,0,'Midfielder, Center',9,1,0,85,1),(9,82,466,0,0,2,0,0,'Midfielder, Left',10,0,0,70,1),(10,82,465,0,0,2,0,1,'Forward',15,1,0,54,1),(11,82,468,0,0,2,0,0,'Forward',15,0,0,90,1),(12,82,957,0,0,0,0,0,'Substitute',17,0,0,36,1),(13,82,472,0,0,0,0,0,'Substitute',17,0,0,5,1),(14,82,464,0,0,0,0,0,'Substitute',17,0,0,20,1),(15,82,662,0,0,0,0,0,'Goalkeeper',1,0,0,90,1),(16,82,674,0,0,1,0,0,'Right Defender',2,1,0,90,1),(17,82,665,0,0,0,0,1,'Central Defender',3,0,0,90,1),(18,82,875,0,0,0,0,0,'Central Defender',3,1,0,90,1),(19,82,961,0,0,0,0,0,'Left Defender',4,0,0,90,1),(20,82,668,0,0,2,0,0,'Midfielder, Center',9,1,0,90,1),(21,82,669,0,0,0,1,1,'Midfielder, Center',9,1,0,90,1),(22,82,677,0,0,0,0,1,'Midfielder, Center',9,0,0,72,1),(23,82,672,0,0,0,0,0,'Forward, Right',14,0,0,60,1),(24,82,890,0,0,2,0,1,'Forward',15,0,0,90,1),(25,82,679,0,0,0,0,0,'Forward, Left',16,0,0,79,1),(26,82,667,0,0,0,0,0,'Substitute',17,0,0,18,1),(27,82,899,0,0,0,0,0,'Substitute',17,0,0,11,1),(28,82,671,1,0,2,0,0,'Substitute',17,0,0,30,1),(29,83,600,0,0,0,0,0,'Goalkeeper',1,0,0,90,1),(30,83,585,0,0,0,0,0,'Right Defender',2,1,0,90,1),(31,83,587,0,0,0,0,0,'Central Defender',3,0,0,90,1),(32,83,586,0,0,0,0,0,'Central Defender',3,0,0,90,1),(33,83,909,0,0,0,0,0,'Left Defender',4,0,0,65,1),(34,83,589,0,0,0,0,0,'Defensive Midfielder, Center',7,0,0,90,1),(35,83,590,0,0,1,0,1,'Defensive Midfielder, Center',7,0,0,90,1),(36,83,595,0,0,1,0,1,'Attacking Midfielder, Right',11,0,0,79,1),(37,83,592,1,0,4,0,1,'Attacking Midfielder, Center',12,0,0,90,1),(38,83,596,0,0,0,0,3,'Attacking Midfielder, Left',13,0,0,90,1),(39,83,594,0,0,2,1,1,'Forward',15,0,0,90,1),(40,83,601,1,0,2,1,1,'Substitute',17,0,0,25,1),(41,83,598,0,0,0,0,0,'Substitute',17,0,0,11,1),(42,83,824,0,0,0,0,0,'Substitute',17,0,0,1,1),(43,83,564,0,0,0,0,0,'Goalkeeper',1,0,0,90,1),(44,83,565,0,0,0,0,0,'Right Defender',2,0,0,90,1),(45,83,566,0,0,0,0,0,'Central Defender',3,0,0,90,1),(46,83,581,0,0,0,0,0,'Central Defender',3,0,0,90,1),(47,83,568,0,0,1,0,1,'Left Defender',4,1,0,90,1),(48,83,577,0,0,2,0,1,'Midfielder, Right',8,0,0,90,1),(49,83,570,0,0,0,0,0,'Midfielder, Center',9,0,0,81,1),(50,83,572,0,0,1,0,1,'Midfielder, Center',9,0,0,90,1),(51,83,1016,1,0,2,0,1,'Midfielder, Left',10,0,0,61,1),(52,83,582,0,0,1,0,2,'Attacking Midfielder, Center',12,0,0,76,1),(53,83,574,0,0,3,1,1,'Forward',15,1,0,90,1),(54,83,571,0,0,0,0,1,'Substitute',17,0,0,9,1),(55,83,578,0,0,0,0,0,'Substitute',17,0,0,29,1),(56,83,573,1,0,1,0,0,'Substitute',17,0,0,14,1),(57,91,662,0,0,0,0,0,'Goalkeeper',1,0,0,90,1),(58,91,674,0,0,0,0,0,'Right Defender',2,0,0,90,1),(59,91,665,0,0,1,0,0,'Central Defender',3,0,0,90,1),(60,91,875,0,0,0,0,0,'Central Defender',3,0,0,90,1),(61,91,961,0,0,0,0,0,'Left Defender',4,0,0,90,1),(62,91,668,0,0,1,0,0,'Midfielder, Center',9,1,0,90,1),(63,91,669,0,0,0,0,3,'Midfielder, Center',9,0,0,90,1),(64,91,677,0,0,0,0,0,'Midfielder, Center',9,0,0,79,1),(65,91,672,0,0,1,0,0,'Forward, Right',14,1,0,90,1),(66,91,890,0,0,1,0,1,'Forward',15,0,0,90,1),(67,91,679,0,0,0,0,0,'Forward, Left',16,0,0,60,1),(68,91,667,0,0,0,0,0,'Substitute',17,0,0,11,1),(69,91,671,0,0,1,0,0,'Substitute',17,0,0,30,1),(70,91,560,0,0,0,0,0,'Goalkeeper',1,0,0,90,1),(71,91,557,0,0,0,0,0,'Right Defender',2,1,0,90,1),(72,91,548,0,0,0,0,0,'Central Defender',3,0,0,90,1),(73,91,628,0,0,0,0,0,'Central Defender',3,0,0,90,1),(74,91,1006,0,0,0,0,0,'Left Defender',4,0,0,90,1),(75,91,551,0,0,1,0,0,'Defensive Midfielder, Center',7,0,0,90,1),(76,91,654,0,0,0,0,0,'Defensive Midfielder, Center',7,0,0,61,1),(77,91,554,0,0,0,1,3,'Attacking Midfielder, Right',11,0,0,90,1),(78,91,323,1,0,1,0,1,'Attacking Midfielder, Center',12,0,0,61,1),(79,91,555,0,0,7,0,1,'Attacking Midfielder, Left',13,0,0,83,1),(80,91,629,0,0,0,0,2,'Forward',15,0,0,90,1),(81,91,907,0,0,0,0,0,'Substitute',17,0,0,29,1),(82,91,552,0,0,0,0,1,'Substitute',17,1,0,29,1),(83,91,631,0,0,0,0,0,'Substitute',17,0,0,7,1);
/*!40000 ALTER TABLE `appearances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `gameID` int NOT NULL,
  `leagueID` int DEFAULT NULL,
  `season` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `homeTeamID` int DEFAULT NULL,
  `awayTeamID` int DEFAULT NULL,
  `homeGoals` int DEFAULT NULL,
  `awayGoals` int DEFAULT NULL,
  `homeProbability` float DEFAULT NULL,
  `drawProbability` float DEFAULT NULL,
  `awayProbability` float DEFAULT NULL,
  `homeGoalsHalfTime` int DEFAULT NULL,
  `awayGoalsHalfTime` int DEFAULT NULL,
  PRIMARY KEY (`gameID`),
  KEY `FK_GAMES_LEAGUEID` (`leagueID`),
  KEY `FK_GAMES_HOMETEAMID` (`homeTeamID`),
  CONSTRAINT `FK_GAMES_HOMETEAMID` FOREIGN KEY (`homeTeamID`) REFERENCES `teams` (`teamID`),
  CONSTRAINT `FK_GAMES_LEAGUEID` FOREIGN KEY (`leagueID`) REFERENCES `league` (`leagueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (82,1,2015,'2015-08-08 18:00:00',73,71,0,1,0.3574,0.35,0.2926,0,0),(83,1,2015,'2015-08-08 18:00:00',72,90,2,2,0.2988,0.4337,0.2675,0,1),(91,1,2015,'2015-08-14 22:45:00',71,89,0,1,0.1056,0.4653,0.4291,0,1);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `league`
--

DROP TABLE IF EXISTS `league`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `league` (
  `leagueID` int NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `understatNotation` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`leagueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `league`
--

LOCK TABLES `league` WRITE;
/*!40000 ALTER TABLE `league` DISABLE KEYS */;
INSERT INTO `league` VALUES (1,'Premier League','EPL'),(2,'Serie A','Serie_A'),(3,'Bundesliga','Bundesliga'),(4,'La Liga','La_liga'),(5,'Ligue 1','Ligue_1');
/*!40000 ALTER TABLE `league` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `playerID` int NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`playerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (323,'Adnan Januzaj'),(455,'Artur Boruc'),(456,'Simon Francis'),(457,'Tommy Elphick'),(458,'Steve Cook'),(459,'Charlie Daniels'),(460,'Andrew Surman'),(461,'Matt Ritchie'),(462,'Dan Gosling'),(464,'Max Gradel'),(465,'Joshua King'),(466,'Marc Pugh'),(468,'Callum Wilson'),(472,'Eunan O&#039;Kane'),(548,'Daley Blind'),(551,'Morgan Schneiderlin'),(552,'Ander Herrera'),(554,'Juan Mata'),(555,'Memphis Depay'),(557,'Matteo Darmian'),(560,'Sergio Romero'),(564,'Heurelho Gomes'),(565,'Nyom'),(566,'Sebastian Prödl'),(568,'José Holebas'),(570,'Valon Behrami'),(571,'Ben Watson'),(572,'Etienne Capoue'),(573,'Odion Ighalo'),(574,'Troy Deeney'),(577,'Ikechi Anya'),(578,'Juan Carlos Paredes'),(581,'Craig Cathcart'),(582,'Jurado'),(585,'Seamus Coleman'),(586,'John Stones'),(587,'Phil Jagielka'),(589,'James McCarthy'),(590,'Gareth Barry'),(592,'Ross Barkley'),(594,'Romelu Lukaku'),(595,'Kevin Mirallas'),(596,'Tom Cleverley'),(598,'Bryan Oviedo'),(600,'Tim Howard'),(601,'Arouna Koné'),(628,'Chris Smalling'),(629,'Wayne Rooney'),(631,'Ashley Young'),(654,'Michael Carrick'),(662,'Brad Guzan'),(665,'Micah Richards'),(667,'Carlos Sánchez'),(668,'Idrissa Gueye'),(669,'Ashley Westwood'),(671,'Rudy Gestede'),(672,'Jordan Ayew'),(674,'Leandro Bacuna'),(677,'Jordan Veretout'),(679,'Scott Sinclair'),(824,'Steven Naismith'),(875,'Ciaran Clark'),(890,'Gabriel Agbonlahor'),(899,'Kieran Richardson'),(907,'Bastian Schweinsteiger'),(909,'Brendan Galloway'),(957,'Yann Kermorgant'),(961,'Jordan Amavi'),(1006,'Luke Shaw'),(1016,'Miguel Layún');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shots`
--

DROP TABLE IF EXISTS `shots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shots` (
  `ID` int NOT NULL,
  `gameID` int DEFAULT NULL,
  `shooterID` int DEFAULT NULL,
  `assisterID` int DEFAULT NULL,
  `minute` int DEFAULT NULL,
  `situation` varchar(32) DEFAULT NULL,
  `lastAction` varchar(32) DEFAULT NULL,
  `shotType` varchar(32) DEFAULT NULL,
  `shotResult` varchar(32) DEFAULT NULL,
  `xGoal` double DEFAULT NULL,
  `positionX` double DEFAULT NULL,
  `positionY` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SHORTS_GAMEID` (`gameID`),
  KEY `FK_SHORTS_PLAYERID` (`shooterID`),
  CONSTRAINT `FK_SHORTS_GAMEID` FOREIGN KEY (`gameID`) REFERENCES `games` (`gameID`),
  CONSTRAINT `FK_SHORTS_PLAYERID` FOREIGN KEY (`shooterID`) REFERENCES `players` (`playerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shots`
--

LOCK TABLES `shots` WRITE;
/*!40000 ALTER TABLE `shots` DISABLE KEYS */;
INSERT INTO `shots` VALUES (1,82,466,456,19,'OpenPlay','Aerial','Head','MissedShots',0.0478709824383259,0.900999984741211,0.527999992370605),(2,82,461,465,24,'OpenPlay','Pass','LeftFoot','MissedShots',0.022423792630434,0.758000030517578,0.395999984741211),(3,82,465,460,28,'OpenPlay','Pass','RightFoot','BlockedShot',0.0209429170936346,0.754000015258789,0.317000007629395),(4,82,460,461,32,'OpenPlay','Pass','LeftFoot','MissedShots',0.024036031216383,0.776999969482422,0.385999984741211),(5,82,462,0,36,'OpenPlay','Dispossessed','RightFoot','MissedShots',0.41575288772583,0.893000030517578,0.475999984741211),(6,82,468,460,40,'OpenPlay','Throughball','RightFoot','SavedShot',0.116172604262829,0.896999969482422,0.317999992370605),(7,82,465,460,44,'OpenPlay','Pass','RightFoot','MissedShots',0.0540846958756447,0.876999969482422,0.655999984741211),(8,82,466,456,46,'SetPiece','HeadPass','RightFoot','SavedShot',0.0988040789961815,0.905999984741211,0.485),(9,82,468,459,60,'OpenPlay','Chipped','RightFoot','BlockedShot',0.0153938410803676,0.835,0.773000030517578),(10,82,460,0,75,'SetPiece','None','LeftFoot','MissedShots',0.0403780676424503,0.835,0.632999992370605),(11,82,461,460,82,'OpenPlay','Chipped','RightFoot','MissedShots',0.0202460009604692,0.849000015258789,0.262999992370605),(12,82,668,677,26,'OpenPlay','Pass','RightFoot','MissedShots',0.0182690676301718,0.741999969482422,0.597999992370605),(13,82,674,0,42,'DirectFreekick','Standard','RightFoot','BlockedShot',0.0973707810044289,0.785999984741211,0.437000007629395),(14,82,668,890,47,'OpenPlay','Pass','LeftFoot','SavedShot',0.113667890429497,0.883000030517578,0.560999984741211),(15,82,890,0,67,'OpenPlay','None','LeftFoot','BlockedShot',0.0754843279719353,0.86,0.502999992370605),(16,82,671,0,67,'OpenPlay','Rebound','RightFoot','MissedShots',0.0526796691119671,0.935,0.325999984741211),(17,82,671,669,71,'FromCorner','Cross','Head','Goal',0.374082088470459,0.93,0.502999992370605),(18,82,890,665,81,'OpenPlay','TakeOn','LeftFoot','SavedShot',0.0546760745346546,0.795,0.507000007629395),(19,83,590,595,18,'FromCorner','Cross','Head','SavedShot',0.0972733199596405,0.918000030517578,0.487000007629395),(20,83,592,596,23,'OpenPlay','Pass','LeftFoot','BlockedShot',0.0275899674743414,0.761999969482422,0.475),(21,83,592,590,29,'OpenPlay','Pass','LeftFoot','MissedShots',0.0186350606381893,0.730999984741211,0.435999984741211),(22,83,592,596,30,'OpenPlay','Pass','RightFoot','SavedShot',0.0267167575657368,0.868000030517578,0.751999969482422),(23,83,594,592,49,'FromCorner','Cross','Head','MissedShots',0.213395297527313,0.939000015258789,0.577000007629395),(24,83,595,0,55,'OpenPlay','Aerial','RightFoot','BlockedShot',0.0101561024785042,0.765999984741211,0.715),(25,83,601,596,67,'OpenPlay','Cross','Head','MissedShots',0.0767420828342438,0.916999969482422,0.422999992370605),(26,83,592,601,75,'OpenPlay','Pass','RightFoot','Goal',0.0192704312503338,0.758000030517578,0.585),(27,83,601,594,85,'OpenPlay','Pass','RightFoot','Goal',0.069516159594059,0.933000030517578,0.33),(28,83,594,0,88,'OpenPlay','None','LeftFoot','SavedShot',0.0449310429394245,0.944000015258789,0.716999969482422),(29,83,574,1016,12,'OpenPlay','LayOff','RightFoot','BlockedShot',0.12456426024437,0.884000015258789,0.455999984741211),(30,83,574,582,12,'OpenPlay','TakeOn','RightFoot','BlockedShot',0.0302600208669901,0.774000015258789,0.595999984741211),(31,83,1016,0,13,'OpenPlay','None','RightFoot','Goal',0.0935400351881981,0.886999969482422,0.46),(32,83,572,582,40,'OpenPlay','Pass','LeftFoot','SavedShot',0.0234592892229557,0.748000030517578,0.375),(33,83,1016,0,45,'OpenPlay','Aerial','RightFoot','MissedShots',0.0151123916730285,0.81,0.735999984741211),(34,83,577,572,64,'OpenPlay','Pass','LeftFoot','BlockedShot',0.0784831196069717,0.935999984741211,0.714000015258789),(35,83,568,577,66,'OpenPlay','Pass','LeftFoot','SavedShot',0.0179599802941084,0.760999984741211,0.744000015258789),(36,83,582,0,66,'OpenPlay','Rebound','RightFoot','MissedShots',0.031419213861227,0.785,0.415),(37,83,574,568,76,'OpenPlay','Cross','Head','SavedShot',0.0178468730300665,0.850999984741211,0.530999984741211),(38,83,573,574,82,'OpenPlay','TakeOn','RightFoot','Goal',0.114175587892532,0.841999969482422,0.497000007629395),(39,83,577,571,86,'OpenPlay','TakeOn','RightFoot','MissedShots',0.0116358175873756,0.721999969482422,0.632999992370605),(40,91,665,669,37,'FromCorner','Cross','Head','MissedShots',0.0548922903835773,0.905,0.442999992370605),(41,91,672,0,47,'OpenPlay','BallRecovery','RightFoot','MissedShots',0.0316168740391731,0.785999984741211,0.545999984741211),(42,91,890,669,54,'FromCorner','Cross','Head','SavedShot',0.0520195923745632,0.909000015258789,0.429000015258789),(43,91,668,890,56,'OpenPlay','Pass','RightFoot','BlockedShot',0.0652980357408524,0.858000030517578,0.379000015258789),(44,91,671,669,74,'OpenPlay','Aerial','Head','MissedShots',0.0152913611382246,0.888000030517578,0.392000007629395),(45,91,551,555,15,'SetPiece','Cross','Head','MissedShots',0.0443539209663868,0.954000015258789,0.382000007629395),(46,91,555,629,21,'OpenPlay','Chipped','RightFoot','BlockedShot',0.00935902073979378,0.731999969482422,0.7),(47,91,555,629,22,'OpenPlay','Chipped','RightFoot','BlockedShot',0.0495794154703617,0.869000015258789,0.663000030517578),(48,91,555,323,26,'OpenPlay','Chipped','Head','MissedShots',0.0320643670856953,0.9,0.599000015258789),(49,91,323,554,28,'OpenPlay','Throughball','RightFoot','Goal',0.120036691427231,0.945999984741211,0.649000015258789),(50,91,555,554,66,'FromCorner','Pass','RightFoot','BlockedShot',0.0210557300597429,0.858000030517578,0.805),(51,91,555,0,68,'DirectFreekick','Standard','RightFoot','MissedShots',0.0324883460998535,0.724000015258789,0.73),(52,91,555,554,72,'OpenPlay','Throughball','RightFoot','MissedShots',0.322295308113098,0.843000030517578,0.59),(53,91,555,552,77,'OpenPlay','Pass','RightFoot','SavedShot',0.0291707515716553,0.755999984741211,0.535999984741211);
/*!40000 ALTER TABLE `shots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `teamID` int NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`teamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (71,'Aston Villa'),(72,'Everton'),(73,'Bournemouth'),(89,'Manchester United'),(90,'Watford');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teamstats`
--

DROP TABLE IF EXISTS `teamstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teamstats` (
  `ID` int NOT NULL,
  `teamID` int DEFAULT NULL,
  `goals` int DEFAULT NULL,
  `shots` int DEFAULT NULL,
  `shotsOnTarget` int DEFAULT NULL,
  `deep` int DEFAULT NULL,
  `fouls` int DEFAULT NULL,
  `corners` int DEFAULT NULL,
  `yellowCards` int DEFAULT NULL,
  `redCards` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `teamID` (`teamID`),
  CONSTRAINT `teamstats_ibfk_1` FOREIGN KEY (`teamID`) REFERENCES `teams` (`teamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamstats`
--

LOCK TABLES `teamstats` WRITE;
/*!40000 ALTER TABLE `teamstats` DISABLE KEYS */;
INSERT INTO `teamstats` VALUES (1,71,1,12,4,5,27,6,6,0),(2,72,2,10,5,5,7,8,1,0),(3,73,0,11,2,11,13,6,3,0),(4,89,1,9,2,5,10,5,2,0),(5,90,2,11,5,4,13,2,2,0);
/*!40000 ALTER TABLE `teamstats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-09 16:54:05
