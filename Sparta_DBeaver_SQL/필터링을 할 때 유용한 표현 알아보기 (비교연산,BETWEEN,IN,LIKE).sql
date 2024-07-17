SELECT *
FROM customers c 
WHERE age >= 21;

##같지 않다
SELECT *
FROM customers c 
WHERE gender <> 'male';

#BETWEEN
SELECT *
FROM customers c 
WHERE age BETWEEN 21 AND 23;

#IN
SELECT *
FROM customers c 
WHERE age IN (21,25,27);

SELECT *
FROM customers c 
WHERE name IN ('윤주아','정현준');

#LIKE
SELECT *
FROM customers c 
WHERE name LIKE '김%';

#실습
SELECT *
FROM customers c 
WHERE age>=40;

SELECT *
FROM food_orders fo 
WHERE price < 15000;

SELECT *
FROM food_orders fo 
WHERE price BETWEEN 20000 AND 30000;

SELECT *
FROM food_orders fo 
WHERE restaurant_name LIKE 'B%';

