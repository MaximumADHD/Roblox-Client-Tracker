MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K5 ["Array"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Map"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K7 ["Object"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K8 ["Set"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K9 ["WeakMap"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K10 ["inspect"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R0 K11 ["ES7Types"]
  CALL R7 1 1
  DUPTABLE R8 K14 [{"Array", "Object", "Map", "coerceToMap", "coerceToTable", "Set", "WeakMap", "inspect"}]
  SETTABLEKS R1 R8 K5 ["Array"]
  SETTABLEKS R3 R8 K7 ["Object"]
  GETTABLEKS R9 R2 K6 ["Map"]
  SETTABLEKS R9 R8 K6 ["Map"]
  GETTABLEKS R9 R2 K12 ["coerceToMap"]
  SETTABLEKS R9 R8 K12 ["coerceToMap"]
  GETTABLEKS R9 R2 K13 ["coerceToTable"]
  SETTABLEKS R9 R8 K13 ["coerceToTable"]
  SETTABLEKS R4 R8 K8 ["Set"]
  SETTABLEKS R5 R8 K9 ["WeakMap"]
  SETTABLEKS R6 R8 K10 ["inspect"]
  RETURN R8 1
