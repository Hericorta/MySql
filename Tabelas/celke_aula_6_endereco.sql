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
-- Table structure for table `aula_6_endereco`
--

DROP TABLE IF EXISTS `aula_6_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aula_6_endereco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(220) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidade` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario_idx` (`usuario_id`),
  CONSTRAINT `id_usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `aula_6_usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula_6_endereco`
--

LOCK TABLES `aula_6_endereco` WRITE;
/*!40000 ALTER TABLE `aula_6_endereco` DISABLE KEYS */;
INSERT INTO `aula_6_endereco` VALUES (1,'Rua verde','N°13',NULL,'SP',6,'2023-01-09 18:39:45',NULL),(2,'Rua Rosa','N°46','itaquera','SP',7,'2023-01-09 18:40:32',NULL),(3,'Rua amarela','N°7',NULL,'SP',5,'2023-01-09 18:41:29',NULL),(4,'Rua roxa','N°51','barra funda','SP',8,'2023-01-09 18:43:09',NULL);
/*!40000 ALTER TABLE `aula_6_endereco` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-15 17:45:41
