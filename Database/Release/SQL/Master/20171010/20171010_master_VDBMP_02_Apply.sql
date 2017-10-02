--================================================================================================
-- Description: SQL Release Script
-- Created by:  Data Services
-- Machine: TGC-LT-94JMM12
-- Created on:  10-02-2017 18:32:04
-- Path: /Database/Release/SQL/Patch/20171010/VDBMP
-- Filter: Apply
--================================================================================================
-- Manifest --
--   DS-0000.01.Alter.Apply.sql
--   DS-0000.02.Alter.Apply.sql
--   DS-0000.03.Alter.Apply.sql
--   DS-0000.04.Alter.Apply.sql
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
-- /Database/Release/SQL/Patch/20171010/VDBMP/DS-0000.02.Alter.Apply.sql
PRINT 'Processing DS-0000.02.Alter.Apply.sql ******** Start'
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
PRINT 'Processing DS-0000.02.Alter.Apply.sql ******** End'
GO
--================================================================================================
-- /Database/Release/SQL/Patch/20171010/VDBMP/DS-0000.03.Alter.Apply.sql
PRINT 'Processing DS-0000.03.Alter.Apply.sql ******** Start'
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
PRINT 'Processing DS-0000.03.Alter.Apply.sql ******** End'
GO
--================================================================================================
-- /Database/Release/SQL/Patch/20171010/VDBMP/DS-0000.04.Alter.Apply.sql
PRINT 'Processing DS-0000.04.Alter.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
PRINT 'Testing new 04 apply...'
;
GO
PRINT 'Processing DS-0000.04.Alter.Apply.sql ******** End'
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
		UPDATE [dbo].[dbverinfo] SET [BuildKey] = 'e88cc4ca-af5b-4a49-9117-dfe6f133e348' WHERE [BuildConfigId] = 12
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[dbverinfo]
				( [BuildConfigId], [BuildKey] )
		VALUES  ( 12, 'e88cc4ca-af5b-4a49-9117-dfe6f133e348')
	END;
