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
  GETTABLEKS R3 R4 K9 ["PluginMetadata"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Reducers"]
  GETTABLEKS R4 R5 K10 ["Message"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K7 ["Src"]
  GETTABLEKS R6 R7 K8 ["Reducers"]
  GETTABLEKS R5 R6 K11 ["CloudTable"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K12 ["combineReducers"]
  DUPTABLE R6 K13 [{"PluginMetadata", "Message", "CloudTable"}]
  SETTABLEKS R2 R6 K9 ["PluginMetadata"]
  SETTABLEKS R3 R6 K10 ["Message"]
  SETTABLEKS R4 R6 K11 ["CloudTable"]
  CALL R5 1 -1
  RETURN R5 -1
