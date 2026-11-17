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
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["TestDiscoveryMode"]
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
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K6 ["Packages"]
       19 GETTABLEKS                       R3 R3 K7 ["_Index"]
       21 LOADK                            R5 K8 ["DeveloperFramework"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstChild"]
       24 CALL                             R3 2 1
       25 JUMPIFNOT                        R3 ; [+10]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K6 ["Packages"]
       29 GETTABLEKS                       R2 R2 K7 ["_Index"]
       31 GETTABLEKS                       R2 R2 K8 ["DeveloperFramework"]
       33 GETTABLEKS                       R2 R2 K8 ["DeveloperFramework"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R2
       37 GETTABLEKS                       R3 R1 K10 ["RunUnitTests"]
       39 JUMPIFNOT                        R3 ; [+146]
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K6 ["Packages"]
       43 GETTABLEKS                       R3 R3 K11 ["Dev"]
       45 LOADK                            R5 K12 ["Jest"]
       46 NAMECALL                         R3 R3 K9 ["FindFirstChild"]
       48 CALL                             R3 2 1
       49 JUMPIFNOT                        R3 ; [+10]
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K6 ["Packages"]
       53 GETTABLEKS                       R3 R3 K11 ["Dev"]
       55 LOADK                            R5 K13 ["JestGlobals"]
       56 NAMECALL                         R3 R3 K9 ["FindFirstChild"]
       58 CALL                             R3 2 1
       59 JUMPIF                           R3 ; [+10]
       60 GETIMPORT                        R3 K15 [error]
       62 LOADK                            R4 K16 ["Please add both Jest and JestGlobals vers to Dev dependencies of %* to run tests. \nSee the guide https://roblox.github.io/jest-roblox-internal/upgrading-to-jest3 if you are migrating from Jest 2"]
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K17 ["Name"]
       66 NAMECALL                         R4 R4 K18 ["format"]
       68 CALL                             R4 2 1
       69 CALL                             R3 1 0
       70 GETIMPORT                        R3 K20 [require]
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R4 R4 K6 ["Packages"]
       75 GETTABLEKS                       R4 R4 K11 ["Dev"]
       77 GETTABLEKS                       R4 R4 K12 ["Jest"]
       79 CALL                             R3 1 1
       80 GETIMPORT                        R4 K22 [print]
       82 LOADK                            R5 K23 ["----- All %* Tests (Jest 3) ------"]
       83 GETUPVAL                         R7 0
       84 GETTABLEKS                       R7 R7 K17 ["Name"]
       86 NAMECALL                         R5 R5 K18 ["format"]
       88 CALL                             R5 2 1
       89 CALL                             R4 1 0
       90 GETUPVAL                         R5 0
       91 LOADK                            R8 K24 ["jest.config"]
       92 LOADB                            R9 1
       93 NAMECALL                         R6 R5 K9 ["FindFirstChild"]
       95 CALL                             R6 3 1
       96 JUMPIFNOT                        R6 ; [+7]
       97 LOADK                            R9 K25 ["ModuleScript"]
       98 NAMECALL                         R7 R6 K26 ["IsA"]
      100 CALL                             R7 2 1
      101 JUMPIFNOT                        R7 ; [+2]
      102 MOVE                             R4 R6
      103 JUMP                             ; [+1]
      104 LOADNIL                          R4
      105 LOADK                            R7 K27 ["failed to run Jest 3 tests for %* (no jest.config.lua file found)"]
      106 GETUPVAL                         R9 0
      107 GETTABLEKS                       R9 R9 K17 ["Name"]
      109 NAMECALL                         R7 R7 K18 ["format"]
      111 CALL                             R7 2 1
      112 FASTCALL2                        ASSERT R4 R7 ; [+4]
      114 MOVE                             R6 R4
      115 GETIMPORT                        R5 K29 [assert]
      117 CALL                             R5 2 0
      118 GETTABLEKS                       R5 R4 K30 ["Parent"]
      120 GETIMPORT                        R6 K32 [game]
      122 LOADK                            R8 K33 ["CLICommandService"]
      123 NAMECALL                         R6 R6 K34 ["GetService"]
      125 CALL                             R6 2 1
      126 LOADB                            R7 0
      127 NEWCLOSURE                       R9 P0
      128 CAPTURE                          REF R7
      129 CAPTURE                          VAL R6
      130 FASTPCALL                        pcall 1 ; [+2]
      131 GETIMPORT                        R8 K36 [pcall]
      133 CALL                             R8 1 2
      134 GETTABLEKS                       R10 R3 K37 ["runCLI"]
      136 MOVE                             R11 R5
      137 DUPTABLE                         R12 K44 [{["verbose"] = False, ["ci"] = True, ["testPathPattern"], ["listTests"]}]
      138 GETIMPORT                        R13 K1 [_G]
      140 GETTABLEKS                       R13 R13 K45 ["LEST_TEST_NAME_PATTERN"]
      142 SETTABLEKS                       R13 R12 K42 ["testPathPattern"]
      144 SETTABLEKS                       R7 R12 K43 ["listTests"]
      146 NEWTABLE                         R13 0 1
      148 MOVE                             R14 R5
      149 SETLIST                          R13 R14 1 [1]
      151 CALL                             R10 3 1
      152 NAMECALL                         R10 R10 K46 ["awaitStatus"]
      154 CALL                             R10 1 2
      155 JUMPIFNOTEQKS                    R10 K47 ["Rejected"] ; [+5]
      157 GETIMPORT                        R12 K22 [print]
      159 MOVE                             R13 R11
      160 CALL                             R12 1 0
      161 GETIMPORT                        R12 K22 [print]
      163 LOADK                            R13 K48 ["----------------------------------"]
      164 CALL                             R12 1 0
      165 JUMPIFNOTEQKS                    R10 K49 ["Resolved"] ; [+15]
      167 GETTABLEKS                       R12 R11 K50 ["results"]
      169 GETTABLEKS                       R12 R12 K51 ["numFailedTestSuites"]
      171 LOADN                            R13 0
      172 JUMPIFLT                         R13 R12 ; [+8]
      174 GETTABLEKS                       R12 R11 K50 ["results"]
      176 GETTABLEKS                       R12 R12 K52 ["numFailedTests"]
      178 LOADN                            R13 0
      179 JUMPIFNOTLT                      R13 R12 ; [+5]
      181 GETIMPORT                        R12 K15 [error]
      183 LOADK                            R13 K53 ["Jest 3 test run failed"]
      184 CALL                             R12 1 0
      185 CLOSEUPVALS                      R7
      186 GETTABLEKS                       R3 R1 K54 ["RunTests"]
      188 JUMPIF                           R3 ; [+6]
      189 GETTABLEKS                       R3 R1 K55 ["RunRhodiumTests"]
      191 JUMPIF                           R3 ; [+3]
      192 GETTABLEKS                       R3 R1 K56 ["RunDeveloperFrameworkTests"]
      194 JUMPIFNOT                        R3 ; [+180]
      195 GETUPVAL                         R3 0
      196 GETTABLEKS                       R3 R3 K6 ["Packages"]
      198 GETTABLEKS                       R3 R3 K11 ["Dev"]
      200 LOADK                            R5 K13 ["JestGlobals"]
      201 NAMECALL                         R3 R3 K9 ["FindFirstChild"]
      203 CALL                             R3 2 1
      204 JUMPIF                           R3 ; [+10]
      205 GETIMPORT                        R3 K15 [error]
      207 LOADK                            R4 K57 ["Please add JestGlobals to Dev dependencies of %* to run tests"]
      208 GETUPVAL                         R6 0
      209 GETTABLEKS                       R6 R6 K17 ["Name"]
      211 NAMECALL                         R4 R4 K18 ["format"]
      213 CALL                             R4 2 1
      214 CALL                             R3 1 0
      215 GETIMPORT                        R3 K20 [require]
      217 GETUPVAL                         R4 0
      218 GETTABLEKS                       R4 R4 K6 ["Packages"]
      220 GETTABLEKS                       R4 R4 K11 ["Dev"]
      222 GETTABLEKS                       R4 R4 K13 ["JestGlobals"]
      224 CALL                             R3 1 1
      225 GETTABLEKS                       R4 R3 K58 ["TestEZ"]
      227 JUMPIF                           R4 ; [+10]
      228 GETIMPORT                        R4 K15 [error]
      230 LOADK                            R5 K59 ["Please use JestGlobals versions that has TestEZ (2.4.1) in %* to run tests"]
      231 GETUPVAL                         R7 0
      232 GETTABLEKS                       R7 R7 K17 ["Name"]
      234 NAMECALL                         R5 R5 K18 ["format"]
      236 CALL                             R5 2 1
      237 CALL                             R4 1 0
      238 GETTABLEKS                       R4 R3 K58 ["TestEZ"]
      240 GETTABLEKS                       R5 R4 K60 ["TestBootstrap"]
      242 GETTABLEKS                       R6 R4 K61 ["Reporters"]
      244 GETTABLEKS                       R6 R6 K62 ["TeamCityReporter"]
      246 GETTABLEKS                       R7 R4 K61 ["Reporters"]
      248 GETTABLEKS                       R7 R7 K63 ["TextReporter"]
      250 GETTABLEKS                       R8 R1 K64 ["LogTestsQuiet"]
      252 JUMPIFNOT                        R8 ; [+4]
      253 GETTABLEKS                       R8 R4 K61 ["Reporters"]
      255 GETTABLEKS                       R7 R8 K65 ["TextReporterQuiet"]
      257 GETIMPORT                        R9 K1 [_G]
      259 GETTABLEKS                       R8 R9 K66 ["TEAMCITY"]
      261 JUMPIFNOT                        R8 ; [+2]
      262 MOVE                             R7 R6
      263 JUMP                             ; [0]
      264 GETTABLEKS                       R8 R1 K54 ["RunTests"]
      266 JUMPIFNOT                        R8 ; [+26]
      267 GETUPVAL                         R8 1
      268 MOVE                             R9 R0
      269 CALL                             R8 1 0
      270 GETIMPORT                        R8 K22 [print]
      272 LOADK                            R9 K67 ["----- All %* Tests (Jest 2) ------"]
      273 GETUPVAL                         R11 0
      274 GETTABLEKS                       R11 R11 K17 ["Name"]
      276 NAMECALL                         R9 R9 K18 ["format"]
      278 CALL                             R9 2 1
      279 CALL                             R8 1 0
      280 NEWTABLE                         R10 0 1
      282 MOVE                             R11 R0
      283 SETLIST                          R10 R11 1 [1]
      285 MOVE                             R11 R7
      286 NAMECALL                         R8 R5 K68 ["run"]
      288 CALL                             R8 3 0
      289 GETIMPORT                        R8 K22 [print]
      291 LOADK                            R9 K48 ["----------------------------------"]
      292 CALL                             R8 1 0
      293 GETTABLEKS                       R8 R1 K55 ["RunRhodiumTests"]
      295 JUMPIFNOT                        R8 ; [+25]
      296 GETIMPORT                        R8 K22 [print]
      298 LOADK                            R9 K69 ["----- All %* Rhodium Tests ------"]
      299 GETUPVAL                         R11 0
      300 GETTABLEKS                       R11 R11 K17 ["Name"]
      302 NAMECALL                         R9 R9 K18 ["format"]
      304 CALL                             R9 2 1
      305 CALL                             R8 1 0
      306 NEWTABLE                         R10 0 1
      308 GETUPVAL                         R11 0
      309 GETTABLEKS                       R11 R11 K70 ["RhodiumTests"]
      311 SETLIST                          R10 R11 1 [1]
      313 MOVE                             R11 R7
      314 NAMECALL                         R8 R5 K68 ["run"]
      316 CALL                             R8 3 0
      317 GETIMPORT                        R8 K22 [print]
      319 LOADK                            R9 K48 ["----------------------------------"]
      320 CALL                             R8 1 0
      321 JUMPIFNOT                        R2 ; [+53]
      322 GETTABLEKS                       R8 R1 K56 ["RunDeveloperFrameworkTests"]
      324 JUMPIFNOT                        R8 ; [+50]
      325 GETIMPORT                        R8 K22 [print]
      327 LOADK                            R9 K71 ["----- All DeveloperFramework Tests ------"]
      328 CALL                             R8 1 0
      329 NEWTABLE                         R8 0 0
      331 GETIMPORT                        R9 K73 [ipairs]
      333 NAMECALL                         R10 R2 K74 ["GetChildren"]
      335 CALL                             R10 1 -1
      336 CALL                             R9 -1 3
      337 FORGPREP_INEXT                   R9
      338 LOADB                            R14 1
      339 GETTABLEKS                       R15 R13 K75 ["ClassName"]
      341 JUMPIFEQKS                       R15 K76 ["Folder"] ; [+7]
      343 GETTABLEKS                       R15 R13 K75 ["ClassName"]
      345 JUMPIFEQKS                       R15 K25 ["ModuleScript"] ; [+2]
      347 LOADB                            R14 0 +1
      348 LOADB                            R14 1
      349 JUMPIFNOT                        R14 ; [+14]
      350 GETTABLEKS                       R15 R13 K17 ["Name"]
      352 JUMPIFEQKS                       R15 K77 ["packages"] ; [+11]
      354 GETTABLEKS                       R15 R13 K17 ["Name"]
      356 JUMPIFEQKS                       R15 K6 ["Packages"] ; [+7]
      358 FASTCALL2                        TABLE_INSERT R8 R13 ; [+4]
      360 MOVE                             R16 R8
      361 MOVE                             R17 R13
      362 GETUPVAL                         R15 2
      363 CALL                             R15 2 0
      364 FORGLOOP                         R9 2 [inext] ; [-27]
      366 MOVE                             R11 R8
      367 MOVE                             R12 R7
      368 NAMECALL                         R9 R5 K68 ["run"]
      370 CALL                             R9 3 0
      371 GETIMPORT                        R9 K22 [print]
      373 LOADK                            R10 K48 ["----------------------------------"]
      374 CALL                             R9 1 0
      375 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
