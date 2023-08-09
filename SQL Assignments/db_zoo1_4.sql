USE db_zoo1
GO

/*CONVERT(VARCHAR(50), @totalHab) =  this is converting the data from money to varchar
	CHAR(13) = line break
	CHAR(9) = tab key */

DECLARE @totalHab MONEY
DECLARE @totalNut MONEY
DECLARE @results MONEY

SET @totalHab = (SELECT SUM(habitat_cost) FROM tbl_habitat);
SET @totalNut = (SELECT SUM(nutrition_cost) FROM tbl_nutrition);
SET @results = (@totalHab + @totalNut);

PRINT (
	CONVERT(VARCHAR(50), @totalHab) + CHAR(9) + 'The total habitat cost' + CHAR(13) +
	CONVERT(VARCHAR(50), @totalNut) + CHAR(9) + CHAR(9) + ' - The total nutrition cost' + CHAR(13) + '--------' +  CHAR(13) +
	CONVERT(VARCHAR(50), @results)
	);