/*
SQLyog Trial v13.1.5  (64 bit)
MySQL - 5.5.27 : Database - capstoredb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`capstoredb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `capstoredb`;

/*Table structure for table `coupon` */

DROP TABLE IF EXISTS `coupon`;

CREATE TABLE `coupon` (
  `couponId` int(11) NOT NULL AUTO_INCREMENT,
  `couponCode` varchar(250) NOT NULL,
  `couponInformation` varchar(250) NOT NULL,
  `couponExpireDate` date NOT NULL,
  `discount` double NOT NULL,
  `count` int(11) NOT NULL,
  `originalBill` double NOT NULL,
  PRIMARY KEY (`couponId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `coupon` */

insert  into `coupon`(`couponId`,`couponCode`,`couponInformation`,`couponExpireDate`,`discount`,`count`,`originalBill`) values 
(1,'ABC123','10% off on your entire purchase','2020-06-22',10,4,2400),
(2,'XYZ456','50% discount voucher','2020-06-20',50,2,700),
(3,'LMN123','20% off gift voucher','2020-06-11',20,3,17999);

/*Table structure for table `customer_cart` */

DROP TABLE IF EXISTS `customer_cart`;

CREATE TABLE `customer_cart` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `productId` int(11) NOT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `customer_cart` */

insert  into `customer_cart`(`cartId`,`email`,`productId`) values 
(1,'yashpatil@gmail.com',2348),
(2,'swarasathe@gmail.com',2346);

/*Table structure for table `customer_temporary` */

DROP TABLE IF EXISTS `customer_temporary`;

CREATE TABLE `customer_temporary` (
  `email` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `phoneNumber` varchar(250) NOT NULL,
  `role` varchar(250) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer_temporary` */

insert  into `customer_temporary`(`email`,`name`,`password`,`phoneNumber`,`role`) values 
('kavyagaikwad10@gmail.com','Kavya Gaikwad','Qwerty@123','9874123605','customer'),
('swarasathe@gmail.com','Swara Sathe','Qwerty@123','9876543210','customer'),
('yashpatil@gmail.com','Yash Patil','Qwerty@123','9632580741','customer');

/*Table structure for table `customer_wishlist` */

DROP TABLE IF EXISTS `customer_wishlist`;

CREATE TABLE `customer_wishlist` (
  `wishlistId` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `productId` int(11) NOT NULL,
  PRIMARY KEY (`wishlistId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer_wishlist` */

insert  into `customer_wishlist`(`wishlistId`,`email`,`productId`) values 
(1,'swarasathe@gmail.com',2345),
(2,'yashpatil@gmail.com',2349);

/*Table structure for table `feedback_common` */

DROP TABLE IF EXISTS `feedback_common`;

CREATE TABLE `feedback_common` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `brandName` varchar(250) NOT NULL,
  `rating` double DEFAULT NULL,
  `feedback` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `feedback_common` */

insert  into `feedback_common`(`messageId`,`name`,`email`,`brandName`,`rating`,`feedback`) values 
(1,'Yash Patil','ramsingh@gmail.com','Adidas',NULL,'Delivery service was good'),
(2,'Kavya Gaikwad','mohinikesare@gmail.com','Samsung',4,'Delivery service of your brand is good');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `phoneNumber` varchar(250) NOT NULL,
  `role` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `Id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `login` */

insert  into `login`(`id`,`email`,`name`,`password`,`phoneNumber`,`role`) values 
(1,'ashwinyardi@gmail.com','Ashwin Yardi','Qwerty@123','9234567890','admin'),
(2,'kavyagaikwad10@gmail.com','Kavya Gaikwad','Qwerty@123','9874123605','customer'),
(3,'mohinikesare@gmail.com','Mohini Kesare','Qwerty@123','8897654023','merchant'),
(4,'rameshmehta22@gmail.com','Ramesh Mehta','Qwerty@123','8766954223','merchant'),
(5,'ramsingh@gmail.com','Ram Singh','Qwerty@123','9876543220','merchant'),
(6,'swarasathe@gmail.com','Swara Sathe','Qwerty@123','9876543210','customer'),
(7,'yashpatil@gmail.com','Yash Patil','Qwerty@123','9632580741','customer');

/*Table structure for table `merchant_permanent` */

DROP TABLE IF EXISTS `merchant_permanent`;

CREATE TABLE `merchant_permanent` (
  `email` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `brandName` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phoneNumber` varchar(250) NOT NULL,
  `role` varchar(250) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `BrandName_UNIQUE` (`brandName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `merchant_permanent` */

insert  into `merchant_permanent`(`email`,`name`,`password`,`brandName`,`address`,`phoneNumber`,`role`) values 
('mohinikesare@gmail.com','Mohini Kesare','Qwerty@123','Samsung','shop no.4,vinus villa,Mumbai','8897654023','direct'),
('rameshmehta22@gmail.com','Ramesh Mehta','Qwerty@123','Zara','34/35,Radient,6th corner,Banglore','8766954223','third party'),
('ramsingh@gmail.com','Ram Singh','Qwerty@123','Adidas','Sunshine,prabhat road,Pune','9876543220','direct');

/*Table structure for table `merchant_temporary` */

DROP TABLE IF EXISTS `merchant_temporary`;

CREATE TABLE `merchant_temporary` (
  `email` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `brandName` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phoneNumber` varchar(250) NOT NULL,
  `role` varchar(250) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `BrandName_UNIQUE` (`brandName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `merchant_temporary` */

insert  into `merchant_temporary`(`email`,`name`,`password`,`brandName`,`address`,`phoneNumber`,`role`) values 
('mohinikesare@gmail.com','Mohini Kesare','Qwerty@123','Samsung','shop no.4,vinus villa,Mumbai','8897654023','direct'),
('rameshmehta22@gmail.com','Ramesh Mehta','Qwerty@123','Adidas','34/35,Radient,6th corner,Banglore','8766954223','third party'),
('ramsingh@gmail.com','Ram Singh','Qwerty@123','Zara','Sunshine,prabhat road,Pune','9876543220','direct');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `pincode` varchar(250) NOT NULL,
  `phoneNumber` varchar(250) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `totalBill` double NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=1236 DEFAULT CHARSET=utf8;

/*Data for the table `order` */

insert  into `order`(`orderId`,`productId`,`email`,`address`,`pincode`,`phoneNumber`,`productQuantity`,`totalBill`) values 
(1234,2346,'kavyagaikwad10@gmail.com','Near Ram Mandir,Parbhani','411001','9874123605',1,2400),
(1235,2349,'yashpatil@gmail.com','34,Balaji nagar,Banglore','345887','9632580741',2,1400);

/*Table structure for table `order_history` */

DROP TABLE IF EXISTS `order_history`;

CREATE TABLE `order_history` (
  `orderId` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `productId` int(11) NOT NULL,
  `totalBill` double NOT NULL,
  `paymentMode` varchar(250) NOT NULL DEFAULT 'COD',
  `statusOfOrder` varchar(250) NOT NULL DEFAULT 'processing',
  `historyId` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`historyId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `order_history` */

insert  into `order_history`(`orderId`,`email`,`productId`,`totalBill`,`paymentMode`,`statusOfOrder`,`historyId`) values 
(1234,'kavyagaikwad10@gmail.com',2346,2400,'COD','processing',1),
(1235,'yashpatil@gmail.com',2349,1200,'CardPayment','processing',2);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `productName` varchar(250) NOT NULL,
  `productPrice` double NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `productCategory` varchar(250) NOT NULL,
  `productImage` varchar(700) NOT NULL,
  `productDiscount` double NOT NULL,
  `productDiscoutExpireDate` date NOT NULL,
  `brandName` varchar(250) NOT NULL,
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=2350 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`productName`,`productPrice`,`productQuantity`,`productCategory`,`productImage`,`productDiscount`,`productDiscoutExpireDate`,`brandName`,`productId`,`email`) values 
('Samsung Galaxy M31',17999,20,'Electronics','https://www.google.com/imgres?imgurl=https%3A%2F%2Ffdn.gsmarena.com%2Fimgroot%2Freviews%2F20%2Fsamsung-galaxy-m31%2Fhands-on%2Flifestyle%2F-727w2%2Fgsmarena_001.jpg&imgrefurl=https%3A%2F%2Fwww.gsmarena.com%2Fsamsung_galaxy_m31_hands_on-review-2070.php&tbnid=JLfpYiGkUtK_oM&vet=12ahUKEwjfh9XHm-bpAhW8BLcAHRiWBs8QMygLegUIARCIAw..i&docid=mWolTeNkXJkC2M&w=727&h=545&q=samsung%20galaxy%20m31&ved=2ahUKEwjfh9XHm-bpAhW8BLcAHRiWBs8QMygLegUIARCIAw',20,'2020-07-03','Samsung',2345,'mohinikesare@gmail.com'),
('cotton kurti A-line',2400,25,'clothing','https://www.google.com/imgres?imgurl=https%3A%2F%2Ffashion8home.com%2Fwp-content%2Fuploads%2F2019%2F11%2F61yR09eE0zL._UL1349_.jpg&imgrefurl=https%3A%2F%2Ffashion8home.com%2Fproduct%2Ffashion8home-marlin-womens-cotton-kurti-with-palazzo-pant-set-green%2F&tbnid=_v2Tms4RNWWXEM&vet=12ahUKEwiDr7zooObpAhVKOysKHXDyAbMQMygregUIARChAQ..i&docid=W8k1COGIsWg_IM&w=1080&h=1349&q=kurti&ved=2ahUKEwiDr7zooObpAhVKOysKHXDyAbMQMygregUIARChAQ',10,'2020-06-22','Zara',2346,'rameshmehta22@gmail.com'),
('Samsung 260 refrigerator',35000,12,'Home appliances','https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages-na.ssl-images-amazon.com%2Fimages%2FI%2F51B%252BPLv%252BsvL._SY445_.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.in%2FLG-Refrigerator-GL-I292RPZL-APZZEBN-Inverter-Compressor%2Fdp%2FB01DM8HR1Q&tbnid=YRwoZIEFywsCdM&vet=12ahUKEwjrprSOoubpAhU7DrcAHaOkCFcQMygLegUIARCGAw..i&docid=Ixo8NRb32DDQ6M&w=187&h=445&q=refrigerator&ved=2ahUKEwjrprSOoubpAhU7DrcAHaOkCFcQMygLegUIARCGAw',25,'2020-06-20','Samsung',2347,'mohinikesare@gmail.com'),
('White and Coral shoes',3500,30,'shoes','https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.adidas.com%2Fimages%2Fh_320%2Cf_auto%2Cq_auto%3Asensitive%2Cfl_lossy%2Fee0a947910844f99b26cab2000cc4d12_9366%2FUltraboost_20_Shoes_White_EG0721_01_standard.jpg&imgrefurl=https%3A%2F%2Fwww.adidas.com%2Fus%2Fultraboost-20-shoes%2FEG0721.html&tbnid=yph22C26c2fjnM&vet=12ahUKEwihuKv2oubpAhVhT3wKHZohCIkQMygGegUIARCBAg..i&docid=sVN0uYJSsIn2MM&w=320&h=320&itg=1&q=home%20adidas%20gym%20shoes&ved=2ahUKEwihuKv2oubpAhVhT3wKHZohCIkQMygGegUIARCBAg',12,'2020-06-20','Adidas',2348,'ramsingh@gmail.com'),
('Men tshirt',750,40,'clothing','https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages-na.ssl-images-amazon.com%2Fimages%2FI%2F613SYKy-XPL._UX522_.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.in%2FGraphic-Printed-T-Shirt-Straight-Cartoon%2Fdp%2FB07HMLHSGW&tbnid=0EdL4MzR68m9vM&vet=12ahUKEwjkyP_Uo-bpAhXNQn0KHRz7BJwQMyghegUIARCuAg..i&docid=1VZC6pI7wBrEnM&w=522&h=569&q=tshirt&ved=2ahUKEwjkyP_Uo-bpAhXNQn0KHRz7BJwQMyghegUIARCuAg',20,'2020-06-18','Adidas',2349,'ramsingh@gmail.com');

/*Table structure for table `product_feedback` */

DROP TABLE IF EXISTS `product_feedback`;

CREATE TABLE `product_feedback` (
  `productId` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `rating` double NOT NULL,
  `feedback` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product_feedback` */

insert  into `product_feedback`(`productId`,`name`,`email`,`rating`,`feedback`) values 
(2346,'Swara Sathe','rameshmehta22@gmail.com',4.5,'Product was good'),
(2345,'Kavya Gaikwad','mohinikesare@gmail.com',4,NULL),
(2349,'Yash Patil','ramsingh@gmail.com',4.5,'Fabric was good');

/*Table structure for table `return_product` */

DROP TABLE IF EXISTS `return_product`;

CREATE TABLE `return_product` (
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `productId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `return_product` */

insert  into `return_product`(`name`,`email`,`productId`) values 
('Swara Sathe','rameshmehta22@gmail.com',2346),
('Yash Patil','ramsingh@gmail.com',2348);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
