#
# TABLE STRUCTURE FOR: communities
#
USE vk;
DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'mollitia', '2019-06-08 15:04:41', '2017-05-04 00:21:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'ut', '2013-11-02 02:10:45', '2013-02-28 08:47:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'voluptatem', '2015-02-24 17:45:50', '2016-08-07 06:27:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'odio', '2020-06-13 09:37:10', '2015-05-12 15:30:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'qui', '2015-05-14 22:26:22', '2015-12-27 12:11:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'perferendis', '2016-11-15 13:02:29', '2010-12-09 05:15:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'velit', '2016-01-18 20:20:57', '2015-11-20 00:07:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'dolorem', '2015-10-11 03:59:46', '2016-07-13 04:43:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'voluptatibus', '2017-06-04 11:08:42', '2013-09-02 13:58:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'explicabo', '2011-03-08 07:47:50', '2014-04-30 16:30:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'similique', '2015-08-28 19:18:32', '2015-07-18 09:40:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'quibusdam', '2019-04-04 01:48:52', '2013-07-06 12:30:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'ex', '2017-04-24 01:06:56', '2017-07-04 22:17:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'doloribus', '2018-02-24 22:58:50', '2020-07-01 23:48:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'repellendus', '2013-10-03 10:50:41', '2014-11-18 03:40:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'autem', '2017-12-10 02:34:15', '2012-04-04 17:09:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'vitae', '2016-09-07 16:59:52', '2020-06-09 13:55:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'debitis', '2013-05-20 09:16:02', '2010-11-14 06:10:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'officiis', '2018-11-01 09:59:57', '2012-04-14 02:54:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'quia', '2012-11-18 22:30:49', '2017-12-31 13:27:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'tempora', '2014-05-15 18:02:39', '2011-10-18 21:04:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'pariatur', '2014-05-16 22:56:20', '2017-10-28 12:21:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'aliquid', '2015-04-12 05:41:27', '2013-04-24 11:21:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'illo', '2015-11-27 03:21:30', '2017-07-02 12:49:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'maxime', '2012-03-19 07:30:14', '2011-01-03 04:12:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'aperiam', '2014-01-22 12:01:51', '2018-09-14 06:44:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'provident', '2017-07-27 07:59:56', '2011-09-11 13:18:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'adipisci', '2015-01-04 07:00:24', '2018-06-30 14:59:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'nobis', '2020-04-21 06:45:06', '2012-02-11 04:58:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'ducimus', '2018-07-22 16:55:25', '2016-12-12 09:39:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'facilis', '2012-02-20 00:56:49', '2015-04-20 19:00:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'blanditiis', '2018-06-20 19:36:50', '2013-06-24 02:52:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'occaecati', '2019-08-20 16:44:42', '2012-02-19 18:24:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'nihil', '2015-08-23 09:22:14', '2017-08-12 07:00:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'in', '2014-08-21 07:20:28', '2016-01-04 08:33:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'itaque', '2016-12-08 20:12:17', '2018-07-22 04:47:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'vero', '2016-06-15 00:10:41', '2019-06-10 05:31:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'saepe', '2015-08-19 05:58:11', '2012-01-04 08:17:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'consequuntur', '2014-01-25 02:58:20', '2019-04-15 03:57:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'dicta', '2015-04-07 01:40:10', '2012-06-11 13:23:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'rerum', '2015-02-09 07:36:47', '2017-05-21 01:32:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'laboriosam', '2017-11-28 10:02:41', '2013-06-05 19:20:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'eligendi', '2015-03-30 13:07:43', '2013-06-09 05:21:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'aliquam', '2017-11-14 13:26:39', '2011-06-03 15:18:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'fuga', '2012-01-27 11:31:24', '2013-04-23 11:39:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'et', '2018-07-30 14:36:26', '2017-04-09 21:08:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'asperiores', '2017-04-09 08:54:40', '2011-07-23 13:53:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'sint', '2018-03-11 15:01:47', '2013-06-07 20:09:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'omnis', '2015-05-29 09:06:37', '2019-06-04 17:25:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'repudiandae', '2013-01-28 05:23:49', '2017-07-09 14:35:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'dolores', '2016-03-02 10:29:12', '2016-12-09 07:57:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'ad', '2011-06-27 07:07:42', '2013-03-12 22:11:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'nemo', '2016-08-26 06:37:03', '2020-05-09 23:48:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'cupiditate', '2015-04-15 22:19:53', '2012-12-12 23:21:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'at', '2013-11-19 08:13:23', '2018-03-15 23:08:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'repellat', '2020-02-02 22:38:45', '2020-04-07 21:59:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'hic', '2013-01-28 06:29:34', '2015-02-14 03:17:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'nisi', '2015-01-02 00:50:36', '2013-10-02 03:59:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'unde', '2016-04-27 01:32:32', '2013-09-25 13:40:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'voluptas', '2018-04-20 02:39:15', '2012-08-18 06:38:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'maiores', '2016-06-10 13:57:57', '2017-07-29 15:52:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'nostrum', '2018-11-16 03:33:53', '2015-04-09 22:22:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'soluta', '2015-10-06 20:43:47', '2011-12-21 12:12:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'ab', '2017-02-09 11:42:19', '2020-08-24 01:00:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'cum', '2014-05-12 07:36:03', '2014-05-29 13:59:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'iure', '2013-05-14 11:43:15', '2014-03-08 05:55:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'assumenda', '2011-07-13 13:34:33', '2013-02-12 19:29:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'magni', '2012-04-15 21:04:37', '2017-01-30 05:04:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'exercitationem', '2018-11-25 08:52:01', '2015-07-02 08:41:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'impedit', '2017-07-11 23:53:34', '2013-09-05 22:17:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'aspernatur', '2013-02-25 02:08:23', '2013-08-06 06:41:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'rem', '2018-10-17 10:59:19', '2011-03-11 18:17:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'sapiente', '2013-09-01 00:26:37', '2019-03-17 22:26:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'veniam', '2011-01-17 02:11:00', '2011-02-19 05:17:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'alias', '2012-07-03 14:52:10', '2013-10-04 08:52:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'officia', '2019-02-17 16:40:03', '2012-12-28 09:36:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'quidem', '2015-02-23 04:31:58', '2014-11-07 01:35:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'magnam', '2014-10-16 02:19:49', '2013-04-15 08:28:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'sed', '2019-08-11 04:43:22', '2015-09-11 22:08:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'eveniet', '2012-10-27 20:05:19', '2015-08-14 03:42:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'non', '2020-01-15 09:46:07', '2012-07-14 20:41:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'consectetur', '2019-11-03 11:49:14', '2011-11-04 07:02:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'eum', '2013-07-30 05:27:20', '2015-04-10 00:04:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'esse', '2017-03-01 22:24:06', '2020-03-01 20:47:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'animi', '2013-11-24 08:34:28', '2012-05-24 19:36:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'deleniti', '2014-05-09 19:06:23', '2015-08-21 06:55:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'est', '2017-04-11 06:28:10', '2013-03-15 11:06:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'quasi', '2017-02-05 22:57:16', '2016-05-11 09:18:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'modi', '2013-11-21 01:10:04', '2015-10-26 08:29:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'suscipit', '2017-11-05 19:41:20', '2020-10-20 05:20:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'quod', '2018-09-21 09:25:14', '2019-12-29 20:03:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'ipsum', '2013-03-29 01:44:30', '2014-04-26 05:51:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'eos', '2018-07-27 13:35:38', '2015-06-26 15:12:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'quaerat', '2016-02-06 20:21:25', '2015-02-24 03:29:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'veritatis', '2020-05-01 00:27:37', '2011-04-16 05:56:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'architecto', '2015-03-09 03:58:23', '2013-05-26 10:58:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'neque', '2017-09-10 05:10:04', '2019-12-19 09:59:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'voluptates', '2019-02-12 19:44:11', '2014-10-24 11:11:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'voluptate', '2015-12-01 18:14:13', '2019-09-30 13:49:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'dolor', '2015-12-13 22:29:24', '2017-09-15 05:26:19');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 28, '2014-05-24 17:07:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 5, '2015-12-06 19:44:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 4, '2017-09-13 06:44:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 83, '2012-01-05 18:11:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 24, '2018-12-19 04:34:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 38, '2016-08-20 12:41:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 49, '2013-01-02 10:46:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 44, '2016-07-29 03:58:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 92, '2014-09-03 22:54:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 50, '2016-01-23 19:14:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 70, '2017-01-10 19:30:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 61, '2017-07-28 12:02:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 34, '2015-04-14 16:24:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 22, '2016-10-17 21:26:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 100, '2011-01-10 22:20:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 13, '2016-12-25 21:31:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 99, '2019-06-20 21:19:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 94, '2012-02-03 21:34:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 72, '2016-05-11 13:13:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 7, '2013-09-14 13:50:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 55, '2013-09-13 23:12:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 80, '2012-12-10 12:04:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 52, '2014-04-29 19:24:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 53, '2017-11-20 14:28:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 75, '2010-12-15 10:27:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 39, '2014-06-03 07:42:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 12, '2011-05-02 19:58:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 60, '2019-01-10 08:30:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 87, '2014-01-12 12:00:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 96, '2018-11-27 05:35:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 45, '2016-07-19 17:27:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 58, '2016-07-07 14:32:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 17, '2019-05-07 05:43:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 57, '2020-05-02 16:58:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 54, '2016-08-29 06:33:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 31, '2012-11-02 23:14:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 66, '2015-08-17 17:24:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 62, '2015-10-23 04:23:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 76, '2017-07-18 09:22:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 89, '2015-09-24 00:20:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 79, '2018-04-17 17:11:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 15, '2014-07-03 07:38:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 3, '2017-11-18 08:02:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 73, '2012-02-04 16:20:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 19, '2017-01-04 19:15:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 95, '2016-04-14 04:47:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 32, '2018-09-06 17:23:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 78, '2015-02-08 03:33:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 2, '2019-12-20 02:10:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 42, '2018-07-26 13:27:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 11, '2015-04-23 04:54:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 84, '2012-05-01 19:00:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 85, '2015-09-18 09:05:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 48, '2010-12-15 13:06:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 29, '2011-04-22 18:32:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 41, '2019-09-01 20:30:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 23, '2014-03-04 14:15:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 1, '2015-07-07 17:02:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 35, '2011-10-22 17:37:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 56, '2012-12-04 00:06:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 47, '2015-04-05 02:38:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 81, '2020-03-17 08:04:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 14, '2011-08-27 21:26:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 43, '2015-10-25 08:51:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 67, '2014-04-19 21:41:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 82, '2018-02-24 05:39:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 93, '2020-08-02 13:11:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 18, '2015-07-09 06:42:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 9, '2012-01-04 20:40:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 77, '2020-10-08 01:19:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 16, '2014-12-30 22:55:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 51, '2020-04-20 03:35:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 98, '2017-10-11 16:35:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 74, '2016-06-12 21:47:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 33, '2018-06-22 06:18:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 6, '2017-06-08 04:37:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 59, '2013-02-26 02:44:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 27, '2011-01-11 08:14:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 26, '2011-08-29 18:17:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 20, '2012-04-04 16:11:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 40, '2018-10-16 05:41:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 65, '2016-03-15 08:59:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 21, '2015-05-13 01:50:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 91, '2013-11-24 21:30:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 71, '2017-02-21 20:12:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 30, '2010-11-18 12:45:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 64, '2015-03-24 05:45:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 8, '2016-02-22 14:37:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 88, '2019-02-20 01:33:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 69, '2019-04-09 23:43:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 25, '2013-10-29 12:44:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 86, '2016-08-29 03:18:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 46, '2013-04-19 10:52:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 37, '2011-06-14 19:43:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 68, '2011-11-03 23:40:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 97, '2012-10-14 02:37:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 90, '2010-11-16 16:37:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 10, '2012-02-28 16:37:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 63, '2018-11-14 20:54:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 36, '2013-11-29 19:35:05');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 63, 3, '2006-05-22 12:05:32', '2000-06-07 12:57:35', '1992-01-13 13:38:50', '2018-06-04 13:09:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 75, 5, '1986-09-26 12:13:26', '2007-08-21 22:20:37', '1970-04-11 07:08:21', '2019-07-07 03:16:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 29, 4, '2020-05-31 15:13:30', '1974-04-28 15:34:39', '1980-07-30 14:21:44', '1980-03-02 14:28:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 26, 1, '1992-07-25 19:23:38', '1976-03-06 22:56:57', '1994-09-29 22:25:50', '1979-04-20 11:13:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 91, 1, '1997-05-28 01:05:25', '2019-06-12 03:07:56', '1986-02-26 11:15:47', '1995-12-29 00:58:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 78, 3, '1993-03-18 09:52:29', '2008-06-22 17:41:04', '2016-03-09 17:22:09', '1990-08-05 05:39:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 18, 3, '2011-02-20 14:13:48', '2011-11-23 00:36:05', '1981-10-10 09:29:28', '1995-01-14 20:08:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 40, 5, '2010-03-04 19:09:11', '1975-07-22 03:18:43', '1988-06-10 23:08:42', '2020-05-29 03:42:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 17, 2, '1984-10-21 21:31:23', '2017-06-28 11:56:38', '2005-11-18 04:02:33', '1990-07-26 14:59:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 56, 1, '1974-06-30 11:58:59', '1995-03-19 12:37:29', '2002-08-23 22:01:12', '2003-07-27 11:45:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 47, 2, '2015-04-17 23:26:17', '2020-09-19 16:38:53', '1982-06-04 05:17:30', '1992-03-19 12:59:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 87, 2, '2017-12-17 12:53:27', '1983-09-09 22:08:27', '1992-03-20 11:52:29', '2000-01-08 01:47:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 49, 4, '1995-12-09 09:45:49', '1977-10-24 12:06:36', '2002-12-08 07:04:30', '1987-11-30 20:12:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 83, 3, '2011-11-15 21:08:22', '1971-09-28 09:08:12', '1986-03-10 04:19:16', '1977-05-23 00:52:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 1, 1, '1992-05-16 20:25:53', '1997-10-28 20:11:52', '1979-03-01 00:50:36', '2020-10-12 03:22:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 38, 3, '1991-12-17 06:02:22', '1998-01-19 18:42:54', '2007-06-05 21:58:42', '1986-09-15 13:11:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 61, 1, '2013-04-18 14:05:58', '2013-10-03 10:45:50', '1970-05-20 17:59:13', '1973-12-11 09:52:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 97, 2, '1974-12-19 16:36:32', '1979-02-18 07:17:53', '1984-07-10 15:22:30', '1978-10-26 17:04:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 70, 5, '1996-12-25 05:19:05', '2018-07-20 04:59:33', '2000-04-20 12:34:46', '2003-02-28 06:06:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 22, 2, '2011-09-14 05:03:32', '2003-06-23 03:34:28', '2016-12-09 12:29:40', '2017-03-30 18:53:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 7, 2, '2004-07-10 23:39:12', '1971-10-02 09:18:30', '1994-09-13 18:43:55', '1994-04-08 18:32:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 24, 4, '2009-12-22 04:58:43', '2012-10-20 11:31:19', '2008-11-17 12:49:45', '1972-05-05 14:10:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 11, 1, '1997-08-03 23:38:27', '2019-02-09 19:38:17', '2013-08-11 20:18:45', '1972-04-05 15:05:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 44, 4, '1988-09-28 07:33:15', '2015-03-16 22:47:19', '2020-04-22 02:18:57', '1973-05-08 23:39:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 81, 1, '1981-01-31 04:25:53', '1987-05-30 13:45:28', '2012-04-10 13:22:14', '1976-08-18 00:25:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 59, 4, '1986-07-21 23:29:09', '1988-03-06 09:41:38', '2019-02-13 12:26:21', '1990-03-01 06:28:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 50, 5, '1997-10-02 06:21:44', '2011-01-06 04:11:47', '1975-07-17 07:01:17', '1975-05-01 01:12:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 8, 3, '1982-12-24 16:28:51', '2003-11-17 14:26:55', '1992-10-20 19:21:33', '1970-01-21 09:22:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 95, 5, '1985-07-26 08:16:27', '1981-04-06 15:43:16', '2001-06-30 17:35:30', '2017-03-23 15:46:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 57, 2, '2005-05-13 19:32:34', '1979-01-29 19:44:46', '1974-12-03 05:19:08', '1999-12-03 10:50:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 1, '1998-01-28 15:51:51', '2017-06-27 16:14:57', '2019-08-13 20:48:09', '1981-06-15 17:24:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 76, 1, '2000-11-15 18:28:19', '2006-08-15 13:11:38', '2019-03-17 22:17:27', '2000-12-09 08:37:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 43, 3, '2012-12-08 20:06:33', '1982-10-02 21:45:13', '2014-11-26 00:58:05', '2000-05-04 10:09:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 92, 2, '1973-11-26 23:43:19', '1995-01-06 03:59:41', '2004-10-08 09:44:32', '2018-06-26 03:33:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 21, 1, '1999-02-01 11:58:52', '2017-07-25 00:24:52', '2007-11-22 15:37:43', '1992-06-12 08:44:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 60, 5, '2019-12-23 04:38:45', '2000-10-29 07:48:03', '2005-10-09 17:34:16', '2009-02-21 03:53:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 52, 2, '2020-09-14 06:14:06', '2004-09-13 23:48:22', '1992-11-07 21:32:10', '1996-07-27 14:06:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 5, 5, '1975-11-07 05:03:13', '1979-10-17 20:46:54', '1992-04-13 21:09:08', '1983-12-30 23:34:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 12, 2, '1980-07-13 23:44:31', '2012-04-20 11:58:17', '1991-02-07 02:14:41', '1995-06-14 09:54:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 4, 4, '1996-09-12 10:05:18', '1975-04-09 03:24:32', '2006-12-16 05:26:50', '2020-02-06 06:56:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 58, 3, '2005-12-23 22:31:47', '1995-07-18 07:31:34', '1975-06-15 20:09:44', '2004-05-16 02:38:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 65, 5, '2011-11-21 13:41:48', '2014-08-23 13:28:54', '1988-11-07 20:36:57', '2015-04-15 06:30:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 9, 4, '2012-09-27 17:07:45', '1976-11-22 10:32:53', '2016-12-30 08:55:46', '2018-02-10 21:47:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 89, 4, '1996-12-20 05:57:16', '1994-12-29 01:38:33', '1999-11-26 05:08:26', '2011-10-19 06:45:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 42, 2, '2011-08-12 07:51:33', '2017-07-02 10:02:37', '2008-12-20 05:12:18', '1970-02-07 04:54:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 62, 2, '1971-05-25 21:32:16', '2016-09-26 13:19:39', '1990-12-11 02:56:21', '1997-01-10 22:38:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 96, 1, '1992-09-09 21:45:38', '1980-03-18 06:53:16', '1997-08-25 11:46:26', '1982-11-16 10:26:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 93, 3, '2004-11-27 19:45:54', '1975-02-28 06:11:52', '1975-06-24 17:16:23', '1981-06-17 01:14:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 6, 1, '1995-07-23 05:31:16', '1990-05-18 12:50:02', '2020-08-19 08:13:43', '2008-01-26 17:05:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 37, 2, '2010-12-02 18:53:09', '2015-04-08 12:30:26', '1998-01-27 02:32:52', '2001-07-27 04:04:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 13, 3, '2017-05-03 17:14:01', '1998-03-19 17:31:54', '2012-05-24 02:56:37', '1999-11-03 16:35:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 14, 4, '1974-01-15 18:53:30', '1994-06-01 02:53:26', '2020-08-04 19:44:58', '2018-04-07 09:53:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 15, 5, '2016-02-05 06:59:26', '1977-11-09 06:03:42', '1970-05-04 21:42:50', '1981-03-28 15:56:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 36, 1, '2019-07-27 12:10:41', '1996-02-22 11:33:40', '1982-01-24 15:20:37', '2019-08-30 21:09:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 41, 1, '2009-07-02 05:14:24', '1978-03-02 23:11:18', '2016-12-22 08:45:11', '1972-03-17 01:31:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 86, 1, '1976-01-12 09:28:20', '2003-07-20 15:21:39', '1990-07-28 16:20:12', '1985-12-12 05:01:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 99, 4, '1982-06-10 00:57:49', '1970-09-14 11:26:01', '1994-08-26 13:31:16', '2010-02-07 00:22:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 72, 2, '2011-07-14 00:32:28', '2007-01-26 22:38:33', '1980-10-27 20:39:04', '1999-10-02 01:09:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 27, 2, '2000-02-19 23:34:29', '1985-05-07 20:29:03', '2006-12-21 14:34:01', '2014-02-08 13:57:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 55, 5, '2000-10-07 17:30:35', '2016-11-10 04:50:02', '2008-10-12 14:39:08', '2015-03-06 07:51:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 16, 1, '1994-05-20 00:37:37', '1972-02-27 22:21:21', '2003-04-25 22:36:05', '1998-11-24 17:48:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 90, 5, '1991-04-28 05:58:59', '2002-03-21 16:50:17', '2010-01-27 00:06:41', '2001-06-18 15:19:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 73, 3, '2006-03-21 14:08:54', '1985-02-18 02:16:16', '1977-06-25 19:21:17', '2015-05-26 07:54:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 48, 3, '1981-05-18 21:43:50', '1987-04-11 01:15:25', '2014-10-06 07:31:53', '1971-10-06 21:11:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 100, 5, '2020-01-21 12:37:20', '2001-10-07 06:09:53', '1995-12-03 19:52:19', '1995-12-16 17:54:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 19, 4, '1981-03-17 22:02:43', '1985-10-11 10:08:27', '1996-04-25 13:10:56', '1995-10-04 17:39:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 39, 4, '1978-08-10 23:09:09', '2015-12-09 01:05:48', '1989-06-27 06:39:34', '2004-01-18 17:53:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 53, 3, '2018-09-02 04:17:42', '1990-01-25 18:37:16', '2008-04-14 22:07:44', '1991-08-14 22:08:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 25, 5, '2003-05-19 01:02:57', '2019-09-04 23:36:52', '1985-01-10 17:26:50', '1973-02-06 06:59:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 98, 3, '2016-12-10 15:43:57', '2010-08-18 11:07:13', '2014-03-10 18:42:30', '1997-05-16 16:55:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 51, 1, '1996-09-17 03:24:20', '2010-08-23 22:41:14', '2005-07-09 02:45:23', '1992-08-10 10:33:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 35, 5, '1998-04-17 14:16:07', '1974-10-07 17:16:11', '1994-09-27 12:17:37', '1982-04-29 03:39:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 33, 3, '1995-03-08 00:50:02', '2002-04-27 00:56:41', '1986-11-18 13:23:07', '1972-01-29 00:43:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 3, 3, '1977-03-25 16:23:04', '2003-07-19 10:00:18', '2014-08-21 18:34:26', '1972-10-30 13:17:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 67, 2, '2011-03-20 08:30:11', '1976-03-08 10:19:39', '2012-03-25 07:48:05', '1993-05-30 10:09:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 45, 5, '2002-02-21 08:13:51', '1992-07-26 00:34:23', '1975-03-26 23:04:35', '2020-04-15 04:12:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 54, 4, '1979-03-10 13:15:41', '1974-07-09 07:52:20', '1982-04-23 02:10:41', '1984-05-21 07:13:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 2, 2, '1983-07-26 06:59:27', '2019-08-07 23:06:59', '1976-09-12 19:51:12', '1999-07-06 06:54:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 88, 3, '1994-06-10 04:02:21', '1991-08-11 21:16:23', '2004-11-22 15:05:06', '1986-04-17 10:30:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 69, 4, '1996-02-10 07:31:08', '2015-12-15 01:31:21', '2012-12-31 20:07:04', '2011-08-18 19:18:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 74, 4, '1979-04-01 08:39:25', '2003-02-22 17:34:01', '1991-01-13 22:41:28', '1970-04-18 01:57:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 64, 4, '2000-01-07 03:48:44', '1973-01-22 18:27:39', '2010-11-02 23:55:27', '2017-01-31 01:41:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 82, 2, '2015-05-18 07:00:47', '1973-07-23 00:23:20', '1973-01-02 09:05:21', '2017-03-28 14:51:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 66, 1, '2016-11-17 01:53:26', '1986-08-01 15:16:54', '1984-11-27 02:13:03', '2008-07-24 15:13:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 77, 2, '1982-03-23 04:35:30', '1993-05-24 20:08:25', '2018-12-19 19:21:14', '2009-07-07 00:12:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 28, 3, '2000-03-26 05:51:21', '2010-04-14 07:31:06', '1994-08-03 03:37:58', '1986-05-27 22:43:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 68, 3, '1995-04-09 06:54:03', '1994-08-17 21:57:45', '2019-08-12 00:47:12', '1997-10-29 20:57:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 71, 1, '2000-10-17 23:28:57', '1979-08-05 22:10:59', '1993-05-05 18:46:13', '2000-11-16 19:26:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 20, 5, '1975-06-24 15:33:14', '1982-11-03 22:26:43', '1971-05-03 00:40:55', '2005-03-14 20:59:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 34, 4, '1986-10-25 01:33:50', '1978-02-02 21:49:36', '1976-04-25 09:57:37', '1990-04-15 09:24:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 30, 5, '1975-08-07 22:49:49', '1975-04-14 04:08:05', '1975-11-21 13:11:30', '1994-01-09 02:54:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 23, 3, '1989-09-28 04:09:58', '2016-02-25 05:34:20', '1998-11-09 18:04:37', '2011-02-19 09:37:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 85, 5, '1979-06-20 05:52:47', '1985-01-02 06:58:18', '1972-04-14 09:58:34', '2010-11-20 02:05:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 46, 1, '1991-09-20 15:16:30', '1989-10-27 09:30:48', '2004-08-01 16:25:10', '1977-01-21 17:27:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 10, 5, '1990-01-17 21:26:17', '1991-02-01 03:00:09', '2011-07-07 09:54:27', '1982-05-30 02:13:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 84, 4, '1977-06-04 14:44:46', '1976-12-01 07:27:23', '1998-01-20 03:06:36', '2019-04-05 23:38:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 94, 4, '2003-01-25 14:19:18', '1970-09-10 17:29:09', '1996-09-21 16:31:28', '1971-03-04 06:00:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 80, 5, '2018-12-15 15:20:40', '2007-05-27 19:34:26', '1971-01-02 02:26:29', '1974-06-16 04:37:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 79, 4, '1997-10-23 05:56:58', '1971-12-10 08:51:01', '1985-05-22 01:03:20', '1999-05-11 09:41:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 32, 2, '1983-02-25 20:23:34', '1993-04-26 11:06:29', '1985-06-03 22:03:25', '1998-06-01 21:59:12');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'declained', '2020-05-24 18:01:31', '2005-07-18 12:04:23');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'friend', '1996-05-02 10:44:29', '1987-10-06 15:20:19');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'accepted', '1995-11-12 07:02:24', '2003-02-18 01:07:54');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'pending', '1974-10-04 09:59:59', '1974-11-26 04:30:35');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'unfriend', '1988-04-13 14:14:05', '2003-11-10 19:49:40');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 4, 'voluptas', 31074131, '97859', 3, '2019-12-08 04:05:22', '2018-04-17 01:22:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 6, 'ad', 8587, '98859', 5, '2014-06-30 16:12:54', '2020-11-05 23:46:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 65, 'eveniet', 6046, '94287', 5, '2015-10-06 12:22:10', '2016-03-11 20:30:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 13, 'corporis', 3859, '21296', 5, '2020-05-23 11:29:32', '2019-01-01 23:22:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 21, 'consequuntur', 2141547, '66787', 1, '2012-05-02 15:25:16', '2013-01-15 13:58:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 3, 'deserunt', 227895, '69108', 4, '2017-04-24 00:35:02', '2016-10-01 11:01:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 3, 'ut', 23, '79825', 4, '2013-10-27 20:30:27', '2011-03-05 15:55:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 76, 'earum', 0, '52630', 3, '2013-10-11 21:57:02', '2016-06-08 08:08:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 73, 'maxime', 46528761, '49871', 4, '2018-08-04 13:36:33', '2019-05-14 00:28:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 79, 'consequatur', 0, '65267', 2, '2017-02-03 12:50:08', '2019-08-16 00:07:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 5, 'suscipit', 1980, '49215', 3, '2020-10-11 21:11:35', '2012-01-11 03:19:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 99, 'iusto', 301, '84767', 1, '2013-08-03 14:16:13', '2013-11-27 13:20:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 72, 'dolores', 66643735, '51417', 2, '2013-09-20 22:11:42', '2013-10-09 02:36:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 61, 'dolores', 7, '61744', 5, '2016-12-29 06:48:33', '2016-09-13 03:54:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 99, 'et', 0, '64699', 1, '2013-04-19 17:51:52', '2013-04-17 15:12:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 100, 'quis', 65674, '59063', 2, '2015-07-28 22:51:18', '2017-06-25 02:16:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 11, 'inventore', 3112584, '86243', 2, '2014-08-03 18:05:03', '2017-09-26 05:59:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 75, 'corporis', 6570, '34782', 5, '2019-08-27 18:50:53', '2012-09-28 02:22:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 91, 'ut', 99, '24161', 2, '2016-01-08 10:05:29', '2011-06-06 07:45:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 55, 'recusandae', 22, '45772', 3, '2012-06-25 03:28:28', '2016-02-03 18:28:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 20, 'officiis', 135562, '36149', 5, '2019-07-09 16:59:36', '2017-05-16 00:44:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 29, 'accusantium', 19921331, '41705', 4, '2011-04-04 05:20:12', '2015-02-28 17:08:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 25, 'sunt', 30126, '78109', 4, '2020-05-30 04:08:20', '2020-06-23 17:19:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 16, 'accusamus', 8798331, '71906', 1, '2011-10-13 22:05:37', '2017-12-17 01:02:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 100, 'enim', 5385, '15483', 3, '2011-07-09 16:07:55', '2012-12-21 20:17:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 64, 'atque', 39, '36497', 3, '2015-04-09 05:53:41', '2017-02-13 16:14:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'provident', 830024963, '39185', 3, '2020-03-22 23:51:59', '2011-08-07 04:41:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 61, 'voluptatibus', 796679, '26099', 3, '2015-11-22 05:54:54', '2016-05-16 22:52:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 72, 'esse', 54, '57829', 4, '2020-08-11 19:10:41', '2019-01-01 11:24:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 29, 'voluptate', 79749014, '38011', 5, '2011-07-22 04:05:57', '2014-08-12 09:44:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 37, 'nobis', 865507, '25548', 3, '2011-01-04 19:23:51', '2019-05-06 21:32:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 36, 'sunt', 5, '64407', 3, '2016-06-15 08:59:52', '2020-09-07 23:43:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 51, 'totam', 788, '78345', 5, '2012-09-11 13:41:44', '2013-08-23 20:10:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 58, 'aut', 2, '43657', 5, '2015-07-28 22:24:32', '2018-08-07 15:38:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 46, 'praesentium', 52, '48459', 4, '2012-11-08 07:20:55', '2018-01-18 15:01:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 84, 'expedita', 9061784, '94344', 2, '2017-09-04 00:57:10', '2014-09-25 12:42:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 86, 'at', 0, '31064', 5, '2018-06-25 05:22:07', '2012-12-10 05:09:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 29, 'eos', 5172, '25519', 3, '2014-04-27 03:30:35', '2014-11-18 19:59:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 59, 'quia', 80, '48280', 1, '2013-04-18 22:52:30', '2018-02-03 10:31:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 78, 'qui', 8454271, '75734', 1, '2020-03-16 09:03:31', '2019-12-03 03:15:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 29, 'qui', 541, '34942', 2, '2016-06-11 07:02:24', '2016-11-16 10:37:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 18, 'repellendus', 12593445, '65839', 5, '2019-06-12 22:47:18', '2017-05-24 08:23:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 2, 'ea', 9525125, '33402', 5, '2012-02-21 18:18:09', '2016-10-23 06:39:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 33, 'ut', 352, '84401', 3, '2012-12-25 23:50:35', '2019-05-09 09:39:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 34, 'ut', 2, '45410', 1, '2011-01-22 15:38:57', '2018-03-07 06:44:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 86, 'maxime', 969645, '13419', 3, '2018-05-09 11:56:25', '2018-10-19 19:54:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 78, 'sed', 71538, '51058', 2, '2012-03-27 01:52:17', '2015-08-03 21:18:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 81, 'est', 9509738, '19696', 4, '2016-09-28 23:28:26', '2020-02-02 00:40:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 72, 'eius', 9, '48027', 2, '2013-07-04 14:47:13', '2019-11-21 05:55:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 57, 'aspernatur', 880706157, '33812', 1, '2011-10-20 18:32:17', '2011-12-26 06:41:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 81, 'quidem', 41114528, '84712', 2, '2019-03-11 22:16:52', '2014-02-15 01:05:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 85, 'quaerat', 0, '52725', 5, '2011-03-11 22:56:53', '2015-12-03 19:30:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 56, 'in', 8135486, '88058', 5, '2011-10-25 04:49:19', '2015-04-15 21:20:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 9, 'repellat', 431, '85251', 5, '2011-05-05 19:22:54', '2011-03-07 14:52:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 53, 'culpa', 267465414, '73742', 3, '2019-06-06 05:25:05', '2014-05-23 23:44:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 79, 'ut', 78, '67404', 3, '2018-05-13 20:16:28', '2016-04-25 03:59:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 72, 'quidem', 668, '59340', 3, '2018-04-02 13:22:38', '2011-10-27 01:56:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 38, 'sint', 226, '42526', 3, '2020-02-23 11:52:59', '2011-06-23 00:07:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 49, 'asperiores', 75, '95408', 5, '2020-07-09 19:01:01', '2018-02-12 09:41:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 71, 'amet', 9028, '52872', 5, '2017-10-14 18:48:58', '2013-03-30 05:16:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 69, 'blanditiis', 93979, '76560', 5, '2011-10-30 13:56:47', '2011-07-09 18:30:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 28, 'temporibus', 0, '42587', 2, '2018-08-15 11:01:03', '2012-07-28 18:43:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'aliquid', 459, '24839', 4, '2012-01-26 17:12:32', '2013-04-11 13:43:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 81, 'quo', 8890, '65887', 2, '2013-05-18 12:35:38', '2015-02-17 12:33:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 8, 'neque', 67, '72297', 5, '2017-05-26 16:18:07', '2016-07-15 09:33:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 72, 'et', 97913, '39641', 4, '2014-04-26 16:20:41', '2016-07-05 16:28:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 55, 'placeat', 197584, '94836', 5, '2015-10-16 08:06:11', '2012-09-10 03:52:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 57, 'neque', 73815, '12329', 4, '2019-01-31 03:20:06', '2012-06-13 22:09:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 9, 'officiis', 666129261, '16841', 1, '2017-01-12 14:03:33', '2016-02-27 22:50:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 46, 'aliquid', 5, '38569', 5, '2014-07-22 01:18:40', '2016-09-13 18:56:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 8, 'distinctio', 209, '30398', 5, '2018-07-13 13:21:11', '2016-05-04 22:25:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 54, 'soluta', 0, '22529', 3, '2018-08-24 00:46:48', '2016-03-30 10:46:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 78, 'culpa', 135500, '25656', 3, '2019-03-02 02:19:32', '2019-12-24 09:03:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 91, 'fugiat', 0, '62583', 5, '2015-11-30 17:08:54', '2018-04-10 22:55:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 67, 'et', 4586, '38756', 3, '2020-07-21 09:53:09', '2018-04-04 00:31:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 18, 'ut', 616833, '79715', 3, '2012-05-25 05:49:36', '2015-10-28 10:38:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 42, 'exercitationem', 3168, '96751', 3, '2017-11-23 17:43:13', '2019-02-09 16:21:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 91, 'reiciendis', 950, '22179', 1, '2014-09-07 18:40:20', '2016-07-23 06:12:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 70, 'qui', 3666213, '29953', 3, '2013-08-13 03:16:19', '2011-05-15 12:05:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 10, 'consequatur', 1863, '92432', 2, '2015-04-19 12:27:18', '2015-12-16 07:22:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 10, 'molestiae', 66, '31870', 3, '2019-08-05 18:07:33', '2016-12-17 04:26:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 36, 'placeat', 0, '60161', 1, '2018-01-29 14:04:08', '2015-09-25 23:05:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 68, 'voluptatibus', 471260, '19860', 4, '2017-09-19 13:27:15', '2019-03-06 17:12:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 59, 'totam', 118446115, '73807', 3, '2013-08-28 23:05:30', '2015-10-09 05:14:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 72, 'rem', 3, '91465', 5, '2014-12-12 05:17:20', '2016-07-27 06:17:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 12, 'autem', 144, '86887', 5, '2015-12-08 01:20:49', '2016-12-14 06:16:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 45, 'molestiae', 95077838, '89779', 4, '2017-05-24 18:17:29', '2020-08-19 19:47:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 32, 'eligendi', 61, '42714', 2, '2017-05-15 09:56:06', '2014-08-02 03:40:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 27, 'pariatur', 7, '92437', 3, '2014-07-12 03:23:29', '2015-05-07 07:23:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 75, 'cum', 196330, '21474', 3, '2016-06-12 15:33:29', '2012-06-29 19:08:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 39, 'placeat', 58745, '31227', 2, '2011-04-05 05:48:57', '2011-02-22 10:46:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 42, 'deleniti', 232, '50806', 4, '2019-08-13 01:13:39', '2015-10-01 06:09:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 17, 'nostrum', 43867241, '63929', 4, '2014-01-11 17:14:34', '2011-03-13 02:38:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 20, 'autem', 1, '66372', 2, '2016-01-30 05:58:43', '2020-09-14 16:06:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 92, 'et', 99447841, '59099', 3, '2020-06-27 22:42:41', '2019-10-03 07:18:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 29, 'explicabo', 58686, '67745', 5, '2014-12-29 14:58:49', '2012-07-02 08:35:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 23, 'autem', 414, '87470', 1, '2012-11-15 17:09:40', '2011-04-02 10:47:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 25, 'totam', 58335, '81806', 2, '2015-07-14 18:04:06', '2014-06-21 06:08:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 60, 'accusantium', 552, '66678', 5, '2018-05-01 05:06:17', '2011-08-23 23:38:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 75, 'est', 5854, '35837', 1, '2011-01-31 00:41:56', '2019-05-10 07:40:47');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'unknown', '1987-10-04 19:56:53', '2009-12-21 00:39:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'audio', '2007-02-09 04:38:49', '1985-12-26 04:22:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'text', '1992-03-24 04:31:38', '2003-07-09 16:59:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'video', '1996-03-26 20:22:09', '2000-08-31 18:54:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'picture', '2012-12-26 14:18:10', '1990-12-20 12:03:58');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 39, 13, 'Tempora voluptatem eveniet qui. Doloribus natus vero incidunt in. Inventore nisi iusto aut omnis consequatur magnam numquam.', 1, 1, '2011-08-08 04:03:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 52, 19, 'Perferendis perferendis dolores non libero alias. Fugit ducimus dolorum itaque vel. Non occaecati ipsa autem modi dolorem.', 0, 0, '2012-11-30 10:50:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 69, 85, 'Hic vitae quo iure suscipit error a. Cum totam unde occaecati. Inventore quia sint aut atque odio.', 0, 0, '2020-10-02 22:12:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 28, 31, 'Est architecto quaerat eligendi hic ut. Itaque qui quidem ducimus et. Qui exercitationem vitae quibusdam. Corrupti vero veniam alias ipsa sit ex ea optio.', 1, 1, '2011-05-29 11:50:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 31, 39, 'Quae neque eum cum dolorum. Et sunt illo quo minus eligendi quaerat reiciendis. Odit recusandae est aut ut sequi autem et. Tempora alias fugiat optio.', 0, 1, '2018-11-06 03:07:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 36, 1, 'Non id perferendis ut quo repellat et. Iusto error optio omnis similique eos possimus. Vel ea deserunt fugit possimus optio.', 0, 1, '2017-02-08 03:01:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 35, 46, 'Exercitationem sint id ea officiis explicabo facere necessitatibus non. Nisi rerum voluptatibus mollitia ipsa perspiciatis in quas. Eum voluptatem id accusantium dolor. Est ipsum officiis aut fuga et cumque in.', 0, 0, '2014-07-12 06:43:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 79, 35, 'Illo commodi dolorum provident expedita aut dolorem. Fuga vel distinctio distinctio. Non nobis eius numquam dicta dolor.', 0, 1, '2017-05-20 19:26:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 17, 78, 'Sint ducimus dolorem ipsum molestiae ut. Nesciunt molestiae numquam ducimus quod eos. In distinctio perspiciatis qui omnis.', 1, 1, '2019-02-20 22:43:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 61, 17, 'Mollitia aliquid sunt blanditiis voluptatem et nisi debitis. Omnis pariatur voluptate ad animi. Et fugiat nihil voluptates ut provident optio. Molestias cupiditate officiis dolorem quo et sed.', 0, 1, '2010-12-19 08:04:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 18, 21, 'Aliquam doloribus ullam vitae. Provident et illum minima minus unde illum. Omnis cumque sint repudiandae nam. Quas porro magnam sequi illum omnis quisquam.', 0, 1, '2012-08-06 05:09:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 81, 70, 'Sed quo voluptatum non aut. Perspiciatis dolor assumenda tempora. Ab nihil ad necessitatibus minus. Praesentium fugiat quasi facere qui omnis quae facere officia.', 0, 1, '2014-12-18 09:07:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 40, 45, 'Enim dolores quisquam illo molestias ipsam quas a. Natus ut voluptatem modi consequuntur nihil excepturi. Nam aut mollitia corporis aut aut.', 1, 0, '2020-04-27 21:24:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 22, 8, 'Cupiditate non et molestiae cumque iusto eos molestias. Fugit ducimus consequatur velit molestias eos nesciunt. Voluptas voluptas dolor id.', 0, 0, '2013-04-25 08:08:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 46, 62, 'Illo sequi consequatur eos. Incidunt non ipsam consequatur nostrum recusandae dicta. Vel ratione animi rerum doloribus et qui. Excepturi omnis expedita asperiores commodi.', 1, 0, '2011-05-21 10:58:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 24, 84, 'At et velit ducimus. Est odit cumque eum culpa in provident minus repellat. Qui autem error et.', 1, 1, '2018-01-15 15:46:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 81, 59, 'Illum suscipit temporibus et nam perferendis in illum. Quisquam vel eaque sapiente itaque deleniti ex. Sed ratione in illum.', 0, 0, '2012-08-11 05:06:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 8, 58, 'Numquam esse est ea omnis a. Animi officia dolores autem non ut doloremque non. Dolore dignissimos aliquid praesentium perspiciatis enim iste cumque.', 0, 0, '2014-06-30 00:28:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 21, 71, 'Ipsa laboriosam sed vitae quasi. Labore veritatis ipsam deserunt. Et minus est sunt voluptatibus. Et voluptatem est dolor laboriosam et recusandae in.', 0, 1, '2014-05-19 17:13:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 79, 1, 'Non aut sed cupiditate dicta sit. Quam quia sed voluptatem beatae atque. Iure aut occaecati et voluptate. Maiores veritatis quis saepe sed quo optio quisquam.', 0, 1, '2014-01-15 00:51:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 88, 74, 'Est unde ducimus fugit et quasi. Illo sequi quos aut similique.', 0, 1, '2014-09-12 14:33:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 61, 75, 'Distinctio beatae optio doloremque sint impedit necessitatibus. Quo eos fuga fuga itaque ipsam voluptatum. Quis qui illo placeat tempore cum sunt dolores.', 0, 1, '2013-06-21 17:47:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 80, 31, 'Et et enim ut quia temporibus. Nam cupiditate fuga assumenda non. Officia rem aut quidem quasi dolor iste. Perferendis molestiae cum ut.', 1, 0, '2015-06-18 13:36:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 83, 39, 'Voluptatem blanditiis molestias sed iusto sed velit consequatur. Non sed laboriosam qui minima. Vero officia modi modi fugiat blanditiis.', 1, 1, '2018-10-15 09:24:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 85, 69, 'Et eum et qui possimus animi veniam cupiditate qui. Voluptatibus vel magni est et tempora et voluptas occaecati. Nemo itaque dolore totam est ducimus. Magnam earum sed nam animi et beatae. Atque provident autem voluptatem facilis occaecati.', 0, 0, '2015-05-22 20:16:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 24, 50, 'Aut ut veritatis quia eveniet. Qui rerum eveniet molestiae libero sapiente cumque non. Harum ut saepe tempora mollitia est velit voluptates. Accusantium vel illo explicabo beatae.', 1, 0, '2018-10-29 06:33:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 74, 51, 'Fuga nam et ut non suscipit. Aspernatur aliquid natus voluptas hic aspernatur ut quia. Pariatur dolorem at rerum doloremque ut. Dolorum facere repudiandae rem et deleniti laboriosam.', 0, 1, '2019-09-19 02:51:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 44, 87, 'Repellendus officia atque ipsa officia quo vel qui. Delectus unde similique ut. Similique non aut rerum quibusdam veritatis corrupti ipsum.', 0, 0, '2017-05-02 12:18:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 93, 72, 'Omnis beatae cum quae et ullam velit molestiae. Natus nostrum quae enim quam. Alias hic amet recusandae eos perspiciatis.', 0, 1, '2020-10-06 20:55:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 48, 88, 'Ad ea veniam distinctio atque eveniet consectetur consequatur. Sit vero facilis non doloremque. Vel dolorem aperiam aut sit molestiae. Molestiae dolorum corrupti architecto voluptates dolor et optio.', 0, 0, '2018-02-16 00:44:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 61, 23, 'Temporibus totam voluptatem consequatur modi praesentium et. Et ipsa eius consequuntur quo molestias iste modi. Ex eveniet vero rerum repellat inventore ipsam. Hic sit libero porro.', 0, 0, '2010-12-22 10:20:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 28, 54, 'Numquam voluptatibus hic voluptatum voluptatem consequuntur occaecati fugiat. Voluptatem culpa cum facilis autem et omnis. Neque est ea aut totam consequatur blanditiis. Quis veritatis quisquam iste id est qui laboriosam. Quia sapiente repellendus deleniti magni accusantium hic.', 1, 0, '2012-11-14 07:35:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 100, 92, 'Omnis enim eius enim odio. Laudantium molestias eos repellat alias fuga. Et ea id ut ut atque. Ab rerum velit ut voluptatem cupiditate ut saepe.', 1, 1, '2018-06-09 11:30:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 27, 90, 'Omnis eligendi in est facilis corrupti esse qui. Occaecati veritatis nihil rerum tempora aperiam aperiam est. Dolor libero itaque optio consequatur hic aut impedit nobis.', 0, 1, '2019-07-28 12:36:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 46, 29, 'Voluptatem ut aut aut quasi ipsum. Qui quos dolores reprehenderit quas ut. Enim quisquam molestias et quia quis id sed.', 0, 0, '2013-01-26 19:57:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 65, 53, 'Quo voluptatem commodi aut minima est labore. Minima qui numquam soluta enim a quis. Nihil nemo fugit aut aut error deserunt. Quos iste sunt sunt saepe unde dolorum harum nemo.', 0, 1, '2013-01-16 06:56:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 26, 76, 'Et deleniti debitis provident quod et distinctio. Cumque earum aspernatur voluptates harum beatae nostrum deserunt. Cumque ut aut rerum aut. Ducimus cum quos omnis dolorem quia eum. Tempora velit consequatur sed quae.', 1, 0, '2010-12-12 04:43:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 39, 39, 'Non nesciunt eveniet eligendi et provident incidunt sed. Illo est et et dolore qui minus. Et velit sit voluptatibus sit harum ut pariatur officia.', 1, 0, '2015-12-05 05:37:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 92, 34, 'Voluptatem ut enim recusandae iste laboriosam commodi voluptatem doloribus. Sit esse recusandae quam numquam adipisci blanditiis omnis. Nobis voluptatum iure saepe autem. In eaque aperiam sunt occaecati occaecati aut est.', 0, 1, '2017-10-09 05:36:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 11, 21, 'Dolore aut ut qui perferendis. Ut est voluptas sint quisquam vel error eaque. Quasi ex vel sint dolor id. Excepturi consectetur et harum eaque qui dolores.', 0, 0, '2020-06-05 01:51:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 57, 74, 'Voluptatem quod animi iusto perspiciatis qui. Commodi explicabo odit hic dolores. Consequatur voluptatibus magnam officia voluptates quam sint cumque.', 1, 0, '2020-05-06 19:06:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 41, 93, 'Quia quod harum qui consectetur in reprehenderit adipisci. Sunt nulla eum iste modi. Dolorum quasi possimus laboriosam assumenda iusto consequatur. Quisquam esse recusandae aliquid laudantium aliquam.', 0, 0, '2012-03-05 06:23:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 27, 39, 'Quia voluptatibus enim necessitatibus. Accusantium consectetur sed et autem ad quaerat omnis. Eligendi quasi suscipit at nisi velit.', 0, 0, '2016-09-17 00:49:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 29, 64, 'Quo voluptates ducimus doloribus eaque. Voluptas iusto possimus voluptas fugiat et voluptas. Voluptas porro rerum consequuntur non nesciunt inventore accusantium reiciendis.', 1, 1, '2012-06-15 09:19:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 77, 18, 'Dolor modi laborum commodi culpa nemo voluptatibus nam libero. Nisi eaque earum consequuntur consequatur voluptatem non error. Temporibus ut amet et quas.', 1, 1, '2020-07-04 09:47:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 36, 26, 'Deserunt inventore voluptatem est. Porro iste dolorem odio quaerat. Dolor voluptates iure vel repellendus incidunt placeat laborum.', 1, 1, '2015-03-23 11:59:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 99, 56, 'Asperiores accusantium numquam quaerat consequatur in soluta est. Ducimus illum autem vitae molestias doloribus. Quia voluptas sunt mollitia eos iste. Atque aperiam maxime rem saepe non quis sit laudantium.', 1, 0, '2018-02-15 22:58:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 68, 75, 'Qui quia explicabo rem nisi. Eligendi a sit et. Saepe ut itaque ea modi.', 1, 0, '2015-08-30 09:35:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 77, 40, 'Quasi quasi tenetur est perspiciatis neque et. Est eos sed molestias. Quia et quidem aut voluptatum porro asperiores. Veniam rem est quos quis sit.', 0, 1, '2015-03-10 08:58:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 33, 13, 'Ea sed eligendi repellendus ut repellendus nulla. Deleniti tenetur voluptatum et porro voluptatibus nulla. Deserunt consequatur quia quia fugiat. Fugit sapiente atque eos eius nulla occaecati ducimus.', 1, 0, '2015-03-18 08:47:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 41, 42, 'Voluptatem cum et numquam aut. Eveniet officiis ex dolor vitae consequatur et consequatur tempore. Laborum nostrum vel autem quibusdam qui rerum vel voluptas. Maxime nihil sed qui qui accusamus laborum.', 1, 1, '2011-03-04 03:48:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 38, 75, 'Eaque nesciunt nesciunt voluptates neque qui. Cumque corporis deserunt omnis dignissimos voluptatem ut libero. Est deserunt vel aliquam totam omnis voluptate non. Magni cumque est quis aut.', 0, 1, '2011-06-13 01:02:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 75, 99, 'Dolorem culpa molestiae dolores ipsum minus. Sit repellat perferendis odio facere qui. Voluptatem excepturi sequi ex praesentium.', 1, 0, '2019-09-24 08:49:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 5, 47, 'Quasi tempora veritatis sed beatae qui suscipit eaque. Non dolorem perspiciatis voluptas. Veritatis est soluta corporis et magnam sit. Accusantium tempore facilis et voluptates et.', 1, 0, '2017-09-24 01:48:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 16, 70, 'Dolores sint ipsum veritatis. Qui quia quam dolor dolore architecto nisi labore soluta. Sit eum dignissimos et labore esse eum. Veniam qui eveniet consequatur.', 0, 0, '2016-01-12 04:49:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 2, 43, 'Itaque et voluptatibus tenetur dolor nobis voluptatibus. Et reiciendis nam eum minima. Amet vitae itaque qui. Sapiente vitae dolorem saepe nam.', 0, 0, '2012-05-02 04:54:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 53, 66, 'Nostrum id dignissimos aut eos est enim eos doloremque. Odit ut vel sed repellat at numquam est. In praesentium illo velit voluptatem dolore et. Ab architecto numquam rerum quas debitis.', 1, 1, '2018-07-08 04:53:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 64, 25, 'Dolor et consectetur et quo et praesentium repudiandae. Et consequatur ullam beatae rem sint rerum.', 1, 1, '2015-12-02 18:09:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 9, 61, 'Accusamus et tempora maxime veniam. Voluptatum veniam ut et. Illo fuga quae magnam molestiae. Est quasi accusantium quidem quia. Alias ex in harum similique quaerat fuga id.', 0, 1, '2020-04-10 23:21:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 70, 70, 'Expedita mollitia consequatur impedit et. Ea qui in et quibusdam sit. Est omnis aut accusamus.', 1, 0, '2011-06-17 07:37:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 43, 49, 'Sed ratione est et et vel velit. Nam ullam nemo voluptatem possimus deleniti quod sequi quo. A eveniet voluptatem quo. Itaque rerum reiciendis sed ad iste tempora.', 1, 0, '2020-07-29 11:58:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 42, 89, 'Qui consequatur ut nihil quod odio est. Nulla laudantium laborum officiis repudiandae consequuntur exercitationem. Ab hic amet non cupiditate harum et. Autem omnis eaque optio laborum ut.', 0, 0, '2018-06-02 20:37:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 57, 37, 'Quia voluptate non enim perspiciatis iste. A cupiditate repellat quia quis tempora. Molestiae minima magnam velit ut perspiciatis. Eaque quia et corrupti.', 1, 0, '2010-12-29 20:03:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 63, 56, 'Sequi ea voluptatem est deleniti. Animi maiores quaerat aut pariatur.', 0, 1, '2011-09-03 19:43:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 69, 71, 'Qui consequuntur qui iste qui quae nulla fugiat. Sed aut modi qui ratione ut quibusdam ut. Ut aut nihil qui facere debitis repudiandae.', 1, 0, '2015-10-10 17:37:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 8, 55, 'Et voluptate impedit rerum minima. Voluptatem exercitationem doloremque velit quia. Minima dolorem ipsam esse et perferendis minus non in. Magni quaerat sed sit commodi qui quia.', 1, 0, '2016-12-02 03:05:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 83, 55, 'Vel autem ad autem omnis aut enim. Tempore excepturi deserunt consequuntur doloribus architecto. Quis quis et iusto officia delectus incidunt quia ab.', 1, 1, '2015-02-04 20:00:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 85, 63, 'Voluptatem cupiditate vel enim quidem suscipit amet eveniet. Alias nobis recusandae fugiat natus et eius optio. Voluptas minima modi aliquam. Qui sapiente possimus incidunt in.', 0, 1, '2019-04-22 23:38:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 44, 97, 'Ut quaerat nobis ex. Est omnis sed et voluptas. Dolor dolorem ullam alias assumenda ut.', 1, 1, '2019-01-02 14:15:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 3, 86, 'At ab dolor ea voluptatem qui maxime quas. Eius et ducimus ab eius. Sint nobis dolor est consectetur voluptas quo non odio.', 0, 0, '2018-11-15 12:57:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 93, 5, 'Aut excepturi ipsam libero doloribus quaerat. Alias voluptas assumenda odio accusantium nulla aut. Ipsam illum dolorem sint iure ad. Reprehenderit omnis mollitia sint provident voluptas. Voluptate vitae nihil atque laudantium.', 0, 1, '2012-09-12 10:03:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 54, 62, 'Corrupti eligendi incidunt est facilis voluptas quae fugiat. Quo dolorem vel nihil tempora voluptatem inventore. Quidem necessitatibus cum quo sit dolores sit nihil.', 1, 1, '2017-11-25 13:28:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 70, 6, 'Ut eveniet ipsa voluptatem rerum totam ea. Ea architecto doloremque qui doloremque assumenda ullam. Quibusdam omnis qui vel ducimus.', 1, 0, '2014-08-29 10:07:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 18, 6, 'Culpa quae doloribus animi enim id earum. Et odit consequuntur quae quos. Veritatis consequatur totam maiores.', 0, 1, '2016-09-20 05:20:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 72, 23, 'Voluptas eos ut mollitia dolore ut repellendus. Provident quo possimus aliquam sed quas dolorem. Qui repudiandae illo recusandae et eaque molestiae. At deleniti sed quo expedita et illo mollitia et.', 0, 0, '2019-10-16 21:55:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 64, 62, 'At qui soluta sunt minus et aut sunt. Ut vero facere ipsa ducimus et vel et. Dolorum quisquam ut assumenda. Recusandae eligendi ut itaque sit incidunt nulla ut aut. Numquam rerum accusantium voluptatem nihil.', 0, 1, '2011-03-02 08:41:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 29, 25, 'Eum quaerat quos enim error voluptatum ipsa. Corrupti hic animi suscipit et ut libero vel repudiandae. Ex nam laborum rerum omnis placeat labore.', 0, 1, '2019-04-14 02:32:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 37, 5, 'Consectetur expedita quos qui. Iste ex quos molestias ipsum. Recusandae modi eveniet explicabo deleniti.', 1, 0, '2019-02-18 02:20:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 91, 43, 'Ipsam qui ducimus in dolores et aut. Sit repellendus et ut sed. Nesciunt libero voluptas mollitia consequatur impedit tempore expedita. Et recusandae molestias aut totam delectus.', 0, 0, '2020-04-18 15:12:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 6, 16, 'Aliquid et minus molestiae hic laudantium sint. Est dolorem sit beatae delectus. Impedit cumque atque odio ut dolores. Nam quam aspernatur autem quis nostrum atque ex.', 1, 0, '2012-12-17 23:09:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 51, 11, 'Fugit ut iusto consequatur cumque atque inventore sit. Id illo perferendis earum quis voluptas omnis. Ad ipsam et rerum libero neque.', 1, 0, '2013-10-21 12:57:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 13, 93, 'Totam est voluptas doloribus quia. Corporis deleniti error possimus nisi quia quod pariatur voluptatem. Ex qui at dolorem eos et laboriosam.', 0, 0, '2015-10-12 14:28:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 32, 96, 'Impedit esse aspernatur praesentium saepe. Veniam est omnis doloribus similique corporis quis ut. Enim cum vel iste tenetur quas nam.', 0, 0, '2018-06-30 05:30:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 43, 33, 'Mollitia optio cumque id ullam maxime voluptatem et. Quia odit aliquid explicabo ipsam. Iste voluptatibus pariatur necessitatibus quia unde sequi.', 0, 0, '2016-10-04 10:28:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 91, 34, 'Et sint saepe placeat ducimus. Sit quia magnam ut.', 1, 1, '2019-07-23 19:33:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 58, 24, 'In accusantium error ut dolores. Dolor aut doloribus voluptatibus. Non perferendis qui magnam voluptatem recusandae in. Placeat iure quis eum fuga ea.', 1, 0, '2016-02-20 22:51:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 28, 88, 'Consequatur numquam asperiores ex saepe voluptas modi quos modi. Alias molestiae et quia voluptates delectus magnam. Earum dolorem voluptates quis temporibus eius qui ut. Fugiat repellendus consectetur harum.', 0, 1, '2017-05-31 20:08:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 19, 95, 'Delectus ab similique autem eius. Dolores quas magni iure quos dolorem quis blanditiis repudiandae. Distinctio laboriosam atque ut quam ut. Aut eius veritatis eum.', 0, 1, '2014-05-10 08:01:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 73, 77, 'Accusantium occaecati pariatur sapiente. Animi corporis necessitatibus iste dolores tenetur et. Ullam aut natus odit cupiditate. Quia ad quis ab ea fugit quos.', 0, 0, '2018-06-03 18:57:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 81, 49, 'Molestiae et minima aut quae a voluptates rerum. Culpa dolor exercitationem voluptatem officia.', 1, 1, '2016-07-10 15:37:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 57, 28, 'Consequatur alias repudiandae accusamus earum. Rem at molestiae nesciunt ut ipsum vel et. Et occaecati et accusantium aut.', 1, 0, '2016-05-12 03:48:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 88, 95, 'Perspiciatis aliquid consequatur quis omnis fugit dolor. Quod corporis debitis est dolorem autem reprehenderit debitis. Numquam fugit ducimus modi quam. Assumenda ipsam dolorem ut rerum earum.', 1, 0, '2012-04-16 08:01:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 80, 28, 'Laudantium voluptatem odit vel culpa ea amet quo. Harum est ex autem officia est magni. Voluptas in nam harum vero id.', 1, 1, '2017-10-02 00:08:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 8, 84, 'Quod et voluptas eos dignissimos. Sit repellat debitis labore facere. Natus in quam iure laudantium explicabo voluptas eveniet. Est nobis facilis ut veniam.', 1, 1, '2013-12-17 07:24:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 97, 69, 'Illo eaque est fugiat quo nulla eius quisquam. Eos molestias corrupti facere ea molestias nulla. Qui similique minus vero est.', 0, 1, '2016-08-30 12:36:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 84, 46, 'Totam et sit illo autem nostrum eum eos voluptas. Delectus autem qui ipsum hic sit quis. Odit nemo harum ipsum similique distinctio voluptatem numquam. Ullam harum laborum et ut et dolores possimus.', 1, 1, '2014-08-28 19:46:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 93, 96, 'Nesciunt veritatis unde et voluptatem praesentium aut et. Consequatur quis quisquam aliquid expedita. Velit repellat id aut praesentium consequatur ad. Voluptas voluptatem omnis voluptatibus laudantium.', 0, 0, '2014-10-20 03:35:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 47, 29, 'In iure explicabo vel iure voluptatem quae quia explicabo. Iure sed aperiam optio non est.', 1, 0, '2018-09-26 02:08:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 89, 8, 'Necessitatibus ullam adipisci voluptatem numquam eaque expedita. Vitae quidem sit ut porro. Sed est ad aliquam.', 1, 1, '2020-04-08 15:58:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 28, 77, 'Nobis qui iure libero non. Et odit iste minima voluptates veritatis omnis. Consequatur officia temporibus qui veniam architecto. Vero non enim velit eos dolor delectus ut.', 0, 1, '2016-08-29 08:15:32');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'f', '2007-02-26', 'North Ludieport', 'Guyana', '2017-06-01 01:19:26', '2011-10-24 12:06:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'f', '1984-04-28', 'Torphyborough', 'Denmark', '2014-12-23 20:23:21', '2020-03-07 10:08:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'f', '1998-10-11', 'Lake Gilbert', 'Dominica', '2015-05-02 12:24:12', '2012-11-18 16:25:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'm', '2008-05-25', 'East Juliabury', 'Reunion', '2019-10-08 07:07:32', '2014-05-01 11:07:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'f', '2011-11-13', 'Lake Edwinabury', 'Andorra', '2016-12-31 22:58:18', '2013-11-09 01:26:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'm', '1976-09-10', 'Estevanbury', 'Croatia', '2016-09-09 13:00:24', '2016-08-07 09:41:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'f', '1998-05-21', 'Maddisonview', 'Ethiopia', '2013-07-17 04:31:10', '2013-11-20 05:10:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'm', '1990-07-06', 'New Jadyn', 'Paraguay', '2012-06-12 15:15:56', '2017-09-07 10:41:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'f', '1973-01-08', 'New Russelmouth', 'Nepal', '2014-04-23 22:40:56', '2014-09-23 08:00:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'm', '1983-06-15', 'Port Reed', 'Sierra Leone', '2011-05-27 22:12:30', '2015-03-31 13:58:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'm', '1979-12-26', 'McCulloughmouth', 'Kiribati', '2012-01-17 19:33:09', '2013-02-22 17:50:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'f', '2020-05-01', 'Rowebury', 'Chad', '2013-04-18 11:54:06', '2017-08-27 12:34:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'f', '1974-04-08', 'Markston', 'Iraq', '2019-04-26 18:41:47', '2010-12-03 03:08:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'f', '1989-02-16', 'Port Conradmouth', 'Australia', '2011-04-16 09:00:46', '2018-10-14 19:14:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'm', '2016-03-03', 'Lake Sarinabury', 'Iceland', '2013-08-03 13:27:07', '2014-07-19 00:58:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'f', '1980-01-15', 'Port Lillyberg', 'Bahamas', '2010-11-21 21:47:09', '2020-02-08 04:10:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'f', '1997-08-07', 'South Fausto', 'Saint Helena', '2012-03-16 04:17:01', '2012-04-23 02:23:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'm', '1971-12-14', 'Frederikhaven', 'India', '2013-04-21 04:34:43', '2019-04-28 05:17:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'm', '1981-05-26', 'New Lauren', 'Liechtenstein', '2013-12-22 05:01:41', '2011-10-06 07:01:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'f', '2018-07-12', 'Aliyahfort', 'Montserrat', '2018-08-13 20:17:14', '2017-11-12 23:54:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'f', '2003-05-06', 'Lake Tianaborough', 'Iraq', '2019-06-10 12:17:16', '2011-10-05 20:37:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'm', '1974-10-24', 'Jerdeborough', 'Serbia', '2014-07-08 22:04:04', '2015-05-10 15:52:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'f', '1988-05-05', 'Russfurt', 'Malaysia', '2014-02-12 12:16:01', '2020-04-25 19:23:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'm', '1999-02-27', 'Lake Constance', 'Chad', '2011-02-08 06:11:14', '2019-08-08 03:12:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'f', '2009-01-23', 'Wiltonland', 'Iran', '2019-10-26 18:49:51', '2014-08-22 14:59:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'm', '1999-07-31', 'Corwinville', 'Holy See (Vatican City State)', '2019-10-20 08:00:07', '2012-07-11 00:32:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'f', '1977-05-22', 'Lake Blanche', 'Pitcairn Islands', '2020-04-21 04:01:51', '2015-03-08 20:39:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'f', '1984-07-21', 'Lake Rasheed', 'Singapore', '2012-12-13 05:41:45', '2019-07-19 09:25:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'f', '1982-08-23', 'Port Emiliestad', 'Niger', '2012-03-02 19:43:59', '2013-12-10 17:11:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'm', '1982-08-03', 'New Miracleland', 'Greece', '2019-11-13 14:07:07', '2012-08-04 20:44:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'm', '2000-04-03', 'Wuckertfurt', 'Indonesia', '2013-06-09 12:45:25', '2012-06-01 00:54:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'f', '2012-01-02', 'Lake Royview', 'Kuwait', '2020-08-07 07:21:28', '2017-11-27 23:13:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'm', '2011-05-15', 'Collinsborough', 'Benin', '2018-07-17 20:39:23', '2016-04-17 18:23:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'f', '1977-05-19', 'Orionshire', 'United States Virgin Islands', '2020-08-30 19:58:42', '2012-08-05 11:15:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'm', '1977-08-13', 'East Jordan', 'Martinique', '2013-07-20 04:39:50', '2011-10-10 04:26:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'f', '2010-06-18', 'South Eddie', 'Palau', '2011-05-14 09:11:39', '2016-05-20 18:40:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'f', '1985-02-18', 'West Tiara', 'Vanuatu', '2015-12-01 01:40:06', '2016-03-01 21:31:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'f', '1970-10-22', 'Earnestineville', 'Honduras', '2014-11-21 11:31:14', '2013-09-12 08:59:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'm', '1978-07-13', 'Leslyside', 'Madagascar', '2015-03-28 11:35:28', '2015-08-28 20:15:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'f', '2008-09-19', 'Port Keyshawnside', 'Vanuatu', '2018-08-04 11:55:35', '2016-09-11 04:05:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'f', '1972-03-21', 'Schneiderton', 'Cuba', '2020-01-09 17:42:35', '2012-10-04 01:53:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'f', '2009-06-26', 'Lake Madilynview', 'Netherlands', '2014-08-01 11:01:03', '2019-10-01 23:41:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'f', '1983-05-23', 'Port Bruce', 'South Georgia and the South Sandwich Islands', '2018-12-13 21:43:46', '2011-02-23 12:03:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'f', '2017-12-09', 'North Ivahmouth', 'Croatia', '2017-03-01 21:55:52', '2019-04-22 08:38:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'f', '1988-04-18', 'North Emmanuel', 'Micronesia', '2011-02-10 21:27:04', '2011-10-08 11:46:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'm', '1990-04-13', 'West Aniya', 'United Kingdom', '2016-09-03 23:41:39', '2012-07-29 23:21:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'm', '2014-09-30', 'East Derricktown', 'Ecuador', '2014-06-03 03:10:48', '2020-07-29 08:45:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'f', '1985-02-04', 'Torreymouth', 'Bermuda', '2019-05-20 09:35:47', '2016-10-24 01:34:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'f', '1986-02-09', 'South Akeembury', 'Fiji', '2013-04-08 13:07:02', '2014-07-11 20:40:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'f', '2017-03-25', 'East Trisha', 'Denmark', '2020-03-09 13:59:01', '2019-06-14 05:13:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'f', '1983-11-09', 'East Sarai', 'Heard Island and McDonald Islands', '2013-07-18 06:59:28', '2016-04-09 07:23:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'm', '1971-12-24', 'East Sonny', 'Montserrat', '2016-02-13 08:36:47', '2012-08-27 01:35:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'm', '2010-07-08', 'Port Susie', 'Chile', '2020-09-27 02:22:10', '2015-11-09 02:34:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'm', '2012-08-09', 'Lake Aubrey', 'Turkmenistan', '2016-09-17 11:27:22', '2016-09-02 18:50:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'm', '2018-03-19', 'Dachchester', 'Gambia', '2018-07-27 10:34:07', '2011-08-01 04:52:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'm', '2020-10-28', 'North Myah', 'Finland', '2019-06-20 00:16:39', '2014-07-17 10:38:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'f', '2011-04-25', 'Natshire', 'Rwanda', '2015-10-26 23:13:58', '2017-10-17 14:40:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'f', '2007-05-06', 'Eldonville', 'Australia', '2017-01-07 22:29:49', '2015-12-15 02:54:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'f', '2002-10-28', 'Jacksonhaven', 'Sierra Leone', '2018-06-16 20:57:41', '2018-09-26 20:49:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'f', '2009-01-10', 'Romagueraton', 'Luxembourg', '2019-09-13 02:35:16', '2011-11-03 08:39:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'm', '1992-09-22', 'O\'Reillymouth', 'French Southern Territories', '2019-05-01 00:01:10', '2018-11-29 09:16:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'm', '1985-10-04', 'West Eladio', 'Costa Rica', '2016-02-23 01:42:56', '2016-04-09 02:49:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'm', '1972-06-25', 'Powlowskitown', 'Mayotte', '2013-07-05 21:26:33', '2011-10-31 08:47:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'f', '1996-03-30', 'Port Clementinaville', 'Niger', '2013-12-22 01:34:03', '2011-02-26 08:55:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'm', '1971-09-02', 'South Eveborough', 'Djibouti', '2013-09-23 20:30:08', '2019-09-07 18:32:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'm', '1997-05-30', 'Port Allie', 'Palau', '2019-04-30 00:35:04', '2016-02-20 06:03:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'f', '1970-06-17', 'West Clintonfort', 'Micronesia', '2012-05-28 21:11:20', '2015-10-26 01:55:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'm', '2009-11-01', 'North Eladio', 'Turkmenistan', '2017-10-26 14:27:54', '2013-12-11 00:47:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'f', '1970-06-14', 'East Karine', 'Venezuela', '2014-05-22 02:42:02', '2018-12-12 13:47:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'f', '1995-09-16', 'South Joannieview', 'Western Sahara', '2010-12-17 07:44:41', '2011-06-29 06:20:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'f', '1975-05-04', 'Monachester', 'Western Sahara', '2017-05-21 09:33:06', '2015-12-09 15:06:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'f', '2004-03-30', 'North Dejuanland', 'Iceland', '2018-08-21 18:19:51', '2011-06-23 04:56:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'm', '1997-12-18', 'Bethelville', 'Marshall Islands', '2011-06-10 06:20:02', '2018-10-26 01:51:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'm', '1979-07-10', 'East Violet', 'Saint Martin', '2012-10-03 10:49:24', '2018-12-13 13:02:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'm', '1986-12-02', 'Cummingston', 'Marshall Islands', '2012-09-27 21:30:20', '2015-09-21 16:58:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'f', '2013-11-07', 'South Willardstad', 'Uzbekistan', '2013-09-07 03:06:44', '2019-01-27 03:00:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'm', '1984-01-12', 'East Silas', 'Kiribati', '2015-06-25 07:10:31', '2014-07-20 21:30:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'm', '1976-02-24', 'East Aylin', 'Guadeloupe', '2017-09-08 03:30:18', '2017-12-02 01:38:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'm', '1997-10-01', 'East Birdieberg', 'Benin', '2016-05-13 19:44:34', '2020-04-01 17:39:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'f', '1982-11-15', 'Birdiemouth', 'Jamaica', '2012-11-02 14:37:14', '2012-12-18 02:16:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'm', '2013-06-07', 'Pascalefurt', 'Cuba', '2017-06-20 20:59:08', '2014-03-30 22:16:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'm', '1970-01-29', 'Port Jena', 'Lesotho', '2017-10-25 22:39:06', '2016-11-28 01:56:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'm', '1991-02-20', 'South Modestaville', 'Israel', '2017-02-03 11:39:03', '2016-01-01 20:55:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'm', '1983-04-19', 'Lake Jalenberg', 'Niue', '2017-11-14 02:29:14', '2013-08-23 00:48:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'f', '1989-08-18', 'Sauermouth', 'Guadeloupe', '2017-11-19 06:58:03', '2019-09-07 21:26:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'f', '2010-05-10', 'South Willyburgh', 'United States of America', '2017-04-11 18:45:56', '2017-11-26 00:11:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'm', '1971-07-12', 'Lake Avisville', 'China', '2020-01-12 01:27:32', '2011-03-23 14:53:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'm', '2020-01-03', 'Port Dallas', 'Syrian Arab Republic', '2017-01-31 22:55:27', '2018-02-03 09:35:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'f', '2002-05-17', 'Carrollmouth', 'Kazakhstan', '2018-05-27 22:34:27', '2015-11-03 18:00:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'm', '2017-07-08', 'South Micah', 'Hungary', '2011-05-22 05:50:32', '2017-02-16 01:46:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'f', '1972-09-13', 'South Eliza', 'Montenegro', '2020-03-06 11:07:36', '2011-03-26 08:23:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'm', '1990-05-23', 'Jedidiahhaven', 'New Caledonia', '2015-03-24 22:42:53', '2011-06-10 12:23:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'f', '1991-04-12', 'South Arianemouth', 'Korea', '2017-05-31 07:50:24', '2016-12-10 16:28:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'm', '1972-06-16', 'Mullerburgh', 'Brunei Darussalam', '2015-05-22 18:08:59', '2019-10-15 14:41:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'm', '1974-11-02', 'Maritzabury', 'Kiribati', '2012-03-05 07:09:38', '2011-05-14 06:09:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'f', '2014-05-19', 'New Hildegardshire', 'Iceland', '2016-06-21 21:49:07', '2011-09-21 10:50:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'f', '2018-09-21', 'Lake Brennonfurt', 'Antarctica (the territory South of 60 deg S)', '2014-12-20 14:45:31', '2020-04-02 21:11:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'f', '2011-09-04', 'Jessikafurt', 'Colombia', '2014-03-08 19:56:25', '2020-03-25 08:54:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'f', '2002-09-02', 'Paulborough', 'Slovakia (Slovak Republic)', '2016-01-13 19:50:04', '2014-11-21 09:07:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'm', '2007-10-26', 'Port Bonita', 'Serbia', '2011-04-27 03:11:03', '2017-07-14 09:37:14');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Taryn', 'Romaguera', 'littel.nyah@example.org', '(700)683-0720x306', '2014-10-25 03:29:06', '2017-04-14 11:37:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Woodrow', 'Gottlieb', 'marques75@example.org', '(160)620-6870', '2016-01-26 03:17:23', '2016-12-21 11:13:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Casimer', 'Runolfsdottir', 'noel.larkin@example.com', '977-502-9901x40428', '2019-05-31 02:27:42', '2014-07-07 19:58:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Sandrine', 'Heathcote', 'rhea20@example.org', '1-717-000-8511x7808', '2013-05-04 17:47:20', '2011-04-26 20:15:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Susie', 'Lockman', 'psporer@example.org', '04454877954', '2016-04-16 19:58:26', '2014-07-26 07:48:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Berry', 'Treutel', 'ismael86@example.com', '1-825-860-9302', '2012-02-01 13:19:14', '2016-08-28 21:08:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Aniyah', 'Adams', 'mortimer04@example.net', '604.421.8508', '2014-08-26 04:04:31', '2013-11-19 12:11:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Ward', 'Dickens', 'areinger@example.org', '507-841-5289x16373', '2019-05-31 22:54:57', '2017-08-18 18:59:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Marietta', 'Howell', 'dooley.maiya@example.org', '(271)333-7118x20513', '2014-10-04 22:36:23', '2016-12-20 17:48:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Armani', 'Glover', 'amelie.wilderman@example.com', '+27(2)1443641958', '2012-09-27 20:06:27', '2015-02-14 17:05:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Guy', 'Durgan', 'kassulke.katelin@example.org', '255.886.1916', '2020-04-21 06:50:50', '2012-07-10 10:37:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Mariane', 'Gutmann', 'yasmin46@example.com', '928.615.2813x39957', '2016-10-28 22:14:42', '2016-12-20 11:06:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Fiona', 'Lakin', 'grimes.april@example.net', '1-515-236-7418x84715', '2018-02-21 22:06:34', '2020-05-04 14:05:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Kyleigh', 'Carter', 'vergie.cole@example.org', '716.838.1760', '2013-10-23 03:10:17', '2014-12-01 10:23:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Nedra', 'Okuneva', 'fermin93@example.com', '559-769-2114x06606', '2020-07-28 23:04:34', '2011-02-19 16:55:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Zander', 'Conroy', 'luna87@example.org', '1-370-679-0609x6359', '2015-03-12 00:13:52', '2020-03-15 13:21:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Alexandre', 'Hyatt', 'bernier.cullen@example.org', '800-820-1891x48409', '2019-07-21 08:37:58', '2018-06-15 20:52:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Eula', 'Waters', 'shad60@example.com', '333-647-4453x254', '2018-01-19 01:38:11', '2016-06-23 09:34:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Imani', 'Connelly', 'dolly26@example.com', '02966725841', '2015-10-27 11:29:43', '2016-02-26 14:07:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Maiya', 'Lemke', 'adrianna71@example.com', '06549660798', '2017-03-24 00:30:34', '2020-06-09 02:33:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Isom', 'Little', 'jermain46@example.org', '1-465-959-8565', '2016-01-20 22:33:40', '2013-10-21 14:38:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Arianna', 'Bayer', 'daugherty.litzy@example.org', '+83(1)4279544724', '2010-12-01 02:45:01', '2016-01-14 10:01:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Sylvia', 'Purdy', 'rschmitt@example.com', '891-973-2831x48516', '2012-12-17 19:35:26', '2017-01-13 17:30:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Kirstin', 'Jast', 'joaquin.cronin@example.org', '(421)567-8438x3409', '2019-03-22 17:24:07', '2011-05-06 03:07:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Amiya', 'Larson', 'khahn@example.com', '275-347-1001x272', '2015-04-10 16:10:07', '2016-07-31 03:22:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Alejandrin', 'Toy', 'cory.kihn@example.net', '(901)312-7129x4278', '2015-05-08 01:51:54', '2016-02-15 00:32:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Theron', 'Murphy', 'herbert.simonis@example.com', '216-631-1184', '2018-07-10 06:07:07', '2014-01-19 16:05:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Carmella', 'Langworth', 'klein.gerry@example.com', '04877151166', '2012-01-12 09:34:59', '2017-10-16 17:01:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Daphney', 'Wolf', 'odessa.cassin@example.com', '082.822.9577x45341', '2015-08-29 20:27:34', '2016-01-19 03:09:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Chadd', 'Altenwerth', 'durgan.salma@example.net', '(212)837-1447x10249', '2019-05-10 03:22:43', '2014-02-03 11:39:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Kathleen', 'Nolan', 'dayna57@example.net', '824.451.0607', '2016-04-07 20:28:48', '2013-12-30 07:02:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Carley', 'Welch', 'lera.dickens@example.org', '683-855-4518x373', '2015-06-17 02:52:47', '2016-09-01 01:27:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Donnie', 'Witting', 'enrico08@example.net', '935.306.8818', '2013-10-21 00:08:33', '2020-05-29 03:38:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Reece', 'Sawayn', 'mateo.kuhn@example.net', '(751)735-6886x63528', '2014-07-12 02:48:04', '2014-09-06 01:35:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Rebeka', 'Beer', 'kunde.kareem@example.net', '498-640-3455', '2013-05-21 15:38:41', '2011-02-15 13:23:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Wilber', 'Mayert', 'pollich.eulalia@example.net', '013-333-2446x828', '2015-04-24 15:18:13', '2020-02-05 07:19:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Mauricio', 'Torphy', 'xritchie@example.org', '(454)963-8975x59908', '2011-03-03 08:15:41', '2016-01-31 05:25:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Julie', 'Rolfson', 'zfunk@example.com', '02620442146', '2011-09-24 16:39:14', '2011-03-09 04:24:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Bruce', 'Weimann', 'baumbach.carmela@example.com', '956-685-4210', '2019-07-21 20:46:57', '2017-07-02 22:15:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Kadin', 'Considine', 'winona.borer@example.com', '(658)869-6873x8657', '2011-10-20 19:03:13', '2013-05-12 06:50:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Payton', 'Murazik', 'gprice@example.net', '1-017-295-3895', '2013-09-30 16:01:37', '2013-03-22 06:53:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Cale', 'Reynolds', 'lindsay.hand@example.org', '051.399.3756x6614', '2019-03-08 15:54:59', '2014-09-22 06:26:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Queenie', 'Rippin', 'octavia.murray@example.net', '02401414043', '2015-09-12 18:22:58', '2013-02-26 01:30:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Kenton', 'Blanda', 'ibecker@example.com', '04176272295', '2013-03-15 06:57:51', '2014-02-21 11:34:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Neva', 'Witting', 'ambrose.parker@example.net', '649-103-0177x6722', '2016-03-14 01:10:18', '2018-12-08 06:48:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Hollie', 'Balistreri', 'kupton@example.org', '1-855-619-2230x49452', '2014-03-21 14:22:33', '2011-04-15 05:32:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Bernice', 'Ernser', 'cassin.aletha@example.org', '737-070-9005x425', '2016-09-20 20:46:08', '2019-02-22 18:54:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Monroe', 'Berge', 'alexys13@example.org', '820-137-0001x3556', '2014-07-05 11:42:14', '2013-08-13 10:32:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Jewell', 'Koss', 'guiseppe.ankunding@example.com', '08635411459', '2015-03-14 06:28:31', '2013-10-02 05:47:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Lina', 'Witting', 'schroeder.cecilia@example.com', '1-166-160-5417', '2016-04-09 05:50:11', '2019-08-14 08:18:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Angie', 'Jaskolski', 'kshlerin.mavis@example.net', '588-004-3709x9436', '2016-11-18 08:05:45', '2017-04-30 12:23:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Lia', 'Stamm', 'natalie81@example.net', '(307)700-9158', '2018-08-29 11:51:53', '2018-11-18 14:35:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Anne', 'Fritsch', 'marshall85@example.com', '(817)668-9996x1835', '2015-07-08 02:01:21', '2017-06-11 05:48:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Russ', 'Orn', 'thiel.mohamed@example.org', '+82(8)9256197745', '2018-08-15 14:28:26', '2018-08-17 21:53:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Carolyn', 'Baumbach', 'ray.moen@example.org', '+00(9)9378285732', '2014-05-06 16:36:06', '2015-10-04 15:26:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Kelly', 'Koch', 'willow.lesch@example.net', '041.987.7822', '2015-11-20 12:54:01', '2016-07-02 14:44:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Dameon', 'Hartmann', 'reinger.rachel@example.com', '1-561-785-1409x811', '2015-03-04 20:50:08', '2015-08-01 18:59:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Brendon', 'Rutherford', 'pwuckert@example.com', '1-852-318-9784x2197', '2013-05-16 03:34:12', '2017-03-04 06:33:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Hudson', 'Hegmann', 'fatima23@example.net', '(050)294-7086x885', '2013-10-05 22:36:42', '2015-03-21 17:50:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Aurore', 'Witting', 'lamar59@example.com', '799-957-9558x442', '2011-10-22 16:55:50', '2015-05-15 00:06:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Hailey', 'Volkman', 'kunde.flavie@example.com', '(324)966-2734x7919', '2013-09-30 20:58:28', '2017-10-14 00:17:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Naomi', 'Emard', 'fadel.brent@example.org', '244-184-0367x92511', '2018-09-09 11:56:01', '2015-01-14 06:10:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Orlo', 'Mayer', 'fritsch.lorenzo@example.org', '132.639.1486', '2013-10-07 16:57:12', '2018-09-10 13:45:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Darius', 'Torp', 'queen78@example.com', '(094)146-0300x44282', '2014-11-29 18:21:29', '2020-09-10 04:04:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Earnest', 'Denesik', 'tstehr@example.com', '+26(0)3742399446', '2018-06-23 15:23:21', '2018-05-06 00:56:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Judd', 'Leffler', 'clemens73@example.net', '1-843-865-4393x8858', '2020-05-16 12:40:26', '2017-04-03 15:12:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Leonora', 'Walker', 'ikessler@example.com', '587-477-6262x729', '2019-06-23 08:07:34', '2016-05-14 18:40:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Arnulfo', 'Yundt', 'leichmann@example.com', '1-540-572-3857', '2017-07-16 03:45:41', '2020-10-22 23:45:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Marcelina', 'McLaughlin', 'bhartmann@example.com', '1-724-583-0349x6990', '2012-07-31 06:07:23', '2019-09-10 21:33:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Deangelo', 'Keeling', 'eugene.adams@example.net', '1-843-986-1903x66457', '2020-11-01 21:47:43', '2019-10-08 13:35:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Kirk', 'Kris', 'ward.tania@example.net', '003-173-6633', '2019-01-21 22:45:55', '2013-07-29 22:25:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Camden', 'Bruen', 'misty.hermiston@example.net', '(358)335-5733x2678', '2015-11-26 22:35:38', '2011-12-28 00:48:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Immanuel', 'Mills', 'constantin72@example.org', '771.068.7962', '2011-09-09 15:24:12', '2013-10-10 16:23:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Kobe', 'Hansen', 'brakus.trevor@example.net', '387.047.0116x96133', '2017-05-05 01:48:14', '2017-05-01 17:55:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Andre', 'Kerluke', 'frieda.blanda@example.net', '415-606-5459x9619', '2020-05-18 07:40:59', '2012-11-11 11:28:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Nova', 'Ryan', 'ruecker.arlie@example.com', '1-239-511-0907x946', '2015-12-06 10:04:08', '2014-09-29 10:23:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Zoey', 'Nicolas', 'edmond.christiansen@example.org', '1-959-774-3918x66445', '2018-06-16 17:00:05', '2019-01-22 03:17:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Cristian', 'Runolfsdottir', 'manley.haag@example.org', '08641224546', '2019-06-22 09:59:01', '2016-12-18 03:41:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Demetrius', 'Bartell', 'wintheiser.moses@example.net', '1-885-469-5529', '2016-11-21 22:42:21', '2012-05-11 08:17:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Isai', 'Monahan', 'murray.rachel@example.org', '(628)919-9152', '2019-04-22 02:41:07', '2011-04-12 05:43:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Paul', 'Weber', 'bpfannerstill@example.org', '384-397-9029', '2011-04-06 12:39:10', '2014-09-24 05:53:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Charlie', 'Collier', 'udooley@example.org', '(279)791-7281x76416', '2016-08-24 02:17:20', '2020-09-11 13:26:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Darrell', 'Ward', 'jessyca.howell@example.com', '619-938-9993x8421', '2011-09-30 05:22:09', '2013-08-09 00:52:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Edd', 'Kilback', 'smitham.raquel@example.com', '1-457-625-3593x2023', '2019-03-10 08:18:26', '2020-09-17 03:02:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Kianna', 'Morar', 'tyson.lindgren@example.net', '159.346.7343x89554', '2014-04-07 12:20:46', '2012-07-01 17:50:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Garry', 'West', 'consuelo.hand@example.net', '(383)524-1365x291', '2020-06-05 14:54:38', '2015-07-17 10:25:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Keely', 'Keeling', 'lhansen@example.org', '(105)513-9494', '2016-02-06 14:20:17', '2010-12-13 06:43:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Isadore', 'O\'Hara', 'daniela.keebler@example.com', '044.121.6753', '2016-11-13 04:21:14', '2016-08-07 21:18:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Foster', 'Aufderhar', 'tklein@example.net', '808-948-4210x4830', '2015-08-03 17:48:31', '2018-07-14 04:30:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Kirsten', 'Prosacco', 'marcel34@example.com', '207-304-8669x6247', '2020-09-08 15:18:21', '2011-10-06 09:22:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Lacy', 'Wilderman', 'jmarvin@example.com', '274-277-5309', '2016-05-05 02:49:06', '2010-11-18 09:04:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Sonny', 'Rowe', 'hkozey@example.net', '1-551-355-7548', '2013-12-11 11:26:43', '2017-10-25 01:54:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Carlee', 'Leffler', 'ifadel@example.org', '04426718009', '2016-08-02 19:59:16', '2011-01-03 17:56:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Wilma', 'Quigley', 'uharris@example.org', '+34(1)6901370476', '2012-11-16 16:21:12', '2013-06-04 18:56:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Martin', 'O\'Conner', 'nola94@example.net', '(094)114-2048x1764', '2016-02-14 19:17:13', '2013-03-04 01:37:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Scarlett', 'Kautzer', 'mathew.murazik@example.org', '136-524-3160x805', '2020-01-24 11:59:14', '2011-04-22 13:23:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Elouise', 'Legros', 'botsford.sonny@example.net', '06790528682', '2015-04-30 16:24:55', '2012-08-13 06:08:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Ashton', 'Crist', 'gjohnson@example.org', '(414)287-8919x74166', '2011-01-19 12:59:48', '2011-03-12 05:56:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Ebony', 'Hilpert', 'audreanne93@example.com', '1-244-481-6692x68809', '2018-10-23 15:56:54', '2020-09-05 18:40:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Ebony', 'Green', 'nicholas.runolfsdottir@example.org', '1-275-389-7051', '2011-02-17 21:09:22', '2019-04-23 01:32:26');


