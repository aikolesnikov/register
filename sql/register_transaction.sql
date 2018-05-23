-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: register
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.17.04.1

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
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `operation_id` bigint(20) DEFAULT NULL,
  `datetime` varchar(45) DEFAULT NULL,
  `register_1` bigint(20) NOT NULL,
  `register_2` bigint(20) NOT NULL,
  `agent_1` bigint(20) DEFAULT NULL,
  `agent_2` bigint(20) DEFAULT NULL,
  `entity_1` bigint(20) DEFAULT NULL,
  `entity_2` bigint(20) DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_transaction_1_idx` (`register_1`),
  KEY `fk_transaction_reg2_idx` (`register_2`),
  KEY `fk_transaction_ag1_idx` (`agent_1`),
  KEY `fk_transaction_ag2_idx` (`agent_2`),
  KEY `fk_transaction_ent1_idx` (`entity_1`),
  KEY `fk_transaction_ent2_idx` (`entity_2`),
  KEY `fk_transaction_op_idx` (`operation_id`),
  CONSTRAINT `fk_transaction_ag1` FOREIGN KEY (`agent_1`) REFERENCES `agent` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_transaction_ag2` FOREIGN KEY (`agent_2`) REFERENCES `agent` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_transaction_ent1` FOREIGN KEY (`entity_1`) REFERENCES `entity` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_transaction_ent2` FOREIGN KEY (`entity_2`) REFERENCES `entity` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_transaction_op` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_transaction_reg1` FOREIGN KEY (`register_1`) REFERENCES `register` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_transaction_reg2` FOREIGN KEY (`register_2`) REFERENCES `register` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-23 18:09:33
