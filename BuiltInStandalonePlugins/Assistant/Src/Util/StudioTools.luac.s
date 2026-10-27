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
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["Types"]
       23 GETTABLEKS                       R3 R3 K11 ["AssistantMode"]
       25 GETTABLEKS                       R4 R1 K12 ["Tools"]
       27 GETTABLEKS                       R4 R4 K13 ["ToolTypes"]
       29 GETTABLEKS                       R4 R4 K14 ["ToolNames"]
       31 GETTABLEKS                       R5 R1 K12 ["Tools"]
       33 GETTABLEKS                       R5 R5 K15 ["BuiltinTools"]
       35 NEWTABLE                         R6 64 0
       37 GETTABLEKS                       R7 R4 K16 ["AnimationGen"]
       39 GETTABLEKS                       R9 R2 K17 ["FFlagAssistantAnimationGenTool"]
       41 JUMPIFNOT                        R9 ; [+4]
       42 GETTABLEKS                       R9 R4 K16 ["AnimationGen"]
       44 GETTABLE                         R8 R5 R9
       45 JUMP                             ; [+1]
       46 LOADNIL                          R8
       47 SETTABLE                         R8 R6 R7
       48 GETTABLEKS                       R7 R4 K18 ["AskInput"]
       50 GETTABLEKS                       R9 R4 K18 ["AskInput"]
       52 GETTABLE                         R8 R5 R9
       53 SETTABLE                         R8 R6 R7
       54 GETTABLEKS                       R7 R4 K19 ["AssetInsert"]
       56 GETTABLEKS                       R9 R4 K19 ["AssetInsert"]
       58 GETTABLE                         R8 R5 R9
       59 SETTABLE                         R8 R6 R7
       60 GETTABLEKS                       R7 R4 K20 ["AssetSearch"]
       62 GETTABLEKS                       R9 R4 K20 ["AssetSearch"]
       64 GETTABLE                         R8 R5 R9
       65 SETTABLE                         R8 R6 R7
       66 GETTABLEKS                       R7 R4 K21 ["AvatarAutoSetup"]
       68 GETTABLEKS                       R9 R2 K22 ["FFlagAssistantAvatarAutoSetupTool"]
       70 JUMPIFNOT                        R9 ; [+4]
       71 GETTABLEKS                       R9 R4 K21 ["AvatarAutoSetup"]
       73 GETTABLE                         R8 R5 R9
       74 JUMP                             ; [+1]
       75 LOADNIL                          R8
       76 SETTABLE                         R8 R6 R7
       77 GETTABLEKS                       R7 R4 K23 ["AvatarGen"]
       79 GETTABLEKS                       R9 R2 K24 ["FFlagAssistantAvatarGenTool"]
       81 JUMPIFNOT                        R9 ; [+4]
       82 GETTABLEKS                       R9 R4 K23 ["AvatarGen"]
       84 GETTABLE                         R8 R5 R9
       85 JUMP                             ; [+1]
       86 LOADNIL                          R8
       87 SETTABLE                         R8 R6 R7
       88 GETTABLEKS                       R7 R4 K25 ["CharacterNavigation"]
       90 GETTABLEKS                       R9 R4 K25 ["CharacterNavigation"]
       92 GETTABLE                         R8 R5 R9
       93 SETTABLE                         R8 R6 R7
       94 GETTABLEKS                       R7 R4 K26 ["CompleteTodoItems"]
       96 GETTABLEKS                       R9 R4 K26 ["CompleteTodoItems"]
       98 GETTABLE                         R8 R5 R9
       99 SETTABLE                         R8 R6 R7
      100 GETTABLEKS                       R7 R4 K27 ["CreateSkill"]
      102 GETTABLEKS                       R9 R4 K27 ["CreateSkill"]
      104 GETTABLE                         R8 R5 R9
      105 SETTABLE                         R8 R6 R7
      106 GETTABLEKS                       R7 R4 K28 ["EditSkill"]
      108 GETTABLEKS                       R9 R4 K28 ["EditSkill"]
      110 GETTABLE                         R8 R5 R9
      111 SETTABLE                         R8 R6 R7
      112 GETTABLEKS                       R7 R4 K29 ["ExecuteLuau"]
      114 GETTABLEKS                       R9 R4 K29 ["ExecuteLuau"]
      116 GETTABLE                         R8 R5 R9
      117 SETTABLE                         R8 R6 R7
      118 GETTABLEKS                       R7 R4 K30 ["FileSearch"]
      120 GETTABLEKS                       R9 R4 K30 ["FileSearch"]
      122 GETTABLE                         R8 R5 R9
      123 SETTABLE                         R8 R6 R7
      124 GETTABLEKS                       R7 R4 K31 ["FinalizePlan"]
      126 GETTABLEKS                       R9 R4 K31 ["FinalizePlan"]
      128 GETTABLE                         R8 R5 R9
      129 SETTABLE                         R8 R6 R7
      130 GETTABLEKS                       R7 R4 K32 ["FromHistory"]
      132 GETTABLEKS                       R9 R4 K32 ["FromHistory"]
      134 GETTABLE                         R8 R5 R9
      135 SETTABLE                         R8 R6 R7
      136 GETTABLEKS                       R7 R4 K33 ["GameTree"]
      138 GETTABLEKS                       R9 R4 K33 ["GameTree"]
      140 GETTABLE                         R8 R5 R9
      141 SETTABLE                         R8 R6 R7
      142 GETTABLEKS                       R7 R4 K34 ["GenerateScene"]
      144 GETTABLEKS                       R9 R2 K35 ["FFlagAssistantGenerateLayoutTool"]
      146 JUMPIFNOT                        R9 ; [+4]
      147 GETTABLEKS                       R9 R4 K34 ["GenerateScene"]
      149 GETTABLE                         R8 R5 R9
      150 JUMP                             ; [+1]
      151 LOADNIL                          R8
      152 SETTABLE                         R8 R6 R7
      153 GETTABLEKS                       R7 R4 K36 ["GetConsoleOutput"]
      155 GETTABLEKS                       R9 R4 K36 ["GetConsoleOutput"]
      157 GETTABLE                         R8 R5 R9
      158 SETTABLE                         R8 R6 R7
      159 GETTABLEKS                       R7 R4 K37 ["GetStudioState"]
      161 GETTABLEKS                       R9 R4 K37 ["GetStudioState"]
      163 GETTABLE                         R8 R5 R9
      164 SETTABLE                         R8 R6 R7
      165 GETTABLEKS                       R7 R4 K38 ["GrepSearch"]
      167 GETTABLEKS                       R9 R4 K38 ["GrepSearch"]
      169 GETTABLE                         R8 R5 R9
      170 SETTABLE                         R8 R6 R7
      171 GETTABLEKS                       R7 R4 K39 ["HttpGet"]
      173 GETTABLEKS                       R9 R4 K39 ["HttpGet"]
      175 GETTABLE                         R8 R5 R9
      176 SETTABLE                         R8 R6 R7
      177 GETTABLEKS                       R7 R4 K40 ["InspectInstance"]
      179 GETTABLEKS                       R9 R4 K40 ["InspectInstance"]
      181 GETTABLE                         R8 R5 R9
      182 SETTABLE                         R8 R6 R7
      183 GETTABLEKS                       R7 R4 K41 ["JobWait"]
      185 GETTABLEKS                       R9 R4 K41 ["JobWait"]
      187 GETTABLE                         R8 R5 R9
      188 SETTABLE                         R8 R6 R7
      189 GETTABLEKS                       R7 R4 K42 ["MaterialGen"]
      191 GETTABLEKS                       R9 R4 K42 ["MaterialGen"]
      193 GETTABLE                         R8 R5 R9
      194 SETTABLE                         R8 R6 R7
      195 GETTABLEKS                       R7 R4 K43 ["MeshGen"]
      197 GETTABLEKS                       R9 R4 K43 ["MeshGen"]
      199 GETTABLE                         R8 R5 R9
      200 SETTABLE                         R8 R6 R7
      201 GETTABLEKS                       R7 R4 K44 ["MultiEdit"]
      203 GETTABLEKS                       R9 R4 K44 ["MultiEdit"]
      205 GETTABLE                         R8 R5 R9
      206 SETTABLE                         R8 R6 R7
      207 GETTABLEKS                       R7 R4 K45 ["PrimitiveGen"]
      209 GETTABLEKS                       R9 R4 K45 ["PrimitiveGen"]
      211 GETTABLE                         R8 R5 R9
      212 SETTABLE                         R8 R6 R7
      213 GETTABLEKS                       R7 R4 K46 ["QuestionAnswer"]
      215 GETTABLEKS                       R9 R4 K46 ["QuestionAnswer"]
      217 GETTABLE                         R8 R5 R9
      218 SETTABLE                         R8 R6 R7
      219 GETTABLEKS                       R7 R4 K47 ["ReadFile"]
      221 GETTABLEKS                       R9 R4 K47 ["ReadFile"]
      223 GETTABLE                         R8 R5 R9
      224 SETTABLE                         R8 R6 R7
      225 GETTABLEKS                       R7 R4 K48 ["SegmentMesh"]
      227 GETTABLEKS                       R9 R2 K49 ["FFlagAssistantSegmentMeshTool"]
      229 JUMPIFNOT                        R9 ; [+4]
      230 GETTABLEKS                       R9 R4 K48 ["SegmentMesh"]
      232 GETTABLE                         R8 R5 R9
      233 JUMP                             ; [+1]
      234 LOADNIL                          R8
      235 SETTABLE                         R8 R6 R7
      236 GETTABLEKS                       R7 R4 K50 ["Skill"]
      238 GETTABLEKS                       R9 R4 K50 ["Skill"]
      240 GETTABLE                         R8 R5 R9
      241 SETTABLE                         R8 R6 R7
      242 GETTABLEKS                       R7 R4 K51 ["StartStopPlay"]
      244 GETTABLEKS                       R9 R4 K51 ["StartStopPlay"]
      246 GETTABLE                         R8 R5 R9
      247 SETTABLE                         R8 R6 R7
      248 GETTABLEKS                       R7 R4 K52 ["StoreImage"]
      250 GETTABLEKS                       R9 R4 K52 ["StoreImage"]
      252 GETTABLE                         R8 R5 R9
      253 SETTABLE                         R8 R6 R7
      254 GETTABLEKS                       R7 R4 K53 ["Subagent"]
      256 GETTABLEKS                       R9 R4 K53 ["Subagent"]
      258 GETTABLE                         R8 R5 R9
      259 SETTABLE                         R8 R6 R7
      260 GETTABLEKS                       R7 R4 K54 ["TextureGen"]
      262 GETTABLEKS                       R9 R2 K55 ["FFlagAssistantTextureGenTool"]
      264 JUMPIFNOT                        R9 ; [+4]
      265 GETTABLEKS                       R9 R4 K54 ["TextureGen"]
      267 GETTABLE                         R8 R5 R9
      268 JUMP                             ; [+1]
      269 LOADNIL                          R8
      270 SETTABLE                         R8 R6 R7
      271 GETTABLEKS                       R7 R4 K56 ["UpdatePlan"]
      273 GETTABLEKS                       R9 R4 K56 ["UpdatePlan"]
      275 GETTABLE                         R8 R5 R9
      276 SETTABLE                         R8 R6 R7
      277 GETTABLEKS                       R7 R4 K57 ["UserKeyboardInput"]
      279 GETTABLEKS                       R9 R4 K57 ["UserKeyboardInput"]
      281 GETTABLE                         R8 R5 R9
      282 SETTABLE                         R8 R6 R7
      283 GETTABLEKS                       R7 R4 K58 ["UserMouseInput"]
      285 GETTABLEKS                       R9 R4 K58 ["UserMouseInput"]
      287 GETTABLE                         R8 R5 R9
      288 SETTABLE                         R8 R6 R7
      289 GETTABLEKS                       R7 R2 K59 ["FFlagAssistantMultiPlayerAgents"]
      291 JUMPIFNOT                        R7 ; [+24]
      292 GETTABLEKS                       R7 R4 K60 ["StartMultiPlayerAgents"]
      294 GETTABLEKS                       R9 R4 K60 ["StartMultiPlayerAgents"]
      296 GETTABLE                         R8 R5 R9
      297 SETTABLE                         R8 R6 R7
      298 GETTABLEKS                       R7 R4 K61 ["StopMultiPlayerAgents"]
      300 GETTABLEKS                       R9 R4 K61 ["StopMultiPlayerAgents"]
      302 GETTABLE                         R8 R5 R9
      303 SETTABLE                         R8 R6 R7
      304 GETTABLEKS                       R7 R4 K62 ["MultiPlayerAgentsCommunication"]
      306 GETTABLEKS                       R9 R4 K62 ["MultiPlayerAgentsCommunication"]
      308 GETTABLE                         R8 R5 R9
      309 SETTABLE                         R8 R6 R7
      310 GETTABLEKS                       R7 R4 K63 ["WaitForMultiPlayerAgentsCommunication"]
      312 GETTABLEKS                       R9 R4 K63 ["WaitForMultiPlayerAgentsCommunication"]
      314 GETTABLE                         R8 R5 R9
      315 SETTABLE                         R8 R6 R7
      316 GETTABLEKS                       R7 R2 K64 ["FFlagAssistantVideoCaptureTool"]
      318 JUMPIFNOT                        R7 ; [+6]
      319 GETTABLEKS                       R7 R4 K65 ["VideoCapture"]
      321 GETTABLEKS                       R9 R4 K65 ["VideoCapture"]
      323 GETTABLE                         R8 R5 R9
      324 SETTABLE                         R8 R6 R7
      325 GETTABLEKS                       R7 R2 K66 ["FFlagAssistantCapturePluginGuiTool"]
      327 JUMPIFNOT                        R7 ; [+12]
      328 GETTABLEKS                       R7 R4 K67 ["ListPluginGuis"]
      330 GETTABLEKS                       R9 R4 K67 ["ListPluginGuis"]
      332 GETTABLE                         R8 R5 R9
      333 SETTABLE                         R8 R6 R7
      334 GETTABLEKS                       R7 R4 K68 ["CapturePluginGui"]
      336 GETTABLEKS                       R9 R4 K68 ["CapturePluginGui"]
      338 GETTABLE                         R8 R5 R9
      339 SETTABLE                         R8 R6 R7
      340 GETTABLEKS                       R7 R2 K69 ["FFlagAssistantOpenCloudInvokeTool"]
      342 JUMPIFNOT                        R7 ; [+12]
      343 GETTABLEKS                       R7 R2 K70 ["EngineFeatureAssistantExecuteLuauArguments"]
      345 JUMPIFNOT                        R7 ; [+9]
      346 GETTABLEKS                       R7 R2 K71 ["FFlagAssistantUseNewDMNetworking"]
      348 JUMPIFNOT                        R7 ; [+6]
      349 GETTABLEKS                       R7 R4 K72 ["OpenCloudInvoke"]
      351 GETTABLEKS                       R9 R4 K72 ["OpenCloudInvoke"]
      353 GETTABLE                         R8 R5 R9
      354 SETTABLE                         R8 R6 R7
      355 GETTABLEKS                       R7 R2 K73 ["FFlagUseStudioSideListTool"]
      357 JUMPIFNOT                        R7 ; [+6]
      358 GETTABLEKS                       R7 R4 K74 ["ListRobloxStudios"]
      360 GETTABLEKS                       R9 R4 K74 ["ListRobloxStudios"]
      362 GETTABLE                         R8 R5 R9
      363 SETTABLE                         R8 R6 R7
      364 GETTABLEKS                       R7 R2 K75 ["FFlagAssistantMcpListSkillsTool"]
      366 JUMPIFNOT                        R7 ; [+6]
      367 GETTABLEKS                       R7 R4 K76 ["ListSkills"]
      369 GETTABLEKS                       R9 R4 K76 ["ListSkills"]
      371 GETTABLE                         R8 R5 R9
      372 SETTABLE                         R8 R6 R7
      373 GETTABLEKS                       R7 R2 K77 ["FFlagPlaytestVision"]
      375 JUMPIFNOT                        R7 ; [+6]
      376 GETTABLEKS                       R7 R4 K78 ["PlaytestLook"]
      378 GETTABLEKS                       R9 R4 K78 ["PlaytestLook"]
      380 GETTABLE                         R8 R5 R9
      381 SETTABLE                         R8 R6 R7
      382 NEWTABLE                         R7 2 0
      384 GETTABLEKS                       R8 R4 K79 ["ScreenCapture"]
      386 GETTABLEKS                       R10 R4 K79 ["ScreenCapture"]
      388 GETTABLE                         R9 R5 R10
      389 SETTABLE                         R9 R7 R8
      390 GETTABLEKS                       R8 R4 K80 ["UploadImage"]
      392 GETTABLEKS                       R10 R2 K81 ["FFlagEnableAssistantImageUpload"]
      394 JUMPIFNOT                        R10 ; [+4]
      395 GETTABLEKS                       R10 R4 K80 ["UploadImage"]
      397 GETTABLE                         R9 R5 R10
      398 JUMP                             ; [+1]
      399 LOADNIL                          R9
      400 SETTABLE                         R9 R7 R8
      401 NEWTABLE                         R8 0 0
      403 NEWTABLE                         R9 1 0
      405 GETTABLEKS                       R10 R3 K82 ["Agent"]
      407 NEWTABLE                         R11 0 32
      409 GETTABLEKS                       R12 R4 K29 ["ExecuteLuau"]
      411 GETTABLEKS                       R13 R4 K30 ["FileSearch"]
      413 GETTABLEKS                       R14 R4 K33 ["GameTree"]
      415 GETTABLEKS                       R15 R4 K38 ["GrepSearch"]
      417 GETTABLEKS                       R16 R4 K19 ["AssetInsert"]
      419 GETTABLEKS                       R17 R4 K20 ["AssetSearch"]
      421 GETTABLEKS                       R18 R4 K40 ["InspectInstance"]
      423 GETTABLEKS                       R19 R4 K42 ["MaterialGen"]
      425 GETTABLEKS                       R20 R4 K43 ["MeshGen"]
      427 GETTABLEKS                       R21 R4 K44 ["MultiEdit"]
      429 GETTABLEKS                       R22 R4 K47 ["ReadFile"]
      431 GETTABLEKS                       R23 R4 K45 ["PrimitiveGen"]
      433 GETTABLEKS                       R24 R4 K50 ["Skill"]
      435 GETTABLEKS                       R25 R4 K53 ["Subagent"]
      437 GETTABLEKS                       R26 R4 K79 ["ScreenCapture"]
      439 GETTABLEKS                       R27 R4 K80 ["UploadImage"]
      441 SETLIST                          R11 R12 16 [1]
      443 GETTABLEKS                       R12 R4 K60 ["StartMultiPlayerAgents"]
      445 GETTABLEKS                       R13 R4 K61 ["StopMultiPlayerAgents"]
      447 GETTABLEKS                       R14 R4 K62 ["MultiPlayerAgentsCommunication"]
      449 GETTABLEKS                       R15 R4 K63 ["WaitForMultiPlayerAgentsCommunication"]
      451 GETTABLEKS                       R16 R4 K39 ["HttpGet"]
      453 GETTABLEKS                       R17 R4 K32 ["FromHistory"]
      455 GETTABLEKS                       R18 R4 K51 ["StartStopPlay"]
      457 GETTABLEKS                       R19 R4 K36 ["GetConsoleOutput"]
      459 GETTABLEKS                       R20 R4 K57 ["UserKeyboardInput"]
      461 GETTABLEKS                       R21 R4 K58 ["UserMouseInput"]
      463 GETTABLEKS                       R22 R4 K25 ["CharacterNavigation"]
      465 GETTABLEKS                       R23 R4 K65 ["VideoCapture"]
      467 GETTABLEKS                       R24 R4 K46 ["QuestionAnswer"]
      469 GETTABLEKS                       R25 R4 K26 ["CompleteTodoItems"]
      471 GETTABLEKS                       R26 R4 K41 ["JobWait"]
      473 GETTABLEKS                       R27 R4 K37 ["GetStudioState"]
      475 SETLIST                          R11 R12 16 [17]
      477 SETTABLE                         R11 R9 R10
      478 GETTABLEKS                       R12 R3 K82 ["Agent"]
      480 GETTABLE                         R11 R9 R12
      481 GETTABLEKS                       R12 R4 K52 ["StoreImage"]
      483 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      485 GETIMPORT                        R10 K85 [table.insert]
      487 CALL                             R10 2 0
      488 GETTABLEKS                       R10 R2 K17 ["FFlagAssistantAnimationGenTool"]
      490 JUMPIFNOT                        R10 ; [+10]
      491 GETTABLEKS                       R12 R3 K82 ["Agent"]
      493 GETTABLE                         R11 R9 R12
      494 GETTABLEKS                       R12 R4 K16 ["AnimationGen"]
      496 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      498 GETIMPORT                        R10 K85 [table.insert]
      500 CALL                             R10 2 0
      501 GETTABLEKS                       R10 R2 K22 ["FFlagAssistantAvatarAutoSetupTool"]
      503 JUMPIFNOT                        R10 ; [+10]
      504 GETTABLEKS                       R12 R3 K82 ["Agent"]
      506 GETTABLE                         R11 R9 R12
      507 GETTABLEKS                       R12 R4 K21 ["AvatarAutoSetup"]
      509 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      511 GETIMPORT                        R10 K85 [table.insert]
      513 CALL                             R10 2 0
      514 GETTABLEKS                       R10 R2 K24 ["FFlagAssistantAvatarGenTool"]
      516 JUMPIFNOT                        R10 ; [+10]
      517 GETTABLEKS                       R12 R3 K82 ["Agent"]
      519 GETTABLE                         R11 R9 R12
      520 GETTABLEKS                       R12 R4 K23 ["AvatarGen"]
      522 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      524 GETIMPORT                        R10 K85 [table.insert]
      526 CALL                             R10 2 0
      527 GETTABLEKS                       R12 R3 K82 ["Agent"]
      529 GETTABLE                         R11 R9 R12
      530 GETTABLEKS                       R12 R4 K56 ["UpdatePlan"]
      532 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      534 GETIMPORT                        R10 K85 [table.insert]
      536 CALL                             R10 2 0
      537 GETTABLEKS                       R12 R3 K82 ["Agent"]
      539 GETTABLE                         R11 R9 R12
      540 GETTABLEKS                       R12 R4 K27 ["CreateSkill"]
      542 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      544 GETIMPORT                        R10 K85 [table.insert]
      546 CALL                             R10 2 0
      547 GETTABLEKS                       R12 R3 K82 ["Agent"]
      549 GETTABLE                         R11 R9 R12
      550 GETTABLEKS                       R12 R4 K28 ["EditSkill"]
      552 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      554 GETIMPORT                        R10 K85 [table.insert]
      556 CALL                             R10 2 0
      557 GETTABLEKS                       R10 R2 K49 ["FFlagAssistantSegmentMeshTool"]
      559 JUMPIFNOT                        R10 ; [+10]
      560 GETTABLEKS                       R12 R3 K82 ["Agent"]
      562 GETTABLE                         R11 R9 R12
      563 GETTABLEKS                       R12 R4 K48 ["SegmentMesh"]
      565 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      567 GETIMPORT                        R10 K85 [table.insert]
      569 CALL                             R10 2 0
      570 GETTABLEKS                       R10 R2 K55 ["FFlagAssistantTextureGenTool"]
      572 JUMPIFNOT                        R10 ; [+10]
      573 GETTABLEKS                       R12 R3 K82 ["Agent"]
      575 GETTABLE                         R11 R9 R12
      576 GETTABLEKS                       R12 R4 K54 ["TextureGen"]
      578 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      580 GETIMPORT                        R10 K85 [table.insert]
      582 CALL                             R10 2 0
      583 GETTABLEKS                       R10 R2 K66 ["FFlagAssistantCapturePluginGuiTool"]
      585 JUMPIFNOT                        R10 ; [+20]
      586 GETTABLEKS                       R12 R3 K82 ["Agent"]
      588 GETTABLE                         R11 R9 R12
      589 GETTABLEKS                       R12 R4 K67 ["ListPluginGuis"]
      591 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      593 GETIMPORT                        R10 K85 [table.insert]
      595 CALL                             R10 2 0
      596 GETTABLEKS                       R12 R3 K82 ["Agent"]
      598 GETTABLE                         R11 R9 R12
      599 GETTABLEKS                       R12 R4 K68 ["CapturePluginGui"]
      601 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      603 GETIMPORT                        R10 K85 [table.insert]
      605 CALL                             R10 2 0
      606 GETTABLEKS                       R10 R2 K35 ["FFlagAssistantGenerateLayoutTool"]
      608 JUMPIFNOT                        R10 ; [+10]
      609 GETTABLEKS                       R12 R3 K82 ["Agent"]
      611 GETTABLE                         R11 R9 R12
      612 GETTABLEKS                       R12 R4 K34 ["GenerateScene"]
      614 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      616 GETIMPORT                        R10 K85 [table.insert]
      618 CALL                             R10 2 0
      619 GETTABLEKS                       R10 R2 K86 ["FFlagAssistantAskInputToolLLM"]
      621 JUMPIFNOT                        R10 ; [+10]
      622 GETTABLEKS                       R12 R3 K82 ["Agent"]
      624 GETTABLE                         R11 R9 R12
      625 GETTABLEKS                       R12 R4 K18 ["AskInput"]
      627 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      629 GETIMPORT                        R10 K85 [table.insert]
      631 CALL                             R10 2 0
      632 GETTABLEKS                       R10 R3 K87 ["Plan"]
      634 NEWTABLE                         R11 0 9
      636 GETTABLEKS                       R12 R4 K47 ["ReadFile"]
      638 GETTABLEKS                       R13 R4 K30 ["FileSearch"]
      640 GETTABLEKS                       R14 R4 K38 ["GrepSearch"]
      642 GETTABLEKS                       R15 R4 K33 ["GameTree"]
      644 GETTABLEKS                       R16 R4 K40 ["InspectInstance"]
      646 GETTABLEKS                       R17 R4 K79 ["ScreenCapture"]
      648 GETTABLEKS                       R18 R4 K46 ["QuestionAnswer"]
      650 GETTABLEKS                       R19 R4 K31 ["FinalizePlan"]
      652 GETTABLEKS                       R20 R4 K56 ["UpdatePlan"]
      654 SETLIST                          R11 R12 9 [1]
      656 SETTABLE                         R11 R9 R10
      657 GETTABLEKS                       R10 R2 K86 ["FFlagAssistantAskInputToolLLM"]
      659 JUMPIFNOT                        R10 ; [+10]
      660 GETTABLEKS                       R12 R3 K87 ["Plan"]
      662 GETTABLE                         R11 R9 R12
      663 GETTABLEKS                       R12 R4 K18 ["AskInput"]
      665 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      667 GETIMPORT                        R10 K85 [table.insert]
      669 CALL                             R10 2 0
      670 NEWTABLE                         R10 0 16
      672 GETTABLEKS                       R11 R4 K29 ["ExecuteLuau"]
      674 GETTABLEKS                       R12 R4 K30 ["FileSearch"]
      676 GETTABLEKS                       R13 R4 K33 ["GameTree"]
      678 GETTABLEKS                       R14 R4 K38 ["GrepSearch"]
      680 GETTABLEKS                       R15 R4 K40 ["InspectInstance"]
      682 GETTABLEKS                       R16 R4 K47 ["ReadFile"]
      684 GETTABLEKS                       R17 R4 K50 ["Skill"]
      686 GETTABLEKS                       R18 R4 K53 ["Subagent"]
      688 GETTABLEKS                       R19 R4 K79 ["ScreenCapture"]
      690 GETTABLEKS                       R20 R4 K36 ["GetConsoleOutput"]
      692 GETTABLEKS                       R21 R4 K57 ["UserKeyboardInput"]
      694 GETTABLEKS                       R22 R4 K58 ["UserMouseInput"]
      696 GETTABLEKS                       R23 R4 K25 ["CharacterNavigation"]
      698 GETTABLEKS                       R24 R4 K62 ["MultiPlayerAgentsCommunication"]
      700 GETTABLEKS                       R25 R4 K63 ["WaitForMultiPlayerAgentsCommunication"]
      702 GETTABLEKS                       R26 R4 K37 ["GetStudioState"]
      704 SETLIST                          R10 R11 16 [1]
      706 NEWTABLE                         R11 0 0
      708 GETTABLEKS                       R12 R2 K77 ["FFlagPlaytestVision"]
      710 JUMPIFNOT                        R12 ; [+8]
      711 GETTABLEKS                       R14 R4 K78 ["PlaytestLook"]
      713 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
      715 MOVE                             R13 R11
      716 GETIMPORT                        R12 K85 [table.insert]
      718 CALL                             R12 2 0
      719 DUPTABLE                         R12 K94 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools", "SubagentOnlyTools"}]
      720 SETTABLEKS                       R6 R12 K88 ["DefaultTools"]
      722 SETTABLEKS                       R7 R12 K89 ["ExperimentalTools"]
      724 SETTABLEKS                       R8 R12 K90 ["ExperimentFeatureTools"]
      726 SETTABLEKS                       R9 R12 K91 ["AssistantModeToolsAllowlist"]
      728 SETTABLEKS                       R10 R12 K92 ["MultiPlayerTestTools"]
      730 SETTABLEKS                       R11 R12 K93 ["SubagentOnlyTools"]
      732 RETURN                           R12 1
