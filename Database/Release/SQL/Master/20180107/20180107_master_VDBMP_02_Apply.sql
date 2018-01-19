--================================================================================================
-- Description: SQL Release Script
-- Created by:  Data Services
-- Machine: TGC-LT-94JMM12
-- Created on:  01-18-2018 23:04:49
-- Path: /Database/Release/SQL/Patch/20180107/VDBMP
-- Filter: Apply
--================================================================================================
-- Manifest --
--   DS-1100.01.Create.Apply.sql
-- Manifest --

--================================================================================================
-- /Database/Release/SQL/Patch/20180107/VDBMP/DS-1100.01.Create.Apply.sql
PRINT 'Processing DS-1100.01.Create.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
USE CRM;
GO

SELECT 'Happy New Year - Apply';
GO

SELECT GETDATE();
GO

PRINT 'DONE';
GO
;
GO
PRINT 'Processing DS-1100.01.Create.Apply.sql ******** End'
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

IF EXISTS (SELECT 1 FROM [dbo].[dbverinfo] WHERE [BuildConfigId] = 13)
	BEGIN
		UPDATE [dbo].[dbverinfo] SET [BuildKey] = '283f0625-67f8-4377-9d2d-6dd0fe47e894' WHERE [BuildConfigId] = 13
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[dbverinfo]
				( [BuildConfigId], [BuildKey] )
		VALUES  ( 13, '283f0625-67f8-4377-9d2d-6dd0fe47e894')
	END;
