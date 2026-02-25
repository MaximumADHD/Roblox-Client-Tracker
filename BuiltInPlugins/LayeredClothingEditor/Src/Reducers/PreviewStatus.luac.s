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

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"workspacePreviewSelectionEnabled"}]
        7 GETTABLEKS                       R5 R1 K2 ["workspacePreviewSelectionEnabled"]
        9 SETTABLEKS                       R5 R4 K2 ["workspacePreviewSelectionEnabled"]
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
       36 GETTABLEKS                       R7 R3 K12 ["Flags"]
       38 GETTABLEKS                       R6 R7 K13 ["GetFFlagAFTSelectHandleOnly"]
       40 GETTABLEKS                       R7 R1 K14 ["createReducer"]
       42 DUPTABLE                         R8 K22 [{"categoryFilter", "searchFilter", "docked", "selectedTab", "selectedAssets", "userAddedAssets", "workspacePreviewSelectionEnabled"}]
       43 LOADK                            R9 K23 [""]
       44 SETTABLEKS                       R9 R8 K15 ["categoryFilter"]
       46 LOADK                            R9 K23 [""]
       47 SETTABLEKS                       R9 R8 K16 ["searchFilter"]
       49 LOADB                            R9 1
       50 SETTABLEKS                       R9 R8 K17 ["docked"]
       52 GETTABLEKS                       R10 R5 K24 ["TABS_KEYS"]
       54 GETTABLEKS                       R9 R10 K25 ["None"]
       56 SETTABLEKS                       R9 R8 K18 ["selectedTab"]
       58 NEWTABLE                         R9 0 0
       60 SETTABLEKS                       R9 R8 K19 ["selectedAssets"]
       62 NEWTABLE                         R9 0 0
       64 SETTABLEKS                       R9 R8 K20 ["userAddedAssets"]
       66 LOADB                            R9 1
       67 SETTABLEKS                       R9 R8 K21 ["workspacePreviewSelectionEnabled"]
       69 DUPTABLE                         R9 K33 [{"SetCategoryFilter", "SetSearchFilter", "SetDocked", "SetUserAddedAssets", "SelectPreviewTab", "SetPreviewAssetsSelected", "SetWorkspacePreviewSelectionEnabled"}]
       70 DUPCLOSURE                       R10 K34 [PROTO_0]
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R10 R9 K26 ["SetCategoryFilter"]
       74 DUPCLOSURE                       R10 K35 [PROTO_1]
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R10 R9 K27 ["SetSearchFilter"]
       78 DUPCLOSURE                       R10 K36 [PROTO_2]
       79 CAPTURE                          VAL R2
       80 SETTABLEKS                       R10 R9 K28 ["SetDocked"]
       82 DUPCLOSURE                       R10 K37 [PROTO_3]
       83 CAPTURE                          VAL R2
       84 SETTABLEKS                       R10 R9 K29 ["SetUserAddedAssets"]
       86 DUPCLOSURE                       R10 K38 [PROTO_4]
       87 CAPTURE                          VAL R2
       88 SETTABLEKS                       R10 R9 K30 ["SelectPreviewTab"]
       90 DUPCLOSURE                       R10 K39 [PROTO_5]
       91 CAPTURE                          VAL R2
       92 SETTABLEKS                       R10 R9 K31 ["SetPreviewAssetsSelected"]
       94 MOVE                             R11 R6
       95 CALL                             R11 0 1
       96 JUMPIFNOT                        R11 ; [+3]
       97 DUPCLOSURE                       R10 K40 [PROTO_6]
       98 CAPTURE                          VAL R2
       99 JUMP                             ; [+1]
      100 LOADNIL                          R10
      101 SETTABLEKS                       R10 R9 K32 ["SetWorkspacePreviewSelectionEnabled"]
      103 CALL                             R7 2 -1
      104 RETURN                           R7 -1
