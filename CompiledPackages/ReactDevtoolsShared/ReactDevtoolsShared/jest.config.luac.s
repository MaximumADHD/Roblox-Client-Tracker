MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"setupFilesAfterEnv", "testMatch"}]
  NEWTABLE R1 0 1
  GETIMPORT R5 K4 [script]
  GETTABLEKS R4 R5 K5 ["Parent"]
  GETTABLEKS R3 R4 K6 ["__tests__"]
  GETTABLEKS R2 R3 K7 ["setupTests"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K0 ["setupFilesAfterEnv"]
  NEWTABLE R1 0 1
  LOADK R2 K8 ["**/*.(spec|test)"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K1 ["testMatch"]
  RETURN R0 1
