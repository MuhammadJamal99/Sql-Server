/** SELECT FROM TWO TABLES LEFT OUTER JOIN **/
/** SELECT ONLY NON INTERSECT ROWS FROM TABLE ON LEFT HAND SIDE OF JOIN STATMENT **/
/** IMPORTANT NEVER USE = WHEN COMPARING TO NULL ALAWAS USE IS **/
SELECT				[Name], [Gender], [Salary], [DepartmentName]
FROM				[Sample2].[dbo].[tblEmployee] 
LEFT OUTER JOIN		[Sample2].[dbo].[tblDepartment]
ON					[Sample2].[dbo].[tblEmployee].[DepartmentID] = [Sample2].[dbo].[tblDepartment].[ID]
WHERE				[Sample2].[dbo].[tblEmployee].[DepartmentID] IS NULL;

/** SELECT FROM TWO TABLES LEFT OUTER JOIN **/
/** SELECT ONLY NON INTERSECT ROWS FROM TABLE ON RIGHT HAND SIDE OF JOIN STATMENT **/
SELECT					[Name], [Gender], [Salary], [DepartmentName]
FROM					[Sample2].[dbo].[tblEmployee] 
RIGHT OUTER JOIN		[Sample2].[dbo].[tblDepartment]
ON						[Sample2].[dbo].[tblEmployee].[DepartmentID] = [Sample2].[dbo].[tblDepartment].[ID]
WHERE					[Sample2].[dbo].[tblEmployee].[DepartmentID] IS NULL;

/** SELECT FROM TWO TABLES LEFT OUTER JOIN **/
/** SELECT ONLY NON INTERSECT ROWS FROM TWO TABLES **/
SELECT					[Name], [Gender], [Salary], [DepartmentName]
FROM					[Sample2].[dbo].[tblEmployee] 
FULL OUTER JOIN			[Sample2].[dbo].[tblDepartment]
ON						[Sample2].[dbo].[tblEmployee].[DepartmentID] = [Sample2].[dbo].[tblDepartment].[ID]
WHERE					[Sample2].[dbo].[tblEmployee].[DepartmentID] IS NULL
OR						[Sample2].[dbo].[tblDepartment].[ID] IS NULL;



/** Draft**/
/**
**/