--================================================================================================
-- Description: SQL Release Script
-- Created by:  Data Services
-- Machine: TGC-LT-94JMM12
-- Created on:  01-18-2018 18:58:22
-- Path: /Database/Release/SQL/Patch/20171012/VDBMP
-- Filter: Apply
--================================================================================================
-- Manifest --
--   DS-0010.01.Alter.Apply.sql
--   DS-0010.02.Alter.Apply.sql
--   DS-0010.03.Alter.Apply.sql
-- Manifest --

--================================================================================================
-- /Database/Release/SQL/Patch/20171012/VDBMP/DS-0010.01.Alter.Apply.sql
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
-- /Database/Release/SQL/Patch/20171012/VDBMP/DS-0010.02.Alter.Apply.sql
PRINT 'Processing DS-0010.02.Alter.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
USE CRM;
GO

PRINT 'This is some test code for DS-0010.02.Alter.Apply';
GO
;
GO
PRINT 'Processing DS-0010.02.Alter.Apply.sql ******** End'
GO
--================================================================================================
-- /Database/Release/SQL/Patch/20171012/VDBMP/DS-0010.03.Alter.Apply.sql
PRINT 'Processing DS-0010.03.Alter.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
USE CRM;
GO

PRINT 'This is some test code for DS-0010.03.Alter.Apply';
GO
;
GO
PRINT 'Processing DS-0010.03.Alter.Apply.sql ******** End'
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
		UPDATE [dbo].[dbverinfo] SET [BuildKey] = 'e0af40cd-0aea-4085-af1c-b88e5e329737' WHERE [BuildConfigId] = 13
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[dbverinfo]
				( [BuildConfigId], [BuildKey] )
		VALUES  ( 13, 'e0af40cd-0aea-4085-af1c-b88e5e329737')
	END;
