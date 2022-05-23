/*
Aggregation --- Difficulty:Easy
Problem Statement : https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true
*/

SELECT CAST(CEILING(AVG(CAST(Salary AS Float))- AVG(CAST(REPLACE(Salary, 0, '')AS Float)))AS INT)
FROM EMPLOYEES

/*
Expected Output
2253
*/