-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmc7679
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615776045775 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-15 02:18:55',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-15 02:18:55',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-15 02:18:55',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-15 02:18:55',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-15 02:18:55',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-15 02:18:55',6,'宇宙银河系月球1号','月某','13823888886','是'),(1615775609067,'2021-03-15 02:33:28',1615775528482,'广东省梅州市梅江区江南街道美凤路江南阁','陈一','12312312312','是'),(1615776045774,'2021-03-15 02:40:44',1615775998815,'广东省梅州市梅江区江南街道嘉应桥头公园','陈一','12312312312','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'tushuxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615776099035 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615776115375 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2021-03-15 02:18:55',1,1,'提问1','回复1',1),(52,'2021-03-15 02:18:55',2,2,'提问2','回复2',2),(53,'2021-03-15 02:18:55',3,3,'提问3','回复3',3),(54,'2021-03-15 02:18:55',4,4,'提问4','回复4',4),(55,'2021-03-15 02:18:55',5,5,'提问5','回复5',5),(56,'2021-03-15 02:18:55',6,6,'提问6','回复6',6),(1615775730379,'2021-03-15 02:35:30',1615775528482,NULL,'‍请问有少儿类书籍吗\r\n','有的\r\n',0),(1615776115374,'2021-03-15 02:41:55',1615775998815,NULL,'‍请问有少儿类书籍吗\r\n','有的\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmc7679/upload/1615775977218.jpg'),(2,'picture2','http://localhost:8080/jspmc7679/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmc7679/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstushuxinxi`
--

DROP TABLE IF EXISTS `discusstushuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615776306648 DEFAULT CHARSET=utf8 COMMENT='图书信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstushuxinxi`
--

LOCK TABLES `discusstushuxinxi` WRITE;
/*!40000 ALTER TABLE `discusstushuxinxi` DISABLE KEYS */;
INSERT INTO `discusstushuxinxi` VALUES (111,'2021-03-15 02:18:55',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-15 02:18:55',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-15 02:18:55',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-15 02:18:55',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-15 02:18:55',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-15 02:18:55',6,6,'用户名6','评论内容6','回复内容6'),(1615776306647,'2021-03-15 02:45:05',1615775933748,1615775998815,NULL,'很好的作品',NULL);
/*!40000 ALTER TABLE `discusstushuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615775967927 DEFAULT CHARSET=utf8 COMMENT='图书资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-15 02:18:55','标题1','简介1','http://localhost:8080/jspmc7679/upload/1615775075556.jpg','内容1\r\n'),(102,'2021-03-15 02:18:55','标题2','简介2','http://localhost:8080/jspmc7679/upload/1615775083651.jpg','内容2\r\n'),(103,'2021-03-15 02:18:55','标题3','简介3','http://localhost:8080/jspmc7679/upload/1615775088880.jpg','内容3\r\n'),(104,'2021-03-15 02:18:55','标题4','简介4','http://localhost:8080/jspmc7679/upload/1615775102172.jpg','内容4\r\n'),(105,'2021-03-15 02:18:55','标题5','简介5','http://localhost:8080/jspmc7679/upload/1615775107963.jpg','内容5\r\n'),(106,'2021-03-15 02:18:55','标题6','简介6','http://localhost:8080/jspmc7679/upload/1615775117706.jpg','内容6\r\n'),(1615775967926,'2021-03-15 02:39:27','图书优惠资讯','图书优惠','http://localhost:8080/jspmc7679/upload/1615775950020.jpg','全场图书参与优惠资讯\r\n活动时间：5.7-5.9\r\n<img src=\"http://localhost:8080/jspmc7679/upload/1615775966251.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmc7679/upload/1615775966251.jpg\">\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'tushuxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1615776125842 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1615776125841,'2021-03-15 02:42:05','20213151042377536892','tushuxinxi',1615775998815,1615775933748,'晚熟的人','http://localhost:8080/jspmc7679/upload/1615775904041.jpg',3,35,35,105,105,1,'已完成','广东省梅州市梅江区江南街道嘉应桥头公园');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615776073426 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615775657121,'2021-03-15 02:34:16',1615775528482,1615775458047,'tushuxinxi','晚熟的人','http://localhost:8080/jspmc7679/upload/1615775422936.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','8vod4jpdxuhfi1pnwef9ux7x6vtsg0ij','2021-03-15 02:19:42','2021-03-15 03:43:57'),(2,11,'用户1','yonghu','用户','k9ksqman3fooglv0pc510i7d5eohw8x9','2021-03-15 02:20:14','2021-03-15 03:20:15'),(3,1615775528482,'1','yonghu','用户','s2wjxv46nclr7skq69c3wxxfqsb7tji4','2021-03-15 02:32:52','2021-03-15 03:32:52'),(4,1615775998815,'1','yonghu','用户','b88esvqh0jepc1w4bktj4nnbvrceeets','2021-03-15 02:40:03','2021-03-15 03:44:56');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushufenlei`
--

DROP TABLE IF EXISTS `tushufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushufenlei` varchar(200) NOT NULL COMMENT '图书分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushufenlei` (`tushufenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1615775884624 DEFAULT CHARSET=utf8 COMMENT='图书分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushufenlei`
--

LOCK TABLES `tushufenlei` WRITE;
/*!40000 ALTER TABLE `tushufenlei` DISABLE KEYS */;
INSERT INTO `tushufenlei` VALUES (21,'2021-03-15 02:18:55','图书分类1'),(22,'2021-03-15 02:18:55','图书分类2'),(23,'2021-03-15 02:18:55','图书分类3'),(24,'2021-03-15 02:18:55','图书分类4'),(25,'2021-03-15 02:18:55','图书分类5'),(26,'2021-03-15 02:18:55','图书分类6'),(1615775884623,'2021-03-15 02:38:04','文学小说');
/*!40000 ALTER TABLE `tushufenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushupingjia`
--

DROP TABLE IF EXISTS `tushupingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushupingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) DEFAULT NULL COMMENT '图书分类',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615776215959 DEFAULT CHARSET=utf8 COMMENT='图书评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushupingjia`
--

LOCK TABLES `tushupingjia` WRITE;
/*!40000 ALTER TABLE `tushupingjia` DISABLE KEYS */;
INSERT INTO `tushupingjia` VALUES (41,'2021-03-15 02:18:55','订单编号1','图书名称1','图书分类1','1','评价内容1','2021-03-15','用户名1','联系电话1','是',''),(42,'2021-03-15 02:18:55','订单编号2','图书名称2','图书分类2','1','评价内容2','2021-03-15','用户名2','联系电话2','是',''),(43,'2021-03-15 02:18:55','订单编号3','图书名称3','图书分类3','1','评价内容3','2021-03-15','用户名3','联系电话3','是',''),(44,'2021-03-15 02:18:55','订单编号4','图书名称4','图书分类4','1','评价内容4','2021-03-15','用户名4','联系电话4','是',''),(45,'2021-03-15 02:18:55','订单编号5','图书名称5','图书分类5','1','评价内容5','2021-03-15','用户名5','联系电话5','是',''),(46,'2021-03-15 02:18:55','订单编号6','图书名称6','图书分类6','1','评价内容6','2021-03-15','用户名6','联系电话6','是',''),(1615776215958,'2021-03-15 02:43:35','20213151042377536892','晚熟的人','文学小说','5','很不错的书籍','2021-03-15','1','12345678978','是','感谢支持');
/*!40000 ALTER TABLE `tushupingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tushuxinxi`
--

DROP TABLE IF EXISTS `tushuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `tushufenlei` varchar(200) NOT NULL COMMENT '图书分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `tushujianjie` longtext COMMENT '图书简介',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615775933749 DEFAULT CHARSET=utf8 COMMENT='图书信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tushuxinxi`
--

LOCK TABLES `tushuxinxi` WRITE;
/*!40000 ALTER TABLE `tushuxinxi` DISABLE KEYS */;
INSERT INTO `tushuxinxi` VALUES (31,'2021-03-15 02:18:55','图书编号1','图书名称1','图书分类1','http://localhost:8080/jspmc7679/upload/1615774979926.jpg','作者1','出版社1','图书简介1\r\n','2021-03-15 10:22:18',5,99.9),(32,'2021-03-15 02:18:55','图书编号2','图书名称2','图书分类2','http://localhost:8080/jspmc7679/upload/1615774988094.jpg','作者2','出版社2','图书简介2\r\n','2021-03-15 10:23:04',4,99.9),(33,'2021-03-15 02:18:55','图书编号3','图书名称3','图书分类3','http://localhost:8080/jspmc7679/upload/1615774996007.jpg','作者3','出版社3','图书简介3\r\n','2021-03-15 10:23:11',5,99.9),(34,'2021-03-15 02:18:55','图书编号4','图书名称4','图书分类4','http://localhost:8080/jspmc7679/upload/1615775005347.jpg','作者4','出版社4','图书简介4\r\n','2021-03-15 10:23:21',6,99.9),(35,'2021-03-15 02:18:55','图书编号5','图书名称5','图书分类5','http://localhost:8080/jspmc7679/upload/1615775018607.jpg','作者5','出版社5','图书简介5\r\n','2021-03-15 10:41:38',14,99.9),(36,'2021-03-15 02:18:55','图书编号6','图书名称6','图书分类6','http://localhost:8080/jspmc7679/upload/1615775062280.jpg','作者6','出版社6','图书简介6\r\n','2021-03-15 10:41:01',16,99.9),(1615775933748,'2021-03-15 02:38:53','1615775887','晚熟的人','文学小说','http://localhost:8080/jspmc7679/upload/1615775904041.jpg','莫言','人民文学出版社','莫言用十二个故事讲述了获得诺贝尔文学奖后八年的里里外外；\r\n<img src=\"http://localhost:8080/jspmc7679/upload/1615775932110.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmc7679/upload/1615775932110.jpg\">\r\n','2021-03-15 10:45:09',7,35);
/*!40000 ALTER TABLE `tushuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-15 02:18:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615775998816 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-15 02:18:55','用户1','123456','姓名1','男','http://localhost:8080/jspmc7679/upload/yonghu_touxiang1.jpg','13823888881',100),(12,'2021-03-15 02:18:55','用户2','123456','姓名2','男','http://localhost:8080/jspmc7679/upload/yonghu_touxiang2.jpg','13823888882',100),(13,'2021-03-15 02:18:55','用户3','123456','姓名3','男','http://localhost:8080/jspmc7679/upload/yonghu_touxiang3.jpg','13823888883',100),(14,'2021-03-15 02:18:55','用户4','123456','姓名4','男','http://localhost:8080/jspmc7679/upload/yonghu_touxiang4.jpg','13823888884',100),(15,'2021-03-15 02:18:55','用户5','123456','姓名5','男','http://localhost:8080/jspmc7679/upload/yonghu_touxiang5.jpg','13823888885',100),(16,'2021-03-15 02:18:55','用户6','123456','姓名6','男','http://localhost:8080/jspmc7679/upload/yonghu_touxiang6.jpg','13823888886',100),(1615775998815,'2021-03-15 02:39:58','1','1','陈一','女','http://localhost:8080/jspmc7679/upload/1615776012582.jpg','12345678978',895);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-21 19:25:09
