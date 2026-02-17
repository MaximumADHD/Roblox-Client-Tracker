MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Boolean"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K6 ["Collections"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K7 ["Console"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R0 K8 ["Math"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R0 K9 ["Number"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R0 K10 ["String"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R0 K11 ["Symbol"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R0 K12 ["Timers"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R0 K13 ["ES7Types"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K14 ["AssertionError"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K15 ["Error"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K16 ["Promise"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K17 ["extends"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R0 K18 ["InstanceOf"]
  CALL R14 1 1
  DUPTABLE R15 K33 [{"Array", "AssertionError", "Boolean", "console", "Error", "extends", "instanceof", "Math", "Number", "Object", "Map", "coerceToMap", "coerceToTable", "Set", "WeakMap", "String", "Symbol", "setTimeout", "clearTimeout", "setInterval", "clearInterval", "util"}]
  GETTABLEKS R16 R2 K19 ["Array"]
  SETTABLEKS R16 R15 K19 ["Array"]
  SETTABLEKS R10 R15 K14 ["AssertionError"]
  SETTABLEKS R1 R15 K5 ["Boolean"]
  SETTABLEKS R3 R15 K20 ["console"]
  SETTABLEKS R11 R15 K15 ["Error"]
  SETTABLEKS R13 R15 K17 ["extends"]
  SETTABLEKS R14 R15 K21 ["instanceof"]
  SETTABLEKS R4 R15 K8 ["Math"]
  SETTABLEKS R5 R15 K9 ["Number"]
  GETTABLEKS R16 R2 K22 ["Object"]
  SETTABLEKS R16 R15 K22 ["Object"]
  GETTABLEKS R16 R2 K23 ["Map"]
  SETTABLEKS R16 R15 K23 ["Map"]
  GETTABLEKS R16 R2 K24 ["coerceToMap"]
  SETTABLEKS R16 R15 K24 ["coerceToMap"]
  GETTABLEKS R16 R2 K25 ["coerceToTable"]
  SETTABLEKS R16 R15 K25 ["coerceToTable"]
  GETTABLEKS R16 R2 K26 ["Set"]
  SETTABLEKS R16 R15 K26 ["Set"]
  GETTABLEKS R16 R2 K27 ["WeakMap"]
  SETTABLEKS R16 R15 K27 ["WeakMap"]
  SETTABLEKS R6 R15 K10 ["String"]
  SETTABLEKS R7 R15 K11 ["Symbol"]
  GETTABLEKS R16 R8 K28 ["setTimeout"]
  SETTABLEKS R16 R15 K28 ["setTimeout"]
  GETTABLEKS R16 R8 K29 ["clearTimeout"]
  SETTABLEKS R16 R15 K29 ["clearTimeout"]
  GETTABLEKS R16 R8 K30 ["setInterval"]
  SETTABLEKS R16 R15 K30 ["setInterval"]
  GETTABLEKS R16 R8 K31 ["clearInterval"]
  SETTABLEKS R16 R15 K31 ["clearInterval"]
  DUPTABLE R16 K35 [{"inspect"}]
  GETTABLEKS R17 R2 K34 ["inspect"]
  SETTABLEKS R17 R16 K34 ["inspect"]
  SETTABLEKS R16 R15 K32 ["util"]
  RETURN R15 1
