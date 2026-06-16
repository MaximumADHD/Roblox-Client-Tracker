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
       33 GETTABLEKS                       R4 R4 K14 ["FFlagProceduralModel"]
       35 GETTABLEKS                       R5 R1 K11 ["Flags"]
       37 GETTABLEKS                       R5 R5 K12 ["Shared"]
       39 GETTABLEKS                       R5 R5 K15 ["FFlagAssistantQuestionAnswerTool"]
       41 GETTABLEKS                       R6 R1 K11 ["Flags"]
       43 GETTABLEKS                       R6 R6 K12 ["Shared"]
       45 GETTABLEKS                       R6 R6 K16 ["FFlagAssistantPlanMode"]
       47 GETTABLEKS                       R7 R1 K11 ["Flags"]
       49 GETTABLEKS                       R7 R7 K12 ["Shared"]
       51 GETTABLEKS                       R7 R7 K17 ["FFlagAssistantAssetSearchInsertTool"]
       53 GETTABLEKS                       R8 R1 K11 ["Flags"]
       55 GETTABLEKS                       R8 R8 K12 ["Shared"]
       57 GETTABLEKS                       R8 R8 K18 ["FFlagAssistantAssetSearchInsertToolABTest"]
       59 GETTABLEKS                       R9 R1 K11 ["Flags"]
       61 GETTABLEKS                       R9 R9 K12 ["Shared"]
       63 GETTABLEKS                       R9 R9 K19 ["FFlagAssistantMarkdownPlanMode"]
       65 GETTABLEKS                       R10 R1 K11 ["Flags"]
       67 GETTABLEKS                       R10 R10 K12 ["Shared"]
       69 GETTABLEKS                       R10 R10 K20 ["FFlagAssistantAnimationGenTool"]
       71 GETTABLEKS                       R11 R1 K11 ["Flags"]
       73 GETTABLEKS                       R11 R11 K12 ["Shared"]
       75 GETTABLEKS                       R11 R11 K21 ["FFlagAssistantMultiPlayerAgents"]
       77 GETTABLEKS                       R12 R1 K11 ["Flags"]
       79 GETTABLEKS                       R12 R12 K12 ["Shared"]
       81 GETTABLEKS                       R12 R12 K22 ["FFlagAssistantGetStudioState"]
       83 GETTABLEKS                       R13 R1 K23 ["Types"]
       85 GETTABLEKS                       R13 R13 K24 ["AssistantMode"]
       87 GETTABLEKS                       R14 R1 K25 ["Tools"]
       89 GETTABLEKS                       R14 R14 K26 ["ToolTypes"]
       91 GETTABLEKS                       R14 R14 K27 ["ToolNames"]
       93 GETTABLEKS                       R15 R1 K25 ["Tools"]
       95 GETTABLEKS                       R15 R15 K28 ["BuiltinTools"]
       97 NEWTABLE                         R16 32 0
       99 GETTABLEKS                       R17 R14 K29 ["ExecuteLuau"]
      101 GETTABLEKS                       R19 R14 K29 ["ExecuteLuau"]
      103 GETTABLE                         R18 R15 R19
      104 SETTABLE                         R18 R16 R17
      105 GETTABLEKS                       R17 R14 K30 ["FileSearch"]
      107 GETTABLEKS                       R19 R14 K30 ["FileSearch"]
      109 GETTABLE                         R18 R15 R19
      110 SETTABLE                         R18 R16 R17
      111 GETTABLEKS                       R17 R14 K31 ["GameTree"]
      113 GETTABLEKS                       R19 R14 K31 ["GameTree"]
      115 GETTABLE                         R18 R15 R19
      116 SETTABLE                         R18 R16 R17
      117 GETTABLEKS                       R17 R14 K32 ["GrepSearch"]
      119 GETTABLEKS                       R19 R14 K32 ["GrepSearch"]
      121 GETTABLE                         R18 R15 R19
      122 SETTABLE                         R18 R16 R17
      123 GETTABLEKS                       R17 R14 K33 ["InspectInstance"]
      125 GETTABLEKS                       R19 R14 K33 ["InspectInstance"]
      127 GETTABLE                         R18 R15 R19
      128 SETTABLE                         R18 R16 R17
      129 GETTABLEKS                       R17 R14 K34 ["MaterialGen"]
      131 GETTABLEKS                       R19 R14 K34 ["MaterialGen"]
      133 GETTABLE                         R18 R15 R19
      134 SETTABLE                         R18 R16 R17
      135 GETTABLEKS                       R17 R14 K35 ["AnimationGen"]
      137 MOVE                             R19 R10
      138 CALL                             R19 0 1
      139 JUMPIFNOT                        R19 ; [+4]
      140 GETTABLEKS                       R19 R14 K35 ["AnimationGen"]
      142 GETTABLE                         R18 R15 R19
      143 JUMP                             ; [+1]
      144 LOADNIL                          R18
      145 SETTABLE                         R18 R16 R17
      146 GETTABLEKS                       R17 R14 K36 ["MeshGen"]
      148 GETTABLEKS                       R19 R14 K36 ["MeshGen"]
      150 GETTABLE                         R18 R15 R19
      151 SETTABLE                         R18 R16 R17
      152 GETTABLEKS                       R17 R14 K37 ["MultiEdit"]
      154 GETTABLEKS                       R19 R14 K37 ["MultiEdit"]
      156 GETTABLE                         R18 R15 R19
      157 SETTABLE                         R18 R16 R17
      158 GETTABLEKS                       R17 R14 K38 ["ReadFile"]
      160 GETTABLEKS                       R19 R14 K38 ["ReadFile"]
      162 GETTABLE                         R18 R15 R19
      163 SETTABLE                         R18 R16 R17
      164 GETTABLEKS                       R17 R14 K39 ["PrimitiveGen"]
      166 MOVE                             R19 R4
      167 CALL                             R19 0 1
      168 JUMPIFNOT                        R19 ; [+4]
      169 GETTABLEKS                       R19 R14 K39 ["PrimitiveGen"]
      171 GETTABLE                         R18 R15 R19
      172 JUMP                             ; [+1]
      173 LOADNIL                          R18
      174 SETTABLE                         R18 R16 R17
      175 GETTABLEKS                       R17 R14 K40 ["WaitJobFinished"]
      177 MOVE                             R19 R4
      178 CALL                             R19 0 1
      179 JUMPIFNOT                        R19 ; [+4]
      180 GETTABLEKS                       R19 R14 K40 ["WaitJobFinished"]
      182 GETTABLE                         R18 R15 R19
      183 JUMP                             ; [+1]
      184 LOADNIL                          R18
      185 SETTABLE                         R18 R16 R17
      186 GETTABLEKS                       R17 R14 K41 ["QuestionAnswer"]
      188 MOVE                             R19 R5
      189 CALL                             R19 0 1
      190 JUMPIFNOT                        R19 ; [+4]
      191 GETTABLEKS                       R19 R14 K41 ["QuestionAnswer"]
      193 GETTABLE                         R18 R15 R19
      194 JUMP                             ; [+1]
      195 LOADNIL                          R18
      196 SETTABLE                         R18 R16 R17
      197 GETTABLEKS                       R17 R14 K42 ["StoreImage"]
      199 GETTABLEKS                       R19 R14 K42 ["StoreImage"]
      201 GETTABLE                         R18 R15 R19
      202 SETTABLE                         R18 R16 R17
      203 GETTABLEKS                       R17 R14 K43 ["Subagent"]
      205 GETTABLEKS                       R19 R14 K43 ["Subagent"]
      207 GETTABLE                         R18 R15 R19
      208 SETTABLE                         R18 R16 R17
      209 GETTABLEKS                       R17 R14 K44 ["FinalizePlan"]
      211 MOVE                             R19 R6
      212 CALL                             R19 0 1
      213 JUMPIFNOT                        R19 ; [+4]
      214 GETTABLEKS                       R19 R14 K44 ["FinalizePlan"]
      216 GETTABLE                         R18 R15 R19
      217 JUMP                             ; [+1]
      218 LOADNIL                          R18
      219 SETTABLE                         R18 R16 R17
      220 GETTABLEKS                       R17 R14 K45 ["CompleteTodoItems"]
      222 MOVE                             R19 R6
      223 CALL                             R19 0 1
      224 JUMPIFNOT                        R19 ; [+4]
      225 GETTABLEKS                       R19 R14 K45 ["CompleteTodoItems"]
      227 GETTABLE                         R18 R15 R19
      228 JUMP                             ; [+1]
      229 LOADNIL                          R18
      230 SETTABLE                         R18 R16 R17
      231 GETTABLEKS                       R17 R14 K46 ["UpdatePlan"]
      233 MOVE                             R19 R6
      234 CALL                             R19 0 1
      235 JUMPIFNOT                        R19 ; [+7]
      236 MOVE                             R19 R9
      237 CALL                             R19 0 1
      238 JUMPIFNOT                        R19 ; [+4]
      239 GETTABLEKS                       R19 R14 K46 ["UpdatePlan"]
      241 GETTABLE                         R18 R15 R19
      242 JUMP                             ; [+1]
      243 LOADNIL                          R18
      244 SETTABLE                         R18 R16 R17
      245 GETTABLEKS                       R17 R14 K47 ["FromHistory"]
      247 GETTABLEKS                       R19 R14 K47 ["FromHistory"]
      249 GETTABLE                         R18 R15 R19
      250 SETTABLE                         R18 R16 R17
      251 GETTABLEKS                       R17 R14 K48 ["StartStopPlay"]
      253 GETTABLEKS                       R19 R14 K48 ["StartStopPlay"]
      255 GETTABLE                         R18 R15 R19
      256 SETTABLE                         R18 R16 R17
      257 GETTABLEKS                       R17 R14 K49 ["GetConsoleOutput"]
      259 GETTABLEKS                       R19 R14 K49 ["GetConsoleOutput"]
      261 GETTABLE                         R18 R15 R19
      262 SETTABLE                         R18 R16 R17
      263 GETTABLEKS                       R17 R14 K50 ["UserKeyboardInput"]
      265 GETTABLEKS                       R19 R14 K50 ["UserKeyboardInput"]
      267 GETTABLE                         R18 R15 R19
      268 SETTABLE                         R18 R16 R17
      269 GETTABLEKS                       R17 R14 K51 ["UserMouseInput"]
      271 GETTABLEKS                       R19 R14 K51 ["UserMouseInput"]
      273 GETTABLE                         R18 R15 R19
      274 SETTABLE                         R18 R16 R17
      275 GETTABLEKS                       R17 R14 K52 ["CharacterNavigation"]
      277 GETTABLEKS                       R19 R14 K52 ["CharacterNavigation"]
      279 GETTABLE                         R18 R15 R19
      280 SETTABLE                         R18 R16 R17
      281 GETTABLEKS                       R17 R14 K53 ["Skill"]
      283 GETTABLEKS                       R19 R14 K53 ["Skill"]
      285 GETTABLE                         R18 R15 R19
      286 SETTABLE                         R18 R16 R17
      287 GETTABLEKS                       R17 R14 K54 ["HttpGet"]
      289 GETTABLEKS                       R19 R14 K54 ["HttpGet"]
      291 GETTABLE                         R18 R15 R19
      292 SETTABLE                         R18 R16 R17
      293 MOVE                             R17 R11
      294 CALL                             R17 0 1
      295 JUMPIFNOT                        R17 ; [+24]
      296 GETTABLEKS                       R17 R14 K55 ["StartMultiPlayerAgents"]
      298 GETTABLEKS                       R19 R14 K55 ["StartMultiPlayerAgents"]
      300 GETTABLE                         R18 R15 R19
      301 SETTABLE                         R18 R16 R17
      302 GETTABLEKS                       R17 R14 K56 ["StopMultiPlayerAgents"]
      304 GETTABLEKS                       R19 R14 K56 ["StopMultiPlayerAgents"]
      306 GETTABLE                         R18 R15 R19
      307 SETTABLE                         R18 R16 R17
      308 GETTABLEKS                       R17 R14 K57 ["MultiPlayerAgentsCommunication"]
      310 GETTABLEKS                       R19 R14 K57 ["MultiPlayerAgentsCommunication"]
      312 GETTABLE                         R18 R15 R19
      313 SETTABLE                         R18 R16 R17
      314 GETTABLEKS                       R17 R14 K58 ["WaitForMultiPlayerAgentsCommunication"]
      316 GETTABLEKS                       R19 R14 K58 ["WaitForMultiPlayerAgentsCommunication"]
      318 GETTABLE                         R18 R15 R19
      319 SETTABLE                         R18 R16 R17
      320 MOVE                             R17 R7
      321 CALL                             R17 0 1
      322 JUMPIFNOT                        R17 ; [+13]
      323 GETTABLEKS                       R17 R14 K59 ["AssetInsert"]
      325 GETTABLEKS                       R19 R14 K59 ["AssetInsert"]
      327 GETTABLE                         R18 R15 R19
      328 SETTABLE                         R18 R16 R17
      329 GETTABLEKS                       R17 R14 K60 ["AssetSearch"]
      331 GETTABLEKS                       R19 R14 K60 ["AssetSearch"]
      333 GETTABLE                         R18 R15 R19
      334 SETTABLE                         R18 R16 R17
      335 JUMP                             ; [+15]
      336 MOVE                             R17 R8
      337 CALL                             R17 0 1
      338 JUMPIF                           R17 ; [+12]
      339 GETTABLEKS                       R17 R14 K61 ["CreatorStoreSearch"]
      341 GETTABLEKS                       R19 R14 K61 ["CreatorStoreSearch"]
      343 GETTABLE                         R18 R15 R19
      344 SETTABLE                         R18 R16 R17
      345 GETTABLEKS                       R17 R14 K62 ["CreatorStoreInsert"]
      347 GETTABLEKS                       R19 R14 K62 ["CreatorStoreInsert"]
      349 GETTABLE                         R18 R15 R19
      350 SETTABLE                         R18 R16 R17
      351 MOVE                             R17 R12
      352 CALL                             R17 0 1
      353 JUMPIFNOT                        R17 ; [+6]
      354 GETTABLEKS                       R17 R14 K63 ["GetStudioState"]
      356 GETTABLEKS                       R19 R14 K63 ["GetStudioState"]
      358 GETTABLE                         R18 R15 R19
      359 SETTABLE                         R18 R16 R17
      360 NEWTABLE                         R17 4 0
      362 GETTABLEKS                       R18 R14 K64 ["ScreenCapture"]
      364 GETTABLEKS                       R20 R14 K64 ["ScreenCapture"]
      366 GETTABLE                         R19 R15 R20
      367 SETTABLE                         R19 R17 R18
      368 GETTABLEKS                       R18 R14 K65 ["UploadImage"]
      370 MOVE                             R20 R3
      371 CALL                             R20 0 1
      372 JUMPIFNOT                        R20 ; [+4]
      373 GETTABLEKS                       R20 R14 K65 ["UploadImage"]
      375 GETTABLE                         R19 R15 R20
      376 JUMP                             ; [+1]
      377 LOADNIL                          R19
      378 SETTABLE                         R19 R17 R18
      379 GETTABLEKS                       R18 R14 K61 ["CreatorStoreSearch"]
      381 MOVE                             R20 R8
      382 CALL                             R20 0 1
      383 JUMPIFNOT                        R20 ; [+4]
      384 GETTABLEKS                       R20 R14 K61 ["CreatorStoreSearch"]
      386 GETTABLE                         R19 R15 R20
      387 JUMP                             ; [+1]
      388 LOADNIL                          R19
      389 SETTABLE                         R19 R17 R18
      390 GETTABLEKS                       R18 R14 K62 ["CreatorStoreInsert"]
      392 MOVE                             R20 R8
      393 CALL                             R20 0 1
      394 JUMPIFNOT                        R20 ; [+4]
      395 GETTABLEKS                       R20 R14 K62 ["CreatorStoreInsert"]
      397 GETTABLE                         R19 R15 R20
      398 JUMP                             ; [+1]
      399 LOADNIL                          R19
      400 SETTABLE                         R19 R17 R18
      401 NEWTABLE                         R18 1 0
      403 GETTABLEKS                       R19 R2 K66 ["FeatureNames"]
      405 GETTABLEKS                       R19 R19 K67 ["NewAssetToolSet"]
      407 NEWTABLE                         R20 2 0
      409 GETTABLEKS                       R21 R14 K59 ["AssetInsert"]
      411 MOVE                             R23 R8
      412 CALL                             R23 0 1
      413 JUMPIFNOT                        R23 ; [+7]
      414 MOVE                             R23 R7
      415 CALL                             R23 0 1
      416 JUMPIF                           R23 ; [+4]
      417 GETTABLEKS                       R23 R14 K59 ["AssetInsert"]
      419 GETTABLE                         R22 R15 R23
      420 JUMP                             ; [+1]
      421 LOADNIL                          R22
      422 SETTABLE                         R22 R20 R21
      423 GETTABLEKS                       R21 R14 K60 ["AssetSearch"]
      425 MOVE                             R23 R8
      426 CALL                             R23 0 1
      427 JUMPIFNOT                        R23 ; [+7]
      428 MOVE                             R23 R7
      429 CALL                             R23 0 1
      430 JUMPIF                           R23 ; [+4]
      431 GETTABLEKS                       R23 R14 K60 ["AssetSearch"]
      433 GETTABLE                         R22 R15 R23
      434 JUMP                             ; [+1]
      435 LOADNIL                          R22
      436 SETTABLE                         R22 R20 R21
      437 SETTABLE                         R20 R18 R19
      438 NEWTABLE                         R19 1 0
      440 GETTABLEKS                       R20 R13 K68 ["Agent"]
      442 NEWTABLE                         R21 0 29
      444 GETTABLEKS                       R22 R14 K29 ["ExecuteLuau"]
      446 GETTABLEKS                       R23 R14 K30 ["FileSearch"]
      448 GETTABLEKS                       R24 R14 K31 ["GameTree"]
      450 GETTABLEKS                       R25 R14 K32 ["GrepSearch"]
      452 GETTABLEKS                       R26 R14 K62 ["CreatorStoreInsert"]
      454 GETTABLEKS                       R27 R14 K61 ["CreatorStoreSearch"]
      456 GETTABLEKS                       R28 R14 K59 ["AssetInsert"]
      458 GETTABLEKS                       R29 R14 K60 ["AssetSearch"]
      460 GETTABLEKS                       R30 R14 K33 ["InspectInstance"]
      462 GETTABLEKS                       R31 R14 K34 ["MaterialGen"]
      464 GETTABLEKS                       R32 R14 K36 ["MeshGen"]
      466 GETTABLEKS                       R33 R14 K37 ["MultiEdit"]
      468 GETTABLEKS                       R34 R14 K38 ["ReadFile"]
      470 GETTABLEKS                       R35 R14 K39 ["PrimitiveGen"]
      472 GETTABLEKS                       R36 R14 K53 ["Skill"]
      474 GETTABLEKS                       R37 R14 K43 ["Subagent"]
      476 SETLIST                          R21 R22 16 [1]
      478 GETTABLEKS                       R22 R14 K64 ["ScreenCapture"]
      480 GETTABLEKS                       R23 R14 K65 ["UploadImage"]
      482 GETTABLEKS                       R24 R14 K55 ["StartMultiPlayerAgents"]
      484 GETTABLEKS                       R25 R14 K56 ["StopMultiPlayerAgents"]
      486 GETTABLEKS                       R26 R14 K57 ["MultiPlayerAgentsCommunication"]
      488 GETTABLEKS                       R27 R14 K58 ["WaitForMultiPlayerAgentsCommunication"]
      490 GETTABLEKS                       R28 R14 K54 ["HttpGet"]
      492 GETTABLEKS                       R29 R14 K47 ["FromHistory"]
      494 GETTABLEKS                       R30 R14 K48 ["StartStopPlay"]
      496 GETTABLEKS                       R31 R14 K49 ["GetConsoleOutput"]
      498 GETTABLEKS                       R32 R14 K50 ["UserKeyboardInput"]
      500 GETTABLEKS                       R33 R14 K51 ["UserMouseInput"]
      502 GETTABLEKS                       R34 R14 K52 ["CharacterNavigation"]
      504 SETLIST                          R21 R22 13 [17]
      506 SETTABLE                         R21 R19 R20
      507 MOVE                             R20 R12
      508 CALL                             R20 0 1
      509 JUMPIFNOT                        R20 ; [+10]
      510 GETTABLEKS                       R22 R13 K68 ["Agent"]
      512 GETTABLE                         R21 R19 R22
      513 GETTABLEKS                       R22 R14 K63 ["GetStudioState"]
      515 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      517 GETIMPORT                        R20 K71 [table.insert]
      519 CALL                             R20 2 0
      520 MOVE                             R20 R5
      521 CALL                             R20 0 1
      522 JUMPIFNOT                        R20 ; [+10]
      523 GETTABLEKS                       R22 R13 K68 ["Agent"]
      525 GETTABLE                         R21 R19 R22
      526 GETTABLEKS                       R22 R14 K41 ["QuestionAnswer"]
      528 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      530 GETIMPORT                        R20 K71 [table.insert]
      532 CALL                             R20 2 0
      533 GETTABLEKS                       R22 R13 K68 ["Agent"]
      535 GETTABLE                         R21 R19 R22
      536 GETTABLEKS                       R22 R14 K42 ["StoreImage"]
      538 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      540 GETIMPORT                        R20 K71 [table.insert]
      542 CALL                             R20 2 0
      543 MOVE                             R20 R10
      544 CALL                             R20 0 1
      545 JUMPIFNOT                        R20 ; [+10]
      546 GETTABLEKS                       R22 R13 K68 ["Agent"]
      548 GETTABLE                         R21 R19 R22
      549 GETTABLEKS                       R22 R14 K35 ["AnimationGen"]
      551 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      553 GETIMPORT                        R20 K71 [table.insert]
      555 CALL                             R20 2 0
      556 MOVE                             R20 R4
      557 CALL                             R20 0 1
      558 JUMPIFNOT                        R20 ; [+10]
      559 GETTABLEKS                       R22 R13 K68 ["Agent"]
      561 GETTABLE                         R21 R19 R22
      562 GETTABLEKS                       R22 R14 K40 ["WaitJobFinished"]
      564 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      566 GETIMPORT                        R20 K71 [table.insert]
      568 CALL                             R20 2 0
      569 MOVE                             R20 R6
      570 CALL                             R20 0 1
      571 JUMPIFNOT                        R20 ; [+53]
      572 GETTABLEKS                       R22 R13 K68 ["Agent"]
      574 GETTABLE                         R21 R19 R22
      575 GETTABLEKS                       R22 R14 K45 ["CompleteTodoItems"]
      577 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      579 GETIMPORT                        R20 K71 [table.insert]
      581 CALL                             R20 2 0
      582 MOVE                             R20 R9
      583 CALL                             R20 0 1
      584 JUMPIFNOT                        R20 ; [+10]
      585 GETTABLEKS                       R22 R13 K68 ["Agent"]
      587 GETTABLE                         R21 R19 R22
      588 GETTABLEKS                       R22 R14 K46 ["UpdatePlan"]
      590 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      592 GETIMPORT                        R20 K71 [table.insert]
      594 CALL                             R20 2 0
      595 GETTABLEKS                       R20 R13 K72 ["Plan"]
      597 NEWTABLE                         R21 0 9
      599 GETTABLEKS                       R22 R14 K38 ["ReadFile"]
      601 GETTABLEKS                       R23 R14 K30 ["FileSearch"]
      603 GETTABLEKS                       R24 R14 K32 ["GrepSearch"]
      605 GETTABLEKS                       R25 R14 K31 ["GameTree"]
      607 GETTABLEKS                       R26 R14 K33 ["InspectInstance"]
      609 GETTABLEKS                       R27 R14 K64 ["ScreenCapture"]
      611 GETTABLEKS                       R28 R14 K41 ["QuestionAnswer"]
      613 GETTABLEKS                       R29 R14 K44 ["FinalizePlan"]
      615 MOVE                             R31 R9
      616 CALL                             R31 0 1
      617 JUMPIFNOT                        R31 ; [+3]
      618 GETTABLEKS                       R30 R14 K46 ["UpdatePlan"]
      620 JUMP                             ; [+1]
      621 LOADNIL                          R30
      622 SETLIST                          R21 R22 9 [1]
      624 SETTABLE                         R21 R19 R20
      625 NEWTABLE                         R20 0 15
      627 GETTABLEKS                       R21 R14 K29 ["ExecuteLuau"]
      629 GETTABLEKS                       R22 R14 K30 ["FileSearch"]
      631 GETTABLEKS                       R23 R14 K31 ["GameTree"]
      633 GETTABLEKS                       R24 R14 K32 ["GrepSearch"]
      635 GETTABLEKS                       R25 R14 K33 ["InspectInstance"]
      637 GETTABLEKS                       R26 R14 K38 ["ReadFile"]
      639 GETTABLEKS                       R27 R14 K53 ["Skill"]
      641 GETTABLEKS                       R28 R14 K43 ["Subagent"]
      643 GETTABLEKS                       R29 R14 K64 ["ScreenCapture"]
      645 GETTABLEKS                       R30 R14 K49 ["GetConsoleOutput"]
      647 GETTABLEKS                       R31 R14 K50 ["UserKeyboardInput"]
      649 GETTABLEKS                       R32 R14 K51 ["UserMouseInput"]
      651 GETTABLEKS                       R33 R14 K52 ["CharacterNavigation"]
      653 GETTABLEKS                       R34 R14 K57 ["MultiPlayerAgentsCommunication"]
      655 GETTABLEKS                       R35 R14 K58 ["WaitForMultiPlayerAgentsCommunication"]
      657 SETLIST                          R20 R21 15 [1]
      659 MOVE                             R21 R12
      660 CALL                             R21 0 1
      661 JUMPIFNOT                        R21 ; [+8]
      662 GETTABLEKS                       R23 R14 K63 ["GetStudioState"]
      664 FASTCALL2                        TABLE_INSERT R20 R23 ; [+4]
      666 MOVE                             R22 R20
      667 GETIMPORT                        R21 K71 [table.insert]
      669 CALL                             R21 2 0
      670 DUPTABLE                         R21 K78 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools"}]
      671 SETTABLEKS                       R16 R21 K73 ["DefaultTools"]
      673 SETTABLEKS                       R17 R21 K74 ["ExperimentalTools"]
      675 SETTABLEKS                       R18 R21 K75 ["ExperimentFeatureTools"]
      677 SETTABLEKS                       R19 R21 K76 ["AssistantModeToolsAllowlist"]
      679 SETTABLEKS                       R20 R21 K77 ["MultiPlayerTestTools"]
      681 RETURN                           R21 1
