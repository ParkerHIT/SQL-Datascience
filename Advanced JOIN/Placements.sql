/*
ADVANCED JOIN -- Difficulty Medium ( SQL Intermediate)

Problem Statement: https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true
*/

SELECT S.NAME FROM STUDENTS S
    FULL OUTER JOIN FRIENDS F ON S.ID = F.ID
    FULL OUTER JOIN PACKAGES PF ON F.FRIEND_ID = PF.ID
    FULL OUTER JOIN PACKAGES P ON S.ID = P.ID
WHERE PF.SALARY > P.SALARY
ORDER BY PF.SALARY

/*
Your Output (stdout)
Stuart
Priyanka
Paige
Jane
Julia
Belvet
Amina
Kristeen
Scarlet
Priya
Meera
*/
