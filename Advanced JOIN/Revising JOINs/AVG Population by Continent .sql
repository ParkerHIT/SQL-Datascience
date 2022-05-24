join -- Difficulty Easy ( SQL Basic)

Problem Statement: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true

SELECT COUNTRY.CONTINENT, CAST(AVG(CITY.POPULATION) AS INT)
FROM COUNTRY
JOIN CITY 
ON COUNTRY.CODE = CITY.COUNTRYCODE
GROUP BY COUNTRY.CONTINENT

/*
Your Output (stdout)
Africa 274439
Asia 693038
Europe 175138
Oceania 109189
South America 147435
*/