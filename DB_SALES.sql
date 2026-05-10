-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `acquisto`
--

DROP TABLE IF EXISTS `acquisto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acquisto` (
  `idacquisto` int NOT NULL AUTO_INCREMENT,
  `idprodotto` int DEFAULT NULL,
  `CF_cliente` char(7) DEFAULT NULL,
  PRIMARY KEY (`idacquisto`),
  KEY `FK_prodotto_idx` (`idprodotto`),
  KEY `FK_cf_idx` (`CF_cliente`),
  CONSTRAINT `FK_cf` FOREIGN KEY (`CF_cliente`) REFERENCES `cliente` (`codfiscale`),
  CONSTRAINT `FK_prodotto` FOREIGN KEY (`idprodotto`) REFERENCES `prodotto` (`idprodotto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acquisto`
--

LOCK TABLES `acquisto` WRITE;
/*!40000 ALTER TABLE `acquisto` DISABLE KEYS */;
INSERT INTO `acquisto` VALUES (1,1,'bbb'),(2,2,'ddd'),(3,3,'ff'),(4,4,'bbb'),(5,5,'ddd'),(6,6,'ff'),(7,7,'ccccc'),(8,8,'ccccc'),(9,9,'hh'),(10,10,'hh');
/*!40000 ALTER TABLE `acquisto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `codfiscale` char(7) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cognome` varchar(45) NOT NULL,
  `data_nascita` date NOT NULL,
  `numero_carta` varchar(45) DEFAULT NULL,
  `scadenza_carta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codfiscale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('aaa','mario','rossi','2000-03-02','I2345678910','2026-03-01'),('aaaaaaa','michele','rossi','2000-03-02','I2345678910','2026-03-01'),('bbb','marco','rosi','1995-03-02','12345678','2025-12-02'),('bbbbbbb','marco','rosi','1995-03-02','12345678','2025-12-02'),('ccccc','rafael','bianco','2000-06-12','234567','2025-12-02'),('ccccccc','rafael','bianco','2000-06-12','234567','2025-12-02'),('ddd','lorenza','bianchi','2003-08-07','3456789','2027-12-02'),('ddddddd','lorenza','bianchi','2003-08-07','3456789','2027-12-02'),('eeeee','mario','rossi','2001-07-21','4567890','2025-12-02'),('eeeeeee','alessandra','gialli','2001-07-21','4567890','2025-12-02'),('ff','nico','nero','1995-09-03','123456','2025-12-02'),('fffffff','nico','nero','1995-09-03','123456','2025-12-02'),('ggg','daniela','neri','1991-06-21','987654','2025-12-22'),('ggggggg','daniela','neri','1991-06-21','987654','2025-12-22'),('hh','mario','rossi','1992-07-24','876543','2025-12-02'),('hhhhhh','bruna','verde','1992-07-24','876543','2025-12-02'),('kk','elv','tom','1996-11-23','dsfjsdhfusdf','2026-03-01'),('mm','erica','verdi','1992-05-17','7654321','2028-12-02'),('mmmmm','erica','verdi','1992-05-17','7654321','2028-12-02'),('nnnn','federico','grigi','1995-04-02','6543210','2025-12-30'),('nnnnnn','federico','grigi','1995-04-02','6543210','2025-12-30');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornitore`
--

DROP TABLE IF EXISTS `fornitore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornitore` (
  `idfornitore` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `indirizzo` varchar(45) DEFAULT NULL,
  `citta` varchar(45) DEFAULT NULL,
  `regione` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idfornitore`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornitore`
--

LOCK TABLES `fornitore` WRITE;
/*!40000 ALTER TABLE `fornitore` DISABLE KEYS */;
INSERT INTO `fornitore` VALUES (1,'giulio','via puglia','catania','sicilia'),(2,'giacinto','via toscana','enna','sicilia'),(3,'giacomo','via lombardia','cagliari','sardegna'),(4,'lorenzo','piazza molise','campobasso','molise'),(5,'stella','via  piemonte','benevento','campania'),(6,'gabrieli','piazza moro','napoli','campania'),(7,'tommasi','piazza marche','caserta','campania'),(8,'rosi','via emilia','isernia','molise'),(9,'gianni','via romagna','bari','puglia'),(10,'giuli','via umbria','bari','puglia');
/*!40000 ALTER TABLE `fornitore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodotto`
--

DROP TABLE IF EXISTS `prodotto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodotto` (
  `idprodotto` int NOT NULL AUTO_INCREMENT,
  `prezzo` int DEFAULT NULL,
  `nome` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `idfornitore` int DEFAULT NULL,
  PRIMARY KEY (`idprodotto`),
  UNIQUE KEY `nome_UNIQUE` (`nome`),
  UNIQUE KEY `marca_UNIQUE` (`marca`),
  KEY `FK_fornitore_idx` (`idfornitore`),
  CONSTRAINT `FK_fornitore` FOREIGN KEY (`idfornitore`) REFERENCES `fornitore` (`idfornitore`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodotto`
--

LOCK TABLES `prodotto` WRITE;
/*!40000 ALTER TABLE `prodotto` DISABLE KEYS */;
INSERT INTO `prodotto` VALUES (1,50,'maionese','kraft',1),(2,30,'yu','tio',2),(3,50,'io','pot',3),(4,60,'kinder','paradiso',4),(5,50,'sd','tri',5),(6,570,'fg','cer',6),(7,70,'ki','cret',7),(8,501,'jk','tyr',8),(9,345,'lz','riu',9),(10,23,'vb','riut',10);
/*!40000 ALTER TABLE `prodotto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-03 16:10:04
