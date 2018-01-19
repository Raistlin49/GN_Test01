--================================================================================================
-- Description: SQL Release Script
-- Created by:  Data Services
-- Machine: TGC-LT-94JMM12
-- Created on:  01-18-2018 19:10:19
-- Path: /Database/Release/SQL/Patch/20171024/VDBMP
-- Filter: Apply
--================================================================================================
-- Manifest --
--   DS-1024.01.Alter.Apply.sql
--   DS-1024.01.Alter.Apply.sql
--   DS-1024.02.Alter.Apply.sql
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
SELECT * FROM sys.tables;
PRINT '2018-01-18 19:09';

;
GO
PRINT 'Processing DS-1024.01.Alter.Apply.sql ******** End'
GO
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
SELECT * FROM sys.tables;
PRINT '2018-01-18 19:09';

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

IF EXISTS (SELECT 1 FROM [dbo].[dbverinfo] WHERE [BuildConfigId] = 13)
	BEGIN
		UPDATE [dbo].[dbverinfo] SET [BuildKey] = '38556544-7317-4c33-aa0e-24a634a4f1f4' WHERE [BuildConfigId] = 13
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[dbverinfo]
				( [BuildConfigId], [BuildKey] )
		VALUES  ( 13, '38556544-7317-4c33-aa0e-24a634a4f1f4')
	END;
