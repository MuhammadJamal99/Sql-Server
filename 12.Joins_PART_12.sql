CREATE TABLE [Sample2].[dbo].[tblDepartment] 
(
	[ID] INT IDENTITY(1,1),
	[DepartmentName] NVARCHAR(50) NOT NULL,
	[Location] NVARCHAR(50) NOT NULL,
	[DepartmentHead] NVARCHAR(50) NOT NULL,
	PRIMARY KEY ([ID])
);
INSERT INTO [Sample2].[dbo].[tblDepartment] 
(
	[DepartmentName],
	[Location],
	[DepartmentHead]
)
VALUES 
('IT', 'London', 'Rick'),
('Payroll', 'Delhi', 'Ron'),
('HR', 'New York',  'Christie'),
('Other Department', 'Sydney',  'Cindrella');

ALTER TABLE [Sample2].[dbo].[tblEmployee]
ADD FOREIGN KEY([DepartmentID]) REFERENCES [Sample2].[dbo].[tblDepartment] ([ID]);

/** SELECT FROM TWO TABLES INNER JOIN **/
/** INNER JOIN SELECT ONLY MATCHES ROWS BETWEEN TWO TABLES**/
SELECT [Name], [Gender], [Salary], [DepartmentName]
FROM [Sample2].[dbo].[tblEmployee] INNER JOIN [Sample2].[dbo].[tblDepartment]
ON [Sample2].[dbo].[tblEmployee].[DepartmentID] = [Sample2].[dbo].[tblDepartment].[ID];

/** SELECT FROM TWO TABLES LEFT OUTER JOIN **/
/** LEFT OUTER JOIN SELECT All ROWS FROM THE TABLE ON LEFT HAND SIDE OF JOIN STATMENT **/
SELECT [Name], [Gender], [Salary], [DepartmentName]
FROM [Sample2].[dbo].[tblEmployee] LEFT OUTER JOIN [Sample2].[dbo].[tblDepartment]
ON [Sample2].[dbo].[tblEmployee].[DepartmentID] = [Sample2].[dbo].[tblDepartment].[ID];


/** SELECT FROM TWO TABLES LEFT OUTER JOIN **/
/** RIGHT OUTER JOIN SELECT All ROWS FROM TABLE ON THE RIGHT SIDE OF JOIN STATMENT **/
SELECT [Name], [Gender], [Salary], [DepartmentName]
FROM [Sample2].[dbo].[tblEmployee] RIGHT OUTER JOIN [Sample2].[dbo].[tblDepartment]
ON [Sample2].[dbo].[tblEmployee].[DepartmentID] = [Sample2].[dbo].[tblDepartment].[ID];


/** SELECT FROM TWO TABLES FULL OUTER JOIN **/
/** FULL OUTER JOIN SELECT All ROWS FROM TWO TABLES **/
SELECT [Name], [Gender], [Salary], [DepartmentName]
FROM [Sample2].[dbo].[tblEmployee] FULL OUTER JOIN [Sample2].[dbo].[tblDepartment]
ON [Sample2].[dbo].[tblEmployee].[DepartmentID] = [Sample2].[dbo].[tblDepartment].[ID];


/** SELECT FROM TWO TABLES CROSS JOIN **/
/** CROSS JOIN PRODUCES CARTESIANT PRODUCT OF TWO TABLES **/
SELECT [Name], [Gender], [Salary], [DepartmentName]
FROM [Sample2].[dbo].[tblEmployee] CROSS JOIN [Sample2].[dbo].[tblDepartment];



/** Draft**/
/**
ALTER TABLE [Sample2].[dbo].[tblEmployee]
DROP COLUMN [DepartmentID];

ALTER TABLE [Sample2].[dbo].[tblEmployee] 
ALTER COLUMN [DepartmentID] INT NULL;
DEFAULT 4 FOR [DepartmentID],
FOREIGN KEY([DepartmentID]) REFERENCES [Sample2].[dbo].[tblDepartment] ([ID]);
**/