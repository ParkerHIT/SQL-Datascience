/* Medium (SQL Advanced)

Prime Number Generation Using a Table

Problem Statement : https://www.hackerrank.com/challenges/print-prime-numbers/problem?isFullScreen=true

*/

DECLARE @row int = 3;
DECLARE @max int = 1000;

CREATE TABLE prime (n int);
INSERT INTO prime VALUES (2);

WHILE (@row <= @max)
BEGIN
    IF (SELECT count(*) FROM prime WHERE @row % n = 0) = 0
        INSERT INTO prime VALUES (@row);
    ELSE
        SET @row = @row + 1;
END

SELECT string_agg(n, '&') FROM prime;
