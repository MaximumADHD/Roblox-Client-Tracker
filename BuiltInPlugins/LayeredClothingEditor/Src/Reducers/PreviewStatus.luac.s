PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"categoryFilter"}]
        7 GETTABLEKS                       R5 R1 K2 ["categoryFilter"]
        9 SETTABLEKS                       R5 R4 K2 ["categoryFilter"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"searchFilter"}]
        7 GETTABLEKS                       R5 R1 K2 ["searchFilter"]
        9 SETTABLEKS                       R5 R4 K2 ["searchFilter"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"docked"}]
        7 GETTABLEKS                       R5 R1 K2 ["docked"]
        9 SETTABLEKS                       R5 R4 K2 ["docked"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"userAddedAssets"}]
        7 GETTABLEKS                       R5 R1 K2 ["userAddedAssets"]
        9 SETTABLEKS                       R5 R4 K2 ["userAddedAssets"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"selectedTab"}]
        7 GETTABLEKS                       R5 R1 K2 ["selectedTab"]
        9 SETTABLEKS                       R5 R4 K2 ["selectedTab"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"selectedAssets"}]
        7 GETTABLEKS                       R5 R1 K2 ["selectedAssets"]
        9 SETTABLEKS                       R5 R4 K2 ["selectedAssets"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["AvatarToolsShared"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R3 K9 ["Util"]
       32 GETTABLEKS                       R4 R5 K10 ["AccessoryAndBodyToolShared"]
       34 GETTABLEKS                       R5 R4 K11 ["PreviewConstants"]
       36 GETTABLEKS                       R6 R1 K12 ["createReducer"]
       38 DUPTABLE                         R7 K20 [{"categoryFilter", "searchFilter", "docked", "selectedTab", "selectedAssets", "userAddedAssets", "workspacePreviewSelectionEnabled"}]
       39 LOADK                            R8 K21 [""]
       40 SETTABLEKS                       R8 R7 K13 ["categoryFilter"]
       42 LOADK                            R8 K21 [""]
       43 SETTABLEKS                       R8 R7 K14 ["searchFilter"]
       45 LOADB                            R8 1
       46 SETTABLEKS                       R8 R7 K15 ["docked"]
       48 GETTABLEKS                       R9 R5 K22 ["TABS_KEYS"]
       50 GETTABLEKS                       R8 R9 K23 ["None"]
       52 SETTABLEKS                       R8 R7 K16 ["selectedTab"]
       54 NEWTABLE                         R8 0 0
       56 SETTABLEKS                       R8 R7 K17 ["selectedAssets"]
       58 NEWTABLE                         R8 0 0
       60 SETTABLEKS                       R8 R7 K18 ["userAddedAssets"]
       62 LOADB                            R8 1
       63 SETTABLEKS                       R8 R7 K19 ["workspacePreviewSelectionEnabled"]
       65 DUPTABLE                         R8 K30 [{"SetCategoryFilter", "SetSearchFilter", "SetDocked", "SetUserAddedAssets", "SelectPreviewTab", "SetPreviewAssetsSelected"}]
       66 DUPCLOSURE                       R9 K31 [PROTO_0]
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R9 R8 K24 ["SetCategoryFilter"]
       70 DUPCLOSURE                       R9 K32 [PROTO_1]
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R9 R8 K25 ["SetSearchFilter"]
       74 DUPCLOSURE                       R9 K33 [PROTO_2]
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R9 R8 K26 ["SetDocked"]
       78 DUPCLOSURE                       R9 K34 [PROTO_3]
       79 CAPTURE                          VAL R2
       80 SETTABLEKS                       R9 R8 K27 ["SetUserAddedAssets"]
       82 DUPCLOSURE                       R9 K35 [PROTO_4]
       83 CAPTURE                          VAL R2
       84 SETTABLEKS                       R9 R8 K28 ["SelectPreviewTab"]
       86 DUPCLOSURE                       R9 K36 [PROTO_5]
       87 CAPTURE                          VAL R2
       88 SETTABLEKS                       R9 R8 K29 ["SetPreviewAssetsSelected"]
       90 CALL                             R6 2 -1
       91 RETURN                           R6 -1
