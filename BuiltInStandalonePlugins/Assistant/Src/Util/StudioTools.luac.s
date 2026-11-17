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
       64 GETTABLEKS                       R8 R4 K21 ["AssetQuality"]
       66 GETTABLEKS                       R10 R2 K22 ["FFlagAssistantAssetQualityTool"]
       68 JUMPIFNOT                        R10 ; [+4]
       69 GETTABLEKS                       R10 R4 K21 ["AssetQuality"]
       71 GETTABLE                         R9 R5 R10
       72 JUMP                             ; [+1]
       73 LOADNIL                          R9
       74 SETTABLE                         R9 R7 R8
       75 GETTABLEKS                       R8 R4 K23 ["AssetSearch"]
       77 GETTABLEKS                       R10 R4 K23 ["AssetSearch"]
       79 GETTABLE                         R9 R5 R10
       80 SETTABLE                         R9 R7 R8
       81 GETTABLEKS                       R8 R4 K24 ["AvatarAutoSetup"]
       83 GETTABLEKS                       R10 R2 K25 ["FFlagAssistantAvatarAutoSetupTool"]
       85 JUMPIFNOT                        R10 ; [+4]
       86 GETTABLEKS                       R10 R4 K24 ["AvatarAutoSetup"]
       88 GETTABLE                         R9 R5 R10
       89 JUMP                             ; [+1]
       90 LOADNIL                          R9
       91 SETTABLE                         R9 R7 R8
       92 GETTABLEKS                       R8 R4 K26 ["AvatarGen"]
       94 GETTABLEKS                       R10 R2 K27 ["FFlagAssistantAvatarGenTool"]
       96 JUMPIFNOT                        R10 ; [+4]
       97 GETTABLEKS                       R10 R4 K26 ["AvatarGen"]
       99 GETTABLE                         R9 R5 R10
      100 JUMP                             ; [+1]
      101 LOADNIL                          R9
      102 SETTABLE                         R9 R7 R8
      103 GETTABLEKS                       R8 R4 K28 ["CharacterNavigation"]
      105 GETTABLEKS                       R10 R4 K28 ["CharacterNavigation"]
      107 GETTABLE                         R9 R5 R10
      108 SETTABLE                         R9 R7 R8
      109 GETTABLEKS                       R8 R4 K29 ["CompleteTodoItems"]
      111 GETTABLEKS                       R10 R4 K29 ["CompleteTodoItems"]
      113 GETTABLE                         R9 R5 R10
      114 SETTABLE                         R9 R7 R8
      115 GETTABLEKS                       R8 R4 K30 ["CreateSkill"]
      117 GETTABLEKS                       R10 R4 K30 ["CreateSkill"]
      119 GETTABLE                         R9 R5 R10
      120 SETTABLE                         R9 R7 R8
      121 GETTABLEKS                       R8 R4 K31 ["EditSkill"]
      123 GETTABLEKS                       R10 R4 K31 ["EditSkill"]
      125 GETTABLE                         R9 R5 R10
      126 SETTABLE                         R9 R7 R8
      127 GETTABLEKS                       R8 R4 K32 ["ExecuteLuau"]
      129 GETTABLEKS                       R10 R4 K32 ["ExecuteLuau"]
      131 GETTABLE                         R9 R5 R10
      132 SETTABLE                         R9 R7 R8
      133 GETTABLEKS                       R8 R4 K33 ["FileSearch"]
      135 GETTABLEKS                       R10 R4 K33 ["FileSearch"]
      137 GETTABLE                         R9 R5 R10
      138 SETTABLE                         R9 R7 R8
      139 GETTABLEKS                       R8 R4 K34 ["FinalizePlan"]
      141 GETTABLEKS                       R10 R4 K34 ["FinalizePlan"]
      143 GETTABLE                         R9 R5 R10
      144 SETTABLE                         R9 R7 R8
      145 GETTABLEKS                       R8 R4 K35 ["FromHistory"]
      147 GETTABLEKS                       R10 R4 K35 ["FromHistory"]
      149 GETTABLE                         R9 R5 R10
      150 SETTABLE                         R9 R7 R8
      151 GETTABLEKS                       R8 R4 K36 ["GameTree"]
      153 GETTABLEKS                       R10 R4 K36 ["GameTree"]
      155 GETTABLE                         R9 R5 R10
      156 SETTABLE                         R9 R7 R8
      157 GETTABLEKS                       R8 R4 K37 ["GenerateScene"]
      159 GETTABLEKS                       R10 R2 K38 ["FFlagAssistantGenerateLayoutTool"]
      161 JUMPIFNOT                        R10 ; [+4]
      162 GETTABLEKS                       R10 R4 K37 ["GenerateScene"]
      164 GETTABLE                         R9 R5 R10
      165 JUMP                             ; [+1]
      166 LOADNIL                          R9
      167 SETTABLE                         R9 R7 R8
      168 GETTABLEKS                       R8 R4 K39 ["GetConsoleOutput"]
      170 GETTABLEKS                       R10 R4 K39 ["GetConsoleOutput"]
      172 GETTABLE                         R9 R5 R10
      173 SETTABLE                         R9 R7 R8
      174 GETTABLEKS                       R8 R4 K40 ["GetStudioState"]
      176 GETTABLEKS                       R10 R4 K40 ["GetStudioState"]
      178 GETTABLE                         R9 R5 R10
      179 SETTABLE                         R9 R7 R8
      180 GETTABLEKS                       R8 R4 K41 ["GrepSearch"]
      182 GETTABLEKS                       R10 R4 K41 ["GrepSearch"]
      184 GETTABLE                         R9 R5 R10
      185 SETTABLE                         R9 R7 R8
      186 GETTABLEKS                       R8 R4 K42 ["HttpGet"]
      188 GETTABLEKS                       R10 R4 K42 ["HttpGet"]
      190 GETTABLE                         R9 R5 R10
      191 SETTABLE                         R9 R7 R8
      192 GETTABLEKS                       R8 R4 K43 ["InspectInstance"]
      194 GETTABLEKS                       R10 R4 K43 ["InspectInstance"]
      196 GETTABLE                         R9 R5 R10
      197 SETTABLE                         R9 R7 R8
      198 GETTABLEKS                       R8 R4 K44 ["JobWait"]
      200 GETTABLEKS                       R10 R4 K44 ["JobWait"]
      202 GETTABLE                         R9 R5 R10
      203 SETTABLE                         R9 R7 R8
      204 GETTABLEKS                       R8 R4 K45 ["MaterialGen"]
      206 GETTABLEKS                       R10 R4 K45 ["MaterialGen"]
      208 GETTABLE                         R9 R5 R10
      209 SETTABLE                         R9 R7 R8
      210 GETTABLEKS                       R8 R4 K46 ["MeshGen"]
      212 GETTABLEKS                       R10 R4 K46 ["MeshGen"]
      214 GETTABLE                         R9 R5 R10
      215 SETTABLE                         R9 R7 R8
      216 GETTABLEKS                       R8 R4 K47 ["MultiEdit"]
      218 GETTABLEKS                       R10 R4 K47 ["MultiEdit"]
      220 GETTABLE                         R9 R5 R10
      221 SETTABLE                         R9 R7 R8
      222 GETTABLEKS                       R8 R4 K48 ["PrimitiveGen"]
      224 GETTABLEKS                       R10 R4 K48 ["PrimitiveGen"]
      226 GETTABLE                         R9 R5 R10
      227 SETTABLE                         R9 R7 R8
      228 GETTABLEKS                       R8 R4 K49 ["QuestionAnswer"]
      230 GETTABLEKS                       R10 R4 K49 ["QuestionAnswer"]
      232 GETTABLE                         R9 R5 R10
      233 SETTABLE                         R9 R7 R8
      234 GETTABLEKS                       R8 R4 K50 ["ReadFile"]
      236 GETTABLEKS                       R10 R4 K50 ["ReadFile"]
      238 GETTABLE                         R9 R5 R10
      239 SETTABLE                         R9 R7 R8
      240 GETTABLEKS                       R8 R4 K51 ["SavePlace"]
      242 GETTABLEKS                       R10 R2 K52 ["FFlagAssistantSavePlaceTool"]
      244 JUMPIFNOT                        R10 ; [+4]
      245 GETTABLEKS                       R10 R4 K51 ["SavePlace"]
      247 GETTABLE                         R9 R5 R10
      248 JUMP                             ; [+1]
      249 LOADNIL                          R9
      250 SETTABLE                         R9 R7 R8
      251 GETTABLEKS                       R8 R4 K53 ["SegmentMesh"]
      253 GETTABLEKS                       R10 R2 K54 ["FFlagAssistantSegmentMeshTool"]
      255 JUMPIFNOT                        R10 ; [+4]
      256 GETTABLEKS                       R10 R4 K53 ["SegmentMesh"]
      258 GETTABLE                         R9 R5 R10
      259 JUMP                             ; [+1]
      260 LOADNIL                          R9
      261 SETTABLE                         R9 R7 R8
      262 GETTABLEKS                       R8 R4 K55 ["Skill"]
      264 GETTABLEKS                       R10 R4 K55 ["Skill"]
      266 GETTABLE                         R9 R5 R10
      267 SETTABLE                         R9 R7 R8
      268 GETTABLEKS                       R8 R4 K56 ["StartStopPlay"]
      270 GETTABLEKS                       R10 R4 K56 ["StartStopPlay"]
      272 GETTABLE                         R9 R5 R10
      273 SETTABLE                         R9 R7 R8
      274 GETTABLEKS                       R8 R4 K57 ["StoreImage"]
      276 GETTABLEKS                       R10 R4 K57 ["StoreImage"]
      278 GETTABLE                         R9 R5 R10
      279 SETTABLE                         R9 R7 R8
      280 GETTABLEKS                       R8 R4 K58 ["Subagent"]
      282 GETTABLEKS                       R10 R4 K58 ["Subagent"]
      284 GETTABLE                         R9 R5 R10
      285 SETTABLE                         R9 R7 R8
      286 GETTABLEKS                       R8 R4 K59 ["TextureGen"]
      288 GETTABLEKS                       R10 R2 K60 ["FFlagAssistantTextureGenTool"]
      290 JUMPIFNOT                        R10 ; [+4]
      291 GETTABLEKS                       R10 R4 K59 ["TextureGen"]
      293 GETTABLE                         R9 R5 R10
      294 JUMP                             ; [+1]
      295 LOADNIL                          R9
      296 SETTABLE                         R9 R7 R8
      297 GETTABLEKS                       R8 R4 K61 ["UpdatePlan"]
      299 GETTABLEKS                       R10 R4 K61 ["UpdatePlan"]
      301 GETTABLE                         R9 R5 R10
      302 SETTABLE                         R9 R7 R8
      303 GETTABLEKS                       R8 R4 K62 ["UserKeyboardInput"]
      305 GETTABLEKS                       R10 R4 K62 ["UserKeyboardInput"]
      307 GETTABLE                         R9 R5 R10
      308 SETTABLE                         R9 R7 R8
      309 GETTABLEKS                       R8 R4 K63 ["UserMouseInput"]
      311 GETTABLEKS                       R10 R4 K63 ["UserMouseInput"]
      313 GETTABLE                         R9 R5 R10
      314 SETTABLE                         R9 R7 R8
      315 GETTABLEKS                       R8 R2 K64 ["FFlagAssistantMultiPlayerAgents"]
      317 JUMPIFNOT                        R8 ; [+24]
      318 GETTABLEKS                       R8 R4 K65 ["StartMultiPlayerAgents"]
      320 GETTABLEKS                       R10 R4 K65 ["StartMultiPlayerAgents"]
      322 GETTABLE                         R9 R5 R10
      323 SETTABLE                         R9 R7 R8
      324 GETTABLEKS                       R8 R4 K66 ["StopMultiPlayerAgents"]
      326 GETTABLEKS                       R10 R4 K66 ["StopMultiPlayerAgents"]
      328 GETTABLE                         R9 R5 R10
      329 SETTABLE                         R9 R7 R8
      330 GETTABLEKS                       R8 R4 K67 ["MultiPlayerAgentsCommunication"]
      332 GETTABLEKS                       R10 R4 K67 ["MultiPlayerAgentsCommunication"]
      334 GETTABLE                         R9 R5 R10
      335 SETTABLE                         R9 R7 R8
      336 GETTABLEKS                       R8 R4 K68 ["WaitForMultiPlayerAgentsCommunication"]
      338 GETTABLEKS                       R10 R4 K68 ["WaitForMultiPlayerAgentsCommunication"]
      340 GETTABLE                         R9 R5 R10
      341 SETTABLE                         R9 R7 R8
      342 GETTABLEKS                       R8 R2 K69 ["FFlagAssistantVideoCaptureTool"]
      344 JUMPIFNOT                        R8 ; [+6]
      345 GETTABLEKS                       R8 R4 K70 ["VideoCapture"]
      347 GETTABLEKS                       R10 R4 K70 ["VideoCapture"]
      349 GETTABLE                         R9 R5 R10
      350 SETTABLE                         R9 R7 R8
      351 GETTABLEKS                       R8 R2 K71 ["FFlagAssistantListPluginGuisTool"]
      353 JUMPIFNOT                        R8 ; [+15]
      354 GETTABLEKS                       R8 R4 K72 ["ListPluginGuis"]
      356 GETTABLEKS                       R10 R4 K72 ["ListPluginGuis"]
      358 GETTABLE                         R9 R5 R10
      359 SETTABLE                         R9 R7 R8
      360 GETTABLEKS                       R8 R2 K73 ["FFlagAssistantCapturePluginGuiTool"]
      362 JUMPIFNOT                        R8 ; [+6]
      363 GETTABLEKS                       R8 R4 K74 ["CapturePluginGui"]
      365 GETTABLEKS                       R10 R4 K74 ["CapturePluginGui"]
      367 GETTABLE                         R9 R5 R10
      368 SETTABLE                         R9 R7 R8
      369 GETTABLEKS                       R8 R2 K75 ["FFlagAssistantActivatePluginTool"]
      371 JUMPIFNOT                        R8 ; [+12]
      372 GETTABLEKS                       R8 R4 K76 ["ListPluginActions"]
      374 GETTABLEKS                       R10 R4 K76 ["ListPluginActions"]
      376 GETTABLE                         R9 R5 R10
      377 SETTABLE                         R9 R7 R8
      378 GETTABLEKS                       R8 R4 K77 ["OpenPlugin"]
      380 GETTABLEKS                       R10 R4 K77 ["OpenPlugin"]
      382 GETTABLE                         R9 R5 R10
      383 SETTABLE                         R9 R7 R8
      384 GETTABLEKS                       R8 R2 K78 ["FFlagAssistantOpenCloudInvokeTool"]
      386 JUMPIFNOT                        R8 ; [+9]
      387 GETTABLEKS                       R8 R2 K79 ["EngineFeatureAssistantExecuteLuauArguments"]
      389 JUMPIFNOT                        R8 ; [+6]
      390 GETTABLEKS                       R8 R4 K80 ["OpenCloudInvoke"]
      392 GETTABLEKS                       R10 R4 K80 ["OpenCloudInvoke"]
      394 GETTABLE                         R9 R5 R10
      395 SETTABLE                         R9 R7 R8
      396 GETTABLEKS                       R8 R2 K81 ["FFlagAssistantMcpListStudiosTool"]
      398 JUMPIFNOT                        R8 ; [+6]
      399 GETTABLEKS                       R8 R4 K82 ["ListRobloxStudios"]
      401 GETTABLEKS                       R10 R4 K82 ["ListRobloxStudios"]
      403 GETTABLE                         R9 R5 R10
      404 SETTABLE                         R9 R7 R8
      405 GETTABLEKS                       R8 R2 K83 ["FFlagAssistantMcpListSkillsTool"]
      407 JUMPIFNOT                        R8 ; [+6]
      408 GETTABLEKS                       R8 R4 K84 ["ListSkills"]
      410 GETTABLEKS                       R10 R4 K84 ["ListSkills"]
      412 GETTABLE                         R9 R5 R10
      413 SETTABLE                         R9 R7 R8
      414 GETTABLEKS                       R8 R2 K85 ["FFlagAssistantMcpListPlaceTool"]
      416 JUMPIFNOT                        R8 ; [+6]
      417 GETTABLEKS                       R8 R4 K86 ["ListPlace"]
      419 GETTABLEKS                       R10 R4 K86 ["ListPlace"]
      421 GETTABLE                         R9 R5 R10
      422 SETTABLE                         R9 R7 R8
      423 GETTABLEKS                       R8 R2 K87 ["FFlagAssistantMcpSubmitFeedbackTool"]
      425 JUMPIFNOT                        R8 ; [+6]
      426 GETTABLEKS                       R8 R4 K88 ["SubmitFeedback"]
      428 GETTABLEKS                       R10 R4 K88 ["SubmitFeedback"]
      430 GETTABLE                         R9 R5 R10
      431 SETTABLE                         R9 R7 R8
      432 GETTABLEKS                       R8 R2 K89 ["FFlagPlaytestVision"]
      434 JUMPIFNOT                        R8 ; [+6]
      435 GETTABLEKS                       R8 R4 K90 ["PlaytestLook"]
      437 GETTABLEKS                       R10 R4 K90 ["PlaytestLook"]
      439 GETTABLE                         R9 R5 R10
      440 SETTABLE                         R9 R7 R8
      441 NEWTABLE                         R8 2 0
      443 GETTABLEKS                       R9 R4 K91 ["ScreenCapture"]
      445 GETTABLEKS                       R11 R4 K91 ["ScreenCapture"]
      447 GETTABLE                         R10 R5 R11
      448 SETTABLE                         R10 R8 R9
      449 GETTABLEKS                       R9 R4 K92 ["UploadImage"]
      451 GETTABLEKS                       R11 R2 K93 ["FFlagEnableAssistantImageUpload"]
      453 JUMPIFNOT                        R11 ; [+4]
      454 GETTABLEKS                       R11 R4 K92 ["UploadImage"]
      456 GETTABLE                         R10 R5 R11
      457 JUMP                             ; [+1]
      458 LOADNIL                          R10
      459 SETTABLE                         R10 R8 R9
      460 NEWTABLE                         R9 0 0
      462 NEWTABLE                         R10 1 0
      464 GETTABLEKS                       R11 R3 K94 ["Agent"]
      466 NEWTABLE                         R12 0 32
      468 GETTABLEKS                       R13 R4 K32 ["ExecuteLuau"]
      470 GETTABLEKS                       R14 R4 K33 ["FileSearch"]
      472 GETTABLEKS                       R15 R4 K36 ["GameTree"]
      474 GETTABLEKS                       R16 R4 K41 ["GrepSearch"]
      476 GETTABLEKS                       R17 R4 K20 ["AssetInsert"]
      478 GETTABLEKS                       R18 R4 K23 ["AssetSearch"]
      480 GETTABLEKS                       R19 R4 K43 ["InspectInstance"]
      482 GETTABLEKS                       R20 R4 K45 ["MaterialGen"]
      484 GETTABLEKS                       R21 R4 K46 ["MeshGen"]
      486 GETTABLEKS                       R22 R4 K47 ["MultiEdit"]
      488 GETTABLEKS                       R23 R4 K50 ["ReadFile"]
      490 GETTABLEKS                       R24 R4 K48 ["PrimitiveGen"]
      492 GETTABLEKS                       R25 R4 K55 ["Skill"]
      494 GETTABLEKS                       R26 R4 K58 ["Subagent"]
      496 GETTABLEKS                       R27 R4 K91 ["ScreenCapture"]
      498 GETTABLEKS                       R28 R4 K92 ["UploadImage"]
      500 SETLIST                          R12 R13 16 [1]
      502 GETTABLEKS                       R13 R4 K65 ["StartMultiPlayerAgents"]
      504 GETTABLEKS                       R14 R4 K66 ["StopMultiPlayerAgents"]
      506 GETTABLEKS                       R15 R4 K67 ["MultiPlayerAgentsCommunication"]
      508 GETTABLEKS                       R16 R4 K68 ["WaitForMultiPlayerAgentsCommunication"]
      510 GETTABLEKS                       R17 R4 K42 ["HttpGet"]
      512 GETTABLEKS                       R18 R4 K35 ["FromHistory"]
      514 GETTABLEKS                       R19 R4 K56 ["StartStopPlay"]
      516 GETTABLEKS                       R20 R4 K39 ["GetConsoleOutput"]
      518 GETTABLEKS                       R21 R4 K62 ["UserKeyboardInput"]
      520 GETTABLEKS                       R22 R4 K63 ["UserMouseInput"]
      522 GETTABLEKS                       R23 R4 K28 ["CharacterNavigation"]
      524 GETTABLEKS                       R24 R4 K70 ["VideoCapture"]
      526 GETTABLEKS                       R25 R4 K49 ["QuestionAnswer"]
      528 GETTABLEKS                       R26 R4 K29 ["CompleteTodoItems"]
      530 GETTABLEKS                       R27 R4 K44 ["JobWait"]
      532 GETTABLEKS                       R28 R4 K40 ["GetStudioState"]
      534 SETLIST                          R12 R13 16 [17]
      536 SETTABLE                         R12 R10 R11
      537 GETTABLEKS                       R13 R3 K94 ["Agent"]
      539 GETTABLE                         R12 R10 R13
      540 GETTABLEKS                       R13 R4 K57 ["StoreImage"]
      542 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      544 GETIMPORT                        R11 K97 [table.insert]
      546 CALL                             R11 2 0
      547 MOVE                             R11 R6
      548 CALL                             R11 0 1
      549 JUMPIFNOT                        R11 ; [+10]
      550 GETTABLEKS                       R13 R3 K94 ["Agent"]
      552 GETTABLE                         R12 R10 R13
      553 GETTABLEKS                       R13 R4 K18 ["AnimationGen"]
      555 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      557 GETIMPORT                        R11 K97 [table.insert]
      559 CALL                             R11 2 0
      560 GETTABLEKS                       R11 R2 K22 ["FFlagAssistantAssetQualityTool"]
      562 JUMPIFNOT                        R11 ; [+10]
      563 GETTABLEKS                       R13 R3 K94 ["Agent"]
      565 GETTABLE                         R12 R10 R13
      566 GETTABLEKS                       R13 R4 K21 ["AssetQuality"]
      568 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      570 GETIMPORT                        R11 K97 [table.insert]
      572 CALL                             R11 2 0
      573 GETTABLEKS                       R11 R2 K25 ["FFlagAssistantAvatarAutoSetupTool"]
      575 JUMPIFNOT                        R11 ; [+10]
      576 GETTABLEKS                       R13 R3 K94 ["Agent"]
      578 GETTABLE                         R12 R10 R13
      579 GETTABLEKS                       R13 R4 K24 ["AvatarAutoSetup"]
      581 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      583 GETIMPORT                        R11 K97 [table.insert]
      585 CALL                             R11 2 0
      586 GETTABLEKS                       R11 R2 K27 ["FFlagAssistantAvatarGenTool"]
      588 JUMPIFNOT                        R11 ; [+10]
      589 GETTABLEKS                       R13 R3 K94 ["Agent"]
      591 GETTABLE                         R12 R10 R13
      592 GETTABLEKS                       R13 R4 K26 ["AvatarGen"]
      594 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      596 GETIMPORT                        R11 K97 [table.insert]
      598 CALL                             R11 2 0
      599 GETTABLEKS                       R13 R3 K94 ["Agent"]
      601 GETTABLE                         R12 R10 R13
      602 GETTABLEKS                       R13 R4 K61 ["UpdatePlan"]
      604 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      606 GETIMPORT                        R11 K97 [table.insert]
      608 CALL                             R11 2 0
      609 GETTABLEKS                       R13 R3 K94 ["Agent"]
      611 GETTABLE                         R12 R10 R13
      612 GETTABLEKS                       R13 R4 K30 ["CreateSkill"]
      614 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      616 GETIMPORT                        R11 K97 [table.insert]
      618 CALL                             R11 2 0
      619 GETTABLEKS                       R13 R3 K94 ["Agent"]
      621 GETTABLE                         R12 R10 R13
      622 GETTABLEKS                       R13 R4 K31 ["EditSkill"]
      624 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      626 GETIMPORT                        R11 K97 [table.insert]
      628 CALL                             R11 2 0
      629 GETTABLEKS                       R11 R2 K54 ["FFlagAssistantSegmentMeshTool"]
      631 JUMPIFNOT                        R11 ; [+10]
      632 GETTABLEKS                       R13 R3 K94 ["Agent"]
      634 GETTABLE                         R12 R10 R13
      635 GETTABLEKS                       R13 R4 K53 ["SegmentMesh"]
      637 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      639 GETIMPORT                        R11 K97 [table.insert]
      641 CALL                             R11 2 0
      642 GETTABLEKS                       R11 R2 K60 ["FFlagAssistantTextureGenTool"]
      644 JUMPIFNOT                        R11 ; [+10]
      645 GETTABLEKS                       R13 R3 K94 ["Agent"]
      647 GETTABLE                         R12 R10 R13
      648 GETTABLEKS                       R13 R4 K59 ["TextureGen"]
      650 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      652 GETIMPORT                        R11 K97 [table.insert]
      654 CALL                             R11 2 0
      655 GETTABLEKS                       R11 R2 K71 ["FFlagAssistantListPluginGuisTool"]
      657 JUMPIFNOT                        R11 ; [+23]
      658 GETTABLEKS                       R13 R3 K94 ["Agent"]
      660 GETTABLE                         R12 R10 R13
      661 GETTABLEKS                       R13 R4 K72 ["ListPluginGuis"]
      663 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      665 GETIMPORT                        R11 K97 [table.insert]
      667 CALL                             R11 2 0
      668 GETTABLEKS                       R11 R2 K73 ["FFlagAssistantCapturePluginGuiTool"]
      670 JUMPIFNOT                        R11 ; [+10]
      671 GETTABLEKS                       R13 R3 K94 ["Agent"]
      673 GETTABLE                         R12 R10 R13
      674 GETTABLEKS                       R13 R4 K74 ["CapturePluginGui"]
      676 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      678 GETIMPORT                        R11 K97 [table.insert]
      680 CALL                             R11 2 0
      681 GETTABLEKS                       R11 R2 K75 ["FFlagAssistantActivatePluginTool"]
      683 JUMPIFNOT                        R11 ; [+20]
      684 GETTABLEKS                       R13 R3 K94 ["Agent"]
      686 GETTABLE                         R12 R10 R13
      687 GETTABLEKS                       R13 R4 K76 ["ListPluginActions"]
      689 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      691 GETIMPORT                        R11 K97 [table.insert]
      693 CALL                             R11 2 0
      694 GETTABLEKS                       R13 R3 K94 ["Agent"]
      696 GETTABLE                         R12 R10 R13
      697 GETTABLEKS                       R13 R4 K77 ["OpenPlugin"]
      699 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      701 GETIMPORT                        R11 K97 [table.insert]
      703 CALL                             R11 2 0
      704 GETTABLEKS                       R11 R2 K38 ["FFlagAssistantGenerateLayoutTool"]
      706 JUMPIFNOT                        R11 ; [+10]
      707 GETTABLEKS                       R13 R3 K94 ["Agent"]
      709 GETTABLE                         R12 R10 R13
      710 GETTABLEKS                       R13 R4 K37 ["GenerateScene"]
      712 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      714 GETIMPORT                        R11 K97 [table.insert]
      716 CALL                             R11 2 0
      717 GETTABLEKS                       R11 R2 K52 ["FFlagAssistantSavePlaceTool"]
      719 JUMPIFNOT                        R11 ; [+10]
      720 GETTABLEKS                       R13 R3 K94 ["Agent"]
      722 GETTABLE                         R12 R10 R13
      723 GETTABLEKS                       R13 R4 K51 ["SavePlace"]
      725 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      727 GETIMPORT                        R11 K97 [table.insert]
      729 CALL                             R11 2 0
      730 GETTABLEKS                       R11 R2 K98 ["FFlagAssistantAskInputToolLLM"]
      732 JUMPIFNOT                        R11 ; [+10]
      733 GETTABLEKS                       R13 R3 K94 ["Agent"]
      735 GETTABLE                         R12 R10 R13
      736 GETTABLEKS                       R13 R4 K19 ["AskInput"]
      738 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      740 GETIMPORT                        R11 K97 [table.insert]
      742 CALL                             R11 2 0
      743 GETTABLEKS                       R11 R3 K99 ["Plan"]
      745 NEWTABLE                         R12 0 9
      747 GETTABLEKS                       R13 R4 K50 ["ReadFile"]
      749 GETTABLEKS                       R14 R4 K33 ["FileSearch"]
      751 GETTABLEKS                       R15 R4 K41 ["GrepSearch"]
      753 GETTABLEKS                       R16 R4 K36 ["GameTree"]
      755 GETTABLEKS                       R17 R4 K43 ["InspectInstance"]
      757 GETTABLEKS                       R18 R4 K91 ["ScreenCapture"]
      759 GETTABLEKS                       R19 R4 K49 ["QuestionAnswer"]
      761 GETTABLEKS                       R20 R4 K34 ["FinalizePlan"]
      763 GETTABLEKS                       R21 R4 K61 ["UpdatePlan"]
      765 SETLIST                          R12 R13 9 [1]
      767 SETTABLE                         R12 R10 R11
      768 GETTABLEKS                       R11 R2 K98 ["FFlagAssistantAskInputToolLLM"]
      770 JUMPIFNOT                        R11 ; [+10]
      771 GETTABLEKS                       R13 R3 K99 ["Plan"]
      773 GETTABLE                         R12 R10 R13
      774 GETTABLEKS                       R13 R4 K19 ["AskInput"]
      776 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      778 GETIMPORT                        R11 K97 [table.insert]
      780 CALL                             R11 2 0
      781 NEWTABLE                         R11 0 16
      783 GETTABLEKS                       R12 R4 K32 ["ExecuteLuau"]
      785 GETTABLEKS                       R13 R4 K33 ["FileSearch"]
      787 GETTABLEKS                       R14 R4 K36 ["GameTree"]
      789 GETTABLEKS                       R15 R4 K41 ["GrepSearch"]
      791 GETTABLEKS                       R16 R4 K43 ["InspectInstance"]
      793 GETTABLEKS                       R17 R4 K50 ["ReadFile"]
      795 GETTABLEKS                       R18 R4 K55 ["Skill"]
      797 GETTABLEKS                       R19 R4 K58 ["Subagent"]
      799 GETTABLEKS                       R20 R4 K91 ["ScreenCapture"]
      801 GETTABLEKS                       R21 R4 K39 ["GetConsoleOutput"]
      803 GETTABLEKS                       R22 R4 K62 ["UserKeyboardInput"]
      805 GETTABLEKS                       R23 R4 K63 ["UserMouseInput"]
      807 GETTABLEKS                       R24 R4 K28 ["CharacterNavigation"]
      809 GETTABLEKS                       R25 R4 K67 ["MultiPlayerAgentsCommunication"]
      811 GETTABLEKS                       R26 R4 K68 ["WaitForMultiPlayerAgentsCommunication"]
      813 GETTABLEKS                       R27 R4 K40 ["GetStudioState"]
      815 SETLIST                          R11 R12 16 [1]
      817 NEWTABLE                         R12 0 0
      819 GETTABLEKS                       R13 R2 K89 ["FFlagPlaytestVision"]
      821 JUMPIFNOT                        R13 ; [+8]
      822 GETTABLEKS                       R15 R4 K90 ["PlaytestLook"]
      824 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
      826 MOVE                             R14 R12
      827 GETIMPORT                        R13 K97 [table.insert]
      829 CALL                             R13 2 0
      830 DUPTABLE                         R13 K106 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools", "SubagentOnlyTools"}]
      831 SETTABLEKS                       R7 R13 K100 ["DefaultTools"]
      833 SETTABLEKS                       R8 R13 K101 ["ExperimentalTools"]
      835 SETTABLEKS                       R9 R13 K102 ["ExperimentFeatureTools"]
      837 SETTABLEKS                       R10 R13 K103 ["AssistantModeToolsAllowlist"]
      839 SETTABLEKS                       R11 R13 K104 ["MultiPlayerTestTools"]
      841 SETTABLEKS                       R12 R13 K105 ["SubagentOnlyTools"]
      843 RETURN                           R13 1
