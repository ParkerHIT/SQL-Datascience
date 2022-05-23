ADVANCED SELECT -----Medium (SQL Basic)

Problem Statement:
https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT CONCAT(Name,"(",LEFT(Occupation,1),")")
FROM OCCUPATIONS

SELECT CONCAT("There are a total of ", COUNT(OCCUPATION)," ", OCCUPATION,"s.")
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION),OCCUPATION


/*
Ashley(P)
Samantha(A)
Julia(D)
Britney(P)
Maria(P)
Meera(P)
Priya(D)
Priyanka(P)
Jennifer(A)
Ketty(A)
Belvet(P)
Naomi(P)
Jane(S)
Jenny(S)
Kristeen(S)
Christeen(S)
Eve(A)
Aamina(D)
There are a total of 3 doctors.
There are a total of 4 actors.
There are a total of 4 singers.
There are a total of 7 professors.
*/
