/*ADVANCED JOIN -- Difficulty Hard ( SQL Intermediate)

Problem Statement: https://www.hackerrank.com/challenges/interviews/problem?isFullScreen=true
*/


WITH 
    S AS (
        SELECT
            con.contest_id AS contest
            ,con.hacker_id AS hacker
            ,con.name AS name
            ,SUM(sub.total_submissions) AS submissions
            ,SUM(sub.total_accepted_submissions) AS accepted
        FROM
            contests AS con
            LEFT JOIN colleges AS col
            ON con.contest_id = col.contest_id
            LEFT JOIN challenges AS cha
            ON col.college_id = cha.college_id
            LEFT JOIN submission_stats AS sub
            ON cha.challenge_id = sub.challenge_id
        GROUP BY
            con.contest_id
            ,con.hacker_id
            ,con.name),
            
    V AS (
        SELECT
            con.contest_id AS contest
            ,con.hacker_id AS hacker
            ,con.name AS name
            ,SUM(v.total_views) AS tot_views
            ,SUM(v.total_unique_views) AS unique_views
        FROM
            contests AS con
            LEFT JOIN colleges AS col
            ON con.contest_id = col.contest_id
            LEFT JOIN challenges AS cha
            ON col.college_id = cha.college_id
            LEFT JOIN view_stats AS v
            ON cha.challenge_id = v.challenge_id
        GROUP BY
            con.contest_id
            ,con.hacker_id
            ,con.name)
            
SELECT 
    S.contest
    ,S.hacker
    ,S.name
    ,S.submissions
    ,S.accepted
    ,V.tot_views
    ,V.unique_views
FROM
    S
    FULL JOIN V
    ON S.contest = V.contest
WHERE
    S.submissions IS NOT NULL AND
    S.accepted IS NOT NULL AND
    V.tot_views IS NOT NULL AND
    V.unique_views IS NOT NULL
ORDER BY
    S.contest;
        

/*
Your Output (stdout)
845 579 Rose 1987 580 1635 566
858 1053 Angela 703 160 1002 384
883 1055 Frank 1121 319 1217 338
1793 2655 Patrick 1337 360 1216 412
2374 2765 Lisa 2733 815 3368 904
2963 2845 Kimberly 4306 1221 3603 1184
3584 2873 Bonnie 2492 652 3019 954
(47 rows)
*/
