MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Array"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["AssertionError"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["Error"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K7 ["Map"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K8 ["Object"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K9 ["Promise"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K10 ["Set"]
  CALL R6 1 1
  GETIMPORT R7 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K11 ["Symbol"]
  CALL R7 1 1
  GETIMPORT R8 K1 [require]
  GETIMPORT R10 K3 [script]
  GETTABLEKS R9 R10 K12 ["Timers"]
  CALL R8 1 1
  GETIMPORT R9 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K13 ["WeakMap"]
  CALL R9 1 1
  DUPTABLE R10 K28 [{"Array", "AssertionError", "Boolean", "console", "Error", "extends", "instanceof", "Math", "Number", "Object", "Map", "coerceToMap", "coerceToTable", "Set", "WeakMap", "String", "Symbol", "setTimeout", "clearTimeout", "setInterval", "clearInterval", "util"}]
  SETTABLEKS R0 R10 K4 ["Array"]
  SETTABLEKS R1 R10 K5 ["AssertionError"]
  GETIMPORT R11 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K14 ["Boolean"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K14 ["Boolean"]
  GETIMPORT R11 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K15 ["console"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K15 ["console"]
  SETTABLEKS R2 R10 K6 ["Error"]
  GETIMPORT R11 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K16 ["extends"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K16 ["extends"]
  GETIMPORT R11 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K17 ["instanceof"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K17 ["instanceof"]
  GETIMPORT R11 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K18 ["Math"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K18 ["Math"]
  GETIMPORT R11 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K19 ["Number"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K19 ["Number"]
  SETTABLEKS R4 R10 K8 ["Object"]
  GETTABLEKS R11 R3 K7 ["Map"]
  SETTABLEKS R11 R10 K7 ["Map"]
  GETTABLEKS R11 R3 K20 ["coerceToMap"]
  SETTABLEKS R11 R10 K20 ["coerceToMap"]
  GETTABLEKS R11 R3 K21 ["coerceToTable"]
  SETTABLEKS R11 R10 K21 ["coerceToTable"]
  SETTABLEKS R6 R10 K10 ["Set"]
  SETTABLEKS R9 R10 K13 ["WeakMap"]
  GETIMPORT R11 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K22 ["String"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K22 ["String"]
  SETTABLEKS R7 R10 K11 ["Symbol"]
  GETTABLEKS R11 R8 K23 ["setTimeout"]
  SETTABLEKS R11 R10 K23 ["setTimeout"]
  GETTABLEKS R11 R8 K24 ["clearTimeout"]
  SETTABLEKS R11 R10 K24 ["clearTimeout"]
  GETTABLEKS R11 R8 K25 ["setInterval"]
  SETTABLEKS R11 R10 K25 ["setInterval"]
  GETTABLEKS R11 R8 K26 ["clearInterval"]
  SETTABLEKS R11 R10 K26 ["clearInterval"]
  GETIMPORT R11 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K27 ["util"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K27 ["util"]
  RETURN R10 1
