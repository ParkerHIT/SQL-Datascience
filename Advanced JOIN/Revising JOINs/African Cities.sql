join -- Difficulty Easy ( SQL Basic)

Problem Statement: https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true

SELECT CITY.NAME
FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
AND COUNTRY.CONTINENT = 'Africa'

/*
Your Output (stdout)
Qina
Warraq al-Arab
Kempton Park
Alberton
Klerksdorp
Uitenhage
Brakpan
Libreville
*/