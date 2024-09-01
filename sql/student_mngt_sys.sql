-- MySQL dump 10.13  Distrib 9.0.1, for macos14 (x86_64)
--
-- Host: localhost    Database: student_mngt_sys
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admit_program`
--

DROP TABLE IF EXISTS `admit_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admit_program` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `program_id` int NOT NULL,
  `batch_id` int NOT NULL,
  `admit_date` datetime NOT NULL,
  `admit_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admit_program`
--

LOCK TABLES `admit_program` WRITE;
/*!40000 ALTER TABLE `admit_program` DISABLE KEYS */;
/*!40000 ALTER TABLE `admit_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `start` text,
  `end` text NOT NULL,
  `day` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch`
--

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,1,'hello there','2024-08-30 23:08:14');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `classid` int NOT NULL AUTO_INCREMENT,
  `classname` text NOT NULL,
  `subject_code` text,
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `sub_id` int NOT NULL,
  `exam_name` text NOT NULL,
  `total` int DEFAULT NULL,
  `mcq` int DEFAULT NULL,
  `written` int DEFAULT NULL,
  `exam_date` date NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `add_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_category`
--

DROP TABLE IF EXISTS `exam_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` text NOT NULL,
  `program_id` int NOT NULL,
  `date` datetime NOT NULL,
  `add_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_category`
--

LOCK TABLES `exam_category` WRITE;
/*!40000 ALTER TABLE `exam_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_list`
--

DROP TABLE IF EXISTS `exam_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `exam_name` text NOT NULL,
  `category_id` int NOT NULL,
  `subject_name` int NOT NULL,
  `exam_date` datetime NOT NULL,
  `date` datetime NOT NULL,
  `add_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_list`
--

LOCK TABLES `exam_list` WRITE;
/*!40000 ALTER TABLE `exam_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_mark`
--

DROP TABLE IF EXISTS `exam_mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_mark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `exam_id` int NOT NULL,
  `mark_category_id` int NOT NULL,
  `total_mark` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `add_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_mark`
--

LOCK TABLES `exam_mark` WRITE;
/*!40000 ALTER TABLE `exam_mark` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expence`
--

DROP TABLE IF EXISTS `expence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expence` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `amount` int NOT NULL,
  `notes` text,
  `add_by` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expence`
--

LOCK TABLES `expence` WRITE;
/*!40000 ALTER TABLE `expence` DISABLE KEYS */;
/*!40000 ALTER TABLE `expence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expence_category`
--

DROP TABLE IF EXISTS `expence_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expence_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` text NOT NULL,
  `add_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expence_category`
--

LOCK TABLES `expence_category` WRITE;
/*!40000 ALTER TABLE `expence_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `expence_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `amount` int NOT NULL,
  `notes` text,
  `add_by` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mark_category`
--

DROP TABLE IF EXISTS `mark_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mark_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `add_by` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mark_category`
--

LOCK TABLES `mark_category` WRITE;
/*!40000 ALTER TABLE `mark_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mark_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL,
  `add_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `paid` double NOT NULL,
  `next_date` date DEFAULT NULL,
  `date` datetime NOT NULL,
  `add_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_sms`
--

DROP TABLE IF EXISTS `pending_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pending_sms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number_list` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_sms`
--

LOCK TABLES `pending_sms` WRITE;
/*!40000 ALTER TABLE `pending_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `subject` text,
  `batch` text,
  `fee` double DEFAULT NULL,
  `type` int NOT NULL DEFAULT '1',
  `monthly_fee` int NOT NULL DEFAULT '0',
  `add_by` int DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program`
--

LOCK TABLES `program` WRITE;
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
/*!40000 ALTER TABLE `program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receive_payment`
--

DROP TABLE IF EXISTS `receive_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receive_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment_id` int NOT NULL,
  `pay` int NOT NULL,
  `sms` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `add_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receive_payment`
--

LOCK TABLES `receive_payment` WRITE;
/*!40000 ALTER TABLE `receive_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `receive_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `id` int NOT NULL AUTO_INCREMENT,
  `exam_id` int NOT NULL,
  `student_id` int NOT NULL,
  `mcq` double DEFAULT NULL,
  `written` double DEFAULT NULL,
  `total` double NOT NULL,
  `date` datetime NOT NULL,
  `add_by` int NOT NULL,
  `sms` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `set_payment`
--

DROP TABLE IF EXISTS `set_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `set_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `year` int NOT NULL,
  `month` int NOT NULL,
  `fee` int NOT NULL,
  `add_by` int NOT NULL,
  `last_update` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `set_payment`
--

LOCK TABLES `set_payment` WRITE;
/*!40000 ALTER TABLE `set_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `set_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `option_name` text,
  `option_value` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'site_name','Student Management System'),(2,'sort_name','College Name'),(3,'address','Hyderabad, India'),(4,'main_logo','main_logo.png'),(5,'logo','logo.png'),(6,'phone','9323692187'),(7,'email','info@rohitconsultants.com'),(8,'msg','EMS');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_activity`
--

DROP TABLE IF EXISTS `site_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `table_name` text NOT NULL,
  `action_type` text NOT NULL,
  `table_id` text NOT NULL,
  `ip` text,
  `browser` text,
  `previous_data` text,
  `present_data` text,
  `login` int DEFAULT '0',
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_activity`
--

LOCK TABLES `site_activity` WRITE;
/*!40000 ALTER TABLE `site_activity` DISABLE KEYS */;
INSERT INTO `site_activity` VALUES (1,1,'login','insert','1','127.0.0.1','Google Chrome','','',1,'2024-08-30 22:22:24'),(2,1,'setting','update','2','127.0.0.1','Google Chrome','{\"id\":\"2\",\"option_name\":\"sort_name\",\"option_value\":\"EMS\"}','{\"id\":\"2\",\"option_name\":\"sort_name\",\"option_value\":\"College Name\"}',0,'2024-08-30 22:52:09'),(3,1,'setting','update','3','127.0.0.1','Google Chrome','{\"id\":\"3\",\"option_name\":\"address\",\"option_value\":\"Dhaka, Bangladesh\"}','{\"id\":\"3\",\"option_name\":\"address\",\"option_value\":\"Hyderabad, India\"}',0,'2024-08-30 22:52:09'),(4,1,'setting','update','6','127.0.0.1','Google Chrome','{\"id\":\"6\",\"option_name\":\"phone\",\"option_value\":\"-\"}','{\"id\":\"6\",\"option_name\":\"phone\",\"option_value\":\"9323692187\"}',0,'2024-08-30 22:52:09'),(5,1,'setting','update','7','127.0.0.1','Google Chrome','{\"id\":\"7\",\"option_name\":\"email\",\"option_value\":\"sk.amirhamza@gmail.com\"}','{\"id\":\"7\",\"option_name\":\"email\",\"option_value\":\"info@rohitconsultants.com\"}',0,'2024-08-30 22:52:09'),(6,1,'setting','update','4','127.0.0.1','Google Chrome','{\"id\":\"4\",\"option_name\":\"main_logo\",\"option_value\":\"techserm_full_logo.jpg\"}','{\"id\":\"4\",\"option_name\":\"main_logo\",\"option_value\":\"main_logo.png\"}',0,'2024-08-30 22:52:09'),(7,1,'setting','update','5','127.0.0.1','Google Chrome','{\"id\":\"5\",\"option_name\":\"logo\",\"option_value\":\"techserm_small_logo.png\"}','{\"id\":\"5\",\"option_name\":\"logo\",\"option_value\":\"logo.png\"}',0,'2024-08-30 22:52:09'),(8,1,'user','update','1','127.0.0.1','Google Chrome','{\"id\":\"1\",\"uname\":\"admin\",\"fname\":\"Admin\",\"photo\":\"avatar.png\",\"gender\":\"Male\",\"email\":\"admin@gmail.com\",\"phone\":\"2147483647\",\"address\":\"Bangladesh\",\"pass\":\"8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"1\"}','{\"id\":\"1\",\"uname\":\"admin\",\"fname\":\"Admin\",\"photo\":\"user_1.jpg\",\"gender\":\"Male\",\"email\":\"admin@gmail.com\",\"phone\":\"2147483647\",\"address\":\"Bangladesh\",\"pass\":\"8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"1\"}',0,'2024-08-30 22:53:27'),(9,1,'user','update','1','127.0.0.1','Google Chrome','{\"id\":\"1\",\"uname\":\"admin\",\"fname\":\"Admin\",\"photo\":\"user_1.jpg\",\"gender\":\"Male\",\"email\":\"admin@gmail.com\",\"phone\":\"2147483647\",\"address\":\"Bangladesh\",\"pass\":\"8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"1\"}','{\"id\":\"1\",\"uname\":\"admin\",\"fname\":\"Admin\",\"photo\":\"user_1.jpg\",\"gender\":\"Male\",\"email\":\"admin@gmail.com\",\"phone\":\"2147483647\",\"address\":\"Bangladesh\",\"pass\":\"8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"26\"}',0,'2024-08-30 22:57:54'),(10,1,'user','update','1','127.0.0.1','Google Chrome','{\"id\":\"1\",\"uname\":\"admin\",\"fname\":\"Admin\",\"photo\":\"user_1.jpg\",\"gender\":\"Male\",\"email\":\"admin@gmail.com\",\"phone\":\"2147483647\",\"address\":\"Bangladesh\",\"pass\":\"8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"26\"}','{\"id\":\"1\",\"uname\":\"admin\",\"fname\":\"Admin\",\"photo\":\"user_1.jpg\",\"gender\":\"Male\",\"email\":\"admin@gmail.com\",\"phone\":\"2147483647\",\"address\":\"Bangladesh\",\"pass\":\"8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"24\"}',0,'2024-08-30 22:57:57'),(11,1,'user','update','1','127.0.0.1','Google Chrome','{\"id\":\"1\",\"uname\":\"admin\",\"fname\":\"Admin\",\"photo\":\"user_1.jpg\",\"gender\":\"Male\",\"email\":\"admin@gmail.com\",\"phone\":\"2147483647\",\"address\":\"Bangladesh\",\"pass\":\"8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"24\"}','{\"id\":\"1\",\"uname\":\"admin\",\"fname\":\"Admin\",\"photo\":\"user_1.jpg\",\"gender\":\"Male\",\"email\":\"admin@gmail.com\",\"phone\":\"2147483647\",\"address\":\"Bangladesh\",\"pass\":\"8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"19\"}',0,'2024-08-30 22:58:04'),(12,1,'user','update','1','127.0.0.1','Google Chrome','{\"id\":\"1\",\"uname\":\"admin\",\"fname\":\"Admin\",\"photo\":\"user_1.jpg\",\"gender\":\"Male\",\"email\":\"admin@gmail.com\",\"phone\":\"2147483647\",\"address\":\"Bangladesh\",\"pass\":\"8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"19\"}','{\"id\":\"1\",\"uname\":\"admin\",\"fname\":\"Admin\",\"photo\":\"user_1.jpg\",\"gender\":\"Male\",\"email\":\"admin@gmail.com\",\"phone\":\"2147483647\",\"address\":\"Bangladesh\",\"pass\":\"8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"10\"}',0,'2024-08-30 22:58:17'),(13,1,'subject','insert','1','127.0.0.1','Google Chrome','','{\"id\":\"1\",\"sub_name\":\"Maths\",\"sub_code\":\"MTHS\"}',0,'2024-08-30 23:14:20'),(14,1,'subject','insert','2','127.0.0.1','Google Chrome','','{\"id\":\"2\",\"sub_name\":\"Physics\",\"sub_code\":\"Physics\"}',0,'2024-08-30 23:14:36'),(15,1,'subject','insert','3','127.0.0.1','Google Chrome','','{\"id\":\"3\",\"sub_name\":\"Chemistry\",\"sub_code\":\"CHE\"}',0,'2024-08-30 23:15:25'),(16,1,'subject','update','2','127.0.0.1','Google Chrome','{\"id\":\"2\",\"sub_name\":\"Physics\",\"sub_code\":\"Physics\"}','{\"id\":\"2\",\"sub_name\":\"Physics\",\"sub_code\":\"PHY\"}',0,'2024-08-30 23:15:36'),(17,1,'login','insert','1','127.0.0.1','Google Chrome','','',1,'2024-08-31 11:41:08');
/*!40000 ALTER TABLE `site_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_add`
--

DROP TABLE IF EXISTS `sms_add`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_add` (
  `id` int NOT NULL AUTO_INCREMENT,
  `total_sms` int NOT NULL,
  `pay` int NOT NULL,
  `total_send` int NOT NULL DEFAULT '0',
  `start` date NOT NULL,
  `end` date NOT NULL,
  `date` datetime NOT NULL,
  `add_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_add`
--

LOCK TABLES `sms_add` WRITE;
/*!40000 ALTER TABLE `sms_add` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_add` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_list`
--

DROP TABLE IF EXISTS `sms_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` text NOT NULL,
  `message` text NOT NULL,
  `len` int NOT NULL,
  `date` datetime NOT NULL,
  `gateway` text NOT NULL,
  `token` text NOT NULL,
  `sender` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_list`
--

LOCK TABLES `sms_list` WRITE;
/*!40000 ALTER TABLE `sms_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_setting`
--

DROP TABLE IF EXISTS `sms_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gateway` text NOT NULL,
  `token` text NOT NULL,
  `date` datetime NOT NULL,
  `add_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_setting`
--

LOCK TABLES `sms_setting` WRITE;
/*!40000 ALTER TABLE `sms_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `father_name` text NOT NULL,
  `mother_name` text NOT NULL,
  `email` text,
  `photo` text NOT NULL,
  `personal_mobile` text,
  `father_mobile` text,
  `mother_mobile` text,
  `nick` text NOT NULL,
  `address` text,
  `birth_day` date DEFAULT NULL,
  `gender` text,
  `religion` text,
  `school` text,
  `ssc_rool` int DEFAULT NULL,
  `ssc_reg` int DEFAULT NULL,
  `ssc_board` text,
  `ssc_result` double DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_attendence`
--

DROP TABLE IF EXISTS `student_attendence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_attendence` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `program_id` int NOT NULL,
  `batch_id` int NOT NULL,
  `status` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_attendence`
--

LOCK TABLES `student_attendence` WRITE;
/*!40000 ALTER TABLE `student_attendence` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_attendence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_id`
--

DROP TABLE IF EXISTS `student_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_id` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_id`
--

LOCK TABLES `student_id` WRITE;
/*!40000 ALTER TABLE `student_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_payment`
--

DROP TABLE IF EXISTS `student_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `program_id` int NOT NULL,
  `type` int NOT NULL,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `total_fee` int NOT NULL,
  `note` text,
  `date` datetime NOT NULL,
  `add_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_payment`
--

LOCK TABLES `student_payment` WRITE;
/*!40000 ALTER TABLE `student_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sub_name` text NOT NULL,
  `sub_code` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'Maths','MTHS'),(2,'Physics','PHY'),(3,'Chemistry','CHE');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `bg_color` text NOT NULL,
  `sidebar_hover` text NOT NULL,
  `sidebar_list` text NOT NULL,
  `sidebar_list_hover` text NOT NULL,
  `font_color` text NOT NULL,
  `date` date NOT NULL,
  `added_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` VALUES (1,'Default','#2E363F','#2A2D35','#394152','#313847','#ffffff','2018-06-13',1),(2,'Red','#CF0A2F','#93021E','#B54B5F','#E33A5A','#ffffff','2018-06-13',3),(3,'Blue','#AB2567','#AB2567','#AB2567','#AB2567','#ffffff','2018-06-13',3),(4,'Green','#088730','#088730','#4CAB41','#1BAB2F','#FFFFFF','2018-06-13',3),(5,'Yello','#AB9803','#AB9803','#A3AB2E','#AB9C37','#000000','2018-06-13',3),(6,'Black','#0F0000','#1C0611','#260817','#2B091A','#FFFFFF','2018-06-13',3),(7,'Orange','#E74C3C','#C0392B','#E67E22','#D35400','#FFFFFF','2018-06-13',3),(9,'Pink','#ED5FE9','#ED3BA1','#ED98D4','#ED72CD','#FFFFFF','2018-06-13',3),(10,'Blue1','#564C9E','#724EED','#907EED','#5867ED','#FFFFFF','2018-06-14',3),(23,'CYAN','#005154','#EDE6EC','#EDE6EC','#EDE6EC','#FFFFFF','2019-01-16',3),(22,'Web Dark','#235A6B','#EDE6EC','#EDE6EC','#EDE6EC','#FFFFFF','2019-01-16',3),(21,'Web','#378BA6','#EDE6EC','#EDE6EC','#EDE6EC','#FFFFFF','2019-01-16',3),(14,'Deep Rose','#C44569','#EDE6EC','#EDE6EC','#EDE6EC','#FFFFFF','2018-06-21',3),(15,'Purple Corallite','#574B90','#EDE6EC','#EDE6EC','#EDE6EC','#FFFFFF','2018-06-21',3),(17,'Red Color','#A32929','#6DEDC2','#EDE6EC','#EDE6EC','#EDE6EC','2018-10-08',3),(19,'Google color','#673AB7','#EDC5D2','#EDEDED','#EDE6EC','#FFFFFF','2018-11-21',3),(20,'Google Red','#DB4437','#EDE6EC','#EDE6EC','#EDE6EC','#FFFFFF','2018-11-21',3),(24,'new theme','#331F77','#EDE6EC','#EDE6EC','#EDE6EC','#FFFFFF','2019-01-21',3),(25,'apply','#ED3B19','#EDE6EC','#EDE6EC','#EDE6EC','#FFFFFF','2019-02-01',3),(26,'dark blue','#001E4C','#EDE6EC','#EDE6EC','#EDE6EC','#FFFFFF','2019-02-08',3),(27,'Copy Theme 1','#2C293E','#EDE6EC','#EDE6EC','#EDE6EC','#EDEDED','2019-04-28',3);
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uname` text NOT NULL,
  `fname` text,
  `photo` text NOT NULL,
  `gender` text NOT NULL,
  `email` text,
  `phone` int DEFAULT NULL,
  `address` text,
  `pass` varchar(100) NOT NULL,
  `permit` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `theme` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','Rohit','user_1.jpg','Male','admin@gmail.com',2147483647,'Bangladesh','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918',1,1,10);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-31 11:31:28
