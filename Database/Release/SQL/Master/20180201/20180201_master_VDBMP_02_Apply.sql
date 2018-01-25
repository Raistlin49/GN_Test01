--=====HEADER=====================================================================================
-- Description:	SQL Release Script
-- Created by: Data Services
-- Machine: USHGNDBWD018
-- Created on: 2018-01-25 01: 32:51
-- Path: /Database/Release/SQL/Master/20180201/20180201_master_VDBMP_02_Apply.sql
-- Sprint: 20180201 VDBMP
-- Filter: Apply

SET DEADLOCK_PRIORITY HIGH;
GO

--=====MANIFEST===================================================================================
--   DS-7777.01.Create.Apply.sql
--   DS-7777.02.Create.Apply.sql
--   DS-7777.03.Create.Apply.sql

--=====PATCHES====================================================================================

--================================================================================================
-- /Database/Release/SQL/Patch/20180201/VDBMP/DS-7777.01.Create.Apply.sql
PRINT 'Processing DS-7777.01.Create.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
PRINT 'New apply for 20180124';
PRINT '20180123 02:50 PM';
PRINT 'Line 2';
GO
;
GO
PRINT 'Processing DS-7777.01.Create.Apply.sql ******** End'
GO
--================================================================================================
-- /Database/Release/SQL/Patch/20180201/VDBMP/DS-7777.02.Create.Apply.sql
PRINT 'Processing DS-7777.02.Create.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
PRINT 'New apply for 20180124';
PRINT '20180123 02:50 PM';
PRINT 'Line 2';
GO
;
GO
PRINT 'Processing DS-7777.02.Create.Apply.sql ******** End'
GO
--================================================================================================
-- /Database/Release/SQL/Patch/20180201/VDBMP/DS-7777.03.Create.Apply.sql
PRINT 'Processing DS-7777.03.Create.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
PRINT 'New apply for 20180124';
PRINT '20180123 02:50 PM';
PRINT 'Line 2';
GO
;
GO
PRINT 'Processing DS-7777.03.Create.Apply.sql ******** End'
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
	VALUES (15, '7bbce798-58e4-4f01-849c-48a85583f657', '20180201 VDBMP', 'Apply', GETDATE());
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
