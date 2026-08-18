PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["get"]
        7 CALL                             R2 0 1
        8 NEWTABLE                         R3 0 0
       10 GETTABLEKS                       R4 R0 K1 ["tools"]
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 MOVE                             R9 R8
       16 DUPTABLE                         R10 K7 [{"networking", "environment", "RESTRICTED_externalHooks", "getPersistentPlanRuntime", "bridges"}]
       17 GETTABLEKS                       R11 R0 K2 ["networking"]
       19 SETTABLEKS                       R11 R10 K2 ["networking"]
       21 SETTABLEKS                       R1 R10 K3 ["environment"]
       23 SETTABLEKS                       R2 R10 K4 ["RESTRICTED_externalHooks"]
       25 GETUPVAL                         R11 2
       26 SETTABLEKS                       R11 R10 K5 ["getPersistentPlanRuntime"]
       28 GETTABLEKS                       R11 R0 K6 ["bridges"]
       30 SETTABLEKS                       R11 R10 K6 ["bridges"]
       32 CALL                             R9 1 1
       33 GETTABLE                         R12 R3 R7
       34 NOT                              R11 R12
       35 LOADK                            R13 K8 ["Tool with name %* already exists"]
       36 MOVE                             R15 R7
       37 NAMECALL                         R13 R13 K9 ["format"]
       39 CALL                             R13 2 1
       40 MOVE                             R12 R13
       41 FASTCALL2                        ASSERT R11 R12 ; [+3]
       43 GETIMPORT                        R10 K11 [assert]
       45 CALL                             R10 2 0
       46 SETTABLE                         R9 R3 R7
       47 FORGLOOP                         R4 2 ; [-33]
       49 RETURN                           R3 1

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
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseRemoteService"]
       14 JUMPIFNOT                        R1 ; [+4]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K2 ["registerCloudTools"]
       18 CALL                             R1 0 0
       19 RETURN                           R0 0

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
       14 GETTABLEKS                       R3 R0 K7 ["CloudTools"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["Parent"]
       21 GETTABLEKS                       R4 R4 K9 ["DMNetworking"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K10 ["Guest"]
       28 GETTABLEKS                       R5 R5 K11 ["Environment"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K12 ["Hooks"]
       35 GETTABLEKS                       R6 R6 K13 ["RESTRICTED_ExternalHooks"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K14 ["Flags"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K15 ["PersistentPlanRuntime"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETIMPORT                        R9 K1 [script]
       52 GETTABLEKS                       R9 R9 K16 ["ToolTypes"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R10 R0 K17 ["Components"]
       59 GETTABLEKS                       R10 R10 K18 ["UIToolRegistry"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K5 [require]
       64 GETIMPORT                        R11 K1 [script]
       66 GETTABLEKS                       R11 R11 K19 ["AnimationGenTool"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K5 [require]
       71 GETIMPORT                        R12 K1 [script]
       73 GETTABLEKS                       R12 R12 K20 ["AvatarAutoSetupTool"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K5 [require]
       78 GETIMPORT                        R13 K1 [script]
       80 GETTABLEKS                       R13 R13 K21 ["CharacterNavigationTool"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K5 [require]
       85 GETIMPORT                        R14 K1 [script]
       87 GETTABLEKS                       R14 R14 K22 ["CompleteTodoItemsTool"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K5 [require]
       92 GETIMPORT                        R15 K1 [script]
       94 GETTABLEKS                       R15 R15 K23 ["CreateSkillTool"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K5 [require]
       99 GETIMPORT                        R16 K1 [script]
      101 GETTABLEKS                       R16 R16 K24 ["CreatorStoreInsertTool"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K5 [require]
      106 GETIMPORT                        R17 K1 [script]
      108 GETTABLEKS                       R17 R17 K25 ["CreatorStoreSearchTool"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K5 [require]
      113 GETIMPORT                        R18 K1 [script]
      115 GETTABLEKS                       R18 R18 K26 ["EditSkillTool"]
      117 CALL                             R17 1 1
      118 GETIMPORT                        R18 K5 [require]
      120 GETIMPORT                        R19 K1 [script]
      122 GETTABLEKS                       R19 R19 K27 ["ExecuteLuauTool"]
      124 CALL                             R18 1 1
      125 GETIMPORT                        R19 K5 [require]
      127 GETIMPORT                        R20 K1 [script]
      129 GETTABLEKS                       R20 R20 K28 ["FileSearchTool"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K5 [require]
      134 GETIMPORT                        R21 K1 [script]
      136 GETTABLEKS                       R21 R21 K29 ["FinalizePlanTool"]
      138 CALL                             R20 1 1
      139 GETIMPORT                        R21 K5 [require]
      141 GETIMPORT                        R22 K1 [script]
      143 GETTABLEKS                       R22 R22 K30 ["FromHistoryTool"]
      145 CALL                             R21 1 1
      146 GETIMPORT                        R22 K5 [require]
      148 GETIMPORT                        R23 K1 [script]
      150 GETTABLEKS                       R23 R23 K31 ["GameTreeTool"]
      152 CALL                             R22 1 1
      153 GETIMPORT                        R23 K5 [require]
      155 GETIMPORT                        R24 K1 [script]
      157 GETTABLEKS                       R24 R24 K32 ["GetConsoleOutputTool"]
      159 CALL                             R23 1 1
      160 GETIMPORT                        R24 K5 [require]
      162 GETIMPORT                        R25 K1 [script]
      164 GETTABLEKS                       R25 R25 K33 ["GetStudioStateTool"]
      166 CALL                             R24 1 1
      167 GETIMPORT                        R25 K5 [require]
      169 GETIMPORT                        R26 K1 [script]
      171 GETTABLEKS                       R26 R26 K34 ["GrepSearchTool"]
      173 CALL                             R25 1 1
      174 GETIMPORT                        R26 K5 [require]
      176 GETIMPORT                        R27 K1 [script]
      178 GETTABLEKS                       R27 R27 K35 ["HttpGetTool"]
      180 CALL                             R26 1 1
      181 GETIMPORT                        R27 K5 [require]
      183 GETIMPORT                        R28 K1 [script]
      185 GETTABLEKS                       R28 R28 K36 ["InspectInstanceTool"]
      187 CALL                             R27 1 1
      188 GETIMPORT                        R28 K5 [require]
      190 GETIMPORT                        R29 K1 [script]
      192 GETTABLEKS                       R29 R29 K37 ["JobRunTool"]
      194 CALL                             R28 1 1
      195 GETIMPORT                        R29 K5 [require]
      197 GETIMPORT                        R30 K1 [script]
      199 GETTABLEKS                       R30 R30 K38 ["JobWaitTool"]
      201 CALL                             R29 1 1
      202 GETIMPORT                        R30 K5 [require]
      204 GETIMPORT                        R31 K1 [script]
      206 GETTABLEKS                       R31 R31 K39 ["ListRobloxStudiosTool"]
      208 CALL                             R30 1 1
      209 GETIMPORT                        R31 K5 [require]
      211 GETIMPORT                        R32 K1 [script]
      213 GETTABLEKS                       R32 R32 K40 ["MaterialGenTool"]
      215 CALL                             R31 1 1
      216 GETIMPORT                        R32 K5 [require]
      218 GETIMPORT                        R33 K1 [script]
      220 GETTABLEKS                       R33 R33 K41 ["MeshGenTool"]
      222 CALL                             R32 1 1
      223 GETIMPORT                        R33 K5 [require]
      225 GETIMPORT                        R34 K1 [script]
      227 GETTABLEKS                       R34 R34 K42 ["MultiEditTool"]
      229 CALL                             R33 1 1
      230 GETIMPORT                        R34 K5 [require]
      232 GETIMPORT                        R35 K1 [script]
      234 GETTABLEKS                       R35 R35 K43 ["MultiPlayerAgentsCommunicationTool"]
      236 CALL                             R34 1 1
      237 GETIMPORT                        R35 K5 [require]
      239 GETIMPORT                        R36 K1 [script]
      241 GETTABLEKS                       R36 R36 K44 ["PlaytestLookTool"]
      243 CALL                             R35 1 1
      244 GETIMPORT                        R36 K5 [require]
      246 GETIMPORT                        R37 K1 [script]
      248 GETTABLEKS                       R37 R37 K45 ["PrimitiveGenTool"]
      250 CALL                             R36 1 1
      251 GETIMPORT                        R37 K5 [require]
      253 GETIMPORT                        R38 K1 [script]
      255 GETTABLEKS                       R38 R38 K46 ["QuestionAnswerTool"]
      257 CALL                             R37 1 1
      258 GETIMPORT                        R38 K5 [require]
      260 GETIMPORT                        R39 K1 [script]
      262 GETTABLEKS                       R39 R39 K47 ["ReadFileTool"]
      264 CALL                             R38 1 1
      265 GETIMPORT                        R39 K5 [require]
      267 GETIMPORT                        R40 K1 [script]
      269 GETTABLEKS                       R40 R40 K48 ["ScreenCaptureTool"]
      271 CALL                             R39 1 1
      272 GETIMPORT                        R40 K5 [require]
      274 GETIMPORT                        R41 K1 [script]
      276 GETTABLEKS                       R41 R41 K49 ["SkillTool"]
      278 CALL                             R40 1 1
      279 GETIMPORT                        R41 K5 [require]
      281 GETIMPORT                        R42 K1 [script]
      283 GETTABLEKS                       R42 R42 K50 ["StartMultiPlayerAgentsTool"]
      285 CALL                             R41 1 1
      286 GETIMPORT                        R42 K5 [require]
      288 GETIMPORT                        R43 K1 [script]
      290 GETTABLEKS                       R43 R43 K51 ["StartStopPlayTool"]
      292 CALL                             R42 1 1
      293 GETIMPORT                        R43 K5 [require]
      295 GETIMPORT                        R44 K1 [script]
      297 GETTABLEKS                       R44 R44 K52 ["StopMultiPlayerAgentsTool"]
      299 CALL                             R43 1 1
      300 GETIMPORT                        R44 K5 [require]
      302 GETIMPORT                        R45 K1 [script]
      304 GETTABLEKS                       R45 R45 K53 ["StoreImageTool"]
      306 CALL                             R44 1 1
      307 GETIMPORT                        R45 K5 [require]
      309 GETIMPORT                        R46 K1 [script]
      311 GETTABLEKS                       R46 R46 K54 ["SubagentTool"]
      313 CALL                             R45 1 1
      314 GETIMPORT                        R46 K5 [require]
      316 GETIMPORT                        R47 K1 [script]
      318 GETTABLEKS                       R47 R47 K55 ["UploadImageTool"]
      320 CALL                             R46 1 1
      321 GETIMPORT                        R47 K5 [require]
      323 GETIMPORT                        R48 K1 [script]
      325 GETTABLEKS                       R48 R48 K56 ["UserKeyboardInputTool"]
      327 CALL                             R47 1 1
      328 GETIMPORT                        R48 K5 [require]
      330 GETIMPORT                        R49 K1 [script]
      332 GETTABLEKS                       R49 R49 K57 ["UserMouseInputTool"]
      334 CALL                             R48 1 1
      335 GETIMPORT                        R49 K5 [require]
      337 GETIMPORT                        R50 K1 [script]
      339 GETTABLEKS                       R50 R50 K58 ["VideoCaptureTool"]
      341 CALL                             R49 1 1
      342 GETIMPORT                        R50 K5 [require]
      344 GETIMPORT                        R51 K1 [script]
      346 GETTABLEKS                       R51 R51 K59 ["WaitForMultiPlayerAgentsCommunicationTool"]
      348 CALL                             R50 1 1
      349 GETTABLEKS                       R51 R7 K60 ["getRuntimeForMeta"]
      351 GETTABLEKS                       R52 R8 K61 ["ToolNames"]
      353 NEWTABLE                         R53 32 0
      355 GETTABLEKS                       R54 R52 K62 ["CharacterNavigation"]
      357 SETTABLE                         R12 R53 R54
      358 GETTABLEKS                       R54 R52 K63 ["CompleteTodoItems"]
      360 SETTABLE                         R13 R53 R54
      361 GETTABLEKS                       R54 R52 K64 ["CreateSkill"]
      363 SETTABLE                         R14 R53 R54
      364 GETTABLEKS                       R54 R52 K65 ["EditSkill"]
      366 SETTABLE                         R17 R53 R54
      367 GETTABLEKS                       R54 R52 K66 ["ExecuteLuau"]
      369 SETTABLE                         R18 R53 R54
      370 GETTABLEKS                       R54 R52 K67 ["FileSearch"]
      372 SETTABLE                         R19 R53 R54
      373 GETTABLEKS                       R54 R52 K68 ["FinalizePlan"]
      375 SETTABLE                         R20 R53 R54
      376 GETTABLEKS                       R54 R52 K69 ["FromHistory"]
      378 SETTABLE                         R21 R53 R54
      379 GETTABLEKS                       R54 R52 K70 ["GameTree"]
      381 SETTABLE                         R22 R53 R54
      382 GETTABLEKS                       R54 R52 K71 ["GetConsoleOutput"]
      384 SETTABLE                         R23 R53 R54
      385 GETTABLEKS                       R54 R52 K72 ["GrepSearch"]
      387 SETTABLE                         R25 R53 R54
      388 GETTABLEKS                       R54 R52 K73 ["HttpGet"]
      390 SETTABLE                         R26 R53 R54
      391 GETTABLEKS                       R54 R52 K74 ["InspectInstance"]
      393 SETTABLE                         R27 R53 R54
      394 GETTABLEKS                       R54 R52 K75 ["JobWait"]
      396 SETTABLE                         R29 R53 R54
      397 GETTABLEKS                       R54 R52 K76 ["MaterialGen"]
      399 SETTABLE                         R31 R53 R54
      400 GETTABLEKS                       R54 R52 K77 ["MeshGen"]
      402 SETTABLE                         R32 R53 R54
      403 GETTABLEKS                       R54 R52 K78 ["MultiEdit"]
      405 SETTABLE                         R33 R53 R54
      406 GETTABLEKS                       R54 R52 K79 ["PrimitiveGen"]
      408 SETTABLE                         R36 R53 R54
      409 GETTABLEKS                       R54 R52 K80 ["QuestionAnswer"]
      411 SETTABLE                         R37 R53 R54
      412 GETTABLEKS                       R54 R52 K81 ["ReadFile"]
      414 SETTABLE                         R38 R53 R54
      415 GETTABLEKS                       R54 R52 K82 ["ScreenCapture"]
      417 SETTABLE                         R39 R53 R54
      418 GETTABLEKS                       R54 R52 K83 ["Skill"]
      420 SETTABLE                         R40 R53 R54
      421 GETTABLEKS                       R54 R52 K84 ["StartStopPlay"]
      423 SETTABLE                         R42 R53 R54
      424 GETTABLEKS                       R54 R52 K85 ["StoreImage"]
      426 SETTABLE                         R44 R53 R54
      427 GETTABLEKS                       R54 R52 K86 ["Subagent"]
      429 SETTABLE                         R45 R53 R54
      430 GETTABLEKS                       R54 R52 K87 ["UploadImage"]
      432 SETTABLE                         R46 R53 R54
      433 GETTABLEKS                       R54 R52 K88 ["UserKeyboardInput"]
      435 SETTABLE                         R47 R53 R54
      436 GETTABLEKS                       R54 R52 K89 ["UserMouseInput"]
      438 SETTABLE                         R48 R53 R54
      439 GETTABLEKS                       R54 R6 K90 ["FFlagAssistantAssetSearchInsertTool"]
      441 JUMPIF                           R54 ; [+3]
      442 GETTABLEKS                       R54 R6 K91 ["FFlagAssistantAssetSearchInsertToolABTest"]
      444 JUMPIFNOT                        R54 ; [+20]
      445 GETTABLEKS                       R54 R52 K92 ["AssetInsert"]
      447 GETIMPORT                        R55 K5 [require]
      449 GETIMPORT                        R56 K1 [script]
      451 GETTABLEKS                       R56 R56 K93 ["AssetInsertTool"]
      453 CALL                             R55 1 1
      454 SETTABLE                         R55 R53 R54
      455 GETTABLEKS                       R54 R52 K94 ["AssetSearch"]
      457 GETIMPORT                        R55 K5 [require]
      459 GETIMPORT                        R56 K1 [script]
      461 GETTABLEKS                       R56 R56 K95 ["AssetSearchTool"]
      463 CALL                             R55 1 1
      464 SETTABLE                         R55 R53 R54
      465 GETTABLEKS                       R54 R6 K90 ["FFlagAssistantAssetSearchInsertTool"]
      467 JUMPIF                           R54 ; [+6]
      468 GETTABLEKS                       R54 R52 K96 ["CreatorStoreSearch"]
      470 SETTABLE                         R16 R53 R54
      471 GETTABLEKS                       R54 R52 K97 ["CreatorStoreInsert"]
      473 SETTABLE                         R15 R53 R54
      474 GETTABLEKS                       R54 R6 K98 ["FFlagAssistantGetStudioState"]
      476 JUMPIFNOT                        R54 ; [+3]
      477 GETTABLEKS                       R54 R52 K99 ["GetStudioState"]
      479 SETTABLE                         R24 R53 R54
      480 GETTABLEKS                       R54 R6 K100 ["FFlagPlaytestVision"]
      482 JUMPIFNOT                        R54 ; [+3]
      483 GETTABLEKS                       R54 R52 K101 ["PlaytestLook"]
      485 SETTABLE                         R35 R53 R54
      486 GETTABLEKS                       R54 R6 K102 ["FFlagAssistantMultiPlayerAgents"]
      488 JUMPIFNOT                        R54 ; [+12]
      489 GETTABLEKS                       R54 R52 K103 ["StartMultiPlayerAgents"]
      491 SETTABLE                         R41 R53 R54
      492 GETTABLEKS                       R54 R52 K104 ["StopMultiPlayerAgents"]
      494 SETTABLE                         R43 R53 R54
      495 GETTABLEKS                       R54 R52 K105 ["MultiPlayerAgentsCommunication"]
      497 SETTABLE                         R34 R53 R54
      498 GETTABLEKS                       R54 R52 K106 ["WaitForMultiPlayerAgentsCommunication"]
      500 SETTABLE                         R50 R53 R54
      501 GETTABLEKS                       R54 R6 K107 ["FFlagAssistantVideoCaptureTool"]
      503 JUMPIFNOT                        R54 ; [+3]
      504 GETTABLEKS                       R54 R52 K108 ["VideoCapture"]
      506 SETTABLE                         R49 R53 R54
      507 GETTABLEKS                       R54 R6 K109 ["FFlagAssistantAnimationGenTool"]
      509 JUMPIFNOT                        R54 ; [+3]
      510 GETTABLEKS                       R54 R52 K110 ["AnimationGen"]
      512 SETTABLE                         R10 R53 R54
      513 GETTABLEKS                       R54 R6 K111 ["FFlagAssistantAvatarAutoSetupTool"]
      515 JUMPIFNOT                        R54 ; [+3]
      516 GETTABLEKS                       R54 R52 K112 ["AvatarAutoSetup"]
      518 SETTABLE                         R11 R53 R54
      519 GETTABLEKS                       R54 R6 K113 ["FFlagAssistantMigratePrimitiveGenTool"]
      521 JUMPIFNOT                        R54 ; [+3]
      522 GETTABLEKS                       R54 R52 K114 ["JobRun"]
      524 SETTABLE                         R28 R53 R54
      525 GETTABLEKS                       R54 R6 K115 ["FFlagAssistantMarkdownPlanMode"]
      527 JUMPIFNOT                        R54 ; [+10]
      528 GETTABLEKS                       R54 R52 K116 ["UpdatePlan"]
      530 GETIMPORT                        R55 K5 [require]
      532 GETIMPORT                        R56 K1 [script]
      534 GETTABLEKS                       R56 R56 K117 ["UpdatePlanTool"]
      536 CALL                             R55 1 1
      537 SETTABLE                         R55 R53 R54
      538 GETTABLEKS                       R54 R6 K118 ["FFlagUseStudioSideListTool"]
      540 JUMPIFNOT                        R54 ; [+3]
      541 GETTABLEKS                       R54 R52 K119 ["ListRobloxStudios"]
      543 SETTABLE                         R30 R53 R54
      544 DUPCLOSURE                       R54 K120 [PROTO_0]
      545 CAPTURE                          VAL R4
      546 CAPTURE                          VAL R5
      547 CAPTURE                          VAL R51
      548 DUPCLOSURE                       R55 K121 [PROTO_1]
      549 CAPTURE                          VAL R9
      550 CAPTURE                          VAL R6
      551 CAPTURE                          VAL R2
      552 DUPTABLE                         R56 K125 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      553 SETTABLEKS                       R8 R56 K16 ["ToolTypes"]
      555 SETTABLEKS                       R53 R56 K122 ["BuiltinTools"]
      557 SETTABLEKS                       R54 R56 K123 ["createTools"]
      559 SETTABLEKS                       R55 R56 K124 ["registerTools"]
      561 RETURN                           R56 1
