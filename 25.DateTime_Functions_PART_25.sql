/** 25.DateTime_Functions **/
/** DateTime Types **/
/** DateTime Functions **/
/** Understand UTC Time and Time Zone offset **/
CREATE TABLE [Sample2].[dbo].[tblDateTime]
(
	c_time TIME(7),
	c_date DATE,
	c_smalldatetime SMALLDATETIME,
	c_datetime DATETIME,
	c_datetime2 DATETIME2(7),
	c_datetimeoffset DATETIMEOFFSET(7)
);
INSERT INTO [Sample2].[dbo].[tblDateTime] VALUES (GETDATE(),GETDATE(),GETDATE(),GETDATE(),GETDATE(),GETDATE());

UPDATE [Sample2].[dbo].[tblDateTime] SET [c_datetimeoffset] = '2023-03-06 05:26:53.6133333 +10:00'
WHERE [c_datetimeoffset] = '2023-03-06 05:26:53.6133333 +10:00';


/** DATETIME Functions **/
/** 1.GETDATE() **/
/** GET Current System Date And Time **/
/** Important: GETDATE() Does NOT Return Time Zone Offset **/
SELECT GETDATE() AS [GetDate];

/** 2.CURRENT_TIMESTAMP **/
/** ANSI SQL Equivalent To GETDATE **/
/** 3.SYSDATETIME() **/
/** More Fractional Seconds Precision **/
SELECT CURRENT_TIMESTAMP AS [Current TimeStamp];

/** 4.SYSDATETIMEOFFSET() **/
/** More Fractional Seconds Precision + Time Zone Offset **/
SELECT SYSDATETIMEOFFSET() AS [System DateTime Offset];

/** 5.GETUTCDATE() **/
/**  UTC Date and Time **/
SELECT GETUTCDATE() AS [Utc Date];

/** 6.SYSUTCDATETIME() **/
/**  UTC Date and Time with More Fractional Seconds Precision **/
SELECT SYSUTCDATETIME() AS [System Utc DateTime];
 