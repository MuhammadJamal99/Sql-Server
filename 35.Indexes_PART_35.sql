/** 35.Indexes **/
/**
	Indexes are used by queries to find data from tables quickly. 
	Indexes are Created on tables and views. Index on a table or a view, 
	is very Similar to an index that we find in a book.
**/
/**
	In Fact, The existence of the right indexes, can drastically improve the performance of the query.
	if there is no index to help the query, then the query engine, 
	checks every row in the table from the beginning to the end.
	this is called as table Scan. table scan is bad for performance
**/

USE Sample2;
GO
SELECT * FROM [Sample2].[dbo].[tblEmployee] WHERE [Salary] > 5000 AND [Salary] < 7000;
CREATE INDEX IX_tblEmployee_Salary ON [dbo].[tblEmployee]([Salary] ASC);

USE Sample2;
GO
sp_Helpindex [tblEmployee];

DROP INDEX [dbo].[tblEmployee].[IX_tblEmployee_Salary];