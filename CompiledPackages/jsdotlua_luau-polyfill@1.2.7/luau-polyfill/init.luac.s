MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["boolean"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K7 ["collections"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  LOADK R5 K8 ["console"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  LOADK R6 K9 ["math"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  LOADK R7 K10 ["number"]
  NAMECALL R5 R5 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  LOADK R8 K11 ["string"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  LOADK R9 K12 ["symbol-luau"]
  NAMECALL R7 R7 K6 ["WaitForChild"]
  CALL R7 2 -1
  CALL R6 -1 1
  GETIMPORT R7 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K4 ["Parent"]
  LOADK R10 K13 ["timers"]
  NAMECALL R8 R8 K6 ["WaitForChild"]
  CALL R8 2 -1
  CALL R7 -1 1
  GETIMPORT R8 K1 [require]
  GETIMPORT R10 K3 [script]
  GETTABLEKS R9 R10 K4 ["Parent"]
  LOADK R11 K14 ["es7-types"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  GETIMPORT R9 K1 [require]
  GETIMPORT R10 K3 [script]
  LOADK R12 K15 ["AssertionError"]
  NAMECALL R10 R10 K6 ["WaitForChild"]
  CALL R10 2 -1
  CALL R9 -1 1
  GETIMPORT R10 K1 [require]
  GETIMPORT R11 K3 [script]
  LOADK R13 K16 ["Error"]
  NAMECALL R11 R11 K6 ["WaitForChild"]
  CALL R11 2 -1
  CALL R10 -1 1
  GETIMPORT R11 K1 [require]
  GETIMPORT R12 K3 [script]
  LOADK R14 K17 ["Promise"]
  NAMECALL R12 R12 K6 ["WaitForChild"]
  CALL R12 2 -1
  CALL R11 -1 1
  GETIMPORT R12 K1 [require]
  GETIMPORT R13 K3 [script]
  LOADK R15 K18 ["extends"]
  NAMECALL R13 R13 K6 ["WaitForChild"]
  CALL R13 2 -1
  CALL R12 -1 1
  GETIMPORT R13 K1 [require]
  GETIMPORT R15 K3 [script]
  GETTABLEKS R14 R15 K4 ["Parent"]
  LOADK R16 K19 ["instance-of"]
  NAMECALL R14 R14 K6 ["WaitForChild"]
  CALL R14 2 -1
  CALL R13 -1 1
  DUPTABLE R14 K38 [{"Array", "AssertionError", "Boolean", "console", "Error", "extends", "instanceof", "Math", "Number", "Object", "Map", "coerceToMap", "coerceToTable", "Set", "WeakMap", "String", "Symbol", "setTimeout", "clearTimeout", "setInterval", "clearInterval", "util"}]
  GETTABLEKS R15 R1 K20 ["Array"]
  SETTABLEKS R15 R14 K20 ["Array"]
  SETTABLEKS R9 R14 K15 ["AssertionError"]
  SETTABLEKS R0 R14 K21 ["Boolean"]
  SETTABLEKS R2 R14 K8 ["console"]
  SETTABLEKS R10 R14 K16 ["Error"]
  SETTABLEKS R12 R14 K18 ["extends"]
  SETTABLEKS R13 R14 K22 ["instanceof"]
  SETTABLEKS R3 R14 K23 ["Math"]
  SETTABLEKS R4 R14 K24 ["Number"]
  GETTABLEKS R15 R1 K25 ["Object"]
  SETTABLEKS R15 R14 K25 ["Object"]
  GETTABLEKS R15 R1 K26 ["Map"]
  SETTABLEKS R15 R14 K26 ["Map"]
  GETTABLEKS R15 R1 K27 ["coerceToMap"]
  SETTABLEKS R15 R14 K27 ["coerceToMap"]
  GETTABLEKS R15 R1 K28 ["coerceToTable"]
  SETTABLEKS R15 R14 K28 ["coerceToTable"]
  GETTABLEKS R15 R1 K29 ["Set"]
  SETTABLEKS R15 R14 K29 ["Set"]
  GETTABLEKS R15 R1 K30 ["WeakMap"]
  SETTABLEKS R15 R14 K30 ["WeakMap"]
  SETTABLEKS R5 R14 K31 ["String"]
  SETTABLEKS R6 R14 K32 ["Symbol"]
  GETTABLEKS R15 R7 K33 ["setTimeout"]
  SETTABLEKS R15 R14 K33 ["setTimeout"]
  GETTABLEKS R15 R7 K34 ["clearTimeout"]
  SETTABLEKS R15 R14 K34 ["clearTimeout"]
  GETTABLEKS R15 R7 K35 ["setInterval"]
  SETTABLEKS R15 R14 K35 ["setInterval"]
  GETTABLEKS R15 R7 K36 ["clearInterval"]
  SETTABLEKS R15 R14 K36 ["clearInterval"]
  DUPTABLE R15 K40 [{"inspect"}]
  GETTABLEKS R16 R1 K39 ["inspect"]
  SETTABLEKS R16 R15 K39 ["inspect"]
  SETTABLEKS R15 R14 K37 ["util"]
  RETURN R14 1
