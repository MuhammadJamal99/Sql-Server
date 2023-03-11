/** 27.Cast_and_Convert_Functions **/
/**
	CAST is based on ANSI Standard and convert os specific to sql server. 
	so, if portability is a concern and if you want to use the script with 
	other database applications use Cast().
**/
/**
	Convert provides more flexibility than Cast. 
	For example, it's possible to control how you want DateTime datatypes to be converted using 
	styles with convert functions.
**/
/**
	Note: The general guideline is to use CAST(), 
	unless you want to take advantage of the style functionality in CONVERT().
**/


/** 1.CAST(expression AS data_Type [(length)]) **/
/** It Takes Expression Parameter and As DataType And Length Is Optional **/

SELECT [ID], [FirstName],[DOB], CAST([DOB] AS NVARCHAR) AS [ConvertedDOB]
FROM [Sample2].[dbo].[tblEmployee];

SELECT [ID], [FirstName], [DOB], CAST([DOB] AS NVARCHAR(50)) AS [ConvertedDOB]
FROM [Sample2].[dbo].[tblEmployee];

/** 2.CONVERT(data_Type [(length)], expression[Style]) **/
/** Style Used only with Convert Function **/
/** 
	To Control formating of the date part,
	DateTime has to be Converted to Nvarchar using The Styles Provided.
	When Converting to Date Data type, 
	The Convert() function Will Ignore the style Parameter. 
**/
/** 
	Style		DateFormat
	101			MM/dd/yyyy
	102			yy.MM.dd
	103			dd/MM/yyyy
	104			dd.MM.yy
	105			dd-mm-yy		
**/
SELECT [ID], [FirstName], [DOB], CONVERT(NVARCHAR, [DOB]) AS [ConvertedDOB]
FROM [Sample2].[dbo].[tblEmployee];

SELECT [ID], [FirstName], [DOB], CONVERT(NVARCHAR, [DOB], 101) AS [ConvertedDOB-101]
FROM [Sample2].[dbo].[tblEmployee];

SELECT [ID], [FirstName], [DOB], CONVERT(NVARCHAR, [DOB], 102) AS [ConvertedDOB-102]
FROM [Sample2].[dbo].[tblEmployee];

SELECT [ID], [FirstName], [DOB], CONVERT(NVARCHAR, [DOB], 103) AS [ConvertedDOB-103]
FROM [Sample2].[dbo].[tblEmployee];

SELECT [ID], [FirstName], [DOB], CONVERT(NVARCHAR, [DOB], 104) AS [ConvertedDOB-104]
FROM [Sample2].[dbo].[tblEmployee];

SELECT [ID], [FirstName], [DOB], CONVERT(NVARCHAR, [DOB], 105) AS [ConvertedDOB-105]
FROM [Sample2].[dbo].[tblEmployee];

SELECT [ID], [FirstName], [FirstName] +'-'+CAST([ID] AS NVARCHAR) AS [Name-ID]
FROM [Sample2].[dbo].[tblEmployee];

