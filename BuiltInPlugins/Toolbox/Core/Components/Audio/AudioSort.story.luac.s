PROTO_0:
  LOADB R0 1
  RETURN R0 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["controls"]
  GETTABLEKS R2 R3 K1 ["isSceneSuggestions"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createMockContextualRecommendations"]
  CALL R1 0 1
  JUMP [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createMockList"]
  LOADK R2 K4 ["Sample"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K5 ["ResultsState"]
  JUMPIFNOT R2 [+21]
  GETTABLEKS R3 R0 K0 ["controls"]
  GETTABLEKS R2 R3 K6 ["isLoading"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R1 K5 ["ResultsState"]
  LOADB R3 1
  SETTABLEKS R3 R2 K7 ["loading"]
  GETTABLEKS R3 R0 K0 ["controls"]
  GETTABLEKS R2 R3 K8 ["noResults"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R1 K5 ["ResultsState"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K9 ["assets"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["createElement"]
  GETUPVAL R3 2
  NEWTABLE R4 0 0
  DUPTABLE R5 K12 [{"AudioSort"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K15 [{"AudioSection", "AssetLogicWrapperProps"}]
  SETTABLEKS R1 R8 K13 ["AudioSection"]
  DUPTABLE R9 K21 [{"CanInsertAsset", "LogAssetImpression", "OnAssetPreviewButtonClicked", "TryInsert", "TryOpenAssetConfig"}]
  GETUPVAL R10 4
  SETTABLEKS R10 R9 K16 ["CanInsertAsset"]
  GETUPVAL R10 4
  SETTABLEKS R10 R9 K17 ["LogAssetImpression"]
  GETUPVAL R10 4
  SETTABLEKS R10 R9 K18 ["OnAssetPreviewButtonClicked"]
  GETUPVAL R10 4
  SETTABLEKS R10 R9 K19 ["TryInsert"]
  GETUPVAL R10 4
  SETTABLEKS R10 R9 K20 ["TryOpenAssetConfig"]
  SETTABLEKS R9 R8 K14 ["AssetLogicWrapperProps"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["AudioSort"]
  CALL R2 3 -1
  RETURN R2 -1

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
  GETTABLEKS R5 R0 K8 ["Core"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["MockWrapper"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K11 ["Parent"]
  GETTABLEKS R4 R5 K12 ["AudioSort"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K13 ["AudioView.mocks"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_0]
  DUPTABLE R6 K18 [{"isLoading", "isSceneSuggestions", "noResults"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K15 ["isLoading"]
  LOADB R7 0
  SETTABLEKS R7 R6 K16 ["isSceneSuggestions"]
  LOADB R7 0
  SETTABLEKS R7 R6 K17 ["noResults"]
  DUPTABLE R7 K21 [{"controls", "story"}]
  SETTABLEKS R6 R7 K19 ["controls"]
  DUPCLOSURE R8 K22 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K20 ["story"]
  RETURN R7 1
