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
      327 GETTABLEKS                       R48 R48 K56 ["ScreenCaptureTool"]
      329 CALL                             R47 1 1
      330 GETIMPORT                        R48 K5 [require]
      332 GETIMPORT                        R49 K1 [script]
      334 GETTABLEKS                       R49 R49 K57 ["SegmentMeshTool"]
      336 CALL                             R48 1 1
      337 GETIMPORT                        R49 K5 [require]
      339 GETIMPORT                        R50 K1 [script]
      341 GETTABLEKS                       R50 R50 K58 ["SkillTool"]
      343 CALL                             R49 1 1
      344 GETIMPORT                        R50 K5 [require]
      346 GETIMPORT                        R51 K1 [script]
      348 GETTABLEKS                       R51 R51 K59 ["StartMultiPlayerAgentsTool"]
      350 CALL                             R50 1 1
      351 GETIMPORT                        R51 K5 [require]
      353 GETIMPORT                        R52 K1 [script]
      355 GETTABLEKS                       R52 R52 K60 ["StartStopPlayTool"]
      357 CALL                             R51 1 1
      358 GETIMPORT                        R52 K5 [require]
      360 GETIMPORT                        R53 K1 [script]
      362 GETTABLEKS                       R53 R53 K61 ["StopMultiPlayerAgentsTool"]
      364 CALL                             R52 1 1
      365 GETIMPORT                        R53 K5 [require]
      367 GETIMPORT                        R54 K1 [script]
      369 GETTABLEKS                       R54 R54 K62 ["StoreImageTool"]
      371 CALL                             R53 1 1
      372 GETIMPORT                        R54 K5 [require]
      374 GETIMPORT                        R55 K1 [script]
      376 GETTABLEKS                       R55 R55 K63 ["SubagentTool"]
      378 CALL                             R54 1 1
      379 GETIMPORT                        R55 K5 [require]
      381 GETIMPORT                        R56 K1 [script]
      383 GETTABLEKS                       R56 R56 K64 ["TextureGenTool"]
      385 CALL                             R55 1 1
      386 GETIMPORT                        R56 K5 [require]
      388 GETIMPORT                        R57 K1 [script]
      390 GETTABLEKS                       R57 R57 K65 ["UploadImageTool"]
      392 CALL                             R56 1 1
      393 GETIMPORT                        R57 K5 [require]
      395 GETIMPORT                        R58 K1 [script]
      397 GETTABLEKS                       R58 R58 K66 ["UserKeyboardInputTool"]
      399 CALL                             R57 1 1
      400 GETIMPORT                        R58 K5 [require]
      402 GETIMPORT                        R59 K1 [script]
      404 GETTABLEKS                       R59 R59 K67 ["UserMouseInputTool"]
      406 CALL                             R58 1 1
      407 GETIMPORT                        R59 K5 [require]
      409 GETIMPORT                        R60 K1 [script]
      411 GETTABLEKS                       R60 R60 K68 ["VideoCaptureTool"]
      413 CALL                             R59 1 1
      414 GETIMPORT                        R60 K5 [require]
      416 GETIMPORT                        R61 K1 [script]
      418 GETTABLEKS                       R61 R61 K69 ["WaitForMultiPlayerAgentsCommunicationTool"]
      420 CALL                             R60 1 1
      421 GETTABLEKS                       R61 R6 K70 ["getRuntimeForMeta"]
      423 GETTABLEKS                       R62 R8 K71 ["ToolNames"]
      425 NEWTABLE                         R63 32 0
      427 GETTABLEKS                       R64 R62 K72 ["AskInput"]
      429 SETTABLE                         R12 R63 R64
      430 GETTABLEKS                       R64 R62 K73 ["AssetInsert"]
      432 SETTABLE                         R13 R63 R64
      433 GETTABLEKS                       R64 R62 K74 ["AssetSearch"]
      435 SETTABLE                         R14 R63 R64
      436 GETTABLEKS                       R64 R62 K75 ["CharacterNavigation"]
      438 SETTABLE                         R18 R63 R64
      439 GETTABLEKS                       R64 R62 K76 ["CompleteTodoItems"]
      441 SETTABLE                         R19 R63 R64
      442 GETTABLEKS                       R64 R62 K77 ["CreateSkill"]
      444 SETTABLE                         R20 R63 R64
      445 GETTABLEKS                       R64 R62 K78 ["EditSkill"]
      447 SETTABLE                         R21 R63 R64
      448 GETTABLEKS                       R64 R62 K79 ["ExecuteLuau"]
      450 SETTABLE                         R22 R63 R64
      451 GETTABLEKS                       R64 R62 K80 ["FileSearch"]
      453 SETTABLE                         R23 R63 R64
      454 GETTABLEKS                       R64 R62 K81 ["FinalizePlan"]
      456 SETTABLE                         R24 R63 R64
      457 GETTABLEKS                       R64 R62 K82 ["FromHistory"]
      459 SETTABLE                         R25 R63 R64
      460 GETTABLEKS                       R64 R62 K83 ["GameTree"]
      462 SETTABLE                         R26 R63 R64
      463 GETTABLEKS                       R64 R62 K84 ["GetConsoleOutput"]
      465 SETTABLE                         R28 R63 R64
      466 GETTABLEKS                       R64 R62 K85 ["GetStudioState"]
      468 SETTABLE                         R29 R63 R64
      469 GETTABLEKS                       R64 R62 K86 ["GrepSearch"]
      471 SETTABLE                         R30 R63 R64
      472 GETTABLEKS                       R64 R62 K87 ["HttpGet"]
      474 SETTABLE                         R31 R63 R64
      475 GETTABLEKS                       R64 R62 K88 ["InspectInstance"]
      477 SETTABLE                         R32 R63 R64
      478 GETTABLEKS                       R64 R62 K89 ["JobWait"]
      480 SETTABLE                         R33 R63 R64
      481 GETTABLEKS                       R64 R62 K90 ["MaterialGen"]
      483 SETTABLE                         R38 R63 R64
      484 GETTABLEKS                       R64 R62 K91 ["MeshGen"]
      486 SETTABLE                         R39 R63 R64
      487 GETTABLEKS                       R64 R62 K92 ["MultiEdit"]
      489 SETTABLE                         R40 R63 R64
      490 GETTABLEKS                       R64 R62 K93 ["PrimitiveGen"]
      492 SETTABLE                         R44 R63 R64
      493 GETTABLEKS                       R64 R62 K94 ["QuestionAnswer"]
      495 SETTABLE                         R45 R63 R64
      496 GETTABLEKS                       R64 R62 K95 ["ReadFile"]
      498 SETTABLE                         R46 R63 R64
      499 GETTABLEKS                       R64 R62 K96 ["ScreenCapture"]
      501 SETTABLE                         R47 R63 R64
      502 GETTABLEKS                       R64 R62 K97 ["Skill"]
      504 SETTABLE                         R49 R63 R64
      505 GETTABLEKS                       R64 R62 K98 ["StartStopPlay"]
      507 SETTABLE                         R51 R63 R64
      508 GETTABLEKS                       R64 R62 K99 ["StoreImage"]
      510 SETTABLE                         R53 R63 R64
      511 GETTABLEKS                       R64 R62 K100 ["Subagent"]
      513 SETTABLE                         R54 R63 R64
      514 GETTABLEKS                       R64 R62 K101 ["UploadImage"]
      516 SETTABLE                         R56 R63 R64
      517 GETTABLEKS                       R64 R62 K102 ["UserKeyboardInput"]
      519 SETTABLE                         R57 R63 R64
      520 GETTABLEKS                       R64 R62 K103 ["UserMouseInput"]
      522 SETTABLE                         R58 R63 R64
      523 GETTABLEKS                       R64 R5 K104 ["FFlagPlaytestVision"]
      525 JUMPIFNOT                        R64 ; [+3]
      526 GETTABLEKS                       R64 R62 K105 ["PlaytestLook"]
      528 SETTABLE                         R43 R63 R64
      529 GETTABLEKS                       R64 R5 K106 ["FFlagAssistantMultiPlayerAgents"]
      531 JUMPIFNOT                        R64 ; [+12]
      532 GETTABLEKS                       R64 R62 K107 ["StartMultiPlayerAgents"]
      534 SETTABLE                         R50 R63 R64
      535 GETTABLEKS                       R64 R62 K108 ["StopMultiPlayerAgents"]
      537 SETTABLE                         R52 R63 R64
      538 GETTABLEKS                       R64 R62 K109 ["MultiPlayerAgentsCommunication"]
      540 SETTABLE                         R41 R63 R64
      541 GETTABLEKS                       R64 R62 K110 ["WaitForMultiPlayerAgentsCommunication"]
      543 SETTABLE                         R60 R63 R64
      544 GETTABLEKS                       R64 R5 K111 ["FFlagAssistantVideoCaptureTool"]
      546 JUMPIFNOT                        R64 ; [+3]
      547 GETTABLEKS                       R64 R62 K112 ["VideoCapture"]
      549 SETTABLE                         R59 R63 R64
      550 GETTABLEKS                       R64 R5 K113 ["FFlagAssistantCapturePluginGuiTool"]
      552 JUMPIFNOT                        R64 ; [+6]
      553 GETTABLEKS                       R64 R62 K114 ["ListPluginGuis"]
      555 SETTABLE                         R35 R63 R64
      556 GETTABLEKS                       R64 R62 K115 ["CapturePluginGui"]
      558 SETTABLE                         R17 R63 R64
      559 GETTABLEKS                       R64 R5 K116 ["FFlagAssistantOpenCloudInvokeTool"]
      561 JUMPIFNOT                        R64 ; [+9]
      562 GETTABLEKS                       R64 R5 K117 ["EngineFeatureAssistantExecuteLuauArguments"]
      564 JUMPIFNOT                        R64 ; [+6]
      565 GETTABLEKS                       R64 R5 K118 ["FFlagAssistantUseNewDMNetworking"]
      567 JUMPIFNOT                        R64 ; [+3]
      568 GETTABLEKS                       R64 R62 K119 ["OpenCloudInvoke"]
      570 SETTABLE                         R42 R63 R64
      571 MOVE                             R64 R10
      572 CALL                             R64 0 1
      573 JUMPIFNOT                        R64 ; [+3]
      574 GETTABLEKS                       R64 R62 K120 ["AnimationGen"]
      576 SETTABLE                         R11 R63 R64
      577 GETTABLEKS                       R64 R5 K121 ["FFlagAssistantAvatarAutoSetupTool"]
      579 JUMPIFNOT                        R64 ; [+3]
      580 GETTABLEKS                       R64 R62 K122 ["AvatarAutoSetup"]
      582 SETTABLE                         R15 R63 R64
      583 GETTABLEKS                       R64 R5 K123 ["FFlagAssistantAvatarGenTool"]
      585 JUMPIFNOT                        R64 ; [+3]
      586 GETTABLEKS                       R64 R62 K124 ["AvatarGen"]
      588 SETTABLE                         R16 R63 R64
      589 GETTABLEKS                       R64 R62 K125 ["UpdatePlan"]
      591 GETIMPORT                        R65 K5 [require]
      593 GETIMPORT                        R66 K1 [script]
      595 GETTABLEKS                       R66 R66 K126 ["UpdatePlanTool"]
      597 CALL                             R65 1 1
      598 SETTABLE                         R65 R63 R64
      599 GETTABLEKS                       R64 R5 K127 ["FFlagAssistantSegmentMeshTool"]
      601 JUMPIFNOT                        R64 ; [+3]
      602 GETTABLEKS                       R64 R62 K128 ["SegmentMesh"]
      604 SETTABLE                         R48 R63 R64
      605 GETTABLEKS                       R64 R5 K129 ["FFlagAssistantGenerateLayoutTool"]
      607 JUMPIFNOT                        R64 ; [+3]
      608 GETTABLEKS                       R64 R62 K130 ["GenerateScene"]
      610 SETTABLE                         R27 R63 R64
      611 GETTABLEKS                       R64 R5 K131 ["FFlagAssistantTextureGenTool"]
      613 JUMPIFNOT                        R64 ; [+3]
      614 GETTABLEKS                       R64 R62 K132 ["TextureGen"]
      616 SETTABLE                         R55 R63 R64
      617 GETTABLEKS                       R64 R5 K133 ["FFlagUseStudioSideListTool"]
      619 JUMPIFNOT                        R64 ; [+3]
      620 GETTABLEKS                       R64 R62 K134 ["ListRobloxStudios"]
      622 SETTABLE                         R36 R63 R64
      623 GETTABLEKS                       R64 R5 K135 ["FFlagAssistantMcpListSkillsTool"]
      625 JUMPIFNOT                        R64 ; [+3]
      626 GETTABLEKS                       R64 R62 K136 ["ListSkills"]
      628 SETTABLE                         R37 R63 R64
      629 GETTABLEKS                       R64 R5 K137 ["FFlagAssistantMcpListPlaceTool"]
      631 JUMPIFNOT                        R64 ; [+3]
      632 GETTABLEKS                       R64 R62 K138 ["ListPlace"]
      634 SETTABLE                         R34 R63 R64
      635 DUPCLOSURE                       R64 K139 [PROTO_0]
      636 CAPTURE                          VAL R4
      637 CAPTURE                          VAL R61
      638 DUPCLOSURE                       R65 K140 [PROTO_1]
      639 CAPTURE                          VAL R9
      640 DUPTABLE                         R66 K144 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      641 SETTABLEKS                       R8 R66 K15 ["ToolTypes"]
      643 SETTABLEKS                       R63 R66 K141 ["BuiltinTools"]
      645 SETTABLEKS                       R64 R66 K142 ["createTools"]
      647 SETTABLEKS                       R65 R66 K143 ["registerTools"]
      649 RETURN                           R66 1
