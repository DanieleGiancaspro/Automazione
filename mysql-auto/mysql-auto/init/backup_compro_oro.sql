-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: compro_oro
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Current Database: `compro_oro`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `compro_oro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `compro_oro`;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `codice_fiscale` varchar(16) NOT NULL,
  `cognome` varchar(255) NOT NULL,
  `data_nascita` datetime(6) NOT NULL,
  `documento_identita` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `indirizzo` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `numero_telefono` varchar(255) NOT NULL,
  PRIMARY KEY (`codice_fiscale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('BRTCRD87D56Z216Q','Bartolomeo','1987-04-21 02:00:00.000000','Carta d\'identitÔö£├í','corrado.caligola@gmail.com','Via Caligola, 12 Andria','Corrado','3894621347'),('BSSFNC01R78O198T','Bissek','2001-10-24 02:00:00.000000','Carta d\'identitÔö£├í','franco.bissek@aruba.it','Via Rosa Mattucci, 12 Pesaro','Franco','3894761234'),('DSGRCC94T78L896Z','Disguido','1994-12-21 01:00:00.000000','Carta d\'identitÔö£├í','rocco.disguido@gmail.com','Via Rosi, 13 Mantova','Rocco','3568974125'),('FRNPPP97E45L102Q','Franco ','1997-05-09 02:00:00.000000','Patente di guida','pippo@gmail.com','Via Germano Franco ,17 Firenze ','Pippo ','3456609917'),('FRRGNI00E67L213Z','Ferrante ','2000-05-15 02:00:00.000000','Passaporto','gino@gmail.com','Via Giovanni Lorenzo,12 Foggia','Gino','3456608765'),('GNCDNL99R18L109B','Giancaspro','1999-10-18 02:00:00.000000','Carta d\'IdentitÔö£├í','daniele.giancaspro@gmail.com','Via GiovannI Picca 8','Daniele','3313904179'),('GNCDNL99R18L109C','Ceci','2022-12-18 01:00:00.000000','Carta d\'IdentitÔö£├í','luca.ceci@gmail.com','Via Giovanni Picca n 8','Luca','3313904161'),('GNCDNL99R18L109G','Rosa','2000-10-18 02:00:00.000000','Carta d\'IdentitÔö£├í','marco@gmail.com','Via Rpsa','Marco','3313904158'),('GNCDNL99R19T104V','Giancaspro','1999-10-18 02:00:00.000000','Carta d\'identitÔö£├í','ciccioPippo@gmail.com','Via Giovanni Picca,8','Daniele','3456982156'),('GNCDNL99T47D123V','Giancaspro','1999-12-18 01:00:00.000000','Carta d\'identitÔö£├í','daniele@gmail.com','Via Puccini, 9 ','Daniele','3313904157'),('MTRGCM99R89Q129Z','Matrociccio','1999-10-18 02:00:00.000000','Carta d\'identitÔö£├í','giacomo@gmail.com','Via Pulcini, 6','Giacomo','3486602197'),('PLNLNE97T42A893Z','Paolino','1997-12-02 01:00:00.000000','Carta d\'IdentitÔö£├í','elena.paolino@gmail.com','Via Giovanni Picca,8 Molfetta','Elena','3313904159'),('RSSMRA85M01H501R','Vivaldi','1981-01-01 01:00:00.000000','Carta d\'IdentitÔö£├í - 456489326','mariano.vivaldi@gmail.com','Via Croce Rossi ,12 Andria','Mariano','3314562184'),('RSSMRA85M01H501Y','Rossani','1988-01-01 01:00:00.000000','Carta d\'IdentitÔö£├í','maria.rossani@gmail.com','Via Roma , 15 Milano','Maria','3319876789'),('TRNFNC74R42A782Z','Trenatalance','1974-10-18 01:00:00.000000','Carta d\'identitÔö£├í','franco@gmail.com','Via Oronzo Cana,7 Brindisi','Franco','3568974213'),('VRDLGI85A01H501Z','Verdi','1985-01-01 01:00:00.000000','Patente di guida - 987654321','giorgio.verdi@gmail.com','Via Garibaldi,12 Napoli','Giorgio','3284567890');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magazzino`
--

DROP TABLE IF EXISTS `magazzino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magazzino` (
  `id_magazzino` int NOT NULL AUTO_INCREMENT,
  `caratura_lega` varchar(255) NOT NULL,
  `peso_materiale` double NOT NULL,
  `prezzo_acquisto` double NOT NULL,
  `tipo_materiale` varchar(255) NOT NULL,
  PRIMARY KEY (`id_magazzino`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magazzino`
--

LOCK TABLES `magazzino` WRITE;
/*!40000 ALTER TABLE `magazzino` DISABLE KEYS */;
INSERT INTO `magazzino` VALUES (13,'18kt',1,1200,'Oro'),(17,'14kt',30,550,'Oro'),(22,'24kt',50,500,'oro'),(23,'ARGENTO',65,420,'Argento'),(24,'8kt',70,150,'Oro'),(27,'23.6kt',2000,1850,'Oro'),(28,'21.6kt',20,325,'Oro'),(29,'9kt',40,900,'Oro'),(30,'21kt',15,100,'Oro'),(31,'22kt',10,300,'Oro'),(32,'22ki',50,1200,'Oro');
/*!40000 ALTER TABLE `magazzino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operazione`
--

DROP TABLE IF EXISTS `operazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operazione` (
  `id_operazione` int NOT NULL AUTO_INCREMENT,
  `caratura_lega` varchar(255) DEFAULT NULL,
  `data_documento` datetime(6) DEFAULT NULL,
  `data_operazione` datetime(6) NOT NULL,
  `importo_totale` double NOT NULL,
  `modalita_pagamento` varchar(255) DEFAULT NULL,
  `peso_materiale` double DEFAULT NULL,
  `tipo_documento` varchar(255) DEFAULT NULL,
  `tipo_materiale` varchar(255) DEFAULT NULL,
  `tipo_operazione` varchar(255) NOT NULL,
  `codice_fiscale` varchar(16) DEFAULT NULL,
  `id_magazzino` int DEFAULT NULL,
  `id_utente` int DEFAULT NULL,
  PRIMARY KEY (`id_operazione`),
  KEY `FKio5aafwbnygaiy32tfs7rl34` (`codice_fiscale`),
  KEY `FKdvewl1ir9pk08hjvlu3sn0oeq` (`id_magazzino`),
  KEY `fk_operazione_utente` (`id_utente`),
  CONSTRAINT `fk_operazione_utente` FOREIGN KEY (`id_utente`) REFERENCES `utente` (`ID_Utente`) ON DELETE SET NULL,
  CONSTRAINT `FKdvewl1ir9pk08hjvlu3sn0oeq` FOREIGN KEY (`id_magazzino`) REFERENCES `magazzino` (`id_magazzino`) ON DELETE SET NULL,
  CONSTRAINT `FKio5aafwbnygaiy32tfs7rl34` FOREIGN KEY (`codice_fiscale`) REFERENCES `cliente` (`codice_fiscale`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operazione`
--

LOCK TABLES `operazione` WRITE;
/*!40000 ALTER TABLE `operazione` DISABLE KEYS */;
INSERT INTO `operazione` VALUES (19,'18kt','2025-03-03 01:00:00.000000','2025-03-03 01:00:00.000000',1500,'Contanti',10.5,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,4),(20,'18kt','2025-03-03 01:00:00.000000','2025-03-03 01:00:00.000000',2000,'Contanti',10,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,4),(21,'18kt','2025-03-03 01:00:00.000000','2025-03-03 01:00:00.000000',1500,'Contanti',10,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,4),(22,'ARGENTO','2025-03-03 01:00:00.000000','2025-03-03 01:00:00.000000',50,'Contanti',2,'Fattura','Argento','Acquisto','GNCDNL99R18L109B',NULL,4),(23,NULL,NULL,'2025-03-03 13:00:00.000000',100,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(24,'18kt',NULL,'2025-03-03 13:00:00.000000',1000,NULL,2.5,NULL,'Oro','Fusione',NULL,NULL,NULL),(25,'18kt',NULL,'2025-03-03 13:00:00.000000',5000,NULL,18,NULL,'Oro','Fusione',NULL,NULL,NULL),(26,'18kt',NULL,'2025-03-03 13:00:00.000000',3000,NULL,10,NULL,'Oro','Fusione',NULL,NULL,NULL),(27,'18kt',NULL,'2025-03-03 13:00:00.000000',3000,NULL,1,NULL,'Oro','Fusione',NULL,NULL,NULL),(28,'18kt','2025-03-03 01:00:00.000000','2025-03-03 01:00:00.000000',200,'Contanti',2.5,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,4),(29,'ARGENTO',NULL,'2025-03-03 13:00:00.000000',100,NULL,1,NULL,'Argento','Fusione',NULL,NULL,NULL),(30,'18kt','2025-03-03 01:00:00.000000','2025-03-03 01:00:00.000000',2000,'Contanti',5,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,4),(31,'18kt',NULL,'2025-03-03 13:00:00.000000',300,NULL,2.5,NULL,'Oro','Fusione',NULL,NULL,NULL),(32,'18kt',NULL,'2025-03-03 13:00:00.000000',2000,NULL,2,NULL,'Oro','Fusione',NULL,NULL,NULL),(33,'18kt',NULL,'2025-03-03 13:00:00.000000',2000,NULL,2,NULL,'Oro','Fusione',NULL,NULL,NULL),(34,'ARGENTO','2025-03-04 01:00:00.000000','2025-03-04 01:00:00.000000',300,'Contanti',5,'Fattura','Argento','Acquisto','GNCDNL99R18L109B',NULL,4),(35,NULL,NULL,'2025-03-03 13:00:00.000000',100,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(36,'18kt',NULL,'2025-03-03 13:00:00.000000',200,NULL,0.5,NULL,'Oro','Fusione',NULL,NULL,NULL),(37,'18kt',NULL,'2025-03-03 13:00:00.000000',5000,NULL,0.5,NULL,'Oro','Fusione',NULL,NULL,NULL),(38,'18kt','2025-03-03 01:00:00.000000','2025-03-03 01:00:00.000000',1500,'Contanti',10.5,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,4),(39,NULL,NULL,'2025-03-03 16:30:12.000000',400,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(40,'18kt',NULL,'2025-03-10 19:30:18.000000',1500,NULL,8.5,NULL,'Oro','Fusione',NULL,NULL,NULL),(41,'18kt',NULL,'2025-03-10 19:30:18.000000',300,NULL,2,NULL,'Oro','Fusione',NULL,NULL,NULL),(42,'18kt','2025-03-03 01:00:00.000000','2025-03-03 01:00:00.000000',1500,'Contanti',10.5,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,4),(43,'18kt','2025-03-03 01:00:00.000000','2025-03-03 01:00:00.000000',1500,'Contanti',10.5,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,8),(44,NULL,NULL,'2025-02-18 01:00:00.000000',150,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(45,NULL,NULL,'2024-02-18 01:00:00.000000',50,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(46,'ARGENTO',NULL,'2025-03-26 01:00:00.000000',400,NULL,5,NULL,'argento','Fusione',NULL,NULL,NULL),(47,NULL,NULL,'2025-01-27 01:00:00.000000',50,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(48,'18kt',NULL,'2025-03-20 01:00:00.000000',500,NULL,10,NULL,'oro','Fusione',NULL,NULL,NULL),(49,'18kt','2025-03-31 02:00:00.000000','2025-03-31 02:00:00.000000',1200,'Bancomat',10,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',13,4),(50,'18kt','2025-03-31 02:00:00.000000','2025-03-31 02:00:00.000000',100,'Bancomat',1,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,4),(51,'24kt','2025-03-31 02:00:00.000000','2025-03-31 02:00:00.000000',50,'Bancomat',1,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,4),(52,'8kt','2025-03-31 02:00:00.000000','2025-03-31 02:00:00.000000',1000,'Bancomat',5,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,4),(53,'14kt','2025-03-31 02:00:00.000000','2025-03-31 02:00:00.000000',100,'Bancomat',7,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',17,4),(54,'24kt','2025-03-31 02:00:00.000000','2025-03-31 02:00:00.000000',30,'Bancomat',8,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,4),(55,'18kt','2025-03-03 01:00:00.000000','2025-03-03 01:00:00.000000',1500,'Contanti',10.5,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,4),(56,'14kt','2025-03-03 01:00:00.000000','2025-03-03 01:00:00.000000',1500,'Contanti',10.5,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,4),(57,'14kt','2025-03-03 01:00:00.000000','2025-03-03 01:00:00.000000',1500,'Contanti',10.5,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,4),(58,'14kt','2025-03-03 01:00:00.000000','2025-03-03 01:00:00.000000',1000,'Contanti',10.5,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,4),(59,'14kt','2025-03-03 01:00:00.000000','2025-03-03 01:00:00.000000',100,'Contanti',10.5,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',17,4),(60,'14kt','2025-03-03 01:00:00.000000','2025-03-03 01:00:00.000000',3000,'Bancomat',10,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',NULL,4),(61,'18kt','2025-03-03 01:00:00.000000','2025-03-03 01:00:00.000000',1200,'Bancomat',10,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',13,4),(62,NULL,NULL,'2025-04-03 02:00:00.000000',100,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(63,NULL,NULL,'2025-01-18 01:00:00.000000',100,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(64,NULL,NULL,'2021-10-18 02:00:00.000000',50,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(65,NULL,NULL,'2023-10-18 02:00:00.000000',40,'Bonifico',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(66,NULL,NULL,'2025-10-18 02:00:00.000000',1,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(67,'14kt',NULL,'2025-04-04 02:00:00.000000',5000,NULL,10,NULL,'Oro','Fusione',NULL,NULL,NULL),(68,'14kt',NULL,'2025-04-04 02:00:00.000000',2000,NULL,5.5,NULL,'Oro','Fusione',NULL,NULL,NULL),(69,NULL,NULL,'2025-04-04 02:00:00.000000',50,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(70,NULL,NULL,'2024-04-04 02:00:00.000000',100,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(71,NULL,NULL,'2024-04-04 02:00:00.000000',100,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(72,NULL,NULL,'2024-04-04 02:00:00.000000',100,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(73,NULL,NULL,'2024-04-04 02:00:00.000000',100,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(74,NULL,NULL,'2024-04-04 02:00:00.000000',100,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(75,NULL,NULL,'2024-04-04 02:00:00.000000',100.1,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(76,NULL,NULL,'2024-04-04 02:00:00.000000',100.1,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(77,NULL,NULL,'2024-04-04 02:00:00.000000',100.1,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(78,NULL,NULL,'2024-04-04 02:00:00.000000',100.1,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(79,NULL,NULL,'2024-04-04 02:00:00.000000',50,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(80,NULL,NULL,'2024-10-10 02:00:00.000000',50,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(81,NULL,NULL,'2024-10-10 02:00:00.000000',50,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(82,NULL,NULL,'2024-04-04 02:00:00.000000',50,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(83,NULL,NULL,'2015-12-10 01:00:00.000000',50,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(84,NULL,NULL,'1999-10-18 02:00:00.000000',1,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(85,NULL,NULL,'2024-04-24 02:00:00.000000',44,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(86,'14kt',NULL,'2025-04-04 02:00:00.000000',2000,NULL,5,NULL,'Oro','Fusione',NULL,NULL,NULL),(87,'14kt',NULL,'2025-04-04 02:00:00.000000',1800,NULL,21,NULL,'Oro','Fusione',NULL,NULL,NULL),(88,'24kt',NULL,'2025-04-04 02:00:00.000000',50,NULL,6,NULL,'Oro','Fusione',NULL,NULL,NULL),(89,'24kt',NULL,'2025-04-04 02:00:00.000000',50,NULL,6,NULL,'Oro','Fusione',NULL,NULL,NULL),(90,'24kt',NULL,'2025-02-07 01:00:00.000000',30,NULL,2,NULL,'Oro','Fusione',NULL,NULL,NULL),(91,'24kt',NULL,'2021-12-04 01:00:00.000000',30,NULL,1,NULL,'Oro','Fusione',NULL,NULL,NULL),(92,'24kt','2025-09-04 02:00:00.000000','2025-09-04 02:00:00.000000',500,'contanti',30.5,'fattura','oro','Acquisto','PLNLNE97T42A893Z',22,4),(93,'ARGENTO','2024-10-18 02:00:00.000000','2024-10-18 02:00:00.000000',380,'Bonifico',30,'Fattura','Argento','Acquisto','PLNLNE97T42A893Z',23,8),(94,'8kt','2024-10-10 02:00:00.000000','2024-10-10 02:00:00.000000',150,'Contanti',30,'Attestato Pagamento','Oro','Acquisto','RSSMRA85M01H501R',24,4),(95,'8kt','2024-10-10 02:00:00.000000','2024-10-10 02:00:00.000000',150,'Bonifico',10,'Fattura','Oro','Acquisto','RSSMRA85M01H501R',24,4),(96,'23.6kt','2024-10-10 02:00:00.000000','2024-10-10 02:00:00.000000',2000,'Bonifico',2500,'Fattura','Oro','Acquisto','PLNLNE97T42A893Z',NULL,4),(97,'23.6kt','2024-10-10 02:00:00.000000','2024-10-10 02:00:00.000000',2000,'Bonifico',2500,'Fattura','Oro','Acquisto','PLNLNE97T42A893Z',NULL,4),(98,'23.6kt','2024-10-22 02:00:00.000000','2024-10-22 02:00:00.000000',1960,'Bonifico',1000,'Attestato Pagamento','Oro','Acquisto','RSSMRA85M01H501R',NULL,4),(99,'23.6kt','2025-04-10 02:00:00.000000','2025-04-10 02:00:00.000000',1750,'Bonifico',1000,'Fattura','Oro','Acquisto','VRDLGI85A01H501Z',27,8),(100,'23.6kt','2025-04-09 02:00:00.000000','2025-04-09 02:00:00.000000',1750,'Bonifico',1000,'Fattura','Oro','Acquisto','GNCDNL99R18L109C',27,8),(101,'21.6kt','2024-04-11 02:00:00.000000','2024-04-11 02:00:00.000000',150,'Bonifico',5,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',28,8),(102,'21.6kt','2024-04-11 02:00:00.000000','2024-04-11 02:00:00.000000',200,'Bonifico',5,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',28,8),(103,'14kt','2024-10-10 02:00:00.000000','2024-10-10 02:00:00.000000',100,'Bonifico',5,'Fattura','Oro','Acquisto','GNCDNL99R18L109B',17,NULL),(104,'14kt','2024-10-10 02:00:00.000000','2024-10-10 02:00:00.000000',150,'Bonifico',1,'Fattura','Oro','Acquisto','PLNLNE97T42A893Z',17,NULL),(105,'ARGENTO','2024-10-11 02:00:00.000000','2024-10-11 02:00:00.000000',40,'Carta di Credito',5,'Fattura','Argento','Acquisto','RSSMRA85M01H501R',23,NULL),(106,'18kt','2024-10-12 02:00:00.000000','2024-10-12 02:00:00.000000',200,'Assegno',7,'Attestato Pagamento','Oro','Acquisto','RSSMRA85M01H501Y',NULL,NULL),(107,'21.6kt','2024-10-13 02:00:00.000000','2024-10-13 02:00:00.000000',150,'Assegno',10,'Attestato Pagamento','Oro','Acquisto','GNCDNL99R18L109B',28,NULL),(108,NULL,NULL,'2024-11-10 01:00:00.000000',50,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(109,'18kt',NULL,'2025-04-10 02:00:00.000000',300,NULL,2,NULL,'Oro','Fusione',NULL,NULL,NULL),(110,NULL,NULL,'2025-04-10 02:00:00.000000',1500,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(111,'18kt',NULL,'2025-04-10 02:00:00.000000',1700,NULL,10,NULL,'Oro','Fusione',NULL,NULL,NULL),(112,NULL,NULL,'2025-04-10 02:00:00.000000',300.1,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(113,'14kt','2020-02-12 01:00:00.000000','2020-02-12 01:00:00.000000',200,'Assegno',8,'Attestato Pagamento','Oro','Acquisto','GNCDNL99R18L109B',17,8),(114,'24kt',NULL,'2025-04-12 02:00:00.000000',1400,NULL,1,NULL,'Oro','Fusione',NULL,NULL,NULL),(115,NULL,NULL,'2025-02-12 01:00:00.000000',100,'Bonifico',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(116,'18kt',NULL,'2025-04-12 02:00:00.000000',3000,NULL,17.5,NULL,'Oro','Fusione',NULL,NULL,NULL),(117,NULL,NULL,'2026-04-14 02:00:00.000000',500,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(118,NULL,NULL,'2025-04-14 02:00:00.000000',50,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(119,NULL,NULL,'2025-04-14 02:00:00.000000',500,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(120,NULL,NULL,'2025-04-14 02:00:00.000000',500,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(121,'18kt',NULL,'2025-04-14 02:00:00.000000',1200,NULL,0.5,NULL,'Oro','Fusione',NULL,NULL,NULL),(122,'8kt','2024-04-14 02:00:00.000000','2024-04-14 02:00:00.000000',500,'Assegno',150,'Attestato Pagamento','Oro','Acquisto','GNCDNL99R18L109B',NULL,8),(123,'9kt','2025-04-15 02:00:00.000000','2025-04-15 02:00:00.000000',500,'Assegno',30,'Attestato Pagamento','Oro','Acquisto','RSSMRA85M01H501Y',29,4),(124,'9kt','2025-04-15 02:00:00.000000','2025-04-15 02:00:00.000000',300,'Assegno',5,'Attestato Pagamento','Oro','Acquisto','RSSMRA85M01H501Y',29,4),(125,'18kt',NULL,'2025-04-16 02:00:00.000000',200,NULL,0.5,NULL,'Oro','Fusione',NULL,NULL,NULL),(126,'8kt',NULL,'2025-04-16 02:00:00.000000',1500,NULL,160,NULL,'Oro','Fusione',NULL,NULL,NULL),(127,'23.6kt',NULL,'2025-04-16 02:00:00.000000',2000,NULL,7500,NULL,'Oro','Fusione',NULL,NULL,NULL),(128,'23.6kt',NULL,'2025-04-16 02:00:00.000000',1960,NULL,2000,NULL,'Oro','Fusione',NULL,NULL,NULL),(129,'24kt',NULL,'2025-04-16 02:00:00.000000',30,NULL,2,NULL,'Oro','Fusione',NULL,NULL,NULL),(130,'9kt','2025-04-16 02:00:00.000000','2025-04-16 02:00:00.000000',100,'Assegno',5,'Attestato Pagamento','Oro','Acquisto','GNCDNL99R18L109B',29,NULL),(131,'21kt','2020-04-16 02:00:00.000000','2020-04-16 02:00:00.000000',100,'Assegno',15,'Attestato Pagamento','Oro','Acquisto','GNCDNL99R18L109B',30,NULL),(132,NULL,NULL,'2025-04-28 02:00:00.000000',700,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(133,NULL,NULL,'2025-04-22 02:00:00.000000',30.5,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(134,'18kt',NULL,'2025-04-29 02:00:00.000000',1200.6,NULL,15,NULL,'Oro','Fusione',NULL,13,NULL),(135,'24kt',NULL,'2025-05-06 02:00:00.000000',120,NULL,1,NULL,'Oro','Fusione',NULL,22,NULL),(136,NULL,NULL,'2025-05-06 02:00:00.000000',2000,'Bonifico',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(137,'24kt',NULL,'2025-05-08 02:00:00.000000',400,NULL,10,NULL,'Oro','Fusione',NULL,22,NULL),(138,NULL,NULL,'2025-05-14 02:00:00.000000',1200,'Bonifico',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(139,'18kt',NULL,'2025-05-14 02:00:00.000000',1200,NULL,5,NULL,'Oro','Fusione',NULL,13,NULL),(140,NULL,NULL,'2025-05-14 02:00:00.000000',1200,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(141,'23.6kt','2025-05-15 02:00:00.000000','2025-05-15 02:00:00.000000',100,'Assegno',1,'Attestato Pagamento','Oro','Acquisto','GNCDNL99R18L109B',27,4),(142,'23.6kt',NULL,'2025-05-16 02:00:00.000000',11,NULL,1,NULL,'Oro','Fusione',NULL,27,NULL),(143,'22kt','2025-05-16 02:00:00.000000','2025-05-16 02:00:00.000000',300,'Assegno',10,'Attestato Pagamento','Oro','Acquisto','BRTCRD87D56Z216Q',31,63),(144,NULL,NULL,'2025-05-19 02:00:00.000000',1300.78,'Bonifico',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(145,'14kt',NULL,'2025-05-19 02:00:00.000000',1200,NULL,0.5,NULL,'Oro','Fusione',NULL,17,NULL),(146,NULL,NULL,'2025-05-23 02:00:00.000000',100,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(147,NULL,NULL,'2025-05-26 02:00:00.000000',150,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(148,'18kt',NULL,'2025-05-26 02:00:00.000000',4500,NULL,9,NULL,'Oro','Fusione',NULL,13,NULL),(149,'22ki','2025-05-27 02:00:00.000000','2025-05-27 02:00:00.000000',1200,'Assegno',50,'Attestato Pagamento','Oro','Acquisto','MTRGCM99R89Q129Z',32,4),(150,NULL,NULL,'2025-05-27 02:00:00.000000',50.98,'Contanti',NULL,NULL,NULL,'Spesa Fissa',NULL,NULL,1),(151,'14kt',NULL,'2025-05-27 02:00:00.000000',1200,NULL,8,NULL,'Oro','Fusione',NULL,17,NULL);
/*!40000 ALTER TABLE `operazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utente`
--

DROP TABLE IF EXISTS `utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utente` (
  `ID_Utente` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) DEFAULT NULL,
  `Cognome` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `ruolo` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_Utente`),
  UNIQUE KEY `Telefono` (`telefono`),
  UNIQUE KEY `Password` (`Password`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `UKgxvq4mjswnupehxnp35vawmo2` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
INSERT INTO `utente` VALUES (1,'Mario','Rossi','3356789012','$2a$10$sjvkcwYNtbFecXORq5kqNOdLLaeNEUhBC0TGlQ3mG88OF/tUm5gCq','mario.rossi@gmail.com','ADMIN'),(4,'Luigi','Bianchi','3497561238','$2a$10$DLhs5gRkVLXbmZ2x2oeBhONerqo0FqsHX/s8qGDk0s3lRC9lbFwvO','luigi.bianchi@gmail.com','USER'),(8,'Gennaro','Calo','3456789124','$2a$10$6LEvSWlElhQHdnqSgEzRqOpU.zIyL5Nyb0y8RzcVlBntnMlGa4VQi','gennaro.calo@gmail.com','USER'),(59,'Daniele','Giancaspro','3313904157','$2a$10$KSm8FYm8NWWfdH6ImO65SOhvA2ZBdky7RDbxqQx2Lh0m5HYh/CLwC','giancaspro.daniele1bt@gmail.com','USER'),(63,'Kristian','Kola','3486621569','$2a$10$q4Rj.othAx/K56YwIneT8e46jdyKrZFuEjJlsd.wf6OCYcO0TyGvW','kristian@aruba.it','USER');
/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-06 15:52:45
CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY 'rootpassword';
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'rootpassword';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
