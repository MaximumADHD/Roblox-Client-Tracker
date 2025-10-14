MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  LOADK R3 K3 ["TestsSetup"]
  NAMECALL R1 R0 K4 ["FindFirstChild"]
  CALL R1 2 1
  FASTCALL2K ASSERT R1 K5 [+5]
  MOVE R3 R1
  LOADK R4 K5 ["TestsSetup folder not found. Please make sure the folder exists in the root of the package."]
  GETIMPORT R2 K7 [assert]
  CALL R2 2 0
  LOADK R4 K8 ["setup-env"]
  NAMECALL R2 R1 K4 ["FindFirstChild"]
  CALL R2 2 1
  FASTCALL2K ASSERT R2 K9 [+5]
  MOVE R4 R2
  LOADK R5 K9 ["setup-env file not found. Please make sure the file exists in the TestsSetup folder."]
  GETIMPORT R3 K7 [assert]
  CALL R3 2 0
  DUPTABLE R3 K13 [{"displayName", "setupFilesAfterEnv", "testMatch"}]
  LOADK R4 K14 ["Jest"]
  SETTABLEKS R4 R3 K10 ["displayName"]
  NEWTABLE R4 0 1
  MOVE R5 R2
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K11 ["setupFilesAfterEnv"]
  NEWTABLE R4 0 1
  LOADK R5 K15 ["**/__tests__/**/*.spec"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K12 ["testMatch"]
  RETURN R3 1
