MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["ExperimentFeature"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["Flags"]
       25 GETTABLEKS                       R3 R3 K12 ["Shared"]
       27 GETTABLEKS                       R3 R3 K13 ["FFlagAssistantUseNewMeshGenTool"]
       29 GETTABLEKS                       R4 R1 K11 ["Flags"]
       31 GETTABLEKS                       R4 R4 K12 ["Shared"]
       33 GETTABLEKS                       R4 R4 K14 ["FFlagAssistantUseNewCreatorStoreTools"]
       35 GETTABLEKS                       R5 R1 K11 ["Flags"]
       37 GETTABLEKS                       R5 R5 K12 ["Shared"]
       39 GETTABLEKS                       R5 R5 K15 ["FFlagEnableAssistantImageUpload"]
       41 GETTABLEKS                       R6 R1 K11 ["Flags"]
       43 GETTABLEKS                       R6 R6 K12 ["Shared"]
       45 GETTABLEKS                       R6 R6 K16 ["FFlagEnablePrimitiveGenTool"]
       47 GETTABLEKS                       R7 R1 K11 ["Flags"]
       49 GETTABLEKS                       R7 R7 K12 ["Shared"]
       51 GETTABLEKS                       R7 R7 K17 ["FFlagEnableWaitJobFinishedTool"]
       53 GETTABLEKS                       R8 R1 K11 ["Flags"]
       55 GETTABLEKS                       R8 R8 K12 ["Shared"]
       57 GETTABLEKS                       R8 R8 K18 ["FFlagProceduralModel"]
       59 GETTABLEKS                       R9 R1 K11 ["Flags"]
       61 GETTABLEKS                       R9 R9 K12 ["Shared"]
       63 GETTABLEKS                       R9 R9 K19 ["FFlagEnableSkills"]
       65 GETTABLEKS                       R10 R1 K11 ["Flags"]
       67 GETTABLEKS                       R10 R10 K12 ["Shared"]
       69 GETTABLEKS                       R10 R10 K20 ["FFlagAssistantQuestionAnswerTool"]
       71 GETTABLEKS                       R11 R1 K11 ["Flags"]
       73 GETTABLEKS                       R11 R11 K12 ["Shared"]
       75 GETTABLEKS                       R11 R11 K21 ["FFlagEnableHttpGetTool"]
       77 GETTABLEKS                       R12 R1 K11 ["Flags"]
       79 GETTABLEKS                       R12 R12 K12 ["Shared"]
       81 GETTABLEKS                       R12 R12 K22 ["FFlagAssistantPlanMode"]
       83 GETTABLEKS                       R13 R1 K11 ["Flags"]
       85 GETTABLEKS                       R13 R13 K12 ["Shared"]
       87 GETTABLEKS                       R13 R13 K23 ["FFlagAssistantAssetSearchInsertTool"]
       89 GETTABLEKS                       R14 R1 K11 ["Flags"]
       91 GETTABLEKS                       R14 R14 K12 ["Shared"]
       93 GETTABLEKS                       R14 R14 K24 ["FFlagAssistantAssetSearchInsertToolABTest"]
       95 GETTABLEKS                       R15 R1 K11 ["Flags"]
       97 GETTABLEKS                       R15 R15 K12 ["Shared"]
       99 GETTABLEKS                       R15 R15 K25 ["FFlagAssistantMarkdownPlanMode"]
      101 GETTABLEKS                       R16 R1 K11 ["Flags"]
      103 GETTABLEKS                       R16 R16 K12 ["Shared"]
      105 GETTABLEKS                       R16 R16 K26 ["FFlagAssistantContextCompaction"]
      107 GETTABLEKS                       R17 R1 K11 ["Flags"]
      109 GETTABLEKS                       R17 R17 K12 ["Shared"]
      111 GETTABLEKS                       R17 R17 K27 ["FFlagAssistantAnimationGenTool"]
      113 GETTABLEKS                       R18 R1 K11 ["Flags"]
      115 GETTABLEKS                       R18 R18 K12 ["Shared"]
      117 GETTABLEKS                       R18 R18 K28 ["FFlagEnableStoreImageTool"]
      119 GETTABLEKS                       R19 R1 K11 ["Flags"]
      121 GETTABLEKS                       R19 R19 K12 ["Shared"]
      123 GETTABLEKS                       R19 R19 K29 ["FFlagAssistantTestModeDropdown"]
      125 GETTABLEKS                       R20 R1 K30 ["Types"]
      127 GETTABLEKS                       R20 R20 K31 ["AssistantMode"]
      129 GETTABLEKS                       R21 R1 K32 ["Tools"]
      131 GETTABLEKS                       R21 R21 K33 ["ToolTypes"]
      133 GETTABLEKS                       R21 R21 K34 ["ToolNames"]
      135 GETTABLEKS                       R22 R1 K32 ["Tools"]
      137 GETTABLEKS                       R22 R22 K35 ["BuiltinTools"]
      139 NEWTABLE                         R23 32 0
      141 GETTABLEKS                       R24 R21 K36 ["ExecuteLuau"]
      143 GETTABLEKS                       R26 R21 K36 ["ExecuteLuau"]
      145 GETTABLE                         R25 R22 R26
      146 SETTABLE                         R25 R23 R24
      147 GETTABLEKS                       R24 R21 K37 ["FileSearch"]
      149 GETTABLEKS                       R26 R21 K37 ["FileSearch"]
      151 GETTABLE                         R25 R22 R26
      152 SETTABLE                         R25 R23 R24
      153 GETTABLEKS                       R24 R21 K38 ["GameTree"]
      155 GETTABLEKS                       R26 R21 K38 ["GameTree"]
      157 GETTABLE                         R25 R22 R26
      158 SETTABLE                         R25 R23 R24
      159 GETTABLEKS                       R24 R21 K39 ["GrepSearch"]
      161 GETTABLEKS                       R26 R21 K39 ["GrepSearch"]
      163 GETTABLE                         R25 R22 R26
      164 SETTABLE                         R25 R23 R24
      165 GETTABLEKS                       R24 R21 K40 ["InspectInstance"]
      167 GETTABLEKS                       R26 R21 K40 ["InspectInstance"]
      169 GETTABLE                         R25 R22 R26
      170 SETTABLE                         R25 R23 R24
      171 GETTABLEKS                       R24 R21 K41 ["MaterialGen"]
      173 GETTABLEKS                       R26 R21 K41 ["MaterialGen"]
      175 GETTABLE                         R25 R22 R26
      176 SETTABLE                         R25 R23 R24
      177 GETTABLEKS                       R24 R21 K42 ["AnimationGen"]
      179 MOVE                             R26 R17
      180 CALL                             R26 0 1
      181 JUMPIFNOT                        R26 ; [+4]
      182 GETTABLEKS                       R26 R21 K42 ["AnimationGen"]
      184 GETTABLE                         R25 R22 R26
      185 JUMP                             ; [+1]
      186 LOADNIL                          R25
      187 SETTABLE                         R25 R23 R24
      188 GETTABLEKS                       R24 R21 K43 ["MeshGen"]
      190 MOVE                             R26 R3
      191 CALL                             R26 0 1
      192 JUMPIFNOT                        R26 ; [+4]
      193 GETTABLEKS                       R26 R21 K43 ["MeshGen"]
      195 GETTABLE                         R25 R22 R26
      196 JUMP                             ; [+1]
      197 LOADNIL                          R25
      198 SETTABLE                         R25 R23 R24
      199 GETTABLEKS                       R24 R21 K44 ["MultiEdit"]
      201 GETTABLEKS                       R26 R21 K44 ["MultiEdit"]
      203 GETTABLE                         R25 R22 R26
      204 SETTABLE                         R25 R23 R24
      205 GETTABLEKS                       R24 R21 K45 ["ReadFile"]
      207 GETTABLEKS                       R26 R21 K45 ["ReadFile"]
      209 GETTABLE                         R25 R22 R26
      210 SETTABLE                         R25 R23 R24
      211 GETTABLEKS                       R24 R21 K46 ["PrimitiveGen"]
      213 MOVE                             R26 R6
      214 CALL                             R26 0 1
      215 JUMPIFNOT                        R26 ; [+7]
      216 MOVE                             R26 R8
      217 CALL                             R26 0 1
      218 JUMPIFNOT                        R26 ; [+4]
      219 GETTABLEKS                       R26 R21 K46 ["PrimitiveGen"]
      221 GETTABLE                         R25 R22 R26
      222 JUMP                             ; [+1]
      223 LOADNIL                          R25
      224 SETTABLE                         R25 R23 R24
      225 GETTABLEKS                       R24 R21 K47 ["WaitJobFinished"]
      227 MOVE                             R26 R7
      228 CALL                             R26 0 1
      229 JUMPIFNOT                        R26 ; [+10]
      230 MOVE                             R26 R8
      231 CALL                             R26 0 1
      232 JUMPIFNOT                        R26 ; [+7]
      233 MOVE                             R26 R6
      234 CALL                             R26 0 1
      235 JUMPIFNOT                        R26 ; [+4]
      236 GETTABLEKS                       R26 R21 K47 ["WaitJobFinished"]
      238 GETTABLE                         R25 R22 R26
      239 JUMP                             ; [+1]
      240 LOADNIL                          R25
      241 SETTABLE                         R25 R23 R24
      242 GETTABLEKS                       R24 R21 K48 ["QuestionAnswer"]
      244 MOVE                             R26 R10
      245 CALL                             R26 0 1
      246 JUMPIFNOT                        R26 ; [+4]
      247 GETTABLEKS                       R26 R21 K48 ["QuestionAnswer"]
      249 GETTABLE                         R25 R22 R26
      250 JUMP                             ; [+1]
      251 LOADNIL                          R25
      252 SETTABLE                         R25 R23 R24
      253 GETTABLEKS                       R24 R21 K49 ["StoreImage"]
      255 MOVE                             R26 R18
      256 CALL                             R26 0 1
      257 JUMPIFNOT                        R26 ; [+4]
      258 GETTABLEKS                       R26 R21 K49 ["StoreImage"]
      260 GETTABLE                         R25 R22 R26
      261 JUMP                             ; [+1]
      262 LOADNIL                          R25
      263 SETTABLE                         R25 R23 R24
      264 GETTABLEKS                       R24 R21 K50 ["Subagent"]
      266 GETTABLEKS                       R26 R21 K50 ["Subagent"]
      268 GETTABLE                         R25 R22 R26
      269 SETTABLE                         R25 R23 R24
      270 GETTABLEKS                       R24 R21 K51 ["FinalizePlan"]
      272 MOVE                             R26 R12
      273 CALL                             R26 0 1
      274 JUMPIFNOT                        R26 ; [+4]
      275 GETTABLEKS                       R26 R21 K51 ["FinalizePlan"]
      277 GETTABLE                         R25 R22 R26
      278 JUMP                             ; [+1]
      279 LOADNIL                          R25
      280 SETTABLE                         R25 R23 R24
      281 GETTABLEKS                       R24 R21 K52 ["CompleteTodoItems"]
      283 MOVE                             R26 R12
      284 CALL                             R26 0 1
      285 JUMPIFNOT                        R26 ; [+4]
      286 GETTABLEKS                       R26 R21 K52 ["CompleteTodoItems"]
      288 GETTABLE                         R25 R22 R26
      289 JUMP                             ; [+1]
      290 LOADNIL                          R25
      291 SETTABLE                         R25 R23 R24
      292 GETTABLEKS                       R24 R21 K53 ["UpdatePlan"]
      294 MOVE                             R26 R12
      295 CALL                             R26 0 1
      296 JUMPIFNOT                        R26 ; [+7]
      297 MOVE                             R26 R15
      298 CALL                             R26 0 1
      299 JUMPIFNOT                        R26 ; [+4]
      300 GETTABLEKS                       R26 R21 K53 ["UpdatePlan"]
      302 GETTABLE                         R25 R22 R26
      303 JUMP                             ; [+1]
      304 LOADNIL                          R25
      305 SETTABLE                         R25 R23 R24
      306 GETTABLEKS                       R24 R21 K54 ["FromHistory"]
      308 MOVE                             R26 R16
      309 CALL                             R26 0 1
      310 JUMPIFNOT                        R26 ; [+4]
      311 GETTABLEKS                       R26 R21 K54 ["FromHistory"]
      313 GETTABLE                         R25 R22 R26
      314 JUMP                             ; [+1]
      315 LOADNIL                          R25
      316 SETTABLE                         R25 R23 R24
      317 GETTABLEKS                       R24 R21 K55 ["StartStopPlay"]
      319 GETTABLEKS                       R26 R21 K55 ["StartStopPlay"]
      321 GETTABLE                         R25 R22 R26
      322 SETTABLE                         R25 R23 R24
      323 GETTABLEKS                       R24 R21 K56 ["GetConsoleOutput"]
      325 GETTABLEKS                       R26 R21 K56 ["GetConsoleOutput"]
      327 GETTABLE                         R25 R22 R26
      328 SETTABLE                         R25 R23 R24
      329 GETTABLEKS                       R24 R21 K57 ["UserKeyboardInput"]
      331 GETTABLEKS                       R26 R21 K57 ["UserKeyboardInput"]
      333 GETTABLE                         R25 R22 R26
      334 SETTABLE                         R25 R23 R24
      335 GETTABLEKS                       R24 R21 K58 ["UserMouseInput"]
      337 GETTABLEKS                       R26 R21 K58 ["UserMouseInput"]
      339 GETTABLE                         R25 R22 R26
      340 SETTABLE                         R25 R23 R24
      341 GETTABLEKS                       R24 R21 K59 ["CharacterNavigation"]
      343 GETTABLEKS                       R26 R21 K59 ["CharacterNavigation"]
      345 GETTABLE                         R25 R22 R26
      346 SETTABLE                         R25 R23 R24
      347 MOVE                             R24 R13
      348 CALL                             R24 0 1
      349 JUMPIFNOT                        R24 ; [+13]
      350 GETTABLEKS                       R24 R21 K60 ["AssetInsert"]
      352 GETTABLEKS                       R26 R21 K60 ["AssetInsert"]
      354 GETTABLE                         R25 R22 R26
      355 SETTABLE                         R25 R23 R24
      356 GETTABLEKS                       R24 R21 K61 ["AssetSearch"]
      358 GETTABLEKS                       R26 R21 K61 ["AssetSearch"]
      360 GETTABLE                         R25 R22 R26
      361 SETTABLE                         R25 R23 R24
      362 JUMP                             ; [+25]
      363 MOVE                             R24 R14
      364 CALL                             R24 0 1
      365 JUMPIF                           R24 ; [+22]
      366 MOVE                             R24 R4
      367 CALL                             R24 0 1
      368 JUMPIFNOT                        R24 ; [+13]
      369 GETTABLEKS                       R24 R21 K62 ["CreatorStoreSearch"]
      371 GETTABLEKS                       R26 R21 K62 ["CreatorStoreSearch"]
      373 GETTABLE                         R25 R22 R26
      374 SETTABLE                         R25 R23 R24
      375 GETTABLEKS                       R24 R21 K63 ["CreatorStoreInsert"]
      377 GETTABLEKS                       R26 R21 K63 ["CreatorStoreInsert"]
      379 GETTABLE                         R25 R22 R26
      380 SETTABLE                         R25 R23 R24
      381 JUMP                             ; [+6]
      382 GETTABLEKS                       R24 R21 K64 ["InsertFromMarketplace"]
      384 GETTABLEKS                       R26 R21 K64 ["InsertFromMarketplace"]
      386 GETTABLE                         R25 R22 R26
      387 SETTABLE                         R25 R23 R24
      388 NEWTABLE                         R24 8 0
      390 GETTABLEKS                       R25 R21 K65 ["ScreenCapture"]
      392 GETTABLEKS                       R27 R21 K65 ["ScreenCapture"]
      394 GETTABLE                         R26 R22 R27
      395 SETTABLE                         R26 R24 R25
      396 GETTABLEKS                       R25 R21 K66 ["UploadImage"]
      398 MOVE                             R27 R5
      399 CALL                             R27 0 1
      400 JUMPIFNOT                        R27 ; [+4]
      401 GETTABLEKS                       R27 R21 K66 ["UploadImage"]
      403 GETTABLE                         R26 R22 R27
      404 JUMP                             ; [+1]
      405 LOADNIL                          R26
      406 SETTABLE                         R26 R24 R25
      407 GETTABLEKS                       R25 R21 K67 ["Skill"]
      409 MOVE                             R27 R9
      410 CALL                             R27 0 1
      411 JUMPIFNOT                        R27 ; [+4]
      412 GETTABLEKS                       R27 R21 K67 ["Skill"]
      414 GETTABLE                         R26 R22 R27
      415 JUMP                             ; [+1]
      416 LOADNIL                          R26
      417 SETTABLE                         R26 R24 R25
      418 GETTABLEKS                       R25 R21 K68 ["HttpGet"]
      420 MOVE                             R27 R11
      421 CALL                             R27 0 1
      422 JUMPIFNOT                        R27 ; [+4]
      423 GETTABLEKS                       R27 R21 K68 ["HttpGet"]
      425 GETTABLE                         R26 R22 R27
      426 JUMP                             ; [+1]
      427 LOADNIL                          R26
      428 SETTABLE                         R26 R24 R25
      429 GETTABLEKS                       R25 R21 K62 ["CreatorStoreSearch"]
      431 MOVE                             R27 R4
      432 CALL                             R27 0 1
      433 JUMPIFNOT                        R27 ; [+7]
      434 MOVE                             R27 R14
      435 CALL                             R27 0 1
      436 JUMPIFNOT                        R27 ; [+4]
      437 GETTABLEKS                       R27 R21 K62 ["CreatorStoreSearch"]
      439 GETTABLE                         R26 R22 R27
      440 JUMP                             ; [+1]
      441 LOADNIL                          R26
      442 SETTABLE                         R26 R24 R25
      443 GETTABLEKS                       R25 R21 K63 ["CreatorStoreInsert"]
      445 MOVE                             R27 R4
      446 CALL                             R27 0 1
      447 JUMPIFNOT                        R27 ; [+7]
      448 MOVE                             R27 R14
      449 CALL                             R27 0 1
      450 JUMPIFNOT                        R27 ; [+4]
      451 GETTABLEKS                       R27 R21 K63 ["CreatorStoreInsert"]
      453 GETTABLE                         R26 R22 R27
      454 JUMP                             ; [+1]
      455 LOADNIL                          R26
      456 SETTABLE                         R26 R24 R25
      457 GETTABLEKS                       R25 R21 K64 ["InsertFromMarketplace"]
      459 MOVE                             R27 R4
      460 CALL                             R27 0 1
      461 JUMPIF                           R27 ; [+7]
      462 MOVE                             R27 R14
      463 CALL                             R27 0 1
      464 JUMPIFNOT                        R27 ; [+4]
      465 GETTABLEKS                       R27 R21 K64 ["InsertFromMarketplace"]
      467 GETTABLE                         R26 R22 R27
      468 JUMP                             ; [+1]
      469 LOADNIL                          R26
      470 SETTABLE                         R26 R24 R25
      471 NEWTABLE                         R25 1 0
      473 GETTABLEKS                       R26 R2 K69 ["FeatureNames"]
      475 GETTABLEKS                       R26 R26 K70 ["NewAssetToolSet"]
      477 NEWTABLE                         R27 2 0
      479 GETTABLEKS                       R28 R21 K60 ["AssetInsert"]
      481 MOVE                             R30 R14
      482 CALL                             R30 0 1
      483 JUMPIFNOT                        R30 ; [+7]
      484 MOVE                             R30 R13
      485 CALL                             R30 0 1
      486 JUMPIF                           R30 ; [+4]
      487 GETTABLEKS                       R30 R21 K60 ["AssetInsert"]
      489 GETTABLE                         R29 R22 R30
      490 JUMP                             ; [+1]
      491 LOADNIL                          R29
      492 SETTABLE                         R29 R27 R28
      493 GETTABLEKS                       R28 R21 K61 ["AssetSearch"]
      495 MOVE                             R30 R14
      496 CALL                             R30 0 1
      497 JUMPIFNOT                        R30 ; [+7]
      498 MOVE                             R30 R13
      499 CALL                             R30 0 1
      500 JUMPIF                           R30 ; [+4]
      501 GETTABLEKS                       R30 R21 K61 ["AssetSearch"]
      503 GETTABLE                         R29 R22 R30
      504 JUMP                             ; [+1]
      505 LOADNIL                          R29
      506 SETTABLE                         R29 R27 R28
      507 SETTABLE                         R27 R25 R26
      508 NEWTABLE                         R26 2 0
      510 GETTABLEKS                       R27 R20 K71 ["Agent"]
      512 NEWTABLE                         R28 0 19
      514 GETTABLEKS                       R29 R21 K36 ["ExecuteLuau"]
      516 GETTABLEKS                       R30 R21 K37 ["FileSearch"]
      518 GETTABLEKS                       R31 R21 K38 ["GameTree"]
      520 GETTABLEKS                       R32 R21 K39 ["GrepSearch"]
      522 GETTABLEKS                       R33 R21 K64 ["InsertFromMarketplace"]
      524 GETTABLEKS                       R34 R21 K63 ["CreatorStoreInsert"]
      526 GETTABLEKS                       R35 R21 K62 ["CreatorStoreSearch"]
      528 GETTABLEKS                       R36 R21 K60 ["AssetInsert"]
      530 GETTABLEKS                       R37 R21 K61 ["AssetSearch"]
      532 GETTABLEKS                       R38 R21 K40 ["InspectInstance"]
      534 GETTABLEKS                       R39 R21 K41 ["MaterialGen"]
      536 GETTABLEKS                       R40 R21 K43 ["MeshGen"]
      538 GETTABLEKS                       R41 R21 K44 ["MultiEdit"]
      540 GETTABLEKS                       R42 R21 K45 ["ReadFile"]
      542 GETTABLEKS                       R43 R21 K46 ["PrimitiveGen"]
      544 GETTABLEKS                       R44 R21 K67 ["Skill"]
      546 SETLIST                          R28 R29 16 [1]
      548 GETTABLEKS                       R29 R21 K50 ["Subagent"]
      550 GETTABLEKS                       R30 R21 K65 ["ScreenCapture"]
      552 GETTABLEKS                       R31 R21 K66 ["UploadImage"]
      554 SETLIST                          R28 R29 3 [17]
      556 SETTABLE                         R28 R26 R27
      557 GETTABLEKS                       R27 R20 K72 ["Test"]
      559 NEWTABLE                         R28 0 24
      561 GETTABLEKS                       R29 R21 K36 ["ExecuteLuau"]
      563 GETTABLEKS                       R30 R21 K37 ["FileSearch"]
      565 GETTABLEKS                       R31 R21 K38 ["GameTree"]
      567 GETTABLEKS                       R32 R21 K39 ["GrepSearch"]
      569 GETTABLEKS                       R33 R21 K64 ["InsertFromMarketplace"]
      571 GETTABLEKS                       R34 R21 K63 ["CreatorStoreInsert"]
      573 GETTABLEKS                       R35 R21 K62 ["CreatorStoreSearch"]
      575 GETTABLEKS                       R36 R21 K60 ["AssetInsert"]
      577 GETTABLEKS                       R37 R21 K61 ["AssetSearch"]
      579 GETTABLEKS                       R38 R21 K40 ["InspectInstance"]
      581 GETTABLEKS                       R39 R21 K41 ["MaterialGen"]
      583 GETTABLEKS                       R40 R21 K43 ["MeshGen"]
      585 GETTABLEKS                       R41 R21 K44 ["MultiEdit"]
      587 GETTABLEKS                       R42 R21 K45 ["ReadFile"]
      589 GETTABLEKS                       R43 R21 K46 ["PrimitiveGen"]
      591 GETTABLEKS                       R44 R21 K67 ["Skill"]
      593 SETLIST                          R28 R29 16 [1]
      595 GETTABLEKS                       R29 R21 K50 ["Subagent"]
      597 GETTABLEKS                       R30 R21 K65 ["ScreenCapture"]
      599 GETTABLEKS                       R31 R21 K66 ["UploadImage"]
      601 GETTABLEKS                       R32 R21 K55 ["StartStopPlay"]
      603 GETTABLEKS                       R33 R21 K56 ["GetConsoleOutput"]
      605 GETTABLEKS                       R34 R21 K57 ["UserKeyboardInput"]
      607 GETTABLEKS                       R35 R21 K58 ["UserMouseInput"]
      609 GETTABLEKS                       R36 R21 K59 ["CharacterNavigation"]
      611 SETLIST                          R28 R29 8 [17]
      613 SETTABLE                         R28 R26 R27
      614 MOVE                             R27 R19
      615 CALL                             R27 0 1
      616 JUMPIF                           R27 ; [+50]
      617 GETTABLEKS                       R29 R20 K71 ["Agent"]
      619 GETTABLE                         R28 R26 R29
      620 GETTABLEKS                       R29 R21 K55 ["StartStopPlay"]
      622 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      624 GETIMPORT                        R27 K75 [table.insert]
      626 CALL                             R27 2 0
      627 GETTABLEKS                       R29 R20 K71 ["Agent"]
      629 GETTABLE                         R28 R26 R29
      630 GETTABLEKS                       R29 R21 K56 ["GetConsoleOutput"]
      632 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      634 GETIMPORT                        R27 K75 [table.insert]
      636 CALL                             R27 2 0
      637 GETTABLEKS                       R29 R20 K71 ["Agent"]
      639 GETTABLE                         R28 R26 R29
      640 GETTABLEKS                       R29 R21 K57 ["UserKeyboardInput"]
      642 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      644 GETIMPORT                        R27 K75 [table.insert]
      646 CALL                             R27 2 0
      647 GETTABLEKS                       R29 R20 K71 ["Agent"]
      649 GETTABLE                         R28 R26 R29
      650 GETTABLEKS                       R29 R21 K58 ["UserMouseInput"]
      652 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      654 GETIMPORT                        R27 K75 [table.insert]
      656 CALL                             R27 2 0
      657 GETTABLEKS                       R29 R20 K71 ["Agent"]
      659 GETTABLE                         R28 R26 R29
      660 GETTABLEKS                       R29 R21 K59 ["CharacterNavigation"]
      662 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      664 GETIMPORT                        R27 K75 [table.insert]
      666 CALL                             R27 2 0
      667 MOVE                             R27 R10
      668 CALL                             R27 0 1
      669 JUMPIFNOT                        R27 ; [+20]
      670 GETTABLEKS                       R29 R20 K71 ["Agent"]
      672 GETTABLE                         R28 R26 R29
      673 GETTABLEKS                       R29 R21 K48 ["QuestionAnswer"]
      675 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      677 GETIMPORT                        R27 K75 [table.insert]
      679 CALL                             R27 2 0
      680 GETTABLEKS                       R29 R20 K72 ["Test"]
      682 GETTABLE                         R28 R26 R29
      683 GETTABLEKS                       R29 R21 K48 ["QuestionAnswer"]
      685 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      687 GETIMPORT                        R27 K75 [table.insert]
      689 CALL                             R27 2 0
      690 MOVE                             R27 R11
      691 CALL                             R27 0 1
      692 JUMPIFNOT                        R27 ; [+20]
      693 GETTABLEKS                       R29 R20 K71 ["Agent"]
      695 GETTABLE                         R28 R26 R29
      696 GETTABLEKS                       R29 R21 K68 ["HttpGet"]
      698 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      700 GETIMPORT                        R27 K75 [table.insert]
      702 CALL                             R27 2 0
      703 GETTABLEKS                       R29 R20 K72 ["Test"]
      705 GETTABLE                         R28 R26 R29
      706 GETTABLEKS                       R29 R21 K68 ["HttpGet"]
      708 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      710 GETIMPORT                        R27 K75 [table.insert]
      712 CALL                             R27 2 0
      713 MOVE                             R27 R16
      714 CALL                             R27 0 1
      715 JUMPIFNOT                        R27 ; [+20]
      716 GETTABLEKS                       R29 R20 K71 ["Agent"]
      718 GETTABLE                         R28 R26 R29
      719 GETTABLEKS                       R29 R21 K54 ["FromHistory"]
      721 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      723 GETIMPORT                        R27 K75 [table.insert]
      725 CALL                             R27 2 0
      726 GETTABLEKS                       R29 R20 K72 ["Test"]
      728 GETTABLE                         R28 R26 R29
      729 GETTABLEKS                       R29 R21 K54 ["FromHistory"]
      731 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      733 GETIMPORT                        R27 K75 [table.insert]
      735 CALL                             R27 2 0
      736 MOVE                             R27 R18
      737 CALL                             R27 0 1
      738 JUMPIFNOT                        R27 ; [+20]
      739 GETTABLEKS                       R29 R20 K71 ["Agent"]
      741 GETTABLE                         R28 R26 R29
      742 GETTABLEKS                       R29 R21 K49 ["StoreImage"]
      744 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      746 GETIMPORT                        R27 K75 [table.insert]
      748 CALL                             R27 2 0
      749 GETTABLEKS                       R29 R20 K72 ["Test"]
      751 GETTABLE                         R28 R26 R29
      752 GETTABLEKS                       R29 R21 K49 ["StoreImage"]
      754 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      756 GETIMPORT                        R27 K75 [table.insert]
      758 CALL                             R27 2 0
      759 MOVE                             R27 R17
      760 CALL                             R27 0 1
      761 JUMPIFNOT                        R27 ; [+20]
      762 GETTABLEKS                       R29 R20 K71 ["Agent"]
      764 GETTABLE                         R28 R26 R29
      765 GETTABLEKS                       R29 R21 K42 ["AnimationGen"]
      767 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      769 GETIMPORT                        R27 K75 [table.insert]
      771 CALL                             R27 2 0
      772 GETTABLEKS                       R29 R20 K72 ["Test"]
      774 GETTABLE                         R28 R26 R29
      775 GETTABLEKS                       R29 R21 K42 ["AnimationGen"]
      777 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      779 GETIMPORT                        R27 K75 [table.insert]
      781 CALL                             R27 2 0
      782 MOVE                             R27 R7
      783 CALL                             R27 0 1
      784 JUMPIFNOT                        R27 ; [+26]
      785 MOVE                             R27 R8
      786 CALL                             R27 0 1
      787 JUMPIFNOT                        R27 ; [+23]
      788 MOVE                             R27 R6
      789 CALL                             R27 0 1
      790 JUMPIFNOT                        R27 ; [+20]
      791 GETTABLEKS                       R29 R20 K71 ["Agent"]
      793 GETTABLE                         R28 R26 R29
      794 GETTABLEKS                       R29 R21 K47 ["WaitJobFinished"]
      796 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      798 GETIMPORT                        R27 K75 [table.insert]
      800 CALL                             R27 2 0
      801 GETTABLEKS                       R29 R20 K72 ["Test"]
      803 GETTABLE                         R28 R26 R29
      804 GETTABLEKS                       R29 R21 K47 ["WaitJobFinished"]
      806 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      808 GETIMPORT                        R27 K75 [table.insert]
      810 CALL                             R27 2 0
      811 MOVE                             R27 R12
      812 CALL                             R27 0 1
      813 JUMPIFNOT                        R27 ; [+73]
      814 GETTABLEKS                       R29 R20 K71 ["Agent"]
      816 GETTABLE                         R28 R26 R29
      817 GETTABLEKS                       R29 R21 K52 ["CompleteTodoItems"]
      819 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      821 GETIMPORT                        R27 K75 [table.insert]
      823 CALL                             R27 2 0
      824 GETTABLEKS                       R29 R20 K72 ["Test"]
      826 GETTABLE                         R28 R26 R29
      827 GETTABLEKS                       R29 R21 K52 ["CompleteTodoItems"]
      829 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      831 GETIMPORT                        R27 K75 [table.insert]
      833 CALL                             R27 2 0
      834 MOVE                             R27 R15
      835 CALL                             R27 0 1
      836 JUMPIFNOT                        R27 ; [+20]
      837 GETTABLEKS                       R29 R20 K71 ["Agent"]
      839 GETTABLE                         R28 R26 R29
      840 GETTABLEKS                       R29 R21 K53 ["UpdatePlan"]
      842 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      844 GETIMPORT                        R27 K75 [table.insert]
      846 CALL                             R27 2 0
      847 GETTABLEKS                       R29 R20 K72 ["Test"]
      849 GETTABLE                         R28 R26 R29
      850 GETTABLEKS                       R29 R21 K53 ["UpdatePlan"]
      852 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      854 GETIMPORT                        R27 K75 [table.insert]
      856 CALL                             R27 2 0
      857 GETTABLEKS                       R27 R20 K76 ["Plan"]
      859 NEWTABLE                         R28 0 9
      861 GETTABLEKS                       R29 R21 K45 ["ReadFile"]
      863 GETTABLEKS                       R30 R21 K37 ["FileSearch"]
      865 GETTABLEKS                       R31 R21 K39 ["GrepSearch"]
      867 GETTABLEKS                       R32 R21 K38 ["GameTree"]
      869 GETTABLEKS                       R33 R21 K40 ["InspectInstance"]
      871 GETTABLEKS                       R34 R21 K65 ["ScreenCapture"]
      873 GETTABLEKS                       R35 R21 K48 ["QuestionAnswer"]
      875 GETTABLEKS                       R36 R21 K51 ["FinalizePlan"]
      877 MOVE                             R38 R15
      878 CALL                             R38 0 1
      879 JUMPIFNOT                        R38 ; [+3]
      880 GETTABLEKS                       R37 R21 K53 ["UpdatePlan"]
      882 JUMP                             ; [+1]
      883 LOADNIL                          R37
      884 SETLIST                          R28 R29 9 [1]
      886 SETTABLE                         R28 R26 R27
      887 DUPTABLE                         R27 K81 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist"}]
      888 SETTABLEKS                       R23 R27 K77 ["DefaultTools"]
      890 SETTABLEKS                       R24 R27 K78 ["ExperimentalTools"]
      892 SETTABLEKS                       R25 R27 K79 ["ExperimentFeatureTools"]
      894 SETTABLEKS                       R26 R27 K80 ["AssistantModeToolsAllowlist"]
      896 RETURN                           R27 1
