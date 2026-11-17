MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Networking"]
        9 DUPTABLE                         R2 K22 [{"checkAssetsPermissionsAsync", "createFolderAsync", "createPlaceAsync", "deleteFolderAsync", "fetchAssetInfoAsync", "fetchAssetPermissionsAsync", "fetchFoldersAsync", "fetchGroupsAsync", "fetchPluginInfoAsync", "fetchToolboxTechnicalDetailsAsync", "fetchUniverseInfoAsync", "grantAssetsPermissionsAsync", "getItemParentsAsync", "moveItemsAsync", "removePlaceAsync", "renamePlaceAsync", "updateFolderMetadataAsync"}]
       10 GETIMPORT                        R3 K24 [require]
       12 GETTABLEKS                       R4 R1 K5 ["checkAssetsPermissionsAsync"]
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K5 ["checkAssetsPermissionsAsync"]
       17 GETIMPORT                        R3 K24 [require]
       19 GETTABLEKS                       R4 R1 K6 ["createFolderAsync"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K6 ["createFolderAsync"]
       24 GETIMPORT                        R3 K24 [require]
       26 GETTABLEKS                       R4 R1 K7 ["createPlaceAsync"]
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R3 R2 K7 ["createPlaceAsync"]
       31 GETIMPORT                        R3 K24 [require]
       33 GETTABLEKS                       R4 R1 K8 ["deleteFolderAsync"]
       35 CALL                             R3 1 1
       36 SETTABLEKS                       R3 R2 K8 ["deleteFolderAsync"]
       38 GETIMPORT                        R3 K24 [require]
       40 GETTABLEKS                       R4 R1 K9 ["fetchAssetInfoAsync"]
       42 CALL                             R3 1 1
       43 SETTABLEKS                       R3 R2 K9 ["fetchAssetInfoAsync"]
       45 GETIMPORT                        R3 K24 [require]
       47 GETTABLEKS                       R4 R1 K10 ["fetchAssetPermissionsAsync"]
       49 CALL                             R3 1 1
       50 SETTABLEKS                       R3 R2 K10 ["fetchAssetPermissionsAsync"]
       52 GETIMPORT                        R3 K24 [require]
       54 GETTABLEKS                       R4 R1 K11 ["fetchFoldersAsync"]
       56 CALL                             R3 1 1
       57 SETTABLEKS                       R3 R2 K11 ["fetchFoldersAsync"]
       59 GETIMPORT                        R3 K24 [require]
       61 GETTABLEKS                       R4 R1 K12 ["fetchGroupsAsync"]
       63 CALL                             R3 1 1
       64 SETTABLEKS                       R3 R2 K12 ["fetchGroupsAsync"]
       66 GETIMPORT                        R3 K24 [require]
       68 GETTABLEKS                       R4 R1 K13 ["fetchPluginInfoAsync"]
       70 CALL                             R3 1 1
       71 SETTABLEKS                       R3 R2 K13 ["fetchPluginInfoAsync"]
       73 GETIMPORT                        R3 K24 [require]
       75 GETTABLEKS                       R4 R1 K14 ["fetchToolboxTechnicalDetailsAsync"]
       77 CALL                             R3 1 1
       78 SETTABLEKS                       R3 R2 K14 ["fetchToolboxTechnicalDetailsAsync"]
       80 GETIMPORT                        R3 K24 [require]
       82 GETTABLEKS                       R4 R1 K15 ["fetchUniverseInfoAsync"]
       84 CALL                             R3 1 1
       85 SETTABLEKS                       R3 R2 K15 ["fetchUniverseInfoAsync"]
       87 GETIMPORT                        R3 K24 [require]
       89 GETTABLEKS                       R4 R1 K16 ["grantAssetsPermissionsAsync"]
       91 CALL                             R3 1 1
       92 SETTABLEKS                       R3 R2 K16 ["grantAssetsPermissionsAsync"]
       94 GETIMPORT                        R3 K24 [require]
       96 GETTABLEKS                       R4 R1 K17 ["getItemParentsAsync"]
       98 CALL                             R3 1 1
       99 SETTABLEKS                       R3 R2 K17 ["getItemParentsAsync"]
      101 GETIMPORT                        R3 K24 [require]
      103 GETTABLEKS                       R4 R1 K18 ["moveItemsAsync"]
      105 CALL                             R3 1 1
      106 SETTABLEKS                       R3 R2 K18 ["moveItemsAsync"]
      108 GETIMPORT                        R3 K24 [require]
      110 GETTABLEKS                       R4 R1 K19 ["removePlaceAsync"]
      112 CALL                             R3 1 1
      113 SETTABLEKS                       R3 R2 K19 ["removePlaceAsync"]
      115 GETIMPORT                        R3 K24 [require]
      117 GETTABLEKS                       R4 R1 K20 ["renamePlaceAsync"]
      119 CALL                             R3 1 1
      120 SETTABLEKS                       R3 R2 K20 ["renamePlaceAsync"]
      122 GETIMPORT                        R3 K24 [require]
      124 GETTABLEKS                       R4 R1 K21 ["updateFolderMetadataAsync"]
      126 CALL                             R3 1 1
      127 SETTABLEKS                       R3 R2 K21 ["updateFolderMetadataAsync"]
      129 RETURN                           R2 1
