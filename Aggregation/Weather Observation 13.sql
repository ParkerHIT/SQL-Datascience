/*
Aggregation --- Difficulty:Easy
Problem Statement : https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true
*/

SELECT Format(Round(Sum(LAT_N),4),'#.0000')
from STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345
/*
Expected Output
36354.8135
*/