/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.14-MariaDB : Database - warungmakan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`warungmakan` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `warungmakan`;

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `Id_Menu` varchar(10) NOT NULL,
  `Nama_Menu` varchar(20) DEFAULT NULL,
  `Stok_Tersedia` int(10) DEFAULT NULL,
  `Harga` int(10) DEFAULT NULL,
  PRIMARY KEY (`Id_Menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `menu` */

insert  into `menu`(`Id_Menu`,`Nama_Menu`,`Stok_Tersedia`,`Harga`) values 
('M01','Nasi Goreng',13,20000),
('M02','Mie Goreng',20,20000),
('M03','Soto Ayam',20,25000),
('M04','Sate Kambing',20,30000),
('M05','Ayam Bakar',20,25000),
('M06','Ikan Bakar',20,25000),
('M07','Teh Manis',20,5000),
('M08','Es Jeruk',20,5000);

/*Table structure for table `pesanan` */

DROP TABLE IF EXISTS `pesanan`;

CREATE TABLE `pesanan` (
  `Id_Pesanan` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Menu` varchar(10) DEFAULT NULL,
  `Jumlah_Pesanan` int(10) DEFAULT NULL,
  `Total_Bayar` int(10) DEFAULT NULL,
  PRIMARY KEY (`Id_Pesanan`),
  KEY `Id_Menu` (`Id_Menu`),
  CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`Id_Menu`) REFERENCES `menu` (`Id_Menu`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `pesanan` */

insert  into `pesanan`(`Id_Pesanan`,`Id_Menu`,`Jumlah_Pesanan`,`Total_Bayar`) values 
(1,'M01',2,40000);

/* Trigger structure for table `pesanan` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `Stok_Makanan_Tersedia` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `Stok_Makanan_Tersedia` AFTER INSERT ON `pesanan` FOR EACH ROW UPDATE menu
	SET Stok_Tersedia = stok_Tersedia - NEW.Jumlah_Pesanan
	WHERE
	menu.Id_Menu = NEW.Id_Menu */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
