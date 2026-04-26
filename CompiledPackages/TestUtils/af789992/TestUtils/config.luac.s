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
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["new"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K1 ["keys"]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 -1
       12 CALL                             R2 -1 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K2 ["forEach"]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K1 ["keys"]
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
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R7 R8 K7 ["from"]
       36 MOVE                             R8 R2
       37 CALL                             R7 1 -1
       38 CALL                             R6 -1 1
       39 CONCAT                           R4 R5 R6
       40 CALL                             R3 1 0
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R3 R4 K8 ["assign"]
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
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["new"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K1 ["keys"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 -1
       13 CALL                             R1 -1 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K2 ["forEach"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K1 ["keys"]
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
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R6 R7 K7 ["from"]
       37 MOVE                             R7 R1
       38 CALL                             R6 1 -1
       39 CALL                             R5 -1 1
       40 CONCAT                           R3 R4 R5
       41 CALL                             R2 1 0
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R2 R3 K8 ["assign"]
       45 NEWTABLE                         R3 0 0
       47 GETUPVAL                         R4 3
       48 MOVE                             R5 R0
       49 CALL                             R2 3 -1
       50 RETURN                           R2 -1

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
      126 LOADN                            R10 0
      127 SETTABLEKS                       R10 R9 K46 ["stackDepth"]
      129 NEWTABLE                         R10 0 0
      131 SETTABLEKS                       R10 R9 K47 ["nonFlagArgs"]
      133 LOADB                            R10 0
      134 SETTABLEKS                       R10 R9 K48 ["notify"]
      136 LOADK                            R10 K49 ["failure-change"]
      137 SETTABLEKS                       R10 R9 K50 ["notifyMode"]
      139 LOADB                            R10 0
      140 SETTABLEKS                       R10 R9 K51 ["onlyChanged"]
      142 LOADB                            R10 0
      143 SETTABLEKS                       R10 R9 K52 ["onlyFailures"]
      145 GETTABLEKS                       R10 R5 K19 ["None"]
      147 SETTABLEKS                       R10 R9 K53 ["outputFile"]
      149 LOADB                            R10 0
      150 SETTABLEKS                       R10 R9 K54 ["passWithNoTests"]
      152 NEWTABLE                         R10 0 0
      154 SETTABLEKS                       R10 R9 K55 ["projects"]
      156 GETTABLEKS                       R10 R5 K19 ["None"]
      158 SETTABLEKS                       R10 R9 K56 ["replname"]
      160 NEWTABLE                         R10 0 0
      162 SETTABLEKS                       R10 R9 K57 ["reporters"]
      164 LOADK                            R10 K58 ["/test_root_dir/"]
      165 SETTABLEKS                       R10 R9 K59 ["rootDir"]
      167 LOADB                            R10 0
      168 SETTABLEKS                       R10 R9 K60 ["runTestsByPath"]
      170 LOADB                            R10 0
      171 SETTABLEKS                       R10 R9 K61 ["silent"]
      173 LOADB                            R10 0
      174 SETTABLEKS                       R10 R9 K62 ["skipFilter"]
      176 NEWTABLE                         R10 0 0
      178 SETTABLEKS                       R10 R9 K63 ["snapshotFormat"]
      180 LOADN                            R10 1
      181 SETTABLEKS                       R10 R9 K64 ["testFailureExitCode"]
      183 LOADK                            R10 K14 [""]
      184 SETTABLEKS                       R10 R9 K65 ["testNamePattern"]
      186 LOADK                            R10 K14 [""]
      187 SETTABLEKS                       R10 R9 K66 ["testPathPattern"]
      189 GETTABLEKS                       R10 R5 K19 ["None"]
      191 SETTABLEKS                       R10 R9 K67 ["testResultsProcessor"]
      193 LOADK                            R10 K68 ["@jest/test-sequencer"]
      194 SETTABLEKS                       R10 R9 K69 ["testSequencer"]
      196 LOADN                            R10 136
      197 SETTABLEKS                       R10 R9 K70 ["testTimeout"]
      199 LOADK                            R10 K71 ["none"]
      200 SETTABLEKS                       R10 R9 K72 ["updateSnapshot"]
      202 LOADB                            R10 0
      203 SETTABLEKS                       R10 R9 K73 ["useStderr"]
      205 LOADB                            R10 0
      206 SETTABLEKS                       R10 R9 K74 ["verbose"]
      208 LOADB                            R10 0
      209 SETTABLEKS                       R10 R9 K75 ["watch"]
      211 LOADB                            R10 0
      212 SETTABLEKS                       R10 R9 K76 ["watchAll"]
      214 NEWTABLE                         R10 0 0
      216 SETTABLEKS                       R10 R9 K77 ["watchPlugins"]
      218 LOADB                            R10 0
      219 SETTABLEKS                       R10 R9 K78 ["watchman"]
      221 NEWTABLE                         R10 64 0
      223 LOADB                            R11 0
      224 SETTABLEKS                       R11 R10 K79 ["automock"]
      226 LOADB                            R11 0
      227 SETTABLEKS                       R11 R10 K80 ["cache"]
      229 LOADB                            R11 0
      230 SETTABLEKS                       R11 R10 K81 ["clearMocks"]
      232 NEWTABLE                         R11 0 0
      234 SETTABLEKS                       R11 R10 K82 ["coveragePathIgnorePatterns"]
      236 LOADK                            R11 K58 ["/test_root_dir/"]
      237 SETTABLEKS                       R11 R10 K83 ["cwd"]
      239 LOADB                            R11 0
      240 SETTABLEKS                       R11 R10 K29 ["detectLeaks"]
      242 LOADB                            R11 0
      243 SETTABLEKS                       R11 R10 K30 ["detectOpenHandles"]
      245 GETTABLEKS                       R11 R5 K19 ["None"]
      247 SETTABLEKS                       R11 R10 K84 ["displayName"]
      249 LOADB                            R11 0
      250 SETTABLEKS                       R11 R10 K31 ["errorOnDeprecated"]
      252 NEWTABLE                         R11 0 0
      254 SETTABLEKS                       R11 R10 K85 ["extensionsToTreatAsEsm"]
      256 DUPTABLE                         R11 K87 [{"enableGlobally"}]
      257 LOADB                            R12 0
      258 SETTABLEKS                       R12 R11 K86 ["enableGlobally"]
      260 SETTABLEKS                       R11 R10 K88 ["fakeTimers"]
      262 GETTABLEKS                       R11 R5 K19 ["None"]
      264 SETTABLEKS                       R11 R10 K33 ["filter"]
      266 NEWTABLE                         R11 0 0
      268 SETTABLEKS                       R11 R10 K89 ["forceCoverageMatch"]
      270 GETTABLEKS                       R11 R5 K19 ["None"]
      272 SETTABLEKS                       R11 R10 K36 ["globalSetup"]
      274 GETTABLEKS                       R11 R5 K19 ["None"]
      276 SETTABLEKS                       R11 R10 K37 ["globalTeardown"]
      278 NEWTABLE                         R11 0 0
      280 SETTABLEKS                       R11 R10 K90 ["globals"]
      282 NEWTABLE                         R11 0 0
      284 SETTABLEKS                       R11 R10 K91 ["haste"]
      286 LOADK                            R11 K92 ["test_name"]
      287 SETTABLEKS                       R11 R10 K93 ["id"]
      289 LOADB                            R11 1
      290 SETTABLEKS                       R11 R10 K94 ["injectGlobals"]
      292 NEWTABLE                         R11 0 0
      294 SETTABLEKS                       R11 R10 K95 ["moduleDirectories"]
      296 NEWTABLE                         R11 0 1
      298 LOADK                            R12 K96 ["js"]
      299 SETLIST                          R11 R12 1 [1]
      301 SETTABLEKS                       R11 R10 K97 ["moduleFileExtensions"]
      303 NEWTABLE                         R11 0 0
      305 SETTABLEKS                       R11 R10 K98 ["moduleNameMapper"]
      307 NEWTABLE                         R11 0 0
      309 SETTABLEKS                       R11 R10 K99 ["modulePathIgnorePatterns"]
      311 NEWTABLE                         R11 0 0
      313 SETTABLEKS                       R11 R10 K100 ["modulePaths"]
      315 LOADB                            R11 0
      316 SETTABLEKS                       R11 R10 K101 ["mockDataModel"]
      318 LOADB                            R11 1
      319 SETTABLEKS                       R11 R10 K102 ["oldFunctionSpying"]
      321 LOADK                            R11 K103 ["prettier"]
      322 SETTABLEKS                       R11 R10 K104 ["prettierPath"]
      324 LOADB                            R11 0
      325 SETTABLEKS                       R11 R10 K105 ["resetMocks"]
      327 LOADB                            R11 0
      328 SETTABLEKS                       R11 R10 K106 ["resetModules"]
      330 GETTABLEKS                       R11 R5 K19 ["None"]
      332 SETTABLEKS                       R11 R10 K107 ["resolver"]
      334 LOADB                            R11 0
      335 SETTABLEKS                       R11 R10 K108 ["restoreMocks"]
      337 LOADK                            R11 K58 ["/test_root_dir/"]
      338 SETTABLEKS                       R11 R10 K59 ["rootDir"]
      340 NEWTABLE                         R11 0 0
      342 SETTABLEKS                       R11 R10 K109 ["roots"]
      344 LOADK                            R11 K110 ["jest-runner"]
      345 SETTABLEKS                       R11 R10 K111 ["runner"]
      347 LOADK                            R11 K112 ["/test_module_loader_path"]
      348 SETTABLEKS                       R11 R10 K113 ["runtime"]
      350 NEWTABLE                         R11 0 0
      352 SETTABLEKS                       R11 R10 K114 ["sandboxInjectedGlobals"]
      354 NEWTABLE                         R11 0 0
      356 SETTABLEKS                       R11 R10 K115 ["setupFiles"]
      358 NEWTABLE                         R11 0 0
      360 SETTABLEKS                       R11 R10 K116 ["setupFilesAfterEnv"]
      362 LOADB                            R11 0
      363 SETTABLEKS                       R11 R10 K62 ["skipFilter"]
      365 LOADB                            R11 0
      366 SETTABLEKS                       R11 R10 K117 ["skipNodeResolution"]
      368 LOADN                            R11 5
      369 SETTABLEKS                       R11 R10 K118 ["slowTestThreshold"]
      371 NEWTABLE                         R11 0 0
      373 SETTABLEKS                       R11 R10 K63 ["snapshotFormat"]
      375 GETTABLEKS                       R11 R5 K19 ["None"]
      377 SETTABLEKS                       R11 R10 K119 ["snapshotResolver"]
      379 NEWTABLE                         R11 0 0
      381 SETTABLEKS                       R11 R10 K120 ["snapshotSerializers"]
      383 GETTABLEKS                       R11 R1 K121 ["JestEnvironmentLuau"]
      385 SETTABLEKS                       R11 R10 K122 ["testEnvironment"]
      387 NEWTABLE                         R11 0 0
      389 SETTABLEKS                       R11 R10 K123 ["testEnvironmentOptions"]
      391 LOADB                            R11 0
      392 SETTABLEKS                       R11 R10 K124 ["testLocationInResults"]
      394 NEWTABLE                         R11 0 0
      396 SETTABLEKS                       R11 R10 K125 ["testMatch"]
      398 NEWTABLE                         R11 0 0
      400 SETTABLEKS                       R11 R10 K126 ["testPathIgnorePatterns"]
      402 NEWTABLE                         R11 0 1
      404 LOADK                            R12 K127 ["\\.test\\.js$"]
      405 SETLIST                          R11 R12 1 [1]
      407 SETTABLEKS                       R11 R10 K128 ["testRegex"]
      409 LOADK                            R11 K129 ["jest-circus/runner"]
      410 SETTABLEKS                       R11 R10 K130 ["testRunner"]
      412 LOADK                            R11 K131 ["http =//localhost"]
      413 SETTABLEKS                       R11 R10 K132 ["testURL"]
      415 LOADK                            R11 K133 ["real"]
      416 SETTABLEKS                       R11 R10 K134 ["timers"]
      418 NEWTABLE                         R11 0 0
      420 SETTABLEKS                       R11 R10 K135 ["transform"]
      422 NEWTABLE                         R11 0 0
      424 SETTABLEKS                       R11 R10 K136 ["transformIgnorePatterns"]
      426 GETTABLEKS                       R11 R5 K19 ["None"]
      428 SETTABLEKS                       R11 R10 K137 ["unmockedModulePathPatterns"]
      430 NEWTABLE                         R11 0 0
      432 SETTABLEKS                       R11 R10 K138 ["watchPathIgnorePatterns"]
      434 DUPCLOSURE                       R11 K139 [PROTO_1]
      435 CAPTURE                          VAL R7
      436 CAPTURE                          VAL R5
      437 CAPTURE                          VAL R4
      438 CAPTURE                          VAL R9
      439 CAPTURE                          VAL R6
      440 SETTABLEKS                       R11 R8 K140 ["makeGlobalConfig"]
      442 DUPCLOSURE                       R11 K141 [PROTO_3]
      443 CAPTURE                          VAL R7
      444 CAPTURE                          VAL R5
      445 CAPTURE                          VAL R4
      446 CAPTURE                          VAL R10
      447 CAPTURE                          VAL R6
      448 SETTABLEKS                       R11 R8 K142 ["makeProjectConfig"]
      450 RETURN                           R8 1
