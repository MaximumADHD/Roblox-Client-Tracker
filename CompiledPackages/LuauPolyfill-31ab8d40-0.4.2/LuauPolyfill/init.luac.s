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
  GETTABLEKS R7 R8 K10 ["Symbol"]
  CALL R6 1 1
  GETIMPORT R7 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K11 ["Timers"]
  CALL R7 1 1
  GETIMPORT R8 K1 [require]
  GETIMPORT R10 K3 [script]
  GETTABLEKS R9 R10 K12 ["WeakMap"]
  CALL R8 1 1
  GETIMPORT R9 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K13 ["Map"]
  CALL R9 1 1
  GETIMPORT R10 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K13 ["Map"]
  GETTABLEKS R11 R12 K14 ["coerceToMap"]
  CALL R10 1 1
  GETIMPORT R11 K1 [require]
  GETIMPORT R14 K3 [script]
  GETTABLEKS R13 R14 K13 ["Map"]
  GETTABLEKS R12 R13 K15 ["coerceToTable"]
  CALL R11 1 1
  GETIMPORT R12 K1 [require]
  GETIMPORT R14 K3 [script]
  GETTABLEKS R13 R14 K16 ["types"]
  CALL R12 1 1
  DUPTABLE R13 K29 [{"Array", "AssertionError", "Boolean", "console", "Error", "extends", "instanceof", "Math", "Number", "Object", "Map", "coerceToMap", "coerceToTable", "Set", "WeakMap", "String", "Symbol", "setTimeout", "clearTimeout", "setInterval", "clearInterval", "util"}]
  SETTABLEKS R0 R13 K4 ["Array"]
  SETTABLEKS R1 R13 K5 ["AssertionError"]
  GETIMPORT R14 K1 [require]
  GETIMPORT R16 K3 [script]
  GETTABLEKS R15 R16 K17 ["Boolean"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K17 ["Boolean"]
  GETIMPORT R14 K1 [require]
  GETIMPORT R16 K3 [script]
  GETTABLEKS R15 R16 K18 ["console"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K18 ["console"]
  SETTABLEKS R2 R13 K6 ["Error"]
  GETIMPORT R14 K1 [require]
  GETIMPORT R16 K3 [script]
  GETTABLEKS R15 R16 K19 ["extends"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K19 ["extends"]
  GETIMPORT R14 K1 [require]
  GETIMPORT R16 K3 [script]
  GETTABLEKS R15 R16 K20 ["instanceof"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K20 ["instanceof"]
  GETIMPORT R14 K1 [require]
  GETIMPORT R16 K3 [script]
  GETTABLEKS R15 R16 K21 ["Math"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K21 ["Math"]
  GETIMPORT R14 K1 [require]
  GETIMPORT R16 K3 [script]
  GETTABLEKS R15 R16 K22 ["Number"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K22 ["Number"]
  SETTABLEKS R3 R13 K7 ["Object"]
  SETTABLEKS R9 R13 K13 ["Map"]
  SETTABLEKS R10 R13 K14 ["coerceToMap"]
  SETTABLEKS R11 R13 K15 ["coerceToTable"]
  SETTABLEKS R5 R13 K9 ["Set"]
  SETTABLEKS R8 R13 K12 ["WeakMap"]
  GETIMPORT R14 K1 [require]
  GETIMPORT R16 K3 [script]
  GETTABLEKS R15 R16 K23 ["String"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K23 ["String"]
  SETTABLEKS R6 R13 K10 ["Symbol"]
  GETTABLEKS R14 R7 K24 ["setTimeout"]
  SETTABLEKS R14 R13 K24 ["setTimeout"]
  GETTABLEKS R14 R7 K25 ["clearTimeout"]
  SETTABLEKS R14 R13 K25 ["clearTimeout"]
  GETTABLEKS R14 R7 K26 ["setInterval"]
  SETTABLEKS R14 R13 K26 ["setInterval"]
  GETTABLEKS R14 R7 K27 ["clearInterval"]
  SETTABLEKS R14 R13 K27 ["clearInterval"]
  GETIMPORT R14 K1 [require]
  GETIMPORT R16 K3 [script]
  GETTABLEKS R15 R16 K28 ["util"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K28 ["util"]
  RETURN R13 1
