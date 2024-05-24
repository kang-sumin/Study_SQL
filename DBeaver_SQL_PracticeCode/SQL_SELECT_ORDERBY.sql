### 데이터 출력하는 방법

#SELECT * FROM 데이터베이스이름.테이블명
#특정컬럼만 출력하는방법
#SELECT 컬럼명 FROM 테이블명

SELECT * FROM mart.test_product tp;

SELECT * FROM mart.test_product tp ORDER BY 카테고리 ASC, 가격 DESC;
#여러 컬럼 출력은 ,로 구분해서 출력
#모두 출력은 *으로 출력하면됨
SELECT 상품명, 가격 FROM mart.test_product tp;

#ORDER BY 컬럼명 : 컬럼명 기준으로 정렬해줌
#ascending : 오름차순, descending : 내림차순
#사용하지 않으면 default 값은 ASC이다.

#여러컬럼을 정렬가능
SELECT * FROM mart.test_product tp ORDER BY 가격 ASC, 카테고리 ASC;

SELECT * FROM mart.employee e ORDER BY 근무기간 ASC, 이름 ASC;

SELECT * FROM mart.test_product tp;

SELECT * FROM mart.test_product tp ORDER BY 상품명 ASC, 가격 ASC;

### 코드 연습 문제 ###

# 1 : 현재 테이블의 상품명과 가격컬럼을 출력해보십시오. 
SELECT 상품명, 가격 FROM mart.test_product tp;

# 2 : 현재 테이블의 모든 컬럼을 출력하는데 가격낮은 순으로 정렬해봅시다.
SELECT * FROM mart.test_product tp ORDER BY 가격 ASC;

# 3 : 현재 테이블의 모든 컬럼을 출력하는데 가격낮은 순으로, 가격이 같으면 카테고리가 가나다순으로 뜨도록 정렬해봅시다. 
SELECT * FROM mart.test_product tp ORDER BY 가격 ASC, 카테고리 ASC;

# 4 : 저번시간에 만든 직원테이블에서 모든 컬럼을 출력하는데,
#1. 근무기간 적은 놈들이 맨 위에 와야하고 2. 같은 근무기간인 경우 이름을 가나다순으로 정렬해야합니다.
SELECT * FROM mart.employee e ORDER BY 근무기간 ASC, 이름 ASC;


