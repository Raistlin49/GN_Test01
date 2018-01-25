--=====HEADER=====================================================================================
-- Description:	SQL Release Script
-- Created by: Data Services
-- Machine: USHGNDBWD018
-- Created on: 2018-01-25 00: 40:38
-- Path: /Database/Release/SQL/Master/20180124/20180124_master_VDBMP_02_Apply.sql
-- Sprint: 20180124 VDBMP
-- Filter: Apply

SET DEADLOCK_PRIORITY HIGH;
GO

--=====MANIFEST===================================================================================
--   DS-5555.01.Create.Apply.sql
--   DS-5555.02.Create.Apply.sql
--   DS-5555.03.Create.NewStuff.Apply.sql
--   DS-5556.01.Create.proc.Apply.sql

--=====PATCHES====================================================================================

--================================================================================================
-- /Database/Release/SQL/Patch/20180124/VDBMP/DS-5555.01.Create.Apply.sql
PRINT 'Processing DS-5555.01.Create.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
PRINT 'New apply for 20180124';
PRINT '20180123 02:50 PM';
GO
;
GO
PRINT 'Processing DS-5555.01.Create.Apply.sql ******** End'
GO
--================================================================================================
-- /Database/Release/SQL/Patch/20180124/VDBMP/DS-5555.02.Create.Apply.sql
PRINT 'Processing DS-5555.02.Create.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
PRINT 'New apply for 20180124';
PRINT '8:08';
GO
;
GO
PRINT 'Processing DS-5555.02.Create.Apply.sql ******** End'
GO
--================================================================================================
-- /Database/Release/SQL/Patch/20180124/VDBMP/DS-5555.03.Create.NewStuff.Apply.sql
PRINT 'Processing DS-5555.03.Create.NewStuff.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
USE CRM;
GO

PRINT 'New stuff - apply';
GO
;
GO
PRINT 'Processing DS-5555.03.Create.NewStuff.Apply.sql ******** End'
GO
--================================================================================================
-- /Database/Release/SQL/Patch/20180124/VDBMP/DS-5556.01.Create.proc.Apply.sql
PRINT 'Processing DS-5556.01.Create.proc.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
USE CRM;
GO

SELECT 'ASDF';
GO
;
GO
PRINT 'Processing DS-5556.01.Create.proc.Apply.sql ******** End'
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
	VALUES (15, '74c9e10e-8ed1-4952-85ef-9066d91919ff', '20180124 VDBMP', 'Apply', GETDATE());
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
