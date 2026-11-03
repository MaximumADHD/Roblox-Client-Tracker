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
      229 GETTABLEKS                       R8 R4 K49 ["SegmentMesh"]
      231 GETTABLEKS                       R10 R2 K50 ["FFlagAssistantSegmentMeshTool"]
      233 JUMPIFNOT                        R10 ; [+4]
      234 GETTABLEKS                       R10 R4 K49 ["SegmentMesh"]
      236 GETTABLE                         R9 R5 R10
      237 JUMP                             ; [+1]
      238 LOADNIL                          R9
      239 SETTABLE                         R9 R7 R8
      240 GETTABLEKS                       R8 R4 K51 ["Skill"]
      242 GETTABLEKS                       R10 R4 K51 ["Skill"]
      244 GETTABLE                         R9 R5 R10
      245 SETTABLE                         R9 R7 R8
      246 GETTABLEKS                       R8 R4 K52 ["StartStopPlay"]
      248 GETTABLEKS                       R10 R4 K52 ["StartStopPlay"]
      250 GETTABLE                         R9 R5 R10
      251 SETTABLE                         R9 R7 R8
      252 GETTABLEKS                       R8 R4 K53 ["StoreImage"]
      254 GETTABLEKS                       R10 R4 K53 ["StoreImage"]
      256 GETTABLE                         R9 R5 R10
      257 SETTABLE                         R9 R7 R8
      258 GETTABLEKS                       R8 R4 K54 ["Subagent"]
      260 GETTABLEKS                       R10 R4 K54 ["Subagent"]
      262 GETTABLE                         R9 R5 R10
      263 SETTABLE                         R9 R7 R8
      264 GETTABLEKS                       R8 R4 K55 ["TextureGen"]
      266 GETTABLEKS                       R10 R2 K56 ["FFlagAssistantTextureGenTool"]
      268 JUMPIFNOT                        R10 ; [+4]
      269 GETTABLEKS                       R10 R4 K55 ["TextureGen"]
      271 GETTABLE                         R9 R5 R10
      272 JUMP                             ; [+1]
      273 LOADNIL                          R9
      274 SETTABLE                         R9 R7 R8
      275 GETTABLEKS                       R8 R4 K57 ["UpdatePlan"]
      277 GETTABLEKS                       R10 R4 K57 ["UpdatePlan"]
      279 GETTABLE                         R9 R5 R10
      280 SETTABLE                         R9 R7 R8
      281 GETTABLEKS                       R8 R4 K58 ["UserKeyboardInput"]
      283 GETTABLEKS                       R10 R4 K58 ["UserKeyboardInput"]
      285 GETTABLE                         R9 R5 R10
      286 SETTABLE                         R9 R7 R8
      287 GETTABLEKS                       R8 R4 K59 ["UserMouseInput"]
      289 GETTABLEKS                       R10 R4 K59 ["UserMouseInput"]
      291 GETTABLE                         R9 R5 R10
      292 SETTABLE                         R9 R7 R8
      293 GETTABLEKS                       R8 R2 K60 ["FFlagAssistantMultiPlayerAgents"]
      295 JUMPIFNOT                        R8 ; [+24]
      296 GETTABLEKS                       R8 R4 K61 ["StartMultiPlayerAgents"]
      298 GETTABLEKS                       R10 R4 K61 ["StartMultiPlayerAgents"]
      300 GETTABLE                         R9 R5 R10
      301 SETTABLE                         R9 R7 R8
      302 GETTABLEKS                       R8 R4 K62 ["StopMultiPlayerAgents"]
      304 GETTABLEKS                       R10 R4 K62 ["StopMultiPlayerAgents"]
      306 GETTABLE                         R9 R5 R10
      307 SETTABLE                         R9 R7 R8
      308 GETTABLEKS                       R8 R4 K63 ["MultiPlayerAgentsCommunication"]
      310 GETTABLEKS                       R10 R4 K63 ["MultiPlayerAgentsCommunication"]
      312 GETTABLE                         R9 R5 R10
      313 SETTABLE                         R9 R7 R8
      314 GETTABLEKS                       R8 R4 K64 ["WaitForMultiPlayerAgentsCommunication"]
      316 GETTABLEKS                       R10 R4 K64 ["WaitForMultiPlayerAgentsCommunication"]
      318 GETTABLE                         R9 R5 R10
      319 SETTABLE                         R9 R7 R8
      320 GETTABLEKS                       R8 R2 K65 ["FFlagAssistantVideoCaptureTool"]
      322 JUMPIFNOT                        R8 ; [+6]
      323 GETTABLEKS                       R8 R4 K66 ["VideoCapture"]
      325 GETTABLEKS                       R10 R4 K66 ["VideoCapture"]
      327 GETTABLE                         R9 R5 R10
      328 SETTABLE                         R9 R7 R8
      329 GETTABLEKS                       R8 R2 K67 ["FFlagAssistantCapturePluginGuiTool"]
      331 JUMPIFNOT                        R8 ; [+12]
      332 GETTABLEKS                       R8 R4 K68 ["ListPluginGuis"]
      334 GETTABLEKS                       R10 R4 K68 ["ListPluginGuis"]
      336 GETTABLE                         R9 R5 R10
      337 SETTABLE                         R9 R7 R8
      338 GETTABLEKS                       R8 R4 K69 ["CapturePluginGui"]
      340 GETTABLEKS                       R10 R4 K69 ["CapturePluginGui"]
      342 GETTABLE                         R9 R5 R10
      343 SETTABLE                         R9 R7 R8
      344 GETTABLEKS                       R8 R2 K70 ["FFlagAssistantOpenCloudInvokeTool"]
      346 JUMPIFNOT                        R8 ; [+12]
      347 GETTABLEKS                       R8 R2 K71 ["EngineFeatureAssistantExecuteLuauArguments"]
      349 JUMPIFNOT                        R8 ; [+9]
      350 GETTABLEKS                       R8 R2 K72 ["FFlagAssistantUseNewDMNetworking"]
      352 JUMPIFNOT                        R8 ; [+6]
      353 GETTABLEKS                       R8 R4 K73 ["OpenCloudInvoke"]
      355 GETTABLEKS                       R10 R4 K73 ["OpenCloudInvoke"]
      357 GETTABLE                         R9 R5 R10
      358 SETTABLE                         R9 R7 R8
      359 GETTABLEKS                       R8 R2 K74 ["FFlagUseStudioSideListTool"]
      361 JUMPIFNOT                        R8 ; [+6]
      362 GETTABLEKS                       R8 R4 K75 ["ListRobloxStudios"]
      364 GETTABLEKS                       R10 R4 K75 ["ListRobloxStudios"]
      366 GETTABLE                         R9 R5 R10
      367 SETTABLE                         R9 R7 R8
      368 GETTABLEKS                       R8 R2 K76 ["FFlagAssistantMcpListSkillsTool"]
      370 JUMPIFNOT                        R8 ; [+6]
      371 GETTABLEKS                       R8 R4 K77 ["ListSkills"]
      373 GETTABLEKS                       R10 R4 K77 ["ListSkills"]
      375 GETTABLE                         R9 R5 R10
      376 SETTABLE                         R9 R7 R8
      377 GETTABLEKS                       R8 R2 K78 ["FFlagAssistantMcpListPlaceTool"]
      379 JUMPIFNOT                        R8 ; [+6]
      380 GETTABLEKS                       R8 R4 K79 ["ListPlace"]
      382 GETTABLEKS                       R10 R4 K79 ["ListPlace"]
      384 GETTABLE                         R9 R5 R10
      385 SETTABLE                         R9 R7 R8
      386 GETTABLEKS                       R8 R2 K80 ["FFlagPlaytestVision"]
      388 JUMPIFNOT                        R8 ; [+6]
      389 GETTABLEKS                       R8 R4 K81 ["PlaytestLook"]
      391 GETTABLEKS                       R10 R4 K81 ["PlaytestLook"]
      393 GETTABLE                         R9 R5 R10
      394 SETTABLE                         R9 R7 R8
      395 NEWTABLE                         R8 2 0
      397 GETTABLEKS                       R9 R4 K82 ["ScreenCapture"]
      399 GETTABLEKS                       R11 R4 K82 ["ScreenCapture"]
      401 GETTABLE                         R10 R5 R11
      402 SETTABLE                         R10 R8 R9
      403 GETTABLEKS                       R9 R4 K83 ["UploadImage"]
      405 GETTABLEKS                       R11 R2 K84 ["FFlagEnableAssistantImageUpload"]
      407 JUMPIFNOT                        R11 ; [+4]
      408 GETTABLEKS                       R11 R4 K83 ["UploadImage"]
      410 GETTABLE                         R10 R5 R11
      411 JUMP                             ; [+1]
      412 LOADNIL                          R10
      413 SETTABLE                         R10 R8 R9
      414 NEWTABLE                         R9 0 0
      416 NEWTABLE                         R10 1 0
      418 GETTABLEKS                       R11 R3 K85 ["Agent"]
      420 NEWTABLE                         R12 0 32
      422 GETTABLEKS                       R13 R4 K30 ["ExecuteLuau"]
      424 GETTABLEKS                       R14 R4 K31 ["FileSearch"]
      426 GETTABLEKS                       R15 R4 K34 ["GameTree"]
      428 GETTABLEKS                       R16 R4 K39 ["GrepSearch"]
      430 GETTABLEKS                       R17 R4 K20 ["AssetInsert"]
      432 GETTABLEKS                       R18 R4 K21 ["AssetSearch"]
      434 GETTABLEKS                       R19 R4 K41 ["InspectInstance"]
      436 GETTABLEKS                       R20 R4 K43 ["MaterialGen"]
      438 GETTABLEKS                       R21 R4 K44 ["MeshGen"]
      440 GETTABLEKS                       R22 R4 K45 ["MultiEdit"]
      442 GETTABLEKS                       R23 R4 K48 ["ReadFile"]
      444 GETTABLEKS                       R24 R4 K46 ["PrimitiveGen"]
      446 GETTABLEKS                       R25 R4 K51 ["Skill"]
      448 GETTABLEKS                       R26 R4 K54 ["Subagent"]
      450 GETTABLEKS                       R27 R4 K82 ["ScreenCapture"]
      452 GETTABLEKS                       R28 R4 K83 ["UploadImage"]
      454 SETLIST                          R12 R13 16 [1]
      456 GETTABLEKS                       R13 R4 K61 ["StartMultiPlayerAgents"]
      458 GETTABLEKS                       R14 R4 K62 ["StopMultiPlayerAgents"]
      460 GETTABLEKS                       R15 R4 K63 ["MultiPlayerAgentsCommunication"]
      462 GETTABLEKS                       R16 R4 K64 ["WaitForMultiPlayerAgentsCommunication"]
      464 GETTABLEKS                       R17 R4 K40 ["HttpGet"]
      466 GETTABLEKS                       R18 R4 K33 ["FromHistory"]
      468 GETTABLEKS                       R19 R4 K52 ["StartStopPlay"]
      470 GETTABLEKS                       R20 R4 K37 ["GetConsoleOutput"]
      472 GETTABLEKS                       R21 R4 K58 ["UserKeyboardInput"]
      474 GETTABLEKS                       R22 R4 K59 ["UserMouseInput"]
      476 GETTABLEKS                       R23 R4 K26 ["CharacterNavigation"]
      478 GETTABLEKS                       R24 R4 K66 ["VideoCapture"]
      480 GETTABLEKS                       R25 R4 K47 ["QuestionAnswer"]
      482 GETTABLEKS                       R26 R4 K27 ["CompleteTodoItems"]
      484 GETTABLEKS                       R27 R4 K42 ["JobWait"]
      486 GETTABLEKS                       R28 R4 K38 ["GetStudioState"]
      488 SETLIST                          R12 R13 16 [17]
      490 SETTABLE                         R12 R10 R11
      491 GETTABLEKS                       R13 R3 K85 ["Agent"]
      493 GETTABLE                         R12 R10 R13
      494 GETTABLEKS                       R13 R4 K53 ["StoreImage"]
      496 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      498 GETIMPORT                        R11 K88 [table.insert]
      500 CALL                             R11 2 0
      501 MOVE                             R11 R6
      502 CALL                             R11 0 1
      503 JUMPIFNOT                        R11 ; [+10]
      504 GETTABLEKS                       R13 R3 K85 ["Agent"]
      506 GETTABLE                         R12 R10 R13
      507 GETTABLEKS                       R13 R4 K18 ["AnimationGen"]
      509 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      511 GETIMPORT                        R11 K88 [table.insert]
      513 CALL                             R11 2 0
      514 GETTABLEKS                       R11 R2 K23 ["FFlagAssistantAvatarAutoSetupTool"]
      516 JUMPIFNOT                        R11 ; [+10]
      517 GETTABLEKS                       R13 R3 K85 ["Agent"]
      519 GETTABLE                         R12 R10 R13
      520 GETTABLEKS                       R13 R4 K22 ["AvatarAutoSetup"]
      522 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      524 GETIMPORT                        R11 K88 [table.insert]
      526 CALL                             R11 2 0
      527 GETTABLEKS                       R11 R2 K25 ["FFlagAssistantAvatarGenTool"]
      529 JUMPIFNOT                        R11 ; [+10]
      530 GETTABLEKS                       R13 R3 K85 ["Agent"]
      532 GETTABLE                         R12 R10 R13
      533 GETTABLEKS                       R13 R4 K24 ["AvatarGen"]
      535 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      537 GETIMPORT                        R11 K88 [table.insert]
      539 CALL                             R11 2 0
      540 GETTABLEKS                       R13 R3 K85 ["Agent"]
      542 GETTABLE                         R12 R10 R13
      543 GETTABLEKS                       R13 R4 K57 ["UpdatePlan"]
      545 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      547 GETIMPORT                        R11 K88 [table.insert]
      549 CALL                             R11 2 0
      550 GETTABLEKS                       R13 R3 K85 ["Agent"]
      552 GETTABLE                         R12 R10 R13
      553 GETTABLEKS                       R13 R4 K28 ["CreateSkill"]
      555 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      557 GETIMPORT                        R11 K88 [table.insert]
      559 CALL                             R11 2 0
      560 GETTABLEKS                       R13 R3 K85 ["Agent"]
      562 GETTABLE                         R12 R10 R13
      563 GETTABLEKS                       R13 R4 K29 ["EditSkill"]
      565 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      567 GETIMPORT                        R11 K88 [table.insert]
      569 CALL                             R11 2 0
      570 GETTABLEKS                       R11 R2 K50 ["FFlagAssistantSegmentMeshTool"]
      572 JUMPIFNOT                        R11 ; [+10]
      573 GETTABLEKS                       R13 R3 K85 ["Agent"]
      575 GETTABLE                         R12 R10 R13
      576 GETTABLEKS                       R13 R4 K49 ["SegmentMesh"]
      578 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      580 GETIMPORT                        R11 K88 [table.insert]
      582 CALL                             R11 2 0
      583 GETTABLEKS                       R11 R2 K56 ["FFlagAssistantTextureGenTool"]
      585 JUMPIFNOT                        R11 ; [+10]
      586 GETTABLEKS                       R13 R3 K85 ["Agent"]
      588 GETTABLE                         R12 R10 R13
      589 GETTABLEKS                       R13 R4 K55 ["TextureGen"]
      591 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      593 GETIMPORT                        R11 K88 [table.insert]
      595 CALL                             R11 2 0
      596 GETTABLEKS                       R11 R2 K67 ["FFlagAssistantCapturePluginGuiTool"]
      598 JUMPIFNOT                        R11 ; [+20]
      599 GETTABLEKS                       R13 R3 K85 ["Agent"]
      601 GETTABLE                         R12 R10 R13
      602 GETTABLEKS                       R13 R4 K68 ["ListPluginGuis"]
      604 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      606 GETIMPORT                        R11 K88 [table.insert]
      608 CALL                             R11 2 0
      609 GETTABLEKS                       R13 R3 K85 ["Agent"]
      611 GETTABLE                         R12 R10 R13
      612 GETTABLEKS                       R13 R4 K69 ["CapturePluginGui"]
      614 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      616 GETIMPORT                        R11 K88 [table.insert]
      618 CALL                             R11 2 0
      619 GETTABLEKS                       R11 R2 K36 ["FFlagAssistantGenerateLayoutTool"]
      621 JUMPIFNOT                        R11 ; [+10]
      622 GETTABLEKS                       R13 R3 K85 ["Agent"]
      624 GETTABLE                         R12 R10 R13
      625 GETTABLEKS                       R13 R4 K35 ["GenerateScene"]
      627 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      629 GETIMPORT                        R11 K88 [table.insert]
      631 CALL                             R11 2 0
      632 GETTABLEKS                       R11 R2 K89 ["FFlagAssistantAskInputToolLLM"]
      634 JUMPIFNOT                        R11 ; [+10]
      635 GETTABLEKS                       R13 R3 K85 ["Agent"]
      637 GETTABLE                         R12 R10 R13
      638 GETTABLEKS                       R13 R4 K19 ["AskInput"]
      640 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      642 GETIMPORT                        R11 K88 [table.insert]
      644 CALL                             R11 2 0
      645 GETTABLEKS                       R11 R3 K90 ["Plan"]
      647 NEWTABLE                         R12 0 9
      649 GETTABLEKS                       R13 R4 K48 ["ReadFile"]
      651 GETTABLEKS                       R14 R4 K31 ["FileSearch"]
      653 GETTABLEKS                       R15 R4 K39 ["GrepSearch"]
      655 GETTABLEKS                       R16 R4 K34 ["GameTree"]
      657 GETTABLEKS                       R17 R4 K41 ["InspectInstance"]
      659 GETTABLEKS                       R18 R4 K82 ["ScreenCapture"]
      661 GETTABLEKS                       R19 R4 K47 ["QuestionAnswer"]
      663 GETTABLEKS                       R20 R4 K32 ["FinalizePlan"]
      665 GETTABLEKS                       R21 R4 K57 ["UpdatePlan"]
      667 SETLIST                          R12 R13 9 [1]
      669 SETTABLE                         R12 R10 R11
      670 GETTABLEKS                       R11 R2 K89 ["FFlagAssistantAskInputToolLLM"]
      672 JUMPIFNOT                        R11 ; [+10]
      673 GETTABLEKS                       R13 R3 K90 ["Plan"]
      675 GETTABLE                         R12 R10 R13
      676 GETTABLEKS                       R13 R4 K19 ["AskInput"]
      678 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      680 GETIMPORT                        R11 K88 [table.insert]
      682 CALL                             R11 2 0
      683 NEWTABLE                         R11 0 16
      685 GETTABLEKS                       R12 R4 K30 ["ExecuteLuau"]
      687 GETTABLEKS                       R13 R4 K31 ["FileSearch"]
      689 GETTABLEKS                       R14 R4 K34 ["GameTree"]
      691 GETTABLEKS                       R15 R4 K39 ["GrepSearch"]
      693 GETTABLEKS                       R16 R4 K41 ["InspectInstance"]
      695 GETTABLEKS                       R17 R4 K48 ["ReadFile"]
      697 GETTABLEKS                       R18 R4 K51 ["Skill"]
      699 GETTABLEKS                       R19 R4 K54 ["Subagent"]
      701 GETTABLEKS                       R20 R4 K82 ["ScreenCapture"]
      703 GETTABLEKS                       R21 R4 K37 ["GetConsoleOutput"]
      705 GETTABLEKS                       R22 R4 K58 ["UserKeyboardInput"]
      707 GETTABLEKS                       R23 R4 K59 ["UserMouseInput"]
      709 GETTABLEKS                       R24 R4 K26 ["CharacterNavigation"]
      711 GETTABLEKS                       R25 R4 K63 ["MultiPlayerAgentsCommunication"]
      713 GETTABLEKS                       R26 R4 K64 ["WaitForMultiPlayerAgentsCommunication"]
      715 GETTABLEKS                       R27 R4 K38 ["GetStudioState"]
      717 SETLIST                          R11 R12 16 [1]
      719 NEWTABLE                         R12 0 0
      721 GETTABLEKS                       R13 R2 K80 ["FFlagPlaytestVision"]
      723 JUMPIFNOT                        R13 ; [+8]
      724 GETTABLEKS                       R15 R4 K81 ["PlaytestLook"]
      726 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
      728 MOVE                             R14 R12
      729 GETIMPORT                        R13 K88 [table.insert]
      731 CALL                             R13 2 0
      732 DUPTABLE                         R13 K97 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools", "SubagentOnlyTools"}]
      733 SETTABLEKS                       R7 R13 K91 ["DefaultTools"]
      735 SETTABLEKS                       R8 R13 K92 ["ExperimentalTools"]
      737 SETTABLEKS                       R9 R13 K93 ["ExperimentFeatureTools"]
      739 SETTABLEKS                       R10 R13 K94 ["AssistantModeToolsAllowlist"]
      741 SETTABLEKS                       R11 R13 K95 ["MultiPlayerTestTools"]
      743 SETTABLEKS                       R12 R13 K96 ["SubagentOnlyTools"]
      745 RETURN                           R13 1
