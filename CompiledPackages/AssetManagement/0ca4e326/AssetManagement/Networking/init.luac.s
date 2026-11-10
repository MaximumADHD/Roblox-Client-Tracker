MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Networking"]
        9 DUPTABLE                         R2 K15 [{"checkAssetsPermissionsAsync", "createFolderAsync", "deleteFolderAsync", "fetchAssetPermissionsAsync", "fetchFoldersAsync", "fetchGroupsAsync", "fetchToolboxTechnicalDetailsAsync", "fetchUniverseInfoAsync", "getItemParentsAsync", "updateFolderMetadataAsync"}]
       10 GETIMPORT                        R3 K17 [require]
       12 GETTABLEKS                       R4 R1 K5 ["checkAssetsPermissionsAsync"]
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K5 ["checkAssetsPermissionsAsync"]
       17 GETIMPORT                        R3 K17 [require]
       19 GETTABLEKS                       R4 R1 K6 ["createFolderAsync"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K6 ["createFolderAsync"]
       24 GETIMPORT                        R3 K17 [require]
       26 GETTABLEKS                       R4 R1 K7 ["deleteFolderAsync"]
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R3 R2 K7 ["deleteFolderAsync"]
       31 GETIMPORT                        R3 K17 [require]
       33 GETTABLEKS                       R4 R1 K8 ["fetchAssetPermissionsAsync"]
       35 CALL                             R3 1 1
       36 SETTABLEKS                       R3 R2 K8 ["fetchAssetPermissionsAsync"]
       38 GETIMPORT                        R3 K17 [require]
       40 GETTABLEKS                       R4 R1 K9 ["fetchFoldersAsync"]
       42 CALL                             R3 1 1
       43 SETTABLEKS                       R3 R2 K9 ["fetchFoldersAsync"]
       45 GETIMPORT                        R3 K17 [require]
       47 GETTABLEKS                       R4 R1 K10 ["fetchGroupsAsync"]
       49 CALL                             R3 1 1
       50 SETTABLEKS                       R3 R2 K10 ["fetchGroupsAsync"]
       52 GETIMPORT                        R3 K17 [require]
       54 GETTABLEKS                       R4 R1 K11 ["fetchToolboxTechnicalDetailsAsync"]
       56 CALL                             R3 1 1
       57 SETTABLEKS                       R3 R2 K11 ["fetchToolboxTechnicalDetailsAsync"]
       59 GETIMPORT                        R3 K17 [require]
       61 GETTABLEKS                       R4 R1 K12 ["fetchUniverseInfoAsync"]
       63 CALL                             R3 1 1
       64 SETTABLEKS                       R3 R2 K12 ["fetchUniverseInfoAsync"]
       66 GETIMPORT                        R3 K17 [require]
       68 GETTABLEKS                       R4 R1 K13 ["getItemParentsAsync"]
       70 CALL                             R3 1 1
       71 SETTABLEKS                       R3 R2 K13 ["getItemParentsAsync"]
       73 GETIMPORT                        R3 K17 [require]
       75 GETTABLEKS                       R4 R1 K14 ["updateFolderMetadataAsync"]
       77 CALL                             R3 1 1
       78 SETTABLEKS                       R3 R2 K14 ["updateFolderMetadataAsync"]
       80 RETURN                           R2 1
