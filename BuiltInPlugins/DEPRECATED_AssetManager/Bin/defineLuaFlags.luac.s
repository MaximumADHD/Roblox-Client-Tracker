MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioAssetManagerAssetFetchNumber"]
        4 LOADN                            R3 100
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["EnableAssetManagerGlobalSearchBar"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K5 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K6 ["EnableAssetManagerSortButton"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K5 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K7 ["AssetManagerUseEventIngest"]
       25 LOADB                            R3 0
       26 NAMECALL                         R0 R0 K5 ["DefineFastFlag"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K8 ["AssetManagerVideoPreviewFix"]
       32 LOADB                            R3 0
       33 NAMECALL                         R0 R0 K5 ["DefineFastFlag"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K9 ["AssetManagerMigrateAliasesEndpoint2"]
       39 LOADB                            R3 0
       40 NAMECALL                         R0 R0 K5 ["DefineFastFlag"]
       42 CALL                             R0 3 0
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K10 ["AssetManagerCloseButtonColorFix"]
       46 LOADB                            R3 0
       47 NAMECALL                         R0 R0 K5 ["DefineFastFlag"]
       49 CALL                             R0 3 0
       50 LOADNIL                          R0
       51 RETURN                           R0 1
