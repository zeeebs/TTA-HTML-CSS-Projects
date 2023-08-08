PRINT 'HELLO WORLD!'

DECLARE @myVariable INT
SET @myVariable = 6
PRINT @myVariable

PRINT 'Having fun with' + ' TSQL and MS SQL SERVER!'

DECLARE @var1 INT, @var2 INT
SET @var1 = 3
SET @var2 = 5
PRINT 'I have ' + CONVERT(VARCHAR(50), @var1) + ' dollars...'


DECLARE @var1 INT, @var2 INT
SET @var1 = 3
SET @var2 = 5
PRINT CHAR(9) + 'I have ' + CONVERT(VARCHAR(50), @var1) + CHAR(13) + ' dollars...'


DECLARE @var1 INT, @var2 INT
SET @var1 = 3
SET @var2 = 5
PRINT 'Variable 1 = ' + CONVERT(VARCHAR(5), @var1) + CHAR(13) + 'Variable 2 = ' + CONVERT(VARCHAR(5), @var2)


DECLARE @var1 INT, @var2 INT
SET @var1 = 3
SET @var2 = 5
PRINT 'Variable 1 = ' + CONVERT(VARCHAR(5), @var1) + CHAR(13) + 'Variable 2 = ' + CONVERT(VARCHAR(5), @var2) + CHAR(13) + 'Total: '
PRINT @var1 + @var2


DECLARE @var1 INT, @var2 INT
SET @var1 = 3
SET @var2 = 5
IF @var1 <= 3
	BEGIN 
		PRINT 'Variable 1 <= ' + CONVERT(VARCHAR(5), @var1) + CHAR(13)
	END
ELSE
	BEGIN
		PRINT 'Variable 1 is not < ' + CONVERT(VARCHAR(5), @var1) + CHAR(13)
	END

DECLARE @var1 INT, @var2 INT
SET @var1 = 7
SET @var2 = 5
IF @var1 != 3
	BEGIN 
		PRINT 'Variable 1 is NOT ' + CONVERT(VARCHAR(5), @var1) + CHAR(13)
	END
ELSE
	BEGIN
		PRINT 'Variable 1 is not < ' + CONVERT(VARCHAR(5), @var1) + CHAR(13)
	END



DECLARE @var1 INT, @var2 INT
SET @var1 = 4
SET @var2 = 5

IF @var1 < 2
	BEGIN
		PRINT '@var1 < 2'
	END
ELSE IF @var1 > 1 AND @var1 < 3
	BEGIN
		PRINT '@var1 > 1 AND @var1 < 3'
	END
ELSE IF @var1 = 4 OR @var1 < 6
	BEGIN
		PRINT '@var1 =4 OR @var1 < 6'
	END
ELSE 
	PRINT '@var1 does not qualify'

/*this is a silent message*/