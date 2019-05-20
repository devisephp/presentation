# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.24)
# Database: devise-presentation
# Generation Time: 2019-05-20 22:05:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table dvs_changes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_changes`;

CREATE TABLE `dvs_changes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `release_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `change` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table dvs_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_fields`;

CREATE TABLE `dvs_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slice_instance_id` int(10) unsigned DEFAULT NULL,
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_requested` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slice_key_unique_index` (`slice_instance_id`,`key`),
  KEY `dvs_fields_slice_instance_id_index` (`slice_instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dvs_fields` WRITE;
/*!40000 ALTER TABLE `dvs_fields` DISABLE KEYS */;

INSERT INTO `dvs_fields` (`id`, `slice_instance_id`, `key`, `json_value`, `content_requested`, `created_at`, `updated_at`)
VALUES
	(1,2,'title','{\"text\":\"Gary Williams\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-16 15:14:15','2019-05-17 01:56:19'),
	(2,2,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"value\":\"small\",\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-16 15:14:15','2019-05-16 20:09:59'),
	(3,3,'title','{\"text\":\"What is Devise?\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-16 15:14:15','2019-05-20 21:47:02'),
	(4,3,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"value\":\"small\",\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-16 15:14:15','2019-05-16 20:16:41'),
	(5,2,'content','{\"text\":\"<p>LogicBomb Media: 12 Years<\\/p><p>Twitter: @dolbex<\\/p><p><\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-16 15:16:19','2019-05-16 17:04:34'),
	(6,3,'content','{\"text\":\"<p class=\\\"fragment fade-in\\\">In-context content management<\\/p><p class=\\\"fragment fade-in\\\">Faster workflow&nbsp;<\\/p><p class=\\\"fragment fade-in\\\">Easier changes<\\/p><p class=\\\"fragment fade-in\\\">Simple content management<\\/p><p class=\\\"fragment fade-in\\\">Easy integration with JS components<\\/p><p class=\\\"fragment fade-in\\\">Content manageable components<\\/p><p class=\\\"fragment fade-in\\\">Less workshop setup<\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-16 15:16:19','2019-05-20 21:50:05'),
	(7,2,'notes','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-16 17:21:45','2019-05-16 19:15:49'),
	(8,3,'notes','{\"text\":\"Explain bullets\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-16 17:21:45','2019-05-20 21:55:47'),
	(9,1,'topColor','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"rgba(250,95,164,1)\",\"checked\":null,\"enabled\":true,\"type\":\"color\",\"label\":\"Top Color\",\"default\":{\"color\":\"#5659DA\"}}',0,'2019-05-16 18:37:28','2019-05-20 21:34:16'),
	(10,1,'bottomColor','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"rgba(86,89,218,1)\",\"checked\":null,\"enabled\":false,\"type\":\"color\",\"label\":\"Bottom Color\",\"default\":{\"color\":\"#5FCCFA\"}}',0,'2019-05-16 18:37:29','2019-05-16 20:24:18'),
	(11,4,'title','{\"text\":\"Built on the shoulders of giants\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-16 18:37:29','2019-05-17 01:56:19'),
	(12,4,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"value\":\"small\",\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-16 18:37:29','2019-05-16 20:16:41'),
	(13,4,'content','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-16 18:37:29','2019-05-16 18:42:39'),
	(14,4,'notes','{\"text\":\"<p>Two of the most popular open source projects<\\/p><p>Working with Laravel since 2.0<\\/p><br><p>Been working with Vue since beta 1.0<\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-16 18:37:29','2019-05-20 21:56:28'),
	(15,5,'image','{\"text\":null,\"url\":\"\\/storage\\/media\\/laravel-logo.jpg\",\"media\":{\"original\":\"\\/storage\\/media\\/laravel-logo.jpg\",\"orig_optimized\":\"\\/storage\\/styled\\/laravel-logo.jpg?q=80&fit=crop&sharp=5&w=258&h=187\",\"default\":\"\\/storage\\/styled\\/laravel-logo.jpg?q=80&fit=crop&sharp=5&w=300&h=300\"},\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"mode\":\"media\",\"alt\":null,\"settings\":{\"q\":80,\"fit\":\"crop\",\"sharp\":5,\"w\":258,\"h\":187},\"sizes\":{\"default\":{\"w\":300,\"h\":300}},\"type\":\"image\",\"label\":\"Image\"}',0,'2019-05-16 18:46:42','2019-05-16 18:56:28'),
	(16,6,'image','{\"text\":null,\"url\":\"\\/storage\\/styled\\/vue-logo.jpg?q=80&fit=crop&sharp=5&w=258&h=187&s=250e71f425c340cfe5abf37337e0b2d0\",\"media\":{\"original\":\"\\/storage\\/media\\/vue-logo.jpg\",\"orig_optimized\":\"\\/storage\\/styled\\/vue-logo.jpg?q=80&fit=crop&sharp=5&w=258&h=187&s=250e71f425c340cfe5abf37337e0b2d0\"},\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"mode\":\"media\",\"alt\":null,\"settings\":{\"q\":80,\"fit\":\"crop\",\"sharp\":5,\"w\":258,\"h\":187},\"sizes\":{\"default\":{\"w\":300,\"h\":300}},\"type\":\"image\",\"label\":\"Image\"}',0,'2019-05-16 18:55:52','2019-05-16 19:08:37'),
	(17,7,'title','{\"text\":\"Who is it for?\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-16 19:15:49','2019-05-17 01:56:19'),
	(18,7,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"value\":\"small\",\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-16 19:15:49','2019-05-16 20:16:41'),
	(19,7,'content','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-16 19:15:49','2019-05-16 19:38:05'),
	(20,7,'notes','{\"text\":\"<p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">Had to be a better way to allow the three primary groups that work on a site work better together.<\\/span><\\/p><ul><li><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">Designers: want to maintain branding on a site and deploy new ideas quickly<\\/span><\\/li><li>Programmers: Stuck in the middle with constantly changing requirements<\\/li><li>Content Managers: Want to edit and control everything. In the end, the message. Their work is the end result of all the other two groups.&nbsp;<\\/li><\\/ul>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-16 19:15:49','2019-05-20 21:57:10'),
	(23,10,'title','{\"text\":\"What kind of things can Devise do?\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-16 19:37:28','2019-05-20 21:33:27'),
	(24,10,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"value\":\"large\",\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-16 19:37:28','2019-05-16 20:09:59'),
	(25,10,'content','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-16 19:37:28','2019-05-16 20:09:59'),
	(26,10,'notes','{\"text\":\"<p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span id=\\\"docs-internal-guid-fd0b4b69-7fff-0c76-ecba-ffd0a0a4e009\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">Let\\u2019s work backwards through those groups from the end result to how we design for it.&nbsp;<\\/span><\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">So, what can it do? Well, it can do lots of things.&nbsp;<\\/span><\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">It can do this<\\/span><\\/span><br><\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-16 19:37:28','2019-05-16 20:06:45'),
	(30,12,'circle1','{\"text\":\"1. Designers\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"type\":\"text\",\"label\":\"Circle 1 Text\"}',0,'2019-05-16 19:38:17','2019-05-16 19:46:05'),
	(31,12,'circle1color1','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"#52AFE5\",\"checked\":null,\"enabled\":false,\"type\":\"color\",\"label\":\"Circle 1 Color 1\",\"default\":{\"color\":\"#52AFE5\"}}',0,'2019-05-16 19:38:17','2019-05-16 19:46:05'),
	(32,12,'circle1color2','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"#5659DA\",\"checked\":null,\"enabled\":false,\"type\":\"color\",\"label\":\"Circle 1 Color 2\",\"default\":{\"color\":\"#5659DA\"}}',0,'2019-05-16 19:38:17','2019-05-16 19:46:05'),
	(33,12,'circle2','{\"text\":\"2. Developers\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"text\",\"label\":\"Circle 2 Text\"}',0,'2019-05-16 19:58:54','2019-05-16 20:01:21'),
	(34,12,'circle2color1','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"#FF9A9E\",\"checked\":null,\"enabled\":false,\"type\":\"color\",\"label\":\"Circle 2 Color 1\",\"default\":{\"color\":\"#FF9A9E\"}}',0,'2019-05-16 19:58:54','2019-05-16 20:02:14'),
	(35,12,'circle2color2','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"#5659DA\",\"checked\":null,\"enabled\":false,\"type\":\"color\",\"label\":\"Circle 2 Color 2\",\"default\":{\"color\":\"#5659DA\"}}',0,'2019-05-16 19:58:54','2019-05-16 20:02:14'),
	(36,12,'circle3','{\"text\":\"3. content managers\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"text\",\"label\":\"Circle 3 Text\"}',0,'2019-05-16 19:58:54','2019-05-16 20:01:21'),
	(37,12,'circle3color1','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"#FEADA6\",\"checked\":null,\"enabled\":false,\"type\":\"color\",\"label\":\"Circle 3 Color 1\",\"default\":{\"color\":\"#FEADA6\"}}',0,'2019-05-16 19:58:54','2019-05-16 20:06:45'),
	(38,12,'circle3color2','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"#F5EFEF\",\"checked\":null,\"enabled\":false,\"type\":\"color\",\"label\":\"Circle 3 Color 2\",\"default\":{\"color\":\"#F5EFEF\"}}',0,'2019-05-16 19:58:54','2019-05-16 20:06:45'),
	(39,13,'title','{\"text\":\"What we dislike in other frameworks\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-16 20:11:43','2019-05-20 21:21:43'),
	(40,13,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"value\":\"small\",\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-16 20:11:43','2019-05-16 20:11:43'),
	(41,13,'content','{\"text\":\"<br><p class=\\\"fragment fade-in\\\">Template constraints<\\/p><p class=\\\"fragment fade-in\\\">Backend control woe\\u2019s<\\/p><p class=\\\"fragment fade-in\\\">Choosing editor libraries<\\/p><p class=\\\"fragment fade-in\\\">Content management isn\'t in context<\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-16 20:11:43','2019-05-20 21:22:15'),
	(42,13,'notes','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-16 20:11:43','2019-05-20 21:22:37'),
	(43,14,'title','{\"text\":\"Anatomy of a slice\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-16 20:33:52','2019-05-20 21:24:52'),
	(44,14,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"value\":\"small\",\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-16 20:33:52','2019-05-16 20:33:52'),
	(45,14,'content','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-16 20:33:52','2019-05-16 20:34:31'),
	(46,14,'notes','{\"text\":\"<p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span id=\\\"docs-internal-guid-fd0b4b69-7fff-0c76-ecba-ffd0a0a4e009\\\"><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">Let\\u2019s work backwards through those groups from the end result to how we design for it.&nbsp;<\\/span><\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">So, what can it do? Well, it can do lots of things.&nbsp;<\\/span><\\/span><\\/p><p dir=\\\"ltr\\\" style=\\\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\\\"><span><span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\\\">It can do this<\\/span><\\/span><br><\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-16 20:33:52','2019-05-16 20:33:52'),
	(47,15,'code','{\"text\":\"@section(\'template\')\\n<div>\\n <h1>@{{ devise.title.text }}<\\/h1>\\n<\\/div>\\n@endsection\\n\\n@section(\'component\')\\n<script>\\n var component = {\\n   preview: [\'{Bbg}\'],\\n   description: \'Empty container with child slices\',\\n   fields: {\\n     title: {\\n       type: \\\"text\\\",\\n       label: \\\"Title\\\",\\n     }\\n   }\\n }\\n<\\/script>\\n@endsection\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"type\":\"textarea\",\"label\":\"Code Block\"}',0,'2019-05-16 20:38:36','2019-05-20 21:32:09'),
	(53,2,'backgroundVideo','{\"text\":null,\"enabled\":false,\"id\":53}',0,'2019-05-17 01:25:39','2019-05-17 01:35:20'),
	(54,3,'backgroundVideo','{\"text\":null,\"enabled\":false,\"id\":54}',0,'2019-05-17 01:25:39','2019-05-17 01:35:20'),
	(55,4,'backgroundVideo','{\"text\":null,\"enabled\":false,\"id\":55}',0,'2019-05-17 01:25:39','2019-05-17 01:35:20'),
	(56,7,'backgroundVideo','{\"text\":null,\"enabled\":false,\"id\":56}',0,'2019-05-17 01:25:39','2019-05-17 01:35:20'),
	(57,10,'backgroundVideo','{\"text\":null,\"enabled\":false,\"id\":57}',0,'2019-05-17 01:25:39','2019-05-17 01:35:20'),
	(58,13,'backgroundVideo','{\"text\":null,\"enabled\":false,\"id\":58}',0,'2019-05-17 01:25:39','2019-05-17 01:35:20'),
	(59,14,'backgroundVideo','{\"text\":null,\"enabled\":false,\"id\":59}',0,'2019-05-17 01:25:39','2019-05-17 01:35:20'),
	(62,19,'title','{\"text\":\"How slices improve developer life\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-17 01:52:55','2019-05-17 01:56:19'),
	(63,19,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"value\":\"small\",\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-17 01:52:55','2019-05-17 01:52:55'),
	(64,19,'content','{\"text\":\"<p class=\\\"fragment fade-in\\\">Reusable<\\/p><p class=\\\"fragment fade-in\\\" =\\\"\\\"=\\\"\\\">Maintainable<\\/p><p class=\\\"fragment fade-in\\\" =\\\"\\\"=\\\"\\\">Very easy to write<br><\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-17 01:52:55','2019-05-20 21:24:16'),
	(65,19,'notes','{\"text\":\"Slices are the building blocks of your site. Just like in VueJS they are components that are reusable entities that can build out a page. Slices don\\u2019t just have to be horizontal slices either but can reside anywhere. They can also be nested inside one another. *read and discuss bullets*\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-17 01:52:55','2019-05-17 01:53:46'),
	(66,19,'backgroundVideo','{\"text\":\"\\/videos\\/editing-a-field.mov\",\"enabled\":false,\"id\":66}',0,'2019-05-17 01:52:55','2019-05-17 01:53:29'),
	(68,22,'title','{\"text\":\"Any of these are Slices\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-17 02:07:36','2019-05-17 02:18:56'),
	(69,22,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"small\",\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-17 02:07:36','2019-05-17 02:16:34'),
	(70,22,'content','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-17 02:07:36','2019-05-17 02:07:36'),
	(71,22,'notes','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-17 02:07:36','2019-05-17 02:07:36'),
	(72,24,'title','{\"text\":\"Field types available\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-17 02:20:20','2019-05-17 02:20:20'),
	(73,24,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"value\":\"small\",\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-17 02:20:20','2019-05-17 02:20:20'),
	(74,24,'content','{\"text\":\"<ul style=\\\"columns:2;column-gap:50px;\\\"><li>Checkbox&nbsp;<\\/li><li>Color&nbsp;<\\/li><li>Link&nbsp;<\\/li><li>Numbers&nbsp;<\\/li><li>File&nbsp;<\\/li><li>Select&nbsp;<\\/li><li>Images&nbsp;<\\/li><li>Text&nbsp;<\\/li><li>Field&nbsp;<\\/li><li>Textarea&nbsp;<\\/li><li>Wysiwyg&nbsp;<\\/li><li>Date \\/ Time\\n<\\/li><\\/ul>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-17 02:20:20','2019-05-17 02:24:04'),
	(75,24,'notes','{\"text\":\"Devise comes packed with a bunch of fields that allow content managers to easily manipulate the content as you see fit.\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-17 02:20:20','2019-05-17 02:20:20'),
	(76,24,'backgroundVideo','{\"text\":\"\\/videos\\/editing-a-field.mov\",\"enabled\":false,\"id\":76}',0,'2019-05-17 02:20:20','2019-05-17 02:22:18'),
	(78,26,'title','{\"text\":\"How this has effected our team and clients\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-17 02:26:20','2019-05-20 21:40:33'),
	(79,26,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"value\":\"small\",\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-17 02:26:20','2019-05-17 02:26:20'),
	(80,26,'content','{\"text\":\"<ul><li class=\\\"fragment fade-in\\\">Enables content managers<\\/li><li class=\\\"fragment fade-in\\\">Opens the door for Designers<\\/li><li class=\\\"fragment fade-in\\\">Makes programmer\'s lives more tolerable<\\/li><\\/ul>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-17 02:26:20','2019-05-20 22:05:01'),
	(81,26,'notes','{\"text\":\"<p><li style=\\\"box-sizing: inherit;\\\">Enables content managers - new layouts we never imagined. More engaged and actually edit content<\\/li><li style=\\\"box-sizing: inherit;\\\">Opens the door for Designers - Smaller parts of pages are easier to improve and create new ones<\\/li><li style=\\\"box-sizing: inherit;\\\">Programmers have less irritating changes<\\/li><\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-17 02:26:20','2019-05-20 21:40:33'),
	(82,26,'backgroundVideo','{\"text\":\"\\/videos\\/editing-a-field.mov\",\"enabled\":false,\"id\":82}',0,'2019-05-17 02:26:20','2019-05-17 02:27:14'),
	(83,27,'title','{\"text\":\"A few additional features you might find interesting\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-17 02:26:20','2019-05-17 02:26:20'),
	(84,27,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"value\":\"small\",\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-17 02:26:20','2019-05-17 02:26:20'),
	(85,27,'content','{\"text\":\"<ul class=\\\"text-2xl\\\"><li class=\\\"fragment fade-in\\\">Multi tenant<\\/li><li class=\\\"fragment fade-in\\\">Automatic Image sizing \\/ optimization<\\/li><li class=\\\"fragment fade-in\\\">Media editor<\\/li><li class=\\\"fragment fade-in\\\">Integrated A\\/B Testing<\\/li><li class=\\\"fragment fade-in\\\"><span style=\\\"font-family: Lato, system-ui, BlinkMacSystemFont, -apple-system, Roboto, &quot;Segoe UI&quot;, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\\\">Custom model integration<\\/span><\\/li><li class=\\\"fragment fade-in\\\">Admin components for lightning fast administration<\\/li><li class=\\\"fragment fade-in\\\">User Management<\\/li><li class=\\\"fragment fade-in\\\">Performs incredible on Lighthouse \\/ Pagespeed insights<\\/li><\\/ul><br>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-17 02:26:20','2019-05-20 21:41:39'),
	(86,27,'notes','{\"text\":\"Devise comes packed with a bunch of fields that allow content managers to easily manipulate the content as you see fit.\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-17 02:26:20','2019-05-17 02:26:20'),
	(87,27,'backgroundVideo','{\"text\":\"\\/videos\\/editing-a-field.mov\",\"enabled\":false,\"id\":87}',0,'2019-05-17 02:26:20','2019-05-17 02:27:15'),
	(88,28,'title','{\"text\":\"Getting Started\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-17 02:30:54','2019-05-17 02:30:54'),
	(89,28,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"value\":\"small\",\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-17 02:30:54','2019-05-17 02:30:54'),
	(90,28,'content','{\"text\":\"<p class=\\\"text-2xl\\\"><strong>Beta release coming out in June<\\/strong><\\/p><p class=\\\"text-2xl\\\">Big Remaining items<\\/p><ul class=\\\"text-2xl\\\"><li>Tests<\\/li><li>Documentation<\\/li><\\/ul><br><p class=\\\"text-2xl\\\">Secretly access on the Github on the v2 branch<\\/p><p class=\\\"text-2xl\\\"><a href=\\\"https:\\/\\/github.com\\/devisephp\\/cms\\/tree\\/v2-dev\\\">https:\\/\\/github.com\\/devisephp\\/cms\\/tree\\/v2-dev<\\/a><\\/p><p class=\\\"text-2xl\\\">V2 Documentation&nbsp;<\\/p><p class=\\\"text-2xl\\\"><a href=\\\"https:\\/\\/devise.gitbook.io\\/cms\\/v\\/v2-dev\\/\\\">https:\\/\\/devise.gitbook.io\\/cms\\/v\\/v2-dev\\/<\\/a><br><\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-17 02:30:54','2019-05-17 02:33:57'),
	(91,28,'notes','{\"text\":\"Devise comes packed with a bunch of fields that allow content managers to easily manipulate the content as you see fit.\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-17 02:30:54','2019-05-17 02:30:54'),
	(92,28,'backgroundVideo','{\"text\":\"\\/videos\\/editing-a-field.mov\",\"enabled\":false,\"id\":92}',0,'2019-05-17 02:30:54','2019-05-17 02:31:14'),
	(113,33,'title','{\"text\":\"Thank You\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-17 02:33:57','2019-05-17 02:33:57'),
	(114,33,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"value\":\"small\",\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-17 02:33:57','2019-05-17 02:33:57'),
	(115,33,'content','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-17 02:33:57','2019-05-17 02:33:57'),
	(116,33,'notes','{\"text\":\"<p><span id=\\\"docs-internal-guid-14644790-7fff-99fb-0e62-6890dfd08e7b\\\"><span style=\\\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-style: italic; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\\\">Thank you for your time. If you have any questions or want to discuss how Devise works in a little more detail I\\u2019ll be around for a while afterwards.<\\/span><\\/span><\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-17 02:33:57','2019-05-17 02:33:57'),
	(117,33,'backgroundVideo','{\"text\":\"\\/videos\\/editing-a-field.mov\",\"enabled\":false,\"id\":117}',0,'2019-05-17 02:33:57','2019-05-17 16:35:22'),
	(118,34,'title','{\"text\":\"It can edit this persentation\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-17 16:35:21','2019-05-17 16:36:07'),
	(119,34,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"small\",\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-17 16:35:21','2019-05-17 16:36:07'),
	(120,34,'content','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-17 16:35:21','2019-05-17 16:35:21'),
	(121,34,'notes','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-17 16:35:21','2019-05-17 16:35:21'),
	(122,35,'title','{\"text\":\"It can edit *Anything* JavaScript\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-17 16:36:07','2019-05-17 16:36:07'),
	(123,35,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"small\",\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-17 16:36:07','2019-05-17 16:36:07'),
	(124,35,'content','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-17 16:36:07','2019-05-17 16:36:07'),
	(125,35,'notes','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-17 16:36:07','2019-05-17 16:36:07'),
	(126,36,'showGrid','{\"color\":\"#ffffff\",\"enabled\":null,\"id\":126}',0,'2019-05-17 16:39:34','2019-05-17 18:05:55'),
	(127,36,'enableControls','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":false,\"enabled\":false,\"instructions\":\"Allows you to move around the model with your mouse\",\"type\":\"checkbox\",\"label\":\"Enable Controls\",\"default\":{\"checked\":true}}',0,'2019-05-17 18:04:51','2019-05-17 19:11:51'),
	(128,36,'speed','{\"text\":\"0.01\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"type\":\"number\",\"label\":\"Speed\",\"default\":{\"text\":\"0.005\"}}',0,'2019-05-17 18:04:51','2019-05-20 13:06:27'),
	(165,41,'image','{\"text\":null,\"url\":\"\\/storage\\/styled\\/53340125-2147713138597745-3758063123773259776-n.jpg?q=80&fit=crop&sharp=5&w=960&h=539&s=e2d09469b3d7306e010c4cc5f7355bf7\",\"media\":{\"original\":\"\\/storage\\/media\\/53340125-2147713138597745-3758063123773259776-n.jpg\",\"orig_optimized\":\"\\/storage\\/styled\\/53340125-2147713138597745-3758063123773259776-n.jpg?q=80&fit=crop&sharp=5&w=960&h=539&s=e2d09469b3d7306e010c4cc5f7355bf7\"},\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"mode\":\"media\",\"alt\":null,\"settings\":{\"q\":80,\"fit\":\"crop\",\"sharp\":5,\"w\":960,\"h\":539},\"label\":\"Background Image\",\"type\":\"image\",\"default\":{\"url\":\"\\/imgs\\/static-hero.jpg\"}}',0,'2019-05-17 18:15:57','2019-05-17 19:06:53'),
	(166,41,'title','{\"text\":\"RIP Grumpy cat\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-17 18:15:57','2019-05-17 19:07:10'),
	(167,41,'subtitle','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"enabler\":true,\"type\":\"text\",\"label\":\"Subtitle\",\"default\":{\"enabled\":true}}',0,'2019-05-17 18:15:57','2019-05-17 18:27:13'),
	(168,41,'link','{\"text\":null,\"url\":null,\"media\":[],\"target\":\"_self\",\"color\":null,\"checked\":null,\"enabled\":null,\"enabler\":true,\"href\":null,\"type\":\"link\",\"label\":\"Link\"}',0,'2019-05-17 18:15:57','2019-05-17 18:27:13'),
	(169,41,'backgroundOpacity','{\"text\":0.4,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"instructions\":\"The number needs to be between 0 and 1\",\"type\":\"number\",\"label\":\"Background Opacity\",\"default\":{\"text\":0.4}}',0,'2019-05-17 18:15:57','2019-05-17 18:27:13'),
	(170,41,'topGradientShow','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"type\":\"checkbox\",\"label\":\"Show Top Gradient\",\"default\":{\"value\":false},\"value\":false}',0,'2019-05-17 18:15:57','2019-05-17 19:06:53'),
	(171,41,'topColorTop','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"rgba(0,0,0,1)\",\"checked\":null,\"enabled\":null,\"label\":\"Top Gradient - Top Color\",\"type\":\"color\",\"default\":{\"color\":\"rgba(0,0,0,1)\"}}',0,'2019-05-17 18:15:57','2019-05-17 18:15:57'),
	(172,41,'topColorBottom','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"rgba(0,0,0,0)\",\"checked\":null,\"enabled\":null,\"label\":\"Top Gradient - Bottom Color\",\"type\":\"color\",\"default\":{\"color\":\"rgba(0,0,0,0)\"}}',0,'2019-05-17 18:15:57','2019-05-17 18:15:57'),
	(173,41,'topGradientHeight','{\"text\":100,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"label\":\"Top Gradient - Height\",\"type\":\"number\",\"default\":{\"text\":100}}',0,'2019-05-17 18:15:57','2019-05-17 19:06:53'),
	(174,41,'bottomGradientShow','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"type\":\"checkbox\",\"label\":\"Show Bottom Gradient\",\"default\":{\"value\":false},\"value\":false}',0,'2019-05-17 18:15:57','2019-05-17 19:06:53'),
	(175,41,'bottomColorTop','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"rgba(0,0,0,0)\",\"checked\":null,\"enabled\":null,\"label\":\"Bottom Gradient - Top Color\",\"type\":\"color\",\"default\":{\"color\":\"rgba(0,0,0,0)\"}}',0,'2019-05-17 18:15:57','2019-05-17 18:15:57'),
	(176,41,'bottomColorBottom','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"rgba(0,0,0,1)\",\"checked\":null,\"enabled\":null,\"label\":\"Bottom Gradient - Bottom Color\",\"type\":\"color\",\"default\":{\"color\":\"rgba(0,0,0,1)\"}}',0,'2019-05-17 18:15:57','2019-05-17 19:06:53'),
	(177,41,'bottomGradientHeight','{\"text\":100,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"label\":\"Bottom Gradient - Height\",\"type\":\"number\",\"default\":{\"text\":100}}',0,'2019-05-17 18:15:57','2019-05-17 19:06:53'),
	(178,42,'alignment','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"center\",\"options\":{\"left\":\"Left\",\"center\":\"Center\",\"right\":\"Right\"},\"type\":\"select\",\"label\":\"Alignment\",\"default\":{\"value\":\"left\"}}',0,'2019-05-17 18:15:57','2019-05-17 18:27:13'),
	(179,42,'desktopSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"md:w-2\\/3\",\"options\":{\"md:w-1\\/2\":\"1\\/2\",\"md:w-2\\/3\":\"2\\/3\",\"md:w-4\\/5\":\"4\\/5\",\"md:w-full\":\"Full\"},\"type\":\"select\",\"label\":\"Desktop Size\",\"default\":{\"value\":\"md:w-2\\/3\"}}',0,'2019-05-17 18:15:57','2019-05-17 18:27:13'),
	(180,42,'title','{\"text\":\"Grumpy Cat will be missed\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"editorLabel\":true,\"enabler\":true,\"type\":\"text\",\"label\":\"Title\",\"default\":{\"enabled\":true}}',0,'2019-05-17 18:15:57','2019-05-17 19:08:03'),
	(181,42,'titleSize','{\"enabled\":null,\"value\":\"h1\",\"allowNull\":true,\"options\":{\"h1\":\"H1\",\"h2\":\"H2\",\"h3\":\"H3\",\"h4\":\"H4\"},\"id\":181}',0,'2019-05-17 18:15:57','2019-05-20 22:03:24'),
	(182,42,'copy','{\"text\":\"<p>Chase mice. Have secret plans scratch leg; meow for can opener to feed me and eat prawns daintily with a claw then lick paws clean wash down prawns with a lap of carnation milk then retire to the warmest spot on the couch to claw at the fabric before taking a catnap or loves cheeseburgers no, you can\'t close the door, i haven\'t decided whether or not i wanna go out yet scratch the furniture so have my breakfast spaghetti yarn. Meow to be let in steal the warm chair right after you get up or scream for no reason at 4 am cry louder at reflection but make muffins i like frogs and 0 gravity. Missing until dinner time it\'s 3am, time to create some chaos sitting in a box and shred all toilet paper and spread around the house hiding behind the couch until lured out by a feathery toy so massacre a bird in the living room and then look like the cutest and most innocent animal on the planet.<br><\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":true,\"enabler\":true,\"type\":\"wysiwyg\",\"label\":\"Copy\",\"default\":{\"enabled\":true}}',0,'2019-05-17 18:15:57','2019-05-17 18:27:13'),
	(183,43,'leftOrRight','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"md:flex-row-reverse\",\"options\":{\"md:flex-row-reverse\":\"Right\",\"md:flex-row\":\"Left\"},\"label\":\"Copy on Left or Right?\",\"type\":\"select\",\"default\":{\"value\":\"md:flex-row-reverse\"}}',0,'2019-05-17 18:30:26','2019-05-17 18:34:46'),
	(184,43,'title','{\"text\":\"Cat Slice!\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"label\":\"Title\",\"type\":\"text\"}',0,'2019-05-17 18:30:26','2019-05-17 18:34:47'),
	(185,43,'copy','{\"text\":\"<p>Give attitude fall asleep on the washing machine paw your face to wake you up in the morning for lick the curtain just to be annoying fall over dead (not really but gets sypathy). Always ensure to lay down in such a manner that tail can lightly brush human\'s nose meow or disappear for four days and return home with an expensive injury; bite the vet or hiding behind the couch until lured out by a feathery toy meowing chowing and wowing claws in the eye of the beholder.<\\/p><br><p>Give attitude fall asleep on the washing machine paw your face to wake you up in the morning for lick the curtain just to be annoying fall over dead (not really but gets sypathy). Always ensure to lay down in such a manner that tail can lightly brush human\'s nose meow or disappear for four days and return home with an expensive injury; bite the vet or hiding behind the couch until lured out by a feathery toy meowing chowing and wowing claws in the eye of the beholder<br><\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"label\":\"Primary Copy\",\"type\":\"wysiwyg\"}',0,'2019-05-17 18:30:26','2019-05-17 18:30:26'),
	(186,43,'copyColor','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":\"#000000\",\"checked\":null,\"enabled\":null,\"label\":\"Copy Color\",\"type\":\"color\",\"default\":{\"color\":\"#000000\"}}',0,'2019-05-17 18:30:26','2019-05-17 18:30:26'),
	(187,43,'paragraphWidth','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"md:w-1\\/2\",\"options\":{\"md:w-1\\/2\":\"1\\/2 Width\",\"md:w-2\\/3\":\"2\\/3 Width\",\"md:w-3\\/4\":\"3\\/4 Width\"},\"label\":\"Paragraph Width\",\"type\":\"select\",\"default\":{\"value\":\"md:w-1\\/2\"}}',0,'2019-05-17 18:30:26','2019-05-17 18:34:47'),
	(188,44,'lazy','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":false,\"enabled\":null,\"label\":\"Responsive?\",\"type\":\"checkbox\",\"default\":{\"checked\":true}}',0,'2019-05-17 18:30:26','2019-05-17 18:30:26'),
	(189,44,'image','{\"text\":null,\"url\":\"\\/storage\\/styled\\/51533v.jpg?q=80&fit=crop&sharp=5&w=801&h=1024&s=31153bd8376921e0881f091b012bea55\",\"media\":{\"original\":\"\\/storage\\/media\\/51533v.jpg\",\"orig_optimized\":\"\\/storage\\/styled\\/51533v.jpg?q=80&fit=crop&sharp=5&w=801&h=1024&s=31153bd8376921e0881f091b012bea55\",\"large\":\"\\/storage\\/styled\\/51533v.jpg?q=80&fit=crop&sharp=5&w=800&h=400&s=e73c27cb93ee9a994b6b1fa1bcdde7ee\",\"small\":\"\\/storage\\/styled\\/51533v.jpg?q=80&fit=crop&sharp=5&w=400&h=300&s=4b2ab58271fbdeba439e7af66dfdc156\"},\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"sizes\":{\"large\":{\"w\":800,\"h\":400,\"breakpoints\":[\"desktop\",\"largeDesktop\",\"ultraWideDesktop\"]},\"small\":{\"w\":400,\"h\":300,\"breakpoints\":[\"tablet\",\"mobile\"]}},\"mode\":\"media\",\"alt\":null,\"settings\":{\"q\":80,\"fit\":\"crop\",\"sharp\":5,\"w\":801,\"h\":1024},\"label\":\"The image\",\"type\":\"image\"}',0,'2019-05-17 18:30:26','2019-05-17 18:34:47'),
	(194,36,'axis','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":false,\"options\":{\"z\":\"Z (default)\",\"x\":\"X\",\"y\":\"Y\",\"all\":\"All\"},\"value\":\"z\",\"type\":\"select\",\"label\":\"Axis to Spin\",\"default\":{\"value\":\"z\"}}',0,'2019-05-20 13:04:51','2019-05-20 13:06:27'),
	(199,47,'title','{\"text\":\"It can build a memorial to grumpy cat\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"editorLabel\":true,\"type\":\"text\",\"label\":\"Title\"}',0,'2019-05-20 22:01:45','2019-05-20 22:01:45'),
	(200,47,'titleSize','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"value\":\"small\",\"options\":{\"large\":\"Large\",\"small\":\"Small\"},\"type\":\"select\",\"label\":\"Title Size\",\"default\":{\"value\":\"small\"}}',0,'2019-05-20 22:01:45','2019-05-20 22:01:45'),
	(201,47,'content','{\"text\":\"<p><a href=\\\"http:\\/\\/devise-presentation.test\\/cats\\\" target=\\\"_blank\\\">Grumpy Cat Memorial<\\/a><\\/p><p>(and demo some editing)<\\/p>\",\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"type\":\"wysiwyg\",\"label\":\"Content\"}',0,'2019-05-20 22:01:45','2019-05-20 22:02:56'),
	(202,47,'notes','{\"text\":null,\"url\":null,\"media\":[],\"target\":null,\"color\":null,\"checked\":null,\"enabled\":null,\"type\":\"wysiwyg\",\"label\":\"Notes\"}',0,'2019-05-20 22:01:45','2019-05-20 22:01:45');

/*!40000 ALTER TABLE `dvs_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dvs_languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_languages`;

CREATE TABLE `dvs_languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dvs_languages` WRITE;
/*!40000 ALTER TABLE `dvs_languages` DISABLE KEYS */;

INSERT INTO `dvs_languages` (`id`, `code`, `created_at`, `updated_at`)
VALUES
	(1,'en','2019-05-16 11:51:49','2019-05-16 11:51:49');

/*!40000 ALTER TABLE `dvs_languages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dvs_page_meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_page_meta`;

CREATE TABLE `dvs_page_meta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL,
  `attribute_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dvs_page_meta_page_id_index` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table dvs_page_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_page_versions`;

CREATE TABLE `dvs_page_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starts_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `ab_testing_amount` int(11) NOT NULL DEFAULT '0',
  `preview_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dvs_page_versions_page_id_index` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dvs_page_versions` WRITE;
/*!40000 ALTER TABLE `dvs_page_versions` DISABLE KEYS */;

INSERT INTO `dvs_page_versions` (`id`, `page_id`, `name`, `layout`, `starts_at`, `ends_at`, `ab_testing_amount`, `preview_hash`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,'Default','layouts.main','2019-05-16 11:53:38',NULL,0,NULL,'2019-05-16 11:53:38','2019-05-20 22:05:01',NULL),
	(2,2,'Default','layouts.main','2019-05-17 18:11:01',NULL,0,NULL,'2019-05-17 18:11:01','2019-05-20 22:03:35',NULL);

/*!40000 ALTER TABLE `dvs_page_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dvs_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_pages`;

CREATE TABLE `dvs_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `language_id` int(11) NOT NULL,
  `translated_from_page_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `canonical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head` text COLLATE utf8mb4_unicode_ci,
  `footer` text COLLATE utf8mb4_unicode_ci,
  `middleware` text COLLATE utf8mb4_unicode_ci,
  `ab_testing_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `route_site_unique` (`route_name`,`site_id`),
  KEY `dvs_pages_site_id_index` (`site_id`),
  KEY `dvs_pages_language_id_index` (`language_id`),
  KEY `dvs_pages_translated_from_page_id_index` (`translated_from_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dvs_pages` WRITE;
/*!40000 ALTER TABLE `dvs_pages` DISABLE KEYS */;

INSERT INTO `dvs_pages` (`id`, `site_id`, `language_id`, `translated_from_page_id`, `title`, `route_name`, `slug`, `meta_title`, `canonical`, `head`, `footer`, `middleware`, `ab_testing_enabled`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,1,0,'Homepage','en-homepage','/','Homepage',NULL,NULL,NULL,NULL,0,'2019-05-16 11:53:38','2019-05-20 22:05:01',NULL),
	(2,1,1,0,'Who loves cats??','en-who-loves-cats','/cats','Who loves cats??',NULL,NULL,NULL,'web',0,'2019-05-17 18:11:01','2019-05-20 22:03:35',NULL);

/*!40000 ALTER TABLE `dvs_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dvs_redirects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_redirects`;

CREATE TABLE `dvs_redirects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL DEFAULT '301',
  `from_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dvs_redirects_site_id_index` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table dvs_releases
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_releases`;

CREATE TABLE `dvs_releases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model_id` int(10) unsigned NOT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msh_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `model_id_name` (`model_id`,`model_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table dvs_site_language
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_site_language`;

CREATE TABLE `dvs_site_language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL,
  `language_id` bigint(20) unsigned NOT NULL,
  `default` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dvs_site_element_element_type_element_id_index` (`language_id`),
  KEY `dvs_site_element_site_id_index` (`site_id`),
  KEY `dvs_site_element_element_id_index` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dvs_site_language` WRITE;
/*!40000 ALTER TABLE `dvs_site_language` DISABLE KEYS */;

INSERT INTO `dvs_site_language` (`id`, `site_id`, `language_id`, `default`, `created_at`, `updated_at`)
VALUES
	(1,1,1,1,NULL,NULL);

/*!40000 ALTER TABLE `dvs_site_language` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dvs_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_sites`;

CREATE TABLE `dvs_sites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_queries` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dvs_sites` WRITE;
/*!40000 ALTER TABLE `dvs_sites` DISABLE KEYS */;

INSERT INTO `dvs_sites` (`id`, `name`, `domain`, `settings`, `model_queries`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Devise Presentation','devise-presentation.test','{}','{}','2019-05-16 11:51:49','2019-05-16 11:51:49',NULL);

/*!40000 ALTER TABLE `dvs_sites` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dvs_slice_instances
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dvs_slice_instances`;

CREATE TABLE `dvs_slice_instances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_version_id` int(11) NOT NULL,
  `parent_instance_id` int(11) NOT NULL,
  `view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_query` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dvs_slice_instances_page_version_id_index` (`page_version_id`),
  KEY `dvs_slice_instances_parent_instance_id_index` (`parent_instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dvs_slice_instances` WRITE;
/*!40000 ALTER TABLE `dvs_slice_instances` DISABLE KEYS */;

INSERT INTO `dvs_slice_instances` (`id`, `page_version_id`, `parent_instance_id`, `view`, `label`, `position`, `settings`, `model_query`, `created_at`, `updated_at`)
VALUES
	(1,1,0,'slices.presentation.reveal-presentation','Reveal Presentation',0,'{\"enabled\":true}','','2019-05-16 12:27:14','2019-05-20 21:34:16'),
	(2,1,1,'slices.presentation.reveal-slide','Reveal Slide',1,'{\"enabled\":true}','','2019-05-16 14:09:40','2019-05-17 01:56:19'),
	(3,1,1,'slices.presentation.reveal-slide','Reveal Slide',2,'{\"enabled\":true}','','2019-05-16 14:14:54','2019-05-20 21:55:47'),
	(4,1,1,'slices.presentation.reveal-slide','Reveal Slide',3,'{\"enabled\":true}','','2019-05-16 18:37:29','2019-05-20 21:56:28'),
	(5,1,4,'slices.media.image','Image',4,'{\"enabled\":true}','','2019-05-16 18:46:42','2019-05-16 18:56:29'),
	(6,1,4,'slices.media.image','Image',5,'{\"enabled\":true}','','2019-05-16 18:55:52','2019-05-16 19:08:37'),
	(7,1,1,'slices.presentation.reveal-slide','Reveal Slide',6,'{\"enabled\":true}','','2019-05-16 19:15:49','2019-05-20 21:57:10'),
	(10,1,1,'slices.presentation.reveal-slide','Reveal Slide',14,'{\"enabled\":true}','','2019-05-16 19:37:28','2019-05-20 21:33:27'),
	(12,1,7,'slices.animations.venn-diagram','Venn Diagram',7,'{\"enabled\":true}','','2019-05-16 19:38:17','2019-05-16 20:06:45'),
	(13,1,1,'slices.presentation.reveal-slide','Reveal Slide',8,'{\"enabled\":true}','','2019-05-16 20:11:43','2019-05-20 21:22:37'),
	(14,1,1,'slices.presentation.reveal-slide','Reveal Slide',12,'{\"enabled\":true}','','2019-05-16 20:33:52','2019-05-20 21:24:52'),
	(15,1,14,'slices.code.code-block','Code Block',13,'{\"enabled\":true}','','2019-05-16 20:38:36','2019-05-20 21:32:09'),
	(19,1,22,'slices.presentation.reveal-slide','Reveal Slide',11,'{\"enabled\":true}','','2019-05-17 01:52:55','2019-05-20 21:59:24'),
	(22,1,1,'slices.presentation.reveal-slide','Reveal Slide',9,'{\"enabled\":true}','','2019-05-17 02:07:36','2019-05-20 21:59:24'),
	(23,1,22,'slices.animations.page-slices','Page Slices',10,'{\"enabled\":true}','','2019-05-17 02:07:36','2019-05-20 21:59:24'),
	(24,1,1,'slices.presentation.reveal-slide','Reveal Slide',19,'{\"enabled\":true}','','2019-05-17 02:20:20','2019-05-20 22:01:15'),
	(26,1,1,'slices.presentation.reveal-slide','Reveal Slide',20,'{\"enabled\":true}','','2019-05-17 02:26:20','2019-05-20 22:05:01'),
	(27,1,1,'slices.presentation.reveal-slide','Reveal Slide',21,'{\"enabled\":true}','','2019-05-17 02:26:20','2019-05-20 22:01:15'),
	(28,1,1,'slices.presentation.reveal-slide','Reveal Slide',22,'{\"enabled\":true}','','2019-05-17 02:30:54','2019-05-20 22:01:15'),
	(33,1,1,'slices.presentation.reveal-slide','Reveal Slide',23,'{\"enabled\":true}','','2019-05-17 02:33:57','2019-05-20 22:01:15'),
	(34,1,1,'slices.presentation.reveal-slide','Reveal Slide',15,'','','2019-05-17 16:35:21','2019-05-20 21:34:04'),
	(35,1,1,'slices.presentation.reveal-slide','Reveal Slide',16,'{\"enabled\":true}','','2019-05-17 16:36:07','2019-05-20 21:33:12'),
	(36,1,35,'slices.3d.logos','Logos',17,'{\"enabled\":true}','','2019-05-17 16:39:34','2019-05-20 21:33:12'),
	(41,2,0,'slices.typical-page-slices.static-hero','Static Hero',0,'{\"enabled\":true}','','2019-05-17 18:15:57','2019-05-17 19:07:10'),
	(42,2,0,'slices.typical-page-slices.aligned-title-paragraph','Aligned Title Paragraph',1,'{\"enabled\":true}','','2019-05-17 18:15:57','2019-05-20 22:03:24'),
	(43,2,0,'slices.typical-page-slices.copy-with-child-slices','Copy With Child Slices',2,'{\"enabled\":true}','','2019-05-17 18:30:26','2019-05-17 18:34:47'),
	(44,2,43,'slices.typical-page-slices.image','Image',3,'{\"enabled\":true}','','2019-05-17 18:30:26','2019-05-17 18:34:47'),
	(47,1,1,'slices.presentation.reveal-slide','Reveal Slide',18,'','','2019-05-20 22:01:45','2019-05-20 22:02:56');

/*!40000 ALTER TABLE `dvs_slice_instances` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2018_02_02_042645_create_dvs_pages',1),
	(4,'2018_02_02_042652_create_dvs_page_versions',1),
	(5,'2018_02_02_044953_create_dvs_sites',1),
	(6,'2018_02_02_050341_create_dvs_languages',1),
	(7,'2018_02_02_185007_create_dvs_slice_instances',1),
	(8,'2018_02_05_185147_create_dvs_fields',1),
	(9,'2018_02_06_204752_create_dvs_media',1),
	(10,'2018_02_07_002928_create_dvs_site_elements',1),
	(11,'2018_02_07_160931_create_dvs_templates',1),
	(12,'2018_02_14_205443_create_dvs_meta',1),
	(13,'2018_03_06_153655_create_dvs_redirects',1),
	(14,'2018_03_08_121856_create_dvs_template_slices',1),
	(15,'2018_04_23_145714_create_dvs_releases',1),
	(16,'2018_05_29_103724_create_dvs_changes',1),
	(17,'2018_06_20_134103_drop_site_slug_unique_index',1),
	(18,'2018_07_24_162758_alter_dvs_slice_instances_add_settings_drop_enabled',1),
	(19,'2018_07_26_142430_alter_dvs_sites_add_model_queries',1),
	(20,'2018_08_15_190218_move_template_slices_to_slice_instances',1),
	(21,'2018_08_15_202349_drop_templates',1),
	(22,'2018_08_21_184509_alter_pages_unique_index',1),
	(23,'2018_08_21_225543_drop_dvs_media',1),
	(24,'2018_08_21_225617_change_site_elements_to_site_language',1),
	(25,'2018_09_12_135605_alter_dvs_slice_instances_drop_type',1),
	(26,'2019_01_09_123718_alter_dvs_pages_add_meta_title',1),
	(27,'2019_01_09_124031_alter_dvs_page_meta_add_site_id',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Gary','gary@lbm.co',NULL,'$2y$10$S1KvzxZGt4ldz7YbXvMiVOg/aEaNQXUBtgoo6kGVWkAH/z6YPCv5.',NULL,'2019-05-16 11:51:31','2019-05-16 11:51:31');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
