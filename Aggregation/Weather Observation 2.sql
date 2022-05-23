/*
Aggregation --- Difficulty:Easy
Problem Statement : https://www.hackerrank.com/challenges/weather-observation-station-2/problem?isFullScreen=true
*/

Select Format(Round(Sum(LAT_N),2),'F2'),
Format(Round(Sum(long_w),2),'#.00')
from station

/*
Expected Output
42850.04 47381.48
*/