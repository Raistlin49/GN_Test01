--================================================================================================
-- Description: SQL Release Script
-- Created by:  Data Services
-- Machine: TGC-LT-94JMM12
-- Created on:  10-03-2017 12:27:33
-- Path: /Database/Release/SQL/Patch/20171012/VDBMP
-- Filter: Apply
--================================================================================================
-- Manifest --
--   DS-0010.01.Alter.Apply.sql
-- Manifest --

--================================================================================================
-- 
PRINT 'Processing DS-0010.01.Alter.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
USE CRM;
GO

PRINT 'This is some test code for DS-0010.01.Alter.Apply';
GO
;
GO
PRINT 'Processing DS-0010.01.Alter.Apply.sql ******** End'
GO
--================================================================================================
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
--================================================================================================
-- End of Script

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

IF EXISTS (SELECT 1 FROM [dbo].[dbverinfo] WHERE [BuildConfigId] = 12)
	BEGIN
		UPDATE [dbo].[dbverinfo] SET [BuildKey] = 'e3571471-ea85-4d23-a5dc-0317df3bdfe0' WHERE [BuildConfigId] = 12
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[dbverinfo]
				( [BuildConfigId], [BuildKey] )
		VALUES  ( 12, 'e3571471-ea85-4d23-a5dc-0317df3bdfe0')
	END;
