-- Author: Daniel Haanpaa
-- Purpose: Script to refresh deployable apex apps selection table
-- Intall Notes:
-- Change LAB0DS to the schema the APEX Deployment Manager is installed in
-- Change apex_210200 to the name of the apex installation schema

DELETE FROM LAB0ODS.ADM_APPS;
COMMIT;
INSERT INTO LAB0ODS.ADM_APPS (apex_app_id,label,apex_wks_id)
SELECT
    apex_210200.apex_applications.application_id AS apex_app_id,
    apex_210200.apex_applications.application_name AS label,
    apex_210200.apex_applications.workspace_id AS APEX_WKS_ID
FROM
    apex_210200.apex_applications
WHERE 
    WORKSPACE != 'INTERNAL'
AND WORKSPACE NOT LIKE '%ORACLE%';
COMMIT;