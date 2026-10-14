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
       77 GETTABLEKS                       R7 R4 K23 ["CharacterNavigation"]
       79 GETTABLEKS                       R9 R4 K23 ["CharacterNavigation"]
       81 GETTABLE                         R8 R5 R9
       82 SETTABLE                         R8 R6 R7
       83 GETTABLEKS                       R7 R4 K24 ["CompleteTodoItems"]
       85 GETTABLEKS                       R9 R4 K24 ["CompleteTodoItems"]
       87 GETTABLE                         R8 R5 R9
       88 SETTABLE                         R8 R6 R7
       89 GETTABLEKS                       R7 R4 K25 ["CreateSkill"]
       91 GETTABLEKS                       R9 R4 K25 ["CreateSkill"]
       93 GETTABLE                         R8 R5 R9
       94 SETTABLE                         R8 R6 R7
       95 GETTABLEKS                       R7 R4 K26 ["EditSkill"]
       97 GETTABLEKS                       R9 R4 K26 ["EditSkill"]
       99 GETTABLE                         R8 R5 R9
      100 SETTABLE                         R8 R6 R7
      101 GETTABLEKS                       R7 R4 K27 ["ExecuteLuau"]
      103 GETTABLEKS                       R9 R4 K27 ["ExecuteLuau"]
      105 GETTABLE                         R8 R5 R9
      106 SETTABLE                         R8 R6 R7
      107 GETTABLEKS                       R7 R4 K28 ["FileSearch"]
      109 GETTABLEKS                       R9 R4 K28 ["FileSearch"]
      111 GETTABLE                         R8 R5 R9
      112 SETTABLE                         R8 R6 R7
      113 GETTABLEKS                       R7 R4 K29 ["FinalizePlan"]
      115 GETTABLEKS                       R9 R4 K29 ["FinalizePlan"]
      117 GETTABLE                         R8 R5 R9
      118 SETTABLE                         R8 R6 R7
      119 GETTABLEKS                       R7 R4 K30 ["FromHistory"]
      121 GETTABLEKS                       R9 R4 K30 ["FromHistory"]
      123 GETTABLE                         R8 R5 R9
      124 SETTABLE                         R8 R6 R7
      125 GETTABLEKS                       R7 R4 K31 ["GameTree"]
      127 GETTABLEKS                       R9 R4 K31 ["GameTree"]
      129 GETTABLE                         R8 R5 R9
      130 SETTABLE                         R8 R6 R7
      131 GETTABLEKS                       R7 R4 K32 ["GenerateLayout"]
      133 GETTABLEKS                       R9 R2 K33 ["FFlagAssistantGenerateLayoutTool"]
      135 JUMPIFNOT                        R9 ; [+4]
      136 GETTABLEKS                       R9 R4 K32 ["GenerateLayout"]
      138 GETTABLE                         R8 R5 R9
      139 JUMP                             ; [+1]
      140 LOADNIL                          R8
      141 SETTABLE                         R8 R6 R7
      142 GETTABLEKS                       R7 R4 K34 ["GetConsoleOutput"]
      144 GETTABLEKS                       R9 R4 K34 ["GetConsoleOutput"]
      146 GETTABLE                         R8 R5 R9
      147 SETTABLE                         R8 R6 R7
      148 GETTABLEKS                       R7 R4 K35 ["GetStudioState"]
      150 GETTABLEKS                       R9 R4 K35 ["GetStudioState"]
      152 GETTABLE                         R8 R5 R9
      153 SETTABLE                         R8 R6 R7
      154 GETTABLEKS                       R7 R4 K36 ["GrepSearch"]
      156 GETTABLEKS                       R9 R4 K36 ["GrepSearch"]
      158 GETTABLE                         R8 R5 R9
      159 SETTABLE                         R8 R6 R7
      160 GETTABLEKS                       R7 R4 K37 ["HttpGet"]
      162 GETTABLEKS                       R9 R4 K37 ["HttpGet"]
      164 GETTABLE                         R8 R5 R9
      165 SETTABLE                         R8 R6 R7
      166 GETTABLEKS                       R7 R4 K38 ["InspectInstance"]
      168 GETTABLEKS                       R9 R4 K38 ["InspectInstance"]
      170 GETTABLE                         R8 R5 R9
      171 SETTABLE                         R8 R6 R7
      172 GETTABLEKS                       R7 R4 K39 ["JobWait"]
      174 GETTABLEKS                       R9 R4 K39 ["JobWait"]
      176 GETTABLE                         R8 R5 R9
      177 SETTABLE                         R8 R6 R7
      178 GETTABLEKS                       R7 R4 K40 ["MaterialGen"]
      180 GETTABLEKS                       R9 R4 K40 ["MaterialGen"]
      182 GETTABLE                         R8 R5 R9
      183 SETTABLE                         R8 R6 R7
      184 GETTABLEKS                       R7 R4 K41 ["MeshGen"]
      186 GETTABLEKS                       R9 R4 K41 ["MeshGen"]
      188 GETTABLE                         R8 R5 R9
      189 SETTABLE                         R8 R6 R7
      190 GETTABLEKS                       R7 R4 K42 ["MultiEdit"]
      192 GETTABLEKS                       R9 R4 K42 ["MultiEdit"]
      194 GETTABLE                         R8 R5 R9
      195 SETTABLE                         R8 R6 R7
      196 GETTABLEKS                       R7 R4 K43 ["PrimitiveGen"]
      198 GETTABLEKS                       R9 R4 K43 ["PrimitiveGen"]
      200 GETTABLE                         R8 R5 R9
      201 SETTABLE                         R8 R6 R7
      202 GETTABLEKS                       R7 R4 K44 ["QuestionAnswer"]
      204 GETTABLEKS                       R9 R4 K44 ["QuestionAnswer"]
      206 GETTABLE                         R8 R5 R9
      207 SETTABLE                         R8 R6 R7
      208 GETTABLEKS                       R7 R4 K45 ["ReadFile"]
      210 GETTABLEKS                       R9 R4 K45 ["ReadFile"]
      212 GETTABLE                         R8 R5 R9
      213 SETTABLE                         R8 R6 R7
      214 GETTABLEKS                       R7 R4 K46 ["SegmentMesh"]
      216 GETTABLEKS                       R9 R2 K47 ["FFlagAssistantSegmentMeshTool"]
      218 JUMPIFNOT                        R9 ; [+4]
      219 GETTABLEKS                       R9 R4 K46 ["SegmentMesh"]
      221 GETTABLE                         R8 R5 R9
      222 JUMP                             ; [+1]
      223 LOADNIL                          R8
      224 SETTABLE                         R8 R6 R7
      225 GETTABLEKS                       R7 R4 K48 ["Skill"]
      227 GETTABLEKS                       R9 R4 K48 ["Skill"]
      229 GETTABLE                         R8 R5 R9
      230 SETTABLE                         R8 R6 R7
      231 GETTABLEKS                       R7 R4 K49 ["StartStopPlay"]
      233 GETTABLEKS                       R9 R4 K49 ["StartStopPlay"]
      235 GETTABLE                         R8 R5 R9
      236 SETTABLE                         R8 R6 R7
      237 GETTABLEKS                       R7 R4 K50 ["StoreImage"]
      239 GETTABLEKS                       R9 R4 K50 ["StoreImage"]
      241 GETTABLE                         R8 R5 R9
      242 SETTABLE                         R8 R6 R7
      243 GETTABLEKS                       R7 R4 K51 ["Subagent"]
      245 GETTABLEKS                       R9 R4 K51 ["Subagent"]
      247 GETTABLE                         R8 R5 R9
      248 SETTABLE                         R8 R6 R7
      249 GETTABLEKS                       R7 R4 K52 ["TextureGen"]
      251 GETTABLEKS                       R9 R2 K53 ["FFlagAssistantTextureGenTool"]
      253 JUMPIFNOT                        R9 ; [+4]
      254 GETTABLEKS                       R9 R4 K52 ["TextureGen"]
      256 GETTABLE                         R8 R5 R9
      257 JUMP                             ; [+1]
      258 LOADNIL                          R8
      259 SETTABLE                         R8 R6 R7
      260 GETTABLEKS                       R7 R4 K54 ["UpdatePlan"]
      262 GETTABLEKS                       R9 R4 K54 ["UpdatePlan"]
      264 GETTABLE                         R8 R5 R9
      265 SETTABLE                         R8 R6 R7
      266 GETTABLEKS                       R7 R4 K55 ["UserKeyboardInput"]
      268 GETTABLEKS                       R9 R4 K55 ["UserKeyboardInput"]
      270 GETTABLE                         R8 R5 R9
      271 SETTABLE                         R8 R6 R7
      272 GETTABLEKS                       R7 R4 K56 ["UserMouseInput"]
      274 GETTABLEKS                       R9 R4 K56 ["UserMouseInput"]
      276 GETTABLE                         R8 R5 R9
      277 SETTABLE                         R8 R6 R7
      278 GETTABLEKS                       R7 R2 K57 ["FFlagAssistantMultiPlayerAgents"]
      280 JUMPIFNOT                        R7 ; [+24]
      281 GETTABLEKS                       R7 R4 K58 ["StartMultiPlayerAgents"]
      283 GETTABLEKS                       R9 R4 K58 ["StartMultiPlayerAgents"]
      285 GETTABLE                         R8 R5 R9
      286 SETTABLE                         R8 R6 R7
      287 GETTABLEKS                       R7 R4 K59 ["StopMultiPlayerAgents"]
      289 GETTABLEKS                       R9 R4 K59 ["StopMultiPlayerAgents"]
      291 GETTABLE                         R8 R5 R9
      292 SETTABLE                         R8 R6 R7
      293 GETTABLEKS                       R7 R4 K60 ["MultiPlayerAgentsCommunication"]
      295 GETTABLEKS                       R9 R4 K60 ["MultiPlayerAgentsCommunication"]
      297 GETTABLE                         R8 R5 R9
      298 SETTABLE                         R8 R6 R7
      299 GETTABLEKS                       R7 R4 K61 ["WaitForMultiPlayerAgentsCommunication"]
      301 GETTABLEKS                       R9 R4 K61 ["WaitForMultiPlayerAgentsCommunication"]
      303 GETTABLE                         R8 R5 R9
      304 SETTABLE                         R8 R6 R7
      305 GETTABLEKS                       R7 R2 K62 ["FFlagAssistantVideoCaptureTool"]
      307 JUMPIFNOT                        R7 ; [+6]
      308 GETTABLEKS                       R7 R4 K63 ["VideoCapture"]
      310 GETTABLEKS                       R9 R4 K63 ["VideoCapture"]
      312 GETTABLE                         R8 R5 R9
      313 SETTABLE                         R8 R6 R7
      314 GETTABLEKS                       R7 R2 K64 ["FFlagAssistantCapturePluginGuiTool"]
      316 JUMPIFNOT                        R7 ; [+12]
      317 GETTABLEKS                       R7 R4 K65 ["ListPluginGuis"]
      319 GETTABLEKS                       R9 R4 K65 ["ListPluginGuis"]
      321 GETTABLE                         R8 R5 R9
      322 SETTABLE                         R8 R6 R7
      323 GETTABLEKS                       R7 R4 K66 ["CapturePluginGui"]
      325 GETTABLEKS                       R9 R4 K66 ["CapturePluginGui"]
      327 GETTABLE                         R8 R5 R9
      328 SETTABLE                         R8 R6 R7
      329 GETTABLEKS                       R7 R2 K67 ["FFlagUseStudioSideListTool"]
      331 JUMPIFNOT                        R7 ; [+6]
      332 GETTABLEKS                       R7 R4 K68 ["ListRobloxStudios"]
      334 GETTABLEKS                       R9 R4 K68 ["ListRobloxStudios"]
      336 GETTABLE                         R8 R5 R9
      337 SETTABLE                         R8 R6 R7
      338 GETTABLEKS                       R7 R2 K69 ["FFlagPlaytestVision"]
      340 JUMPIFNOT                        R7 ; [+6]
      341 GETTABLEKS                       R7 R4 K70 ["PlaytestLook"]
      343 GETTABLEKS                       R9 R4 K70 ["PlaytestLook"]
      345 GETTABLE                         R8 R5 R9
      346 SETTABLE                         R8 R6 R7
      347 NEWTABLE                         R7 2 0
      349 GETTABLEKS                       R8 R4 K71 ["ScreenCapture"]
      351 GETTABLEKS                       R10 R4 K71 ["ScreenCapture"]
      353 GETTABLE                         R9 R5 R10
      354 SETTABLE                         R9 R7 R8
      355 GETTABLEKS                       R8 R4 K72 ["UploadImage"]
      357 GETTABLEKS                       R10 R2 K73 ["FFlagEnableAssistantImageUpload"]
      359 JUMPIFNOT                        R10 ; [+4]
      360 GETTABLEKS                       R10 R4 K72 ["UploadImage"]
      362 GETTABLE                         R9 R5 R10
      363 JUMP                             ; [+1]
      364 LOADNIL                          R9
      365 SETTABLE                         R9 R7 R8
      366 NEWTABLE                         R8 0 0
      368 NEWTABLE                         R9 1 0
      370 GETTABLEKS                       R10 R3 K74 ["Agent"]
      372 NEWTABLE                         R11 0 32
      374 GETTABLEKS                       R12 R4 K27 ["ExecuteLuau"]
      376 GETTABLEKS                       R13 R4 K28 ["FileSearch"]
      378 GETTABLEKS                       R14 R4 K31 ["GameTree"]
      380 GETTABLEKS                       R15 R4 K36 ["GrepSearch"]
      382 GETTABLEKS                       R16 R4 K19 ["AssetInsert"]
      384 GETTABLEKS                       R17 R4 K20 ["AssetSearch"]
      386 GETTABLEKS                       R18 R4 K38 ["InspectInstance"]
      388 GETTABLEKS                       R19 R4 K40 ["MaterialGen"]
      390 GETTABLEKS                       R20 R4 K41 ["MeshGen"]
      392 GETTABLEKS                       R21 R4 K42 ["MultiEdit"]
      394 GETTABLEKS                       R22 R4 K45 ["ReadFile"]
      396 GETTABLEKS                       R23 R4 K43 ["PrimitiveGen"]
      398 GETTABLEKS                       R24 R4 K48 ["Skill"]
      400 GETTABLEKS                       R25 R4 K51 ["Subagent"]
      402 GETTABLEKS                       R26 R4 K71 ["ScreenCapture"]
      404 GETTABLEKS                       R27 R4 K72 ["UploadImage"]
      406 SETLIST                          R11 R12 16 [1]
      408 GETTABLEKS                       R12 R4 K58 ["StartMultiPlayerAgents"]
      410 GETTABLEKS                       R13 R4 K59 ["StopMultiPlayerAgents"]
      412 GETTABLEKS                       R14 R4 K60 ["MultiPlayerAgentsCommunication"]
      414 GETTABLEKS                       R15 R4 K61 ["WaitForMultiPlayerAgentsCommunication"]
      416 GETTABLEKS                       R16 R4 K37 ["HttpGet"]
      418 GETTABLEKS                       R17 R4 K30 ["FromHistory"]
      420 GETTABLEKS                       R18 R4 K49 ["StartStopPlay"]
      422 GETTABLEKS                       R19 R4 K34 ["GetConsoleOutput"]
      424 GETTABLEKS                       R20 R4 K55 ["UserKeyboardInput"]
      426 GETTABLEKS                       R21 R4 K56 ["UserMouseInput"]
      428 GETTABLEKS                       R22 R4 K23 ["CharacterNavigation"]
      430 GETTABLEKS                       R23 R4 K63 ["VideoCapture"]
      432 GETTABLEKS                       R24 R4 K44 ["QuestionAnswer"]
      434 GETTABLEKS                       R25 R4 K24 ["CompleteTodoItems"]
      436 GETTABLEKS                       R26 R4 K39 ["JobWait"]
      438 GETTABLEKS                       R27 R4 K35 ["GetStudioState"]
      440 SETLIST                          R11 R12 16 [17]
      442 SETTABLE                         R11 R9 R10
      443 GETTABLEKS                       R12 R3 K74 ["Agent"]
      445 GETTABLE                         R11 R9 R12
      446 GETTABLEKS                       R12 R4 K50 ["StoreImage"]
      448 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      450 GETIMPORT                        R10 K77 [table.insert]
      452 CALL                             R10 2 0
      453 GETTABLEKS                       R10 R2 K17 ["FFlagAssistantAnimationGenTool"]
      455 JUMPIFNOT                        R10 ; [+10]
      456 GETTABLEKS                       R12 R3 K74 ["Agent"]
      458 GETTABLE                         R11 R9 R12
      459 GETTABLEKS                       R12 R4 K16 ["AnimationGen"]
      461 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      463 GETIMPORT                        R10 K77 [table.insert]
      465 CALL                             R10 2 0
      466 GETTABLEKS                       R10 R2 K22 ["FFlagAssistantAvatarAutoSetupTool"]
      468 JUMPIFNOT                        R10 ; [+10]
      469 GETTABLEKS                       R12 R3 K74 ["Agent"]
      471 GETTABLE                         R11 R9 R12
      472 GETTABLEKS                       R12 R4 K21 ["AvatarAutoSetup"]
      474 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      476 GETIMPORT                        R10 K77 [table.insert]
      478 CALL                             R10 2 0
      479 GETTABLEKS                       R12 R3 K74 ["Agent"]
      481 GETTABLE                         R11 R9 R12
      482 GETTABLEKS                       R12 R4 K54 ["UpdatePlan"]
      484 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      486 GETIMPORT                        R10 K77 [table.insert]
      488 CALL                             R10 2 0
      489 GETTABLEKS                       R12 R3 K74 ["Agent"]
      491 GETTABLE                         R11 R9 R12
      492 GETTABLEKS                       R12 R4 K25 ["CreateSkill"]
      494 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      496 GETIMPORT                        R10 K77 [table.insert]
      498 CALL                             R10 2 0
      499 GETTABLEKS                       R12 R3 K74 ["Agent"]
      501 GETTABLE                         R11 R9 R12
      502 GETTABLEKS                       R12 R4 K26 ["EditSkill"]
      504 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      506 GETIMPORT                        R10 K77 [table.insert]
      508 CALL                             R10 2 0
      509 GETTABLEKS                       R10 R2 K47 ["FFlagAssistantSegmentMeshTool"]
      511 JUMPIFNOT                        R10 ; [+10]
      512 GETTABLEKS                       R12 R3 K74 ["Agent"]
      514 GETTABLE                         R11 R9 R12
      515 GETTABLEKS                       R12 R4 K46 ["SegmentMesh"]
      517 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      519 GETIMPORT                        R10 K77 [table.insert]
      521 CALL                             R10 2 0
      522 GETTABLEKS                       R10 R2 K53 ["FFlagAssistantTextureGenTool"]
      524 JUMPIFNOT                        R10 ; [+10]
      525 GETTABLEKS                       R12 R3 K74 ["Agent"]
      527 GETTABLE                         R11 R9 R12
      528 GETTABLEKS                       R12 R4 K52 ["TextureGen"]
      530 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      532 GETIMPORT                        R10 K77 [table.insert]
      534 CALL                             R10 2 0
      535 GETTABLEKS                       R10 R2 K64 ["FFlagAssistantCapturePluginGuiTool"]
      537 JUMPIFNOT                        R10 ; [+20]
      538 GETTABLEKS                       R12 R3 K74 ["Agent"]
      540 GETTABLE                         R11 R9 R12
      541 GETTABLEKS                       R12 R4 K65 ["ListPluginGuis"]
      543 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      545 GETIMPORT                        R10 K77 [table.insert]
      547 CALL                             R10 2 0
      548 GETTABLEKS                       R12 R3 K74 ["Agent"]
      550 GETTABLE                         R11 R9 R12
      551 GETTABLEKS                       R12 R4 K66 ["CapturePluginGui"]
      553 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      555 GETIMPORT                        R10 K77 [table.insert]
      557 CALL                             R10 2 0
      558 GETTABLEKS                       R10 R2 K33 ["FFlagAssistantGenerateLayoutTool"]
      560 JUMPIFNOT                        R10 ; [+10]
      561 GETTABLEKS                       R12 R3 K74 ["Agent"]
      563 GETTABLE                         R11 R9 R12
      564 GETTABLEKS                       R12 R4 K32 ["GenerateLayout"]
      566 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      568 GETIMPORT                        R10 K77 [table.insert]
      570 CALL                             R10 2 0
      571 GETTABLEKS                       R10 R2 K78 ["FFlagAssistantAskInputToolLLM"]
      573 JUMPIFNOT                        R10 ; [+10]
      574 GETTABLEKS                       R12 R3 K74 ["Agent"]
      576 GETTABLE                         R11 R9 R12
      577 GETTABLEKS                       R12 R4 K18 ["AskInput"]
      579 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      581 GETIMPORT                        R10 K77 [table.insert]
      583 CALL                             R10 2 0
      584 GETTABLEKS                       R10 R3 K79 ["Plan"]
      586 NEWTABLE                         R11 0 9
      588 GETTABLEKS                       R12 R4 K45 ["ReadFile"]
      590 GETTABLEKS                       R13 R4 K28 ["FileSearch"]
      592 GETTABLEKS                       R14 R4 K36 ["GrepSearch"]
      594 GETTABLEKS                       R15 R4 K31 ["GameTree"]
      596 GETTABLEKS                       R16 R4 K38 ["InspectInstance"]
      598 GETTABLEKS                       R17 R4 K71 ["ScreenCapture"]
      600 GETTABLEKS                       R18 R4 K44 ["QuestionAnswer"]
      602 GETTABLEKS                       R19 R4 K29 ["FinalizePlan"]
      604 GETTABLEKS                       R20 R4 K54 ["UpdatePlan"]
      606 SETLIST                          R11 R12 9 [1]
      608 SETTABLE                         R11 R9 R10
      609 GETTABLEKS                       R10 R2 K78 ["FFlagAssistantAskInputToolLLM"]
      611 JUMPIFNOT                        R10 ; [+10]
      612 GETTABLEKS                       R12 R3 K79 ["Plan"]
      614 GETTABLE                         R11 R9 R12
      615 GETTABLEKS                       R12 R4 K18 ["AskInput"]
      617 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      619 GETIMPORT                        R10 K77 [table.insert]
      621 CALL                             R10 2 0
      622 NEWTABLE                         R10 0 16
      624 GETTABLEKS                       R11 R4 K27 ["ExecuteLuau"]
      626 GETTABLEKS                       R12 R4 K28 ["FileSearch"]
      628 GETTABLEKS                       R13 R4 K31 ["GameTree"]
      630 GETTABLEKS                       R14 R4 K36 ["GrepSearch"]
      632 GETTABLEKS                       R15 R4 K38 ["InspectInstance"]
      634 GETTABLEKS                       R16 R4 K45 ["ReadFile"]
      636 GETTABLEKS                       R17 R4 K48 ["Skill"]
      638 GETTABLEKS                       R18 R4 K51 ["Subagent"]
      640 GETTABLEKS                       R19 R4 K71 ["ScreenCapture"]
      642 GETTABLEKS                       R20 R4 K34 ["GetConsoleOutput"]
      644 GETTABLEKS                       R21 R4 K55 ["UserKeyboardInput"]
      646 GETTABLEKS                       R22 R4 K56 ["UserMouseInput"]
      648 GETTABLEKS                       R23 R4 K23 ["CharacterNavigation"]
      650 GETTABLEKS                       R24 R4 K60 ["MultiPlayerAgentsCommunication"]
      652 GETTABLEKS                       R25 R4 K61 ["WaitForMultiPlayerAgentsCommunication"]
      654 GETTABLEKS                       R26 R4 K35 ["GetStudioState"]
      656 SETLIST                          R10 R11 16 [1]
      658 NEWTABLE                         R11 0 0
      660 GETTABLEKS                       R12 R2 K69 ["FFlagPlaytestVision"]
      662 JUMPIFNOT                        R12 ; [+8]
      663 GETTABLEKS                       R14 R4 K70 ["PlaytestLook"]
      665 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
      667 MOVE                             R13 R11
      668 GETIMPORT                        R12 K77 [table.insert]
      670 CALL                             R12 2 0
      671 DUPTABLE                         R12 K86 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools", "SubagentOnlyTools"}]
      672 SETTABLEKS                       R6 R12 K80 ["DefaultTools"]
      674 SETTABLEKS                       R7 R12 K81 ["ExperimentalTools"]
      676 SETTABLEKS                       R8 R12 K82 ["ExperimentFeatureTools"]
      678 SETTABLEKS                       R9 R12 K83 ["AssistantModeToolsAllowlist"]
      680 SETTABLEKS                       R10 R12 K84 ["MultiPlayerTestTools"]
      682 SETTABLEKS                       R11 R12 K85 ["SubagentOnlyTools"]
      684 RETURN                           R12 1
