-- В этом файле объеденены 2 пункта курсового проекта (3 и 5)

-- 3. скрипты создания структуры БД (с первичными ключами, индексами, внешними ключами)
-- 5. скрипты наполнения БД данными

-- Создаём БД сайта The Open University http://www.openuniversity.edu/
-- Информация о ресурсе https://ru.wikipedia.org/wiki/Открытый_университет_(Великобритания)

DROP DATABASE ou;
CREATE DATABASE ou;

-- Делаем её текущей
USE ou;

# TABLE STRUCTURE FOR: students
#

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя студента',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия студента',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Студенты';

INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (1, 'Eva', 'Labadie', 'jena.murazik@example.net', '083-377-3251x1948', '2016-07-19 07:20:18');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (2, 'Dortha', 'Ledner', 'stiedemann.eveline@example.net', '551.991.4689x8479', '2012-06-20 20:17:33');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (3, 'Rosella', 'Lesch', 'xgusikowski@example.net', '1-917-013-1670x42070', '2013-02-10 15:21:50');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (4, 'Nyah', 'Price', 'bherman@example.com', '541-573-1736x08630', '2014-11-03 02:59:21');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (5, 'Mekhi', 'Dare', 'bzemlak@example.com', '+30(1)9703877710', '2017-10-12 04:03:03');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (6, 'Lucie', 'Sauer', 'abednar@example.net', '1-702-289-9212x658', '2014-07-22 15:41:16');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (7, 'Chasity', 'Halvorson', 'pollich.edgar@example.com', '+36(6)0151096091', '2014-07-23 09:45:46');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (8, 'Faustino', 'Prosacco', 'micaela.grimes@example.org', '131.468.9771', '2015-08-30 23:50:39');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (9, 'Vilma', 'Aufderhar', 'radams@example.org', '(779)227-0076', '2017-01-25 10:52:34');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (10, 'Cheyenne', 'Boehm', 'raphael.gorczany@example.org', '+37(7)5933766740', '2016-07-04 18:27:37');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (11, 'Deonte', 'Marvin', 'pfannerstill.breanna@example.com', '530-997-9902', '2020-01-12 16:07:48');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (12, 'Libbie', 'Muller', 'donnelly.michael@example.net', '(153)649-6916x5411', '2012-11-23 22:23:57');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (13, 'Sallie', 'Casper', 'elvis.ryan@example.net', '(444)003-8685x159', '2017-06-03 04:44:04');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (14, 'Lilly', 'Homenick', 'barbara12@example.com', '543.689.8334', '2020-12-09 06:41:52');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (15, 'Aurelie', 'Gusikowski', 'dicki.arnoldo@example.net', '09760769688', '2018-12-11 22:44:30');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (16, 'Letha', 'Tillman', 'dbode@example.net', '788.552.1974x4378', '2020-08-19 07:46:14');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (17, 'Itzel', 'Kihn', 'cronin.turner@example.org', '985.802.5567x6544', '2013-09-30 23:42:34');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (18, 'Jovani', 'O\'Reilly', 'romaguera.carlos@example.com', '662.698.8944x746', '2020-09-25 22:19:13');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (19, 'Willis', 'Schiller', 'dkirlin@example.org', '650-334-7956x2958', '2013-06-28 15:02:54');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (20, 'Penelope', 'Koelpin', 'justice.mraz@example.com', '255-090-4007x45485', '2013-06-03 00:19:23');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (21, 'Serena', 'Armstrong', 'proob@example.org', '+55(6)4424025548', '2012-12-12 16:33:43');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (22, 'Felix', 'Schaden', 'dauer@example.net', '+82(6)3365278759', '2011-06-10 11:49:30');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (23, 'Amely', 'Schuster', 'ckunze@example.com', '554-536-2960', '2016-03-08 23:45:41');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (24, 'Aron', 'Prohaska', 'aufderhar.iva@example.com', '196.933.0136', '2019-03-30 09:18:31');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (25, 'Albina', 'Roob', 'yo\'conner@example.com', '757.541.3880x3548', '2012-12-06 06:59:59');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (26, 'Mariah', 'Kautzer', 'kelly.cummings@example.org', '1-611-583-2079x1648', '2014-09-12 01:55:18');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (27, 'Kevon', 'Bashirian', 'stephon.hackett@example.com', '269.680.9148x523', '2014-12-15 07:52:05');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (28, 'Cristal', 'Yundt', 'ihodkiewicz@example.net', '1-938-544-7677', '2014-04-10 11:54:30');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (29, 'Darrin', 'Hills', 'wernser@example.com', '604-871-4175x56471', '2011-07-12 09:30:26');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (30, 'Kim', 'O\'Reilly', 'ewintheiser@example.net', '+00(5)8165755763', '2018-03-18 05:27:40');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (31, 'Nils', 'Bruen', 'imitchell@example.com', '1-119-326-9176x45589', '2018-11-14 12:34:41');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (32, 'Paige', 'Schuppe', 'morn@example.com', '644-692-4847', '2019-01-06 21:36:04');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (33, 'Drew', 'Anderson', 'dean.ortiz@example.org', '573-882-6734x7907', '2017-08-24 17:24:57');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (34, 'Vito', 'Franecki', 'dschowalter@example.org', '+44(7)5698727679', '2011-01-05 15:25:19');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (35, 'Leanna', 'Gerlach', 'bins.ellis@example.com', '656.316.0205', '2020-03-23 08:15:22');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (36, 'Cydney', 'O\'Connell', 'waters.keshawn@example.net', '421-605-7451', '2011-01-16 15:19:58');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (37, 'Quinn', 'Zieme', 'eo\'connell@example.net', '263-938-8219', '2017-12-29 06:53:18');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (38, 'Maegan', 'Kautzer', 'clare.gibson@example.com', '(767)594-9998', '2015-10-04 06:57:29');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (39, 'Dexter', 'Kemmer', 'lleuschke@example.com', '07634651433', '2019-08-20 06:45:32');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (40, 'Nelda', 'Kling', 'mertie.waelchi@example.org', '+54(9)3232386267', '2020-03-01 00:32:29');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (41, 'Amber', 'White', 'zena.williamson@example.org', '04803357531', '2015-10-29 21:55:23');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (42, 'Maye', 'Cole', 'rlubowitz@example.org', '1-038-029-5039x50047', '2013-09-28 02:21:52');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (43, 'Jameson', 'Baumbach', 'willms.russell@example.org', '1-063-279-4313', '2015-06-30 16:34:33');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (44, 'Anastasia', 'Kuhn', 'abigale62@example.org', '380-889-5776x098', '2018-11-24 18:28:09');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (45, 'Albert', 'Bartell', 'gianni36@example.net', '310-729-3635x7209', '2010-12-21 09:46:07');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (46, 'Santiago', 'Schroeder', 'ray98@example.net', '+27(4)7077033749', '2020-07-31 21:21:18');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (47, 'Etha', 'Herzog', 'nola46@example.com', '582.547.7730x9570', '2018-12-13 12:49:06');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (48, 'Maryam', 'Carter', 'brain37@example.org', '985-409-5438', '2013-01-25 03:58:18');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (49, 'Jailyn', 'Cronin', 'o\'kon.shany@example.com', '313.852.2231x49650', '2020-09-24 17:22:58');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (50, 'Dayna', 'McKenzie', 'hoppe.kirk@example.com', '1-570-518-6508', '2016-06-13 21:11:16');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (51, 'Lucio', 'Casper', 'mario.macejkovic@example.com', '1-348-420-8870', '2020-06-21 14:48:54');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (52, 'Ettie', 'Wisozk', 'hilda10@example.net', '1-810-284-1978x6592', '2019-01-10 03:12:23');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (53, 'Watson', 'Armstrong', 'judah.hane@example.com', '401-349-2442', '2012-01-30 02:25:11');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (54, 'Lucious', 'Haley', 'ucarroll@example.net', '+78(3)0921090831', '2015-10-03 00:28:56');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (55, 'Jan', 'Konopelski', 'fadel.lorine@example.net', '060-927-5127', '2018-05-28 08:21:24');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (56, 'Ladarius', 'Thompson', 'lakin.korbin@example.com', '03879259704', '2020-01-25 19:43:57');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (57, 'Crawford', 'Pollich', 'rodriguez.pat@example.com', '+22(8)2650549998', '2018-06-11 06:16:19');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (58, 'Howell', 'Braun', 'daphney37@example.com', '(585)710-6480x4524', '2016-05-31 15:37:09');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (59, 'Irma', 'Crooks', 'lura.quitzon@example.com', '03959365267', '2014-05-27 15:13:04');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (60, 'Alycia', 'Beier', 'geovanny60@example.net', '991.780.3766x830', '2013-08-10 17:03:52');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (61, 'Davin', 'Pagac', 'reggie39@example.net', '573-129-3062', '2013-12-25 15:01:11');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (62, 'Melyna', 'Champlin', 'raphaelle41@example.net', '(812)265-2534', '2013-08-19 20:42:02');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (63, 'Tristin', 'Herman', 'rasheed.volkman@example.net', '(490)627-1504x2085', '2012-03-11 02:03:35');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (64, 'Agnes', 'Fritsch', 'marielle.runte@example.com', '09172539936', '2016-03-05 08:24:35');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (65, 'Davonte', 'Vandervort', 'pnolan@example.net', '230-058-5335', '2013-09-05 04:54:32');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (66, 'Hailey', 'Hoeger', 'elinor.stanton@example.com', '07723556993', '2016-04-07 23:16:24');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (67, 'Estella', 'Marvin', 'jaskolski.andreanne@example.com', '(336)424-6343x580', '2019-04-28 15:55:01');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (68, 'Rick', 'Mayert', 'lula75@example.net', '1-592-289-7149', '2018-12-27 22:05:26');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (69, 'Rhiannon', 'Hansen', 'westley.botsford@example.com', '807.542.2713', '2017-06-12 21:39:59');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (70, 'Ashtyn', 'Botsford', 'ulakin@example.com', '1-935-512-3469', '2014-04-23 14:04:32');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (71, 'Mitchell', 'Hand', 'hills.jose@example.org', '(964)979-6346', '2011-05-27 07:37:56');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (72, 'Vincenzo', 'Cassin', 'russel.mortimer@example.org', '(811)009-3315', '2018-03-21 13:25:30');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (73, 'Teresa', 'Koepp', 'xwilliamson@example.com', '833.214.9404x3179', '2013-12-20 23:43:51');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (74, 'Avis', 'Wolf', 'hglover@example.org', '815.656.0218', '2011-09-05 17:11:42');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (75, 'Cali', 'Kirlin', 'leanna.mohr@example.net', '131.607.7923x7864', '2015-01-25 08:51:41');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (76, 'Alycia', 'Weimann', 'zemlak.fern@example.net', '(587)259-3008', '2014-08-01 01:03:38');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (77, 'Durward', 'Bernhard', 'xmante@example.com', '00546475588', '2019-04-18 21:15:18');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (78, 'Enrico', 'Larkin', 'melvina30@example.com', '752-423-4789x97987', '2015-06-13 01:44:01');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (79, 'Rasheed', 'Ziemann', 'broderick93@example.net', '725.275.6857x43487', '2013-01-08 06:39:23');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (80, 'Barney', 'Jones', 'charlene.vonrueden@example.net', '147-508-1468', '2019-08-20 02:17:35');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (81, 'Kennedi', 'Konopelski', 'blaise25@example.com', '797-468-5165', '2013-03-13 20:01:08');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (82, 'Zachary', 'Hilll', 'arnulfo.smith@example.com', '1-016-654-2784', '2015-08-15 16:03:34');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (83, 'Bert', 'Schowalter', 'ko\'connell@example.com', '(024)204-8544', '2012-09-21 05:09:26');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (84, 'Jonas', 'Hermann', 'bernita71@example.net', '246-118-5268', '2018-11-01 16:14:12');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (85, 'Bridie', 'McClure', 'lauren.yundt@example.org', '086.118.8259', '2020-09-07 03:50:30');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (86, 'Zetta', 'Dietrich', 'gretchen41@example.com', '639.980.8065', '2015-01-26 17:06:09');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (87, 'Elza', 'Cole', 'marisa.koelpin@example.net', '458.026.1252x132', '2017-05-07 22:07:11');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (88, 'Darrell', 'Connelly', 'ymayer@example.org', '1-484-036-5038x82166', '2019-12-04 17:09:55');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (89, 'Victoria', 'Kub', 'irwin.heidenreich@example.net', '+86(5)8341720622', '2018-01-23 08:44:08');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (90, 'Winnifred', 'Lubowitz', 'adelia.bogan@example.org', '01472127049', '2015-02-12 14:15:55');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (91, 'Sterling', 'Bednar', 'bcarroll@example.net', '1-930-516-7377x53565', '2019-10-06 16:22:03');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (92, 'Joan', 'VonRueden', 'yvonne.fisher@example.com', '081.907.3685x099', '2011-05-11 07:34:18');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (93, 'Elda', 'Armstrong', 'terence.purdy@example.org', '(354)584-0288x69882', '2014-12-17 07:15:15');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (94, 'Clementine', 'Murray', 'kshlerin.yasmine@example.com', '+01(4)1973824022', '2014-03-01 00:16:47');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (95, 'Bulah', 'Kulas', 'sam60@example.net', '494.580.8102x0607', '2018-06-13 16:33:53');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (96, 'Demario', 'Rowe', 'kunze.amely@example.com', '+70(7)0861580255', '2013-07-03 21:15:53');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (97, 'Tyrell', 'Wilkinson', 'alivia.wyman@example.org', '505.527.2732x342', '2011-12-20 03:16:04');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (98, 'Kasey', 'Stoltenberg', 'quincy.powlowski@example.com', '1-650-481-1977x150', '2020-08-29 23:35:59');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (99, 'Gertrude', 'Corkery', 'brown.juliana@example.com', '171-395-1425', '2016-07-03 08:37:06');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (100, 'Dock', 'Crona', 'no\'reilly@example.net', '1-865-343-5856x5378', '2016-01-10 06:08:35');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (101, 'Eden', 'Fisher', 'gwen42@example.com', '+96(2)0791666790', '2014-12-17 20:04:11');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (102, 'Mose', 'Breitenberg', 'irau@example.com', '481-588-8871x64907', '2011-03-14 21:53:49');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (103, 'Dessie', 'Simonis', 'maryse88@example.net', '(694)725-1078x5890', '2011-08-13 09:46:01');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (104, 'Piper', 'Eichmann', 'xmcglynn@example.com', '555-822-6165x8133', '2015-01-31 11:34:33');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (105, 'Nat', 'Stoltenberg', 'upton.barry@example.net', '509-486-1251', '2019-01-01 19:02:05');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (106, 'Elenora', 'Collier', 'kwisoky@example.net', '+62(2)2175544048', '2013-12-06 05:30:36');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (107, 'Retha', 'Bauch', 'krystel.fisher@example.com', '07323664781', '2016-05-28 22:42:13');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (108, 'Philip', 'Medhurst', 'berge.alaina@example.net', '1-426-465-1952', '2014-06-02 22:41:18');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (109, 'Dorthy', 'Ritchie', 'casper05@example.org', '(978)830-1291', '2018-03-16 09:31:00');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (110, 'Johnathon', 'Kunze', 'kessler.heath@example.org', '(787)309-9292', '2019-07-30 19:10:00');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (111, 'Dan', 'Dietrich', 'alisa.kuvalis@example.org', '03565614394', '2017-07-10 20:05:50');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (112, 'Cloyd', 'Lind', 'timothy.haag@example.com', '(322)673-9233x704', '2020-03-22 15:14:31');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (113, 'Fern', 'Reichel', 'guy.swaniawski@example.com', '1-804-312-4184x31297', '2012-08-25 04:45:19');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (114, 'Elenor', 'Pagac', 'gklein@example.org', '519.195.4340x1012', '2017-07-17 08:48:19');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (115, 'Raymundo', 'Ebert', 'mclaughlin.paolo@example.org', '(700)444-4154', '2012-02-26 06:03:16');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (116, 'Madisyn', 'Ziemann', 'candida.langosh@example.net', '848.059.7161', '2014-09-25 06:19:19');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (117, 'Alexander', 'Breitenberg', 'ecollier@example.org', '016.622.4169', '2020-03-11 12:55:18');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (118, 'Cortney', 'Williamson', 'jfeil@example.com', '438.505.4347x15117', '2012-02-07 13:57:39');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (119, 'Serena', 'Kautzer', 'bayer.maurice@example.org', '507-184-2378', '2018-01-17 18:59:49');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (120, 'Zoe', 'Altenwerth', 'icorwin@example.org', '687.238.7809x7170', '2017-08-01 05:47:59');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (121, 'Brandyn', 'Thiel', 'janis.lynch@example.net', '(159)974-0991', '2016-11-03 21:46:36');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (122, 'Jakayla', 'Zboncak', 'columbus76@example.com', '064-509-2590', '2018-10-27 08:19:34');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (123, 'Felipa', 'Veum', 'uwhite@example.com', '+94(6)0573764734', '2018-09-13 20:13:31');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (124, 'Kaitlin', 'Sawayn', 'cordie.spencer@example.net', '(818)783-5656x84660', '2011-10-24 14:25:49');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (125, 'Myrl', 'Gerlach', 'okertzmann@example.org', '382.057.0791', '2019-01-25 13:22:24');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (126, 'Bert', 'Schulist', 'marc47@example.net', '1-729-874-5201x4370', '2011-07-15 01:38:53');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (127, 'Crystel', 'Kautzer', 'zander.hoppe@example.net', '(422)321-8549x44353', '2012-03-21 01:38:34');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (128, 'Armani', 'Bernier', 'rkuhic@example.net', '545.369.3553x306', '2020-03-28 16:14:28');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (129, 'Salvatore', 'Kshlerin', 'keenan.ondricka@example.org', '444-822-1946', '2019-12-23 00:27:34');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (130, 'Tianna', 'Paucek', 'klegros@example.com', '01227244440', '2012-04-07 06:47:54');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (131, 'Rogers', 'Klocko', 'jwiegand@example.com', '1-098-282-9354', '2011-03-25 21:43:52');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (132, 'Geraldine', 'Kunde', 'anibal45@example.net', '777.305.1378', '2018-02-20 11:16:27');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (133, 'Summer', 'Okuneva', 'schroeder.eldora@example.org', '+15(8)4021353990', '2016-06-24 21:03:50');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (134, 'Kasey', 'Ziemann', 'sipes.jillian@example.net', '(872)911-0616x241', '2011-06-15 22:02:39');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (135, 'Mylene', 'Wunsch', 'grady.sophie@example.net', '(132)355-3226x295', '2017-05-12 13:32:11');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (136, 'Jennings', 'Ferry', 'bcorkery@example.net', '1-274-272-8817', '2020-06-16 15:06:56');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (137, 'Violette', 'Flatley', 'kaylee.dickens@example.org', '492.411.5615x4474', '2013-11-09 18:21:38');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (138, 'Miguel', 'Koepp', 'welch.kaleigh@example.org', '356.199.3836x8752', '2017-12-05 01:36:33');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (139, 'Jesus', 'Streich', 'ubaldo.lowe@example.org', '+45(4)0507907193', '2020-08-09 17:20:12');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (140, 'Mariela', 'Feest', 'hal.kutch@example.net', '583.651.1654x90091', '2018-03-11 07:49:37');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (141, 'Amanda', 'Feil', 'georgiana82@example.net', '(347)067-2698x90978', '2015-02-20 19:50:41');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (142, 'Guadalupe', 'Bins', 'bernier.camron@example.net', '1-463-078-0618x2599', '2012-12-10 23:04:17');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (143, 'Ebba', 'Runolfsdottir', 'ledner.leopoldo@example.com', '913-848-2434', '2016-11-08 14:34:49');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (144, 'Brando', 'Breitenberg', 'yfranecki@example.org', '(217)642-1841x316', '2013-03-23 11:35:58');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (145, 'Missouri', 'Herzog', 'casey.cummerata@example.com', '(630)492-9000', '2014-05-29 15:51:03');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (146, 'Patience', 'Rohan', 'myrtie.bechtelar@example.com', '09958887468', '2020-03-02 22:35:25');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (147, 'Johnson', 'Daugherty', 'uauer@example.net', '(549)379-3961', '2013-11-08 18:23:02');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (148, 'Mario', 'Morar', 'mueller.cyril@example.com', '1-546-799-6506x8349', '2016-10-16 07:17:29');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (149, 'Annalise', 'Toy', 'jannie.braun@example.org', '656-189-1933x8632', '2018-07-27 08:11:19');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (150, 'Charley', 'Walsh', 'lelah62@example.org', '(528)318-3687', '2019-05-19 10:37:01');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (151, 'Marcia', 'Johnson', 'nella50@example.org', '(631)903-0736x898', '2017-02-17 07:55:40');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (152, 'Gerry', 'Denesik', 'o\'hara.arnoldo@example.net', '445.838.5543x235', '2020-07-02 10:47:36');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (153, 'Winnifred', 'Halvorson', 'mflatley@example.com', '(777)104-1491', '2020-11-07 16:41:04');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (154, 'Eva', 'Ledner', 'tyson68@example.net', '1-778-438-9288x1091', '2017-12-26 16:24:03');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (155, 'Cathryn', 'Vandervort', 'khoppe@example.org', '576.607.1668', '2019-12-20 18:18:33');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (156, 'Liliane', 'Johnston', 'janis15@example.org', '08107945725', '2019-06-01 17:53:40');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (157, 'Kyler', 'Leuschke', 'xrogahn@example.org', '1-892-094-7193', '2012-03-01 16:55:38');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (158, 'Doris', 'Spencer', 'josue.heller@example.org', '742.769.7167x152', '2010-12-17 05:07:24');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (159, 'Kyla', 'Schoen', 'kobe.koepp@example.com', '(936)185-0552x4287', '2015-02-20 12:01:58');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (160, 'Amanda', 'Schulist', 'runte.quentin@example.net', '1-264-420-4669x79592', '2017-03-19 15:42:23');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (161, 'Idella', 'Hyatt', 'pbins@example.org', '1-450-496-5770x100', '2017-11-10 14:24:29');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (162, 'Ceasar', 'Mosciski', 'maribel56@example.org', '489-955-1057x715', '2014-01-21 05:15:49');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (163, 'Carli', 'Jast', 'olson.vita@example.net', '1-742-782-6945', '2018-05-30 10:05:50');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (164, 'Shyann', 'Koelpin', 'fchristiansen@example.com', '(949)815-0510x297', '2013-12-07 08:25:29');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (165, 'Garrick', 'Cassin', 'lherzog@example.net', '+75(2)5937140611', '2018-06-03 10:30:33');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (166, 'Rhoda', 'Marvin', 'orville47@example.com', '335-979-6128x3048', '2020-07-21 13:26:44');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (167, 'Joey', 'Conn', 'keebler.demetrius@example.net', '342-281-7177x7685', '2018-11-14 02:16:57');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (168, 'Julianne', 'Moore', 'obins@example.com', '(172)540-8149', '2017-05-01 00:07:15');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (169, 'Virginia', 'Moore', 'chaz65@example.org', '1-149-765-1744x891', '2016-04-12 12:31:17');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (170, 'Maximilian', 'Carroll', 'hellen.kessler@example.org', '+72(5)1162275762', '2011-01-17 18:12:31');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (171, 'Maci', 'Satterfield', 'rosalia.nikolaus@example.net', '005-724-5356x332', '2016-01-19 02:34:58');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (172, 'Leanne', 'Howe', 'dedrick35@example.net', '832.280.4309', '2017-05-10 23:34:13');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (173, 'Bethany', 'Breitenberg', 'dixie.pacocha@example.com', '1-024-306-9421x6160', '2013-12-13 13:52:43');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (174, 'Prince', 'Langworth', 'lwatsica@example.net', '+11(4)3877624171', '2018-03-28 06:04:57');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (175, 'Shayna', 'Yundt', 'rogahn.pearlie@example.org', '237.345.6569x97500', '2012-11-01 09:55:37');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (176, 'Jaquan', 'Bechtelar', 'tianna.mayert@example.com', '(717)014-6007', '2017-03-16 10:19:40');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (177, 'Alaina', 'Mosciski', 'scole@example.com', '075-703-8139', '2019-04-16 02:12:36');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (178, 'Lera', 'Swaniawski', 'huels.jacey@example.org', '00317714748', '2014-12-20 03:08:06');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (179, 'Laney', 'Gibson', 'osmith@example.net', '508-237-3447x3979', '2014-11-24 09:32:01');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (180, 'Damien', 'Ondricka', 'millie.abbott@example.net', '817.554.8561', '2013-02-06 20:44:27');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (181, 'Pierre', 'Hoppe', 'scotty82@example.com', '(124)686-0233x88630', '2019-09-27 09:25:24');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (182, 'Esta', 'Hyatt', 'nikolas.wehner@example.org', '901-581-7162', '2011-03-20 03:12:27');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (183, 'Frank', 'Borer', 'ostanton@example.org', '(258)366-9609', '2012-11-23 19:57:32');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (184, 'Katarina', 'Prohaska', 'angelica.skiles@example.com', '(519)007-5267x96798', '2018-07-27 14:26:26');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (185, 'Seth', 'Kerluke', 'margarette29@example.org', '00252373068', '2011-11-26 19:43:15');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (186, 'Julian', 'Labadie', 'aheidenreich@example.org', '1-142-789-6830x315', '2018-04-14 01:28:34');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (187, 'Hardy', 'Padberg', 'margie57@example.net', '929-191-6352x11054', '2013-08-01 15:36:19');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (188, 'Skye', 'Lesch', 'o\'conner.dee@example.com', '1-872-977-8706x01128', '2012-05-22 11:19:20');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (189, 'Keon', 'Smith', 'lois15@example.net', '963.485.0515x5492', '2014-11-14 04:43:44');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (190, 'Gwen', 'Pouros', 'coty.stiedemann@example.org', '1-343-094-0790x1392', '2013-07-05 17:15:20');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (191, 'Manuel', 'Nikolaus', 'schaefer.otto@example.com', '(949)103-6277x833', '2013-12-01 08:43:51');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (192, 'Mabel', 'Schroeder', 'amy.swift@example.com', '1-553-951-7928', '2012-12-10 08:26:33');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (193, 'Weston', 'Emmerich', 'amani81@example.com', '+18(6)0133287388', '2017-12-05 16:44:39');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (194, 'Margret', 'Sanford', 'charity.shields@example.net', '253-036-3002x9625', '2017-09-26 13:08:55');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (195, 'Stacey', 'Schuster', 'harley.swaniawski@example.org', '1-866-912-6858', '2016-08-24 11:11:43');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (196, 'Kenyon', 'Daniel', 'cordelia30@example.com', '+20(7)1472495168', '2017-03-25 19:58:14');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (197, 'Monty', 'Kub', 'ferne21@example.com', '1-020-837-3589', '2019-07-17 20:23:26');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (198, 'Leonie', 'Zieme', 'tanya.mckenzie@example.net', '657.509.7611x2464', '2020-10-25 08:17:44');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (199, 'Abigayle', 'Schumm', 'annie06@example.com', '1-259-406-8458x194', '2017-01-15 11:21:20');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (200, 'Johathan', 'Moen', 'kuphal.aiden@example.com', '1-317-371-3728', '2016-01-08 23:34:34');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (201, 'Kimberly', 'Connelly', 'wendell.runolfsdottir@example.com', '178.616.5710', '2014-12-20 01:54:36');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (202, 'Oda', 'Bogan', 'betsy52@example.net', '644.913.9950x00443', '2017-08-18 21:36:00');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (203, 'Cameron', 'Sawayn', 'marge.ernser@example.net', '(374)353-5318x46258', '2012-11-20 21:54:07');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (204, 'Brendan', 'Little', 'carissa.lynch@example.com', '691.303.9625x16790', '2017-08-26 07:24:02');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (205, 'Llewellyn', 'Schoen', 'grant.harrison@example.net', '(233)010-1666x8385', '2015-05-16 20:07:39');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (206, 'Lola', 'Cummings', 'kailyn.bartoletti@example.org', '+09(2)2170096563', '2014-03-23 07:45:55');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (207, 'Porter', 'Steuber', 'barney64@example.com', '1-141-941-5141x6401', '2013-10-05 15:25:04');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (208, 'Marcelina', 'Ruecker', 'bella53@example.org', '(868)129-5297x78198', '2015-01-17 19:24:43');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (209, 'Hayley', 'Balistreri', 'johnson.mayert@example.com', '+40(1)2395255359', '2011-03-05 22:02:15');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (210, 'Halle', 'Mosciski', 'ifarrell@example.net', '1-643-745-4461x627', '2013-03-19 05:03:03');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (211, 'Alycia', 'Keeling', 'fisher.kelly@example.com', '1-222-968-2768x793', '2013-11-13 04:59:46');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (212, 'Jamie', 'Heaney', 'stella74@example.com', '685.032.4864', '2012-03-13 13:33:53');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (213, 'Luisa', 'Larson', 'sonia27@example.net', '(645)523-7787x819', '2018-08-16 14:22:11');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (214, 'Roxane', 'Cruickshank', 'aurelia71@example.net', '01167172250', '2019-01-12 21:13:57');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (215, 'Queenie', 'Durgan', 'tod22@example.org', '622.440.8625x6216', '2020-06-04 19:05:19');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (216, 'Wade', 'Dickens', 'pcartwright@example.org', '+19(6)7197495632', '2014-06-21 10:11:18');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (217, 'Hobart', 'Nicolas', 'nikki.yost@example.org', '(613)899-8117x76482', '2014-04-26 10:09:14');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (218, 'Gerda', 'Ritchie', 'manuel.schinner@example.com', '512-162-5593x010', '2015-06-15 18:23:46');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (219, 'Assunta', 'Renner', 'kgottlieb@example.net', '(097)183-0681x38066', '2015-10-17 04:59:41');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (220, 'Ludie', 'Friesen', 'ladarius.torp@example.net', '407-787-2531', '2015-10-01 05:06:18');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (221, 'Buck', 'Prohaska', 'bernhard.arnulfo@example.com', '+34(1)8438787525', '2014-12-08 12:18:45');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (222, 'Marcelle', 'Windler', 'hermiston.martina@example.com', '423-205-5492', '2016-09-14 22:56:07');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (223, 'Brendan', 'Schamberger', 'grempel@example.com', '1-422-067-3706x5514', '2020-08-16 14:45:02');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (224, 'Wilburn', 'Bradtke', 'cory.lemke@example.com', '842-590-4174x277', '2014-04-10 14:21:39');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (225, 'Clinton', 'Kris', 'zhirthe@example.org', '(016)435-0519x25751', '2017-02-07 07:07:08');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (226, 'Melyssa', 'Rice', 'hlangosh@example.org', '1-794-492-5804x072', '2014-09-06 06:19:41');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (227, 'Alexzander', 'Rath', 'jevon.swaniawski@example.com', '01858834562', '2013-08-22 07:15:28');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (228, 'Wilmer', 'Smitham', 'gjerde@example.org', '436.079.7896x791', '2012-01-24 00:58:19');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (229, 'Minerva', 'McDermott', 'gloria.krajcik@example.com', '440.443.8882', '2017-05-18 03:45:33');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (230, 'Rhett', 'Medhurst', 'katelin.padberg@example.net', '(979)618-1004', '2014-10-03 14:40:29');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (231, 'Tania', 'Ward', 'ushanahan@example.com', '1-566-068-5187x100', '2013-10-16 04:46:15');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (232, 'Brook', 'Stoltenberg', 'o\'hara.alphonso@example.com', '05766783648', '2018-10-09 10:44:06');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (233, 'Minnie', 'Heaney', 'susana56@example.org', '(165)780-6560x9373', '2016-01-02 07:46:18');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (234, 'Flavio', 'Hane', 'ozemlak@example.org', '00812630114', '2012-05-16 22:26:40');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (235, 'Clarissa', 'Feeney', 'esteban22@example.org', '06950240279', '2018-03-04 11:50:14');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (236, 'Estelle', 'Gusikowski', 'eden06@example.com', '418-361-5720x33909', '2015-06-16 04:13:04');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (237, 'Kayla', 'Casper', 'stroman.alysha@example.net', '037-295-5279x568', '2018-07-02 10:02:09');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (238, 'Sonny', 'Langworth', 'valerie.hoeger@example.com', '119-198-2797x29759', '2019-05-31 16:21:19');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (239, 'Zora', 'Lang', 'tess.orn@example.org', '301.861.8030x0292', '2016-02-17 14:39:09');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (240, 'Adelle', 'Bernhard', 'margarete.nader@example.net', '05038556620', '2017-12-27 17:39:17');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (241, 'Thaddeus', 'Wisoky', 'vspencer@example.org', '007.488.2041x9531', '2017-08-11 05:24:42');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (242, 'Elyse', 'Labadie', 'mwalker@example.org', '(423)150-5221x687', '2020-04-28 17:29:27');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (243, 'Arvilla', 'Hilpert', 'karl07@example.com', '(573)149-9557', '2019-02-08 21:20:06');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (244, 'Alia', 'Gleichner', 'aniya.fritsch@example.com', '1-233-195-8806x79685', '2015-03-02 06:06:07');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (245, 'Samantha', 'Waters', 'verlie.denesik@example.net', '+72(4)1370559719', '2011-01-31 03:07:30');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (246, 'Hugh', 'Konopelski', 'rgreen@example.com', '+95(7)8880742468', '2013-10-07 05:55:10');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (247, 'Obie', 'Leannon', 'grimes.lera@example.org', '+05(2)2037992538', '2016-02-10 00:49:46');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (248, 'Brian', 'Steuber', 'dalton.gutmann@example.net', '(822)052-4523', '2019-07-08 13:09:09');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (249, 'Yessenia', 'O\'Conner', 'vprice@example.com', '1-102-155-7178x2783', '2016-03-16 00:09:32');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (250, 'Rodrigo', 'McLaughlin', 'matt.green@example.com', '+95(4)3891861872', '2011-09-21 02:18:44');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (251, 'Pinkie', 'Considine', 'vschuppe@example.com', '130-000-1697x7779', '2016-11-01 12:01:56');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (252, 'Winston', 'Lueilwitz', 'gtromp@example.com', '+28(2)9335199978', '2011-08-01 15:40:59');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (253, 'Maximillian', 'Grimes', 'sienna.barton@example.net', '556-528-1929x94010', '2015-11-09 15:51:10');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (254, 'Delilah', 'Lemke', 'bertram75@example.org', '534.321.9595x41647', '2012-02-01 22:34:54');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (255, 'Burnice', 'Kuvalis', 'barry.lueilwitz@example.com', '314.081.3135x267', '2019-03-25 07:49:15');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (256, 'Annie', 'Connelly', 'britchie@example.org', '(668)377-2960', '2012-01-25 10:22:23');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (257, 'Columbus', 'Littel', 'paolo53@example.net', '996-788-2826', '2020-10-24 17:57:16');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (258, 'Gillian', 'Sanford', 'broderick.bechtelar@example.net', '+88(1)9982470323', '2015-07-19 19:00:07');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (259, 'Jasper', 'Bayer', 'klangosh@example.net', '1-879-528-7980', '2011-10-10 19:40:57');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (260, 'Lenora', 'Deckow', 'lebsack.alberto@example.org', '1-238-192-4724x42368', '2016-04-05 00:05:07');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (261, 'Betsy', 'Windler', 'pruecker@example.net', '+98(7)4449385646', '2010-12-25 18:31:41');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (262, 'Maximus', 'Nader', 'iokuneva@example.com', '(357)755-4488', '2013-10-29 04:35:10');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (263, 'Flavie', 'Douglas', 'tjast@example.com', '002.164.6704x66546', '2014-03-11 03:50:26');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (264, 'Annabelle', 'Bartell', 'emmanuel.kirlin@example.com', '(165)082-6807x200', '2011-12-27 06:23:39');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (265, 'Gerson', 'Jast', 'ebernier@example.com', '009-187-8271', '2015-09-03 20:21:30');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (266, 'Anita', 'Jacobson', 'melany.frami@example.net', '(768)750-1974x76852', '2011-08-15 21:32:57');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (267, 'Percy', 'Ritchie', 'ucormier@example.org', '1-226-729-0674', '2015-08-17 03:35:03');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (268, 'Elroy', 'Kuvalis', 'zackery18@example.com', '(745)575-2476x21164', '2014-01-24 07:50:12');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (269, 'Valentin', 'Daugherty', 'kaylin98@example.net', '452.961.6432x8792', '2018-08-06 13:42:17');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (270, 'Anastasia', 'Stamm', 'whomenick@example.org', '966.587.6982', '2017-05-11 08:48:27');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (271, 'Nestor', 'Klein', 'lenna56@example.org', '884.881.5839x27318', '2020-08-07 15:14:19');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (272, 'Elna', 'Halvorson', 'linnea08@example.net', '1-200-306-4713', '2011-10-31 10:46:13');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (273, 'Jakob', 'Hilpert', 'bradford85@example.com', '572.552.7553x1127', '2019-03-19 23:03:28');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (274, 'Percy', 'Mann', 'bgrimes@example.com', '569-119-2125x947', '2012-04-18 00:16:01');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (275, 'Rubie', 'Osinski', 'sallie91@example.org', '691-463-5686x786', '2013-02-16 00:24:11');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (276, 'Gunnar', 'Armstrong', 'fred.hudson@example.com', '+04(9)6207968345', '2018-01-25 23:32:34');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (277, 'Bret', 'Gislason', 'dorian.dooley@example.org', '300-404-8603', '2011-01-06 19:06:35');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (278, 'Fannie', 'Goyette', 'ekiehn@example.com', '1-522-064-2493', '2018-04-24 18:04:38');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (279, 'Bradley', 'Hermann', 'jacquelyn.dibbert@example.net', '272.181.9267x251', '2013-08-24 11:09:10');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (280, 'Renee', 'O\'Kon', 'salvador64@example.net', '1-029-286-4147x35244', '2016-12-28 17:30:54');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (281, 'Corine', 'Schultz', 'berenice.nitzsche@example.net', '09067120332', '2014-05-06 07:51:19');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (282, 'Virgil', 'Schowalter', 'bbins@example.com', '605.493.5746x2404', '2011-10-17 04:15:29');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (283, 'Friedrich', 'Gislason', 'yazmin.price@example.org', '07016010448', '2013-04-08 15:36:11');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (284, 'Ricky', 'Miller', 'evelyn66@example.org', '570-078-3421', '2011-03-18 05:44:31');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (285, 'Natalie', 'Prosacco', 'botsford.marietta@example.net', '724-142-8752', '2013-07-28 10:36:39');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (286, 'Corrine', 'Graham', 'willy.robel@example.org', '1-738-318-5753', '2013-12-12 09:11:55');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (287, 'Milton', 'Collins', 'uherzog@example.net', '(712)712-2639x193', '2013-01-06 03:08:35');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (288, 'Erich', 'Dibbert', 'marianne.littel@example.org', '312-704-2502x32446', '2012-11-10 09:45:56');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (289, 'Sibyl', 'Goodwin', 'weber.ryleigh@example.org', '1-561-971-7125x463', '2018-09-10 04:15:34');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (290, 'Felix', 'Anderson', 'schimmel.norene@example.com', '1-112-134-8717', '2016-08-07 21:57:20');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (291, 'Edgar', 'Satterfield', 'terrill.bechtelar@example.net', '595.007.3045x30736', '2013-04-08 18:17:33');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (292, 'Mandy', 'Gorczany', 'ffeil@example.net', '(639)540-3202x824', '2014-05-27 06:40:43');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (293, 'Lisa', 'Bahringer', 'curtis47@example.com', '+01(6)0888375066', '2019-02-28 14:58:41');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (294, 'Patricia', 'Labadie', 'rigoberto55@example.org', '06781946027', '2011-08-27 22:31:42');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (295, 'Orval', 'Tremblay', 'abe88@example.com', '861.691.2249x6714', '2016-11-17 13:17:02');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (296, 'Madge', 'Wyman', 'dach.tierra@example.org', '095.707.3151', '2016-05-18 10:52:33');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (297, 'Tomas', 'Eichmann', 'kbode@example.com', '08405413121', '2018-07-24 06:58:46');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (298, 'Verlie', 'Gibson', 'guillermo13@example.org', '926-738-6014x1408', '2014-11-01 10:15:25');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (299, 'Verdie', 'Zemlak', 'tyreek.hegmann@example.com', '(906)767-1145x494', '2012-08-09 18:30:27');
INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (300, 'Brain', 'Beahan', 'dillan.reilly@example.net', '1-486-882-3976', '2012-03-04 18:20:12');

# TABLE STRUCTURE FOR: area_of_research
#

DROP TABLE IF EXISTS `area_of_research`;

CREATE TABLE `area_of_research` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название области научных исследований',
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Краткое описание',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Области научных исследований';

INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (1, 'SocialStadies', 'Quia voluptatum in voluptatum similique ea aspernatur accusantium. Iusto eum illum aut est. Alias adipisci quis iusto hic. Culpa tenetur sed atque ex non amet dignissimos.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (2, 'ComputerScience', 'Amet aspernatur aliquam quae quo. Architecto ea esse culpa suscipit. Delectus sit aliquam alias atque. Rerum architecto delectus ut.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (3, 'Marketing', 'Aliquid velit repellendus ut ullam voluptas. Laboriosam quod incidunt doloribus veniam. Corrupti consequatur est dolore. Numquam ea quas eos et.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (4, 'Algebra', 'Quas vero alias vel voluptatem distinctio doloremque. Dolor et eum dolorem molestiae quibusdam ipsam. Consequatur debitis dolorem autem.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (5, 'Astrobiology', 'Quae provident assumenda sed quidem. Est magnam occaecati doloribus et deserunt qui quasi. Repellat omnis qui vitae est ut velit aut. Aut cumque distinctio velit quia.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (6, 'Literature', 'Explicabo odit cum nihil dignissimos vitae quas. Dolorem omnis a quasi velit consequatur. Minima distinctio molestiae corporis velit quis animi. Recusandae fugiat et labore deleniti expedita.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (7, 'Biology', 'Nemo velit et eum officia doloremque autem. Libero consectetur est natus ut. Voluptatum voluptates ducimus veniam sit voluptate asperiores dolorem. Et explicabo sed eaque qui voluptas.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (8, 'HTML', 'Minima perspiciatis beatae inventore modi qui dolores et non. Reiciendis voluptas neque nam. Mollitia alias placeat tempore. Dolorem et ducimus quia et ea perferendis id rerum.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (9, 'Maths', 'Consequatur voluptate tenetur laboriosam ab minus dolores. Laudantium qui adipisci voluptatem et necessitatibus corporis deleniti. Totam quam dignissimos dolorum odit nihil quis.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (10, 'History', 'Tempore delectus a quia qui. Ut cumque rerum quibusdam nostrum dolores sit. Suscipit quia est ipsum tempore nulla explicabo.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (11, 'Psychology', 'In saepe ut consequatur itaque. Ut unde voluptatem inventore et ab quia qui. Modi libero dignissimos molestias a doloremque est voluptatum.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (12, 'English', 'Hic unde deleniti veniam dolorem. Fugit officia aut rerum at qui. Quisquam repellendus quasi dolores qui. Aliquid et earum soluta alias ipsam nulla vero.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (13, 'Economics', 'Dolores nostrum veritatis voluptatem aut nesciunt eum. Quibusdam vel aliquid blanditiis occaecati occaecati vel voluptas et. Deserunt vero ratione dolore repellat.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (14, 'Business', 'In cupiditate qui a maxime. Possimus repellendus eos tempora voluptas libero. Excepturi fugiat dicta corporis hic quae vel. Rem quia et dolor molestiae eum.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (15, 'Religion', 'Labore aliquam quia ea id dolorem. Earum officiis sunt dicta libero et eaque architecto. Eius sed et quod aliquam nemo dolores.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (16, 'Cosmology', 'Repellat inventore ut dolorum porro. Dolorem voluptas magnam soluta qui libero eveniet laborum. Facilis amet omnis autem nihil sunt unde. Culpa est aliquam ut.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (17, 'Python', 'Eveniet beatae et et vero qui ut. Id fugiat beatae tenetur et maiores enim odio dolore. Culpa sint ad cumque excepturi veritatis incidunt culpa quos. Ratione enim ut natus libero.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (18, 'Physics', 'Voluptas molestias suscipit nemo sed voluptatum. Praesentium quas dolor sunt qui optio. Laudantium quaerat ut dicta nisi.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (19, 'Java', 'Expedita autem consectetur et vel iure fugit. Totam modi dolores eligendi assumenda expedita et.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (20, 'Geography', 'Dicta enim odit harum aperiam laudantium placeat. Facilis expedita amet animi illo voluptatem magni. Qui sequi a est provident cupiditate ab iusto facere. Eos ullam mollitia magnam itaque vero dolores.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (21, 'PersonalDevelopment', 'Sed magnam nemo magnam alias et quo. Et quia maiores sit eligendi est occaecati suscipit. Inventore ea asperiores dolor magnam a voluptas.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (22, 'Engineering', 'Officiis et esse sed cumque nam vero soluta libero. Praesentium nihil quia doloremque provident deserunt odit eum ea. Nobis cupiditate ex neque doloribus illo et. Excepturi voluptate autem sit voluptates nihil. Ducimus voluptas sint qui et illo.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (23, 'Archeology', 'Quaerat atque et vitae rerum laborum. Dolorum provident sed consequuntur nisi voluptates ut saepe. Expedita incidunt in facilis doloremque. Cupiditate eum porro tempora non et id.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (24, 'Music', 'Harum dolor sit maxime ipsum. Rerum vel ut illum. Ea voluptatem nam id earum qui veniam consectetur. Labore vero fugit sit ducimus optio.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (25, 'Medicine', 'Itaque voluptatem voluptatem recusandae. Laborum aperiam quia est rerum ea voluptatem. Ut earum eius maxime sunt ea. Tempora ipsa aut eaque sit ut officiis.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (26, 'Art', 'Labore similique totam saepe totam officia eum voluptatibus. Dolor vel autem enim sed aut explicabo ratione. Nostrum sit quidem veniam vel repellendus. Sed facere quasi non qui maxime recusandae velit.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (27, 'Astronomy', 'Ipsum ut qui aut aspernatur. Sit similique aspernatur nostrum cupiditate officia corrupti et. Magnam occaecati atque quo ut. Magnam aut molestiae est odit officiis labore.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (28, 'DataBases', 'Fuga itaque nemo et aut beatae. Assumenda aut accusantium ullam doloribus est. Quaerat aliquid vero voluptatem nihil occaecati.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (29, 'Philosophy', 'Qui cum fuga quia repellat dolor. Rerum aperiam sit sed deserunt cupiditate et dolor. Tenetur quae molestiae voluptates ea aut. Enim aut sequi ipsa et commodi. Omnis consectetur dolorum eum et vero.');
INSERT INTO `area_of_research` (`id`, `name`, `description`) VALUES (30, 'Chemistry', 'Suscipit velit praesentium voluptates ipsam doloremque inventore. Eius quis ipsam voluptatum omnis maiores sint. In a officiis doloremque eaque omnis voluptate itaque ut. Non vitae fugit aut natus aut consequatur voluptatum qui. Illo eos voluptatem nobis quam ab quo aperiam.');


#
# TABLE STRUCTURE FOR: courses_offered
#

DROP TABLE IF EXISTS `courses_offered`;

CREATE TABLE `courses_offered` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название курса',
  `details` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Описание курса',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Курсы';

INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (1, 'Literature', 'Voluptatem et aut voluptas aut aut magni doloribus omnis.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (2, 'Algebra', 'Fugiat et dicta nihil cum pariatur minus dolores tempore.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (3, 'Java', 'Autem earum mollitia autem et est aut est.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (4, 'SocialStudies', 'Et voluptate rerum occaecati et.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (5, 'Psychology', 'Non iste consequatur provident voluptatem.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (6, 'Philosophy', 'Aspernatur quidem autem enim unde.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (7, 'Maths', 'Et perferendis aut nihil rem praesentium veritatis.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (8, 'Art', 'Sit itaque in aperiam.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (9, 'PersonalDevelopment', 'Velit consectetur deleniti quaerat odit a.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (10, 'Astronomy', 'Quam minus ut sunt est.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (11, 'ComputerScience', 'Magnam esse impedit veniam ea modi architecto sunt.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (12, 'Chemistry', 'Et minima id suscipit aperiam.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (13, 'Geography', 'Ut quidem magni est placeat sit ducimus.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (14, 'Medicine', 'Ullam est magnam a necessitatibus praesentium ipsam.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (15, 'Astrobiology', 'Occaecati et et sit quia dicta.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (16, 'Economics', 'Voluptatem et id dolorem et qui.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (17, 'Physics', 'Perspiciatis temporibus nam eveniet est aut est quidem.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (18, 'Cosmology', 'Doloremque accusantium rerum similique aut.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (19, 'Business', 'Illum vel qui ullam aliquam nostrum harum sequi.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (20, 'Python', 'Dolor et voluptatibus ab hic.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (21, 'Engineering', 'Earum ea ut eos enim iusto aut.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (22, 'HTML', 'Adipisci autem qui pariatur velit illum et eum quia.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (23, 'Marketing', 'Assumenda necessitatibus quod quis sit aut.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (24, 'Religion', 'Facere iusto aliquam et dolore id.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (25, 'Biology', 'Unde aperiam quod dolores aut nam aut ab.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (26, 'History', 'Iure debitis tempora perspiciatis itaque eos nisi quia.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (27, 'DataBases', 'Distinctio totam nostrum dolorem ipsum sint et.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (28, 'Archeology', 'Dolores perferendis in in ipsum itaque expedita ea qui.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (29, 'English', 'Dignissimos voluptatem et velit voluptatibus voluptas.');
INSERT INTO `courses_offered` (`id`, `name`, `details`) VALUES (30, 'Music', 'Ipsam quis consequatur esse provident iste quaerat voluptatum.');


#
# TABLE STRUCTURE FOR: courses_scheduled
#

DROP TABLE IF EXISTS `courses_scheduled`;

CREATE TABLE `courses_scheduled` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `course_offered_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ',
  `other_details` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Детали расписания',
  PRIMARY KEY (`id`),
  KEY `courses_scheduled_course_offered_id_fk` (`course_offered_id`),
  CONSTRAINT `courses_scheduled_course_offered_id_fk` FOREIGN KEY (`course_offered_id`) REFERENCES `courses_offered` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Расписание';

INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (1, 12, 'Est quos et eum dolorum blanditiis ut ea. Suscipit molestiae commodi harum rerum veritatis recusandae rerum. Saepe beatae dolores voluptatibus voluptatibus necessitatibus deserunt non. A sed illum rerum natus odit sint temporibus. Officia voluptas in delectus officiis.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (2, 4, 'Et assumenda earum eos totam vel laudantium. Quia eligendi consequatur eum excepturi. Aut qui est voluptate veritatis ut dicta id.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (3, 21, 'Modi enim dolorum ab est voluptas. Beatae consequatur dolorem soluta quos sunt nihil odit iste. Accusamus nesciunt saepe est voluptatem voluptatem.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (4, 3, 'Vel pariatur qui quisquam sapiente voluptates possimus. Ea quisquam dolor magnam officiis magnam quidem. Non temporibus ut iste animi. At quis alias quis necessitatibus officiis totam. Sunt quam ut aut omnis asperiores vel amet.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (5, 30, 'Dolores tempora sit accusamus temporibus est quae aut numquam. Blanditiis est voluptas omnis dolor et dignissimos consequatur. Consequuntur necessitatibus omnis minus.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (6, 7, 'Similique accusantium et sunt quos quia. Porro et eveniet deleniti tempora eius qui consequatur. Nemo neque minima sed laborum sunt temporibus.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (7, 27, 'Voluptatem quisquam rerum ut consectetur eos soluta. Ut dolores reiciendis a fuga ut. Ea id doloremque consequatur.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (8, 22, 'Voluptatem et rem non rerum et est eius. Autem dicta in molestias ut eos vel.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (9, 15, 'Reprehenderit sint et consequatur deserunt. Illo hic illo exercitationem assumenda est ea. Qui aut quasi alias possimus laborum illo numquam. Consequuntur non ratione recusandae sint.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (10, 8, 'Debitis odit omnis molestias mollitia magni ipsum. Molestiae autem voluptatem ipsam modi. Earum magni corrupti eaque eveniet earum. In autem quas id aperiam.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (11, 18, 'Repellat nobis rerum nihil blanditiis earum. In dolorum non delectus. Quisquam pariatur autem velit et quas unde. Eum eveniet exercitationem ratione quis sed architecto aut suscipit.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (12, 24, 'Neque ullam sunt nisi velit distinctio. Vero dolores ex pariatur nesciunt esse dolor soluta temporibus. Velit ipsa aut sed incidunt iure. Ipsum et et et et perspiciatis pariatur explicabo.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (13, 11, 'Quibusdam est dolores ut et. Molestiae nam quas corrupti. Pariatur rerum architecto exercitationem voluptatem doloribus qui. Consequuntur quisquam voluptatibus et earum voluptas ratione qui.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (14, 26, 'Eos est dolorum quibusdam et et voluptas incidunt deserunt. Non sit quod consequatur veniam nihil. Qui ut temporibus maxime voluptatem cum est corrupti incidunt. Officia vel aperiam quis sunt dolore est.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (15, 6, 'Voluptatum rem praesentium quae quia. Et cupiditate odit nobis adipisci et. Qui est quidem ipsum at quo quis eveniet laborum.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (16, 28, 'Nostrum corporis officiis blanditiis modi qui temporibus. Porro iure beatae fugit. Quod similique dolorum repellendus repudiandae. Consequatur aut vitae voluptatem et.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (17, 29, 'Nam iusto praesentium eaque quibusdam sapiente ut perferendis eveniet. Saepe illum sit est perspiciatis voluptatum eligendi.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (18, 1, 'Ut praesentium quae voluptas ut voluptas quia. Ipsum accusantium reiciendis porro qui. Laboriosam reiciendis illo cupiditate est omnis.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (19, 19, 'Non eaque praesentium beatae doloremque. Expedita minima tempora non et maxime ut.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (20, 13, 'Vel aut vero ad iste. Perspiciatis amet totam sint. Reprehenderit facilis reprehenderit dolor est.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (21, 5, 'Sed et qui possimus similique est sunt atque. Distinctio recusandae excepturi nesciunt consectetur modi consectetur beatae eum. Dolor nemo animi odio at. Accusamus consequatur facilis et amet.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (22, 25, 'Non necessitatibus et culpa blanditiis. Ad consequuntur doloribus quam iure voluptates. Consectetur velit ratione consequuntur quia qui. Et aspernatur velit sit beatae. Libero quisquam eum nulla labore.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (23, 2, 'Fugiat ad architecto quis est iusto qui sit. Consequatur alias nam corrupti id et non quas. A accusamus voluptate atque laborum. Hic adipisci et reprehenderit ducimus consequatur nesciunt deleniti.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (24, 20, 'Eos occaecati laudantium beatae eveniet facilis dolor molestias. Corrupti architecto et error consequuntur quos. Numquam odio quos delectus nulla aliquid ipsam quaerat. Ab sed placeat earum voluptatem eius non quia similique.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (25, 14, 'Illo nihil non ut ex reiciendis rerum. Repellat et in minima autem laboriosam dicta nisi maiores. Repellat distinctio et corporis amet voluptatem.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (26, 10, 'Accusamus repudiandae voluptates ullam totam itaque et alias. Hic quam quas est magnam numquam a vitae. Animi est deserunt optio illum.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (27, 17, 'Sunt rerum asperiores quasi commodi enim. Laboriosam commodi error beatae sequi ea et. Iste et quidem cumque optio. Ipsam eos alias eum voluptates possimus.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (28, 23, 'Quas voluptas mollitia possimus expedita voluptatem quidem. Officia saepe laborum et itaque ea. Labore velit sed autem corrupti aliquam molestiae recusandae. Deserunt numquam corporis doloribus omnis voluptatem sed totam.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (29, 16, 'Aspernatur quo iste quos delectus magnam. Laborum ratione est odit aut et. Eligendi consequatur eligendi ut distinctio hic quia. Et et fugit consequuntur earum.');
INSERT INTO `courses_scheduled` (`id`, `course_offered_id`, `other_details`) VALUES (30, 9, 'Dolorum a numquam aliquam pariatur sit similique et. Aliquid natus voluptatem et. Cum impedit dolores maiores nobis sit eum. Iusto tempore corporis cumque velit eos aspernatur quidem.');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `student_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`student_id`),
  CONSTRAINT `profiles_student_id_fk` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (1, 'M', '1977-09-10', 'South Reanna', 'Faroe Islands', '2020-07-28 12:06:14');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (2, 'M', '1992-09-28', 'Hansenfurt', 'New Zealand', '2020-10-18 00:50:38');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (3, 'M', '1986-08-01', 'South Anaischester', 'Gambia', '2020-11-01 04:30:47');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (4, 'M', '2011-05-26', 'East Elwinberg', 'Sweden', '2020-03-09 11:55:21');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (5, 'M', '1994-08-09', 'Jameystad', 'Peru', '2020-06-02 23:48:33');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (6, 'F', '2006-11-10', 'Darrellburgh', 'Seychelles', '2020-08-22 05:48:27');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (7, 'F', '1993-07-09', 'Willstad', 'Antarctica (the territory South of 60 deg S)', '2020-10-12 22:52:10');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (8, 'M', '2017-10-07', 'Schuppetown', 'Heard Island and McDonald Islands', '2020-12-08 21:51:37');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (9, 'F', '2017-10-22', 'Clintonborough', 'Holy See (Vatican City State)', '2020-11-02 09:22:55');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (10, 'F', '1989-12-19', 'Port Lance', 'Israel', '2020-09-14 18:20:35');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (11, 'F', '2010-12-12', 'Lonnyfort', 'Mayotte', '2020-07-11 08:33:18');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (12, 'M', '2016-11-04', 'West Annabel', 'Paraguay', '2020-06-03 23:38:04');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (13, 'F', '1988-11-01', 'Janicebury', 'American Samoa', '2020-09-22 10:40:11');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (14, 'F', '2017-09-18', 'Breitenbergshire', 'Antigua and Barbuda', '2020-04-01 14:35:28');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (15, 'F', '2014-09-25', 'Lonhaven', 'Ghana', '2020-11-13 16:48:36');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (16, 'M', '2018-11-11', 'West Dedric', 'Jamaica', '2020-08-22 13:45:05');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (17, 'F', '1970-06-18', 'Theoberg', 'Bouvet Island (Bouvetoya)', '2020-02-08 17:36:05');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (18, 'M', '1976-04-21', 'Lake Natalia', 'Jamaica', '2020-05-19 17:03:45');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (19, 'M', '2001-12-11', 'Lake Quentinshire', 'Equatorial Guinea', '2020-03-21 07:06:23');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (20, 'F', '1995-06-16', 'Blanchemouth', 'Honduras', '2020-01-09 00:38:11');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (21, 'F', '2009-03-11', 'Leonormouth', 'Barbados', '2019-12-19 18:08:00');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (22, 'F', '2006-05-24', 'Hermanshire', 'French Southern Territories', '2020-01-20 05:33:50');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (23, 'F', '2010-03-26', 'South Ernaland', 'Estonia', '2020-08-07 23:55:46');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (24, 'F', '2018-06-29', 'East Hertha', 'Denmark', '2020-09-17 07:24:19');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (25, 'F', '2015-03-27', 'Sauerfurt', 'Burundi', '2019-12-26 23:32:36');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (26, 'M', '1998-04-05', 'Lake Jeromy', 'Algeria', '2020-02-18 00:45:47');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (27, 'F', '1989-09-22', 'North Corinetown', 'New Caledonia', '2020-11-04 10:36:08');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (28, 'F', '1981-04-29', 'Wisozkland', 'Cameroon', '2020-05-19 08:25:16');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (29, 'F', '2005-09-03', 'Port Elissaside', 'Mali', '2020-05-11 04:45:22');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (30, 'M', '2007-11-19', 'Whiteburgh', 'Grenada', '2020-05-31 04:28:32');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (31, 'F', '1997-04-24', 'Mekhibury', 'Serbia', '2020-10-31 10:12:23');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (32, 'M', '1985-08-05', 'Muhammadmouth', 'Barbados', '2020-09-17 22:37:12');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (33, 'F', '1972-02-14', 'Carterport', 'Somalia', '2020-10-28 18:27:25');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (34, 'F', '2009-10-11', 'Rosenbaummouth', 'Iran', '2020-03-31 21:16:10');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (35, 'M', '2009-05-09', 'Bulahmouth', 'Lebanon', '2020-03-22 09:39:59');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (36, 'F', '1997-03-01', 'West Deangelo', 'Svalbard & Jan Mayen Islands', '2020-09-05 04:27:46');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (37, 'M', '1977-05-02', 'East Mazie', 'Paraguay', '2020-11-22 21:57:43');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (38, 'F', '2001-05-23', 'Reichertfurt', 'Bangladesh', '2020-10-17 19:45:28');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (39, 'F', '1992-12-25', 'Lake Lucioland', 'Tajikistan', '2019-12-21 19:44:52');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (40, 'F', '1994-10-17', 'Leuschkeside', 'Serbia', '2020-02-03 16:18:40');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (41, 'F', '1973-10-19', 'Cartwrighthaven', 'Syrian Arab Republic', '2020-01-19 19:30:20');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (42, 'F', '1982-05-07', 'Dejonbury', 'Moldova', '2020-05-05 08:57:14');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (43, 'M', '1988-05-15', 'Jedediahton', 'Sudan', '2020-08-21 01:17:49');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (44, 'F', '1975-11-15', 'Lake Yasmin', 'Korea', '2020-03-14 03:46:16');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (45, 'F', '1989-11-11', 'Romafort', 'Nicaragua', '2020-08-15 16:28:44');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (46, 'F', '2020-02-23', 'West Ayana', 'Dominican Republic', '2020-09-23 07:32:33');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (47, 'F', '1977-09-14', 'North Imeldaville', 'Malaysia', '2020-03-19 05:38:55');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (48, 'F', '1988-12-30', 'Lacyshire', 'Oman', '2020-02-08 02:34:34');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (49, 'M', '1973-04-02', 'Vivianhaven', 'Oman', '2019-12-26 13:58:39');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (50, 'M', '1988-07-15', 'East Alfonzo', 'Czech Republic', '2020-11-19 08:26:47');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (51, 'F', '1972-12-07', 'Loweburgh', 'Montenegro', '2020-03-26 14:41:58');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (52, 'F', '2003-04-29', 'Mullerfort', 'British Indian Ocean Territory (Chagos Archipelago)', '2020-09-09 16:15:49');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (53, 'F', '1971-03-18', 'McKenzieview', 'Andorra', '2020-06-03 01:31:27');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (54, 'M', '1971-02-04', 'Port Carmen', 'United Arab Emirates', '2020-05-26 14:55:40');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (55, 'M', '2018-07-29', 'Lake Jeffrymouth', 'Panama', '2020-09-26 03:55:19');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (56, 'M', '1993-03-28', 'Greenfelderside', 'Belarus', '2020-04-15 06:46:11');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (57, 'M', '2017-12-07', 'Grantview', 'Uzbekistan', '2020-01-01 12:33:29');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (58, 'F', '2018-09-01', 'Corrineside', 'Thailand', '2020-05-31 08:18:27');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (59, 'F', '1993-03-21', 'Carrollville', 'Cayman Islands', '2020-11-28 09:56:34');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (60, 'M', '1992-03-23', 'Lemkeport', 'New Caledonia', '2020-08-13 01:05:44');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (61, 'F', '1978-12-28', 'East Joan', 'Jordan', '2020-01-24 13:06:53');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (62, 'M', '1987-08-29', 'Uptonton', 'French Southern Territories', '2020-01-05 13:52:00');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (63, 'F', '1985-11-21', 'East Jerad', 'Jordan', '2020-07-22 17:18:26');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (64, 'F', '2003-03-10', 'New Kyleighfurt', 'Korea', '2020-01-24 18:33:43');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (65, 'M', '1989-03-21', 'Shanahanshire', 'Azerbaijan', '2020-07-15 13:41:03');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (66, 'M', '1989-06-17', 'South Raphaelle', 'Anguilla', '2020-06-26 11:49:11');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (67, 'F', '2000-09-09', 'South Isidroberg', 'Antarctica (the territory South of 60 deg S)', '2020-01-02 14:22:01');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (68, 'F', '2001-04-26', 'West Ellis', 'Equatorial Guinea', '2019-12-17 07:31:41');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (69, 'F', '1987-06-02', 'Joanieshire', 'Uzbekistan', '2019-12-23 08:19:31');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (70, 'M', '1995-05-31', 'North Prudence', 'Spain', '2020-06-30 01:54:35');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (71, 'F', '2003-04-19', 'O\'Reillyfort', 'Thailand', '2020-06-03 01:09:19');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (72, 'F', '2006-10-25', 'Vaughnport', 'Greenland', '2020-12-02 05:41:13');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (73, 'F', '2015-06-07', 'East Alvina', 'Burundi', '2019-12-26 12:36:49');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (74, 'M', '2000-11-03', 'Kyleighfurt', 'Heard Island and McDonald Islands', '2020-06-09 17:56:27');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (75, 'F', '1977-07-06', 'South Brooklyn', 'Antarctica (the territory South of 60 deg S)', '2020-07-21 04:27:54');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (76, 'F', '1987-06-30', 'Uniqueland', 'Kuwait', '2020-05-30 05:44:27');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (77, 'F', '1997-10-16', 'North Rick', 'Japan', '2020-03-06 11:04:19');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (78, 'M', '1989-01-23', 'Mullerton', 'Bahamas', '2020-09-19 10:05:39');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (79, 'M', '1994-05-01', 'Cormierburgh', 'Nicaragua', '2020-03-06 16:45:25');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (80, 'M', '1996-10-17', 'Lake Reillybury', 'Afghanistan', '2020-11-24 02:15:24');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (81, 'F', '1981-11-12', 'East Jeffery', 'Austria', '2019-12-25 11:04:33');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (82, 'M', '1984-11-29', 'Schustertown', 'Turkmenistan', '2020-04-28 10:32:49');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (83, 'F', '2003-05-24', 'East Zita', 'Morocco', '2020-07-08 20:25:56');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (84, 'M', '2020-03-13', 'Kathlynview', 'Guernsey', '2020-08-03 07:40:43');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (85, 'M', '2013-06-29', 'Funkberg', 'Tuvalu', '2020-05-19 20:44:59');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (86, 'F', '1994-11-28', 'West Glennastad', 'Panama', '2019-12-31 14:22:15');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (87, 'M', '1990-04-04', 'Hermistonview', 'Malawi', '2020-05-08 02:32:49');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (88, 'M', '1993-11-18', 'North Susanburgh', 'Pitcairn Islands', '2020-03-05 05:53:25');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (89, 'F', '2017-03-26', 'Kenyattahaven', 'Guinea-Bissau', '2020-05-27 04:51:29');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (90, 'M', '1997-05-20', 'Sydneyview', 'Anguilla', '2020-06-29 06:30:33');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (91, 'M', '1986-02-05', 'South Kamrenstad', 'Cameroon', '2020-09-14 22:19:30');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (92, 'M', '2020-07-17', 'Makenzieberg', 'Egypt', '2020-02-01 08:55:36');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (93, 'F', '1996-01-17', 'North Orlandofurt', 'Singapore', '2020-10-10 12:24:42');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (94, 'M', '2006-01-15', 'Cruickshankchester', 'Jordan', '2020-07-18 15:39:02');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (95, 'F', '2011-10-20', 'Lake Jackieshire', 'United Arab Emirates', '2020-06-06 04:32:06');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (96, 'F', '1974-10-12', 'Deshawnmouth', 'Korea', '2020-09-05 06:41:07');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (97, 'M', '1986-10-06', 'New Sandraland', 'French Polynesia', '2020-01-11 00:59:08');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (98, 'M', '1990-12-01', 'Bodechester', 'Puerto Rico', '2020-10-04 19:48:06');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (99, 'F', '2015-05-24', 'Quentinhaven', 'Macao', '2020-05-24 17:20:44');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (100, 'F', '2003-01-08', 'South Trace', 'Antarctica (the territory South of 60 deg S)', '2020-03-06 18:48:11');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (101, 'M', '2008-02-16', 'Blickton', 'Antarctica (the territory South of 60 deg S)', '2020-08-28 00:35:23');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (102, 'M', '2003-08-23', 'Lake Harold', 'Kuwait', '2020-02-25 18:17:06');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (103, 'M', '1987-12-25', 'East Seamusport', 'Peru', '2020-09-14 13:20:56');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (104, 'F', '1994-10-03', 'Mitchellport', 'Sweden', '2020-02-10 17:34:11');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (105, 'M', '1980-11-16', 'Flaviohaven', 'Malawi', '2020-11-16 04:20:33');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (106, 'M', '1986-08-15', 'Lillianside', 'Sweden', '2020-11-21 19:09:11');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (107, 'F', '2018-03-04', 'Port Araceliland', 'Guinea', '2020-01-11 03:49:41');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (108, 'M', '1996-04-10', 'Lake Janisfurt', 'Chad', '2020-12-07 21:37:38');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (109, 'M', '1972-04-10', 'Greenholtshire', 'Chile', '2020-01-21 20:03:36');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (110, 'M', '2020-07-10', 'North Estebanburgh', 'Iceland', '2020-09-16 11:37:52');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (111, 'M', '2001-07-24', 'Baileyburgh', 'Hong Kong', '2020-03-08 22:19:48');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (112, 'M', '2003-01-30', 'Port Leonel', 'Gambia', '2020-05-13 12:20:43');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (113, 'M', '1986-10-13', 'West Annie', 'Gabon', '2020-08-01 18:42:51');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (114, 'F', '2011-10-08', 'Osinskihaven', 'Sudan', '2020-06-26 16:31:20');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (115, 'M', '2015-01-18', 'Orvilleburgh', 'Afghanistan', '2019-12-25 11:32:18');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (116, 'M', '1972-07-26', 'Lehnermouth', 'Switzerland', '2020-07-07 11:34:06');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (117, 'F', '1974-06-09', 'North Jairo', 'Togo', '2020-04-02 19:58:26');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (118, 'M', '1987-07-29', 'North Micaelachester', 'Zimbabwe', '2020-10-25 02:31:43');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (119, 'M', '2014-04-07', 'Robertsville', 'Albania', '2020-04-09 02:40:14');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (120, 'F', '2001-09-21', 'Stokesland', 'Canada', '2020-06-16 17:23:36');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (121, 'F', '2014-09-24', 'Nikolauschester', 'Seychelles', '2020-08-29 06:12:43');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (122, 'F', '1978-05-24', 'Callieville', 'Honduras', '2020-04-16 23:26:24');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (123, 'M', '1986-11-22', 'Port Miguelport', 'Egypt', '2020-05-19 14:34:35');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (124, 'F', '2014-06-22', 'Alexandriachester', 'Timor-Leste', '2019-12-25 02:17:56');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (125, 'M', '2008-06-20', 'Port Barbaraberg', 'United Kingdom', '2020-07-14 17:08:45');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (126, 'F', '1996-05-18', 'South Briahaven', 'Uzbekistan', '2020-05-28 10:07:40');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (127, 'F', '1975-09-10', 'Luluborough', 'Kenya', '2020-09-13 04:46:42');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (128, 'F', '2012-06-04', 'New Carlottachester', 'Norfolk Island', '2020-05-05 18:40:12');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (129, 'M', '1997-07-10', 'Haileebury', 'Libyan Arab Jamahiriya', '2020-06-26 05:56:53');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (130, 'M', '1977-01-18', 'Natashaton', 'Jersey', '2020-02-19 15:08:03');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (131, 'F', '2000-09-17', 'East Elwin', 'Palestinian Territory', '2020-05-16 06:29:05');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (132, 'F', '1991-05-13', 'West Marcobury', 'Taiwan', '2020-08-09 10:37:34');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (133, 'F', '1996-08-19', 'West Maritzaborough', 'Bosnia and Herzegovina', '2020-05-26 03:48:41');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (134, 'F', '2018-12-01', 'North Hudsontown', 'Aruba', '2020-01-05 11:46:02');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (135, 'F', '1984-01-06', 'Nicolasfort', 'Kuwait', '2020-01-09 04:24:16');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (136, 'M', '2018-02-20', 'Port Lysanne', 'Montenegro', '2020-07-10 06:34:56');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (137, 'F', '1982-08-19', 'Sabrinafort', 'United Arab Emirates', '2020-12-03 01:56:43');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (138, 'F', '2003-11-28', 'Gusikowskitown', 'Tanzania', '2020-05-10 11:02:32');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (139, 'M', '2002-10-13', 'Port Megane', 'Armenia', '2020-05-13 07:58:31');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (140, 'M', '1977-03-15', 'Zboncakland', 'Nicaragua', '2020-12-13 20:27:22');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (141, 'M', '1999-08-15', 'Clayport', 'Lao People\'s Democratic Republic', '2020-04-28 23:22:15');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (142, 'F', '1989-08-27', 'Margotshire', 'French Polynesia', '2020-10-29 00:36:58');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (143, 'M', '1999-02-26', 'South Annamarie', 'Saint Kitts and Nevis', '2020-06-21 15:20:57');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (144, 'M', '1989-08-15', 'Shieldshaven', 'Cote d\'Ivoire', '2020-02-09 18:04:58');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (145, 'M', '1973-02-01', 'Lake Layneland', 'Montenegro', '2020-10-08 06:42:36');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (146, 'F', '1998-09-06', 'East Isom', 'Ethiopia', '2020-01-11 04:16:32');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (147, 'F', '2018-09-03', 'Port Jewell', 'Egypt', '2020-11-02 16:07:35');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (148, 'M', '1977-12-12', 'Bridgetteborough', 'Guinea', '2020-11-13 18:59:49');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (149, 'M', '1984-08-16', 'New Makenna', 'Mauritania', '2020-10-21 12:45:08');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (150, 'F', '1974-05-30', 'North Belle', 'Bahamas', '2020-03-12 07:29:35');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (151, 'M', '1993-08-12', 'East Ciara', 'Djibouti', '2020-03-15 17:01:45');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (152, 'M', '2013-09-22', 'Brekkeborough', 'Holy See (Vatican City State)', '2020-10-04 07:48:59');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (153, 'F', '2003-02-13', 'North Vella', 'British Virgin Islands', '2020-06-23 02:39:04');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (154, 'F', '1982-01-27', 'Rutherfordfort', 'Poland', '2020-05-29 02:06:37');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (155, 'F', '2004-05-10', 'Bradtkefort', 'Togo', '2020-01-03 20:26:19');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (156, 'F', '1992-05-08', 'Constantintown', 'Angola', '2020-06-09 12:54:39');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (157, 'F', '1990-01-11', 'Loyalstad', 'British Indian Ocean Territory (Chagos Archipelago)', '2020-05-14 23:45:30');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (158, 'M', '2010-10-24', 'Vinnieport', 'Marshall Islands', '2020-03-10 15:09:07');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (159, 'F', '2004-12-04', 'Buckridgefurt', 'Fiji', '2020-11-17 17:10:16');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (160, 'M', '2003-09-03', 'Gleasonbury', 'Kazakhstan', '2020-10-13 07:00:09');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (161, 'M', '1974-11-19', 'Lillieport', 'Bahrain', '2020-08-10 20:16:04');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (162, 'M', '1975-04-27', 'Lake Elise', 'Comoros', '2020-01-12 14:04:33');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (163, 'F', '1970-02-12', 'Simeonside', 'Georgia', '2020-02-04 06:59:03');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (164, 'M', '2016-07-20', 'Lake Madisen', 'Belgium', '2020-08-07 21:12:53');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (165, 'F', '1994-10-13', 'North Merrittfort', 'Svalbard & Jan Mayen Islands', '2020-12-08 18:09:23');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (166, 'F', '2007-11-30', 'Port Coy', 'Pitcairn Islands', '2020-03-15 06:50:22');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (167, 'F', '2006-11-15', 'Aileenport', 'Cote d\'Ivoire', '2019-12-23 16:19:00');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (168, 'M', '1975-03-26', 'North Americaton', 'Bangladesh', '2020-10-01 13:21:14');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (169, 'M', '2008-07-13', 'Hackettburgh', 'Djibouti', '2020-02-01 22:15:45');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (170, 'M', '1973-01-17', 'South Royalside', 'Malawi', '2020-07-17 20:10:04');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (171, 'F', '2011-01-31', 'Jordonburgh', 'Argentina', '2019-12-25 12:41:39');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (172, 'M', '1990-11-20', 'Alethaside', 'Ecuador', '2019-12-31 00:55:36');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (173, 'M', '2019-05-10', 'New Spencer', 'Cambodia', '2020-09-15 18:20:22');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (174, 'M', '2003-12-15', 'New Joanneside', 'Moldova', '2020-10-07 06:24:55');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (175, 'M', '1988-04-23', 'West Braedenmouth', 'Tuvalu', '2020-09-21 02:28:43');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (176, 'F', '2020-01-28', 'New Nyasiahaven', 'Pakistan', '2019-12-19 23:03:24');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (177, 'F', '1973-04-12', 'Devontefurt', 'El Salvador', '2020-05-11 22:00:30');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (178, 'F', '2000-03-15', 'North Dillan', 'Lesotho', '2020-02-03 21:53:57');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (179, 'M', '1987-11-08', 'Port Cassieton', 'Albania', '2020-03-02 15:06:18');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (180, 'F', '1990-08-12', 'New Howell', 'Greenland', '2020-09-06 03:06:07');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (181, 'F', '2015-09-28', 'West Emelie', 'Algeria', '2019-12-17 14:24:11');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (182, 'F', '2009-03-19', 'Kennaport', 'Equatorial Guinea', '2020-08-29 03:41:50');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (183, 'F', '1977-05-04', 'Spinkatown', 'Azerbaijan', '2020-09-18 13:10:59');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (184, 'F', '1983-06-08', 'East Corrine', 'Netherlands', '2020-03-22 12:53:33');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (185, 'F', '1998-03-22', 'Nolanmouth', 'French Guiana', '2020-08-25 06:03:34');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (186, 'F', '1973-10-18', 'East Leta', 'Equatorial Guinea', '2020-05-30 18:45:21');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (187, 'M', '2020-07-15', 'Deionmouth', 'American Samoa', '2020-04-20 15:34:21');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (188, 'M', '1975-04-21', 'East Piper', 'Palau', '2020-02-08 06:23:48');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (189, 'F', '2017-12-13', 'East Cloyd', 'Morocco', '2020-04-16 19:34:52');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (190, 'M', '1989-06-08', 'Lake Jeffery', 'Honduras', '2020-03-07 14:56:27');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (191, 'F', '2013-01-31', 'Lake Unamouth', 'Azerbaijan', '2020-08-05 19:12:10');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (192, 'F', '1991-04-23', 'West Leiftown', 'British Indian Ocean Territory (Chagos Archipelago)', '2020-10-10 16:32:56');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (193, 'M', '1974-05-03', 'East Kiarraborough', 'Moldova', '2020-03-20 22:30:06');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (194, 'M', '2016-05-22', 'Boscomouth', 'Iceland', '2020-10-24 00:54:28');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (195, 'M', '1978-11-28', 'East Vergiemouth', 'Bouvet Island (Bouvetoya)', '2020-01-10 07:34:40');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (196, 'F', '2010-08-05', 'North Adalinemouth', 'Azerbaijan', '2020-11-23 16:12:29');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (197, 'F', '1992-03-20', 'East Ken', 'Denmark', '2020-01-05 08:40:39');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (198, 'M', '1986-03-02', 'Archchester', 'Egypt', '2020-01-28 09:24:22');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (199, 'F', '1982-05-21', 'Frederickmouth', 'Isle of Man', '2020-01-19 03:35:42');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (200, 'M', '2000-11-20', 'Borerfort', 'Iraq', '2020-10-14 12:38:08');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (201, 'F', '2004-11-15', 'Port Loyce', 'Ecuador', '2020-10-13 01:43:59');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (202, 'F', '2015-07-29', 'East Maiatown', 'Angola', '2020-03-09 00:46:21');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (203, 'F', '1975-06-23', 'Larkinville', 'Ghana', '2020-05-26 06:08:46');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (204, 'M', '1976-08-24', 'Hagenesfort', 'Mali', '2020-03-03 03:42:05');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (205, 'M', '2014-08-29', 'Eddieside', 'France', '2020-05-23 12:22:32');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (206, 'M', '1976-04-02', 'Ceceliastad', 'Burundi', '2020-08-18 15:04:32');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (207, 'M', '2008-04-11', 'North Nola', 'Pitcairn Islands', '2020-01-25 21:12:21');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (208, 'M', '2008-06-13', 'Lake Darrylborough', 'Lesotho', '2020-06-08 08:41:28');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (209, 'M', '2003-03-14', 'North Rowlandhaven', 'Peru', '2020-10-30 03:31:42');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (210, 'F', '2003-08-25', 'Kevinton', 'Somalia', '2020-01-30 09:33:13');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (211, 'M', '1995-11-11', 'East Jacquesville', 'Oman', '2020-01-16 19:16:26');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (212, 'F', '2007-12-22', 'Marksberg', 'Heard Island and McDonald Islands', '2020-06-24 05:03:43');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (213, 'M', '1981-02-07', 'South Julia', 'Japan', '2020-06-05 14:29:36');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (214, 'F', '2005-07-07', 'Sengerport', 'Montserrat', '2020-01-25 04:08:41');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (215, 'F', '2011-11-06', 'Timothytown', 'Somalia', '2020-09-09 23:16:52');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (216, 'F', '1982-01-01', 'West Alta', 'Sao Tome and Principe', '2020-11-20 15:51:25');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (217, 'F', '2011-04-04', 'Kayleyville', 'Spain', '2020-01-31 11:47:23');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (218, 'M', '2008-12-15', 'Port Cindy', 'Uzbekistan', '2020-02-04 03:57:39');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (219, 'F', '1972-02-27', 'Brendenstad', 'Afghanistan', '2020-10-11 05:36:04');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (220, 'F', '1972-02-16', 'Harveyfurt', 'Slovenia', '2020-03-24 11:01:54');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (221, 'M', '1997-04-16', 'Lake Cary', 'Sierra Leone', '2020-08-24 09:39:05');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (222, 'M', '1991-02-07', 'Hansburgh', 'Lao People\'s Democratic Republic', '2020-08-19 02:16:30');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (223, 'M', '1983-12-04', 'Boehmside', 'Germany', '2020-08-03 13:07:30');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (224, 'F', '2010-02-09', 'Jenkinsborough', 'Barbados', '2020-11-07 06:01:34');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (225, 'M', '1975-02-18', 'Wisokytown', 'Guatemala', '2020-10-16 03:17:27');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (226, 'F', '1998-10-22', 'East Kylieside', 'Uruguay', '2020-07-30 03:43:45');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (227, 'F', '1973-03-31', 'New Christiana', 'Cyprus', '2020-12-03 08:10:18');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (228, 'F', '2000-04-25', 'Rutherfordfurt', 'French Guiana', '2020-09-07 19:46:39');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (229, 'M', '1988-12-19', 'Beierport', 'Zimbabwe', '2019-12-27 01:38:20');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (230, 'M', '1984-08-24', 'West Mosheton', 'Afghanistan', '2020-08-11 16:41:47');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (231, 'M', '1990-03-02', 'Donaldstad', 'Switzerland', '2020-10-27 09:25:00');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (232, 'M', '1972-11-19', 'Fritschstad', 'Korea', '2020-06-28 06:56:59');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (233, 'M', '2005-08-03', 'Port Jaron', 'Guam', '2020-04-09 04:16:39');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (234, 'F', '2003-06-20', 'Lillyside', 'Micronesia', '2020-04-21 22:20:08');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (235, 'M', '1991-01-31', 'Reicherttown', 'Norfolk Island', '2020-02-23 05:50:41');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (236, 'F', '2003-05-24', 'Handtown', 'Cuba', '2020-04-08 05:33:39');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (237, 'F', '1971-05-12', 'Bergnaumview', 'United States of America', '2020-04-05 01:14:37');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (238, 'F', '2004-10-17', 'Rollinbury', 'Lesotho', '2020-01-22 07:04:10');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (239, 'M', '1998-06-19', 'Serenamouth', 'Liberia', '2020-09-03 15:35:22');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (240, 'F', '1982-06-10', 'New Emmittburgh', 'Saint Helena', '2019-12-24 03:16:06');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (241, 'F', '2013-03-19', 'Port Devonte', 'Uzbekistan', '2020-06-04 11:42:52');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (242, 'F', '2019-12-06', 'Lindamouth', 'Israel', '2020-06-03 04:39:51');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (243, 'M', '1983-12-05', 'West Hailey', 'Sierra Leone', '2020-12-12 11:24:14');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (244, 'M', '1988-12-21', 'Itzelbury', 'Albania', '2020-08-30 22:28:51');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (245, 'F', '1972-04-07', 'Port Trent', 'Haiti', '2020-10-17 14:42:22');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (246, 'F', '1994-04-16', 'West Gabrieltown', 'Western Sahara', '2020-03-06 23:44:10');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (247, 'M', '2019-02-27', 'Wildermanland', 'Turkmenistan', '2020-02-16 14:51:14');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (248, 'M', '2012-03-05', 'North Hillard', 'Papua New Guinea', '2020-03-12 09:33:45');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (249, 'F', '1988-01-15', 'Durwardberg', 'Panama', '2020-07-11 13:37:44');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (250, 'M', '1996-02-28', 'Wuckertberg', 'Equatorial Guinea', '2020-05-10 05:16:11');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (251, 'M', '1991-05-23', 'New Deemouth', 'Bahrain', '2020-08-13 12:56:45');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (252, 'M', '2010-02-26', 'Davinhaven', 'Antarctica (the territory South of 60 deg S)', '2020-01-30 16:15:50');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (253, 'M', '2016-11-08', 'East Jesseport', 'Bulgaria', '2020-03-26 03:40:29');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (254, 'M', '2016-08-01', 'East Carlieport', 'Gabon', '2020-07-01 12:55:29');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (255, 'M', '1997-04-20', 'New Aniya', 'Cyprus', '2020-11-05 00:52:57');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (256, 'F', '2010-08-12', 'Rohanfurt', 'Eritrea', '2020-04-01 05:05:15');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (257, 'F', '1984-11-20', 'Pietrofurt', 'Botswana', '2020-07-19 17:04:13');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (258, 'M', '2005-05-18', 'Port Karianehaven', 'Senegal', '2020-09-16 20:14:33');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (259, 'F', '1979-10-11', 'Port Leanna', 'Spain', '2020-03-26 05:21:38');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (260, 'M', '1993-08-02', 'New Kamren', 'Czech Republic', '2020-06-01 07:10:00');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (261, 'M', '2000-08-20', 'North Gunnerville', 'French Polynesia', '2020-08-10 10:31:12');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (262, 'M', '1986-08-26', 'New Omari', 'Indonesia', '2020-05-02 16:17:42');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (263, 'M', '2018-03-13', 'New Brentport', 'Luxembourg', '2020-03-26 15:50:40');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (264, 'M', '2011-12-05', 'East Tyshawnfort', 'Belize', '2020-09-01 19:26:53');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (265, 'F', '2017-10-13', 'East Bobbiechester', 'Sri Lanka', '2020-09-06 04:49:14');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (266, 'M', '2007-07-19', 'Eichmanntown', 'Dominica', '2020-11-27 00:08:51');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (267, 'M', '1996-09-11', 'Ofeliafurt', 'Guatemala', '2020-11-07 18:11:03');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (268, 'M', '1970-01-22', 'Dibbertfurt', 'Lithuania', '2020-08-16 19:14:40');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (269, 'M', '2014-09-04', 'Ginoport', 'Saint Kitts and Nevis', '2020-02-18 01:58:04');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (270, 'F', '1993-12-28', 'Collierburgh', 'Eritrea', '2020-03-03 07:39:14');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (271, 'F', '2018-05-02', 'Dovieview', 'Slovenia', '2019-12-15 11:48:47');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (272, 'F', '2019-07-25', 'Marianoburgh', 'Papua New Guinea', '2020-08-29 19:58:27');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (273, 'M', '1996-02-06', 'Port Maurinefurt', 'Cambodia', '2020-03-08 11:29:37');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (274, 'M', '1990-12-31', 'Lake Mozelleside', 'Hungary', '2020-04-06 13:23:53');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (275, 'M', '2015-04-28', 'Whiteville', 'Papua New Guinea', '2020-09-13 02:07:29');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (276, 'M', '1978-12-13', 'Paucekchester', 'Hungary', '2020-08-23 09:37:35');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (277, 'F', '2010-07-12', 'Herzogstad', 'United States Virgin Islands', '2020-06-28 09:02:06');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (278, 'F', '1978-01-13', 'West Barrettshire', 'Sri Lanka', '2020-09-14 00:34:35');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (279, 'M', '1974-12-24', 'Arnulfobury', 'Suriname', '2020-08-02 17:01:51');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (280, 'M', '2001-09-12', 'Otistown', 'Isle of Man', '2020-02-24 05:01:44');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (281, 'F', '1985-07-16', 'West Freeman', 'Dominica', '2020-03-23 11:07:35');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (282, 'M', '2013-03-20', 'Ryantown', 'Singapore', '2020-09-20 00:47:30');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (283, 'M', '2006-01-07', 'New Noahfort', 'Austria', '2020-09-27 09:56:23');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (284, 'F', '2015-03-07', 'Volkmanmouth', 'Hong Kong', '2020-03-25 03:14:29');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (285, 'F', '1980-04-30', 'Zboncakland', 'Zimbabwe', '2020-06-15 13:55:13');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (286, 'F', '1974-07-22', 'Ricoborough', 'Peru', '2019-12-17 00:15:36');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (287, 'F', '2019-03-20', 'Lelahmouth', 'Gambia', '2020-11-23 05:09:51');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (288, 'F', '2012-02-14', 'Americaland', 'Cambodia', '2020-09-16 00:17:15');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (289, 'M', '1985-10-09', 'Brandtmouth', 'Heard Island and McDonald Islands', '2020-11-29 23:05:13');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (290, 'M', '1997-05-06', 'Schusterport', 'Morocco', '2020-05-23 00:43:52');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (291, 'F', '1996-03-04', 'Viviantown', 'South Africa', '2020-03-18 21:31:11');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (292, 'M', '1987-03-05', 'Creminton', 'Madagascar', '2020-12-11 00:35:40');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (293, 'M', '2013-01-28', 'Andersonburgh', 'Montenegro', '2020-02-11 04:27:37');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (294, 'M', '2018-05-07', 'Deshaunside', 'Montenegro', '2020-12-03 21:33:23');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (295, 'M', '2010-12-25', 'Alleneshire', 'Congo', '2019-12-28 11:34:02');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (296, 'M', '2008-12-31', 'Hayleyhaven', 'Colombia', '2020-03-07 05:15:55');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (297, 'M', '2018-12-12', 'New Joycestad', 'Holy See (Vatican City State)', '2020-04-08 07:35:50');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (298, 'F', '1987-12-06', 'Marcelochester', 'Norfolk Island', '2020-10-09 12:57:45');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (299, 'F', '1990-09-04', 'Alexishaven', 'Heard Island and McDonald Islands', '2020-01-01 17:47:59');
INSERT INTO `profiles` (`student_id`, `gender`, `birthday`, `city`, `country`, `created_at`) VALUES (300, 'M', '1972-08-05', 'Sophieside', 'Switzerland', '2020-01-08 23:07:46');


#
# TABLE STRUCTURE FOR: research_projects
#

DROP TABLE IF EXISTS `research_projects`;

CREATE TABLE `research_projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `area_of_research_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название проекта',
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Краткое описание',
  PRIMARY KEY (`id`),
  KEY `research_projects_area_of_research_id_fk` (`area_of_research_id`),
  CONSTRAINT `research_projects_area_of_research_id_fk` FOREIGN KEY (`area_of_research_id`) REFERENCES `area_of_research` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Иссдедовательские проекты';

INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (1, 17, 'quo', 'Sunt sed aut ut voluptate et commodi ea. Nihil vitae consequatur velit ut eaque. Nostrum asperiores accusantium accusamus excepturi et. Sequi consectetur dolore voluptates et vel vero.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (2, 19, 'natus', 'Et hic possimus in velit quam sed. Laudantium dolorem totam vitae culpa sed mollitia possimus. Voluptatem eveniet ducimus eius odit totam dolor. In eligendi impedit officia consequatur.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (3, 20, 'adipisci', 'Laboriosam dolorem rerum voluptatibus temporibus. Non repellat vel delectus quos. Non dolor suscipit atque aperiam doloribus.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (4, 1, 'optio', 'Consequatur aspernatur in nisi quidem animi esse excepturi placeat. Eos cumque iusto neque magni fugit ducimus non fuga. Molestiae maxime ipsa vel quos voluptas possimus. Non excepturi animi sit alias reiciendis vitae maxime.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (5, 23, 'eum', 'Sunt aliquam et minus et. Odio qui perspiciatis omnis quo ut reiciendis mollitia. In maxime consequuntur est reiciendis perferendis.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (6, 26, 'rerum', 'Quae magni et quos quas. Recusandae voluptatum voluptatem odio dolores error. Molestiae voluptatibus expedita quaerat enim consequatur temporibus quisquam.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (7, 12, 'autem', 'Et et nesciunt sed placeat facilis consectetur. Voluptatem iusto perspiciatis sed in ad et. Ipsa adipisci dignissimos tempore repellat vel. Repellat inventore sit doloremque omnis illo et veritatis.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (8, 4, 'nisi', 'Sed laudantium dolores expedita itaque. Deserunt exercitationem explicabo quia illum. Suscipit harum porro officia tempora.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (9, 22, 'consequuntur', 'Vel unde nulla voluptatem ipsa rerum. Est non quaerat velit ea sit esse quae possimus. Rerum occaecati voluptatem laudantium occaecati odio et fugit sunt. Dignissimos voluptatibus maxime maxime.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (10, 11, 'vitae', 'Repudiandae quisquam quod sit id alias quia iste. Deleniti fuga expedita laborum nesciunt recusandae nulla eos vero.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (11, 18, 'facere', 'Perspiciatis fugiat qui vel eum voluptatibus aut. Beatae numquam doloremque est. Ab quidem temporibus explicabo. Doloremque facilis excepturi similique aliquid cum nostrum porro.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (12, 10, 'eos', 'Perspiciatis nisi fuga ducimus qui nesciunt sequi ullam. Hic ipsam molestiae dolorum quaerat. Quasi explicabo at delectus minus.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (13, 30, 'voluptatem', 'Iusto eos iure delectus ut. Consequatur necessitatibus aliquam amet autem sed fuga eos. Itaque repudiandae fuga fugit quidem quia consectetur reprehenderit vero.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (14, 5, 'et', 'Voluptates minima molestiae quisquam quae molestias. Sed quas facere quas aut ut omnis quia. Soluta voluptas doloremque commodi fugiat. Illum minus exercitationem rerum reiciendis vero.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (15, 4, 'eos', 'Rerum nam rerum consequatur ab in necessitatibus autem. Quia deleniti voluptatem laudantium. In quis inventore repellendus assumenda dolore ea.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (16, 23, 'dolor', 'Ut voluptas dolorem voluptates tempore harum eius ea nesciunt. Nesciunt ut minus atque aperiam sapiente dolores accusantium sunt. Voluptas omnis accusamus dolore non ea.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (17, 29, 'illum', 'Vel cupiditate nihil sed quod unde. Impedit quibusdam id tenetur. Nihil atque nihil nisi inventore veritatis cum beatae. Odio eos enim minus accusantium. Eius veniam modi occaecati.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (18, 4, 'minus', 'Incidunt doloribus quod similique. Possimus sed aut laboriosam est dignissimos velit dolorem labore. Aut eius exercitationem omnis adipisci a expedita commodi.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (19, 12, 'modi', 'Sit dolore eum aut earum sequi. Quam qui velit est quod. Velit voluptas veniam repellendus amet totam alias. Dolorum omnis quia amet non ullam.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (20, 5, 'fuga', 'Consequatur quia dolores magni autem aut. Quae eum ipsam quo modi recusandae iure esse assumenda. Voluptatem veniam nesciunt quia beatae veniam fugit voluptatem. Ut est explicabo molestias impedit quia non.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (21, 4, 'neque', 'Consequuntur non minus doloribus fugit aut consequuntur dolorem. Dicta est aliquam delectus. Ipsa sit id id aliquam nihil quia voluptate. Voluptas laudantium excepturi velit ut.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (22, 20, 'totam', 'Praesentium quia illum excepturi in quod ea est. Nostrum eius temporibus facilis. Commodi quia quidem recusandae libero. Odit ut nulla animi facilis.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (23, 26, 'fuga', 'Ea nemo ea possimus est minus et quam. Consequuntur praesentium esse iure aut enim aperiam. Omnis consequatur libero nemo nihil aliquid dolorum. At similique blanditiis quae consectetur.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (24, 9, 'voluptatem', 'Molestiae unde quia nulla. Est totam ullam qui ad sed voluptatem aut. Quibusdam omnis architecto doloribus dignissimos ut ullam maxime totam. Atque sapiente alias non. Sunt suscipit vel quo vel.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (25, 5, 'et', 'Vero qui odio laboriosam ipsa necessitatibus dolor. Neque aliquam labore voluptatem similique. Eligendi molestiae laboriosam vitae voluptas. Quo repellendus nam velit eum et.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (26, 11, 'et', 'Voluptatem assumenda quia a sit sint. Et quis nisi tempore minus assumenda qui voluptatibus. Consectetur et dolorem et dolores voluptas. Molestiae perspiciatis et quidem vel. Sint et consequatur ullam minus et et.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (27, 22, 'molestiae', 'Nesciunt aliquam itaque alias quia aliquid. Nesciunt vel nisi nesciunt dolores et voluptatum dolorem ut. Blanditiis necessitatibus illum sapiente recusandae dolorem eligendi aliquid.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (28, 29, 'nemo', 'Architecto sit quam consectetur facere libero qui animi. Distinctio aut quia velit consequatur dolorum deleniti soluta et. Hic et deserunt sint qui error incidunt nemo nemo.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (29, 1, 'provident', 'Voluptas sunt id culpa. Incidunt aut vel in qui et numquam. Quas sint veniam iure aut dolorem quasi. Perferendis autem ut illo consectetur laborum doloribus. Quasi error maiores doloremque corporis.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (30, 18, 'in', 'Consequatur vel alias est saepe reiciendis. Suscipit vitae eveniet dicta cum. Vel est ullam pariatur dolores sint voluptates aliquid. Odio dolore quo rem eligendi perspiciatis eveniet adipisci.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (31, 3, 'quia', 'Nihil alias dolorem ipsum quia quae consequuntur. Neque architecto et dolorem magnam. A itaque accusantium unde sint tenetur laborum. Illo laborum nostrum non harum qui placeat.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (32, 5, 'dolorem', 'Laboriosam consequatur consequuntur voluptas non eum ex velit. Culpa amet eaque sunt amet voluptas beatae. Sapiente assumenda minus modi et. Reiciendis laudantium exercitationem suscipit necessitatibus nobis et.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (33, 16, 'molestiae', 'Voluptates quas aperiam reiciendis. Qui maxime ut iure maxime beatae. Perspiciatis sint totam beatae voluptatem.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (34, 28, 'corporis', 'Repellat dicta quasi architecto vero officiis. Saepe dolores ipsa sunt dignissimos. Dignissimos similique id quaerat. Provident tempore consequatur cum provident.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (35, 4, 'consequatur', 'Quidem error beatae et dolor. Quia harum ratione reiciendis quis molestiae. Quod vel aliquid facilis commodi autem animi.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (36, 26, 'qui', 'Molestiae aspernatur facere aut. Dolore expedita ea dolorem eos.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (37, 13, 'qui', 'Explicabo inventore enim ut aspernatur culpa omnis. Hic quae est necessitatibus adipisci placeat. Nulla quo quam omnis expedita.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (38, 7, 'molestiae', 'Molestias amet et nihil autem minima. Qui non eum et corporis autem culpa nostrum. Natus illum sint iure voluptate.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (39, 12, 'accusantium', 'Deserunt consequatur odit fuga dolorem aut et consequatur. Blanditiis ab et atque et et impedit earum illo. Non et laudantium fugit quia qui. Consequatur qui error quae optio voluptas nihil. Sint quam aut quod voluptatem laudantium iure officiis.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (40, 16, 'in', 'Vero ut dignissimos voluptatem molestiae cupiditate. Similique consequuntur at ipsam ipsam velit quos. Corrupti ut omnis laborum nam eveniet.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (41, 20, 'iusto', 'Repellendus dolore qui et nemo praesentium quis provident et. Reiciendis doloremque nihil dolores aliquid corporis dolorem. Quod adipisci qui autem.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (42, 10, 'adipisci', 'Nihil aut iusto velit quis quis autem. Velit quasi sapiente recusandae et. Excepturi incidunt qui laboriosam nam eum earum temporibus.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (43, 1, 'et', 'Vero quia repudiandae error aut eos voluptatum maxime. Sit dolores aperiam expedita qui quia est voluptatibus. Quam tempore facere iure non cupiditate magnam qui. Eos consectetur assumenda accusantium provident est fuga voluptate.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (44, 1, 'qui', 'Dolor mollitia numquam pariatur sed reprehenderit qui. A molestiae vero quos ut aut. Et deleniti nesciunt sunt.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (45, 11, 'architecto', 'Minima et quia tempora dicta est vero sit. Molestiae quidem est unde est sunt. Et voluptas aut ex qui. Eum omnis maiores iure eum accusamus qui. Quia ipsam odio iure voluptas.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (46, 6, 'fugit', 'Nemo nihil vitae quo. Alias debitis perspiciatis blanditiis cum sequi dignissimos consequatur. Eum est eius reiciendis necessitatibus at illo. Expedita impedit rerum qui ex repellat placeat qui.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (47, 30, 'ut', 'Eum dolores doloribus rerum veritatis animi numquam quia fugit. Sed esse dolor vel ad laborum consequatur libero. Dolor commodi eligendi nisi dicta fugit rerum optio.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (48, 11, 'nihil', 'Eaque accusamus dolorum dolorum. Vel rerum iure dolorem. Neque et fugiat eos eos.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (49, 21, 'atque', 'Est et accusamus explicabo voluptatem asperiores nam. Ipsum odit at aut eum accusantium dolorem facilis. Ea quos voluptatem illo eum aut perferendis optio. Est incidunt aperiam numquam.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (50, 5, 'minus', 'Consectetur praesentium et in animi eos repudiandae possimus atque. Ipsa laudantium commodi quasi minima qui dolore aut. Non nobis alias vel molestiae. Inventore dolor sunt voluptas.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (51, 15, 'dolorum', 'Quos et sit et reiciendis esse eaque. Enim magnam vel non nam. Facere praesentium incidunt consequatur deserunt odio.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (52, 28, 'soluta', 'Illo ut nesciunt quasi. Ut nemo beatae nobis sunt impedit facere voluptas.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (53, 10, 'ut', 'Nulla repudiandae porro sint aut. Voluptate unde magnam perspiciatis inventore minus. Quis eum consequatur sed est excepturi qui voluptates. Sed dolores officia molestias quis.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (54, 25, 'iste', 'Qui magni rem cum. Nam explicabo iste aut. Et placeat iure eaque blanditiis. Non sed in rerum sed perspiciatis quae.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (55, 25, 'enim', 'Dolorem rerum ut repudiandae aut ex quae ducimus. Fugit voluptate sed deleniti enim non unde. Enim natus tempore nemo non blanditiis.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (56, 28, 'est', 'At magnam enim possimus animi. Voluptate aut eos asperiores nisi eveniet sint praesentium. Quis non est consequuntur nostrum hic placeat. Voluptate ratione quibusdam sed exercitationem.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (57, 2, 'cumque', 'Perspiciatis porro qui itaque fugit reprehenderit aperiam hic. Et nihil similique ut temporibus est doloremque. Debitis molestiae quis iste amet velit voluptas.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (58, 15, 'cumque', 'Quia ipsum reiciendis voluptas omnis et. Dolorem ut deleniti maiores necessitatibus. Natus in ea repellendus inventore quas. Tenetur quo quas est eos possimus. Maxime eos eius unde voluptas.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (59, 9, 'libero', 'Ipsum molestias aut similique qui et corporis. Sequi sint error ratione autem nisi inventore. Labore est qui tenetur delectus facilis labore expedita.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (60, 4, 'sunt', 'Temporibus soluta doloribus explicabo sit ut vel inventore voluptatum. Aut laborum sit eum enim blanditiis nisi. Ut unde nostrum necessitatibus et et at totam autem.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (61, 18, 'et', 'Dignissimos rem laudantium totam illum. Ipsum numquam exercitationem veritatis. Sunt animi rem ullam sint tenetur voluptas. Nesciunt magni vero veritatis sit placeat explicabo. Est vero dolorum iure aut.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (62, 27, 'quasi', 'Ad rerum et necessitatibus accusamus delectus consequatur beatae. Sed unde architecto ratione in qui.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (63, 7, 'hic', 'Cum ab amet magnam. Maxime optio eligendi voluptas tenetur molestiae praesentium vitae nostrum. Sunt impedit reprehenderit hic quaerat ad repudiandae. Voluptatem nihil cum libero voluptates dolores et esse ut.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (64, 5, 'sed', 'Praesentium perspiciatis consequatur dolorum. Voluptatem harum ab rerum et dolores veniam officia voluptas. Provident at qui aut repellat aut impedit ad commodi.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (65, 22, 'cum', 'At ipsum enim sed nihil. Aut sint autem aspernatur voluptas. Quam occaecati iste quidem ut. Aperiam illo magni ut aliquam porro modi.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (66, 11, 'rerum', 'Rerum aliquid suscipit et illum enim alias. Quia voluptas quos porro incidunt veritatis voluptatem. Alias saepe iure voluptatibus accusamus ratione maiores exercitationem quia.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (67, 12, 'dicta', 'Libero et ut commodi sit. Dolorum et nostrum nesciunt earum sunt recusandae dolore. Porro consequatur totam eius illo ducimus. Beatae veritatis autem adipisci adipisci voluptatum hic impedit.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (68, 28, 'aliquam', 'Rerum est hic laboriosam consequatur molestias dignissimos. Exercitationem animi qui debitis.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (69, 22, 'rerum', 'Suscipit veritatis fugiat ut quisquam illum temporibus aut. Autem omnis dicta tenetur quia officia. Alias officia maxime sit debitis et facilis. Cumque est mollitia pariatur inventore tempora.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (70, 21, 'suscipit', 'Pariatur debitis dolorem explicabo quod dolores ut aut. Voluptas sapiente impedit similique culpa est dolorem. Et sit ea illum est.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (71, 2, 'maxime', 'In esse facilis quae in nostrum accusantium et. Laudantium et voluptatem quia omnis. Sint nobis sunt voluptate similique aspernatur enim. Quo magnam quis qui voluptatem ipsum.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (72, 27, 'et', 'Amet ut consectetur consectetur occaecati dignissimos ut. Sed quo illum consectetur quia. Aspernatur labore dolores et. Tempore corrupti quia earum qui earum rem voluptas voluptatem.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (73, 7, 'fuga', 'Rem id sed fugit voluptates sunt soluta. Aliquam hic aliquid quidem distinctio vel odit. Repellendus veritatis est ullam excepturi.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (74, 3, 'eum', 'Sunt dicta deserunt dolorem consequatur qui atque necessitatibus et. Dolores aut ut possimus non. Explicabo harum officiis et atque laborum aspernatur ex. Recusandae culpa qui animi.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (75, 28, 'iusto', 'Maiores aliquid totam libero quo consequatur quas dolore. Labore dicta accusantium ipsum. Molestiae velit nisi omnis neque quasi autem quibusdam eum. Exercitationem consequatur natus non rerum.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (76, 19, 'et', 'Cum sapiente quas laboriosam ut reprehenderit aliquam id. Magnam facere laudantium facere mollitia. Dolores et ut ullam veritatis recusandae earum. In aut facilis totam quia distinctio.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (77, 30, 'quaerat', 'Recusandae aut placeat ut dolorum et id ut. Facilis nihil quibusdam ducimus quos dolores aliquam magni possimus. Quis nobis iste voluptatem aut ut quam ut. Perspiciatis esse aut impedit.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (78, 15, 'dicta', 'Maiores laborum placeat est aut voluptatem omnis quisquam autem. Repellat consequatur inventore ipsum autem sed labore consequatur. Ipsam facilis dolor beatae fugiat ducimus.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (79, 8, 'sed', 'Animi et commodi distinctio esse. Cumque voluptas quaerat aut. Cum numquam sint reiciendis quidem quaerat sint ducimus. Placeat nam hic delectus iusto vero voluptate.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (80, 24, 'est', 'Possimus nesciunt laboriosam a ipsam quis facilis. Dolore sit minima dolor et quae molestiae quam velit. Aut id et veritatis facere doloremque accusamus est. Quos sequi et sit ab nesciunt.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (81, 27, 'quos', 'Ea ex ut cupiditate est culpa nostrum sit. Officia est itaque non praesentium aut consequatur.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (82, 1, 'sint', 'Earum error optio asperiores architecto laborum. Ipsum a eum praesentium fugit aperiam dicta qui voluptatem. Amet laudantium sunt totam neque aut ea aspernatur. Dolorem temporibus qui aspernatur dignissimos quam sunt ad at.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (83, 20, 'vel', 'Quos enim aliquid dolor voluptatem dolores temporibus nobis. Rem distinctio aspernatur enim sequi enim quibusdam sed. Ea dolorem saepe sunt ipsum ut expedita aut. Pariatur nihil odit quaerat ab.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (84, 4, 'est', 'Voluptas atque voluptatem rerum quibusdam. Reprehenderit nisi similique vel accusamus vel. Ut facilis non aut est ducimus sunt officia. Veniam recusandae eum qui corrupti quidem quos.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (85, 15, 'soluta', 'Non provident libero nobis est sed. Sequi et et adipisci soluta explicabo. Dolores ducimus voluptatem aut velit voluptas.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (86, 29, 'magnam', 'Perferendis molestias cum eligendi quod expedita. Facilis et non amet amet expedita. Repellendus in quia officia dolorem modi nihil aperiam. Veritatis sint possimus ad rerum.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (87, 8, 'corrupti', 'Omnis magnam quos sed. Vel beatae quo laboriosam non rerum. Sit aspernatur nihil ut molestiae reprehenderit vero quia qui. Nostrum et sed iure est eum quaerat ut. Veniam et ipsum consectetur eaque esse repudiandae aliquid.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (88, 17, 'et', 'Eum doloremque aut omnis praesentium. Ipsam enim laudantium nostrum consequuntur nostrum doloremque et. Voluptatem ut est ipsam animi. Mollitia ab impedit dolore ipsa.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (89, 29, 'molestias', 'Sit consequuntur sunt odio incidunt. Consequuntur ut fuga ut quisquam. Dolorem nisi quae voluptates vel est eius suscipit consequatur.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (90, 22, 'qui', 'Ipsam labore vel eius veniam nobis omnis. Voluptates sit vel natus minima harum quasi possimus. Harum odio et autem atque quis.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (91, 3, 'porro', 'Voluptatibus et laboriosam aut molestiae quia. Dolores necessitatibus ab voluptatem aliquid. Voluptas impedit officiis accusantium ab officiis qui temporibus.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (92, 6, 'aut', 'Soluta deleniti rerum reiciendis sit. Rerum deleniti modi nesciunt sequi. Rerum aspernatur aut et reprehenderit.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (93, 8, 'molestiae', 'Atque odit quia laboriosam et omnis et. Iure accusamus voluptas ex ad minima. Ut consequatur perferendis assumenda voluptatem beatae vero ex.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (94, 27, 'a', 'Temporibus vitae quae animi nisi provident repellendus. Excepturi temporibus vel provident. Voluptates quasi dolor id rerum qui aut. Facilis qui culpa voluptas. In officiis saepe quo voluptatum molestiae magni voluptatem.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (95, 20, 'hic', 'Sunt quia porro mollitia ex beatae incidunt. Aut at pariatur accusantium aut. Vel saepe qui exercitationem expedita nam id. Deserunt labore reprehenderit sit tempora rerum eos. Voluptatem dolores dicta aliquam earum voluptates vel quia veritatis.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (96, 13, 'id', 'Aut consequatur repudiandae quibusdam aspernatur. Dolor sit dolorum et non ex eius. Dolores velit maiores in ut.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (97, 8, 'iure', 'Dignissimos exercitationem cumque tempora vel illo veritatis. Ipsa voluptas reiciendis et laudantium et. Eum aperiam deleniti et sed voluptate voluptatum est vel. Ut ipsam dolores officia.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (98, 13, 'voluptatem', 'Quae consectetur qui in distinctio nisi amet. Rerum qui consequatur non eum praesentium nostrum. Voluptatem perferendis in nobis dolorem cumque.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (99, 2, 'nihil', 'Ad quibusdam est nemo est sed sint suscipit. Expedita dolorem illo veritatis corrupti. Expedita accusantium ipsum tenetur aut qui. Minima eligendi ipsam sit iste harum nesciunt omnis.');
INSERT INTO `research_projects` (`id`, `area_of_research_id`, `name`, `description`) VALUES (100, 10, 'recusandae', 'Dolores id quia quas necessitatibus qui dolor. Veritatis unde voluptas sunt nulla. Voluptatem nisi temporibus aliquid esse exercitationem est. Molestiae quidem ut voluptatum nisi vel expedita. Veritatis qui optio quia rerum ducimus.');


#
# TABLE STRUCTURE FOR: staff
#

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя преподавателя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия преподавателя',
  `job_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'должность или научное звание',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Преподаватели';

INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (1, 'M', '2015-01-15', 'Candice', 'Weber', 'PHD', 'aileen97@example.net');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (2, 'F', '2014-06-02', 'Lavern', 'Legros', 'professor', 'littel.kendrick@example.org');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (3, 'F', '2002-07-01', 'Ressie', 'Hamill', 'assistant', 'vroberts@example.net');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (4, 'M', '2010-01-14', 'Meagan', 'Hartmann', 'specialist', 'pete02@example.org');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (5, 'F', '1983-10-04', 'Marilyne', 'Dibbert', 'PHD', 'rohan.ashtyn@example.org');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (6, 'F', '1977-09-14', 'Meghan', 'Hamill', 'docent', 'glenna10@example.org');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (7, 'F', '2012-10-01', 'Camden', 'Ortiz', 'PHD', 'bratke@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (8, 'F', '2000-03-15', 'Katlyn', 'Cruickshank', 'PHD', 'santa.pollich@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (9, 'F', '1997-02-03', 'Irving', 'Wilderman', 'specialist', 'pfannerstill.libbie@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (10, 'M', '1971-10-29', 'Georgiana', 'Schmidt', 'specialist', 'ismith@example.org');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (11, 'F', '1970-05-04', 'Brendan', 'Fadel', 'PHD', 'murazik.cooper@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (12, 'M', '2001-12-11', 'Darian', 'Sporer', 'specialist', 'xavier75@example.net');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (13, 'F', '2007-11-09', 'Georgette', 'Dietrich', 'docent', 'wgerhold@example.net');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (14, 'F', '1974-06-18', 'Rosina', 'Howell', 'specialist', 'thaddeus74@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (15, 'F', '1988-10-08', 'Kaycee', 'Carroll', 'assistant', 'jeromy.price@example.net');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (16, 'M', '1986-09-23', 'Jewel', 'Lubowitz', 'PHD', 'samantha92@example.org');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (17, 'F', '2009-07-22', 'Raven', 'Welch', 'PHD', 'gturner@example.org');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (18, 'M', '1989-04-20', 'Eleazar', 'Huel', 'professor', 'dovie.cremin@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (19, 'F', '1977-12-05', 'Hanna', 'Schneider', 'researcher', 'zschuster@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (20, 'M', '1981-12-19', 'Aurelia', 'Stamm', 'researcher', 'pasquale95@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (21, 'F', '2018-07-15', 'Nicolas', 'Harvey', 'docent', 'marcelle.dicki@example.net');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (22, 'F', '2018-05-22', 'Nathanial', 'Schiller', 'PHD', 'sheila98@example.net');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (23, 'F', '1972-06-10', 'Keaton', 'Fahey', 'professor', 'ebert.roy@example.net');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (24, 'F', '2008-10-28', 'Danial', 'Satterfield', 'docent', 'samson.fay@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (25, 'M', '2009-01-24', 'Albertha', 'Cole', 'docent', 'jannie98@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (26, 'F', '1993-01-04', 'Alysha', 'Bednar', 'professor', 'mueller.eugene@example.net');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (27, 'M', '1981-01-26', 'Alvera', 'Wolff', 'professor', 'alex31@example.net');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (28, 'F', '1984-05-29', 'Lilla', 'Ruecker', 'researcher', 'nikolaus.koby@example.net');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (29, 'M', '1994-10-29', 'Ethelyn', 'Volkman', 'PHD', 'jadyn.hartmann@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (30, 'F', '1994-05-19', 'Edd', 'Koch', 'specialist', 'kiehn.francesco@example.net');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (31, 'M', '1995-03-27', 'Jovani', 'Lesch', 'assistant', 'eula.bergstrom@example.org');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (32, 'F', '2012-03-12', 'Lew', 'Bashirian', 'docent', 'cecilia.becker@example.org');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (33, 'M', '1988-10-08', 'Cierra', 'Anderson', 'PHD', 'hartmann.catalina@example.org');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (34, 'M', '1981-09-10', 'Okey', 'Mitchell', 'docent', 'metz.granville@example.net');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (35, 'F', '1977-09-18', 'Cierra', 'Robel', 'researcher', 'griffin.jakubowski@example.org');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (36, 'M', '1995-12-29', 'Arvilla', 'Baumbach', 'professor', 'granville.graham@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (37, 'M', '1984-02-12', 'Brandi', 'Reinger', 'docent', 'audreanne37@example.net');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (38, 'F', '1992-12-13', 'Leonie', 'Wisozk', 'docent', 'xmosciski@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (39, 'M', '1992-11-19', 'Oswald', 'Wilderman', 'assistant', 'hilpert.kurtis@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (40, 'F', '1994-10-19', 'Rylan', 'Gislason', 'specialist', 'milford36@example.net');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (41, 'F', '1992-10-20', 'Anastasia', 'Veum', 'assistant', 'bettie16@example.org');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (42, 'M', '2005-07-18', 'Michel', 'Jones', 'specialist', 'adolf25@example.org');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (43, 'M', '2014-03-26', 'Ceasar', 'Yundt', 'researcher', 'lorine83@example.org');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (44, 'F', '1978-02-24', 'Dexter', 'Carter', 'professor', 'strosin.enrico@example.net');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (45, 'F', '1975-07-13', 'Kip', 'Schaden', 'docent', 'madelynn.von@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (46, 'M', '2004-09-26', 'Abbey', 'Senger', 'PHD', 'hbailey@example.org');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (47, 'F', '1990-11-08', 'Marlene', 'Carroll', 'researcher', 'lorenza.hettinger@example.org');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (48, 'M', '2013-10-27', 'Julia', 'Senger', 'docent', 'lavada44@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (49, 'M', '1983-12-13', 'Rocky', 'Schoen', 'assistant', 'kathlyn42@example.com');
INSERT INTO `staff` (`id`, `gender`, `birthday`, `first_name`, `last_name`, `job_title`, `email`) VALUES (50, 'M', '1977-04-16', 'Bonnie', 'White', 'docent', 'runolfsdottir.davion@example.com');


#
# TABLE STRUCTURE FOR: staff_courses_supervision
#

DROP TABLE IF EXISTS `staff_courses_supervision`;

CREATE TABLE `staff_courses_supervision` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `staff_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ',
  `course_offering_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ',
  PRIMARY KEY (`id`),
  KEY `staff_courses_supervision_staff_id_fk` (`staff_id`),
  KEY `staff_courses_supervision_course_offering_id_fk` (`course_offering_id`),
  CONSTRAINT `staff_courses_supervision_course_offering_id_fk` FOREIGN KEY (`course_offering_id`) REFERENCES `courses_offered` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `staff_courses_supervision_staff_id_fk` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Кураторы';

INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (1, 38, 13);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (2, 37, 13);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (3, 42, 5);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (4, 9, 23);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (5, 4, 3);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (6, 1, 20);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (7, 23, 4);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (8, 32, 18);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (9, 47, 6);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (10, 11, 14);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (11, 46, 27);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (12, 14, 20);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (13, 35, 7);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (14, 31, 16);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (15, 48, 29);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (16, 21, 29);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (17, 20, 2);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (18, 36, 12);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (19, 49, 28);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (20, 13, 27);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (21, 6, 28);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (22, 2, 21);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (23, 3, 29);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (24, 8, 16);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (25, 12, 2);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (26, 27, 20);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (27, 25, 3);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (28, 17, 22);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (29, 43, 5);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (30, 10, 6);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (31, 28, 17);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (32, 40, 4);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (33, 7, 10);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (34, 16, 8);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (35, 24, 1);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (36, 34, 1);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (37, 19, 23);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (38, 33, 1);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (39, 45, 13);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (40, 22, 18);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (41, 41, 8);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (42, 44, 7);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (43, 5, 23);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (44, 29, 26);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (45, 39, 24);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (46, 26, 15);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (47, 18, 2);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (48, 50, 21);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (49, 30, 2);
INSERT INTO `staff_courses_supervision` (`id`, `staff_id`, `course_offering_id`) VALUES (50, 15, 16);


#
# TABLE STRUCTURE FOR: staff_on_research_projects
#

DROP TABLE IF EXISTS `staff_on_research_projects`;

CREATE TABLE `staff_on_research_projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `research_projects_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ',
  `staff_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ',
  `date_from` datetime DEFAULT current_timestamp() COMMENT 'Дата начала участия в проекте',
  PRIMARY KEY (`id`),
  KEY `staff_on_research_projects_research_projects_id_fk` (`research_projects_id`),
  KEY `staff_on_research_projects_staff_id_fk` (`staff_id`),
  CONSTRAINT `staff_on_research_projects_research_projects_id_fk` FOREIGN KEY (`research_projects_id`) REFERENCES `research_projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `staff_on_research_projects_staff_id_fk` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Преподаватели занятые в исследовательских проектах';

INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (1, 22, 47, '2020-06-06 08:00:03');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (2, 15, 39, '2020-10-26 09:13:13');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (3, 26, 31, '2020-04-01 09:17:12');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (4, 7, 47, '2020-05-12 08:55:04');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (5, 19, 9, '2020-09-02 20:45:59');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (6, 15, 34, '2020-06-17 05:46:39');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (7, 5, 47, '2020-04-28 00:04:56');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (8, 21, 13, '2020-03-09 04:44:18');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (9, 12, 13, '2020-10-13 05:52:03');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (10, 4, 33, '2020-05-06 06:37:49');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (11, 20, 21, '2020-08-05 21:25:10');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (12, 15, 10, '2020-07-22 00:09:18');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (13, 2, 40, '2020-06-26 03:20:31');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (14, 18, 31, '2020-04-03 13:26:19');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (15, 22, 32, '2020-11-15 03:47:03');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (16, 5, 17, '2020-05-06 08:17:37');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (17, 10, 36, '2020-11-01 14:46:28');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (18, 14, 8, '2020-05-03 02:06:40');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (19, 9, 27, '2020-03-10 04:34:46');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (20, 27, 16, '2020-07-29 22:03:52');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (21, 5, 4, '2020-04-14 23:33:53');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (22, 11, 38, '2020-11-07 10:04:34');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (23, 6, 20, '2020-07-31 00:46:21');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (24, 17, 27, '2020-05-20 19:11:07');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (25, 30, 23, '2020-12-09 06:36:52');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (26, 23, 22, '2020-07-11 01:55:08');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (27, 24, 19, '2020-08-19 00:32:52');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (28, 1, 15, '2020-01-01 17:31:14');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (29, 1, 15, '2020-08-22 21:10:41');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (30, 10, 50, '2020-08-16 02:51:12');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (31, 15, 27, '2020-04-13 17:48:32');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (32, 20, 41, '2020-06-26 16:43:10');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (33, 9, 29, '2020-06-21 08:50:20');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (34, 11, 39, '2020-05-27 14:20:30');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (35, 30, 14, '2020-03-15 10:49:50');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (36, 5, 40, '2020-09-25 16:50:14');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (37, 19, 35, '2020-02-09 18:32:04');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (38, 5, 42, '2020-03-10 00:58:00');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (39, 10, 26, '2020-11-17 14:59:48');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (40, 13, 16, '2020-01-06 17:48:43');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (41, 22, 24, '2020-10-23 10:31:43');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (42, 8, 50, '2020-10-18 13:49:25');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (43, 27, 14, '2020-11-30 06:46:33');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (44, 4, 39, '2020-09-19 02:26:26');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (45, 15, 46, '2020-05-22 08:26:38');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (46, 27, 40, '2020-12-06 12:26:55');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (47, 30, 37, '2020-02-16 07:32:59');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (48, 20, 47, '2020-01-14 12:18:15');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (49, 25, 34, '2020-04-11 03:29:26');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (50, 10, 11, '2020-04-03 19:37:52');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (51, 22, 18, '2020-09-21 19:14:01');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (52, 26, 40, '2020-10-19 05:29:22');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (53, 5, 25, '2020-06-24 03:27:04');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (54, 17, 50, '2020-09-24 14:11:34');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (55, 2, 39, '2020-08-19 07:33:07');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (56, 15, 2, '2020-09-23 02:23:51');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (57, 24, 2, '2020-10-21 08:31:32');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (58, 28, 30, '2020-06-07 16:27:04');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (59, 22, 2, '2020-05-27 17:03:12');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (60, 20, 1, '2020-03-17 12:20:10');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (61, 19, 30, '2020-12-05 23:37:15');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (62, 11, 15, '2020-03-11 14:20:00');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (63, 16, 4, '2020-05-07 16:46:04');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (64, 17, 25, '2020-07-30 09:21:13');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (65, 22, 7, '2020-03-05 10:09:31');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (66, 13, 34, '2020-06-27 17:43:22');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (67, 27, 24, '2020-04-11 08:11:52');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (68, 3, 49, '2020-01-24 22:28:42');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (69, 8, 45, '2020-04-11 02:55:39');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (70, 27, 41, '2020-03-17 20:37:07');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (71, 27, 7, '2020-02-02 06:52:45');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (72, 1, 14, '2020-10-09 23:44:29');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (73, 9, 37, '2020-09-05 14:32:43');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (74, 4, 50, '2020-03-30 09:01:03');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (75, 9, 48, '2020-06-16 16:58:45');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (76, 6, 24, '2020-01-30 17:50:43');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (77, 19, 29, '2020-02-09 06:07:08');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (78, 8, 33, '2019-12-26 00:01:50');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (79, 11, 33, '2020-01-09 05:46:19');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (80, 24, 22, '2020-02-15 20:00:53');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (81, 28, 17, '2020-02-29 07:14:29');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (82, 10, 33, '2020-10-18 18:46:49');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (83, 2, 45, '2020-10-01 11:31:13');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (84, 2, 45, '2020-11-18 07:17:32');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (85, 21, 45, '2020-06-03 05:34:15');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (86, 30, 3, '2020-11-17 10:01:12');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (87, 9, 23, '2020-06-17 14:46:37');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (88, 1, 4, '2020-07-24 19:12:34');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (89, 30, 23, '2020-08-01 07:56:49');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (90, 14, 42, '2019-12-26 03:03:41');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (91, 16, 28, '2020-09-28 10:51:58');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (92, 24, 12, '2020-08-07 12:29:08');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (93, 21, 16, '2020-11-02 10:59:26');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (94, 25, 33, '2020-04-23 07:31:17');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (95, 10, 6, '2019-12-27 07:45:09');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (96, 12, 24, '2020-03-19 07:57:34');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (97, 1, 2, '2020-06-18 05:07:41');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (98, 2, 21, '2020-09-16 00:37:11');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (99, 5, 37, '2019-12-30 16:07:38');
INSERT INTO `staff_on_research_projects` (`id`, `research_projects_id`, `staff_id`, `date_from`) VALUES (100, 8, 36, '2020-01-04 01:04:07');


#
# TABLE STRUCTURE FOR: staff_research_interests
#

DROP TABLE IF EXISTS `staff_research_interests`;

CREATE TABLE `staff_research_interests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `staff_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ',
  `area_of_research_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ',
  PRIMARY KEY (`id`),
  KEY `staff_research_interests_staff_id_fk` (`staff_id`),
  KEY `staff_research_interests_area_of_research_id_fk` (`area_of_research_id`),
  CONSTRAINT `staff_research_interests_area_of_research_id_fk` FOREIGN KEY (`area_of_research_id`) REFERENCES `area_of_research` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `staff_research_interests_staff_id_fk` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Компетенции преподавателей';

INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (1, 2, 21);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (2, 38, 2);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (3, 17, 19);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (4, 16, 7);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (5, 25, 20);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (6, 49, 13);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (7, 46, 7);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (8, 38, 25);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (9, 16, 8);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (10, 24, 16);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (11, 35, 7);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (12, 9, 7);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (13, 11, 1);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (14, 24, 7);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (15, 35, 1);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (16, 31, 18);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (17, 14, 28);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (18, 5, 5);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (19, 37, 26);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (20, 4, 4);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (21, 24, 6);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (22, 16, 2);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (23, 37, 16);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (24, 24, 8);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (25, 14, 22);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (26, 32, 19);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (27, 49, 22);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (28, 45, 19);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (29, 15, 3);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (30, 32, 28);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (31, 27, 19);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (32, 45, 18);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (33, 43, 1);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (34, 4, 16);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (35, 13, 20);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (36, 29, 24);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (37, 12, 22);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (38, 7, 2);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (39, 41, 6);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (40, 22, 10);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (41, 40, 29);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (42, 15, 14);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (43, 32, 21);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (44, 15, 1);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (45, 40, 1);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (46, 15, 3);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (47, 6, 7);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (48, 7, 11);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (49, 35, 18);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (50, 10, 2);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (51, 47, 22);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (52, 30, 22);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (53, 49, 30);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (54, 27, 21);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (55, 41, 20);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (56, 18, 20);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (57, 44, 4);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (58, 42, 7);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (59, 46, 7);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (60, 36, 2);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (61, 30, 17);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (62, 23, 18);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (63, 42, 1);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (64, 11, 25);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (65, 50, 19);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (66, 26, 17);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (67, 42, 27);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (68, 38, 27);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (69, 38, 9);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (70, 7, 30);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (71, 48, 2);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (72, 28, 12);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (73, 43, 9);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (74, 6, 16);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (75, 37, 21);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (76, 5, 5);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (77, 29, 20);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (78, 21, 22);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (79, 5, 9);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (80, 10, 12);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (81, 17, 8);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (82, 15, 11);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (83, 27, 19);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (84, 21, 29);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (85, 46, 28);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (86, 4, 17);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (87, 20, 10);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (88, 29, 9);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (89, 47, 4);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (90, 3, 3);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (91, 43, 17);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (92, 46, 13);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (93, 18, 19);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (94, 28, 14);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (95, 22, 18);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (96, 36, 16);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (97, 15, 1);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (98, 27, 14);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (99, 13, 2);
INSERT INTO `staff_research_interests` (`id`, `staff_id`, `area_of_research_id`) VALUES (100, 13, 16);


#
# TABLE STRUCTURE FOR: student_course_registrations
#

DROP TABLE IF EXISTS `student_course_registrations`;

CREATE TABLE `student_course_registrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `student_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ',
  `course_schedule_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ',
  PRIMARY KEY (`id`),
  KEY `student_course_registrations_students_id_fk` (`student_id`),
  KEY `student_course_registrations_courses_scheduled_id_fk` (`course_schedule_id`),
  CONSTRAINT `student_course_registrations_courses_scheduled_id_fk` FOREIGN KEY (`course_schedule_id`) REFERENCES `courses_scheduled` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_course_registrations_students_id_fk` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Подписка';

INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (1, 247, 20);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (2, 115, 27);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (3, 89, 28);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (4, 18, 21);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (5, 68, 26);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (6, 256, 13);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (7, 190, 22);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (8, 164, 5);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (9, 98, 28);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (10, 156, 10);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (11, 142, 15);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (12, 153, 2);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (13, 249, 8);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (14, 19, 19);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (15, 181, 28);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (16, 194, 13);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (17, 282, 1);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (18, 285, 13);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (19, 238, 3);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (20, 145, 17);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (21, 73, 11);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (22, 126, 1);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (23, 103, 3);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (24, 183, 13);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (25, 39, 4);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (26, 14, 28);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (27, 7, 7);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (28, 78, 29);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (29, 223, 5);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (30, 174, 11);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (31, 196, 24);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (32, 108, 3);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (33, 45, 22);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (34, 161, 2);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (35, 99, 25);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (36, 207, 27);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (37, 4, 12);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (38, 137, 21);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (39, 300, 2);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (40, 28, 16);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (41, 60, 26);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (42, 233, 25);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (43, 184, 13);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (44, 172, 19);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (45, 231, 21);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (46, 56, 3);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (47, 287, 26);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (48, 179, 13);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (49, 280, 26);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (50, 46, 25);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (51, 167, 6);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (52, 275, 10);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (53, 201, 26);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (54, 9, 24);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (55, 274, 27);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (56, 30, 5);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (57, 200, 1);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (58, 237, 15);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (59, 113, 4);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (60, 224, 4);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (61, 84, 24);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (62, 257, 22);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (63, 252, 23);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (64, 47, 7);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (65, 253, 20);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (66, 260, 7);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (67, 235, 2);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (68, 119, 8);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (69, 80, 26);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (70, 258, 6);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (71, 192, 14);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (72, 26, 14);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (73, 13, 19);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (74, 75, 21);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (75, 271, 5);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (76, 189, 21);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (77, 299, 26);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (78, 284, 19);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (79, 152, 10);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (80, 114, 8);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (81, 270, 27);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (82, 197, 12);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (83, 29, 12);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (84, 176, 17);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (85, 175, 10);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (86, 148, 5);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (87, 295, 26);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (88, 116, 29);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (89, 272, 27);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (90, 1, 5);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (91, 219, 30);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (92, 144, 20);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (93, 27, 7);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (94, 112, 24);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (95, 65, 8);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (96, 58, 27);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (97, 48, 19);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (98, 131, 11);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (99, 85, 14);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (100, 16, 16);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (101, 160, 3);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (102, 296, 18);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (103, 227, 23);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (104, 38, 30);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (105, 157, 7);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (106, 51, 6);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (107, 215, 25);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (108, 255, 15);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (109, 261, 18);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (110, 283, 14);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (111, 210, 3);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (112, 17, 12);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (113, 212, 12);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (114, 178, 4);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (115, 276, 20);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (116, 79, 4);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (117, 242, 3);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (118, 93, 27);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (119, 168, 19);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (120, 278, 18);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (121, 21, 8);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (122, 205, 21);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (123, 198, 25);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (124, 265, 17);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (125, 159, 29);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (126, 182, 12);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (127, 125, 27);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (128, 229, 18);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (129, 120, 21);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (130, 74, 16);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (131, 102, 1);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (132, 124, 30);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (133, 59, 5);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (134, 52, 17);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (135, 82, 12);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (136, 87, 29);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (137, 236, 16);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (138, 96, 28);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (139, 66, 5);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (140, 50, 15);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (141, 63, 22);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (142, 213, 13);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (143, 155, 19);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (144, 171, 3);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (145, 273, 3);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (146, 163, 23);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (147, 139, 15);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (148, 12, 8);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (149, 70, 18);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (150, 158, 13);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (151, 245, 29);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (152, 42, 15);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (153, 218, 17);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (154, 267, 5);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (155, 2, 6);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (156, 140, 15);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (157, 191, 26);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (158, 143, 20);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (159, 44, 29);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (160, 33, 19);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (161, 298, 12);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (162, 76, 21);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (163, 217, 2);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (164, 111, 2);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (165, 154, 7);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (166, 64, 5);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (167, 293, 21);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (168, 61, 27);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (169, 291, 17);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (170, 54, 25);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (171, 149, 25);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (172, 121, 22);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (173, 248, 14);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (174, 277, 5);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (175, 31, 21);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (176, 105, 23);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (177, 269, 30);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (178, 169, 9);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (179, 165, 7);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (180, 6, 4);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (181, 90, 28);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (182, 292, 4);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (183, 36, 4);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (184, 266, 3);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (185, 128, 17);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (186, 43, 12);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (187, 262, 10);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (188, 199, 14);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (189, 221, 6);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (190, 3, 14);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (191, 297, 18);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (192, 150, 21);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (193, 15, 6);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (194, 166, 20);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (195, 141, 15);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (196, 91, 26);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (197, 228, 28);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (198, 34, 7);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (199, 53, 6);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (200, 202, 26);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (201, 77, 15);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (202, 206, 11);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (203, 250, 25);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (204, 20, 18);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (205, 251, 13);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (206, 146, 25);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (207, 187, 19);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (208, 127, 24);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (209, 106, 19);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (210, 57, 18);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (211, 208, 27);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (212, 107, 22);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (213, 290, 4);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (214, 122, 15);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (215, 5, 14);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (216, 49, 24);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (217, 225, 8);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (218, 254, 22);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (219, 281, 13);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (220, 92, 8);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (221, 110, 4);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (222, 10, 30);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (223, 25, 9);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (224, 37, 7);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (225, 129, 24);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (226, 268, 3);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (227, 69, 21);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (228, 239, 7);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (229, 118, 7);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (230, 35, 17);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (231, 88, 8);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (232, 173, 2);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (233, 100, 25);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (234, 188, 3);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (235, 232, 24);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (236, 138, 5);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (237, 41, 17);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (238, 151, 2);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (239, 264, 10);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (240, 23, 28);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (241, 81, 1);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (242, 214, 7);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (243, 289, 6);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (244, 222, 7);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (245, 109, 13);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (246, 180, 16);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (247, 186, 22);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (248, 32, 15);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (249, 263, 1);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (250, 234, 2);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (251, 8, 14);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (252, 243, 16);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (253, 130, 10);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (254, 185, 28);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (255, 162, 11);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (256, 177, 8);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (257, 226, 2);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (258, 246, 5);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (259, 95, 20);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (260, 135, 17);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (261, 147, 21);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (262, 193, 17);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (263, 259, 25);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (264, 240, 24);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (265, 133, 3);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (266, 24, 8);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (267, 55, 8);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (268, 294, 15);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (269, 244, 8);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (270, 211, 4);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (271, 62, 4);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (272, 117, 8);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (273, 241, 24);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (274, 72, 17);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (275, 11, 8);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (276, 94, 4);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (277, 195, 6);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (278, 83, 16);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (279, 40, 25);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (280, 134, 16);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (281, 204, 23);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (282, 136, 4);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (283, 132, 23);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (284, 286, 21);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (285, 104, 1);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (286, 71, 3);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (287, 209, 3);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (288, 86, 1);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (289, 230, 25);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (290, 22, 16);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (291, 203, 16);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (292, 288, 13);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (293, 279, 14);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (294, 216, 17);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (295, 123, 7);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (296, 67, 29);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (297, 220, 6);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (298, 97, 14);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (299, 101, 19);
INSERT INTO `student_course_registrations` (`id`, `student_id`, `course_schedule_id`) VALUES (300, 170, 17);




-- Cкрипты создания ключей (они были созданы выше).

/*
ALTER TABLE profiles
	ADD CONSTRAINT profiles_student_id_fk
		FOREIGN KEY (student_id) REFERENCES students(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;

ALTER TABLE courses_scheduled
	ADD CONSTRAINT courses_scheduled_course_offered_id_fk
		FOREIGN KEY (course_offered_id) REFERENCES courses_offered(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;
		
ALTER TABLE student_course_registrations
	ADD CONSTRAINT student_course_registrations_students_id_fk
		FOREIGN KEY (student_id) REFERENCES students(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE,
	ADD CONSTRAINT student_course_registrations_courses_scheduled_id_fk
		FOREIGN KEY (course_schedule_id) REFERENCES courses_scheduled(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;
		
ALTER TABLE staff_courses_supervision
	ADD CONSTRAINT staff_courses_supervision_staff_id_fk
		FOREIGN KEY (staff_id) REFERENCES staff(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE,
	ADD CONSTRAINT staff_courses_supervision_course_offering_id_fk
		FOREIGN KEY (course_offering_id) REFERENCES courses_offered(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;
		
ALTER TABLE staff_research_interests
	ADD CONSTRAINT staff_research_interests_staff_id_fk
		FOREIGN KEY (staff_id) REFERENCES staff(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE,
	ADD CONSTRAINT staff_research_interests_area_of_research_id_fk
		FOREIGN KEY (area_of_research_id) REFERENCES area_of_research(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;	

ALTER TABLE research_projects
	ADD CONSTRAINT research_projects_area_of_research_id_fk
		FOREIGN KEY (area_of_research_id) REFERENCES area_of_research(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;		
			
ALTER TABLE staff_on_research_projects
	ADD CONSTRAINT staff_on_research_projects_research_projects_id_fk
		FOREIGN KEY (research_projects_id) REFERENCES research_projects(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE,
	ADD CONSTRAINT staff_on_research_projects_staff_id_fk
		FOREIGN KEY (staff_id) REFERENCES staff(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE;	
*/
				
-- Анализируем запросы которые могут выполняться наиболее часто и добовляем необходимые индексы.
-- Индексны целесообразно создавать для уникальных полей и с большим количеством строк. Таких полей у нас 2 студенты и персонал (преподаватели).
-- В связи с тем что студентов намного больше и вероятность повторения фамилий выше а также с целью демонстрации умения создавать разные типы индексов
-- создадим:
-- 1. составной индекс для students для оптимизации поиска по имени и фамилии,
-- 2. уникальный индекс для поиска студентов по адресу электронной почты,
-- 3. обычный индекс для поиска преподавателя (таблица staff) по фамилии.

-- SELECT * FROM students;
CREATE INDEX students_first_name_last_name_idx ON students(first_name, last_name);
CREATE UNIQUE INDEX students_email_idx ON students(email);

-- SELECT * FROM staff;
CREATE INDEX staff_last_name_idx ON staff(last_name);
