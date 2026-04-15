MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R4 R1 K8 ["Flags"]
       16 GETTABLEKS                       R3 R4 K9 ["Shared"]
       18 GETTABLEKS                       R2 R3 K10 ["FFlagAssistantDebugMode"]
       20 GETTABLEKS                       R5 R1 K8 ["Flags"]
       22 GETTABLEKS                       R4 R5 K9 ["Shared"]
       24 GETTABLEKS                       R3 R4 K11 ["FFlagAssistantTestAutomation"]
       26 GETTABLEKS                       R6 R1 K8 ["Flags"]
       28 GETTABLEKS                       R5 R6 K9 ["Shared"]
       30 GETTABLEKS                       R4 R5 K12 ["FFlagAssistantUseNewMeshGenTool"]
       32 GETTABLEKS                       R7 R1 K8 ["Flags"]
       34 GETTABLEKS                       R6 R7 K9 ["Shared"]
       36 GETTABLEKS                       R5 R6 K13 ["FFlagAssistantUseNewCreatorStoreTools"]
       38 GETTABLEKS                       R8 R1 K8 ["Flags"]
       40 GETTABLEKS                       R7 R8 K9 ["Shared"]
       42 GETTABLEKS                       R6 R7 K14 ["FFlagEnableAssistantImageUpload"]
       44 GETTABLEKS                       R9 R1 K8 ["Flags"]
       46 GETTABLEKS                       R8 R9 K9 ["Shared"]
       48 GETTABLEKS                       R7 R8 K15 ["FFlagEnableGrepTool"]
       50 GETTABLEKS                       R10 R1 K8 ["Flags"]
       52 GETTABLEKS                       R9 R10 K9 ["Shared"]
       54 GETTABLEKS                       R8 R9 K16 ["FFlagEnablePrimitiveGenTool"]
       56 GETTABLEKS                       R11 R1 K8 ["Flags"]
       58 GETTABLEKS                       R10 R11 K9 ["Shared"]
       60 GETTABLEKS                       R9 R10 K17 ["FFlagEnableWaitJobFinishedTool"]
       62 GETTABLEKS                       R12 R1 K8 ["Flags"]
       64 GETTABLEKS                       R11 R12 K9 ["Shared"]
       66 GETTABLEKS                       R10 R11 K18 ["FFlagProceduralModel"]
       68 GETTABLEKS                       R13 R1 K8 ["Flags"]
       70 GETTABLEKS                       R12 R13 K9 ["Shared"]
       72 GETTABLEKS                       R11 R12 K19 ["FFlagEnableSkills"]
       74 GETTABLEKS                       R14 R1 K8 ["Flags"]
       76 GETTABLEKS                       R13 R14 K9 ["Shared"]
       78 GETTABLEKS                       R12 R13 K20 ["FFlagEnableSubagents"]
       80 GETTABLEKS                       R15 R1 K8 ["Flags"]
       82 GETTABLEKS                       R14 R15 K9 ["Shared"]
       84 GETTABLEKS                       R13 R14 K21 ["FFlagEnablePlaytestSubagent"]
       86 GETTABLEKS                       R16 R1 K8 ["Flags"]
       88 GETTABLEKS                       R15 R16 K9 ["Shared"]
       90 GETTABLEKS                       R14 R15 K22 ["FFlagMigrateSubagentExperimentsToFlagRegister"]
       92 GETTABLEKS                       R17 R1 K8 ["Flags"]
       94 GETTABLEKS                       R16 R17 K9 ["Shared"]
       96 GETTABLEKS                       R15 R16 K23 ["FFlagAssistantQuestionAnswerTool"]
       98 GETTABLEKS                       R18 R1 K8 ["Flags"]
      100 GETTABLEKS                       R17 R18 K9 ["Shared"]
      102 GETTABLEKS                       R16 R17 K24 ["FFlagEnableHttpGetTool"]
      104 GETTABLEKS                       R19 R1 K8 ["Flags"]
      106 GETTABLEKS                       R18 R19 K9 ["Shared"]
      108 GETTABLEKS                       R17 R18 K25 ["FFlagAssistantPlanMode"]
      110 GETIMPORT                        R18 K5 [require]
      112 GETTABLEKS                       R21 R0 K26 ["Src"]
      114 GETTABLEKS                       R20 R21 K27 ["Util"]
      116 GETTABLEKS                       R19 R20 K28 ["ExperimentFeature"]
      118 CALL                             R18 1 1
      119 GETIMPORT                        R19 K5 [require]
      121 GETTABLEKS                       R22 R0 K26 ["Src"]
      123 GETTABLEKS                       R21 R22 K8 ["Flags"]
      125 GETTABLEKS                       R20 R21 K29 ["FFlagAssistantForceDebugMode"]
      127 CALL                             R19 1 1
      128 GETTABLEKS                       R21 R1 K30 ["Types"]
      130 GETTABLEKS                       R20 R21 K31 ["AssistantMode"]
      132 GETTABLEKS                       R23 R1 K32 ["Tools"]
      134 GETTABLEKS                       R22 R23 K33 ["ToolTypes"]
      136 GETTABLEKS                       R21 R22 K34 ["ToolNames"]
      138 GETTABLEKS                       R23 R1 K32 ["Tools"]
      140 GETTABLEKS                       R22 R23 K35 ["BuiltinTools"]
      142 NEWTABLE                         R23 32 0
      144 GETTABLEKS                       R24 R21 K36 ["ExecuteLuau"]
      146 GETTABLEKS                       R26 R21 K36 ["ExecuteLuau"]
      148 GETTABLE                         R25 R22 R26
      149 SETTABLE                         R25 R23 R24
      150 GETTABLEKS                       R24 R21 K37 ["FileSearch"]
      152 GETTABLEKS                       R26 R21 K37 ["FileSearch"]
      154 GETTABLE                         R25 R22 R26
      155 SETTABLE                         R25 R23 R24
      156 GETTABLEKS                       R24 R21 K38 ["GameTree"]
      158 GETTABLEKS                       R26 R21 K38 ["GameTree"]
      160 GETTABLE                         R25 R22 R26
      161 SETTABLE                         R25 R23 R24
      162 GETTABLEKS                       R24 R21 K39 ["GrepSearch"]
      164 GETTABLEKS                       R26 R21 K39 ["GrepSearch"]
      166 GETTABLE                         R25 R22 R26
      167 SETTABLE                         R25 R23 R24
      168 GETTABLEKS                       R24 R21 K40 ["Grep"]
      170 MOVE                             R26 R7
      171 CALL                             R26 0 1
      172 JUMPIFNOT                        R26 ; [+4]
      173 GETTABLEKS                       R26 R21 K40 ["Grep"]
      175 GETTABLE                         R25 R22 R26
      176 JUMP                             ; [+1]
      177 LOADNIL                          R25
      178 SETTABLE                         R25 R23 R24
      179 GETTABLEKS                       R24 R21 K41 ["InspectInstance"]
      181 GETTABLEKS                       R26 R21 K41 ["InspectInstance"]
      183 GETTABLE                         R25 R22 R26
      184 SETTABLE                         R25 R23 R24
      185 GETTABLEKS                       R24 R21 K42 ["MaterialGen"]
      187 GETTABLEKS                       R26 R21 K42 ["MaterialGen"]
      189 GETTABLE                         R25 R22 R26
      190 SETTABLE                         R25 R23 R24
      191 GETTABLEKS                       R24 R21 K43 ["MeshGen"]
      193 MOVE                             R26 R4
      194 CALL                             R26 0 1
      195 JUMPIFNOT                        R26 ; [+4]
      196 GETTABLEKS                       R26 R21 K43 ["MeshGen"]
      198 GETTABLE                         R25 R22 R26
      199 JUMP                             ; [+1]
      200 LOADNIL                          R25
      201 SETTABLE                         R25 R23 R24
      202 GETTABLEKS                       R24 R21 K44 ["MultiEdit"]
      204 GETTABLEKS                       R26 R21 K44 ["MultiEdit"]
      206 GETTABLE                         R25 R22 R26
      207 SETTABLE                         R25 R23 R24
      208 GETTABLEKS                       R24 R21 K45 ["ReadFile"]
      210 GETTABLEKS                       R26 R21 K45 ["ReadFile"]
      212 GETTABLE                         R25 R22 R26
      213 SETTABLE                         R25 R23 R24
      214 GETTABLEKS                       R24 R21 K46 ["TestGame"]
      216 MOVE                             R26 R3
      217 CALL                             R26 0 1
      218 JUMPIF                           R26 ; [+10]
      219 MOVE                             R26 R2
      220 CALL                             R26 0 1
      221 JUMPIFNOT                        R26 ; [+7]
      222 MOVE                             R26 R19
      223 CALL                             R26 0 1
      224 JUMPIFNOT                        R26 ; [+4]
      225 GETTABLEKS                       R26 R21 K46 ["TestGame"]
      227 GETTABLE                         R25 R22 R26
      228 JUMP                             ; [+1]
      229 LOADNIL                          R25
      230 SETTABLE                         R25 R23 R24
      231 GETTABLEKS                       R24 R21 K47 ["PrimitiveGen"]
      233 MOVE                             R26 R8
      234 CALL                             R26 0 1
      235 JUMPIFNOT                        R26 ; [+7]
      236 MOVE                             R26 R10
      237 CALL                             R26 0 1
      238 JUMPIFNOT                        R26 ; [+4]
      239 GETTABLEKS                       R26 R21 K47 ["PrimitiveGen"]
      241 GETTABLE                         R25 R22 R26
      242 JUMP                             ; [+1]
      243 LOADNIL                          R25
      244 SETTABLE                         R25 R23 R24
      245 GETTABLEKS                       R24 R21 K48 ["WaitJobFinished"]
      247 MOVE                             R26 R9
      248 CALL                             R26 0 1
      249 JUMPIFNOT                        R26 ; [+10]
      250 MOVE                             R26 R10
      251 CALL                             R26 0 1
      252 JUMPIFNOT                        R26 ; [+7]
      253 MOVE                             R26 R8
      254 CALL                             R26 0 1
      255 JUMPIFNOT                        R26 ; [+4]
      256 GETTABLEKS                       R26 R21 K48 ["WaitJobFinished"]
      258 GETTABLE                         R25 R22 R26
      259 JUMP                             ; [+1]
      260 LOADNIL                          R25
      261 SETTABLE                         R25 R23 R24
      262 GETTABLEKS                       R24 R21 K49 ["QuestionAnswer"]
      264 MOVE                             R26 R15
      265 CALL                             R26 0 1
      266 JUMPIFNOT                        R26 ; [+4]
      267 GETTABLEKS                       R26 R21 K49 ["QuestionAnswer"]
      269 GETTABLE                         R25 R22 R26
      270 JUMP                             ; [+1]
      271 LOADNIL                          R25
      272 SETTABLE                         R25 R23 R24
      273 GETTABLEKS                       R24 R21 K50 ["Skill"]
      275 MOVE                             R26 R11
      276 CALL                             R26 0 1
      277 JUMPIFNOT                        R26 ; [+4]
      278 GETTABLEKS                       R26 R21 K50 ["Skill"]
      280 GETTABLE                         R25 R22 R26
      281 JUMP                             ; [+1]
      282 LOADNIL                          R25
      283 SETTABLE                         R25 R23 R24
      284 GETTABLEKS                       R24 R21 K51 ["HttpGet"]
      286 MOVE                             R26 R16
      287 CALL                             R26 0 1
      288 JUMPIFNOT                        R26 ; [+4]
      289 GETTABLEKS                       R26 R21 K51 ["HttpGet"]
      291 GETTABLE                         R25 R22 R26
      292 JUMP                             ; [+1]
      293 LOADNIL                          R25
      294 SETTABLE                         R25 R23 R24
      295 GETTABLEKS                       R24 R21 K52 ["Subagent"]
      297 MOVE                             R26 R12
      298 CALL                             R26 0 1
      299 JUMPIFNOT                        R26 ; [+10]
      300 MOVE                             R26 R13
      301 CALL                             R26 0 1
      302 JUMPIF                           R26 ; [+3]
      303 MOVE                             R26 R14
      304 CALL                             R26 0 1
      305 JUMPIFNOT                        R26 ; [+4]
      306 GETTABLEKS                       R26 R21 K52 ["Subagent"]
      308 GETTABLE                         R25 R22 R26
      309 JUMP                             ; [+1]
      310 LOADNIL                          R25
      311 SETTABLE                         R25 R23 R24
      312 GETTABLEKS                       R24 R21 K53 ["FinalizePlan"]
      314 MOVE                             R26 R17
      315 CALL                             R26 0 1
      316 JUMPIFNOT                        R26 ; [+4]
      317 GETTABLEKS                       R26 R21 K53 ["FinalizePlan"]
      319 GETTABLE                         R25 R22 R26
      320 JUMP                             ; [+1]
      321 LOADNIL                          R25
      322 SETTABLE                         R25 R23 R24
      323 GETTABLEKS                       R24 R21 K54 ["CompleteTodoItems"]
      325 MOVE                             R26 R17
      326 CALL                             R26 0 1
      327 JUMPIFNOT                        R26 ; [+4]
      328 GETTABLEKS                       R26 R21 K54 ["CompleteTodoItems"]
      330 GETTABLE                         R25 R22 R26
      331 JUMP                             ; [+1]
      332 LOADNIL                          R25
      333 SETTABLE                         R25 R23 R24
      334 MOVE                             R24 R5
      335 CALL                             R24 0 1
      336 JUMPIFNOT                        R24 ; [+13]
      337 GETTABLEKS                       R24 R21 K55 ["CreatorStoreSearch"]
      339 GETTABLEKS                       R26 R21 K55 ["CreatorStoreSearch"]
      341 GETTABLE                         R25 R22 R26
      342 SETTABLE                         R25 R23 R24
      343 GETTABLEKS                       R24 R21 K56 ["CreatorStoreInsert"]
      345 GETTABLEKS                       R26 R21 K56 ["CreatorStoreInsert"]
      347 GETTABLE                         R25 R22 R26
      348 SETTABLE                         R25 R23 R24
      349 JUMP                             ; [+6]
      350 GETTABLEKS                       R24 R21 K57 ["InsertFromMarketplace"]
      352 GETTABLEKS                       R26 R21 K57 ["InsertFromMarketplace"]
      354 GETTABLE                         R25 R22 R26
      355 SETTABLE                         R25 R23 R24
      356 NEWTABLE                         R24 4 0
      358 GETTABLEKS                       R25 R21 K58 ["ScreenCapture"]
      360 GETTABLEKS                       R27 R21 K58 ["ScreenCapture"]
      362 GETTABLE                         R26 R22 R27
      363 SETTABLE                         R26 R24 R25
      364 GETTABLEKS                       R25 R21 K59 ["UploadImage"]
      366 MOVE                             R27 R6
      367 CALL                             R27 0 1
      368 JUMPIFNOT                        R27 ; [+4]
      369 GETTABLEKS                       R27 R21 K59 ["UploadImage"]
      371 GETTABLE                         R26 R22 R27
      372 JUMP                             ; [+1]
      373 LOADNIL                          R26
      374 SETTABLE                         R26 R24 R25
      375 GETTABLEKS                       R25 R21 K46 ["TestGame"]
      377 MOVE                             R27 R3
      378 CALL                             R27 0 1
      379 JUMPIF                           R27 ; [+10]
      380 MOVE                             R27 R2
      381 CALL                             R27 0 1
      382 JUMPIFNOT                        R27 ; [+7]
      383 MOVE                             R27 R19
      384 CALL                             R27 0 1
      385 JUMPIF                           R27 ; [+4]
      386 GETTABLEKS                       R27 R21 K46 ["TestGame"]
      388 GETTABLE                         R26 R22 R27
      389 JUMP                             ; [+1]
      390 LOADNIL                          R26
      391 SETTABLE                         R26 R24 R25
      392 GETTABLEKS                       R25 R21 K52 ["Subagent"]
      394 MOVE                             R27 R12
      395 CALL                             R27 0 1
      396 JUMPIFNOT                        R27 ; [+10]
      397 MOVE                             R27 R13
      398 CALL                             R27 0 1
      399 JUMPIF                           R27 ; [+7]
      400 MOVE                             R27 R14
      401 CALL                             R27 0 1
      402 JUMPIF                           R27 ; [+4]
      403 GETTABLEKS                       R27 R21 K52 ["Subagent"]
      405 GETTABLE                         R26 R22 R27
      406 JUMP                             ; [+1]
      407 LOADNIL                          R26
      408 SETTABLE                         R26 R24 R25
      409 NEWTABLE                         R25 1 0
      411 GETTABLEKS                       R27 R18 K60 ["FeatureNames"]
      413 GETTABLEKS                       R26 R27 K61 ["TestAutomation"]
      415 NEWTABLE                         R27 8 0
      417 GETTABLEKS                       R28 R21 K62 ["StartStopPlay"]
      419 GETTABLEKS                       R30 R21 K62 ["StartStopPlay"]
      421 GETTABLE                         R29 R22 R30
      422 SETTABLE                         R29 R27 R28
      423 GETTABLEKS                       R28 R21 K63 ["GetConsoleOutput"]
      425 GETTABLEKS                       R30 R21 K63 ["GetConsoleOutput"]
      427 GETTABLE                         R29 R22 R30
      428 SETTABLE                         R29 R27 R28
      429 GETTABLEKS                       R28 R21 K64 ["UserKeyboardInput"]
      431 GETTABLEKS                       R30 R21 K64 ["UserKeyboardInput"]
      433 GETTABLE                         R29 R22 R30
      434 SETTABLE                         R29 R27 R28
      435 GETTABLEKS                       R28 R21 K65 ["UserMouseInput"]
      437 GETTABLEKS                       R30 R21 K65 ["UserMouseInput"]
      439 GETTABLE                         R29 R22 R30
      440 SETTABLE                         R29 R27 R28
      441 GETTABLEKS                       R28 R21 K66 ["CharacterNavigation"]
      443 GETTABLEKS                       R30 R21 K66 ["CharacterNavigation"]
      445 GETTABLE                         R29 R22 R30
      446 SETTABLE                         R29 R27 R28
      447 SETTABLE                         R27 R25 R26
      448 NEWTABLE                         R26 2 0
      450 GETTABLEKS                       R27 R20 K67 ["Agent"]
      452 NEWTABLE                         R28 0 18
      454 GETTABLEKS                       R29 R21 K36 ["ExecuteLuau"]
      456 GETTABLEKS                       R30 R21 K37 ["FileSearch"]
      458 GETTABLEKS                       R31 R21 K38 ["GameTree"]
      460 GETTABLEKS                       R32 R21 K39 ["GrepSearch"]
      462 GETTABLEKS                       R33 R21 K40 ["Grep"]
      464 GETTABLEKS                       R34 R21 K57 ["InsertFromMarketplace"]
      466 GETTABLEKS                       R35 R21 K56 ["CreatorStoreInsert"]
      468 GETTABLEKS                       R36 R21 K55 ["CreatorStoreSearch"]
      470 GETTABLEKS                       R37 R21 K41 ["InspectInstance"]
      472 GETTABLEKS                       R38 R21 K42 ["MaterialGen"]
      474 GETTABLEKS                       R39 R21 K43 ["MeshGen"]
      476 GETTABLEKS                       R40 R21 K44 ["MultiEdit"]
      478 GETTABLEKS                       R41 R21 K45 ["ReadFile"]
      480 GETTABLEKS                       R42 R21 K47 ["PrimitiveGen"]
      482 GETTABLEKS                       R43 R21 K50 ["Skill"]
      484 GETTABLEKS                       R44 R21 K52 ["Subagent"]
      486 SETLIST                          R28 R29 16 [1]
      488 GETTABLEKS                       R29 R21 K58 ["ScreenCapture"]
      490 GETTABLEKS                       R30 R21 K59 ["UploadImage"]
      492 SETLIST                          R28 R29 2 [17]
      494 SETTABLE                         R28 R26 R27
      495 GETTABLEKS                       R27 R20 K68 ["Test"]
      497 NEWTABLE                         R28 0 23
      499 GETTABLEKS                       R29 R21 K36 ["ExecuteLuau"]
      501 GETTABLEKS                       R30 R21 K37 ["FileSearch"]
      503 GETTABLEKS                       R31 R21 K38 ["GameTree"]
      505 GETTABLEKS                       R32 R21 K39 ["GrepSearch"]
      507 GETTABLEKS                       R33 R21 K40 ["Grep"]
      509 GETTABLEKS                       R34 R21 K57 ["InsertFromMarketplace"]
      511 GETTABLEKS                       R35 R21 K56 ["CreatorStoreInsert"]
      513 GETTABLEKS                       R36 R21 K55 ["CreatorStoreSearch"]
      515 GETTABLEKS                       R37 R21 K41 ["InspectInstance"]
      517 GETTABLEKS                       R38 R21 K42 ["MaterialGen"]
      519 GETTABLEKS                       R39 R21 K43 ["MeshGen"]
      521 GETTABLEKS                       R40 R21 K44 ["MultiEdit"]
      523 GETTABLEKS                       R41 R21 K45 ["ReadFile"]
      525 GETTABLEKS                       R42 R21 K47 ["PrimitiveGen"]
      527 GETTABLEKS                       R43 R21 K50 ["Skill"]
      529 GETTABLEKS                       R44 R21 K52 ["Subagent"]
      531 SETLIST                          R28 R29 16 [1]
      533 GETTABLEKS                       R29 R21 K58 ["ScreenCapture"]
      535 GETTABLEKS                       R30 R21 K59 ["UploadImage"]
      537 GETTABLEKS                       R31 R21 K62 ["StartStopPlay"]
      539 GETTABLEKS                       R32 R21 K63 ["GetConsoleOutput"]
      541 GETTABLEKS                       R33 R21 K64 ["UserKeyboardInput"]
      543 GETTABLEKS                       R34 R21 K65 ["UserMouseInput"]
      545 GETTABLEKS                       R35 R21 K66 ["CharacterNavigation"]
      547 SETLIST                          R28 R29 7 [17]
      549 SETTABLE                         R28 R26 R27
      550 MOVE                             R27 R15
      551 CALL                             R27 0 1
      552 JUMPIFNOT                        R27 ; [+20]
      553 GETTABLEKS                       R29 R20 K67 ["Agent"]
      555 GETTABLE                         R28 R26 R29
      556 GETTABLEKS                       R29 R21 K49 ["QuestionAnswer"]
      558 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      560 GETIMPORT                        R27 K71 [table.insert]
      562 CALL                             R27 2 0
      563 GETTABLEKS                       R29 R20 K68 ["Test"]
      565 GETTABLE                         R28 R26 R29
      566 GETTABLEKS                       R29 R21 K49 ["QuestionAnswer"]
      568 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      570 GETIMPORT                        R27 K71 [table.insert]
      572 CALL                             R27 2 0
      573 MOVE                             R27 R16
      574 CALL                             R27 0 1
      575 JUMPIFNOT                        R27 ; [+20]
      576 GETTABLEKS                       R29 R20 K67 ["Agent"]
      578 GETTABLE                         R28 R26 R29
      579 GETTABLEKS                       R29 R21 K51 ["HttpGet"]
      581 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      583 GETIMPORT                        R27 K71 [table.insert]
      585 CALL                             R27 2 0
      586 GETTABLEKS                       R29 R20 K68 ["Test"]
      588 GETTABLE                         R28 R26 R29
      589 GETTABLEKS                       R29 R21 K51 ["HttpGet"]
      591 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      593 GETIMPORT                        R27 K71 [table.insert]
      595 CALL                             R27 2 0
      596 MOVE                             R27 R17
      597 CALL                             R27 0 1
      598 JUMPIFNOT                        R27 ; [+45]
      599 GETTABLEKS                       R29 R20 K67 ["Agent"]
      601 GETTABLE                         R28 R26 R29
      602 GETTABLEKS                       R29 R21 K54 ["CompleteTodoItems"]
      604 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      606 GETIMPORT                        R27 K71 [table.insert]
      608 CALL                             R27 2 0
      609 GETTABLEKS                       R29 R20 K68 ["Test"]
      611 GETTABLE                         R28 R26 R29
      612 GETTABLEKS                       R29 R21 K54 ["CompleteTodoItems"]
      614 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      616 GETIMPORT                        R27 K71 [table.insert]
      618 CALL                             R27 2 0
      619 GETTABLEKS                       R27 R20 K72 ["Plan"]
      621 NEWTABLE                         R28 0 9
      623 GETTABLEKS                       R29 R21 K45 ["ReadFile"]
      625 GETTABLEKS                       R30 R21 K37 ["FileSearch"]
      627 GETTABLEKS                       R31 R21 K39 ["GrepSearch"]
      629 GETTABLEKS                       R32 R21 K40 ["Grep"]
      631 GETTABLEKS                       R33 R21 K38 ["GameTree"]
      633 GETTABLEKS                       R34 R21 K41 ["InspectInstance"]
      635 GETTABLEKS                       R35 R21 K58 ["ScreenCapture"]
      637 GETTABLEKS                       R36 R21 K49 ["QuestionAnswer"]
      639 GETTABLEKS                       R37 R21 K53 ["FinalizePlan"]
      641 SETLIST                          R28 R29 9 [1]
      643 SETTABLE                         R28 R26 R27
      644 DUPTABLE                         R27 K77 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist"}]
      645 SETTABLEKS                       R23 R27 K73 ["DefaultTools"]
      647 SETTABLEKS                       R24 R27 K74 ["ExperimentalTools"]
      649 SETTABLEKS                       R25 R27 K75 ["ExperimentFeatureTools"]
      651 SETTABLEKS                       R26 R27 K76 ["AssistantModeToolsAllowlist"]
      653 RETURN                           R27 1
