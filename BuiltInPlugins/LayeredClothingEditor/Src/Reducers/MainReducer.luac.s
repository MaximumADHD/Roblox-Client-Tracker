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
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Reducers"]
  GETTABLEKS R3 R4 K9 ["Status"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Reducers"]
  GETTABLEKS R4 R5 K10 ["PreviewStatus"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K7 ["Src"]
  GETTABLEKS R6 R7 K8 ["Reducers"]
  GETTABLEKS R5 R6 K11 ["SelectItem"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K7 ["Src"]
  GETTABLEKS R7 R8 K8 ["Reducers"]
  GETTABLEKS R6 R7 K12 ["ControlsPanelBlocker"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K7 ["Src"]
  GETTABLEKS R8 R9 K8 ["Reducers"]
  GETTABLEKS R7 R8 K13 ["PreviewAssets"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K7 ["Src"]
  GETTABLEKS R9 R10 K8 ["Reducers"]
  GETTABLEKS R8 R9 K14 ["Animation"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K15 ["combineReducers"]
  DUPTABLE R9 K22 [{"status", "previewStatus", "selectItem", "controlsPanelBlocker", "previewAssets", "animation"}]
  SETTABLEKS R2 R9 K16 ["status"]
  SETTABLEKS R3 R9 K17 ["previewStatus"]
  SETTABLEKS R4 R9 K18 ["selectItem"]
  SETTABLEKS R5 R9 K19 ["controlsPanelBlocker"]
  SETTABLEKS R6 R9 K20 ["previewAssets"]
  SETTABLEKS R7 R9 K21 ["animation"]
  CALL R8 1 1
  RETURN R8 1
