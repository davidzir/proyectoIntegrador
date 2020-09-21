-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: proyectosql
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

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
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `comentariousuario_id` int(11) NOT NULL,
  `texto_comentario` longtext DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comentario_posteo` (`post_id`),
  KEY `comentario a usuario` (`comentariousuario_id`),
  CONSTRAINT `comentario a usuario` FOREIGN KEY (`comentariousuario_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `comentario_posteo` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,1,1,'buena foto','2019-09-20 00:00:00'),(2,2,1,'buena foto','2019-09-19 00:00:00'),(3,3,1,'buena foto','2019-09-18 00:00:00'),(4,4,1,'buena foto','2019-09-17 00:00:00'),(5,5,1,'gran momento','2019-09-16 00:00:00'),(6,6,2,'gran momento','2019-09-15 00:00:00'),(7,7,2,'gran momento','2019-09-14 00:00:00'),(8,8,2,'gran momento','2019-09-13 00:00:00'),(9,9,2,'genial','2019-09-12 00:00:00'),(10,10,2,'genial','2019-09-11 00:00:00'),(11,11,3,'genial','2019-09-10 00:00:00'),(12,12,3,'genial','2019-09-09 00:00:00'),(13,13,3,'grandioso','2019-09-08 00:00:00'),(14,14,3,'grandioso','2019-09-01 00:00:00'),(15,15,3,'grandioso','2019-09-02 00:00:00'),(16,16,4,'grandioso','2019-09-03 00:00:00'),(17,17,4,'faaaaaaa','2019-09-04 00:00:00'),(18,18,4,'faaaaaaa','2019-09-05 00:00:00'),(19,19,4,'faaaaaaa','2019-09-06 00:00:00'),(20,20,4,'faaaaaaa','2019-09-07 00:00:00');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `url_perfil` varchar(3000) DEFAULT NULL,
  `texto_post` longtext DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_foreing` (`usuario_id`),
  CONSTRAINT `usuario_foreing` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,1,'https://www.instagram.com/santino.bona/','que bueno','2018-06-19 00:00:00'),(2,1,'https://www.instagram.com/santino.bona/','que malo','2018-06-18 00:00:00'),(3,1,'https://www.instagram.com/santino.bona/','que bueno','2018-06-17 00:00:00'),(4,1,'https://www.instagram.com/santino.bona/','que bueno','2018-06-16 00:00:00'),(5,1,'https://www.instagram.com/santino.bona/','que bueno','2018-06-15 00:00:00'),(6,2,'https://www.instagram.com/leomessi/','que bueno','2018-06-14 00:00:00'),(7,2,'https://www.instagram.com/leomessi/','que bueno','2018-06-13 00:00:00'),(8,2,'https://www.instagram.com/leomessi/','que bueno','2018-06-12 00:00:00'),(9,2,'https://www.instagram.com/leomessi/','que bueno','2018-06-11 00:00:00'),(10,2,'https://www.instagram.com/leomessi/','que bueno','2018-06-10 00:00:00'),(11,3,'https://www.instagram.com/cristiano/','que bueno','2018-06-09 00:00:00'),(12,3,'https://www.instagram.com/cristiano/','que bueno','2018-06-08 00:00:00'),(13,3,'https://www.instagram.com/cristiano/','que bueno','2018-06-07 00:00:00'),(14,3,'https://www.instagram.com/cristiano/','que bueno','2018-06-06 00:00:00'),(15,3,'https://www.instagram.com/cristiano/','que bueno','2018-06-05 00:00:00'),(16,4,'https://www.instagram.com/iamzlatanibrahimovic/','que bueno','2018-06-04 00:00:00'),(17,4,'https://www.instagram.com/iamzlatanibrahimovic/','que bueno','2018-06-03 00:00:00'),(18,4,'https://www.instagram.com/iamzlatanibrahimovic/','que bueno','2018-06-02 00:00:00'),(19,4,'https://www.instagram.com/iamzlatanibrahimovic/','que bueno','2018-06-01 00:00:00'),(20,4,'https://www.instagram.com/iamzlatanibrahimovic/','que bueno','2018-06-20 00:00:00'),(21,5,'https://www.instagram.com/andresiniesta8/','que bueno','2018-06-21 00:00:00'),(22,5,'https://www.instagram.com/andresiniesta8/','que bueno','2018-06-22 00:00:00'),(23,5,'https://www.instagram.com/andresiniesta8/','que bueno','2018-06-23 00:00:00'),(24,5,'https://www.instagram.com/andresiniesta8/','que bueno','2018-06-24 00:00:00'),(25,5,'https://www.instagram.com/andresiniesta8/','que bueno','2018-06-25 00:00:00');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apelllido` varchar(45) DEFAULT NULL,
  `edad` tinyint(255) unsigned DEFAULT NULL,
  `dni` varchar(255) DEFAULT NULL,
  `mail` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Jeronimo','Kilian',19,'43083899',''),(2,'David','Zir',20,'43083666',''),(3,'Santino','Bonarrigo',12,'43083555',''),(4,'Matias','Rodriguez',15,'43083444',''),(5,'Juan','Lopez',13,'43083333','');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proyectosql'
--

--
-- Dumping routines for database 'proyectosql'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-21 12:04:20
