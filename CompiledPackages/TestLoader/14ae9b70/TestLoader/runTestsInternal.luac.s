PROTO_0:
        0 LOADK                            R3 K0 ["jest.config"]
        1 LOADB                            R4 1
        2 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        4 CALL                             R1 3 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 LOADK                            R4 K2 ["ModuleScript"]
        7 NAMECALL                         R2 R1 K3 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+1]
       11 RETURN                           R1 1
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [ipairs]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 3
        7 FORGPREP_INEXT                   R2
        8 GETTABLEKS                       R7 R6 K3 ["Name"]
       10 LOADK                            R9 K4 ["%.test"]
       11 NAMECALL                         R7 R7 K5 ["match"]
       13 CALL                             R7 2 1
       14 JUMPIF                           R7 ; [+9]
       15 LOADK                            R9 K6 ["ModuleScript"]
       16 NAMECALL                         R7 R6 K7 ["IsA"]
       18 CALL                             R7 2 1
       19 JUMPIFNOT                        R7 ; [+4]
       20 GETIMPORT                        R7 K9 [require]
       22 MOVE                             R8 R6
       23 CALL                             R7 1 0
       24 FORGLOOP                         R2 2 [inext] ; [-17]
       26 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["TestDiscoveryMode"]
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R3 R1 K2 ["EnableRoactConfigs"]
        4 SETTABLEKS                       R3 R2 K3 ["__DEV__"]
        6 GETIMPORT                        R2 K1 [_G]
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K4 ["__ROACT_17_MOCK_SCHEDULER__"]
       11 GETIMPORT                        R2 K1 [_G]
       13 LOADB                            R3 1
       14 SETTABLEKS                       R3 R2 K5 ["__ROACT_17_INLINE_ACT__"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K6 ["Packages"]
       19 GETTABLEKS                       R3 R4 K7 ["_Index"]
       21 LOADK                            R5 K8 ["DeveloperFramework"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstChild"]
       24 CALL                             R3 2 1
       25 JUMPIFNOT                        R3 ; [+10]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K6 ["Packages"]
       29 GETTABLEKS                       R4 R5 K7 ["_Index"]
       31 GETTABLEKS                       R3 R4 K8 ["DeveloperFramework"]
       33 GETTABLEKS                       R2 R3 K8 ["DeveloperFramework"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R2
       37 GETTABLEKS                       R3 R1 K10 ["RunUnitTests"]
       39 JUMPIFNOT                        R3 ; [+155]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R4 R5 K6 ["Packages"]
       43 GETTABLEKS                       R3 R4 K11 ["Dev"]
       45 LOADK                            R5 K12 ["Jest"]
       46 NAMECALL                         R3 R3 K9 ["FindFirstChild"]
       48 CALL                             R3 2 1
       49 JUMPIFNOT                        R3 ; [+10]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R4 R5 K6 ["Packages"]
       53 GETTABLEKS                       R3 R4 K11 ["Dev"]
       55 LOADK                            R5 K13 ["JestGlobals"]
       56 NAMECALL                         R3 R3 K9 ["FindFirstChild"]
       58 CALL                             R3 2 1
       59 JUMPIF                           R3 ; [+11]
       60 GETIMPORT                        R3 K15 [error]
       62 LOADK                            R5 K16 ["Please add both Jest and JestGlobals vers to Dev dependencies of %* to run tests. \nSee the guide https://roblox.github.io/jest-roblox-internal/upgrading-to-jest3 if you are migrating from Jest 2"]
       63 GETUPVAL                         R8 0
       64 GETTABLEKS                       R7 R8 K17 ["Name"]
       66 NAMECALL                         R5 R5 K18 ["format"]
       68 CALL                             R5 2 1
       69 MOVE                             R4 R5
       70 CALL                             R3 1 0
       71 GETIMPORT                        R3 K20 [require]
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R6 R7 K6 ["Packages"]
       76 GETTABLEKS                       R5 R6 K11 ["Dev"]
       78 GETTABLEKS                       R4 R5 K12 ["Jest"]
       80 CALL                             R3 1 1
       81 GETIMPORT                        R4 K22 [print]
       83 LOADK                            R6 K23 ["----- All %* Tests (Jest 3) ------"]
       84 GETUPVAL                         R9 0
       85 GETTABLEKS                       R8 R9 K17 ["Name"]
       87 NAMECALL                         R6 R6 K18 ["format"]
       89 CALL                             R6 2 1
       90 MOVE                             R5 R6
       91 CALL                             R4 1 0
       92 GETUPVAL                         R5 0
       93 LOADK                            R8 K24 ["jest.config"]
       94 LOADB                            R9 1
       95 NAMECALL                         R6 R5 K9 ["FindFirstChild"]
       97 CALL                             R6 3 1
       98 JUMPIFNOT                        R6 ; [+7]
       99 LOADK                            R9 K25 ["ModuleScript"]
      100 NAMECALL                         R7 R6 K26 ["IsA"]
      102 CALL                             R7 2 1
      103 JUMPIFNOT                        R7 ; [+2]
      104 MOVE                             R4 R6
      105 JUMP                             ; [+2]
      106 LOADNIL                          R4
      107 JUMP                             ; [0]
      108 LOADK                            R8 K27 ["failed to run Jest 3 tests for %* (no jest.config.lua file found)"]
      109 GETUPVAL                         R11 0
      110 GETTABLEKS                       R10 R11 K17 ["Name"]
      112 NAMECALL                         R8 R8 K18 ["format"]
      114 CALL                             R8 2 1
      115 MOVE                             R7 R8
      116 FASTCALL2                        ASSERT R4 R7 ; [+4]
      118 MOVE                             R6 R4
      119 GETIMPORT                        R5 K29 [assert]
      121 CALL                             R5 2 0
      122 GETTABLEKS                       R5 R4 K30 ["Parent"]
      124 GETIMPORT                        R6 K32 [game]
      126 LOADK                            R8 K33 ["CLICommandService"]
      127 NAMECALL                         R6 R6 K34 ["GetService"]
      129 CALL                             R6 2 1
      130 LOADB                            R7 0
      131 GETIMPORT                        R8 K36 [pcall]
      133 NEWCLOSURE                       R9 P0
      134 CAPTURE                          REF R7
      135 CAPTURE                          VAL R6
      136 CALL                             R8 1 2
      137 GETTABLEKS                       R10 R3 K37 ["runCLI"]
      139 MOVE                             R11 R5
      140 DUPTABLE                         R12 K42 [{"verbose", "ci", "testPathPattern", "listTests"}]
      141 LOADB                            R13 0
      142 SETTABLEKS                       R13 R12 K38 ["verbose"]
      144 LOADB                            R13 1
      145 SETTABLEKS                       R13 R12 K39 ["ci"]
      147 GETIMPORT                        R14 K1 [_G]
      149 GETTABLEKS                       R13 R14 K43 ["LEST_TEST_NAME_PATTERN"]
      151 SETTABLEKS                       R13 R12 K40 ["testPathPattern"]
      153 SETTABLEKS                       R7 R12 K41 ["listTests"]
      155 NEWTABLE                         R13 0 1
      157 MOVE                             R14 R5
      158 SETLIST                          R13 R14 1 [1]
      160 CALL                             R10 3 1
      161 NAMECALL                         R10 R10 K44 ["awaitStatus"]
      163 CALL                             R10 1 2
      164 JUMPIFNOTEQKS                    R10 K45 ["Rejected"] ; [+5]
      166 GETIMPORT                        R12 K22 [print]
      168 MOVE                             R13 R11
      169 CALL                             R12 1 0
      170 GETIMPORT                        R12 K22 [print]
      172 LOADK                            R13 K46 ["----------------------------------"]
      173 CALL                             R12 1 0
      174 JUMPIFNOTEQKS                    R10 K47 ["Resolved"] ; [+15]
      176 GETTABLEKS                       R13 R11 K48 ["results"]
      178 GETTABLEKS                       R12 R13 K49 ["numFailedTestSuites"]
      180 LOADN                            R13 0
      181 JUMPIFLT                         R13 R12 ; [+8]
      183 GETTABLEKS                       R13 R11 K48 ["results"]
      185 GETTABLEKS                       R12 R13 K50 ["numFailedTests"]
      187 LOADN                            R13 0
      188 JUMPIFNOTLT                      R13 R12 ; [+5]
      190 GETIMPORT                        R12 K15 [error]
      192 LOADK                            R13 K51 ["Jest 3 test run failed"]
      193 CALL                             R12 1 0
      194 CLOSEUPVALS                      R7
      195 GETTABLEKS                       R3 R1 K52 ["RunTests"]
      197 JUMPIF                           R3 ; [+6]
      198 GETTABLEKS                       R3 R1 K53 ["RunRhodiumTests"]
      200 JUMPIF                           R3 ; [+3]
      201 GETTABLEKS                       R3 R1 K54 ["RunDeveloperFrameworkTests"]
      203 JUMPIFNOT                        R3 ; [+184]
      204 GETUPVAL                         R5 0
      205 GETTABLEKS                       R4 R5 K6 ["Packages"]
      207 GETTABLEKS                       R3 R4 K11 ["Dev"]
      209 LOADK                            R5 K13 ["JestGlobals"]
      210 NAMECALL                         R3 R3 K9 ["FindFirstChild"]
      212 CALL                             R3 2 1
      213 JUMPIF                           R3 ; [+11]
      214 GETIMPORT                        R3 K15 [error]
      216 LOADK                            R5 K55 ["Please add JestGlobals to Dev dependencies of %* to run tests"]
      217 GETUPVAL                         R8 0
      218 GETTABLEKS                       R7 R8 K17 ["Name"]
      220 NAMECALL                         R5 R5 K18 ["format"]
      222 CALL                             R5 2 1
      223 MOVE                             R4 R5
      224 CALL                             R3 1 0
      225 GETIMPORT                        R3 K20 [require]
      227 GETUPVAL                         R7 0
      228 GETTABLEKS                       R6 R7 K6 ["Packages"]
      230 GETTABLEKS                       R5 R6 K11 ["Dev"]
      232 GETTABLEKS                       R4 R5 K13 ["JestGlobals"]
      234 CALL                             R3 1 1
      235 GETTABLEKS                       R4 R3 K56 ["TestEZ"]
      237 JUMPIF                           R4 ; [+11]
      238 GETIMPORT                        R4 K15 [error]
      240 LOADK                            R6 K57 ["Please use JestGlobals versions that has TestEZ (2.4.1) in %* to run tests"]
      241 GETUPVAL                         R9 0
      242 GETTABLEKS                       R8 R9 K17 ["Name"]
      244 NAMECALL                         R6 R6 K18 ["format"]
      246 CALL                             R6 2 1
      247 MOVE                             R5 R6
      248 CALL                             R4 1 0
      249 GETTABLEKS                       R4 R3 K56 ["TestEZ"]
      251 GETTABLEKS                       R5 R4 K58 ["TestBootstrap"]
      253 GETTABLEKS                       R7 R4 K59 ["Reporters"]
      255 GETTABLEKS                       R6 R7 K60 ["TeamCityReporter"]
      257 GETTABLEKS                       R8 R4 K59 ["Reporters"]
      259 GETTABLEKS                       R7 R8 K61 ["TextReporter"]
      261 GETTABLEKS                       R8 R1 K62 ["LogTestsQuiet"]
      263 JUMPIFNOT                        R8 ; [+4]
      264 GETTABLEKS                       R8 R4 K59 ["Reporters"]
      266 GETTABLEKS                       R7 R8 K63 ["TextReporterQuiet"]
      268 GETIMPORT                        R9 K1 [_G]
      270 GETTABLEKS                       R8 R9 K64 ["TEAMCITY"]
      272 JUMPIFNOT                        R8 ; [+2]
      273 MOVE                             R7 R6
      274 JUMP                             ; [0]
      275 GETTABLEKS                       R8 R1 K52 ["RunTests"]
      277 JUMPIFNOT                        R8 ; [+27]
      278 GETUPVAL                         R8 1
      279 MOVE                             R9 R0
      280 CALL                             R8 1 0
      281 GETIMPORT                        R8 K22 [print]
      283 LOADK                            R10 K65 ["----- All %* Tests (Jest 2) ------"]
      284 GETUPVAL                         R13 0
      285 GETTABLEKS                       R12 R13 K17 ["Name"]
      287 NAMECALL                         R10 R10 K18 ["format"]
      289 CALL                             R10 2 1
      290 MOVE                             R9 R10
      291 CALL                             R8 1 0
      292 NEWTABLE                         R10 0 1
      294 MOVE                             R11 R0
      295 SETLIST                          R10 R11 1 [1]
      297 MOVE                             R11 R7
      298 NAMECALL                         R8 R5 K66 ["run"]
      300 CALL                             R8 3 0
      301 GETIMPORT                        R8 K22 [print]
      303 LOADK                            R9 K46 ["----------------------------------"]
      304 CALL                             R8 1 0
      305 GETTABLEKS                       R8 R1 K53 ["RunRhodiumTests"]
      307 JUMPIFNOT                        R8 ; [+26]
      308 GETIMPORT                        R8 K22 [print]
      310 LOADK                            R10 K67 ["----- All %* Rhodium Tests ------"]
      311 GETUPVAL                         R13 0
      312 GETTABLEKS                       R12 R13 K17 ["Name"]
      314 NAMECALL                         R10 R10 K18 ["format"]
      316 CALL                             R10 2 1
      317 MOVE                             R9 R10
      318 CALL                             R8 1 0
      319 NEWTABLE                         R10 0 1
      321 GETUPVAL                         R12 0
      322 GETTABLEKS                       R11 R12 K68 ["RhodiumTests"]
      324 SETLIST                          R10 R11 1 [1]
      326 MOVE                             R11 R7
      327 NAMECALL                         R8 R5 K66 ["run"]
      329 CALL                             R8 3 0
      330 GETIMPORT                        R8 K22 [print]
      332 LOADK                            R9 K46 ["----------------------------------"]
      333 CALL                             R8 1 0
      334 JUMPIFNOT                        R2 ; [+53]
      335 GETTABLEKS                       R8 R1 K54 ["RunDeveloperFrameworkTests"]
      337 JUMPIFNOT                        R8 ; [+50]
      338 GETIMPORT                        R8 K22 [print]
      340 LOADK                            R9 K69 ["----- All DeveloperFramework Tests ------"]
      341 CALL                             R8 1 0
      342 NEWTABLE                         R8 0 0
      344 GETIMPORT                        R9 K71 [ipairs]
      346 NAMECALL                         R10 R2 K72 ["GetChildren"]
      348 CALL                             R10 1 -1
      349 CALL                             R9 -1 3
      350 FORGPREP_INEXT                   R9
      351 LOADB                            R14 1
      352 GETTABLEKS                       R15 R13 K73 ["ClassName"]
      354 JUMPIFEQKS                       R15 K74 ["Folder"] ; [+7]
      356 GETTABLEKS                       R15 R13 K73 ["ClassName"]
      358 JUMPIFEQKS                       R15 K25 ["ModuleScript"] ; [+2]
      360 LOADB                            R14 0 +1
      361 LOADB                            R14 1
      362 JUMPIFNOT                        R14 ; [+14]
      363 GETTABLEKS                       R15 R13 K17 ["Name"]
      365 JUMPIFEQKS                       R15 K75 ["packages"] ; [+11]
      367 GETTABLEKS                       R15 R13 K17 ["Name"]
      369 JUMPIFEQKS                       R15 K6 ["Packages"] ; [+7]
      371 FASTCALL2                        TABLE_INSERT R8 R13 ; [+4]
      373 MOVE                             R16 R8
      374 MOVE                             R17 R13
      375 GETUPVAL                         R15 2
      376 CALL                             R15 2 0
      377 FORGLOOP                         R9 2 [inext] ; [-27]
      379 MOVE                             R11 R8
      380 MOVE                             R12 R7
      381 NAMECALL                         R9 R5 K66 ["run"]
      383 CALL                             R9 3 0
      384 GETIMPORT                        R9 K22 [print]
      386 LOADK                            R10 K46 ["----------------------------------"]
      387 CALL                             R9 1 0
      388 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["getPluginParentInternal"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["types"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K9 [table.insert]
       17 DUPCLOSURE                       R4 K10 [PROTO_0]
       18 DUPCLOSURE                       R5 K11 [PROTO_1]
       19 DUPCLOSURE                       R6 K12 [PROTO_3]
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R5
       22 CAPTURE                          VAL R3
       23 RETURN                           R6 1
