--================================================================================================
-- Description: SQL Release Script
-- Created by:  Data Services
-- Machine: TGC-LT-94JMM12
-- Created on:  10-15-2017 03:26:09
-- Path: /Database/Release/SQL/Patch/20171024/VDBMP
-- Filter: Apply
--================================================================================================
-- Manifest --
--   DS-1024.01.Alter.Apply.sql
--   DS-1024.02.Alter.Apply.sql
-- Manifest --

--================================================================================================
-- /Database/Release/SQL/Patch/20171024/VDBMP/DS-1024.01.Alter.Apply.sql
PRINT 'Processing DS-1024.01.Alter.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
PRINT 'Testing code in the apply script...';
PRINT 'The 2:02 AM line';
PRINT 'The 2:12 AM line';
PRINT 'The 3:22 AM line';
;
GO
PRINT 'Processing DS-1024.01.Alter.Apply.sql ******** End'
GO
--================================================================================================
-- /Database/Release/SQL/Patch/20171024/VDBMP/DS-1024.02.Alter.Apply.sql
PRINT 'Processing DS-1024.02.Alter.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
PRINT '02 - Testing code in the apply script...';
PRINT 'The 3:18 AM line';
PRINT '';
PRINT '3:24 AM';
;
GO
PRINT 'Processing DS-1024.02.Alter.Apply.sql ******** End'
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
		UPDATE [dbo].[dbverinfo] SET [BuildKey] = 'b354a29e-9c3c-4b80-8611-bb6bf9a5054a' WHERE [BuildConfigId] = 12
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[dbverinfo]
				( [BuildConfigId], [BuildKey] )
		VALUES  ( 12, 'b354a29e-9c3c-4b80-8611-bb6bf9a5054a')
	END;
