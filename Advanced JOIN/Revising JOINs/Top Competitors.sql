join -- Difficulty Medium ( SQL Intermediate)

Problem Statement: https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true

SELECT CONCAT(CAST(hacker_id AS VARCHAR), SPACE(2), name)
FROM (
     SELECT S.hacker_id AS [hacker_id], H.name AS [name], COUNT(S.challenge_id) AS [Total_Challenges]
	 FROM Submissions S
	 INNER JOIN Challenges C ON S.challenge_id = C.challenge_id
	 INNER JOIN Hackers H ON H.hacker_id = S.hacker_id
    INNER JOIN Difficulty D ON D.difficulty_level = C.difficulty_level AND S.score = D.score
   	 GROUP BY S.hacker_id, H.name
	 HAVING COUNT(S.challenge_id) > 1
     ) 
     AS Derived_Table
ORDER BY Total_Challenges DESC, hacker_id ASC

/*
Your Output (stdout)
27232 Phillip
28614 Willie
15719 Christina
43892 Roy
14246 David
(100 rows)
*/