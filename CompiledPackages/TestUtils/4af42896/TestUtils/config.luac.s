PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R1
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLE                         R9 R0 R7
        7 JUMPIFNOTEQKNIL                  R9 ; [+12]
        9 FASTCALL1                        TOSTRING R7 ; [+3]
       10 MOVE                             R12 R7
       11 GETIMPORT                        R11 K1 [tostring]
       13 CALL                             R11 1 1
       14 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       16 MOVE                             R10 R3
       17 GETIMPORT                        R9 K4 [table.insert]
       19 CALL                             R9 2 0
       20 FORGLOOP                         R4 1 ; [-15]
       22 LENGTH                           R4 R3
       23 LOADN                            R5 0
       24 JUMPIFNOTLT                      R5 R4 ; [+15]
       26 GETIMPORT                        R4 K6 [error]
       28 LOADK                            R6 K7 ["Properties that are not part of %* type were passed: { \"%*\" }"]
       29 MOVE                             R8 R2
       30 GETIMPORT                        R9 K9 [table.concat]
       32 MOVE                             R10 R3
       33 LOADK                            R11 K10 ["\", \""]
       34 CALL                             R9 2 1
       35 NAMECALL                         R6 R6 K11 ["format"]
       37 CALL                             R6 3 1
       38 MOVE                             R5 R6
       39 CALL                             R4 1 0
       40 GETIMPORT                        R4 K13 [table.clone]
       42 MOVE                             R5 R0
       43 CALL                             R4 1 1
       44 MOVE                             R5 R1
       45 LOADNIL                          R6
       46 LOADNIL                          R7
       47 FORGPREP                         R5
       48 SETTABLE                         R9 R4 R8
       49 FORGLOOP                         R5 2 ; [-2]
       51 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 JUMPIF                           R3 ; [+2]
        4 NEWTABLE                         R3 0 0
        6 LOADK                            R4 K0 ["GlobalConfig"]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 JUMPIF                           R3 ; [+2]
        4 NEWTABLE                         R3 0 0
        6 LOADK                            R4 K0 ["ProjectConfig"]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

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
       17 GETTABLEKS                       R4 R3 K7 ["Object"]
       19 NEWTABLE                         R5 64 0
       21 LOADN                            R6 0
       22 SETTABLEKS                       R6 R5 K8 ["bail"]
       24 LOADB                            R6 0
       25 SETTABLEKS                       R6 R5 K9 ["changedFilesWithAncestor"]
       27 LOADK                            R6 K10 [""]
       28 SETTABLEKS                       R6 R5 K11 ["changedSince"]
       30 LOADB                            R6 0
       31 SETTABLEKS                       R6 R5 K12 ["ci"]
       33 LOADB                            R6 0
       34 SETTABLEKS                       R6 R5 K13 ["collectCoverage"]
       36 NEWTABLE                         R6 0 0
       38 SETTABLEKS                       R6 R5 K14 ["collectCoverageFrom"]
       40 GETTABLEKS                       R6 R4 K15 ["None"]
       42 SETTABLEKS                       R6 R5 K16 ["collectCoverageOnlyFrom"]
       44 LOADK                            R6 K17 ["coverage"]
       45 SETTABLEKS                       R6 R5 K18 ["coverageDirectory"]
       47 LOADK                            R6 K19 ["babel"]
       48 SETTABLEKS                       R6 R5 K20 ["coverageProvider"]
       50 NEWTABLE                         R6 0 0
       52 SETTABLEKS                       R6 R5 K21 ["coverageReporters"]
       54 DUPTABLE                         R6 K23 [{"global"}]
       55 NEWTABLE                         R7 0 0
       57 SETTABLEKS                       R7 R6 K22 ["global"]
       59 SETTABLEKS                       R6 R5 K24 ["coverageThreshold"]
       61 LOADB                            R6 0
       62 SETTABLEKS                       R6 R5 K25 ["detectLeaks"]
       64 LOADB                            R6 0
       65 SETTABLEKS                       R6 R5 K26 ["detectOpenHandles"]
       67 LOADB                            R6 0
       68 SETTABLEKS                       R6 R5 K27 ["errorOnDeprecated"]
       70 LOADB                            R6 0
       71 SETTABLEKS                       R6 R5 K28 ["expand"]
       73 GETTABLEKS                       R6 R4 K15 ["None"]
       75 SETTABLEKS                       R6 R5 K29 ["filter"]
       77 LOADB                            R6 0
       78 SETTABLEKS                       R6 R5 K30 ["findRelatedTests"]
       80 LOADB                            R6 0
       81 SETTABLEKS                       R6 R5 K31 ["forceExit"]
       83 GETTABLEKS                       R6 R4 K15 ["None"]
       85 SETTABLEKS                       R6 R5 K32 ["globalSetup"]
       87 GETTABLEKS                       R6 R4 K15 ["None"]
       89 SETTABLEKS                       R6 R5 K33 ["globalTeardown"]
       91 LOADB                            R6 0
       92 SETTABLEKS                       R6 R5 K34 ["json"]
       94 LOADB                            R6 0
       95 SETTABLEKS                       R6 R5 K35 ["lastCommit"]
       97 LOADB                            R6 0
       98 SETTABLEKS                       R6 R5 K36 ["listTests"]
      100 LOADB                            R6 0
      101 SETTABLEKS                       R6 R5 K37 ["logHeapUsage"]
      103 LOADN                            R6 5
      104 SETTABLEKS                       R6 R5 K38 ["maxConcurrency"]
      106 LOADN                            R6 2
      107 SETTABLEKS                       R6 R5 K39 ["maxWorkers"]
      109 GETTABLEKS                       R6 R4 K15 ["None"]
      111 SETTABLEKS                       R6 R5 K40 ["noSCM"]
      113 LOADB                            R6 0
      114 SETTABLEKS                       R6 R5 K41 ["noStackTrace"]
      116 LOADN                            R6 0
      117 SETTABLEKS                       R6 R5 K42 ["stackDepth"]
      119 NEWTABLE                         R6 0 0
      121 SETTABLEKS                       R6 R5 K43 ["nonFlagArgs"]
      123 LOADB                            R6 0
      124 SETTABLEKS                       R6 R5 K44 ["notify"]
      126 LOADK                            R6 K45 ["failure-change"]
      127 SETTABLEKS                       R6 R5 K46 ["notifyMode"]
      129 LOADB                            R6 0
      130 SETTABLEKS                       R6 R5 K47 ["onlyChanged"]
      132 LOADB                            R6 0
      133 SETTABLEKS                       R6 R5 K48 ["onlyFailures"]
      135 GETTABLEKS                       R6 R4 K15 ["None"]
      137 SETTABLEKS                       R6 R5 K49 ["outputFile"]
      139 LOADB                            R6 0
      140 SETTABLEKS                       R6 R5 K50 ["passWithNoTests"]
      142 NEWTABLE                         R6 0 0
      144 SETTABLEKS                       R6 R5 K51 ["projects"]
      146 GETTABLEKS                       R6 R4 K15 ["None"]
      148 SETTABLEKS                       R6 R5 K52 ["replname"]
      150 NEWTABLE                         R6 0 0
      152 SETTABLEKS                       R6 R5 K53 ["reporters"]
      154 LOADK                            R6 K54 ["/test_root_dir/"]
      155 SETTABLEKS                       R6 R5 K55 ["rootDir"]
      157 LOADB                            R6 0
      158 SETTABLEKS                       R6 R5 K56 ["runTestsByPath"]
      160 LOADB                            R6 0
      161 SETTABLEKS                       R6 R5 K57 ["silent"]
      163 LOADB                            R6 0
      164 SETTABLEKS                       R6 R5 K58 ["skipFilter"]
      166 NEWTABLE                         R6 0 0
      168 SETTABLEKS                       R6 R5 K59 ["snapshotFormat"]
      170 LOADN                            R6 1
      171 SETTABLEKS                       R6 R5 K60 ["testFailureExitCode"]
      173 LOADK                            R6 K10 [""]
      174 SETTABLEKS                       R6 R5 K61 ["testNamePattern"]
      176 LOADK                            R6 K10 [""]
      177 SETTABLEKS                       R6 R5 K62 ["testPathPattern"]
      179 GETTABLEKS                       R6 R4 K15 ["None"]
      181 SETTABLEKS                       R6 R5 K63 ["testResultsProcessor"]
      183 LOADK                            R6 K64 ["@jest/test-sequencer"]
      184 SETTABLEKS                       R6 R5 K65 ["testSequencer"]
      186 LOADN                            R6 5000
      187 SETTABLEKS                       R6 R5 K66 ["testTimeout"]
      189 LOADK                            R6 K67 ["none"]
      190 SETTABLEKS                       R6 R5 K68 ["updateSnapshot"]
      192 LOADB                            R6 0
      193 SETTABLEKS                       R6 R5 K69 ["useStderr"]
      195 LOADB                            R6 0
      196 SETTABLEKS                       R6 R5 K70 ["verbose"]
      198 LOADB                            R6 0
      199 SETTABLEKS                       R6 R5 K71 ["watch"]
      201 LOADB                            R6 0
      202 SETTABLEKS                       R6 R5 K72 ["watchAll"]
      204 NEWTABLE                         R6 0 0
      206 SETTABLEKS                       R6 R5 K73 ["watchPlugins"]
      208 LOADB                            R6 0
      209 SETTABLEKS                       R6 R5 K74 ["watchman"]
      211 NEWTABLE                         R6 64 0
      213 LOADB                            R7 0
      214 SETTABLEKS                       R7 R6 K75 ["automock"]
      216 LOADB                            R7 0
      217 SETTABLEKS                       R7 R6 K76 ["cache"]
      219 LOADB                            R7 0
      220 SETTABLEKS                       R7 R6 K77 ["clearMocks"]
      222 NEWTABLE                         R7 0 0
      224 SETTABLEKS                       R7 R6 K78 ["coveragePathIgnorePatterns"]
      226 LOADK                            R7 K54 ["/test_root_dir/"]
      227 SETTABLEKS                       R7 R6 K79 ["cwd"]
      229 LOADB                            R7 0
      230 SETTABLEKS                       R7 R6 K25 ["detectLeaks"]
      232 LOADB                            R7 0
      233 SETTABLEKS                       R7 R6 K26 ["detectOpenHandles"]
      235 GETTABLEKS                       R7 R4 K15 ["None"]
      237 SETTABLEKS                       R7 R6 K80 ["displayName"]
      239 LOADB                            R7 0
      240 SETTABLEKS                       R7 R6 K27 ["errorOnDeprecated"]
      242 NEWTABLE                         R7 0 0
      244 SETTABLEKS                       R7 R6 K81 ["extensionsToTreatAsEsm"]
      246 DUPTABLE                         R7 K84 [{["enableGlobally"] = False}]
      247 SETTABLEKS                       R7 R6 K85 ["fakeTimers"]
      249 GETTABLEKS                       R7 R4 K15 ["None"]
      251 SETTABLEKS                       R7 R6 K29 ["filter"]
      253 NEWTABLE                         R7 0 0
      255 SETTABLEKS                       R7 R6 K86 ["forceCoverageMatch"]
      257 GETTABLEKS                       R7 R4 K15 ["None"]
      259 SETTABLEKS                       R7 R6 K32 ["globalSetup"]
      261 GETTABLEKS                       R7 R4 K15 ["None"]
      263 SETTABLEKS                       R7 R6 K33 ["globalTeardown"]
      265 NEWTABLE                         R7 0 0
      267 SETTABLEKS                       R7 R6 K87 ["globals"]
      269 NEWTABLE                         R7 0 0
      271 SETTABLEKS                       R7 R6 K88 ["haste"]
      273 LOADK                            R7 K89 ["test_name"]
      274 SETTABLEKS                       R7 R6 K90 ["id"]
      276 LOADB                            R7 1
      277 SETTABLEKS                       R7 R6 K91 ["injectGlobals"]
      279 NEWTABLE                         R7 0 0
      281 SETTABLEKS                       R7 R6 K92 ["moduleDirectories"]
      283 NEWTABLE                         R7 0 1
      285 LOADK                            R8 K93 ["js"]
      286 SETLIST                          R7 R8 1 [1]
      288 SETTABLEKS                       R7 R6 K94 ["moduleFileExtensions"]
      290 NEWTABLE                         R7 0 0
      292 SETTABLEKS                       R7 R6 K95 ["moduleNameMapper"]
      294 NEWTABLE                         R7 0 0
      296 SETTABLEKS                       R7 R6 K96 ["modulePathIgnorePatterns"]
      298 NEWTABLE                         R7 0 0
      300 SETTABLEKS                       R7 R6 K97 ["modulePaths"]
      302 LOADB                            R7 0
      303 SETTABLEKS                       R7 R6 K98 ["mockDataModel"]
      305 LOADB                            R7 1
      306 SETTABLEKS                       R7 R6 K99 ["oldFunctionSpying"]
      308 LOADK                            R7 K100 ["prettier"]
      309 SETTABLEKS                       R7 R6 K101 ["prettierPath"]
      311 LOADB                            R7 0
      312 SETTABLEKS                       R7 R6 K102 ["resetMocks"]
      314 LOADB                            R7 0
      315 SETTABLEKS                       R7 R6 K103 ["resetModules"]
      317 GETTABLEKS                       R7 R4 K15 ["None"]
      319 SETTABLEKS                       R7 R6 K104 ["resolver"]
      321 LOADB                            R7 0
      322 SETTABLEKS                       R7 R6 K105 ["restoreMocks"]
      324 LOADK                            R7 K54 ["/test_root_dir/"]
      325 SETTABLEKS                       R7 R6 K55 ["rootDir"]
      327 NEWTABLE                         R7 0 0
      329 SETTABLEKS                       R7 R6 K106 ["roots"]
      331 LOADK                            R7 K107 ["jest-runner"]
      332 SETTABLEKS                       R7 R6 K108 ["runner"]
      334 LOADK                            R7 K109 ["/test_module_loader_path"]
      335 SETTABLEKS                       R7 R6 K110 ["runtime"]
      337 NEWTABLE                         R7 0 0
      339 SETTABLEKS                       R7 R6 K111 ["sandboxInjectedGlobals"]
      341 NEWTABLE                         R7 0 0
      343 SETTABLEKS                       R7 R6 K112 ["setupFiles"]
      345 NEWTABLE                         R7 0 0
      347 SETTABLEKS                       R7 R6 K113 ["setupFilesAfterEnv"]
      349 LOADB                            R7 0
      350 SETTABLEKS                       R7 R6 K58 ["skipFilter"]
      352 LOADB                            R7 0
      353 SETTABLEKS                       R7 R6 K114 ["skipNodeResolution"]
      355 LOADN                            R7 5
      356 SETTABLEKS                       R7 R6 K115 ["slowTestThreshold"]
      358 NEWTABLE                         R7 0 0
      360 SETTABLEKS                       R7 R6 K59 ["snapshotFormat"]
      362 GETTABLEKS                       R7 R4 K15 ["None"]
      364 SETTABLEKS                       R7 R6 K116 ["snapshotResolver"]
      366 NEWTABLE                         R7 0 0
      368 SETTABLEKS                       R7 R6 K117 ["snapshotSerializers"]
      370 GETTABLEKS                       R7 R1 K118 ["JestEnvironmentLuau"]
      372 SETTABLEKS                       R7 R6 K119 ["testEnvironment"]
      374 NEWTABLE                         R7 0 0
      376 SETTABLEKS                       R7 R6 K120 ["testEnvironmentOptions"]
      378 LOADB                            R7 0
      379 SETTABLEKS                       R7 R6 K121 ["testLocationInResults"]
      381 NEWTABLE                         R7 0 0
      383 SETTABLEKS                       R7 R6 K122 ["testMatch"]
      385 NEWTABLE                         R7 0 0
      387 SETTABLEKS                       R7 R6 K123 ["testPathIgnorePatterns"]
      389 NEWTABLE                         R7 0 1
      391 LOADK                            R8 K124 ["\\.test\\.js$"]
      392 SETLIST                          R7 R8 1 [1]
      394 SETTABLEKS                       R7 R6 K125 ["testRegex"]
      396 LOADK                            R7 K126 ["jest-circus/runner"]
      397 SETTABLEKS                       R7 R6 K127 ["testRunner"]
      399 LOADK                            R7 K128 ["http =//localhost"]
      400 SETTABLEKS                       R7 R6 K129 ["testURL"]
      402 LOADK                            R7 K130 ["real"]
      403 SETTABLEKS                       R7 R6 K131 ["timers"]
      405 NEWTABLE                         R7 0 0
      407 SETTABLEKS                       R7 R6 K132 ["transform"]
      409 NEWTABLE                         R7 0 0
      411 SETTABLEKS                       R7 R6 K133 ["transformIgnorePatterns"]
      413 GETTABLEKS                       R7 R4 K15 ["None"]
      415 SETTABLEKS                       R7 R6 K134 ["unmockedModulePathPatterns"]
      417 NEWTABLE                         R7 0 0
      419 SETTABLEKS                       R7 R6 K135 ["watchPathIgnorePatterns"]
      421 DUPCLOSURE                       R7 K136 [PROTO_0]
      422 DUPCLOSURE                       R8 K137 [PROTO_1]
      423 CAPTURE                          VAL R7
      424 CAPTURE                          VAL R5
      425 DUPCLOSURE                       R9 K138 [PROTO_2]
      426 CAPTURE                          VAL R7
      427 CAPTURE                          VAL R6
      428 DUPTABLE                         R10 K141 [{"makeGlobalConfig", "makeProjectConfig"}]
      429 SETTABLEKS                       R8 R10 K139 ["makeGlobalConfig"]
      431 SETTABLEKS                       R9 R10 K140 ["makeProjectConfig"]
      433 RETURN                           R10 1
