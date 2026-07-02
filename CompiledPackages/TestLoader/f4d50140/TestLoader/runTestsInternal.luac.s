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
       39 JUMPIFNOT                        R3 ; [+148]
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
       59 JUMPIF                           R3 ; [+11]
       60 GETIMPORT                        R3 K15 [error]
       62 LOADK                            R5 K16 ["Please add both Jest and JestGlobals vers to Dev dependencies of %* to run tests. \nSee the guide https://roblox.github.io/jest-roblox-internal/upgrading-to-jest3 if you are migrating from Jest 2"]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K17 ["Name"]
       66 NAMECALL                         R5 R5 K18 ["format"]
       68 CALL                             R5 2 1
       69 MOVE                             R4 R5
       70 CALL                             R3 1 0
       71 GETIMPORT                        R3 K20 [require]
       73 GETUPVAL                         R4 0
       74 GETTABLEKS                       R4 R4 K6 ["Packages"]
       76 GETTABLEKS                       R4 R4 K11 ["Dev"]
       78 GETTABLEKS                       R4 R4 K12 ["Jest"]
       80 CALL                             R3 1 1
       81 GETIMPORT                        R4 K22 [print]
       83 LOADK                            R6 K23 ["----- All %* Tests (Jest 3) ------"]
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R8 R8 K17 ["Name"]
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
      105 JUMP                             ; [+1]
      106 LOADNIL                          R4
      107 LOADK                            R8 K27 ["failed to run Jest 3 tests for %* (no jest.config.lua file found)"]
      108 GETUPVAL                         R10 0
      109 GETTABLEKS                       R10 R10 K17 ["Name"]
      111 NAMECALL                         R8 R8 K18 ["format"]
      113 CALL                             R8 2 1
      114 MOVE                             R7 R8
      115 FASTCALL2                        ASSERT R4 R7 ; [+4]
      117 MOVE                             R6 R4
      118 GETIMPORT                        R5 K29 [assert]
      120 CALL                             R5 2 0
      121 GETTABLEKS                       R5 R4 K30 ["Parent"]
      123 GETIMPORT                        R6 K32 [game]
      125 LOADK                            R8 K33 ["CLICommandService"]
      126 NAMECALL                         R6 R6 K34 ["GetService"]
      128 CALL                             R6 2 1
      129 LOADB                            R7 0
      130 GETIMPORT                        R8 K36 [pcall]
      132 NEWCLOSURE                       R9 P0
      133 CAPTURE                          REF R7
      134 CAPTURE                          VAL R6
      135 CALL                             R8 1 2
      136 GETTABLEKS                       R10 R3 K37 ["runCLI"]
      138 MOVE                             R11 R5
      139 DUPTABLE                         R12 K44 [{["verbose"] = False, ["ci"] = True, ["testPathPattern"], ["listTests"]}]
      140 GETIMPORT                        R13 K1 [_G]
      142 GETTABLEKS                       R13 R13 K45 ["LEST_TEST_NAME_PATTERN"]
      144 SETTABLEKS                       R13 R12 K42 ["testPathPattern"]
      146 SETTABLEKS                       R7 R12 K43 ["listTests"]
      148 NEWTABLE                         R13 0 1
      150 MOVE                             R14 R5
      151 SETLIST                          R13 R14 1 [1]
      153 CALL                             R10 3 1
      154 NAMECALL                         R10 R10 K46 ["awaitStatus"]
      156 CALL                             R10 1 2
      157 JUMPIFNOTEQKS                    R10 K47 ["Rejected"] ; [+5]
      159 GETIMPORT                        R12 K22 [print]
      161 MOVE                             R13 R11
      162 CALL                             R12 1 0
      163 GETIMPORT                        R12 K22 [print]
      165 LOADK                            R13 K48 ["----------------------------------"]
      166 CALL                             R12 1 0
      167 JUMPIFNOTEQKS                    R10 K49 ["Resolved"] ; [+15]
      169 GETTABLEKS                       R12 R11 K50 ["results"]
      171 GETTABLEKS                       R12 R12 K51 ["numFailedTestSuites"]
      173 LOADN                            R13 0
      174 JUMPIFLT                         R13 R12 ; [+8]
      176 GETTABLEKS                       R12 R11 K50 ["results"]
      178 GETTABLEKS                       R12 R12 K52 ["numFailedTests"]
      180 LOADN                            R13 0
      181 JUMPIFNOTLT                      R13 R12 ; [+5]
      183 GETIMPORT                        R12 K15 [error]
      185 LOADK                            R13 K53 ["Jest 3 test run failed"]
      186 CALL                             R12 1 0
      187 CLOSEUPVALS                      R7
      188 GETTABLEKS                       R3 R1 K54 ["RunTests"]
      190 JUMPIF                           R3 ; [+6]
      191 GETTABLEKS                       R3 R1 K55 ["RunRhodiumTests"]
      193 JUMPIF                           R3 ; [+3]
      194 GETTABLEKS                       R3 R1 K56 ["RunDeveloperFrameworkTests"]
      196 JUMPIFNOT                        R3 ; [+184]
      197 GETUPVAL                         R3 0
      198 GETTABLEKS                       R3 R3 K6 ["Packages"]
      200 GETTABLEKS                       R3 R3 K11 ["Dev"]
      202 LOADK                            R5 K13 ["JestGlobals"]
      203 NAMECALL                         R3 R3 K9 ["FindFirstChild"]
      205 CALL                             R3 2 1
      206 JUMPIF                           R3 ; [+11]
      207 GETIMPORT                        R3 K15 [error]
      209 LOADK                            R5 K57 ["Please add JestGlobals to Dev dependencies of %* to run tests"]
      210 GETUPVAL                         R7 0
      211 GETTABLEKS                       R7 R7 K17 ["Name"]
      213 NAMECALL                         R5 R5 K18 ["format"]
      215 CALL                             R5 2 1
      216 MOVE                             R4 R5
      217 CALL                             R3 1 0
      218 GETIMPORT                        R3 K20 [require]
      220 GETUPVAL                         R4 0
      221 GETTABLEKS                       R4 R4 K6 ["Packages"]
      223 GETTABLEKS                       R4 R4 K11 ["Dev"]
      225 GETTABLEKS                       R4 R4 K13 ["JestGlobals"]
      227 CALL                             R3 1 1
      228 GETTABLEKS                       R4 R3 K58 ["TestEZ"]
      230 JUMPIF                           R4 ; [+11]
      231 GETIMPORT                        R4 K15 [error]
      233 LOADK                            R6 K59 ["Please use JestGlobals versions that has TestEZ (2.4.1) in %* to run tests"]
      234 GETUPVAL                         R8 0
      235 GETTABLEKS                       R8 R8 K17 ["Name"]
      237 NAMECALL                         R6 R6 K18 ["format"]
      239 CALL                             R6 2 1
      240 MOVE                             R5 R6
      241 CALL                             R4 1 0
      242 GETTABLEKS                       R4 R3 K58 ["TestEZ"]
      244 GETTABLEKS                       R5 R4 K60 ["TestBootstrap"]
      246 GETTABLEKS                       R6 R4 K61 ["Reporters"]
      248 GETTABLEKS                       R6 R6 K62 ["TeamCityReporter"]
      250 GETTABLEKS                       R7 R4 K61 ["Reporters"]
      252 GETTABLEKS                       R7 R7 K63 ["TextReporter"]
      254 GETTABLEKS                       R8 R1 K64 ["LogTestsQuiet"]
      256 JUMPIFNOT                        R8 ; [+4]
      257 GETTABLEKS                       R8 R4 K61 ["Reporters"]
      259 GETTABLEKS                       R7 R8 K65 ["TextReporterQuiet"]
      261 GETIMPORT                        R9 K1 [_G]
      263 GETTABLEKS                       R8 R9 K66 ["TEAMCITY"]
      265 JUMPIFNOT                        R8 ; [+2]
      266 MOVE                             R7 R6
      267 JUMP                             ; [0]
      268 GETTABLEKS                       R8 R1 K54 ["RunTests"]
      270 JUMPIFNOT                        R8 ; [+27]
      271 GETUPVAL                         R8 1
      272 MOVE                             R9 R0
      273 CALL                             R8 1 0
      274 GETIMPORT                        R8 K22 [print]
      276 LOADK                            R10 K67 ["----- All %* Tests (Jest 2) ------"]
      277 GETUPVAL                         R12 0
      278 GETTABLEKS                       R12 R12 K17 ["Name"]
      280 NAMECALL                         R10 R10 K18 ["format"]
      282 CALL                             R10 2 1
      283 MOVE                             R9 R10
      284 CALL                             R8 1 0
      285 NEWTABLE                         R10 0 1
      287 MOVE                             R11 R0
      288 SETLIST                          R10 R11 1 [1]
      290 MOVE                             R11 R7
      291 NAMECALL                         R8 R5 K68 ["run"]
      293 CALL                             R8 3 0
      294 GETIMPORT                        R8 K22 [print]
      296 LOADK                            R9 K48 ["----------------------------------"]
      297 CALL                             R8 1 0
      298 GETTABLEKS                       R8 R1 K55 ["RunRhodiumTests"]
      300 JUMPIFNOT                        R8 ; [+26]
      301 GETIMPORT                        R8 K22 [print]
      303 LOADK                            R10 K69 ["----- All %* Rhodium Tests ------"]
      304 GETUPVAL                         R12 0
      305 GETTABLEKS                       R12 R12 K17 ["Name"]
      307 NAMECALL                         R10 R10 K18 ["format"]
      309 CALL                             R10 2 1
      310 MOVE                             R9 R10
      311 CALL                             R8 1 0
      312 NEWTABLE                         R10 0 1
      314 GETUPVAL                         R11 0
      315 GETTABLEKS                       R11 R11 K70 ["RhodiumTests"]
      317 SETLIST                          R10 R11 1 [1]
      319 MOVE                             R11 R7
      320 NAMECALL                         R8 R5 K68 ["run"]
      322 CALL                             R8 3 0
      323 GETIMPORT                        R8 K22 [print]
      325 LOADK                            R9 K48 ["----------------------------------"]
      326 CALL                             R8 1 0
      327 JUMPIFNOT                        R2 ; [+53]
      328 GETTABLEKS                       R8 R1 K56 ["RunDeveloperFrameworkTests"]
      330 JUMPIFNOT                        R8 ; [+50]
      331 GETIMPORT                        R8 K22 [print]
      333 LOADK                            R9 K71 ["----- All DeveloperFramework Tests ------"]
      334 CALL                             R8 1 0
      335 NEWTABLE                         R8 0 0
      337 GETIMPORT                        R9 K73 [ipairs]
      339 NAMECALL                         R10 R2 K74 ["GetChildren"]
      341 CALL                             R10 1 -1
      342 CALL                             R9 -1 3
      343 FORGPREP_INEXT                   R9
      344 LOADB                            R14 1
      345 GETTABLEKS                       R15 R13 K75 ["ClassName"]
      347 JUMPIFEQKS                       R15 K76 ["Folder"] ; [+7]
      349 GETTABLEKS                       R15 R13 K75 ["ClassName"]
      351 JUMPIFEQKS                       R15 K25 ["ModuleScript"] ; [+2]
      353 LOADB                            R14 0 +1
      354 LOADB                            R14 1
      355 JUMPIFNOT                        R14 ; [+14]
      356 GETTABLEKS                       R15 R13 K17 ["Name"]
      358 JUMPIFEQKS                       R15 K77 ["packages"] ; [+11]
      360 GETTABLEKS                       R15 R13 K17 ["Name"]
      362 JUMPIFEQKS                       R15 K6 ["Packages"] ; [+7]
      364 FASTCALL2                        TABLE_INSERT R8 R13 ; [+4]
      366 MOVE                             R16 R8
      367 MOVE                             R17 R13
      368 GETUPVAL                         R15 2
      369 CALL                             R15 2 0
      370 FORGLOOP                         R9 2 [inext] ; [-27]
      372 MOVE                             R11 R8
      373 MOVE                             R12 R7
      374 NAMECALL                         R9 R5 K68 ["run"]
      376 CALL                             R9 3 0
      377 GETIMPORT                        R9 K22 [print]
      379 LOADK                            R10 K48 ["----------------------------------"]
      380 CALL                             R9 1 0
      381 RETURN                           R0 0

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
