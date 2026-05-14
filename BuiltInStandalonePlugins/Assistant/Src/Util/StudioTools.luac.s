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
       99 GETTABLEKS                       R15 R15 K25 ["FFlagAssistantContextCompaction"]
      101 GETTABLEKS                       R16 R1 K11 ["Flags"]
      103 GETTABLEKS                       R16 R16 K12 ["Shared"]
      105 GETTABLEKS                       R16 R16 K26 ["FFlagAssistantAnimationGenTool"]
      107 GETTABLEKS                       R17 R1 K11 ["Flags"]
      109 GETTABLEKS                       R17 R17 K12 ["Shared"]
      111 GETTABLEKS                       R17 R17 K27 ["FFlagEnableStoreImageTool"]
      113 GETTABLEKS                       R18 R1 K11 ["Flags"]
      115 GETTABLEKS                       R18 R18 K12 ["Shared"]
      117 GETTABLEKS                       R18 R18 K28 ["FFlagAssistantTestModeDropdown"]
      119 GETTABLEKS                       R19 R1 K29 ["Types"]
      121 GETTABLEKS                       R19 R19 K30 ["AssistantMode"]
      123 GETTABLEKS                       R20 R1 K31 ["Tools"]
      125 GETTABLEKS                       R20 R20 K32 ["ToolTypes"]
      127 GETTABLEKS                       R20 R20 K33 ["ToolNames"]
      129 GETTABLEKS                       R21 R1 K31 ["Tools"]
      131 GETTABLEKS                       R21 R21 K34 ["BuiltinTools"]
      133 NEWTABLE                         R22 32 0
      135 GETTABLEKS                       R23 R20 K35 ["ExecuteLuau"]
      137 GETTABLEKS                       R25 R20 K35 ["ExecuteLuau"]
      139 GETTABLE                         R24 R21 R25
      140 SETTABLE                         R24 R22 R23
      141 GETTABLEKS                       R23 R20 K36 ["FileSearch"]
      143 GETTABLEKS                       R25 R20 K36 ["FileSearch"]
      145 GETTABLE                         R24 R21 R25
      146 SETTABLE                         R24 R22 R23
      147 GETTABLEKS                       R23 R20 K37 ["GameTree"]
      149 GETTABLEKS                       R25 R20 K37 ["GameTree"]
      151 GETTABLE                         R24 R21 R25
      152 SETTABLE                         R24 R22 R23
      153 GETTABLEKS                       R23 R20 K38 ["GrepSearch"]
      155 GETTABLEKS                       R25 R20 K38 ["GrepSearch"]
      157 GETTABLE                         R24 R21 R25
      158 SETTABLE                         R24 R22 R23
      159 GETTABLEKS                       R23 R20 K39 ["InspectInstance"]
      161 GETTABLEKS                       R25 R20 K39 ["InspectInstance"]
      163 GETTABLE                         R24 R21 R25
      164 SETTABLE                         R24 R22 R23
      165 GETTABLEKS                       R23 R20 K40 ["MaterialGen"]
      167 GETTABLEKS                       R25 R20 K40 ["MaterialGen"]
      169 GETTABLE                         R24 R21 R25
      170 SETTABLE                         R24 R22 R23
      171 GETTABLEKS                       R23 R20 K41 ["AnimationGen"]
      173 MOVE                             R25 R16
      174 CALL                             R25 0 1
      175 JUMPIFNOT                        R25 ; [+4]
      176 GETTABLEKS                       R25 R20 K41 ["AnimationGen"]
      178 GETTABLE                         R24 R21 R25
      179 JUMP                             ; [+1]
      180 LOADNIL                          R24
      181 SETTABLE                         R24 R22 R23
      182 GETTABLEKS                       R23 R20 K42 ["MeshGen"]
      184 MOVE                             R25 R3
      185 CALL                             R25 0 1
      186 JUMPIFNOT                        R25 ; [+4]
      187 GETTABLEKS                       R25 R20 K42 ["MeshGen"]
      189 GETTABLE                         R24 R21 R25
      190 JUMP                             ; [+1]
      191 LOADNIL                          R24
      192 SETTABLE                         R24 R22 R23
      193 GETTABLEKS                       R23 R20 K43 ["MultiEdit"]
      195 GETTABLEKS                       R25 R20 K43 ["MultiEdit"]
      197 GETTABLE                         R24 R21 R25
      198 SETTABLE                         R24 R22 R23
      199 GETTABLEKS                       R23 R20 K44 ["ReadFile"]
      201 GETTABLEKS                       R25 R20 K44 ["ReadFile"]
      203 GETTABLE                         R24 R21 R25
      204 SETTABLE                         R24 R22 R23
      205 GETTABLEKS                       R23 R20 K45 ["PrimitiveGen"]
      207 MOVE                             R25 R6
      208 CALL                             R25 0 1
      209 JUMPIFNOT                        R25 ; [+7]
      210 MOVE                             R25 R8
      211 CALL                             R25 0 1
      212 JUMPIFNOT                        R25 ; [+4]
      213 GETTABLEKS                       R25 R20 K45 ["PrimitiveGen"]
      215 GETTABLE                         R24 R21 R25
      216 JUMP                             ; [+1]
      217 LOADNIL                          R24
      218 SETTABLE                         R24 R22 R23
      219 GETTABLEKS                       R23 R20 K46 ["WaitJobFinished"]
      221 MOVE                             R25 R7
      222 CALL                             R25 0 1
      223 JUMPIFNOT                        R25 ; [+10]
      224 MOVE                             R25 R8
      225 CALL                             R25 0 1
      226 JUMPIFNOT                        R25 ; [+7]
      227 MOVE                             R25 R6
      228 CALL                             R25 0 1
      229 JUMPIFNOT                        R25 ; [+4]
      230 GETTABLEKS                       R25 R20 K46 ["WaitJobFinished"]
      232 GETTABLE                         R24 R21 R25
      233 JUMP                             ; [+1]
      234 LOADNIL                          R24
      235 SETTABLE                         R24 R22 R23
      236 GETTABLEKS                       R23 R20 K47 ["QuestionAnswer"]
      238 MOVE                             R25 R10
      239 CALL                             R25 0 1
      240 JUMPIFNOT                        R25 ; [+4]
      241 GETTABLEKS                       R25 R20 K47 ["QuestionAnswer"]
      243 GETTABLE                         R24 R21 R25
      244 JUMP                             ; [+1]
      245 LOADNIL                          R24
      246 SETTABLE                         R24 R22 R23
      247 GETTABLEKS                       R23 R20 K48 ["StoreImage"]
      249 MOVE                             R25 R17
      250 CALL                             R25 0 1
      251 JUMPIFNOT                        R25 ; [+4]
      252 GETTABLEKS                       R25 R20 K48 ["StoreImage"]
      254 GETTABLE                         R24 R21 R25
      255 JUMP                             ; [+1]
      256 LOADNIL                          R24
      257 SETTABLE                         R24 R22 R23
      258 GETTABLEKS                       R23 R20 K49 ["Subagent"]
      260 GETTABLEKS                       R25 R20 K49 ["Subagent"]
      262 GETTABLE                         R24 R21 R25
      263 SETTABLE                         R24 R22 R23
      264 GETTABLEKS                       R23 R20 K50 ["FinalizePlan"]
      266 MOVE                             R25 R12
      267 CALL                             R25 0 1
      268 JUMPIFNOT                        R25 ; [+4]
      269 GETTABLEKS                       R25 R20 K50 ["FinalizePlan"]
      271 GETTABLE                         R24 R21 R25
      272 JUMP                             ; [+1]
      273 LOADNIL                          R24
      274 SETTABLE                         R24 R22 R23
      275 GETTABLEKS                       R23 R20 K51 ["CompleteTodoItems"]
      277 MOVE                             R25 R12
      278 CALL                             R25 0 1
      279 JUMPIFNOT                        R25 ; [+4]
      280 GETTABLEKS                       R25 R20 K51 ["CompleteTodoItems"]
      282 GETTABLE                         R24 R21 R25
      283 JUMP                             ; [+1]
      284 LOADNIL                          R24
      285 SETTABLE                         R24 R22 R23
      286 GETTABLEKS                       R23 R20 K52 ["FromHistory"]
      288 MOVE                             R25 R15
      289 CALL                             R25 0 1
      290 JUMPIFNOT                        R25 ; [+4]
      291 GETTABLEKS                       R25 R20 K52 ["FromHistory"]
      293 GETTABLE                         R24 R21 R25
      294 JUMP                             ; [+1]
      295 LOADNIL                          R24
      296 SETTABLE                         R24 R22 R23
      297 GETTABLEKS                       R23 R20 K53 ["StartStopPlay"]
      299 GETTABLEKS                       R25 R20 K53 ["StartStopPlay"]
      301 GETTABLE                         R24 R21 R25
      302 SETTABLE                         R24 R22 R23
      303 GETTABLEKS                       R23 R20 K54 ["GetConsoleOutput"]
      305 GETTABLEKS                       R25 R20 K54 ["GetConsoleOutput"]
      307 GETTABLE                         R24 R21 R25
      308 SETTABLE                         R24 R22 R23
      309 GETTABLEKS                       R23 R20 K55 ["UserKeyboardInput"]
      311 GETTABLEKS                       R25 R20 K55 ["UserKeyboardInput"]
      313 GETTABLE                         R24 R21 R25
      314 SETTABLE                         R24 R22 R23
      315 GETTABLEKS                       R23 R20 K56 ["UserMouseInput"]
      317 GETTABLEKS                       R25 R20 K56 ["UserMouseInput"]
      319 GETTABLE                         R24 R21 R25
      320 SETTABLE                         R24 R22 R23
      321 GETTABLEKS                       R23 R20 K57 ["CharacterNavigation"]
      323 GETTABLEKS                       R25 R20 K57 ["CharacterNavigation"]
      325 GETTABLE                         R24 R21 R25
      326 SETTABLE                         R24 R22 R23
      327 MOVE                             R23 R13
      328 CALL                             R23 0 1
      329 JUMPIFNOT                        R23 ; [+13]
      330 GETTABLEKS                       R23 R20 K58 ["AssetInsert"]
      332 GETTABLEKS                       R25 R20 K58 ["AssetInsert"]
      334 GETTABLE                         R24 R21 R25
      335 SETTABLE                         R24 R22 R23
      336 GETTABLEKS                       R23 R20 K59 ["AssetSearch"]
      338 GETTABLEKS                       R25 R20 K59 ["AssetSearch"]
      340 GETTABLE                         R24 R21 R25
      341 SETTABLE                         R24 R22 R23
      342 JUMP                             ; [+25]
      343 MOVE                             R23 R14
      344 CALL                             R23 0 1
      345 JUMPIF                           R23 ; [+22]
      346 MOVE                             R23 R4
      347 CALL                             R23 0 1
      348 JUMPIFNOT                        R23 ; [+13]
      349 GETTABLEKS                       R23 R20 K60 ["CreatorStoreSearch"]
      351 GETTABLEKS                       R25 R20 K60 ["CreatorStoreSearch"]
      353 GETTABLE                         R24 R21 R25
      354 SETTABLE                         R24 R22 R23
      355 GETTABLEKS                       R23 R20 K61 ["CreatorStoreInsert"]
      357 GETTABLEKS                       R25 R20 K61 ["CreatorStoreInsert"]
      359 GETTABLE                         R24 R21 R25
      360 SETTABLE                         R24 R22 R23
      361 JUMP                             ; [+6]
      362 GETTABLEKS                       R23 R20 K62 ["InsertFromMarketplace"]
      364 GETTABLEKS                       R25 R20 K62 ["InsertFromMarketplace"]
      366 GETTABLE                         R24 R21 R25
      367 SETTABLE                         R24 R22 R23
      368 NEWTABLE                         R23 8 0
      370 GETTABLEKS                       R24 R20 K63 ["ScreenCapture"]
      372 GETTABLEKS                       R26 R20 K63 ["ScreenCapture"]
      374 GETTABLE                         R25 R21 R26
      375 SETTABLE                         R25 R23 R24
      376 GETTABLEKS                       R24 R20 K64 ["UploadImage"]
      378 MOVE                             R26 R5
      379 CALL                             R26 0 1
      380 JUMPIFNOT                        R26 ; [+4]
      381 GETTABLEKS                       R26 R20 K64 ["UploadImage"]
      383 GETTABLE                         R25 R21 R26
      384 JUMP                             ; [+1]
      385 LOADNIL                          R25
      386 SETTABLE                         R25 R23 R24
      387 GETTABLEKS                       R24 R20 K65 ["Skill"]
      389 MOVE                             R26 R9
      390 CALL                             R26 0 1
      391 JUMPIFNOT                        R26 ; [+4]
      392 GETTABLEKS                       R26 R20 K65 ["Skill"]
      394 GETTABLE                         R25 R21 R26
      395 JUMP                             ; [+1]
      396 LOADNIL                          R25
      397 SETTABLE                         R25 R23 R24
      398 GETTABLEKS                       R24 R20 K66 ["HttpGet"]
      400 MOVE                             R26 R11
      401 CALL                             R26 0 1
      402 JUMPIFNOT                        R26 ; [+4]
      403 GETTABLEKS                       R26 R20 K66 ["HttpGet"]
      405 GETTABLE                         R25 R21 R26
      406 JUMP                             ; [+1]
      407 LOADNIL                          R25
      408 SETTABLE                         R25 R23 R24
      409 GETTABLEKS                       R24 R20 K60 ["CreatorStoreSearch"]
      411 MOVE                             R26 R4
      412 CALL                             R26 0 1
      413 JUMPIFNOT                        R26 ; [+7]
      414 MOVE                             R26 R14
      415 CALL                             R26 0 1
      416 JUMPIFNOT                        R26 ; [+4]
      417 GETTABLEKS                       R26 R20 K60 ["CreatorStoreSearch"]
      419 GETTABLE                         R25 R21 R26
      420 JUMP                             ; [+1]
      421 LOADNIL                          R25
      422 SETTABLE                         R25 R23 R24
      423 GETTABLEKS                       R24 R20 K61 ["CreatorStoreInsert"]
      425 MOVE                             R26 R4
      426 CALL                             R26 0 1
      427 JUMPIFNOT                        R26 ; [+7]
      428 MOVE                             R26 R14
      429 CALL                             R26 0 1
      430 JUMPIFNOT                        R26 ; [+4]
      431 GETTABLEKS                       R26 R20 K61 ["CreatorStoreInsert"]
      433 GETTABLE                         R25 R21 R26
      434 JUMP                             ; [+1]
      435 LOADNIL                          R25
      436 SETTABLE                         R25 R23 R24
      437 GETTABLEKS                       R24 R20 K62 ["InsertFromMarketplace"]
      439 MOVE                             R26 R4
      440 CALL                             R26 0 1
      441 JUMPIF                           R26 ; [+7]
      442 MOVE                             R26 R14
      443 CALL                             R26 0 1
      444 JUMPIFNOT                        R26 ; [+4]
      445 GETTABLEKS                       R26 R20 K62 ["InsertFromMarketplace"]
      447 GETTABLE                         R25 R21 R26
      448 JUMP                             ; [+1]
      449 LOADNIL                          R25
      450 SETTABLE                         R25 R23 R24
      451 NEWTABLE                         R24 1 0
      453 GETTABLEKS                       R25 R2 K67 ["FeatureNames"]
      455 GETTABLEKS                       R25 R25 K68 ["NewAssetToolSet"]
      457 NEWTABLE                         R26 2 0
      459 GETTABLEKS                       R27 R20 K58 ["AssetInsert"]
      461 MOVE                             R29 R14
      462 CALL                             R29 0 1
      463 JUMPIFNOT                        R29 ; [+7]
      464 MOVE                             R29 R13
      465 CALL                             R29 0 1
      466 JUMPIF                           R29 ; [+4]
      467 GETTABLEKS                       R29 R20 K58 ["AssetInsert"]
      469 GETTABLE                         R28 R21 R29
      470 JUMP                             ; [+1]
      471 LOADNIL                          R28
      472 SETTABLE                         R28 R26 R27
      473 GETTABLEKS                       R27 R20 K59 ["AssetSearch"]
      475 MOVE                             R29 R14
      476 CALL                             R29 0 1
      477 JUMPIFNOT                        R29 ; [+7]
      478 MOVE                             R29 R13
      479 CALL                             R29 0 1
      480 JUMPIF                           R29 ; [+4]
      481 GETTABLEKS                       R29 R20 K59 ["AssetSearch"]
      483 GETTABLE                         R28 R21 R29
      484 JUMP                             ; [+1]
      485 LOADNIL                          R28
      486 SETTABLE                         R28 R26 R27
      487 SETTABLE                         R26 R24 R25
      488 NEWTABLE                         R25 2 0
      490 GETTABLEKS                       R26 R19 K69 ["Agent"]
      492 NEWTABLE                         R27 0 19
      494 GETTABLEKS                       R28 R20 K35 ["ExecuteLuau"]
      496 GETTABLEKS                       R29 R20 K36 ["FileSearch"]
      498 GETTABLEKS                       R30 R20 K37 ["GameTree"]
      500 GETTABLEKS                       R31 R20 K38 ["GrepSearch"]
      502 GETTABLEKS                       R32 R20 K62 ["InsertFromMarketplace"]
      504 GETTABLEKS                       R33 R20 K61 ["CreatorStoreInsert"]
      506 GETTABLEKS                       R34 R20 K60 ["CreatorStoreSearch"]
      508 GETTABLEKS                       R35 R20 K58 ["AssetInsert"]
      510 GETTABLEKS                       R36 R20 K59 ["AssetSearch"]
      512 GETTABLEKS                       R37 R20 K39 ["InspectInstance"]
      514 GETTABLEKS                       R38 R20 K40 ["MaterialGen"]
      516 GETTABLEKS                       R39 R20 K42 ["MeshGen"]
      518 GETTABLEKS                       R40 R20 K43 ["MultiEdit"]
      520 GETTABLEKS                       R41 R20 K44 ["ReadFile"]
      522 GETTABLEKS                       R42 R20 K45 ["PrimitiveGen"]
      524 GETTABLEKS                       R43 R20 K65 ["Skill"]
      526 SETLIST                          R27 R28 16 [1]
      528 GETTABLEKS                       R28 R20 K49 ["Subagent"]
      530 GETTABLEKS                       R29 R20 K63 ["ScreenCapture"]
      532 GETTABLEKS                       R30 R20 K64 ["UploadImage"]
      534 SETLIST                          R27 R28 3 [17]
      536 SETTABLE                         R27 R25 R26
      537 GETTABLEKS                       R26 R19 K70 ["Test"]
      539 NEWTABLE                         R27 0 24
      541 GETTABLEKS                       R28 R20 K35 ["ExecuteLuau"]
      543 GETTABLEKS                       R29 R20 K36 ["FileSearch"]
      545 GETTABLEKS                       R30 R20 K37 ["GameTree"]
      547 GETTABLEKS                       R31 R20 K38 ["GrepSearch"]
      549 GETTABLEKS                       R32 R20 K62 ["InsertFromMarketplace"]
      551 GETTABLEKS                       R33 R20 K61 ["CreatorStoreInsert"]
      553 GETTABLEKS                       R34 R20 K60 ["CreatorStoreSearch"]
      555 GETTABLEKS                       R35 R20 K58 ["AssetInsert"]
      557 GETTABLEKS                       R36 R20 K59 ["AssetSearch"]
      559 GETTABLEKS                       R37 R20 K39 ["InspectInstance"]
      561 GETTABLEKS                       R38 R20 K40 ["MaterialGen"]
      563 GETTABLEKS                       R39 R20 K42 ["MeshGen"]
      565 GETTABLEKS                       R40 R20 K43 ["MultiEdit"]
      567 GETTABLEKS                       R41 R20 K44 ["ReadFile"]
      569 GETTABLEKS                       R42 R20 K45 ["PrimitiveGen"]
      571 GETTABLEKS                       R43 R20 K65 ["Skill"]
      573 SETLIST                          R27 R28 16 [1]
      575 GETTABLEKS                       R28 R20 K49 ["Subagent"]
      577 GETTABLEKS                       R29 R20 K63 ["ScreenCapture"]
      579 GETTABLEKS                       R30 R20 K64 ["UploadImage"]
      581 GETTABLEKS                       R31 R20 K53 ["StartStopPlay"]
      583 GETTABLEKS                       R32 R20 K54 ["GetConsoleOutput"]
      585 GETTABLEKS                       R33 R20 K55 ["UserKeyboardInput"]
      587 GETTABLEKS                       R34 R20 K56 ["UserMouseInput"]
      589 GETTABLEKS                       R35 R20 K57 ["CharacterNavigation"]
      591 SETLIST                          R27 R28 8 [17]
      593 SETTABLE                         R27 R25 R26
      594 MOVE                             R26 R18
      595 CALL                             R26 0 1
      596 JUMPIF                           R26 ; [+50]
      597 GETTABLEKS                       R28 R19 K69 ["Agent"]
      599 GETTABLE                         R27 R25 R28
      600 GETTABLEKS                       R28 R20 K53 ["StartStopPlay"]
      602 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      604 GETIMPORT                        R26 K73 [table.insert]
      606 CALL                             R26 2 0
      607 GETTABLEKS                       R28 R19 K69 ["Agent"]
      609 GETTABLE                         R27 R25 R28
      610 GETTABLEKS                       R28 R20 K54 ["GetConsoleOutput"]
      612 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      614 GETIMPORT                        R26 K73 [table.insert]
      616 CALL                             R26 2 0
      617 GETTABLEKS                       R28 R19 K69 ["Agent"]
      619 GETTABLE                         R27 R25 R28
      620 GETTABLEKS                       R28 R20 K55 ["UserKeyboardInput"]
      622 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      624 GETIMPORT                        R26 K73 [table.insert]
      626 CALL                             R26 2 0
      627 GETTABLEKS                       R28 R19 K69 ["Agent"]
      629 GETTABLE                         R27 R25 R28
      630 GETTABLEKS                       R28 R20 K56 ["UserMouseInput"]
      632 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      634 GETIMPORT                        R26 K73 [table.insert]
      636 CALL                             R26 2 0
      637 GETTABLEKS                       R28 R19 K69 ["Agent"]
      639 GETTABLE                         R27 R25 R28
      640 GETTABLEKS                       R28 R20 K57 ["CharacterNavigation"]
      642 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      644 GETIMPORT                        R26 K73 [table.insert]
      646 CALL                             R26 2 0
      647 MOVE                             R26 R10
      648 CALL                             R26 0 1
      649 JUMPIFNOT                        R26 ; [+20]
      650 GETTABLEKS                       R28 R19 K69 ["Agent"]
      652 GETTABLE                         R27 R25 R28
      653 GETTABLEKS                       R28 R20 K47 ["QuestionAnswer"]
      655 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      657 GETIMPORT                        R26 K73 [table.insert]
      659 CALL                             R26 2 0
      660 GETTABLEKS                       R28 R19 K70 ["Test"]
      662 GETTABLE                         R27 R25 R28
      663 GETTABLEKS                       R28 R20 K47 ["QuestionAnswer"]
      665 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      667 GETIMPORT                        R26 K73 [table.insert]
      669 CALL                             R26 2 0
      670 MOVE                             R26 R11
      671 CALL                             R26 0 1
      672 JUMPIFNOT                        R26 ; [+20]
      673 GETTABLEKS                       R28 R19 K69 ["Agent"]
      675 GETTABLE                         R27 R25 R28
      676 GETTABLEKS                       R28 R20 K66 ["HttpGet"]
      678 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      680 GETIMPORT                        R26 K73 [table.insert]
      682 CALL                             R26 2 0
      683 GETTABLEKS                       R28 R19 K70 ["Test"]
      685 GETTABLE                         R27 R25 R28
      686 GETTABLEKS                       R28 R20 K66 ["HttpGet"]
      688 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      690 GETIMPORT                        R26 K73 [table.insert]
      692 CALL                             R26 2 0
      693 MOVE                             R26 R15
      694 CALL                             R26 0 1
      695 JUMPIFNOT                        R26 ; [+20]
      696 GETTABLEKS                       R28 R19 K69 ["Agent"]
      698 GETTABLE                         R27 R25 R28
      699 GETTABLEKS                       R28 R20 K52 ["FromHistory"]
      701 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      703 GETIMPORT                        R26 K73 [table.insert]
      705 CALL                             R26 2 0
      706 GETTABLEKS                       R28 R19 K70 ["Test"]
      708 GETTABLE                         R27 R25 R28
      709 GETTABLEKS                       R28 R20 K52 ["FromHistory"]
      711 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      713 GETIMPORT                        R26 K73 [table.insert]
      715 CALL                             R26 2 0
      716 MOVE                             R26 R17
      717 CALL                             R26 0 1
      718 JUMPIFNOT                        R26 ; [+20]
      719 GETTABLEKS                       R28 R19 K69 ["Agent"]
      721 GETTABLE                         R27 R25 R28
      722 GETTABLEKS                       R28 R20 K48 ["StoreImage"]
      724 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      726 GETIMPORT                        R26 K73 [table.insert]
      728 CALL                             R26 2 0
      729 GETTABLEKS                       R28 R19 K70 ["Test"]
      731 GETTABLE                         R27 R25 R28
      732 GETTABLEKS                       R28 R20 K48 ["StoreImage"]
      734 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      736 GETIMPORT                        R26 K73 [table.insert]
      738 CALL                             R26 2 0
      739 MOVE                             R26 R16
      740 CALL                             R26 0 1
      741 JUMPIFNOT                        R26 ; [+20]
      742 GETTABLEKS                       R28 R19 K69 ["Agent"]
      744 GETTABLE                         R27 R25 R28
      745 GETTABLEKS                       R28 R20 K41 ["AnimationGen"]
      747 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      749 GETIMPORT                        R26 K73 [table.insert]
      751 CALL                             R26 2 0
      752 GETTABLEKS                       R28 R19 K70 ["Test"]
      754 GETTABLE                         R27 R25 R28
      755 GETTABLEKS                       R28 R20 K41 ["AnimationGen"]
      757 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      759 GETIMPORT                        R26 K73 [table.insert]
      761 CALL                             R26 2 0
      762 MOVE                             R26 R7
      763 CALL                             R26 0 1
      764 JUMPIFNOT                        R26 ; [+26]
      765 MOVE                             R26 R8
      766 CALL                             R26 0 1
      767 JUMPIFNOT                        R26 ; [+23]
      768 MOVE                             R26 R6
      769 CALL                             R26 0 1
      770 JUMPIFNOT                        R26 ; [+20]
      771 GETTABLEKS                       R28 R19 K69 ["Agent"]
      773 GETTABLE                         R27 R25 R28
      774 GETTABLEKS                       R28 R20 K46 ["WaitJobFinished"]
      776 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      778 GETIMPORT                        R26 K73 [table.insert]
      780 CALL                             R26 2 0
      781 GETTABLEKS                       R28 R19 K70 ["Test"]
      783 GETTABLE                         R27 R25 R28
      784 GETTABLEKS                       R28 R20 K46 ["WaitJobFinished"]
      786 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      788 GETIMPORT                        R26 K73 [table.insert]
      790 CALL                             R26 2 0
      791 MOVE                             R26 R12
      792 CALL                             R26 0 1
      793 JUMPIFNOT                        R26 ; [+43]
      794 GETTABLEKS                       R28 R19 K69 ["Agent"]
      796 GETTABLE                         R27 R25 R28
      797 GETTABLEKS                       R28 R20 K51 ["CompleteTodoItems"]
      799 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      801 GETIMPORT                        R26 K73 [table.insert]
      803 CALL                             R26 2 0
      804 GETTABLEKS                       R28 R19 K70 ["Test"]
      806 GETTABLE                         R27 R25 R28
      807 GETTABLEKS                       R28 R20 K51 ["CompleteTodoItems"]
      809 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      811 GETIMPORT                        R26 K73 [table.insert]
      813 CALL                             R26 2 0
      814 GETTABLEKS                       R26 R19 K74 ["Plan"]
      816 NEWTABLE                         R27 0 8
      818 GETTABLEKS                       R28 R20 K44 ["ReadFile"]
      820 GETTABLEKS                       R29 R20 K36 ["FileSearch"]
      822 GETTABLEKS                       R30 R20 K38 ["GrepSearch"]
      824 GETTABLEKS                       R31 R20 K37 ["GameTree"]
      826 GETTABLEKS                       R32 R20 K39 ["InspectInstance"]
      828 GETTABLEKS                       R33 R20 K63 ["ScreenCapture"]
      830 GETTABLEKS                       R34 R20 K47 ["QuestionAnswer"]
      832 GETTABLEKS                       R35 R20 K50 ["FinalizePlan"]
      834 SETLIST                          R27 R28 8 [1]
      836 SETTABLE                         R27 R25 R26
      837 DUPTABLE                         R26 K79 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist"}]
      838 SETTABLEKS                       R22 R26 K75 ["DefaultTools"]
      840 SETTABLEKS                       R23 R26 K76 ["ExperimentalTools"]
      842 SETTABLEKS                       R24 R26 K77 ["ExperimentFeatureTools"]
      844 SETTABLEKS                       R25 R26 K78 ["AssistantModeToolsAllowlist"]
      846 RETURN                           R26 1
