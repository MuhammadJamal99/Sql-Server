/** Stored Procedures 2 **/

/** Create Stored Procedure With Output Parameter **/
CREATE PROCEDURE [dbo].[spGetEmployeesCountByGender]
@Gender NVARCHAR(20),
@EmployeeCount INT OUTPUT
AS
BEGIN
	SELECT [@EmployeeCount] = COUNT([ID]) FROM [Sample2].[dbo].[tblEmployee]
	WHERE	[Sample2].[dbo].[tblEmployee].[Gender] = @Gender;
END

/** You must use out or output with output parameter otherwise it will be null **/
DECLARE @TotalCount INT;
EXECUTE [spGetEmployeesCountByGender] @Gender = 'Male', @EmployeeCount = @TotalCount;
IF(@TotalCount IS NULL)
	PRINT 'Employees Total Count Is Null';
ELSE
	PRINT 'Employees Total Count Is NOT Null';

/** System Stored Procedure **/
/** 
	sp_help:
		View Information about the Stored Procedure like their Parameter names, 
		their DataTypes etc.
		sp_help Can Be Used With Any Database Object Like Tables, Views, Stored Procedures, Triggers etc.
		Alternatively, you Can also Press Alt+F1, When Object Name is Highlighted.
	
	sp_helptext:
		sp_hleptext Procedure Name View The Text Of Stored Procedure.

	sp_depends:
		View the dependencies of the stored procedure,this system stored procedure
		is very useful, especially if you want to check if there are any stored procedures
		that are referencing a table that you are about to drop
		sp_depends can also be used with other database objects like tables etc.
**/
sp_help [tblEmployee];
sp_depends [tblEmployee];

sp_help [spGetEmployeesCountByGender];
sp_depends [spGetEmployeesCountByGender];