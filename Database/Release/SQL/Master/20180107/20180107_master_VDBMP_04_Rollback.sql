--=====HEADER=====================================================================================
-- Description:	SQL Release Script
-- Created by: Data Services
-- Machine: TGC-LT-94JMM12
-- Created on: 2018-01-22 17: 28:50
-- Path: /Database/Release/SQL/Master/20180107/20180107_master_VDBMP_04_Rollback.sql
-- Sprint: 20180107 VDBMP
-- Filter: Rollback

SET DEADLOCK_PRIORITY HIGH;
GO

--=====MANIFEST===================================================================================
--   DS-1100.01.Create.Rollback.sql
--   DS-1100.02.Create.Rollback.sql

--=====PATCHES====================================================================================

--================================================================================================
-- /Database/Release/SQL/Patch/20180107/VDBMP/DS-1100.01.Create.Rollback.sql
PRINT 'Processing DS-1100.01.Create.Rollback.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
USE CRM;
GO

SELECT 'Happy New Year - Rollback';
GO

SELECT GETDATE();
GO

SELECT GETDATE();
GO
;
GO
PRINT 'Processing DS-1100.01.Create.Rollback.sql ******** End'
GO
--================================================================================================
-- /Database/Release/SQL/Patch/20180107/VDBMP/DS-1100.02.Create.Rollback.sql
PRINT 'Processing DS-1100.02.Create.Rollback.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
USE CRM;
GO


PRINT '20180108 - File 2 - ROLLBACK';
GO
;
GO
PRINT 'Processing DS-1100.02.Create.Rollback.sql ******** End'
GO

--=====DBVERINFO==================================================================================
USE CRM;
GO

--*****UPGRADE FROM v2 TO v3******--

--Add Note column
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('dbverinfo', 'U') AND name = 'EventNote' )
BEGIN

	ALTER TABLE [dbverinfo] ADD [EventNote] VARCHAR(1000) NULL;

END
GO

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

	EXEC ('UPDATE [dbverinfo] SET [EventDate] = DATEADD(D, -1, GETDATE())');

END
GO

--*************************************--
USE CRM;
GO

--Add event
INSERT INTO dbo.dbverinfo (BuildConfigId, BuildKey, EventNote, MasterType, EventDate)
	VALUES (15, '7eaf2a0d-8010-49a9-8e59-ee9f3afd5145', '20180107 VDBMP', 'Rollback', GETDATE());
GO

--=====FOOTER=====================================================================================
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
--================================================================================================
-- End of Script;

--=====HELPTEXT===================================================================================
--<{pathparse subexpr}>-- e.g. <sprintdate>-- e.g. --<instance>--
--<verinfodb>--             --db containing dbverinfo table
--<buildkey>--              --CI GUID per master changeset
--<repomasterpath>--        --Path in repo to folder containing this master
--<buildconfigid>--         --
--<buildid>--
--<changeset>--
--<mastertype>--
--<templateid:{ci.templates.templateid}>--
--<patches>--
--<manifest>--
--<ciservername>--
--<builddate>--
--<helptext>--
--<buildconfigname>--
