-- домашнее задание к уроку 5 часть 1: операторы, фильтрация, сортировка и ограничение
-- используя файл source04.zip создаём базу данных shop (прилагается отдельным файлом)

USE shop;

-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.

-- смотрим что находится в таблице users и вносим необходимые изменения
SELECT * FROM users;
UPDATE users SET created_at = NOW(), updated_at = NOW();

-- смотрим что получилось
SELECT * FROM users;

-- 2. Таблица users была неудачно спроектирована. 
-- Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
-- Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.

-- удаляем столбцы для "чистоты эксперемента" и создаём их заново с типом VARCHAR
ALTER TABLE users DROP COLUMN created_at, DROP COLUMN updated_at;

SHOW COLUMNS FROM users;

ALTER TABLE users ADD (
  created_at VARCHAR(255) NULL,
  updated_at VARCHAR(255) NULL
);

-- проверяем что тип изменился
SHOW COLUMNS FROM users;

UPDATE users set created_at=STR_TO_DATE('20.10.2017 8:10', '%d.%m.%Y %H:%i'), updated_at=STR_TO_DATE('20.10.2017 8:10', '%d.%m.%Y %H:%i');
ALTER TABLE users MODIFY created_at DATETIME, MODIFY updated_at DATETIME;

-- смотрим результат
SHOW COLUMNS FROM users;
SELECT * FROM users;

-- 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 
-- 0, если товар закончился и выше нуля, если на складе имеются запасы. 
-- Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
-- Однако нулевые запасы должны выводиться в конце, после всех записей.

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
    id SERIAL PRIMARY KEY,
    value INT NOT NULL DEFAULT 0
);

INSERT INTO storehouses_products (value) VALUES
    (0),
    (44545),
    (0),
    (3240),
    (4030),
    (1),
    (0),
    (445),
    (0),
    (3240),
    (40),
    (1);

SELECT * FROM storehouses_products ORDER BY CASE WHEN value = 0 THEN TRUE ELSE FALSE END, value;
