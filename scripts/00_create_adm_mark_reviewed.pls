CREATE OR REPLACE PROCEDURE ADM_MARK_REVIEWED 
(
  DEPLOY_ID IN NUMBER 
) AS 
BEGIN
  UPDATE ADM_DEPLOYS SET REVIEWED = 'Y' WHERE ID = DEPLOY_ID;
END ADM_MARK_REVIEWED;
