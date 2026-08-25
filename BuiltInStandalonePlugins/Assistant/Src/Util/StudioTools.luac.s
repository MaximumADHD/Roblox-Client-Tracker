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
      257 GETTABLEKS                       R8 R1 K54 ["FlagUtils"]
      259 GETTABLEKS                       R8 R8 K55 ["getIsAskInputToolEnabled"]
      261 CALL                             R8 0 1
      262 JUMPIFNOT                        R8 ; [+6]
      263 GETTABLEKS                       R8 R5 K56 ["AskInput"]
      265 GETTABLEKS                       R10 R5 K56 ["AskInput"]
      267 GETTABLE                         R9 R6 R10
      268 SETTABLE                         R9 R7 R8
      269 GETTABLEKS                       R8 R3 K57 ["FFlagAssistantMigratePrimitiveGenTool"]
      271 JUMPIFNOT                        R8 ; [+6]
      272 GETTABLEKS                       R8 R5 K58 ["JobRun"]
      274 GETTABLEKS                       R10 R5 K58 ["JobRun"]
      276 GETTABLE                         R9 R6 R10
      277 SETTABLE                         R9 R7 R8
      278 GETTABLEKS                       R8 R3 K59 ["FFlagAssistantMultiPlayerAgents"]
      280 JUMPIFNOT                        R8 ; [+24]
      281 GETTABLEKS                       R8 R5 K60 ["StartMultiPlayerAgents"]
      283 GETTABLEKS                       R10 R5 K60 ["StartMultiPlayerAgents"]
      285 GETTABLE                         R9 R6 R10
      286 SETTABLE                         R9 R7 R8
      287 GETTABLEKS                       R8 R5 K61 ["StopMultiPlayerAgents"]
      289 GETTABLEKS                       R10 R5 K61 ["StopMultiPlayerAgents"]
      291 GETTABLE                         R9 R6 R10
      292 SETTABLE                         R9 R7 R8
      293 GETTABLEKS                       R8 R5 K62 ["MultiPlayerAgentsCommunication"]
      295 GETTABLEKS                       R10 R5 K62 ["MultiPlayerAgentsCommunication"]
      297 GETTABLE                         R9 R6 R10
      298 SETTABLE                         R9 R7 R8
      299 GETTABLEKS                       R8 R5 K63 ["WaitForMultiPlayerAgentsCommunication"]
      301 GETTABLEKS                       R10 R5 K63 ["WaitForMultiPlayerAgentsCommunication"]
      303 GETTABLE                         R9 R6 R10
      304 SETTABLE                         R9 R7 R8
      305 GETTABLEKS                       R8 R3 K64 ["FFlagAssistantAssetSearchInsertTool"]
      307 JUMPIFNOT                        R8 ; [+13]
      308 GETTABLEKS                       R8 R5 K65 ["AssetInsert"]
      310 GETTABLEKS                       R10 R5 K65 ["AssetInsert"]
      312 GETTABLE                         R9 R6 R10
      313 SETTABLE                         R9 R7 R8
      314 GETTABLEKS                       R8 R5 K66 ["AssetSearch"]
      316 GETTABLEKS                       R10 R5 K66 ["AssetSearch"]
      318 GETTABLE                         R9 R6 R10
      319 SETTABLE                         R9 R7 R8
      320 JUMP                             ; [+15]
      321 GETTABLEKS                       R8 R3 K67 ["FFlagAssistantAssetSearchInsertToolABTest"]
      323 JUMPIF                           R8 ; [+12]
      324 GETTABLEKS                       R8 R5 K68 ["CreatorStoreSearch"]
      326 GETTABLEKS                       R10 R5 K68 ["CreatorStoreSearch"]
      328 GETTABLE                         R9 R6 R10
      329 SETTABLE                         R9 R7 R8
      330 GETTABLEKS                       R8 R5 K69 ["CreatorStoreInsert"]
      332 GETTABLEKS                       R10 R5 K69 ["CreatorStoreInsert"]
      334 GETTABLE                         R9 R6 R10
      335 SETTABLE                         R9 R7 R8
      336 GETTABLEKS                       R8 R3 K70 ["FFlagAssistantGetStudioState"]
      338 JUMPIFNOT                        R8 ; [+6]
      339 GETTABLEKS                       R8 R5 K71 ["GetStudioState"]
      341 GETTABLEKS                       R10 R5 K71 ["GetStudioState"]
      343 GETTABLE                         R9 R6 R10
      344 SETTABLE                         R9 R7 R8
      345 GETTABLEKS                       R8 R3 K72 ["FFlagAssistantVideoCaptureTool"]
      347 JUMPIFNOT                        R8 ; [+6]
      348 GETTABLEKS                       R8 R5 K73 ["VideoCapture"]
      350 GETTABLEKS                       R10 R5 K73 ["VideoCapture"]
      352 GETTABLE                         R9 R6 R10
      353 SETTABLE                         R9 R7 R8
      354 GETTABLEKS                       R8 R3 K74 ["FFlagUseStudioSideListTool"]
      356 JUMPIFNOT                        R8 ; [+6]
      357 GETTABLEKS                       R8 R5 K75 ["ListRobloxStudios"]
      359 GETTABLEKS                       R10 R5 K75 ["ListRobloxStudios"]
      361 GETTABLE                         R9 R6 R10
      362 SETTABLE                         R9 R7 R8
      363 GETTABLEKS                       R8 R3 K76 ["FFlagPlaytestVision"]
      365 JUMPIFNOT                        R8 ; [+6]
      366 GETTABLEKS                       R8 R5 K77 ["PlaytestLook"]
      368 GETTABLEKS                       R10 R5 K77 ["PlaytestLook"]
      370 GETTABLE                         R9 R6 R10
      371 SETTABLE                         R9 R7 R8
      372 NEWTABLE                         R8 4 0
      374 GETTABLEKS                       R9 R5 K78 ["ScreenCapture"]
      376 GETTABLEKS                       R11 R5 K78 ["ScreenCapture"]
      378 GETTABLE                         R10 R6 R11
      379 SETTABLE                         R10 R8 R9
      380 GETTABLEKS                       R9 R5 K79 ["UploadImage"]
      382 GETTABLEKS                       R11 R3 K80 ["FFlagEnableAssistantImageUpload"]
      384 JUMPIFNOT                        R11 ; [+4]
      385 GETTABLEKS                       R11 R5 K79 ["UploadImage"]
      387 GETTABLE                         R10 R6 R11
      388 JUMP                             ; [+1]
      389 LOADNIL                          R10
      390 SETTABLE                         R10 R8 R9
      391 GETTABLEKS                       R9 R5 K68 ["CreatorStoreSearch"]
      393 GETTABLEKS                       R11 R3 K67 ["FFlagAssistantAssetSearchInsertToolABTest"]
      395 JUMPIFNOT                        R11 ; [+4]
      396 GETTABLEKS                       R11 R5 K68 ["CreatorStoreSearch"]
      398 GETTABLE                         R10 R6 R11
      399 JUMP                             ; [+1]
      400 LOADNIL                          R10
      401 SETTABLE                         R10 R8 R9
      402 GETTABLEKS                       R9 R5 K69 ["CreatorStoreInsert"]
      404 GETTABLEKS                       R11 R3 K67 ["FFlagAssistantAssetSearchInsertToolABTest"]
      406 JUMPIFNOT                        R11 ; [+4]
      407 GETTABLEKS                       R11 R5 K69 ["CreatorStoreInsert"]
      409 GETTABLE                         R10 R6 R11
      410 JUMP                             ; [+1]
      411 LOADNIL                          R10
      412 SETTABLE                         R10 R8 R9
      413 NEWTABLE                         R9 1 0
      415 GETTABLEKS                       R10 R2 K81 ["FeatureNames"]
      417 GETTABLEKS                       R10 R10 K82 ["NewAssetToolSet"]
      419 NEWTABLE                         R11 2 0
      421 GETTABLEKS                       R12 R5 K65 ["AssetInsert"]
      423 GETTABLEKS                       R14 R3 K67 ["FFlagAssistantAssetSearchInsertToolABTest"]
      425 JUMPIFNOT                        R14 ; [+7]
      426 GETTABLEKS                       R14 R3 K64 ["FFlagAssistantAssetSearchInsertTool"]
      428 JUMPIF                           R14 ; [+4]
      429 GETTABLEKS                       R14 R5 K65 ["AssetInsert"]
      431 GETTABLE                         R13 R6 R14
      432 JUMP                             ; [+1]
      433 LOADNIL                          R13
      434 SETTABLE                         R13 R11 R12
      435 GETTABLEKS                       R12 R5 K66 ["AssetSearch"]
      437 GETTABLEKS                       R14 R3 K67 ["FFlagAssistantAssetSearchInsertToolABTest"]
      439 JUMPIFNOT                        R14 ; [+7]
      440 GETTABLEKS                       R14 R3 K64 ["FFlagAssistantAssetSearchInsertTool"]
      442 JUMPIF                           R14 ; [+4]
      443 GETTABLEKS                       R14 R5 K66 ["AssetSearch"]
      445 GETTABLE                         R13 R6 R14
      446 JUMP                             ; [+1]
      447 LOADNIL                          R13
      448 SETTABLE                         R13 R11 R12
      449 SETTABLE                         R11 R9 R10
      450 NEWTABLE                         R10 1 0
      452 GETTABLEKS                       R11 R4 K83 ["Agent"]
      454 NEWTABLE                         R12 0 33
      456 GETTABLEKS                       R13 R5 K18 ["ExecuteLuau"]
      458 GETTABLEKS                       R14 R5 K19 ["FileSearch"]
      460 GETTABLEKS                       R15 R5 K20 ["GameTree"]
      462 GETTABLEKS                       R16 R5 K21 ["GrepSearch"]
      464 GETTABLEKS                       R17 R5 K69 ["CreatorStoreInsert"]
      466 GETTABLEKS                       R18 R5 K68 ["CreatorStoreSearch"]
      468 GETTABLEKS                       R19 R5 K65 ["AssetInsert"]
      470 GETTABLEKS                       R20 R5 K66 ["AssetSearch"]
      472 GETTABLEKS                       R21 R5 K22 ["InspectInstance"]
      474 GETTABLEKS                       R22 R5 K23 ["MaterialGen"]
      476 GETTABLEKS                       R23 R5 K28 ["MeshGen"]
      478 GETTABLEKS                       R24 R5 K29 ["MultiEdit"]
      480 GETTABLEKS                       R25 R5 K30 ["ReadFile"]
      482 GETTABLEKS                       R26 R5 K31 ["PrimitiveGen"]
      484 GETTABLEKS                       R27 R5 K45 ["Skill"]
      486 GETTABLEKS                       R28 R5 K34 ["Subagent"]
      488 SETLIST                          R12 R13 16 [1]
      490 GETTABLEKS                       R13 R5 K78 ["ScreenCapture"]
      492 GETTABLEKS                       R14 R5 K79 ["UploadImage"]
      494 GETTABLEKS                       R15 R5 K60 ["StartMultiPlayerAgents"]
      496 GETTABLEKS                       R16 R5 K61 ["StopMultiPlayerAgents"]
      498 GETTABLEKS                       R17 R5 K62 ["MultiPlayerAgentsCommunication"]
      500 GETTABLEKS                       R18 R5 K63 ["WaitForMultiPlayerAgentsCommunication"]
      502 GETTABLEKS                       R19 R5 K46 ["HttpGet"]
      504 GETTABLEKS                       R20 R5 K39 ["FromHistory"]
      506 GETTABLEKS                       R21 R5 K40 ["StartStopPlay"]
      508 GETTABLEKS                       R22 R5 K41 ["GetConsoleOutput"]
      510 GETTABLEKS                       R23 R5 K42 ["UserKeyboardInput"]
      512 GETTABLEKS                       R24 R5 K43 ["UserMouseInput"]
      514 GETTABLEKS                       R25 R5 K44 ["CharacterNavigation"]
      516 GETTABLEKS                       R26 R5 K73 ["VideoCapture"]
      518 GETTABLEKS                       R27 R5 K32 ["QuestionAnswer"]
      520 GETTABLEKS                       R28 R5 K36 ["CompleteTodoItems"]
      522 SETLIST                          R12 R13 16 [17]
      524 GETTABLEKS                       R13 R5 K49 ["JobWait"]
      526 SETLIST                          R12 R13 1 [33]
      528 SETTABLE                         R12 R10 R11
      529 GETTABLEKS                       R11 R3 K70 ["FFlagAssistantGetStudioState"]
      531 JUMPIFNOT                        R11 ; [+10]
      532 GETTABLEKS                       R13 R4 K83 ["Agent"]
      534 GETTABLE                         R12 R10 R13
      535 GETTABLEKS                       R13 R5 K71 ["GetStudioState"]
      537 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      539 GETIMPORT                        R11 K86 [table.insert]
      541 CALL                             R11 2 0
      542 GETTABLEKS                       R13 R4 K83 ["Agent"]
      544 GETTABLE                         R12 R10 R13
      545 GETTABLEKS                       R13 R5 K33 ["StoreImage"]
      547 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      549 GETIMPORT                        R11 K86 [table.insert]
      551 CALL                             R11 2 0
      552 GETTABLEKS                       R11 R3 K25 ["FFlagAssistantAnimationGenTool"]
      554 JUMPIFNOT                        R11 ; [+10]
      555 GETTABLEKS                       R13 R4 K83 ["Agent"]
      557 GETTABLE                         R12 R10 R13
      558 GETTABLEKS                       R13 R5 K24 ["AnimationGen"]
      560 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      562 GETIMPORT                        R11 K86 [table.insert]
      564 CALL                             R11 2 0
      565 GETTABLEKS                       R11 R3 K27 ["FFlagAssistantAvatarAutoSetupTool"]
      567 JUMPIFNOT                        R11 ; [+10]
      568 GETTABLEKS                       R13 R4 K83 ["Agent"]
      570 GETTABLE                         R12 R10 R13
      571 GETTABLEKS                       R13 R5 K26 ["AvatarAutoSetup"]
      573 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      575 GETIMPORT                        R11 K86 [table.insert]
      577 CALL                             R11 2 0
      578 GETTABLEKS                       R11 R3 K57 ["FFlagAssistantMigratePrimitiveGenTool"]
      580 JUMPIFNOT                        R11 ; [+10]
      581 GETTABLEKS                       R13 R4 K83 ["Agent"]
      583 GETTABLE                         R12 R10 R13
      584 GETTABLEKS                       R13 R5 K58 ["JobRun"]
      586 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      588 GETIMPORT                        R11 K86 [table.insert]
      590 CALL                             R11 2 0
      591 GETTABLEKS                       R11 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      593 JUMPIFNOT                        R11 ; [+10]
      594 GETTABLEKS                       R13 R4 K83 ["Agent"]
      596 GETTABLE                         R12 R10 R13
      597 GETTABLEKS                       R13 R5 K37 ["UpdatePlan"]
      599 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      601 GETIMPORT                        R11 K86 [table.insert]
      603 CALL                             R11 2 0
      604 GETTABLEKS                       R13 R4 K83 ["Agent"]
      606 GETTABLE                         R12 R10 R13
      607 GETTABLEKS                       R13 R5 K47 ["CreateSkill"]
      609 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      611 GETIMPORT                        R11 K86 [table.insert]
      613 CALL                             R11 2 0
      614 GETTABLEKS                       R13 R4 K83 ["Agent"]
      616 GETTABLE                         R12 R10 R13
      617 GETTABLEKS                       R13 R5 K48 ["EditSkill"]
      619 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      621 GETIMPORT                        R11 K86 [table.insert]
      623 CALL                             R11 2 0
      624 GETTABLEKS                       R11 R3 K51 ["FFlagAssistantSegmentMeshTool"]
      626 JUMPIFNOT                        R11 ; [+10]
      627 GETTABLEKS                       R13 R4 K83 ["Agent"]
      629 GETTABLE                         R12 R10 R13
      630 GETTABLEKS                       R13 R5 K50 ["SegmentMesh"]
      632 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      634 GETIMPORT                        R11 K86 [table.insert]
      636 CALL                             R11 2 0
      637 GETTABLEKS                       R11 R3 K53 ["FFlagAssistantTextureGenTool"]
      639 JUMPIFNOT                        R11 ; [+10]
      640 GETTABLEKS                       R13 R4 K83 ["Agent"]
      642 GETTABLE                         R12 R10 R13
      643 GETTABLEKS                       R13 R5 K52 ["TextureGen"]
      645 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      647 GETIMPORT                        R11 K86 [table.insert]
      649 CALL                             R11 2 0
      650 GETTABLEKS                       R11 R1 K54 ["FlagUtils"]
      652 GETTABLEKS                       R11 R11 K87 ["getIsAskInputToolLLMEnabled"]
      654 CALL                             R11 0 1
      655 JUMPIFNOT                        R11 ; [+10]
      656 GETTABLEKS                       R13 R4 K83 ["Agent"]
      658 GETTABLE                         R12 R10 R13
      659 GETTABLEKS                       R13 R5 K56 ["AskInput"]
      661 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      663 GETIMPORT                        R11 K86 [table.insert]
      665 CALL                             R11 2 0
      666 GETTABLEKS                       R11 R4 K88 ["Plan"]
      668 NEWTABLE                         R12 0 9
      670 GETTABLEKS                       R13 R5 K30 ["ReadFile"]
      672 GETTABLEKS                       R14 R5 K19 ["FileSearch"]
      674 GETTABLEKS                       R15 R5 K21 ["GrepSearch"]
      676 GETTABLEKS                       R16 R5 K20 ["GameTree"]
      678 GETTABLEKS                       R17 R5 K22 ["InspectInstance"]
      680 GETTABLEKS                       R18 R5 K78 ["ScreenCapture"]
      682 GETTABLEKS                       R19 R5 K32 ["QuestionAnswer"]
      684 GETTABLEKS                       R20 R5 K35 ["FinalizePlan"]
      686 GETTABLEKS                       R22 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      688 JUMPIFNOT                        R22 ; [+3]
      689 GETTABLEKS                       R21 R5 K37 ["UpdatePlan"]
      691 JUMP                             ; [+1]
      692 LOADNIL                          R21
      693 SETLIST                          R12 R13 9 [1]
      695 SETTABLE                         R12 R10 R11
      696 GETTABLEKS                       R11 R1 K54 ["FlagUtils"]
      698 GETTABLEKS                       R11 R11 K87 ["getIsAskInputToolLLMEnabled"]
      700 CALL                             R11 0 1
      701 JUMPIFNOT                        R11 ; [+10]
      702 GETTABLEKS                       R13 R4 K88 ["Plan"]
      704 GETTABLE                         R12 R10 R13
      705 GETTABLEKS                       R13 R5 K56 ["AskInput"]
      707 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      709 GETIMPORT                        R11 K86 [table.insert]
      711 CALL                             R11 2 0
      712 NEWTABLE                         R11 0 15
      714 GETTABLEKS                       R12 R5 K18 ["ExecuteLuau"]
      716 GETTABLEKS                       R13 R5 K19 ["FileSearch"]
      718 GETTABLEKS                       R14 R5 K20 ["GameTree"]
      720 GETTABLEKS                       R15 R5 K21 ["GrepSearch"]
      722 GETTABLEKS                       R16 R5 K22 ["InspectInstance"]
      724 GETTABLEKS                       R17 R5 K30 ["ReadFile"]
      726 GETTABLEKS                       R18 R5 K45 ["Skill"]
      728 GETTABLEKS                       R19 R5 K34 ["Subagent"]
      730 GETTABLEKS                       R20 R5 K78 ["ScreenCapture"]
      732 GETTABLEKS                       R21 R5 K41 ["GetConsoleOutput"]
      734 GETTABLEKS                       R22 R5 K42 ["UserKeyboardInput"]
      736 GETTABLEKS                       R23 R5 K43 ["UserMouseInput"]
      738 GETTABLEKS                       R24 R5 K44 ["CharacterNavigation"]
      740 GETTABLEKS                       R25 R5 K62 ["MultiPlayerAgentsCommunication"]
      742 GETTABLEKS                       R26 R5 K63 ["WaitForMultiPlayerAgentsCommunication"]
      744 SETLIST                          R11 R12 15 [1]
      746 GETTABLEKS                       R12 R3 K70 ["FFlagAssistantGetStudioState"]
      748 JUMPIFNOT                        R12 ; [+8]
      749 GETTABLEKS                       R14 R5 K71 ["GetStudioState"]
      751 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
      753 MOVE                             R13 R11
      754 GETIMPORT                        R12 K86 [table.insert]
      756 CALL                             R12 2 0
      757 NEWTABLE                         R12 0 0
      759 GETTABLEKS                       R13 R3 K76 ["FFlagPlaytestVision"]
      761 JUMPIFNOT                        R13 ; [+8]
      762 GETTABLEKS                       R15 R5 K77 ["PlaytestLook"]
      764 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
      766 MOVE                             R14 R12
      767 GETIMPORT                        R13 K86 [table.insert]
      769 CALL                             R13 2 0
      770 DUPTABLE                         R13 K95 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools", "SubagentOnlyTools"}]
      771 SETTABLEKS                       R7 R13 K89 ["DefaultTools"]
      773 SETTABLEKS                       R8 R13 K90 ["ExperimentalTools"]
      775 SETTABLEKS                       R9 R13 K91 ["ExperimentFeatureTools"]
      777 SETTABLEKS                       R10 R13 K92 ["AssistantModeToolsAllowlist"]
      779 SETTABLEKS                       R11 R13 K93 ["MultiPlayerTestTools"]
      781 SETTABLEKS                       R12 R13 K94 ["SubagentOnlyTools"]
      783 RETURN                           R13 1
