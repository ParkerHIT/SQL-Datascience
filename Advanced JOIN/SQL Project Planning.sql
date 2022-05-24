/*
ADVANCED JOIN -- Difficulty Medium ( SQL Intermediate)

Problem Statement: https://www.hackerrank.com/challenges/sql-projects/problem?isFullScreen=true

WITH t AS (
  SELECT Start_Date s
        , End_Date e
        , ROW_NUMBER() OVER(ORDER BY Start_Date) rn
  FROM Projects
  GROUP BY Start_Date, End_Date
)
    
SELECT MIN(s),MAX(e)
FROM t
GROUP BY DATEDIFF(day,rn,s)
ORDER BY COUNT(DATEDIFF(day,rn,s))
        , MIN(s)

/*
Your Output (stdout)
2015-10-15 2015-10-16
2015-10-17 2015-10-18
2015-10-19 2015-10-20
2015-10-21 2015-10-22
2015-11-01 2015-11-02
2015-11-17 2015-11-18
2015-10-11 2015-10-13
2015-11-11 2015-11-13
2015-10-01 2015-10-05
2015-11-04 2015-11-08
2015-10-25 2015-10-31
*/
