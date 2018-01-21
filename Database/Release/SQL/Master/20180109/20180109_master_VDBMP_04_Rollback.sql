--=====HEADER=====================================================================================
-- Description:	SQL Release Script
-- Created by: Data Services
-- Machine: TGC-LT-94JMM12
-- Created on: 2018-01-20 22: 47:19
-- Path: /Database/Release/SQL/Master/20180109/20180109_master_VDBMP_04_Rollback.sql
-- Sprint: 20180109 VDBMP
-- Filter: Rollback

SET DEADLOCK_PRIORITY HIGH;
GO

--=====MANIFEST===================================================================================
--   DS-1234.01.MyNewCode.Rollback.sql

--=====PATCHES====================================================================================

--================================================================================================
-- /Database/Release/SQL/Patch/20180109/VDBMP/DS-1234.01.MyNewCode.Rollback.sql
PRINT 'Processing DS-1234.01.MyNewCode.Rollback.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
USE CRM;
GO

SELECT 2;
GO
;
GO
PRINT 'Processing DS-1234.01.MyNewCode.Rollback.sql ******** End'
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
	VALUES (13, '3f373f66-a72c-43b9-92eb-fabb094c8417', '20180109 VDBMP', 'Rollback', GETDATE());
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
--<sprintdate>--
--<instance>--
--<verinfodb>--
--<buildkey>--
--<repomasterpath>--
--<buildconfigid>--
--<buildid>--
--<changeset>--
--<mastertype>--
--<templateid:{ci.templates.templateid}--
--<patches>--
--<manifest>--
--<ciservername>--
--<builddate>--
--<helptext>--
--<buildconfigname>--
