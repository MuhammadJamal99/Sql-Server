/** 30.Scalar_User_Defined_Functions **/
/** Types of User Defined Functions **/
/**
	1.Scalar Functions.
	2.Inline Table Valued Functions.
	3.Multiple Statment Table Valued Functions.
**/
/**	
	1.Scalar Functions : 
		May or May not have parameters, but always return a Single (Scalar) value. 
		The return value can be of any datatype, except text, ntext, image, cursor, and timestamp. 
**/
USE [Sample2];
GO
CREATE FUNCTION fnCalculateAge(@DOB DATE)
RETURNS INT
AS
BEGIN
	DECLARE @Age INT;
	SET @Age = DATEDIFF(YEAR,@DOB,GETDATE())-
				CASE
					WHEN (MONTH(@DOB) > MONTH(GETDATE())) OR
						 (MONTH(@DOB) = MONTH(GETDATE()) AND DAY(@DOB) > DAY(GETDATE()))
					THEN 1
					ELSE 0
				END
	RETURN @Age;
END

SELECT [ID], [FirstName], [dbo].[fnCalculateAge]([DOB]) AS Age FROM [Sample2].[dbo].[tblEmployee];