/*(SQL Basic)

Problem Statement:
https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
*/

SELECT DISTINCT CITY FROM STATION
WHERE LOWER(SUBSTRING(CITY,1,1)) IN ('a','e','i','o','u')
/*
Your Output (stdout)
Acme
Addison
Agency
Aguanga
Alanson
Alba
(65 ROWS)*/