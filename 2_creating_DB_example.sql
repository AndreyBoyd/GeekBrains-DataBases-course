-- Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.

CREATE DATABASE IF NOT EXISTS example;
USE example;
DROP TABLE IF EXISTS users;
CREATE TABLE users(
  id INT UNSIGNED, 
  name VARCHAR(15) COMMENT 'Имя пользователя', 
  PRIMARY KEY (id)
);
INSERT INTO users VALUES (1,'Андрей');
SELECT * FROM users;
