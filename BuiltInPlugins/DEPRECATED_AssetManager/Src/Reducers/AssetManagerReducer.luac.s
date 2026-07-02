PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetsTable"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["assetsTable"]
       14 GETTABLEKS                       R7 R1 K2 ["assetsTable"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["assetsTable"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"bulkImporterRunning"}]
        7 GETTABLEKS                       R5 R1 K2 ["bulkImporterRunning"]
        9 SETTABLEKS                       R5 R4 K2 ["bulkImporterRunning"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"editingAssets"}]
        7 GETTABLEKS                       R5 R1 K2 ["editingAssets"]
        9 SETTABLEKS                       R5 R4 K2 ["editingAssets"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"isFetchingAssets"}]
        7 GETTABLEKS                       R5 R1 K2 ["isFetchingAssets"]
        9 SETTABLEKS                       R5 R4 K2 ["isFetchingAssets"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"recentAssets"}]
        7 GETTABLEKS                       R5 R1 K2 ["recentAssets"]
        9 SETTABLEKS                       R5 R4 K2 ["recentAssets"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"recentViewToggled"}]
        7 GETTABLEKS                       R5 R1 K2 ["recentViewToggled"]
        9 SETTABLEKS                       R5 R4 K2 ["recentViewToggled"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"searchTerm"}]
        7 GETTABLEKS                       R5 R1 K2 ["searchTerm"]
        9 SETTABLEKS                       R5 R4 K2 ["searchTerm"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"selectedAssets"}]
        7 GETTABLEKS                       R5 R1 K2 ["selectedAssets"]
        9 SETTABLEKS                       R5 R4 K2 ["selectedAssets"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"selectionIndex"}]
        7 GETTABLEKS                       R5 R1 K2 ["selectionIndex"]
        9 SETTABLEKS                       R5 R4 K2 ["selectionIndex"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"universeName"}]
        7 GETTABLEKS                       R5 R1 K2 ["universeName"]
        9 SETTABLEKS                       R5 R4 K2 ["universeName"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"view"}]
        7 GETTABLEKS                       R5 R1 K2 ["view"]
        9 SETTABLEKS                       R5 R4 K2 ["view"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetsTable"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["assetsTable"]
       14 DUPTABLE                         R7 K5 [{"assetPreviewData"}]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K0 ["Dictionary"]
       18 GETTABLEKS                       R8 R8 K1 ["join"]
       20 GETTABLEKS                       R9 R0 K2 ["assetsTable"]
       22 GETTABLEKS                       R9 R9 K4 ["assetPreviewData"]
       24 GETTABLEKS                       R10 R1 K4 ["assetPreviewData"]
       26 CALL                             R8 2 1
       27 SETTABLEKS                       R8 R7 K4 ["assetPreviewData"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K2 ["assetsTable"]
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"assetsTable"}]
        3 DUPTABLE                         R5 K3 [{"assetPreviewData"}]
        4 NEWTABLE                         R6 1 0
        6 GETTABLEKS                       R7 R1 K4 ["assetId"]
        8 DUPTABLE                         R8 K6 [{"Creator"}]
        9 DUPTABLE                         R9 K8 [{"Name"}]
       10 GETTABLEKS                       R10 R1 K9 ["username"]
       12 SETTABLEKS                       R10 R9 K7 ["Name"]
       14 SETTABLEKS                       R9 R8 K5 ["Creator"]
       16 SETTABLE                         R8 R6 R7
       17 SETTABLEKS                       R6 R5 K2 ["assetPreviewData"]
       19 SETTABLEKS                       R5 R4 K0 ["assetsTable"]
       21 CALL                             R2 2 1
       22 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"assetsTable"}]
        3 DUPTABLE                         R5 K3 [{"assetPreviewData"}]
        4 NEWTABLE                         R6 1 0
        6 GETTABLEKS                       R7 R1 K4 ["assetId"]
        8 DUPTABLE                         R8 K6 [{"rootTreeViewInstance"}]
        9 GETTABLEKS                       R9 R1 K5 ["rootTreeViewInstance"]
       11 SETTABLEKS                       R9 R8 K5 ["rootTreeViewInstance"]
       13 SETTABLE                         R8 R6 R7
       14 SETTABLEKS                       R6 R5 K2 ["assetPreviewData"]
       16 SETTABLEKS                       R5 R4 K0 ["assetsTable"]
       18 CALL                             R2 2 1
       19 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"assetsTable"}]
        3 DUPTABLE                         R5 K3 [{"assetPreviewData"}]
        4 NEWTABLE                         R6 1 0
        6 GETTABLEKS                       R7 R1 K4 ["assetId"]
        8 DUPTABLE                         R8 K6 [{"favorited"}]
        9 GETTABLEKS                       R9 R1 K7 ["isAssetFavorited"]
       11 SETTABLEKS                       R9 R8 K5 ["favorited"]
       13 SETTABLE                         R8 R6 R7
       14 SETTABLEKS                       R6 R5 K2 ["assetPreviewData"]
       16 SETTABLEKS                       R5 R4 K0 ["assetsTable"]
       18 CALL                             R2 2 1
       19 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"assetsTable"}]
        3 DUPTABLE                         R5 K3 [{"assetPreviewData"}]
        4 NEWTABLE                         R6 1 0
        6 GETTABLEKS                       R7 R1 K4 ["assetId"]
        8 DUPTABLE                         R8 K6 [{"favoriteCount"}]
        9 GETTABLEKS                       R9 R1 K5 ["favoriteCount"]
       11 SETTABLEKS                       R9 R8 K5 ["favoriteCount"]
       13 SETTABLE                         R8 R6 R7
       14 SETTABLEKS                       R6 R5 K2 ["assetPreviewData"]
       16 SETTABLEKS                       R5 R4 K0 ["assetsTable"]
       18 CALL                             R2 2 1
       19 RETURN                           R2 1

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["assetsTable"]
        2 GETTABLEKS                       R3 R3 K1 ["assetPreviewData"]
        4 GETTABLEKS                       R4 R1 K2 ["assetId"]
        6 GETTABLE                         R2 R3 R4
        7 LOADNIL                          R3
        8 JUMPIFNOT                        R2 ; [+28]
        9 NEWTABLE                         R4 1 0
       11 GETTABLEKS                       R5 R1 K2 ["assetId"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K3 ["Dictionary"]
       16 GETTABLEKS                       R6 R6 K4 ["join"]
       18 GETTABLEKS                       R8 R0 K0 ["assetsTable"]
       20 GETTABLEKS                       R8 R8 K1 ["assetPreviewData"]
       22 GETTABLEKS                       R9 R1 K2 ["assetId"]
       24 GETTABLE                         R7 R8 R9
       25 DUPTABLE                         R8 K6 [{"favoriteCount"}]
       26 GETTABLEKS                       R10 R2 K5 ["favoriteCount"]
       28 GETTABLEKS                       R11 R1 K7 ["incrementCount"]
       30 ADD                              R9 R10 R11
       31 SETTABLEKS                       R9 R8 K5 ["favoriteCount"]
       33 CALL                             R6 2 1
       34 SETTABLE                         R6 R4 R5
       35 MOVE                             R3 R4
       36 JUMP                             ; [+11]
       37 NEWTABLE                         R4 1 0
       39 GETTABLEKS                       R5 R1 K2 ["assetId"]
       41 DUPTABLE                         R6 K6 [{"favoriteCount"}]
       42 GETTABLEKS                       R7 R1 K7 ["incrementCount"]
       44 SETTABLEKS                       R7 R6 K5 ["favoriteCount"]
       46 SETTABLE                         R6 R4 R5
       47 MOVE                             R3 R4
       48 GETUPVAL                         R4 1
       49 MOVE                             R5 R0
       50 DUPTABLE                         R6 K8 [{"assetsTable"}]
       51 DUPTABLE                         R7 K9 [{"assetPreviewData"}]
       52 SETTABLEKS                       R3 R7 K1 ["assetPreviewData"]
       54 SETTABLEKS                       R7 R6 K0 ["assetsTable"]
       56 CALL                             R4 2 1
       57 RETURN                           R4 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"assetsTable"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["assetsTable"]
       14 DUPTABLE                         R7 K5 [{"assetsModerationData"}]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K0 ["Dictionary"]
       18 GETTABLEKS                       R8 R8 K1 ["join"]
       20 GETTABLEKS                       R9 R0 K2 ["assetsTable"]
       22 GETTABLEKS                       R9 R9 K4 ["assetsModerationData"]
       24 GETTABLEKS                       R10 R1 K4 ["assetsModerationData"]
       26 CALL                             R8 2 1
       27 SETTABLEKS                       R8 R7 K4 ["assetsModerationData"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K2 ["assetsTable"]
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

PROTO_18:
        0 DUPTABLE                         R2 K1 [{"assetsTable"}]
        1 DUPTABLE                         R3 K3 [{"assets"}]
        2 NEWTABLE                         R4 1 0
        4 GETTABLEKS                       R5 R1 K4 ["assetId"]
        6 DUPTABLE                         R6 K6 [{"name"}]
        7 GETTABLEKS                       R7 R1 K7 ["newAlias"]
        9 SETTABLEKS                       R7 R6 K5 ["name"]
       11 SETTABLE                         R6 R4 R5
       12 SETTABLEKS                       R4 R3 K2 ["assets"]
       14 SETTABLEKS                       R3 R2 K0 ["assetsTable"]
       16 GETTABLEKS                       R4 R0 K8 ["recentAssets"]
       18 GETTABLEKS                       R5 R1 K4 ["assetId"]
       20 GETTABLE                         R3 R4 R5
       21 JUMPIFNOT                        R3 ; [+12]
       22 NEWTABLE                         R3 1 0
       24 GETTABLEKS                       R4 R1 K4 ["assetId"]
       26 DUPTABLE                         R5 K6 [{"name"}]
       27 GETTABLEKS                       R6 R1 K7 ["newAlias"]
       29 SETTABLEKS                       R6 R5 K5 ["name"]
       31 SETTABLE                         R5 R3 R4
       32 SETTABLEKS                       R3 R2 K8 ["recentAssets"]
       34 GETUPVAL                         R3 0
       35 MOVE                             R4 R0
       36 MOVE                             R5 R2
       37 CALL                             R3 2 -1
       38 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["View"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K5 ["Packages"]
       36 GETTABLEKS                       R5 R5 K11 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K9 ["Util"]
       41 GETTABLEKS                       R6 R5 K12 ["deepJoin"]
       43 GETTABLEKS                       R7 R2 K13 ["createReducer"]
       45 DUPTABLE                         R8 K28 [{["assetsTable"], ["bulkImporterRunning"] = False, ["editingAssets"], ["isFetchingAssets"] = False, ["recentAssets"], ["recentViewToggled"] = False, ["searchTerm"] = "", ["selectedAssets"], ["selectionIndex"] = 0, ["universeName"] = "", ["view"]}]
       46 DUPTABLE                         R9 K33 [{["assets"], ["assetPreviewData"], ["assetsModerationData"], ["index"] = 0}]
       47 NEWTABLE                         R10 0 0
       49 SETTABLEKS                       R10 R9 K29 ["assets"]
       51 NEWTABLE                         R10 0 0
       53 SETTABLEKS                       R10 R9 K30 ["assetPreviewData"]
       55 NEWTABLE                         R10 0 0
       57 SETTABLEKS                       R10 R9 K31 ["assetsModerationData"]
       59 SETTABLEKS                       R9 R8 K14 ["assetsTable"]
       61 NEWTABLE                         R9 0 0
       63 SETTABLEKS                       R9 R8 K17 ["editingAssets"]
       65 NEWTABLE                         R9 0 0
       67 SETTABLEKS                       R9 R8 K19 ["recentAssets"]
       69 NEWTABLE                         R9 0 0
       71 SETTABLEKS                       R9 R8 K23 ["selectedAssets"]
       73 GETTABLEKS                       R9 R3 K34 ["LIST"]
       75 SETTABLEKS                       R9 R8 K27 ["view"]
       77 DUPTABLE                         R9 K54 [{"SetAssets", "SetBulkImporterRunning", "SetEditingAssets", "SetIsFetchingAssets", "SetRecentAssets", "SetRecentViewToggled", "SetSearchTerm", "SetSelectedAssets", "SetSelectionIndex", "SetUniverseName", "SetView", "SetAssetPreviewData", "SetAssetOwnerName", "SetRootTreeViewInstance", "SetAssetFavorited", "SetAssetFavoriteCount", "IncrementAssetFavoriteCount", "SetAssetsModerationData", "ChangeAssetAlias"}]
       78 DUPCLOSURE                       R10 K55 [PROTO_0]
       79 CAPTURE                          VAL R1
       80 SETTABLEKS                       R10 R9 K35 ["SetAssets"]
       82 DUPCLOSURE                       R10 K56 [PROTO_1]
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R10 R9 K36 ["SetBulkImporterRunning"]
       86 DUPCLOSURE                       R10 K57 [PROTO_2]
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R10 R9 K37 ["SetEditingAssets"]
       90 DUPCLOSURE                       R10 K58 [PROTO_3]
       91 CAPTURE                          VAL R1
       92 SETTABLEKS                       R10 R9 K38 ["SetIsFetchingAssets"]
       94 DUPCLOSURE                       R10 K59 [PROTO_4]
       95 CAPTURE                          VAL R1
       96 SETTABLEKS                       R10 R9 K39 ["SetRecentAssets"]
       98 DUPCLOSURE                       R10 K60 [PROTO_5]
       99 CAPTURE                          VAL R1
      100 SETTABLEKS                       R10 R9 K40 ["SetRecentViewToggled"]
      102 DUPCLOSURE                       R10 K61 [PROTO_6]
      103 CAPTURE                          VAL R1
      104 SETTABLEKS                       R10 R9 K41 ["SetSearchTerm"]
      106 DUPCLOSURE                       R10 K62 [PROTO_7]
      107 CAPTURE                          VAL R1
      108 SETTABLEKS                       R10 R9 K42 ["SetSelectedAssets"]
      110 DUPCLOSURE                       R10 K63 [PROTO_8]
      111 CAPTURE                          VAL R1
      112 SETTABLEKS                       R10 R9 K43 ["SetSelectionIndex"]
      114 DUPCLOSURE                       R10 K64 [PROTO_9]
      115 CAPTURE                          VAL R1
      116 SETTABLEKS                       R10 R9 K44 ["SetUniverseName"]
      118 DUPCLOSURE                       R10 K65 [PROTO_10]
      119 CAPTURE                          VAL R1
      120 SETTABLEKS                       R10 R9 K45 ["SetView"]
      122 DUPCLOSURE                       R10 K66 [PROTO_11]
      123 CAPTURE                          VAL R1
      124 SETTABLEKS                       R10 R9 K46 ["SetAssetPreviewData"]
      126 DUPCLOSURE                       R10 K67 [PROTO_12]
      127 CAPTURE                          VAL R6
      128 SETTABLEKS                       R10 R9 K47 ["SetAssetOwnerName"]
      130 DUPCLOSURE                       R10 K68 [PROTO_13]
      131 CAPTURE                          VAL R6
      132 SETTABLEKS                       R10 R9 K48 ["SetRootTreeViewInstance"]
      134 DUPCLOSURE                       R10 K69 [PROTO_14]
      135 CAPTURE                          VAL R6
      136 SETTABLEKS                       R10 R9 K49 ["SetAssetFavorited"]
      138 DUPCLOSURE                       R10 K70 [PROTO_15]
      139 CAPTURE                          VAL R6
      140 SETTABLEKS                       R10 R9 K50 ["SetAssetFavoriteCount"]
      142 DUPCLOSURE                       R10 K71 [PROTO_16]
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R6
      145 SETTABLEKS                       R10 R9 K51 ["IncrementAssetFavoriteCount"]
      147 DUPCLOSURE                       R10 K72 [PROTO_17]
      148 CAPTURE                          VAL R1
      149 SETTABLEKS                       R10 R9 K52 ["SetAssetsModerationData"]
      151 DUPCLOSURE                       R10 K73 [PROTO_18]
      152 CAPTURE                          VAL R6
      153 SETTABLEKS                       R10 R9 K53 ["ChangeAssetAlias"]
      155 CALL                             R7 2 -1
      156 RETURN                           R7 -1
