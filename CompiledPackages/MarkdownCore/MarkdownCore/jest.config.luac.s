MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Packages"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["_Workspace"]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K5 ["Parent"]
  GETTABLEKS R2 R3 K6 ["setupJest"]
  DUPTABLE R3 K11 [{"testMatch", "testPathIgnorePatterns", "setupFilesAfterEnv", "rootDir"}]
  NEWTABLE R4 0 1
  LOADK R5 K12 ["**/*.test"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K7 ["testMatch"]
  NEWTABLE R4 0 1
  LOADK R5 K13 ["_Index"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K8 ["testPathIgnorePatterns"]
  NEWTABLE R4 0 1
  MOVE R5 R2
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K9 ["setupFilesAfterEnv"]
  SETTABLEKS R1 R3 K10 ["rootDir"]
  RETURN R3 1
