-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: casa_discografica
-- ------------------------------------------------------
-- Server version	5.7.34-log

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
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autore` bit(1) DEFAULT NULL,
  `cantante` bit(1) DEFAULT NULL,
  `id_persona` int(11) DEFAULT NULL,
  `nomed_arte` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmtai0q318df7tk41ijs61qbjv` (`id_persona`),
  CONSTRAINT `FKmtai0q318df7tk41ijs61qbjv` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,_binary '',_binary '',1,''),(2,_binary '',_binary '',1,''),(3,_binary '',_binary '',2,'Faber');
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contiene`
--

DROP TABLE IF EXISTS `contiene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contiene` (
  `id_disco` int(11) NOT NULL,
  `id_esecuzione` int(11) NOT NULL,
  PRIMARY KEY (`id_disco`,`id_esecuzione`),
  KEY `FKoweqppl4x2f7c1wlngvanouxk` (`id_esecuzione`),
  CONSTRAINT `FKoweqppl4x2f7c1wlngvanouxk` FOREIGN KEY (`id_esecuzione`) REFERENCES `esecuzione` (`id`),
  CONSTRAINT `FKqllqwsu19exd1igimhmtbob82` FOREIGN KEY (`id_disco`) REFERENCES `disco` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contiene`
--

LOCK TABLES `contiene` WRITE;
/*!40000 ALTER TABLE `contiene` DISABLE KEYS */;
/*!40000 ALTER TABLE `contiene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disco`
--

DROP TABLE IF EXISTS `disco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anno_uscita_album` date DEFAULT NULL,
  `numero_serie` varchar(255) DEFAULT NULL,
  `prezzo` double DEFAULT NULL,
  `titolo_disco` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disco`
--

LOCK TABLES `disco` WRITE;
/*!40000 ALTER TABLE `disco` DISABLE KEYS */;
/*!40000 ALTER TABLE `disco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `esecuzione`
--

DROP TABLE IF EXISTS `esecuzione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esecuzione` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anno_di_registrazione` date DEFAULT NULL,
  `titolo` varchar(255) DEFAULT NULL,
  `id_artista` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgf6goatdlg6qy0ccjev3lgcrv` (`id_artista`),
  CONSTRAINT `FKgf6goatdlg6qy0ccjev3lgcrv` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esecuzione`
--

LOCK TABLES `esecuzione` WRITE;
/*!40000 ALTER TABLE `esecuzione` DISABLE KEYS */;
/*!40000 ALTER TABLE `esecuzione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cognome` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Winehouse','Amy'),(2,'De Andrè','Fabrizio'),(3,'Battisti','Lucio'),(4,'Biondi','Mario'),(5,'Cherubini','Lorenzo'),(6,'Gaetano','Salvatore Antonio'),(7,'Dalla','Lucio'),(8,'Del Rey','Lana'),(9,'Rapetti','Giulio'),(10,'Malgioglio','Cristiano'),(11,'Guccini','Francesco'),(12,'Tenco','Luigi'),(13,'Eilish','Billie'),(14,'Di Martino','Antonio'),(15,'Urciullo','Lorenzo'),(16,'Lucia','Federico'),(17,'Michielin','Francesca'),(18,'Rettore','Donatella'),(19,'Battiato','Franco'),(20,'De Gregori','Francesco'),(21,'Gaberscik','Giorgio'),(22,'Zimmerman','Robert Allen');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-25 14:39:38
