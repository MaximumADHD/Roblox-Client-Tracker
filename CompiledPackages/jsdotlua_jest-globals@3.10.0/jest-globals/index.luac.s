MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["luau-polyfill"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETTABLEKS R1 R0 K7 ["Error"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  LOADK R5 K8 ["jest-environment"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  LOADK R6 K9 ["expect"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  LOADK R7 K10 ["jest-types"]
  NAMECALL R5 R5 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K4 ["Parent"]
  LOADK R8 K9 ["expect"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETIMPORT R6 K12 [error]
  GETTABLEKS R7 R1 K13 ["new"]
  LOADK R8 K14 ["Do not import `JestGlobals` outside of the Jest 3 test environment.
Tip: Jest 2 uses a different pattern - check your Jest version."]
  CALL R7 1 -1
  CALL R6 -1 0
  NEWTABLE R6 0 0
  RETURN R6 1
