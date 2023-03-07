/** 27.DatePart_DateAdd_and_DateDiff_Functions **/
/** DateTime Functions **/

/** 1.DatePart(DatePart,Date) **/
/** 
	DATEPART(DatePart,Date) 
		Returns an integer representing the specified DatePart. 
		This function is Simialar to DATENAME().
		DATENAME()  Returns NVARCHAR 
		DATEPART() Returns an integer
**/
SELECT DATEPART(WEEKDAY,'2012-08-30 19:45:31.793') AS [Date Part]; --return 5
SELECT DATENAME(WEEKDAY,'2012-08-30 19:45:31.793') AS [Date NAME]; --return 5

/** 2.DateAdd(DatePart, NumberToAdd, Date) **/
/**
	DATEADD(DatePart, NumberToAdd, Date)
		Returns The DateTime, After Adding Specified NumberToAdd, 
		to The DatePart Specified of the Given Date.
**/
SELECT DATEADD(DAY,20,'2012-08-30 19:45:31.793'); --Returns '2012-09-19 19:45:31.793' 
SELECT DATEADD(MONTH,2,'2012-08-30 19:45:31.793'); --Returns '2012-10-30 19:45:31.793' 
SELECT DATEADD(YEAR,11,'2012-08-30 19:45:31.793'); --Returns '2023-8-30 19:45:31.793' 

/** 3.DateDiff(DatePart,StartDate,EndDate) **/
/**
	DATEDIFF(DatePart, StartDate, EndDate) 
		Returns the Count of the Specified DatePart Boundaries Crossed 
		between The Specified StartDate and EndDate
**/
ALTER TABLE [dbo].[tblEmployee]
ALTER COLUMN [DOB] DATETIME;

CREATE FUNCTION [dbo].fnGetAgeFromDOB(@Dob DATETIME)
RETURNS NVARCHAR(50)
AS
BEGIN
	DECLARE @Tempdate DATETIME, @Years INT, @Months INT, @Days INT, @Age NVARCHAR(50);
	SET @Tempdate = @Dob;
	SELECT @Years = DATEDIFF(YEAR, @Tempdate, GETDATE()) -
	CASE
		WHEN(MONTH(@Dob) > MONTH(GETDATE())) OR (MONTH(@Dob) = MONTH(GETDATE()) AND DAY(@Dob) > DAY(GETDATE()))
		THEN 1 ELSE 0
	END
	SELECT @Tempdate = DATEADD(YEAR, @Years, @Tempdate);
	SELECT @Months = DATEDIFF(MONTH, @Tempdate, GETDATE()) -
	CASE
		WHEN DAY(@Dob) > DAY(GETDATE())
		THEN 1 ELSE 0
	END
	SELECT @TempDate = DATEADD(MONTH, @Months, @TempDate)
	SELECT @Days = DATEDIFF(DAY, @Tempdate, GETDATE())
	SET @Age = CAST(@Years AS NVARCHAR(4)) +' ' + 'Years ' + CAST(@Months AS NVARCHAR(2)) + 'Months ' + CAST(@Days AS NVARCHAR(2)) + 'Days Old';
	return @Age;
END

SELECT [ID], [FirstName],[dbo].fnGetAgeFromDOB([DOB]) AS Age FROM [Sample2].[dbo].[tblEmployee];