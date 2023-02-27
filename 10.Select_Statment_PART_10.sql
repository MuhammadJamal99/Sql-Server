/** FULL QUALIFIED SELECT QUERY BY DATABASE NAME SCHEME AND TABLE NAME **/
SELECT [ID]
      ,[Name]
      ,[Email]
      ,[GenderId]
      ,[Age]
	  ,[City]
  FROM [Sample2].[dbo].[tblPerson]

  /** SELECT DISTINCT CITY FROM TABLE **/
  SELECT DISTINCT [City] FROM [Sample2].[dbo].[tblPerson]

  /** SELECT DISTINCT CITY AND NAME TOGTHER FROM TABLE **/
  SELECT DISTINCT [City], [Name] FROM [Sample2].[dbo].[tblPerson]


  /** SELECT STATMENT WITH WHERE **/
  SELECT * FROM [Sample2].[dbo].[tblPerson] WHERE [City] = 'Shubra';

  SELECT * FROM [Sample2].[dbo].[tblPerson] WHERE [City] <> 'Shubra';

  SELECT * FROM [Sample2].[dbo].[tblPerson] WHERE ([City] = 'Shubra' OR [City] = 'October') AND ([Age] > 20);

  /** SELECT STATMENT WITH AGE IN RANGE **/
  SELECT * FROM [Sample2].[dbo].[tblPerson] WHERE [Age] = 28 OR [Age] = 25 OR [Age] = 20;
  
  /** SELECT STATMENT WHERE AGE IN SPECIFIC  RANGE **/
  SELECT * FROM [Sample2].[dbo].[tblPerson] WHERE [Age] IN (20,25,28);

  /** SELECT STATMENT WHERE AGE BETWEEN TWO NUMBERS **/
  SELECT * FROM [Sample2].[dbo].[tblPerson] WHERE [Age] BETWEEN 20 AND 28;

  /** SELECT STATMENT USING LIKE OPERATOR **/
  SELECT * FROM [Sample2].[dbo].[tblPerson] WHERE [City] LIKE 'SH%';

  /** SELECT STATMENT USING LIKE OPERATOR WITH WILD CARD (SPECIFIES ZERO OR MORE CHARS) **/
  SELECT * FROM [Sample2].[dbo].[tblPerson] WHERE [City] NOT LIKE '%B%';

  
  /** SELECT STATMENT USING LIKE OPERATOR WITH UNDERSCORE (SPECIFIES ONLY ONE CHAR) **/
  SELECT * FROM [Sample2].[dbo].[tblPerson] WHERE [Email] LIKE '_@_.Com';

  /** SELECT STATMENT USING LIKE OPERATOR WITH UNDERSCORE (SPECIFIES ANY CHAR WITH IN BRACKETS) **/
  SELECT * FROM [Sample2].[dbo].[tblPerson] WHERE [Name] LIKE '[MT]%';

  /** SELECT STATMENT USING LIKE OPERATOR WITH UNDERSCORE (SPECIFIES ANY CHAR NOT IN BRACKETS) **/
  SELECT * FROM [Sample2].[dbo].[tblPerson] WHERE [Name] LIKE '[^MT]%';
  
  /** SELECT STATMENT WITH ORDER BY (DEFAULT : ASCE) **/
  SELECT * FROM [Sample2].[dbo].[tblPerson] ORDER BY [Name];
  SELECT * FROM [Sample2].[dbo].[tblPerson] ORDER BY [Name] DESC;
  SELECT * FROM [Sample2].[dbo].[tblPerson] ORDER BY [Name] DESC, [Age] ASC;

  /** SELECT STATMENT WITH TOP **/
  SELECT TOP 50 PERCENT * FROM [Sample2].[dbo].[tblPerson];
