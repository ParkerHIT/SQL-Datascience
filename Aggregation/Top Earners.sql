/*
Aggregation --- Difficulty:Easy
Problem Statement : https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
*/

SELECT MAX(SALARY * MONTHS), COUNT(EMPLOYEE_ID) FROM
EMPLOYEE WHERE SALARY * MONTHS IN 
(SELECT MAX(SALARY * MONTHS) 
FROM EMPLOYEE)

/*
Expected Output
108064 7
*/