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
       44 NEWTABLE                         R7 64 0
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
      235 GETTABLEKS                       R8 R5 K50 ["SegmentMesh"]
      237 GETTABLEKS                       R10 R3 K51 ["FFlagAssistantSegmentMeshTool"]
      239 JUMPIFNOT                        R10 ; [+4]
      240 GETTABLEKS                       R10 R5 K50 ["SegmentMesh"]
      242 GETTABLE                         R9 R6 R10
      243 JUMP                             ; [+1]
      244 LOADNIL                          R9
      245 SETTABLE                         R9 R7 R8
      246 GETTABLEKS                       R8 R5 K52 ["TextureGen"]
      248 GETTABLEKS                       R10 R3 K53 ["FFlagAssistantTextureGenTool"]
      250 JUMPIFNOT                        R10 ; [+4]
      251 GETTABLEKS                       R10 R5 K52 ["TextureGen"]
      253 GETTABLE                         R9 R6 R10
      254 JUMP                             ; [+1]
      255 LOADNIL                          R9
      256 SETTABLE                         R9 R7 R8
      257 GETTABLEKS                       R8 R5 K54 ["JobRun"]
      259 GETTABLEKS                       R10 R5 K54 ["JobRun"]
      261 GETTABLE                         R9 R6 R10
      262 SETTABLE                         R9 R7 R8
      263 GETTABLEKS                       R8 R5 K55 ["GetStudioState"]
      265 GETTABLEKS                       R10 R5 K55 ["GetStudioState"]
      267 GETTABLE                         R9 R6 R10
      268 SETTABLE                         R9 R7 R8
      269 GETTABLEKS                       R8 R3 K56 ["FFlagAssistantAskInputTool"]
      271 JUMPIFNOT                        R8 ; [+6]
      272 GETTABLEKS                       R8 R5 K57 ["AskInput"]
      274 GETTABLEKS                       R10 R5 K57 ["AskInput"]
      276 GETTABLE                         R9 R6 R10
      277 SETTABLE                         R9 R7 R8
      278 GETTABLEKS                       R8 R3 K58 ["FFlagAssistantMultiPlayerAgents"]
      280 JUMPIFNOT                        R8 ; [+24]
      281 GETTABLEKS                       R8 R5 K59 ["StartMultiPlayerAgents"]
      283 GETTABLEKS                       R10 R5 K59 ["StartMultiPlayerAgents"]
      285 GETTABLE                         R9 R6 R10
      286 SETTABLE                         R9 R7 R8
      287 GETTABLEKS                       R8 R5 K60 ["StopMultiPlayerAgents"]
      289 GETTABLEKS                       R10 R5 K60 ["StopMultiPlayerAgents"]
      291 GETTABLE                         R9 R6 R10
      292 SETTABLE                         R9 R7 R8
      293 GETTABLEKS                       R8 R5 K61 ["MultiPlayerAgentsCommunication"]
      295 GETTABLEKS                       R10 R5 K61 ["MultiPlayerAgentsCommunication"]
      297 GETTABLE                         R9 R6 R10
      298 SETTABLE                         R9 R7 R8
      299 GETTABLEKS                       R8 R5 K62 ["WaitForMultiPlayerAgentsCommunication"]
      301 GETTABLEKS                       R10 R5 K62 ["WaitForMultiPlayerAgentsCommunication"]
      303 GETTABLE                         R9 R6 R10
      304 SETTABLE                         R9 R7 R8
      305 GETTABLEKS                       R8 R3 K63 ["FFlagAssistantAssetSearchInsertTool"]
      307 JUMPIFNOT                        R8 ; [+13]
      308 GETTABLEKS                       R8 R5 K64 ["AssetInsert"]
      310 GETTABLEKS                       R10 R5 K64 ["AssetInsert"]
      312 GETTABLE                         R9 R6 R10
      313 SETTABLE                         R9 R7 R8
      314 GETTABLEKS                       R8 R5 K65 ["AssetSearch"]
      316 GETTABLEKS                       R10 R5 K65 ["AssetSearch"]
      318 GETTABLE                         R9 R6 R10
      319 SETTABLE                         R9 R7 R8
      320 JUMP                             ; [+15]
      321 GETTABLEKS                       R8 R3 K66 ["FFlagAssistantAssetSearchInsertToolABTest"]
      323 JUMPIF                           R8 ; [+12]
      324 GETTABLEKS                       R8 R5 K67 ["CreatorStoreSearch"]
      326 GETTABLEKS                       R10 R5 K67 ["CreatorStoreSearch"]
      328 GETTABLE                         R9 R6 R10
      329 SETTABLE                         R9 R7 R8
      330 GETTABLEKS                       R8 R5 K68 ["CreatorStoreInsert"]
      332 GETTABLEKS                       R10 R5 K68 ["CreatorStoreInsert"]
      334 GETTABLE                         R9 R6 R10
      335 SETTABLE                         R9 R7 R8
      336 GETTABLEKS                       R8 R3 K69 ["FFlagAssistantVideoCaptureTool"]
      338 JUMPIFNOT                        R8 ; [+6]
      339 GETTABLEKS                       R8 R5 K70 ["VideoCapture"]
      341 GETTABLEKS                       R10 R5 K70 ["VideoCapture"]
      343 GETTABLE                         R9 R6 R10
      344 SETTABLE                         R9 R7 R8
      345 GETTABLEKS                       R8 R3 K71 ["FFlagUseStudioSideListTool"]
      347 JUMPIFNOT                        R8 ; [+6]
      348 GETTABLEKS                       R8 R5 K72 ["ListRobloxStudios"]
      350 GETTABLEKS                       R10 R5 K72 ["ListRobloxStudios"]
      352 GETTABLE                         R9 R6 R10
      353 SETTABLE                         R9 R7 R8
      354 GETTABLEKS                       R8 R3 K73 ["FFlagPlaytestVision"]
      356 JUMPIFNOT                        R8 ; [+6]
      357 GETTABLEKS                       R8 R5 K74 ["PlaytestLook"]
      359 GETTABLEKS                       R10 R5 K74 ["PlaytestLook"]
      361 GETTABLE                         R9 R6 R10
      362 SETTABLE                         R9 R7 R8
      363 NEWTABLE                         R8 4 0
      365 GETTABLEKS                       R9 R5 K75 ["ScreenCapture"]
      367 GETTABLEKS                       R11 R5 K75 ["ScreenCapture"]
      369 GETTABLE                         R10 R6 R11
      370 SETTABLE                         R10 R8 R9
      371 GETTABLEKS                       R9 R5 K76 ["UploadImage"]
      373 GETTABLEKS                       R11 R3 K77 ["FFlagEnableAssistantImageUpload"]
      375 JUMPIFNOT                        R11 ; [+4]
      376 GETTABLEKS                       R11 R5 K76 ["UploadImage"]
      378 GETTABLE                         R10 R6 R11
      379 JUMP                             ; [+1]
      380 LOADNIL                          R10
      381 SETTABLE                         R10 R8 R9
      382 GETTABLEKS                       R9 R5 K67 ["CreatorStoreSearch"]
      384 GETTABLEKS                       R11 R3 K66 ["FFlagAssistantAssetSearchInsertToolABTest"]
      386 JUMPIFNOT                        R11 ; [+4]
      387 GETTABLEKS                       R11 R5 K67 ["CreatorStoreSearch"]
      389 GETTABLE                         R10 R6 R11
      390 JUMP                             ; [+1]
      391 LOADNIL                          R10
      392 SETTABLE                         R10 R8 R9
      393 GETTABLEKS                       R9 R5 K68 ["CreatorStoreInsert"]
      395 GETTABLEKS                       R11 R3 K66 ["FFlagAssistantAssetSearchInsertToolABTest"]
      397 JUMPIFNOT                        R11 ; [+4]
      398 GETTABLEKS                       R11 R5 K68 ["CreatorStoreInsert"]
      400 GETTABLE                         R10 R6 R11
      401 JUMP                             ; [+1]
      402 LOADNIL                          R10
      403 SETTABLE                         R10 R8 R9
      404 NEWTABLE                         R9 1 0
      406 GETTABLEKS                       R10 R2 K78 ["FeatureNames"]
      408 GETTABLEKS                       R10 R10 K79 ["NewAssetToolSet"]
      410 NEWTABLE                         R11 2 0
      412 GETTABLEKS                       R12 R5 K64 ["AssetInsert"]
      414 GETTABLEKS                       R14 R3 K66 ["FFlagAssistantAssetSearchInsertToolABTest"]
      416 JUMPIFNOT                        R14 ; [+7]
      417 GETTABLEKS                       R14 R3 K63 ["FFlagAssistantAssetSearchInsertTool"]
      419 JUMPIF                           R14 ; [+4]
      420 GETTABLEKS                       R14 R5 K64 ["AssetInsert"]
      422 GETTABLE                         R13 R6 R14
      423 JUMP                             ; [+1]
      424 LOADNIL                          R13
      425 SETTABLE                         R13 R11 R12
      426 GETTABLEKS                       R12 R5 K65 ["AssetSearch"]
      428 GETTABLEKS                       R14 R3 K66 ["FFlagAssistantAssetSearchInsertToolABTest"]
      430 JUMPIFNOT                        R14 ; [+7]
      431 GETTABLEKS                       R14 R3 K63 ["FFlagAssistantAssetSearchInsertTool"]
      433 JUMPIF                           R14 ; [+4]
      434 GETTABLEKS                       R14 R5 K65 ["AssetSearch"]
      436 GETTABLE                         R13 R6 R14
      437 JUMP                             ; [+1]
      438 LOADNIL                          R13
      439 SETTABLE                         R13 R11 R12
      440 SETTABLE                         R11 R9 R10
      441 NEWTABLE                         R10 1 0
      443 GETTABLEKS                       R11 R4 K80 ["Agent"]
      445 NEWTABLE                         R12 0 35
      447 GETTABLEKS                       R13 R5 K18 ["ExecuteLuau"]
      449 GETTABLEKS                       R14 R5 K19 ["FileSearch"]
      451 GETTABLEKS                       R15 R5 K20 ["GameTree"]
      453 GETTABLEKS                       R16 R5 K21 ["GrepSearch"]
      455 GETTABLEKS                       R17 R5 K68 ["CreatorStoreInsert"]
      457 GETTABLEKS                       R18 R5 K67 ["CreatorStoreSearch"]
      459 GETTABLEKS                       R19 R5 K64 ["AssetInsert"]
      461 GETTABLEKS                       R20 R5 K65 ["AssetSearch"]
      463 GETTABLEKS                       R21 R5 K22 ["InspectInstance"]
      465 GETTABLEKS                       R22 R5 K23 ["MaterialGen"]
      467 GETTABLEKS                       R23 R5 K28 ["MeshGen"]
      469 GETTABLEKS                       R24 R5 K29 ["MultiEdit"]
      471 GETTABLEKS                       R25 R5 K30 ["ReadFile"]
      473 GETTABLEKS                       R26 R5 K31 ["PrimitiveGen"]
      475 GETTABLEKS                       R27 R5 K45 ["Skill"]
      477 GETTABLEKS                       R28 R5 K34 ["Subagent"]
      479 SETLIST                          R12 R13 16 [1]
      481 GETTABLEKS                       R13 R5 K75 ["ScreenCapture"]
      483 GETTABLEKS                       R14 R5 K76 ["UploadImage"]
      485 GETTABLEKS                       R15 R5 K59 ["StartMultiPlayerAgents"]
      487 GETTABLEKS                       R16 R5 K60 ["StopMultiPlayerAgents"]
      489 GETTABLEKS                       R17 R5 K61 ["MultiPlayerAgentsCommunication"]
      491 GETTABLEKS                       R18 R5 K62 ["WaitForMultiPlayerAgentsCommunication"]
      493 GETTABLEKS                       R19 R5 K46 ["HttpGet"]
      495 GETTABLEKS                       R20 R5 K39 ["FromHistory"]
      497 GETTABLEKS                       R21 R5 K40 ["StartStopPlay"]
      499 GETTABLEKS                       R22 R5 K41 ["GetConsoleOutput"]
      501 GETTABLEKS                       R23 R5 K42 ["UserKeyboardInput"]
      503 GETTABLEKS                       R24 R5 K43 ["UserMouseInput"]
      505 GETTABLEKS                       R25 R5 K44 ["CharacterNavigation"]
      507 GETTABLEKS                       R26 R5 K70 ["VideoCapture"]
      509 GETTABLEKS                       R27 R5 K32 ["QuestionAnswer"]
      511 GETTABLEKS                       R28 R5 K36 ["CompleteTodoItems"]
      513 SETLIST                          R12 R13 16 [17]
      515 GETTABLEKS                       R13 R5 K49 ["JobWait"]
      517 GETTABLEKS                       R14 R5 K54 ["JobRun"]
      519 GETTABLEKS                       R15 R5 K55 ["GetStudioState"]
      521 SETLIST                          R12 R13 3 [33]
      523 SETTABLE                         R12 R10 R11
      524 GETTABLEKS                       R13 R4 K80 ["Agent"]
      526 GETTABLE                         R12 R10 R13
      527 GETTABLEKS                       R13 R5 K33 ["StoreImage"]
      529 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      531 GETIMPORT                        R11 K83 [table.insert]
      533 CALL                             R11 2 0
      534 GETTABLEKS                       R11 R3 K25 ["FFlagAssistantAnimationGenTool"]
      536 JUMPIFNOT                        R11 ; [+10]
      537 GETTABLEKS                       R13 R4 K80 ["Agent"]
      539 GETTABLE                         R12 R10 R13
      540 GETTABLEKS                       R13 R5 K24 ["AnimationGen"]
      542 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      544 GETIMPORT                        R11 K83 [table.insert]
      546 CALL                             R11 2 0
      547 GETTABLEKS                       R11 R3 K27 ["FFlagAssistantAvatarAutoSetupTool"]
      549 JUMPIFNOT                        R11 ; [+10]
      550 GETTABLEKS                       R13 R4 K80 ["Agent"]
      552 GETTABLE                         R12 R10 R13
      553 GETTABLEKS                       R13 R5 K26 ["AvatarAutoSetup"]
      555 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      557 GETIMPORT                        R11 K83 [table.insert]
      559 CALL                             R11 2 0
      560 GETTABLEKS                       R11 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      562 JUMPIFNOT                        R11 ; [+10]
      563 GETTABLEKS                       R13 R4 K80 ["Agent"]
      565 GETTABLE                         R12 R10 R13
      566 GETTABLEKS                       R13 R5 K37 ["UpdatePlan"]
      568 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      570 GETIMPORT                        R11 K83 [table.insert]
      572 CALL                             R11 2 0
      573 GETTABLEKS                       R13 R4 K80 ["Agent"]
      575 GETTABLE                         R12 R10 R13
      576 GETTABLEKS                       R13 R5 K47 ["CreateSkill"]
      578 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      580 GETIMPORT                        R11 K83 [table.insert]
      582 CALL                             R11 2 0
      583 GETTABLEKS                       R13 R4 K80 ["Agent"]
      585 GETTABLE                         R12 R10 R13
      586 GETTABLEKS                       R13 R5 K48 ["EditSkill"]
      588 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      590 GETIMPORT                        R11 K83 [table.insert]
      592 CALL                             R11 2 0
      593 GETTABLEKS                       R11 R3 K51 ["FFlagAssistantSegmentMeshTool"]
      595 JUMPIFNOT                        R11 ; [+10]
      596 GETTABLEKS                       R13 R4 K80 ["Agent"]
      598 GETTABLE                         R12 R10 R13
      599 GETTABLEKS                       R13 R5 K50 ["SegmentMesh"]
      601 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      603 GETIMPORT                        R11 K83 [table.insert]
      605 CALL                             R11 2 0
      606 GETTABLEKS                       R11 R3 K53 ["FFlagAssistantTextureGenTool"]
      608 JUMPIFNOT                        R11 ; [+10]
      609 GETTABLEKS                       R13 R4 K80 ["Agent"]
      611 GETTABLE                         R12 R10 R13
      612 GETTABLEKS                       R13 R5 K52 ["TextureGen"]
      614 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      616 GETIMPORT                        R11 K83 [table.insert]
      618 CALL                             R11 2 0
      619 GETTABLEKS                       R11 R1 K84 ["FlagUtils"]
      621 GETTABLEKS                       R11 R11 K85 ["getIsAskInputToolLLMEnabled"]
      623 CALL                             R11 0 1
      624 JUMPIFNOT                        R11 ; [+10]
      625 GETTABLEKS                       R13 R4 K80 ["Agent"]
      627 GETTABLE                         R12 R10 R13
      628 GETTABLEKS                       R13 R5 K57 ["AskInput"]
      630 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      632 GETIMPORT                        R11 K83 [table.insert]
      634 CALL                             R11 2 0
      635 GETTABLEKS                       R11 R4 K86 ["Plan"]
      637 NEWTABLE                         R12 0 9
      639 GETTABLEKS                       R13 R5 K30 ["ReadFile"]
      641 GETTABLEKS                       R14 R5 K19 ["FileSearch"]
      643 GETTABLEKS                       R15 R5 K21 ["GrepSearch"]
      645 GETTABLEKS                       R16 R5 K20 ["GameTree"]
      647 GETTABLEKS                       R17 R5 K22 ["InspectInstance"]
      649 GETTABLEKS                       R18 R5 K75 ["ScreenCapture"]
      651 GETTABLEKS                       R19 R5 K32 ["QuestionAnswer"]
      653 GETTABLEKS                       R20 R5 K35 ["FinalizePlan"]
      655 GETTABLEKS                       R22 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      657 JUMPIFNOT                        R22 ; [+3]
      658 GETTABLEKS                       R21 R5 K37 ["UpdatePlan"]
      660 JUMP                             ; [+1]
      661 LOADNIL                          R21
      662 SETLIST                          R12 R13 9 [1]
      664 SETTABLE                         R12 R10 R11
      665 GETTABLEKS                       R11 R1 K84 ["FlagUtils"]
      667 GETTABLEKS                       R11 R11 K85 ["getIsAskInputToolLLMEnabled"]
      669 CALL                             R11 0 1
      670 JUMPIFNOT                        R11 ; [+10]
      671 GETTABLEKS                       R13 R4 K86 ["Plan"]
      673 GETTABLE                         R12 R10 R13
      674 GETTABLEKS                       R13 R5 K57 ["AskInput"]
      676 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      678 GETIMPORT                        R11 K83 [table.insert]
      680 CALL                             R11 2 0
      681 NEWTABLE                         R11 0 16
      683 GETTABLEKS                       R12 R5 K18 ["ExecuteLuau"]
      685 GETTABLEKS                       R13 R5 K19 ["FileSearch"]
      687 GETTABLEKS                       R14 R5 K20 ["GameTree"]
      689 GETTABLEKS                       R15 R5 K21 ["GrepSearch"]
      691 GETTABLEKS                       R16 R5 K22 ["InspectInstance"]
      693 GETTABLEKS                       R17 R5 K30 ["ReadFile"]
      695 GETTABLEKS                       R18 R5 K45 ["Skill"]
      697 GETTABLEKS                       R19 R5 K34 ["Subagent"]
      699 GETTABLEKS                       R20 R5 K75 ["ScreenCapture"]
      701 GETTABLEKS                       R21 R5 K41 ["GetConsoleOutput"]
      703 GETTABLEKS                       R22 R5 K42 ["UserKeyboardInput"]
      705 GETTABLEKS                       R23 R5 K43 ["UserMouseInput"]
      707 GETTABLEKS                       R24 R5 K44 ["CharacterNavigation"]
      709 GETTABLEKS                       R25 R5 K61 ["MultiPlayerAgentsCommunication"]
      711 GETTABLEKS                       R26 R5 K62 ["WaitForMultiPlayerAgentsCommunication"]
      713 GETTABLEKS                       R27 R5 K55 ["GetStudioState"]
      715 SETLIST                          R11 R12 16 [1]
      717 NEWTABLE                         R12 0 0
      719 GETTABLEKS                       R13 R3 K73 ["FFlagPlaytestVision"]
      721 JUMPIFNOT                        R13 ; [+8]
      722 GETTABLEKS                       R15 R5 K74 ["PlaytestLook"]
      724 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
      726 MOVE                             R14 R12
      727 GETIMPORT                        R13 K83 [table.insert]
      729 CALL                             R13 2 0
      730 DUPTABLE                         R13 K93 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools", "SubagentOnlyTools"}]
      731 SETTABLEKS                       R7 R13 K87 ["DefaultTools"]
      733 SETTABLEKS                       R8 R13 K88 ["ExperimentalTools"]
      735 SETTABLEKS                       R9 R13 K89 ["ExperimentFeatureTools"]
      737 SETTABLEKS                       R10 R13 K90 ["AssistantModeToolsAllowlist"]
      739 SETTABLEKS                       R11 R13 K91 ["MultiPlayerTestTools"]
      741 SETTABLEKS                       R12 R13 K92 ["SubagentOnlyTools"]
      743 RETURN                           R13 1
