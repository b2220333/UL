/*
SQLyog Ultimate v11.24 (64 bit)
MySQL - 5.5.25-MariaDB : Database - ul
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ul` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `ul`;

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `declaring_type` varchar(100) NOT NULL,
  `name` varchar(256) NOT NULL,
  `is_static` bit(1) NOT NULL,
  `modifier` int(11) NOT NULL,
  `comments` varchar(4096) NOT NULL,
  `member_type` int(11) NOT NULL,
  `ext` varchar(4096) NOT NULL,
  `child` varchar(4096) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='类成员';

/*Data for the table `member` */

insert  into `member`(`declaring_type`,`name`,`is_static`,`modifier`,`comments`,`member_type`,`ext`,`child`) values ('HelloWorld.Program','a','\0',0,'',4,'','{\"type_fullname\":\"System.Int32\"}'),('HelloWorld.Program','c','\0',0,'',4,'','{\"type_fullname\":\"HelloWorld.Int32\"}'),('HelloWorld.Program','Main','\0',0,'',4,'','{\"args\":[{\"type_fullname\":\"System.String[]\",\"name\":\"args\",\"is_ref\":false,\"is_out\":false,\"default_value\":\"\"}],\"ret_type\":\"System.Void\",\"body\":{\"List\":[{\"Condition\":{\"token\":\"true\"},\"Statement\":{\"List\":[{\"Exp\":{\"Exp\":{\"Exp\":{\"Name\":\"Console\"},\"name\":\"WriteLine\"},\"Arguments\":[{\"Expression\":{\"token\":\"\\\"Hello, World!\\\"\"}}]}}]},\"Else\":{\"List\":[{\"Exp\":{\"Exp\":{\"Exp\":{\"Name\":\"Console\"},\"name\":\"WriteLine\"},\"Arguments\":[{\"Expression\":{\"token\":\"\\\"Hello, World!1\\\"\"}}]}},{\"Exp\":{\"Exp\":{\"Exp\":{\"Name\":\"Console\"},\"name\":\"WriteLine\"},\"Arguments\":[{\"Expression\":{\"token\":\"\\\"Hello, World!2\\\"\"}}]}}]}}]}}'),('HelloWorld.Program','Print','\0',0,'',4,'','{\"args\":[{\"type_fullname\":\"HelloWorld.Int32\",\"name\":\"hello\",\"is_ref\":true,\"is_out\":false,\"default_value\":\"\"}],\"ret_type\":\"System.Void\",\"body\":{\"List\":[{\"Exp\":{\"Exp\":{\"Exp\":{\"Name\":\"Console\"},\"name\":\"WriteLine\"},\"Arguments\":[{\"Expression\":{\"token\":\"\\\"Print\\\"\"}}]}}]}}');

/*Table structure for table `type` */

DROP TABLE IF EXISTS `type`;

CREATE TABLE `type` (
  `full_name` varchar(100) NOT NULL,
  `comments` varchar(4096) NOT NULL,
  `modifier` int(11) NOT NULL,
  `is_abstract` bit(1) NOT NULL,
  `parent` varchar(256) NOT NULL,
  `is_interface` bit(1) NOT NULL,
  `imports` varchar(4096) NOT NULL,
  `ext` varchar(4096) NOT NULL,
  `is_value_type` bit(1) NOT NULL,
  PRIMARY KEY (`full_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='类型';

/*Data for the table `type` */

insert  into `type`(`full_name`,`comments`,`modifier`,`is_abstract`,`parent`,`is_interface`,`imports`,`ext`,`is_value_type`) values ('HelloWorld.Int32','',0,'\0','','\0','','','\0'),('HelloWorld.Program','',0,'\0','','\0','','','\0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
