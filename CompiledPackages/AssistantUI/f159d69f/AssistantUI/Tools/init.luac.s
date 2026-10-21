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
      180 GETTABLEKS                       R27 R27 K34 ["GenerateLayoutTool"]
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
      243 GETTABLEKS                       R36 R36 K43 ["MaterialGenTool"]
      245 CALL                             R35 1 1
      246 GETIMPORT                        R36 K5 [require]
      248 GETIMPORT                        R37 K1 [script]
      250 GETTABLEKS                       R37 R37 K44 ["MeshGenTool"]
      252 CALL                             R36 1 1
      253 GETIMPORT                        R37 K5 [require]
      255 GETIMPORT                        R38 K1 [script]
      257 GETTABLEKS                       R38 R38 K45 ["MultiEditTool"]
      259 CALL                             R37 1 1
      260 GETIMPORT                        R38 K5 [require]
      262 GETIMPORT                        R39 K1 [script]
      264 GETTABLEKS                       R39 R39 K46 ["MultiPlayerAgentsCommunicationTool"]
      266 CALL                             R38 1 1
      267 GETIMPORT                        R39 K5 [require]
      269 GETIMPORT                        R40 K1 [script]
      271 GETTABLEKS                       R40 R40 K47 ["PlaytestLookTool"]
      273 CALL                             R39 1 1
      274 GETIMPORT                        R40 K5 [require]
      276 GETIMPORT                        R41 K1 [script]
      278 GETTABLEKS                       R41 R41 K48 ["PrimitiveGenTool"]
      280 CALL                             R40 1 1
      281 GETIMPORT                        R41 K5 [require]
      283 GETIMPORT                        R42 K1 [script]
      285 GETTABLEKS                       R42 R42 K49 ["QuestionAnswerTool"]
      287 CALL                             R41 1 1
      288 GETIMPORT                        R42 K5 [require]
      290 GETIMPORT                        R43 K1 [script]
      292 GETTABLEKS                       R43 R43 K50 ["ReadFileTool"]
      294 CALL                             R42 1 1
      295 GETIMPORT                        R43 K5 [require]
      297 GETIMPORT                        R44 K1 [script]
      299 GETTABLEKS                       R44 R44 K51 ["ScreenCaptureTool"]
      301 CALL                             R43 1 1
      302 GETIMPORT                        R44 K5 [require]
      304 GETIMPORT                        R45 K1 [script]
      306 GETTABLEKS                       R45 R45 K52 ["SegmentMeshTool"]
      308 CALL                             R44 1 1
      309 GETIMPORT                        R45 K5 [require]
      311 GETIMPORT                        R46 K1 [script]
      313 GETTABLEKS                       R46 R46 K53 ["SkillTool"]
      315 CALL                             R45 1 1
      316 GETIMPORT                        R46 K5 [require]
      318 GETIMPORT                        R47 K1 [script]
      320 GETTABLEKS                       R47 R47 K54 ["StartMultiPlayerAgentsTool"]
      322 CALL                             R46 1 1
      323 GETIMPORT                        R47 K5 [require]
      325 GETIMPORT                        R48 K1 [script]
      327 GETTABLEKS                       R48 R48 K55 ["StartStopPlayTool"]
      329 CALL                             R47 1 1
      330 GETIMPORT                        R48 K5 [require]
      332 GETIMPORT                        R49 K1 [script]
      334 GETTABLEKS                       R49 R49 K56 ["StopMultiPlayerAgentsTool"]
      336 CALL                             R48 1 1
      337 GETIMPORT                        R49 K5 [require]
      339 GETIMPORT                        R50 K1 [script]
      341 GETTABLEKS                       R50 R50 K57 ["StoreImageTool"]
      343 CALL                             R49 1 1
      344 GETIMPORT                        R50 K5 [require]
      346 GETIMPORT                        R51 K1 [script]
      348 GETTABLEKS                       R51 R51 K58 ["SubagentTool"]
      350 CALL                             R50 1 1
      351 GETIMPORT                        R51 K5 [require]
      353 GETIMPORT                        R52 K1 [script]
      355 GETTABLEKS                       R52 R52 K59 ["TextureGenTool"]
      357 CALL                             R51 1 1
      358 GETIMPORT                        R52 K5 [require]
      360 GETIMPORT                        R53 K1 [script]
      362 GETTABLEKS                       R53 R53 K60 ["UploadImageTool"]
      364 CALL                             R52 1 1
      365 GETIMPORT                        R53 K5 [require]
      367 GETIMPORT                        R54 K1 [script]
      369 GETTABLEKS                       R54 R54 K61 ["UserKeyboardInputTool"]
      371 CALL                             R53 1 1
      372 GETIMPORT                        R54 K5 [require]
      374 GETIMPORT                        R55 K1 [script]
      376 GETTABLEKS                       R55 R55 K62 ["UserMouseInputTool"]
      378 CALL                             R54 1 1
      379 GETIMPORT                        R55 K5 [require]
      381 GETIMPORT                        R56 K1 [script]
      383 GETTABLEKS                       R56 R56 K63 ["VideoCaptureTool"]
      385 CALL                             R55 1 1
      386 GETIMPORT                        R56 K5 [require]
      388 GETIMPORT                        R57 K1 [script]
      390 GETTABLEKS                       R57 R57 K64 ["WaitForMultiPlayerAgentsCommunicationTool"]
      392 CALL                             R56 1 1
      393 GETTABLEKS                       R57 R6 K65 ["getRuntimeForMeta"]
      395 GETTABLEKS                       R58 R8 K66 ["ToolNames"]
      397 NEWTABLE                         R59 32 0
      399 GETTABLEKS                       R60 R58 K67 ["AskInput"]
      401 SETTABLE                         R11 R59 R60
      402 GETTABLEKS                       R60 R58 K68 ["AssetInsert"]
      404 SETTABLE                         R12 R59 R60
      405 GETTABLEKS                       R60 R58 K69 ["AssetSearch"]
      407 SETTABLE                         R13 R59 R60
      408 GETTABLEKS                       R60 R58 K70 ["CharacterNavigation"]
      410 SETTABLE                         R17 R59 R60
      411 GETTABLEKS                       R60 R58 K71 ["CompleteTodoItems"]
      413 SETTABLE                         R18 R59 R60
      414 GETTABLEKS                       R60 R58 K72 ["CreateSkill"]
      416 SETTABLE                         R19 R59 R60
      417 GETTABLEKS                       R60 R58 K73 ["EditSkill"]
      419 SETTABLE                         R20 R59 R60
      420 GETTABLEKS                       R60 R58 K74 ["ExecuteLuau"]
      422 SETTABLE                         R21 R59 R60
      423 GETTABLEKS                       R60 R58 K75 ["FileSearch"]
      425 SETTABLE                         R22 R59 R60
      426 GETTABLEKS                       R60 R58 K76 ["FinalizePlan"]
      428 SETTABLE                         R23 R59 R60
      429 GETTABLEKS                       R60 R58 K77 ["FromHistory"]
      431 SETTABLE                         R24 R59 R60
      432 GETTABLEKS                       R60 R58 K78 ["GameTree"]
      434 SETTABLE                         R25 R59 R60
      435 GETTABLEKS                       R60 R58 K79 ["GetConsoleOutput"]
      437 SETTABLE                         R27 R59 R60
      438 GETTABLEKS                       R60 R58 K80 ["GetStudioState"]
      440 SETTABLE                         R28 R59 R60
      441 GETTABLEKS                       R60 R58 K81 ["GrepSearch"]
      443 SETTABLE                         R29 R59 R60
      444 GETTABLEKS                       R60 R58 K82 ["HttpGet"]
      446 SETTABLE                         R30 R59 R60
      447 GETTABLEKS                       R60 R58 K83 ["InspectInstance"]
      449 SETTABLE                         R31 R59 R60
      450 GETTABLEKS                       R60 R58 K84 ["JobWait"]
      452 SETTABLE                         R32 R59 R60
      453 GETTABLEKS                       R60 R58 K85 ["MaterialGen"]
      455 SETTABLE                         R35 R59 R60
      456 GETTABLEKS                       R60 R58 K86 ["MeshGen"]
      458 SETTABLE                         R36 R59 R60
      459 GETTABLEKS                       R60 R58 K87 ["MultiEdit"]
      461 SETTABLE                         R37 R59 R60
      462 GETTABLEKS                       R60 R58 K88 ["PrimitiveGen"]
      464 SETTABLE                         R40 R59 R60
      465 GETTABLEKS                       R60 R58 K89 ["QuestionAnswer"]
      467 SETTABLE                         R41 R59 R60
      468 GETTABLEKS                       R60 R58 K90 ["ReadFile"]
      470 SETTABLE                         R42 R59 R60
      471 GETTABLEKS                       R60 R58 K91 ["ScreenCapture"]
      473 SETTABLE                         R43 R59 R60
      474 GETTABLEKS                       R60 R58 K92 ["Skill"]
      476 SETTABLE                         R45 R59 R60
      477 GETTABLEKS                       R60 R58 K93 ["StartStopPlay"]
      479 SETTABLE                         R47 R59 R60
      480 GETTABLEKS                       R60 R58 K94 ["StoreImage"]
      482 SETTABLE                         R49 R59 R60
      483 GETTABLEKS                       R60 R58 K95 ["Subagent"]
      485 SETTABLE                         R50 R59 R60
      486 GETTABLEKS                       R60 R58 K96 ["UploadImage"]
      488 SETTABLE                         R52 R59 R60
      489 GETTABLEKS                       R60 R58 K97 ["UserKeyboardInput"]
      491 SETTABLE                         R53 R59 R60
      492 GETTABLEKS                       R60 R58 K98 ["UserMouseInput"]
      494 SETTABLE                         R54 R59 R60
      495 GETTABLEKS                       R60 R5 K99 ["FFlagPlaytestVision"]
      497 JUMPIFNOT                        R60 ; [+3]
      498 GETTABLEKS                       R60 R58 K100 ["PlaytestLook"]
      500 SETTABLE                         R39 R59 R60
      501 GETTABLEKS                       R60 R5 K101 ["FFlagAssistantMultiPlayerAgents"]
      503 JUMPIFNOT                        R60 ; [+12]
      504 GETTABLEKS                       R60 R58 K102 ["StartMultiPlayerAgents"]
      506 SETTABLE                         R46 R59 R60
      507 GETTABLEKS                       R60 R58 K103 ["StopMultiPlayerAgents"]
      509 SETTABLE                         R48 R59 R60
      510 GETTABLEKS                       R60 R58 K104 ["MultiPlayerAgentsCommunication"]
      512 SETTABLE                         R38 R59 R60
      513 GETTABLEKS                       R60 R58 K105 ["WaitForMultiPlayerAgentsCommunication"]
      515 SETTABLE                         R56 R59 R60
      516 GETTABLEKS                       R60 R5 K106 ["FFlagAssistantVideoCaptureTool"]
      518 JUMPIFNOT                        R60 ; [+3]
      519 GETTABLEKS                       R60 R58 K107 ["VideoCapture"]
      521 SETTABLE                         R55 R59 R60
      522 GETTABLEKS                       R60 R5 K108 ["FFlagAssistantCapturePluginGuiTool"]
      524 JUMPIFNOT                        R60 ; [+6]
      525 GETTABLEKS                       R60 R58 K109 ["ListPluginGuis"]
      527 SETTABLE                         R33 R59 R60
      528 GETTABLEKS                       R60 R58 K110 ["CapturePluginGui"]
      530 SETTABLE                         R16 R59 R60
      531 GETTABLEKS                       R60 R5 K111 ["FFlagAssistantAnimationGenTool"]
      533 JUMPIFNOT                        R60 ; [+3]
      534 GETTABLEKS                       R60 R58 K112 ["AnimationGen"]
      536 SETTABLE                         R10 R59 R60
      537 GETTABLEKS                       R60 R5 K113 ["FFlagAssistantAvatarAutoSetupTool"]
      539 JUMPIFNOT                        R60 ; [+3]
      540 GETTABLEKS                       R60 R58 K114 ["AvatarAutoSetup"]
      542 SETTABLE                         R14 R59 R60
      543 GETTABLEKS                       R60 R5 K115 ["FFlagAssistantAvatarGenTool"]
      545 JUMPIFNOT                        R60 ; [+3]
      546 GETTABLEKS                       R60 R58 K116 ["AvatarGen"]
      548 SETTABLE                         R15 R59 R60
      549 GETTABLEKS                       R60 R58 K117 ["UpdatePlan"]
      551 GETIMPORT                        R61 K5 [require]
      553 GETIMPORT                        R62 K1 [script]
      555 GETTABLEKS                       R62 R62 K118 ["UpdatePlanTool"]
      557 CALL                             R61 1 1
      558 SETTABLE                         R61 R59 R60
      559 GETTABLEKS                       R60 R5 K119 ["FFlagAssistantSegmentMeshTool"]
      561 JUMPIFNOT                        R60 ; [+3]
      562 GETTABLEKS                       R60 R58 K120 ["SegmentMesh"]
      564 SETTABLE                         R44 R59 R60
      565 GETTABLEKS                       R60 R5 K121 ["FFlagAssistantGenerateLayoutTool"]
      567 JUMPIFNOT                        R60 ; [+3]
      568 GETTABLEKS                       R60 R58 K122 ["GenerateLayout"]
      570 SETTABLE                         R26 R59 R60
      571 GETTABLEKS                       R60 R5 K123 ["FFlagAssistantTextureGenTool"]
      573 JUMPIFNOT                        R60 ; [+3]
      574 GETTABLEKS                       R60 R58 K124 ["TextureGen"]
      576 SETTABLE                         R51 R59 R60
      577 GETTABLEKS                       R60 R5 K125 ["FFlagUseStudioSideListTool"]
      579 JUMPIFNOT                        R60 ; [+3]
      580 GETTABLEKS                       R60 R58 K126 ["ListRobloxStudios"]
      582 SETTABLE                         R34 R59 R60
      583 DUPCLOSURE                       R60 K127 [PROTO_0]
      584 CAPTURE                          VAL R4
      585 CAPTURE                          VAL R57
      586 DUPCLOSURE                       R61 K128 [PROTO_1]
      587 CAPTURE                          VAL R9
      588 DUPTABLE                         R62 K132 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      589 SETTABLEKS                       R8 R62 K15 ["ToolTypes"]
      591 SETTABLEKS                       R59 R62 K129 ["BuiltinTools"]
      593 SETTABLEKS                       R60 R62 K130 ["createTools"]
      595 SETTABLEKS                       R61 R62 K131 ["registerTools"]
      597 RETURN                           R62 1
