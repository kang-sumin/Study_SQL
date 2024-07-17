#주문 금액이 30,000원 이상인 주문건의 갯수 구하기
SELECT count(*)
FROM food_orders fo 
WHERE price >=30000;

SELECT * FROM food_orders fo ;

#한국 음식의 주문 당 평균 음식가격 구하기
SELECT avg(price) AS "주문 당 평균 음식 가격"
FROM food_orders fo 
WHERE cuisine_type ='Korean';
