-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl60754281
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cl60754281`
--

/*!40000 DROP DATABASE IF EXISTS `cl60754281`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl60754281` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl60754281`;

--
-- Table structure for table `chuzhiyuan`
--

DROP TABLE IF EXISTS `chuzhiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chuzhiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chuzhizhanghao` varchar(200) NOT NULL COMMENT '处置账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `chuzhiyuan` varchar(200) NOT NULL COMMENT '处置员',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chuzhizhanghao` (`chuzhizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='处置员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuzhiyuan`
--

LOCK TABLES `chuzhiyuan` WRITE;
/*!40000 ALTER TABLE `chuzhiyuan` DISABLE KEYS */;
INSERT INTO `chuzhiyuan` VALUES (31,'2024-03-29 07:52:08','处置账号1','123456','处置员1','男','file/chuzhiyuanTouxiang1.jpg','19819881111'),(32,'2024-03-29 07:52:08','处置账号2','123456','处置员2','男','file/chuzhiyuanTouxiang2.jpg','19819881112'),(33,'2024-03-29 07:52:08','处置账号3','123456','处置员3','男','file/chuzhiyuanTouxiang3.jpg','19819881113'),(34,'2024-03-29 07:52:08','处置账号4','123456','处置员4','男','file/chuzhiyuanTouxiang4.jpg','19819881114'),(35,'2024-03-29 07:52:08','处置账号5','123456','处置员5','男','file/chuzhiyuanTouxiang5.jpg','19819881115'),(36,'2024-03-29 07:52:08','处置账号6','123456','处置员6','男','file/chuzhiyuanTouxiang6.jpg','19819881116');
/*!40000 ALTER TABLE `chuzhiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dengjiyuan`
--

DROP TABLE IF EXISTS `dengjiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dengjiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dengjizhanghao` varchar(200) NOT NULL COMMENT '登记账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `dengjiyuan` varchar(200) NOT NULL COMMENT '登记员',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dengjizhanghao` (`dengjizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='登记员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dengjiyuan`
--

LOCK TABLES `dengjiyuan` WRITE;
/*!40000 ALTER TABLE `dengjiyuan` DISABLE KEYS */;
INSERT INTO `dengjiyuan` VALUES (11,'2024-03-29 07:52:08','登记账号1','123456','登记员1','男','file/dengjiyuanTouxiang1.jpg','19819881111'),(12,'2024-03-29 07:52:08','登记账号2','123456','登记员2','男','file/dengjiyuanTouxiang2.jpg','19819881112'),(13,'2024-03-29 07:52:08','登记账号3','123456','登记员3','男','file/dengjiyuanTouxiang3.jpg','19819881113'),(14,'2024-03-29 07:52:08','登记账号4','123456','登记员4','男','file/dengjiyuanTouxiang4.jpg','19819881114'),(15,'2024-03-29 07:52:08','登记账号5','123456','登记员5','男','file/dengjiyuanTouxiang5.jpg','19819881115'),(16,'2024-03-29 07:52:08','登记账号6','123456','登记员6','男','file/dengjiyuanTouxiang6.jpg','19819881116');
/*!40000 ALTER TABLE `dengjiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feiwucunchu`
--

DROP TABLE IF EXISTS `feiwucunchu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feiwucunchu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chuzhizhanghao` varchar(200) DEFAULT NULL COMMENT '处置账号',
  `chuzhiyuan` varchar(200) DEFAULT NULL COMMENT '处置员',
  `feiwumingcheng` varchar(200) DEFAULT NULL COMMENT '废物名称',
  `feiwuleibie` varchar(200) DEFAULT NULL COMMENT '废物类别',
  `cunchudidian` varchar(200) DEFAULT NULL COMMENT '存储地点',
  `cunchushijian` date DEFAULT NULL COMMENT '存储时间',
  `zhuanyunzhanghao` varchar(200) DEFAULT NULL COMMENT '转运账号',
  `zhuanyunyuan` varchar(200) DEFAULT NULL COMMENT '转运员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='废物存储';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feiwucunchu`
--

LOCK TABLES `feiwucunchu` WRITE;
/*!40000 ALTER TABLE `feiwucunchu` DISABLE KEYS */;
INSERT INTO `feiwucunchu` VALUES (81,'2024-03-29 07:52:08','处置账号1','处置员1','废物名称1','废物类别1','存储地点1','2024-03-29','转运账号1','转运员1'),(82,'2024-03-29 07:52:08','处置账号2','处置员2','废物名称2','废物类别2','存储地点2','2024-03-29','转运账号2','转运员2'),(83,'2024-03-29 07:52:08','处置账号3','处置员3','废物名称3','废物类别3','存储地点3','2024-03-29','转运账号3','转运员3'),(84,'2024-03-29 07:52:08','处置账号4','处置员4','废物名称4','废物类别4','存储地点4','2024-03-29','转运账号4','转运员4'),(85,'2024-03-29 07:52:08','处置账号5','处置员5','废物名称5','废物类别5','存储地点5','2024-03-29','转运账号5','转运员5'),(86,'2024-03-29 07:52:08','处置账号6','处置员6','废物名称6','废物类别6','存储地点6','2024-03-29','转运账号6','转运员6');
/*!40000 ALTER TABLE `feiwucunchu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feiwudengji`
--

DROP TABLE IF EXISTS `feiwudengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feiwudengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `feiwumingcheng` varchar(200) DEFAULT NULL COMMENT '废物名称',
  `tupian` longtext COMMENT '图片',
  `feiwuleibie` varchar(200) DEFAULT NULL COMMENT '废物类别',
  `yiliaojigoumingcheng` varchar(200) DEFAULT NULL COMMENT '医疗机构名称',
  `chanshengkeshi` varchar(200) DEFAULT NULL COMMENT '产生科室',
  `cunfangdidian` varchar(200) DEFAULT NULL COMMENT '存放地点',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `dengjizhanghao` varchar(200) DEFAULT NULL COMMENT '登记账号',
  `dengjiyuan` varchar(200) DEFAULT NULL COMMENT '登记员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='废物登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feiwudengji`
--

LOCK TABLES `feiwudengji` WRITE;
/*!40000 ALTER TABLE `feiwudengji` DISABLE KEYS */;
INSERT INTO `feiwudengji` VALUES (61,'2024-03-29 07:52:08','废物名称1','file/feiwudengjiTupian1.jpg,file/feiwudengjiTupian2.jpg,file/feiwudengjiTupian3.jpg','废物类别1','医疗机构名称1','产生科室1','存放地点1','2024-03-29','登记账号1','登记员1'),(62,'2024-03-29 07:52:08','废物名称2','file/feiwudengjiTupian2.jpg,file/feiwudengjiTupian3.jpg,file/feiwudengjiTupian4.jpg','废物类别2','医疗机构名称2','产生科室2','存放地点2','2024-03-29','登记账号2','登记员2'),(63,'2024-03-29 07:52:08','废物名称3','file/feiwudengjiTupian3.jpg,file/feiwudengjiTupian4.jpg,file/feiwudengjiTupian5.jpg','废物类别3','医疗机构名称3','产生科室3','存放地点3','2024-03-29','登记账号3','登记员3'),(64,'2024-03-29 07:52:08','废物名称4','file/feiwudengjiTupian4.jpg,file/feiwudengjiTupian5.jpg,file/feiwudengjiTupian6.jpg','废物类别4','医疗机构名称4','产生科室4','存放地点4','2024-03-29','登记账号4','登记员4'),(65,'2024-03-29 07:52:08','废物名称5','file/feiwudengjiTupian5.jpg,file/feiwudengjiTupian6.jpg,file/feiwudengjiTupian7.jpg','废物类别5','医疗机构名称5','产生科室5','存放地点5','2024-03-29','登记账号5','登记员5'),(66,'2024-03-29 07:52:08','废物名称6','file/feiwudengjiTupian6.jpg,file/feiwudengjiTupian7.jpg,file/feiwudengjiTupian8.jpg','废物类别6','医疗机构名称6','产生科室6','存放地点6','2024-03-29','登记账号6','登记员6');
/*!40000 ALTER TABLE `feiwudengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feiwujiaojie`
--

DROP TABLE IF EXISTS `feiwujiaojie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feiwujiaojie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanyunzhanghao` varchar(200) NOT NULL COMMENT '转运账号',
  `zhuanyunyuan` varchar(200) NOT NULL COMMENT '转运员',
  `feiwumingcheng` varchar(200) NOT NULL COMMENT '废物名称',
  `feiwuleibie` varchar(200) NOT NULL COMMENT '废物类别',
  `jiaojiedidian` varchar(200) DEFAULT NULL COMMENT '交接地点',
  `jiaojieriqi` date DEFAULT NULL COMMENT '交接日期',
  `yunshugongju` varchar(200) DEFAULT NULL COMMENT '运输工具',
  `dengjizhanghao` varchar(200) NOT NULL COMMENT '登记账号',
  `dengjiyuan` varchar(200) NOT NULL COMMENT '登记员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='废物交接';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feiwujiaojie`
--

LOCK TABLES `feiwujiaojie` WRITE;
/*!40000 ALTER TABLE `feiwujiaojie` DISABLE KEYS */;
INSERT INTO `feiwujiaojie` VALUES (71,'2024-03-29 07:52:08','转运账号1','转运员1','废物名称1','废物类别1','交接地点1','2024-03-29','运输工具1','登记账号1','登记员1'),(72,'2024-03-29 07:52:08','转运账号2','转运员2','废物名称2','废物类别2','交接地点2','2024-03-29','运输工具2','登记账号2','登记员2'),(73,'2024-03-29 07:52:08','转运账号3','转运员3','废物名称3','废物类别3','交接地点3','2024-03-29','运输工具3','登记账号3','登记员3'),(74,'2024-03-29 07:52:08','转运账号4','转运员4','废物名称4','废物类别4','交接地点4','2024-03-29','运输工具4','登记账号4','登记员4'),(75,'2024-03-29 07:52:08','转运账号5','转运员5','废物名称5','废物类别5','交接地点5','2024-03-29','运输工具5','登记账号5','登记员5'),(76,'2024-03-29 07:52:08','转运账号6','转运员6','废物名称6','废物类别6','交接地点6','2024-03-29','运输工具6','登记账号6','登记员6');
/*!40000 ALTER TABLE `feiwujiaojie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feiwuxiaohui`
--

DROP TABLE IF EXISTS `feiwuxiaohui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feiwuxiaohui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `feiwumingcheng` varchar(200) DEFAULT NULL COMMENT '废物名称',
  `feiwuleibie` varchar(200) DEFAULT NULL COMMENT '废物类别',
  `xiaohuididian` varchar(200) DEFAULT NULL COMMENT '销毁地点',
  `xiaohuishijian` date DEFAULT NULL COMMENT '销毁时间',
  `xiaohuifangshi` varchar(200) DEFAULT NULL COMMENT '销毁方式',
  `chuzhizhanghao` varchar(200) DEFAULT NULL COMMENT '处置账号',
  `chuzhiyuan` varchar(200) DEFAULT NULL COMMENT '处置员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='废物销毁';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feiwuxiaohui`
--

LOCK TABLES `feiwuxiaohui` WRITE;
/*!40000 ALTER TABLE `feiwuxiaohui` DISABLE KEYS */;
INSERT INTO `feiwuxiaohui` VALUES (91,'2024-03-29 07:52:08','废物名称1','废物类别1','销毁地点1','2024-03-29','焚烧','处置账号1','处置员1'),(92,'2024-03-29 07:52:08','废物名称2','废物类别2','销毁地点2','2024-03-29','焚烧','处置账号2','处置员2'),(93,'2024-03-29 07:52:08','废物名称3','废物类别3','销毁地点3','2024-03-29','焚烧','处置账号3','处置员3'),(94,'2024-03-29 07:52:08','废物名称4','废物类别4','销毁地点4','2024-03-29','焚烧','处置账号4','处置员4'),(95,'2024-03-29 07:52:08','废物名称5','废物类别5','销毁地点5','2024-03-29','焚烧','处置账号5','处置员5'),(96,'2024-03-29 07:52:08','废物名称6','废物类别6','销毁地点6','2024-03-29','焚烧','处置账号6','处置员6');
/*!40000 ALTER TABLE `feiwuxiaohui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-29 07:52:08','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common47\",\"menu\":\"管理员管理\",\"unicode\":\"&#xef63;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"登记员\",\"menuJump\":\"列表\",\"tableName\":\"dengjiyuan\"},{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"处置员\",\"menuJump\":\"列表\",\"tableName\":\"chuzhiyuan\"},{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"转运员\",\"menuJump\":\"列表\",\"tableName\":\"zhuanyunyuan\"}],\"fontClass\":\"icon-user4\",\"menu\":\"角色管理\",\"unicode\":\"&#xef9a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"废物数量统计\",\"废物类型分析\",\"首页总数\",\"首页统计\",\"医疗废物分析\"],\"menu\":\"废物登记\",\"menuJump\":\"列表\",\"tableName\":\"feiwudengji\"}],\"fontClass\":\"icon-common4\",\"menu\":\"废物登记管理\",\"unicode\":\"&#xedab;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\"],\"menu\":\"废物交接\",\"menuJump\":\"列表\",\"tableName\":\"feiwujiaojie\"}],\"fontClass\":\"icon-common15\",\"menu\":\"废物交接管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\"],\"menu\":\"废物存储\",\"menuJump\":\"列表\",\"tableName\":\"feiwucunchu\"}],\"fontClass\":\"icon-common50\",\"menu\":\"废物存储管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\"],\"menu\":\"废物销毁\",\"menuJump\":\"列表\",\"tableName\":\"feiwuxiaohui\"}],\"fontClass\":\"icon-common45\",\"menu\":\"废物销毁管理\",\"unicode\":\"&#xef3b;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"交接\"],\"menu\":\"废物登记\",\"menuJump\":\"列表\",\"tableName\":\"feiwudengji\"}],\"fontClass\":\"icon-common4\",\"menu\":\"废物登记管理\",\"unicode\":\"&#xedab;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\"],\"menu\":\"废物交接\",\"menuJump\":\"列表\",\"tableName\":\"feiwujiaojie\"}],\"fontClass\":\"icon-common15\",\"menu\":\"废物交接管理\",\"unicode\":\"&#xedfc;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"登记员\",\"tableName\":\"dengjiyuan\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"存储\"],\"menu\":\"废物交接\",\"menuJump\":\"列表\",\"tableName\":\"feiwujiaojie\"}],\"fontClass\":\"icon-common15\",\"menu\":\"废物交接管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\"],\"menu\":\"废物存储\",\"menuJump\":\"列表\",\"tableName\":\"feiwucunchu\"}],\"fontClass\":\"icon-common50\",\"menu\":\"废物存储管理\",\"unicode\":\"&#xef96;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"转运员\",\"tableName\":\"zhuanyunyuan\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\",\"销毁\"],\"menu\":\"废物存储\",\"menuJump\":\"列表\",\"tableName\":\"feiwucunchu\"}],\"fontClass\":\"icon-common50\",\"menu\":\"废物存储管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\"],\"menu\":\"废物销毁\",\"menuJump\":\"列表\",\"tableName\":\"feiwuxiaohui\"}],\"fontClass\":\"icon-common45\",\"menu\":\"废物销毁管理\",\"unicode\":\"&#xef3b;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"处置员\",\"tableName\":\"chuzhiyuan\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-29 07:52:08','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanyunyuan`
--

DROP TABLE IF EXISTS `zhuanyunyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanyunyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanyunzhanghao` varchar(200) NOT NULL COMMENT '转运账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhuanyunyuan` varchar(200) NOT NULL COMMENT '转运员',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhuanyunzhanghao` (`zhuanyunzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='转运员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanyunyuan`
--

LOCK TABLES `zhuanyunyuan` WRITE;
/*!40000 ALTER TABLE `zhuanyunyuan` DISABLE KEYS */;
INSERT INTO `zhuanyunyuan` VALUES (21,'2024-03-29 07:52:08','转运账号1','123456','转运员1','男','file/zhuanyunyuanTouxiang1.jpg','19819881111'),(22,'2024-03-29 07:52:08','转运账号2','123456','转运员2','男','file/zhuanyunyuanTouxiang2.jpg','19819881112'),(23,'2024-03-29 07:52:08','转运账号3','123456','转运员3','男','file/zhuanyunyuanTouxiang3.jpg','19819881113'),(24,'2024-03-29 07:52:08','转运账号4','123456','转运员4','男','file/zhuanyunyuanTouxiang4.jpg','19819881114'),(25,'2024-03-29 07:52:08','转运账号5','123456','转运员5','男','file/zhuanyunyuanTouxiang5.jpg','19819881115'),(26,'2024-03-29 07:52:08','转运账号6','123456','转运员6','男','file/zhuanyunyuanTouxiang6.jpg','19819881116');
/*!40000 ALTER TABLE `zhuanyunyuan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-11 16:54:46
