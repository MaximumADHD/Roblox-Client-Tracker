MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Reducers"]
  GETTABLEKS R3 R4 K10 ["Status"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Reducers"]
  GETTABLEKS R4 R5 K11 ["AnimationData"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Reducers"]
  GETTABLEKS R5 R6 K12 ["History"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K9 ["Reducers"]
  GETTABLEKS R6 R7 K13 ["Notifications"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K14 ["combineReducers"]
  DUPTABLE R7 K15 [{"Status", "AnimationData", "History", "Notifications"}]
  SETTABLEKS R2 R7 K10 ["Status"]
  SETTABLEKS R3 R7 K11 ["AnimationData"]
  SETTABLEKS R4 R7 K12 ["History"]
  SETTABLEKS R5 R7 K13 ["Notifications"]
  CALL R6 1 -1
  RETURN R6 -1
