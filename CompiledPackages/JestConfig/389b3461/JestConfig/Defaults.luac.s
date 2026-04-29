MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
       60 LOADN                            R4 0
       61 SETTABLEKS                       R4 R3 K21 ["stackDepth"]
       63 LOADB                            R4 0
       64 SETTABLEKS                       R4 R3 K22 ["notify"]
       66 LOADB                            R4 1
       67 SETTABLEKS                       R4 R3 K23 ["oldFunctionSpying"]
       69 LOADB                            R4 0
       70 SETTABLEKS                       R4 R3 K24 ["passWithNoTests"]
       72 LOADB                            R4 0
       73 SETTABLEKS                       R4 R3 K25 ["resetMocks"]
       75 LOADB                            R4 0
       76 SETTABLEKS                       R4 R3 K26 ["resetModules"]
       78 LOADB                            R4 0
       79 SETTABLEKS                       R4 R3 K27 ["restoreMocks"]
       81 NEWTABLE                         R4 0 1
       83 LOADK                            R5 K28 ["<rootDir>"]
       84 SETLIST                          R4 R5 1 [1]
       86 SETTABLEKS                       R4 R3 K29 ["roots"]
       88 LOADB                            R4 0
       89 SETTABLEKS                       R4 R3 K30 ["runTestsByPath"]
       91 LOADK                            R4 K31 ["jest-runner"]
       92 SETTABLEKS                       R4 R3 K32 ["runner"]
       94 NEWTABLE                         R4 0 0
       96 SETTABLEKS                       R4 R3 K33 ["setupFiles"]
       98 NEWTABLE                         R4 0 0
      100 SETTABLEKS                       R4 R3 K34 ["setupFilesAfterEnv"]
      102 LOADB                            R4 0
      103 SETTABLEKS                       R4 R3 K35 ["skipFilter"]
      105 LOADN                            R4 5
      106 SETTABLEKS                       R4 R3 K36 ["slowTestThreshold"]
      108 NEWTABLE                         R4 0 0
      110 SETTABLEKS                       R4 R3 K37 ["snapshotSerializers"]
      112 GETTABLEKS                       R4 R0 K38 ["JestEnvironmentLuau"]
      114 SETTABLEKS                       R4 R3 K39 ["testEnvironment"]
      116 NEWTABLE                         R4 0 0
      118 SETTABLEKS                       R4 R3 K40 ["testEnvironmentOptions"]
      120 LOADN                            R4 1
      121 SETTABLEKS                       R4 R3 K41 ["testFailureExitCode"]
      123 LOADB                            R4 0
      124 SETTABLEKS                       R4 R3 K42 ["testLocationInResults"]
      126 NEWTABLE                         R4 0 2
      128 LOADK                            R5 K43 ["**/__tests__/**/*"]
      129 LOADK                            R6 K44 ["**/?(*.)+(spec|test)?(.lua|.luau)"]
      130 SETLIST                          R4 R5 2 [1]
      132 SETTABLEKS                       R4 R3 K45 ["testMatch"]
      134 NEWTABLE                         R4 0 0
      136 SETTABLEKS                       R4 R3 K46 ["testPathIgnorePatterns"]
      138 NEWTABLE                         R4 0 0
      140 SETTABLEKS                       R4 R3 K47 ["testRegex"]
      142 LOADK                            R4 K48 ["real"]
      143 SETTABLEKS                       R4 R3 K49 ["timers"]
      145 LOADB                            R4 0
      146 SETTABLEKS                       R4 R3 K50 ["useStderr"]
      148 LOADB                            R4 0
      149 SETTABLEKS                       R4 R3 K51 ["watch"]
      151 NEWTABLE                         R4 0 0
      153 SETTABLEKS                       R4 R3 K52 ["watchPathIgnorePatterns"]
      155 LOADB                            R4 1
      156 SETTABLEKS                       R4 R3 K53 ["watchman"]
      158 SETTABLEKS                       R3 R1 K54 ["default"]
      160 RETURN                           R1 1
