﻿# Host: localhost  (Version: 5.5.53)
# Date: 2018-04-09 17:32:18
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "auth_group"
#

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "auth_group"
#

/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

#
# Structure for table "auth_group_permissions"
#

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "auth_group_permissions"
#

/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

#
# Structure for table "auth_permission"
#

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

#
# Data for table "auth_permission"
#

/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add post',7,'add_post'),(20,'Can change post',7,'change_post'),(21,'Can delete post',7,'delete_post'),(22,'Can add category',8,'add_category'),(23,'Can change category',8,'change_category'),(24,'Can delete category',8,'delete_category'),(25,'Can add tag',9,'add_tag'),(26,'Can change tag',9,'change_tag'),(27,'Can delete tag',9,'delete_tag'),(28,'Can add comment',10,'add_comment'),(29,'Can change comment',10,'change_comment'),(30,'Can delete comment',10,'delete_comment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

#
# Structure for table "auth_user"
#

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "auth_user"
#

/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$kRVgwblkmlJk$1RBJbZzrNa3YA/q4cB66Us+u0/YwBoV5/E//J2Q6xBo=','2018-04-09 03:04:44',1,'admin','','','!@163.com',1,1,'2018-04-09 03:04:17');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

#
# Structure for table "auth_user_groups"
#

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "auth_user_groups"
#

/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

#
# Structure for table "auth_user_user_permissions"
#

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "auth_user_user_permissions"
#

/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

#
# Structure for table "blog_category"
#

DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "blog_category"
#

/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'百度云'),(2,'石墨'),(3,'测试');
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;

#
# Structure for table "blog_post"
#

DROP TABLE IF EXISTS `blog_post`;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `created_time` date NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_b583a629` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "blog_post"
#

/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (1,'百度云','百度云正文','2018-04-09',1),(2,'石墨文档','石墨文章正文','2018-04-09',2),(3,'测试的标题','# 一级标题\r\n## 二级标题\r\n### 三级标题\r\n- 列表项1\r\n- 列表项2\r\n- 列表项3\r\n> 这是一段引用\r\n\r\n```python\r\ndef detail(request, pk):\r\n    post = get_object_or_404(Post, pk=pk)\r\n    post.body = markdown.markdown(post.body,\r\n                                  extensions=[\r\n                                      \'markdown.extensions.extra\',\r\n                                      \'markdown.extensions.codehilite\',\r\n                                      \'markdown.extensions.toc\',\r\n                                  ])\r\n    return render(request, \'blog/detail.html\', context={\'post\': post})\r\n```','2018-04-09',3),(4,'锤子手机','锤子手机是由罗永浩创办的锤子科技研发的一款中高端智能手机。“锤子手机”是指由锤子科技（北京）有限公司设计与研发的一系列高端智能手机。锤子手机采用基于 Android定制的 Smartisan OS 智能手机操作系统。 [1] \r\n>2016年10月18日晚 19:30，锤子科技召开了2016 年秋季新品发布会，正式推出了锤子品牌的第三代手机：Smartisan M1 和 Smartisan M1L。\r\n```python\r\ndef detail(request, pk):\r\n    post = get_object_or_404(Post, pk=pk)\r\n    post.body = markdown.markdown(post.body,\r\n                                  extensions=[\r\n                                      \'markdown.extensions.extra\',\r\n                                      \'markdown.extensions.codehilite\',\r\n                                      \'markdown.extensions.toc\',\r\n                                  ])\r\n    return render(request, \'blog/detail.html\', context={\'post\': post})\r\n```','2018-04-09',3);
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;

#
# Structure for table "blog_post_tags"
#

DROP TABLE IF EXISTS `blog_post_tags`;
CREATE TABLE `blog_post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_post_tags_post_id_4925ec37_uniq` (`post_id`,`tag_id`),
  KEY `blog_post_tags_f3aa1999` (`post_id`),
  KEY `blog_post_tags_76f094bc` (`tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "blog_post_tags"
#

/*!40000 ALTER TABLE `blog_post_tags` DISABLE KEYS */;
INSERT INTO `blog_post_tags` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4);
/*!40000 ALTER TABLE `blog_post_tags` ENABLE KEYS */;

#
# Structure for table "blog_tag"
#

DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "blog_tag"
#

/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` VALUES (1,'百度'),(2,'石墨'),(3,'测试标签'),(4,'锤子');
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;

#
# Structure for table "comments_comment"
#

DROP TABLE IF EXISTS `comments_comment`;
CREATE TABLE `comments_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `created_time` datetime NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_comment_f3aa1999` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "comments_comment"
#

/*!40000 ALTER TABLE `comments_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_comment` ENABLE KEYS */;

#
# Structure for table "django_admin_log"
#

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

#
# Data for table "django_admin_log"
#

/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-04-09 03:05:09','1','百度云',1,'[{\"added\": {}}]',8,1),(2,'2018-04-09 03:05:19','1','百度',1,'[{\"added\": {}}]',9,1),(3,'2018-04-09 03:05:21','1','百度云',1,'[{\"added\": {}}]',7,1),(4,'2018-04-09 03:13:11','2','石墨',1,'[{\"added\": {}}]',8,1),(5,'2018-04-09 03:13:16','2','石墨',1,'[{\"added\": {}}]',9,1),(6,'2018-04-09 03:13:19','2','石墨文档',1,'[{\"added\": {}}]',7,1),(7,'2018-04-09 07:32:59','3','测试',1,'[{\"added\": {}}]',8,1),(8,'2018-04-09 07:33:06','3','测试标签',1,'[{\"added\": {}}]',9,1),(9,'2018-04-09 07:33:07','3','测试的标题',1,'[{\"added\": {}}]',7,1),(10,'2018-04-09 07:36:16','3','测试的标题',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(11,'2018-04-09 07:41:59','3','测试的标题',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(12,'2018-04-09 07:42:53','3','测试的标题',2,'[]',7,1),(13,'2018-04-09 07:48:52','4','锤子',1,'[{\"added\": {}}]',9,1),(14,'2018-04-09 07:49:19','4','锤子手机',1,'[{\"added\": {}}]',7,1),(15,'2018-04-09 07:50:22','4','锤子手机',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(16,'2018-04-09 07:51:10','4','锤子手机',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(17,'2018-04-09 07:53:23','4','锤子手机',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(18,'2018-04-09 07:54:28','4','锤子手机',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(19,'2018-04-09 08:01:54','4','锤子手机',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(20,'2018-04-09 08:52:36','3','测试的标题',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

#
# Structure for table "django_content_type"
#

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Data for table "django_content_type"
#

/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'blog','post'),(8,'blog','category'),(9,'blog','tag'),(10,'comments','comment');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

#
# Structure for table "django_migrations"
#

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

#
# Data for table "django_migrations"
#

/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-04-09 03:02:15'),(2,'auth','0001_initial','2018-04-09 03:02:16'),(3,'admin','0001_initial','2018-04-09 03:02:16'),(4,'admin','0002_logentry_remove_auto_add','2018-04-09 03:02:16'),(5,'contenttypes','0002_remove_content_type_name','2018-04-09 03:02:16'),(6,'auth','0002_alter_permission_name_max_length','2018-04-09 03:02:16'),(7,'auth','0003_alter_user_email_max_length','2018-04-09 03:02:16'),(8,'auth','0004_alter_user_username_opts','2018-04-09 03:02:16'),(9,'auth','0005_alter_user_last_login_null','2018-04-09 03:02:16'),(10,'auth','0006_require_contenttypes_0002','2018-04-09 03:02:16'),(11,'auth','0007_alter_validators_add_error_messages','2018-04-09 03:02:16'),(12,'auth','0008_alter_user_username_max_length','2018-04-09 03:02:16'),(13,'blog','0001_initial','2018-04-09 03:02:16'),(14,'sessions','0001_initial','2018-04-09 03:02:16'),(15,'comments','0001_initial','2018-04-09 09:04:30');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

#
# Structure for table "django_session"
#

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "django_session"
#

/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0yd6iqbm2k6nv6wtttlovaqg8i16jcaz','ODA5ZDg5ZjVlMmI3ZDgzMmVhY2NiNWUzNDc4ZGE3NmY3MzQ2YWRmMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTM2M2I0NGFmNGNkNzJhMGI0NjMxNzk5YTdiM2E5MmQ5NjU2ZTdjIn0=','2018-04-23 03:04:44');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
