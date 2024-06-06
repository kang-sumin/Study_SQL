### SQL WHERE로 데이터 필터링
## WHERE 문법은 내가 원하는 행에 필터링을 해주고 싶을 때 사용함
#데이터 출력
SELECT * FROM mart.product p;

/*원하는 행만 출력하는것 = 필터링
 * 원하는 행만 필터링  하려면 WHERE 조건문 사용함*/
SELECT * FROM mart.product p WHERE 조건식; /*조건식 | WHERE뒤에 조건식은 컬럼명 = '값' 형식으로 작성하면 됨*/

/*SQL 상에서 문자 타입 자료 표현할 땐 '문자'처럼 따옴표를 사용해야 함 | 데이터베이서, 컬럼 이름은 예외*/
SELECT * FROM mart.product p WHERE 카테고리 ='가구';

/*조건식에 여러가지 비교연산자 사용가능 
 * =(같다), =(같다), <=>(같다, 양쪽의 피연산자가 모두 NULL이면 참 반환, 하나만 NULL이면 거짓 반환), 
 * != or <>(같지않다), >(크다), <(작다), >=(크거나 같다), <=(작거나 같다)
 */
SELECT * FROM mart.product p WHERE 가격 > 5000;

/*참고로 문자에도 부등호 사용가능함 | SQL 상에서 '가'<'나'<'다' 성립, 'a'<'b'<'c'성립*/
SELECT * FROM mart.product p WHERE 상품명 > '가';

/*ㅅ포함해서 큰 문자데이터 출력됨*/
SELECT * FROM mart.product p WHERE 상품명 > 'ㅅ';

/*BETWEEN/AND 연산자 : 특정 범위내의 데이터 출력할때 사용함*/
SELECT *FROM mart.product p WHERE 가격 BETWEEN 5000 AND 8000;
5000<=가격 <=8000

### WHERE 뒤에 조건식을 여러개 사용할때 방법

/*조건식을 여러개 넣어서 필터링 할때 : AND/OR 써서 조건식을 붙이면 됨
 *AND : 왼쪽조건과 오른쪽 조건이 동시에 맞는 데이터 출력
 *OR : 왼쪽조건 또는 오른쪽 조건중 적어도 하나가 맞는 데이터 출력*/
SELECT * FROM mart.product p WHERE 가격=5000 AND 카테고리 = '가구';
SELECT * FROM mart.product p WHERE 가격=5000 OR 카테고리 = '가구';

/*조건식 3개*/
/*ex) 카테고리가 가구거나 옷인데 가격이 5000원인것*/
SELECT * FROM mart.product p 
WHERE 카테고리 = '가구' OR (카테고리 = '옷' AND 가격 = 5000);
/*(괄호)안에 있는것 먼저 연산해줌*/
SELECT * FROM mart.product p 
WHERE (카테고리 = '가구' OR 카테고리 = '옷') AND 가격 =5000;

/*조건식 앞에 붙일 수 있는 NOT 연산자 : 수학적으로 역이다 쉽게 말해 조건식에 포함되지 않는 제외된 데이터 출력 가능*/
SELECT * FROM mart.product p 
WHERE NOT 가격 = 5000;
/*위와 같은 연산기호*/
SELECT * FROM mart.product p 
WHERE 가격 != 5000;

/*ex) 카테고리가 가구가 아니고 가격이 5000원이 아닌 상품 출력*/
SELECT * FROM mart.product p 
WHERE NOT 카테고리 ='가구' AND NOT 가격 = 5000;

SELECT * FROM mart.product p 
WHERE 카테고리 !='가구' AND 가격 != 5000;

/*ex) 카테고리가 '신발','가전','식품'인 상품들만 출력*/
SELECT * FROM mart.product p 
WHERE 카테고리 ='신발' OR 카테고리 ='가전' OR 카테고리='식품' OR 가격 =5000;
/*위처럼 조건항목이 많아지면 가독성이 떨어져서 IN이라는 연산자를 쓸 수 있다(OR연산자로 묶이는 것에만 사용 가능)*/
SELECT * FROM mart.product p 
WHERE 컬럼명 IN (값, 값, 값);
/*IN 연산자는 컬럼을 하나만 작성할 수 있기 때문에 하나의 컬럼에서 다양한 조건으로 필터링 할때 유용하게 사용함*/
/*IN이 처리속도가 조금 더 빠르지만 하드웨어 성능이 좋아져서 크게 차이나지 않음*/
SELECT * FROM mart.product p 
WHERE 카테고리 IN ('신발', '가전', '식품') OR 가격 =5000;


### 코드짜기 전에 무슨 데이터를 출력하고 싶은지 한글로 정리해서 SQL 문으로 만드는 연습 필요!!! 논리력 상승을 위해 연습 필요 !!!

### 코드 연습 문제 ###

#1 : 재고가 20이하인 상품들을 상품명 가나다 순으로 출력해보십시오.
SELECT * FROM mart.product p 
WHERE 재고 <=20
ORDER BY 상품명 ASC; /*ASC(오름차순)/DESC(내림차순)필터링 한것을 정렬하기 때문에 ORDER BY가 마지막에 사용됨*/

#2 : 가격이 3000원 미만이거나 6000원 초과인 상품들만 출력해봅시다.
SELECT * FROM mart.product p 
WHERE 가격 NOT BETWEEN 3000 AND 6000;

SELECT * FROM mart.product p 
WHERE 가격 < 3000 OR 가격 > 6000;

#3 : 카테고리가 옷이 아닌 것들 중 가격이 5천원인 상품들만 출력해봅시다. 
SELECT * FROM mart.product p 
WHERE 카테고리 != '옷' AND 가격 =5000;
#WHERE NOT 카테고리 ='옷' AND 가격 =5000;

#4 : 상품명이 셔츠, 반팔티, 운동화가 아닌 상품들만 출력해봅시다.
SELECT * FROM mart.product p 
WHERE NOT 상품명 IN ('셔츠','반팔티','운동화'); 




