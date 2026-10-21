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
      142 GETTABLEKS                       R7 R4 K34 ["GenerateLayout"]
      144 GETTABLEKS                       R9 R2 K35 ["FFlagAssistantGenerateLayoutTool"]
      146 JUMPIFNOT                        R9 ; [+4]
      147 GETTABLEKS                       R9 R4 K34 ["GenerateLayout"]
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
      340 GETTABLEKS                       R7 R2 K69 ["FFlagUseStudioSideListTool"]
      342 JUMPIFNOT                        R7 ; [+6]
      343 GETTABLEKS                       R7 R4 K70 ["ListRobloxStudios"]
      345 GETTABLEKS                       R9 R4 K70 ["ListRobloxStudios"]
      347 GETTABLE                         R8 R5 R9
      348 SETTABLE                         R8 R6 R7
      349 GETTABLEKS                       R7 R2 K71 ["FFlagPlaytestVision"]
      351 JUMPIFNOT                        R7 ; [+6]
      352 GETTABLEKS                       R7 R4 K72 ["PlaytestLook"]
      354 GETTABLEKS                       R9 R4 K72 ["PlaytestLook"]
      356 GETTABLE                         R8 R5 R9
      357 SETTABLE                         R8 R6 R7
      358 NEWTABLE                         R7 2 0
      360 GETTABLEKS                       R8 R4 K73 ["ScreenCapture"]
      362 GETTABLEKS                       R10 R4 K73 ["ScreenCapture"]
      364 GETTABLE                         R9 R5 R10
      365 SETTABLE                         R9 R7 R8
      366 GETTABLEKS                       R8 R4 K74 ["UploadImage"]
      368 GETTABLEKS                       R10 R2 K75 ["FFlagEnableAssistantImageUpload"]
      370 JUMPIFNOT                        R10 ; [+4]
      371 GETTABLEKS                       R10 R4 K74 ["UploadImage"]
      373 GETTABLE                         R9 R5 R10
      374 JUMP                             ; [+1]
      375 LOADNIL                          R9
      376 SETTABLE                         R9 R7 R8
      377 NEWTABLE                         R8 0 0
      379 NEWTABLE                         R9 1 0
      381 GETTABLEKS                       R10 R3 K76 ["Agent"]
      383 NEWTABLE                         R11 0 32
      385 GETTABLEKS                       R12 R4 K29 ["ExecuteLuau"]
      387 GETTABLEKS                       R13 R4 K30 ["FileSearch"]
      389 GETTABLEKS                       R14 R4 K33 ["GameTree"]
      391 GETTABLEKS                       R15 R4 K38 ["GrepSearch"]
      393 GETTABLEKS                       R16 R4 K19 ["AssetInsert"]
      395 GETTABLEKS                       R17 R4 K20 ["AssetSearch"]
      397 GETTABLEKS                       R18 R4 K40 ["InspectInstance"]
      399 GETTABLEKS                       R19 R4 K42 ["MaterialGen"]
      401 GETTABLEKS                       R20 R4 K43 ["MeshGen"]
      403 GETTABLEKS                       R21 R4 K44 ["MultiEdit"]
      405 GETTABLEKS                       R22 R4 K47 ["ReadFile"]
      407 GETTABLEKS                       R23 R4 K45 ["PrimitiveGen"]
      409 GETTABLEKS                       R24 R4 K50 ["Skill"]
      411 GETTABLEKS                       R25 R4 K53 ["Subagent"]
      413 GETTABLEKS                       R26 R4 K73 ["ScreenCapture"]
      415 GETTABLEKS                       R27 R4 K74 ["UploadImage"]
      417 SETLIST                          R11 R12 16 [1]
      419 GETTABLEKS                       R12 R4 K60 ["StartMultiPlayerAgents"]
      421 GETTABLEKS                       R13 R4 K61 ["StopMultiPlayerAgents"]
      423 GETTABLEKS                       R14 R4 K62 ["MultiPlayerAgentsCommunication"]
      425 GETTABLEKS                       R15 R4 K63 ["WaitForMultiPlayerAgentsCommunication"]
      427 GETTABLEKS                       R16 R4 K39 ["HttpGet"]
      429 GETTABLEKS                       R17 R4 K32 ["FromHistory"]
      431 GETTABLEKS                       R18 R4 K51 ["StartStopPlay"]
      433 GETTABLEKS                       R19 R4 K36 ["GetConsoleOutput"]
      435 GETTABLEKS                       R20 R4 K57 ["UserKeyboardInput"]
      437 GETTABLEKS                       R21 R4 K58 ["UserMouseInput"]
      439 GETTABLEKS                       R22 R4 K25 ["CharacterNavigation"]
      441 GETTABLEKS                       R23 R4 K65 ["VideoCapture"]
      443 GETTABLEKS                       R24 R4 K46 ["QuestionAnswer"]
      445 GETTABLEKS                       R25 R4 K26 ["CompleteTodoItems"]
      447 GETTABLEKS                       R26 R4 K41 ["JobWait"]
      449 GETTABLEKS                       R27 R4 K37 ["GetStudioState"]
      451 SETLIST                          R11 R12 16 [17]
      453 SETTABLE                         R11 R9 R10
      454 GETTABLEKS                       R12 R3 K76 ["Agent"]
      456 GETTABLE                         R11 R9 R12
      457 GETTABLEKS                       R12 R4 K52 ["StoreImage"]
      459 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      461 GETIMPORT                        R10 K79 [table.insert]
      463 CALL                             R10 2 0
      464 GETTABLEKS                       R10 R2 K17 ["FFlagAssistantAnimationGenTool"]
      466 JUMPIFNOT                        R10 ; [+10]
      467 GETTABLEKS                       R12 R3 K76 ["Agent"]
      469 GETTABLE                         R11 R9 R12
      470 GETTABLEKS                       R12 R4 K16 ["AnimationGen"]
      472 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      474 GETIMPORT                        R10 K79 [table.insert]
      476 CALL                             R10 2 0
      477 GETTABLEKS                       R10 R2 K22 ["FFlagAssistantAvatarAutoSetupTool"]
      479 JUMPIFNOT                        R10 ; [+10]
      480 GETTABLEKS                       R12 R3 K76 ["Agent"]
      482 GETTABLE                         R11 R9 R12
      483 GETTABLEKS                       R12 R4 K21 ["AvatarAutoSetup"]
      485 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      487 GETIMPORT                        R10 K79 [table.insert]
      489 CALL                             R10 2 0
      490 GETTABLEKS                       R10 R2 K24 ["FFlagAssistantAvatarGenTool"]
      492 JUMPIFNOT                        R10 ; [+10]
      493 GETTABLEKS                       R12 R3 K76 ["Agent"]
      495 GETTABLE                         R11 R9 R12
      496 GETTABLEKS                       R12 R4 K23 ["AvatarGen"]
      498 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      500 GETIMPORT                        R10 K79 [table.insert]
      502 CALL                             R10 2 0
      503 GETTABLEKS                       R12 R3 K76 ["Agent"]
      505 GETTABLE                         R11 R9 R12
      506 GETTABLEKS                       R12 R4 K56 ["UpdatePlan"]
      508 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      510 GETIMPORT                        R10 K79 [table.insert]
      512 CALL                             R10 2 0
      513 GETTABLEKS                       R12 R3 K76 ["Agent"]
      515 GETTABLE                         R11 R9 R12
      516 GETTABLEKS                       R12 R4 K27 ["CreateSkill"]
      518 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      520 GETIMPORT                        R10 K79 [table.insert]
      522 CALL                             R10 2 0
      523 GETTABLEKS                       R12 R3 K76 ["Agent"]
      525 GETTABLE                         R11 R9 R12
      526 GETTABLEKS                       R12 R4 K28 ["EditSkill"]
      528 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      530 GETIMPORT                        R10 K79 [table.insert]
      532 CALL                             R10 2 0
      533 GETTABLEKS                       R10 R2 K49 ["FFlagAssistantSegmentMeshTool"]
      535 JUMPIFNOT                        R10 ; [+10]
      536 GETTABLEKS                       R12 R3 K76 ["Agent"]
      538 GETTABLE                         R11 R9 R12
      539 GETTABLEKS                       R12 R4 K48 ["SegmentMesh"]
      541 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      543 GETIMPORT                        R10 K79 [table.insert]
      545 CALL                             R10 2 0
      546 GETTABLEKS                       R10 R2 K55 ["FFlagAssistantTextureGenTool"]
      548 JUMPIFNOT                        R10 ; [+10]
      549 GETTABLEKS                       R12 R3 K76 ["Agent"]
      551 GETTABLE                         R11 R9 R12
      552 GETTABLEKS                       R12 R4 K54 ["TextureGen"]
      554 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      556 GETIMPORT                        R10 K79 [table.insert]
      558 CALL                             R10 2 0
      559 GETTABLEKS                       R10 R2 K66 ["FFlagAssistantCapturePluginGuiTool"]
      561 JUMPIFNOT                        R10 ; [+20]
      562 GETTABLEKS                       R12 R3 K76 ["Agent"]
      564 GETTABLE                         R11 R9 R12
      565 GETTABLEKS                       R12 R4 K67 ["ListPluginGuis"]
      567 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      569 GETIMPORT                        R10 K79 [table.insert]
      571 CALL                             R10 2 0
      572 GETTABLEKS                       R12 R3 K76 ["Agent"]
      574 GETTABLE                         R11 R9 R12
      575 GETTABLEKS                       R12 R4 K68 ["CapturePluginGui"]
      577 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      579 GETIMPORT                        R10 K79 [table.insert]
      581 CALL                             R10 2 0
      582 GETTABLEKS                       R10 R2 K35 ["FFlagAssistantGenerateLayoutTool"]
      584 JUMPIFNOT                        R10 ; [+10]
      585 GETTABLEKS                       R12 R3 K76 ["Agent"]
      587 GETTABLE                         R11 R9 R12
      588 GETTABLEKS                       R12 R4 K34 ["GenerateLayout"]
      590 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      592 GETIMPORT                        R10 K79 [table.insert]
      594 CALL                             R10 2 0
      595 GETTABLEKS                       R10 R2 K80 ["FFlagAssistantAskInputToolLLM"]
      597 JUMPIFNOT                        R10 ; [+10]
      598 GETTABLEKS                       R12 R3 K76 ["Agent"]
      600 GETTABLE                         R11 R9 R12
      601 GETTABLEKS                       R12 R4 K18 ["AskInput"]
      603 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      605 GETIMPORT                        R10 K79 [table.insert]
      607 CALL                             R10 2 0
      608 GETTABLEKS                       R10 R3 K81 ["Plan"]
      610 NEWTABLE                         R11 0 9
      612 GETTABLEKS                       R12 R4 K47 ["ReadFile"]
      614 GETTABLEKS                       R13 R4 K30 ["FileSearch"]
      616 GETTABLEKS                       R14 R4 K38 ["GrepSearch"]
      618 GETTABLEKS                       R15 R4 K33 ["GameTree"]
      620 GETTABLEKS                       R16 R4 K40 ["InspectInstance"]
      622 GETTABLEKS                       R17 R4 K73 ["ScreenCapture"]
      624 GETTABLEKS                       R18 R4 K46 ["QuestionAnswer"]
      626 GETTABLEKS                       R19 R4 K31 ["FinalizePlan"]
      628 GETTABLEKS                       R20 R4 K56 ["UpdatePlan"]
      630 SETLIST                          R11 R12 9 [1]
      632 SETTABLE                         R11 R9 R10
      633 GETTABLEKS                       R10 R2 K80 ["FFlagAssistantAskInputToolLLM"]
      635 JUMPIFNOT                        R10 ; [+10]
      636 GETTABLEKS                       R12 R3 K81 ["Plan"]
      638 GETTABLE                         R11 R9 R12
      639 GETTABLEKS                       R12 R4 K18 ["AskInput"]
      641 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      643 GETIMPORT                        R10 K79 [table.insert]
      645 CALL                             R10 2 0
      646 NEWTABLE                         R10 0 16
      648 GETTABLEKS                       R11 R4 K29 ["ExecuteLuau"]
      650 GETTABLEKS                       R12 R4 K30 ["FileSearch"]
      652 GETTABLEKS                       R13 R4 K33 ["GameTree"]
      654 GETTABLEKS                       R14 R4 K38 ["GrepSearch"]
      656 GETTABLEKS                       R15 R4 K40 ["InspectInstance"]
      658 GETTABLEKS                       R16 R4 K47 ["ReadFile"]
      660 GETTABLEKS                       R17 R4 K50 ["Skill"]
      662 GETTABLEKS                       R18 R4 K53 ["Subagent"]
      664 GETTABLEKS                       R19 R4 K73 ["ScreenCapture"]
      666 GETTABLEKS                       R20 R4 K36 ["GetConsoleOutput"]
      668 GETTABLEKS                       R21 R4 K57 ["UserKeyboardInput"]
      670 GETTABLEKS                       R22 R4 K58 ["UserMouseInput"]
      672 GETTABLEKS                       R23 R4 K25 ["CharacterNavigation"]
      674 GETTABLEKS                       R24 R4 K62 ["MultiPlayerAgentsCommunication"]
      676 GETTABLEKS                       R25 R4 K63 ["WaitForMultiPlayerAgentsCommunication"]
      678 GETTABLEKS                       R26 R4 K37 ["GetStudioState"]
      680 SETLIST                          R10 R11 16 [1]
      682 NEWTABLE                         R11 0 0
      684 GETTABLEKS                       R12 R2 K71 ["FFlagPlaytestVision"]
      686 JUMPIFNOT                        R12 ; [+8]
      687 GETTABLEKS                       R14 R4 K72 ["PlaytestLook"]
      689 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
      691 MOVE                             R13 R11
      692 GETIMPORT                        R12 K79 [table.insert]
      694 CALL                             R12 2 0
      695 DUPTABLE                         R12 K88 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools", "SubagentOnlyTools"}]
      696 SETTABLEKS                       R6 R12 K82 ["DefaultTools"]
      698 SETTABLEKS                       R7 R12 K83 ["ExperimentalTools"]
      700 SETTABLEKS                       R8 R12 K84 ["ExperimentFeatureTools"]
      702 SETTABLEKS                       R9 R12 K85 ["AssistantModeToolsAllowlist"]
      704 SETTABLEKS                       R10 R12 K86 ["MultiPlayerTestTools"]
      706 SETTABLEKS                       R11 R12 K87 ["SubagentOnlyTools"]
      708 RETURN                           R12 1
