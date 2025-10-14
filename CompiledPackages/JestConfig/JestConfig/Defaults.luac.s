MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  NEWTABLE R1 1 0
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K5 ["JestTypes"]
  CALL R2 1 1
  NEWTABLE R3 64 0
  LOADB R4 0
  SETTABLEKS R4 R3 K6 ["automock"]
  LOADN R4 0
  SETTABLEKS R4 R3 K7 ["bail"]
  LOADB R4 0
  SETTABLEKS R4 R3 K8 ["changedFilesWithAncestor"]
  LOADB R4 0
  SETTABLEKS R4 R3 K9 ["ci"]
  LOADB R4 0
  SETTABLEKS R4 R3 K10 ["clearMocks"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K11 ["coveragePathIgnorePatterns"]
  LOADB R4 0
  SETTABLEKS R4 R3 K12 ["expand"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K13 ["globals"]
  LOADB R4 1
  SETTABLEKS R4 R3 K14 ["injectGlobals"]
  LOADB R4 0
  SETTABLEKS R4 R3 K15 ["listTests"]
  LOADN R4 5
  SETTABLEKS R4 R3 K16 ["maxConcurrency"]
  LOADK R4 K17 ["50%"]
  SETTABLEKS R4 R3 K18 ["maxWorkers"]
  LOADB R4 0
  SETTABLEKS R4 R3 K19 ["mockDataModel"]
  LOADB R4 0
  SETTABLEKS R4 R3 K20 ["noStackTrace"]
  LOADB R4 0
  SETTABLEKS R4 R3 K21 ["notify"]
  LOADB R4 1
  SETTABLEKS R4 R3 K22 ["oldFunctionSpying"]
  LOADB R4 0
  SETTABLEKS R4 R3 K23 ["passWithNoTests"]
  LOADB R4 0
  SETTABLEKS R4 R3 K24 ["resetMocks"]
  LOADB R4 0
  SETTABLEKS R4 R3 K25 ["resetModules"]
  LOADB R4 0
  SETTABLEKS R4 R3 K26 ["restoreMocks"]
  NEWTABLE R4 0 1
  LOADK R5 K27 ["<rootDir>"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K28 ["roots"]
  LOADB R4 0
  SETTABLEKS R4 R3 K29 ["runTestsByPath"]
  LOADK R4 K30 ["jest-runner"]
  SETTABLEKS R4 R3 K31 ["runner"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K32 ["setupFiles"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K33 ["setupFilesAfterEnv"]
  LOADB R4 0
  SETTABLEKS R4 R3 K34 ["skipFilter"]
  LOADN R4 5
  SETTABLEKS R4 R3 K35 ["slowTestThreshold"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K36 ["snapshotSerializers"]
  GETTABLEKS R4 R0 K37 ["JestEnvironmentLuau"]
  SETTABLEKS R4 R3 K38 ["testEnvironment"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K39 ["testEnvironmentOptions"]
  LOADN R4 1
  SETTABLEKS R4 R3 K40 ["testFailureExitCode"]
  LOADB R4 0
  SETTABLEKS R4 R3 K41 ["testLocationInResults"]
  NEWTABLE R4 0 2
  LOADK R5 K42 ["**/__tests__/**/*"]
  LOADK R6 K43 ["**/?(*.)+(spec|test)?(.lua|.luau)"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K44 ["testMatch"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K45 ["testPathIgnorePatterns"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K46 ["testRegex"]
  LOADK R4 K47 ["real"]
  SETTABLEKS R4 R3 K48 ["timers"]
  LOADB R4 0
  SETTABLEKS R4 R3 K49 ["useStderr"]
  LOADB R4 0
  SETTABLEKS R4 R3 K50 ["watch"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K51 ["watchPathIgnorePatterns"]
  LOADB R4 1
  SETTABLEKS R4 R3 K52 ["watchman"]
  SETTABLEKS R3 R1 K53 ["default"]
  RETURN R1 1
