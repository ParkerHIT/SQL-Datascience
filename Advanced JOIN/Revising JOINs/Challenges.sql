join -- Difficulty Medium ( SQL Intermediate)

Problem Statement: https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true

/* count total submissions of challenges of each user */
WITH data
AS
(
SELECT c.hacker_id as id, h.name as name, count(c.hacker_id) as counter
FROM Hackers h
JOIN Challenges c on c.hacker_id = h.hacker_id
GROUP BY c.hacker_id, h.name
)
/* select records from above */
SELECT id,name,counter
FROM data
WHERE
counter=(SELECT max(counter) FROM data) /*select user that has max count submission*/
OR
counter in (SELECT counter FROM data
GROUP BY counter
HAVING count(counter)=1 ) /*filter out the submission count which is unique*/
ORDER BY counter desc, id

/*
Your Output (stdout)
5120 Julia 50
18425 Anna 50
20023 Brian 50
33625 Jason 50
41805 Benjamin 50
52462 Nicholas 50
64036 Craig 50
(41 rows)
*/