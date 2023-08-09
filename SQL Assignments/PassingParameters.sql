--stored procedure assignment
CREATE PROCEDURE dbo.uspGetAddress2 @City nvarchar(30)
AS

SELECT * FROM Person.Address
WHERE City LIKE @City + '%'
GO

EXEC dbo.uspGetAddress2 @City = 'New'

--passing parameters assignment

--passing info in
CREATE PROCEDURE dbo.uspGetAddress3 @City nvarchar(30), @PostalCode nvarchar(10)
AS

SELECT * FROM Person.Address
WHERE City LIKE @City + '%' AND PostalCode LIKE @PostalCode
GO

EXEC dbo.uspGetAddress3 @City = 'New', @PostalCode='[98]%'

--passing info out
CREATE PROCEDURE dbo.uspGetAddress4 @CityName nvarchar(30) OUTPUT
AS

SELECT City FROM Person.Address
WHERE AddressID = 38 AND PostalCode = 48226
GO
DECLARE @CityName nvarchar(30)
EXEC dbo.uspGetAddress4 @CityName = @CityName OUTPUT
PRINT @CityName