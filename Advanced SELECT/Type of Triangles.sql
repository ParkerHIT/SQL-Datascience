/*
ADVANCED SELECT ---- Medium (SQL Basic)
Problem Statement:
https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true */

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/


SELECT A,B,C, 
CASE 
WHEN (A+B<=C OR A+C<=B OR B+C<=A) THEN "Not a Triangle" 
WHEN (A=B AND B=C ) THEN "Equilateral" 
WHEN (A=B OR B=C OR A=C) THEN "Isosceles" 
ELSE "Scalene" 
END as Triangle_Types 
FROM TRIANGLES;


/*
Your Output (stdout)
10 10 10 Equilateral
11 11 11 Equilateral
30 32 30 Isosceles
40 40 40 Equilateral
20 20 21 Isosceles
21 21 21 Equilateral
20 22 21 Scalene
20 20 40 Not a Triangle
20 22 21 Scalene
30 32 41 Scalene
50 22 51 Scalene
20 12 61 Not a Triangle
20 22 50 Not a Triangle
50 52 51 Scalene
80 80 80 Equilateral
*/
