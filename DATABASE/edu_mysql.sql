-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: edu
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.13-MariaDB

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
-- Table structure for table `tbl_attach`
--

DROP TABLE IF EXISTS `tbl_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_attach` (
  `file_name` varchar(255) NOT NULL COMMENT '첨부파일명',
  `bno` int(11) NOT NULL COMMENT '부모게시물의 일련번호',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  PRIMARY KEY (`file_name`),
  KEY `fk_tbl_attach_tbl_board_idx` (`bno`),
  CONSTRAINT `fk_tbl_attach_tbl_board` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시물첨부파일';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_attach`
--

LOCK TABLES `tbl_attach` WRITE;
/*!40000 ALTER TABLE `tbl_attach` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board`
--

DROP TABLE IF EXISTS `tbl_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board` (
  `bno` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시물일련번호, AI(Auto Increament)일련번호를 자동증가기능',
  `title` varchar(255) DEFAULT NULL COMMENT '게시물제목',
  `content` text DEFAULT NULL COMMENT '게시물내용',
  `writer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `view_count` int(11) DEFAULT 0 COMMENT '게시글조회수',
  `reply_count` int(11) DEFAULT 0 COMMENT '댓글개수',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일시',
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COMMENT='게시물관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board`
--

LOCK TABLES `tbl_board` WRITE;
/*!40000 ALTER TABLE `tbl_board` DISABLE KEYS */;
INSERT INTO `tbl_board` VALUES (1,'1번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 03:21:06','2020-12-23 03:21:06'),(2,'2번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(3,'3번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(4,'4번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(5,'5번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(6,'6번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(7,'7번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(8,'8번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(9,'9번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(10,'10번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(11,'11번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(12,'12번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(13,'13번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(14,'14번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(15,'15번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(16,'16번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(17,'17번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(18,'18번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(19,'19번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(20,'20번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(21,'21번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(22,'22번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(23,'23번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(24,'24번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(25,'25번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(26,'26번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(27,'27번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(28,'28번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(29,'29번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(30,'30번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(31,'31번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(32,'32번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(33,'33번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(34,'34번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(35,'35번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(36,'36번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(37,'37번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(38,'38번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(39,'39번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(40,'40번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(41,'41번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(42,'42번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(43,'43번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(44,'44번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(45,'45번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(46,'46번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(47,'47번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(48,'48번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(49,'49번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(50,'50번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(51,'51번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(52,'52번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(53,'53번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(54,'54번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(55,'55번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(56,'56번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(57,'57번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(58,'58번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(59,'59번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(60,'60번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(61,'61번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(62,'62번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(63,'63번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(64,'64번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(65,'65번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(66,'66번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(67,'67번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(68,'68번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(69,'69번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(70,'70번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(71,'71번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(72,'72번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(73,'73번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(74,'74번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(75,'75번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(76,'76번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(77,'77번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(78,'78번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(79,'79번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(80,'80번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(81,'81번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(82,'82번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(83,'83번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(84,'84번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(85,'85번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(86,'86번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(87,'87번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(88,'88번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(89,'89번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(90,'90번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(91,'91번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(92,'92번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(93,'93번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(94,'94번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(95,'95번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(96,'96번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(97,'97번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(98,'98번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(99,'99번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(100,'100번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(101,'101번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(102,'102번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(103,'103번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(104,'104번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(105,'105번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(106,'106번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(107,'107번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(108,'108번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(109,'109번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52'),(110,'110번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:51:52','2020-12-23 05:51:52');
/*!40000 ALTER TABLE `tbl_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_member` (
  `user_id` varchar(45) NOT NULL COMMENT '회원아이디',
  `user_pw` varchar(255) DEFAULT NULL COMMENT '회원 로그인 암호',
  `user_name` varchar(255) DEFAULT NULL COMMENT '회원 이름',
  `email` varchar(255) DEFAULT NULL COMMENT '회원 이메일',
  `point` int(11) DEFAULT 0 COMMENT '회원 적립포인트',
  `enabled` int(1) DEFAULT 1 COMMENT '인증값(Authentication),활동 가능한 회원 여부, 0 로그인불가능, 1 로그인가능',
  `levels` varchar(45) DEFAULT 'ROLE_USER' COMMENT '권한값(Authority),2가지 레벨, ROLE_ADMIN(관리자), ROLE_USER(사용자)',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일자,1970부터 초단위로 현재까지 계산한 값',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일자',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='회원관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES ('admin','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:03:08','2020-12-23 03:03:08'),('dummy_1','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_10','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_100','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48'),('dummy_101','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48'),('dummy_102','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48'),('dummy_103','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48'),('dummy_104','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48'),('dummy_105','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48'),('dummy_106','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48'),('dummy_107','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48'),('dummy_108','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48'),('dummy_109','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48'),('dummy_11','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_110','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48'),('dummy_12','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_13','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_14','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_15','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_16','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_17','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_18','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_19','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_2','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_20','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_21','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_22','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_23','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_24','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_25','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_26','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_27','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_28','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_29','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_3','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_30','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_31','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_32','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_33','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_34','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_35','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_36','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_37','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_38','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_39','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_4','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_40','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_41','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_42','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_43','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_44','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_45','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_46','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_47','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_48','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_49','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_5','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_50','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_51','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_52','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_53','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_54','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_55','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_56','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_57','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_58','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_59','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_6','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_60','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_61','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_62','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_63','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_64','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_65','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_66','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_67','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_68','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_69','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_7','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_70','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_71','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_72','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_73','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_74','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_75','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_76','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_77','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_78','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_79','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_8','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_80','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_81','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_82','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_83','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_84','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_85','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_86','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_87','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_88','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_89','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_9','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_90','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_91','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_92','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_93','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:47','2020-12-23 05:51:47'),('dummy_94','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48'),('dummy_95','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48'),('dummy_96','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48'),('dummy_97','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48'),('dummy_98','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48'),('dummy_99','1234','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:48','2020-12-23 05:51:48');
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reply`
--

DROP TABLE IF EXISTS `tbl_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reply` (
  `rno` int(11) NOT NULL AUTO_INCREMENT COMMENT '댓글의 일련번호',
  `bno` int(11) NOT NULL COMMENT '부모게시물의 일련번호',
  `reply_text` varchar(1000) DEFAULT NULL COMMENT '댓글내용',
  `replyer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일시',
  PRIMARY KEY (`rno`),
  KEY `fk_tbl_reply_tbl_board1_idx` (`bno`),
  CONSTRAINT `fk_tbl_reply_tbl_board1` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='댓글관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reply`
--

LOCK TABLES `tbl_reply` WRITE;
/*!40000 ALTER TABLE `tbl_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'edu'
--
/*!50003 DROP PROCEDURE IF EXISTS `dummyBoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyBoard`(IN p_loop int)
BEGIN
	declare cnt int default 2;
    delete from tbl_board where bno > 1;
    while cnt <= p_loop do
    INSERT INTO tbl_board(bno,title,content,writer)
    VALUES
    (cnt, concat(cnt,'번째 게시물 입니다.'), '게시물 내용 입니다.', 'admin');
    set cnt = cnt + 1;
    end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dummyMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyMember`(IN p_loop int)
BEGIN
	declare cnt int default 1;#반복문 변수선언
    delete from tbl_member where user_id like 'dummy%';
    while cnt <= p_loop do
		INSERT INTO tbl_member(user_id,user_pw,user_name,email,point,enabled,levels) 
		VALUES 
		(concat('dummy_',cnt) , '1234', '관리자', 'admin@abc.com', '0', '1', 'ROLE_ADMIN');
        set cnt = cnt + 1;
    end while;
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

-- Dump completed on 2020-12-23 14:52:27