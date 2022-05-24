/*

ADVANCED JOIN -- Difficulty Medium ( SQL Intermediate)

Problem Statement: https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=true

select A.X, A.Y from Functions A
left join Functions B on B.Y = A.X
where A.Y = B.X and A.X <= A.Y
group by A.X, A.Y
having A.X != A.Y or (A.X = A.Y and count(1) > 1)
order by A.X;

/*
Your Output (stdout)
2 24
4 22
5 21
6 20
8 18
9 17
11 15
13 13
*/
