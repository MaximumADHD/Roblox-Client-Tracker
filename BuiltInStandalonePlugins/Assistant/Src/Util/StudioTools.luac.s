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
       42 GETTABLEKS                       R6 R7 K14 ["FFlagConvAIMeshGen"]
       44 GETTABLEKS                       R9 R1 K8 ["Flags"]
       46 GETTABLEKS                       R8 R9 K9 ["Shared"]
       48 GETTABLEKS                       R7 R8 K15 ["FFlagEnableAssistantImageUpload"]
       50 GETTABLEKS                       R10 R1 K8 ["Flags"]
       52 GETTABLEKS                       R9 R10 K9 ["Shared"]
       54 GETTABLEKS                       R8 R9 K16 ["FFlagEnableGrepTool"]
       56 GETTABLEKS                       R11 R1 K8 ["Flags"]
       58 GETTABLEKS                       R10 R11 K9 ["Shared"]
       60 GETTABLEKS                       R9 R10 K17 ["FFlagEnablePrimitiveGenTool"]
       62 GETTABLEKS                       R12 R1 K8 ["Flags"]
       64 GETTABLEKS                       R11 R12 K9 ["Shared"]
       66 GETTABLEKS                       R10 R11 K18 ["FFlagEnableWaitJobFinishedTool"]
       68 GETTABLEKS                       R13 R1 K8 ["Flags"]
       70 GETTABLEKS                       R12 R13 K9 ["Shared"]
       72 GETTABLEKS                       R11 R12 K19 ["FFlagProceduralModel"]
       74 GETTABLEKS                       R14 R1 K8 ["Flags"]
       76 GETTABLEKS                       R13 R14 K9 ["Shared"]
       78 GETTABLEKS                       R12 R13 K20 ["FFlagEnableSkills"]
       80 GETTABLEKS                       R15 R1 K8 ["Flags"]
       82 GETTABLEKS                       R14 R15 K9 ["Shared"]
       84 GETTABLEKS                       R13 R14 K21 ["FFlagEnableSubagents"]
       86 GETTABLEKS                       R16 R1 K8 ["Flags"]
       88 GETTABLEKS                       R15 R16 K9 ["Shared"]
       90 GETTABLEKS                       R14 R15 K22 ["FFlagEnablePlaytestSubagent"]
       92 GETTABLEKS                       R17 R1 K8 ["Flags"]
       94 GETTABLEKS                       R16 R17 K9 ["Shared"]
       96 GETTABLEKS                       R15 R16 K23 ["FFlagMigrateSubagentExperimentsToFlagRegister"]
       98 GETTABLEKS                       R18 R1 K8 ["Flags"]
      100 GETTABLEKS                       R17 R18 K9 ["Shared"]
      102 GETTABLEKS                       R16 R17 K24 ["FFlagAssistantQuestionAnswerTool"]
      104 GETTABLEKS                       R19 R1 K8 ["Flags"]
      106 GETTABLEKS                       R18 R19 K9 ["Shared"]
      108 GETTABLEKS                       R17 R18 K25 ["FFlagEnableHttpGetTool"]
      110 GETTABLEKS                       R20 R1 K8 ["Flags"]
      112 GETTABLEKS                       R19 R20 K9 ["Shared"]
      114 GETTABLEKS                       R18 R19 K26 ["FFlagAssistantPlanMode"]
      116 GETIMPORT                        R19 K5 [require]
      118 GETTABLEKS                       R22 R0 K27 ["Src"]
      120 GETTABLEKS                       R21 R22 K28 ["Util"]
      122 GETTABLEKS                       R20 R21 K29 ["ExperimentFeature"]
      124 CALL                             R19 1 1
      125 GETIMPORT                        R20 K5 [require]
      127 GETTABLEKS                       R23 R0 K27 ["Src"]
      129 GETTABLEKS                       R22 R23 K8 ["Flags"]
      131 GETTABLEKS                       R21 R22 K30 ["FFlagAssistantForceDebugMode"]
      133 CALL                             R20 1 1
      134 GETTABLEKS                       R22 R1 K31 ["Types"]
      136 GETTABLEKS                       R21 R22 K32 ["AssistantMode"]
      138 GETTABLEKS                       R24 R1 K33 ["Tools"]
      140 GETTABLEKS                       R23 R24 K34 ["ToolTypes"]
      142 GETTABLEKS                       R22 R23 K35 ["ToolNames"]
      144 GETTABLEKS                       R24 R1 K33 ["Tools"]
      146 GETTABLEKS                       R23 R24 K36 ["BuiltinTools"]
      148 NEWTABLE                         R24 32 0
      150 GETTABLEKS                       R25 R22 K37 ["ExecuteLuau"]
      152 GETTABLEKS                       R27 R22 K37 ["ExecuteLuau"]
      154 GETTABLE                         R26 R23 R27
      155 SETTABLE                         R26 R24 R25
      156 GETTABLEKS                       R25 R22 K38 ["FileSearch"]
      158 GETTABLEKS                       R27 R22 K38 ["FileSearch"]
      160 GETTABLE                         R26 R23 R27
      161 SETTABLE                         R26 R24 R25
      162 GETTABLEKS                       R25 R22 K39 ["GameTree"]
      164 GETTABLEKS                       R27 R22 K39 ["GameTree"]
      166 GETTABLE                         R26 R23 R27
      167 SETTABLE                         R26 R24 R25
      168 GETTABLEKS                       R25 R22 K40 ["GrepSearch"]
      170 GETTABLEKS                       R27 R22 K40 ["GrepSearch"]
      172 GETTABLE                         R26 R23 R27
      173 SETTABLE                         R26 R24 R25
      174 GETTABLEKS                       R25 R22 K41 ["Grep"]
      176 MOVE                             R27 R8
      177 CALL                             R27 0 1
      178 JUMPIFNOT                        R27 ; [+4]
      179 GETTABLEKS                       R27 R22 K41 ["Grep"]
      181 GETTABLE                         R26 R23 R27
      182 JUMP                             ; [+1]
      183 LOADNIL                          R26
      184 SETTABLE                         R26 R24 R25
      185 GETTABLEKS                       R25 R22 K42 ["InspectInstance"]
      187 GETTABLEKS                       R27 R22 K42 ["InspectInstance"]
      189 GETTABLE                         R26 R23 R27
      190 SETTABLE                         R26 R24 R25
      191 GETTABLEKS                       R25 R22 K43 ["MaterialGen"]
      193 GETTABLEKS                       R27 R22 K43 ["MaterialGen"]
      195 GETTABLE                         R26 R23 R27
      196 SETTABLE                         R26 R24 R25
      197 GETTABLEKS                       R25 R22 K44 ["MeshGen"]
      199 MOVE                             R27 R6
      200 CALL                             R27 0 1
      201 JUMPIF                           R27 ; [+3]
      202 MOVE                             R27 R4
      203 CALL                             R27 0 1
      204 JUMPIFNOT                        R27 ; [+4]
      205 GETTABLEKS                       R27 R22 K44 ["MeshGen"]
      207 GETTABLE                         R26 R23 R27
      208 JUMP                             ; [+1]
      209 LOADNIL                          R26
      210 SETTABLE                         R26 R24 R25
      211 GETTABLEKS                       R25 R22 K45 ["MultiEdit"]
      213 GETTABLEKS                       R27 R22 K45 ["MultiEdit"]
      215 GETTABLE                         R26 R23 R27
      216 SETTABLE                         R26 R24 R25
      217 GETTABLEKS                       R25 R22 K46 ["ReadFile"]
      219 GETTABLEKS                       R27 R22 K46 ["ReadFile"]
      221 GETTABLE                         R26 R23 R27
      222 SETTABLE                         R26 R24 R25
      223 GETTABLEKS                       R25 R22 K47 ["TestGame"]
      225 MOVE                             R27 R3
      226 CALL                             R27 0 1
      227 JUMPIF                           R27 ; [+10]
      228 MOVE                             R27 R2
      229 CALL                             R27 0 1
      230 JUMPIFNOT                        R27 ; [+7]
      231 MOVE                             R27 R20
      232 CALL                             R27 0 1
      233 JUMPIFNOT                        R27 ; [+4]
      234 GETTABLEKS                       R27 R22 K47 ["TestGame"]
      236 GETTABLE                         R26 R23 R27
      237 JUMP                             ; [+1]
      238 LOADNIL                          R26
      239 SETTABLE                         R26 R24 R25
      240 GETTABLEKS                       R25 R22 K48 ["PrimitiveGen"]
      242 MOVE                             R27 R9
      243 CALL                             R27 0 1
      244 JUMPIFNOT                        R27 ; [+7]
      245 MOVE                             R27 R11
      246 CALL                             R27 0 1
      247 JUMPIFNOT                        R27 ; [+4]
      248 GETTABLEKS                       R27 R22 K48 ["PrimitiveGen"]
      250 GETTABLE                         R26 R23 R27
      251 JUMP                             ; [+1]
      252 LOADNIL                          R26
      253 SETTABLE                         R26 R24 R25
      254 GETTABLEKS                       R25 R22 K49 ["WaitJobFinished"]
      256 MOVE                             R27 R10
      257 CALL                             R27 0 1
      258 JUMPIFNOT                        R27 ; [+10]
      259 MOVE                             R27 R11
      260 CALL                             R27 0 1
      261 JUMPIFNOT                        R27 ; [+7]
      262 MOVE                             R27 R9
      263 CALL                             R27 0 1
      264 JUMPIFNOT                        R27 ; [+4]
      265 GETTABLEKS                       R27 R22 K49 ["WaitJobFinished"]
      267 GETTABLE                         R26 R23 R27
      268 JUMP                             ; [+1]
      269 LOADNIL                          R26
      270 SETTABLE                         R26 R24 R25
      271 GETTABLEKS                       R25 R22 K50 ["QuestionAnswer"]
      273 MOVE                             R27 R16
      274 CALL                             R27 0 1
      275 JUMPIFNOT                        R27 ; [+4]
      276 GETTABLEKS                       R27 R22 K50 ["QuestionAnswer"]
      278 GETTABLE                         R26 R23 R27
      279 JUMP                             ; [+1]
      280 LOADNIL                          R26
      281 SETTABLE                         R26 R24 R25
      282 GETTABLEKS                       R25 R22 K51 ["Skill"]
      284 MOVE                             R27 R12
      285 CALL                             R27 0 1
      286 JUMPIFNOT                        R27 ; [+4]
      287 GETTABLEKS                       R27 R22 K51 ["Skill"]
      289 GETTABLE                         R26 R23 R27
      290 JUMP                             ; [+1]
      291 LOADNIL                          R26
      292 SETTABLE                         R26 R24 R25
      293 GETTABLEKS                       R25 R22 K52 ["HttpGet"]
      295 MOVE                             R27 R17
      296 CALL                             R27 0 1
      297 JUMPIFNOT                        R27 ; [+4]
      298 GETTABLEKS                       R27 R22 K52 ["HttpGet"]
      300 GETTABLE                         R26 R23 R27
      301 JUMP                             ; [+1]
      302 LOADNIL                          R26
      303 SETTABLE                         R26 R24 R25
      304 GETTABLEKS                       R25 R22 K53 ["Subagent"]
      306 MOVE                             R27 R13
      307 CALL                             R27 0 1
      308 JUMPIFNOT                        R27 ; [+10]
      309 MOVE                             R27 R14
      310 CALL                             R27 0 1
      311 JUMPIF                           R27 ; [+3]
      312 MOVE                             R27 R15
      313 CALL                             R27 0 1
      314 JUMPIFNOT                        R27 ; [+4]
      315 GETTABLEKS                       R27 R22 K53 ["Subagent"]
      317 GETTABLE                         R26 R23 R27
      318 JUMP                             ; [+1]
      319 LOADNIL                          R26
      320 SETTABLE                         R26 R24 R25
      321 GETTABLEKS                       R25 R22 K54 ["FinalizePlan"]
      323 MOVE                             R27 R18
      324 CALL                             R27 0 1
      325 JUMPIFNOT                        R27 ; [+4]
      326 GETTABLEKS                       R27 R22 K54 ["FinalizePlan"]
      328 GETTABLE                         R26 R23 R27
      329 JUMP                             ; [+1]
      330 LOADNIL                          R26
      331 SETTABLE                         R26 R24 R25
      332 GETTABLEKS                       R25 R22 K55 ["CompleteTodoItem"]
      334 MOVE                             R27 R18
      335 CALL                             R27 0 1
      336 JUMPIFNOT                        R27 ; [+4]
      337 GETTABLEKS                       R27 R22 K55 ["CompleteTodoItem"]
      339 GETTABLE                         R26 R23 R27
      340 JUMP                             ; [+1]
      341 LOADNIL                          R26
      342 SETTABLE                         R26 R24 R25
      343 MOVE                             R25 R5
      344 CALL                             R25 0 1
      345 JUMPIFNOT                        R25 ; [+13]
      346 GETTABLEKS                       R25 R22 K56 ["CreatorStoreSearch"]
      348 GETTABLEKS                       R27 R22 K56 ["CreatorStoreSearch"]
      350 GETTABLE                         R26 R23 R27
      351 SETTABLE                         R26 R24 R25
      352 GETTABLEKS                       R25 R22 K57 ["CreatorStoreInsert"]
      354 GETTABLEKS                       R27 R22 K57 ["CreatorStoreInsert"]
      356 GETTABLE                         R26 R23 R27
      357 SETTABLE                         R26 R24 R25
      358 JUMP                             ; [+6]
      359 GETTABLEKS                       R25 R22 K58 ["InsertFromMarketplace"]
      361 GETTABLEKS                       R27 R22 K58 ["InsertFromMarketplace"]
      363 GETTABLE                         R26 R23 R27
      364 SETTABLE                         R26 R24 R25
      365 NEWTABLE                         R25 4 0
      367 GETTABLEKS                       R26 R22 K59 ["ScreenCapture"]
      369 GETTABLEKS                       R28 R22 K59 ["ScreenCapture"]
      371 GETTABLE                         R27 R23 R28
      372 SETTABLE                         R27 R25 R26
      373 GETTABLEKS                       R26 R22 K60 ["UploadImage"]
      375 MOVE                             R28 R7
      376 CALL                             R28 0 1
      377 JUMPIFNOT                        R28 ; [+4]
      378 GETTABLEKS                       R28 R22 K60 ["UploadImage"]
      380 GETTABLE                         R27 R23 R28
      381 JUMP                             ; [+1]
      382 LOADNIL                          R27
      383 SETTABLE                         R27 R25 R26
      384 GETTABLEKS                       R26 R22 K47 ["TestGame"]
      386 MOVE                             R28 R3
      387 CALL                             R28 0 1
      388 JUMPIF                           R28 ; [+10]
      389 MOVE                             R28 R2
      390 CALL                             R28 0 1
      391 JUMPIFNOT                        R28 ; [+7]
      392 MOVE                             R28 R20
      393 CALL                             R28 0 1
      394 JUMPIF                           R28 ; [+4]
      395 GETTABLEKS                       R28 R22 K47 ["TestGame"]
      397 GETTABLE                         R27 R23 R28
      398 JUMP                             ; [+1]
      399 LOADNIL                          R27
      400 SETTABLE                         R27 R25 R26
      401 GETTABLEKS                       R26 R22 K53 ["Subagent"]
      403 MOVE                             R28 R13
      404 CALL                             R28 0 1
      405 JUMPIFNOT                        R28 ; [+10]
      406 MOVE                             R28 R14
      407 CALL                             R28 0 1
      408 JUMPIF                           R28 ; [+7]
      409 MOVE                             R28 R15
      410 CALL                             R28 0 1
      411 JUMPIF                           R28 ; [+4]
      412 GETTABLEKS                       R28 R22 K53 ["Subagent"]
      414 GETTABLE                         R27 R23 R28
      415 JUMP                             ; [+1]
      416 LOADNIL                          R27
      417 SETTABLE                         R27 R25 R26
      418 NEWTABLE                         R26 1 0
      420 GETTABLEKS                       R28 R19 K61 ["FeatureNames"]
      422 GETTABLEKS                       R27 R28 K62 ["TestAutomation"]
      424 NEWTABLE                         R28 8 0
      426 GETTABLEKS                       R29 R22 K63 ["StartStopPlay"]
      428 GETTABLEKS                       R31 R22 K63 ["StartStopPlay"]
      430 GETTABLE                         R30 R23 R31
      431 SETTABLE                         R30 R28 R29
      432 GETTABLEKS                       R29 R22 K64 ["GetConsoleOutput"]
      434 GETTABLEKS                       R31 R22 K64 ["GetConsoleOutput"]
      436 GETTABLE                         R30 R23 R31
      437 SETTABLE                         R30 R28 R29
      438 GETTABLEKS                       R29 R22 K65 ["UserKeyboardInput"]
      440 GETTABLEKS                       R31 R22 K65 ["UserKeyboardInput"]
      442 GETTABLE                         R30 R23 R31
      443 SETTABLE                         R30 R28 R29
      444 GETTABLEKS                       R29 R22 K66 ["UserMouseInput"]
      446 GETTABLEKS                       R31 R22 K66 ["UserMouseInput"]
      448 GETTABLE                         R30 R23 R31
      449 SETTABLE                         R30 R28 R29
      450 GETTABLEKS                       R29 R22 K67 ["CharacterNavigation"]
      452 GETTABLEKS                       R31 R22 K67 ["CharacterNavigation"]
      454 GETTABLE                         R30 R23 R31
      455 SETTABLE                         R30 R28 R29
      456 SETTABLE                         R28 R26 R27
      457 NEWTABLE                         R27 2 0
      459 GETTABLEKS                       R28 R21 K68 ["Agent"]
      461 NEWTABLE                         R29 0 18
      463 GETTABLEKS                       R30 R22 K37 ["ExecuteLuau"]
      465 GETTABLEKS                       R31 R22 K38 ["FileSearch"]
      467 GETTABLEKS                       R32 R22 K39 ["GameTree"]
      469 GETTABLEKS                       R33 R22 K40 ["GrepSearch"]
      471 GETTABLEKS                       R34 R22 K41 ["Grep"]
      473 GETTABLEKS                       R35 R22 K58 ["InsertFromMarketplace"]
      475 GETTABLEKS                       R36 R22 K57 ["CreatorStoreInsert"]
      477 GETTABLEKS                       R37 R22 K56 ["CreatorStoreSearch"]
      479 GETTABLEKS                       R38 R22 K42 ["InspectInstance"]
      481 GETTABLEKS                       R39 R22 K43 ["MaterialGen"]
      483 GETTABLEKS                       R40 R22 K44 ["MeshGen"]
      485 GETTABLEKS                       R41 R22 K45 ["MultiEdit"]
      487 GETTABLEKS                       R42 R22 K46 ["ReadFile"]
      489 GETTABLEKS                       R43 R22 K48 ["PrimitiveGen"]
      491 GETTABLEKS                       R44 R22 K51 ["Skill"]
      493 GETTABLEKS                       R45 R22 K53 ["Subagent"]
      495 SETLIST                          R29 R30 16 [1]
      497 GETTABLEKS                       R30 R22 K59 ["ScreenCapture"]
      499 GETTABLEKS                       R31 R22 K60 ["UploadImage"]
      501 SETLIST                          R29 R30 2 [17]
      503 SETTABLE                         R29 R27 R28
      504 GETTABLEKS                       R28 R21 K69 ["Test"]
      506 NEWTABLE                         R29 0 23
      508 GETTABLEKS                       R30 R22 K37 ["ExecuteLuau"]
      510 GETTABLEKS                       R31 R22 K38 ["FileSearch"]
      512 GETTABLEKS                       R32 R22 K39 ["GameTree"]
      514 GETTABLEKS                       R33 R22 K40 ["GrepSearch"]
      516 GETTABLEKS                       R34 R22 K41 ["Grep"]
      518 GETTABLEKS                       R35 R22 K58 ["InsertFromMarketplace"]
      520 GETTABLEKS                       R36 R22 K57 ["CreatorStoreInsert"]
      522 GETTABLEKS                       R37 R22 K56 ["CreatorStoreSearch"]
      524 GETTABLEKS                       R38 R22 K42 ["InspectInstance"]
      526 GETTABLEKS                       R39 R22 K43 ["MaterialGen"]
      528 GETTABLEKS                       R40 R22 K44 ["MeshGen"]
      530 GETTABLEKS                       R41 R22 K45 ["MultiEdit"]
      532 GETTABLEKS                       R42 R22 K46 ["ReadFile"]
      534 GETTABLEKS                       R43 R22 K48 ["PrimitiveGen"]
      536 GETTABLEKS                       R44 R22 K51 ["Skill"]
      538 GETTABLEKS                       R45 R22 K53 ["Subagent"]
      540 SETLIST                          R29 R30 16 [1]
      542 GETTABLEKS                       R30 R22 K59 ["ScreenCapture"]
      544 GETTABLEKS                       R31 R22 K60 ["UploadImage"]
      546 GETTABLEKS                       R32 R22 K63 ["StartStopPlay"]
      548 GETTABLEKS                       R33 R22 K64 ["GetConsoleOutput"]
      550 GETTABLEKS                       R34 R22 K65 ["UserKeyboardInput"]
      552 GETTABLEKS                       R35 R22 K66 ["UserMouseInput"]
      554 GETTABLEKS                       R36 R22 K67 ["CharacterNavigation"]
      556 SETLIST                          R29 R30 7 [17]
      558 SETTABLE                         R29 R27 R28
      559 MOVE                             R28 R16
      560 CALL                             R28 0 1
      561 JUMPIFNOT                        R28 ; [+20]
      562 GETTABLEKS                       R30 R21 K68 ["Agent"]
      564 GETTABLE                         R29 R27 R30
      565 GETTABLEKS                       R30 R22 K50 ["QuestionAnswer"]
      567 FASTCALL2                        TABLE_INSERT R29 R30 ; [+3]
      569 GETIMPORT                        R28 K72 [table.insert]
      571 CALL                             R28 2 0
      572 GETTABLEKS                       R30 R21 K69 ["Test"]
      574 GETTABLE                         R29 R27 R30
      575 GETTABLEKS                       R30 R22 K50 ["QuestionAnswer"]
      577 FASTCALL2                        TABLE_INSERT R29 R30 ; [+3]
      579 GETIMPORT                        R28 K72 [table.insert]
      581 CALL                             R28 2 0
      582 MOVE                             R28 R17
      583 CALL                             R28 0 1
      584 JUMPIFNOT                        R28 ; [+20]
      585 GETTABLEKS                       R30 R21 K68 ["Agent"]
      587 GETTABLE                         R29 R27 R30
      588 GETTABLEKS                       R30 R22 K52 ["HttpGet"]
      590 FASTCALL2                        TABLE_INSERT R29 R30 ; [+3]
      592 GETIMPORT                        R28 K72 [table.insert]
      594 CALL                             R28 2 0
      595 GETTABLEKS                       R30 R21 K69 ["Test"]
      597 GETTABLE                         R29 R27 R30
      598 GETTABLEKS                       R30 R22 K52 ["HttpGet"]
      600 FASTCALL2                        TABLE_INSERT R29 R30 ; [+3]
      602 GETIMPORT                        R28 K72 [table.insert]
      604 CALL                             R28 2 0
      605 MOVE                             R28 R18
      606 CALL                             R28 0 1
      607 JUMPIFNOT                        R28 ; [+45]
      608 GETTABLEKS                       R30 R21 K68 ["Agent"]
      610 GETTABLE                         R29 R27 R30
      611 GETTABLEKS                       R30 R22 K55 ["CompleteTodoItem"]
      613 FASTCALL2                        TABLE_INSERT R29 R30 ; [+3]
      615 GETIMPORT                        R28 K72 [table.insert]
      617 CALL                             R28 2 0
      618 GETTABLEKS                       R30 R21 K69 ["Test"]
      620 GETTABLE                         R29 R27 R30
      621 GETTABLEKS                       R30 R22 K55 ["CompleteTodoItem"]
      623 FASTCALL2                        TABLE_INSERT R29 R30 ; [+3]
      625 GETIMPORT                        R28 K72 [table.insert]
      627 CALL                             R28 2 0
      628 GETTABLEKS                       R28 R21 K73 ["Plan"]
      630 NEWTABLE                         R29 0 9
      632 GETTABLEKS                       R30 R22 K46 ["ReadFile"]
      634 GETTABLEKS                       R31 R22 K38 ["FileSearch"]
      636 GETTABLEKS                       R32 R22 K40 ["GrepSearch"]
      638 GETTABLEKS                       R33 R22 K41 ["Grep"]
      640 GETTABLEKS                       R34 R22 K39 ["GameTree"]
      642 GETTABLEKS                       R35 R22 K42 ["InspectInstance"]
      644 GETTABLEKS                       R36 R22 K59 ["ScreenCapture"]
      646 GETTABLEKS                       R37 R22 K50 ["QuestionAnswer"]
      648 GETTABLEKS                       R38 R22 K54 ["FinalizePlan"]
      650 SETLIST                          R29 R30 9 [1]
      652 SETTABLE                         R29 R27 R28
      653 DUPTABLE                         R28 K78 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist"}]
      654 SETTABLEKS                       R24 R28 K74 ["DefaultTools"]
      656 SETTABLEKS                       R25 R28 K75 ["ExperimentalTools"]
      658 SETTABLEKS                       R26 R28 K76 ["ExperimentFeatureTools"]
      660 SETTABLEKS                       R27 R28 K77 ["AssistantModeToolsAllowlist"]
      662 RETURN                           R28 1
