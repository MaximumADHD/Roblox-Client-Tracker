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
       27 GETTABLEKS                       R3 R3 K13 ["FFlagEnableAssistantImageUpload"]
       29 GETTABLEKS                       R4 R1 K11 ["Flags"]
       31 GETTABLEKS                       R4 R4 K12 ["Shared"]
       33 GETTABLEKS                       R4 R4 K14 ["FFlagEnablePrimitiveGenTool"]
       35 GETTABLEKS                       R5 R1 K11 ["Flags"]
       37 GETTABLEKS                       R5 R5 K12 ["Shared"]
       39 GETTABLEKS                       R5 R5 K15 ["FFlagProceduralModel"]
       41 GETTABLEKS                       R6 R1 K11 ["Flags"]
       43 GETTABLEKS                       R6 R6 K12 ["Shared"]
       45 GETTABLEKS                       R6 R6 K16 ["FFlagAssistantQuestionAnswerTool"]
       47 GETTABLEKS                       R7 R1 K11 ["Flags"]
       49 GETTABLEKS                       R7 R7 K12 ["Shared"]
       51 GETTABLEKS                       R7 R7 K17 ["FFlagAssistantPlanMode"]
       53 GETTABLEKS                       R8 R1 K11 ["Flags"]
       55 GETTABLEKS                       R8 R8 K12 ["Shared"]
       57 GETTABLEKS                       R8 R8 K18 ["FFlagAssistantAssetSearchInsertTool"]
       59 GETTABLEKS                       R9 R1 K11 ["Flags"]
       61 GETTABLEKS                       R9 R9 K12 ["Shared"]
       63 GETTABLEKS                       R9 R9 K19 ["FFlagAssistantAssetSearchInsertToolABTest"]
       65 GETTABLEKS                       R10 R1 K11 ["Flags"]
       67 GETTABLEKS                       R10 R10 K12 ["Shared"]
       69 GETTABLEKS                       R10 R10 K20 ["FFlagAssistantMarkdownPlanMode"]
       71 GETTABLEKS                       R11 R1 K11 ["Flags"]
       73 GETTABLEKS                       R11 R11 K12 ["Shared"]
       75 GETTABLEKS                       R11 R11 K21 ["FFlagAssistantAnimationGenTool"]
       77 GETTABLEKS                       R12 R1 K11 ["Flags"]
       79 GETTABLEKS                       R12 R12 K12 ["Shared"]
       81 GETTABLEKS                       R12 R12 K22 ["FFlagAssistantMultiPlayerAgents"]
       83 GETTABLEKS                       R13 R1 K11 ["Flags"]
       85 GETTABLEKS                       R13 R13 K12 ["Shared"]
       87 GETTABLEKS                       R13 R13 K23 ["FFlagAssistantGetStudioState"]
       89 GETTABLEKS                       R14 R1 K24 ["Types"]
       91 GETTABLEKS                       R14 R14 K25 ["AssistantMode"]
       93 GETTABLEKS                       R15 R1 K26 ["Tools"]
       95 GETTABLEKS                       R15 R15 K27 ["ToolTypes"]
       97 GETTABLEKS                       R15 R15 K28 ["ToolNames"]
       99 GETTABLEKS                       R16 R1 K26 ["Tools"]
      101 GETTABLEKS                       R16 R16 K29 ["BuiltinTools"]
      103 NEWTABLE                         R17 32 0
      105 GETTABLEKS                       R18 R15 K30 ["ExecuteLuau"]
      107 GETTABLEKS                       R20 R15 K30 ["ExecuteLuau"]
      109 GETTABLE                         R19 R16 R20
      110 SETTABLE                         R19 R17 R18
      111 GETTABLEKS                       R18 R15 K31 ["FileSearch"]
      113 GETTABLEKS                       R20 R15 K31 ["FileSearch"]
      115 GETTABLE                         R19 R16 R20
      116 SETTABLE                         R19 R17 R18
      117 GETTABLEKS                       R18 R15 K32 ["GameTree"]
      119 GETTABLEKS                       R20 R15 K32 ["GameTree"]
      121 GETTABLE                         R19 R16 R20
      122 SETTABLE                         R19 R17 R18
      123 GETTABLEKS                       R18 R15 K33 ["GrepSearch"]
      125 GETTABLEKS                       R20 R15 K33 ["GrepSearch"]
      127 GETTABLE                         R19 R16 R20
      128 SETTABLE                         R19 R17 R18
      129 GETTABLEKS                       R18 R15 K34 ["InspectInstance"]
      131 GETTABLEKS                       R20 R15 K34 ["InspectInstance"]
      133 GETTABLE                         R19 R16 R20
      134 SETTABLE                         R19 R17 R18
      135 GETTABLEKS                       R18 R15 K35 ["MaterialGen"]
      137 GETTABLEKS                       R20 R15 K35 ["MaterialGen"]
      139 GETTABLE                         R19 R16 R20
      140 SETTABLE                         R19 R17 R18
      141 GETTABLEKS                       R18 R15 K36 ["AnimationGen"]
      143 MOVE                             R20 R11
      144 CALL                             R20 0 1
      145 JUMPIFNOT                        R20 ; [+4]
      146 GETTABLEKS                       R20 R15 K36 ["AnimationGen"]
      148 GETTABLE                         R19 R16 R20
      149 JUMP                             ; [+1]
      150 LOADNIL                          R19
      151 SETTABLE                         R19 R17 R18
      152 GETTABLEKS                       R18 R15 K37 ["MeshGen"]
      154 GETTABLEKS                       R20 R15 K37 ["MeshGen"]
      156 GETTABLE                         R19 R16 R20
      157 SETTABLE                         R19 R17 R18
      158 GETTABLEKS                       R18 R15 K38 ["MultiEdit"]
      160 GETTABLEKS                       R20 R15 K38 ["MultiEdit"]
      162 GETTABLE                         R19 R16 R20
      163 SETTABLE                         R19 R17 R18
      164 GETTABLEKS                       R18 R15 K39 ["ReadFile"]
      166 GETTABLEKS                       R20 R15 K39 ["ReadFile"]
      168 GETTABLE                         R19 R16 R20
      169 SETTABLE                         R19 R17 R18
      170 GETTABLEKS                       R18 R15 K40 ["PrimitiveGen"]
      172 MOVE                             R20 R4
      173 CALL                             R20 0 1
      174 JUMPIFNOT                        R20 ; [+7]
      175 MOVE                             R20 R5
      176 CALL                             R20 0 1
      177 JUMPIFNOT                        R20 ; [+4]
      178 GETTABLEKS                       R20 R15 K40 ["PrimitiveGen"]
      180 GETTABLE                         R19 R16 R20
      181 JUMP                             ; [+1]
      182 LOADNIL                          R19
      183 SETTABLE                         R19 R17 R18
      184 GETTABLEKS                       R18 R15 K41 ["WaitJobFinished"]
      186 MOVE                             R20 R5
      187 CALL                             R20 0 1
      188 JUMPIFNOT                        R20 ; [+7]
      189 MOVE                             R20 R4
      190 CALL                             R20 0 1
      191 JUMPIFNOT                        R20 ; [+4]
      192 GETTABLEKS                       R20 R15 K41 ["WaitJobFinished"]
      194 GETTABLE                         R19 R16 R20
      195 JUMP                             ; [+1]
      196 LOADNIL                          R19
      197 SETTABLE                         R19 R17 R18
      198 GETTABLEKS                       R18 R15 K42 ["QuestionAnswer"]
      200 MOVE                             R20 R6
      201 CALL                             R20 0 1
      202 JUMPIFNOT                        R20 ; [+4]
      203 GETTABLEKS                       R20 R15 K42 ["QuestionAnswer"]
      205 GETTABLE                         R19 R16 R20
      206 JUMP                             ; [+1]
      207 LOADNIL                          R19
      208 SETTABLE                         R19 R17 R18
      209 GETTABLEKS                       R18 R15 K43 ["StoreImage"]
      211 GETTABLEKS                       R20 R15 K43 ["StoreImage"]
      213 GETTABLE                         R19 R16 R20
      214 SETTABLE                         R19 R17 R18
      215 GETTABLEKS                       R18 R15 K44 ["Subagent"]
      217 GETTABLEKS                       R20 R15 K44 ["Subagent"]
      219 GETTABLE                         R19 R16 R20
      220 SETTABLE                         R19 R17 R18
      221 GETTABLEKS                       R18 R15 K45 ["FinalizePlan"]
      223 MOVE                             R20 R7
      224 CALL                             R20 0 1
      225 JUMPIFNOT                        R20 ; [+4]
      226 GETTABLEKS                       R20 R15 K45 ["FinalizePlan"]
      228 GETTABLE                         R19 R16 R20
      229 JUMP                             ; [+1]
      230 LOADNIL                          R19
      231 SETTABLE                         R19 R17 R18
      232 GETTABLEKS                       R18 R15 K46 ["CompleteTodoItems"]
      234 MOVE                             R20 R7
      235 CALL                             R20 0 1
      236 JUMPIFNOT                        R20 ; [+4]
      237 GETTABLEKS                       R20 R15 K46 ["CompleteTodoItems"]
      239 GETTABLE                         R19 R16 R20
      240 JUMP                             ; [+1]
      241 LOADNIL                          R19
      242 SETTABLE                         R19 R17 R18
      243 GETTABLEKS                       R18 R15 K47 ["UpdatePlan"]
      245 MOVE                             R20 R7
      246 CALL                             R20 0 1
      247 JUMPIFNOT                        R20 ; [+7]
      248 MOVE                             R20 R10
      249 CALL                             R20 0 1
      250 JUMPIFNOT                        R20 ; [+4]
      251 GETTABLEKS                       R20 R15 K47 ["UpdatePlan"]
      253 GETTABLE                         R19 R16 R20
      254 JUMP                             ; [+1]
      255 LOADNIL                          R19
      256 SETTABLE                         R19 R17 R18
      257 GETTABLEKS                       R18 R15 K48 ["FromHistory"]
      259 GETTABLEKS                       R20 R15 K48 ["FromHistory"]
      261 GETTABLE                         R19 R16 R20
      262 SETTABLE                         R19 R17 R18
      263 GETTABLEKS                       R18 R15 K49 ["StartStopPlay"]
      265 GETTABLEKS                       R20 R15 K49 ["StartStopPlay"]
      267 GETTABLE                         R19 R16 R20
      268 SETTABLE                         R19 R17 R18
      269 GETTABLEKS                       R18 R15 K50 ["GetConsoleOutput"]
      271 GETTABLEKS                       R20 R15 K50 ["GetConsoleOutput"]
      273 GETTABLE                         R19 R16 R20
      274 SETTABLE                         R19 R17 R18
      275 GETTABLEKS                       R18 R15 K51 ["UserKeyboardInput"]
      277 GETTABLEKS                       R20 R15 K51 ["UserKeyboardInput"]
      279 GETTABLE                         R19 R16 R20
      280 SETTABLE                         R19 R17 R18
      281 GETTABLEKS                       R18 R15 K52 ["UserMouseInput"]
      283 GETTABLEKS                       R20 R15 K52 ["UserMouseInput"]
      285 GETTABLE                         R19 R16 R20
      286 SETTABLE                         R19 R17 R18
      287 GETTABLEKS                       R18 R15 K53 ["CharacterNavigation"]
      289 GETTABLEKS                       R20 R15 K53 ["CharacterNavigation"]
      291 GETTABLE                         R19 R16 R20
      292 SETTABLE                         R19 R17 R18
      293 GETTABLEKS                       R18 R15 K54 ["Skill"]
      295 GETTABLEKS                       R20 R15 K54 ["Skill"]
      297 GETTABLE                         R19 R16 R20
      298 SETTABLE                         R19 R17 R18
      299 GETTABLEKS                       R18 R15 K55 ["HttpGet"]
      301 GETTABLEKS                       R20 R15 K55 ["HttpGet"]
      303 GETTABLE                         R19 R16 R20
      304 SETTABLE                         R19 R17 R18
      305 MOVE                             R18 R12
      306 CALL                             R18 0 1
      307 JUMPIFNOT                        R18 ; [+24]
      308 GETTABLEKS                       R18 R15 K56 ["StartMultiPlayerAgents"]
      310 GETTABLEKS                       R20 R15 K56 ["StartMultiPlayerAgents"]
      312 GETTABLE                         R19 R16 R20
      313 SETTABLE                         R19 R17 R18
      314 GETTABLEKS                       R18 R15 K57 ["StopMultiPlayerAgents"]
      316 GETTABLEKS                       R20 R15 K57 ["StopMultiPlayerAgents"]
      318 GETTABLE                         R19 R16 R20
      319 SETTABLE                         R19 R17 R18
      320 GETTABLEKS                       R18 R15 K58 ["MultiPlayerAgentsCommunication"]
      322 GETTABLEKS                       R20 R15 K58 ["MultiPlayerAgentsCommunication"]
      324 GETTABLE                         R19 R16 R20
      325 SETTABLE                         R19 R17 R18
      326 GETTABLEKS                       R18 R15 K59 ["WaitForMultiPlayerAgentsCommunication"]
      328 GETTABLEKS                       R20 R15 K59 ["WaitForMultiPlayerAgentsCommunication"]
      330 GETTABLE                         R19 R16 R20
      331 SETTABLE                         R19 R17 R18
      332 MOVE                             R18 R8
      333 CALL                             R18 0 1
      334 JUMPIFNOT                        R18 ; [+13]
      335 GETTABLEKS                       R18 R15 K60 ["AssetInsert"]
      337 GETTABLEKS                       R20 R15 K60 ["AssetInsert"]
      339 GETTABLE                         R19 R16 R20
      340 SETTABLE                         R19 R17 R18
      341 GETTABLEKS                       R18 R15 K61 ["AssetSearch"]
      343 GETTABLEKS                       R20 R15 K61 ["AssetSearch"]
      345 GETTABLE                         R19 R16 R20
      346 SETTABLE                         R19 R17 R18
      347 JUMP                             ; [+15]
      348 MOVE                             R18 R9
      349 CALL                             R18 0 1
      350 JUMPIF                           R18 ; [+12]
      351 GETTABLEKS                       R18 R15 K62 ["CreatorStoreSearch"]
      353 GETTABLEKS                       R20 R15 K62 ["CreatorStoreSearch"]
      355 GETTABLE                         R19 R16 R20
      356 SETTABLE                         R19 R17 R18
      357 GETTABLEKS                       R18 R15 K63 ["CreatorStoreInsert"]
      359 GETTABLEKS                       R20 R15 K63 ["CreatorStoreInsert"]
      361 GETTABLE                         R19 R16 R20
      362 SETTABLE                         R19 R17 R18
      363 MOVE                             R18 R13
      364 CALL                             R18 0 1
      365 JUMPIFNOT                        R18 ; [+6]
      366 GETTABLEKS                       R18 R15 K64 ["GetStudioState"]
      368 GETTABLEKS                       R20 R15 K64 ["GetStudioState"]
      370 GETTABLE                         R19 R16 R20
      371 SETTABLE                         R19 R17 R18
      372 NEWTABLE                         R18 4 0
      374 GETTABLEKS                       R19 R15 K65 ["ScreenCapture"]
      376 GETTABLEKS                       R21 R15 K65 ["ScreenCapture"]
      378 GETTABLE                         R20 R16 R21
      379 SETTABLE                         R20 R18 R19
      380 GETTABLEKS                       R19 R15 K66 ["UploadImage"]
      382 MOVE                             R21 R3
      383 CALL                             R21 0 1
      384 JUMPIFNOT                        R21 ; [+4]
      385 GETTABLEKS                       R21 R15 K66 ["UploadImage"]
      387 GETTABLE                         R20 R16 R21
      388 JUMP                             ; [+1]
      389 LOADNIL                          R20
      390 SETTABLE                         R20 R18 R19
      391 GETTABLEKS                       R19 R15 K62 ["CreatorStoreSearch"]
      393 MOVE                             R21 R9
      394 CALL                             R21 0 1
      395 JUMPIFNOT                        R21 ; [+4]
      396 GETTABLEKS                       R21 R15 K62 ["CreatorStoreSearch"]
      398 GETTABLE                         R20 R16 R21
      399 JUMP                             ; [+1]
      400 LOADNIL                          R20
      401 SETTABLE                         R20 R18 R19
      402 GETTABLEKS                       R19 R15 K63 ["CreatorStoreInsert"]
      404 MOVE                             R21 R9
      405 CALL                             R21 0 1
      406 JUMPIFNOT                        R21 ; [+4]
      407 GETTABLEKS                       R21 R15 K63 ["CreatorStoreInsert"]
      409 GETTABLE                         R20 R16 R21
      410 JUMP                             ; [+1]
      411 LOADNIL                          R20
      412 SETTABLE                         R20 R18 R19
      413 NEWTABLE                         R19 1 0
      415 GETTABLEKS                       R20 R2 K67 ["FeatureNames"]
      417 GETTABLEKS                       R20 R20 K68 ["NewAssetToolSet"]
      419 NEWTABLE                         R21 2 0
      421 GETTABLEKS                       R22 R15 K60 ["AssetInsert"]
      423 MOVE                             R24 R9
      424 CALL                             R24 0 1
      425 JUMPIFNOT                        R24 ; [+7]
      426 MOVE                             R24 R8
      427 CALL                             R24 0 1
      428 JUMPIF                           R24 ; [+4]
      429 GETTABLEKS                       R24 R15 K60 ["AssetInsert"]
      431 GETTABLE                         R23 R16 R24
      432 JUMP                             ; [+1]
      433 LOADNIL                          R23
      434 SETTABLE                         R23 R21 R22
      435 GETTABLEKS                       R22 R15 K61 ["AssetSearch"]
      437 MOVE                             R24 R9
      438 CALL                             R24 0 1
      439 JUMPIFNOT                        R24 ; [+7]
      440 MOVE                             R24 R8
      441 CALL                             R24 0 1
      442 JUMPIF                           R24 ; [+4]
      443 GETTABLEKS                       R24 R15 K61 ["AssetSearch"]
      445 GETTABLE                         R23 R16 R24
      446 JUMP                             ; [+1]
      447 LOADNIL                          R23
      448 SETTABLE                         R23 R21 R22
      449 SETTABLE                         R21 R19 R20
      450 NEWTABLE                         R20 1 0
      452 GETTABLEKS                       R21 R14 K69 ["Agent"]
      454 NEWTABLE                         R22 0 29
      456 GETTABLEKS                       R23 R15 K30 ["ExecuteLuau"]
      458 GETTABLEKS                       R24 R15 K31 ["FileSearch"]
      460 GETTABLEKS                       R25 R15 K32 ["GameTree"]
      462 GETTABLEKS                       R26 R15 K33 ["GrepSearch"]
      464 GETTABLEKS                       R27 R15 K63 ["CreatorStoreInsert"]
      466 GETTABLEKS                       R28 R15 K62 ["CreatorStoreSearch"]
      468 GETTABLEKS                       R29 R15 K60 ["AssetInsert"]
      470 GETTABLEKS                       R30 R15 K61 ["AssetSearch"]
      472 GETTABLEKS                       R31 R15 K34 ["InspectInstance"]
      474 GETTABLEKS                       R32 R15 K35 ["MaterialGen"]
      476 GETTABLEKS                       R33 R15 K37 ["MeshGen"]
      478 GETTABLEKS                       R34 R15 K38 ["MultiEdit"]
      480 GETTABLEKS                       R35 R15 K39 ["ReadFile"]
      482 GETTABLEKS                       R36 R15 K40 ["PrimitiveGen"]
      484 GETTABLEKS                       R37 R15 K54 ["Skill"]
      486 GETTABLEKS                       R38 R15 K44 ["Subagent"]
      488 SETLIST                          R22 R23 16 [1]
      490 GETTABLEKS                       R23 R15 K65 ["ScreenCapture"]
      492 GETTABLEKS                       R24 R15 K66 ["UploadImage"]
      494 GETTABLEKS                       R25 R15 K56 ["StartMultiPlayerAgents"]
      496 GETTABLEKS                       R26 R15 K57 ["StopMultiPlayerAgents"]
      498 GETTABLEKS                       R27 R15 K58 ["MultiPlayerAgentsCommunication"]
      500 GETTABLEKS                       R28 R15 K59 ["WaitForMultiPlayerAgentsCommunication"]
      502 GETTABLEKS                       R29 R15 K55 ["HttpGet"]
      504 GETTABLEKS                       R30 R15 K48 ["FromHistory"]
      506 GETTABLEKS                       R31 R15 K49 ["StartStopPlay"]
      508 GETTABLEKS                       R32 R15 K50 ["GetConsoleOutput"]
      510 GETTABLEKS                       R33 R15 K51 ["UserKeyboardInput"]
      512 GETTABLEKS                       R34 R15 K52 ["UserMouseInput"]
      514 GETTABLEKS                       R35 R15 K53 ["CharacterNavigation"]
      516 SETLIST                          R22 R23 13 [17]
      518 SETTABLE                         R22 R20 R21
      519 MOVE                             R21 R13
      520 CALL                             R21 0 1
      521 JUMPIFNOT                        R21 ; [+10]
      522 GETTABLEKS                       R23 R14 K69 ["Agent"]
      524 GETTABLE                         R22 R20 R23
      525 GETTABLEKS                       R23 R15 K64 ["GetStudioState"]
      527 FASTCALL2                        TABLE_INSERT R22 R23 ; [+3]
      529 GETIMPORT                        R21 K72 [table.insert]
      531 CALL                             R21 2 0
      532 MOVE                             R21 R6
      533 CALL                             R21 0 1
      534 JUMPIFNOT                        R21 ; [+10]
      535 GETTABLEKS                       R23 R14 K69 ["Agent"]
      537 GETTABLE                         R22 R20 R23
      538 GETTABLEKS                       R23 R15 K42 ["QuestionAnswer"]
      540 FASTCALL2                        TABLE_INSERT R22 R23 ; [+3]
      542 GETIMPORT                        R21 K72 [table.insert]
      544 CALL                             R21 2 0
      545 GETTABLEKS                       R23 R14 K69 ["Agent"]
      547 GETTABLE                         R22 R20 R23
      548 GETTABLEKS                       R23 R15 K43 ["StoreImage"]
      550 FASTCALL2                        TABLE_INSERT R22 R23 ; [+3]
      552 GETIMPORT                        R21 K72 [table.insert]
      554 CALL                             R21 2 0
      555 MOVE                             R21 R11
      556 CALL                             R21 0 1
      557 JUMPIFNOT                        R21 ; [+10]
      558 GETTABLEKS                       R23 R14 K69 ["Agent"]
      560 GETTABLE                         R22 R20 R23
      561 GETTABLEKS                       R23 R15 K36 ["AnimationGen"]
      563 FASTCALL2                        TABLE_INSERT R22 R23 ; [+3]
      565 GETIMPORT                        R21 K72 [table.insert]
      567 CALL                             R21 2 0
      568 MOVE                             R21 R5
      569 CALL                             R21 0 1
      570 JUMPIFNOT                        R21 ; [+13]
      571 MOVE                             R21 R4
      572 CALL                             R21 0 1
      573 JUMPIFNOT                        R21 ; [+10]
      574 GETTABLEKS                       R23 R14 K69 ["Agent"]
      576 GETTABLE                         R22 R20 R23
      577 GETTABLEKS                       R23 R15 K41 ["WaitJobFinished"]
      579 FASTCALL2                        TABLE_INSERT R22 R23 ; [+3]
      581 GETIMPORT                        R21 K72 [table.insert]
      583 CALL                             R21 2 0
      584 MOVE                             R21 R7
      585 CALL                             R21 0 1
      586 JUMPIFNOT                        R21 ; [+53]
      587 GETTABLEKS                       R23 R14 K69 ["Agent"]
      589 GETTABLE                         R22 R20 R23
      590 GETTABLEKS                       R23 R15 K46 ["CompleteTodoItems"]
      592 FASTCALL2                        TABLE_INSERT R22 R23 ; [+3]
      594 GETIMPORT                        R21 K72 [table.insert]
      596 CALL                             R21 2 0
      597 MOVE                             R21 R10
      598 CALL                             R21 0 1
      599 JUMPIFNOT                        R21 ; [+10]
      600 GETTABLEKS                       R23 R14 K69 ["Agent"]
      602 GETTABLE                         R22 R20 R23
      603 GETTABLEKS                       R23 R15 K47 ["UpdatePlan"]
      605 FASTCALL2                        TABLE_INSERT R22 R23 ; [+3]
      607 GETIMPORT                        R21 K72 [table.insert]
      609 CALL                             R21 2 0
      610 GETTABLEKS                       R21 R14 K73 ["Plan"]
      612 NEWTABLE                         R22 0 9
      614 GETTABLEKS                       R23 R15 K39 ["ReadFile"]
      616 GETTABLEKS                       R24 R15 K31 ["FileSearch"]
      618 GETTABLEKS                       R25 R15 K33 ["GrepSearch"]
      620 GETTABLEKS                       R26 R15 K32 ["GameTree"]
      622 GETTABLEKS                       R27 R15 K34 ["InspectInstance"]
      624 GETTABLEKS                       R28 R15 K65 ["ScreenCapture"]
      626 GETTABLEKS                       R29 R15 K42 ["QuestionAnswer"]
      628 GETTABLEKS                       R30 R15 K45 ["FinalizePlan"]
      630 MOVE                             R32 R10
      631 CALL                             R32 0 1
      632 JUMPIFNOT                        R32 ; [+3]
      633 GETTABLEKS                       R31 R15 K47 ["UpdatePlan"]
      635 JUMP                             ; [+1]
      636 LOADNIL                          R31
      637 SETLIST                          R22 R23 9 [1]
      639 SETTABLE                         R22 R20 R21
      640 NEWTABLE                         R21 0 15
      642 GETTABLEKS                       R22 R15 K30 ["ExecuteLuau"]
      644 GETTABLEKS                       R23 R15 K31 ["FileSearch"]
      646 GETTABLEKS                       R24 R15 K32 ["GameTree"]
      648 GETTABLEKS                       R25 R15 K33 ["GrepSearch"]
      650 GETTABLEKS                       R26 R15 K34 ["InspectInstance"]
      652 GETTABLEKS                       R27 R15 K39 ["ReadFile"]
      654 GETTABLEKS                       R28 R15 K54 ["Skill"]
      656 GETTABLEKS                       R29 R15 K44 ["Subagent"]
      658 GETTABLEKS                       R30 R15 K65 ["ScreenCapture"]
      660 GETTABLEKS                       R31 R15 K50 ["GetConsoleOutput"]
      662 GETTABLEKS                       R32 R15 K51 ["UserKeyboardInput"]
      664 GETTABLEKS                       R33 R15 K52 ["UserMouseInput"]
      666 GETTABLEKS                       R34 R15 K53 ["CharacterNavigation"]
      668 GETTABLEKS                       R35 R15 K58 ["MultiPlayerAgentsCommunication"]
      670 GETTABLEKS                       R36 R15 K59 ["WaitForMultiPlayerAgentsCommunication"]
      672 SETLIST                          R21 R22 15 [1]
      674 MOVE                             R22 R13
      675 CALL                             R22 0 1
      676 JUMPIFNOT                        R22 ; [+8]
      677 GETTABLEKS                       R24 R15 K64 ["GetStudioState"]
      679 FASTCALL2                        TABLE_INSERT R21 R24 ; [+4]
      681 MOVE                             R23 R21
      682 GETIMPORT                        R22 K72 [table.insert]
      684 CALL                             R22 2 0
      685 DUPTABLE                         R22 K79 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools"}]
      686 SETTABLEKS                       R17 R22 K74 ["DefaultTools"]
      688 SETTABLEKS                       R18 R22 K75 ["ExperimentalTools"]
      690 SETTABLEKS                       R19 R22 K76 ["ExperimentFeatureTools"]
      692 SETTABLEKS                       R20 R22 K77 ["AssistantModeToolsAllowlist"]
      694 SETTABLEKS                       R21 R22 K78 ["MultiPlayerTestTools"]
      696 RETURN                           R22 1
