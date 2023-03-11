/** 31.Inline_Table_Valued_Functions **/

/**
	2.Inline Table Valued Functions:
	Returns Table We Specify Table As the return type.

	1.we specify Table as the return type, instead of any scalar data type.
	2.the function body is not enclosed between Begin and end block. 
	3.the structure of the table that gets returned is determined by the select statment with in the function.

	Where To Use: 
	1.can be used to achieve the functionality of parameterized views. 
	2.the table returned by the table valued function can also be used in joins with other tables.
**/
USE [Sample2];
GO
ALTER FUNCTION fn_GetEmployeesByGender(@Gender NVARCHAR(10))
RETURNS TABLE
RETURN (SELECT [ID],[FirstName],[DOB], [Gender] FROM [Sample2].[dbo].[tblEmployee]
	   WHERE [Gender] = @Gender);

SELECT * FROM fn_GetEmployeesByGender('Male');