/** 23.LEFT_RIGHT_CHARINDEX_and_SUBSTRING_functions **/

/** LEFT **/
/*Syntax : LEFT('Character_Expression','Number_Of_Wanted_Characters')*/
/** Return Specified from left hand side of character Expression **/
PRINT LEFT('ABCDEFG', 3);

/** RIGHT **/
/*Syntax : RIGHT('Character_Expression','Number_Of_Wanted_Characters')*/
/** Return Specified from right hand side of character Expression **/
PRINT RIGHT('ABCDEFG', 3);

/** CHARINDEX **/
/*Syntax : CHARINDEX('Expression_To_Find','Expression_To_Search','Start_Location')*/
/** Return the starting position of the specified expression in Character Expression **/
PRINT CHARINDEX('@@','Muhammad@@gmail.com@@yahoo.com@@facebook.com',21);

/** SUBSTRING **/
/* Syntax : SUBSTRING('Character_Expression','Start_Position','Length') */
/** Return Substring part from the given Character Expression **/
PRINT SUBSTRING('muhammadjamal', 2, 5);

DECLARE @Email NVARCHAR(100);
SET @Email = 'muahammadjammi18@gmail.com';

PRINT SUBSTRING(@Email,CHARINDEX('@',@Email) + 1, LEN(@Email) - CHARINDEX('@',@Email));

ALTER Table [Sample2].[dbo].[tblEmployee]
ADD Email NVARCHAR(20);

SELECT SUBSTRING(Email,CHARINDEX('@',Email) + 1, LEN(Email) - CHARINDEX('@',Email)) AS EmailDomain,
COUNT(Email) AS Total
FROM [Sample2].[dbo].[tblEmployee]
GROUP BY(SUBSTRING(Email,CHARINDEX('@',Email) + 1, LEN(Email) - CHARINDEX('@',Email)));