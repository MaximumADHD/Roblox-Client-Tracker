MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["LuauPolyfill"]
  CALL R1 1 1
  NEWTABLE R2 4 0
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K6 ["Shared"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R0 K7 ["ReactReconciler"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K8 ["types"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K9 ["devtools"]
  GETTABLEKS R9 R10 K10 ["views"]
  GETTABLEKS R8 R9 K11 ["Profiler"]
  GETTABLEKS R7 R8 K8 ["types"]
  CALL R6 1 1
  LOADK R7 K12 ["full-data"]
  SETTABLEKS R7 R2 K13 ["InspectElementFullDataType"]
  LOADK R7 K14 ["no-change"]
  SETTABLEKS R7 R2 K15 ["InspectElementNoChangeType"]
  LOADK R7 K16 ["not-found"]
  SETTABLEKS R7 R2 K17 ["InspectElementNotFoundType"]
  LOADK R7 K18 ["hydrated-path"]
  SETTABLEKS R7 R2 K19 ["InspectElementHydratedPathType"]
  RETURN R2 1
