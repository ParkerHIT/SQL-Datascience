/*
Aggregation --- Difficulty:Easy
Problem Statement : https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=true
*/

SELECT TOP 1 Format(Round(LAT_N,4),'#.0000')
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
/*
Expected Output
137.0193
*/