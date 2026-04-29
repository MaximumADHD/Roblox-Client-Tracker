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
       39 JUMPIFNOT                        R3 ; [+154]
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
      105 JUMP                             ; [+1]
      106 LOADNIL                          R4
      107 LOADK                            R8 K27 ["failed to run Jest 3 tests for %* (no jest.config.lua file found)"]
      108 GETUPVAL                         R11 0
      109 GETTABLEKS                       R10 R11 K17 ["Name"]
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
      139 DUPTABLE                         R12 K42 [{"verbose", "ci", "testPathPattern", "listTests"}]
      140 LOADB                            R13 0
      141 SETTABLEKS                       R13 R12 K38 ["verbose"]
      143 LOADB                            R13 1
      144 SETTABLEKS                       R13 R12 K39 ["ci"]
      146 GETIMPORT                        R14 K1 [_G]
      148 GETTABLEKS                       R13 R14 K43 ["LEST_TEST_NAME_PATTERN"]
      150 SETTABLEKS                       R13 R12 K40 ["testPathPattern"]
      152 SETTABLEKS                       R7 R12 K41 ["listTests"]
      154 NEWTABLE                         R13 0 1
      156 MOVE                             R14 R5
      157 SETLIST                          R13 R14 1 [1]
      159 CALL                             R10 3 1
      160 NAMECALL                         R10 R10 K44 ["awaitStatus"]
      162 CALL                             R10 1 2
      163 JUMPIFNOTEQKS                    R10 K45 ["Rejected"] ; [+5]
      165 GETIMPORT                        R12 K22 [print]
      167 MOVE                             R13 R11
      168 CALL                             R12 1 0
      169 GETIMPORT                        R12 K22 [print]
      171 LOADK                            R13 K46 ["----------------------------------"]
      172 CALL                             R12 1 0
      173 JUMPIFNOTEQKS                    R10 K47 ["Resolved"] ; [+15]
      175 GETTABLEKS                       R13 R11 K48 ["results"]
      177 GETTABLEKS                       R12 R13 K49 ["numFailedTestSuites"]
      179 LOADN                            R13 0
      180 JUMPIFLT                         R13 R12 ; [+8]
      182 GETTABLEKS                       R13 R11 K48 ["results"]
      184 GETTABLEKS                       R12 R13 K50 ["numFailedTests"]
      186 LOADN                            R13 0
      187 JUMPIFNOTLT                      R13 R12 ; [+5]
      189 GETIMPORT                        R12 K15 [error]
      191 LOADK                            R13 K51 ["Jest 3 test run failed"]
      192 CALL                             R12 1 0
      193 CLOSEUPVALS                      R7
      194 GETTABLEKS                       R3 R1 K52 ["RunTests"]
      196 JUMPIF                           R3 ; [+6]
      197 GETTABLEKS                       R3 R1 K53 ["RunRhodiumTests"]
      199 JUMPIF                           R3 ; [+3]
      200 GETTABLEKS                       R3 R1 K54 ["RunDeveloperFrameworkTests"]
      202 JUMPIFNOT                        R3 ; [+184]
      203 GETUPVAL                         R5 0
      204 GETTABLEKS                       R4 R5 K6 ["Packages"]
      206 GETTABLEKS                       R3 R4 K11 ["Dev"]
      208 LOADK                            R5 K13 ["JestGlobals"]
      209 NAMECALL                         R3 R3 K9 ["FindFirstChild"]
      211 CALL                             R3 2 1
      212 JUMPIF                           R3 ; [+11]
      213 GETIMPORT                        R3 K15 [error]
      215 LOADK                            R5 K55 ["Please add JestGlobals to Dev dependencies of %* to run tests"]
      216 GETUPVAL                         R8 0
      217 GETTABLEKS                       R7 R8 K17 ["Name"]
      219 NAMECALL                         R5 R5 K18 ["format"]
      221 CALL                             R5 2 1
      222 MOVE                             R4 R5
      223 CALL                             R3 1 0
      224 GETIMPORT                        R3 K20 [require]
      226 GETUPVAL                         R7 0
      227 GETTABLEKS                       R6 R7 K6 ["Packages"]
      229 GETTABLEKS                       R5 R6 K11 ["Dev"]
      231 GETTABLEKS                       R4 R5 K13 ["JestGlobals"]
      233 CALL                             R3 1 1
      234 GETTABLEKS                       R4 R3 K56 ["TestEZ"]
      236 JUMPIF                           R4 ; [+11]
      237 GETIMPORT                        R4 K15 [error]
      239 LOADK                            R6 K57 ["Please use JestGlobals versions that has TestEZ (2.4.1) in %* to run tests"]
      240 GETUPVAL                         R9 0
      241 GETTABLEKS                       R8 R9 K17 ["Name"]
      243 NAMECALL                         R6 R6 K18 ["format"]
      245 CALL                             R6 2 1
      246 MOVE                             R5 R6
      247 CALL                             R4 1 0
      248 GETTABLEKS                       R4 R3 K56 ["TestEZ"]
      250 GETTABLEKS                       R5 R4 K58 ["TestBootstrap"]
      252 GETTABLEKS                       R7 R4 K59 ["Reporters"]
      254 GETTABLEKS                       R6 R7 K60 ["TeamCityReporter"]
      256 GETTABLEKS                       R8 R4 K59 ["Reporters"]
      258 GETTABLEKS                       R7 R8 K61 ["TextReporter"]
      260 GETTABLEKS                       R8 R1 K62 ["LogTestsQuiet"]
      262 JUMPIFNOT                        R8 ; [+4]
      263 GETTABLEKS                       R8 R4 K59 ["Reporters"]
      265 GETTABLEKS                       R7 R8 K63 ["TextReporterQuiet"]
      267 GETIMPORT                        R9 K1 [_G]
      269 GETTABLEKS                       R8 R9 K64 ["TEAMCITY"]
      271 JUMPIFNOT                        R8 ; [+2]
      272 MOVE                             R7 R6
      273 JUMP                             ; [0]
      274 GETTABLEKS                       R8 R1 K52 ["RunTests"]
      276 JUMPIFNOT                        R8 ; [+27]
      277 GETUPVAL                         R8 1
      278 MOVE                             R9 R0
      279 CALL                             R8 1 0
      280 GETIMPORT                        R8 K22 [print]
      282 LOADK                            R10 K65 ["----- All %* Tests (Jest 2) ------"]
      283 GETUPVAL                         R13 0
      284 GETTABLEKS                       R12 R13 K17 ["Name"]
      286 NAMECALL                         R10 R10 K18 ["format"]
      288 CALL                             R10 2 1
      289 MOVE                             R9 R10
      290 CALL                             R8 1 0
      291 NEWTABLE                         R10 0 1
      293 MOVE                             R11 R0
      294 SETLIST                          R10 R11 1 [1]
      296 MOVE                             R11 R7
      297 NAMECALL                         R8 R5 K66 ["run"]
      299 CALL                             R8 3 0
      300 GETIMPORT                        R8 K22 [print]
      302 LOADK                            R9 K46 ["----------------------------------"]
      303 CALL                             R8 1 0
      304 GETTABLEKS                       R8 R1 K53 ["RunRhodiumTests"]
      306 JUMPIFNOT                        R8 ; [+26]
      307 GETIMPORT                        R8 K22 [print]
      309 LOADK                            R10 K67 ["----- All %* Rhodium Tests ------"]
      310 GETUPVAL                         R13 0
      311 GETTABLEKS                       R12 R13 K17 ["Name"]
      313 NAMECALL                         R10 R10 K18 ["format"]
      315 CALL                             R10 2 1
      316 MOVE                             R9 R10
      317 CALL                             R8 1 0
      318 NEWTABLE                         R10 0 1
      320 GETUPVAL                         R12 0
      321 GETTABLEKS                       R11 R12 K68 ["RhodiumTests"]
      323 SETLIST                          R10 R11 1 [1]
      325 MOVE                             R11 R7
      326 NAMECALL                         R8 R5 K66 ["run"]
      328 CALL                             R8 3 0
      329 GETIMPORT                        R8 K22 [print]
      331 LOADK                            R9 K46 ["----------------------------------"]
      332 CALL                             R8 1 0
      333 JUMPIFNOT                        R2 ; [+53]
      334 GETTABLEKS                       R8 R1 K54 ["RunDeveloperFrameworkTests"]
      336 JUMPIFNOT                        R8 ; [+50]
      337 GETIMPORT                        R8 K22 [print]
      339 LOADK                            R9 K69 ["----- All DeveloperFramework Tests ------"]
      340 CALL                             R8 1 0
      341 NEWTABLE                         R8 0 0
      343 GETIMPORT                        R9 K71 [ipairs]
      345 NAMECALL                         R10 R2 K72 ["GetChildren"]
      347 CALL                             R10 1 -1
      348 CALL                             R9 -1 3
      349 FORGPREP_INEXT                   R9
      350 LOADB                            R14 1
      351 GETTABLEKS                       R15 R13 K73 ["ClassName"]
      353 JUMPIFEQKS                       R15 K74 ["Folder"] ; [+7]
      355 GETTABLEKS                       R15 R13 K73 ["ClassName"]
      357 JUMPIFEQKS                       R15 K25 ["ModuleScript"] ; [+2]
      359 LOADB                            R14 0 +1
      360 LOADB                            R14 1
      361 JUMPIFNOT                        R14 ; [+14]
      362 GETTABLEKS                       R15 R13 K17 ["Name"]
      364 JUMPIFEQKS                       R15 K75 ["packages"] ; [+11]
      366 GETTABLEKS                       R15 R13 K17 ["Name"]
      368 JUMPIFEQKS                       R15 K6 ["Packages"] ; [+7]
      370 FASTCALL2                        TABLE_INSERT R8 R13 ; [+4]
      372 MOVE                             R16 R8
      373 MOVE                             R17 R13
      374 GETUPVAL                         R15 2
      375 CALL                             R15 2 0
      376 FORGLOOP                         R9 2 [inext] ; [-27]
      378 MOVE                             R11 R8
      379 MOVE                             R12 R7
      380 NAMECALL                         R9 R5 K66 ["run"]
      382 CALL                             R9 3 0
      383 GETIMPORT                        R9 K22 [print]
      385 LOADK                            R10 K46 ["----------------------------------"]
      386 CALL                             R9 1 0
      387 RETURN                           R0 0

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
