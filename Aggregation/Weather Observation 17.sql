/*
Aggregation --- Difficulty:Easy
Problem Statement : https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=true
*/

SELECT TOP 1 FORMAT(ROUND(LONG_W,4),'#.0000')
FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N
/*
Expected Output
70.1378
*/