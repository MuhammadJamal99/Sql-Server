/** 36.Clustered_and_Nonclustered_Indexes **/

/** 
	Clustered Index :
		determines the physical order of data in a table. 
		for this reason, a table can have only one clustered index.
	
	Note that primarykey column . 
		primary key, constraint create clustered indexes automatically 
		if no clustered index already exists on the table.

	A Clustered Index: 
		is analogous to a telephone directory, when the data is arranged by the last name. 
		we just learnt that, a table can have only one clustered index. 
		However, the index can contain multiple columns (a composite index),
		like the way a telephone directory is organized by last name and first name.
**/

USE [Sample2];
GO

CREATE CLUSTERED INDEX IX_tblEmployee_Gender_Salary
ON [tblEmployee] ([Gender] DESC, [Salary] ASC);

EXECUTE sp_HELPINDEX [tblEmployee];

/**  Non Clustered Index **/
/** 
	NonClustered Index is analogous to an index in a textbook. 
	the data is stored in one place, the index in another place. 
	the index will have pointers to the storage location of the data.


	since, the nonclustered index is stored separately from the actual data, 
	a table can have more than one non clustered index, just like how a book can have an index 
	by chapters at the beginning and another index by common terms at the end.

	in the index itself, the data is stored in an ascending or descending order of the index key,
	which doesn't in any way influence the storage of data in the table.
**/