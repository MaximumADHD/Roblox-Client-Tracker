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
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["Types"]
       32 GETTABLEKS                       R4 R4 K13 ["AssistantMode"]
       34 GETTABLEKS                       R5 R1 K14 ["Tools"]
       36 GETTABLEKS                       R5 R5 K15 ["ToolTypes"]
       38 GETTABLEKS                       R5 R5 K16 ["ToolNames"]
       40 GETTABLEKS                       R6 R1 K14 ["Tools"]
       42 GETTABLEKS                       R6 R6 K17 ["BuiltinTools"]
       44 NEWTABLE                         R7 32 0
       46 GETTABLEKS                       R8 R5 K18 ["ExecuteLuau"]
       48 GETTABLEKS                       R10 R5 K18 ["ExecuteLuau"]
       50 GETTABLE                         R9 R6 R10
       51 SETTABLE                         R9 R7 R8
       52 GETTABLEKS                       R8 R5 K19 ["FileSearch"]
       54 GETTABLEKS                       R10 R5 K19 ["FileSearch"]
       56 GETTABLE                         R9 R6 R10
       57 SETTABLE                         R9 R7 R8
       58 GETTABLEKS                       R8 R5 K20 ["GameTree"]
       60 GETTABLEKS                       R10 R5 K20 ["GameTree"]
       62 GETTABLE                         R9 R6 R10
       63 SETTABLE                         R9 R7 R8
       64 GETTABLEKS                       R8 R5 K21 ["GrepSearch"]
       66 GETTABLEKS                       R10 R5 K21 ["GrepSearch"]
       68 GETTABLE                         R9 R6 R10
       69 SETTABLE                         R9 R7 R8
       70 GETTABLEKS                       R8 R5 K22 ["InspectInstance"]
       72 GETTABLEKS                       R10 R5 K22 ["InspectInstance"]
       74 GETTABLE                         R9 R6 R10
       75 SETTABLE                         R9 R7 R8
       76 GETTABLEKS                       R8 R5 K23 ["MaterialGen"]
       78 GETTABLEKS                       R10 R5 K23 ["MaterialGen"]
       80 GETTABLE                         R9 R6 R10
       81 SETTABLE                         R9 R7 R8
       82 GETTABLEKS                       R8 R5 K24 ["AnimationGen"]
       84 GETTABLEKS                       R10 R3 K25 ["FFlagAssistantAnimationGenTool"]
       86 JUMPIFNOT                        R10 ; [+4]
       87 GETTABLEKS                       R10 R5 K24 ["AnimationGen"]
       89 GETTABLE                         R9 R6 R10
       90 JUMP                             ; [+1]
       91 LOADNIL                          R9
       92 SETTABLE                         R9 R7 R8
       93 GETTABLEKS                       R8 R5 K26 ["AvatarAutoSetup"]
       95 GETTABLEKS                       R10 R3 K27 ["FFlagAssistantAvatarAutoSetupTool"]
       97 JUMPIFNOT                        R10 ; [+4]
       98 GETTABLEKS                       R10 R5 K26 ["AvatarAutoSetup"]
      100 GETTABLE                         R9 R6 R10
      101 JUMP                             ; [+1]
      102 LOADNIL                          R9
      103 SETTABLE                         R9 R7 R8
      104 GETTABLEKS                       R8 R5 K28 ["MeshGen"]
      106 GETTABLEKS                       R10 R5 K28 ["MeshGen"]
      108 GETTABLE                         R9 R6 R10
      109 SETTABLE                         R9 R7 R8
      110 GETTABLEKS                       R8 R5 K29 ["MultiEdit"]
      112 GETTABLEKS                       R10 R5 K29 ["MultiEdit"]
      114 GETTABLE                         R9 R6 R10
      115 SETTABLE                         R9 R7 R8
      116 GETTABLEKS                       R8 R5 K30 ["ReadFile"]
      118 GETTABLEKS                       R10 R5 K30 ["ReadFile"]
      120 GETTABLE                         R9 R6 R10
      121 SETTABLE                         R9 R7 R8
      122 GETTABLEKS                       R8 R5 K31 ["PrimitiveGen"]
      124 GETTABLEKS                       R10 R5 K31 ["PrimitiveGen"]
      126 GETTABLE                         R9 R6 R10
      127 SETTABLE                         R9 R7 R8
      128 GETTABLEKS                       R8 R5 K32 ["QuestionAnswer"]
      130 GETTABLEKS                       R10 R5 K32 ["QuestionAnswer"]
      132 GETTABLE                         R9 R6 R10
      133 SETTABLE                         R9 R7 R8
      134 GETTABLEKS                       R8 R5 K33 ["StoreImage"]
      136 GETTABLEKS                       R10 R5 K33 ["StoreImage"]
      138 GETTABLE                         R9 R6 R10
      139 SETTABLE                         R9 R7 R8
      140 GETTABLEKS                       R8 R5 K34 ["Subagent"]
      142 GETTABLEKS                       R10 R5 K34 ["Subagent"]
      144 GETTABLE                         R9 R6 R10
      145 SETTABLE                         R9 R7 R8
      146 GETTABLEKS                       R8 R5 K35 ["FinalizePlan"]
      148 GETTABLEKS                       R10 R5 K35 ["FinalizePlan"]
      150 GETTABLE                         R9 R6 R10
      151 SETTABLE                         R9 R7 R8
      152 GETTABLEKS                       R8 R5 K36 ["CompleteTodoItems"]
      154 GETTABLEKS                       R10 R5 K36 ["CompleteTodoItems"]
      156 GETTABLE                         R9 R6 R10
      157 SETTABLE                         R9 R7 R8
      158 GETTABLEKS                       R8 R5 K37 ["UpdatePlan"]
      160 GETTABLEKS                       R10 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      162 JUMPIFNOT                        R10 ; [+4]
      163 GETTABLEKS                       R10 R5 K37 ["UpdatePlan"]
      165 GETTABLE                         R9 R6 R10
      166 JUMP                             ; [+1]
      167 LOADNIL                          R9
      168 SETTABLE                         R9 R7 R8
      169 GETTABLEKS                       R8 R5 K39 ["FromHistory"]
      171 GETTABLEKS                       R10 R5 K39 ["FromHistory"]
      173 GETTABLE                         R9 R6 R10
      174 SETTABLE                         R9 R7 R8
      175 GETTABLEKS                       R8 R5 K40 ["StartStopPlay"]
      177 GETTABLEKS                       R10 R5 K40 ["StartStopPlay"]
      179 GETTABLE                         R9 R6 R10
      180 SETTABLE                         R9 R7 R8
      181 GETTABLEKS                       R8 R5 K41 ["GetConsoleOutput"]
      183 GETTABLEKS                       R10 R5 K41 ["GetConsoleOutput"]
      185 GETTABLE                         R9 R6 R10
      186 SETTABLE                         R9 R7 R8
      187 GETTABLEKS                       R8 R5 K42 ["UserKeyboardInput"]
      189 GETTABLEKS                       R10 R5 K42 ["UserKeyboardInput"]
      191 GETTABLE                         R9 R6 R10
      192 SETTABLE                         R9 R7 R8
      193 GETTABLEKS                       R8 R5 K43 ["UserMouseInput"]
      195 GETTABLEKS                       R10 R5 K43 ["UserMouseInput"]
      197 GETTABLE                         R9 R6 R10
      198 SETTABLE                         R9 R7 R8
      199 GETTABLEKS                       R8 R5 K44 ["CharacterNavigation"]
      201 GETTABLEKS                       R10 R5 K44 ["CharacterNavigation"]
      203 GETTABLE                         R9 R6 R10
      204 SETTABLE                         R9 R7 R8
      205 GETTABLEKS                       R8 R5 K45 ["Skill"]
      207 GETTABLEKS                       R10 R5 K45 ["Skill"]
      209 GETTABLE                         R9 R6 R10
      210 SETTABLE                         R9 R7 R8
      211 GETTABLEKS                       R8 R5 K46 ["HttpGet"]
      213 GETTABLEKS                       R10 R5 K46 ["HttpGet"]
      215 GETTABLE                         R9 R6 R10
      216 SETTABLE                         R9 R7 R8
      217 GETTABLEKS                       R8 R5 K47 ["CreateSkill"]
      219 GETTABLEKS                       R10 R5 K47 ["CreateSkill"]
      221 GETTABLE                         R9 R6 R10
      222 SETTABLE                         R9 R7 R8
      223 GETTABLEKS                       R8 R5 K48 ["EditSkill"]
      225 GETTABLEKS                       R10 R5 K48 ["EditSkill"]
      227 GETTABLE                         R9 R6 R10
      228 SETTABLE                         R9 R7 R8
      229 GETTABLEKS                       R8 R5 K49 ["JobWait"]
      231 GETTABLEKS                       R10 R5 K49 ["JobWait"]
      233 GETTABLE                         R9 R6 R10
      234 SETTABLE                         R9 R7 R8
      235 GETTABLEKS                       R8 R3 K50 ["FFlagAssistantMigratePrimitiveGenTool"]
      237 JUMPIFNOT                        R8 ; [+6]
      238 GETTABLEKS                       R8 R5 K51 ["JobRun"]
      240 GETTABLEKS                       R10 R5 K51 ["JobRun"]
      242 GETTABLE                         R9 R6 R10
      243 SETTABLE                         R9 R7 R8
      244 GETTABLEKS                       R8 R3 K52 ["FFlagAssistantMultiPlayerAgents"]
      246 JUMPIFNOT                        R8 ; [+24]
      247 GETTABLEKS                       R8 R5 K53 ["StartMultiPlayerAgents"]
      249 GETTABLEKS                       R10 R5 K53 ["StartMultiPlayerAgents"]
      251 GETTABLE                         R9 R6 R10
      252 SETTABLE                         R9 R7 R8
      253 GETTABLEKS                       R8 R5 K54 ["StopMultiPlayerAgents"]
      255 GETTABLEKS                       R10 R5 K54 ["StopMultiPlayerAgents"]
      257 GETTABLE                         R9 R6 R10
      258 SETTABLE                         R9 R7 R8
      259 GETTABLEKS                       R8 R5 K55 ["MultiPlayerAgentsCommunication"]
      261 GETTABLEKS                       R10 R5 K55 ["MultiPlayerAgentsCommunication"]
      263 GETTABLE                         R9 R6 R10
      264 SETTABLE                         R9 R7 R8
      265 GETTABLEKS                       R8 R5 K56 ["WaitForMultiPlayerAgentsCommunication"]
      267 GETTABLEKS                       R10 R5 K56 ["WaitForMultiPlayerAgentsCommunication"]
      269 GETTABLE                         R9 R6 R10
      270 SETTABLE                         R9 R7 R8
      271 GETTABLEKS                       R8 R3 K57 ["FFlagAssistantAssetSearchInsertTool"]
      273 JUMPIFNOT                        R8 ; [+13]
      274 GETTABLEKS                       R8 R5 K58 ["AssetInsert"]
      276 GETTABLEKS                       R10 R5 K58 ["AssetInsert"]
      278 GETTABLE                         R9 R6 R10
      279 SETTABLE                         R9 R7 R8
      280 GETTABLEKS                       R8 R5 K59 ["AssetSearch"]
      282 GETTABLEKS                       R10 R5 K59 ["AssetSearch"]
      284 GETTABLE                         R9 R6 R10
      285 SETTABLE                         R9 R7 R8
      286 JUMP                             ; [+15]
      287 GETTABLEKS                       R8 R3 K60 ["FFlagAssistantAssetSearchInsertToolABTest"]
      289 JUMPIF                           R8 ; [+12]
      290 GETTABLEKS                       R8 R5 K61 ["CreatorStoreSearch"]
      292 GETTABLEKS                       R10 R5 K61 ["CreatorStoreSearch"]
      294 GETTABLE                         R9 R6 R10
      295 SETTABLE                         R9 R7 R8
      296 GETTABLEKS                       R8 R5 K62 ["CreatorStoreInsert"]
      298 GETTABLEKS                       R10 R5 K62 ["CreatorStoreInsert"]
      300 GETTABLE                         R9 R6 R10
      301 SETTABLE                         R9 R7 R8
      302 GETTABLEKS                       R8 R3 K63 ["FFlagAssistantGetStudioState"]
      304 JUMPIFNOT                        R8 ; [+6]
      305 GETTABLEKS                       R8 R5 K64 ["GetStudioState"]
      307 GETTABLEKS                       R10 R5 K64 ["GetStudioState"]
      309 GETTABLE                         R9 R6 R10
      310 SETTABLE                         R9 R7 R8
      311 GETTABLEKS                       R8 R3 K65 ["FFlagAssistantVideoCaptureTool"]
      313 JUMPIFNOT                        R8 ; [+6]
      314 GETTABLEKS                       R8 R5 K66 ["VideoCapture"]
      316 GETTABLEKS                       R10 R5 K66 ["VideoCapture"]
      318 GETTABLE                         R9 R6 R10
      319 SETTABLE                         R9 R7 R8
      320 GETTABLEKS                       R8 R3 K67 ["FFlagUseStudioSideListTool"]
      322 JUMPIFNOT                        R8 ; [+6]
      323 GETTABLEKS                       R8 R5 K68 ["ListRobloxStudios"]
      325 GETTABLEKS                       R10 R5 K68 ["ListRobloxStudios"]
      327 GETTABLE                         R9 R6 R10
      328 SETTABLE                         R9 R7 R8
      329 GETTABLEKS                       R8 R3 K69 ["FFlagPlaytestVision"]
      331 JUMPIFNOT                        R8 ; [+6]
      332 GETTABLEKS                       R8 R5 K70 ["PlaytestLook"]
      334 GETTABLEKS                       R10 R5 K70 ["PlaytestLook"]
      336 GETTABLE                         R9 R6 R10
      337 SETTABLE                         R9 R7 R8
      338 NEWTABLE                         R8 4 0
      340 GETTABLEKS                       R9 R5 K71 ["ScreenCapture"]
      342 GETTABLEKS                       R11 R5 K71 ["ScreenCapture"]
      344 GETTABLE                         R10 R6 R11
      345 SETTABLE                         R10 R8 R9
      346 GETTABLEKS                       R9 R5 K72 ["UploadImage"]
      348 GETTABLEKS                       R11 R3 K73 ["FFlagEnableAssistantImageUpload"]
      350 JUMPIFNOT                        R11 ; [+4]
      351 GETTABLEKS                       R11 R5 K72 ["UploadImage"]
      353 GETTABLE                         R10 R6 R11
      354 JUMP                             ; [+1]
      355 LOADNIL                          R10
      356 SETTABLE                         R10 R8 R9
      357 GETTABLEKS                       R9 R5 K61 ["CreatorStoreSearch"]
      359 GETTABLEKS                       R11 R3 K60 ["FFlagAssistantAssetSearchInsertToolABTest"]
      361 JUMPIFNOT                        R11 ; [+4]
      362 GETTABLEKS                       R11 R5 K61 ["CreatorStoreSearch"]
      364 GETTABLE                         R10 R6 R11
      365 JUMP                             ; [+1]
      366 LOADNIL                          R10
      367 SETTABLE                         R10 R8 R9
      368 GETTABLEKS                       R9 R5 K62 ["CreatorStoreInsert"]
      370 GETTABLEKS                       R11 R3 K60 ["FFlagAssistantAssetSearchInsertToolABTest"]
      372 JUMPIFNOT                        R11 ; [+4]
      373 GETTABLEKS                       R11 R5 K62 ["CreatorStoreInsert"]
      375 GETTABLE                         R10 R6 R11
      376 JUMP                             ; [+1]
      377 LOADNIL                          R10
      378 SETTABLE                         R10 R8 R9
      379 NEWTABLE                         R9 1 0
      381 GETTABLEKS                       R10 R2 K74 ["FeatureNames"]
      383 GETTABLEKS                       R10 R10 K75 ["NewAssetToolSet"]
      385 NEWTABLE                         R11 2 0
      387 GETTABLEKS                       R12 R5 K58 ["AssetInsert"]
      389 GETTABLEKS                       R14 R3 K60 ["FFlagAssistantAssetSearchInsertToolABTest"]
      391 JUMPIFNOT                        R14 ; [+7]
      392 GETTABLEKS                       R14 R3 K57 ["FFlagAssistantAssetSearchInsertTool"]
      394 JUMPIF                           R14 ; [+4]
      395 GETTABLEKS                       R14 R5 K58 ["AssetInsert"]
      397 GETTABLE                         R13 R6 R14
      398 JUMP                             ; [+1]
      399 LOADNIL                          R13
      400 SETTABLE                         R13 R11 R12
      401 GETTABLEKS                       R12 R5 K59 ["AssetSearch"]
      403 GETTABLEKS                       R14 R3 K60 ["FFlagAssistantAssetSearchInsertToolABTest"]
      405 JUMPIFNOT                        R14 ; [+7]
      406 GETTABLEKS                       R14 R3 K57 ["FFlagAssistantAssetSearchInsertTool"]
      408 JUMPIF                           R14 ; [+4]
      409 GETTABLEKS                       R14 R5 K59 ["AssetSearch"]
      411 GETTABLE                         R13 R6 R14
      412 JUMP                             ; [+1]
      413 LOADNIL                          R13
      414 SETTABLE                         R13 R11 R12
      415 SETTABLE                         R11 R9 R10
      416 NEWTABLE                         R10 1 0
      418 GETTABLEKS                       R11 R4 K76 ["Agent"]
      420 NEWTABLE                         R12 0 33
      422 GETTABLEKS                       R13 R5 K18 ["ExecuteLuau"]
      424 GETTABLEKS                       R14 R5 K19 ["FileSearch"]
      426 GETTABLEKS                       R15 R5 K20 ["GameTree"]
      428 GETTABLEKS                       R16 R5 K21 ["GrepSearch"]
      430 GETTABLEKS                       R17 R5 K62 ["CreatorStoreInsert"]
      432 GETTABLEKS                       R18 R5 K61 ["CreatorStoreSearch"]
      434 GETTABLEKS                       R19 R5 K58 ["AssetInsert"]
      436 GETTABLEKS                       R20 R5 K59 ["AssetSearch"]
      438 GETTABLEKS                       R21 R5 K22 ["InspectInstance"]
      440 GETTABLEKS                       R22 R5 K23 ["MaterialGen"]
      442 GETTABLEKS                       R23 R5 K28 ["MeshGen"]
      444 GETTABLEKS                       R24 R5 K29 ["MultiEdit"]
      446 GETTABLEKS                       R25 R5 K30 ["ReadFile"]
      448 GETTABLEKS                       R26 R5 K31 ["PrimitiveGen"]
      450 GETTABLEKS                       R27 R5 K45 ["Skill"]
      452 GETTABLEKS                       R28 R5 K34 ["Subagent"]
      454 SETLIST                          R12 R13 16 [1]
      456 GETTABLEKS                       R13 R5 K71 ["ScreenCapture"]
      458 GETTABLEKS                       R14 R5 K72 ["UploadImage"]
      460 GETTABLEKS                       R15 R5 K53 ["StartMultiPlayerAgents"]
      462 GETTABLEKS                       R16 R5 K54 ["StopMultiPlayerAgents"]
      464 GETTABLEKS                       R17 R5 K55 ["MultiPlayerAgentsCommunication"]
      466 GETTABLEKS                       R18 R5 K56 ["WaitForMultiPlayerAgentsCommunication"]
      468 GETTABLEKS                       R19 R5 K46 ["HttpGet"]
      470 GETTABLEKS                       R20 R5 K39 ["FromHistory"]
      472 GETTABLEKS                       R21 R5 K40 ["StartStopPlay"]
      474 GETTABLEKS                       R22 R5 K41 ["GetConsoleOutput"]
      476 GETTABLEKS                       R23 R5 K42 ["UserKeyboardInput"]
      478 GETTABLEKS                       R24 R5 K43 ["UserMouseInput"]
      480 GETTABLEKS                       R25 R5 K44 ["CharacterNavigation"]
      482 GETTABLEKS                       R26 R5 K66 ["VideoCapture"]
      484 GETTABLEKS                       R27 R5 K32 ["QuestionAnswer"]
      486 GETTABLEKS                       R28 R5 K36 ["CompleteTodoItems"]
      488 SETLIST                          R12 R13 16 [17]
      490 GETTABLEKS                       R13 R5 K49 ["JobWait"]
      492 SETLIST                          R12 R13 1 [33]
      494 SETTABLE                         R12 R10 R11
      495 GETTABLEKS                       R11 R3 K63 ["FFlagAssistantGetStudioState"]
      497 JUMPIFNOT                        R11 ; [+10]
      498 GETTABLEKS                       R13 R4 K76 ["Agent"]
      500 GETTABLE                         R12 R10 R13
      501 GETTABLEKS                       R13 R5 K64 ["GetStudioState"]
      503 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      505 GETIMPORT                        R11 K79 [table.insert]
      507 CALL                             R11 2 0
      508 GETTABLEKS                       R13 R4 K76 ["Agent"]
      510 GETTABLE                         R12 R10 R13
      511 GETTABLEKS                       R13 R5 K33 ["StoreImage"]
      513 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      515 GETIMPORT                        R11 K79 [table.insert]
      517 CALL                             R11 2 0
      518 GETTABLEKS                       R11 R3 K25 ["FFlagAssistantAnimationGenTool"]
      520 JUMPIFNOT                        R11 ; [+10]
      521 GETTABLEKS                       R13 R4 K76 ["Agent"]
      523 GETTABLE                         R12 R10 R13
      524 GETTABLEKS                       R13 R5 K24 ["AnimationGen"]
      526 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      528 GETIMPORT                        R11 K79 [table.insert]
      530 CALL                             R11 2 0
      531 GETTABLEKS                       R11 R3 K27 ["FFlagAssistantAvatarAutoSetupTool"]
      533 JUMPIFNOT                        R11 ; [+10]
      534 GETTABLEKS                       R13 R4 K76 ["Agent"]
      536 GETTABLE                         R12 R10 R13
      537 GETTABLEKS                       R13 R5 K26 ["AvatarAutoSetup"]
      539 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      541 GETIMPORT                        R11 K79 [table.insert]
      543 CALL                             R11 2 0
      544 GETTABLEKS                       R11 R3 K50 ["FFlagAssistantMigratePrimitiveGenTool"]
      546 JUMPIFNOT                        R11 ; [+10]
      547 GETTABLEKS                       R13 R4 K76 ["Agent"]
      549 GETTABLE                         R12 R10 R13
      550 GETTABLEKS                       R13 R5 K51 ["JobRun"]
      552 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      554 GETIMPORT                        R11 K79 [table.insert]
      556 CALL                             R11 2 0
      557 GETTABLEKS                       R11 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      559 JUMPIFNOT                        R11 ; [+10]
      560 GETTABLEKS                       R13 R4 K76 ["Agent"]
      562 GETTABLE                         R12 R10 R13
      563 GETTABLEKS                       R13 R5 K37 ["UpdatePlan"]
      565 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      567 GETIMPORT                        R11 K79 [table.insert]
      569 CALL                             R11 2 0
      570 GETTABLEKS                       R13 R4 K76 ["Agent"]
      572 GETTABLE                         R12 R10 R13
      573 GETTABLEKS                       R13 R5 K47 ["CreateSkill"]
      575 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      577 GETIMPORT                        R11 K79 [table.insert]
      579 CALL                             R11 2 0
      580 GETTABLEKS                       R13 R4 K76 ["Agent"]
      582 GETTABLE                         R12 R10 R13
      583 GETTABLEKS                       R13 R5 K48 ["EditSkill"]
      585 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      587 GETIMPORT                        R11 K79 [table.insert]
      589 CALL                             R11 2 0
      590 GETTABLEKS                       R11 R4 K80 ["Plan"]
      592 NEWTABLE                         R12 0 9
      594 GETTABLEKS                       R13 R5 K30 ["ReadFile"]
      596 GETTABLEKS                       R14 R5 K19 ["FileSearch"]
      598 GETTABLEKS                       R15 R5 K21 ["GrepSearch"]
      600 GETTABLEKS                       R16 R5 K20 ["GameTree"]
      602 GETTABLEKS                       R17 R5 K22 ["InspectInstance"]
      604 GETTABLEKS                       R18 R5 K71 ["ScreenCapture"]
      606 GETTABLEKS                       R19 R5 K32 ["QuestionAnswer"]
      608 GETTABLEKS                       R20 R5 K35 ["FinalizePlan"]
      610 GETTABLEKS                       R22 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      612 JUMPIFNOT                        R22 ; [+3]
      613 GETTABLEKS                       R21 R5 K37 ["UpdatePlan"]
      615 JUMP                             ; [+1]
      616 LOADNIL                          R21
      617 SETLIST                          R12 R13 9 [1]
      619 SETTABLE                         R12 R10 R11
      620 NEWTABLE                         R11 0 15
      622 GETTABLEKS                       R12 R5 K18 ["ExecuteLuau"]
      624 GETTABLEKS                       R13 R5 K19 ["FileSearch"]
      626 GETTABLEKS                       R14 R5 K20 ["GameTree"]
      628 GETTABLEKS                       R15 R5 K21 ["GrepSearch"]
      630 GETTABLEKS                       R16 R5 K22 ["InspectInstance"]
      632 GETTABLEKS                       R17 R5 K30 ["ReadFile"]
      634 GETTABLEKS                       R18 R5 K45 ["Skill"]
      636 GETTABLEKS                       R19 R5 K34 ["Subagent"]
      638 GETTABLEKS                       R20 R5 K71 ["ScreenCapture"]
      640 GETTABLEKS                       R21 R5 K41 ["GetConsoleOutput"]
      642 GETTABLEKS                       R22 R5 K42 ["UserKeyboardInput"]
      644 GETTABLEKS                       R23 R5 K43 ["UserMouseInput"]
      646 GETTABLEKS                       R24 R5 K44 ["CharacterNavigation"]
      648 GETTABLEKS                       R25 R5 K55 ["MultiPlayerAgentsCommunication"]
      650 GETTABLEKS                       R26 R5 K56 ["WaitForMultiPlayerAgentsCommunication"]
      652 SETLIST                          R11 R12 15 [1]
      654 GETTABLEKS                       R12 R3 K63 ["FFlagAssistantGetStudioState"]
      656 JUMPIFNOT                        R12 ; [+8]
      657 GETTABLEKS                       R14 R5 K64 ["GetStudioState"]
      659 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
      661 MOVE                             R13 R11
      662 GETIMPORT                        R12 K79 [table.insert]
      664 CALL                             R12 2 0
      665 NEWTABLE                         R12 0 0
      667 GETTABLEKS                       R13 R3 K69 ["FFlagPlaytestVision"]
      669 JUMPIFNOT                        R13 ; [+8]
      670 GETTABLEKS                       R15 R5 K70 ["PlaytestLook"]
      672 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
      674 MOVE                             R14 R12
      675 GETIMPORT                        R13 K79 [table.insert]
      677 CALL                             R13 2 0
      678 DUPTABLE                         R13 K87 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools", "SubagentOnlyTools"}]
      679 SETTABLEKS                       R7 R13 K81 ["DefaultTools"]
      681 SETTABLEKS                       R8 R13 K82 ["ExperimentalTools"]
      683 SETTABLEKS                       R9 R13 K83 ["ExperimentFeatureTools"]
      685 SETTABLEKS                       R10 R13 K84 ["AssistantModeToolsAllowlist"]
      687 SETTABLEKS                       R11 R13 K85 ["MultiPlayerTestTools"]
      689 SETTABLEKS                       R12 R13 K86 ["SubagentOnlyTools"]
      691 RETURN                           R13 1
