/*
Aggregation --- Difficulty:Medium
Problem Statement : https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true
*/
select format(round(sqrt(power(max(LAT_N) - min(LAT_N), 2) + power(max(LONG_W) - min(LONG_W), 2)), 4),'#.0000')
FROM STATION;

/*
Expected Output
184.1616
*/