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
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `ProductTypeID` int(11) DEFAULT NULL,
  `ArticleNumber` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `Description` longtext CHARACTER SET utf8mb4,
  `Image` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ProductionPersonCount` int(11) DEFAULT NULL,
  `ProductionWorkshopNumber` int(11) DEFAULT NULL,
  `MinCostForAgent` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Product_ProductType` (`ProductTypeID`),
  CONSTRAINT `FK_Product_ProductType` FOREIGN KEY (`ProductTypeID`) REFERENCES `ProductType` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (1,'Попрыгунчик детский красный 1289',1,'82925345',NULL,NULL,4,10,1919.00),(2,'Попрыгунчик детский желтый 6678',2,'80007300',NULL,NULL,2,1,1768.00),(3,'Попрыгунчик детский 6888',1,'13875235',NULL,NULL,4,12,1972.00),(4,'Попрыгунчик для мальчиков 3929',1,'2158097',NULL,NULL,1,9,255.00),(5,'Попрыгунчик детский 2071',1,'3157982',NULL,NULL,3,6,275.00),(6,'Попрыгунчик для собачек 5096',3,'67975083',NULL,NULL,4,9,1465.00),(7,'Попрыгунчик для мальчиков 5389',3,'70873532',NULL,NULL,3,2,1739.00),(8,'Попрыгунчик детский розовый 5376',1,'74291677',NULL,NULL,4,6,1889.00),(9,'Попрыгунчик для мальчиков 3307',4,'30269726',NULL,NULL,4,10,1533.00),(10,'Попрыгунчик для кошечек 2604',1,'11890154',NULL,NULL,2,7,842.00),(11,'Шар 6366',3,'25514523',NULL,NULL,4,4,1932.00),(12,'Попрыгунчик детский желтый 6051',4,'88211092',NULL,NULL,4,12,727.00),(13,'Попрыгунчик для девочек 2311',3,'25262035',NULL,NULL,4,1,1308.00),(14,'Попрыгунчик для собачек 4387',5,'89607276',NULL,NULL,3,8,912.00),(15,'Попрыгун 3016',4,'74919447',NULL,NULL,1,12,615.00),(16,'Попрыгунчик детский красный 3240',2,'88098604',NULL,NULL,3,8,882.00),(17,'Попрыгунчик детский розовый 1657',1,'86558177',NULL,NULL,4,3,662.00),(18,'Попрыгунчик детский красный 6591',3,'79704172',NULL,NULL,5,7,592.00),(19,'Попрыгунчик для девочек 1895',4,'54983244',NULL,NULL,4,4,1586.00),(20,'Попрыгунчик для кошечек 3741',3,'43987093',NULL,NULL,5,4,1668.00),(21,'Попрыгунчик детский красный 3839',2,'26655484',NULL,NULL,5,2,1921.00),(22,'Попрыгунчик детский красный 4969',1,'10614909',NULL,NULL,5,12,913.00),(23,'Попрыгунчик для собачек 5754',4,'79018408',NULL,NULL,2,8,633.00),(24,'Попрыгунчик для собачек 4485',3,'33440129',NULL,NULL,2,12,1995.00),(25,'Попрыгунчик для девочек 1656',4,'22217580',NULL,NULL,5,6,1494.00),(26,'Попрыгунчик для мальчиков 4791',2,'45540528',NULL,NULL,3,11,1260.00),(27,'Попрыгунчик для девочек 6849',3,'10084400',NULL,NULL,1,11,933.00),(28,'Попрыгунчик детский желтый 1371',4,'85514178',NULL,NULL,3,7,252.00),(29,'Попрыгунчик для девочек 3389',3,'26434211',NULL,NULL,3,10,597.00),(30,'Попрыгунчик детский розовый 5197',4,'89612317',NULL,NULL,1,3,1948.00),(31,'Попрыгунчик для собачек 3500',2,'79994924',NULL,NULL,2,9,1142.00),(32,'Попрыгун 6882',5,'12732041',NULL,NULL,1,6,809.00),(33,'Попрыгунчик для кошечек 4740',5,'80698285',NULL,NULL,1,6,1973.00),(34,'Шар 2243',3,'42536654',NULL,NULL,3,12,1247.00),(35,'Попрыгунчик детский красный 1740',3,'43330133',NULL,NULL,5,3,1749.00),(36,'Попрыгунчик детский красный 5400',3,'68237918',NULL,NULL,4,5,1570.00),(37,'Попрыгунчик для девочек 1560',1,'47378395',NULL,NULL,5,6,235.00),(38,'Шар 4124',4,'39025230',NULL,NULL,5,8,1160.00),(39,'Попрыгунчик детский желтый 2582',3,'32125209',NULL,NULL,3,11,1730.00),(40,'Попрыгунчик детский 6029',2,'69184347',NULL,NULL,3,7,419.00),(41,'Попрыгун 2299',3,'34750945',NULL,NULL,2,2,1688.00),(42,'Попрыгунчик детский красный 1972',2,'59509797',NULL,NULL,1,7,794.00),(43,'Попрыгунчик детский 5117',2,'80875656',NULL,NULL,3,12,338.00),(44,'Попрыгунчик детский розовый 5501',3,'25409940',NULL,NULL,2,7,652.00),(45,'Попрыгунчик детский розовый 6346',4,'30282346',NULL,NULL,1,10,1024.00),(46,'Попрыгун 6412',2,'28152672',NULL,NULL,2,9,523.00),(47,'Попрыгунчик детский 1916',3,'73345857',NULL,NULL,5,8,832.00),(48,'Попрыгунчик для собачек 4529',2,'81713527',NULL,NULL,3,6,1923.00),(49,'Попрыгунчик для собачек 4381',4,'27301447',NULL,NULL,2,5,1234.00),(50,'Попрыгунчик детский розовый 2694',2,'13340356',NULL,NULL,4,6,1691.00);
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-15 16:01:26
