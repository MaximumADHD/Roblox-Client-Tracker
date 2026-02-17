MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Array"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["Error"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["Map"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K7 ["Object"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K8 ["Promise"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K9 ["Set"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K10 ["Timers"]
  CALL R6 1 1
  GETIMPORT R7 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K11 ["WeakMap"]
  CALL R7 1 1
  DUPTABLE R8 K25 [{"Array", "Boolean", "console", "Error", "extends", "instanceof", "Math", "Number", "Object", "Map", "coerceToMap", "coerceToTable", "Set", "WeakMap", "String", "Symbol", "setTimeout", "clearTimeout", "util"}]
  SETTABLEKS R0 R8 K4 ["Array"]
  GETIMPORT R9 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K12 ["Boolean"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K12 ["Boolean"]
  GETIMPORT R9 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K13 ["console"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K13 ["console"]
  SETTABLEKS R1 R8 K5 ["Error"]
  GETIMPORT R9 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K14 ["extends"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K14 ["extends"]
  GETIMPORT R9 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K15 ["instanceof"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K15 ["instanceof"]
  GETIMPORT R9 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K16 ["Math"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K16 ["Math"]
  GETIMPORT R9 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K17 ["Number"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K17 ["Number"]
  SETTABLEKS R3 R8 K7 ["Object"]
  GETTABLEKS R9 R2 K6 ["Map"]
  SETTABLEKS R9 R8 K6 ["Map"]
  GETTABLEKS R9 R2 K18 ["coerceToMap"]
  SETTABLEKS R9 R8 K18 ["coerceToMap"]
  GETTABLEKS R9 R2 K19 ["coerceToTable"]
  SETTABLEKS R9 R8 K19 ["coerceToTable"]
  SETTABLEKS R5 R8 K9 ["Set"]
  SETTABLEKS R7 R8 K11 ["WeakMap"]
  GETIMPORT R9 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K20 ["String"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K20 ["String"]
  GETIMPORT R9 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K21 ["Symbol"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K21 ["Symbol"]
  GETTABLEKS R9 R6 K22 ["setTimeout"]
  SETTABLEKS R9 R8 K22 ["setTimeout"]
  GETTABLEKS R9 R6 K23 ["clearTimeout"]
  SETTABLEKS R9 R8 K23 ["clearTimeout"]
  GETIMPORT R9 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K24 ["util"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K24 ["util"]
  RETURN R8 1
