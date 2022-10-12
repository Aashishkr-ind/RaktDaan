/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 5.5.30 : Database - raktdaan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`raktdaan` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `raktdaan`;

/*Table structure for table `blood_stockofhospital` */

DROP TABLE IF EXISTS `blood_stockofhospital`;

CREATE TABLE `blood_stockofhospital` (
  `BHID` decimal(65,0) DEFAULT NULL,
  `Blood_group` varchar(88) DEFAULT NULL,
  `Qty_available` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `blood_stockofhospital` */

insert  into `blood_stockofhospital`(`BHID`,`Blood_group`,`Qty_available`) values 
(101,'A RhD positive (A+)','600'),
(101,'A RhD negative (A-)','210'),
(101,'B RhD positive (B+)','50'),
(101,'B RhD negative (B-)','500'),
(101,'O RhD positive (O+)','90'),
(101,'O RhD negative (O-)','400'),
(101,'AB RhD positive (AB+)','323'),
(101,'AB RhD negative (AB-)','234'),
(102,'A RhD positive (A+)','22'),
(102,'A RhD negative (A-)','12'),
(102,'B RhD positive (B+)','33'),
(102,'B RhD positive (B-)','43'),
(102,'O RhD positive (O+)','44'),
(102,'O RhD negative (O-)','33'),
(102,'AB RhD positive (AB+)','32'),
(102,'AB RhD negative (AB-)','33');

/*Table structure for table `camps_table` */

DROP TABLE IF EXISTS `camps_table`;

CREATE TABLE `camps_table` (
  `Camp_no` varchar(30) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Camp_Name` varchar(30) DEFAULT NULL,
  `Address` blob,
  `State` varchar(87) DEFAULT NULL,
  `District` varchar(30) DEFAULT NULL,
  `Contact` decimal(10,0) DEFAULT NULL,
  `Conducted_By` varchar(88) DEFAULT NULL,
  `Organized_by` varchar(98) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `camps_table` */

insert  into `camps_table`(`Camp_no`,`Date`,`Camp_Name`,`Address`,`State`,`District`,`Contact`,`Conducted_By`,`Organized_by`) values 
('1','2022-03-23 15:03:37','ss','asdas','sw','asd',343,'sad','as'),
(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('sd','2022-03-16 00:11:00','asd','asd','asd','asd',33232,'sad','sad');

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `DoctorId` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Adderess` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Gender` varchar(8) NOT NULL,
  `Qualification` varchar(20) NOT NULL,
  `Experience` varchar(10) NOT NULL,
  `Age` varchar(5) DEFAULT NULL,
  `Practising_At` varchar(15) NOT NULL,
  `OtherDetails` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doctor` */

insert  into `doctor`(`DoctorId`,`Name`,`Adderess`,`Email`,`Phone`,`Gender`,`Qualification`,`Experience`,`Age`,`Practising_At`,`OtherDetails`) values 
('D-101','Sunil kumar','rz-5 inderdra park uttam nagar,new delhi','sunil_@yahoo.in','9899697852','Male','M.B.B.S','2 years','35','A.I.I.M.S','H.O.D of v.m.m.c'),
('D-102','Mr.Shaifali Jha','c-1/456,Janakpuri','rav-itsoft@yahoo.co.in','0880026789','Female','m.b.b.s/m.d','3 years','42','v.m.m.c','H.O.D of v.m.m.c'),
('D-103','Dr.phiroj khan','b.c.c.l colony bokaro','phi_ty@gmail.com','0880089789','Male','M.B.B.S','5 YERAS','36','v.m.m.c','H.O.D OF V.C.M'),
('D-104','DR.SUMAN','59/t angu colony','sumandr@yahoo.com','0983576288','Female','m.b.b.s','2','29','a.i.i.m.s','H.O.D of v.m.m.c'),
('D-109','DR.ARBAJ KHAN','u6 titi singh nagar ','ar_b@gamil.com','0968247125','Male','m.b.b.s/m.d','6','45','v.m.m.c','H.O.D OF V.C.M'),
('D-110','Dr.shohan singh','9/b b.c.c.l colony bokaro','shon@gamil.com','9825624856','Male','m.b.b.s','2','32','A.I.I.M.S','H.O.D OF V.C.M'),
('D-111','Dr.paraveen ','op/4 new bell nagar ','impraveen@gami.com','9825458454','Male','M.B.B.S','3','29','A.I.I.M.S','H.O.D of v.m.m.c'),
('d-112','dr.vinay','094/4 siglory','vina_1952@gamail.com','9891545454','Male','m.b.b.s/m.d','1','25','v.m.m.c','H.O.D OF V.C.M'),
('d-144','dr.deep','4/4 akilish nagar','depp75@yahoo.in','9999554454','Male','m.b.b.s','2','26','a.i.i.m.s','H.O.D OF V.C.M'),
('d-115','dr.vikash','5/p home towon kannrabag','vikash87@yahoo.in','9992454155','Male','m.b.b.s','2','26','v.m.m.c','H.O.D OF V.C.M'),
('D-118','dr.ravi','new b.c.c colony','ravi_itshhj@yahoo.in','9991524545','Male','m.b.b.s/m.d','2','45','a.i.i.m.s','v.m.m.c'),
('d-159','dr.kaveeta','14/e karmatang bokaro','kavenn@gamil.com','9995454545','Female','m.b.b.s','1','32','v.m.m.c','H.O.D of v.m.m.c'),
('d-177','dr.sunita','7/4k ram mandir colony katrash','suntiikndsh@yahoo.in','9854454545','Female','m.b.b.s/m.d','3','45','v.m.m.c','v.m.m.c'),
('d-299','dr.rushtam ','51/k ram gopal vera colonoy','rustlkjkj@yahoo.co.in','9992145411','Male','m.b.b.s','2','29','A.I.I.M.S','H.O.D of v.m.m.c'),
('d-410','dr.sukhvindeer','p/3 deep mandir colonoy baranashi','eept420@gmail.com','9212454121','Male','m.b.b.s/m.d','1','26','v.m.m.c','H.O.D of v.m.m.c'),
('d-411','dr.rekha','p/3 lalu mandir sekh nagar','rekha53@yahoo.in','9899112412','Female','m.b.b.s/m.d','3','36','A.I.I.M.S','v.m.m.c'),
('d-501','dr.akhilish','shinak env  uttam nagar ','alitkh782@yahoo.in','9812451212','Male','m.b.b.s/m.d','3','7','A.I.I.M.S','v.m.m.c');

/*Table structure for table `donar` */

DROP TABLE IF EXISTS `donar`;

CREATE TABLE `donar` (
  `Donar_id` varchar(15) DEFAULT NULL,
  `Hospital_nm` varchar(87) DEFAULT NULL,
  `location` varchar(77) DEFAULT NULL,
  `Name` varchar(15) DEFAULT '',
  `Phone` varchar(40) DEFAULT '',
  `Email` varchar(50) DEFAULT '',
  `Address` varchar(50) DEFAULT '',
  `Blood_Group` varchar(30) DEFAULT '',
  `Physical_Status` varchar(10) DEFAULT '',
  `Diabetic` varchar(10) DEFAULT NULL,
  `Blood_Pressure` varchar(12) DEFAULT NULL,
  `Weight` varchar(20) DEFAULT '',
  `Howmuch_unit` int(9) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `donar` */

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `Name` varchar(30) DEFAULT NULL,
  `Phone` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Suggestions_Feedback` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`Name`,`Phone`,`Email`,`Suggestions_Feedback`) values 
('ravi','9990457035','ravi_itsoft@yahoo.in','this blood bank service is very good'),
('raj','9835754545','kumar_raj@yahoo.com','service poor'),
('kumar','9990457035','ravi_itsoft@yahoo.in','this blood bank service is very good'),
('suman','9851545454','suman_1955@rediffmail.com','this good staff of blood bank'),
('rekha','7822112545','rekha_1982@gmail.com','this blood bank service is very good'),
('ravi','9990457035','uperavi@gmail.com','this blood bank service is very good'),
('rani','9875154541','rani_564854@yahoo.in','this blood bank service is very good'),
('kumar rakhi','9145415455','kumar_ty@yahoo.com','this blood bank service is very good'),
('suraj','9912545454','suraj_18454@gmail.com','this blood bank service is very good'),
('lalu','9851545414','lalu_75@yahoo.com','this blood bank service is very good');

/*Table structure for table `hospital_reg` */

DROP TABLE IF EXISTS `hospital_reg`;

CREATE TABLE `hospital_reg` (
  `HID` varchar(88) NOT NULL,
  `Password` varchar(87) DEFAULT NULL,
  `Hospital_Name` varchar(100) DEFAULT NULL,
  `Location` varchar(77) DEFAULT NULL,
  `Mobile` varchar(1000) DEFAULT NULL,
  `FullAddress` blob,
  PRIMARY KEY (`HID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hospital_reg` */

insert  into `hospital_reg`(`HID`,`Password`,`Hospital_Name`,`Location`,`Mobile`,`FullAddress`) values 
('101','1234','Metro Group of Hospital','NOIDA','0120 436 6666','Cardiology Wing: X - 1, Sector - 12 '),
('102','mnaa','Manas Hospital','NOIDA','9654121911',' A 93, Sector 34'),
('103','App','Apollo Hospitals','NOIDA','0120 401 2000',' E-2, Sector- 26'),
('104','deepa','Sumitra hospital','NOIDA','0120 250 7725, 250 7625, 320 6645, 9810448328','A- 119 A, Near City Center Sector 35'),
('105','coll','ColumbiaAsia Hospital','GHAZIABAD','8860945566','NH-24, Hapur Road, Near Landcraft Golflinks Shastri Nagar\r\n'),
('106','naina','Naina Shanti Hospital','GHAZIABAD','9650956666','Plot No. NH1, Sector 16A Vasundhara\r\n'),
('107','shanti','Shanti Gopal Hospital','GHAZIABAD','0120 477 7000, 477 7111, 477 7001\r\n',' National Highway -1, Ahinsha Khand-2 Indirapuram'),
('108','paras','Paras Hospitals, Gurgaon','GURGAON','0124 458 5555\r\n','Phase- I, C-1, Sushant Lok Rd, Sector 43, Gurugram, Haryana 122002\r\n'),
('109','med','Medicity Hospital ','GURGAON','0124 414 1414','CH Baktawar Singh Rd, Medicity, Islampur Colony, Sector 38, Gurugram, Haryana 122005\r\n'),
('110','aiad','All India Institute Of Medical Sciences','NEW DELHI','11-26588500 / 26588700','Sri Aurobindo Marg, Ansari Nagar, Ansari Nagar East, New Delhi, Delhi'),
('111','abh','AB Hospitals','NEW DELHI','9170170170','Plot No. 7 SP, Golf Course Road, DLF Phase 5, Sector 43'),
('112','fred','Fortis Hospital, Bannerghatta Road','BANGLORE','096633 67253','154/9, Bannerghatta Road, Opposite IIM-B,Bengaluru');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `Username` varchar(30) DEFAULT NULL,
  `passencode` varchar(33) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Mobile` varchar(30) DEFAULT NULL,
  `Full Address` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`Username`,`passencode`,`Email`,`Mobile`,`Full Address`) values 
('a','qTPw0GWqyHBLTDk6QIQvEQ==','a','22','sad'),
('a','0rS+8Ms3T76iqwQVGjpZug==','a','a','a');

/*Table structure for table `receiver` */

DROP TABLE IF EXISTS `receiver`;

CREATE TABLE `receiver` (
  `receiver_id` varchar(15) DEFAULT NULL,
  `Hospital_nm` varchar(87) DEFAULT NULL,
  `location` varchar(77) DEFAULT NULL,
  `Name` varchar(15) DEFAULT '',
  `Phone` varchar(40) DEFAULT '',
  `Email` varchar(50) DEFAULT '',
  `Address` varchar(50) DEFAULT '',
  `Blood_Group` varchar(30) DEFAULT '',
  `Physical_Status` varchar(10) DEFAULT '',
  `Diabetic` varchar(10) DEFAULT NULL,
  `Blood_Pressure` varchar(12) DEFAULT NULL,
  `Weight` varchar(20) DEFAULT '',
  `Howmuch_unit` int(9) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `receiver` */

insert  into `receiver`(`receiver_id`,`Hospital_nm`,`location`,`Name`,`Phone`,`Email`,`Address`,`Blood_Group`,`Physical_Status`,`Diabetic`,`Blood_Pressure`,`Weight`,`Howmuch_unit`,`Remark`) values 
('101','dd','sdf','sdf','353','dfg','New Delhi-11078','d','ok','87%','54','32',33,'23'),
(NULL,NULL,NULL,'','','','','fg','',NULL,NULL,'',NULL,'');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
