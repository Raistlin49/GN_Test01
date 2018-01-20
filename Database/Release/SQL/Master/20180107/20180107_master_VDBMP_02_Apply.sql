--=====HEADER=====================================================================================
-- Description:	SQL Release Script;
-- Created by: Data Services;
-- Machine: TGC-LT-94JMM12;
-- Created on: 2018-01-20 03: 49:21
-- Path: /Database/Release/SQL/Master/20180107/20180107_master_VDBMP_02_Apply.sql
-- Sprint: 20180107 VDBMP
-- Filter: Apply;
--=====MANIFEST===================================================================================
--   DS-1100.01.Create.Apply.sql
--=====PATCHES====================================================================================

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

SELECT 'asdf';
GO

SELECT GETDATE();
GO
;
GO
PRINT 'Processing DS-1100.01.Create.Apply.sql ******** End'
GO
--=====FOOTER=====================================================================================
SET ANSI_NULLS ON;;
GO;
SET ANSI_PADDING ON;;
GO;
SET QUOTED_IDENTIFIER ON;;
GO;
--================================================================================================
-- End of Script;


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
		UPDATE [dbo].[dbverinfo] SET [BuildKey] = '82d3ca8e-b06c-41fe-a682-ff9ea3da00a0' WHERE [BuildConfigId] = 13
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[dbverinfo]
				( [BuildConfigId], [BuildKey] )
		VALUES  ( 13, '82d3ca8e-b06c-41fe-a682-ff9ea3da00a0')
	END;
