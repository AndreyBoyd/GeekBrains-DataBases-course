-- 07. представления (минимум 2)

USE ou;

-- представление из 1 таблицы 
-- создаём представление которое выводит фамилию и имя преподавателя, а также его научное звание/должность
CREATE OR REPLACE VIEW staff_qualification AS
SELECT 
    staff.id,
    staff.first_name,
    staff.last_name,
    staff.job_title
  FROM staff;

SELECT * FROM staff_qualification;

-- представление из 2 таблиц
-- создаём представление которое выводит название курсов из таблицы courses_offered и добавляет его в соответствии с id таблицы courses_scheduled
-- т.е. это представление позволяет видеть фактическое название курсов в расписании а не только их id
CREATE OR REPLACE VIEW scheduled_courses_name AS
SELECT 
    courses_scheduled.course_offered_id AS id,
    courses_offered.name AS name
  FROM courses_scheduled
    LEFT JOIN courses_offered 
      ON courses_scheduled.course_offered_id = courses_offered.id;

SELECT * FROM scheduled_courses_name;

-- представление из 3 таблиц
-- создаём представление которое выводит имена и фамилии студентов и название курса на который они подписаны (ограничиваем вывод 10 записями)
CREATE OR REPLACE VIEW student_courses_name AS
SELECT 
    students.id,
    students.first_name AS student_name,
    students.last_name AS student_last_name,
    student_course_registrations.course_schedule_id AS course_id,
    courses_offered.name AS course_name
  FROM students
    LEFT JOIN student_course_registrations 
      ON students.id = student_course_registrations.student_id
    LEFT JOIN courses_offered 
      ON student_course_registrations.course_schedule_id = courses_offered.id
  ORDER BY students.id LIMIT 10; 
   
SELECT * FROM student_courses_name;

  