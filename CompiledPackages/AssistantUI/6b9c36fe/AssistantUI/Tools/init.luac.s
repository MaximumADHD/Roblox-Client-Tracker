PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 NEWTABLE                         R2 0 0
        6 GETTABLEKS                       R3 R0 K1 ["tools"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 MOVE                             R8 R7
       12 DUPTABLE                         R9 K6 [{"networking", "environment", "getPersistentPlanRuntime", "bridges"}]
       13 GETTABLEKS                       R10 R0 K2 ["networking"]
       15 SETTABLEKS                       R10 R9 K2 ["networking"]
       17 SETTABLEKS                       R1 R9 K3 ["environment"]
       19 GETUPVAL                         R10 1
       20 SETTABLEKS                       R10 R9 K4 ["getPersistentPlanRuntime"]
       22 GETTABLEKS                       R10 R0 K5 ["bridges"]
       24 SETTABLEKS                       R10 R9 K5 ["bridges"]
       26 CALL                             R8 1 1
       27 GETTABLE                         R11 R2 R6
       28 NOT                              R10 R11
       29 LOADK                            R12 K7 ["Tool with name %* already exists"]
       30 MOVE                             R14 R6
       31 NAMECALL                         R12 R12 K8 ["format"]
       33 CALL                             R12 2 1
       34 MOVE                             R11 R12
       35 FASTCALL2                        ASSERT R10 R11 ; [+3]
       37 GETIMPORT                        R9 K10 [assert]
       39 CALL                             R9 2 0
       40 SETTABLE                         R8 R2 R6
       41 FORGLOOP                         R3 2 ; [-31]
       43 RETURN                           R2 1

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
       21 GETTABLEKS                       R4 R0 K9 ["Guest"]
       23 GETTABLEKS                       R4 R4 K10 ["Environment"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Flags"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K12 ["PersistentPlanRuntime"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETIMPORT                        R7 K1 [script]
       40 GETTABLEKS                       R7 R7 K13 ["ToolTypes"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K14 ["Components"]
       47 GETTABLEKS                       R8 R8 K15 ["UIToolRegistry"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETIMPORT                        R9 K1 [script]
       54 GETTABLEKS                       R9 R9 K16 ["AnimationGenTool"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETIMPORT                        R10 K1 [script]
       61 GETTABLEKS                       R10 R10 K17 ["AskInputTool"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K5 [require]
       66 GETIMPORT                        R11 K1 [script]
       68 GETTABLEKS                       R11 R11 K18 ["AvatarAutoSetupTool"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K5 [require]
       73 GETIMPORT                        R12 K1 [script]
       75 GETTABLEKS                       R12 R12 K19 ["CharacterNavigationTool"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K5 [require]
       80 GETIMPORT                        R13 K1 [script]
       82 GETTABLEKS                       R13 R13 K20 ["CompleteTodoItemsTool"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K5 [require]
       87 GETIMPORT                        R14 K1 [script]
       89 GETTABLEKS                       R14 R14 K21 ["CreateSkillTool"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETIMPORT                        R15 K1 [script]
       96 GETTABLEKS                       R15 R15 K22 ["CreatorStoreInsertTool"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K5 [require]
      101 GETIMPORT                        R16 K1 [script]
      103 GETTABLEKS                       R16 R16 K23 ["CreatorStoreSearchTool"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K5 [require]
      108 GETIMPORT                        R17 K1 [script]
      110 GETTABLEKS                       R17 R17 K24 ["EditSkillTool"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K5 [require]
      115 GETIMPORT                        R18 K1 [script]
      117 GETTABLEKS                       R18 R18 K25 ["ExecuteLuauTool"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K5 [require]
      122 GETIMPORT                        R19 K1 [script]
      124 GETTABLEKS                       R19 R19 K26 ["FileSearchTool"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K5 [require]
      129 GETIMPORT                        R20 K1 [script]
      131 GETTABLEKS                       R20 R20 K27 ["FinalizePlanTool"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K5 [require]
      136 GETIMPORT                        R21 K1 [script]
      138 GETTABLEKS                       R21 R21 K28 ["FromHistoryTool"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K5 [require]
      143 GETIMPORT                        R22 K1 [script]
      145 GETTABLEKS                       R22 R22 K29 ["GameTreeTool"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K5 [require]
      150 GETIMPORT                        R23 K1 [script]
      152 GETTABLEKS                       R23 R23 K30 ["GenerateLayoutTool"]
      154 CALL                             R22 1 1
      155 GETIMPORT                        R23 K5 [require]
      157 GETIMPORT                        R24 K1 [script]
      159 GETTABLEKS                       R24 R24 K31 ["GetConsoleOutputTool"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K5 [require]
      164 GETIMPORT                        R25 K1 [script]
      166 GETTABLEKS                       R25 R25 K32 ["GetStudioStateTool"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K5 [require]
      171 GETIMPORT                        R26 K1 [script]
      173 GETTABLEKS                       R26 R26 K33 ["GrepSearchTool"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K5 [require]
      178 GETIMPORT                        R27 K1 [script]
      180 GETTABLEKS                       R27 R27 K34 ["HttpGetTool"]
      182 CALL                             R26 1 1
      183 GETIMPORT                        R27 K5 [require]
      185 GETIMPORT                        R28 K1 [script]
      187 GETTABLEKS                       R28 R28 K35 ["InspectInstanceTool"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K5 [require]
      192 GETIMPORT                        R29 K1 [script]
      194 GETTABLEKS                       R29 R29 K36 ["JobRunTool"]
      196 CALL                             R28 1 1
      197 GETIMPORT                        R29 K5 [require]
      199 GETIMPORT                        R30 K1 [script]
      201 GETTABLEKS                       R30 R30 K37 ["JobWaitTool"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K5 [require]
      206 GETIMPORT                        R31 K1 [script]
      208 GETTABLEKS                       R31 R31 K38 ["ListRobloxStudiosTool"]
      210 CALL                             R30 1 1
      211 GETIMPORT                        R31 K5 [require]
      213 GETIMPORT                        R32 K1 [script]
      215 GETTABLEKS                       R32 R32 K39 ["MaterialGenTool"]
      217 CALL                             R31 1 1
      218 GETIMPORT                        R32 K5 [require]
      220 GETIMPORT                        R33 K1 [script]
      222 GETTABLEKS                       R33 R33 K40 ["MeshGenTool"]
      224 CALL                             R32 1 1
      225 GETIMPORT                        R33 K5 [require]
      227 GETIMPORT                        R34 K1 [script]
      229 GETTABLEKS                       R34 R34 K41 ["MultiEditTool"]
      231 CALL                             R33 1 1
      232 GETIMPORT                        R34 K5 [require]
      234 GETIMPORT                        R35 K1 [script]
      236 GETTABLEKS                       R35 R35 K42 ["MultiPlayerAgentsCommunicationTool"]
      238 CALL                             R34 1 1
      239 GETIMPORT                        R35 K5 [require]
      241 GETIMPORT                        R36 K1 [script]
      243 GETTABLEKS                       R36 R36 K43 ["PlaytestLookTool"]
      245 CALL                             R35 1 1
      246 GETIMPORT                        R36 K5 [require]
      248 GETIMPORT                        R37 K1 [script]
      250 GETTABLEKS                       R37 R37 K44 ["PrimitiveGenTool"]
      252 CALL                             R36 1 1
      253 GETIMPORT                        R37 K5 [require]
      255 GETIMPORT                        R38 K1 [script]
      257 GETTABLEKS                       R38 R38 K45 ["QuestionAnswerTool"]
      259 CALL                             R37 1 1
      260 GETIMPORT                        R38 K5 [require]
      262 GETIMPORT                        R39 K1 [script]
      264 GETTABLEKS                       R39 R39 K46 ["ReadFileTool"]
      266 CALL                             R38 1 1
      267 GETIMPORT                        R39 K5 [require]
      269 GETIMPORT                        R40 K1 [script]
      271 GETTABLEKS                       R40 R40 K47 ["ScreenCaptureTool"]
      273 CALL                             R39 1 1
      274 GETIMPORT                        R40 K5 [require]
      276 GETIMPORT                        R41 K1 [script]
      278 GETTABLEKS                       R41 R41 K48 ["SegmentMeshTool"]
      280 CALL                             R40 1 1
      281 GETIMPORT                        R41 K5 [require]
      283 GETIMPORT                        R42 K1 [script]
      285 GETTABLEKS                       R42 R42 K49 ["SkillTool"]
      287 CALL                             R41 1 1
      288 GETIMPORT                        R42 K5 [require]
      290 GETIMPORT                        R43 K1 [script]
      292 GETTABLEKS                       R43 R43 K50 ["StartMultiPlayerAgentsTool"]
      294 CALL                             R42 1 1
      295 GETIMPORT                        R43 K5 [require]
      297 GETIMPORT                        R44 K1 [script]
      299 GETTABLEKS                       R44 R44 K51 ["StartStopPlayTool"]
      301 CALL                             R43 1 1
      302 GETIMPORT                        R44 K5 [require]
      304 GETIMPORT                        R45 K1 [script]
      306 GETTABLEKS                       R45 R45 K52 ["StopMultiPlayerAgentsTool"]
      308 CALL                             R44 1 1
      309 GETIMPORT                        R45 K5 [require]
      311 GETIMPORT                        R46 K1 [script]
      313 GETTABLEKS                       R46 R46 K53 ["StoreImageTool"]
      315 CALL                             R45 1 1
      316 GETIMPORT                        R46 K5 [require]
      318 GETIMPORT                        R47 K1 [script]
      320 GETTABLEKS                       R47 R47 K54 ["SubagentTool"]
      322 CALL                             R46 1 1
      323 GETIMPORT                        R47 K5 [require]
      325 GETIMPORT                        R48 K1 [script]
      327 GETTABLEKS                       R48 R48 K55 ["TextureGenTool"]
      329 CALL                             R47 1 1
      330 GETIMPORT                        R48 K5 [require]
      332 GETIMPORT                        R49 K1 [script]
      334 GETTABLEKS                       R49 R49 K56 ["UploadImageTool"]
      336 CALL                             R48 1 1
      337 GETIMPORT                        R49 K5 [require]
      339 GETIMPORT                        R50 K1 [script]
      341 GETTABLEKS                       R50 R50 K57 ["UserKeyboardInputTool"]
      343 CALL                             R49 1 1
      344 GETIMPORT                        R50 K5 [require]
      346 GETIMPORT                        R51 K1 [script]
      348 GETTABLEKS                       R51 R51 K58 ["UserMouseInputTool"]
      350 CALL                             R50 1 1
      351 GETIMPORT                        R51 K5 [require]
      353 GETIMPORT                        R52 K1 [script]
      355 GETTABLEKS                       R52 R52 K59 ["VideoCaptureTool"]
      357 CALL                             R51 1 1
      358 GETIMPORT                        R52 K5 [require]
      360 GETIMPORT                        R53 K1 [script]
      362 GETTABLEKS                       R53 R53 K60 ["WaitForMultiPlayerAgentsCommunicationTool"]
      364 CALL                             R52 1 1
      365 GETTABLEKS                       R53 R5 K61 ["getRuntimeForMeta"]
      367 GETTABLEKS                       R54 R6 K62 ["ToolNames"]
      369 NEWTABLE                         R55 32 0
      371 GETTABLEKS                       R56 R54 K63 ["CharacterNavigation"]
      373 SETTABLE                         R11 R55 R56
      374 GETTABLEKS                       R56 R54 K64 ["CompleteTodoItems"]
      376 SETTABLE                         R12 R55 R56
      377 GETTABLEKS                       R56 R54 K65 ["CreateSkill"]
      379 SETTABLE                         R13 R55 R56
      380 GETTABLEKS                       R56 R54 K66 ["EditSkill"]
      382 SETTABLE                         R16 R55 R56
      383 GETTABLEKS                       R56 R54 K67 ["ExecuteLuau"]
      385 SETTABLE                         R17 R55 R56
      386 GETTABLEKS                       R56 R54 K68 ["FileSearch"]
      388 SETTABLE                         R18 R55 R56
      389 GETTABLEKS                       R56 R54 K69 ["FinalizePlan"]
      391 SETTABLE                         R19 R55 R56
      392 GETTABLEKS                       R56 R54 K70 ["FromHistory"]
      394 SETTABLE                         R20 R55 R56
      395 GETTABLEKS                       R56 R54 K71 ["GameTree"]
      397 SETTABLE                         R21 R55 R56
      398 GETTABLEKS                       R56 R54 K72 ["GetConsoleOutput"]
      400 SETTABLE                         R23 R55 R56
      401 GETTABLEKS                       R56 R54 K73 ["GetStudioState"]
      403 SETTABLE                         R24 R55 R56
      404 GETTABLEKS                       R56 R54 K74 ["GrepSearch"]
      406 SETTABLE                         R25 R55 R56
      407 GETTABLEKS                       R56 R54 K75 ["HttpGet"]
      409 SETTABLE                         R26 R55 R56
      410 GETTABLEKS                       R56 R54 K76 ["InspectInstance"]
      412 SETTABLE                         R27 R55 R56
      413 GETTABLEKS                       R56 R54 K77 ["JobWait"]
      415 SETTABLE                         R29 R55 R56
      416 GETTABLEKS                       R56 R54 K78 ["MaterialGen"]
      418 SETTABLE                         R31 R55 R56
      419 GETTABLEKS                       R56 R54 K79 ["MeshGen"]
      421 SETTABLE                         R32 R55 R56
      422 GETTABLEKS                       R56 R54 K80 ["MultiEdit"]
      424 SETTABLE                         R33 R55 R56
      425 GETTABLEKS                       R56 R54 K81 ["PrimitiveGen"]
      427 SETTABLE                         R36 R55 R56
      428 GETTABLEKS                       R56 R54 K82 ["QuestionAnswer"]
      430 SETTABLE                         R37 R55 R56
      431 GETTABLEKS                       R56 R54 K83 ["ReadFile"]
      433 SETTABLE                         R38 R55 R56
      434 GETTABLEKS                       R56 R54 K84 ["ScreenCapture"]
      436 SETTABLE                         R39 R55 R56
      437 GETTABLEKS                       R56 R54 K85 ["Skill"]
      439 SETTABLE                         R41 R55 R56
      440 GETTABLEKS                       R56 R54 K86 ["StartStopPlay"]
      442 SETTABLE                         R43 R55 R56
      443 GETTABLEKS                       R56 R54 K87 ["StoreImage"]
      445 SETTABLE                         R45 R55 R56
      446 GETTABLEKS                       R56 R54 K88 ["Subagent"]
      448 SETTABLE                         R46 R55 R56
      449 GETTABLEKS                       R56 R54 K89 ["UploadImage"]
      451 SETTABLE                         R48 R55 R56
      452 GETTABLEKS                       R56 R54 K90 ["UserKeyboardInput"]
      454 SETTABLE                         R49 R55 R56
      455 GETTABLEKS                       R56 R54 K91 ["UserMouseInput"]
      457 SETTABLE                         R50 R55 R56
      458 GETTABLEKS                       R56 R4 K92 ["FFlagAssistantAskInputTool"]
      460 JUMPIFNOT                        R56 ; [+3]
      461 GETTABLEKS                       R56 R54 K93 ["AskInput"]
      463 SETTABLE                         R9 R55 R56
      464 GETTABLEKS                       R56 R4 K94 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
      466 JUMPIF                           R56 ; [+3]
      467 GETTABLEKS                       R56 R54 K95 ["JobRun"]
      469 SETTABLE                         R28 R55 R56
      470 GETTABLEKS                       R56 R4 K96 ["FFlagAssistantAssetSearchInsertTool"]
      472 JUMPIF                           R56 ; [+3]
      473 GETTABLEKS                       R56 R4 K97 ["FFlagAssistantAssetSearchInsertToolABTest"]
      475 JUMPIFNOT                        R56 ; [+20]
      476 GETTABLEKS                       R56 R54 K98 ["AssetInsert"]
      478 GETIMPORT                        R57 K5 [require]
      480 GETIMPORT                        R58 K1 [script]
      482 GETTABLEKS                       R58 R58 K99 ["AssetInsertTool"]
      484 CALL                             R57 1 1
      485 SETTABLE                         R57 R55 R56
      486 GETTABLEKS                       R56 R54 K100 ["AssetSearch"]
      488 GETIMPORT                        R57 K5 [require]
      490 GETIMPORT                        R58 K1 [script]
      492 GETTABLEKS                       R58 R58 K101 ["AssetSearchTool"]
      494 CALL                             R57 1 1
      495 SETTABLE                         R57 R55 R56
      496 GETTABLEKS                       R56 R4 K96 ["FFlagAssistantAssetSearchInsertTool"]
      498 JUMPIF                           R56 ; [+6]
      499 GETTABLEKS                       R56 R54 K102 ["CreatorStoreSearch"]
      501 SETTABLE                         R15 R55 R56
      502 GETTABLEKS                       R56 R54 K103 ["CreatorStoreInsert"]
      504 SETTABLE                         R14 R55 R56
      505 GETTABLEKS                       R56 R4 K104 ["FFlagPlaytestVision"]
      507 JUMPIFNOT                        R56 ; [+3]
      508 GETTABLEKS                       R56 R54 K105 ["PlaytestLook"]
      510 SETTABLE                         R35 R55 R56
      511 GETTABLEKS                       R56 R4 K106 ["FFlagAssistantMultiPlayerAgents"]
      513 JUMPIFNOT                        R56 ; [+12]
      514 GETTABLEKS                       R56 R54 K107 ["StartMultiPlayerAgents"]
      516 SETTABLE                         R42 R55 R56
      517 GETTABLEKS                       R56 R54 K108 ["StopMultiPlayerAgents"]
      519 SETTABLE                         R44 R55 R56
      520 GETTABLEKS                       R56 R54 K109 ["MultiPlayerAgentsCommunication"]
      522 SETTABLE                         R34 R55 R56
      523 GETTABLEKS                       R56 R54 K110 ["WaitForMultiPlayerAgentsCommunication"]
      525 SETTABLE                         R52 R55 R56
      526 GETTABLEKS                       R56 R4 K111 ["FFlagAssistantVideoCaptureTool"]
      528 JUMPIFNOT                        R56 ; [+3]
      529 GETTABLEKS                       R56 R54 K112 ["VideoCapture"]
      531 SETTABLE                         R51 R55 R56
      532 GETTABLEKS                       R56 R4 K113 ["FFlagAssistantAnimationGenTool"]
      534 JUMPIFNOT                        R56 ; [+3]
      535 GETTABLEKS                       R56 R54 K114 ["AnimationGen"]
      537 SETTABLE                         R8 R55 R56
      538 GETTABLEKS                       R56 R4 K115 ["FFlagAssistantAvatarAutoSetupTool"]
      540 JUMPIFNOT                        R56 ; [+3]
      541 GETTABLEKS                       R56 R54 K116 ["AvatarAutoSetup"]
      543 SETTABLE                         R10 R55 R56
      544 GETTABLEKS                       R56 R4 K117 ["FFlagAssistantMarkdownPlanMode"]
      546 JUMPIFNOT                        R56 ; [+10]
      547 GETTABLEKS                       R56 R54 K118 ["UpdatePlan"]
      549 GETIMPORT                        R57 K5 [require]
      551 GETIMPORT                        R58 K1 [script]
      553 GETTABLEKS                       R58 R58 K119 ["UpdatePlanTool"]
      555 CALL                             R57 1 1
      556 SETTABLE                         R57 R55 R56
      557 GETTABLEKS                       R56 R4 K120 ["FFlagAssistantSegmentMeshTool"]
      559 JUMPIFNOT                        R56 ; [+3]
      560 GETTABLEKS                       R56 R54 K121 ["SegmentMesh"]
      562 SETTABLE                         R40 R55 R56
      563 GETTABLEKS                       R56 R4 K122 ["FFlagAssistantGenerateLayoutTool"]
      565 JUMPIFNOT                        R56 ; [+3]
      566 GETTABLEKS                       R56 R54 K123 ["GenerateLayout"]
      568 SETTABLE                         R22 R55 R56
      569 GETTABLEKS                       R56 R4 K124 ["FFlagAssistantTextureGenTool"]
      571 JUMPIFNOT                        R56 ; [+3]
      572 GETTABLEKS                       R56 R54 K125 ["TextureGen"]
      574 SETTABLE                         R47 R55 R56
      575 GETTABLEKS                       R56 R4 K126 ["FFlagUseStudioSideListTool"]
      577 JUMPIFNOT                        R56 ; [+3]
      578 GETTABLEKS                       R56 R54 K127 ["ListRobloxStudios"]
      580 SETTABLE                         R30 R55 R56
      581 DUPCLOSURE                       R56 K128 [PROTO_0]
      582 CAPTURE                          VAL R3
      583 CAPTURE                          VAL R53
      584 DUPCLOSURE                       R57 K129 [PROTO_1]
      585 CAPTURE                          VAL R7
      586 DUPTABLE                         R58 K133 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      587 SETTABLEKS                       R6 R58 K13 ["ToolTypes"]
      589 SETTABLEKS                       R55 R58 K130 ["BuiltinTools"]
      591 SETTABLEKS                       R56 R58 K131 ["createTools"]
      593 SETTABLEKS                       R57 R58 K132 ["registerTools"]
      595 RETURN                           R58 1
