PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"categoryFilter"}]
  GETTABLEKS R5 R1 K2 ["categoryFilter"]
  SETTABLEKS R5 R4 K2 ["categoryFilter"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"searchFilter"}]
  GETTABLEKS R5 R1 K2 ["searchFilter"]
  SETTABLEKS R5 R4 K2 ["searchFilter"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"docked"}]
  GETTABLEKS R5 R1 K2 ["docked"]
  SETTABLEKS R5 R4 K2 ["docked"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"userAddedAssets"}]
  GETTABLEKS R5 R1 K2 ["userAddedAssets"]
  SETTABLEKS R5 R4 K2 ["userAddedAssets"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"selectedTab"}]
  GETTABLEKS R5 R1 K2 ["selectedTab"]
  SETTABLEKS R5 R4 K2 ["selectedTab"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"selectedAssets"}]
  GETTABLEKS R5 R1 K2 ["selectedAssets"]
  SETTABLEKS R5 R4 K2 ["selectedAssets"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"workspacePreviewSelectionEnabled"}]
  GETTABLEKS R5 R1 K2 ["workspacePreviewSelectionEnabled"]
  SETTABLEKS R5 R4 K2 ["workspacePreviewSelectionEnabled"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["AvatarToolsShared"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R5 R4 K11 ["PreviewConstants"]
  GETTABLEKS R7 R3 K12 ["Flags"]
  GETTABLEKS R6 R7 K13 ["GetFFlagAFTSelectHandleOnly"]
  GETTABLEKS R7 R1 K14 ["createReducer"]
  DUPTABLE R8 K22 [{"categoryFilter", "searchFilter", "docked", "selectedTab", "selectedAssets", "userAddedAssets", "workspacePreviewSelectionEnabled"}]
  LOADK R9 K23 [""]
  SETTABLEKS R9 R8 K15 ["categoryFilter"]
  LOADK R9 K23 [""]
  SETTABLEKS R9 R8 K16 ["searchFilter"]
  LOADB R9 1
  SETTABLEKS R9 R8 K17 ["docked"]
  GETTABLEKS R10 R5 K24 ["TABS_KEYS"]
  GETTABLEKS R9 R10 K25 ["None"]
  SETTABLEKS R9 R8 K18 ["selectedTab"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K19 ["selectedAssets"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K20 ["userAddedAssets"]
  LOADB R9 1
  SETTABLEKS R9 R8 K21 ["workspacePreviewSelectionEnabled"]
  DUPTABLE R9 K33 [{"SetCategoryFilter", "SetSearchFilter", "SetDocked", "SetUserAddedAssets", "SelectPreviewTab", "SetPreviewAssetsSelected", "SetWorkspacePreviewSelectionEnabled"}]
  DUPCLOSURE R10 K34 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K26 ["SetCategoryFilter"]
  DUPCLOSURE R10 K35 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K27 ["SetSearchFilter"]
  DUPCLOSURE R10 K36 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K28 ["SetDocked"]
  DUPCLOSURE R10 K37 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K29 ["SetUserAddedAssets"]
  DUPCLOSURE R10 K38 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K30 ["SelectPreviewTab"]
  DUPCLOSURE R10 K39 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K31 ["SetPreviewAssetsSelected"]
  MOVE R11 R6
  CALL R11 0 1
  JUMPIFNOT R11 [+3]
  DUPCLOSURE R10 K40 [PROTO_6]
  CAPTURE VAL R2
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K32 ["SetWorkspacePreviewSelectionEnabled"]
  CALL R7 2 -1
  RETURN R7 -1
