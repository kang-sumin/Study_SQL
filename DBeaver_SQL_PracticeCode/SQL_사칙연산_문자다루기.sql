### 컬럼데이터 조작해서 출력하기 (사칙연산, 단어바꾸기, 공백제거)

SELECT * FROM mart.card;

#컬럼출력시 사칙연산 적용
#원본데이터 조작하는것이 아니여서 원본데이터 손상 없음
SELECT 사용금액 FROM mart.card;
SELECT 사용금액 + 10 FROM mart.card;
SELECT 사용금액 - 10 FROM mart.card;
SELECT 사용금액 / 10 FROM mart.card;
SELECT 사용금액 * 10 FROM mart.card;
#여러 컬럼에 사칙연산 적용
SELECT 사용금액 * 10, 연체횟수 *10 FROM mart.card;
#컬럼명 변경
SELECT 사용금액 * 10 AS 사용금액_10배수, 연체횟수 *10 AS 연채횟수_10배수 FROM mart.card;

#컬럼끼리 사칙연산 적용
#결제당 평균 사용금액
#사칙연산은 숫자 데이터 컬럼만 사용가능
SELECT 사용금액/결제횟수 FROM mart.card;


#문자끼리 이어붙이기
#concatenate : 연결하다
#합쳐주는 함수 : CONCAT(컬럼명1, 컬럼명2, 컬럼명3, ..., '문자')
SELECT CONCAT(고객명,고객등급) FROM mart.card;
/* CONCAT()안에 직접 문자기입 가능
 * Postgres, Oracle은 CONCAT 대신 || 사용해야함
 * */
SELECT CONCAT(고객명,'의 등급은 ',고객등급) FROM mart.card;

#문자의 좌우 공백 제거 후 출력
#trim : 정돈된, 관리, 말끔한
#좌우 공백 제거 함수 : TRIM(컬럼명)
SELECT TRIM(고객명) FROM mart.card;
SELECT '   sdfklsl   ' FROM mart.card;
SELECT TRIM('   sdfklsl   ') FROM mart.card;


#단어 바꿔서 출력
#replace : 바꾸다
#단어 바꿔서 출력해주는 함수 : REPLACE(컬럼명, 바뀔단어, 바꿀단어)
SELECT REPLACE(고객등급, '패','훼') FROM mart.card;


#문자의 일부만 출력
#substring : 부분문자열
#SUBSTR(컬럼명, 몇째글자부터, 몇자)
SELECT 고객명 FROM mart.card;
SELECT SUBSTR(고객명, 3, 2) FROM mart.card;


#문자의 일부 교체해서 출력
#insert : 삽입
#INSERT(컬럼명, 몇째글자부터, 몇자, 바꿀단어)
#replace랑 비슷하지만 insert는 몇번째부터 몇번째 문자를 특정해서 바꿀 수 있음(특정문자 X, 특정부분 O)
SELECT INSERT('test@naver.com',1,4,'hello') FROM mart.card;


### 코드 연습 문제 ###

# 1 :  특정 문자에 있는 모든 공백을 제거해서 출력하려면 어떻게 코드를 짜야할까요?
SELECT 상품명 FROM mart.product;
SELECT REPLACE(상품명,' ','') FROM mart.product; 

# 2 : 컬럼에서 휴대폰 뒷자리 4글자만 출력하려면 어떻게 코드를 짜야할까요?
SELECT SUBSTR('010-1234-5678',10,4);
SELECT RIGHT('010-1234-5678',4);

# 응용 : 주민등록번호 앞자리 출력
SELECT LEFT('123456-1234567',6);

