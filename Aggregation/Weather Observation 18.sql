/*
Aggregation --- Difficulty:Medium
Problem Statement : https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
*/

SELECT CAST((ABS(MAX(LAT_N)-MIN(LAT_N)) + ABS(MAX(LONG_W)-MIN(LONG_W))) AS NUMERIC(18,4)) FROM STATION;
/*
Expected Output
259.6859
*/