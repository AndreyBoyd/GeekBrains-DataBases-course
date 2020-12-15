-- 6. скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные таблицы);

USE ou;

-- используем ORDER BY что бы посмотреть корректность данных в столбцах birthday в таблицах profiles и staff
-- студенты должны быть не моложе 18 лет, а преподаватели 25 лет.

-- смотрим что сейчас записано в таблицах
SELECT * FROM profiles ORDER BY birthday DESC;
SELECT * FROM staff ORDER BY birthday DESC;

-- вносим соответствующие изменения в данные c использованием вложенного запроса
UPDATE profiles SET birthday = (SELECT timestamp('1998-04-30') - INTERVAL FLOOR( RAND( ) * 365) DAY) WHERE birthday > '2002-01-01';
UPDATE staff SET birthday = (SELECT timestamp('1980-01-31') - INTERVAL FLOOR( RAND( ) * 365) DAY) WHERE birthday > '1995-01-01';

-- смотрим что получилось
SELECT * FROM profiles ORDER BY birthday DESC;
SELECT * FROM staff ORDER BY birthday DESC;

-- подсчитаем средний возраст студентов с использованием JOIN и временной таблицы.
DROP TABLE tmp_table_students_avg_age;
CREATE TEMPORARY TABLE tmp_table_students_avg_age
	SELECT
	students.first_name,
	students.last_name,
	profiles.birthday 
	   FROM students
	      LEFT JOIN profiles
	        ON students.id = profiles.student_id;

-- модифицируем временную таблицу
ALTER TABLE tmp_table_students_avg_age ADD age INT NOT NULL;
UPDATE tmp_table_students_avg_age SET age = TIMESTAMPDIFF(YEAR, birthday, NOW());

-- смотрим модифицированную таблицу
SELECT * FROM tmp_table_students_avg_age;
-- смотрим средний возраст студентов
SELECT ROUND(AVG(age)) AS average_age FROM tmp_table_students_avg_age;


-- используем группировку GROUP BY что бы посмотреть количество женщин и мужчин студентов и преподавателей

-- студенты
SELECT COUNT(*) AS id, gender FROM students, profiles
WHERE students.id = profiles.student_id
GROUP BY gender;

-- преподаватели
SELECT COUNT(*) AS id, gender FROM staff
GROUP BY gender;

--  узнаём сколько профессоров, ассистентов, доцентов и т.д. работает в Открытом Университете.
SELECT COUNT(*) AS sum_count, job_title FROM staff
GROUP BY job_title 
ORDER BY sum_count;

 