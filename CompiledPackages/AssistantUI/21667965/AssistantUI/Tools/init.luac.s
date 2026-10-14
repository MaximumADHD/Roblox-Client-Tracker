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
      103 GETTABLEKS                       R16 R16 K23 ["CapturePluginGuiTool"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K5 [require]
      108 GETIMPORT                        R17 K1 [script]
      110 GETTABLEKS                       R17 R17 K24 ["CharacterNavigationTool"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K5 [require]
      115 GETIMPORT                        R18 K1 [script]
      117 GETTABLEKS                       R18 R18 K25 ["CompleteTodoItemsTool"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K5 [require]
      122 GETIMPORT                        R19 K1 [script]
      124 GETTABLEKS                       R19 R19 K26 ["CreateSkillTool"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K5 [require]
      129 GETIMPORT                        R20 K1 [script]
      131 GETTABLEKS                       R20 R20 K27 ["EditSkillTool"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K5 [require]
      136 GETIMPORT                        R21 K1 [script]
      138 GETTABLEKS                       R21 R21 K28 ["ExecuteLuauTool"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K5 [require]
      143 GETIMPORT                        R22 K1 [script]
      145 GETTABLEKS                       R22 R22 K29 ["FileSearchTool"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K5 [require]
      150 GETIMPORT                        R23 K1 [script]
      152 GETTABLEKS                       R23 R23 K30 ["FinalizePlanTool"]
      154 CALL                             R22 1 1
      155 GETIMPORT                        R23 K5 [require]
      157 GETIMPORT                        R24 K1 [script]
      159 GETTABLEKS                       R24 R24 K31 ["FromHistoryTool"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K5 [require]
      164 GETIMPORT                        R25 K1 [script]
      166 GETTABLEKS                       R25 R25 K32 ["GameTreeTool"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K5 [require]
      171 GETIMPORT                        R26 K1 [script]
      173 GETTABLEKS                       R26 R26 K33 ["GenerateLayoutTool"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K5 [require]
      178 GETIMPORT                        R27 K1 [script]
      180 GETTABLEKS                       R27 R27 K34 ["GetConsoleOutputTool"]
      182 CALL                             R26 1 1
      183 GETIMPORT                        R27 K5 [require]
      185 GETIMPORT                        R28 K1 [script]
      187 GETTABLEKS                       R28 R28 K35 ["GetStudioStateTool"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K5 [require]
      192 GETIMPORT                        R29 K1 [script]
      194 GETTABLEKS                       R29 R29 K36 ["GrepSearchTool"]
      196 CALL                             R28 1 1
      197 GETIMPORT                        R29 K5 [require]
      199 GETIMPORT                        R30 K1 [script]
      201 GETTABLEKS                       R30 R30 K37 ["HttpGetTool"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K5 [require]
      206 GETIMPORT                        R31 K1 [script]
      208 GETTABLEKS                       R31 R31 K38 ["InspectInstanceTool"]
      210 CALL                             R30 1 1
      211 GETIMPORT                        R31 K5 [require]
      213 GETIMPORT                        R32 K1 [script]
      215 GETTABLEKS                       R32 R32 K39 ["JobWaitTool"]
      217 CALL                             R31 1 1
      218 GETIMPORT                        R32 K5 [require]
      220 GETIMPORT                        R33 K1 [script]
      222 GETTABLEKS                       R33 R33 K40 ["ListPluginGuisTool"]
      224 CALL                             R32 1 1
      225 GETIMPORT                        R33 K5 [require]
      227 GETIMPORT                        R34 K1 [script]
      229 GETTABLEKS                       R34 R34 K41 ["ListRobloxStudiosTool"]
      231 CALL                             R33 1 1
      232 GETIMPORT                        R34 K5 [require]
      234 GETIMPORT                        R35 K1 [script]
      236 GETTABLEKS                       R35 R35 K42 ["MaterialGenTool"]
      238 CALL                             R34 1 1
      239 GETIMPORT                        R35 K5 [require]
      241 GETIMPORT                        R36 K1 [script]
      243 GETTABLEKS                       R36 R36 K43 ["MeshGenTool"]
      245 CALL                             R35 1 1
      246 GETIMPORT                        R36 K5 [require]
      248 GETIMPORT                        R37 K1 [script]
      250 GETTABLEKS                       R37 R37 K44 ["MultiEditTool"]
      252 CALL                             R36 1 1
      253 GETIMPORT                        R37 K5 [require]
      255 GETIMPORT                        R38 K1 [script]
      257 GETTABLEKS                       R38 R38 K45 ["MultiPlayerAgentsCommunicationTool"]
      259 CALL                             R37 1 1
      260 GETIMPORT                        R38 K5 [require]
      262 GETIMPORT                        R39 K1 [script]
      264 GETTABLEKS                       R39 R39 K46 ["PlaytestLookTool"]
      266 CALL                             R38 1 1
      267 GETIMPORT                        R39 K5 [require]
      269 GETIMPORT                        R40 K1 [script]
      271 GETTABLEKS                       R40 R40 K47 ["PrimitiveGenTool"]
      273 CALL                             R39 1 1
      274 GETIMPORT                        R40 K5 [require]
      276 GETIMPORT                        R41 K1 [script]
      278 GETTABLEKS                       R41 R41 K48 ["QuestionAnswerTool"]
      280 CALL                             R40 1 1
      281 GETIMPORT                        R41 K5 [require]
      283 GETIMPORT                        R42 K1 [script]
      285 GETTABLEKS                       R42 R42 K49 ["ReadFileTool"]
      287 CALL                             R41 1 1
      288 GETIMPORT                        R42 K5 [require]
      290 GETIMPORT                        R43 K1 [script]
      292 GETTABLEKS                       R43 R43 K50 ["ScreenCaptureTool"]
      294 CALL                             R42 1 1
      295 GETIMPORT                        R43 K5 [require]
      297 GETIMPORT                        R44 K1 [script]
      299 GETTABLEKS                       R44 R44 K51 ["SegmentMeshTool"]
      301 CALL                             R43 1 1
      302 GETIMPORT                        R44 K5 [require]
      304 GETIMPORT                        R45 K1 [script]
      306 GETTABLEKS                       R45 R45 K52 ["SkillTool"]
      308 CALL                             R44 1 1
      309 GETIMPORT                        R45 K5 [require]
      311 GETIMPORT                        R46 K1 [script]
      313 GETTABLEKS                       R46 R46 K53 ["StartMultiPlayerAgentsTool"]
      315 CALL                             R45 1 1
      316 GETIMPORT                        R46 K5 [require]
      318 GETIMPORT                        R47 K1 [script]
      320 GETTABLEKS                       R47 R47 K54 ["StartStopPlayTool"]
      322 CALL                             R46 1 1
      323 GETIMPORT                        R47 K5 [require]
      325 GETIMPORT                        R48 K1 [script]
      327 GETTABLEKS                       R48 R48 K55 ["StopMultiPlayerAgentsTool"]
      329 CALL                             R47 1 1
      330 GETIMPORT                        R48 K5 [require]
      332 GETIMPORT                        R49 K1 [script]
      334 GETTABLEKS                       R49 R49 K56 ["StoreImageTool"]
      336 CALL                             R48 1 1
      337 GETIMPORT                        R49 K5 [require]
      339 GETIMPORT                        R50 K1 [script]
      341 GETTABLEKS                       R50 R50 K57 ["SubagentTool"]
      343 CALL                             R49 1 1
      344 GETIMPORT                        R50 K5 [require]
      346 GETIMPORT                        R51 K1 [script]
      348 GETTABLEKS                       R51 R51 K58 ["TextureGenTool"]
      350 CALL                             R50 1 1
      351 GETIMPORT                        R51 K5 [require]
      353 GETIMPORT                        R52 K1 [script]
      355 GETTABLEKS                       R52 R52 K59 ["UploadImageTool"]
      357 CALL                             R51 1 1
      358 GETIMPORT                        R52 K5 [require]
      360 GETIMPORT                        R53 K1 [script]
      362 GETTABLEKS                       R53 R53 K60 ["UserKeyboardInputTool"]
      364 CALL                             R52 1 1
      365 GETIMPORT                        R53 K5 [require]
      367 GETIMPORT                        R54 K1 [script]
      369 GETTABLEKS                       R54 R54 K61 ["UserMouseInputTool"]
      371 CALL                             R53 1 1
      372 GETIMPORT                        R54 K5 [require]
      374 GETIMPORT                        R55 K1 [script]
      376 GETTABLEKS                       R55 R55 K62 ["VideoCaptureTool"]
      378 CALL                             R54 1 1
      379 GETIMPORT                        R55 K5 [require]
      381 GETIMPORT                        R56 K1 [script]
      383 GETTABLEKS                       R56 R56 K63 ["WaitForMultiPlayerAgentsCommunicationTool"]
      385 CALL                             R55 1 1
      386 GETTABLEKS                       R56 R6 K64 ["getRuntimeForMeta"]
      388 GETTABLEKS                       R57 R8 K65 ["ToolNames"]
      390 NEWTABLE                         R58 32 0
      392 GETTABLEKS                       R59 R57 K66 ["AskInput"]
      394 SETTABLE                         R11 R58 R59
      395 GETTABLEKS                       R59 R57 K67 ["AssetInsert"]
      397 SETTABLE                         R12 R58 R59
      398 GETTABLEKS                       R59 R57 K68 ["AssetSearch"]
      400 SETTABLE                         R13 R58 R59
      401 GETTABLEKS                       R59 R57 K69 ["CharacterNavigation"]
      403 SETTABLE                         R16 R58 R59
      404 GETTABLEKS                       R59 R57 K70 ["CompleteTodoItems"]
      406 SETTABLE                         R17 R58 R59
      407 GETTABLEKS                       R59 R57 K71 ["CreateSkill"]
      409 SETTABLE                         R18 R58 R59
      410 GETTABLEKS                       R59 R57 K72 ["EditSkill"]
      412 SETTABLE                         R19 R58 R59
      413 GETTABLEKS                       R59 R57 K73 ["ExecuteLuau"]
      415 SETTABLE                         R20 R58 R59
      416 GETTABLEKS                       R59 R57 K74 ["FileSearch"]
      418 SETTABLE                         R21 R58 R59
      419 GETTABLEKS                       R59 R57 K75 ["FinalizePlan"]
      421 SETTABLE                         R22 R58 R59
      422 GETTABLEKS                       R59 R57 K76 ["FromHistory"]
      424 SETTABLE                         R23 R58 R59
      425 GETTABLEKS                       R59 R57 K77 ["GameTree"]
      427 SETTABLE                         R24 R58 R59
      428 GETTABLEKS                       R59 R57 K78 ["GetConsoleOutput"]
      430 SETTABLE                         R26 R58 R59
      431 GETTABLEKS                       R59 R57 K79 ["GetStudioState"]
      433 SETTABLE                         R27 R58 R59
      434 GETTABLEKS                       R59 R57 K80 ["GrepSearch"]
      436 SETTABLE                         R28 R58 R59
      437 GETTABLEKS                       R59 R57 K81 ["HttpGet"]
      439 SETTABLE                         R29 R58 R59
      440 GETTABLEKS                       R59 R57 K82 ["InspectInstance"]
      442 SETTABLE                         R30 R58 R59
      443 GETTABLEKS                       R59 R57 K83 ["JobWait"]
      445 SETTABLE                         R31 R58 R59
      446 GETTABLEKS                       R59 R57 K84 ["MaterialGen"]
      448 SETTABLE                         R34 R58 R59
      449 GETTABLEKS                       R59 R57 K85 ["MeshGen"]
      451 SETTABLE                         R35 R58 R59
      452 GETTABLEKS                       R59 R57 K86 ["MultiEdit"]
      454 SETTABLE                         R36 R58 R59
      455 GETTABLEKS                       R59 R57 K87 ["PrimitiveGen"]
      457 SETTABLE                         R39 R58 R59
      458 GETTABLEKS                       R59 R57 K88 ["QuestionAnswer"]
      460 SETTABLE                         R40 R58 R59
      461 GETTABLEKS                       R59 R57 K89 ["ReadFile"]
      463 SETTABLE                         R41 R58 R59
      464 GETTABLEKS                       R59 R57 K90 ["ScreenCapture"]
      466 SETTABLE                         R42 R58 R59
      467 GETTABLEKS                       R59 R57 K91 ["Skill"]
      469 SETTABLE                         R44 R58 R59
      470 GETTABLEKS                       R59 R57 K92 ["StartStopPlay"]
      472 SETTABLE                         R46 R58 R59
      473 GETTABLEKS                       R59 R57 K93 ["StoreImage"]
      475 SETTABLE                         R48 R58 R59
      476 GETTABLEKS                       R59 R57 K94 ["Subagent"]
      478 SETTABLE                         R49 R58 R59
      479 GETTABLEKS                       R59 R57 K95 ["UploadImage"]
      481 SETTABLE                         R51 R58 R59
      482 GETTABLEKS                       R59 R57 K96 ["UserKeyboardInput"]
      484 SETTABLE                         R52 R58 R59
      485 GETTABLEKS                       R59 R57 K97 ["UserMouseInput"]
      487 SETTABLE                         R53 R58 R59
      488 GETTABLEKS                       R59 R5 K98 ["FFlagPlaytestVision"]
      490 JUMPIFNOT                        R59 ; [+3]
      491 GETTABLEKS                       R59 R57 K99 ["PlaytestLook"]
      493 SETTABLE                         R38 R58 R59
      494 GETTABLEKS                       R59 R5 K100 ["FFlagAssistantMultiPlayerAgents"]
      496 JUMPIFNOT                        R59 ; [+12]
      497 GETTABLEKS                       R59 R57 K101 ["StartMultiPlayerAgents"]
      499 SETTABLE                         R45 R58 R59
      500 GETTABLEKS                       R59 R57 K102 ["StopMultiPlayerAgents"]
      502 SETTABLE                         R47 R58 R59
      503 GETTABLEKS                       R59 R57 K103 ["MultiPlayerAgentsCommunication"]
      505 SETTABLE                         R37 R58 R59
      506 GETTABLEKS                       R59 R57 K104 ["WaitForMultiPlayerAgentsCommunication"]
      508 SETTABLE                         R55 R58 R59
      509 GETTABLEKS                       R59 R5 K105 ["FFlagAssistantVideoCaptureTool"]
      511 JUMPIFNOT                        R59 ; [+3]
      512 GETTABLEKS                       R59 R57 K106 ["VideoCapture"]
      514 SETTABLE                         R54 R58 R59
      515 GETTABLEKS                       R59 R5 K107 ["FFlagAssistantCapturePluginGuiTool"]
      517 JUMPIFNOT                        R59 ; [+6]
      518 GETTABLEKS                       R59 R57 K108 ["ListPluginGuis"]
      520 SETTABLE                         R32 R58 R59
      521 GETTABLEKS                       R59 R57 K109 ["CapturePluginGui"]
      523 SETTABLE                         R15 R58 R59
      524 GETTABLEKS                       R59 R5 K110 ["FFlagAssistantAnimationGenTool"]
      526 JUMPIFNOT                        R59 ; [+3]
      527 GETTABLEKS                       R59 R57 K111 ["AnimationGen"]
      529 SETTABLE                         R10 R58 R59
      530 GETTABLEKS                       R59 R5 K112 ["FFlagAssistantAvatarAutoSetupTool"]
      532 JUMPIFNOT                        R59 ; [+3]
      533 GETTABLEKS                       R59 R57 K113 ["AvatarAutoSetup"]
      535 SETTABLE                         R14 R58 R59
      536 GETTABLEKS                       R59 R57 K114 ["UpdatePlan"]
      538 GETIMPORT                        R60 K5 [require]
      540 GETIMPORT                        R61 K1 [script]
      542 GETTABLEKS                       R61 R61 K115 ["UpdatePlanTool"]
      544 CALL                             R60 1 1
      545 SETTABLE                         R60 R58 R59
      546 GETTABLEKS                       R59 R5 K116 ["FFlagAssistantSegmentMeshTool"]
      548 JUMPIFNOT                        R59 ; [+3]
      549 GETTABLEKS                       R59 R57 K117 ["SegmentMesh"]
      551 SETTABLE                         R43 R58 R59
      552 GETTABLEKS                       R59 R5 K118 ["FFlagAssistantGenerateLayoutTool"]
      554 JUMPIFNOT                        R59 ; [+3]
      555 GETTABLEKS                       R59 R57 K119 ["GenerateLayout"]
      557 SETTABLE                         R25 R58 R59
      558 GETTABLEKS                       R59 R5 K120 ["FFlagAssistantTextureGenTool"]
      560 JUMPIFNOT                        R59 ; [+3]
      561 GETTABLEKS                       R59 R57 K121 ["TextureGen"]
      563 SETTABLE                         R50 R58 R59
      564 GETTABLEKS                       R59 R5 K122 ["FFlagUseStudioSideListTool"]
      566 JUMPIFNOT                        R59 ; [+3]
      567 GETTABLEKS                       R59 R57 K123 ["ListRobloxStudios"]
      569 SETTABLE                         R33 R58 R59
      570 DUPCLOSURE                       R59 K124 [PROTO_0]
      571 CAPTURE                          VAL R4
      572 CAPTURE                          VAL R56
      573 DUPCLOSURE                       R60 K125 [PROTO_1]
      574 CAPTURE                          VAL R9
      575 DUPTABLE                         R61 K129 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      576 SETTABLEKS                       R8 R61 K15 ["ToolTypes"]
      578 SETTABLEKS                       R58 R61 K126 ["BuiltinTools"]
      580 SETTABLEKS                       R59 R61 K127 ["createTools"]
      582 SETTABLEKS                       R60 R61 K128 ["registerTools"]
      584 RETURN                           R61 1
