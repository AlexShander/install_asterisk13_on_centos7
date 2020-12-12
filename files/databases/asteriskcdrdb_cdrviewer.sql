-- MySQL dump 10.14  Distrib 5.5.65-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: asteriskcdrdb
-- ------------------------------------------------------
-- Server version	5.5.65-MariaDB

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
-- Table structure for table `cdr`
--

DROP TABLE IF EXISTS `cdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdr` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `calldate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clid` varchar(80) NOT NULL DEFAULT '',
  `src` varchar(80) NOT NULL DEFAULT '',
  `dst` varchar(80) NOT NULL DEFAULT '',
  `realdst` varchar(80) NOT NULL DEFAULT '',
  `dcontext` varchar(80) NOT NULL DEFAULT '',
  `channel` varchar(80) NOT NULL DEFAULT '',
  `dstchannel` varchar(80) NOT NULL DEFAULT '',
  `lastapp` varchar(80) NOT NULL DEFAULT '',
  `lastdata` varchar(80) NOT NULL DEFAULT '',
  `start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `answer` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `duration` int(11) NOT NULL DEFAULT '0',
  `billsec` int(11) NOT NULL DEFAULT '0',
  `disposition` varchar(45) NOT NULL DEFAULT '',
  `amaflags` int(11) NOT NULL DEFAULT '0',
  `remoteip` varchar(60) NOT NULL DEFAULT '',
  `accountcode` varchar(20) NOT NULL DEFAULT '',
  `peeraccount` varchar(20) NOT NULL DEFAULT '',
  `uniqueid` varchar(32) NOT NULL DEFAULT '',
  `userfield` varchar(255) NOT NULL DEFAULT '',
  `did` varchar(50) NOT NULL DEFAULT '',
  `linkedid` varchar(32) NOT NULL DEFAULT '',
  `sequence` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) DEFAULT 'none',
  PRIMARY KEY (`id`),
  KEY `calldate` (`calldate`),
  KEY `src` (`src`),
  KEY `dst` (`dst`),
  KEY `accountcode` (`accountcode`),
  KEY `uniqueid` (`uniqueid`),
  KEY `dcontext` (`dcontext`),
  KEY `clid` (`clid`),
  KEY `did` (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=38388 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`asterisk`@`localhost`*/ /*!50003 TRIGGER `t_cdr` BEFORE INSERT ON `cdr`
 FOR EACH ROW BEGIN
        IF ((NEW.dst = 's' OR NEW.dst = '~~s~~') AND NEW.realdst != '') THEN
                SET NEW.dst = NEW.realdst;
        END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cdr_viewer`
--

DROP TABLE IF EXISTS `cdr_viewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdr_viewer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `calldate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clid` varchar(80) NOT NULL DEFAULT '',
  `src` varchar(80) NOT NULL DEFAULT '',
  `dst` varchar(80) NOT NULL DEFAULT '',
  `realdst` varchar(80) NOT NULL DEFAULT '',
  `dcontext` varchar(80) NOT NULL DEFAULT '',
  `channel` varchar(80) NOT NULL DEFAULT '',
  `dstchannel` varchar(80) NOT NULL DEFAULT '',
  `lastapp` varchar(80) NOT NULL DEFAULT '',
  `lastdata` varchar(80) NOT NULL DEFAULT '',
  `start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `answer` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `duration` int(11) NOT NULL DEFAULT '0',
  `billsec` int(11) NOT NULL DEFAULT '0',
  `disposition` varchar(45) NOT NULL DEFAULT '',
  `amaflags` int(11) NOT NULL DEFAULT '0',
  `remoteip` varchar(60) NOT NULL DEFAULT '',
  `accountcode` varchar(20) NOT NULL DEFAULT '',
  `peeraccount` varchar(20) NOT NULL DEFAULT '',
  `uniqueid` varchar(32) NOT NULL DEFAULT '',
  `userfield` varchar(255) NOT NULL DEFAULT '',
  `did` varchar(50) NOT NULL DEFAULT '',
  `linkedid` varchar(32) NOT NULL DEFAULT '',
  `sequence` int(11) NOT NULL DEFAULT '0',
  `recordingfile` varchar(255) DEFAULT 'none',
  PRIMARY KEY (`id`),
  KEY `calldate` (`calldate`),
  KEY `src` (`src`),
  KEY `dst` (`dst`),
  KEY `accountcode` (`accountcode`),
  KEY `uniqueid` (`uniqueid`),
  KEY `dcontext` (`dcontext`),
  KEY `clid` (`clid`),
  KEY `did` (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=38387 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opeartors`
--

DROP TABLE IF EXISTS `opeartors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opeartors` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `sip` varchar(3) NOT NULL,
  `mobile` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `queue_log`
--

DROP TABLE IF EXISTS `queue_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queue_log` (
  `time` varchar(32) DEFAULT NULL,
  `callid` char(64) DEFAULT NULL,
  `queuename` char(64) DEFAULT NULL,
  `agent` char(64) DEFAULT NULL,
  `event` char(32) DEFAULT NULL,
  `data` char(64) DEFAULT NULL,
  `data1` char(64) DEFAULT NULL,
  `data2` char(64) DEFAULT NULL,
  `data3` char(64) DEFAULT NULL,
  `data4` char(64) DEFAULT NULL,
  `data5` char(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `CallCenterLog` AFTER INSERT ON `queue_log`
FOR EACH ROW
BEGIN
   IF (NEW.event = 'ENTERQUEUE')  THEN
   BEGIN
   UPDATE asteriskcdrdb.queue_log_for_excel set  `CLID_Client` = NEW.data2 , `queuename` =  NEW.queuename where callid =NEW.callid ;
   END;
  END IF;

  IF (NEW.event = 'DID')  AND (NEW.data1 = '') THEN
   BEGIN
   Insert into asteriskcdrdb.queue_log_for_excel (`time`, `callid`, `queuename`, `DID`) VALUES (STR_TO_DATE(NEW.time,'%Y-%m-%d %H:%i:%s.'),NEW.callid , NEW.queuename , 'CALLBACK');
   END;
  END IF;

  IF (NEW.event = 'DID')  AND (NEW.data1 != '') THEN
   BEGIN
   Insert into asteriskcdrdb.queue_log_for_excel (`time`, `callid`, `queuename`, `DID`) VALUES (STR_TO_DATE(NEW.time,'%Y-%m-%d %H:%i:%s.'),NEW.callid , NEW.queuename , NEW.data1);
   END;
  END IF;

   IF (NEW.event = 'COMPLETECALLER')  OR (NEW.event = 'COMPLETEAGENT')  THEN
   BEGIN
   UPDATE asteriskcdrdb.queue_log_for_excel set  `Wait_Time` = NEW.data1, `billsec` = NEW.data2  where callid =NEW.callid;
   END;
  END IF;


   IF (NEW.event = 'ABANDON')  THEN
   BEGIN
   UPDATE asteriskcdrdb.queue_log_for_excel set  `Wait_Time` = NEW.data3, `event` = 'NOANSWER' where callid =NEW.callid;
   END;
  END IF;

   IF (NEW.event = 'CONNECT')  THEN
   BEGIN
   UPDATE asteriskcdrdb.queue_log_for_excel set  `Wait_Time` = NEW.data1, `event` = 'ANSWER', `agent` = NEW.agent where callid =NEW.callid;
   END;
  END IF;

  IF (NEW.event = 'TRANSFER') THEN
   BEGIN
   UPDATE asteriskcdrdb.queue_log_for_excel set  `Wait_Time` = NEW.data3, `billsec` = NEW.data4  where callid =NEW.callid;
   END;
  END IF;

   IF (NEW.event = 'EXITWITHTIMEOUT')  THEN
   BEGIN
   UPDATE asteriskcdrdb.queue_log_for_excel set  `Wait_Time` = NEW.data3, `event` = 'NOANSWER' where callid =NEW.callid;
   END;
  END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `queue_log_for_excel`
--

DROP TABLE IF EXISTS `queue_log_for_excel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queue_log_for_excel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `callid` varchar(32) NOT NULL DEFAULT '',
  `queuename` varchar(32) NOT NULL DEFAULT '',
  `agent` varchar(32) NOT NULL DEFAULT '',
  `event` varchar(32) NOT NULL DEFAULT '',
  `billsec` int(11) NOT NULL DEFAULT '0',
  `DID` varchar(32) NOT NULL DEFAULT '',
  `CLID_Client` varchar(32) NOT NULL DEFAULT '',
  `Wait_Time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10177 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `time_dimension`
--

DROP TABLE IF EXISTS `time_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_dimension` (
  `id` int(11) NOT NULL,
  `db_date` date NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `quarter` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `day_name` varchar(9) NOT NULL,
  `month_name` varchar(9) NOT NULL,
  `holiday_flag` char(1) DEFAULT 'f',
  `weekend_flag` char(1) DEFAULT 'f',
  `event` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `td_ymd_idx` (`year`,`month`,`day`),
  UNIQUE KEY `td_dbdate_idx` (`db_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-28 21:11:06
