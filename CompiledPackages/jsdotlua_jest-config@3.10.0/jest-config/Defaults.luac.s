MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K5 ["jest-types"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  NEWTABLE R2 64 0
  LOADB R3 0
  SETTABLEKS R3 R2 K7 ["automock"]
  LOADN R3 0
  SETTABLEKS R3 R2 K8 ["bail"]
  LOADB R3 0
  SETTABLEKS R3 R2 K9 ["changedFilesWithAncestor"]
  LOADB R3 0
  SETTABLEKS R3 R2 K10 ["ci"]
  LOADB R3 0
  SETTABLEKS R3 R2 K11 ["clearMocks"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K12 ["coveragePathIgnorePatterns"]
  LOADB R3 0
  SETTABLEKS R3 R2 K13 ["expand"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K14 ["globals"]
  LOADB R3 1
  SETTABLEKS R3 R2 K15 ["injectGlobals"]
  LOADB R3 0
  SETTABLEKS R3 R2 K16 ["listTests"]
  LOADN R3 5
  SETTABLEKS R3 R2 K17 ["maxConcurrency"]
  LOADK R3 K18 ["50%"]
  SETTABLEKS R3 R2 K19 ["maxWorkers"]
  LOADB R3 0
  SETTABLEKS R3 R2 K20 ["noStackTrace"]
  LOADB R3 0
  SETTABLEKS R3 R2 K21 ["notify"]
  LOADB R3 1
  SETTABLEKS R3 R2 K22 ["oldFunctionSpying"]
  LOADB R3 0
  SETTABLEKS R3 R2 K23 ["passWithNoTests"]
  LOADB R3 0
  SETTABLEKS R3 R2 K24 ["resetMocks"]
  LOADB R3 0
  SETTABLEKS R3 R2 K25 ["resetModules"]
  LOADB R3 0
  SETTABLEKS R3 R2 K26 ["restoreMocks"]
  NEWTABLE R3 0 1
  LOADK R4 K27 ["<rootDir>"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K28 ["roots"]
  LOADB R3 0
  SETTABLEKS R3 R2 K29 ["runTestsByPath"]
  LOADK R3 K30 ["jest-runner"]
  SETTABLEKS R3 R2 K31 ["runner"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K32 ["setupFiles"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K33 ["setupFilesAfterEnv"]
  LOADB R3 0
  SETTABLEKS R3 R2 K34 ["skipFilter"]
  LOADN R3 5
  SETTABLEKS R3 R2 K35 ["slowTestThreshold"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K36 ["snapshotSerializers"]
  LOADK R3 K37 ["jest-environment-roblox"]
  SETTABLEKS R3 R2 K38 ["testEnvironment"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K39 ["testEnvironmentOptions"]
  LOADN R3 1
  SETTABLEKS R3 R2 K40 ["testFailureExitCode"]
  LOADB R3 0
  SETTABLEKS R3 R2 K41 ["testLocationInResults"]
  NEWTABLE R3 0 2
  LOADK R4 K42 ["**/__tests__/**/*"]
  LOADK R5 K43 ["**/?(*.)+(spec|test)"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K44 ["testMatch"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K45 ["testPathIgnorePatterns"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K46 ["testRegex"]
  LOADK R3 K47 ["real"]
  SETTABLEKS R3 R2 K48 ["timers"]
  LOADB R3 0
  SETTABLEKS R3 R2 K49 ["useStderr"]
  LOADB R3 0
  SETTABLEKS R3 R2 K50 ["watch"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K51 ["watchPathIgnorePatterns"]
  LOADB R3 1
  SETTABLEKS R3 R2 K52 ["watchman"]
  SETTABLEKS R2 R0 K53 ["default"]
  RETURN R0 1
