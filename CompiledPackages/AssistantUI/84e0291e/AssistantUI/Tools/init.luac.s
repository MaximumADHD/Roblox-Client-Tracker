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
       66 GETIMPORT                        R11 K1 [script]
       68 GETTABLEKS                       R11 R11 K18 ["AnimationGenTool"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K5 [require]
       73 GETIMPORT                        R12 K1 [script]
       75 GETTABLEKS                       R12 R12 K19 ["AskInputTool"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K5 [require]
       80 GETIMPORT                        R13 K1 [script]
       82 GETTABLEKS                       R13 R13 K20 ["AssetInsertTool"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K5 [require]
       87 GETIMPORT                        R14 K1 [script]
       89 GETTABLEKS                       R14 R14 K21 ["AssetSearchTool"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETIMPORT                        R15 K1 [script]
       96 GETTABLEKS                       R15 R15 K22 ["AvatarAutoSetupTool"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K5 [require]
      101 GETIMPORT                        R16 K1 [script]
      103 GETTABLEKS                       R16 R16 K23 ["AvatarGenTool"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K5 [require]
      108 GETIMPORT                        R17 K1 [script]
      110 GETTABLEKS                       R17 R17 K24 ["CapturePluginGuiTool"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K5 [require]
      115 GETIMPORT                        R18 K1 [script]
      117 GETTABLEKS                       R18 R18 K25 ["CharacterNavigationTool"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K5 [require]
      122 GETIMPORT                        R19 K1 [script]
      124 GETTABLEKS                       R19 R19 K26 ["CompleteTodoItemsTool"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K5 [require]
      129 GETIMPORT                        R20 K1 [script]
      131 GETTABLEKS                       R20 R20 K27 ["CreateSkillTool"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K5 [require]
      136 GETIMPORT                        R21 K1 [script]
      138 GETTABLEKS                       R21 R21 K28 ["EditSkillTool"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K5 [require]
      143 GETIMPORT                        R22 K1 [script]
      145 GETTABLEKS                       R22 R22 K29 ["ExecuteLuauTool"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K5 [require]
      150 GETIMPORT                        R23 K1 [script]
      152 GETTABLEKS                       R23 R23 K30 ["FileSearchTool"]
      154 CALL                             R22 1 1
      155 GETIMPORT                        R23 K5 [require]
      157 GETIMPORT                        R24 K1 [script]
      159 GETTABLEKS                       R24 R24 K31 ["FinalizePlanTool"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K5 [require]
      164 GETIMPORT                        R25 K1 [script]
      166 GETTABLEKS                       R25 R25 K32 ["FromHistoryTool"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K5 [require]
      171 GETIMPORT                        R26 K1 [script]
      173 GETTABLEKS                       R26 R26 K33 ["GameTreeTool"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K5 [require]
      178 GETIMPORT                        R27 K1 [script]
      180 GETTABLEKS                       R27 R27 K34 ["GenerateSceneTool"]
      182 CALL                             R26 1 1
      183 GETIMPORT                        R27 K5 [require]
      185 GETIMPORT                        R28 K1 [script]
      187 GETTABLEKS                       R28 R28 K35 ["GetConsoleOutputTool"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K5 [require]
      192 GETIMPORT                        R29 K1 [script]
      194 GETTABLEKS                       R29 R29 K36 ["GetStudioStateTool"]
      196 CALL                             R28 1 1
      197 GETIMPORT                        R29 K5 [require]
      199 GETIMPORT                        R30 K1 [script]
      201 GETTABLEKS                       R30 R30 K37 ["GrepSearchTool"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K5 [require]
      206 GETIMPORT                        R31 K1 [script]
      208 GETTABLEKS                       R31 R31 K38 ["HttpGetTool"]
      210 CALL                             R30 1 1
      211 GETIMPORT                        R31 K5 [require]
      213 GETIMPORT                        R32 K1 [script]
      215 GETTABLEKS                       R32 R32 K39 ["InspectInstanceTool"]
      217 CALL                             R31 1 1
      218 GETIMPORT                        R32 K5 [require]
      220 GETIMPORT                        R33 K1 [script]
      222 GETTABLEKS                       R33 R33 K40 ["JobWaitTool"]
      224 CALL                             R32 1 1
      225 GETIMPORT                        R33 K5 [require]
      227 GETIMPORT                        R34 K1 [script]
      229 GETTABLEKS                       R34 R34 K41 ["ListPluginGuisTool"]
      231 CALL                             R33 1 1
      232 GETIMPORT                        R34 K5 [require]
      234 GETIMPORT                        R35 K1 [script]
      236 GETTABLEKS                       R35 R35 K42 ["ListRobloxStudiosTool"]
      238 CALL                             R34 1 1
      239 GETIMPORT                        R35 K5 [require]
      241 GETIMPORT                        R36 K1 [script]
      243 GETTABLEKS                       R36 R36 K43 ["ListSkillsTool"]
      245 CALL                             R35 1 1
      246 GETIMPORT                        R36 K5 [require]
      248 GETIMPORT                        R37 K1 [script]
      250 GETTABLEKS                       R37 R37 K44 ["MaterialGenTool"]
      252 CALL                             R36 1 1
      253 GETIMPORT                        R37 K5 [require]
      255 GETIMPORT                        R38 K1 [script]
      257 GETTABLEKS                       R38 R38 K45 ["MeshGenTool"]
      259 CALL                             R37 1 1
      260 GETIMPORT                        R38 K5 [require]
      262 GETIMPORT                        R39 K1 [script]
      264 GETTABLEKS                       R39 R39 K46 ["MultiEditTool"]
      266 CALL                             R38 1 1
      267 GETIMPORT                        R39 K5 [require]
      269 GETIMPORT                        R40 K1 [script]
      271 GETTABLEKS                       R40 R40 K47 ["MultiPlayerAgentsCommunicationTool"]
      273 CALL                             R39 1 1
      274 GETIMPORT                        R40 K5 [require]
      276 GETIMPORT                        R41 K1 [script]
      278 GETTABLEKS                       R41 R41 K48 ["OpenCloudInvokeTool"]
      280 CALL                             R40 1 1
      281 GETIMPORT                        R41 K5 [require]
      283 GETIMPORT                        R42 K1 [script]
      285 GETTABLEKS                       R42 R42 K49 ["PlaytestLookTool"]
      287 CALL                             R41 1 1
      288 GETIMPORT                        R42 K5 [require]
      290 GETIMPORT                        R43 K1 [script]
      292 GETTABLEKS                       R43 R43 K50 ["PrimitiveGenTool"]
      294 CALL                             R42 1 1
      295 GETIMPORT                        R43 K5 [require]
      297 GETIMPORT                        R44 K1 [script]
      299 GETTABLEKS                       R44 R44 K51 ["QuestionAnswerTool"]
      301 CALL                             R43 1 1
      302 GETIMPORT                        R44 K5 [require]
      304 GETIMPORT                        R45 K1 [script]
      306 GETTABLEKS                       R45 R45 K52 ["ReadFileTool"]
      308 CALL                             R44 1 1
      309 GETIMPORT                        R45 K5 [require]
      311 GETIMPORT                        R46 K1 [script]
      313 GETTABLEKS                       R46 R46 K53 ["ScreenCaptureTool"]
      315 CALL                             R45 1 1
      316 GETIMPORT                        R46 K5 [require]
      318 GETIMPORT                        R47 K1 [script]
      320 GETTABLEKS                       R47 R47 K54 ["SegmentMeshTool"]
      322 CALL                             R46 1 1
      323 GETIMPORT                        R47 K5 [require]
      325 GETIMPORT                        R48 K1 [script]
      327 GETTABLEKS                       R48 R48 K55 ["SkillTool"]
      329 CALL                             R47 1 1
      330 GETIMPORT                        R48 K5 [require]
      332 GETIMPORT                        R49 K1 [script]
      334 GETTABLEKS                       R49 R49 K56 ["StartMultiPlayerAgentsTool"]
      336 CALL                             R48 1 1
      337 GETIMPORT                        R49 K5 [require]
      339 GETIMPORT                        R50 K1 [script]
      341 GETTABLEKS                       R50 R50 K57 ["StartStopPlayTool"]
      343 CALL                             R49 1 1
      344 GETIMPORT                        R50 K5 [require]
      346 GETIMPORT                        R51 K1 [script]
      348 GETTABLEKS                       R51 R51 K58 ["StopMultiPlayerAgentsTool"]
      350 CALL                             R50 1 1
      351 GETIMPORT                        R51 K5 [require]
      353 GETIMPORT                        R52 K1 [script]
      355 GETTABLEKS                       R52 R52 K59 ["StoreImageTool"]
      357 CALL                             R51 1 1
      358 GETIMPORT                        R52 K5 [require]
      360 GETIMPORT                        R53 K1 [script]
      362 GETTABLEKS                       R53 R53 K60 ["SubagentTool"]
      364 CALL                             R52 1 1
      365 GETIMPORT                        R53 K5 [require]
      367 GETIMPORT                        R54 K1 [script]
      369 GETTABLEKS                       R54 R54 K61 ["TextureGenTool"]
      371 CALL                             R53 1 1
      372 GETIMPORT                        R54 K5 [require]
      374 GETIMPORT                        R55 K1 [script]
      376 GETTABLEKS                       R55 R55 K62 ["UploadImageTool"]
      378 CALL                             R54 1 1
      379 GETIMPORT                        R55 K5 [require]
      381 GETIMPORT                        R56 K1 [script]
      383 GETTABLEKS                       R56 R56 K63 ["UserKeyboardInputTool"]
      385 CALL                             R55 1 1
      386 GETIMPORT                        R56 K5 [require]
      388 GETIMPORT                        R57 K1 [script]
      390 GETTABLEKS                       R57 R57 K64 ["UserMouseInputTool"]
      392 CALL                             R56 1 1
      393 GETIMPORT                        R57 K5 [require]
      395 GETIMPORT                        R58 K1 [script]
      397 GETTABLEKS                       R58 R58 K65 ["VideoCaptureTool"]
      399 CALL                             R57 1 1
      400 GETIMPORT                        R58 K5 [require]
      402 GETIMPORT                        R59 K1 [script]
      404 GETTABLEKS                       R59 R59 K66 ["WaitForMultiPlayerAgentsCommunicationTool"]
      406 CALL                             R58 1 1
      407 GETTABLEKS                       R59 R6 K67 ["getRuntimeForMeta"]
      409 GETTABLEKS                       R60 R8 K68 ["ToolNames"]
      411 NEWTABLE                         R61 32 0
      413 GETTABLEKS                       R62 R60 K69 ["AskInput"]
      415 SETTABLE                         R11 R61 R62
      416 GETTABLEKS                       R62 R60 K70 ["AssetInsert"]
      418 SETTABLE                         R12 R61 R62
      419 GETTABLEKS                       R62 R60 K71 ["AssetSearch"]
      421 SETTABLE                         R13 R61 R62
      422 GETTABLEKS                       R62 R60 K72 ["CharacterNavigation"]
      424 SETTABLE                         R17 R61 R62
      425 GETTABLEKS                       R62 R60 K73 ["CompleteTodoItems"]
      427 SETTABLE                         R18 R61 R62
      428 GETTABLEKS                       R62 R60 K74 ["CreateSkill"]
      430 SETTABLE                         R19 R61 R62
      431 GETTABLEKS                       R62 R60 K75 ["EditSkill"]
      433 SETTABLE                         R20 R61 R62
      434 GETTABLEKS                       R62 R60 K76 ["ExecuteLuau"]
      436 SETTABLE                         R21 R61 R62
      437 GETTABLEKS                       R62 R60 K77 ["FileSearch"]
      439 SETTABLE                         R22 R61 R62
      440 GETTABLEKS                       R62 R60 K78 ["FinalizePlan"]
      442 SETTABLE                         R23 R61 R62
      443 GETTABLEKS                       R62 R60 K79 ["FromHistory"]
      445 SETTABLE                         R24 R61 R62
      446 GETTABLEKS                       R62 R60 K80 ["GameTree"]
      448 SETTABLE                         R25 R61 R62
      449 GETTABLEKS                       R62 R60 K81 ["GetConsoleOutput"]
      451 SETTABLE                         R27 R61 R62
      452 GETTABLEKS                       R62 R60 K82 ["GetStudioState"]
      454 SETTABLE                         R28 R61 R62
      455 GETTABLEKS                       R62 R60 K83 ["GrepSearch"]
      457 SETTABLE                         R29 R61 R62
      458 GETTABLEKS                       R62 R60 K84 ["HttpGet"]
      460 SETTABLE                         R30 R61 R62
      461 GETTABLEKS                       R62 R60 K85 ["InspectInstance"]
      463 SETTABLE                         R31 R61 R62
      464 GETTABLEKS                       R62 R60 K86 ["JobWait"]
      466 SETTABLE                         R32 R61 R62
      467 GETTABLEKS                       R62 R60 K87 ["MaterialGen"]
      469 SETTABLE                         R36 R61 R62
      470 GETTABLEKS                       R62 R60 K88 ["MeshGen"]
      472 SETTABLE                         R37 R61 R62
      473 GETTABLEKS                       R62 R60 K89 ["MultiEdit"]
      475 SETTABLE                         R38 R61 R62
      476 GETTABLEKS                       R62 R60 K90 ["PrimitiveGen"]
      478 SETTABLE                         R42 R61 R62
      479 GETTABLEKS                       R62 R60 K91 ["QuestionAnswer"]
      481 SETTABLE                         R43 R61 R62
      482 GETTABLEKS                       R62 R60 K92 ["ReadFile"]
      484 SETTABLE                         R44 R61 R62
      485 GETTABLEKS                       R62 R60 K93 ["ScreenCapture"]
      487 SETTABLE                         R45 R61 R62
      488 GETTABLEKS                       R62 R60 K94 ["Skill"]
      490 SETTABLE                         R47 R61 R62
      491 GETTABLEKS                       R62 R60 K95 ["StartStopPlay"]
      493 SETTABLE                         R49 R61 R62
      494 GETTABLEKS                       R62 R60 K96 ["StoreImage"]
      496 SETTABLE                         R51 R61 R62
      497 GETTABLEKS                       R62 R60 K97 ["Subagent"]
      499 SETTABLE                         R52 R61 R62
      500 GETTABLEKS                       R62 R60 K98 ["UploadImage"]
      502 SETTABLE                         R54 R61 R62
      503 GETTABLEKS                       R62 R60 K99 ["UserKeyboardInput"]
      505 SETTABLE                         R55 R61 R62
      506 GETTABLEKS                       R62 R60 K100 ["UserMouseInput"]
      508 SETTABLE                         R56 R61 R62
      509 GETTABLEKS                       R62 R5 K101 ["FFlagPlaytestVision"]
      511 JUMPIFNOT                        R62 ; [+3]
      512 GETTABLEKS                       R62 R60 K102 ["PlaytestLook"]
      514 SETTABLE                         R41 R61 R62
      515 GETTABLEKS                       R62 R5 K103 ["FFlagAssistantMultiPlayerAgents"]
      517 JUMPIFNOT                        R62 ; [+12]
      518 GETTABLEKS                       R62 R60 K104 ["StartMultiPlayerAgents"]
      520 SETTABLE                         R48 R61 R62
      521 GETTABLEKS                       R62 R60 K105 ["StopMultiPlayerAgents"]
      523 SETTABLE                         R50 R61 R62
      524 GETTABLEKS                       R62 R60 K106 ["MultiPlayerAgentsCommunication"]
      526 SETTABLE                         R39 R61 R62
      527 GETTABLEKS                       R62 R60 K107 ["WaitForMultiPlayerAgentsCommunication"]
      529 SETTABLE                         R58 R61 R62
      530 GETTABLEKS                       R62 R5 K108 ["FFlagAssistantVideoCaptureTool"]
      532 JUMPIFNOT                        R62 ; [+3]
      533 GETTABLEKS                       R62 R60 K109 ["VideoCapture"]
      535 SETTABLE                         R57 R61 R62
      536 GETTABLEKS                       R62 R5 K110 ["FFlagAssistantCapturePluginGuiTool"]
      538 JUMPIFNOT                        R62 ; [+6]
      539 GETTABLEKS                       R62 R60 K111 ["ListPluginGuis"]
      541 SETTABLE                         R33 R61 R62
      542 GETTABLEKS                       R62 R60 K112 ["CapturePluginGui"]
      544 SETTABLE                         R16 R61 R62
      545 GETTABLEKS                       R62 R5 K113 ["FFlagAssistantOpenCloudInvokeTool"]
      547 JUMPIFNOT                        R62 ; [+9]
      548 GETTABLEKS                       R62 R5 K114 ["EngineFeatureAssistantExecuteLuauArguments"]
      550 JUMPIFNOT                        R62 ; [+6]
      551 GETTABLEKS                       R62 R5 K115 ["FFlagAssistantUseNewDMNetworking"]
      553 JUMPIFNOT                        R62 ; [+3]
      554 GETTABLEKS                       R62 R60 K116 ["OpenCloudInvoke"]
      556 SETTABLE                         R40 R61 R62
      557 GETTABLEKS                       R62 R5 K117 ["FFlagAssistantAnimationGenTool"]
      559 JUMPIFNOT                        R62 ; [+3]
      560 GETTABLEKS                       R62 R60 K118 ["AnimationGen"]
      562 SETTABLE                         R10 R61 R62
      563 GETTABLEKS                       R62 R5 K119 ["FFlagAssistantAvatarAutoSetupTool"]
      565 JUMPIFNOT                        R62 ; [+3]
      566 GETTABLEKS                       R62 R60 K120 ["AvatarAutoSetup"]
      568 SETTABLE                         R14 R61 R62
      569 GETTABLEKS                       R62 R5 K121 ["FFlagAssistantAvatarGenTool"]
      571 JUMPIFNOT                        R62 ; [+3]
      572 GETTABLEKS                       R62 R60 K122 ["AvatarGen"]
      574 SETTABLE                         R15 R61 R62
      575 GETTABLEKS                       R62 R60 K123 ["UpdatePlan"]
      577 GETIMPORT                        R63 K5 [require]
      579 GETIMPORT                        R64 K1 [script]
      581 GETTABLEKS                       R64 R64 K124 ["UpdatePlanTool"]
      583 CALL                             R63 1 1
      584 SETTABLE                         R63 R61 R62
      585 GETTABLEKS                       R62 R5 K125 ["FFlagAssistantSegmentMeshTool"]
      587 JUMPIFNOT                        R62 ; [+3]
      588 GETTABLEKS                       R62 R60 K126 ["SegmentMesh"]
      590 SETTABLE                         R46 R61 R62
      591 GETTABLEKS                       R62 R5 K127 ["FFlagAssistantGenerateLayoutTool"]
      593 JUMPIFNOT                        R62 ; [+3]
      594 GETTABLEKS                       R62 R60 K128 ["GenerateScene"]
      596 SETTABLE                         R26 R61 R62
      597 GETTABLEKS                       R62 R5 K129 ["FFlagAssistantTextureGenTool"]
      599 JUMPIFNOT                        R62 ; [+3]
      600 GETTABLEKS                       R62 R60 K130 ["TextureGen"]
      602 SETTABLE                         R53 R61 R62
      603 GETTABLEKS                       R62 R5 K131 ["FFlagUseStudioSideListTool"]
      605 JUMPIFNOT                        R62 ; [+3]
      606 GETTABLEKS                       R62 R60 K132 ["ListRobloxStudios"]
      608 SETTABLE                         R34 R61 R62
      609 GETTABLEKS                       R62 R5 K133 ["FFlagAssistantMcpListSkillsTool"]
      611 JUMPIFNOT                        R62 ; [+3]
      612 GETTABLEKS                       R62 R60 K134 ["ListSkills"]
      614 SETTABLE                         R35 R61 R62
      615 DUPCLOSURE                       R62 K135 [PROTO_0]
      616 CAPTURE                          VAL R4
      617 CAPTURE                          VAL R59
      618 DUPCLOSURE                       R63 K136 [PROTO_1]
      619 CAPTURE                          VAL R9
      620 DUPTABLE                         R64 K140 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      621 SETTABLEKS                       R8 R64 K15 ["ToolTypes"]
      623 SETTABLEKS                       R61 R64 K137 ["BuiltinTools"]
      625 SETTABLEKS                       R62 R64 K138 ["createTools"]
      627 SETTABLEKS                       R63 R64 K139 ["registerTools"]
      629 RETURN                           R64 1
