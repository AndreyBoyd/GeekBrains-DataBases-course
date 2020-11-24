USE vk;

-- 1. Создать и заполнить таблицы лайков и постов.

-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

-- Заполняем лайки
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;
  
 -- Проверяем
SELECT * FROM likes LIMIT 10;

-- Создадаем таблицу постов и заполняпем её при помощи сервиса http://filldb.info
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `community_id` int(10) unsigned DEFAULT NULL,
  `head` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT 1,
  `is_archived` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (1, 72, 20, 'quia', 'Aliquid eaque praesentium praesentium sit doloribus modi et. Magnam repudiandae earum itaque qui sunt fugit aspernatur. Commodi aliquid quis voluptatem aut suscipit quia. Velit amet praesentium et quisquam.', 83, 1, 0, '2011-07-03 19:05:36', '2015-09-05 22:13:16');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (2, 78, 3, 'voluptate', 'Ea et est qui et voluptatem. Est in aperiam unde sit sed. Inventore molestiae voluptatem quo aut blanditiis odit. Mollitia et minima sed dolores at quia enim ipsa. Quam commodi aut sed molestiae laudantium et ut.', 42, 1, 1, '2018-11-13 20:54:47', '2012-10-30 23:05:32');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (3, 12, 15, 'quia', 'Quia harum mollitia adipisci aut in quasi. Reprehenderit quis accusantium occaecati.', 17, 1, 1, '2017-09-11 05:37:22', '2016-01-24 21:28:28');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (4, 71, 9, 'aperiam', 'Non sit occaecati laboriosam veniam aut cum ab. Assumenda voluptas ipsa iure fugit. Quasi sed adipisci amet ut. Vel facilis consequuntur officiis explicabo in consequatur.', 32, 0, 0, '2011-10-03 03:54:41', '2017-09-10 21:05:53');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (5, 71, 10, 'unde', 'Maxime explicabo rerum enim dignissimos nostrum mollitia sed nihil. Eveniet ut non doloribus earum deleniti quae. Veritatis sapiente itaque sed ipsam est pariatur neque. A doloremque qui sed laborum in sint quaerat.', 2, 1, 0, '2020-01-18 08:25:50', '2011-09-05 01:09:37');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (6, 91, 17, 'quo', 'Aut nobis molestias in modi ipsa facere deserunt voluptatem. Quis natus quia harum eum. Delectus sed delectus minima fugiat. A sint sed suscipit eveniet consectetur maiores.', 2, 0, 1, '2014-02-27 01:27:21', '2011-09-07 17:10:50');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (7, 100, 8, 'fugit', 'Esse quos laudantium ut est fugit. Placeat rerum saepe nobis occaecati delectus iste corporis. Odio praesentium laboriosam architecto esse.', 72, 1, 1, '2015-09-10 18:53:09', '2016-06-11 12:14:14');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (8, 66, 11, 'quo', 'Consequuntur blanditiis aut quia itaque. Dolorem veritatis ut est incidunt quia quis. Impedit odit quasi suscipit itaque quo rerum.', 9, 1, 0, '2020-01-02 22:36:32', '2018-07-06 03:40:49');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (9, 25, 8, 'ipsam', 'Consequatur aspernatur et qui et est consequuntur ratione. Vitae dolorem nulla blanditiis ut. Consequatur temporibus aspernatur odio ex. Odit in quasi quibusdam libero delectus dolorem. Quia earum ratione reiciendis ut.', 26, 1, 1, '2013-03-26 23:41:32', '2019-10-12 07:31:34');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (10, 63, 4, 'sed', 'Nobis occaecati iste in pariatur consequatur quia et. Voluptatem dolor rem harum commodi ex eius. Optio commodi est ullam nobis cupiditate. Vel qui asperiores et magni. Dicta debitis atque qui.', 66, 0, 0, '2014-09-04 16:39:36', '2011-07-24 03:37:28');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (11, 98, 7, 'quibusdam', 'Reprehenderit quos iste numquam dolorem nemo et rerum. Tempore voluptas eum molestiae non est voluptas. Eius at in consequatur quidem.', 6, 1, 1, '2011-06-25 21:18:57', '2019-02-06 04:39:24');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (12, 43, 2, 'sequi', 'Ratione ut nihil necessitatibus labore hic. Dignissimos rerum optio eum autem consequatur est. Rerum voluptatem voluptas eos excepturi fuga neque provident. Facere omnis sit consequatur ipsa qui laborum delectus ducimus.', 32, 0, 1, '2018-12-18 02:35:11', '2016-02-07 04:50:12');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (13, 69, 15, 'et', 'Ut quibusdam possimus suscipit officiis. Perferendis saepe quo animi excepturi rerum et enim odio. Et nihil necessitatibus aliquam in.', 51, 1, 1, '2012-12-26 11:30:04', '2019-11-25 08:18:21');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (14, 43, 18, 'est', 'Est non sequi sit sed nesciunt magnam unde molestiae. Reprehenderit possimus nihil nulla qui. Deserunt rerum rem fugit est.', 100, 0, 0, '2015-07-08 10:07:52', '2017-02-24 16:27:03');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (15, 86, 15, 'et', 'Reiciendis harum voluptatem dolorem voluptatem consequatur natus. Dolorem eveniet labore eaque non et odit et. Rerum asperiores labore voluptas iure. Quam voluptas delectus iusto autem.', 67, 0, 1, '2011-09-28 03:25:13', '2014-04-11 04:15:04');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (16, 51, 7, 'est', 'Distinctio et tempora et perspiciatis id aut voluptatibus et. Et iusto voluptatem consequuntur facilis adipisci. Nulla occaecati quo et beatae libero velit. Qui illum modi omnis sunt natus. Id consectetur facilis rerum autem distinctio dolorem eligendi.', 7, 1, 0, '2010-11-30 13:09:33', '2011-08-11 07:52:11');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (17, 43, 6, 'similique', 'Est et assumenda accusamus impedit voluptas. Et quia eveniet numquam rerum sunt velit. Esse odio sint repellendus ut et deleniti ex.', 86, 1, 0, '2017-01-03 10:46:35', '2011-12-30 23:44:35');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (18, 60, 15, 'illum', 'Quis nostrum quasi suscipit possimus praesentium. Sequi non necessitatibus est omnis ipsa. Rerum totam aliquid velit quas. Eius et ut velit nobis quia possimus.', 100, 0, 0, '2019-09-08 09:40:25', '2018-10-10 02:47:53');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (19, 57, 4, 'repellat', 'Non ipsam neque explicabo cumque. Assumenda voluptatem doloribus quisquam repudiandae modi. Veniam voluptatem est atque omnis doloribus.', 60, 1, 1, '2017-02-20 19:09:59', '2013-06-11 14:39:11');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (20, 41, 18, 'sunt', 'Delectus maiores sint et id. Ut quasi ex impedit consequatur.', 54, 1, 1, '2016-02-14 21:58:31', '2017-04-24 03:04:23');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (21, 85, 4, 'quisquam', 'Ea aspernatur vitae sed perspiciatis et illo mollitia. Possimus fuga quis in accusamus tenetur. Ut non saepe dolorem ratione quaerat numquam. Laudantium reprehenderit voluptatem autem non.', 57, 1, 0, '2013-11-02 11:35:12', '2016-05-06 17:45:38');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (22, 14, 1, 'doloremque', 'Atque est nihil delectus nisi. Beatae possimus quia sunt ex voluptatem sed et sequi.', 92, 1, 1, '2017-03-16 06:34:19', '2014-08-21 17:51:27');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (23, 96, 20, 'natus', 'Suscipit eligendi qui repellat et quo deleniti iste. Natus et quia ex et voluptate est et ut. Rem eum consequuntur nam atque quia cumque error.', 21, 0, 1, '2020-06-11 05:14:41', '2012-01-18 12:05:13');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (24, 23, 1, 'modi', 'Non quibusdam et eaque repellendus qui eveniet. Dolores rerum enim veritatis. Quo doloribus eum quam reiciendis nostrum.', 91, 0, 0, '2015-06-24 06:18:19', '2016-08-19 07:27:58');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (25, 55, 9, 'magnam', 'Qui sunt non iusto quos sed. Quis omnis et quo voluptate ipsam repudiandae nihil.', 89, 1, 1, '2012-11-02 15:30:57', '2019-04-01 02:10:02');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (26, 46, 18, 'recusandae', 'Sunt sapiente et voluptate eveniet. Nesciunt possimus ad consequuntur.', 73, 0, 1, '2018-10-02 01:42:37', '2018-06-19 05:58:15');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (27, 69, 14, 'voluptate', 'Consequuntur voluptate commodi neque. Reiciendis at labore adipisci voluptates. Nam tenetur commodi aliquam qui non repellendus adipisci.', 16, 1, 1, '2018-02-15 07:29:11', '2011-02-10 05:24:45');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (28, 70, 15, 'et', 'Aut blanditiis harum aut ratione non praesentium. Dolor eos ut aspernatur. Quia velit quasi natus.', 52, 1, 1, '2017-01-27 00:13:47', '2018-12-25 19:50:15');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (29, 79, 15, 'repellat', 'Repudiandae doloribus natus dolorem recusandae quibusdam voluptas quisquam. Non aliquam corrupti vitae enim. Vitae in esse corporis qui.', 64, 1, 0, '2017-09-14 01:44:45', '2016-10-14 00:17:15');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (30, 3, 5, 'aut', 'Modi et deserunt sint iste. Est voluptatem est rerum ad consequatur.', 54, 0, 0, '2020-07-28 08:50:02', '2020-09-04 19:55:00');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (31, 73, 3, 'non', 'Reprehenderit similique sit rem deserunt. Minima consequuntur accusamus hic vel. Illum dolor qui beatae neque sunt rem. Quo atque natus rerum quo impedit.', 19, 0, 0, '2012-01-18 07:40:21', '2017-07-08 19:48:30');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (32, 32, 5, 'asperiores', 'Omnis adipisci animi vel est dolor. Nam aliquid at et dolorum ad repudiandae. Consectetur et maxime maiores sapiente reprehenderit.', 73, 1, 1, '2011-11-09 01:06:05', '2014-12-13 17:24:56');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (33, 51, 20, 'reiciendis', 'Cum ab est impedit. Debitis et consectetur consequatur odio animi commodi aut. Et voluptatem earum in.', 49, 0, 0, '2020-08-20 17:38:20', '2013-01-24 07:13:12');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (34, 19, 19, 'nostrum', 'Ipsum doloremque sit placeat quia perspiciatis pariatur fuga vero. Assumenda laboriosam qui quia eligendi delectus ipsum. In laborum et aut iusto voluptatum voluptatum dolores. Dignissimos aliquam qui natus qui autem labore.', 32, 0, 1, '2014-12-26 05:40:03', '2012-06-08 15:00:51');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (35, 31, 3, 'ut', 'Incidunt maxime eos debitis quasi aut. Veritatis sit harum nam sunt natus autem.', 58, 0, 0, '2013-08-25 04:08:35', '2017-05-31 20:28:59');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (36, 89, 14, 'nihil', 'Aliquam ipsa dolorem fugit qui. Eveniet quis placeat cumque numquam ut. Excepturi perferendis quis ut modi rem. Ipsum iusto suscipit dicta nemo. Fugit est cum id necessitatibus.', 20, 1, 1, '2020-05-11 13:18:38', '2018-05-28 06:52:25');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (37, 15, 14, 'aut', 'Impedit cum sit in quasi et officia aliquam. Quos sit ut dolorem aliquam sit iste est voluptates. Tempora alias excepturi similique vel architecto asperiores ut repellendus.', 55, 1, 0, '2020-04-14 15:14:15', '2011-08-24 12:19:50');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (38, 39, 7, 'neque', 'Ullam aliquid recusandae excepturi. Et optio doloribus ipsum quis. Nihil qui totam quas aut odit neque.', 53, 1, 0, '2014-09-17 04:03:05', '2017-10-21 19:42:11');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (39, 16, 6, 'inventore', 'Et laboriosam rerum tempore voluptatibus. Modi aliquid hic est temporibus. Sit id eum voluptas quam.', 4, 1, 0, '2015-08-30 07:13:14', '2013-06-18 00:23:30');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (40, 1, 18, 'nobis', 'Quas in excepturi quas facere autem. Aspernatur exercitationem dolore natus possimus sed fuga sunt. Unde nobis et perferendis consequuntur ut ut.', 63, 0, 0, '2012-04-14 19:26:39', '2019-02-18 06:41:56');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (41, 63, 10, 'ut', 'Voluptatem consequatur nihil suscipit minus qui neque. Rerum consequuntur enim et voluptatem. Alias dolores numquam quas eligendi. Aut et excepturi sequi enim dolorem ipsa omnis.', 88, 1, 0, '2015-12-11 23:54:25', '2018-04-10 21:35:11');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (42, 42, 8, 'tempore', 'Qui temporibus fugiat nihil qui autem consequuntur. Amet ut rem minus ut. Minus consequatur et velit officiis.', 23, 0, 1, '2020-10-14 17:46:49', '2013-07-03 08:58:42');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (43, 55, 4, 'quia', 'Atque quia vel sunt distinctio iure. Quos corrupti ut blanditiis repellat quis voluptas odio. Modi eos aut quod velit a repudiandae. Qui voluptas non ipsam qui.', 50, 1, 1, '2017-12-09 06:43:04', '2017-12-31 01:00:50');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (44, 33, 7, 'ipsa', 'Aliquid totam adipisci incidunt ad suscipit. Voluptatem dolores maiores consectetur et. Est quis aut eaque non facilis tenetur explicabo. Ex optio quo officia.', 26, 1, 0, '2014-04-18 02:31:30', '2019-04-09 08:10:36');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (45, 92, 11, 'ea', 'Ab facere ea harum ad officia. Ut quia quam repudiandae iste. Quia corporis ducimus et non sit veritatis.', 69, 0, 1, '2013-12-14 12:02:07', '2019-10-14 05:11:23');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (46, 91, 2, 'ut', 'Repellendus aspernatur voluptatem tenetur autem atque et. Amet quia earum dignissimos aut eveniet. Ratione velit voluptas sunt non cum voluptatem. Explicabo commodi voluptas voluptatum illum et alias.', 44, 1, 1, '2014-04-24 00:22:15', '2015-04-14 12:54:59');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (47, 47, 2, 'rerum', 'Modi qui eum facilis vitae. Autem explicabo dolorem consequuntur dolorem enim ex. Quae sit consequuntur velit enim qui veniam sunt culpa. Ut tenetur inventore ab exercitationem.', 71, 0, 1, '2016-06-03 03:10:53', '2014-10-21 08:48:03');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (48, 25, 15, 'magnam', 'Aliquam aut vel quisquam ea. Ullam soluta accusamus vitae est. Aspernatur sunt laborum aut qui qui. Est neque exercitationem vitae quis suscipit odio.', 98, 1, 1, '2019-05-16 06:12:30', '2013-01-02 21:46:22');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (49, 78, 14, 'quia', 'Soluta totam magnam et est porro asperiores. Mollitia quis ducimus expedita sed dolorum aliquam at. Facilis eius nihil est iure suscipit.', 33, 1, 0, '2011-09-06 06:04:17', '2013-01-26 12:04:28');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (50, 16, 7, 'quis', 'Molestiae dolores voluptas cupiditate voluptatum. Explicabo in magnam et dolorum molestiae consequatur eos. Dolorum voluptatem debitis esse possimus veritatis. Cum dolores culpa magnam quos omnis autem.', 64, 0, 1, '2014-04-16 02:27:50', '2019-02-03 13:04:01');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (51, 29, 15, 'molestiae', 'Voluptas porro amet numquam consequatur cumque maiores. Error non omnis voluptatem rerum. Recusandae inventore fuga odio quos. Culpa beatae eum iusto velit inventore.', 28, 1, 1, '2011-11-05 22:32:00', '2012-08-29 03:05:03');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (52, 23, 17, 'et', 'Quis harum magnam autem. Voluptatem maiores et nesciunt. Impedit occaecati nostrum occaecati fugiat molestiae. Id quia libero enim nemo enim dicta.', 44, 0, 1, '2015-10-20 10:21:50', '2014-12-20 04:29:31');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (53, 64, 6, 'non', 'Rem minima nihil quam aut porro qui. Id aut itaque ut nihil. Nulla repellat sed fuga rerum voluptate libero. Omnis similique illo aut qui velit reprehenderit dolores.', 53, 0, 0, '2018-07-14 21:21:55', '2013-09-17 11:51:03');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (54, 57, 7, 'et', 'Dolor voluptatibus dicta est ut. Veritatis sequi ullam eius vitae accusamus dolor voluptatibus. Sed nihil quas voluptate accusamus.', 73, 0, 0, '2019-02-19 21:17:28', '2011-07-08 14:12:16');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (55, 22, 14, 'doloribus', 'Vero quas sed doloremque quia maiores aliquam quia explicabo. Impedit totam libero quis enim et quia molestiae. Modi aut dolorem qui soluta assumenda amet. Voluptatum quasi deserunt a explicabo voluptatem eum.', 42, 1, 1, '2014-03-21 20:07:13', '2013-04-24 19:02:41');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (56, 7, 8, 'eum', 'Est commodi necessitatibus vel ut ut aliquam. Ducimus non quos inventore ut. Officiis et et harum maxime. Qui distinctio facere iure ab fugit quia.', 20, 1, 1, '2019-01-27 08:27:05', '2017-05-28 17:59:11');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (57, 60, 19, 'in', 'A sapiente ex omnis repudiandae molestiae unde eaque et. Qui temporibus est porro sit explicabo quo ut sit.', 79, 0, 0, '2020-09-07 06:02:36', '2013-03-03 22:20:38');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (58, 31, 8, 'ut', 'Ipsum enim voluptates perspiciatis. Reiciendis voluptatibus et aut qui. Facere nisi officia doloribus nihil quos. Officia libero consectetur magni voluptatem reiciendis et est.', 54, 0, 0, '2015-04-28 05:18:27', '2018-12-28 23:59:38');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (59, 83, 14, 'sed', 'Quod explicabo qui magnam tenetur veritatis. Qui est et unde iste corrupti repellendus. Autem qui sequi laudantium facilis.', 100, 0, 0, '2018-07-16 18:16:54', '2017-04-06 05:43:24');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (60, 46, 20, 'et', 'Tempore eius dolorum et architecto. Mollitia nihil magnam et vero ea. Magnam nihil voluptatem enim corrupti suscipit enim. Nemo adipisci nostrum cumque voluptatem voluptatum rem velit dolorem.', 49, 1, 0, '2020-07-02 05:22:01', '2020-04-26 12:45:27');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (61, 29, 10, 'unde', 'Eveniet velit ea dolores rerum voluptatibus voluptatem. Iste et aut optio.', 17, 0, 0, '2014-11-06 08:07:32', '2012-05-05 23:40:16');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (62, 93, 10, 'accusamus', 'Nobis nihil voluptas autem dignissimos nulla saepe quaerat voluptate. Sint aut sequi id. Cupiditate nemo mollitia doloremque recusandae et omnis cupiditate. Deserunt debitis amet nostrum occaecati voluptatem nihil.', 1, 0, 1, '2020-07-06 08:35:26', '2012-09-13 22:52:37');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (63, 79, 2, 'quidem', 'Dolor at voluptas explicabo ullam dolores optio culpa omnis. Doloribus doloribus enim commodi consequatur porro voluptatibus repellat. Voluptas eligendi reprehenderit dolorem et sapiente animi temporibus. Id nemo aut odio aliquid ipsum similique sit.', 24, 0, 1, '2018-10-25 08:59:28', '2017-08-09 14:17:04');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (64, 23, 8, 'ut', 'Repudiandae in consequatur voluptatem saepe laudantium. Ut excepturi ipsa aut porro sit omnis qui. Est veniam velit error doloribus earum assumenda doloremque. Autem enim eum doloremque aliquid ullam quae quia.', 8, 1, 1, '2016-05-25 09:48:21', '2012-01-02 04:19:02');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (65, 91, 16, 'quia', 'Placeat dolor nihil est ea praesentium vel eius voluptatum. Sed sapiente nemo sint qui eum doloremque iusto molestias. Repellat possimus rem ea ut error.', 75, 0, 1, '2015-06-10 00:32:01', '2014-04-09 17:07:33');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (66, 40, 19, 'et', 'Illo velit error ipsam sit qui. Praesentium nulla consequatur consequuntur amet sunt a.', 43, 0, 1, '2011-07-04 21:00:32', '2015-01-22 06:32:55');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (67, 71, 18, 'eaque', 'Laborum sequi ut alias dolore. Ea qui quis expedita. Id laudantium sunt quo quia.', 87, 0, 1, '2015-05-02 23:53:59', '2011-08-10 20:40:10');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (68, 74, 14, 'et', 'Est odio ad corrupti consequuntur ratione et aspernatur doloribus. Non odio ut dignissimos facere. Sit sit accusamus voluptas quo eos. Quisquam inventore illo autem ut quis sunt adipisci.', 36, 1, 1, '2014-03-06 08:45:48', '2013-11-15 01:30:09');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (69, 93, 11, 'sequi', 'Modi tenetur nihil cupiditate omnis rerum. Aliquid omnis molestias sunt dolor rerum qui et. Nesciunt et omnis sed odit reprehenderit nihil.', 9, 1, 0, '2020-01-04 21:52:15', '2013-02-02 19:04:33');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (70, 98, 12, 'provident', 'Reiciendis aut id quis qui illo. Voluptas est culpa nostrum. Dolor facere eligendi ad autem porro. Nobis labore et sit aut assumenda.', 12, 0, 0, '2014-01-28 04:49:58', '2014-02-09 17:52:37');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (71, 98, 8, 'assumenda', 'Dolorum hic perferendis cumque labore expedita molestias. Aut quibusdam sit eum aspernatur quia fugiat ex. Est qui labore nihil illo. Aut neque culpa incidunt architecto sed repudiandae. Consectetur eum mollitia quisquam unde.', 36, 1, 0, '2018-07-25 04:52:29', '2018-07-29 04:13:06');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (72, 11, 3, 'voluptatem', 'Incidunt rerum reprehenderit cupiditate recusandae voluptatem eaque sint. Modi explicabo consequatur sint voluptate dicta accusamus. Aspernatur rem et qui doloremque recusandae corrupti dolorem. Ab excepturi est necessitatibus dolor.', 41, 1, 1, '2018-06-26 15:10:48', '2019-08-08 20:06:10');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (73, 29, 11, 'rem', 'Quis voluptatem in vel ad et. Omnis dignissimos laborum minima consequatur aut. Totam est consequatur est non explicabo.', 100, 0, 0, '2016-09-02 04:33:46', '2018-03-23 13:29:15');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (74, 71, 14, 'dolorum', 'Dolor cupiditate quam dolor quo qui et id porro. Occaecati quidem consequuntur eos odio. Sint doloribus odit et rerum labore consectetur qui. Voluptatem sint voluptas et et.', 38, 0, 1, '2017-04-04 22:10:06', '2014-12-31 04:23:56');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (75, 80, 6, 'nobis', 'Magnam voluptas vel aut nihil. Aspernatur architecto perferendis ea sed maxime sed. Qui qui esse et et.', 19, 0, 1, '2011-05-25 18:02:11', '2020-11-01 16:18:41');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (76, 23, 7, 'dolor', 'Velit magnam ratione iste temporibus temporibus cupiditate. Enim ut aut ipsam. Dolor repellat enim fugiat laborum qui minima voluptatem.', 75, 0, 1, '2014-07-03 06:03:27', '2016-08-29 21:14:23');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (77, 68, 7, 'non', 'Ut ratione iste atque esse praesentium repudiandae asperiores. Perferendis inventore blanditiis ut. Tempore ea quaerat aut voluptatem.', 76, 0, 0, '2016-01-29 01:08:13', '2013-11-04 01:20:00');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (78, 94, 10, 'vel', 'Repellendus qui voluptatum odio velit velit est earum et. Dolor magnam nisi dolor et et. Eum officia alias odio vel iure molestias. Qui quo ipsam odit veniam veniam ut quia.', 57, 0, 1, '2020-08-10 13:21:56', '2019-10-18 13:33:14');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (79, 46, 7, 'in', 'Culpa adipisci eligendi nulla consectetur. Voluptatem aliquid sit maiores et qui qui architecto amet. Est vitae occaecati quia quae magni dolor.', 25, 0, 0, '2014-10-03 17:42:13', '2013-07-11 05:04:51');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (80, 24, 14, 'voluptas', 'Odit ut asperiores et. Eos ratione corrupti alias eveniet maiores. Dolore et sit cupiditate ut ab.', 48, 1, 1, '2016-12-28 18:33:47', '2016-07-23 14:15:56');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (81, 80, 6, 'esse', 'Praesentium culpa consequuntur magnam et. Atque atque sapiente voluptas autem enim. Facilis ut perspiciatis placeat animi delectus.', 46, 0, 0, '2019-12-27 14:49:23', '2017-04-20 05:57:01');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (82, 19, 9, 'ipsam', 'Dignissimos sit molestias impedit nihil occaecati. Dolorum necessitatibus deleniti molestiae placeat et. Numquam omnis voluptatem quod aut sed. Nam voluptas id delectus necessitatibus et nostrum ut.', 26, 1, 1, '2016-06-27 09:42:37', '2018-08-03 11:56:39');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (83, 51, 13, 'et', 'Harum itaque error aut fuga placeat. Impedit alias eos iste qui culpa nobis omnis. Nemo ab libero molestias doloribus ut delectus explicabo.', 69, 1, 1, '2020-02-14 15:35:21', '2020-11-24 11:54:13');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (84, 100, 19, 'perspiciatis', 'Modi et molestiae quia. Ut labore architecto ipsam dolor placeat. Et minus consequuntur eaque libero ut.', 18, 1, 0, '2013-07-23 18:58:05', '2014-10-15 16:06:28');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (85, 60, 3, 'illum', 'Quos nam dolores dolor. Aut et fuga quaerat. Et est nam iusto sint sit.', 72, 0, 1, '2019-02-18 18:26:20', '2014-10-03 06:46:17');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (86, 70, 6, 'quos', 'Unde accusantium facilis aut suscipit. Placeat iure aperiam voluptate non. Eos pariatur dolorem minus qui illum. Reprehenderit sed maiores quam aut in sed ut. Consectetur excepturi porro non officia sed minima.', 74, 0, 0, '2020-10-11 05:29:39', '2018-03-18 21:10:36');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (87, 17, 16, 'incidunt', 'Libero nulla maxime laborum quis. Nobis voluptatem aut consequatur deserunt consequatur aut magni. Ut ut et consequatur asperiores ducimus.', 61, 1, 1, '2012-08-10 23:33:36', '2016-11-10 18:02:31');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (88, 19, 14, 'voluptatem', 'Est non officia magni culpa quam fugit distinctio. Id est quasi dolore ea est sunt animi. Maiores nam qui vitae consequatur. Praesentium fuga ipsa architecto praesentium.', 5, 0, 0, '2020-01-19 05:14:38', '2020-05-29 22:33:17');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (89, 20, 6, 'similique', 'Est aut qui dolores et nemo. Minus eos aut nesciunt occaecati aut harum consectetur at. Rem qui ea sit deleniti itaque. Voluptatem molestiae aliquid occaecati corporis nemo voluptatem odio et.', 21, 0, 0, '2015-08-20 00:23:30', '2011-04-25 06:27:30');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (90, 12, 15, 'excepturi', 'Eum qui quisquam dolor sint pariatur. Ut amet voluptatibus necessitatibus id dolor. Quos at est ut quaerat error occaecati qui. Est et soluta aperiam dolore ut harum voluptatem hic. Deserunt temporibus expedita repellendus ipsam ut.', 54, 0, 0, '2013-09-02 05:05:56', '2016-01-18 03:37:43');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (91, 43, 9, 'sint', 'Nam accusamus consequatur assumenda nam dolorum optio. Provident enim eum ipsum quo eveniet excepturi aliquid. Quo aut debitis voluptatibus eligendi nihil inventore. Eos magni et odit dolorem nesciunt alias.', 38, 0, 0, '2015-01-15 21:36:37', '2019-12-05 05:29:04');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (92, 90, 10, 'est', 'Ad voluptatem voluptatibus velit. Doloribus quaerat magnam molestias. Id consequatur dicta reprehenderit.', 26, 0, 1, '2012-03-21 04:51:29', '2016-05-12 08:02:43');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (93, 14, 8, 'possimus', 'Blanditiis laboriosam sit voluptas voluptatem maiores. Et consequatur est enim dicta unde. Repellat rerum harum sapiente earum necessitatibus dicta est. Sunt et aliquam et iste tenetur.', 42, 1, 1, '2019-01-04 15:06:08', '2010-12-28 22:50:40');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (94, 51, 19, 'sint', 'Aut officia et eos reprehenderit quia. Tenetur voluptatem dolorem voluptatem. Eveniet repudiandae dolorem qui sit. Tempore eligendi totam deserunt molestiae rerum modi.', 10, 0, 1, '2017-10-31 09:47:07', '2011-04-11 06:16:05');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (95, 35, 11, 'et', 'Sapiente earum et cum voluptatem. Aut odio eveniet sequi quia enim enim. Fugit minus fugit perferendis veniam recusandae itaque adipisci. Assumenda nihil in dolores itaque culpa.', 87, 0, 1, '2011-09-15 08:22:58', '2012-09-21 01:53:25');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (96, 8, 11, 'quibusdam', 'Similique repellat dolores et ut repellendus. Maxime est aut voluptatem ut voluptatem omnis. Voluptatem ea ducimus doloribus reiciendis ea. Consequuntur ut sit quo necessitatibus id dolor sunt necessitatibus. Nesciunt eum modi vero sunt consectetur.', 5, 0, 1, '2019-01-27 11:25:32', '2014-02-28 14:48:04');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (97, 60, 5, 'est', 'Vel vel accusantium vel iste laborum. Nesciunt sequi maiores repellendus temporibus velit aspernatur. Iusto pariatur eaque commodi praesentium nesciunt. Maiores a praesentium repudiandae perspiciatis tempore magnam.', 6, 0, 1, '2015-10-02 18:00:51', '2019-04-11 22:39:51');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (98, 71, 4, 'aut', 'Harum impedit dolorem officiis dolore atque in. Qui magni sunt neque. A ea ut eius et. Et nemo eaque sapiente natus ea vel.', 1, 1, 1, '2019-08-05 02:04:05', '2017-02-07 15:47:44');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (99, 62, 14, 'culpa', 'Fugit aut accusamus laborum quis. Reiciendis explicabo sit eum iusto hic. Nemo occaecati nemo nam nostrum debitis dolorum tempore. Iusto repellendus repellendus qui aliquid qui fugit voluptatem.', 18, 1, 0, '2020-11-02 18:20:15', '2018-01-19 05:08:44');
INSERT INTO `posts` (`id`, `user_id`, `community_id`, `head`, `body`, `media_id`, `is_public`, `is_archived`, `created_at`, `updated_at`) VALUES (100, 65, 17, 'sed', 'Dignissimos eaque magni aut minima suscipit. Est qui fugiat architecto. Officiis doloremque facere nobis explicabo velit. Eveniet animi consequuntur minus.', 21, 1, 0, '2017-04-25 21:36:41', '2019-10-26 07:13:02');

SELECT * FROM posts;

-- 2. Создать все необходимые внешние ключи и диаграмму отношений.

ALTER TABLE profiles
	ADD CONSTRAINT profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;


ALTER TABLE communities_users
	ADD CONSTRAINT communities_users_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE,
	ADD CONSTRAINT communities_users_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;

ALTER TABLE friendship
	ADD CONSTRAINT friendship_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE,
	ADD CONSTRAINT friendship_friend_id_fk
		FOREIGN KEY (friend_id) REFERENCES users(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;
	
ALTER TABLE likes
	ADD CONSTRAINT likes_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE   
			ON UPDATE CASCADE;

		
ALTER TABLE media
	ADD CONSTRAINT media_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE 
			ON UPDATE CASCADE,
	ADD CONSTRAINT media_media_type_id_fk
		FOREIGN KEY (media_type_id) REFERENCES media_types(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;
		
		
ALTER TABLE messages
	ADD CONSTRAINT messages_from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users(id)
			ON DELETE SET NULL
			ON UPDATE CASCADE,
	ADD CONSTRAINT messages_to_user_id_fk
		FOREIGN KEY (to_user_id) REFERENCES users(id)
			ON DELETE SET NULL
			ON UPDATE CASCADE;
		
ALTER TABLE posts 
	ADD CONSTRAINT posts_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE 
			ON UPDATE CASCADE,
	ADD CONSTRAINT posts_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;
	
ALTER TABLE friendship 
	ADD CONSTRAINT friendship_status_id_fk
		FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
			ON DELETE CASCADE 
			ON UPDATE CASCADE;
		
ALTER TABLE likes
	ADD CONSTRAINT likes_target_type_id_fk
		FOREIGN KEY (target_type_id) REFERENCES target_types(id)
			ON DELETE CASCADE 
			ON UPDATE CASCADE;
		
-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT COUNT(*) AS likes, gender FROM likes, profiles
WHERE likes.user_id = profiles.user_id
GROUP BY gender;

-- 4. Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).

SELECT count(*) as total_likes FROM likes as m WHERE id IN (
	SELECT target_id FROM likes
	WHERE user_id IN (
		SELECT * FROM (
			SELECT user_id FROM profiles ORDER by birthday DESC LIMIT 10
		) as user_id		
	)
);

-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети

WITH T AS (
	-- не отправляют сообщения
    SELECT from_user_id as user_id, COUNT(*) as rnk  FROM messages 
	GROUP BY from_user_id
	UNION ALL
	-- не лайкают
	SELECT user_id, COUNT(*)  FROM likes 
	GROUP BY user_id
	UNION ALL
	-- мало друзей
	SELECT user_id, COUNT(*)  FROM friendship
	GROUP BY user_id
	UNION ALL
	SELECT friend_id, COUNT(*)  FROM friendship 
	GROUP BY friend_id
	UNION ALL
	-- не состоят в сообществах
	SELECT user_id, COUNT(*)  FROM communities_users
	GROUP BY user_id
)
SELECT user_id, first_name, last_name,  SUM(T.rnk) AS rnk
FROM T
	INNER JOIN users U on U.id = T.user_id
GROUP BY user_id
ORDER BY rnk
LIMIT 10;
