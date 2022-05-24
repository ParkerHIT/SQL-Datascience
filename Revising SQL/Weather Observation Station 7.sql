/* (SQL Basic)

Problem Statement:
https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true
*/

SELECT DISTINCT CITY FROM STATION
WHERE LOWER(RIGHT(CITY,1)) IN ('a','e','i','o','u')

/* Output (stdout)
Acme
Aguanga
Alba
Aliso Viejo
Alpine
(150 ROWS)*/