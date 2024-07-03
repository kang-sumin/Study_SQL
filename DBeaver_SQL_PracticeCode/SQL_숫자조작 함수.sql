### 숫자 조작하는 SQL 함수
# 숫자 자료에 사용하는 함수

# 여러 숫자들 중에 최댓값, 최솟값 출력 함수
# MAX(), MIN() 함수는 하나의 컬럼 안에서 최대, 최소를 출력하는 함수
# GREATEST(), LEAST() 함수는 하나의 행이나 숫자배열 안에서 최대, 최소를 출력하는 함수
# 여러 숫자들 중에 최댓값 출력 함수 GREATEST()
SELECT GREATEST(1,2,4,3,5);

# 여러 숫자들 중에 최솟값 출력 함수 LEAST()
SELECT LEAST(1,4,2,3,0);


# 소수점 숫자들을 정수로 변환해 주는 함수
# 소수부분을 내림해서 정수로 변환해 주는 함수 FLOOR()
SELECT FLOOR(10.9);

# 소수부분을 올림해서 정수로 변환해 주는 함수 CEIL()
SELECT CEIL(10.1);


# 소수점 부분을 반올림/내림 해주는 함수
# 입력한 자릿수까지 반올림 해주는 함수 ROUND(숫자, 자릿수)
SELECT ROUND(10.777, 2);

# 일렵한 자릿수까지 내림 해주는 함수 TRUNCATE(숫자, 자릿수)
SELECT TRUNCATE(10.777,2);


# 거듭제곱 해주는 함수 POWER(숫자, 제곱)
SELECT POWER(4,3);


# 절댓값을 출력해 주는 함수 ABS()
# Absolute Value : 절댓값
SELECT ABS(-100);



