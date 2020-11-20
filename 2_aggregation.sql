USE shop;

-- 1. Подсчитайте средний возраст пользователей в таблице users.

SELECT * FROM users;

ALTER TABLE users ADD age INT NOT NULL;

UPDATE users SET age = TIMESTAMPDIFF(YEAR, birthday_at, NOW());

SELECT * FROM users;
SELECT AVG(age) FROM users;


-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения.


SELECT
    DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6, 10))) AS day_of_week_2020,
    COUNT(*) AS total
FROM
    users
GROUP BY 
    day_of_week_2020
ORDER BY
	total DESC;
	