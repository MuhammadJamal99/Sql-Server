/** 33.Important_Concepts_Related_to_Functions**/
/**
	Deterministic Functions : 
		Always return the same result any time they are called with a specific set of input values and given 
		the same state of the database. 
	Example : 
		SQUARE(),POWER(),SUM(),AVG() And COUNT()
	Note :
		all aggregate functions are deterministic functions.
**/
/**
	Non Deterministic Functions : 
		may return different results each time they are called with a specific set of input values 
		even if the database state that they access remains the same.
	Example : 
		GETDATE(),CURRENT_TIMESTAMP
	Note :
		all aggregate functions are deterministic functions.
**/
/**
	RAND() Function :
		Is a Non Deterministic function, but if you provide the seed value the function becomes deterministic, 
		as the same value gets returned for the same seed value.
**/
/** NON Deterministic function **/
SELECT GETDATE() As [GETDATE];
SELECT CURRENT_TIMESTAMP As [TimeStamp];
/** Deterministic function **/
SELECT RAND(1);
/** NON Deterministic function **/
SELECT RAND();
/**
	With SchemaBinding :
		SchemaBinding, Specifies that the function is bound to the database objects that it references. 
		when schemabinding is specified, the base Objects cannot be modified in any way that would affect the function defintion.
		the function definition itself must first be modified or 
		dropped to remove dependencies on the object that is to be modified.
**/
ALTER FUNCTION fn_GetEmployeeNameByID(@ID INT)
RETURNS NVARCHAR(50)
WITH SCHEMABINDING
AS
BEGIN
	RETURN (SELECT [FirstName] FROM [dbo].[tblEmployee] WHERE [ID] = @ID);
END