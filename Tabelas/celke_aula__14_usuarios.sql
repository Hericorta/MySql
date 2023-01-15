CREATE DATABASE  IF NOT EXISTS `celke` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `celke`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: celke
-- ------------------------------------------------------
-- Server version	5.7.40

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
-- Table structure for table `aula__14_usuarios`
--

DROP TABLE IF EXISTS `aula__14_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aula__14_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sits_usuario` int(11) NOT NULL,
  `niveis_acesso` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `14__sits)user_idx` (`sits_usuario`),
  KEY `14__niveis)user_idx` (`niveis_acesso`),
  CONSTRAINT `14__niveis)user` FOREIGN KEY (`niveis_acesso`) REFERENCES `aula__14_niveis_acessos` (`id`),
  CONSTRAINT `14__sits)user` FOREIGN KEY (`sits_usuario`) REFERENCES `aula__14_sits_usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula__14_usuarios`
--

LOCK TABLES `aula__14_usuarios` WRITE;
/*!40000 ALTER TABLE `aula__14_usuarios` DISABLE KEYS */;
INSERT INTO `aula__14_usuarios` VALUES (1,'user0','user0@gmail.com',1,2,'2023-01-15 17:39:44',NULL),(2,'user1','user1@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(3,'user2','user2@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(4,'user3','user3@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(5,'user4','user4@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(6,'user5','user5@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(7,'user6','user6@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(8,'user7','user7@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(9,'user8','user8@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(10,'user9','user9@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(11,'user10','user10@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(12,'user11','user11@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(13,'user12','user12@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(14,'user13','user13@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(15,'user14','user14@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(16,'user15','user15@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(17,'user16','user16@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(18,'user17','user17@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(19,'user18','user18@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(20,'user19','user19@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(21,'user20','user20@gmail.com',1,2,'2023-01-15 17:39:45',NULL),(22,'user0','user0@gmail.com',1,2,'2023-01-15 17:40:48',NULL),(23,'user1','user1@gmail.com',1,2,'2023-01-15 17:40:48',NULL),(24,'user2','user2@gmail.com',1,2,'2023-01-15 17:40:48',NULL),(25,'user3','user3@gmail.com',1,2,'2023-01-15 17:40:48',NULL),(26,'user4','user4@gmail.com',1,2,'2023-01-15 17:40:48',NULL),(27,'user5','user5@gmail.com',1,2,'2023-01-15 17:40:48',NULL),(28,'user6','user6@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(29,'user7','user7@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(30,'user8','user8@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(31,'user9','user9@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(32,'user10','user10@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(33,'user11','user11@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(34,'user12','user12@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(35,'user13','user13@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(36,'user14','user14@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(37,'user15','user15@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(38,'user16','user16@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(39,'user17','user17@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(40,'user18','user18@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(41,'user19','user19@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(42,'user20','user20@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(43,'user21','user21@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(44,'user22','user22@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(45,'user23','user23@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(46,'user24','user24@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(47,'user25','user25@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(48,'user26','user26@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(49,'user27','user27@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(50,'user28','user28@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(51,'user29','user29@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(52,'user30','user30@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(53,'user31','user31@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(54,'user32','user32@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(55,'user33','user33@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(56,'user34','user34@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(57,'user35','user35@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(58,'user36','user36@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(59,'user37','user37@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(60,'user38','user38@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(61,'user39','user39@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(62,'user40','user40@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(63,'user41','user41@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(64,'user42','user42@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(65,'user43','user43@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(66,'user44','user44@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(67,'user45','user45@gmail.com',1,2,'2023-01-15 17:40:49',NULL),(68,'user46','user46@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(69,'user47','user47@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(70,'user48','user48@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(71,'user49','user49@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(72,'user50','user50@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(73,'user51','user51@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(74,'user52','user52@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(75,'user53','user53@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(76,'user54','user54@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(77,'user55','user55@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(78,'user56','user56@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(79,'user57','user57@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(80,'user58','user58@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(81,'user59','user59@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(82,'user60','user60@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(83,'user61','user61@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(84,'user62','user62@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(85,'user63','user63@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(86,'user64','user64@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(87,'user65','user65@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(88,'user66','user66@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(89,'user67','user67@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(90,'user68','user68@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(91,'user69','user69@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(92,'user70','user70@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(93,'user71','user71@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(94,'user72','user72@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(95,'user73','user73@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(96,'user74','user74@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(97,'user75','user75@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(98,'user76','user76@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(99,'user77','user77@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(100,'user78','user78@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(101,'user79','user79@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(102,'user80','user80@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(103,'user81','user81@gmail.com',1,2,'2023-01-15 17:40:50',NULL),(104,'user82','user82@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(105,'user83','user83@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(106,'user84','user84@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(107,'user85','user85@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(108,'user86','user86@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(109,'user87','user87@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(110,'user88','user88@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(111,'user89','user89@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(112,'user90','user90@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(113,'user91','user91@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(114,'user92','user92@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(115,'user93','user93@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(116,'user94','user94@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(117,'user95','user95@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(118,'user96','user96@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(119,'user97','user97@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(120,'user98','user98@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(121,'user99','user99@gmail.com',1,2,'2023-01-15 17:40:51',NULL),(122,'user100','user100@gmail.com',1,2,'2023-01-15 17:40:51',NULL);
/*!40000 ALTER TABLE `aula__14_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-15 17:45:42
