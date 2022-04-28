-- DEV Script
-- Author: Daniel Haanpaa
-- Purpose: Script to reset deployed and reviewed columns on the ADM_DEPLOYS table
-- Install Notes:
-- Change LAB0ODS to the schema the APEX Deployment Manager is installed in


UPDATE LAB0ODS.ADM_DEPLOYS
SET
    REVIEWED = 'N',
    DEPLOYED = 'N'
WHERE
    (REVIEWED = '' OR REVIEWED IS NULL)
AND (DEPLOYED = '' OR DEPLOYED IS NULL);

COMMIT;
