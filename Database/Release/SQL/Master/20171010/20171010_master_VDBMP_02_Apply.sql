--================================================================================================
-- Description: SQL Release Script
-- Created by:  Data Services
-- Machine: TGC-LT-94JMM12
-- Created on:  10-01-2017 03:24:33
-- Path: /Database/Release/SQL/Patch/20171010/VDBMP
-- Filter: Apply
--================================================================================================
-- Manifest --
--   DS-0000.01.Alter.Apply.sql
-- Manifest --

--================================================================================================
-- /Database/Release/SQL/Patch/20171010/VDBMP/DS-0000.01.Alter.Apply.sql
PRINT 'Processing DS-0000.01.Alter.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
PRINT 'Testing apply...'
;
GO
PRINT 'Processing DS-0000.01.Alter.Apply.sql ******** End'
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
		UPDATE [dbo].[dbverinfo] SET [BuildKey] = '39cd7624-730d-4124-a94c-a994477e4e8c' WHERE [BuildConfigId] = 12
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[dbverinfo]
				( [BuildConfigId], [BuildKey] )
		VALUES  ( 12, '39cd7624-730d-4124-a94c-a994477e4e8c')
	END;
