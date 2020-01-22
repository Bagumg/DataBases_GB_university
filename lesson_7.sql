/*
 * Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
 */

select id, name from users
where id in (select user_id from orders);

/*
 * Выведите список товаров products и разделов catalogs, который соответствует товару.
 */

select id, name, price, catalog_id from products
where catalog_id in (select id from catalogs)
order by id;

/*
 * (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name).
 * Поля from, to и label содержат английские названия городов, поле name — русское.
 * Выведите список рейсов flights с русскими названиями городов.
 */

drop table if exists `flights`;
create table `flights` (
 `id` int primary key auto_increment,
 `from` varchar(64),
 `to` varchar(64)
);

INSERT INTO `flights` VALUES 
('1','mollitia','inventore'),
('2','dolorem','quasi'),
('3','ab','est'),
('4','minima','minus'),
('5','voluptatum','tempore'),
('6','optio','hic'),
('7','sint','non'),
('8','consectetur','odit'),
('9','veniam','doloribus'),
('10','sapiente','dolor'); 
 
drop table if exists `cities`;
create table `cities` (
 `label` varchar(64),
 `name` varchar(64)
 );
 
INSERT INTO `cities` VALUES 
('aliquam','Москва'),
('quasi','Нью-Йорк'),
('velit','Париж'),
('rem','Лондон'),
('alias','Дели'),
('itaque','Берлин'),
('magnam','Амстердам'),
('blanditiis','Вена'),
('aspernatur','Пекин'),
('reiciendis','Сеул');

select 
 flights.id, flights.from, flights.to, cities.name
 from flights
 join
 cities;