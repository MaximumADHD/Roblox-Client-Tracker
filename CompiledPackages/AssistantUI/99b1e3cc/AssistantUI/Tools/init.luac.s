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
       17 DUPTABLE                         R10 K9 [{"networkingOLD", "net", "environment", "destroying", "getPersistentPlanRuntime", "bridges"}]
       18 GETTABLEKS                       R11 R0 K4 ["networkingOLD"]
       20 SETTABLEKS                       R11 R10 K4 ["networkingOLD"]
       22 GETTABLEKS                       R11 R0 K5 ["net"]
       24 SETTABLEKS                       R11 R10 K5 ["net"]
       26 SETTABLEKS                       R1 R10 K6 ["environment"]
       28 SETTABLEKS                       R2 R10 K1 ["destroying"]
       30 GETUPVAL                         R11 1
       31 SETTABLEKS                       R11 R10 K7 ["getPersistentPlanRuntime"]
       33 GETTABLEKS                       R11 R0 K8 ["bridges"]
       35 SETTABLEKS                       R11 R10 K8 ["bridges"]
       37 CALL                             R9 1 1
       38 GETTABLE                         R12 R3 R7
       39 NOT                              R11 R12
       40 LOADK                            R12 K10 ["Tool with name %* already exists"]
       41 MOVE                             R14 R7
       42 NAMECALL                         R12 R12 K11 ["format"]
       44 CALL                             R12 2 1
       45 FASTCALL2                        ASSERT R11 R12 ; [+3]
       47 GETIMPORT                        R10 K13 [assert]
       49 CALL                             R10 2 0
       50 SETTABLE                         R9 R3 R7
       51 FORGLOOP                         R4 2 ; [-36]
       53 RETURN                           R3 1

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
        9 GETTABLEKS                       R2 R0 K6 ["Bridges"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["DMNetworking"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["DMNetworkingOLD"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Guest"]
       30 GETTABLEKS                       R5 R5 K11 ["Environment"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Flags"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K13 ["PersistentPlanRuntime"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K7 ["Parent"]
       47 GETTABLEKS                       R8 R8 K14 ["Signal"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETIMPORT                        R9 K1 [script]
       54 GETTABLEKS                       R9 R9 K15 ["ToolTypes"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K16 ["Components"]
       61 GETTABLEKS                       R10 R10 K17 ["UIToolRegistry"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K5 [require]
       66 GETTABLEKS                       R11 R0 K18 ["FlagUtils"]
       68 GETTABLEKS                       R11 R11 K19 ["getIsAnimationGenEnabled"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K5 [require]
       73 GETIMPORT                        R12 K1 [script]
       75 GETTABLEKS                       R12 R12 K20 ["AnimationGenTool"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K5 [require]
       80 GETIMPORT                        R13 K1 [script]
       82 GETTABLEKS                       R13 R13 K21 ["AskInputTool"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K5 [require]
       87 GETIMPORT                        R14 K1 [script]
       89 GETTABLEKS                       R14 R14 K22 ["AssetInsertTool"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETIMPORT                        R15 K1 [script]
       96 GETTABLEKS                       R15 R15 K23 ["AssetSearchTool"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K5 [require]
      101 GETIMPORT                        R16 K1 [script]
      103 GETTABLEKS                       R16 R16 K24 ["AvatarAutoSetupTool"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K5 [require]
      108 GETIMPORT                        R17 K1 [script]
      110 GETTABLEKS                       R17 R17 K25 ["AvatarGenTool"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K5 [require]
      115 GETIMPORT                        R18 K1 [script]
      117 GETTABLEKS                       R18 R18 K26 ["CapturePluginGuiTool"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K5 [require]
      122 GETIMPORT                        R19 K1 [script]
      124 GETTABLEKS                       R19 R19 K27 ["CharacterNavigationTool"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K5 [require]
      129 GETIMPORT                        R20 K1 [script]
      131 GETTABLEKS                       R20 R20 K28 ["CompleteTodoItemsTool"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K5 [require]
      136 GETIMPORT                        R21 K1 [script]
      138 GETTABLEKS                       R21 R21 K29 ["CreateSkillTool"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K5 [require]
      143 GETIMPORT                        R22 K1 [script]
      145 GETTABLEKS                       R22 R22 K30 ["EditSkillTool"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K5 [require]
      150 GETIMPORT                        R23 K1 [script]
      152 GETTABLEKS                       R23 R23 K31 ["ExecuteLuauTool"]
      154 CALL                             R22 1 1
      155 GETIMPORT                        R23 K5 [require]
      157 GETIMPORT                        R24 K1 [script]
      159 GETTABLEKS                       R24 R24 K32 ["FileSearchTool"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K5 [require]
      164 GETIMPORT                        R25 K1 [script]
      166 GETTABLEKS                       R25 R25 K33 ["FinalizePlanTool"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K5 [require]
      171 GETIMPORT                        R26 K1 [script]
      173 GETTABLEKS                       R26 R26 K34 ["FromHistoryTool"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K5 [require]
      178 GETIMPORT                        R27 K1 [script]
      180 GETTABLEKS                       R27 R27 K35 ["GameTreeTool"]
      182 CALL                             R26 1 1
      183 GETIMPORT                        R27 K5 [require]
      185 GETIMPORT                        R28 K1 [script]
      187 GETTABLEKS                       R28 R28 K36 ["GenerateSceneTool"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K5 [require]
      192 GETIMPORT                        R29 K1 [script]
      194 GETTABLEKS                       R29 R29 K37 ["GetConsoleOutputTool"]
      196 CALL                             R28 1 1
      197 GETIMPORT                        R29 K5 [require]
      199 GETIMPORT                        R30 K1 [script]
      201 GETTABLEKS                       R30 R30 K38 ["GetStudioStateTool"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K5 [require]
      206 GETIMPORT                        R31 K1 [script]
      208 GETTABLEKS                       R31 R31 K39 ["GrepSearchTool"]
      210 CALL                             R30 1 1
      211 GETIMPORT                        R31 K5 [require]
      213 GETIMPORT                        R32 K1 [script]
      215 GETTABLEKS                       R32 R32 K40 ["HttpGetTool"]
      217 CALL                             R31 1 1
      218 GETIMPORT                        R32 K5 [require]
      220 GETIMPORT                        R33 K1 [script]
      222 GETTABLEKS                       R33 R33 K41 ["InspectInstanceTool"]
      224 CALL                             R32 1 1
      225 GETIMPORT                        R33 K5 [require]
      227 GETIMPORT                        R34 K1 [script]
      229 GETTABLEKS                       R34 R34 K42 ["JobWaitTool"]
      231 CALL                             R33 1 1
      232 GETIMPORT                        R34 K5 [require]
      234 GETIMPORT                        R35 K1 [script]
      236 GETTABLEKS                       R35 R35 K43 ["ListPlaceTool"]
      238 CALL                             R34 1 1
      239 GETIMPORT                        R35 K5 [require]
      241 GETIMPORT                        R36 K1 [script]
      243 GETTABLEKS                       R36 R36 K44 ["ListPluginGuisTool"]
      245 CALL                             R35 1 1
      246 GETIMPORT                        R36 K5 [require]
      248 GETIMPORT                        R37 K1 [script]
      250 GETTABLEKS                       R37 R37 K45 ["ListRobloxStudiosTool"]
      252 CALL                             R36 1 1
      253 GETIMPORT                        R37 K5 [require]
      255 GETIMPORT                        R38 K1 [script]
      257 GETTABLEKS                       R38 R38 K46 ["ListSkillsTool"]
      259 CALL                             R37 1 1
      260 GETIMPORT                        R38 K5 [require]
      262 GETIMPORT                        R39 K1 [script]
      264 GETTABLEKS                       R39 R39 K47 ["MaterialGenTool"]
      266 CALL                             R38 1 1
      267 GETIMPORT                        R39 K5 [require]
      269 GETIMPORT                        R40 K1 [script]
      271 GETTABLEKS                       R40 R40 K48 ["MeshGenTool"]
      273 CALL                             R39 1 1
      274 GETIMPORT                        R40 K5 [require]
      276 GETIMPORT                        R41 K1 [script]
      278 GETTABLEKS                       R41 R41 K49 ["MultiEditTool"]
      280 CALL                             R40 1 1
      281 GETIMPORT                        R41 K5 [require]
      283 GETIMPORT                        R42 K1 [script]
      285 GETTABLEKS                       R42 R42 K50 ["MultiPlayerAgentsCommunicationTool"]
      287 CALL                             R41 1 1
      288 GETIMPORT                        R42 K5 [require]
      290 GETIMPORT                        R43 K1 [script]
      292 GETTABLEKS                       R43 R43 K51 ["OpenCloudInvokeTool"]
      294 CALL                             R42 1 1
      295 GETIMPORT                        R43 K5 [require]
      297 GETIMPORT                        R44 K1 [script]
      299 GETTABLEKS                       R44 R44 K52 ["PlaytestLookTool"]
      301 CALL                             R43 1 1
      302 GETIMPORT                        R44 K5 [require]
      304 GETIMPORT                        R45 K1 [script]
      306 GETTABLEKS                       R45 R45 K53 ["PrimitiveGenTool"]
      308 CALL                             R44 1 1
      309 GETIMPORT                        R45 K5 [require]
      311 GETIMPORT                        R46 K1 [script]
      313 GETTABLEKS                       R46 R46 K54 ["QuestionAnswerTool"]
      315 CALL                             R45 1 1
      316 GETIMPORT                        R46 K5 [require]
      318 GETIMPORT                        R47 K1 [script]
      320 GETTABLEKS                       R47 R47 K55 ["ReadFileTool"]
      322 CALL                             R46 1 1
      323 GETIMPORT                        R47 K5 [require]
      325 GETIMPORT                        R48 K1 [script]
      327 GETTABLEKS                       R48 R48 K56 ["SavePlaceTool"]
      329 CALL                             R47 1 1
      330 GETIMPORT                        R48 K5 [require]
      332 GETIMPORT                        R49 K1 [script]
      334 GETTABLEKS                       R49 R49 K57 ["ScreenCaptureTool"]
      336 CALL                             R48 1 1
      337 GETIMPORT                        R49 K5 [require]
      339 GETIMPORT                        R50 K1 [script]
      341 GETTABLEKS                       R50 R50 K58 ["SegmentMeshTool"]
      343 CALL                             R49 1 1
      344 GETIMPORT                        R50 K5 [require]
      346 GETIMPORT                        R51 K1 [script]
      348 GETTABLEKS                       R51 R51 K59 ["SkillTool"]
      350 CALL                             R50 1 1
      351 GETIMPORT                        R51 K5 [require]
      353 GETIMPORT                        R52 K1 [script]
      355 GETTABLEKS                       R52 R52 K60 ["StartMultiPlayerAgentsTool"]
      357 CALL                             R51 1 1
      358 GETIMPORT                        R52 K5 [require]
      360 GETIMPORT                        R53 K1 [script]
      362 GETTABLEKS                       R53 R53 K61 ["StartStopPlayTool"]
      364 CALL                             R52 1 1
      365 GETIMPORT                        R53 K5 [require]
      367 GETIMPORT                        R54 K1 [script]
      369 GETTABLEKS                       R54 R54 K62 ["StopMultiPlayerAgentsTool"]
      371 CALL                             R53 1 1
      372 GETIMPORT                        R54 K5 [require]
      374 GETIMPORT                        R55 K1 [script]
      376 GETTABLEKS                       R55 R55 K63 ["StoreImageTool"]
      378 CALL                             R54 1 1
      379 GETIMPORT                        R55 K5 [require]
      381 GETIMPORT                        R56 K1 [script]
      383 GETTABLEKS                       R56 R56 K64 ["SubagentTool"]
      385 CALL                             R55 1 1
      386 GETIMPORT                        R56 K5 [require]
      388 GETIMPORT                        R57 K1 [script]
      390 GETTABLEKS                       R57 R57 K65 ["SubmitFeedbackTool"]
      392 CALL                             R56 1 1
      393 GETIMPORT                        R57 K5 [require]
      395 GETIMPORT                        R58 K1 [script]
      397 GETTABLEKS                       R58 R58 K66 ["TextureGenTool"]
      399 CALL                             R57 1 1
      400 GETIMPORT                        R58 K5 [require]
      402 GETIMPORT                        R59 K1 [script]
      404 GETTABLEKS                       R59 R59 K67 ["UploadImageTool"]
      406 CALL                             R58 1 1
      407 GETIMPORT                        R59 K5 [require]
      409 GETIMPORT                        R60 K1 [script]
      411 GETTABLEKS                       R60 R60 K68 ["UserKeyboardInputTool"]
      413 CALL                             R59 1 1
      414 GETIMPORT                        R60 K5 [require]
      416 GETIMPORT                        R61 K1 [script]
      418 GETTABLEKS                       R61 R61 K69 ["UserMouseInputTool"]
      420 CALL                             R60 1 1
      421 GETIMPORT                        R61 K5 [require]
      423 GETIMPORT                        R62 K1 [script]
      425 GETTABLEKS                       R62 R62 K70 ["VideoCaptureTool"]
      427 CALL                             R61 1 1
      428 GETIMPORT                        R62 K5 [require]
      430 GETIMPORT                        R63 K1 [script]
      432 GETTABLEKS                       R63 R63 K71 ["WaitForMultiPlayerAgentsCommunicationTool"]
      434 CALL                             R62 1 1
      435 GETTABLEKS                       R63 R6 K72 ["getRuntimeForMeta"]
      437 GETTABLEKS                       R64 R8 K73 ["ToolNames"]
      439 NEWTABLE                         R65 32 0
      441 GETTABLEKS                       R66 R64 K74 ["AskInput"]
      443 SETTABLE                         R12 R65 R66
      444 GETTABLEKS                       R66 R64 K75 ["AssetInsert"]
      446 SETTABLE                         R13 R65 R66
      447 GETTABLEKS                       R66 R64 K76 ["AssetSearch"]
      449 SETTABLE                         R14 R65 R66
      450 GETTABLEKS                       R66 R64 K77 ["CharacterNavigation"]
      452 SETTABLE                         R18 R65 R66
      453 GETTABLEKS                       R66 R64 K78 ["CompleteTodoItems"]
      455 SETTABLE                         R19 R65 R66
      456 GETTABLEKS                       R66 R64 K79 ["CreateSkill"]
      458 SETTABLE                         R20 R65 R66
      459 GETTABLEKS                       R66 R64 K80 ["EditSkill"]
      461 SETTABLE                         R21 R65 R66
      462 GETTABLEKS                       R66 R64 K81 ["ExecuteLuau"]
      464 SETTABLE                         R22 R65 R66
      465 GETTABLEKS                       R66 R64 K82 ["FileSearch"]
      467 SETTABLE                         R23 R65 R66
      468 GETTABLEKS                       R66 R64 K83 ["FinalizePlan"]
      470 SETTABLE                         R24 R65 R66
      471 GETTABLEKS                       R66 R64 K84 ["FromHistory"]
      473 SETTABLE                         R25 R65 R66
      474 GETTABLEKS                       R66 R64 K85 ["GameTree"]
      476 SETTABLE                         R26 R65 R66
      477 GETTABLEKS                       R66 R64 K86 ["GetConsoleOutput"]
      479 SETTABLE                         R28 R65 R66
      480 GETTABLEKS                       R66 R64 K87 ["GetStudioState"]
      482 SETTABLE                         R29 R65 R66
      483 GETTABLEKS                       R66 R64 K88 ["GrepSearch"]
      485 SETTABLE                         R30 R65 R66
      486 GETTABLEKS                       R66 R64 K89 ["HttpGet"]
      488 SETTABLE                         R31 R65 R66
      489 GETTABLEKS                       R66 R64 K90 ["InspectInstance"]
      491 SETTABLE                         R32 R65 R66
      492 GETTABLEKS                       R66 R64 K91 ["JobWait"]
      494 SETTABLE                         R33 R65 R66
      495 GETTABLEKS                       R66 R64 K92 ["MaterialGen"]
      497 SETTABLE                         R38 R65 R66
      498 GETTABLEKS                       R66 R64 K93 ["MeshGen"]
      500 SETTABLE                         R39 R65 R66
      501 GETTABLEKS                       R66 R64 K94 ["MultiEdit"]
      503 SETTABLE                         R40 R65 R66
      504 GETTABLEKS                       R66 R64 K95 ["PrimitiveGen"]
      506 SETTABLE                         R44 R65 R66
      507 GETTABLEKS                       R66 R64 K96 ["QuestionAnswer"]
      509 SETTABLE                         R45 R65 R66
      510 GETTABLEKS                       R66 R64 K97 ["ReadFile"]
      512 SETTABLE                         R46 R65 R66
      513 GETTABLEKS                       R66 R64 K98 ["ScreenCapture"]
      515 SETTABLE                         R48 R65 R66
      516 GETTABLEKS                       R66 R64 K99 ["Skill"]
      518 SETTABLE                         R50 R65 R66
      519 GETTABLEKS                       R66 R64 K100 ["StartStopPlay"]
      521 SETTABLE                         R52 R65 R66
      522 GETTABLEKS                       R66 R64 K101 ["StoreImage"]
      524 SETTABLE                         R54 R65 R66
      525 GETTABLEKS                       R66 R64 K102 ["Subagent"]
      527 SETTABLE                         R55 R65 R66
      528 GETTABLEKS                       R66 R64 K103 ["UploadImage"]
      530 SETTABLE                         R58 R65 R66
      531 GETTABLEKS                       R66 R64 K104 ["UserKeyboardInput"]
      533 SETTABLE                         R59 R65 R66
      534 GETTABLEKS                       R66 R64 K105 ["UserMouseInput"]
      536 SETTABLE                         R60 R65 R66
      537 GETTABLEKS                       R66 R5 K106 ["FFlagPlaytestVision"]
      539 JUMPIFNOT                        R66 ; [+3]
      540 GETTABLEKS                       R66 R64 K107 ["PlaytestLook"]
      542 SETTABLE                         R43 R65 R66
      543 GETTABLEKS                       R66 R5 K108 ["FFlagAssistantMultiPlayerAgents"]
      545 JUMPIFNOT                        R66 ; [+12]
      546 GETTABLEKS                       R66 R64 K109 ["StartMultiPlayerAgents"]
      548 SETTABLE                         R51 R65 R66
      549 GETTABLEKS                       R66 R64 K110 ["StopMultiPlayerAgents"]
      551 SETTABLE                         R53 R65 R66
      552 GETTABLEKS                       R66 R64 K111 ["MultiPlayerAgentsCommunication"]
      554 SETTABLE                         R41 R65 R66
      555 GETTABLEKS                       R66 R64 K112 ["WaitForMultiPlayerAgentsCommunication"]
      557 SETTABLE                         R62 R65 R66
      558 GETTABLEKS                       R66 R5 K113 ["FFlagAssistantVideoCaptureTool"]
      560 JUMPIFNOT                        R66 ; [+3]
      561 GETTABLEKS                       R66 R64 K114 ["VideoCapture"]
      563 SETTABLE                         R61 R65 R66
      564 GETTABLEKS                       R66 R5 K115 ["FFlagAssistantCapturePluginGuiTool"]
      566 JUMPIFNOT                        R66 ; [+6]
      567 GETTABLEKS                       R66 R64 K116 ["ListPluginGuis"]
      569 SETTABLE                         R35 R65 R66
      570 GETTABLEKS                       R66 R64 K117 ["CapturePluginGui"]
      572 SETTABLE                         R17 R65 R66
      573 GETTABLEKS                       R66 R5 K118 ["FFlagAssistantOpenCloudInvokeTool"]
      575 JUMPIFNOT                        R66 ; [+9]
      576 GETTABLEKS                       R66 R5 K119 ["EngineFeatureAssistantExecuteLuauArguments"]
      578 JUMPIFNOT                        R66 ; [+6]
      579 GETTABLEKS                       R66 R5 K120 ["FFlagAssistantUseNewDMNetworking"]
      581 JUMPIFNOT                        R66 ; [+3]
      582 GETTABLEKS                       R66 R64 K121 ["OpenCloudInvoke"]
      584 SETTABLE                         R42 R65 R66
      585 MOVE                             R66 R10
      586 CALL                             R66 0 1
      587 JUMPIFNOT                        R66 ; [+3]
      588 GETTABLEKS                       R66 R64 K122 ["AnimationGen"]
      590 SETTABLE                         R11 R65 R66
      591 GETTABLEKS                       R66 R5 K123 ["FFlagAssistantAvatarAutoSetupTool"]
      593 JUMPIFNOT                        R66 ; [+3]
      594 GETTABLEKS                       R66 R64 K124 ["AvatarAutoSetup"]
      596 SETTABLE                         R15 R65 R66
      597 GETTABLEKS                       R66 R5 K125 ["FFlagAssistantAvatarGenTool"]
      599 JUMPIFNOT                        R66 ; [+3]
      600 GETTABLEKS                       R66 R64 K126 ["AvatarGen"]
      602 SETTABLE                         R16 R65 R66
      603 GETTABLEKS                       R66 R64 K127 ["UpdatePlan"]
      605 GETIMPORT                        R67 K5 [require]
      607 GETIMPORT                        R68 K1 [script]
      609 GETTABLEKS                       R68 R68 K128 ["UpdatePlanTool"]
      611 CALL                             R67 1 1
      612 SETTABLE                         R67 R65 R66
      613 GETTABLEKS                       R66 R5 K129 ["FFlagAssistantSegmentMeshTool"]
      615 JUMPIFNOT                        R66 ; [+3]
      616 GETTABLEKS                       R66 R64 K130 ["SegmentMesh"]
      618 SETTABLE                         R49 R65 R66
      619 GETTABLEKS                       R66 R5 K131 ["FFlagAssistantGenerateLayoutTool"]
      621 JUMPIFNOT                        R66 ; [+3]
      622 GETTABLEKS                       R66 R64 K132 ["GenerateScene"]
      624 SETTABLE                         R27 R65 R66
      625 GETTABLEKS                       R66 R5 K133 ["FFlagAssistantTextureGenTool"]
      627 JUMPIFNOT                        R66 ; [+3]
      628 GETTABLEKS                       R66 R64 K134 ["TextureGen"]
      630 SETTABLE                         R57 R65 R66
      631 GETTABLEKS                       R66 R5 K135 ["FFlagAssistantSavePlaceTool"]
      633 JUMPIFNOT                        R66 ; [+6]
      634 GETTABLEKS                       R66 R5 K136 ["EngineFeatureStudioPlaceSaver"]
      636 JUMPIFNOT                        R66 ; [+3]
      637 GETTABLEKS                       R66 R64 K137 ["SavePlace"]
      639 SETTABLE                         R47 R65 R66
      640 GETTABLEKS                       R66 R5 K138 ["FFlagAssistantMcpListStudiosTool"]
      642 JUMPIFNOT                        R66 ; [+3]
      643 GETTABLEKS                       R66 R64 K139 ["ListRobloxStudios"]
      645 SETTABLE                         R36 R65 R66
      646 GETTABLEKS                       R66 R5 K140 ["FFlagAssistantMcpListSkillsTool"]
      648 JUMPIFNOT                        R66 ; [+3]
      649 GETTABLEKS                       R66 R64 K141 ["ListSkills"]
      651 SETTABLE                         R37 R65 R66
      652 GETTABLEKS                       R66 R5 K142 ["FFlagAssistantMcpListPlaceTool"]
      654 JUMPIFNOT                        R66 ; [+3]
      655 GETTABLEKS                       R66 R64 K143 ["ListPlace"]
      657 SETTABLE                         R34 R65 R66
      658 GETTABLEKS                       R66 R5 K144 ["FFlagAssistantMcpSubmitFeedbackTool"]
      660 JUMPIFNOT                        R66 ; [+3]
      661 GETTABLEKS                       R66 R64 K145 ["SubmitFeedback"]
      663 SETTABLE                         R56 R65 R66
      664 DUPCLOSURE                       R66 K146 [PROTO_0]
      665 CAPTURE                          VAL R4
      666 CAPTURE                          VAL R63
      667 DUPCLOSURE                       R67 K147 [PROTO_1]
      668 CAPTURE                          VAL R9
      669 DUPTABLE                         R68 K151 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      670 SETTABLEKS                       R8 R68 K15 ["ToolTypes"]
      672 SETTABLEKS                       R65 R68 K148 ["BuiltinTools"]
      674 SETTABLEKS                       R66 R68 K149 ["createTools"]
      676 SETTABLEKS                       R67 R68 K150 ["registerTools"]
      678 RETURN                           R68 1
