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
       39 JUMPIFNOT                        R3 ; [+145]
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
      127 GETIMPORT                        R8 K36 [pcall]
      129 NEWCLOSURE                       R9 P0
      130 CAPTURE                          REF R7
      131 CAPTURE                          VAL R6
      132 CALL                             R8 1 2
      133 GETTABLEKS                       R10 R3 K37 ["runCLI"]
      135 MOVE                             R11 R5
      136 DUPTABLE                         R12 K44 [{["verbose"] = False, ["ci"] = True, ["testPathPattern"], ["listTests"]}]
      137 GETIMPORT                        R13 K1 [_G]
      139 GETTABLEKS                       R13 R13 K45 ["LEST_TEST_NAME_PATTERN"]
      141 SETTABLEKS                       R13 R12 K42 ["testPathPattern"]
      143 SETTABLEKS                       R7 R12 K43 ["listTests"]
      145 NEWTABLE                         R13 0 1
      147 MOVE                             R14 R5
      148 SETLIST                          R13 R14 1 [1]
      150 CALL                             R10 3 1
      151 NAMECALL                         R10 R10 K46 ["awaitStatus"]
      153 CALL                             R10 1 2
      154 JUMPIFNOTEQKS                    R10 K47 ["Rejected"] ; [+5]
      156 GETIMPORT                        R12 K22 [print]
      158 MOVE                             R13 R11
      159 CALL                             R12 1 0
      160 GETIMPORT                        R12 K22 [print]
      162 LOADK                            R13 K48 ["----------------------------------"]
      163 CALL                             R12 1 0
      164 JUMPIFNOTEQKS                    R10 K49 ["Resolved"] ; [+15]
      166 GETTABLEKS                       R12 R11 K50 ["results"]
      168 GETTABLEKS                       R12 R12 K51 ["numFailedTestSuites"]
      170 LOADN                            R13 0
      171 JUMPIFLT                         R13 R12 ; [+8]
      173 GETTABLEKS                       R12 R11 K50 ["results"]
      175 GETTABLEKS                       R12 R12 K52 ["numFailedTests"]
      177 LOADN                            R13 0
      178 JUMPIFNOTLT                      R13 R12 ; [+5]
      180 GETIMPORT                        R12 K15 [error]
      182 LOADK                            R13 K53 ["Jest 3 test run failed"]
      183 CALL                             R12 1 0
      184 CLOSEUPVALS                      R7
      185 GETTABLEKS                       R3 R1 K54 ["RunTests"]
      187 JUMPIF                           R3 ; [+6]
      188 GETTABLEKS                       R3 R1 K55 ["RunRhodiumTests"]
      190 JUMPIF                           R3 ; [+3]
      191 GETTABLEKS                       R3 R1 K56 ["RunDeveloperFrameworkTests"]
      193 JUMPIFNOT                        R3 ; [+180]
      194 GETUPVAL                         R3 0
      195 GETTABLEKS                       R3 R3 K6 ["Packages"]
      197 GETTABLEKS                       R3 R3 K11 ["Dev"]
      199 LOADK                            R5 K13 ["JestGlobals"]
      200 NAMECALL                         R3 R3 K9 ["FindFirstChild"]
      202 CALL                             R3 2 1
      203 JUMPIF                           R3 ; [+10]
      204 GETIMPORT                        R3 K15 [error]
      206 LOADK                            R4 K57 ["Please add JestGlobals to Dev dependencies of %* to run tests"]
      207 GETUPVAL                         R6 0
      208 GETTABLEKS                       R6 R6 K17 ["Name"]
      210 NAMECALL                         R4 R4 K18 ["format"]
      212 CALL                             R4 2 1
      213 CALL                             R3 1 0
      214 GETIMPORT                        R3 K20 [require]
      216 GETUPVAL                         R4 0
      217 GETTABLEKS                       R4 R4 K6 ["Packages"]
      219 GETTABLEKS                       R4 R4 K11 ["Dev"]
      221 GETTABLEKS                       R4 R4 K13 ["JestGlobals"]
      223 CALL                             R3 1 1
      224 GETTABLEKS                       R4 R3 K58 ["TestEZ"]
      226 JUMPIF                           R4 ; [+10]
      227 GETIMPORT                        R4 K15 [error]
      229 LOADK                            R5 K59 ["Please use JestGlobals versions that has TestEZ (2.4.1) in %* to run tests"]
      230 GETUPVAL                         R7 0
      231 GETTABLEKS                       R7 R7 K17 ["Name"]
      233 NAMECALL                         R5 R5 K18 ["format"]
      235 CALL                             R5 2 1
      236 CALL                             R4 1 0
      237 GETTABLEKS                       R4 R3 K58 ["TestEZ"]
      239 GETTABLEKS                       R5 R4 K60 ["TestBootstrap"]
      241 GETTABLEKS                       R6 R4 K61 ["Reporters"]
      243 GETTABLEKS                       R6 R6 K62 ["TeamCityReporter"]
      245 GETTABLEKS                       R7 R4 K61 ["Reporters"]
      247 GETTABLEKS                       R7 R7 K63 ["TextReporter"]
      249 GETTABLEKS                       R8 R1 K64 ["LogTestsQuiet"]
      251 JUMPIFNOT                        R8 ; [+4]
      252 GETTABLEKS                       R8 R4 K61 ["Reporters"]
      254 GETTABLEKS                       R7 R8 K65 ["TextReporterQuiet"]
      256 GETIMPORT                        R9 K1 [_G]
      258 GETTABLEKS                       R8 R9 K66 ["TEAMCITY"]
      260 JUMPIFNOT                        R8 ; [+2]
      261 MOVE                             R7 R6
      262 JUMP                             ; [0]
      263 GETTABLEKS                       R8 R1 K54 ["RunTests"]
      265 JUMPIFNOT                        R8 ; [+26]
      266 GETUPVAL                         R8 1
      267 MOVE                             R9 R0
      268 CALL                             R8 1 0
      269 GETIMPORT                        R8 K22 [print]
      271 LOADK                            R9 K67 ["----- All %* Tests (Jest 2) ------"]
      272 GETUPVAL                         R11 0
      273 GETTABLEKS                       R11 R11 K17 ["Name"]
      275 NAMECALL                         R9 R9 K18 ["format"]
      277 CALL                             R9 2 1
      278 CALL                             R8 1 0
      279 NEWTABLE                         R10 0 1
      281 MOVE                             R11 R0
      282 SETLIST                          R10 R11 1 [1]
      284 MOVE                             R11 R7
      285 NAMECALL                         R8 R5 K68 ["run"]
      287 CALL                             R8 3 0
      288 GETIMPORT                        R8 K22 [print]
      290 LOADK                            R9 K48 ["----------------------------------"]
      291 CALL                             R8 1 0
      292 GETTABLEKS                       R8 R1 K55 ["RunRhodiumTests"]
      294 JUMPIFNOT                        R8 ; [+25]
      295 GETIMPORT                        R8 K22 [print]
      297 LOADK                            R9 K69 ["----- All %* Rhodium Tests ------"]
      298 GETUPVAL                         R11 0
      299 GETTABLEKS                       R11 R11 K17 ["Name"]
      301 NAMECALL                         R9 R9 K18 ["format"]
      303 CALL                             R9 2 1
      304 CALL                             R8 1 0
      305 NEWTABLE                         R10 0 1
      307 GETUPVAL                         R11 0
      308 GETTABLEKS                       R11 R11 K70 ["RhodiumTests"]
      310 SETLIST                          R10 R11 1 [1]
      312 MOVE                             R11 R7
      313 NAMECALL                         R8 R5 K68 ["run"]
      315 CALL                             R8 3 0
      316 GETIMPORT                        R8 K22 [print]
      318 LOADK                            R9 K48 ["----------------------------------"]
      319 CALL                             R8 1 0
      320 JUMPIFNOT                        R2 ; [+53]
      321 GETTABLEKS                       R8 R1 K56 ["RunDeveloperFrameworkTests"]
      323 JUMPIFNOT                        R8 ; [+50]
      324 GETIMPORT                        R8 K22 [print]
      326 LOADK                            R9 K71 ["----- All DeveloperFramework Tests ------"]
      327 CALL                             R8 1 0
      328 NEWTABLE                         R8 0 0
      330 GETIMPORT                        R9 K73 [ipairs]
      332 NAMECALL                         R10 R2 K74 ["GetChildren"]
      334 CALL                             R10 1 -1
      335 CALL                             R9 -1 3
      336 FORGPREP_INEXT                   R9
      337 LOADB                            R14 1
      338 GETTABLEKS                       R15 R13 K75 ["ClassName"]
      340 JUMPIFEQKS                       R15 K76 ["Folder"] ; [+7]
      342 GETTABLEKS                       R15 R13 K75 ["ClassName"]
      344 JUMPIFEQKS                       R15 K25 ["ModuleScript"] ; [+2]
      346 LOADB                            R14 0 +1
      347 LOADB                            R14 1
      348 JUMPIFNOT                        R14 ; [+14]
      349 GETTABLEKS                       R15 R13 K17 ["Name"]
      351 JUMPIFEQKS                       R15 K77 ["packages"] ; [+11]
      353 GETTABLEKS                       R15 R13 K17 ["Name"]
      355 JUMPIFEQKS                       R15 K6 ["Packages"] ; [+7]
      357 FASTCALL2                        TABLE_INSERT R8 R13 ; [+4]
      359 MOVE                             R16 R8
      360 MOVE                             R17 R13
      361 GETUPVAL                         R15 2
      362 CALL                             R15 2 0
      363 FORGLOOP                         R9 2 [inext] ; [-27]
      365 MOVE                             R11 R8
      366 MOVE                             R12 R7
      367 NAMECALL                         R9 R5 K68 ["run"]
      369 CALL                             R9 3 0
      370 GETIMPORT                        R9 K22 [print]
      372 LOADK                            R10 K48 ["----------------------------------"]
      373 CALL                             R9 1 0
      374 RETURN                           R0 0

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
