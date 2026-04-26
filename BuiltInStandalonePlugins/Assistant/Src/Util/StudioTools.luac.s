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
      102 GETTABLEKS                       R16 R17 K24 ["FFlagEnableStoreImageTool"]
      104 GETIMPORT                        R17 K5 [require]
      106 GETTABLEKS                       R20 R0 K25 ["Src"]
      108 GETTABLEKS                       R19 R20 K26 ["Util"]
      110 GETTABLEKS                       R18 R19 K27 ["ExperimentFeature"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K5 [require]
      115 GETTABLEKS                       R21 R0 K25 ["Src"]
      117 GETTABLEKS                       R20 R21 K8 ["Flags"]
      119 GETTABLEKS                       R19 R20 K28 ["FFlagAssistantForceDebugMode"]
      121 CALL                             R18 1 1
      122 GETTABLEKS                       R20 R1 K29 ["Types"]
      124 GETTABLEKS                       R19 R20 K30 ["AssistantMode"]
      126 GETTABLEKS                       R22 R1 K31 ["Tools"]
      128 GETTABLEKS                       R21 R22 K32 ["ToolTypes"]
      130 GETTABLEKS                       R20 R21 K33 ["ToolNames"]
      132 GETTABLEKS                       R22 R1 K31 ["Tools"]
      134 GETTABLEKS                       R21 R22 K34 ["BuiltinTools"]
      136 NEWTABLE                         R22 32 0
      138 GETTABLEKS                       R23 R20 K35 ["ExecuteLuau"]
      140 GETTABLEKS                       R25 R20 K35 ["ExecuteLuau"]
      142 GETTABLE                         R24 R21 R25
      143 SETTABLE                         R24 R22 R23
      144 GETTABLEKS                       R23 R20 K36 ["FileSearch"]
      146 GETTABLEKS                       R25 R20 K36 ["FileSearch"]
      148 GETTABLE                         R24 R21 R25
      149 SETTABLE                         R24 R22 R23
      150 GETTABLEKS                       R23 R20 K37 ["GameTree"]
      152 GETTABLEKS                       R25 R20 K37 ["GameTree"]
      154 GETTABLE                         R24 R21 R25
      155 SETTABLE                         R24 R22 R23
      156 GETTABLEKS                       R23 R20 K38 ["GrepSearch"]
      158 GETTABLEKS                       R25 R20 K38 ["GrepSearch"]
      160 GETTABLE                         R24 R21 R25
      161 SETTABLE                         R24 R22 R23
      162 GETTABLEKS                       R23 R20 K39 ["Grep"]
      164 MOVE                             R25 R7
      165 CALL                             R25 0 1
      166 JUMPIFNOT                        R25 ; [+4]
      167 GETTABLEKS                       R25 R20 K39 ["Grep"]
      169 GETTABLE                         R24 R21 R25
      170 JUMP                             ; [+1]
      171 LOADNIL                          R24
      172 SETTABLE                         R24 R22 R23
      173 GETTABLEKS                       R23 R20 K40 ["InspectInstance"]
      175 GETTABLEKS                       R25 R20 K40 ["InspectInstance"]
      177 GETTABLE                         R24 R21 R25
      178 SETTABLE                         R24 R22 R23
      179 GETTABLEKS                       R23 R20 K41 ["MaterialGen"]
      181 GETTABLEKS                       R25 R20 K41 ["MaterialGen"]
      183 GETTABLE                         R24 R21 R25
      184 SETTABLE                         R24 R22 R23
      185 GETTABLEKS                       R23 R20 K42 ["MeshGen"]
      187 MOVE                             R25 R4
      188 CALL                             R25 0 1
      189 JUMPIFNOT                        R25 ; [+4]
      190 GETTABLEKS                       R25 R20 K42 ["MeshGen"]
      192 GETTABLE                         R24 R21 R25
      193 JUMP                             ; [+1]
      194 LOADNIL                          R24
      195 SETTABLE                         R24 R22 R23
      196 GETTABLEKS                       R23 R20 K43 ["MultiEdit"]
      198 GETTABLEKS                       R25 R20 K43 ["MultiEdit"]
      200 GETTABLE                         R24 R21 R25
      201 SETTABLE                         R24 R22 R23
      202 GETTABLEKS                       R23 R20 K44 ["ReadFile"]
      204 GETTABLEKS                       R25 R20 K44 ["ReadFile"]
      206 GETTABLE                         R24 R21 R25
      207 SETTABLE                         R24 R22 R23
      208 GETTABLEKS                       R23 R20 K45 ["TestGame"]
      210 MOVE                             R25 R3
      211 CALL                             R25 0 1
      212 JUMPIF                           R25 ; [+10]
      213 MOVE                             R25 R2
      214 CALL                             R25 0 1
      215 JUMPIFNOT                        R25 ; [+7]
      216 MOVE                             R25 R18
      217 CALL                             R25 0 1
      218 JUMPIFNOT                        R25 ; [+4]
      219 GETTABLEKS                       R25 R20 K45 ["TestGame"]
      221 GETTABLE                         R24 R21 R25
      222 JUMP                             ; [+1]
      223 LOADNIL                          R24
      224 SETTABLE                         R24 R22 R23
      225 GETTABLEKS                       R23 R20 K46 ["PrimitiveGen"]
      227 MOVE                             R25 R8
      228 CALL                             R25 0 1
      229 JUMPIFNOT                        R25 ; [+7]
      230 MOVE                             R25 R10
      231 CALL                             R25 0 1
      232 JUMPIFNOT                        R25 ; [+4]
      233 GETTABLEKS                       R25 R20 K46 ["PrimitiveGen"]
      235 GETTABLE                         R24 R21 R25
      236 JUMP                             ; [+1]
      237 LOADNIL                          R24
      238 SETTABLE                         R24 R22 R23
      239 GETTABLEKS                       R23 R20 K47 ["WaitJobFinished"]
      241 MOVE                             R25 R9
      242 CALL                             R25 0 1
      243 JUMPIFNOT                        R25 ; [+10]
      244 MOVE                             R25 R10
      245 CALL                             R25 0 1
      246 JUMPIFNOT                        R25 ; [+7]
      247 MOVE                             R25 R8
      248 CALL                             R25 0 1
      249 JUMPIFNOT                        R25 ; [+4]
      250 GETTABLEKS                       R25 R20 K47 ["WaitJobFinished"]
      252 GETTABLE                         R24 R21 R25
      253 JUMP                             ; [+1]
      254 LOADNIL                          R24
      255 SETTABLE                         R24 R22 R23
      256 GETTABLEKS                       R23 R20 K48 ["QuestionAnswer"]
      258 MOVE                             R25 R12
      259 CALL                             R25 0 1
      260 JUMPIFNOT                        R25 ; [+4]
      261 GETTABLEKS                       R25 R20 K48 ["QuestionAnswer"]
      263 GETTABLE                         R24 R21 R25
      264 JUMP                             ; [+1]
      265 LOADNIL                          R24
      266 SETTABLE                         R24 R22 R23
      267 GETTABLEKS                       R23 R20 K49 ["Skill"]
      269 MOVE                             R25 R11
      270 CALL                             R25 0 1
      271 JUMPIFNOT                        R25 ; [+4]
      272 GETTABLEKS                       R25 R20 K49 ["Skill"]
      274 GETTABLE                         R24 R21 R25
      275 JUMP                             ; [+1]
      276 LOADNIL                          R24
      277 SETTABLE                         R24 R22 R23
      278 GETTABLEKS                       R23 R20 K50 ["HttpGet"]
      280 MOVE                             R25 R13
      281 CALL                             R25 0 1
      282 JUMPIFNOT                        R25 ; [+4]
      283 GETTABLEKS                       R25 R20 K50 ["HttpGet"]
      285 GETTABLE                         R24 R21 R25
      286 JUMP                             ; [+1]
      287 LOADNIL                          R24
      288 SETTABLE                         R24 R22 R23
      289 GETTABLEKS                       R23 R20 K51 ["StoreImage"]
      291 MOVE                             R25 R16
      292 CALL                             R25 0 1
      293 JUMPIFNOT                        R25 ; [+4]
      294 GETTABLEKS                       R25 R20 K51 ["StoreImage"]
      296 GETTABLE                         R24 R21 R25
      297 JUMP                             ; [+1]
      298 LOADNIL                          R24
      299 SETTABLE                         R24 R22 R23
      300 GETTABLEKS                       R23 R20 K52 ["Subagent"]
      302 GETTABLEKS                       R25 R20 K52 ["Subagent"]
      304 GETTABLE                         R24 R21 R25
      305 SETTABLE                         R24 R22 R23
      306 GETTABLEKS                       R23 R20 K53 ["FinalizePlan"]
      308 MOVE                             R25 R14
      309 CALL                             R25 0 1
      310 JUMPIFNOT                        R25 ; [+4]
      311 GETTABLEKS                       R25 R20 K53 ["FinalizePlan"]
      313 GETTABLE                         R24 R21 R25
      314 JUMP                             ; [+1]
      315 LOADNIL                          R24
      316 SETTABLE                         R24 R22 R23
      317 GETTABLEKS                       R23 R20 K54 ["CompleteTodoItems"]
      319 MOVE                             R25 R14
      320 CALL                             R25 0 1
      321 JUMPIFNOT                        R25 ; [+4]
      322 GETTABLEKS                       R25 R20 K54 ["CompleteTodoItems"]
      324 GETTABLE                         R24 R21 R25
      325 JUMP                             ; [+1]
      326 LOADNIL                          R24
      327 SETTABLE                         R24 R22 R23
      328 GETTABLEKS                       R23 R20 K55 ["FromHistory"]
      330 MOVE                             R25 R15
      331 CALL                             R25 0 1
      332 JUMPIFNOT                        R25 ; [+4]
      333 GETTABLEKS                       R25 R20 K55 ["FromHistory"]
      335 GETTABLE                         R24 R21 R25
      336 JUMP                             ; [+1]
      337 LOADNIL                          R24
      338 SETTABLE                         R24 R22 R23
      339 MOVE                             R23 R5
      340 CALL                             R23 0 1
      341 JUMPIFNOT                        R23 ; [+13]
      342 GETTABLEKS                       R23 R20 K56 ["CreatorStoreSearch"]
      344 GETTABLEKS                       R25 R20 K56 ["CreatorStoreSearch"]
      346 GETTABLE                         R24 R21 R25
      347 SETTABLE                         R24 R22 R23
      348 GETTABLEKS                       R23 R20 K57 ["CreatorStoreInsert"]
      350 GETTABLEKS                       R25 R20 K57 ["CreatorStoreInsert"]
      352 GETTABLE                         R24 R21 R25
      353 SETTABLE                         R24 R22 R23
      354 JUMP                             ; [+6]
      355 GETTABLEKS                       R23 R20 K58 ["InsertFromMarketplace"]
      357 GETTABLEKS                       R25 R20 K58 ["InsertFromMarketplace"]
      359 GETTABLE                         R24 R21 R25
      360 SETTABLE                         R24 R22 R23
      361 NEWTABLE                         R23 4 0
      363 GETTABLEKS                       R24 R20 K59 ["ScreenCapture"]
      365 GETTABLEKS                       R26 R20 K59 ["ScreenCapture"]
      367 GETTABLE                         R25 R21 R26
      368 SETTABLE                         R25 R23 R24
      369 GETTABLEKS                       R24 R20 K60 ["UploadImage"]
      371 MOVE                             R26 R6
      372 CALL                             R26 0 1
      373 JUMPIFNOT                        R26 ; [+4]
      374 GETTABLEKS                       R26 R20 K60 ["UploadImage"]
      376 GETTABLE                         R25 R21 R26
      377 JUMP                             ; [+1]
      378 LOADNIL                          R25
      379 SETTABLE                         R25 R23 R24
      380 GETTABLEKS                       R24 R20 K45 ["TestGame"]
      382 MOVE                             R26 R3
      383 CALL                             R26 0 1
      384 JUMPIF                           R26 ; [+10]
      385 MOVE                             R26 R2
      386 CALL                             R26 0 1
      387 JUMPIFNOT                        R26 ; [+7]
      388 MOVE                             R26 R18
      389 CALL                             R26 0 1
      390 JUMPIF                           R26 ; [+4]
      391 GETTABLEKS                       R26 R20 K45 ["TestGame"]
      393 GETTABLE                         R25 R21 R26
      394 JUMP                             ; [+1]
      395 LOADNIL                          R25
      396 SETTABLE                         R25 R23 R24
      397 NEWTABLE                         R24 1 0
      399 GETTABLEKS                       R26 R17 K61 ["FeatureNames"]
      401 GETTABLEKS                       R25 R26 K62 ["TestAutomation"]
      403 NEWTABLE                         R26 8 0
      405 GETTABLEKS                       R27 R20 K63 ["StartStopPlay"]
      407 GETTABLEKS                       R29 R20 K63 ["StartStopPlay"]
      409 GETTABLE                         R28 R21 R29
      410 SETTABLE                         R28 R26 R27
      411 GETTABLEKS                       R27 R20 K64 ["GetConsoleOutput"]
      413 GETTABLEKS                       R29 R20 K64 ["GetConsoleOutput"]
      415 GETTABLE                         R28 R21 R29
      416 SETTABLE                         R28 R26 R27
      417 GETTABLEKS                       R27 R20 K65 ["UserKeyboardInput"]
      419 GETTABLEKS                       R29 R20 K65 ["UserKeyboardInput"]
      421 GETTABLE                         R28 R21 R29
      422 SETTABLE                         R28 R26 R27
      423 GETTABLEKS                       R27 R20 K66 ["UserMouseInput"]
      425 GETTABLEKS                       R29 R20 K66 ["UserMouseInput"]
      427 GETTABLE                         R28 R21 R29
      428 SETTABLE                         R28 R26 R27
      429 GETTABLEKS                       R27 R20 K67 ["CharacterNavigation"]
      431 GETTABLEKS                       R29 R20 K67 ["CharacterNavigation"]
      433 GETTABLE                         R28 R21 R29
      434 SETTABLE                         R28 R26 R27
      435 SETTABLE                         R26 R24 R25
      436 NEWTABLE                         R25 2 0
      438 GETTABLEKS                       R26 R19 K68 ["Agent"]
      440 NEWTABLE                         R27 0 18
      442 GETTABLEKS                       R28 R20 K35 ["ExecuteLuau"]
      444 GETTABLEKS                       R29 R20 K36 ["FileSearch"]
      446 GETTABLEKS                       R30 R20 K37 ["GameTree"]
      448 GETTABLEKS                       R31 R20 K38 ["GrepSearch"]
      450 GETTABLEKS                       R32 R20 K39 ["Grep"]
      452 GETTABLEKS                       R33 R20 K58 ["InsertFromMarketplace"]
      454 GETTABLEKS                       R34 R20 K57 ["CreatorStoreInsert"]
      456 GETTABLEKS                       R35 R20 K56 ["CreatorStoreSearch"]
      458 GETTABLEKS                       R36 R20 K40 ["InspectInstance"]
      460 GETTABLEKS                       R37 R20 K41 ["MaterialGen"]
      462 GETTABLEKS                       R38 R20 K42 ["MeshGen"]
      464 GETTABLEKS                       R39 R20 K43 ["MultiEdit"]
      466 GETTABLEKS                       R40 R20 K44 ["ReadFile"]
      468 GETTABLEKS                       R41 R20 K46 ["PrimitiveGen"]
      470 GETTABLEKS                       R42 R20 K49 ["Skill"]
      472 GETTABLEKS                       R43 R20 K52 ["Subagent"]
      474 SETLIST                          R27 R28 16 [1]
      476 GETTABLEKS                       R28 R20 K59 ["ScreenCapture"]
      478 GETTABLEKS                       R29 R20 K60 ["UploadImage"]
      480 SETLIST                          R27 R28 2 [17]
      482 SETTABLE                         R27 R25 R26
      483 GETTABLEKS                       R26 R19 K69 ["Test"]
      485 NEWTABLE                         R27 0 23
      487 GETTABLEKS                       R28 R20 K35 ["ExecuteLuau"]
      489 GETTABLEKS                       R29 R20 K36 ["FileSearch"]
      491 GETTABLEKS                       R30 R20 K37 ["GameTree"]
      493 GETTABLEKS                       R31 R20 K38 ["GrepSearch"]
      495 GETTABLEKS                       R32 R20 K39 ["Grep"]
      497 GETTABLEKS                       R33 R20 K58 ["InsertFromMarketplace"]
      499 GETTABLEKS                       R34 R20 K57 ["CreatorStoreInsert"]
      501 GETTABLEKS                       R35 R20 K56 ["CreatorStoreSearch"]
      503 GETTABLEKS                       R36 R20 K40 ["InspectInstance"]
      505 GETTABLEKS                       R37 R20 K41 ["MaterialGen"]
      507 GETTABLEKS                       R38 R20 K42 ["MeshGen"]
      509 GETTABLEKS                       R39 R20 K43 ["MultiEdit"]
      511 GETTABLEKS                       R40 R20 K44 ["ReadFile"]
      513 GETTABLEKS                       R41 R20 K46 ["PrimitiveGen"]
      515 GETTABLEKS                       R42 R20 K49 ["Skill"]
      517 GETTABLEKS                       R43 R20 K52 ["Subagent"]
      519 SETLIST                          R27 R28 16 [1]
      521 GETTABLEKS                       R28 R20 K59 ["ScreenCapture"]
      523 GETTABLEKS                       R29 R20 K60 ["UploadImage"]
      525 GETTABLEKS                       R30 R20 K63 ["StartStopPlay"]
      527 GETTABLEKS                       R31 R20 K64 ["GetConsoleOutput"]
      529 GETTABLEKS                       R32 R20 K65 ["UserKeyboardInput"]
      531 GETTABLEKS                       R33 R20 K66 ["UserMouseInput"]
      533 GETTABLEKS                       R34 R20 K67 ["CharacterNavigation"]
      535 SETLIST                          R27 R28 7 [17]
      537 SETTABLE                         R27 R25 R26
      538 MOVE                             R26 R12
      539 CALL                             R26 0 1
      540 JUMPIFNOT                        R26 ; [+20]
      541 GETTABLEKS                       R28 R19 K68 ["Agent"]
      543 GETTABLE                         R27 R25 R28
      544 GETTABLEKS                       R28 R20 K48 ["QuestionAnswer"]
      546 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      548 GETIMPORT                        R26 K72 [table.insert]
      550 CALL                             R26 2 0
      551 GETTABLEKS                       R28 R19 K69 ["Test"]
      553 GETTABLE                         R27 R25 R28
      554 GETTABLEKS                       R28 R20 K48 ["QuestionAnswer"]
      556 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      558 GETIMPORT                        R26 K72 [table.insert]
      560 CALL                             R26 2 0
      561 MOVE                             R26 R13
      562 CALL                             R26 0 1
      563 JUMPIFNOT                        R26 ; [+20]
      564 GETTABLEKS                       R28 R19 K68 ["Agent"]
      566 GETTABLE                         R27 R25 R28
      567 GETTABLEKS                       R28 R20 K50 ["HttpGet"]
      569 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      571 GETIMPORT                        R26 K72 [table.insert]
      573 CALL                             R26 2 0
      574 GETTABLEKS                       R28 R19 K69 ["Test"]
      576 GETTABLE                         R27 R25 R28
      577 GETTABLEKS                       R28 R20 K50 ["HttpGet"]
      579 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      581 GETIMPORT                        R26 K72 [table.insert]
      583 CALL                             R26 2 0
      584 MOVE                             R26 R15
      585 CALL                             R26 0 1
      586 JUMPIFNOT                        R26 ; [+20]
      587 GETTABLEKS                       R28 R19 K68 ["Agent"]
      589 GETTABLE                         R27 R25 R28
      590 GETTABLEKS                       R28 R20 K55 ["FromHistory"]
      592 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      594 GETIMPORT                        R26 K72 [table.insert]
      596 CALL                             R26 2 0
      597 GETTABLEKS                       R28 R19 K69 ["Test"]
      599 GETTABLE                         R27 R25 R28
      600 GETTABLEKS                       R28 R20 K55 ["FromHistory"]
      602 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      604 GETIMPORT                        R26 K72 [table.insert]
      606 CALL                             R26 2 0
      607 MOVE                             R26 R16
      608 CALL                             R26 0 1
      609 JUMPIFNOT                        R26 ; [+20]
      610 GETTABLEKS                       R28 R19 K68 ["Agent"]
      612 GETTABLE                         R27 R25 R28
      613 GETTABLEKS                       R28 R20 K51 ["StoreImage"]
      615 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      617 GETIMPORT                        R26 K72 [table.insert]
      619 CALL                             R26 2 0
      620 GETTABLEKS                       R28 R19 K69 ["Test"]
      622 GETTABLE                         R27 R25 R28
      623 GETTABLEKS                       R28 R20 K51 ["StoreImage"]
      625 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      627 GETIMPORT                        R26 K72 [table.insert]
      629 CALL                             R26 2 0
      630 MOVE                             R26 R14
      631 CALL                             R26 0 1
      632 JUMPIFNOT                        R26 ; [+45]
      633 GETTABLEKS                       R28 R19 K68 ["Agent"]
      635 GETTABLE                         R27 R25 R28
      636 GETTABLEKS                       R28 R20 K54 ["CompleteTodoItems"]
      638 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      640 GETIMPORT                        R26 K72 [table.insert]
      642 CALL                             R26 2 0
      643 GETTABLEKS                       R28 R19 K69 ["Test"]
      645 GETTABLE                         R27 R25 R28
      646 GETTABLEKS                       R28 R20 K54 ["CompleteTodoItems"]
      648 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      650 GETIMPORT                        R26 K72 [table.insert]
      652 CALL                             R26 2 0
      653 GETTABLEKS                       R26 R19 K73 ["Plan"]
      655 NEWTABLE                         R27 0 9
      657 GETTABLEKS                       R28 R20 K44 ["ReadFile"]
      659 GETTABLEKS                       R29 R20 K36 ["FileSearch"]
      661 GETTABLEKS                       R30 R20 K38 ["GrepSearch"]
      663 GETTABLEKS                       R31 R20 K39 ["Grep"]
      665 GETTABLEKS                       R32 R20 K37 ["GameTree"]
      667 GETTABLEKS                       R33 R20 K40 ["InspectInstance"]
      669 GETTABLEKS                       R34 R20 K59 ["ScreenCapture"]
      671 GETTABLEKS                       R35 R20 K48 ["QuestionAnswer"]
      673 GETTABLEKS                       R36 R20 K53 ["FinalizePlan"]
      675 SETLIST                          R27 R28 9 [1]
      677 SETTABLE                         R27 R25 R26
      678 DUPTABLE                         R26 K78 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist"}]
      679 SETTABLEKS                       R22 R26 K74 ["DefaultTools"]
      681 SETTABLEKS                       R23 R26 K75 ["ExperimentalTools"]
      683 SETTABLEKS                       R24 R26 K76 ["ExperimentFeatureTools"]
      685 SETTABLEKS                       R25 R26 K77 ["AssistantModeToolsAllowlist"]
      687 RETURN                           R26 1
