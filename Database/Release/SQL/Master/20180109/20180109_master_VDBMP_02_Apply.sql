--=====HEADER=====================================================================================
-- Description:	SQL Release Script
-- Created by: Data Services
-- Machine: TGC-LT-94JMM12
-- Created on: 2018-01-20 22: 32:48
-- Path: /Database/Release/SQL/Master/20180109/20180109_master_VDBMP_02_Apply.sql
-- Sprint: 20180109 VDBMP
-- Filter: Apply
--=====MANIFEST===================================================================================
--   DS-1234.01.MyNewCode.Apply.sql
--=====PATCHES====================================================================================

--================================================================================================
-- /Database/Release/SQL/Patch/20180109/VDBMP/DS-1234.01.MyNewCode.Apply.sql
PRINT 'Processing DS-1234.01.MyNewCode.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
USE CRM;
GO

SELECT 1;
GO

SELECT 12;
GO
;
GO
PRINT 'Processing DS-1234.01.MyNewCode.Apply.sql ******** End'
GO
--=====DBVERINFO==================================================================================
USE CRM;
GO

--*****UPGRADE FROM v2 TO v3******--
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

--Add Note column
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID('dbverinfo', 'U') AND name = 'EventNote' )
BEGIN

	ALTER TABLE [dbverinfo] ADD [EventNote] VARCHAR(1000) NULL;

END
GO
--*************************************--
USE CRM;
GO

--Add event
INSERT INTO dbo.dbverinfo (BuildConfigId, BuildKey, MasterType, EventDate, EventNote)
	VALUES (13, '46f7743d-740f-4088-a615-020e6a7e1c15', 'Apply', GETDATE(), '20180109 VDBMP');
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
        
