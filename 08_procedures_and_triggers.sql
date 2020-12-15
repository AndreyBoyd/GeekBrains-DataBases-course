-- 08. хранимые процедуры / триггеры;

-- создаём хранимую процедуру, которая выводит расписание
DROP PROCEDURE IF EXISTS schedule;

DELIMITER //

CREATE PROCEDURE schedule()

BEGIN
	
SELECT
  courses_scheduled.id,
  courses_offered.name,
    courses_scheduled.other_details   
	   FROM courses_scheduled
	      LEFT JOIN courses_offered
	        ON courses_scheduled.course_offered_id = courses_offered.id;
END

DELIMITER ;

CALL schedule();

-- создаём хранимую процедуру которая выводит список всех студентов старше 30 лет 
-- указывает их пол, день рождение и подсчитывает количество
DROP PROCEDURE IF EXISTS old_students;
DROP TABLE IF EXISTS tmp_table_students_30yo_age;

DELIMITER //

CREATE PROCEDURE old_students()

BEGIN
	
CREATE TEMPORARY TABLE tmp_table_students_30yo_age
	SELECT
	students.first_name,
	students.last_name,
	profiles.birthday,
	profiles.gender 
	   FROM students
	      LEFT JOIN profiles
	        ON students.id = profiles.student_id;

ALTER TABLE tmp_table_students_30yo_age ADD age INT NOT NULL;
UPDATE tmp_table_students_30yo_age SET age = TIMESTAMPDIFF(YEAR, birthday, NOW());

SELECT (COUNT(age)) AS sum_students_older_30 FROM tmp_table_students_30yo_age WHERE age > 30;
SELECT * FROM tmp_table_students_30yo_age WHERE age > 30
ORDER BY age;

END

DELIMITER ;

CALL old_students();

-- создаём триггер который запмсывает в таблицу logs данные о внесении в базу нового студента

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    table_name varchar(50) NOT NULL,
    new_student_id INT UNSIGNED NOT NULL,
    new_student_first_name varchar(255),
    new_student_last_name varchar(255)
) ENGINE = Archive;

SELECT * FROM logs;

DROP TRIGGER IF EXISTS student_insert;

DELIMITER //

CREATE 
    TRIGGER student_insert AFTER INSERT 
    ON students
    FOR EACH ROW BEGIN
          INSERT INTO logs SET created_at = NOW(), 
   						       table_name = 'students',
                               new_student_id = NEW.id,
                               new_student_first_name = NEW.first_name,
                               new_student_last_name = NEW.last_name;
   	END//

DELIMITER ;

INSERT INTO students (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`) VALUES (301, 'Andrei', 'Boidok', 'boidok@example.net', '777-777-777', '2020-07-19 07:20:18');

-- для проверки работы тригерра раскомментировать и выполнить строку ниже
-- SELECT * FROM logs;

-- перед повторным запуском триггера раскомментировать и выполнить строку ниже
-- DELETE FROM students WHERE id = 301;
