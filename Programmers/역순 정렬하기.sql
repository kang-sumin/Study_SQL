-- 코드를 입력하세요
/*동물 보호소에 들어온 모든 동물의 이름과 보호 시작일을 조회하여 ANIMAL_ID를 역순으로 출력*/
SELECT NAME, DATETIME
FROM ANIMAL_INS 
ORDER BY ANIMAL_ID DESC;