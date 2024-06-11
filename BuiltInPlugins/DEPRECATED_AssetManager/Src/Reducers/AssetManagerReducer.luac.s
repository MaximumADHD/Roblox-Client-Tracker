PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"assetsTable"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["assetsTable"]
  GETTABLEKS R7 R1 K2 ["assetsTable"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["assetsTable"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"bulkImporterRunning"}]
  GETTABLEKS R5 R1 K2 ["bulkImporterRunning"]
  SETTABLEKS R5 R4 K2 ["bulkImporterRunning"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"editingAssets"}]
  GETTABLEKS R5 R1 K2 ["editingAssets"]
  SETTABLEKS R5 R4 K2 ["editingAssets"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"isFetchingAssets"}]
  GETTABLEKS R5 R1 K2 ["isFetchingAssets"]
  SETTABLEKS R5 R4 K2 ["isFetchingAssets"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"recentAssets"}]
  GETTABLEKS R5 R1 K2 ["recentAssets"]
  SETTABLEKS R5 R4 K2 ["recentAssets"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"recentViewToggled"}]
  GETTABLEKS R5 R1 K2 ["recentViewToggled"]
  SETTABLEKS R5 R4 K2 ["recentViewToggled"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"searchTerm"}]
  GETTABLEKS R5 R1 K2 ["searchTerm"]
  SETTABLEKS R5 R4 K2 ["searchTerm"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"selectedAssets"}]
  GETTABLEKS R5 R1 K2 ["selectedAssets"]
  SETTABLEKS R5 R4 K2 ["selectedAssets"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"selectionIndex"}]
  GETTABLEKS R5 R1 K2 ["selectionIndex"]
  SETTABLEKS R5 R4 K2 ["selectionIndex"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"universeName"}]
  GETTABLEKS R5 R1 K2 ["universeName"]
  SETTABLEKS R5 R4 K2 ["universeName"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"view"}]
  GETTABLEKS R5 R1 K2 ["view"]
  SETTABLEKS R5 R4 K2 ["view"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"assetsTable"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["assetsTable"]
  DUPTABLE R7 K5 [{"assetPreviewData"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["Dictionary"]
  GETTABLEKS R8 R9 K1 ["join"]
  GETTABLEKS R10 R0 K2 ["assetsTable"]
  GETTABLEKS R9 R10 K4 ["assetPreviewData"]
  GETTABLEKS R10 R1 K4 ["assetPreviewData"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K4 ["assetPreviewData"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["assetsTable"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"assetsTable"}]
  DUPTABLE R5 K3 [{"assetPreviewData"}]
  NEWTABLE R6 1 0
  GETTABLEKS R7 R1 K4 ["assetId"]
  DUPTABLE R8 K6 [{"Creator"}]
  DUPTABLE R9 K8 [{"Name"}]
  GETTABLEKS R10 R1 K9 ["username"]
  SETTABLEKS R10 R9 K7 ["Name"]
  SETTABLEKS R9 R8 K5 ["Creator"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K2 ["assetPreviewData"]
  SETTABLEKS R5 R4 K0 ["assetsTable"]
  CALL R2 2 1
  RETURN R2 1

PROTO_13:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"assetsTable"}]
  DUPTABLE R5 K3 [{"assetPreviewData"}]
  NEWTABLE R6 1 0
  GETTABLEKS R7 R1 K4 ["assetId"]
  DUPTABLE R8 K6 [{"rootTreeViewInstance"}]
  GETTABLEKS R9 R1 K5 ["rootTreeViewInstance"]
  SETTABLEKS R9 R8 K5 ["rootTreeViewInstance"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K2 ["assetPreviewData"]
  SETTABLEKS R5 R4 K0 ["assetsTable"]
  CALL R2 2 1
  RETURN R2 1

PROTO_14:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"assetsTable"}]
  DUPTABLE R5 K3 [{"assetPreviewData"}]
  NEWTABLE R6 1 0
  GETTABLEKS R7 R1 K4 ["assetId"]
  DUPTABLE R8 K6 [{"favorited"}]
  GETTABLEKS R9 R1 K7 ["isAssetFavorited"]
  SETTABLEKS R9 R8 K5 ["favorited"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K2 ["assetPreviewData"]
  SETTABLEKS R5 R4 K0 ["assetsTable"]
  CALL R2 2 1
  RETURN R2 1

PROTO_15:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"assetsTable"}]
  DUPTABLE R5 K3 [{"assetPreviewData"}]
  NEWTABLE R6 1 0
  GETTABLEKS R7 R1 K4 ["assetId"]
  DUPTABLE R8 K6 [{"favoriteCount"}]
  GETTABLEKS R9 R1 K5 ["favoriteCount"]
  SETTABLEKS R9 R8 K5 ["favoriteCount"]
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R5 K2 ["assetPreviewData"]
  SETTABLEKS R5 R4 K0 ["assetsTable"]
  CALL R2 2 1
  RETURN R2 1

PROTO_16:
  GETTABLEKS R4 R0 K0 ["assetsTable"]
  GETTABLEKS R3 R4 K1 ["assetPreviewData"]
  GETTABLEKS R4 R1 K2 ["assetId"]
  GETTABLE R2 R3 R4
  LOADNIL R3
  JUMPIFNOT R2 [+28]
  NEWTABLE R4 1 0
  GETTABLEKS R5 R1 K2 ["assetId"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["Dictionary"]
  GETTABLEKS R6 R7 K4 ["join"]
  GETTABLEKS R9 R0 K0 ["assetsTable"]
  GETTABLEKS R8 R9 K1 ["assetPreviewData"]
  GETTABLEKS R9 R1 K2 ["assetId"]
  GETTABLE R7 R8 R9
  DUPTABLE R8 K6 [{"favoriteCount"}]
  GETTABLEKS R10 R2 K5 ["favoriteCount"]
  GETTABLEKS R11 R1 K7 ["incrementCount"]
  ADD R9 R10 R11
  SETTABLEKS R9 R8 K5 ["favoriteCount"]
  CALL R6 2 1
  SETTABLE R6 R4 R5
  MOVE R3 R4
  JUMP [+11]
  NEWTABLE R4 1 0
  GETTABLEKS R5 R1 K2 ["assetId"]
  DUPTABLE R6 K6 [{"favoriteCount"}]
  GETTABLEKS R7 R1 K7 ["incrementCount"]
  SETTABLEKS R7 R6 K5 ["favoriteCount"]
  SETTABLE R6 R4 R5
  MOVE R3 R4
  GETUPVAL R4 1
  MOVE R5 R0
  DUPTABLE R6 K8 [{"assetsTable"}]
  DUPTABLE R7 K9 [{"assetPreviewData"}]
  SETTABLEKS R3 R7 K1 ["assetPreviewData"]
  SETTABLEKS R7 R6 K0 ["assetsTable"]
  CALL R4 2 1
  RETURN R4 1

PROTO_17:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"assetsTable"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETTABLEKS R6 R0 K2 ["assetsTable"]
  DUPTABLE R7 K5 [{"assetsModerationData"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["Dictionary"]
  GETTABLEKS R8 R9 K1 ["join"]
  GETTABLEKS R10 R0 K2 ["assetsTable"]
  GETTABLEKS R9 R10 K4 ["assetsModerationData"]
  GETTABLEKS R10 R1 K4 ["assetsModerationData"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K4 ["assetsModerationData"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["assetsTable"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_18:
  DUPTABLE R2 K1 [{"assetsTable"}]
  DUPTABLE R3 K3 [{"assets"}]
  NEWTABLE R4 1 0
  GETTABLEKS R5 R1 K4 ["assetId"]
  DUPTABLE R6 K6 [{"name"}]
  GETTABLEKS R7 R1 K7 ["newAlias"]
  SETTABLEKS R7 R6 K5 ["name"]
  SETTABLE R6 R4 R5
  SETTABLEKS R4 R3 K2 ["assets"]
  SETTABLEKS R3 R2 K0 ["assetsTable"]
  GETTABLEKS R4 R0 K8 ["recentAssets"]
  GETTABLEKS R5 R1 K4 ["assetId"]
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+12]
  NEWTABLE R3 1 0
  GETTABLEKS R4 R1 K4 ["assetId"]
  DUPTABLE R5 K6 [{"name"}]
  GETTABLEKS R6 R1 K7 ["newAlias"]
  SETTABLEKS R6 R5 K5 ["name"]
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R2 K8 ["recentAssets"]
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["View"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K9 ["Util"]
  GETTABLEKS R6 R5 K12 ["deepJoin"]
  GETTABLEKS R7 R2 K13 ["createReducer"]
  DUPTABLE R8 K25 [{"assetsTable", "bulkImporterRunning", "editingAssets", "isFetchingAssets", "recentAssets", "recentViewToggled", "searchTerm", "selectedAssets", "selectionIndex", "universeName", "view"}]
  DUPTABLE R9 K30 [{"assets", "assetPreviewData", "assetsModerationData", "index"}]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K26 ["assets"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K27 ["assetPreviewData"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K28 ["assetsModerationData"]
  LOADN R10 0
  SETTABLEKS R10 R9 K29 ["index"]
  SETTABLEKS R9 R8 K14 ["assetsTable"]
  LOADB R9 0
  SETTABLEKS R9 R8 K15 ["bulkImporterRunning"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K16 ["editingAssets"]
  LOADB R9 0
  SETTABLEKS R9 R8 K17 ["isFetchingAssets"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K18 ["recentAssets"]
  LOADB R9 0
  SETTABLEKS R9 R8 K19 ["recentViewToggled"]
  LOADK R9 K31 [""]
  SETTABLEKS R9 R8 K20 ["searchTerm"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K21 ["selectedAssets"]
  LOADN R9 0
  SETTABLEKS R9 R8 K22 ["selectionIndex"]
  LOADK R9 K31 [""]
  SETTABLEKS R9 R8 K23 ["universeName"]
  GETTABLEKS R9 R3 K32 ["LIST"]
  SETTABLEKS R9 R8 K24 ["view"]
  DUPTABLE R9 K52 [{"SetAssets", "SetBulkImporterRunning", "SetEditingAssets", "SetIsFetchingAssets", "SetRecentAssets", "SetRecentViewToggled", "SetSearchTerm", "SetSelectedAssets", "SetSelectionIndex", "SetUniverseName", "SetView", "SetAssetPreviewData", "SetAssetOwnerName", "SetRootTreeViewInstance", "SetAssetFavorited", "SetAssetFavoriteCount", "IncrementAssetFavoriteCount", "SetAssetsModerationData", "ChangeAssetAlias"}]
  DUPCLOSURE R10 K53 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K33 ["SetAssets"]
  DUPCLOSURE R10 K54 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K34 ["SetBulkImporterRunning"]
  DUPCLOSURE R10 K55 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K35 ["SetEditingAssets"]
  DUPCLOSURE R10 K56 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K36 ["SetIsFetchingAssets"]
  DUPCLOSURE R10 K57 [PROTO_4]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K37 ["SetRecentAssets"]
  DUPCLOSURE R10 K58 [PROTO_5]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K38 ["SetRecentViewToggled"]
  DUPCLOSURE R10 K59 [PROTO_6]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K39 ["SetSearchTerm"]
  DUPCLOSURE R10 K60 [PROTO_7]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K40 ["SetSelectedAssets"]
  DUPCLOSURE R10 K61 [PROTO_8]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K41 ["SetSelectionIndex"]
  DUPCLOSURE R10 K62 [PROTO_9]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K42 ["SetUniverseName"]
  DUPCLOSURE R10 K63 [PROTO_10]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K43 ["SetView"]
  DUPCLOSURE R10 K64 [PROTO_11]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K44 ["SetAssetPreviewData"]
  DUPCLOSURE R10 K65 [PROTO_12]
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K45 ["SetAssetOwnerName"]
  DUPCLOSURE R10 K66 [PROTO_13]
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K46 ["SetRootTreeViewInstance"]
  DUPCLOSURE R10 K67 [PROTO_14]
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K47 ["SetAssetFavorited"]
  DUPCLOSURE R10 K68 [PROTO_15]
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K48 ["SetAssetFavoriteCount"]
  DUPCLOSURE R10 K69 [PROTO_16]
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K49 ["IncrementAssetFavoriteCount"]
  DUPCLOSURE R10 K70 [PROTO_17]
  CAPTURE VAL R1
  SETTABLEKS R10 R9 K50 ["SetAssetsModerationData"]
  DUPCLOSURE R10 K71 [PROTO_18]
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K51 ["ChangeAssetAlias"]
  CALL R7 2 -1
  RETURN R7 -1
