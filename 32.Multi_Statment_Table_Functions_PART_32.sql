/** 32.Multi_Statment_Table_Valued_Functions **/
/**
	3.Multiple Statment Table Valued Functions:

	Differences From Inline_Table_Value_Functions:
	
		1.In an inline Table Value Function, The Returns Clause cannot contain the structure of the table the function returns. 
		  Where As, with the multi-statament table Valued function, we specify the structure of the table that gets returned.
	
		2.Inline Table Valued Function Cannot have Begin and End Block, Where As the multi-Statment function can have.
	
		3.inline Table Valued function are better for Performance, that multi-statment table valued functions. 
		  if the given task, can be achieved using an inline table valued function, 
		  always prefer to use them, over multi statment table valued functions.
		
		4.it's possible to update the underlying table, using an inline table value function,
		  but not possible using multi-statement Table Valued Function.


	NOTE :
		Reason for improved performance of an inline table valued function 
		internally, sql server treats an inline table valued function much like it would a view and treats a multi-statement 
		table valued function similar to how it would a stored procedure.
*/

USE [Sample2];
GO
CREATE FUNCTION fn_ILTVF_GetEmployees()
RETURNS TABLE
AS
RETURN SELECT[ID],[FirstName], CAST([DOB] AS DATE) AS [DOB] FROM [Sample2].[dbo].[tblEmployee];

USE [Sample2];
GO
ALTER FUNCTION fn_MSTVF_GetEmployees()
RETURNS @Table TABLE ([ID] int,[FirstName] NVARCHAR(100), DOB DATE)
AS
BEGIN
	INSERT INTO @Table
	SELECT[ID],[FirstName], CAST([DOB] AS DATE) FROM [Sample2].[dbo].[tblEmployee];
	RETURN;
END

SELECT * FROM [dbo].[fn_ILTVF_GetEmployees]();
SELECT * FROM [dbo].[fn_MSTVF_GetEmployees]();

UPDATE [dbo].[fn_ILTVF_GetEmployees]() SET [FirstName] = 'Muhammad' WHERE [ID] = 1;
SELECT * FROM [dbo].[fn_ILTVF_GetEmployees]();

UPDATE [dbo].[fn_MSTVF_GetEmployees]() SET [FirstName] = 'Muhammad' WHERE [ID] = 1; -- Error: Object 'dbo.fn_MSTVF_GetEmployees' cannot be modified.
SELECT * FROM [dbo].[fn_MSTVF_GetEmployees]();