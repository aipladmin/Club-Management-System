-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: contra.cjrbdmxkv84s.ap-south-1.rds.amazonaws.com    Database: bcms
-- ------------------------------------------------------
-- Server version	8.0.20

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `amenities_master`
--

DROP TABLE IF EXISTS `amenities_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities_master` (
  `AMID` int NOT NULL AUTO_INCREMENT,
  `MANID` int DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AMID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities_master`
--

LOCK TABLES `amenities_master` WRITE;
/*!40000 ALTER TABLE `amenities_master` DISABLE KEYS */;
INSERT INTO `amenities_master` VALUES (1,2,'Gym','A state of the art gym'),(2,3,'Swimming Pool','Olympic Size Swimming Pool'),(3,2,'Bar','Mocktail Bar and lounge '),(4,2,'Ala-Carte Menu','Range of dishes to choose from'),(5,4,'Sound-Proofed Rooms','For high end parties and DJ parties'),(6,2,'Valet Parking','Parking services'),(7,6,'Banquet','Banquet availability  and booking'),(8,2,'Cordless Phone','Easy communication through cordless phone'),(9,2,'Conference Room','Conference Table and chairs set up'),(10,7,'Meeting Hall','Special meeting rooms'),(11,8,'Beauty Treatments','Facial treatments for men and women'),(12,9,'Express Laundry','2 hour laundry service'),(13,10,'Waterfront Spa','Spa Lounge'),(14,11,'Private Swimming Area','Swimming area'),(15,2,'Olufsen Entertainment System','Entertainment'),(16,12,'Badminton Court','Sports court'),(17,13,'Fitness Area','Fitness lounge'),(18,12,'Personal Sunbeds','Sunbeds near the pool'),(19,12,'Dining Area','Dining services'),(20,12,'Luxury Spa and Salon','Spa and massage services'),(21,17,'Lounge','Sitting area'),(22,12,'Entertainment Centre','Projector show of different movies'),(23,12,'Coffee Centre ','Coffee with Complimentary espresso beans'),(24,12,'Wifi ','wifi with 40 mbps speed'),(25,2,'Auditorium','Auditorium '),(26,2,'Buffet Dining','Buffet Dining services');
/*!40000 ALTER TABLE `amenities_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch_master`
--

DROP TABLE IF EXISTS `branch_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch_master` (
  `BID` int NOT NULL AUTO_INCREMENT,
  `branch_name` text NOT NULL,
  `branch_email` varchar(30) NOT NULL,
  `Address_Line1` varchar(30) NOT NULL,
  `Address_Line2` varchar(30) NOT NULL,
  `Address_Line3` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pincode` int NOT NULL,
  PRIMARY KEY (`BID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_master`
--

LOCK TABLES `branch_master` WRITE;
/*!40000 ALTER TABLE `branch_master` DISABLE KEYS */;
INSERT INTO `branch_master` VALUES (1,'Bodakdev_branch','bodak.brch@bcms.com','sunrise club','kamla park','Opposite 502 ring road','Bodakdev','Ahmedabad','Gujarat',380054),(2,'tarsali branch','tarsal.brch@bcms.com','Central Club','Near BMC Bank','S G Highway','tarsali','vadodara','Gujarat',380009),(3,'kothrud branch','kothrud.brch@bcms.com','Orion clubs','Opposite Shefali bank','Sindhubhavan Road','kothrud','pune','Maharashtra',450002),(4,'Khanpur Branch','khanpur.branch@bcms.com','Vallient Venues Club','Surend Party Plot','Satellite ','Arawalli','Nellie','Manipur',782105),(5,'Satellite Branch','satellite.branch@bcms.com','Eden Club','Opposite Holy Firuska','Near St. Xavier\'s College','Satellite','Surat','Gujarat',380001),(6,'Vejalpur Branch','vejalpur.branch@bcms.com','Sacred Spaces Club','Near HDFC Bank','Opposite Hocco Eatery','Vejalpur','JagiRoad','Manipur',782100),(7,'Sarkhej Branch','sarkhej.branch@bcms.com','Celebration Space CLub','Opposite Hocco Eatery','Near SBR Eatery','Sarkhej','Rajkot','Gujarat',380341),(8,'Pentalia Branch','pentalia.branch@bcms.com','The reflection Club','Near St. Xavier\'s College','Opposite Holy Firuska','Pentalia','Amritsar','Punjab',143001),(9,'YMCA Branch','ymca.branch@bcms.com','Memory Maker Club','Opposite Phoenix Mall','Near Mamzar Beach','YMCA','Damal','Manipur',782038),(10,'Pentonia Branch','pentonia.branch@bcms.com','Better Life Club','Near Bank Of the Emirates','Opposite TBZ Jewellers','Pentonia','Firozpur','Punjab',143116),(11,'Union Branch','union.branch@bcms.com','Unforgettable Club','Opposite PlayBoy Club','Near HDFC Bank','Union Gem','Panaji','Goa',403110),(12,'Ritzi Branch','ritzi.branch@bcms.com','The ski-fun Club','Near LPU ','Opposite Hotel Ritz-Inn','Ritzi','Alikuchi','Manipur',782311),(13,'Sharjah Branch','sharjah.branch@bcms.com','Luxe Clubs','Opposite Tecom','Near Al-Nahda','Sharjah','Guntakal','Andhra Pradesh',516421),(14,'Bathinda Branch','bathinda.branch@bcms.com','One Roof Club','Barsha Heights','Opposite Fly Arabia','Patiala','Bathinda','Punjab',143502),(15,'Petunia Branch','petunia.branch@bcms.com','Venyou Club','Opposite 502 ring road','Near Bank Of the Emirates','Petunia','Ahatguri','Manipur',782412),(16,'Advalpal Branch','advalpal.branch@bcms.com','Make Memories Club','Near SBR Eatery','Opposite Phoenix Mall','Advalpal','Ponpuda','Goa',403503),(17,'Chittor Branch','chittor.branch@bcms.com','Roof Risers Club','Opposite Fly Arabia','Near Alpha Mall','Narsinha','Chittoor','Andhra Pradesh',509375),(18,'Agra Branch','agra.branch@bcms.com','Memory Factory Club','Near Barsha Heights','Opposite Swarovski','Tecom','Agra','Delhi',110354),(19,'Phoenix Branch','phoenix.branch@bcms.com','Under One Roof Club','Opposite Bank Of the Emirates','Near Pangora','Gavan','Ludhiana','Punjab',143001),(20,'Canacona Branch','canacona.branch@bcms.com','Ready To Rock Club','Near AIR INDIA','Fountain Of Vegas','Assonora','Canacona','Goa',403516),(21,'Assonara Branch','assonara.branch@bcms.com','HQ Venues Club','Near absorie garden','Opposite Rangazine','Dadar','Tadipatri','Andhra Pradesh',507160),(22,'Kondli Branch','kondli.branch@bcms.com','Celebration Station Club','Opposite Gendan Villa','Near Zebra portal','Belapur','Kondli','Delhi',110055),(23,'Nellore Branch','nellore.branch@bcms.com','Avenue Clubs','Near Khanpur Police Station','Opposite Raj Towers','Bycullaa','Nellore','Andhra Pradesh',503302),(24,'Bawana Branch','bawana.branch@bcms.com','Square Hill Club','Near Banana Leaf','Opposite Okhaliya Town palace','Bandra','Bawana','Delhi',110005),(25,'Kakinanda Branch','kakinanda.branch@bcms.com','Diamond Grove Club','Opposite Rangeen Restaurant','Near Tulliya Tomb','Andheri','Kakinanda','Andhra Pradesh',515621),(26,'Aurangabad Branch','auranga.branch@bcms.com','Paradise Club','Near Poetry Cafe','Opposite Gendan Villa','Airoli','Aurangabad','Maharshtra',450098),(27,'Tirupati Branch','tirupati.branch@bcms.com','Dream Village Club','Opposite Tulna Office','Near absorie garden','Panvel','Tirupati','Andhra Pradesh',507121),(28,'Connaught Branch','connaught.branch@bcms.com','Gateway Centre Club','Opposite Raj Towers','Near Persue','Vashi','Connaught Palace','Delhi',110002),(29,'Mumbai Branch','mumbai.branch@bcms.com','Goldstar Club','Near HDFC Bank','Opposite SBK ','Borli','Mumbai','Maharashtra',450001),(30,'Rifle  Branch','rifle.branch@bcms.com','Pearl Stable Club','Opposite Swarovski','Near Sports Club','Kalupur','Amravati','Andhra Pradesh',509210),(31,'Abdal Branch','abdal.branch@bcms.com','Grand Town Club','Opposite Fly Arabia','Near Pondal Palace','Abdal','Jalandhar','Punjab',143502),(32,'Gurugram Branch','gurugram.branch@bcms.com','iDo Club','Near Pangora','Opposite Bengaar','Sikri','Gurugram','Delhi',110069),(33,'Nashik Branch','nashik.branch@bcms.com','Horizon Club','Opposite Hotel Ritz-Inn','Near Ambralli','Fatehgarh','Nashik','Maharashtra',450812),(34,'Udaipur Branch','udaipur.branch@bcms.com','Castle Club','Near Lake Pichola','Opposite Ritz Inn','Fateh Sagar','Udaipur','Tripura',799005);
/*!40000 ALTER TABLE `branch_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_leave`
--

DROP TABLE IF EXISTS `emp_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_leave` (
  `LID` int NOT NULL AUTO_INCREMENT,
  `EID` int NOT NULL,
  `BID` int NOT NULL,
  `Start_date` date NOT NULL COMMENT 'given by employee',
  `End_Date` date NOT NULL,
  `Description` varchar(256) NOT NULL,
  `Status` varchar(25) NOT NULL COMMENT 'granted/not granted',
  PRIMARY KEY (`LID`),
  KEY `empL_EID` (`EID`),
  KEY `empL_BID` (`BID`),
  CONSTRAINT `empL_BID` FOREIGN KEY (`BID`) REFERENCES `branch_master` (`BID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `empL_EID` FOREIGN KEY (`EID`) REFERENCES `employee_master` (`EID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_leave`
--

LOCK TABLES `emp_leave` WRITE;
/*!40000 ALTER TABLE `emp_leave` DISABLE KEYS */;
INSERT INTO `emp_leave` VALUES (2,1,1,'2020-04-10','2020-04-25','Water Logging','Disapproved'),(3,2,30,'2019-09-06','2019-09-10','Death in the family','Approved'),(4,5,31,'2020-07-15','2020-07-20','Diagnosed with flu ','Approved'),(5,3,32,'2019-03-13','2019-03-20','Fractured my leg','Approved'),(6,7,16,'2019-10-13','2019-10-16','Cousins Wedding','Approved'),(7,8,11,'2020-04-26','2020-05-01','Eye Operation','Approved'),(8,11,12,'2019-01-20','2019-01-25','Social Function','Approved'),(9,15,15,'2020-04-27','0000-00-00','Dentist Appointment','Approved'),(10,21,18,'2020-06-11','2020-06-15','Vacation With Family','Approved'),(11,13,21,'2019-01-22','2019-01-27','Paint Job At Home','DisApproved'),(12,17,22,'2020-02-26','2020-03-01','Annual Checkup','Approved'),(13,25,29,'2018-02-11','2018-02-13','Blood Donation','Approved'),(14,21,30,'2019-02-01','2019-02-05','Neighbors Funeral','Approved'),(15,26,12,'2020-08-18','2020-08-30','Car Accident','Approved'),(16,30,1,'2019-05-23','2019-05-30','Kid Is Sick','DisApproved'),(17,11,2,'2019-02-01','2019-02-15','Shifting Home','DisApproved'),(18,15,4,'2018-06-25','2018-07-31','Roads Closed','DisApproved'),(19,30,5,'2019-06-02','2019-06-15','Death In Family','Approved'),(20,14,3,'2020-04-20','2020-04-25','Guests','DisApproved'),(21,15,7,'2019-01-20','2019-01-25','Domestic Meeting','Approved'),(22,20,1,'2020-09-01','2020-09-04','Religious Ceremony','DisApproved'),(23,30,10,'2019-01-20','2019-01-24','Daughters Wedding','Approved'),(24,21,12,'2020-03-14','2020-03-16','Social Function','Approved'),(25,22,21,'2018-07-01','2018-06-25','International Meeting','Approved'),(26,14,2,'2019-03-07','2019-03-11','Sick','Approved');
/*!40000 ALTER TABLE `emp_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_category`
--

DROP TABLE IF EXISTS `employee_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_category` (
  `ECATID` int NOT NULL AUTO_INCREMENT,
  `Description` varchar(50) NOT NULL COMMENT 'like - waiter,supervisor,cashier,etc',
  PRIMARY KEY (`ECATID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_category`
--

LOCK TABLES `employee_category` WRITE;
/*!40000 ALTER TABLE `employee_category` DISABLE KEYS */;
INSERT INTO `employee_category` VALUES (1,'Marketing'),(2,'Room Service'),(3,'Concierge'),(4,'Security'),(5,'Maintenance'),(6,'Life Guard'),(7,'Guest Service'),(8,'Front Desk'),(9,'Food Service'),(10,'Accountant'),(11,'Gym Trainer'),(12,'Sports Coach'),(13,'Doorman'),(14,'Cashier'),(15,'Housekeeper'),(16,'Chef'),(17,'Driver'),(18,'Hostess'),(19,'Bell Boy'),(20,'Conceirge');
/*!40000 ALTER TABLE `employee_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_complaint`
--

DROP TABLE IF EXISTS `employee_complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_complaint` (
  `ECOMID` int NOT NULL AUTO_INCREMENT,
  `EID` int NOT NULL,
  `BID` int NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` varchar(256) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ECOMID`),
  KEY `ec_EID` (`EID`),
  KEY `ec_BID` (`BID`),
  CONSTRAINT `ec_BID` FOREIGN KEY (`BID`) REFERENCES `branch_master` (`BID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ec_EID` FOREIGN KEY (`EID`) REFERENCES `employee_master` (`EID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_complaint`
--

LOCK TABLES `employee_complaint` WRITE;
/*!40000 ALTER TABLE `employee_complaint` DISABLE KEYS */;
INSERT INTO `employee_complaint` VALUES (1,16,4,'Office Rooms','light bulbs in the office rooms are faulty and need to be replaced','2020-11-02 07:56:29'),(2,33,7,'Behaviour','Manager did not treat well','2020-11-02 08:02:23'),(3,26,6,'Restaurant','The chef was rude','2020-11-02 07:59:08'),(4,33,7,'Restaurant','The chef was rude','2020-11-02 08:02:23'),(5,33,7,'Water','Unavailability of mineral water for employees','2020-11-02 08:02:23'),(6,34,7,'Garden Area','A lot of bugs are constantly increasing. Pest control is required','2020-11-02 08:02:23'),(7,34,7,'Salary','Irregular payment of salary','2020-11-02 08:02:23'),(8,8,3,'Water Cooler','Unavailability of cool water','2020-10-30 17:24:58'),(9,9,4,'Leave','Leaves are not approved even for genuine reasons','2020-10-30 17:24:58'),(10,34,7,'Food','Only leftover food is served to employees','2020-11-02 08:02:23'),(11,27,6,'Manager','The manager is very harsh, does not consider genuine reasons too.','2020-11-02 07:59:09'),(12,35,7,'Office Rooms','light bulbs in the office rooms are faulty and need to be replaced','2020-11-02 08:02:23'),(13,26,6,'Behaviour','Manager did not treat well','2020-11-02 07:59:09'),(14,51,10,'Restaurant','The chef was rude','2020-11-02 08:04:25'),(15,51,10,'Restaurant','The chef was rude','2020-11-02 08:04:25'),(16,51,10,'Water','Unavailability of mineral water for employees','2020-11-02 08:04:25'),(17,51,10,'Garden Area','A lot of bugs are constantly increasing. Pest control is required','2020-11-02 08:04:25'),(18,8,3,'Salary','Irregular payment of salary','2020-10-30 17:24:58'),(19,9,4,'Water Cooler','Unavailability of cool water','2020-10-30 17:24:59'),(20,51,10,'Leave','Leaves are not approved even for genuine reasons','2020-11-02 08:04:25'),(21,28,6,'Food','Only leftover food is served to employees','2020-11-02 07:59:09'),(22,51,10,'Manager','The manager is very harsh, does not consider genuine reasons too.','2020-11-02 08:04:25'),(23,26,6,'Office Rooms','light bulbs in the office rooms are faulty and need to be replaced','2020-11-02 07:59:09'),(24,51,10,'Behaviour','Manager did not treat well','2020-11-02 08:04:25'),(25,51,10,'Restaurant','The chef was rude','2020-11-02 08:04:25'),(26,51,10,'Restaurant','The chef was rude','2020-11-02 08:04:25'),(27,51,10,'Water','Unavailability of mineral water for employees','2020-11-02 08:04:25'),(28,8,3,'Garden Area','A lot of bugs are constantly increasing. Pest control is required','2020-10-30 17:24:59'),(29,9,4,'Salary','Irregular payment of salary','2020-10-30 17:24:59'),(30,51,10,'Water Cooler','Unavailability of cool water','2020-11-02 08:04:25'),(31,28,6,'Leave','Leaves are not approved even for genuine reasons','2020-11-02 07:59:09'),(32,59,12,'Food','Only leftover food is served to employees','2020-11-02 08:06:28'),(33,3,1,'Manager','The manager is very harsh, does not consider genuine reasons too.','2020-10-30 17:24:59'),(34,59,12,'Office Rooms','light bulbs in the office rooms are faulty and need to be replaced','2020-11-02 08:06:28'),(35,59,12,'Behaviour','Manager did not treat well','2020-11-02 08:06:28'),(36,59,12,'Restaurant','The chef was rude','2020-11-02 08:06:28'),(37,58,12,'Restaurant','The chef was rude','2020-11-02 08:06:28'),(38,8,3,'Water','Unavailability of mineral water for employees','2020-10-30 17:24:59'),(39,9,4,'Garden Area','A lot of bugs are constantly increasing. Pest control is required','2020-10-30 17:25:00'),(40,57,12,'Salary','Irregular payment of salary','2020-11-02 08:06:28'),(41,1,1,'Water Cooler','Unavailability of cool water','2020-10-30 17:37:02'),(42,57,12,'Leave','Leaves are not approved even for genuine reasons','2020-11-02 08:06:28'),(43,3,1,'Food','Only leftover food is served to employees','2020-10-30 17:14:25'),(44,56,12,'Manager','The manager is very harsh, does not consider genuine reasons too.','2020-11-02 08:06:28'),(45,56,12,'Office Rooms','light bulbs in the office rooms are faulty and need to be replaced','2020-11-02 08:06:28'),(46,56,12,'Behaviour','Manager did not treat well','2020-11-02 08:06:28'),(47,56,12,'Restaurant','The chef was rude','2020-11-02 08:06:28'),(48,8,3,'Restaurant','The chef was rude','2020-10-30 17:37:02'),(49,9,4,'Water','Unavailability of mineral water for employees','2020-10-30 17:37:02'),(50,54,12,'Garden Area','A lot of bugs are constantly increasing. Pest control is required','2020-11-02 08:06:28'),(51,1,1,'Salary','Irregular payment of salary','0000-00-00 00:00:00'),(52,54,12,'Water Cooler','Unavailability of cool water','2020-11-02 08:06:28'),(53,3,1,'Leave','Leaves are not approved even for genuine reasons','2020-10-30 17:14:26'),(54,55,12,'Food','Only leftover food is served to employees','2020-11-02 08:06:28'),(55,55,12,'Manager','The manager is very harsh, does not consider genuine reasons too.','2020-11-02 08:06:29'),(56,61,14,'Office Rooms','light bulbs in the office rooms are faulty and need to be replaced','2020-11-02 08:09:45'),(57,61,14,'Behaviour','Manager did not treat well','2020-11-02 08:09:45'),(58,8,3,'Restaurant','The chef was rude','2020-10-30 17:37:02'),(59,9,4,'Restaurant','The chef was rude','2020-10-30 17:37:02'),(60,62,14,'Water','Unavailability of mineral water for employees','2020-11-02 08:09:45'),(61,1,1,'Garden Area','A lot of bugs are constantly increasing. Pest control is required','0000-00-00 00:00:00'),(62,63,14,'Salary','Irregular payment of salary','2020-11-02 08:09:45'),(63,3,1,'Water Cooler','Unavailability of cool water','2020-10-30 17:37:02'),(64,62,14,'Leave','Leaves are not approved even for genuine reasons','2020-11-02 08:09:45'),(65,64,15,'Food','Only leftover food is served to employees','2020-11-02 08:11:17'),(66,64,15,'Manager','The manager is very harsh, does not consider genuine reasons too.','2020-11-02 08:11:17'),(67,65,15,'Office Rooms','light bulbs in the office rooms are faulty and need to be replaced','2020-11-02 08:11:17'),(68,8,3,'Behaviour','Manager did not treat well','2020-10-30 17:37:03'),(69,9,4,'Restaurant','The chef was rude','2020-10-30 17:37:03'),(70,66,15,'Restaurant','The chef was rude','2020-11-02 08:11:17'),(71,1,1,'Water','Unavailability of mineral water for employees','2020-10-30 17:37:03'),(72,70,16,'Garden Area','A lot of bugs are constantly increasing. Pest control is required','2020-11-02 08:11:17'),(73,3,1,'Salary','Irregular payment of salary','2020-10-30 17:14:27'),(74,69,16,'Water Cooler','Unavailability of cool water','2020-11-02 08:11:17'),(75,70,16,'Leave','Leaves are not approved even for genuine reasons','2020-11-02 08:11:17'),(76,69,16,'Food','Only leftover food is served to employees','2020-11-02 08:11:17'),(77,70,16,'Manager','The manager is very harsh, does not consider genuine reasons too.','2020-11-02 08:11:17'),(78,8,3,'Office Rooms','light bulbs in the office rooms are faulty and need to be replaced','2020-10-30 17:37:03'),(79,9,4,'Behaviour','Manager did not treat well','2020-10-30 17:37:03'),(80,70,16,'Restaurant','The chef was rude','2020-11-02 08:11:18'),(81,1,1,'Restaurant','The chef was rude','0000-00-00 00:00:00'),(82,69,16,'Water','Unavailability of mineral water for employees','2020-11-02 08:11:18'),(83,69,16,'Garden Area','A lot of bugs are constantly increasing. Pest control is required','2020-11-02 08:11:18'),(84,2,2,'Salary','Irregular payment of salary','2020-10-30 17:37:03'),(85,2,2,'Water Cooler','Unavailability of cool water','2020-10-30 17:14:27'),(86,3,1,'Leave','Leaves are not approved even for genuine reasons','2020-10-30 17:14:27'),(87,3,1,'Food','Only leftover food is served to employees','2020-10-30 17:14:27'),(88,4,2,'Manager','The manager is very harsh, does not consider genuine reasons too.','2020-10-30 17:14:27'),(89,4,2,'Office Rooms','light bulbs in the office rooms are faulty and need to be replaced','2020-10-30 17:37:03'),(90,4,2,'Behaviour','Manager did not treat well','2020-10-30 17:37:03'),(91,5,2,'Restaurant','The chef was rude','2020-10-30 17:14:27'),(92,5,2,'Restaurant','The chef was rude','2020-10-30 17:37:03'),(93,5,2,'Water','Unavailability of mineral water for employees','2020-10-30 17:14:28'),(94,5,2,'Garden Area','A lot of bugs are constantly increasing. Pest control is required','2020-10-30 17:37:03'),(95,5,2,'Salary','Irregular payment of salary','2020-10-30 17:37:03'),(96,5,2,'Water Cooler','Unavailability of cool water','2020-10-30 17:14:28'),(97,6,2,'Leave','Leaves are not approved even for genuine reasons','2020-10-30 17:37:03'),(98,6,2,'Food','Only leftover food is served to employees','2020-10-30 17:37:03'),(99,6,2,'Manager','The manager is very harsh, does not consider genuine reasons too.','2020-10-30 17:14:28');
/*!40000 ALTER TABLE `employee_complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_master`
--

DROP TABLE IF EXISTS `employee_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_master` (
  `EID` int NOT NULL AUTO_INCREMENT,
  `BID` int NOT NULL,
  `UID` int NOT NULL,
  `ECATID` int NOT NULL,
  `Joining_Date` date NOT NULL,
  `Leaving_Date` date DEFAULT NULL,
  `Time_Period` time DEFAULT NULL,
  `Salary` int NOT NULL,
  PRIMARY KEY (`EID`),
  KEY `empl_UID` (`UID`),
  KEY `branch_emploee` (`BID`),
  KEY `employee_ECATID` (`ECATID`),
  CONSTRAINT `branch_emploee` FOREIGN KEY (`BID`) REFERENCES `branch_master` (`BID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `empl_UID` FOREIGN KEY (`UID`) REFERENCES `user_master` (`UID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `employee_ECATID` FOREIGN KEY (`ECATID`) REFERENCES `employee_category` (`ECATID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_master`
--

LOCK TABLES `employee_master` WRITE;
/*!40000 ALTER TABLE `employee_master` DISABLE KEYS */;
INSERT INTO `employee_master` VALUES (1,1,3,1,'2019-08-12','2020-10-19','09:00:00',10000),(2,1,6,1,'2020-06-23',NULL,'03:45:00',10000),(3,1,7,2,'2020-03-21',NULL,'05:00:00',10000),(4,1,8,10,'2018-01-19',NULL,'06:30:00',10000),(5,1,12,9,'2020-10-19',NULL,'03:00:00',10000),(6,1,16,8,'2019-02-23',NULL,'04:45:00',10000),(7,1,21,7,'2018-04-29',NULL,'07:45:00',10000),(8,2,31,6,'2020-10-19',NULL,'04:05:00',10000),(9,2,38,5,'2019-02-23',NULL,'08:00:00',10000),(10,2,42,4,'2018-08-13','2020-10-19','01:00:00',10000),(11,2,47,3,'2020-10-19',NULL,'02:00:00',10000),(12,2,55,10,'2019-02-23',NULL,'02:00:00',10000),(13,2,56,1,'2018-02-23','2020-10-01','08:15:00',10000),(14,2,58,2,'2020-10-29',NULL,'07:00:00',10000),(15,4,59,9,'2020-02-28',NULL,'03:30:00',10000),(16,4,61,2,'2020-10-19',NULL,'01:45:00',10000),(17,4,62,8,'2019-04-23',NULL,'03:45:00',10000),(18,4,63,7,'2020-01-19',NULL,'05:00:00',10000),(19,4,64,6,'2019-02-23',NULL,'07:00:00',10000),(20,4,65,3,'2020-10-19',NULL,'01:45:00',10000),(21,4,66,5,'2019-02-23',NULL,'04:30:00',10000),(22,4,67,5,'2018-02-23','2020-10-30','01:30:00',10000),(23,4,68,5,'2019-03-16',NULL,'05:30:00',10000),(24,4,69,5,'2019-02-23',NULL,'09:45:00',10000),(25,4,70,5,'2020-10-03',NULL,'00:30:00',10000),(26,6,71,4,'2020-09-19',NULL,'04:45:00',10000),(27,6,72,3,'2020-06-15',NULL,'07:15:00',10000),(28,6,73,2,'2019-10-09',NULL,'03:00:00',10000),(29,6,74,2,'2020-03-19',NULL,'02:30:00',10000),(30,6,75,1,'2020-06-03',NULL,'05:00:00',10000),(31,6,76,2,'2018-02-23',NULL,NULL,10000),(32,6,77,3,'2018-09-06',NULL,NULL,10000),(33,7,78,3,'2019-04-23',NULL,NULL,10000),(34,7,79,3,'2017-01-11',NULL,NULL,10000),(35,7,80,4,'2018-07-14',NULL,NULL,10000),(36,7,81,5,'2019-05-25',NULL,NULL,10000),(37,7,82,6,'2018-05-28',NULL,NULL,10000),(38,7,83,10,'2019-07-08',NULL,NULL,10000),(39,7,84,7,'2018-06-25',NULL,NULL,10000),(40,7,85,7,'2020-09-05',NULL,NULL,10000),(41,7,86,8,'2020-01-25',NULL,NULL,10000),(42,7,87,8,'2019-03-16',NULL,NULL,10000),(43,7,88,4,'2018-06-25',NULL,NULL,10000),(44,7,89,5,'2019-04-26',NULL,NULL,10000),(45,7,90,3,'2019-08-15',NULL,NULL,10000),(46,7,91,2,'2020-01-26',NULL,NULL,10000),(47,10,92,8,'2019-04-05',NULL,NULL,10000),(48,10,93,9,'2020-01-03',NULL,NULL,10000),(49,10,94,10,'2019-02-14',NULL,NULL,10000),(50,10,95,2,'2019-05-23',NULL,NULL,10000),(51,10,96,3,'2019-12-25',NULL,NULL,10000),(52,10,97,1,'2019-08-12',NULL,NULL,10000),(53,10,98,1,'2020-11-30',NULL,NULL,10000),(54,12,99,5,'2018-02-28',NULL,NULL,10000),(55,12,100,5,'2018-02-23',NULL,NULL,10000),(56,12,101,5,'2018-02-13',NULL,NULL,10000),(57,12,102,6,'2019-05-23',NULL,NULL,10000),(58,12,103,6,'2018-12-03',NULL,NULL,10000),(59,12,104,6,'2019-11-13',NULL,NULL,10000),(60,12,105,6,'2018-02-23',NULL,NULL,10000),(61,14,106,7,'2019-07-03',NULL,NULL,10000),(62,14,107,8,'2020-04-24',NULL,NULL,10000),(63,14,108,8,'2019-05-25',NULL,NULL,10000),(64,15,109,7,'2020-03-24',NULL,NULL,10000),(65,15,110,7,'2019-08-18',NULL,NULL,10000),(66,15,111,9,'2018-12-18',NULL,NULL,10000),(67,15,112,9,'2019-06-23',NULL,NULL,10000),(68,15,113,10,'2018-09-21',NULL,NULL,10000),(69,16,114,10,'2020-10-19',NULL,NULL,10000),(70,16,115,10,'2019-08-12',NULL,NULL,10000),(71,1,116,1,'2020-04-24','0000-00-00','09:00:00',10000),(72,1,117,1,'2019-08-12',NULL,'03:45:00',10000),(73,1,118,2,'2020-04-24',NULL,'05:00:00',10000),(74,1,119,10,'2020-04-24',NULL,'06:30:00',10000),(75,1,120,9,'2020-04-24',NULL,'03:00:00',10000),(76,1,121,8,'2020-04-24',NULL,'04:45:00',10000),(77,1,122,7,'2020-04-24',NULL,'07:45:00',10000),(78,2,123,6,'2019-08-12',NULL,'04:05:00',10000),(79,2,124,5,'2019-08-12',NULL,'08:00:00',10000),(80,2,125,4,'2020-04-24','0000-00-00','01:00:00',10000),(81,2,126,3,'2018-07-14',NULL,'02:00:00',10000),(82,2,127,10,'2018-07-14',NULL,'02:00:00',10000),(83,2,128,1,'2018-07-14','0000-00-00','08:15:00',10000),(84,2,129,2,'2020-04-24',NULL,'07:00:00',10000),(85,4,130,9,'2020-04-24',NULL,'03:30:00',10000),(86,4,131,2,'2020-04-24',NULL,'01:45:00',10000),(87,4,132,8,'2018-07-14',NULL,'03:45:00',10000),(88,4,133,7,'2018-07-14',NULL,'05:00:00',10000),(89,4,134,6,'2018-07-14',NULL,'07:00:00',10000),(90,4,135,3,'2018-07-14',NULL,'01:45:00',10000),(91,4,136,5,'2020-04-24',NULL,'04:30:00',10000),(92,4,137,5,'2020-04-24','2020-04-24','01:30:00',10000),(93,4,138,5,'2020-04-24',NULL,'05:30:00',10000),(94,4,139,5,'2018-02-23',NULL,'09:45:00',10000),(95,4,140,5,'2018-02-23',NULL,'00:30:00',10000),(96,6,141,4,'2018-02-23',NULL,'04:45:00',10000),(97,6,142,3,'2018-02-23',NULL,'07:15:00',10000),(98,6,143,2,'2020-04-24',NULL,'03:00:00',10000),(99,6,144,2,'2018-07-14',NULL,'02:30:00',10000),(100,6,145,1,'2020-04-24',NULL,'05:00:00',10000),(101,6,146,2,'2020-04-24',NULL,NULL,10000),(102,6,147,3,'2018-07-14',NULL,NULL,10000),(103,7,148,3,'2020-04-24',NULL,NULL,10000),(104,7,149,3,'2018-07-14',NULL,NULL,10000),(105,7,150,4,'2020-04-24',NULL,NULL,10000),(106,7,151,5,'2018-07-14',NULL,NULL,10000),(107,7,152,6,'2018-07-14',NULL,NULL,10000),(108,7,153,10,'2020-04-24',NULL,NULL,10000),(109,7,154,7,'2020-04-24',NULL,NULL,10000),(110,7,155,7,'2018-07-14',NULL,NULL,10000),(111,7,156,8,'2018-07-14',NULL,NULL,10000),(112,7,157,8,'2020-04-24',NULL,NULL,10000),(113,7,158,4,'2020-04-24',NULL,NULL,10000),(114,7,159,5,'2018-07-14',NULL,NULL,10000),(115,7,160,3,'2020-04-24',NULL,NULL,10000),(116,7,161,2,'2019-05-25',NULL,NULL,10000),(117,10,162,8,'2020-04-24',NULL,NULL,10000),(118,10,163,9,'2020-04-24',NULL,NULL,10000),(119,10,164,10,'2019-05-25',NULL,NULL,10000),(120,10,165,2,'2019-05-25',NULL,NULL,10000),(121,10,166,3,'2019-05-25',NULL,NULL,10000),(122,10,167,1,'2019-05-25',NULL,NULL,10000),(123,10,168,1,'2020-04-24',NULL,NULL,10000),(124,12,169,5,'2020-04-24',NULL,NULL,10000),(125,12,170,5,'2020-04-24',NULL,NULL,10000),(126,12,171,5,'2019-05-25',NULL,NULL,10000),(127,12,172,6,'2019-05-25',NULL,NULL,10000),(128,12,173,6,'2019-05-25',NULL,NULL,10000),(129,12,174,6,'2019-05-25',NULL,NULL,10000),(130,12,175,6,'2019-05-25',NULL,NULL,10000),(141,1,116,1,'2020-04-24','2020-04-24','09:00:00',10000),(142,1,117,1,'2020-04-24',NULL,'03:45:00',10000),(143,1,118,2,'2018-04-24',NULL,'05:00:00',10000),(144,1,119,10,'2018-04-24',NULL,'06:30:00',10000),(145,1,120,9,'2020-04-24',NULL,'03:00:00',10000),(146,1,121,8,'2020-04-24',NULL,'04:45:00',10000),(147,1,122,7,'2018-05-25',NULL,'07:45:00',10000),(148,2,123,6,'2018-05-25',NULL,'04:05:00',10000),(149,2,124,5,'2018-05-25',NULL,'08:00:00',10000),(150,2,125,4,'2018-05-25','2020-04-24','01:00:00',10000),(151,2,126,3,'2020-04-24',NULL,'02:00:00',10000),(152,2,127,10,'2018-05-25',NULL,'02:00:00',10000),(153,2,128,1,'2020-04-24','2020-04-24','08:15:00',10000),(154,2,129,2,'2020-04-24',NULL,'07:00:00',10000),(155,4,130,9,'2020-04-24',NULL,'03:30:00',10000),(156,4,131,2,'2019-05-25',NULL,'01:45:00',10000),(157,4,132,8,'2020-04-24',NULL,'03:45:00',10000),(158,4,133,7,'2019-05-25',NULL,'05:00:00',10000),(159,4,134,6,'2019-05-25',NULL,'07:00:00',10000),(160,4,135,3,'2020-04-24',NULL,'01:45:00',10000),(161,4,136,5,'2020-04-24',NULL,'04:30:00',10000),(162,4,137,5,'2020-04-24','2020-04-24','01:30:00',10000),(163,4,138,5,'2018-02-23',NULL,'05:30:00',10000),(164,4,139,5,'2018-02-23',NULL,'09:45:00',10000),(165,4,140,5,'2018-02-23',NULL,'00:30:00',10000),(166,6,141,4,'2018-02-23',NULL,'04:45:00',10000),(167,6,142,3,'2019-05-25',NULL,'07:15:00',10000),(168,6,143,2,'2019-05-25',NULL,'03:00:00',10000),(169,6,144,2,'2020-04-24',NULL,'02:30:00',10000),(170,6,145,1,'2020-04-24',NULL,'05:00:00',10000),(171,6,146,2,'2020-04-24',NULL,NULL,10000),(172,6,147,3,'2019-05-25',NULL,NULL,10000),(173,7,148,3,'2019-05-25',NULL,NULL,10000),(174,7,149,3,'2020-04-24',NULL,NULL,10000),(175,7,150,4,'2018-02-23',NULL,NULL,10000),(176,7,151,5,'2018-02-23',NULL,NULL,10000),(177,7,152,6,'2018-02-23',NULL,NULL,10000),(178,7,153,10,'2018-02-23',NULL,NULL,10000),(179,7,154,7,'2018-02-23',NULL,NULL,10000),(180,7,155,7,'2020-04-24',NULL,NULL,10000),(181,7,156,8,'2020-04-24',NULL,NULL,10000),(182,7,157,8,'2019-05-25',NULL,NULL,10000),(183,7,158,4,'2019-05-25',NULL,NULL,10000),(184,7,159,5,'2020-04-24',NULL,NULL,10000),(185,7,160,3,'2020-04-24',NULL,NULL,10000),(186,7,161,2,'2020-04-24',NULL,NULL,10000),(187,10,162,8,'2020-04-24',NULL,NULL,10000),(188,10,163,9,'2020-04-24',NULL,NULL,10000),(189,10,164,10,'2020-04-24',NULL,NULL,10000),(190,10,165,2,'2020-04-24',NULL,NULL,10000),(191,10,166,3,'2019-08-12',NULL,NULL,10000),(192,10,167,1,'2019-08-12',NULL,NULL,10000),(193,10,168,1,'2019-08-12',NULL,NULL,10000),(194,12,169,5,'2019-08-12',NULL,NULL,10000),(195,12,170,5,'2019-08-12',NULL,NULL,10000),(196,12,171,5,'2019-08-12',NULL,NULL,10000),(197,12,172,6,'2019-08-12',NULL,NULL,10000),(198,12,173,6,'2019-08-12',NULL,NULL,10000),(199,12,174,6,'2020-08-12',NULL,NULL,10000),(200,12,175,6,'2019-08-12',NULL,NULL,10000);
/*!40000 ALTER TABLE `employee_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `FID` int NOT NULL AUTO_INCREMENT,
  `BID` int NOT NULL,
  `MID` int NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` varchar(256) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`FID`),
  KEY `feedback_BID` (`BID`),
  KEY `member_MID` (`MID`),
  CONSTRAINT `feedback_BID` FOREIGN KEY (`BID`) REFERENCES `branch_master` (`BID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `member_MID` FOREIGN KEY (`MID`) REFERENCES `member_master` (`MID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,1,1,'Club Facilities','all the facilities are top class, i had fun here but swimming pool needs to be maintained regularly ','2020-10-24 17:11:05'),(2,2,1,'Restaurant','The food was delicious!','2020-10-27 16:23:28'),(3,1,1,'Swimming Pool','The water was clean.','2020-10-26 14:33:07'),(4,2,1,'Swimming Pool','The services were good.','2020-10-27 16:23:28'),(5,1,1,'Hotel','The stay was very good, we had a very nice trip.','2020-10-26 20:09:58'),(6,1,1,'Garden Area','The flowers are beautiful. It makes the ambience look very pretty.','2020-10-26 20:11:32'),(7,2,1,'Ambience','Very nice club','2020-10-27 16:23:28'),(8,1,1,'Spa and Salon','Very soothing services.','2020-10-26 20:41:50'),(9,1,1,'Gym','The music is very high, creates a good workout atmosphere.','2020-10-26 20:49:18'),(10,2,1,'Services','Very prompt services. Amazing staff.','2020-10-27 16:23:28'),(11,1,1,'Lightning','The lightning makes the ambience lighten up which gives very good feeling','2020-10-26 20:53:39'),(12,1,1,'Library','The books are very well maintained','2020-10-26 20:54:17'),(13,1,1,'Football Court','The court was not at all slippery, very well for constant playing','2020-10-26 20:56:20'),(14,1,1,'Music','The music vibe is very cool','2020-10-26 20:56:50'),(15,1,1,'Fountain Show','The fountain show looked very nice','2020-10-26 20:57:15'),(16,1,1,'Food','The food was not at all oily, very happening place to hang out.','2020-10-26 20:59:06'),(17,2,11,'Club Facilities','all the facilities are top class, i had fun here but swimming pool needs to be maintained regularly ','2020-11-02 07:13:33'),(18,2,11,'Restaurant','The food was delicious!','2020-11-02 07:13:33'),(19,2,11,'Swimming Pool','The water was clean.','2020-11-02 07:13:33'),(20,2,11,'Swimming Pool','The services were good.','2020-11-02 07:13:33'),(21,2,11,'Hotel','The stay was very good, we had a very nice trip.','2020-11-02 07:13:34'),(22,2,11,'Garden Area','The flowers are beautiful. It makes the ambience look very pretty.','2020-11-02 07:13:34'),(23,2,11,'Ambience','Very nice club','2020-11-02 07:13:34'),(24,2,11,'Spa and Salon','Very soothing services.','2020-11-02 07:13:34'),(25,2,11,'Gym','The music is very high, creates a good workout atmosphere.','2020-11-02 07:13:34'),(26,2,11,'Services','Very prompt services. Amazing staff.','2020-11-02 07:13:35'),(27,2,11,'Lightning','The lightning makes the ambience lighten up which gives very good feeling','2020-11-02 07:13:35'),(28,2,11,'Library','The books are very well maintained','2020-11-02 07:13:35'),(29,3,5,'Football Court','The court was not at all slippery, very well for constant playing','2020-11-02 07:13:35'),(30,3,5,'Music','The music vibe is very cool','2020-11-02 07:13:36'),(31,3,5,'Fountain Show','The fountain show looked very nice','2020-11-02 07:13:36'),(32,3,5,'Food','The food was not at all oily, very happening place to hang out.','2020-11-02 07:13:36'),(33,3,5,'Club Facilities','all the facilities are top class, i had fun here but swimming pool needs to be maintained regularly ','2020-11-02 07:13:36'),(34,3,5,'Restaurant','The food was delicious!','2020-11-02 07:13:36'),(35,3,5,'Swimming Pool','The water was clean.','2020-11-02 07:13:37'),(36,3,5,'Swimming Pool','The services were good.','2020-11-02 07:13:37'),(37,3,5,'Hotel','The stay was very good, we had a very nice trip.','2020-11-02 07:13:37'),(38,3,5,'Garden Area','The flowers are beautiful. It makes the ambience look very pretty.','2020-11-02 07:13:37'),(39,3,5,'Ambience','Very nice club','2020-11-02 07:13:38'),(40,3,5,'Spa and Salon','Very soothing services.','2020-11-02 07:13:38'),(41,4,4,'Gym','The music is very high, creates a good workout atmosphere.','2020-11-02 07:13:38'),(42,4,4,'Services','Very prompt services. Amazing staff.','2020-11-02 07:13:38'),(43,4,4,'Lightning','The lightning makes the ambience lighten up which gives very good feeling','2020-11-02 07:13:39'),(44,4,4,'Library','The books are very well maintained','2020-11-02 07:13:39'),(45,4,4,'Football Court','The court was not at all slippery, very well for constant playing','2020-11-02 07:13:39'),(46,4,4,'Music','The music vibe is very cool','2020-11-02 07:13:39'),(47,4,4,'Fountain Show','The fountain show looked very nice','2020-11-02 07:13:39'),(48,4,4,'Food','The food was not at all oily, very happening place to hang out.','2020-11-02 07:13:40'),(49,4,4,'Club Facilities','all the facilities are top class, i had fun here but swimming pool needs to be maintained regularly ','2020-11-02 07:13:40'),(50,4,4,'Restaurant','The food was delicious!','2020-11-02 07:13:40'),(51,4,4,'Swimming Pool','The water was clean.','2020-11-02 07:13:40'),(52,4,4,'Swimming Pool','The services were good.','2020-11-02 07:13:41'),(53,4,4,'Hotel','The stay was very good, we had a very nice trip.','2020-11-02 07:13:41'),(54,4,4,'Garden Area','The flowers are beautiful. It makes the ambience look very pretty.','2020-11-02 07:13:41'),(55,4,4,'Ambience','Very nice club','2020-11-02 07:13:41'),(56,7,3,'Spa and Salon','Very soothing services.','2020-11-02 07:13:41'),(57,7,3,'Gym','The music is very high, creates a good workout atmosphere.','2020-11-02 07:13:42'),(58,7,3,'Services','Very prompt services. Amazing staff.','2020-11-02 07:13:42'),(59,7,3,'Lightning','The lightning makes the ambience lighten up which gives very good feeling','2020-11-02 07:13:42'),(60,7,3,'Library','The books are very well maintained','2020-11-02 07:13:42'),(61,7,3,'Football Court','The court was not at all slippery, very well for constant playing','2020-11-02 07:13:43'),(62,7,3,'Music','The music vibe is very cool','2020-11-02 07:13:43'),(63,7,3,'Fountain Show','The fountain show looked very nice','2020-11-02 07:13:43'),(64,7,3,'Food','The food was not at all oily, very happening place to hang out.','2020-11-02 07:13:43'),(65,12,55,'Club Facilities','all the facilities are top class, i had fun here but swimming pool needs to be maintained regularly ','2020-11-02 07:13:43'),(66,12,55,'Restaurant','The food was delicious!','2020-11-02 07:13:44'),(67,12,55,'Swimming Pool','The water was clean.','2020-11-02 07:13:44'),(68,12,55,'Swimming Pool','The services were good.','2020-11-02 07:13:44'),(69,12,55,'Hotel','The stay was very good, we had a very nice trip.','2020-11-02 07:13:44'),(70,8,155,'Garden Area','The flowers are beautiful. It makes the ambience look very pretty.','2020-11-02 07:13:45'),(71,8,155,'Ambience','Very nice club','2020-11-02 07:13:45'),(72,8,155,'Spa and Salon','Very soothing services.','2020-11-02 07:13:45'),(73,8,155,'Gym','The music is very high, creates a good workout atmosphere.','2020-11-02 07:13:45'),(74,8,155,'Services','Very prompt services. Amazing staff.','2020-11-02 07:13:45'),(75,8,155,'Lightning','The lightning makes the ambience lighten up which gives very good feeling','2020-11-02 07:13:46'),(76,8,155,'Library','The books are very well maintained','2020-11-02 07:13:46'),(77,8,155,'Football Court','The court was not at all slippery, very well for constant playing','2020-11-02 07:13:46'),(78,8,155,'Music','The music vibe is very cool','2020-11-02 07:13:46'),(79,10,44,'Fountain Show','The fountain show looked very nice','2020-11-02 07:13:47'),(80,10,44,'Food','The food was not at all oily, very happening place to hang out.','2020-11-02 07:13:47'),(81,10,44,'Club Facilities','all the facilities are top class, i had fun here but swimming pool needs to be maintained regularly ','2020-11-02 07:13:47'),(82,10,44,'Restaurant','The food was delicious!','2020-11-02 07:13:47'),(83,10,44,'Swimming Pool','The water was clean.','2020-11-02 07:13:47'),(84,12,55,'Swimming Pool','The services were good.','2020-11-02 07:13:48'),(85,14,252,'Hotel','The stay was very good, we had a very nice trip.','2020-11-02 07:13:48'),(86,14,252,'Garden Area','The flowers are beautiful. It makes the ambience look very pretty.','2020-11-02 07:13:48'),(87,14,252,'Ambience','Very nice club','2020-11-02 07:13:48'),(88,14,252,'Spa and Salon','Very soothing services.','2020-11-02 07:13:49'),(89,14,252,'Gym','The music is very high, creates a good workout atmosphere.','2020-11-02 07:13:49'),(90,14,252,'Services','Very prompt services. Amazing staff.','2020-11-02 07:13:49'),(91,14,252,'Lightning','The lightning makes the ambience lighten up which gives very good feeling','2020-11-02 07:13:49'),(92,14,252,'Library','The books are very well maintained','2020-11-02 07:13:50'),(93,12,55,'Football Court','The court was not at all slippery, very well for constant playing','2020-11-02 07:13:50'),(94,12,55,'Music','The music vibe is very cool','2020-11-02 07:13:50'),(95,12,55,'Fountain Show','The fountain show looked very nice','2020-11-02 07:13:50'),(96,12,55,'Food','The food was not at all oily, very happening place to hang out.','2020-11-02 07:13:50'),(97,12,55,'Club Facilities','all the facilities are top class, i had fun here but swimming pool needs to be maintained regularly ','2020-11-02 07:13:51'),(98,8,155,'Restaurant','The food was delicious!','2020-11-02 07:13:51'),(99,8,155,'Swimming Pool','The water was clean.','2020-11-02 07:13:51'),(100,8,155,'Swimming Pool','The services were good.','2020-11-02 07:13:51'),(101,8,155,'Hotel','The stay was very good, we had a very nice trip.','2020-11-02 07:13:52'),(102,8,155,'Garden Area','The flowers are beautiful. It makes the ambience look very pretty.','2020-11-02 07:13:52'),(103,8,155,'Ambience','Very nice club','2020-11-02 07:13:52'),(104,8,155,'Spa and Salon','Very soothing services.','2020-11-02 07:13:52'),(105,7,3,'Gym','The music is very high, creates a good workout atmosphere.','2020-11-02 07:13:52'),(106,7,3,'Services','Very prompt services. Amazing staff.','2020-11-02 07:13:53'),(107,7,3,'Lightning','The lightning makes the ambience lighten up which gives very good feeling','2020-11-02 07:13:53'),(108,7,3,'Library','The books are very well maintained','2020-11-02 07:13:53'),(109,14,252,'Football Court','The court was not at all slippery, very well for constant playing','2020-11-02 07:13:53'),(110,14,252,'Music','The music vibe is very cool','2020-11-02 07:13:54'),(111,14,252,'Fountain Show','The fountain show looked very nice','2020-11-02 07:13:54'),(112,14,252,'Food','The food was not at all oily, very happening place to hang out.','2020-11-02 07:13:54');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager_master`
--

DROP TABLE IF EXISTS `manager_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager_master` (
  `MANID` int NOT NULL AUTO_INCREMENT,
  `BID` int NOT NULL,
  `UID` int NOT NULL,
  `Joining_Date` date NOT NULL,
  `Leaving_Date` date NOT NULL,
  PRIMARY KEY (`MANID`),
  KEY `manager_BID` (`BID`),
  KEY `manager_UID` (`UID`),
  CONSTRAINT `manager_BID` FOREIGN KEY (`BID`) REFERENCES `branch_master` (`BID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `manager_UID` FOREIGN KEY (`UID`) REFERENCES `user_master` (`UID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager_master`
--

LOCK TABLES `manager_master` WRITE;
/*!40000 ALTER TABLE `manager_master` DISABLE KEYS */;
INSERT INTO `manager_master` VALUES (1,1,2,'2019-08-15','0000-00-00'),(2,2,15,'2019-02-21','0000-00-00'),(3,23,17,'2019-03-25','0000-00-00'),(4,4,18,'2019-08-30','0000-00-00'),(5,15,20,'2020-09-21','0000-00-00'),(6,6,23,'2020-02-21','0000-00-00'),(7,17,22,'2019-10-21','0000-00-00'),(8,31,29,'2019-02-15','0000-00-00'),(9,24,30,'2020-06-11','0000-00-00'),(10,10,32,'2019-09-13','0000-00-00'),(11,16,34,'2019-02-21','0000-00-00'),(12,28,35,'2020-06-11','0000-00-00'),(13,14,37,'2018-01-15','0000-00-00'),(14,21,39,'2019-02-21','0000-00-00'),(15,30,43,'0000-00-00','0000-00-00'),(16,25,45,'2018-01-15','0000-00-00'),(17,12,46,'2020-03-22','0000-00-00'),(18,7,51,'2019-10-19','0000-00-00'),(19,19,52,'2019-11-17','0000-00-00'),(20,20,10,'2019-02-21','0000-00-00');
/*!40000 ALTER TABLE `manager_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_master`
--

DROP TABLE IF EXISTS `member_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_master` (
  `MID` int NOT NULL AUTO_INCREMENT,
  `MEMID` int NOT NULL,
  `UID` int NOT NULL,
  `BID` int NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`MID`),
  KEY `member_UID` (`MEMID`),
  CONSTRAINT `member_MEMID` FOREIGN KEY (`MEMID`) REFERENCES `membership_master` (`MEMID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `member_UID` FOREIGN KEY (`MEMID`) REFERENCES `user_master` (`UID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_master`
--

LOCK TABLES `member_master` WRITE;
/*!40000 ALTER TABLE `member_master` DISABLE KEYS */;
INSERT INTO `member_master` VALUES (1,1,4,1,'2020-10-26 12:17:13'),(2,2,11,9,'2020-10-28 16:39:51'),(3,2,13,7,'2020-10-28 16:39:52'),(4,2,14,4,'2020-10-28 16:39:53'),(5,3,19,3,'2020-10-28 16:39:53'),(6,3,24,2,'2020-10-28 16:39:53'),(7,3,25,2,'2020-10-28 16:39:53'),(8,1,26,2,'2020-10-28 16:39:53'),(9,1,27,2,'2020-10-28 16:39:53'),(10,3,28,2,'2020-10-28 16:39:54'),(11,3,36,2,'2020-10-28 16:39:54'),(12,2,40,2,'2020-10-28 16:39:54'),(13,1,41,2,'2020-10-28 16:39:54'),(14,1,44,2,'2020-10-28 16:39:54'),(15,2,48,2,'2020-10-28 16:39:55'),(16,3,49,2,'2020-10-28 16:39:55'),(17,1,50,2,'2020-10-28 16:39:55'),(18,3,53,4,'2020-10-28 16:39:55'),(19,3,54,12,'2020-10-28 16:39:55'),(20,3,57,2,'2020-10-28 16:39:55'),(21,3,60,3,'2020-10-28 16:39:55'),(43,1,4,2,'2020-10-30 14:28:00'),(44,2,11,10,'2020-10-30 14:28:00'),(45,2,13,3,'2020-10-30 14:28:01'),(46,2,14,2,'2020-10-30 14:28:01'),(47,3,19,4,'2020-10-30 14:28:01'),(48,3,24,12,'2020-10-30 14:28:02'),(49,3,25,12,'2020-10-30 14:28:02'),(50,1,26,12,'2020-10-30 14:28:02'),(51,1,27,12,'2020-10-30 14:28:02'),(52,3,28,12,'2020-10-30 14:28:03'),(53,3,36,12,'2020-10-30 14:28:03'),(54,2,40,12,'2020-10-30 14:28:03'),(55,1,41,12,'2020-10-30 14:28:04'),(56,1,44,12,'2020-10-30 14:28:04'),(57,2,48,12,'2020-10-30 14:28:04'),(58,3,49,12,'2020-10-30 14:28:05'),(59,1,50,12,'2020-10-30 14:28:05'),(60,3,53,12,'2020-10-30 14:28:05'),(61,3,54,4,'2020-10-30 14:28:05'),(62,3,57,10,'2020-10-30 14:28:06'),(63,3,60,10,'2020-10-30 14:28:06'),(93,3,24,2,'2020-10-30 14:40:43'),(94,3,25,2,'2020-10-30 14:40:43'),(95,1,26,2,'2020-10-30 14:40:43'),(96,1,27,2,'2020-10-30 14:40:44'),(97,3,28,2,'2020-10-30 14:40:44'),(98,3,36,2,'2020-10-30 14:40:44'),(99,2,40,2,'2020-10-30 14:40:44'),(100,1,41,2,'2020-10-30 14:40:45'),(101,1,44,2,'2020-10-30 14:40:45'),(102,2,48,2,'2020-10-30 14:40:45'),(103,3,49,2,'2020-10-30 14:40:46'),(104,1,50,2,'2020-10-30 14:40:46'),(105,3,54,12,'2020-10-30 14:40:46'),(106,3,57,2,'2020-10-30 14:40:47'),(107,1,4,2,'2020-10-30 14:40:47'),(108,2,14,2,'2020-10-30 14:40:47'),(109,3,24,12,'2020-10-30 14:40:47'),(110,3,25,12,'2020-10-30 14:40:48'),(111,1,26,12,'2020-10-30 14:40:48'),(112,1,27,12,'2020-10-30 14:40:48'),(113,3,28,12,'2020-10-30 14:40:48'),(114,3,36,12,'2020-10-30 14:40:49'),(115,2,40,12,'2020-10-30 14:40:49'),(116,1,41,12,'2020-10-30 14:40:49'),(117,1,44,12,'2020-10-30 14:40:50'),(118,2,48,12,'2020-10-30 14:40:50'),(119,3,49,12,'2020-10-30 14:40:50'),(120,1,50,12,'2020-10-30 14:40:50'),(121,3,53,12,'2020-10-30 14:40:51'),(122,3,54,1,'2020-10-30 15:17:12'),(123,3,24,1,'2020-10-30 15:17:12'),(124,3,25,1,'2020-10-30 15:17:13'),(125,1,26,1,'2020-10-30 15:17:13'),(126,1,27,1,'2020-10-30 15:17:13'),(127,3,28,1,'2020-10-30 15:17:13'),(128,3,36,1,'2020-10-30 15:17:14'),(129,2,40,1,'2020-10-30 15:17:14'),(130,1,41,1,'2020-10-30 15:17:14'),(131,1,44,1,'2020-10-30 15:17:15'),(132,2,48,1,'2020-10-30 15:17:15'),(133,3,49,1,'2020-10-30 15:17:15'),(134,1,50,1,'2020-10-30 15:17:16'),(135,3,53,1,'2020-10-30 15:17:16'),(136,3,54,1,'2020-10-30 15:17:17'),(137,3,24,1,'2020-10-30 15:17:17'),(138,3,25,1,'2020-10-30 15:17:17'),(139,1,26,1,'2020-10-30 15:17:18'),(140,1,27,1,'2020-10-30 15:17:18'),(141,3,28,1,'2020-10-30 15:17:18'),(142,3,36,1,'2020-10-30 15:17:18'),(143,2,40,1,'2020-10-30 15:17:19'),(144,1,41,1,'2020-10-30 15:17:19'),(145,1,44,1,'2020-10-30 15:17:20'),(146,2,48,1,'2020-10-30 15:17:20'),(147,3,49,1,'2020-10-30 15:17:20'),(148,1,50,1,'2020-10-30 15:17:21'),(149,3,53,1,'2020-10-30 15:17:22'),(150,1,4,8,'2020-10-30 15:40:18'),(151,2,11,8,'2020-10-30 15:40:18'),(152,2,13,8,'2020-10-30 15:40:18'),(153,2,14,8,'2020-10-30 15:40:19'),(154,3,19,8,'2020-10-30 15:40:19'),(155,3,24,8,'2020-10-30 15:40:19'),(156,3,25,8,'2020-10-30 15:40:20'),(157,1,26,8,'2020-10-30 15:40:20'),(158,1,27,8,'2020-10-30 15:40:20'),(159,3,28,8,'2020-10-30 15:40:20'),(160,3,36,8,'2020-10-30 15:40:21'),(161,2,40,8,'2020-10-30 15:40:21'),(162,1,41,8,'2020-10-30 15:40:21'),(163,1,44,8,'2020-10-30 15:40:21'),(164,2,48,8,'2020-10-30 15:40:22'),(165,3,49,8,'2020-10-30 15:40:22'),(166,1,50,8,'2020-10-30 15:40:22'),(167,3,53,8,'2020-10-30 15:40:22'),(168,3,54,8,'2020-10-30 15:40:23'),(169,3,57,8,'2020-10-30 15:40:23'),(170,3,60,8,'2020-10-30 15:40:23'),(171,1,4,8,'2020-10-30 15:40:24'),(172,2,11,8,'2020-10-30 15:40:24'),(173,2,13,8,'2020-10-30 15:40:24'),(174,2,14,8,'2020-10-30 15:40:24'),(175,3,19,8,'2020-10-30 15:40:25'),(176,3,24,8,'2020-10-30 15:40:25'),(177,3,25,8,'2020-10-30 15:40:25'),(178,1,26,8,'2020-10-30 15:40:25'),(179,1,27,8,'2020-10-30 15:40:26'),(180,3,28,8,'2020-10-30 15:40:26'),(181,3,36,8,'2020-10-30 15:40:26'),(182,2,40,8,'2020-10-30 15:40:27'),(183,1,41,8,'2020-10-30 15:40:27'),(184,1,44,8,'2020-10-30 15:40:27'),(185,2,48,8,'2020-10-30 15:40:28'),(186,3,49,8,'2020-10-30 15:40:28'),(187,1,50,8,'2020-10-30 15:40:28'),(188,3,53,8,'2020-10-30 15:40:28'),(189,3,54,8,'2020-10-30 15:40:29'),(190,3,57,8,'2020-10-30 15:40:29'),(191,3,60,8,'2020-10-30 15:40:29'),(192,3,24,8,'2020-10-30 15:40:29'),(193,3,25,8,'2020-10-30 15:40:30'),(194,1,26,8,'2020-10-30 15:40:30'),(195,1,27,8,'2020-10-30 15:40:30'),(196,3,28,8,'2020-10-30 15:40:30'),(197,3,36,8,'2020-10-30 15:40:31'),(198,2,40,8,'2020-10-30 15:40:31'),(199,1,41,8,'2020-10-30 15:40:31'),(200,1,44,8,'2020-10-30 15:40:32'),(201,2,48,8,'2020-10-30 15:40:32'),(202,3,49,8,'2020-10-30 15:40:32'),(203,1,50,8,'2020-10-30 15:40:32'),(204,3,54,8,'2020-10-30 15:40:33'),(205,3,57,8,'2020-10-30 15:40:33'),(206,1,4,8,'2020-10-30 15:40:33'),(207,2,14,8,'2020-10-30 15:40:34'),(208,3,24,8,'2020-10-30 15:40:34'),(209,3,25,8,'2020-10-30 15:40:34'),(210,1,26,8,'2020-10-30 15:40:34'),(211,1,27,8,'2020-10-30 15:40:35'),(212,3,28,8,'2020-10-30 15:40:35'),(213,3,36,8,'2020-10-30 15:40:35'),(214,2,40,8,'2020-10-30 15:40:35'),(215,1,41,8,'2020-10-30 15:40:36'),(216,1,44,8,'2020-10-30 15:40:36'),(217,2,48,8,'2020-10-30 15:40:36'),(218,3,49,8,'2020-10-30 15:40:37'),(219,1,50,8,'2020-10-30 15:40:37'),(220,3,53,8,'2020-10-30 15:40:37'),(221,3,54,8,'2020-10-30 15:40:37'),(222,3,24,8,'2020-10-30 15:40:38'),(223,3,25,8,'2020-10-30 15:40:38'),(224,1,26,8,'2020-10-30 15:40:38'),(225,1,27,8,'2020-10-30 15:40:38'),(226,3,28,8,'2020-10-30 15:40:39'),(227,3,36,8,'2020-10-30 15:40:39'),(228,2,40,8,'2020-10-30 15:40:39'),(229,1,41,8,'2020-10-30 15:40:39'),(230,1,44,8,'2020-10-30 15:40:40'),(231,2,48,8,'2020-10-30 15:40:40'),(232,3,49,8,'2020-10-30 15:40:40'),(233,1,50,8,'2020-10-30 15:40:41'),(234,3,53,8,'2020-10-30 15:40:41'),(235,3,54,8,'2020-10-30 15:40:41'),(236,3,24,8,'2020-10-30 15:40:41'),(237,3,25,8,'2020-10-30 15:40:42'),(238,1,26,8,'2020-10-30 15:40:42'),(239,1,27,8,'2020-10-30 15:40:42'),(240,3,28,8,'2020-10-30 15:40:43'),(241,3,36,8,'2020-10-30 15:40:43'),(242,2,40,8,'2020-10-30 15:40:43'),(243,1,41,8,'2020-10-30 15:40:43'),(244,1,44,8,'2020-10-30 15:40:44'),(245,2,48,8,'2020-10-30 15:40:44'),(246,3,49,8,'2020-10-30 15:40:44'),(247,1,50,8,'2020-10-30 15:40:44'),(248,3,53,8,'2020-10-30 15:40:45'),(249,1,4,14,'2020-10-30 15:40:45'),(250,2,11,14,'2020-10-30 15:40:45'),(251,2,13,14,'2020-10-30 15:40:46'),(252,2,14,14,'2020-10-30 15:40:46'),(253,3,19,14,'2020-10-30 15:40:46'),(254,3,24,14,'2020-10-30 15:40:46'),(255,3,25,14,'2020-10-30 15:40:47'),(256,1,26,14,'2020-10-30 15:40:47'),(257,1,27,14,'2020-10-30 15:40:47'),(258,3,28,14,'2020-10-30 15:40:47'),(259,3,36,14,'2020-10-30 15:40:48'),(260,2,40,14,'2020-10-30 15:40:48'),(261,1,41,14,'2020-10-30 15:40:48'),(262,1,44,14,'2020-10-30 15:40:49'),(263,2,48,14,'2020-10-30 15:40:49'),(264,3,49,14,'2020-10-30 15:40:49'),(265,1,50,14,'2020-10-30 15:40:49'),(266,3,53,14,'2020-10-30 15:40:50'),(267,3,54,14,'2020-10-30 15:40:50'),(268,3,57,14,'2020-10-30 15:40:50'),(269,3,60,14,'2020-10-30 15:40:50'),(270,1,4,14,'2020-10-30 15:40:51'),(271,2,11,14,'2020-10-30 15:40:51'),(272,2,13,14,'2020-10-30 15:40:51'),(273,2,14,14,'2020-10-30 15:40:52'),(274,3,19,14,'2020-10-30 15:40:52'),(275,3,24,14,'2020-10-30 15:40:52'),(276,3,25,14,'2020-10-30 15:40:52'),(277,1,26,14,'2020-10-30 15:40:53'),(278,1,27,14,'2020-10-30 15:40:53'),(279,3,28,14,'2020-10-30 15:40:53'),(280,3,36,14,'2020-10-30 15:40:53'),(281,2,40,14,'2020-10-30 15:40:54'),(282,1,41,14,'2020-10-30 15:40:54'),(283,1,44,14,'2020-10-30 15:40:54'),(284,2,48,14,'2020-10-30 15:40:55'),(285,3,49,14,'2020-10-30 15:40:55'),(286,1,50,14,'2020-10-30 15:40:55'),(287,3,53,14,'2020-10-30 15:40:55'),(288,3,54,14,'2020-10-30 15:40:56'),(289,3,57,14,'2020-10-30 15:40:56'),(290,3,60,14,'2020-10-30 15:40:56'),(291,3,24,14,'2020-10-30 15:40:57'),(292,3,25,14,'2020-10-30 15:40:57'),(293,1,26,14,'2020-10-30 15:40:57'),(294,1,27,14,'2020-10-30 15:40:57'),(295,3,28,14,'2020-10-30 15:40:58'),(296,3,36,14,'2020-10-30 15:40:58'),(297,2,40,14,'2020-10-30 15:40:58'),(298,1,41,14,'2020-10-30 15:40:58'),(299,1,44,14,'2020-10-30 15:40:59'),(300,2,48,14,'2020-10-30 15:40:59'),(301,3,49,14,'2020-10-30 15:40:59'),(302,1,50,14,'2020-10-30 15:41:00'),(303,3,54,14,'2020-10-30 15:41:00'),(304,3,57,14,'2020-10-30 15:41:00'),(305,1,4,14,'2020-10-30 15:41:00'),(306,2,14,14,'2020-10-30 15:41:01'),(307,3,24,14,'2020-10-30 15:41:01'),(308,3,25,14,'2020-10-30 15:41:01'),(309,1,26,14,'2020-10-30 15:41:02'),(310,1,27,14,'2020-10-30 15:41:02'),(311,3,28,14,'2020-10-30 15:41:02'),(312,3,36,14,'2020-10-30 15:41:03'),(313,2,40,14,'2020-10-30 15:41:03'),(314,1,41,14,'2020-10-30 15:41:03'),(315,1,44,14,'2020-10-30 15:41:03'),(316,2,48,14,'2020-10-30 15:41:04'),(317,3,49,14,'2020-10-30 15:41:04'),(318,1,50,14,'2020-10-30 15:41:04'),(319,3,53,14,'2020-10-30 15:41:05'),(320,3,54,14,'2020-10-30 15:41:05'),(321,3,24,14,'2020-10-30 15:41:05'),(322,3,25,14,'2020-10-30 15:41:05'),(323,1,26,14,'2020-10-30 15:41:06'),(324,1,27,14,'2020-10-30 15:41:06'),(325,3,28,14,'2020-10-30 15:41:06'),(326,3,36,14,'2020-10-30 15:41:06'),(327,2,40,14,'2020-10-30 15:41:07'),(328,1,41,14,'2020-10-30 15:41:07'),(329,1,44,14,'2020-10-30 15:41:07'),(330,2,48,14,'2020-10-30 15:41:08'),(331,3,49,14,'2020-10-30 15:41:08'),(332,1,50,14,'2020-10-30 15:41:08'),(333,3,53,14,'2020-10-30 15:41:08'),(334,3,54,14,'2020-10-30 15:41:09'),(335,3,24,14,'2020-10-30 15:41:09'),(336,3,25,14,'2020-10-30 15:41:09'),(337,1,26,14,'2020-10-30 15:41:10'),(338,1,27,14,'2020-10-30 15:41:10'),(339,3,28,14,'2020-10-30 15:41:10'),(340,3,36,14,'2020-10-30 15:41:10'),(341,2,40,14,'2020-10-30 15:41:11'),(342,1,41,14,'2020-10-30 15:41:11'),(343,1,44,14,'2020-10-30 15:41:11'),(344,2,48,14,'2020-10-30 15:41:12'),(345,3,49,14,'2020-10-30 15:41:12'),(346,1,50,14,'2020-10-30 15:41:12'),(347,3,53,14,'2020-10-30 15:41:12');
/*!40000 ALTER TABLE `member_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_master`
--

DROP TABLE IF EXISTS `membership_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership_master` (
  `MEMID` int NOT NULL AUTO_INCREMENT,
  `Description` varchar(256) NOT NULL COMMENT 'silver/gold/plat etc and all.',
  `Duration` varchar(20) NOT NULL COMMENT 'how many days/months/years etc.',
  PRIMARY KEY (`MEMID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_master`
--

LOCK TABLES `membership_master` WRITE;
/*!40000 ALTER TABLE `membership_master` DISABLE KEYS */;
INSERT INTO `membership_master` VALUES (1,'GOLD','6 Months'),(2,'PLATINUM','12 Months'),(3,'DIAMOND','24 Months');
/*!40000 ALTER TABLE `membership_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PAYID` int NOT NULL AUTO_INCREMENT,
  `PID` int NOT NULL DEFAULT '1',
  `MID` int NOT NULL,
  `Amount` int NOT NULL,
  PRIMARY KEY (`PAYID`),
  KEY `payment_PID` (`PID`),
  KEY `paymenteid` (`MID`),
  CONSTRAINT `payment_PID` FOREIGN KEY (`PID`) REFERENCES `payment_master` (`PID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `paymenteid` FOREIGN KEY (`MID`) REFERENCES `member_master` (`MID`)
) ENGINE=InnoDB AUTO_INCREMENT=513 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (2,1,1,356046),(3,1,8,119018),(4,1,9,277917),(5,1,13,161962),(6,1,14,216518),(7,1,17,123753),(8,1,43,250761),(9,1,50,364624),(10,1,51,273480),(11,1,55,363158),(12,1,56,269966),(13,1,59,369408),(14,1,95,210438),(15,1,96,307672),(16,1,100,175324),(17,1,101,169673),(18,1,104,193396),(19,1,107,396139),(20,1,111,271646),(21,1,112,160167),(22,1,116,155707),(23,1,117,295565),(24,1,120,149406),(25,1,125,270041),(26,1,126,362498),(27,1,130,178357),(28,1,131,344832),(29,1,134,252637),(30,1,139,190338),(31,1,140,237217),(32,1,144,197270),(33,1,145,211027),(34,1,148,256639),(35,1,150,251459),(36,1,157,141072),(37,1,158,370982),(38,1,162,354591),(39,1,163,392994),(40,1,166,120478),(41,1,171,157094),(42,1,178,286855),(43,1,179,333309),(44,1,183,175029),(45,1,184,121423),(46,1,187,293875),(47,1,194,321025),(48,1,195,247165),(49,1,199,180827),(50,1,200,378340),(51,1,203,187049),(52,1,206,196692),(53,1,210,264983),(54,1,211,166181),(55,1,215,347363),(56,1,216,331041),(57,1,219,117166),(58,1,224,213018),(59,1,225,189361),(60,1,229,311304),(61,1,230,173557),(62,1,233,124519),(63,1,238,188467),(64,1,239,161893),(65,1,243,260410),(66,1,244,141743),(67,1,247,301759),(68,1,249,302653),(69,1,256,353236),(70,1,257,214918),(71,1,261,183344),(72,1,262,368252),(73,1,265,324483),(74,1,270,351887),(75,1,277,229149),(76,1,278,377995),(77,1,282,244167),(78,1,283,313654),(79,1,286,331869),(80,1,293,165860),(81,1,294,161511),(82,1,298,154334),(83,1,299,155155),(84,1,302,161642),(85,1,305,211017),(86,1,309,387577),(87,1,310,171631),(88,1,314,329238),(89,1,315,163615),(90,1,318,240176),(91,1,323,211377),(92,1,324,165153),(93,1,328,300912),(94,1,329,104534),(95,1,332,238097),(96,1,337,241379),(97,1,338,384488),(98,1,342,287970),(99,1,343,334766),(100,1,346,160439),(101,1,2,106809),(102,1,3,226270),(103,1,4,346125),(104,1,12,342702),(105,1,15,277646),(106,1,44,219509),(107,1,45,190197),(108,1,46,341383),(109,1,54,208026),(110,1,57,185025),(111,1,99,163471),(112,1,102,145885),(113,1,108,385717),(114,1,115,102758),(115,1,118,257752),(116,1,129,301246),(117,1,132,106307),(118,1,143,244062),(119,1,146,130372),(120,1,151,241391),(121,1,152,251067),(122,1,153,123889),(123,1,161,101642),(124,1,164,271560),(125,1,172,100605),(126,1,173,156814),(127,1,174,290528),(128,1,182,163564),(129,1,185,134230),(130,1,198,279219),(131,1,201,173052),(132,1,207,257303),(133,1,214,319249),(134,1,217,313287),(135,1,228,240293),(136,1,231,266411),(137,1,242,168075),(138,1,245,369962),(139,1,250,150128),(140,1,251,119779),(141,1,252,238050),(142,1,260,375356),(143,1,263,115031),(144,1,271,372877),(145,1,272,381989),(146,1,273,237498),(147,1,281,342197),(148,1,284,394959),(149,1,297,343567),(150,1,300,348171),(151,1,306,201465),(152,1,313,240794),(153,1,316,155795),(154,1,327,377897),(155,1,330,337531),(156,1,341,191610),(157,1,344,310453),(158,1,5,294248),(159,1,6,234184),(160,1,7,363545),(161,1,10,209997),(162,1,11,139141),(163,1,16,373932),(164,1,18,151751),(165,1,19,153061),(166,1,20,395923),(167,1,21,252936),(168,1,47,189378),(169,1,48,263302),(170,1,49,238001),(171,1,52,276354),(172,1,53,329521),(173,1,58,129958),(174,1,60,254391),(175,1,61,343586),(176,1,62,158435),(177,1,63,195216),(178,1,93,241732),(179,1,94,238241),(180,1,97,277271),(181,1,98,168588),(182,1,103,278526),(183,1,105,230872),(184,1,106,267628),(185,1,109,129944),(186,1,110,230093),(187,1,113,349985),(188,1,114,177476),(189,1,119,234342),(190,1,121,100340),(191,1,122,380158),(192,1,123,229497),(193,1,124,106796),(194,1,127,322339),(195,1,128,275503),(196,1,133,380528),(197,1,135,220780),(198,1,136,123351),(199,1,137,303007),(200,1,138,398311),(201,1,141,244937),(202,1,142,273907),(203,1,147,396375),(204,1,149,238196),(205,1,154,248116),(206,1,155,300343),(207,1,156,128220),(208,1,159,310258),(209,1,160,290137),(210,1,165,261984),(211,1,167,390081),(212,1,168,267792),(213,1,169,169718),(214,1,170,132840),(215,1,175,233130),(216,1,176,102647),(217,1,177,122943),(218,1,180,138415),(219,1,181,214203),(220,1,186,180767),(221,1,188,304458),(222,1,189,282225),(223,1,190,117782),(224,1,191,376306),(225,1,192,248082),(226,1,193,378184),(227,1,196,369550),(228,1,197,349290),(229,1,202,387799),(230,1,204,137334),(231,1,205,389866),(232,1,208,310731),(233,1,209,291457),(234,1,212,358228),(235,1,213,371911),(236,1,218,183846),(237,1,220,324019),(238,1,221,207481),(239,1,222,226701),(240,1,223,291293),(241,1,226,391856),(242,1,227,114170),(243,1,232,169446),(244,1,234,114942),(245,1,235,269205),(246,1,236,128602),(247,1,237,143677),(248,1,240,224303),(249,1,241,266085),(250,1,246,184362),(251,1,248,390889),(252,1,253,379917),(253,1,254,346370),(254,1,255,273972),(255,1,258,326759),(256,1,259,156339),(257,1,264,183119),(258,1,266,222910),(259,1,267,176364),(260,1,268,263382),(261,1,269,134137),(262,1,274,240377),(263,1,275,198646),(264,1,276,321588),(265,1,279,338060),(266,1,280,158195),(267,1,285,211545),(268,1,287,271582),(269,1,288,248303),(270,1,289,265927),(271,1,290,329984),(272,1,291,295849),(273,1,292,116657),(274,1,295,102661),(275,1,296,344961),(276,1,301,366768),(277,1,303,220416),(278,1,304,368954),(279,1,307,339030),(280,1,308,273055),(281,1,311,281392),(282,1,312,269014),(283,1,317,385163),(284,1,319,387834),(285,1,320,378419),(286,1,321,135449),(287,1,322,327453),(288,1,325,151962),(289,1,326,230517),(290,1,331,294777),(291,1,333,251567),(292,1,334,336804),(293,1,335,275121),(294,1,336,286834),(295,1,339,203805),(296,1,340,338768),(297,1,345,334232),(298,1,347,334223);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_master`
--

DROP TABLE IF EXISTS `payment_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_master` (
  `PID` int NOT NULL AUTO_INCREMENT,
  `Method` varchar(25) NOT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_master`
--

LOCK TABLES `payment_master` WRITE;
/*!40000 ALTER TABLE `payment_master` DISABLE KEYS */;
INSERT INTO `payment_master` VALUES (1,'Credit Card'),(2,'Net Banking');
/*!40000 ALTER TABLE `payment_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `TID` int NOT NULL AUTO_INCREMENT,
  `PAYID` int NOT NULL,
  `Amount` int DEFAULT NULL,
  `t_date` date DEFAULT NULL,
  PRIMARY KEY (`TID`),
  KEY `PAYID` (`PAYID`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`PAYID`) REFERENCES `payment` (`PAYID`)
) ENGINE=InnoDB AUTO_INCREMENT=1106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (512,2,42725,'2019-09-26'),(513,3,30944,'2020-03-21'),(514,4,55583,'2019-07-26'),(515,5,34012,'2019-11-30'),(516,6,62790,'2019-07-01'),(517,7,16087,'2019-03-15'),(518,8,25076,'2020-04-25'),(519,9,94802,'2020-04-23'),(520,10,30082,'2019-02-23'),(521,11,36315,'2019-12-01'),(522,12,67491,'2020-06-02'),(523,13,110822,'2020-07-13'),(524,14,63131,'2020-10-19'),(525,15,46150,'2020-08-03'),(526,16,33311,'2019-03-22'),(527,17,33934,'2019-07-05'),(528,18,27075,'2019-12-13'),(529,19,55459,'2020-03-21'),(530,20,70627,'2019-12-24'),(531,21,25626,'2019-12-24'),(532,22,42040,'2019-10-21'),(533,23,82758,'2019-07-29'),(534,24,32869,'2020-09-23'),(535,25,75611,'2019-01-11'),(536,26,57999,'2020-07-10'),(537,27,46372,'2020-07-21'),(538,28,96552,'2019-06-06'),(539,29,27790,'2020-06-06'),(540,30,47584,'2020-05-11'),(541,31,54559,'2020-08-10'),(542,32,23672,'2019-02-28'),(543,33,42205,'2019-12-22'),(544,34,48761,'2019-11-11'),(545,35,67893,'2019-11-04'),(546,36,38089,'2019-12-02'),(547,37,37098,'2020-03-06'),(548,38,46096,'2020-03-13'),(549,39,117898,'2019-01-03'),(550,40,26505,'2020-02-26'),(551,41,28276,'2020-03-25'),(552,42,45896,'2019-07-02'),(553,43,36663,'2020-07-19'),(554,44,45507,'2019-10-23'),(555,45,36426,'2019-08-13'),(556,46,52897,'2019-01-08'),(557,47,67415,'2020-02-15'),(558,48,56847,'2020-02-16'),(559,49,47015,'2020-06-07'),(560,50,94585,'2019-07-09'),(561,51,52373,'2020-09-15'),(562,52,49173,'2020-10-05'),(563,53,34447,'2020-08-10'),(564,54,49854,'2020-01-12'),(565,55,93788,'2019-02-10'),(566,56,36414,'2019-05-12'),(567,57,18746,'2020-01-16'),(568,58,31952,'2020-07-24'),(569,59,30297,'2019-11-09'),(570,60,74712,'2019-04-30'),(571,61,36446,'2020-06-27'),(572,62,32374,'2020-01-22'),(573,63,20731,'2019-11-26'),(574,64,35616,'2019-07-13'),(575,65,41665,'2019-09-06'),(576,66,41105,'2020-01-22'),(577,67,78457,'2019-01-26'),(578,68,42371,'2020-08-03'),(579,69,35323,'2019-06-19'),(580,70,38685,'2019-09-27'),(581,71,25668,'2020-05-24'),(582,72,47872,'2019-03-28'),(583,73,35693,'2020-04-14'),(584,74,87971,'2019-12-13'),(585,75,48121,'2019-03-15'),(586,76,102058,'2019-06-07'),(587,77,63483,'2020-03-23'),(588,78,69003,'2019-07-12'),(589,79,46461,'2020-01-09'),(590,80,39806,'2020-02-26'),(591,81,48453,'2020-07-20'),(592,82,38583,'2019-11-01'),(593,83,32582,'2020-03-09'),(594,84,45259,'2019-04-18'),(595,85,42203,'2020-07-27'),(596,86,112397,'2020-04-12'),(597,87,48056,'2019-06-13'),(598,88,98771,'2020-09-03'),(599,89,34359,'2020-03-26'),(600,90,48035,'2020-05-20'),(601,91,57071,'2019-10-20'),(602,92,23121,'2020-06-17'),(603,93,78237,'2020-04-29'),(604,94,24042,'2019-08-08'),(605,95,54762,'2019-03-17'),(606,96,69999,'2019-07-23'),(607,97,49983,'2019-04-22'),(608,98,37436,'2019-08-21'),(609,99,100429,'2019-06-23'),(610,100,44922,'2019-03-25'),(611,101,23497,'2020-01-10'),(612,102,56567,'2020-02-28'),(613,103,83070,'2020-08-11'),(614,104,95956,'2020-01-02'),(615,105,69411,'2019-12-19'),(616,106,26341,'2020-01-18'),(617,107,55157,'2019-10-31'),(618,108,44379,'2019-05-12'),(619,109,47845,'2020-04-02'),(620,110,18502,'2019-07-26'),(621,111,31059,'2020-05-01'),(622,112,32094,'2019-07-25'),(623,113,96429,'2019-08-08'),(624,114,30827,'2020-10-09'),(625,115,46395,'2019-03-15'),(626,116,54224,'2019-10-30'),(627,117,24450,'2020-02-23'),(628,118,73218,'2020-04-08'),(629,119,32593,'2019-12-16'),(630,120,31380,'2020-02-21'),(631,121,57745,'2019-05-21'),(632,122,12388,'2020-06-23'),(633,123,30492,'2019-07-16'),(634,124,62458,'2020-08-10'),(635,125,21127,'2019-09-21'),(636,126,42339,'2019-02-09'),(637,127,63916,'2020-08-27'),(638,128,31077,'2020-04-15'),(639,129,21476,'2020-08-29'),(640,130,53051,'2019-07-17'),(641,131,24227,'2020-02-08'),(642,132,56606,'2019-10-04'),(643,133,57464,'2020-03-31'),(644,134,90853,'2019-11-22'),(645,135,43252,'2020-04-13'),(646,136,39961,'2019-08-14'),(647,137,38657,'2019-03-11'),(648,138,51794,'2019-03-13'),(649,139,39033,'2019-06-13'),(650,140,21560,'2020-04-13'),(651,141,33327,'2019-11-09'),(652,142,97592,'2019-02-11'),(653,143,28757,'2019-11-27'),(654,144,100676,'2019-05-13'),(655,145,68758,'2019-03-14'),(656,146,23749,'2020-08-31'),(657,147,82127,'2019-06-29'),(658,148,86890,'2020-02-08'),(659,149,61842,'2019-03-04'),(660,150,52225,'2020-10-07'),(661,151,46336,'2019-05-17'),(662,152,31303,'2019-02-13'),(663,153,42064,'2019-08-24'),(664,154,49126,'2020-06-30'),(665,155,97883,'2019-11-22'),(666,156,22993,'2020-07-19'),(667,157,40358,'2019-07-14'),(668,158,70619,'2019-02-23'),(669,159,42153,'2020-08-23'),(670,160,94521,'2019-06-04'),(671,161,29399,'2020-06-18'),(672,162,38959,'2020-05-05'),(673,163,100961,'2020-10-12'),(674,164,16692,'2020-08-12'),(675,165,21428,'2019-10-23'),(676,166,47510,'2019-09-06'),(677,167,73351,'2020-01-07'),(678,168,18937,'2020-03-27'),(679,169,68458,'2019-05-10'),(680,170,54740,'2019-06-23'),(681,171,27635,'2019-04-10'),(682,172,56018,'2020-08-03'),(683,173,16894,'2019-01-18'),(684,174,48334,'2020-02-21'),(685,175,65281,'2020-08-26'),(686,176,39608,'2020-02-21'),(687,177,23425,'2019-02-25'),(688,178,65267,'2020-02-29'),(689,179,28588,'2019-08-24'),(690,180,77635,'2019-04-13'),(691,181,20230,'2019-02-22'),(692,182,55705,'2020-05-23'),(693,183,48483,'2019-11-06'),(694,184,72259,'2020-08-27'),(695,185,16892,'2020-03-21'),(696,186,46018,'2019-05-06'),(697,187,52497,'2019-06-11'),(698,188,46143,'2019-01-20'),(699,189,58585,'2020-05-06'),(700,190,12040,'2019-09-17'),(701,191,53222,'2019-08-11'),(702,192,52784,'2019-08-27'),(703,193,26699,'2020-05-20'),(704,194,64467,'2019-12-12'),(705,195,68875,'2019-01-04'),(706,196,72300,'2019-10-26'),(707,197,22078,'2019-04-09'),(708,198,23436,'2020-01-18'),(709,199,33330,'2019-04-15'),(710,200,103560,'2019-11-29'),(711,201,24493,'2020-06-09'),(712,202,57520,'2019-10-24'),(713,203,51528,'2020-08-11'),(714,204,38111,'2019-01-10'),(715,205,29773,'2019-11-26'),(716,206,42048,'2019-10-18'),(717,207,32055,'2019-04-30'),(718,208,55846,'2019-11-04'),(719,209,55126,'2020-10-02'),(720,210,49776,'2020-03-22'),(721,211,62412,'2020-05-18'),(722,212,58914,'2019-10-26'),(723,213,50915,'2020-07-20'),(724,214,39852,'2019-08-19'),(725,215,25644,'2019-12-01'),(726,216,12317,'2019-08-03'),(727,217,18441,'2020-08-23'),(728,218,17993,'2020-04-27'),(729,219,44982,'2019-06-30'),(730,220,19884,'2019-10-30'),(731,221,76114,'2020-04-29'),(732,222,73378,'2019-08-13'),(733,223,11778,'2020-01-28'),(734,224,63972,'2019-03-24'),(735,225,32250,'2019-04-17'),(736,226,52945,'2020-07-25'),(737,227,70214,'2020-02-07'),(738,228,90815,'2020-02-10'),(739,229,100827,'2019-07-15'),(740,230,31586,'2019-07-04'),(741,231,50682,'2020-08-12'),(742,232,71468,'2019-07-15'),(743,233,61205,'2019-05-31'),(744,234,71645,'2020-03-13'),(745,235,70663,'2020-04-09'),(746,236,55153,'2020-08-10'),(747,237,74524,'2019-09-06'),(748,238,49795,'2019-10-10'),(749,239,56675,'2019-01-13'),(750,240,34955,'2020-02-05'),(751,241,105801,'2019-09-04'),(752,242,14842,'2019-03-12'),(753,243,44055,'2019-07-03'),(754,244,20689,'2020-03-30'),(755,245,45764,'2019-08-22'),(756,246,33436,'2019-11-25'),(757,247,25861,'2019-10-13'),(758,248,56075,'2019-12-14'),(759,249,79825,'2020-03-06'),(760,250,29497,'2019-05-09'),(761,251,101631,'2020-08-18'),(762,252,68385,'2020-07-25'),(763,253,72737,'2019-08-28'),(764,254,54794,'2019-03-05'),(765,255,98027,'2019-07-09'),(766,256,46901,'2020-04-15'),(767,257,43948,'2019-08-27'),(768,258,53498,'2020-10-18'),(769,259,44091,'2019-04-19'),(770,260,63211,'2019-11-12'),(771,261,36216,'2020-06-29'),(772,262,52882,'2020-05-09'),(773,263,53634,'2020-10-09'),(774,264,45022,'2020-10-02'),(775,265,37186,'2020-03-20'),(776,266,18983,'2019-01-02'),(777,267,57117,'2020-09-16'),(778,268,73327,'2019-06-17'),(779,269,72007,'2019-05-10'),(780,270,34570,'2020-05-31'),(781,271,89095,'2019-10-02'),(782,272,41418,'2020-07-28'),(783,273,12832,'2019-08-20'),(784,274,15399,'2019-12-21'),(785,275,48294,'2020-03-27'),(786,276,40344,'2019-02-27'),(787,277,37470,'2019-08-25'),(788,278,59032,'2020-08-13'),(789,279,37293,'2019-05-04'),(790,280,40958,'2019-11-27'),(791,281,84417,'2019-11-20'),(792,282,37661,'2020-05-01'),(793,283,42367,'2019-05-14'),(794,284,108593,'2019-12-09'),(795,285,56762,'2019-05-31'),(796,286,37925,'2019-10-01'),(797,287,42568,'2020-03-26'),(798,288,44068,'2020-07-24'),(799,289,29967,'2020-10-03'),(800,290,35373,'2019-07-23'),(801,291,27672,'2020-07-26'),(802,292,40416,'2019-05-27'),(803,293,38516,'2019-02-11'),(804,294,80313,'2019-05-15'),(805,295,61141,'2020-06-23'),(806,296,57590,'2019-09-11'),(807,297,96927,'2019-02-28'),(808,298,100266,'2019-12-17'),(809,2,60527,'2019-05-26'),(810,3,22613,'2019-06-02'),(811,4,50025,'2019-03-24'),(812,5,38870,'2019-06-28'),(813,6,49799,'2019-07-09'),(814,7,35888,'2020-04-24'),(815,8,55167,'2020-09-23'),(816,9,105740,'2020-09-06'),(817,10,51961,'2019-11-18'),(818,11,61736,'2019-11-26'),(819,12,78290,'2019-10-11'),(820,13,103434,'2019-06-05'),(821,14,39983,'2019-01-10'),(822,15,55380,'2019-07-17'),(823,16,49090,'2019-02-01'),(824,17,16967,'2020-02-16'),(825,18,46415,'2019-02-17'),(826,19,87150,'2019-12-11'),(827,20,65195,'2019-02-17'),(828,21,30431,'2020-03-15'),(829,22,40483,'2019-09-01'),(830,23,76846,'2020-01-23'),(831,24,20916,'2019-03-16'),(832,25,67510,'2019-04-10'),(833,26,97874,'2020-07-22'),(834,27,35671,'2019-06-30'),(835,28,55173,'2020-03-09'),(836,29,40421,'2020-09-23'),(837,30,36164,'2019-08-17'),(838,31,66420,'2019-02-19'),(839,32,23672,'2019-04-27'),(840,33,59087,'2020-01-29'),(841,34,61593,'2020-01-08'),(842,35,60350,'2020-06-30'),(843,36,19750,'2020-09-21'),(844,37,81616,'2019-06-20'),(845,38,78010,'2019-08-18'),(846,39,94318,'2020-03-07'),(847,40,26505,'2019-12-26'),(848,41,28276,'2019-02-28'),(849,42,60239,'2019-09-26'),(850,43,79994,'2019-06-01'),(851,44,33255,'2020-04-28'),(852,45,36426,'2020-01-26'),(853,46,49958,'2020-08-23'),(854,47,51364,'2019-07-27'),(855,48,27188,'2019-11-01'),(856,49,34357,'2019-02-27'),(857,50,68101,'2019-07-27'),(858,51,39280,'2020-09-30'),(859,52,41305,'2020-07-30'),(860,53,29148,'2019-11-19'),(861,54,29912,'2020-09-19'),(862,55,100735,'2019-06-11'),(863,56,52966,'2020-03-10'),(864,57,29291,'2019-02-08'),(865,58,53254,'2019-02-28'),(866,59,32191,'2020-06-30'),(867,60,84052,'2019-03-24'),(868,61,52067,'2019-12-12'),(869,62,18677,'2019-01-15'),(870,63,32039,'2020-07-10'),(871,64,35616,'2019-09-18'),(872,65,78123,'2020-01-28'),(873,66,18426,'2019-09-15'),(874,67,84492,'2019-04-08'),(875,68,45397,'2019-01-05'),(876,69,38855,'2020-02-12'),(877,70,49431,'2020-01-15'),(878,71,44002,'2019-02-26'),(879,72,44190,'2020-03-04'),(880,73,77875,'2019-04-03'),(881,74,80934,'2020-03-17'),(882,75,61870,'2020-07-01'),(883,76,83158,'2020-08-12'),(884,77,46391,'2019-08-08'),(885,78,81550,'2020-05-23'),(886,79,39824,'2020-10-14'),(887,80,24879,'2019-06-07'),(888,81,19381,'2020-10-03'),(889,82,41670,'2019-07-21'),(890,83,29479,'2020-02-07'),(891,84,42026,'2019-12-26'),(892,85,56974,'2020-03-01'),(893,86,54260,'2019-01-09'),(894,87,39475,'2019-01-23'),(895,88,82309,'2020-07-13'),(896,89,27814,'2019-04-23'),(897,90,24017,'2020-01-22'),(898,91,27479,'2020-03-08'),(899,92,18166,'2020-03-13'),(900,93,36109,'2019-03-04'),(901,94,27178,'2020-04-08'),(902,95,71429,'2019-06-27'),(903,96,48275,'2020-03-13'),(904,97,49983,'2019-04-29'),(905,98,80631,'2020-02-06'),(906,99,43519,'2019-07-20'),(907,100,24065,'2020-06-12'),(908,101,16021,'2019-09-26'),(909,102,56567,'2019-06-28'),(910,103,83070,'2019-04-26'),(911,104,65113,'2019-02-22'),(912,105,77740,'2019-11-26'),(913,106,26341,'2019-05-27'),(914,107,55157,'2020-06-26'),(915,108,88759,'2019-10-17'),(916,109,20802,'2020-10-09'),(917,110,31454,'2019-09-05'),(918,111,37598,'2020-03-27'),(919,112,40847,'2020-09-06'),(920,113,54000,'2019-06-04'),(921,114,24661,'2020-02-02'),(922,115,38662,'2020-06-13'),(923,116,90373,'2019-07-29'),(924,117,12756,'2019-12-16'),(925,118,36609,'2019-10-25'),(926,119,16948,'2019-09-03'),(927,120,53106,'2019-04-17'),(928,121,27617,'2019-01-27'),(929,122,18583,'2019-03-17'),(930,123,29476,'2020-05-10'),(931,124,29871,'2020-05-23'),(932,125,23139,'2020-09-21'),(933,126,25090,'2019-06-15'),(934,127,81347,'2019-08-07'),(935,128,31077,'2019-04-10'),(936,129,20134,'2020-01-10'),(937,130,33506,'2019-05-31'),(938,131,44993,'2019-10-03'),(939,132,46314,'2019-02-24'),(940,133,54272,'2020-05-15'),(941,134,53258,'2019-08-07'),(942,135,55267,'2019-12-23'),(943,136,50618,'2020-01-05'),(944,137,25211,'2019-07-08'),(945,138,51794,'2020-03-07'),(946,139,42035,'2019-12-16'),(947,140,23955,'2019-02-10'),(948,141,40468,'2019-09-17'),(949,142,105099,'2019-05-04'),(950,143,13803,'2019-01-27'),(951,144,104405,'2020-05-12'),(952,145,42018,'2020-03-28'),(953,146,37999,'2019-02-23'),(954,147,34219,'2019-03-11'),(955,148,55294,'2020-06-25'),(956,149,79020,'2020-03-03'),(957,150,83561,'2020-10-15'),(958,151,46336,'2019-11-23'),(959,152,31303,'2019-03-09'),(960,153,17137,'2019-07-24'),(961,154,102032,'2019-06-26'),(962,155,74256,'2019-02-02'),(963,156,44070,'2019-03-31'),(964,157,37254,'2019-10-21'),(965,158,35309,'2019-09-22'),(966,159,67913,'2019-07-18'),(967,160,105428,'2020-09-17'),(968,161,50399,'2020-07-08'),(969,162,37568,'2020-05-25'),(970,163,93483,'2020-04-28'),(971,164,15175,'2020-09-05'),(972,165,19897,'2020-09-04'),(973,166,51469,'2019-02-15'),(974,167,40469,'2019-10-16'),(975,168,54919,'2019-03-15'),(976,169,71091,'2019-03-06'),(977,170,61880,'2019-02-05'),(978,171,60797,'2020-08-18'),(979,172,56018,'2020-10-11'),(980,173,24692,'2020-04-16'),(981,174,61053,'2019-11-12'),(982,175,72153,'2020-08-18'),(983,176,30102,'2019-07-26'),(984,177,58564,'2019-01-13'),(985,178,58015,'2019-03-25'),(986,179,35736,'2019-01-16'),(987,180,66545,'2020-04-18'),(988,181,28659,'2019-08-17'),(989,182,38993,'2019-10-25'),(990,183,34630,'2019-11-27'),(991,184,48173,'2019-11-30'),(992,185,27288,'2019-11-28'),(993,186,41416,'2019-11-18'),(994,187,73496,'2019-07-11'),(995,188,47918,'2020-03-27'),(996,189,37494,'2019-07-05'),(997,190,14047,'2020-02-01'),(998,191,41817,'2019-08-01'),(999,192,43604,'2020-04-22'),(1000,193,24563,'2019-02-21'),(1001,194,48350,'2019-09-15'),(1002,195,33060,'2019-05-04'),(1003,196,91326,'2019-03-15'),(1004,197,59610,'2019-03-13'),(1005,198,12335,'2020-01-08'),(1006,199,39390,'2019-09-29'),(1007,200,51780,'2020-04-15'),(1008,201,51436,'2020-04-28'),(1009,202,57520,'2020-09-06'),(1010,203,75311,'2020-07-05'),(1011,204,33347,'2019-01-29'),(1012,205,49623,'2019-12-06'),(1013,206,48054,'2019-02-28'),(1014,207,34619,'2019-12-29'),(1015,208,40333,'2020-03-03'),(1016,209,72534,'2019-11-23'),(1017,210,60256,'2019-08-30'),(1018,211,46809,'2020-09-15'),(1019,212,58914,'2019-06-09'),(1020,213,50915,'2019-11-04'),(1021,214,26568,'2020-01-19'),(1022,215,34969,'2020-03-28'),(1023,216,12317,'2019-10-05'),(1024,217,19670,'2020-03-16'),(1025,218,31835,'2019-09-22'),(1026,219,53550,'2019-12-18'),(1027,220,52422,'2019-05-17'),(1028,221,57847,'2019-01-22'),(1029,222,47978,'2019-02-16'),(1030,223,31801,'2020-02-06'),(1031,224,79024,'2019-02-07'),(1032,225,64501,'2020-10-01'),(1033,226,37818,'2019-03-26'),(1034,227,44346,'2020-02-23'),(1035,228,38421,'2019-01-13'),(1036,229,96949,'2020-03-11'),(1037,230,41200,'2019-08-22'),(1038,231,77973,'2020-08-27'),(1039,232,80790,'2020-10-19'),(1040,233,49547,'2020-02-09'),(1041,234,100303,'2019-10-27'),(1042,235,78101,'2020-10-10'),(1043,236,53315,'2019-04-25'),(1044,237,38882,'2020-09-13'),(1045,238,56019,'2020-06-20'),(1046,239,27204,'2019-09-20'),(1047,240,69910,'2020-04-20'),(1048,241,97964,'2019-12-09'),(1049,242,27400,'2020-10-11'),(1050,243,32194,'2020-05-09'),(1051,244,16091,'2020-05-27'),(1052,245,45764,'2019-02-08'),(1053,246,29578,'2019-05-16'),(1054,247,37356,'2020-09-30'),(1055,248,24673,'2019-03-16'),(1056,249,74503,'2020-05-05'),(1057,250,53464,'2019-05-17'),(1058,251,74268,'2019-07-27'),(1059,252,37991,'2020-01-07'),(1060,253,86592,'2019-08-16'),(1061,254,63013,'2020-07-08'),(1062,255,49013,'2019-01-05'),(1063,256,34394,'2019-05-14'),(1064,257,54935,'2019-01-07'),(1065,258,42352,'2019-10-05'),(1066,259,44091,'2019-04-07'),(1067,260,52676,'2019-12-15'),(1068,261,24144,'2019-08-10'),(1069,262,60094,'2019-06-29'),(1070,263,53634,'2019-09-20'),(1071,264,86828,'2019-04-13'),(1072,265,94656,'2019-10-12'),(1073,266,20565,'2020-02-27'),(1074,267,55001,'2020-09-24'),(1075,268,57032,'2020-04-02'),(1076,269,47177,'2019-08-25'),(1077,270,42548,'2020-06-17'),(1078,271,39598,'2020-08-03'),(1079,272,47335,'2020-05-17'),(1080,273,20998,'2020-05-11'),(1081,274,19505,'2019-02-24'),(1082,275,79341,'2019-10-08'),(1083,276,91692,'2019-12-01'),(1084,277,46287,'2019-02-28'),(1085,278,51653,'2019-06-13'),(1086,279,57635,'2019-10-03'),(1087,280,43688,'2019-05-08'),(1088,281,28139,'2020-03-29'),(1089,282,37661,'2020-06-21'),(1090,283,80884,'2020-06-19'),(1091,284,93080,'2019-10-16'),(1092,285,49194,'2020-04-21'),(1093,286,32507,'2019-03-22'),(1094,287,65490,'2019-10-30'),(1095,288,28872,'2019-01-08'),(1096,289,41493,'2020-09-16'),(1097,290,73694,'2020-07-24'),(1098,291,65407,'2019-04-10'),(1099,292,67360,'2019-06-16'),(1100,293,71531,'2019-10-28'),(1101,294,34420,'2019-03-28'),(1102,295,30570,'2020-01-17'),(1103,296,77916,'2020-01-30'),(1104,297,40107,'2020-02-05'),(1105,298,53475,'2020-01-23');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_complaint`
--

DROP TABLE IF EXISTS `user_complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_complaint` (
  `CID` int NOT NULL AUTO_INCREMENT,
  `BID` int NOT NULL,
  `MID` int NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` varchar(256) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CID`),
  KEY `uc_BID` (`BID`),
  KEY `uc_MID` (`MID`),
  CONSTRAINT `uc_BID` FOREIGN KEY (`BID`) REFERENCES `branch_master` (`BID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `uc_MID` FOREIGN KEY (`MID`) REFERENCES `member_master` (`MID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_complaint`
--

LOCK TABLES `user_complaint` WRITE;
/*!40000 ALTER TABLE `user_complaint` DISABLE KEYS */;
INSERT INTO `user_complaint` VALUES (1,1,1,'Restaurant','The plates were not clean','2020-10-26 21:04:57'),(2,2,1,'Sports area','The trainer was late','2020-10-26 13:55:10'),(3,1,1,'Garden Area','The swings were dirty.','2020-10-26 14:10:15'),(4,2,1,'Gym','The equipments are very old.','2020-10-26 14:10:45'),(5,1,1,'Swimming Pool','Too much chlorine in the pool','2020-10-26 14:10:57'),(6,1,1,'Gym','The trainer was late','2020-10-26 14:12:16'),(7,2,1,'Spa and Salon','The chair was not comfortable.','2020-10-26 20:42:34'),(8,1,1,'Waiting Area','The floor was not clean','2020-10-26 20:44:12'),(9,1,1,'Parking Area','The parking spot was very far','2020-10-26 20:44:38'),(10,2,1,'Fees','Membership rates very high','2020-10-26 20:45:27'),(11,1,1,'Garden','The grass was not properly gardened','2020-10-26 20:46:01'),(12,1,1,'Reception','The response was not proper','2020-10-26 20:46:17'),(13,1,1,'Messages','Too many messages from the club portal.','2020-10-26 20:59:39'),(14,1,1,'Badminton Court','The availability of rackets is very less','2020-10-26 21:00:27'),(15,1,1,'Dressing room','The mirror was broken and the shower was not available.','2020-10-26 21:04:57'),(16,10,44,'Banquet','Waiters were not there','2020-10-26 21:04:57'),(17,7,3,'Meeting Hall','The table was not cleaned','2020-10-29 21:04:57'),(18,7,3,'Conference Room','AC was not working','2020-10-29 21:04:57'),(19,7,3,'Entertainment Centre','Too much noise','2020-10-26 21:04:57'),(20,7,3,'Kids Area','proper care is not taken','2020-10-26 21:04:57'),(21,4,4,'Garden Area','flowers ae not there','2020-10-28 21:04:57'),(22,4,4,'Sports Area','dirty towels were put anywhere','2020-10-28 21:04:57'),(23,4,4,'Gym','dirty seats and towels','2020-10-26 21:04:57'),(24,4,4,'Dining Area','plates were not cleaned','2020-10-26 21:04:57'),(25,3,5,'Bar','many varieties were unavailable','2020-10-26 21:04:57'),(26,2,11,'Conference Room','needs to be soundproofed','2020-10-26 21:04:57'),(27,2,11,'Meeting Hall','Too much disturbance','2020-11-01 07:34:38'),(28,3,5,'Lounge','ac was not working','2020-11-02 07:34:38'),(29,4,4,'Sports Area','coach was not there','2020-11-01 07:34:38'),(30,7,3,'Badminton Court','coach was not there','2020-11-02 07:34:38'),(31,8,155,'Swimming Pool','dirty water','2020-10-26 21:04:57'),(32,10,44,'Bar','foul smell','2020-10-30 21:04:57'),(33,14,252,'Gym','very less equipments','2020-10-30 21:04:57'),(34,10,44,'Bar','Broken glass was used','2020-10-26 21:04:57'),(35,10,44,'Pool','Lifeguard unavailable','2020-10-26 21:04:57'),(36,14,252,'Sports','improper maintenance','2020-10-29 21:04:57'),(37,14,252,'Lounge','Chairs need to be fixed','2020-10-29 21:04:57'),(38,14,252,'Spa','Unauthentic products used','2020-10-29 21:04:57'),(39,8,155,'Salon','Not properly skilled','2020-10-26 21:04:57'),(40,8,155,'Lounge','Not cleaned properly','2020-10-26 21:04:57'),(41,8,155,'Meeting Hall','AC was not working','2020-10-26 21:04:57'),(42,8,155,'Conference Room','The table was not cleaned','2020-11-02 07:34:38'),(43,8,155,'Sports Area','Very slippery area','2020-11-01 07:34:39'),(44,8,155,'Garden Area','not gardened the grass','2020-11-01 07:34:39'),(45,14,252,'Bar','Seats were torn','2020-11-01 07:34:39'),(46,14,252,'Pool','Too many people altogether','2020-11-02 07:34:39'),(47,14,252,'Play Area','wet soil','2020-11-02 07:34:39'),(48,14,252,'Salon','Seperate towels were not there','2020-11-02 07:34:39'),(49,3,5,'Sports','unavailability of shuttlecocks','2020-10-26 21:04:57'),(50,3,5,'Basketball','Very slippery','2020-10-26 21:04:57'),(51,3,5,'Garden Area','Too many bushes, wet soil','2020-10-26 21:04:57'),(52,3,5,'Bar','Seats were torn','2020-10-27 21:04:57'),(53,3,5,'Lounge','AC was not working','2020-10-28 21:04:57'),(54,3,5,'Bar','Glasses were not nice','2020-10-28 21:04:57'),(55,3,5,'Pool','Too much chlorine','2020-10-27 21:04:57'),(56,3,5,'Food','The quantity was very less','2020-10-27 21:04:57'),(57,3,5,'Washroom','Mirror was broken','2020-10-27 21:04:57'),(58,1,1,'Restaurant','The plates were not clean','2020-10-26 21:04:57'),(59,2,1,'Sports area','The trainer was late','2020-10-27 21:04:57'),(60,1,1,'Garden Area','The swings were dirty.','2020-10-26 21:04:57'),(61,2,1,'Gym','The equipments are very old.','2020-10-27 21:04:57'),(62,1,1,'Swimming Pool','Too much chlorine in the pool','2020-10-26 21:04:57'),(63,1,1,'Gym','The trainer was late','2020-10-31 21:04:57'),(64,2,1,'Spa and Salon','The chair was not comfortable.','2020-10-27 21:04:57'),(65,1,1,'Waiting Area','The floor was not clean','2020-10-28 21:04:57'),(66,1,1,'Parking Area','The parking spot was very far','2020-10-29 21:04:57'),(67,2,1,'Fees','Membership rates very high','2020-10-30 21:04:57'),(68,1,1,'Garden','The grass was not properly gardened','2020-10-30 21:04:57'),(69,1,1,'Reception','The response was not proper','2020-10-31 21:04:57'),(70,1,1,'Messages','Too many messages from the club portal.','2020-10-26 21:04:57'),(71,1,1,'Badminton Court','The availability of rackets is very less','2020-10-31 21:04:57'),(72,1,1,'Dressing room','The mirror was broken and the shower was not available.','2020-10-26 21:04:57'),(73,10,44,'Banquet','Waiters were not there','2020-10-30 21:04:57'),(74,7,3,'Meeting Hall','The table was not cleaned','2020-10-26 21:04:57'),(75,7,3,'Conference Room','AC was not working','2020-10-31 21:04:57'),(76,7,3,'Entertainment Centre','Too much noise','2020-10-26 21:04:57'),(77,7,3,'Kids Area','proper care is not taken','2020-10-30 21:04:57'),(78,4,4,'Garden Area','flowers ae not there','2020-10-26 21:04:57'),(79,4,4,'Sports Area','dirty towels were put anywhere','2020-10-31 21:04:57'),(80,4,4,'Gym','dirty seats and towels','2020-10-30 21:04:57'),(81,4,4,'Dining Area','plates were not cleaned','2020-10-26 21:04:57'),(82,3,5,'Bar','many varieties were unavailable','2020-10-26 21:04:57'),(83,2,11,'Conference Room','needs to be soundproofed','2020-10-26 21:04:57'),(84,2,11,'Meeting Hall','Too much disturbance','2020-10-26 21:04:57'),(85,3,5,'Lounge','ac was not working','0000-00-00 00:00:00'),(86,4,4,'Sports Area','coach was not there','0000-00-00 00:00:00'),(87,7,3,'Badminton Court','coach was not there','2020-10-26 21:04:57'),(88,8,155,'Swimming Pool','dirty water','2020-10-26 21:04:57'),(89,10,44,'Bar','foul smell','2020-10-26 21:04:57'),(90,14,252,'Gym','very less equipments','0000-00-00 00:00:00'),(91,10,44,'Bar','Broken glass was used','2020-10-26 21:04:57'),(92,10,44,'Pool','Lifeguard unavailable','2020-10-31 21:04:57'),(93,14,252,'Sports','improper maintenance','2020-10-26 21:04:57'),(94,14,252,'Lounge','Chairs need to be fixed','2020-10-31 21:04:57'),(95,14,252,'Spa','Unauthentic products used','0000-00-00 00:00:00'),(96,8,155,'Salon','Not properly skilled','2020-10-31 21:04:57'),(97,8,155,'Lounge','Not cleaned properly','2020-10-31 21:04:57'),(98,8,155,'Meeting Hall','AC was not working','2020-10-26 21:04:57'),(99,8,155,'Conference Room','The table was not cleaned','0000-00-00 00:00:00'),(100,8,155,'Sports Area','Very slippery area','2020-10-26 21:04:57'),(101,8,155,'Garden Area','not gardened the grass','2020-10-26 21:04:57'),(102,14,252,'Bar','Seats were torn','2020-10-26 21:04:57'),(103,14,252,'Pool','Too many people altogether','2020-10-26 21:04:57'),(104,14,252,'Play Area','wet soil','2020-10-26 21:04:57'),(105,14,252,'Salon','Seperate towels were not there','0000-00-00 00:00:00'),(106,3,5,'Sports','unavailability of shuttlecocks','2020-10-26 21:04:57'),(107,3,5,'Basketball','Very slippery','0000-00-00 00:00:00'),(108,3,5,'Garden Area','Too many bushes, wet soil','2020-10-26 21:04:57'),(109,3,5,'Bar','Seats were torn','2020-10-26 21:04:57'),(110,3,5,'Lounge','AC was not working','0000-00-00 00:00:00'),(111,3,5,'Bar','Glasses were not nice','2020-10-26 21:04:57'),(112,3,5,'Pool','Too much chlorine','2020-10-26 21:04:57'),(113,3,5,'Food','The quantity was very less','0000-00-00 00:00:00'),(114,3,5,'Washroom','Mirror was broken','2020-10-26 21:04:57');
/*!40000 ALTER TABLE `user_complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_master` (
  `UID` int NOT NULL AUTO_INCREMENT,
  `UTMID` int NOT NULL,
  `first_name` text NOT NULL,
  `middle_name` text NOT NULL,
  `last_name` text NOT NULL,
  `gender` text NOT NULL,
  `dob` date NOT NULL,
  `contact_no` bigint NOT NULL,
  `photo` varchar(256) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(256) NOT NULL,
  `address_line_1` varchar(30) DEFAULT NULL,
  `address_line_2` varchar(30) NOT NULL,
  `address_area` varchar(30) NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `country` text NOT NULL,
  `pincode` int NOT NULL,
  `Status` varchar(8) DEFAULT 'Active',
  PRIMARY KEY (`UID`),
  KEY `cons_rel` (`UTMID`),
  CONSTRAINT `cons_rel` FOREIGN KEY (`UTMID`) REFERENCES `user_type_master` (`UTMID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_master`
--

LOCK TABLES `user_master` WRITE;
/*!40000 ALTER TABLE `user_master` DISABLE KEYS */;
INSERT INTO `user_master` VALUES (1,1,'Madhav','Nita','Parikh','M','1999-11-03',9998256749,NULL,'parikh.madhav1999@gmail.com','123','A 202','surya apartments','bodakdev','ahmedabad','Gujarat','India',380054,'Active'),(2,2,'Trilok',' ','Sharma','F','1999-09-06',9998256741,NULL,'strilok4031@gmail.com','123','41','omkar resedency','alkapuri','vadodara','Gujarat','India',390011,'Active'),(3,3,'Nakia','','Lightwala','F','1999-09-06',9432837434,NULL,'nakialightwala242@gmail.com','123','34 D','laxmi heights','kalupur','ahmedabad','Gujarat','India',380009,'Active'),(4,4,'Bhupender','','Kumar','M','1999-11-20',8545678765,NULL,'bhuppi123@gmail.com','123','121/AB','lancer line','shikargarh','jodhpur','Rajasthan','India',650034,'Active'),(6,3,'Rohan','Maniklal','Shah','M','1999-11-03',9922158985,NULL,'rohan.shah@gmail.com','123','F101 Surel apartment','Nr mocha cafe','Ahmadabad City','Ahmadabad City','Gujarat','India',380054,'Active'),(7,3,'Sanya',' ','Saxsena','F','2019-12-21',9998747582,NULL,'sanyasaxsena@gmail.com','123','Mahavir Nagar','Shrinagar Society','SABARKANTHA','Himatnagar','Gujarat','India',380054,'Active'),(8,3,'Kokilaben ','Biren','Shah','F','1989-05-05',9844756216,NULL,'kokilashah@gmail.com','123','A302 firang House','nr. Native place','Bodakdev','Ahmedabad','Gujarat','India',383001,'Active'),(10,2,'alok','Trilok','Sharma','M','1997-08-22',999876754,NULL,'aloks2282@gmail.com ','123','111/6','vijay colony','makarpura ','jodhpur','rajasthan','india',456650,'Active'),(11,4,'Casper','Nakia','Lightwala','F','1999-11-03',9998256749,NULL,'casper1299@gmail.com','123','505','Jasmine Flats','Bodakdev','Hyderabad','Andhra Pradesh','India',564838,'InActive'),(12,3,'Tarun','Manohar','Chhabria','F','1980-11-15',9824073151,NULL,'tarun0599@gmail.com','123','605','Aarohi Residency','Makarpura','Jodhpur','Gujarat','India',477662,'Active'),(13,4,'Pritika','Sanjay','Dasija','M','1999-11-03',9998256738,NULL,'priiti123@gmail.com','123','102','keshavbaug','Sindhu Bhavan','Ahmedabad','Rajasthan','India',747646,'Active'),(14,4,'Vaishnavi','Mansi','Rawal','M','1997-08-22',7043760529,NULL,'vaishu023@gmail.com','123','2002','Jasmine Flats','Satellite','Mumbai','Punjab','India',884653,'Active'),(15,2,'Saurabh','Aashvi','Shah','F','1999-11-03',9990345202,NULL,'saurabh13@gmail.com','123','435','Barsha Heights','SG HIghway','Pune','Jodhpur','India',463589,'Active'),(16,3,'Umang','Heer','Dholani','M','1997-08-22',7098256749,NULL,'umang123@gmail.com','123','0983','Jasmine Flats','Khanpur','Ahmedabad','Andhra Pradesh','India',298873,'Active'),(17,2,'Sumit','Vinnie','Singh','F','1999-11-03',9824073149,NULL,'sumit123@gmail.com','123','746','keshavbaug','Bodakdev','Pune','Gujarat','',939847,'Active'),(18,2,'Ritika','Chandu','Agrawal','M','1997-08-22',9998256782,NULL,'ritu123@gmail.com','123','0238','Jasmine Flats','Kalupur','Mumbai','Punjab','India',298374,'Active'),(20,2,'Gaurav','Bhoju','Pandit','F','1999-11-03',9898372982,NULL,'gaurav123@gmail.com','123','374','Barsha Heights','Satellite','Pune','Andhra Pradesh','India',764789,'Active'),(21,3,'Simran','Jenil','Shah','M','1997-11-03',9033366600,NULL,'simran123@gmail.com','123','2083','Jasmine Flats','Shyamal','Ahmedabad','Punjab','India',939477,'InActive'),(22,2,'Priya','Hrutvi','Bhojwani','F','1999-11-03',9022277700,NULL,'prii123@gmail.com','123','2983','Barsha Heights','Satellite','Mumbai','maharashtra','India',947742,'Active'),(23,2,'Pal','Divya','Jain','M','1963-11-03',7099922111,NULL,'pal123@gmail.com','123','200','Suvidha Flats','Khanpur','Patiala','Gujarat','India',983755,'Active'),(24,4,'Manohar','Krutarth','Shah','M','1997-08-22',8403767676,NULL,'monu123@gmail.com','123','2039','Jasmine Flats','Gurgaon','Pune','Andhra Pradesh','India',298374,'Active'),(25,4,'Pinky','Mili','Panchal','F','1975-11-03',9021212100,NULL,'pinky123@gmail.com','123','7364','Suvidha Flats','Kalupur','Mumbai','Tripura','India',298643,'Active'),(26,4,'Shubhangi','Shubhangi','Satnami','F','1999-11-03',9087652222,NULL,'shubhi123@gmail.com','123','454','Jasmine Flats','Khanpur','Ahmedabad','Punjab','India',265483,'Active'),(27,4,'Karan','Rashida','Ghoda','M','1997-08-22',9087652233,NULL,'karan123@gmail.com','123','565','Barsha Heights','Tecom','Pune','Gujarat','India',928376,'Active'),(28,4,'Sanket','Tarun','Shah','M','1988-11-03',7037652222,NULL,'sanky123@gmail.com','123','599','Jamaican Portal','Vadaj','Mumbai','Punjab','India',324168,'InActive'),(29,2,'Yash','Trilok','Gajar','M','1997-08-22',9087652816,NULL,'yashu123@gmail.com','123','87','Milan Building','Sharjah','Ahmedabad','Gujarat','India',923883,'Active'),(30,2,'Yashvi','Priyanka','Matlani','F','1999-11-09',9087659870,NULL,'yash123@gmail.com','123','57','Firdaus','Satellite','Dubai','Andhra Pradesh','India',908743,'Active'),(31,3,'Sahil','Shruti','Jain','M','1999-11-08',9873425179,NULL,'sahil123@gmail.com','123','567','Barsha Heights','Bopal','Melbourne','Maharshtra','India',982121,'Active'),(32,2,'Sameer','','Sharma','M','1999-11-07',9003456289,NULL,'sam123@gmail.com','123','557','Jasmine Flats','Ambawadi','Ahmedabad','Andhra Pradesh','India',901983,'Active'),(33,3,'Mehul','Himanshu','Bothra','M','1965-11-03',9823145000,NULL,'mehul123@gmail.com','123','5654','Barsha Heights','Tecom','Sydney','Gujarat','India',939874,'InActive'),(34,2,'Vivan','Pranali','Shah','M','1997-08-22',9823145012,NULL,'vivu123@gmail.com','123','45','Suvidha Flats','Science City','Pune','Maharshtra','India',674749,'InActive'),(35,2,'Rahul','Prajakta','Agrawal','M','1999-02-03',9823145090,NULL,'bittu123@gmail.com','123','9948','Barsha Heights','Tecom','Baroda','Punjab','India',747659,'Active'),(36,4,'Radhika','Sakina','Shah','F','2000-11-05',9823145010,NULL,'radhu123@gmail.com','123','404','Suvidha Flats','Sanand','Surat','Maharshtra','India',689263,'Active'),(37,2,'Insiya','Nakia','Patel','F','2000-11-25',9823145022,NULL,'inu123@gmail.com','123','321','Ray Building','Shilaj','Ahmedabad','Punjab','India',347676,'InActive'),(38,3,'Drashti','Mishri','Jariwala','F','1997-08-22',8923145000,NULL,'drashti123@gmail.com','123','2334','Barsha Heights','Shela','Baroda','Andhra Pradesh','India',346483,'Active'),(39,2,'Akshit','Vaj','Primuswala','F','2001-11-05',9823145046,NULL,'akshi123@gmail.com','123','456','Yamini Flats','IIM Road','Ahmedabad','Maharshtra','India',884776,'Active'),(40,4,'Shivani','Samkit','Mansuri','F','2000-11-12',7083145000,NULL,'shiva123@gmail.com','123','76','Applwood Villa','Tecom','Ahmedabad','Gujarat','India',998484,'Active'),(41,4,'Shivam','Samik','Shah','M','1997-08-22',8983145000,NULL,'shivaa123@gmail.com','123','875','Ray Building','Ymca','Udaipur','Andhra Pradesh','India',356677,'Active'),(42,3,'Joswin','Listrin','Jain','M','2010-11-05',9823141111,NULL,'josyy123@gmail.com','123','5677','Suvidha Flats','Satellite','Ahmedabad','Gujarat','India',765433,'Active'),(43,2,'Shivangi','Em','Patel','M','2000-11-05',9823145121,NULL,'shivu123@gmail.com','123','389','Suvidha Flats','Ambawadi','Udaipur','Manipur','India',654432,'Active'),(44,4,'Divya','Mihir','Shah','F','1999-03-16',7873654729,NULL,'divya123@gmail.com','123','4884','Barsha Heights','Bopal','Ahmedabad','Andhra Pradesh','India',465677,'Active'),(45,2,'Aastha','Chinmay','Jain','F','1997-08-22',9198636279,NULL,'aashtah123@gmail.com','123','498','Suvidha Flats','Gandhinagar','Surat','Tripura','India',765543,'Active'),(46,2,'Anshul','Brinda','Patel','M','1999-03-16',7365218919,NULL,'anshul123@gmail.com','123','9590','Keshavbaug ','Sarkhej','Baroda','Manipur','India',245667,'Active'),(47,3,'Rahul','Bhavesh','Patel','F','1999-05-16',9826352892,NULL,'rahul123@gmail.com','123','9848','Barsha Heights','Panjrapole','Lucknow','Punjab','India',765432,'Active'),(48,4,'Raj','Ashish','Shah','M','1997-08-22',7836662910,NULL,'raj123@gmail.com','123','003','Suvidha Flats','Khanpur','Mumbai','Andhra Pradesh','India',556678,'Active'),(49,4,'Prajakta','Aakash','Jain','F','1999-03-16',8327363289,NULL,'praju123@gmail.com','123','3984','Ray Building','Jamalpr','Pune','Gujarat','India',564543,'Active'),(50,4,'Anirudh','Trilok','Patel','M','1997-08-25',6253652820,NULL,'anirush123@gmail.com','123','5794','Suvidha Flats','Kalupur','Ahmedabad','Rajasthan','India',774675,'Active'),(51,2,'Anish','Madhav','Patel','M','1999-03-16',2783923476,NULL,'radha123@gmail.com','123','9847','Barsha Heights','Khanpur','Lucknow','Maharshtra','India',238834,'InActive'),(52,2,'Sakina','Nakia','Jain','F','1997-08-22',7575739920,NULL,'bahadur123@gmail.com','123','39920','Keshavbaug','Ambawadi','Baroda','Gujarat','India',674379,'Active'),(53,4,'Jenil','Mehul','Dholakiya','M','1997-08-22',2938476532,NULL,'xyz123@gmail.com','123','399','Barsha Heights','satellite','Ahmedabad','Andhra Pradesh','India',938984,'InActive'),(54,4,'Mariya','Saifee','Chhabria','F','1997-09-22',8923874764,NULL,'mariya123@gmail.com','123','364','Barsha Heights','bopal','Lucknow','Manipur','India',451100,'Active'),(55,3,'Rashida','Abedin','Lightwala','F','1999-08-22',8297374637,NULL,'rashida123@gmail.com','123','484','Firdaus','ambwadi','Pune','Punjab','India',380091,'Active'),(56,3,'Anjali','Swadha','Parikh','F','1967-10-22',2983477467,NULL,'anjali123@gmail.com','123','456','Suvidha Flats','bhatta','Mumbai','Andhra Pradesh','India',673527,'Active'),(57,4,'Sanjana','Arpita','chatterjee','M','1997-08-28',9248346647,NULL,'Sanjana123@gmail.com','123','43','Jasmine Flats','paldi','Vashi','Manipur','India',451101,'Active'),(58,3,'Harsh','Pritika','Shah','F','1997-08-22',9823763572,NULL,'Harsh123@gmail.com','123','234','Suvidha Flats','Nehrunagar','Patiala','Tripura','India',380001,'Active'),(59,3,'Mit','Angi','Jain','M','1999-08-22',2873776488,NULL,'Mit123@gmail.com','123','432','Barsha Heights','Vejalpur','Sharjah','Andhra Pradesh','India',451100,'Active'),(60,4,'Mitali','Meet','Patel','F','1987-08-30',9974736281,NULL,'mitali123@gmail.com','123','456','Barsha Heights','Tecom','Ahmedabad','Punjab','India',380009,'Active'),(61,3,'Hermione','','Granger','F','1999-08-22',9873552720,NULL,'hermione123@gmail.com','123','345','Silver Palace','Ambawadi','Ahmedabad','','',0,'Active'),(62,3,'Emma','','Watson','F','1976-09-03',9909863537,NULL,'emma123@gmail.com','123','233','Firdaus','South Bopal','Ahmedabad','','',0,'Active'),(63,3,'Harry','','Potter','M','1987-08-30',3823648333,NULL,'harry123@gmail.com','123','5975','Aarohi Residency','Bhattha','Ahmedabad','','',0,'Active'),(64,3,'Gigi','','Hadid','F','1999-05-24',9374664839,NULL,'gigi123@gmail.com','123','2748','Pranav Flats','Navrangpura','Ahmedabad','','',0,'Active'),(65,3,'Blake','','Lively','F','1992-03-03',8457939993,NULL,'blake123@gmail.com','123','100','Saurabhji Flats','Nehrunagar','Mumbai','','',0,'Active'),(66,3,'Britney','','Spears','F','1989-05-25',9876453783,NULL,'britney123@gmail.com','123','101','Shafal flats','Kalupur','Mumbai','','',0,'Active'),(67,3,'Ahley','','Spark','M','1991-01-17',8479393000,NULL,'ahleyv','123','1028','Orchid paradise','Bopal','Mumbai','','',0,'Active'),(68,3,'Chris','','Hemsworth','M','1987-08-30',9243564780,NULL,'chris123@gmail.com','123','6468','tulip homes','CG road','Mumbai','','',0,'Active'),(69,3,'Tony','','Stark','M','1994-03-14',9646488399,NULL,'tony123@gmail.com','123','03984','kalhaar ','Cept road','Ahmedabad','','',0,'Active'),(70,3,'Anna','','Hathaway','F','1993-08-30',8949846660,NULL,'anna123@gmail.com','123','93998','divine flats','IIM road','Ahmedabad','','',0,'Active'),(71,3,'Anne','','Marie','F','1987-08-30',9990376464,NULL,'anne123@gmail.com','123','3920','badshah flats','Bodakdev','Ahmedabad','','',0,'Active'),(72,3,'Jennifer','','Anniston','F','1995-03-16',9374665378,NULL,'jennifer123@gmail.com','123','111','emiway flats','Satellite','Pune','','',0,'Active'),(73,3,'Monica','','Geller','F','1999-11-17',9838736452,NULL,'mon123@gmail.com','123','2345','orchid flats','Bopal','Pune','','',0,'Active'),(74,3,'Taylor','','Swift','F','1987-08-30',9273511102,NULL,'taylor123@gmail.com','123','009','green woods','Khanpur','Pune','','',0,'Active'),(75,3,'Ariana','','Grande','F','1997-06-15',9797220010,NULL,'arii123@gmail.com','123','123','Gala Residency','Varachha','Pune','','',0,'Active'),(76,3,'Casper','Nakia','Lightwala','F','0000-00-00',9980914049,NULL,'casper1299@gmail.com','123','505','Jasmine Flats','Bodakdev','Hyderabad','Andhra Pradesh','India',564838,'InActive'),(77,3,'Pritika','Sanjay','Dasija','M','0000-00-00',9808250038,NULL,'priiti123@gmail.com','123','102','keshavbaug','Sindhu Bhavan','Ahmedabad','Rajasthan','India',747646,'Active'),(78,3,'Vaishnavi','Mansi','Rawal','M','0000-00-00',7065760649,NULL,'vaishu023@gmail.com','123','2002','Jasmine Flats','Satellite','Mumbai','Punjab','India',884653,'Active'),(79,3,'Samik','Bhuppi','Bothra','F','0000-00-00',9890152749,NULL,'samik123@gmail.com','123','837','Jamaican Portal','Bodakdev','Jodhpur','Maharshtra','India',898346,'Active'),(80,3,'Manohar','Krutarth','Shah','M','0000-00-00',8403151686,NULL,'monu123@gmail.com','123','2039','Jasmine Flats','Gurgaon','Pune','Andhra Pradesh','India',298374,'Active'),(81,3,'Pinky','Mili','Panchal','F','0000-00-00',9014356100,NULL,'pinky123@gmail.com','123','7364','Suvidha Flats','Kalupur','Mumbai','Tripura','India',298643,'Active'),(82,3,'Shubhangi','Shubhangi','Satnami','F','0000-00-00',9080120022,NULL,'shubhi123@gmail.com','123','454','Jasmine Flats','Khanpur','Ahmedabad','Punjab','India',265483,'Active'),(83,3,'Karan','Rashida','Ghoda','M','0000-00-00',9087002033,NULL,'karan123@gmail.com','123','565','Barsha Heights','Tecom','Pune','Gujarat','India',928376,'Active'),(84,3,'Sanket','Tarun','Shah','M','0000-00-00',7037651222,NULL,'sanky123@gmail.com','123','599','Jamaican Portal','Vadaj','Mumbai','Punjab','India',324168,'InActive'),(85,3,'Radhika','Sakina','Shah','F','0000-00-00',9823132010,NULL,'radhu123@gmail.com','123','404','Suvidha Flats','Sanand','Surat','Maharshtra','India',689263,'Active'),(86,3,'Shivani','Samkit','Mansuri','F','0000-00-00',7083145250,NULL,'shiva123@gmail.com','123','76','Applwood Villa','Tecom','Ahmedabad','Gujarat','India',998484,'Active'),(87,3,'Shivam','Samik','Shah','M','0000-00-00',8983245000,NULL,'shivaa123@gmail.com','123','875','Ray Building','Ymca','Udaipur','Andhra Pradesh','India',356677,'Active'),(88,3,'Divya','Mihir','Shah','F','0000-00-00',7873345729,NULL,'divya123@gmail.com','123','4884','Barsha Heights','Bopal','Ahmedabad','Andhra Pradesh','India',465677,'Active'),(89,3,'Raj','Ashish','Shah','M','0000-00-00',7831012910,NULL,'raj123@gmail.com','123','3','Suvidha Flats','Khanpur','Mumbai','Andhra Pradesh','India',556678,'Active'),(90,3,'Prajakta','Aakash','Jain','F','0000-00-00',8327391289,NULL,'praju123@gmail.com','123','3984','Ray Building','Jamalpr','Pune','Gujarat','India',564543,'Active'),(91,3,'Anirudh','Trilok','Patel','M','0000-00-00',6253012820,NULL,'anirush123@gmail.com','123','5794','Suvidha Flats','Kalupur','Ahmedabad','Rajasthan','India',774675,'Active'),(92,3,'Jenil','Mehul','Dholakiya','M','0000-00-00',2938483532,NULL,'xyz123@gmail.com','123','399','Barsha Heights','satellite','Ahmedabad','Andhra Pradesh','India',938984,'InActive'),(93,3,'Mariya','Saifee','Chhabria','F','0000-00-00',8923809264,NULL,'mariya123@gmail.com','123','364','Barsha Heights','bopal','Lucknow','Manipur','India',451100,'Active'),(94,3,'Sanjana','Arpita','chatterjee','M','0000-00-00',9210246647,NULL,'Sanjana123@gmail.com','123','43','Jasmine Flats','paldi','Vashi','Manipur','India',451101,'Active'),(95,3,'Mitali','Meet','Patel','F','0000-00-00',9970016281,NULL,'mitali123@gmail.com','123','456','Barsha Heights','Tecom','Ahmedabad','Punjab','India',380009,'Active'),(96,3,'Casper','Nakia','Lightwala','F','0000-00-00',9980914049,NULL,'casper1299@gmail.com','123','505','Jasmine Flats','Bodakdev','Hyderabad','Andhra Pradesh','India',564838,'InActive'),(97,3,'Pritika','Sanjay','Dasija','M','0000-00-00',9808250038,NULL,'priiti123@gmail.com','123','102','keshavbaug','Sindhu Bhavan','Ahmedabad','Rajasthan','India',747646,'Active'),(98,3,'Vaishnavi','Mansi','Rawal','M','0000-00-00',7065760649,NULL,'vaishu023@gmail.com','123','2002','Jasmine Flats','Satellite','Mumbai','Punjab','India',884653,'Active'),(99,3,'Samik','Bhuppi','Bothra','F','0000-00-00',9890152749,NULL,'samik123@gmail.com','123','837','Jamaican Portal','Bodakdev','Jodhpur','Maharshtra','India',898346,'Active'),(100,3,'Manohar','Krutarth','Shah','M','0000-00-00',8403151686,NULL,'monu123@gmail.com','123','2039','Jasmine Flats','Gurgaon','Pune','Andhra Pradesh','India',298374,'Active'),(101,3,'Pinky','Mili','Panchal','F','0000-00-00',9014356100,NULL,'pinky123@gmail.com','123','7364','Suvidha Flats','Kalupur','Mumbai','Tripura','India',298643,'Active'),(102,3,'Shubhangi','Shubhangi','Satnami','F','0000-00-00',9080120022,NULL,'shubhi123@gmail.com','123','454','Jasmine Flats','Khanpur','Ahmedabad','Punjab','India',265483,'Active'),(103,3,'Karan','Rashida','Ghoda','M','0000-00-00',9087002033,NULL,'karan123@gmail.com','123','565','Barsha Heights','Tecom','Pune','Gujarat','India',928376,'Active'),(104,3,'Sanket','Tarun','Shah','M','0000-00-00',7037651222,NULL,'sanky123@gmail.com','123','599','Jamaican Portal','Vadaj','Mumbai','Punjab','India',324168,'InActive'),(105,3,'Radhika','Sakina','Shah','F','0000-00-00',9823132010,NULL,'radhu123@gmail.com','123','404','Suvidha Flats','Sanand','Surat','Maharshtra','India',689263,'Active'),(106,3,'Shivani','Samkit','Mansuri','F','0000-00-00',7083145250,NULL,'shiva123@gmail.com','123','76','Applwood Villa','Tecom','Ahmedabad','Gujarat','India',998484,'Active'),(107,3,'Shivam','Samik','Shah','M','0000-00-00',8983245000,NULL,'shivaa123@gmail.com','123','875','Ray Building','Ymca','Udaipur','Andhra Pradesh','India',356677,'Active'),(108,3,'Divya','Mihir','Shah','F','0000-00-00',7873345729,NULL,'divya123@gmail.com','123','4884','Barsha Heights','Bopal','Ahmedabad','Andhra Pradesh','India',465677,'Active'),(109,3,'Raj','Ashish','Shah','M','0000-00-00',7831012910,NULL,'raj123@gmail.com','123','3','Suvidha Flats','Khanpur','Mumbai','Andhra Pradesh','India',556678,'Active'),(110,3,'Prajakta','Aakash','Jain','F','0000-00-00',8327391289,NULL,'praju123@gmail.com','123','3984','Ray Building','Jamalpr','Pune','Gujarat','India',564543,'Active'),(111,3,'Anirudh','Trilok','Patel','M','0000-00-00',6253012820,NULL,'anirush123@gmail.com','123','5794','Suvidha Flats','Kalupur','Ahmedabad','Rajasthan','India',774675,'Active'),(112,3,'Jenil','Mehul','Dholakiya','M','0000-00-00',2938483532,NULL,'xyz123@gmail.com','123','399','Barsha Heights','satellite','Ahmedabad','Andhra Pradesh','India',938984,'InActive'),(113,3,'Mariya','Saifee','Chhabria','F','0000-00-00',8923809264,NULL,'mariya123@gmail.com','123','364','Barsha Heights','bopal','Lucknow','Manipur','India',451100,'Active'),(114,3,'Sanjana','Arpita','chatterjee','M','0000-00-00',9210246647,NULL,'Sanjana123@gmail.com','123','43','Jasmine Flats','paldi','Vashi','Manipur','India',451101,'Active'),(115,3,'Mitali','Meet','Patel','F','0000-00-00',9970016281,NULL,'mitali123@gmail.com','123','456','Barsha Heights','Tecom','Ahmedabad','Punjab','India',380009,'Active'),(116,3,'Casper','Nakia','Lightwala','F','0000-00-00',9980914049,NULL,'casper1299@gmail.com','123','505','Jasmine Flats','Bodakdev','Hyderabad','Andhra Pradesh','India',564838,'InActive'),(117,3,'Pritika','Sanjay','Dasija','M','0000-00-00',9808250038,NULL,'priiti123@gmail.com','123','102','keshavbaug','Sindhu Bhavan','Ahmedabad','Rajasthan','India',747646,'Active'),(118,3,'Vaishnavi','Mansi','Rawal','M','0000-00-00',7065760649,NULL,'vaishu023@gmail.com','123','2002','Jasmine Flats','Satellite','Mumbai','Punjab','India',884653,'Active'),(119,3,'Samik','Bhuppi','Bothra','F','0000-00-00',9890152749,NULL,'samik123@gmail.com','123','837','Jamaican Portal','Bodakdev','Jodhpur','Maharshtra','India',898346,'Active'),(120,3,'Manohar','Krutarth','Shah','M','0000-00-00',8403151686,NULL,'monu123@gmail.com','123','2039','Jasmine Flats','Gurgaon','Pune','Andhra Pradesh','India',298374,'Active'),(121,3,'Pinky','Mili','Panchal','F','0000-00-00',9014356100,NULL,'pinky123@gmail.com','123','7364','Suvidha Flats','Kalupur','Mumbai','Tripura','India',298643,'Active'),(122,3,'Shubhangi','Shubhangi','Satnami','F','0000-00-00',9080120022,NULL,'shubhi123@gmail.com','123','454','Jasmine Flats','Khanpur','Ahmedabad','Punjab','India',265483,'Active'),(123,3,'Karan','Rashida','Ghoda','M','0000-00-00',9087002033,NULL,'karan123@gmail.com','123','565','Barsha Heights','Tecom','Pune','Gujarat','India',928376,'Active'),(124,3,'Sanket','Tarun','Shah','M','0000-00-00',7037651222,NULL,'sanky123@gmail.com','123','599','Jamaican Portal','Vadaj','Mumbai','Punjab','India',324168,'InActive'),(125,3,'Radhika','Sakina','Shah','F','0000-00-00',9823132010,NULL,'radhu123@gmail.com','123','404','Suvidha Flats','Sanand','Surat','Maharshtra','India',689263,'Active'),(126,3,'Shivani','Samkit','Mansuri','F','0000-00-00',7083145250,NULL,'shiva123@gmail.com','123','76','Applwood Villa','Tecom','Ahmedabad','Gujarat','India',998484,'Active'),(127,3,'Shivam','Samik','Shah','M','0000-00-00',8983245000,NULL,'shivaa123@gmail.com','123','875','Ray Building','Ymca','Udaipur','Andhra Pradesh','India',356677,'Active'),(128,3,'Divya','Mihir','Shah','F','0000-00-00',7873345729,NULL,'divya123@gmail.com','123','4884','Barsha Heights','Bopal','Ahmedabad','Andhra Pradesh','India',465677,'Active'),(129,3,'Raj','Ashish','Shah','M','0000-00-00',7831012910,NULL,'raj123@gmail.com','123','3','Suvidha Flats','Khanpur','Mumbai','Andhra Pradesh','India',556678,'Active'),(130,3,'Prajakta','Aakash','Jain','F','0000-00-00',8327391289,NULL,'praju123@gmail.com','123','3984','Ray Building','Jamalpr','Pune','Gujarat','India',564543,'Active'),(131,3,'Anirudh','Trilok','Patel','M','0000-00-00',6253012820,NULL,'anirush123@gmail.com','123','5794','Suvidha Flats','Kalupur','Ahmedabad','Rajasthan','India',774675,'Active'),(132,3,'Jenil','Mehul','Dholakiya','M','0000-00-00',2938483532,NULL,'xyz123@gmail.com','123','399','Barsha Heights','satellite','Ahmedabad','Andhra Pradesh','India',938984,'InActive'),(133,3,'Mariya','Saifee','Chhabria','F','0000-00-00',8923809264,NULL,'mariya123@gmail.com','123','364','Barsha Heights','bopal','Lucknow','Manipur','India',451100,'Active'),(134,3,'Sanjana','Arpita','chatterjee','M','0000-00-00',9210246647,NULL,'Sanjana123@gmail.com','123','43','Jasmine Flats','paldi','Vashi','Manipur','India',451101,'Active'),(135,3,'Mitali','Meet','Patel','F','0000-00-00',9970016281,NULL,'mitali123@gmail.com','123','456','Barsha Heights','Tecom','Ahmedabad','Punjab','India',380009,'Active'),(136,3,'Casper','Nakia','Lightwala','F','0000-00-00',9980914049,NULL,'casper1299@gmail.com','123','505','Jasmine Flats','Bodakdev','Hyderabad','Andhra Pradesh','India',564838,'InActive'),(137,3,'Pritika','Sanjay','Dasija','M','0000-00-00',9808250038,NULL,'priiti123@gmail.com','123','102','keshavbaug','Sindhu Bhavan','Ahmedabad','Rajasthan','India',747646,'Active'),(138,3,'Vaishnavi','Mansi','Rawal','M','0000-00-00',7065760649,NULL,'vaishu023@gmail.com','123','2002','Jasmine Flats','Satellite','Mumbai','Punjab','India',884653,'Active'),(139,3,'Samik','Bhuppi','Bothra','F','0000-00-00',9890152749,NULL,'samik123@gmail.com','123','837','Jamaican Portal','Bodakdev','Jodhpur','Maharshtra','India',898346,'Active'),(140,3,'Manohar','Krutarth','Shah','M','0000-00-00',8403151686,NULL,'monu123@gmail.com','123','2039','Jasmine Flats','Gurgaon','Pune','Andhra Pradesh','India',298374,'Active'),(141,3,'Pinky','Mili','Panchal','F','0000-00-00',9014356100,NULL,'pinky123@gmail.com','123','7364','Suvidha Flats','Kalupur','Mumbai','Tripura','India',298643,'Active'),(142,3,'Shubhangi','Shubhangi','Satnami','F','0000-00-00',9080120022,NULL,'shubhi123@gmail.com','123','454','Jasmine Flats','Khanpur','Ahmedabad','Punjab','India',265483,'Active'),(143,3,'Karan','Rashida','Ghoda','M','0000-00-00',9087002033,NULL,'karan123@gmail.com','123','565','Barsha Heights','Tecom','Pune','Gujarat','India',928376,'Active'),(144,3,'Sanket','Tarun','Shah','M','0000-00-00',7037651222,NULL,'sanky123@gmail.com','123','599','Jamaican Portal','Vadaj','Mumbai','Punjab','India',324168,'InActive'),(145,3,'Radhika','Sakina','Shah','F','0000-00-00',9823132010,NULL,'radhu123@gmail.com','123','404','Suvidha Flats','Sanand','Surat','Maharshtra','India',689263,'Active'),(146,3,'Shivani','Samkit','Mansuri','F','0000-00-00',7083145250,NULL,'shiva123@gmail.com','123','76','Applwood Villa','Tecom','Ahmedabad','Gujarat','India',998484,'Active'),(147,3,'Shivam','Samik','Shah','M','0000-00-00',8983245000,NULL,'shivaa123@gmail.com','123','875','Ray Building','Ymca','Udaipur','Andhra Pradesh','India',356677,'Active'),(148,3,'Divya','Mihir','Shah','F','0000-00-00',7873345729,NULL,'divya123@gmail.com','123','4884','Barsha Heights','Bopal','Ahmedabad','Andhra Pradesh','India',465677,'Active'),(149,3,'Raj','Ashish','Shah','M','0000-00-00',7831012910,NULL,'raj123@gmail.com','123','3','Suvidha Flats','Khanpur','Mumbai','Andhra Pradesh','India',556678,'Active'),(150,3,'Prajakta','Aakash','Jain','F','0000-00-00',8327391289,NULL,'praju123@gmail.com','123','3984','Ray Building','Jamalpr','Pune','Gujarat','India',564543,'Active'),(151,3,'Anirudh','Trilok','Patel','M','0000-00-00',6253012820,NULL,'anirush123@gmail.com','123','5794','Suvidha Flats','Kalupur','Ahmedabad','Rajasthan','India',774675,'Active'),(152,3,'Jenil','Mehul','Dholakiya','M','0000-00-00',2938483532,NULL,'xyz123@gmail.com','123','399','Barsha Heights','satellite','Ahmedabad','Andhra Pradesh','India',938984,'InActive'),(153,3,'Mariya','Saifee','Chhabria','F','0000-00-00',8923809264,NULL,'mariya123@gmail.com','123','364','Barsha Heights','bopal','Lucknow','Manipur','India',451100,'Active'),(154,3,'Sanjana','Arpita','chatterjee','M','0000-00-00',9210246647,NULL,'Sanjana123@gmail.com','123','43','Jasmine Flats','paldi','Vashi','Manipur','India',451101,'Active'),(155,3,'Mitali','Meet','Patel','F','0000-00-00',9970016281,NULL,'mitali123@gmail.com','123','456','Barsha Heights','Tecom','Ahmedabad','Punjab','India',380009,'Active'),(156,3,'Casper','Nakia','Lightwala','F','0000-00-00',9980914049,NULL,'casper1299@gmail.com','123','505','Jasmine Flats','Bodakdev','Hyderabad','Andhra Pradesh','India',564838,'InActive'),(157,3,'Pritika','Sanjay','Dasija','M','0000-00-00',9808250038,NULL,'priiti123@gmail.com','123','102','keshavbaug','Sindhu Bhavan','Ahmedabad','Rajasthan','India',747646,'Active'),(158,3,'Vaishnavi','Mansi','Rawal','M','0000-00-00',7065760649,NULL,'vaishu023@gmail.com','123','2002','Jasmine Flats','Satellite','Mumbai','Punjab','India',884653,'Active'),(159,3,'Samik','Bhuppi','Bothra','F','0000-00-00',9890152749,NULL,'samik123@gmail.com','123','837','Jamaican Portal','Bodakdev','Jodhpur','Maharshtra','India',898346,'Active'),(160,3,'Manohar','Krutarth','Shah','M','0000-00-00',8403151686,NULL,'monu123@gmail.com','123','2039','Jasmine Flats','Gurgaon','Pune','Andhra Pradesh','India',298374,'Active'),(161,3,'Pinky','Mili','Panchal','F','0000-00-00',9014356100,NULL,'pinky123@gmail.com','123','7364','Suvidha Flats','Kalupur','Mumbai','Tripura','India',298643,'Active'),(162,3,'Shubhangi','Shubhangi','Satnami','F','0000-00-00',9080120022,NULL,'shubhi123@gmail.com','123','454','Jasmine Flats','Khanpur','Ahmedabad','Punjab','India',265483,'Active'),(163,3,'Karan','Rashida','Ghoda','M','0000-00-00',9087002033,NULL,'karan123@gmail.com','123','565','Barsha Heights','Tecom','Pune','Gujarat','India',928376,'Active'),(164,3,'Sanket','Tarun','Shah','M','0000-00-00',7037651222,NULL,'sanky123@gmail.com','123','599','Jamaican Portal','Vadaj','Mumbai','Punjab','India',324168,'InActive'),(165,3,'Radhika','Sakina','Shah','F','0000-00-00',9823132010,NULL,'radhu123@gmail.com','123','404','Suvidha Flats','Sanand','Surat','Maharshtra','India',689263,'Active'),(166,3,'Shivani','Samkit','Mansuri','F','0000-00-00',7083145250,NULL,'shiva123@gmail.com','123','76','Applwood Villa','Tecom','Ahmedabad','Gujarat','India',998484,'Active'),(167,3,'Shivam','Samik','Shah','M','0000-00-00',8983245000,NULL,'shivaa123@gmail.com','123','875','Ray Building','Ymca','Udaipur','Andhra Pradesh','India',356677,'Active'),(168,3,'Divya','Mihir','Shah','F','0000-00-00',7873345729,NULL,'divya123@gmail.com','123','4884','Barsha Heights','Bopal','Ahmedabad','Andhra Pradesh','India',465677,'Active'),(169,3,'Raj','Ashish','Shah','M','0000-00-00',7831012910,NULL,'raj123@gmail.com','123','3','Suvidha Flats','Khanpur','Mumbai','Andhra Pradesh','India',556678,'Active'),(170,3,'Prajakta','Aakash','Jain','F','0000-00-00',8327391289,NULL,'praju123@gmail.com','123','3984','Ray Building','Jamalpr','Pune','Gujarat','India',564543,'Active'),(171,3,'Anirudh','Trilok','Patel','M','0000-00-00',6253012820,NULL,'anirush123@gmail.com','123','5794','Suvidha Flats','Kalupur','Ahmedabad','Rajasthan','India',774675,'Active'),(172,3,'Jenil','Mehul','Dholakiya','M','0000-00-00',2938483532,NULL,'xyz123@gmail.com','123','399','Barsha Heights','satellite','Ahmedabad','Andhra Pradesh','India',938984,'InActive'),(173,3,'Mariya','Saifee','Chhabria','F','0000-00-00',8923809264,NULL,'mariya123@gmail.com','123','364','Barsha Heights','bopal','Lucknow','Manipur','India',451100,'Active'),(174,3,'Sanjana','Arpita','chatterjee','M','0000-00-00',9210246647,NULL,'Sanjana123@gmail.com','123','43','Jasmine Flats','paldi','Vashi','Manipur','India',451101,'Active'),(175,3,'Mitali','Meet','Patel','F','0000-00-00',9970016281,NULL,'mitali123@gmail.com','123','456','Barsha Heights','Tecom','Ahmedabad','Punjab','India',380009,'Active');
/*!40000 ALTER TABLE `user_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type_master`
--

DROP TABLE IF EXISTS `user_type_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_type_master` (
  `UTMID` int NOT NULL AUTO_INCREMENT,
  `role` varchar(30) NOT NULL,
  PRIMARY KEY (`UTMID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type_master`
--

LOCK TABLES `user_type_master` WRITE;
/*!40000 ALTER TABLE `user_type_master` DISABLE KEYS */;
INSERT INTO `user_type_master` VALUES (1,'Admin'),(2,'Manager'),(3,'Employee'),(4,'Member');
/*!40000 ALTER TABLE `user_type_master` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-04 22:37:41
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: contra.cjrbdmxkv84s.ap-south-1.rds.amazonaws.com    Database: contra
-- ------------------------------------------------------
-- Server version	8.0.20

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth` (
  `AID` int NOT NULL AUTO_INCREMENT,
  `UTMID` int DEFAULT NULL,
  `Emailid` varchar(50) DEFAULT NULL,
  `Password` varchar(256) DEFAULT NULL,
  `Log` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AID`),
  UNIQUE KEY `Emailid` (`Emailid`),
  KEY `auth_utmid` (`UTMID`),
  CONSTRAINT `auth_utmid` FOREIGN KEY (`UTMID`) REFERENCES `user_type_master` (`UTMID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth`
--

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;
INSERT INTO `auth` VALUES (1,1,'parikh.madhav1999@gmail.com','9272a9c85565ae11227aec4688fa8a7b','2020-09-17 10:14:29'),(2,2,'ridharawther123@gmail.com','d130775c4ed852f1058424f372ab8cc6','2020-09-27 08:56:34'),(4,2,'meet1536@gmail.com','0108097c3c227d2091fbfd25344edb41','2020-10-18 06:36:36');
/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boards` (
  `BID` int NOT NULL AUTO_INCREMENT,
  `AID` int DEFAULT NULL,
  `UBID` varchar(64) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Activation` varchar(10) DEFAULT 'Activated',
  PRIMARY KEY (`BID`),
  UNIQUE KEY `UBID` (`UBID`),
  UNIQUE KEY `UBID_2` (`UBID`),
  UNIQUE KEY `UBID_3` (`UBID`),
  KEY `boards_AID` (`AID`),
  CONSTRAINT `boards_AID` FOREIGN KEY (`AID`) REFERENCES `auth` (`AID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards`
--

LOCK TABLES `boards` WRITE;
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;
INSERT INTO `boards` VALUES (16,1,'010ef88258887a696697ffc56c998055368f98ca986eaaf5b1cdecba0bae21cd','test0909','Activated'),(17,1,'1c23879e4158df7994abe288c97c08520a8f411b86776d53249bd60010a5ce09','PracticalTest','Activated');
/*!40000 ALTER TABLE `boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `germination`
--

DROP TABLE IF EXISTS `germination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `germination` (
  `GID` int NOT NULL AUTO_INCREMENT,
  `Attempt_Name` varchar(50) DEFAULT NULL,
  `Location` varchar(50) NOT NULL,
  `Plant_Name` varchar(50) NOT NULL,
  `Cec_Value` int NOT NULL,
  `Water_Ph` int NOT NULL,
  `Water_TDS` int NOT NULL,
  `Sowing_Date` date NOT NULL,
  `Grow_Medium` varchar(50) NOT NULL,
  `Light_Source` varchar(50) NOT NULL,
  `Seed_Company` varchar(50) NOT NULL,
  `Seed_Variety` varchar(50) NOT NULL,
  `Soaked_Seeds` int NOT NULL,
  `Unsoaked_Seeds` int NOT NULL,
  `Total` int NOT NULL,
  `Total_Plants` int NOT NULL,
  PRIMARY KEY (`GID`),
  UNIQUE KEY `Attempt_Name` (`Attempt_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `germination`
--

LOCK TABLES `germination` WRITE;
/*!40000 ALTER TABLE `germination` DISABLE KEYS */;
INSERT INTO `germination` VALUES (5,'test','test','test',23,123,12,'2020-12-31','sand','Natural Light','dees','good',12,12,1212,60),(6,'Sakan_Twins_Brinjal_5','Sakan Twins','Brinjal',0,6,0,'2020-08-05','Cocopeat','Natural Light','Adventa Golden Seeds','F1 Hybrid',0,5,5,5);
/*!40000 ALTER TABLE `germination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `germination_detail`
--

DROP TABLE IF EXISTS `germination_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `germination_detail` (
  `GDID` int NOT NULL AUTO_INCREMENT,
  `GID` int NOT NULL,
  `Germination_Date` date DEFAULT NULL,
  `Average_Germination_Duration` int DEFAULT NULL,
  `Average_Time_of_True_Leaves` int DEFAULT NULL,
  `Average_Sapling_Height` int DEFAULT NULL,
  `Hardening_Cycle` int DEFAULT NULL,
  `Hardening_Date` date DEFAULT NULL,
  `Sapling_Transplant_Date` date DEFAULT NULL,
  PRIMARY KEY (`GDID`),
  UNIQUE KEY `GID` (`GID`),
  CONSTRAINT `germination_detail_ibfk_1` FOREIGN KEY (`GID`) REFERENCES `germination` (`GID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `germination_detail`
--

LOCK TABLES `germination_detail` WRITE;
/*!40000 ALTER TABLE `germination_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `germination_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `germination_weekly`
--

DROP TABLE IF EXISTS `germination_weekly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `germination_weekly` (
  `DID` int NOT NULL AUTO_INCREMENT,
  `GID` int NOT NULL,
  `Date` date NOT NULL,
  `Period` varchar(10) NOT NULL,
  `Volume` int NOT NULL,
  `Time` int DEFAULT NULL,
  `Dosage_EC` int NOT NULL,
  `Dosage_PH` int NOT NULL,
  `Pesticide` varchar(50) DEFAULT NULL,
  `Pesticide_Volume` float(4,2) DEFAULT NULL,
  PRIMARY KEY (`DID`),
  KEY `DID_GID` (`GID`),
  CONSTRAINT `DID_GID` FOREIGN KEY (`GID`) REFERENCES `germination` (`GID`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `germination_weekly`
--

LOCK TABLES `germination_weekly` WRITE;
/*!40000 ALTER TABLE `germination_weekly` DISABLE KEYS */;
INSERT INTO `germination_weekly` VALUES (4,6,'2020-08-05','Morning',0,0,0,0,'0',0.00),(5,6,'2020-08-09','Evening',0,0,0,0,'0',0.00),(6,6,'2020-08-10','Morning',0,0,0,0,'0',0.00),(7,6,'2020-08-10','Evening',0,0,0,0,'0',0.00),(39,6,'2020-08-12','Morning',0,0,0,0,'0',0.00),(40,6,'2020-08-12','Morning',0,0,0,0,'0',0.00),(41,6,'2020-08-13','Morning',0,0,0,0,'0',0.00),(42,6,'2020-08-14','Morning',0,0,0,0,'0',0.00),(43,6,'2020-08-15','Morning',0,0,0,0,'0',0.00),(44,6,'2020-08-16','Morning',0,0,0,0,'0',0.00),(45,6,'2020-08-17','Morning',0,0,0,0,'0',0.00),(46,6,'2020-08-18','Morning',0,0,0,0,'0',0.00),(47,6,'2020-08-19','Morning',0,0,0,0,'0',0.00),(48,6,'2020-08-20','Morning',0,0,0,0,'0',0.00),(49,6,'2020-08-21','Morning',0,0,0,0,'0',0.00),(50,6,'2020-08-22','Morning',0,0,0,0,'0',0.00),(51,6,'2020-08-23','Morning',0,0,0,0,'0',0.00),(52,6,'2020-08-24','Morning',0,0,0,0,'0',0.00),(53,6,'2020-08-25','Morning',0,0,0,0,'0',0.00),(54,6,'2020-08-10','Evening',0,0,0,0,'0',0.00),(55,6,'2020-08-11','Evening',0,0,0,0,'0',0.00),(56,6,'2020-08-12','Evening',0,0,0,0,'0',0.00),(57,6,'2020-08-13','Evening',0,0,0,0,'0',0.00),(58,6,'2020-08-14','Evening',0,0,0,0,'0',0.00),(59,6,'2020-08-15','Evening',0,0,0,0,'0',0.00),(60,6,'2020-08-16','Evening',0,0,0,0,'0',0.00),(61,6,'2020-08-17','Evening',0,0,0,0,'0',0.00),(62,6,'2020-08-18','Evening',0,0,0,0,'0',0.00),(63,6,'2020-08-19','Evening',0,0,0,0,'0',0.00),(64,6,'2020-08-20','Evening',0,0,0,0,'0',0.00),(65,6,'2020-08-21','Evening',0,0,0,0,'0',0.00),(66,6,'2020-08-22','Evening',0,0,0,0,'0',0.00),(67,6,'2020-08-23','Evening',0,0,0,0,'0',0.00),(68,6,'2020-08-24','Evening',0,0,0,0,'0',0.00),(69,6,'2020-08-25','Evening',0,0,0,0,'0',0.00);
/*!40000 ALTER TABLE `germination_weekly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module` (
  `MID` int NOT NULL AUTO_INCREMENT,
  `BID` int DEFAULT NULL,
  `SID` int DEFAULT NULL,
  PRIMARY KEY (`MID`),
  KEY `BID` (`BID`),
  KEY `SID` (`SID`),
  CONSTRAINT `module_ibfk_1` FOREIGN KEY (`BID`) REFERENCES `boards` (`BID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `module_ibfk_2` FOREIGN KEY (`SID`) REFERENCES `sensor_master` (`SID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (18,17,6),(19,17,2),(20,17,5),(21,17,4);
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_data`
--

DROP TABLE IF EXISTS `sensor_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensor_data` (
  `SDID` int NOT NULL AUTO_INCREMENT,
  `BID` int NOT NULL,
  `Humidity_Sensor` int NOT NULL DEFAULT '0',
  `Sound_sensor` int NOT NULL DEFAULT '0',
  `Temperature_Sensor` int NOT NULL DEFAULT '0',
  `Ultrasonic_sensor` int NOT NULL DEFAULT '0',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`SDID`),
  KEY `sensor_data_fk` (`BID`),
  CONSTRAINT `sensor_data_fk` FOREIGN KEY (`BID`) REFERENCES `boards` (`BID`)
) ENGINE=InnoDB AUTO_INCREMENT=550 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_data`
--

LOCK TABLES `sensor_data` WRITE;
/*!40000 ALTER TABLE `sensor_data` DISABLE KEYS */;
INSERT INTO `sensor_data` VALUES (12,17,25,34,11,34,'2020-10-04 15:50:28'),(13,17,24,24,24,24,'2020-10-04 15:50:28'),(18,17,24,24,24,24,'2020-10-04 15:50:28'),(19,17,24,24,24,24,'2020-10-04 15:50:28'),(20,17,55,55,55,55,'2020-10-04 15:50:28'),(21,17,55,55,55,55,'2020-10-04 15:50:28'),(22,17,24,24,24,24,'2020-10-04 15:50:28'),(23,17,24,24,24,24,'2020-10-04 15:50:28'),(24,17,24,24,24,24,'2020-10-04 15:50:28'),(25,17,24,24,24,24,'2020-10-04 15:50:28'),(26,17,24,24,24,24,'2020-10-04 15:50:28'),(27,17,24,24,24,24,'2020-10-04 16:18:28'),(28,17,24,24,24,24,'2020-10-04 16:28:53'),(29,17,24,24,24,24,'2020-10-04 16:28:55'),(30,17,24,24,24,24,'2020-10-04 16:29:20'),(31,17,24,24,24,24,'2020-10-04 16:29:27'),(32,17,24,24,24,24,'2020-10-04 16:29:29'),(33,17,25,25,25,25,'2020-10-06 15:55:55'),(34,17,25,25,25,25,'2020-10-06 16:03:42'),(35,17,25,25,25,25,'2020-10-06 16:04:28'),(36,17,25,25,25,25,'2020-10-06 16:06:11'),(37,17,52,255,822,633,'2020-10-07 14:00:55'),(38,17,52,255,822,633,'2020-10-07 14:01:00'),(39,17,52,255,822,633,'2020-10-07 14:01:05'),(40,17,52,255,822,633,'2020-10-07 14:01:10'),(41,17,52,255,822,633,'2020-10-07 14:01:16'),(42,17,52,255,822,633,'2020-10-07 14:01:21'),(43,17,52,255,822,633,'2020-10-07 14:01:26'),(44,17,52,255,822,633,'2020-10-07 14:01:31'),(45,17,52,255,822,633,'2020-10-07 14:01:36'),(46,17,52,255,822,633,'2020-10-07 14:01:41'),(47,17,52,255,822,633,'2020-10-07 14:01:46'),(48,17,52,255,822,633,'2020-10-07 14:01:51'),(49,17,52,255,822,633,'2020-10-07 14:01:57'),(50,17,52,255,822,633,'2020-10-07 14:02:02'),(51,17,52,255,822,633,'2020-10-07 14:02:07'),(52,17,52,255,822,633,'2020-10-07 14:02:13'),(53,17,52,255,822,633,'2020-10-07 14:02:18'),(54,17,52,255,822,633,'2020-10-07 14:02:24'),(55,17,52,255,822,633,'2020-10-07 14:02:29'),(56,17,52,255,822,633,'2020-10-07 14:02:34'),(57,17,52,255,822,633,'2020-10-07 14:02:39'),(58,17,52,255,822,633,'2020-10-07 14:02:45'),(59,17,52,255,822,633,'2020-10-07 14:02:50'),(60,17,52,255,822,633,'2020-10-07 14:02:55'),(61,17,52,255,822,633,'2020-10-07 14:03:01'),(62,17,52,255,822,633,'2020-10-07 14:03:06'),(63,17,52,255,822,633,'2020-10-07 14:03:11'),(64,17,52,255,822,633,'2020-10-07 14:03:16'),(65,17,52,255,822,633,'2020-10-07 14:03:21'),(66,17,52,255,822,633,'2020-10-07 14:03:26'),(67,17,52,255,822,633,'2020-10-07 14:03:32'),(68,17,52,255,822,633,'2020-10-07 14:03:37'),(69,17,52,255,822,633,'2020-10-07 14:03:42'),(70,17,52,255,822,633,'2020-10-07 14:03:47'),(71,17,52,255,822,633,'2020-10-07 14:03:52'),(72,17,52,255,822,633,'2020-10-07 14:03:57'),(73,17,52,255,822,633,'2020-10-07 14:04:03'),(74,17,52,255,822,633,'2020-10-07 14:04:08'),(75,17,52,255,822,633,'2020-10-07 14:04:13'),(76,17,52,255,822,633,'2020-10-07 14:04:19'),(77,17,52,255,822,633,'2020-10-07 14:04:25'),(78,17,52,255,822,633,'2020-10-07 14:04:31'),(79,17,52,255,822,633,'2020-10-07 14:04:36'),(80,17,52,255,822,633,'2020-10-07 14:04:41'),(81,17,52,255,822,633,'2020-10-07 14:04:46'),(82,17,52,255,822,633,'2020-10-07 14:04:52'),(83,17,52,255,822,633,'2020-10-07 14:04:57'),(84,17,52,255,822,633,'2020-10-07 14:05:02'),(85,17,52,255,822,633,'2020-10-07 14:05:07'),(86,17,52,255,822,633,'2020-10-07 14:05:12'),(87,17,52,255,822,633,'2020-10-07 14:05:19'),(88,17,52,255,822,633,'2020-10-07 14:05:24'),(89,17,52,255,822,633,'2020-10-07 14:05:29'),(90,17,52,255,822,633,'2020-10-07 14:05:34'),(91,17,52,255,822,633,'2020-10-07 14:05:39'),(92,17,52,255,822,633,'2020-10-07 14:05:44'),(93,17,52,255,822,633,'2020-10-07 14:05:49'),(94,17,52,255,822,633,'2020-10-07 14:05:54'),(95,17,52,255,822,633,'2020-10-07 14:06:00'),(96,17,52,255,822,633,'2020-10-07 14:06:05'),(97,17,52,255,822,633,'2020-10-07 14:06:10'),(98,17,52,255,822,633,'2020-10-07 14:06:15'),(99,17,52,255,822,633,'2020-10-07 14:06:20'),(100,17,52,255,822,633,'2020-10-07 14:06:26'),(101,17,52,255,822,633,'2020-10-07 14:06:31'),(102,17,52,255,822,633,'2020-10-07 14:06:36'),(103,17,52,255,822,633,'2020-10-07 14:06:41'),(104,17,52,255,822,633,'2020-10-07 14:06:47'),(105,17,52,255,822,633,'2020-10-07 14:06:52'),(106,17,52,255,822,633,'2020-10-07 14:06:57'),(107,17,52,255,822,633,'2020-10-07 14:07:02'),(108,17,52,255,822,633,'2020-10-07 14:07:07'),(109,17,52,255,822,633,'2020-10-07 14:07:13'),(110,17,52,255,822,633,'2020-10-07 14:07:18'),(111,17,52,255,822,633,'2020-10-07 14:07:23'),(112,17,52,255,822,633,'2020-10-07 14:07:28'),(113,17,52,255,822,633,'2020-10-07 14:07:33'),(114,17,52,255,822,633,'2020-10-07 14:07:38'),(115,17,52,255,822,633,'2020-10-07 14:07:43'),(116,17,52,255,822,633,'2020-10-07 14:07:48'),(117,17,52,255,822,633,'2020-10-07 14:07:53'),(118,17,52,255,822,633,'2020-10-07 14:07:58'),(119,17,52,255,822,633,'2020-10-07 14:08:04'),(120,17,52,255,822,633,'2020-10-07 14:08:09'),(121,17,52,255,822,633,'2020-10-07 14:08:14'),(122,17,52,255,822,633,'2020-10-07 14:08:20'),(123,17,52,255,822,633,'2020-10-07 14:08:25'),(124,17,52,255,822,633,'2020-10-07 14:08:30'),(125,17,52,255,822,633,'2020-10-07 14:08:35'),(126,17,52,255,822,633,'2020-10-07 14:08:40'),(127,17,52,255,822,633,'2020-10-07 14:08:45'),(128,17,52,255,822,633,'2020-10-07 14:08:52'),(129,17,52,255,822,633,'2020-10-07 14:08:57'),(130,17,52,255,822,633,'2020-10-07 14:09:02'),(131,17,52,255,822,633,'2020-10-07 14:09:07'),(132,17,52,255,822,633,'2020-10-07 14:09:12'),(133,17,52,255,822,633,'2020-10-07 14:09:17'),(134,17,52,255,822,633,'2020-10-07 14:09:22'),(135,17,52,255,822,633,'2020-10-07 14:09:27'),(136,17,52,255,822,633,'2020-10-07 14:09:33'),(137,17,52,255,822,633,'2020-10-07 14:09:38'),(138,17,52,255,822,633,'2020-10-07 14:09:43'),(139,17,52,255,822,633,'2020-10-07 14:09:49'),(140,17,52,255,822,633,'2020-10-07 14:09:54'),(141,17,52,255,822,633,'2020-10-07 14:09:59'),(142,17,52,255,822,633,'2020-10-07 14:10:04'),(143,17,52,255,822,633,'2020-10-07 14:10:09'),(144,17,52,255,822,633,'2020-10-07 14:10:14'),(145,17,52,255,822,633,'2020-10-07 14:10:19'),(146,17,52,255,822,633,'2020-10-07 14:10:24'),(147,17,52,255,822,633,'2020-10-07 14:10:29'),(148,17,52,255,822,633,'2020-10-07 14:10:34'),(149,17,52,255,822,633,'2020-10-07 14:10:40'),(150,17,52,255,822,633,'2020-10-07 14:10:45'),(151,17,52,255,822,633,'2020-10-07 14:10:50'),(152,17,52,255,822,633,'2020-10-07 14:10:55'),(153,17,52,255,822,633,'2020-10-07 14:11:00'),(154,17,52,255,822,633,'2020-10-07 14:11:06'),(155,17,52,255,822,633,'2020-10-07 14:11:11'),(156,17,52,255,822,633,'2020-10-07 14:11:16'),(157,17,52,255,822,633,'2020-10-07 14:11:21'),(158,17,52,255,822,633,'2020-10-07 14:11:26'),(159,17,52,255,822,633,'2020-10-07 14:11:31'),(160,17,52,255,822,633,'2020-10-07 14:11:37'),(161,17,52,255,822,633,'2020-10-07 14:11:42'),(162,17,52,255,822,633,'2020-10-07 14:11:47'),(163,17,52,255,822,633,'2020-10-07 14:11:52'),(164,17,52,255,822,633,'2020-10-07 14:11:57'),(165,17,52,255,822,633,'2020-10-07 14:12:02'),(166,17,52,255,822,633,'2020-10-07 14:12:07'),(167,17,52,255,822,633,'2020-10-07 14:12:12'),(168,17,52,255,822,633,'2020-10-07 14:12:17'),(169,17,52,255,822,633,'2020-10-07 14:12:22'),(170,17,52,255,822,633,'2020-10-07 14:12:27'),(171,17,52,255,822,633,'2020-10-07 14:12:33'),(172,17,52,255,822,633,'2020-10-07 14:12:38'),(173,17,52,255,822,633,'2020-10-07 14:12:43'),(174,17,52,255,822,633,'2020-10-07 14:12:48'),(175,17,52,255,822,633,'2020-10-07 14:12:54'),(176,17,52,255,822,633,'2020-10-07 14:12:59'),(177,17,52,255,822,633,'2020-10-07 14:13:04'),(178,17,52,255,822,633,'2020-10-07 14:13:09'),(179,17,52,255,822,633,'2020-10-07 14:13:14'),(180,17,52,255,822,633,'2020-10-07 14:13:19'),(181,17,52,255,822,633,'2020-10-07 14:13:24'),(182,17,52,255,822,633,'2020-10-07 14:13:29'),(183,17,52,255,822,633,'2020-10-07 14:13:34'),(184,17,52,255,822,633,'2020-10-07 14:13:39'),(185,17,52,255,822,633,'2020-10-07 14:13:44'),(186,17,52,255,822,633,'2020-10-07 14:13:50'),(187,17,52,255,822,633,'2020-10-07 14:13:55'),(188,17,52,255,822,633,'2020-10-07 14:14:00'),(189,17,52,255,822,633,'2020-10-07 14:14:05'),(190,17,52,255,822,633,'2020-10-07 14:14:10'),(191,17,52,255,822,633,'2020-10-07 14:14:15'),(192,17,52,255,822,633,'2020-10-07 14:14:21'),(193,17,52,255,822,633,'2020-10-07 14:14:26'),(194,17,52,255,822,633,'2020-10-07 14:14:31'),(195,17,52,255,822,633,'2020-10-07 14:14:36'),(196,17,52,255,822,633,'2020-10-07 14:14:41'),(197,17,52,255,822,633,'2020-10-07 14:14:46'),(198,17,52,255,822,633,'2020-10-07 14:14:51'),(199,17,52,255,822,633,'2020-10-07 14:14:56'),(200,17,52,255,822,633,'2020-10-07 14:15:02'),(201,17,52,255,822,633,'2020-10-07 14:15:07'),(202,17,52,255,822,633,'2020-10-07 14:15:12'),(203,17,52,255,822,633,'2020-10-07 14:15:18'),(204,17,52,255,822,633,'2020-10-07 14:15:23'),(205,17,52,255,822,633,'2020-10-07 14:15:28'),(206,17,52,255,822,633,'2020-10-07 14:15:33'),(207,17,52,255,822,633,'2020-10-07 14:15:38'),(208,17,52,255,822,633,'2020-10-07 14:15:43'),(209,17,52,255,822,633,'2020-10-07 14:15:48'),(210,17,52,255,822,633,'2020-10-07 14:15:53'),(211,17,52,255,822,633,'2020-10-07 14:15:59'),(212,17,52,255,822,633,'2020-10-07 14:16:04'),(213,17,52,255,822,633,'2020-10-07 14:16:09'),(214,17,52,255,822,633,'2020-10-07 14:16:14'),(215,17,52,255,822,633,'2020-10-07 14:16:19'),(216,17,52,255,822,633,'2020-10-07 14:16:24'),(217,17,52,255,822,633,'2020-10-07 14:16:30'),(218,17,52,255,822,633,'2020-10-07 14:16:35'),(219,17,52,255,822,633,'2020-10-07 14:16:40'),(220,17,52,255,822,633,'2020-10-07 14:16:45'),(221,17,52,255,822,633,'2020-10-07 14:16:50'),(222,17,52,255,822,633,'2020-10-07 14:16:56'),(223,17,52,255,822,633,'2020-10-07 14:17:01'),(224,17,52,255,822,633,'2020-10-07 14:17:06'),(225,17,52,255,822,633,'2020-10-07 14:17:11'),(226,17,52,255,822,633,'2020-10-07 14:17:16'),(227,17,52,255,822,633,'2020-10-07 14:17:21'),(228,17,52,255,822,633,'2020-10-07 14:17:26'),(229,17,52,255,822,633,'2020-10-07 14:17:31'),(230,17,52,255,822,633,'2020-10-07 14:17:36'),(231,17,52,255,822,633,'2020-10-07 14:17:41'),(232,17,52,255,822,633,'2020-10-07 14:17:47'),(233,17,52,255,822,633,'2020-10-07 14:17:52'),(234,17,52,255,822,633,'2020-10-07 14:17:57'),(235,17,52,255,822,633,'2020-10-07 14:18:02'),(236,17,52,255,822,633,'2020-10-07 14:18:07'),(237,17,52,255,822,633,'2020-10-07 14:18:12'),(238,17,52,255,822,633,'2020-10-07 14:18:17'),(239,17,52,255,822,633,'2020-10-07 14:18:23'),(240,17,52,255,822,633,'2020-10-07 14:18:28'),(241,17,52,255,822,633,'2020-10-07 14:18:33'),(242,17,52,255,822,633,'2020-10-07 14:18:38'),(243,17,52,255,822,633,'2020-10-07 14:18:43'),(244,17,52,255,822,633,'2020-10-07 14:18:48'),(245,17,52,255,822,633,'2020-10-07 14:18:53'),(246,17,52,255,822,633,'2020-10-07 14:18:58'),(247,17,52,255,822,633,'2020-10-07 14:19:03'),(248,17,52,255,822,633,'2020-10-07 14:19:08'),(249,17,52,255,822,633,'2020-10-07 14:19:13'),(250,17,52,255,822,633,'2020-10-07 14:19:19'),(251,17,52,255,822,633,'2020-10-07 14:19:24'),(252,17,52,255,822,633,'2020-10-07 14:19:29'),(253,17,52,255,822,633,'2020-10-07 14:19:34'),(254,17,52,255,822,633,'2020-10-07 14:19:39'),(255,17,52,255,822,633,'2020-10-07 14:19:44'),(256,17,52,255,822,633,'2020-10-07 14:19:50'),(257,17,52,255,822,633,'2020-10-07 14:19:55'),(258,17,52,255,822,633,'2020-10-07 14:20:00'),(259,17,52,255,822,633,'2020-10-07 14:20:05'),(260,17,52,255,822,633,'2020-10-07 14:20:10'),(261,17,52,255,822,633,'2020-10-07 14:20:15'),(262,17,52,255,822,633,'2020-10-07 14:20:20'),(263,17,52,255,822,633,'2020-10-07 14:20:26'),(264,17,52,255,822,633,'2020-10-07 14:20:31'),(265,17,52,255,822,633,'2020-10-07 14:20:37'),(266,17,52,255,822,633,'2020-10-07 14:20:42'),(267,17,52,255,822,633,'2020-10-07 14:20:47'),(268,17,52,255,822,633,'2020-10-07 14:20:52'),(269,17,52,255,822,633,'2020-10-07 14:20:57'),(270,17,52,255,822,633,'2020-10-07 14:21:02'),(271,17,52,255,822,633,'2020-10-07 14:21:07'),(272,17,52,255,822,633,'2020-10-07 14:21:12'),(273,17,52,255,822,633,'2020-10-07 14:21:18'),(274,17,52,255,822,633,'2020-10-07 14:21:23'),(275,17,52,255,822,633,'2020-10-07 14:21:28'),(276,17,52,255,822,633,'2020-10-07 14:21:33'),(277,17,52,255,822,633,'2020-10-07 14:21:38'),(278,17,52,255,822,633,'2020-10-07 14:21:43'),(279,17,52,255,822,633,'2020-10-07 14:21:49'),(280,17,52,255,822,633,'2020-10-07 14:21:54'),(281,17,52,255,822,633,'2020-10-07 14:21:59'),(282,17,52,255,822,633,'2020-10-07 14:22:04'),(283,17,52,255,822,633,'2020-10-07 14:22:09'),(284,17,52,255,822,633,'2020-10-07 14:22:15'),(285,17,52,255,822,633,'2020-10-07 14:22:20'),(286,17,52,255,822,633,'2020-10-07 14:22:25'),(287,17,52,255,822,633,'2020-10-07 14:22:30'),(288,17,52,255,822,633,'2020-10-07 14:22:35'),(289,17,52,255,822,633,'2020-10-07 14:22:41'),(290,17,52,255,822,633,'2020-10-07 14:22:46'),(291,17,52,255,822,633,'2020-10-07 14:22:51'),(292,17,20,55,77,85,'2020-10-10 12:29:33'),(293,17,20,55,77,85,'2020-10-10 12:38:19'),(294,17,20,55,77,85,'2020-10-10 12:38:30'),(295,17,20,55,77,85,'2020-10-10 12:38:40'),(296,17,20,55,77,85,'2020-10-10 12:39:04'),(297,17,20,55,77,85,'2020-10-10 12:39:07'),(298,17,20,55,77,85,'2020-10-10 12:47:55'),(299,17,20,55,77,85,'2020-10-17 16:21:44'),(300,17,20,55,77,85,'2020-10-17 16:21:49'),(301,17,20,55,77,85,'2020-10-18 05:45:54'),(302,17,20,55,77,85,'2020-10-18 05:46:09'),(303,17,20,55,77,85,'2020-10-18 05:46:23'),(304,17,20,55,77,85,'2020-10-18 05:46:44'),(305,17,20,55,77,85,'2020-10-18 05:58:20'),(306,17,20,55,77,85,'2020-10-18 05:59:27'),(307,17,20,55,77,85,'2020-10-18 06:00:47'),(308,17,20,55,77,85,'2020-10-18 06:00:52'),(309,17,20,55,77,85,'2020-10-18 06:01:03'),(310,17,20,55,77,85,'2020-10-18 06:12:13'),(311,17,20,55,77,85,'2020-10-18 06:12:16'),(312,17,20,55,77,85,'2020-10-18 06:12:17'),(313,17,20,55,77,85,'2020-10-18 06:12:18'),(314,17,11,11,11,11,'2020-10-25 12:37:47'),(315,17,11,10,9,8,'2020-10-31 06:23:14'),(316,17,10,40,20,30,'2020-10-31 06:51:34'),(317,17,10,15,20,25,'2020-10-31 06:55:47'),(318,17,10,15,20,25,'2020-10-31 06:58:36'),(319,17,24,24,24,24,'2020-10-31 06:58:43'),(320,17,10,10,25,15,'2020-10-31 07:06:53'),(321,17,10,10,25,15,'2020-10-31 07:08:32'),(322,17,10,10,25,15,'2020-10-31 07:08:35'),(323,17,10,40,20,30,'2020-10-31 07:09:28'),(324,17,10,40,20,30,'2020-10-31 07:09:34'),(325,17,10,40,20,30,'2020-10-31 07:09:39'),(326,17,10,40,20,30,'2020-10-31 07:09:44'),(327,17,10,40,20,30,'2020-10-31 07:09:49'),(328,17,10,40,20,30,'2020-10-31 07:09:54'),(329,17,10,40,20,30,'2020-10-31 07:09:59'),(330,17,10,40,20,30,'2020-10-31 07:10:04'),(331,17,10,40,20,30,'2020-10-31 07:10:09'),(332,17,10,40,20,30,'2020-10-31 07:10:14'),(333,17,10,40,20,30,'2020-10-31 07:10:19'),(334,17,10,40,20,30,'2020-10-31 07:10:24'),(335,17,10,40,20,30,'2020-10-31 07:10:30'),(336,17,50,70,20,30,'2020-10-31 07:10:44'),(337,17,50,70,20,30,'2020-10-31 07:10:49'),(338,17,50,70,20,30,'2020-10-31 07:10:54'),(339,17,50,70,20,30,'2020-10-31 07:11:00'),(340,17,50,70,20,30,'2020-10-31 07:11:05'),(341,17,50,70,20,30,'2020-10-31 07:11:10'),(342,17,50,70,20,30,'2020-10-31 07:11:15'),(343,17,50,70,20,30,'2020-10-31 07:11:20'),(344,17,50,70,20,30,'2020-10-31 07:11:26'),(345,17,50,70,20,30,'2020-10-31 07:11:31'),(346,17,50,70,20,30,'2020-10-31 07:11:36'),(347,17,50,70,20,30,'2020-10-31 07:11:42'),(348,17,50,70,20,30,'2020-10-31 07:11:47'),(349,17,50,70,20,30,'2020-10-31 07:11:52'),(350,17,50,70,20,30,'2020-10-31 07:11:57'),(351,17,50,70,20,30,'2020-10-31 07:12:02'),(352,17,50,70,20,30,'2020-10-31 07:12:07'),(353,17,50,70,20,30,'2020-10-31 07:12:13'),(354,17,50,70,20,30,'2020-10-31 07:12:18'),(355,17,50,70,20,30,'2020-10-31 07:12:23'),(356,17,50,70,20,30,'2020-10-31 07:12:28'),(357,17,50,70,20,30,'2020-10-31 07:12:34'),(358,17,50,70,20,30,'2020-10-31 07:12:39'),(359,17,50,70,20,30,'2020-10-31 07:12:44'),(360,17,50,70,20,30,'2020-10-31 07:12:49'),(361,17,50,70,20,30,'2020-10-31 07:12:54'),(362,17,50,70,20,30,'2020-10-31 07:12:59'),(363,17,50,70,20,30,'2020-10-31 07:13:04'),(364,17,50,70,20,30,'2020-10-31 07:13:09'),(365,17,50,70,20,30,'2020-10-31 07:13:15'),(366,17,50,70,20,30,'2020-10-31 07:13:20'),(367,17,50,70,20,30,'2020-10-31 07:13:26'),(368,17,50,70,20,30,'2020-10-31 07:13:31'),(369,17,50,70,20,30,'2020-10-31 07:13:36'),(370,17,50,70,20,30,'2020-10-31 07:13:42'),(371,17,50,70,20,30,'2020-10-31 07:13:47'),(372,17,50,70,20,30,'2020-10-31 07:13:52'),(373,17,50,70,20,30,'2020-10-31 07:13:57'),(374,17,50,70,20,30,'2020-10-31 07:14:02'),(375,17,50,70,20,30,'2020-10-31 07:14:07'),(376,17,50,70,20,30,'2020-10-31 07:14:12'),(377,17,50,70,20,30,'2020-10-31 07:14:17'),(378,17,50,70,20,30,'2020-10-31 07:14:22'),(379,17,50,70,20,30,'2020-10-31 07:14:27'),(380,17,50,70,25,100,'2020-10-31 07:14:41'),(381,17,50,70,25,100,'2020-10-31 07:14:46'),(382,17,50,70,25,100,'2020-10-31 07:14:51'),(383,17,50,70,25,100,'2020-10-31 07:14:56'),(384,17,50,70,25,100,'2020-10-31 07:15:01'),(385,17,50,70,25,100,'2020-10-31 07:15:07'),(386,17,50,70,25,100,'2020-10-31 07:15:12'),(387,17,50,70,25,100,'2020-10-31 07:15:17'),(388,17,50,70,25,100,'2020-10-31 07:15:22'),(389,17,50,70,25,100,'2020-10-31 07:15:27'),(390,17,50,70,25,100,'2020-10-31 07:15:33'),(391,17,50,70,25,100,'2020-10-31 07:15:38'),(392,17,50,70,25,100,'2020-10-31 07:15:44'),(393,17,50,70,25,100,'2020-10-31 07:15:49'),(394,17,50,70,25,100,'2020-10-31 07:15:55'),(395,17,50,70,25,100,'2020-10-31 07:16:00'),(396,17,100,140,50,200,'2020-10-31 07:16:14'),(397,17,200,280,100,400,'2020-10-31 07:16:19'),(398,17,400,560,200,800,'2020-10-31 07:16:24'),(399,17,800,1120,400,1600,'2020-10-31 07:16:29'),(400,17,1600,2240,800,3200,'2020-10-31 07:16:35'),(401,17,3200,4480,1600,6400,'2020-10-31 07:16:41'),(402,17,6400,8960,3200,12800,'2020-10-31 07:16:46'),(403,17,12800,17920,6400,25600,'2020-10-31 07:16:51'),(404,17,25600,35840,12800,51200,'2020-10-31 07:16:56'),(405,17,51200,71680,25600,102400,'2020-10-31 07:17:01'),(406,17,102400,143360,51200,204800,'2020-10-31 07:17:06'),(407,17,204800,286720,102400,409600,'2020-10-31 07:17:11'),(408,17,409600,573440,204800,819200,'2020-10-31 07:17:17'),(409,17,819200,1146880,409600,1638400,'2020-10-31 07:17:22'),(410,17,1638400,2293760,819200,3276800,'2020-10-31 07:17:27'),(411,17,3276800,4587520,1638400,6553600,'2020-10-31 07:17:33'),(412,17,6553600,9175040,3276800,13107200,'2020-10-31 07:17:38'),(413,17,13107200,18350080,6553600,26214400,'2020-10-31 07:17:43'),(414,17,26214400,36700160,13107200,52428800,'2020-10-31 07:17:48'),(415,17,52428800,73400320,26214400,104857600,'2020-10-31 07:17:53'),(416,17,104857600,146800640,52428800,209715200,'2020-10-31 07:17:58'),(417,17,100,140,50,200,'2020-10-31 07:18:34'),(418,17,200,280,100,400,'2020-10-31 07:18:40'),(419,17,400,560,200,800,'2020-10-31 07:18:45'),(420,17,800,1120,400,1600,'2020-10-31 07:18:50'),(421,17,1600,2240,800,3200,'2020-10-31 07:18:55'),(422,17,100,140,50,200,'2020-10-31 07:19:08'),(423,17,200,280,100,400,'2020-10-31 07:19:13'),(424,17,400,560,200,800,'2020-10-31 07:19:19'),(425,17,100,140,50,200,'2020-10-31 07:20:13'),(426,17,200,280,100,400,'2020-10-31 07:20:18'),(427,17,400,560,200,800,'2020-10-31 07:20:23'),(428,17,800,1120,400,1600,'2020-10-31 07:20:28'),(429,17,1600,2240,800,3200,'2020-10-31 07:20:33'),(430,17,3200,4480,1600,6400,'2020-10-31 07:20:38'),(431,17,6400,8960,3200,12800,'2020-10-31 07:20:44'),(432,17,12800,17920,6400,25600,'2020-10-31 07:20:50'),(433,17,25600,35840,12800,51200,'2020-10-31 07:20:55'),(434,17,51200,71680,25600,102400,'2020-10-31 07:21:00'),(435,17,102400,143360,51200,204800,'2020-10-31 07:21:05'),(436,17,204800,286720,102400,409600,'2020-10-31 07:21:10'),(437,17,409600,573440,204800,819200,'2020-10-31 07:21:15'),(438,17,819200,1146880,409600,1638400,'2020-10-31 07:21:21'),(439,17,1638400,2293760,819200,3276800,'2020-10-31 07:21:26'),(440,17,3276800,4587520,1638400,6553600,'2020-10-31 07:21:31'),(441,17,6553600,9175040,3276800,13107200,'2020-10-31 07:21:36'),(442,17,13107200,18350080,6553600,26214400,'2020-10-31 07:21:41'),(443,17,26214400,36700160,13107200,52428800,'2020-10-31 07:21:46'),(444,17,52428800,73400320,26214400,104857600,'2020-10-31 07:21:51'),(445,17,104857600,146800640,52428800,209715200,'2020-10-31 07:21:56'),(446,17,209715200,293601280,104857600,419430400,'2020-10-31 07:22:01'),(447,17,419430400,587202560,209715200,838860800,'2020-10-31 07:22:06'),(448,17,838860800,1174405120,419430400,1677721600,'2020-10-31 07:22:12'),(449,17,1677721600,-1946157056,838860800,-939524096,'2020-10-31 07:22:17'),(450,17,-939524096,402653184,1677721600,-1879048192,'2020-10-31 07:22:22'),(451,17,-1879048192,805306368,-939524096,536870912,'2020-10-31 07:22:27'),(452,17,100,140,50,200,'2020-10-31 11:20:23'),(453,17,200,280,100,400,'2020-10-31 11:20:28'),(454,17,10,10,25,15,'2020-10-31 11:21:53'),(455,17,24,24,24,24,'2020-11-02 16:03:04'),(456,17,100,140,50,200,'2020-11-02 16:11:38'),(457,17,200,280,100,400,'2020-11-02 16:11:43'),(458,17,400,560,200,800,'2020-11-02 16:11:48'),(459,17,800,1120,400,1600,'2020-11-02 16:11:53'),(460,17,1600,2240,800,3200,'2020-11-02 16:11:59'),(461,17,3200,4480,1600,6400,'2020-11-02 16:12:04'),(462,17,6400,8960,3200,12800,'2020-11-02 16:12:09'),(463,17,12800,17920,6400,25600,'2020-11-02 16:12:14'),(464,17,25600,35840,12800,51200,'2020-11-02 16:12:19'),(465,17,51200,71680,25600,102400,'2020-11-02 16:12:26'),(466,17,102400,143360,51200,204800,'2020-11-02 16:12:31'),(467,17,204800,286720,102400,409600,'2020-11-02 16:12:36'),(468,17,100,140,50,200,'2020-11-02 16:12:52'),(469,17,200,280,100,400,'2020-11-02 16:12:57'),(470,17,400,560,200,800,'2020-11-02 16:13:02'),(471,17,800,1120,400,1600,'2020-11-02 16:13:08'),(472,17,1600,2240,800,3200,'2020-11-02 16:13:14'),(473,17,3200,4480,1600,6400,'2020-11-02 16:13:20'),(474,17,6400,8960,3200,12800,'2020-11-02 16:13:25'),(475,17,12800,17920,6400,25600,'2020-11-02 16:13:30'),(476,17,25600,35840,12800,51200,'2020-11-02 16:13:37'),(477,17,51200,71680,25600,102400,'2020-11-02 16:13:44'),(478,17,102400,143360,51200,204800,'2020-11-02 16:13:49'),(479,17,204800,286720,102400,409600,'2020-11-02 16:13:54'),(480,17,409600,573440,204800,819200,'2020-11-02 16:13:59'),(481,17,819200,1146880,409600,1638400,'2020-11-02 16:14:04'),(482,17,1638400,2293760,819200,3276800,'2020-11-02 16:14:10'),(483,17,3276800,4587520,1638400,6553600,'2020-11-02 16:14:15'),(484,17,6553600,9175040,3276800,13107200,'2020-11-02 16:14:20'),(485,17,13107200,18350080,6553600,26214400,'2020-11-02 16:14:25'),(486,17,26214400,36700160,13107200,52428800,'2020-11-02 16:14:30'),(487,17,52428800,73400320,26214400,104857600,'2020-11-02 16:14:35'),(488,17,104857600,146800640,52428800,209715200,'2020-11-02 16:14:40'),(489,17,209715200,293601280,104857600,419430400,'2020-11-02 16:14:45'),(490,17,100,120,75,150,'2020-11-02 16:15:02'),(491,17,150,170,125,200,'2020-11-02 16:15:07'),(492,17,200,220,175,250,'2020-11-02 16:15:12'),(493,17,250,270,225,300,'2020-11-02 16:15:17'),(494,17,300,320,275,350,'2020-11-02 16:15:23'),(495,17,350,370,325,400,'2020-11-02 16:15:28'),(496,17,400,420,375,450,'2020-11-02 16:15:33'),(497,17,450,470,425,500,'2020-11-02 16:15:38'),(498,17,500,520,475,550,'2020-11-02 16:15:44'),(499,17,550,570,525,600,'2020-11-02 16:15:49'),(500,17,600,620,575,650,'2020-11-02 16:15:54'),(501,17,650,670,625,700,'2020-11-02 16:15:59'),(502,17,700,720,675,750,'2020-11-02 16:16:04'),(503,17,750,770,725,800,'2020-11-02 16:16:09'),(504,17,800,820,775,850,'2020-11-02 16:16:15'),(505,17,850,870,825,900,'2020-11-02 16:16:20'),(506,17,900,920,875,950,'2020-11-02 16:16:26'),(507,17,950,970,925,1000,'2020-11-02 16:16:31'),(508,17,1000,1020,975,1050,'2020-11-02 16:16:36'),(509,17,1050,1070,1025,1100,'2020-11-02 16:16:41'),(510,17,1100,1120,1075,1150,'2020-11-02 16:16:46'),(511,17,1150,1170,1125,1200,'2020-11-02 16:16:51'),(512,17,1200,1220,1175,1250,'2020-11-02 16:16:56'),(513,17,1250,1270,1225,1300,'2020-11-02 16:17:01'),(514,17,1300,1320,1275,1350,'2020-11-02 16:17:07'),(515,17,1350,1370,1325,1400,'2020-11-02 16:17:12'),(516,17,1400,1420,1375,1450,'2020-11-02 16:17:17'),(517,17,1450,1470,1425,1500,'2020-11-02 16:17:22'),(518,17,1500,1520,1475,1550,'2020-11-02 16:17:28'),(519,17,1550,1570,1525,1600,'2020-11-02 16:17:33'),(520,17,1600,1620,1575,1650,'2020-11-02 16:17:38'),(521,17,1650,1670,1625,1700,'2020-11-02 16:17:43'),(522,17,1700,1720,1675,1750,'2020-11-02 16:17:48'),(523,17,1750,1770,1725,1800,'2020-11-02 16:17:53'),(524,17,1800,1820,1775,1850,'2020-11-02 16:17:59'),(525,17,1850,1870,1825,1900,'2020-11-02 16:18:04'),(526,17,1900,1920,1875,1950,'2020-11-02 16:18:10'),(527,17,1950,1970,1925,2000,'2020-11-02 16:18:15'),(528,17,2000,2020,1975,2050,'2020-11-02 16:18:20'),(529,17,2050,2070,2025,2100,'2020-11-02 16:18:25'),(530,17,2100,2120,2075,2150,'2020-11-02 16:18:31'),(531,17,2150,2170,2125,2200,'2020-11-02 16:18:36'),(532,17,2200,2220,2175,2250,'2020-11-02 16:18:41'),(533,17,2250,2270,2225,2300,'2020-11-02 16:18:47'),(534,17,2300,2320,2275,2350,'2020-11-02 16:18:52'),(535,17,2350,2370,2325,2400,'2020-11-02 16:18:57'),(536,17,2400,2420,2375,2450,'2020-11-02 16:19:02'),(537,17,2450,2470,2425,2500,'2020-11-02 16:19:07'),(538,17,2500,2520,2475,2550,'2020-11-02 16:19:13'),(539,17,2550,2570,2525,2600,'2020-11-02 16:19:19'),(540,17,2600,2620,2575,2650,'2020-11-02 16:19:24'),(541,17,2650,2670,2625,2700,'2020-11-02 16:19:29'),(542,17,2700,2720,2675,2750,'2020-11-02 16:19:34'),(543,17,2750,2770,2725,2800,'2020-11-02 16:19:39'),(544,17,2800,2820,2775,2850,'2020-11-02 16:19:45'),(545,17,2850,2870,2825,2900,'2020-11-02 16:19:50'),(546,17,2900,2920,2875,2950,'2020-11-02 16:19:55'),(547,17,2950,2970,2925,3000,'2020-11-02 16:20:00'),(548,17,3000,3020,2975,3050,'2020-11-02 16:20:05'),(549,17,3050,3070,3025,3100,'2020-11-02 16:20:10');
/*!40000 ALTER TABLE `sensor_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_master`
--

DROP TABLE IF EXISTS `sensor_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensor_master` (
  `SID` int NOT NULL AUTO_INCREMENT,
  `Sensor_Name` varchar(50) DEFAULT NULL,
  `Type` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  UNIQUE KEY `Sensor_Name` (`Sensor_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_master`
--

LOCK TABLES `sensor_master` WRITE;
/*!40000 ALTER TABLE `sensor_master` DISABLE KEYS */;
INSERT INTO `sensor_master` VALUES (2,'Sound_Sensor','Sound'),(4,'Ultrasonic_Sensor','Ultrasonic'),(5,'Temperature_Sensor','Temperature'),(6,'Humidity_Sensor','Humidity');
/*!40000 ALTER TABLE `sensor_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type_master`
--

DROP TABLE IF EXISTS `user_type_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_type_master` (
  `UTMID` int NOT NULL AUTO_INCREMENT,
  `Role` varchar(15) DEFAULT NULL,
  `Log` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`UTMID`),
  UNIQUE KEY `Role` (`Role`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type_master`
--

LOCK TABLES `user_type_master` WRITE;
/*!40000 ALTER TABLE `user_type_master` DISABLE KEYS */;
INSERT INTO `user_type_master` VALUES (1,'Admin','2020-09-17 14:53:51'),(2,'User','2020-09-17 07:45:14');
/*!40000 ALTER TABLE `user_type_master` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-04 22:37:43
