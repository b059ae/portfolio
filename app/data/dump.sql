-- MySQL dump 10.13  Distrib 5.7.19-17, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: ap
-- ------------------------------------------------------
-- Server version	5.7.19-17

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
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

--
-- Table structure for table `easyii_admins`
--

DROP TABLE IF EXISTS `easyii_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `auth_key` varchar(128) DEFAULT NULL,
  `access_token` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token` (`access_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_admins`
--

LOCK TABLES `easyii_admins` WRITE;
/*!40000 ALTER TABLE `easyii_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_article_categories`
--

DROP TABLE IF EXISTS `easyii_article_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_article_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text,
  `image_file` varchar(128) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_article_categories`
--

LOCK TABLES `easyii_article_categories` WRITE;
/*!40000 ALTER TABLE `easyii_article_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_article_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_article_items`
--

DROP TABLE IF EXISTS `easyii_article_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_article_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `image_file` varchar(128) DEFAULT NULL,
  `short` varchar(1024) DEFAULT NULL,
  `text` text,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `source` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_article_items`
--

LOCK TABLES `easyii_article_items` WRITE;
/*!40000 ALTER TABLE `easyii_article_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_article_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_carousel`
--

DROP TABLE IF EXISTS `easyii_carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_file` varchar(128) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` varchar(1024) DEFAULT NULL,
  `order_num` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_carousel`
--

LOCK TABLES `easyii_carousel` WRITE;
/*!40000 ALTER TABLE `easyii_carousel` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_catalog_categories`
--

DROP TABLE IF EXISTS `easyii_catalog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_catalog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text,
  `image_file` varchar(128) DEFAULT NULL,
  `fields` text,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_catalog_categories`
--

LOCK TABLES `easyii_catalog_categories` WRITE;
/*!40000 ALTER TABLE `easyii_catalog_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_catalog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_catalog_item_data`
--

DROP TABLE IF EXISTS `easyii_catalog_item_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_catalog_item_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id_name` (`item_id`,`name`),
  KEY `value` (`value`(300))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_catalog_item_data`
--

LOCK TABLES `easyii_catalog_item_data` WRITE;
/*!40000 ALTER TABLE `easyii_catalog_item_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_catalog_item_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_catalog_items`
--

DROP TABLE IF EXISTS `easyii_catalog_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_catalog_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `description` text,
  `available` int(11) DEFAULT '1',
  `price` float DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  `data` text,
  `image_file` varchar(128) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_catalog_items`
--

LOCK TABLES `easyii_catalog_items` WRITE;
/*!40000 ALTER TABLE `easyii_catalog_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_catalog_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_entity_categories`
--

DROP TABLE IF EXISTS `easyii_entity_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_entity_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text,
  `image_file` varchar(128) DEFAULT NULL,
  `fields` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `cache` tinyint(1) NOT NULL DEFAULT '1',
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_entity_categories`
--

LOCK TABLES `easyii_entity_categories` WRITE;
/*!40000 ALTER TABLE `easyii_entity_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_entity_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_entity_items`
--

DROP TABLE IF EXISTS `easyii_entity_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_entity_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `data` text NOT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_entity_items`
--

LOCK TABLES `easyii_entity_items` WRITE;
/*!40000 ALTER TABLE `easyii_entity_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_entity_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_faq`
--

DROP TABLE IF EXISTS `easyii_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `order_num` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_faq`
--

LOCK TABLES `easyii_faq` WRITE;
/*!40000 ALTER TABLE `easyii_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_feedback`
--

DROP TABLE IF EXISTS `easyii_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text NOT NULL,
  `answer_subject` varchar(128) DEFAULT NULL,
  `answer_text` text,
  `time` int(11) DEFAULT '0',
  `ip` varchar(16) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_feedback`
--

LOCK TABLES `easyii_feedback` WRITE;
/*!40000 ALTER TABLE `easyii_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_files`
--

DROP TABLE IF EXISTS `easyii_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `file` varchar(255) NOT NULL,
  `size` int(11) DEFAULT '0',
  `slug` varchar(128) DEFAULT NULL,
  `downloads` int(11) DEFAULT '0',
  `time` int(11) DEFAULT '0',
  `order_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_files`
--

LOCK TABLES `easyii_files` WRITE;
/*!40000 ALTER TABLE `easyii_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_gallery_categories`
--

DROP TABLE IF EXISTS `easyii_gallery_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_gallery_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text,
  `image_file` varchar(128) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_gallery_categories`
--

LOCK TABLES `easyii_gallery_categories` WRITE;
/*!40000 ALTER TABLE `easyii_gallery_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_gallery_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_guestbook`
--

DROP TABLE IF EXISTS `easyii_guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text NOT NULL,
  `answer` text,
  `email` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `ip` varchar(16) DEFAULT NULL,
  `new` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_guestbook`
--

LOCK TABLES `easyii_guestbook` WRITE;
/*!40000 ALTER TABLE `easyii_guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_loginform`
--

DROP TABLE IF EXISTS `easyii_loginform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_loginform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `user_agent` varchar(1024) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `success` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_loginform`
--

LOCK TABLES `easyii_loginform` WRITE;
/*!40000 ALTER TABLE `easyii_loginform` DISABLE KEYS */;
INSERT INTO `easyii_loginform` (`id`, `username`, `password`, `ip`, `user_agent`, `time`, `success`) VALUES (1,'root','******','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:56.0) Gecko/20100101 Firefox/56.0',1508758688,1);
/*!40000 ALTER TABLE `easyii_loginform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_menu`
--

DROP TABLE IF EXISTS `easyii_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `items` text,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_menu`
--

LOCK TABLES `easyii_menu` WRITE;
/*!40000 ALTER TABLE `easyii_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_migration`
--

DROP TABLE IF EXISTS `easyii_migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_migration`
--

LOCK TABLES `easyii_migration` WRITE;
/*!40000 ALTER TABLE `easyii_migration` DISABLE KEYS */;
INSERT INTO `easyii_migration` (`version`, `apply_time`) VALUES ('m000000_000000_base',1508758683),('m000000_000000_install',1508758686),('m000009_100000_update',1508758687),('m000009_200000_update',1508758687),('m000009_200003_module_menu',1508758688),('m000009_200004_update',1508758688),('m170816_153554_source_article',1508758688),('m170816_154828_source_news',1508758688);
/*!40000 ALTER TABLE `easyii_migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_modules`
--

DROP TABLE IF EXISTS `easyii_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `class` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `settings` text,
  `notice` int(11) DEFAULT '0',
  `order_num` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_modules`
--

LOCK TABLES `easyii_modules` WRITE;
/*!40000 ALTER TABLE `easyii_modules` DISABLE KEYS */;
INSERT INTO `easyii_modules` (`id`, `name`, `class`, `title`, `icon`, `settings`, `notice`, `order_num`, `status`) VALUES (1,'entity','yii\\easyii\\modules\\entity\\EntityModule','Объекты','asterisk','{\"categoryThumb\":true,\"categorySlugImmutable\":false,\"categoryDescription\":true,\"itemsInFolder\":false}',0,95,1),(2,'article','yii\\easyii\\modules\\article\\ArticleModule','Статьи','pencil','{\"categoryThumb\":true,\"categorySlugImmutable\":false,\"categoryDescription\":true,\"articleThumb\":true,\"enablePhotos\":true,\"enableTags\":true,\"enableShort\":true,\"enableSource\":true,\"shortMaxLength\":255,\"itemsInFolder\":false,\"itemSlugImmutable\":false}',0,65,1),(3,'carousel','yii\\easyii\\modules\\carousel\\CarouselModule','Карусель','picture','{\"enableTitle\":true,\"enableText\":true}',0,40,1),(4,'catalog','yii\\easyii\\modules\\catalog\\CatalogModule','Каталог','list-alt','{\"categoryThumb\":true,\"categorySlugImmutable\":false,\"categoryDescription\":true,\"itemsInFolder\":false,\"itemThumb\":true,\"itemPhotos\":true,\"itemDescription\":true,\"itemSlugImmutable\":false}',0,100,1),(5,'faq','yii\\easyii\\modules\\faq\\FaqModule','Вопросы и ответы','question-sign','{\"questionHtmlEditor\":true,\"answerHtmlEditor\":true,\"enableTags\":true}',0,45,1),(6,'feedback','yii\\easyii\\modules\\feedback\\FeedbackModule','Обратная связь','earphone','{\"mailAdminOnNewFeedback\":true,\"subjectOnNewFeedback\":\"New feedback\",\"templateOnNewFeedback\":\"@easyii\\/modules\\/feedback\\/mail\\/en\\/new_feedback\",\"answerTemplate\":\"@easyii\\/modules\\/feedback\\/mail\\/en\\/answer\",\"answerSubject\":\"Answer on your feedback message\",\"answerHeader\":\"Hello,\",\"answerFooter\":\"Best regards.\",\"telegramAdminOnNewFeedback\":false,\"telegramTemplateOnNewFeedback\":\"@easyii\\/modules\\/feedback\\/telegram\\/en\\/new_feedback\",\"enableTitle\":false,\"enableEmail\":true,\"enablePhone\":true,\"enableText\":true,\"enableCaptcha\":false}',0,60,1),(7,'file','yii\\easyii\\modules\\file\\FileModule','Файлы','floppy-disk','{\"slugImmutable\":false}',0,30,1),(8,'gallery','yii\\easyii\\modules\\gallery\\GalleryModule','Фотогалерея','camera','{\"categoryThumb\":true,\"itemsInFolder\":false,\"categoryTags\":true,\"categorySlugImmutable\":false,\"categoryDescription\":true}',0,90,1),(9,'guestbook','yii\\easyii\\modules\\guestbook\\GuestbookModule','Гостевая книга','book','{\"enableTitle\":false,\"enableEmail\":true,\"preModerate\":false,\"enableCaptcha\":false,\"mailAdminOnNewPost\":true,\"subjectOnNewPost\":\"New message in the guestbook.\",\"templateOnNewPost\":\"@easyii\\/modules\\/guestbook\\/mail\\/en\\/new_post\",\"telegramAdminOnNewPost\":false,\"telegramTemplateOnNewPost\":\"@easyii\\/modules\\/guestbook\\/telegram\\/en\\/new_post\",\"frontendGuestbookRoute\":\"\\/guestbook\",\"subjectNotifyUser\":\"Your post in the guestbook answered\",\"templateNotifyUser\":\"@easyii\\/modules\\/guestbook\\/mail\\/en\\/notify_user\"}',0,80,1),(10,'menu','yii\\easyii\\modules\\menu\\MenuModule','Меню','menu-hamburger','{\"slugImmutable\":false}',0,51,1),(11,'news','yii\\easyii\\modules\\news\\NewsModule','Новости','bullhorn','{\"enableThumb\":true,\"enablePhotos\":true,\"enableShort\":true,\"enableSource\":true,\"shortMaxLength\":256,\"enableTags\":true,\"slugImmutable\":false}',0,70,1),(12,'page','yii\\easyii\\modules\\page\\PageModule','Страницы','file','{\"slugImmutable\":true,\"defaultFields\":\"[]\"}',0,50,1),(13,'shopcart','yii\\easyii\\modules\\shopcart\\ShopcartModule','Заказы','shopping-cart','{\"mailAdminOnNewOrder\":true,\"subjectOnNewOrder\":\"New order\",\"templateOnNewOrder\":\"@easyii\\/modules\\/shopcart\\/mail\\/en\\/new_order\",\"subjectNotifyUser\":\"Your order status changed\",\"templateNotifyUser\":\"@easyii\\/modules\\/shopcart\\/mail\\/en\\/notify_user\",\"frontendShopcartRoute\":\"\\/shopcart\\/order\",\"enablePhone\":true,\"enableEmail\":true}',0,120,1),(14,'subscribe','yii\\easyii\\modules\\subscribe\\SubscribeModule','E-mail рассылка','envelope','[]',0,10,1),(15,'text','yii\\easyii\\modules\\text\\TextModule','Текстовые блоки','font','[]',0,20,1);
/*!40000 ALTER TABLE `easyii_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_news`
--

DROP TABLE IF EXISTS `easyii_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `image_file` varchar(128) DEFAULT NULL,
  `short` varchar(1024) DEFAULT NULL,
  `text` text,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `source` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_news`
--

LOCK TABLES `easyii_news` WRITE;
/*!40000 ALTER TABLE `easyii_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_pages`
--

DROP TABLE IF EXISTS `easyii_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `text` text,
  `slug` varchar(128) DEFAULT NULL,
  `show_in_menu` tinyint(1) DEFAULT '0',
  `fields` text,
  `data` text,
  `tree` int(11) DEFAULT '0',
  `lft` int(11) DEFAULT '0',
  `rgt` int(11) DEFAULT '0',
  `depth` int(11) DEFAULT '0',
  `order_num` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_pages`
--

LOCK TABLES `easyii_pages` WRITE;
/*!40000 ALTER TABLE `easyii_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_photos`
--

DROP TABLE IF EXISTS `easyii_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `image_file` varchar(128) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `order_num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `model_item` (`class`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_photos`
--

LOCK TABLES `easyii_photos` WRITE;
/*!40000 ALTER TABLE `easyii_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_seotext`
--

DROP TABLE IF EXISTS `easyii_seotext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_seotext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `model_item` (`class`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_seotext`
--

LOCK TABLES `easyii_seotext` WRITE;
/*!40000 ALTER TABLE `easyii_seotext` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_seotext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_settings`
--

DROP TABLE IF EXISTS `easyii_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(128) NOT NULL,
  `value` varchar(1024) DEFAULT NULL,
  `visibility` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_settings`
--

LOCK TABLES `easyii_settings` WRITE;
/*!40000 ALTER TABLE `easyii_settings` DISABLE KEYS */;
INSERT INTO `easyii_settings` (`id`, `name`, `title`, `value`, `visibility`) VALUES (1,'easyii_version','EasyiiCMS version','0.91',0),(2,'image_max_width','Максимальная ширина загружаемых изображений, которые автоматически не сжимаются','1900',2),(3,'redactor_plugins','Список плагинов редактора Redactor через запятую','imagemanager, filemanager, table, fullscreen',1),(4,'ga_service_email','E-mail сервис аккаунта Google Analytics','',1),(5,'ga_profile_id','Номер профиля Google Analytics','',1),(6,'ga_p12_file','Путь к файлу ключей p12 сервис аккаунта Google Analytics','',1),(7,'gm_api_key','Google Maps API ключ','',1),(8,'recaptcha_key','ReCaptcha key','',1),(9,'password_salt','Password salt','cCXQy_0tArQW_YpwHNwGLMODg_Vh3aum',0),(10,'root_auth_key','Root authorization key','ZuJYn_-WBzpIVDpre4NcYHNiXxDZ8890',0),(11,'root_password','Пароль разработчика','7e9b7ec1e257b331ab8ee5c49158a7df0821bf8b',1),(12,'auth_time','Время авторизации','86400',1),(13,'robot_email','E-mail рассыльщика','noreply@ap.local',1),(14,'admin_email','E-mail администратора','b059ae@gmail.com',2),(15,'telegram_chat_id','Telegram chat ID','',2),(16,'telegram_bot_token','Telegram bot token','',1),(17,'metrika','Yandex.Metrika counter','',1),(18,'recaptcha_secret','ReCaptcha secret','',1),(19,'toolbar_position','Позиция панели на сайте (\"top\" or \"bottom\" or \"hide\")','hide',1);
/*!40000 ALTER TABLE `easyii_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_shopcart_goods`
--

DROP TABLE IF EXISTS `easyii_shopcart_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_shopcart_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `price` float DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_shopcart_goods`
--

LOCK TABLES `easyii_shopcart_goods` WRITE;
/*!40000 ALTER TABLE `easyii_shopcart_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_shopcart_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_shopcart_orders`
--

DROP TABLE IF EXISTS `easyii_shopcart_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_shopcart_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `comment` varchar(1024) DEFAULT NULL,
  `remark` varchar(1024) DEFAULT NULL,
  `access_token` varchar(32) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `new` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_shopcart_orders`
--

LOCK TABLES `easyii_shopcart_orders` WRITE;
/*!40000 ALTER TABLE `easyii_shopcart_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_shopcart_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_subscribe_history`
--

DROP TABLE IF EXISTS `easyii_subscribe_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_subscribe_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(128) NOT NULL,
  `body` text,
  `sent` int(11) DEFAULT '0',
  `time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_subscribe_history`
--

LOCK TABLES `easyii_subscribe_history` WRITE;
/*!40000 ALTER TABLE `easyii_subscribe_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_subscribe_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_subscribe_subscribers`
--

DROP TABLE IF EXISTS `easyii_subscribe_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_subscribe_subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_subscribe_subscribers`
--

LOCK TABLES `easyii_subscribe_subscribers` WRITE;
/*!40000 ALTER TABLE `easyii_subscribe_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_subscribe_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_tags`
--

DROP TABLE IF EXISTS `easyii_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `frequency` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_tags`
--

LOCK TABLES `easyii_tags` WRITE;
/*!40000 ALTER TABLE `easyii_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_tags_assign`
--

DROP TABLE IF EXISTS `easyii_tags_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_tags_assign` (
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  KEY `class` (`class`),
  KEY `item_tag` (`item_id`,`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_tags_assign`
--

LOCK TABLES `easyii_tags_assign` WRITE;
/*!40000 ALTER TABLE `easyii_tags_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_tags_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easyii_texts`
--

DROP TABLE IF EXISTS `easyii_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easyii_texts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easyii_texts`
--

LOCK TABLES `easyii_texts` WRITE;
/*!40000 ALTER TABLE `easyii_texts` DISABLE KEYS */;
/*!40000 ALTER TABLE `easyii_texts` ENABLE KEYS */;
UNLOCK TABLES;
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-23 15:54:41
