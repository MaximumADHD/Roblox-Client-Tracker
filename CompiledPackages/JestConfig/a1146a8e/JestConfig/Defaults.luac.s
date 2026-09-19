MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 NEWTABLE                         R1 1 0
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["JestTypes"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 64 0
       16 LOADB                            R4 0
       17 SETTABLEKS                       R4 R3 K6 ["automock"]
       19 LOADN                            R4 0
       20 SETTABLEKS                       R4 R3 K7 ["bail"]
       22 LOADB                            R4 0
       23 SETTABLEKS                       R4 R3 K8 ["changedFilesWithAncestor"]
       25 LOADB                            R4 0
       26 SETTABLEKS                       R4 R3 K9 ["ci"]
       28 LOADB                            R4 0
       29 SETTABLEKS                       R4 R3 K10 ["clearMocks"]
       31 NEWTABLE                         R4 0 0
       33 SETTABLEKS                       R4 R3 K11 ["coveragePathIgnorePatterns"]
       35 LOADB                            R4 0
       36 SETTABLEKS                       R4 R3 K12 ["expand"]
       38 NEWTABLE                         R4 0 0
       40 SETTABLEKS                       R4 R3 K13 ["globals"]
       42 LOADB                            R4 1
       43 SETTABLEKS                       R4 R3 K14 ["injectGlobals"]
       45 LOADB                            R4 0
       46 SETTABLEKS                       R4 R3 K15 ["listTests"]
       48 LOADN                            R4 5
       49 SETTABLEKS                       R4 R3 K16 ["maxConcurrency"]
       51 LOADK                            R4 K17 ["50%"]
       52 SETTABLEKS                       R4 R3 K18 ["maxWorkers"]
       54 LOADB                            R4 0
       55 SETTABLEKS                       R4 R3 K19 ["mockDataModel"]
       57 LOADB                            R4 0
       58 SETTABLEKS                       R4 R3 K20 ["noStackTrace"]
       60 LOADB                            R4 0
       61 SETTABLEKS                       R4 R3 K21 ["notify"]
       63 LOADB                            R4 1
       64 SETTABLEKS                       R4 R3 K22 ["oldFunctionSpying"]
       66 LOADB                            R4 0
       67 SETTABLEKS                       R4 R3 K23 ["passWithNoTests"]
       69 LOADB                            R4 0
       70 SETTABLEKS                       R4 R3 K24 ["resetMocks"]
       72 LOADB                            R4 0
       73 SETTABLEKS                       R4 R3 K25 ["resetModules"]
       75 LOADB                            R4 0
       76 SETTABLEKS                       R4 R3 K26 ["restoreMocks"]
       78 NEWTABLE                         R4 0 1
       80 LOADK                            R5 K27 ["<rootDir>"]
       81 SETLIST                          R4 R5 1 [1]
       83 SETTABLEKS                       R4 R3 K28 ["roots"]
       85 LOADB                            R4 0
       86 SETTABLEKS                       R4 R3 K29 ["runTestsByPath"]
       88 LOADK                            R4 K30 ["jest-runner"]
       89 SETTABLEKS                       R4 R3 K31 ["runner"]
       91 NEWTABLE                         R4 0 0
       93 SETTABLEKS                       R4 R3 K32 ["setupFiles"]
       95 NEWTABLE                         R4 0 0
       97 SETTABLEKS                       R4 R3 K33 ["setupFilesAfterEnv"]
       99 LOADB                            R4 0
      100 SETTABLEKS                       R4 R3 K34 ["skipFilter"]
      102 LOADN                            R4 5
      103 SETTABLEKS                       R4 R3 K35 ["slowTestThreshold"]
      105 NEWTABLE                         R4 0 0
      107 SETTABLEKS                       R4 R3 K36 ["snapshotSerializers"]
      109 GETTABLEKS                       R4 R0 K37 ["JestEnvironmentLuau"]
      111 SETTABLEKS                       R4 R3 K38 ["testEnvironment"]
      113 NEWTABLE                         R4 0 0
      115 SETTABLEKS                       R4 R3 K39 ["testEnvironmentOptions"]
      117 LOADN                            R4 1
      118 SETTABLEKS                       R4 R3 K40 ["testFailureExitCode"]
      120 LOADB                            R4 0
      121 SETTABLEKS                       R4 R3 K41 ["testLocationInResults"]
      123 NEWTABLE                         R4 0 2
      125 LOADK                            R5 K42 ["**/__tests__/**/*"]
      126 LOADK                            R6 K43 ["**/?(*.)+(spec|test)?(.lua|.luau)"]
      127 SETLIST                          R4 R5 2 [1]
      129 SETTABLEKS                       R4 R3 K44 ["testMatch"]
      131 NEWTABLE                         R4 0 0
      133 SETTABLEKS                       R4 R3 K45 ["testPathIgnorePatterns"]
      135 NEWTABLE                         R4 0 0
      137 SETTABLEKS                       R4 R3 K46 ["testRegex"]
      139 LOADK                            R4 K47 ["real"]
      140 SETTABLEKS                       R4 R3 K48 ["timers"]
      142 LOADB                            R4 0
      143 SETTABLEKS                       R4 R3 K49 ["useStderr"]
      145 LOADB                            R4 0
      146 SETTABLEKS                       R4 R3 K50 ["watch"]
      148 NEWTABLE                         R4 0 0
      150 SETTABLEKS                       R4 R3 K51 ["watchPathIgnorePatterns"]
      152 LOADB                            R4 1
      153 SETTABLEKS                       R4 R3 K52 ["watchman"]
      155 SETTABLEKS                       R3 R1 K53 ["default"]
      157 RETURN                           R1 1
