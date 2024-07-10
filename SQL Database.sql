-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.30-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema evchargestation
--

CREATE DATABASE IF NOT EXISTS evchargestation;
USE evchargestation;

--
-- Definition of table `bookevstation`
--

DROP TABLE IF EXISTS `bookevstation`;
CREATE TABLE `bookevstation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `vehicalname` varchar(45) NOT NULL,
  `vehicalno` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `area` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `accountname` varchar(45) NOT NULL,
  `accountno` varchar(45) NOT NULL,
  `ifsc` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `ownername` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookevstation`
--

/*!40000 ALTER TABLE `bookevstation` DISABLE KEYS */;
INSERT INTO `bookevstation` (`id`,`name`,`vehicalname`,`vehicalno`,`city`,`area`,`time`,`date`,`accountname`,`accountno`,`ifsc`,`amount`,`ownername`,`status`) VALUES 
 (1,'Abc','Nexa','MH-12 VB 1245','Pune','Deccan','04:00','2024-01-09','Abc','123456','BOM1254','500','Pending',''),
 (2,'Abc','Abcd','MH-12 VB 1246','Pune','Ganeshkhind','02:00','2024-01-17','Abc','123456','BOM1254','500','Pending',''),
 (3,'Abc','Nexa','MH-12 VB 1245','Pune','Deccan','12:00','2024-03-28','Bank of Maharashtra','Pune','123456','BOM1254','Pradip','Pending');
/*!40000 ALTER TABLE `bookevstation` ENABLE KEYS */;


--
-- Definition of table `create_evstation`
--

DROP TABLE IF EXISTS `create_evstation`;
CREATE TABLE `create_evstation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ownername` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `area` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `path` varchar(20000) NOT NULL,
  `mobileno` varchar(45) NOT NULL,
  `slot` varchar(45) NOT NULL,
  `capacity` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `create_evstation`
--

/*!40000 ALTER TABLE `create_evstation` DISABLE KEYS */;
INSERT INTO `create_evstation` (`id`,`ownername`,`address`,`area`,`city`,`path`,`mobileno`,`slot`,`capacity`,`status`) VALUES 
 (2,'Kedar','Abc,Near Warje','Warje','Pune','https://www.google.com/maps/place/Warje,+Pune,+Maharashtra/@18.4844768,73.7738079,14z/data=!3m1!4b1!4m6!3m5!1s0x3bc2bfcd3f188b95:0x39ee701b0b5d2531!8m2!3d18.4864727!4d73.796834!16s%2Fm%2F04dzcth?entry=ttu','9768594215','15','500','Active'),
 (3,'Kedar','Jio Bp pulse','Ganeshkhind','Pune','https://www.google.com/maps/dir/Jio-bp+pulse+Charging+Station/bp+pulse+Charging+Station,+WESTEND+MALL+1st+Floor+parihar+chowk,+Aundh,+Pune,+Maharashtra+411007/@18.4890585,73.7938004,14z/data=!3m1!5s0x3bc2bf2fdc6bcc9f:0x45b54fb303ef79b2!4m14!4m13!1m5!1m1!1s0x3bc2bfb2c8933909:0x6fde0ff7b31f85de!2m2!1d73.8297687!2d18.5002338!1m5!1m1!1s0x3bc2bff714d6dd0b:0xb9abc04339cec414!2m2!1d73.8070911!2d18.5622374!3e9?entry=ttu','9768594215','20','500','Active');
/*!40000 ALTER TABLE `create_evstation` ENABLE KEYS */;


--
-- Definition of table `ev_bunk`
--

DROP TABLE IF EXISTS `ev_bunk`;
CREATE TABLE `ev_bunk` (
  `bunkid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bunklocation` varchar(45) NOT NULL,
  `bunkarea` varchar(45) NOT NULL,
  `slot` varchar(45) NOT NULL,
  `capacity` varchar(45) NOT NULL,
  `chargetime` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`bunkid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ev_bunk`
--

/*!40000 ALTER TABLE `ev_bunk` DISABLE KEYS */;
INSERT INTO `ev_bunk` (`bunkid`,`bunklocation`,`bunkarea`,`slot`,`capacity`,`chargetime`,`status`) VALUES 
 (1,'PUNE','WARJE','4','240V','2 HOUR','Active'),
 (2,'Pune','hadapser','2','360w','1hours','Active'),
 (3,'warje','warje','10','200','2','Active'),
 (4,'Kolhewadi','Khadakwasla','10','200','1','Active');
/*!40000 ALTER TABLE `ev_bunk` ENABLE KEYS */;


--
-- Definition of table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `feedback` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Definition of table `owner`
--

DROP TABLE IF EXISTS `owner`;
CREATE TABLE `owner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobileno` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `bankname` varchar(45) NOT NULL,
  `bankaddr` varchar(45) NOT NULL,
  `accountno` varchar(45) NOT NULL,
  `ifsc` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` (`id`,`name`,`address`,`email`,`mobileno`,`dob`,`password`,`bankname`,`bankaddr`,`accountno`,`ifsc`,`status`) VALUES 
 (1,'Kedar','Pune','kedar@gmail.com','9768594215','1990-02-02','Kedar@123','Active','','','',''),
 (2,'Pradip','Pune','pradip@gmail.com','9638527411','1996-02-05','Pradip@123','Bank of Maharashtra','Pune','123456','BOM1254','Active');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;


--
-- Definition of table `search`
--

DROP TABLE IF EXISTS `search`;
CREATE TABLE `search` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bunklocation` varchar(45) NOT NULL,
  `bunkarea` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--

/*!40000 ALTER TABLE `search` DISABLE KEYS */;
INSERT INTO `search` (`id`,`bunklocation`,`bunkarea`,`status`) VALUES 
 (1,'PUNE','WARJE','Active'),
 (2,'PUNE','WARJE','Active'),
 (3,'katraj','katraj','Active'),
 (4,'katraj','katraj','Active');
/*!40000 ALTER TABLE `search` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobileno` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`name`,`address`,`email`,`mobileno`,`dob`,`password`,`status`) VALUES 
 (1,'Abc','Pune','abc@gmail.com','9876543211','1995-02-02','Abc@123','Active');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
