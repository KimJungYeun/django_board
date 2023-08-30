CREATE DATABASE  IF NOT EXISTS `django_board` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `django_board`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: django_board
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_title` varchar(50) NOT NULL,
  `question_content` varchar(500) NOT NULL,
  `question_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_email` varchar(30) NOT NULL,
  PRIMARY KEY (`question_id`),
  KEY `user_fk_idx` (`user_email`),
  CONSTRAINT `user_fk` FOREIGN KEY (`user_email`) REFERENCES `user` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (6,'sql??','sql....수정1','2023-07-12 15:07:07','jsyang@bbb.bbb'),(8,'Django??','Django는 어떤 어플리케이션인가요??','2023-07-13 03:37:38','jsyang@bbb.bbb'),(10,'sql??','2222','2023-07-13 03:54:22','jsyang@bbb.bbb'),(11,'ddd','ssss','2023-07-13 03:55:24','meda@ccc.ccc'),(12,'dddd??','ssss','2023-07-13 06:51:51','meda@ccc.ccc'),(13,'MODEL??','모델질문 수정content입니다.','2023-07-13 13:18:32','jsyang@bbb.bbb'),(14,'1111','111111','2023-07-15 07:30:52','jsyang@bbb.bbb'),(15,'111','22222','2023-07-15 08:05:55','aaa@aaa.aaa'),(16,'sql??','sss','2023-07-15 08:59:36','aaa@aaa.aaa');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-31 14:34:20
