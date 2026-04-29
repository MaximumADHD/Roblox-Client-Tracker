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
       78 GETTABLEKS                       R12 R13 K20 ["FFlagAssistantQuestionAnswerTool"]
       80 GETTABLEKS                       R15 R1 K8 ["Flags"]
       82 GETTABLEKS                       R14 R15 K9 ["Shared"]
       84 GETTABLEKS                       R13 R14 K21 ["FFlagEnableHttpGetTool"]
       86 GETTABLEKS                       R16 R1 K8 ["Flags"]
       88 GETTABLEKS                       R15 R16 K9 ["Shared"]
       90 GETTABLEKS                       R14 R15 K22 ["FFlagAssistantPlanMode"]
       92 GETTABLEKS                       R17 R1 K8 ["Flags"]
       94 GETTABLEKS                       R16 R17 K9 ["Shared"]
       96 GETTABLEKS                       R15 R16 K23 ["FFlagAssistantContextCompaction"]
       98 GETTABLEKS                       R18 R1 K8 ["Flags"]
      100 GETTABLEKS                       R17 R18 K9 ["Shared"]
      102 GETTABLEKS                       R16 R17 K24 ["FFlagAssistantAnimationGenTool"]
      104 GETTABLEKS                       R19 R1 K8 ["Flags"]
      106 GETTABLEKS                       R18 R19 K9 ["Shared"]
      108 GETTABLEKS                       R17 R18 K25 ["FFlagEnableStoreImageTool"]
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
      191 GETTABLEKS                       R24 R21 K43 ["AnimationGen"]
      193 MOVE                             R26 R16
      194 CALL                             R26 0 1
      195 JUMPIFNOT                        R26 ; [+4]
      196 GETTABLEKS                       R26 R21 K43 ["AnimationGen"]
      198 GETTABLE                         R25 R22 R26
      199 JUMP                             ; [+1]
      200 LOADNIL                          R25
      201 SETTABLE                         R25 R23 R24
      202 GETTABLEKS                       R24 R21 K44 ["MeshGen"]
      204 MOVE                             R26 R4
      205 CALL                             R26 0 1
      206 JUMPIFNOT                        R26 ; [+4]
      207 GETTABLEKS                       R26 R21 K44 ["MeshGen"]
      209 GETTABLE                         R25 R22 R26
      210 JUMP                             ; [+1]
      211 LOADNIL                          R25
      212 SETTABLE                         R25 R23 R24
      213 GETTABLEKS                       R24 R21 K45 ["MultiEdit"]
      215 GETTABLEKS                       R26 R21 K45 ["MultiEdit"]
      217 GETTABLE                         R25 R22 R26
      218 SETTABLE                         R25 R23 R24
      219 GETTABLEKS                       R24 R21 K46 ["ReadFile"]
      221 GETTABLEKS                       R26 R21 K46 ["ReadFile"]
      223 GETTABLE                         R25 R22 R26
      224 SETTABLE                         R25 R23 R24
      225 GETTABLEKS                       R24 R21 K47 ["TestGame"]
      227 MOVE                             R26 R3
      228 CALL                             R26 0 1
      229 JUMPIF                           R26 ; [+10]
      230 MOVE                             R26 R2
      231 CALL                             R26 0 1
      232 JUMPIFNOT                        R26 ; [+7]
      233 MOVE                             R26 R19
      234 CALL                             R26 0 1
      235 JUMPIFNOT                        R26 ; [+4]
      236 GETTABLEKS                       R26 R21 K47 ["TestGame"]
      238 GETTABLE                         R25 R22 R26
      239 JUMP                             ; [+1]
      240 LOADNIL                          R25
      241 SETTABLE                         R25 R23 R24
      242 GETTABLEKS                       R24 R21 K48 ["PrimitiveGen"]
      244 MOVE                             R26 R8
      245 CALL                             R26 0 1
      246 JUMPIFNOT                        R26 ; [+7]
      247 MOVE                             R26 R10
      248 CALL                             R26 0 1
      249 JUMPIFNOT                        R26 ; [+4]
      250 GETTABLEKS                       R26 R21 K48 ["PrimitiveGen"]
      252 GETTABLE                         R25 R22 R26
      253 JUMP                             ; [+1]
      254 LOADNIL                          R25
      255 SETTABLE                         R25 R23 R24
      256 GETTABLEKS                       R24 R21 K49 ["WaitJobFinished"]
      258 MOVE                             R26 R9
      259 CALL                             R26 0 1
      260 JUMPIFNOT                        R26 ; [+10]
      261 MOVE                             R26 R10
      262 CALL                             R26 0 1
      263 JUMPIFNOT                        R26 ; [+7]
      264 MOVE                             R26 R8
      265 CALL                             R26 0 1
      266 JUMPIFNOT                        R26 ; [+4]
      267 GETTABLEKS                       R26 R21 K49 ["WaitJobFinished"]
      269 GETTABLE                         R25 R22 R26
      270 JUMP                             ; [+1]
      271 LOADNIL                          R25
      272 SETTABLE                         R25 R23 R24
      273 GETTABLEKS                       R24 R21 K50 ["QuestionAnswer"]
      275 MOVE                             R26 R12
      276 CALL                             R26 0 1
      277 JUMPIFNOT                        R26 ; [+4]
      278 GETTABLEKS                       R26 R21 K50 ["QuestionAnswer"]
      280 GETTABLE                         R25 R22 R26
      281 JUMP                             ; [+1]
      282 LOADNIL                          R25
      283 SETTABLE                         R25 R23 R24
      284 GETTABLEKS                       R24 R21 K51 ["Skill"]
      286 MOVE                             R26 R11
      287 CALL                             R26 0 1
      288 JUMPIFNOT                        R26 ; [+4]
      289 GETTABLEKS                       R26 R21 K51 ["Skill"]
      291 GETTABLE                         R25 R22 R26
      292 JUMP                             ; [+1]
      293 LOADNIL                          R25
      294 SETTABLE                         R25 R23 R24
      295 GETTABLEKS                       R24 R21 K52 ["HttpGet"]
      297 MOVE                             R26 R13
      298 CALL                             R26 0 1
      299 JUMPIFNOT                        R26 ; [+4]
      300 GETTABLEKS                       R26 R21 K52 ["HttpGet"]
      302 GETTABLE                         R25 R22 R26
      303 JUMP                             ; [+1]
      304 LOADNIL                          R25
      305 SETTABLE                         R25 R23 R24
      306 GETTABLEKS                       R24 R21 K53 ["StoreImage"]
      308 MOVE                             R26 R17
      309 CALL                             R26 0 1
      310 JUMPIFNOT                        R26 ; [+4]
      311 GETTABLEKS                       R26 R21 K53 ["StoreImage"]
      313 GETTABLE                         R25 R22 R26
      314 JUMP                             ; [+1]
      315 LOADNIL                          R25
      316 SETTABLE                         R25 R23 R24
      317 GETTABLEKS                       R24 R21 K54 ["Subagent"]
      319 GETTABLEKS                       R26 R21 K54 ["Subagent"]
      321 GETTABLE                         R25 R22 R26
      322 SETTABLE                         R25 R23 R24
      323 GETTABLEKS                       R24 R21 K55 ["FinalizePlan"]
      325 MOVE                             R26 R14
      326 CALL                             R26 0 1
      327 JUMPIFNOT                        R26 ; [+4]
      328 GETTABLEKS                       R26 R21 K55 ["FinalizePlan"]
      330 GETTABLE                         R25 R22 R26
      331 JUMP                             ; [+1]
      332 LOADNIL                          R25
      333 SETTABLE                         R25 R23 R24
      334 GETTABLEKS                       R24 R21 K56 ["CompleteTodoItems"]
      336 MOVE                             R26 R14
      337 CALL                             R26 0 1
      338 JUMPIFNOT                        R26 ; [+4]
      339 GETTABLEKS                       R26 R21 K56 ["CompleteTodoItems"]
      341 GETTABLE                         R25 R22 R26
      342 JUMP                             ; [+1]
      343 LOADNIL                          R25
      344 SETTABLE                         R25 R23 R24
      345 GETTABLEKS                       R24 R21 K57 ["FromHistory"]
      347 MOVE                             R26 R15
      348 CALL                             R26 0 1
      349 JUMPIFNOT                        R26 ; [+4]
      350 GETTABLEKS                       R26 R21 K57 ["FromHistory"]
      352 GETTABLE                         R25 R22 R26
      353 JUMP                             ; [+1]
      354 LOADNIL                          R25
      355 SETTABLE                         R25 R23 R24
      356 MOVE                             R24 R5
      357 CALL                             R24 0 1
      358 JUMPIFNOT                        R24 ; [+13]
      359 GETTABLEKS                       R24 R21 K58 ["CreatorStoreSearch"]
      361 GETTABLEKS                       R26 R21 K58 ["CreatorStoreSearch"]
      363 GETTABLE                         R25 R22 R26
      364 SETTABLE                         R25 R23 R24
      365 GETTABLEKS                       R24 R21 K59 ["CreatorStoreInsert"]
      367 GETTABLEKS                       R26 R21 K59 ["CreatorStoreInsert"]
      369 GETTABLE                         R25 R22 R26
      370 SETTABLE                         R25 R23 R24
      371 JUMP                             ; [+6]
      372 GETTABLEKS                       R24 R21 K60 ["InsertFromMarketplace"]
      374 GETTABLEKS                       R26 R21 K60 ["InsertFromMarketplace"]
      376 GETTABLE                         R25 R22 R26
      377 SETTABLE                         R25 R23 R24
      378 NEWTABLE                         R24 4 0
      380 GETTABLEKS                       R25 R21 K61 ["ScreenCapture"]
      382 GETTABLEKS                       R27 R21 K61 ["ScreenCapture"]
      384 GETTABLE                         R26 R22 R27
      385 SETTABLE                         R26 R24 R25
      386 GETTABLEKS                       R25 R21 K62 ["UploadImage"]
      388 MOVE                             R27 R6
      389 CALL                             R27 0 1
      390 JUMPIFNOT                        R27 ; [+4]
      391 GETTABLEKS                       R27 R21 K62 ["UploadImage"]
      393 GETTABLE                         R26 R22 R27
      394 JUMP                             ; [+1]
      395 LOADNIL                          R26
      396 SETTABLE                         R26 R24 R25
      397 GETTABLEKS                       R25 R21 K47 ["TestGame"]
      399 MOVE                             R27 R3
      400 CALL                             R27 0 1
      401 JUMPIF                           R27 ; [+10]
      402 MOVE                             R27 R2
      403 CALL                             R27 0 1
      404 JUMPIFNOT                        R27 ; [+7]
      405 MOVE                             R27 R19
      406 CALL                             R27 0 1
      407 JUMPIF                           R27 ; [+4]
      408 GETTABLEKS                       R27 R21 K47 ["TestGame"]
      410 GETTABLE                         R26 R22 R27
      411 JUMP                             ; [+1]
      412 LOADNIL                          R26
      413 SETTABLE                         R26 R24 R25
      414 NEWTABLE                         R25 1 0
      416 GETTABLEKS                       R27 R18 K63 ["FeatureNames"]
      418 GETTABLEKS                       R26 R27 K64 ["TestAutomation"]
      420 NEWTABLE                         R27 8 0
      422 GETTABLEKS                       R28 R21 K65 ["StartStopPlay"]
      424 GETTABLEKS                       R30 R21 K65 ["StartStopPlay"]
      426 GETTABLE                         R29 R22 R30
      427 SETTABLE                         R29 R27 R28
      428 GETTABLEKS                       R28 R21 K66 ["GetConsoleOutput"]
      430 GETTABLEKS                       R30 R21 K66 ["GetConsoleOutput"]
      432 GETTABLE                         R29 R22 R30
      433 SETTABLE                         R29 R27 R28
      434 GETTABLEKS                       R28 R21 K67 ["UserKeyboardInput"]
      436 GETTABLEKS                       R30 R21 K67 ["UserKeyboardInput"]
      438 GETTABLE                         R29 R22 R30
      439 SETTABLE                         R29 R27 R28
      440 GETTABLEKS                       R28 R21 K68 ["UserMouseInput"]
      442 GETTABLEKS                       R30 R21 K68 ["UserMouseInput"]
      444 GETTABLE                         R29 R22 R30
      445 SETTABLE                         R29 R27 R28
      446 GETTABLEKS                       R28 R21 K69 ["CharacterNavigation"]
      448 GETTABLEKS                       R30 R21 K69 ["CharacterNavigation"]
      450 GETTABLE                         R29 R22 R30
      451 SETTABLE                         R29 R27 R28
      452 SETTABLE                         R27 R25 R26
      453 NEWTABLE                         R26 2 0
      455 GETTABLEKS                       R27 R20 K70 ["Agent"]
      457 NEWTABLE                         R28 0 18
      459 GETTABLEKS                       R29 R21 K36 ["ExecuteLuau"]
      461 GETTABLEKS                       R30 R21 K37 ["FileSearch"]
      463 GETTABLEKS                       R31 R21 K38 ["GameTree"]
      465 GETTABLEKS                       R32 R21 K39 ["GrepSearch"]
      467 GETTABLEKS                       R33 R21 K40 ["Grep"]
      469 GETTABLEKS                       R34 R21 K60 ["InsertFromMarketplace"]
      471 GETTABLEKS                       R35 R21 K59 ["CreatorStoreInsert"]
      473 GETTABLEKS                       R36 R21 K58 ["CreatorStoreSearch"]
      475 GETTABLEKS                       R37 R21 K41 ["InspectInstance"]
      477 GETTABLEKS                       R38 R21 K42 ["MaterialGen"]
      479 GETTABLEKS                       R39 R21 K44 ["MeshGen"]
      481 GETTABLEKS                       R40 R21 K45 ["MultiEdit"]
      483 GETTABLEKS                       R41 R21 K46 ["ReadFile"]
      485 GETTABLEKS                       R42 R21 K48 ["PrimitiveGen"]
      487 GETTABLEKS                       R43 R21 K51 ["Skill"]
      489 GETTABLEKS                       R44 R21 K54 ["Subagent"]
      491 SETLIST                          R28 R29 16 [1]
      493 GETTABLEKS                       R29 R21 K61 ["ScreenCapture"]
      495 GETTABLEKS                       R30 R21 K62 ["UploadImage"]
      497 SETLIST                          R28 R29 2 [17]
      499 SETTABLE                         R28 R26 R27
      500 GETTABLEKS                       R27 R20 K71 ["Test"]
      502 NEWTABLE                         R28 0 23
      504 GETTABLEKS                       R29 R21 K36 ["ExecuteLuau"]
      506 GETTABLEKS                       R30 R21 K37 ["FileSearch"]
      508 GETTABLEKS                       R31 R21 K38 ["GameTree"]
      510 GETTABLEKS                       R32 R21 K39 ["GrepSearch"]
      512 GETTABLEKS                       R33 R21 K40 ["Grep"]
      514 GETTABLEKS                       R34 R21 K60 ["InsertFromMarketplace"]
      516 GETTABLEKS                       R35 R21 K59 ["CreatorStoreInsert"]
      518 GETTABLEKS                       R36 R21 K58 ["CreatorStoreSearch"]
      520 GETTABLEKS                       R37 R21 K41 ["InspectInstance"]
      522 GETTABLEKS                       R38 R21 K42 ["MaterialGen"]
      524 GETTABLEKS                       R39 R21 K44 ["MeshGen"]
      526 GETTABLEKS                       R40 R21 K45 ["MultiEdit"]
      528 GETTABLEKS                       R41 R21 K46 ["ReadFile"]
      530 GETTABLEKS                       R42 R21 K48 ["PrimitiveGen"]
      532 GETTABLEKS                       R43 R21 K51 ["Skill"]
      534 GETTABLEKS                       R44 R21 K54 ["Subagent"]
      536 SETLIST                          R28 R29 16 [1]
      538 GETTABLEKS                       R29 R21 K61 ["ScreenCapture"]
      540 GETTABLEKS                       R30 R21 K62 ["UploadImage"]
      542 GETTABLEKS                       R31 R21 K65 ["StartStopPlay"]
      544 GETTABLEKS                       R32 R21 K66 ["GetConsoleOutput"]
      546 GETTABLEKS                       R33 R21 K67 ["UserKeyboardInput"]
      548 GETTABLEKS                       R34 R21 K68 ["UserMouseInput"]
      550 GETTABLEKS                       R35 R21 K69 ["CharacterNavigation"]
      552 SETLIST                          R28 R29 7 [17]
      554 SETTABLE                         R28 R26 R27
      555 MOVE                             R27 R12
      556 CALL                             R27 0 1
      557 JUMPIFNOT                        R27 ; [+20]
      558 GETTABLEKS                       R29 R20 K70 ["Agent"]
      560 GETTABLE                         R28 R26 R29
      561 GETTABLEKS                       R29 R21 K50 ["QuestionAnswer"]
      563 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      565 GETIMPORT                        R27 K74 [table.insert]
      567 CALL                             R27 2 0
      568 GETTABLEKS                       R29 R20 K71 ["Test"]
      570 GETTABLE                         R28 R26 R29
      571 GETTABLEKS                       R29 R21 K50 ["QuestionAnswer"]
      573 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      575 GETIMPORT                        R27 K74 [table.insert]
      577 CALL                             R27 2 0
      578 MOVE                             R27 R13
      579 CALL                             R27 0 1
      580 JUMPIFNOT                        R27 ; [+20]
      581 GETTABLEKS                       R29 R20 K70 ["Agent"]
      583 GETTABLE                         R28 R26 R29
      584 GETTABLEKS                       R29 R21 K52 ["HttpGet"]
      586 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      588 GETIMPORT                        R27 K74 [table.insert]
      590 CALL                             R27 2 0
      591 GETTABLEKS                       R29 R20 K71 ["Test"]
      593 GETTABLE                         R28 R26 R29
      594 GETTABLEKS                       R29 R21 K52 ["HttpGet"]
      596 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      598 GETIMPORT                        R27 K74 [table.insert]
      600 CALL                             R27 2 0
      601 MOVE                             R27 R15
      602 CALL                             R27 0 1
      603 JUMPIFNOT                        R27 ; [+20]
      604 GETTABLEKS                       R29 R20 K70 ["Agent"]
      606 GETTABLE                         R28 R26 R29
      607 GETTABLEKS                       R29 R21 K57 ["FromHistory"]
      609 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      611 GETIMPORT                        R27 K74 [table.insert]
      613 CALL                             R27 2 0
      614 GETTABLEKS                       R29 R20 K71 ["Test"]
      616 GETTABLE                         R28 R26 R29
      617 GETTABLEKS                       R29 R21 K57 ["FromHistory"]
      619 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      621 GETIMPORT                        R27 K74 [table.insert]
      623 CALL                             R27 2 0
      624 MOVE                             R27 R17
      625 CALL                             R27 0 1
      626 JUMPIFNOT                        R27 ; [+20]
      627 GETTABLEKS                       R29 R20 K70 ["Agent"]
      629 GETTABLE                         R28 R26 R29
      630 GETTABLEKS                       R29 R21 K53 ["StoreImage"]
      632 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      634 GETIMPORT                        R27 K74 [table.insert]
      636 CALL                             R27 2 0
      637 GETTABLEKS                       R29 R20 K71 ["Test"]
      639 GETTABLE                         R28 R26 R29
      640 GETTABLEKS                       R29 R21 K53 ["StoreImage"]
      642 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      644 GETIMPORT                        R27 K74 [table.insert]
      646 CALL                             R27 2 0
      647 MOVE                             R27 R16
      648 CALL                             R27 0 1
      649 JUMPIFNOT                        R27 ; [+20]
      650 GETTABLEKS                       R29 R20 K70 ["Agent"]
      652 GETTABLE                         R28 R26 R29
      653 GETTABLEKS                       R29 R21 K43 ["AnimationGen"]
      655 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      657 GETIMPORT                        R27 K74 [table.insert]
      659 CALL                             R27 2 0
      660 GETTABLEKS                       R29 R20 K71 ["Test"]
      662 GETTABLE                         R28 R26 R29
      663 GETTABLEKS                       R29 R21 K43 ["AnimationGen"]
      665 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      667 GETIMPORT                        R27 K74 [table.insert]
      669 CALL                             R27 2 0
      670 MOVE                             R27 R9
      671 CALL                             R27 0 1
      672 JUMPIFNOT                        R27 ; [+26]
      673 MOVE                             R27 R10
      674 CALL                             R27 0 1
      675 JUMPIFNOT                        R27 ; [+23]
      676 MOVE                             R27 R8
      677 CALL                             R27 0 1
      678 JUMPIFNOT                        R27 ; [+20]
      679 GETTABLEKS                       R29 R20 K70 ["Agent"]
      681 GETTABLE                         R28 R26 R29
      682 GETTABLEKS                       R29 R21 K49 ["WaitJobFinished"]
      684 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      686 GETIMPORT                        R27 K74 [table.insert]
      688 CALL                             R27 2 0
      689 GETTABLEKS                       R29 R20 K71 ["Test"]
      691 GETTABLE                         R28 R26 R29
      692 GETTABLEKS                       R29 R21 K49 ["WaitJobFinished"]
      694 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      696 GETIMPORT                        R27 K74 [table.insert]
      698 CALL                             R27 2 0
      699 MOVE                             R27 R14
      700 CALL                             R27 0 1
      701 JUMPIFNOT                        R27 ; [+45]
      702 GETTABLEKS                       R29 R20 K70 ["Agent"]
      704 GETTABLE                         R28 R26 R29
      705 GETTABLEKS                       R29 R21 K56 ["CompleteTodoItems"]
      707 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      709 GETIMPORT                        R27 K74 [table.insert]
      711 CALL                             R27 2 0
      712 GETTABLEKS                       R29 R20 K71 ["Test"]
      714 GETTABLE                         R28 R26 R29
      715 GETTABLEKS                       R29 R21 K56 ["CompleteTodoItems"]
      717 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      719 GETIMPORT                        R27 K74 [table.insert]
      721 CALL                             R27 2 0
      722 GETTABLEKS                       R27 R20 K75 ["Plan"]
      724 NEWTABLE                         R28 0 9
      726 GETTABLEKS                       R29 R21 K46 ["ReadFile"]
      728 GETTABLEKS                       R30 R21 K37 ["FileSearch"]
      730 GETTABLEKS                       R31 R21 K39 ["GrepSearch"]
      732 GETTABLEKS                       R32 R21 K40 ["Grep"]
      734 GETTABLEKS                       R33 R21 K38 ["GameTree"]
      736 GETTABLEKS                       R34 R21 K41 ["InspectInstance"]
      738 GETTABLEKS                       R35 R21 K61 ["ScreenCapture"]
      740 GETTABLEKS                       R36 R21 K50 ["QuestionAnswer"]
      742 GETTABLEKS                       R37 R21 K55 ["FinalizePlan"]
      744 SETLIST                          R28 R29 9 [1]
      746 SETTABLE                         R28 R26 R27
      747 DUPTABLE                         R27 K80 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist"}]
      748 SETTABLEKS                       R23 R27 K76 ["DefaultTools"]
      750 SETTABLEKS                       R24 R27 K77 ["ExperimentalTools"]
      752 SETTABLEKS                       R25 R27 K78 ["ExperimentFeatureTools"]
      754 SETTABLEKS                       R26 R27 K79 ["AssistantModeToolsAllowlist"]
      756 RETURN                           R27 1
