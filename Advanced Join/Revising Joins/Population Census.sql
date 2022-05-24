join -- Difficulty Easy ( SQL Basic)

Problem Statement: https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true

SELECT SUM(CITY.POPULATION)
FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'ASIA'

/*
Your Output (stdout)
27028484
*/