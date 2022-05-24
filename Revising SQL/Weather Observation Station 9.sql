/* (SQL Basic)

Problem Statement:
https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=true
*/
SELECT DISTINCT CITY FROM STATION
WHERE LOWER(SUBSTRING(CITY,1,1)) NOT IN ('a','e','i','o','u')
/*
Your Output (stdout)
Baileyville
Bainbridge
Baker
Baldwin
Barrigada
(421 ROWS)*/