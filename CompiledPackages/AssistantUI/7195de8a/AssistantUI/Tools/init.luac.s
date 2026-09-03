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
      152 GETTABLEKS                       R23 R23 K30 ["GetConsoleOutputTool"]
      154 CALL                             R22 1 1
      155 GETIMPORT                        R23 K5 [require]
      157 GETIMPORT                        R24 K1 [script]
      159 GETTABLEKS                       R24 R24 K31 ["GetStudioStateTool"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K5 [require]
      164 GETIMPORT                        R25 K1 [script]
      166 GETTABLEKS                       R25 R25 K32 ["GrepSearchTool"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K5 [require]
      171 GETIMPORT                        R26 K1 [script]
      173 GETTABLEKS                       R26 R26 K33 ["HttpGetTool"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K5 [require]
      178 GETIMPORT                        R27 K1 [script]
      180 GETTABLEKS                       R27 R27 K34 ["InspectInstanceTool"]
      182 CALL                             R26 1 1
      183 GETIMPORT                        R27 K5 [require]
      185 GETIMPORT                        R28 K1 [script]
      187 GETTABLEKS                       R28 R28 K35 ["JobRunTool"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K5 [require]
      192 GETIMPORT                        R29 K1 [script]
      194 GETTABLEKS                       R29 R29 K36 ["JobWaitTool"]
      196 CALL                             R28 1 1
      197 GETIMPORT                        R29 K5 [require]
      199 GETIMPORT                        R30 K1 [script]
      201 GETTABLEKS                       R30 R30 K37 ["ListRobloxStudiosTool"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K5 [require]
      206 GETIMPORT                        R31 K1 [script]
      208 GETTABLEKS                       R31 R31 K38 ["MaterialGenTool"]
      210 CALL                             R30 1 1
      211 GETIMPORT                        R31 K5 [require]
      213 GETIMPORT                        R32 K1 [script]
      215 GETTABLEKS                       R32 R32 K39 ["MeshGenTool"]
      217 CALL                             R31 1 1
      218 GETIMPORT                        R32 K5 [require]
      220 GETIMPORT                        R33 K1 [script]
      222 GETTABLEKS                       R33 R33 K40 ["MultiEditTool"]
      224 CALL                             R32 1 1
      225 GETIMPORT                        R33 K5 [require]
      227 GETIMPORT                        R34 K1 [script]
      229 GETTABLEKS                       R34 R34 K41 ["MultiPlayerAgentsCommunicationTool"]
      231 CALL                             R33 1 1
      232 GETIMPORT                        R34 K5 [require]
      234 GETIMPORT                        R35 K1 [script]
      236 GETTABLEKS                       R35 R35 K42 ["PlaytestLookTool"]
      238 CALL                             R34 1 1
      239 GETIMPORT                        R35 K5 [require]
      241 GETIMPORT                        R36 K1 [script]
      243 GETTABLEKS                       R36 R36 K43 ["PrimitiveGenTool"]
      245 CALL                             R35 1 1
      246 GETIMPORT                        R36 K5 [require]
      248 GETIMPORT                        R37 K1 [script]
      250 GETTABLEKS                       R37 R37 K44 ["QuestionAnswerTool"]
      252 CALL                             R36 1 1
      253 GETIMPORT                        R37 K5 [require]
      255 GETIMPORT                        R38 K1 [script]
      257 GETTABLEKS                       R38 R38 K45 ["ReadFileTool"]
      259 CALL                             R37 1 1
      260 GETIMPORT                        R38 K5 [require]
      262 GETIMPORT                        R39 K1 [script]
      264 GETTABLEKS                       R39 R39 K46 ["ScreenCaptureTool"]
      266 CALL                             R38 1 1
      267 GETIMPORT                        R39 K5 [require]
      269 GETIMPORT                        R40 K1 [script]
      271 GETTABLEKS                       R40 R40 K47 ["SegmentMeshTool"]
      273 CALL                             R39 1 1
      274 GETIMPORT                        R40 K5 [require]
      276 GETIMPORT                        R41 K1 [script]
      278 GETTABLEKS                       R41 R41 K48 ["SkillTool"]
      280 CALL                             R40 1 1
      281 GETIMPORT                        R41 K5 [require]
      283 GETIMPORT                        R42 K1 [script]
      285 GETTABLEKS                       R42 R42 K49 ["StartMultiPlayerAgentsTool"]
      287 CALL                             R41 1 1
      288 GETIMPORT                        R42 K5 [require]
      290 GETIMPORT                        R43 K1 [script]
      292 GETTABLEKS                       R43 R43 K50 ["StartStopPlayTool"]
      294 CALL                             R42 1 1
      295 GETIMPORT                        R43 K5 [require]
      297 GETIMPORT                        R44 K1 [script]
      299 GETTABLEKS                       R44 R44 K51 ["StopMultiPlayerAgentsTool"]
      301 CALL                             R43 1 1
      302 GETIMPORT                        R44 K5 [require]
      304 GETIMPORT                        R45 K1 [script]
      306 GETTABLEKS                       R45 R45 K52 ["StoreImageTool"]
      308 CALL                             R44 1 1
      309 GETIMPORT                        R45 K5 [require]
      311 GETIMPORT                        R46 K1 [script]
      313 GETTABLEKS                       R46 R46 K53 ["SubagentTool"]
      315 CALL                             R45 1 1
      316 GETIMPORT                        R46 K5 [require]
      318 GETIMPORT                        R47 K1 [script]
      320 GETTABLEKS                       R47 R47 K54 ["TextureGenTool"]
      322 CALL                             R46 1 1
      323 GETIMPORT                        R47 K5 [require]
      325 GETIMPORT                        R48 K1 [script]
      327 GETTABLEKS                       R48 R48 K55 ["UploadImageTool"]
      329 CALL                             R47 1 1
      330 GETIMPORT                        R48 K5 [require]
      332 GETIMPORT                        R49 K1 [script]
      334 GETTABLEKS                       R49 R49 K56 ["UserKeyboardInputTool"]
      336 CALL                             R48 1 1
      337 GETIMPORT                        R49 K5 [require]
      339 GETIMPORT                        R50 K1 [script]
      341 GETTABLEKS                       R50 R50 K57 ["UserMouseInputTool"]
      343 CALL                             R49 1 1
      344 GETIMPORT                        R50 K5 [require]
      346 GETIMPORT                        R51 K1 [script]
      348 GETTABLEKS                       R51 R51 K58 ["VideoCaptureTool"]
      350 CALL                             R50 1 1
      351 GETIMPORT                        R51 K5 [require]
      353 GETIMPORT                        R52 K1 [script]
      355 GETTABLEKS                       R52 R52 K59 ["WaitForMultiPlayerAgentsCommunicationTool"]
      357 CALL                             R51 1 1
      358 GETTABLEKS                       R52 R5 K60 ["getRuntimeForMeta"]
      360 GETTABLEKS                       R53 R6 K61 ["ToolNames"]
      362 NEWTABLE                         R54 32 0
      364 GETTABLEKS                       R55 R53 K62 ["CharacterNavigation"]
      366 SETTABLE                         R11 R54 R55
      367 GETTABLEKS                       R55 R53 K63 ["CompleteTodoItems"]
      369 SETTABLE                         R12 R54 R55
      370 GETTABLEKS                       R55 R53 K64 ["CreateSkill"]
      372 SETTABLE                         R13 R54 R55
      373 GETTABLEKS                       R55 R53 K65 ["EditSkill"]
      375 SETTABLE                         R16 R54 R55
      376 GETTABLEKS                       R55 R53 K66 ["ExecuteLuau"]
      378 SETTABLE                         R17 R54 R55
      379 GETTABLEKS                       R55 R53 K67 ["FileSearch"]
      381 SETTABLE                         R18 R54 R55
      382 GETTABLEKS                       R55 R53 K68 ["FinalizePlan"]
      384 SETTABLE                         R19 R54 R55
      385 GETTABLEKS                       R55 R53 K69 ["FromHistory"]
      387 SETTABLE                         R20 R54 R55
      388 GETTABLEKS                       R55 R53 K70 ["GameTree"]
      390 SETTABLE                         R21 R54 R55
      391 GETTABLEKS                       R55 R53 K71 ["GetConsoleOutput"]
      393 SETTABLE                         R22 R54 R55
      394 GETTABLEKS                       R55 R53 K72 ["GetStudioState"]
      396 SETTABLE                         R23 R54 R55
      397 GETTABLEKS                       R55 R53 K73 ["GrepSearch"]
      399 SETTABLE                         R24 R54 R55
      400 GETTABLEKS                       R55 R53 K74 ["HttpGet"]
      402 SETTABLE                         R25 R54 R55
      403 GETTABLEKS                       R55 R53 K75 ["InspectInstance"]
      405 SETTABLE                         R26 R54 R55
      406 GETTABLEKS                       R55 R53 K76 ["JobRun"]
      408 SETTABLE                         R27 R54 R55
      409 GETTABLEKS                       R55 R53 K77 ["JobWait"]
      411 SETTABLE                         R28 R54 R55
      412 GETTABLEKS                       R55 R53 K78 ["MaterialGen"]
      414 SETTABLE                         R30 R54 R55
      415 GETTABLEKS                       R55 R53 K79 ["MeshGen"]
      417 SETTABLE                         R31 R54 R55
      418 GETTABLEKS                       R55 R53 K80 ["MultiEdit"]
      420 SETTABLE                         R32 R54 R55
      421 GETTABLEKS                       R55 R53 K81 ["PrimitiveGen"]
      423 SETTABLE                         R35 R54 R55
      424 GETTABLEKS                       R55 R53 K82 ["QuestionAnswer"]
      426 SETTABLE                         R36 R54 R55
      427 GETTABLEKS                       R55 R53 K83 ["ReadFile"]
      429 SETTABLE                         R37 R54 R55
      430 GETTABLEKS                       R55 R53 K84 ["ScreenCapture"]
      432 SETTABLE                         R38 R54 R55
      433 GETTABLEKS                       R55 R53 K85 ["Skill"]
      435 SETTABLE                         R40 R54 R55
      436 GETTABLEKS                       R55 R53 K86 ["StartStopPlay"]
      438 SETTABLE                         R42 R54 R55
      439 GETTABLEKS                       R55 R53 K87 ["StoreImage"]
      441 SETTABLE                         R44 R54 R55
      442 GETTABLEKS                       R55 R53 K88 ["Subagent"]
      444 SETTABLE                         R45 R54 R55
      445 GETTABLEKS                       R55 R53 K89 ["UploadImage"]
      447 SETTABLE                         R47 R54 R55
      448 GETTABLEKS                       R55 R53 K90 ["UserKeyboardInput"]
      450 SETTABLE                         R48 R54 R55
      451 GETTABLEKS                       R55 R53 K91 ["UserMouseInput"]
      453 SETTABLE                         R49 R54 R55
      454 GETTABLEKS                       R55 R4 K92 ["FFlagAssistantAskInputTool"]
      456 JUMPIFNOT                        R55 ; [+3]
      457 GETTABLEKS                       R55 R53 K93 ["AskInput"]
      459 SETTABLE                         R9 R54 R55
      460 GETTABLEKS                       R55 R4 K94 ["FFlagAssistantAssetSearchInsertTool"]
      462 JUMPIF                           R55 ; [+3]
      463 GETTABLEKS                       R55 R4 K95 ["FFlagAssistantAssetSearchInsertToolABTest"]
      465 JUMPIFNOT                        R55 ; [+20]
      466 GETTABLEKS                       R55 R53 K96 ["AssetInsert"]
      468 GETIMPORT                        R56 K5 [require]
      470 GETIMPORT                        R57 K1 [script]
      472 GETTABLEKS                       R57 R57 K97 ["AssetInsertTool"]
      474 CALL                             R56 1 1
      475 SETTABLE                         R56 R54 R55
      476 GETTABLEKS                       R55 R53 K98 ["AssetSearch"]
      478 GETIMPORT                        R56 K5 [require]
      480 GETIMPORT                        R57 K1 [script]
      482 GETTABLEKS                       R57 R57 K99 ["AssetSearchTool"]
      484 CALL                             R56 1 1
      485 SETTABLE                         R56 R54 R55
      486 GETTABLEKS                       R55 R4 K94 ["FFlagAssistantAssetSearchInsertTool"]
      488 JUMPIF                           R55 ; [+6]
      489 GETTABLEKS                       R55 R53 K100 ["CreatorStoreSearch"]
      491 SETTABLE                         R15 R54 R55
      492 GETTABLEKS                       R55 R53 K101 ["CreatorStoreInsert"]
      494 SETTABLE                         R14 R54 R55
      495 GETTABLEKS                       R55 R4 K102 ["FFlagPlaytestVision"]
      497 JUMPIFNOT                        R55 ; [+3]
      498 GETTABLEKS                       R55 R53 K103 ["PlaytestLook"]
      500 SETTABLE                         R34 R54 R55
      501 GETTABLEKS                       R55 R4 K104 ["FFlagAssistantMultiPlayerAgents"]
      503 JUMPIFNOT                        R55 ; [+12]
      504 GETTABLEKS                       R55 R53 K105 ["StartMultiPlayerAgents"]
      506 SETTABLE                         R41 R54 R55
      507 GETTABLEKS                       R55 R53 K106 ["StopMultiPlayerAgents"]
      509 SETTABLE                         R43 R54 R55
      510 GETTABLEKS                       R55 R53 K107 ["MultiPlayerAgentsCommunication"]
      512 SETTABLE                         R33 R54 R55
      513 GETTABLEKS                       R55 R53 K108 ["WaitForMultiPlayerAgentsCommunication"]
      515 SETTABLE                         R51 R54 R55
      516 GETTABLEKS                       R55 R4 K109 ["FFlagAssistantVideoCaptureTool"]
      518 JUMPIFNOT                        R55 ; [+3]
      519 GETTABLEKS                       R55 R53 K110 ["VideoCapture"]
      521 SETTABLE                         R50 R54 R55
      522 GETTABLEKS                       R55 R4 K111 ["FFlagAssistantAnimationGenTool"]
      524 JUMPIFNOT                        R55 ; [+3]
      525 GETTABLEKS                       R55 R53 K112 ["AnimationGen"]
      527 SETTABLE                         R8 R54 R55
      528 GETTABLEKS                       R55 R4 K113 ["FFlagAssistantAvatarAutoSetupTool"]
      530 JUMPIFNOT                        R55 ; [+3]
      531 GETTABLEKS                       R55 R53 K114 ["AvatarAutoSetup"]
      533 SETTABLE                         R10 R54 R55
      534 GETTABLEKS                       R55 R4 K115 ["FFlagAssistantMarkdownPlanMode"]
      536 JUMPIFNOT                        R55 ; [+10]
      537 GETTABLEKS                       R55 R53 K116 ["UpdatePlan"]
      539 GETIMPORT                        R56 K5 [require]
      541 GETIMPORT                        R57 K1 [script]
      543 GETTABLEKS                       R57 R57 K117 ["UpdatePlanTool"]
      545 CALL                             R56 1 1
      546 SETTABLE                         R56 R54 R55
      547 GETTABLEKS                       R55 R4 K118 ["FFlagAssistantSegmentMeshTool"]
      549 JUMPIFNOT                        R55 ; [+3]
      550 GETTABLEKS                       R55 R53 K119 ["SegmentMesh"]
      552 SETTABLE                         R39 R54 R55
      553 GETTABLEKS                       R55 R4 K120 ["FFlagAssistantTextureGenTool"]
      555 JUMPIFNOT                        R55 ; [+3]
      556 GETTABLEKS                       R55 R53 K121 ["TextureGen"]
      558 SETTABLE                         R46 R54 R55
      559 GETTABLEKS                       R55 R4 K122 ["FFlagUseStudioSideListTool"]
      561 JUMPIFNOT                        R55 ; [+3]
      562 GETTABLEKS                       R55 R53 K123 ["ListRobloxStudios"]
      564 SETTABLE                         R29 R54 R55
      565 DUPCLOSURE                       R55 K124 [PROTO_0]
      566 CAPTURE                          VAL R3
      567 CAPTURE                          VAL R52
      568 DUPCLOSURE                       R56 K125 [PROTO_1]
      569 CAPTURE                          VAL R7
      570 DUPTABLE                         R57 K129 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      571 SETTABLEKS                       R6 R57 K13 ["ToolTypes"]
      573 SETTABLEKS                       R54 R57 K126 ["BuiltinTools"]
      575 SETTABLEKS                       R55 R57 K127 ["createTools"]
      577 SETTABLEKS                       R56 R57 K128 ["registerTools"]
      579 RETURN                           R57 1
