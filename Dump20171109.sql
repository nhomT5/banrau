-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: thucpham
-- ------------------------------------------------------
-- Server version	5.6.22-log

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
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about` (
  `ID` bigint(50) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `MetaTitle` varchar(250) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Image` varchar(250) DEFAULT NULL,
  `Detal` text,
  `CreateDate` datetime DEFAULT NULL,
  `CreateBy` varchar(50) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(50) DEFAULT NULL,
  `MetaKeywords` varchar(250) DEFAULT NULL,
  `MetaDescriptions` char(250) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) NOT NULL,
  `MetaTitle` varchar(250) NOT NULL,
  `ParentID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Branded Foods','products',1),(2,'Vegetables','vegetables',2),(3,'Fruits','fruit',3),(4,'Soft Drinks','softdrinks',4),(5,'Juice','juice',5);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `ID` int(11) NOT NULL,
  `Content` text NOT NULL,
  `Status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) DEFAULT NULL,
  `MetaTitle` varchar(250) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Image` varchar(250) DEFAULT NULL,
  `Price` decimal(18,0) DEFAULT NULL,
  `PromotionPrice` decimal(18,0) DEFAULT NULL,
  `Category_ID` bigint(20) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Detal` text,
  `Warranty` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateBy` varchar(50) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(50) DEFAULT NULL,
  `MetaKeywords` varchar(250) DEFAULT NULL,
  `MetaDescriptions` char(250) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `TopHot` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenttag`
--

DROP TABLE IF EXISTS `contenttag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contenttag` (
  `ContentID` bigint(20) NOT NULL,
  `TagID` varchar(50) NOT NULL,
  PRIMARY KEY (`ContentID`,`TagID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenttag`
--

LOCK TABLES `contenttag` WRITE;
/*!40000 ALTER TABLE `contenttag` DISABLE KEYS */;
/*!40000 ALTER TABLE `contenttag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `ID` int(11) NOT NULL,
  `Text` varchar(50) DEFAULT NULL,
  `Link` varchar(250) DEFAULT NULL,
  `DisplayOrder` int(11) DEFAULT NULL,
  `Target` varchar(50) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `TypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menutype`
--

DROP TABLE IF EXISTS `menutype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menutype` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menutype`
--

LOCK TABLES `menutype` WRITE;
/*!40000 ALTER TABLE `menutype` DISABLE KEYS */;
/*!40000 ALTER TABLE `menutype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Category_ID` bigint(20) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Code` varchar(10) DEFAULT NULL,
  `MetaTitle` varchar(250) DEFAULT NULL,
  `Description` longtext,
  `Image` varchar(250) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Promotion_Price` double DEFAULT NULL,
  `Quantity` int(50) DEFAULT NULL,
  `Detal` text,
  `Warranty` int(50) DEFAULT NULL,
  `CreateBy` varchar(50) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(50) DEFAULT NULL,
  `MetaKeywords` varchar(250) DEFAULT NULL,
  `MetaDescriptions` char(250) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `TopHot` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,2,'Rau muống','2','raumuong','Rau sạch','C:\\Users\\HOANG\\Pictures\\Saved Pictures\\cai thao.png',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,'Rau Ngót','2','raungot',NULL,'12.png',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,2,'Bí đao','2','bidao',NULL,'13.png',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,2,'Bí đỏ','2','bido',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,2,'Bầu','2','bau',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,2,'Mướp','2','muop',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,2,'Cải ngọt','2','caingot',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,2,'Cải canh','2','caicanh',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,2,'Cải xoong','2','caixoong',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,2,'Cải cuốn','2','caicuon',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,2,'Bắp cải','2','bapcai',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,2,'Cải thảo','2','caithao',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,3,'Táo ','3','tao',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,3,'Ổi','3','oi',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,3,'Lê','3','le',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,3,'Thanh Long ruột đỏ','3','thanhlongruotdo',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,3,'Thanh long ruột trắng','3','thanhlongruottrang',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,3,'Cam Hà Giang','3','camhagiang',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,3,'Cam sành','3','camsanh',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,3,'Quýt ngọt','3','quytngot',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,3,'Xoài tượng','3','xoaituong',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,3,'Xoài cát','3','xoaicat',NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,2,'Chanh','2','chanh',NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,2,'Tỏi','2','toi',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,2,'Ớt','2','ot',NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,4,'Cocacola','4','coca',NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,4,'Pepsi','4','pepsi',NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,4,'Nutri','4','nutri',NULL,NULL,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,4,'Sting','4','sting',NULL,NULL,566,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,4,'Red bull','4','redbull',NULL,NULL,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,4,'7 up','4','7up',NULL,NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,4,'Sprite','4','sprite',NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,5,'Nước ép cam','5','camep',NULL,NULL,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,5,'Nước ép táo','5','taoep',NULL,NULL,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,5,'Nước ép xoài','5','xoaiep',NULL,NULL,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,5,'Nước ép dưa hấu','5','duahauep',NULL,NULL,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,5,'Sinh tố bơ','5','boep',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,5,'Sinh tố mãng cầu','5','mangcauep',NULL,NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcategory`
--

DROP TABLE IF EXISTS `productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcategory` (
  `ID` bigint(20) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `MetaTitle` varchar(250) DEFAULT NULL,
  `ParentID` bigint(20) DEFAULT NULL,
  `DisplayOrder` int(11) DEFAULT NULL,
  `SeoTitle` varchar(250) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateBy` varchar(50) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(45) DEFAULT NULL,
  `MetaKeywords` varchar(50) DEFAULT NULL,
  `MetaDescriptions` char(250) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `ShowOnHome` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcategory`
--

LOCK TABLES `productcategory` WRITE;
/*!40000 ALTER TABLE `productcategory` DISABLE KEYS */;
INSERT INTO `productcategory` VALUES (1,'Branded Foods','products',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Vegetables','vegetables',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Fruits','fruit',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Soft Drinks','softdrinks',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Juice','juice',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slide`
--

DROP TABLE IF EXISTS `slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slide` (
  `ID` int(11) NOT NULL,
  `Image` varchar(250) DEFAULT NULL,
  `DisplayOrder` int(11) DEFAULT NULL,
  `Link` varchar(250) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `CreateBy` varchar(50) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(50) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slide`
--

LOCK TABLES `slide` WRITE;
/*!40000 ALTER TABLE `slide` DISABLE KEYS */;
/*!40000 ALTER TABLE `slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `ID` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-09  2:40:41
