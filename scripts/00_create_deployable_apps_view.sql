ALTER SESSION SET CURRENT_SCHEMA = LAB0ODS;
CREATE OR REPLACE VIEW ADM_DEPLOYABLE_APPS AS
SELECT
    adm_deploys.id       AS deploy_id,
    adm_apps.apex_app_id AS apex_app_id,
    adm_apps.apex_wks_id AS apex_workspace_id,
    adm_envs.tns_name    AS apex_server_tns_name,
    adm_envs.env         AS apex_environment,
    adm_apps.label       AS apex_app_name
FROM
         adm_apps
    INNER JOIN adm_deploys ON adm_deploys.adm_app_id = adm_apps.id
    INNER JOIN adm_envs ON adm_deploys.adm_env_id = adm_envs.id
WHERE 
    adm_deploys.deployed = 'N'
AND adm_deploys.reviewed = 'Y';
commit;