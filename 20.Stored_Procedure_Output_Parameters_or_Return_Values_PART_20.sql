/** Stored Procedures 3 **/
CREATE PROCEDURE spGetEmployeesTotalCount1
@EmployeesTotalCount int OUTPUT
As
BEGIN
	SELECT @EmployeesTotalCount = COUNT([ID]) FROM [Sample2].[dbo].[tblEmployee];
END

CREATE PROCEDURE spGetEmployeesTotalCount2
As
BEGIN
	RETURN (SELECT COUNT([ID]) FROM [Sample2].[dbo].[tblEmployee]);
END


DECLARE @TotalCount INT;
EXECUTE [spGetEmployeesTotalCount] @EmployeesTotalCount = @TotalCount OUTPUT;
IF(@TotalCount IS NULL)
	PRINT 'Total Employee Count Is Null';
ELSE
	PRINT 'Total Employee Count Is Not Null';

PRINT @TotalCount;

DECLARE @Count INT;
EXECUTE @Count = [spGetEmployeesTotalCount2];
IF(@Count IS NULL)
	PRINT 'Total Employee Count Is Null';
ELSE
	PRINT 'Total Employee Count Is Not Null';

PRINT @Count;

CREATE PROCEDURE [dbo].[spGetEmployeeNameById1]
@EmployeeId int,
@Name NVARCHAR(100) OUTPUT
As
BEGIN
	SELECT @Name = [FirstName]+' '+[MiddleName]+' '+[LastName] FROM [Sample2].[dbo].[tblEmployee]
	WHERE [Sample2].[dbo].[tblEmployee].[ID] = @EmployeeId;
END
GO

CREATE PROCEDURE [dbo].[spGetEmployeeNameById2]
@EmployeeId int
As
BEGIN
	RETURN (SELECT [FirstName]+' '+[MiddleName]+' '+[LastName] FROM [Sample2].[dbo].[tblEmployee]
	WHERE [Sample2].[dbo].[tblEmployee].[ID] = @EmployeeId);
END
GO

DECLARE @EmployeeName NVARCHAR(100);
EXECUTE [spGetEmployeeNameById1] @EmployeeId = 2, @Name = @EmployeeName OUTPUT;
PRINT @EmployeeName;
/** This Cause an Error Can't Convert String To Int **/
DECLARE @Name NVARCHAR(100);
EXECUTE @Name = [spGetEmployeeNameById2] @EmployeeId = 2;
PRINT @Name;

/**
Return Value Stored Procedure:
	1. Only Return INT DataType.
	2. Only One Value.
	3. Use To Convey Success of Failure.
Output Parameter Stored Procedure:
	1. Any DataType.
	2. More Than Value.
	3. Use To Return Values Like Name, Count etc.
	
**/