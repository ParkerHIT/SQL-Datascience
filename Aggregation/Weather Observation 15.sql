/*
Aggregation --- Difficulty:Easy
Problem Statement : https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=true
*/

SELECT TOP 1 Format(Round(LONG_W,4),'#.0000')
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
/*
Expected Output
117.2465
*/