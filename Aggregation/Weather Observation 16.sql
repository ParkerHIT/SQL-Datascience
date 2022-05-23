/*
Aggregation --- Difficulty:Easy
Problem Statement : https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true
*/

SELECT TOP 1 FORMAT(ROUND(LAT_N,4),'#.0000')
FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N
/*
Expected Output
38.8526
*/