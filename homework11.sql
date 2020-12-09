-- Практическое задание по теме “Оптимизация запросов”

-- 1. Создайте таблицу logs типа Archive. 
-- Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается 
-- время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.

USE shop;

DROP TABLE IF EXISTS logs;

CREATE TABLE logs (
    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	created_at DATETIME NOT NULL,
	target_id BIGINT NOT NULL,
	table_name ENUM('users', 'catalogs' ,'products') NOT NULL,
	name VARCHAR(255)
) ENGINE=Archive;

SELECT * FROM logs;

DROP TRIGGER IF EXISTS trg_users_logs_create;
DROP TRIGGER IF EXISTS trg_catalogs_logs_create;
DROP TRIGGER IF EXISTS trg_products_logs_create;

DELIMITER //

CREATE TRIGGER trg_users_logs_create AFTER INSERT ON users
FOR EACH ROW BEGIN
   INSERT INTO logs SET created_at = NOW(), 
   						target_id = NEW.id,
   						table_name = 'users',
   						name = NEW.name
  	;
END//

CREATE TRIGGER trg_catalogs_logs_create AFTER INSERT ON catalogs
FOR EACH ROW BEGIN
   INSERT INTO logs SET created_at = NOW(), 
   						target_id = NEW.id,
   						table_name = 'catalogs',
   						name = NEW.name
  	;
END//

CREATE TRIGGER trg_products_logs_create AFTER INSERT ON products
FOR EACH ROW BEGIN
   INSERT INTO logs SET created_at = NOW(), 
   						target_id = NEW.id,
   						table_name = 'products',
   						name = NEW.name
  	;
END//

DELIMITER ;

-- 2. (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.

DROP TABLE IF EXISTS users_1000000;
CREATE TABLE users_1000000(
	id SERIAL PRIMARY KEY,
	name VARCHAR(10) NOT NULL,
	age TINYINT UNSIGNED
) ENGINE = MEMORY;

SELECT * FROM users_1000000;

DROP PROCEDURE IF EXISTS 1000000_entries;

DELIMITER //

CREATE PROCEDURE 1000000_entries (IN count_rows INT)
  BEGIN 
	DECLARE new_entry VARCHAR(10);  
	WHILE count_rows > 0 DO	
		INSERT DELAYED INTO users_1000000 SET name = 'Andrey', age = '44';    	
    	SET count_rows = count_rows - 1;
  	END WHILE;	     
	  
END//
  
DELIMITER ;

CALL 1000000_entries (1000000);

SELECT * FROM users_1000000;


-- Практическое задание по теме “NoSQL”

-- попробовал делать, очень долго получается, за разумное время не потянуть. 

