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
  GETTABLEKS R3 R4 K9 ["MaterialBrowserReducer"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K10 ["combineReducers"]
  DUPTABLE R4 K11 [{"MaterialBrowserReducer"}]
  SETTABLEKS R2 R4 K9 ["MaterialBrowserReducer"]
  CALL R3 1 1
  RETURN R3 1
