/** Stored Procedures **/

/**
	Stored Procedure:
		Is a group of T-SQL(Transact SQL) Statments if you have situation, where you write the same query over and over again,
		you can save specific query as a Stored Procedure and call it just by it's name.
**/

/** Create Stored Procedure **/

/**
	CREATE PROCEDURE spGetEmployees
	AS
	BEGIN
		SELECT * FROM [Sample2].[dbo].[tblEmployee];
	END
**/

/** Execute Stored Procedure **/
[dbo].[spGetEmployees];

/** Execute Stored Procedure **/
EXECUTE [dbo].[spGetEmployees];

/** Stored Procedure with parameters **/
/*
CREATE PROCEDURE [dbo].[spGetEmployeesByGenderAndDepartmentID]
@Gender NVARCHAR(20),
@DepartmentId INT
AS
BEGIN
	SELECT * FROM [Sample2].[dbo].[tblEmployee]
	WHERE	[Sample2].[dbo].[tblEmployee].[Gender] = @Gender
	AND		[Sample2].[dbo].[tblEmployee].[DepartmentID] = @DepartmentId;
END
*/
/** This way can cause errors because of order of parameters **/
/*
EXECUTE [dbo].[spGetEmployeesByGenderAndDepartmentID] 'Male', 1;
*/
/** This is better way **/
EXECUTE [dbo].[spGetEmployeesByGenderAndDepartmentID] @DepartmentId = 1, @Gender = 'Male';

/** Get implementation of Stored Procedure **/

sp_helptext [spGetEmployeesByGenderAndDepartmentID];

/** To update Stored Procedure **/
ALTER PROCEDURE [dbo].[spGetEmployeesByGenderAndDepartmentID]
@Gender NVARCHAR(20),
@DepartmentId INT
AS
BEGIN
	SELECT * FROM [Sample2].[dbo].[tblEmployee]
	WHERE	 [Sample2].[dbo].[tblEmployee].[Gender] = @Gender
	AND		 [Sample2].[dbo].[tblEmployee].[DepartmentID] = @DepartmentId
	ORDER BY [Sample2].[dbo].[tblEmployee].[FirstName];
END

/** TO Encrypt Stored Procedure script you can use With Encryption **/
ALTER PROCEDURE [dbo].[spGetEmployeesByGenderAndDepartmentID]
@Gender NVARCHAR(20),
@DepartmentId INT
WITH ENCRYPTION
AS
BEGIN
	SELECT * FROM [Sample2].[dbo].[tblEmployee]
	WHERE	 [Sample2].[dbo].[tblEmployee].[Gender] = @Gender
	AND		 [Sample2].[dbo].[tblEmployee].[DepartmentID] = @DepartmentId
	ORDER BY [Sample2].[dbo].[tblEmployee].[FirstName];
END