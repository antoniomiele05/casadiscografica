CREATE DATABASE  IF NOT EXISTS `casa_discografica` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `casa_discografica`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: casa_discografica
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
  `nomed_arte` varchar(255) DEFAULT NULL,
  `id_persona` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmtai0q318df7tk41ijs61qbjv` (`id_persona`),
  CONSTRAINT `FKmtai0q318df7tk41ijs61qbjv` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,_binary '',_binary '','',1),(2,_binary '',_binary '','Faber',2),(3,_binary '',_binary '','',3),(4,_binary '',_binary '','',4),(5,_binary '\0',_binary '','Jovanotti',5),(6,_binary '',_binary '','Rino',6),(7,_binary '',_binary '','',7),(8,_binary '\0',_binary '','Lana Del Rey',8),(9,_binary '',_binary '\0','Mogol',9),(10,_binary '',_binary '\0','',10),(11,_binary '',_binary '','',11),(12,_binary '',_binary '','',12),(13,_binary '\0',_binary '','',13),(14,_binary '',_binary '','',14),(15,_binary '',_binary '','Fedez',15),(16,_binary '\0',_binary '','',16),(17,_binary '',_binary '','',17),(18,_binary '',_binary '','',18),(19,_binary '',_binary '','',19),(20,_binary '',_binary '','Gaber',20),(21,_binary '',_binary '','Bob Dylan',21),(22,_binary '\0',_binary '','',22);
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
INSERT INTO `contiene` VALUES (3,1),(4,2),(4,3),(5,4),(5,5),(6,6),(6,7),(7,8),(8,9),(8,10),(9,11),(9,12),(10,13),(11,14),(11,15),(2,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22);
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
  `anno_uscita_album` int(11) DEFAULT NULL,
  `numero_serie` varchar(3) DEFAULT NULL,
  `prezzo` double DEFAULT NULL,
  `titolo_disco` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ppsgc7rg66htrs0xl80nab484` (`numero_serie`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disco`
--

LOCK TABLES `disco` WRITE;
/*!40000 ALTER TABLE `disco` DISABLE KEYS */;
INSERT INTO `disco` VALUES (1,2019,'S01',22.5,'Norman Fucking Rockwell!'),(2,2007,'S23',8,'Little Voice'),(3,2009,'S05',12.5,'Back To Black'),(4,1979,'S06',15,'Fabrizio De Andrè in concerto'),(5,1970,'S11',23.3,'Emozioni'),(6,2021,'S13',7,'FEAT (Fuori dagli spazi)'),(7,2012,'S30',19.5,'Born to Die'),(8,1967,'S31',9,'Diamoci del tu'),(9,1966,'S43',15.4,'Tutto Fabrizio De Andrè'),(10,2021,'S60',16,'Happier Than Ever'),(11,1994,'S61',23.8,'Quando... tributo a Luigi Tenco');
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
  `anno_di_registrazione` int(11) DEFAULT NULL,
  `titolo` varchar(255) NOT NULL,
  `id_artista` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgf6goatdlg6qy0ccjev3lgcrv` (`id_artista`),
  CONSTRAINT `FKgf6goatdlg6qy0ccjev3lgcrv` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esecuzione`
--

LOCK TABLES `esecuzione` WRITE;
/*!40000 ALTER TABLE `esecuzione` DISABLE KEYS */;
INSERT INTO `esecuzione` VALUES (1,2009,'Back To Black',1),(2,1979,'Il Pescatore',2),(3,1979,'Il Pescatore',14),(4,1970,'Emozioni',3),(5,1970,'Emozioni',9),(6,2021,'Chiamami per nome',16),(7,2021,'Chiamami per nome',15),(8,2011,'Video games',8),(9,1967,'Le biciclette bianche',11),(10,1967,'Le biciclette bianche',4),(11,1964,'La ballata dell eroe',12),(12,1963,'La ballata dell eroe',2),(13,2021,'Your Power',13),(14,NULL,'Serenella',12),(15,NULL,'Serenella',9),(16,2007,'Love Song',22),(17,2019,'Love Song',8),(18,2019,'Cinnamon Girl',8),(19,2019,'Happiness Is a Butterfly',8),(20,2019,'Mariners Apartment Complex',8),(21,2019,'Doin\' Time',8),(22,2019,'Norman Fucking Rockwell',8);
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
INSERT INTO `persona` VALUES (1,'Winehouse','Amy'),(2,'De Andrè','Fabrizio'),(3,'Battisti','Lucio'),(4,'Caselli','Caterina'),(5,'Cherubini','Lorenzo'),(6,'Gaetano','Salvatore Antonio'),(7,'Dalla','Lucio'),(8,'Grant','Elisabeth'),(9,'Rapetti','Giulio'),(10,'Malgioglio','Cristiano'),(11,'Guccini','Francesco'),(12,'Tenco','Luigi'),(13,'Eilish','Billie'),(14,'Mannoia','Fiorella'),(15,'Lucia','Federico'),(16,'Michielin','Francesca'),(17,'Rettore','Donatella'),(18,'Battiato','Franco'),(19,'De Gregori','Francesco'),(20,'Gaberscik','Giorgio'),(21,'Zimmerman','Robert Allen'),(22,'Bareilles','Sara');
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

-- Dump completed on 2021-05-27 11:08:46
