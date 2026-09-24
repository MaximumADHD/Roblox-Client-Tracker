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
      160 GETTABLEKS                       R10 R5 K37 ["UpdatePlan"]
      162 GETTABLE                         R9 R6 R10
      163 SETTABLE                         R9 R7 R8
      164 GETTABLEKS                       R8 R5 K38 ["FromHistory"]
      166 GETTABLEKS                       R10 R5 K38 ["FromHistory"]
      168 GETTABLE                         R9 R6 R10
      169 SETTABLE                         R9 R7 R8
      170 GETTABLEKS                       R8 R5 K39 ["StartStopPlay"]
      172 GETTABLEKS                       R10 R5 K39 ["StartStopPlay"]
      174 GETTABLE                         R9 R6 R10
      175 SETTABLE                         R9 R7 R8
      176 GETTABLEKS                       R8 R5 K40 ["GetConsoleOutput"]
      178 GETTABLEKS                       R10 R5 K40 ["GetConsoleOutput"]
      180 GETTABLE                         R9 R6 R10
      181 SETTABLE                         R9 R7 R8
      182 GETTABLEKS                       R8 R5 K41 ["UserKeyboardInput"]
      184 GETTABLEKS                       R10 R5 K41 ["UserKeyboardInput"]
      186 GETTABLE                         R9 R6 R10
      187 SETTABLE                         R9 R7 R8
      188 GETTABLEKS                       R8 R5 K42 ["UserMouseInput"]
      190 GETTABLEKS                       R10 R5 K42 ["UserMouseInput"]
      192 GETTABLE                         R9 R6 R10
      193 SETTABLE                         R9 R7 R8
      194 GETTABLEKS                       R8 R5 K43 ["CharacterNavigation"]
      196 GETTABLEKS                       R10 R5 K43 ["CharacterNavigation"]
      198 GETTABLE                         R9 R6 R10
      199 SETTABLE                         R9 R7 R8
      200 GETTABLEKS                       R8 R5 K44 ["Skill"]
      202 GETTABLEKS                       R10 R5 K44 ["Skill"]
      204 GETTABLE                         R9 R6 R10
      205 SETTABLE                         R9 R7 R8
      206 GETTABLEKS                       R8 R5 K45 ["HttpGet"]
      208 GETTABLEKS                       R10 R5 K45 ["HttpGet"]
      210 GETTABLE                         R9 R6 R10
      211 SETTABLE                         R9 R7 R8
      212 GETTABLEKS                       R8 R5 K46 ["CreateSkill"]
      214 GETTABLEKS                       R10 R5 K46 ["CreateSkill"]
      216 GETTABLE                         R9 R6 R10
      217 SETTABLE                         R9 R7 R8
      218 GETTABLEKS                       R8 R5 K47 ["EditSkill"]
      220 GETTABLEKS                       R10 R5 K47 ["EditSkill"]
      222 GETTABLE                         R9 R6 R10
      223 SETTABLE                         R9 R7 R8
      224 GETTABLEKS                       R8 R5 K48 ["JobWait"]
      226 GETTABLEKS                       R10 R5 K48 ["JobWait"]
      228 GETTABLE                         R9 R6 R10
      229 SETTABLE                         R9 R7 R8
      230 GETTABLEKS                       R8 R5 K49 ["SegmentMesh"]
      232 GETTABLEKS                       R10 R3 K50 ["FFlagAssistantSegmentMeshTool"]
      234 JUMPIFNOT                        R10 ; [+4]
      235 GETTABLEKS                       R10 R5 K49 ["SegmentMesh"]
      237 GETTABLE                         R9 R6 R10
      238 JUMP                             ; [+1]
      239 LOADNIL                          R9
      240 SETTABLE                         R9 R7 R8
      241 GETTABLEKS                       R8 R5 K51 ["TextureGen"]
      243 GETTABLEKS                       R10 R3 K52 ["FFlagAssistantTextureGenTool"]
      245 JUMPIFNOT                        R10 ; [+4]
      246 GETTABLEKS                       R10 R5 K51 ["TextureGen"]
      248 GETTABLE                         R9 R6 R10
      249 JUMP                             ; [+1]
      250 LOADNIL                          R9
      251 SETTABLE                         R9 R7 R8
      252 GETTABLEKS                       R8 R5 K53 ["GenerateLayout"]
      254 GETTABLEKS                       R10 R3 K54 ["FFlagAssistantGenerateLayoutTool"]
      256 JUMPIFNOT                        R10 ; [+4]
      257 GETTABLEKS                       R10 R5 K53 ["GenerateLayout"]
      259 GETTABLE                         R9 R6 R10
      260 JUMP                             ; [+1]
      261 LOADNIL                          R9
      262 SETTABLE                         R9 R7 R8
      263 GETTABLEKS                       R8 R5 K55 ["GetStudioState"]
      265 GETTABLEKS                       R10 R5 K55 ["GetStudioState"]
      267 GETTABLE                         R9 R6 R10
      268 SETTABLE                         R9 R7 R8
      269 GETTABLEKS                       R8 R3 K56 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
      271 JUMPIF                           R8 ; [+6]
      272 GETTABLEKS                       R8 R5 K57 ["JobRun"]
      274 GETTABLEKS                       R10 R5 K57 ["JobRun"]
      276 GETTABLE                         R9 R6 R10
      277 SETTABLE                         R9 R7 R8
      278 GETTABLEKS                       R8 R3 K58 ["FFlagAssistantAskInputTool"]
      280 JUMPIFNOT                        R8 ; [+6]
      281 GETTABLEKS                       R8 R5 K59 ["AskInput"]
      283 GETTABLEKS                       R10 R5 K59 ["AskInput"]
      285 GETTABLE                         R9 R6 R10
      286 SETTABLE                         R9 R7 R8
      287 GETTABLEKS                       R8 R3 K60 ["FFlagAssistantMultiPlayerAgents"]
      289 JUMPIFNOT                        R8 ; [+24]
      290 GETTABLEKS                       R8 R5 K61 ["StartMultiPlayerAgents"]
      292 GETTABLEKS                       R10 R5 K61 ["StartMultiPlayerAgents"]
      294 GETTABLE                         R9 R6 R10
      295 SETTABLE                         R9 R7 R8
      296 GETTABLEKS                       R8 R5 K62 ["StopMultiPlayerAgents"]
      298 GETTABLEKS                       R10 R5 K62 ["StopMultiPlayerAgents"]
      300 GETTABLE                         R9 R6 R10
      301 SETTABLE                         R9 R7 R8
      302 GETTABLEKS                       R8 R5 K63 ["MultiPlayerAgentsCommunication"]
      304 GETTABLEKS                       R10 R5 K63 ["MultiPlayerAgentsCommunication"]
      306 GETTABLE                         R9 R6 R10
      307 SETTABLE                         R9 R7 R8
      308 GETTABLEKS                       R8 R5 K64 ["WaitForMultiPlayerAgentsCommunication"]
      310 GETTABLEKS                       R10 R5 K64 ["WaitForMultiPlayerAgentsCommunication"]
      312 GETTABLE                         R9 R6 R10
      313 SETTABLE                         R9 R7 R8
      314 GETTABLEKS                       R8 R3 K65 ["FFlagAssistantAssetSearchInsertTool"]
      316 JUMPIFNOT                        R8 ; [+13]
      317 GETTABLEKS                       R8 R5 K66 ["AssetInsert"]
      319 GETTABLEKS                       R10 R5 K66 ["AssetInsert"]
      321 GETTABLE                         R9 R6 R10
      322 SETTABLE                         R9 R7 R8
      323 GETTABLEKS                       R8 R5 K67 ["AssetSearch"]
      325 GETTABLEKS                       R10 R5 K67 ["AssetSearch"]
      327 GETTABLE                         R9 R6 R10
      328 SETTABLE                         R9 R7 R8
      329 JUMP                             ; [+15]
      330 GETTABLEKS                       R8 R3 K68 ["FFlagAssistantAssetSearchInsertToolABTest"]
      332 JUMPIF                           R8 ; [+12]
      333 GETTABLEKS                       R8 R5 K69 ["CreatorStoreSearch"]
      335 GETTABLEKS                       R10 R5 K69 ["CreatorStoreSearch"]
      337 GETTABLE                         R9 R6 R10
      338 SETTABLE                         R9 R7 R8
      339 GETTABLEKS                       R8 R5 K70 ["CreatorStoreInsert"]
      341 GETTABLEKS                       R10 R5 K70 ["CreatorStoreInsert"]
      343 GETTABLE                         R9 R6 R10
      344 SETTABLE                         R9 R7 R8
      345 GETTABLEKS                       R8 R3 K71 ["FFlagAssistantVideoCaptureTool"]
      347 JUMPIFNOT                        R8 ; [+6]
      348 GETTABLEKS                       R8 R5 K72 ["VideoCapture"]
      350 GETTABLEKS                       R10 R5 K72 ["VideoCapture"]
      352 GETTABLE                         R9 R6 R10
      353 SETTABLE                         R9 R7 R8
      354 GETTABLEKS                       R8 R3 K73 ["FFlagUseStudioSideListTool"]
      356 JUMPIFNOT                        R8 ; [+6]
      357 GETTABLEKS                       R8 R5 K74 ["ListRobloxStudios"]
      359 GETTABLEKS                       R10 R5 K74 ["ListRobloxStudios"]
      361 GETTABLE                         R9 R6 R10
      362 SETTABLE                         R9 R7 R8
      363 GETTABLEKS                       R8 R3 K75 ["FFlagPlaytestVision"]
      365 JUMPIFNOT                        R8 ; [+6]
      366 GETTABLEKS                       R8 R5 K76 ["PlaytestLook"]
      368 GETTABLEKS                       R10 R5 K76 ["PlaytestLook"]
      370 GETTABLE                         R9 R6 R10
      371 SETTABLE                         R9 R7 R8
      372 NEWTABLE                         R8 4 0
      374 GETTABLEKS                       R9 R5 K77 ["ScreenCapture"]
      376 GETTABLEKS                       R11 R5 K77 ["ScreenCapture"]
      378 GETTABLE                         R10 R6 R11
      379 SETTABLE                         R10 R8 R9
      380 GETTABLEKS                       R9 R5 K78 ["UploadImage"]
      382 GETTABLEKS                       R11 R3 K79 ["FFlagEnableAssistantImageUpload"]
      384 JUMPIFNOT                        R11 ; [+4]
      385 GETTABLEKS                       R11 R5 K78 ["UploadImage"]
      387 GETTABLE                         R10 R6 R11
      388 JUMP                             ; [+1]
      389 LOADNIL                          R10
      390 SETTABLE                         R10 R8 R9
      391 GETTABLEKS                       R9 R5 K69 ["CreatorStoreSearch"]
      393 GETTABLEKS                       R11 R3 K68 ["FFlagAssistantAssetSearchInsertToolABTest"]
      395 JUMPIFNOT                        R11 ; [+4]
      396 GETTABLEKS                       R11 R5 K69 ["CreatorStoreSearch"]
      398 GETTABLE                         R10 R6 R11
      399 JUMP                             ; [+1]
      400 LOADNIL                          R10
      401 SETTABLE                         R10 R8 R9
      402 GETTABLEKS                       R9 R5 K70 ["CreatorStoreInsert"]
      404 GETTABLEKS                       R11 R3 K68 ["FFlagAssistantAssetSearchInsertToolABTest"]
      406 JUMPIFNOT                        R11 ; [+4]
      407 GETTABLEKS                       R11 R5 K70 ["CreatorStoreInsert"]
      409 GETTABLE                         R10 R6 R11
      410 JUMP                             ; [+1]
      411 LOADNIL                          R10
      412 SETTABLE                         R10 R8 R9
      413 NEWTABLE                         R9 1 0
      415 GETTABLEKS                       R10 R2 K80 ["FeatureNames"]
      417 GETTABLEKS                       R10 R10 K81 ["NewAssetToolSet"]
      419 NEWTABLE                         R11 2 0
      421 GETTABLEKS                       R12 R5 K66 ["AssetInsert"]
      423 GETTABLEKS                       R14 R3 K68 ["FFlagAssistantAssetSearchInsertToolABTest"]
      425 JUMPIFNOT                        R14 ; [+7]
      426 GETTABLEKS                       R14 R3 K65 ["FFlagAssistantAssetSearchInsertTool"]
      428 JUMPIF                           R14 ; [+4]
      429 GETTABLEKS                       R14 R5 K66 ["AssetInsert"]
      431 GETTABLE                         R13 R6 R14
      432 JUMP                             ; [+1]
      433 LOADNIL                          R13
      434 SETTABLE                         R13 R11 R12
      435 GETTABLEKS                       R12 R5 K67 ["AssetSearch"]
      437 GETTABLEKS                       R14 R3 K68 ["FFlagAssistantAssetSearchInsertToolABTest"]
      439 JUMPIFNOT                        R14 ; [+7]
      440 GETTABLEKS                       R14 R3 K65 ["FFlagAssistantAssetSearchInsertTool"]
      442 JUMPIF                           R14 ; [+4]
      443 GETTABLEKS                       R14 R5 K67 ["AssetSearch"]
      445 GETTABLE                         R13 R6 R14
      446 JUMP                             ; [+1]
      447 LOADNIL                          R13
      448 SETTABLE                         R13 R11 R12
      449 SETTABLE                         R11 R9 R10
      450 NEWTABLE                         R10 1 0
      452 GETTABLEKS                       R11 R4 K82 ["Agent"]
      454 NEWTABLE                         R12 0 34
      456 GETTABLEKS                       R13 R5 K18 ["ExecuteLuau"]
      458 GETTABLEKS                       R14 R5 K19 ["FileSearch"]
      460 GETTABLEKS                       R15 R5 K20 ["GameTree"]
      462 GETTABLEKS                       R16 R5 K21 ["GrepSearch"]
      464 GETTABLEKS                       R17 R5 K70 ["CreatorStoreInsert"]
      466 GETTABLEKS                       R18 R5 K69 ["CreatorStoreSearch"]
      468 GETTABLEKS                       R19 R5 K66 ["AssetInsert"]
      470 GETTABLEKS                       R20 R5 K67 ["AssetSearch"]
      472 GETTABLEKS                       R21 R5 K22 ["InspectInstance"]
      474 GETTABLEKS                       R22 R5 K23 ["MaterialGen"]
      476 GETTABLEKS                       R23 R5 K28 ["MeshGen"]
      478 GETTABLEKS                       R24 R5 K29 ["MultiEdit"]
      480 GETTABLEKS                       R25 R5 K30 ["ReadFile"]
      482 GETTABLEKS                       R26 R5 K31 ["PrimitiveGen"]
      484 GETTABLEKS                       R27 R5 K44 ["Skill"]
      486 GETTABLEKS                       R28 R5 K34 ["Subagent"]
      488 SETLIST                          R12 R13 16 [1]
      490 GETTABLEKS                       R13 R5 K77 ["ScreenCapture"]
      492 GETTABLEKS                       R14 R5 K78 ["UploadImage"]
      494 GETTABLEKS                       R15 R5 K61 ["StartMultiPlayerAgents"]
      496 GETTABLEKS                       R16 R5 K62 ["StopMultiPlayerAgents"]
      498 GETTABLEKS                       R17 R5 K63 ["MultiPlayerAgentsCommunication"]
      500 GETTABLEKS                       R18 R5 K64 ["WaitForMultiPlayerAgentsCommunication"]
      502 GETTABLEKS                       R19 R5 K45 ["HttpGet"]
      504 GETTABLEKS                       R20 R5 K38 ["FromHistory"]
      506 GETTABLEKS                       R21 R5 K39 ["StartStopPlay"]
      508 GETTABLEKS                       R22 R5 K40 ["GetConsoleOutput"]
      510 GETTABLEKS                       R23 R5 K41 ["UserKeyboardInput"]
      512 GETTABLEKS                       R24 R5 K42 ["UserMouseInput"]
      514 GETTABLEKS                       R25 R5 K43 ["CharacterNavigation"]
      516 GETTABLEKS                       R26 R5 K72 ["VideoCapture"]
      518 GETTABLEKS                       R27 R5 K32 ["QuestionAnswer"]
      520 GETTABLEKS                       R28 R5 K36 ["CompleteTodoItems"]
      522 SETLIST                          R12 R13 16 [17]
      524 GETTABLEKS                       R13 R5 K48 ["JobWait"]
      526 GETTABLEKS                       R14 R5 K55 ["GetStudioState"]
      528 SETLIST                          R12 R13 2 [33]
      530 SETTABLE                         R12 R10 R11
      531 GETTABLEKS                       R11 R3 K56 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
      533 JUMPIF                           R11 ; [+10]
      534 GETTABLEKS                       R13 R4 K82 ["Agent"]
      536 GETTABLE                         R12 R10 R13
      537 GETTABLEKS                       R13 R5 K57 ["JobRun"]
      539 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      541 GETIMPORT                        R11 K85 [table.insert]
      543 CALL                             R11 2 0
      544 GETTABLEKS                       R13 R4 K82 ["Agent"]
      546 GETTABLE                         R12 R10 R13
      547 GETTABLEKS                       R13 R5 K33 ["StoreImage"]
      549 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      551 GETIMPORT                        R11 K85 [table.insert]
      553 CALL                             R11 2 0
      554 GETTABLEKS                       R11 R3 K25 ["FFlagAssistantAnimationGenTool"]
      556 JUMPIFNOT                        R11 ; [+10]
      557 GETTABLEKS                       R13 R4 K82 ["Agent"]
      559 GETTABLE                         R12 R10 R13
      560 GETTABLEKS                       R13 R5 K24 ["AnimationGen"]
      562 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      564 GETIMPORT                        R11 K85 [table.insert]
      566 CALL                             R11 2 0
      567 GETTABLEKS                       R11 R3 K27 ["FFlagAssistantAvatarAutoSetupTool"]
      569 JUMPIFNOT                        R11 ; [+10]
      570 GETTABLEKS                       R13 R4 K82 ["Agent"]
      572 GETTABLE                         R12 R10 R13
      573 GETTABLEKS                       R13 R5 K26 ["AvatarAutoSetup"]
      575 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      577 GETIMPORT                        R11 K85 [table.insert]
      579 CALL                             R11 2 0
      580 GETTABLEKS                       R13 R4 K82 ["Agent"]
      582 GETTABLE                         R12 R10 R13
      583 GETTABLEKS                       R13 R5 K37 ["UpdatePlan"]
      585 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      587 GETIMPORT                        R11 K85 [table.insert]
      589 CALL                             R11 2 0
      590 GETTABLEKS                       R13 R4 K82 ["Agent"]
      592 GETTABLE                         R12 R10 R13
      593 GETTABLEKS                       R13 R5 K46 ["CreateSkill"]
      595 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      597 GETIMPORT                        R11 K85 [table.insert]
      599 CALL                             R11 2 0
      600 GETTABLEKS                       R13 R4 K82 ["Agent"]
      602 GETTABLE                         R12 R10 R13
      603 GETTABLEKS                       R13 R5 K47 ["EditSkill"]
      605 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      607 GETIMPORT                        R11 K85 [table.insert]
      609 CALL                             R11 2 0
      610 GETTABLEKS                       R11 R3 K50 ["FFlagAssistantSegmentMeshTool"]
      612 JUMPIFNOT                        R11 ; [+10]
      613 GETTABLEKS                       R13 R4 K82 ["Agent"]
      615 GETTABLE                         R12 R10 R13
      616 GETTABLEKS                       R13 R5 K49 ["SegmentMesh"]
      618 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      620 GETIMPORT                        R11 K85 [table.insert]
      622 CALL                             R11 2 0
      623 GETTABLEKS                       R11 R3 K52 ["FFlagAssistantTextureGenTool"]
      625 JUMPIFNOT                        R11 ; [+10]
      626 GETTABLEKS                       R13 R4 K82 ["Agent"]
      628 GETTABLE                         R12 R10 R13
      629 GETTABLEKS                       R13 R5 K51 ["TextureGen"]
      631 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      633 GETIMPORT                        R11 K85 [table.insert]
      635 CALL                             R11 2 0
      636 GETTABLEKS                       R11 R3 K54 ["FFlagAssistantGenerateLayoutTool"]
      638 JUMPIFNOT                        R11 ; [+10]
      639 GETTABLEKS                       R13 R4 K82 ["Agent"]
      641 GETTABLE                         R12 R10 R13
      642 GETTABLEKS                       R13 R5 K53 ["GenerateLayout"]
      644 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      646 GETIMPORT                        R11 K85 [table.insert]
      648 CALL                             R11 2 0
      649 GETTABLEKS                       R11 R1 K86 ["FlagUtils"]
      651 GETTABLEKS                       R11 R11 K87 ["getIsAskInputToolLLMEnabled"]
      653 CALL                             R11 0 1
      654 JUMPIFNOT                        R11 ; [+10]
      655 GETTABLEKS                       R13 R4 K82 ["Agent"]
      657 GETTABLE                         R12 R10 R13
      658 GETTABLEKS                       R13 R5 K59 ["AskInput"]
      660 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      662 GETIMPORT                        R11 K85 [table.insert]
      664 CALL                             R11 2 0
      665 GETTABLEKS                       R11 R4 K88 ["Plan"]
      667 NEWTABLE                         R12 0 9
      669 GETTABLEKS                       R13 R5 K30 ["ReadFile"]
      671 GETTABLEKS                       R14 R5 K19 ["FileSearch"]
      673 GETTABLEKS                       R15 R5 K21 ["GrepSearch"]
      675 GETTABLEKS                       R16 R5 K20 ["GameTree"]
      677 GETTABLEKS                       R17 R5 K22 ["InspectInstance"]
      679 GETTABLEKS                       R18 R5 K77 ["ScreenCapture"]
      681 GETTABLEKS                       R19 R5 K32 ["QuestionAnswer"]
      683 GETTABLEKS                       R20 R5 K35 ["FinalizePlan"]
      685 GETTABLEKS                       R21 R5 K37 ["UpdatePlan"]
      687 SETLIST                          R12 R13 9 [1]
      689 SETTABLE                         R12 R10 R11
      690 GETTABLEKS                       R11 R1 K86 ["FlagUtils"]
      692 GETTABLEKS                       R11 R11 K87 ["getIsAskInputToolLLMEnabled"]
      694 CALL                             R11 0 1
      695 JUMPIFNOT                        R11 ; [+10]
      696 GETTABLEKS                       R13 R4 K88 ["Plan"]
      698 GETTABLE                         R12 R10 R13
      699 GETTABLEKS                       R13 R5 K59 ["AskInput"]
      701 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      703 GETIMPORT                        R11 K85 [table.insert]
      705 CALL                             R11 2 0
      706 NEWTABLE                         R11 0 16
      708 GETTABLEKS                       R12 R5 K18 ["ExecuteLuau"]
      710 GETTABLEKS                       R13 R5 K19 ["FileSearch"]
      712 GETTABLEKS                       R14 R5 K20 ["GameTree"]
      714 GETTABLEKS                       R15 R5 K21 ["GrepSearch"]
      716 GETTABLEKS                       R16 R5 K22 ["InspectInstance"]
      718 GETTABLEKS                       R17 R5 K30 ["ReadFile"]
      720 GETTABLEKS                       R18 R5 K44 ["Skill"]
      722 GETTABLEKS                       R19 R5 K34 ["Subagent"]
      724 GETTABLEKS                       R20 R5 K77 ["ScreenCapture"]
      726 GETTABLEKS                       R21 R5 K40 ["GetConsoleOutput"]
      728 GETTABLEKS                       R22 R5 K41 ["UserKeyboardInput"]
      730 GETTABLEKS                       R23 R5 K42 ["UserMouseInput"]
      732 GETTABLEKS                       R24 R5 K43 ["CharacterNavigation"]
      734 GETTABLEKS                       R25 R5 K63 ["MultiPlayerAgentsCommunication"]
      736 GETTABLEKS                       R26 R5 K64 ["WaitForMultiPlayerAgentsCommunication"]
      738 GETTABLEKS                       R27 R5 K55 ["GetStudioState"]
      740 SETLIST                          R11 R12 16 [1]
      742 NEWTABLE                         R12 0 0
      744 GETTABLEKS                       R13 R3 K75 ["FFlagPlaytestVision"]
      746 JUMPIFNOT                        R13 ; [+8]
      747 GETTABLEKS                       R15 R5 K76 ["PlaytestLook"]
      749 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
      751 MOVE                             R14 R12
      752 GETIMPORT                        R13 K85 [table.insert]
      754 CALL                             R13 2 0
      755 DUPTABLE                         R13 K95 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools", "SubagentOnlyTools"}]
      756 SETTABLEKS                       R7 R13 K89 ["DefaultTools"]
      758 SETTABLEKS                       R8 R13 K90 ["ExperimentalTools"]
      760 SETTABLEKS                       R9 R13 K91 ["ExperimentFeatureTools"]
      762 SETTABLEKS                       R10 R13 K92 ["AssistantModeToolsAllowlist"]
      764 SETTABLEKS                       R11 R13 K93 ["MultiPlayerTestTools"]
      766 SETTABLEKS                       R12 R13 K94 ["SubagentOnlyTools"]
      768 RETURN                           R13 1
