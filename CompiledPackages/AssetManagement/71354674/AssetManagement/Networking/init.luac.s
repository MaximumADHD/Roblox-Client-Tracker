MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Networking"]
        9 DUPTABLE                         R2 K11 [{"checkAssetsPermissionsAsync", "fetchAssetPermissionsAsync", "fetchFoldersAsync", "fetchGroupsAsync", "fetchToolboxTechnicalDetailsAsync", "fetchUniverseInfoAsync"}]
       10 GETIMPORT                        R3 K13 [require]
       12 GETTABLEKS                       R4 R1 K5 ["checkAssetsPermissionsAsync"]
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K5 ["checkAssetsPermissionsAsync"]
       17 GETIMPORT                        R3 K13 [require]
       19 GETTABLEKS                       R4 R1 K6 ["fetchAssetPermissionsAsync"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K6 ["fetchAssetPermissionsAsync"]
       24 GETIMPORT                        R3 K13 [require]
       26 GETTABLEKS                       R4 R1 K7 ["fetchFoldersAsync"]
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R3 R2 K7 ["fetchFoldersAsync"]
       31 GETIMPORT                        R3 K13 [require]
       33 GETTABLEKS                       R4 R1 K8 ["fetchGroupsAsync"]
       35 CALL                             R3 1 1
       36 SETTABLEKS                       R3 R2 K8 ["fetchGroupsAsync"]
       38 GETIMPORT                        R3 K13 [require]
       40 GETTABLEKS                       R4 R1 K9 ["fetchToolboxTechnicalDetailsAsync"]
       42 CALL                             R3 1 1
       43 SETTABLEKS                       R3 R2 K9 ["fetchToolboxTechnicalDetailsAsync"]
       45 GETIMPORT                        R3 K13 [require]
       47 GETTABLEKS                       R4 R1 K10 ["fetchUniverseInfoAsync"]
       49 CALL                             R3 1 1
       50 SETTABLEKS                       R3 R2 K10 ["fetchUniverseInfoAsync"]
       52 RETURN                           R2 1
