/** 35.Indexes **/


USE Sample2;
GO
CREATE INDEX IX_tblEmployee_Salary ON [dbo].[tblEmployee]([Salary] ASC);

sp_Helpindex [tblEmployee];

DROP INDEX [dbo].[tblEmployee].[IX_tblEmployee_Salary];