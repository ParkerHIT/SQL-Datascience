/* (SQL Basic)

Problem Statement:
https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
*/
Solution:

SELECT TOP 1 CITY, LEN(CITY) FROM STATION ORDER BY LEN(CITY), CITY ASC

SELECT TOP 1 CITY, LEN(CITY) FROM STATION ORDER BY LEN(CITY) DESC, CITY DESC

/*
Your Output (stdout)
Amo 3
Marine On Saint Croix 21
*/