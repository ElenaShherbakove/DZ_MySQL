use dz_2_mysql;
CREATE TABLE sales
(
id int primary key auto_increment not null,
order_date date,
count_product int
);
select * from sales;
insert into sales 
values (null, '2022-01-01', 156),
(null,'2022-01-02', 180),
(null, '2022-01-03', 21),
(null, '2022-01-04', 124),
(null, '2022_01_05', 341);
/* Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва : 
меньше 100  -    Маленький заказ
от 100 до 300 - Средний заказ
больше 300  -     Большой заказ
*/
SELECT 
	id AS 'id заказа',
	IF (count_product < 100, 'Маленький заказ', 
		IF (count_product BETWEEN 100 AND 300, 'Средний заказ', 'Большой заказ')
	) AS 'Тип заказа'	
FROM sales;