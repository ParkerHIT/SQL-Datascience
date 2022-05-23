/*

ADVANCED SELECT -- Difficulty: Medium (SQL Intermediate) 

Problem Statement:
https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true

*/


SELECT N, 
CASE 
    WHEN P IS NULL THEN 'Root'
    WHEN N IN (SELECT P FROM BST) THEN 'Inner'  
    ELSE 'Leaf'
END             
FROM BST
ORDER BY N

/*
Your Output (stdout)
1 Leaf
2 Inner
3 Leaf
4 Inner
5 Leaf
6 Inner
7 Leaf
8 Leaf
9 Inner
10 Leaf
11 Inner
12 Leaf
13 Inner
14 Leaf
15 Root
*/

