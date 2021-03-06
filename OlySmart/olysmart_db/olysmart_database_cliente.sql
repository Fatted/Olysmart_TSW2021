-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: olysmart_database
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `nome` char(45) DEFAULT NULL COMMENT 'Nome dell''utente',
  `cognome` char(45) DEFAULT NULL COMMENT 'Cognome dell''utente',
  `data_di_nascita` char(45) DEFAULT NULL COMMENT 'Data di nascita dell''utente',
  `codice_fiscale` char(45) DEFAULT NULL COMMENT 'Codice fiscale dell''utente,che servirà per identificarli univocamente',
  `email` char(45) DEFAULT NULL COMMENT 'email dell''utente,che userà come credenziale per accedere al suo account',
  `password` char(45) NOT NULL COMMENT 'password dell''utente,che userà come credenziale per accedere al suo account',
  `username` char(45) NOT NULL COMMENT 'nickname dell''utente che uscirà come nome del suo account',
  `telefono` char(45) DEFAULT NULL COMMENT 'telefono dell''utente, cellulare o numero fisso',
  `cap` char(45) DEFAULT NULL COMMENT 'cap della città di residenza dell''utente;servirà anche per la spedizione',
  `via` char(45) DEFAULT NULL COMMENT 'via della città di residenza dell''utente;servirà anche per la spedizione',
  `città` char(45) DEFAULT NULL COMMENT 'città di residenza dell''utente;servirà anche per la spedizione',
  `tipo` char(45) DEFAULT 'utente' COMMENT 'in base al tipo(admin o user),potrà accedere alle varie pagini del sito,nel caso dell''user userà il sito come cliente mentre nel caso dell''admin potrà accedere al sito anche in modalità "configurazione" dove potrà effettuare tutte le operazione di un proprietario del sito. ',
  `numero_carta` char(50) DEFAULT NULL,
  `data_scadenza_carta` char(45) DEFAULT NULL,
  `CVV` char(45) DEFAULT NULL,
  `Intestatario_carta` char(45) DEFAULT NULL,
  `circuito_carta` char(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='L''utente può essere admin,e quindi accedere al sito anche in modalità sviluppatore per inserire prodotti,cancellarli,modificarli e fare tutte le operazioni di gestione,inoltre può modificare qualsiasi dato nel database.\nNel caso in cui l''utente sia un user potrà navigare sul sito come un semplice compratore.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('Antonio','D\'amato','','','fattedcube74@gmail.com','antonio','antonio','3290477588','00001','via dei monti sperduti alti','Dune','utente','4012-1233-1233-1234','2021-11-17','551','Antonio D\'Amato','VISA'),('Olindo','Acciardo',NULL,NULL,'olindo@gmail.com','olismart','olindo','3290200344','81055','via del monte','vairano','admin',NULL,NULL,NULL,NULL,NULL),('UtenteProva','prova','2021-11-03','','prova2@gmail.com','prova','prova','3290477588','81041','via dei monti alpi','MonteDune','utente','4012-1233-1233-1234','2021-11-24','444','UtenteProva prova','VISA');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-17 17:13:58
