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
  GETTABLEKS R1 R0 K7 ["console"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  LOADK R5 K8 ["consoleWithStackDev"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R4 K10 [_G]
  GETTABLEKS R3 R4 K11 ["__DEV__"]
  JUMPIFNOT R3 [+18]
  DUPTABLE R4 K14 [{"warn", "error"}]
  GETTABLEKS R5 R2 K12 ["warn"]
  SETTABLEKS R5 R4 K12 ["warn"]
  GETTABLEKS R5 R2 K13 ["error"]
  SETTABLEKS R5 R4 K13 ["error"]
  DUPTABLE R5 K16 [{"__index"}]
  SETTABLEKS R1 R5 K15 ["__index"]
  FASTCALL2 SETMETATABLE R4 R5 [+3]
  GETIMPORT R3 K18 [setmetatable]
  CALL R3 2 1
  RETURN R3 1
  RETURN R1 1
