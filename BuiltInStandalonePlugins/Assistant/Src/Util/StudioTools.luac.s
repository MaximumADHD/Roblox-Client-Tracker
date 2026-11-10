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
       35 GETTABLEKS                       R6 R1 K16 ["FlagUtils"]
       37 GETTABLEKS                       R6 R6 K17 ["getIsAnimationGenEnabled"]
       39 NEWTABLE                         R7 64 0
       41 GETTABLEKS                       R8 R4 K18 ["AnimationGen"]
       43 MOVE                             R10 R6
       44 CALL                             R10 0 1
       45 JUMPIFNOT                        R10 ; [+4]
       46 GETTABLEKS                       R10 R4 K18 ["AnimationGen"]
       48 GETTABLE                         R9 R5 R10
       49 JUMP                             ; [+1]
       50 LOADNIL                          R9
       51 SETTABLE                         R9 R7 R8
       52 GETTABLEKS                       R8 R4 K19 ["AskInput"]
       54 GETTABLEKS                       R10 R4 K19 ["AskInput"]
       56 GETTABLE                         R9 R5 R10
       57 SETTABLE                         R9 R7 R8
       58 GETTABLEKS                       R8 R4 K20 ["AssetInsert"]
       60 GETTABLEKS                       R10 R4 K20 ["AssetInsert"]
       62 GETTABLE                         R9 R5 R10
       63 SETTABLE                         R9 R7 R8
       64 GETTABLEKS                       R8 R4 K21 ["AssetSearch"]
       66 GETTABLEKS                       R10 R4 K21 ["AssetSearch"]
       68 GETTABLE                         R9 R5 R10
       69 SETTABLE                         R9 R7 R8
       70 GETTABLEKS                       R8 R4 K22 ["AvatarAutoSetup"]
       72 GETTABLEKS                       R10 R2 K23 ["FFlagAssistantAvatarAutoSetupTool"]
       74 JUMPIFNOT                        R10 ; [+4]
       75 GETTABLEKS                       R10 R4 K22 ["AvatarAutoSetup"]
       77 GETTABLE                         R9 R5 R10
       78 JUMP                             ; [+1]
       79 LOADNIL                          R9
       80 SETTABLE                         R9 R7 R8
       81 GETTABLEKS                       R8 R4 K24 ["AvatarGen"]
       83 GETTABLEKS                       R10 R2 K25 ["FFlagAssistantAvatarGenTool"]
       85 JUMPIFNOT                        R10 ; [+4]
       86 GETTABLEKS                       R10 R4 K24 ["AvatarGen"]
       88 GETTABLE                         R9 R5 R10
       89 JUMP                             ; [+1]
       90 LOADNIL                          R9
       91 SETTABLE                         R9 R7 R8
       92 GETTABLEKS                       R8 R4 K26 ["CharacterNavigation"]
       94 GETTABLEKS                       R10 R4 K26 ["CharacterNavigation"]
       96 GETTABLE                         R9 R5 R10
       97 SETTABLE                         R9 R7 R8
       98 GETTABLEKS                       R8 R4 K27 ["CompleteTodoItems"]
      100 GETTABLEKS                       R10 R4 K27 ["CompleteTodoItems"]
      102 GETTABLE                         R9 R5 R10
      103 SETTABLE                         R9 R7 R8
      104 GETTABLEKS                       R8 R4 K28 ["CreateSkill"]
      106 GETTABLEKS                       R10 R4 K28 ["CreateSkill"]
      108 GETTABLE                         R9 R5 R10
      109 SETTABLE                         R9 R7 R8
      110 GETTABLEKS                       R8 R4 K29 ["EditSkill"]
      112 GETTABLEKS                       R10 R4 K29 ["EditSkill"]
      114 GETTABLE                         R9 R5 R10
      115 SETTABLE                         R9 R7 R8
      116 GETTABLEKS                       R8 R4 K30 ["ExecuteLuau"]
      118 GETTABLEKS                       R10 R4 K30 ["ExecuteLuau"]
      120 GETTABLE                         R9 R5 R10
      121 SETTABLE                         R9 R7 R8
      122 GETTABLEKS                       R8 R4 K31 ["FileSearch"]
      124 GETTABLEKS                       R10 R4 K31 ["FileSearch"]
      126 GETTABLE                         R9 R5 R10
      127 SETTABLE                         R9 R7 R8
      128 GETTABLEKS                       R8 R4 K32 ["FinalizePlan"]
      130 GETTABLEKS                       R10 R4 K32 ["FinalizePlan"]
      132 GETTABLE                         R9 R5 R10
      133 SETTABLE                         R9 R7 R8
      134 GETTABLEKS                       R8 R4 K33 ["FromHistory"]
      136 GETTABLEKS                       R10 R4 K33 ["FromHistory"]
      138 GETTABLE                         R9 R5 R10
      139 SETTABLE                         R9 R7 R8
      140 GETTABLEKS                       R8 R4 K34 ["GameTree"]
      142 GETTABLEKS                       R10 R4 K34 ["GameTree"]
      144 GETTABLE                         R9 R5 R10
      145 SETTABLE                         R9 R7 R8
      146 GETTABLEKS                       R8 R4 K35 ["GenerateScene"]
      148 GETTABLEKS                       R10 R2 K36 ["FFlagAssistantGenerateLayoutTool"]
      150 JUMPIFNOT                        R10 ; [+4]
      151 GETTABLEKS                       R10 R4 K35 ["GenerateScene"]
      153 GETTABLE                         R9 R5 R10
      154 JUMP                             ; [+1]
      155 LOADNIL                          R9
      156 SETTABLE                         R9 R7 R8
      157 GETTABLEKS                       R8 R4 K37 ["GetConsoleOutput"]
      159 GETTABLEKS                       R10 R4 K37 ["GetConsoleOutput"]
      161 GETTABLE                         R9 R5 R10
      162 SETTABLE                         R9 R7 R8
      163 GETTABLEKS                       R8 R4 K38 ["GetStudioState"]
      165 GETTABLEKS                       R10 R4 K38 ["GetStudioState"]
      167 GETTABLE                         R9 R5 R10
      168 SETTABLE                         R9 R7 R8
      169 GETTABLEKS                       R8 R4 K39 ["GrepSearch"]
      171 GETTABLEKS                       R10 R4 K39 ["GrepSearch"]
      173 GETTABLE                         R9 R5 R10
      174 SETTABLE                         R9 R7 R8
      175 GETTABLEKS                       R8 R4 K40 ["HttpGet"]
      177 GETTABLEKS                       R10 R4 K40 ["HttpGet"]
      179 GETTABLE                         R9 R5 R10
      180 SETTABLE                         R9 R7 R8
      181 GETTABLEKS                       R8 R4 K41 ["InspectInstance"]
      183 GETTABLEKS                       R10 R4 K41 ["InspectInstance"]
      185 GETTABLE                         R9 R5 R10
      186 SETTABLE                         R9 R7 R8
      187 GETTABLEKS                       R8 R4 K42 ["JobWait"]
      189 GETTABLEKS                       R10 R4 K42 ["JobWait"]
      191 GETTABLE                         R9 R5 R10
      192 SETTABLE                         R9 R7 R8
      193 GETTABLEKS                       R8 R4 K43 ["MaterialGen"]
      195 GETTABLEKS                       R10 R4 K43 ["MaterialGen"]
      197 GETTABLE                         R9 R5 R10
      198 SETTABLE                         R9 R7 R8
      199 GETTABLEKS                       R8 R4 K44 ["MeshGen"]
      201 GETTABLEKS                       R10 R4 K44 ["MeshGen"]
      203 GETTABLE                         R9 R5 R10
      204 SETTABLE                         R9 R7 R8
      205 GETTABLEKS                       R8 R4 K45 ["MultiEdit"]
      207 GETTABLEKS                       R10 R4 K45 ["MultiEdit"]
      209 GETTABLE                         R9 R5 R10
      210 SETTABLE                         R9 R7 R8
      211 GETTABLEKS                       R8 R4 K46 ["PrimitiveGen"]
      213 GETTABLEKS                       R10 R4 K46 ["PrimitiveGen"]
      215 GETTABLE                         R9 R5 R10
      216 SETTABLE                         R9 R7 R8
      217 GETTABLEKS                       R8 R4 K47 ["QuestionAnswer"]
      219 GETTABLEKS                       R10 R4 K47 ["QuestionAnswer"]
      221 GETTABLE                         R9 R5 R10
      222 SETTABLE                         R9 R7 R8
      223 GETTABLEKS                       R8 R4 K48 ["ReadFile"]
      225 GETTABLEKS                       R10 R4 K48 ["ReadFile"]
      227 GETTABLE                         R9 R5 R10
      228 SETTABLE                         R9 R7 R8
      229 GETTABLEKS                       R8 R4 K49 ["SavePlace"]
      231 GETTABLEKS                       R10 R2 K50 ["FFlagAssistantSavePlaceTool"]
      233 JUMPIFNOT                        R10 ; [+4]
      234 GETTABLEKS                       R10 R4 K49 ["SavePlace"]
      236 GETTABLE                         R9 R5 R10
      237 JUMP                             ; [+1]
      238 LOADNIL                          R9
      239 SETTABLE                         R9 R7 R8
      240 GETTABLEKS                       R8 R4 K51 ["SegmentMesh"]
      242 GETTABLEKS                       R10 R2 K52 ["FFlagAssistantSegmentMeshTool"]
      244 JUMPIFNOT                        R10 ; [+4]
      245 GETTABLEKS                       R10 R4 K51 ["SegmentMesh"]
      247 GETTABLE                         R9 R5 R10
      248 JUMP                             ; [+1]
      249 LOADNIL                          R9
      250 SETTABLE                         R9 R7 R8
      251 GETTABLEKS                       R8 R4 K53 ["Skill"]
      253 GETTABLEKS                       R10 R4 K53 ["Skill"]
      255 GETTABLE                         R9 R5 R10
      256 SETTABLE                         R9 R7 R8
      257 GETTABLEKS                       R8 R4 K54 ["StartStopPlay"]
      259 GETTABLEKS                       R10 R4 K54 ["StartStopPlay"]
      261 GETTABLE                         R9 R5 R10
      262 SETTABLE                         R9 R7 R8
      263 GETTABLEKS                       R8 R4 K55 ["StoreImage"]
      265 GETTABLEKS                       R10 R4 K55 ["StoreImage"]
      267 GETTABLE                         R9 R5 R10
      268 SETTABLE                         R9 R7 R8
      269 GETTABLEKS                       R8 R4 K56 ["Subagent"]
      271 GETTABLEKS                       R10 R4 K56 ["Subagent"]
      273 GETTABLE                         R9 R5 R10
      274 SETTABLE                         R9 R7 R8
      275 GETTABLEKS                       R8 R4 K57 ["TextureGen"]
      277 GETTABLEKS                       R10 R2 K58 ["FFlagAssistantTextureGenTool"]
      279 JUMPIFNOT                        R10 ; [+4]
      280 GETTABLEKS                       R10 R4 K57 ["TextureGen"]
      282 GETTABLE                         R9 R5 R10
      283 JUMP                             ; [+1]
      284 LOADNIL                          R9
      285 SETTABLE                         R9 R7 R8
      286 GETTABLEKS                       R8 R4 K59 ["UpdatePlan"]
      288 GETTABLEKS                       R10 R4 K59 ["UpdatePlan"]
      290 GETTABLE                         R9 R5 R10
      291 SETTABLE                         R9 R7 R8
      292 GETTABLEKS                       R8 R4 K60 ["UserKeyboardInput"]
      294 GETTABLEKS                       R10 R4 K60 ["UserKeyboardInput"]
      296 GETTABLE                         R9 R5 R10
      297 SETTABLE                         R9 R7 R8
      298 GETTABLEKS                       R8 R4 K61 ["UserMouseInput"]
      300 GETTABLEKS                       R10 R4 K61 ["UserMouseInput"]
      302 GETTABLE                         R9 R5 R10
      303 SETTABLE                         R9 R7 R8
      304 GETTABLEKS                       R8 R2 K62 ["FFlagAssistantMultiPlayerAgents"]
      306 JUMPIFNOT                        R8 ; [+24]
      307 GETTABLEKS                       R8 R4 K63 ["StartMultiPlayerAgents"]
      309 GETTABLEKS                       R10 R4 K63 ["StartMultiPlayerAgents"]
      311 GETTABLE                         R9 R5 R10
      312 SETTABLE                         R9 R7 R8
      313 GETTABLEKS                       R8 R4 K64 ["StopMultiPlayerAgents"]
      315 GETTABLEKS                       R10 R4 K64 ["StopMultiPlayerAgents"]
      317 GETTABLE                         R9 R5 R10
      318 SETTABLE                         R9 R7 R8
      319 GETTABLEKS                       R8 R4 K65 ["MultiPlayerAgentsCommunication"]
      321 GETTABLEKS                       R10 R4 K65 ["MultiPlayerAgentsCommunication"]
      323 GETTABLE                         R9 R5 R10
      324 SETTABLE                         R9 R7 R8
      325 GETTABLEKS                       R8 R4 K66 ["WaitForMultiPlayerAgentsCommunication"]
      327 GETTABLEKS                       R10 R4 K66 ["WaitForMultiPlayerAgentsCommunication"]
      329 GETTABLE                         R9 R5 R10
      330 SETTABLE                         R9 R7 R8
      331 GETTABLEKS                       R8 R2 K67 ["FFlagAssistantVideoCaptureTool"]
      333 JUMPIFNOT                        R8 ; [+6]
      334 GETTABLEKS                       R8 R4 K68 ["VideoCapture"]
      336 GETTABLEKS                       R10 R4 K68 ["VideoCapture"]
      338 GETTABLE                         R9 R5 R10
      339 SETTABLE                         R9 R7 R8
      340 GETTABLEKS                       R8 R2 K69 ["FFlagAssistantCapturePluginGuiTool"]
      342 JUMPIFNOT                        R8 ; [+12]
      343 GETTABLEKS                       R8 R4 K70 ["ListPluginGuis"]
      345 GETTABLEKS                       R10 R4 K70 ["ListPluginGuis"]
      347 GETTABLE                         R9 R5 R10
      348 SETTABLE                         R9 R7 R8
      349 GETTABLEKS                       R8 R4 K71 ["CapturePluginGui"]
      351 GETTABLEKS                       R10 R4 K71 ["CapturePluginGui"]
      353 GETTABLE                         R9 R5 R10
      354 SETTABLE                         R9 R7 R8
      355 GETTABLEKS                       R8 R2 K72 ["FFlagAssistantOpenCloudInvokeTool"]
      357 JUMPIFNOT                        R8 ; [+12]
      358 GETTABLEKS                       R8 R2 K73 ["EngineFeatureAssistantExecuteLuauArguments"]
      360 JUMPIFNOT                        R8 ; [+9]
      361 GETTABLEKS                       R8 R2 K74 ["FFlagAssistantUseNewDMNetworking"]
      363 JUMPIFNOT                        R8 ; [+6]
      364 GETTABLEKS                       R8 R4 K75 ["OpenCloudInvoke"]
      366 GETTABLEKS                       R10 R4 K75 ["OpenCloudInvoke"]
      368 GETTABLE                         R9 R5 R10
      369 SETTABLE                         R9 R7 R8
      370 GETTABLEKS                       R8 R2 K76 ["FFlagAssistantMcpListStudiosTool"]
      372 JUMPIFNOT                        R8 ; [+6]
      373 GETTABLEKS                       R8 R4 K77 ["ListRobloxStudios"]
      375 GETTABLEKS                       R10 R4 K77 ["ListRobloxStudios"]
      377 GETTABLE                         R9 R5 R10
      378 SETTABLE                         R9 R7 R8
      379 GETTABLEKS                       R8 R2 K78 ["FFlagAssistantMcpListSkillsTool"]
      381 JUMPIFNOT                        R8 ; [+6]
      382 GETTABLEKS                       R8 R4 K79 ["ListSkills"]
      384 GETTABLEKS                       R10 R4 K79 ["ListSkills"]
      386 GETTABLE                         R9 R5 R10
      387 SETTABLE                         R9 R7 R8
      388 GETTABLEKS                       R8 R2 K80 ["FFlagAssistantMcpListPlaceTool"]
      390 JUMPIFNOT                        R8 ; [+6]
      391 GETTABLEKS                       R8 R4 K81 ["ListPlace"]
      393 GETTABLEKS                       R10 R4 K81 ["ListPlace"]
      395 GETTABLE                         R9 R5 R10
      396 SETTABLE                         R9 R7 R8
      397 GETTABLEKS                       R8 R2 K82 ["FFlagAssistantMcpSubmitFeedbackTool"]
      399 JUMPIFNOT                        R8 ; [+6]
      400 GETTABLEKS                       R8 R4 K83 ["SubmitFeedback"]
      402 GETTABLEKS                       R10 R4 K83 ["SubmitFeedback"]
      404 GETTABLE                         R9 R5 R10
      405 SETTABLE                         R9 R7 R8
      406 GETTABLEKS                       R8 R2 K84 ["FFlagPlaytestVision"]
      408 JUMPIFNOT                        R8 ; [+6]
      409 GETTABLEKS                       R8 R4 K85 ["PlaytestLook"]
      411 GETTABLEKS                       R10 R4 K85 ["PlaytestLook"]
      413 GETTABLE                         R9 R5 R10
      414 SETTABLE                         R9 R7 R8
      415 NEWTABLE                         R8 2 0
      417 GETTABLEKS                       R9 R4 K86 ["ScreenCapture"]
      419 GETTABLEKS                       R11 R4 K86 ["ScreenCapture"]
      421 GETTABLE                         R10 R5 R11
      422 SETTABLE                         R10 R8 R9
      423 GETTABLEKS                       R9 R4 K87 ["UploadImage"]
      425 GETTABLEKS                       R11 R2 K88 ["FFlagEnableAssistantImageUpload"]
      427 JUMPIFNOT                        R11 ; [+4]
      428 GETTABLEKS                       R11 R4 K87 ["UploadImage"]
      430 GETTABLE                         R10 R5 R11
      431 JUMP                             ; [+1]
      432 LOADNIL                          R10
      433 SETTABLE                         R10 R8 R9
      434 NEWTABLE                         R9 0 0
      436 NEWTABLE                         R10 1 0
      438 GETTABLEKS                       R11 R3 K89 ["Agent"]
      440 NEWTABLE                         R12 0 32
      442 GETTABLEKS                       R13 R4 K30 ["ExecuteLuau"]
      444 GETTABLEKS                       R14 R4 K31 ["FileSearch"]
      446 GETTABLEKS                       R15 R4 K34 ["GameTree"]
      448 GETTABLEKS                       R16 R4 K39 ["GrepSearch"]
      450 GETTABLEKS                       R17 R4 K20 ["AssetInsert"]
      452 GETTABLEKS                       R18 R4 K21 ["AssetSearch"]
      454 GETTABLEKS                       R19 R4 K41 ["InspectInstance"]
      456 GETTABLEKS                       R20 R4 K43 ["MaterialGen"]
      458 GETTABLEKS                       R21 R4 K44 ["MeshGen"]
      460 GETTABLEKS                       R22 R4 K45 ["MultiEdit"]
      462 GETTABLEKS                       R23 R4 K48 ["ReadFile"]
      464 GETTABLEKS                       R24 R4 K46 ["PrimitiveGen"]
      466 GETTABLEKS                       R25 R4 K53 ["Skill"]
      468 GETTABLEKS                       R26 R4 K56 ["Subagent"]
      470 GETTABLEKS                       R27 R4 K86 ["ScreenCapture"]
      472 GETTABLEKS                       R28 R4 K87 ["UploadImage"]
      474 SETLIST                          R12 R13 16 [1]
      476 GETTABLEKS                       R13 R4 K63 ["StartMultiPlayerAgents"]
      478 GETTABLEKS                       R14 R4 K64 ["StopMultiPlayerAgents"]
      480 GETTABLEKS                       R15 R4 K65 ["MultiPlayerAgentsCommunication"]
      482 GETTABLEKS                       R16 R4 K66 ["WaitForMultiPlayerAgentsCommunication"]
      484 GETTABLEKS                       R17 R4 K40 ["HttpGet"]
      486 GETTABLEKS                       R18 R4 K33 ["FromHistory"]
      488 GETTABLEKS                       R19 R4 K54 ["StartStopPlay"]
      490 GETTABLEKS                       R20 R4 K37 ["GetConsoleOutput"]
      492 GETTABLEKS                       R21 R4 K60 ["UserKeyboardInput"]
      494 GETTABLEKS                       R22 R4 K61 ["UserMouseInput"]
      496 GETTABLEKS                       R23 R4 K26 ["CharacterNavigation"]
      498 GETTABLEKS                       R24 R4 K68 ["VideoCapture"]
      500 GETTABLEKS                       R25 R4 K47 ["QuestionAnswer"]
      502 GETTABLEKS                       R26 R4 K27 ["CompleteTodoItems"]
      504 GETTABLEKS                       R27 R4 K42 ["JobWait"]
      506 GETTABLEKS                       R28 R4 K38 ["GetStudioState"]
      508 SETLIST                          R12 R13 16 [17]
      510 SETTABLE                         R12 R10 R11
      511 GETTABLEKS                       R13 R3 K89 ["Agent"]
      513 GETTABLE                         R12 R10 R13
      514 GETTABLEKS                       R13 R4 K55 ["StoreImage"]
      516 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      518 GETIMPORT                        R11 K92 [table.insert]
      520 CALL                             R11 2 0
      521 MOVE                             R11 R6
      522 CALL                             R11 0 1
      523 JUMPIFNOT                        R11 ; [+10]
      524 GETTABLEKS                       R13 R3 K89 ["Agent"]
      526 GETTABLE                         R12 R10 R13
      527 GETTABLEKS                       R13 R4 K18 ["AnimationGen"]
      529 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      531 GETIMPORT                        R11 K92 [table.insert]
      533 CALL                             R11 2 0
      534 GETTABLEKS                       R11 R2 K23 ["FFlagAssistantAvatarAutoSetupTool"]
      536 JUMPIFNOT                        R11 ; [+10]
      537 GETTABLEKS                       R13 R3 K89 ["Agent"]
      539 GETTABLE                         R12 R10 R13
      540 GETTABLEKS                       R13 R4 K22 ["AvatarAutoSetup"]
      542 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      544 GETIMPORT                        R11 K92 [table.insert]
      546 CALL                             R11 2 0
      547 GETTABLEKS                       R11 R2 K25 ["FFlagAssistantAvatarGenTool"]
      549 JUMPIFNOT                        R11 ; [+10]
      550 GETTABLEKS                       R13 R3 K89 ["Agent"]
      552 GETTABLE                         R12 R10 R13
      553 GETTABLEKS                       R13 R4 K24 ["AvatarGen"]
      555 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      557 GETIMPORT                        R11 K92 [table.insert]
      559 CALL                             R11 2 0
      560 GETTABLEKS                       R13 R3 K89 ["Agent"]
      562 GETTABLE                         R12 R10 R13
      563 GETTABLEKS                       R13 R4 K59 ["UpdatePlan"]
      565 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      567 GETIMPORT                        R11 K92 [table.insert]
      569 CALL                             R11 2 0
      570 GETTABLEKS                       R13 R3 K89 ["Agent"]
      572 GETTABLE                         R12 R10 R13
      573 GETTABLEKS                       R13 R4 K28 ["CreateSkill"]
      575 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      577 GETIMPORT                        R11 K92 [table.insert]
      579 CALL                             R11 2 0
      580 GETTABLEKS                       R13 R3 K89 ["Agent"]
      582 GETTABLE                         R12 R10 R13
      583 GETTABLEKS                       R13 R4 K29 ["EditSkill"]
      585 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      587 GETIMPORT                        R11 K92 [table.insert]
      589 CALL                             R11 2 0
      590 GETTABLEKS                       R11 R2 K52 ["FFlagAssistantSegmentMeshTool"]
      592 JUMPIFNOT                        R11 ; [+10]
      593 GETTABLEKS                       R13 R3 K89 ["Agent"]
      595 GETTABLE                         R12 R10 R13
      596 GETTABLEKS                       R13 R4 K51 ["SegmentMesh"]
      598 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      600 GETIMPORT                        R11 K92 [table.insert]
      602 CALL                             R11 2 0
      603 GETTABLEKS                       R11 R2 K58 ["FFlagAssistantTextureGenTool"]
      605 JUMPIFNOT                        R11 ; [+10]
      606 GETTABLEKS                       R13 R3 K89 ["Agent"]
      608 GETTABLE                         R12 R10 R13
      609 GETTABLEKS                       R13 R4 K57 ["TextureGen"]
      611 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      613 GETIMPORT                        R11 K92 [table.insert]
      615 CALL                             R11 2 0
      616 GETTABLEKS                       R11 R2 K69 ["FFlagAssistantCapturePluginGuiTool"]
      618 JUMPIFNOT                        R11 ; [+20]
      619 GETTABLEKS                       R13 R3 K89 ["Agent"]
      621 GETTABLE                         R12 R10 R13
      622 GETTABLEKS                       R13 R4 K70 ["ListPluginGuis"]
      624 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      626 GETIMPORT                        R11 K92 [table.insert]
      628 CALL                             R11 2 0
      629 GETTABLEKS                       R13 R3 K89 ["Agent"]
      631 GETTABLE                         R12 R10 R13
      632 GETTABLEKS                       R13 R4 K71 ["CapturePluginGui"]
      634 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      636 GETIMPORT                        R11 K92 [table.insert]
      638 CALL                             R11 2 0
      639 GETTABLEKS                       R11 R2 K36 ["FFlagAssistantGenerateLayoutTool"]
      641 JUMPIFNOT                        R11 ; [+10]
      642 GETTABLEKS                       R13 R3 K89 ["Agent"]
      644 GETTABLE                         R12 R10 R13
      645 GETTABLEKS                       R13 R4 K35 ["GenerateScene"]
      647 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      649 GETIMPORT                        R11 K92 [table.insert]
      651 CALL                             R11 2 0
      652 GETTABLEKS                       R11 R2 K50 ["FFlagAssistantSavePlaceTool"]
      654 JUMPIFNOT                        R11 ; [+10]
      655 GETTABLEKS                       R13 R3 K89 ["Agent"]
      657 GETTABLE                         R12 R10 R13
      658 GETTABLEKS                       R13 R4 K49 ["SavePlace"]
      660 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      662 GETIMPORT                        R11 K92 [table.insert]
      664 CALL                             R11 2 0
      665 GETTABLEKS                       R11 R2 K93 ["FFlagAssistantAskInputToolLLM"]
      667 JUMPIFNOT                        R11 ; [+10]
      668 GETTABLEKS                       R13 R3 K89 ["Agent"]
      670 GETTABLE                         R12 R10 R13
      671 GETTABLEKS                       R13 R4 K19 ["AskInput"]
      673 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      675 GETIMPORT                        R11 K92 [table.insert]
      677 CALL                             R11 2 0
      678 GETTABLEKS                       R11 R3 K94 ["Plan"]
      680 NEWTABLE                         R12 0 9
      682 GETTABLEKS                       R13 R4 K48 ["ReadFile"]
      684 GETTABLEKS                       R14 R4 K31 ["FileSearch"]
      686 GETTABLEKS                       R15 R4 K39 ["GrepSearch"]
      688 GETTABLEKS                       R16 R4 K34 ["GameTree"]
      690 GETTABLEKS                       R17 R4 K41 ["InspectInstance"]
      692 GETTABLEKS                       R18 R4 K86 ["ScreenCapture"]
      694 GETTABLEKS                       R19 R4 K47 ["QuestionAnswer"]
      696 GETTABLEKS                       R20 R4 K32 ["FinalizePlan"]
      698 GETTABLEKS                       R21 R4 K59 ["UpdatePlan"]
      700 SETLIST                          R12 R13 9 [1]
      702 SETTABLE                         R12 R10 R11
      703 GETTABLEKS                       R11 R2 K93 ["FFlagAssistantAskInputToolLLM"]
      705 JUMPIFNOT                        R11 ; [+10]
      706 GETTABLEKS                       R13 R3 K94 ["Plan"]
      708 GETTABLE                         R12 R10 R13
      709 GETTABLEKS                       R13 R4 K19 ["AskInput"]
      711 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      713 GETIMPORT                        R11 K92 [table.insert]
      715 CALL                             R11 2 0
      716 NEWTABLE                         R11 0 16
      718 GETTABLEKS                       R12 R4 K30 ["ExecuteLuau"]
      720 GETTABLEKS                       R13 R4 K31 ["FileSearch"]
      722 GETTABLEKS                       R14 R4 K34 ["GameTree"]
      724 GETTABLEKS                       R15 R4 K39 ["GrepSearch"]
      726 GETTABLEKS                       R16 R4 K41 ["InspectInstance"]
      728 GETTABLEKS                       R17 R4 K48 ["ReadFile"]
      730 GETTABLEKS                       R18 R4 K53 ["Skill"]
      732 GETTABLEKS                       R19 R4 K56 ["Subagent"]
      734 GETTABLEKS                       R20 R4 K86 ["ScreenCapture"]
      736 GETTABLEKS                       R21 R4 K37 ["GetConsoleOutput"]
      738 GETTABLEKS                       R22 R4 K60 ["UserKeyboardInput"]
      740 GETTABLEKS                       R23 R4 K61 ["UserMouseInput"]
      742 GETTABLEKS                       R24 R4 K26 ["CharacterNavigation"]
      744 GETTABLEKS                       R25 R4 K65 ["MultiPlayerAgentsCommunication"]
      746 GETTABLEKS                       R26 R4 K66 ["WaitForMultiPlayerAgentsCommunication"]
      748 GETTABLEKS                       R27 R4 K38 ["GetStudioState"]
      750 SETLIST                          R11 R12 16 [1]
      752 NEWTABLE                         R12 0 0
      754 GETTABLEKS                       R13 R2 K84 ["FFlagPlaytestVision"]
      756 JUMPIFNOT                        R13 ; [+8]
      757 GETTABLEKS                       R15 R4 K85 ["PlaytestLook"]
      759 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
      761 MOVE                             R14 R12
      762 GETIMPORT                        R13 K92 [table.insert]
      764 CALL                             R13 2 0
      765 DUPTABLE                         R13 K101 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools", "SubagentOnlyTools"}]
      766 SETTABLEKS                       R7 R13 K95 ["DefaultTools"]
      768 SETTABLEKS                       R8 R13 K96 ["ExperimentalTools"]
      770 SETTABLEKS                       R9 R13 K97 ["ExperimentFeatureTools"]
      772 SETTABLEKS                       R10 R13 K98 ["AssistantModeToolsAllowlist"]
      774 SETTABLEKS                       R11 R13 K99 ["MultiPlayerTestTools"]
      776 SETTABLEKS                       R12 R13 K100 ["SubagentOnlyTools"]
      778 RETURN                           R13 1
