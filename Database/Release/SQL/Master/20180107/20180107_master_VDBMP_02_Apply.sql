USE CRM;
GO

--*****UPGRADE FROM v2 TO v3******--
--Add MasterType column
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('dbverinfo', 'U') AND name = 'MasterType' )
BEGIN

	ALTER TABLE [dbverinfo] ADD [MasterType] VARCHAR(100) NULL;

END
GO

--Add EventDate column
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('dbverinfo', 'U') AND name = 'EventDate' )
BEGIN

	ALTER TABLE [dbverinfo] ADD [EventDate] DATETIME NULL;

END
GO
--*************************************--

USE [CRM]
GO

--Create missing table
IF OBJECT_ID('[dbo].[dbverinfo]', 'U') IS NULL
BEGIN
	CREATE TABLE [dbo].[dbverinfo](
		[BuildConfigId] [INT] NOT NULL,
		[BuildKey] [VARCHAR](100) NOT NULL
	) ON [PRIMARY]
END;

IF EXISTS (SELECT 1 FROM [dbo].[dbverinfo] WHERE [BuildConfigId] = 13)
	BEGIN
		UPDATE [dbo].[dbverinfo] SET [BuildKey] = '5241e1cb-080b-4e99-961b-c980351ef68e' WHERE [BuildConfigId] = 13
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[dbverinfo]
				( [BuildConfigId], [BuildKey] )
		VALUES  ( 13, '5241e1cb-080b-4e99-961b-c980351ef68e')
	END;
