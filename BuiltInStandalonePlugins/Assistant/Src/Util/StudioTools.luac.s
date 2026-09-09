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
      257 GETTABLEKS                       R8 R5 K54 ["GenerateLayout"]
      259 GETTABLEKS                       R10 R3 K55 ["FFlagAssistantGenerateLayoutTool"]
      261 JUMPIFNOT                        R10 ; [+4]
      262 GETTABLEKS                       R10 R5 K54 ["GenerateLayout"]
      264 GETTABLE                         R9 R6 R10
      265 JUMP                             ; [+1]
      266 LOADNIL                          R9
      267 SETTABLE                         R9 R7 R8
      268 GETTABLEKS                       R8 R5 K56 ["GetStudioState"]
      270 GETTABLEKS                       R10 R5 K56 ["GetStudioState"]
      272 GETTABLE                         R9 R6 R10
      273 SETTABLE                         R9 R7 R8
      274 GETTABLEKS                       R8 R3 K57 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
      276 JUMPIF                           R8 ; [+6]
      277 GETTABLEKS                       R8 R5 K58 ["JobRun"]
      279 GETTABLEKS                       R10 R5 K58 ["JobRun"]
      281 GETTABLE                         R9 R6 R10
      282 SETTABLE                         R9 R7 R8
      283 GETTABLEKS                       R8 R3 K59 ["FFlagAssistantAskInputTool"]
      285 JUMPIFNOT                        R8 ; [+6]
      286 GETTABLEKS                       R8 R5 K60 ["AskInput"]
      288 GETTABLEKS                       R10 R5 K60 ["AskInput"]
      290 GETTABLE                         R9 R6 R10
      291 SETTABLE                         R9 R7 R8
      292 GETTABLEKS                       R8 R3 K61 ["FFlagAssistantMultiPlayerAgents"]
      294 JUMPIFNOT                        R8 ; [+24]
      295 GETTABLEKS                       R8 R5 K62 ["StartMultiPlayerAgents"]
      297 GETTABLEKS                       R10 R5 K62 ["StartMultiPlayerAgents"]
      299 GETTABLE                         R9 R6 R10
      300 SETTABLE                         R9 R7 R8
      301 GETTABLEKS                       R8 R5 K63 ["StopMultiPlayerAgents"]
      303 GETTABLEKS                       R10 R5 K63 ["StopMultiPlayerAgents"]
      305 GETTABLE                         R9 R6 R10
      306 SETTABLE                         R9 R7 R8
      307 GETTABLEKS                       R8 R5 K64 ["MultiPlayerAgentsCommunication"]
      309 GETTABLEKS                       R10 R5 K64 ["MultiPlayerAgentsCommunication"]
      311 GETTABLE                         R9 R6 R10
      312 SETTABLE                         R9 R7 R8
      313 GETTABLEKS                       R8 R5 K65 ["WaitForMultiPlayerAgentsCommunication"]
      315 GETTABLEKS                       R10 R5 K65 ["WaitForMultiPlayerAgentsCommunication"]
      317 GETTABLE                         R9 R6 R10
      318 SETTABLE                         R9 R7 R8
      319 GETTABLEKS                       R8 R3 K66 ["FFlagAssistantAssetSearchInsertTool"]
      321 JUMPIFNOT                        R8 ; [+13]
      322 GETTABLEKS                       R8 R5 K67 ["AssetInsert"]
      324 GETTABLEKS                       R10 R5 K67 ["AssetInsert"]
      326 GETTABLE                         R9 R6 R10
      327 SETTABLE                         R9 R7 R8
      328 GETTABLEKS                       R8 R5 K68 ["AssetSearch"]
      330 GETTABLEKS                       R10 R5 K68 ["AssetSearch"]
      332 GETTABLE                         R9 R6 R10
      333 SETTABLE                         R9 R7 R8
      334 JUMP                             ; [+15]
      335 GETTABLEKS                       R8 R3 K69 ["FFlagAssistantAssetSearchInsertToolABTest"]
      337 JUMPIF                           R8 ; [+12]
      338 GETTABLEKS                       R8 R5 K70 ["CreatorStoreSearch"]
      340 GETTABLEKS                       R10 R5 K70 ["CreatorStoreSearch"]
      342 GETTABLE                         R9 R6 R10
      343 SETTABLE                         R9 R7 R8
      344 GETTABLEKS                       R8 R5 K71 ["CreatorStoreInsert"]
      346 GETTABLEKS                       R10 R5 K71 ["CreatorStoreInsert"]
      348 GETTABLE                         R9 R6 R10
      349 SETTABLE                         R9 R7 R8
      350 GETTABLEKS                       R8 R3 K72 ["FFlagAssistantVideoCaptureTool"]
      352 JUMPIFNOT                        R8 ; [+6]
      353 GETTABLEKS                       R8 R5 K73 ["VideoCapture"]
      355 GETTABLEKS                       R10 R5 K73 ["VideoCapture"]
      357 GETTABLE                         R9 R6 R10
      358 SETTABLE                         R9 R7 R8
      359 GETTABLEKS                       R8 R3 K74 ["FFlagUseStudioSideListTool"]
      361 JUMPIFNOT                        R8 ; [+6]
      362 GETTABLEKS                       R8 R5 K75 ["ListRobloxStudios"]
      364 GETTABLEKS                       R10 R5 K75 ["ListRobloxStudios"]
      366 GETTABLE                         R9 R6 R10
      367 SETTABLE                         R9 R7 R8
      368 GETTABLEKS                       R8 R3 K76 ["FFlagPlaytestVision"]
      370 JUMPIFNOT                        R8 ; [+6]
      371 GETTABLEKS                       R8 R5 K77 ["PlaytestLook"]
      373 GETTABLEKS                       R10 R5 K77 ["PlaytestLook"]
      375 GETTABLE                         R9 R6 R10
      376 SETTABLE                         R9 R7 R8
      377 NEWTABLE                         R8 4 0
      379 GETTABLEKS                       R9 R5 K78 ["ScreenCapture"]
      381 GETTABLEKS                       R11 R5 K78 ["ScreenCapture"]
      383 GETTABLE                         R10 R6 R11
      384 SETTABLE                         R10 R8 R9
      385 GETTABLEKS                       R9 R5 K79 ["UploadImage"]
      387 GETTABLEKS                       R11 R3 K80 ["FFlagEnableAssistantImageUpload"]
      389 JUMPIFNOT                        R11 ; [+4]
      390 GETTABLEKS                       R11 R5 K79 ["UploadImage"]
      392 GETTABLE                         R10 R6 R11
      393 JUMP                             ; [+1]
      394 LOADNIL                          R10
      395 SETTABLE                         R10 R8 R9
      396 GETTABLEKS                       R9 R5 K70 ["CreatorStoreSearch"]
      398 GETTABLEKS                       R11 R3 K69 ["FFlagAssistantAssetSearchInsertToolABTest"]
      400 JUMPIFNOT                        R11 ; [+4]
      401 GETTABLEKS                       R11 R5 K70 ["CreatorStoreSearch"]
      403 GETTABLE                         R10 R6 R11
      404 JUMP                             ; [+1]
      405 LOADNIL                          R10
      406 SETTABLE                         R10 R8 R9
      407 GETTABLEKS                       R9 R5 K71 ["CreatorStoreInsert"]
      409 GETTABLEKS                       R11 R3 K69 ["FFlagAssistantAssetSearchInsertToolABTest"]
      411 JUMPIFNOT                        R11 ; [+4]
      412 GETTABLEKS                       R11 R5 K71 ["CreatorStoreInsert"]
      414 GETTABLE                         R10 R6 R11
      415 JUMP                             ; [+1]
      416 LOADNIL                          R10
      417 SETTABLE                         R10 R8 R9
      418 NEWTABLE                         R9 1 0
      420 GETTABLEKS                       R10 R2 K81 ["FeatureNames"]
      422 GETTABLEKS                       R10 R10 K82 ["NewAssetToolSet"]
      424 NEWTABLE                         R11 2 0
      426 GETTABLEKS                       R12 R5 K67 ["AssetInsert"]
      428 GETTABLEKS                       R14 R3 K69 ["FFlagAssistantAssetSearchInsertToolABTest"]
      430 JUMPIFNOT                        R14 ; [+7]
      431 GETTABLEKS                       R14 R3 K66 ["FFlagAssistantAssetSearchInsertTool"]
      433 JUMPIF                           R14 ; [+4]
      434 GETTABLEKS                       R14 R5 K67 ["AssetInsert"]
      436 GETTABLE                         R13 R6 R14
      437 JUMP                             ; [+1]
      438 LOADNIL                          R13
      439 SETTABLE                         R13 R11 R12
      440 GETTABLEKS                       R12 R5 K68 ["AssetSearch"]
      442 GETTABLEKS                       R14 R3 K69 ["FFlagAssistantAssetSearchInsertToolABTest"]
      444 JUMPIFNOT                        R14 ; [+7]
      445 GETTABLEKS                       R14 R3 K66 ["FFlagAssistantAssetSearchInsertTool"]
      447 JUMPIF                           R14 ; [+4]
      448 GETTABLEKS                       R14 R5 K68 ["AssetSearch"]
      450 GETTABLE                         R13 R6 R14
      451 JUMP                             ; [+1]
      452 LOADNIL                          R13
      453 SETTABLE                         R13 R11 R12
      454 SETTABLE                         R11 R9 R10
      455 NEWTABLE                         R10 1 0
      457 GETTABLEKS                       R11 R4 K83 ["Agent"]
      459 NEWTABLE                         R12 0 34
      461 GETTABLEKS                       R13 R5 K18 ["ExecuteLuau"]
      463 GETTABLEKS                       R14 R5 K19 ["FileSearch"]
      465 GETTABLEKS                       R15 R5 K20 ["GameTree"]
      467 GETTABLEKS                       R16 R5 K21 ["GrepSearch"]
      469 GETTABLEKS                       R17 R5 K71 ["CreatorStoreInsert"]
      471 GETTABLEKS                       R18 R5 K70 ["CreatorStoreSearch"]
      473 GETTABLEKS                       R19 R5 K67 ["AssetInsert"]
      475 GETTABLEKS                       R20 R5 K68 ["AssetSearch"]
      477 GETTABLEKS                       R21 R5 K22 ["InspectInstance"]
      479 GETTABLEKS                       R22 R5 K23 ["MaterialGen"]
      481 GETTABLEKS                       R23 R5 K28 ["MeshGen"]
      483 GETTABLEKS                       R24 R5 K29 ["MultiEdit"]
      485 GETTABLEKS                       R25 R5 K30 ["ReadFile"]
      487 GETTABLEKS                       R26 R5 K31 ["PrimitiveGen"]
      489 GETTABLEKS                       R27 R5 K45 ["Skill"]
      491 GETTABLEKS                       R28 R5 K34 ["Subagent"]
      493 SETLIST                          R12 R13 16 [1]
      495 GETTABLEKS                       R13 R5 K78 ["ScreenCapture"]
      497 GETTABLEKS                       R14 R5 K79 ["UploadImage"]
      499 GETTABLEKS                       R15 R5 K62 ["StartMultiPlayerAgents"]
      501 GETTABLEKS                       R16 R5 K63 ["StopMultiPlayerAgents"]
      503 GETTABLEKS                       R17 R5 K64 ["MultiPlayerAgentsCommunication"]
      505 GETTABLEKS                       R18 R5 K65 ["WaitForMultiPlayerAgentsCommunication"]
      507 GETTABLEKS                       R19 R5 K46 ["HttpGet"]
      509 GETTABLEKS                       R20 R5 K39 ["FromHistory"]
      511 GETTABLEKS                       R21 R5 K40 ["StartStopPlay"]
      513 GETTABLEKS                       R22 R5 K41 ["GetConsoleOutput"]
      515 GETTABLEKS                       R23 R5 K42 ["UserKeyboardInput"]
      517 GETTABLEKS                       R24 R5 K43 ["UserMouseInput"]
      519 GETTABLEKS                       R25 R5 K44 ["CharacterNavigation"]
      521 GETTABLEKS                       R26 R5 K73 ["VideoCapture"]
      523 GETTABLEKS                       R27 R5 K32 ["QuestionAnswer"]
      525 GETTABLEKS                       R28 R5 K36 ["CompleteTodoItems"]
      527 SETLIST                          R12 R13 16 [17]
      529 GETTABLEKS                       R13 R5 K49 ["JobWait"]
      531 GETTABLEKS                       R14 R5 K56 ["GetStudioState"]
      533 SETLIST                          R12 R13 2 [33]
      535 SETTABLE                         R12 R10 R11
      536 GETTABLEKS                       R11 R3 K57 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
      538 JUMPIF                           R11 ; [+10]
      539 GETTABLEKS                       R13 R4 K83 ["Agent"]
      541 GETTABLE                         R12 R10 R13
      542 GETTABLEKS                       R13 R5 K58 ["JobRun"]
      544 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      546 GETIMPORT                        R11 K86 [table.insert]
      548 CALL                             R11 2 0
      549 GETTABLEKS                       R13 R4 K83 ["Agent"]
      551 GETTABLE                         R12 R10 R13
      552 GETTABLEKS                       R13 R5 K33 ["StoreImage"]
      554 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      556 GETIMPORT                        R11 K86 [table.insert]
      558 CALL                             R11 2 0
      559 GETTABLEKS                       R11 R3 K25 ["FFlagAssistantAnimationGenTool"]
      561 JUMPIFNOT                        R11 ; [+10]
      562 GETTABLEKS                       R13 R4 K83 ["Agent"]
      564 GETTABLE                         R12 R10 R13
      565 GETTABLEKS                       R13 R5 K24 ["AnimationGen"]
      567 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      569 GETIMPORT                        R11 K86 [table.insert]
      571 CALL                             R11 2 0
      572 GETTABLEKS                       R11 R3 K27 ["FFlagAssistantAvatarAutoSetupTool"]
      574 JUMPIFNOT                        R11 ; [+10]
      575 GETTABLEKS                       R13 R4 K83 ["Agent"]
      577 GETTABLE                         R12 R10 R13
      578 GETTABLEKS                       R13 R5 K26 ["AvatarAutoSetup"]
      580 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      582 GETIMPORT                        R11 K86 [table.insert]
      584 CALL                             R11 2 0
      585 GETTABLEKS                       R11 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      587 JUMPIFNOT                        R11 ; [+10]
      588 GETTABLEKS                       R13 R4 K83 ["Agent"]
      590 GETTABLE                         R12 R10 R13
      591 GETTABLEKS                       R13 R5 K37 ["UpdatePlan"]
      593 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      595 GETIMPORT                        R11 K86 [table.insert]
      597 CALL                             R11 2 0
      598 GETTABLEKS                       R13 R4 K83 ["Agent"]
      600 GETTABLE                         R12 R10 R13
      601 GETTABLEKS                       R13 R5 K47 ["CreateSkill"]
      603 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      605 GETIMPORT                        R11 K86 [table.insert]
      607 CALL                             R11 2 0
      608 GETTABLEKS                       R13 R4 K83 ["Agent"]
      610 GETTABLE                         R12 R10 R13
      611 GETTABLEKS                       R13 R5 K48 ["EditSkill"]
      613 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      615 GETIMPORT                        R11 K86 [table.insert]
      617 CALL                             R11 2 0
      618 GETTABLEKS                       R11 R3 K51 ["FFlagAssistantSegmentMeshTool"]
      620 JUMPIFNOT                        R11 ; [+10]
      621 GETTABLEKS                       R13 R4 K83 ["Agent"]
      623 GETTABLE                         R12 R10 R13
      624 GETTABLEKS                       R13 R5 K50 ["SegmentMesh"]
      626 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      628 GETIMPORT                        R11 K86 [table.insert]
      630 CALL                             R11 2 0
      631 GETTABLEKS                       R11 R3 K53 ["FFlagAssistantTextureGenTool"]
      633 JUMPIFNOT                        R11 ; [+10]
      634 GETTABLEKS                       R13 R4 K83 ["Agent"]
      636 GETTABLE                         R12 R10 R13
      637 GETTABLEKS                       R13 R5 K52 ["TextureGen"]
      639 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      641 GETIMPORT                        R11 K86 [table.insert]
      643 CALL                             R11 2 0
      644 GETTABLEKS                       R11 R3 K55 ["FFlagAssistantGenerateLayoutTool"]
      646 JUMPIFNOT                        R11 ; [+10]
      647 GETTABLEKS                       R13 R4 K83 ["Agent"]
      649 GETTABLE                         R12 R10 R13
      650 GETTABLEKS                       R13 R5 K54 ["GenerateLayout"]
      652 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      654 GETIMPORT                        R11 K86 [table.insert]
      656 CALL                             R11 2 0
      657 GETTABLEKS                       R11 R1 K87 ["FlagUtils"]
      659 GETTABLEKS                       R11 R11 K88 ["getIsAskInputToolLLMEnabled"]
      661 CALL                             R11 0 1
      662 JUMPIFNOT                        R11 ; [+10]
      663 GETTABLEKS                       R13 R4 K83 ["Agent"]
      665 GETTABLE                         R12 R10 R13
      666 GETTABLEKS                       R13 R5 K60 ["AskInput"]
      668 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      670 GETIMPORT                        R11 K86 [table.insert]
      672 CALL                             R11 2 0
      673 GETTABLEKS                       R11 R4 K89 ["Plan"]
      675 NEWTABLE                         R12 0 9
      677 GETTABLEKS                       R13 R5 K30 ["ReadFile"]
      679 GETTABLEKS                       R14 R5 K19 ["FileSearch"]
      681 GETTABLEKS                       R15 R5 K21 ["GrepSearch"]
      683 GETTABLEKS                       R16 R5 K20 ["GameTree"]
      685 GETTABLEKS                       R17 R5 K22 ["InspectInstance"]
      687 GETTABLEKS                       R18 R5 K78 ["ScreenCapture"]
      689 GETTABLEKS                       R19 R5 K32 ["QuestionAnswer"]
      691 GETTABLEKS                       R20 R5 K35 ["FinalizePlan"]
      693 GETTABLEKS                       R22 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      695 JUMPIFNOT                        R22 ; [+3]
      696 GETTABLEKS                       R21 R5 K37 ["UpdatePlan"]
      698 JUMP                             ; [+1]
      699 LOADNIL                          R21
      700 SETLIST                          R12 R13 9 [1]
      702 SETTABLE                         R12 R10 R11
      703 GETTABLEKS                       R11 R1 K87 ["FlagUtils"]
      705 GETTABLEKS                       R11 R11 K88 ["getIsAskInputToolLLMEnabled"]
      707 CALL                             R11 0 1
      708 JUMPIFNOT                        R11 ; [+10]
      709 GETTABLEKS                       R13 R4 K89 ["Plan"]
      711 GETTABLE                         R12 R10 R13
      712 GETTABLEKS                       R13 R5 K60 ["AskInput"]
      714 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      716 GETIMPORT                        R11 K86 [table.insert]
      718 CALL                             R11 2 0
      719 NEWTABLE                         R11 0 16
      721 GETTABLEKS                       R12 R5 K18 ["ExecuteLuau"]
      723 GETTABLEKS                       R13 R5 K19 ["FileSearch"]
      725 GETTABLEKS                       R14 R5 K20 ["GameTree"]
      727 GETTABLEKS                       R15 R5 K21 ["GrepSearch"]
      729 GETTABLEKS                       R16 R5 K22 ["InspectInstance"]
      731 GETTABLEKS                       R17 R5 K30 ["ReadFile"]
      733 GETTABLEKS                       R18 R5 K45 ["Skill"]
      735 GETTABLEKS                       R19 R5 K34 ["Subagent"]
      737 GETTABLEKS                       R20 R5 K78 ["ScreenCapture"]
      739 GETTABLEKS                       R21 R5 K41 ["GetConsoleOutput"]
      741 GETTABLEKS                       R22 R5 K42 ["UserKeyboardInput"]
      743 GETTABLEKS                       R23 R5 K43 ["UserMouseInput"]
      745 GETTABLEKS                       R24 R5 K44 ["CharacterNavigation"]
      747 GETTABLEKS                       R25 R5 K64 ["MultiPlayerAgentsCommunication"]
      749 GETTABLEKS                       R26 R5 K65 ["WaitForMultiPlayerAgentsCommunication"]
      751 GETTABLEKS                       R27 R5 K56 ["GetStudioState"]
      753 SETLIST                          R11 R12 16 [1]
      755 NEWTABLE                         R12 0 0
      757 GETTABLEKS                       R13 R3 K76 ["FFlagPlaytestVision"]
      759 JUMPIFNOT                        R13 ; [+8]
      760 GETTABLEKS                       R15 R5 K77 ["PlaytestLook"]
      762 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
      764 MOVE                             R14 R12
      765 GETIMPORT                        R13 K86 [table.insert]
      767 CALL                             R13 2 0
      768 DUPTABLE                         R13 K96 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools", "SubagentOnlyTools"}]
      769 SETTABLEKS                       R7 R13 K90 ["DefaultTools"]
      771 SETTABLEKS                       R8 R13 K91 ["ExperimentalTools"]
      773 SETTABLEKS                       R9 R13 K92 ["ExperimentFeatureTools"]
      775 SETTABLEKS                       R10 R13 K93 ["AssistantModeToolsAllowlist"]
      777 SETTABLEKS                       R11 R13 K94 ["MultiPlayerTestTools"]
      779 SETTABLEKS                       R12 R13 K95 ["SubagentOnlyTools"]
      781 RETURN                           R13 1
