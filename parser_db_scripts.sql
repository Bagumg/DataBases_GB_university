select * from electroinstrument order by price; -- выборка товаров из категории по цене
select * from electroinstrument order by competitor_id; -- выборка товаров из категории по имени конкурента
select * from electroinstrument where competitor_id = '2' order by price desc; -- выборка товаров определённого конкурента с сортировкой по цене в обратном порядке

/*
 * Выборка всех спарсеных товаров с сортировкой по конкуренту.
 * Такая выборка будет использоваться парсером для выгрузки данных из БД в Excel для отдела снабжения.
 */
select competitor_id, name, vendor_code, price from electroinstrument
union
select competitor_id, name, vendor_code, price from izmeritelnyy_instrument
union
select competitor_id, name, vendor_code, price from krepezh
union
select competitor_id, name, vendor_code, price from metalloobrabatyvayushchiy_instrument
union
select competitor_id, name, vendor_code, price from mototechnika
union
select competitor_id, name, vendor_code, price from pnevmooborudovanie
union
select competitor_id, name, vendor_code, price from rashodnie_materialy
union
select competitor_id, name, vendor_code, price from slesarno_montazhnyy_instrument
union
select competitor_id, name, vendor_code, price from stanki
union
select competitor_id, name, vendor_code, price from stroitelnoe_oborudovanie
union
select competitor_id, name, vendor_code, price from svarochnoe_oborudovanie
order by competitor_id;

select * from rashodnie_materialy group by competitor_id order by price; -- группировка товаров в категории по конкуренту

/*
 * JOIN пары таблиц
 */
select rm.name, rm.vendor_code, rm.price from rashodnie_materialy rm
left join mototechnika mt
on rm.competitor_id = mt.competitor_id
order by price;

/*
 * Формируем список URL для парсера. Конкатенируем http://www.some_site.com + /category_name
 */
select concat(parser_config.url, categories.category_url) from parser_config
left join categories
on parser_config.id;


/*
 * Представление. Выборка товаров из категории с ценой выше 200
 */

create or replace view most_expencive as select name, vendor_code, price 
from electroinstrument
where price > 200
order by price desc;


/*
 * Триггер. Сиоздаём новую таблицу для логирования. Если парсер найдёт и запишет новую категорию в categories,
 * то в таблицу new_categories будет добавлена соответсвующая запись.
 */

DROP TABLE IF EXISTS `new_categories`;
CREATE TABLE `new_categories` (
  `id` int(11) unsigned NOT NULL auto_increment primary key,
  `message` varchar(255) NOT NULL,
  `id_row` int(11) NOT null,
  `date_time` timestamp not null default current_timestamp
);

delimeter //
create trigger add_category after insert on categories
for each row begin
	insert into new_categories set message = 'New category added', id_row = new.id;
end//
delimeter ;


/*
 * Процедура. Очень удобная вещь. Выгрузка всех товаров из таблицы для импорта в CSV.
 * На примере таблицы electroinstrument
 */

delimeter //
create procedure get_data_for_csv
begin
select vendor_code, name, price from electroinstrument
end
delimeter ;
