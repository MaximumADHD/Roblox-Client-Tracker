MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["DebugData"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Status"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K11 ["combineReducers"]
  DUPTABLE R5 K12 [{"DebugData", "Status"}]
  SETTABLEKS R2 R5 K9 ["DebugData"]
  SETTABLEKS R3 R5 K10 ["Status"]
  CALL R4 1 -1
  RETURN R4 -1
