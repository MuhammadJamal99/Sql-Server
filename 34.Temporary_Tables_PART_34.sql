/** 34.Temporary_Tables **/
/**
	Temporary Tables : 
		are very Similar to the permanent tables. Permanent tables get created in the database you specify, 
		and remain in the database permanently, until you delete(drop) them. 
		on the other hand, temporary tables get created in the tempDb and automatically deleted,
		when they are no longer used.

	Types :
		1.Local Temorary Tables. 
		2.Global Temporary Tables.
**/
/**
	1.Local Temorary Tables.

		- A local Temporary table is available, only for the connection that has created the table.
		- A Local Temporary table is automatically dropped, when the connection that has created it, is closed.
		- if the user wants to explicitly drop the temporary table, he can do so using DROP Table #Tablename
	Note :
		- if the temporary table, is created inside the stored procedure, 
		  it get's dropped automatically upon the completion of the stored procedure execution.
		- 
**/
CREATE TABLE #PersonalDetails(ID INT, [Name] NVARCHAR(50));
INSERT INTO #PersonalDetails ([ID], [Name]) VALUES(1,'Muhammad');
INSERT INTO #PersonalDetails ([ID], [Name]) VALUES(2,'Jika');
INSERT INTO #PersonalDetails ([ID], [Name]) VALUES(3,'Seliem');

SELECT * FROM [#PersonalDetails];

SELECT [name] FROM tempdb..sysobjects where name like '#PersonalDetails%';

USE [Sample2];
GO
CREATE PROCEDURE spCreateLocalTempTable
AS
BEGIN
	CREATE TABLE #PersonalDetailsFromSP (ID INT, [Name] NVARCHAR(50));
	INSERT INTO #PersonalDetailsFromSP ([ID], [Name]) VALUES(1,'Muhammad');
	INSERT INTO #PersonalDetailsFromSP ([ID], [Name]) VALUES(2,'Jika');
	INSERT INTO #PersonalDetailsFromSP ([ID], [Name]) VALUES(3,'Seliem');
	SELECT * FROM [#PersonalDetailsFromSP];
END

EXECUTE [Sample2].[dbo].[spCreateLocalTempTable];

SELECT * FROM [#PersonalDetailsFromSP];


/**
	1.Global Temporary Tables.

		- Global Temporary tables are visible to all the connections of the sql server, 
		  and are only destoryed when the last connection referencing the table is closed.
		  
		- Multiple users, across multiple connections can have local temporary tables with the same name, 
		  but a global temporary table name has to be unique, and if you inspect the name of the global temp table,
		  in the object explorer, there will be no random numbers suffixed at the end of the table name.
**/
CREATE TABLE ##EmployeeDetails(ID INT, [Name] NVARCHAR(50));
INSERT INTO ##EmployeeDetails ([ID], [Name]) VALUES(1,'Muhammad');
INSERT INTO ##EmployeeDetails ([ID], [Name]) VALUES(2,'Jika');
INSERT INTO ##EmployeeDetails ([ID], [Name]) VALUES(3,'Seliem');

SELECT * FROM [##EmployeeDetails];
/**
	Difference Between Local and Global Temporary Tables :

		1.Local Temp Tables are Prefixed with single pound (#) symbol, where as global 
		  temp tables are prefixed with 2 pound (##) symbols.
		
		2.SQL Server appends some random numbers at the end of the local temp table name 
		  where this is not done for global temp names.

		3.Local Temporary tables are only visible to the session of the sql server which has created it,
		  where as global temporary tables are visible to all the sql server sessions.

		4.Local Temporary tables are automatically dropped, when the session that created the temporary tables is closed, 
		  where as Global temporary tables are destroyed when the last connection that is referencing 
		  the global temp table is closed.
**/