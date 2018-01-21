--=====HEADER=====================================================================================
-- Description:	SQL Release Script;
-- Created by: Data Services;
-- Machine: TGC-LT-94JMM12;
-- Created on: 2018-01-20 20: 32:49
-- Path: /Database/Release/SQL/Master/20180107/20180107_master_VDBMP_02_Apply.sql
-- Sprint: 20180107 VDBMP
-- Filter: Apply;
--=====MANIFEST===================================================================================
--   DS-1100.01.Create.Apply.sql
--   DS-1100.02.Create.Apply.sql
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
--================================================================================================
-- /Database/Release/SQL/Patch/20180107/VDBMP/DS-1100.02.Create.Apply.sql
PRINT 'Processing DS-1100.02.Create.Apply.sql ******** Start'
GO
SET ANSI_NULLS ON;
GO
SET ANSI_PADDING ON;
GO
SET QUOTED_IDENTIFIER ON;
GO
USE CRM;
GO

PRINT '20180108 - File 2 - APPLY';
GO

SELECT GETDATE();
GO

SELECT GETDATE();
GO

SELECT GETDATE();
GO

SELECT GETDATE();
GO
;
GO
PRINT 'Processing DS-1100.02.Create.Apply.sql ******** End'
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

END
GO
--*************************************--
USE CRM;
GO

--Add event
INSERT INTO dbo.dbverinfo (BuildConfigId, BuildKey, MasterType, EventDate)
	VALUES (13, b70fb772-fb1e-412f-a5fb-1ca77ddc46a4, Apply, GETDATE());
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
        
