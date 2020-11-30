-- Переписать запросы, заданые к ДЗ урока 6, с использованием JOIN

-- Работаем над устранением замечаний к ДЗ урока 6, а именно:

-- Задание 3:
-- Верно, но решено на неявном JOIN.
-- Задание 4:
-- Тут нужно дорабатывать, не все target_id это пользователи, нужно также проверять target_type_id.

USE vk;

-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT COUNT(*) AS likes, gender 
  FROM likes
    JOIN profiles
      ON likes.user_id = profiles.user_id
GROUP BY gender 
LIMIT 1;

-- 4. Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).

SELECT COUNT(likes.target_type_id) AS total_likes
  FROM (SELECT user_id FROM profiles ORDER BY profiles.birthday DESC LIMIT 10) AS youngsters
    LEFT JOIN likes
      ON target_id = youngsters.user_id AND target_type_id = 2;

-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети (было изначально решено верно через JOIN).

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
