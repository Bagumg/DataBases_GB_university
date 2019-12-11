/* Задача №1
Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.
*/
Скриншот в архиве.

/* Задача №2
Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.
*/

create database if not exists example;
use database example;

create table if not exists users (
	id INT primary key,
	name varchar(255)
);

/* Задача №3
Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.
*/

mysqldump -u root -p example > example_db.sql --без root и -p не срабатывало mysqldump в PATH нет
create database if not exists sample;
mysql sample < example_db.sql

/* Задача №4
(по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump.
Создайте дамп единственной таблицы help_keyword базы данных mysql.
Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.
*/

mysqldump -u root -p --where='limit=100' mysql help_keyword > help_keyword_tbl.sql