PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"categoryFilter"}]
        7 GETTABLEKS                       R5 R1 K2 ["categoryFilter"]
        9 SETTABLEKS                       R5 R4 K2 ["categoryFilter"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"searchFilter"}]
        7 GETTABLEKS                       R5 R1 K2 ["searchFilter"]
        9 SETTABLEKS                       R5 R4 K2 ["searchFilter"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"docked"}]
        7 GETTABLEKS                       R5 R1 K2 ["docked"]
        9 SETTABLEKS                       R5 R4 K2 ["docked"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"userAddedAssets"}]
        7 GETTABLEKS                       R5 R1 K2 ["userAddedAssets"]
        9 SETTABLEKS                       R5 R4 K2 ["userAddedAssets"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"selectedTab"}]
        7 GETTABLEKS                       R5 R1 K2 ["selectedTab"]
        9 SETTABLEKS                       R5 R4 K2 ["selectedTab"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"selectedAssets"}]
        7 GETTABLEKS                       R5 R1 K2 ["selectedAssets"]
        9 SETTABLEKS                       R5 R4 K2 ["selectedAssets"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["AvatarToolsShared"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["Util"]
       32 GETTABLEKS                       R4 R4 K10 ["AccessoryAndBodyToolShared"]
       34 GETTABLEKS                       R5 R4 K11 ["PreviewConstants"]
       36 GETTABLEKS                       R6 R1 K12 ["createReducer"]
       38 DUPTABLE                         R7 K22 [{["categoryFilter"] = "", ["searchFilter"] = "", ["docked"] = True, ["selectedTab"], ["selectedAssets"], ["userAddedAssets"], ["workspacePreviewSelectionEnabled"] = True}]
       39 GETTABLEKS                       R8 R5 K23 ["TABS_KEYS"]
       41 GETTABLEKS                       R8 R8 K24 ["None"]
       43 SETTABLEKS                       R8 R7 K18 ["selectedTab"]
       45 NEWTABLE                         R8 0 0
       47 SETTABLEKS                       R8 R7 K19 ["selectedAssets"]
       49 NEWTABLE                         R8 0 0
       51 SETTABLEKS                       R8 R7 K20 ["userAddedAssets"]
       53 DUPTABLE                         R8 K31 [{"SetCategoryFilter", "SetSearchFilter", "SetDocked", "SetUserAddedAssets", "SelectPreviewTab", "SetPreviewAssetsSelected"}]
       54 DUPCLOSURE                       R9 K32 [PROTO_0]
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R9 R8 K25 ["SetCategoryFilter"]
       58 DUPCLOSURE                       R9 K33 [PROTO_1]
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R9 R8 K26 ["SetSearchFilter"]
       62 DUPCLOSURE                       R9 K34 [PROTO_2]
       63 CAPTURE                          VAL R2
       64 SETTABLEKS                       R9 R8 K27 ["SetDocked"]
       66 DUPCLOSURE                       R9 K35 [PROTO_3]
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R9 R8 K28 ["SetUserAddedAssets"]
       70 DUPCLOSURE                       R9 K36 [PROTO_4]
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R9 R8 K29 ["SelectPreviewTab"]
       74 DUPCLOSURE                       R9 K37 [PROTO_5]
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R9 R8 K30 ["SetPreviewAssetsSelected"]
       78 CALL                             R6 2 -1
       79 RETURN                           R6 -1
