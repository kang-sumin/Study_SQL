
select cuisine_type,
       sum(price) sum_of_price
from food_orders
group by cuisine_type;

# 실습
# 1.음식점별 주문 금액 최댓값 조회하기
SELECT restaurant_name, MAX(price) AS max_price 
FROM food_orders fo
GROUP BY restaurant_name ;

# 2.결제 타입별 가장 최근 결제일 조회하기
SELECT pay_type ,MAX(date) AS recent_date
FROM payments p 
GROUP BY pay_type ;