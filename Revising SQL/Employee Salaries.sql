/*( SQL Basic)
Problem Statement:
https://www.hackerrank.com/challenges/salary-of-employees/problem?isFullScreen=true
*/

SELECT name
FROM Employee
WHERE salary > 2000 AND months < 10
/*
Your Output (stdout)
Rose
Patrick
Lisa
Amy
Pamela
(25 ROWS)*/