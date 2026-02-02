MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R1 K3 [script]
  LOADK R3 K4 ["Array"]
  NAMECALL R1 R1 K5 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R2 K3 [script]
  LOADK R4 K6 ["Map"]
  NAMECALL R2 R2 K5 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R3 K3 [script]
  LOADK R5 K7 ["Object"]
  NAMECALL R3 R3 K5 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R4 K3 [script]
  LOADK R6 K8 ["Set"]
  NAMECALL R4 R4 K5 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R5 K3 [script]
  LOADK R7 K9 ["WeakMap"]
  NAMECALL R5 R5 K5 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R6 K3 [script]
  LOADK R8 K10 ["inspect"]
  NAMECALL R6 R6 K5 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K11 ["Parent"]
  LOADK R9 K12 ["es7-types"]
  NAMECALL R7 R7 K5 ["WaitForChild"]
  CALL R7 2 -1
  CALL R6 -1 1
  DUPTABLE R7 K15 [{"Array", "Object", "Map", "coerceToMap", "coerceToTable", "Set", "WeakMap", "inspect"}]
  SETTABLEKS R0 R7 K4 ["Array"]
  SETTABLEKS R2 R7 K7 ["Object"]
  GETTABLEKS R8 R1 K6 ["Map"]
  SETTABLEKS R8 R7 K6 ["Map"]
  GETTABLEKS R8 R1 K13 ["coerceToMap"]
  SETTABLEKS R8 R7 K13 ["coerceToMap"]
  GETTABLEKS R8 R1 K14 ["coerceToTable"]
  SETTABLEKS R8 R7 K14 ["coerceToTable"]
  SETTABLEKS R3 R7 K8 ["Set"]
  SETTABLEKS R4 R7 K9 ["WeakMap"]
  SETTABLEKS R5 R7 K10 ["inspect"]
  RETURN R7 1
