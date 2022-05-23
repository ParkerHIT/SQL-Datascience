/*
Aggregation --- Difficulty:Medium
Problem Statement : https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
*/
SELECT CAST(AVG(t1.LAT_N) AS DECIMAL(10,4))
FROM (
        SELECT LAT_N,
            ROW_NUMBER() OVER(ORDER BY LAT_N ASC) AS min_row,
            ROW_NUMBER() OVER(ORDER BY LAT_N DESC) AS max_row
        FROM STATION 
        ) t1
WHERE t1.min_row IN (t1.max_row, t1.max_row - 1, t1.max_row + 1)

/*
Expected Output
83.8913
*/