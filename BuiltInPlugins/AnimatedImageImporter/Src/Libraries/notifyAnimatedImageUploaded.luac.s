PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AssetsUploaded"]
        2 GETUPVAL                         R4 1
        3 DUPTABLE                         R6 K4 [{["Source"] = "Import", ["AssetIds"]}]
        4 NEWTABLE                         R7 0 1
        6 MOVE                             R8 R0
        7 SETLIST                          R7 R8 1 [1]
        9 SETTABLEKS                       R7 R6 K3 ["AssetIds"]
       11 NAMECALL                         R4 R4 K5 ["JSONEncode"]
       13 CALL                             R4 2 -1
       14 NAMECALL                         R1 R1 K6 ["Fire"]
       16 CALL                             R1 -1 0
       17 DUPTABLE                         R1 K10 [{["Source"] = "AnimatedImageImporter", ["ScopeType"], ["Selection"]}]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K11 ["ENUMS"]
       21 GETTABLEKS                       R2 R2 K12 ["SCOPE_TYPE"]
       23 GETTABLEKS                       R2 R2 K13 ["RecentUploads"]
       25 SETTABLEKS                       R2 R1 K8 ["ScopeType"]
       27 NEWTABLE                         R2 0 1
       29 DUPTABLE                         R3 K16 [{"Id", "Type"}]
       30 SETTABLEKS                       R0 R3 K14 ["Id"]
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R4 R4 K11 ["ENUMS"]
       35 GETTABLEKS                       R4 R4 K17 ["CREATOR_INVENTORY_ITEM_TYPE"]
       37 GETTABLEKS                       R4 R4 K18 ["AnimatedImage"]
       39 SETTABLEKS                       R4 R3 K15 ["Type"]
       41 SETLIST                          R2 R3 1 [1]
       43 SETTABLEKS                       R2 R1 K9 ["Selection"]
       45 GETUPVAL                         R2 0
       46 GETUPVAL                         R4 2
       47 GETTABLEKS                       R4 R4 K19 ["MEMSTORAGE_EVENTS"]
       49 GETTABLEKS                       R4 R4 K20 ["OPEN_FROM_EXTERNAL_TRIGGER"]
       51 GETUPVAL                         R5 1
       52 MOVE                             R7 R1
       53 NAMECALL                         R5 R5 K5 ["JSONEncode"]
       55 CALL                             R5 2 -1
       56 NAMECALL                         R2 R2 K6 ["Fire"]
       58 CALL                             R2 -1 0
       59 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MemStorageService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AnimatedImageImporter"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["SharedPluginConstants"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R3 K13 ["ASSET_MANAGER"]
       28 DUPCLOSURE                       R5 K14 [PROTO_0]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R4
       32 RETURN                           R5 1
