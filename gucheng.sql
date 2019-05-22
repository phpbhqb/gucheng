-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: gucheng
-- ------------------------------------------------------
-- Server version	5.7.24-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `gucheng`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `gucheng` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gucheng`;

--
-- Table structure for table `gc_ecms_article`
--

DROP TABLE IF EXISTS `gc_ecms_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `writer` char(30) NOT NULL DEFAULT '',
  `befrom` char(60) NOT NULL DEFAULT '',
  `newstext` char(50) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_article`
--

LOCK TABLES `gc_ecms_article` WRITE;
/*!40000 ALTER TABLE `gc_ecms_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_article_check`
--

DROP TABLE IF EXISTS `gc_ecms_article_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_article_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `writer` char(30) NOT NULL DEFAULT '',
  `befrom` char(60) NOT NULL DEFAULT '',
  `newstext` char(50) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_article_check`
--

LOCK TABLES `gc_ecms_article_check` WRITE;
/*!40000 ALTER TABLE `gc_ecms_article_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_article_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_article_check_data`
--

DROP TABLE IF EXISTS `gc_ecms_article_check_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_article_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_article_check_data`
--

LOCK TABLES `gc_ecms_article_check_data` WRITE;
/*!40000 ALTER TABLE `gc_ecms_article_check_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_article_check_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_article_data_1`
--

DROP TABLE IF EXISTS `gc_ecms_article_data_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_article_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_article_data_1`
--

LOCK TABLES `gc_ecms_article_data_1` WRITE;
/*!40000 ALTER TABLE `gc_ecms_article_data_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_article_data_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_article_doc`
--

DROP TABLE IF EXISTS `gc_ecms_article_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_article_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `writer` char(30) NOT NULL DEFAULT '',
  `befrom` char(60) NOT NULL DEFAULT '',
  `newstext` char(50) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_article_doc`
--

LOCK TABLES `gc_ecms_article_doc` WRITE;
/*!40000 ALTER TABLE `gc_ecms_article_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_article_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_article_doc_data`
--

DROP TABLE IF EXISTS `gc_ecms_article_doc_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_article_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_article_doc_data`
--

LOCK TABLES `gc_ecms_article_doc_data` WRITE;
/*!40000 ALTER TABLE `gc_ecms_article_doc_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_article_doc_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_article_doc_index`
--

DROP TABLE IF EXISTS `gc_ecms_article_doc_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_article_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_article_doc_index`
--

LOCK TABLES `gc_ecms_article_doc_index` WRITE;
/*!40000 ALTER TABLE `gc_ecms_article_doc_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_article_doc_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_article_index`
--

DROP TABLE IF EXISTS `gc_ecms_article_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_article_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_article_index`
--

LOCK TABLES `gc_ecms_article_index` WRITE;
/*!40000 ALTER TABLE `gc_ecms_article_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_article_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_download`
--

DROP TABLE IF EXISTS `gc_ecms_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `softfj` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(16) NOT NULL DEFAULT '',
  `softtype` varchar(16) NOT NULL DEFAULT '',
  `softsq` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `softsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_download`
--

LOCK TABLES `gc_ecms_download` WRITE;
/*!40000 ALTER TABLE `gc_ecms_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_download_check`
--

DROP TABLE IF EXISTS `gc_ecms_download_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_download_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `softfj` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(16) NOT NULL DEFAULT '',
  `softtype` varchar(16) NOT NULL DEFAULT '',
  `softsq` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `softsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_download_check`
--

LOCK TABLES `gc_ecms_download_check` WRITE;
/*!40000 ALTER TABLE `gc_ecms_download_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_download_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_download_check_data`
--

DROP TABLE IF EXISTS `gc_ecms_download_check_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_download_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `softwriter` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(80) NOT NULL DEFAULT '',
  `demo` varchar(120) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_download_check_data`
--

LOCK TABLES `gc_ecms_download_check_data` WRITE;
/*!40000 ALTER TABLE `gc_ecms_download_check_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_download_check_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_download_data_1`
--

DROP TABLE IF EXISTS `gc_ecms_download_data_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_download_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `softwriter` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(80) NOT NULL DEFAULT '',
  `demo` varchar(120) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_download_data_1`
--

LOCK TABLES `gc_ecms_download_data_1` WRITE;
/*!40000 ALTER TABLE `gc_ecms_download_data_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_download_data_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_download_doc`
--

DROP TABLE IF EXISTS `gc_ecms_download_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_download_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `softfj` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(16) NOT NULL DEFAULT '',
  `softtype` varchar(16) NOT NULL DEFAULT '',
  `softsq` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `softsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_download_doc`
--

LOCK TABLES `gc_ecms_download_doc` WRITE;
/*!40000 ALTER TABLE `gc_ecms_download_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_download_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_download_doc_data`
--

DROP TABLE IF EXISTS `gc_ecms_download_doc_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_download_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `softwriter` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(80) NOT NULL DEFAULT '',
  `demo` varchar(120) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_download_doc_data`
--

LOCK TABLES `gc_ecms_download_doc_data` WRITE;
/*!40000 ALTER TABLE `gc_ecms_download_doc_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_download_doc_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_download_doc_index`
--

DROP TABLE IF EXISTS `gc_ecms_download_doc_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_download_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_download_doc_index`
--

LOCK TABLES `gc_ecms_download_doc_index` WRITE;
/*!40000 ALTER TABLE `gc_ecms_download_doc_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_download_doc_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_download_index`
--

DROP TABLE IF EXISTS `gc_ecms_download_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_download_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_download_index`
--

LOCK TABLES `gc_ecms_download_index` WRITE;
/*!40000 ALTER TABLE `gc_ecms_download_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_download_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_flash`
--

DROP TABLE IF EXISTS `gc_ecms_flash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_flash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `flashwriter` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `flashurl` varchar(255) NOT NULL DEFAULT '',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  `flashsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_flash`
--

LOCK TABLES `gc_ecms_flash` WRITE;
/*!40000 ALTER TABLE `gc_ecms_flash` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_flash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_flash_check`
--

DROP TABLE IF EXISTS `gc_ecms_flash_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_flash_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `flashwriter` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `flashurl` varchar(255) NOT NULL DEFAULT '',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  `flashsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_flash_check`
--

LOCK TABLES `gc_ecms_flash_check` WRITE;
/*!40000 ALTER TABLE `gc_ecms_flash_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_flash_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_flash_check_data`
--

DROP TABLE IF EXISTS `gc_ecms_flash_check_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_flash_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_flash_check_data`
--

LOCK TABLES `gc_ecms_flash_check_data` WRITE;
/*!40000 ALTER TABLE `gc_ecms_flash_check_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_flash_check_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_flash_data_1`
--

DROP TABLE IF EXISTS `gc_ecms_flash_data_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_flash_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_flash_data_1`
--

LOCK TABLES `gc_ecms_flash_data_1` WRITE;
/*!40000 ALTER TABLE `gc_ecms_flash_data_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_flash_data_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_flash_doc`
--

DROP TABLE IF EXISTS `gc_ecms_flash_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_flash_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `flashwriter` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `flashurl` varchar(255) NOT NULL DEFAULT '',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  `flashsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_flash_doc`
--

LOCK TABLES `gc_ecms_flash_doc` WRITE;
/*!40000 ALTER TABLE `gc_ecms_flash_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_flash_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_flash_doc_data`
--

DROP TABLE IF EXISTS `gc_ecms_flash_doc_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_flash_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_flash_doc_data`
--

LOCK TABLES `gc_ecms_flash_doc_data` WRITE;
/*!40000 ALTER TABLE `gc_ecms_flash_doc_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_flash_doc_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_flash_doc_index`
--

DROP TABLE IF EXISTS `gc_ecms_flash_doc_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_flash_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_flash_doc_index`
--

LOCK TABLES `gc_ecms_flash_doc_index` WRITE;
/*!40000 ALTER TABLE `gc_ecms_flash_doc_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_flash_doc_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_flash_index`
--

DROP TABLE IF EXISTS `gc_ecms_flash_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_flash_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_flash_index`
--

LOCK TABLES `gc_ecms_flash_index` WRITE;
/*!40000 ALTER TABLE `gc_ecms_flash_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_flash_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_info`
--

DROP TABLE IF EXISTS `gc_ecms_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `smalltext` text NOT NULL,
  `myarea` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_info`
--

LOCK TABLES `gc_ecms_info` WRITE;
/*!40000 ALTER TABLE `gc_ecms_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_info_check`
--

DROP TABLE IF EXISTS `gc_ecms_info_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_info_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `smalltext` text NOT NULL,
  `myarea` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_info_check`
--

LOCK TABLES `gc_ecms_info_check` WRITE;
/*!40000 ALTER TABLE `gc_ecms_info_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_info_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_info_check_data`
--

DROP TABLE IF EXISTS `gc_ecms_info_check_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_info_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycontact` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_info_check_data`
--

LOCK TABLES `gc_ecms_info_check_data` WRITE;
/*!40000 ALTER TABLE `gc_ecms_info_check_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_info_check_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_info_data_1`
--

DROP TABLE IF EXISTS `gc_ecms_info_data_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_info_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycontact` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_info_data_1`
--

LOCK TABLES `gc_ecms_info_data_1` WRITE;
/*!40000 ALTER TABLE `gc_ecms_info_data_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_info_data_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_info_doc`
--

DROP TABLE IF EXISTS `gc_ecms_info_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_info_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `smalltext` text NOT NULL,
  `myarea` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_info_doc`
--

LOCK TABLES `gc_ecms_info_doc` WRITE;
/*!40000 ALTER TABLE `gc_ecms_info_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_info_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_info_doc_data`
--

DROP TABLE IF EXISTS `gc_ecms_info_doc_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_info_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycontact` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_info_doc_data`
--

LOCK TABLES `gc_ecms_info_doc_data` WRITE;
/*!40000 ALTER TABLE `gc_ecms_info_doc_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_info_doc_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_info_doc_index`
--

DROP TABLE IF EXISTS `gc_ecms_info_doc_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_info_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_info_doc_index`
--

LOCK TABLES `gc_ecms_info_doc_index` WRITE;
/*!40000 ALTER TABLE `gc_ecms_info_doc_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_info_doc_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_info_index`
--

DROP TABLE IF EXISTS `gc_ecms_info_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_info_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_info_index`
--

LOCK TABLES `gc_ecms_info_index` WRITE;
/*!40000 ALTER TABLE `gc_ecms_info_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_info_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_infoclass_article`
--

DROP TABLE IF EXISTS `gc_ecms_infoclass_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_infoclass_article` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_ftitle` text NOT NULL,
  `z_ftitle` varchar(255) NOT NULL DEFAULT '',
  `qz_ftitle` varchar(255) NOT NULL DEFAULT '',
  `save_ftitle` varchar(10) NOT NULL DEFAULT '',
  `zz_smalltext` text NOT NULL,
  `z_smalltext` varchar(255) NOT NULL DEFAULT '',
  `qz_smalltext` varchar(255) NOT NULL DEFAULT '',
  `save_smalltext` varchar(10) NOT NULL DEFAULT '',
  `zz_writer` text NOT NULL,
  `z_writer` varchar(255) NOT NULL DEFAULT '',
  `qz_writer` varchar(255) NOT NULL DEFAULT '',
  `save_writer` varchar(10) NOT NULL DEFAULT '',
  `zz_befrom` text NOT NULL,
  `z_befrom` varchar(255) NOT NULL DEFAULT '',
  `qz_befrom` varchar(255) NOT NULL DEFAULT '',
  `save_befrom` varchar(10) NOT NULL DEFAULT '',
  `zz_newstext` text NOT NULL,
  `z_newstext` varchar(255) NOT NULL DEFAULT '',
  `qz_newstext` varchar(255) NOT NULL DEFAULT '',
  `save_newstext` varchar(10) NOT NULL DEFAULT '',
  `zz_diggtop` text NOT NULL,
  `z_diggtop` varchar(255) NOT NULL DEFAULT '',
  `qz_diggtop` varchar(255) NOT NULL DEFAULT '',
  `save_diggtop` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_infoclass_article`
--

LOCK TABLES `gc_ecms_infoclass_article` WRITE;
/*!40000 ALTER TABLE `gc_ecms_infoclass_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_infoclass_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_infoclass_download`
--

DROP TABLE IF EXISTS `gc_ecms_infoclass_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_infoclass_download` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_softwriter` text NOT NULL,
  `z_softwriter` varchar(255) NOT NULL DEFAULT '',
  `qz_softwriter` varchar(255) NOT NULL DEFAULT '',
  `save_softwriter` varchar(10) NOT NULL DEFAULT '',
  `zz_homepage` text NOT NULL,
  `z_homepage` varchar(255) NOT NULL DEFAULT '',
  `qz_homepage` varchar(255) NOT NULL DEFAULT '',
  `save_homepage` varchar(10) NOT NULL DEFAULT '',
  `zz_demo` text NOT NULL,
  `z_demo` varchar(255) NOT NULL DEFAULT '',
  `qz_demo` varchar(255) NOT NULL DEFAULT '',
  `save_demo` varchar(10) NOT NULL DEFAULT '',
  `zz_softfj` text NOT NULL,
  `z_softfj` varchar(255) NOT NULL DEFAULT '',
  `qz_softfj` varchar(255) NOT NULL DEFAULT '',
  `save_softfj` varchar(10) NOT NULL DEFAULT '',
  `zz_language` text NOT NULL,
  `z_language` varchar(255) NOT NULL DEFAULT '',
  `qz_language` varchar(255) NOT NULL DEFAULT '',
  `save_language` varchar(10) NOT NULL DEFAULT '',
  `zz_softtype` text NOT NULL,
  `z_softtype` varchar(255) NOT NULL DEFAULT '',
  `qz_softtype` varchar(255) NOT NULL DEFAULT '',
  `save_softtype` varchar(10) NOT NULL DEFAULT '',
  `zz_softsq` text NOT NULL,
  `z_softsq` varchar(255) NOT NULL DEFAULT '',
  `qz_softsq` varchar(255) NOT NULL DEFAULT '',
  `save_softsq` varchar(10) NOT NULL DEFAULT '',
  `zz_star` text NOT NULL,
  `z_star` varchar(255) NOT NULL DEFAULT '',
  `qz_star` varchar(255) NOT NULL DEFAULT '',
  `save_star` varchar(10) NOT NULL DEFAULT '',
  `zz_filetype` text NOT NULL,
  `z_filetype` varchar(255) NOT NULL DEFAULT '',
  `qz_filetype` varchar(255) NOT NULL DEFAULT '',
  `save_filetype` varchar(10) NOT NULL DEFAULT '',
  `zz_filesize` text NOT NULL,
  `z_filesize` varchar(255) NOT NULL DEFAULT '',
  `qz_filesize` varchar(255) NOT NULL DEFAULT '',
  `save_filesize` varchar(10) NOT NULL DEFAULT '',
  `zz_downpath` text NOT NULL,
  `z_downpath` varchar(255) NOT NULL DEFAULT '',
  `qz_downpath` varchar(255) NOT NULL DEFAULT '',
  `save_downpath` varchar(10) NOT NULL DEFAULT '',
  `zz_softsay` text NOT NULL,
  `z_softsay` varchar(255) NOT NULL DEFAULT '',
  `qz_softsay` varchar(255) NOT NULL DEFAULT '',
  `save_softsay` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_infoclass_download`
--

LOCK TABLES `gc_ecms_infoclass_download` WRITE;
/*!40000 ALTER TABLE `gc_ecms_infoclass_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_infoclass_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_infoclass_flash`
--

DROP TABLE IF EXISTS `gc_ecms_infoclass_flash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_infoclass_flash` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_flashwriter` text NOT NULL,
  `z_flashwriter` varchar(255) NOT NULL DEFAULT '',
  `qz_flashwriter` varchar(255) NOT NULL DEFAULT '',
  `save_flashwriter` varchar(10) NOT NULL DEFAULT '',
  `zz_email` text NOT NULL,
  `z_email` varchar(255) NOT NULL DEFAULT '',
  `qz_email` varchar(255) NOT NULL DEFAULT '',
  `save_email` varchar(10) NOT NULL DEFAULT '',
  `zz_star` text NOT NULL,
  `z_star` varchar(255) NOT NULL DEFAULT '',
  `qz_star` varchar(255) NOT NULL DEFAULT '',
  `save_star` varchar(10) NOT NULL DEFAULT '',
  `zz_filesize` text NOT NULL,
  `z_filesize` varchar(255) NOT NULL DEFAULT '',
  `qz_filesize` varchar(255) NOT NULL DEFAULT '',
  `save_filesize` varchar(10) NOT NULL DEFAULT '',
  `zz_flashurl` text NOT NULL,
  `z_flashurl` varchar(255) NOT NULL DEFAULT '',
  `qz_flashurl` varchar(255) NOT NULL DEFAULT '',
  `save_flashurl` varchar(10) NOT NULL DEFAULT '',
  `zz_width` text NOT NULL,
  `z_width` varchar(255) NOT NULL DEFAULT '',
  `qz_width` varchar(255) NOT NULL DEFAULT '',
  `save_width` varchar(10) NOT NULL DEFAULT '',
  `zz_height` text NOT NULL,
  `z_height` varchar(255) NOT NULL DEFAULT '',
  `qz_height` varchar(255) NOT NULL DEFAULT '',
  `save_height` varchar(10) NOT NULL DEFAULT '',
  `zz_flashsay` text NOT NULL,
  `z_flashsay` varchar(255) NOT NULL DEFAULT '',
  `qz_flashsay` varchar(255) NOT NULL DEFAULT '',
  `save_flashsay` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_infoclass_flash`
--

LOCK TABLES `gc_ecms_infoclass_flash` WRITE;
/*!40000 ALTER TABLE `gc_ecms_infoclass_flash` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_infoclass_flash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_infoclass_info`
--

DROP TABLE IF EXISTS `gc_ecms_infoclass_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_infoclass_info` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_smalltext` text NOT NULL,
  `z_smalltext` varchar(255) NOT NULL DEFAULT '',
  `qz_smalltext` varchar(255) NOT NULL DEFAULT '',
  `save_smalltext` varchar(10) NOT NULL DEFAULT '',
  `zz_myarea` text NOT NULL,
  `z_myarea` varchar(255) NOT NULL DEFAULT '',
  `qz_myarea` varchar(255) NOT NULL DEFAULT '',
  `save_myarea` varchar(10) NOT NULL DEFAULT '',
  `zz_email` text NOT NULL,
  `z_email` varchar(255) NOT NULL DEFAULT '',
  `qz_email` varchar(255) NOT NULL DEFAULT '',
  `save_email` varchar(10) NOT NULL DEFAULT '',
  `zz_mycontact` text NOT NULL,
  `z_mycontact` varchar(255) NOT NULL DEFAULT '',
  `qz_mycontact` varchar(255) NOT NULL DEFAULT '',
  `save_mycontact` varchar(10) NOT NULL DEFAULT '',
  `zz_address` text NOT NULL,
  `z_address` varchar(255) NOT NULL DEFAULT '',
  `qz_address` varchar(255) NOT NULL DEFAULT '',
  `save_address` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_infoclass_info`
--

LOCK TABLES `gc_ecms_infoclass_info` WRITE;
/*!40000 ALTER TABLE `gc_ecms_infoclass_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_infoclass_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_infoclass_movie`
--

DROP TABLE IF EXISTS `gc_ecms_infoclass_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_infoclass_movie` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_movietype` text NOT NULL,
  `z_movietype` varchar(255) NOT NULL DEFAULT '',
  `qz_movietype` varchar(255) NOT NULL DEFAULT '',
  `save_movietype` varchar(10) NOT NULL DEFAULT '',
  `zz_company` text NOT NULL,
  `z_company` varchar(255) NOT NULL DEFAULT '',
  `qz_company` varchar(255) NOT NULL DEFAULT '',
  `save_company` varchar(10) NOT NULL DEFAULT '',
  `zz_movietime` text NOT NULL,
  `z_movietime` varchar(255) NOT NULL DEFAULT '',
  `qz_movietime` varchar(255) NOT NULL DEFAULT '',
  `save_movietime` varchar(10) NOT NULL DEFAULT '',
  `zz_player` text NOT NULL,
  `z_player` varchar(255) NOT NULL DEFAULT '',
  `qz_player` varchar(255) NOT NULL DEFAULT '',
  `save_player` varchar(10) NOT NULL DEFAULT '',
  `zz_playadmin` text NOT NULL,
  `z_playadmin` varchar(255) NOT NULL DEFAULT '',
  `qz_playadmin` varchar(255) NOT NULL DEFAULT '',
  `save_playadmin` varchar(10) NOT NULL DEFAULT '',
  `zz_filetype` text NOT NULL,
  `z_filetype` varchar(255) NOT NULL DEFAULT '',
  `qz_filetype` varchar(255) NOT NULL DEFAULT '',
  `save_filetype` varchar(10) NOT NULL DEFAULT '',
  `zz_filesize` text NOT NULL,
  `z_filesize` varchar(255) NOT NULL DEFAULT '',
  `qz_filesize` varchar(255) NOT NULL DEFAULT '',
  `save_filesize` varchar(10) NOT NULL DEFAULT '',
  `zz_star` text NOT NULL,
  `z_star` varchar(255) NOT NULL DEFAULT '',
  `qz_star` varchar(255) NOT NULL DEFAULT '',
  `save_star` varchar(10) NOT NULL DEFAULT '',
  `zz_playdk` text NOT NULL,
  `z_playdk` varchar(255) NOT NULL DEFAULT '',
  `qz_playdk` varchar(255) NOT NULL DEFAULT '',
  `save_playdk` varchar(10) NOT NULL DEFAULT '',
  `zz_playtime` text NOT NULL,
  `z_playtime` varchar(255) NOT NULL DEFAULT '',
  `qz_playtime` varchar(255) NOT NULL DEFAULT '',
  `save_playtime` varchar(10) NOT NULL DEFAULT '',
  `zz_moviefen` text NOT NULL,
  `z_moviefen` varchar(255) NOT NULL DEFAULT '',
  `qz_moviefen` varchar(255) NOT NULL DEFAULT '',
  `save_moviefen` varchar(10) NOT NULL DEFAULT '',
  `zz_downpath` text NOT NULL,
  `z_downpath` varchar(255) NOT NULL DEFAULT '',
  `qz_downpath` varchar(255) NOT NULL DEFAULT '',
  `save_downpath` varchar(10) NOT NULL DEFAULT '',
  `zz_playerid` text NOT NULL,
  `z_playerid` varchar(255) NOT NULL DEFAULT '',
  `qz_playerid` varchar(255) NOT NULL DEFAULT '',
  `save_playerid` varchar(10) NOT NULL DEFAULT '',
  `zz_onlinepath` text NOT NULL,
  `z_onlinepath` varchar(255) NOT NULL DEFAULT '',
  `qz_onlinepath` varchar(255) NOT NULL DEFAULT '',
  `save_onlinepath` varchar(10) NOT NULL DEFAULT '',
  `zz_moviesay` text NOT NULL,
  `z_moviesay` varchar(255) NOT NULL DEFAULT '',
  `qz_moviesay` varchar(255) NOT NULL DEFAULT '',
  `save_moviesay` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_infoclass_movie`
--

LOCK TABLES `gc_ecms_infoclass_movie` WRITE;
/*!40000 ALTER TABLE `gc_ecms_infoclass_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_infoclass_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_infoclass_news`
--

DROP TABLE IF EXISTS `gc_ecms_infoclass_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_infoclass_news` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_ftitle` text NOT NULL,
  `z_ftitle` varchar(255) NOT NULL DEFAULT '',
  `qz_ftitle` varchar(255) NOT NULL DEFAULT '',
  `save_ftitle` varchar(10) NOT NULL DEFAULT '',
  `zz_smalltext` text NOT NULL,
  `z_smalltext` varchar(255) NOT NULL DEFAULT '',
  `qz_smalltext` varchar(255) NOT NULL DEFAULT '',
  `save_smalltext` varchar(10) NOT NULL DEFAULT '',
  `zz_writer` text NOT NULL,
  `z_writer` varchar(255) NOT NULL DEFAULT '',
  `qz_writer` varchar(255) NOT NULL DEFAULT '',
  `save_writer` varchar(10) NOT NULL DEFAULT '',
  `zz_befrom` text NOT NULL,
  `z_befrom` varchar(255) NOT NULL DEFAULT '',
  `qz_befrom` varchar(255) NOT NULL DEFAULT '',
  `save_befrom` varchar(10) NOT NULL DEFAULT '',
  `zz_newstext` text NOT NULL,
  `z_newstext` varchar(255) NOT NULL DEFAULT '',
  `qz_newstext` varchar(255) NOT NULL DEFAULT '',
  `save_newstext` varchar(10) NOT NULL DEFAULT '',
  `zz_diggtop` text NOT NULL,
  `z_diggtop` varchar(255) NOT NULL DEFAULT '',
  `qz_diggtop` varchar(255) NOT NULL DEFAULT '',
  `save_diggtop` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic_alt` text NOT NULL,
  `z_titlepic_alt` varchar(255) NOT NULL,
  `qz_titlepic_alt` varchar(255) NOT NULL,
  `save_titlepic_alt` varchar(10) NOT NULL,
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_infoclass_news`
--

LOCK TABLES `gc_ecms_infoclass_news` WRITE;
/*!40000 ALTER TABLE `gc_ecms_infoclass_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_infoclass_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_infoclass_photo`
--

DROP TABLE IF EXISTS `gc_ecms_infoclass_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_infoclass_photo` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_filesize` text NOT NULL,
  `z_filesize` varchar(255) NOT NULL DEFAULT '',
  `qz_filesize` varchar(255) NOT NULL DEFAULT '',
  `save_filesize` varchar(10) NOT NULL DEFAULT '',
  `zz_picsize` text NOT NULL,
  `z_picsize` varchar(255) NOT NULL DEFAULT '',
  `qz_picsize` varchar(255) NOT NULL DEFAULT '',
  `save_picsize` varchar(10) NOT NULL DEFAULT '',
  `zz_picfbl` text NOT NULL,
  `z_picfbl` varchar(255) NOT NULL DEFAULT '',
  `qz_picfbl` varchar(255) NOT NULL DEFAULT '',
  `save_picfbl` varchar(10) NOT NULL DEFAULT '',
  `zz_picfrom` text NOT NULL,
  `z_picfrom` varchar(255) NOT NULL DEFAULT '',
  `qz_picfrom` varchar(255) NOT NULL DEFAULT '',
  `save_picfrom` varchar(10) NOT NULL DEFAULT '',
  `zz_picurl` text NOT NULL,
  `z_picurl` varchar(255) NOT NULL DEFAULT '',
  `qz_picurl` varchar(255) NOT NULL DEFAULT '',
  `save_picurl` varchar(10) NOT NULL DEFAULT '',
  `zz_morepic` text NOT NULL,
  `z_morepic` varchar(255) NOT NULL DEFAULT '',
  `qz_morepic` varchar(255) NOT NULL DEFAULT '',
  `save_morepic` varchar(10) NOT NULL DEFAULT '',
  `zz_num` text NOT NULL,
  `z_num` varchar(255) NOT NULL DEFAULT '',
  `qz_num` varchar(255) NOT NULL DEFAULT '',
  `save_num` varchar(10) NOT NULL DEFAULT '',
  `zz_width` text NOT NULL,
  `z_width` varchar(255) NOT NULL DEFAULT '',
  `qz_width` varchar(255) NOT NULL DEFAULT '',
  `save_width` varchar(10) NOT NULL DEFAULT '',
  `zz_height` text NOT NULL,
  `z_height` varchar(255) NOT NULL DEFAULT '',
  `qz_height` varchar(255) NOT NULL DEFAULT '',
  `save_height` varchar(10) NOT NULL DEFAULT '',
  `zz_picsay` text NOT NULL,
  `z_picsay` varchar(255) NOT NULL DEFAULT '',
  `qz_picsay` varchar(255) NOT NULL DEFAULT '',
  `save_picsay` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_infoclass_photo`
--

LOCK TABLES `gc_ecms_infoclass_photo` WRITE;
/*!40000 ALTER TABLE `gc_ecms_infoclass_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_infoclass_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_infoclass_shop`
--

DROP TABLE IF EXISTS `gc_ecms_infoclass_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_infoclass_shop` (
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_productno` text NOT NULL,
  `z_productno` varchar(255) NOT NULL DEFAULT '',
  `qz_productno` varchar(255) NOT NULL DEFAULT '',
  `save_productno` varchar(10) NOT NULL DEFAULT '',
  `zz_pbrand` text NOT NULL,
  `z_pbrand` varchar(255) NOT NULL DEFAULT '',
  `qz_pbrand` varchar(255) NOT NULL DEFAULT '',
  `save_pbrand` varchar(10) NOT NULL DEFAULT '',
  `zz_intro` text NOT NULL,
  `z_intro` varchar(255) NOT NULL DEFAULT '',
  `qz_intro` varchar(255) NOT NULL DEFAULT '',
  `save_intro` varchar(10) NOT NULL DEFAULT '',
  `zz_unit` text NOT NULL,
  `z_unit` varchar(255) NOT NULL DEFAULT '',
  `qz_unit` varchar(255) NOT NULL DEFAULT '',
  `save_unit` varchar(10) NOT NULL DEFAULT '',
  `zz_weight` text NOT NULL,
  `z_weight` varchar(255) NOT NULL DEFAULT '',
  `qz_weight` varchar(255) NOT NULL DEFAULT '',
  `save_weight` varchar(10) NOT NULL DEFAULT '',
  `zz_tprice` text NOT NULL,
  `z_tprice` varchar(255) NOT NULL DEFAULT '',
  `qz_tprice` varchar(255) NOT NULL DEFAULT '',
  `save_tprice` varchar(10) NOT NULL DEFAULT '',
  `zz_price` text NOT NULL,
  `z_price` varchar(255) NOT NULL DEFAULT '',
  `qz_price` varchar(255) NOT NULL DEFAULT '',
  `save_price` varchar(10) NOT NULL DEFAULT '',
  `zz_buyfen` text NOT NULL,
  `z_buyfen` varchar(255) NOT NULL DEFAULT '',
  `qz_buyfen` varchar(255) NOT NULL DEFAULT '',
  `save_buyfen` varchar(10) NOT NULL DEFAULT '',
  `zz_pmaxnum` text NOT NULL,
  `z_pmaxnum` varchar(255) NOT NULL DEFAULT '',
  `qz_pmaxnum` varchar(255) NOT NULL DEFAULT '',
  `save_pmaxnum` varchar(10) NOT NULL DEFAULT '',
  `zz_productpic` text NOT NULL,
  `z_productpic` varchar(255) NOT NULL DEFAULT '',
  `qz_productpic` varchar(255) NOT NULL DEFAULT '',
  `save_productpic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstext` text NOT NULL,
  `z_newstext` varchar(255) NOT NULL DEFAULT '',
  `qz_newstext` varchar(255) NOT NULL DEFAULT '',
  `save_newstext` varchar(10) NOT NULL DEFAULT '',
  `zz_psalenum` text NOT NULL,
  `z_psalenum` varchar(255) NOT NULL DEFAULT '',
  `qz_psalenum` varchar(255) NOT NULL DEFAULT '',
  `save_psalenum` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_infoclass_shop`
--

LOCK TABLES `gc_ecms_infoclass_shop` WRITE;
/*!40000 ALTER TABLE `gc_ecms_infoclass_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_infoclass_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_infotmp_article`
--

DROP TABLE IF EXISTS `gc_ecms_infotmp_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_infotmp_article` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `ftitle` varchar(120) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `diggtop` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_infotmp_article`
--

LOCK TABLES `gc_ecms_infotmp_article` WRITE;
/*!40000 ALTER TABLE `gc_ecms_infotmp_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_infotmp_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_infotmp_download`
--

DROP TABLE IF EXISTS `gc_ecms_infotmp_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_infotmp_download` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `softwriter` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(80) NOT NULL DEFAULT '',
  `demo` varchar(120) NOT NULL DEFAULT '',
  `softfj` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(16) NOT NULL DEFAULT '',
  `softtype` varchar(16) NOT NULL DEFAULT '',
  `softsq` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  `softsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_infotmp_download`
--

LOCK TABLES `gc_ecms_infotmp_download` WRITE;
/*!40000 ALTER TABLE `gc_ecms_infotmp_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_infotmp_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_infotmp_flash`
--

DROP TABLE IF EXISTS `gc_ecms_infotmp_flash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_infotmp_flash` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `flashwriter` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `flashurl` varchar(255) NOT NULL DEFAULT '',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  `flashsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_infotmp_flash`
--

LOCK TABLES `gc_ecms_infotmp_flash` WRITE;
/*!40000 ALTER TABLE `gc_ecms_infotmp_flash` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_infotmp_flash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_infotmp_info`
--

DROP TABLE IF EXISTS `gc_ecms_infotmp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_infotmp_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `smalltext` text NOT NULL,
  `myarea` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycontact` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_infotmp_info`
--

LOCK TABLES `gc_ecms_infotmp_info` WRITE;
/*!40000 ALTER TABLE `gc_ecms_infotmp_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_infotmp_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_infotmp_movie`
--

DROP TABLE IF EXISTS `gc_ecms_infotmp_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_infotmp_movie` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `movietype` varchar(16) NOT NULL DEFAULT '',
  `company` varchar(200) NOT NULL DEFAULT '',
  `movietime` varchar(20) NOT NULL DEFAULT '',
  `player` varchar(255) NOT NULL DEFAULT '',
  `playadmin` varchar(255) NOT NULL DEFAULT '',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `playdk` varchar(30) NOT NULL DEFAULT '',
  `playtime` varchar(20) NOT NULL DEFAULT '',
  `moviefen` int(11) NOT NULL DEFAULT '0',
  `downpath` mediumtext NOT NULL,
  `playerid` smallint(6) NOT NULL DEFAULT '0',
  `onlinepath` mediumtext NOT NULL,
  `moviesay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_infotmp_movie`
--

LOCK TABLES `gc_ecms_infotmp_movie` WRITE;
/*!40000 ALTER TABLE `gc_ecms_infotmp_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_infotmp_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_infotmp_news`
--

DROP TABLE IF EXISTS `gc_ecms_infotmp_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_infotmp_news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `ftitle` varchar(120) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `diggtop` int(11) NOT NULL DEFAULT '0',
  `titlepic_alt` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_infotmp_news`
--

LOCK TABLES `gc_ecms_infotmp_news` WRITE;
/*!40000 ALTER TABLE `gc_ecms_infotmp_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_infotmp_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_infotmp_photo`
--

DROP TABLE IF EXISTS `gc_ecms_infotmp_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_infotmp_photo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `filesize` varchar(10) NOT NULL DEFAULT '',
  `picsize` varchar(20) NOT NULL DEFAULT '',
  `picfbl` varchar(20) NOT NULL DEFAULT '',
  `picfrom` varchar(120) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `morepic` mediumtext NOT NULL,
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  `picsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_infotmp_photo`
--

LOCK TABLES `gc_ecms_infotmp_photo` WRITE;
/*!40000 ALTER TABLE `gc_ecms_infotmp_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_infotmp_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_infotmp_shop`
--

DROP TABLE IF EXISTS `gc_ecms_infotmp_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_infotmp_shop` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `oldurl` varchar(200) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keyboard` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `productno` varchar(30) NOT NULL DEFAULT '',
  `pbrand` varchar(30) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `unit` varchar(16) NOT NULL DEFAULT '',
  `weight` varchar(20) NOT NULL DEFAULT '',
  `tprice` float(11,2) NOT NULL DEFAULT '0.00',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `buyfen` int(11) NOT NULL DEFAULT '0',
  `pmaxnum` int(11) NOT NULL DEFAULT '0',
  `productpic` varchar(255) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `psalenum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_infotmp_shop`
--

LOCK TABLES `gc_ecms_infotmp_shop` WRITE;
/*!40000 ALTER TABLE `gc_ecms_infotmp_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_infotmp_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_movie`
--

DROP TABLE IF EXISTS `gc_ecms_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_movie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `movietype` varchar(16) NOT NULL DEFAULT '',
  `company` varchar(200) NOT NULL DEFAULT '',
  `movietime` varchar(20) NOT NULL DEFAULT '',
  `player` varchar(255) NOT NULL DEFAULT '',
  `playadmin` varchar(255) NOT NULL DEFAULT '',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `moviefen` int(11) NOT NULL DEFAULT '0',
  `moviesay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_movie`
--

LOCK TABLES `gc_ecms_movie` WRITE;
/*!40000 ALTER TABLE `gc_ecms_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_movie_check`
--

DROP TABLE IF EXISTS `gc_ecms_movie_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_movie_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `movietype` varchar(16) NOT NULL DEFAULT '',
  `company` varchar(200) NOT NULL DEFAULT '',
  `movietime` varchar(20) NOT NULL DEFAULT '',
  `player` varchar(255) NOT NULL DEFAULT '',
  `playadmin` varchar(255) NOT NULL DEFAULT '',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `moviefen` int(11) NOT NULL DEFAULT '0',
  `moviesay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_movie_check`
--

LOCK TABLES `gc_ecms_movie_check` WRITE;
/*!40000 ALTER TABLE `gc_ecms_movie_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_movie_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_movie_check_data`
--

DROP TABLE IF EXISTS `gc_ecms_movie_check_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_movie_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `playdk` varchar(30) NOT NULL DEFAULT '',
  `playtime` varchar(20) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  `playerid` smallint(6) NOT NULL DEFAULT '0',
  `onlinepath` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_movie_check_data`
--

LOCK TABLES `gc_ecms_movie_check_data` WRITE;
/*!40000 ALTER TABLE `gc_ecms_movie_check_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_movie_check_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_movie_data_1`
--

DROP TABLE IF EXISTS `gc_ecms_movie_data_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_movie_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `playdk` varchar(30) NOT NULL DEFAULT '',
  `playtime` varchar(20) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  `playerid` smallint(6) NOT NULL DEFAULT '0',
  `onlinepath` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_movie_data_1`
--

LOCK TABLES `gc_ecms_movie_data_1` WRITE;
/*!40000 ALTER TABLE `gc_ecms_movie_data_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_movie_data_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_movie_doc`
--

DROP TABLE IF EXISTS `gc_ecms_movie_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_movie_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `movietype` varchar(16) NOT NULL DEFAULT '',
  `company` varchar(200) NOT NULL DEFAULT '',
  `movietime` varchar(20) NOT NULL DEFAULT '',
  `player` varchar(255) NOT NULL DEFAULT '',
  `playadmin` varchar(255) NOT NULL DEFAULT '',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `filesize` varchar(16) NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT '0',
  `moviefen` int(11) NOT NULL DEFAULT '0',
  `moviesay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_movie_doc`
--

LOCK TABLES `gc_ecms_movie_doc` WRITE;
/*!40000 ALTER TABLE `gc_ecms_movie_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_movie_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_movie_doc_data`
--

DROP TABLE IF EXISTS `gc_ecms_movie_doc_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_movie_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `playdk` varchar(30) NOT NULL DEFAULT '',
  `playtime` varchar(20) NOT NULL DEFAULT '',
  `downpath` mediumtext NOT NULL,
  `playerid` smallint(6) NOT NULL DEFAULT '0',
  `onlinepath` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_movie_doc_data`
--

LOCK TABLES `gc_ecms_movie_doc_data` WRITE;
/*!40000 ALTER TABLE `gc_ecms_movie_doc_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_movie_doc_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_movie_doc_index`
--

DROP TABLE IF EXISTS `gc_ecms_movie_doc_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_movie_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_movie_doc_index`
--

LOCK TABLES `gc_ecms_movie_doc_index` WRITE;
/*!40000 ALTER TABLE `gc_ecms_movie_doc_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_movie_doc_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_movie_index`
--

DROP TABLE IF EXISTS `gc_ecms_movie_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_movie_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_movie_index`
--

LOCK TABLES `gc_ecms_movie_index` WRITE;
/*!40000 ALTER TABLE `gc_ecms_movie_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_movie_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_news`
--

DROP TABLE IF EXISTS `gc_ecms_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  `titlepic_alt` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_news`
--

LOCK TABLES `gc_ecms_news` WRITE;
/*!40000 ALTER TABLE `gc_ecms_news` DISABLE KEYS */;
INSERT INTO `gc_ecms_news` VALUES (1,1,0,1,0,0,'','1',1,'admin',0,0,1,1,0,0,0,1558102586,1558185293,1,0,0,'','/content/1.html',1,1,1,'','4月银行间货币成交86.3万亿元 同比增长49%',1558102431,'/d/file/p/2019/05-17/13bd645ec3eeb6077f012b5c47b76e45.jpg',0,'4月银行间货币成交86.3万亿元','债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，国债发行4658.9亿元，地方政府债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，资产支持证券发行1086.1亿元，同业存单发行1.1万亿元。',0,''),(2,1,0,2,0,0,'','2',1,'admin',0,0,1,0,0,0,0,1558223308,1558223478,1,0,0,'','/caijing/2.html',1,1,1,'','瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1558223088,'/d/file/p/2019/05-19/6f6305e66a8aff8b8eab531e9ddcaea0.jpg',0,'瑞幸咖啡持续补贴3到5年','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利',0,'eeeeeee'),(3,1,0,0,0,0,'','3',1,'admin',0,1,1,0,0,0,0,1558315107,1558315107,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=3',1,1,1,'','4月银行间货币成交86.3万亿元 同比增长49%',1558102431,'/d/file/p/2019/05-17/13bd645ec3eeb6077f012b5c47b76e45.jpg',0,'4月银行间货币成交86.3万亿元','债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，国债发行4658.9亿元，地方政府债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，资产支持证券发行1086.1亿元，同业存单发行1.1万亿元。',0,''),(4,1,0,0,0,0,'','4',1,'admin',0,1,1,0,0,0,0,1558315107,1558315107,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=4',1,1,1,'','瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1558223088,'/d/file/p/2019/05-19/6f6305e66a8aff8b8eab531e9ddcaea0.jpg',0,'瑞幸咖啡持续补贴3到5年','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利',0,'eeeeeee'),(5,1,0,0,0,0,'','5',1,'admin',0,1,1,0,0,0,0,1558315118,1558315118,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=5',1,1,1,'','4月银行间货币成交86.3万亿元 同比增长49%',1558102431,'/d/file/p/2019/05-17/13bd645ec3eeb6077f012b5c47b76e45.jpg',0,'4月银行间货币成交86.3万亿元','债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，国债发行4658.9亿元，地方政府债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，资产支持证券发行1086.1亿元，同业存单发行1.1万亿元。',0,''),(6,1,0,0,0,0,'','6',1,'admin',0,1,1,0,0,0,0,1558315118,1558315118,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=6',1,1,1,'','瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1558223088,'/d/file/p/2019/05-19/6f6305e66a8aff8b8eab531e9ddcaea0.jpg',0,'瑞幸咖啡持续补贴3到5年','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利',0,'eeeeeee'),(7,1,0,0,0,0,'','7',1,'admin',0,0,1,0,0,0,0,1558315118,1558315118,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=7',1,1,1,'','4月银行间货币成交86.3万亿元 同比增长49%',1558102431,'/d/file/p/2019/05-17/13bd645ec3eeb6077f012b5c47b76e45.jpg',0,'4月银行间货币成交86.3万亿元','债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，国债发行4658.9亿元，地方政府债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，资产支持证券发行1086.1亿元，同业存单发行1.1万亿元。',0,''),(8,1,0,11,0,0,'','8',1,'admin',0,0,1,0,0,0,0,1558315118,1558315118,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=8',1,1,1,'','瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1558223088,'/d/file/p/2019/05-19/6f6305e66a8aff8b8eab531e9ddcaea0.jpg',0,'瑞幸咖啡持续补贴3到5年','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利',0,'eeeeeee'),(9,1,0,0,0,0,'','9',1,'admin',0,0,1,0,0,0,0,1558315128,1558315128,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=9',1,1,1,'','4月银行间货币成交86.3万亿元 同比增长49%',1558102431,'/d/file/p/2019/05-17/13bd645ec3eeb6077f012b5c47b76e45.jpg',0,'4月银行间货币成交86.3万亿元','债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，国债发行4658.9亿元，地方政府债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，资产支持证券发行1086.1亿元，同业存单发行1.1万亿元。',0,''),(10,1,0,0,0,0,'','10',1,'admin',0,0,1,1,0,0,0,1558315128,1558315128,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=10',1,1,1,'','瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1558223088,'/d/file/p/2019/05-19/6f6305e66a8aff8b8eab531e9ddcaea0.jpg',0,'瑞幸咖啡持续补贴3到5年','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利',0,'eeeeeee'),(11,1,0,0,0,0,'','11',1,'admin',0,0,1,1,0,0,0,1558315128,1558315128,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=11',1,1,1,'','4月银行间货币成交86.3万亿元 同比增长49%',1558102431,'/d/file/p/2019/05-17/13bd645ec3eeb6077f012b5c47b76e45.jpg',0,'4月银行间货币成交86.3万亿元','债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，国债发行4658.9亿元，地方政府债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，资产支持证券发行1086.1亿元，同业存单发行1.1万亿元。',0,''),(12,1,0,0,0,0,'','12',1,'admin',0,0,1,0,0,0,0,1558315128,1558315128,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=12',1,1,1,'','瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1558223088,'/d/file/p/2019/05-19/6f6305e66a8aff8b8eab531e9ddcaea0.jpg',0,'瑞幸咖啡持续补贴3到5年','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利',0,'eeeeeee'),(13,1,0,0,0,0,'','13',1,'admin',0,0,1,0,0,0,0,1558315128,1558316191,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=13',1,1,1,'','4月银行间货币成交86.3万亿元 同比增长49%',1558102431,'/d/file/p/2019/05-17/13bd645ec3eeb6077f012b5c47b76e45.jpg',0,'4月银行间货币成交86.3万亿元','债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，国债发行4658.9亿元，地方政府债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，资产支持证券发行1086.1亿元，同业存单发行1.1万亿元。',0,'kkkk'),(14,1,0,0,0,0,'','14',1,'admin',0,3,1,0,0,0,0,1558315128,1558315128,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=14',1,1,1,'','瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1558223088,'/d/file/p/2019/05-19/6f6305e66a8aff8b8eab531e9ddcaea0.jpg',0,'瑞幸咖啡持续补贴3到5年','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利',0,'eeeeeee'),(15,1,0,0,0,0,'','15',1,'admin',0,3,1,0,0,0,0,1558315128,1558315128,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=15',1,1,1,'','4月银行间货币成交86.3万亿元 同比增长49%',1558102431,'/d/file/p/2019/05-17/13bd645ec3eeb6077f012b5c47b76e45.jpg',0,'4月银行间货币成交86.3万亿元','债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，国债发行4658.9亿元，地方政府债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，资产支持证券发行1086.1亿元，同业存单发行1.1万亿元。',0,''),(16,1,0,0,0,0,'','16',1,'admin',0,3,1,0,0,0,0,1558315128,1558315128,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=16',1,1,1,'','瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1558223088,'/d/file/p/2019/05-19/6f6305e66a8aff8b8eab531e9ddcaea0.jpg',0,'瑞幸咖啡持续补贴3到5年','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利',0,'eeeeeee'),(17,1,0,0,0,0,'','17',1,'admin',0,3,1,0,0,0,0,1558315141,1558315141,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=17',1,1,1,'','4月银行间货币成交86.3万亿元 同比增长49%',1558102431,'/d/file/p/2019/05-17/13bd645ec3eeb6077f012b5c47b76e45.jpg',0,'4月银行间货币成交86.3万亿元','债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，国债发行4658.9亿元，地方政府债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，资产支持证券发行1086.1亿元，同业存单发行1.1万亿元。',0,''),(18,1,0,0,0,0,'','18',1,'admin',0,3,1,0,0,0,0,1558315141,1558315141,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=18',1,1,1,'','瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1558223088,'/d/file/p/2019/05-19/6f6305e66a8aff8b8eab531e9ddcaea0.jpg',0,'瑞幸咖啡持续补贴3到5年','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利',0,'eeeeeee'),(19,1,0,0,0,0,'','19',1,'admin',0,0,1,0,0,0,0,1558315141,1558315141,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=19',1,1,1,'','4月银行间货币成交86.3万亿元 同比增长49%',1558102431,'/d/file/p/2019/05-17/13bd645ec3eeb6077f012b5c47b76e45.jpg',0,'4月银行间货币成交86.3万亿元','债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，国债发行4658.9亿元，地方政府债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，资产支持证券发行1086.1亿元，同业存单发行1.1万亿元。',0,''),(20,1,0,0,0,0,'','20',1,'admin',0,0,1,0,0,0,0,1558315141,1558315141,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=20',1,1,1,'','瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1558223088,'/d/file/p/2019/05-19/6f6305e66a8aff8b8eab531e9ddcaea0.jpg',0,'瑞幸咖啡持续补贴3到5年','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利',0,'eeeeeee'),(21,1,0,0,0,0,'','21',1,'admin',1,0,1,0,0,0,0,1558315141,1558315141,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=21',1,1,1,'','4月银行间货币成交86.3万亿元 同比增长49%',1558102431,'/d/file/p/2019/05-17/13bd645ec3eeb6077f012b5c47b76e45.jpg',0,'4月银行间货币成交86.3万亿元','债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，国债发行4658.9亿元，地方政府债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，资产支持证券发行1086.1亿元，同业存单发行1.1万亿元。',0,''),(22,1,0,10,0,0,'','22',1,'admin',1,0,1,0,0,0,0,1558315141,1558315141,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=22',1,1,1,'','瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1558223088,'/d/file/p/2019/05-19/6f6305e66a8aff8b8eab531e9ddcaea0.jpg',0,'瑞幸咖啡持续补贴3到5年','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利',0,'eeeeeee'),(23,1,0,0,0,0,'','23',1,'admin',1,0,1,0,0,0,0,1558315141,1558315141,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=23',1,1,1,'','4月银行间货币成交86.3万亿元 同比增长49%',1558102431,'/d/file/p/2019/05-17/13bd645ec3eeb6077f012b5c47b76e45.jpg',0,'4月银行间货币成交86.3万亿元','债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，国债发行4658.9亿元，地方政府债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，资产支持证券发行1086.1亿元，同业存单发行1.1万亿元。',0,''),(24,1,0,0,0,0,'','24',1,'admin',1,0,1,0,0,0,0,1558315141,1558315141,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=24',1,1,1,'','瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1558223088,'/d/file/p/2019/05-19/6f6305e66a8aff8b8eab531e9ddcaea0.jpg',0,'瑞幸咖啡持续补贴3到5年','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利',0,'eeeeeee'),(25,1,0,0,0,0,'','25',1,'admin',0,0,1,0,0,0,0,1558315141,1558315141,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=25',1,1,1,'','4月银行间货币成交86.3万亿元 同比增长49%',1558102431,'/d/file/p/2019/05-17/13bd645ec3eeb6077f012b5c47b76e45.jpg',0,'4月银行间货币成交86.3万亿元','债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，国债发行4658.9亿元，地方政府债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，资产支持证券发行1086.1亿元，同业存单发行1.1万亿元。',0,''),(26,1,0,0,0,0,'','26',1,'admin',0,0,1,0,0,0,0,1558315141,1558315141,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=26',1,1,1,'','瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1558223088,'/d/file/p/2019/05-19/6f6305e66a8aff8b8eab531e9ddcaea0.jpg',0,'瑞幸咖啡持续补贴3到5年','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利',0,'eeeeeee'),(27,1,0,0,0,0,'','27',1,'admin',0,2,1,0,0,0,0,1558315141,1558315141,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=27',1,1,1,'','4月银行间货币成交86.3万亿元 同比增长49%',1558102431,'/d/file/p/2019/05-17/13bd645ec3eeb6077f012b5c47b76e45.jpg',0,'4月银行间货币成交86.3万亿元','债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，国债发行4658.9亿元，地方政府债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，资产支持证券发行1086.1亿元，同业存单发行1.1万亿元。',0,''),(28,1,0,0,0,0,'','28',1,'admin',0,2,1,0,0,0,0,1558315141,1558315141,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=28',1,1,1,'','瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1558223088,'/d/file/p/2019/05-19/6f6305e66a8aff8b8eab531e9ddcaea0.jpg',0,'瑞幸咖啡持续补贴3到5年','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利',0,'eeeeeee'),(29,1,0,0,0,0,'','29',1,'admin',0,2,1,0,0,0,0,1558315141,1558315141,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=29',1,1,1,'','4月银行间货币成交86.3万亿元 同比增长49%',1558102431,'/d/file/p/2019/05-17/13bd645ec3eeb6077f012b5c47b76e45.jpg',0,'4月银行间货币成交86.3万亿元','债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，国债发行4658.9亿元，地方政府债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，资产支持证券发行1086.1亿元，同业存单发行1.1万亿元。',0,''),(30,1,0,0,0,0,'','30',1,'admin',0,0,1,0,0,0,0,1558315141,1558315141,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=30',1,1,1,'','瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1558223088,'/d/file/p/2019/05-19/6f6305e66a8aff8b8eab531e9ddcaea0.jpg',0,'瑞幸咖啡持续补贴3到5年','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利',0,'eeeeeee'),(31,1,0,0,0,0,'','31',1,'admin',0,0,1,0,0,0,0,1558315141,1558316211,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=31',1,1,1,'','4月银行间货币成交86.3万亿元 同比增长49%',1558102431,'/d/file/p/2019/05-17/13bd645ec3eeb6077f012b5c47b76e45.jpg',0,'4月银行间货币成交86.3万亿元','债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，国债发行4658.9亿元，地方政府债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，资产支持证券发行1086.1亿元，同业存单发行1.1万亿元。',0,'kkkkkkkk'),(32,1,0,0,0,0,'','32',1,'admin',0,0,1,0,0,0,0,1558315141,1558315141,1,0,0,'','/e/action/ShowInfo.php?classid=1&id=32',1,1,1,'','瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1558223088,'/d/file/p/2019/05-19/6f6305e66a8aff8b8eab531e9ddcaea0.jpg',0,'瑞幸咖啡持续补贴3到5年','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利',0,'eeeeeee'),(33,2,0,0,0,0,'','33',1,'admin',0,0,1,0,0,0,0,1558358954,1558358954,1,0,0,'','/meigu/33.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(34,2,0,0,0,0,'','34',1,'admin',0,0,1,0,0,0,0,1558359073,1558359073,1,0,0,'','/meigu/34.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(35,2,0,0,0,0,'','35',1,'admin',0,0,1,0,0,0,0,1558359411,1558359411,1,0,0,'','/meigu/35.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(36,2,0,0,0,0,'','36',1,'admin',0,0,1,0,0,0,0,1558359411,1558359411,1,0,0,'','/meigu/36.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(37,2,0,0,0,0,'','37',1,'admin',0,0,1,0,0,0,0,1558359421,1558359421,1,0,0,'','/meigu/37.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(38,2,0,0,0,0,'','38',1,'admin',0,0,1,0,0,0,0,1558359421,1558359421,1,0,0,'','/meigu/38.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(39,2,0,0,0,0,'','39',1,'admin',0,0,1,0,0,0,0,1558359421,1558359421,1,0,0,'','/meigu/39.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(40,2,0,0,0,0,'','40',1,'admin',0,0,1,0,0,0,0,1558359421,1558359421,1,0,0,'','/meigu/40.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(41,2,0,0,0,0,'','41',1,'admin',0,0,1,0,0,0,0,1558359430,1558359430,1,0,0,'','/meigu/41.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(42,2,0,0,0,0,'','42',1,'admin',0,0,1,0,0,0,0,1558359430,1558359430,1,0,0,'','/meigu/42.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(43,2,0,0,0,0,'','43',1,'admin',0,0,1,0,0,0,0,1558359430,1558359430,1,0,0,'','/meigu/43.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(44,2,0,0,0,0,'','44',1,'admin',0,0,1,0,0,0,0,1558359430,1558359430,1,0,0,'','/meigu/44.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(45,2,0,0,0,0,'','45',1,'admin',0,0,1,0,0,0,0,1558359430,1558359430,1,0,0,'','/meigu/45.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(46,2,0,0,0,0,'','46',1,'admin',0,0,1,0,0,0,0,1558359430,1558359430,1,0,0,'','/meigu/46.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(47,2,0,0,0,0,'','47',1,'admin',0,0,1,0,0,0,0,1558359430,1558359430,1,0,0,'','/meigu/47.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(48,2,0,0,0,0,'','48',1,'admin',0,0,1,0,0,0,0,1558359430,1558359430,1,0,0,'','/meigu/48.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(49,2,0,0,0,0,'','49',1,'admin',0,0,1,0,0,0,0,1558359441,1558359441,1,0,0,'','/meigu/49.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(50,2,0,0,0,0,'','50',1,'admin',0,0,1,0,0,0,0,1558359441,1558359441,1,0,0,'','/meigu/50.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(51,2,0,0,0,0,'','51',1,'admin',0,0,1,0,0,0,0,1558359441,1558359441,1,0,0,'','/meigu/51.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(52,2,0,0,0,0,'','52',1,'admin',0,0,1,0,0,0,0,1558359441,1558359441,1,0,0,'','/meigu/52.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(53,2,0,0,0,0,'','53',1,'admin',0,0,1,0,0,0,0,1558359441,1558359441,1,0,0,'','/meigu/53.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(54,2,0,0,0,0,'','54',1,'admin',0,0,1,0,0,0,0,1558359441,1558359441,1,0,0,'','/meigu/54.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(55,2,0,0,0,0,'','55',1,'admin',0,0,1,0,0,0,0,1558359441,1558359441,1,0,0,'','/meigu/55.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(56,2,0,0,0,0,'','56',1,'admin',0,0,1,0,0,0,0,1558359441,1558359441,1,0,0,'','/meigu/56.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(57,2,0,0,0,0,'','57',1,'admin',0,0,1,0,0,0,0,1558359441,1558359441,1,0,0,'','/meigu/57.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(58,2,0,0,0,0,'','58',1,'admin',0,0,1,0,0,0,0,1558359441,1558359441,1,0,0,'','/meigu/58.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(59,2,0,0,0,0,'','59',1,'admin',0,0,1,0,0,0,0,1558359441,1558359441,1,0,0,'','/meigu/59.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(60,2,0,0,0,0,'','60',1,'admin',0,0,1,0,0,0,0,1558359441,1558359441,1,0,0,'','/meigu/60.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(61,2,0,0,0,0,'','61',1,'admin',0,0,1,0,0,0,0,1558359441,1558359441,1,0,0,'','/meigu/61.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(62,2,0,0,0,0,'','62',1,'admin',0,0,1,0,0,0,0,1558359441,1558359441,1,0,0,'','/meigu/62.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(63,2,0,0,0,0,'','63',1,'admin',0,0,1,0,0,0,0,1558359441,1558359441,1,0,0,'','/meigu/63.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(64,2,0,0,0,0,'','64',1,'admin',0,0,1,0,0,0,0,1558359441,1558359441,1,0,0,'','/meigu/64.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(65,2,0,0,0,0,'','65',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/65.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(66,2,0,0,0,0,'','66',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/66.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(67,2,0,0,0,0,'','67',1,'admin',0,0,1,1,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/67.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(68,2,0,0,0,0,'','68',1,'admin',0,0,1,1,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/68.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(69,2,0,0,0,0,'','69',1,'admin',0,0,1,1,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/69.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(70,2,0,0,0,0,'','70',1,'admin',0,0,1,1,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/70.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(71,2,0,0,0,0,'','71',1,'admin',1,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/71.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(72,2,0,2,0,0,'','72',1,'admin',1,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/72.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(73,2,0,0,0,0,'','73',1,'admin',1,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/73.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(74,2,0,0,0,0,'','74',1,'admin',1,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/74.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(75,2,0,0,0,0,'','75',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/75.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(76,2,0,0,0,0,'','76',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/76.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(77,2,0,0,0,0,'','77',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/77.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(78,2,0,0,0,0,'','78',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/78.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(79,2,0,0,0,0,'','79',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/79.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(80,2,0,0,0,0,'','80',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/80.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(81,2,0,0,0,0,'','81',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/81.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(82,2,0,0,0,0,'','82',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/82.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(83,2,0,0,0,0,'','83',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/83.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(84,2,0,0,0,0,'','84',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/84.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(85,2,0,0,0,0,'','85',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/85.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(86,2,0,0,0,0,'','86',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/86.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(87,2,0,0,0,0,'','87',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/87.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(88,2,0,0,0,0,'','88',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/88.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(89,2,0,0,0,0,'','89',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/89.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(90,2,0,0,0,0,'','90',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/90.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(91,2,0,0,0,0,'','91',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/91.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(92,2,0,0,0,0,'','92',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/92.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv'),(93,2,0,0,0,0,'','93',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/93.html',1,1,1,'','拼多多发布财报 加快建立更为完善的零售业态',1558358736,'/d/file/p/2019/05-20/a62dd0567716e05048a3e8d7bd3826d2.jpg',0,'拼多多发布财报','北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的零售业态，通过持续缩短生产和消费的距离，为消费者寻找最合适且优质的商品。',0,'rrrrrr'),(94,2,0,0,0,0,'','94',1,'admin',0,0,1,0,0,0,0,1558359460,1558359460,1,0,0,'','/meigu/94.html',1,1,1,'','爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1558358956,'/d/file/p/2019/05-20/28c6b987a4a8c6a6cb905020bcb76c8f.jpg',0,'爱奇艺盘前涨逾2%','北京时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。',0,'vvvvvv');
/*!40000 ALTER TABLE `gc_ecms_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_news_check`
--

DROP TABLE IF EXISTS `gc_ecms_news_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_news_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  `titlepic_alt` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_news_check`
--

LOCK TABLES `gc_ecms_news_check` WRITE;
/*!40000 ALTER TABLE `gc_ecms_news_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_news_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_news_check_data`
--

DROP TABLE IF EXISTS `gc_ecms_news_check_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_news_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_news_check_data`
--

LOCK TABLES `gc_ecms_news_check_data` WRITE;
/*!40000 ALTER TABLE `gc_ecms_news_check_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_news_check_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_news_data_1`
--

DROP TABLE IF EXISTS `gc_ecms_news_data_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_news_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_news_data_1`
--

LOCK TABLES `gc_ecms_news_data_1` WRITE;
/*!40000 ALTER TABLE `gc_ecms_news_data_1` DISABLE KEYS */;
INSERT INTO `gc_ecms_news_data_1` VALUES (1,1,'',1,0,0,0,'','','上海证券报','<p>央行17日发布的《2019年4月份金融市场运行情况》显示，4月份银行间货币市场成交共计86.3万亿元，同比增长49.03%，环比增长1.96%。</p>\r\n<figure><img alt=\\\"债券市场\\\" src=\\\"https://finance.gucheng.com/UploadFiles_7830/201905/2019051716580042.jpg\\\" />\r\n<figcaption>债券市场</figcaption></figure>&nbsp;\r\n<p>其中，质押式回购成交70.4万亿元，同比增长45.05%，环比增长2.42%；买断式回购成交0.7万亿元，同比下降16.47%，环比下降2.57%；同业拆借成交15.1万亿元，同比增长78.89%，环比增长0.11%。</p>\r\n<p>4月份，同业拆借月加权平均利率为2.43%，较上月上行1个基点；质押式回购月加权平均利率为2.46%，较上月下行1个基点。</p>\r\n<p>债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，<a href=\\\"https://finance.gucheng.com/201809/3530425.shtml\\\">国债</a>发行4658.9亿元，<a href=\\\"https://consumer.gucheng.com/201805/3419107.shtml\\\">地方政府</a>债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，<a href=\\\"https://money.gucheng.com/201809/3532754.shtml\\\">资产</a>支持证券发行1086.1亿元，同业存单发行1.1万亿元。</p>\r\n<p>截至4月末，债券市场托管余额为90.1万亿元。其中，<a href=\\\"https://hq.gucheng.com/bond/\\\">国债</a>托管余额为14.6万亿元，地方<a href=\\\"https://finance.gucheng.com/201809/3520421.shtml\\\">政府</a>债券<a href=\\\"https://consumer.gucheng.com/201809/3523456.shtml\\\">托管</a>余额为19.4万亿元，金融债券托管余额为21.7万亿元，公司信用类债券托管余额为19.6万亿元，资产支持证券托管余额为3.0万亿元，同业存单托管余额为9.9万亿元。</p>\r\n<p>4月份，银行间债券市场现券成交17.6万亿元，日均成交8006.2亿元，同比增长72.60%，环比下降4.46%。交易所债券市场现券成交7509.0亿元，日均成交357.6亿元，同比增长51.49%，环比增长1.22%。4月末，银行间债券总<a href=\\\"https://hq.gucheng.com/SH000003/\\\">指数</a>为190.17点，较上月末下跌1.15点。</p>'),(2,1,'',1,0,0,0,'','','金融界','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利'),(3,1,'',1,0,0,0,'','','上海证券报','<p>央行17日发布的《2019年4月份金融市场运行情况》显示，4月份银行间货币市场成交共计86.3万亿元，同比增长49.03%，环比增长1.96%。</p>\r\n<figure><img alt=\"债券市场\" src=\"https://finance.gucheng.com/UploadFiles_7830/201905/2019051716580042.jpg\" />\r\n<figcaption>债券市场</figcaption></figure>&nbsp;\r\n<p>其中，质押式回购成交70.4万亿元，同比增长45.05%，环比增长2.42%；买断式回购成交0.7万亿元，同比下降16.47%，环比下降2.57%；同业拆借成交15.1万亿元，同比增长78.89%，环比增长0.11%。</p>\r\n<p>4月份，同业拆借月加权平均利率为2.43%，较上月上行1个基点；质押式回购月加权平均利率为2.46%，较上月下行1个基点。</p>\r\n<p>债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，<a href=\"https://finance.gucheng.com/201809/3530425.shtml\">国债</a>发行4658.9亿元，<a href=\"https://consumer.gucheng.com/201805/3419107.shtml\">地方政府</a>债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，<a href=\"https://money.gucheng.com/201809/3532754.shtml\">资产</a>支持证券发行1086.1亿元，同业存单发行1.1万亿元。</p>\r\n<p>截至4月末，债券市场托管余额为90.1万亿元。其中，<a href=\"https://hq.gucheng.com/bond/\">国债</a>托管余额为14.6万亿元，地方<a href=\"https://finance.gucheng.com/201809/3520421.shtml\">政府</a>债券<a href=\"https://consumer.gucheng.com/201809/3523456.shtml\">托管</a>余额为19.4万亿元，金融债券托管余额为21.7万亿元，公司信用类债券托管余额为19.6万亿元，资产支持证券托管余额为3.0万亿元，同业存单托管余额为9.9万亿元。</p>\r\n<p>4月份，银行间债券市场现券成交17.6万亿元，日均成交8006.2亿元，同比增长72.60%，环比下降4.46%。交易所债券市场现券成交7509.0亿元，日均成交357.6亿元，同比增长51.49%，环比增长1.22%。4月末，银行间债券总<a href=\"https://hq.gucheng.com/SH000003/\">指数</a>为190.17点，较上月末下跌1.15点。</p>'),(4,1,'',1,0,0,0,'','','金融界','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利'),(5,1,'',1,0,0,0,'','','上海证券报','<p>央行17日发布的《2019年4月份金融市场运行情况》显示，4月份银行间货币市场成交共计86.3万亿元，同比增长49.03%，环比增长1.96%。</p>\r\n<figure><img alt=\"债券市场\" src=\"https://finance.gucheng.com/UploadFiles_7830/201905/2019051716580042.jpg\" />\r\n<figcaption>债券市场</figcaption></figure>&nbsp;\r\n<p>其中，质押式回购成交70.4万亿元，同比增长45.05%，环比增长2.42%；买断式回购成交0.7万亿元，同比下降16.47%，环比下降2.57%；同业拆借成交15.1万亿元，同比增长78.89%，环比增长0.11%。</p>\r\n<p>4月份，同业拆借月加权平均利率为2.43%，较上月上行1个基点；质押式回购月加权平均利率为2.46%，较上月下行1个基点。</p>\r\n<p>债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，<a href=\"https://finance.gucheng.com/201809/3530425.shtml\">国债</a>发行4658.9亿元，<a href=\"https://consumer.gucheng.com/201805/3419107.shtml\">地方政府</a>债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，<a href=\"https://money.gucheng.com/201809/3532754.shtml\">资产</a>支持证券发行1086.1亿元，同业存单发行1.1万亿元。</p>\r\n<p>截至4月末，债券市场托管余额为90.1万亿元。其中，<a href=\"https://hq.gucheng.com/bond/\">国债</a>托管余额为14.6万亿元，地方<a href=\"https://finance.gucheng.com/201809/3520421.shtml\">政府</a>债券<a href=\"https://consumer.gucheng.com/201809/3523456.shtml\">托管</a>余额为19.4万亿元，金融债券托管余额为21.7万亿元，公司信用类债券托管余额为19.6万亿元，资产支持证券托管余额为3.0万亿元，同业存单托管余额为9.9万亿元。</p>\r\n<p>4月份，银行间债券市场现券成交17.6万亿元，日均成交8006.2亿元，同比增长72.60%，环比下降4.46%。交易所债券市场现券成交7509.0亿元，日均成交357.6亿元，同比增长51.49%，环比增长1.22%。4月末，银行间债券总<a href=\"https://hq.gucheng.com/SH000003/\">指数</a>为190.17点，较上月末下跌1.15点。</p>'),(6,1,'',1,0,0,0,'','','金融界','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利'),(7,1,'',1,0,0,0,'','','上海证券报','<p>央行17日发布的《2019年4月份金融市场运行情况》显示，4月份银行间货币市场成交共计86.3万亿元，同比增长49.03%，环比增长1.96%。</p>\r\n<figure><img alt=\"债券市场\" src=\"https://finance.gucheng.com/UploadFiles_7830/201905/2019051716580042.jpg\" />\r\n<figcaption>债券市场</figcaption></figure>&nbsp;\r\n<p>其中，质押式回购成交70.4万亿元，同比增长45.05%，环比增长2.42%；买断式回购成交0.7万亿元，同比下降16.47%，环比下降2.57%；同业拆借成交15.1万亿元，同比增长78.89%，环比增长0.11%。</p>\r\n<p>4月份，同业拆借月加权平均利率为2.43%，较上月上行1个基点；质押式回购月加权平均利率为2.46%，较上月下行1个基点。</p>\r\n<p>债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，<a href=\"https://finance.gucheng.com/201809/3530425.shtml\">国债</a>发行4658.9亿元，<a href=\"https://consumer.gucheng.com/201805/3419107.shtml\">地方政府</a>债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，<a href=\"https://money.gucheng.com/201809/3532754.shtml\">资产</a>支持证券发行1086.1亿元，同业存单发行1.1万亿元。</p>\r\n<p>截至4月末，债券市场托管余额为90.1万亿元。其中，<a href=\"https://hq.gucheng.com/bond/\">国债</a>托管余额为14.6万亿元，地方<a href=\"https://finance.gucheng.com/201809/3520421.shtml\">政府</a>债券<a href=\"https://consumer.gucheng.com/201809/3523456.shtml\">托管</a>余额为19.4万亿元，金融债券托管余额为21.7万亿元，公司信用类债券托管余额为19.6万亿元，资产支持证券托管余额为3.0万亿元，同业存单托管余额为9.9万亿元。</p>\r\n<p>4月份，银行间债券市场现券成交17.6万亿元，日均成交8006.2亿元，同比增长72.60%，环比下降4.46%。交易所债券市场现券成交7509.0亿元，日均成交357.6亿元，同比增长51.49%，环比增长1.22%。4月末，银行间债券总<a href=\"https://hq.gucheng.com/SH000003/\">指数</a>为190.17点，较上月末下跌1.15点。</p>'),(8,1,'',1,0,0,0,'','','金融界','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利'),(9,1,'',1,0,0,0,'','','上海证券报','<p>央行17日发布的《2019年4月份金融市场运行情况》显示，4月份银行间货币市场成交共计86.3万亿元，同比增长49.03%，环比增长1.96%。</p>\r\n<figure><img alt=\"债券市场\" src=\"https://finance.gucheng.com/UploadFiles_7830/201905/2019051716580042.jpg\" />\r\n<figcaption>债券市场</figcaption></figure>&nbsp;\r\n<p>其中，质押式回购成交70.4万亿元，同比增长45.05%，环比增长2.42%；买断式回购成交0.7万亿元，同比下降16.47%，环比下降2.57%；同业拆借成交15.1万亿元，同比增长78.89%，环比增长0.11%。</p>\r\n<p>4月份，同业拆借月加权平均利率为2.43%，较上月上行1个基点；质押式回购月加权平均利率为2.46%，较上月下行1个基点。</p>\r\n<p>债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，<a href=\"https://finance.gucheng.com/201809/3530425.shtml\">国债</a>发行4658.9亿元，<a href=\"https://consumer.gucheng.com/201805/3419107.shtml\">地方政府</a>债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，<a href=\"https://money.gucheng.com/201809/3532754.shtml\">资产</a>支持证券发行1086.1亿元，同业存单发行1.1万亿元。</p>\r\n<p>截至4月末，债券市场托管余额为90.1万亿元。其中，<a href=\"https://hq.gucheng.com/bond/\">国债</a>托管余额为14.6万亿元，地方<a href=\"https://finance.gucheng.com/201809/3520421.shtml\">政府</a>债券<a href=\"https://consumer.gucheng.com/201809/3523456.shtml\">托管</a>余额为19.4万亿元，金融债券托管余额为21.7万亿元，公司信用类债券托管余额为19.6万亿元，资产支持证券托管余额为3.0万亿元，同业存单托管余额为9.9万亿元。</p>\r\n<p>4月份，银行间债券市场现券成交17.6万亿元，日均成交8006.2亿元，同比增长72.60%，环比下降4.46%。交易所债券市场现券成交7509.0亿元，日均成交357.6亿元，同比增长51.49%，环比增长1.22%。4月末，银行间债券总<a href=\"https://hq.gucheng.com/SH000003/\">指数</a>为190.17点，较上月末下跌1.15点。</p>'),(10,1,'',1,0,0,0,'','','金融界','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利'),(11,1,'',1,0,0,0,'','','上海证券报','<p>央行17日发布的《2019年4月份金融市场运行情况》显示，4月份银行间货币市场成交共计86.3万亿元，同比增长49.03%，环比增长1.96%。</p>\r\n<figure><img alt=\"债券市场\" src=\"https://finance.gucheng.com/UploadFiles_7830/201905/2019051716580042.jpg\" />\r\n<figcaption>债券市场</figcaption></figure>&nbsp;\r\n<p>其中，质押式回购成交70.4万亿元，同比增长45.05%，环比增长2.42%；买断式回购成交0.7万亿元，同比下降16.47%，环比下降2.57%；同业拆借成交15.1万亿元，同比增长78.89%，环比增长0.11%。</p>\r\n<p>4月份，同业拆借月加权平均利率为2.43%，较上月上行1个基点；质押式回购月加权平均利率为2.46%，较上月下行1个基点。</p>\r\n<p>债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，<a href=\"https://finance.gucheng.com/201809/3530425.shtml\">国债</a>发行4658.9亿元，<a href=\"https://consumer.gucheng.com/201805/3419107.shtml\">地方政府</a>债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，<a href=\"https://money.gucheng.com/201809/3532754.shtml\">资产</a>支持证券发行1086.1亿元，同业存单发行1.1万亿元。</p>\r\n<p>截至4月末，债券市场托管余额为90.1万亿元。其中，<a href=\"https://hq.gucheng.com/bond/\">国债</a>托管余额为14.6万亿元，地方<a href=\"https://finance.gucheng.com/201809/3520421.shtml\">政府</a>债券<a href=\"https://consumer.gucheng.com/201809/3523456.shtml\">托管</a>余额为19.4万亿元，金融债券托管余额为21.7万亿元，公司信用类债券托管余额为19.6万亿元，资产支持证券托管余额为3.0万亿元，同业存单托管余额为9.9万亿元。</p>\r\n<p>4月份，银行间债券市场现券成交17.6万亿元，日均成交8006.2亿元，同比增长72.60%，环比下降4.46%。交易所债券市场现券成交7509.0亿元，日均成交357.6亿元，同比增长51.49%，环比增长1.22%。4月末，银行间债券总<a href=\"https://hq.gucheng.com/SH000003/\">指数</a>为190.17点，较上月末下跌1.15点。</p>'),(12,1,'',1,0,0,0,'','','金融界','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利'),(13,1,'',1,0,0,0,'','','上海证券报','<p>央行17日发布的《2019年4月份金融市场运行情况》显示，4月份银行间货币市场成交共计86.3万亿元，同比增长49.03%，环比增长1.96%。</p>\r\n<figure><img alt=\\\"债券市场\\\" src=\\\"https://finance.gucheng.com/UploadFiles_7830/201905/2019051716580042.jpg\\\" />\r\n<figcaption>债券市场</figcaption></figure>&nbsp;\r\n<p>其中，质押式回购成交70.4万亿元，同比增长45.05%，环比增长2.42%；买断式回购成交0.7万亿元，同比下降16.47%，环比下降2.57%；同业拆借成交15.1万亿元，同比增长78.89%，环比增长0.11%。</p>\r\n<p>4月份，同业拆借月加权平均利率为2.43%，较上月上行1个基点；质押式回购月加权平均利率为2.46%，较上月下行1个基点。</p>\r\n<p>债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，<a href=\\\"https://finance.gucheng.com/201809/3530425.shtml\\\">国债</a>发行4658.9亿元，<a href=\\\"https://consumer.gucheng.com/201805/3419107.shtml\\\">地方政府</a>债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，<a href=\\\"https://money.gucheng.com/201809/3532754.shtml\\\">资产</a>支持证券发行1086.1亿元，同业存单发行1.1万亿元。</p>\r\n<p>截至4月末，债券市场托管余额为90.1万亿元。其中，<a href=\\\"https://hq.gucheng.com/bond/\\\">国债</a>托管余额为14.6万亿元，地方<a href=\\\"https://finance.gucheng.com/201809/3520421.shtml\\\">政府</a>债券<a href=\\\"https://consumer.gucheng.com/201809/3523456.shtml\\\">托管</a>余额为19.4万亿元，金融债券托管余额为21.7万亿元，公司信用类债券托管余额为19.6万亿元，资产支持证券托管余额为3.0万亿元，同业存单托管余额为9.9万亿元。</p>\r\n<p>4月份，银行间债券市场现券成交17.6万亿元，日均成交8006.2亿元，同比增长72.60%，环比下降4.46%。交易所债券市场现券成交7509.0亿元，日均成交357.6亿元，同比增长51.49%，环比增长1.22%。4月末，银行间债券总<a href=\\\"https://hq.gucheng.com/SH000003/\\\">指数</a>为190.17点，较上月末下跌1.15点。</p>'),(14,1,'',1,0,0,0,'','','金融界','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利'),(15,1,'',1,0,0,0,'','','上海证券报','<p>央行17日发布的《2019年4月份金融市场运行情况》显示，4月份银行间货币市场成交共计86.3万亿元，同比增长49.03%，环比增长1.96%。</p>\r\n<figure><img alt=\"债券市场\" src=\"https://finance.gucheng.com/UploadFiles_7830/201905/2019051716580042.jpg\" />\r\n<figcaption>债券市场</figcaption></figure>&nbsp;\r\n<p>其中，质押式回购成交70.4万亿元，同比增长45.05%，环比增长2.42%；买断式回购成交0.7万亿元，同比下降16.47%，环比下降2.57%；同业拆借成交15.1万亿元，同比增长78.89%，环比增长0.11%。</p>\r\n<p>4月份，同业拆借月加权平均利率为2.43%，较上月上行1个基点；质押式回购月加权平均利率为2.46%，较上月下行1个基点。</p>\r\n<p>债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，<a href=\"https://finance.gucheng.com/201809/3530425.shtml\">国债</a>发行4658.9亿元，<a href=\"https://consumer.gucheng.com/201805/3419107.shtml\">地方政府</a>债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，<a href=\"https://money.gucheng.com/201809/3532754.shtml\">资产</a>支持证券发行1086.1亿元，同业存单发行1.1万亿元。</p>\r\n<p>截至4月末，债券市场托管余额为90.1万亿元。其中，<a href=\"https://hq.gucheng.com/bond/\">国债</a>托管余额为14.6万亿元，地方<a href=\"https://finance.gucheng.com/201809/3520421.shtml\">政府</a>债券<a href=\"https://consumer.gucheng.com/201809/3523456.shtml\">托管</a>余额为19.4万亿元，金融债券托管余额为21.7万亿元，公司信用类债券托管余额为19.6万亿元，资产支持证券托管余额为3.0万亿元，同业存单托管余额为9.9万亿元。</p>\r\n<p>4月份，银行间债券市场现券成交17.6万亿元，日均成交8006.2亿元，同比增长72.60%，环比下降4.46%。交易所债券市场现券成交7509.0亿元，日均成交357.6亿元，同比增长51.49%，环比增长1.22%。4月末，银行间债券总<a href=\"https://hq.gucheng.com/SH000003/\">指数</a>为190.17点，较上月末下跌1.15点。</p>'),(16,1,'',1,0,0,0,'','','金融界','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利'),(17,1,'',1,0,0,0,'','','上海证券报','<p>央行17日发布的《2019年4月份金融市场运行情况》显示，4月份银行间货币市场成交共计86.3万亿元，同比增长49.03%，环比增长1.96%。</p>\r\n<figure><img alt=\"债券市场\" src=\"https://finance.gucheng.com/UploadFiles_7830/201905/2019051716580042.jpg\" />\r\n<figcaption>债券市场</figcaption></figure>&nbsp;\r\n<p>其中，质押式回购成交70.4万亿元，同比增长45.05%，环比增长2.42%；买断式回购成交0.7万亿元，同比下降16.47%，环比下降2.57%；同业拆借成交15.1万亿元，同比增长78.89%，环比增长0.11%。</p>\r\n<p>4月份，同业拆借月加权平均利率为2.43%，较上月上行1个基点；质押式回购月加权平均利率为2.46%，较上月下行1个基点。</p>\r\n<p>债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，<a href=\"https://finance.gucheng.com/201809/3530425.shtml\">国债</a>发行4658.9亿元，<a href=\"https://consumer.gucheng.com/201805/3419107.shtml\">地方政府</a>债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，<a href=\"https://money.gucheng.com/201809/3532754.shtml\">资产</a>支持证券发行1086.1亿元，同业存单发行1.1万亿元。</p>\r\n<p>截至4月末，债券市场托管余额为90.1万亿元。其中，<a href=\"https://hq.gucheng.com/bond/\">国债</a>托管余额为14.6万亿元，地方<a href=\"https://finance.gucheng.com/201809/3520421.shtml\">政府</a>债券<a href=\"https://consumer.gucheng.com/201809/3523456.shtml\">托管</a>余额为19.4万亿元，金融债券托管余额为21.7万亿元，公司信用类债券托管余额为19.6万亿元，资产支持证券托管余额为3.0万亿元，同业存单托管余额为9.9万亿元。</p>\r\n<p>4月份，银行间债券市场现券成交17.6万亿元，日均成交8006.2亿元，同比增长72.60%，环比下降4.46%。交易所债券市场现券成交7509.0亿元，日均成交357.6亿元，同比增长51.49%，环比增长1.22%。4月末，银行间债券总<a href=\"https://hq.gucheng.com/SH000003/\">指数</a>为190.17点，较上月末下跌1.15点。</p>'),(18,1,'',1,0,0,0,'','','金融界','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利'),(19,1,'',1,0,0,0,'','','上海证券报','<p>央行17日发布的《2019年4月份金融市场运行情况》显示，4月份银行间货币市场成交共计86.3万亿元，同比增长49.03%，环比增长1.96%。</p>\r\n<figure><img alt=\"债券市场\" src=\"https://finance.gucheng.com/UploadFiles_7830/201905/2019051716580042.jpg\" />\r\n<figcaption>债券市场</figcaption></figure>&nbsp;\r\n<p>其中，质押式回购成交70.4万亿元，同比增长45.05%，环比增长2.42%；买断式回购成交0.7万亿元，同比下降16.47%，环比下降2.57%；同业拆借成交15.1万亿元，同比增长78.89%，环比增长0.11%。</p>\r\n<p>4月份，同业拆借月加权平均利率为2.43%，较上月上行1个基点；质押式回购月加权平均利率为2.46%，较上月下行1个基点。</p>\r\n<p>债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，<a href=\"https://finance.gucheng.com/201809/3530425.shtml\">国债</a>发行4658.9亿元，<a href=\"https://consumer.gucheng.com/201805/3419107.shtml\">地方政府</a>债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，<a href=\"https://money.gucheng.com/201809/3532754.shtml\">资产</a>支持证券发行1086.1亿元，同业存单发行1.1万亿元。</p>\r\n<p>截至4月末，债券市场托管余额为90.1万亿元。其中，<a href=\"https://hq.gucheng.com/bond/\">国债</a>托管余额为14.6万亿元，地方<a href=\"https://finance.gucheng.com/201809/3520421.shtml\">政府</a>债券<a href=\"https://consumer.gucheng.com/201809/3523456.shtml\">托管</a>余额为19.4万亿元，金融债券托管余额为21.7万亿元，公司信用类债券托管余额为19.6万亿元，资产支持证券托管余额为3.0万亿元，同业存单托管余额为9.9万亿元。</p>\r\n<p>4月份，银行间债券市场现券成交17.6万亿元，日均成交8006.2亿元，同比增长72.60%，环比下降4.46%。交易所债券市场现券成交7509.0亿元，日均成交357.6亿元，同比增长51.49%，环比增长1.22%。4月末，银行间债券总<a href=\"https://hq.gucheng.com/SH000003/\">指数</a>为190.17点，较上月末下跌1.15点。</p>'),(20,1,'',1,0,0,0,'','','金融界','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利'),(21,1,'',1,0,0,0,'','','上海证券报','<p>央行17日发布的《2019年4月份金融市场运行情况》显示，4月份银行间货币市场成交共计86.3万亿元，同比增长49.03%，环比增长1.96%。</p>\r\n<figure><img alt=\"债券市场\" src=\"https://finance.gucheng.com/UploadFiles_7830/201905/2019051716580042.jpg\" />\r\n<figcaption>债券市场</figcaption></figure>&nbsp;\r\n<p>其中，质押式回购成交70.4万亿元，同比增长45.05%，环比增长2.42%；买断式回购成交0.7万亿元，同比下降16.47%，环比下降2.57%；同业拆借成交15.1万亿元，同比增长78.89%，环比增长0.11%。</p>\r\n<p>4月份，同业拆借月加权平均利率为2.43%，较上月上行1个基点；质押式回购月加权平均利率为2.46%，较上月下行1个基点。</p>\r\n<p>债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，<a href=\"https://finance.gucheng.com/201809/3530425.shtml\">国债</a>发行4658.9亿元，<a href=\"https://consumer.gucheng.com/201805/3419107.shtml\">地方政府</a>债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，<a href=\"https://money.gucheng.com/201809/3532754.shtml\">资产</a>支持证券发行1086.1亿元，同业存单发行1.1万亿元。</p>\r\n<p>截至4月末，债券市场托管余额为90.1万亿元。其中，<a href=\"https://hq.gucheng.com/bond/\">国债</a>托管余额为14.6万亿元，地方<a href=\"https://finance.gucheng.com/201809/3520421.shtml\">政府</a>债券<a href=\"https://consumer.gucheng.com/201809/3523456.shtml\">托管</a>余额为19.4万亿元，金融债券托管余额为21.7万亿元，公司信用类债券托管余额为19.6万亿元，资产支持证券托管余额为3.0万亿元，同业存单托管余额为9.9万亿元。</p>\r\n<p>4月份，银行间债券市场现券成交17.6万亿元，日均成交8006.2亿元，同比增长72.60%，环比下降4.46%。交易所债券市场现券成交7509.0亿元，日均成交357.6亿元，同比增长51.49%，环比增长1.22%。4月末，银行间债券总<a href=\"https://hq.gucheng.com/SH000003/\">指数</a>为190.17点，较上月末下跌1.15点。</p>'),(22,1,'',1,0,0,0,'','','金融界','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利'),(23,1,'',1,0,0,0,'','','上海证券报','<p>央行17日发布的《2019年4月份金融市场运行情况》显示，4月份银行间货币市场成交共计86.3万亿元，同比增长49.03%，环比增长1.96%。</p>\r\n<figure><img alt=\"债券市场\" src=\"https://finance.gucheng.com/UploadFiles_7830/201905/2019051716580042.jpg\" />\r\n<figcaption>债券市场</figcaption></figure>&nbsp;\r\n<p>其中，质押式回购成交70.4万亿元，同比增长45.05%，环比增长2.42%；买断式回购成交0.7万亿元，同比下降16.47%，环比下降2.57%；同业拆借成交15.1万亿元，同比增长78.89%，环比增长0.11%。</p>\r\n<p>4月份，同业拆借月加权平均利率为2.43%，较上月上行1个基点；质押式回购月加权平均利率为2.46%，较上月下行1个基点。</p>\r\n<p>债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，<a href=\"https://finance.gucheng.com/201809/3530425.shtml\">国债</a>发行4658.9亿元，<a href=\"https://consumer.gucheng.com/201805/3419107.shtml\">地方政府</a>债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，<a href=\"https://money.gucheng.com/201809/3532754.shtml\">资产</a>支持证券发行1086.1亿元，同业存单发行1.1万亿元。</p>\r\n<p>截至4月末，债券市场托管余额为90.1万亿元。其中，<a href=\"https://hq.gucheng.com/bond/\">国债</a>托管余额为14.6万亿元，地方<a href=\"https://finance.gucheng.com/201809/3520421.shtml\">政府</a>债券<a href=\"https://consumer.gucheng.com/201809/3523456.shtml\">托管</a>余额为19.4万亿元，金融债券托管余额为21.7万亿元，公司信用类债券托管余额为19.6万亿元，资产支持证券托管余额为3.0万亿元，同业存单托管余额为9.9万亿元。</p>\r\n<p>4月份，银行间债券市场现券成交17.6万亿元，日均成交8006.2亿元，同比增长72.60%，环比下降4.46%。交易所债券市场现券成交7509.0亿元，日均成交357.6亿元，同比增长51.49%，环比增长1.22%。4月末，银行间债券总<a href=\"https://hq.gucheng.com/SH000003/\">指数</a>为190.17点，较上月末下跌1.15点。</p>'),(24,1,'',1,0,0,0,'','','金融界','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利'),(25,1,'',1,0,0,0,'','','上海证券报','<p>央行17日发布的《2019年4月份金融市场运行情况》显示，4月份银行间货币市场成交共计86.3万亿元，同比增长49.03%，环比增长1.96%。</p>\r\n<figure><img alt=\"债券市场\" src=\"https://finance.gucheng.com/UploadFiles_7830/201905/2019051716580042.jpg\" />\r\n<figcaption>债券市场</figcaption></figure>&nbsp;\r\n<p>其中，质押式回购成交70.4万亿元，同比增长45.05%，环比增长2.42%；买断式回购成交0.7万亿元，同比下降16.47%，环比下降2.57%；同业拆借成交15.1万亿元，同比增长78.89%，环比增长0.11%。</p>\r\n<p>4月份，同业拆借月加权平均利率为2.43%，较上月上行1个基点；质押式回购月加权平均利率为2.46%，较上月下行1个基点。</p>\r\n<p>债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，<a href=\"https://finance.gucheng.com/201809/3530425.shtml\">国债</a>发行4658.9亿元，<a href=\"https://consumer.gucheng.com/201805/3419107.shtml\">地方政府</a>债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，<a href=\"https://money.gucheng.com/201809/3532754.shtml\">资产</a>支持证券发行1086.1亿元，同业存单发行1.1万亿元。</p>\r\n<p>截至4月末，债券市场托管余额为90.1万亿元。其中，<a href=\"https://hq.gucheng.com/bond/\">国债</a>托管余额为14.6万亿元，地方<a href=\"https://finance.gucheng.com/201809/3520421.shtml\">政府</a>债券<a href=\"https://consumer.gucheng.com/201809/3523456.shtml\">托管</a>余额为19.4万亿元，金融债券托管余额为21.7万亿元，公司信用类债券托管余额为19.6万亿元，资产支持证券托管余额为3.0万亿元，同业存单托管余额为9.9万亿元。</p>\r\n<p>4月份，银行间债券市场现券成交17.6万亿元，日均成交8006.2亿元，同比增长72.60%，环比下降4.46%。交易所债券市场现券成交7509.0亿元，日均成交357.6亿元，同比增长51.49%，环比增长1.22%。4月末，银行间债券总<a href=\"https://hq.gucheng.com/SH000003/\">指数</a>为190.17点，较上月末下跌1.15点。</p>'),(26,1,'',1,0,0,0,'','','金融界','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利'),(27,1,'',1,0,0,0,'','','上海证券报','<p>央行17日发布的《2019年4月份金融市场运行情况》显示，4月份银行间货币市场成交共计86.3万亿元，同比增长49.03%，环比增长1.96%。</p>\r\n<figure><img alt=\"债券市场\" src=\"https://finance.gucheng.com/UploadFiles_7830/201905/2019051716580042.jpg\" />\r\n<figcaption>债券市场</figcaption></figure>&nbsp;\r\n<p>其中，质押式回购成交70.4万亿元，同比增长45.05%，环比增长2.42%；买断式回购成交0.7万亿元，同比下降16.47%，环比下降2.57%；同业拆借成交15.1万亿元，同比增长78.89%，环比增长0.11%。</p>\r\n<p>4月份，同业拆借月加权平均利率为2.43%，较上月上行1个基点；质押式回购月加权平均利率为2.46%，较上月下行1个基点。</p>\r\n<p>债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，<a href=\"https://finance.gucheng.com/201809/3530425.shtml\">国债</a>发行4658.9亿元，<a href=\"https://consumer.gucheng.com/201805/3419107.shtml\">地方政府</a>债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，<a href=\"https://money.gucheng.com/201809/3532754.shtml\">资产</a>支持证券发行1086.1亿元，同业存单发行1.1万亿元。</p>\r\n<p>截至4月末，债券市场托管余额为90.1万亿元。其中，<a href=\"https://hq.gucheng.com/bond/\">国债</a>托管余额为14.6万亿元，地方<a href=\"https://finance.gucheng.com/201809/3520421.shtml\">政府</a>债券<a href=\"https://consumer.gucheng.com/201809/3523456.shtml\">托管</a>余额为19.4万亿元，金融债券托管余额为21.7万亿元，公司信用类债券托管余额为19.6万亿元，资产支持证券托管余额为3.0万亿元，同业存单托管余额为9.9万亿元。</p>\r\n<p>4月份，银行间债券市场现券成交17.6万亿元，日均成交8006.2亿元，同比增长72.60%，环比下降4.46%。交易所债券市场现券成交7509.0亿元，日均成交357.6亿元，同比增长51.49%，环比增长1.22%。4月末，银行间债券总<a href=\"https://hq.gucheng.com/SH000003/\">指数</a>为190.17点，较上月末下跌1.15点。</p>'),(28,1,'',1,0,0,0,'','','金融界','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利'),(29,1,'',1,0,0,0,'','','上海证券报','<p>央行17日发布的《2019年4月份金融市场运行情况》显示，4月份银行间货币市场成交共计86.3万亿元，同比增长49.03%，环比增长1.96%。</p>\r\n<figure><img alt=\"债券市场\" src=\"https://finance.gucheng.com/UploadFiles_7830/201905/2019051716580042.jpg\" />\r\n<figcaption>债券市场</figcaption></figure>&nbsp;\r\n<p>其中，质押式回购成交70.4万亿元，同比增长45.05%，环比增长2.42%；买断式回购成交0.7万亿元，同比下降16.47%，环比下降2.57%；同业拆借成交15.1万亿元，同比增长78.89%，环比增长0.11%。</p>\r\n<p>4月份，同业拆借月加权平均利率为2.43%，较上月上行1个基点；质押式回购月加权平均利率为2.46%，较上月下行1个基点。</p>\r\n<p>债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，<a href=\"https://finance.gucheng.com/201809/3530425.shtml\">国债</a>发行4658.9亿元，<a href=\"https://consumer.gucheng.com/201805/3419107.shtml\">地方政府</a>债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，<a href=\"https://money.gucheng.com/201809/3532754.shtml\">资产</a>支持证券发行1086.1亿元，同业存单发行1.1万亿元。</p>\r\n<p>截至4月末，债券市场托管余额为90.1万亿元。其中，<a href=\"https://hq.gucheng.com/bond/\">国债</a>托管余额为14.6万亿元，地方<a href=\"https://finance.gucheng.com/201809/3520421.shtml\">政府</a>债券<a href=\"https://consumer.gucheng.com/201809/3523456.shtml\">托管</a>余额为19.4万亿元，金融债券托管余额为21.7万亿元，公司信用类债券托管余额为19.6万亿元，资产支持证券托管余额为3.0万亿元，同业存单托管余额为9.9万亿元。</p>\r\n<p>4月份，银行间债券市场现券成交17.6万亿元，日均成交8006.2亿元，同比增长72.60%，环比下降4.46%。交易所债券市场现券成交7509.0亿元，日均成交357.6亿元，同比增长51.49%，环比增长1.22%。4月末，银行间债券总<a href=\"https://hq.gucheng.com/SH000003/\">指数</a>为190.17点，较上月末下跌1.15点。</p>'),(30,1,'',1,0,0,0,'','','金融界','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利'),(31,1,'',1,0,0,0,'','','上海证券报','<p>央行17日发布的《2019年4月份金融市场运行情况》显示，4月份银行间货币市场成交共计86.3万亿元，同比增长49.03%，环比增长1.96%。</p>\r\n<figure><img alt=\\\"债券市场\\\" src=\\\"https://finance.gucheng.com/UploadFiles_7830/201905/2019051716580042.jpg\\\" />\r\n<figcaption>债券市场</figcaption></figure>&nbsp;\r\n<p>其中，质押式回购成交70.4万亿元，同比增长45.05%，环比增长2.42%；买断式回购成交0.7万亿元，同比下降16.47%，环比下降2.57%；同业拆借成交15.1万亿元，同比增长78.89%，环比增长0.11%。</p>\r\n<p>4月份，同业拆借月加权平均利率为2.43%，较上月上行1个基点；质押式回购月加权平均利率为2.46%，较上月下行1个基点。</p>\r\n<p>债券市场方面，4月份债券市场共发行各类债券3.6万亿元。其中，<a href=\\\"https://finance.gucheng.com/201809/3530425.shtml\\\">国债</a>发行4658.9亿元，<a href=\\\"https://consumer.gucheng.com/201805/3419107.shtml\\\">地方政府</a>债券发行2266.8亿元，金融债券发行7842.9亿元，公司信用类债券发行9671.7亿元，<a href=\\\"https://money.gucheng.com/201809/3532754.shtml\\\">资产</a>支持证券发行1086.1亿元，同业存单发行1.1万亿元。</p>\r\n<p>截至4月末，债券市场托管余额为90.1万亿元。其中，<a href=\\\"https://hq.gucheng.com/bond/\\\">国债</a>托管余额为14.6万亿元，地方<a href=\\\"https://finance.gucheng.com/201809/3520421.shtml\\\">政府</a>债券<a href=\\\"https://consumer.gucheng.com/201809/3523456.shtml\\\">托管</a>余额为19.4万亿元，金融债券托管余额为21.7万亿元，公司信用类债券托管余额为19.6万亿元，资产支持证券托管余额为3.0万亿元，同业存单托管余额为9.9万亿元。</p>\r\n<p>4月份，银行间债券市场现券成交17.6万亿元，日均成交8006.2亿元，同比增长72.60%，环比下降4.46%。交易所债券市场现券成交7509.0亿元，日均成交357.6亿元，同比增长51.49%，环比增长1.22%。4月末，银行间债券总<a href=\\\"https://hq.gucheng.com/SH000003/\\\">指数</a>为190.17点，较上月末下跌1.15点。</p>'),(32,1,'',1,0,0,0,'','','金融界','5月17日，瑞幸咖啡在美上市，CEO钱治亚发布六大宣言，她称咖啡只是国外街头饮品，没必要在中国卖成奢侈品，中国咖啡与美国比差在自信!媒体连线时，她称亏损符合预期，会持续补贴3-5年，目前不考虑盈利'),(33,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\\\"https://hq.gucheng.com/blockInfo/F52000/\\\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\\\"https://finance.gucheng.com/201809/3527818.shtml\\\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\\\"拼多多\\\" src=\\\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\\\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\\\"https://www.gucheng.com/ask/201808/3502578.shtml\\\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\\\"https://stock.gucheng.com/201804/3406078.shtml\\\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\\\"https://hq.gucheng.com/blockInfo/003665/\\\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(34,2,'',1,0,0,0,'','','股城网','<p><a href=\\\"https://hq.gucheng.com/blockInfo/DY1150/\\\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\\\"爱奇艺\\\" src=\\\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\\\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\\\"https://hq.gucheng.com/USinfo/\\\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\\\"https://hq.gucheng.com/blockInfo/003637/\\\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\\\"https://www.gucheng.com/ask/201803/3385527.shtml\\\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\\\"https://finance.gucheng.com/201809/3523875.shtml\\\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\\\"https://finance.gucheng.com/201809/3523041.shtml\\\">阿里巴巴</a>。</p>'),(35,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(36,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(37,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(38,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(39,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(40,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(41,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(42,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(43,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(44,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(45,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(46,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(47,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(48,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(49,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(50,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(51,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(52,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(53,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(54,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(55,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(56,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(57,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(58,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(59,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(60,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(61,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(62,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(63,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(64,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(65,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(66,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(67,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(68,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(69,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(70,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(71,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(72,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(73,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(74,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(75,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(76,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(77,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(78,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(79,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(80,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(81,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(82,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(83,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(84,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(85,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(86,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(87,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(88,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(89,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(90,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(91,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(92,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>'),(93,2,'',1,0,0,0,'','','股城网','<p>北京时间5月20日，拼多多发布2019年第一季度财报。财报显示，基于领先的技术和新电商模式优势，拼多多正加快建立更为完善的<a href=\"https://hq.gucheng.com/blockInfo/F52000/\">零售业</a>态，通过持续缩短生产和消费的距离，为<a href=\"https://finance.gucheng.com/201809/3527818.shtml\">消费者</a>寻找最合适且优质的商品。</p>\r\n<figure><img alt=\"拼多多\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019052018283231.jpg\" />\r\n<figcaption>拼多多</figcaption></figure>\r\n<p><br />期间，拼多多首次上线整车业务，特别推出的400台五菱宏光在18秒内被抢购一空。为尽可能满足20多万预约用户的需求，平台分别调拨两批整车，全天共计提供1000台<a href=\"https://www.gucheng.com/ask/201808/3502578.shtml\">五菱宏光</a>，该批车辆在21小时内全部售罄。为6&middot;18大促预热的&ldquo;美好生活万人团&rdquo;活动，是拼多多创<a href=\"https://stock.gucheng.com/201804/3406078.shtml\">新零售</a>体系的成果之一。包括近千家国内外顶尖品牌、拼多多&ldquo;新品牌计划&rdquo;成员、&ldquo;上海老字号新<a href=\"https://hq.gucheng.com/blockInfo/003665/\">电商</a>计划&rdquo;联盟成员在内的品牌商参与了本次活动，涉及企业主体近2000家，共计推出10000款击穿行业价格底线的标品，为消费者呈现了前所未有的价格。</p>\r\n<p>据悉，6&middot;18大促期间，拼多多将联合品牌方进一步加大补贴让利幅度，推出更多击穿行业底价的品牌标品。</p>'),(94,2,'',1,0,0,0,'','','股城网','<p><a href=\"https://hq.gucheng.com/blockInfo/DY1150/\">北京</a>时间16日下午消息，爱奇艺股价周四盘前涨逾2%，一季度获高瓴资本大举增持，跃居其第一大重仓股。此外，哔哩哔哩股价盘前亦涨逾2%。</p>\r\n<figure><img alt=\"爱奇艺\" src=\"https://stock.gucheng.com/UploadFiles_7844/201905/2019051620335376.jpg\" />\r\n<figcaption>爱奇艺</figcaption></figure>&nbsp;\r\n<p>最新持仓数据显示，截至2019年3月31日，高瓴资本在<a href=\"https://hq.gucheng.com/USinfo/\">美股</a>二级市场中大规模增持5只中概股，主要以<a href=\"https://hq.gucheng.com/blockInfo/003637/\">互联网</a>企业为主。其中，爱奇艺已跃居高瓴资本第一大<a href=\"https://www.gucheng.com/ask/201803/3385527.shtml\">重仓股</a>，2019年一季度增持1155万股，持有<a href=\"https://finance.gucheng.com/201809/3523875.shtml\">市值</a>高达11.24亿美元。高瓴还增持好未来、拼多多、哔哩哔哩和<a href=\"https://finance.gucheng.com/201809/3523041.shtml\">阿里巴巴</a>。</p>');
/*!40000 ALTER TABLE `gc_ecms_news_data_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_news_doc`
--

DROP TABLE IF EXISTS `gc_ecms_news_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_news_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `filename` char(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` char(14) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` char(80) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` char(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `ftitle` char(120) NOT NULL DEFAULT '',
  `smalltext` char(255) NOT NULL DEFAULT '',
  `diggtop` int(11) NOT NULL DEFAULT '0',
  `titlepic_alt` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_news_doc`
--

LOCK TABLES `gc_ecms_news_doc` WRITE;
/*!40000 ALTER TABLE `gc_ecms_news_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_news_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_news_doc_data`
--

DROP TABLE IF EXISTS `gc_ecms_news_doc_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_news_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `befrom` varchar(60) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_news_doc_data`
--

LOCK TABLES `gc_ecms_news_doc_data` WRITE;
/*!40000 ALTER TABLE `gc_ecms_news_doc_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_news_doc_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_news_doc_index`
--

DROP TABLE IF EXISTS `gc_ecms_news_doc_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_news_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_news_doc_index`
--

LOCK TABLES `gc_ecms_news_doc_index` WRITE;
/*!40000 ALTER TABLE `gc_ecms_news_doc_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_news_doc_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_news_index`
--

DROP TABLE IF EXISTS `gc_ecms_news_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_news_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_news_index`
--

LOCK TABLES `gc_ecms_news_index` WRITE;
/*!40000 ALTER TABLE `gc_ecms_news_index` DISABLE KEYS */;
INSERT INTO `gc_ecms_news_index` VALUES (1,1,1,1558102431,1558102586,1558185293,1),(2,1,1,1558223088,1558223308,1558223478,1),(3,1,1,1558102431,1558315107,1558315107,1),(4,1,1,1558223088,1558315107,1558315107,1),(5,1,1,1558102431,1558315118,1558315118,1),(6,1,1,1558223088,1558315118,1558315118,1),(7,1,1,1558102431,1558315118,1558315118,1),(8,1,1,1558223088,1558315118,1558315118,1),(9,1,1,1558102431,1558315128,1558315128,1),(10,1,1,1558223088,1558315128,1558315128,1),(11,1,1,1558102431,1558315128,1558315128,1),(12,1,1,1558223088,1558315128,1558315128,1),(13,1,1,1558102431,1558315128,1558316191,1),(14,1,1,1558223088,1558315128,1558315128,1),(15,1,1,1558102431,1558315128,1558315128,1),(16,1,1,1558223088,1558315128,1558315128,1),(17,1,1,1558102431,1558315141,1558315141,1),(18,1,1,1558223088,1558315141,1558315141,1),(19,1,1,1558102431,1558315141,1558315141,1),(20,1,1,1558223088,1558315141,1558315141,1),(21,1,1,1558102431,1558315141,1558315141,1),(22,1,1,1558223088,1558315141,1558315141,1),(23,1,1,1558102431,1558315141,1558315141,1),(24,1,1,1558223088,1558315141,1558315141,1),(25,1,1,1558102431,1558315141,1558315141,1),(26,1,1,1558223088,1558315141,1558315141,1),(27,1,1,1558102431,1558315141,1558315141,1),(28,1,1,1558223088,1558315141,1558315141,1),(29,1,1,1558102431,1558315141,1558315141,1),(30,1,1,1558223088,1558315141,1558315141,1),(31,1,1,1558102431,1558315141,1558316211,1),(32,1,1,1558223088,1558315141,1558315141,1),(33,2,1,1558358736,1558358954,1558358954,1),(34,2,1,1558358956,1558359073,1558359073,1),(35,2,1,1558358736,1558359411,1558359411,1),(36,2,1,1558358956,1558359411,1558359411,1),(37,2,1,1558358736,1558359421,1558359421,1),(38,2,1,1558358956,1558359421,1558359421,1),(39,2,1,1558358736,1558359421,1558359421,1),(40,2,1,1558358956,1558359421,1558359421,1),(41,2,1,1558358736,1558359430,1558359430,1),(42,2,1,1558358956,1558359430,1558359430,1),(43,2,1,1558358736,1558359430,1558359430,1),(44,2,1,1558358956,1558359430,1558359430,1),(45,2,1,1558358736,1558359430,1558359430,1),(46,2,1,1558358956,1558359430,1558359430,1),(47,2,1,1558358736,1558359430,1558359430,1),(48,2,1,1558358956,1558359430,1558359430,1),(49,2,1,1558358736,1558359441,1558359441,1),(50,2,1,1558358956,1558359441,1558359441,1),(51,2,1,1558358736,1558359441,1558359441,1),(52,2,1,1558358956,1558359441,1558359441,1),(53,2,1,1558358736,1558359441,1558359441,1),(54,2,1,1558358956,1558359441,1558359441,1),(55,2,1,1558358736,1558359441,1558359441,1),(56,2,1,1558358956,1558359441,1558359441,1),(57,2,1,1558358736,1558359441,1558359441,1),(58,2,1,1558358956,1558359441,1558359441,1),(59,2,1,1558358736,1558359441,1558359441,1),(60,2,1,1558358956,1558359441,1558359441,1),(61,2,1,1558358736,1558359441,1558359441,1),(62,2,1,1558358956,1558359441,1558359441,1),(63,2,1,1558358736,1558359441,1558359441,1),(64,2,1,1558358956,1558359441,1558359441,1),(65,2,1,1558358736,1558359460,1558359460,1),(66,2,1,1558358956,1558359460,1558359460,1),(67,2,1,1558358736,1558359460,1558359460,1),(68,2,1,1558358956,1558359460,1558359460,1),(69,2,1,1558358736,1558359460,1558359460,1),(70,2,1,1558358956,1558359460,1558359460,1),(71,2,1,1558358736,1558359460,1558359460,1),(72,2,1,1558358956,1558359460,1558359460,1),(73,2,1,1558358736,1558359460,1558359460,1),(74,2,1,1558358956,1558359460,1558359460,1),(75,2,1,1558358736,1558359460,1558359460,1),(76,2,1,1558358956,1558359460,1558359460,1),(77,2,1,1558358736,1558359460,1558359460,1),(78,2,1,1558358956,1558359460,1558359460,1),(79,2,1,1558358736,1558359460,1558359460,1),(80,2,1,1558358956,1558359460,1558359460,1),(81,2,1,1558358736,1558359460,1558359460,1),(82,2,1,1558358956,1558359460,1558359460,1),(83,2,1,1558358736,1558359460,1558359460,1),(84,2,1,1558358956,1558359460,1558359460,1),(85,2,1,1558358736,1558359460,1558359460,1),(86,2,1,1558358956,1558359460,1558359460,1),(87,2,1,1558358736,1558359460,1558359460,1),(88,2,1,1558358956,1558359460,1558359460,1),(89,2,1,1558358736,1558359460,1558359460,1),(90,2,1,1558358956,1558359460,1558359460,1),(91,2,1,1558358736,1558359460,1558359460,1),(92,2,1,1558358956,1558359460,1558359460,1),(93,2,1,1558358736,1558359460,1558359460,1),(94,2,1,1558358956,1558359460,1558359460,1);
/*!40000 ALTER TABLE `gc_ecms_news_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_photo`
--

DROP TABLE IF EXISTS `gc_ecms_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `picsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_photo`
--

LOCK TABLES `gc_ecms_photo` WRITE;
/*!40000 ALTER TABLE `gc_ecms_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_photo_check`
--

DROP TABLE IF EXISTS `gc_ecms_photo_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_photo_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `picsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_photo_check`
--

LOCK TABLES `gc_ecms_photo_check` WRITE;
/*!40000 ALTER TABLE `gc_ecms_photo_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_photo_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_photo_check_data`
--

DROP TABLE IF EXISTS `gc_ecms_photo_check_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_photo_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `filesize` varchar(10) NOT NULL DEFAULT '',
  `picsize` varchar(20) NOT NULL DEFAULT '',
  `picfbl` varchar(20) NOT NULL DEFAULT '',
  `picfrom` varchar(120) NOT NULL DEFAULT '',
  `morepic` mediumtext NOT NULL,
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_photo_check_data`
--

LOCK TABLES `gc_ecms_photo_check_data` WRITE;
/*!40000 ALTER TABLE `gc_ecms_photo_check_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_photo_check_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_photo_data_1`
--

DROP TABLE IF EXISTS `gc_ecms_photo_data_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_photo_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `filesize` varchar(10) NOT NULL DEFAULT '',
  `picsize` varchar(20) NOT NULL DEFAULT '',
  `picfbl` varchar(20) NOT NULL DEFAULT '',
  `picfrom` varchar(120) NOT NULL DEFAULT '',
  `morepic` mediumtext NOT NULL,
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_photo_data_1`
--

LOCK TABLES `gc_ecms_photo_data_1` WRITE;
/*!40000 ALTER TABLE `gc_ecms_photo_data_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_photo_data_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_photo_doc`
--

DROP TABLE IF EXISTS `gc_ecms_photo_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_photo_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `picsay` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_photo_doc`
--

LOCK TABLES `gc_ecms_photo_doc` WRITE;
/*!40000 ALTER TABLE `gc_ecms_photo_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_photo_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_photo_doc_data`
--

DROP TABLE IF EXISTS `gc_ecms_photo_doc_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_photo_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` varchar(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` varchar(80) NOT NULL DEFAULT '',
  `filesize` varchar(10) NOT NULL DEFAULT '',
  `picsize` varchar(20) NOT NULL DEFAULT '',
  `picfbl` varchar(20) NOT NULL DEFAULT '',
  `picfrom` varchar(120) NOT NULL DEFAULT '',
  `morepic` mediumtext NOT NULL,
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `width` varchar(12) NOT NULL DEFAULT '',
  `height` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_photo_doc_data`
--

LOCK TABLES `gc_ecms_photo_doc_data` WRITE;
/*!40000 ALTER TABLE `gc_ecms_photo_doc_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_photo_doc_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_photo_doc_index`
--

DROP TABLE IF EXISTS `gc_ecms_photo_doc_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_photo_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_photo_doc_index`
--

LOCK TABLES `gc_ecms_photo_doc_index` WRITE;
/*!40000 ALTER TABLE `gc_ecms_photo_doc_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_photo_doc_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_photo_index`
--

DROP TABLE IF EXISTS `gc_ecms_photo_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_photo_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_photo_index`
--

LOCK TABLES `gc_ecms_photo_index` WRITE;
/*!40000 ALTER TABLE `gc_ecms_photo_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_photo_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_shop`
--

DROP TABLE IF EXISTS `gc_ecms_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `productno` varchar(30) NOT NULL DEFAULT '',
  `pbrand` varchar(30) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `unit` varchar(16) NOT NULL DEFAULT '',
  `weight` varchar(20) NOT NULL DEFAULT '',
  `tprice` float(11,2) NOT NULL DEFAULT '0.00',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `buyfen` int(11) NOT NULL DEFAULT '0',
  `pmaxnum` int(11) NOT NULL DEFAULT '0',
  `productpic` varchar(255) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `psalenum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_shop`
--

LOCK TABLES `gc_ecms_shop` WRITE;
/*!40000 ALTER TABLE `gc_ecms_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_shop_check`
--

DROP TABLE IF EXISTS `gc_ecms_shop_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_shop_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `productno` varchar(30) NOT NULL DEFAULT '',
  `pbrand` varchar(30) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `unit` varchar(16) NOT NULL DEFAULT '',
  `weight` varchar(20) NOT NULL DEFAULT '',
  `tprice` float(11,2) NOT NULL DEFAULT '0.00',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `buyfen` int(11) NOT NULL DEFAULT '0',
  `pmaxnum` int(11) NOT NULL DEFAULT '0',
  `productpic` varchar(255) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `psalenum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_shop_check`
--

LOCK TABLES `gc_ecms_shop_check` WRITE;
/*!40000 ALTER TABLE `gc_ecms_shop_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_shop_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_shop_check_data`
--

DROP TABLE IF EXISTS `gc_ecms_shop_check_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_shop_check_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_shop_check_data`
--

LOCK TABLES `gc_ecms_shop_check_data` WRITE;
/*!40000 ALTER TABLE `gc_ecms_shop_check_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_shop_check_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_shop_data_1`
--

DROP TABLE IF EXISTS `gc_ecms_shop_data_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_shop_data_1` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_shop_data_1`
--

LOCK TABLES `gc_ecms_shop_data_1` WRITE;
/*!40000 ALTER TABLE `gc_ecms_shop_data_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_shop_data_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_shop_doc`
--

DROP TABLE IF EXISTS `gc_ecms_shop_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_shop_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ttid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `plnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `totaldown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(36) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `firsttitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `isurl` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `userfen` smallint(5) unsigned NOT NULL DEFAULT '0',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `stb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fstb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keyboard` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepic` varchar(120) NOT NULL DEFAULT '',
  `eckuid` int(11) NOT NULL DEFAULT '0',
  `productno` varchar(30) NOT NULL DEFAULT '',
  `pbrand` varchar(30) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `unit` varchar(16) NOT NULL DEFAULT '',
  `weight` varchar(20) NOT NULL DEFAULT '',
  `tprice` float(11,2) NOT NULL DEFAULT '0.00',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `buyfen` int(11) NOT NULL DEFAULT '0',
  `pmaxnum` int(11) NOT NULL DEFAULT '0',
  `productpic` varchar(255) NOT NULL DEFAULT '',
  `newstext` mediumtext NOT NULL,
  `psalenum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `newstime` (`newstime`),
  KEY `ttid` (`ttid`),
  KEY `firsttitle` (`firsttitle`),
  KEY `isgood` (`isgood`),
  KEY `ispic` (`ispic`),
  KEY `useridis` (`userid`,`ismember`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_shop_doc`
--

LOCK TABLES `gc_ecms_shop_doc` WRITE;
/*!40000 ALTER TABLE `gc_ecms_shop_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_shop_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_shop_doc_data`
--

DROP TABLE IF EXISTS `gc_ecms_shop_doc_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_shop_doc_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyid` char(255) NOT NULL DEFAULT '',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `newstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infotags` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_shop_doc_data`
--

LOCK TABLES `gc_ecms_shop_doc_data` WRITE;
/*!40000 ALTER TABLE `gc_ecms_shop_doc_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_shop_doc_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_shop_doc_index`
--

DROP TABLE IF EXISTS `gc_ecms_shop_doc_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_shop_doc_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_shop_doc_index`
--

LOCK TABLES `gc_ecms_shop_doc_index` WRITE;
/*!40000 ALTER TABLE `gc_ecms_shop_doc_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_shop_doc_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_ecms_shop_index`
--

DROP TABLE IF EXISTS `gc_ecms_shop_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_ecms_shop_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `truetime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdotime` int(10) unsigned NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`,`id`),
  KEY `havehtml` (`classid`,`truetime`,`havehtml`,`checked`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_ecms_shop_index`
--

LOCK TABLES `gc_ecms_shop_index` WRITE;
/*!40000 ALTER TABLE `gc_ecms_shop_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_ecms_shop_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsad`
--

DROP TABLE IF EXISTS `gc_enewsad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsad` (
  `adid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `picurl` varchar(255) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `pic_width` int(10) unsigned NOT NULL DEFAULT '0',
  `pic_height` int(10) unsigned NOT NULL DEFAULT '0',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `adtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '',
  `alt` varchar(120) NOT NULL DEFAULT '',
  `starttime` date NOT NULL DEFAULT '0000-00-00',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `adsay` varchar(255) NOT NULL DEFAULT '',
  `titlefont` varchar(14) NOT NULL DEFAULT '',
  `titlecolor` varchar(10) NOT NULL DEFAULT '',
  `htmlcode` text NOT NULL,
  `t` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ylink` tinyint(1) NOT NULL DEFAULT '0',
  `reptext` text NOT NULL,
  PRIMARY KEY (`adid`),
  KEY `classid` (`classid`),
  KEY `t` (`t`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsad`
--

LOCK TABLES `gc_enewsad` WRITE;
/*!40000 ALTER TABLE `gc_enewsad` DISABLE KEYS */;
INSERT INTO `gc_enewsad` VALUES (1,'/d/file/p/2019/05-17/04e2bbfa9177ba78c571fa629d40e88b.png','http://www.baidu.com',1200,90,0,1,1,'导航下面广告','_blank','','2019-05-17','0000-00-00','','','','',0,1,''),(2,'/d/file/p/2019/05-18/d5e640946c6e22ce02533f1502b7f643.jpg','http://www.baidu.com',340,190,1,1,1,'侧边栏广告','_blank','','2019-05-18','0000-00-00','','','','',0,1,'');
/*!40000 ALTER TABLE `gc_enewsad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsadclass`
--

DROP TABLE IF EXISTS `gc_enewsadclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsadclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsadclass`
--

LOCK TABLES `gc_enewsadclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsadclass` DISABLE KEYS */;
INSERT INTO `gc_enewsadclass` VALUES (1,'默认广告分类');
/*!40000 ALTER TABLE `gc_enewsadclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsadminstyle`
--

DROP TABLE IF EXISTS `gc_enewsadminstyle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsadminstyle` (
  `styleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `stylename` char(30) NOT NULL DEFAULT '',
  `path` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsadminstyle`
--

LOCK TABLES `gc_enewsadminstyle` WRITE;
/*!40000 ALTER TABLE `gc_enewsadminstyle` DISABLE KEYS */;
INSERT INTO `gc_enewsadminstyle` VALUES (1,'管理员后台界面',1,1),(2,'编辑后台界面',2,0);
/*!40000 ALTER TABLE `gc_enewsadminstyle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsag`
--

DROP TABLE IF EXISTS `gc_enewsag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsag` (
  `agid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `agname` varchar(60) NOT NULL DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `auids` text NOT NULL,
  PRIMARY KEY (`agid`),
  KEY `isadmin` (`isadmin`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsag`
--

LOCK TABLES `gc_enewsag` WRITE;
/*!40000 ALTER TABLE `gc_enewsag` DISABLE KEYS */;
INSERT INTO `gc_enewsag` VALUES (1,'管理员',9,''),(2,'版主',5,'');
/*!40000 ALTER TABLE `gc_enewsag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsautodo`
--

DROP TABLE IF EXISTS `gc_enewsautodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsautodo` (
  `doid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dotype` char(50) NOT NULL DEFAULT '',
  `classid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `dotime` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `ckstr` char(32) NOT NULL DEFAULT '',
  `fname` char(255) NOT NULL DEFAULT '',
  `ecmspno` char(32) NOT NULL DEFAULT '',
  `ckpass` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`doid`),
  KEY `userid` (`userid`),
  KEY `pid` (`pid`),
  KEY `dotime` (`dotime`),
  KEY `ckstr` (`ckstr`),
  KEY `ecmspno` (`ecmspno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsautodo`
--

LOCK TABLES `gc_enewsautodo` WRITE;
/*!40000 ALTER TABLE `gc_enewsautodo` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsautodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsbefrom`
--

DROP TABLE IF EXISTS `gc_enewsbefrom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsbefrom` (
  `befromid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` char(60) NOT NULL DEFAULT '',
  `siteurl` char(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`befromid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsbefrom`
--

LOCK TABLES `gc_enewsbefrom` WRITE;
/*!40000 ALTER TABLE `gc_enewsbefrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsbefrom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsbq`
--

DROP TABLE IF EXISTS `gc_enewsbq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsbq` (
  `bqid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bqname` varchar(60) NOT NULL DEFAULT '',
  `bqsay` text NOT NULL,
  `funname` varchar(60) NOT NULL DEFAULT '',
  `bq` varchar(60) NOT NULL DEFAULT '',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  `bqgs` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bqid`),
  KEY `classid` (`classid`),
  KEY `isclose` (`isclose`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsbq`
--

LOCK TABLES `gc_enewsbq` WRITE;
/*!40000 ALTER TABLE `gc_enewsbq` DISABLE KEYS */;
INSERT INTO `gc_enewsbq` VALUES (1,'文字调用标签','<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\\"window.open(\\\'../info/InfoType.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>,当前ID=\\\'selfinfo\\\'<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示时间</div>\r\n            </td>\r\n            <td height=\\\"25\\\">是否在标题后显示时间，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型</div>\r\n            </td>\r\n            <td height=\\\"25\\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">时间格式化</div>\r\n            </td>\r\n            <td height=\\\"25\\\">形式：Y-m-d H:i:s．默认为：\\\'(m-d)\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\\"25\\\">附加调用条件，如：&quot;title=\\\'帝国\\\'&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td colspan=\\\"2\\\">\r\n            <div align=\\\"center\\\">（注：在栏目ID中写大栏目，系统会自己搜索子栏目的信息）</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>','sys_GetClassNews','phomenews',1,'[phomenews]栏目ID,显示条数,标题截取数,是否显示时间,操作类型,是否显示栏目名,\\\'时间格式化\\\',附加SQL条件,显示排序[/phomenews]',0,1,9),(22,'留言板调用','<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\\\"40%\\\">\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td width=\\\"60%\\\">参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示信息数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示记录数</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\\"25\\\">模板标签变量说明：<br />\r\n            留言ID：[!--lyid--]，留言内容：[!--lytext--]<br />\r\n            回复内容：[!--retext--]，留言时间：[!--lytime--]<br />\r\n            留言者：[!--name--]，留言者邮箱：[!--email--]<br />\r\n            序号：[!--no--]</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">留言分类ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">点击<strong><a onclick=\\\"window.open(\\\'../tool/GbookClass.php?[!--ehash--]\\\');\\\">这里</a></strong>查看分类ID，0为不限制</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>','sys_ShowLyInfo','gbookinfo',1,'[gbookinfo]显示信息数,标签模板ID,留言分类ID[/gbookinfo]',0,3,5),(23,'专题调用标签','<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <p>模板标签变量说明：(list.var)<br />\r\n            [!--classurl--]：专题链接，[!--classname--]：专题名称<br />\r\n            [!--classid--]：专题id，[!--classimg--]：专题图片<br />\r\n            [!--intro--]：专题简介,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">专题类别ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">点击<strong><a onclick=\\\"window.open(\\\'../special/ListZtClass.php?[!--ehash--]\\\');\\\">这里</a></strong>查看分类ID，0为不限制，多个分类ID用逗号隔开，如\\\'1,2\\\'</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示专题数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">所属栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">点击<strong><a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\">这里</a></strong>查看栏目ID，0为不限制，多个栏目ID用逗号隔开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n    </tbody>\r\n</table>','sys_ShowZtData','eshowzt',1,'[eshowzt]标签模板ID,专题类别ID,显示专题数,所属栏目ID[/eshowzt]',0,2,6),(2,'图文信息调用(标题图片的信息)','<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\\"window.open(\\\'../info/InfoType.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>,当前ID=\\\'selfinfo\\\'<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">每行显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">每行显示几个图片</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示总信息数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示信息总数</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">图片宽度，图片高度</div>\r\n            </td>\r\n            <td height=\\\"25\\\">图文信息图片大小</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\\"25\\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td bgcolor=\\\"#ffffff\\\" height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td bgcolor=\\\"#ffffff\\\" height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型说明</div>\r\n            </td>\r\n            <td height=\\\"25\\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\\"25\\\">附加调用条件，如：&quot;title=\\\'帝国\\\'&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>','sys_GetClassNewsPic','phomenewspic',1,'[phomenewspic]栏目ID,每行显示条数,显示总信息数,图片宽度,图片高度,是否显示标题,标题截取数,操作类型,附加SQL条件,显示排序[/phomenewspic]',0,1,9),(5,'广告标签','<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">广告ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看广告ID点<a onclick=\\\"window.open(\\\'../tool/ListAd.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>','sys_GetAd','phomead',1,'[phomead]广告ID[/phomead]',0,3,5),(6,'投票标签','<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">投票ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看投票ID点<a onclick=\\\"window.open(\\\'../tool/ListVote.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>','sys_GetVote','phomevote',1,'[phomevote]投票ID[/phomevote]',0,3,5),(11,'带模板的信息调用标签[万能标签]','<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\\"window.open(\\\'../info/InfoType.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>,当前ID=\\\'selfinfo\\\'<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型</div>\r\n            </td>\r\n            <td height=\\\"25\\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\\"25\\\">附加调用条件，如：&quot;title=\\\'帝国\\\'&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>','sys_GetEcmsInfo','ecmsinfo',1,'[ecmsinfo]栏目ID,显示条数,标题截取数,是否显示栏目名,操作类型,模板ID,只显示有标题图片,附加SQL条件,显示排序[/ecmsinfo]',0,1,10),(12,'友情链接标签','<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\\\"40%\\\">\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td width=\\\"60%\\\">参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">每行显示记录数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">每行显示记录数</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示总记录数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">总记录数</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">0为所有记录，1为图片链接，2为文字链接</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">分类ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">点击<strong><a onclick=\\\"window.open(\\\'../tool/LinkClass.php?[!--ehash--]\\\');\\\">这里</a></strong>查看分类ID，0为不限制</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示原链接</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"left\\\">0为统计点击链接，1为显示原链接</div>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>','sys_GetSitelink','phomelink',1,'[phomelink]每行显示数,显示总数,操作类型,分类id,是否显示原链接[/phomelink]',0,3,5),(15,'引用文件标签','<p>[includefile]\\\'文件地址\\\'[/includefile]<br />\r\n文件地址需要为相对地址,并且从后台目录算起：&quot;../../header.html&quot;（这个地址的header.html是放在ecms根目录）</p>','sys_IncludeFile','includefile',1,'[includefile]\\\'文件地址\\\'[/includefile]',1,4,4),(16,'读取远程页面','<p>[readhttp]\\\'页面地址\\\'[/readhttp]</p>','sys_ReadFile','readhttp',1,'[readhttp]\\\'页面地址\\\'[/readhttp]',1,4,4),(17,'网站信息统计','<p>操作类型说明：\r\n<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\">\r\n    <tbody>\r\n        <tr bgcolor=\\\"#dbeaf5\\\">\r\n            <td width=\\\"25%\\\">\r\n            <div align=\\\"center\\\">操作类型</div>\r\n            </td>\r\n            <td width=\\\"75%\\\">内容</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">0</div>\r\n            </td>\r\n            <td>统计栏目数据</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">1</div>\r\n            </td>\r\n            <td>统计标题分类</td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">2</div>\r\n            </td>\r\n            <td>统计数据表</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<br />\r\n时间范围：0为不限；1为今日；2为本月；3为本年。<br />\r\n统计类型：0为统计信息数；1为统计评论数；2为统计点击数；3为统计下载数。<br />\r\n如果操作类型是&ldquo;统计数据表&rdquo;，栏目ID=\\\'数据表名\\\'</p>','sys_TotalData','totaldata',1,'[totaldata]栏目ID,操作类型,时间范围,统计类型[/totaldata]',0,1,7),(18,'FLASH幻灯信息调用','<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>，查看标题分类ID点<a onclick=\\\"window.open(\\\'../info/InfoType.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>,当前ID=\\\'selfinfo\\\'<br />\r\n            多个栏目ID与标题分类ID可用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示总数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示信息总数</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">图片宽度，图片高度</div>\r\n            </td>\r\n            <td height=\\\"25\\\">图文信息图片大小</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示标题</div>\r\n            </td>\r\n            <td height=\\\"25\\\">是否在图片下显示标题，0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td bgcolor=\\\"#ffffff\\\" height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td bgcolor=\\\"#ffffff\\\" height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型说明</div>\r\n            </td>\r\n            <td height=\\\"25\\\">具体看操作类型说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\\"25\\\">附加调用条件，如：&quot;title=\\\'帝国\\\'&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>','sys_FlashPixpic','phomeflashpic',1,'[phomeflashpic]栏目ID,显示总数,图片宽度,图片高度,是否显示标题,标题截取数,操作类型,停顿秒数,附加SQL条件,显示排序[/phomeflashpic]',0,1,9),(19,'搜索关键字调用标签','<p>栏目id为0，则显示所有栏目的关键字</p>\r\n<p>操作类型：0为搜索热门排行，1为最新搜索排行</p>','sys_ShowSearchKey','showsearch',1,'[showsearch]每行显示条数,总条数,栏目id,操作类型[/showsearch]',0,1,7),(20,'循环子栏目数据标签','<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a>，单个为父栏目ID，多栏目可用&quot;,&quot;格开<br />\r\n            当前栏目ID用：\\\'selfinfo\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示栏目名</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">操作类型</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0：栏目最新<br />\r\n            1：栏目热门<br />\r\n            2：栏目推荐<br />\r\n            3：栏目评论排行<br />\r\n            4：栏目头条<br />\r\n            5：栏目下载排行</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示头条操作类型</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0：不显示栏目头条<br />\r\n            1：栏目内容简介<br />\r\n            2：栏目推荐信息<br />\r\n            3：栏目头条信息<br />\r\n            4：栏目最新信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">头条标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">头条简介截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">头条只显示有标题图片</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制，1为只显示有标题图片的信息</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">附加SQL条件</div>\r\n            </td>\r\n            <td height=\\\"25\\\">附加调用条件，如：&quot;title=\\\'帝国\\\'&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定按相应的字段排序，如：&quot;id desc&quot;</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">头条的模板变量<br />\r\n            (标签模板的页面模板内容中使用)</div>\r\n            </td>\r\n            <td height=\\\"25\\\">[!--sonclass.id--]：信息ID<br />\r\n            [!--sonclass.title--]：信息标题<br />\r\n            [!--sonclass.oldtitle--]：信息标题(不截取字数)<br />\r\n            [!--sonclass.titlepic--]：标题图片<br />\r\n            [!--sonclass.titleurl--]：信息链接<br />\r\n            [!--sonclass.text--]：信息简介</td>\r\n        </tr>\r\n    </tbody>\r\n</table>','sys_ForSonclassData','listsonclass',1,'[listsonclass]栏目ID,显示条数,标题截取数,是否显示栏目名,操作类型,模板ID,只显示有标题图片,显示栏目数,显示头条操作类型,头条标题截取数,头条简介截取数,头条只显示有标题图片,附加SQL条件,显示排序[/listsonclass]',0,1,9),(21,'带模板的栏目导航标签','<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">父栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n            \\\'0\\\'为显示所有一级栏目<br />\r\n            \\\'selfinfo\\\'显示本栏目下级栏目</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <p>模板标签变量说明：[!--bclassname--]：父栏目名,[!--bclassurl--]：父栏目链接,[!--bclassid--]：父栏目id</p>\r\n            <p>list.var模板标签：<br />\r\n            [!--classurl--]：栏目链接,[!--classname--]：栏目名称,[!--classid--]：栏目id,[!--classimg--]：栏目图片,[!--intro--]：栏目简介,[!--num--]：信息数,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示栏目信息数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制</td>\r\n        </tr>\r\n    </tbody>\r\n</table>','sys_ShowClassByTemp','showclasstemp',1,'[showclasstemp]父栏目ID,标签模板ID,是否显示栏目信息数,显示栏目数[/showclasstemp]',0,2,6),(24,'图库模型分页标签','<p>\r\n<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <p><strong>模板标签变量说明：</strong><br />\r\n            图片集JS数组：[!--photor--]，缩略图导航：[!--smalldh--]<br />\r\n            分页导航：[!--select--]，标题分页导航：[!--titleselect--]，分页列表式导航：[!--listpage--]</p>\r\n            <p><strong>list.var模板标签：</strong><br />\r\n            图片名称：[!--picname--]，图片地址：[!--picurl--]</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">导航图片宽度<br />\r\n            导航图片高度</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为按原图大小</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>','sys_PhotoMorepage','eshowphoto',1,'[eshowphoto]标签模板ID,导航图片宽度,导航图片高度[/eshowphoto]',0,1,7),(25,'复选项输出函数','<p>如：[echocheckbox]\\\'title\\\',\\\'&lt;br&gt;\\\'[/echocheckbox]：表示按回车分隔输出title字段的项</p>','sys_EchoCheckboxFValue','echocheckbox',1,'[echocheckbox]\\\'字段\\\',\\\'分隔符\\\'[/echocheckbox]',0,3,5),(26,'相关链接标签','<p><strong>标签模板ID</strong>：查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n<strong>操作类型</strong>：0为默认；1为按表；2为按栏目；3为按标题分类<br />\r\n<strong>操作对象</strong>：对应操作类型的表/栏目/标题分类。空则为默认。<br />\r\n<strong>是否显示栏目名</strong>：0为不显示；1为显示<br />\r\n<strong>只显示标题图片的信息</strong>：0为不限；1为只显示标题图片的信息</p>','sys_GetOtherLinkInfo','otherlink',1,'[otherlink]标签模板ID,操作对象,调用条数,标题截取字数,是否显示栏目名,操作类型,只显示标题图片的信息[/otherlink]',0,1,9),(27,'评论调用标签','<p><strong>标签模板ID</strong>：查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n<strong>栏目ID</strong>：0为不限调用栏目，父栏目会应用于子栏目<br />\r\n<strong>信息ID</strong>：0为不限<br />\r\n<strong>显示推荐评论</strong>：0为不限；1为只显示推荐评论<br />\r\n<strong>操作类型</strong>：0为按发布时间；1为按支持数；2为按反对数<br />\r\n<strong>标签模板说明</strong>：[!--title--]:信息标题；[!--titleurl--]:信息链接；[!--titlepic--]:信息标题图片；[!--id--]:信息ID<br />\r\n[!--classid--]:栏目ID；[!--plid--]:评论ID；[!--username--]:发表者；[!--no--]:编号<br />\r\n[!--pltext--]:评论内容；[!--pltime--]:评论时间；[!--zcnum--]:支持数；[!--fdnum--]:反对数</p>','sys_ShowPlInfo','showplinfo',1,'[showplinfo]调用条数,标签模板ID,栏目ID,信息ID,显示推荐评论,操作类型[/showplinfo]',0,3,5),(28,'循环栏目导航标签','<p>\r\n<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">父栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看栏目ID点<a onclick=\\\"window.open(\\\'../ListClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n            \\\'0\\\'为显示所有一级栏目<br />\r\n            \\\'selfinfo\\\'显示本栏目下级栏目<br />\r\n            多栏目固定调用可用&quot;,&quot;格开</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">&nbsp;</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\r\n            <p>模板标签变量说明：[!--bclassname--]：父栏目名,[!--bclassurl--]：父栏目链接,[!--bclassid--]：父栏目id，[!--bclassimg--]：父栏目图片,[!--bintro--]：父栏目简介,[!--bnum--]：父栏目信息数,[!--bno--]：父栏目序号</p>\r\n            <p>list.var模板标签：<br />\r\n            [!--classurl--]：栏目链接,[!--classname--]：栏目名称,[!--classid--]：栏目id,[!--classimg--]：栏目图片,[!--intro--]：栏目简介,[!--num--]：信息数,[!--no--]：序号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示栏目信息数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不显示，1为显示</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示栏目数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">0为不限制</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>','sys_ForShowSonClass','listshowclass',1,'[listshowclass]父栏目ID,标签模板ID,是否显示栏目信息数,显示栏目数[/listshowclass]',0,2,6),(29,'调用TAGS的信息标签','<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">TAGS的ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看TAGS的ID点<a onclick=\\\"window.open(\\\'../tags/ListTags.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n            多个ID可以用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标签模板ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看标签模板ID点<a onclick=\\\"window.open(\\\'ListBqtemp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">栏目ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">限制只调用某一个或多个栏目的信息<br />\r\n            多个ID可以用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">系统模型ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">限制只调用某一个或多个系统模型的信息<br />\r\n            多个ID可以用,号格开，如\\\'1,2\\\'</td>\r\n        </tr>\r\n    </tbody>\r\n</table>','sys_eShowTagsInfo','tagsinfo',0,'[tagsinfo]TAGS的ID,显示条数,标题截取数,标签模板ID,栏目ID,系统模型ID[/tagsinfo]',0,0,9),(30,'调用碎片的信息标签','<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">碎片变量名</div>\r\n            </td>\r\n            <td height=\\\"25\\\">查看碎片变量名点<a onclick=\\\"window.open(\\\'../sp/ListSp.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a></td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示条数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">标题截取数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">截取几个字符</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p><br />\r\n&nbsp;</p>\r\n<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td colspan=\\\"2\\\">\r\n            <div align=\\\"center\\\">碎片标签模板变量说明</div>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\" width=\\\"34%\\\">\r\n            <div align=\\\"center\\\">静态碎片</div>\r\n            </td>\r\n            <td height=\\\"25\\\" width=\\\"66%\\\">模板标签变量说明：[!--the.spname--]：碎片名称,[!--the.spid--]：碎片ID,[!--the.sppic--]：碎片效果图,[!--the.spsay--]：碎片描述\r\n            <p>list.var模板标签：<br />\r\n            [!--title--]：标题,[!--oldtitle--]：标题ALT,[!--newstime--]：发布时间,[!--id--]：碎片信息ID,[!--titleurl--]：标题链接,[!--titlepic--]：标题缩图,[!--bigpic--]：标题大图,[!--titlepre--]：标题左边,[!--titlenext--]：标题右边,[!--smalltext--]：内容简介,[!--no.num--]：编号</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">动态碎片</div>\r\n            </td>\r\n            <td height=\\\"25\\\">模板标签变量说明：[!--the.spname--]：碎片名称,[!--the.spid--]：碎片ID,[!--the.sppic--]：碎片效果图,[!--the.spsay--]：碎片描述\r\n            <p>list.var模板标签：<br />\r\n            支持变量同模型信息调用</p>\r\n            </td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">代码碎片</div>\r\n            </td>\r\n            <td height=\\\"25\\\">无需标签模板，直接显示代码内容</td>\r\n        </tr>\r\n    </tbody>\r\n</table>','sys_eShowSpInfo','spinfo',0,'[spinfo]碎片变量名,显示条数,标题截取数[/spinfo]',0,0,9),(31,'调用TAGS标签','<table border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" width=\\\"100%\\\" bgcolor=\\\"#dbeaf5\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div align=\\\"center\\\">参数</div>\r\n            </td>\r\n            <td>参数说明</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">分类ID</div>\r\n            </td>\r\n            <td height=\\\"25\\\">\\\'\\\'空为不限制，查看TAGS分类ID点<a onclick=\\\"window.open(\\\'../tags/TagsClass.php?[!--ehash--]\\\');\\\"><strong><u>这里</u></strong></a><br />\r\n            多个可以用,号格开，如\\\'1,2\\\'<br />\r\n            内容页显示当前TAGS可以用\\\'selfinfo\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示数量</div>\r\n            </td>\r\n            <td height=\\\"25\\\">显示前几条记录，0为显示所有（\\\'selfinfo\\\'本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">每行显示数量</div>\r\n            </td>\r\n            <td height=\\\"25\\\">一行显示多少个TAGS，0为不换行</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示排序</div>\r\n            </td>\r\n            <td height=\\\"25\\\">使用默认设置\\\'\\\'空就可以，默认是\\\'tagid desc\\\'（\\\'selfinfo\\\'本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">只显示推荐</div>\r\n            </td>\r\n            <td height=\\\"25\\\">只显示推荐的TAGS，0为不限制，1为限制（\\\'selfinfo\\\'本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">推荐TAGS属性</div>\r\n            </td>\r\n            <td height=\\\"25\\\">如果是推荐的TAGS，内容是否要加粗或加红（\\\'selfinfo\\\'本设置无效）<br />\r\n            设置\\\'s\\\'表示加粗、\\\'r\\\'表示加红、同时加粗加红用\\\'s,r\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">显示间隔符</div>\r\n            </td>\r\n            <td height=\\\"25\\\">TAGS之间显示间隔符，默认是\\\' &amp;nbsp; \\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">是否显示信息数量</div>\r\n            </td>\r\n            <td height=\\\"25\\\">是否在TAGS后显示信息数量，0为不显示，1为显示（\\\'selfinfo\\\'本设置无效）</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">链接附加参数</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定在TAGS链接后面增加参数，比如：\\\'&amp;tempid=模板ID\\\'</td>\r\n        </tr>\r\n        <tr bgcolor=\\\"#ffffff\\\">\r\n            <td height=\\\"25\\\">\r\n            <div align=\\\"center\\\">链接变量名</div>\r\n            </td>\r\n            <td height=\\\"25\\\">可指定在链接使用的变量名(需加引号)：tagname或tagid，默认为tagname，比如：\\\'tagname\\\'</td>\r\n        </tr>\r\n    </tbody>\r\n</table>','sys_eShowTags','showtags',0,'[showtags]分类ID,显示数量,每行显示数量,显示排序,只显示推荐,推荐TAGS属性,显示间隔符,是否显示信息数,链接附加参数,链接变量名[/showtags]',0,0,9);
/*!40000 ALTER TABLE `gc_enewsbq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsbqclass`
--

DROP TABLE IF EXISTS `gc_enewsbqclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsbqclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsbqclass`
--

LOCK TABLES `gc_enewsbqclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsbqclass` DISABLE KEYS */;
INSERT INTO `gc_enewsbqclass` VALUES (1,'信息调用'),(2,'栏目调用'),(3,'非信息调用'),(4,'其它标签');
/*!40000 ALTER TABLE `gc_enewsbqclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsbqtemp`
--

DROP TABLE IF EXISTS `gc_enewsbqtemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsbqtemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `temptext` text NOT NULL,
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `listvar` text NOT NULL,
  `subnews` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rownum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsbqtemp`
--

LOCK TABLES `gc_enewsbqtemp` WRITE;
/*!40000 ALTER TABLE `gc_enewsbqtemp` DISABLE KEYS */;
INSERT INTO `gc_enewsbqtemp` VALUES (1,'子栏目导航标签模板',1,'| [!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]','Y-m-d H:i:s','<a href=\\\"[!--classurl--]\\\">[!--classname--]</a> | ',0,1,0,0),(2,'标题列表模板',1,'[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]','Y-m-d H:i:s','<li><a href=\"[!--titleurl--]\" title=\"[!--oldtitle--]\">[!--title--]</a></li>',0,1,0,0),(3,'标题+简介',1,'[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]','m-d','<li><p><strong><a href=\"[!--titleurl--]\" title=\"[!--oldtitle--]\">[!--title--]</a></strong>[!--smalltext--] </p></li>',60,1,0,0),(4,'头条相关',1,'[!--empirenews.listtemp--]<!--list.var1-->　<!--list.var2-->[!--empirenews.listtemp--]','Y-m-d H:i:s','<a href=\"[!--titleurl--]\" title=\"[!--oldtitle--]\">·[!--title--]</a>',0,2,0,0),(5,'图片+标题+简介',1,'[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]','Y-m-d H:i:s','<table width=\\\"94%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"6\\\" class=\\\"picText\\\">\r\n<tr valign=\\\"top\\\">\r\n<td><a href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\"><img width=\\\"70\\\" height=\\\"78\\\" src=\\\"[!--titlepic--]\\\" alt=\\\"[!--oldtitle--]\\\" /></a></td>\r\n<td><strong><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a></strong>[!--smalltext--]</td>\r\n</tr>\r\n</table>',56,1,0,0),(7,'循环子栏目标签',1,'<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"title\">\r\n<tr>\r\n<td><strong>[!--the.classname--]</strong></td>\r\n<td align=\"right\"><a href=\"[!--the.classurl--]\">更多&gt;&gt;</a></td>\r\n</tr>\r\n</table>\r\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"box\">\r\n<tr>\r\n<td><ul>\r\n       [!--empirenews.listtemp--]\r\n       <!--list.var1-->\r\n       [!--empirenews.listtemp--]\r\n</ul>\r\n</td>\r\n</tr>\r\n</table>','Y-m-d','<li><a href=\"[!--titleurl--]\" title=\"[!--oldtitle--]\">[!--title--]</a> <span>[!--newstime--]</span></li>',0,1,0,0),(8,'头条标题',1,'[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]','Y-m-d H:i:s','<strong><a href=\"[!--titleurl--]\">[!--title--]</a></strong>\r\n<p>　　[!--smalltext--]</p>',150,1,0,0),(9,'标题+软件简介',2,'[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]','Y-m-d H:i:s','<li><p><strong><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a></strong>[!--softsay--]</p></li>',50,1,0,0),(10,'排行列表',1,'[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]','Y-m-d H:i:s','<li class=\"no[!--no.num--]\"><a href=\"[!--titleurl--]\" title=\"[!--oldtitle--]\">[!--title--]</a></li>',0,1,0,0),(11,'图片集分页模板',1,'<script type=\\\"text/javascript\\\">\r\n        var photosr=new Array();\r\n        [!--photor--]\r\n        function GotoPhPage(page){\r\n                page=parseInt(page);\r\n                document.getElementById(\\\"showpagephoto\\\").innerHTML=photosr[page];\r\n                document.ViewPhotoForm.thisphpage.value=page;\r\n                document.ViewPhotoForm.tothephpage.options[page-1].selected=true;\r\n        }\r\n        //上一页\r\n        function PriPhPage(){\r\n                var thispage=parseInt(document.ViewPhotoForm.thisphpage.value);\r\n                var num=photosr.length;\r\n                if(thispage<=1)\r\n                {\r\n                        return false;\r\n                }\r\n                GotoPhPage(thispage-1);\r\n        }\r\n        //下一页\r\n        function NextPhPage(){\r\n                var thispage=parseInt(document.ViewPhotoForm.thisphpage.value);\r\n                var num=photosr.length;\r\n                if(thispage>=num-1)\r\n                {\r\n                        return false;\r\n                }\r\n                GotoPhPage(thispage+1);\r\n        }\r\n        function PhAutoPlay(){\r\n                var sec=parseInt(document.ViewPhotoForm.autoplaysec.value);\r\n                var i;\r\n                var num=photosr.length;\r\n                for(i=1;i<=sec;i++)\r\n                {\r\n                        if(document.ViewPhotoForm.autophstop.value==0)\r\n                        {\r\n                                window.setTimeout(\\\"PhAutoPlayExe(\\\"+i+\\\",\\\"+sec+\\\")\\\",i*1000);\r\n                        }\r\n                        else\r\n                        {\r\n                                break;\r\n                        }\r\n                }\r\n        }\r\n        function PhAutoPlayExe(num,sec){\r\n                var t;\r\n                if(document.ViewPhotoForm.autophstop.value==1)\r\n                {\r\n                        return \\\"\\\";\r\n                }\r\n                if(num==sec) \r\n                {\r\n                        t=NextPhPage();\r\n                        if(t==false)\r\n                        {\r\n                                GotoPhPage(1);\r\n                        }\r\n                        PhAutoPlay();\r\n                } \r\n        }\r\n        </script>\r\n        \r\n<table width=\\\"100%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\">\r\n  <tr> \r\n    <td height=\\\"25\\\" id=\\\"showpagephoto\\\" align=\\\"center\\\"> \r\n      <!--list.var1-->\r\n    </td>\r\n  </tr>\r\n  <form name=\\\"ViewPhotoForm\\\" id=\\\"ViewPhotoForm\\\" method=\\\"POST\\\" action=\\\"\\\">\r\n    <tr> \r\n      <td height=\\\"25\\\"> <div align=\\\"center\\\"> \r\n          <input type=\\\"button\\\" name=\\\"Submit\\\" value=\\\"上一页\\\" onclick=\\\"PriPhPage();\\\">\r\n          &nbsp;&nbsp; \r\n          <select name=\\\"tothephpage\\\" onchange=\\\"GotoPhPage(this.options[this.selectedIndex].value)\\\">\r\n            [!--select--]\r\n          </select>\r\n          &nbsp;&nbsp; \r\n          <input type=\\\"button\\\" name=\\\"Submit2\\\" value=\\\"下一页\\\" onclick=\\\"NextPhPage();\\\">\r\n          <input name=\\\"thisphpage\\\" type=\\\"hidden\\\" value=\\\"1\\\">\r\n        </div></td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\\\"25\\\"><div align=\\\"center\\\">\r\n          <select name=\\\"autoplaysec\\\">\r\n            <option value=\\\"1\\\">1秒</option>\r\n            <option value=\\\"2\\\">2秒</option>\r\n            <option value=\\\"3\\\" selected>3秒</option>\r\n            <option value=\\\"4\\\">4秒</option>\r\n            <option value=\\\"5\\\">5秒</option>\r\n            <option value=\\\"6\\\">6秒</option>\r\n            <option value=\\\"7\\\">7秒</option>\r\n            <option value=\\\"8\\\">8秒</option>\r\n            <option value=\\\"9\\\">9秒</option>\r\n            <option value=\\\"10\\\">10秒</option>\r\n          </select>\r\n                  <input name=\\\"autophstop\\\" type=\\\"hidden\\\" value=\\\"0\\\">\r\n          <input type=\\\"button\\\" name=\\\"Submit3\\\" value=\\\"自动播放\\\" onclick=\\\"document.ViewPhotoForm.autophstop.value=0;PhAutoPlay();\\\">\r\n          &nbsp;<input type=\\\"button\\\" name=\\\"Submit32\\\" value=\\\"停止播放\\\" onclick=\\\"document.ViewPhotoForm.autophstop.value=1;\\\">\r\n        </div></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n<table width=\\\"500\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\">\r\n<tr><td>\r\n<marquee  behavior=alternate ONMOUSEOUT=\\\"this.scrollDelay=1\\\" ONMOUSEOVER=\\\"this.scrollDelay=600\\\"  scrollamount=1  SCROLLDELAY=1  border=0  scrolldelay=70  width=\\\"100%\\\"  align=middle>\r\n        [!--smalldh--]\r\n</marquee>\r\n</td></tr></table>','Y-m-d H:i:s','<a href=\\\'#ecms\\\' onclick=\\\'NextPhPage();\\\' title=\\\'点击进入下一张图片\\\'><img src=\\\'[!--picurl--]\\\' alt=\\\'[!--picname--]\\\' border=1 class=\\\'photoresize\\\'></a><br><span style=\\\'line-height=18pt\\\'>[!--picname--]</span>',0,1,0,0),(12,'栏目tabs导航',1,'[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]','Y-m-d H:i:s','<li><a href=\\\"[!--classurl--]\\\">[!--classname--]</a></li>',0,1,0,0);
/*!40000 ALTER TABLE `gc_enewsbqtemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsbqtempclass`
--

DROP TABLE IF EXISTS `gc_enewsbqtempclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsbqtempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsbqtempclass`
--

LOCK TABLES `gc_enewsbqtempclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsbqtempclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsbqtempclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsbuybak`
--

DROP TABLE IF EXISTS `gc_enewsbuybak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsbuybak` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `card_no` char(120) NOT NULL DEFAULT '',
  `buytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cardfen` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userdate` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsbuybak`
--

LOCK TABLES `gc_enewsbuybak` WRITE;
/*!40000 ALTER TABLE `gc_enewsbuybak` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsbuybak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsbuygroup`
--

DROP TABLE IF EXISTS `gc_enewsbuygroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsbuygroup` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) NOT NULL DEFAULT '',
  `gmoney` int(10) unsigned NOT NULL DEFAULT '0',
  `gfen` int(10) unsigned NOT NULL DEFAULT '0',
  `gdate` int(10) unsigned NOT NULL DEFAULT '0',
  `ggroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gzgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `buygroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gsay` text NOT NULL,
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsbuygroup`
--

LOCK TABLES `gc_enewsbuygroup` WRITE;
/*!40000 ALTER TABLE `gc_enewsbuygroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsbuygroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewscard`
--

DROP TABLE IF EXISTS `gc_enewscard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewscard` (
  `cardid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_no` char(30) NOT NULL DEFAULT '',
  `password` char(20) NOT NULL DEFAULT '',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `cardfen` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `cardtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `carddate` int(10) unsigned NOT NULL DEFAULT '0',
  `cdgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cdzgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewscard`
--

LOCK TABLES `gc_enewscard` WRITE;
/*!40000 ALTER TABLE `gc_enewscard` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewscard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsclass`
--

DROP TABLE IF EXISTS `gc_enewsclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bclassid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classname` varchar(50) NOT NULL DEFAULT '',
  `sonclass` text NOT NULL,
  `is_zt` tinyint(1) NOT NULL DEFAULT '0',
  `lencord` smallint(6) NOT NULL DEFAULT '0',
  `link_num` tinyint(4) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `listtempid` smallint(6) NOT NULL DEFAULT '0',
  `featherclass` text NOT NULL,
  `islast` tinyint(1) NOT NULL DEFAULT '0',
  `classpath` text NOT NULL,
  `classtype` varchar(10) NOT NULL DEFAULT '',
  `newspath` varchar(20) NOT NULL DEFAULT '',
  `filename` tinyint(1) NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `openpl` tinyint(1) NOT NULL DEFAULT '0',
  `openadd` tinyint(1) NOT NULL DEFAULT '0',
  `newline` int(11) NOT NULL DEFAULT '0',
  `hotline` int(11) NOT NULL DEFAULT '0',
  `goodline` int(11) NOT NULL DEFAULT '0',
  `classurl` varchar(200) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `filename_qz` varchar(20) NOT NULL DEFAULT '',
  `hotplline` tinyint(4) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `firstline` tinyint(4) NOT NULL DEFAULT '0',
  `bname` varchar(50) NOT NULL DEFAULT '',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `searchtempid` smallint(6) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `checkpl` tinyint(1) NOT NULL DEFAULT '0',
  `down_num` tinyint(4) NOT NULL DEFAULT '0',
  `online_num` tinyint(4) NOT NULL DEFAULT '0',
  `listorder` varchar(50) NOT NULL DEFAULT '',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `classimg` varchar(255) NOT NULL DEFAULT '',
  `jstempid` smallint(6) NOT NULL DEFAULT '0',
  `addinfofen` int(11) NOT NULL DEFAULT '0',
  `listdt` tinyint(1) NOT NULL DEFAULT '0',
  `showclass` tinyint(1) NOT NULL DEFAULT '0',
  `showdt` tinyint(1) NOT NULL DEFAULT '0',
  `checkqadd` tinyint(1) NOT NULL DEFAULT '0',
  `qaddlist` tinyint(1) NOT NULL DEFAULT '0',
  `qaddgroupid` text NOT NULL,
  `qaddshowkey` tinyint(1) NOT NULL DEFAULT '0',
  `adminqinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doctime` smallint(6) NOT NULL DEFAULT '0',
  `classpagekey` varchar(255) NOT NULL DEFAULT '',
  `dtlisttempid` smallint(6) NOT NULL DEFAULT '0',
  `classtempid` smallint(6) NOT NULL DEFAULT '0',
  `nreclass` tinyint(1) NOT NULL DEFAULT '0',
  `nreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `nrejs` tinyint(1) NOT NULL DEFAULT '0',
  `nottobq` tinyint(1) NOT NULL DEFAULT '0',
  `ipath` varchar(255) NOT NULL DEFAULT '',
  `addreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `haddlist` tinyint(4) NOT NULL DEFAULT '0',
  `sametitle` tinyint(1) NOT NULL DEFAULT '0',
  `definfovoteid` smallint(6) NOT NULL DEFAULT '0',
  `wburl` varchar(255) NOT NULL DEFAULT '',
  `qeditchecked` tinyint(1) NOT NULL DEFAULT '0',
  `wapstyleid` smallint(6) NOT NULL DEFAULT '0',
  `repreinfo` tinyint(1) NOT NULL DEFAULT '0',
  `pltempid` smallint(6) NOT NULL DEFAULT '0',
  `cgroupid` text NOT NULL,
  `yhid` smallint(6) NOT NULL DEFAULT '0',
  `wfid` smallint(6) NOT NULL DEFAULT '0',
  `cgtoinfo` tinyint(1) NOT NULL DEFAULT '0',
  `bdinfoid` varchar(25) NOT NULL DEFAULT '',
  `repagenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keycid` smallint(6) NOT NULL DEFAULT '0',
  `allinfos` int(10) unsigned NOT NULL DEFAULT '0',
  `infos` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `oneinfo` tinyint(1) NOT NULL DEFAULT '0',
  `addsql` varchar(255) NOT NULL DEFAULT '',
  `wapislist` tinyint(1) NOT NULL DEFAULT '0',
  `fclast` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`),
  KEY `bclassid` (`bclassid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsclass`
--

LOCK TABLES `gc_enewsclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsclass` DISABLE KEYS */;
INSERT INTO `gc_enewsclass` VALUES (1,0,'财经','',0,1,10,1,0,1,'',1,'caijing','.html','',0,'.html',0,1,10,10,10,'',0,0,'',10,1,1,10,'财经',0,0,1,'news',0,0,2,2,'id DESC','newstime DESC','','',1,0,0,0,0,0,0,'',0,0,0,'',1,1,0,0,0,0,'',1,0,0,0,'',0,0,0,0,'',0,0,0,'',0,0,32,32,1558081248,0,'',0,1558399481),(2,0,'美股','',0,25,10,1,0,1,'',1,'meigu','.html','',0,'.html',0,1,10,10,10,'',0,0,'',10,1,1,10,'美股',0,0,1,'news',0,0,2,2,'id DESC','newstime DESC','','',1,0,0,0,0,0,0,'',0,0,0,'',1,1,0,0,0,0,'',1,0,0,0,'',0,3,0,0,'',0,0,0,'',0,0,62,62,1558358720,0,'',0,1558444676);
/*!40000 ALTER TABLE `gc_enewsclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsclass_stats`
--

DROP TABLE IF EXISTS `gc_enewsclass_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsclass_stats` (
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `pvall` int(10) unsigned NOT NULL DEFAULT '0',
  `pvyear` int(10) unsigned NOT NULL DEFAULT '0',
  `pvhalfyear` int(10) unsigned NOT NULL DEFAULT '0',
  `pvquarter` int(10) unsigned NOT NULL DEFAULT '0',
  `pvmonth` int(10) unsigned NOT NULL DEFAULT '0',
  `pvweek` int(10) unsigned NOT NULL DEFAULT '0',
  `pvday` int(10) unsigned NOT NULL DEFAULT '0',
  `pvyesterday` int(10) unsigned NOT NULL DEFAULT '0',
  `ipall` int(10) unsigned NOT NULL DEFAULT '0',
  `ipyear` int(10) unsigned NOT NULL DEFAULT '0',
  `iphalfyear` int(10) unsigned NOT NULL DEFAULT '0',
  `ipquarter` int(10) unsigned NOT NULL DEFAULT '0',
  `ipmonth` int(10) unsigned NOT NULL DEFAULT '0',
  `ipweek` int(10) unsigned NOT NULL DEFAULT '0',
  `ipday` int(10) unsigned NOT NULL DEFAULT '0',
  `ipyesterday` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsclass_stats`
--

LOCK TABLES `gc_enewsclass_stats` WRITE;
/*!40000 ALTER TABLE `gc_enewsclass_stats` DISABLE KEYS */;
INSERT INTO `gc_enewsclass_stats` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `gc_enewsclass_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsclass_stats_ip`
--

DROP TABLE IF EXISTS `gc_enewsclass_stats_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsclass_stats_ip` (
  `ip` char(21) NOT NULL DEFAULT '',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsclass_stats_ip`
--

LOCK TABLES `gc_enewsclass_stats_ip` WRITE;
/*!40000 ALTER TABLE `gc_enewsclass_stats_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsclass_stats_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsclass_stats_set`
--

DROP TABLE IF EXISTS `gc_enewsclass_stats_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsclass_stats_set` (
  `openstats` tinyint(1) NOT NULL DEFAULT '0',
  `pvtime` int(10) unsigned NOT NULL DEFAULT '0',
  `statsdate` int(10) unsigned NOT NULL DEFAULT '0',
  `changedate` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsclass_stats_set`
--

LOCK TABLES `gc_enewsclass_stats_set` WRITE;
/*!40000 ALTER TABLE `gc_enewsclass_stats_set` DISABLE KEYS */;
INSERT INTO `gc_enewsclass_stats_set` VALUES (0,3600,0,20170227);
/*!40000 ALTER TABLE `gc_enewsclass_stats_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsclassadd`
--

DROP TABLE IF EXISTS `gc_enewsclassadd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsclassadd` (
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  `ttids` text NOT NULL,
  `eclasspagetext` mediumtext NOT NULL,
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsclassadd`
--

LOCK TABLES `gc_enewsclassadd` WRITE;
/*!40000 ALTER TABLE `gc_enewsclassadd` DISABLE KEYS */;
INSERT INTO `gc_enewsclassadd` VALUES (1,'','',''),(2,'','','');
/*!40000 ALTER TABLE `gc_enewsclassadd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsclassf`
--

DROP TABLE IF EXISTS `gc_enewsclassf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsclassf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsclassf`
--

LOCK TABLES `gc_enewsclassf` WRITE;
/*!40000 ALTER TABLE `gc_enewsclassf` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsclassf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsclassnavcache`
--

DROP TABLE IF EXISTS `gc_enewsclassnavcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsclassnavcache` (
  `navtype` char(16) NOT NULL DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  KEY `navtype` (`navtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsclassnavcache`
--

LOCK TABLES `gc_enewsclassnavcache` WRITE;
/*!40000 ALTER TABLE `gc_enewsclassnavcache` DISABLE KEYS */;
INSERT INTO `gc_enewsclassnavcache` VALUES ('jsclass',0,0),('listenews',0,0),('listclass',0,0),('modclass',0,1);
/*!40000 ALTER TABLE `gc_enewsclassnavcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsclasstemp`
--

DROP TABLE IF EXISTS `gc_enewsclasstemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsclasstemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsclasstemp`
--

LOCK TABLES `gc_enewsclasstemp` WRITE;
/*!40000 ALTER TABLE `gc_enewsclasstemp` DISABLE KEYS */;
INSERT INTO `gc_enewsclasstemp` VALUES (1,'通用一级栏目模板','<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"channle\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"news_list\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n[listsonclass]\\\'selfinfo\\\',5,38,0,0,7,0,0[/listsonclass]</td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\\'selfinfo\\\',10,44,0,0,2,0[/ecmsinfo] \r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ol class=\\\"rank\\\">\r\n[ecmsinfo]\\\'selfinfo\\\',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>',0),(2,'分类信息一级栏目模板','<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"channle\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"news_list\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n[listsonclass]\\\'selfinfo\\\',5,38,0,0,7,0,0[/listsonclass]</td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>分类信息搜索</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><form action=\\\"[!--news.url--]e/search/index.php\\\" method=\\\"post\\\" name=\\\"searchform\\\" id=\\\"searchform\\\">\r\n<table width=\\\"98%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"6\\\">\r\n<input type=\\\"hidden\\\" name=\\\"tbname\\\" value=\\\"info\\\">\r\n<input type=\\\"hidden\\\" name=\\\"tempid\\\" value=\\\"1\\\">\r\n<tr>\r\n<td><input name=\\\"keyboard\\\" type=\\\"text\\\" class=\\\"inputText\\\" id=\\\"keyboard\\\" size=\\\"18\\\" />\r\n<select name=\\\"show\\\">\r\n<option value=\\\"title,smalltext,myarea\\\" selected=\\\"selected\\\">不限</option>\r\n<option value=\\\"title\\\">信息标题</option>\r\n<option value=\\\"smalltext\\\">信息内容</option>\r\n<option value=\\\"myarea\\\">所在地</option>\r\n</select></td>\r\n</tr>\r\n<tr>\r\n<td><select name=\\\"classid\\\">\r\n<option value=\\\'9\\\'>所有分类</option>\r\n<option value=\\\'10\\\'>|-房屋信息</option>\r\n<option value=\\\'11\\\' >&nbsp;&nbsp;|-房屋求租</option>\r\n<option value=\\\'12\\\' >&nbsp;&nbsp;|-房屋出租</option>\r\n<option value=\\\'13\\\' >&nbsp;&nbsp;|-房屋求购</option>\r\n<option value=\\\'14\\\' >&nbsp;&nbsp;|-房屋出售</option>\r\n<option value=\\\'15\\\' >&nbsp;&nbsp;|-办公用房</option>\r\n<option value=\\\'16\\\' >&nbsp;&nbsp;|-旺铺门面</option>\r\n<option value=\\\'17\\\'>|-跳蚤市场</option>\r\n<option value=\\\'18\\\' >&nbsp;&nbsp;|-电脑配件</option>\r\n<option value=\\\'19\\\' >&nbsp;&nbsp;|-电器数码</option>\r\n<option value=\\\'20\\\' >&nbsp;&nbsp;|-通讯产品</option>\r\n<option value=\\\'21\\\' >&nbsp;&nbsp;|-居家用品</option>\r\n<option value=\\\'22\\\'>|-同城生活</option>\r\n<option value=\\\'23\\\' >&nbsp;&nbsp;|-本地新闻</option>\r\n<option value=\\\'24\\\' >&nbsp;&nbsp;|-购物打折</option>\r\n<option value=\\\'25\\\' >&nbsp;&nbsp;|-旅游活动</option>\r\n<option value=\\\'26\\\' >&nbsp;&nbsp;|-便民告示</option>\r\n<option value=\\\'27\\\'>|-求职招聘</option>\r\n<option value=\\\'28\\\' >&nbsp;&nbsp;|-工程技术</option>\r\n<option value=\\\'29\\\' >&nbsp;&nbsp;|-财务会计</option>\r\n<option value=\\\'30\\\' >&nbsp;&nbsp;|-餐饮行业</option>\r\n<option value=\\\'31\\\' >&nbsp;&nbsp;|-经营管理</option>\r\n</select>\r\n<input name=\\\"Submit2\\\" type=\\\"image\\\" value=\\\"搜索\\\" src=\\\"[!--news.url--]skin/default/images/search.gif\\\" />　\r\n[<a href=\\\"[!--news.url--]e/DoInfo/ChangeClass.php?mid=8\\\" target=\\\"_blank\\\">发布信息</a>]</td>\r\n</tr>\r\n</table>\r\n</form></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>地区导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[!--temp.infoarea--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>分类导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[!--temp.infoclassnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ol class=\\\"rank\\\">\r\n[ecmsinfo]\\\'selfinfo\\\',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>',0);
/*!40000 ALTER TABLE `gc_enewsclasstemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsclasstempclass`
--

DROP TABLE IF EXISTS `gc_enewsclasstempclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsclasstempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsclasstempclass`
--

LOCK TABLES `gc_enewsclasstempclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsclasstempclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsclasstempclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsdiggips`
--

DROP TABLE IF EXISTS `gc_enewsdiggips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsdiggips` (
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `ips` mediumtext NOT NULL,
  KEY `classid` (`classid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsdiggips`
--

LOCK TABLES `gc_enewsdiggips` WRITE;
/*!40000 ALTER TABLE `gc_enewsdiggips` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsdiggips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsdo`
--

DROP TABLE IF EXISTS `gc_enewsdo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsdo` (
  `doid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `doname` varchar(60) NOT NULL DEFAULT '',
  `dotime` smallint(6) NOT NULL DEFAULT '0',
  `isopen` tinyint(1) NOT NULL DEFAULT '0',
  `doing` tinyint(4) NOT NULL DEFAULT '0',
  `classid` text NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`doid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsdo`
--

LOCK TABLES `gc_enewsdo` WRITE;
/*!40000 ALTER TABLE `gc_enewsdo` DISABLE KEYS */;
INSERT INTO `gc_enewsdo` VALUES (1,'自动刷新首页',12,0,0,',',1273215883);
/*!40000 ALTER TABLE `gc_enewsdo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsdolog`
--

DROP TABLE IF EXISTS `gc_enewsdolog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsdolog` (
  `logid` bigint(20) NOT NULL AUTO_INCREMENT,
  `logip` varchar(20) NOT NULL DEFAULT '',
  `logtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL DEFAULT '',
  `enews` varchar(30) NOT NULL DEFAULT '',
  `doing` varchar(255) NOT NULL DEFAULT '',
  `pubid` bigint(16) unsigned NOT NULL DEFAULT '0',
  `ipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`logid`),
  KEY `pubid` (`pubid`)
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsdolog`
--

LOCK TABLES `gc_enewsdolog` WRITE;
/*!40000 ALTER TABLE `gc_enewsdolog` DISABLE KEYS */;
INSERT INTO `gc_enewsdolog` VALUES (1,'127.0.0.1','2019-05-17 12:12:14','admin','login','---',0,'54945'),(2,'127.0.0.1','2019-05-17 13:46:11','admin','AddMenuClass','classid=1<br>classname=手动管理',0,'62346'),(3,'127.0.0.1','2019-05-17 13:46:37','admin','AddMenu','classid=1<br>menuid=1&amp;menuname=手动管理分类',0,'62378'),(4,'127.0.0.1','2019-05-17 13:46:54','admin','AddMenu','classid=1<br>menuid=2&amp;menuname=管理',0,'62402'),(5,'127.0.0.1','2019-05-17 16:20:51','admin','AddClass','classid=1<br>classname=财经',0,'63800'),(6,'127.0.0.1','2019-05-17 22:04:13','admin','login','---',0,'57174'),(7,'127.0.0.1','2019-05-17 22:13:03','admin','SetEnews','---',0,'57742'),(8,'127.0.0.1','2019-05-17 22:16:27','admin','AddNews','classid=1<br>id=1<br>title=4月银行间货币成交86.3万亿元 同比增长49%',1000010000000001,'57742'),(9,'127.0.0.1','2019-05-17 22:16:41','admin','ReIndex','---',0,'57742'),(10,'127.0.0.1','2019-05-17 22:16:45','admin','ReListHtml_all','---',0,'57742'),(11,'127.0.0.1','2019-05-17 22:17:45','admin','ChangeEnewsData','---',0,'60524'),(12,'127.0.0.1','2019-05-17 22:17:48','admin','ReListHtml_all','---',0,'60524'),(13,'127.0.0.1','2019-05-17 22:18:36','admin','ChangeEnewsData','---',0,'60524'),(14,'127.0.0.1','2019-05-17 22:18:40','admin','ReClassPath','---',0,'60524'),(15,'127.0.0.1','2019-05-17 22:18:43','admin','DelFcListClass','---',0,'60524'),(16,'127.0.0.1','2019-05-17 22:18:52','admin','UpdateClassInfosAll','---',0,'60524'),(17,'127.0.0.1','2019-05-17 22:19:52','admin','EditClass','classid=1<br>classname=财经',0,'60524'),(18,'127.0.0.1','2019-05-17 22:20:09','admin','ReListHtml_all','---',0,'60524'),(19,'127.0.0.1','2019-05-17 22:32:20','admin','SetEnews','---',0,'4330'),(20,'127.0.0.1','2019-05-17 22:38:57','admin','EditBqtemp','tempid=12<br>tempname=栏目tabs导航&amp;gid=1',0,'5342'),(21,'127.0.0.1','2019-05-17 23:24:45','admin','SetEnews','---',0,'30506'),(22,'127.0.0.1','2019-05-17 23:25:30','admin','AddAd','adid=1<br>title=导航下面广告',0,'30506'),(23,'127.0.0.1','2019-05-17 23:28:14','admin','EditAd','adid=1<br>title=导航下面广告',0,'30506'),(24,'127.0.0.1','2019-05-17 23:28:26','admin','ReAdJs_all','---',0,'30506'),(25,'127.0.0.1','2019-05-17 23:31:29','admin','EditAd','adid=1<br>title=导航下面广告',0,'33708'),(26,'127.0.0.1','2019-05-18 08:47:25','admin','login','---',0,'3784'),(27,'127.0.0.1','2019-05-18 09:00:55','admin','','focusclassid=1<br>classname=快讯',0,'4068'),(28,'127.0.0.1','2019-05-18 09:01:32','admin','','fid=1<br>title=如何选股票',0,'4068'),(29,'127.0.0.1','2019-05-18 09:02:04','admin','','fid=2<br>title=油价最新政策',0,'4068'),(30,'127.0.0.1','2019-05-18 09:16:36','admin','','focusclassid=2<br>classname=搜索标题',0,'5594'),(31,'127.0.0.1','2019-05-18 09:17:02','admin','DelClass','deleteclassid=2',0,'5594'),(32,'127.0.0.1','2019-05-18 09:18:23','admin','AddPubVar','varid=1<br>var=search_title',0,'6326'),(33,'127.0.0.1','2019-05-18 09:20:24','admin','','focusclassid=3<br>classname=侧边栏图片',0,'7586'),(34,'127.0.0.1','2019-05-18 09:26:45','admin','','fid=3<br>title=图片1',0,'10608'),(35,'127.0.0.1','2019-05-18 09:26:45','admin','','fid=4<br>title=图片1',0,'11064'),(36,'127.0.0.1','2019-05-18 09:26:58','admin','DelFocus','deletefid=3<br>title=图片1',0,'11064'),(37,'127.0.0.1','2019-05-18 09:27:49','admin','DelClass','deleteclassid=3',0,'11064'),(38,'127.0.0.1','2019-05-18 09:28:30','admin','AddAd','adid=2<br>title=侧边栏广告',0,'11064'),(39,'127.0.0.1','2019-05-18 09:34:49','admin','AddPubVar','varid=2<br>var=law_email',0,'14550'),(40,'127.0.0.1','2019-05-18 09:47:39','admin','AddLink','lid=1<br>lname=东方财富',0,'18842'),(41,'127.0.0.1','2019-05-18 09:55:39','admin','AddTempvar','varid=8<br>var=menu&amp;gid=1',0,'18886'),(42,'127.0.0.1','2019-05-18 10:00:31','admin','AddTempvar','varid=9<br>var=sidebar&amp;gid=1',0,'18942'),(43,'127.0.0.1','2019-05-18 10:02:50','admin','EditPublicTemp','gid=1',0,'18962'),(44,'127.0.0.1','2019-05-18 10:03:05','admin','ReAdJs_all','---',0,'18962'),(45,'127.0.0.1','2019-05-18 10:21:47','admin','ReIndex','---',0,'21852'),(46,'127.0.0.1','2019-05-18 10:24:50','admin','EditPublicTemp','gid=1',0,'22902'),(47,'127.0.0.1','2019-05-18 10:24:53','admin','ReIndex','---',0,'22902'),(48,'127.0.0.1','2019-05-18 10:26:06','admin','EditPublicTemp','gid=1',0,'23980'),(49,'127.0.0.1','2019-05-18 10:26:18','admin','ReIndex','---',0,'23980'),(50,'127.0.0.1','2019-05-18 10:26:54','admin','EditPubVar','varid=1<br>var=search_title',0,'24294'),(51,'127.0.0.1','2019-05-18 10:27:03','admin','EditPubVar','varid=2<br>var=law_email',0,'24294'),(52,'127.0.0.1','2019-05-18 10:27:07','admin','ReIndex','---',0,'24294'),(53,'127.0.0.1','2019-05-18 10:27:13','admin','ChangeEnewsData','---',0,'24294'),(54,'127.0.0.1','2019-05-18 10:27:19','admin','ReIndex','---',0,'24294'),(55,'127.0.0.1','2019-05-18 10:29:50','admin','EditPublicTemp','gid=1',0,'25302'),(56,'127.0.0.1','2019-05-18 10:30:16','admin','ReAdJs_all','---',0,'25302'),(57,'127.0.0.1','2019-05-18 10:38:18','admin','EditTempvar','varid=9<br>var=sidebar&amp;gid=1',0,'30048'),(58,'127.0.0.1','2019-05-18 10:39:47','admin','EditAd','adid=2<br>title=侧边栏广告',0,'30048'),(59,'127.0.0.1','2019-05-18 10:39:51','admin','ReAdJs_all','---',0,'30048'),(60,'127.0.0.1','2019-05-18 10:39:53','admin','ReIndex','---',0,'30048'),(61,'127.0.0.1','2019-05-18 11:13:11','admin','TopNews_all','classid=1<br>classname=财经<br>id=1',1000010000000001,'46822'),(62,'127.0.0.1','2019-05-18 21:01:33','admin','login','---',0,'49526'),(63,'127.0.0.1','2019-05-18 21:03:13','admin','AddF','fid=107<br>f=titelpic_alt',0,'49522'),(64,'127.0.0.1','2019-05-18 21:10:03','admin','EditM','mid=1<br>m=新闻系统模型',0,'53580'),(65,'127.0.0.1','2019-05-18 21:13:25','admin','EditM','mid=1<br>m=新闻系统模型',0,'55652'),(66,'127.0.0.1','2019-05-18 21:14:17','admin','EditF','fid=107<br>f=titlepic_alt',0,'55652'),(67,'127.0.0.1','2019-05-18 21:14:54','admin','EditNews','classid=1<br>id=1<br>title=4月银行间货币成交86.3万亿元 同比增长49%',1000010000000001,'55652'),(68,'127.0.0.1','2019-05-18 21:17:55','admin','EditPublicTemp','gid=1',0,'57790'),(69,'127.0.0.1','2019-05-18 21:19:52','admin','EditPublicTemp','gid=1',0,'58778'),(70,'127.0.0.1','2019-05-18 21:21:11','admin','EditTempvar','varid=9<br>var=sidebar&amp;gid=1',0,'58778'),(71,'127.0.0.1','2019-05-18 21:22:09','admin','ReIndex','---',0,'59878'),(72,'127.0.0.1','2019-05-18 21:28:27','admin','EditTempvar','varid=9<br>var=sidebar&amp;gid=1',0,'62788'),(73,'127.0.0.1','2019-05-18 21:28:30','admin','ReIndex','---',0,'62788'),(74,'127.0.0.1','2019-05-18 21:29:23','admin','EditTempvar','varid=9<br>var=sidebar&amp;gid=1',0,'62788'),(75,'127.0.0.1','2019-05-18 21:29:25','admin','ReIndex','---',0,'62788'),(76,'127.0.0.1','2019-05-18 21:30:12','admin','EditPublicTemp','gid=1',0,'62788'),(77,'127.0.0.1','2019-05-18 21:32:50','admin','EditPublicTemp','gid=1',0,'62788'),(78,'127.0.0.1','2019-05-18 22:10:52','admin','EditTempvar','varid=9<br>var=sidebar&amp;gid=1',0,'20200'),(79,'127.0.0.1','2019-05-18 22:11:15','admin','ReIndex','---',0,'20200'),(80,'127.0.0.1','2019-05-18 22:15:29','admin','EditPublicTemp','gid=1',0,'22220'),(81,'127.0.0.1','2019-05-18 22:20:02','admin','EditPublicTemp','gid=1',0,'25234'),(82,'127.0.0.1','2019-05-18 22:20:11','admin','ReIndex','---',0,'25234'),(83,'127.0.0.1','2019-05-18 22:28:40','admin','EditTempvar','varid=9<br>var=sidebar&amp;gid=1',0,'29228'),(84,'127.0.0.1','2019-05-18 22:28:45','admin','ReIndex','---',0,'29228'),(85,'127.0.0.1','2019-05-19 07:43:28','admin','login','---',0,'43590'),(86,'127.0.0.1','2019-05-19 07:44:37','admin','EditClass','classid=1<br>classname=财经',0,'43622'),(87,'127.0.0.1','2019-05-19 07:48:28','admin','AddNews','classid=1<br>id=2<br>title=瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1000010000000002,'44158'),(88,'127.0.0.1','2019-05-19 07:49:04','admin','SetEnews','---',0,'44158'),(89,'127.0.0.1','2019-05-19 07:50:22','admin','EditM','mid=1<br>m=新闻系统模型',0,'44158'),(90,'127.0.0.1','2019-05-19 07:51:18','admin','EditNews','classid=1<br>id=2<br>title=瑞幸咖啡持续补贴3到5年 瑞幸咖啡在美上市',1000010000000002,'45928'),(91,'127.0.0.1','2019-05-19 07:54:27','admin','EditClass','classid=1<br>classname=财经',0,'45928'),(92,'127.0.0.1','2019-05-19 07:56:45','admin','EditClass','classid=1<br>classname=财经',0,'45928'),(93,'127.0.0.1','2019-05-19 08:07:11','admin','EditClass','classid=1<br>classname=财经',0,'54024'),(94,'127.0.0.1','2019-05-20 08:37:19','admin','login','---',0,'21990'),(95,'127.0.0.1','2019-05-20 08:38:50','admin','EditPublicTemp','gid=1',0,'22684'),(96,'127.0.0.1','2019-05-20 08:44:21','admin','EditPublicTemp','gid=1',0,'24970'),(97,'127.0.0.1','2019-05-20 08:44:58','admin','EditPublicTemp','gid=1',0,'24970'),(98,'127.0.0.1','2019-05-20 08:46:44','admin','EditPublicTemp','gid=1',0,'26500'),(99,'127.0.0.1','2019-05-20 09:12:10','admin','EditPublicTemp','gid=1',0,'38604'),(100,'127.0.0.1','2019-05-20 09:12:32','admin','EditPublicTemp','gid=1',0,'38604'),(101,'127.0.0.1','2019-05-20 09:13:14','admin','EditPublicTemp','gid=1',0,'38604'),(102,'127.0.0.1','2019-05-20 09:18:28','admin','CopyNews_all','classid=1<br>classname=财经<br>to_classid=1',0,'41520'),(103,'127.0.0.1','2019-05-20 09:18:40','admin','CopyNews_all','classid=1<br>classname=财经<br>to_classid=1',0,'41520'),(104,'127.0.0.1','2019-05-20 09:18:51','admin','CopyNews_all','classid=1<br>classname=财经<br>to_classid=1',0,'41520'),(105,'127.0.0.1','2019-05-20 09:19:06','admin','CopyNews_all','classid=1<br>classname=财经<br>to_classid=1',0,'41520'),(106,'127.0.0.1','2019-05-20 09:24:04','admin','EditTempvar','varid=9<br>var=sidebar&amp;gid=1',0,'44512'),(107,'127.0.0.1','2019-05-20 09:24:51','admin','EditTempvar','varid=9<br>var=sidebar&amp;gid=1',0,'44512'),(108,'127.0.0.1','2019-05-20 09:25:59','admin','ChangeEnewsData','---',0,'45232'),(109,'127.0.0.1','2019-05-20 09:29:26','admin','EditTempvar','varid=9<br>var=sidebar&amp;gid=1',0,'47194'),(110,'127.0.0.1','2019-05-20 09:29:33','admin','DelFcListClass','---',0,'47194'),(111,'127.0.0.1','2019-05-20 09:29:46','admin','ReDtPage','---',0,'47194'),(112,'127.0.0.1','2019-05-20 09:30:19','admin','ReIndex','---',0,'47194'),(113,'127.0.0.1','2019-05-20 09:36:31','admin','EditNews','classid=1<br>id=13<br>title=4月银行间货币成交86.3万亿元 同比增长49%',1000010000000013,'50566'),(114,'127.0.0.1','2019-05-20 09:36:52','admin','EditNews','classid=1<br>id=31<br>title=4月银行间货币成交86.3万亿元 同比增长49%',1000010000000031,'50566'),(115,'127.0.0.1','2019-05-20 09:47:25','admin','AddUser','userid=2<br>username=yaoweibo',0,'55072'),(116,'127.0.0.1','2019-05-20 09:51:51','admin','EditTempvar','varid=9<br>var=sidebar&amp;gid=1',0,'55510'),(117,'127.0.0.1','2019-05-20 11:04:25','admin','SetEnews','---',0,'56164'),(118,'127.0.0.1','2019-05-20 11:04:55','admin','EditTempvar','varid=9<br>var=sidebar&amp;gid=1',0,'56164'),(119,'127.0.0.1','2019-05-20 11:07:28','admin','SetEnews','---',0,'56164'),(120,'127.0.0.1','2019-05-20 11:09:21','admin','EditTempvar','varid=9<br>var=sidebar&amp;gid=1',0,'56414'),(121,'127.0.0.1','2019-05-20 11:09:32','admin','ReIndex','---',0,'56164'),(122,'127.0.0.1','2019-05-20 11:09:48','admin','ReDtPage','---',0,'56164'),(123,'127.0.0.1','2019-05-20 11:10:11','admin','ChangeAllModForm','ChangeClass=',0,'56464'),(124,'127.0.0.1','2019-05-20 11:11:41','admin','SetEnews','---',0,'56414'),(125,'127.0.0.1','2019-05-20 11:42:21','admin','EditPublicTemp','gid=1',0,'1914'),(126,'127.0.0.1','2019-05-20 11:43:29','admin','EditPublicTemp','gid=1',0,'2060'),(127,'127.0.0.1','2019-05-20 11:48:17','admin','EditPublicTemp','gid=1',0,'4896'),(128,'127.0.0.1','2019-05-20 11:49:16','admin','EditPublicTemp','gid=1',0,'5100'),(129,'127.0.0.1','2019-05-20 11:51:33','admin','EditPublicTemp','gid=1',0,'6368'),(130,'127.0.0.1','2019-05-20 11:56:04','admin','EditPublicTemp','gid=1',0,'8448'),(131,'127.0.0.1','2019-05-20 12:01:59','admin','EditPublicTemp','gid=1',0,'11408'),(132,'127.0.0.1','2019-05-20 12:03:03','admin','EditPublicTemp','gid=1',0,'11408'),(133,'127.0.0.1','2019-05-20 13:50:15','admin','EditGoodType','ttype=0<br>tid=10<br>tname=推荐阅读',0,'58694'),(134,'127.0.0.1','2019-05-20 13:50:58','admin','EditGoodType','ttype=0<br>tid=10<br>tname=右侧推荐阅读',0,'58694'),(135,'127.0.0.1','2019-05-20 13:51:25','admin','EditGoodType','ttype=0<br>tid=11<br>tname=右侧图片广告下推荐',0,'58694'),(136,'127.0.0.1','2019-05-20 13:52:44','admin','EditGoodType','ttype=0<br>tid=12<br>tname=猜你喜欢',0,'58694'),(137,'127.0.0.1','2019-05-20 13:52:58','admin','DelGoodType','ttype=0<br>tid=13<br>tname=四级推荐',0,'58694'),(138,'127.0.0.1','2019-05-20 13:53:03','admin','DelGoodType','ttype=0<br>tid=14<br>tname=五级推荐',0,'58694'),(139,'127.0.0.1','2019-05-20 13:53:08','admin','DelGoodType','ttype=0<br>tid=15<br>tname=六级推荐',0,'58694'),(140,'127.0.0.1','2019-05-20 13:53:13','admin','DelGoodType','ttype=0<br>tid=16<br>tname=七级推荐',0,'58694'),(141,'127.0.0.1','2019-05-20 13:53:17','admin','DelGoodType','ttype=0<br>tid=17<br>tname=八级推荐',0,'58694'),(142,'127.0.0.1','2019-05-20 13:53:21','admin','DelGoodType','ttype=0<br>tid=18<br>tname=九级推荐',0,'58694'),(143,'127.0.0.1','2019-05-20 13:55:55','admin','EditTempvar','varid=9<br>var=sidebar&amp;gid=1',0,'58694'),(144,'127.0.0.1','2019-05-20 13:56:25','admin','GoodInfo_all','classid=1<br>classname=财经<br>doing=0',0,'58694'),(145,'127.0.0.1','2019-05-20 13:56:37','admin','GoodInfo_all','classid=1<br>classname=财经<br>doing=0',0,'58694'),(146,'127.0.0.1','2019-05-20 13:58:05','admin','EditGoodType','ttype=1<br>tid=1<br>tname=首页置顶',0,'62434'),(147,'127.0.0.1','2019-05-20 13:58:11','admin','DelGoodType','ttype=1<br>tid=2<br>tname=二级头条',0,'62434'),(148,'127.0.0.1','2019-05-20 13:58:15','admin','DelGoodType','ttype=1<br>tid=3<br>tname=三级头条',0,'62434'),(149,'127.0.0.1','2019-05-20 13:58:19','admin','DelGoodType','ttype=1<br>tid=4<br>tname=四级头条',0,'62434'),(150,'127.0.0.1','2019-05-20 13:59:31','admin','DelGoodType','ttype=1<br>tid=5<br>tname=五级头条',0,'62434'),(151,'127.0.0.1','2019-05-20 13:59:35','admin','DelGoodType','ttype=1<br>tid=6<br>tname=六级头条',0,'62434'),(152,'127.0.0.1','2019-05-20 13:59:39','admin','DelGoodType','ttype=1<br>tid=7<br>tname=七级头条',0,'62434'),(153,'127.0.0.1','2019-05-20 13:59:44','admin','DelGoodType','ttype=1<br>tid=8<br>tname=八级头条',0,'62434'),(154,'127.0.0.1','2019-05-20 13:59:47','admin','DelGoodType','ttype=1<br>tid=9<br>tname=九级头条',0,'62434'),(155,'127.0.0.1','2019-05-20 14:02:51','admin','TopNews_all','classid=1<br>classname=财经',0,'62822'),(156,'127.0.0.1','2019-05-20 14:03:05','admin','GoodInfo_all','classid=1<br>classname=财经<br>doing=1',0,'62822'),(157,'127.0.0.1','2019-05-20 14:07:24','admin','EditPublicTemp','gid=1',0,'63062'),(158,'127.0.0.1','2019-05-20 14:08:57','admin','EditPublicTemp','gid=1',0,'63062'),(159,'127.0.0.1','2019-05-20 14:21:36','admin','EditClass','classid=1<br>classname=财经',0,'1228'),(160,'127.0.0.1','2019-05-20 14:50:52','admin','EditPublicTemp','gid=1',0,'16914'),(161,'127.0.0.1','2019-05-20 14:51:47','admin','EditListtemp','tempid=1<br>tempname=默认新闻列表模板&amp;gid=1',0,'16914'),(162,'127.0.0.1','2019-05-20 15:51:30','admin','EditListtemp','tempid=1<br>tempname=默认新闻列表模板&amp;gid=1',0,'31054'),(163,'127.0.0.1','2019-05-20 15:54:08','admin','EditNewstemp','tempid=1<br>tempname=默认新闻内容模板&amp;gid=1',0,'31486'),(164,'127.0.0.1','2019-05-20 15:59:00','admin','EditClass','classid=1<br>classname=财经',0,'34010'),(165,'127.0.0.1','2019-05-20 16:00:27','admin','GoodInfo_all','classid=1<br>classname=财经<br>doing=0',0,'34010'),(166,'127.0.0.1','2019-05-20 17:15:11','admin','EditNewstemp','tempid=1<br>tempname=默认新闻内容模板&amp;gid=1',0,'51258'),(167,'127.0.0.1','2019-05-20 20:50:26','admin','login','---',0,'36742'),(168,'127.0.0.1','2019-05-20 20:59:21','admin','EditNewstemp','tempid=1<br>tempname=默认新闻内容模板&amp;gid=1',0,'36854'),(169,'127.0.0.1','2019-05-20 21:07:45','admin','EditNewstemp','tempid=1<br>tempname=默认新闻内容模板&amp;gid=1',0,'38034'),(170,'127.0.0.1','2019-05-20 21:17:43','admin','EditPublicTemp','gid=1',0,'38442'),(171,'127.0.0.1','2019-05-20 21:18:16','admin','ReIndex','---',0,'38442'),(172,'127.0.0.1','2019-05-20 21:18:27','admin','SetEnews','---',0,'38442'),(173,'127.0.0.1','2019-05-20 21:25:21','admin','AddClass','classid=2<br>classname=美股',0,'39284'),(174,'127.0.0.1','2019-05-20 21:29:14','admin','AddNews','classid=2<br>id=33<br>title=拼多多发布财报 加快建立更为完善的零售业态',1000010000000033,'39284'),(175,'127.0.0.1','2019-05-20 21:31:13','admin','AddNews','classid=2<br>id=34<br>title=爱奇艺盘前涨逾2% 高瓴资本重仓持有该股票',1000010000000034,'39284'),(176,'127.0.0.1','2019-05-20 21:36:52','admin','CopyNews_all','classid=2<br>classname=美股<br>to_classid=2',0,'42112'),(177,'127.0.0.1','2019-05-20 21:37:02','admin','CopyNews_all','classid=2<br>classname=美股<br>to_classid=2',0,'42112'),(178,'127.0.0.1','2019-05-20 21:37:13','admin','CopyNews_all','classid=2<br>classname=美股<br>to_classid=2',0,'42112'),(179,'127.0.0.1','2019-05-20 21:37:26','admin','CopyNews_all','classid=2<br>classname=美股<br>to_classid=2',0,'42112'),(180,'127.0.0.1','2019-05-20 21:37:49','admin','CopyNews_all','classid=2<br>classname=美股<br>to_classid=2',0,'42112'),(181,'127.0.0.1','2019-05-20 21:38:28','admin','ReIndex','---',0,'42190'),(182,'127.0.0.1','2019-05-20 21:38:30','admin','ReListHtml_all','---',0,'42190'),(183,'127.0.0.1','2019-05-20 21:39:56','admin','TopNews_all','classid=2<br>classname=美股',0,'42236'),(184,'127.0.0.1','2019-05-20 21:40:11','admin','GoodInfo_all','classid=2<br>classname=美股<br>doing=1',0,'42236'),(185,'127.0.0.1','2019-05-20 21:43:55','admin','EditListtemp','tempid=1<br>tempname=默认新闻列表模板&amp;gid=1',0,'42236'),(186,'127.0.0.1','2019-05-20 21:44:01','admin','ReListHtml_all','---',0,'42236'),(187,'127.0.0.1','2019-05-20 21:56:49','admin','AddUserpage','id=1&amp;title=关于我们',0,'44924'),(188,'127.0.0.1','2019-05-20 21:56:57','admin','DoReUserpage','---',0,'44924'),(189,'127.0.0.1','2019-05-20 21:58:38','admin','EditUserpage','id=1&amp;title=关于我们',0,'44924'),(190,'127.0.0.1','2019-05-20 21:58:42','admin','DoReUserpage','---',0,'44924'),(191,'127.0.0.1','2019-05-21 08:44:02','admin','login','---',0,'46744'),(192,'127.0.0.1','2019-05-21 08:44:42','admin','EditClass','classid=1<br>classname=财经',0,'46756'),(193,'127.0.0.1','2019-05-21 08:45:01','admin','ReIndex','---',0,'46760'),(194,'127.0.0.1','2019-05-21 08:45:04','admin','ReListHtml_all','---',0,'46760'),(195,'127.0.0.1','2019-05-21 09:18:23','admin','EditMSearchtemp','tempid=1<br>tempname=默认搜索模板&amp;gid=1',0,'47650'),(196,'127.0.0.1','2019-05-21 09:54:02','admin','DefaultMSearchtemp','tempid=1<br>tempname=默认搜索模板&amp;gid=1',0,'49810'),(197,'127.0.0.1','2019-05-21 11:52:57','admin','EditMSearchtemp','tempid=1<br>tempname=默认搜索模板&amp;gid=1',0,'60842'),(198,'127.0.0.1','2019-05-21 11:54:34','admin','EditMSearchtemp','tempid=1<br>tempname=默认搜索模板&amp;gid=1',0,'60842'),(199,'127.0.0.1','2019-05-21 12:06:18','admin','EditTempvar','varid=8<br>var=menu&amp;gid=1',0,'64276'),(200,'127.0.0.1','2019-05-21 12:06:22','admin','ReIndex','---',0,'64276'),(201,'127.0.0.1','2019-05-21 12:06:25','admin','ReListHtml_all','---',0,'64276'),(202,'127.0.0.1','2019-05-21 12:27:12','admin','EditTempvar','varid=8<br>var=menu&amp;gid=1',0,'4080'),(203,'127.0.0.1','2019-05-21 12:28:41','admin','SetWap','---',0,'4080'),(204,'127.0.0.1','2019-05-21 12:29:36','admin','EditWapStyle','styleid=1&amp;stylename=新闻模板',0,'4080'),(205,'127.0.0.1','2019-05-21 12:30:17','admin','SetWap','---',0,'4080'),(206,'127.0.0.1','2019-05-21 14:08:20','admin','EditClass','classid=2<br>classname=美股',0,'23512'),(207,'127.0.0.1','2019-05-21 14:12:49','admin','AddWapStyle','styleid=3&amp;stylename=股票',0,'24614'),(208,'127.0.0.1','2019-05-21 14:13:09','admin','SetWap','---',0,'24614'),(209,'127.0.0.1','2019-05-21 14:25:26','admin','SetWap','---',0,'31038'),(210,'127.0.0.1','2019-05-21 15:02:19','admin','SetWap','---',0,'49062'),(211,'127.0.0.1','2019-05-21 21:16:40','admin','login','---',0,'17380'),(212,'127.0.0.1','2019-05-21 21:17:56','admin','EditClass','classid=2<br>classname=美股',0,'17856'),(213,'127.0.0.1','2019-05-22 09:07:47','yaoweibo','login','---',0,'30622'),(214,'127.0.0.1','2019-05-22 09:08:07','yaoweibo','EditPublicTemp','gid=1',0,'30664'),(215,'127.0.0.1','2019-05-22 09:08:12','yaoweibo','ReIndex','---',0,'30674'),(216,'127.0.0.1','2019-05-22 09:08:15','yaoweibo','ReListHtml_all','---',0,'30674');
/*!40000 ALTER TABLE `gc_enewsdolog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsdownerror`
--

DROP TABLE IF EXISTS `gc_enewsdownerror`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsdownerror` (
  `errorid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `errortext` varchar(255) NOT NULL DEFAULT '',
  `errortime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `errorip` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`errorid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsdownerror`
--

LOCK TABLES `gc_enewsdownerror` WRITE;
/*!40000 ALTER TABLE `gc_enewsdownerror` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsdownerror` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsdownrecord`
--

DROP TABLE IF EXISTS `gc_enewsdownrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsdownrecord` (
  `id` int(11) NOT NULL DEFAULT '0',
  `pathid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `cardfen` int(11) NOT NULL DEFAULT '0',
  `truetime` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `online` tinyint(1) NOT NULL DEFAULT '0',
  KEY `userid` (`userid`),
  KEY `truetime` (`truetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsdownrecord`
--

LOCK TABLES `gc_enewsdownrecord` WRITE;
/*!40000 ALTER TABLE `gc_enewsdownrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsdownrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsdownurlqz`
--

DROP TABLE IF EXISTS `gc_enewsdownurlqz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsdownurlqz` (
  `urlid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `urlname` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `downtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`urlid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsdownurlqz`
--

LOCK TABLES `gc_enewsdownurlqz` WRITE;
/*!40000 ALTER TABLE `gc_enewsdownurlqz` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsdownurlqz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewserrorclass`
--

DROP TABLE IF EXISTS `gc_enewserrorclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewserrorclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewserrorclass`
--

LOCK TABLES `gc_enewserrorclass` WRITE;
/*!40000 ALTER TABLE `gc_enewserrorclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewserrorclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsf`
--

DROP TABLE IF EXISTS `gc_enewsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `isadd` tinyint(1) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '0',
  `iscj` tinyint(1) NOT NULL DEFAULT '0',
  `cjhtml` mediumtext NOT NULL,
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `dotemp` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `savetxt` tinyint(1) NOT NULL DEFAULT '0',
  `fvalue` text NOT NULL,
  `iskey` tinyint(1) NOT NULL DEFAULT '0',
  `tobr` tinyint(1) NOT NULL DEFAULT '0',
  `dohtml` tinyint(1) NOT NULL DEFAULT '0',
  `qfhtml` mediumtext NOT NULL,
  `isonly` tinyint(1) NOT NULL DEFAULT '0',
  `linkfieldval` varchar(30) NOT NULL DEFAULT '',
  `samedata` tinyint(1) NOT NULL DEFAULT '0',
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  `tbdataf` tinyint(1) NOT NULL DEFAULT '0',
  `ispage` tinyint(1) NOT NULL DEFAULT '0',
  `adddofun` varchar(255) NOT NULL DEFAULT '',
  `editdofun` varchar(255) NOT NULL DEFAULT '',
  `qadddofun` varchar(255) NOT NULL DEFAULT '',
  `qeditdofun` varchar(255) NOT NULL DEFAULT '',
  `linkfieldtb` varchar(60) NOT NULL DEFAULT '',
  `linkfieldshow` varchar(30) NOT NULL DEFAULT '',
  `editorys` tinyint(1) NOT NULL DEFAULT '0',
  `issmalltext` tinyint(1) NOT NULL DEFAULT '0',
  `fmvnum` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsf`
--

LOCK TABLES `gc_enewsf` WRITE;
/*!40000 ALTER TABLE `gc_enewsf` DISABLE KEYS */;
INSERT INTO `gc_enewsf` VALUES (1,'title','标题','text','<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#DBEAF5\\\">\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">\r\n	<?=$tts?\\\"<select name=\\\'ttid\\\'><option value=\\\'0\\\'>标题分类</option>$tts</select>\\\":\\\"\\\"?>\r\n	<input type=text name=title value=\\\"<?=ehtmlspecialchars(stripSlashes($r[title]))?>\\\" size=\\\"60\\\"> \r\n	<input type=\\\"button\\\" name=\\\"button\\\" value=\\\"图文\\\" onclick=\\\"document.add.title.value=document.add.title.value+\\\'(图文)\\\';\\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">属性: \r\n	<input name=\\\"titlefont[b]\\\" type=\\\"checkbox\\\" value=\\\"b\\\"<?=$titlefontb?>>粗体\r\n	<input name=\\\"titlefont[i]\\\" type=\\\"checkbox\\\" value=\\\"i\\\"<?=$titlefonti?>>斜体\r\n	<input name=\\\"titlefont[s]\\\" type=\\\"checkbox\\\" value=\\\"s\\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\\"titlecolor\\\" type=\\\"text\\\" value=\\\"<?=stripSlashes($r[titlecolor])?>\\\" size=\\\"10\\\" class=\\\"color\\\">\r\n  </td>\r\n</tr>\r\n</table>','标题',0,1,1,'  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--title--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_title]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_title]\" type=\"text\" id=\"add[z_title]\" value=\"<?=stripSlashes($r[z_title])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>',0,'CHAR','100',1,1,'news',0,'',0,0,0,'<input name=\\\"title\\\" type=\\\"text\\\" size=\\\"42\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'title\\\',stripSlashes($r[title]))?>\\\">',0,'',0,'60',0,0,'','','','','','',0,0,''),(2,'special.field','特殊属性','','<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#DBEAF5\\\">\r\n  <tr>\r\n    <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">信息属性: \r\n      <input name=\\\"checked\\\" type=\\\"checkbox\\\" value=\\\"1\\\"<?=$r[checked]?\\\' checked\\\':\\\'\\\'?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\\\"isgood\\\" id=\\\"isgood\\\">\r\n        <option value=\\\"0\\\">不推荐</option>\r\n	<?=$ftnr[\\\'igname\\\']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\\\"firsttitle\\\" id=\\\"firsttitle\\\">\r\n        <option value=\\\"0\\\">非头条</option>\r\n	<?=$ftnr[\\\'ftname\\\']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\\\"keyboard\\\" type=\\\"text\\\" size=\\\"52\\\" value=\\\"<?=stripSlashes($r[keyboard])?>\\\">\r\n      <font color=\\\"#666666\\\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">外部链接: \r\n      <input name=\\\"titleurl\\\" type=\\\"text\\\" value=\\\"<?=stripSlashes($r[titleurl])?>\\\" size=\\\"52\\\">\r\n      <font color=\\\"#666666\\\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>','特殊属性',0,1,0,'',1,'','',0,1,'news',0,'',0,0,0,'<input name=\\\"keyboard\\\" type=\\\"text\\\" size=42 value=\\\"<?=stripSlashes($r[keyboard])?>\\\">\r\n<font color=\\\"#666666\\\">(多个请用&quot;,&quot;隔开)</font>',0,'',0,'',0,0,'','','','','','',0,0,''),(3,'titlepic','标题图片','img','<input name=\\\"titlepic\\\" type=\\\"text\\\" id=\\\"titlepic\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[titlepic]))?>\\\" size=\\\"45\\\">\r\n<a onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\" title=\\\"选择已上传的图片\\\"><img src=\\\"../data/images/changeimg.gif\\\" border=\\\"0\\\" align=\\\"absbottom\\\"></a>','标题图片',0,1,1,'  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--titlepic--]\\\" size=\\\"20\\\">\r\n      )</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\\"add[qz_titlepic]\\\" type=\\\"text\\\" id=\\\"add[qz_titlepic]\\\" value=\\\"<?=stripSlashes($r[qz_titlepic])?>\\\"> \r\n        <input name=\\\"add[save_titlepic]\\\" type=\\\"checkbox\\\" id=\\\"add[save_titlepic]\\\" value=\\\" checked\\\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\\"add[zz_titlepic]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"add[zz_titlepic]\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\\"add[z_titlepic]\\\" type=\\\"text\\\" id=\\\"titlepic5\\\" value=\\\"<?=stripSlashes($r[z_titlepic])?>\\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n',2,'CHAR','120',1,1,'news',0,'',0,0,0,'<input type=\\\"file\\\" name=\\\"titlepicfile\\\" size=\\\"45\\\">',0,'',0,'60',0,0,'','','','','','',0,0,''),(4,'newstime','发布时间','text','<input name=\\\"newstime\\\" type=\\\"text\\\" value=\\\"<?=$r[newstime]?>\\\" size=\\\"28\\\" class=\\\"Wdate\\\" onClick=\\\"WdatePicker({skin:\\\'default\\\',dateFmt:\\\'yyyy-MM-dd HH:mm:ss\\\'})\\\"><input type=button name=button value=\\\"设为当前时间\\\" onclick=\\\"document.add.newstime.value=\\\'<?=$todaytime?>\\\'\\\">','发布时间',0,1,1,'  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--newstime--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_newstime]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_newstime]\" type=\"text\" id=\"add[z_newstime]\" value=\"<?=stripSlashes($r[z_newstime])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>',1,'INT','11',1,1,'news',0,'',1,0,0,'',0,'',0,'',0,0,'','','','','','',0,0,''),(5,'ftitle','副标题','text','<input name=\\\"ftitle\\\" type=\\\"text\\\" size=60 id=\\\"ftitle\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[ftitle]))?>\\\">\r\n','副标题',1,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--ftitle--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_ftitle]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_ftitle]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_ftitle]\" type=\"text\" id=\"add[z_ftitle]\" value=\"<?=stripSlashes($r[z_ftitle])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'CHAR','120',1,1,'news',0,'',0,0,1,'<input name=\\\"ftitle\\\" type=\\\"text\\\" size=42 id=\\\"ftitle\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'ftitle\\\',stripSlashes($r[ftitle]))?>\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(6,'smalltext','内容简介','textarea','<textarea name=\\\"smalltext\\\" cols=\\\"80\\\" rows=\\\"10\\\" id=\\\"smalltext\\\"><?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[smalltext]))?></textarea>\r\n','内容简介',1,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--smalltext--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_smalltext]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_smalltext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_smalltext]\" type=\"text\" id=\"add[z_smalltext]\" value=\"<?=stripSlashes($r[z_smalltext])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'CHAR','255',1,1,'news',0,'',0,1,1,'<textarea name=\\\"smalltext\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"smalltext\\\"><?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'smalltext\\\',stripSlashes($r[smalltext]))?></textarea>\r\n',0,'',0,'',0,0,'','','','','','',0,1,''),(7,'writer','作者','text','<?php\r\n$writer_sql=$empire->query(\\\"select writer from {$dbtbpre}enewswriter\\\");\r\nwhile($w_r=$empire->fetch($writer_sql))\r\n{\r\n	$w_class.=\\\"<option value=\\\'\\\".$w_r[writer].\\\"\\\'>\\\".$w_r[writer].\\\"</option>\\\";\r\n}\r\n?>\r\n<input type=text name=writer value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[writer]))?>\\\" size=\\\"\\\"> \r\n        <select name=\\\"w_id\\\" id=\\\"select7\\\" onchange=\\\"document.add.writer.value=document.add.w_id.value\\\">\r\n          <option>选择作者</option>\r\n		  <?=$w_class?>\r\n        </select>\r\n<input type=\\\"button\\\" name=\\\"wbutton\\\" value=\\\"增加作者\\\" onclick=\\\"window.open(\\\'NewsSys/writer.php?<?=$ecms_hashur[ehref]?>&addwritername=\\\'+document.add.writer.value);\\\">\r\n','作者',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--writer--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_writer]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_writer]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_writer]\\\" type=\\\"text\\\" id=\\\"add[z_writer]\\\" value=\\\"<?=stripSlashes($r[z_writer])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'CHAR','30',1,1,'news',0,'',0,0,1,'<input name=\\\"writer\\\" type=\\\"text\\\" id=\\\"writer\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'writer\\\',stripSlashes($r[writer]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(8,'befrom','信息来源','text','<?php\r\n$befrom_sql=$empire->query(\\\"select sitename from {$dbtbpre}enewsbefrom\\\");\r\nwhile($b_r=$empire->fetch($befrom_sql))\r\n{\r\n	$b_class.=\\\"<option value=\\\'\\\".$b_r[sitename].\\\"\\\'>\\\".$b_r[sitename].\\\"</option>\\\";\r\n}\r\n?>\r\n<input type=\\\"text\\\" name=\\\"befrom\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[befrom]))?>\\\" size=\\\"\\\"> \r\n        <select name=\\\"befrom_id\\\" id=\\\"befromid\\\" onchange=\\\"document.add.befrom.value=document.add.befrom_id.value\\\">\r\n          <option>选择信息来源</option>\r\n          <?=$b_class?>\r\n        </select>\r\n<input type=\\\"button\\\" name=\\\"wbutton\\\" value=\\\"增加来源\\\" onclick=\\\"window.open(\\\'NewsSys/BeFrom.php?<?=$ecms_hashur[ehref]?>&addsitename=\\\'+document.add.befrom.value);\\\">\r\n','信息来源',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--befrom--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_befrom]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_befrom]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_befrom]\\\" type=\\\"text\\\" id=\\\"add[z_befrom]\\\" value=\\\"<?=stripSlashes($r[z_befrom])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'CHAR','60',1,1,'news',0,'',0,0,1,'<input name=\\\"befrom\\\" type=\\\"text\\\" id=\\\"befrom\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'befrom\\\',stripSlashes($r[befrom]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(9,'newstext','新闻正文','editor','<?=ECMS_ShowEditorVar(\\\"newstext\\\",$ecmsfirstpost==1?\\\"\\\":stripSlashes($r[newstext]),\\\"Default\\\",\\\"\\\",\\\"300\\\",\\\"100%\\\")?>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#DBEAF5\\\">\r\n          <tr> \r\n            <td bgcolor=\\\"#FFFFFF\\\"> <input name=\\\"dokey\\\" type=\\\"checkbox\\\" value=\\\"1\\\"<?=$r[dokey]==1?\\\' checked\\\':\\\'\\\'?>>\r\n              关键字替换&nbsp;&nbsp; <input name=\\\"copyimg\\\" type=\\\"checkbox\\\" id=\\\"copyimg\\\" value=\\\"1\\\">\r\n      远程保存图片(\r\n      <input name=\\\"mark\\\" type=\\\"checkbox\\\" id=\\\"mark\\\" value=\\\"1\\\">\r\n      <a href=\\\"SetEnews.php<?=$ecms_hashur[whehref]?>\\\" target=\\\"_blank\\\">加水印</a>)&nbsp;&nbsp; \r\n      <input name=\\\"copyflash\\\" type=\\\"checkbox\\\" id=\\\"copyflash\\\" value=\\\"1\\\">\r\n      远程保存FLASH(地址前缀： \r\n      <input name=\\\"qz_url\\\" type=\\\"text\\\" id=\\\"qz_url\\\" size=\\\"\\\">\r\n              )</td>\r\n          </tr>\r\n          <tr>\r\n            \r\n    <td bgcolor=\\\"#FFFFFF\\\"><input name=\\\"repimgnexturl\\\" type=\\\"checkbox\\\" id=\\\"repimgnexturl\\\" value=\\\"1\\\"> 图片链接转为下一页&nbsp;&nbsp; <input name=\\\"autopage\\\" type=\\\"checkbox\\\" id=\\\"autopage\\\" value=\\\"1\\\">自动分页\r\n      ,每 \r\n      <input name=\\\"autosize\\\" type=\\\"text\\\" id=\\\"autosize\\\" value=\\\"5000\\\" size=\\\"5\\\">\r\n      个字节为一页&nbsp;&nbsp; 取第 \r\n      <input name=\\\"getfirsttitlepic\\\" type=\\\"text\\\" id=\\\"getfirsttitlepic\\\" value=\\\"\\\" size=\\\"1\\\">\r\n      张上传图为标题图片( \r\n      <input name=\\\"getfirsttitlespic\\\" type=\\\"checkbox\\\" id=\\\"getfirsttitlespic\\\" value=\\\"1\\\">\r\n      缩略图: 宽 \r\n      <input name=\\\"getfirsttitlespicw\\\" type=\\\"text\\\" id=\\\"getfirsttitlespicw\\\" size=\\\"3\\\" value=\\\"<?=$public_r[spicwidth]?>\\\">\r\n      *高\r\n      <input name=\\\"getfirsttitlespich\\\" type=\\\"text\\\" id=\\\"getfirsttitlespich\\\" size=\\\"3\\\" value=\\\"<?=$public_r[spicheight]?>\\\">\r\n      )</td>\r\n          </tr>\r\n        </table>\r\n','新闻正文',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--newstext--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_newstext]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_newstext]\\\" type=\\\"text\\\" id=\\\"add[z_newstext]\\\" value=\\\"<?=stripSlashes($r[z_newstext])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'MEDIUMTEXT','',1,1,'news',0,'',0,1,1,'<?=ECMS_ShowEditorVar(\\\"newstext\\\",$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'newstext\\\',stripSlashes($r[newstext])),\\\"Default\\\",\\\"\\\",\\\"300\\\",\\\"100%\\\")?>\r\n',0,'',0,'',1,1,'','','','','','',0,0,''),(10,'diggtop','顶','text','\r\n<input name=\"diggtop\" type=\"text\" id=\"diggtop\" value=\"<?=$ecmsfirstpost==1?\"\":ehtmlspecialchars(stripSlashes($r[diggtop]))?>\" size=\"\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--diggtop--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_diggtop]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_diggtop]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_diggtop]\" type=\"text\" id=\"add[z_diggtop]\" value=\"<?=stripSlashes($r[z_diggtop])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',3,'INT','',1,1,'news',0,'',0,0,1,'\r\n<input name=\"diggtop\" type=\"text\" id=\"diggtop\" value=\"<?=$ecmsfirstpost==1?\"\":DoReqValue($mid,\'diggtop\',stripSlashes($r[diggtop]))?>\" size=\"\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(11,'title','标题','text','<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#DBEAF5\\\">\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">\r\n	<?=$tts?\\\"<select name=\\\'ttid\\\'><option value=\\\'0\\\'>标题分类</option>$tts</select>\\\":\\\"\\\"?>\r\n	<input type=text name=title value=\\\"<?=ehtmlspecialchars(stripSlashes($r[title]))?>\\\" size=\\\"60\\\"> \r\n	<input type=\\\"button\\\" name=\\\"button\\\" value=\\\"图文\\\" onclick=\\\"document.add.title.value=document.add.title.value+\\\'(图文)\\\';\\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">属性: \r\n	<input name=\\\"titlefont[b]\\\" type=\\\"checkbox\\\" value=\\\"b\\\"<?=$titlefontb?>>粗体\r\n	<input name=\\\"titlefont[i]\\\" type=\\\"checkbox\\\" value=\\\"i\\\"<?=$titlefonti?>>斜体\r\n	<input name=\\\"titlefont[s]\\\" type=\\\"checkbox\\\" value=\\\"s\\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\\"titlecolor\\\" type=\\\"text\\\" value=\\\"<?=stripSlashes($r[titlecolor])?>\\\" size=\\\"10\\\" class=\\\"color\\\">\r\n  </td>\r\n</tr>\r\n</table>\r\n','标题',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--title--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_title]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_title]\" type=\"text\" id=\"add[z_title]\" value=\"<?=stripSlashes($r[z_title])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'CHAR','100',1,2,'download',0,'',0,0,0,'<input name=\\\"title\\\" type=\\\"text\\\" size=\\\"42\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'title\\\',stripSlashes($r[title]))?>\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(12,'special.field','特殊属性','','\r\n<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#DBEAF5\">\r\n  <tr>\r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">信息属性: \r\n      <input name=\"checked\" type=\"checkbox\" value=\"1\"<?=$r[checked]?\' checked\':\'\'?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\"isgood\" id=\"isgood\">\r\n        <option value=\"0\">不推荐</option>\r\n	<?=$ftnr[\'igname\']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\"firsttitle\" id=\"firsttitle\">\r\n        <option value=\"0\">非头条</option>\r\n	<?=$ftnr[\'ftname\']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\"keyboard\" type=\"text\" size=\"52\" value=\"<?=stripSlashes($r[keyboard])?>\">\r\n      <font color=\"#666666\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">外部链接: \r\n      <input name=\"titleurl\" type=\"text\" value=\"<?=stripSlashes($r[titleurl])?>\" size=\"52\">\r\n      <font color=\"#666666\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n','特殊属性',0,1,0,'\r\n\r\n',0,'','0',0,2,'download',0,'',0,0,0,'\r\n<input name=\"keyboard\" type=\"text\" size=42 value=\"<?=stripSlashes($r[keyboard])?>\">\r\n<font color=\"#666666\">(多个请用&quot;,&quot;隔开)</font>\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(13,'titlepic','标题图片','img','<input name=\\\"titlepic\\\" type=\\\"text\\\" id=\\\"titlepic\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[titlepic]))?>\\\" size=\\\"45\\\">\r\n<a onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\" title=\\\"选择已上传的图片\\\"><img src=\\\"../data/images/changeimg.gif\\\" border=\\\"0\\\" align=\\\"absbottom\\\"></a> \r\n','标题图片',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--titlepic--]\" size=\"20\">\r\n      )</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\"add[qz_titlepic]\" type=\"text\" id=\"add[qz_titlepic]\" value=\"<?=stripSlashes($r[qz_titlepic])?>\"> \r\n        <input name=\"add[save_titlepic]\" type=\"checkbox\" id=\"add[save_titlepic]\" value=\" checked\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\"add[zz_titlepic]\" cols=\"60\" rows=\"10\" id=\"add[zz_titlepic]\"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\"add[z_titlepic]\" type=\"text\" id=\"titlepic5\" value=\"<?=stripSlashes($r[z_titlepic])?>\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n',1,'CHAR','120',1,2,'download',0,'',0,0,0,'<input type=\\\"file\\\" name=\\\"titlepicfile\\\" size=\\\"45\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(14,'newstime','发布时间','text','<input name=\\\"newstime\\\" type=\\\"text\\\" value=\\\"<?=$r[newstime]?>\\\" size=\\\"28\\\" class=\\\"Wdate\\\" onClick=\\\"WdatePicker({skin:\\\'default\\\',dateFmt:\\\'yyyy-MM-dd HH:mm:ss\\\'})\\\"><input type=button name=button value=\\\"设为当前时间\\\" onclick=\\\"document.add.newstime.value=\\\'<?=$todaytime?>\\\'\\\">\r\n','发布时间',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--newstime--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_newstime]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_newstime]\" type=\"text\" id=\"add[z_newstime]\" value=\"<?=stripSlashes($r[z_newstime])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'INT','11',1,2,'download',0,'',1,0,0,'\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(15,'softwriter','作者','text','<input name=\\\"softwriter\\\" type=\\\"text\\\" id=\\\"softwriter\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[softwriter]))?>\\\" size=\\\"60\\\">\r\n','作者',1,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--softwriter--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_softwriter]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_softwriter]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_softwriter]\" type=\"text\" id=\"add[z_softwriter]\" value=\"<?=stripSlashes($r[z_softwriter])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','30',1,2,'download',0,'',0,0,1,'<input name=\\\"softwriter\\\" type=\\\"text\\\" id=\\\"softwriter\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'softwriter\\\',stripSlashes($r[softwriter]))?>\\\" size=\\\"42\\\">\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(16,'homepage','官方网站','text','<input name=\\\"homepage\\\" type=\\\"text\\\" id=\\\"homepage\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"http://\\\":ehtmlspecialchars(stripSlashes($r[homepage]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--homepage--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_homepage]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_homepage]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_homepage]\" type=\"text\" id=\"add[z_homepage]\" value=\"<?=stripSlashes($r[z_homepage])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','80',1,2,'download',0,'http://',0,0,1,'<input name=\\\"homepage\\\" type=\\\"text\\\" id=\\\"homepage\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"http://\\\":DoReqValue($mid,\\\'homepage\\\',stripSlashes($r[homepage]))?>\\\" size=\\\"42\\\">\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(17,'demo','系统演示','text','<input name=\\\"demo\\\" type=\\\"text\\\" id=\\\"demo\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"http://\\\":ehtmlspecialchars(stripSlashes($r[demo]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--demo--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_demo]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_demo]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_demo]\" type=\"text\" id=\"add[z_demo]\" value=\"<?=stripSlashes($r[z_demo])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','120',1,2,'download',0,'http://',0,0,1,'<input name=\\\"demo\\\" type=\\\"text\\\" id=\\\"demo\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"http://\\\":DoReqValue($mid,\\\'demo\\\',stripSlashes($r[demo]))?>\\\" size=\\\"42\\\">\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(18,'softfj','运行环境','text','<input name=\\\"softfj\\\" type=\\\"text\\\" id=\\\"softfj\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[softfj]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--softfj--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_softfj]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_softfj]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_softfj]\" type=\"text\" id=\"add[z_softfj]\" value=\"<?=stripSlashes($r[z_softfj])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','255',1,2,'download',0,'',0,0,1,'<input name=\\\"softfj\\\" type=\\\"text\\\" id=\\\"softfj\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'softfj\\\',stripSlashes($r[softfj]))?>\\\" size=\\\"42\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(19,'language','软件语言','select','<select name=\"language\" id=\"language\"><option value=\"简体中文\"<?=$r[language]==\"简体中文\"?\' selected\':\'\'?>>简体中文</option><option value=\"繁体中文\"<?=$r[language]==\"繁体中文\"?\' selected\':\'\'?>>繁体中文</option><option value=\"英文\"<?=$r[language]==\"英文\"?\' selected\':\'\'?>>英文</option><option value=\"多国语言\"<?=$r[language]==\"多国语言\"?\' selected\':\'\'?>>多国语言</option></select>','',1,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--language--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_language]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_language]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_language]\" type=\"text\" id=\"add[z_language]\" value=\"<?=stripSlashes($r[z_language])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','16',1,2,'download',0,'简体中文|繁体中文|英文|多国语言',0,0,1,'<select name=\"language\" id=\"language\"><option value=\"简体中文\"<?=$r[language]==\"简体中文\"?\' selected\':\'\'?>>简体中文</option><option value=\"繁体中文\"<?=$r[language]==\"繁体中文\"?\' selected\':\'\'?>>繁体中文</option><option value=\"英文\"<?=$r[language]==\"英文\"?\' selected\':\'\'?>>英文</option><option value=\"多国语言\"<?=$r[language]==\"多国语言\"?\' selected\':\'\'?>>多国语言</option></select>',0,'',0,'',0,0,'','','','','','',0,0,''),(20,'softtype','软件类型','select','<select name=\"softtype\" id=\"softtype\"><option value=\"国产软件\"<?=$r[softtype]==\"国产软件\"?\' selected\':\'\'?>>国产软件</option><option value=\"汉化软件\"<?=$r[softtype]==\"汉化软件\"?\' selected\':\'\'?>>汉化软件</option><option value=\"国外软件\"<?=$r[softtype]==\"国外软件\"?\' selected\':\'\'?>>国外软件</option></select>','',1,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--softtype--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_softtype]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_softtype]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_softtype]\" type=\"text\" id=\"add[z_softtype]\" value=\"<?=stripSlashes($r[z_softtype])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','16',1,2,'download',0,'国产软件|汉化软件|国外软件',0,0,1,'<select name=\"softtype\" id=\"softtype\"><option value=\"国产软件\"<?=$r[softtype]==\"国产软件\"?\' selected\':\'\'?>>国产软件</option><option value=\"汉化软件\"<?=$r[softtype]==\"汉化软件\"?\' selected\':\'\'?>>汉化软件</option><option value=\"国外软件\"<?=$r[softtype]==\"国外软件\"?\' selected\':\'\'?>>国外软件</option></select>',0,'',0,'',0,0,'','','','','','',0,0,''),(21,'softsq','授权形式','select','<select name=\"softsq\" id=\"softsq\"><option value=\"共享软件\"<?=$r[softsq]==\"共享软件\"?\' selected\':\'\'?>>共享软件</option><option value=\"免费软件\"<?=$r[softsq]==\"免费软件\"?\' selected\':\'\'?>>免费软件</option><option value=\"自由软件\"<?=$r[softsq]==\"自由软件\"?\' selected\':\'\'?>>自由软件</option><option value=\"试用软件\"<?=$r[softsq]==\"试用软件\"?\' selected\':\'\'?>>试用软件</option><option value=\"演示软件\"<?=$r[softsq]==\"演示软件\"?\' selected\':\'\'?>>演示软件</option><option value=\"商业软件\"<?=$r[softsq]==\"商业软件\"?\' selected\':\'\'?>>商业软件</option></select>','',1,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--softsq--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_softsq]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_softsq]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_softsq]\" type=\"text\" id=\"add[z_softsq]\" value=\"<?=stripSlashes($r[z_softsq])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','16',1,2,'download',0,'共享软件|免费软件|自由软件|试用软件|演示软件|商业软件',0,0,1,'<select name=\"softsq\" id=\"softsq\"><option value=\"共享软件\"<?=$r[softsq]==\"共享软件\"?\' selected\':\'\'?>>共享软件</option><option value=\"免费软件\"<?=$r[softsq]==\"免费软件\"?\' selected\':\'\'?>>免费软件</option><option value=\"自由软件\"<?=$r[softsq]==\"自由软件\"?\' selected\':\'\'?>>自由软件</option><option value=\"试用软件\"<?=$r[softsq]==\"试用软件\"?\' selected\':\'\'?>>试用软件</option><option value=\"演示软件\"<?=$r[softsq]==\"演示软件\"?\' selected\':\'\'?>>演示软件</option><option value=\"商业软件\"<?=$r[softsq]==\"商业软件\"?\' selected\':\'\'?>>商业软件</option></select>',0,'',0,'',0,0,'','','','','','',0,0,''),(22,'star','软件等级','select','<select name=\\\"star\\\" id=\\\"star\\\"><option value=\\\"1\\\"<?=$r[star]==\\\"1\\\"?\\\' selected\\\':\\\'\\\'?>>1星</option><option value=\\\"2\\\"<?=$r[star]==\\\"2\\\"||$ecmsfirstpost==1?\\\' selected\\\':\\\'\\\'?>>2星</option><option value=\\\"3\\\"<?=$r[star]==\\\"3\\\"?\\\' selected\\\':\\\'\\\'?>>3星</option><option value=\\\"4\\\"<?=$r[star]==\\\"4\\\"?\\\' selected\\\':\\\'\\\'?>>4星</option><option value=\\\"5\\\"<?=$r[star]==\\\"5\\\"?\\\' selected\\\':\\\'\\\'?>>5星</option></select>','',1,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--star--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_star]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_star]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_star]\" type=\"text\" id=\"add[z_star]\" value=\"<?=stripSlashes($r[z_star])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'TINYINT','1',1,2,'download',0,'1|2:default|3|4|5',0,0,1,'<select name=\\\"star\\\" id=\\\"star\\\"><option value=\\\"1\\\"<?=$r[star]==\\\"1\\\"?\\\' selected\\\':\\\'\\\'?>>1星</option><option value=\\\"2\\\"<?=$r[star]==\\\"2\\\"||$ecmsfirstpost==1?\\\' selected\\\':\\\'\\\'?>>2星</option><option value=\\\"3\\\"<?=$r[star]==\\\"3\\\"?\\\' selected\\\':\\\'\\\'?>>3星</option><option value=\\\"4\\\"<?=$r[star]==\\\"4\\\"?\\\' selected\\\':\\\'\\\'?>>4星</option><option value=\\\"5\\\"<?=$r[star]==\\\"5\\\"?\\\' selected\\\':\\\'\\\'?>>5星</option></select>',0,'',0,'',0,0,'','','','','','',0,0,''),(23,'filetype','文件类型','text','<input name=\\\"filetype\\\" type=\\\"text\\\" id=\\\"filetype\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[filetype]))?>\\\" size=\\\"\\\">\r\n<select name=\\\"select2\\\" onchange=\\\"document.add.filetype.value=this.value\\\">\r\n        <option value=\\\"\\\">类型</option>\r\n        <option value=\\\".zip\\\">.zip</option>\r\n        <option value=\\\".rar\\\">.rar</option>\r\n        <option value=\\\".exe\\\">.exe</option>\r\n      </select>','',1,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--filetype--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_filetype]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_filetype]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_filetype]\" type=\"text\" id=\"add[z_filetype]\" value=\"<?=stripSlashes($r[z_filetype])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','10',1,2,'download',0,'',0,0,1,'<input name=\\\"filetype\\\" type=\\\"text\\\" id=\\\"filetype\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'filetype\\\',stripSlashes($r[filetype]))?>\\\" size=\\\"10\\\">\r\n<select name=\\\"select2\\\" onchange=\\\"document.add.filetype.value=this.value\\\">\r\n        <option value=\\\"\\\">类型</option>\r\n        <option value=\\\".zip\\\">.zip</option>\r\n        <option value=\\\".rar\\\">.rar</option>\r\n        <option value=\\\".exe\\\">.exe</option>\r\n      </select>',0,'',0,'',0,0,'','','','','','',0,0,''),(24,'filesize','文件大小','text','<input name=\\\"filesize\\\" type=\\\"text\\\" id=\\\"filesize\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[filesize]))?>\\\" size=\\\"\\\">\r\n<select name=\\\"select\\\" onchange=\\\"document.add.filesize.value+=this.value\\\">\r\n        <option value=\\\"\\\">单位</option>\r\n        <option value=\\\" MB\\\">MB</option>\r\n        <option value=\\\" KB\\\">KB</option>\r\n        <option value=\\\" GB\\\">GB</option>\r\n        <option value=\\\" BYTES\\\">BYTES</option>\r\n      </select>','',1,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--filesize--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_filesize]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_filesize]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_filesize]\" type=\"text\" id=\"add[z_filesize]\" value=\"<?=stripSlashes($r[z_filesize])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','16',1,2,'download',0,'',0,0,1,'<input name=\\\"filesize\\\" type=\\\"text\\\" id=\\\"filesize\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'filesize\\\',stripSlashes($r[filesize]))?>\\\" size=\\\"10\\\">\r\n<select name=\\\"select\\\" onchange=\\\"document.add.filesize.value+=this.value\\\">\r\n        <option value=\\\"\\\">单位</option>\r\n        <option value=\\\" MB\\\">MB</option>\r\n        <option value=\\\" KB\\\">KB</option>\r\n        <option value=\\\" GB\\\">GB</option>\r\n        <option value=\\\" BYTES\\\">BYTES</option>\r\n      </select>',0,'',0,'',0,0,'','','','','','',0,0,''),(25,'downpath','下载地址','text','<script>\r\nfunction doadd()\r\n{var i;\r\nvar str=\\\"\\\";\r\nvar oldi=0;\r\nvar j=0;\r\noldi=parseInt(document.add.editnum.value);\r\nfor(i=1;i<=document.add.downnum.value;i++)\r\n{\r\nj=i+oldi;\r\nstr=str+\\\"<tr><td width=7%> <div align=center>\\\"+j+\\\"</div></td><td width=19%><div align=left><input name=downname[] type=text id=downname[] value=下载地址\\\"+j+\\\" size=17></div></td><td width=40%><input name=downpath[] type=text size=36 id=downpath\\\"+j+\\\" ondblclick=SpOpenChFile(0,\\\'downpath\\\"+j+\\\"\\\')><select name=thedownqz[]><option value=\\\'\\\'>--地址前缀--</option><?=$newdownqz?></select></td><td width=21%><div align=center><select name=downuser[] id=select><option value=0>游客</option><?=$ygroup?></select></div></td><td width=13%><div align=center><input name=fen[] type=text id=fen[] value=0 size=6></div></td></tr>\\\";\r\n}\r\ndocument.getElementById(\\\"adddown\\\").innerHTML=\\\"<table width=\\\'100%\\\' border=0 cellspacing=1 cellpadding=3>\\\"+str+\\\"</table>\\\";\r\n}\r\n</script>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n  <tr>\r\n    <td height=\\\"25\\\">下载地址前缀&nbsp;:\r\n      <input name=\\\"downurl_qz\\\" type=\\\"text\\\" size=\\\"32\\\">\r\n      <select name=\\\"changeurl_qz\\\" onchange=\\\"document.add.downurl_qz.value=document.add.changeurl_qz.value\\\">\r\n        <option value=\\\"\\\" selected>选择前缀</option>\r\n        <?=$downurlqz?>\r\n      </select>\r\n	  </td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\\\"25\\\">选择/上传附件:\r\n      <input name=\\\"changedown_url\\\" id=\\\"changedown_url\\\" type=\\\"text\\\" size=\\\"32\\\">\r\n      <input type=\\\"button\\\" name=\\\"Submit\\\" value=\\\"选择\\\" onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=0&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=changedown_url<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\">&nbsp;\r\n	  <input type=\\\"button\\\" name=\\\"Submit\\\" value=\\\"复制\\\" onclick=\\\"document.getElementById(\\\'changedown_url\\\').focus();document.getElementById(\\\'changedown_url\\\').select();clipboardData.setData(\\\'text\\\',document.getElementById(\\\'changedown_url\\\').value);\\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#DBEAF5\\\">\r\n        <tr> \r\n          <td width=\\\"7%\\\"> <div align=\\\"center\\\">编号</div></td>\r\n          <td width=\\\"19%\\\"><div align=\\\"left\\\">下载名称</div></td>\r\n          <td width=\\\"40%\\\">下载地址 <font color=\\\"#666666\\\">(双击选择)</font></td>\r\n          <td width=\\\"21%\\\"> <div align=\\\"center\\\">权限</div></td>\r\n          <td width=\\\"13%\\\"> <div align=\\\"center\\\">点数</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td>\r\n    <?php\r\n    if($ecmsfirstpost==1)\r\n    {\r\n    ?>\r\n	<table width=\\\'100%\\\' border=0 cellspacing=1 cellpadding=3>\r\n	<?php\r\n	$editnum=3;\r\n	for($pathi=1;$pathi<=$editnum;$pathi++)\r\n	{\r\n	?>\r\n           <tr> \r\n              <td width=\\\'7%\\\'> <div align=center><?=$pathi?></div></td>\r\n              <td width=\\\'19%\\\'> <div align=left> \r\n                  <input name=downname[] type=text value=\\\'下载地址<?=$pathi?>\\\' size=17>\r\n                    </div></td>\r\n              <td width=\\\'40%\\\'>\r\n	      <input name=downpath[] type=text size=36 id=\\\'downpath<?=$pathi?>\\\' ondblclick=\\\"SpOpenChFile(0,\\\'downpath<?=$pathi?>\\\');\\\">\r\n	      <select name=thedownqz[]><option value=\\\'\\\'>--地址前缀--</option><?=$newdownqz?></select> \r\n                  </td>\r\n                  <td width=\\\'21%\\\'><div align=center> \r\n                      <select name=downuser[]>\r\n                        <option value=0>游客</option>\r\n                        <?=$ygroup?>\r\n                      </select>\r\n                    </div></td>\r\n                  <td width=\\\'13%\\\'> <div align=center> \r\n                      <input name=fen[] type=text value=0 size=6>\r\n                    </div></td>\r\n            </tr>\r\n	<?php\r\n	}\r\n	?>\r\n	</table>\r\n    <?php\r\n    }\r\n    else\r\n    {\r\n	$editnum=0;\r\n	$downloadpath=\\\"\\\";\r\n	if($r[downpath])\r\n	{\r\n		$r[downpath]=stripSlashes($r[downpath]);\r\n		//下载地址\r\n		$j=0;\r\n		$d_record=explode(\\\"\\\\r\\\\n\\\",$r[downpath]);\r\n		for($i=0;$i<count($d_record);$i++)\r\n		{\r\n			$j=$i+1;\r\n			$d_field=explode(\\\"::::::\\\",$d_record[$i]);\r\n			//权限\r\n			$tgroup=str_replace(\\\" value=\\\".$d_field[2].\\\">\\\",\\\" value=\\\".$d_field[2].\\\" selected>\\\",$ygroup);\r\n			//地址前缀\r\n			$tnewdownqz=str_replace(\\\" value=\\\'\\\".$d_field[4].\\\"\\\'>\\\",\\\" value=\\\'\\\".$d_field[4].\\\"\\\' selected>\\\",$newdownqz);\r\n			$downloadpath.=\\\"<tr><td width=\\\'7%\\\'><div align=center>\\\".$j.\\\"</div></td><td width=\\\'19%\\\'><div align=left><input name=downname[] type=text id=downname[] value=\\\'\\\".$d_field[0].\\\"\\\' size=17></div></td><td width=\\\'40%\\\'><input name=downpath[] type=text id=downpath\\\".$j.\\\" value=\\\'\\\".$d_field[1].\\\"\\\' size=36 ondblclick=\\\\\\\"SpOpenChFile(0,\\\'downpath\\\".$j.\\\"\\\');\\\\\\\"><select name=thedownqz[]><option value=\\\'\\\'>--地址前缀--</option>\\\".$tnewdownqz.\\\"</select><input type=hidden name=pathid[] value=\\\".$j.\\\"><input type=checkbox name=delpathid[] value=\\\".$j.\\\">删</td><td width=\\\'21%\\\'><div align=center><select name=downuser[] id=select><option value=0>游客</option>\\\".$tgroup.\\\"</select></div></td><td width=\\\'13%\\\'><div align=center><input name=fen[] type=text id=fen[] value=\\\'\\\".$d_field[3].\\\"\\\' size=6></div></td></tr>\\\";\r\n		}\r\n		$editnum=$j;\r\n		$downloadpath=\\\"<table width=\\\'100%\\\' border=0 cellspacing=1 cellpadding=3>\\\".$downloadpath.\\\"</table>\\\";\r\n	}\r\n	echo $downloadpath;\r\n    }\r\n    ?>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\\"25\\\">下载地址扩展数量: <input name=\\\"editnum\\\" type=\\\"hidden\\\" id=\\\"editnum\\\" value=\\\"<?=$editnum?>\\\">\r\n      <input name=\\\"downnum\\\" type=\\\"text\\\" id=\\\"downnum\\\" value=\\\"1\\\" size=\\\"6\\\"> <input type=\\\"button\\\" name=\\\"Submit5\\\" value=\\\"输出地址\\\" onclick=\\\"javascript:doadd();\\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=adddown></td>\r\n  </tr>\r\n</table>\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (\r\n      <input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--ecmsdownpathurl--]\\\" size=\\\"20\\\">\r\n      <br>\r\n      <input name=\\\"textfield2\\\" type=\\\"text\\\" id=\\\"textfield2\\\" value=\\\"[!--ecmsdownpathname--]\\\" size=\\\"20\\\">\r\n      )<br>\r\n      格式:地址正则(url)[!empirecms!]名称正则(name)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_downpath]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_downpath]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td>地址前缀:\r\n<input name=\\\"add[qz_downpath]\\\" type=\\\"text\\\" id=\\\"add[qz_downpath]\\\" value=\\\"<?=stripSlashes($r[qz_downpath])?>\\\">\r\n        </td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'MEDIUMTEXT','',1,2,'download',0,'',0,0,1,'<input type=\\\"file\\\" name=\\\"downpathfile\\\" size=\\\"45\\\">\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(26,'softsay','软件简介','textarea','<textarea name=\\\"softsay\\\" cols=\\\"80\\\" rows=\\\"10\\\" id=\\\"softsay\\\"><?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[softsay]))?></textarea>\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--softsay--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_softsay]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_softsay]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_softsay]\\\" type=\\\"text\\\" id=\\\"add[z_softsay]\\\" value=\\\"<?=stripSlashes($r[z_softsay])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'TEXT','',1,2,'download',0,'',0,1,1,'<textarea name=\\\"softsay\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"softsay\\\"><?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'softsay\\\',stripSlashes($r[softsay]))?></textarea>\r\n',0,'',0,'80,10',0,0,'','','','','','',0,1,''),(27,'title','标题','text','<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#DBEAF5\\\">\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">\r\n	<?=$tts?\\\"<select name=\\\'ttid\\\'><option value=\\\'0\\\'>标题分类</option>$tts</select>\\\":\\\"\\\"?>\r\n	<input type=text name=title value=\\\"<?=ehtmlspecialchars(stripSlashes($r[title]))?>\\\" size=\\\"60\\\"> \r\n	<input type=\\\"button\\\" name=\\\"button\\\" value=\\\"图文\\\" onclick=\\\"document.add.title.value=document.add.title.value+\\\'(图文)\\\';\\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">属性: \r\n	<input name=\\\"titlefont[b]\\\" type=\\\"checkbox\\\" value=\\\"b\\\"<?=$titlefontb?>>粗体\r\n	<input name=\\\"titlefont[i]\\\" type=\\\"checkbox\\\" value=\\\"i\\\"<?=$titlefonti?>>斜体\r\n	<input name=\\\"titlefont[s]\\\" type=\\\"checkbox\\\" value=\\\"s\\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\\"titlecolor\\\" type=\\\"text\\\" value=\\\"<?=stripSlashes($r[titlecolor])?>\\\" size=\\\"10\\\" class=\\\"color\\\">\r\n  </td>\r\n</tr>\r\n</table>\r\n','标题',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--title--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_title]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_title]\" type=\"text\" id=\"add[z_title]\" value=\"<?=stripSlashes($r[z_title])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'CHAR','100',1,3,'photo',0,'',0,0,0,'<input name=\\\"title\\\" type=\\\"text\\\" size=\\\"42\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'title\\\',stripSlashes($r[title]))?>\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(28,'special.field','特殊属性','','\r\n<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#DBEAF5\">\r\n  <tr>\r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">信息属性: \r\n      <input name=\"checked\" type=\"checkbox\" value=\"1\"<?=$r[checked]?\' checked\':\'\'?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\"isgood\" id=\"isgood\">\r\n        <option value=\"0\">不推荐</option>\r\n	<?=$ftnr[\'igname\']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\"firsttitle\" id=\"firsttitle\">\r\n        <option value=\"0\">非头条</option>\r\n	<?=$ftnr[\'ftname\']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\"keyboard\" type=\"text\" size=\"52\" value=\"<?=stripSlashes($r[keyboard])?>\">\r\n      <font color=\"#666666\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">外部链接: \r\n      <input name=\"titleurl\" type=\"text\" value=\"<?=stripSlashes($r[titleurl])?>\" size=\"52\">\r\n      <font color=\"#666666\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n','特殊属性',0,1,0,'\r\n\r\n',0,'','0',0,3,'photo',0,'',0,0,0,'\r\n<input name=\"keyboard\" type=\"text\" size=42 value=\"<?=stripSlashes($r[keyboard])?>\">\r\n<font color=\"#666666\">(多个请用&quot;,&quot;隔开)</font>\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(29,'titlepic','标题图片','img','<input name=\\\"titlepic\\\" type=\\\"text\\\" id=\\\"titlepic\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[titlepic]))?>\\\" size=\\\"45\\\">\r\n<a onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\" title=\\\"选择已上传的图片\\\"><img src=\\\"../data/images/changeimg.gif\\\" border=\\\"0\\\" align=\\\"absbottom\\\"></a> \r\n','标题图片',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--titlepic--]\" size=\"20\">\r\n      )</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\"add[qz_titlepic]\" type=\"text\" id=\"add[qz_titlepic]\" value=\"<?=stripSlashes($r[qz_titlepic])?>\"> \r\n        <input name=\"add[save_titlepic]\" type=\"checkbox\" id=\"add[save_titlepic]\" value=\" checked\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\"add[zz_titlepic]\" cols=\"60\" rows=\"10\" id=\"add[zz_titlepic]\"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\"add[z_titlepic]\" type=\"text\" id=\"titlepic5\" value=\"<?=stripSlashes($r[z_titlepic])?>\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n',2,'CHAR','120',1,3,'photo',0,'',0,0,0,'<input type=\\\"file\\\" name=\\\"titlepicfile\\\" size=\\\"45\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(30,'newstime','发布时间','text','<input name=\\\"newstime\\\" type=\\\"text\\\" value=\\\"<?=$r[newstime]?>\\\" size=\\\"28\\\" class=\\\"Wdate\\\" onClick=\\\"WdatePicker({skin:\\\'default\\\',dateFmt:\\\'yyyy-MM-dd HH:mm:ss\\\'})\\\"><input type=button name=button value=\\\"设为当前时间\\\" onclick=\\\"document.add.newstime.value=\\\'<?=$todaytime?>\\\'\\\">\r\n','发布时间',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--newstime--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_newstime]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_newstime]\" type=\"text\" id=\"add[z_newstime]\" value=\"<?=stripSlashes($r[z_newstime])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'INT','11',1,3,'photo',0,'',1,0,0,'\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(31,'filesize','文件大小','text','<input name=\\\"filesize\\\" type=\\\"text\\\" id=\\\"filesize\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[filesize]))?>\\\" size=\\\"60\\\">\r\n<select name=\\\"select\\\" onchange=\\\"document.add.filesize.value+=this.value\\\">\r\n        <option value=\\\"\\\">单位</option>\r\n        <option value=\\\" MB\\\">MB</option>\r\n        <option value=\\\" KB\\\">KB</option>\r\n        <option value=\\\" GB\\\">GB</option>\r\n        <option value=\\\" BYTES\\\">BYTES</option>\r\n      </select>','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--filesize--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_filesize]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_filesize]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_filesize]\\\" type=\\\"text\\\" id=\\\"add[z_filesize]\\\" value=\\\"<?=stripSlashes($r[z_filesize])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','10',1,3,'photo',0,'',0,0,1,'<input name=\\\"filesize\\\" type=\\\"text\\\" id=\\\"filesize\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'filesize\\\',stripSlashes($r[filesize]))?>\\\" size=\\\"42\\\">\r\n<select name=\\\"select\\\" onchange=\\\"document.add.filesize.value+=this.value\\\">\r\n        <option value=\\\"\\\">单位</option>\r\n        <option value=\\\" MB\\\">MB</option>\r\n        <option value=\\\" KB\\\">KB</option>\r\n        <option value=\\\" GB\\\">GB</option>\r\n        <option value=\\\" BYTES\\\">BYTES</option>\r\n      </select>',0,'',0,'',1,0,'','','','','','',0,0,''),(32,'picsize','图片尺寸','text','<input name=\\\"picsize\\\" type=\\\"text\\\" id=\\\"picsize\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[picsize]))?>\\\" size=\\\"\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--picsize--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_picsize]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_picsize]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_picsize]\\\" type=\\\"text\\\" id=\\\"add[z_picsize]\\\" value=\\\"<?=stripSlashes($r[z_picsize])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','20',1,3,'photo',0,'',0,0,1,'<input name=\\\"picsize\\\" type=\\\"text\\\" id=\\\"picsize\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'picsize\\\',stripSlashes($r[picsize]))?>\\\" size=\\\"42\\\">\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(33,'picfbl','图片分辨率','text','<input name=\\\"picfbl\\\" type=\\\"text\\\" id=\\\"picfbl\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[picfbl]))?>\\\" size=\\\"\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--picfbl--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_picfbl]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_picfbl]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_picfbl]\\\" type=\\\"text\\\" id=\\\"add[z_picfbl]\\\" value=\\\"<?=stripSlashes($r[z_picfbl])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','20',1,3,'photo',0,'',0,0,1,'<input name=\\\"picfbl\\\" type=\\\"text\\\" id=\\\"picfbl\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'picfbl\\\',stripSlashes($r[picfbl]))?>\\\" size=\\\"42\\\">\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(34,'picfrom','来源','text','<input name=\\\"picfrom\\\" type=\\\"text\\\" id=\\\"picfrom\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[picfrom]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--picfrom--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_picfrom]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_picfrom]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_picfrom]\\\" type=\\\"text\\\" id=\\\"add[z_picfrom]\\\" value=\\\"<?=stripSlashes($r[z_picfrom])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','120',1,3,'photo',0,'',0,0,1,'<input name=\\\"picfrom\\\" type=\\\"text\\\" id=\\\"picfrom\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'picfrom\\\',stripSlashes($r[picfrom]))?>\\\" size=\\\"42\\\">\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(35,'picurl','图片大图','img','<input name=\\\"picurl\\\" type=\\\"text\\\" id=\\\"picurl\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[picurl]))?>\\\" size=\\\"45\\\">\r\n<a onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=picurl<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\" title=\\\"选择已上传的图片\\\"><img src=\\\"../data/images/changeimg.gif\\\" border=\\\"0\\\" align=\\\"absbottom\\\"></a> \r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--picurl--]\\\" size=\\\"20\\\">\r\n      )</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\\"add[qz_picurl]\\\" type=\\\"text\\\" id=\\\"add[qz_picurl]\\\" value=\\\"<?=stripSlashes($r[qz_picurl])?>\\\"> \r\n        <input name=\\\"add[save_picurl]\\\" type=\\\"checkbox\\\" id=\\\"add[save_picurl]\\\" value=\\\" checked\\\"<?=$r[save_picurl]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\\"add[zz_picurl]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"add[zz_picurl]\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_picurl]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\\"add[z_picurl]\\\" type=\\\"text\\\" id=\\\"picurl5\\\" value=\\\"<?=stripSlashes($r[z_picurl])?>\\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n',2,'VARCHAR','200',1,3,'photo',0,'',0,0,1,'<input type=\\\"file\\\" name=\\\"picurlfile\\\" size=\\\"45\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(36,'morepic','图片集','text','<script>\r\nfunction dopicadd()\r\n{var i;\r\nvar str=\\\"\\\";\r\nvar oldi=0;\r\nvar j=0;\r\noldi=parseInt(document.add.morepicnum.value);\r\nfor(i=1;i<=document.add.downmorepicnum.value;i++)\r\n{\r\nj=i+oldi;\r\nstr=str+\\\"<tr><td width=7%><div align=center>\\\"+j+\\\"</div></td><td width=33%><div align=center><input name=msmallpic[] type=text size=28 id=msmallpic\\\"+j+\\\" ondblclick=SpOpenChFile(1,\\\'msmallpic\\\"+j+\\\"\\\')><br><input type=file name=msmallpfile[] size=15></div></td><td width=30%><div align=center><input name=mbigpic[] type=text size=28 id=mbigpic\\\"+j+\\\" ondblclick=SpOpenChFile(1,\\\'mbigpic\\\"+j+\\\"\\\')><br><input type=file name=mbigpfile[] size=15></div></td><td width=30%><div align=center><input name=mpicname[] type=text></div></td></tr>\\\";\r\n}\r\ndocument.getElementById(\\\"addpicdown\\\").innerHTML=\\\"<table width=\\\'100%\\\' border=0 cellspacing=1 cellpadding=3>\\\"+str+\\\"</table>\\\";\r\n}\r\n</script>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n  <tr>\r\n    <td height=\\\"25\\\">\r\n	图片地址前缀:\r\n      <input name=\\\"mpicurl_qz\\\" type=\\\"text\\\" id=\\\"mpicurl_qz\\\">&nbsp;&nbsp;\r\n	  <input type=\\\"checkbox\\\" name=\\\"msavepic\\\" value=\\\"1\\\">远程保存&nbsp;<input type=\\\"checkbox\\\" name=\\\"mcreatespic\\\" value=\\\"1\\\" onclick=\\\"if(this.checked){setmcreatespic.style.display=\\\'\\\';}else{setmcreatespic.style.display=\\\'none\\\';}\\\">生成缩图\r\n	  <span id=\\\"setmcreatespic\\\" style=\\\"display:none\\\">：<input type=text name=\\\"mcreatespicwidth\\\" size=4 value=\\\"<?=$public_r[spicwidth]?>\\\">*<input type=text name=\\\"mcreatespicheight\\\" size=4 value=\\\"<?=$public_r[spicheight]?>\\\">(宽*高)</span>\r\n<?php\r\nif(TranmoreIsOpen())\r\n{\r\n?>\r\n<input type=\"button\" name=\"Submit\" value=\"多选上传\" onclick=\"window.open(\'ecmseditor/tranmore/tranmore.php?type=1&classid=<?=$classid?>&filepass=<?=$filepass?>&infoid=<?=$id?>&modtype=0&sinfo=1&ecmsdo=ecmstmmorepic&tranfrom=2<?=$ecms_hashur[\'ehref\']?>&oldmorepicnum=\'+document.add.morepicnum.value,\'ecmstmpage\',\'width=700,height=550,scrollbars=yes\');\">\r\n<?php\r\n}\r\n?>\r\n </td>\r\n  </tr>\r\n  <tr> \r\n    <td><table width=\\\"100%\\\" border=0 align=center cellpadding=3 cellspacing=1>\r\n  <tr bgcolor=\\\"#DBEAF5\\\"> \r\n    <td width=\\\"7%\\\"><div align=center>编号</div></td>\r\n    <td width=\\\"33%\\\"><div align=center>缩图 <font color=\\\"#666666\\\">(双击选择)</font></div></td>\r\n    <td width=\\\"30%\\\"><div align=center>大图 <font color=\\\"#666666\\\">(双击选择)</font></div></td>\r\n    <td width=\\\"30%\\\"><div align=center>图片说明</div></td>\r\n  </tr>\r\n</table></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=defmorepicid>\r\n    <?php\r\n    if($ecmsfirstpost==1)\r\n    {\r\n	?>\r\n	<table width=\\\'100%\\\' border=0 align=center cellpadding=3 cellspacing=1>\r\n	<?php\r\n	$morepicnum=3;\r\n	for($mppathi=1;$mppathi<=$morepicnum;$mppathi++)\r\n	{\r\n	?>\r\n	<tr> \r\n		<td width=\\\'7%\\\'><div align=center><?=$mppathi?></div></td>\r\n		<td width=\\\'33%\\\'><div align=center>\r\n		<input name=msmallpic[] type=text id=\\\'msmallpic<?=$mppathi?>\\\' size=28 ondblclick=\\\"SpOpenChFile(1,\\\'msmallpic<?=$mppathi?>\\\');\\\">\r\n		<br><input type=file name=msmallpfile[] size=15>\r\n		</div></td>\r\n		<td width=\\\'30%\\\'><div align=center>\r\n		<input name=mbigpic[] type=text id=\\\'mbigpic<?=$mppathi?>\\\' size=28 ondblclick=\\\"SpOpenChFile(1,\\\'mbigpic<?=$mppathi?>\\\');\\\">\r\n		<br><input type=file name=mbigpfile[] size=15>\r\n		</div></td>\r\n		<td width=\\\'30%\\\'><div align=center>\r\n		<input name=mpicname[] type=text id=\\\'mpicname<?=$mppathi?>\\\'>\r\n		</div></td>\r\n	</tr>\r\n	<?php\r\n	}\r\n	?>\r\n	</table>\r\n	<?php\r\n    }\r\n    else\r\n    {\r\n	$morepicpath=\\\"\\\";\r\n	$morepicnum=0;\r\n	if($r[morepic])\r\n    	{\r\n    		$r[morepic]=stripSlashes($r[morepic]);\r\n    		//地址\r\n    		$j=0;\r\n    		$pd_record=explode(\\\"\\\\r\\\\n\\\",$r[morepic]);\r\n    		for($i=0;$i<count($pd_record);$i++)\r\n    		{\r\n			$j=$i+1;\r\n    			$pd_field=explode(\\\"::::::\\\",$pd_record[$i]);\r\n			$morepicpath.=\\\"<tr> \r\n    <td width=\\\'7%\\\'><div align=center>\\\".$j.\\\"</div></td>\r\n    <td width=\\\'33%\\\'><div align=center>\r\n        <input name=msmallpic[] type=text value=\\\'\\\".$pd_field[0].\\\"\\\' size=28 id=msmallpic\\\".$j.\\\" ondblclick=\\\\\\\"SpOpenChFile(1,\\\'msmallpic\\\".$j.\\\"\\\');\\\\\\\">\r\n		<br><input type=file name=msmallpfile[] size=15>\r\n      </div></td>\r\n    <td width=\\\'30%\\\'><div align=center>\r\n        <input name=mbigpic[] type=text value=\\\'\\\".$pd_field[1].\\\"\\\' size=28 id=mbigpic\\\".$j.\\\" ondblclick=\\\\\\\"SpOpenChFile(1,\\\'mbigpic\\\".$j.\\\"\\\');\\\\\\\">\r\n		<br><input type=file name=mbigpfile[] size=15>\r\n      </div></td>\r\n    <td width=\\\'30%\\\'><div align=center>\r\n        <input name=mpicname[] type=text value=\\\'\\\".$pd_field[2].\\\"\\\'><input type=hidden name=mpicid[] value=\\\".$j.\\\"><input type=checkbox name=mdelpicid[] value=\\\".$j.\\\">删\r\n      </div></td>\r\n  </tr>\\\";\r\n    		}\r\n    		$morepicnum=$j;\r\n    		$morepicpath=\\\"<table width=\\\'100%\\\' border=0 cellspacing=1 cellpadding=3>\\\".$morepicpath.\\\"</table>\\\";\r\n    	}\r\n	echo $morepicpath;\r\n    }\r\n    ?>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\\"25\\\">地址扩展数量: <input name=\\\"morepicnum\\\" type=\\\"hidden\\\" id=\\\"morepicnum\\\" value=\\\"<?=$morepicnum?>\\\">\r\n      <input name=\\\"downmorepicnum\\\" type=\\\"text\\\" value=\\\"1\\\" size=\\\"6\\\"> <input type=\\\"button\\\" name=\\\"Submit5\\\" value=\\\"输出地址\\\" onclick=\\\"javascript:dopicadd();\\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=addpicdown></td>\r\n  </tr>\r\n</table>\r\n','',1,1,1,'  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (\r\n      <input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--ecmsspicurl--]\\\" size=\\\"20\\\">\r\n      <br>\r\n      <input name=\\\"textfield2\\\" type=\\\"text\\\" id=\\\"textfield2\\\" value=\\\"[!--ecmsbpicurl--]\\\" size=\\\"20\\\">\r\n	  <br>\r\n      <input name=\\\"textfield2\\\" type=\\\"text\\\" id=\\\"textfield2\\\" value=\\\"[!--ecmspicname--]\\\" size=\\\"20\\\">\r\n      )<br>\r\n      格式:缩略图[!empirecms!]大图[!empirecms!]名称</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_morepic]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_morepic]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td>地址前缀:\r\n<input name=\\\"add[qz_morepic]\\\" type=\\\"text\\\" id=\\\"add[qz_morepic]\\\" value=\\\"<?=stripSlashes($r[qz_morepic])?>\\\">\r\n<input name=\\\"add[save_morepic]\\\" type=\\\"checkbox\\\" id=\\\"add[save_morepic]\\\" value=\\\" checked\\\"<?=$r[save_morepic]?>>\r\n        远程保存\r\n        </td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'MEDIUMTEXT','',1,3,'photo',0,'',0,0,1,'<script>\r\nfunction dopicadd()\r\n{var i;\r\nvar str=\\\"\\\";\r\nvar oldi=0;\r\nvar j=0;\r\noldi=parseInt(document.add.morepicnum.value);\r\nfor(i=1;i<=document.add.downmorepicnum.value;i++)\r\n{\r\nj=i+oldi;\r\nstr=str+\\\"<tr><td width=7%><div align=center>\\\"+j+\\\"</div></td><td width=33%><div align=center><input name=msmallpic[] type=text size=28 id=msmallpic\\\"+j+\\\"></div></td><td width=30%><div align=center><input name=mbigpic[] type=text size=28 id=mbigpic\\\"+j+\\\"></div></td><td width=30%><div align=center><input name=mpicname[] type=text></div></td></tr>\\\";\r\n}\r\ndocument.getElementById(\\\"addpicdown\\\").innerHTML=\\\"<table width=\\\'100%\\\' border=0 cellspacing=1 cellpadding=3>\\\"+str+\\\"</table>\\\";\r\n}\r\n</script>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n  <tr>\r\n    <td height=\\\"25\\\">\r\n	图片地址前缀:\r\n      <input name=\\\"mpicurl_qz\\\" type=\\\"text\\\" id=\\\"mpicurl_qz\\\" size=\\\"32\\\">\r\n      &nbsp;</td>\r\n  </tr>\r\n  <tr> \r\n    <td><table width=100% border=0 align=center cellpadding=3 cellspacing=1>\r\n  <tr bgcolor=\\\'#DBEAF5\\\'> \r\n    <td width=7%><div align=center>编号</div></td>\r\n    <td width=33%><div align=center>缩图</div></td>\r\n    <td width=30%><div align=center>大图</div></td>\r\n    <td width=30%><div align=center>图片说明</div></td>\r\n  </tr>\r\n</table></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=defmorepicid> \r\n    <?php\r\n    if($ecmsfirstpost==1)\r\n    {\r\n	?>\r\n	<table width=\\\'100%\\\' border=0 align=center cellpadding=3 cellspacing=1>\r\n	<?php\r\n	$morepicnum=3;\r\n	for($mppathi=1;$mppathi<=$morepicnum;$mppathi++)\r\n	{\r\n	?>\r\n	<tr> \r\n		<td width=\\\'7%\\\'><div align=center><?=$mppathi?></div></td>\r\n		<td width=\\\'33%\\\'><div align=center>\r\n		<input name=msmallpic[] type=text id=msmallpic[] size=28>\r\n		</div></td>\r\n		<td width=\\\'30%\\\'><div align=center>\r\n		<input name=mbigpic[] type=text id=mbigpic[] size=28>\r\n		</div></td>\r\n		<td width=\\\'30%\\\'><div align=center>\r\n		<input name=mpicname[] type=text id=mpicname[]>\r\n		</div></td>\r\n	</tr>\r\n	<?php\r\n	}\r\n	?>\r\n	</table>\r\n	<?php\r\n    }\r\n    else\r\n    {\r\n	$morepicpath=\\\"\\\";\r\n	$morepicnum=0;\r\n	if($r[morepic])\r\n	{\r\n		$r[morepic]=stripSlashes($r[morepic]);\r\n		//地址\r\n		$j=0;\r\n		$pd_record=explode(\\\"\\\\r\\\\n\\\",$r[morepic]);\r\n		for($i=0;$i<count($pd_record);$i++)\r\n		{\r\n			$j=$i+1;\r\n			$pd_field=explode(\\\"::::::\\\",$pd_record[$i]);\r\n			$morepicpath.=\\\"<tr> \r\n	<td width=\\\'7%\\\'><div align=center>\\\".$j.\\\"</div></td>\r\n    <td width=\\\'33%\\\'><div align=center>\r\n        <input name=msmallpic[] type=text value=\\\'\\\".$pd_field[0].\\\"\\\' size=28>\r\n      </div></td>\r\n    <td width=\\\'30%\\\'><div align=center>\r\n        <input name=mbigpic[] type=text value=\\\'\\\".$pd_field[1].\\\"\\\' size=28>\r\n      </div></td>\r\n    <td width=\\\'30%\\\'><div align=center>\r\n        <input name=mpicname[] type=text value=\\\'\\\".$pd_field[2].\\\"\\\'><input type=hidden name=mpicid[] value=\\\".$j.\\\"><input type=checkbox name=mdelpicid[] value=\\\".$j.\\\">删\r\n      </div></td></tr>\\\";\r\n		}\r\n		$morepicnum=$j;\r\n		$morepicpath=\\\"<table width=\\\'100%\\\' border=0 cellspacing=1 cellpadding=3>\\\".$morepicpath.\\\"</table>\\\";\r\n	}\r\n	echo $morepicpath;\r\n    }\r\n    ?>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\\"25\\\">地址扩展数量: <input name=\\\"morepicnum\\\" type=\\\"hidden\\\" id=\\\"morepicnum\\\" value=\\\"<?=$morepicnum?>\\\">\r\n      <input name=\\\"downmorepicnum\\\" type=\\\"text\\\" value=\\\"1\\\" size=\\\"6\\\"> <input type=\\\"button\\\" name=\\\"Submit5\\\" value=\\\"输出地址\\\" onclick=\\\"javascript:dopicadd();\\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=addpicdown></td>\r\n  </tr>\r\n</table>\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(37,'num','每行显示条数','text','<input name=\\\"num\\\" type=\\\"text\\\" id=\\\"num\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"3\\\":ehtmlspecialchars(stripSlashes($r[num]))?>\\\" size=\\\"\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--num--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_num]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_num]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_num]\\\" type=\\\"text\\\" id=\\\"add[z_num]\\\" value=\\\"<?=stripSlashes($r[z_num])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'TINYINT','',1,3,'photo',0,'3',0,0,1,'<input name=\\\"num\\\" type=\\\"text\\\" id=\\\"num\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"3\\\":DoReqValue($mid,\\\'num\\\',stripSlashes($r[num]))?>\\\" size=\\\"3\\\">\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(38,'width','缩图宽度','text','<input name=\\\"width\\\" type=\\\"text\\\" id=\\\"width\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[width]))?>\\\" size=\\\"6\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--width--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_width]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_width]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_width]\\\" type=\\\"text\\\" id=\\\"add[z_width]\\\" value=\\\"<?=stripSlashes($r[z_width])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'VARCHAR','12',1,3,'photo',0,'',0,0,1,'<input name=\\\"width\\\" type=\\\"text\\\" id=\\\"width\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'width\\\',stripSlashes($r[width]))?>\\\" size=\\\"6\\\">\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(39,'height','缩图高度','text','<input name=\\\"height\\\" type=\\\"text\\\" id=\\\"height\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[height]))?>\\\" size=\\\"6\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--height--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_height]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_height]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_height]\\\" type=\\\"text\\\" id=\\\"add[z_height]\\\" value=\\\"<?=stripSlashes($r[z_height])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'VARCHAR','12',1,3,'photo',0,'',0,0,1,'<input name=\\\"height\\\" type=\\\"text\\\" id=\\\"height\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'height\\\',stripSlashes($r[height]))?>\\\" size=\\\"6\\\">\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(40,'picsay','图片简介','textarea','<textarea name=\\\"picsay\\\" cols=\\\"80\\\" rows=\\\"10\\\" id=\\\"picsay\\\"><?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[picsay]))?></textarea>\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--picsay--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_picsay]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_picsay]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_picsay]\\\" type=\\\"text\\\" id=\\\"add[z_picsay]\\\" value=\\\"<?=stripSlashes($r[z_picsay])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'TEXT','',1,3,'photo',0,'',0,1,1,'<textarea name=\\\"picsay\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"picsay\\\"><?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'picsay\\\',stripSlashes($r[picsay]))?></textarea>\r\n',0,'',0,'80,10',0,0,'','','','','','',0,1,''),(41,'title','标题','text','<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#DBEAF5\\\">\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">\r\n	<?=$tts?\\\"<select name=\\\'ttid\\\'><option value=\\\'0\\\'>标题分类</option>$tts</select>\\\":\\\"\\\"?>\r\n	<input type=text name=title value=\\\"<?=ehtmlspecialchars(stripSlashes($r[title]))?>\\\" size=\\\"60\\\"> \r\n	<input type=\\\"button\\\" name=\\\"button\\\" value=\\\"图文\\\" onclick=\\\"document.add.title.value=document.add.title.value+\\\'(图文)\\\';\\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">属性: \r\n	<input name=\\\"titlefont[b]\\\" type=\\\"checkbox\\\" value=\\\"b\\\"<?=$titlefontb?>>粗体\r\n	<input name=\\\"titlefont[i]\\\" type=\\\"checkbox\\\" value=\\\"i\\\"<?=$titlefonti?>>斜体\r\n	<input name=\\\"titlefont[s]\\\" type=\\\"checkbox\\\" value=\\\"s\\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\\"titlecolor\\\" type=\\\"text\\\" value=\\\"<?=stripSlashes($r[titlecolor])?>\\\" size=\\\"10\\\" class=\\\"color\\\">\r\n  </td>\r\n</tr>\r\n</table>\r\n','标题',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--title--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_title]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_title]\" type=\"text\" id=\"add[z_title]\" value=\"<?=stripSlashes($r[z_title])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'CHAR','100',1,4,'flash',0,'',0,0,0,'<input name=\\\"title\\\" type=\\\"text\\\" size=\\\"42\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'title\\\',stripSlashes($r[title]))?>\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(42,'special.field','特殊属性','','\r\n<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#DBEAF5\">\r\n  <tr>\r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">信息属性: \r\n      <input name=\"checked\" type=\"checkbox\" value=\"1\"<?=$r[checked]?\' checked\':\'\'?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\"isgood\" id=\"isgood\">\r\n        <option value=\"0\">不推荐</option>\r\n	<?=$ftnr[\'igname\']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\"firsttitle\" id=\"firsttitle\">\r\n        <option value=\"0\">非头条</option>\r\n	<?=$ftnr[\'ftname\']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\"keyboard\" type=\"text\" size=\"52\" value=\"<?=stripSlashes($r[keyboard])?>\">\r\n      <font color=\"#666666\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">外部链接: \r\n      <input name=\"titleurl\" type=\"text\" value=\"<?=stripSlashes($r[titleurl])?>\" size=\"52\">\r\n      <font color=\"#666666\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n','特殊属性',0,1,0,'\r\n\r\n',0,'','0',0,4,'flash',0,'',0,0,0,'\r\n<input name=\"keyboard\" type=\"text\" size=42 value=\"<?=stripSlashes($r[keyboard])?>\">\r\n<font color=\"#666666\">(多个请用&quot;,&quot;隔开)</font>\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(43,'titlepic','标题图片','img','<input name=\\\"titlepic\\\" type=\\\"text\\\" id=\\\"titlepic\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[titlepic]))?>\\\" size=\\\"45\\\">\r\n<a onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\" title=\\\"选择已上传的图片\\\"><img src=\\\"../data/images/changeimg.gif\\\" border=\\\"0\\\" align=\\\"absbottom\\\"></a> \r\n','标题图片',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--titlepic--]\" size=\"20\">\r\n      )</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\"add[qz_titlepic]\" type=\"text\" id=\"add[qz_titlepic]\" value=\"<?=stripSlashes($r[qz_titlepic])?>\"> \r\n        <input name=\"add[save_titlepic]\" type=\"checkbox\" id=\"add[save_titlepic]\" value=\" checked\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\"add[zz_titlepic]\" cols=\"60\" rows=\"10\" id=\"add[zz_titlepic]\"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\"add[z_titlepic]\" type=\"text\" id=\"titlepic5\" value=\"<?=stripSlashes($r[z_titlepic])?>\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n',1,'CHAR','120',1,4,'flash',0,'',0,0,0,'<input type=\\\"file\\\" name=\\\"titlepicfile\\\" size=\\\"45\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(44,'newstime','发布时间','text','<input name=\\\"newstime\\\" type=\\\"text\\\" value=\\\"<?=$r[newstime]?>\\\" size=\\\"28\\\" class=\\\"Wdate\\\" onClick=\\\"WdatePicker({skin:\\\'default\\\',dateFmt:\\\'yyyy-MM-dd HH:mm:ss\\\'})\\\"><input type=button name=button value=\\\"设为当前时间\\\" onclick=\\\"document.add.newstime.value=\\\'<?=$todaytime?>\\\'\\\">\r\n','发布时间',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--newstime--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_newstime]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_newstime]\" type=\"text\" id=\"add[z_newstime]\" value=\"<?=stripSlashes($r[z_newstime])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'INT','11',1,4,'flash',0,'',1,0,0,'\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(45,'flashwriter','作者','text','<input name=\\\"flashwriter\\\" type=\\\"text\\\" id=\\\"flashwriter\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[flashwriter]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--flashwriter--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_flashwriter]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_flashwriter]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_flashwriter]\\\" type=\\\"text\\\" id=\\\"add[z_flashwriter]\\\" value=\\\"<?=stripSlashes($r[z_flashwriter])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','30',1,4,'flash',0,'',0,0,1,'<input name=\\\"flashwriter\\\" type=\\\"text\\\" id=\\\"flashwriter\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'flashwriter\\\',stripSlashes($r[flashwriter]))?>\\\" size=\\\"42\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(46,'email','作者邮箱','text','<input name=\\\"email\\\" type=\\\"text\\\" id=\\\"email\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[email]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--email--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_email]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_email]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_email]\\\" type=\\\"text\\\" id=\\\"add[z_email]\\\" value=\\\"<?=stripSlashes($r[z_email])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','80',1,4,'flash',0,'',0,0,1,'<input name=\\\"email\\\" type=\\\"text\\\" id=\\\"email\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'email\\\',stripSlashes($r[email]))?>\\\" size=\\\"42\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(47,'star','作品等级','select','<select name=\\\"star\\\" id=\\\"star\\\"><option value=\\\"1\\\"<?=$r[star]==\\\"1\\\"?\\\' selected\\\':\\\'\\\'?>>1星</option><option value=\\\"2\\\"<?=$r[star]==\\\"2\\\"||$ecmsfirstpost==1?\\\' selected\\\':\\\'\\\'?>>2星</option><option value=\\\"3\\\"<?=$r[star]==\\\"3\\\"?\\\' selected\\\':\\\'\\\'?>>3星</option><option value=\\\"4\\\"<?=$r[star]==\\\"4\\\"?\\\' selected\\\':\\\'\\\'?>>4星</option><option value=\\\"5\\\"<?=$r[star]==\\\"5\\\"?\\\' selected\\\':\\\'\\\'?>>5星</option></select>','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--star--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_star]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_star]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_star]\\\" type=\\\"text\\\" id=\\\"add[z_star]\\\" value=\\\"<?=stripSlashes($r[z_star])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'TINYINT','1',1,4,'flash',0,'1|2:default|3|4|5',0,0,1,'<select name=\\\"star\\\" id=\\\"star\\\"><option value=\\\"1\\\"<?=$r[star]==\\\"1\\\"?\\\' selected\\\':\\\'\\\'?>>1星</option><option value=\\\"2\\\"<?=$r[star]==\\\"2\\\"||$ecmsfirstpost==1?\\\' selected\\\':\\\'\\\'?>>2星</option><option value=\\\"3\\\"<?=$r[star]==\\\"3\\\"?\\\' selected\\\':\\\'\\\'?>>3星</option><option value=\\\"4\\\"<?=$r[star]==\\\"4\\\"?\\\' selected\\\':\\\'\\\'?>>4星</option><option value=\\\"5\\\"<?=$r[star]==\\\"5\\\"?\\\' selected\\\':\\\'\\\'?>>5星</option></select>',0,'',0,'',0,0,'','','','','','',0,0,''),(48,'filesize','文件大小','text','<input name=\\\"filesize\\\" type=\\\"text\\\" id=\\\"filesize\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[filesize]))?>\\\" size=\\\"60\\\">\r\n<select name=\\\"select\\\" onchange=\\\"document.add.filesize.value+=this.value\\\">\r\n        <option value=\\\"\\\">单位</option>\r\n        <option value=\\\" MB\\\">MB</option>\r\n        <option value=\\\" KB\\\">KB</option>\r\n        <option value=\\\" GB\\\">GB</option>\r\n        <option value=\\\" BYTES\\\">BYTES</option>\r\n      </select>','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--filesize--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_filesize]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_filesize]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_filesize]\\\" type=\\\"text\\\" id=\\\"add[z_filesize]\\\" value=\\\"<?=stripSlashes($r[z_filesize])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','16',1,4,'flash',0,'',0,0,1,'<input name=\\\"filesize\\\" type=\\\"text\\\" id=\\\"filesize\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'filesize\\\',stripSlashes($r[filesize]))?>\\\" size=\\\"42\\\">\r\n<select name=\\\"select\\\" onchange=\\\"document.add.filesize.value+=this.value\\\">\r\n        <option value=\\\"\\\">单位</option>\r\n        <option value=\\\" MB\\\">MB</option>\r\n        <option value=\\\" KB\\\">KB</option>\r\n        <option value=\\\" GB\\\">GB</option>\r\n        <option value=\\\" BYTES\\\">BYTES</option>\r\n      </select>',0,'',0,'',0,0,'','','','','','',0,0,''),(49,'flashurl','Flash地址','flash','<input name=\\\"flashurl\\\" type=\\\"text\\\" id=\\\"flashurl\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[flashurl]))?>\\\" size=\\\"45\\\">\r\n<a onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=2&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=flashurl<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\" title=\\\"选择已上传的FLASH\\\"><img src=\\\"../data/images/changeflash.gif\\\" border=\\\"0\\\" align=\\\"absbottom\\\"></a> \r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--flashurl--]\\\" size=\\\"20\\\">\r\n      )</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\\"add[qz_flashurl]\\\" type=\\\"text\\\" id=\\\"add[qz_flashurl]\\\" value=\\\"<?=stripSlashes($r[qz_flashurl])?>\\\"> \r\n        <input name=\\\"add[save_flashurl]\\\" type=\\\"checkbox\\\" id=\\\"add[save_flashurl]\\\" value=\\\" checked\\\"<?=$r[save_flashurl]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\\"add[zz_flashurl]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"add[zz_flashurl]\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_flashurl]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\\"add[z_flashurl]\\\" type=\\\"text\\\" id=\\\"flashurl5\\\" value=\\\"<?=stripSlashes($r[z_flashurl])?>\\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n',1,'VARCHAR','255',1,4,'flash',0,'',0,0,1,'<input type=\\\"file\\\" name=\\\"flashurlfile\\\" size=\\\"45\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(50,'width','Flash宽度','text','<input name=\\\"width\\\" type=\\\"text\\\" id=\\\"width\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"600\\\":ehtmlspecialchars(stripSlashes($r[width]))?>\\\" size=\\\"6\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--width--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_width]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_width]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_width]\\\" type=\\\"text\\\" id=\\\"add[z_width]\\\" value=\\\"<?=stripSlashes($r[z_width])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','12',1,4,'flash',0,'600',0,0,1,'<input name=\\\"width\\\" type=\\\"text\\\" id=\\\"width\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"600\\\":DoReqValue($mid,\\\'width\\\',stripSlashes($r[width]))?>\\\" size=\\\"6\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(51,'height','Flash高度','text','<input name=\\\"height\\\" type=\\\"text\\\" id=\\\"height\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"450\\\":ehtmlspecialchars(stripSlashes($r[height]))?>\\\" size=\\\"6\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--height--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_height]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_height]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_height]\\\" type=\\\"text\\\" id=\\\"add[z_height]\\\" value=\\\"<?=stripSlashes($r[z_height])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','12',1,4,'flash',0,'450',0,0,1,'<input name=\\\"height\\\" type=\\\"text\\\" id=\\\"height\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"450\\\":DoReqValue($mid,\\\'height\\\',stripSlashes($r[height]))?>\\\" size=\\\"6\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(52,'flashsay','作品简介','textarea','<textarea name=\\\"flashsay\\\" cols=\\\"80\\\" rows=\\\"10\\\" id=\\\"flashsay\\\"><?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[flashsay]))?></textarea>\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--flashsay--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_flashsay]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_flashsay]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_flashsay]\\\" type=\\\"text\\\" id=\\\"add[z_flashsay]\\\" value=\\\"<?=stripSlashes($r[z_flashsay])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'TEXT','',1,4,'flash',0,'',0,1,1,'<textarea name=\\\"flashsay\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"flashsay\\\"><?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'flashsay\\\',stripSlashes($r[flashsay]))?></textarea>\r\n',0,'',0,'80,10',0,0,'','','','','','',0,1,''),(53,'title','标题','text','<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#DBEAF5\\\">\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">\r\n	<?=$tts?\\\"<select name=\\\'ttid\\\'><option value=\\\'0\\\'>标题分类</option>$tts</select>\\\":\\\"\\\"?>\r\n	<input type=text name=title value=\\\"<?=ehtmlspecialchars(stripSlashes($r[title]))?>\\\" size=\\\"60\\\"> \r\n	<input type=\\\"button\\\" name=\\\"button\\\" value=\\\"图文\\\" onclick=\\\"document.add.title.value=document.add.title.value+\\\'(图文)\\\';\\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">属性: \r\n	<input name=\\\"titlefont[b]\\\" type=\\\"checkbox\\\" value=\\\"b\\\"<?=$titlefontb?>>粗体\r\n	<input name=\\\"titlefont[i]\\\" type=\\\"checkbox\\\" value=\\\"i\\\"<?=$titlefonti?>>斜体\r\n	<input name=\\\"titlefont[s]\\\" type=\\\"checkbox\\\" value=\\\"s\\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\\"titlecolor\\\" type=\\\"text\\\" value=\\\"<?=stripSlashes($r[titlecolor])?>\\\" size=\\\"10\\\" class=\\\"color\\\">\r\n  </td>\r\n</tr>\r\n</table>\r\n','标题',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--title--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_title]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_title]\" type=\"text\" id=\"add[z_title]\" value=\"<?=stripSlashes($r[z_title])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'CHAR','100',1,5,'movie',0,'',0,0,0,'<input name=\\\"title\\\" type=\\\"text\\\" size=\\\"42\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'title\\\',stripSlashes($r[title]))?>\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(54,'special.field','特殊属性','','\r\n<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#DBEAF5\">\r\n  <tr>\r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">信息属性: \r\n      <input name=\"checked\" type=\"checkbox\" value=\"1\"<?=$r[checked]?\' checked\':\'\'?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\"isgood\" id=\"isgood\">\r\n        <option value=\"0\">不推荐</option>\r\n	<?=$ftnr[\'igname\']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\"firsttitle\" id=\"firsttitle\">\r\n        <option value=\"0\">非头条</option>\r\n	<?=$ftnr[\'ftname\']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\"keyboard\" type=\"text\" size=\"52\" value=\"<?=stripSlashes($r[keyboard])?>\">\r\n      <font color=\"#666666\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">外部链接: \r\n      <input name=\"titleurl\" type=\"text\" value=\"<?=stripSlashes($r[titleurl])?>\" size=\"52\">\r\n      <font color=\"#666666\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n','特殊属性',0,1,0,'\r\n\r\n',0,'','0',0,5,'movie',0,'',0,0,0,'\r\n<input name=\"keyboard\" type=\"text\" size=42 value=\"<?=stripSlashes($r[keyboard])?>\">\r\n<font color=\"#666666\">(多个请用&quot;,&quot;隔开)</font>\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(55,'titlepic','标题图片','img','<input name=\\\"titlepic\\\" type=\\\"text\\\" id=\\\"titlepic\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[titlepic]))?>\\\" size=\\\"45\\\">\r\n<a onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\" title=\\\"选择已上传的图片\\\"><img src=\\\"../data/images/changeimg.gif\\\" border=\\\"0\\\" align=\\\"absbottom\\\"></a> \r\n','标题图片',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--titlepic--]\" size=\"20\">\r\n      )</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\"add[qz_titlepic]\" type=\"text\" id=\"add[qz_titlepic]\" value=\"<?=stripSlashes($r[qz_titlepic])?>\"> \r\n        <input name=\"add[save_titlepic]\" type=\"checkbox\" id=\"add[save_titlepic]\" value=\" checked\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\"add[zz_titlepic]\" cols=\"60\" rows=\"10\" id=\"add[zz_titlepic]\"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\"add[z_titlepic]\" type=\"text\" id=\"titlepic5\" value=\"<?=stripSlashes($r[z_titlepic])?>\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n',1,'CHAR','120',1,5,'movie',0,'',0,0,0,'<input type=\\\"file\\\" name=\\\"titlepicfile\\\" size=\\\"45\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(56,'newstime','发布时间','text','<input name=\\\"newstime\\\" type=\\\"text\\\" value=\\\"<?=$r[newstime]?>\\\" size=\\\"28\\\" class=\\\"Wdate\\\" onClick=\\\"WdatePicker({skin:\\\'default\\\',dateFmt:\\\'yyyy-MM-dd HH:mm:ss\\\'})\\\"><input type=button name=button value=\\\"设为当前时间\\\" onclick=\\\"document.add.newstime.value=\\\'<?=$todaytime?>\\\'\\\">\r\n','发布时间',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--newstime--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_newstime]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_newstime]\" type=\"text\" id=\"add[z_newstime]\" value=\"<?=stripSlashes($r[z_newstime])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'INT','11',1,5,'movie',0,'',1,0,0,'\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(57,'movietype','影片类型','select','<select name=\"movietype\" id=\"movietype\"><option value=\"港台影视\"<?=$r[movietype]==\"港台影视\"?\' selected\':\'\'?>>港台影视</option><option value=\"海外影视\"<?=$r[movietype]==\"海外影视\"?\' selected\':\'\'?>>海外影视</option><option value=\"大陆影视\"<?=$r[movietype]==\"大陆影视\"?\' selected\':\'\'?>>大陆影视</option><option value=\"日韩影视\"<?=$r[movietype]==\"日韩影视\"?\' selected\':\'\'?>>日韩影视</option></select>','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--movietype--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_movietype]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_movietype]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_movietype]\\\" type=\\\"text\\\" id=\\\"add[z_movietype]\\\" value=\\\"<?=stripSlashes($r[z_movietype])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','16',1,5,'movie',0,'港台影视|海外影视|大陆影视|日韩影视',0,0,1,'<select name=\"movietype\" id=\"movietype\"><option value=\"港台影视\"<?=$r[movietype]==\"港台影视\"?\' selected\':\'\'?>>港台影视</option><option value=\"海外影视\"<?=$r[movietype]==\"海外影视\"?\' selected\':\'\'?>>海外影视</option><option value=\"大陆影视\"<?=$r[movietype]==\"大陆影视\"?\' selected\':\'\'?>>大陆影视</option><option value=\"日韩影视\"<?=$r[movietype]==\"日韩影视\"?\' selected\':\'\'?>>日韩影视</option></select>',0,'',0,'',0,0,'','','','','','',0,0,''),(58,'company','出品公司','text','\r\n<input name=\\\"company\\\" type=\\\"text\\\" id=\\\"company\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[company]))?>\\\" size=\\\"\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--company--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_company]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_company]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_company]\\\" type=\\\"text\\\" id=\\\"add[z_company]\\\" value=\\\"<?=stripSlashes($r[z_company])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','200',1,5,'movie',0,'',0,0,1,'\r\n<input name=\\\"company\\\" type=\\\"text\\\" id=\\\"company\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'company\\\',stripSlashes($r[company]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(59,'movietime','出品时间','text','\r\n<input name=\\\"movietime\\\" type=\\\"text\\\" id=\\\"movietime\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[movietime]))?>\\\" size=\\\"\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--movietime--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_movietime]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_movietime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_movietime]\\\" type=\\\"text\\\" id=\\\"add[z_movietime]\\\" value=\\\"<?=stripSlashes($r[z_movietime])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','20',1,5,'movie',0,'',0,0,1,'\r\n<input name=\\\"movietime\\\" type=\\\"text\\\" id=\\\"movietime\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'movietime\\\',stripSlashes($r[movietime]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(60,'player','主演','text','\r\n<input name=\\\"player\\\" type=\\\"text\\\" id=\\\"player\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[player]))?>\\\" size=\\\"\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--player--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_player]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_player]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_player]\\\" type=\\\"text\\\" id=\\\"add[z_player]\\\" value=\\\"<?=stripSlashes($r[z_player])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','255',1,5,'movie',0,'',0,0,1,'\r\n<input name=\\\"player\\\" type=\\\"text\\\" id=\\\"player\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'player\\\',stripSlashes($r[player]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(61,'playadmin','导演','text','\r\n<input name=\\\"playadmin\\\" type=\\\"text\\\" id=\\\"playadmin\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[playadmin]))?>\\\" size=\\\"\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--playadmin--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_playadmin]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_playadmin]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_playadmin]\\\" type=\\\"text\\\" id=\\\"add[z_playadmin]\\\" value=\\\"<?=stripSlashes($r[z_playadmin])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','255',1,5,'movie',0,'',0,0,1,'\r\n<input name=\\\"playadmin\\\" type=\\\"text\\\" id=\\\"playadmin\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'playadmin\\\',stripSlashes($r[playadmin]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(62,'filetype','影片格式','text','<input name=\\\"filetype\\\" type=\\\"text\\\" id=\\\"filetype\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[filetype]))?>\\\" size=\\\"8\\\">\r\n<select name=\\\"select2\\\" onchange=\\\"document.add.filetype.value=this.value\\\">\r\n        <option value=\\\"\\\">类型</option>\r\n        <option value=\\\".rm\\\">.rm</option>\r\n        <option value=\\\".rmvb\\\">.rmvb</option>\r\n        <option value=\\\".mp3\\\">.mp3</option>\r\n        <option value=\\\".asf\\\">.asf</option>\r\n        <option value=\\\".wmv\\\">.wmv</option>\r\n        <option value=\\\".avi\\\">.avi</option>\r\n      </select>','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--filetype--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_filetype]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_filetype]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_filetype]\\\" type=\\\"text\\\" id=\\\"add[z_filetype]\\\" value=\\\"<?=stripSlashes($r[z_filetype])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','10',1,5,'movie',0,'',0,0,1,'<input name=\\\"filetype\\\" type=\\\"text\\\" id=\\\"filetype\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'filetype\\\',stripSlashes($r[filetype]))?>\\\" size=\\\"\\\">\r\n<select name=\\\"select2\\\" onchange=\\\"document.add.filetype.value=this.value\\\">\r\n        <option value=\\\"\\\">类型</option>\r\n        <option value=\\\".rm\\\">.rm</option>\r\n        <option value=\\\".rmvb\\\">.rmvb</option>\r\n        <option value=\\\".mp3\\\">.mp3</option>\r\n        <option value=\\\".asf\\\">.asf</option>\r\n        <option value=\\\".wmv\\\">.wmv</option>\r\n        <option value=\\\".avi\\\">.avi</option>\r\n      </select>',0,'',0,'',0,0,'','','','','','',0,0,''),(63,'filesize','影片大小','text','<input name=\\\"filesize\\\" type=\\\"text\\\" id=\\\"filesize\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[filesize]))?>\\\" size=\\\"12\\\">\r\n<select name=\\\"select\\\" onchange=\\\"document.add.filesize.value+=this.value\\\">\r\n        <option value=\\\"\\\">单位</option>\r\n        <option value=\\\" MB\\\">MB</option>\r\n        <option value=\\\" KB\\\">KB</option>\r\n        <option value=\\\" GB\\\">GB</option>\r\n        <option value=\\\" BYTES\\\">BYTES</option>\r\n      </select>','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--filesize--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_filesize]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_filesize]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_filesize]\\\" type=\\\"text\\\" id=\\\"add[z_filesize]\\\" value=\\\"<?=stripSlashes($r[z_filesize])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','16',1,5,'movie',0,'',0,0,1,'<input name=\\\"filesize\\\" type=\\\"text\\\" id=\\\"filesize\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'filesize\\\',stripSlashes($r[filesize]))?>\\\" size=\\\"\\\">\r\n<select name=\\\"select\\\" onchange=\\\"document.add.filesize.value+=this.value\\\">\r\n        <option value=\\\"\\\">单位</option>\r\n        <option value=\\\" MB\\\">MB</option>\r\n        <option value=\\\" KB\\\">KB</option>\r\n        <option value=\\\" GB\\\">GB</option>\r\n        <option value=\\\" BYTES\\\">BYTES</option>\r\n      </select>',0,'',0,'',0,0,'','','','','','',0,0,''),(64,'star','推荐等级','select','<select name=\\\"star\\\" id=\\\"star\\\"><option value=\\\"1\\\"<?=$r[star]==\\\"1\\\"?\\\' selected\\\':\\\'\\\'?>>1星</option><option value=\\\"2\\\"<?=$r[star]==\\\"2\\\"||$ecmsfirstpost==1?\\\' selected\\\':\\\'\\\'?>>2星</option><option value=\\\"3\\\"<?=$r[star]==\\\"3\\\"?\\\' selected\\\':\\\'\\\'?>>3星</option><option value=\\\"4\\\"<?=$r[star]==\\\"4\\\"?\\\' selected\\\':\\\'\\\'?>>4星</option><option value=\\\"5\\\"<?=$r[star]==\\\"5\\\"?\\\' selected\\\':\\\'\\\'?>>5星</option></select>','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--star--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_star]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_star]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_star]\\\" type=\\\"text\\\" id=\\\"add[z_star]\\\" value=\\\"<?=stripSlashes($r[z_star])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'TINYINT','1',1,5,'movie',0,'1|2:default|3|4|5',0,0,1,'<select name=\\\"star\\\" id=\\\"star\\\"><option value=\\\"1\\\"<?=$r[star]==\\\"1\\\"?\\\' selected\\\':\\\'\\\'?>>1星</option><option value=\\\"2\\\"<?=$r[star]==\\\"2\\\"||$ecmsfirstpost==1?\\\' selected\\\':\\\'\\\'?>>2星</option><option value=\\\"3\\\"<?=$r[star]==\\\"3\\\"?\\\' selected\\\':\\\'\\\'?>>3星</option><option value=\\\"4\\\"<?=$r[star]==\\\"4\\\"?\\\' selected\\\':\\\'\\\'?>>4星</option><option value=\\\"5\\\"<?=$r[star]==\\\"5\\\"?\\\' selected\\\':\\\'\\\'?>>5星</option></select>',0,'',0,'',0,0,'','','','','','',0,0,''),(65,'playdk','带宽要求','text','\r\n<input name=\\\"playdk\\\" type=\\\"text\\\" id=\\\"playdk\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[playdk]))?>\\\" size=\\\"\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--playdk--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_playdk]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_playdk]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_playdk]\\\" type=\\\"text\\\" id=\\\"add[z_playdk]\\\" value=\\\"<?=stripSlashes($r[z_playdk])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','30',1,5,'movie',0,'',0,0,1,'\r\n<input name=\\\"playdk\\\" type=\\\"text\\\" id=\\\"playdk\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'playdk\\\',stripSlashes($r[playdk]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(66,'playtime','片长','text','\r\n<input name=\\\"playtime\\\" type=\\\"text\\\" id=\\\"playtime\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[playtime]))?>\\\" size=\\\"\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--playtime--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_playtime]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_playtime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_playtime]\\\" type=\\\"text\\\" id=\\\"add[z_playtime]\\\" value=\\\"<?=stripSlashes($r[z_playtime])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','20',1,5,'movie',0,'',0,0,1,'\r\n<input name=\\\"playtime\\\" type=\\\"text\\\" id=\\\"playtime\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'playtime\\\',stripSlashes($r[playtime]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(67,'moviefen','扣除点数','text','\r\n<input name=\\\"moviefen\\\" type=\\\"text\\\" id=\\\"moviefen\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[moviefen]))?>\\\" size=\\\"\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--moviefen--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_moviefen]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_moviefen]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_moviefen]\\\" type=\\\"text\\\" id=\\\"add[z_moviefen]\\\" value=\\\"<?=stripSlashes($r[z_moviefen])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'INT','',1,5,'movie',0,'',0,0,1,'\r\n<input name=\\\"moviefen\\\" type=\\\"text\\\" id=\\\"moviefen\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'moviefen\\\',stripSlashes($r[moviefen]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(68,'downpath','下载地址','text','<script>\r\nfunction doadd()\r\n{var i;\r\nvar str=\\\"\\\";\r\nvar oldi=0;\r\nvar j=0;\r\noldi=parseInt(document.add.editnum.value);\r\nfor(i=1;i<=document.add.downnum.value;i++)\r\n{\r\nj=i+oldi;\r\nstr=str+\\\"<tr><td width=7%> <div align=center>\\\"+j+\\\"</div></td><td width=19%><div align=left><input name=downname[] type=text id=downname[] value=下载地址\\\"+j+\\\" size=17></div></td><td width=40%><input name=downpath[] type=text size=36 id=downpath\\\"+j+\\\" ondblclick=SpOpenChFile(0,\\\'downpath\\\"+j+\\\"\\\')><select name=thedownqz[]><option value=\\\'\\\'>--地址前缀--</option><?=$newdownqz?></select></td><td width=21%><div align=center><select name=downuser[] id=select><option value=0>游客</option><?=$ygroup?></select></div></td><td width=13%><div align=center><input name=fen[] type=text id=fen[] value=0 size=6></div></td></tr>\\\";\r\n}\r\ndocument.getElementById(\\\"adddown\\\").innerHTML=\\\"<table width=\\\'100%\\\' border=0 cellspacing=1 cellpadding=3>\\\"+str+\\\"</table>\\\";\r\n}\r\n</script>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n  <tr>\r\n    <td height=\\\"25\\\">下载地址前缀&nbsp;:\r\n      <input name=\\\"downurl_qz\\\" type=\\\"text\\\" size=\\\"32\\\">\r\n      <select name=\\\"changeurl_qz\\\" onchange=\\\"document.add.downurl_qz.value=document.add.changeurl_qz.value\\\">\r\n        <option value=\\\"\\\" selected>选择前缀</option>\r\n        <?=$downurlqz?>\r\n      </select>\r\n	  </td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\\\"25\\\">选择/上传附件:\r\n      <input name=\\\"changedown_url\\\" id=\\\"changedown_url\\\" type=\\\"text\\\" size=\\\"32\\\">\r\n      <input type=\\\"button\\\" name=\\\"Submit\\\" value=\\\"选择\\\" onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=0&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=changedown_url<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\">&nbsp;\r\n	  <input type=\\\"button\\\" name=\\\"Submit\\\" value=\\\"复制\\\" onclick=\\\"document.getElementById(\\\'changedown_url\\\').focus();document.getElementById(\\\'changedown_url\\\').select();clipboardData.setData(\\\'text\\\',document.getElementById(\\\'changedown_url\\\').value);\\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#DBEAF5\\\">\r\n        <tr> \r\n          <td width=\\\"7%\\\"> <div align=\\\"center\\\">编号</div></td>\r\n          <td width=\\\"19%\\\"><div align=\\\"left\\\">下载名称</div></td>\r\n          <td width=\\\"40%\\\">下载地址 <font color=\\\"#666666\\\">(双击选择)</font></td>\r\n          <td width=\\\"21%\\\"> <div align=\\\"center\\\">权限</div></td>\r\n          <td width=\\\"13%\\\"> <div align=\\\"center\\\">点数</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td>\r\n    <?php\r\n    if($ecmsfirstpost==1)\r\n    {\r\n    ?>\r\n	<table width=\\\'100%\\\' border=0 cellspacing=1 cellpadding=3>\r\n	<?php\r\n	$editnum=3;\r\n	for($pathi=1;$pathi<=$editnum;$pathi++)\r\n	{\r\n	?>\r\n           <tr> \r\n              <td width=\\\'7%\\\'> <div align=center><?=$pathi?></div></td>\r\n              <td width=\\\'19%\\\'> <div align=left> \r\n                  <input name=downname[] type=text value=\\\'下载地址<?=$pathi?>\\\' size=17>\r\n                    </div></td>\r\n              <td width=\\\'40%\\\'>\r\n	      <input name=downpath[] type=text size=36 id=\\\'downpath<?=$pathi?>\\\' ondblclick=\\\"SpOpenChFile(0,\\\'downpath<?=$pathi?>\\\');\\\">\r\n	      <select name=thedownqz[]><option value=\\\'\\\'>--地址前缀--</option><?=$newdownqz?></select> \r\n                  </td>\r\n                  <td width=\\\'21%\\\'><div align=center> \r\n                      <select name=downuser[]>\r\n                        <option value=0>游客</option>\r\n                        <?=$ygroup?>\r\n                      </select>\r\n                    </div></td>\r\n                  <td width=\\\'13%\\\'> <div align=center> \r\n                      <input name=fen[] type=text value=0 size=6>\r\n                    </div></td>\r\n            </tr>\r\n	<?php\r\n	}\r\n	?>\r\n	</table>\r\n    <?php\r\n    }\r\n    else\r\n    {\r\n	$editnum=0;\r\n	$downloadpath=\\\"\\\";\r\n	if($r[downpath])\r\n	{\r\n		$r[downpath]=stripSlashes($r[downpath]);\r\n		//下载地址\r\n		$j=0;\r\n		$d_record=explode(\\\"\\\\r\\\\n\\\",$r[downpath]);\r\n		for($i=0;$i<count($d_record);$i++)\r\n		{\r\n			$j=$i+1;\r\n			$d_field=explode(\\\"::::::\\\",$d_record[$i]);\r\n			//权限\r\n			$tgroup=str_replace(\\\" value=\\\".$d_field[2].\\\">\\\",\\\" value=\\\".$d_field[2].\\\" selected>\\\",$ygroup);\r\n			//地址前缀\r\n			$tnewdownqz=str_replace(\\\" value=\\\'\\\".$d_field[4].\\\"\\\'>\\\",\\\" value=\\\'\\\".$d_field[4].\\\"\\\' selected>\\\",$newdownqz);\r\n			$downloadpath.=\\\"<tr><td width=\\\'7%\\\'><div align=center>\\\".$j.\\\"</div></td><td width=\\\'19%\\\'><div align=left><input name=downname[] type=text id=downname[] value=\\\'\\\".$d_field[0].\\\"\\\' size=17></div></td><td width=\\\'40%\\\'><input name=downpath[] type=text id=downpath\\\".$j.\\\" value=\\\'\\\".$d_field[1].\\\"\\\' size=36 ondblclick=\\\\\\\"SpOpenChFile(0,\\\'downpath\\\".$j.\\\"\\\');\\\\\\\"><select name=thedownqz[]><option value=\\\'\\\'>--地址前缀--</option>\\\".$tnewdownqz.\\\"</select><input type=hidden name=pathid[] value=\\\".$j.\\\"><input type=checkbox name=delpathid[] value=\\\".$j.\\\">删</td><td width=\\\'21%\\\'><div align=center><select name=downuser[] id=select><option value=0>游客</option>\\\".$tgroup.\\\"</select></div></td><td width=\\\'13%\\\'><div align=center><input name=fen[] type=text id=fen[] value=\\\'\\\".$d_field[3].\\\"\\\' size=6></div></td></tr>\\\";\r\n		}\r\n		$editnum=$j;\r\n		$downloadpath=\\\"<table width=\\\'100%\\\' border=0 cellspacing=1 cellpadding=3>\\\".$downloadpath.\\\"</table>\\\";\r\n	}\r\n	echo $downloadpath;\r\n    }\r\n    ?>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\\"25\\\">下载地址扩展数量: <input name=\\\"editnum\\\" type=\\\"hidden\\\" id=\\\"editnum\\\" value=\\\"<?=$editnum?>\\\">\r\n      <input name=\\\"downnum\\\" type=\\\"text\\\" id=\\\"downnum\\\" value=\\\"1\\\" size=\\\"6\\\"> <input type=\\\"button\\\" name=\\\"Submit5\\\" value=\\\"输出地址\\\" onclick=\\\"javascript:doadd();\\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=adddown></td>\r\n  </tr>\r\n</table>\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (\r\n      <input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--ecmsdownpathurl--]\\\" size=\\\"20\\\">\r\n      <br>\r\n      <input name=\\\"textfield2\\\" type=\\\"text\\\" id=\\\"textfield2\\\" value=\\\"[!--ecmsdownpathname--]\\\" size=\\\"20\\\">\r\n      )<br>\r\n      格式:地址正则(url)[!empirecms!]名称正则(name)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_downpath]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_downpath]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td>地址前缀:\r\n<input name=\\\"add[qz_downpath]\\\" type=\\\"text\\\" id=\\\"add[qz_downpath]\\\" value=\\\"<?=stripSlashes($r[qz_downpath])?>\\\">\r\n        </td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'MEDIUMTEXT','',1,5,'movie',0,'',0,0,1,'<input type=\\\"file\\\" name=\\\"downpathfile\\\" size=\\\"45\\\">\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(69,'playerid','播放器','text','\r\n<?php\r\n$player_sql=$empire->query(\\\"select id,player from {$dbtbpre}enewsplayer\\\");\r\nwhile($player_r=$empire->fetch($player_sql))\r\n{\r\n	$select_player=\\\'\\\';\r\n	if($r[playerid]==$player_r[id])\r\n	{\r\n		$select_player=\\\' selected\\\';\r\n	}\r\n	$player_class.=\\\"<option value=\\\'\\\".$player_r[id].\\\"\\\'\\\".$select_player.\\\">\\\".$player_r[player].\\\"</option>\\\";\r\n}\r\n?>\r\n<select name=\\\"playerid\\\">\r\n<option value=0>自动识别</option>\r\n<?=$player_class?>\r\n</select>\r\n','视频播放器',1,1,1,'\r\n<?php\r\n$player_sql=$empire->query(\\\"select id,player from {$dbtbpre}enewsplayer\\\");\r\nwhile($player_r=$empire->fetch($player_sql))\r\n{\r\n	$select_player=\\\'\\\';\r\n	if($r[z_playerid]==$player_r[id])\r\n	{\r\n		$select_player=\\\' selected\\\';\r\n	}\r\n	$player_class.=\\\"<option value=\\\'\\\".$player_r[id].\\\"\\\'\\\".$select_player.\\\">\\\".$player_r[player].\\\"</option>\\\";\r\n}\r\n?>\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--playerid--]\\\" size=\\\"20\\\">)</td>\r\n    <td><select name=\\\"add[z_playerid]\\\"><option value=0>自动识别</option><?=$player_class?></select></td>\r\n  </tr>\r\n',1,'SMALLINT','',1,5,'movie',0,'',0,0,1,'\r\n<?php\r\n$player_sql=$empire->query(\\\"select id,player from {$dbtbpre}enewsplayer\\\");\r\nwhile($player_r=$empire->fetch($player_sql))\r\n{\r\n	$select_player=\\\'\\\';\r\n	if($r[playerid]==$player_r[id])\r\n	{\r\n		$select_player=\\\' selected\\\';\r\n	}\r\n	$player_class.=\\\"<option value=\\\'\\\".$player_r[id].\\\"\\\'\\\".$select_player.\\\">\\\".$player_r[player].\\\"</option>\\\";\r\n}\r\n?>\r\n<select name=\\\"playerid\\\">\r\n<option value=0>自动识别</option>\r\n<?=$player_class?>\r\n</select>\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(70,'onlinepath','在线观看地址','text','<script>\r\nfunction dooadd()\r\n{var i;\r\nvar str=\\\"\\\";\r\nvar oldi=0;\r\nvar j=0;\r\noldi=parseInt(document.add.oeditnum.value);\r\nfor(i=1;i<=document.add.odownnum.value;i++)\r\n{\r\nj=i+oldi;\r\nstr=str+\\\"<tr><td width=7%> <div align=center>\\\"+j+\\\"</div></td><td width=19%><div align=left><input name=odownname[] type=text value=\\\"+j+\\\" size=17></div></td><td width=40%><input name=odownpath[] type=text size=36 id=odownpath\\\"+j+\\\" ondblclick=SpOpenChFile(0,\\\'odownpath\\\"+j+\\\"\\\')><select name=othedownqz[]><option value=\\\'\\\'>--地址前缀--</option><?=$newdownqz?></select></td><td width=21%><div align=center><select name=odownuser[] id=select><option value=0>游客</option><?=$ygroup?></select></div></td><td width=13%><div align=center><input name=ofen[] type=text value=0 size=6></div></td></tr>\\\";\r\n}\r\ndocument.getElementById(\\\"addonline\\\").innerHTML=\\\"<table width=\\\'100%\\\' border=0 cellspacing=1 cellpadding=3>\\\"+str+\\\"</table>\\\";\r\n}\r\n</script>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n  <tr> \r\n    <td height=\\\"25\\\">观看地址前缀&nbsp;: \r\n      <input name=\\\"onlineurl_qz\\\" type=\\\"text\\\" size=\\\"32\\\"> <select name=\\\"changeonlineurl_qz\\\" onchange=\\\"document.add.onlineurl_qz.value=document.add.changeonlineurl_qz.value\\\">\r\n        <option value=\\\"\\\" selected>选择前缀</option>\r\n        <?=$downurlqz?>\r\n      </select>\r\n      </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\\"25\\\">选择/上传附件: \r\n      <input name=\\\"changeonline_url\\\" id=\\\"changeonline_url\\\" type=\\\"text\\\" size=\\\"32\\\"> <input type=\\\"button\\\" name=\\\"Submit\\\" value=\\\"选择\\\" onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=0&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=changeonline_url<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\">&nbsp;\r\n	  <input type=\\\"button\\\" name=\\\"Submit\\\" value=\\\"复制\\\" onclick=\\\"document.getElementById(\\\'changeonline_url\\\').focus();document.getElementById(\\\'changeonline_url\\\').select();clipboardData.setData(\\\'text\\\',document.getElementById(\\\'changeonline_url\\\').value);\\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#DBEAF5\\\">\r\n        <tr> \r\n          <td width=\\\"7%\\\"> <div align=\\\"center\\\">编号</div></td>\r\n          <td width=\\\"19%\\\"><div align=\\\"left\\\">观看名称</div></td>\r\n          <td width=\\\"40%\\\">观看地址 <font color=\\\"#666666\\\">(双击选择)</font></td>\r\n          <td width=\\\"21%\\\"> <div align=\\\"center\\\">权限</div></td>\r\n          <td width=\\\"13%\\\"> <div align=\\\"center\\\">点数</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td>\r\n    <?php\r\n    if($ecmsfirstpost==1)\r\n    {\r\n	?>\r\n	<table width=\\\'100%\\\' border=0 cellspacing=1 cellpadding=3>\r\n	<?php\r\n	$oeditnum=3;\r\n	for($opathi=1;$opathi<=$oeditnum;$opathi++)\r\n	{\r\n	?>\r\n		<tr> \r\n                  <td width=\\\'7%\\\'> <div align=center><?=$opathi?></div></td>\r\n                  <td width=\\\'19%\\\'> <div align=left> \r\n                      <input name=odownname[] type=text value=\\\'<?=$opathi?>\\\' size=17>\r\n                    </div></td>\r\n                  <td width=\\\'40%\\\'> \r\n		  <input name=odownpath[] type=text id=\\\'odownpath<?=$opathi?>\\\' size=36 ondblclick=\\\"SpOpenChFile(0,\\\'odownpath<?=$opathi?>\\\');\\\">\r\n		  <select name=othedownqz[]><option value=\\\'\\\'>--地址前缀--</option><?=$newdownqz?></select> \r\n                  </td>\r\n                  <td width=\\\'21%\\\'><div align=center> \r\n                      <select name=odownuser[] id=select>\r\n                        <option value=0>游客</option>\r\n                        <?=$ygroup?>\r\n                      </select>\r\n                    </div></td>\r\n                  <td width=\\\'13%\\\'> <div align=center> \r\n                      <input name=ofen[] type=text id=ofen[] value=0 size=6>\r\n                    </div></td>\r\n                </tr>\r\n	<?php\r\n	}\r\n	?>\r\n	</table>\r\n	<?php\r\n    }\r\n    else\r\n    {\r\n	$oeditnum=0;\r\n	$onlinemoviepath=\\\"\\\";\r\n	if($r[onlinepath])\r\n	{\r\n		$j=0;\r\n		$od_record=explode(\\\"\\\\r\\\\n\\\",$r[onlinepath]);\r\n		for($i=0;$i<count($od_record);$i++)\r\n		{\r\n			$j=$i+1;\r\n			$od_field=explode(\\\"::::::\\\",$od_record[$i]);\r\n			//权限\r\n			$tgroup=str_replace(\\\" value=\\\".$od_field[2].\\\">\\\",\\\" value=\\\".$od_field[2].\\\" selected>\\\",$ygroup);\r\n			//地址前缀\r\n			$tnewdownqz=str_replace(\\\" value=\\\'\\\".$od_field[4].\\\"\\\'>\\\",\\\" value=\\\'\\\".$od_field[4].\\\"\\\' selected>\\\",$newdownqz);\r\n			$onlinemoviepath.=\\\"<tr><td width=\\\'7%\\\'><div align=center>\\\".$j.\\\"</div></td><td width=\\\'19%\\\'><div align=left><input name=odownname[] type=text value=\\\'\\\".$od_field[0].\\\"\\\' size=17></div></td><td width=\\\'40%\\\'><input name=odownpath[] type=text value=\\\'\\\".$od_field[1].\\\"\\\' size=36 id=odownpath\\\".$j.\\\" ondblclick=\\\\\\\"SpOpenChFile(0,\\\'odownpath\\\".$j.\\\"\\\');\\\\\\\"><select name=othedownqz[]><option value=\\\'\\\'>--地址前缀--</option>\\\".$tnewdownqz.\\\"</select><input type=hidden name=opathid[] value=\\\".$j.\\\"><input type=checkbox name=odelpathid[] value=\\\".$j.\\\">删</td><td width=\\\'21%\\\'><div align=center><select name=odownuser[] id=select><option value=0>游客</option>\\\".$tgroup.\\\"</select></div></td><td width=\\\'13%\\\'><div align=center><input name=ofen[] type=text value=\\\'\\\".$od_field[3].\\\"\\\' size=6></div></td></tr>\\\";\r\n		}\r\n		$oeditnum=$j;\r\n		$onlinemoviepath=\\\"<table width=\\\'100%\\\' border=0 cellspacing=1 cellpadding=3>\\\".$onlinemoviepath.\\\"</table>\\\";\r\n	}\r\n	echo $onlinemoviepath;\r\n    }\r\n    ?>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\\"25\\\">在线地址扩展数量: <input name=\\\"oeditnum\\\" type=\\\"hidden\\\" id=\\\"oeditnum\\\" value=\\\"<?=$oeditnum?>\\\">\r\n      <input name=\\\"odownnum\\\" type=\\\"text\\\" id=\\\"odownnum\\\" value=\\\"1\\\" size=\\\"6\\\"> <input type=\\\"button\\\" name=\\\"Submit5\\\" value=\\\"输出地址\\\" onclick=\\\"javascript:dooadd();\\\"></td>\r\n  </tr>\r\n  <tr> \r\n    <td id=addonline></td>\r\n  </tr>\r\n</table>\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (\r\n      <input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--ecmsonlinepathurl--]\\\" size=\\\"20\\\">\r\n      <br>\r\n      <input name=\\\"textfield2\\\" type=\\\"text\\\" id=\\\"textfield2\\\" value=\\\"[!--ecmsonlinepathname--]\\\" size=\\\"20\\\">\r\n      )<br>\r\n      格式:地址正则(url)[!empirecms!]名称正则(name)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_onlinepath]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_onlinepath]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td>地址前缀:\r\n<input name=\\\"add[qz_onlinepath]\\\" type=\\\"text\\\" id=\\\"add[qz_onlinepath]\\\" value=\\\"<?=stripSlashes($r[qz_onlinepath])?>\\\">\r\n        </td>\r\n        </tr>\r\n      </table>\r\n	  </td>\r\n  </tr>\r\n',2,'MEDIUMTEXT','',1,5,'movie',0,'',0,0,1,'<input type=\\\"file\\\" name=\\\"onlinepathfile\\\" size=\\\"45\\\">\r\n<input type=\\\"hidden\\\" name=\\\"onlinepathmtfile\\\" value=1>\r\n',0,'',0,'',1,0,'','','','','','',0,0,''),(71,'moviesay','影片简介','textarea','<textarea name=\\\"moviesay\\\" cols=\\\"80\\\" rows=\\\"10\\\" id=\\\"moviesay\\\"><?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[moviesay]))?></textarea>\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--moviesay--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_moviesay]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_moviesay]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_moviesay]\\\" type=\\\"text\\\" id=\\\"add[z_moviesay]\\\" value=\\\"<?=stripSlashes($r[z_moviesay])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'TEXT','',1,5,'movie',0,'',0,1,1,'<textarea name=\\\"moviesay\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"moviesay\\\"><?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'moviesay\\\',stripSlashes($r[moviesay]))?></textarea>\r\n',0,'',0,'80,10',0,0,'','','','','','',0,1,''),(72,'title','标题','text','<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#DBEAF5\\\">\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">\r\n	<?=$tts?\\\"<select name=\\\'ttid\\\'><option value=\\\'0\\\'>标题分类</option>$tts</select>\\\":\\\"\\\"?>\r\n	<input type=text name=title value=\\\"<?=ehtmlspecialchars(stripSlashes($r[title]))?>\\\" size=\\\"60\\\"> \r\n	<input type=\\\"button\\\" name=\\\"button\\\" value=\\\"图文\\\" onclick=\\\"document.add.title.value=document.add.title.value+\\\'(图文)\\\';\\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">属性: \r\n	<input name=\\\"titlefont[b]\\\" type=\\\"checkbox\\\" value=\\\"b\\\"<?=$titlefontb?>>粗体\r\n	<input name=\\\"titlefont[i]\\\" type=\\\"checkbox\\\" value=\\\"i\\\"<?=$titlefonti?>>斜体\r\n	<input name=\\\"titlefont[s]\\\" type=\\\"checkbox\\\" value=\\\"s\\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\\"titlecolor\\\" type=\\\"text\\\" value=\\\"<?=stripSlashes($r[titlecolor])?>\\\" size=\\\"10\\\" class=\\\"color\\\">\r\n  </td>\r\n</tr>\r\n</table>\r\n','标题',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--title--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_title]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_title]\" type=\"text\" id=\"add[z_title]\" value=\"<?=stripSlashes($r[z_title])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'CHAR','100',1,6,'shop',0,'',0,0,0,'<input name=\\\"title\\\" type=\\\"text\\\" size=\\\"42\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'title\\\',stripSlashes($r[title]))?>\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(73,'special.field','特殊属性','','\r\n<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#DBEAF5\">\r\n  <tr>\r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">信息属性: \r\n      <input name=\"checked\" type=\"checkbox\" value=\"1\"<?=$r[checked]?\' checked\':\'\'?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\"isgood\" id=\"isgood\">\r\n        <option value=\"0\">不推荐</option>\r\n	<?=$ftnr[\'igname\']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\"firsttitle\" id=\"firsttitle\">\r\n        <option value=\"0\">非头条</option>\r\n	<?=$ftnr[\'ftname\']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\"keyboard\" type=\"text\" size=\"52\" value=\"<?=stripSlashes($r[keyboard])?>\">\r\n      <font color=\"#666666\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">外部链接: \r\n      <input name=\"titleurl\" type=\"text\" value=\"<?=stripSlashes($r[titleurl])?>\" size=\"52\">\r\n      <font color=\"#666666\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n','特殊属性',0,1,0,'\r\n\r\n',0,'','0',0,6,'shop',0,'',0,0,0,'\r\n<input name=\"keyboard\" type=\"text\" size=42 value=\"<?=stripSlashes($r[keyboard])?>\">\r\n<font color=\"#666666\">(多个请用&quot;,&quot;隔开)</font>\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(74,'titlepic','标题图片','img','<input name=\\\"titlepic\\\" type=\\\"text\\\" id=\\\"titlepic\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[titlepic]))?>\\\" size=\\\"60\\\">\r\n<a onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\" title=\\\"选择已上传的图片\\\"><img src=\\\"../data/images/changeimg.gif\\\" border=\\\"0\\\" align=\\\"absbottom\\\"></a> \r\n','标题图片',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--titlepic--]\" size=\"20\">\r\n      )</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\"add[qz_titlepic]\" type=\"text\" id=\"add[qz_titlepic]\" value=\"<?=stripSlashes($r[qz_titlepic])?>\"> \r\n        <input name=\"add[save_titlepic]\" type=\"checkbox\" id=\"add[save_titlepic]\" value=\" checked\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\"add[zz_titlepic]\" cols=\"60\" rows=\"10\" id=\"add[zz_titlepic]\"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\"add[z_titlepic]\" type=\"text\" id=\"titlepic5\" value=\"<?=stripSlashes($r[z_titlepic])?>\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n',1,'CHAR','120',1,6,'shop',0,'',0,0,0,'<input type=\\\"file\\\" name=\\\"titlepicfile\\\" size=\\\"45\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(75,'newstime','发布时间','text','<input name=\\\"newstime\\\" type=\\\"text\\\" value=\\\"<?=$r[newstime]?>\\\" size=\\\"28\\\" class=\\\"Wdate\\\" onClick=\\\"WdatePicker({skin:\\\'default\\\',dateFmt:\\\'yyyy-MM-dd HH:mm:ss\\\'})\\\"><input type=button name=button value=\\\"设为当前时间\\\" onclick=\\\"document.add.newstime.value=\\\'<?=$todaytime?>\\\'\\\">\r\n','发布时间',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--newstime--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_newstime]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_newstime]\" type=\"text\" id=\"add[z_newstime]\" value=\"<?=stripSlashes($r[z_newstime])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'INT','11',1,6,'shop',0,'',1,0,0,'\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(76,'productno','商品编号','text','<input name=\\\"productno\\\" type=\\\"text\\\" id=\\\"productno\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[productno]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--productno--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_productno]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_productno]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_productno]\\\" type=\\\"text\\\" id=\\\"add[z_productno]\\\" value=\\\"<?=stripSlashes($r[z_productno])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'VARCHAR','30',1,6,'shop',0,'',0,0,1,'<input name=\\\"productno\\\" type=\\\"text\\\" id=\\\"productno\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'productno\\\',stripSlashes($r[productno]))?>\\\" size=\\\"42\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(77,'pbrand','品牌','text','<input name=\\\"pbrand\\\" type=\\\"text\\\" id=\\\"pbrand\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[pbrand]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--pbrand--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_pbrand]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_pbrand]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_pbrand]\\\" type=\\\"text\\\" id=\\\"add[z_pbrand]\\\" value=\\\"<?=stripSlashes($r[z_pbrand])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'VARCHAR','30',1,6,'shop',0,'',0,0,1,'<input name=\\\"pbrand\\\" type=\\\"text\\\" id=\\\"pbrand\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'pbrand\\\',stripSlashes($r[pbrand]))?>\\\" size=\\\"42\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(78,'intro','简单描述','textarea','<textarea name=\\\"intro\\\" cols=\\\"80\\\" rows=\\\"10\\\" id=\\\"intro\\\"><?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[intro]))?></textarea>\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--intro--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_intro]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_intro]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_intro]\\\" type=\\\"text\\\" id=\\\"add[z_intro]\\\" value=\\\"<?=stripSlashes($r[z_intro])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'TEXT','',1,6,'shop',0,'',0,1,1,'<textarea name=\\\"intro\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"intro\\\"><?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'intro\\\',stripSlashes($r[intro]))?></textarea>\r\n',0,'',0,'80,10',0,0,'','','','','','',0,0,''),(79,'unit','计量单位','text','<input name=\\\"unit\\\" type=\\\"text\\\" id=\\\"unit\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[unit]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--unit--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_unit]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_unit]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_unit]\\\" type=\\\"text\\\" id=\\\"add[z_unit]\\\" value=\\\"<?=stripSlashes($r[z_unit])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'VARCHAR','16',1,6,'shop',0,'',0,0,1,'<input name=\\\"unit\\\" type=\\\"text\\\" id=\\\"unit\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'unit\\\',stripSlashes($r[unit]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(80,'weight','单位重量','text','<input name=\\\"weight\\\" type=\\\"text\\\" id=\\\"weight\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[weight]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--weight--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_weight]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_weight]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_weight]\\\" type=\\\"text\\\" id=\\\"add[z_weight]\\\" value=\\\"<?=stripSlashes($r[z_weight])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'VARCHAR','20',1,6,'shop',0,'',0,0,1,'<input name=\\\"weight\\\" type=\\\"text\\\" id=\\\"weight\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'weight\\\',stripSlashes($r[weight]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(81,'tprice','市场价格','text','<input name=\\\"tprice\\\" type=\\\"text\\\" id=\\\"tprice\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[tprice]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--tprice--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_tprice]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_tprice]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_tprice]\\\" type=\\\"text\\\" id=\\\"add[z_tprice]\\\" value=\\\"<?=stripSlashes($r[z_tprice])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'FLOAT','11,2',1,6,'shop',0,'',0,0,1,'<input name=\\\"tprice\\\" type=\\\"text\\\" id=\\\"tprice\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'tprice\\\',stripSlashes($r[tprice]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(82,'price','购买价格','text','<input name=\\\"price\\\" type=\\\"text\\\" id=\\\"price\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[price]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--price--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_price]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_price]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_price]\\\" type=\\\"text\\\" id=\\\"add[z_price]\\\" value=\\\"<?=stripSlashes($r[z_price])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'FLOAT','11,2',1,6,'shop',0,'',0,0,1,'<input name=\\\"price\\\" type=\\\"text\\\" id=\\\"price\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'price\\\',stripSlashes($r[price]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(83,'buyfen','积分购买','text','<input name=\\\"buyfen\\\" type=\\\"text\\\" id=\\\"buyfen\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[buyfen]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--buyfen--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_buyfen]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_buyfen]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_buyfen]\\\" type=\\\"text\\\" id=\\\"add[z_buyfen]\\\" value=\\\"<?=stripSlashes($r[z_buyfen])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'INT','',1,6,'shop',0,'',0,0,1,'<input name=\\\"buyfen\\\" type=\\\"text\\\" id=\\\"buyfen\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'buyfen\\\',stripSlashes($r[buyfen]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(84,'pmaxnum','库存','text','<input name=\\\"pmaxnum\\\" type=\\\"text\\\" id=\\\"pmaxnum\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"100\\\":ehtmlspecialchars(stripSlashes($r[pmaxnum]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--pmaxnum--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_pmaxnum]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_pmaxnum]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_pmaxnum]\\\" type=\\\"text\\\" id=\\\"add[z_pmaxnum]\\\" value=\\\"<?=stripSlashes($r[z_pmaxnum])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'INT','',1,6,'shop',0,'100',0,0,1,'<input name=\\\"pmaxnum\\\" type=\\\"text\\\" id=\\\"pmaxnum\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"100\\\":DoReqValue($mid,\\\'pmaxnum\\\',stripSlashes($r[pmaxnum]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(85,'productpic','商品大图','img','<input name=\\\"productpic\\\" type=\\\"text\\\" id=\\\"productpic\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[productpic]))?>\\\" size=\\\"60\\\">\r\n<a onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=productpic<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\" title=\\\"选择已上传的图片\\\"><img src=\\\"../data/images/changeimg.gif\\\" border=\\\"0\\\" align=\\\"absbottom\\\"></a> \r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--productpic--]\\\" size=\\\"20\\\">\r\n      )</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\\"add[qz_productpic]\\\" type=\\\"text\\\" id=\\\"add[qz_productpic]\\\" value=\\\"<?=stripSlashes($r[qz_productpic])?>\\\"> \r\n        <input name=\\\"add[save_productpic]\\\" type=\\\"checkbox\\\" id=\\\"add[save_productpic]\\\" value=\\\" checked\\\"<?=$r[save_productpic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\\"add[zz_productpic]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"add[zz_productpic]\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_productpic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\\"add[z_productpic]\\\" type=\\\"text\\\" id=\\\"productpic5\\\" value=\\\"<?=stripSlashes($r[z_productpic])?>\\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n',1,'VARCHAR','255',1,6,'shop',0,'',0,0,1,'<input type=\\\"file\\\" name=\\\"productpicfile\\\" size=\\\"45\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(86,'newstext','商品介绍','editor','<?=ECMS_ShowEditorVar(\\\"newstext\\\",$ecmsfirstpost==1?\\\"\\\":stripSlashes($r[newstext]),\\\"Default\\\",\\\"\\\",\\\"300\\\",\\\"100%\\\")?>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#DBEAF5\\\">\r\n          <tr> \r\n            <td bgcolor=\\\"#FFFFFF\\\"> <input name=\\\"dokey\\\" type=\\\"checkbox\\\" value=\\\"1\\\"<?=$r[dokey]==1?\\\' checked\\\':\\\'\\\'?>>\r\n              关键字替换&nbsp;&nbsp; <input name=\\\"copyimg\\\" type=\\\"checkbox\\\" id=\\\"copyimg\\\" value=\\\"1\\\">\r\n      远程保存图片(\r\n      <input name=\\\"mark\\\" type=\\\"checkbox\\\" id=\\\"mark\\\" value=\\\"1\\\">\r\n      <a href=\\\"SetEnews.php<?=$ecms_hashur[whehref]?>\\\" target=\\\"_blank\\\">加水印</a>)&nbsp;&nbsp; \r\n      <input name=\\\"copyflash\\\" type=\\\"checkbox\\\" id=\\\"copyflash\\\" value=\\\"1\\\">\r\n      远程保存FLASH(地址前缀： \r\n      <input name=\\\"qz_url\\\" type=\\\"text\\\" id=\\\"qz_url\\\" size=\\\"\\\">\r\n              )</td>\r\n          </tr>\r\n          <tr>\r\n            \r\n    <td bgcolor=\\\"#FFFFFF\\\"><input name=\\\"repimgnexturl\\\" type=\\\"checkbox\\\" id=\\\"repimgnexturl\\\" value=\\\"1\\\"> 图片链接转为下一页&nbsp;&nbsp; <input name=\\\"autopage\\\" type=\\\"checkbox\\\" id=\\\"autopage\\\" value=\\\"1\\\"> 自动分页\r\n      ,每 \r\n      <input name=\\\"autosize\\\" type=\\\"text\\\" id=\\\"autosize\\\" value=\\\"5000\\\" size=\\\"5\\\">\r\n      个字节为一页&nbsp;&nbsp; 取第 \r\n      <input name=\\\"getfirsttitlepic\\\" type=\\\"text\\\" id=\\\"getfirsttitlepic\\\" value=\\\"\\\" size=\\\"1\\\">\r\n      张上传图为标题图片( \r\n      <input name=\\\"getfirsttitlespic\\\" type=\\\"checkbox\\\" id=\\\"getfirsttitlespic\\\" value=\\\"1\\\">\r\n      缩略图: 宽 \r\n      <input name=\\\"getfirsttitlespicw\\\" type=\\\"text\\\" id=\\\"getfirsttitlespicw\\\" size=\\\"3\\\" value=\\\"<?=$public_r[spicwidth]?>\\\">\r\n      *高\r\n      <input name=\\\"getfirsttitlespich\\\" type=\\\"text\\\" id=\\\"getfirsttitlespich\\\" size=\\\"3\\\" value=\\\"<?=$public_r[spicheight]?>\\\">\r\n      )</td>\r\n          </tr>\r\n        </table>\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--newstext--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_newstext]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_newstext]\\\" type=\\\"text\\\" id=\\\"add[z_newstext]\\\" value=\\\"<?=stripSlashes($r[z_newstext])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'MEDIUMTEXT','',1,6,'shop',0,'',0,1,1,'<?=ECMS_ShowEditorVar(\\\"newstext\\\",$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'newstext\\\',stripSlashes($r[newstext])),\\\"Default\\\",\\\"\\\",\\\"300\\\",\\\"100%\\\")?>\r\n',0,'',0,'',0,1,'','','','','','',0,0,''),(87,'psalenum','销售量','text','\r\n<input name=\\\"psalenum\\\" type=\\\"text\\\" id=\\\"psalenum\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[psalenum]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--psalenum--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_psalenum]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_psalenum]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_psalenum]\\\" type=\\\"text\\\" id=\\\"add[z_psalenum]\\\" value=\\\"<?=stripSlashes($r[z_psalenum])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'INT','',1,6,'shop',0,'',0,0,1,'\r\n<input name=\\\"psalenum\\\" type=\\\"text\\\" id=\\\"psalenum\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'psalenum\\\',stripSlashes($r[psalenum]))?>\\\" size=\\\"60\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(88,'title','标题','text','<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#DBEAF5\\\">\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">\r\n	<?=$tts?\\\"<select name=\\\'ttid\\\'><option value=\\\'0\\\'>标题分类</option>$tts</select>\\\":\\\"\\\"?>\r\n	<input type=text name=title value=\\\"<?=ehtmlspecialchars(stripSlashes($r[title]))?>\\\" size=\\\"60\\\"> \r\n	<input type=\\\"button\\\" name=\\\"button\\\" value=\\\"图文\\\" onclick=\\\"document.add.title.value=document.add.title.value+\\\'(图文)\\\';\\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">属性: \r\n	<input name=\\\"titlefont[b]\\\" type=\\\"checkbox\\\" value=\\\"b\\\"<?=$titlefontb?>>粗体\r\n	<input name=\\\"titlefont[i]\\\" type=\\\"checkbox\\\" value=\\\"i\\\"<?=$titlefonti?>>斜体\r\n	<input name=\\\"titlefont[s]\\\" type=\\\"checkbox\\\" value=\\\"s\\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\\"titlecolor\\\" type=\\\"text\\\" value=\\\"<?=stripSlashes($r[titlecolor])?>\\\" size=\\\"10\\\" class=\\\"color\\\">\r\n  </td>\r\n</tr>\r\n</table>\r\n','标题',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--title--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_title]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_title]\" type=\"text\" id=\"add[z_title]\" value=\"<?=stripSlashes($r[z_title])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'CHAR','100',1,7,'article',0,'',0,0,0,'<input name=\\\"title\\\" type=\\\"text\\\" size=\\\"42\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'title\\\',stripSlashes($r[title]))?>\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(89,'special.field','特殊属性','','\r\n<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#DBEAF5\">\r\n  <tr>\r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">信息属性: \r\n      <input name=\"checked\" type=\"checkbox\" value=\"1\"<?=$r[checked]?\' checked\':\'\'?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\"isgood\" id=\"isgood\">\r\n        <option value=\"0\">不推荐</option>\r\n	<?=$ftnr[\'igname\']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\"firsttitle\" id=\"firsttitle\">\r\n        <option value=\"0\">非头条</option>\r\n	<?=$ftnr[\'ftname\']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\"keyboard\" type=\"text\" size=\"52\" value=\"<?=stripSlashes($r[keyboard])?>\">\r\n      <font color=\"#666666\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">外部链接: \r\n      <input name=\"titleurl\" type=\"text\" value=\"<?=stripSlashes($r[titleurl])?>\" size=\"52\">\r\n      <font color=\"#666666\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n','特殊属性',0,1,0,'\r\n\r\n',1,'','0',0,7,'article',0,'',0,0,0,'\r\n<input name=\"keyboard\" type=\"text\" size=42 value=\"<?=stripSlashes($r[keyboard])?>\">\r\n<font color=\"#666666\">(多个请用&quot;,&quot;隔开)</font>\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(90,'titlepic','标题图片','img','<input name=\\\"titlepic\\\" type=\\\"text\\\" id=\\\"titlepic\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[titlepic]))?>\\\" size=\\\"45\\\">\r\n<a onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\" title=\\\"选择已上传的图片\\\"><img src=\\\"../data/images/changeimg.gif\\\" border=\\\"0\\\" align=\\\"absbottom\\\"></a> \r\n','标题图片',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--titlepic--]\" size=\"20\">\r\n      )</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\"add[qz_titlepic]\" type=\"text\" id=\"add[qz_titlepic]\" value=\"<?=stripSlashes($r[qz_titlepic])?>\"> \r\n        <input name=\"add[save_titlepic]\" type=\"checkbox\" id=\"add[save_titlepic]\" value=\" checked\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\"add[zz_titlepic]\" cols=\"60\" rows=\"10\" id=\"add[zz_titlepic]\"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\"add[z_titlepic]\" type=\"text\" id=\"titlepic5\" value=\"<?=stripSlashes($r[z_titlepic])?>\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n',2,'CHAR','120',1,7,'article',0,'',0,0,0,'<input type=\\\"file\\\" name=\\\"titlepicfile\\\" size=\\\"45\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(91,'newstime','发布时间','text','<input name=\\\"newstime\\\" type=\\\"text\\\" value=\\\"<?=$r[newstime]?>\\\" size=\\\"28\\\" class=\\\"Wdate\\\" onClick=\\\"WdatePicker({skin:\\\'default\\\',dateFmt:\\\'yyyy-MM-dd HH:mm:ss\\\'})\\\"><input type=button name=button value=\\\"设为当前时间\\\" onclick=\\\"document.add.newstime.value=\\\'<?=$todaytime?>\\\'\\\">\r\n','发布时间',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--newstime--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_newstime]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_newstime]\" type=\"text\" id=\"add[z_newstime]\" value=\"<?=stripSlashes($r[z_newstime])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'INT','11',1,7,'article',0,'',1,0,0,'\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(92,'ftitle','副标题','text','<input name=\\\"ftitle\\\" type=\\\"text\\\" id=\\\"ftitle\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[ftitle]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--ftitle--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_ftitle]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_ftitle]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_ftitle]\\\" type=\\\"text\\\" id=\\\"add[z_ftitle]\\\" value=\\\"<?=stripSlashes($r[z_ftitle])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'CHAR','120',1,7,'article',0,'',0,0,1,'<input name=\\\"ftitle\\\" type=\\\"text\\\" id=\\\"ftitle\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'ftitle\\\',stripSlashes($r[ftitle]))?>\\\" size=\\\"42\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(93,'smalltext','内容简介','textarea','<textarea name=\\\"smalltext\\\" cols=\\\"80\\\" rows=\\\"10\\\" id=\\\"smalltext\\\"><?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[smalltext]))?></textarea>\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--smalltext--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_smalltext]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_smalltext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_smalltext]\\\" type=\\\"text\\\" id=\\\"add[z_smalltext]\\\" value=\\\"<?=stripSlashes($r[z_smalltext])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'CHAR','255',1,7,'article',0,'',0,1,1,'<textarea name=\\\"smalltext\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"smalltext\\\"><?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'smalltext\\\',stripSlashes($r[smalltext]))?></textarea>\r\n',0,'',0,'80,10',0,0,'','','','','','',0,1,''),(94,'writer','作者','text','<?php\r\n$writer_sql=$empire->query(\\\"select writer from {$dbtbpre}enewswriter\\\");\r\nwhile($w_r=$empire->fetch($writer_sql))\r\n{\r\n	$w_class.=\\\"<option value=\\\'\\\".$w_r[writer].\\\"\\\'>\\\".$w_r[writer].\\\"</option>\\\";\r\n}\r\n?>\r\n<input type=text name=writer value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[writer]))?>\\\" size=\\\"\\\"> \r\n        <select name=\\\"w_id\\\" id=\\\"select7\\\" onchange=\\\"document.add.writer.value=document.add.w_id.value\\\">\r\n          <option>选择作者</option>\r\n		  <?=$w_class?>\r\n        </select>\r\n<input type=\\\"button\\\" name=\\\"wbutton\\\" value=\\\"增加作者\\\" onclick=\\\"window.open(\\\'NewsSys/writer.php?<?=$ecms_hashur[ehref]?>&addwritername=\\\'+document.add.writer.value);\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--writer--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_writer]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_writer]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_writer]\\\" type=\\\"text\\\" id=\\\"add[z_writer]\\\" value=\\\"<?=stripSlashes($r[z_writer])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'CHAR','30',1,7,'article',0,'',0,0,1,'<input name=\\\"writer\\\" type=\\\"text\\\" id=\\\"writer\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'writer\\\',stripSlashes($r[writer]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(95,'befrom','信息来源','text','<?php\r\n$befrom_sql=$empire->query(\\\"select sitename from {$dbtbpre}enewsbefrom\\\");\r\nwhile($b_r=$empire->fetch($befrom_sql))\r\n{\r\n	$b_class.=\\\"<option value=\\\'\\\".$b_r[sitename].\\\"\\\'>\\\".$b_r[sitename].\\\"</option>\\\";\r\n}\r\n?>\r\n<input type=\\\"text\\\" name=\\\"befrom\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[befrom]))?>\\\" size=\\\"\\\"> \r\n        <select name=\\\"befrom_id\\\" id=\\\"befromid\\\" onchange=\\\"document.add.befrom.value=document.add.befrom_id.value\\\">\r\n          <option>选择信息来源</option>\r\n          <?=$b_class?>\r\n        </select>\r\n<input type=\\\"button\\\" name=\\\"wbutton\\\" value=\\\"增加来源\\\" onclick=\\\"window.open(\\\'NewsSys/BeFrom.php?<?=$ecms_hashur[ehref]?>&addsitename=\\\'+document.add.befrom.value);\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--befrom--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_befrom]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_befrom]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_befrom]\\\" type=\\\"text\\\" id=\\\"add[z_befrom]\\\" value=\\\"<?=stripSlashes($r[z_befrom])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'CHAR','60',1,7,'article',0,'',0,0,1,'<input name=\\\"befrom\\\" type=\\\"text\\\" id=\\\"befrom\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'befrom\\\',stripSlashes($r[befrom]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(96,'newstext','新闻正文','editor','<?=ECMS_ShowEditorVar(\\\"newstext\\\",$ecmsfirstpost==1?\\\"\\\":stripSlashes($r[newstext]),\\\"Default\\\",\\\"\\\",\\\"300\\\",\\\"100%\\\")?>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#DBEAF5\\\">\r\n          <tr> \r\n            <td bgcolor=\\\"#FFFFFF\\\"> <input name=\\\"dokey\\\" type=\\\"checkbox\\\" value=\\\"1\\\"<?=$r[dokey]==1?\\\' checked\\\':\\\'\\\'?>>\r\n              关键字替换&nbsp;&nbsp; <input name=\\\"copyimg\\\" type=\\\"checkbox\\\" id=\\\"copyimg\\\" value=\\\"1\\\">\r\n      远程保存图片(\r\n      <input name=\\\"mark\\\" type=\\\"checkbox\\\" id=\\\"mark\\\" value=\\\"1\\\">\r\n      <a href=\\\"SetEnews.php<?=$ecms_hashur[whehref]?>\\\" target=\\\"_blank\\\">加水印</a>)&nbsp;&nbsp; \r\n      <input name=\\\"copyflash\\\" type=\\\"checkbox\\\" id=\\\"copyflash\\\" value=\\\"1\\\">\r\n      远程保存FLASH(地址前缀： \r\n      <input name=\\\"qz_url\\\" type=\\\"text\\\" id=\\\"qz_url\\\" size=\\\"\\\">\r\n              )</td>\r\n          </tr>\r\n          <tr>\r\n            \r\n    <td bgcolor=\\\"#FFFFFF\\\"><input name=\\\"repimgnexturl\\\" type=\\\"checkbox\\\" id=\\\"repimgnexturl\\\" value=\\\"1\\\"> 图片链接转为下一页&nbsp;&nbsp; <input name=\\\"autopage\\\" type=\\\"checkbox\\\" id=\\\"autopage\\\" value=\\\"1\\\"> 自动分页\r\n      ,每 \r\n      <input name=\\\"autosize\\\" type=\\\"text\\\" id=\\\"autosize\\\" value=\\\"5000\\\" size=\\\"5\\\">\r\n      个字节为一页&nbsp;&nbsp; 取第 \r\n      <input name=\\\"getfirsttitlepic\\\" type=\\\"text\\\" id=\\\"getfirsttitlepic\\\" value=\\\"\\\" size=\\\"1\\\">\r\n      张上传图为标题图片( \r\n      <input name=\\\"getfirsttitlespic\\\" type=\\\"checkbox\\\" id=\\\"getfirsttitlespic\\\" value=\\\"1\\\">\r\n      缩略图: 宽 \r\n      <input name=\\\"getfirsttitlespicw\\\" type=\\\"text\\\" id=\\\"getfirsttitlespicw\\\" size=\\\"3\\\" value=\\\"<?=$public_r[spicwidth]?>\\\">\r\n      *高\r\n      <input name=\\\"getfirsttitlespich\\\" type=\\\"text\\\" id=\\\"getfirsttitlespich\\\" size=\\\"3\\\" value=\\\"<?=$public_r[spicheight]?>\\\">\r\n      )</td>\r\n          </tr>\r\n        </table>\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--newstext--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_newstext]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_newstext]\\\" type=\\\"text\\\" id=\\\"add[z_newstext]\\\" value=\\\"<?=stripSlashes($r[z_newstext])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'CHAR','50',1,7,'article',1,'',0,1,1,'<?=ECMS_ShowEditorVar(\\\"newstext\\\",$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'newstext\\\',stripSlashes($r[newstext])),\\\"Default\\\",\\\"\\\",\\\"300\\\",\\\"100%\\\")?>\r\n',0,'',0,'',0,1,'','','','','','',0,0,''),(97,'diggtop','顶','text','\r\n<input name=\\\"diggtop\\\" type=\\\"text\\\" id=\\\"diggtop\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[diggtop]))?>\\\" size=\\\"\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--diggtop--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_diggtop]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_diggtop]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_diggtop]\\\" type=\\\"text\\\" id=\\\"add[z_diggtop]\\\" value=\\\"<?=stripSlashes($r[z_diggtop])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',3,'INT','',1,7,'article',0,'',0,0,1,'\r\n<input name=\\\"diggtop\\\" type=\\\"text\\\" id=\\\"diggtop\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'diggtop\\\',stripSlashes($r[diggtop]))?>\\\" size=\\\"\\\">\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(98,'title','标题','text','<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#DBEAF5\\\">\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">\r\n	<?=$tts?\\\"<select name=\\\'ttid\\\'><option value=\\\'0\\\'>标题分类</option>$tts</select>\\\":\\\"\\\"?>\r\n	<input type=text name=title value=\\\"<?=ehtmlspecialchars(stripSlashes($r[title]))?>\\\" size=\\\"60\\\"> \r\n	<input type=\\\"button\\\" name=\\\"button\\\" value=\\\"图文\\\" onclick=\\\"document.add.title.value=document.add.title.value+\\\'(图文)\\\';\\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\">属性: \r\n	<input name=\\\"titlefont[b]\\\" type=\\\"checkbox\\\" value=\\\"b\\\"<?=$titlefontb?>>粗体\r\n	<input name=\\\"titlefont[i]\\\" type=\\\"checkbox\\\" value=\\\"i\\\"<?=$titlefonti?>>斜体\r\n	<input name=\\\"titlefont[s]\\\" type=\\\"checkbox\\\" value=\\\"s\\\"<?=$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\\"titlecolor\\\" type=\\\"text\\\" value=\\\"<?=stripSlashes($r[titlecolor])?>\\\" size=\\\"10\\\" class=\\\"color\\\">\r\n  </td>\r\n</tr>\r\n</table>\r\n','标题',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--title--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_title]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_title]\" type=\"text\" id=\"add[z_title]\" value=\"<?=stripSlashes($r[z_title])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'CHAR','100',1,8,'info',0,'',0,0,0,'<input name=\\\"title\\\" type=\\\"text\\\" size=\\\"42\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'title\\\',stripSlashes($r[title]))?>\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(99,'special.field','特殊属性','','\r\n<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#DBEAF5\">\r\n  <tr>\r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">信息属性: \r\n      <input name=\"checked\" type=\"checkbox\" value=\"1\"<?=$r[checked]?\' checked\':\'\'?>>\r\n      审核 &nbsp;&nbsp; 推荐 \r\n      <select name=\"isgood\" id=\"isgood\">\r\n        <option value=\"0\">不推荐</option>\r\n	<?=$ftnr[\'igname\']?>\r\n      </select>\r\n      &nbsp;&nbsp; 头条 \r\n      <select name=\"firsttitle\" id=\"firsttitle\">\r\n        <option value=\"0\">非头条</option>\r\n	<?=$ftnr[\'ftname\']?>\r\n      </select></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\"keyboard\" type=\"text\" size=\"52\" value=\"<?=stripSlashes($r[keyboard])?>\">\r\n      <font color=\"#666666\">(多个请用&quot;,&quot;隔开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\"25\" bgcolor=\"#FFFFFF\">外部链接: \r\n      <input name=\"titleurl\" type=\"text\" value=\"<?=stripSlashes($r[titleurl])?>\" size=\"52\">\r\n      <font color=\"#666666\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>\r\n','特殊属性',0,1,0,'\r\n\r\n',0,'','0',0,8,'info',0,'',0,0,0,'\r\n<input name=\"keyboard\" type=\"text\" size=42 value=\"<?=stripSlashes($r[keyboard])?>\">\r\n<font color=\"#666666\">(多个请用&quot;,&quot;隔开)</font>\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(100,'titlepic','标题图片','img','<input name=\\\"titlepic\\\" type=\\\"text\\\" id=\\\"titlepic\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[titlepic]))?>\\\" size=\\\"45\\\">\r\n<a onclick=\\\"window.open(\\\'ecmseditor/FileMain.php?type=1&classid=<?=$classid?>&infoid=<?=$id?>&filepass=<?=$filepass?>&sinfo=1&doing=1&field=titlepic<?=$ecms_hashur[ehref]?>\\\',\\\'\\\',\\\'width=700,height=550,scrollbars=yes\\\');\\\" title=\\\"选择已上传的图片\\\"><img src=\\\"../data/images/changeimg.gif\\\" border=\\\"0\\\" align=\\\"absbottom\\\"></a> \r\n','标题图片',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--titlepic--]\" size=\"20\">\r\n      )</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\"add[qz_titlepic]\" type=\"text\" id=\"add[qz_titlepic]\" value=\"<?=stripSlashes($r[qz_titlepic])?>\"> \r\n        <input name=\"add[save_titlepic]\" type=\"checkbox\" id=\"add[save_titlepic]\" value=\" checked\"<?=$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\"add[zz_titlepic]\" cols=\"60\" rows=\"10\" id=\"add[zz_titlepic]\"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\"add[z_titlepic]\" type=\"text\" id=\"titlepic5\" value=\"<?=stripSlashes($r[z_titlepic])?>\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n',1,'CHAR','120',1,8,'info',0,'',0,0,0,'<input type=\\\"file\\\" name=\\\"titlepicfile\\\" size=\\\"45\\\">\r\n',0,'',0,'60',0,0,'','','','','','',0,0,''),(101,'newstime','发布时间','text','<input name=\\\"newstime\\\" type=\\\"text\\\" value=\\\"<?=$r[newstime]?>\\\" size=\\\"28\\\" class=\\\"Wdate\\\" onClick=\\\"WdatePicker({skin:\\\'default\\\',dateFmt:\\\'yyyy-MM-dd HH:mm:ss\\\'})\\\"><input type=button name=button value=\\\"设为当前时间\\\" onclick=\\\"document.add.newstime.value=\\\'<?=$todaytime?>\\\'\\\">\r\n','发布时间',0,1,1,'\r\n  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--newstime--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_newstime]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=ehtmlspecialchars(stripSlashes($r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_newstime]\" type=\"text\" id=\"add[z_newstime]\" value=\"<?=stripSlashes($r[z_newstime])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'INT','11',1,8,'info',0,'',1,0,0,'\r\n',0,'',0,'',0,0,'','','','','','',0,0,''),(102,'smalltext','信息内容','textarea','<textarea name=\\\"smalltext\\\" cols=\\\"80\\\" rows=\\\"10\\\" id=\\\"smalltext\\\"><?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[smalltext]))?></textarea>\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--smalltext--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_smalltext]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_smalltext]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_smalltext]\\\" type=\\\"text\\\" id=\\\"add[z_smalltext]\\\" value=\\\"<?=stripSlashes($r[z_smalltext])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'TEXT','',1,8,'info',0,'',0,1,1,'<textarea name=\\\"smalltext\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"smalltext\\\"><?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'smalltext\\\',stripSlashes($r[smalltext]))?></textarea>\r\n',0,'',0,'80,10',0,0,'','','','','','',0,1,''),(103,'myarea','所在地','select','<select name=\"myarea\" id=\"myarea\"><option value=\"东城区\"<?=$r[myarea]==\"东城区\"||$ecmsfirstpost==1?\' selected\':\'\'?>>东城区</option><option value=\"西城区\"<?=$r[myarea]==\"西城区\"?\' selected\':\'\'?>>西城区</option><option value=\"崇文区\"<?=$r[myarea]==\"崇文区\"?\' selected\':\'\'?>>崇文区</option><option value=\"宣武区\"<?=$r[myarea]==\"宣武区\"?\' selected\':\'\'?>>宣武区</option><option value=\"朝阳区\"<?=$r[myarea]==\"朝阳区\"?\' selected\':\'\'?>>朝阳区</option><option value=\"海淀区\"<?=$r[myarea]==\"海淀区\"?\' selected\':\'\'?>>海淀区</option><option value=\"丰台区\"<?=$r[myarea]==\"丰台区\"?\' selected\':\'\'?>>丰台区</option><option value=\"石景山区\"<?=$r[myarea]==\"石景山区\"?\' selected\':\'\'?>>石景山区</option><option value=\"通州区\"<?=$r[myarea]==\"通州区\"?\' selected\':\'\'?>>通州区</option><option value=\"昌平区\"<?=$r[myarea]==\"昌平区\"?\' selected\':\'\'?>>昌平区</option><option value=\"大兴区\"<?=$r[myarea]==\"大兴区\"?\' selected\':\'\'?>>大兴区</option><option value=\"其它\"<?=$r[myarea]==\"其它\"?\' selected\':\'\'?>>其它</option></select>','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--myarea--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_myarea]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_myarea]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_myarea]\\\" type=\\\"text\\\" id=\\\"add[z_myarea]\\\" value=\\\"<?=stripSlashes($r[z_myarea])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',1,'VARCHAR','30',1,8,'info',0,'东城区:default|西城区|崇文区|宣武区|朝阳区|海淀区|丰台区|石景山区|通州区|昌平区|大兴区|其它',0,0,1,'<select name=\"myarea\" id=\"myarea\"><option value=\"东城区\"<?=$r[myarea]==\"东城区\"||$ecmsfirstpost==1?\' selected\':\'\'?>>东城区</option><option value=\"西城区\"<?=$r[myarea]==\"西城区\"?\' selected\':\'\'?>>西城区</option><option value=\"崇文区\"<?=$r[myarea]==\"崇文区\"?\' selected\':\'\'?>>崇文区</option><option value=\"宣武区\"<?=$r[myarea]==\"宣武区\"?\' selected\':\'\'?>>宣武区</option><option value=\"朝阳区\"<?=$r[myarea]==\"朝阳区\"?\' selected\':\'\'?>>朝阳区</option><option value=\"海淀区\"<?=$r[myarea]==\"海淀区\"?\' selected\':\'\'?>>海淀区</option><option value=\"丰台区\"<?=$r[myarea]==\"丰台区\"?\' selected\':\'\'?>>丰台区</option><option value=\"石景山区\"<?=$r[myarea]==\"石景山区\"?\' selected\':\'\'?>>石景山区</option><option value=\"通州区\"<?=$r[myarea]==\"通州区\"?\' selected\':\'\'?>>通州区</option><option value=\"昌平区\"<?=$r[myarea]==\"昌平区\"?\' selected\':\'\'?>>昌平区</option><option value=\"大兴区\"<?=$r[myarea]==\"大兴区\"?\' selected\':\'\'?>>大兴区</option><option value=\"其它\"<?=$r[myarea]==\"其它\"?\' selected\':\'\'?>>其它</option></select>',0,'',0,'',0,0,'','','','','','',0,0,''),(104,'email','邮箱','text','<input name=\\\"email\\\" type=\\\"text\\\" id=\\\"email\\\" value=\\\"<?=$ecmsfirstpost==1?$memberinfor[email]:ehtmlspecialchars(stripSlashes($r[email]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--email--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_email]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_email]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_email]\\\" type=\\\"text\\\" id=\\\"add[z_email]\\\" value=\\\"<?=stripSlashes($r[z_email])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'VARCHAR','80',1,8,'info',0,'$memberinfor[email]',0,0,1,'<input name=\\\"email\\\" type=\\\"text\\\" id=\\\"email\\\" value=\\\"<?=$ecmsfirstpost==1?$memberinfor[email]:DoReqValue($mid,\\\'email\\\',stripSlashes($r[email]))?>\\\" size=\\\"46\\\">\r\n',0,'',0,'46',1,0,'','','','','','',0,0,''),(105,'mycontact','联系方式','text','<input name=\\\"mycontact\\\" type=\\\"text\\\" id=\\\"mycontact\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[mycontact]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--mycontact--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_mycontact]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_mycontact]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_mycontact]\\\" type=\\\"text\\\" id=\\\"add[z_mycontact]\\\" value=\\\"<?=stripSlashes($r[z_mycontact])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'VARCHAR','255',1,8,'info',0,'',0,0,1,'<input name=\\\"mycontact\\\" type=\\\"text\\\" id=\\\"mycontact\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'mycontact\\\',stripSlashes($r[mycontact]))?>\\\" size=\\\"46\\\">\r\n',0,'',0,'46',1,0,'','','','','','',0,0,''),(106,'address','联系地址','text','<input name=\\\"address\\\" type=\\\"text\\\" id=\\\"address\\\" value=\\\"<?=$ecmsfirstpost==1?$memberinfor[address]:ehtmlspecialchars(stripSlashes($r[address]))?>\\\" size=\\\"60\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\"#FFFFFF\\\"> \r\n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--address--]\\\" size=\\\"20\\\">)</td>\r\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td><textarea name=\\\"add[zz_address]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_address]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\"add[z_address]\\\" type=\\\"text\\\" id=\\\"add[z_address]\\\" value=\\\"<?=stripSlashes($r[z_address])?>\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',2,'VARCHAR','255',1,8,'info',0,'$memberinfor[address]',0,0,1,'<input name=\\\"address\\\" type=\\\"text\\\" id=\\\"address\\\" value=\\\"<?=$ecmsfirstpost==1?$memberinfor[address]:DoReqValue($mid,\\\'address\\\',stripSlashes($r[address]))?>\\\" size=\\\"46\\\">\r\n',0,'',0,'46',1,0,'','','','','','',0,0,''),(107,'titlepic_alt','标题图片alt属性','text','\n<input name=\\\"titlepic_alt\\\" type=\\\"text\\\" id=\\\"titlepic_alt\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($r[titlepic_alt]))?>\\\" size=\\\"\\\">\n','',1,1,1,'\n  <tr bgcolor=\\\"#FFFFFF\\\"> \n    <td height=\\\"22\\\" valign=\\\"top\\\"><strong>[!--enews.name--]正则：</strong><br>\n      (<input name=\\\"textfield\\\" type=\\\"text\\\" id=\\\"textfield\\\" value=\\\"[!--titlepic_alt--]\\\" size=\\\"20\\\">)</td>\n    <td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\n        <tr> \n          <td><textarea name=\\\"add[zz_titlepic_alt]\\\" cols=\\\"60\\\" rows=\\\"10\\\" id=\\\"textarea\\\"><?=ehtmlspecialchars(stripSlashes($r[zz_titlepic_alt]))?></textarea></td>\n        </tr>\n        <tr> \n          <td><input name=\\\"add[z_titlepic_alt]\\\" type=\\\"text\\\" id=\\\"add[z_titlepic_alt]\\\" value=\\\"<?=stripSlashes($r[z_titlepic_alt])?>\\\">\n            (如填写这里，将为字段的值)</td>\n        </tr>\n      </table></td>\n  </tr>\n',0,'VARCHAR','',1,1,'news',0,'',0,0,1,'\n<input name=\\\"titlepic_alt\\\" type=\\\"text\\\" id=\\\"titlepic_alt\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":DoReqValue($mid,\\\'titlepic_alt\\\',stripSlashes($r[titlepic_alt]))?>\\\" size=\\\"\\\">\n',0,'',0,'',0,0,'','','','','','',0,0,'');
/*!40000 ALTER TABLE `gc_enewsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsfava`
--

DROP TABLE IF EXISTS `gc_enewsfava`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsfava` (
  `favaid` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL DEFAULT '0',
  `favatime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`favaid`),
  KEY `userid` (`userid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsfava`
--

LOCK TABLES `gc_enewsfava` WRITE;
/*!40000 ALTER TABLE `gc_enewsfava` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsfava` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsfavaclass`
--

DROP TABLE IF EXISTS `gc_enewsfavaclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsfavaclass` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsfavaclass`
--

LOCK TABLES `gc_enewsfavaclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsfavaclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsfavaclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsfeedback`
--

DROP TABLE IF EXISTS `gc_enewsfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsfeedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `saytext` text NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `homepage` varchar(160) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `saytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `job` varchar(36) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `filepath` varchar(20) NOT NULL DEFAULT '',
  `filename` text NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`),
  KEY `haveread` (`haveread`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsfeedback`
--

LOCK TABLES `gc_enewsfeedback` WRITE;
/*!40000 ALTER TABLE `gc_enewsfeedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsfeedbackclass`
--

DROP TABLE IF EXISTS `gc_enewsfeedbackclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsfeedbackclass` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bname` varchar(60) NOT NULL DEFAULT '',
  `btemp` mediumtext NOT NULL,
  `bzs` varchar(255) NOT NULL DEFAULT '',
  `enter` text NOT NULL,
  `mustenter` text NOT NULL,
  `filef` varchar(255) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `checkboxf` text NOT NULL,
  `usernames` text NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsfeedbackclass`
--

LOCK TABLES `gc_enewsfeedbackclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsfeedbackclass` DISABLE KEYS */;
INSERT INTO `gc_enewsfeedbackclass` VALUES (1,'默认反馈分类','[!--cp.header--]\r\n<table width=100% align=center cellpadding=3 cellspacing=1 class=\\\"tableborder\\\">\r\n  <form name=\\\'feedback\\\' method=\\\'post\\\' enctype=\\\'multipart/form-data\\\' action=\\\'../../enews/index.php\\\'>\r\n    <input name=\\\'enews\\\' type=\\\'hidden\\\' value=\\\'AddFeedback\\\'>\r\n    <tr>\r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">您的姓名:</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input name=\\\'name\\\' type=\\\'text\\\' size=\\\'42\\\'>\r\n        (*)</td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">职务:</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input name=\\\'job\\\' type=\\\'text\\\' size=\\\'42\\\'></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">公司名称:</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input name=\\\'company\\\' type=\\\'text\\\' size=\\\'42\\\'></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">联系邮箱:</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input name=\\\'email\\\' type=\\\'text\\\' size=\\\'42\\\'></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">联系电话:</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input name=\\\'mycall\\\' type=\\\'text\\\' size=\\\'42\\\'>\r\n        (*)</td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">网站:</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input name=\\\'homepage\\\' type=\\\'text\\\' size=\\\'42\\\'></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">联系地址:</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input name=\\\'address\\\' type=\\\'text\\\' size=\\\"42\\\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">信息标题:</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input name=\\\'title\\\' type=\\\'text\\\' size=\\\"42\\\"> (*)</td>\r\n    </tr>\r\n    <tr> \r\n      <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'><div align=\\\"right\\\">信息内容(*):</div></td>\r\n      <td bgcolor=\\\'ffffff\\\'><textarea name=\\\'saytext\\\' cols=\\\'60\\\' rows=\\\'12\\\'></textarea> \r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td bgcolor=\\\'ffffff\\\'></td>\r\n      <td bgcolor=\\\'ffffff\\\'><input type=\\\'submit\\\' name=\\\'submit\\\' value=\\\'提交\\\'></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n[!--cp.footer--]','','您的姓名<!--field--->name<!--record-->职务<!--field--->job<!--record-->公司名称<!--field--->company<!--record-->联系邮箱<!--field--->email<!--record-->联系电话<!--field--->mycall<!--record-->网站<!--field--->homepage<!--record-->联系地址<!--field--->address<!--record-->信息标题<!--field--->title<!--record-->信息内容<!--field--->saytext<!--record-->',',name,mycall,title,saytext,',',',0,'','');
/*!40000 ALTER TABLE `gc_enewsfeedbackclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsfeedbackf`
--

DROP TABLE IF EXISTS `gc_enewsfeedbackf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsfeedbackf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsfeedbackf`
--

LOCK TABLES `gc_enewsfeedbackf` WRITE;
/*!40000 ALTER TABLE `gc_enewsfeedbackf` DISABLE KEYS */;
INSERT INTO `gc_enewsfeedbackf` VALUES (1,'title','标题','text','',7,'VARCHAR','120','',''),(2,'saytext','内容','textarea','',8,'TEXT','','',''),(3,'name','姓名','text','',0,'VARCHAR','30','',''),(4,'email','邮箱','text','',3,'VARCHAR','80','',''),(5,'mycall','电话','text','',4,'VARCHAR','30','',''),(6,'homepage','网站','text','',5,'VARCHAR','160','',''),(7,'company','公司名称','text','',2,'VARCHAR','80','',''),(8,'address','联系地址','text','',6,'VARCHAR','255','',''),(9,'job','职务','text','',1,'VARCHAR','36','','');
/*!40000 ALTER TABLE `gc_enewsfeedbackf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsfile_1`
--

DROP TABLE IF EXISTS `gc_enewsfile_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsfile_1` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` bigint(16) unsigned NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `classid` (`classid`),
  KEY `pubid` (`pubid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsfile_1`
--

LOCK TABLES `gc_enewsfile_1` WRITE;
/*!40000 ALTER TABLE `gc_enewsfile_1` DISABLE KEYS */;
INSERT INTO `gc_enewsfile_1` VALUES (1,0,'ec9f12f65368dd6ee0d5dec883643b24.jpg',16981,'2019/05-17','admin',1558102329,1,'2019051716581578_S.jpg',1,0,1558102247,1558102247,1,0),(2,1000010000000001,'13bd645ec3eeb6077f012b5c47b76e45.jpg',16981,'2019/05-17','admin',1558102467,1,'2019051716581578_S.jpg',1,0,1,0,1,0),(3,1000010000000002,'6f6305e66a8aff8b8eab531e9ddcaea0.jpg',15583,'2019/05-19','admin',1558223213,1,'20190518042001989.jpg',1,0,2,0,1,0),(4,1000010000000033,'a62dd0567716e05048a3e8d7bd3826d2.jpg',19483,'2019/05-20','admin',1558358867,2,'2019052018284338_S.jpg',1,0,33,0,1,0),(5,1000010000000034,'28c6b987a4a8c6a6cb905020bcb76c8f.jpg',18813,'2019/05-20','admin',1558359020,2,'2019051620340331_S.jpg',1,0,34,0,1,0);
/*!40000 ALTER TABLE `gc_enewsfile_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsfile_member`
--

DROP TABLE IF EXISTS `gc_enewsfile_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsfile_member` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsfile_member`
--

LOCK TABLES `gc_enewsfile_member` WRITE;
/*!40000 ALTER TABLE `gc_enewsfile_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsfile_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsfile_other`
--

DROP TABLE IF EXISTS `gc_enewsfile_other`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsfile_other` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `modtype` (`modtype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsfile_other`
--

LOCK TABLES `gc_enewsfile_other` WRITE;
/*!40000 ALTER TABLE `gc_enewsfile_other` DISABLE KEYS */;
INSERT INTO `gc_enewsfile_other` VALUES (1,0,'04e2bbfa9177ba78c571fa629d40e88b.png',53462,'2019/05-17','admin',1558106693,0,'adt.png',1,0,1,0,1,3),(3,0,'d5e640946c6e22ce02533f1502b7f643.jpg',26869,'2019/05-18','admin',1558142898,0,'img_02.jpg',1,0,2,0,1,3);
/*!40000 ALTER TABLE `gc_enewsfile_other` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsfile_public`
--

DROP TABLE IF EXISTS `gc_enewsfile_public`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsfile_public` (
  `fileid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` tinyint(1) NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `path` char(20) NOT NULL DEFAULT '',
  `adduser` char(30) NOT NULL DEFAULT '',
  `filetime` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` tinyint(1) NOT NULL DEFAULT '0',
  `no` char(60) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onclick` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `cjid` int(10) unsigned NOT NULL DEFAULT '0',
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `modtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fileid`),
  KEY `id` (`id`),
  KEY `type` (`type`),
  KEY `modtype` (`modtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsfile_public`
--

LOCK TABLES `gc_enewsfile_public` WRITE;
/*!40000 ALTER TABLE `gc_enewsfile_public` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsfile_public` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsfocus`
--

DROP TABLE IF EXISTS `gc_enewsfocus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsfocus` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `picurl` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ftime` int(11) DEFAULT NULL,
  `target` varchar(10) DEFAULT NULL,
  `classid` smallint(5) DEFAULT NULL,
  `fsort` smallint(6) DEFAULT NULL COMMENT '排序',
  `smallpicurl` varchar(200) NOT NULL DEFAULT '' COMMENT '图片url',
  `comment` varchar(500) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='轮播图管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsfocus`
--

LOCK TABLES `gc_enewsfocus` WRITE;
/*!40000 ALTER TABLE `gc_enewsfocus` DISABLE KEYS */;
INSERT INTO `gc_enewsfocus` VALUES (1,'如何选股票','','http://www.baidu.com',1558141292,'_blank',1,0,'',''),(2,'油价最新政策','','http://www.baidu.com',1558141324,'_blank',1,1,'',''),(4,'图片1','/d/file/p/2019/05-18/8e89e549030c1d4bb499824899f8e064.jpg','http://www.baidu.com',1558142804,'_blank',3,0,'','');
/*!40000 ALTER TABLE `gc_enewsfocus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsfocusclass`
--

DROP TABLE IF EXISTS `gc_enewsfocusclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsfocusclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='轮播图分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsfocusclass`
--

LOCK TABLES `gc_enewsfocusclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsfocusclass` DISABLE KEYS */;
INSERT INTO `gc_enewsfocusclass` VALUES (1,'快讯');
/*!40000 ALTER TABLE `gc_enewsfocusclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsgbook`
--

DROP TABLE IF EXISTS `gc_enewsgbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsgbook` (
  `lyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `lytime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lytext` text NOT NULL,
  `retext` text NOT NULL,
  `bid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`lyid`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsgbook`
--

LOCK TABLES `gc_enewsgbook` WRITE;
/*!40000 ALTER TABLE `gc_enewsgbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsgbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsgbookclass`
--

DROP TABLE IF EXISTS `gc_enewsgbookclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsgbookclass` (
  `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `bname` varchar(60) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsgbookclass`
--

LOCK TABLES `gc_enewsgbookclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsgbookclass` DISABLE KEYS */;
INSERT INTO `gc_enewsgbookclass` VALUES (1,'默认留言分类',0,0);
/*!40000 ALTER TABLE `gc_enewsgbookclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsgfenip`
--

DROP TABLE IF EXISTS `gc_enewsgfenip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsgfenip` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsgfenip`
--

LOCK TABLES `gc_enewsgfenip` WRITE;
/*!40000 ALTER TABLE `gc_enewsgfenip` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsgfenip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsgoodtype`
--

DROP TABLE IF EXISTS `gc_enewsgoodtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsgoodtype` (
  `tid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tname` varchar(60) NOT NULL DEFAULT '',
  `ttype` tinyint(1) NOT NULL DEFAULT '0',
  `levelid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `groupid` varchar(255) NOT NULL DEFAULT '',
  `showall` tinyint(1) NOT NULL DEFAULT '0',
  `showcid` text NOT NULL,
  `hiddencid` text NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `ttype` (`ttype`),
  KEY `levelid` (`levelid`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsgoodtype`
--

LOCK TABLES `gc_enewsgoodtype` WRITE;
/*!40000 ALTER TABLE `gc_enewsgoodtype` DISABLE KEYS */;
INSERT INTO `gc_enewsgoodtype` VALUES (1,'首页置顶',1,1,0,'',0,'',''),(10,'右侧推荐阅读',0,1,0,'',0,'',''),(11,'右侧图片广告下推荐',0,2,0,'',0,'',''),(12,'猜你喜欢',0,3,0,'',0,'','');
/*!40000 ALTER TABLE `gc_enewsgoodtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsgroup`
--

DROP TABLE IF EXISTS `gc_enewsgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsgroup` (
  `groupid` smallint(6) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL DEFAULT '',
  `dopublic` tinyint(1) NOT NULL DEFAULT '0',
  `doclass` tinyint(1) NOT NULL DEFAULT '0',
  `dotemplate` tinyint(1) NOT NULL DEFAULT '0',
  `dopicnews` tinyint(1) NOT NULL DEFAULT '0',
  `dofile` tinyint(1) NOT NULL DEFAULT '0',
  `douser` tinyint(1) NOT NULL DEFAULT '0',
  `dolog` tinyint(1) NOT NULL DEFAULT '0',
  `domember` tinyint(1) NOT NULL DEFAULT '0',
  `dobefrom` tinyint(1) NOT NULL DEFAULT '0',
  `doword` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `doad` tinyint(1) NOT NULL DEFAULT '0',
  `dovote` tinyint(1) NOT NULL DEFAULT '0',
  `dogroup` tinyint(1) NOT NULL DEFAULT '0',
  `doall` tinyint(1) NOT NULL DEFAULT '0',
  `docj` tinyint(1) NOT NULL DEFAULT '0',
  `dobq` tinyint(1) NOT NULL DEFAULT '0',
  `domovenews` tinyint(1) NOT NULL DEFAULT '0',
  `dopostdata` tinyint(1) NOT NULL DEFAULT '0',
  `dochangedata` tinyint(1) NOT NULL DEFAULT '0',
  `dopl` tinyint(1) NOT NULL DEFAULT '0',
  `dof` tinyint(1) NOT NULL DEFAULT '0',
  `dom` tinyint(1) NOT NULL DEFAULT '0',
  `dodo` tinyint(1) NOT NULL DEFAULT '0',
  `dodbdata` tinyint(1) NOT NULL DEFAULT '0',
  `dorepnewstext` tinyint(1) NOT NULL DEFAULT '0',
  `dotempvar` tinyint(1) NOT NULL DEFAULT '0',
  `dostats` tinyint(1) NOT NULL DEFAULT '0',
  `dowriter` tinyint(1) NOT NULL DEFAULT '0',
  `dototaldata` tinyint(1) NOT NULL DEFAULT '0',
  `dosearchkey` tinyint(1) NOT NULL DEFAULT '0',
  `dozt` tinyint(1) NOT NULL DEFAULT '0',
  `docard` tinyint(1) NOT NULL DEFAULT '0',
  `dolink` tinyint(1) NOT NULL DEFAULT '0',
  `doselfinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doexecsql` tinyint(1) NOT NULL DEFAULT '0',
  `dotable` tinyint(1) NOT NULL DEFAULT '0',
  `dodownurl` tinyint(1) NOT NULL DEFAULT '0',
  `dodeldownrecord` tinyint(1) NOT NULL DEFAULT '0',
  `doshoppayfs` tinyint(1) NOT NULL DEFAULT '0',
  `doshopps` tinyint(1) NOT NULL DEFAULT '0',
  `doshopdd` tinyint(1) NOT NULL DEFAULT '0',
  `dogbook` tinyint(1) NOT NULL DEFAULT '0',
  `dofeedback` tinyint(1) NOT NULL DEFAULT '0',
  `douserpage` tinyint(1) NOT NULL DEFAULT '0',
  `donotcj` tinyint(1) NOT NULL DEFAULT '0',
  `dodownerror` tinyint(1) NOT NULL DEFAULT '0',
  `dodelinfodata` tinyint(1) NOT NULL DEFAULT '0',
  `doaddinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doeditinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodelinfo` tinyint(1) NOT NULL DEFAULT '0',
  `doadminstyle` tinyint(1) NOT NULL DEFAULT '0',
  `dorepdownpath` tinyint(1) NOT NULL DEFAULT '0',
  `douserjs` tinyint(1) NOT NULL DEFAULT '0',
  `douserlist` tinyint(1) NOT NULL DEFAULT '0',
  `domsg` tinyint(1) NOT NULL DEFAULT '0',
  `dosendemail` tinyint(1) NOT NULL DEFAULT '0',
  `dosetmclass` tinyint(1) NOT NULL DEFAULT '0',
  `doinfodoc` tinyint(1) NOT NULL DEFAULT '0',
  `dotempgroup` tinyint(1) NOT NULL DEFAULT '0',
  `dofeedbackf` tinyint(1) NOT NULL DEFAULT '0',
  `dotask` tinyint(1) NOT NULL DEFAULT '0',
  `domemberf` tinyint(1) NOT NULL DEFAULT '0',
  `dospacestyle` tinyint(1) NOT NULL DEFAULT '0',
  `dospacedata` tinyint(1) NOT NULL DEFAULT '0',
  `dovotemod` tinyint(1) NOT NULL DEFAULT '0',
  `doplayer` tinyint(1) NOT NULL DEFAULT '0',
  `dowap` tinyint(1) NOT NULL DEFAULT '0',
  `dopay` tinyint(1) NOT NULL DEFAULT '0',
  `dobuygroup` tinyint(1) NOT NULL DEFAULT '0',
  `dosearchall` tinyint(1) NOT NULL DEFAULT '0',
  `doinfotype` tinyint(1) NOT NULL DEFAULT '0',
  `doplf` tinyint(1) NOT NULL DEFAULT '0',
  `dopltable` tinyint(1) NOT NULL DEFAULT '0',
  `dochadminstyle` tinyint(1) NOT NULL DEFAULT '0',
  `dotags` tinyint(1) NOT NULL DEFAULT '0',
  `dosp` tinyint(1) NOT NULL DEFAULT '0',
  `doyh` tinyint(1) NOT NULL DEFAULT '0',
  `dofirewall` tinyint(1) NOT NULL DEFAULT '0',
  `dosetsafe` tinyint(1) NOT NULL DEFAULT '0',
  `douserclass` tinyint(1) NOT NULL DEFAULT '0',
  `doworkflow` tinyint(1) NOT NULL DEFAULT '0',
  `domenu` tinyint(1) NOT NULL DEFAULT '0',
  `dopubvar` tinyint(1) NOT NULL DEFAULT '0',
  `doclassf` tinyint(1) NOT NULL DEFAULT '0',
  `doztf` tinyint(1) NOT NULL DEFAULT '0',
  `dofiletable` tinyint(1) NOT NULL DEFAULT '0',
  `docheckinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dogoodinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodocinfo` tinyint(1) NOT NULL DEFAULT '0',
  `domoveinfo` tinyint(1) NOT NULL DEFAULT '0',
  `dodttemp` tinyint(1) NOT NULL DEFAULT '0',
  `doloadcj` tinyint(1) NOT NULL DEFAULT '0',
  `domustcheck` tinyint(1) NOT NULL DEFAULT '0',
  `docheckedit` tinyint(1) NOT NULL DEFAULT '0',
  `domemberconnect` tinyint(1) NOT NULL DEFAULT '0',
  `doprecode` tinyint(1) NOT NULL DEFAULT '0',
  `domoreport` tinyint(1) NOT NULL DEFAULT '0',
  `docanhtml` tinyint(1) NOT NULL DEFAULT '0',
  `dodelclass` tinyint(1) NOT NULL DEFAULT '0',
  `doinfofile` tinyint(1) NOT NULL DEFAULT '0',
  `doingroup` tinyint(1) NOT NULL DEFAULT '0',
  `domembergroup` tinyint(1) NOT NULL DEFAULT '0',
  `doviewgroup` tinyint(1) NOT NULL DEFAULT '0',
  `domadmingroup` tinyint(1) NOT NULL DEFAULT '0',
  `dochmoreport` tinyint(1) NOT NULL DEFAULT '0',
  `doisqf` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsgroup`
--

LOCK TABLES `gc_enewsgroup` WRITE;
/*!40000 ALTER TABLE `gc_enewsgroup` DISABLE KEYS */;
INSERT INTO `gc_enewsgroup` VALUES (1,'超级管理员',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,0);
/*!40000 ALTER TABLE `gc_enewsgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewshmsg`
--

DROP TABLE IF EXISTS `gc_enewshmsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewshmsg` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewshmsg`
--

LOCK TABLES `gc_enewshmsg` WRITE;
/*!40000 ALTER TABLE `gc_enewshmsg` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewshmsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewshnotice`
--

DROP TABLE IF EXISTS `gc_enewshnotice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewshnotice` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewshnotice`
--

LOCK TABLES `gc_enewshnotice` WRITE;
/*!40000 ALTER TABLE `gc_enewshnotice` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewshnotice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewshy`
--

DROP TABLE IF EXISTS `gc_enewshy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewshy` (
  `fid` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `cid` int(11) NOT NULL DEFAULT '0',
  `fsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `userid` (`userid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewshy`
--

LOCK TABLES `gc_enewshy` WRITE;
/*!40000 ALTER TABLE `gc_enewshy` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewshy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewshyclass`
--

DROP TABLE IF EXISTS `gc_enewshyclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewshyclass` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewshyclass`
--

LOCK TABLES `gc_enewshyclass` WRITE;
/*!40000 ALTER TABLE `gc_enewshyclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewshyclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsindexpage`
--

DROP TABLE IF EXISTS `gc_enewsindexpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsindexpage` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsindexpage`
--

LOCK TABLES `gc_enewsindexpage` WRITE;
/*!40000 ALTER TABLE `gc_enewsindexpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsindexpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsinfoclass`
--

DROP TABLE IF EXISTS `gc_enewsinfoclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsinfoclass` (
  `classid` int(11) NOT NULL AUTO_INCREMENT,
  `bclassid` int(11) NOT NULL DEFAULT '0',
  `classname` varchar(100) NOT NULL DEFAULT '',
  `infourl` mediumtext NOT NULL,
  `newsclassid` smallint(6) NOT NULL DEFAULT '0',
  `startday` date NOT NULL DEFAULT '0000-00-00',
  `endday` date NOT NULL DEFAULT '0000-00-00',
  `bz` text NOT NULL,
  `num` smallint(6) NOT NULL DEFAULT '0',
  `copyimg` tinyint(1) NOT NULL DEFAULT '0',
  `renum` smallint(6) NOT NULL DEFAULT '0',
  `keyboard` text NOT NULL,
  `oldword` text NOT NULL,
  `newword` text NOT NULL,
  `titlelen` smallint(6) NOT NULL DEFAULT '0',
  `retitlewriter` tinyint(1) NOT NULL DEFAULT '0',
  `smalltextlen` smallint(6) NOT NULL DEFAULT '0',
  `zz_smallurl` text NOT NULL,
  `zz_newsurl` text NOT NULL,
  `httpurl` varchar(255) NOT NULL DEFAULT '',
  `repad` text NOT NULL,
  `imgurl` varchar(255) NOT NULL DEFAULT '',
  `relistnum` smallint(6) NOT NULL DEFAULT '0',
  `zz_titlepicl` text NOT NULL,
  `z_titlepicl` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepicl` varchar(255) NOT NULL DEFAULT '',
  `save_titlepicl` varchar(10) NOT NULL DEFAULT '',
  `keynum` tinyint(4) NOT NULL DEFAULT '0',
  `insertnum` smallint(6) NOT NULL DEFAULT '0',
  `copyflash` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `pagetype` tinyint(1) NOT NULL DEFAULT '0',
  `smallpagezz` text NOT NULL,
  `pagezz` text NOT NULL,
  `smallpageallzz` text NOT NULL,
  `pageallzz` text NOT NULL,
  `mark` tinyint(1) NOT NULL DEFAULT '0',
  `enpagecode` tinyint(1) NOT NULL DEFAULT '0',
  `recjtheurl` tinyint(1) NOT NULL DEFAULT '0',
  `hiddenload` tinyint(1) NOT NULL DEFAULT '0',
  `justloadin` tinyint(1) NOT NULL DEFAULT '0',
  `justloadcheck` tinyint(1) NOT NULL DEFAULT '0',
  `delloadinfo` tinyint(1) NOT NULL DEFAULT '0',
  `pagerepad` mediumtext NOT NULL,
  `newsztid` text NOT NULL,
  `getfirstpic` tinyint(4) NOT NULL DEFAULT '0',
  `oldpagerep` text NOT NULL,
  `newpagerep` text NOT NULL,
  `keeptime` smallint(6) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `newstextisnull` tinyint(1) NOT NULL DEFAULT '0',
  `getfirstspic` tinyint(1) NOT NULL DEFAULT '0',
  `getfirstspicw` smallint(6) NOT NULL DEFAULT '0',
  `getfirstspich` smallint(6) NOT NULL DEFAULT '0',
  `doaddtextpage` tinyint(1) NOT NULL DEFAULT '0',
  `infourlispage` tinyint(1) NOT NULL DEFAULT '0',
  `repf` varchar(255) NOT NULL DEFAULT '',
  `repadf` varchar(255) NOT NULL DEFAULT '',
  `loadkeeptime` smallint(6) NOT NULL DEFAULT '0',
  `isnullf` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`),
  KEY `newsclassid` (`newsclassid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsinfoclass`
--

LOCK TABLES `gc_enewsinfoclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsinfoclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsinfoclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsinfotype`
--

DROP TABLE IF EXISTS `gc_enewsinfotype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsinfotype` (
  `typeid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tname` varchar(30) NOT NULL DEFAULT '',
  `mid` smallint(6) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `yhid` smallint(6) NOT NULL DEFAULT '0',
  `tnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tpath` varchar(100) NOT NULL DEFAULT '',
  `ttype` varchar(10) NOT NULL DEFAULT '',
  `maxnum` int(10) unsigned NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `timg` varchar(200) NOT NULL DEFAULT '',
  `intro` varchar(255) NOT NULL DEFAULT '',
  `pagekey` varchar(255) NOT NULL DEFAULT '',
  `newline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hotline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goodline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hotplline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `firstline` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `jstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nrejs` tinyint(1) NOT NULL DEFAULT '0',
  `listdt` tinyint(1) NOT NULL DEFAULT '0',
  `repagenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fclast` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`typeid`),
  KEY `mid` (`mid`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsinfotype`
--

LOCK TABLES `gc_enewsinfotype` WRITE;
/*!40000 ALTER TABLE `gc_enewsinfotype` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsinfotype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsinfovote`
--

DROP TABLE IF EXISTS `gc_enewsinfovote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsinfovote` (
  `pubid` bigint(16) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `votenum` int(10) unsigned NOT NULL DEFAULT '0',
  `voteip` mediumtext NOT NULL,
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `diyotherlink` tinyint(1) NOT NULL DEFAULT '0',
  `infouptime` int(10) unsigned NOT NULL DEFAULT '0',
  `infodowntime` int(10) unsigned NOT NULL DEFAULT '0',
  `copyids` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pubid`),
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsinfovote`
--

LOCK TABLES `gc_enewsinfovote` WRITE;
/*!40000 ALTER TABLE `gc_enewsinfovote` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsinfovote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsingroup`
--

DROP TABLE IF EXISTS `gc_enewsingroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsingroup` (
  `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gname` char(60) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsingroup`
--

LOCK TABLES `gc_enewsingroup` WRITE;
/*!40000 ALTER TABLE `gc_enewsingroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsingroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsjstemp`
--

DROP TABLE IF EXISTS `gc_enewsjstemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsjstemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `showdate` varchar(20) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsjstemp`
--

LOCK TABLES `gc_enewsjstemp` WRITE;
/*!40000 ALTER TABLE `gc_enewsjstemp` DISABLE KEYS */;
INSERT INTO `gc_enewsjstemp` VALUES (1,'默认js模板','[!--empirenews.listtemp--]<li><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a></li>[!--empirenews.listtemp--]',0,1,'m-d',1,0,32);
/*!40000 ALTER TABLE `gc_enewsjstemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsjstempclass`
--

DROP TABLE IF EXISTS `gc_enewsjstempclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsjstempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsjstempclass`
--

LOCK TABLES `gc_enewsjstempclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsjstempclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsjstempclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewskey`
--

DROP TABLE IF EXISTS `gc_enewskey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewskey` (
  `keyid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `keyname` char(50) NOT NULL DEFAULT '',
  `keyurl` char(200) NOT NULL DEFAULT '',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewskey`
--

LOCK TABLES `gc_enewskey` WRITE;
/*!40000 ALTER TABLE `gc_enewskey` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewskey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewskeyclass`
--

DROP TABLE IF EXISTS `gc_enewskeyclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewskeyclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewskeyclass`
--

LOCK TABLES `gc_enewskeyclass` WRITE;
/*!40000 ALTER TABLE `gc_enewskeyclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewskeyclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewslink`
--

DROP TABLE IF EXISTS `gc_enewslink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewslink` (
  `lid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `lname` varchar(100) NOT NULL DEFAULT '',
  `lpic` varchar(255) NOT NULL DEFAULT '',
  `lurl` varchar(255) NOT NULL DEFAULT '',
  `ltime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `width` varchar(10) NOT NULL DEFAULT '',
  `height` varchar(10) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '',
  `myorder` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `lsay` text NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `ltype` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewslink`
--

LOCK TABLES `gc_enewslink` WRITE;
/*!40000 ALTER TABLE `gc_enewslink` DISABLE KEYS */;
INSERT INTO `gc_enewslink` VALUES (1,'东方财富','','http://www.baidu.com','2019-05-18 09:47:38',0,'88','31','_blank',0,'','',1,0,0);
/*!40000 ALTER TABLE `gc_enewslink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewslinkclass`
--

DROP TABLE IF EXISTS `gc_enewslinkclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewslinkclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewslinkclass`
--

LOCK TABLES `gc_enewslinkclass` WRITE;
/*!40000 ALTER TABLE `gc_enewslinkclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewslinkclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewslinktmp`
--

DROP TABLE IF EXISTS `gc_enewslinktmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewslinktmp` (
  `newsurl` varchar(255) NOT NULL DEFAULT '',
  `checkrnd` varchar(50) NOT NULL DEFAULT '',
  `linkid` bigint(20) NOT NULL AUTO_INCREMENT,
  `titlepic` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`linkid`),
  KEY `checkrnd` (`checkrnd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewslinktmp`
--

LOCK TABLES `gc_enewslinktmp` WRITE;
/*!40000 ALTER TABLE `gc_enewslinktmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewslinktmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewslisttemp`
--

DROP TABLE IF EXISTS `gc_enewslisttemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewslisttemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewslisttemp`
--

LOCK TABLES `gc_enewslisttemp` WRITE;
/*!40000 ALTER TABLE `gc_enewslisttemp` DISABLE KEYS */;
INSERT INTO `gc_enewslisttemp` VALUES (1,'默认新闻列表模板','<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/zhishu.css\\\">\r\n    <script type=\\\"text/javascript\\\">\r\n        var newsurl=\\\'[!--news.url--]\\\';\r\n    </script>\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\"><?=$public_r[\\\'sitename\\\']?> > <a href=\\\"<?=sys_ReturnBqClassname(array(\\\'classid\\\'=>$GLOBALS[\\\'navclassid\\\']),9)?>\\\">[!--class.name--]</a></div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"AdtImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea1.js\\\"></script></div>\r\n            <div class=\\\"conter\\\">\r\n                <div class=\\\"contL\\\">\r\n                    <div class=\\\"newFlash box\\\">\r\n                        <span>快讯</span>\r\n                        <div class=\\\"newFlashList boxL\\\">\r\n                            [e:loop={\\\"select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort\\\",0,24,0}]\r\n                                <a href=\\\"<?=$bqr[\\\'url\\\']?>\\\"><?=$bqr[\\\'fname\\\']?></a>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                    <div class=\\\"newList\\\">\r\n                    </div>\r\n                    <div class=\\\"more_list_page\\\" start=\\\"0\\\" cid=\\\"<?=$GLOBALS[\\\'navclassid\\\']?>\\\" style=\\\"display:none\\\">\r\n\r\n                    </div>\r\n                </div>\r\n                [!--temp.sidebar--]\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <script src=\\\"[!--news.url--]skin/stock/js/jquery-3.4.1.min.js\\\"></script>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/pIndex.js\\\"></script>\r\n</body>\r\n\r\n</html>',0,0,'<li><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a> <span>[!--newstime--]</span></li>',0,1,'Y-m-d',0,0,0),(2,'默认下载列表模板','<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n<tr>\r\n<td colspan=\\\"3\\\" class=\\\"down_list\\\"><table bgcolor=\\\"#FFFFFF\\\" width=\\\"100%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" style=\\\"table-layout:  fixed;  word-wrap:  break-word\\\">\r\n<tr align=\\\"center\\\">\r\n<td bgcolor=\\\"#D0E7F7\\\">软件名称</td>\r\n<td width=\\\"76\\\"  nowrap=\\\"nowrap\\\" bgcolor=\\\"#D0E7F7\\\">整理日期</td>\r\n<td width=\\\"70\\\" nowrap=\\\"nowrap\\\" bgcolor=\\\"#D0E7F7\\\">软件大小</td>\r\n<td width=\\\"50\\\" nowrap=\\\"nowrap\\\" bgcolor=\\\"#D0E7F7\\\">人气</td>\r\n<td width=\\\"76\\\" nowrap=\\\"nowrap\\\" bgcolor=\\\"#D0E7F7\\\">软件等级</td>\r\n</tr>\r\n[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]\r\n</table></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"list_page\\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>推荐下载</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\\'selfinfo\\\',10,44,0,2,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\\'selfinfo\\\',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ol class=\\\"rank\\\">\r\n[ecmsinfo]\\\'selfinfo\\\',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>',200,0,'<tr> \r\n    <td width=\\\"290\\\"><img src=\\\"[!--news.url--]e/data/images/list.gif\\\" width=\\\"11\\\" height=\\\"11\\\" border=\\\"0\\\" /> <b>[!--class.name--]<a href=\\\"[!--titleurl--]\\\">[!--title--]</a></b></td>\r\n    <td align=\\\"center\\\" nowrap=\\\"nowrap\\\">[!--newstime--]</td>\r\n    <td align=\\\"center\\\" nowrap=\\\"nowrap\\\">[!--filesize--]</td>\r\n    <td align=\\\"center\\\" nowrap=\\\"nowrap\\\">[!--totaldown--]</td>\r\n    <td align=\\\"center\\\" nowrap=\\\"nowrap\\\"><img src=\\\"[!--news.url--]e/data/images/[!--star--]star.gif\\\" border=\\\"0\\\" /></td>\r\n  </tr>\r\n  <tr valign=\\\"top\\\"> \r\n    <td colspan=\\\"5\\\" class=\\\"softsay\\\">[!--softsay--]</td>\r\n</tr>\r\n  <tr> \r\n    <td colspan=\\\"5\\\"><font color=\\\"green\\\">界面语言：</font>[!--language--]  <font color=\\\"green\\\">软件类型：</font>[!--softtype--]  <font color=\\\"green\\\">授权方式：</font>[!--softsq--]  <font color=\\\"green\\\">运行平台：</font>[!--softfj--]</td>\r\n</tr></td></tr>\r\n  <tr> \r\n    <td colspan=\\\"5\\\"><img src=\\\"[!--news.url--]e/data/images/line.gif\\\" width=\\\"100%\\\" height=\\\"9\\\" /></td>\r\n</tr>',1,2,'Y-m-d',0,0,0),(3,'默认图片列表模板','<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n<tr>\r\n<td colspan=\\\"3\\\" class=\\\"photo_list\\\">\r\n[!--empirenews.listtemp--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"line_bottom\\\">\r\n	<tr>\r\n		<td width=\\\"25%\\\" valign=\\\"top\\\"><!--list.var1--></td>\r\n		<td width=\\\"25%\\\" valign=\\\"top\\\"><!--list.var2--></td>\r\n		<td width=\\\"25%\\\" valign=\\\"top\\\"><!--list.var3--></td>\r\n		<td width=\\\"25%\\\" valign=\\\"top\\\"><!--list.var4--></td>\r\n	</tr>\r\n</table>\r\n[!--empirenews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"list_page\\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>图片推荐</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\\'selfinfo\\\',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ol class=\\\"rank\\\">\r\n[ecmsinfo]\\\'selfinfo\\\',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>',0,0,'<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"4\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td align=\\\"center\\\" class=\\\"titlepic\\\"><a href=\\\"[!--titleurl--]\\\"><img src=\\\"[!--titlepic--]\\\" alt=\\\"[!--oldtitle--]\\\" width=\\\"128\\\" height=\\\"90\\\" border=\\\"0\\\" /></a></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\\"center\\\"><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a></td>\r\n	</tr>\r\n</table>',4,3,'Y-m-d H:i:s',22,0,0),(4,'默认FLASH列表模板','<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n<tr>\r\n<td colspan=\\\"3\\\" class=\\\"flash_list\\\">\r\n[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"list_page\\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>推荐下载</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\\'selfinfo\\\',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ol class=\\\"rank\\\">\r\n[ecmsinfo]\\\'selfinfo\\\',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>',200,0,'<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"8\\\" class=\\\"line_bottom\\\">\r\n<tr valign=\\\"top\\\">\r\n<td width=\\\"200\\\" align=\\\"center\\\"><a href=\\\"[!--titleurl--]\\\"><img src=\\\"[!--titlepic--]\\\" width=\\\"200\\\" height=\\\"150\\\" border=\\\"0\\\" /></a></td>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n<tr>\r\n<td width=\\\"70%\\\" height=\\\"26\\\" style=\\\"font-size:14px\\\"><strong><a href=\\\"[!--titleurl--]\\\">[!--title--]</a></strong></td>\r\n<td width=\\\"30%\\\"><div align=\\\"right\\\">[!--newstime--]</div></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\\"2\\\"class=\\\"flashsay\\\">简介：[!--flashsay--]</td>\r\n</tr>\r\n<tr>\r\n<td height=\\\"26\\\" colspan=\\\"2\\\">作者：[!--flashwriter--]　文件大小：[!--filesize--]　作品人气：[!--onclick--] </td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>',1,4,'Y-m-d',0,0,0),(5,'默认电影列表模板','<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n<tr>\r\n<td colspan=\\\"3\\\" class=\\\"movie_list\\\">\r\n[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"list_page\\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>影视推荐</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\\'selfinfo\\\',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ol class=\\\"rank\\\">\r\n[ecmsinfo]\\\'selfinfo\\\',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>',100,0,'<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"8\\\" class=\\\"line_bottom\\\">\r\n<tr valign=\\\"top\\\">\r\n    <td width=\\\"27%\\\" align=\\\"center\\\" class=\\\"titlepic\\\"><a href=\\\"[!--titleurl--]\\\"><img src=\\\"[!--titlepic--]\\\" alt=\\\"[!--oldtitle--]\\\" width=\\\"120\\\" height=\\\"150\\\" border=\\\"0\\\" /></a></td>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n<tr>\r\n          <td width=\\\"80%\\\" height=\\\"26\\\" style=\\\"font-size:14px\\\"><strong><a href=\\\"[!--titleurl--]\\\">[!--title--]</a></strong> \r\n            <img src=\\\"[!--news.url--]e/data/images/[!--star--]star.gif\\\" alt=\\\"推荐指数[!--star--]颗星\\\" border=\\\"0\\\" align=\\\"absmiddle\\\" /></td>\r\n          <td width=\\\"20%\\\"> \r\n            <div align=\\\"right\\\">[!--newstime--]</div></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\\"2\\\"><strong>年代：</strong>2008　　<strong>出品公司：</strong>[!--company--]</td>\r\n</tr>\r\n<tr>\r\n	<td height=\\\"26\\\" colspan=\\\"2\\\"><strong>导演：</strong>[!--playadmin--]</td>\r\n</tr>\r\n<tr>\r\n	<td height=\\\"26\\\" colspan=\\\"2\\\"><strong>主演：</strong>[!--player--]</td>\r\n</tr>\r\n<tr>\r\n	<td height=\\\"26\\\" colspan=\\\"2\\\"><strong>类型：</strong>[!--movietype--]</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\\"2\\\"><strong>影片简介：</strong>[!--moviesay--] [<a title=\\\"阅读全文\\\" href=\\\"[!--titleurl--]\\\">详细内容</a>]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>',1,5,'Y-m-d',0,0,0),(6,'默认商城列表模板','<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n<tr>\r\n<td colspan=\\\"3\\\" class=\\\"shop_list\\\">\r\n[!--empirenews.listtemp--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"line_bottom\\\">\r\n	<tr>\r\n		<td width=\\\"25%\\\" valign=\\\"top\\\"><!--list.var1--></td>\r\n		<td width=\\\"25%\\\" valign=\\\"top\\\"><!--list.var2--></td>\r\n		<td width=\\\"25%\\\" valign=\\\"top\\\"><!--list.var3--></td>\r\n		<td width=\\\"25%\\\" valign=\\\"top\\\"><!--list.var4--></td>\r\n	</tr>\r\n</table>\r\n[!--empirenews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"list_page\\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>商品推荐</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\\'selfinfo\\\',10,44,0,0,2,0[/ecmsinfo]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ol class=\\\"rank\\\">\r\n[ecmsinfo]\\\'selfinfo\\\',10,40,0,1,10,0[/ecmsinfo]\r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>',60,0,'<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"4\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td align=\\\"center\\\" class=\\\"titlepic\\\"><a href=\\\"[!--titleurl--]\\\"><img src=\\\"[!--titlepic--]\\\" alt=\\\"[!--oldtitle--]\\\" width=\\\"120\\\" height=\\\"120\\\" border=\\\"0\\\" /></a></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\\"center\\\"><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\\"center\\\" class=\\\"tprice\\\">市场价：<span>￥[!--tprice--]</span></td>\r\n	</tr>\r\n	<tr>\r\n		<td align=\\\"center\\\" class=\\\"price\\\">优惠价：<span>￥[!--price--]</span></td>\r\n	</tr>\r\n</table>',4,6,'Y-m-d',20,0,0),(7,'默认文章列表模板','<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"news_list\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[!--empirenews.listtemp--]<ul>\r\n<!--list.var1-->\r\n<!--list.var2-->\r\n<!--list.var3-->\r\n<!--list.var4-->\r\n<!--list.var5--></ul>\r\n[!--empirenews.listtemp--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"list_page\\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table></td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>最后更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n[ecmsinfo]\\\'selfinfo\\\',10,44,0,0,2,0[/ecmsinfo] \r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>热门点击</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ol class=\\\"rank\\\">\r\n[ecmsinfo]\\\'selfinfo\\\',10,40,0,1,10,0[/ecmsinfo] \r\n</ol></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>',0,0,'<li><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a> <span>[!--newstime--]</span></li>',5,7,'Y-m-d',0,0,0),(8,'分类信息默认列表模板','<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n<tr>\r\n<td colspan=\\\"3\\\" class=\\\"info_list\\\">\r\n[!--empirenews.listtemp--]\r\n<!--list.var1-->\r\n[!--empirenews.listtemp--]\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"list_page\\\">\r\n<tr>\r\n<td>[!--show.page--]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table></td>\r\n<td class=\\\"sider\\\">\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>地区导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[!--temp.infoarea--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>分类导航</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td>[!--temp.infoclassnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>推荐信息</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n[!--self.goodnews--]\r\n</ul></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>',120,0,'<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"8\\\" class=\\\"line_bottom\\\">\r\n<tr valign=\\\"top\\\">\r\n<td align=\\\"center\\\" class=\\\"titlepic\\\"><a href=\\\"[!--titleurl--]\\\"><img src=\\\"[!--titlepic--]\\\" alt=\\\"[!--oldtitle--]\\\" width=\\\"80\\\" height=\\\"60\\\" border=\\\"0\\\" /></a></td>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n<tr>\r\n<td width=\\\"70%\\\" height=\\\"26\\\" style=\\\"font-size:14px\\\"><strong>[<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--classid--]&amp;ph=1&amp;myarea=[!--myarea--]\\\">[!--myarea--]</a>] <a href=\\\"[!--titleurl--]\\\">[!--title--]</a>\r\n</strong> 关注：<span class=\\\"click\\\">[!--onclick--]</span></td>\r\n<td width=\\\"30%\\\"><div align=\\\"right\\\">[!--newstime--]</div></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\\\"2\\\" class=\\\"smalltext\\\">[!--smalltext--] [<a title=\\\"阅读全文\\\" href=\\\"[!--titleurl--]\\\">详细内容</a>]</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>',1,8,'Y-m-d',0,0,0);
/*!40000 ALTER TABLE `gc_enewslisttemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewslisttempclass`
--

DROP TABLE IF EXISTS `gc_enewslisttempclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewslisttempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewslisttempclass`
--

LOCK TABLES `gc_enewslisttempclass` WRITE;
/*!40000 ALTER TABLE `gc_enewslisttempclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewslisttempclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewslog`
--

DROP TABLE IF EXISTS `gc_enewslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewslog` (
  `loginid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `logintime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `loginip` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(30) NOT NULL DEFAULT '',
  `loginauth` tinyint(1) NOT NULL DEFAULT '0',
  `ipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`loginid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewslog`
--

LOCK TABLES `gc_enewslog` WRITE;
/*!40000 ALTER TABLE `gc_enewslog` DISABLE KEYS */;
INSERT INTO `gc_enewslog` VALUES (1,'admin','2019-05-17 12:12:14','127.0.0.1',1,'',0,'54945'),(2,'admin','2019-05-17 22:04:13','127.0.0.1',1,'',0,'57174'),(3,'admin','2019-05-18 08:47:25','127.0.0.1',1,'',0,'3784'),(4,'admin','2019-05-18 21:01:33','127.0.0.1',1,'',0,'49526'),(5,'admin','2019-05-19 07:43:28','127.0.0.1',1,'',0,'43590'),(6,'admin','2019-05-20 08:37:19','127.0.0.1',1,'',0,'21990'),(7,'admin','2019-05-20 20:50:26','127.0.0.1',1,'',0,'36742'),(8,'admin','2019-05-21 08:44:02','127.0.0.1',1,'',0,'46744'),(9,'admin','2019-05-21 21:16:40','127.0.0.1',1,'',0,'17380'),(10,'yaoweibo','2019-05-22 09:07:47','127.0.0.1',1,'',0,'30622');
/*!40000 ALTER TABLE `gc_enewslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsloginfail`
--

DROP TABLE IF EXISTS `gc_enewsloginfail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsloginfail` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `num` tinyint(4) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsloginfail`
--

LOCK TABLES `gc_enewsloginfail` WRITE;
/*!40000 ALTER TABLE `gc_enewsloginfail` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsloginfail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsmember`
--

DROP TABLE IF EXISTS `gc_enewsmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsmember` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `rnd` char(20) NOT NULL DEFAULT '',
  `email` char(50) NOT NULL DEFAULT '',
  `registertime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userfen` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userdate` int(10) unsigned NOT NULL DEFAULT '0',
  `money` float(11,2) NOT NULL DEFAULT '0.00',
  `zgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `havemsg` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `salt` char(8) NOT NULL DEFAULT '',
  `userkey` char(12) NOT NULL DEFAULT '',
  `ingid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `agid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isern` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `groupid` (`groupid`),
  KEY `ingid` (`ingid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsmember`
--

LOCK TABLES `gc_enewsmember` WRITE;
/*!40000 ALTER TABLE `gc_enewsmember` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsmember_connect`
--

DROP TABLE IF EXISTS `gc_enewsmember_connect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsmember_connect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `apptype` char(20) NOT NULL DEFAULT '',
  `bindkey` char(32) NOT NULL DEFAULT '',
  `bindtime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginnum` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `bindkey` (`bindkey`),
  KEY `apptype` (`apptype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsmember_connect`
--

LOCK TABLES `gc_enewsmember_connect` WRITE;
/*!40000 ALTER TABLE `gc_enewsmember_connect` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsmember_connect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsmember_connect_app`
--

DROP TABLE IF EXISTS `gc_enewsmember_connect_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsmember_connect_app` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `apptype` char(20) NOT NULL DEFAULT '',
  `appname` char(30) NOT NULL DEFAULT '',
  `appid` char(60) NOT NULL DEFAULT '',
  `appkey` char(120) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `qappname` char(30) NOT NULL DEFAULT '',
  `appsay` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `apptype` (`apptype`),
  KEY `isclose` (`isclose`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsmember_connect_app`
--

LOCK TABLES `gc_enewsmember_connect_app` WRITE;
/*!40000 ALTER TABLE `gc_enewsmember_connect_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsmember_connect_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsmemberadd`
--

DROP TABLE IF EXISTS `gc_enewsmemberadd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsmemberadd` (
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `oicq` varchar(25) NOT NULL DEFAULT '',
  `msn` varchar(120) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `spacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `homepage` varchar(200) NOT NULL DEFAULT '',
  `saytext` text NOT NULL,
  `company` varchar(255) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `userpic` varchar(200) NOT NULL DEFAULT '',
  `spacename` varchar(255) NOT NULL DEFAULT '',
  `spacegg` text NOT NULL,
  `viewstats` int(11) NOT NULL DEFAULT '0',
  `regip` varchar(20) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(20) NOT NULL DEFAULT '',
  `loginnum` int(10) unsigned NOT NULL DEFAULT '0',
  `regipport` varchar(6) NOT NULL DEFAULT '',
  `lastipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsmemberadd`
--

LOCK TABLES `gc_enewsmemberadd` WRITE;
/*!40000 ALTER TABLE `gc_enewsmemberadd` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsmemberadd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsmemberf`
--

DROP TABLE IF EXISTS `gc_enewsmemberf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsmemberf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsmemberf`
--

LOCK TABLES `gc_enewsmemberf` WRITE;
/*!40000 ALTER TABLE `gc_enewsmemberf` DISABLE KEYS */;
INSERT INTO `gc_enewsmemberf` VALUES (1,'truename','真实姓名','text','\r\n<input name=\"truename\" type=\"text\" id=\"truename\" value=\"<?=$ecmsfirstpost==1?\"\":ehtmlspecialchars(stripSlashes($addr[truename]))?>\">\r\n','',1,'VARCHAR','20','',''),(2,'oicq','QQ号码','text','<input name=\\\"oicq\\\" type=\\\"text\\\" id=\\\"oicq\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($addr[oicq]))?>\\\">\r\n','',5,'VARCHAR','25','',''),(3,'msn','MSN','text','<input name=\\\"msn\\\" type=\\\"text\\\" id=\\\"msn\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($addr[msn]))?>\\\">\r\n','',6,'VARCHAR','120','',''),(4,'mycall','联系电话','text','<input name=\\\"mycall\\\" type=\\\"text\\\" id=\\\"mycall\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($addr[mycall]))?>\\\">\r\n','',2,'VARCHAR','30','',''),(5,'phone','手机','text','<input name=\\\"phone\\\" type=\\\"text\\\" id=\\\"phone\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($addr[phone]))?>\\\">\r\n','',4,'VARCHAR','30','',''),(6,'address','联系地址','text','<input name=\\\"address\\\" type=\\\"text\\\" id=\\\"address\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($addr[address]))?>\\\" size=\\\"50\\\">\r\n','',9,'VARCHAR','255','',''),(7,'zip','邮编','text','<input name=\\\"zip\\\" type=\\\"text\\\" id=\\\"zip\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($addr[zip]))?>\\\" size=\\\"8\\\">\r\n','',10,'VARCHAR','8','',''),(9,'homepage','网址','text','\r\n<input name=\"homepage\" type=\"text\" id=\"homepage\" value=\"<?=$ecmsfirstpost==1?\"\":ehtmlspecialchars(stripSlashes($addr[homepage]))?>\">\r\n','',7,'VARCHAR','200','',''),(10,'saytext','简介','textarea','<textarea name=\\\"saytext\\\" cols=\\\"65\\\" rows=\\\"10\\\" id=\\\"saytext\\\"><?=$ecmsfirstpost==1?\\\"\\\":stripSlashes($addr[saytext])?></textarea>\r\n','',11,'TEXT','','',''),(11,'company','公司名称','text','<input name=\\\"company\\\" type=\\\"text\\\" id=\\\"company\\\" value=\\\"<?=$ecmsfirstpost==1?\\\"\\\":ehtmlspecialchars(stripSlashes($addr[company]))?>\\\" size=\\\"38\\\">\r\n','',0,'VARCHAR','255','',''),(12,'fax','传真','text','\r\n<input name=\"fax\" type=\"text\" id=\"fax\" value=\"<?=$ecmsfirstpost==1?\"\":ehtmlspecialchars(stripSlashes($addr[fax]))?>\">\r\n','',3,'VARCHAR','30','',''),(13,'userpic','会员头像','img','<input type=\\\"file\\\" name=\\\"userpicfile\\\">&nbsp;&nbsp;\r\n<?=empty($addr[userpic])?\\\"\\\":\\\"<img src=\\\'\\\".ehtmlspecialchars(stripSlashes($addr[userpic])).\\\"\\\' border=0>\\\"?>','',8,'VARCHAR','200','','');
/*!40000 ALTER TABLE `gc_enewsmemberf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsmemberfeedback`
--

DROP TABLE IF EXISTS `gc_enewsmemberfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsmemberfeedback` (
  `fid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `ftext` text NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uname` varchar(20) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsmemberfeedback`
--

LOCK TABLES `gc_enewsmemberfeedback` WRITE;
/*!40000 ALTER TABLE `gc_enewsmemberfeedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsmemberfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsmemberform`
--

DROP TABLE IF EXISTS `gc_enewsmemberform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsmemberform` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(60) NOT NULL DEFAULT '',
  `ftemp` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `enter` text NOT NULL,
  `mustenter` text NOT NULL,
  `filef` varchar(255) NOT NULL DEFAULT '',
  `imgf` varchar(255) NOT NULL DEFAULT '0',
  `tobrf` text NOT NULL,
  `viewenter` text NOT NULL,
  `searchvar` varchar(255) NOT NULL DEFAULT '',
  `canaddf` text NOT NULL,
  `caneditf` text NOT NULL,
  `checkboxf` text NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsmemberform`
--

LOCK TABLES `gc_enewsmemberform` WRITE;
/*!40000 ALTER TABLE `gc_enewsmemberform` DISABLE KEYS */;
INSERT INTO `gc_enewsmemberform` VALUES (1,'个人注册表单','<table width=\\\'100%\\\' align=\\\'center\\\' cellpadding=3 cellspacing=1 bgcolor=\\\'#DBEAF5\\\'>\r\n<tr><td width=\\\'25%\\\' height=25 bgcolor=\\\'ffffff\\\'>真实姓名</td><td bgcolor=\\\'ffffff\\\'>[!--truename--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>QQ号码</td><td bgcolor=\\\'ffffff\\\'>[!--oicq--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>MSN</td><td bgcolor=\\\'ffffff\\\'>[!--msn--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>联系电话</td><td bgcolor=\\\'ffffff\\\'>[!--mycall--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>手机</td><td bgcolor=\\\'ffffff\\\'>[!--phone--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>网站地址</td><td bgcolor=\\\'ffffff\\\'>[!--homepage--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>会员头像</td><td bgcolor=\\\'ffffff\\\'>[!--userpic--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>联系地址</td><td bgcolor=\\\'ffffff\\\'>[!--address--]&nbsp;邮编: [!--zip--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>个人介绍</td><td bgcolor=\\\'ffffff\\\'>[!--saytext--]</td></tr>\r\n</table>','','真实姓名<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网站地址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->简介<!--field--->saytext<!--record-->','',',',',userpic,',',saytext,','真实姓名<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网站地址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->简介<!--field--->saytext<!--record-->','',',truename,mycall,phone,oicq,msn,homepage,userpic,address,zip,saytext,',',truename,mycall,phone,oicq,msn,homepage,userpic,address,zip,saytext,',','),(2,'企员注册表单','<table width=\\\'100%\\\' align=\\\'center\\\' cellpadding=3 cellspacing=1 bgcolor=\\\'#DBEAF5\\\'><tr><td width=\\\'25%\\\' height=25 bgcolor=\\\'ffffff\\\'>公司名称</td><td bgcolor=\\\'ffffff\\\'>[!--company--](*)</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>联系人</td><td bgcolor=\\\'ffffff\\\'>[!--truename--](*)</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>联系电话</td><td bgcolor=\\\'ffffff\\\'>[!--mycall--](*)</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>传真</td><td bgcolor=\\\'ffffff\\\'>[!--fax--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>手机</td><td bgcolor=\\\'ffffff\\\'>[!--phone--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>QQ号码</td><td bgcolor=\\\'ffffff\\\'>[!--oicq--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>MSN</td><td bgcolor=\\\'ffffff\\\'>[!--msn--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>网址</td><td bgcolor=\\\'ffffff\\\'>[!--homepage--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>会员头像</td><td bgcolor=\\\'ffffff\\\'>[!--userpic--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>联系地址</td><td bgcolor=\\\'ffffff\\\'>[!--address--]&nbsp;邮编: [!--zip--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>公司介绍</td><td bgcolor=\\\'ffffff\\\'>[!--saytext--]</td></tr></table>','','公司名称<!--field--->company<!--record-->联系人<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->传真<!--field--->fax<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->公司介绍<!--field--->saytext<!--record-->',',company,truename,mycall,',',',',userpic,',',saytext,','公司名称<!--field--->company<!--record-->联系人<!--field--->truename<!--record-->联系电话<!--field--->mycall<!--record-->传真<!--field--->fax<!--record-->手机<!--field--->phone<!--record-->QQ号码<!--field--->oicq<!--record-->MSN<!--field--->msn<!--record-->网址<!--field--->homepage<!--record-->会员头像<!--field--->userpic<!--record-->联系地址<!--field--->address<!--record-->邮编<!--field--->zip<!--record-->公司介绍<!--field--->saytext<!--record-->',',company,',',company,truename,mycall,fax,phone,oicq,msn,homepage,userpic,address,zip,saytext,',',company,truename,mycall,fax,phone,oicq,msn,homepage,userpic,address,zip,saytext,',',');
/*!40000 ALTER TABLE `gc_enewsmemberform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsmembergbook`
--

DROP TABLE IF EXISTS `gc_enewsmembergbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsmembergbook` (
  `gid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `isprivate` tinyint(1) NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uname` varchar(20) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `gbtext` text NOT NULL,
  `retext` text NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsmembergbook`
--

LOCK TABLES `gc_enewsmembergbook` WRITE;
/*!40000 ALTER TABLE `gc_enewsmembergbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsmembergbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsmembergroup`
--

DROP TABLE IF EXISTS `gc_enewsmembergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsmembergroup` (
  `groupid` smallint(6) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(60) NOT NULL DEFAULT '',
  `level` smallint(6) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `favanum` smallint(6) NOT NULL DEFAULT '0',
  `daydown` int(11) NOT NULL DEFAULT '0',
  `msglen` int(11) NOT NULL DEFAULT '0',
  `msgnum` int(11) NOT NULL DEFAULT '0',
  `canreg` tinyint(1) NOT NULL DEFAULT '0',
  `formid` smallint(6) NOT NULL DEFAULT '0',
  `regchecked` tinyint(1) NOT NULL DEFAULT '0',
  `spacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `dayaddinfo` smallint(6) NOT NULL DEFAULT '0',
  `infochecked` tinyint(1) NOT NULL DEFAULT '0',
  `plchecked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsmembergroup`
--

LOCK TABLES `gc_enewsmembergroup` WRITE;
/*!40000 ALTER TABLE `gc_enewsmembergroup` DISABLE KEYS */;
INSERT INTO `gc_enewsmembergroup` VALUES (1,'普通会员',1,0,120,0,255,50,1,1,0,1,0,0,0),(2,'VIP会员',2,0,200,0,255,120,0,1,0,1,0,0,0),(3,'企业会员',1,0,120,0,255,50,1,2,0,2,0,0,0),(4,'企业VIP会员',2,0,200,0,255,120,0,2,0,2,0,0,0);
/*!40000 ALTER TABLE `gc_enewsmembergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsmemberpub`
--

DROP TABLE IF EXISTS `gc_enewsmemberpub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsmemberpub` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `todayinfodate` char(10) NOT NULL DEFAULT '',
  `todayaddinfo` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `todaydate` char(10) NOT NULL DEFAULT '',
  `todaydown` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authstr` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsmemberpub`
--

LOCK TABLES `gc_enewsmemberpub` WRITE;
/*!40000 ALTER TABLE `gc_enewsmemberpub` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsmemberpub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsmenu`
--

DROP TABLE IF EXISTS `gc_enewsmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsmenu` (
  `menuid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menuname` varchar(60) NOT NULL DEFAULT '',
  `menuurl` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addhash` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`),
  KEY `myorder` (`myorder`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsmenu`
--

LOCK TABLES `gc_enewsmenu` WRITE;
/*!40000 ALTER TABLE `gc_enewsmenu` DISABLE KEYS */;
INSERT INTO `gc_enewsmenu` VALUES (1,'手动管理分类','tool/focus/listclass.php',0,1,2),(2,'管理','tool/focus/index.php',0,1,2);
/*!40000 ALTER TABLE `gc_enewsmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsmenuclass`
--

DROP TABLE IF EXISTS `gc_enewsmenuclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsmenuclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classtype` tinyint(1) NOT NULL DEFAULT '0',
  `groupids` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`),
  KEY `myorder` (`myorder`),
  KEY `classtype` (`classtype`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsmenuclass`
--

LOCK TABLES `gc_enewsmenuclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsmenuclass` DISABLE KEYS */;
INSERT INTO `gc_enewsmenuclass` VALUES (1,'手动管理',0,0,2,'');
/*!40000 ALTER TABLE `gc_enewsmenuclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsmod`
--

DROP TABLE IF EXISTS `gc_enewsmod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsmod` (
  `mid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `mname` varchar(100) NOT NULL DEFAULT '',
  `mtemp` mediumtext NOT NULL,
  `mzs` varchar(255) NOT NULL DEFAULT '',
  `cj` mediumtext NOT NULL,
  `enter` mediumtext NOT NULL,
  `tempvar` mediumtext NOT NULL,
  `sonclass` text NOT NULL,
  `searchvar` varchar(255) NOT NULL DEFAULT '',
  `tid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `qenter` mediumtext NOT NULL,
  `mustqenterf` text NOT NULL,
  `qmtemp` mediumtext NOT NULL,
  `listandf` text NOT NULL,
  `setandf` tinyint(1) NOT NULL DEFAULT '0',
  `listtempvar` mediumtext NOT NULL,
  `qmname` varchar(30) NOT NULL DEFAULT '',
  `canaddf` text NOT NULL,
  `caneditf` text NOT NULL,
  `definfovoteid` smallint(6) NOT NULL DEFAULT '0',
  `showmod` tinyint(1) NOT NULL DEFAULT '0',
  `usemod` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(6) NOT NULL DEFAULT '0',
  `orderf` text NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listfile` varchar(30) NOT NULL DEFAULT '',
  `printtempid` smallint(6) NOT NULL DEFAULT '0',
  `maddfun` varchar(255) NOT NULL DEFAULT '',
  `meditfun` varchar(255) NOT NULL DEFAULT '',
  `qmaddfun` varchar(255) NOT NULL DEFAULT '',
  `qmeditfun` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsmod`
--

LOCK TABLES `gc_enewsmod` WRITE;
/*!40000 ALTER TABLE `gc_enewsmod` DISABLE KEYS */;
INSERT INTO `gc_enewsmod` VALUES (1,'新闻系统模型','<table width=\\\'100%\\\' align=center cellpadding=3 cellspacing=1 class=\\\"tableborder\\\"><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>标题(*)</td><td bgcolor=\\\'ffffff\\\'>[!--title--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>副标题</td><td bgcolor=\\\'ffffff\\\'>[!--ftitle--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>特殊属性</td><td bgcolor=\\\'ffffff\\\'>[!--special.field--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>发布时间</td><td bgcolor=\\\'ffffff\\\'>[!--newstime--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>标题图片</td><td bgcolor=\\\'ffffff\\\'>[!--titlepic--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>标题图片alt属性</td><td bgcolor=\\\'ffffff\\\'>[!--titlepic_alt--]</td></tr>\r\n<tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>内容简介</td><td bgcolor=\\\'ffffff\\\'>[!--smalltext--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>作者</td><td bgcolor=\\\'ffffff\\\'>[!--writer--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>信息来源</td><td bgcolor=\\\'ffffff\\\'>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\\'ffffff\\\'><div align=left>新闻正文(*)</div></td></tr></table><div style=\\\"background-color:#D0D0D0\\\">[!--newstext--]</div>','新闻系统模型','标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->','标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->标题图片alt属性<!--field--->titlepic_alt<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->','标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->标题图片alt属性<!--field--->titlepic_alt<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->顶<!--field--->diggtop<!--record-->','|1|2|',',title,smalltext,',1,'news','标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->标题图片alt属性<!--field--->titlepic_alt<!--record-->特殊属性<!--field--->special.field<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->',',title,newstext,','<table width=100% align=center cellpadding=3 cellspacing=1 class=\\\"tableborder\\\"><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>标题(*)</td><td bgcolor=\\\'ffffff\\\'>[!--title--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>副标题</td><td bgcolor=\\\'ffffff\\\'>[!--ftitle--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>关键字</td><td bgcolor=\\\'ffffff\\\'>[!--special.field--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>标题图片</td><td bgcolor=\\\'ffffff\\\'>[!--titlepic--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>内容简介</td><td bgcolor=\\\'ffffff\\\'>[!--smalltext--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>作者</td><td bgcolor=\\\'ffffff\\\'>[!--writer--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>信息来源</td><td bgcolor=\\\'ffffff\\\'>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\\'ffffff\\\'><div align=left>新闻正文(*)</div></td></tr></table><div style=\\\"background-color:#D0D0D0\\\">[!--newstext--]</div>','',0,'标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->标题图片alt属性<!--field--->titlepic_alt<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->顶<!--field--->diggtop<!--record-->','新闻',',title,ftitle,titlepic_alt,newstime,titlepic,smalltext,writer,befrom,newstext,',',title,ftitle,titlepic_alt,newstime,titlepic,smalltext,writer,befrom,newstext,',0,0,0,0,'',1,'',0,'','','',''),(2,'下载系统模型','<script>\r\nfunction AddFj(str)\r\n{var r;\r\nvar a;\r\na=document.add.softfj.value;\r\nr=a.split(str);\r\nif(r.length!=1)\r\n{return true;}\r\ndocument.add.softfj.value+=\\\"/\\\"+str;\r\n}\r\nfunction DelFj(str)\r\n{\r\nvar a;\r\na=document.add.softfj.value;\r\ndocument.add.softfj.value=a.replace(\\\"/\\\"+str,\\\"\\\");\r\n}\r\n</script>\r\n<table width=100% align=center cellpadding=3 cellspacing=1 class=\\\"tableborder\\\">\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件名称(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>特殊属性</td>\r\n    <td bgcolor=\\\'ffffff\\\'>[!--special.field--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>发布时间</td>\r\n    <td bgcolor=ffffff>[!--newstime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件预览图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件作者</td>\r\n    <td bgcolor=ffffff>[!--softwriter--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>厂商主页</td>\r\n    <td bgcolor=ffffff>[!--homepage--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>系统演示</td>\r\n    <td bgcolor=ffffff>[!--demo--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>运行环境</td>\r\n    <td bgcolor=ffffff>[!--softfj--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td height=25 bgcolor=ffffff>&nbsp;</td>\r\n    <td bgcolor=ffffff><input type=checkbox name=check value=\\\'Win9X/Me\\\' onclick=\\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\\">\r\n      Win9X/Me&nbsp; <input type=checkbox name=check value=\\\'WinNT/2000/XP\\\' onclick=\\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\\">\r\n      WinNT/2000/XP&nbsp; <input type=checkbox name=check value=\\\'Unix\\\' onclick=\\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\\">\r\n      Unix&nbsp; <input type=checkbox name=check value=\\\'Linux\\\' onclick=\\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\\">\r\n      Linux&nbsp; <input type=checkbox name=check value=\\\'DOS\\\' onclick=\\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\\">\r\n      DOS&nbsp; <input type=checkbox name=check value=\\\'MAC OS\\\' onclick=\\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\\">\r\n      MAC OS&nbsp; <input type=checkbox name=check value=\\\'Other\\\' onclick=\\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\\">\r\n      Other</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件属性</td>\r\n    <td bgcolor=ffffff>软件语言：[!--language--]，软件类型：[!--softtype--]，授权形式：[!--softsq--]，软件评价：[!--star--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>文件</td>\r\n    <td bgcolor=ffffff>文件类型：[!--filetype--]，文件大小：[!--filesize--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>下载地址(*)</td>\r\n    <td bgcolor=ffffff>[!--downpath--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件简介(*)</td>\r\n    <td bgcolor=ffffff>[!--softsay--]</td>\r\n  </tr>\r\n</table>','','软件名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->软件预览图<!--field--->titlepic<!--record-->软件作者<!--field--->softwriter<!--record-->厂商主页<!--field--->homepage<!--record-->系统演示<!--field--->demo<!--record-->运行环境<!--field--->softfj<!--record-->软件语言<!--field--->language<!--record-->软件类型<!--field--->softtype<!--record-->授权形式<!--field--->softsq<!--record-->软件评价<!--field--->star<!--record-->文件类型<!--field--->filetype<!--record-->文件大小<!--field--->filesize<!--record-->下载地址<!--field--->downpath<!--record-->软件简介<!--field--->softsay<!--record-->','软件名称<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->软件预览图<!--field--->titlepic<!--record-->软件作者<!--field--->softwriter<!--record-->厂商主页<!--field--->homepage<!--record-->系统演示<!--field--->demo<!--record-->运行环境<!--field--->softfj<!--record-->软件语言<!--field--->language<!--record-->软件类型<!--field--->softtype<!--record-->授权形式<!--field--->softsq<!--record-->软件评价<!--field--->star<!--record-->文件类型<!--field--->filetype<!--record-->文件大小<!--field--->filesize<!--record-->下载地址<!--field--->downpath<!--record-->软件简介<!--field--->softsay<!--record-->','软件名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->软件预览图<!--field--->titlepic<!--record-->软件作者<!--field--->softwriter<!--record-->厂商主页<!--field--->homepage<!--record-->系统演示<!--field--->demo<!--record-->运行环境<!--field--->softfj<!--record-->软件语言<!--field--->language<!--record-->软件类型<!--field--->softtype<!--record-->授权形式<!--field--->softsq<!--record-->软件评价<!--field--->star<!--record-->文件类型<!--field--->filetype<!--record-->文件大小<!--field--->filesize<!--record-->下载地址<!--field--->downpath<!--record-->软件简介<!--field--->softsay<!--record-->','|38|39|40|41|',',title,softsay,',2,'download','软件名称<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->软件预览图<!--field--->titlepic<!--record-->软件作者<!--field--->softwriter<!--record-->厂商主页<!--field--->homepage<!--record-->系统演示<!--field--->demo<!--record-->运行环境<!--field--->softfj<!--record-->软件语言<!--field--->language<!--record-->软件类型<!--field--->softtype<!--record-->授权形式<!--field--->softsq<!--record-->文件类型<!--field--->filetype<!--record-->文件大小<!--field--->filesize<!--record-->下载地址<!--field--->downpath<!--record-->软件简介<!--field--->softsay<!--record-->',',title,downpath,softsay,','<script>\r\nfunction AddFj(str)\r\n{var r;\r\nvar a;\r\na=document.add.softfj.value;\r\nr=a.split(str);\r\nif(r.length!=1)\r\n{return true;}\r\ndocument.add.softfj.value+=\\\"/\\\"+str;\r\n}\r\nfunction DelFj(str)\r\n{\r\nvar a;\r\na=document.add.softfj.value;\r\ndocument.add.softfj.value=a.replace(\\\"/\\\"+str,\\\"\\\");\r\n}\r\n</script>\r\n<table width=100% align=center cellpadding=3 cellspacing=1 class=\\\"tableborder\\\">\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件名称(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>关键字</td>\r\n    <td bgcolor=\\\'ffffff\\\'>[!--special.field--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件预览图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件作者</td>\r\n    <td bgcolor=ffffff>[!--softwriter--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>厂商主页</td>\r\n    <td bgcolor=ffffff>[!--homepage--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>系统演示</td>\r\n    <td bgcolor=ffffff>[!--demo--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>运行环境</td>\r\n    <td bgcolor=ffffff>[!--softfj--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td height=25 bgcolor=ffffff>&nbsp;</td>\r\n    <td bgcolor=ffffff><input type=checkbox name=check value=\\\'Win9X/Me\\\' onclick=\\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\\">\r\n      Win9X/Me&nbsp; <input type=checkbox name=check value=\\\'WinNT/2000/XP\\\' onclick=\\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\\">\r\n      WinNT/2000/XP&nbsp; <input type=checkbox name=check value=\\\'Unix\\\' onclick=\\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\\">\r\n      Unix&nbsp; <input type=checkbox name=check value=\\\'Linux\\\' onclick=\\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\\">\r\n      Linux&nbsp; <input type=checkbox name=check value=\\\'DOS\\\' onclick=\\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\\">\r\n      DOS&nbsp; <input type=checkbox name=check value=\\\'MAC OS\\\' onclick=\\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\\">\r\n      MAC OS&nbsp; <input type=checkbox name=check value=\\\'Other\\\' onclick=\\\"if(this.checked){AddFj(this.value);}else{DelFj(this.value);}\\\">\r\n      Other</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件属性</td>\r\n    <td bgcolor=ffffff>软件语言：[!--language--]，软件类型：[!--softtype--]，授权形式：[!--softsq--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>文件</td>\r\n    <td bgcolor=ffffff>文件类型：[!--filetype--]，文件大小：[!--filesize--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>上传软件(*)</td>\r\n    <td bgcolor=ffffff>[!--downpath--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>软件简介(*)</td>\r\n    <td bgcolor=ffffff>[!--softsay--]</td>\r\n  </tr>\r\n</table>','',0,'软件名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->软件预览图<!--field--->titlepic<!--record-->运行环境<!--field--->softfj<!--record-->软件语言<!--field--->language<!--record-->软件类型<!--field--->softtype<!--record-->授权形式<!--field--->softsq<!--record-->软件评价<!--field--->star<!--record-->文件类型<!--field--->filetype<!--record-->文件大小<!--field--->filesize<!--record-->软件简介<!--field--->softsay<!--record-->','软件',',title,newstime,titlepic,softwriter,homepage,demo,softfj,language,softtype,softsq,star,filetype,filesize,downpath,softsay,',',title,newstime,titlepic,softwriter,homepage,demo,softfj,language,softtype,softsq,star,filetype,filesize,downpath,softsay,',0,0,0,0,'',1,'',0,'','','',''),(3,'图片系统模型','<table width=100% align=center cellpadding=3 cellspacing=1 class=tableborder>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图片名称(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>特殊属性</td>\r\n    <td bgcolor=\\\'ffffff\\\'>[!--special.field--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>发布时间</td>\r\n    <td bgcolor=ffffff>[!--newstime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>文件大小</td>\r\n    <td bgcolor=ffffff>[!--filesize--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>单图属性</td>\r\n    <td bgcolor=ffffff>图片尺寸：[!--picsize--]，图片分辨率：[!--picfbl--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>来源</td>\r\n    <td bgcolor=ffffff>[!--picfrom--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图片小图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图片大图</td>\r\n    <td bgcolor=ffffff>[!--picurl--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图片集</td>\r\n    <td bgcolor=ffffff>[!--morepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图集属性</td>\r\n    <td bgcolor=ffffff>每行显示条数：[!--num--]，缩图大小：[!--width--]*[!--height--]<font color=\\\"#666666\\\">(宽*高)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>图片简介(*)</td>\r\n    <td bgcolor=ffffff>[!--picsay--]</td>\r\n  </tr>\r\n</table>','','图片名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->文件大小<!--field--->filesize<!--record-->图片尺寸<!--field--->picsize<!--record-->图片分辨率<!--field--->picfbl<!--record-->来源<!--field--->picfrom<!--record-->图片小图<!--field--->titlepic<!--record-->图片大图<!--field--->picurl<!--record-->图片集<!--field--->morepic<!--record-->每行显示条数<!--field--->num<!--record-->缩图宽度<!--field--->width<!--record-->缩图高度<!--field--->height<!--record-->图片简介<!--field--->picsay<!--record-->','图片名称<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->文件大小<!--field--->filesize<!--record-->图片尺寸<!--field--->picsize<!--record-->图片分辨率<!--field--->picfbl<!--record-->来源<!--field--->picfrom<!--record-->图片小图<!--field--->titlepic<!--record-->图片大图<!--field--->picurl<!--record-->图片集<!--field--->morepic<!--record-->每行显示条数<!--field--->num<!--record-->缩图宽度<!--field--->width<!--record-->缩图高度<!--field--->height<!--record-->图片简介<!--field--->picsay<!--record-->','图片名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->文件大小<!--field--->filesize<!--record-->图片尺寸<!--field--->picsize<!--record-->图片分辨率<!--field--->picfbl<!--record-->来源<!--field--->picfrom<!--record-->图片小图<!--field--->titlepic<!--record-->图片大图<!--field--->picurl<!--record-->图片集<!--field--->morepic<!--record-->每行显示条数<!--field--->num<!--record-->缩图宽度<!--field--->width<!--record-->缩图高度<!--field--->height<!--record-->图片简介<!--field--->picsay<!--record-->','|52|53|54|',',title,picsay,',3,'photo','图片名称<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->文件大小<!--field--->filesize<!--record-->图片尺寸<!--field--->picsize<!--record-->图片分辨率<!--field--->picfbl<!--record-->来源<!--field--->picfrom<!--record-->图片小图<!--field--->titlepic<!--record-->图片大图<!--field--->picurl<!--record-->图片简介<!--field--->picsay<!--record-->',',title,picsay,','<table width=100% align=center cellpadding=3 cellspacing=1 class=tableborder><tr><td width=16% height=25 bgcolor=ffffff>图片名称</td><td bgcolor=ffffff>[!--title--]</td></tr>\r\n  <tr>\r\n    <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>关键字</td>\r\n    <td bgcolor=\\\'ffffff\\\'>[!--special.field--]</td>\r\n  </tr>\r\n<tr><td width=16% height=25 bgcolor=ffffff>文件大小</td><td bgcolor=ffffff>[!--filesize--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片尺寸</td><td bgcolor=ffffff>[!--picsize--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片分辨率</td><td bgcolor=ffffff>[!--picfbl--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>来源</td><td bgcolor=ffffff>[!--picfrom--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片小图</td><td bgcolor=ffffff>[!--titlepic--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片大图</td><td bgcolor=ffffff>[!--picurl--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片简介</td><td bgcolor=ffffff>[!--picsay--]</td></tr></table>','',0,'图片名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->图片小图<!--field--->titlepic<!--record-->图片大图<!--field--->picurl<!--record-->图片简介<!--field--->picsay<!--record-->','图片',',title,newstime,filesize,picsize,picfbl,picfrom,titlepic,picurl,morepic,num,width,height,picsay,',',title,newstime,filesize,picsize,picfbl,picfrom,titlepic,picurl,morepic,num,width,height,picsay,',0,0,0,0,'',1,'',0,'','','',''),(4,'FLASH系统模型','<table width=100% align=center cellpadding=3 cellspacing=1 class=tableborder>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作品名(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>特殊属性</td>\r\n    <td bgcolor=\\\'ffffff\\\'>[!--special.field--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>发布时间</td>\r\n    <td bgcolor=ffffff>[!--newstime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作品预览图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作者</td>\r\n    <td bgcolor=ffffff>[!--flashwriter--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作者邮箱</td>\r\n    <td bgcolor=ffffff>[!--email--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作品评价</td>\r\n    <td bgcolor=ffffff>[!--star--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>文件大小</td>\r\n    <td bgcolor=ffffff>[!--filesize--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>Flash地址(*)</td>\r\n    <td bgcolor=ffffff>[!--flashurl--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>Flash规格</td>\r\n    <td bgcolor=ffffff>[!--width--]*[!--height--]<font color=\\\"#666666\\\">(宽度*高度)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>作品简介(*)</td>\r\n    <td bgcolor=ffffff>[!--flashsay--]</td>\r\n  </tr>\r\n</table>','','作品名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->作品预览图<!--field--->titlepic<!--record-->作者<!--field--->flashwriter<!--record-->作者邮箱<!--field--->email<!--record-->作品评价<!--field--->star<!--record-->文件大小<!--field--->filesize<!--record-->Flash地址<!--field--->flashurl<!--record-->Flash宽度<!--field--->width<!--record-->Flash高度<!--field--->height<!--record-->作品简介<!--field--->flashsay<!--record-->','作品名<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->作品预览图<!--field--->titlepic<!--record-->作者<!--field--->flashwriter<!--record-->作者邮箱<!--field--->email<!--record-->作品评价<!--field--->star<!--record-->文件大小<!--field--->filesize<!--record-->Flash地址<!--field--->flashurl<!--record-->Flash宽度<!--field--->width<!--record-->Flash高度<!--field--->height<!--record-->作品简介<!--field--->flashsay<!--record-->','作品名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->作品预览图<!--field--->titlepic<!--record-->作者<!--field--->flashwriter<!--record-->作者邮箱<!--field--->email<!--record-->作品评价<!--field--->star<!--record-->文件大小<!--field--->filesize<!--record-->Flash地址<!--field--->flashurl<!--record-->Flash宽度<!--field--->width<!--record-->Flash高度<!--field--->height<!--record-->作品简介<!--field--->flashsay<!--record-->','|50|51|',',title,flashwriter,flashsay,',4,'flash','作品名<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->作品预览图<!--field--->titlepic<!--record-->作者<!--field--->flashwriter<!--record-->作者邮箱<!--field--->email<!--record-->文件大小<!--field--->filesize<!--record-->Flash地址<!--field--->flashurl<!--record-->Flash宽度<!--field--->width<!--record-->Flash高度<!--field--->height<!--record-->作品简介<!--field--->flashsay<!--record-->',',title,flashurl,flashsay,','<table width=\\\'100%\\\' align=center cellpadding=3 cellspacing=1 class=tableborder>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>作品名(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>关键字</td>\r\n    <td bgcolor=\\\'ffffff\\\'>[!--special.field--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>作品预览图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>作者</td>\r\n    <td bgcolor=ffffff>[!--flashwriter--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>作者邮箱</td>\r\n    <td bgcolor=ffffff>[!--email--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>文件大小</td>\r\n    <td bgcolor=ffffff>[!--filesize--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>上传Flash(*)</td>\r\n    <td bgcolor=ffffff>[!--flashurl--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>Flash规格</td>\r\n    <td bgcolor=ffffff>[!--width--]*[!--height--]<font color=\\\"#666666\\\">(宽度*高度)</font></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>作品简介(*)</td>\r\n    <td bgcolor=ffffff>[!--flashsay--]</td>\r\n  </tr>\r\n</table>\r\n','',0,'作品名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->作品预览图<!--field--->titlepic<!--record-->作者<!--field--->flashwriter<!--record-->作品评价<!--field--->star<!--record-->文件大小<!--field--->filesize<!--record-->Flash地址<!--field--->flashurl<!--record-->作品简介<!--field--->flashsay<!--record-->','FLASH',',title,newstime,titlepic,flashwriter,email,star,filesize,flashurl,width,height,flashsay,',',title,newstime,titlepic,flashwriter,email,star,filesize,flashurl,width,height,flashsay,',0,0,0,0,'',1,'',0,'','','',''),(5,'电影系统模型','<table width=100% align=center cellpadding=3 cellspacing=1 class=tableborder>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片名(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>特殊属性</td>\r\n    <td bgcolor=\\\'ffffff\\\'>[!--special.field--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>发布时间</td>\r\n    <td bgcolor=ffffff>[!--newstime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片缩略图</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片类型</td>\r\n    <td bgcolor=ffffff>[!--movietype--]，推荐等级：[!--star--]，扣除点数：[!--moviefen--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>出品公司</td>\r\n    <td bgcolor=ffffff>[!--company--]，出品时间：[!--movietime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>主演</td>\r\n    <td bgcolor=ffffff>[!--player--]，导演&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;：[!--playadmin--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片文件</td>\r\n    <td bgcolor=ffffff>影片格式：[!--filetype--]，影片大小：[!--filesize--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片属性</td>\r\n    <td bgcolor=ffffff>带宽要求：[!--playdk--]，片长：[!--playtime--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>下载地址</td>\r\n    <td bgcolor=ffffff>[!--downpath--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>在线观看播放器</td>\r\n    <td bgcolor=ffffff>[!--playerid--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>在线观看地址</td>\r\n    <td bgcolor=ffffff>[!--onlinepath--]</td>\r\n  </tr>\r\n  <tr> \r\n    <td width=16% height=25 bgcolor=ffffff>影片简介(*)</td>\r\n    <td bgcolor=ffffff>[!--moviesay--]</td>\r\n  </tr>\r\n</table>\r\n','','影片名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->影片缩略图<!--field--->titlepic<!--record-->影片类型<!--field--->movietype<!--record-->出品公司<!--field--->company<!--record-->出品时间<!--field--->movietime<!--record-->主演<!--field--->player<!--record-->导演<!--field--->playadmin<!--record-->影片格式<!--field--->filetype<!--record-->影片大小<!--field--->filesize<!--record-->推荐等级<!--field--->star<!--record-->带宽要求<!--field--->playdk<!--record-->片长<!--field--->playtime<!--record-->扣除点数<!--field--->moviefen<!--record-->下载地址<!--field--->downpath<!--record-->播放器<!--field--->playerid<!--record-->在线观看地址<!--field--->onlinepath<!--record-->影片简介<!--field--->moviesay<!--record-->','影片名<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->影片缩略图<!--field--->titlepic<!--record-->影片类型<!--field--->movietype<!--record-->出品公司<!--field--->company<!--record-->出品时间<!--field--->movietime<!--record-->主演<!--field--->player<!--record-->导演<!--field--->playadmin<!--record-->影片格式<!--field--->filetype<!--record-->影片大小<!--field--->filesize<!--record-->推荐等级<!--field--->star<!--record-->带宽要求<!--field--->playdk<!--record-->片长<!--field--->playtime<!--record-->扣除点数<!--field--->moviefen<!--record-->下载地址<!--field--->downpath<!--record-->播放器<!--field--->playerid<!--record-->在线观看地址<!--field--->onlinepath<!--record-->影片简介<!--field--->moviesay<!--record-->','影片名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->影片缩略图<!--field--->titlepic<!--record-->影片类型<!--field--->movietype<!--record-->出品公司<!--field--->company<!--record-->出品时间<!--field--->movietime<!--record-->主演<!--field--->player<!--record-->导演<!--field--->playadmin<!--record-->影片格式<!--field--->filetype<!--record-->影片大小<!--field--->filesize<!--record-->推荐等级<!--field--->star<!--record-->带宽要求<!--field--->playdk<!--record-->片长<!--field--->playtime<!--record-->扣除点数<!--field--->moviefen<!--record-->下载地址<!--field--->downpath<!--record-->播放器<!--field--->playerid<!--record-->在线观看地址<!--field--->onlinepath<!--record-->影片简介<!--field--->moviesay<!--record-->','|42|43|44|45|',',title,movietype,company,player,playadmin,moviesay,',5,'movie','',',title,moviesay,','<table width=100% align=center cellpadding=3 cellspacing=1 bgcolor=#DBEAF5></table>','',0,'影片名<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->影片缩略图<!--field--->titlepic<!--record-->影片类型<!--field--->movietype<!--record-->出品公司<!--field--->company<!--record-->出品时间<!--field--->movietime<!--record-->主演<!--field--->player<!--record-->导演<!--field--->playadmin<!--record-->影片格式<!--field--->filetype<!--record-->影片大小<!--field--->filesize<!--record-->推荐等级<!--field--->star<!--record-->扣除点数<!--field--->moviefen<!--record-->影片简介<!--field--->moviesay<!--record-->','电影',',title,newstime,titlepic,movietype,company,movietime,player,playadmin,filetype,filesize,star,playdk,playtime,moviefen,downpath,playerid,onlinepath,moviesay,',',title,newstime,titlepic,movietype,company,movietime,player,playadmin,filetype,filesize,star,playdk,playtime,moviefen,downpath,playerid,onlinepath,moviesay,',0,0,0,0,'',1,'',0,'','','',''),(6,'商城系统模型','<table width=100% align=center cellpadding=3 cellspacing=1 class=tableborder>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>商品名称(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td>\r\n  </tr>\r\n  <tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>特殊属性</td><td bgcolor=\\\'ffffff\\\'>[!--special.field--]</td></tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>发布时间</td>\r\n    <td bgcolor=ffffff>[!--newstime--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>商品编号</td>\r\n    <td bgcolor=ffffff>[!--productno--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>品牌</td>\r\n    <td bgcolor=ffffff>[!--pbrand--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>简单描述</td>\r\n    <td bgcolor=ffffff>[!--intro--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>计量单位</td>\r\n    <td bgcolor=ffffff>[!--unit--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>单位重量</td>\r\n    <td bgcolor=ffffff>[!--weight--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>市场价格</td>\r\n    <td bgcolor=ffffff>[!--tprice--]元</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>购买价格</td>\r\n    <td bgcolor=ffffff>[!--price--]元</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>积分购买</td>\r\n    <td bgcolor=ffffff>[!--buyfen--]点</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>库存</td>\r\n    <td bgcolor=ffffff>[!--pmaxnum--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>商品缩略片</td>\r\n    <td bgcolor=ffffff>[!--titlepic--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td width=16% height=25 bgcolor=ffffff>商品大图</td>\r\n    <td bgcolor=ffffff>[!--productpic--]</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=25 colspan=2 bgcolor=ffffff><div align=left>商品介绍(*)</div></td>\r\n  </tr>\r\n</table>\r\n<div style=\\\"background-color:#D0D0D0\\\">[!--newstext--]</div>','','商品名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->商品编号<!--field--->productno<!--record-->品牌<!--field--->pbrand<!--record-->简单描述<!--field--->intro<!--record-->计量单位<!--field--->unit<!--record-->单位重量<!--field--->weight<!--record-->市场价格<!--field--->tprice<!--record-->购买价格<!--field--->price<!--record-->积分购买<!--field--->buyfen<!--record-->库存<!--field--->pmaxnum<!--record-->商品缩略片<!--field--->titlepic<!--record-->商品大图<!--field--->productpic<!--record-->商品介绍<!--field--->newstext<!--record-->','商品名称<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->商品编号<!--field--->productno<!--record-->品牌<!--field--->pbrand<!--record-->简单描述<!--field--->intro<!--record-->计量单位<!--field--->unit<!--record-->单位重量<!--field--->weight<!--record-->市场价格<!--field--->tprice<!--record-->购买价格<!--field--->price<!--record-->积分购买<!--field--->buyfen<!--record-->库存<!--field--->pmaxnum<!--record-->商品缩略片<!--field--->titlepic<!--record-->商品大图<!--field--->productpic<!--record-->商品介绍<!--field--->newstext<!--record-->','商品名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->商品编号<!--field--->productno<!--record-->品牌<!--field--->pbrand<!--record-->简单描述<!--field--->intro<!--record-->计量单位<!--field--->unit<!--record-->单位重量<!--field--->weight<!--record-->市场价格<!--field--->tprice<!--record-->购买价格<!--field--->price<!--record-->积分购买<!--field--->buyfen<!--record-->库存<!--field--->pmaxnum<!--record-->商品缩略片<!--field--->titlepic<!--record-->商品大图<!--field--->productpic<!--record-->商品介绍<!--field--->newstext<!--record-->销售量<!--field--->psalenum<!--record-->','|46|47|48|49|',',title,productno,pbrand,intro,price,newstext,',6,'shop','',',title,newstext,','<table width=100% align=center cellpadding=3 cellspacing=1 bgcolor=#DBEAF5></table>','',0,'商品名称<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->商品编号<!--field--->productno<!--record-->品牌<!--field--->pbrand<!--record-->简单描述<!--field--->intro<!--record-->计量单位<!--field--->unit<!--record-->单位重量<!--field--->weight<!--record-->市场价格<!--field--->tprice<!--record-->购买价格<!--field--->price<!--record-->积分购买<!--field--->buyfen<!--record-->库存<!--field--->pmaxnum<!--record-->商品缩略片<!--field--->titlepic<!--record-->商品大图<!--field--->productpic<!--record-->商品介绍<!--field--->newstext<!--record-->销售量<!--field--->psalenum<!--record-->','商品',',title,newstime,productno,pbrand,intro,unit,weight,tprice,price,buyfen,pmaxnum,titlepic,productpic,newstext,',',title,newstime,productno,pbrand,intro,unit,weight,tprice,price,buyfen,pmaxnum,titlepic,productpic,newstext,',0,0,0,0,'',1,'',0,'','','',''),(7,'文章系统模型','<table width=\\\'100%\\\' align=center cellpadding=3 cellspacing=1 class=\\\"tableborder\\\"><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>标题(*)</td><td bgcolor=\\\'ffffff\\\'>[!--title--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>副标题</td><td bgcolor=\\\'ffffff\\\'>[!--ftitle--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>特殊属性</td><td bgcolor=\\\'ffffff\\\'>[!--special.field--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>发布时间</td><td bgcolor=\\\'ffffff\\\'>[!--newstime--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>标题图片</td><td bgcolor=\\\'ffffff\\\'>[!--titlepic--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>内容简介</td><td bgcolor=\\\'ffffff\\\'>[!--smalltext--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>作者</td><td bgcolor=\\\'ffffff\\\'>[!--writer--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>信息来源</td><td bgcolor=\\\'ffffff\\\'>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\\'ffffff\\\'><div align=left>新闻正文(*)</div></td></tr></table><div style=\\\"background-color:#D0D0D0\\\">[!--newstext--]</div>','','标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->','标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->','标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->顶<!--field--->diggtop<!--record-->','|55|56|57|',',title,smalltext,',7,'article','标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->特殊属性<!--field--->special.field<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->作者<!--field--->writer<!--record-->信息来源<!--field--->befrom<!--record-->新闻正文<!--field--->newstext<!--record-->',',title,newstext,','<table width=100% align=center cellpadding=3 cellspacing=1 class=\\\"tableborder\\\"><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>标题(*)</td><td bgcolor=\\\'ffffff\\\'>[!--title--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>副标题</td><td bgcolor=\\\'ffffff\\\'>[!--ftitle--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>关键字</td><td bgcolor=\\\'ffffff\\\'>[!--special.field--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>标题图片</td><td bgcolor=\\\'ffffff\\\'>[!--titlepic--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>内容简介</td><td bgcolor=\\\'ffffff\\\'>[!--smalltext--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>作者</td><td bgcolor=\\\'ffffff\\\'>[!--writer--]</td></tr><tr><td width=\\\'16%\\\' height=25 bgcolor=\\\'ffffff\\\'>信息来源</td><td bgcolor=\\\'ffffff\\\'>[!--befrom--]</td></tr><tr><td height=25 colspan=2 bgcolor=\\\'ffffff\\\'><div align=left>新闻正文(*)</div></td></tr></table><div style=\\\"background-color:#D0D0D0\\\">[!--newstext--]</div>','',0,'标题<!--field--->title<!--record-->副标题<!--field--->ftitle<!--record-->发布时间<!--field--->newstime<!--record-->标题图片<!--field--->titlepic<!--record-->内容简介<!--field--->smalltext<!--record-->顶<!--field--->diggtop<!--record-->','文章',',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,',',title,ftitle,newstime,titlepic,smalltext,writer,befrom,newstext,',0,0,0,0,'',1,'',0,'','','',''),(8,'分类信息系统模型','<table width=100% align=center cellpadding=3 cellspacing=1 class=\\\"tableborder\\\"><tr><td width=16% height=25 bgcolor=ffffff>标题</td><td bgcolor=ffffff>[!--title--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>特殊属性</td><td bgcolor=ffffff>[!--special.field--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>发布时间</td><td bgcolor=ffffff>[!--newstime--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>信息内容</td><td bgcolor=ffffff>[!--smalltext--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片</td><td bgcolor=ffffff>[!--titlepic--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>所在地</td><td bgcolor=ffffff>[!--myarea--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>联系邮箱</td><td bgcolor=ffffff>[!--email--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>联系方式</td><td bgcolor=ffffff>[!--mycontact--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>联系地址</td><td bgcolor=ffffff>[!--address--]</td></tr></table>','','标题<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->信息内容<!--field--->smalltext<!--record-->图片<!--field--->titlepic<!--record-->所在地<!--field--->myarea<!--record-->联系邮箱<!--field--->email<!--record-->联系方式<!--field--->mycontact<!--record-->联系地址<!--field--->address<!--record-->','标题<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->信息内容<!--field--->smalltext<!--record-->图片<!--field--->titlepic<!--record-->所在地<!--field--->myarea<!--record-->联系邮箱<!--field--->email<!--record-->联系方式<!--field--->mycontact<!--record-->联系地址<!--field--->address<!--record-->','标题<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->信息内容<!--field--->smalltext<!--record-->图片<!--field--->titlepic<!--record-->所在地<!--field--->myarea<!--record-->联系邮箱<!--field--->email<!--record-->联系方式<!--field--->mycontact<!--record-->联系地址<!--field--->address<!--record-->','|11|12|13|14|15|16|18|19|20|21|23|24|25|26|28|29|30|31|',',title,smalltext,myarea,',8,'info','标题<!--field--->title<!--record-->信息内容<!--field--->smalltext<!--record-->图片<!--field--->titlepic<!--record-->所在地<!--field--->myarea<!--record-->联系邮箱<!--field--->email<!--record-->联系方式<!--field--->mycontact<!--record-->联系地址<!--field--->address<!--record-->',',title,smalltext,myarea,email,','<table width=100% align=center cellpadding=3 cellspacing=1 class=\\\"tableborder\\\"><tr>\r\n    <td width=16% height=25 bgcolor=ffffff>信息标题(*)</td>\r\n    <td bgcolor=ffffff>[!--title--]</td></tr><tr>\r\n    <td width=16% height=25 bgcolor=ffffff>信息内容(*)</td>\r\n    <td bgcolor=ffffff>[!--smalltext--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>图片</td><td bgcolor=ffffff>[!--titlepic--]</td></tr><tr>\r\n    <td width=16% height=25 bgcolor=ffffff>所在地(*)</td>\r\n    <td bgcolor=ffffff>[!--myarea--]</td></tr><tr>\r\n    <td width=16% height=25 bgcolor=ffffff>联系邮箱(*)</td>\r\n    <td bgcolor=ffffff>[!--email--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>联系方式</td><td bgcolor=ffffff>[!--mycontact--]</td></tr><tr><td width=16% height=25 bgcolor=ffffff>联系地址</td><td bgcolor=ffffff>[!--address--]</td></tr></table>',',myarea,',0,'标题<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->信息内容<!--field--->smalltext<!--record-->图片<!--field--->titlepic<!--record-->所在地<!--field--->myarea<!--record-->','分类信息',',title,newstime,smalltext,titlepic,myarea,email,mycontact,address,',',title,newstime,smalltext,titlepic,myarea,email,mycontact,address,',0,0,0,0,'',1,'',0,'','','','');
/*!40000 ALTER TABLE `gc_enewsmod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsmoreport`
--

DROP TABLE IF EXISTS `gc_enewsmoreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsmoreport` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` char(60) NOT NULL DEFAULT '',
  `purl` char(255) NOT NULL DEFAULT '',
  `ppath` char(255) NOT NULL DEFAULT '',
  `postpass` char(120) NOT NULL DEFAULT '',
  `postfile` char(255) NOT NULL DEFAULT '',
  `tempgid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mustdt` tinyint(1) NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `closeadd` tinyint(1) NOT NULL DEFAULT '0',
  `headersign` char(255) NOT NULL DEFAULT '',
  `openadmin` tinyint(1) NOT NULL DEFAULT '0',
  `rehtml` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `isclose` (`isclose`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsmoreport`
--

LOCK TABLES `gc_enewsmoreport` WRITE;
/*!40000 ALTER TABLE `gc_enewsmoreport` DISABLE KEYS */;
INSERT INTO `gc_enewsmoreport` VALUES (1,'主访问端','','','','',0,0,0,0,'',0,0);
/*!40000 ALTER TABLE `gc_enewsmoreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsnewstemp`
--

DROP TABLE IF EXISTS `gc_enewsnewstemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsnewstemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `temptext` mediumtext NOT NULL,
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsnewstemp`
--

LOCK TABLES `gc_enewsnewstemp` WRITE;
/*!40000 ALTER TABLE `gc_enewsnewstemp` DISABLE KEYS */;
INSERT INTO `gc_enewsnewstemp` VALUES (1,'默认新闻内容模板',0,'<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/zhishu.css\\\">\r\n    <script type=\\\"text/javascript\\\">\r\n        var newsurl=\\\'[!--news.url--]\\\';\r\n    </script>\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\"><?=$public_r[\\\'sitename\\\']?> > <a href=\\\"<?=sys_ReturnBqClassname(array(\\\'classid\\\'=>$GLOBALS[\\\'navclassid\\\']),9)?>\\\">[!--class.name--]</a> > <a href=\\\"[!--titleurl--]\\\">[!--ftitle--]</a></div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"AdtImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea1.js\\\"></script></div>\r\n            <div class=\\\"conter\\\">\r\n                <div class=\\\"contL\\\">\r\n                    <div class=\\\"newFlash box\\\">\r\n                        <span>快讯</span>\r\n                        <div class=\\\"newFlashList boxL\\\">\r\n                            [e:loop={\\\"select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort\\\",0,24,0}]\r\n                                <a href=\\\"<?=$bqr[\\\'url\\\']?>\\\"><?=$bqr[\\\'fname\\\']?></a>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                     <div class=\\\"content\\\">\r\n                        <div class=\\\"contentTxt\\\">\r\n                            <h2>[!--title--]</h2>\r\n                            <p class=\\\"time\\\">[!--newstime--]</p>\r\n                            [!--newstext--]\r\n                            <h3 class=\\\"source\\\">此文章来源于[!--befrom--]</h3>\r\n                        </div>\r\n                        <div class=\\\"GraspUserTitle box\\\">\r\n                            <p class=\\\"boxL\\\">猜你喜欢</p>\r\n                            <span>更多可能你喜欢的内容</span>\r\n                        </div>\r\n                        <div class=\\\"GraspUserCont clearfix\\\">\r\n                            <ul>\r\n                                [e:loop={\\\"select ftitle,titleurl from {$dbtbpre}ecms_news where isgood=3 order by newstime desc limit 8\\\",0,24,0}]\r\n                                <li><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><?=esub($bqr[\\\'ftitle\\\'],20)?></a></li>\r\n                                [/e:loop]\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\\\"newList\\\">\r\n                        </div>\r\n                        <div class=\\\"more_list_page\\\" start=\\\"0\\\" cid=\\\"<?=$GLOBALS[\\\'navclassid\\\']?>\\\" order=\\\"2\\\" style=\\\"display:none\\\">\r\n                    </div>\r\n                    \r\n                </div>\r\n                [!--temp.sidebar--]\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/jquery-3.4.1.min.js\\\"></script>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/pIndex.js\\\"></script>\r\n</body>\r\n\r\n</html>','Y-m-d H:i:s',1,0),(2,'默认下载内容模板',0,'<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"Keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"2\\\" bgcolor=\\\"#FFFFFF\\\">\r\n							<tbody>\r\n								<tr>\r\n									<td width=\\\"78\\\" align=\\\"center\\\" nowrap=\\\"nowrap\\\" bgcolor=\\\"#E1EFFB\\\"><b>软件名称：</b></td>\r\n									<td colspan=\\\"2\\\" bgcolor=\\\"#E1EFFB\\\"><b>[!--title--]</b></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\"><strong>文件类型：</strong></td>\r\n									<td width=\\\"296\\\">[!--filetype--]</td>\r\n									<td width=\\\"180\\\" rowspan=\\\"9\\\" align=\\\"center\\\"><a href=\\\"[!--titlepic--]\\\" target=\\\"_blank\\\"><img src=\\\"[!--titlepic--]\\\" border=\\\"0\\\" width=\\\"128\\\" /></a></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\" bgcolor=\\\"#F4F9FD\\\"><strong>界面语言：</strong></td>\r\n									<td bgcolor=\\\"#F4F9FD\\\">[!--language--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\"><strong>软件类型：</strong></td>\r\n									<td>[!--softtype--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\" bgcolor=\\\"#F4F9FD\\\"><strong>运行环境：</strong></td>\r\n									<td bgcolor=\\\"#F4F9FD\\\">[!--softfj--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\"><strong>授权方式：</strong></td>\r\n									<td>[!--softsq--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\" bgcolor=\\\"#F4F9FD\\\"><strong>软件大小：</strong></td>\r\n									<td bgcolor=\\\"#F4F9FD\\\">[!--filesize--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\"><strong>软件等级：</strong></td>\r\n									<td><img src=\\\"[!--news.url--]e/data/images/[!--star--]star.gif\\\" border=\\\"0\\\" /></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\" bgcolor=\\\"#F4F9FD\\\"><strong>软件登陆：</strong></td>\r\n									<td bgcolor=\\\"#F4F9FD\\\">[!--username--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\"><strong>作 者 ：</strong></td>\r\n									<td>[!--softwriter--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\" bgcolor=\\\"#F4F9FD\\\"><strong>官方网址：</strong></td>\r\n									<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\"><a href=\\\'[!--homepage--]\\\' target=\\\"_blank\\\">官方站</a></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\"><strong>程序演示：</strong></td>\r\n									<td colspan=\\\"2\\\"><a href=\\\'[!--demo--]\\\' target=\\\"_blank\\\">演示</a></td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\" bgcolor=\\\"#F4F9FD\\\"><strong>整理时间：</strong></td>\r\n									<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\">[!--newstime--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\"><strong>软件简介：</strong></td>\r\n									<td \r\n            colspan=\\\"2\\\"> [!--softsay--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td width=\\\"78\\\" align=\\\"center\\\" nowrap=\\\"nowrap\\\" bgcolor=\\\"#F4F9FD\\\"><b><font color=\\\"#008E00\\\">下载地址：</font></b></td>\r\n									<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\"> [!--downpath--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\" nowrap=\\\"nowrap\\\"><strong>下载帮助：</strong></td>\r\n									<td colspan=\\\"2\\\"><img src=\\\"[!--news.url--]e/data/images/gonggao.gif\\\" border=\\\"0\\\" /><a href=\\\"[!--news.url--]e/pl/?classid=[!--classid--]&amp;id=[!--id--]\\\">发表评论</a> <img src=\\\"[!--news.url--]e/data/images/gonggao.gif\\\" border=\\\"0\\\" /><a href=\\\"[!--news.url--]e/member/fava/add/?classid=[!--classid--]&amp;id=[!--id--]\\\">加入收藏夹</a> <img src=\\\"[!--news.url--]e/data/images/gonggao.gif\\\" border=\\\"0\\\" /><a href=\\\"[!--news.url--]e/public/report/?classid=[!--classid--]&amp;id=[!--id--]\\\" target=\\\"_blank\\\">错误报告</a></td>\r\n								</tr>\r\n								<tr>\r\n									<td width=\\\"78\\\" align=\\\"center\\\" valign=\\\"top\\\" nowrap=\\\"nowrap\\\" bgcolor=\\\"#F4F9FD\\\"><b><font color=\\\"#008E0\\\">相关软件：</font></b></td>\r\n									<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\">[!--other.link--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td align=\\\"center\\\" valign=\\\"center\\\" nowrap=\\\"nowrap\\\"><strong>下载说明：</strong></td>\r\n									<td colspan=\\\"2\\\">⊙推荐使用网际快车下载本站软件，使用 WinRAR v3.10 以上版本解压本站软件。<br />\r\n										⊙如果这个软件总是不能下载的请点击报告错误,谢谢合作!!<br />\r\n										⊙下载本站资源，如果服务器暂不能下载请过一段时间重试！<br />\r\n										⊙如果遇到什么问题，请到<a href=\\\"http://www.phome.net\\\" target=\\\"_blank\\\">本站论坛</a>去咨寻，我们将在那里提供更多\r\n										、更好的资源！<br />\r\n										⊙本站提供的一些商业软件是供学习研究之用，如用于商业用途，请购买正版。 </td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n						</td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n				<tr>\r\n					<td><strong>推荐下载</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_goodnews.js\'></script></ul></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n				<tr>\r\n					<td><strong>最后更新</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\'></script></ul></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n				<tr>\r\n					<td><strong>热门点击</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\'></script></ul></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>','Y-m-d',2,0),(3,'默认图片内容模板(单图片)',0,'<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"Keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#FFFFFF\\\">\r\n							<tr>\r\n								<td bgcolor=\\\"#E1EFFB\\\">&nbsp;&nbsp;<strong>[!--title--]</strong></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\\"0\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n										<tr>\r\n											<td width=\\\"25\\\"><img src=\\\"[!--news.url--]e/data/images/mod/center_1.gif\\\" width=\\\"25\\\" height=\\\"24\\\" /></td>\r\n											<td background=\\\"[!--news.url--]e/data/images/mod/box_1.gif\\\">&nbsp;</td>\r\n											<td width=\\\"25\\\"><img src=\\\"[!--news.url--]e/data/images/mod/center_2.gif\\\" width=\\\"25\\\" height=\\\"24\\\" /></td>\r\n										</tr>\r\n										<tr>\r\n											<td background=\\\"[!--news.url--]e/data/images/mod/box_4.gif\\\">&nbsp;</td>\r\n											<td bgcolor=\\\"#F3F3F3\\\"><a href=\\\"[!--news.url--]e/ViewImg/index.html?url=[!--picurl--]\\\" target=\\\"_blank\\\"><img border=\\\"0\\\" src=\\\"[!--picurl--]\\\" class=\\\"photoresize\\\" /></a></td>\r\n											<td background=\\\"[!--news.url--]e/data/images/mod/box_2.gif\\\">&nbsp;</td>\r\n										</tr>\r\n										<tr>\r\n											<td><img src=\\\"[!--news.url--]e/data/images/mod/center_3.gif\\\" width=\\\"25\\\" height=\\\"24\\\" /></td>\r\n											<td background=\\\"[!--news.url--]e/data/images/mod/box_3.gif\\\">&nbsp;</td>\r\n											<td><img src=\\\"[!--news.url--]e/data/images/mod/center_4.gif\\\" width=\\\"25\\\" height=\\\"24\\\" /></td>\r\n										</tr>\r\n								</table></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\">\r\n										<tr>\r\n											<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\">&nbsp;&nbsp;<strong>图片资料</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td width=\\\"80\\\">图片名称：</td>\r\n											<td width=\\\"462\\\"> [!--title--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\\"#F8F8F8\\\">人气：</td>\r\n											<td bgcolor=\\\"#F8F8F8\\\"> [!--onclick--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td>图片尺寸：</td>\r\n											<td> [!--picsize--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\\"#F8F8F8\\\">图片大小：</td>\r\n											<td bgcolor=\\\"#F8F8F8\\\"> [!--filesize--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td>编辑：</td>\r\n											<td> [!--username--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td bgcolor=\\\"#F8F8F8\\\">创建日期：</td>\r\n											<td bgcolor=\\\"#F8F8F8\\\"> [!--newstime--]</td>\r\n										</tr>\r\n										<tr>\r\n											<td valign=\\\"top\\\">简介：</td>\r\n											<td valign=\\\"top\\\">[!--picsay--]</td>\r\n										</tr>\r\n								</table></td>\r\n							</tr>\r\n												</table>						</td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n				<tr>\r\n					<td><strong>图片推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\'></script> </ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\'></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>','Y-m-d H:i:s',3,0),(4,'默认图片内容模板(图片集)',0,'<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"Keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#FFFFFF\\\">\r\n						<tr>\r\n							<td align=\\\"center\\\" bgcolor=\\\"#E1EFFB\\\"><strong>[!--title--]</strong></td>\r\n						</tr>\r\n						<tr>\r\n							<td align=\\\"center\\\">[eshowphoto]11,0,0[/eshowphoto]</td>\r\n						</tr>\r\n						<tr>\r\n							<td>&nbsp;</td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n				<tr>\r\n					<td><strong>图片推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\'></script> </ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\'></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>','Y-m-d H:i:s',3,0),(5,'默认FLASH内容模板',0,'<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"Keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage news\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"title_info\\\">\r\n							<tr>\r\n								<td><h1>[!--title--]</h1></td>\r\n							</tr>\r\n							<tr>\r\n								<td class=\\\"info_text\\\">时间：[!--newstime--]&nbsp;&nbsp;作者：[!--flashwriter--]&nbsp;&nbsp;大小：[!--filesize--]</td>\r\n							</tr>\r\n						</table>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n							<tr>\r\n								<td id=\\\"text\\\"><p align=\\\"center\\\">\r\n										<object classid=\\\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\\\" codebase=\\\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0\\\" name=\\\"top10movie\\\" width=\\\"[!--width--]\\\" height=\\\"[!--height--]\\\" id=\\\"top10movie\\\">\r\n											<param name=\\\"movie\\\" value=\\\"[!--flashurl--]\\\" />\r\n											<param name=\\\"quality\\\" value=\\\"high\\\" />\r\n											<param name=\\\"menu\\\" value=\\\"false\\\" />\r\n											<embed src=\\\"[!--flashurl--]\\\" width=\\\"[!--width--]\\\" height=\\\"[!--height--]\\\" quality=\\\"high\\\" pluginspage=\\\"http://www.macromedia.com/go/getflashplayer\\\" type=\\\"application/x-shockwave-flash\\\" id=\\\"top10movie\\\" name=\\\"top10movie\\\" menu=\\\"false\\\"></embed>\r\n										</object>\r\n									</p>\r\n									<p><strong>作品简介：</strong>[!--flashsay--]</p></td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n				<tr>\r\n					<td><strong>推荐下载</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n				<tr>\r\n					<td><strong>最后更新</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\'></script></ul></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n				<tr>\r\n					<td><strong>热门点击</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\'></script></ul></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>','Y-m-d H:i:s',4,0),(6,'默认电影内容模板',0,'<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"Keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"2\\\">\r\n						<tr>\r\n							<td width=\\\"16%\\\"><div align=\\\"center\\\">[影片名称]</div></td>\r\n							<td width=\\\"45%\\\"><strong>[!--title--]</strong></td>\r\n							<td width=\\\"39%\\\" rowspan=\\\"10\\\" align=\\\"center\\\" valign=\\\"top\\\" bgcolor=\\\"#F4F9FD\\\" class=\\\"photo\\\"><a href=\\\"[!--titlepic--]\\\" title=\\\"查看原图\\\" target=\\\"_blank\\\"><img src=\\\"[!--titlepic--]\\\" width=\\\"205\\\" height=\\\"278\\\" border=\\\"0\\\" align=\\\"top\\\" /></a></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\\"#F4F9FD\\\"><div align=\\\"center\\\">[领衔主演]</div></td>\r\n							<td bgcolor=\\\"#F4F9FD\\\">[!--player--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\\"center\\\">[影片类型]</div></td>\r\n							<td>[!--movietype--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\\"#F4F9FD\\\"><div align=\\\"center\\\">[带宽要求]</div></td>\r\n							<td bgcolor=\\\"#F4F9FD\\\">[!--playdk--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\\"center\\\">\r\n									<p>[影片长度]</p>\r\n							</div></td>\r\n							<td>[!--playtime--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\\"#F4F9FD\\\"><div align=\\\"center\\\">[文件大小]</div></td>\r\n							<td bgcolor=\\\"#F4F9FD\\\">[!--filesize--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\\"center\\\">[推荐级别]</div></td>\r\n							<td><img src=\\\"[!--news.url--]e/data/images/[!--star--]star.gif\\\" border=\\\"0\\\" /></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\\"#F4F9FD\\\"><div align=\\\"center\\\">[上传时间]</div></td>\r\n							<td bgcolor=\\\"#F4F9FD\\\">[!--movietime--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\\"center\\\">[下载次数]</div></td>\r\n							<td><script src=\\\"[!--news.url--]e/public/ViewClick/?classid=[!--classid--]&amp;id=[!--id--]&amp;down=1\\\"></script></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\\"#F4F9FD\\\"><div align=\\\"center\\\">[文件格式]</div></td>\r\n							<td bgcolor=\\\"#F4F9FD\\\">[!--filetype--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\\"center\\\">[在线观看]</div></td>\r\n							<td colspan=\\\"2\\\">[!--onlinepath--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\\"#F4F9FD\\\"><div align=\\\"center\\\">[下载影片]</div></td>\r\n							<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\">[!--downpath--]</td>\r\n						</tr>\r\n						<tr>\r\n							<td><div align=\\\"center\\\">[下载帮助]</div></td>\r\n							<td colspan=\\\"2\\\"><img src=\\\"[!--news.url--]e/data/images/gonggao.gif\\\" border=\\\"0\\\" /><a href=\\\"[!--news.url--]e/pl/?classid=[!--classid--]&amp;id=[!--id--]\\\">发表评论</a> <img src=\\\"[!--news.url--]e/data/images/gonggao.gif\\\" border=\\\"0\\\" /><a href=\\\"[!--news.url--]e/member/fava/add/?classid=[!--classid--]&amp;id=[!--id--]\\\">加入收藏夹</a> <img src=\\\"[!--news.url--]e/data/images/gonggao.gif\\\" border=\\\"0\\\" /><a href=\\\"[!--news.url--]e/public/report/?classid=[!--classid--]&amp;id=[!--id--]\\\" target=\\\"_blank\\\">错误报告</a></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\\\"#F4F9FD\\\"><div align=\\\"center\\\">[影片介绍]</div></td>\r\n							<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\">&nbsp;</td>\r\n						</tr>\r\n						<tr>\r\n							<td colspan=\\\"3\\\" valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\" style=\\\"table-layout:  fixed;  word-wrap:  break-word\\\">\r\n									<tr>\r\n										<td>[!--moviesay--]</td>\r\n									</tr>\r\n							</table></td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n				<tr>\r\n					<td><strong>影视推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\'></script></ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\'></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>','Y-m-d',5,0),(7,'默认商城内容模板',0,'<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"Keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"2\\\">\r\n						<tr>\r\n							<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\">&nbsp;&nbsp;<strong>商品基本信息</strong></td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\\\"30%\\\" align=\\\"center\\\" class=\\\"titlepic\\\"><a href=\\\"[!--productpic--]\\\" title=\\\"预览大图\\\" target=\\\"_blank\\\"><img height=\\\"128\\\" src=\\\"[!--titlepic--]\\\" width=\\\"128\\\" border=\\\"0\\\" /></a></td>\r\n							<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"2\\\">\r\n								<tr>\r\n									<td style=\\\"font-size: 14px;\\\"><strong>商品名称：[!--title--]</strong></td>\r\n								</tr>\r\n								<tr>\r\n									<td>市场价：<span class=\\\"tprice\\\">￥[!--tprice--]</span>&nbsp;优惠价：<span class=\\\"price\\\">￥[!--price--]</span>&nbsp; \r\n										点数: [!--buyfen--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td>商品编号:[!--productno--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td>商品品牌:[!--pbrand--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td>计量单位:[!--unit--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td>商品重量:[!--weight--]</td>\r\n								</tr>\r\n								<tr>\r\n									<td>[<a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--news.url--]e/ShopSys/doaction.php?enews=AddBuycar&amp;classid=[!--classid--]&amp;id=[!--id--]\\\',\\\'\\\',\\\'width=680,height=500,scrollbars=yes,resizable=yes\\\');\\\">加入购物车</a>]&nbsp;&nbsp;&nbsp;&nbsp;[<a href=\\\"[!--news.url--]e/member/fava/add/?classid=[!--classid--]&amp;id=[!--id--]\\\" target=\\\"_blank\\\">放入收藏夹</a>]&nbsp;&nbsp;&nbsp;&nbsp;[<a href=\\\"[!--news.url--]e/pl/?classid=[!--classid--]&amp;id=[!--id--]\\\" target=\\\"_blank\\\">查看评论</a>]</td>\r\n								</tr>\r\n							</table></td>\r\n						</tr>\r\n						<tr>\r\n							<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\">&nbsp;&nbsp;<strong>商品介绍</strong></td>\r\n						</tr>\r\n						<tr>\r\n							<td colspan=\\\"2\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"8\\\">\r\n									<tr>\r\n										<td id=\\\"text\\\">[!--newstext--]</td>\r\n									</tr>\r\n							</table></td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n				<tr>\r\n					<td><strong>商品推荐</strong></td>\r\n				</tr>\r\n			</table>\r\n				<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td>[phomenewspic]\\\'selfinfo\\\',2,4,128,90,1,20,2[/phomenewspic] </td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n					<tr>\r\n						<td><strong>最后更新</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\'></script></ul></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n					<tr>\r\n						<td><strong>热门点击</strong></td>\r\n					</tr>\r\n				</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n					<tr>\r\n						<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\'></script></ul></td>\r\n					</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>','Y-m-d',6,0),(8,'默认文章内容模板',0,'<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]e/data/js/ajax.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage news\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>您当前的位置：[!--newsnav--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"title_info\\\">\r\n<tr>\r\n<td><h1>[!--title--]</h1></td>\r\n</tr>\r\n<tr>\r\n<td class=\\\"info_text\\\">时间：[!--newstime--]&nbsp;&nbsp;来源：[!--befrom--]&nbsp;&nbsp;作者：[!--writer--]</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n<tr>\r\n<td id=\\\"text\\\">[!--newstext--]\r\n<p align=\\\"center\\\" class=\\\"pageLink\\\">[!--page.url--]</p></td>\r\n</tr>\r\n</table>\r\n<table border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"8\\\">\r\n<tr>\r\n<td><table border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"digg\\\">\r\n<tr>\r\n<td class=\\\"diggnum\\\" id=\\\"diggnum\\\"><strong><script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]e/public/ViewClick/?classid=[!--classid--]&id=[!--id--]&down=5\\\"></script></strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\\\"diggit\\\"><a href=\\\"JavaScript:makeRequest(\\\'[!--news.url--]e/public/digg/?classid=[!--classid--]&id=[!--id--]&dotop=1&doajax=1&ajaxarea=diggnum\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">来顶一下</a></td>\r\n</tr>\r\n</table></td>\r\n<td><table border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"digg\\\">\r\n<tr>\r\n<td valign=\\\"middle\\\" class=\\\"diggnum\\\"><strong><a href=\\\"[!--news.url--]\\\"><img src=\\\"[!--news.url--]skin/default/images/back.gif\\\" alt=\\\"返回首页\\\" width=\\\"12\\\" height=\\\"13\\\" border=\\\"0\\\" align=\\\"absmiddle\\\" /></a></strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\\\"diggit\\\"><a href=\\\"[!--news.url--]\\\">返回首页</a></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>\r\n[!--temp.pl--]\r\n</td>\r\n<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>推荐资讯</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"8\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n          <td>[phomenewspic]\\\'article\\\',2,4,128,90,1,20,20[/phomenewspic] </td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>相关文章</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n[!--other.link--]\r\n</ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>栏目更新</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_newnews.js\'></script></ul></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n<tr>\r\n<td><strong>栏目热门</strong></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n<tr>\r\n<td><ul>\r\n              <script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_hotnews.js\'></script></ul></td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n[!--page.stats--]\r\n</body>\r\n</html>','Y-m-d H:i:s',7,0),(9,'默认分类信息内容模板',0,'<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"Keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"showpage info\\\">\r\n[!--temp.header--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"main\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>您当前的位置：[!--newsnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"title_info\\\">\r\n							<tr>\r\n								<td colspan=\\\"2\\\"><h1>[!--title--]</h1></td>\r\n							</tr>\r\n							<tr>\r\n								<td class=\\\"info_text\\\">所在地区：<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--classid--]&amp;ph=1&amp;myarea=[!--myarea--]\\\">[!--myarea--]</a>&nbsp;&nbsp;</td>\r\n								<td align=\\\"right\\\" class=\\\"info_text\\\">时间：[!--newstime--]&nbsp;&nbsp;【<a \r\nhref=\\\"[!--news.url--]e/member/fava/add/?classid=[!--classid--]&amp;id=[!--id--]\\\">加入收藏夹</a>】【<a href=\\\"[!--news.url--]e/public/report/?classid=[!--classid--]&amp;id=[!--id--]\\\" target=\\\"_blank\\\">举报</a>】【<a href=\\\"javascript:window.close()\\\">关闭</a>】</td>\r\n							</tr>\r\n						</table>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n							<tr>\r\n								<td id=\\\"text\\\"><p><a href=\\\"[!--titlepic--]\\\" title=\\\"点击查看原图\\\" target=\\\"_blank\\\"><img src=\\\"[!--titlepic--]\\\" hspace=\\\"6\\\" border=\\\"0\\\" align=\\\"left\\\" /></a>[!--smalltext--]</p></td>\r\n							</tr>\r\n						</table>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#FFFFFF\\\">\r\n							<tr>\r\n								<td bgcolor=\\\"#F4F9FD\\\">&nbsp;&nbsp;<strong>联系方式</strong></td>\r\n							</tr>\r\n						</table>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#F4F9FD\\\">\r\n							<tr>\r\n								<td width=\\\"13%\\\" bgcolor=\\\"#FFFFFF\\\"><div align=\\\"right\\\">发 布 者：</div></td>\r\n								\r\n                <td width=\\\"88%\\\" bgcolor=\\\"#FFFFFF\\\">[!--linkusername--]&nbsp;(<a href=\\\"[!--news.url--]e/member/msg/AddMsg/?enews=AddMsg&amp;re=1&amp;username=[!--username--]\\\" target=\\\"_blank\\\">发送站内信息</a>)</td>\r\n							</tr>\r\n							<tr>\r\n								<td bgcolor=\\\"#FFFFFF\\\"><div align=\\\"right\\\">联系邮箱：</div></td>\r\n								<td bgcolor=\\\"#FFFFFF\\\"><a href=\\\"mailto:[!--email--]\\\">[!--email--]</a></td>\r\n							</tr>\r\n							<tr>\r\n								<td bgcolor=\\\"#FFFFFF\\\"><div align=\\\"right\\\">联系方式：</div></td>\r\n								<td bgcolor=\\\"#FFFFFF\\\">[!--mycontact--]</td>\r\n							</tr>\r\n							<tr>\r\n								<td bgcolor=\\\"#FFFFFF\\\"><div align=\\\"right\\\">联系地址：</div></td>\r\n								<td bgcolor=\\\"#FFFFFF\\\">[!--address--]</td>\r\n							</tr>\r\n						</table>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#FFFFFF\\\">\r\n							<tr>\r\n								<td>&nbsp;</td>\r\n							</tr>\r\n							<tr>\r\n								<td bgcolor=\\\"#F8F8F8\\\">&nbsp;&nbsp;<strong>推荐给朋友</strong></td>\r\n							</tr>\r\n							<tr>\r\n								<td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n										<tr>\r\n											<td width=\\\"2%\\\">&nbsp;</td>\r\n											<td><script>\r\nfunction sendtof(url)\r\n{\r\nwindow.clipboardData.setData(\\\'Text\\\',url);\r\nalert(\\\'复制地址成功，粘贴给你好友一起分享。\\\');\r\n}\r\n  			</script>\r\n												<input name=\\\"textfield\\\" type=\\\"text\\\" value=\\\"http://域名[!--titleurl--]\\\" size=\\\"60\\\" onclick=\\\"sendtof(this.value);\\\" /></td>\r\n										</tr>\r\n									</table></td>\r\n							</tr>\r\n						</table>\r\n						\r\n          </td>\r\n				</tr>\r\n			</table>\r\n			[!--temp.pl--]</td>\r\n		<td class=\\\"sider\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title\\\">\r\n				<tr>\r\n					<td><strong>地区导航</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td>[!--temp.infoarea--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n				<tr>\r\n					<td><strong>分类导航</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td>[!--temp.infoclassnav--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"title margin_top\\\">\r\n				<tr>\r\n					<td><strong>推荐信息</strong></td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><ul>\r\n							<script src=\'[!--news.url--]d/js/class/class[!--self.classid--]_goodnews.js\'></script>\r\n						</ul></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--] [!--page.stats--]\r\n</body>\r\n</html>','Y年m月d日 H:i:s',8,0);
/*!40000 ALTER TABLE `gc_enewsnewstemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsnewstempclass`
--

DROP TABLE IF EXISTS `gc_enewsnewstempclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsnewstempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsnewstempclass`
--

LOCK TABLES `gc_enewsnewstempclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsnewstempclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsnewstempclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsnotcj`
--

DROP TABLE IF EXISTS `gc_enewsnotcj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsnotcj` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `word` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsnotcj`
--

LOCK TABLES `gc_enewsnotcj` WRITE;
/*!40000 ALTER TABLE `gc_enewsnotcj` DISABLE KEYS */;
INSERT INTO `gc_enewsnotcj` VALUES (1,'<input type=hidden value=\'欢迎使用帝国网站管理系统：www.phome.net\'>'),(2,'<phome 帝国网站管理系统,phome.net>'),(3,'<!--帝国CMS,phome.net-->'),(4,'<table style=display:none><tr><td>\r\nEmpire CMS,phome.net\r\n</td></tr></table>'),(5,'<div style=display:none>\r\n拥有帝国一切，皆有可能。欢迎访问phome.net\r\n</div>');
/*!40000 ALTER TABLE `gc_enewsnotcj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsnotice`
--

DROP TABLE IF EXISTS `gc_enewsnotice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsnotice` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsnotice`
--

LOCK TABLES `gc_enewsnotice` WRITE;
/*!40000 ALTER TABLE `gc_enewsnotice` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsnotice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspage`
--

DROP TABLE IF EXISTS `gc_enewspage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `pagetext` mediumtext NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pagetitle` varchar(120) NOT NULL DEFAULT '',
  `pagekeywords` varchar(255) NOT NULL DEFAULT '',
  `pagedescription` varchar(255) NOT NULL DEFAULT '',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspage`
--

LOCK TABLES `gc_enewspage` WRITE;
/*!40000 ALTER TABLE `gc_enewspage` DISABLE KEYS */;
INSERT INTO `gc_enewspage` VALUES (1,'关于我们','<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\"><?=$public_r[\\\'sitename\\\']?> > 关于我们</div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"aboutUs\\\">\r\n                <h2>关于我们</h2>\r\n                <p>全球证券网本着“客户第一，诚信至上”的原则，作为一家专业提供金融各大行业的资讯服务，欢迎建立长期的合作关系。全球证券网本着“客户第一，诚信至上”的 原则，作为一家专业提供金融各大行业的资讯服务，欢迎建立长期的合作关系。\r\n                </p>\r\n                <h2>商务合作</h2>\r\n                <p>全球证券网本着“客户第一，诚信至上”的原则，作为一家专业提供金融各大行业的资讯服务，欢迎建立长期的合作关系。全球证券网本着“客户第一，诚信至上”的 原则，作为一家专业提供金融各大行业的资讯服务，欢迎建立长期的合作关系。\r\n                </p>\r\n                <h2>法律声明</h2>\r\n                <p>全球证券网本着“客户第一，诚信至上”的原则，作为一家专业提供金融各大行业的资讯服务，欢迎建立长期的合作关系。全球证券网本着“客户第一，诚信至上”的 原则，作为一家专业提供金融各大行业的资讯服务，欢迎建立长期的合作关系。\r\n                </p>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</body>\r\n\r\n</html>','../../aboutus.html',0,'关于我们','关于我们','关于我们',0);
/*!40000 ALTER TABLE `gc_enewspage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspageclass`
--

DROP TABLE IF EXISTS `gc_enewspageclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspageclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspageclass`
--

LOCK TABLES `gc_enewspageclass` WRITE;
/*!40000 ALTER TABLE `gc_enewspageclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewspageclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspagetemp`
--

DROP TABLE IF EXISTS `gc_enewspagetemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspagetemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(30) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspagetemp`
--

LOCK TABLES `gc_enewspagetemp` WRITE;
/*!40000 ALTER TABLE `gc_enewspagetemp` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewspagetemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspayapi`
--

DROP TABLE IF EXISTS `gc_enewspayapi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspayapi` (
  `payid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `myorder` tinyint(4) NOT NULL DEFAULT '0',
  `payfee` varchar(10) NOT NULL DEFAULT '',
  `payuser` varchar(60) NOT NULL DEFAULT '',
  `partner` varchar(60) NOT NULL DEFAULT '',
  `paykey` varchar(120) NOT NULL DEFAULT '',
  `paylogo` varchar(200) NOT NULL DEFAULT '',
  `paysay` text NOT NULL,
  `payname` varchar(120) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `payemail` varchar(120) NOT NULL DEFAULT '',
  `paymethod` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`payid`),
  UNIQUE KEY `paytype` (`paytype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspayapi`
--

LOCK TABLES `gc_enewspayapi` WRITE;
/*!40000 ALTER TABLE `gc_enewspayapi` DISABLE KEYS */;
INSERT INTO `gc_enewspayapi` VALUES (1,'tenpay',1,'0','','','','','财付通（www.tenpay.com） - 腾讯旗下在线支付平台，通过国家权威安全认证，支持各大银行网上支付。','财付通',0,'',0),(2,'chinabank',2,'0','','','','','网银在线与中国工商银行、招商银行、中国建设银行、农业银行、民生银行等数十家金融机构达成协议。全面支持全国19家银行的信用卡及借记卡实现网上支付。（网址：http://www.chinabank.com.cn）','网银在线',0,'',0),(3,'alipay',0,'0','','','','','支付宝网站(www.alipay.com) 是国内先进的网上支付平台。','支付宝接口',0,'',1);
/*!40000 ALTER TABLE `gc_enewspayapi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspayrecord`
--

DROP TABLE IF EXISTS `gc_enewspayrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspayrecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `orderid` varchar(50) NOT NULL DEFAULT '',
  `money` varchar(20) NOT NULL DEFAULT '',
  `posttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paybz` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(12) NOT NULL DEFAULT '',
  `payip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`,`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspayrecord`
--

LOCK TABLES `gc_enewspayrecord` WRITE;
/*!40000 ALTER TABLE `gc_enewspayrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewspayrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspic`
--

DROP TABLE IF EXISTS `gc_enewspic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspic` (
  `picid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `pic_url` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `pic_width` varchar(20) NOT NULL DEFAULT '',
  `pic_height` varchar(20) NOT NULL DEFAULT '',
  `open_pic` varchar(20) NOT NULL DEFAULT '',
  `border` tinyint(1) NOT NULL DEFAULT '0',
  `pictext` text NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`picid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspic`
--

LOCK TABLES `gc_enewspic` WRITE;
/*!40000 ALTER TABLE `gc_enewspic` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewspic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspicclass`
--

DROP TABLE IF EXISTS `gc_enewspicclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspicclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspicclass`
--

LOCK TABLES `gc_enewspicclass` WRITE;
/*!40000 ALTER TABLE `gc_enewspicclass` DISABLE KEYS */;
INSERT INTO `gc_enewspicclass` VALUES (1,'默认图片信息类别');
/*!40000 ALTER TABLE `gc_enewspicclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspl_1`
--

DROP TABLE IF EXISTS `gc_enewspl_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspl_1` (
  `plid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubid` bigint(16) NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `sayip` varchar(20) NOT NULL DEFAULT '',
  `saytime` int(10) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zcnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fdnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `saytext` text NOT NULL,
  `eipport` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`plid`),
  KEY `id` (`id`),
  KEY `classid` (`classid`),
  KEY `pubid` (`pubid`,`checked`,`plid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspl_1`
--

LOCK TABLES `gc_enewspl_1` WRITE;
/*!40000 ALTER TABLE `gc_enewspl_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewspl_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspl_set`
--

DROP TABLE IF EXISTS `gc_enewspl_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspl_set` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pltime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plsize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plincludesize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `plface` text NOT NULL,
  `plfacenum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `plgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plclosewords` text NOT NULL,
  `plf` text NOT NULL,
  `plmustf` text NOT NULL,
  `pldatatbs` text NOT NULL,
  `defpltempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pl_num` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pldeftb` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plurl` varchar(200) NOT NULL DEFAULT '',
  `plmaxfloor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `plquotetemp` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspl_set`
--

LOCK TABLES `gc_enewspl_set` WRITE;
/*!40000 ALTER TABLE `gc_enewspl_set` DISABLE KEYS */;
INSERT INTO `gc_enewspl_set` VALUES (1,20,500,0,1,'||[~e.jy~]##1.gif||[~e.kq~]##2.gif||[~e.se~]##3.gif||[~e.sq~]##4.gif||[~e.lh~]##5.gif||[~e.ka~]##6.gif||[~e.hh~]##7.gif||[~e.ys~]##8.gif||[~e.ng~]##9.gif||[~e.ot~]##10.gif||',10,0,'','','',',1,',1,12,1,'/gucheng/e/pl/',0,'<div class=\\\"ecomment\\\">\r\n<span class=\\\"ecommentauthor\\\">网友 [!--username--] 的原文：</span>\r\n<p class=\\\"ecommenttext\\\">[!--pltext--]</p>\r\n</div>');
/*!40000 ALTER TABLE `gc_enewspl_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsplayer`
--

DROP TABLE IF EXISTS `gc_enewsplayer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsplayer` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `player` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(20) NOT NULL DEFAULT '',
  `bz` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsplayer`
--

LOCK TABLES `gc_enewsplayer` WRITE;
/*!40000 ALTER TABLE `gc_enewsplayer` DISABLE KEYS */;
INSERT INTO `gc_enewsplayer` VALUES (1,'RealPlayer','realplayer.php','RealPlayer播放器'),(2,'MediaPlayer','mediaplayer.php','MediaPlayer播放器'),(3,'FLASH','flasher.php','FLASH播放器'),(4,'FLV播放器','flver.php','FLV播放器'),(5,'HTML5Video','htmlvideo.php','HTML5的video播放标签'),(6,'JWPlayer','jwplayer.php','JWPlayer播放器'),(7,'HTML5Audio','htmlaudio.php','HTML5的audio播放标签');
/*!40000 ALTER TABLE `gc_enewsplayer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsplf`
--

DROP TABLE IF EXISTS `gc_enewsplf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsplf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `ismust` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsplf`
--

LOCK TABLES `gc_enewsplf` WRITE;
/*!40000 ALTER TABLE `gc_enewsplf` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsplf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspltemp`
--

DROP TABLE IF EXISTS `gc_enewspltemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspltemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspltemp`
--

LOCK TABLES `gc_enewspltemp` WRITE;
/*!40000 ALTER TABLE `gc_enewspltemp` DISABLE KEYS */;
INSERT INTO `gc_enewspltemp` VALUES (1,'默认评论列表模板','<!DOCTYPE HTML PUBLIC \\\"-//W3C//DTD HTML 4.01 Transitional//EN\\\">\r\n<html>\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<style type=\\\"text/css\\\">\r\n<!--\r\nbody,Table{ color: #222; font-size: 12px; }\r\na { color: #222; text-decoration: none; }\r\na:hover { color: #f00; text-decoration: underline; }\r\nh1 { font-size:32px; font-weight: bold; }\r\nh2 { color: #1e3a9e; font-size: 25px; font-weight: bold;  }\r\n.you { color: #1f3a87; font-size: 14px; }\r\n.text { font-size: 14px; padding-left: 5px; padding-right: 5px; line-height: 20px}\r\n.re a { color: #1f3a87; }\r\n.name { color: #1f3a87; }\r\n.name a { color: #1f3a87; text-decoration: underline;}\r\n.retext { background-color: #f3f3f3; width: 100%; float: left; padding-top: 22px; padding-bottom: 22px; border-top: 1px solid #ccc; }\r\n.retext textarea { width: 535px; height: 130px; float: left; margin-left: 60px; border-top-style: inset; border-top-width: 2px; border-left-style: inset; border-left-width: 2px; }\r\n.hrLine{BORDER-BOTTOM: #807d76 1px dotted;}\r\n\r\n.ecomment {margin:0;padding:0;}\r\n.ecomment {margin-bottom:12px;overflow-x:hidden;overflow-y:hidden;padding-bottom:3px;padding-left:3px;padding-right:3px;padding-top:3px;background:#FFFFEE;padding:3px;border:solid 1px #999;}\r\n.ecommentauthor {float:left; color:#F96; font-weight:bold;}\r\n.ecommenttext {clear:left;margin:0;padding:0;}\r\n-->\r\n</style>\r\n<script src=\\\"[!--news.url--]e/data/js/ajax.js\\\"></script>\r\n</head>\r\n\r\n<body topmargin=\\\"0\\\">\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\">\r\n  <tr>\r\n    <td width=\\\"210\\\"><a href=\\\"[!--news.url--]\\\"><img src=\\\"[!--news.url--]skin/default/images/logo.gif\\\" border=\\\"0\\\" /></a></td>\r\n    <td><h1>网友评论</h1></td>\r\n    <td><div align=\\\"right\\\"><a href=\\\"#tosaypl\\\"><strong><font color=\\\"#FF0000\\\">我也评两句</font></strong></a></div></td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#222\\\">\r\n  <tr>\r\n    <td height=\\\"2\\\"></td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\">\r\n  <tr> \r\n    <td height=\\\"42\\\"> \r\n      <h2>评论：<a href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\"><font color=\\\"#1e3a9e\\\">[!--title--]</font></a></h2></td>\r\n    <td><div align=\\\"right\\\"><a href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\">查看原文</a></div></td>\r\n  </tr>\r\n</table>\r\n<hr align=\\\"center\\\" width=\\\"766\\\" size=1 class=hrline>\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#384EA3\\\">\r\n  <form action=\\\"../enews/index.php\\\" method=\\\"post\\\" name=\\\"infopfenform\\\">\r\n    <input type=\\\"hidden\\\" name=\\\"enews\\\" value=\\\"AddInfoPfen\\\" />\r\n    <input type=\\\"hidden\\\" name=\\\"classid\\\" value=\\\"[!--classid--]\\\" />\r\n    <input type=\\\"hidden\\\" name=\\\"id\\\" value=\\\"[!--id--]\\\" />\r\n    <tr> \r\n      <td width=\\\"50%\\\" height=\\\"27\\\" valign=\\\"middle\\\"><font color=\\\"#FFFFFF\\\">&nbsp;评分: \r\n        <input type=\\\"radio\\\" name=\\\"fen\\\" value=\\\"1\\\">\r\n        1分 \r\n        <input type=\\\"radio\\\" name=\\\"fen\\\" value=\\\"2\\\">\r\n        2分 \r\n        <input name=\\\"fen\\\" type=\\\"radio\\\" value=\\\"3\\\" checked>\r\n        3分 \r\n        <input type=\\\"radio\\\" name=\\\"fen\\\" value=\\\"4\\\">\r\n        4分 \r\n        <input type=\\\"radio\\\" name=\\\"fen\\\" value=\\\"5\\\">\r\n        5分 \r\n        <input type=\\\"submit\\\" name=\\\"Submit\\\" value=\\\"提交\\\">\r\n        </font></td>\r\n      <td width=\\\"50%\\\" valign=\\\"middle\\\"><div align=\\\"center\\\"><font color=\\\"#FFFFFF\\\">平均得分: \r\n          <strong><span id=\\\"pfendiv\\\">[!--pinfopfen--]</span></strong> 分，共有 <strong>[!--infopfennum--]</strong> \r\n          人参与评分</font></div></td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n<table width=\\\"766\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#CCCCCC\\\">\r\n  <tr> \r\n    <td height=\\\"30\\\" bgcolor=\\\"#FFFFFF\\\"> \r\n      <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n          <td width=\\\"17%\\\">&nbsp;&nbsp;&nbsp;网友评论</td>\r\n          <td width=\\\"83%\\\"><div align=\\\"right\\\">[!--listpage--]&nbsp;&nbsp;&nbsp;</div></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor=\\\"#f8fcff\\\"> [!--empirenews.listtemp--] \r\n      <table width=\\\"96%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" style=\\\"word-break:break-all; word-wrap:break-all;\\\">\r\n        <tr> \r\n          <td height=\\\"30\\\"><span class=\\\"name\\\">本站网友 [!--username--]</span> <font color=\\\"#666666\\\">ip:[!--plip--]</font></td>\r\n          <td><div align=\\\"right\\\"><font color=\\\"#666666\\\">[!--pltime--] 发表</font></div></td>\r\n        </tr>\r\n        <tr valign=\\\"top\\\"> \r\n          <td height=\\\"50\\\" colspan=\\\"2\\\" class=\\\"text\\\">[!--pltext--]</td>\r\n        </tr>\r\n        <tr> \r\n          <td height=\\\"30\\\">&nbsp;</td>\r\n          <td><div align=\\\"right\\\" class=\\\"re\\\"><a href=\\\"#tosaypl\\\"[!--includelink--]>回复</a>&nbsp; \r\n              <a href=\\\"JavaScript:makeRequest(\\\'../pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=1&doajax=1&ajaxarea=zcpldiv[!--plid--]\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">支持</a>[<span id=\\\"zcpldiv[!--plid--]\\\">[!--zcnum--]</span>]&nbsp; \r\n              <a href=\\\"JavaScript:makeRequest(\\\'../pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=0&doajax=1&ajaxarea=fdpldiv[!--plid--]\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">反对</a>[<span id=\\\"fdpldiv[!--plid--]\\\">[!--fdnum--]</span>]\r\n            </div></td>\r\n        </tr>\r\n      </table>\r\n      <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr>\r\n          <td background=\\\"[!--news.url--]skin/default/images/plhrbg.gif\\\"></td>\r\n        </tr>\r\n      </table>\r\n      [!--empirenews.listtemp--] \r\n      <div align=\\\"right\\\"><br />\r\n        [!--listpage--]&nbsp;&nbsp;&nbsp;<br />\r\n        <br />\r\n        <font color=\\\"#FF0000\\\">网友评论仅供网友表达个人看法，并不表明本站同意其观点或证实其描述&nbsp;&nbsp;&nbsp;</font><br><br> </div></td>\r\n  </tr>\r\n  <script>\r\n  function CheckPl(obj)\r\n  {\r\n  	if(obj.saytext.value==\\\"\\\")\r\n  	{\r\n  		alert(\\\"错误，评论不能为空\\\");\r\n  		obj.saytext.focus();\r\n  		return false;\r\n  	}\r\n  	return true;\r\n  }\r\n  </script>\r\n  <form action=\\\"../pl/doaction.php\\\" method=\\\"post\\\" name=\\\"saypl\\\" id=\\\"saypl\\\" onsubmit=\\\"return CheckPl(document.saypl)\\\">\r\n  <tr id=\\\"tosaypl\\\"> \r\n    <td bgcolor=\\\"#f8fcff\\\"> <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr> \r\n            <td width=\\\"13%\\\" height=\\\"28\\\">&nbsp;&nbsp;&nbsp;<span class=\\\"you\\\">我也评两句</span></td>\r\n            <td valign=\\\"middle\\\">用户名： \r\n              <input name=\\\"username\\\" type=\\\"text\\\" id=\\\"username\\\" size=\\\"12\\\" value=\\\"[!--lusername--]\\\" />\r\n            密码： \r\n            <input name=\\\"password\\\" type=\\\"password\\\" id=\\\"password\\\" size=\\\"12\\\" value=\\\"[!--lpassword--]\\\" />\r\n            验证码： \r\n            <input name=\\\"key\\\" type=\\\"text\\\" id=\\\"key\\\" size=\\\"6\\\" />\r\n              <img src=\\\"[!--key.url--]\\\" align=\\\"middle\\\" name=\\\"plKeyImg\\\" id=\\\"plKeyImg\\\" onclick=\\\"plKeyImg.src=\\\'[!--news.url--]e/ShowKey/?v=pl&t=\\\'+Math.random()\\\" title=\\\"看不清楚,点击刷新\\\" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/register/\\\" target=\\\"_blank\\\">还没有注册？</a></td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n  <tr> \r\n    <td bgcolor=\\\"#f8fcff\\\"> <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\" class=\\\"retext\\\">\r\n        <tr> \r\n          <td width=\\\"78%\\\"><div align=\\\"center\\\"> \r\n              <textarea name=\\\"saytext\\\" cols=\\\"58\\\" rows=\\\"6\\\" id=\\\"saytext\\\"></textarea>\r\n            </div></td>\r\n          <td width=\\\"22%\\\" rowspan=\\\"2\\\"> <div align=\\\"center\\\">\r\n              <input name=\\\"nomember\\\" type=\\\"checkbox\\\" id=\\\"nomember\\\" value=\\\"1\\\" checked=\\\"checked\\\" />\r\n                匿名发表<br>\r\n                <br />\r\n              <input name=\\\"imageField\\\" type=\\\"submit\\\" id=\\\"imageField\\\" value=\\\" 提 交 \\\" />\r\n            </div></td>\r\n        </tr>\r\n        <tr> \r\n          <td><div align=\\\"center\\\"> \r\n              <script src=\\\"[!--news.url--]d/js/js/plface.js\\\"></script>\r\n            </div></td>\r\n        </tr>\r\n      </table> </td>\r\n  </tr>\r\n  <input name=\\\"id\\\" type=\\\"hidden\\\" id=\\\"id\\\" value=\\\"[!--id--]\\\" />\r\n  <input name=\\\"classid\\\" type=\\\"hidden\\\" id=\\\"classid\\\" value=\\\"[!--classid--]\\\" />\r\n  <input name=\\\"enews\\\" type=\\\"hidden\\\" id=\\\"enews\\\" value=\\\"AddPl\\\" />\r\n  <input name=\\\"repid\\\" type=\\\"hidden\\\" id=\\\"repid\\\" value=\\\"0\\\" />\r\n  </form>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>',1);
/*!40000 ALTER TABLE `gc_enewspltemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspostdata`
--

DROP TABLE IF EXISTS `gc_enewspostdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspostdata` (
  `postid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rnd` varchar(32) NOT NULL DEFAULT '',
  `postdata` varchar(255) NOT NULL DEFAULT '',
  `ispath` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`postid`),
  KEY `rnd` (`rnd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspostdata`
--

LOCK TABLES `gc_enewspostdata` WRITE;
/*!40000 ALTER TABLE `gc_enewspostdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewspostdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspostserver`
--

DROP TABLE IF EXISTS `gc_enewspostserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspostserver` (
  `pid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(60) NOT NULL DEFAULT '',
  `purl` varchar(255) NOT NULL DEFAULT '',
  `ptype` tinyint(1) NOT NULL DEFAULT '0',
  `ftphost` varchar(255) NOT NULL DEFAULT '',
  `ftpport` varchar(20) NOT NULL DEFAULT '',
  `ftpusername` varchar(120) NOT NULL DEFAULT '',
  `ftppassword` varchar(120) NOT NULL DEFAULT '',
  `ftppath` varchar(255) NOT NULL DEFAULT '',
  `ftpmode` tinyint(1) NOT NULL DEFAULT '0',
  `ftpssl` tinyint(1) NOT NULL DEFAULT '0',
  `ftppasv` tinyint(1) NOT NULL DEFAULT '0',
  `ftpouttime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lastposttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `ptype` (`ptype`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspostserver`
--

LOCK TABLES `gc_enewspostserver` WRITE;
/*!40000 ALTER TABLE `gc_enewspostserver` DISABLE KEYS */;
INSERT INTO `gc_enewspostserver` VALUES (1,'附件服务器','',1,'','','','','',0,0,0,0,0);
/*!40000 ALTER TABLE `gc_enewspostserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsprinttemp`
--

DROP TABLE IF EXISTS `gc_enewsprinttemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsprinttemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsprinttemp`
--

LOCK TABLES `gc_enewsprinttemp` WRITE;
/*!40000 ALTER TABLE `gc_enewsprinttemp` DISABLE KEYS */;
INSERT INTO `gc_enewsprinttemp` VALUES (1,'默认打印模板','<html>\r\n<head>\r\n<meta http-equiv=\\\"content-type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<style>\r\nbody{font-family:宋体}td,.f12{font-size:12px}.f24 {font-size:24px;}.f14 {font-size:14px;}.title14 {font-size:14px;line-height:130%}.l17 {line-height:170%;}\r\n</style>\r\n</head>\r\n<body bgcolor=\\\"#ffffff\\\" topmargin=5 leftmargin=5 marginheight=5 marginwidth=5 onLoad=\\\'window.print()\\\'>\r\n<center>\r\n<table width=650 border=0 cellspacing=0 cellpadding=0>\r\n<tr>\r\n<td height=65 width=180><A href=\\\"http://www.phome.net/\\\"><IMG src=\\\"../../skin/default/images/elogo.jpg\\\" alt=\\\"帝国软件\\\" width=\\\"180\\\" height=\\\"65\\\" border=0></A></td> \r\n<td valign=\\\"bottom\\\">[!--url--]</td>\r\n<td width=\\\"83\\\" align=\\\"right\\\" valign=\\\"bottom\\\"><a href=\\\'javascript:history.back()\\\'>返回</a>　<a href=\\\'javascript:window.print()\\\'>打印</a></td>\r\n</tr>\r\n</table>\r\n<table width=650 border=0 cellpadding=0 cellspacing=20 bgcolor=\\\"#EDF0F5\\\">\r\n<tr>\r\n<td>\r\n<BR>\r\n<TABLE cellSpacing=0 cellPadding=0 width=\\\"100%\\\" border=0>\r\n<TBODY>\r\n<TR>\r\n<TH class=\\\"f24\\\"><FONT color=#05006c>[!--title--]</FONT></TH></TR>\r\n<TR>\r\n<TD>\r\n<HR SIZE=1 bgcolor=\\\"#d9d9d9\\\">\r\n</TD>\r\n</TR>\r\n<TR>\r\n<TD align=\\\"middle\\\" height=20><div align=\\\"center\\\">[!--writer--]&nbsp;&nbsp;[!--newstime--]&nbsp;&nbsp;[!--befrom--]</div></TD>\r\n</TR>\r\n<TR>\r\n<TD height=15></TD>\r\n</TR>\r\n<TR>\r\n<TD class=\\\"l17\\\">\r\n<FONT class=\\\"f14\\\" id=\\\"zoom\\\"> \r\n<P>[!--newstext--]<br>\r\n<BR clear=all>\r\n</P>\r\n</FONT>\r\n</TD>\r\n</TR>\r\n<TR height=10>\r\n<TD></TD>\r\n</TR>\r\n</TBODY>\r\n</TABLE>\r\n[!--titlelink--]\r\n</td>\r\n</tr>\r\n</table>\r\n</center>\r\n</body>\r\n</html>',1,'Y-m-d H:i:s',1);
/*!40000 ALTER TABLE `gc_enewsprinttemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspublic`
--

DROP TABLE IF EXISTS `gc_enewspublic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspublic` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `newsurl` varchar(120) NOT NULL DEFAULT '',
  `sitename` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `filetype` text NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `hotnum` tinyint(4) NOT NULL DEFAULT '0',
  `newnum` tinyint(4) NOT NULL DEFAULT '0',
  `relistnum` int(11) NOT NULL DEFAULT '0',
  `renewsnum` int(11) NOT NULL DEFAULT '0',
  `min_keyboard` tinyint(4) NOT NULL DEFAULT '0',
  `max_keyboard` tinyint(4) NOT NULL DEFAULT '0',
  `search_num` tinyint(4) NOT NULL DEFAULT '0',
  `search_pagenum` tinyint(4) NOT NULL DEFAULT '0',
  `newslink` tinyint(4) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `searchtime` int(11) NOT NULL DEFAULT '0',
  `loginnum` smallint(6) NOT NULL DEFAULT '0',
  `logintime` int(11) NOT NULL DEFAULT '0',
  `addnews_ok` tinyint(1) NOT NULL DEFAULT '0',
  `register_ok` tinyint(1) NOT NULL DEFAULT '0',
  `indextype` varchar(10) NOT NULL DEFAULT '',
  `goodlencord` tinyint(4) NOT NULL DEFAULT '0',
  `goodtype` varchar(10) NOT NULL DEFAULT '',
  `goodnum` tinyint(4) NOT NULL DEFAULT '0',
  `searchtype` varchar(10) NOT NULL DEFAULT '',
  `exittime` smallint(6) NOT NULL DEFAULT '0',
  `smalltextlen` smallint(6) NOT NULL DEFAULT '0',
  `defaultgroupid` smallint(6) NOT NULL DEFAULT '0',
  `fileurl` varchar(255) NOT NULL DEFAULT '',
  `phpmode` tinyint(1) NOT NULL DEFAULT '0',
  `ftphost` varchar(255) NOT NULL DEFAULT '',
  `ftpport` varchar(20) NOT NULL DEFAULT '21',
  `ftpusername` varchar(120) NOT NULL DEFAULT '',
  `ftppassword` varchar(120) NOT NULL DEFAULT '',
  `ftppath` varchar(255) NOT NULL DEFAULT '',
  `ftpmode` tinyint(1) NOT NULL DEFAULT '0',
  `install` tinyint(1) NOT NULL DEFAULT '0',
  `hotplnum` tinyint(4) NOT NULL DEFAULT '0',
  `softversion` varchar(30) NOT NULL DEFAULT '0',
  `lctime` int(11) NOT NULL DEFAULT '0',
  `dorepnum` smallint(6) NOT NULL DEFAULT '0',
  `loadtempnum` smallint(6) NOT NULL DEFAULT '0',
  `firstnum` tinyint(4) NOT NULL DEFAULT '0',
  `bakdbpath` varchar(50) NOT NULL DEFAULT '',
  `bakdbzip` varchar(50) NOT NULL DEFAULT '',
  `downpass` varchar(32) NOT NULL DEFAULT '',
  `min_userlen` tinyint(4) NOT NULL DEFAULT '0',
  `max_userlen` tinyint(4) NOT NULL DEFAULT '0',
  `min_passlen` tinyint(4) NOT NULL DEFAULT '0',
  `max_passlen` tinyint(4) NOT NULL DEFAULT '0',
  `filechmod` tinyint(1) NOT NULL DEFAULT '0',
  `tid` smallint(6) NOT NULL DEFAULT '0',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `loginkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `limittype` tinyint(1) NOT NULL DEFAULT '0',
  `redodown` smallint(6) NOT NULL DEFAULT '0',
  `candocode` tinyint(1) NOT NULL DEFAULT '0',
  `opennotcj` tinyint(1) NOT NULL DEFAULT '0',
  `reuserpagenum` int(11) NOT NULL DEFAULT '0',
  `revotejsnum` int(11) NOT NULL DEFAULT '0',
  `readjsnum` int(11) NOT NULL DEFAULT '0',
  `qaddtran` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtransize` int(11) NOT NULL DEFAULT '0',
  `ebakthisdb` tinyint(1) NOT NULL DEFAULT '0',
  `delnewsnum` int(11) NOT NULL DEFAULT '0',
  `markpos` tinyint(4) NOT NULL DEFAULT '0',
  `markimg` varchar(80) NOT NULL DEFAULT '',
  `marktext` varchar(80) NOT NULL DEFAULT '',
  `markfontsize` varchar(12) NOT NULL DEFAULT '',
  `markfontcolor` varchar(12) NOT NULL DEFAULT '',
  `markfont` varchar(80) NOT NULL DEFAULT '',
  `adminloginkey` tinyint(1) NOT NULL DEFAULT '0',
  `php_outtime` int(11) NOT NULL DEFAULT '0',
  `listpagefun` varchar(36) NOT NULL DEFAULT '',
  `textpagefun` varchar(36) NOT NULL DEFAULT '',
  `adfile` varchar(30) NOT NULL DEFAULT '',
  `notsaveurl` text NOT NULL,
  `jstempid` smallint(6) NOT NULL DEFAULT '0',
  `rssnum` smallint(6) NOT NULL DEFAULT '0',
  `rsssub` smallint(6) NOT NULL DEFAULT '0',
  `savetxtf` text NOT NULL,
  `dorepdlevelnum` int(11) NOT NULL DEFAULT '0',
  `listpagelistfun` varchar(36) NOT NULL DEFAULT '',
  `listpagelistnum` smallint(6) NOT NULL DEFAULT '0',
  `infolinknum` int(11) NOT NULL DEFAULT '0',
  `searchgroupid` smallint(6) NOT NULL DEFAULT '0',
  `opencopytext` tinyint(1) NOT NULL DEFAULT '0',
  `reuserjsnum` int(11) NOT NULL DEFAULT '0',
  `reuserlistnum` int(11) NOT NULL DEFAULT '0',
  `opentitleurl` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtranimgtype` text NOT NULL,
  `qaddtranfile` tinyint(1) NOT NULL DEFAULT '0',
  `qaddtranfilesize` int(11) NOT NULL DEFAULT '0',
  `qaddtranfiletype` text NOT NULL,
  `sendmailtype` tinyint(1) NOT NULL DEFAULT '0',
  `smtphost` varchar(255) NOT NULL DEFAULT '',
  `fromemail` varchar(120) NOT NULL DEFAULT '',
  `loginemail` tinyint(1) NOT NULL DEFAULT '0',
  `emailusername` varchar(60) NOT NULL DEFAULT '',
  `emailpassword` varchar(60) NOT NULL DEFAULT '',
  `smtpport` varchar(20) NOT NULL DEFAULT '',
  `emailname` varchar(120) NOT NULL DEFAULT '',
  `deftempid` smallint(6) NOT NULL DEFAULT '0',
  `feedbacktfile` tinyint(1) NOT NULL DEFAULT '0',
  `feedbackfilesize` int(11) NOT NULL DEFAULT '0',
  `feedbackfiletype` text NOT NULL,
  `searchtempvar` tinyint(1) NOT NULL DEFAULT '0',
  `showinfolevel` smallint(6) NOT NULL DEFAULT '0',
  `navfh` varchar(20) NOT NULL DEFAULT '',
  `spicwidth` smallint(6) NOT NULL DEFAULT '0',
  `spicheight` smallint(6) NOT NULL DEFAULT '0',
  `spickill` tinyint(1) NOT NULL DEFAULT '0',
  `jpgquality` tinyint(4) NOT NULL DEFAULT '0',
  `markpct` tinyint(4) NOT NULL DEFAULT '0',
  `redoview` smallint(6) NOT NULL DEFAULT '0',
  `reggetfen` smallint(6) NOT NULL DEFAULT '0',
  `regbooktime` smallint(6) NOT NULL DEFAULT '0',
  `revotetime` smallint(6) NOT NULL DEFAULT '0',
  `nreclass` text NOT NULL,
  `nreinfo` text NOT NULL,
  `nrejs` text NOT NULL,
  `fpath` tinyint(1) NOT NULL DEFAULT '0',
  `filepath` varchar(30) NOT NULL DEFAULT '',
  `openmembertranimg` tinyint(1) NOT NULL DEFAULT '0',
  `memberimgsize` int(11) NOT NULL DEFAULT '0',
  `memberimgtype` text NOT NULL,
  `openmembertranfile` tinyint(1) NOT NULL DEFAULT '0',
  `memberfilesize` int(11) NOT NULL DEFAULT '0',
  `memberfiletype` text NOT NULL,
  `nottobq` text NOT NULL,
  `defspacestyleid` smallint(6) NOT NULL DEFAULT '0',
  `canposturl` text NOT NULL,
  `openspace` tinyint(1) NOT NULL DEFAULT '0',
  `defadminstyle` smallint(6) NOT NULL DEFAULT '0',
  `realltime` smallint(6) NOT NULL DEFAULT '0',
  `closeip` text NOT NULL,
  `openip` text NOT NULL,
  `hopenip` text NOT NULL,
  `closewords` text NOT NULL,
  `closewordsf` text NOT NULL,
  `textpagelistnum` smallint(6) NOT NULL DEFAULT '0',
  `memberlistlevel` smallint(6) NOT NULL DEFAULT '0',
  `wapopen` tinyint(1) NOT NULL DEFAULT '0',
  `wapdefstyle` smallint(6) NOT NULL DEFAULT '0',
  `wapshowmid` varchar(255) NOT NULL DEFAULT '',
  `waplistnum` tinyint(4) NOT NULL DEFAULT '0',
  `wapsubtitle` tinyint(4) NOT NULL DEFAULT '0',
  `wapshowdate` varchar(50) NOT NULL DEFAULT '',
  `wapchar` tinyint(1) NOT NULL DEFAULT '0',
  `ebakcanlistdb` tinyint(1) NOT NULL DEFAULT '0',
  `paymoneytofen` int(11) NOT NULL DEFAULT '0',
  `payminmoney` int(11) NOT NULL DEFAULT '0',
  `keytog` tinyint(1) NOT NULL DEFAULT '0',
  `keyrnd` varchar(60) NOT NULL DEFAULT '',
  `keytime` int(11) NOT NULL DEFAULT '0',
  `regkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `opengetdown` tinyint(1) NOT NULL DEFAULT '0',
  `gbkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `fbkey_ok` tinyint(1) NOT NULL DEFAULT '0',
  `newaddinfotime` smallint(6) NOT NULL DEFAULT '0',
  `classnavline` smallint(6) NOT NULL DEFAULT '0',
  `classnavfh` varchar(120) NOT NULL DEFAULT '',
  `adminstyle` text NOT NULL,
  `sitekey` varchar(255) NOT NULL DEFAULT '',
  `siteintro` text NOT NULL,
  `docnewsnum` int(11) NOT NULL DEFAULT '0',
  `openschall` tinyint(1) NOT NULL DEFAULT '0',
  `schallfield` tinyint(1) NOT NULL DEFAULT '0',
  `schallminlen` tinyint(4) NOT NULL DEFAULT '0',
  `schallmaxlen` tinyint(4) NOT NULL DEFAULT '0',
  `schallnotcid` text NOT NULL,
  `schallnum` smallint(6) NOT NULL DEFAULT '0',
  `schallpagenum` smallint(6) NOT NULL DEFAULT '0',
  `dtcanbq` tinyint(1) NOT NULL DEFAULT '0',
  `dtcachetime` int(11) NOT NULL DEFAULT '0',
  `regretime` smallint(6) NOT NULL DEFAULT '0',
  `regclosewords` text NOT NULL,
  `regemailonly` tinyint(1) NOT NULL DEFAULT '0',
  `repkeynum` smallint(6) NOT NULL DEFAULT '0',
  `getpasstime` int(11) NOT NULL DEFAULT '0',
  `acttime` int(11) NOT NULL DEFAULT '0',
  `regacttype` tinyint(1) NOT NULL DEFAULT '0',
  `acttext` text NOT NULL,
  `getpasstext` text NOT NULL,
  `acttitle` varchar(120) NOT NULL DEFAULT '',
  `getpasstitle` varchar(120) NOT NULL DEFAULT '',
  `opengetpass` tinyint(1) NOT NULL DEFAULT '0',
  `hlistinfonum` int(11) NOT NULL DEFAULT '0',
  `qlistinfonum` int(11) NOT NULL DEFAULT '0',
  `dtncanbq` tinyint(1) NOT NULL DEFAULT '0',
  `dtncachetime` int(11) NOT NULL DEFAULT '0',
  `readdinfotime` smallint(6) NOT NULL DEFAULT '0',
  `qeditinfotime` int(11) NOT NULL DEFAULT '0',
  `ftpssl` tinyint(1) NOT NULL DEFAULT '0',
  `ftppasv` tinyint(1) NOT NULL DEFAULT '0',
  `ftpouttime` smallint(6) NOT NULL DEFAULT '0',
  `onclicktype` tinyint(1) NOT NULL DEFAULT '0',
  `onclickfilesize` int(11) NOT NULL DEFAULT '0',
  `onclickfiletime` int(11) NOT NULL DEFAULT '0',
  `schalltime` smallint(6) NOT NULL DEFAULT '0',
  `defprinttempid` smallint(6) NOT NULL DEFAULT '0',
  `opentags` tinyint(1) NOT NULL DEFAULT '0',
  `tagstempid` smallint(6) NOT NULL DEFAULT '0',
  `usetags` text NOT NULL,
  `chtags` text NOT NULL,
  `tagslistnum` smallint(6) NOT NULL DEFAULT '0',
  `closeqdt` tinyint(1) NOT NULL DEFAULT '0',
  `settop` tinyint(1) NOT NULL DEFAULT '0',
  `qlistinfomod` tinyint(1) NOT NULL DEFAULT '0',
  `gb_num` tinyint(4) NOT NULL DEFAULT '0',
  `member_num` tinyint(4) NOT NULL DEFAULT '0',
  `space_num` tinyint(4) NOT NULL DEFAULT '0',
  `opendoip` text NOT NULL,
  `closedoip` text NOT NULL,
  `doiptype` varchar(255) NOT NULL DEFAULT '',
  `filelday` int(11) NOT NULL DEFAULT '0',
  `infolday` int(11) NOT NULL DEFAULT '0',
  `baktempnum` tinyint(4) NOT NULL DEFAULT '0',
  `dorepkey` tinyint(1) NOT NULL DEFAULT '0',
  `dorepword` tinyint(1) NOT NULL DEFAULT '0',
  `onclickrnd` varchar(20) NOT NULL DEFAULT '',
  `indexpagedt` tinyint(1) NOT NULL DEFAULT '0',
  `keybgcolor` varchar(8) NOT NULL DEFAULT '',
  `keyfontcolor` varchar(8) NOT NULL DEFAULT '',
  `keydistcolor` varchar(8) NOT NULL DEFAULT '',
  `indexpageid` smallint(6) NOT NULL DEFAULT '0',
  `closeqdtmsg` varchar(255) NOT NULL DEFAULT '',
  `openfileserver` tinyint(1) NOT NULL DEFAULT '0',
  `closemods` varchar(255) NOT NULL DEFAULT '',
  `fieldandtop` tinyint(1) NOT NULL DEFAULT '0',
  `fieldandclosetb` text NOT NULL,
  `filedatatbs` text NOT NULL,
  `filedeftb` smallint(5) unsigned NOT NULL DEFAULT '0',
  `closelisttemp` varchar(255) NOT NULL DEFAULT '',
  `chclasscolor` varchar(8) NOT NULL DEFAULT '',
  `timeclose` varchar(255) NOT NULL DEFAULT '',
  `timeclosedo` varchar(255) NOT NULL DEFAULT '',
  `ipaddinfonum` int(10) unsigned NOT NULL DEFAULT '0',
  `ipaddinfotime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rewriteinfo` varchar(120) NOT NULL DEFAULT '',
  `rewriteclass` varchar(120) NOT NULL DEFAULT '',
  `rewriteinfotype` varchar(120) NOT NULL DEFAULT '',
  `rewritetags` varchar(120) NOT NULL DEFAULT '',
  `closehmenu` varchar(80) NOT NULL DEFAULT '',
  `indexaddpage` tinyint(1) NOT NULL DEFAULT '0',
  `rewritepl` varchar(150) NOT NULL DEFAULT '',
  `modmemberedittran` tinyint(1) NOT NULL DEFAULT '0',
  `modinfoedittran` tinyint(1) NOT NULL DEFAULT '0',
  `php_adminouttime` int(11) NOT NULL DEFAULT '0',
  `httptype` tinyint(1) NOT NULL DEFAULT '0',
  `qinfoaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `bakescapetype` tinyint(1) NOT NULL DEFAULT '0',
  `hkeytime` int(11) NOT NULL DEFAULT '0',
  `hkeyrnd` varchar(60) NOT NULL DEFAULT '',
  `mhavedatedo` tinyint(1) NOT NULL DEFAULT '0',
  `reportkey` tinyint(1) NOT NULL DEFAULT '0',
  `wapchstyle` tinyint(1) NOT NULL DEFAULT '0',
  `usetotalnum` tinyint(1) NOT NULL DEFAULT '0',
  `spacegids` varchar(255) NOT NULL DEFAULT '',
  `candocodetag` tinyint(1) NOT NULL DEFAULT '0',
  `openern` varchar(255) NOT NULL DEFAULT '',
  `ernurl` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspublic`
--

LOCK TABLES `gc_enewspublic` WRITE;
/*!40000 ALTER TABLE `gc_enewspublic` DISABLE KEYS */;
INSERT INTO `gc_enewspublic` VALUES (1,'/','全球证券_中国证券资讯门户网站 ','admin@phome.net','|.gif|.jpg|.swf|.rar|.zip|.mp3|.wmv|.txt|.doc|.png|',2048,10,10,8,100,2,20,20,10,0,0,30,5,60,1,0,'.html',0,'',10,'.html',40,160,1,'/d/file/',0,'','21','','','',0,0,10,'7.5,1502985610',1222406370,300,50,10,'bdata','zip','A2UtbagjQKBweOnl6PWC',3,20,6,20,1,1,'news',0,0,1,1,0,50,100,100,1,50,1,300,5,'../data/mark/maskdef.gif','','5','','../data/mark/cour.ttf',1,0,'sys_ShowListPage','sys_ShowTextPage','thea','',1,50,300,',article.newstext,',300,'sys_ShowListMorePage',10,100,0,0,100,8,1,'|.gif|.jpg|',1,500,'|.zip|.rar|',1,'smtp.163.com','ecms@163.com',1,'ecms','ecms','25','帝国CMS',0,1,500,'|.zip|.rar|',1,2,'>',105,118,1,80,65,24,0,30,30,',',',',',',1,'Y/m-d',1,50,'|.gif|.jpg|',1,500,'|.zip|.rar|',',',1,'',1,1,0,'','','','','',6,2,1,3,'',10,30,'m-d',1,0,10,1,2,'M2BxYss2HjaLhXSE5dQ7AlXf50vOUEPf',900,0,0,0,0,0,20,'&nbsp;|&nbsp;',',1,2,','帝国网站管理系统,EmpireCMS','　　帝国软件是一家专注于网络软件开发的科技公司，其主营产品“帝国网站管理系统(EmpireCMS)”是目前国内应用超高广泛的CMS程序。通过十多年的不断创新与完善，使系统集安全、稳定、强大、灵活于一身。目前EmpireCMS程序已经广泛应用在国内上百万家网站，覆盖国内数千万上网人群，并经过上千家知名网站的严格检测，被称为国内超高安全、超高稳定的开源CMS系统。',300,0,1,3,20,',,',20,10,1,0,0,'',1,0,72,720,0,'[!--username--] ，\r\n这封信是由 [!--sitename--] 发送的。\r\n\r\n您收到这封邮件，是因为在我们网站的新用户注册 Email 使用\r\n了您的地址。如果您并没有访问过我们的网站，或没有进行上述操作，请忽\r\n略这封邮件。您不需要退订或进行其他进一步的操作。\r\n\r\n----------------------------------------------------------------------\r\n帐号激活说明\r\n----------------------------------------------------------------------\r\n\r\n您是我们网站的新用户，注册 Email 时使用了本地址，我们需\r\n要对您的地址有效性进行验证以避免垃圾邮件或地址被滥用。\r\n\r\n您只需点击下面的链接即可激活您的帐号：\r\n\r\n[!--pageurl--]\r\n\r\n(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏再访问)\r\n\r\n感谢您的访问，祝您使用愉快！\r\n\r\n\r\n\r\n此致\r\n\r\n[!--sitename--] 管理团队.\r\n[!--news.url--]','[!--username--] ，\r\n这封信是由 [!--sitename--] 发送的。\r\n\r\n您收到这封邮件，是因为在我们的网站上这个邮箱地址被登记为用户邮箱，\r\n且该用户请求使用 Email 密码重置功能所致。\r\n\r\n----------------------------------------------------------------------\r\n重要！\r\n----------------------------------------------------------------------\r\n\r\n如果您没有提交密码重置的请求或不是我们网站的注册用户，请立即忽略\r\n并删除这封邮件。只在您确认需要重置密码的情况下，才继续阅读下面的\r\n内容。\r\n\r\n----------------------------------------------------------------------\r\n密码重置说明\r\n----------------------------------------------------------------------\r\n\r\n您只需在提交请求后的三天之内，通过点击下面的链接重置您的密码：\r\n\r\n[!--pageurl--]\r\n\r\n(如果上面不是链接形式，请将地址手工粘贴到浏览器地址栏再访问)\r\n\r\n上面的页面打开后，输入新的密码后提交，之后您即可使用新的密码登录\r\n网站了。您可以在用户控制面板中随时修改您的密码。\r\n\r\n\r\n\r\n此致\r\n\r\n[!--sitename--] 管理团队.\r\n[!--news.url--]','[[!--sitename--]] Email 地址验证','[[!--sitename--]] 取回密码说明',0,30,25,1,43200,60,0,0,0,0,0,10,60,0,1,1,1,',1,2,3,4,5,6,7,8,','',25,0,0,0,20,20,25,'','','',0,0,3,0,0,'',0,'','','',0,'',0,',error,gb,fb,',0,'',',1,',1,'','99C4E3','','',0,0,'','','','','',0,'',0,0,1000,0,0,1,30,'9lUAbltfwiVppsMeU2amNkBFsx6HzbOd8cjw',0,0,0,0,'',0,'','');
/*!40000 ALTER TABLE `gc_enewspublic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspublic_fc`
--

DROP TABLE IF EXISTS `gc_enewspublic_fc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspublic_fc` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `fclastindex` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspublic_fc`
--

LOCK TABLES `gc_enewspublic_fc` WRITE;
/*!40000 ALTER TABLE `gc_enewspublic_fc` DISABLE KEYS */;
INSERT INTO `gc_enewspublic_fc` VALUES (1,1558487287);
/*!40000 ALTER TABLE `gc_enewspublic_fc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspublic_up`
--

DROP TABLE IF EXISTS `gc_enewspublic_up`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspublic_up` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `lasttimeinfo` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttimepl` int(10) unsigned NOT NULL DEFAULT '0',
  `lastnuminfo` int(10) unsigned NOT NULL DEFAULT '0',
  `lastnumpl` int(10) unsigned NOT NULL DEFAULT '0',
  `lastnuminfotb` text NOT NULL,
  `lastnumpltb` text NOT NULL,
  `todaytimeinfo` int(10) unsigned NOT NULL DEFAULT '0',
  `todaytimepl` int(10) unsigned NOT NULL DEFAULT '0',
  `todaynuminfo` int(10) unsigned NOT NULL DEFAULT '0',
  `yesterdaynuminfo` int(10) unsigned NOT NULL DEFAULT '0',
  `todaynumpl` int(10) unsigned NOT NULL DEFAULT '0',
  `yesterdaynumpl` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspublic_up`
--

LOCK TABLES `gc_enewspublic_up` WRITE;
/*!40000 ALTER TABLE `gc_enewspublic_up` DISABLE KEYS */;
INSERT INTO `gc_enewspublic_up` VALUES (1,1355124469,1355124476,4,0,'|1,4|','',1558358954,1558358954,2,1,0,0);
/*!40000 ALTER TABLE `gc_enewspublic_up` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspublicadd`
--

DROP TABLE IF EXISTS `gc_enewspublicadd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspublicadd` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `ctimeopen` tinyint(1) NOT NULL DEFAULT '0',
  `ctimelast` int(10) unsigned NOT NULL DEFAULT '0',
  `ctimeindex` int(11) NOT NULL DEFAULT '0',
  `ctimeclass` int(11) NOT NULL DEFAULT '0',
  `ctimelist` int(11) NOT NULL DEFAULT '0',
  `ctimetext` int(11) NOT NULL DEFAULT '0',
  `ctimett` int(11) NOT NULL DEFAULT '0',
  `ctimetags` int(11) NOT NULL DEFAULT '0',
  `ctimegids` varchar(255) NOT NULL DEFAULT '',
  `ctimecids` varchar(255) NOT NULL DEFAULT '',
  `ctimernd` varchar(60) NOT NULL DEFAULT '',
  `ctimeaddre` tinyint(4) NOT NULL DEFAULT '0',
  `ctimeqaddre` tinyint(4) NOT NULL DEFAULT '0',
  `autodoopen` tinyint(1) NOT NULL DEFAULT '0',
  `autodouser` varchar(30) NOT NULL DEFAULT '',
  `autodopass` varchar(32) NOT NULL DEFAULT '',
  `autodosalt` varchar(20) NOT NULL DEFAULT '',
  `autodoshowkey` tinyint(1) NOT NULL DEFAULT '0',
  `autodotime` int(11) NOT NULL DEFAULT '0',
  `autodoline` int(11) NOT NULL DEFAULT '0',
  `autodovar` varchar(20) NOT NULL DEFAULT '',
  `autodoval` varchar(60) NOT NULL DEFAULT '',
  `autodoshow` tinyint(1) NOT NULL DEFAULT '0',
  `autodofile` tinyint(1) NOT NULL DEFAULT '0',
  `autodopostpass` varchar(120) NOT NULL DEFAULT '',
  `autodoss` tinyint(1) NOT NULL DEFAULT '0',
  `autodoaction` varchar(200) NOT NULL DEFAULT '',
  `autodock` tinyint(1) NOT NULL DEFAULT '0',
  `digglevel` int(11) NOT NULL DEFAULT '0',
  `diggcmids` varchar(255) NOT NULL DEFAULT '',
  `toqjf` text NOT NULL,
  `qtoqjf` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspublicadd`
--

LOCK TABLES `gc_enewspublicadd` WRITE;
/*!40000 ALTER TABLE `gc_enewspublicadd` DISABLE KEYS */;
INSERT INTO `gc_enewspublicadd` VALUES (1,0,0,0,0,0,0,0,0,'','','WYvR5hcdj48Q7k4NEpormCKPgSTmPNNIauDUanNa0n',0,0,0,'','','',0,100,12,'','',1,0,'BjlteUkBVksYNiEsnqhXA8Tn01diDC0L77SPtf6YbqNmqZpBSR7yoWkDvD7B',0,',emp,',0,0,'','','');
/*!40000 ALTER TABLE `gc_enewspublicadd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspubtemp`
--

DROP TABLE IF EXISTS `gc_enewspubtemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspubtemp` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `indextemp` mediumtext NOT NULL,
  `cptemp` mediumtext NOT NULL,
  `searchtemp` mediumtext NOT NULL,
  `searchjstemp` mediumtext NOT NULL,
  `searchjstemp1` mediumtext NOT NULL,
  `otherlinktemp` mediumtext NOT NULL,
  `downsofttemp` text NOT NULL,
  `onlinemovietemp` text NOT NULL,
  `listpagetemp` text NOT NULL,
  `gbooktemp` mediumtext NOT NULL,
  `loginiframe` mediumtext NOT NULL,
  `otherlinktempsub` tinyint(4) NOT NULL DEFAULT '0',
  `otherlinktempdate` varchar(20) NOT NULL DEFAULT '',
  `loginjstemp` mediumtext NOT NULL,
  `downpagetemp` mediumtext NOT NULL,
  `pljstemp` mediumtext NOT NULL,
  `schalltemp` mediumtext NOT NULL,
  `schallsubnum` smallint(6) NOT NULL DEFAULT '0',
  `schalldate` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspubtemp`
--

LOCK TABLES `gc_enewspubtemp` WRITE;
/*!40000 ALTER TABLE `gc_enewspubtemp` DISABLE KEYS */;
INSERT INTO `gc_enewspubtemp` VALUES (1,'<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/zhishu.css\\\">\r\n    <script type=\\\"text/javascript\\\">\r\n        var newsurl=\\\'[!--news.url--]\\\';\r\n        if (/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {\r\n            window.location.href = \\\"[!--news.url--]e/wap/\\\";\r\n        }\r\n    </script>\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\">[!--pagetitle--]</div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"AdtImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea1.js\\\"></script></div>\r\n            <div class=\\\"conter\\\">\r\n                <div class=\\\"contL\\\">\r\n                    <div class=\\\"newFlash box\\\">\r\n                        <span>快讯</span>\r\n                        <div class=\\\"newFlashList boxL\\\">\r\n                            [e:loop={\\\"select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort\\\",0,24,0}]\r\n                                <a href=\\\"<?=$bqr[\\\'url\\\']?>\\\"><?=$bqr[\\\'fname\\\']?></a>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                    <div class=\\\"newList\\\">\r\n                    </div>\r\n                    <div class=\\\"more_list_page\\\" start=\\\"0\\\" cid=\\\"0\\\" style=\\\"display:none\\\">\r\n                    </div>\r\n                </div>\r\n                [!--temp.sidebar--]\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <script src=\\\"[!--news.url--]skin/stock/js/jquery-3.4.1.min.js\\\"></script>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/pIndex.js\\\"></script>\r\n</body>\r\n\r\n</html>','<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>[!--pagetitle--] - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--] \r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>现在的位置：[!--newsnav--]\r\n</td>\r\n</tr>\r\n</table>\r\n      <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n        <tr> \r\n          <td width=\\\"300\\\" valign=\\\"top\\\"> \r\n		  <?php\r\n		  $lguserid=intval(getcvar(\\\'mluserid\\\'));//登陆用户ID\r\n		  $lgusername=RepPostVar(getcvar(\\\'mlusername\\\'));//登陆用户\r\n		  $lggroupid=intval(getcvar(\\\'mlgroupid\\\'));//会员组ID\r\n		  if($lggroupid)	//登陆会员显示菜单\r\n		  {\r\n		  ?>\r\n            <table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" class=\\\"tableborder\\\">\r\n              <tr class=\\\"header\\\"> \r\n                <td height=\\\"20\\\" bgcolor=\\\"#FFFFFF\\\"> <div align=\\\"center\\\"><strong><a href=\\\"[!--news.url--]e/member/cp/\\\">功能菜单</a></strong></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/EditInfo/\\\">修改资料</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/my/\\\">帐号状态</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/msg/\\\">站内信息</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/mspace/SetSpace.php\\\">空间设置</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/DoInfo/\\\">管理信息</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/fava/\\\">收藏夹</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/payapi/\\\">在线支付</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/friend/\\\">我的好友</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/buybak/\\\">消费记录</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/buygroup/\\\">在线充值</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/card/\\\">点卡充值</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--news.url--]e/ShopSys/buycar/\\\',\\\'\\\',\\\'width=680,height=500,scrollbars=yes,resizable=yes\\\');\\\">我的购物车</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/ShopSys/ListDd/\\\">我的订单</a></div></td>\r\n              </tr>\r\n			  <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/login/\\\">重新登陆</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/doaction.php?enews=exit\\\" onclick=\\\"return confirm(\\\'确认要退出?\\\');\\\">退出登陆</a></div></td>\r\n              </tr>\r\n            </table>\r\n			<?php\r\n			}\r\n			else	//游客显示菜单\r\n			{\r\n			?>  \r\n            <table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" class=\\\"tableborder\\\">\r\n              <tr class=\\\"header\\\"> \r\n                <td height=\\\"20\\\" bgcolor=\\\"#FFFFFF\\\"> <div align=\\\"center\\\"><strong><a href=\\\"[!--news.url--]e/member/cp/\\\">功能菜单</a></strong></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/login/\\\">会员登陆</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/member/register/\\\">注册帐号</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"[!--news.url--]e/DoInfo/\\\">发布投稿</a></div></td>\r\n              </tr>\r\n              <tr> \r\n                <td height=\\\"25\\\" bgcolor=\\\"#FFFFFF\\\" onmouseout=\\\"this.style.backgroundColor=\\\'#ffffff\\\'\\\" onmouseover=\\\"this.style.backgroundColor=\\\'#EBF3FC\\\'\\\"><div align=\\\"center\\\"><a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--news.url--]e/ShopSys/buycar/\\\',\\\'\\\',\\\'width=680,height=500,scrollbars=yes,resizable=yes\\\');\\\">我的购物车</a></div></td>\r\n              </tr>\r\n            </table>\r\n			<?php\r\n			}\r\n			?>\r\n			</td>\r\n          <td width=\\\"85%\\\" valign=\\\"top\\\">[!--empirenews.template--]</td>\r\n        </tr>\r\n      </table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>','<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>高级搜索 - Powered by EmpireCMS</title>\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<script src=\\\"[!--news.url--]e/data/images/setday.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>现在的位置：[!--url--]</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n						<tr>\r\n							<td><form action=\\\'[!--news.url--]e/search/index.php\\\' method=\\\"post\\\" name=\\\"search_news\\\" id=\\\"search_news\\\">\r\n									<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n										<tr>\r\n											<td width=\\\"54%\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n													<tr>\r\n														<td bgcolor=\\\"#F4F4F4\\\"><strong>搜索范围</strong></td>\r\n													</tr>\r\n											</table></td>\r\n											<td width=\\\"46%\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n													<tr>\r\n														<td bgcolor=\\\"#F4F4F4\\\"><strong>搜索栏目</strong></td>\r\n													</tr>\r\n											</table></td>\r\n										</tr>\r\n										<tr>\r\n											<td valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n													<tr>\r\n														<td><input type=\\\"radio\\\" name=\\\"show\\\" value=\\\"title\\\" checked=\\\"checked\\\" />\r\n															标题\r\n															<input type=\\\"radio\\\" name=\\\"show\\\" value=\\\"smalltext\\\" />\r\n															简介\r\n															<input type=\\\"radio\\\" name=\\\"show\\\" value=\\\"newstext\\\" />\r\n															内容\r\n															<input type=\\\"radio\\\" name=\\\"show\\\" value=\\\"writer\\\" />\r\n															作者\r\n															<input name=\\\"show\\\" type=\\\"radio\\\" value=\\\"title,smalltext,newstext,writer\\\" />\r\n															不限</td>\r\n													</tr>\r\n												</table>\r\n													<br />\r\n													<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n														<tr bgcolor=\\\"#F4F4F4\\\">\r\n															<td><strong>时间限制</strong><font color=\\\"#666666\\\">(0000-00-00为不限制)</font></td>\r\n														</tr>\r\n														<tr>\r\n															<td height=\\\"30\\\" valign=\\\"top\\\">从\r\n																<input name=\\\"starttime\\\" type=\\\"text\\\" value=\\\"0000-00-00\\\" size=\\\"12\\\" onclick=\\\"setday(this)\\\" />\r\n																到\r\n																<input name=\\\"endtime\\\" type=\\\"text\\\" value=\\\"0000-00-00\\\" size=\\\"12\\\" onclick=\\\"setday(this)\\\" />\r\n																之间的数据</td>\r\n														</tr>\r\n														<tr>\r\n															<td bgcolor=\\\"#F4F4F4\\\"><strong>价格限制</strong><font color=\\\"#666666\\\">(商城模型中有效,0为不限制)</font></td>\r\n														</tr>\r\n														<tr>\r\n															<td>从\r\n																<input name=\\\"startprice\\\" type=\\\"text\\\" id=\\\"startprice\\\" value=\\\"0\\\" size=\\\"6\\\" />\r\n																到\r\n																<input name=\\\"endprice\\\" type=\\\"text\\\" id=\\\"endprice\\\" value=\\\"0\\\" size=\\\"6\\\" />\r\n																元之间</td>\r\n														</tr>\r\n												</table></td>\r\n											<td valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"6\\\" cellpadding=\\\"0\\\">\r\n													<tr>\r\n														<td><select name=\\\"classid\\\" size=\\\"8\\\" id=\\\"select2\\\" style=\\\"width: 100%;height:112px\\\">\r\n																<option value=\\\"0\\\" selected=\\\"selected\\\">所有栏目</option>\r\n															[!--class--]\r\n          \r\n														</select></td>\r\n													</tr>\r\n												</table>\r\n													<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"6\\\" cellspacing=\\\"0\\\">\r\n														<tr>\r\n															<td bgcolor=\\\"#F4F4F4\\\"><strong>结果显示</strong></td>\r\n														</tr>\r\n														<tr>\r\n															<td height=\\\"30\\\"><select name=\\\"orderby\\\" id=\\\"select4\\\">\r\n																	<option value=\\\"\\\">按发布日期</option>\r\n																	<option value=\\\"id\\\">信息ID</option>\r\n																	<option value=\\\"plnum\\\">评论数</option>\r\n																	<option value=\\\"onclick\\\">人气</option>\r\n																	<option value=\\\"totaldown\\\">下载数</option>\r\n																</select>\r\n																	<select name=\\\"myorder\\\" id=\\\"select5\\\">\r\n																		<option value=\\\"0\\\">倒序排列</option>\r\n																		<option value=\\\"1\\\">顺序排列</option>\r\n																	</select>\r\n															</td>\r\n														</tr>\r\n												</table></td>\r\n										</tr>\r\n									</table>\r\n								<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"0\\\">\r\n										<tr>\r\n											<td>关键字：\r\n												<input name=\\\"keyboard\\\" type=\\\"text\\\" id=\\\"keyboard2\\\" size=\\\"60\\\" />\r\n													<input type=\\\"submit\\\" name=\\\"Submit22\\\" value=\\\"搜索\\\" />\r\n											</td>\r\n										</tr>\r\n									</table>\r\n							</form></td>\r\n						</tr>\r\n					</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>','<table border=0 cellpadding=3 cellspacing=1><form name=search_js1 method=post action=\'[!--news.url--]e/search/index.php\' onsubmit=\'return search_check(document.search_js1);\'><tr><td><div align=center>搜索: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select><select name=classid><option value=0>所有栏目</option>[!--class--]</select><input name=keyboard type=text size=13><input type=submit name=Submit value=搜索></div></td></tr></form></table>','<table width=99% border=0 cellpadding=3 cellspacing=1><form name=search_js2 method=post action=\'[!--news.url--]e/search/index.php\' onsubmit=\'return search_check(document.search_js2);\'><tr><td height=25><div align=center>关键字: <input name=keyboard type=text size=13></div></td></tr><tr><td><div align=center>范围: <select name=show><option value=title>标题</option><option value=smalltext>简介</option><option value=newstext>内容</option><option value=writer>作者</option><option value=title,smalltext,newstext,writer>搜索全部</option></select></div></td></tr><tr><td><div align=center>栏目:<select name=classid><option value=0>所有栏目</option>[!--class--]</select></div></td></tr><tr><td><div align=center><input type=submit name=Submit value=搜索></div></td></tr></form></table>','[!--empirenews.listtemp--]<li><a href=\"[!--titleurl--]\" title=\"[!--oldtitle--]\">[!--title--]</a></li>[!--empirenews.listtemp--]','[ <a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--down.url--]\\\',\\\'\\\',\\\'width=300,height=300,resizable=yes\\\');\\\">[!--down.name--]</a> ]','[ <a href=\\\"#ecms\\\" onclick=\\\"window.open(\\\'[!--down.url--]\\\',\\\'\\\',\\\'width=300,height=300,resizable=yes\\\');\\\">[!--down.name--]</a> ]','页次：[!--thispage--]/[!--pagenum--]&nbsp;每页[!--lencord--]&nbsp;总数[!--num--]&nbsp;&nbsp;&nbsp;&nbsp;[!--pagelink--]&nbsp;&nbsp;&nbsp;&nbsp;转到:[!--options--]','<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>留言板 - Powered by EmpireCMS</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--bname--]\\\" />\r\n<meta name=\\\"description\\\" content=\\\"[!--bname--]\\\" />\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr valign=\\\"top\\\">\r\n<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n<tr>\r\n<td>现在的位置：<a href=../../../>首页</a>&nbsp;>&nbsp;[!--bname--]\r\n</td>\r\n</tr>\r\n</table><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n	<tr>\r\n		<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"2\\\">\r\n			<tr>\r\n				<td align=\\\"center\\\" bgcolor=\\\"#E1EFFB\\\"><strong>[!--bname--]</strong></td>\r\n			</tr>\r\n			<tr>\r\n				<td align=\\\"left\\\" valign=\\\"top\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#FFFFFF\\\">\r\n						<tr>\r\n							<td height=\\\"100%\\\" valign=\\\"top\\\" bgcolor=\\\"#FFFFFF\\\"> [!--empirenews.listtemp--]\r\n								<table width=\\\"92%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\" bgcolor=\\\"#F4F9FD\\\" class=\\\"tableborder\\\">\r\n										<tr class=\\\"header\\\">\r\n											<td width=\\\"55%\\\" height=\\\"23\\\">发布者: [!--name--] </td>\r\n											<td width=\\\"45%\\\">发布时间: [!--lytime--] </td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td height=\\\"23\\\" colspan=\\\"2\\\"><table border=\\\"0\\\" width=\\\"100%\\\" cellspacing=\\\"1\\\" cellpadding=\\\"8\\\" bgcolor=\\\'#cccccc\\\'>\r\n													<tr>\r\n														<td width=\\\'100%\\\' bgcolor=\\\'#FFFFFF\\\' style=\\\'word-break:break-all\\\'> [!--lytext--] </td>\r\n													</tr>\r\n												</table>\r\n												[!--start.regbook--]\r\n												<table width=\\\"100%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\">\r\n													<tr>\r\n														<td><img src=\\\"../../data/images/regb.gif\\\" width=\\\"18\\\" height=\\\"18\\\" /><strong><font color=\\\"#FF0000\\\">回复:</font></strong> [!--retext--] </td>\r\n													</tr>\r\n												</table>\r\n												[!--end.regbook--] </td>\r\n										</tr>\r\n									</table>\r\n								<br />\r\n								[!--empirenews.listtemp--]\r\n								<table width=\\\"92%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\">\r\n									<tr>\r\n										<td>分页: [!--listpage--]</td>\r\n									</tr>\r\n								</table>\r\n								<form action=\\\"../../enews/index.php\\\" method=\\\"post\\\" name=\\\"form1\\\" id=\\\"form1\\\">\r\n									<table width=\\\"92%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"4\\\" cellspacing=\\\"1\\\"class=\\\"tableborder\\\">\r\n										<tr class=\\\"header\\\">\r\n											<td colspan=\\\"2\\\" bgcolor=\\\"#F4F9FD\\\"><strong>请您留言:</strong></td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td width=\\\"20%\\\">姓名:</td>\r\n											<td width=\\\"722\\\" height=\\\"23\\\"><input name=\\\"name\\\" type=\\\"text\\\" id=\\\"name\\\" />\r\n												*</td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td>联系邮箱:</td>\r\n											<td height=\\\"23\\\"><input name=\\\"email\\\" type=\\\"text\\\" id=\\\"email\\\" />\r\n												*</td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td>联系电话:</td>\r\n											<td height=\\\"23\\\"><input name=\\\"mycall\\\" type=\\\"text\\\" id=\\\"mycall\\\" /></td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td>留言内容(*):</td>\r\n											<td height=\\\"23\\\"><textarea name=\\\"lytext\\\" cols=\\\"60\\\" rows=\\\"12\\\" id=\\\"lytext\\\"></textarea></td>\r\n										</tr>\r\n										<tr bgcolor=\\\"#FFFFFF\\\">\r\n											<td height=\\\"23\\\">&nbsp;</td>\r\n											<td height=\\\"23\\\"><input type=\\\"submit\\\" name=\\\"Submit3\\\" value=\\\"提交\\\" />\r\n											<input type=\\\"reset\\\" name=\\\"Submit22\\\" value=\\\"重置\\\" />\r\n											<input name=\\\"enews\\\" type=\\\"hidden\\\" id=\\\"enews\\\" value=\\\"AddGbook\\\" /></td>\r\n										</tr>\r\n									</table>\r\n								</form></td>\r\n						</tr>\r\n				</table></td>\r\n			</tr>\r\n		</table></td>\r\n	</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>','<html>\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>登陆</title>\r\n<LINK href=\\\"../../data/images/qcss.css\\\" rel=stylesheet>\r\n</head>\r\n<body bgcolor=\\\"#ededed\\\" topmargin=\\\"0\\\">\r\n<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\r\n  <form name=login method=post action=\\\"../../member/doaction.php\\\">\r\n    <input type=hidden name=enews value=login>\r\n    <input type=hidden name=prtype value=1>\r\n    <tr> \r\n      <td height=\\\"23\\\" align=\\\"center\\\">\r\n      <div align=\\\"left\\\">\r\n      用户名：<input name=\\\"username\\\" type=\\\"text\\\" size=\\\"8\\\">&nbsp;\r\n      密码：<input name=\\\"password\\\" type=\\\"password\\\" size=\\\"8\\\">\r\n      <select name=\\\"lifetime\\\" id=\\\"lifetime\\\">\r\n         <option value=\\\"0\\\">不保存</option>\r\n         <option value=\\\"3600\\\">一小时</option>\r\n         <option value=\\\"86400\\\">一天</option>\r\n         <option value=\\\"2592000\\\">一个月</option>\r\n         <option value=\\\"315360000\\\">永久</option>\r\n      </select>&nbsp;\r\n      <input type=\\\"submit\\\" name=\\\"Submit\\\" value=\\\"登陆\\\">&nbsp;\r\n      <input type=\\\"button\\\" name=\\\"Submit2\\\" value=\\\"注册\\\" onclick=\\\"window.open(\\\'../register/\\\');\\\">\r\n      </div>\r\n      </td>\r\n    </tr>\r\n  </form>\r\n</table>\r\n</body>\r\n</html>\r\n[!--empirenews.template--]\r\n<html>\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>登陆</title>\r\n<LINK href=\\\"../../data/images/qcss.css\\\" rel=stylesheet>\r\n</head>\r\n<body bgcolor=\\\"#ededed\\\" topmargin=\\\"0\\\">\r\n<table border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" width=\\\"100%\\\">\r\n    <tr>\r\n	<td height=\\\"23\\\" align=\\\"center\\\">\r\n	<div align=\\\"left\\\">\r\n		&raquo;&nbsp;<font color=red><b>[!--username--]</b></font>&nbsp;&nbsp;<a href=\\\"../my/\\\" target=\\\"_parent\\\">[!--groupname--]</a>&nbsp;[!--havemsg--]&nbsp;<a href=\\\"[!--news.url--]e/space/?userid=[!--userid--]\\\" target=_blank>我的空间</a>&nbsp;&nbsp;<a href=\\\"../msg/\\\" target=_blank>短信息</a>&nbsp;&nbsp;<a href=\\\"../fava/\\\" target=_blank>收藏夹</a>&nbsp;&nbsp;<a href=\\\"../cp/\\\" target=\\\"_parent\\\">控制面板</a>&nbsp;&nbsp;<a href=\\\"../../member/doaction.php?enews=exit&prtype=9\\\" onclick=\\\"return confirm(\\\'确认要退出?\\\');\\\">退出</a> \r\n	</div>\r\n	</td>\r\n    </tr>\r\n</table>\r\n</body>\r\n</html>',50,'Y-m-d H:i:s','<form name=login method=post action=\\\"[!--news.url--]e/member/doaction.php\\\">\r\n    <input type=hidden name=enews value=login>\r\n    <input type=hidden name=ecmsfrom value=9>\r\n    用户名：<input name=\\\"username\\\" type=\\\"text\\\" class=\\\"inputText\\\" size=\\\"16\\\" />&nbsp;\r\n    密码：<input name=\\\"password\\\" type=\\\"password\\\" class=\\\"inputText\\\" size=\\\"16\\\" />&nbsp;\r\n    <input type=\\\"submit\\\" name=\\\"Submit\\\" value=\\\"登陆\\\" class=\\\"inputSub\\\" />&nbsp;\r\n    <input type=\\\"button\\\" name=\\\"Submit2\\\" value=\\\"注册\\\" class=\\\"inputSub\\\" onclick=\\\"window.open(\\\'[!--news.url--]e/member/register/\\\');\\\" />\r\n</form>\r\n[!--empirenews.template--]\r\n&raquo;&nbsp;<font color=red><b>[!--username--]</b></font>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/my/\\\" target=\\\"_parent\\\">[!--groupname--]</a>&nbsp;[!--havemsg--]&nbsp;<a href=\\\"[!--news.url--]e/space/?userid=[!--userid--]\\\" target=_blank>我的空间</a>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/msg/\\\" target=_blank>短信息</a>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/fava/\\\" target=_blank>收藏夹</a>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/cp/\\\" target=\\\"_parent\\\">控制面板</a>&nbsp;&nbsp;<a href=\\\"[!--news.url--]e/member/doaction.php?enews=exit&ecmsfrom=9\\\" onclick=\\\"return confirm(\\\'确认要退出?\\\');\\\">退出</a>','<html>\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\">\r\n<title>[!--pagetitle--]</title>\r\n<meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\">\r\n<meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\">\r\n<link href=\\\"../../data/images/qcss.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\">\r\n</head>\r\n<body>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n<table align=\\\"center\\\" width=\\\"100%\\\">\r\n  <tr> \r\n    <td height=\\\"32\\\" align=center>\r\n	<a href=\\\"[!--down.url--]\\\" title=\\\"[!--title--] －[!--down.name--]\\\">\r\n	<img src=\\\"../../data/images/download.jpg\\\" border=0>\r\n	</a>\r\n	</td>\r\n  </tr>\r\n  <tr> \r\n    <td align=center>(点击下载)</td>\r\n  </tr>\r\n</table>\r\n<br>\r\n</body>\r\n</html>','[!--empirenews.listtemp--] \r\n      <table width=\\\"100%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"3\\\" cellspacing=\\\"1\\\" style=\\\"word-break:break-all; word-wrap:break-all;\\\">\r\n        <tr> \r\n          <td height=\\\"30\\\"><span class=\\\"name\\\">本站网友 [!--username--]</span> <font color=\\\"#666666\\\">ip:[!--plip--]</font></td>\r\n          <td><div align=\\\"right\\\"><font color=\\\"#666666\\\">[!--pltime--] 发表</font></div></td>\r\n        </tr>\r\n        <tr valign=\\\"top\\\"> \r\n          <td height=\\\"50\\\" colspan=\\\"2\\\" class=\\\"text\\\">[!--pltext--]</td>\r\n        </tr>\r\n        <tr> \r\n          <td height=\\\"30\\\">&nbsp;</td>\r\n          <td><div align=\\\"right\\\" class=\\\"re\\\"> \r\n              <a href=\\\"JavaScript:makeRequest(\\\'[!--news.url--]e/pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=1&doajax=1&ajaxarea=zcpldiv[!--plid--]\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">支持</a>[<span id=\\\"zcpldiv[!--plid--]\\\">[!--zcnum--]</span>]&nbsp; \r\n              <a href=\\\"JavaScript:makeRequest(\\\'[!--news.url--]e/pl/doaction.php?enews=DoForPl&plid=[!--plid--]&classid=[!--classid--]&id=[!--id--]&dopl=0&doajax=1&ajaxarea=fdpldiv[!--plid--]\\\',\\\'EchoReturnedText\\\',\\\'GET\\\',\\\'\\\');\\\">反对</a>[<span id=\\\"fdpldiv[!--plid--]\\\">[!--fdnum--]</span>]\r\n            </div></td>\r\n        </tr>\r\n      </table>\r\n      <table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"1\\\" cellpadding=\\\"3\\\">\r\n        <tr>\r\n          <td background=\\\"[!--news.url--]skin/default/images/plhrbg.gif\\\"></td>\r\n        </tr>\r\n      </table>\r\n[!--empirenews.listtemp--]','<!DOCTYPE html PUBLIC \\\"-//W3C//DTD XHTML 1.0 Transitional//EN\\\" \\\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\\\">\r\n<html xmlns=\\\"http://www.w3.org/1999/xhtml\\\">\r\n<head>\r\n<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=utf-8\\\" />\r\n<title>搜索 - Powered by EmpireCMS</title>\r\n<link href=\\\"[!--news.url--]skin/default/css/style.css\\\" rel=\\\"stylesheet\\\" type=\\\"text/css\\\" />\r\n<script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]skin/default/js/tabs.js\\\"></script>\r\n<style type=\\\"text/css\\\">\r\n<!--\r\n.r {\r\ndisplay:inline;\r\nfont-weight:normal;\r\nmargin:0;\r\nfont-size:16px;\r\nmargin-top:10px;\r\n}\r\n.a{color:green}\r\n.fl{color:#77c}\r\n-->\r\n</style>\r\n</head>\r\n<body class=\\\"listpage\\\">\r\n[!--temp.dtheader--]\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n	<tr valign=\\\"top\\\">\r\n		<td class=\\\"list_content\\\"><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"position\\\">\r\n				<tr>\r\n					<td>现在的位置：<a href=\\\"[!--news.url--]\\\">首页</a>&nbsp;>&nbsp;搜索</td>\r\n				</tr>\r\n			</table>\r\n			<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"box\\\">\r\n				<tr>\r\n					<td><form action=\\\'index.php\\\' method=\\\"GET\\\" name=\\\"search_news\\\" id=\\\"search_news\\\">\r\n							<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"6\\\" cellpadding=\\\"0\\\">\r\n								<tr>\r\n									<td height=\\\"32\\\">关键字：\r\n										<input name=\\\"keyboard\\\" type=\\\"text\\\" id=\\\"keyboard\\\" value=\\\"[!--keyboard--]\\\" size=\\\"42\\\" />\r\n                    <select name=\\\"field\\\" id=\\\"field\\\">\r\n                      <option value=\\\"1\\\">全文</option>\r\n                      <option value=\\\"2\\\">标题</option>\r\n                      <option value=\\\"3\\\">内容</option>\r\n                    </select> \r\n                    <input type=\\\"submit\\\" name=\\\"Submit22\\\" value=\\\"搜索\\\" />\r\n                    <font color=\\\"#666666\\\">(多个关键字请用&quot;空格&quot;隔开)</font> </td>\r\n								</tr>\r\n							</table>\r\n						</form>\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"6\\\">\r\n							<tr>\r\n								<td>系统搜索到约有<strong>[!--num--]</strong>项符合<strong>[!--keyboard--]</strong>的查询结果</td>\r\n							</tr>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<h2 class=\\\"r\\\"><span>[!--no.num--].</span> <a class=\\\"l\\\" href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\">[!--title--]</a></h2>\r\n						<table width=\\\"80%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n							<tbody>\r\n							<tr>\r\n								<td>[!--smalltext--]</td>\r\n							</tr>\r\n							<tr>\r\n								<td><span class=\\\"a\\\">[!--titleurl--] - [!--newstime--]</span></td>\r\n							</tr>\r\n							<tr>\r\n								<td>&nbsp;</td>\r\n							</tr>\r\n							</tbody>\r\n						</table>\r\n						[!--empirenews.listtemp--]\r\n						<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"list_page\\\">\r\n							<tr>\r\n								<td>[!--listpage--]</td>\r\n							</tr>\r\n						</table></td>\r\n				</tr>\r\n			</table></td>\r\n	</tr>\r\n</table>\r\n[!--temp.footer--]\r\n</body>\r\n</html>',120,'Y-m-d H:i:s');
/*!40000 ALTER TABLE `gc_enewspubtemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspubvar`
--

DROP TABLE IF EXISTS `gc_enewspubvar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspubvar` (
  `varid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `myvar` varchar(60) NOT NULL DEFAULT '',
  `varname` varchar(20) NOT NULL DEFAULT '',
  `varvalue` text NOT NULL,
  `varsay` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tocache` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`varid`),
  UNIQUE KEY `varname` (`varname`),
  KEY `classid` (`classid`),
  KEY `tocache` (`tocache`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspubvar`
--

LOCK TABLES `gc_enewspubvar` WRITE;
/*!40000 ALTER TABLE `gc_enewspubvar` DISABLE KEYS */;
INSERT INTO `gc_enewspubvar` VALUES (1,'search_title','搜索标题','2019降准时间深色二','',0,0,1),(2,'law_email','法律邮箱','ougao@xuanxun.comqqq','',0,0,1);
/*!40000 ALTER TABLE `gc_enewspubvar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewspubvarclass`
--

DROP TABLE IF EXISTS `gc_enewspubvarclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewspubvarclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  `classsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewspubvarclass`
--

LOCK TABLES `gc_enewspubvarclass` WRITE;
/*!40000 ALTER TABLE `gc_enewspubvarclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewspubvarclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsqmsg`
--

DROP TABLE IF EXISTS `gc_enewsqmsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsqmsg` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `msgtext` text NOT NULL,
  `haveread` tinyint(1) NOT NULL DEFAULT '0',
  `msgtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `to_username` varchar(30) NOT NULL DEFAULT '',
  `from_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `from_username` varchar(30) NOT NULL DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `issys` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `to_username` (`to_username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsqmsg`
--

LOCK TABLES `gc_enewsqmsg` WRITE;
/*!40000 ALTER TABLE `gc_enewsqmsg` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsqmsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewssearch`
--

DROP TABLE IF EXISTS `gc_enewssearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewssearch` (
  `searchid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `searchtime` int(10) unsigned NOT NULL DEFAULT '0',
  `searchclass` varchar(255) NOT NULL DEFAULT '',
  `result_num` int(10) unsigned NOT NULL DEFAULT '0',
  `searchip` varchar(20) NOT NULL DEFAULT '',
  `classid` varchar(255) NOT NULL DEFAULT '',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `orderby` varchar(30) NOT NULL DEFAULT '0',
  `myorder` tinyint(1) NOT NULL DEFAULT '0',
  `checkpass` varchar(32) NOT NULL DEFAULT '',
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `iskey` tinyint(1) NOT NULL DEFAULT '0',
  `andsql` text NOT NULL,
  `trueclassid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`searchid`),
  KEY `checkpass` (`checkpass`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewssearch`
--

LOCK TABLES `gc_enewssearch` WRITE;
/*!40000 ALTER TABLE `gc_enewssearch` DISABLE KEYS */;
INSERT INTO `gc_enewssearch` VALUES (1,'持有',1558406206,'title',31,'127.0.0.1','',1,'newstime',0,'7b25a7384e22bde0750520d9e0a2aeb5','news',0,0,' and ((title LIKE \'%持有%\'))',0);
/*!40000 ALTER TABLE `gc_enewssearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewssearchall`
--

DROP TABLE IF EXISTS `gc_enewssearchall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewssearchall` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` text NOT NULL,
  `infotime` int(10) unsigned NOT NULL DEFAULT '0',
  `infotext` mediumtext NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `id` (`id`,`classid`,`infotime`),
  FULLTEXT KEY `title` (`title`,`infotext`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewssearchall`
--

LOCK TABLES `gc_enewssearchall` WRITE;
/*!40000 ALTER TABLE `gc_enewssearchall` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewssearchall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewssearchall_load`
--

DROP TABLE IF EXISTS `gc_enewssearchall_load`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewssearchall_load` (
  `lid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `titlefield` varchar(30) NOT NULL DEFAULT '',
  `infotextfield` varchar(30) NOT NULL DEFAULT '',
  `smalltextfield` varchar(30) NOT NULL DEFAULT '',
  `loadnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewssearchall_load`
--

LOCK TABLES `gc_enewssearchall_load` WRITE;
/*!40000 ALTER TABLE `gc_enewssearchall_load` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewssearchall_load` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewssearchtemp`
--

DROP TABLE IF EXISTS `gc_enewssearchtemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewssearchtemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(6) NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tempid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewssearchtemp`
--

LOCK TABLES `gc_enewssearchtemp` WRITE;
/*!40000 ALTER TABLE `gc_enewssearchtemp` DISABLE KEYS */;
INSERT INTO `gc_enewssearchtemp` VALUES (1,'默认搜索模板','<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--keyboard--] 搜索结果</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/zhishu.css\\\">\r\n    <script type=\\\"text/javascript\\\">\r\n        var newsurl=\\\'[!--news.url--]\\\';\r\n    </script>\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\"><?=$public_r[\\\'sitename\\\']?> > [!--keyboard--] 搜索结果</div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"AdtImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea1.js\\\"></script></div>\r\n            <div class=\\\"conter\\\">\r\n                <div class=\\\"contL\\\">\r\n                    <div class=\\\"newFlash box\\\">\r\n                        <span>快讯</span>\r\n                        <div class=\\\"newFlashList boxL\\\">\r\n                            [e:loop={\\\"select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort\\\",0,24,0}]\r\n                                <a href=\\\"<?=$bqr[\\\'url\\\']?>\\\"><?=$bqr[\\\'fname\\\']?></a>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                    <div class=\\\"newList\\\">\r\n                    </div>\r\n                    <div class=\\\"more_list_page\\\" start=\\\"0\\\" cid=\\\"<?=$GLOBALS[\\\'navclassid\\\']?>\\\" type=\\\"s\\\" key=\\\"[!--keyboard--]\\\" style=\\\"display:none\\\">\r\n\r\n                    </div>\r\n                </div>\r\n                [!--temp.sidebar--]\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <script src=\\\"[!--news.url--]skin/stock/js/jquery-3.4.1.min.js\\\"></script>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/pIndex.js\\\"></script>\r\n</body>\r\n\r\n</html>',180,1,'<h2 class=\\\"r\\\"><span>[!--no.num--].</span> <a class=\\\"l\\\" href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\">[!--title--]</a></h2>\r\n<table width=\\\"80%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>[!--smalltext--]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span class=\\\"a\\\">[!--titleurl--] - [!--newstime--]</span> - <a class=\\\"fl\\\" href=\\\"[!--this.classlink--]\\\" target=\\\"_blank\\\">[!--this.classname--]</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',0,1,'Y-m-d',0,0,0);
/*!40000 ALTER TABLE `gc_enewssearchtemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewssearchtempclass`
--

DROP TABLE IF EXISTS `gc_enewssearchtempclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewssearchtempclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewssearchtempclass`
--

LOCK TABLES `gc_enewssearchtempclass` WRITE;
/*!40000 ALTER TABLE `gc_enewssearchtempclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewssearchtempclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsshop_address`
--

DROP TABLE IF EXISTS `gc_enewsshop_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsshop_address` (
  `addressid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `addressname` char(50) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `truename` char(20) NOT NULL DEFAULT '',
  `oicq` char(20) NOT NULL DEFAULT '',
  `msn` char(60) NOT NULL DEFAULT '',
  `email` char(60) NOT NULL DEFAULT '',
  `address` char(255) NOT NULL DEFAULT '',
  `zip` char(8) NOT NULL DEFAULT '',
  `mycall` char(30) NOT NULL DEFAULT '',
  `phone` char(30) NOT NULL DEFAULT '',
  `signbuild` char(100) NOT NULL DEFAULT '',
  `besttime` char(120) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`addressid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsshop_address`
--

LOCK TABLES `gc_enewsshop_address` WRITE;
/*!40000 ALTER TABLE `gc_enewsshop_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsshop_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsshop_ddlog`
--

DROP TABLE IF EXISTS `gc_enewsshop_ddlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsshop_ddlog` (
  `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ddid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ecms` varchar(30) NOT NULL DEFAULT '',
  `bz` varchar(255) NOT NULL DEFAULT '',
  `addbz` varchar(255) NOT NULL DEFAULT '',
  `logtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`logid`),
  KEY `ddid` (`ddid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsshop_ddlog`
--

LOCK TABLES `gc_enewsshop_ddlog` WRITE;
/*!40000 ALTER TABLE `gc_enewsshop_ddlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsshop_ddlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsshop_precode`
--

DROP TABLE IF EXISTS `gc_enewsshop_precode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsshop_precode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prename` varchar(30) NOT NULL DEFAULT '',
  `precode` varchar(36) NOT NULL DEFAULT '',
  `premoney` int(10) unsigned NOT NULL DEFAULT '0',
  `pretype` tinyint(1) NOT NULL DEFAULT '0',
  `reuse` tinyint(1) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` varchar(255) NOT NULL DEFAULT '',
  `classid` text NOT NULL,
  `musttotal` int(10) unsigned NOT NULL DEFAULT '0',
  `usenum` int(11) NOT NULL DEFAULT '0',
  `haveusenum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `precode` (`precode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsshop_precode`
--

LOCK TABLES `gc_enewsshop_precode` WRITE;
/*!40000 ALTER TABLE `gc_enewsshop_precode` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsshop_precode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsshop_set`
--

DROP TABLE IF EXISTS `gc_enewsshop_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsshop_set` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shopddgroupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `buycarnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `havefp` tinyint(1) NOT NULL DEFAULT '0',
  `fpnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fpname` text NOT NULL,
  `ddmust` text NOT NULL,
  `haveatt` tinyint(1) NOT NULL DEFAULT '0',
  `shoptbs` varchar(255) NOT NULL DEFAULT '',
  `buystep` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shoppsmust` tinyint(1) NOT NULL DEFAULT '0',
  `shoppayfsmust` tinyint(1) NOT NULL DEFAULT '0',
  `dddeltime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cutnumtype` tinyint(1) NOT NULL DEFAULT '0',
  `cutnumtime` int(10) unsigned NOT NULL DEFAULT '0',
  `freepstotal` int(10) unsigned NOT NULL DEFAULT '0',
  `singlenum` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsshop_set`
--

LOCK TABLES `gc_enewsshop_set` WRITE;
/*!40000 ALTER TABLE `gc_enewsshop_set` DISABLE KEYS */;
INSERT INTO `gc_enewsshop_set` VALUES (1,0,0,0,10,'商品名称\r\n办公用品\r\n日用品',',truename,mycall,address,',0,',shop,',0,1,1,0,0,120,0,0);
/*!40000 ALTER TABLE `gc_enewsshop_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsshopdd`
--

DROP TABLE IF EXISTS `gc_enewsshopdd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsshopdd` (
  `ddid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ddno` varchar(30) NOT NULL DEFAULT '',
  `ddtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `outproduct` tinyint(1) NOT NULL DEFAULT '0',
  `haveprice` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `oicq` varchar(25) NOT NULL DEFAULT '',
  `msn` varchar(120) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  `mycall` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(8) NOT NULL DEFAULT '',
  `psid` smallint(6) NOT NULL DEFAULT '0',
  `psname` varchar(60) NOT NULL DEFAULT '',
  `pstotal` float(11,2) NOT NULL DEFAULT '0.00',
  `alltotal` float(11,2) NOT NULL DEFAULT '0.00',
  `payfsid` smallint(6) NOT NULL DEFAULT '0',
  `payfsname` varchar(60) NOT NULL DEFAULT '',
  `payby` tinyint(4) NOT NULL DEFAULT '0',
  `alltotalfen` float(11,2) NOT NULL DEFAULT '0.00',
  `fp` tinyint(1) NOT NULL DEFAULT '0',
  `fptt` varchar(255) NOT NULL DEFAULT '',
  `fptotal` float(11,2) NOT NULL DEFAULT '0.00',
  `fpname` varchar(50) NOT NULL DEFAULT '',
  `userip` varchar(20) NOT NULL DEFAULT '',
  `signbuild` varchar(100) NOT NULL DEFAULT '',
  `besttime` varchar(120) NOT NULL DEFAULT '',
  `pretotal` float(11,2) NOT NULL DEFAULT '0.00',
  `ddtruetime` int(10) unsigned NOT NULL DEFAULT '0',
  `havecutnum` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ddid`),
  KEY `ddno` (`ddno`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsshopdd`
--

LOCK TABLES `gc_enewsshopdd` WRITE;
/*!40000 ALTER TABLE `gc_enewsshopdd` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsshopdd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsshopdd_add`
--

DROP TABLE IF EXISTS `gc_enewsshopdd_add`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsshopdd_add` (
  `ddid` int(10) unsigned NOT NULL DEFAULT '0',
  `buycar` mediumtext NOT NULL,
  `bz` text NOT NULL,
  `retext` text NOT NULL,
  PRIMARY KEY (`ddid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsshopdd_add`
--

LOCK TABLES `gc_enewsshopdd_add` WRITE;
/*!40000 ALTER TABLE `gc_enewsshopdd_add` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsshopdd_add` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsshoppayfs`
--

DROP TABLE IF EXISTS `gc_enewsshoppayfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsshoppayfs` (
  `payid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `payname` varchar(60) NOT NULL DEFAULT '',
  `payurl` varchar(255) NOT NULL DEFAULT '',
  `paysay` text NOT NULL,
  `userpay` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` tinyint(1) NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`payid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsshoppayfs`
--

LOCK TABLES `gc_enewsshoppayfs` WRITE;
/*!40000 ALTER TABLE `gc_enewsshoppayfs` DISABLE KEYS */;
INSERT INTO `gc_enewsshoppayfs` VALUES (1,'邮政汇款','','邮政汇款地址:******',0,0,0,0),(2,'银行转帐','','银行转帐帐号:******',0,0,0,0),(3,'网银支付','/gucheng/e/payapi/ShopPay.php?paytype=alipay','<p>网银支付</p>',0,0,0,1),(4,'预付款支付','','预付款支付',1,0,0,0),(5,'货到付款(或上门收款)','','货到付款(或上门收款)说明',0,0,0,0),(6,'点数购买','','点数购买',0,1,0,0);
/*!40000 ALTER TABLE `gc_enewsshoppayfs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsshopps`
--

DROP TABLE IF EXISTS `gc_enewsshopps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsshopps` (
  `pid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(60) NOT NULL DEFAULT '',
  `price` float(11,2) NOT NULL DEFAULT '0.00',
  `otherprice` text NOT NULL,
  `psay` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsshopps`
--

LOCK TABLES `gc_enewsshopps` WRITE;
/*!40000 ALTER TABLE `gc_enewsshopps` DISABLE KEYS */;
INSERT INTO `gc_enewsshopps` VALUES (1,'送货上门',10.00,'','送货上门',0,0),(2,'特快专递（EMS）',25.00,'','特快专递（EMS）',0,0),(3,'普通邮递',5.00,'','普通邮递',0,1),(4,'邮局快邮',12.00,'','邮局快邮',0,0);
/*!40000 ALTER TABLE `gc_enewsshopps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewssp`
--

DROP TABLE IF EXISTS `gc_enewssp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewssp` (
  `spid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spname` varchar(30) NOT NULL DEFAULT '',
  `varname` varchar(30) NOT NULL DEFAULT '',
  `sppic` varchar(255) NOT NULL DEFAULT '',
  `spsay` varchar(255) NOT NULL DEFAULT '',
  `sptype` tinyint(1) NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `sptime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `cladd` tinyint(1) NOT NULL DEFAULT '0',
  `refile` tinyint(1) NOT NULL DEFAULT '0',
  `spfile` varchar(255) NOT NULL DEFAULT '',
  `spfileline` smallint(6) NOT NULL DEFAULT '0',
  `spfilesub` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`spid`),
  UNIQUE KEY `varname` (`varname`),
  KEY `refile` (`refile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewssp`
--

LOCK TABLES `gc_enewssp` WRITE;
/*!40000 ALTER TABLE `gc_enewssp` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewssp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewssp_1`
--

DROP TABLE IF EXISTS `gc_enewssp_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewssp_1` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `bigpic` varchar(200) NOT NULL DEFAULT '',
  `titleurl` varchar(200) NOT NULL DEFAULT '',
  `smalltext` varchar(255) NOT NULL DEFAULT '',
  `titlefont` varchar(20) NOT NULL DEFAULT '',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `titlepre` varchar(30) NOT NULL DEFAULT '',
  `titlenext` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`),
  KEY `spid` (`spid`),
  KEY `newstime` (`newstime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewssp_1`
--

LOCK TABLES `gc_enewssp_1` WRITE;
/*!40000 ALTER TABLE `gc_enewssp_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewssp_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewssp_2`
--

DROP TABLE IF EXISTS `gc_enewssp_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewssp_2` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `spid` (`spid`),
  KEY `newstime` (`newstime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewssp_2`
--

LOCK TABLES `gc_enewssp_2` WRITE;
/*!40000 ALTER TABLE `gc_enewssp_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewssp_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewssp_3`
--

DROP TABLE IF EXISTS `gc_enewssp_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewssp_3` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `sptext` mediumtext NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `spid` (`spid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewssp_3`
--

LOCK TABLES `gc_enewssp_3` WRITE;
/*!40000 ALTER TABLE `gc_enewssp_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewssp_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewssp_3_bak`
--

DROP TABLE IF EXISTS `gc_enewssp_3_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewssp_3_bak` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL DEFAULT '0',
  `spid` int(10) unsigned NOT NULL DEFAULT '0',
  `sptext` mediumtext NOT NULL,
  `lastuser` varchar(30) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  KEY `sid` (`sid`),
  KEY `spid` (`spid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewssp_3_bak`
--

LOCK TABLES `gc_enewssp_3_bak` WRITE;
/*!40000 ALTER TABLE `gc_enewssp_3_bak` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewssp_3_bak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsspacestyle`
--

DROP TABLE IF EXISTS `gc_enewsspacestyle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsspacestyle` (
  `styleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `stylename` varchar(30) NOT NULL DEFAULT '',
  `stylepic` varchar(255) NOT NULL DEFAULT '',
  `stylesay` varchar(255) NOT NULL DEFAULT '',
  `stylepath` varchar(30) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `membergroup` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsspacestyle`
--

LOCK TABLES `gc_enewsspacestyle` WRITE;
/*!40000 ALTER TABLE `gc_enewsspacestyle` DISABLE KEYS */;
INSERT INTO `gc_enewsspacestyle` VALUES (1,'默认个人空间模板','','默认个人空间模板','default',1,',1,2,'),(2,'默认企业空间模板','','默认企业空间模板','comdefault',0,',3,4,');
/*!40000 ALTER TABLE `gc_enewsspacestyle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsspclass`
--

DROP TABLE IF EXISTS `gc_enewsspclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsspclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  `classsay` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsspclass`
--

LOCK TABLES `gc_enewsspclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsspclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsspclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewssql`
--

DROP TABLE IF EXISTS `gc_enewssql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewssql` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sqlname` varchar(60) NOT NULL DEFAULT '',
  `sqltext` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewssql`
--

LOCK TABLES `gc_enewssql` WRITE;
/*!40000 ALTER TABLE `gc_enewssql` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewssql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewstable`
--

DROP TABLE IF EXISTS `gc_enewstable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewstable` (
  `tid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tbname` varchar(60) NOT NULL DEFAULT '',
  `tname` varchar(60) NOT NULL DEFAULT '',
  `tsay` text NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `datatbs` text NOT NULL,
  `deftb` varchar(6) NOT NULL DEFAULT '',
  `yhid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `intb` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewstable`
--

LOCK TABLES `gc_enewstable` WRITE;
/*!40000 ALTER TABLE `gc_enewstable` DISABLE KEYS */;
INSERT INTO `gc_enewstable` VALUES (1,'news','新闻系统数据表','新闻系统数据表',1,',1,','1',0,1,0),(2,'download','下载系统数据表','下载系统数据表',0,',1,','1',0,2,0),(3,'photo','图片系统数据表','图片系统数据表',0,',1,','1',0,3,0),(4,'flash','FLASH系统数据表','FLASH系统数据表',0,',1,','1',0,4,0),(5,'movie','电影系统数据表','电影系统数据表',0,',1,','1',0,5,0),(6,'shop','商城系统数据表','商城系统数据表',0,',1,','1',0,6,0),(7,'article','文章系统数据表','文章系统数据表(内容存文本)',0,',1,','1',0,7,0),(8,'info','分类信息数据表','分类信息数据表',0,',1,','1',0,8,0);
/*!40000 ALTER TABLE `gc_enewstable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewstags`
--

DROP TABLE IF EXISTS `gc_enewstags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewstags` (
  `tagid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagname` char(20) NOT NULL DEFAULT '',
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tagtitle` char(60) NOT NULL DEFAULT '',
  `tagkey` char(100) NOT NULL DEFAULT '',
  `tagdes` char(255) NOT NULL DEFAULT '',
  `fclast` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tagname` (`tagname`),
  KEY `isgood` (`isgood`),
  KEY `cid` (`cid`),
  KEY `num` (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewstags`
--

LOCK TABLES `gc_enewstags` WRITE;
/*!40000 ALTER TABLE `gc_enewstags` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewstags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewstagsclass`
--

DROP TABLE IF EXISTS `gc_enewstagsclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewstagsclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewstagsclass`
--

LOCK TABLES `gc_enewstagsclass` WRITE;
/*!40000 ALTER TABLE `gc_enewstagsclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewstagsclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewstagsdata`
--

DROP TABLE IF EXISTS `gc_enewstagsdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewstagsdata` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `tagid` (`tagid`),
  KEY `classid` (`classid`),
  KEY `id` (`id`),
  KEY `newstime` (`newstime`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewstagsdata`
--

LOCK TABLES `gc_enewstagsdata` WRITE;
/*!40000 ALTER TABLE `gc_enewstagsdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewstagsdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewstask`
--

DROP TABLE IF EXISTS `gc_enewstask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewstask` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `taskname` varchar(60) NOT NULL DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `isopen` tinyint(1) NOT NULL DEFAULT '0',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `lastdo` int(10) unsigned NOT NULL DEFAULT '0',
  `doweek` char(1) NOT NULL DEFAULT '0',
  `doday` char(2) NOT NULL DEFAULT '0',
  `dohour` char(2) NOT NULL DEFAULT '0',
  `dominute` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewstask`
--

LOCK TABLES `gc_enewstask` WRITE;
/*!40000 ALTER TABLE `gc_enewstask` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewstask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewstempbak`
--

DROP TABLE IF EXISTS `gc_enewstempbak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewstempbak` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  `subnews` smallint(6) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `listvar` text NOT NULL,
  `rownum` smallint(6) NOT NULL DEFAULT '0',
  `modid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showdate` varchar(50) NOT NULL DEFAULT '',
  `subtitle` smallint(6) NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `docode` tinyint(1) NOT NULL DEFAULT '0',
  `baktime` int(10) unsigned NOT NULL DEFAULT '0',
  `temptype` varchar(30) NOT NULL DEFAULT '',
  `gid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lastuser` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`bid`),
  KEY `tempid` (`tempid`),
  KEY `temptype` (`temptype`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewstempbak`
--

LOCK TABLES `gc_enewstempbak` WRITE;
/*!40000 ALTER TABLE `gc_enewstempbak` DISABLE KEYS */;
INSERT INTO `gc_enewstempbak` VALUES (1,12,'栏目tabs导航','[!--empirenews.listtemp--]<!--list.var1-->[!--empirenews.listtemp--]',0,0,'<li><a href=\\\"[!--classurl--]\\\">[!--classname--]</a></li>',1,1,'Y-m-d H:i:s',0,0,0,1558103937,'bqtemp',1,'admin'),(2,8,'menu',' <div class=\\\"navCont\\\">\r\n            <div class=\\\"navContBox clearfix\\\">\r\n                <div class=\\\"logo\\\"><a href=\\\"[!--news.url--]\\\"><img src=\\\"[!--news.url--]skin/stock/images/logo.png\\\"></a></div>\r\n                <div class=\\\"menu\\\">\r\n                    <ul>\r\n                        <li>\r\n                            <a href=\\\"[!--news.url--]\\\">首页</a>\r\n                        </li>\r\n                         [showclasstemp]\\\'0\\\',12,0,0[/showclasstemp]\r\n                    </ul>\r\n                </div>\r\n                <div class=\\\"sec\\\"><input type=\\\"text\\\" placeholder=\\\"热搜：<?=$public_r[\\\'add_search_title\\\']?>\\\"><img src=\\\"[!--news.url--]skin/stock/images/sec.png\\\"></div>\r\n            </div>\r\n        </div>',0,0,'菜单导航',0,0,'',0,0,0,1558144539,'tempvar',1,'admin'),(52,1,'默认新闻列表模板','<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/zhishu.css\\\">\r\n    <script type=\\\"text/javascript\\\">\r\n        var newsurl=\\\'[!--news.url--]\\\';\r\n    </script>\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\"><?=$public_r[\\\'sitename\\\']?> > <a href=\\\"<?=sys_ReturnBqClassname(array(\\\'classid\\\'=>$GLOBALS[\\\'navclassid\\\']),9)?>\\\">[!--class.name--]</a></div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"AdtImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea1.js\\\"></script></div>\r\n            <div class=\\\"conter\\\">\r\n                <div class=\\\"contL\\\">\r\n                    <div class=\\\"newFlash box\\\">\r\n                        <span>快讯</span>\r\n                        <div class=\\\"newFlashList boxL\\\">\r\n                            [e:loop={\\\"select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort\\\",0,24,0}]\r\n                                <a href=\\\"<?=$bqr[\\\'url\\\']?>\\\"><?=$bqr[\\\'fname\\\']?></a>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                    <div class=\\\"newList\\\">\r\n                    </div>\r\n                    <div class=\\\"more_list_page\\\" start=\\\"0\\\" cid=\\\"<?=$GLOBALS[\\\'navclassid\\\']?>\\\" style=\\\"display:none\\\">\r\n\r\n                    </div>\r\n                </div>\r\n                [!--temp.sidebar--]\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <script src=\\\"[!--news.url--]skin/stock/js/jquery-3.4.1.min.js\\\"></script>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/pIndex.js\\\"></script>\r\n</body>\r\n\r\n</html>',0,0,'<li><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a> <span>[!--newstime--]</span></li>',0,1,'Y-m-d',0,0,0,1558359835,'listtemp',1,'admin'),(32,9,'sidebar','<div class=\\\"contR\\\">\r\n                    <!--<div class=\\\"echarts box\\\">\r\n                        <ul id=\\\"title\\\" class=\\\"title boxL\\\">\r\n                            <li class=\\\"ho\\\"><img src=\\\"./images/echarts.jpg\\\"></li>\r\n                            <li><img src=\\\"./images/echarts.jpg\\\"></li>\r\n                            <li><img src=\\\"./images/echarts.jpg\\\"></li>\r\n                        </ul>\r\n                        <div id=\\\"wrap\\\" class=\\\"wrap\\\">\r\n                            <div class=\\\"active\\\">上证指数</div>\r\n                            <div>深证指数</div>\r\n                            <div>创业指数</div>\r\n                        </div>\r\n                    </div>-->\r\n\r\n                    <div class=\\\"hqpic\\\"><div class=\\\"hq_data\\\" id=\\\"hq_data\\\">\r\n<b>2882.3<em>-73.41&nbsp;&nbsp;-2.48%</em></b>\r\n<a href=\\\"http://hq.gucheng.com/SH000001/\\\" id=\\\"hqCanvas\\\" target=\\\"_blank\\\"></a>\r\n</div>\r\n<ul id=\\\"stockUl\\\"><li><a href=\\\"http://hq.gucheng.com/SH000001/\\\" target=\\\"_blank\\\" class=\\\"on\\\">上证指数</a></li><li><a href=\\\"http://hq.gucheng.com/SZ399001/\\\" target=\\\"_blank\\\">深证成指</a></li><li><a href=\\\"http://hq.gucheng.com/SZ399006/\\\" target=\\\"_blank\\\">创业板指</a></li></ul>\r\n</div>\r\n\r\n\r\n\r\n                    <div class=\\\"recommend\\\">\r\n                        <div class=\\\"recommendTitle\\\">推荐阅读</div>\r\n                        [e:loop={\\\"select title,titleurl,smalltext from {$dbtbpre}ecms_news order by isgood desc,newstime desc limit 6\\\",0,24,0}]\r\n                            <div class=\\\"reListItem\\\">\r\n                                <div class=\\\"reListItmeTitle\\\"><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></div>\r\n                                <div class=\\\"reListCont\\\">\r\n                                    <?=esub($bqr[\\\'smalltext\\\'],80)?>\r\n                                </div>\r\n                            </div>\r\n                        [/e:loop]\r\n                    </div>\r\n                    <div class=\\\"focusing\\\">\r\n                        <div class=\\\"bigImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea2.js\\\"></script></div>\r\n\r\n                        [e:loop={\\\"select title,titleurl,titlepic,newstime,titlepic_alt from {$dbtbpre}ecms_news order by isgood desc,newstime desc limit 3\\\",0,24,0}]\r\n                             <div class=\\\"focusingItem box\\\">\r\n                            <div class=\\\"focusingImg imgAll\\\"><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"135px\\\" height=\\\"75px\\\" alt=\\\"<?=$bqr[\\\'titlepic_alt\\\']?>\\\"></a></div>\r\n                            <div class=\\\"focusingCont boxL\\\">\r\n                                <p><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></p>\r\n                                <span><?=date(\\\'Y-m-d H:i\\\',$bqr[\\\'newstime\\\'])?></span>\r\n                            </div>\r\n                        </div>\r\n                        [/e:loop]\r\n                    </div>\r\n                    <div class=\\\"emailUrl box\\\">\r\n                        <p class=\\\"boxL emailImg\\\"><?=$public_r[\\\'add_law_email\\\']?></p>\r\n                        <span><a href=\\\"javascript:;\\\">法律声明</a></span>\r\n                    </div>\r\n                    <div class=\\\"recommend\\\">\r\n                        <div class=\\\"recommendTitle\\\">友情链接</div>\r\n                        <div class=\\\"fdsLink clearfix\\\">\r\n                            <ul>\r\n                                [e:loop={\\\"select lname,lurl from {$dbtbpre}enewslink order by myorder\\\",0,24,0}]\r\n                                    <li><a href=\\\"<?=$bqr[\\\'lurl\\\']?>\\\"><?=$bqr[\\\'lname\\\']?></a></li>\r\n                                [/e:loop]\r\n                            </ul>\r\n                        </div>\r\n                    </div>\r\n\r\n\r\n                </div>',0,0,'侧边栏',0,0,'',0,0,0,1558321761,'tempvar',1,'admin'),(41,9,'sidebar','<div class=\\\"contR\\\">\r\n                    <!--<div class=\\\"echarts box\\\">\r\n                        <ul id=\\\"title\\\" class=\\\"title boxL\\\">\r\n                            <li class=\\\"ho\\\"><img src=\\\"./images/echarts.jpg\\\"></li>\r\n                            <li><img src=\\\"./images/echarts.jpg\\\"></li>\r\n                            <li><img src=\\\"./images/echarts.jpg\\\"></li>\r\n                        </ul>\r\n                        <div id=\\\"wrap\\\" class=\\\"wrap\\\">\r\n                            <div class=\\\"active\\\">上证指数</div>\r\n                            <div>深证指数</div>\r\n                            <div>创业指数</div>\r\n                        </div>\r\n                    </div>-->\r\n\r\n                    <div class=\\\"hqpic\\\"><div class=\\\"hq_data\\\" id=\\\"hq_data\\\">\r\n<b>2882.3<em>-73.41&nbsp;&nbsp;-2.48%</em></b>\r\n<a href=\\\"http://hq.gucheng.com/SH000001/\\\" id=\\\"hqCanvas\\\" target=\\\"_blank\\\"></a>\r\n</div>\r\n<ul id=\\\"stockUl\\\"><li><a href=\\\"http://hq.gucheng.com/SH000001/\\\" target=\\\"_blank\\\" class=\\\"on\\\">上证指数</a></li><li><a href=\\\"http://hq.gucheng.com/SZ399001/\\\" target=\\\"_blank\\\">深证成指</a></li><li><a href=\\\"http://hq.gucheng.com/SZ399006/\\\" target=\\\"_blank\\\">创业板指</a></li></ul>\r\n</div>\r\n\r\n\r\n\r\n                    <div class=\\\"recommend\\\">\r\n                        <div class=\\\"recommendTitle\\\">推荐阅读</div>\r\n                        [e:loop={\\\"select title,titleurl,smalltext from {$dbtbpre}ecms_news where isgood=1 order by newstime desc limit 6\\\",0,24,0}]\r\n                            <div class=\\\"reListItem\\\">\r\n                                <div class=\\\"reListItmeTitle\\\"><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></div>\r\n                                <div class=\\\"reListCont\\\">\r\n                                    <?=esub($bqr[\\\'smalltext\\\'],80)?>\r\n                                </div>\r\n                            </div>\r\n                        [/e:loop]\r\n                    </div>\r\n                    <div class=\\\"focusing\\\">\r\n                        <div class=\\\"bigImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea2.js\\\"></script></div>\r\n\r\n                        [e:loop={\\\"select title,titleurl,titlepic,newstime,titlepic_alt from {$dbtbpre}ecms_news where isgood=2 order by newstime desc limit 3\\\",0,24,0}]\r\n                             <div class=\\\"focusingItem box\\\">\r\n                            <div class=\\\"focusingImg imgAll\\\"><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"135px\\\" height=\\\"75px\\\" alt=\\\"<?=$bqr[\\\'titlepic_alt\\\']?>\\\"></a></div>\r\n                            <div class=\\\"focusingCont boxL\\\">\r\n                                <p><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></p>\r\n                                <span><?=date(\\\'Y-m-d H:i\\\',$bqr[\\\'newstime\\\'])?></span>\r\n                            </div>\r\n                        </div>\r\n                        [/e:loop]\r\n                    </div>\r\n                    <div class=\\\"emailUrl box\\\">\r\n                        <p class=\\\"boxL emailImg\\\"><?=$public_r[\\\'add_law_email\\\']?></p>\r\n                        <span><a href=\\\"javascript:;\\\">法律声明</a></span>\r\n                    </div>\r\n                    <div class=\\\"recommend\\\">\r\n                        <div class=\\\"recommendTitle\\\">友情链接</div>\r\n                        <div class=\\\"fdsLink clearfix\\\">\r\n                            <ul>\r\n                                [e:loop={\\\"select lname,lurl from {$dbtbpre}enewslink order by myorder\\\",0,24,0}]\r\n                                    <li><a href=\\\"<?=$bqr[\\\'lurl\\\']?>\\\"><?=$bqr[\\\'lname\\\']?></a></li>\r\n                                [/e:loop]\r\n                            </ul>\r\n                        </div>\r\n                    </div>\r\n\r\n\r\n                </div>',0,0,'侧边栏',0,0,'',0,0,0,1558331754,'tempvar',1,'admin'),(44,1,'','<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/zhishu.css\\\">\r\n    <script type=\\\"text/javascript\\\">\r\n        var newsurl=\\\'[!--news.url--]\\\';\r\n    </script>\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\">[!--pagetitle--]</div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"AdtImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea1.js\\\"></script></div>\r\n            <div class=\\\"conter\\\">\r\n                <div class=\\\"contL\\\">\r\n                    <div class=\\\"newFlash box\\\">\r\n                        <span>快讯</span>\r\n                        <div class=\\\"newFlashList boxL\\\">\r\n                            [e:loop={\\\"select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort\\\",0,24,0}]\r\n                                <a href=\\\"<?=$bqr[\\\'url\\\']?>\\\"><?=$bqr[\\\'fname\\\']?></a>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                    <?php $new_num=0;?>\r\n                    <div class=\\\"newList\\\">\r\n                        [e:loop={\\\"select title,titleurl,titlepic,newstime,smalltext,firsttitle,titlepic_alt from {$dbtbpre}ecms_news order by firsttitle desc,newstime desc limit 20\\\",0,24,0}]\r\n                        <?php $new_num++;?>\r\n                        <div class=\\\"newListItem box\\\">\r\n                                <div class=\\\"newsImg imgAll\\\"><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"179\\\" height=\\\"123\\\" alt=\\\"<?=$bqr[\\\'titlepic_alt\\\']?>\\\"></a></div><div class=\\\"newsCont boxL\\\"><div class=\\\"newsTtile\\\"><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></div><div class=\\\"newsTime\\\"><?=date(\\\'Y-m-d H:i\\\',$bqr[\\\'newstime\\\'])?></div><div class=\\\"newsTxt\\\"><?=esub($bqr[\\\'smalltext\\\'],120)?></div></div>\r\n                            <?php if($bqr[\\\'firsttitle\\\']==1):?>\r\n                            <div class=\\\"roofsImg\\\" style=\\\"display: block;\\\"><img src=\\\"[!--news.url--]skin/stock/images/roofsImg.png\\\"></div>\r\n                            <?php endif;?>\r\n\r\n                        </div>\r\n\r\n                        [/e:loop]\r\n                    </div>\r\n                    <div class=\\\"more_list_page\\\" start=\\\"<?=$new_num?>\\\" cid=\\\"0\\\" style=\\\"display:none\\\">\r\n                    </div>\r\n                </div>\r\n                [!--temp.sidebar--]\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <script src=\\\"[!--news.url--]skin/stock/js/jquery-3.4.1.min.js\\\"></script>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/data.js\\\"></script>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/pIndex.js\\\"></script>\r\n</body>\r\n\r\n</html>',0,0,'',0,0,'',0,0,0,1558335052,'pubindextemp',1,'admin'),(31,9,'sidebar','<div class=\\\"contR\\\">\r\n                    <!--<div class=\\\"echarts box\\\">\r\n                        <ul id=\\\"title\\\" class=\\\"title boxL\\\">\r\n                            <li class=\\\"ho\\\"><img src=\\\"./images/echarts.jpg\\\"></li>\r\n                            <li><img src=\\\"./images/echarts.jpg\\\"></li>\r\n                            <li><img src=\\\"./images/echarts.jpg\\\"></li>\r\n                        </ul>\r\n                        <div id=\\\"wrap\\\" class=\\\"wrap\\\">\r\n                            <div class=\\\"active\\\">上证指数</div>\r\n                            <div>深证指数</div>\r\n                            <div>创业指数</div>\r\n                        </div>\r\n                    </div>-->\r\n\r\n                    <div class=\\\"hqpic\\\"><div class=\\\"hq_data\\\" id=\\\"hq_data\\\">\r\n<b>2882.3<em>-73.41&nbsp;&nbsp;-2.48%</em></b>\r\n<a href=\\\"http://hq.gucheng.com/SH000001/\\\" id=\\\"hqCanvas\\\" target=\\\"_blank\\\"></a>\r\n</div>\r\n<ul id=\\\"stockUl\\\"><li><a href=\\\"http://hq.gucheng.com/SH000001/\\\" target=\\\"_blank\\\" class=\\\"on\\\">上证指数</a></li><li><a href=\\\"http://hq.gucheng.com/SZ399001/\\\" target=\\\"_blank\\\">深证成指</a></li><li><a href=\\\"http://hq.gucheng.com/SZ399006/\\\" target=\\\"_blank\\\">创业板指</a></li></ul>\r\n</div>\r\n\r\n\r\n\r\n                    <div class=\\\"recommend\\\">\r\n                        <div class=\\\"recommendTitle\\\">推荐阅读</div>\r\n                        [e:loop={\\\"select title,titleurl,smalltext from {$dbtbpre}ecms_news order by isgood desc,newstime desc limit 6\\\",0,24,0}]\r\n                            <div class=\\\"reListItem\\\">\r\n                                <div class=\\\"reListItmeTitle\\\"><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></div>\r\n                                <div class=\\\"reListCont\\\">\r\n                                    <?=esub($bqr[\\\'smalltext\\\'],80)?>\r\n                                </div>\r\n                            </div>\r\n                        [/e:loop]\r\n                    </div>\r\n                    <div class=\\\"focusing\\\">\r\n                        <div class=\\\"bigImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea2.js\\\"></script></div>\r\n\r\n                        [e:loop={\\\"select title,titleurl,titlepic,newstime,titlepic_alt from {$dbtbpre}ecms_news order by isgood desc,newstime desc limit 2\\\",0,24,0}]\r\n                             <div class=\\\"focusingItem box\\\">\r\n                            <div class=\\\"focusingImg imgAll\\\"><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"135px\\\" height=\\\"75px\\\" alt=\\\"<?=$bqr[\\\'titlepic_alt\\\']?>\\\"></a></div>\r\n                            <div class=\\\"focusingCont boxL\\\">\r\n                                <p><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></p>\r\n                                <span><?=date(\\\'Y-m-d H:i\\\',$bqr[\\\'newstime\\\'])?></span>\r\n                            </div>\r\n                        </div>\r\n                        [/e:loop]\r\n                    </div>\r\n                    <div class=\\\"emailUrl box\\\">\r\n                        <p class=\\\"boxL emailImg\\\"><?=$public_r[\\\'add_law_email\\\']?></p>\r\n                        <span><a href=\\\"javascript:;\\\">法律声明</a></span>\r\n                    </div>\r\n                    <div class=\\\"recommend\\\">\r\n                        <div class=\\\"recommendTitle\\\">友情链接</div>\r\n                        <div class=\\\"fdsLink clearfix\\\">\r\n                            <ul>\r\n                                [e:loop={\\\"select lname,lurl from {$dbtbpre}enewslink order by myorder\\\",0,24,0}]\r\n                                    <li><a href=\\\"<?=$bqr[\\\'lurl\\\']?>\\\"><?=$bqr[\\\'lname\\\']?></a></li>\r\n                                [/e:loop]\r\n                            </ul>\r\n                        </div>\r\n                    </div>\r\n\r\n\r\n                </div>',0,0,'侧边栏',0,0,'',0,0,0,1558321495,'tempvar',1,'admin'),(51,1,'','<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/zhishu.css\\\">\r\n    <script type=\\\"text/javascript\\\">\r\n        var newsurl=\\\'[!--news.url--]\\\';\r\n    </script>\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\">[!--pagetitle--]</div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"AdtImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea1.js\\\"></script></div>\r\n            <div class=\\\"conter\\\">\r\n                <div class=\\\"contL\\\">\r\n                    <div class=\\\"newFlash box\\\">\r\n                        <span>快讯</span>\r\n                        <div class=\\\"newFlashList boxL\\\">\r\n                            [e:loop={\\\"select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort\\\",0,24,0}]\r\n                                <a href=\\\"<?=$bqr[\\\'url\\\']?>\\\"><?=$bqr[\\\'fname\\\']?></a>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                    <div class=\\\"newList\\\">\r\n                    </div>\r\n                    <div class=\\\"more_list_page\\\" start=\\\"0\\\" cid=\\\"0\\\" style=\\\"display:none\\\">\r\n                    </div>\r\n                </div>\r\n                [!--temp.sidebar--]\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <script src=\\\"[!--news.url--]skin/stock/js/jquery-3.4.1.min.js\\\"></script>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/pIndex.js\\\"></script>\r\n</body>\r\n\r\n</html>',0,0,'',0,0,'',0,0,0,1558358263,'pubindextemp',1,'admin'),(58,1,'','<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/zhishu.css\\\">\r\n    <script type=\\\"text/javascript\\\">\r\n        var newsurl=\\\'[!--news.url--]\\\';\r\n        if (/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {\r\n            window.location.href = \\\"[!--news.url--]e/wap/\\\";\r\n        }\r\n    </script>\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\">[!--pagetitle--]</div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"AdtImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea1.js\\\"></script></div>\r\n            <div class=\\\"conter\\\">\r\n                <div class=\\\"contL\\\">\r\n                    <div class=\\\"newFlash box\\\">\r\n                        <span>快讯</span>\r\n                        <div class=\\\"newFlashList boxL\\\">\r\n                            [e:loop={\\\"select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort\\\",0,24,0}]\r\n                                <a href=\\\"<?=$bqr[\\\'url\\\']?>\\\"><?=$bqr[\\\'fname\\\']?></a>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                    <div class=\\\"newList\\\">\r\n                    </div>\r\n                    <div class=\\\"more_list_page\\\" start=\\\"0\\\" cid=\\\"0\\\" style=\\\"display:none\\\">\r\n                    </div>\r\n                </div>\r\n                [!--temp.sidebar--]\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <script src=\\\"[!--news.url--]skin/stock/js/jquery-3.4.1.min.js\\\"></script>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/pIndex.js\\\"></script>\r\n</body>\r\n\r\n</html>',0,0,'',0,0,'',0,0,0,1558487287,'pubindextemp',1,'yaoweibo'),(45,1,'默认新闻列表模板','<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/zhishu.css\\\">\r\n    <script type=\\\"text/javascript\\\">\r\n        var newsurl=\\\'[!--news.url--]\\\';\r\n    </script>\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\"><?=$public_r[\\\'sitename\\\']?> > <a href=\\\"[!--class.url--]\\\">[!--class.name--]</a></div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"AdtImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea1.js\\\"></script></div>\r\n            <div class=\\\"conter\\\">\r\n                <div class=\\\"contL\\\">\r\n                    <div class=\\\"newFlash box\\\">\r\n                        <span>快讯</span>\r\n                        <div class=\\\"newFlashList boxL\\\">\r\n                            [e:loop={\\\"select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort\\\",0,24,0}]\r\n                                <a href=\\\"<?=$bqr[\\\'url\\\']?>\\\"><?=$bqr[\\\'fname\\\']?></a>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                    <?php $new_num=0;?>\r\n                    <div class=\\\"newList\\\">\r\n                        [e:loop={\\\"select title,titleurl,titlepic,newstime,smalltext,firsttitle,titlepic_alt from {$dbtbpre}ecms_news where classid={$GLOBALS[\\\'navclassid\\\']} order by firsttitle desc,newstime desc limit 20\\\",0,24,0}]\r\n                        <?php $new_num++;?>\r\n                        <div class=\\\"newListItem box\\\">\r\n                                <div class=\\\"newsImg imgAll\\\"><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"179\\\" height=\\\"123\\\" alt=\\\"<?=$bqr[\\\'titlepic_alt\\\']?>\\\"></a></div><div class=\\\"newsCont boxL\\\"><div class=\\\"newsTtile\\\"><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></div><div class=\\\"newsTime\\\"><?=date(\\\'Y-m-d H:i\\\',$bqr[\\\'newstime\\\'])?></div><div class=\\\"newsTxt\\\"><?=esub($bqr[\\\'smalltext\\\'],120)?></div></div>\r\n                            <?php if($bqr[\\\'firsttitle\\\']==1):?>\r\n                            <div class=\\\"roofsImg\\\" style=\\\"display: block;\\\"><img src=\\\"[!--news.url--]skin/stock/images/roofsImg.png\\\"></div>\r\n                            <?php endif;?>\r\n\r\n                        </div>\r\n\r\n                        [/e:loop]\r\n                    </div>\r\n                    <div class=\\\"more_list_page\\\" start=\\\"<?=$new_num?>\\\" cid=\\\"<?=$GLOBALS[\\\'navclassid\\\']?>\\\" style=\\\"display:none\\\">\r\n\r\n                    </div>\r\n                </div>\r\n                [!--temp.sidebar--]\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <script src=\\\"[!--news.url--]skin/stock/js/jquery-3.4.1.min.js\\\"></script>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/pIndex.js\\\"></script>\r\n</body>\r\n\r\n</html>',0,0,'<li><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a> <span>[!--newstime--]</span></li>',0,1,'Y-m-d',0,0,0,1558335107,'listtemp',1,'admin'),(46,1,'默认新闻列表模板','<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/zhishu.css\\\">\r\n    <script type=\\\"text/javascript\\\">\r\n        var newsurl=\\\'[!--news.url--]\\\';\r\n    </script>\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\"><?=$public_r[\\\'sitename\\\']?> > <a href=\\\"<?=sys_ReturnBqClassname(array(\\\'classid\\\'=>$GLOBALS[\\\'navclassid\\\']),9)?>\\\">[!--class.name--]</a></div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"AdtImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea1.js\\\"></script></div>\r\n            <div class=\\\"conter\\\">\r\n                <div class=\\\"contL\\\">\r\n                    <div class=\\\"newFlash box\\\">\r\n                        <span>快讯</span>\r\n                        <div class=\\\"newFlashList boxL\\\">\r\n                            [e:loop={\\\"select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort\\\",0,24,0}]\r\n                                <a href=\\\"<?=$bqr[\\\'url\\\']?>\\\"><?=$bqr[\\\'fname\\\']?></a>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                    <?php $new_num=0;?>\r\n                    <div class=\\\"newList\\\">\r\n                        [e:loop={\\\"select title,titleurl,titlepic,newstime,smalltext,firsttitle,titlepic_alt from {$dbtbpre}ecms_news where classid={$GLOBALS[\\\'navclassid\\\']} order by firsttitle desc,newstime desc limit 20\\\",0,24,0}]\r\n                        <?php $new_num++;?>\r\n                        <div class=\\\"newListItem box\\\">\r\n                                <div class=\\\"newsImg imgAll\\\"><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"179\\\" height=\\\"123\\\" alt=\\\"<?=$bqr[\\\'titlepic_alt\\\']?>\\\"></a></div><div class=\\\"newsCont boxL\\\"><div class=\\\"newsTtile\\\"><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></div><div class=\\\"newsTime\\\"><?=date(\\\'Y-m-d H:i\\\',$bqr[\\\'newstime\\\'])?></div><div class=\\\"newsTxt\\\"><?=esub($bqr[\\\'smalltext\\\'],120)?></div></div>\r\n                            <?php if($bqr[\\\'firsttitle\\\']==1):?>\r\n                            <div class=\\\"roofsImg\\\" style=\\\"display: block;\\\"><img src=\\\"[!--news.url--]skin/stock/images/roofsImg.png\\\"></div>\r\n                            <?php endif;?>\r\n\r\n                        </div>\r\n\r\n                        [/e:loop]\r\n                    </div>\r\n                    <div class=\\\"more_list_page\\\" start=\\\"<?=$new_num?>\\\" cid=\\\"<?=$GLOBALS[\\\'navclassid\\\']?>\\\" style=\\\"display:none\\\">\r\n\r\n                    </div>\r\n                </div>\r\n                [!--temp.sidebar--]\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <script src=\\\"[!--news.url--]skin/stock/js/jquery-3.4.1.min.js\\\"></script>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/pIndex.js\\\"></script>\r\n</body>\r\n\r\n</html>',0,0,'<li><a href=\\\"[!--titleurl--]\\\" title=\\\"[!--oldtitle--]\\\">[!--title--]</a> <span>[!--newstime--]</span></li>',0,1,'Y-m-d',0,0,0,1558338690,'listtemp',1,'admin'),(50,1,'默认新闻内容模板','<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/zhishu.css\\\">\r\n    <script type=\\\"text/javascript\\\">\r\n        var newsurl=\\\'[!--news.url--]\\\';\r\n    </script>\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\"><?=$public_r[\\\'sitename\\\']?> > <a href=\\\"<?=sys_ReturnBqClassname(array(\\\'classid\\\'=>$GLOBALS[\\\'navclassid\\\']),9)?>\\\">[!--class.name--]</a> > <a href=\\\"[!--titleurl--]\\\">[!--ftitle--]</a></div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"AdtImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea1.js\\\"></script></div>\r\n            <div class=\\\"conter\\\">\r\n                <div class=\\\"contL\\\">\r\n                    <div class=\\\"newFlash box\\\">\r\n                        <span>快讯</span>\r\n                        <div class=\\\"newFlashList boxL\\\">\r\n                            [e:loop={\\\"select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort\\\",0,24,0}]\r\n                                <a href=\\\"<?=$bqr[\\\'url\\\']?>\\\"><?=$bqr[\\\'fname\\\']?></a>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                     <div class=\\\"content\\\">\r\n                        <div class=\\\"contentTxt\\\">\r\n                            <h2>[!--title--]</h2>\r\n                            <p class=\\\"time\\\">[!--newstime--]</p>\r\n                            [!--newstext--]\r\n                            <h3 class=\\\"source\\\">此文章来源于[!--befrom--]</h3>\r\n                        </div>\r\n                        <div class=\\\"GraspUserTitle box\\\">\r\n                            <p class=\\\"boxL\\\">猜你喜欢</p>\r\n                            <span>更多可能你喜欢的内容</span>\r\n                        </div>\r\n                        <div class=\\\"GraspUserCont clearfix\\\">\r\n                            <ul>\r\n                                [e:loop={\\\"select ftitle,titleurl from {$dbtbpre}ecms_news where isgood=3 order by newstime desc limit 8\\\",0,24,0}]\r\n                                <li><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><?=esub($bqr[\\\'ftitle\\\'],20)?></a></li>\r\n                                [/e:loop]\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\\\"newList\\\">\r\n                        </div>\r\n                        <div class=\\\"more_list_page\\\" start=\\\"0\\\" cid=\\\"<?=$GLOBALS[\\\'navclassid\\\']?>\\\" order=\\\"2\\\" style=\\\"display:none\\\">\r\n                    </div>\r\n                    \r\n                </div>\r\n                [!--temp.sidebar--]\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/jquery-3.4.1.min.js\\\"></script>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/pIndex.js\\\"></script>\r\n</body>\r\n\r\n</html>',0,0,'',0,1,'Y-m-d H:i:s',0,0,0,1558357665,'newstemp',1,'admin'),(48,1,'默认新闻内容模板','<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/zhishu.css\\\">\r\n    <script type=\\\"text/javascript\\\">\r\n        var newsurl=\\\'[!--news.url--]\\\';\r\n    </script>\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\"><?=$public_r[\\\'sitename\\\']?> > <a href=\\\"<?=sys_ReturnBqClassname(array(\\\'classid\\\'=>$GLOBALS[\\\'navclassid\\\']),9)?>\\\">[!--class.name--]</a> > <a href=\\\"[!--titleurl--]\\\">[!--ftitle--]</a></div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"AdtImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea1.js\\\"></script></div>\r\n            <div class=\\\"conter\\\">\r\n                <div class=\\\"contL\\\">\r\n                    <div class=\\\"newFlash box\\\">\r\n                        <span>快讯</span>\r\n                        <div class=\\\"newFlashList boxL\\\">\r\n                            [e:loop={\\\"select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort\\\",0,24,0}]\r\n                                <a href=\\\"<?=$bqr[\\\'url\\\']?>\\\"><?=$bqr[\\\'fname\\\']?></a>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                     <div class=\\\"content\\\">\r\n                        <div class=\\\"contentTxt\\\">\r\n                            <h2>[!--title--]</h2>\r\n                            <p class=\\\"time\\\">[!--newstime--]</p>\r\n                            [!--newstext--]\r\n                            <h3 class=\\\"source\\\">此文章来源于[!--befrom--]</h3>\r\n                        </div>\r\n                        <div class=\\\"GraspUserTitle box\\\">\r\n                            <p class=\\\"boxL\\\">猜你喜欢</p>\r\n                            <span>更多可能你喜欢的内容</span>\r\n                        </div>\r\n                        <div class=\\\"GraspUserCont clearfix\\\">\r\n                            <ul>\r\n                                [e:loop={\\\"select ftitle,titleurl from {$dbtbpre}ecms_news where isgood=3 order by newstime desc limit 8\\\",0,24,0}]\r\n                                <li><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><?=esub($bqr[\\\'ftitle\\\'],20)?></a></li>\r\n                                [/e:loop]\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\\\"newList\\\">\r\n                        </div>\r\n                    </div>\r\n                    \r\n                </div>\r\n                [!--temp.sidebar--]\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n</body>\r\n\r\n</html>',0,0,'',0,1,'Y-m-d H:i:s',0,0,0,1558343711,'newstemp',1,'admin'),(49,1,'默认新闻内容模板','<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--pagetitle--]</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/zhishu.css\\\">\r\n    <script type=\\\"text/javascript\\\">\r\n        var newsurl=\\\'[!--news.url--]\\\';\r\n    </script>\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\"><?=$public_r[\\\'sitename\\\']?> > <a href=\\\"<?=sys_ReturnBqClassname(array(\\\'classid\\\'=>$GLOBALS[\\\'navclassid\\\']),9)?>\\\">[!--class.name--]</a> > <a href=\\\"[!--titleurl--]\\\">[!--ftitle--]</a></div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"AdtImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea1.js\\\"></script></div>\r\n            <div class=\\\"conter\\\">\r\n                <div class=\\\"contL\\\">\r\n                    <div class=\\\"newFlash box\\\">\r\n                        <span>快讯</span>\r\n                        <div class=\\\"newFlashList boxL\\\">\r\n                            [e:loop={\\\"select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort\\\",0,24,0}]\r\n                                <a href=\\\"<?=$bqr[\\\'url\\\']?>\\\"><?=$bqr[\\\'fname\\\']?></a>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                     <div class=\\\"content\\\">\r\n                        <div class=\\\"contentTxt\\\">\r\n                            <h2>[!--title--]</h2>\r\n                            <p class=\\\"time\\\">[!--newstime--]</p>\r\n                            [!--newstext--]\r\n                            <h3 class=\\\"source\\\">此文章来源于[!--befrom--]</h3>\r\n                        </div>\r\n                        <div class=\\\"GraspUserTitle box\\\">\r\n                            <p class=\\\"boxL\\\">猜你喜欢</p>\r\n                            <span>更多可能你喜欢的内容</span>\r\n                        </div>\r\n                        <div class=\\\"GraspUserCont clearfix\\\">\r\n                            <ul>\r\n                                [e:loop={\\\"select ftitle,titleurl from {$dbtbpre}ecms_news where isgood=3 order by newstime desc limit 8\\\",0,24,0}]\r\n                                <li><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><?=esub($bqr[\\\'ftitle\\\'],20)?></a></li>\r\n                                [/e:loop]\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\\\"newList\\\">\r\n                        </div>\r\n                        <div class=\\\"more_list_page\\\" start=\\\"<?=$new_num?>\\\" cid=\\\"<?=$GLOBALS[\\\'navclassid\\\']?>\\\" order=\\\"2\\\" style=\\\"display:none\\\">\r\n                    </div>\r\n                    \r\n                </div>\r\n                [!--temp.sidebar--]\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/jquery-3.4.1.min.js\\\"></script>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/pIndex.js\\\"></script>\r\n</body>\r\n\r\n</html>',0,0,'',0,1,'Y-m-d H:i:s',0,0,0,1558357161,'newstemp',1,'admin'),(53,1,'默认搜索模板','<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--keyboard--] 搜索结果</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/zhishu.css\\\">\r\n    <script type=\\\"text/javascript\\\">\r\n        var newsurl=\\\'[!--news.url--]\\\';\r\n    </script>\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\"><?=$public_r[\\\'sitename\\\']?> > [!--keyboard--] 搜索结果</div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"AdtImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea1.js\\\"></script></div>\r\n            <div class=\\\"conter\\\">\r\n                <div class=\\\"contL\\\">\r\n                    <div class=\\\"newFlash box\\\">\r\n                        <span>快讯</span>\r\n                        <div class=\\\"newFlashList boxL\\\">\r\n                            [e:loop={\\\"select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort\\\",0,24,0}]\r\n                                <a href=\\\"<?=$bqr[\\\'url\\\']?>\\\"><?=$bqr[\\\'fname\\\']?></a>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                    <div class=\\\"newList\\\">\r\n                    </div>\r\n                    <div class=\\\"more_list_page\\\" start=\\\"0\\\" cid=\\\"<?=$GLOBALS[\\\'navclassid\\\']?>\\\" type=\\\"s\\\" key=\\\"[!--keyboard--]\\\" style=\\\"display:none\\\">\r\n\r\n                    </div>\r\n                </div>\r\n                [!--temp.sidebar--]\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <script src=\\\"[!--news.url--]skin/stock/js/jquery-3.4.1.min.js\\\"></script>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/pIndex.js\\\"></script>\r\n</body>\r\n\r\n</html>',180,0,'<h2 class=\\\"r\\\"><span>[!--no.num--].</span> <a class=\\\"l\\\" href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\">[!--title--]</a></h2>\r\n<table width=\\\"80%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>[!--smalltext--]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span class=\\\"a\\\">[!--titleurl--] - [!--newstime--]</span> - <a class=\\\"fl\\\" href=\\\"[!--this.classlink--]\\\" target=\\\"_blank\\\">[!--this.classname--]</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',0,1,'Y-m-d',0,0,0,1558401503,'searchtemp',1,'admin'),(54,1,'默认搜索模板','<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--keyboard--] 搜索结果</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/zhishu.css\\\">\r\n    <script type=\\\"text/javascript\\\">\r\n        var newsurl=\\\'[!--news.url--]\\\';\r\n    </script>\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\"><?=$public_r[\\\'sitename\\\']?> > [!--keyboard--] 搜索结果</div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"AdtImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea1.js\\\"></script></div>\r\n            <div class=\\\"conter\\\">\r\n                <div class=\\\"contL\\\">\r\n                    <div class=\\\"newFlash box\\\">\r\n                        <span>快讯</span>\r\n                        <div class=\\\"newFlashList boxL\\\">\r\n                            [e:loop={\\\"select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort\\\",0,24,0}]\r\n                                <a href=\\\"<?=$bqr[\\\'url\\\']?>\\\"><?=$bqr[\\\'fname\\\']?></a>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                    <div class=\\\"newList\\\">\r\n                    </div>\r\n                    <div class=\\\"more_list_page\\\" start=\\\"0\\\" cid=\\\"<?=$GLOBALS[\\\'navclassid\\\']?>\\\" key=\\\"[!--keyboard--]\\\" style=\\\"display:none\\\">\r\n\r\n                    </div>\r\n                </div>\r\n                [!--temp.sidebar--]\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <script src=\\\"[!--news.url--]skin/stock/js/jquery-3.4.1.min.js\\\"></script>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/pIndex.js\\\"></script>\r\n</body>\r\n\r\n</html>',180,0,'<h2 class=\\\"r\\\"><span>[!--no.num--].</span> <a class=\\\"l\\\" href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\">[!--title--]</a></h2>\r\n<table width=\\\"80%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>[!--smalltext--]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span class=\\\"a\\\">[!--titleurl--] - [!--newstime--]</span> - <a class=\\\"fl\\\" href=\\\"[!--this.classlink--]\\\" target=\\\"_blank\\\">[!--this.classname--]</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',0,1,'Y-m-d',0,0,0,1558410777,'searchtemp',1,'admin'),(55,1,'默认搜索模板','<!DOCTYPE html>\r\n<html lang=\\\"en\\\">\r\n\r\n<head>\r\n    <meta charset=\\\"UTF-8\\\">\r\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\r\n    <meta http-equiv=\\\"X-UA-Compatible\\\" content=\\\"ie=edge\\\">\r\n    <title>[!--keyboard--] 搜索结果</title>\r\n    <meta name=\\\"keywords\\\" content=\\\"[!--pagekey--]\\\" />\r\n    <meta name=\\\"description\\\" content=\\\"[!--pagedes--]\\\" />\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/css.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/style.css\\\">\r\n    <link rel=\\\"stylesheet\\\" href=\\\"[!--news.url--]skin/stock/css/zhishu.css\\\">\r\n    <script type=\\\"text/javascript\\\">\r\n        var newsurl=\\\'[!--news.url--]\\\';\r\n    </script>\r\n</head> \r\n\r\n<body>\r\n    <div class=\\\"nav\\\">\r\n        <div class=\\\"topBar\\\">\r\n            <div class=\\\"barCont box\\\">\r\n                <div class=\\\"boxL Crumbs\\\"><?=$public_r[\\\'sitename\\\']?> > [!--keyboard--] 搜索结果</div>\r\n                <div class=\\\"bdsharebuttonbox share\\\"><label style=\\\"float:left;\\\">分享到：</label><a href=\\\"#\\\" class=\\\"bds_weixin\\\" data-cmd=\\\"weixin\\\" title=\\\"分享到微信\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_sqq\\\" data-cmd=\\\"sqq\\\" title=\\\"分享到QQ好友\\\" style=\\\"margin-top:13px;\\\"></a><a href=\\\"#\\\" class=\\\"bds_tsina\\\" data-cmd=\\\"tsina\\\" title=\\\"分享到新浪微博\\\" style=\\\"margin-top:13px;\\\"></a></div>\r\n<script>window._bd_share_config={\\\"common\\\":{\\\"bdSnsKey\\\":{},\\\"bdText\\\":\\\"\\\",\\\"bdMini\\\":\\\"2\\\",\\\"bdMiniList\\\":false,\\\"bdPic\\\":\\\"\\\",\\\"bdStyle\\\":\\\"0\\\",\\\"bdSize\\\":\\\"16\\\"},\\\"share\\\":{}};with(document)0[(getElementsByTagName(\\\'head\\\')[0]||body).appendChild(createElement(\\\'script\\\')).src=\\\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\\\'+~(-new Date()/36e5)];</script>\r\n            </div>\r\n        </div>\r\n        [!--temp.menu--]\r\n    </div>\r\n    <div class=\\\"center\\\">\r\n        <div class=\\\"centerCont mg1200 clearfix\\\">\r\n            <div class=\\\"AdtImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea1.js\\\"></script></div>\r\n            <div class=\\\"conter\\\">\r\n                <div class=\\\"contL\\\">\r\n                    <div class=\\\"newFlash box\\\">\r\n                        <span>快讯</span>\r\n                        <div class=\\\"newFlashList boxL\\\">\r\n                            [e:loop={\\\"select fname,url from {$dbtbpre}enewsfocus where classid=1 order by fsort\\\",0,24,0}]\r\n                                <a href=\\\"<?=$bqr[\\\'url\\\']?>\\\"><?=$bqr[\\\'fname\\\']?></a>\r\n                            [/e:loop]\r\n                        </div>\r\n                    </div>\r\n                    <div class=\\\"newList\\\">\r\n                    </div>\r\n                    <div class=\\\"more_list_page\\\" start=\\\"0\\\" cid=\\\"<?=$GLOBALS[\\\'navclassid\\\']?>\\\" type=\\\"s\\\" key=\\\"[!--keyboard--]\\\" style=\\\"display:none\\\">\r\n\r\n                    </div>\r\n                </div>\r\n                [!--temp.sidebar--]\r\n\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    <script src=\\\"[!--news.url--]skin/stock/js/jquery-3.4.1.min.js\\\"></script>\r\n    <script src=\\\"[!--news.url--]skin/stock/js/pIndex.js\\\"></script>\r\n</body>\r\n\r\n</html>',180,0,'<h2 class=\\\"r\\\"><span>[!--no.num--].</span> <a class=\\\"l\\\" href=\\\"[!--titleurl--]\\\" target=\\\"_blank\\\">[!--title--]</a></h2>\r\n<table width=\\\"80%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td>[!--smalltext--]</td>\r\n		</tr>\r\n		<tr>\r\n			<td><span class=\\\"a\\\">[!--titleurl--] - [!--newstime--]</span> - <a class=\\\"fl\\\" href=\\\"[!--this.classlink--]\\\" target=\\\"_blank\\\">[!--this.classname--]</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',0,1,'Y-m-d',0,0,0,1558410874,'searchtemp',1,'admin'),(56,8,'menu',' <div class=\\\"navCont\\\">\r\n            <div class=\\\"navContBox clearfix\\\">\r\n                <div class=\\\"logo\\\"><a href=\\\"[!--news.url--]\\\"><img src=\\\"[!--news.url--]skin/stock/images/logo.png\\\"></a></div>\r\n                <div class=\\\"menu\\\">\r\n                    <ul>\r\n                        <li>\r\n                            <a href=\\\"[!--news.url--]\\\">首页</a>\r\n                        </li>\r\n                         [showclasstemp]\\\'0\\\',12,0,0[/showclasstemp]\r\n                    </ul>\r\n                </div>\r\n                <div class=\\\"sec\\\"><input type=\\\"text\\\" placeholder=\\\"热搜：<?=$public_r[\\\'add_search_title\\\']?>\\\" id=\\\"search_key\\\"><img src=\\\"[!--news.url--]skin/stock/images/sec.png\\\"></div>\r\n            </div>\r\n        </div>',0,0,'菜单导航',0,0,'',0,0,0,1558411578,'tempvar',1,'admin'),(57,8,'menu',' <div class=\\\"navCont\\\">\r\n            <div class=\\\"navContBox clearfix\\\">\r\n                <div class=\\\"logo\\\"><a href=\\\"[!--news.url--]\\\"><img src=\\\"[!--news.url--]skin/stock/images/logo.png\\\"></a></div>\r\n                <div class=\\\"menu\\\">\r\n                    <ul>\r\n                        <li>\r\n                            <a href=\\\"[!--news.url--]\\\">首页</a>\r\n                        </li>\r\n                         [showclasstemp]\\\'0\\\',12,0,0[/showclasstemp]\r\n                    </ul>\r\n                </div>\r\n                <div class=\\\"sec\\\"><input type=\\\"text\\\" placeholder=\\\"热搜：<?=$public_r[\\\'add_search_title\\\']?>\\\" id=\\\"search_key\\\" value=\\\"<?php if(isset($_GET[\\\'key\\\'])) echo ehtmlspecialchars($_GET[\\\'key\\\']); ?>\\\"><img src=\\\"[!--news.url--]skin/stock/images/sec.png\\\"></div>\r\n            </div>\r\n        </div>',0,0,'菜单导航',0,0,'',0,0,0,1558412832,'tempvar',1,'admin');
/*!40000 ALTER TABLE `gc_enewstempbak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewstempdt`
--

DROP TABLE IF EXISTS `gc_enewstempdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewstempdt` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempvar` char(30) NOT NULL DEFAULT '',
  `tempname` char(30) NOT NULL DEFAULT '',
  `tempsay` char(255) NOT NULL DEFAULT '',
  `tempfile` char(200) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `temptype` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`tempid`),
  UNIQUE KEY `tempvar` (`tempvar`),
  KEY `temptype` (`temptype`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewstempdt`
--

LOCK TABLES `gc_enewstempdt` WRITE;
/*!40000 ALTER TABLE `gc_enewstempdt` DISABLE KEYS */;
INSERT INTO `gc_enewstempdt` VALUES (1,'header','主界面头部','主界面头部','e/template/incfile/header.php',0,'incfile'),(2,'footer','主界面尾部','主界面尾部','e/template/incfile/footer.php',0,'incfile'),(3,'qDoInfo','管理投稿首页','管理投稿首页','e/template/DoInfo/DoInfo.php',0,'doinfo'),(4,'qChangeClass','投稿选择栏目页','投稿选择栏目页','e/template/DoInfo/ChangeClass.php',0,'doinfo'),(5,'qDoInfoTran','发布投稿上传附件页面','发布投稿上传附件页面','e/template/DoInfo/tran.php',0,'doinfo'),(6,'qAddInfo','发布投稿页','发布投稿页','e/template/DoInfo/AddInfo.php',0,'doinfo'),(7,'qListInfo','默认管理投稿列表页','默认管理投稿列表页','e/data/html/list/qlistinfo.php',0,'doinfo'),(8,'report','提交错误报告页面','提交错误报告页面','e/template/public/report.php',0,'pubtemp'),(9,'payapi','在线支付页面','在线支付页面','e/template/payapi/payapi.php',0,'pubtemp'),(10,'infovote','信息投票页面','信息投票页面','e/template/public/vote.php',0,'pubtemp'),(11,'vote','投票插件页面','投票插件页面','e/template/tool/vote.php',0,'pubtemp'),(12,'ShopBurcar','购物车页面','购物车页面','e/template/ShopSys/buycar.php',0,'shopsys'),(13,'ShopOrder','提交订单页面','提交订单页面','e/template/ShopSys/order.php',0,'shopsys'),(14,'ShopSubmitOrder','确认提交订单页面','确认提交订单页面','e/template/ShopSys/SubmitOrder.php',0,'shopsys'),(15,'ShopListDd','订单列表页面','订单列表页面','e/template/ShopSys/ListDd.php',0,'shopsys'),(16,'ShopShowDd','订单详细页面','订单详细页面','e/template/ShopSys/ShowDd.php',0,'shopsys'),(17,'ShopBurcarForm','购物车-加入表单模板','购物车-加入表单模板','e/template/ShopSys/buycar/buycar_form.php',0,'shopsys'),(18,'ShopBurcarOrder','购物车-确认订单模板','购物车-确认订单模板','e/template/ShopSys/buycar/buycar_order.php',0,'shopsys'),(19,'ShopBurcarShowdd','购物车-显示订单模板','购物车-显示订单模板','e/template/ShopSys/buycar/buycar_showdd.php',0,'shopsys'),(20,'ShopAddAddress','增加配送地址页面','增加配送地址页面','e/template/ShopSys/AddAddress.php',0,'shopsys'),(21,'ShopListAddress','管理配送地址页面','管理配送地址页面','e/template/ShopSys/ListAddress.php',0,'shopsys'),(22,'MemberReg','会员注册页面','会员注册页面','e/template/member/register.php',0,'member'),(23,'MemberChangeReg','选择注册类型页面','选择注册类型页面','e/template/member/ChangeRegister.php',0,'member'),(24,'MemberRegsend','重发注册激活邮件页面','重发注册激活邮件页面','e/template/member/regsend.php',0,'member'),(25,'MemberLogin','会员登录页面','会员登录页面','e/template/member/login.php',0,'member'),(26,'MemberLoginopen','会员登录弹出页面','会员登录弹出页面','e/template/member/loginopen.php',0,'member'),(27,'MemberEditinfo','修改会员信息页面','修改会员信息页面','e/template/member/EditInfo.php',0,'member'),(28,'MemberEditsafeinfo','修改会员安全信息页面','修改会员安全信息页面','e/template/member/EditSafeInfo.php',0,'member'),(29,'MemberGetPassword','取回密码页面','取回密码页面','e/template/member/GetPassword.php',0,'member'),(30,'MemberGetResetPass','取回密码重置页面','取回密码重置页面','e/template/member/getpass.php',0,'member'),(31,'MemberCp','会员中心首页','会员中心首页','e/template/member/cp.php',0,'member'),(32,'MemberMy','会员状态页面','会员状态页面','e/template/member/my.php',0,'member'),(33,'MemberShowInfo','查看会员信息页面','查看会员信息页面','e/template/member/ShowInfo.php',0,'member'),(34,'MemberList1','默认会员列表页面','默认会员列表页面','e/template/member/memberlist/1.php',0,'member'),(35,'MemberAddMsg','发送站内消息页面','发送站内消息页面','e/template/member/AddMsg.php',0,'membermsg'),(36,'MemberMsg','站内消息列表页面','站内消息列表页面','e/template/member/msg.php',0,'membermsg'),(37,'MemberViewMsg','查看站内消息页面','查看站内消息页面','e/template/member/ViewMsg.php',0,'membermsg'),(38,'MemberAddFriend','增加好友页面','增加好友页面','e/template/member/AddFriend.php',0,'memberfriend'),(39,'MemberFriend','好友列表页面','好友列表页面','e/template/member/friend.php',0,'memberfriend'),(40,'MemberFriendClass','好友分类页面','好友分类页面','e/template/member/FriendClass.php',0,'memberfriend'),(41,'MemberChangeFriend','选择好友页面','选择好友页面','e/template/member/ChangeFriend.php',0,'memberfriend'),(42,'MemberAddFava','增加收藏信息页面','增加收藏信息页面','e/template/member/AddFava.php',0,'memberfav'),(43,'MemberFava','管理收藏页面','管理收藏页面','e/template/member/fava.php',0,'memberfav'),(44,'MemberFavaClass','管理收藏分类页面','管理收藏分类页面','e/template/member/FavaClass.php',0,'memberfav'),(45,'MemberBuybak','充值记录页面','充值记录页面','e/template/member/buybak.php',0,'memberother'),(46,'MemberDownbak','下载记录页面','下载记录页面','e/template/member/downbak.php',0,'memberother'),(47,'MemberBuygroup','购买会员类型页面','购买会员类型页面','e/template/member/buygroup.php',0,'memberother'),(48,'MemberCard','点卡充值页面','点卡充值页面','e/template/member/card.php',0,'memberother'),(49,'MemberChangeStyle','选择会员空间风格页面','选择会员空间风格页面','e/template/member/mspace/ChangeStyle.php',0,'memberspace'),(50,'MemberSetSpace','设置会员空间页面','设置会员空间页面','e/template/member/mspace/SetSpace.php',0,'memberspace'),(51,'MemberFeedback','管理会员空间反馈页面','管理会员空间反馈页面','e/template/member/mspace/feedback.php',0,'memberspace'),(52,'MemberShowFeedback','查看会员空间反馈页面','查看会员空间反馈页面','e/template/member/mspace/ShowFeedback.php',0,'memberspace'),(53,'MemberGbook','管理会员空间留言页面','管理会员空间留言页面','e/template/member/mspace/gbook.php',0,'memberspace'),(54,'MemberReGbook','回复会员空间留言页面','回复会员空间留言页面','e/template/member/mspace/ReGbook.php',0,'memberspace'),(55,'MemberConnectListBind','登录绑定管理页面','登录绑定管理页面','e/template/memberconnect/ListBind.php',0,'memberconnect'),(56,'MemberConnectTobind','绑定登录帐号页面','绑定登录帐号页面','e/template/memberconnect/tobind.php',0,'memberconnect'),(57,'InfoViewLevel','信息权限提示页面','查看信息权限提示页面','e/template/public/checklevel/info1.php',0,'pubtemp');
/*!40000 ALTER TABLE `gc_enewstempdt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewstempgroup`
--

DROP TABLE IF EXISTS `gc_enewstempgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewstempgroup` (
  `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gname` varchar(60) NOT NULL DEFAULT '',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewstempgroup`
--

LOCK TABLES `gc_enewstempgroup` WRITE;
/*!40000 ALTER TABLE `gc_enewstempgroup` DISABLE KEYS */;
INSERT INTO `gc_enewstempgroup` VALUES (1,'默认模板组',1);
/*!40000 ALTER TABLE `gc_enewstempgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewstempvar`
--

DROP TABLE IF EXISTS `gc_enewstempvar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewstempvar` (
  `varid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `myvar` varchar(60) NOT NULL DEFAULT '',
  `varname` varchar(60) NOT NULL DEFAULT '',
  `varvalue` mediumtext NOT NULL,
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`varid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewstempvar`
--

LOCK TABLES `gc_enewstempvar` WRITE;
/*!40000 ALTER TABLE `gc_enewstempvar` DISABLE KEYS */;
INSERT INTO `gc_enewstempvar` VALUES (1,'header','页面头部','<!-- 页头 -->\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"top\\\">\r\n<tr>\r\n<td>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n<tr>\r\n<td width=\\\"63%\\\"> \r\n<!-- 登录 -->\r\n<script>\r\ndocument.write(\\\'<script src=\\\"[!--news.url--]e/member/login/loginjs.php?t=\\\'+Math.random()+\\\'\\\"><\\\'+\\\'/script>\\\');\r\n</script>\r\n</td>\r\n<td align=\\\"right\\\">\r\n<a onclick=\\\"window.external.addFavorite(location.href,document.title)\\\" href=\\\"#ecms\\\">加入收藏</a> | <a onclick=\\\"this.style.behavior=\\\'url(#default#homepage)\\\';this.setHomePage(\\\'[!--news.url--]\\\')\\\" href=\\\"#ecms\\\">设为首页</a> | <a href=\\\"[!--news.url--]e/member/cp/\\\">会员中心</a> | <a href=\\\"[!--news.url--]e/DoInfo/\\\">我要投稿</a> | <a href=\\\"[!--news.url--]e/web/?type=rss2&classid=[!--self.classid--]\\\" target=\\\"_blank\\\">RSS<img src=\\\"[!--news.url--]skin/default/images/rss.gif\\\" border=\\\"0\\\" hspace=\\\"2\\\" /></a>\r\n</td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"10\\\">\r\n<tr valign=\\\"middle\\\">\r\n<td width=\\\"240\\\" align=\\\"center\\\"><a href=\\\"[!--news.url--]\\\"><img src=\\\"[!--news.url--]skin/default/images/logo.gif\\\" width=\\\"200\\\" height=\\\"65\\\" border=\\\"0\\\" /></a></td>\r\n<td align=\\\"center\\\"><a href=\\\"http://www.phome.net/OpenSource/\\\" target=\\\"_blank\\\"><img src=\\\"[!--news.url--]skin/default/images/opensource.gif\\\" width=\\\"100%\\\" height=\\\"70\\\" border=\\\"0\\\" /></a></td>\r\n</tr>\r\n</table>\r\n<!-- 导航tab选项卡 -->\r\n<table width=\\\"920\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"nav\\\">\r\n  <tr> \r\n    <td class=\\\"nav_global\\\"><ul>\r\n        <li class=\\\"curr\\\" id=\\\"tabnav_btn_0\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]\\\">首页</a></li>\r\n        [showclasstemp]\\\'0\\\',12,0,0[/showclasstemp] </ul></td>\r\n  </tr>\r\n</table>',0,0,1),(2,'footer','页面尾部','<!-- 页脚 -->\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\">\r\n<tr>\r\n<td align=\\\"center\\\" class=\\\"search\\\">\r\n<form action=\\\"[!--news.url--]e/search/index.php\\\" method=\\\"post\\\" name=\\\"searchform\\\" id=\\\"searchform\\\">\r\n<table border=\\\"0\\\" cellspacing=\\\"6\\\" cellpadding=\\\"0\\\">\r\n<tr>\r\n<td><strong>站内搜索：</strong>\r\n<input name=\\\"keyboard\\\" type=\\\"text\\\" size=\\\"32\\\" id=\\\"keyboard\\\" class=\\\"inputText\\\" />\r\n<input type=\\\"hidden\\\" name=\\\"show\\\" value=\\\"title\\\" />\r\n<input type=\\\"hidden\\\" name=\\\"tempid\\\" value=\\\"1\\\" />\r\n<select name=\\\"tbname\\\">\r\n<option value=\\\"news\\\">新闻</option>\r\n<option value=\\\"download\\\">下载</option>\r\n<option value=\\\"photo\\\">图库</option>\r\n<option value=\\\"flash\\\">FLASH</option>\r\n<option value=\\\"movie\\\">电影</option>\r\n<option value=\\\"shop\\\">商品</option>\r\n<option value=\\\"article\\\">文章</option>\r\n<option value=\\\"info\\\">分类信息</option>\r\n</select>\r\n</td>\r\n<td><input type=\\\"image\\\" class=\\\"inputSub\\\" src=\\\"[!--news.url--]skin/default/images/search.gif\\\" />\r\n</td>\r\n<td><a href=\\\"[!--news.url--]search/\\\" target=\\\"_blank\\\">高级搜索</a></td>\r\n</tr>\r\n</table>\r\n</form>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n	<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"4\\\" class=\\\"copyright\\\">\r\n        <tr> \r\n          <td align=\\\"center\\\"><a href=\\\"[!--news.url--]\\\">网站首页</a> | <a href=\\\"#\\\">关于我们</a> \r\n            | <a href=\\\"#\\\">服务条款</a> | <a href=\\\"#\\\">广告服务</a> | <a href=\\\"#\\\">联系我们</a> \r\n            | <a href=\\\"#\\\">网站地图</a> | <a href=\\\"#\\\">免责声明</a> | <a href=\\\"[!--news.url--]e/wap/\\\" target=\\\"_blank\\\">WAP</a></td>\r\n        </tr>\r\n        <tr> \r\n          <td align=\\\"center\\\">Powered by <strong><a href=\\\"http://www.phome.net\\\" target=\\\"_blank\\\">EmpireCMS</a></strong> \r\n            <strong><font color=\\\"#FF9900\\\">7.5</font></strong>&nbsp; &copy; 2002-2018 \r\n            <a href=\\\"http://www.digod.com\\\" target=\\\"_blank\\\">EmpireSoft Inc.</a></td>\r\n        </tr>\r\n	</table>\r\n</td>\r\n</tr>\r\n</table>',0,0,0),(3,'dtheader','动态页面头部','<!-- 页头 -->\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" class=\\\"top\\\">\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\">\r\n<tr>\r\n<td width=\\\"63%\\\">\r\n<!-- 登录 -->\r\n<script>\r\ndocument.write(\\\'<script src=\\\"[!--news.url--]e/member/login/loginjs.php?t=\\\'+Math.random()+\\\'\\\"><\\\'+\\\'/script>\\\');\r\n</script>\r\n</td>\r\n<td align=\\\"right\\\">\r\n<a onclick=\\\"window.external.addFavorite(location.href,document.title)\\\" href=\\\"#ecms\\\">加入收藏</a> | <a onclick=\\\"this.style.behavior=\\\'url(#default#homepage)\\\';this.setHomePage(\\\'[!--news.url--]\\\')\\\" href=\\\"#ecms\\\">设为首页</a> | <a href=\\\"[!--news.url--]e/member/cp/\\\">会员中心</a> | <a href=\\\"[!--news.url--]e/DoInfo/\\\">我要投稿</a> | <a href=\\\"[!--news.url--]e/web/?type=rss2\\\" target=\\\"_blank\\\">RSS<img src=\\\"[!--news.url--]skin/default/images/rss.gif\\\" border=\\\"0\\\" hspace=\\\"2\\\" /></a>\r\n</td>\r\n</tr>\r\n</table></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"10\\\">\r\n<tr valign=\\\"middle\\\">\r\n<td width=\\\"240\\\" align=\\\"center\\\"><a href=\\\"[!--news.url--]\\\"><img src=\\\"[!--news.url--]skin/default/images/logo.gif\\\" width=\\\"200\\\" height=\\\"65\\\" border=\\\"0\\\" /></a></td>\r\n<td align=\\\"center\\\"><a href=\\\"http://www.phome.net/OpenSource/\\\" target=\\\"_blank\\\"><img src=\\\"[!--news.url--]skin/default/images/opensource.gif\\\" width=\\\"100%\\\" height=\\\"70\\\" border=\\\"0\\\" /></a></td>\r\n</tr>\r\n</table>\r\n<!-- 导航tab选项卡 -->\r\n<table width=\\\"920\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"nav\\\">\r\n  <tr> \r\n    <td class=\\\"nav_global\\\"><ul>\r\n        <li class=\\\"curr\\\" id=\\\"tabnav_btn_0\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]\\\">首页</a></li>\r\n        <li id=\\\"tabnav_btn_1\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]news/\\\">新闻中心</a></li>\r\n        <li id=\\\"tabnav_btn_2\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]download/\\\">下载中心</a></li>\r\n        <li id=\\\"tabnav_btn_3\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]movie/\\\">影视频道</a></li>\r\n        <li id=\\\"tabnav_btn_4\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]shop/\\\">网上商城</a></li>\r\n        <li id=\\\"tabnav_btn_5\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]flash/\\\">FLASH频道</a></li>\r\n        <li id=\\\"tabnav_btn_6\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]photo/\\\">图片频道</a></li>\r\n        <li id=\\\"tabnav_btn_7\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]article/\\\">文章中心</a></li>\r\n        <li id=\\\"tabnav_btn_8\\\" onmouseover=\\\"tabit(this)\\\"><a href=\\\"[!--news.url--]info/\\\">分类信息</a></li>\r\n      </ul></td>\r\n  </tr>\r\n</table>',0,0,0),(4,'infoarea','分类信息区域导航','<table width=\\\"96%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"4\\\">\r\n	<tr>\r\n		<td width=\\\"33%\\\"><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=东城区\\\">东城区</a></td>\r\n		<td width=\\\"33%\\\"><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=西城区\\\">西城区</a></td>\r\n		<td width=\\\"33%\\\"><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=通州区\\\">通州区</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=崇文区\\\">崇文区</a></td>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=宣武区\\\">宣武区</a></td>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=大兴区\\\">大兴区</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" /><a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=朝阳区\\\">&nbsp;朝阳区</a></td>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=海淀区\\\">海淀区</a></td>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=昌平区\\\">昌平区</a></td>\r\n	</tr>\r\n	<tr>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=丰台区\\\">丰台区</a></td>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=石景山区\\\">石景山区</a></td>\r\n		<td><img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo.php?classid=[!--self.classid--]&ph=1&myarea=其它\\\">其它</a></td>\r\n	</tr>\r\n</table>',0,0,0),(5,'infoclassnav','分类信息分类导航','<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"0\\\">\r\n  <tr>\r\n    <td bgcolor=\\\"#EEF1F4\\\">&nbsp;<img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo/?classid=10\\\"><strong>房屋信息</strong></a></td>\r\n  </tr> \r\n</table>\r\n<table width=\\\"96%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"4\\\">\r\n  <tr>\r\n    <td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=11\\\">房屋求租</a></td>\r\n    <td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=12\\\">房屋出租</a></td>\r\n  		<td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=15\\\">办公用房</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=13\\\">房屋求购</a></td>\r\n    <td><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=14\\\">房屋出售</a></td>\r\n  		<td><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=16\\\">旺铺门面</a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"4\\\" bgcolor=\\\"#EEF1F4\\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo/?classid=17\\\"><strong>跳蚤市场</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"96%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"4\\\">\r\n  <tr>\r\n    <td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=18\\\">电脑配件</a></td>\r\n    <td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=19\\\">电器数码</a></td>\r\n  		<td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=21\\\">居家用品</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=20\\\">通讯产品</a></td>\r\n    <td><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=21\\\"></a></td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#EEF1F4\\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo/?classid=22\\\"><strong>同城生活</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"96%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"4\\\">\r\n  <tr>\r\n    <td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=23\\\">本地新闻</a></td>\r\n    <td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=24\\\">购物打折</a></td>\r\n  		<td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=26\\\">便民告示</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=25\\\">旅游活动</a></td>\r\n    <td>&nbsp;</td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"4\\\" cellspacing=\\\"0\\\" bgcolor=\\\"#EEF1F4\\\">\r\n  <tr>\r\n    <td>&nbsp;<img src=\\\"[!--news.url--]e/data/images/msgnav.gif\\\" width=\\\"5\\\" height=\\\"5\\\" />&nbsp;<a href=\\\"[!--news.url--]e/action/ListInfo/?classid=27\\\"><strong>求职招聘</strong></a></td>\r\n  </tr>\r\n</table>\r\n<table width=\\\"96%\\\" border=\\\"0\\\" align=\\\"center\\\" cellpadding=\\\"0\\\" cellspacing=\\\"4\\\">\r\n  <tr>\r\n    <td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=28\\\">工程技术</a></td>\r\n    <td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=29\\\">财务会计</a></td>\r\n  		<td width=\\\"33%\\\"><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=31\\\">经营管理</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=30\\\">餐饮行业</a></td>\r\n    <td><a href=\\\"[!--news.url--]e/action/ListInfo/?classid=31\\\"></a></td>\r\n  		<td>&nbsp;</td>\r\n  </tr>\r\n</table>',0,0,0),(7,'pl','评论表单','<script>\r\n		  function CheckPl(obj)\r\n		  {\r\n		  if(obj.saytext.value==\\\"\\\")\r\n		  {\r\n		  alert(\\\"您没什么话要说吗？\\\");\r\n		  obj.saytext.focus();\r\n		  return false;\r\n		  }\r\n		  return true;\r\n		  }\r\n		  </script><form action=\\\"[!--news.url--]e/pl/doaction.php\\\" method=\\\"post\\\" name=\\\"saypl\\\" id=\\\"saypl\\\" onsubmit=\\\"return CheckPl(document.saypl)\\\">\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" id=\\\"plpost\\\">\r\n\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" class=\\\"title\\\">\r\n<tr>\r\n<td><strong>发表评论</strong></td>\r\n<td align=\\\"right\\\"><a href=\\\"[!--news.url--]e/pl/?classid=[!--classid--]&amp;id=[!--id--]\\\">共有<span><script type=\\\"text/javascript\\\" src=\\\"[!--news.url--]e/public/ViewClick/?classid=[!--classid--]&id=[!--id--]&down=2\\\"></script></span>条评论</a></td>\r\n</tr>\r\n</table>\r\n<table width=\\\"100%\\\" border=\\\"0\\\" cellspacing=\\\"10\\\" cellpadding=\\\"0\\\">\r\n<tr>\r\n<td><table width=\\\"100%\\\" border=\\\"0\\\" cellpadding=\\\"0\\\" cellspacing=\\\"2\\\">\r\n<tr>\r\n<td width=\\\"56%\\\" align=\\\"left\\\">用户名:\r\n<input name=\\\"username\\\" type=\\\"text\\\" class=\\\"inputText\\\" id=\\\"username\\\" value=\\\"\\\" size=\\\"16\\\" /></td>\r\n<td width=\\\"44%\\\" align=\\\"left\\\">密码:\r\n<input name=\\\"password\\\" type=\\\"password\\\" class=\\\"inputText\\\" id=\\\"password\\\" value=\\\"\\\" size=\\\"16\\\" /></td>\r\n</tr>\r\n<tr>\r\n<td align=\\\"left\\\">验证码:\r\n<input name=\\\"key\\\" type=\\\"text\\\" class=\\\"inputText\\\" size=\\\"10\\\" />\r\n<img src=\\\"[!--news.url--]e/ShowKey/?v=pl\\\" align=\\\"absmiddle\\\" name=\\\"plKeyImg\\\" id=\\\"plKeyImg\\\" onclick=\\\"plKeyImg.src=\\\'[!--news.url--]e/ShowKey/?v=pl&t=\\\'+Math.random()\\\" title=\\\"看不清楚,点击刷新\\\" /> </td>\r\n<td align=\\\"left\\\"><input name=\\\"nomember\\\" type=\\\"checkbox\\\" id=\\\"nomember\\\" value=\\\"1\\\" checked=\\\"checked\\\" />\r\n匿名发表</td>\r\n</tr>\r\n</table>\r\n<textarea name=\\\"saytext\\\" rows=\\\"6\\\" id=\\\"saytext\\\"></textarea><input name=\\\"imageField\\\" type=\\\"image\\\" src=\\\"[!--news.url--]e/data/images/postpl.gif\\\"/>\r\n<input name=\\\"id\\\" type=\\\"hidden\\\" id=\\\"id\\\" value=\\\"[!--id--]\\\" />\r\n<input name=\\\"classid\\\" type=\\\"hidden\\\" id=\\\"classid\\\" value=\\\"[!--classid--]\\\" />\r\n<input name=\\\"enews\\\" type=\\\"hidden\\\" id=\\\"enews\\\" value=\\\"AddPl\\\" />\r\n<input name=\\\"repid\\\" type=\\\"hidden\\\" id=\\\"repid\\\" value=\\\"0\\\" />\r\n<input type=\\\"hidden\\\" name=\\\"ecmsfrom\\\" value=\\\"[!--titleurl--]\\\"></td>\r\n</tr>\r\n</table>\r\n</td>\r\n</tr>\r\n</table></form>',0,0,0),(8,'menu','菜单导航',' <div class=\\\"navCont\\\">\r\n            <div class=\\\"navContBox clearfix\\\">\r\n                <div class=\\\"logo\\\"><a href=\\\"[!--news.url--]\\\"><img src=\\\"[!--news.url--]skin/stock/images/logo.png\\\"></a></div>\r\n                <div class=\\\"menu\\\">\r\n                    <ul>\r\n                        <li>\r\n                            <a href=\\\"[!--news.url--]\\\">首页</a>\r\n                        </li>\r\n                         [showclasstemp]\\\'0\\\',12,0,0[/showclasstemp]\r\n                    </ul>\r\n                </div>\r\n                <div class=\\\"sec\\\"><input type=\\\"text\\\" placeholder=\\\"热搜：<?=$public_r[\\\'add_search_title\\\']?>\\\" id=\\\"search_key\\\" value=\\\"<?php if(isset($_GET[\\\'key\\\'])) echo ehtmlspecialchars($_GET[\\\'key\\\']); ?>\\\"><img src=\\\"[!--news.url--]skin/stock/images/sec.png\\\"></div>\r\n            </div>\r\n        </div>',0,0,0),(9,'sidebar','侧边栏','<div class=\\\"contR\\\">\r\n                    <!--<div class=\\\"echarts box\\\">\r\n                        <ul id=\\\"title\\\" class=\\\"title boxL\\\">\r\n                            <li class=\\\"ho\\\"><img src=\\\"./images/echarts.jpg\\\"></li>\r\n                            <li><img src=\\\"./images/echarts.jpg\\\"></li>\r\n                            <li><img src=\\\"./images/echarts.jpg\\\"></li>\r\n                        </ul>\r\n                        <div id=\\\"wrap\\\" class=\\\"wrap\\\">\r\n                            <div class=\\\"active\\\">上证指数</div>\r\n                            <div>深证指数</div>\r\n                            <div>创业指数</div>\r\n                        </div>\r\n                    </div>-->\r\n\r\n                    <div class=\\\"hqpic\\\"><div class=\\\"hq_data\\\" id=\\\"hq_data\\\">\r\n<b>2882.3<em>-73.41&nbsp;&nbsp;-2.48%</em></b>\r\n<a href=\\\"http://hq.gucheng.com/SH000001/\\\" id=\\\"hqCanvas\\\" target=\\\"_blank\\\"></a>\r\n</div>\r\n<ul id=\\\"stockUl\\\"><li><a href=\\\"http://hq.gucheng.com/SH000001/\\\" target=\\\"_blank\\\" class=\\\"on\\\">上证指数</a></li><li><a href=\\\"http://hq.gucheng.com/SZ399001/\\\" target=\\\"_blank\\\">深证成指</a></li><li><a href=\\\"http://hq.gucheng.com/SZ399006/\\\" target=\\\"_blank\\\">创业板指</a></li></ul>\r\n</div>\r\n\r\n\r\n\r\n                    <div class=\\\"recommend\\\">\r\n                        <div class=\\\"recommendTitle\\\">推荐阅读</div>\r\n                        [e:loop={\\\"select title,titleurl,smalltext from {$dbtbpre}ecms_news where isgood=1 order by newstime desc limit 6\\\",0,24,0}]\r\n                            <div class=\\\"reListItem\\\">\r\n                                <div class=\\\"reListItmeTitle\\\"><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></div>\r\n                                <div class=\\\"reListCont\\\">\r\n                                    <?=esub($bqr[\\\'smalltext\\\'],80)?>\r\n                                </div>\r\n                            </div>\r\n                        [/e:loop]\r\n                    </div>\r\n                    <div class=\\\"focusing\\\">\r\n                        <div class=\\\"bigImg imgAll\\\"><script src=\\\"/d/js/acmsd/thea2.js\\\"></script></div>\r\n\r\n                        [e:loop={\\\"select title,titleurl,titlepic,newstime,titlepic_alt from {$dbtbpre}ecms_news where isgood=2 order by newstime desc limit 3\\\",0,24,0}]\r\n                             <div class=\\\"focusingItem box\\\">\r\n                            <div class=\\\"focusingImg imgAll\\\"><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><img src=\\\"<?=$bqr[\\\'titlepic\\\']?>\\\" width=\\\"135px\\\" height=\\\"75px\\\" alt=\\\"<?=$bqr[\\\'titlepic_alt\\\']?>\\\"></a></div>\r\n                            <div class=\\\"focusingCont boxL\\\">\r\n                                <p><a href=\\\"<?=$bqr[\\\'titleurl\\\']?>\\\"><?=$bqr[\\\'title\\\']?></a></p>\r\n                                <span><?=date(\\\'Y-m-d H:i\\\',$bqr[\\\'newstime\\\'])?></span>\r\n                            </div>\r\n                        </div>\r\n                        [/e:loop]\r\n                    </div>\r\n                    <div class=\\\"emailUrl box\\\">\r\n                        <p class=\\\"boxL emailImg\\\"><?=$public_r[\\\'add_law_email\\\']?></p>\r\n                        <span><a href=\\\"javascript:;\\\">法律声明</a></span>\r\n                    </div>\r\n                    <div class=\\\"recommend\\\">\r\n                        <div class=\\\"recommendTitle\\\">友情链接</div>\r\n                        <div class=\\\"fdsLink clearfix\\\">\r\n                            <ul>\r\n                                [e:loop={\\\"select lname,lurl from {$dbtbpre}enewslink order by myorder\\\",0,24,0}]\r\n                                    <li><a href=\\\"<?=$bqr[\\\'lurl\\\']?>\\\"><?=$bqr[\\\'lname\\\']?></a></li>\r\n                                [/e:loop]\r\n                            </ul>\r\n                        </div>\r\n                    </div>\r\n\r\n\r\n                </div>',0,0,0);
/*!40000 ALTER TABLE `gc_enewstempvar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewstempvarclass`
--

DROP TABLE IF EXISTS `gc_enewstempvarclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewstempvarclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewstempvarclass`
--

LOCK TABLES `gc_enewstempvarclass` WRITE;
/*!40000 ALTER TABLE `gc_enewstempvarclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewstempvarclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewstogzts`
--

DROP TABLE IF EXISTS `gc_enewstogzts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewstogzts` (
  `togid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `searchf` varchar(255) NOT NULL DEFAULT '',
  `query` text NOT NULL,
  `specialsearch` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `retype` tinyint(1) NOT NULL DEFAULT '0',
  `startday` varchar(20) NOT NULL DEFAULT '',
  `endday` varchar(20) NOT NULL DEFAULT '',
  `startid` int(10) unsigned NOT NULL DEFAULT '0',
  `endid` int(10) unsigned NOT NULL DEFAULT '0',
  `pline` int(11) NOT NULL DEFAULT '0',
  `doecmszt` tinyint(1) NOT NULL DEFAULT '0',
  `togztname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`togid`),
  KEY `togztname` (`togztname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewstogzts`
--

LOCK TABLES `gc_enewstogzts` WRITE;
/*!40000 ALTER TABLE `gc_enewstogzts` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewstogzts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsuser`
--

DROP TABLE IF EXISTS `gc_enewsuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsuser` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `rnd` varchar(20) NOT NULL DEFAULT '',
  `adminclass` mediumtext NOT NULL,
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `styleid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filelevel` tinyint(1) NOT NULL DEFAULT '0',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `loginnum` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pretime` int(10) unsigned NOT NULL DEFAULT '0',
  `preip` varchar(20) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addip` varchar(20) NOT NULL DEFAULT '',
  `userprikey` varchar(50) NOT NULL DEFAULT '',
  `salt2` varchar(20) NOT NULL DEFAULT '',
  `lastipport` varchar(6) NOT NULL DEFAULT '',
  `preipport` varchar(6) NOT NULL DEFAULT '',
  `addipport` varchar(6) NOT NULL DEFAULT '',
  `uprnd` varchar(32) NOT NULL DEFAULT '',
  `wname` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  `wxno` varchar(80) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsuser`
--

LOCK TABLES `gc_enewsuser` WRITE;
/*!40000 ALTER TABLE `gc_enewsuser` DISABLE KEYS */;
INSERT INTO `gc_enewsuser` VALUES (1,'admin','36d8bec849536972242d6a36b4234ce4','Q4vnlZgV8tlibBqAqhni','',1,0,1,0,'FibFu9C6',9,1558444599,'127.0.0.1','','',0,1558399441,'127.0.0.1',1558066311,'127.0.0.1','TgGojiY469bxFeYKR9dHwYZoNvGKvlsqlYncarvYTzJwZRlg','qIsXaqsuaTi83hYzj793','17380','46744','54890','','','','',''),(2,'yaoweibo','ad550103dbd952caa7db8ce52b9daa2d','cpMbqDTVIPkMz7tfDrbN','|',1,0,1,0,'1MuOXne5',1,1558487266,'127.0.0.1','','',0,0,'',1558316845,'127.0.0.1','qWsTQIe1GPQAqdWs9LT4vpoAANot1TLZzozamWFFrXUWMcmY','493UXQCU4IesYbi9p2pb','30622','55072','55072','','','','','');
/*!40000 ALTER TABLE `gc_enewsuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsuseradd`
--

DROP TABLE IF EXISTS `gc_enewsuseradd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsuseradd` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `equestion` tinyint(4) NOT NULL DEFAULT '0',
  `eanswer` varchar(32) NOT NULL DEFAULT '',
  `openip` text NOT NULL,
  `certkey` varchar(60) NOT NULL DEFAULT '',
  `certtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsuseradd`
--

LOCK TABLES `gc_enewsuseradd` WRITE;
/*!40000 ALTER TABLE `gc_enewsuseradd` DISABLE KEYS */;
INSERT INTO `gc_enewsuseradd` VALUES (1,0,'','','',0),(2,0,'','','',0);
/*!40000 ALTER TABLE `gc_enewsuseradd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsuserclass`
--

DROP TABLE IF EXISTS `gc_enewsuserclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsuserclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsuserclass`
--

LOCK TABLES `gc_enewsuserclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsuserclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsuserclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsuserjs`
--

DROP TABLE IF EXISTS `gc_enewsuserjs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsuserjs` (
  `jsid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `jsname` varchar(60) NOT NULL DEFAULT '',
  `jssql` text NOT NULL,
  `jstempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `jsfilename` varchar(120) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsuserjs`
--

LOCK TABLES `gc_enewsuserjs` WRITE;
/*!40000 ALTER TABLE `gc_enewsuserjs` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsuserjs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsuserjsclass`
--

DROP TABLE IF EXISTS `gc_enewsuserjsclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsuserjsclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsuserjsclass`
--

LOCK TABLES `gc_enewsuserjsclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsuserjsclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsuserjsclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsuserlist`
--

DROP TABLE IF EXISTS `gc_enewsuserlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsuserlist` (
  `listid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `listname` varchar(60) NOT NULL DEFAULT '',
  `pagetitle` varchar(120) NOT NULL DEFAULT '',
  `filepath` varchar(120) NOT NULL DEFAULT '',
  `filetype` varchar(12) NOT NULL DEFAULT '',
  `totalsql` text NOT NULL,
  `listsql` text NOT NULL,
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `lencord` int(11) NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pagekeywords` varchar(255) NOT NULL DEFAULT '',
  `pagedescription` varchar(255) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`listid`),
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsuserlist`
--

LOCK TABLES `gc_enewsuserlist` WRITE;
/*!40000 ALTER TABLE `gc_enewsuserlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsuserlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsuserlistclass`
--

DROP TABLE IF EXISTS `gc_enewsuserlistclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsuserlistclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsuserlistclass`
--

LOCK TABLES `gc_enewsuserlistclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsuserlistclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsuserlistclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsuserloginck`
--

DROP TABLE IF EXISTS `gc_enewsuserloginck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsuserloginck` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `andauth` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsuserloginck`
--

LOCK TABLES `gc_enewsuserloginck` WRITE;
/*!40000 ALTER TABLE `gc_enewsuserloginck` DISABLE KEYS */;
INSERT INTO `gc_enewsuserloginck` VALUES (1,'025e0afe05b5118e24a3d6ca39238767'),(2,'f87344548242c8564fd487bf47d4e73c');
/*!40000 ALTER TABLE `gc_enewsuserloginck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsvg`
--

DROP TABLE IF EXISTS `gc_enewsvg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsvg` (
  `vgid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gname` char(60) NOT NULL DEFAULT '',
  `gids` char(255) NOT NULL DEFAULT '',
  `ingids` char(255) NOT NULL DEFAULT '',
  `agids` char(255) NOT NULL DEFAULT '',
  `mlist` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vgid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsvg`
--

LOCK TABLES `gc_enewsvg` WRITE;
/*!40000 ALTER TABLE `gc_enewsvg` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsvg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsvglist`
--

DROP TABLE IF EXISTS `gc_enewsvglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsvglist` (
  `vgid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `outtime` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `vgid` (`vgid`),
  KEY `userid` (`userid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsvglist`
--

LOCK TABLES `gc_enewsvglist` WRITE;
/*!40000 ALTER TABLE `gc_enewsvglist` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsvglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsvote`
--

DROP TABLE IF EXISTS `gc_enewsvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsvote` (
  `voteid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `votenum` int(10) unsigned NOT NULL DEFAULT '0',
  `voteip` mediumtext NOT NULL,
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `votetime` int(10) unsigned NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `addtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`voteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsvote`
--

LOCK TABLES `gc_enewsvote` WRITE;
/*!40000 ALTER TABLE `gc_enewsvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsvote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsvotemod`
--

DROP TABLE IF EXISTS `gc_enewsvotemod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsvotemod` (
  `voteid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `votetext` text NOT NULL,
  `voteclass` tinyint(1) NOT NULL DEFAULT '0',
  `doip` tinyint(1) NOT NULL DEFAULT '0',
  `dotime` date NOT NULL DEFAULT '0000-00-00',
  `tempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `votenum` int(10) unsigned NOT NULL DEFAULT '0',
  `ysvotename` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`voteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsvotemod`
--

LOCK TABLES `gc_enewsvotemod` WRITE;
/*!40000 ALTER TABLE `gc_enewsvotemod` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsvotemod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsvotetemp`
--

DROP TABLE IF EXISTS `gc_enewsvotetemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsvotetemp` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tempname` varchar(60) NOT NULL DEFAULT '',
  `temptext` mediumtext NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsvotetemp`
--

LOCK TABLES `gc_enewsvotetemp` WRITE;
/*!40000 ALTER TABLE `gc_enewsvotetemp` DISABLE KEYS */;
INSERT INTO `gc_enewsvotetemp` VALUES (1,'默认投票模板','<table width=100% border=0 align=center cellpadding=3 cellspacing=0><form name=enewsvote method=POST action=\'[!--vote.action--]\' target=_blank><tr><td><strong>[!--title--]</strong></td></tr><input type=hidden name=voteid value=\'[!--voteid--]\'><input type=hidden name=enews value=AddVote>\r\n[!--empirenews.listtemp--]\r\n<tr><td>[!--vote.box--]&nbsp;[!--vote.name--]</td></tr>\r\n[!--empirenews.listtemp--]\r\n<tr><td align=center><input type=submit name=submit value=投票>&nbsp;&nbsp;<input type=button name=button value=查看结果 onclick=javascript:window.open(\'[!--vote.view--]\',\'\',\'width=[!--width--],height=[!--height--],scrollbars=yes\');></td></tr></form></table>'),(2,'默认信息投票模板','<table width=\\\'100%\\\' border=0 align=center cellpadding=3 cellspacing=0><form name=enewsvote method=POST action=\\\'[!--news.url--]e/enews/index.php\\\' target=_blank><tr><td><strong>[!--title--]</strong></td></tr><input type=hidden name=id value=\\\'[!--id--]\\\'><input type=hidden name=classid value=\\\'[!--classid--]\\\'><input type=hidden name=enews value=AddInfoVote>\r\n[!--empirenews.listtemp--]\r\n<tr><td>[!--vote.box--]&nbsp;[!--vote.name--]</td></tr>\r\n[!--empirenews.listtemp--]\r\n<tr><td align=center><input type=submit name=submit value=投票>&nbsp;&nbsp;<input type=button name=button value=查看结果 onclick=javascript:window.open(\\\'[!--news.url--]e/public/vote/?classid=[!--classid--]&id=[!--id--]\\\',\\\'\\\',\\\'width=[!--width--],height=[!--height--],scrollbars=yes\\\');></td></tr></form></table>');
/*!40000 ALTER TABLE `gc_enewsvotetemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewswapstyle`
--

DROP TABLE IF EXISTS `gc_enewswapstyle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewswapstyle` (
  `styleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `stylename` varchar(60) NOT NULL DEFAULT '',
  `path` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`styleid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewswapstyle`
--

LOCK TABLES `gc_enewswapstyle` WRITE;
/*!40000 ALTER TABLE `gc_enewswapstyle` DISABLE KEYS */;
INSERT INTO `gc_enewswapstyle` VALUES (1,'新闻模板',1),(2,'分类信息模板',2),(3,'股票',3);
/*!40000 ALTER TABLE `gc_enewswapstyle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewswfinfo`
--

DROP TABLE IF EXISTS `gc_enewswfinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewswfinfo` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wfid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `checknum` tinyint(4) NOT NULL DEFAULT '0',
  `tstatus` varchar(30) NOT NULL DEFAULT '0',
  `checktno` tinyint(4) NOT NULL DEFAULT '0',
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewswfinfo`
--

LOCK TABLES `gc_enewswfinfo` WRITE;
/*!40000 ALTER TABLE `gc_enewswfinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewswfinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewswfinfolog`
--

DROP TABLE IF EXISTS `gc_enewswfinfolog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewswfinfolog` (
  `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wfid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `checktime` int(10) unsigned NOT NULL DEFAULT '0',
  `checktext` text NOT NULL,
  `checknum` tinyint(4) NOT NULL DEFAULT '0',
  `checktype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logid`),
  KEY `id` (`id`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewswfinfolog`
--

LOCK TABLES `gc_enewswfinfolog` WRITE;
/*!40000 ALTER TABLE `gc_enewswfinfolog` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewswfinfolog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewswords`
--

DROP TABLE IF EXISTS `gc_enewswords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewswords` (
  `wordid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `oldword` varchar(255) NOT NULL DEFAULT '',
  `newword` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`wordid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewswords`
--

LOCK TABLES `gc_enewswords` WRITE;
/*!40000 ALTER TABLE `gc_enewswords` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewswords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsworkflow`
--

DROP TABLE IF EXISTS `gc_enewsworkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsworkflow` (
  `wfid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `wfname` varchar(60) NOT NULL DEFAULT '',
  `wftext` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `adduser` varchar(30) NOT NULL DEFAULT '',
  `canedit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsworkflow`
--

LOCK TABLES `gc_enewsworkflow` WRITE;
/*!40000 ALTER TABLE `gc_enewsworkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsworkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsworkflowitem`
--

DROP TABLE IF EXISTS `gc_enewsworkflowitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsworkflowitem` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tname` varchar(60) NOT NULL DEFAULT '',
  `tno` int(11) NOT NULL DEFAULT '0',
  `ttext` varchar(255) NOT NULL DEFAULT '',
  `groupid` text NOT NULL,
  `userclass` text NOT NULL,
  `username` text NOT NULL,
  `lztype` tinyint(1) NOT NULL DEFAULT '0',
  `tbdo` int(10) unsigned NOT NULL DEFAULT '0',
  `tddo` int(10) unsigned NOT NULL DEFAULT '0',
  `tstatus` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`),
  KEY `wfid` (`wfid`),
  KEY `tno` (`tno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsworkflowitem`
--

LOCK TABLES `gc_enewsworkflowitem` WRITE;
/*!40000 ALTER TABLE `gc_enewsworkflowitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsworkflowitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewswriter`
--

DROP TABLE IF EXISTS `gc_enewswriter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewswriter` (
  `wid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `writer` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`wid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewswriter`
--

LOCK TABLES `gc_enewswriter` WRITE;
/*!40000 ALTER TABLE `gc_enewswriter` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewswriter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsyh`
--

DROP TABLE IF EXISTS `gc_enewsyh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsyh` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `yhname` varchar(30) NOT NULL DEFAULT '',
  `yhtext` varchar(255) NOT NULL DEFAULT '',
  `hlist` int(11) NOT NULL DEFAULT '0',
  `qlist` int(11) NOT NULL DEFAULT '0',
  `bqnew` int(11) NOT NULL DEFAULT '0',
  `bqhot` int(11) NOT NULL DEFAULT '0',
  `bqpl` int(11) NOT NULL DEFAULT '0',
  `bqgood` int(11) NOT NULL DEFAULT '0',
  `bqfirst` int(11) NOT NULL DEFAULT '0',
  `bqdown` int(11) NOT NULL DEFAULT '0',
  `otherlink` int(11) NOT NULL DEFAULT '0',
  `qmlist` int(11) NOT NULL DEFAULT '0',
  `dobq` tinyint(1) NOT NULL DEFAULT '0',
  `dojs` tinyint(1) NOT NULL DEFAULT '0',
  `dosbq` tinyint(1) NOT NULL DEFAULT '0',
  `rehtml` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsyh`
--

LOCK TABLES `gc_enewsyh` WRITE;
/*!40000 ALTER TABLE `gc_enewsyh` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsyh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewszt`
--

DROP TABLE IF EXISTS `gc_enewszt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewszt` (
  `ztid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ztname` varchar(60) NOT NULL DEFAULT '',
  `onclick` int(10) unsigned NOT NULL DEFAULT '0',
  `ztnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ztpath` varchar(255) NOT NULL DEFAULT '',
  `zttype` varchar(10) NOT NULL DEFAULT '',
  `zturl` varchar(200) NOT NULL DEFAULT '',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `maxnum` int(11) NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `ztimg` varchar(255) NOT NULL DEFAULT '',
  `zcid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `showzt` tinyint(1) NOT NULL DEFAULT '0',
  `ztpagekey` varchar(255) NOT NULL DEFAULT '',
  `classtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usezt` tinyint(1) NOT NULL DEFAULT '0',
  `yhid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `checkpl` tinyint(1) NOT NULL DEFAULT '0',
  `restb` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `usernames` varchar(255) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `pltempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ztid`),
  KEY `classid` (`classid`),
  KEY `zcid` (`zcid`),
  KEY `usezt` (`usezt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewszt`
--

LOCK TABLES `gc_enewszt` WRITE;
/*!40000 ALTER TABLE `gc_enewszt` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewszt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsztadd`
--

DROP TABLE IF EXISTS `gc_enewsztadd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsztadd` (
  `ztid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  PRIMARY KEY (`ztid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsztadd`
--

LOCK TABLES `gc_enewsztadd` WRITE;
/*!40000 ALTER TABLE `gc_enewsztadd` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsztadd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsztclass`
--

DROP TABLE IF EXISTS `gc_enewsztclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsztclass` (
  `classid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsztclass`
--

LOCK TABLES `gc_enewsztclass` WRITE;
/*!40000 ALTER TABLE `gc_enewsztclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsztclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsztf`
--

DROP TABLE IF EXISTS `gc_enewsztf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsztf` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `f` varchar(30) NOT NULL DEFAULT '',
  `fname` varchar(30) NOT NULL DEFAULT '',
  `fform` varchar(20) NOT NULL DEFAULT '',
  `fhtml` mediumtext NOT NULL,
  `fzs` varchar(255) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ftype` varchar(30) NOT NULL DEFAULT '',
  `flen` varchar(20) NOT NULL DEFAULT '',
  `fvalue` text NOT NULL,
  `fformsize` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsztf`
--

LOCK TABLES `gc_enewsztf` WRITE;
/*!40000 ALTER TABLE `gc_enewsztf` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsztf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewsztinfo`
--

DROP TABLE IF EXISTS `gc_enewsztinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewsztinfo` (
  `zid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ztid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `classid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `newstime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isgood` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`zid`),
  KEY `ztid` (`ztid`),
  KEY `cid` (`cid`),
  KEY `classid` (`classid`),
  KEY `id` (`id`),
  KEY `newstime` (`newstime`),
  KEY `mid` (`mid`),
  KEY `isgood` (`isgood`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewsztinfo`
--

LOCK TABLES `gc_enewsztinfo` WRITE;
/*!40000 ALTER TABLE `gc_enewsztinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewsztinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewszttype`
--

DROP TABLE IF EXISTS `gc_enewszttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewszttype` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ztid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cname` varchar(20) NOT NULL DEFAULT '',
  `myorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `islist` tinyint(1) NOT NULL DEFAULT '0',
  `listtempid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxnum` int(10) unsigned NOT NULL DEFAULT '0',
  `tnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reorder` varchar(50) NOT NULL DEFAULT '',
  `ttype` varchar(10) NOT NULL DEFAULT '',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `tfile` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`),
  KEY `ztid` (`ztid`),
  KEY `myorder` (`myorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewszttype`
--

LOCK TABLES `gc_enewszttype` WRITE;
/*!40000 ALTER TABLE `gc_enewszttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewszttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc_enewszttypeadd`
--

DROP TABLE IF EXISTS `gc_enewszttypeadd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gc_enewszttypeadd` (
  `cid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `classtext` mediumtext NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc_enewszttypeadd`
--

LOCK TABLES `gc_enewszttypeadd` WRITE;
/*!40000 ALTER TABLE `gc_enewszttypeadd` DISABLE KEYS */;
/*!40000 ALTER TABLE `gc_enewszttypeadd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-22 10:53:54
