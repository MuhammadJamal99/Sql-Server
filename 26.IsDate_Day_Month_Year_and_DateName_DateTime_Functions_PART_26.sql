/** 26.IsDate_Day_Month_Year_and_DateName_DateTime_Functions **/
/** DateTime Functions **/


/** DATETIME Functions **/
/** 1.ISDATE() **/
/** Checks if The Given value, is a valid Date, Time, or Datetime. Returns 1 for success, 0 for failure. **/
/** IMPORTANT: For DateTime2 Values It Returns Zero **/
SELECT ISDATE('Muhammad'); /** returns 0 **/
SELECT ISDATE(GETDATE()); /** returns 1**/
SELECT ISDATE('2023-03-6 06:28:59.167'); /** returns 1 **/ 
SELECT ISDATE('2023-03-6 06:28:27.1918447');/** returns 0 **/

/** 2.DAY() **/
/** Returns The Day Number of the month in the given date. **/
SELECT DAY(GETDATE()); /** returns 6 **/
SELECT DAY('03/31/2023'); /** returns 6 **/


/** 3.Month() **/
/** Returns The Month Number of the year in the given date. **/
SELECT MONTH(GETDATE()); /** returns 3 **/
SELECT MONTH('08/31/2023'); /** returns 8 **/


/** 4.Year() **/
/** Returns The Year Number of the given date. **/
SELECT YEAR(GETDATE()); /** returns 2023 **/
SELECT YEAR('01/10/2014'); /** returns 2014 **/

/** 5.DATENAME() **/
/** 
	DATENAME(DatePart,Date)
		Returns a String, that Represents a part of the given date. 
		this functions takes 2 parameters. 
		the first parameter datepart specifies, the part of the date, we want. 
		the second parameter, is the actual date, from which we want the part of the date.  
**/
PRINT DATENAME(WEEKDAY, '12-09-30 12:43:46.837'); /** returns Monday **/
PRINT DATENAME(MONTH, '12-09-30 12:43:46.837'); /** returns December **/
PRINT DATENAME(DAY, '12-09-30 12:43:46.837'); /** returns 9 **/
PRINT DATENAME(QUARTER, '12-09-30 12:43:46.837'); /** returns 4 **/
PRINT DATENAME(DAYOFYEAR, '12-09-30 12:43:46.837'); /** returns 343 **/
PRINT DATENAME(WEEK, '12-09-30 12:43:46.837'); /** returns 50 **/
PRINT DATENAME(HOUR, '12-09-30 12:43:46.837'); /** returns 9 **/
PRINT DATENAME(MINUTE, '12-09-30 12:43:46.837'); /** returns 43 **/
PRINT DATENAME(SECOND, '12-09-30 12:43:46.837'); /** returns 46 **/
PRINT DATENAME(MILLISECOND, '12-09-30 12:43:46.837'); /** returns 837 **/
PRINT DATENAME(MICROSECOND, '12-09-30 12:43:46.837'); /** returns 837000 **/
PRINT DATENAME(NANOSECOND, '12-09-30 12:43:46.837'); /** returns 837000000 **/
PRINT DATENAME(TZOFFSET, '12-09-30 12:43:46.837'); /** returns +00:00 **/

      