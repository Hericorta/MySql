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
-- Table structure for table `aula__13_usuarios`
--

DROP TABLE IF EXISTS `aula__13_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aula__13_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sits_usuario` int(11) NOT NULL,
  `niveis_acesso` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `13__sits)user_idx` (`sits_usuario`),
  KEY `13__niveis)user_idx` (`niveis_acesso`),
  CONSTRAINT `13__niveis)user` FOREIGN KEY (`niveis_acesso`) REFERENCES `aula__13_niveis_acessos` (`id`),
  CONSTRAINT `13__sits)user` FOREIGN KEY (`sits_usuario`) REFERENCES `aula__13_sits_usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula__13_usuarios`
--

LOCK TABLES `aula__13_usuarios` WRITE;
/*!40000 ALTER TABLE `aula__13_usuarios` DISABLE KEYS */;
INSERT INTO `aula__13_usuarios` VALUES (1,'bianca','bps@.com',1,3,'2023-01-14 12:29:03',NULL),(2,'henrique','hps@.com',3,1,'2023-01-14 12:29:03','2023-01-14 18:56:12'),(3,'rosangela','ros@.com',2,2,'2023-01-14 12:29:03',NULL),(4,'raul','rps@.com',3,1,'2023-01-14 12:29:03',NULL),(13,'bianca','bps@.com',3,3,'2023-01-14 19:04:12',NULL),(14,'henrique','hps@.com',1,1,'2023-01-14 19:04:12',NULL),(15,'raul','rps@.com',2,2,'2023-01-14 19:04:12',NULL),(16,'rosangela','ros@.com',3,2,'2023-01-14 19:04:12',NULL);
/*!40000 ALTER TABLE `aula__13_usuarios` ENABLE KEYS */;
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
