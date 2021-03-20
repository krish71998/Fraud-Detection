/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - product
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `product`;

USE `product`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `email` varchar(100) NOT NULL,
  `seller` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`email`,`seller`,`status`) values ('cloudtechnologiesprojects@gmail.com','SLR006','block');

/*Table structure for table `orderdetails` */

DROP TABLE IF EXISTS `orderdetails`;

CREATE TABLE `orderdetails` (
  `prid` varchar(100) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `addr1` varchar(100) DEFAULT NULL,
  `addr2` varchar(100) DEFAULT NULL,
  `addr3` varchar(100) DEFAULT NULL,
  `sid` varchar(100) DEFAULT NULL,
  `status_` varchar(100) DEFAULT NULL,
  `ipaddr` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orderdetails` */

insert  into `orderdetails`(`prid`,`pname`,`cost`,`email`,`addr1`,`addr2`,`addr3`,`sid`,`status_`,`ipaddr`,`status`) values ('PR001','aas','457','swamy@gmail.com','304, siri towers','Mytrivanam','Ameerpet','SLR004','cancel','SAJID-PC/192.168.1.4','done'),('PR001','aas','457','sajid@gmail.com','hyd','hyd2','hyd3','SLR004','Proceed','192.168.1.7','done'),('PR001','aas','457','sajid@gmail.com','hyd','hyd2','hyd','SLR004','Proceed','192.168.1.7','done'),('PR001','aas','457','swamy@gmail.com','Hyd','hyd','hyd','SLR004','Proceed','192.168.1.13','done'),('PR001','aas','457','swamy@gmail.com','Hyd','hyd','hyd','SLR004','Proceed','192.168.1.13','done'),('PR001','aas','457','swamy@gmail.com','304, siri towers','Mytrivanam','Ameerpet','SLR004','cancel','SAJID-PC/192.168.1.4','done'),('PR001','aas','457','sajid@gmail.com','hyd','hyd2','hyd3','SLR004','Proceed','192.168.1.7','done'),('PR001','aas','457','sajid@gmail.com','hyd','hyd2','hyd','SLR004','Proceed','192.168.1.7','done'),('PR001','aas','457','swamy@gmail.com','Hyd','hyd','hyd','SLR004','Proceed','192.168.1.13','done'),('PR001','aas','457','swamy@gmail.com','Hyd','hyd','hyd','SLR004','Proceed','192.168.1.13','done'),('PR0016','Java Book','501','cloudtechnologiesprojects@gmail.com','siri towers','ameerpet','hyd','SLR006','cancel','192.168.1.11','done'),('PR0016','Java Book','501','cloudtechnologiesprojects@gmail.com','siri towers','ameerpet','hyd','SLR006','cancel','192.168.1.11','done'),('PR0016','Java Book','501','cloudtechnologiesprojects@gmail.com','Hyd','ameerpet','Ameerpet','SLR006','cancel','192.168.1.11','done'),('PR001','aas','457','cloudtechnologiesprojects@gmail.com','Hyd','ameerpet','SIRI','SLR004','cancel','192.168.1.11','done');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `pid` varchar(1000) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `pdesc` varchar(1000) DEFAULT NULL,
  `cost` varchar(1000) DEFAULT NULL,
  `sellerid` varchar(1000) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`id`,`pid`,`pname`,`pdesc`,`cost`,`sellerid`,`photo`) values (13,'PR001','aas','dfsdffdfd','457','SLR004','cd.jpg'),(14,'PR0014','ball','addfg','500','SLR004','j2.jpg'),(15,'PR0015','Bat1','bat','20000.00','SLR001','pdf_logo.png'),(16,'PR0016','Java Book','Java 5 Edition','501','SLR006','b1.jpg');

/*Table structure for table `seller` */

DROP TABLE IF EXISTS `seller`;

CREATE TABLE `seller` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `sid` varchar(100) DEFAULT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phno` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `seller` */

insert  into `seller`(`id`,`sid`,`sname`,`address`,`email`,`phno`,`pwd`) values (2,'SLR001','aa','aa','aaa@gmail.com','9988776655','aa'),(3,'SLR003','aaa','aaa','aaa@gmail.com','9988776655','aaa'),(4,'SLR004','ss','ss','ss@gmail.com','9988776655','ss'),(5,'SLR005','sajid','sss','swamy@gmail.com','9039339939','sajid'),(6,'SLR006','swamy','hyd','swamy2@gmail.com','8121953811','sajid');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` varchar(100) DEFAULT NULL,
  `uname` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `email` varchar(700) NOT NULL,
  `phno` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `status1` varchar(100) NOT NULL DEFAULT 'normal',
  `status2` varchar(100) DEFAULT 'normal',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`uid`,`uname`,`address`,`email`,`phno`,`pwd`,`status1`,`status2`) values ('USR001','aa','aa','aa@gmail.com','9988776655','aa','fraud','fraud'),('USR006','SAJID12','hyd','cloudtechnologiesprojects@gmail.com','8121953811','sajid','fraud','fraud'),('USR005','sajid11','sss','sajid12@in.com','sajid','sajid','normal','normal'),('USR004','sajid1','hyd','sajid24x7@gmail.com','9039339939','sajid','fraud','n'),('USR003','sajid','hyd','sajid@gmail.com','9039339939','sajid','normal','n'),('USR0015','sajid','Hyd','swamy@gmail.com','9039339939','sajid','fraud','n');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
