PROTO_0:
        0 SETTABLE                         R1 R0 R1
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["reduce"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K1 ["keys"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 DUPCLOSURE                       R3 K2 [PROTO_0]
       14 NEWTABLE                         R4 0 0
       16 CALL                             R1 3 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K3 ["forEach"]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K1 ["keys"]
       23 GETUPVAL                         R4 2
       24 CALL                             R3 1 1
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          VAL R1
       27 CALL                             R2 2 0
       28 LENGTH                           R2 R1
       29 LOADN                            R3 0
       30 JUMPIFNOTLT                      R3 R2 ; [+9]
       32 GETIMPORT                        R2 K5 [error]
       34 LOADK                            R4 K6 ["Properties that are not part of GlobalConfig type were passed:"]
       35 GETUPVAL                         R5 3
       36 MOVE                             R6 R1
       37 CALL                             R5 1 1
       38 CONCAT                           R3 R4 R5
       39 CALL                             R2 1 0
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R2 R3 K7 ["assign"]
       43 GETUPVAL                         R3 2
       44 MOVE                             R4 R0
       45 CALL                             R2 2 -1
       46 RETURN                           R2 -1

PROTO_3:
        0 SETTABLE                         R1 R0 R1
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["reduce"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K1 ["keys"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 DUPCLOSURE                       R3 K2 [PROTO_3]
       14 NEWTABLE                         R4 0 0
       16 CALL                             R1 3 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K3 ["forEach"]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K1 ["keys"]
       23 GETUPVAL                         R4 2
       24 CALL                             R3 1 1
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          VAL R1
       27 CALL                             R2 2 0
       28 LENGTH                           R2 R1
       29 LOADN                            R3 0
       30 JUMPIFNOTLT                      R3 R2 ; [+9]
       32 GETIMPORT                        R2 K5 [error]
       34 LOADK                            R4 K6 ["Properties that are not part of ProjectConfig type were passed:"]
       35 GETUPVAL                         R5 3
       36 MOVE                             R6 R1
       37 CALL                             R5 1 1
       38 CONCAT                           R3 R4 R5
       39 CALL                             R2 1 0
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R2 R3 K7 ["assign"]
       43 GETUPVAL                         R3 2
       44 MOVE                             R4 R0
       45 CALL                             R2 2 -1
       46 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["JestTypes"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["LuauPolyfill"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K7 ["Array"]
       19 GETTABLEKS                       R5 R3 K8 ["Object"]
       21 GETTABLEKS                       R7 R3 K9 ["util"]
       23 GETTABLEKS                       R6 R7 K10 ["inspect"]
       25 NEWTABLE                         R7 2 0
       27 NEWTABLE                         R8 64 0
       29 LOADN                            R9 0
       30 SETTABLEKS                       R9 R8 K11 ["bail"]
       32 LOADB                            R9 0
       33 SETTABLEKS                       R9 R8 K12 ["changedFilesWithAncestor"]
       35 LOADK                            R9 K13 [""]
       36 SETTABLEKS                       R9 R8 K14 ["changedSince"]
       38 LOADB                            R9 0
       39 SETTABLEKS                       R9 R8 K15 ["collectCoverage"]
       41 NEWTABLE                         R9 0 0
       43 SETTABLEKS                       R9 R8 K16 ["collectCoverageFrom"]
       45 LOADNIL                          R9
       46 SETTABLEKS                       R9 R8 K17 ["collectCoverageOnlyFrom"]
       48 LOADK                            R9 K18 ["coverage"]
       49 SETTABLEKS                       R9 R8 K19 ["coverageDirectory"]
       51 LOADK                            R9 K20 ["babel"]
       52 SETTABLEKS                       R9 R8 K21 ["coverageProvider"]
       54 NEWTABLE                         R9 0 0
       56 SETTABLEKS                       R9 R8 K22 ["coverageReporters"]
       58 DUPTABLE                         R9 K24 [{"global"}]
       59 NEWTABLE                         R10 0 0
       61 SETTABLEKS                       R10 R9 K23 ["global"]
       63 SETTABLEKS                       R9 R8 K25 ["coverageThreshold"]
       65 LOADB                            R9 0
       66 SETTABLEKS                       R9 R8 K26 ["detectLeaks"]
       68 LOADB                            R9 0
       69 SETTABLEKS                       R9 R8 K27 ["detectOpenHandles"]
       71 LOADB                            R9 0
       72 SETTABLEKS                       R9 R8 K28 ["errorOnDeprecated"]
       74 LOADB                            R9 0
       75 SETTABLEKS                       R9 R8 K29 ["expand"]
       77 LOADNIL                          R9
       78 SETTABLEKS                       R9 R8 K30 ["filter"]
       80 LOADB                            R9 0
       81 SETTABLEKS                       R9 R8 K31 ["findRelatedTests"]
       83 LOADB                            R9 0
       84 SETTABLEKS                       R9 R8 K32 ["forceExit"]
       86 LOADNIL                          R9
       87 SETTABLEKS                       R9 R8 K33 ["globalSetup"]
       89 LOADNIL                          R9
       90 SETTABLEKS                       R9 R8 K34 ["globalTeardown"]
       92 LOADB                            R9 0
       93 SETTABLEKS                       R9 R8 K35 ["json"]
       95 LOADB                            R9 0
       96 SETTABLEKS                       R9 R8 K36 ["lastCommit"]
       98 LOADB                            R9 0
       99 SETTABLEKS                       R9 R8 K37 ["listTests"]
      101 LOADB                            R9 0
      102 SETTABLEKS                       R9 R8 K38 ["logHeapUsage"]
      104 LOADN                            R9 5
      105 SETTABLEKS                       R9 R8 K39 ["maxConcurrency"]
      107 LOADN                            R9 2
      108 SETTABLEKS                       R9 R8 K40 ["maxWorkers"]
      110 LOADNIL                          R9
      111 SETTABLEKS                       R9 R8 K41 ["noSCM"]
      113 LOADB                            R9 0
      114 SETTABLEKS                       R9 R8 K42 ["noStackTrace"]
      116 NEWTABLE                         R9 0 0
      118 SETTABLEKS                       R9 R8 K43 ["nonFlagArgs"]
      120 LOADB                            R9 0
      121 SETTABLEKS                       R9 R8 K44 ["notify"]
      123 LOADK                            R9 K45 ["failure-change"]
      124 SETTABLEKS                       R9 R8 K46 ["notifyMode"]
      126 LOADB                            R9 0
      127 SETTABLEKS                       R9 R8 K47 ["onlyChanged"]
      129 LOADB                            R9 0
      130 SETTABLEKS                       R9 R8 K48 ["onlyFailures"]
      132 LOADNIL                          R9
      133 SETTABLEKS                       R9 R8 K49 ["outputFile"]
      135 LOADB                            R9 0
      136 SETTABLEKS                       R9 R8 K50 ["passWithNoTests"]
      138 NEWTABLE                         R9 0 0
      140 SETTABLEKS                       R9 R8 K51 ["projects"]
      142 LOADNIL                          R9
      143 SETTABLEKS                       R9 R8 K52 ["replname"]
      145 NEWTABLE                         R9 0 0
      147 SETTABLEKS                       R9 R8 K53 ["reporters"]
      149 LOADK                            R9 K54 ["/test_root_dir/"]
      150 SETTABLEKS                       R9 R8 K55 ["rootDir"]
      152 LOADB                            R9 0
      153 SETTABLEKS                       R9 R8 K56 ["runTestsByPath"]
      155 LOADB                            R9 0
      156 SETTABLEKS                       R9 R8 K57 ["silent"]
      158 LOADB                            R9 0
      159 SETTABLEKS                       R9 R8 K58 ["skipFilter"]
      161 NEWTABLE                         R9 0 0
      163 SETTABLEKS                       R9 R8 K59 ["snapshotFormat"]
      165 LOADN                            R9 1
      166 SETTABLEKS                       R9 R8 K60 ["testFailureExitCode"]
      168 LOADK                            R9 K13 [""]
      169 SETTABLEKS                       R9 R8 K61 ["testNamePattern"]
      171 LOADK                            R9 K13 [""]
      172 SETTABLEKS                       R9 R8 K62 ["testPathPattern"]
      174 LOADNIL                          R9
      175 SETTABLEKS                       R9 R8 K63 ["testResultsProcessor"]
      177 LOADK                            R9 K64 ["@jest/test-sequencer"]
      178 SETTABLEKS                       R9 R8 K65 ["testSequencer"]
      180 LOADN                            R9 136
      181 SETTABLEKS                       R9 R8 K66 ["testTimeout"]
      183 LOADK                            R9 K67 ["none"]
      184 SETTABLEKS                       R9 R8 K68 ["updateSnapshot"]
      186 LOADB                            R9 0
      187 SETTABLEKS                       R9 R8 K69 ["useStderr"]
      189 LOADB                            R9 0
      190 SETTABLEKS                       R9 R8 K70 ["verbose"]
      192 LOADB                            R9 0
      193 SETTABLEKS                       R9 R8 K71 ["watch"]
      195 LOADB                            R9 0
      196 SETTABLEKS                       R9 R8 K72 ["watchAll"]
      198 NEWTABLE                         R9 0 0
      200 SETTABLEKS                       R9 R8 K73 ["watchPlugins"]
      202 LOADB                            R9 0
      203 SETTABLEKS                       R9 R8 K74 ["watchman"]
      205 NEWTABLE                         R9 64 0
      207 LOADB                            R10 0
      208 SETTABLEKS                       R10 R9 K75 ["automock"]
      210 LOADB                            R10 0
      211 SETTABLEKS                       R10 R9 K76 ["cache"]
      213 LOADK                            R10 K77 ["/test_cache_dir/"]
      214 SETTABLEKS                       R10 R9 K78 ["cacheDirectory"]
      216 LOADB                            R10 0
      217 SETTABLEKS                       R10 R9 K79 ["clearMocks"]
      219 NEWTABLE                         R10 0 0
      221 SETTABLEKS                       R10 R9 K80 ["coveragePathIgnorePatterns"]
      223 LOADK                            R10 K54 ["/test_root_dir/"]
      224 SETTABLEKS                       R10 R9 K81 ["cwd"]
      226 LOADB                            R10 0
      227 SETTABLEKS                       R10 R9 K26 ["detectLeaks"]
      229 LOADB                            R10 0
      230 SETTABLEKS                       R10 R9 K27 ["detectOpenHandles"]
      232 LOADNIL                          R10
      233 SETTABLEKS                       R10 R9 K82 ["displayName"]
      235 LOADB                            R10 0
      236 SETTABLEKS                       R10 R9 K28 ["errorOnDeprecated"]
      238 NEWTABLE                         R10 0 0
      240 SETTABLEKS                       R10 R9 K83 ["extensionsToTreatAsEsm"]
      242 NEWTABLE                         R10 0 0
      244 SETTABLEKS                       R10 R9 K84 ["extraGlobals"]
      246 LOADNIL                          R10
      247 SETTABLEKS                       R10 R9 K30 ["filter"]
      249 NEWTABLE                         R10 0 0
      251 SETTABLEKS                       R10 R9 K85 ["forceCoverageMatch"]
      253 LOADNIL                          R10
      254 SETTABLEKS                       R10 R9 K33 ["globalSetup"]
      256 LOADNIL                          R10
      257 SETTABLEKS                       R10 R9 K34 ["globalTeardown"]
      259 NEWTABLE                         R10 0 0
      261 SETTABLEKS                       R10 R9 K86 ["globals"]
      263 NEWTABLE                         R10 0 0
      265 SETTABLEKS                       R10 R9 K87 ["haste"]
      267 LOADB                            R10 1
      268 SETTABLEKS                       R10 R9 K88 ["injectGlobals"]
      270 NEWTABLE                         R10 0 0
      272 SETTABLEKS                       R10 R9 K89 ["moduleDirectories"]
      274 NEWTABLE                         R10 0 1
      276 LOADK                            R11 K90 ["js"]
      277 SETLIST                          R10 R11 1 [1]
      279 SETTABLEKS                       R10 R9 K91 ["moduleFileExtensions"]
      281 LOADK                            R10 K92 ["/test_module_loader_path"]
      282 SETTABLEKS                       R10 R9 K93 ["moduleLoader"]
      284 NEWTABLE                         R10 0 0
      286 SETTABLEKS                       R10 R9 K94 ["moduleNameMapper"]
      288 NEWTABLE                         R10 0 0
      290 SETTABLEKS                       R10 R9 K95 ["modulePathIgnorePatterns"]
      292 NEWTABLE                         R10 0 0
      294 SETTABLEKS                       R10 R9 K96 ["modulePaths"]
      296 LOADK                            R10 K97 ["test_name"]
      297 SETTABLEKS                       R10 R9 K98 ["name"]
      299 LOADK                            R10 K99 ["prettier"]
      300 SETTABLEKS                       R10 R9 K100 ["prettierPath"]
      302 LOADB                            R10 0
      303 SETTABLEKS                       R10 R9 K101 ["resetMocks"]
      305 LOADB                            R10 0
      306 SETTABLEKS                       R10 R9 K102 ["resetModules"]
      308 LOADNIL                          R10
      309 SETTABLEKS                       R10 R9 K103 ["resolver"]
      311 LOADB                            R10 0
      312 SETTABLEKS                       R10 R9 K104 ["restoreMocks"]
      314 LOADK                            R10 K54 ["/test_root_dir/"]
      315 SETTABLEKS                       R10 R9 K55 ["rootDir"]
      317 NEWTABLE                         R10 0 0
      319 SETTABLEKS                       R10 R9 K105 ["roots"]
      321 LOADK                            R10 K106 ["jest-runner"]
      322 SETTABLEKS                       R10 R9 K107 ["runner"]
      324 NEWTABLE                         R10 0 0
      326 SETTABLEKS                       R10 R9 K108 ["setupFiles"]
      328 NEWTABLE                         R10 0 0
      330 SETTABLEKS                       R10 R9 K109 ["setupFilesAfterEnv"]
      332 LOADB                            R10 0
      333 SETTABLEKS                       R10 R9 K58 ["skipFilter"]
      335 LOADB                            R10 0
      336 SETTABLEKS                       R10 R9 K110 ["skipNodeResolution"]
      338 LOADN                            R10 5
      339 SETTABLEKS                       R10 R9 K111 ["slowTestThreshold"]
      341 NEWTABLE                         R10 0 0
      343 SETTABLEKS                       R10 R9 K59 ["snapshotFormat"]
      345 LOADNIL                          R10
      346 SETTABLEKS                       R10 R9 K112 ["snapshotResolver"]
      348 NEWTABLE                         R10 0 0
      350 SETTABLEKS                       R10 R9 K113 ["snapshotSerializers"]
      352 LOADK                            R10 K114 ["node"]
      353 SETTABLEKS                       R10 R9 K115 ["testEnvironment"]
      355 NEWTABLE                         R10 0 0
      357 SETTABLEKS                       R10 R9 K116 ["testEnvironmentOptions"]
      359 LOADB                            R10 0
      360 SETTABLEKS                       R10 R9 K117 ["testLocationInResults"]
      362 NEWTABLE                         R10 0 0
      364 SETTABLEKS                       R10 R9 K118 ["testMatch"]
      366 NEWTABLE                         R10 0 0
      368 SETTABLEKS                       R10 R9 K119 ["testPathIgnorePatterns"]
      370 NEWTABLE                         R10 0 1
      372 LOADK                            R11 K120 ["\\.test\\.js$"]
      373 SETLIST                          R10 R11 1 [1]
      375 SETTABLEKS                       R10 R9 K121 ["testRegex"]
      377 LOADK                            R10 K122 ["jest-circus/runner"]
      378 SETTABLEKS                       R10 R9 K123 ["testRunner"]
      380 LOADK                            R10 K124 ["http =//localhost"]
      381 SETTABLEKS                       R10 R9 K125 ["testURL"]
      383 LOADK                            R10 K126 ["real"]
      384 SETTABLEKS                       R10 R9 K127 ["timers"]
      386 NEWTABLE                         R10 0 0
      388 SETTABLEKS                       R10 R9 K128 ["transform"]
      390 NEWTABLE                         R10 0 0
      392 SETTABLEKS                       R10 R9 K129 ["transformIgnorePatterns"]
      394 LOADNIL                          R10
      395 SETTABLEKS                       R10 R9 K130 ["unmockedModulePathPatterns"]
      397 NEWTABLE                         R10 0 0
      399 SETTABLEKS                       R10 R9 K131 ["watchPathIgnorePatterns"]
      401 DUPCLOSURE                       R10 K132 [PROTO_2]
      402 CAPTURE                          VAL R4
      403 CAPTURE                          VAL R5
      404 CAPTURE                          VAL R8
      405 CAPTURE                          VAL R6
      406 SETTABLEKS                       R10 R7 K133 ["makeGlobalConfig"]
      408 DUPCLOSURE                       R10 K134 [PROTO_5]
      409 CAPTURE                          VAL R4
      410 CAPTURE                          VAL R5
      411 CAPTURE                          VAL R9
      412 CAPTURE                          VAL R6
      413 SETTABLEKS                       R10 R7 K135 ["makeProjectConfig"]
      415 RETURN                           R7 1
