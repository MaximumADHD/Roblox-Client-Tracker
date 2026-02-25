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
       55 SETTABLEKS                       R4 R3 K19 ["noStackTrace"]
       57 LOADB                            R4 0
       58 SETTABLEKS                       R4 R3 K20 ["notify"]
       60 LOADB                            R4 0
       61 SETTABLEKS                       R4 R3 K21 ["passWithNoTests"]
       63 LOADB                            R4 0
       64 SETTABLEKS                       R4 R3 K22 ["resetMocks"]
       66 LOADB                            R4 0
       67 SETTABLEKS                       R4 R3 K23 ["resetModules"]
       69 LOADB                            R4 0
       70 SETTABLEKS                       R4 R3 K24 ["restoreMocks"]
       72 NEWTABLE                         R4 0 1
       74 LOADK                            R5 K25 ["<rootDir>"]
       75 SETLIST                          R4 R5 1 [1]
       77 SETTABLEKS                       R4 R3 K26 ["roots"]
       79 LOADB                            R4 0
       80 SETTABLEKS                       R4 R3 K27 ["runTestsByPath"]
       82 LOADK                            R4 K28 ["jest-runner"]
       83 SETTABLEKS                       R4 R3 K29 ["runner"]
       85 NEWTABLE                         R4 0 0
       87 SETTABLEKS                       R4 R3 K30 ["setupFiles"]
       89 NEWTABLE                         R4 0 0
       91 SETTABLEKS                       R4 R3 K31 ["setupFilesAfterEnv"]
       93 LOADB                            R4 0
       94 SETTABLEKS                       R4 R3 K32 ["skipFilter"]
       96 LOADN                            R4 5
       97 SETTABLEKS                       R4 R3 K33 ["slowTestThreshold"]
       99 NEWTABLE                         R4 0 0
      101 SETTABLEKS                       R4 R3 K34 ["snapshotSerializers"]
      103 GETTABLEKS                       R4 R0 K35 ["JestEnvironmentLuau"]
      105 SETTABLEKS                       R4 R3 K36 ["testEnvironment"]
      107 NEWTABLE                         R4 0 0
      109 SETTABLEKS                       R4 R3 K37 ["testEnvironmentOptions"]
      111 LOADN                            R4 1
      112 SETTABLEKS                       R4 R3 K38 ["testFailureExitCode"]
      114 LOADB                            R4 0
      115 SETTABLEKS                       R4 R3 K39 ["testLocationInResults"]
      117 NEWTABLE                         R4 0 2
      119 LOADK                            R5 K40 ["**/__tests__/**/*"]
      120 LOADK                            R6 K41 ["**/?(*.)+(spec|test)"]
      121 SETLIST                          R4 R5 2 [1]
      123 SETTABLEKS                       R4 R3 K42 ["testMatch"]
      125 NEWTABLE                         R4 0 0
      127 SETTABLEKS                       R4 R3 K43 ["testPathIgnorePatterns"]
      129 NEWTABLE                         R4 0 0
      131 SETTABLEKS                       R4 R3 K44 ["testRegex"]
      133 LOADK                            R4 K45 ["real"]
      134 SETTABLEKS                       R4 R3 K46 ["timers"]
      136 LOADB                            R4 0
      137 SETTABLEKS                       R4 R3 K47 ["useStderr"]
      139 LOADB                            R4 0
      140 SETTABLEKS                       R4 R3 K48 ["watch"]
      142 NEWTABLE                         R4 0 0
      144 SETTABLEKS                       R4 R3 K49 ["watchPathIgnorePatterns"]
      146 LOADB                            R4 1
      147 SETTABLEKS                       R4 R3 K50 ["watchman"]
      149 SETTABLEKS                       R3 R1 K51 ["default"]
      151 RETURN                           R1 1
