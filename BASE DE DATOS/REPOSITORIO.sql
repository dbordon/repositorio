/*
SQLyog Community v12.5.1 (64 bit)
MySQL - 5.7.21-0ubuntu0.16.04.1 : Database - repositorio1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`repositorio1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `repositorio1`;

/*Table structure for table `l7f4c_assets` */

DROP TABLE IF EXISTS `l7f4c_assets`;

CREATE TABLE `l7f4c_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_assets` */

LOCK TABLES `l7f4c_assets` WRITE;

insert  into `l7f4c_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values 
(1,0,0,195,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2,1,1,2,1,'com_admin','com_admin','{}'),
(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6,1,11,12,1,'com_config','com_config','{}'),
(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8,1,17,98,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9,1,99,100,1,'com_cpanel','com_cpanel','{}'),
(10,1,101,102,1,'com_installer','com_installer','{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11,1,103,108,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1}}'),
(12,1,109,110,1,'com_login','com_login','{}'),
(13,1,111,112,1,'com_mailto','com_mailto','{}'),
(14,1,113,114,1,'com_massmail','com_massmail','{}'),
(15,1,115,116,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16,1,117,124,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1}}'),
(17,1,125,126,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18,1,127,164,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1}}'),
(19,1,165,168,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20,1,169,170,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1}}'),
(21,1,171,172,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1}}'),
(22,1,173,174,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23,1,175,176,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1}}'),
(24,1,177,180,1,'com_users','com_users','{\"core.admin\":{\"7\":1}}'),
(26,1,181,182,1,'com_wrapper','com_wrapper','{}'),
(27,8,18,19,2,'com_content.category.2','Uncategorised','{}'),
(28,3,4,5,2,'com_banners.category.3','Uncategorised','{}'),
(29,7,14,15,2,'com_contact.category.4','Uncategorised','{}'),
(30,19,166,167,2,'com_newsfeeds.category.5','Uncategorised','{}'),
(32,24,178,179,2,'com_users.category.7','Uncategorised','{}'),
(33,1,183,184,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34,1,185,186,1,'com_joomlaupdate','com_joomlaupdate','{}'),
(35,1,187,188,1,'com_tags','com_tags','{}'),
(36,1,189,190,1,'com_contenthistory','com_contenthistory','{}'),
(37,1,191,192,1,'com_ajax','com_ajax','{}'),
(38,1,193,194,1,'com_postinstall','com_postinstall','{}'),
(39,18,128,129,2,'com_modules.module.1','GUÍA DE UTILIZACIÓN','{}'),
(40,18,130,131,2,'com_modules.module.2','Login','{}'),
(41,18,132,133,2,'com_modules.module.3','Popular Articles','{}'),
(42,18,134,135,2,'com_modules.module.4','Recently Added Articles','{}'),
(43,18,136,137,2,'com_modules.module.8','Toolbar','{}'),
(44,18,138,139,2,'com_modules.module.9','Quick Icons','{}'),
(45,18,140,141,2,'com_modules.module.10','Logged-in Users','{}'),
(46,18,142,143,2,'com_modules.module.12','Admin Menu','{}'),
(47,18,144,145,2,'com_modules.module.13','Admin Submenu','{}'),
(48,18,146,147,2,'com_modules.module.14','User Status','{}'),
(49,18,148,149,2,'com_modules.module.15','Title','{}'),
(50,18,150,151,2,'com_modules.module.16','INICIAR SESIÓN','{}'),
(51,18,152,153,2,'com_modules.module.17','Breadcrumbs','{}'),
(52,18,154,155,2,'com_modules.module.79','Multilanguage status','{}'),
(53,18,156,157,2,'com_modules.module.86','Joomla Version','{}'),
(54,16,118,119,2,'com_menus.menu.1','Main Menú','{}'),
(55,18,158,159,2,'com_modules.module.87','Sample Data','{}'),
(56,11,104,105,2,'com_languages.language.2','Spanish (español)','{}'),
(57,11,106,107,2,'com_languages.language.3','Spanish (Colombia)','{}'),
(58,8,20,23,2,'com_content.category.8','DESTACADOS','{}'),
(59,8,24,97,2,'com_content.category.9','REPOSITORIO ACADÉMICO','{}'),
(60,59,25,84,3,'com_content.category.10','TÉSIS DE GRADO','{}'),
(61,59,85,88,3,'com_content.category.11','PUBLICACIONES ACADÉMICAS','{}'),
(62,59,89,92,3,'com_content.category.12','PRODUCCIÓN EDITORIAL UTIC','{}'),
(63,59,93,96,3,'com_content.category.13','PRODUCTOS DE INVESTIGACIÓN','{}'),
(64,60,26,39,4,'com_content.category.14','FACULTAD TECNOLOGÍA INFORMÁTICA','{}'),
(65,60,40,49,4,'com_content.category.15','FACULTAD - CIENCIAS DE LA SALUD','{}'),
(66,60,50,71,4,'com_content.category.16','FACULTAD - CIENCIAS EMPRESARIALES','{}'),
(67,60,78,83,4,'com_content.category.17','FACULTAD - DERECHO Y CIENCIAS SOCIALES','{}'),
(68,60,72,77,4,'com_content.category.18','FACULTAD - CIENCIAS HUMANAS Y CIENCIAS EXACTAS','{}'),
(69,66,51,54,5,'com_content.category.19','CIENCIAS CONTABLES','{}'),
(70,66,55,58,5,'com_content.category.20','CIENCIAS ADMINISTRATIVOS','{}'),
(71,66,59,62,5,'com_content.category.21','INGENIERÍA COMERCIAL','{}'),
(72,66,63,64,5,'com_content.category.22','COMERCIO EXTERIOR','{}'),
(73,66,65,66,5,'com_content.category.23','LICIENCIATURA EN MARKETING','{}'),
(74,66,67,68,5,'com_content.category.24','LICENCIADATURA ADMINISTRACIÓN AGROECOLÓGICA E INDUSTRIAL','{}'),
(75,66,69,70,5,'com_content.category.25','LICENCIATURA EN HOTELERÍA Y TURISMO','{}'),
(76,64,27,30,5,'com_content.category.26','LICENCIATURA EN ANÁLISIS DE SISTEMAS INFORMÁTICOS','{}'),
(77,64,31,38,5,'com_content.category.27','INGENIERÍA INFORMÁTICA','{}'),
(78,65,41,44,5,'com_content.category.28','LICENCIATURA EN PSICOLOGÍA','{}'),
(79,65,45,48,5,'com_content.category.29','LICENCIATURA EN ENFERMERÍA','{}'),
(80,67,79,82,5,'com_content.category.30','DERECHO','{}'),
(81,68,73,74,5,'com_content.category.31','LICENCIATURA EN EDUCACIÓN PARVULARIA','{}'),
(82,68,75,76,5,'com_content.category.32','LICENCIATURA EN CIENCIAS DE LA EDUCACIÓN','{}'),
(83,76,28,29,6,'com_content.article.1','SISTEMA INFORMÁTICO','{}'),
(84,77,32,33,6,'com_content.article.2','SISTEMA INFORMÁTICO ING','{}'),
(85,77,34,35,6,'com_content.article.3','SISTEMA INFORMÁTICO ING (2)','{}'),
(86,79,46,47,6,'com_content.article.4','Enfermería ','{}'),
(87,78,42,43,6,'com_content.article.5','Psicología 1','{}'),
(88,80,80,81,6,'com_content.article.6','Derecho 1','{}'),
(89,70,56,57,6,'com_content.article.7','administación1','{}'),
(90,69,52,53,6,'com_content.article.8','contabililidad 1','{}'),
(91,71,60,61,6,'com_content.article.9','comercial','{}'),
(92,77,36,37,6,'com_content.article.10','SISTEMA INFORMÁTICO ING 2','{}'),
(93,61,86,87,4,'com_content.article.11','PUBLICACIONES ACADÉMICASx','{}'),
(94,62,90,91,4,'com_content.article.12','PUBLICACIONES ACADÉMICASx (2)','{}'),
(95,63,94,95,4,'com_content.article.13','PRODUCCIÓN EDITORIAL UTIC xx','{}'),
(96,16,120,121,2,'com_menus.menu.2','Menu_left','{}'),
(97,18,160,161,2,'com_modules.module.88','REPOSITORIO DIGITAL','{}'),
(98,18,162,163,2,'com_modules.module.89','REPOSITORIO ACADÉMICO (copia)','{}'),
(99,16,122,123,2,'com_menus.menu.3','GUÍA DE UTILIZACIÓN','{}'),
(100,58,21,22,3,'com_content.article.14','REPOSITORIO DIGITAL','{}');

UNLOCK TABLES;

/*Table structure for table `l7f4c_associations` */

DROP TABLE IF EXISTS `l7f4c_associations`;

CREATE TABLE `l7f4c_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_associations` */

LOCK TABLES `l7f4c_associations` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_banner_clients` */

DROP TABLE IF EXISTS `l7f4c_banner_clients`;

CREATE TABLE `l7f4c_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_banner_clients` */

LOCK TABLES `l7f4c_banner_clients` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_banner_tracks` */

DROP TABLE IF EXISTS `l7f4c_banner_tracks`;

CREATE TABLE `l7f4c_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_banner_tracks` */

LOCK TABLES `l7f4c_banner_tracks` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_banners` */

DROP TABLE IF EXISTS `l7f4c_banners`;

CREATE TABLE `l7f4c_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_banners` */

LOCK TABLES `l7f4c_banners` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_categories` */

DROP TABLE IF EXISTS `l7f4c_categories`;

CREATE TABLE `l7f4c_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_categories` */

LOCK TABLES `l7f4c_categories` WRITE;

insert  into `l7f4c_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`,`version`) values 
(1,0,0,0,61,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',401,'2018-03-21 02:47:01',0,'0000-00-00 00:00:00',0,'*',1),
(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 02:47:01',0,'0000-00-00 00:00:00',0,'*',1),
(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 02:47:01',0,'0000-00-00 00:00:00',0,'*',1),
(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 02:47:01',0,'0000-00-00 00:00:00',0,'*',1),
(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 02:47:01',0,'0000-00-00 00:00:00',0,'*',1),
(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 02:47:01',0,'0000-00-00 00:00:00',0,'*',1),
(8,58,1,11,12,1,'destacados','com_content','DESTACADOS','destacados','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 02:55:19',0,'2018-03-21 02:55:19',0,'*',1),
(9,59,1,13,60,1,'repositorio-academico','com_content','REPOSITORIO ACADÉMICO','repositorio-academico','','<p>Repositorio Institucional UTIC</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 02:55:41',401,'2018-03-21 18:57:15',0,'*',1),
(10,60,9,14,53,2,'repositorio-academico/tesis-de-grado','com_content','TÉSIS DE GRADO','tesis-de-grado','','<p>Trabajos de Tésis de Grado publicados por la Universidad</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 02:55:55',401,'2018-03-21 18:55:04',0,'*',1),
(11,61,9,54,55,2,'repositorio-academico/publicaciones-academicas','com_content','PUBLICACIONES ACADÉMICAS','publicaciones-academicas','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 02:56:32',0,'2018-03-21 02:56:32',0,'*',1),
(12,62,9,56,57,2,'repositorio-academico/produccion-editorial-utic','com_content','PRODUCCIÓN EDITORIAL UTIC','produccion-editorial-utic','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:23:25',401,'2018-03-21 17:23:42',0,'*',1),
(13,63,9,58,59,2,'repositorio-academico/productos-de-investigacion','com_content','PRODUCTOS DE INVESTIGACIÓN','productos-de-investigacion','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:24:02',0,'2018-03-21 17:24:02',0,'*',1),
(14,64,10,31,36,3,'repositorio-academico/tesis-de-grado/facultad-tecnologia','com_content','FACULTAD TECNOLOGÍA INFORMÁTICA','facultad-tecnologia','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:26:08',401,'2018-03-21 17:26:43',0,'*',1),
(15,65,10,37,42,3,'repositorio-academico/tesis-de-grado/facultad-ciencias-de-la-salud','com_content','FACULTAD - CIENCIAS DE LA SALUD','facultad-ciencias-de-la-salud','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:27:10',0,'2018-03-21 17:27:10',0,'*',1),
(16,66,10,15,30,3,'repositorio-academico/tesis-de-grado/facultad-ciencias-de-ciencia-empresariales','com_content','FACULTAD - CIENCIAS EMPRESARIALES','facultad-ciencias-de-ciencia-empresariales','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:27:52',401,'2018-03-21 17:29:56',0,'*',1),
(17,67,10,43,46,3,'repositorio-academico/tesis-de-grado/facultad-derecho-y-ciencias-sociales','com_content','FACULTAD - DERECHO Y CIENCIAS SOCIALES','facultad-derecho-y-ciencias-sociales','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:28:48',401,'2018-03-21 17:33:31',0,'*',1),
(18,68,10,47,52,3,'repositorio-academico/tesis-de-grado/facultad-ciencias-humanas-y-ciencias-exactas','com_content','FACULTAD - CIENCIAS HUMANAS Y CIENCIAS EXACTAS','facultad-ciencias-humanas-y-ciencias-exactas','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:30:51',0,'2018-03-21 17:30:51',0,'*',1),
(19,69,16,16,17,4,'repositorio-academico/tesis-de-grado/facultad-ciencias-de-ciencia-empresariales/ciencias-contables','com_content','CIENCIAS CONTABLES','ciencias-contables','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:35:38',0,'2018-03-21 17:35:38',0,'*',1),
(20,70,16,18,19,4,'repositorio-academico/tesis-de-grado/facultad-ciencias-de-ciencia-empresariales/ciencias-administrativos','com_content','CIENCIAS ADMINISTRATIVOS','ciencias-administrativos','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:36:10',0,'2018-03-21 17:36:10',0,'*',1),
(21,71,16,20,21,4,'repositorio-academico/tesis-de-grado/facultad-ciencias-de-ciencia-empresariales/ingenieria-comercial','com_content','INGENIERÍA COMERCIAL','ingenieria-comercial','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:36:46',0,'2018-03-21 17:36:46',0,'*',1),
(22,72,16,22,23,4,'repositorio-academico/tesis-de-grado/facultad-ciencias-de-ciencia-empresariales/comercio-exterior','com_content','COMERCIO EXTERIOR','comercio-exterior','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:37:18',0,'2018-03-21 17:37:18',0,'*',1),
(23,73,16,24,25,4,'repositorio-academico/tesis-de-grado/facultad-ciencias-de-ciencia-empresariales/licienciatura-en-marketing','com_content','LICIENCIATURA EN MARKETING','licienciatura-en-marketing','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:37:52',0,'2018-03-21 17:37:52',0,'*',1),
(24,74,16,26,27,4,'repositorio-academico/tesis-de-grado/facultad-ciencias-de-ciencia-empresariales/licenciadatura-administracion-agroecologica-e-industrial','com_content','LICENCIADATURA ADMINISTRACIÓN AGROECOLÓGICA E INDUSTRIAL','licenciadatura-administracion-agroecologica-e-industrial','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:39:12',0,'2018-03-21 17:39:12',0,'*',1),
(25,75,16,28,29,4,'repositorio-academico/tesis-de-grado/facultad-ciencias-de-ciencia-empresariales/licenciatura-en-hoteleria-y-turismo','com_content','LICENCIATURA EN HOTELERÍA Y TURISMO','licenciatura-en-hoteleria-y-turismo','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:39:40',0,'2018-03-21 17:39:40',0,'*',1),
(26,76,14,32,33,4,'repositorio-academico/tesis-de-grado/facultad-tecnologia/licenciatura-en-analisis-de-sistemas-informaticos','com_content','LICENCIATURA EN ANÁLISIS DE SISTEMAS INFORMÁTICOS','licenciatura-en-analisis-de-sistemas-informaticos','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:40:19',0,'2018-03-21 17:40:19',0,'*',1),
(27,77,14,34,35,4,'repositorio-academico/tesis-de-grado/facultad-tecnologia/ingenieria-informatica','com_content','INGENIERÍA INFORMÁTICA','ingenieria-informatica','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:40:53',0,'2018-03-21 17:40:53',0,'*',1),
(28,78,15,38,39,4,'repositorio-academico/tesis-de-grado/facultad-ciencias-de-la-salud/licenciatura-en-psicologia','com_content','LICENCIATURA EN PSICOLOGÍA','licenciatura-en-psicologia','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:41:29',401,'2018-03-21 17:42:10',0,'*',1),
(29,79,15,40,41,4,'repositorio-academico/tesis-de-grado/facultad-ciencias-de-la-salud/licenciatura-en-enfermeria','com_content','LICENCIATURA EN ENFERMERÍA','licenciatura-en-enfermeria','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:42:46',0,'2018-03-21 17:42:46',0,'*',1),
(30,80,17,44,45,4,'repositorio-academico/tesis-de-grado/facultad-derecho-y-ciencias-sociales/derecho','com_content','DERECHO','derecho','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:43:21',0,'2018-03-21 17:43:21',0,'*',1),
(31,81,18,48,49,4,'repositorio-academico/tesis-de-grado/facultad-ciencias-humanas-y-ciencias-exactas/licenciatura-en-educacion-parvularia','com_content','LICENCIATURA EN EDUCACIÓN PARVULARIA','licenciatura-en-educacion-parvularia','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:43:53',0,'2018-03-21 17:43:53',0,'*',1),
(32,82,18,50,51,4,'repositorio-academico/tesis-de-grado/facultad-ciencias-humanas-y-ciencias-exactas/licenciatura-en-ciencias-de-la-educacion','com_content','LICENCIATURA EN CIENCIAS DE LA EDUCACIÓN','licenciatura-en-ciencias-de-la-educacion','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',401,'2018-03-21 17:44:20',0,'2018-03-21 17:44:20',0,'*',1);

UNLOCK TABLES;

/*Table structure for table `l7f4c_contact_details` */

DROP TABLE IF EXISTS `l7f4c_contact_details`;

CREATE TABLE `l7f4c_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_contact_details` */

LOCK TABLES `l7f4c_contact_details` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_content` */

DROP TABLE IF EXISTS `l7f4c_content`;

CREATE TABLE `l7f4c_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_content` */

LOCK TABLES `l7f4c_content` WRITE;

insert  into `l7f4c_content`(`id`,`asset_id`,`title`,`alias`,`introtext`,`fulltext`,`state`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values 
(1,83,'SISTEMA INFORMÁTICO','sistema-informatico','<p style=\"margin-bottom: 0cm; line-height: 100%;\"> </p>\r\n<table style=\"width: 671.2px;\" cellspacing=\"0\" cellpadding=\"4\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Autor</b></span></p>\r\n</td>\r\n<td style=\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"37\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Tema</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"67\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Resumen</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"57\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>fecha de Publicación</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"29\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Palabras clave</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Evaluadores</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Archivo</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"margin-bottom: 0cm; line-height: 100%;\"> </p>','',1,26,'2018-03-21 18:17:17',401,'','2018-03-21 18:17:17',0,0,'0000-00-00 00:00:00','2018-03-21 18:17:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',1,1,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(2,84,'SISTEMA INFORMÁTICO ING','sistema-informatico-ing','<p style=\"margin-bottom: 0cm; line-height: 100%;\"> </p>\r\n<table style=\"width: 671.2px;\" cellspacing=\"0\" cellpadding=\"4\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Autor</b></span></p>\r\n</td>\r\n<td style=\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"37\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Tema</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"67\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Resumen</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"57\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>fecha de Publicación</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"29\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Palabras clave</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Evaluadores</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Archivo</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>','',1,27,'2018-03-21 18:17:17',401,'','2018-03-21 18:18:32',401,0,'0000-00-00 00:00:00','2018-03-21 18:17:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',2,3,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(3,85,'SISTEMA INFORMÁTICO ING (2)','sistema-informatico-ing-2','<p style=\"margin-bottom: 0cm; line-height: 100%;\"> </p>\r\n<table style=\"width: 671.2px;\" cellspacing=\"0\" cellpadding=\"4\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Autor</b></span></p>\r\n</td>\r\n<td style=\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"37\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Tema</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"67\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Resumen</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"57\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>fecha de Publicación</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"29\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Palabras clave</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Evaluadores</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Archivo</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>','',1,27,'2018-03-21 18:17:17',401,'','2018-03-21 18:18:49',0,0,'0000-00-00 00:00:00','2018-03-21 18:17:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',1,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(4,86,'Enfermería ','enfer1','<p style=\"margin-bottom: 0cm; line-height: 100%;\"> </p>\r\n<table style=\"width: 671.2px;\" cellspacing=\"0\" cellpadding=\"4\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Autor</b></span></p>\r\n</td>\r\n<td style=\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"37\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Tema</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"67\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Resumen</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"57\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>fecha de Publicación</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"29\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Palabras clave</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Evaluadores</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Archivo</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,29,'2018-03-21 18:17:17',401,'','2018-03-21 18:19:15',0,0,'0000-00-00 00:00:00','2018-03-21 18:17:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',1,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(5,87,'Psicología 1','psicologia1','<p style=\"margin-bottom: 0cm; line-height: 100%;\"> </p>\r\n<table style=\"width: 671.2px;\" cellspacing=\"0\" cellpadding=\"4\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Autor</b></span></p>\r\n</td>\r\n<td style=\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"37\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Tema</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"67\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Resumen</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"57\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>fecha de Publicación</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"29\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Palabras clave</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Evaluadores</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Archivo</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>','',1,28,'2018-03-21 18:17:17',401,'','2018-03-21 18:19:57',0,0,'0000-00-00 00:00:00','2018-03-21 18:17:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',1,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(6,88,'Derecho 1','derecho1','<p style=\"margin-bottom: 0cm; line-height: 100%;\"> </p>\r\n<table style=\"width: 671.2px;\" cellspacing=\"0\" cellpadding=\"4\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Autor</b></span></p>\r\n</td>\r\n<td style=\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"37\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Tema</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"67\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Resumen</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"57\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>fecha de Publicación</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"29\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Palabras clave</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Evaluadores</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Archivo</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,30,'2018-03-21 18:17:17',401,'','2018-03-21 18:20:37',0,0,'0000-00-00 00:00:00','2018-03-21 18:17:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',1,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(7,89,'administación1','administacion1','<p style=\"margin-bottom: 0cm; line-height: 100%;\"> </p>\r\n<table style=\"width: 671.2px;\" cellspacing=\"0\" cellpadding=\"4\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Autor</b></span></p>\r\n</td>\r\n<td style=\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"37\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Tema</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"67\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Resumen</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"57\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>fecha de Publicación</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"29\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Palabras clave</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Evaluadores</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Archivo</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>','',1,20,'2018-03-21 18:17:17',401,'','2018-03-21 18:21:01',0,0,'0000-00-00 00:00:00','2018-03-21 18:17:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',1,0,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(8,90,'contabililidad 1','conta1','<p style=\"margin-bottom: 0cm; line-height: 100%;\"> </p>\r\n<table style=\"width: 671.2px;\" cellspacing=\"0\" cellpadding=\"4\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Autor</b></span></p>\r\n</td>\r\n<td style=\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"37\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Tema</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"67\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Resumen</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"57\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>fecha de Publicación</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"29\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Palabras clave</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Evaluadores</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Archivo</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,19,'2018-03-21 18:17:17',401,'','2018-03-21 18:21:21',0,0,'0000-00-00 00:00:00','2018-03-21 18:17:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',1,0,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(9,91,'comercial','comercial','<p style=\"margin-bottom: 0cm; line-height: 100%;\"> </p>\r\n<table style=\"width: 671.2px;\" cellspacing=\"0\" cellpadding=\"4\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Autor</b></span></p>\r\n</td>\r\n<td style=\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"37\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Tema</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"67\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Resumen</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"57\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>fecha de Publicación</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"29\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Palabras clave</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Evaluadores</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Archivo</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,21,'2018-03-21 18:17:17',401,'','2018-03-21 18:22:08',401,0,'0000-00-00 00:00:00','2018-03-21 18:17:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',2,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(10,92,'SISTEMA INFORMÁTICO ING 2','sistema-informatico-ing-3','<p style=\"margin-bottom: 0cm; line-height: 100%;\"> </p>\r\n<table style=\"width: 671.2px;\" cellspacing=\"0\" cellpadding=\"4\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Autor</b></span></p>\r\n</td>\r\n<td style=\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"37\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Tema</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"67\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Resumen</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"57\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>fecha de Publicación</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"29\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Palabras clave</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Evaluadores</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Archivo</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,27,'2018-03-21 18:17:17',401,'','2018-03-21 18:30:39',401,0,'0000-00-00 00:00:00','2018-03-21 18:17:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',2,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(11,93,'PUBLICACIONES ACADÉMICASx','sistema-informatico-ing-4','<p style=\"margin-bottom: 0cm; line-height: 100%;\"> </p>\r\n<table style=\"width: 671.2px;\" cellspacing=\"0\" cellpadding=\"4\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Autor</b></span></p>\r\n</td>\r\n<td style=\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"37\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Tema</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"67\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Resumen</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"57\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>fecha de Publicación</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"29\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Palabras clave</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Evaluadores</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Archivo</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,11,'2018-03-21 18:17:17',401,'','2018-03-21 18:58:44',401,0,'0000-00-00 00:00:00','2018-03-21 18:17:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',2,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(12,94,'PUBLICACIONES ACADÉMICASx (2)','sistema-informatico-ing-5','<p style=\"margin-bottom: 0cm; line-height: 100%;\"> </p>\r\n<table style=\"width: 671.2px;\" cellspacing=\"0\" cellpadding=\"4\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Autor</b></span></p>\r\n</td>\r\n<td style=\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"37\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Tema</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"67\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Resumen</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"57\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>fecha de Publicación</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"29\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Palabras clave</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Evaluadores</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Archivo</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>','',1,12,'2018-03-21 18:17:17',401,'','2018-03-21 19:01:00',401,0,'0000-00-00 00:00:00','2018-03-21 18:17:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',2,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(13,95,'PRODUCCIÓN EDITORIAL UTIC xx','prodi1xx','<p style=\"margin-bottom: 0cm; line-height: 100%;\"> </p>\r\n<table style=\"width: 671.2px;\" cellspacing=\"0\" cellpadding=\"4\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Autor</b></span></p>\r\n</td>\r\n<td style=\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"37\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Tema</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"67\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Resumen</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"57\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>fecha de Publicación</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"29\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Palabras clave</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Evaluadores</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td style=\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\" height=\"36\">\r\n<p align=\"center\"><span style=\"font-family: Arial, sans-serif;\"><b>Archivo</b></span></p>\r\n</td>\r\n<td style=\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,13,'2018-03-21 18:17:17',401,'','2018-03-21 19:00:07',401,0,'0000-00-00 00:00:00','2018-03-21 18:17:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',2,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),
(14,100,'REPOSITORIO DIGITAL','repositoro-digital','<p style=\"text-align: justify;\">El <a href=\"http://repositorio.bib.upct.es/dspace/\">Repositorio Digital UPCT</a> es un depósito de documentos digitales, cuyo objetivo es organizar, almacenar, preservar y difundir en modo de acceso abierto (Open Access) la producción intelectual resultante de la actividad académica e investigadora de la comunidad universitaria de la UPCT con los objetivos de:</p>\r\n<p style=\"text-align: justify;\">* Integrar, conservar y preservar la producción intelectual de la UPCT<br /> * Aumentar la visibilidad de la obra, del autor y de la universidad<br /> * Aumentar el impacto de la producción científica disponible en red<br /> * Proporcionar acceso a la información de forma gratuita<br /> <br /> El Repositorio Digital UPCT está dividido en cinco grandes grupos o categorías:<br /> <br /> <strong> </strong><img src=\"http://www.bib.upct.es/imagenes/plantilla/academico.png\" alt=\"\" width=\"33\" height=\"33\" /><strong> <span style=\"color: #003399;\">El Repositorio académico</span> </strong>reúne los documentos resultantes de la investigación docente, nuevos métodos de aprendizaje y los documentos resultantes de la actividad académica de  los miembros de la UPCT (Excepto las Tesis Doctorales).<br /> <strong> </strong><img src=\"http://www.bib.upct.es/imagenes/plantilla/investigacion.png\" alt=\"\" width=\"33\" height=\"33\" /><strong>  </strong><span style=\"color: #003399;\"><strong>El Repositorio de investigación</strong></span>, que reúne los documentos resultantes de la actividad investigadora de los miembros de la UPCT, tales como tesis, documentos de trabajo, artículos de publicaciones periódicas, ponencias a congresos, posters y otros.<br />  <img src=\"http://www.bib.upct.es/imagenes/plantilla/institucional.png\" alt=\"\" width=\"33\" height=\"33\" /> <span style=\"color: #003399;\"> <strong>El Repositorio Institucional</strong></span>, que reúne los documentos resultantes de la  actividad institucional: discursos, memorias, entrevistas, exposiciones, etc.<br />  <img src=\"http://www.bib.upct.es/imagenes/plantilla/multimedia.png\" alt=\"\" width=\"33\" height=\"33\" />  <span style=\"color: #003399;\"><strong>El Repositorio Multimedia</strong></span>, reúne los contenidos digitales producidos por la comunidad universitaria resultantes de su actividad docente, investigadora e institucional.<br />  <img src=\"http://www.bib.upct.es/imagenes/plantilla/revistas.png\" alt=\"\" width=\"33\" height=\"33\" /><strong>  <span style=\"color: #003399;\">Revistas</span></strong>, aloja y da acceso a los artículos de las revistas científicas editadas por la UPCT.</p>','',1,8,'2018-03-21 22:27:24',401,'','2018-03-21 22:37:24',401,0,'0000-00-00 00:00:00','2018-03-21 22:27:24','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"spfeatured_image\":\"\",\"post_format\":\"standard\",\"gallery\":\"\",\"audio\":\"\",\"video\":\"\",\"link_title\":\"\",\"link_url\":\"\",\"quote_text\":\"\",\"quote_author\":\"\",\"post_status\":\"\"}',2,0,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*','');

UNLOCK TABLES;

/*Table structure for table `l7f4c_content_frontpage` */

DROP TABLE IF EXISTS `l7f4c_content_frontpage`;

CREATE TABLE `l7f4c_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_content_frontpage` */

LOCK TABLES `l7f4c_content_frontpage` WRITE;

insert  into `l7f4c_content_frontpage`(`content_id`,`ordering`) values 
(14,1);

UNLOCK TABLES;

/*Table structure for table `l7f4c_content_rating` */

DROP TABLE IF EXISTS `l7f4c_content_rating`;

CREATE TABLE `l7f4c_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_content_rating` */

LOCK TABLES `l7f4c_content_rating` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_content_types` */

DROP TABLE IF EXISTS `l7f4c_content_types`;

CREATE TABLE `l7f4c_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_content_types` */

LOCK TABLES `l7f4c_content_types` WRITE;

insert  into `l7f4c_content_types`(`type_id`,`type_title`,`type_alias`,`table`,`rules`,`field_mappings`,`router`,`content_history_options`) values 
(1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),
(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

UNLOCK TABLES;

/*Table structure for table `l7f4c_contentitem_tag_map` */

DROP TABLE IF EXISTS `l7f4c_contentitem_tag_map`;

CREATE TABLE `l7f4c_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

/*Data for the table `l7f4c_contentitem_tag_map` */

LOCK TABLES `l7f4c_contentitem_tag_map` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_core_log_searches` */

DROP TABLE IF EXISTS `l7f4c_core_log_searches`;

CREATE TABLE `l7f4c_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_core_log_searches` */

LOCK TABLES `l7f4c_core_log_searches` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_extensions` */

DROP TABLE IF EXISTS `l7f4c_extensions`;

CREATE TABLE `l7f4c_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_extensions` */

LOCK TABLES `l7f4c_extensions` WRITE;

insert  into `l7f4c_extensions`(`extension_id`,`package_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values 
(1,0,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}','','','',0,'0000-00-00 00:00:00',0,0),
(2,0,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),
(3,0,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
(4,0,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),
(5,0,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
(6,0,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
(7,0,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
(8,0,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
(9,0,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
(10,0,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}','','',0,'0000-00-00 00:00:00',0,0),
(11,0,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"es-ES\",\"site\":\"es-ES\"}','','',0,'0000-00-00 00:00:00',0,0),
(12,0,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
(13,0,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),
(14,0,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
(15,0,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
(16,0,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
(17,0,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
(18,0,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
(19,0,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}','{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
(20,0,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),
(22,0,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"1\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:default\",\"show_category_heading_title_text\":\"0\",\"show_category_title\":\"0\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"0\",\"show_cat_num_articles\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"0\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
(23,0,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),
(24,0,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
(25,0,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
(27,0,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
(28,0,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{\"updatesource\":\"default\",\"customurl\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
(29,0,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
(30,0,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','','','',0,'0000-00-00 00:00:00',0,0),
(31,0,'com_ajax','component','com_ajax','',1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','','',0,'0000-00-00 00:00:00',0,0),
(32,0,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
(33,0,'com_fields','component','com_fields','',1,1,1,0,'{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),
(34,0,'com_associations','component','com_associations','',1,1,1,0,'{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
(102,0,'LIB_PHPUTF8','library','phputf8','',0,1,1,1,'{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}','','','',0,'0000-00-00 00:00:00',0,0),
(103,0,'LIB_JOOMLA','library','joomla','',0,1,1,1,'{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"mediaversion\":\"b2c88b37faf21ac554f12c978a6f7049\"}','','',0,'0000-00-00 00:00:00',0,0),
(104,0,'LIB_IDNA','library','idna_convert','',0,1,1,1,'{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}','','','',0,'0000-00-00 00:00:00',0,0),
(105,0,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}','','','',0,'0000-00-00 00:00:00',0,0),
(106,0,'LIB_PHPASS','library','phpass','',0,1,1,1,'{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','','',0,'0000-00-00 00:00:00',0,0),
(200,0,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','','',0,'0000-00-00 00:00:00',0,0),
(201,0,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),
(202,0,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),
(203,0,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','','',0,'0000-00-00 00:00:00',0,0),
(204,0,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','','',0,'0000-00-00 00:00:00',0,0),
(205,0,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),
(206,0,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),
(207,0,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','','',0,'0000-00-00 00:00:00',0,0),
(208,0,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),
(209,0,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),
(210,0,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','','',0,'0000-00-00 00:00:00',0,0),
(211,0,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','','',0,'0000-00-00 00:00:00',0,0),
(212,0,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','','',0,'0000-00-00 00:00:00',0,0),
(213,0,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}','','','',0,'0000-00-00 00:00:00',0,0),
(214,0,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','','',0,'0000-00-00 00:00:00',0,0),
(215,0,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','','',0,'0000-00-00 00:00:00',0,0),
(216,0,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),
(218,0,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','','',0,'0000-00-00 00:00:00',0,0),
(219,0,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),
(220,0,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','','',0,'0000-00-00 00:00:00',0,0),
(221,0,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','','',0,'0000-00-00 00:00:00',0,0),
(222,0,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','','',0,'0000-00-00 00:00:00',0,0),
(223,0,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}','','','',0,'0000-00-00 00:00:00',0,0),
(300,0,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),
(301,0,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),
(302,0,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),
(303,0,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','','',0,'0000-00-00 00:00:00',0,0),
(304,0,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),
(305,0,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),
(307,0,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),
(308,0,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','','',0,'0000-00-00 00:00:00',0,0),
(309,0,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}','','','',0,'0000-00-00 00:00:00',0,0),
(310,0,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','','','',0,'0000-00-00 00:00:00',0,0),
(311,0,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','','',0,'0000-00-00 00:00:00',0,0),
(312,0,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','','',0,'0000-00-00 00:00:00',0,0),
(313,0,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
(314,0,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
(315,0,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),
(316,0,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
(317,0,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
(318,0,'mod_sampledata','module','mod_sampledata','',1,1,1,0,'{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
(400,0,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),
(401,0,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),
(402,0,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),
(403,0,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',1,0),
(404,0,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),
(406,0,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),
(407,0,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),
(408,0,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),
(409,0,'plg_content_vote','plugin','vote','content',0,0,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','','','',0,'0000-00-00 00:00:00',6,0),
(410,0,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.34.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),
(411,0,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','','','',0,'0000-00-00 00:00:00',2,0),
(412,0,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.8\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}','','',0,'0000-00-00 00:00:00',3,0),
(413,0,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','','','',0,'0000-00-00 00:00:00',1,0),
(414,0,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','','','',0,'0000-00-00 00:00:00',2,0),
(415,0,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','','','',0,'0000-00-00 00:00:00',3,0),
(416,0,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','','','',0,'0000-00-00 00:00:00',4,0),
(417,0,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
(418,0,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
(419,0,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
(420,0,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
(422,0,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','','','',0,'0000-00-00 00:00:00',1,0),
(423,0,'plg_system_p3p','plugin','p3p','system',0,0,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),
(424,0,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),
(425,0,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),
(426,0,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','','','',0,'0000-00-00 00:00:00',5,0),
(427,0,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','','',0,'0000-00-00 00:00:00',6,0),
(428,0,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','','',0,'0000-00-00 00:00:00',7,0),
(429,0,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','','',0,'0000-00-00 00:00:00',8,0),
(430,0,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','','','',0,'0000-00-00 00:00:00',3,0),
(431,0,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),
(432,0,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),
(433,0,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
(434,0,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',1,0),
(435,0,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),
(436,0,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','','','',0,'0000-00-00 00:00:00',10,0),
(437,0,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),
(438,0,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),
(439,0,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),
(440,0,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}','','','',0,'0000-00-00 00:00:00',7,0),
(441,0,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','','',0,'0000-00-00 00:00:00',0,0),
(442,0,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','','','',0,'0000-00-00 00:00:00',1,0),
(443,0,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','','','',0,'0000-00-00 00:00:00',2,0),
(444,0,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','','','',0,'0000-00-00 00:00:00',3,0),
(445,0,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','','','',0,'0000-00-00 00:00:00',4,0),
(447,0,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','','','',0,'0000-00-00 00:00:00',0,0),
(448,0,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}','','','',0,'0000-00-00 00:00:00',0,0),
(449,0,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}','','','',0,'0000-00-00 00:00:00',0,0),
(450,0,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}','','','',0,'0000-00-00 00:00:00',0,0),
(451,0,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
(452,0,'plg_system_updatenotification','plugin','updatenotification','system',0,1,1,0,'{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}','{\"lastrun\":1521652509}','','',0,'0000-00-00 00:00:00',0,0),
(453,0,'plg_editors-xtd_module','plugin','module','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}','','','',0,'0000-00-00 00:00:00',0,0),
(454,0,'plg_system_stats','plugin','stats','system',0,1,1,0,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}','','','',0,'0000-00-00 00:00:00',0,0),
(455,0,'plg_installer_packageinstaller','plugin','packageinstaller','installer',0,1,1,1,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}','','','',0,'0000-00-00 00:00:00',1,0),
(456,0,'PLG_INSTALLER_FOLDERINSTALLER','plugin','folderinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}','','','',0,'0000-00-00 00:00:00',2,0),
(457,0,'PLG_INSTALLER_URLINSTALLER','plugin','urlinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}','','','',0,'0000-00-00 00:00:00',3,0),
(458,0,'plg_quickicon_phpversioncheck','plugin','phpversioncheck','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}','','','',0,'0000-00-00 00:00:00',0,0),
(459,0,'plg_editors-xtd_menu','plugin','menu','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}','','','',0,'0000-00-00 00:00:00',0,0),
(460,0,'plg_editors-xtd_contact','plugin','contact','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',0,0),
(461,0,'plg_system_fields','plugin','fields','system',0,1,1,0,'{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),
(462,0,'plg_fields_calendar','plugin','calendar','fields',0,1,1,0,'{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}','','','',0,'0000-00-00 00:00:00',0,0),
(463,0,'plg_fields_checkboxes','plugin','checkboxes','fields',0,1,1,0,'{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}','','','',0,'0000-00-00 00:00:00',0,0),
(464,0,'plg_fields_color','plugin','color','fields',0,1,1,0,'{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}','','','',0,'0000-00-00 00:00:00',0,0),
(465,0,'plg_fields_editor','plugin','editor','fields',0,1,1,0,'{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}','','','',0,'0000-00-00 00:00:00',0,0),
(466,0,'plg_fields_imagelist','plugin','imagelist','fields',0,1,1,0,'{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}','','','',0,'0000-00-00 00:00:00',0,0),
(467,0,'plg_fields_integer','plugin','integer','fields',0,1,1,0,'{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}','{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),
(468,0,'plg_fields_list','plugin','list','fields',0,1,1,0,'{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}','','','',0,'0000-00-00 00:00:00',0,0),
(469,0,'plg_fields_media','plugin','media','fields',0,1,1,0,'{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','','','',0,'0000-00-00 00:00:00',0,0),
(470,0,'plg_fields_radio','plugin','radio','fields',0,1,1,0,'{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}','','','',0,'0000-00-00 00:00:00',0,0),
(471,0,'plg_fields_sql','plugin','sql','fields',0,1,1,0,'{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}','','','',0,'0000-00-00 00:00:00',0,0),
(472,0,'plg_fields_text','plugin','text','fields',0,1,1,0,'{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}','','','',0,'0000-00-00 00:00:00',0,0),
(473,0,'plg_fields_textarea','plugin','textarea','fields',0,1,1,0,'{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}','','','',0,'0000-00-00 00:00:00',0,0),
(474,0,'plg_fields_url','plugin','url','fields',0,1,1,0,'{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}','','','',0,'0000-00-00 00:00:00',0,0),
(475,0,'plg_fields_user','plugin','user','fields',0,1,1,0,'{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}','','','',0,'0000-00-00 00:00:00',0,0),
(476,0,'plg_fields_usergrouplist','plugin','usergrouplist','fields',0,1,1,0,'{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}','','','',0,'0000-00-00 00:00:00',0,0),
(477,0,'plg_content_fields','plugin','fields','content',0,1,1,0,'{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),
(478,0,'plg_editors-xtd_fields','plugin','fields','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),
(479,0,'plg_sampledata_blog','plugin','blog','sampledata',0,1,1,0,'{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}','','','',0,'0000-00-00 00:00:00',0,0),
(503,0,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),
(504,0,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
(506,0,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),
(507,0,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),
(600,802,'English (en-GB)','language','en-GB','',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.5\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
(601,802,'English (en-GB)','language','en-GB','',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.5\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
(700,0,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.5\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),
(802,0,'English (en-GB) Language Pack','package','pkg_en-GB','',0,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.5.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}','','','',0,'0000-00-00 00:00:00',0,0),
(10000,10002,'Spanishespaol','language','es-ES','',0,1,0,0,'{\"name\":\"Spanish (espa\\u00f1ol)\",\"type\":\"language\",\"creationDate\":\"13\\/03\\/2018\",\"author\":\"Unknown\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"es.es.translation.team@gmail.com\",\"authorUrl\":\"https:\\/\\/es-es-translation-team.ddns.net\\/\",\"version\":\"3.8.6.1\",\"description\":\"es-ES - Site language\",\"group\":\"\",\"filename\":\"install\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
(10001,10002,'Spanishespaol','language','es-ES','',1,1,0,0,'{\"name\":\"Spanish (espa\\u00f1ol)\",\"type\":\"language\",\"creationDate\":\"13\\/03\\/2018\",\"author\":\"Unknown\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"es.es.translation.team@gmail.com\",\"authorUrl\":\"https:\\/\\/es-es-translation-team.ddns.net\\/\",\"version\":\"3.8.6.1\",\"description\":\"es-ES - Administration language\",\"group\":\"\",\"filename\":\"install\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
(10002,0,'joomla_lang_full','package','pkg_es-ES','',0,1,1,0,'{\"name\":\"joomla_lang_full\",\"type\":\"package\",\"creationDate\":\"13\\/03\\/2018\",\"author\":\"Unknown\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"es.es.translation.team@gmail.com\",\"authorUrl\":\"https:\\/\\/es-es-translation-team.ddns.net\\/\",\"version\":\"3.8.6.1\",\"description\":\"<div style=\\\"text-align:left;\\\"><h2>Successfully installed the spanish language pack for Joomla! 3.8.6.<\\/h2><p><\\/p><p>Please report any bugs or issues at the Spanish Translation Team using the mail: es.es.translation.team@gmail.com<\\/p><p><\\/p><p>Translated by: The Spanish Translation Team [es-ES]<\\/p><h2>El paquete en espa\\u00f1ol para Joomla! 3.8.6 se ha instalado correctamente.<\\/h2><p><\\/p><p>Por favor, reporte cualquier bug o asunto relacionado a nuestra direcci\\u00f3n de correo electr\\u00f3nico: es.es.translation.team@gmail.com<\\/p><p><\\/p><p>Traducci\\u00f3n: Spanish Translation Team [es-ES]<\\/p><\\/div>\",\"group\":\"\",\"filename\":\"pkg_es-ES\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
(10003,10005,'Espaoles-CO','language','es-CO','',0,1,0,0,'{\"name\":\"Espa\\u00f1ol (es-CO)\",\"type\":\"language\",\"creationDate\":\"2018-03-13\",\"author\":\"JUG Bogot\\u00e1\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@jugbogota.org\",\"authorUrl\":\"jugbogota.org\",\"version\":\"3.8.6.1\",\"description\":\"idioma del sitio es-CO\",\"group\":\"\",\"filename\":\"install\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
(10004,10005,'Espaoles-CO','language','es-CO','',1,1,0,0,'{\"name\":\"Espa\\u00f1ol (es-CO)\",\"type\":\"language\",\"creationDate\":\"2018-03-13\",\"author\":\"JUG Bogot\\u00e1\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@jugbogota.org\",\"authorUrl\":\"jugbogota.org\",\"version\":\"3.8.6.1\",\"description\":\"idioma del administrador es-CO\",\"group\":\"\",\"filename\":\"install\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
(10005,0,'Spanish-Colombia (es-CO) Language Pack','package','pkg_es-CO','',0,1,1,0,'{\"name\":\"Spanish-Colombia (es-CO) Language Pack\",\"type\":\"package\",\"creationDate\":\"2018-03-13\",\"author\":\"JUG Bogot\\u00e1\",\"copyright\":\"\",\"authorEmail\":\"info@jugbogota.org\",\"authorUrl\":\"jugbogota.org\",\"version\":\"3.8.6.1\",\"description\":\"Paquete de idioma espa\\u00f1ol colombiano (es-CO)\",\"group\":\"\",\"filename\":\"pkg_es-CO\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
(10007,0,'Helix3 - Ajax','plugin','helix3','ajax',0,1,1,0,'{\"name\":\"Helix3 - Ajax\",\"type\":\"plugin\",\"creationDate\":\"Jan 2015\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2017 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"2.4\",\"description\":\"Helix3 Framework - Joomla Template Framework by JoomShaper\",\"group\":\"\",\"filename\":\"helix3\"}','{}','','',0,'0000-00-00 00:00:00',0,0),
(10008,0,'System - Helix3 Framework','plugin','helix3','system',0,1,1,0,'{\"name\":\"System - Helix3 Framework\",\"type\":\"plugin\",\"creationDate\":\"Jan 2015\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2017 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"2.4\",\"description\":\"Helix3 Framework - Joomla Template Framework by JoomShaper\",\"group\":\"\",\"filename\":\"helix3\"}','{}','','',0,'0000-00-00 00:00:00',0,0);

UNLOCK TABLES;

/*Table structure for table `l7f4c_fields` */

DROP TABLE IF EXISTS `l7f4c_fields`;

CREATE TABLE `l7f4c_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_fields` */

LOCK TABLES `l7f4c_fields` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_fields_categories` */

DROP TABLE IF EXISTS `l7f4c_fields_categories`;

CREATE TABLE `l7f4c_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_fields_categories` */

LOCK TABLES `l7f4c_fields_categories` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_fields_groups` */

DROP TABLE IF EXISTS `l7f4c_fields_groups`;

CREATE TABLE `l7f4c_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_fields_groups` */

LOCK TABLES `l7f4c_fields_groups` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_fields_values` */

DROP TABLE IF EXISTS `l7f4c_fields_values`;

CREATE TABLE `l7f4c_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_fields_values` */

LOCK TABLES `l7f4c_fields_values` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_filters` */

DROP TABLE IF EXISTS `l7f4c_finder_filters`;

CREATE TABLE `l7f4c_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_filters` */

LOCK TABLES `l7f4c_finder_filters` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links` */

DROP TABLE IF EXISTS `l7f4c_finder_links`;

CREATE TABLE `l7f4c_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links` */

LOCK TABLES `l7f4c_finder_links` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links_terms0` */

DROP TABLE IF EXISTS `l7f4c_finder_links_terms0`;

CREATE TABLE `l7f4c_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links_terms0` */

LOCK TABLES `l7f4c_finder_links_terms0` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links_terms1` */

DROP TABLE IF EXISTS `l7f4c_finder_links_terms1`;

CREATE TABLE `l7f4c_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links_terms1` */

LOCK TABLES `l7f4c_finder_links_terms1` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links_terms2` */

DROP TABLE IF EXISTS `l7f4c_finder_links_terms2`;

CREATE TABLE `l7f4c_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links_terms2` */

LOCK TABLES `l7f4c_finder_links_terms2` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links_terms3` */

DROP TABLE IF EXISTS `l7f4c_finder_links_terms3`;

CREATE TABLE `l7f4c_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links_terms3` */

LOCK TABLES `l7f4c_finder_links_terms3` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links_terms4` */

DROP TABLE IF EXISTS `l7f4c_finder_links_terms4`;

CREATE TABLE `l7f4c_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links_terms4` */

LOCK TABLES `l7f4c_finder_links_terms4` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links_terms5` */

DROP TABLE IF EXISTS `l7f4c_finder_links_terms5`;

CREATE TABLE `l7f4c_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links_terms5` */

LOCK TABLES `l7f4c_finder_links_terms5` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links_terms6` */

DROP TABLE IF EXISTS `l7f4c_finder_links_terms6`;

CREATE TABLE `l7f4c_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links_terms6` */

LOCK TABLES `l7f4c_finder_links_terms6` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links_terms7` */

DROP TABLE IF EXISTS `l7f4c_finder_links_terms7`;

CREATE TABLE `l7f4c_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links_terms7` */

LOCK TABLES `l7f4c_finder_links_terms7` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links_terms8` */

DROP TABLE IF EXISTS `l7f4c_finder_links_terms8`;

CREATE TABLE `l7f4c_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links_terms8` */

LOCK TABLES `l7f4c_finder_links_terms8` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links_terms9` */

DROP TABLE IF EXISTS `l7f4c_finder_links_terms9`;

CREATE TABLE `l7f4c_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links_terms9` */

LOCK TABLES `l7f4c_finder_links_terms9` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links_termsa` */

DROP TABLE IF EXISTS `l7f4c_finder_links_termsa`;

CREATE TABLE `l7f4c_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links_termsa` */

LOCK TABLES `l7f4c_finder_links_termsa` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links_termsb` */

DROP TABLE IF EXISTS `l7f4c_finder_links_termsb`;

CREATE TABLE `l7f4c_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links_termsb` */

LOCK TABLES `l7f4c_finder_links_termsb` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links_termsc` */

DROP TABLE IF EXISTS `l7f4c_finder_links_termsc`;

CREATE TABLE `l7f4c_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links_termsc` */

LOCK TABLES `l7f4c_finder_links_termsc` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links_termsd` */

DROP TABLE IF EXISTS `l7f4c_finder_links_termsd`;

CREATE TABLE `l7f4c_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links_termsd` */

LOCK TABLES `l7f4c_finder_links_termsd` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links_termse` */

DROP TABLE IF EXISTS `l7f4c_finder_links_termse`;

CREATE TABLE `l7f4c_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links_termse` */

LOCK TABLES `l7f4c_finder_links_termse` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_links_termsf` */

DROP TABLE IF EXISTS `l7f4c_finder_links_termsf`;

CREATE TABLE `l7f4c_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_links_termsf` */

LOCK TABLES `l7f4c_finder_links_termsf` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_taxonomy` */

DROP TABLE IF EXISTS `l7f4c_finder_taxonomy`;

CREATE TABLE `l7f4c_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_taxonomy` */

LOCK TABLES `l7f4c_finder_taxonomy` WRITE;

insert  into `l7f4c_finder_taxonomy`(`id`,`parent_id`,`title`,`state`,`access`,`ordering`) values 
(1,0,'ROOT',0,0,0);

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_taxonomy_map` */

DROP TABLE IF EXISTS `l7f4c_finder_taxonomy_map`;

CREATE TABLE `l7f4c_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_taxonomy_map` */

LOCK TABLES `l7f4c_finder_taxonomy_map` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_terms` */

DROP TABLE IF EXISTS `l7f4c_finder_terms`;

CREATE TABLE `l7f4c_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_terms` */

LOCK TABLES `l7f4c_finder_terms` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_terms_common` */

DROP TABLE IF EXISTS `l7f4c_finder_terms_common`;

CREATE TABLE `l7f4c_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_terms_common` */

LOCK TABLES `l7f4c_finder_terms_common` WRITE;

insert  into `l7f4c_finder_terms_common`(`term`,`language`) values 
('a','en'),
('about','en'),
('after','en'),
('ago','en'),
('all','en'),
('am','en'),
('an','en'),
('and','en'),
('any','en'),
('are','en'),
('aren\'t','en'),
('as','en'),
('at','en'),
('be','en'),
('but','en'),
('by','en'),
('for','en'),
('from','en'),
('get','en'),
('go','en'),
('how','en'),
('if','en'),
('in','en'),
('into','en'),
('is','en'),
('isn\'t','en'),
('it','en'),
('its','en'),
('me','en'),
('more','en'),
('most','en'),
('must','en'),
('my','en'),
('new','en'),
('no','en'),
('none','en'),
('not','en'),
('nothing','en'),
('of','en'),
('off','en'),
('often','en'),
('old','en'),
('on','en'),
('onc','en'),
('once','en'),
('only','en'),
('or','en'),
('other','en'),
('our','en'),
('ours','en'),
('out','en'),
('over','en'),
('page','en'),
('she','en'),
('should','en'),
('small','en'),
('so','en'),
('some','en'),
('than','en'),
('thank','en'),
('that','en'),
('the','en'),
('their','en'),
('theirs','en'),
('them','en'),
('then','en'),
('there','en'),
('these','en'),
('they','en'),
('this','en'),
('those','en'),
('thus','en'),
('time','en'),
('times','en'),
('to','en'),
('too','en'),
('true','en'),
('under','en'),
('until','en'),
('up','en'),
('upon','en'),
('use','en'),
('user','en'),
('users','en'),
('version','en'),
('very','en'),
('via','en'),
('want','en'),
('was','en'),
('way','en'),
('were','en'),
('what','en'),
('when','en'),
('where','en'),
('which','en'),
('who','en'),
('whom','en'),
('whose','en'),
('why','en'),
('wide','en'),
('will','en'),
('with','en'),
('within','en'),
('without','en'),
('would','en'),
('yes','en'),
('yet','en'),
('you','en'),
('your','en'),
('yours','en');

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_tokens` */

DROP TABLE IF EXISTS `l7f4c_finder_tokens`;

CREATE TABLE `l7f4c_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_tokens` */

LOCK TABLES `l7f4c_finder_tokens` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_tokens_aggregate` */

DROP TABLE IF EXISTS `l7f4c_finder_tokens_aggregate`;

CREATE TABLE `l7f4c_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_tokens_aggregate` */

LOCK TABLES `l7f4c_finder_tokens_aggregate` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_finder_types` */

DROP TABLE IF EXISTS `l7f4c_finder_types`;

CREATE TABLE `l7f4c_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `l7f4c_finder_types` */

LOCK TABLES `l7f4c_finder_types` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_languages` */

DROP TABLE IF EXISTS `l7f4c_languages`;

CREATE TABLE `l7f4c_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_languages` */

LOCK TABLES `l7f4c_languages` WRITE;

insert  into `l7f4c_languages`(`lang_id`,`asset_id`,`lang_code`,`title`,`title_native`,`sef`,`image`,`description`,`metakey`,`metadesc`,`sitename`,`published`,`access`,`ordering`) values 
(1,0,'en-GB','English (en-GB)','English (United Kingdom)','en','en_gb','','','','',1,1,3),
(2,56,'es-ES','Spanish (español)','Español (España)','es','es_es','','','','',0,1,2),
(3,57,'es-CO','Spanish (Colombia)','Español (Colombia)','es-co','es_co','','','','',0,1,1);

UNLOCK TABLES;

/*Table structure for table `l7f4c_menu` */

DROP TABLE IF EXISTS `l7f4c_menu`;

CREATE TABLE `l7f4c_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_menu` */

LOCK TABLES `l7f4c_menu` WRITE;

insert  into `l7f4c_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values 
(1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,57,0,'*',0),
(2,'main','com_banners','Banners','','Banners','index.php?option=com_banners','component',1,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),
(3,'main','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),
(4,'main','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',1,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),
(5,'main','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),
(6,'main','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),
(7,'main','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',1,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),
(8,'main','com_contact_contacts','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',1,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),
(9,'main','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',1,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),
(10,'main','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',1,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,20,0,'*',1),
(11,'main','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',1,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),
(13,'main','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',1,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',21,26,0,'*',1),
(14,'main','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',1,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',22,23,0,'*',1),
(15,'main','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',1,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',24,25,0,'*',1),
(16,'main','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',1,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',27,28,0,'*',1),
(17,'main','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',1,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',29,30,0,'*',1),
(18,'main','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',1,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',31,32,0,'*',1),
(19,'main','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',33,34,0,'*',1),
(20,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',1,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',35,36,0,'',1),
(21,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',1,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',37,38,0,'*',1),
(22,'main','com_associations','Multilingual Associations','','Multilingual Associations','index.php?option=com_associations','component',1,1,1,34,0,'0000-00-00 00:00:00',0,0,'class:associations',0,'',39,40,0,'*',1),
(101,'mainmenu','REPOSITORIO DIGITAL','home','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,' ',4,'{\"featured_categories\":[\"8\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"alpha\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"0\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"center\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"101\\\",\\\"moduleId\\\":\\\"1\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',41,42,1,'*',0),
(102,'left','TÉSIS DE GRADO','tesis-de-grado','','tesis-de-grado','index.php?option=com_content&view=category&id=10','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"list_show_votes\":\"\",\"list_show_ratings\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_featured\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',43,44,0,'*',0),
(103,'left','PUBLICACIONES ACADÉMICAS','publicaciones-academicas','','publicaciones-academicas','index.php?option=com_content&view=category&id=11','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"list_show_votes\":\"\",\"list_show_ratings\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_featured\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',45,46,0,'*',0),
(104,'left','PRODUCCIÓN EDITORIAL UTIC','produccion-editorial-utic','','produccion-editorial-utic','index.php?option=com_content&view=category&id=12','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"list_show_votes\":\"\",\"list_show_ratings\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_featured\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',47,48,0,'*',0),
(105,'left','PRODUCTOS DE INVESTIGACIÓN','productos-de-investigacion','','productos-de-investigacion','index.php?option=com_content&view=category&id=13','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"list_show_votes\":\"\",\"list_show_ratings\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_featured\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"dropdown_position\":\"right\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',49,50,0,'*',0),
(106,'guia','Condiciones de Utilización','condiciones-de-utilizacion','','condiciones-de-utilizacion','http://www.utic.edu.py/v6','url',1,1,1,0,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"106\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',51,52,0,'*',0),
(107,'guia','Directrices','directrices','','directrices','http://www.utic.edu.py/v6','url',1,1,1,0,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"107\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',53,54,0,'*',0),
(108,'guia','Preguntas Frecuentes','preguntas-frecuentes','','preguntas-frecuentes','http://www.utic.edu.py/v6','url',1,1,1,0,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"menulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"108\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"megamenu\":\"0\",\"showmenutitle\":\"1\",\"icon\":\"\",\"class\":\"\",\"enable_page_title\":\"0\",\"page_title_alt\":\"\",\"page_subtitle\":\"\",\"page_title_bg_color\":\"\",\"page_title_bg_image\":\"\"}',55,56,0,'*',0);

UNLOCK TABLES;

/*Table structure for table `l7f4c_menu_types` */

DROP TABLE IF EXISTS `l7f4c_menu_types`;

CREATE TABLE `l7f4c_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_menu_types` */

LOCK TABLES `l7f4c_menu_types` WRITE;

insert  into `l7f4c_menu_types`(`id`,`asset_id`,`menutype`,`title`,`description`,`client_id`) values 
(1,54,'mainmenu','Main Menú','The main menu for the site',0),
(2,96,'left','Menu_left','',0),
(3,99,'guia','GUÍA DE UTILIZACIÓN','',0);

UNLOCK TABLES;

/*Table structure for table `l7f4c_messages` */

DROP TABLE IF EXISTS `l7f4c_messages`;

CREATE TABLE `l7f4c_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_messages` */

LOCK TABLES `l7f4c_messages` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_messages_cfg` */

DROP TABLE IF EXISTS `l7f4c_messages_cfg`;

CREATE TABLE `l7f4c_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_messages_cfg` */

LOCK TABLES `l7f4c_messages_cfg` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_modules` */

DROP TABLE IF EXISTS `l7f4c_modules`;

CREATE TABLE `l7f4c_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_modules` */

LOCK TABLES `l7f4c_modules` WRITE;

insert  into `l7f4c_modules`(`id`,`asset_id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values 
(1,39,'GUÍA DE UTILIZACIÓN','','',2,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"guia\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(2,40,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),
(3,41,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(4,42,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(8,43,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),
(9,44,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),
(10,45,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(12,46,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),
(13,47,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),
(14,48,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),
(15,49,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),
(16,50,'INICIAR SESIÓN','','',3,'position-4',0,'0000-00-00 00:00:00','2018-03-21 21:07:12','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":\"1\",\"name\":\"0\",\"profilelink\":\"0\",\"usesecure\":\"0\",\"usetext\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(17,51,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}',0,'*'),
(79,52,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(86,53,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(87,55,'Sample Data','','',0,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_sampledata',6,1,'{}',1,'*'),
(88,97,'REPOSITORIO DIGITAL','','',1,'position-4',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"left\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),
(89,98,'REPOSITORIO ACADÉMICO (copia)','','',1,'position-2',0,'0000-00-00 00:00:00','2018-03-21 19:24:09','0000-00-00 00:00:00',0,'mod_menu',1,1,'{\"menutype\":\"left\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');

UNLOCK TABLES;

/*Table structure for table `l7f4c_modules_menu` */

DROP TABLE IF EXISTS `l7f4c_modules_menu`;

CREATE TABLE `l7f4c_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_modules_menu` */

LOCK TABLES `l7f4c_modules_menu` WRITE;

insert  into `l7f4c_modules_menu`(`moduleid`,`menuid`) values 
(1,0),
(2,0),
(3,0),
(4,0),
(6,0),
(7,0),
(8,0),
(9,0),
(10,0),
(12,0),
(13,0),
(14,0),
(15,0),
(16,0),
(17,0),
(79,0),
(86,0),
(87,0),
(88,0),
(89,0);

UNLOCK TABLES;

/*Table structure for table `l7f4c_newsfeeds` */

DROP TABLE IF EXISTS `l7f4c_newsfeeds`;

CREATE TABLE `l7f4c_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_newsfeeds` */

LOCK TABLES `l7f4c_newsfeeds` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_overrider` */

DROP TABLE IF EXISTS `l7f4c_overrider`;

CREATE TABLE `l7f4c_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_overrider` */

LOCK TABLES `l7f4c_overrider` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_postinstall_messages` */

DROP TABLE IF EXISTS `l7f4c_postinstall_messages`;

CREATE TABLE `l7f4c_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_postinstall_messages` */

LOCK TABLES `l7f4c_postinstall_messages` WRITE;

insert  into `l7f4c_postinstall_messages`(`postinstall_message_id`,`extension_id`,`title_key`,`description_key`,`action_key`,`language_extension`,`language_client_id`,`type`,`action_file`,`action`,`condition_file`,`condition_method`,`version_introduced`,`enabled`) values 
(1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),
(2,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),
(3,700,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),
(4,700,'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION','plg_system_updatenotification',1,'action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_condition','3.6.3',1),
(5,700,'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE','COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/joomla40checks.php','admin_postinstall_joomla40checks_condition','3.7.0',1),
(6,700,'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE','TPL_HATHOR_MESSAGE_POSTINSTALL_BODY','TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION','tpl_hathor',1,'action','admin://templates/hathor/postinstall/hathormessage.php','hathormessage_postinstall_action','admin://templates/hathor/postinstall/hathormessage.php','hathormessage_postinstall_condition','3.7.0',1);

UNLOCK TABLES;

/*Table structure for table `l7f4c_redirect_links` */

DROP TABLE IF EXISTS `l7f4c_redirect_links`;

CREATE TABLE `l7f4c_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_redirect_links` */

LOCK TABLES `l7f4c_redirect_links` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_schemas` */

DROP TABLE IF EXISTS `l7f4c_schemas`;

CREATE TABLE `l7f4c_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_schemas` */

LOCK TABLES `l7f4c_schemas` WRITE;

insert  into `l7f4c_schemas`(`extension_id`,`version_id`) values 
(700,'3.8.4-2018-01-16');

UNLOCK TABLES;

/*Table structure for table `l7f4c_session` */

DROP TABLE IF EXISTS `l7f4c_session`;

CREATE TABLE `l7f4c_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_session` */

LOCK TABLES `l7f4c_session` WRITE;

insert  into `l7f4c_session`(`session_id`,`client_id`,`guest`,`time`,`data`,`userid`,`username`) values 
('8hcpsjfh232o1f99oiqe31nip0',1,1,'1521671206','joomla|s:596:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidG9rZW4iO3M6MzI6IkVMTWtNcmxDeTh5b0NocHlqTHVONzhCOFpxQ1lyWEpGIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',0,''),
('f9mllt7t269ljbvsch8cs7jvp6',0,1,'1521671921','joomla|s:1376:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo1NDtzOjU6InRva2VuIjtzOjMyOiJOU1RpWFdmMndXQURzMHhpdXZ3QzZOTWVFeGtBMkVZWCI7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTIxNjY1OTMyO3M6NDoibGFzdCI7aToxNTIxNjcxODQ2O3M6Mzoibm93IjtpOjE1MjE2NzE5MjE7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9czoxMDoiY29tX21haWx0byI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsaW5rcyI7YToyOntzOjQwOiJiYTc0OGYyMGQwZDY5ZWFkYmFjYmUxZjY5ZmE4ZmNkYjc4N2ZkMGNiIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImxpbmsiO3M6MTI3OiJodHRwOi8vbG9jYWxob3N0L3JlcG9zaXRvcmlvL2luZGV4LnBocC90ZXNpcy1kZS1ncmFkby8xOS1mYWN1bHRhZC1jaWVuY2lhcy1kZS1jaWVuY2lhLWVtcHJlc2FyaWFsZXMvY2llbmNpYXMtY29udGFibGVzLzgtY29udGExIjtzOjY6ImV4cGlyeSI7aToxNTIxNjcxMDY5O31zOjQwOiI4YjJiYTE1NGVkNTJiZWE1ZDUzOWE5MWFjOGNkZGFjM2Q3NTg1M2ZjIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImxpbmsiO3M6NzM6Imh0dHA6Ly9sb2NhbGhvc3QvcmVwb3NpdG9yaW8vaW5kZXgucGhwLzgtZGVzdGFjYWRvcy8xNC1yZXBvc2l0b3JvLWRpZ2l0YWwiO3M6NjoiZXhwaXJ5IjtpOjE1MjE2NzE4NDc7fX19fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',0,''),
('gns74cumbafqjucv4lukqonq83',1,0,'1521671845','joomla|s:2320:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMTI7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTIxNjcxMjA4O3M6NDoibGFzdCI7aToxNTIxNjcxODQ1O3M6Mzoibm93IjtpOjE1MjE2NzE4NDU7fXM6NToidG9rZW4iO3M6MzI6ImxRV1hOTVlJek5MbXZrRjZqRHE5ZGtna1A1RndkWjJwIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6MTM6ImNvbV9pbnN0YWxsZXIiO086ODoic3RkQ2xhc3MiOjI6e3M6NzoibWVzc2FnZSI7czowOiIiO3M6MTc6ImV4dGVuc2lvbl9tZXNzYWdlIjtzOjA6IiI7fXM6MTE6ImNvbV9jb250ZW50IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiYXJ0aWNsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJkYXRhIjtOO3M6MjoiaWQiO2E6MDp7fX19fXM6OToiY29tX21lbnVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjU6Iml0ZW1zIjtPOjg6InN0ZENsYXNzIjo0OntzOjg6Im1lbnV0eXBlIjtzOjg6Im1haW5tZW51IjtzOjk6ImNsaWVudF9pZCI7aTowO3M6MTA6ImxpbWl0c3RhcnQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiaXRlbSI7Tzo4OiJzdGRDbGFzcyI6NDp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO3M6NDoidHlwZSI7TjtzOjQ6ImxpbmsiO047fX19czoxMToiY29tX21vZHVsZXMiO086ODoic3RkQ2xhc3MiOjM6e3M6NzoibW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6NDp7czo2OiJmaWx0ZXIiO2E6Nzp7czo2OiJzZWFyY2giO3M6MDoiIjtzOjU6InN0YXRlIjtzOjA6IiI7czo4OiJwb3NpdGlvbiI7czowOiIiO3M6NjoibW9kdWxlIjtzOjA6IiI7czo4OiJtZW51aXRlbSI7czowOiIiO3M6NjoiYWNjZXNzIjtzOjA6IiI7czo4OiJsYW5ndWFnZSI7czowOiIiO31zOjk6ImNsaWVudF9pZCI7aTowO3M6NDoibGlzdCI7YToyOntzOjEyOiJmdWxsb3JkZXJpbmciO3M6MTQ6ImEub3JkZXJpbmcgQVNDIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjt9czoxMDoibGltaXRzdGFydCI7aTowO31zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fX1zOjM6ImFkZCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MTI6ImV4dGVuc2lvbl9pZCI7TjtzOjY6InBhcmFtcyI7Tjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiI0MDEiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',401,'dbordon');

UNLOCK TABLES;

/*Table structure for table `l7f4c_tags` */

DROP TABLE IF EXISTS `l7f4c_tags`;

CREATE TABLE `l7f4c_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_tags` */

LOCK TABLES `l7f4c_tags` WRITE;

insert  into `l7f4c_tags`(`id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`created_by_alias`,`modified_user_id`,`modified_time`,`images`,`urls`,`hits`,`language`,`version`,`publish_up`,`publish_down`) values 
(1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',401,'2018-03-21 02:47:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');

UNLOCK TABLES;

/*Table structure for table `l7f4c_template_styles` */

DROP TABLE IF EXISTS `l7f4c_template_styles`;

CREATE TABLE `l7f4c_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_template_styles` */

LOCK TABLES `l7f4c_template_styles` WRITE;

insert  into `l7f4c_template_styles`(`id`,`template`,`client_id`,`home`,`title`,`params`) values 
(4,'beez3',0,'1','Beez3 - Default','{\"wrapperSmall\":53,\"wrapperLarge\":72,\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"bootstrap\":\"\",\"templatecolor\":\"personal\",\"headerImage\":\"\",\"backgroundcolor\":\"#eeeeee\"}'),
(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7,'protostar',0,'0','protostar - Default','{\"templateColor\":\"#0088cc\",\"templateBackgroundColor\":\"#f4f6f7\",\"logoFile\":\"\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}');

UNLOCK TABLES;

/*Table structure for table `l7f4c_ucm_base` */

DROP TABLE IF EXISTS `l7f4c_ucm_base`;

CREATE TABLE `l7f4c_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_ucm_base` */

LOCK TABLES `l7f4c_ucm_base` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_ucm_content` */

DROP TABLE IF EXISTS `l7f4c_ucm_content`;

CREATE TABLE `l7f4c_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

/*Data for the table `l7f4c_ucm_content` */

LOCK TABLES `l7f4c_ucm_content` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_ucm_history` */

DROP TABLE IF EXISTS `l7f4c_ucm_history`;

CREATE TABLE `l7f4c_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_ucm_history` */

LOCK TABLES `l7f4c_ucm_history` WRITE;

insert  into `l7f4c_ucm_history`(`version_id`,`ucm_item_id`,`ucm_type_id`,`version_note`,`save_date`,`editor_user_id`,`character_count`,`sha1_hash`,`version_data`,`keep_forever`) values 
(1,8,5,'','2018-03-21 02:55:19',401,557,'8d60b01afb18d47846ec3d78b41be877c80bbc76','{\"id\":8,\"asset_id\":58,\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"DESTACADOS\",\"alias\":\"destacados\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 02:55:19\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 02:55:19\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(2,9,5,'','2018-03-21 02:55:41',401,584,'0f1ce84fdccd95bed4fe6fd51939cd1f852f5ca0','{\"id\":9,\"asset_id\":59,\"parent_id\":\"1\",\"lft\":\"13\",\"rgt\":14,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"REPOSITORIO ACAD\\u00c9MICO\",\"alias\":\"repositorio-academico\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 02:55:41\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 02:55:41\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(3,10,5,'','2018-03-21 02:55:55',401,571,'c9a447ecac9d7411c9c0eeaf556a4f87b68c6c42','{\"id\":10,\"asset_id\":60,\"parent_id\":\"9\",\"lft\":\"14\",\"rgt\":15,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"T\\u00c9SIS DE GRADO\",\"alias\":\"tesis-de-grado\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 02:55:55\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 02:55:55\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(4,11,5,'','2018-03-21 02:56:32',401,591,'8b8668c1c12bcf967a0b43e7e83911def3abac19','{\"id\":11,\"asset_id\":61,\"parent_id\":\"9\",\"lft\":\"16\",\"rgt\":17,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"PUBLICACIONES ACAD\\u00c9MICAS\",\"alias\":\"publicaciones-academicas\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 02:56:32\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 02:56:32\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(5,12,5,'','2018-03-21 17:23:25',401,593,'7061e79f52ece116d42f32e58f5cf6a62877dc62','{\"id\":12,\"asset_id\":62,\"parent_id\":\"1\",\"lft\":\"19\",\"rgt\":20,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"PRODUCCI\\u00d3N EDITORIAL UTIC\",\"alias\":\"produccion-editorial-utic\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:23:25\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:23:25\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(6,12,5,'','2018-03-21 17:23:42',401,636,'6c1ef44923769565bd163ab12640c363c02e5f48','{\"id\":12,\"asset_id\":\"62\",\"parent_id\":\"9\",\"lft\":\"18\",\"rgt\":19,\"level\":2,\"path\":\"produccion-editorial-utic\",\"extension\":\"com_content\",\"title\":\"PRODUCCI\\u00d3N EDITORIAL UTIC\",\"alias\":\"produccion-editorial-utic\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"401\",\"checked_out_time\":\"2018-03-21 17:23:31\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:23:25\",\"modified_user_id\":\"401\",\"modified_time\":\"2018-03-21 17:23:42\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),
(7,13,5,'','2018-03-21 17:24:02',401,595,'63f1b6c5da9417a908ee68909342941cdcdcbd14','{\"id\":13,\"asset_id\":63,\"parent_id\":\"9\",\"lft\":\"20\",\"rgt\":21,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"PRODUCTOS DE INVESTIGACI\\u00d3N\",\"alias\":\"productos-de-investigacion\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:24:02\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:24:02\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(8,14,5,'','2018-03-21 17:26:08',401,583,'6585d43c1ffcfb9b48a278ed3154df23fa26ca81','{\"id\":14,\"asset_id\":64,\"parent_id\":\"10\",\"lft\":\"15\",\"rgt\":16,\"level\":3,\"path\":null,\"extension\":\"com_content\",\"title\":\"FACULTAD TECNOLOG\\u00cdA \",\"alias\":\"facultad-tecnologia\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:26:08\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:26:08\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(9,14,5,'','2018-03-21 17:26:43',401,679,'9d6f862e08b45a55cb50875a9fc2e492b6dd8aed','{\"id\":14,\"asset_id\":\"64\",\"parent_id\":\"10\",\"lft\":\"15\",\"rgt\":\"16\",\"level\":\"3\",\"path\":\"repositorio-academico\\/tesis-de-grado\\/facultad-tecnologia\",\"extension\":\"com_content\",\"title\":\"FACULTAD TECNOLOG\\u00cdA INFORM\\u00c1TICA\",\"alias\":\"facultad-tecnologia\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"401\",\"checked_out_time\":\"2018-03-21 17:26:19\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:26:08\",\"modified_user_id\":\"401\",\"modified_time\":\"2018-03-21 17:26:43\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),
(10,15,5,'','2018-03-21 17:27:10',401,599,'1616a1801f6599aa9d6048ba7ef83b6415c9d559','{\"id\":15,\"asset_id\":65,\"parent_id\":\"10\",\"lft\":\"17\",\"rgt\":18,\"level\":3,\"path\":null,\"extension\":\"com_content\",\"title\":\"FACULTAD - CIENCIAS DE LA SALUD\",\"alias\":\"facultad-ciencias-de-la-salud\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:27:10\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:27:10\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(11,16,5,'','2018-03-21 17:27:52',401,625,'c3561f033972ab42d711b098f76cd9b43b85da26','{\"id\":16,\"asset_id\":66,\"parent_id\":\"10\",\"lft\":\"19\",\"rgt\":20,\"level\":3,\"path\":null,\"extension\":\"com_content\",\"title\":\"FACULTAD - CIENCIAS DE CIENCIA EMPRESARIALES\",\"alias\":\"facultad-ciencias-de-ciencia-empresariales\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:27:52\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:27:52\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(12,17,5,'','2018-03-21 17:28:48',401,612,'754a26c47fe9a85e6633a2e6cd7bca53c1ab0aed','{\"id\":17,\"asset_id\":67,\"parent_id\":\"1\",\"lft\":\"29\",\"rgt\":30,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"FACULTAD - DERECHO Y CIENCIAS SOCIALES\",\"alias\":\"facultad-derecho-y-ciencias-sociales\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:28:48\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:28:48\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(13,16,5,'','2018-03-21 17:29:56',401,717,'0db17491c6cc1e72d2df8d30555fce357bca3b66','{\"id\":16,\"asset_id\":\"66\",\"parent_id\":\"10\",\"lft\":\"19\",\"rgt\":\"20\",\"level\":\"3\",\"path\":\"repositorio-academico\\/tesis-de-grado\\/facultad-ciencias-de-ciencia-empresariales\",\"extension\":\"com_content\",\"title\":\"FACULTAD - CIENCIAS EMPRESARIALES\",\"alias\":\"facultad-ciencias-de-ciencia-empresariales\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"401\",\"checked_out_time\":\"2018-03-21 17:29:42\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:27:52\",\"modified_user_id\":\"401\",\"modified_time\":\"2018-03-21 17:29:56\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),
(14,18,5,'','2018-03-21 17:30:51',401,629,'088f0caae3b49483dd2f282acab5d52e75f87e04','{\"id\":18,\"asset_id\":68,\"parent_id\":\"10\",\"lft\":\"21\",\"rgt\":22,\"level\":3,\"path\":null,\"extension\":\"com_content\",\"title\":\"FACULTAD - CIENCIAS HUMANAS Y CIENCIAS EXACTAS\",\"alias\":\"facultad-ciencias-humanas-y-ciencias-exactas\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:30:51\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:30:51\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(15,17,5,'','2018-03-21 17:33:31',401,667,'9c9353621479d46d5aeec1f5d162433d0a6cf486','{\"id\":17,\"asset_id\":\"67\",\"parent_id\":\"10\",\"lft\":\"23\",\"rgt\":24,\"level\":3,\"path\":\"facultad-derecho-y-ciencias-sociales\",\"extension\":\"com_content\",\"title\":\"FACULTAD - DERECHO Y CIENCIAS SOCIALES\",\"alias\":\"facultad-derecho-y-ciencias-sociales\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"401\",\"checked_out_time\":\"2018-03-21 17:33:25\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:28:48\",\"modified_user_id\":\"401\",\"modified_time\":\"2018-03-21 17:33:31\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),
(16,19,5,'','2018-03-21 17:35:38',401,575,'17290a6296190a878df232165fdc462e600b8359','{\"id\":19,\"asset_id\":69,\"parent_id\":\"16\",\"lft\":\"16\",\"rgt\":17,\"level\":4,\"path\":null,\"extension\":\"com_content\",\"title\":\"CIENCIAS CONTABLES\",\"alias\":\"ciencias-contables\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:35:38\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:35:38\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(17,20,5,'','2018-03-21 17:36:10',401,587,'2a20c9a792a6f68db3b988db0be0d48d88afb2c2','{\"id\":20,\"asset_id\":70,\"parent_id\":\"16\",\"lft\":\"18\",\"rgt\":19,\"level\":4,\"path\":null,\"extension\":\"com_content\",\"title\":\"CIENCIAS ADMINISTRATIVOS\",\"alias\":\"ciencias-administrativos\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:36:10\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:36:10\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(18,21,5,'','2018-03-21 17:36:46',401,584,'b1410021c02eebfd5281d7cce55a2651de0c4deb','{\"id\":21,\"asset_id\":71,\"parent_id\":\"16\",\"lft\":\"20\",\"rgt\":21,\"level\":4,\"path\":null,\"extension\":\"com_content\",\"title\":\"INGENIER\\u00cdA COMERCIAL\",\"alias\":\"ingenieria-comercial\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:36:46\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:36:46\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(19,22,5,'','2018-03-21 17:37:18',401,573,'18457bf27cd16d811953c4ab1cee301a71e89ddd','{\"id\":22,\"asset_id\":72,\"parent_id\":\"16\",\"lft\":\"22\",\"rgt\":23,\"level\":4,\"path\":null,\"extension\":\"com_content\",\"title\":\"COMERCIO EXTERIOR\",\"alias\":\"comercio-exterior\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:37:18\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:37:18\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(20,23,5,'','2018-03-21 17:37:52',401,591,'46ae65f5f5792bdd0ed1a75e80be3137e68cfc5c','{\"id\":23,\"asset_id\":73,\"parent_id\":\"16\",\"lft\":\"24\",\"rgt\":25,\"level\":4,\"path\":null,\"extension\":\"com_content\",\"title\":\"LICIENCIATURA EN MARKETING\",\"alias\":\"licienciatura-en-marketing\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:37:52\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:37:52\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(21,24,5,'','2018-03-21 17:39:12',401,661,'4b20114ac4f03879513fa2ab5378086920b467d1','{\"id\":24,\"asset_id\":74,\"parent_id\":\"16\",\"lft\":\"26\",\"rgt\":27,\"level\":4,\"path\":null,\"extension\":\"com_content\",\"title\":\"LICENCIADATURA ADMINISTRACI\\u00d3N AGROECOL\\u00d3GICA E INDUSTRIAL\",\"alias\":\"licenciadatura-administracion-agroecologica-e-industrial\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:39:12\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:39:12\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(22,25,5,'','2018-03-21 17:39:40',401,614,'2692fb5a121d0e6a37cabf2ad8d475999b2ebce6','{\"id\":25,\"asset_id\":75,\"parent_id\":\"16\",\"lft\":\"28\",\"rgt\":29,\"level\":4,\"path\":null,\"extension\":\"com_content\",\"title\":\"LICENCIATURA EN HOTELER\\u00cdA Y TURISMO\",\"alias\":\"licenciatura-en-hoteleria-y-turismo\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:39:40\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:39:40\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(23,26,5,'','2018-03-21 17:40:19',401,647,'036e64eb500b25bd108fdf5d0fd52ef98e562ac4','{\"id\":26,\"asset_id\":76,\"parent_id\":\"14\",\"lft\":\"32\",\"rgt\":33,\"level\":4,\"path\":null,\"extension\":\"com_content\",\"title\":\"LICENCIATURA EN AN\\u00c1LISIS DE SISTEMAS INFORM\\u00c1TICOS\",\"alias\":\"licenciatura-en-analisis-de-sistemas-informaticos\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:40:19\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:40:19\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(24,27,5,'','2018-03-21 17:40:53',401,593,'12f09819bd74e51741c0b2d177addc2fccba976f','{\"id\":27,\"asset_id\":77,\"parent_id\":\"14\",\"lft\":\"34\",\"rgt\":35,\"level\":4,\"path\":null,\"extension\":\"com_content\",\"title\":\"INGENIER\\u00cdA INFORM\\u00c1TICA\",\"alias\":\"ingenieria-informatica\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:40:53\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:40:53\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(25,28,5,'','2018-03-21 17:41:29',401,596,'b0d10f2952b1b8ac5a58506f8ee498832e649711','{\"id\":28,\"asset_id\":78,\"parent_id\":\"14\",\"lft\":\"36\",\"rgt\":37,\"level\":4,\"path\":null,\"extension\":\"com_content\",\"title\":\"LICENCIATURA EN PSICOLOG\\u00cdA\",\"alias\":\"licenciatura-en-psicologia\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:41:29\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:41:29\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(26,28,5,'','2018-03-21 17:42:10',401,700,'31bc21390d27437a0057d512357488e8d7451f6e','{\"id\":28,\"asset_id\":\"78\",\"parent_id\":\"15\",\"lft\":\"38\",\"rgt\":39,\"level\":4,\"path\":\"repositorio-academico\\/tesis-de-grado\\/facultad-tecnologia\\/licenciatura-en-psicologia\",\"extension\":\"com_content\",\"title\":\"LICENCIATURA EN PSICOLOG\\u00cdA\",\"alias\":\"licenciatura-en-psicologia\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"401\",\"checked_out_time\":\"2018-03-21 17:41:50\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:41:29\",\"modified_user_id\":\"401\",\"modified_time\":\"2018-03-21 17:42:10\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),
(27,29,5,'','2018-03-21 17:42:46',401,596,'2f407cf8f6587ac7bf7e9b5c94d9d9d33265f483','{\"id\":29,\"asset_id\":79,\"parent_id\":\"15\",\"lft\":\"40\",\"rgt\":41,\"level\":4,\"path\":null,\"extension\":\"com_content\",\"title\":\"LICENCIATURA EN ENFERMER\\u00cdA\",\"alias\":\"licenciatura-en-enfermeria\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:42:46\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:42:46\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(28,30,5,'','2018-03-21 17:43:21',401,553,'ffe6b6a14bf85db6adecaef18fa586a31d42cb49','{\"id\":30,\"asset_id\":80,\"parent_id\":\"17\",\"lft\":\"44\",\"rgt\":45,\"level\":4,\"path\":null,\"extension\":\"com_content\",\"title\":\"DERECHO\",\"alias\":\"derecho\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:43:21\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:43:21\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(29,31,5,'','2018-03-21 17:43:53',401,616,'b60ae63c768e53c5a22c7ccf5c7890142d824e2c','{\"id\":31,\"asset_id\":81,\"parent_id\":\"18\",\"lft\":\"48\",\"rgt\":49,\"level\":4,\"path\":null,\"extension\":\"com_content\",\"title\":\"LICENCIATURA EN EDUCACI\\u00d3N PARVULARIA\",\"alias\":\"licenciatura-en-educacion-parvularia\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:43:53\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:43:53\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(30,32,5,'','2018-03-21 17:44:20',401,624,'50e8e9f7074c960718312aef2cd3907c5ae1ff86','{\"id\":32,\"asset_id\":82,\"parent_id\":\"18\",\"lft\":\"50\",\"rgt\":51,\"level\":4,\"path\":null,\"extension\":\"com_content\",\"title\":\"LICENCIATURA EN CIENCIAS DE LA EDUCACI\\u00d3N\",\"alias\":\"licenciatura-en-ciencias-de-la-educacion\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 17:44:20\",\"modified_user_id\":null,\"modified_time\":\"2018-03-21 17:44:20\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),
(31,1,1,'','2018-03-21 18:17:17',401,5935,'cdd1d1c61358bf6209ac276f90ebc9eca54bfdfd','{\"id\":1,\"asset_id\":83,\"title\":\"SISTEMA INFORM\\u00c1TICO\",\"alias\":\"sistema-informatico\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"26\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:17:17\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(32,2,1,'','2018-03-21 18:17:57',401,5855,'07e16c8c8f871431cb7875130ef22a890f6b9b73','{\"id\":2,\"asset_id\":84,\"title\":\"SISTEMA INFORM\\u00c1TICO (2)\",\"alias\":\"sistema-informatico-2\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"26\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:17:57\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(33,2,1,'','2018-03-21 18:18:32',401,5913,'c0df9192e98174ef4f9b242ccc56806bb1229829','{\"id\":2,\"asset_id\":\"84\",\"title\":\"SISTEMA INFORM\\u00c1TICO ING\",\"alias\":\"sistema-informatico-ing\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"27\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:18:32\",\"modified_by\":\"401\",\"checked_out\":\"401\",\"checked_out_time\":\"2018-03-21 18:17:57\",\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(34,3,1,'','2018-03-21 18:18:49',401,5881,'b0e516e9218132c537a75aae8ad6f91c1498cfa7','{\"id\":3,\"asset_id\":85,\"title\":\"SISTEMA INFORM\\u00c1TICO ING (2)\",\"alias\":\"sistema-informatico-ing-2\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"27\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:18:49\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(35,4,1,'','2018-03-21 18:19:15',401,5828,'15dffa3fd4f235a88ae6d96f50b45db859472d83','{\"id\":4,\"asset_id\":86,\"title\":\"Enfermer\\u00eda \",\"alias\":\"enfer1\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"29\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:19:15\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(36,5,1,'','2018-03-21 18:19:57',401,5852,'968f16484bf6fe432c1128fcc1ff81555cb35536','{\"id\":5,\"asset_id\":87,\"title\":\"Psicolog\\u00eda 1\",\"alias\":\"psicologia1\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"28\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:19:57\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(37,6,1,'','2018-03-21 18:20:37',401,5823,'24bce1f1fc71c071ef28c3444be6504b28b7a0b2','{\"id\":6,\"asset_id\":88,\"title\":\"Derecho 1\",\"alias\":\"derecho1\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"30\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:20:37\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(38,7,1,'','2018-03-21 18:21:01',401,5857,'bcc1eec784e584d1b99c18c22d613d1b0634a596','{\"id\":7,\"asset_id\":89,\"title\":\"administaci\\u00f3n1\",\"alias\":\"administacion1\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"20\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:21:01\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(39,8,1,'','2018-03-21 18:21:21',401,5828,'f64b9e2720891d6ea3406e6628e138501c66d8df','{\"id\":8,\"asset_id\":90,\"title\":\"contabililidad 1\",\"alias\":\"conta1\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"19\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:21:21\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(40,9,1,'','2018-03-21 18:21:39',401,5823,'d5ff2aae58666ac16ba7cca503e6cb468ba40297','{\"id\":9,\"asset_id\":91,\"title\":\"exterior\",\"alias\":\"exterior1\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"22\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:21:39\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(41,9,1,'','2018-03-21 18:22:08',401,5862,'f5670c6a9b03907968127135f91413ecb5b5d602','{\"id\":9,\"asset_id\":\"91\",\"title\":\"comercial\",\"alias\":\"comercial\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"21\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:22:08\",\"modified_by\":\"401\",\"checked_out\":\"401\",\"checked_out_time\":\"2018-03-21 18:21:39\",\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(42,10,1,'','2018-03-21 18:30:23',401,5864,'c8c8b94fb0988a1019f4d888616d30da0b02421c','{\"id\":10,\"asset_id\":92,\"title\":\"SISTEMA INFORM\\u00c1TICO ING (3)\",\"alias\":\"sistema-informatico-ing-3\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"27\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:30:23\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(43,10,1,'','2018-03-21 18:30:39',401,5900,'24e560512577ca3e57f1d6869dd817804cd03bca','{\"id\":10,\"asset_id\":\"92\",\"title\":\"SISTEMA INFORM\\u00c1TICO ING 2\",\"alias\":\"sistema-informatico-ing-3\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"27\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:30:39\",\"modified_by\":\"401\",\"checked_out\":\"401\",\"checked_out_time\":\"2018-03-21 18:30:23\",\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(44,10,5,'','2018-03-21 18:55:04',401,699,'f7cb2971b5d40b92e4d98fe39fdfeeea5804c47c','{\"id\":10,\"asset_id\":\"60\",\"parent_id\":\"9\",\"lft\":\"14\",\"rgt\":\"53\",\"level\":\"2\",\"path\":\"repositorio-academico\\/tesis-de-grado\",\"extension\":\"com_content\",\"title\":\"T\\u00c9SIS DE GRADO\",\"alias\":\"tesis-de-grado\",\"note\":\"\",\"description\":\"<p>Trabajos de T\\u00e9sis de Grado publicados por la Universidad<\\/p>\",\"published\":\"1\",\"checked_out\":\"401\",\"checked_out_time\":\"2018-03-21 18:53:28\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 02:55:55\",\"modified_user_id\":\"401\",\"modified_time\":\"2018-03-21 18:55:04\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),
(45,9,5,'','2018-03-21 18:57:15',401,665,'cb37244a4347b6b9ea90f0f421874d850552b950','{\"id\":9,\"asset_id\":\"59\",\"parent_id\":\"1\",\"lft\":\"13\",\"rgt\":\"60\",\"level\":\"1\",\"path\":\"repositorio-academico\",\"extension\":\"com_content\",\"title\":\"REPOSITORIO ACAD\\u00c9MICO\",\"alias\":\"repositorio-academico\",\"note\":\"\",\"description\":\"<p>Repositorio Institucional UTIC<\\/p>\",\"published\":\"1\",\"checked_out\":\"401\",\"checked_out_time\":\"2018-03-21 18:56:51\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"401\",\"created_time\":\"2018-03-21 02:55:41\",\"modified_user_id\":\"401\",\"modified_time\":\"2018-03-21 18:57:15\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),
(46,11,1,'','2018-03-21 18:58:26',401,5866,'eb421dd2a04844fa30fb1744eb248729e16323f8','{\"id\":11,\"asset_id\":93,\"title\":\"SISTEMA INFORM\\u00c1TICO ING 2 (2)\",\"alias\":\"sistema-informatico-ing-4\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"27\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:58:26\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(47,11,1,'','2018-03-21 18:58:44',401,5900,'f478ff7408bbdf7698ff4da077ee4e5aab51a3de','{\"id\":11,\"asset_id\":\"93\",\"title\":\"PUBLICACIONES ACAD\\u00c9MICASx\",\"alias\":\"sistema-informatico-ing-4\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:58:44\",\"modified_by\":\"401\",\"checked_out\":\"401\",\"checked_out_time\":\"2018-03-21 18:58:26\",\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(48,12,1,'','2018-03-21 18:59:31',401,5866,'5f2793a17ac17144a0b2048e81aa76b57453f6a2','{\"id\":12,\"asset_id\":94,\"title\":\"PUBLICACIONES ACAD\\u00c9MICASx (2)\",\"alias\":\"sistema-informatico-ing-5\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"11\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:59:31\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(49,13,1,'','2018-03-21 18:59:54',401,5863,'e2c03d155392c2063ed7eb9dd3daaa7ad116f8cb','{\"id\":13,\"asset_id\":95,\"title\":\"PRODUCCI\\u00d3N EDITORIAL UTIC 1\",\"alias\":\"prodi1\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"12\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 18:59:54\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(50,13,1,'','2018-03-21 19:00:07',401,5886,'2c2987a8f3bc964c06ffefdb790039570ba3c9e1','{\"id\":13,\"asset_id\":\"95\",\"title\":\"PRODUCCI\\u00d3N EDITORIAL UTIC xx\",\"alias\":\"prodi1xx\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"13\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 19:00:07\",\"modified_by\":\"401\",\"checked_out\":\"401\",\"checked_out_time\":\"2018-03-21 18:59:54\",\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(51,12,1,'','2018-03-21 19:01:00',401,5922,'8fb22d2ecb8dd6d9c17023bc2ebfe7b1dcf2cf62','{\"id\":12,\"asset_id\":\"94\",\"title\":\"PUBLICACIONES ACAD\\u00c9MICASx (2)\",\"alias\":\"sistema-informatico-ing-5\",\"introtext\":\"<p style=\\\"margin-bottom: 0cm; line-height: 100%;\\\">\\u00a0<\\/p>\\r\\n<table style=\\\"width: 671.2px;\\\" cellspacing=\\\"0\\\" cellpadding=\\\"4\\\">\\r\\n<tbody>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: #000000 currentcolor #000000 #000000; border-style: solid none solid solid; border-width: 1px medium 1px 1px; padding: 0.1cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Autor<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border: 1px solid #000000; padding: 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"37\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Tema<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"67\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Resumen<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"57\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>fecha de Publicaci\\u00f3n<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"29\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Palabras clave<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Evaluadores<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/td>\\r\\n<\\/tr>\\r\\n<tr valign=\\\"top\\\">\\r\\n<td style=\\\"border-color: currentcolor currentcolor #000000 #000000; border-style: none none solid solid; border-width: medium medium 1px 1px; padding: 0cm 0cm 0.1cm 0.1cm; width: 131px;\\\" height=\\\"36\\\">\\r\\n<p align=\\\"center\\\"><span style=\\\"font-family: Arial, sans-serif;\\\"><b>Archivo<\\/b><\\/span><\\/p>\\r\\n<\\/td>\\r\\n<td style=\\\"border-color: currentcolor #000000 #000000; border-style: none solid solid; border-width: medium 1px 1px; padding: 0cm 0.1cm 0.1cm; width: 523.2px;\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2018-03-21 18:17:17\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 19:01:00\",\"modified_by\":\"401\",\"checked_out\":\"401\",\"checked_out_time\":\"2018-03-21 19:00:52\",\"publish_up\":\"2018-03-21 18:17:17\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(52,14,1,'','2018-03-21 22:27:24',401,4840,'4296e9c61620df72fbee4e60b07a86cec840fd88','{\"id\":14,\"asset_id\":100,\"title\":\"Repositoro Digital\",\"alias\":\"repositoro-digital\",\"introtext\":\"<p style=\\\"text-align: justify;\\\">El\\u00a0<a href=\\\"http:\\/\\/repositorio.bib.upct.es\\/dspace\\/\\\">Repositorio Digital UPCT<\\/a>\\u00a0es un dep\\u00f3sito de documentos digitales, cuyo objetivo es organizar, almacenar, preservar y difundir en modo de acceso abierto (Open Access) la producci\\u00f3n intelectual resultante de la actividad acad\\u00e9mica e investigadora de la comunidad universitaria de la UPCT con los objetivos de:<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">* Integrar, conservar y preservar la producci\\u00f3n intelectual de la UPCT<br \\/> * Aumentar la visibilidad de la obra, del autor y de la universidad<br \\/> * Aumentar el impacto de la producci\\u00f3n cient\\u00edfica disponible en red<br \\/> * Proporcionar acceso a la informaci\\u00f3n de forma gratuita<br \\/> <br \\/> El Repositorio Digital UPCT est\\u00e1 dividido en cinco grandes grupos o categor\\u00edas:<br \\/> <br \\/> <strong>\\u00a0<\\/strong><img src=\\\"http:\\/\\/www.bib.upct.es\\/imagenes\\/plantilla\\/academico.png\\\" alt=\\\"\\\" width=\\\"33\\\" height=\\\"33\\\" \\/><strong> <span style=\\\"color: #003399;\\\">El Repositorio acad\\u00e9mico<\\/span> <\\/strong>re\\u00fane los documentos resultantes de la investigaci\\u00f3n docente, nuevos m\\u00e9todos de aprendizaje y los documentos resultantes de la actividad acad\\u00e9mica de\\u00a0 los miembros de la UPCT (Excepto las Tesis Doctorales).<br \\/> <strong>\\u00a0<\\/strong><img src=\\\"http:\\/\\/www.bib.upct.es\\/imagenes\\/plantilla\\/investigacion.png\\\" alt=\\\"\\\" width=\\\"33\\\" height=\\\"33\\\" \\/><strong>\\u00a0 <\\/strong><span style=\\\"color: #003399;\\\"><strong>El Repositorio de investigaci\\u00f3n<\\/strong><\\/span>, que re\\u00fane los documentos resultantes de la actividad investigadora de los miembros de la UPCT, tales como tesis, documentos de trabajo, art\\u00edculos de publicaciones peri\\u00f3dicas, ponencias a congresos, posters y otros.<br \\/> \\u00a0<img src=\\\"http:\\/\\/www.bib.upct.es\\/imagenes\\/plantilla\\/institucional.png\\\" alt=\\\"\\\" width=\\\"33\\\" height=\\\"33\\\" \\/>\\u00a0<span style=\\\"color: #003399;\\\"> <strong>El Repositorio Institucional<\\/strong><\\/span>, que re\\u00fane los documentos resultantes de la \\u00a0actividad institucional: discursos, memorias, entrevistas, exposiciones, etc.<br \\/> \\u00a0<img src=\\\"http:\\/\\/www.bib.upct.es\\/imagenes\\/plantilla\\/multimedia.png\\\" alt=\\\"\\\" width=\\\"33\\\" height=\\\"33\\\" \\/>\\u00a0 <span style=\\\"color: #003399;\\\"><strong>El Repositorio Multimedia<\\/strong><\\/span>, re\\u00fane los contenidos digitales producidos por la comunidad universitaria resultantes de su actividad docente, investigadora e institucional.<br \\/> \\u00a0<img src=\\\"http:\\/\\/www.bib.upct.es\\/imagenes\\/plantilla\\/revistas.png\\\" alt=\\\"\\\" width=\\\"33\\\" height=\\\"33\\\" \\/><strong>\\u00a0 <span style=\\\"color: #003399;\\\">Revistas<\\/span><\\/strong>, aloja y da acceso a los art\\u00edculos de las revistas cient\\u00edficas editadas por la UPCT.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2018-03-21 22:27:24\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 22:27:24\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-03-21 22:27:24\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),
(53,14,1,'','2018-03-21 22:37:24',401,4860,'45868f82ffe281289873e996bdae0cdece8f5c4a','{\"id\":14,\"asset_id\":\"100\",\"title\":\"REPOSITORIO DIGITAL\",\"alias\":\"repositoro-digital\",\"introtext\":\"<p style=\\\"text-align: justify;\\\">El\\u00a0<a href=\\\"http:\\/\\/repositorio.bib.upct.es\\/dspace\\/\\\">Repositorio Digital UPCT<\\/a>\\u00a0es un dep\\u00f3sito de documentos digitales, cuyo objetivo es organizar, almacenar, preservar y difundir en modo de acceso abierto (Open Access) la producci\\u00f3n intelectual resultante de la actividad acad\\u00e9mica e investigadora de la comunidad universitaria de la UPCT con los objetivos de:<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">* Integrar, conservar y preservar la producci\\u00f3n intelectual de la UPCT<br \\/> * Aumentar la visibilidad de la obra, del autor y de la universidad<br \\/> * Aumentar el impacto de la producci\\u00f3n cient\\u00edfica disponible en red<br \\/> * Proporcionar acceso a la informaci\\u00f3n de forma gratuita<br \\/> <br \\/> El Repositorio Digital UPCT est\\u00e1 dividido en cinco grandes grupos o categor\\u00edas:<br \\/> <br \\/> <strong>\\u00a0<\\/strong><img src=\\\"http:\\/\\/www.bib.upct.es\\/imagenes\\/plantilla\\/academico.png\\\" alt=\\\"\\\" width=\\\"33\\\" height=\\\"33\\\" \\/><strong> <span style=\\\"color: #003399;\\\">El Repositorio acad\\u00e9mico<\\/span> <\\/strong>re\\u00fane los documentos resultantes de la investigaci\\u00f3n docente, nuevos m\\u00e9todos de aprendizaje y los documentos resultantes de la actividad acad\\u00e9mica de\\u00a0 los miembros de la UPCT (Excepto las Tesis Doctorales).<br \\/> <strong>\\u00a0<\\/strong><img src=\\\"http:\\/\\/www.bib.upct.es\\/imagenes\\/plantilla\\/investigacion.png\\\" alt=\\\"\\\" width=\\\"33\\\" height=\\\"33\\\" \\/><strong>\\u00a0 <\\/strong><span style=\\\"color: #003399;\\\"><strong>El Repositorio de investigaci\\u00f3n<\\/strong><\\/span>, que re\\u00fane los documentos resultantes de la actividad investigadora de los miembros de la UPCT, tales como tesis, documentos de trabajo, art\\u00edculos de publicaciones peri\\u00f3dicas, ponencias a congresos, posters y otros.<br \\/> \\u00a0<img src=\\\"http:\\/\\/www.bib.upct.es\\/imagenes\\/plantilla\\/institucional.png\\\" alt=\\\"\\\" width=\\\"33\\\" height=\\\"33\\\" \\/>\\u00a0<span style=\\\"color: #003399;\\\"> <strong>El Repositorio Institucional<\\/strong><\\/span>, que re\\u00fane los documentos resultantes de la \\u00a0actividad institucional: discursos, memorias, entrevistas, exposiciones, etc.<br \\/> \\u00a0<img src=\\\"http:\\/\\/www.bib.upct.es\\/imagenes\\/plantilla\\/multimedia.png\\\" alt=\\\"\\\" width=\\\"33\\\" height=\\\"33\\\" \\/>\\u00a0 <span style=\\\"color: #003399;\\\"><strong>El Repositorio Multimedia<\\/strong><\\/span>, re\\u00fane los contenidos digitales producidos por la comunidad universitaria resultantes de su actividad docente, investigadora e institucional.<br \\/> \\u00a0<img src=\\\"http:\\/\\/www.bib.upct.es\\/imagenes\\/plantilla\\/revistas.png\\\" alt=\\\"\\\" width=\\\"33\\\" height=\\\"33\\\" \\/><strong>\\u00a0 <span style=\\\"color: #003399;\\\">Revistas<\\/span><\\/strong>, aloja y da acceso a los art\\u00edculos de las revistas cient\\u00edficas editadas por la UPCT.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2018-03-21 22:27:24\",\"created_by\":\"401\",\"created_by_alias\":\"\",\"modified\":\"2018-03-21 22:37:24\",\"modified_by\":\"401\",\"checked_out\":\"401\",\"checked_out_time\":\"2018-03-21 22:37:17\",\"publish_up\":\"2018-03-21 22:27:24\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"spfeatured_image\\\":\\\"\\\",\\\"post_format\\\":\\\"standard\\\",\\\"gallery\\\":\\\"\\\",\\\"audio\\\":\\\"\\\",\\\"video\\\":\\\"\\\",\\\"link_title\\\":\\\"\\\",\\\"link_url\\\":\\\"\\\",\\\"quote_text\\\":\\\"\\\",\\\"quote_author\\\":\\\"\\\",\\\"post_status\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0);

UNLOCK TABLES;

/*Table structure for table `l7f4c_update_sites` */

DROP TABLE IF EXISTS `l7f4c_update_sites`;

CREATE TABLE `l7f4c_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

/*Data for the table `l7f4c_update_sites` */

LOCK TABLES `l7f4c_update_sites` WRITE;

insert  into `l7f4c_update_sites`(`update_site_id`,`name`,`type`,`location`,`enabled`,`last_check_timestamp`,`extra_query`) values 
(1,'Joomla! Core','collection','https://update.joomla.org/core/list.xml',1,1521671216,''),
(2,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_3.xml',1,1521671221,''),
(3,'Joomla! Update Component Update Site','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1521671222,''),
(4,'Helix3 - Ajax','extension','http://www.joomshaper.com/updates/plg-ajax-helix3.xml',1,1521671225,''),
(5,'System - Helix3 Framework','extension','http://www.joomshaper.com/updates/plg-system-helix3.xml',1,1521671226,'');

UNLOCK TABLES;

/*Table structure for table `l7f4c_update_sites_extensions` */

DROP TABLE IF EXISTS `l7f4c_update_sites_extensions`;

CREATE TABLE `l7f4c_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

/*Data for the table `l7f4c_update_sites_extensions` */

LOCK TABLES `l7f4c_update_sites_extensions` WRITE;

insert  into `l7f4c_update_sites_extensions`(`update_site_id`,`extension_id`) values 
(1,700),
(2,802),
(2,10002),
(2,10005),
(3,28),
(4,10007),
(5,10008);

UNLOCK TABLES;

/*Table structure for table `l7f4c_updates` */

DROP TABLE IF EXISTS `l7f4c_updates`;

CREATE TABLE `l7f4c_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

/*Data for the table `l7f4c_updates` */

LOCK TABLES `l7f4c_updates` WRITE;

insert  into `l7f4c_updates`(`update_id`,`update_site_id`,`extension_id`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`,`extra_query`) values 
(1,1,700,'Joomla','','joomla','file','',0,'3.8.6','','https://update.joomla.org/core/sts/extension_sts.xml','',''),
(2,2,0,'Armenian','','pkg_hy-AM','package','',0,'3.4.4.1','','https://update.joomla.org/language/details3/hy-AM_details.xml','',''),
(3,2,0,'Malay','','pkg_ms-MY','package','',0,'3.4.1.2','','https://update.joomla.org/language/details3/ms-MY_details.xml','',''),
(4,2,0,'Romanian','','pkg_ro-RO','package','',0,'3.7.3.1','','https://update.joomla.org/language/details3/ro-RO_details.xml','',''),
(5,2,0,'Flemish','','pkg_nl-BE','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/nl-BE_details.xml','',''),
(6,2,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'3.8.0.1','','https://update.joomla.org/language/details3/zh-TW_details.xml','',''),
(7,2,0,'French','','pkg_fr-FR','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/fr-FR_details.xml','',''),
(8,2,0,'Galician','','pkg_gl-ES','package','',0,'3.3.1.2','','https://update.joomla.org/language/details3/gl-ES_details.xml','',''),
(9,2,0,'Georgian','','pkg_ka-GE','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/ka-GE_details.xml','',''),
(10,2,0,'Greek','','pkg_el-GR','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/el-GR_details.xml','',''),
(11,2,0,'Japanese','','pkg_ja-JP','package','',0,'3.8.6.2','','https://update.joomla.org/language/details3/ja-JP_details.xml','',''),
(12,2,0,'Hebrew','','pkg_he-IL','package','',0,'3.1.1.1','','https://update.joomla.org/language/details3/he-IL_details.xml','',''),
(13,2,0,'Bengali','','pkg_bn-BD','package','',0,'3.8.5.1','','https://update.joomla.org/language/details3/bn-BD_details.xml','',''),
(14,2,0,'Hungarian','','pkg_hu-HU','package','',0,'3.8.4.1','','https://update.joomla.org/language/details3/hu-HU_details.xml','',''),
(15,2,0,'Afrikaans','','pkg_af-ZA','package','',0,'3.8.4.1','','https://update.joomla.org/language/details3/af-ZA_details.xml','',''),
(16,2,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'3.7.5.1','','https://update.joomla.org/language/details3/ar-AA_details.xml','',''),
(17,2,0,'Belarusian','','pkg_be-BY','package','',0,'3.2.1.2','','https://update.joomla.org/language/details3/be-BY_details.xml','',''),
(18,2,0,'Bulgarian','','pkg_bg-BG','package','',0,'3.6.5.2','','https://update.joomla.org/language/details3/bg-BG_details.xml','',''),
(19,2,0,'Catalan','','pkg_ca-ES','package','',0,'3.8.3.3','','https://update.joomla.org/language/details3/ca-ES_details.xml','',''),
(20,2,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/zh-CN_details.xml','',''),
(21,2,0,'Croatian','','pkg_hr-HR','package','',0,'3.8.5.1','','https://update.joomla.org/language/details3/hr-HR_details.xml','',''),
(22,2,0,'Czech','','pkg_cs-CZ','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/cs-CZ_details.xml','',''),
(23,2,0,'Danish','','pkg_da-DK','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/da-DK_details.xml','',''),
(24,2,0,'Dutch','','pkg_nl-NL','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/nl-NL_details.xml','',''),
(25,2,0,'Esperanto','','pkg_eo-XX','package','',0,'3.8.3.1','','https://update.joomla.org/language/details3/eo-XX_details.xml','',''),
(26,2,0,'Estonian','','pkg_et-EE','package','',0,'3.7.0.1','','https://update.joomla.org/language/details3/et-EE_details.xml','',''),
(27,2,0,'Italian','','pkg_it-IT','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/it-IT_details.xml','',''),
(28,2,0,'Khmer','','pkg_km-KH','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/km-KH_details.xml','',''),
(29,2,0,'Korean','','pkg_ko-KR','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/ko-KR_details.xml','',''),
(30,2,0,'Latvian','','pkg_lv-LV','package','',0,'3.7.3.1','','https://update.joomla.org/language/details3/lv-LV_details.xml','',''),
(31,2,0,'Macedonian','','pkg_mk-MK','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/mk-MK_details.xml','',''),
(32,2,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.8.4.1','','https://update.joomla.org/language/details3/nb-NO_details.xml','',''),
(33,2,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'3.4.2.1','','https://update.joomla.org/language/details3/nn-NO_details.xml','',''),
(34,2,0,'Persian','','pkg_fa-IR','package','',0,'3.8.5.1','','https://update.joomla.org/language/details3/fa-IR_details.xml','',''),
(35,2,0,'Polish','','pkg_pl-PL','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/pl-PL_details.xml','',''),
(36,2,0,'Portuguese','','pkg_pt-PT','package','',0,'3.8.2.1','','https://update.joomla.org/language/details3/pt-PT_details.xml','',''),
(37,2,0,'Russian','','pkg_ru-RU','package','',0,'3.8.2.1','','https://update.joomla.org/language/details3/ru-RU_details.xml','',''),
(38,2,0,'English AU','','pkg_en-AU','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/en-AU_details.xml','',''),
(39,2,0,'Slovak','','pkg_sk-SK','package','',0,'3.8.6.2','','https://update.joomla.org/language/details3/sk-SK_details.xml','',''),
(40,2,0,'English US','','pkg_en-US','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/en-US_details.xml','',''),
(41,2,0,'Swedish','','pkg_sv-SE','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/sv-SE_details.xml','',''),
(42,2,0,'Syriac','','pkg_sy-IQ','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/sy-IQ_details.xml','',''),
(43,2,0,'Tamil','','pkg_ta-IN','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/ta-IN_details.xml','',''),
(44,2,0,'Thai','','pkg_th-TH','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/th-TH_details.xml','',''),
(45,2,0,'Turkish','','pkg_tr-TR','package','',0,'3.8.2.1','','https://update.joomla.org/language/details3/tr-TR_details.xml','',''),
(46,2,0,'Ukrainian','','pkg_uk-UA','package','',0,'3.7.1.1','','https://update.joomla.org/language/details3/uk-UA_details.xml','',''),
(47,2,0,'Uyghur','','pkg_ug-CN','package','',0,'3.7.5.1','','https://update.joomla.org/language/details3/ug-CN_details.xml','',''),
(48,2,0,'Albanian','','pkg_sq-AL','package','',0,'3.1.1.2','','https://update.joomla.org/language/details3/sq-AL_details.xml','',''),
(49,2,0,'Basque','','pkg_eu-ES','package','',0,'3.7.5.1','','https://update.joomla.org/language/details3/eu-ES_details.xml','',''),
(50,2,0,'Hindi','','pkg_hi-IN','package','',0,'3.3.6.2','','https://update.joomla.org/language/details3/hi-IN_details.xml','',''),
(51,2,0,'German DE','','pkg_de-DE','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/de-DE_details.xml','',''),
(52,2,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'3.8.5.1','','https://update.joomla.org/language/details3/pt-BR_details.xml','',''),
(53,2,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/sr-YU_details.xml','',''),
(54,2,0,'Bosnian','','pkg_bs-BA','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/bs-BA_details.xml','',''),
(55,2,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/sr-RS_details.xml','',''),
(56,2,0,'Vietnamese','','pkg_vi-VN','package','',0,'3.2.1.2','','https://update.joomla.org/language/details3/vi-VN_details.xml','',''),
(57,2,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/id-ID_details.xml','',''),
(58,2,0,'Finnish','','pkg_fi-FI','package','',0,'3.8.1.1','','https://update.joomla.org/language/details3/fi-FI_details.xml','',''),
(59,2,0,'Swahili','','pkg_sw-KE','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/sw-KE_details.xml','',''),
(60,2,0,'Montenegrin','','pkg_srp-ME','package','',0,'3.3.1.2','','https://update.joomla.org/language/details3/srp-ME_details.xml','',''),
(61,2,0,'English CA','','pkg_en-CA','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/en-CA_details.xml','',''),
(62,2,0,'French CA','','pkg_fr-CA','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/fr-CA_details.xml','',''),
(63,2,0,'Welsh','','pkg_cy-GB','package','',0,'3.8.5.1','','https://update.joomla.org/language/details3/cy-GB_details.xml','',''),
(64,2,0,'Sinhala','','pkg_si-LK','package','',0,'3.3.1.2','','https://update.joomla.org/language/details3/si-LK_details.xml','',''),
(65,2,0,'Dari Persian','','pkg_prs-AF','package','',0,'3.4.4.2','','https://update.joomla.org/language/details3/prs-AF_details.xml','',''),
(66,2,0,'Turkmen','','pkg_tk-TM','package','',0,'3.5.0.2','','https://update.joomla.org/language/details3/tk-TM_details.xml','',''),
(67,2,0,'Irish','','pkg_ga-IE','package','',0,'3.8.5.1','','https://update.joomla.org/language/details3/ga-IE_details.xml','',''),
(68,2,0,'Dzongkha','','pkg_dz-BT','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/dz-BT_details.xml','',''),
(69,2,0,'Slovenian','','pkg_sl-SI','package','',0,'3.8.5.1','','https://update.joomla.org/language/details3/sl-SI_details.xml','',''),
(70,2,0,'German CH','','pkg_de-CH','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/de-CH_details.xml','',''),
(71,2,0,'German AT','','pkg_de-AT','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/de-AT_details.xml','',''),
(72,2,0,'German LI','','pkg_de-LI','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/de-LI_details.xml','',''),
(73,2,0,'German LU','','pkg_de-LU','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/de-LU_details.xml','',''),
(74,2,0,'English NZ','','pkg_en-NZ','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/en-NZ_details.xml','',''),
(75,4,10007,'Helix3 - Ajax','','helix3','plugin','ajax',0,'2.5.1','','http://www.joomshaper.com/updates/plg-ajax-helix3.xml','',''),
(76,5,10008,'System - Helix3 Framework','','helix3','plugin','system',0,'2.5.1','','http://www.joomshaper.com/updates/plg-system-helix3.xml','','');

UNLOCK TABLES;

/*Table structure for table `l7f4c_user_keys` */

DROP TABLE IF EXISTS `l7f4c_user_keys`;

CREATE TABLE `l7f4c_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_user_keys` */

LOCK TABLES `l7f4c_user_keys` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_user_notes` */

DROP TABLE IF EXISTS `l7f4c_user_notes`;

CREATE TABLE `l7f4c_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_user_notes` */

LOCK TABLES `l7f4c_user_notes` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_user_profiles` */

DROP TABLE IF EXISTS `l7f4c_user_profiles`;

CREATE TABLE `l7f4c_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

/*Data for the table `l7f4c_user_profiles` */

LOCK TABLES `l7f4c_user_profiles` WRITE;

UNLOCK TABLES;

/*Table structure for table `l7f4c_user_usergroup_map` */

DROP TABLE IF EXISTS `l7f4c_user_usergroup_map`;

CREATE TABLE `l7f4c_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_user_usergroup_map` */

LOCK TABLES `l7f4c_user_usergroup_map` WRITE;

insert  into `l7f4c_user_usergroup_map`(`user_id`,`group_id`) values 
(401,8);

UNLOCK TABLES;

/*Table structure for table `l7f4c_usergroups` */

DROP TABLE IF EXISTS `l7f4c_usergroups`;

CREATE TABLE `l7f4c_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_usergroups` */

LOCK TABLES `l7f4c_usergroups` WRITE;

insert  into `l7f4c_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values 
(1,0,1,18,'Public'),
(2,1,8,15,'Registered'),
(3,2,9,14,'Author'),
(4,3,10,13,'Editor'),
(5,4,11,12,'Publisher'),
(6,1,4,7,'Manager'),
(7,6,5,6,'Administrator'),
(8,1,16,17,'Super Users'),
(9,1,2,3,'Guest');

UNLOCK TABLES;

/*Table structure for table `l7f4c_users` */

DROP TABLE IF EXISTS `l7f4c_users`;

CREATE TABLE `l7f4c_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_users` */

LOCK TABLES `l7f4c_users` WRITE;

insert  into `l7f4c_users`(`id`,`name`,`username`,`email`,`password`,`block`,`sendEmail`,`registerDate`,`lastvisitDate`,`activation`,`params`,`lastResetTime`,`resetCount`,`otpKey`,`otep`,`requireReset`) values 
(401,'Super User','dbordon','daniel.bordon.py@gmail.com','$2y$10$NOnvlsf9N9E/O8nxTdpg6.PUdBPYAdY/I9P4cadfu63JfNuR4WcjO',0,1,'2018-03-21 02:47:01','2018-03-21 22:26:52','0','','0000-00-00 00:00:00',0,'','',0);

UNLOCK TABLES;

/*Table structure for table `l7f4c_utf8_conversion` */

DROP TABLE IF EXISTS `l7f4c_utf8_conversion`;

CREATE TABLE `l7f4c_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_utf8_conversion` */

LOCK TABLES `l7f4c_utf8_conversion` WRITE;

insert  into `l7f4c_utf8_conversion`(`converted`) values 
(2);

UNLOCK TABLES;

/*Table structure for table `l7f4c_viewlevels` */

DROP TABLE IF EXISTS `l7f4c_viewlevels`;

CREATE TABLE `l7f4c_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `l7f4c_viewlevels` */

LOCK TABLES `l7f4c_viewlevels` WRITE;

insert  into `l7f4c_viewlevels`(`id`,`title`,`ordering`,`rules`) values 
(1,'Public',0,'[1]'),
(2,'Registered',2,'[6,2,8]'),
(3,'Special',3,'[6,3,8]'),
(5,'Guest',1,'[9]'),
(6,'Super Users',4,'[8]');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
