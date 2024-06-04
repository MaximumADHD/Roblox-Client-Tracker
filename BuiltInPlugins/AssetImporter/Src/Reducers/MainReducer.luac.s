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
  GETTABLEKS R5 R2 K11 ["Dialogs"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R2 K12 ["Sessions"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K13 ["Flags"]
  GETTABLEKS R7 R8 K14 ["getFFlagAssetImportEnableMultipleFiles"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K15 ["combineReducers"]
  DUPTABLE R8 K16 [{"Preview", "Dialogs", "Sessions"}]
  SETTABLEKS R3 R8 K10 ["Preview"]
  SETTABLEKS R4 R8 K11 ["Dialogs"]
  MOVE R10 R6
  CALL R10 0 1
  JUMPIFNOT R10 [+2]
  MOVE R9 R5
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K12 ["Sessions"]
  CALL R7 1 1
  RETURN R7 1
