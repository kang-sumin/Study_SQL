
SELECT * FROM food_orders fo ;

#필요한 컬럼만  * 대신 적어주면 된다
SELECT restaurant_name, addr FROM food_orders fo ;

#컬럼명에 별명 주기
SELECT restaurant_name AS "음식점", addr AS "주소" FROM food_orders fo ;
SELECT restaurant_name "음식점", addr "주소" FROM food_orders fo ;

SELECT order_id "ord_no",restaurant_name "식당 이름" FROM food_orders fo ;


SELECT order_id ord_no,
       price "가격",
       quantity "수량"
FROM food_orders fo ;


SELECT name "이름", email "e-mail" FROM customers c ;