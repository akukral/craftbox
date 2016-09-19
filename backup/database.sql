-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: craftbox
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.14.04.1

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
-- Table structure for table `craft_assetfiles`
--

DROP TABLE IF EXISTS `craft_assetfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `size` bigint(20) unsigned DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  KEY `craft_assetfiles_folderId_fk` (`folderId`),
  CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetfiles`
--

LOCK TABLES `craft_assetfiles` WRITE;
/*!40000 ALTER TABLE `craft_assetfiles` DISABLE KEYS */;
INSERT INTO `craft_assetfiles` VALUES (6,1,1,'5thfloor.jpg','image',1200,600,126042,'2015-08-20 20:31:27','2013-09-20 18:54:33','2015-08-21 23:36:26','fa84ab38-9976-4ec9-a096-2fbf48b4d0d3'),(40,1,1,'annabondoc.jpg','image',1200,600,128034,'2015-08-20 20:31:27','2013-09-25 15:00:35','2015-08-21 23:36:27','cf79e6de-de03-4978-8d32-b1b99fde4f6e'),(41,1,1,'america.jpg','image',1280,800,325460,'2015-08-21 23:08:50','2013-09-25 15:00:36','2015-08-21 23:36:26','28dab15d-e3aa-4b45-bf75-b64ffbc1bcf7'),(42,1,1,'commerce.jpg','image',1280,800,206207,'2015-08-21 23:08:42','2013-09-25 15:00:37','2015-08-21 23:36:27','7c3113bf-e584-4035-bec9-bac4a6680f2f'),(43,1,1,'collegiate.jpg','image',1280,800,232959,'2015-08-21 23:08:11','2013-09-25 15:00:38','2015-08-21 23:36:27','75936a15-ddb2-4323-ae48-0106b4563018'),(44,1,1,'elisio.jpg','image',1280,800,330091,'2015-08-21 23:07:47','2013-09-25 15:00:39','2015-08-21 23:36:29','63d33ab8-807f-47bf-b9d1-0c850af3382c'),(45,1,1,'hannah.jpg','image',1280,800,326349,'2015-08-21 23:07:58','2013-09-25 15:00:40','2015-08-21 23:36:30','c804a47e-6c2e-459d-9b5d-567e74a2654c'),(46,1,1,'madefirst.jpg','image',1200,600,117061,'2015-08-20 20:31:29','2013-09-25 15:00:41','2015-08-21 23:36:30','0e86df05-29b8-4005-8fec-bb1a4cc0a9fb'),(47,1,1,'mmr.jpg','image',1200,600,156967,'2015-08-20 20:31:30','2013-09-25 15:00:42','2015-08-21 23:36:31','32082609-c0b4-44d0-af0c-7503b4f0ccd7'),(48,1,1,'mottomoto.jpg','image',1280,800,264048,'2015-08-21 23:07:29','2013-09-25 15:00:42','2015-08-21 23:36:31','bd464620-cbca-4417-8edb-46113678867b'),(49,1,1,'martinique.jpg','image',1200,600,149500,'2015-08-20 20:31:30','2013-09-25 15:00:43','2015-08-21 23:36:30','6dc9b4c0-ea6f-4dfd-9643-984308840781'),(50,1,1,'saintemarie.jpg','image',1280,800,345292,'2015-08-21 23:08:24','2013-09-25 15:00:44','2015-08-21 23:36:31','15ae3304-183d-4698-8e7c-afa1196f277c'),(63,1,1,'map.gif','image',1013,585,317304,'2015-08-20 20:31:30','2013-09-26 17:33:31','2015-08-21 23:36:30','846a36aa-d829-4fd0-8c42-1b19c3c23297'),(65,1,1,'ederle.jpg','image',1280,800,149186,'2015-08-21 23:08:56','2013-12-04 15:19:19','2015-08-21 23:36:28','ad8e24b3-e36b-4f31-9f28-3f13ed65fa15'),(68,1,1,'linensense.jpg','image',1280,800,179365,'2015-08-21 23:09:17','2014-03-31 23:28:57','2015-08-21 23:36:30','878c7064-a273-48eb-8a9f-5fa8e8955e59'),(70,1,1,'damndog.jpg','image',1280,800,324728,'2015-08-21 23:09:07','2014-06-02 19:26:46','2015-08-21 23:36:27','8d0ec3c7-c370-4639-92b0-516c08b40e43'),(71,1,1,'hafa.jpg','image',1280,800,282401,'2015-08-21 23:09:27','2014-06-02 19:40:11','2015-08-21 23:36:29','129e834a-bdc8-45f7-9b31-a10f00536d31'),(73,1,1,'drc.jpg','image',1280,800,437095,'2015-08-21 23:09:33','2014-08-05 16:53:32','2015-08-21 23:36:28','c16fc690-b296-4df3-8e12-25f54a16908d'),(75,1,1,'del.png','image',1200,600,1229858,'2015-08-20 20:31:28','2014-09-06 17:33:42','2015-08-21 23:36:28','8980f3a4-41cd-418e-ad22-7103f5fad5a7'),(172,1,1,'answerals.jpg','image',1280,800,209986,'2015-08-21 23:10:13','2015-08-20 20:33:10','2015-08-21 23:36:27','7ffa29b3-dc0c-4d0c-b487-2d5f97e4b91d'),(173,1,1,'gasparian_immigration.png','image',1200,600,1001990,'2015-08-20 20:31:32','2015-08-20 20:33:12','2015-08-21 23:36:29','40f6ce74-531f-4023-a882-80a55b04fe6c'),(174,1,1,'re.jpg','image',1280,800,352337,'2015-08-21 23:14:11','2015-08-20 20:33:13','2015-08-21 23:36:31','7284db06-0f64-4b7e-b757-26f8ce1c3532'),(211,1,1,'del.jpg','image',1280,800,493159,'2015-08-21 23:13:58','2015-08-21 23:11:45','2015-08-21 23:36:28','b2db5335-29d0-4995-936f-eb83d7f7ba2a'),(212,1,1,'gasparian.jpg','image',1280,800,310297,'2015-08-21 23:10:24','2015-08-21 23:11:46','2015-08-21 23:36:29','53255640-46b0-496b-97ea-9d0aa0a12251');
/*!40000 ALTER TABLE `craft_assetfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_assetfolders`
--

DROP TABLE IF EXISTS `craft_assetfolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetfolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  KEY `craft_assetfolders_parentId_fk` (`parentId`),
  KEY `craft_assetfolders_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetfolders`
--

LOCK TABLES `craft_assetfolders` WRITE;
/*!40000 ALTER TABLE `craft_assetfolders` DISABLE KEYS */;
INSERT INTO `craft_assetfolders` VALUES (1,NULL,1,'Project Images','','2013-09-20 17:56:10','2013-09-20 17:56:10','50c2f850-3a72-4f98-b711-5bbb06a819d3');
/*!40000 ALTER TABLE `craft_assetfolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_assetindexdata`
--

DROP TABLE IF EXISTS `craft_assetindexdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(11) NOT NULL,
  `offset` int(11) NOT NULL,
  `uri` text COLLATE utf8_unicode_ci,
  `size` bigint(20) unsigned DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  KEY `craft_assetindexdata_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetindexdata`
--

LOCK TABLES `craft_assetindexdata` WRITE;
/*!40000 ALTER TABLE `craft_assetindexdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_assetindexdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_assetsources`
--

DROP TABLE IF EXISTS `craft_assetsources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assetsources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  UNIQUE KEY `craft_assetsources_handle_unq_idx` (`handle`),
  KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assetsources`
--

LOCK TABLES `craft_assetsources` WRITE;
/*!40000 ALTER TABLE `craft_assetsources` DISABLE KEYS */;
INSERT INTO `craft_assetsources` VALUES (1,25,'Project Images','projectImages','Local','{\"path\":\".\\/public\\/uploads\\/projectImages\\/\",\"url\":\"\\/public\\/uploads\\/projectImages\\/\",\"publicURLs\":true}',1,'2013-09-20 17:56:10','2016-09-19 17:15:07','adaebf9a-0846-4efe-afde-f1121c1c2fd8');
/*!40000 ALTER TABLE `craft_assetsources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_assettransformindex`
--

DROP TABLE IF EXISTS `craft_assettransformindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assettransformindex`
--

LOCK TABLES `craft_assettransformindex` WRITE;
/*!40000 ALTER TABLE `craft_assettransformindex` DISABLE KEYS */;
INSERT INTO `craft_assettransformindex` VALUES (1,44,'elisio.jpg',NULL,'_slider',1,1,0,'2015-08-21 23:36:35','2015-08-21 23:36:35','2015-08-21 23:36:37','2a828cd2-7d17-405d-8963-1d023335dcc4'),(2,174,'re.jpg',NULL,'_slider',1,1,0,'2015-08-21 23:36:35','2015-08-21 23:36:35','2015-08-21 23:36:37','8750f4d6-4d95-4313-8f07-a420048c50bc'),(3,48,'mottomoto.jpg',NULL,'_slider',1,1,0,'2015-08-21 23:36:35','2015-08-21 23:36:35','2015-08-21 23:36:37','861d1c9c-e1ae-4209-a129-0799c6e79b11'),(4,42,'commerce.jpg',NULL,'_slider',1,1,0,'2015-08-21 23:36:35','2015-08-21 23:36:35','2015-08-21 23:36:37','2da09c0e-234e-4445-b46b-32ce7eff3f85'),(5,65,'ederle.jpg',NULL,'_slider',1,1,0,'2015-08-21 23:38:24','2015-08-21 23:38:24','2015-08-21 23:43:30','ec69d8e7-4fe2-4249-a3c3-536150d8126a'),(6,50,'saintemarie.jpg',NULL,'_slider',1,1,0,'2015-08-21 23:38:25','2015-08-21 23:38:25','2015-08-21 23:42:28','6bde9187-f577-4bea-950d-94ae6e018826'),(7,212,'gasparian.jpg',NULL,'_slider',1,1,0,'2015-08-21 23:38:25','2015-08-21 23:38:25','2015-08-21 23:38:29','683fa1d0-1cb1-4fed-ba7a-42870a5a2051'),(8,73,'drc.jpg',NULL,'_slider',1,1,0,'2015-08-21 23:38:25','2015-08-21 23:38:25','2015-08-21 23:38:29','03e084af-d189-44d3-a68b-0829f443452e'),(9,71,'hafa.jpg',NULL,'_slider',1,1,0,'2015-08-21 23:38:27','2015-08-21 23:38:27','2015-08-21 23:38:29','0f7be23b-da0a-4d85-8386-58170c3f6772'),(10,70,'damndog.jpg',NULL,'_slider',1,1,0,'2015-08-21 23:38:27','2015-08-21 23:38:27','2015-08-21 23:38:29','b004a8d3-0216-4917-b710-b492737590b5'),(11,211,'del.jpg',NULL,'_slider',1,1,0,'2015-08-21 23:39:17','2015-08-21 23:39:17','2015-08-21 23:39:18','29f30d72-9f58-4f39-8d79-e9d84956270a'),(12,68,'linensense.jpg',NULL,'_slider',1,1,0,'2015-08-21 23:39:17','2015-08-21 23:39:17','2015-08-21 23:39:18','c1ee8146-5a46-481c-98cc-58526d998aad'),(13,172,'answerals.jpg',NULL,'_slider',1,1,0,'2015-08-21 23:39:17','2015-08-21 23:39:17','2015-08-21 23:39:18','73b856aa-42f6-4c6a-ab6e-e1ab7c4ea0de'),(14,43,'collegiate.jpg',NULL,'_slider',1,1,0,'2015-08-21 23:40:33','2015-08-21 23:40:33','2015-08-21 23:40:34','4a9c8123-158a-4b87-b77c-926210cb3334'),(15,45,'hannah.jpg',NULL,'_slider',1,1,0,'2015-08-21 23:40:33','2015-08-21 23:40:33','2015-08-21 23:40:34','7cd42ff3-8c17-410f-b61d-cfab6360a0e9'),(16,41,'america.jpg',NULL,'_slider',1,1,0,'2015-08-21 23:43:29','2015-08-21 23:43:29','2015-08-21 23:43:30','c272ad3e-01e4-4fce-a431-15da98e282a2');
/*!40000 ALTER TABLE `craft_assettransformindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_assettransforms`
--

DROP TABLE IF EXISTS `craft_assettransforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_assettransforms`
--

LOCK TABLES `craft_assettransforms` WRITE;
/*!40000 ALTER TABLE `craft_assettransforms` DISABLE KEYS */;
INSERT INTO `craft_assettransforms` VALUES (1,'Slider','slider','crop','top-left',800,1280,NULL,60,'2015-08-20 18:02:06','2015-08-20 17:51:04','2016-09-19 17:15:07','8697c307-81a7-4d01-9fa4-0837e716005d');
/*!40000 ALTER TABLE `craft_assettransforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_categories`
--

DROP TABLE IF EXISTS `craft_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_categories_groupId_fk` (`groupId`),
  CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_categories`
--

LOCK TABLES `craft_categories` WRITE;
/*!40000 ALTER TABLE `craft_categories` DISABLE KEYS */;
INSERT INTO `craft_categories` VALUES (77,1,'2015-08-20 19:05:13','2015-08-21 16:06:22','4c7d0234-b9a6-4e64-bd5b-2f4ad28fe109'),(78,1,'2015-08-20 19:05:27','2015-08-21 16:07:01','3b86f4bc-69c5-4e25-b692-1f14594e77ec'),(79,1,'2015-08-20 19:06:03','2015-08-21 16:07:40','33b7d275-3d74-40f7-8f38-7dee4cd0ddc5'),(80,1,'2015-08-20 19:06:10','2015-08-21 16:08:44','a94c6ded-9e37-41b7-88fb-1388fe57154b'),(81,1,'2015-08-20 19:06:20','2015-08-21 16:09:39','49efb9b4-4d2c-4953-8a1e-3aa7f13eafb3'),(210,1,'2015-08-21 16:04:47','2015-08-21 16:04:47','c961ffbe-d66c-44bf-8096-83ab1c6831be');
/*!40000 ALTER TABLE `craft_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_categorygroups`
--

DROP TABLE IF EXISTS `craft_categorygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  KEY `craft_categorygroups_structureId_fk` (`structureId`),
  KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_categorygroups`
--

LOCK TABLES `craft_categorygroups` WRITE;
/*!40000 ALTER TABLE `craft_categorygroups` DISABLE KEYS */;
INSERT INTO `craft_categorygroups` VALUES (1,1,19,'Project Categories','projectCategories',1,'views/projects','2015-08-20 19:04:57','2015-08-20 19:08:35','10b5db75-098d-42e6-9757-13b1178c85d6');
/*!40000 ALTER TABLE `craft_categorygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_categorygroups_i18n`
--

DROP TABLE IF EXISTS `craft_categorygroups_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  KEY `craft_categorygroups_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_categorygroups_i18n`
--

LOCK TABLES `craft_categorygroups_i18n` WRITE;
/*!40000 ALTER TABLE `craft_categorygroups_i18n` DISABLE KEYS */;
INSERT INTO `craft_categorygroups_i18n` VALUES (1,1,'en_us','projects/category/{slug}','{parent.uri}/{slug}','2015-08-20 19:04:57','2015-08-20 19:04:57','c42fb6d7-5607-4bfa-b9f6-de9db1a61224');
/*!40000 ALTER TABLE `craft_categorygroups_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_content`
--

DROP TABLE IF EXISTS `craft_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_heading` text COLLATE utf8_unicode_ci,
  `field_body` text COLLATE utf8_unicode_ci,
  `field_subcontract` text COLLATE utf8_unicode_ci,
  `field_projectLink` text COLLATE utf8_unicode_ci,
  `field_aboutText` text COLLATE utf8_unicode_ci,
  `field_services` text COLLATE utf8_unicode_ci,
  `field_contemporaries` text COLLATE utf8_unicode_ci,
  `field_contact` text COLLATE utf8_unicode_ci,
  `field_networks` text COLLATE utf8_unicode_ci,
  `field_location` text COLLATE utf8_unicode_ci,
  `field_categoryShortName` text COLLATE utf8_unicode_ci,
  `field_categoryDescription` text COLLATE utf8_unicode_ci,
  `field_featuredProject` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_content_title_idx` (`title`),
  KEY `craft_content_locale_fk` (`locale`),
  CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_content`
--

LOCK TABLES `craft_content` WRITE;
/*!40000 ALTER TABLE `craft_content` DISABLE KEYS */;
INSERT INTO `craft_content` VALUES (1,2,'en_us','Homepage','Welcome to Dev.vectorliving.com!','<p>\r\n	  New Orleans centric interaction developer with roots and connections in the mid-west, Chicagoland, and parts unknown. Comprised primarily of carbon, oxygen, hydrogen, and awesome; eclipsing 14 years of experience designing, developing, and implementing web solutiona, online media, and marketing. </p>',NULL,NULL,'<p>Uptown New Orleans based interaction developer and designer working with clients to develop bespoke web solutions. I have practical knowledge and working experience creating device agnostic layouts websites & custom content management solutions to suit your needs. Take a look at some of my featured work below or <a href=\"mailto:me@allankukral.com\">email me now</a>.</p>','<ul class=\"columns\">\r\n	<li>Expression Engine CMS</li><li>Craft CMS</li><li>Twig Templating</li><li>Shopify eCommerce</li><li>Big Commerce eCommerce</li><li>Big Cartel eCommerce</li><li>Advanced HTML(5) and CSS(3)</li><li>Javascript & JS Frameworks</li><li>Responsive Website Design</li><li>Rapid Prototyping</li><li>Interaction Design</li><li>User Experience</li><li>Content Management & Development</li><li>Email Marketing</li><li>Search Engine Optimization</li><li>Analytics & Reporting</li><li>eCommerce & Shopping</li></ul>','<ul class=\"columns\">\r\n	<li><a href=\"http://www.ryansievert.com/\">Ryan Sievert</a></li>\r\n	<li><a href=\"http://jasonhammeldesign.com/\">Jason Hammel Design</a></li>\r\n	<li><a href=\"http://annunciate.org/\">Annunciation Interactive</a></li>\r\n	<li><a href=\"http://20bs.com/\">Benjamin Seyna</a></li>\r\n	<li><a href=\"http://www.weareconstance.org/\">Constance</a></li>\r\n	<li><a href=\"mailto:jack@valencetechsolutions.com\">Valence Street</a></li><li><a href=\"http://www.awarecopywriting.com/\">Aware Copywriting</a></li>\r\n	<li><a href=\"http://www.iamalwayshungry.com\">IAmAlwaysHungry</a></li>\r\n</ul>','<p>\r\n	 allan kukral<br>\r\n	                      4928 prytania St., apt. #3<br>\r\n	                      new orleans, la, 70115</p><p>(815) 302-3429</p><p>\r\n	 <a href=\"mailto:me@allankukral.com\">me@allankukral.com</a></p>','<p>\r\n	<i class=\"fa fa-twitter icon-fixed-width text-center\"></i> <a href=\"https://twitter.com/allankukral\">twitter</a><br>\r\n	<i class=\"fa fa-facebook icon-fixed-width text-center\"></i> <a href=\"http://www.facebook.com/akukral\">facebook</a><br>\r\n	<i class=\"fa fa-pinterest icon-fixed-width text-center\"></i> <a href=\"http://pinterest.com/allankukral/\">pinterest</a><br>\r\n	<i class=\"fa fa-instagram icon-fixed-width text-center\"></i> <a href=\"http://instagram.com/allankukral#\">instagram</a><br>\r\n	<i class=\"fa fa-linkedin icon-fixed-width text-center\"></i> <a href=\"http://www.linkedin.com/in/allankukral\">linkedin</a><br>\r\n	<i class=\"fa fa-stack-overflow icon-fixed-width text-center\"></i> <a href=\"http://stackoverflow.com/users/1766502/allan-kukral\">stack overflow</a><br>\r\n	<i class=\"fa fa-github-alt icon-fixed-width text-center\"></i> <a href=\"https://github.com/akukral\">github</a>\r\n	<!-- <a href=\"http://www.linkedin.com/in/allankukral\"><i class=\"fa fa-bitbucket\"></i> bitbucket</a> --></p>','<p>\r\n	<img src=\"http://dev.vectorliving.com/images/projectImages/map.gif\"></p>',NULL,NULL,0,'2013-09-20 17:28:29','2015-08-22 16:04:58','59a40ebd-0a48-4ac0-a3fd-9f6723a06b4c'),(5,6,'en_us','5thfloor',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2013-09-20 18:54:33','2015-08-21 23:36:26','c7f79d1f-c5de-4164-944d-cad77d7e8653'),(38,40,'en_us','annabondoc',NULL,'',NULL,NULL,'','','','','','',NULL,NULL,0,'2013-09-25 15:00:35','2015-08-21 23:36:26','9484cc73-4398-4788-b8f3-e27505f9203f'),(39,41,'en_us','america',NULL,'',NULL,NULL,'','','','','','',NULL,NULL,0,'2013-09-25 15:00:36','2015-08-21 23:36:26','d20b9f2f-883b-4891-9497-66285c8e84eb'),(40,42,'en_us','commerce',NULL,'',NULL,NULL,'','','','','','',NULL,NULL,0,'2013-09-25 15:00:37','2015-08-21 23:36:27','6c801941-113b-4356-9aeb-c61a59a24276'),(41,43,'en_us','collegiate',NULL,'',NULL,NULL,'','','','','','',NULL,NULL,0,'2013-09-25 15:00:38','2015-08-21 23:36:27','6a84be22-678a-44c5-9e31-0caa2928612b'),(42,44,'en_us','elisio',NULL,'',NULL,NULL,'','','','','','',NULL,NULL,0,'2013-09-25 15:00:39','2015-08-21 23:36:28','561de392-bb2f-4f4b-ad94-c4ce038b2112'),(43,45,'en_us','hannah',NULL,'',NULL,NULL,'','','','','','',NULL,NULL,0,'2013-09-25 15:00:40','2015-08-21 23:36:29','8733b72e-f365-456e-83a8-332bb23c0f5d'),(44,46,'en_us','madefirst',NULL,'',NULL,NULL,'','','','','','',NULL,NULL,0,'2013-09-25 15:00:41','2015-08-21 23:36:30','7d2b2615-57ed-48b5-9320-3ae80655aa73'),(45,47,'en_us','mmr',NULL,'',NULL,NULL,'','','','','','',NULL,NULL,0,'2013-09-25 15:00:42','2015-08-21 23:36:31','28f2676f-57b3-4486-b669-2701b5bc62bc'),(46,48,'en_us','mottomoto',NULL,'',NULL,NULL,'','','','','','',NULL,NULL,0,'2013-09-25 15:00:42','2015-08-21 23:36:31','a09f7749-3eb4-491d-86d5-8b1e1607bebf'),(47,49,'en_us','martinique',NULL,'',NULL,NULL,'','','','','','',NULL,NULL,0,'2013-09-25 15:00:43','2015-08-21 23:36:30','1574187a-2901-49d1-a017-096dca1c93bd'),(48,50,'en_us','saintemarie',NULL,'',NULL,NULL,'','','','','','',NULL,NULL,0,'2013-09-25 15:00:44','2015-08-21 23:36:31','6cf2e636-d7c6-4e77-a33e-5ed2a389a1ce'),(61,63,'en_us','map',NULL,'',NULL,NULL,'','','','','','',NULL,NULL,0,'2013-09-26 17:33:31','2015-08-21 23:36:30','c4bc041b-fe99-4cc6-86a7-aabc2435ced5'),(63,65,'en_us','ederle',NULL,'',NULL,NULL,'','','','','','',NULL,NULL,0,'2013-12-04 15:19:19','2015-08-21 23:36:28','47b3d630-214e-4b24-b66f-91abf01c5799'),(66,1,'en_us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2013-12-10 20:53:36','2014-04-28 00:30:11','74c34b32-d935-4a14-9a5d-d62d1d90b76c'),(67,39,'en_us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2013-12-10 20:53:36','2013-12-10 20:53:36','1e5e1ec1-07c5-4b52-96ad-f53af579dfc1'),(68,68,'en_us','linensense',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2014-03-31 23:28:57','2015-08-21 23:36:30','4498238a-ab47-4af0-8c96-705ee26f977c'),(70,70,'en_us','damndog',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2014-06-02 19:26:45','2015-08-21 23:36:27','365f3c45-3541-41cf-8412-248a455eb377'),(71,71,'en_us','hafa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2014-06-02 19:40:11','2015-08-21 23:36:29','58f79d14-3140-4edc-8a59-facb9f28d2c4'),(73,73,'en_us','drc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2014-08-05 16:53:32','2015-08-21 23:36:28','c65a8a96-e4aa-45fd-8df6-b1243d45340e'),(75,75,'en_us','del',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2014-09-06 17:33:42','2015-08-21 23:36:28','344cb3b6-7386-4ccd-86f2-5122bb0d53da'),(77,77,'en_us','Design',NULL,NULL,'[]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Design','Including mood boards, flats, branding, layout, page deisgn, or other services related to design.',0,'2015-08-20 19:05:13','2015-08-21 16:06:22','c47c942b-6b9e-4aaa-a8f5-677f03ad2e55'),(78,78,'en_us','Content Managment System',NULL,NULL,'[]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CMS','Dynamic content and site management for clients.',0,'2015-08-20 19:05:27','2015-08-21 16:07:01','5caa06a7-11af-4235-8387-dbcd4c1e18fa'),(79,79,'en_us','Javascript',NULL,NULL,'[]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'JS','Javascript, jQuery, Coffee Script, or interactive scripting.',0,'2015-08-20 19:06:02','2015-08-21 16:07:40','9a4c0e39-814d-4dbe-9495-ca2e0e338763'),(80,80,'en_us','HTML',NULL,NULL,'[]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HTML','Page templates and associeted template code. Also PHP and Twig.  ',0,'2015-08-20 19:06:10','2015-08-21 16:08:44','083acf31-05b1-4d69-b09d-5528d1a72846'),(81,81,'en_us','CSS',NULL,NULL,'[]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CSS','Cascading styles sheets, also including, LESS, SASS, BEM, and styles based languages.',0,'2015-08-20 19:06:20','2015-08-21 16:09:39','9f1ad1dd-fb5c-4a13-b1c1-4258bde3c3e3'),(152,152,'en_us','5thFloorCo',NULL,'<p>\r\n\r\n	        Responsive site and content management for a real estate development, acquisition, & asset management. Design by Jason Hammel.</p>','','http://5thFloorCo.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:07:31','2015-08-21 23:04:33','ed59e98a-c354-4755-a653-33c74cdfb444'),(153,153,'en_us','MMR Interiors',NULL,'<p>\r\r\n	Site build and cms for a NOLA Interior Designer. Designed by BirdieBirdie.</p>','[]','http://www.mmrinteriors.com/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:07:32','2015-08-20 20:07:32','c2af64bd-a47b-4658-a950-0d0de26207a9'),(154,154,'en_us','Anna Bondoc',NULL,'<p>\r\r\n	  Ecommerce built in Shopify for a handcut paper craft art studio.</p>','[]','http://www.annabondoc.com/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:07:32','2015-08-20 20:07:32','bb51c6b9-8709-4a92-918d-3ae1da49af77'),(155,155,'en_us','Made First',NULL,'<p>\r\n\r\n	Responsive site and content management for a full-service creative design and fabrication company. Design by Jason Hammel.</p>','','http://www.madefirst.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:07:32','2015-08-21 23:04:36','2605e803-6706-40bd-85af-3ee2cd787348'),(156,156,'en_us','Motto Moto',NULL,'<p>\r\n\r\n	WordPress site for a custom moto shop in Chicago. Designed by Ryan Sievert</p>','','http://www.mottomoto.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2015-08-20 20:07:32','2015-08-21 15:57:57','4d249fee-a15b-4c01-aaee-7971607b15cc'),(157,157,'en_us','Elisio Lofts',NULL,'<p>\r\n\r\n	Content management for a loft construction in the Bywater of New Orleans. Design by Jason Hammel.</p>','','http://www.elisiolofts.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2015-08-20 20:07:32','2015-08-21 15:57:18','414b8950-f219-480a-a53e-cd9b34fb4acd'),(158,158,'en_us','Hannah McCauley',NULL,'<p>\r\n\r\n	Design, responsive site & content managment for a caterer, chef, & food blogger.</p>','','http://www.hannahmccauley.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2015-08-20 20:07:32','2015-08-21 15:57:15','86f315a5-835c-4681-ac29-a7f250c4be18'),(159,159,'en_us','Collegiate Academies',NULL,'<p>\r\n\r\n	Designed by IAmAlwaysHungry and Jason Hammel, responsive site & content managment for a school system.</p>','','http://www.collegiateacademies.org',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2015-08-20 20:07:32','2015-08-21 15:57:10','c40b8f78-5183-4507-a181-aba39573ba69'),(160,160,'en_us','Sainte Marie Restaurant',NULL,'<p>\r\n\r\n	Responsive WordPress site for an upscale restaurant. Design by Jason Hammel.</p>','','http://www.stemarienola.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2015-08-20 20:07:32','2015-08-21 15:56:38','ce5f1b6d-768d-4d4f-9941-4e2553e3c2a4'),(161,161,'en_us','The America Bldg',NULL,'<p>\r\n\r\n	Responsive site and content managment for a loft style rentals. Design by Jason Hammel.</p>','','http://www.theamericabldg.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2015-08-20 20:07:32','2015-08-21 23:35:11','d7a57ca3-05d7-4cc1-8cb2-66872ee5f909'),(162,162,'en_us','The Commerce Bldg',NULL,'<p>\r\n\r\n	Full bleed mobile friendly animating landing page. Design by Jason Hammel.</p>','','http://thecommercebldg.com/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2015-08-20 20:07:32','2015-08-21 15:56:28','edcade9b-7a7a-4337-a85a-f5766d89addc'),(163,163,'en_us','Ederle',NULL,'<p>Big Cartel Ecommerce store. Designed by Zimmer Design.</p>','[\"true\"]','http://ederle.co',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2015-08-20 20:07:32','2015-08-21 15:54:59','9633befa-1ac9-465a-b88c-beb7ceb77b8f'),(164,164,'en_us','DamnDog',NULL,'<p>Shopify ecommerce design and build.</p>','[\"true\"]','http://damndoghq.com/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2015-08-20 20:07:32','2015-08-21 15:54:52','9b3b5650-b2f6-4712-bcad-d4bd9ed2cc79'),(165,165,'en_us','Linensense',NULL,'<p>Promotional website for Linens (book). Built in ExpressionEngine. Designed by Jason Hammel</p>','','http://www.linensense.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2015-08-20 20:07:32','2015-08-21 15:54:44','4ed6cefe-523d-45ca-93e3-fd701532729e'),(166,166,'en_us','Healthier Air For All',NULL,'<p>CMS and build. Designed by Trumpet Group. </p>','[\"true\"]','http://www.healthierairforall.org',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2015-08-20 20:07:32','2015-08-21 15:54:04','162606c4-cd5f-457e-97fd-a90e64c55a70'),(167,167,'en_us','DRC Emergency Services',NULL,'<p>Craft CMS, HTML, CSS, JS support build for Trumpet Group.</p>','[\"true\"]','http://drcemergencyservices.net',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2015-08-20 20:07:33','2015-08-21 15:53:36','48c55574-7bc2-4c96-a732-0b4ba0873d42'),(168,168,'en_us','Del Fuego Taqueria',NULL,'<p>Craft CMS and web design for Mexican restaurant. </p>','','http://www.delfuegotaqueria.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2015-08-20 20:07:33','2015-08-21 23:13:08','14db55b8-5126-41af-9aad-e161a950e4e0'),(169,169,'en_us','Re: Chiropractic + Wellness',NULL,'<p>Craft CMS, HTML, CSS, JS build for a wellness clinic. Designed by Zimmer Design.</p>','','http://www.rechiropractic.com/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2015-08-20 20:07:33','2015-08-21 15:52:40','487f76a2-cdf5-481e-99dc-6270fc5a492c'),(170,170,'en_us','Answer ALS',NULL,'<p>Craft CMS, HTML, CSS, JS. Build for Trumpet Group and AnswerALS.</p>','[\"true\"]','http://answerals.org',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2015-08-20 20:07:33','2015-08-21 15:52:33','c02d393f-cddc-4b70-a6c0-ff0fb9c067d3'),(171,171,'en_us','Gasparian Immigration',NULL,'<p>Branding, design, HTML, CSS and CraftCMS for an Immigration Attorney.</p>','','http://gasparianimmigration.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2015-08-20 20:07:33','2015-08-21 23:12:18','a284241b-e8c4-4562-9357-d3dadddc9090'),(172,172,'en_us','answerals',NULL,NULL,'[]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:33:10','2015-08-21 23:36:27','63d1ca98-0f42-4adf-bb9f-369e29c387b9'),(173,173,'en_us','gasparian immigration',NULL,NULL,'[]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:33:12','2015-08-21 23:36:29','6264ad3c-8fa1-447b-a6bb-eaab9fd78454'),(174,174,'en_us','re',NULL,NULL,'[]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:33:13','2015-08-21 23:36:31','3a2e5a1d-c867-4c05-9f94-73f6ee4a704e'),(175,175,'en_us','Cox Communications',NULL,'<p>\r\n	Email design and promotional landing page designs.\r\n</p>','[]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','052dc44a-6170-4ef0-bd5c-c46e185a5d95'),(176,176,'en_us','Wenner Media',NULL,'<p>\r\n	Us Weekly, Men\'s Journal, and Rolling Stone email design and development.\r\n</p>','[]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','9583a222-17bf-4b2a-b442-4d7f28fa44bc'),(177,177,'en_us','The Week Daily',NULL,'<p>\r\n	Site development, content curation, site design. CSS and HTML.\r\n</p>','[]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','ffb42880-cd67-4d3c-ba77-6b8a286e34ef'),(178,178,'en_us','Historic New Orleans Collection',NULL,'<p>\r\r\n	 Interaction design and development.\r\r\n</p>','[\"true\"]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','43e19ec9-673c-4aad-b0d8-84bc5e23cd32'),(179,179,'en_us','Greater New Orleans Foundation',NULL,'<p>\r\r\n	 Design, development and content management system.\r\r\n</p>','[\"true\"]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','1329ef93-3bd7-4ed0-a40e-77efb50cbde8'),(180,180,'en_us','Sucre',NULL,'<p>\r\r\n	 Interaction design and development.\r\r\n</p>','[\"true\"]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','10b2c7e6-3eee-40ec-bbe3-eeb56aabb8e1'),(181,181,'en_us','Make Buzz',NULL,'<p>\r\r\n	 Interaction design and development.\r\r\n</p>','[\"true\"]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','70739c60-dfe6-4d0b-8232-025429ca643b'),(182,182,'en_us','Cowen Institute',NULL,'<p>\r\r\n	 Interaction design and development.\r\r\n</p>','[\"true\"]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','cad043b9-c809-436b-a7c6-ebfa784ec923'),(183,183,'en_us','Waveland City',NULL,'<p>\r\r\n	 Interaction design and development.\r\r\n</p>','[\"true\"]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','a8c0fda5-571b-4aec-a002-711d23f4e680'),(184,184,'en_us','Lakeside Camera Works',NULL,'<p>\r\r\n	 Interaction design, development and content management system.\r\r\n</p>','[\"true\"]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','10644b85-22e8-4121-b2be-b07f42b77067'),(185,185,'en_us','Hartwig Moss Benefits',NULL,'<p>\r\r\n	 Interaction design and development.\r\r\n</p>','[\"true\"]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','e1fa34c9-3752-4231-9c4a-c0c8faada841'),(186,186,'en_us','Global Green',NULL,'<p>\r\r\n	 Interaction design and development.\r\r\n</p>','[\"true\"]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','28cc91c9-e714-4519-a62b-ee6932009471'),(187,187,'en_us','Southern Candy Makers',NULL,'<p>\r\n	Interaction design and development.\r\n</p>','[\"true\"]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','cf93f9f4-6159-4d76-b9cc-3f967139dc08'),(188,188,'en_us','Oreck',NULL,'<p>\r\n	Interaction design and development.\r\n</p>','[\"true\"]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','7fa6a6f6-c9b7-4ecc-ba8e-af0c4ed51bee'),(189,189,'en_us','Resturant Cuvee',NULL,'<p>\r\n	Interaction design and development.\r\n</p>','[\"true\"]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','d51f8fc3-6302-44bb-8de1-e68f9dc92cc4'),(190,190,'en_us','Customized Nutrition Newsletters',NULL,'<p>\r\n	Interaction design and development.\r\n</p>','[]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','2d75fa9d-e387-4e16-b722-a8b1e42bd359'),(191,191,'en_us','Azby\'s',NULL,'<p>\r\r\n	 Interaction design, development and Shopify ecommerce.\r\r\n</p>','[]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','7d229427-8fd6-4b35-a345-17ff7cc48cc3'),(192,192,'en_us','American Haberdasher',NULL,'<p>\r\r\n	Branding, interaction design, development, and Shopify ecommerce.</p>','[]','http://amhaberdasher.com/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','6a7e54ee-586a-4564-bc3d-8d57fcfa6bf5'),(193,193,'en_us','East Jefferson General Hospital',NULL,'<p>\r\n	Interaction design and development.\r\n</p>','[]','http://www.ejgh.org/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','247fe8b4-2605-4a6f-8c34-9035cdb013a4'),(194,194,'en_us','Vermillion Style',NULL,'<p>\r\n	Interaction design, development, and content management.\r\n</p>','[]','http://www.vermillionstyle.com/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','d7bd21cc-187c-4c19-839a-795cad62f14c'),(195,195,'en_us','Moon & Lola',NULL,'<p>\r\n	Interaction design, development, and Shopify ecommerce.\r\n</p>','[]','http://www.moonandlola.com/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','10373d52-5094-4e8e-9a6c-fdf791d5b28b'),(196,196,'en_us','Talley-Ho Design',NULL,'<p>\r\n	Interaction design, development, and content management system.\r\n</p>','[]','http://talleyhodesign.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','05b3fe8b-9a13-4e06-9e11-e15952ea42a0'),(197,197,'en_us','Leontine Linens',NULL,'<p>\r\n	Interaction design, development, and content management system.\r\n</p>','[]','http://www.leontinelinens.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','24271449-4a7b-4db9-a269-ec0fc84bfef0'),(198,198,'en_us','The Marketing Center',NULL,'<p>\r\r\n	Interaction design, development, and a content management system.</p>','[]','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','8d976359-b604-49c9-8f01-e894b2530ab1'),(199,199,'en_us','Film Compound',NULL,'<p>\r\n	Interaction development\r\n</p>','[\"true\"]','http://www.filmcompound.com/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','1f5a6a08-5c51-493d-b743-fba299c6d448'),(200,200,'en_us','Sci Academy',NULL,'<p>\r\n	Interaction design, development, and content management system.\r\n</p>','[]','http://www.sciacademy.org',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','dbfc83b1-21af-4cb0-890b-cfba4f7ad979'),(201,201,'en_us','Carver Prep School',NULL,'<p>\r\n	Interaction design, development, and content management system.\r\n</p>','[]','http://www.carverprep.org',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','aa1d0e21-786c-4afe-a919-51cf17c23db0'),(202,202,'en_us','Carver Collegiate School',NULL,'<p>\r\n	Interaction design, development, and content management system.\r\n</p>','[]','http://www.carvercollegiate.org',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','e8c7c7e3-853f-4d5e-8dfb-6ecf2a66a886'),(203,203,'en_us','Sievert Works',NULL,'<p>\r\r\n	Interaction development and content management system. Design by Ryan Sievert.</p>','[]','http://www.sievertworks.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','70f5db72-706e-491a-9d9e-be6a0606312e'),(204,204,'en_us','The Receivables Exchange',NULL,'<p>\r\r\n	 Interaction development and content management system.\r\r\n</p>','[]','http://www.receivablesxchange.com/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','69c02dcd-bf77-4bac-a284-66e4830fd176'),(205,205,'en_us','Martinique Bistro',NULL,'<p>\r\r\n	 Design, responsive site & content management for a renown local bistro.</p>','[]','http://www.martiniquebistro.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','9d09455e-7e4d-4480-a0f8-c7b773da2cda'),(206,206,'en_us','The Carter Bldg',NULL,'<p>\r\r\n	Responsive site and content management for a loft style rentals. Design by Jason Hammel.</p>','[]','http://www.thecarterbldg.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','65696618-4076-4827-ab3b-ef4961e17737'),(207,207,'en_us','Hub City Lofts',NULL,'<p>\r\r\n	Landing page for a loft style rentals. Design by Jason Hammel.</p>','[]','http://www.hubcitylofts.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','86402f12-e59f-4a2d-9171-10618b476cfb'),(208,208,'en_us','Dick and Jenny\'s Restaurant',NULL,'<p>Design, responsive site and content management for a renown local bistro. </p>','[]','http://www.dickandjennys.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:31','2015-08-20 20:48:31','6911a3f0-350e-4cf0-ad7b-a244cc6df316'),(209,209,'en_us','New Orleans City Park',NULL,'<p>ExpressionEngine templates maintenance, search optimization and version control setup.  </p>','[\"true\"]','http://neworleanscitypark.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-20 20:48:31','2015-08-20 20:48:31','e024a6a7-3674-4a2b-b16c-cec894a72df3'),(210,210,'en_us','eCommerce',NULL,NULL,'[]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eCom','Ecommerce site component: e.g. Shopify, Big Commerce, Big Cartel, Magento, etc.',0,'2015-08-21 16:04:46','2015-08-21 16:04:46','5250024b-689a-4bf3-8678-8be82f36fbeb'),(211,211,'en_us','del',NULL,NULL,'[]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-21 23:11:45','2015-08-21 23:36:28','62760486-6555-48c5-956a-c6ed715d662a'),(212,212,'en_us','gasparian',NULL,NULL,'[]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2015-08-21 23:11:46','2015-08-21 23:36:29','cb5babff-86e3-4d5a-9cc7-7107e556995b');
/*!40000 ALTER TABLE `craft_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_deprecationerrors`
--

DROP TABLE IF EXISTS `craft_deprecationerrors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) unsigned NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) unsigned DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`)
) ENGINE=InnoDB AUTO_INCREMENT=6084 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_deprecationerrors`
--

LOCK TABLES `craft_deprecationerrors` WRITE;
/*!40000 ALTER TABLE `craft_deprecationerrors` DISABLE KEYS */;
INSERT INTO `craft_deprecationerrors` VALUES (6083,'PluginsService::method_hook_prefix','Craft\\PluginsService:548','2014-09-15 15:39:37','/nfs/c01/h16/mnt/320/domains/allankukral.com/craft/app/services/PluginsService.php',548,'Craft\\PluginsService','call',NULL,NULL,'The “hook” prefix on the Craft\\InspectorPlugin::hookAddTwigExtension() method name has been deprecated. It should be renamed to addTwigExtension().','[{\"objectClass\":\"Craft\\\\DeprecatorService\",\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/services\\/PluginsService.php\",\"line\":548,\"class\":\"Craft\\\\DeprecatorService\",\"method\":\"log\",\"args\":\"\\\"PluginsService::method_hook_prefix\\\", \\\"The \\u201chook\\u201d prefix on the Craft\\\\InspectorPlugin::hookAddTwigE...\\\"\"},{\"objectClass\":\"Craft\\\\PluginsService\",\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/services\\/TemplatesService.php\",\"line\":1269,\"class\":\"Craft\\\\PluginsService\",\"method\":\"call\",\"args\":\"\\\"addTwigExtension\\\"\"},{\"objectClass\":\"Craft\\\\TemplatesService\",\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/services\\/TemplatesService.php\",\"line\":160,\"class\":\"Craft\\\\TemplatesService\",\"method\":\"_addPluginTwigExtensions\",\"args\":\"Twig_Environment\"},{\"objectClass\":\"Craft\\\\TemplatesService\",\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/services\\/TemplatesService.php\",\"line\":216,\"class\":\"Craft\\\\TemplatesService\",\"method\":\"getTwig\",\"args\":null},{\"objectClass\":\"Craft\\\\TemplatesService\",\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/controllers\\/BaseController.php\",\"line\":87,\"class\":\"Craft\\\\TemplatesService\",\"method\":\"render\",\"args\":\"\\\"settings\\/plugins\\\", array()\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/controllers\\/TemplatesController.php\",\"line\":55,\"class\":\"Craft\\\\BaseController\",\"method\":\"renderTemplate\",\"args\":\"\\\"settings\\/plugins\\\", array()\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"settings\\/plugins\\\", array()\"},{\"objectClass\":\"ReflectionMethod\",\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/framework\\/web\\/actions\\/CAction.php\",\"line\":108,\"class\":\"ReflectionMethod\",\"method\":\"invokeArgs\",\"args\":\"Craft\\\\TemplatesController, array(\\\"settings\\/plugins\\\", array())\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/framework\\/web\\/actions\\/CInlineAction.php\",\"line\":47,\"class\":\"CAction\",\"method\":\"runWithParamsInternal\",\"args\":\"Craft\\\\TemplatesController, ReflectionMethod, array(\\\"p\\\" => \\\"admin\\/settings\\/plugins\\\", \\\"variables\\\" => array(), \\\"template\\\" => \\\"settings\\/plugins\\\")\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":308,\"class\":\"CInlineAction\",\"method\":\"runWithParams\",\"args\":\"array(\\\"p\\\" => \\\"admin\\/settings\\/plugins\\\", \\\"variables\\\" => array(), \\\"template\\\" => \\\"settings\\/plugins\\\")\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":286,\"class\":\"CController\",\"method\":\"runAction\",\"args\":\"CInlineAction\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":265,\"class\":\"CController\",\"method\":\"runActionWithFilters\",\"args\":\"CInlineAction, null\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":282,\"class\":\"CController\",\"method\":\"run\",\"args\":\"\\\"render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":141,\"class\":\"CWebApplication\",\"method\":\"runController\",\"args\":\"\\\"templates\\/render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/etc\\/web\\/WebApp.php\",\"line\":275,\"class\":\"CWebApplication\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/framework\\/base\\/CApplication.php\",\"line\":180,\"class\":\"Craft\\\\WebApp\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/index.php\",\"line\":35,\"class\":\"CApplication\",\"method\":\"run\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/html\\/index.php\",\"line\":15,\"class\":null,\"method\":\"require_once\",\"args\":\"\\\"\\/nfs\\/c01\\/h16\\/mnt\\/320\\/domains\\/allankukral.com\\/craft\\/app\\/index.php\\\"\"}]','2014-09-08 21:42:54','2014-09-15 15:39:37','a0d30af9-e906-4815-8de0-6ca548a966cd');
/*!40000 ALTER TABLE `craft_deprecationerrors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_elementindexsettings`
--

DROP TABLE IF EXISTS `craft_elementindexsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_elementindexsettings`
--

LOCK TABLES `craft_elementindexsettings` WRITE;
/*!40000 ALTER TABLE `craft_elementindexsettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_elementindexsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_elements`
--

DROP TABLE IF EXISTS `craft_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_elements_type_idx` (`type`),
  KEY `craft_elements_enabled_idx` (`enabled`),
  KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_elements`
--

LOCK TABLES `craft_elements` WRITE;
/*!40000 ALTER TABLE `craft_elements` DISABLE KEYS */;
INSERT INTO `craft_elements` VALUES (1,'User',1,0,'2013-09-20 17:28:27','2014-04-28 00:30:11','c05f6272-9f49-4afc-9d1a-1a891d054d84'),(2,'Entry',1,0,'2013-09-20 17:28:29','2015-08-22 16:04:58','c461da53-2f0a-4f96-957a-9011cbff9cfd'),(6,'Asset',1,0,'2013-09-20 18:54:33','2015-08-21 23:36:26','821fd304-c4c5-4b90-aae0-d5d0b944b110'),(39,'Asset',1,0,'2013-09-25 15:00:35','2013-09-25 15:00:35','fcdcebb8-cd1d-4212-b1df-1335609eccf6'),(40,'Asset',1,0,'2013-09-25 15:00:35','2015-08-21 23:36:26','e4ee9e99-1069-4a94-88d8-ed7172ecca9f'),(41,'Asset',1,0,'2013-09-25 15:00:36','2015-08-21 23:36:26','ef42adf2-59d2-4263-aaa2-bd2e1dd2206c'),(42,'Asset',1,0,'2013-09-25 15:00:37','2015-08-21 23:36:27','3f98f36c-a8da-4ced-a4ba-ef3061a7ca58'),(43,'Asset',1,0,'2013-09-25 15:00:38','2015-08-21 23:36:27','a396ff88-40f3-44f6-b459-eb450288f026'),(44,'Asset',1,0,'2013-09-25 15:00:39','2015-08-21 23:36:28','1ec030d8-683a-4160-8095-835f40951b8a'),(45,'Asset',1,0,'2013-09-25 15:00:40','2015-08-21 23:36:29','877ba777-ea9a-412a-9071-3f2503cdc80d'),(46,'Asset',1,0,'2013-09-25 15:00:41','2015-08-21 23:36:30','fb09cd4e-af1b-46e8-9605-78795078d9a1'),(47,'Asset',1,0,'2013-09-25 15:00:42','2015-08-21 23:36:31','40774197-a2c2-419b-8fd9-ce90c958d6c8'),(48,'Asset',1,0,'2013-09-25 15:00:42','2015-08-21 23:36:31','31a176ba-3a86-4eb1-b5ca-7a5ab9ac8fb2'),(49,'Asset',1,0,'2013-09-25 15:00:43','2015-08-21 23:36:30','ee34a64a-c6a9-49b1-bc6f-9672667d526a'),(50,'Asset',1,0,'2013-09-25 15:00:44','2015-08-21 23:36:31','27f9c739-888e-409c-84b3-b25c41c0c2ca'),(63,'Asset',1,0,'2013-09-26 17:33:31','2015-08-21 23:36:30','cb8fd6c3-c92b-4737-a9ae-171c27ef6bad'),(65,'Asset',1,0,'2013-12-04 15:19:19','2015-08-21 23:36:28','7cb28e4d-91fc-476b-9287-4942560a48dc'),(68,'Asset',1,0,'2014-03-31 23:28:57','2015-08-21 23:36:30','972a4637-b4c1-4e8c-8bf0-34e20da7f922'),(70,'Asset',1,0,'2014-06-02 19:26:45','2015-08-21 23:36:27','2b98c88e-114e-4f7e-a457-96845a64300f'),(71,'Asset',1,0,'2014-06-02 19:40:11','2015-08-21 23:36:29','deb6d213-1dbf-4863-81ce-3042b5739b1d'),(73,'Asset',1,0,'2014-08-05 16:53:32','2015-08-21 23:36:28','6aaa80c4-26b6-4d68-9d9e-07d260d41220'),(75,'Asset',1,0,'2014-09-06 17:33:42','2015-08-21 23:36:28','637b7cdb-e081-4e04-bad2-f018e01b46fd'),(77,'Category',1,0,'2015-08-20 19:05:13','2015-08-21 16:06:22','bbf2ef05-3291-48e8-934a-3aec9ee63c67'),(78,'Category',1,0,'2015-08-20 19:05:27','2015-08-21 16:07:01','db8af0da-dc21-4de3-aefe-922348a4c82c'),(79,'Category',1,0,'2015-08-20 19:06:02','2015-08-21 16:07:40','601365b6-6ae7-4b07-a368-f7fc6a7a4ca2'),(80,'Category',1,0,'2015-08-20 19:06:10','2015-08-21 16:08:44','07714e55-2fdd-417f-b21c-a5c1de7e2de3'),(81,'Category',1,0,'2015-08-20 19:06:20','2015-08-21 16:09:39','f725c94c-7fd6-4f54-8637-a5889c293fc1'),(152,'Entry',1,0,'2015-08-20 20:07:31','2015-08-21 23:04:33','965143a6-7e52-4d44-9290-649f8975f3d8'),(153,'Entry',1,0,'2015-08-20 20:07:32','2015-08-20 20:07:32','742ca321-5d83-4d83-abba-ca89ddb124df'),(154,'Entry',1,0,'2015-08-20 20:07:32','2015-08-20 20:07:32','07ba092d-b4d0-41b0-b501-8cb59ce69aa0'),(155,'Entry',1,0,'2015-08-20 20:07:32','2015-08-21 23:04:36','301f7737-147b-4cbc-be18-722068a6e86d'),(156,'Entry',1,0,'2015-08-20 20:07:32','2015-08-21 15:57:57','1238373d-5a3b-476b-bafe-88966e82a266'),(157,'Entry',1,0,'2015-08-20 20:07:32','2015-08-21 15:57:18','9dfd49f1-38e9-4bcd-aff8-727bac20f6a8'),(158,'Entry',1,0,'2015-08-20 20:07:32','2015-08-21 15:57:15','03f23794-28ad-4ed2-8ca8-acdae9d64ac6'),(159,'Entry',1,0,'2015-08-20 20:07:32','2015-08-21 15:57:10','7592017c-8ef2-49ba-8d0d-7dbeba7b6098'),(160,'Entry',1,0,'2015-08-20 20:07:32','2015-08-21 15:56:38','a340c63f-5d3f-4a3a-8ea0-80e8b1964eb1'),(161,'Entry',1,0,'2015-08-20 20:07:32','2015-08-21 23:35:11','e7af6764-c34e-4be5-b595-f6c8f84a8472'),(162,'Entry',1,0,'2015-08-20 20:07:32','2015-08-21 15:56:28','247b0c4b-5409-4f58-98f5-eed889b24452'),(163,'Entry',1,0,'2015-08-20 20:07:32','2015-08-21 15:54:59','43fa1b33-bafe-4fa2-8074-0b274caef303'),(164,'Entry',1,0,'2015-08-20 20:07:32','2015-08-21 15:54:52','36671595-6979-44d7-83d1-69b747353d50'),(165,'Entry',1,0,'2015-08-20 20:07:32','2015-08-21 15:54:44','ebcc1a55-610a-4f70-97c2-356c751815c1'),(166,'Entry',1,0,'2015-08-20 20:07:32','2015-08-21 15:54:04','a3030aa5-28cc-4857-8575-c0e074404506'),(167,'Entry',1,0,'2015-08-20 20:07:33','2015-08-21 15:53:36','bb345b75-faf1-4fa1-9727-5e75d488bf71'),(168,'Entry',1,0,'2015-08-20 20:07:33','2015-08-21 23:13:08','f742b7a7-8b1b-4073-a9d5-8be78c55e962'),(169,'Entry',1,0,'2015-08-20 20:07:33','2015-08-21 15:52:40','c9f986a3-83f3-4257-9232-8d97e5fa0f39'),(170,'Entry',1,0,'2015-08-20 20:07:33','2015-08-21 15:52:33','2470de2c-7626-4d46-ba92-ba9f07be42a6'),(171,'Entry',1,0,'2015-08-20 20:07:33','2015-08-21 23:12:18','5521c771-4baa-4345-82ed-9779449cdc64'),(172,'Asset',1,0,'2015-08-20 20:33:10','2015-08-21 23:36:27','bf0b9232-5ca6-4371-93f2-2979c689fab4'),(173,'Asset',1,0,'2015-08-20 20:33:12','2015-08-21 23:36:29','d4130ca0-ca4a-4030-8f9f-dfa68e969d20'),(174,'Asset',1,0,'2015-08-20 20:33:13','2015-08-21 23:36:31','d48f945d-e50a-4bf7-a08b-78c162351c0d'),(175,'Entry',1,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','39516755-cc3c-4219-8881-ee0c40b36408'),(176,'Entry',1,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','0fe9d740-a67a-4d77-8cca-35e2acdb1375'),(177,'Entry',1,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','49071324-3dd5-4337-935a-5dc5ed13d60c'),(178,'Entry',1,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','3314ec5f-3068-48a1-85b3-f9feb72c3c7b'),(179,'Entry',1,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','84ff7a04-219a-4edd-9967-dffc36637420'),(180,'Entry',1,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','8e19d50d-e18c-435d-a999-e5b75dd15dba'),(181,'Entry',1,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','ea5b2ac6-d917-494e-ac03-aa28e6bdd843'),(182,'Entry',1,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','6c6f6a31-5f2a-45ca-b1a5-6c2519b47849'),(183,'Entry',1,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','2da51c35-05ee-4ec9-9e69-e145709215aa'),(184,'Entry',1,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','c80905a7-5d73-46ac-aa5e-22e5a167b52b'),(185,'Entry',1,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','3ddb903b-5aca-45ba-9dc5-45c24ed4d765'),(186,'Entry',1,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','afc5249d-81a8-4ff0-b876-bd134d6cf59a'),(187,'Entry',1,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','d8d645f3-911f-4eea-8f12-377f84ad4311'),(188,'Entry',1,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','baf2423f-012a-43c9-a9f1-9d268e67e9e8'),(189,'Entry',1,0,'2015-08-20 20:48:29','2015-08-20 20:48:29','51fc4307-8872-4904-b455-43fc2e67c6dd'),(190,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','0db012b9-4f33-4c71-97b1-bc245cb45e03'),(191,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','19473f75-b8fa-4847-bd92-6dcb962db244'),(192,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','0bf37204-7a80-4f3c-9a23-188e90865820'),(193,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','f9726393-4332-4509-8807-3eddf3859719'),(194,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','38d31528-f26e-4364-8704-4bbbc3ad7dd5'),(195,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','aceb833d-22c0-49ea-b670-a5dbdca41467'),(196,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','3039e433-bc58-44fc-b5e9-9450d27ebc9c'),(197,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','f1968350-e3ff-4808-846e-a17efd81a0a8'),(198,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','e6233bb1-1177-4202-90fd-e0b706b2a5d5'),(199,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','4d4bdfbb-f63b-4923-9888-8cda959409e2'),(200,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','a5f8540c-cede-4f3b-ad6a-545ccd8f627f'),(201,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','38d79894-a9de-432d-a2f5-87d6a302b996'),(202,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','942e187f-e6a7-4e42-824e-620504e29d1c'),(203,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','e9ebad0c-dacf-43af-be5c-7a5a228674e6'),(204,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','d27abedf-9959-4495-8c74-164776e5ac7b'),(205,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','945f0237-09f7-4677-a5fc-d5f048fee6b9'),(206,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','399f07e2-eb6a-48c8-bbb4-1a8675ca2fe8'),(207,'Entry',1,0,'2015-08-20 20:48:30','2015-08-20 20:48:30','07e4729b-0e72-4aec-a73d-758cd8bf5142'),(208,'Entry',1,0,'2015-08-20 20:48:31','2015-08-20 20:48:31','11fba46e-933f-4df8-b806-07604ba08195'),(209,'Entry',1,0,'2015-08-20 20:48:31','2015-08-20 20:48:31','5990d53a-f528-40b1-885a-50148ae1dd82'),(210,'Category',1,0,'2015-08-21 16:04:46','2015-08-21 16:04:46','160a9724-f140-4e9b-b5c9-ecf18b5ffd64'),(211,'Asset',1,0,'2015-08-21 23:11:45','2015-08-21 23:36:28','3d122432-5382-4537-bbdc-fc8f2277c981'),(212,'Asset',1,0,'2015-08-21 23:11:46','2015-08-21 23:36:29','3aeab15e-a067-4fc1-9628-44efddcff827');
/*!40000 ALTER TABLE `craft_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_elements_i18n`
--

DROP TABLE IF EXISTS `craft_elements_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_elements_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  KEY `craft_elements_i18n_locale_fk` (`locale`),
  KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_elements_i18n`
--

LOCK TABLES `craft_elements_i18n` WRITE;
/*!40000 ALTER TABLE `craft_elements_i18n` DISABLE KEYS */;
INSERT INTO `craft_elements_i18n` VALUES (1,2,'en_us','homepage','__home__',1,'2013-09-20 17:28:29','2015-08-22 16:04:58','be2df6ed-6d63-4b54-b494-8e6af9347a39'),(52,1,'en_us','',NULL,1,'2013-12-10 20:53:36','2014-04-28 00:30:11','c3a330d7-a3e9-41d4-97a6-eaa22bb02243'),(53,6,'en_us','5thfloor',NULL,1,'2013-12-10 20:53:36','2015-08-21 23:36:26','821f8cf0-0307-42c1-a72f-6c591d01e32d'),(54,39,'en_us',NULL,NULL,1,'2013-12-10 20:53:36','2013-12-10 20:53:36','16f3c590-f714-4d3d-8262-f88c8a8d463d'),(55,40,'en_us','annabondoc',NULL,1,'2013-12-10 20:53:36','2015-08-21 23:36:26','5785d16d-95ea-4e8b-bda4-d72002871d63'),(56,41,'en_us','america',NULL,1,'2013-12-10 20:53:36','2015-08-21 23:36:26','3e980af7-6eed-43bd-b7f1-f3286327695b'),(57,42,'en_us','commerce',NULL,1,'2013-12-10 20:53:36','2015-08-21 23:36:27','233a9e51-f3ce-4559-ab7b-829ff2ae0380'),(58,43,'en_us','collegiate',NULL,1,'2013-12-10 20:53:36','2015-08-21 23:36:27','dfaca310-c31c-4126-b9f6-57a9d12ef795'),(59,44,'en_us','elisio',NULL,1,'2013-12-10 20:53:36','2015-08-21 23:36:29','2f4c83a2-07d0-4d46-b342-7444350ce53d'),(60,45,'en_us','hannah',NULL,1,'2013-12-10 20:53:36','2015-08-21 23:36:30','2985a624-a91e-4435-9642-7d467879f5ac'),(61,46,'en_us','madefirst',NULL,1,'2013-12-10 20:53:36','2015-08-21 23:36:30','cbcfad0e-207b-4a3f-ab2c-6aa987ff5b08'),(62,47,'en_us','mmr',NULL,1,'2013-12-10 20:53:36','2015-08-21 23:36:31','d3c0b9df-89ef-4137-a077-572632c1ce76'),(63,48,'en_us','mottomoto',NULL,1,'2013-12-10 20:53:36','2015-08-21 23:36:31','c88f4c2e-d315-48a5-9a84-749efdbff04c'),(64,49,'en_us','martinique',NULL,1,'2013-12-10 20:53:36','2015-08-21 23:36:30','e36371fb-471d-45f1-bca9-cf6cd94a3191'),(65,50,'en_us','saintemarie',NULL,1,'2013-12-10 20:53:36','2015-08-21 23:36:31','a1fb1905-4e27-4e7d-8f2b-8e0d8181aa7c'),(66,63,'en_us','map',NULL,1,'2013-12-10 20:53:36','2015-08-21 23:36:30','b5cdad20-0ef1-44a7-b2b2-e4a9ce0bdee0'),(67,65,'en_us','ederle',NULL,1,'2013-12-10 20:53:36','2015-08-21 23:36:28','8ecc744d-5b4c-4b78-a4ee-9699ed2217ca'),(69,68,'en_us','linensense',NULL,1,'2014-03-31 23:40:18','2015-08-21 23:36:30','1a81abd6-91e0-4232-a781-a597a8332415'),(70,70,'en_us','damndog',NULL,1,'2014-06-02 19:26:45','2015-08-21 23:36:27','da642696-14b0-4ace-b449-498d628a4b0b'),(71,71,'en_us','hafa',NULL,1,'2014-06-02 19:40:11','2015-08-21 23:36:29','4ec4b46c-9734-4c36-877a-7f7e37b9b750'),(73,73,'en_us','drc',NULL,1,'2014-08-05 16:53:32','2015-08-21 23:36:28','ae344fbe-5007-4a85-b0e9-81ac6ad06f64'),(75,75,'en_us','del',NULL,1,'2014-09-06 17:33:42','2015-08-21 23:36:28','246f0ce4-40c8-4340-92a7-bd92e1a870fe'),(77,77,'en_us','design','projects/category/design',1,'2015-08-20 19:05:13','2015-08-21 16:06:22','659cfc41-4ddd-4bfa-869e-82c5c6d4a6eb'),(78,78,'en_us','content-managment-system','projects/category/content-managment-system',1,'2015-08-20 19:05:27','2015-08-21 16:07:01','b0ac7f63-31b4-414a-8fa4-25af7f8cf4fc'),(79,79,'en_us','javascript','projects/category/javascript',1,'2015-08-20 19:06:03','2015-08-21 16:07:40','0ad0030c-9450-4811-ae8a-b63ff42545ae'),(80,80,'en_us','html','projects/category/html',1,'2015-08-20 19:06:10','2015-08-21 16:08:44','77759852-e31a-4d1b-80df-911edb37caaf'),(81,81,'en_us','css','projects/category/css',1,'2015-08-20 19:06:20','2015-08-21 16:09:39','a47a5903-e91b-40a2-83dc-0afcead71c99'),(152,152,'en_us','5thfloorco','projects/5thfloorco',1,'2015-08-20 20:07:31','2015-08-21 23:04:33','5bc602ef-6caa-4d9a-8ac3-0418f41949f7'),(153,153,'en_us','mmr-interiors','projects/mmr-interiors',1,'2015-08-20 20:07:32','2015-08-20 20:07:32','3ac65fb3-2421-4946-a553-013bb958eca3'),(154,154,'en_us','anna-bondoc','projects/anna-bondoc',1,'2015-08-20 20:07:32','2015-08-20 20:07:32','f6e46bcc-7071-44a7-b4e8-51bb5ff9ea9c'),(155,155,'en_us','made-first','projects/made-first',1,'2015-08-20 20:07:32','2015-08-21 23:04:36','29ad5af3-012f-47c4-83f0-d4116e217406'),(156,156,'en_us','motto-moto','projects/motto-moto',1,'2015-08-20 20:07:32','2015-08-21 15:57:57','e4f0cf17-8b10-4239-89a0-0c29aa499f5c'),(157,157,'en_us','elisio-lofts','projects/elisio-lofts',1,'2015-08-20 20:07:32','2015-08-21 15:57:18','e25f1cb3-3d19-43b4-a21c-1e207a936677'),(158,158,'en_us','hannah-mccauley','projects/hannah-mccauley',1,'2015-08-20 20:07:32','2015-08-21 15:57:15','7904fa6c-dfef-499b-9650-16dc302c5cbb'),(159,159,'en_us','collegiate-academies','projects/collegiate-academies',1,'2015-08-20 20:07:32','2015-08-21 15:57:11','a2b739de-32e0-4f54-8832-789e7f1d46da'),(160,160,'en_us','sainte-marie-restaurant','projects/sainte-marie-restaurant',1,'2015-08-20 20:07:32','2015-08-21 15:56:38','78cfdb44-4c9f-4835-80d1-ca580b94eadc'),(161,161,'en_us','the-america-bldg','projects/the-america-bldg',1,'2015-08-20 20:07:32','2015-08-21 23:35:11','946576cb-4bd8-4127-8ee6-d6e68bf1c31a'),(162,162,'en_us','the-commerce-bldg','projects/the-commerce-bldg',1,'2015-08-20 20:07:32','2015-08-21 15:56:28','8c78f12f-98d2-4d18-83fe-ce7b04bdeb44'),(163,163,'en_us','ederle','projects/ederle',1,'2015-08-20 20:07:32','2015-08-21 15:54:59','5d6a2810-9c77-4d40-9050-9eafa4786822'),(164,164,'en_us','damndog','projects/damndog',1,'2015-08-20 20:07:32','2015-08-21 15:54:52','53894512-98eb-4183-b5b5-f8e65c997dac'),(165,165,'en_us','linensense','projects/linensense',1,'2015-08-20 20:07:32','2015-08-21 15:54:44','5d99eba2-b409-4e48-a04d-64b7ca60d4f9'),(166,166,'en_us','healthier-air-for-all','projects/healthier-air-for-all',1,'2015-08-20 20:07:32','2015-08-21 15:54:04','cb5a0d27-9411-401b-8630-e933f313ee2c'),(167,167,'en_us','drc-emergency-services','projects/drc-emergency-services',1,'2015-08-20 20:07:33','2015-08-21 15:53:36','24c5d1e4-2dc5-464f-a25e-79d1f4c115e5'),(168,168,'en_us','del-fuego-taqueria','projects/del-fuego-taqueria',1,'2015-08-20 20:07:33','2015-08-21 23:13:08','f470f5ab-8e82-473c-b10b-1e368707a20c'),(169,169,'en_us','re-chiropractic-wellness','projects/re-chiropractic-wellness',1,'2015-08-20 20:07:33','2015-08-21 15:52:40','5b55d68b-8b88-448e-9019-4e34c8b29131'),(170,170,'en_us','answer-als','projects/answer-als',1,'2015-08-20 20:07:33','2015-08-21 15:52:33','2caa83a4-4baf-4020-9a18-b0a338adb93f'),(171,171,'en_us','gasparian-immigration','projects/gasparian-immigration',1,'2015-08-20 20:07:33','2015-08-21 23:12:18','8bdacbc4-385b-429c-94ad-9df77a2b5735'),(172,172,'en_us','answerals',NULL,1,'2015-08-20 20:33:10','2015-08-21 23:36:27','f11defff-7538-4ae1-9855-4eb16564c629'),(173,173,'en_us','gasparian-immigration',NULL,1,'2015-08-20 20:33:12','2015-08-21 23:36:29','2839c1b1-de60-429e-bbf5-e69f774467f2'),(174,174,'en_us','re',NULL,1,'2015-08-20 20:33:13','2015-08-21 23:36:31','d8dc19c3-51cc-4dc5-a167-ea4ff9db54e6'),(175,175,'en_us','cox-communications','projects/cox-communications',1,'2015-08-20 20:48:29','2015-08-20 20:48:29','2947cffe-487c-4d64-b42d-34fc86c38f30'),(176,176,'en_us','wenner-media','projects/wenner-media',1,'2015-08-20 20:48:29','2015-08-20 20:48:29','fc06bfda-7982-48bd-8846-92a24cda5c0d'),(177,177,'en_us','the-week-daily','projects/the-week-daily',1,'2015-08-20 20:48:29','2015-08-20 20:48:29','4553755a-4c3a-43e1-8ea8-2d1e17757235'),(178,178,'en_us','historic-new-orleans-collection','projects/historic-new-orleans-collection',1,'2015-08-20 20:48:29','2015-08-20 20:48:29','e0e28201-64f8-4a22-a711-4e13e182f692'),(179,179,'en_us','greater-new-orleans-foundation','projects/greater-new-orleans-foundation',1,'2015-08-20 20:48:29','2015-08-20 20:48:29','cfd74daa-df45-4f3a-b4ca-d8f9b7d22ef0'),(180,180,'en_us','sucre','projects/sucre',1,'2015-08-20 20:48:29','2015-08-20 20:48:29','15b990cd-546e-471c-aaf6-d13bc29d10fa'),(181,181,'en_us','make-buzz','projects/make-buzz',1,'2015-08-20 20:48:29','2015-08-20 20:48:29','bafac76e-ecd9-4f7c-b8e5-627211cac881'),(182,182,'en_us','cowen-institute','projects/cowen-institute',1,'2015-08-20 20:48:29','2015-08-20 20:48:29','38d2245a-35cf-487a-a2dc-95cdd39a4383'),(183,183,'en_us','waveland-city','projects/waveland-city',1,'2015-08-20 20:48:29','2015-08-20 20:48:29','fe907251-1a5b-4a9b-bd97-8fc5c1eedf01'),(184,184,'en_us','lakeside-camera-works','projects/lakeside-camera-works',1,'2015-08-20 20:48:29','2015-08-20 20:48:29','b9c2a781-f42c-41ca-adce-b28b761397b6'),(185,185,'en_us','hartwig-moss-benefits','projects/hartwig-moss-benefits',1,'2015-08-20 20:48:29','2015-08-20 20:48:29','1eeb7c62-7b96-48f8-a7fe-7b386d8e61f7'),(186,186,'en_us','global-green','projects/global-green',1,'2015-08-20 20:48:29','2015-08-20 20:48:29','0dea0401-5bd8-4cb6-92f8-49fa03d744d2'),(187,187,'en_us','southern-candy-makers','projects/southern-candy-makers',1,'2015-08-20 20:48:29','2015-08-20 20:48:29','34909cfe-0112-4b14-b8e0-65456d14cf13'),(188,188,'en_us','oreck','projects/oreck',1,'2015-08-20 20:48:29','2015-08-20 20:48:29','c7a04eb2-7527-4995-a87e-2d7de122ca93'),(189,189,'en_us','resturant-cuvee','projects/resturant-cuvee',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','55861742-4b70-4244-8ab6-03d3a2d57cc6'),(190,190,'en_us','customized-nutrition-newsletters','projects/customized-nutrition-newsletters',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','5b3eff1a-b4d7-449e-aca4-c30333d0186e'),(191,191,'en_us','azbys','projects/azbys',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','03ba3ccc-32a1-4421-a61a-4cf7956bac72'),(192,192,'en_us','american-haberdasher','projects/american-haberdasher',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','7b673b6b-095e-4bf5-8d7c-9e85cfaf0a3c'),(193,193,'en_us','east-jefferson-general-hospital','projects/east-jefferson-general-hospital',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','22700de6-bd68-4f31-b2fb-1354cd0536ce'),(194,194,'en_us','vermillion-style','projects/vermillion-style',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','000f79fb-5a5c-4904-a480-15ad98359dee'),(195,195,'en_us','moon-lola','projects/moon-lola',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','19657d06-e607-42ef-9683-000df7f3adc9'),(196,196,'en_us','talley-ho-design','projects/talley-ho-design',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','96bfeebc-3293-4b82-a303-240448f022c2'),(197,197,'en_us','leontine-linens','projects/leontine-linens',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','8aba6673-9f8a-45cd-b23e-b48434fcf14d'),(198,198,'en_us','the-marketing-center','projects/the-marketing-center',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','7e93987f-adc2-4f84-a23f-8588a1110c39'),(199,199,'en_us','film-compound','projects/film-compound',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','8933c79d-7de0-4287-b69d-08e31e257b56'),(200,200,'en_us','sci-academy','projects/sci-academy',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','4c936f8a-e80a-4acd-80aa-c34f83a5d145'),(201,201,'en_us','carver-prep-school','projects/carver-prep-school',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','e431366d-43c7-4cfa-81b5-35ccc1315424'),(202,202,'en_us','carver-collegiate-school','projects/carver-collegiate-school',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','815708da-3bc6-46f3-87bf-788979b33c5b'),(203,203,'en_us','sievert-works','projects/sievert-works',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','2d9bbb96-9000-459d-81df-2c95ce591db9'),(204,204,'en_us','the-receivables-exchange','projects/the-receivables-exchange',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','ba3bd8e3-0c59-41ed-b689-09ee4c0e2a33'),(205,205,'en_us','martinique-bistro','projects/martinique-bistro',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','dbc16431-cedc-4caa-9efd-ae224b1828ed'),(206,206,'en_us','the-carter-bldg','projects/the-carter-bldg',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','e435865a-7db6-4f4f-8779-5cfd81b1fb9f'),(207,207,'en_us','hub-city-lofts','projects/hub-city-lofts',1,'2015-08-20 20:48:30','2015-08-20 20:48:30','ef34f4db-6dc9-4af6-82e4-182dc644333b'),(208,208,'en_us','dick-and-jennys-restaurant','projects/dick-and-jennys-restaurant',1,'2015-08-20 20:48:31','2015-08-20 20:48:31','30074f2c-a54b-472b-aa2e-328f5f7135ba'),(209,209,'en_us','new-orleans-city-park','projects/new-orleans-city-park',1,'2015-08-20 20:48:31','2015-08-20 20:48:31','b9a97790-ab34-4a28-9513-e998391785b4'),(210,210,'en_us','ecommerce','projects/category/ecommerce',1,'2015-08-21 16:04:47','2015-08-21 16:04:48','87e5d472-b892-4052-bda2-29460f97f5b9'),(211,211,'en_us','del',NULL,1,'2015-08-21 23:11:45','2015-08-21 23:36:28','4cc0ed23-d6a7-4785-b1c6-aa0298129a69'),(212,212,'en_us','gasparian',NULL,1,'2015-08-21 23:11:46','2015-08-21 23:36:29','d1e1a933-d7c2-4b9c-b8d7-bba33678d562');
/*!40000 ALTER TABLE `craft_elements_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_emailmessages`
--

DROP TABLE IF EXISTS `craft_emailmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_emailmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  KEY `craft_emailmessages_locale_fk` (`locale`),
  CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_emailmessages`
--

LOCK TABLES `craft_emailmessages` WRITE;
/*!40000 ALTER TABLE `craft_emailmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_emailmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_entries`
--

DROP TABLE IF EXISTS `craft_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entries_sectionId_idx` (`sectionId`),
  KEY `craft_entries_typeId_idx` (`typeId`),
  KEY `craft_entries_postDate_idx` (`postDate`),
  KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  KEY `craft_entries_authorId_fk` (`authorId`),
  CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_entries`
--

LOCK TABLES `craft_entries` WRITE;
/*!40000 ALTER TABLE `craft_entries` DISABLE KEYS */;
INSERT INTO `craft_entries` VALUES (2,1,1,NULL,'2015-06-26 18:45:49',NULL,'2013-09-20 17:28:29','2015-08-22 16:04:58','80a0ec24-d9ba-444d-8f67-1e59d3c333a8'),(152,2,2,1,'2015-08-20 20:07:00',NULL,'2015-08-20 20:07:32','2015-08-21 23:04:33','5d372af9-ec2c-4805-b8d0-5d3dee2dc8cd'),(153,2,2,1,'2015-08-20 20:07:32',NULL,'2015-08-20 20:07:32','2015-08-20 20:07:32','4f414266-45ec-461e-9d23-05cbd780f423'),(154,2,2,1,'2015-08-20 20:07:32',NULL,'2015-08-20 20:07:32','2015-08-20 20:07:32','f385fbee-4de0-4238-9574-a32ea36f0a7e'),(155,2,2,1,'2015-08-20 20:42:00',NULL,'2015-08-20 20:07:32','2015-08-21 23:04:36','e1cc9dd3-b204-47d9-af34-a0afefa9f7dc'),(156,2,2,1,'2015-08-20 20:43:00',NULL,'2015-08-20 20:07:32','2015-08-21 15:57:57','2eed8172-c458-475b-a590-dec2ae5ad16f'),(157,2,2,1,'2015-08-20 20:44:00',NULL,'2015-08-20 20:07:32','2015-08-21 15:57:18','9136e264-e28e-4bcc-b2ba-35a141ce9a58'),(158,2,2,1,'2015-08-20 20:45:00',NULL,'2015-08-20 20:07:32','2015-08-21 15:57:15','d5c142cd-5d6d-44ca-a19e-a4cba74a4450'),(159,2,2,1,'2015-08-20 20:46:00',NULL,'2015-08-20 20:07:32','2015-08-21 15:57:11','2cebfd6a-4432-4a75-9816-61accd06074c'),(160,2,2,1,'2015-08-20 20:47:00',NULL,'2015-08-20 20:07:32','2015-08-21 15:56:38','a91ddbfe-b240-46a2-9f7d-1c898d741108'),(161,2,2,1,'2015-08-20 20:49:00',NULL,'2015-08-20 20:07:32','2015-08-21 23:35:11','62ae0269-871b-46b7-92b5-b61ce3d5948f'),(162,2,2,1,'2015-08-20 20:48:00',NULL,'2015-08-20 20:07:32','2015-08-21 15:56:28','4becc033-d125-46d0-b055-363a0aede7de'),(163,2,2,1,'2015-08-20 20:51:00',NULL,'2015-08-20 20:07:32','2015-08-21 15:54:59','fc281c0c-b47f-4257-8026-f822389e80d9'),(164,2,2,1,'2015-08-20 20:52:00',NULL,'2015-08-20 20:07:32','2015-08-21 15:54:52','00c78bc5-03ef-40a7-82aa-989a897c1cf3'),(165,2,2,1,'2015-08-20 20:53:00',NULL,'2015-08-20 20:07:32','2015-08-21 15:54:44','36b753b3-63e9-4d1c-a28f-f6ad320cd788'),(166,2,2,1,'2015-08-20 20:54:00',NULL,'2015-08-20 20:07:33','2015-08-21 15:54:04','53b90069-a000-469f-bdbf-b98c76c14c5e'),(167,2,2,1,'2015-08-20 20:55:00',NULL,'2015-08-20 20:07:33','2015-08-21 15:53:36','c021cab3-4b01-4872-aa3d-3cce67781b9b'),(168,2,2,1,'2015-08-20 20:56:00',NULL,'2015-08-20 20:07:33','2015-08-21 23:13:08','abaedfc7-546e-47fd-bbde-a161a52c0b43'),(169,2,2,1,'2015-08-20 20:57:00',NULL,'2015-08-20 20:07:33','2015-08-21 15:52:40','c8c4fd5e-ce60-44ec-b20e-0daa2ffb4a69'),(170,2,2,1,'2015-08-20 20:58:00',NULL,'2015-08-20 20:07:33','2015-08-21 15:52:33','68da64df-9c36-4b3a-b001-fa572dee598b'),(171,2,2,1,'2015-08-20 20:59:00',NULL,'2015-08-20 20:07:33','2015-08-21 23:12:18','991f0598-8d17-4205-a492-31a42fd21dfb'),(175,2,2,1,'2015-08-20 20:48:28',NULL,'2015-08-20 20:48:29','2015-08-20 20:48:29','2c1a99b0-1057-49df-842e-3ee886ac39da'),(176,2,2,1,'2015-08-20 20:48:29',NULL,'2015-08-20 20:48:29','2015-08-20 20:48:29','b8adfafa-78f6-4e4d-afcd-9bd187836bb1'),(177,2,2,1,'2015-08-20 20:48:29',NULL,'2015-08-20 20:48:29','2015-08-20 20:48:29','5441afd0-ed1a-455d-9ba9-368bcd57818c'),(178,2,2,1,'2015-08-20 20:48:29',NULL,'2015-08-20 20:48:29','2015-08-20 20:48:29','5311b46c-80ca-48cd-8b5e-0748d7616e69'),(179,2,2,1,'2015-08-20 20:48:29',NULL,'2015-08-20 20:48:29','2015-08-20 20:48:29','4d994fd4-7b88-4b54-85b1-1eb309d1682e'),(180,2,2,1,'2015-08-20 20:48:29',NULL,'2015-08-20 20:48:29','2015-08-20 20:48:29','8afb740a-2c43-4ef0-a485-d6d242d3de1a'),(181,2,2,1,'2015-08-20 20:48:29',NULL,'2015-08-20 20:48:29','2015-08-20 20:48:29','70cfe085-7f95-43df-8bb6-9ff10c7bca91'),(182,2,2,1,'2015-08-20 20:48:29',NULL,'2015-08-20 20:48:29','2015-08-20 20:48:29','3276544a-4514-4934-b2ca-20b117923c87'),(183,2,2,1,'2015-08-20 20:48:29',NULL,'2015-08-20 20:48:29','2015-08-20 20:48:29','dc750924-c0c7-4326-a692-ceef5f300619'),(184,2,2,1,'2015-08-20 20:48:29',NULL,'2015-08-20 20:48:29','2015-08-20 20:48:29','b30b2251-2847-4730-b329-6a9af21e52ae'),(185,2,2,1,'2015-08-20 20:48:29',NULL,'2015-08-20 20:48:29','2015-08-20 20:48:29','cddb6877-f56b-4bc9-9bd5-bcfe92272c83'),(186,2,2,1,'2015-08-20 20:48:29',NULL,'2015-08-20 20:48:29','2015-08-20 20:48:29','c71ce3fe-0dc9-406a-83c4-38aefe04eccd'),(187,2,2,1,'2015-08-20 20:48:29',NULL,'2015-08-20 20:48:29','2015-08-20 20:48:29','13604803-5716-40a2-828b-cb4d9661369d'),(188,2,2,1,'2015-08-20 20:48:29',NULL,'2015-08-20 20:48:29','2015-08-20 20:48:29','56f6100b-005f-48fa-8c20-03eecf464a4b'),(189,2,2,1,'2015-08-20 20:48:29',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','44e4f0c2-da92-469e-b1a3-ba50d1c01db6'),(190,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','c7c13adc-d0eb-4118-8e1b-74fffb8a12f4'),(191,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','cfafe8c8-d941-4cda-829f-ee7fd3206150'),(192,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','537eca80-b0db-4e03-9b69-86ae56a2d298'),(193,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','3c3daaa2-0834-4c00-bade-2a451f3da93a'),(194,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','04ef67f3-c849-45b4-9eeb-0816196da838'),(195,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','f48ff48d-625a-4a08-9d54-8a48014238ea'),(196,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','688d8b91-c745-46c2-8612-7fd5ce8d2e51'),(197,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','07e58564-deb7-4cd0-92b9-ed48ccbffe39'),(198,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','6dfa203a-f88a-41e0-a00c-5655b7c6dcf0'),(199,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','2902a4a4-63cd-4ddf-b2aa-6d378827025c'),(200,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','5dcc4ff3-4956-4cc9-b20c-b1cdc118ca39'),(201,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','48698256-89b4-4eb8-b3ee-6edd170ecb59'),(202,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','ca696a5d-bcef-4622-aa42-8f45ac2837e9'),(203,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','8c617ef3-270f-4089-9842-ce9ccc204df9'),(204,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','c51b8601-557c-4886-8254-fa5fbbaf63d3'),(205,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','ec546bab-495d-4eab-95f1-d14323ce6db5'),(206,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','c10e0367-67d3-4a23-8314-1a1379e917ea'),(207,2,2,1,'2015-08-20 20:48:30',NULL,'2015-08-20 20:48:30','2015-08-20 20:48:30','9f5f698c-7412-49d3-89b9-6ab6066c0400'),(208,2,2,1,'2015-08-20 20:48:31',NULL,'2015-08-20 20:48:31','2015-08-20 20:48:31','904b5596-cdd2-40dd-ae1a-2cd0fff036fa'),(209,2,2,1,'2015-08-20 20:48:31',NULL,'2015-08-20 20:48:31','2015-08-20 20:48:31','7cb6adf0-687f-4853-8518-b2f49c4ebee9');
/*!40000 ALTER TABLE `craft_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_entrydrafts`
--

DROP TABLE IF EXISTS `craft_entrydrafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_entrydrafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  KEY `craft_entrydrafts_locale_fk` (`locale`),
  CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_entrydrafts`
--

LOCK TABLES `craft_entrydrafts` WRITE;
/*!40000 ALTER TABLE `craft_entrydrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_entrydrafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_entrytypes`
--

DROP TABLE IF EXISTS `craft_entrytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_entrytypes`
--

LOCK TABLES `craft_entrytypes` WRITE;
/*!40000 ALTER TABLE `craft_entrytypes` DISABLE KEYS */;
INSERT INTO `craft_entrytypes` VALUES (1,1,12,'Homepage','homepage',0,NULL,'{section.name|raw}',NULL,'2013-09-20 17:28:29','2014-09-06 17:28:05','0841ffca-03b0-4091-ab9b-d2b78984bd9b'),(2,2,21,'Projects','projects',1,'Title',NULL,NULL,'2013-09-20 17:28:29','2015-08-20 19:13:54','6488a15c-934e-44a8-9c63-202882d2d15b'),(5,2,22,'Featured','featured',1,'Title',NULL,NULL,'2015-08-20 19:21:29','2015-08-20 19:21:29','88c01b9a-14b0-40f6-a0b8-618cbc36867d');
/*!40000 ALTER TABLE `craft_entrytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_entryversions`
--

DROP TABLE IF EXISTS `craft_entryversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_entryversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) unsigned NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  KEY `craft_entryversions_locale_fk` (`locale`),
  CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_entryversions`
--

LOCK TABLES `craft_entryversions` WRITE;
/*!40000 ALTER TABLE `craft_entryversions` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_entryversions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_fieldgroups`
--

DROP TABLE IF EXISTS `craft_fieldgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fieldgroups`
--

LOCK TABLES `craft_fieldgroups` WRITE;
/*!40000 ALTER TABLE `craft_fieldgroups` DISABLE KEYS */;
INSERT INTO `craft_fieldgroups` VALUES (1,'Default','2013-09-20 17:28:29','2013-09-20 17:28:29','bd883768-2061-4e3c-89eb-eef2b6f84842'),(2,'Projects','2013-09-20 17:49:14','2013-09-20 17:49:14','8c07bf73-f8c9-4a4f-8b85-4c3389286aad'),(3,'Home','2013-09-24 13:55:04','2013-09-24 13:55:04','eb10518e-6073-4ea5-995b-2f490c317110');
/*!40000 ALTER TABLE `craft_fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_fieldlayoutfields`
--

DROP TABLE IF EXISTS `craft_fieldlayoutfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`),
  CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

LOCK TABLES `craft_fieldlayoutfields` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayoutfields` DISABLE KEYS */;
INSERT INTO `craft_fieldlayoutfields` VALUES (26,12,8,8,0,1,'2013-09-26 17:25:22','2013-09-26 17:25:22','2dc28f50-e0d2-4248-93ad-9065e5921c1f'),(27,12,8,2,0,2,'2013-09-26 17:25:22','2013-09-26 17:25:22','38d43914-3077-4942-8166-d8b17ea1a32c'),(28,12,8,9,0,3,'2013-09-26 17:25:22','2013-09-26 17:25:22','47177de0-9b14-4bc0-904a-62a4b4d5c994'),(29,12,8,10,0,4,'2013-09-26 17:25:22','2013-09-26 17:25:22','404483e5-4898-4484-bf21-96874e371fad'),(30,12,8,13,0,5,'2013-09-26 17:25:22','2013-09-26 17:25:22','c71e9529-995f-42e8-bfbc-e73dd9e25973'),(31,12,8,11,0,6,'2013-09-26 17:25:22','2013-09-26 17:25:22','f8de8761-b8ab-4cf9-843a-982fff474746'),(32,12,8,12,0,7,'2013-09-26 17:25:22','2013-09-26 17:25:22','89aa2041-3d31-4286-b9f5-cba05159d4ff'),(43,19,13,14,1,1,'2015-08-20 19:08:35','2015-08-20 19:08:35','647c7d1c-c7e1-497a-887b-c2be2aaeee44'),(44,19,13,15,1,2,'2015-08-20 19:08:35','2015-08-20 19:08:35','1062ebb7-405a-4208-a1e9-2fef220e498d'),(51,21,15,17,0,1,'2015-08-20 19:13:54','2015-08-20 19:13:54','cee6112a-fdc4-4efc-92e9-6a002a77b9c4'),(52,21,15,4,0,2,'2015-08-20 19:13:54','2015-08-20 19:13:54','13b62430-526c-4ee1-a1dd-83c89de56bd6'),(53,21,15,2,1,3,'2015-08-20 19:13:54','2015-08-20 19:13:54','04bdeed8-15a6-488d-afed-6ccf2e884cea'),(54,21,15,6,0,4,'2015-08-20 19:13:54','2015-08-20 19:13:54','6067e2f9-633b-4b70-b2fe-06664ba5d0d8'),(55,21,15,7,0,5,'2015-08-20 19:13:54','2015-08-20 19:13:54','d7762fc5-9649-4eea-8982-c09574ad6342'),(56,21,15,16,0,6,'2015-08-20 19:13:54','2015-08-20 19:13:54','4efe7b3a-d22a-4d94-98ec-3262bd76e3ff'),(59,24,17,19,0,1,'2015-08-20 20:57:40','2015-08-20 20:57:40','d5000411-ab8a-455a-8064-b18315e966f6'),(60,24,17,20,0,2,'2015-08-20 20:57:40','2015-08-20 20:57:40','57f1bbaa-4246-4ec6-8f4e-de3166bd632a'),(61,24,17,21,0,3,'2015-08-20 20:57:40','2015-08-20 20:57:40','e207f423-4b62-4661-9b0b-bc837575fe47');
/*!40000 ALTER TABLE `craft_fieldlayoutfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_fieldlayouts`
--

DROP TABLE IF EXISTS `craft_fieldlayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouts_type_idx` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fieldlayouts`
--

LOCK TABLES `craft_fieldlayouts` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouts` DISABLE KEYS */;
INSERT INTO `craft_fieldlayouts` VALUES (1,'Tag','2013-09-20 17:28:29','2013-12-10 20:53:35','bea3baee-f79b-42a2-b13e-a988280243e5'),(12,'Entry','2013-09-26 17:25:22','2013-09-26 17:25:22','977fd799-e577-471d-b5b0-b4b312c8ea4d'),(19,'Category','2015-08-20 19:08:35','2015-08-20 19:08:35','1c0cd6a3-c173-40a0-94e0-ec2d82af42d6'),(21,'Entry','2015-08-20 19:13:54','2015-08-20 19:13:54','761b795d-a46b-4ca4-8e9e-9804870d7f6b'),(22,'Entry','2015-08-20 19:21:29','2015-08-20 19:21:29','24705a65-9a74-4952-a7c3-d7dc8f8e2065'),(24,'MatrixBlock','2015-08-20 20:57:40','2015-08-20 20:57:40','0ab1eed4-bc83-47d3-bdd3-a9b35cbabde4'),(25,'Asset','2015-08-22 16:07:46','2015-08-22 16:07:46','b2dea1b6-0e2c-4b5a-8034-27904009cbec');
/*!40000 ALTER TABLE `craft_fieldlayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_fieldlayouttabs`
--

DROP TABLE IF EXISTS `craft_fieldlayouttabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`),
  CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

LOCK TABLES `craft_fieldlayouttabs` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouttabs` DISABLE KEYS */;
INSERT INTO `craft_fieldlayouttabs` VALUES (8,12,'Content',1,'2013-09-26 17:25:22','2013-09-26 17:25:22','25fe4b53-98a4-4bcd-98f9-d642bd1ed7b1'),(12,1,'Content',1,'2015-06-26 18:30:33','2015-06-26 18:30:33','3c3a93e4-13d5-4c2f-b80e-0fce980a3b35'),(13,19,'Info',1,'2015-08-20 19:08:35','2015-08-20 19:08:35','0ad3b99e-1970-457d-ad6e-4b1525a51af4'),(15,21,'Content',1,'2015-08-20 19:13:54','2015-08-20 19:13:54','420b3579-1061-43d6-ae30-0338f642c1d0'),(17,24,'Content',1,'2015-08-20 20:57:40','2015-08-20 20:57:40','565e72f8-0443-40d4-8493-0ecdb1c3ce1a');
/*!40000 ALTER TABLE `craft_fieldlayouttabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_fields`
--

DROP TABLE IF EXISTS `craft_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  KEY `craft_fields_groupId_fk` (`groupId`),
  KEY `craft_fields_context_idx` (`context`),
  CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_fields`
--

LOCK TABLES `craft_fields` WRITE;
/*!40000 ALTER TABLE `craft_fields` DISABLE KEYS */;
INSERT INTO `craft_fields` VALUES (1,1,'Heading','heading','global',NULL,1,'PlainText',NULL,'2013-09-20 17:28:29','2013-09-20 17:28:29','4c6e831c-0a75-4181-adf5-fa51945bf29e'),(2,1,'Body','body','global',NULL,1,'RichText','{\"configFile\":\"Standard.json\"}','2013-09-20 17:28:29','2013-09-20 17:28:29','7f3355a7-f2b6-4010-9351-3c2ab0235393'),(3,1,'Tags','tags','global',NULL,0,'Tags','{\"source\":\"taggroup:1\"}','2013-09-20 17:28:29','2014-04-28 00:27:45','7ba825b3-6c6c-444c-a4f7-ee40693ac2c8'),(4,2,'Image','image','global','',0,'Assets','{\"sources\":[\"folder:1\"],\"limit\":\"1\"}','2013-09-20 17:41:07','2014-04-28 00:27:45','04ed5fb6-be79-458b-b626-282fa8db1d12'),(6,2,'Subcontract','subcontract','global','Click to notify of subcontract.',0,'Checkboxes','{\"options\":[{\"label\":\"Subcontract\",\"value\":\"true\",\"default\":\"\"}]}','2013-09-20 17:48:45','2013-09-20 17:49:39','fd4e95ad-affc-4937-8291-1ff1116e58c6'),(7,2,'Project Link','projectLink','global','Enter full url for project link',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2013-09-20 17:50:23','2013-09-20 17:50:23','5a23cd03-74b3-421e-8422-0a6b5182e7ae'),(8,3,'About Text','aboutText','global','',0,'RichText','{\"configFile\":\"Standard.json\",\"cleanupHtml\":\"1\"}','2013-09-24 13:55:33','2013-09-24 14:23:44','64126337-3f53-401e-8955-be6c18bb695b'),(9,3,'Services','services','global','',0,'RichText','{\"configFile\":\"Standard.json\",\"cleanupHtml\":\"1\"}','2013-09-24 13:56:28','2013-09-24 14:20:58','ef6a9e82-a518-498d-acba-9125850bc0ef'),(10,3,'Contemporaries','contemporaries','global','',0,'RichText','{\"configFile\":\"Standard.json\",\"cleanupHtml\":\"1\"}','2013-09-24 13:56:56','2013-09-24 14:20:42','9c55f671-8f0d-4192-90c4-0f9266e7bfee'),(11,3,'Contact','contact','global','',0,'RichText','{\"configFile\":\"Standard.json\",\"cleanupHtml\":\"1\"}','2013-09-24 13:57:57','2013-09-24 14:20:39','f0b2a82b-8f0b-405b-87e0-a4500ec3443d'),(12,3,'Networks','networks','global','',0,'RichText','{\"configFile\":\"Standard.json\",\"cleanupHtml\":\"1\"}','2013-09-24 13:58:12','2013-09-24 14:20:53','2b1f7044-6ffe-4f56-ad0d-55e3c67e364c'),(13,3,'Location','location','global','',0,'RichText','{\"configFile\":\"Standard.json\",\"cleanupHtml\":\"1\"}','2013-09-24 13:58:52','2013-09-24 14:20:45','b861f7e3-2422-47e4-80c3-6cca4ab25639'),(14,2,'Category Short Name','categoryShortName','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2015-08-20 19:07:30','2015-08-20 19:07:30','a3dbf0da-5e84-499d-86c0-3ff26980ac01'),(15,2,'Category Description','categoryDescription','global','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2015-08-20 19:07:44','2015-08-20 19:07:44','70d03152-75c9-40f7-b604-8c825334f7c1'),(16,2,'Categories','categories','global','',0,'Categories','{\"source\":\"group:1\",\"limit\":\"\",\"selectionLabel\":\"Add a category\"}','2015-08-20 19:10:59','2015-08-20 19:10:59','61a4dcdd-6ed7-44f9-b656-396d7851e355'),(17,2,'Featured Project','featuredProject','global','',0,'Lightswitch','{\"default\":\"\"}','2015-08-20 19:13:39','2015-08-20 19:13:39','8e08803a-3b0b-41aa-9e5d-6a8b1ed1e6a4'),(18,3,'Features','features','global','',0,'Matrix','{\"maxBlocks\":\"3\"}','2015-08-20 20:54:09','2015-08-20 20:57:40','e5930eee-9147-439f-a50f-4449232b6c98'),(19,NULL,'Feature Title','featureTitle','matrixBlockType:1','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2015-08-20 20:54:10','2015-08-20 20:57:40','8fff9830-e37e-4e35-ad92-99cabec5c0b2'),(20,NULL,'Feature Link','featureLink','matrixBlockType:1','',0,'Entries','{\"sources\":\"*\",\"limit\":\"1\",\"selectionLabel\":\"Link to page\"}','2015-08-20 20:54:10','2015-08-20 20:57:40','4fb1677e-2f17-4a15-bba7-3e0347ac096d'),(21,NULL,'Feature Image','featureImage','matrixBlockType:1','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"limit\":\"1\",\"selectionLabel\":\"Add an feature image\"}','2015-08-20 20:57:40','2015-08-20 20:57:40','901fe4d2-6aaf-48fd-8ed6-632443550e02');
/*!40000 ALTER TABLE `craft_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_globalsets`
--

DROP TABLE IF EXISTS `craft_globalsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_globalsets`
--

LOCK TABLES `craft_globalsets` WRITE;
/*!40000 ALTER TABLE `craft_globalsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_globalsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_import_entries`
--

DROP TABLE IF EXISTS `craft_import_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_import_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `historyId` int(11) DEFAULT NULL,
  `entryId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_import_entries_historyId_fk` (`historyId`),
  KEY `craft_import_entries_entryId_fk` (`entryId`),
  CONSTRAINT `craft_import_entries_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_import_entries_historyId_fk` FOREIGN KEY (`historyId`) REFERENCES `craft_import_history` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_import_entries`
--

LOCK TABLES `craft_import_entries` WRITE;
/*!40000 ALTER TABLE `craft_import_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_import_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_import_history`
--

DROP TABLE IF EXISTS `craft_import_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_import_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rows` int(10) DEFAULT NULL,
  `behavior` enum('append','replace','delete') COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('started','finished','reverted') COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_import_history_userId_fk` (`userId`),
  CONSTRAINT `craft_import_history_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_import_history`
--

LOCK TABLES `craft_import_history` WRITE;
/*!40000 ALTER TABLE `craft_import_history` DISABLE KEYS */;
INSERT INTO `craft_import_history` VALUES (1,1,'Entry','export.csv',55,'replace','finished','2015-08-20 19:43:39','2015-08-20 19:43:41','3296ee9d-9407-45ff-93eb-fe0378f42ab7'),(2,1,'Entry','export.csv',55,'append','finished','2015-08-20 19:44:48','2015-08-20 19:44:49','3bb0dfcb-bcb8-4a94-8a20-2453d81338bb'),(3,1,'Entry','export2.csv',55,'append','finished','2015-08-20 19:57:27','2015-08-20 19:57:31','ea30a63d-2fe4-4a50-9553-26100ca87a49'),(4,1,'Entry','projects1.csv',35,'append','finished','2015-08-20 20:01:13','2015-08-20 20:01:16','684429cd-0985-4108-ad33-b756440e39af'),(5,1,'Entry','projects1.csv',35,'replace','finished','2015-08-20 20:06:46','2015-08-20 20:06:48','cd135748-702f-4479-be03-dacb8ece6126'),(6,1,'Entry','projects2.csv',20,'append','finished','2015-08-20 20:07:30','2015-08-20 20:07:33','2ded31f3-a0d6-4b1d-a276-04063fd4e2fa'),(7,1,'Entry','projects1.csv',35,'append','finished','2015-08-20 20:48:27','2015-08-20 20:48:31','5e310336-4b79-4188-804d-4f612e34f6bf');
/*!40000 ALTER TABLE `craft_import_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_import_log`
--

DROP TABLE IF EXISTS `craft_import_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_import_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `historyId` int(11) DEFAULT NULL,
  `line` int(10) DEFAULT NULL,
  `errors` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_import_log_historyId_fk` (`historyId`),
  CONSTRAINT `craft_import_log_historyId_fk` FOREIGN KEY (`historyId`) REFERENCES `craft_import_history` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_import_log`
--

LOCK TABLES `craft_import_log` WRITE;
/*!40000 ALTER TABLE `craft_import_log` DISABLE KEYS */;
INSERT INTO `craft_import_log` VALUES (1,1,2,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:40','2015-08-20 19:43:40','f2ce69ed-cd72-474a-b1d4-5a878f25a03d'),(2,1,3,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:40','2015-08-20 19:43:40','df500b19-da9c-4d34-b726-fe46b2f7aa0d'),(3,1,4,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:40','2015-08-20 19:43:40','5f7fc198-a777-46cc-b914-5140d5f80213'),(4,1,5,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:40','2015-08-20 19:43:40','50fa7a4b-a2e3-48ee-8866-7bf54ab823d1'),(5,1,6,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:40','2015-08-20 19:43:40','438ba98f-119d-488c-985b-ec77b3a0d2cd'),(6,1,7,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:40','2015-08-20 19:43:40','48ec9537-7e9a-4dde-a33c-5779bb57153d'),(7,1,8,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:40','2015-08-20 19:43:40','76c9c5b4-7403-4044-beeb-12c7dcc23b43'),(8,1,9,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:40','2015-08-20 19:43:40','e3636b4c-4f26-4419-b221-8bae740a2c81'),(9,1,10,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:40','2015-08-20 19:43:40','b0129750-fe30-44bc-adb6-800208a15cb2'),(10,1,11,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:40','2015-08-20 19:43:40','43321f09-eb19-4b4e-816c-906f08bbc21c'),(11,1,12,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','ec8b78d3-694f-49a5-92f7-2d24edcb7b8f'),(12,1,13,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','1317e753-3ce4-413f-8a9f-d850122a97c4'),(13,1,14,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','b075a6de-af15-4296-a96d-44f5021f27b1'),(14,1,15,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','00c28ccb-a3c0-4856-ac8d-87d324ef47b0'),(15,1,16,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','80cf5a2e-c1e1-4314-939e-88ced5a9dd97'),(16,1,17,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','0dd6361a-1b4d-4ae5-9bb2-c990855b8aa4'),(17,1,18,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','212c0380-70ed-443e-bdb4-406504de1064'),(18,1,19,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','a93e7881-0b07-4e3b-94c2-161aaf6c63dc'),(19,1,20,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','e250e80b-cb77-4467-9ac5-77a9de39e420'),(20,1,21,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','feef0e31-33f5-4507-97fa-859c9d60606b'),(21,1,22,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','bab658e4-cded-4604-b3b1-894507e2a38d'),(22,1,23,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','927ca544-8eff-4241-9779-de97cb8e56a1'),(23,1,24,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','19b5ad34-7901-4029-9c7e-83b81af82d2b'),(24,1,25,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','b7491231-3760-4d92-b8cf-5428a39f1f34'),(25,1,26,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','628e3ab9-bb64-4d01-8ed2-2e0b4bfdc771'),(26,1,27,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','5d3cd33a-cf7a-4d3b-a489-d4050476d7d5'),(27,1,28,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','7b33b6da-bb9a-458d-bb11-42cd457d154c'),(28,1,29,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','7d161d4b-0998-49e2-8d86-6ee6155d4aff'),(29,1,30,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','7db12f85-2848-4236-9a1b-73d944838c65'),(30,1,31,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','419e7298-21a1-48f4-b6a1-fd2ca2e39f64'),(31,1,32,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','4f53fa7a-b3ee-4f89-a3bb-6e7028dc9cc0'),(32,1,33,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','a7098a47-7267-4b3a-87ee-747036c2c989'),(33,1,34,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','29360413-3447-44a9-b7e9-acea65efe478'),(34,1,35,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','48a16198-2457-4e87-8fe9-d22cfff4ea4c'),(35,1,36,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','61fc8347-3105-42ad-838b-e4f660f0680a'),(36,1,37,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','5ec716a3-b625-4eaa-883c-c7eaedf94fb6'),(37,1,38,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','956fd68e-6e63-472b-99fe-be1f64fb429d'),(38,1,39,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','733cd54d-0a63-4de7-a1ad-aee462dcb9cd'),(39,1,40,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','a5c9dd4a-7e8d-4a39-b326-a21613a4a752'),(40,1,41,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','4cac4acd-cc46-4681-bd78-8a970c271211'),(41,1,42,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','6cddd76a-f103-4bcb-8b83-70e033eb2dc3'),(42,1,43,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','02501949-4d3c-41cc-afa4-d17dff175394'),(43,1,44,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','a0088bca-3e70-4133-af27-2e1dbffc0b48'),(44,1,45,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','783935a7-4d73-4879-a836-9373122c0fc8'),(45,1,46,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','8bc41270-8845-44d5-b55d-a107bdeb95ec'),(46,1,47,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','4a36a587-e36f-4820-9f8c-0967890689c6'),(47,1,48,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','7a3ee8f9-293a-4ce7-a18f-9047720486ea'),(48,1,49,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','84789d7e-bacf-406a-a44e-5c520c3ede09'),(49,1,50,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','4faba89b-cd27-4caa-9eb1-1c2bfec6ca20'),(50,1,51,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','b31b0659-0caa-459b-9912-ebbccd764ed7'),(51,1,52,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','e0dc4dd1-ad43-491f-b088-b4232b49465a'),(52,1,53,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','d496f830-4492-401a-ae37-efedb19f563c'),(53,1,54,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','0bedbedc-f101-4bee-a716-564c1aae63a5'),(54,1,55,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','a23426e2-9021-44b3-a448-713a488d8d99'),(55,1,56,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:43:41','2015-08-20 19:43:41','8002f4c5-a923-46bd-9daf-fb245fd7e213'),(56,2,2,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','00f67ff1-5ee6-4764-9e00-4c675b24cd67'),(57,2,3,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','727f9412-c61b-4a04-bec7-a79f0e15396c'),(58,2,4,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','6feb7f6a-188e-461a-8def-734447ef66e1'),(59,2,5,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','4336e8a6-7dfd-4156-b370-5beb9df9143a'),(60,2,6,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','997865ef-7b55-443d-9489-1a77152bf84a'),(61,2,7,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','0d931e84-28ca-4c88-a347-41ded359b4a7'),(62,2,8,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','1e3a801a-2b78-4283-b58d-a336900a584d'),(63,2,9,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','71689fe3-9551-49be-9f88-b85caaefc92e'),(64,2,10,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','8cfe2c15-1bed-4626-8df5-1c37c9f891f1'),(65,2,11,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','e5a6ac48-45d5-48f1-9341-b8f89c520cb6'),(66,2,12,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','d26a6dd4-b4cb-4294-88b2-af294cc6c484'),(67,2,13,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','b7c87bd2-8b0e-4bb7-9ab5-1f05e0e7cd1e'),(68,2,14,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','8e618b60-e59b-4e3b-8fce-43ecd13512b9'),(69,2,15,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','d1e23317-8053-4c90-b040-c04021ae726d'),(70,2,16,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','c3c730e0-f8ad-4fb9-898b-23fff9c903f1'),(71,2,17,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','9ee2f352-da9d-4646-aa54-a561b2868e32'),(72,2,18,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','7baf9b61-7809-491a-b4ef-887394ee71ba'),(73,2,19,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','ba238153-b7c6-485d-b0b3-7f1cd58ee144'),(74,2,20,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','74893f26-10cb-4f63-aad9-b566802379ff'),(75,2,21,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','4fc5868e-c954-45bb-945a-e97f42486194'),(76,2,22,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','37bdaa7c-cd1c-40a2-a4a2-72c192a7c01f'),(77,2,23,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','a5dbb997-9d70-42d6-a876-fba020bdb5ca'),(78,2,24,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','c6ee4e5b-4fd1-4c33-a815-fa3056510d66'),(79,2,25,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','959b49a8-5547-4b73-ac31-6ce816fd7e2c'),(80,2,26,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','e9c4de00-2396-4cdb-af9d-e9e26b3b8160'),(81,2,27,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','0e9f9017-ca14-4ca9-8acf-c2d97f324536'),(82,2,28,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','193da7c5-07ca-4bf2-80ce-6178603420d0'),(83,2,29,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','e9264996-64b5-4907-9b6b-44e4f0376295'),(84,2,30,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','ecd8cfeb-76f6-4667-ada8-0d5ee9bde3c6'),(85,2,31,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','93737134-deb5-47a9-bc15-7ef1010ea10b'),(86,2,32,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','58b3404f-a467-436a-8db0-36c214dcfce1'),(87,2,33,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','427fc08c-a1c3-409b-b294-a17024e371ea'),(88,2,34,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','a753406a-477c-490f-8dc9-bf9bb2119109'),(89,2,35,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','5149ed94-9d8e-4f15-8384-8d1c971b1eed'),(90,2,36,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','465792a3-f077-4ab6-858f-004550be2b49'),(91,2,37,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','a02850e7-a9f2-48b5-8618-64a47fcb6921'),(92,2,38,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','b8cb4a3c-384e-4c4b-9627-b44b5cab0805'),(93,2,39,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','159ed071-a417-496c-9556-9c53c821a327'),(94,2,40,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','7936d11f-2f78-4741-a891-2458bfa7dcd4'),(95,2,41,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','1060c523-6df6-4602-a429-59a9a576ac63'),(96,2,42,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','140453db-3f28-40cc-8758-e704ca93893c'),(97,2,43,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','d166854b-e11b-4d99-afa2-dba635df6323'),(98,2,44,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','d180384a-933a-4379-abf1-00b2ec0e92c0'),(99,2,45,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','d888c5a5-76dd-4463-b46a-8637473bd9a2'),(100,2,46,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','f316afbe-85c9-44b0-9579-407308107c94'),(101,2,47,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','46c183ee-e53d-483a-b3cd-5ef786ca9628'),(102,2,48,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','b224b50d-fa1b-479c-83ba-915699d22d41'),(103,2,49,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','b5454137-3f7c-4e61-be20-0a11dabf1620'),(104,2,50,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','ec24240f-b8db-4c4d-a462-06e59aa03eb7'),(105,2,51,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','1adafe0a-82f3-46e7-895a-ece4ac36975d'),(106,2,52,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','2460a08b-8ec4-45c2-b076-163ab3c7f28d'),(107,2,53,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','3aecd5cf-32e7-41fa-b067-ecdb45d1fd4f'),(108,2,54,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','d13fdb9c-b382-4994-84ec-1061fe601b88'),(109,2,55,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','d62d3f37-b931-4160-9380-4a3765afd141'),(110,2,56,'[[\"Columns and data did not match, could be due to malformed CSV row.\"]]','2015-08-20 19:44:49','2015-08-20 19:44:49','fb349f5e-0438-4c80-925c-49df1410c8b9'),(111,3,2,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:28','2015-08-20 19:57:28','ceac47be-fc9e-4f8d-8f5d-f08396ba5fe0'),(112,3,34,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:30','2015-08-20 19:57:30','84ed2542-d9cd-4cf2-9094-fa95df1d2c30'),(113,3,35,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:30','2015-08-20 19:57:30','d1556739-8be2-47ab-950a-29ac6773b005'),(114,3,36,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:30','2015-08-20 19:57:30','69c50397-f2e1-4e51-86a7-59f84c93d5a6'),(115,3,37,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:30','2015-08-20 19:57:30','35fa769f-b58f-4f44-bfce-67c117bed4ee'),(116,3,38,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:30','2015-08-20 19:57:30','7abc8e31-a904-41e1-afa8-3463b835599a'),(117,3,39,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:30','2015-08-20 19:57:30','1d7ea89e-4a83-415c-93b0-31ca0d61bfe2'),(118,3,40,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:30','2015-08-20 19:57:30','a98654ed-89dc-4a49-8a64-9476d487f047'),(119,3,41,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:30','2015-08-20 19:57:30','c7e9dec2-b954-481f-8a40-019783de8e40'),(120,3,42,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:30','2015-08-20 19:57:30','40b1a494-ceec-47d1-90c0-c7e2df6fe579'),(121,3,45,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:30','2015-08-20 19:57:30','076fe2fe-e307-48c6-bc81-ff08fa7b3f49'),(122,3,47,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:31','2015-08-20 19:57:31','6d9b855d-8ba9-49c1-8fb8-6074292e761e'),(123,3,48,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:31','2015-08-20 19:57:31','554f6f4f-15e7-4964-a93b-771ae6c91295'),(124,3,49,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:31','2015-08-20 19:57:31','03aaed3d-26bc-4ec6-ad45-668db187d93c'),(125,3,50,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:31','2015-08-20 19:57:31','9271ef1c-8dc5-4894-8623-74b632a5210f'),(126,3,51,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:31','2015-08-20 19:57:31','33a33c73-dbf9-44f7-9615-0eb1428408c0'),(127,3,52,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:31','2015-08-20 19:57:31','7bc717ce-4fa5-4363-b179-0ad165a26c25'),(128,3,53,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:31','2015-08-20 19:57:31','a8df49db-cf4c-44b7-bb47-d2ed61704367'),(129,3,54,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:31','2015-08-20 19:57:31','23c81b5a-b8f8-46b0-bfd8-f673ca0d776b'),(130,3,55,'{\"title\":[\"Title cannot be blank.\"]}','2015-08-20 19:57:31','2015-08-20 19:57:31','56122a37-0fb5-45ba-a3fe-e510c76fbb1c');
/*!40000 ALTER TABLE `craft_import_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_info`
--

DROP TABLE IF EXISTS `craft_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `build` int(11) unsigned NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `releaseDate` datetime NOT NULL,
  `edition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `track` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_info`
--

LOCK TABLES `craft_info` WRITE;
/*!40000 ALTER TABLE `craft_info` DISABLE KEYS */;
INSERT INTO `craft_info` VALUES (1,'2.6',2931,'2.6.6','2016-09-08 21:48:46',1,'Allan Kukral','http://allankukral.com','UTC',1,0,'stable','2013-09-20 17:28:26','2016-09-19 17:15:08','738eb9d3-7e06-46f9-8f5d-484aa090f7cb');
/*!40000 ALTER TABLE `craft_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_locales`
--

DROP TABLE IF EXISTS `craft_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`locale`),
  KEY `craft_locales_sortOrder_idx` (`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_locales`
--

LOCK TABLES `craft_locales` WRITE;
/*!40000 ALTER TABLE `craft_locales` DISABLE KEYS */;
INSERT INTO `craft_locales` VALUES ('en_us',1,'2013-09-20 17:28:26','2013-09-20 17:28:26','6fffcef1-e33e-490b-a147-d324999c3aa1');
/*!40000 ALTER TABLE `craft_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_matrixblocks`
--

DROP TABLE IF EXISTS `craft_matrixblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`),
  CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixblocks`
--

LOCK TABLES `craft_matrixblocks` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_matrixblocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_matrixblocktypes`
--

DROP TABLE IF EXISTS `craft_matrixblocktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixblocktypes`
--

LOCK TABLES `craft_matrixblocktypes` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocktypes` DISABLE KEYS */;
INSERT INTO `craft_matrixblocktypes` VALUES (1,18,24,'feature','feature',1,'2015-08-20 20:54:10','2015-08-20 20:57:40','93921992-4a72-4e33-af9a-1c808d4f0806');
/*!40000 ALTER TABLE `craft_matrixblocktypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_matrixcontent_features`
--

DROP TABLE IF EXISTS `craft_matrixcontent_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_matrixcontent_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_feature_featureTitle` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_features_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_features_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_features_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_features_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_matrixcontent_features`
--

LOCK TABLES `craft_matrixcontent_features` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_matrixcontent_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_migrations`
--

DROP TABLE IF EXISTS `craft_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  KEY `craft_migrations_pluginId_fk` (`pluginId`),
  CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_migrations`
--

LOCK TABLES `craft_migrations` WRITE;
/*!40000 ALTER TABLE `craft_migrations` DISABLE KEYS */;
INSERT INTO `craft_migrations` VALUES (1,NULL,'m000000_000000_base','2013-09-20 17:28:26','2013-09-20 17:28:26','2013-09-20 17:28:26','f0962840-5bb7-49df-b200-98e248129a82'),(2,NULL,'m131105_000000_content_column_field_prefixes','2013-12-10 20:53:35','2013-12-10 20:53:35','2013-12-10 20:53:35','aee6687c-a332-4f13-b1f7-2642b7ff2a49'),(3,NULL,'m131105_000002_schema_version','2013-12-10 20:53:35','2013-12-10 20:53:35','2013-12-10 20:53:35','63b58259-92ad-4d55-a9bb-9aeabf4097e3'),(4,NULL,'m131105_000003_field_contexts','2013-12-10 20:53:35','2013-12-10 20:53:35','2013-12-10 20:53:35','a467eaef-d2fd-4c17-98e4-5674b67454fd'),(5,NULL,'m131105_000004_matrix','2013-12-10 20:53:35','2013-12-10 20:53:35','2013-12-10 20:53:35','7afe383f-a7d3-4b81-a7ad-1dacd25012dd'),(6,NULL,'m131105_000004_matrix_blocks','2013-12-10 20:53:35','2013-12-10 20:53:35','2013-12-10 20:53:35','cb8b649d-0965-4f31-a50a-a4fad96d7292'),(7,NULL,'m131105_000005_correct_tag_field_layouts','2013-12-10 20:53:35','2013-12-10 20:53:35','2013-12-10 20:53:35','38edb229-2566-404e-910d-d92f707e1efc'),(8,NULL,'m131105_000006_remove_gethelp_widget_for_non_admins','2013-12-10 20:53:35','2013-12-10 20:53:35','2013-12-10 20:53:35','68d4070a-9702-4e15-b562-215837fad318'),(9,NULL,'m131105_000007_new_relation_column_names','2013-12-10 20:53:36','2013-12-10 20:53:36','2013-12-10 20:53:36','41c660a8-3036-4515-b797-22a59b923fa2'),(10,NULL,'m131105_000008_add_values_for_unknown_asset_kinds','2013-12-10 20:53:36','2013-12-10 20:53:36','2013-12-10 20:53:36','85e5a15e-1803-449a-98bb-b49eeb43ab57'),(11,NULL,'m131108_000000_add_missing_content_and_i18n_rows','2013-12-10 20:53:36','2013-12-10 20:53:36','2013-12-10 20:53:36','c313164c-dcb3-4c08-a4bd-055c8d1c626e'),(12,NULL,'m131108_000000_drop_sized_icons','2013-12-10 20:53:36','2013-12-10 20:53:36','2013-12-10 20:53:36','f5b3f2ae-ceea-4444-bfc8-eede6ac125c1'),(13,NULL,'m131108_000000_undo_nested_matrix','2013-12-10 20:53:36','2013-12-10 20:53:36','2013-12-10 20:53:36','8f892b8a-04fe-4f13-8b3a-b8583420e286'),(14,NULL,'m131122_000000_add_missing_content_and_i18n_rows','2013-12-10 20:53:36','2013-12-10 20:53:36','2013-12-10 20:53:36','28bcd466-98af-41d9-b7f1-8c432313aeec'),(15,NULL,'m130917_000000_drop_users_enctype','2013-12-10 20:53:36','2013-12-10 20:53:36','2013-12-10 20:53:36','c86c24d2-6da1-4dd2-87ce-395a27170ccf'),(16,NULL,'m130917_000001_big_names_and_handles','2013-12-10 20:53:36','2013-12-10 20:53:36','2013-12-10 20:53:36','ab4a57dd-1f41-4c3d-8f05-b1ed1fbb83ab'),(17,NULL,'m130917_000002_entry_types','2013-12-10 20:53:36','2013-12-10 20:53:36','2013-12-10 20:53:36','f0e83148-8b1c-40a3-84ab-9068ef5cbccf'),(18,NULL,'m130917_000003_section_types','2013-12-10 20:53:36','2013-12-10 20:53:36','2013-12-10 20:53:36','5264230c-731c-4b6b-a8a0-c429b5533d95'),(19,NULL,'m131206_000000_add_migrations_to_db','2013-12-10 20:53:36','2013-12-10 20:53:36','2013-12-10 20:53:36','ea2beafe-a495-4728-8de5-443e5f5a469e'),(20,NULL,'m131209_000000_remove_recent_transform_indexes','2013-12-10 20:53:36','2013-12-10 20:53:36','2013-12-10 20:53:36','2a27ec42-0e5f-4f54-b120-7f20e22701e1'),(21,NULL,'m131212_000001_add_missing_fk_to_emailmessages','2014-01-02 16:44:28','2014-01-02 16:44:28','2014-01-02 16:44:28','6fc7413a-e859-4f7a-927c-d53b15d1fb5a'),(22,NULL,'m140123_000000_update_widget_sort_orders','2014-02-20 22:39:09','2014-02-20 22:39:09','2014-02-20 22:39:09','1332a2d8-b27d-43e4-8ed8-2231e0ee7fe8'),(23,NULL,'m140126_000000_add_missing_content_rows','2014-02-20 22:39:09','2014-02-20 22:39:09','2014-02-20 22:39:09','75af794f-63b7-4ccf-89c5-fb3ffffc133e'),(24,NULL,'m140212_000000_clean_up_structures','2014-02-20 22:39:09','2014-02-20 22:39:09','2014-02-20 22:39:09','1ac77eb0-b8ff-45ca-bce8-a0eb61a9c4b2'),(25,NULL,'m140223_000000_add_missing_element_rows','2014-03-31 23:40:18','2014-03-31 23:40:18','2014-03-31 23:40:18','5d67b6ff-9e71-4f35-ac90-b794fd62687e'),(26,NULL,'m131203_000000_allow_orphan_assets','2014-04-28 00:27:43','2014-04-28 00:27:43','2014-04-28 00:27:43','364592bd-dc26-4588-843f-377ec1d2e71c'),(27,NULL,'m140217_000000_add_missing_indexes','2014-04-28 00:27:43','2014-04-28 00:27:43','2014-04-28 00:27:43','0bc71438-1682-46ac-ab5e-ed7b6a11f31e'),(28,NULL,'m140325_000000_fix_matrix_settings','2014-04-28 00:27:43','2014-04-28 00:27:43','2014-04-28 00:27:43','d7c975eb-8055-4359-8a28-9e3af682f9f2'),(29,NULL,'m140401_000000_assignUserPermissions_permission','2014-04-28 00:27:43','2014-04-28 00:27:43','2014-04-28 00:27:43','54ba3d81-cff8-4dfd-be3a-8b25af36fa14'),(30,NULL,'m140401_000000_delete_the_deleted_files','2014-04-28 00:27:44','2014-04-28 00:27:44','2014-04-28 00:27:44','dab98ee7-7642-430e-8ee2-b76b7f165a6a'),(31,NULL,'m140401_000001_structures','2014-04-28 00:27:44','2014-04-28 00:27:44','2014-04-28 00:27:44','1e62782a-50e4-449d-bbe7-605be7430214'),(32,NULL,'m140401_000002_elements_i18n_tweaks','2014-04-28 00:27:45','2014-04-28 00:27:45','2014-04-28 00:27:45','e7b7eb4a-53a7-46a2-b806-d290d8ab5b64'),(33,NULL,'m140401_000003_tag_groups','2014-04-28 00:27:45','2014-04-28 00:27:45','2014-04-28 00:27:45','b6b664c5-28bf-49da-9d5c-d84141eb9db6'),(34,NULL,'m140401_000004_add_unverifiedemail_column_to_users','2014-04-28 00:27:45','2014-04-28 00:27:45','2014-04-28 00:27:45','6da61b99-3ca3-42c6-bd0b-5f62b1c8999a'),(35,NULL,'m140401_000005_translatable_matrix_fields','2014-04-28 00:27:45','2014-04-28 00:27:45','2014-04-28 00:27:45','9b5d7547-504f-4f7f-9d4f-c32235700af9'),(36,NULL,'m140401_000006_translatable_relation_fields','2014-04-28 00:27:45','2014-04-28 00:27:45','2014-04-28 00:27:45','c234bfec-4374-46be-b0f6-c5d22de16285'),(37,NULL,'m140401_000007_add_enabledbydefault_column_to_sections_i18n','2014-04-28 00:27:45','2014-04-28 00:27:45','2014-04-28 00:27:45','940a2d6b-ee22-4406-b27c-aaea8a4548d9'),(38,NULL,'m140401_000008_fullpath_to_path','2014-04-28 00:27:45','2014-04-28 00:27:45','2014-04-28 00:27:45','ca31982d-9a69-47ce-a6c7-6576ce842e2d'),(39,NULL,'m140401_000009_asset_field_layouts','2014-04-28 00:27:45','2014-04-28 00:27:45','2014-04-28 00:27:45','60c5d855-eead-4519-a3e7-a1f3d5411537'),(40,NULL,'m140401_000010_no_section_default_author','2014-04-28 00:27:45','2014-04-28 00:27:45','2014-04-28 00:27:45','8c1132f4-2b6f-4d41-a221-2c6a95f5b11a'),(41,NULL,'m140401_000011_categories','2014-04-28 00:27:45','2014-04-28 00:27:45','2014-04-28 00:27:45','088b8eb1-2022-4c9b-b452-5bf42364c32a'),(42,NULL,'m140401_000012_templatecaches','2014-04-28 00:27:46','2014-04-28 00:27:46','2014-04-28 00:27:46','f0d023eb-5461-4240-8c06-d810857d10c3'),(43,NULL,'m140401_000013_allow_temp_source_transforms','2014-04-28 00:27:46','2014-04-28 00:27:46','2014-04-28 00:27:46','a28cb254-cb16-4cab-9302-625722ea795c'),(44,NULL,'m140401_000014_entry_title_formats','2014-04-28 00:27:46','2014-04-28 00:27:46','2014-04-28 00:27:46','2db6e692-6031-448f-beb8-fb3819b1ff3b'),(45,NULL,'m140401_000015_tasks','2014-04-28 00:27:46','2014-04-28 00:27:46','2014-04-28 00:27:46','7b589dfe-8d02-481d-8137-5d493696934a'),(46,NULL,'m140401_000016_varchar_classes','2014-04-28 00:27:46','2014-04-28 00:27:46','2014-04-28 00:27:46','0091733d-b2f8-4619-aead-00d0e75feaaa'),(47,NULL,'m140401_000017_add_transform_quality','2014-04-28 00:27:46','2014-04-28 00:27:46','2014-04-28 00:27:46','a8b802d0-98f8-444c-87bd-581159e11369'),(48,NULL,'m140401_000018_locale_routes','2014-04-28 00:27:46','2014-04-28 00:27:46','2014-04-28 00:27:46','1e1f6a99-7cbc-417f-9c02-4ab022c2c47e'),(49,NULL,'m140401_000019_editions','2014-04-28 00:27:46','2014-04-28 00:27:46','2014-04-28 00:27:46','d9992346-44ea-45bb-945b-9fa97e80c47d'),(50,NULL,'m140401_000019_rackspace_auth_api','2014-04-28 00:27:46','2014-04-28 00:27:46','2014-04-28 00:27:46','e1930573-794e-40f9-92ad-1945fd0c33a1'),(51,NULL,'m140401_000020_deprecationerrors_table','2014-04-28 00:27:46','2014-04-28 00:27:46','2014-04-28 00:27:46','860b27f0-597c-402b-ad00-ad90b156c5d8'),(52,NULL,'m140401_000021_client_user','2014-04-28 00:27:46','2014-04-28 00:27:46','2014-04-28 00:27:46','9f56a1f9-7391-4a19-accb-a6f0ada5ed26'),(53,NULL,'m140401_100000_resave_elements','2014-04-28 00:27:46','2014-04-28 00:27:46','2014-04-28 00:27:46','d5221082-1067-4f72-9195-81cdfc2f91ae'),(54,NULL,'m140401_100002_delete_compiled_templates','2014-04-28 00:27:51','2014-04-28 00:27:51','2014-04-28 00:27:51','04695951-1207-4d24-bbdf-61f0c6150086'),(55,NULL,'m140403_000000_allow_orphan_assets_again','2014-04-28 00:27:51','2014-04-28 00:27:51','2014-04-28 00:27:51','b9caf013-d57e-4446-90c3-ab1a6d7fc1f8'),(56,NULL,'m140508_000000_fix_disabled_matrix_blocks','2014-05-21 15:14:02','2014-05-21 15:14:02','2014-05-21 15:14:02','88e94d02-1df4-4330-ba8c-488cb891f86d'),(57,NULL,'m140520_000000_add_id_column_to_templatecachecriteria','2014-05-21 15:14:02','2014-05-21 15:14:02','2014-05-21 15:14:02','5494b5d1-83a9-4f7c-aa73-2d7a59ca619e'),(58,NULL,'m140603_000000_draft_names','2014-06-16 17:17:35','2014-06-16 17:17:35','2014-06-16 17:17:35','a0711996-bc48-4c73-9cad-f91ab82a6504'),(59,NULL,'m140603_000001_draft_notes','2014-06-16 17:17:35','2014-06-16 17:17:35','2014-06-16 17:17:35','9557c4ff-5cc5-46e6-b505-4ae3e000abd6'),(60,NULL,'m140603_000002_version_nums','2014-06-16 17:17:35','2014-06-16 17:17:35','2014-06-16 17:17:35','76a5df42-5a6a-4bcf-ba4d-510449880486'),(61,NULL,'m140603_000003_version_toggling','2014-06-16 17:17:35','2014-06-16 17:17:35','2014-06-16 17:17:35','98b080b0-0946-4bfc-b23a-5ba3d14d1abb'),(62,NULL,'m140603_000004_tokens','2014-06-16 17:17:35','2014-06-16 17:17:35','2014-06-16 17:17:35','e8a819ab-58f4-4c1f-8de8-bd5155cc6ca6'),(63,NULL,'m140603_000005_asset_sources','2014-06-16 17:17:35','2014-06-16 17:17:35','2014-06-16 17:17:35','7e4691ae-8f0f-4252-939f-7a5b56c40f98'),(64,NULL,'m140716_000001_allow_temp_source_transforms_again','2014-08-05 16:49:45','2014-08-05 16:49:45','2014-08-05 16:49:45','c7c1fdc5-978d-47ef-90ff-067cd2943558'),(65,NULL,'m140731_000001_resave_elements_with_assets_in_temp_sources','2014-08-28 23:52:47','2014-08-28 23:52:47','2014-08-28 23:52:47','a5f4733f-df54-4c0e-8e02-1b97c2ed81ff'),(66,NULL,'m140730_000001_add_filename_and_format_to_transformindex','2014-09-06 17:28:05','2014-09-06 17:28:05','2014-09-06 17:28:05','613e2571-9e13-4ea4-a5cc-f71cfdbc5c76'),(67,NULL,'m140815_000001_add_format_to_transforms','2014-09-06 17:28:05','2014-09-06 17:28:05','2014-09-06 17:28:05','69c7a9c2-2620-42a3-9bcb-3771492a969c'),(68,NULL,'m140822_000001_allow_more_than_128_items_per_field','2014-09-06 17:28:05','2014-09-06 17:28:05','2014-09-06 17:28:05','4bde40e4-7073-4d23-bb90-a5861cfdf079'),(69,NULL,'m140829_000001_single_title_formats','2014-09-06 17:28:05','2014-09-06 17:28:05','2014-09-06 17:28:05','194195fa-969c-484e-8cf0-741096fa7f6a'),(70,NULL,'m140831_000001_extended_cache_keys','2014-09-06 17:28:05','2014-09-06 17:28:05','2014-09-06 17:28:05','d3bafaf8-0ed4-46f8-aafc-1cc9397f38f2'),(71,NULL,'m140922_000001_delete_orphaned_matrix_blocks','2015-06-26 18:30:32','2015-06-26 18:30:32','2015-06-26 18:30:32','d3e95725-ec0b-44b8-bf53-3fcacee8f119'),(72,NULL,'m141008_000001_elements_index_tune','2015-06-26 18:30:32','2015-06-26 18:30:32','2015-06-26 18:30:32','d01b7aa4-64a0-4283-8b19-fce71be317f5'),(73,NULL,'m141009_000001_assets_source_handle','2015-06-26 18:30:33','2015-06-26 18:30:33','2015-06-26 18:30:33','33afd296-1364-4d30-817d-0d23e4b9351a'),(74,NULL,'m141024_000001_field_layout_tabs','2015-06-26 18:30:34','2015-06-26 18:30:34','2015-06-26 18:30:34','dab78e42-2b79-42bd-a91e-226f797c28d6'),(75,NULL,'m141030_000001_drop_structure_move_permission','2015-06-26 18:30:34','2015-06-26 18:30:34','2015-06-26 18:30:34','a71c40b4-5018-43f9-a750-fa25a5d2b0cc'),(76,NULL,'m141103_000001_tag_titles','2015-06-26 18:30:35','2015-06-26 18:30:35','2015-06-26 18:30:35','022d20d7-9a1b-4951-903f-cb5e7c234f20'),(77,NULL,'m141109_000001_user_status_shuffle','2015-06-26 18:30:36','2015-06-26 18:30:36','2015-06-26 18:30:36','bb646a87-7a87-467a-bbf4-8b9975081500'),(78,NULL,'m141126_000001_user_week_start_day','2015-06-26 18:30:37','2015-06-26 18:30:37','2015-06-26 18:30:37','bae8b4d3-1251-49a2-9ba0-a5874848f6f1'),(79,NULL,'m150210_000001_adjust_user_photo_size','2015-06-26 18:30:37','2015-06-26 18:30:37','2015-06-26 18:30:37','10e92d03-7c21-4b44-81d0-c5afac0ba9b3'),(80,7,'m140430_122214_import_ImportHistory','2015-08-20 19:42:00','2015-08-20 19:42:00','2015-08-20 19:42:00','001dfb5a-03de-461d-8a0a-5a911b194fe6'),(81,7,'m140616_080724_import_saveEntryIdAndVersion','2015-08-20 19:42:00','2015-08-20 19:42:00','2015-08-20 19:42:00','fd5e64d3-2cd9-45e6-93d0-6d5b96b90c32'),(82,7,'m140903_075432_import_ImportElements','2015-08-20 19:42:00','2015-08-20 19:42:00','2015-08-20 19:42:00','db8ce78c-8c51-43c6-addc-10b2bb3d617a'),(83,NULL,'m141030_000000_plugin_schema_versions','2016-09-19 17:15:07','2016-09-19 17:15:07','2016-09-19 17:15:07','cd9c2ac7-4990-4d35-8072-d238268c4dad'),(84,NULL,'m150724_000001_adjust_quality_settings','2016-09-19 17:15:07','2016-09-19 17:15:07','2016-09-19 17:15:07','e4bbcbc7-5243-45fc-be01-7992f6036447'),(85,NULL,'m150827_000000_element_index_settings','2016-09-19 17:15:07','2016-09-19 17:15:07','2016-09-19 17:15:07','f2a1d4f6-9d14-4663-bc99-9555915265a5'),(86,NULL,'m150918_000001_add_colspan_to_widgets','2016-09-19 17:15:07','2016-09-19 17:15:07','2016-09-19 17:15:07','1dd70ff8-cb91-4923-a356-582b7b655517'),(87,NULL,'m151007_000000_clear_asset_caches','2016-09-19 17:15:07','2016-09-19 17:15:07','2016-09-19 17:15:07','1fbf7157-118c-47bd-b4c3-f01e9d664446'),(88,NULL,'m151109_000000_text_url_formats','2016-09-19 17:15:07','2016-09-19 17:15:07','2016-09-19 17:15:07','5e3513db-42f8-46c8-9bf2-fe16a66f09c4'),(89,NULL,'m151110_000000_move_logo','2016-09-19 17:15:07','2016-09-19 17:15:07','2016-09-19 17:15:07','3886e188-1678-4001-ac17-f65323ec8ef0'),(90,NULL,'m151117_000000_adjust_image_widthheight','2016-09-19 17:15:07','2016-09-19 17:15:07','2016-09-19 17:15:07','517b0f83-587b-48c6-b6cd-17274540dae2'),(91,NULL,'m151127_000000_clear_license_key_status','2016-09-19 17:15:07','2016-09-19 17:15:07','2016-09-19 17:15:07','94793ca1-4b54-4683-beff-c3e495cfe8d4'),(92,NULL,'m151127_000000_plugin_license_keys','2016-09-19 17:15:07','2016-09-19 17:15:07','2016-09-19 17:15:07','10b6972e-09d3-4914-b757-6d34f186a45f'),(93,NULL,'m151130_000000_update_pt_widget_feeds','2016-09-19 17:15:07','2016-09-19 17:15:07','2016-09-19 17:15:07','36026615-faad-40c0-bb28-31b4d547a02b'),(94,NULL,'m160114_000000_asset_sources_public_url_default_true','2016-09-19 17:15:07','2016-09-19 17:15:07','2016-09-19 17:15:07','ceb7c1a2-c3ca-4886-b496-68e75f8e2f95'),(95,NULL,'m160223_000000_sortorder_to_smallint','2016-09-19 17:15:08','2016-09-19 17:15:08','2016-09-19 17:15:08','d81144e7-6849-4373-af2f-c66ba62d0afc'),(96,NULL,'m160229_000000_set_default_entry_statuses','2016-09-19 17:15:08','2016-09-19 17:15:08','2016-09-19 17:15:08','39e8a358-445f-4004-955d-d57f63c1da90'),(97,NULL,'m160304_000000_client_permissions','2016-09-19 17:15:08','2016-09-19 17:15:08','2016-09-19 17:15:08','5459b4b6-11d6-4d5d-8746-35f0d36e8bc6'),(98,NULL,'m160322_000000_asset_filesize','2016-09-19 17:15:08','2016-09-19 17:15:08','2016-09-19 17:15:08','2daaa4d6-dbc0-4b20-9e5a-7f5e8d59183c'),(99,NULL,'m160503_000000_orphaned_fieldlayouts','2016-09-19 17:15:08','2016-09-19 17:15:08','2016-09-19 17:15:08','39e4a071-5e2d-4899-80dd-560c927d3b15'),(100,NULL,'m160510_000000_tasksettings','2016-09-19 17:15:08','2016-09-19 17:15:08','2016-09-19 17:15:08','c6599217-5f49-4cf8-9135-d6839889108d'),(101,NULL,'m160829_000000_pending_user_content_cleanup','2016-09-19 17:15:08','2016-09-19 17:15:08','2016-09-19 17:15:08','53cbc1d3-c26d-4590-8856-efbbe59ade05'),(102,NULL,'m160830_000000_asset_index_uri_increase','2016-09-19 17:15:08','2016-09-19 17:15:08','2016-09-19 17:15:08','473e7c3b-4f7a-4482-a2cd-3c34c7911ada');
/*!40000 ALTER TABLE `craft_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_plugins`
--

DROP TABLE IF EXISTS `craft_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKey` char(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_plugins`
--

LOCK TABLES `craft_plugins` WRITE;
/*!40000 ALTER TABLE `craft_plugins` DISABLE KEYS */;
INSERT INTO `craft_plugins` VALUES (6,'ContactForm','1.4',NULL,NULL,'unknown',1,'{\"toEmail\":\"me@allankukral.com\",\"prependSender\":\"On behalf of\",\"prependSubject\":\"New message from Allan Kukral\",\"allowAttachments\":\"\",\"honeypotField\":\"fromEmail2\"}','2014-05-03 15:35:33','2014-05-03 15:35:33','2014-09-15 16:41:20','826b814f-7a80-4039-be82-a3d5b2eef89b'),(7,'Import','0.8.24',NULL,NULL,'unknown',1,NULL,'2015-08-20 19:42:00','2015-08-20 19:42:00','2015-08-20 19:42:00','638cb0a1-2401-40ef-b07f-2794176c6e67');
/*!40000 ALTER TABLE `craft_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_rackspaceaccess`
--

DROP TABLE IF EXISTS `craft_rackspaceaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_rackspaceaccess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_rackspaceaccess`
--

LOCK TABLES `craft_rackspaceaccess` WRITE;
/*!40000 ALTER TABLE `craft_rackspaceaccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_rackspaceaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_relations`
--

DROP TABLE IF EXISTS `craft_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  KEY `craft_relations_sourceId_idx` (`sourceId`),
  KEY `craft_relations_targetId_idx` (`targetId`),
  KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_relations`
--

LOCK TABLES `craft_relations` WRITE;
/*!40000 ALTER TABLE `craft_relations` DISABLE KEYS */;
INSERT INTO `craft_relations` VALUES (71,4,153,NULL,47,1,'2015-08-20 20:07:32','2015-08-20 20:07:32','17eb34c3-9faa-4008-819f-285d5c7e2c03'),(72,4,154,NULL,40,1,'2015-08-20 20:07:32','2015-08-20 20:07:32','3d0f7b47-7e39-4408-9a54-edb3273ea53d'),(102,4,205,NULL,49,1,'2015-08-20 20:48:30','2015-08-20 20:48:30','65c99ca8-f61d-4b32-add0-6de2d7d5959a'),(108,4,170,NULL,172,1,'2015-08-21 15:52:33','2015-08-21 15:52:33','3345b825-f9e0-4289-91a7-8feee949a06a'),(109,4,169,NULL,174,1,'2015-08-21 15:52:40','2015-08-21 15:52:40','e12c4735-9554-4428-96a8-0294d17aec1b'),(111,4,167,NULL,73,1,'2015-08-21 15:53:36','2015-08-21 15:53:36','c964da6a-fb66-4de1-82f2-7981f67d6da8'),(113,4,166,NULL,71,1,'2015-08-21 15:54:04','2015-08-21 15:54:04','55fbc39d-75b3-42b6-91e8-9fecfc3facf6'),(114,4,165,NULL,68,1,'2015-08-21 15:54:44','2015-08-21 15:54:44','cf578a68-e4ec-4e46-b967-5f98c4a25be9'),(115,4,164,NULL,70,1,'2015-08-21 15:54:52','2015-08-21 15:54:52','4e4cadde-0593-40a9-bdae-27cc3dc2277a'),(116,4,163,NULL,65,1,'2015-08-21 15:54:59','2015-08-21 15:54:59','67106d44-1caf-4d83-acda-edb99fe52fff'),(120,4,162,NULL,42,1,'2015-08-21 15:56:28','2015-08-21 15:56:28','6626dff6-56ef-4cf6-91da-485bb851beb2'),(121,4,160,NULL,50,1,'2015-08-21 15:56:38','2015-08-21 15:56:38','9cb121b1-cfc7-46c9-9dd0-27ee95a3dfb0'),(122,4,159,NULL,43,1,'2015-08-21 15:57:11','2015-08-21 15:57:11','97efc95b-df28-450b-a295-1d88b51043df'),(123,4,158,NULL,45,1,'2015-08-21 15:57:15','2015-08-21 15:57:15','01e49b7c-2ed5-4c6d-9bd2-38c403ba3a5a'),(124,4,157,NULL,44,1,'2015-08-21 15:57:18','2015-08-21 15:57:18','2b822863-1428-4d6d-b6f2-91097d2161ae'),(125,4,156,NULL,48,1,'2015-08-21 15:57:57','2015-08-21 15:57:57','bfb5dbb7-9990-4e36-9737-a9917d0bf022'),(127,4,152,NULL,6,1,'2015-08-21 23:04:33','2015-08-21 23:04:33','356ac2f6-2ce4-4f1f-966d-d7dc4231b844'),(128,4,155,NULL,46,1,'2015-08-21 23:04:36','2015-08-21 23:04:36','fa2eed8e-9da9-4d1b-8c21-51978d2a80b1'),(129,4,171,NULL,212,1,'2015-08-21 23:12:18','2015-08-21 23:12:18','a39d812e-dd46-4fb4-8686-ecf8566d8cb9'),(130,4,168,NULL,211,1,'2015-08-21 23:13:08','2015-08-21 23:13:08','6ba3c94b-6e94-43fd-9d31-c6d78f605ef8'),(131,4,161,NULL,41,1,'2015-08-21 23:35:11','2015-08-21 23:35:11','935f7b4e-28b0-45a0-821b-c2e262f00324');
/*!40000 ALTER TABLE `craft_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_routes`
--

DROP TABLE IF EXISTS `craft_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_routes_urlPattern_unq_idx` (`urlPattern`),
  KEY `craft_routes_locale_idx` (`locale`),
  CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_routes`
--

LOCK TABLES `craft_routes` WRITE;
/*!40000 ALTER TABLE `craft_routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_searchindex`
--

DROP TABLE IF EXISTS `craft_searchindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`),
  FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_searchindex`
--

LOCK TABLES `craft_searchindex` WRITE;
/*!40000 ALTER TABLE `craft_searchindex` DISABLE KEYS */;
INSERT INTO `craft_searchindex` VALUES (1,'username',0,'en_us',' admin '),(1,'email',0,'en_us',' allan vectorliving com '),(2,'slug',0,'en_us',' homepage '),(2,'title',0,'en_us',' homepage '),(2,'field',2,'en_us',' new orleans centric interaction developer with roots and connections in the mid west chicagoland and parts unknown comprised primarily of carbon oxygen hydrogen and awesome eclipsing 14 years of experience designing developing and implementing web solutiona online media and marketing '),(2,'field',11,'en_us',' allan kukral 4928 prytania st apt 3 new orleans la 70115 815 302 3429 me allankukral com '),(2,'field',1,'en_us',' welcome to dev vectorliving com '),(3,'slug',0,'en_us',' we just installed craft '),(3,'title',0,'en_us',' we just installed craft '),(3,'field',2,'en_us',' craft is the cms that s powering dev vectorliving com it s beautiful powerful flexible and easy to use and it s made by pixel tonic we can t wait to dive in and see what it s capable of this is even more captivating content which you couldn t see on the news index page because it was entered after a page break and the news index template only likes to show the content on the first page craft a nice alternative to word if you re making a website '),(4,'slug',0,'en_us',' new post '),(4,'title',0,'en_us',' new post '),(4,'field',2,'en_us',' crap here '),(6,'filename',0,'en_us',' 5thfloor jpg '),(6,'extension',0,'en_us',' jpg '),(6,'kind',0,'en_us',' image '),(6,'title',0,'en_us',' 5thfloor '),(209,'field',7,'en_us',' http neworleanscitypark com '),(209,'field',6,'en_us',' true '),(209,'field',2,'en_us',' expressionengine templates maintenance search optimization and version control setup '),(209,'field',4,'en_us',''),(209,'field',17,'en_us',' 0 '),(2,'field',8,'en_us',' uptown new orleans based interaction developer and designer working with clients to develop bespoke web solutions i have practical knowledge and working experience creating device agnostic layouts websites custom content management solutions to suit your needs take a look at some of my featured work below or email me now '),(2,'field',10,'en_us',' ryan sievert jason hammel design annunciation interactive benjamin seyna constance valence streetaware copywriting iamalwayshungry '),(2,'field',12,'en_us',' twitter facebook pinterest instagram linkedin stack overflow github '),(2,'field',9,'en_us',' expression engine cmscraft cmstwig templatingshopify ecommercebig commerce ecommercebig cartel ecommerceadvanced html 5 and css 3 javascript js frameworksresponsive website designrapid prototypinginteraction designuser experiencecontent management developmentemail marketingsearch engine optimizationanalytics reportingecommerce shopping '),(208,'title',0,'en_us',' dick and jenny s restaurant '),(208,'slug',0,'en_us',''),(208,'field',7,'en_us',' http www dickandjennys com '),(208,'field',16,'en_us',''),(208,'field',6,'en_us',''),(208,'field',4,'en_us',''),(208,'field',2,'en_us',' design responsive site and content management for a renown local bistro '),(208,'field',17,'en_us',' 0 '),(207,'title',0,'en_us',' hub city lofts '),(207,'slug',0,'en_us',''),(207,'field',16,'en_us',''),(207,'field',7,'en_us',' http www hubcitylofts com '),(207,'field',6,'en_us',''),(207,'field',2,'en_us',' landing page for a loft style rentals design by jason hammel '),(207,'field',4,'en_us',''),(207,'field',17,'en_us',' 0 '),(206,'title',0,'en_us',' the carter bldg '),(206,'slug',0,'en_us',''),(206,'field',16,'en_us',''),(206,'field',6,'en_us',''),(206,'field',7,'en_us',' http www thecarterbldg com '),(206,'field',2,'en_us',' responsive site and content management for a loft style rentals design by jason hammel '),(206,'field',4,'en_us',''),(206,'field',17,'en_us',' 0 '),(205,'title',0,'en_us',' martinique bistro '),(205,'slug',0,'en_us',''),(205,'field',16,'en_us',''),(205,'field',7,'en_us',' http www martiniquebistro com '),(205,'field',2,'en_us',' design responsive site content management for a renown local bistro '),(205,'field',6,'en_us',''),(205,'field',4,'en_us',' martinique '),(205,'field',17,'en_us',' 0 '),(204,'title',0,'en_us',' the receivables exchange '),(204,'slug',0,'en_us',''),(204,'field',16,'en_us',''),(204,'field',7,'en_us',' http www receivablesxchange com '),(204,'field',6,'en_us',''),(204,'field',2,'en_us',' interaction development and content management system '),(204,'field',4,'en_us',''),(203,'title',0,'en_us',' sievert works '),(204,'field',17,'en_us',' 0 '),(203,'slug',0,'en_us',''),(203,'field',16,'en_us',''),(203,'field',7,'en_us',' http www sievertworks com '),(203,'field',6,'en_us',''),(203,'field',2,'en_us',' interaction development and content management system design by ryan sievert '),(203,'field',4,'en_us',''),(203,'field',17,'en_us',' 0 '),(202,'title',0,'en_us',' carver collegiate school '),(202,'slug',0,'en_us',''),(202,'field',16,'en_us',''),(202,'field',6,'en_us',''),(202,'field',7,'en_us',' http www carvercollegiate org '),(202,'field',2,'en_us',' interaction design development and content management system '),(202,'field',4,'en_us',''),(202,'field',17,'en_us',' 0 '),(201,'slug',0,'en_us',''),(201,'title',0,'en_us',' carver prep school '),(201,'field',16,'en_us',''),(201,'field',6,'en_us',''),(201,'field',7,'en_us',' http www carverprep org '),(201,'field',2,'en_us',' interaction design development and content management system '),(201,'field',17,'en_us',' 0 '),(201,'field',4,'en_us',''),(200,'title',0,'en_us',' sci academy '),(200,'slug',0,'en_us',''),(200,'field',16,'en_us',''),(200,'field',7,'en_us',' http www sciacademy org '),(200,'field',6,'en_us',''),(200,'field',2,'en_us',' interaction design development and content management system '),(200,'field',4,'en_us',''),(200,'field',17,'en_us',' 0 '),(199,'title',0,'en_us',' film compound '),(199,'slug',0,'en_us',''),(199,'field',16,'en_us',''),(199,'field',2,'en_us',' interaction development '),(199,'field',6,'en_us',' true '),(199,'field',7,'en_us',' http www filmcompound com '),(199,'field',4,'en_us',''),(199,'field',17,'en_us',' 0 '),(198,'title',0,'en_us',' the marketing center '),(198,'slug',0,'en_us',''),(198,'field',16,'en_us',''),(198,'field',7,'en_us',''),(198,'field',6,'en_us',''),(198,'field',2,'en_us',' interaction design development and a content management system '),(198,'field',4,'en_us',''),(198,'field',17,'en_us',' 0 '),(197,'title',0,'en_us',' leontine linens '),(197,'slug',0,'en_us',''),(197,'field',16,'en_us',''),(197,'field',6,'en_us',''),(197,'field',7,'en_us',' http www leontinelinens com '),(197,'field',2,'en_us',' interaction design development and content management system '),(197,'field',4,'en_us',''),(197,'field',17,'en_us',' 0 '),(40,'filename',0,'en_us',' annabondoc jpg '),(40,'extension',0,'en_us',' jpg '),(40,'kind',0,'en_us',' image '),(40,'title',0,'en_us',' annabondoc '),(41,'filename',0,'en_us',' america jpg '),(41,'extension',0,'en_us',' jpg '),(41,'kind',0,'en_us',' image '),(41,'title',0,'en_us',' america '),(42,'filename',0,'en_us',' commerce jpg '),(42,'extension',0,'en_us',' jpg '),(42,'kind',0,'en_us',' image '),(42,'title',0,'en_us',' commerce '),(43,'filename',0,'en_us',' collegiate jpg '),(43,'extension',0,'en_us',' jpg '),(43,'kind',0,'en_us',' image '),(43,'title',0,'en_us',' collegiate '),(44,'filename',0,'en_us',' elisio jpg '),(44,'extension',0,'en_us',' jpg '),(44,'kind',0,'en_us',' image '),(44,'title',0,'en_us',' elisio '),(45,'filename',0,'en_us',' hannah jpg '),(45,'extension',0,'en_us',' jpg '),(45,'kind',0,'en_us',' image '),(45,'title',0,'en_us',' hannah '),(46,'filename',0,'en_us',' madefirst jpg '),(46,'extension',0,'en_us',' jpg '),(46,'kind',0,'en_us',' image '),(46,'title',0,'en_us',' madefirst '),(47,'filename',0,'en_us',' mmr jpg '),(47,'extension',0,'en_us',' jpg '),(47,'kind',0,'en_us',' image '),(47,'title',0,'en_us',' mmr '),(48,'filename',0,'en_us',' mottomoto jpg '),(48,'extension',0,'en_us',' jpg '),(48,'kind',0,'en_us',' image '),(48,'title',0,'en_us',' mottomoto '),(49,'filename',0,'en_us',' martinique jpg '),(49,'extension',0,'en_us',' jpg '),(49,'kind',0,'en_us',' image '),(49,'title',0,'en_us',' martinique '),(50,'filename',0,'en_us',' saintemarie jpg '),(50,'extension',0,'en_us',' jpg '),(50,'kind',0,'en_us',' image '),(50,'title',0,'en_us',' saintemarie '),(196,'title',0,'en_us',' talley ho design '),(190,'field',16,'en_us',''),(190,'slug',0,'en_us',''),(190,'title',0,'en_us',' customized nutrition newsletters '),(191,'field',17,'en_us',' 0 '),(191,'field',4,'en_us',''),(191,'field',2,'en_us',' interaction design development and shopify ecommerce '),(191,'field',6,'en_us',''),(191,'field',7,'en_us',''),(191,'field',16,'en_us',''),(191,'slug',0,'en_us',''),(191,'title',0,'en_us',' azby s '),(192,'field',17,'en_us',' 0 '),(192,'field',4,'en_us',''),(192,'field',2,'en_us',' branding interaction design development and shopify ecommerce '),(192,'field',6,'en_us',''),(192,'field',7,'en_us',' http amhaberdasher com '),(196,'slug',0,'en_us',''),(196,'field',16,'en_us',''),(196,'field',7,'en_us',' http talleyhodesign com '),(196,'field',6,'en_us',''),(196,'field',2,'en_us',' interaction design development and content management system '),(196,'field',4,'en_us',''),(196,'field',17,'en_us',' 0 '),(195,'title',0,'en_us',' moon lola '),(195,'slug',0,'en_us',''),(195,'field',6,'en_us',''),(195,'field',7,'en_us',' http www moonandlola com '),(195,'field',16,'en_us',''),(195,'field',4,'en_us',''),(195,'field',2,'en_us',' interaction design development and shopify ecommerce '),(195,'field',17,'en_us',' 0 '),(194,'title',0,'en_us',' vermillion style '),(194,'slug',0,'en_us',''),(194,'field',16,'en_us',''),(194,'field',7,'en_us',' http www vermillionstyle com '),(194,'field',6,'en_us',''),(194,'field',4,'en_us',''),(194,'field',2,'en_us',' interaction design development and content management '),(194,'field',17,'en_us',' 0 '),(193,'title',0,'en_us',' east jefferson general hospital '),(193,'slug',0,'en_us',''),(193,'field',16,'en_us',''),(193,'field',7,'en_us',' http www ejgh org '),(193,'field',6,'en_us',''),(193,'field',2,'en_us',' interaction design and development '),(193,'field',4,'en_us',''),(192,'slug',0,'en_us',''),(192,'title',0,'en_us',' american haberdasher '),(193,'field',17,'en_us',' 0 '),(192,'field',16,'en_us',''),(186,'field',4,'en_us',''),(186,'field',2,'en_us',' interaction design and development '),(190,'field',7,'en_us',''),(190,'field',6,'en_us',''),(190,'field',2,'en_us',' interaction design and development '),(190,'field',4,'en_us',''),(190,'field',17,'en_us',' 0 '),(189,'field',17,'en_us',' 0 '),(189,'field',4,'en_us',''),(189,'field',2,'en_us',' interaction design and development '),(189,'title',0,'en_us',' resturant cuvee '),(189,'slug',0,'en_us',''),(189,'field',16,'en_us',''),(189,'field',7,'en_us',''),(189,'field',6,'en_us',' true '),(188,'slug',0,'en_us',''),(188,'title',0,'en_us',' oreck '),(188,'field',16,'en_us',''),(188,'field',7,'en_us',''),(188,'field',6,'en_us',' true '),(63,'filename',0,'en_us',' map gif '),(63,'extension',0,'en_us',' gif '),(63,'kind',0,'en_us',' image '),(63,'title',0,'en_us',' map '),(188,'field',2,'en_us',' interaction design and development '),(188,'field',4,'en_us',''),(187,'field',16,'en_us',''),(187,'slug',0,'en_us',''),(187,'title',0,'en_us',' southern candy makers '),(188,'field',17,'en_us',' 0 '),(187,'field',7,'en_us',''),(187,'field',6,'en_us',' true '),(187,'field',2,'en_us',' interaction design and development '),(187,'field',4,'en_us',''),(187,'field',17,'en_us',' 0 '),(186,'field',16,'en_us',''),(186,'slug',0,'en_us',''),(186,'title',0,'en_us',' global green '),(186,'field',7,'en_us',''),(186,'field',6,'en_us',' true '),(186,'field',17,'en_us',' 0 '),(185,'title',0,'en_us',' hartwig moss benefits '),(185,'slug',0,'en_us',''),(185,'field',16,'en_us',''),(185,'field',2,'en_us',' interaction design and development '),(185,'field',6,'en_us',' true '),(185,'field',7,'en_us',''),(185,'field',4,'en_us',''),(185,'field',17,'en_us',' 0 '),(184,'title',0,'en_us',' lakeside camera works '),(184,'slug',0,'en_us',''),(184,'field',16,'en_us',''),(184,'field',7,'en_us',''),(184,'field',6,'en_us',' true '),(184,'field',2,'en_us',' interaction design development and content management system '),(184,'field',4,'en_us',''),(184,'field',17,'en_us',' 0 '),(183,'title',0,'en_us',' waveland city '),(183,'slug',0,'en_us',''),(183,'field',7,'en_us',''),(183,'field',16,'en_us',''),(183,'field',6,'en_us',' true '),(183,'field',17,'en_us',' 0 '),(183,'field',4,'en_us',''),(183,'field',2,'en_us',' interaction design and development '),(182,'title',0,'en_us',' cowen institute '),(182,'slug',0,'en_us',''),(182,'field',7,'en_us',''),(182,'field',16,'en_us',''),(182,'field',6,'en_us',' true '),(182,'field',2,'en_us',' interaction design and development '),(182,'field',4,'en_us',''),(181,'field',16,'en_us',''),(181,'slug',0,'en_us',''),(181,'title',0,'en_us',' make buzz '),(182,'field',17,'en_us',' 0 '),(181,'field',7,'en_us',''),(181,'field',6,'en_us',' true '),(181,'field',2,'en_us',' interaction design and development '),(181,'field',4,'en_us',''),(181,'field',17,'en_us',' 0 '),(180,'title',0,'en_us',' sucre '),(180,'field',6,'en_us',' true '),(180,'field',7,'en_us',''),(180,'field',16,'en_us',''),(180,'slug',0,'en_us',''),(179,'field',7,'en_us',''),(179,'field',16,'en_us',''),(179,'slug',0,'en_us',''),(180,'field',2,'en_us',' interaction design and development '),(180,'field',4,'en_us',''),(180,'field',17,'en_us',' 0 '),(65,'field',8,'en_us',''),(65,'field',2,'en_us',''),(65,'field',11,'en_us',''),(65,'field',10,'en_us',''),(65,'field',5,'en_us',''),(65,'field',1,'en_us',''),(65,'field',4,'en_us',''),(65,'field',13,'en_us',''),(65,'field',12,'en_us',''),(65,'field',7,'en_us',''),(65,'field',9,'en_us',''),(65,'field',6,'en_us',''),(65,'field',3,'en_us',''),(65,'filename',0,'en_us',' ederle jpg '),(65,'extension',0,'en_us',' jpg '),(65,'kind',0,'en_us',' image '),(65,'title',0,'en_us',' ederle '),(179,'title',0,'en_us',' greater new orleans foundation '),(179,'field',6,'en_us',' true '),(179,'field',2,'en_us',' design development and content management system '),(179,'field',4,'en_us',''),(178,'field',16,'en_us',''),(178,'slug',0,'en_us',''),(178,'title',0,'en_us',' historic new orleans collection '),(179,'field',17,'en_us',' 0 '),(178,'field',7,'en_us',''),(178,'field',6,'en_us',' true '),(178,'field',2,'en_us',' interaction design and development '),(178,'field',4,'en_us',''),(178,'field',17,'en_us',' 0 '),(177,'title',0,'en_us',' the week daily '),(177,'field',6,'en_us',''),(177,'field',7,'en_us',''),(177,'field',16,'en_us',''),(177,'slug',0,'en_us',''),(177,'field',2,'en_us',' site development content curation site design css and html '),(177,'field',4,'en_us',''),(177,'field',17,'en_us',' 0 '),(176,'title',0,'en_us',' wenner media '),(176,'field',7,'en_us',''),(176,'field',16,'en_us',''),(176,'slug',0,'en_us',''),(176,'field',6,'en_us',''),(176,'field',2,'en_us',' us weekly men s journal and rolling stone email design and development '),(176,'field',4,'en_us',''),(176,'field',17,'en_us',' 0 '),(175,'field',16,'en_us',''),(175,'slug',0,'en_us',''),(175,'title',0,'en_us',' cox communications '),(175,'field',7,'en_us',''),(68,'field',8,'en_us',''),(68,'field',2,'en_us',''),(68,'field',11,'en_us',''),(68,'field',10,'en_us',''),(68,'field',5,'en_us',''),(68,'field',1,'en_us',''),(68,'field',4,'en_us',''),(68,'field',13,'en_us',''),(68,'field',12,'en_us',''),(68,'field',7,'en_us',''),(68,'field',9,'en_us',''),(68,'field',6,'en_us',''),(68,'field',3,'en_us',''),(68,'filename',0,'en_us',' linensense jpg '),(68,'extension',0,'en_us',' jpg '),(68,'kind',0,'en_us',' image '),(68,'title',0,'en_us',' linensense '),(175,'field',6,'en_us',''),(175,'field',17,'en_us',' 0 '),(175,'field',2,'en_us',' email design and promotional landing page designs '),(175,'field',4,'en_us',''),(174,'title',0,'en_us',' re '),(174,'slug',0,'en_us',' re '),(174,'extension',0,'en_us',' jpg '),(174,'kind',0,'en_us',' image '),(174,'filename',0,'en_us',' re jpg '),(167,'field',16,'en_us',''),(6,'slug',0,'en_us',' 5thfloor '),(40,'slug',0,'en_us',' annabondoc '),(41,'slug',0,'en_us',' america '),(42,'slug',0,'en_us',' commerce '),(43,'slug',0,'en_us',' collegiate '),(44,'slug',0,'en_us',' elisio '),(45,'slug',0,'en_us',' hannah '),(46,'slug',0,'en_us',' madefirst '),(47,'slug',0,'en_us',' mmr '),(48,'slug',0,'en_us',' mottomoto '),(49,'slug',0,'en_us',' martinique '),(50,'slug',0,'en_us',' saintemarie '),(63,'slug',0,'en_us',' map '),(65,'slug',0,'en_us',' ederle '),(68,'slug',0,'en_us',' linensense '),(2,'field',13,'en_us',''),(173,'title',0,'en_us',' gasparian immigration '),(173,'slug',0,'en_us',' gasparian immigration '),(173,'kind',0,'en_us',' image '),(173,'extension',0,'en_us',' png '),(173,'filename',0,'en_us',' gasparian_immigration png '),(172,'title',0,'en_us',' answerals '),(172,'slug',0,'en_us',' answerals '),(172,'kind',0,'en_us',' image '),(172,'extension',0,'en_us',' jpg '),(172,'filename',0,'en_us',' answerals jpg '),(171,'title',0,'en_us',' gasparian immigration '),(171,'slug',0,'en_us',' gasparian immigration '),(171,'field',16,'en_us',''),(171,'field',7,'en_us',' http gasparianimmigration com '),(171,'field',6,'en_us',''),(171,'field',2,'en_us',' branding design html css and craftcms for an immigration attorney '),(171,'field',4,'en_us',' gasparian '),(171,'field',17,'en_us',' 1 '),(170,'title',0,'en_us',' answer als '),(170,'slug',0,'en_us',' answer als '),(170,'field',16,'en_us',''),(170,'field',7,'en_us',' http answerals org '),(170,'field',6,'en_us',' true '),(170,'field',2,'en_us',' craft cms html css js build for trumpet group and answerals '),(170,'field',4,'en_us',' answerals '),(170,'field',17,'en_us',' 1 '),(169,'title',0,'en_us',' re chiropractic wellness '),(169,'field',16,'en_us',''),(169,'slug',0,'en_us',' re chiropractic wellness '),(169,'field',7,'en_us',' http www rechiropractic com '),(169,'field',6,'en_us',''),(169,'field',2,'en_us',' craft cms html css js build for a wellness clinic designed by zimmer design '),(168,'title',0,'en_us',' del fuego taqueria '),(169,'field',17,'en_us',' 1 '),(169,'field',4,'en_us',' re '),(168,'slug',0,'en_us',' del fuego taqueria '),(168,'field',16,'en_us',''),(168,'field',7,'en_us',' http www delfuegotaqueria com '),(168,'field',6,'en_us',''),(168,'field',4,'en_us',' del '),(168,'field',2,'en_us',' craft cms and web design for mexican restaurant '),(168,'field',17,'en_us',' 1 '),(167,'title',0,'en_us',' drc emergency services '),(1,'firstname',0,'en_us',''),(1,'lastname',0,'en_us',''),(1,'fullname',0,'en_us',''),(1,'slug',0,'en_us',''),(70,'filename',0,'en_us',' damndog jpg '),(70,'extension',0,'en_us',' jpg '),(70,'kind',0,'en_us',' image '),(70,'slug',0,'en_us',' damndog '),(70,'title',0,'en_us',' damndog '),(71,'filename',0,'en_us',' hafa jpg '),(71,'extension',0,'en_us',' jpg '),(71,'kind',0,'en_us',' image '),(71,'slug',0,'en_us',' hafa '),(71,'title',0,'en_us',' hafa '),(167,'slug',0,'en_us',' drc emergency services '),(167,'field',7,'en_us',' http drcemergencyservices net '),(167,'field',6,'en_us',' true '),(167,'field',2,'en_us',' craft cms html css js support build for trumpet group '),(73,'filename',0,'en_us',' drc jpg '),(73,'extension',0,'en_us',' jpg '),(73,'kind',0,'en_us',' image '),(73,'slug',0,'en_us',' drc '),(73,'title',0,'en_us',' drc '),(167,'field',17,'en_us',' 1 '),(167,'field',4,'en_us',' drc '),(166,'title',0,'en_us',' healthier air for all '),(166,'slug',0,'en_us',' healthier air for all '),(166,'field',16,'en_us',''),(166,'field',7,'en_us',' http www healthierairforall org '),(166,'field',2,'en_us',' cms and build designed by trumpet group '),(75,'filename',0,'en_us',' del png '),(75,'extension',0,'en_us',' png '),(75,'kind',0,'en_us',' image '),(75,'slug',0,'en_us',' del '),(75,'title',0,'en_us',' del '),(166,'field',6,'en_us',' true '),(165,'title',0,'en_us',' linensense '),(166,'field',17,'en_us',' 1 '),(166,'field',4,'en_us',' hafa '),(165,'slug',0,'en_us',' linensense '),(77,'slug',0,'en_us',' design '),(77,'title',0,'en_us',' design '),(78,'slug',0,'en_us',' content managment system '),(78,'title',0,'en_us',' content managment system '),(79,'slug',0,'en_us',' javascript '),(79,'title',0,'en_us',' javascript '),(80,'slug',0,'en_us',' html '),(80,'title',0,'en_us',' html '),(81,'slug',0,'en_us',' css '),(81,'title',0,'en_us',' css '),(165,'field',16,'en_us',''),(165,'field',7,'en_us',' http www linensense com '),(165,'field',6,'en_us',''),(165,'field',2,'en_us',' promotional website for linens book built in expressionengine designed by jason hammel '),(165,'field',4,'en_us',' linensense '),(165,'field',17,'en_us',' 1 '),(164,'title',0,'en_us',' damndog '),(164,'slug',0,'en_us',' damndog '),(164,'field',16,'en_us',''),(164,'field',7,'en_us',' http damndoghq com '),(164,'field',6,'en_us',' true '),(164,'field',2,'en_us',' shopify ecommerce design and build '),(164,'field',4,'en_us',' damndog '),(164,'field',17,'en_us',' 1 '),(163,'title',0,'en_us',' ederle '),(163,'slug',0,'en_us',' ederle '),(163,'field',16,'en_us',''),(163,'field',7,'en_us',' http ederle co '),(163,'field',6,'en_us',' true '),(163,'field',2,'en_us',' big cartel ecommerce store designed by zimmer design '),(163,'field',4,'en_us',' ederle '),(163,'field',17,'en_us',' 1 '),(162,'title',0,'en_us',' the commerce bldg '),(162,'slug',0,'en_us',' the commerce bldg '),(162,'field',16,'en_us',''),(162,'field',7,'en_us',' http thecommercebldg com '),(162,'field',6,'en_us',''),(162,'field',2,'en_us',' full bleed mobile friendly animating landing page design by jason hammel '),(162,'field',4,'en_us',' commerce '),(162,'field',17,'en_us',' 1 '),(161,'title',0,'en_us',' the america bldg '),(161,'field',16,'en_us',''),(161,'slug',0,'en_us',' the america bldg '),(161,'field',7,'en_us',' http www theamericabldg com '),(161,'field',6,'en_us',''),(161,'field',2,'en_us',' responsive site and content managment for a loft style rentals design by jason hammel '),(161,'field',4,'en_us',' america '),(161,'field',17,'en_us',' 1 '),(160,'title',0,'en_us',' sainte marie restaurant '),(160,'slug',0,'en_us',' sainte marie restaurant '),(160,'field',16,'en_us',''),(160,'field',7,'en_us',' http www stemarienola com '),(160,'field',6,'en_us',''),(160,'field',2,'en_us',' responsive wordpress site for an upscale restaurant design by jason hammel '),(160,'field',4,'en_us',' saintemarie '),(160,'field',17,'en_us',' 1 '),(159,'title',0,'en_us',' collegiate academies '),(159,'slug',0,'en_us',' collegiate academies '),(159,'field',16,'en_us',''),(159,'field',7,'en_us',' http www collegiateacademies org '),(159,'field',6,'en_us',''),(159,'field',2,'en_us',' designed by iamalwayshungry and jason hammel responsive site content managment for a school system '),(159,'field',4,'en_us',' collegiate '),(159,'field',17,'en_us',' 1 '),(158,'title',0,'en_us',' hannah mccauley '),(158,'slug',0,'en_us',' hannah mccauley '),(158,'field',16,'en_us',''),(158,'field',7,'en_us',' http www hannahmccauley com '),(158,'field',6,'en_us',''),(158,'field',2,'en_us',' design responsive site content managment for a caterer chef food blogger '),(158,'field',4,'en_us',' hannah '),(158,'field',17,'en_us',' 1 '),(157,'title',0,'en_us',' elisio lofts '),(157,'slug',0,'en_us',' elisio lofts '),(157,'field',16,'en_us',''),(157,'field',7,'en_us',' http www elisiolofts com '),(157,'field',6,'en_us',''),(157,'field',2,'en_us',' content management for a loft construction in the bywater of new orleans design by jason hammel '),(157,'field',4,'en_us',' elisio '),(157,'field',17,'en_us',' 1 '),(156,'title',0,'en_us',' motto moto '),(156,'slug',0,'en_us',' motto moto '),(156,'field',16,'en_us',''),(156,'field',7,'en_us',' http www mottomoto com '),(156,'field',6,'en_us',''),(156,'field',2,'en_us',' wordpress site for a custom moto shop in chicago designed by ryan sievert '),(156,'field',4,'en_us',' mottomoto '),(156,'field',17,'en_us',' 1 '),(155,'slug',0,'en_us',' made first '),(155,'title',0,'en_us',' made first '),(155,'field',16,'en_us',''),(155,'field',7,'en_us',' http www madefirst com '),(155,'field',6,'en_us',''),(155,'field',2,'en_us',' responsive site and content management for a full service creative design and fabrication company design by jason hammel '),(155,'field',4,'en_us',' madefirst '),(155,'field',17,'en_us',' 0 '),(154,'title',0,'en_us',' anna bondoc '),(154,'slug',0,'en_us',''),(154,'field',16,'en_us',''),(154,'field',7,'en_us',' http www annabondoc com '),(154,'field',6,'en_us',''),(154,'field',2,'en_us',' ecommerce built in shopify for a handcut paper craft art studio '),(154,'field',17,'en_us',' 0 '),(154,'field',4,'en_us',' annabondoc '),(153,'title',0,'en_us',' mmr interiors '),(153,'slug',0,'en_us',''),(153,'field',16,'en_us',''),(153,'field',7,'en_us',' http www mmrinteriors com '),(153,'field',6,'en_us',''),(153,'field',2,'en_us',' site build and cms for a nola interior designer designed by birdiebirdie '),(153,'field',4,'en_us',' mmr '),(153,'field',17,'en_us',' 0 '),(152,'slug',0,'en_us',' 5thfloorco '),(152,'title',0,'en_us',' 5thfloorco '),(152,'field',16,'en_us',''),(152,'field',7,'en_us',' http 5thfloorco com '),(152,'field',6,'en_us',''),(152,'field',2,'en_us',' responsive site and content management for a real estate development acquisition asset management design by jason hammel '),(152,'field',4,'en_us',' 5thfloor '),(152,'field',17,'en_us',' 0 '),(209,'field',16,'en_us',''),(209,'slug',0,'en_us',''),(209,'title',0,'en_us',' new orleans city park '),(210,'field',14,'en_us',' ecom '),(210,'field',15,'en_us',' ecommerce site component e g shopify big commerce big cartel magento etc '),(210,'slug',0,'en_us',' ecommerce '),(210,'title',0,'en_us',' ecommerce '),(77,'field',14,'en_us',' design '),(77,'field',15,'en_us',' including mood boards flats branding layout page deisgn or other services related to design '),(78,'field',14,'en_us',' cms '),(78,'field',15,'en_us',' dynamic content and site management for clients '),(79,'field',14,'en_us',' js '),(79,'field',15,'en_us',' javascript jquery coffee script or interactive scripting '),(80,'field',14,'en_us',' html '),(80,'field',15,'en_us',' page templates and associeted template code also php and twig '),(81,'field',14,'en_us',' css '),(81,'field',15,'en_us',' cascading styles sheets also including less sass bem and styles based languages '),(211,'filename',0,'en_us',' del jpg '),(211,'extension',0,'en_us',' jpg '),(211,'kind',0,'en_us',' image '),(211,'slug',0,'en_us',' del '),(211,'title',0,'en_us',' del '),(212,'filename',0,'en_us',' gasparian jpg '),(212,'extension',0,'en_us',' jpg '),(212,'kind',0,'en_us',' image '),(212,'slug',0,'en_us',' gasparian '),(212,'title',0,'en_us',' gasparian ');
/*!40000 ALTER TABLE `craft_searchindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_sections`
--

DROP TABLE IF EXISTS `craft_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  KEY `craft_sections_structureId_fk` (`structureId`),
  CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sections`
--

LOCK TABLES `craft_sections` WRITE;
/*!40000 ALTER TABLE `craft_sections` DISABLE KEYS */;
INSERT INTO `craft_sections` VALUES (1,NULL,'Homepage','homepage','single',1,'views/index',0,'2013-09-20 17:28:29','2015-06-26 18:45:49','fa6aba61-609f-4cc2-9a14-6ba0e5c62c10'),(2,NULL,'Projects','projects','channel',1,'projects/_entry',0,'2013-09-20 17:28:29','2013-09-20 18:42:44','2791d0d5-aa1c-48ad-beb6-9aae3db3d478');
/*!40000 ALTER TABLE `craft_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_sections_i18n`
--

DROP TABLE IF EXISTS `craft_sections_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sections_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) DEFAULT '1',
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  KEY `craft_sections_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sections_i18n`
--

LOCK TABLES `craft_sections_i18n` WRITE;
/*!40000 ALTER TABLE `craft_sections_i18n` DISABLE KEYS */;
INSERT INTO `craft_sections_i18n` VALUES (1,1,'en_us',1,'__home__',NULL,'2013-09-20 17:28:29','2016-09-19 17:15:08','3a246265-dc58-49f6-8c64-ca992a23f80e'),(2,2,'en_us',1,'projects/{slug}',NULL,'2013-09-20 17:28:29','2016-09-19 17:15:08','c5b6ab2d-526d-4ef1-b564-92b63c81bb8e');
/*!40000 ALTER TABLE `craft_sections_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_sessions`
--

DROP TABLE IF EXISTS `craft_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sessions_uid_idx` (`uid`),
  KEY `craft_sessions_token_idx` (`token`),
  KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  KEY `craft_sessions_userId_fk` (`userId`),
  CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_sessions`
--

LOCK TABLES `craft_sessions` WRITE;
/*!40000 ALTER TABLE `craft_sessions` DISABLE KEYS */;
INSERT INTO `craft_sessions` VALUES (36,1,'b883927f0b96c32d0e9b3567c49c5d35ed74752bczozMjoiTkNCRFRBWVhXazBaVUFVWnFRbkR5NUdfNTM2ejFTYXgiOw==','2015-06-26 18:23:53','2015-06-26 18:30:29','fa7da8de-fc5c-417d-903c-2e9e07e4bb26'),(37,1,'a54542b9bcb96ec9c87b323c45084ed64266c106czozMjoiYkNrbUpiWjh4cldDZlY0Z3R2ZlhDSTFBMFJJTFlKUmsiOw==','2015-08-20 17:45:44','2015-08-20 17:45:44','ceeeca59-d6b6-4b2b-b3d9-2b8c52c42593'),(38,1,'0896a3ffcf24a8a1d8c9888979ee396fadf1f85bczozMjoiZVRZS1BXWVNwQUNWd29IZTZwRFZqbHNXNWc2akdkNEYiOw==','2015-08-21 15:42:31','2015-08-21 15:42:31','f76677f3-fc4d-41b3-ba50-4531c9f40531'),(39,1,'2cb953f83b05629a4ba4518e608d5ef62ce0ae91czozMjoiekpXTzB5TkdUZENNdTVFanVOdkNOTWNmekhhS1IyS1EiOw==','2015-08-21 21:14:17','2015-08-21 21:14:17','d6d1181b-7852-440d-8576-94ffc53b7a89'),(40,1,'7d2f0fc7ad37121f0f60f7854d8da9d2cef4159aczozMjoiU2tzMHVnVk1TR3RvbG5uSWhkeW9qWEloNkNCVjg1eVkiOw==','2015-08-22 15:28:35','2015-08-22 15:28:35','6dd1e3b4-13ba-4bd6-b7e3-3d4a2177a152'),(41,1,'9c8efeef465da8e6f4fc7846c99b65ddf4991b99czozMjoibjQ4VFhWSXd5VTNVSjU0NmZ3Uk80NlhPSk5JQkxsdWgiOw==','2016-09-19 17:15:18','2016-09-19 17:15:18','620f9f15-4d2d-413e-8601-133bd218054f');
/*!40000 ALTER TABLE `craft_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_shunnedmessages`
--

DROP TABLE IF EXISTS `craft_shunnedmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`),
  CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_shunnedmessages`
--

LOCK TABLES `craft_shunnedmessages` WRITE;
/*!40000 ALTER TABLE `craft_shunnedmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_shunnedmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_structureelements`
--

DROP TABLE IF EXISTS `craft_structureelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(10) unsigned DEFAULT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rgt` int(10) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  KEY `craft_structureelements_root_idx` (`root`),
  KEY `craft_structureelements_lft_idx` (`lft`),
  KEY `craft_structureelements_rgt_idx` (`rgt`),
  KEY `craft_structureelements_level_idx` (`level`),
  KEY `craft_structureelements_elementId_fk` (`elementId`),
  CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_structureelements`
--

LOCK TABLES `craft_structureelements` WRITE;
/*!40000 ALTER TABLE `craft_structureelements` DISABLE KEYS */;
INSERT INTO `craft_structureelements` VALUES (1,1,NULL,1,1,14,0,'2015-08-20 19:05:13','2015-08-20 19:05:13','fc1ef0a1-4239-4ed9-858c-dc315fa57b6b'),(2,1,77,1,2,3,1,'2015-08-20 19:05:13','2015-08-20 19:05:13','5d74d921-fcca-4770-89b5-7eee652b3033'),(3,1,78,1,4,5,1,'2015-08-20 19:05:27','2015-08-20 19:05:27','633af8d1-e4d0-4655-b07c-d05db834ae70'),(4,1,79,1,6,7,1,'2015-08-20 19:06:03','2015-08-20 19:06:03','cdd0d3a8-97c9-4219-8ac6-067049c43238'),(5,1,80,1,8,9,1,'2015-08-20 19:06:10','2015-08-20 19:06:10','f39e3c07-de6c-4f71-a55e-291e774f4bd3'),(6,1,81,1,10,11,1,'2015-08-20 19:06:20','2015-08-20 19:06:20','3757940b-8b0a-49cb-979e-27711401f697'),(7,1,210,1,12,13,1,'2015-08-21 16:04:47','2015-08-21 16:04:47','40be5eae-4a94-4863-ba5f-72c8353f3784');
/*!40000 ALTER TABLE `craft_structureelements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_structures`
--

DROP TABLE IF EXISTS `craft_structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_structures`
--

LOCK TABLES `craft_structures` WRITE;
/*!40000 ALTER TABLE `craft_structures` DISABLE KEYS */;
INSERT INTO `craft_structures` VALUES (1,2,'2015-08-20 19:04:56','2015-08-20 19:08:35','32ee38be-62a8-42f9-8fdd-36a9104611ca');
/*!40000 ALTER TABLE `craft_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_systemsettings`
--

DROP TABLE IF EXISTS `craft_systemsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_systemsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_systemsettings`
--

LOCK TABLES `craft_systemsettings` WRITE;
/*!40000 ALTER TABLE `craft_systemsettings` DISABLE KEYS */;
INSERT INTO `craft_systemsettings` VALUES (1,'email','{\"protocol\":\"php\",\"emailAddress\":\"allan@vectorliving.com\",\"senderName\":\"VectorLiving\"}','2013-09-20 17:28:29','2013-09-20 17:28:29','51aec3b8-8a7b-4549-92a1-9340322f52c1');
/*!40000 ALTER TABLE `craft_systemsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_taggroups`
--

DROP TABLE IF EXISTS `craft_taggroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  KEY `craft_taggroups_fieldLayoutId_idx` (`fieldLayoutId`),
  CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_taggroups`
--

LOCK TABLES `craft_taggroups` WRITE;
/*!40000 ALTER TABLE `craft_taggroups` DISABLE KEYS */;
INSERT INTO `craft_taggroups` VALUES (1,'Default','default',1,'2013-09-20 17:28:29','2013-09-20 17:28:29','0d9c1ee6-a313-4457-8a1d-7ee7df88ea6f');
/*!40000 ALTER TABLE `craft_taggroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_tags`
--

DROP TABLE IF EXISTS `craft_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tags_groupId_idx` (`groupId`),
  CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_tags`
--

LOCK TABLES `craft_tags` WRITE;
/*!40000 ALTER TABLE `craft_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_tasks`
--

DROP TABLE IF EXISTS `craft_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `currentStep` int(11) unsigned DEFAULT NULL,
  `totalSteps` int(11) unsigned DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` mediumtext COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tasks_root_idx` (`root`),
  KEY `craft_tasks_lft_idx` (`lft`),
  KEY `craft_tasks_rgt_idx` (`rgt`),
  KEY `craft_tasks_level_idx` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_tasks`
--

LOCK TABLES `craft_tasks` WRITE;
/*!40000 ALTER TABLE `craft_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_templatecachecriteria`
--

DROP TABLE IF EXISTS `craft_templatecachecriteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_templatecachecriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  KEY `craft_templatecachecriteria_type_idx` (`type`),
  CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_templatecachecriteria`
--

LOCK TABLES `craft_templatecachecriteria` WRITE;
/*!40000 ALTER TABLE `craft_templatecachecriteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_templatecachecriteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_templatecacheelements`
--

DROP TABLE IF EXISTS `craft_templatecacheelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  KEY `craft_templatecacheelements_elementId_fk` (`elementId`),
  CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_templatecacheelements`
--

LOCK TABLES `craft_templatecacheelements` WRITE;
/*!40000 ALTER TABLE `craft_templatecacheelements` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_templatecacheelements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_templatecaches`
--

DROP TABLE IF EXISTS `craft_templatecaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecaches_expiryDate_cacheKey_locale_path_idx` (`expiryDate`,`cacheKey`,`locale`,`path`),
  KEY `craft_templatecaches_locale_fk` (`locale`),
  CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_templatecaches`
--

LOCK TABLES `craft_templatecaches` WRITE;
/*!40000 ALTER TABLE `craft_templatecaches` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_templatecaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_tokens`
--

DROP TABLE IF EXISTS `craft_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  KEY `craft_tokens_expiryDate_idx` (`expiryDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_tokens`
--

LOCK TABLES `craft_tokens` WRITE;
/*!40000 ALTER TABLE `craft_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_usergroups`
--

DROP TABLE IF EXISTS `craft_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_usergroups`
--

LOCK TABLES `craft_usergroups` WRITE;
/*!40000 ALTER TABLE `craft_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_usergroups_users`
--

DROP TABLE IF EXISTS `craft_usergroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  KEY `craft_usergroups_users_userId_fk` (`userId`),
  CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_usergroups_users`
--

LOCK TABLES `craft_usergroups_users` WRITE;
/*!40000 ALTER TABLE `craft_usergroups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_usergroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_userpermissions`
--

DROP TABLE IF EXISTS `craft_userpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_userpermissions`
--

LOCK TABLES `craft_userpermissions` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_userpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_userpermissions_usergroups`
--

DROP TABLE IF EXISTS `craft_userpermissions_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`),
  CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_userpermissions_usergroups`
--

LOCK TABLES `craft_userpermissions_usergroups` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_userpermissions_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_userpermissions_users`
--

DROP TABLE IF EXISTS `craft_userpermissions_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  KEY `craft_userpermissions_users_userId_fk` (`userId`),
  CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_userpermissions_users`
--

LOCK TABLES `craft_userpermissions_users` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `craft_userpermissions_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_users`
--

DROP TABLE IF EXISTS `craft_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(4) NOT NULL DEFAULT '0',
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `client` tinyint(1) NOT NULL,
  `locked` tinyint(1) NOT NULL,
  `suspended` tinyint(1) NOT NULL,
  `pending` tinyint(1) NOT NULL,
  `archived` tinyint(1) NOT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  KEY `craft_users_verificationCode_idx` (`verificationCode`),
  KEY `craft_users_uid_idx` (`uid`),
  KEY `craft_users_preferredLocale_fk` (`preferredLocale`),
  CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_users`
--

LOCK TABLES `craft_users` WRITE;
/*!40000 ALTER TABLE `craft_users` DISABLE KEYS */;
INSERT INTO `craft_users` VALUES (1,'admin',NULL,NULL,NULL,'allan@vectorliving.com','$2a$13$lnjR6yVU32v45jWsfuifp.U.y37YOhYEh8qU07rTOy5QGUqpYGzeO',NULL,0,1,0,0,0,0,0,'2016-09-19 17:15:18','192.168.33.1',NULL,NULL,'2014-06-16 17:15:07',NULL,NULL,NULL,NULL,0,'2013-09-20 17:28:27','2013-09-20 17:28:27','2016-09-19 17:15:18','2e392e67-066d-48a1-a73a-12f291fda409');
/*!40000 ALTER TABLE `craft_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craft_widgets`
--

DROP TABLE IF EXISTS `craft_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `colspan` tinyint(4) unsigned DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_widgets_userId_fk` (`userId`),
  CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craft_widgets`
--

LOCK TABLES `craft_widgets` WRITE;
/*!40000 ALTER TABLE `craft_widgets` DISABLE KEYS */;
INSERT INTO `craft_widgets` VALUES (1,1,'QuickPost',1,NULL,'{\"section\":\"2\",\"entryType\":\"2\",\"fields\":[\"4\",\"5\",\"6\",\"7\"]}',1,'2013-09-20 17:28:33','2013-09-20 18:37:41','e0140938-b9bd-471a-aadc-dd57b69bb4a9'),(2,1,'RecentEntries',2,NULL,NULL,1,'2013-09-20 17:28:33','2013-09-20 17:28:33','7ef55802-8ab8-4685-8767-17fdb14f75c7'),(3,1,'GetHelp',3,NULL,NULL,1,'2013-09-20 17:28:33','2013-09-20 17:28:33','f1208623-6e2c-4052-abe2-4258c6eb7e6e'),(4,1,'Updates',4,NULL,NULL,1,'2013-09-20 17:28:33','2013-09-20 17:28:33','1b4b2375-f42a-4bb7-b698-f28f3e6d4b4f'),(5,1,'Feed',5,NULL,'{\"url\":\"https:\\/\\/craftcms.com\\/news.rss\",\"title\":\"Craft News\"}',1,'2013-09-20 17:28:33','2016-09-19 17:15:07','1ee8e0af-fc6f-41e5-865f-322d8d540366');
/*!40000 ALTER TABLE `craft_widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-19 17:24:36
