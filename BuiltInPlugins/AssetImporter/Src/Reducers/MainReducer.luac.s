MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K8 ["Src"]
  GETTABLEKS R2 R3 K9 ["Reducers"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K10 ["Preview"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["getFFlagAssetImportRefactorReducer"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K13 ["combineReducers"]
  DUPTABLE R6 K14 [{"Preview"}]
  SETTABLEKS R3 R6 K10 ["Preview"]
  CALL R5 1 1
  MOVE R6 R4
  CALL R6 0 1
  JUMPIFNOT R6 [+1]
  RETURN R5 1
  RETURN R3 1
