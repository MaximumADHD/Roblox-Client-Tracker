MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["LuauPolyfill"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K6 ["Error"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K7 ["JestEnvironment"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R0 K8 ["Expect"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R0 K9 ["JestTypes"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R0 K8 ["Expect"]
  CALL R6 1 1
  GETIMPORT R7 K11 [error]
  GETTABLEKS R8 R2 K12 ["new"]
  LOADK R10 K13 ["Do not import `JestGlobals` outside of the Jest 3 test environment.
"]
  LOADK R11 K14 ["Tip: Jest 2 uses a different pattern - check your Jest version."]
  CONCAT R9 R10 R11
  CALL R8 1 -1
  CALL R7 -1 0
  NEWTABLE R7 0 0
  RETURN R7 1
