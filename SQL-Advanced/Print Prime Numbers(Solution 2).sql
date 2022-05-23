DECLARE @start int,@divider int,@flag bit,@result varchar(MAX);
SET @start = 3;
SET @result = '2'
WHILE(@start < 999)
BEGIN
SET @flag = 0;
SET @divider = 2;
WHILE(@divider < @start)
BEGIN
IF(@start % @divider = 0)
BEGIN
SET @flag = 1;
BREAK;
END
SET @divider = @divider + 1;
END
IF(@flag = 0)
BEGIN
SET @result = CONCAT(@result,'&',@start)
END
SET @start = @start + 2

END
print(@result)