--================================================================================================
-- Description: SQL Release Script
-- Created by:  Data Services
-- Machine: TGC-LT-94JMM12
-- Created on:  10-01-2017 02:21:06
-- Path: /Database/Release/SQL/Patch/20170912k/VDBMP
-- Filter: Apply
--================================================================================================
-- Manifest --
--   000001.APPLY.sql
--   000002.APPLY.sql
--   000003.APPLY.sql
-- Manifest --

--================================================================================================
-- /Database/Release/SQL/Patch/20170912k/VDBMP/000001.APPLY.sql
PRINT 'Processing 000001.APPLY.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
SELECT 'ASDF';
SELECT 'asdf';
;
GO
PRINT 'Processing 000001.APPLY.sql ******** End'
GO
--================================================================================================
-- /Database/Release/SQL/Patch/20170912k/VDBMP/000002.APPLY.sql
PRINT 'Processing 000002.APPLY.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
--First post to GitHub
--new line here
--third line
--fourth line
--fifth line

;
GO
PRINT 'Processing 000002.APPLY.sql ******** End'
GO
--================================================================================================
-- /Database/Release/SQL/Patch/20170912k/VDBMP/000003.APPLY.sql
PRINT 'Processing 000003.APPLY.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
--Second post to GitHub
;
GO
PRINT 'Processing 000003.APPLY.sql ******** End'
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
		UPDATE [dbo].[dbverinfo] SET [BuildKey] = '16bfb604-b947-4702-bcb2-c853408e0ced' WHERE [BuildConfigId] = 12
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[dbverinfo]
				( [BuildConfigId], [BuildKey] )
		VALUES  ( 12, '16bfb604-b947-4702-bcb2-c853408e0ced')
	END;
