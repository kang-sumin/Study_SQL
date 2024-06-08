### MIN(), MAX(), AVG(), SUM(), COUNT() 집계함수로 통계내기
## 데이터 분석은 -> 데이터에서 의미를 찾는것 -> 의미를 찾기 위한 쉬운방법 -> 통계 내보기
# SQL 문법으로 통계 내기 : 집계함수 (aggregate functions)

# card table : 카드회사의 이번달 고객 장부 테이블

SELECT * FROM mart.card c ;

#사용금액 최댓값 최솟값 평균값 합계값
#뒤에 () 소괄호 붙는것을 모두 함수라고 함
#함수 (컬럼명) 방식으로 사용

#집계함수는 숫자 컬럼에서만 사용가능하고, 한 컬럼에서만 사용가능함
#최댓값 (Maximum)
SELECT MAX(사용금액) FROM mart.card c ;
#최솟값 (Minimum)
SELECT MIN(사용금액) FROM mart.card c ;  
#평균값 (Average)
SELECT AVG(사용금액) FROM mart.card c ;
#합계 (Sum)
SELECT SUM(사용금액) FROM mart.card c ;


#행의 갯수 세기
#괄호안에서 Ctrl + Space 누르면 컬럼명들 볼 수 있음
SELECT COUNT(사용금액) FROM mart.card c;
SELECT COUNT(*) FROM mart.card c;

SELECT MAX(사용금액), MIN(사용금액) FROM mart.card c;

#응용 1 : AS 문법으로 컬럼명 바꿔서 출력
SELECT MAX(사용금액) AS 사용금액_최댓값 FROM mart.card c; 

#응용 2 : 일부 행만 골라서 통계내기
#필터링을 한 일부 행에 한해서 통계를 낼 수 있음
#ex) 등급이 vip인 사람들의 평균 사용금액 출력
SELECT AVG(사용금액) AS VIP_사용금액_평균 FROM mart.card c
WHERE 고객등급='vip';

#중복 제거 명령어 DISTINCT
SELECT 연체횟수 FROM mart.card c;
SELECT DISTINCT 연체횟수 FROM mart.card c;

#응용 3 : 중복 제거 한 상태의 유니크한(unique) 값들만으로도 통계를 낼 수 있음
SELECT AVG(DISTINCT 연체횟수) FROM mart.card c;

#응용 4 : MAX(), MIN() 말고 다르게 최대, 최소 구하는 방법
#상황에 따라서 어떨땐 정렬하는게 MIN(), MAX() 보다 빠를 수 있음
SELECT 사용금액 FROM mart.card c;
#최솟값 (Ascending : 오름차순 / Descending : 내림차순)
SELECT 사용금액 FROM mart.card c ORDER BY 사용금액 ASC;
#최댓값
SELECT 사용금액 FROM mart.card c ORDER BY 사용금액 DESC;
# 출력 행 갯수 지정해서 출력할때 -> LIMIT 출력하고자하는 행 갯수
SELECT 사용금액 FROM mart.card c ORDER BY 사용금액 ASC LIMIT 1;
SELECT 사용금액 FROM mart.card c ORDER BY 사용금액 DESC LIMIT 1;


### 코드 연습 문제 ###

# 1 : 최대 결제횟수와 최소 결제횟수를 출력해봅시다. 
SELECT MAX(결제횟수) AS 최대_결제횟수, MIN(결제횟수) AS 최소_결제횟수 FROM mart.card c;

# 2 :  고객등급이 vip인 사람들의 '평균 결제횟수'와 고객등급이 vip인 사람들의 '사용금액 총 합계'를 구해봅시다. 
SELECT AVG(결제횟수) AS vip_평균_결제횟수, SUM(결제횟수) AS vip_합계_사용금액
FROM mart.card c
WHERE 고객등급='vip';

# 3 : 연체횟수가 1회 이하인 사람은 몇명일까요?
SELECT COUNT(연체횟수) AS 연체횟수_1이하인원
FROM mart.card c
WHERE 연체횟수 <= 1;














