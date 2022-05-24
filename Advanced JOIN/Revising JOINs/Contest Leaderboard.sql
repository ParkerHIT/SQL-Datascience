join -- Difficulty Medium ( SQL Intermediate)

Problem Statement: https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true

SELECT h.hacker_id, h.name, SUM(score) FROM (
    SELECT hacker_id, challenge_id, MAX(score) AS score FROM SUBMISSIONS
    GROUP BY hacker_id, challenge_id
)t 
JOIN Hackers h on t.hacker_id = h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING SUM(score) > 0
ORDER BY SUM(score) desc, h.hacker_id

/*
Your Output (stdout)
76971 Ashley 760
84200 Susan 710
76615 Ryan 700
82382 Sara 640
79034 Marilyn 580
78552 Harry 570
74064 Helen 540
(182 rows)
*/