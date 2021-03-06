-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: session1
-- ------------------------------------------------------
-- Server version	5.6.38

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
-- Table structure for table `ProductSale`
--

DROP TABLE IF EXISTS `ProductSale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductSale` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AgentID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `SaleDate` date NOT NULL,
  `ProductCount` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ProductSale_Agent` (`AgentID`),
  KEY `FK_ProductSale_Product` (`ProductID`),
  CONSTRAINT `FK_ProductSale_Agent` FOREIGN KEY (`AgentID`) REFERENCES `Agent` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ProductSale_Product` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductSale`
--

LOCK TABLES `ProductSale` WRITE;
/*!40000 ALTER TABLE `ProductSale` DISABLE KEYS */;
INSERT INTO `ProductSale` VALUES (1,90,10,'2010-06-21',7),(2,70,23,'2016-02-17',18),(3,38,24,'2012-11-07',9),(4,93,46,'2019-06-01',5),(5,61,21,'2014-06-11',11),(6,29,1,'2012-08-12',12),(7,21,35,'2012-09-26',16),(8,38,17,'2018-02-28',3),(9,96,2,'2018-09-15',6),(10,33,12,'2011-08-27',10),(11,25,42,'2011-08-19',2),(12,38,45,'2015-02-02',20),(13,94,48,'2011-07-01',14),(14,40,47,'2013-12-23',8),(15,7,10,'2017-11-11',10),(16,35,24,'2014-04-15',14),(17,37,24,'2018-06-22',6),(18,57,39,'2013-07-11',12),(19,18,17,'2016-08-13',7),(20,21,47,'2014-07-28',8),(21,62,14,'2010-04-15',8),(22,42,14,'2017-10-12',8),(23,88,38,'2012-09-02',13),(24,91,17,'2015-08-08',14),(25,5,49,'2012-05-25',15),(26,30,36,'2014-03-06',12),(27,29,16,'2016-05-18',6),(28,89,50,'2014-07-11',10),(29,63,45,'2016-08-18',8),(30,5,4,'2019-07-25',19),(31,53,40,'2019-03-17',6),(32,47,20,'2014-08-06',9),(33,5,27,'2011-09-12',18),(34,19,14,'2011-08-28',11),(35,63,41,'2015-12-25',4),(36,18,1,'2016-02-25',8),(37,11,8,'2017-06-07',1),(38,96,38,'2016-11-27',6),(39,7,18,'2012-03-12',18),(40,59,7,'2018-06-13',18),(41,30,31,'2017-11-05',2),(42,16,38,'2016-02-26',1),(43,90,29,'2010-06-20',8),(44,7,28,'2015-06-23',12),(45,33,14,'2013-01-24',3),(46,9,13,'2015-02-28',5),(47,18,42,'2019-07-05',14),(48,92,40,'2014-03-06',6),(49,94,31,'2017-05-01',5),(50,51,26,'2015-01-17',15),(51,82,15,'2018-04-14',7),(52,94,18,'2014-12-12',14),(53,40,17,'2015-03-28',16),(54,13,41,'2017-11-24',15),(55,11,46,'2019-06-27',10),(56,87,29,'2014-06-04',2),(57,57,43,'2019-03-18',11),(58,13,42,'2015-09-12',8),(59,59,47,'2012-01-02',13),(60,9,24,'2011-02-01',12),(61,24,33,'2016-10-07',17),(62,91,4,'2017-06-07',1),(63,47,5,'2016-02-26',14),(64,47,2,'2013-11-09',5),(65,9,40,'2015-07-01',14),(66,58,32,'2015-08-27',6),(67,59,23,'2013-08-27',15),(68,61,19,'2013-05-10',2),(69,53,24,'2013-12-01',19),(70,70,15,'2011-06-11',16),(71,25,2,'2019-05-24',16),(72,47,46,'2017-04-02',1),(73,29,3,'2013-04-08',10),(74,51,50,'2019-08-16',20),(75,80,46,'2011-12-26',5),(76,25,21,'2016-07-19',19),(77,19,44,'2014-03-17',1),(78,12,16,'2011-06-14',13),(79,76,29,'2017-05-20',13),(80,53,1,'2010-04-13',6),(81,12,1,'2019-10-15',9),(82,48,43,'2019-10-08',20),(83,33,21,'2018-04-08',8),(84,30,34,'2012-06-14',2),(85,62,28,'2012-04-23',3),(86,61,27,'2015-08-17',6),(87,51,29,'2016-09-14',7),(88,6,4,'2012-03-23',15),(89,55,38,'2010-11-17',5),(90,37,40,'2016-11-17',13),(91,24,44,'2010-05-03',19),(92,15,12,'2019-03-06',1),(93,16,24,'2017-10-14',20),(94,80,50,'2017-02-08',3),(95,25,13,'2017-08-02',3),(96,82,8,'2017-03-09',18),(97,33,39,'2017-11-13',18),(98,30,39,'2015-12-02',19),(99,27,9,'2011-06-14',19),(100,63,1,'2014-08-14',16);
/*!40000 ALTER TABLE `ProductSale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-15 16:01:27
