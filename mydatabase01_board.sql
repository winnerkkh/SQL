-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydatabase01
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` longtext,
  `writer` varchar(30) DEFAULT NULL,
  `readcount` int(11) DEFAULT '0',
  `regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `favor` int(11) DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'게시글1','게시글내용1','일지매',10,'2017-11-28 18:37:18',10),(2,'게시글2','게시글내용2','이순신',10,'2017-11-28 18:37:22',11),(3,'게시글3','게시글내용3','삼돌이',10,'2017-11-28 18:37:22',12),(4,'게시글4','게시글내용4','홍길동',10,'2017-11-28 18:37:22',13),(5,'게시글5','게시글내용5','김길동',0,'2017-11-28 18:37:22',0),(6,'게시글6','게시글내용6','이길동',10,'2017-11-28 18:37:23',10),(7,'게시글7','게시글내용7','임꺽정',10,'2017-11-28 18:37:23',5),(8,'게시글8','게시글내용8','팔득이',0,'2017-11-28 18:37:23',0),(9,'게시글9','게시글내용9','구봉서',10,'2017-11-28 18:37:23',10),(10,'게시글10','게시글내용10','열하나',10,'2017-11-28 18:37:23',9),(11,'게시글11','게시글내용11','열두리',10,'2017-11-28 18:37:23',5),(12,'게시글12','게시글내용12','열서희',10,'2017-11-28 18:37:23',10),(13,'게시글13','게시글내용13','열세명',10,'2017-11-28 18:37:23',10),(14,'게시글14','게시글내용14','일지매',10,'2017-11-28 18:37:23',3),(15,'게시글15','게시글내용15','이순신',10,'2017-11-28 18:37:23',10),(16,'게시글16','게시글내용16','홍길동',0,'2017-11-28 18:37:23',0);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-30 11:44:43
