MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["LuauPolyfill"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K6 ["Object"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K7 ["Expect"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R0 K8 ["Jest"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R0 K9 ["JestSnapshot"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R0 K10 ["TestEZ"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R0 K11 ["TestEZJestAdapter"]
  CALL R7 1 1
  DUPTABLE R8 K16 [{"expect", "jest", "testEnv", "jestSnapshot", "TestEZ"}]
  SETTABLEKS R3 R8 K12 ["expect"]
  SETTABLEKS R4 R8 K13 ["jest"]
  GETTABLEKS R9 R4 K14 ["testEnv"]
  SETTABLEKS R9 R8 K14 ["testEnv"]
  DUPTABLE R9 K19 [{"toMatchSnapshot", "toThrowErrorMatchingSnapshot"}]
  GETTABLEKS R10 R5 K17 ["toMatchSnapshot"]
  SETTABLEKS R10 R9 K17 ["toMatchSnapshot"]
  GETTABLEKS R10 R5 K18 ["toThrowErrorMatchingSnapshot"]
  SETTABLEKS R10 R9 K18 ["toThrowErrorMatchingSnapshot"]
  SETTABLEKS R9 R8 K15 ["jestSnapshot"]
  GETTABLEKS R9 R2 K20 ["assign"]
  NEWTABLE R10 0 0
  MOVE R11 R6
  DUPTABLE R12 K22 [{"Reporters"}]
  GETTABLEKS R13 R2 K20 ["assign"]
  NEWTABLE R14 0 0
  GETTABLEKS R15 R6 K21 ["Reporters"]
  GETTABLEKS R16 R7 K21 ["Reporters"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K21 ["Reporters"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K10 ["TestEZ"]
  RETURN R8 1
