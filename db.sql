/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoquyiqingguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoquyiqingguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoquyiqingguanlixitong`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,1,'收货人1','17703786901','地址1',1,'2023-02-27 11:32:46','2023-02-27 11:32:46','2023-02-27 11:32:46'),(2,1,'收货人2','17703786902','地址2',1,'2023-02-27 11:32:46','2023-02-27 11:32:46','2023-02-27 11:32:46'),(3,2,'收货人3','17703786903','地址3',1,'2023-02-27 11:32:46','2023-02-27 11:32:46','2023-02-27 11:32:46'),(4,3,'收货人4','17703786904','地址4',1,'2023-02-27 11:32:46','2023-02-27 11:32:46','2023-02-27 11:32:46'),(5,3,'收货人5','17703786905','地址5',1,'2023-02-27 11:32:46','2023-02-27 11:32:46','2023-02-27 11:32:46'),(6,3,'收货人6','17703786906','地址6',1,'2023-02-27 11:32:46','2023-02-27 11:32:46','2023-02-27 11:32:46'),(7,1,'收货人7','17703786907','地址7',1,'2023-02-27 11:32:46','2023-02-27 11:32:46','2023-02-27 11:32:46'),(8,2,'收货人8','17703786908','地址8',1,'2023-02-27 11:32:46','2023-02-27 11:32:46','2023-02-27 11:32:46'),(9,2,'收货人9','17703786909','地址9',1,'2023-02-27 11:32:46','2023-02-27 11:32:46','2023-02-27 11:32:46'),(10,1,'收货人10','17703786910','地址10',1,'2023-02-27 11:32:46','2023-02-27 11:32:46','2023-02-27 11:32:46'),(11,3,'收货人11','17703786911','地址11',1,'2023-02-27 11:32:46','2023-02-27 11:32:46','2023-02-27 11:32:46'),(12,3,'收货人12','17703786912','地址12',1,'2023-02-27 11:32:46','2023-02-27 11:32:46','2023-02-27 11:32:46'),(13,2,'收货人13','17703786913','地址13',1,'2023-02-27 11:32:46','2023-02-27 11:32:46','2023-02-27 11:32:46'),(14,3,'收货人14','17703786914','地址14',1,'2023-02-27 11:32:46','2023-02-27 11:32:46','2023-02-27 11:32:46'),(15,4,'张5','17703786905','1地址5',1,'2023-02-27 13:13:33','2023-02-27 13:13:33','2023-02-27 13:13:33'),(16,4,'张2','17703786905','地址555',2,'2023-02-27 13:13:50','2023-02-27 13:13:50','2023-02-27 13:13:50');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

insert  into `cart`(`id`,`yonghu_id`,`shangpin_id`,`buy_number`,`create_time`,`update_time`,`insert_time`) values (1,1,12,1,'2023-02-27 13:06:47',NULL,'2023-02-27 13:06:47'),(2,1,14,1,'2023-02-27 13:06:51',NULL,'2023-02-27 13:06:51'),(3,1,2,3,'2023-02-27 13:06:55',NULL,'2023-02-27 13:06:55'),(4,1,6,1,'2023-02-27 13:08:11',NULL,'2023-02-27 13:08:11');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-02-27 11:30:46'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-02-27 11:30:46'),(3,'shangjia_xingji_types','商家信用类型',1,'一级',NULL,NULL,'2023-02-27 11:30:46'),(4,'shangjia_xingji_types','商家信用类型',2,'二级',NULL,NULL,'2023-02-27 11:30:46'),(5,'shangjia_xingji_types','商家信用类型',3,'三级',NULL,NULL,'2023-02-27 11:30:46'),(6,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-02-27 11:30:46'),(7,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-02-27 11:30:46'),(8,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-02-27 11:30:46'),(9,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-02-27 11:30:46'),(10,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-02-27 11:30:46'),(11,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2023-02-27 11:30:46'),(12,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-02-27 11:30:47'),(13,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-02-27 11:30:47'),(14,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-02-27 11:30:47'),(15,'shangpin_order_types','订单类型',103,'已备好',NULL,NULL,'2023-02-27 11:30:47'),(16,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-02-27 11:30:47'),(17,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-02-27 11:30:47'),(18,'shangpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-02-27 11:30:47'),(19,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-02-27 11:30:47'),(20,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-02-27 11:30:47'),(21,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-02-27 11:30:47'),(22,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-02-27 11:30:47'),(23,'jiance_types','检测结果',1,'阴性',NULL,NULL,'2023-02-27 11:30:47'),(24,'jiance_types','检测结果',2,'阳性',NULL,NULL,'2023-02-27 11:30:47'),(25,'shangpin_order_types','订单类型',106,'已配送',NULL,'','2023-02-27 11:30:47'),(26,'shangpin_types','商品类型',5,'商品类型5',NULL,'','2023-02-27 13:19:06');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-02-27 11:32:46','公告详情1','2023-02-27 11:32:46'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-02-27 11:32:46','公告详情2','2023-02-27 11:32:46'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-02-27 11:32:46','公告详情3','2023-02-27 11:32:46'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-02-27 11:32:46','公告详情4','2023-02-27 11:32:46'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-02-27 11:32:46','公告详情5','2023-02-27 11:32:46'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-02-27 11:32:46','公告详情6','2023-02-27 11:32:46'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-02-27 11:32:46','公告详情7','2023-02-27 11:32:46'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-02-27 11:32:46','公告详情8','2023-02-27 11:32:46'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-02-27 11:32:46','公告详情9','2023-02-27 11:32:46'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-02-27 11:32:46','公告详情10','2023-02-27 11:32:46'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-02-27 11:32:46','公告详情11','2023-02-27 11:32:46'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-02-27 11:32:46','公告详情12','2023-02-27 11:32:46'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-02-27 11:32:46','公告详情13','2023-02-27 11:32:46'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-02-27 11:32:46','公告详情14','2023-02-27 11:32:46');

/*Table structure for table `peisongrenyuan` */

DROP TABLE IF EXISTS `peisongrenyuan`;

CREATE TABLE `peisongrenyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `peisongrenyuan_name` varchar(200) DEFAULT NULL COMMENT '配送人员姓名 Search111 ',
  `peisongrenyuan_phone` varchar(200) DEFAULT NULL COMMENT '配送人员手机号',
  `peisongrenyuan_id_number` varchar(200) DEFAULT NULL COMMENT '配送人员身份证号',
  `peisongrenyuan_photo` varchar(200) DEFAULT NULL COMMENT '配送人员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `peisongrenyuan_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配送人员';

/*Data for the table `peisongrenyuan` */

insert  into `peisongrenyuan`(`id`,`username`,`password`,`peisongrenyuan_name`,`peisongrenyuan_phone`,`peisongrenyuan_id_number`,`peisongrenyuan_photo`,`sex_types`,`peisongrenyuan_email`,`create_time`) values (1,'a1','123456','配送人员姓名1','17703786901','410224199010102001','upload/peisongrenyuan1.jpg',1,'1@qq.com','2023-02-27 11:32:46'),(2,'a2','123456','配送人员姓名2','17703786902','410224199010102002','upload/peisongrenyuan2.jpg',2,'2@qq.com','2023-02-27 11:32:46'),(3,'a3','123456','配送人员姓名3','17703786903','410224199010102003','upload/peisongrenyuan3.jpg',2,'3@qq.com','2023-02-27 11:32:46');

/*Table structure for table `peisongrenyuanjiankang` */

DROP TABLE IF EXISTS `peisongrenyuanjiankang`;

CREATE TABLE `peisongrenyuanjiankang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `peisongrenyuan_id` int(11) DEFAULT NULL COMMENT '配送人员',
  `jiance_time` timestamp NULL DEFAULT NULL COMMENT '检测时间',
  `jiance_types` int(11) NOT NULL COMMENT '检测结果  Search111 ',
  `peisongrenyuanjiankang_file` varchar(200) DEFAULT NULL COMMENT '证明文件',
  `peisongrenyuanjiankang_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上报时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='配送人员健康';

/*Data for the table `peisongrenyuanjiankang` */

insert  into `peisongrenyuanjiankang`(`id`,`peisongrenyuan_id`,`jiance_time`,`jiance_types`,`peisongrenyuanjiankang_file`,`peisongrenyuanjiankang_content`,`insert_time`,`create_time`) values (1,2,'2023-02-27 11:32:46',2,'upload/file.rar','备注1','2023-02-27 11:32:46','2023-02-27 11:32:46'),(2,3,'2023-02-27 11:32:46',1,'upload/file.rar','备注2','2023-02-27 11:32:46','2023-02-27 11:32:46'),(3,1,'2023-02-27 11:32:46',2,'upload/file.rar','备注3','2023-02-27 11:32:46','2023-02-27 11:32:46'),(4,3,'2023-02-27 11:32:46',2,'upload/file.rar','备注4','2023-02-27 11:32:46','2023-02-27 11:32:46'),(5,2,'2023-02-27 11:32:46',2,'upload/file.rar','备注5','2023-02-27 11:32:46','2023-02-27 11:32:46'),(6,1,'2023-02-27 11:32:46',2,'upload/file.rar','备注6','2023-02-27 11:32:46','2023-02-27 11:32:46'),(7,2,'2023-02-27 11:32:46',1,'upload/file.rar','备注7','2023-02-27 11:32:46','2023-02-27 11:32:46'),(8,3,'2023-02-27 11:32:46',2,'upload/file.rar','备注8','2023-02-27 11:32:46','2023-02-27 11:32:46'),(9,2,'2023-02-27 11:32:46',1,'upload/file.rar','备注9','2023-02-27 11:32:46','2023-02-27 11:32:46'),(10,1,'2023-02-27 11:32:46',2,'upload/file.rar','备注10','2023-02-27 11:32:46','2023-02-27 11:32:46'),(11,1,'2023-02-27 11:32:46',2,'upload/file.rar','备注11','2023-02-27 11:32:46','2023-02-27 11:32:46'),(12,1,'2023-02-27 11:32:46',1,'upload/file.rar','备注12','2023-02-27 11:32:46','2023-02-27 11:32:46'),(13,2,'2023-02-27 11:32:46',1,'upload/file.rar','备注13','2023-02-27 11:32:46','2023-02-27 11:32:46'),(14,2,'2023-02-27 11:32:46',1,'upload/file.rar','备注14','2023-02-27 11:32:46','2023-02-27 11:32:46'),(15,1,'2023-02-27 13:17:03',1,'/upload/1677475027719.doc','<p>固定死发的是高富帅</p>','2023-02-27 13:17:09','2023-02-27 13:17:09');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_xingji_types` int(11) DEFAULT NULL COMMENT '商家信用类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` text COMMENT '商家简介 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_xingji_types`,`new_money`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','123456','商家名称1','17703786901','1@qq.com','upload/shangjia1.jpg',1,'946.34','<p>商家简介1郭德纲</p>',1,'2023-02-27 11:32:46'),(2,'a2','123456','商家名称2','17703786902','2@qq.com','upload/shangjia2.jpg',3,'1351.26','商家简介2',1,'2023-02-27 11:32:46'),(3,'a3','123456','商家名称3','17703786903','3@qq.com','upload/shangjia3.jpg',3,'515.95','商家简介3',1,'2023-02-27 11:32:46');

/*Table structure for table `shangjiajiankang` */

DROP TABLE IF EXISTS `shangjiajiankang`;

CREATE TABLE `shangjiajiankang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `jiance_time` timestamp NULL DEFAULT NULL COMMENT '检测时间',
  `jiance_types` int(11) NOT NULL COMMENT '检测结果  Search111 ',
  `shangjiajiankang_file` varchar(200) DEFAULT NULL COMMENT '证明文件',
  `shangjiajiankang_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上报时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商家健康';

/*Data for the table `shangjiajiankang` */

insert  into `shangjiajiankang`(`id`,`shangjia_id`,`jiance_time`,`jiance_types`,`shangjiajiankang_file`,`shangjiajiankang_content`,`insert_time`,`create_time`) values (1,1,'2023-02-27 11:32:46',2,'upload/file.rar','备注1','2023-02-27 11:32:46','2023-02-27 11:32:46'),(2,3,'2023-02-27 11:32:46',2,'upload/file.rar','备注2','2023-02-27 11:32:46','2023-02-27 11:32:46'),(3,1,'2023-02-27 11:32:46',1,'upload/file.rar','备注3','2023-02-27 11:32:46','2023-02-27 11:32:46'),(4,2,'2023-02-27 11:32:46',2,'upload/file.rar','备注4','2023-02-27 11:32:46','2023-02-27 11:32:46'),(5,1,'2023-02-27 11:32:46',1,'upload/file.rar','备注5','2023-02-27 11:32:46','2023-02-27 11:32:46'),(6,1,'2023-02-27 11:32:46',1,'upload/file.rar','备注6','2023-02-27 11:32:46','2023-02-27 11:32:46'),(7,2,'2023-02-27 11:32:46',2,'upload/file.rar','备注7','2023-02-27 11:32:46','2023-02-27 11:32:46'),(8,1,'2023-02-27 11:32:46',1,'upload/file.rar','备注8','2023-02-27 11:32:46','2023-02-27 11:32:46'),(9,2,'2023-02-27 11:32:46',2,'upload/file.rar','备注9','2023-02-27 11:32:46','2023-02-27 11:32:46'),(10,3,'2023-02-27 11:32:46',2,'upload/file.rar','备注10','2023-02-27 11:32:46','2023-02-27 11:32:46'),(11,1,'2023-02-27 11:32:46',1,'upload/file.rar','备注11','2023-02-27 11:32:46','2023-02-27 11:32:46'),(12,2,'2023-02-27 11:32:46',1,'upload/file.rar','备注12','2023-02-27 11:32:46','2023-02-27 11:32:46'),(13,3,'2023-02-27 11:32:46',2,'upload/file.rar','备注13','2023-02-27 11:32:46','2023-02-27 11:32:46'),(14,3,'2023-02-27 11:32:46',1,'upload/file.rar','备注14','2023-02-27 11:32:46','2023-02-27 11:32:46'),(15,1,'2023-02-27 13:17:31',1,'/upload/1677475055441.doc','<p>个核酸噶三顿饭</p>','2023-02-27 13:17:37','2023-02-27 13:17:37');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `shangpin_content` text COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangjia_id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_clicknum`,`shangpin_content`,`shangxia_types`,`shangpin_delete`,`insert_time`,`create_time`) values (1,3,'商品名称1','1677468766852','upload/shangpin1.jpg',2,101,'545.01','199.09',77,'商品介绍1',1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(2,3,'商品名称2','1677468766767','upload/shangpin2.jpg',1,102,'698.61','168.73',287,'商品介绍2',1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(3,2,'商品名称3','1677468766777','upload/shangpin3.jpg',1,103,'807.47','275.49',299,'商品介绍3',1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(4,2,'商品名称4','1677468766774','upload/shangpin4.jpg',1,104,'964.79','58.64',246,'商品介绍4',1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(5,2,'商品名称5','1677468766764','upload/shangpin5.jpg',1,103,'951.14','108.91',440,'商品介绍5',1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(6,1,'商品名称6','1677468766839','upload/shangpin6.jpg',4,104,'576.76','141.92',133,'商品介绍6',1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(7,3,'商品名称7','1677468766797','upload/shangpin7.jpg',2,107,'825.20','370.54',77,'商品介绍7',1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(8,2,'商品名称8','1677468766841','upload/shangpin8.jpg',3,108,'614.86','18.13',477,'商品介绍8',1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(9,3,'商品名称9','1677468766776','upload/shangpin9.jpg',4,109,'868.09','52.42',246,'商品介绍9',1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(10,1,'商品名称10','1677468766850','upload/shangpin10.jpg',2,1010,'894.40','169.37',231,'商品介绍10',1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(11,2,'商品名称11','1677468766773','upload/shangpin11.jpg',1,1010,'794.50','203.59',450,'商品介绍11',1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(12,3,'商品名称12','1677468766816','upload/shangpin12.jpg',1,1012,'649.75','421.31',435,'商品介绍12',1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(13,3,'商品名称13','1677468766780','upload/shangpin13.jpg',3,1013,'842.51','390.87',162,'商品介绍13',1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(14,1,'商品名称14','1677468766810','upload/shangpin14.jpg',2,1011,'602.37','231.05',334,'<p>商品介绍14</p>',1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(2,2,1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(3,3,3,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(4,4,2,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(5,5,3,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(6,6,2,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(7,7,1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(8,8,1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(9,9,1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(10,10,3,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(11,11,1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(12,12,3,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(13,13,3,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(14,14,1,1,'2023-02-27 11:32:46','2023-02-27 11:32:46'),(15,5,4,1,'2023-02-27 13:12:34','2023-02-27 13:12:34'),(16,6,4,1,'2023-02-27 13:12:58','2023-02-27 13:12:58');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-02-27 11:32:46','回复信息1','2023-02-27 11:32:46','2023-02-27 11:32:46'),(2,2,2,'评价内容2','2023-02-27 11:32:46','回复信息2','2023-02-27 11:32:46','2023-02-27 11:32:46'),(3,3,3,'评价内容3','2023-02-27 11:32:46','回复信息3','2023-02-27 11:32:46','2023-02-27 11:32:46'),(4,4,2,'评价内容4','2023-02-27 11:32:46','回复信息4','2023-02-27 11:32:46','2023-02-27 11:32:46'),(5,5,2,'评价内容5','2023-02-27 11:32:46','回复信息5','2023-02-27 11:32:46','2023-02-27 11:32:46'),(6,6,1,'评价内容6','2023-02-27 11:32:46','回复信息6','2023-02-27 11:32:46','2023-02-27 11:32:46'),(7,7,3,'评价内容7','2023-02-27 11:32:46','回复信息7','2023-02-27 11:32:46','2023-02-27 11:32:46'),(8,8,2,'评价内容8','2023-02-27 11:32:46','回复信息8','2023-02-27 11:32:46','2023-02-27 11:32:46'),(9,9,2,'评价内容9','2023-02-27 11:32:46','回复信息9','2023-02-27 11:32:46','2023-02-27 11:32:46'),(10,10,2,'评价内容10','2023-02-27 11:32:46','回复信息10','2023-02-27 11:32:46','2023-02-27 11:32:46'),(11,11,1,'评价内容11','2023-02-27 11:32:46','回复信息11','2023-02-27 11:32:46','2023-02-27 11:32:46'),(12,12,2,'评价内容12','2023-02-27 11:32:46','回复信息12','2023-02-27 11:32:46','2023-02-27 11:32:46'),(13,13,2,'评价内容13','2023-02-27 11:32:46','回复信息13','2023-02-27 11:32:46','2023-02-27 11:32:46'),(14,14,3,'评价内容14','2023-02-27 11:32:46','回复信息14','2023-02-27 11:32:46','2023-02-27 11:32:46'),(15,6,1,'广东省发生的','2023-02-27 13:10:09',NULL,NULL,'2023-02-27 13:10:09'),(16,6,4,'好得很','2023-02-27 13:15:58','固定','2023-02-27 13:17:55','2023-02-27 13:15:58');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `peisongrenyuan_id` int(11) DEFAULT NULL COMMENT '配送人员',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`peisongrenyuan_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1677474384978',2,11,1,NULL,1,'203.59',101,1,'2023-02-27 13:06:25','2023-02-27 13:06:25'),(2,'1677474493601',2,6,1,1,1,'141.92',105,1,'2023-02-27 13:08:14','2023-02-27 13:08:14'),(3,'1677474868585',16,5,4,NULL,1,'108.91',101,1,'2023-02-27 13:14:29','2023-02-27 13:14:29'),(4,'1677474877881',15,14,4,2,3,'714.15',106,1,'2023-02-27 13:14:38','2023-02-27 13:14:38'),(5,'1677474877881',15,6,4,2,1,'141.92',105,1,'2023-02-27 13:14:38','2023-02-27 13:14:38'),(6,'1677474877881',15,5,4,NULL,1,'108.91',101,1,'2023-02-27 13:14:38','2023-02-27 13:14:38');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','6u2ccu46n2mhz62g47ktgf4fyaerq4kb','2023-02-27 11:40:40','2023-02-27 14:18:55'),(2,1,'a1','yonghu','用户','14esdasbz3ebgpqa9cjlzptawprl32zr','2023-02-27 13:01:51','2023-02-27 14:10:43'),(3,1,'a1','shangjia','商家','n61eljho6mhcw6lwztrwdpiuwm0get8y','2023-02-27 13:06:38','2023-02-27 14:17:19'),(4,1,'a1','peisongrenyuan','配送人员','o6micc2ydecaebjfsz5gce0yhs4q3xuq','2023-02-27 13:09:04','2023-02-27 14:16:51'),(5,4,'a5','yonghu','用户','tzu6vpl6nqbewxnjzxicosxwojskgjwp','2023-02-27 13:12:19','2023-02-27 14:12:20'),(6,2,'a2','peisongrenyuan','配送人员','r4yin6num3s7u19g9hd9bsimys5mg2h3','2023-02-27 13:15:25','2023-02-27 14:15:26');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-02-27 11:30:46');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','11141.68','2023-02-27 11:32:46'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','709.80','2023-02-27 11:32:46'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','188.70','2023-02-27 11:32:46'),(4,'a5','123456','张5','17703786905','410224196610232001','upload/1677474761266.jpg',2,'5@qq.com','998925.11','2023-02-27 13:12:14');

/*Table structure for table `yonghujiankang` */

DROP TABLE IF EXISTS `yonghujiankang`;

CREATE TABLE `yonghujiankang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiance_time` timestamp NULL DEFAULT NULL COMMENT '检测时间',
  `jiance_types` int(11) NOT NULL COMMENT '检测结果  Search111 ',
  `yonghujiankang_file` varchar(200) DEFAULT NULL COMMENT '证明文件',
  `yonghujiankang_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上报时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='用户健康';

/*Data for the table `yonghujiankang` */

insert  into `yonghujiankang`(`id`,`yonghu_id`,`jiance_time`,`jiance_types`,`yonghujiankang_file`,`yonghujiankang_content`,`insert_time`,`create_time`) values (1,2,'2023-02-27 11:32:46',2,'upload/file.rar','备注1','2023-02-27 11:32:46','2023-02-27 11:32:46'),(2,3,'2023-02-27 11:32:46',2,'upload/file.rar','备注2','2023-02-27 11:32:46','2023-02-27 11:32:46'),(3,2,'2023-02-27 11:32:46',2,'upload/file.rar','备注3','2023-02-27 11:32:46','2023-02-27 11:32:46'),(4,2,'2023-02-27 11:32:46',2,'upload/file.rar','备注4','2023-02-27 11:32:46','2023-02-27 11:32:46'),(5,1,'2023-02-27 11:32:46',1,'upload/file.rar','备注5','2023-02-27 11:32:46','2023-02-27 11:32:46'),(6,2,'2023-02-27 11:32:46',2,'upload/file.rar','备注6','2023-02-27 11:32:46','2023-02-27 11:32:46'),(7,2,'2023-02-27 11:32:46',2,'upload/file.rar','备注7','2023-02-27 11:32:46','2023-02-27 11:32:46'),(8,2,'2023-02-27 11:32:46',1,'upload/file.rar','备注8','2023-02-27 11:32:46','2023-02-27 11:32:46'),(9,2,'2023-02-27 11:32:46',2,'upload/file.rar','备注9','2023-02-27 11:32:46','2023-02-27 11:32:46'),(10,2,'2023-02-27 11:32:46',1,'upload/file.rar','备注10','2023-02-27 11:32:46','2023-02-27 11:32:46'),(11,2,'2023-02-27 11:32:46',1,'upload/file.rar','备注11','2023-02-27 11:32:46','2023-02-27 11:32:46'),(12,2,'2023-02-27 11:32:46',1,'upload/file.rar','备注12','2023-02-27 11:32:46','2023-02-27 11:32:46'),(13,2,'2023-02-27 11:32:46',1,'upload/file.rar','备注13','2023-02-27 11:32:46','2023-02-27 11:32:46'),(14,1,'2023-02-27 11:32:46',1,'upload/file.rar','备注14','2023-02-27 11:32:46','2023-02-27 11:32:46'),(15,1,'2023-02-27 13:02:24',1,'upload/1677474155246.doc','回复的改动过大','2023-02-27 13:04:37','2023-02-27 13:04:37'),(16,1,'2023-02-27 13:04:49',1,'upload/1677474297097.jpg','发广东省发顺丰','2023-02-27 13:04:59','2023-02-27 13:04:59'),(17,4,'2023-02-27 13:16:28',1,'upload/1677474995769.doc','广东佛山','2023-02-27 13:16:38','2023-02-27 13:16:38');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
