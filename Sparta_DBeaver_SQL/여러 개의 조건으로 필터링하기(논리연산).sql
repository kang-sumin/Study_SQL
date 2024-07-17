

SELECT *
FROM customers c 
WHERE age>=21 AND gender ='male';

#실습
SELECT *
FROM food_orders fo 
WHERE fo.cuisine_type ='Korean' AND price >=30000;

SELECT *
FROM payments p 
WHERE pay_type ='card' OR vat<=0.2;