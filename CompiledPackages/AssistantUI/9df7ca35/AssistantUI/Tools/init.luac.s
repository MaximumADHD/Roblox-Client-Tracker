PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["destroying"]
        6 JUMPIF                           R2 ; [+2]
        7 GETTABLEKS                       R2 R1 K2 ["Destroying"]
        9 NEWTABLE                         R3 0 0
       11 GETTABLEKS                       R4 R0 K3 ["tools"]
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 MOVE                             R9 R8
       17 DUPTABLE                         R10 K7 [{"net", "environment", "destroying", "getPersistentPlanRuntime"}]
       18 GETTABLEKS                       R11 R0 K4 ["net"]
       20 SETTABLEKS                       R11 R10 K4 ["net"]
       22 SETTABLEKS                       R1 R10 K5 ["environment"]
       24 SETTABLEKS                       R2 R10 K1 ["destroying"]
       26 GETUPVAL                         R11 1
       27 SETTABLEKS                       R11 R10 K6 ["getPersistentPlanRuntime"]
       29 CALL                             R9 1 1
       30 GETTABLE                         R12 R3 R7
       31 NOT                              R11 R12
       32 LOADK                            R12 K8 ["Tool with name %* already exists"]
       33 MOVE                             R14 R7
       34 NAMECALL                         R12 R12 K9 ["format"]
       36 CALL                             R12 2 1
       37 FASTCALL2                        ASSERT R11 R12 ; [+3]
       39 GETIMPORT                        R10 K11 [assert]
       41 CALL                             R10 2 0
       42 SETTABLE                         R9 R3 R7
       43 FORGLOOP                         R4 2 ; [-28]
       45 RETURN                           R3 1

PROTO_1:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K0 ["registerTool"]
        7 MOVE                             R7 R5
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 ; [-6]
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["PersistentPlanRuntime"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K6 ["Parent"]
       35 GETTABLEKS                       R6 R6 K12 ["Signal"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETIMPORT                        R7 K1 [script]
       42 GETTABLEKS                       R7 R7 K13 ["ToolTypes"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K14 ["Components"]
       49 GETTABLEKS                       R8 R8 K15 ["UIToolRegistry"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K16 ["FlagUtils"]
       56 GETTABLEKS                       R9 R9 K17 ["getIsAnimationGenEnabled"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETIMPORT                        R10 K1 [script]
       63 GETTABLEKS                       R10 R10 K18 ["AnimationGenTool"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETIMPORT                        R11 K1 [script]
       70 GETTABLEKS                       R11 R11 K19 ["AskInputTool"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETIMPORT                        R12 K1 [script]
       77 GETTABLEKS                       R12 R12 K20 ["AssetInsertTool"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETIMPORT                        R13 K1 [script]
       84 GETTABLEKS                       R13 R13 K21 ["AssetQualityTool"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETIMPORT                        R14 K1 [script]
       91 GETTABLEKS                       R14 R14 K22 ["AssetSearchTool"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K5 [require]
       96 GETIMPORT                        R15 K1 [script]
       98 GETTABLEKS                       R15 R15 K23 ["AvatarAutoSetupTool"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETIMPORT                        R16 K1 [script]
      105 GETTABLEKS                       R16 R16 K24 ["AvatarGenTool"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETIMPORT                        R17 K1 [script]
      112 GETTABLEKS                       R17 R17 K25 ["CapturePluginGuiTool"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETIMPORT                        R18 K1 [script]
      119 GETTABLEKS                       R18 R18 K26 ["CharacterNavigationTool"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K5 [require]
      124 GETIMPORT                        R19 K1 [script]
      126 GETTABLEKS                       R19 R19 K27 ["CompleteTodoItemsTool"]
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K5 [require]
      131 GETIMPORT                        R20 K1 [script]
      133 GETTABLEKS                       R20 R20 K28 ["CreateSkillTool"]
      135 CALL                             R19 1 1
      136 GETIMPORT                        R20 K5 [require]
      138 GETIMPORT                        R21 K1 [script]
      140 GETTABLEKS                       R21 R21 K29 ["EditSkillTool"]
      142 CALL                             R20 1 1
      143 GETIMPORT                        R21 K5 [require]
      145 GETIMPORT                        R22 K1 [script]
      147 GETTABLEKS                       R22 R22 K30 ["ExecuteLuauTool"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K5 [require]
      152 GETIMPORT                        R23 K1 [script]
      154 GETTABLEKS                       R23 R23 K31 ["FileSearchTool"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K5 [require]
      159 GETIMPORT                        R24 K1 [script]
      161 GETTABLEKS                       R24 R24 K32 ["FinalizePlanTool"]
      163 CALL                             R23 1 1
      164 GETIMPORT                        R24 K5 [require]
      166 GETIMPORT                        R25 K1 [script]
      168 GETTABLEKS                       R25 R25 K33 ["FromHistoryTool"]
      170 CALL                             R24 1 1
      171 GETIMPORT                        R25 K5 [require]
      173 GETIMPORT                        R26 K1 [script]
      175 GETTABLEKS                       R26 R26 K34 ["GameTreeTool"]
      177 CALL                             R25 1 1
      178 GETIMPORT                        R26 K5 [require]
      180 GETIMPORT                        R27 K1 [script]
      182 GETTABLEKS                       R27 R27 K35 ["GenerateSceneTool"]
      184 CALL                             R26 1 1
      185 GETIMPORT                        R27 K5 [require]
      187 GETIMPORT                        R28 K1 [script]
      189 GETTABLEKS                       R28 R28 K36 ["GetConsoleOutputTool"]
      191 CALL                             R27 1 1
      192 GETIMPORT                        R28 K5 [require]
      194 GETIMPORT                        R29 K1 [script]
      196 GETTABLEKS                       R29 R29 K37 ["GetStudioStateTool"]
      198 CALL                             R28 1 1
      199 GETIMPORT                        R29 K5 [require]
      201 GETIMPORT                        R30 K1 [script]
      203 GETTABLEKS                       R30 R30 K38 ["GrepSearchTool"]
      205 CALL                             R29 1 1
      206 GETIMPORT                        R30 K5 [require]
      208 GETIMPORT                        R31 K1 [script]
      210 GETTABLEKS                       R31 R31 K39 ["HttpGetTool"]
      212 CALL                             R30 1 1
      213 GETIMPORT                        R31 K5 [require]
      215 GETIMPORT                        R32 K1 [script]
      217 GETTABLEKS                       R32 R32 K40 ["InspectInstanceTool"]
      219 CALL                             R31 1 1
      220 GETIMPORT                        R32 K5 [require]
      222 GETIMPORT                        R33 K1 [script]
      224 GETTABLEKS                       R33 R33 K41 ["JobWaitTool"]
      226 CALL                             R32 1 1
      227 GETIMPORT                        R33 K5 [require]
      229 GETIMPORT                        R34 K1 [script]
      231 GETTABLEKS                       R34 R34 K42 ["ListPlaceTool"]
      233 CALL                             R33 1 1
      234 GETIMPORT                        R34 K5 [require]
      236 GETIMPORT                        R35 K1 [script]
      238 GETTABLEKS                       R35 R35 K43 ["ListPluginActionsTool"]
      240 CALL                             R34 1 1
      241 GETIMPORT                        R35 K5 [require]
      243 GETIMPORT                        R36 K1 [script]
      245 GETTABLEKS                       R36 R36 K44 ["ListPluginGuisTool"]
      247 CALL                             R35 1 1
      248 GETIMPORT                        R36 K5 [require]
      250 GETIMPORT                        R37 K1 [script]
      252 GETTABLEKS                       R37 R37 K45 ["ListRobloxStudiosTool"]
      254 CALL                             R36 1 1
      255 GETIMPORT                        R37 K5 [require]
      257 GETIMPORT                        R38 K1 [script]
      259 GETTABLEKS                       R38 R38 K46 ["ListSkillsTool"]
      261 CALL                             R37 1 1
      262 GETIMPORT                        R38 K5 [require]
      264 GETIMPORT                        R39 K1 [script]
      266 GETTABLEKS                       R39 R39 K47 ["MaterialGenTool"]
      268 CALL                             R38 1 1
      269 GETIMPORT                        R39 K5 [require]
      271 GETIMPORT                        R40 K1 [script]
      273 GETTABLEKS                       R40 R40 K48 ["MeshGenTool"]
      275 CALL                             R39 1 1
      276 GETIMPORT                        R40 K5 [require]
      278 GETIMPORT                        R41 K1 [script]
      280 GETTABLEKS                       R41 R41 K49 ["MultiEditTool"]
      282 CALL                             R40 1 1
      283 GETIMPORT                        R41 K5 [require]
      285 GETIMPORT                        R42 K1 [script]
      287 GETTABLEKS                       R42 R42 K50 ["MultiPlayerAgentsCommunicationTool"]
      289 CALL                             R41 1 1
      290 GETIMPORT                        R42 K5 [require]
      292 GETIMPORT                        R43 K1 [script]
      294 GETTABLEKS                       R43 R43 K51 ["OpenCloudInvokeTool"]
      296 CALL                             R42 1 1
      297 GETIMPORT                        R43 K5 [require]
      299 GETIMPORT                        R44 K1 [script]
      301 GETTABLEKS                       R44 R44 K52 ["OpenPluginTool"]
      303 CALL                             R43 1 1
      304 GETIMPORT                        R44 K5 [require]
      306 GETIMPORT                        R45 K1 [script]
      308 GETTABLEKS                       R45 R45 K53 ["PlaytestLookTool"]
      310 CALL                             R44 1 1
      311 GETIMPORT                        R45 K5 [require]
      313 GETIMPORT                        R46 K1 [script]
      315 GETTABLEKS                       R46 R46 K54 ["PrimitiveGenTool"]
      317 CALL                             R45 1 1
      318 GETIMPORT                        R46 K5 [require]
      320 GETIMPORT                        R47 K1 [script]
      322 GETTABLEKS                       R47 R47 K55 ["QuestionAnswerTool"]
      324 CALL                             R46 1 1
      325 GETIMPORT                        R47 K5 [require]
      327 GETIMPORT                        R48 K1 [script]
      329 GETTABLEKS                       R48 R48 K56 ["ReadFileTool"]
      331 CALL                             R47 1 1
      332 GETIMPORT                        R48 K5 [require]
      334 GETIMPORT                        R49 K1 [script]
      336 GETTABLEKS                       R49 R49 K57 ["SavePlaceTool"]
      338 CALL                             R48 1 1
      339 GETIMPORT                        R49 K5 [require]
      341 GETIMPORT                        R50 K1 [script]
      343 GETTABLEKS                       R50 R50 K58 ["ScreenCaptureTool"]
      345 CALL                             R49 1 1
      346 GETIMPORT                        R50 K5 [require]
      348 GETIMPORT                        R51 K1 [script]
      350 GETTABLEKS                       R51 R51 K59 ["SegmentMeshTool"]
      352 CALL                             R50 1 1
      353 GETIMPORT                        R51 K5 [require]
      355 GETIMPORT                        R52 K1 [script]
      357 GETTABLEKS                       R52 R52 K60 ["SkillTool"]
      359 CALL                             R51 1 1
      360 GETIMPORT                        R52 K5 [require]
      362 GETIMPORT                        R53 K1 [script]
      364 GETTABLEKS                       R53 R53 K61 ["StartMultiPlayerAgentsTool"]
      366 CALL                             R52 1 1
      367 GETIMPORT                        R53 K5 [require]
      369 GETIMPORT                        R54 K1 [script]
      371 GETTABLEKS                       R54 R54 K62 ["StartStopPlayTool"]
      373 CALL                             R53 1 1
      374 GETIMPORT                        R54 K5 [require]
      376 GETIMPORT                        R55 K1 [script]
      378 GETTABLEKS                       R55 R55 K63 ["StopMultiPlayerAgentsTool"]
      380 CALL                             R54 1 1
      381 GETIMPORT                        R55 K5 [require]
      383 GETIMPORT                        R56 K1 [script]
      385 GETTABLEKS                       R56 R56 K64 ["StoreImageTool"]
      387 CALL                             R55 1 1
      388 GETIMPORT                        R56 K5 [require]
      390 GETIMPORT                        R57 K1 [script]
      392 GETTABLEKS                       R57 R57 K65 ["SubagentTool"]
      394 CALL                             R56 1 1
      395 GETIMPORT                        R57 K5 [require]
      397 GETIMPORT                        R58 K1 [script]
      399 GETTABLEKS                       R58 R58 K66 ["SubmitFeedbackTool"]
      401 CALL                             R57 1 1
      402 GETIMPORT                        R58 K5 [require]
      404 GETIMPORT                        R59 K1 [script]
      406 GETTABLEKS                       R59 R59 K67 ["TextureGenTool"]
      408 CALL                             R58 1 1
      409 GETIMPORT                        R59 K5 [require]
      411 GETIMPORT                        R60 K1 [script]
      413 GETTABLEKS                       R60 R60 K68 ["UploadImageTool"]
      415 CALL                             R59 1 1
      416 GETIMPORT                        R60 K5 [require]
      418 GETIMPORT                        R61 K1 [script]
      420 GETTABLEKS                       R61 R61 K69 ["UserKeyboardInputTool"]
      422 CALL                             R60 1 1
      423 GETIMPORT                        R61 K5 [require]
      425 GETIMPORT                        R62 K1 [script]
      427 GETTABLEKS                       R62 R62 K70 ["UserMouseInputTool"]
      429 CALL                             R61 1 1
      430 GETIMPORT                        R62 K5 [require]
      432 GETIMPORT                        R63 K1 [script]
      434 GETTABLEKS                       R63 R63 K71 ["VideoCaptureTool"]
      436 CALL                             R62 1 1
      437 GETIMPORT                        R63 K5 [require]
      439 GETIMPORT                        R64 K1 [script]
      441 GETTABLEKS                       R64 R64 K72 ["WaitForMultiPlayerAgentsCommunicationTool"]
      443 CALL                             R63 1 1
      444 GETTABLEKS                       R64 R4 K73 ["getRuntimeForMeta"]
      446 GETTABLEKS                       R65 R6 K74 ["ToolNames"]
      448 NEWTABLE                         R66 32 0
      450 GETTABLEKS                       R67 R65 K75 ["AskInput"]
      452 SETTABLE                         R10 R66 R67
      453 GETTABLEKS                       R67 R65 K76 ["AssetInsert"]
      455 SETTABLE                         R11 R66 R67
      456 GETTABLEKS                       R67 R65 K77 ["AssetSearch"]
      458 SETTABLE                         R13 R66 R67
      459 GETTABLEKS                       R67 R65 K78 ["CharacterNavigation"]
      461 SETTABLE                         R17 R66 R67
      462 GETTABLEKS                       R67 R65 K79 ["CompleteTodoItems"]
      464 SETTABLE                         R18 R66 R67
      465 GETTABLEKS                       R67 R65 K80 ["CreateSkill"]
      467 SETTABLE                         R19 R66 R67
      468 GETTABLEKS                       R67 R65 K81 ["EditSkill"]
      470 SETTABLE                         R20 R66 R67
      471 GETTABLEKS                       R67 R65 K82 ["ExecuteLuau"]
      473 SETTABLE                         R21 R66 R67
      474 GETTABLEKS                       R67 R65 K83 ["FileSearch"]
      476 SETTABLE                         R22 R66 R67
      477 GETTABLEKS                       R67 R65 K84 ["FinalizePlan"]
      479 SETTABLE                         R23 R66 R67
      480 GETTABLEKS                       R67 R65 K85 ["FromHistory"]
      482 SETTABLE                         R24 R66 R67
      483 GETTABLEKS                       R67 R65 K86 ["GameTree"]
      485 SETTABLE                         R25 R66 R67
      486 GETTABLEKS                       R67 R65 K87 ["GetConsoleOutput"]
      488 SETTABLE                         R27 R66 R67
      489 GETTABLEKS                       R67 R65 K88 ["GetStudioState"]
      491 SETTABLE                         R28 R66 R67
      492 GETTABLEKS                       R67 R65 K89 ["GrepSearch"]
      494 SETTABLE                         R29 R66 R67
      495 GETTABLEKS                       R67 R65 K90 ["HttpGet"]
      497 SETTABLE                         R30 R66 R67
      498 GETTABLEKS                       R67 R65 K91 ["InspectInstance"]
      500 SETTABLE                         R31 R66 R67
      501 GETTABLEKS                       R67 R65 K92 ["JobWait"]
      503 SETTABLE                         R32 R66 R67
      504 GETTABLEKS                       R67 R65 K93 ["MaterialGen"]
      506 SETTABLE                         R38 R66 R67
      507 GETTABLEKS                       R67 R65 K94 ["MeshGen"]
      509 SETTABLE                         R39 R66 R67
      510 GETTABLEKS                       R67 R65 K95 ["MultiEdit"]
      512 SETTABLE                         R40 R66 R67
      513 GETTABLEKS                       R67 R65 K96 ["PrimitiveGen"]
      515 SETTABLE                         R45 R66 R67
      516 GETTABLEKS                       R67 R65 K97 ["QuestionAnswer"]
      518 SETTABLE                         R46 R66 R67
      519 GETTABLEKS                       R67 R65 K98 ["ReadFile"]
      521 SETTABLE                         R47 R66 R67
      522 GETTABLEKS                       R67 R65 K99 ["ScreenCapture"]
      524 SETTABLE                         R49 R66 R67
      525 GETTABLEKS                       R67 R65 K100 ["Skill"]
      527 SETTABLE                         R51 R66 R67
      528 GETTABLEKS                       R67 R65 K101 ["StartStopPlay"]
      530 SETTABLE                         R53 R66 R67
      531 GETTABLEKS                       R67 R65 K102 ["StoreImage"]
      533 SETTABLE                         R55 R66 R67
      534 GETTABLEKS                       R67 R65 K103 ["Subagent"]
      536 SETTABLE                         R56 R66 R67
      537 GETTABLEKS                       R67 R65 K104 ["UploadImage"]
      539 SETTABLE                         R59 R66 R67
      540 GETTABLEKS                       R67 R65 K105 ["UserKeyboardInput"]
      542 SETTABLE                         R60 R66 R67
      543 GETTABLEKS                       R67 R65 K106 ["UserMouseInput"]
      545 SETTABLE                         R61 R66 R67
      546 GETTABLEKS                       R67 R3 K107 ["FFlagPlaytestVision"]
      548 JUMPIFNOT                        R67 ; [+3]
      549 GETTABLEKS                       R67 R65 K108 ["PlaytestLook"]
      551 SETTABLE                         R44 R66 R67
      552 GETTABLEKS                       R67 R3 K109 ["FFlagAssistantMultiPlayerAgents"]
      554 JUMPIFNOT                        R67 ; [+12]
      555 GETTABLEKS                       R67 R65 K110 ["StartMultiPlayerAgents"]
      557 SETTABLE                         R52 R66 R67
      558 GETTABLEKS                       R67 R65 K111 ["StopMultiPlayerAgents"]
      560 SETTABLE                         R54 R66 R67
      561 GETTABLEKS                       R67 R65 K112 ["MultiPlayerAgentsCommunication"]
      563 SETTABLE                         R41 R66 R67
      564 GETTABLEKS                       R67 R65 K113 ["WaitForMultiPlayerAgentsCommunication"]
      566 SETTABLE                         R63 R66 R67
      567 GETTABLEKS                       R67 R3 K114 ["FFlagAssistantVideoCaptureTool"]
      569 JUMPIFNOT                        R67 ; [+3]
      570 GETTABLEKS                       R67 R65 K115 ["VideoCapture"]
      572 SETTABLE                         R62 R66 R67
      573 GETTABLEKS                       R67 R3 K116 ["FFlagAssistantListPluginGuisTool"]
      575 JUMPIFNOT                        R67 ; [+9]
      576 GETTABLEKS                       R67 R65 K117 ["ListPluginGuis"]
      578 SETTABLE                         R35 R66 R67
      579 GETTABLEKS                       R67 R3 K118 ["FFlagAssistantCapturePluginGuiTool"]
      581 JUMPIFNOT                        R67 ; [+3]
      582 GETTABLEKS                       R67 R65 K119 ["CapturePluginGui"]
      584 SETTABLE                         R16 R66 R67
      585 GETTABLEKS                       R67 R3 K120 ["FFlagAssistantActivatePluginTool"]
      587 JUMPIFNOT                        R67 ; [+6]
      588 GETTABLEKS                       R67 R65 K121 ["ListPluginActions"]
      590 SETTABLE                         R34 R66 R67
      591 GETTABLEKS                       R67 R65 K122 ["OpenPlugin"]
      593 SETTABLE                         R43 R66 R67
      594 GETTABLEKS                       R67 R3 K123 ["FFlagAssistantOpenCloudInvokeTool"]
      596 JUMPIFNOT                        R67 ; [+6]
      597 GETTABLEKS                       R67 R3 K124 ["EngineFeatureAssistantExecuteLuauArguments"]
      599 JUMPIFNOT                        R67 ; [+3]
      600 GETTABLEKS                       R67 R65 K125 ["OpenCloudInvoke"]
      602 SETTABLE                         R42 R66 R67
      603 MOVE                             R67 R8
      604 CALL                             R67 0 1
      605 JUMPIFNOT                        R67 ; [+3]
      606 GETTABLEKS                       R67 R65 K126 ["AnimationGen"]
      608 SETTABLE                         R9 R66 R67
      609 GETTABLEKS                       R67 R3 K127 ["FFlagAssistantAssetQualityTool"]
      611 JUMPIFNOT                        R67 ; [+3]
      612 GETTABLEKS                       R67 R65 K128 ["AssetQuality"]
      614 SETTABLE                         R12 R66 R67
      615 GETTABLEKS                       R67 R3 K129 ["FFlagAssistantAvatarAutoSetupTool"]
      617 JUMPIFNOT                        R67 ; [+3]
      618 GETTABLEKS                       R67 R65 K130 ["AvatarAutoSetup"]
      620 SETTABLE                         R14 R66 R67
      621 GETTABLEKS                       R67 R3 K131 ["FFlagAssistantAvatarGenTool"]
      623 JUMPIFNOT                        R67 ; [+3]
      624 GETTABLEKS                       R67 R65 K132 ["AvatarGen"]
      626 SETTABLE                         R15 R66 R67
      627 GETTABLEKS                       R67 R65 K133 ["UpdatePlan"]
      629 GETIMPORT                        R68 K5 [require]
      631 GETIMPORT                        R69 K1 [script]
      633 GETTABLEKS                       R69 R69 K134 ["UpdatePlanTool"]
      635 CALL                             R68 1 1
      636 SETTABLE                         R68 R66 R67
      637 GETTABLEKS                       R67 R3 K135 ["FFlagAssistantSegmentMeshTool"]
      639 JUMPIFNOT                        R67 ; [+3]
      640 GETTABLEKS                       R67 R65 K136 ["SegmentMesh"]
      642 SETTABLE                         R50 R66 R67
      643 GETTABLEKS                       R67 R3 K137 ["FFlagAssistantGenerateLayoutTool"]
      645 JUMPIFNOT                        R67 ; [+3]
      646 GETTABLEKS                       R67 R65 K138 ["GenerateScene"]
      648 SETTABLE                         R26 R66 R67
      649 GETTABLEKS                       R67 R3 K139 ["FFlagAssistantTextureGenTool"]
      651 JUMPIFNOT                        R67 ; [+3]
      652 GETTABLEKS                       R67 R65 K140 ["TextureGen"]
      654 SETTABLE                         R58 R66 R67
      655 GETTABLEKS                       R67 R3 K141 ["FFlagAssistantSavePlaceTool"]
      657 JUMPIFNOT                        R67 ; [+6]
      658 GETTABLEKS                       R67 R3 K142 ["EngineFeatureStudioPlaceSaver"]
      660 JUMPIFNOT                        R67 ; [+3]
      661 GETTABLEKS                       R67 R65 K143 ["SavePlace"]
      663 SETTABLE                         R48 R66 R67
      664 GETTABLEKS                       R67 R3 K144 ["FFlagAssistantMcpListStudiosTool"]
      666 JUMPIFNOT                        R67 ; [+3]
      667 GETTABLEKS                       R67 R65 K145 ["ListRobloxStudios"]
      669 SETTABLE                         R36 R66 R67
      670 GETTABLEKS                       R67 R3 K146 ["FFlagAssistantMcpListSkillsTool"]
      672 JUMPIFNOT                        R67 ; [+3]
      673 GETTABLEKS                       R67 R65 K147 ["ListSkills"]
      675 SETTABLE                         R37 R66 R67
      676 GETTABLEKS                       R67 R3 K148 ["FFlagAssistantMcpListPlaceTool"]
      678 JUMPIFNOT                        R67 ; [+3]
      679 GETTABLEKS                       R67 R65 K149 ["ListPlace"]
      681 SETTABLE                         R33 R66 R67
      682 GETTABLEKS                       R67 R3 K150 ["FFlagAssistantMcpSubmitFeedbackTool"]
      684 JUMPIFNOT                        R67 ; [+3]
      685 GETTABLEKS                       R67 R65 K151 ["SubmitFeedback"]
      687 SETTABLE                         R57 R66 R67
      688 DUPCLOSURE                       R67 K152 [PROTO_0]
      689 CAPTURE                          VAL R2
      690 CAPTURE                          VAL R64
      691 DUPCLOSURE                       R68 K153 [PROTO_1]
      692 CAPTURE                          VAL R7
      693 DUPTABLE                         R69 K157 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      694 SETTABLEKS                       R6 R69 K13 ["ToolTypes"]
      696 SETTABLEKS                       R66 R69 K154 ["BuiltinTools"]
      698 SETTABLEKS                       R67 R69 K155 ["createTools"]
      700 SETTABLEKS                       R68 R69 K156 ["registerTools"]
      702 RETURN                           R69 1
