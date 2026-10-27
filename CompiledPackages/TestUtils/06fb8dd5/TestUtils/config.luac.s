PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["delete"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["new"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["keys"]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 -1
       12 CALL                             R2 -1 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["forEach"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K1 ["keys"]
       19 GETUPVAL                         R5 3
       20 CALL                             R4 1 1
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R2
       23 CALL                             R3 2 0
       24 GETTABLEKS                       R3 R2 K3 ["size"]
       26 LOADN                            R4 0
       27 JUMPIFNOTLT                      R4 R3 ; [+13]
       29 GETIMPORT                        R3 K5 [error]
       31 LOADK                            R5 K6 ["Properties that are not part of GlobalConfig type were passed:"]
       32 GETUPVAL                         R6 4
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K7 ["from"]
       36 MOVE                             R8 R2
       37 CALL                             R7 1 -1
       38 CALL                             R6 -1 1
       39 CONCAT                           R4 R5 R6
       40 CALL                             R3 1 0
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R3 R3 K8 ["assign"]
       44 NEWTABLE                         R4 0 0
       46 GETUPVAL                         R5 3
       47 MOVE                             R6 R1
       48 CALL                             R3 3 -1
       49 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["delete"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["new"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["keys"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 -1
       13 CALL                             R1 -1 1
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K2 ["forEach"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K1 ["keys"]
       20 GETUPVAL                         R4 3
       21 CALL                             R3 1 1
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R1
       24 CALL                             R2 2 0
       25 GETTABLEKS                       R2 R1 K3 ["size"]
       27 LOADN                            R3 0
       28 JUMPIFNOTLT                      R3 R2 ; [+13]
       30 GETIMPORT                        R2 K5 [error]
       32 LOADK                            R4 K6 ["Properties that are not part of ProjectConfig type were passed:"]
       33 GETUPVAL                         R5 4
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K7 ["from"]
       37 MOVE                             R7 R1
       38 CALL                             R6 1 -1
       39 CALL                             R5 -1 1
       40 CONCAT                           R3 R4 R5
       41 CALL                             R2 1 0
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K8 ["assign"]
       45 NEWTABLE                         R3 0 0
       47 GETUPVAL                         R4 3
       48 MOVE                             R5 R0
       49 CALL                             R2 3 -1
       50 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["JestTypes"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["LuauPolyfill"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K7 ["Array"]
       19 GETTABLEKS                       R5 R3 K8 ["Object"]
       21 GETTABLEKS                       R6 R3 K9 ["util"]
       23 GETTABLEKS                       R6 R6 K10 ["inspect"]
       25 GETTABLEKS                       R7 R3 K11 ["Set"]
       27 NEWTABLE                         R8 2 0
       29 NEWTABLE                         R9 64 0
       31 LOADN                            R10 0
       32 SETTABLEKS                       R10 R9 K12 ["bail"]
       34 LOADB                            R10 0
       35 SETTABLEKS                       R10 R9 K13 ["changedFilesWithAncestor"]
       37 LOADK                            R10 K14 [""]
       38 SETTABLEKS                       R10 R9 K15 ["changedSince"]
       40 LOADB                            R10 0
       41 SETTABLEKS                       R10 R9 K16 ["ci"]
       43 LOADB                            R10 0
       44 SETTABLEKS                       R10 R9 K17 ["collectCoverage"]
       46 NEWTABLE                         R10 0 0
       48 SETTABLEKS                       R10 R9 K18 ["collectCoverageFrom"]
       50 GETTABLEKS                       R10 R5 K19 ["None"]
       52 SETTABLEKS                       R10 R9 K20 ["collectCoverageOnlyFrom"]
       54 LOADK                            R10 K21 ["coverage"]
       55 SETTABLEKS                       R10 R9 K22 ["coverageDirectory"]
       57 LOADK                            R10 K23 ["babel"]
       58 SETTABLEKS                       R10 R9 K24 ["coverageProvider"]
       60 NEWTABLE                         R10 0 0
       62 SETTABLEKS                       R10 R9 K25 ["coverageReporters"]
       64 DUPTABLE                         R10 K27 [{"global"}]
       65 NEWTABLE                         R11 0 0
       67 SETTABLEKS                       R11 R10 K26 ["global"]
       69 SETTABLEKS                       R10 R9 K28 ["coverageThreshold"]
       71 LOADB                            R10 0
       72 SETTABLEKS                       R10 R9 K29 ["detectLeaks"]
       74 LOADB                            R10 0
       75 SETTABLEKS                       R10 R9 K30 ["detectOpenHandles"]
       77 LOADB                            R10 0
       78 SETTABLEKS                       R10 R9 K31 ["errorOnDeprecated"]
       80 LOADB                            R10 0
       81 SETTABLEKS                       R10 R9 K32 ["expand"]
       83 GETTABLEKS                       R10 R5 K19 ["None"]
       85 SETTABLEKS                       R10 R9 K33 ["filter"]
       87 LOADB                            R10 0
       88 SETTABLEKS                       R10 R9 K34 ["findRelatedTests"]
       90 LOADB                            R10 0
       91 SETTABLEKS                       R10 R9 K35 ["forceExit"]
       93 GETTABLEKS                       R10 R5 K19 ["None"]
       95 SETTABLEKS                       R10 R9 K36 ["globalSetup"]
       97 GETTABLEKS                       R10 R5 K19 ["None"]
       99 SETTABLEKS                       R10 R9 K37 ["globalTeardown"]
      101 LOADB                            R10 0
      102 SETTABLEKS                       R10 R9 K38 ["json"]
      104 LOADB                            R10 0
      105 SETTABLEKS                       R10 R9 K39 ["lastCommit"]
      107 LOADB                            R10 0
      108 SETTABLEKS                       R10 R9 K40 ["listTests"]
      110 LOADB                            R10 0
      111 SETTABLEKS                       R10 R9 K41 ["logHeapUsage"]
      113 LOADN                            R10 5
      114 SETTABLEKS                       R10 R9 K42 ["maxConcurrency"]
      116 LOADN                            R10 2
      117 SETTABLEKS                       R10 R9 K43 ["maxWorkers"]
      119 GETTABLEKS                       R10 R5 K19 ["None"]
      121 SETTABLEKS                       R10 R9 K44 ["noSCM"]
      123 LOADB                            R10 0
      124 SETTABLEKS                       R10 R9 K45 ["noStackTrace"]
      126 NEWTABLE                         R10 0 0
      128 SETTABLEKS                       R10 R9 K46 ["nonFlagArgs"]
      130 LOADB                            R10 0
      131 SETTABLEKS                       R10 R9 K47 ["notify"]
      133 LOADK                            R10 K48 ["failure-change"]
      134 SETTABLEKS                       R10 R9 K49 ["notifyMode"]
      136 LOADB                            R10 0
      137 SETTABLEKS                       R10 R9 K50 ["onlyChanged"]
      139 LOADB                            R10 0
      140 SETTABLEKS                       R10 R9 K51 ["onlyFailures"]
      142 GETTABLEKS                       R10 R5 K19 ["None"]
      144 SETTABLEKS                       R10 R9 K52 ["outputFile"]
      146 LOADB                            R10 0
      147 SETTABLEKS                       R10 R9 K53 ["passWithNoTests"]
      149 NEWTABLE                         R10 0 0
      151 SETTABLEKS                       R10 R9 K54 ["projects"]
      153 GETTABLEKS                       R10 R5 K19 ["None"]
      155 SETTABLEKS                       R10 R9 K55 ["replname"]
      157 NEWTABLE                         R10 0 0
      159 SETTABLEKS                       R10 R9 K56 ["reporters"]
      161 LOADK                            R10 K57 ["/test_root_dir/"]
      162 SETTABLEKS                       R10 R9 K58 ["rootDir"]
      164 LOADB                            R10 0
      165 SETTABLEKS                       R10 R9 K59 ["runTestsByPath"]
      167 LOADB                            R10 0
      168 SETTABLEKS                       R10 R9 K60 ["silent"]
      170 LOADB                            R10 0
      171 SETTABLEKS                       R10 R9 K61 ["skipFilter"]
      173 NEWTABLE                         R10 0 0
      175 SETTABLEKS                       R10 R9 K62 ["snapshotFormat"]
      177 LOADN                            R10 1
      178 SETTABLEKS                       R10 R9 K63 ["testFailureExitCode"]
      180 LOADK                            R10 K14 [""]
      181 SETTABLEKS                       R10 R9 K64 ["testNamePattern"]
      183 LOADK                            R10 K14 [""]
      184 SETTABLEKS                       R10 R9 K65 ["testPathPattern"]
      186 GETTABLEKS                       R10 R5 K19 ["None"]
      188 SETTABLEKS                       R10 R9 K66 ["testResultsProcessor"]
      190 LOADK                            R10 K67 ["@jest/test-sequencer"]
      191 SETTABLEKS                       R10 R9 K68 ["testSequencer"]
      193 LOADN                            R10 5000
      194 SETTABLEKS                       R10 R9 K69 ["testTimeout"]
      196 LOADK                            R10 K70 ["none"]
      197 SETTABLEKS                       R10 R9 K71 ["updateSnapshot"]
      199 LOADB                            R10 0
      200 SETTABLEKS                       R10 R9 K72 ["useStderr"]
      202 LOADB                            R10 0
      203 SETTABLEKS                       R10 R9 K73 ["verbose"]
      205 LOADB                            R10 0
      206 SETTABLEKS                       R10 R9 K74 ["watch"]
      208 LOADB                            R10 0
      209 SETTABLEKS                       R10 R9 K75 ["watchAll"]
      211 NEWTABLE                         R10 0 0
      213 SETTABLEKS                       R10 R9 K76 ["watchPlugins"]
      215 LOADB                            R10 0
      216 SETTABLEKS                       R10 R9 K77 ["watchman"]
      218 NEWTABLE                         R10 64 0
      220 LOADB                            R11 0
      221 SETTABLEKS                       R11 R10 K78 ["automock"]
      223 LOADB                            R11 0
      224 SETTABLEKS                       R11 R10 K79 ["cache"]
      226 LOADB                            R11 0
      227 SETTABLEKS                       R11 R10 K80 ["clearMocks"]
      229 NEWTABLE                         R11 0 0
      231 SETTABLEKS                       R11 R10 K81 ["coveragePathIgnorePatterns"]
      233 LOADK                            R11 K57 ["/test_root_dir/"]
      234 SETTABLEKS                       R11 R10 K82 ["cwd"]
      236 LOADB                            R11 0
      237 SETTABLEKS                       R11 R10 K29 ["detectLeaks"]
      239 LOADB                            R11 0
      240 SETTABLEKS                       R11 R10 K30 ["detectOpenHandles"]
      242 GETTABLEKS                       R11 R5 K19 ["None"]
      244 SETTABLEKS                       R11 R10 K83 ["displayName"]
      246 LOADB                            R11 0
      247 SETTABLEKS                       R11 R10 K31 ["errorOnDeprecated"]
      249 NEWTABLE                         R11 0 0
      251 SETTABLEKS                       R11 R10 K84 ["extensionsToTreatAsEsm"]
      253 DUPTABLE                         R11 K87 [{["enableGlobally"] = False}]
      254 SETTABLEKS                       R11 R10 K88 ["fakeTimers"]
      256 GETTABLEKS                       R11 R5 K19 ["None"]
      258 SETTABLEKS                       R11 R10 K33 ["filter"]
      260 NEWTABLE                         R11 0 0
      262 SETTABLEKS                       R11 R10 K89 ["forceCoverageMatch"]
      264 GETTABLEKS                       R11 R5 K19 ["None"]
      266 SETTABLEKS                       R11 R10 K36 ["globalSetup"]
      268 GETTABLEKS                       R11 R5 K19 ["None"]
      270 SETTABLEKS                       R11 R10 K37 ["globalTeardown"]
      272 NEWTABLE                         R11 0 0
      274 SETTABLEKS                       R11 R10 K90 ["globals"]
      276 NEWTABLE                         R11 0 0
      278 SETTABLEKS                       R11 R10 K91 ["haste"]
      280 LOADK                            R11 K92 ["test_name"]
      281 SETTABLEKS                       R11 R10 K93 ["id"]
      283 LOADB                            R11 1
      284 SETTABLEKS                       R11 R10 K94 ["injectGlobals"]
      286 NEWTABLE                         R11 0 0
      288 SETTABLEKS                       R11 R10 K95 ["moduleDirectories"]
      290 NEWTABLE                         R11 0 1
      292 LOADK                            R12 K96 ["js"]
      293 SETLIST                          R11 R12 1 [1]
      295 SETTABLEKS                       R11 R10 K97 ["moduleFileExtensions"]
      297 NEWTABLE                         R11 0 0
      299 SETTABLEKS                       R11 R10 K98 ["moduleNameMapper"]
      301 NEWTABLE                         R11 0 0
      303 SETTABLEKS                       R11 R10 K99 ["modulePathIgnorePatterns"]
      305 NEWTABLE                         R11 0 0
      307 SETTABLEKS                       R11 R10 K100 ["modulePaths"]
      309 LOADB                            R11 0
      310 SETTABLEKS                       R11 R10 K101 ["mockDataModel"]
      312 LOADB                            R11 1
      313 SETTABLEKS                       R11 R10 K102 ["oldFunctionSpying"]
      315 LOADK                            R11 K103 ["prettier"]
      316 SETTABLEKS                       R11 R10 K104 ["prettierPath"]
      318 LOADB                            R11 0
      319 SETTABLEKS                       R11 R10 K105 ["resetMocks"]
      321 LOADB                            R11 0
      322 SETTABLEKS                       R11 R10 K106 ["resetModules"]
      324 GETTABLEKS                       R11 R5 K19 ["None"]
      326 SETTABLEKS                       R11 R10 K107 ["resolver"]
      328 LOADB                            R11 0
      329 SETTABLEKS                       R11 R10 K108 ["restoreMocks"]
      331 LOADK                            R11 K57 ["/test_root_dir/"]
      332 SETTABLEKS                       R11 R10 K58 ["rootDir"]
      334 NEWTABLE                         R11 0 0
      336 SETTABLEKS                       R11 R10 K109 ["roots"]
      338 LOADK                            R11 K110 ["jest-runner"]
      339 SETTABLEKS                       R11 R10 K111 ["runner"]
      341 LOADK                            R11 K112 ["/test_module_loader_path"]
      342 SETTABLEKS                       R11 R10 K113 ["runtime"]
      344 NEWTABLE                         R11 0 0
      346 SETTABLEKS                       R11 R10 K114 ["sandboxInjectedGlobals"]
      348 NEWTABLE                         R11 0 0
      350 SETTABLEKS                       R11 R10 K115 ["setupFiles"]
      352 NEWTABLE                         R11 0 0
      354 SETTABLEKS                       R11 R10 K116 ["setupFilesAfterEnv"]
      356 LOADB                            R11 0
      357 SETTABLEKS                       R11 R10 K61 ["skipFilter"]
      359 LOADB                            R11 0
      360 SETTABLEKS                       R11 R10 K117 ["skipNodeResolution"]
      362 LOADN                            R11 5
      363 SETTABLEKS                       R11 R10 K118 ["slowTestThreshold"]
      365 NEWTABLE                         R11 0 0
      367 SETTABLEKS                       R11 R10 K62 ["snapshotFormat"]
      369 GETTABLEKS                       R11 R5 K19 ["None"]
      371 SETTABLEKS                       R11 R10 K119 ["snapshotResolver"]
      373 NEWTABLE                         R11 0 0
      375 SETTABLEKS                       R11 R10 K120 ["snapshotSerializers"]
      377 GETTABLEKS                       R11 R1 K121 ["JestEnvironmentLuau"]
      379 SETTABLEKS                       R11 R10 K122 ["testEnvironment"]
      381 NEWTABLE                         R11 0 0
      383 SETTABLEKS                       R11 R10 K123 ["testEnvironmentOptions"]
      385 LOADB                            R11 0
      386 SETTABLEKS                       R11 R10 K124 ["testLocationInResults"]
      388 NEWTABLE                         R11 0 0
      390 SETTABLEKS                       R11 R10 K125 ["testMatch"]
      392 NEWTABLE                         R11 0 0
      394 SETTABLEKS                       R11 R10 K126 ["testPathIgnorePatterns"]
      396 NEWTABLE                         R11 0 1
      398 LOADK                            R12 K127 ["\\.test\\.js$"]
      399 SETLIST                          R11 R12 1 [1]
      401 SETTABLEKS                       R11 R10 K128 ["testRegex"]
      403 LOADK                            R11 K129 ["jest-circus/runner"]
      404 SETTABLEKS                       R11 R10 K130 ["testRunner"]
      406 LOADK                            R11 K131 ["http =//localhost"]
      407 SETTABLEKS                       R11 R10 K132 ["testURL"]
      409 LOADK                            R11 K133 ["real"]
      410 SETTABLEKS                       R11 R10 K134 ["timers"]
      412 NEWTABLE                         R11 0 0
      414 SETTABLEKS                       R11 R10 K135 ["transform"]
      416 NEWTABLE                         R11 0 0
      418 SETTABLEKS                       R11 R10 K136 ["transformIgnorePatterns"]
      420 GETTABLEKS                       R11 R5 K19 ["None"]
      422 SETTABLEKS                       R11 R10 K137 ["unmockedModulePathPatterns"]
      424 NEWTABLE                         R11 0 0
      426 SETTABLEKS                       R11 R10 K138 ["watchPathIgnorePatterns"]
      428 DUPCLOSURE                       R11 K139 [PROTO_1]
      429 CAPTURE                          VAL R7
      430 CAPTURE                          VAL R5
      431 CAPTURE                          VAL R4
      432 CAPTURE                          VAL R9
      433 CAPTURE                          VAL R6
      434 SETTABLEKS                       R11 R8 K140 ["makeGlobalConfig"]
      436 DUPCLOSURE                       R11 K141 [PROTO_3]
      437 CAPTURE                          VAL R7
      438 CAPTURE                          VAL R5
      439 CAPTURE                          VAL R4
      440 CAPTURE                          VAL R10
      441 CAPTURE                          VAL R6
      442 SETTABLEKS                       R11 R8 K142 ["makeProjectConfig"]
      444 RETURN                           R8 1
