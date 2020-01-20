drop table users if exists;
create table users (
	id int primary key,
	users varchar(64),
	created_at varchar(64),
	updated_at varchar(64)
);

INSERT INTO lesson_5.users VALUES 
('0','Eloy','1974-12-13','1995-12-24'),
('1','Jadyn','2006-07-19','1973-05-10'),
('2','Morgan','1975-12-24','1995-08-11'),
('3','Kristopher','1995-04-28','1992-08-02'),
('4','Sheila','1981-04-01','2018-05-26'),
('5','Ola','1996-12-11','1980-06-28'),
('6','Lorna','2001-12-04','2014-03-17'),
('7','Annalise','1992-02-13','2009-10-20'),
('8','Darien','1991-07-12','1980-11-20'),
('9','Daron','1999-10-21','1997-11-19'); 


/*
 * ѕусть в таблице users пол€ created_at и updated_at оказались незаполненными. «аполните их текущими датой и временем.
 */

update lesson_5.users set created_at = now() where id is not null;
update lesson_5.users set updated_at = now() where id is not null;

/*
 * “аблица users была неудачно спроектирована. «аписи created_at и updated_at были заданы типом VARCHAR 
 * и в них долгое врем€ помещались значени€ в формате "20.10.2017 8:10". 
 * Ќеобходимо преобразовать пол€ к типу DATETIME, сохранив введеные ранее значени€.
 */

update lesson_5.users set created_at = convert(varchar, getdate(), 20);
update lesson_5.users set updated_at = convert(varchar, getdate(), 20);

/*
 * ¬ таблице складских запасов storehouses_products в поле value могут встречатьс€ самые разные цифры: 
 * 0, если товар закончилс€ и выше нул€, если на складе имеютс€ запасы. 
 * Ќеобходимо отсортировать записи таким образом, чтобы они выводились в пор€дке увеличени€ значени€ value. 
 * ќднако, нулевые запасы должны выводитьс€ в конце, после всех записей.
 */

drop table storehouses_products if exists;
create table storehouses_products (`value` int);
insert into storehouses_products	(`value`) VALUES (0),(2500),(0),(30),(500),(1);
select * from storehouses_products
order by value=0, value

/*
 * (по желанию) »з таблицы users необходимо извлечь пользователей, родившихс€ в августе и мае. 
 * ћес€цы заданы в виде списка английских названий ('may', 'august')
 */

drop table users if exists;
create table users (`user` varchar(32), `month` varchar(32));
insert into users (`user`) VALUES ('one'),('two'),('three'),('four'),('fifth'),('six');
insert into users (`month`) VALUES ('may'),('june'),('july'),('august'),('september'),('may');

SELECT * FROM mytable
WHERE month IN ('may', 'august')

/*
 * ѕодсчитайте средний возраст пользователей в таблице users
 */

select * from lesson_5.users as usr;
select round((birthday_at - now()) / usr);


/*
 * ѕодсчитайте количество дней рождени€, которые приход€тс€ на каждый из дней недели. 
 * —ледует учесть, что необходимы дни недели текущего года, а не года рождени€.
 */

SELECT COUNT(*), DAYOFWEEK(created_at) as dow FROM users GROUP BY dow; -- ух и долго же € ним билс€, а оказалось просто :)


