-- MySQL dump 10.13  Distrib 5.7.44, for Linux (x86_64)
--
-- Host: localhost    Database: timetable
-- ------------------------------------------------------
-- Server version	5.7.44

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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `class_id` int(9) NOT NULL AUTO_INCREMENT,
  `school_id` int(9) NOT NULL,
  `class` varchar(50) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,1,'1'),(2,1,'2'),(3,1,'3'),(4,1,'4'),(5,2,'1'),(6,2,'2'),(7,2,'3'),(8,2,'4'),(9,3,'1'),(10,3,'2'),(11,3,'3'),(12,3,'4'),(13,4,'1'),(14,4,'2'),(15,5,'1'),(16,5,'2'),(17,6,'1'),(18,6,'2');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_room`
--

DROP TABLE IF EXISTS `class_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_room` (
  `room_id` int(9) NOT NULL AUTO_INCREMENT,
  `room` varchar(50) NOT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_room`
--

LOCK TABLES `class_room` WRITE;
/*!40000 ALTER TABLE `class_room` DISABLE KEYS */;
INSERT INTO `class_room` VALUES (1,'ห้อง 211'),(2,'ห้อง 212'),(3,'ห้อง 213'),(4,'ห้อง 214'),(5,'ห้อง 221'),(6,'ห้อง 222'),(7,'ห้อง 223'),(8,'ห้อง 224'),(9,'ห้อง 421'),(10,'ห้อง 422'),(11,'ห้อง 423'),(12,'ห้อง 424'),(13,'ห้อง 425'),(14,'ห้อง 431'),(15,'ห้อง 432'),(16,'ห้อง 433'),(17,'ห้อง 434'),(18,'ห้อง 435'),(19,'ห้อง 441'),(20,'ห้อง 442'),(21,'ห้อง 443'),(22,'ห้อง 444'),(23,'ห้อง 445'),(24,'โรงยิม 1'),(25,'โรงฝึกงานอาชีพ 1'),(26,'ตึกงานอาชีพ 1'),(27,'ตึกงานอาชีพ 2'),(28,'ตึกงานอาชีพ 3'),(29,'ตึกงานอาชีพ 4'),(30,'ตึกงานอาชีพ 5');
/*!40000 ALTER TABLE `class_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_school`
--

DROP TABLE IF EXISTS `class_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_school` (
  `school_id` int(9) NOT NULL AUTO_INCREMENT,
  `type_id` int(9) NOT NULL,
  `highschool` varchar(20) NOT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_school`
--

LOCK TABLES `class_school` WRITE;
/*!40000 ALTER TABLE `class_school` DISABLE KEYS */;
INSERT INTO `class_school` VALUES (1,1,'มัธยมศึกษาปีที่ 1'),(2,1,'มัธยมศึกษาปีที่ 2'),(3,1,'มัธยมศึกษาปีที่ 3'),(4,2,'มัธยมศึกษาปีที่ 4'),(5,2,'มัธยมศึกษาปีที่ 5'),(6,2,'มัธยมศึกษาปีที่ 6');
/*!40000 ALTER TABLE `class_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_type`
--

DROP TABLE IF EXISTS `class_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_type` (
  `type_id` int(9) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_type`
--

LOCK TABLES `class_type` WRITE;
/*!40000 ALTER TABLE `class_type` DISABLE KEYS */;
INSERT INTO `class_type` VALUES (1,'มัธยมต้น'),(2,'มัธยมปลาย');
/*!40000 ALTER TABLE `class_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `science`
--

DROP TABLE IF EXISTS `science`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `science` (
  `science_id` int(9) NOT NULL AUTO_INCREMENT,
  `group_id` int(9) NOT NULL,
  `science` varchar(50) NOT NULL,
  PRIMARY KEY (`science_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `science`
--

LOCK TABLES `science` WRITE;
/*!40000 ALTER TABLE `science` DISABLE KEYS */;
INSERT INTO `science` VALUES (1,2,'คณิตศาตร์'),(2,4,'สังคม'),(3,4,'พระพุทธศาสนา'),(4,3,'วิทยาศาสตร์'),(5,8,'ภาษาอังกฤษ'),(6,1,'ภาษาไทย'),(7,5,'สุขศึกษา '),(8,5,'พละ '),(9,6,'ศิลปะ'),(10,7,'การงานอาชีพ'),(11,9,'เลือกเสรี '),(12,9,'กิจกรรมชมรม'),(13,9,'ลูกเสือ-เนตรนารี'),(14,9,'โฮมรูม');
/*!40000 ALTER TABLE `science` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `science_group`
--

DROP TABLE IF EXISTS `science_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `science_group` (
  `group_id` int(9) NOT NULL AUTO_INCREMENT,
  `group` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `science_group`
--

LOCK TABLES `science_group` WRITE;
/*!40000 ALTER TABLE `science_group` DISABLE KEYS */;
INSERT INTO `science_group` VALUES (1,'กลุ่มสาระภาษาไทย'),(2,'กลุ่มสาระคณิตศาสตร์'),(3,'กลุ่มสาระวิทยาศาสตร์'),(4,'กลุ่มสาระสังคมศึกษาฯ'),(5,'กลุ่มสาระสุขศึกษาและพลศึกษา'),(6,'กลุ่มสาระศิลปะ'),(7,'กลุ่มสาระการงานอาชีพฯ'),(8,'กลุ่มสาระภาษาต่างประเทศ'),(9,'กิจกกรมทั่วไป');
/*!40000 ALTER TABLE `science_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_timetable`
--

DROP TABLE IF EXISTS `table_timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_timetable` (
  `table_id` int(9) NOT NULL AUTO_INCREMENT,
  `class_id` int(9) NOT NULL,
  `science_id` int(9) NOT NULL,
  `room_id` int(9) NOT NULL,
  `teacher_id` int(9) NOT NULL,
  `wday` int(1) NOT NULL,
  `period` int(1) NOT NULL,
  `range` int(1) NOT NULL,
  `term` varchar(1) NOT NULL,
  `year` varchar(4) NOT NULL,
  PRIMARY KEY (`table_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_timetable`
--

LOCK TABLES `table_timetable` WRITE;
/*!40000 ALTER TABLE `table_timetable` DISABLE KEYS */;
INSERT INTO `table_timetable` VALUES (23,1,8,1,32,1,1,1,'1','2011'),(15,2,6,3,1,0,0,2,'1','2011'),(22,1,5,8,51,2,0,1,'1','2011'),(18,1,1,2,12,5,0,1,'1','2011'),(16,3,6,5,8,0,0,2,'1','2011'),(17,1,1,1,13,2,5,3,'1','2011'),(24,1,1,1,11,4,4,2,'1','2011'),(25,1,1,1,11,0,4,3,'1','2011'),(29,1,1,1,11,0,0,2,'1','2011'),(27,5,1,1,11,0,0,3,'1','2012'),(28,1,1,1,11,5,9,1,'1','2011'),(34,1,5,1,49,2,1,3,'1','2012'),(33,5,3,11,26,0,9,1,'1','2012'),(35,1,1,1,11,3,6,2,'1','2012'),(36,5,1,2,11,1,0,4,'1','2012'),(37,1,1,13,13,0,0,4,'1','2012'),(38,1,1,1,11,2,4,2,'1','2013');
/*!40000 ALTER TABLE `table_timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(9) NOT NULL AUTO_INCREMENT,
  `level_id` int(9) NOT NULL DEFAULT '1',
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `sex` varchar(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,4,'admin','admin','Administrator','M'),(3,3,'สุชา','สุชา','สุชา ชื่นเพชร','M'),(10,3,'','','อัจฉราภรณ์  หรั่งวัตร','F'),(11,3,'','','ธิติยา สัญญขันธ์','F'),(12,3,'','','เตือนใจ  อินทร์จันทร์','F'),(13,3,'','','ทิพวรรณ  เกิดดี','F'),(14,3,'','','พล  อินทร์จันทร์','M'),(15,3,'','','ประสิทธิ์  ไม้แก้ว','M'),(16,3,'','','ชิดชม เปลื่องชนะ','F'),(17,3,'','','มาฆรัตน์  เลิศศิริรักษ์','M'),(18,3,'','','พิมลพร  พรนิเวศน์','F'),(19,3,'','','เฉลิม  จำปาวิจิตร','M'),(20,3,'','','ชะบา  สรรพคุณ','F'),(21,3,'','','ประสิทธิ์  มากมูล','M'),(22,3,'','','ธัญ  ดาวงศ์สิงห์','F'),(23,3,'','','อัครพล  สุดสวาท','M'),(24,3,'','','วรางคณา  เปรมปรีดิ์','F'),(25,3,'','','สุมาพร  คล้ายคลึง','F'),(26,3,'','','ธัญนิชา  หอมจริง','F'),(27,3,'','','สรินยา  ศาสตร์สูงเนิน','F'),(28,3,'','','รวีวรรณ  พิงภักดิ์','F'),(29,3,'','','สาวสุจิตรา  หวังเชื้อ','F'),(30,3,'','','จุฑารัตน์  ประหยัดทรัพย์	','F'),(31,3,'','','เอกชัย  ภิรมย์ภู่','M'),(32,3,'','','บุญทวี  สาดสาน','F'),(33,3,'','','วิทยา  ปลื้มใจ','M'),(34,3,'','','ชาญศิลป์  ศาสตร์สูงเนิน','M'),(35,3,'','','เฉลยพงษ์  ชื่นประทุม','M'),(36,3,'','','ชาคริต พันธุ์หริ่่ง','M'),(37,3,'','','พนม   เชื่อมชิต','M'),(38,3,'','','ลาวัลย์   ปลื้มใจ','F'),(39,3,'','','ภานุวัฒน์   เกตสุริวงค์','M'),(40,3,'','','วไลภรณ์  มุลกุณี','F'),(41,3,'','','สุนทร  ทั่งทอง','M'),(42,3,'','','รัชนู  ศันเสนียกุล','F'),(43,3,'','','โกศล  เกิดดี	','M'),(44,3,'','','สุทธิชัย  รีทาศรี','M'),(45,3,'','','พิเชษฐ์  แสงน้อย','M'),(46,3,'','','ทิวาพร  คงคาเพ็ชร','F'),(47,3,'','','วัฒนา  มุลกุณี','M'),(48,3,'','','สุภรณ์  ยาแก้ว','F'),(49,3,'','','วรรณา  หงษ์ทอง','F'),(50,3,'','','ปณิธิ  เรืองอร่าม','F'),(51,3,'','','สุนันทา  นิลมาก','F'),(52,3,'','','สมใจ  กลิ่นอุบล','F'),(53,3,'','','เบญจภา  พงษ์ไพศาลศรี','F');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_level`
--

DROP TABLE IF EXISTS `user_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_level` (
  `level_id` int(9) NOT NULL AUTO_INCREMENT,
  `level` varchar(20) NOT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_level`
--

LOCK TABLES `user_level` WRITE;
/*!40000 ALTER TABLE `user_level` DISABLE KEYS */;
INSERT INTO `user_level` VALUES (1,'ผู้ใช้ทั่วไป'),(2,'นักเรียน'),(3,'ครูอาจารย์'),(4,'เจ้าหน้าที่');
/*!40000 ALTER TABLE `user_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_teacher`
--

DROP TABLE IF EXISTS `user_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_teacher` (
  `teacher_id` int(9) NOT NULL AUTO_INCREMENT,
  `user_id` int(9) NOT NULL,
  `group_id` int(9) NOT NULL,
  `type_id` int(9) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_teacher`
--

LOCK TABLES `user_teacher` WRITE;
/*!40000 ALTER TABLE `user_teacher` DISABLE KEYS */;
INSERT INTO `user_teacher` VALUES (1,3,1,1),(8,10,1,1),(9,11,1,2),(10,12,1,2),(11,13,2,1),(12,14,2,1),(13,15,2,1),(14,16,2,2),(15,17,2,2),(16,18,2,2),(17,19,3,1),(18,20,3,1),(19,21,3,1),(20,22,3,2),(21,23,3,2),(22,24,3,2),(23,25,3,2),(24,26,3,2),(25,27,4,1),(26,28,4,1),(27,29,4,1),(28,30,4,2),(29,31,4,2),(30,32,4,2),(31,33,5,2),(32,34,5,1),(33,35,6,2),(34,36,6,1),(35,37,7,2),(36,38,7,2),(37,39,7,2),(38,40,7,2),(39,41,7,2),(40,42,7,2),(41,43,7,2),(42,44,7,1),(43,45,1,1),(44,46,7,1),(45,47,7,1),(46,48,7,1),(47,49,7,1),(48,50,8,2),(49,51,8,1),(50,52,8,1),(51,53,8,1);
/*!40000 ALTER TABLE `user_teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
