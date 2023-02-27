USE [Sample2]
GO

ALTER TABLE tblPerson ADD CONSTRAINT DF_tblPerson_GenderId
DEFAULT 3 FOR GenderID;