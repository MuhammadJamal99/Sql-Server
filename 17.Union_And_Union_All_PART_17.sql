/** Union and Union All**/
/** Used to Combine the result set of two or more select statment **/
/** Union All Combine All Rows With Duplicated Rows **/
/** Union Combine All Rows Without Duplicated Rows **/
/** Union has to Perform distinct sort to remove duplicates which make  it less faster than Union ALL **/
/** Differences Between Join And Union **/
/**
	Union:
		Combine the result set of two or more select queries into a Single result set which includes all rows form all queries
		in Union result.
	Join: 
		retrieve data from two or more tables based on logical relationships between the tables.
	in short:
		Union Combine rows from 2 or more tables.
		Join Combine Columns from 2 or more tables.
**/
CREATE TABLE [Sample2].[dbo].[tblManagers] 
( 
	[ID] INT IDENTITY(1,1),
	[FirstName] NVARCHAR(50) NULL,
	[MiddleName] NVARCHAR(50) NULL,
	[LastName] NVARCHAR(50) NULL,
	[DepartmentID] INT NULL,
	[Gender] NVARCHAR(50) NOT NULL,
	[Salary] INT NOT NULL,
	[City] NVARCHAR(50) NOT Null,
	PRIMARY KEY([ID]),
	CONSTRAINT FK_tblManager_tblDepartment FOREIGN KEY([DepartmentID])
    REFERENCES [Sample2].[dbo].[tblDepartment]([ID])
);

INSERT INTO [Sample2].[dbo].[tblManagers]
([FirstName], [MiddleName], [LastName], [DepartmentID], [Gender], [Salary], [City])
SELECT [FirstName], [MiddleName], [LastName], [DepartmentID], [Gender], [Salary], [City] FROM [Sample2].[dbo].[tblEmployee];


SELECT [FirstName], [MiddleName], [LastName] FROM [Sample2].[dbo].[tblEmployee]
UNION ALL
SELECT [FirstName], [MiddleName], [LastName] FROM [Sample2].[dbo].[tblManagers];

/** Draft**/
/**
**/