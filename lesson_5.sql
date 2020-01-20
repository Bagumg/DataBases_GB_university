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
 * ����� � ������� users ���� created_at � updated_at ��������� ��������������. ��������� �� �������� ����� � ��������.
 */

update lesson_5.users set created_at = now() where id is not null;
update lesson_5.users set updated_at = now() where id is not null;

/*
 * ������� users ���� �������� ��������������. ������ created_at � updated_at ���� ������ ����� VARCHAR 
 * � � ��� ������ ����� ���������� �������� � ������� "20.10.2017 8:10". 
 * ���������� ������������� ���� � ���� DATETIME, �������� �������� ����� ��������.
 */

update lesson_5.users set created_at = convert(varchar, getdate(), 20);
update lesson_5.users set updated_at = convert(varchar, getdate(), 20);

/*
 * � ������� ��������� ������� storehouses_products � ���� value ����� ����������� ����� ������ �����: 
 * 0, ���� ����� ���������� � ���� ����, ���� �� ������ ������� ������. 
 * ���������� ������������� ������ ����� �������, ����� ��� ���������� � ������� ���������� �������� value. 
 * ������, ������� ������ ������ ���������� � �����, ����� ���� �������.
 */

drop table storehouses_products if exists;
create table storehouses_products (`value` int);
insert into storehouses_products	(`value`) VALUES (0),(2500),(0),(30),(500),(1);
select * from storehouses_products
order by value=0, value

/*
 * (�� �������) �� ������� users ���������� ������� �������������, ���������� � ������� � ���. 
 * ������ ������ � ���� ������ ���������� �������� ('may', 'august')
 */

drop table users if exists;
create table users (`user` varchar(32), `month` varchar(32));
insert into users (`user`) VALUES ('one'),('two'),('three'),('four'),('fifth'),('six');
insert into users (`month`) VALUES ('may'),('june'),('july'),('august'),('september'),('may');

SELECT * FROM mytable
WHERE month IN ('may', 'august')

/*
 * ����������� ������� ������� ������������� � ������� users
 */

select * from lesson_5.users as usr;
select round((birthday_at - now()) / usr);


/*
 * ����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������. 
 * ������� ������, ��� ���������� ��� ������ �������� ����, � �� ���� ��������.
 */

SELECT COUNT(*), DAYOFWEEK(created_at) as dow FROM users GROUP BY dow; -- �� � ����� �� � ��� �����, � ��������� ������ :)


