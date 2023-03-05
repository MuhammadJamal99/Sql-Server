/** 24.Replicate_Space_Patindex_Replace_and_Stuff_string_functions **/

/** REPLICATE **/
/* Syntax: REPLICATE(String_To_Be_Replicate , Number_Of_Times_To_Replicate)*/
/** Repeats The given String for The Specified Number of Times **/
PRINT REPLICATE('ABCDEFGH ',3);
SELECT [FirstName],[LastName],[MiddleName], SUBSTRING([Email],1,2) + REPLICATE('*',5) + SUBSTRING(Email, CHARINDEX('@', Email), LEN(Email) - CHARINDEX('@',Email))
AS Email
FROM [Sample2].[dbo].[tblEmployee];


/** Space **/
/* Syntax: SPACE(Number_Of_Spaces) */
/** Returns number of Spaces, Specified by the Number of Spaces Argument **/
SELECT [FirstName] + SPACE(10) + [LastName]+ SPACE(10) +[MiddleName]
AS [Employee Name]
FROM [Sample2].[dbo].[tblEmployee];


/** Patindex **/
/* Syntax: PATINDEX('%PATTERN%',Expression)*/
/** 
	Returns the starting position of the first Occurrence of a Pattern in a Specified expression. 
	it takes two arguments, the pattern to be searched and the expression. 
	PATINDEX() Is Simial to CHARINDEX(). 
	With CHARINDEX We Cannot use WildCards, Where as PATINDEX() Provides this Capability. 
	if The Specified Pattern Is Not found PATINDEX() Returns Zero.
**/
SELECT Email, PATINDEX('%@aaa.com', Email) AS [First Occurrence]
FROM [Sample2].[dbo].[tblEmployee];

SELECT Email, PATINDEX('%@aaa.com', Email) AS [First Occurrence]
FROM [Sample2].[dbo].[tblEmployee]
WHERE PATINDEX('%@aaa.com', Email) > 0;

/** Replace **/
/* Syntax: REPLACE(String_Expression,Pattern,Replacement_Value) */
/** Replace All Occurrences of a Specified string Value With anthor string value **/
SELECT REPLACE(Email,'.com','.net') AS [Email]
FROM [Sample2].[dbo].[tblEmployee];

/** Stuff **/
/* Syntax: STUFF(OriginalExpression, Start, Length, Replacement_Expression) */
/** 
	STUFF() Function Inserts Replacement_Expression, 
	at the Start Position Specified, 
	along with removing the charactes specified using length parameter.
**/
SELECT [FirstName],[Email],STUFF([Email], 2, 3,'*****') AS StuffedEmail
FROM [Sample2].[dbo].[tblEmployee];