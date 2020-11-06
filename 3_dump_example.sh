# Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.


# Выполняем дамп базы данных exaple в файл dumpexampl.sql

mysqldump example > dumpexample.sql

ls
# dumpexample.sql   snap    Документы   Изображения   Общедоступные   Шаблоны
# hello.sql         Видео   Загрузки    Музыка       'Рабочий стол'


# Выполняем развертывание дампа из файла dumpexample.sql в базу данных sample

mysql sample < dumpexample.sql

# Проверяем результат развертывания

# mysql> use sample

# Reading table information for completion of table and column names
# You can turn off this feature to get a quicker startup with -A

# Database changed

# mysql> select * from users;
# +----+--------------+
# | id | name         |
# +----+--------------+
# |  1 | Андрей       |
# +----+--------------+
# 1 row in set (0.00 sec)

# mysql> exit
