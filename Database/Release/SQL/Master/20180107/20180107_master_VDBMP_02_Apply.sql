--=====HEADER=====================================================================================
-- Description:	SQL Release Script
-- Created by: Data Services
-- Machine: TGC-LT-94JMM12
-- Created on: 2018-01-20 22: 25:50
-- Path: /Database/Release/SQL/Master/20180107/20180107_master_VDBMP_02_Apply.sql
-- Sprint: 20180107 VDBMP
-- Filter: Apply
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

PRINT '20180108 - File 2 - APPLY - master branch';
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

UPDATE [dbverinfo] SET [EventDate] = DATEADD(D, -1, GETDATE());
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
	VALUES (13, '5fe34ffd-9a6d-4ecd-960c-9ce216325aa9', 'Apply', GETDATE(), '20180107 VDBMP');
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
        
