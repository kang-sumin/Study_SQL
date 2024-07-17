### 조건에 맞는 데이터로 필터링하기 (WHERE 이란)

select *
from 테이블
where 필터링 조건 (eg. 20살 이상)

SELECT * FROM customers c 
WHERE age=21;

SELECT * FROM customers c 
WHERE gender='male';

SELECT * FROM food_orders fo
WHERE cuisine_type ='Korean';

SELECT * FROM payments p 
WHERE pay_type ='card';