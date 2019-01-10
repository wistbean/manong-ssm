/*
SQLyog Ultimate v8.32 
MySQL - 5.7.12-log : Database - manong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`manong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `manong`;

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `category_id` smallint(5) NOT NULL COMMENT '分类id',
  `name` varchar(25) NOT NULL COMMENT '商品名称',
  `image` varchar(135) NOT NULL COMMENT '商品主图',
  `maket_price` decimal(10,0) NOT NULL COMMENT '市场价格',
  `price` decimal(10,0) NOT NULL COMMENT '原价',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1：上架 0：下架',
  `description` varchar(2048) NOT NULL COMMENT '商品描述',
  `product_number` varchar(25) NOT NULL COMMENT '商品编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `product` */

insert  into `product`(`id`,`category_id`,`name`,`image`,`maket_price`,`price`,`status`,`description`,`product_number`) values (2,19,'我爱java','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','500000','33300',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','4234234'),(3,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(4,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(5,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(6,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(7,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(8,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(9,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(10,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(11,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(12,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(13,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(14,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(15,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(16,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(17,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(18,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(19,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(20,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(21,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(22,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(23,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(24,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(25,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(26,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd'),(27,19,'我爱java01','group1/M00/00/00/QTHjgVwwqoKAfsL_AALeBXcjf1w334.jpg','5555','4444',1,'<p>Java hello</p><p><br/></p><p><img src=\"/ueditor/jsp/upload/image/20190105/1546693501508030129.png\" title=\"1546693501508030129.png\" alt=\"625px-NewTux.svg.png\"/></p>','asdasd');

/*Table structure for table `product_category` */

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(25) NOT NULL COMMENT '分类名称',
  `sorderorder` smallint(5) NOT NULL DEFAULT '999' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:不删除 1:删除',
  `parent_id` smallint(5) NOT NULL DEFAULT '0' COMMENT '父级的id （0就代表是父级）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='商品分类表';

/*Data for the table `product_category` */

insert  into `product_category`(`id`,`name`,`sorderorder`,`status`,`parent_id`) values (9,'java se',999,0,0),(10,'java ee',999,0,0),(17,'从入门到放弃',999,0,9),(18,'从放弃到坚持',999,0,9),(19,'从坚持到牛逼',999,0,9),(20,'java cool',999,0,10),(21,'java 666',999,0,10);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`userName`) values (1,'wistbean');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
