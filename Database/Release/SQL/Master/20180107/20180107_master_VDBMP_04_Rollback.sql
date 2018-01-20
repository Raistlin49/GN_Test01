--=====HEADER=====================================================================================
-- Description:	SQL Release Script;
-- Created by: Data Services;
-- Machine: TGC-LT-94JMM12;
-- Created on: 2018-01-20 03: 50:15
-- Path: /Database/Release/SQL/Master/20180107/20180107_master_VDBMP_04_Rollback.sql
-- Sprint: 20180107 VDBMP
-- Filter: Rollback;
--=====MANIFEST===================================================================================
--   DS-1100.01.Create.Rollback.sql
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
;
GO
PRINT 'Processing DS-1100.01.Create.Rollback.sql ******** End'
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
