-- Задания на БД vk:

USE vk;

-- 1. Проанализировать какие запросы могут выполняться наиболее
-- часто в процессе работы приложения и добавить необходимые индексы.

SELECT * FROM users;
CREATE INDEX users_last_name_idx ON users(last_name);
CREATE INDEX users_first_name_last_name_idx ON users(first_name, last_name);

SELECT * FROM profiles;
CREATE INDEX profiles_birthday_idx ON profiles(birthday);
CREATE INDEX ptofiles_city_country_idx ON profiles (city, country);


-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы;
-- среднее количество пользователей в группах;
-- самый молодой пользователь в группе;
-- самый старший пользователь в группе;
-- общее количество пользователей в группе;
-- всего пользователей в системе;
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100.

SELECT DISTINCT communities.name,
  COUNT(communities_users.user_id) OVER() / (SELECT COUNT(id) FROM communities) AS average_numbers_of_users,
  MAX(profiles.birthday) OVER(PARTITION BY communities_users.community_id) AS youngest_user_birthday,
  MIN(profiles.birthday) OVER(PARTITION BY communities_users.community_id) AS oldest_user_birthday,
  COUNT(communities_users.user_id) OVER(PARTITION BY communities_users.community_id) AS total_users_in_each_communities,  
  COUNT(communities_users.user_id) OVER() AS total_users_in_all_communities,
  COUNT(communities_users.user_id) OVER(PARTITION BY communities_users.community_id) / COUNT(communities_users.user_id) OVER() * 100 AS "%%"
    FROM communities_users
      JOIN communities 
        ON communities_users.community_id = communities.id
      JOIN profiles
        ON communities_users.user_id = profiles.user_id
      JOIN users
        ON communities_users.user_id = users.id;
