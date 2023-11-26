PROTO_0:
  GETUPVAL R4 0
  JUMPIFNOT R4 [+13]
  GETUPVAL R4 0
  MOVE R5 R0
  MOVE R6 R3
  MOVE R7 R1
  MOVE R8 R2
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K0 ["size"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["position"]
  CALL R4 6 -1
  RETURN R4 -1
  LOADNIL R4
  RETURN R4 1

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R2 K2 [{"size", "position"}]
  GETTABLEKS R3 R0 K3 ["AbsoluteSize"]
  SETTABLEKS R3 R2 K0 ["size"]
  GETTABLEKS R3 R0 K4 ["AbsolutePosition"]
  SETTABLEKS R3 R2 K1 ["position"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["ResultsState"]
  GETTABLEKS R3 R0 K1 ["AssetLogicWrapperProps"]
  GETTABLEKS R2 R3 K2 ["LogAssetImpression"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["useState"]
  DUPTABLE R4 K6 [{"size", "position"}]
  GETIMPORT R5 K9 [Vector2.zero]
  SETTABLEKS R5 R4 K4 ["size"]
  GETIMPORT R5 K9 [Vector2.zero]
  SETTABLEKS R5 R4 K5 ["position"]
  CALL R3 1 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K10 ["useCallback"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R2
  CAPTURE VAL R3
  NEWTABLE R7 0 2
  MOVE R8 R2
  MOVE R9 R3
  SETLIST R7 R8 2 [1]
  CALL R5 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["useCallback"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R4
  NEWTABLE R8 0 0
  CALL R6 2 1
  GETUPVAL R7 1
  NAMECALL R7 R7 K11 ["use"]
  CALL R7 1 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K12 ["createElement"]
  GETUPVAL R9 2
  NEWTABLE R10 4 0
  GETTABLEKS R11 R7 K13 ["backgroundColor"]
  SETTABLEKS R11 R10 K14 ["BackgroundColor"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K15 ["Change"]
  GETTABLEKS R11 R12 K16 ["AbsoluteSize"]
  SETTABLE R6 R10 R11
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K15 ["Change"]
  GETTABLEKS R11 R12 K17 ["AbsolutePosition"]
  SETTABLE R6 R10 R11
  DUPTABLE R11 K19 [{"AudioScroller"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K20 ["Generator"]
  DUPTABLE R13 K33 [{"Assets", "RenderTopContent", "PageSize", "FetchNextPage", "Loading", "ParentAbsoluteSize", "ParentAbsolutePosition", "CanInsertAsset", "LogImpression", "OnAssetPreviewButtonClicked", "TryInsert", "TryOpenAssetConfig"}]
  GETTABLEKS R14 R1 K34 ["assets"]
  SETTABLEKS R14 R13 K21 ["Assets"]
  GETTABLEKS R14 R0 K22 ["RenderTopContent"]
  SETTABLEKS R14 R13 K22 ["RenderTopContent"]
  GETTABLEKS R14 R0 K23 ["PageSize"]
  SETTABLEKS R14 R13 K23 ["PageSize"]
  GETTABLEKS R14 R1 K35 ["fetchNextPage"]
  SETTABLEKS R14 R13 K24 ["FetchNextPage"]
  GETTABLEKS R14 R1 K36 ["loading"]
  SETTABLEKS R14 R13 K25 ["Loading"]
  GETTABLEKS R14 R3 K4 ["size"]
  SETTABLEKS R14 R13 K26 ["ParentAbsoluteSize"]
  GETTABLEKS R14 R3 K5 ["position"]
  SETTABLEKS R14 R13 K27 ["ParentAbsolutePosition"]
  GETTABLEKS R15 R0 K1 ["AssetLogicWrapperProps"]
  GETTABLEKS R14 R15 K28 ["CanInsertAsset"]
  SETTABLEKS R14 R13 K28 ["CanInsertAsset"]
  SETTABLEKS R5 R13 K29 ["LogImpression"]
  GETTABLEKS R15 R0 K1 ["AssetLogicWrapperProps"]
  GETTABLEKS R14 R15 K30 ["OnAssetPreviewButtonClicked"]
  SETTABLEKS R14 R13 K30 ["OnAssetPreviewButtonClicked"]
  GETTABLEKS R15 R0 K1 ["AssetLogicWrapperProps"]
  GETTABLEKS R14 R15 K31 ["TryInsert"]
  SETTABLEKS R14 R13 K31 ["TryInsert"]
  GETTABLEKS R15 R0 K1 ["AssetLogicWrapperProps"]
  GETTABLEKS R14 R15 K32 ["TryOpenAssetConfig"]
  SETTABLEKS R14 R13 K32 ["TryOpenAssetConfig"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K18 ["AudioScroller"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Core"]
  GETTABLEKS R5 R6 K10 ["Types"]
  GETTABLEKS R4 R5 K11 ["AssetLogicTypes"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K12 ["Components"]
  GETTABLEKS R6 R7 K13 ["Audio"]
  GETTABLEKS R5 R6 K14 ["AudioScroller"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K12 ["Components"]
  GETTABLEKS R6 R7 K15 ["ResultsFetcher"]
  CALL R5 1 1
  GETTABLEKS R7 R2 K16 ["UI"]
  GETTABLEKS R6 R7 K17 ["Pane"]
  GETTABLEKS R8 R2 K18 ["ContextServices"]
  GETTABLEKS R7 R8 K19 ["Stylizer"]
  DUPCLOSURE R8 K20 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R4
  RETURN R8 1
