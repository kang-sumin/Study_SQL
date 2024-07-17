
SELECT *
FROM food_orders fo;

select food_preparation_time,
       delivery_time,
       food_preparation_time + delivery_time as total_time
from food_orders;

#SUM() & AVG()
select sum(food_preparation_time) total_food_preparation_time,
       avg(delivery_time) avg_food_preparation_time
from food_orders;

SELECT avg(age) AS customer_age
FROM customers c;

#COUNT()
select count(1) count_of_orders,
       count(distinct customer_id) count_of_customers
from food_orders;

SELECT count(*) AS total_count
FROM payments p ;

SELECT count(DISTINCT pay_type) AS count_of_total_count
FROM payments p ;

#MIN() & MAX()
select min(price) min_price,
       max(price) max_price
from food_orders;

SELECT min(quantity) AS min_quantity,
	   max(quantity) AS max_quantity
FROM food_orders fo ;







