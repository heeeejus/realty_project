-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: whereismyhome
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
-- Table structure for table `customs`
--

DROP TABLE IF EXISTS `customs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `is_tmp` varchar(255) DEFAULT NULL,
  `star` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `view` int DEFAULT NULL,
  `users_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe4avmros77repcc78g9qslgua` (`users_id`),
  CONSTRAINT `FKe4avmros77repcc78g9qslgua` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customs`
--

LOCK TABLES `customs` WRITE;
/*!40000 ALTER TABLE `customs` DISABLE KEYS */;
INSERT INTO `customs` VALUES (1,'2023-11-24','CustomJpaEntity',0,'서울 마포 부동산 매물 정보',5,1),(2,'2023-11-24','CustomJpaEntity',0,'김용준의 시크릿 매물',2,2),(3,'2023-11-24','CustomJpaEntity',0,'부산에 가면',2,3),(4,'2023-11-24','CustomJpaEntity',0,'성재형의 매물정보',2,4),(6,'2023-11-24','CustomJpaEntity',0,'미래님 퍼가요',3,4),(7,'2023-11-24','tmp',NULL,NULL,NULL,4),(8,'2023-11-24','CustomJpaEntity',0,'제주도 한림은 시내입니다.',2,4),(9,'2023-11-24','CustomJpaEntity',0,'스껄~~~sqld',5,5),(10,'2023-11-24','CustomJpaEntity',0,'내맘속에저장',5,5),(11,'2023-11-24','CustomJpaEntity',0,'고양시능곡',4,5),(12,'2023-11-24','CustomJpaEntity',0,'곰같은집',2,6),(13,'2023-11-24','CustomJpaEntity',0,'너 이거 어때',3,7),(14,'2023-11-24','CustomJpaEntity',0,'목이 아파요',2,8),(15,'2023-11-24','CustomJpaEntity',0,'mysql',3,9),(16,'2023-11-24','CustomJpaEntity',0,'라식할거야?',2,10),(17,'2023-11-24','CustomJpaEntity',0,'서울의 봄',1,11),(18,'2023-11-24','tmp',NULL,NULL,NULL,11),(19,'2023-11-24','CustomJpaEntity',0,'그만 늦어',3,11),(20,'2023-11-24','CustomJpaEntity',0,'한옥마을',3,12),(21,'2023-11-24','tmp',NULL,NULL,NULL,13),(22,'2023-11-24','CustomJpaEntity',0,'kt 입사 ㄱㅈㅇ',2,13),(23,'2023-11-24','CustomJpaEntity',0,'내기준 프론트 1짱',4,14),(24,'2023-11-24','CustomJpaEntity',0,'월평역 근처 매물',2,15),(25,'2023-11-24','CustomJpaEntity',0,'박하사탕',1,16),(26,'2023-11-24','CustomJpaEntity',0,'내 마니또',2,17),(27,'2023-11-24','CustomJpaEntity',0,'러닝',2,18),(28,'2023-11-24','tmp',NULL,NULL,NULL,19),(29,'2023-11-24','CustomJpaEntity',0,'dsf',1,19),(30,'2023-11-24','CustomJpaEntity',0,'도원어린이공원',2,20),(31,'2023-11-24','CustomJpaEntity',0,'감귤펀치',2,21),(32,'2023-11-24','CustomJpaEntity',0,'연우',4,22),(33,'2023-11-24','CustomJpaEntity',0,'건준맘',1,23),(34,'2023-11-24','CustomJpaEntity',0,'천안호두펀치',3,24),(35,'2023-11-24','tmp',NULL,NULL,NULL,25),(36,'2023-11-24','CustomJpaEntity',0,'서울의 봄',1,25),(37,'2023-11-24','CustomJpaEntity',0,'영화 픽업 ㄳㄳ',3,26),(38,'2023-11-24','CustomJpaEntity',0,'영화보러가실분?',3,12),(40,'2023-11-24','CustomJpaEntity',0,'유성온천역 근처 매물 정보',2,1),(41,'2023-11-24','CustomJpaEntity',0,'라식 ㄱㄱ',2,10),(42,'2023-11-24','CustomJpaEntity',0,'포기해',2,13),(43,'2023-11-24','CustomJpaEntity',0,'나의 새로운 매물',1,1),(44,'2023-11-24','CustomJpaEntity',0,'이영지 노윤아 디스전',1,17),(45,'2023-11-24','tmp',NULL,NULL,NULL,1),(46,'2023-11-24','CustomJpaEntity',0,'퍼가기 다시 저장~',1,1);
/*!40000 ALTER TABLE `customs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customs_users_who_starred`
--

DROP TABLE IF EXISTS `customs_users_who_starred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customs_users_who_starred` (
  `custom_deal_jpa_entity_id` bigint NOT NULL,
  `users_who_starred_id` bigint NOT NULL,
  PRIMARY KEY (`custom_deal_jpa_entity_id`,`users_who_starred_id`),
  UNIQUE KEY `UK_a3d87kv2as8ufj9stjbgdjpxy` (`users_who_starred_id`),
  CONSTRAINT `FKeoak1red9oreibr02der8r6wp` FOREIGN KEY (`users_who_starred_id`) REFERENCES `user_star_custom_jpa_entity` (`id`),
  CONSTRAINT `FKfsiv027qip326qxkm77o2qcwq` FOREIGN KEY (`custom_deal_jpa_entity_id`) REFERENCES `customs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customs_users_who_starred`
--

LOCK TABLES `customs_users_who_starred` WRITE;
/*!40000 ALTER TABLE `customs_users_who_starred` DISABLE KEYS */;
/*!40000 ALTER TABLE `customs_users_who_starred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filters` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `area_lower` double DEFAULT NULL,
  `area_upper` double DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `date_lower` date DEFAULT NULL,
  `date_upper` date DEFAULT NULL,
  `deal_amount_lower` bigint DEFAULT NULL,
  `deal_amount_upper` bigint DEFAULT NULL,
  `markers_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoe4w2cp5n3jlip5ydjy7e2lil` (`markers_id`),
  CONSTRAINT `FKoe4w2cp5n3jlip5ydjy7e2lil` FOREIGN KEY (`markers_id`) REFERENCES `markers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters`
--

LOCK TABLES `filters` WRITE;
/*!40000 ALTER TABLE `filters` DISABLE KEYS */;
INSERT INTO `filters` VALUES (1,0,9999999,'2023-11-24','2016-11-01','2999-12-31',0,999999999999,1),(2,0,9999999,'2023-11-24','2016-11-01','2999-12-31',0,999999999999,2),(3,0,9999999,'2023-11-24','2016-11-01','2999-12-31',0,999999999999,3),(4,0,9999999,'2023-11-24','2016-11-01','2999-12-31',0,999999999999,4),(6,0,9999999,'2023-11-24','2016-11-01','2999-12-31',0,999999999999,6),(7,0,9999999,'2023-11-24','2016-11-01','2999-12-31',0,999999999999,7),(8,0,9999999,'2023-11-24','2016-11-01','2999-12-31',0,999999999999,8),(9,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,9),(10,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,10),(11,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,11),(12,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,12),(13,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,13),(14,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,14),(15,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,15),(16,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,16),(17,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,17),(18,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,18),(19,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,19),(20,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,20),(21,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,21),(22,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,22),(23,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,23),(24,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,24),(25,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,25),(26,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,26),(27,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,27),(28,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,28),(29,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,29),(30,0,15.61928004881025,'2023-11-24','2017-01-04','2999-12-31',0,999999999999,30),(31,0,15.61928004881025,'2023-11-24','2017-01-04','2999-12-31',0,999999999999,31),(32,0,15.61928004881025,'2023-11-24','2014-11-05','2999-12-31',0,999999999999,32),(33,0,15.61928004881025,'2023-11-24','2014-11-05','2999-12-31',0,999999999999,33),(34,0,15.61928004881025,'2023-11-24','2014-11-05','2999-12-31',0,999999999999,34),(35,0,15.61928004881025,'2023-11-24','2014-11-05','2999-12-31',0,999999999999,35),(36,0,15.61928004881025,'2023-11-24','2014-11-05','2999-12-31',0,999999999999,36),(37,0,15.61928004881025,'2023-11-24','2014-11-05','2999-12-31',0,999999999999,37),(38,0,15.61928004881025,'2023-11-24','2020-11-04','2999-12-31',0,999999999999,38),(40,0,9999999,'2023-11-24','2016-11-01','2999-12-31',0,999999999999,40),(41,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,41),(42,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,42),(43,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,43),(44,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,44),(45,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,45),(46,0,9999999,'2023-11-24','1900-01-01','2999-12-31',0,999999999999,46);
/*!40000 ALTER TABLE `filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `markers`
--

DROP TABLE IF EXISTS `markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `markers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `customs_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrmelu1urwa00n3ia8yaqjtxbb` (`customs_id`),
  CONSTRAINT `FKrmelu1urwa00n3ia8yaqjtxbb` FOREIGN KEY (`customs_id`) REFERENCES `customs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markers`
--

LOCK TABLES `markers` WRITE;
/*!40000 ALTER TABLE `markers` DISABLE KEYS */;
INSERT INTO `markers` VALUES (1,'서울특별시 마포구 도화동','2023-11-24',37.54002113097302,126.95307668024115,1),(2,'서울특별시 마포구 염리동','2023-11-24',37.550299642745756,126.94854361480344,2),(3,'부산광역시 해운대구 우동','2023-11-24',35.16226395351055,129.1565628227233,3),(4,'전라남도 목포시 산정동','2023-11-24',34.80569197721268,126.37435577637744,4),(6,'전라남도 목포시 용당동','2023-11-24',34.802635606113924,126.39381965020311,6),(7,'서울특별시 마포구 도화동','2023-11-24',37.54002113097302,126.95307668024115,7),(8,'제주특별자치도 제주시 한림읍 한림리','2023-11-24',33.41216845955697,126.26703944571024,8),(9,'서울특별시 마포구 신공덕동','2023-11-24',37.544960032193885,126.956807782109,9),(10,'서울특별시 용산구 원효로2가','2023-11-24',37.536060843508416,126.96492534354323,10),(11,'경기도 고양시 덕양구 토당동','2023-11-24',37.622859368509005,126.8217837669186,11),(12,'서울특별시 마포구 공덕동','2023-11-24',37.55108765588916,126.95914679818642,12),(13,'서울특별시 용산구 도원동','2023-11-24',37.539256539412456,126.95635847673272,13),(14,'경기도 광명시 소하동','2023-11-24',37.437146545396786,126.88002195652022,14),(15,'서울특별시 중구 신당동','2023-11-24',37.56244579242676,127.0188111714868,15),(16,'서울특별시 용산구 효창동','2023-11-24',37.540600867375616,126.9616531556668,16),(17,'광주광역시 남구 백운동','2023-11-24',35.14075068773871,126.90682703909626,17),(18,'서울특별시 용산구 도원동','2023-11-24',37.539256539412456,126.95635847673272,18),(19,'서울특별시 용산구 용문동','2023-11-24',37.53751089539249,126.96309169528335,19),(20,'전라북도 전주시 완산구 중노송동','2023-11-24',35.82456540917356,127.15515200332067,20),(21,'서울특별시 용산구 효창동','2023-11-24',37.540600867375616,126.9616531556668,21),(22,'전라북도 전주시 완산구 중노송동','2023-11-24',35.82456540917356,127.15515200332067,22),(23,'서울특별시 용산구 한강로1가','2023-11-24',37.53357585107349,126.97149995855273,23),(24,'대전광역시 서구 둔산동','2023-11-24',36.356425760936965,127.37565003819466,24),(25,'서울특별시 용산구 한강로1가','2023-11-24',37.53333275335546,126.97222414661076,25),(26,'서울특별시 용산구 한강로2가','2023-11-24',37.53304412544232,126.97094577737032,26),(27,'서울특별시 용산구 한강로2가','2023-11-24',37.533944954516315,126.97025526869533,27),(28,'대전광역시 서구 둔산동','2023-11-24',36.356425760936965,127.37565003819466,28),(29,'서울특별시 용산구 한강로2가','2023-11-24',37.53313433600897,126.97139830089533,29),(30,'서울특별시 용산구 도원동','2023-11-24',37.53887782409882,126.95556665933724,30),(31,'서울특별시 서초구 잠원동','2023-11-24',37.510459392432836,127.00627734968214,31),(32,'서울특별시 관악구 신림동','2023-11-24',37.48185891909681,126.93004837540164,32),(33,'서울특별시 용산구 한강로2가','2023-11-24',37.53388208682544,126.97106990713205,33),(34,'충청남도 천안시 동남구 안서동','2023-11-24',36.83174354117636,127.17617361084388,34),(35,'서울특별시 관악구 신림동','2023-11-24',37.48185891909681,126.93004837540164,35),(36,'서울특별시 용산구 한강로2가','2023-11-24',37.533936077245514,126.97078703417378,36),(37,'서울특별시 용산구 효창동','2023-11-24',37.54219548136626,126.96117709503353,37),(38,'서울특별시 서대문구 대현동','2023-11-24',37.55856812581069,126.94273189457901,38),(40,'대전광역시 유성구 봉명동','2023-11-24',36.35542655109149,127.34228884022663,40),(41,'서울특별시 마포구 도화동','2023-11-24',37.53915606750223,126.95281698027807,41),(42,'서울특별시 마포구 도화동','2023-11-24',37.53878641643453,126.95221752793569,42),(43,'서울특별시 마포구 도화동','2023-11-24',37.539390390640065,126.9529752413322,43),(44,'서울특별시 마포구 도화동','2023-11-24',37.53929061127319,126.95132332969355,44),(45,'전라북도 전주시 완산구 중노송동','2023-11-24',35.82456540917356,127.15515200332067,45),(46,'전라북도 전주시 완산구 중노송동','2023-11-24',35.82456540917356,127.15515200332067,46);
/*!40000 ALTER TABLE `markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportations`
--

DROP TABLE IF EXISTS `transportations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transportations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `time` int DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `filters_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6j02e5janxln12dsj2bmpvvp9` (`filters_id`),
  CONSTRAINT `FK6j02e5janxln12dsj2bmpvvp9` FOREIGN KEY (`filters_id`) REFERENCES `filters` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportations`
--

LOCK TABLES `transportations` WRITE;
/*!40000 ALTER TABLE `transportations` DISABLE KEYS */;
INSERT INTO `transportations` VALUES (1,'2023-11-24',5,'WALK',1),(2,'2023-11-24',15,'WALK',1),(3,'2023-11-24',5,'WALK',2),(4,'2023-11-24',15,'WALK',2),(5,'2023-11-24',5,'BICYCLE',2),(6,'2023-11-24',10,'BICYCLE',2),(7,'2023-11-24',10,'WALK',2),(8,'2023-11-24',15,'BICYCLE',2),(9,'2023-11-24',5,'WALK',3),(10,'2023-11-24',15,'WALK',3),(11,'2023-11-24',10,'WALK',3),(12,'2023-11-24',15,'BICYCLE',4),(14,'2023-11-24',15,'BICYCLE',6),(15,'2023-11-24',15,'BICYCLE',7),(16,'2023-11-24',5,'WALK',8),(17,'2023-11-24',15,'BICYCLE',8),(18,'2023-11-24',5,'WALK',9),(19,'2023-11-24',10,'WALK',9),(20,'2023-11-24',5,'WALK',10),(21,'2023-11-24',10,'WALK',10),(22,'2023-11-24',5,'WALK',11),(23,'2023-11-24',5,'BICYCLE',11),(24,'2023-11-24',5,'WALK',12),(25,'2023-11-24',15,'WALK',12),(26,'2023-11-24',5,'WALK',13),(27,'2023-11-24',15,'WALK',13),(28,'2023-11-24',5,'WALK',14),(29,'2023-11-24',5,'BICYCLE',14),(30,'2023-11-24',10,'BICYCLE',14),(31,'2023-11-24',15,'WALK',15),(32,'2023-11-24',5,'BICYCLE',15),(33,'2023-11-24',5,'WALK',16),(34,'2023-11-24',10,'BICYCLE',16),(35,'2023-11-24',5,'WALK',17),(36,'2023-11-24',15,'WALK',17),(37,'2023-11-24',5,'BICYCLE',17),(38,'2023-11-24',5,'WALK',18),(39,'2023-11-24',15,'WALK',18),(40,'2023-11-24',5,'BICYCLE',18),(41,'2023-11-24',5,'WALK',19),(42,'2023-11-24',15,'WALK',19),(43,'2023-11-24',5,'BICYCLE',19),(44,'2023-11-24',5,'WALK',20),(45,'2023-11-24',15,'BICYCLE',20),(46,'2023-11-24',5,'WALK',21),(47,'2023-11-24',15,'BICYCLE',21),(48,'2023-11-24',5,'WALK',22),(49,'2023-11-24',15,'BICYCLE',22),(50,'2023-11-24',5,'WALK',23),(51,'2023-11-24',15,'BICYCLE',23),(52,'2023-11-24',5,'WALK',24),(53,'2023-11-24',15,'BICYCLE',24),(54,'2023-11-24',5,'WALK',25),(55,'2023-11-24',15,'BICYCLE',25),(56,'2023-11-24',5,'WALK',26),(57,'2023-11-24',15,'BICYCLE',26),(58,'2023-11-24',5,'WALK',27),(59,'2023-11-24',15,'BICYCLE',27),(60,'2023-11-24',5,'WALK',28),(61,'2023-11-24',15,'BICYCLE',28),(62,'2023-11-24',5,'WALK',29),(63,'2023-11-24',15,'BICYCLE',29),(64,'2023-11-24',5,'WALK',30),(65,'2023-11-24',5,'BICYCLE',30),(66,'2023-11-24',5,'WALK',31),(67,'2023-11-24',5,'BICYCLE',31),(68,'2023-11-24',5,'WALK',32),(69,'2023-11-24',15,'BICYCLE',32),(70,'2023-11-24',5,'WALK',33),(71,'2023-11-24',15,'BICYCLE',33),(72,'2023-11-24',5,'WALK',34),(73,'2023-11-24',15,'BICYCLE',34),(74,'2023-11-24',5,'WALK',35),(75,'2023-11-24',15,'BICYCLE',35),(76,'2023-11-24',5,'WALK',36),(77,'2023-11-24',15,'BICYCLE',36),(78,'2023-11-24',5,'WALK',37),(79,'2023-11-24',15,'BICYCLE',37),(80,'2023-11-24',5,'WALK',38),(81,'2023-11-24',15,'WALK',38),(84,'2023-11-24',10,'WALK',40),(85,'2023-11-24',10,'BICYCLE',40),(86,'2023-11-24',5,'WALK',41),(87,'2023-11-24',10,'BICYCLE',41),(88,'2023-11-24',5,'BICYCLE',42),(89,'2023-11-24',15,'WALK',42),(90,'2023-11-24',15,'WALK',43),(91,'2023-11-24',5,'BICYCLE',43),(92,'2023-11-24',15,'WALK',44),(93,'2023-11-24',5,'BICYCLE',44),(94,'2023-11-24',5,'WALK',45),(95,'2023-11-24',15,'BICYCLE',45),(96,'2023-11-24',5,'WALK',46),(97,'2023-11-24',15,'BICYCLE',46);
/*!40000 ALTER TABLE `transportations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_star_custom_jpa_entity`
--

DROP TABLE IF EXISTS `user_star_custom_jpa_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_star_custom_jpa_entity` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customs_id` bigint DEFAULT NULL,
  `users_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsx5jqeny1wxw0ytknticcmdxa` (`customs_id`),
  KEY `FKo898h5mtjg6f9sbwf91eu2ug1` (`users_id`),
  CONSTRAINT `FKo898h5mtjg6f9sbwf91eu2ug1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKsx5jqeny1wxw0ytknticcmdxa` FOREIGN KEY (`customs_id`) REFERENCES `customs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_star_custom_jpa_entity`
--

LOCK TABLES `user_star_custom_jpa_entity` WRITE;
/*!40000 ALTER TABLE `user_star_custom_jpa_entity` DISABLE KEYS */;
INSERT INTO `user_star_custom_jpa_entity` VALUES (1,1,2),(2,1,3),(3,2,3),(4,2,4),(5,1,4),(6,11,7),(7,6,7),(11,1,8),(12,14,8),(13,11,8),(14,12,9),(15,10,9),(16,9,9),(17,13,10),(18,10,10),(19,13,11),(20,14,12),(21,13,12),(22,20,12),(23,16,13),(24,17,14),(25,15,14),(26,24,15),(28,20,15),(30,15,15),(31,22,15),(32,19,17),(33,23,18),(34,24,19),(35,30,20),(36,31,22),(37,32,25),(38,36,18),(39,33,18),(40,31,18),(41,30,18),(42,34,18),(43,27,18),(44,32,18),(47,9,1),(48,32,1),(49,10,1),(50,1,1),(51,44,1);
/*!40000 ALTER TABLE `user_star_custom_jpa_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(10) NOT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'강성범','qkfka9045@gmail.com','$2a$10$AN.kCpEJkPEjK4lFZcKL5O5XluIzfL1ls8aQhnGyj/qxb2sSjQ.ZK','USER','2023-11-24'),(2,'김용준','qwe@gmail.com','$2a$10$o5x2r7KgWR00p6bjeMA5heKdbK7kUc9HlbapPkF/qGzenWtr4nOvm','USER','2023-11-24'),(3,'곽미래','asd@gmail.com','$2a$10$lWkSAuLzehRpYoMag4ilL.qir/J9QPrHyrmtUdwYYNukQNxAAS1cK','USER','2023-11-24'),(4,'김성재','zxc@gmail.com','$2a$10$mPa66V3EAHnTPC.zW3mKveILi2eFg/4lyH0tLDj5MHWCEOGukLAq.','USER','2023-11-24'),(5,'안성재','rty@gmail.com','$2a$10$JIQsLYFTbRjRIdObh4YPV.Buk8uMBb7Tz3NG3iz8LsiXKRRAj65TO','USER','2023-11-24'),(6,'김희중','fgh@gmail.com','$2a$10$M0mAjMHnZAu/NWUAcGVZSeXzMYYgd9ILMl2UcAAW7num/sYWLr.jC','USER','2023-11-24'),(7,'김재형','vbn@gmail.com','$2a$10$KAWPSWHF9SBC9JaqA0D8lOsTx5CSzkhE6.GBHI58sI9WcIh/SqGEO','USER','2023-11-24'),(8,'백성욱','uio@gmail.com','$2a$10$qSmNz4gfOmCkSE3UuZITsu8ipgI53bm8HPDT4X.itHMBjXuyrsgxq','USER','2023-11-24'),(9,'이현영','jkl@gmail.com','$2a$10$qTNAb.4/wH3L.kA65E/2ouwQ7zO0aNJPTy/XZzjwb0M2THU8/PL0m','USER','2023-11-24'),(10,'신예지','a@gmail.com','$2a$10$DT1GeJClU8XljJbq8F2WOucgfAefytE24CgPh5akiETnyHjw0zksa','USER','2023-11-24'),(11,'김성현','b@gmail.com','$2a$10$y7Ks9UOVvSOmDqaZk5tQL.0kXaP8X1qIB.sfC6xsLpLaOppjlOoRe','USER','2023-11-24'),(12,'김수혁','c@gmail.com','$2a$10$PTj3sLnK97Or4fo306NzVutLETULCJBfS2ld9Ft79pAkN4y28sXJm','USER','2023-11-24'),(13,'김희수','d@gmail.com','$2a$10$UPXfCy3vfYr9OBjbm7z81Oh9tAAwYFTgw7DsArU4nLDTCZUj5zJ..','USER','2023-11-24'),(14,'김희주','e@gmail.com','$2a$10$uplSmL7u/8LM9ZnSY50bUOktx5HZNQIcmbremOZjtR1UOkcBkOD5O','USER','2023-11-24'),(15,'류진호','f@gmail.com','$2a$10$zZ6nYKNWOH/lJoeLWkAetuluSuGRKAYVsW./nt/grFuiwpUKYkGm.','USER','2023-11-24'),(16,'박하윤','g@gmail.com','$2a$10$K5MJtInHsUKHM3SKgTySeer9jhr87fD4CW0Wteb1wadSnAYB/C5LC','USER','2023-11-24'),(17,'우지민','h@gmail.com','$2a$10$0BENhjFqq.v/lNX85I6WeearRtjGxRRQr2anxi/P9JRzliuF1NvVK','USER','2023-11-24'),(18,'우찬명','i@gmail.com','$2a$10$HBBzhnJbDOE5uS0K9GkCV.a8jb1c5VdcBn.iRJRUAjfGv6TC2Rtgm','USER','2023-11-24'),(19,'윤정인','j@gmail.com','$2a$10$DJmfdxW.Ipk/I5OPAzR1yOz6YlVm36rpAaKXl0anz6jas.Aysdcga','USER','2023-11-24'),(20,'이민우','k@gmail.com','$2a$10$mJS.Nq7SSXTjWEOxmqZWcONtmIGbVEzfoFWn9YelHehi4WqEA68ee','USER','2023-11-24'),(21,'이주혁','l@gmail.com','$2a$10$ELUW6aMQFT.VKfUsLDvHc.f64sVMOqRc9LyNSJnQ6/LOqXrP6qUUS','USER','2023-11-24'),(22,'정연우','m@gmail.com','$2a$10$.SIMus2koetD4gpee93vju6Hg0Jpn34RJFs69gmut13TlIhr6M3d.','USER','2023-11-24'),(23,'정건준','n@gmail.com','$2a$10$A40IpUzMkhIb3t1N5qB4heb.CcfwUFzY5rZXcCXA7GWNzMmeEB2tO','USER','2023-11-24'),(24,'조은영','o@gmail.com','$2a$10$8Si.gv95Etex7JRGfLuLkurdJULJ/l5Gw44yGvdZYUGXjdzeE.MOq','USER','2023-11-24'),(25,'최서연','p@gmail.com','$2a$10$Fpx9WAxj9rIoGtdDp3qFlOK8EMTmlAWWzN7eC7f0Lc9GKLwCrGn6W','USER','2023-11-24'),(26,'최진학','q@gmail.com','$2a$10$gEAQhR1bY0/5K8mt/coFDOaztUJqWRyg3ud0h4SYWX.6nzG0t4q.y','USER','2023-11-24'),(28,'강성범','zhfldk35@naver.com','$2a$10$3oJCXSUHbWzlArZwb/zoa.dkGYLhSSMPpsGbmWlJMa8qxhhCQc9MC','USER','2023-11-24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-24 13:41:06
