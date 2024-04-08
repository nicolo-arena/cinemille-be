-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: cinemille
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `id` bigint NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Leonardo','DiCaprio'),(2,'Kate','Winslet'),(3,'Billy','Zane'),(4,'Kathy','Bates'),(5,'Frances','Fisher'),(6,'Gloria','Stuart'),(7,'Bill','Paxton'),(8,'Mark','Ruffalo'),(9,'Ben','Kingsley'),(10,'Emily','Mortimer'),(11,'Michelle','Williams'),(12,'Max','Von Sydow'),(13,'Elias','Koteas'),(14,'Jonah','Hill'),(15,'Margot','Robbie'),(16,'Matthew','McConaughey'),(17,'Kyle','Chandler'),(18,'Rob','Reiner'),(19,'Jon','Bernthal');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor_seq`
--

DROP TABLE IF EXISTS `actor_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_seq`
--

LOCK TABLES `actor_seq` WRITE;
/*!40000 ALTER TABLE `actor_seq` DISABLE KEYS */;
INSERT INTO `actor_seq` VALUES (1);
/*!40000 ALTER TABLE `actor_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'USA');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_seq`
--

DROP TABLE IF EXISTS `country_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_seq`
--

LOCK TABLES `country_seq` WRITE;
/*!40000 ALTER TABLE `country_seq` DISABLE KEYS */;
INSERT INTO `country_seq` VALUES (1);
/*!40000 ALTER TABLE `country_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `id` bigint NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'James','Cameron'),(2,'Martin','Scorsese');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director_seq`
--

DROP TABLE IF EXISTS `director_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director_seq`
--

LOCK TABLES `director_seq` WRITE;
/*!40000 ALTER TABLE `director_seq` DISABLE KEYS */;
INSERT INTO `director_seq` VALUES (1);
/*!40000 ALTER TABLE `director_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Drammatico'),(2,'Thriller'),(3,'Noir'),(4,'Giallo'),(5,'Sentimentale'),(6,'Storico'),(7,'Catastrofico'),(8,'Biografico'),(9,'Commedia');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_seq`
--

DROP TABLE IF EXISTS `genre_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_seq`
--

LOCK TABLES `genre_seq` WRITE;
/*!40000 ALTER TABLE `genre_seq` DISABLE KEYS */;
INSERT INTO `genre_seq` VALUES (1);
/*!40000 ALTER TABLE `genre_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `id` bigint NOT NULL,
  `duration` int DEFAULT NULL,
  `released` date DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `year` int DEFAULT NULL,
  `country_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5h5hkyxprvsgpqg69nqsq5p48` (`country_id`),
  CONSTRAINT `FK5h5hkyxprvsgpqg69nqsq5p48` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,195,'1998-02-09','Titanic',1997,1),(2,148,'2010-03-05','Shutter Island',2009,1),(3,179,'2014-01-23','The Wolf of Wall Street',2013,1);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_actors`
--

DROP TABLE IF EXISTS `movie_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_actors` (
  `movie_id` bigint NOT NULL,
  `actors_id` bigint NOT NULL,
  KEY `FKoxmxj61v0a9qs12vboo8rxpno` (`actors_id`),
  KEY `FKbsto8yef4btokhveihmkg8876` (`movie_id`),
  CONSTRAINT `FKbsto8yef4btokhveihmkg8876` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  CONSTRAINT `FKoxmxj61v0a9qs12vboo8rxpno` FOREIGN KEY (`actors_id`) REFERENCES `actor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_actors`
--

LOCK TABLES `movie_actors` WRITE;
/*!40000 ALTER TABLE `movie_actors` DISABLE KEYS */;
INSERT INTO `movie_actors` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(2,1),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(3,1),(3,14),(3,15),(3,16),(3,17),(3,18),(3,19);
/*!40000 ALTER TABLE `movie_actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_directors`
--

DROP TABLE IF EXISTS `movie_directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_directors` (
  `movie_id` bigint NOT NULL,
  `directors_id` bigint NOT NULL,
  KEY `FK1wrjxgmrixfyrw7h0c2bjyi6v` (`directors_id`),
  KEY `FKtoqb71lhitfu7eyqnf2oxctyv` (`movie_id`),
  CONSTRAINT `FK1wrjxgmrixfyrw7h0c2bjyi6v` FOREIGN KEY (`directors_id`) REFERENCES `director` (`id`),
  CONSTRAINT `FKtoqb71lhitfu7eyqnf2oxctyv` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_directors`
--

LOCK TABLES `movie_directors` WRITE;
/*!40000 ALTER TABLE `movie_directors` DISABLE KEYS */;
INSERT INTO `movie_directors` VALUES (1,1),(2,2),(3,2);
/*!40000 ALTER TABLE `movie_directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genres`
--

DROP TABLE IF EXISTS `movie_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_genres` (
  `movie_id` bigint NOT NULL,
  `genres_id` bigint NOT NULL,
  KEY `FKi8gl10taq0yvv0aqnuxeal5x0` (`genres_id`),
  KEY `FKs2xl3sirbon75mjcongwhrbi3` (`movie_id`),
  CONSTRAINT `FKi8gl10taq0yvv0aqnuxeal5x0` FOREIGN KEY (`genres_id`) REFERENCES `genre` (`id`),
  CONSTRAINT `FKs2xl3sirbon75mjcongwhrbi3` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genres`
--

LOCK TABLES `movie_genres` WRITE;
/*!40000 ALTER TABLE `movie_genres` DISABLE KEYS */;
INSERT INTO `movie_genres` VALUES (1,1),(2,2),(2,3),(2,4),(1,5),(1,6),(1,7),(3,1),(3,8),(3,9);
/*!40000 ALTER TABLE `movie_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_schedule`
--

DROP TABLE IF EXISTS `movie_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_schedule` (
  `id` bigint NOT NULL,
  `end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `movie_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKiphejm916oqwk9fodldpacxch` (`movie_id`),
  CONSTRAINT `FKiphejm916oqwk9fodldpacxch` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_schedule`
--

LOCK TABLES `movie_schedule` WRITE;
/*!40000 ALTER TABLE `movie_schedule` DISABLE KEYS */;
INSERT INTO `movie_schedule` VALUES (1,'1998-02-28','1998-02-09',1),(2,'2010-03-25','2010-03-05',2),(3,'2014-02-06','2014-01-23',3),(4,'2013-06-29','2013-06-08',1),(5,'2013-07-21','2013-06-30',2),(7,'2024-04-30','2024-04-11',1),(8,'2024-04-30','2024-04-11',2),(9,'2024-04-30','2024-04-11',3);
/*!40000 ALTER TABLE `movie_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_schedule_seq`
--

DROP TABLE IF EXISTS `movie_schedule_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_schedule_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_schedule_seq`
--

LOCK TABLES `movie_schedule_seq` WRITE;
/*!40000 ALTER TABLE `movie_schedule_seq` DISABLE KEYS */;
INSERT INTO `movie_schedule_seq` VALUES (1);
/*!40000 ALTER TABLE `movie_schedule_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_seq`
--

DROP TABLE IF EXISTS `movie_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_seq`
--

LOCK TABLES `movie_seq` WRITE;
/*!40000 ALTER TABLE `movie_seq` DISABLE KEYS */;
INSERT INTO `movie_seq` VALUES (1);
/*!40000 ALTER TABLE `movie_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_session`
--

DROP TABLE IF EXISTS `movie_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_session` (
  `id` bigint NOT NULL,
  `time` int DEFAULT NULL,
  `room_id` bigint DEFAULT NULL,
  `movie_schedule_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9o5qt0l1xunclew8y7w6vfopy` (`room_id`),
  KEY `FKlrp2xir4bksjxaydkp7pj8aap` (`movie_schedule_id`),
  CONSTRAINT `FK9o5qt0l1xunclew8y7w6vfopy` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`),
  CONSTRAINT `FKlrp2xir4bksjxaydkp7pj8aap` FOREIGN KEY (`movie_schedule_id`) REFERENCES `movie_schedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_session`
--

LOCK TABLES `movie_session` WRITE;
/*!40000 ALTER TABLE `movie_session` DISABLE KEYS */;
INSERT INTO `movie_session` VALUES (1,64800,1,1),(2,77400,1,1),(3,63000,3,2),(4,78300,3,2),(5,63000,2,3),(6,64800,4,3),(7,78000,2,3),(8,64800,1,4),(9,77400,1,4),(10,63000,3,5),(11,78300,3,5),(16,63000,3,7),(17,77400,3,7),(18,63000,2,8),(19,63000,4,8),(20,78300,2,8),(21,77400,1,9),(22,65400,1,9),(23,78000,4,9);
/*!40000 ALTER TABLE `movie_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_session_seq`
--

DROP TABLE IF EXISTS `movie_session_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_session_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_session_seq`
--

LOCK TABLES `movie_session_seq` WRITE;
/*!40000 ALTER TABLE `movie_session_seq` DISABLE KEYS */;
INSERT INTO `movie_session_seq` VALUES (1);
/*!40000 ALTER TABLE `movie_session_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_studios`
--

DROP TABLE IF EXISTS `movie_studios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_studios` (
  `movie_id` bigint NOT NULL,
  `studios_id` bigint NOT NULL,
  KEY `FK7shu6h5cjyxfgmo586s0s5bjn` (`studios_id`),
  KEY `FK7t1tep33a7t7pbqu9wk8hvq19` (`movie_id`),
  CONSTRAINT `FK7shu6h5cjyxfgmo586s0s5bjn` FOREIGN KEY (`studios_id`) REFERENCES `studio` (`id`),
  CONSTRAINT `FK7t1tep33a7t7pbqu9wk8hvq19` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_studios`
--

LOCK TABLES `movie_studios` WRITE;
/*!40000 ALTER TABLE `movie_studios` DISABLE KEYS */;
INSERT INTO `movie_studios` VALUES (1,1),(1,2),(1,3),(2,1),(2,4),(2,5),(2,6),(3,6),(3,7),(3,8),(3,5);
/*!40000 ALTER TABLE `movie_studios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `id` bigint NOT NULL,
  `imax` bit(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `seats` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,_binary '','Sala 1',120),(2,_binary '\0','Sala 2',150),(3,_binary '\0','Sala 3',100),(4,_binary '','Sala 4',50);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_seq`
--

DROP TABLE IF EXISTS `room_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_seq`
--

LOCK TABLES `room_seq` WRITE;
/*!40000 ALTER TABLE `room_seq` DISABLE KEYS */;
INSERT INTO `room_seq` VALUES (1);
/*!40000 ALTER TABLE `room_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studio`
--

DROP TABLE IF EXISTS `studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studio` (
  `id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studio`
--

LOCK TABLES `studio` WRITE;
/*!40000 ALTER TABLE `studio` DISABLE KEYS */;
INSERT INTO `studio` VALUES (1,'20th Century Fox'),(2,'Paramount Pictures'),(3,'Lightstorm Entertainment'),(4,'Phoenix Pictures'),(5,'Sikelia Productions'),(6,'Appian Way Productions'),(7,'EMJAG Productions'),(8,'Red Granite Pictures');
/*!40000 ALTER TABLE `studio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studio_seq`
--

DROP TABLE IF EXISTS `studio_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studio_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studio_seq`
--

LOCK TABLES `studio_seq` WRITE;
/*!40000 ALTER TABLE `studio_seq` DISABLE KEYS */;
INSERT INTO `studio_seq` VALUES (1);
/*!40000 ALTER TABLE `studio_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-07 22:44:35
