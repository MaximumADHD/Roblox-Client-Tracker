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
       40 GETTABLEKS                       R7 R0 K14 ["FlagUtils"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K15 ["Flags"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K16 ["PersistentPlanRuntime"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETIMPORT                        R10 K1 [script]
       57 GETTABLEKS                       R10 R10 K17 ["ToolTypes"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K5 [require]
       62 GETTABLEKS                       R11 R0 K18 ["Components"]
       64 GETTABLEKS                       R11 R11 K19 ["UIToolRegistry"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K5 [require]
       69 GETIMPORT                        R12 K1 [script]
       71 GETTABLEKS                       R12 R12 K20 ["AnimationGenTool"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETIMPORT                        R13 K1 [script]
       78 GETTABLEKS                       R13 R13 K21 ["AskInputTool"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K5 [require]
       83 GETIMPORT                        R14 K1 [script]
       85 GETTABLEKS                       R14 R14 K22 ["AvatarAutoSetupTool"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K5 [require]
       90 GETIMPORT                        R15 K1 [script]
       92 GETTABLEKS                       R15 R15 K23 ["CharacterNavigationTool"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K5 [require]
       97 GETIMPORT                        R16 K1 [script]
       99 GETTABLEKS                       R16 R16 K24 ["CompleteTodoItemsTool"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K5 [require]
      104 GETIMPORT                        R17 K1 [script]
      106 GETTABLEKS                       R17 R17 K25 ["CreateSkillTool"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K5 [require]
      111 GETIMPORT                        R18 K1 [script]
      113 GETTABLEKS                       R18 R18 K26 ["CreatorStoreInsertTool"]
      115 CALL                             R17 1 1
      116 GETIMPORT                        R18 K5 [require]
      118 GETIMPORT                        R19 K1 [script]
      120 GETTABLEKS                       R19 R19 K27 ["CreatorStoreSearchTool"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K5 [require]
      125 GETIMPORT                        R20 K1 [script]
      127 GETTABLEKS                       R20 R20 K28 ["EditSkillTool"]
      129 CALL                             R19 1 1
      130 GETIMPORT                        R20 K5 [require]
      132 GETIMPORT                        R21 K1 [script]
      134 GETTABLEKS                       R21 R21 K29 ["ExecuteLuauTool"]
      136 CALL                             R20 1 1
      137 GETIMPORT                        R21 K5 [require]
      139 GETIMPORT                        R22 K1 [script]
      141 GETTABLEKS                       R22 R22 K30 ["FileSearchTool"]
      143 CALL                             R21 1 1
      144 GETIMPORT                        R22 K5 [require]
      146 GETIMPORT                        R23 K1 [script]
      148 GETTABLEKS                       R23 R23 K31 ["FinalizePlanTool"]
      150 CALL                             R22 1 1
      151 GETIMPORT                        R23 K5 [require]
      153 GETIMPORT                        R24 K1 [script]
      155 GETTABLEKS                       R24 R24 K32 ["FromHistoryTool"]
      157 CALL                             R23 1 1
      158 GETIMPORT                        R24 K5 [require]
      160 GETIMPORT                        R25 K1 [script]
      162 GETTABLEKS                       R25 R25 K33 ["GameTreeTool"]
      164 CALL                             R24 1 1
      165 GETIMPORT                        R25 K5 [require]
      167 GETIMPORT                        R26 K1 [script]
      169 GETTABLEKS                       R26 R26 K34 ["GetConsoleOutputTool"]
      171 CALL                             R25 1 1
      172 GETIMPORT                        R26 K5 [require]
      174 GETIMPORT                        R27 K1 [script]
      176 GETTABLEKS                       R27 R27 K35 ["GetStudioStateTool"]
      178 CALL                             R26 1 1
      179 GETIMPORT                        R27 K5 [require]
      181 GETIMPORT                        R28 K1 [script]
      183 GETTABLEKS                       R28 R28 K36 ["GrepSearchTool"]
      185 CALL                             R27 1 1
      186 GETIMPORT                        R28 K5 [require]
      188 GETIMPORT                        R29 K1 [script]
      190 GETTABLEKS                       R29 R29 K37 ["HttpGetTool"]
      192 CALL                             R28 1 1
      193 GETIMPORT                        R29 K5 [require]
      195 GETIMPORT                        R30 K1 [script]
      197 GETTABLEKS                       R30 R30 K38 ["InspectInstanceTool"]
      199 CALL                             R29 1 1
      200 GETIMPORT                        R30 K5 [require]
      202 GETIMPORT                        R31 K1 [script]
      204 GETTABLEKS                       R31 R31 K39 ["JobRunTool"]
      206 CALL                             R30 1 1
      207 GETIMPORT                        R31 K5 [require]
      209 GETIMPORT                        R32 K1 [script]
      211 GETTABLEKS                       R32 R32 K40 ["JobWaitTool"]
      213 CALL                             R31 1 1
      214 GETIMPORT                        R32 K5 [require]
      216 GETIMPORT                        R33 K1 [script]
      218 GETTABLEKS                       R33 R33 K41 ["ListRobloxStudiosTool"]
      220 CALL                             R32 1 1
      221 GETIMPORT                        R33 K5 [require]
      223 GETIMPORT                        R34 K1 [script]
      225 GETTABLEKS                       R34 R34 K42 ["MaterialGenTool"]
      227 CALL                             R33 1 1
      228 GETIMPORT                        R34 K5 [require]
      230 GETIMPORT                        R35 K1 [script]
      232 GETTABLEKS                       R35 R35 K43 ["MeshGenTool"]
      234 CALL                             R34 1 1
      235 GETIMPORT                        R35 K5 [require]
      237 GETIMPORT                        R36 K1 [script]
      239 GETTABLEKS                       R36 R36 K44 ["MultiEditTool"]
      241 CALL                             R35 1 1
      242 GETIMPORT                        R36 K5 [require]
      244 GETIMPORT                        R37 K1 [script]
      246 GETTABLEKS                       R37 R37 K45 ["MultiPlayerAgentsCommunicationTool"]
      248 CALL                             R36 1 1
      249 GETIMPORT                        R37 K5 [require]
      251 GETIMPORT                        R38 K1 [script]
      253 GETTABLEKS                       R38 R38 K46 ["PlaytestLookTool"]
      255 CALL                             R37 1 1
      256 GETIMPORT                        R38 K5 [require]
      258 GETIMPORT                        R39 K1 [script]
      260 GETTABLEKS                       R39 R39 K47 ["PrimitiveGenTool"]
      262 CALL                             R38 1 1
      263 GETIMPORT                        R39 K5 [require]
      265 GETIMPORT                        R40 K1 [script]
      267 GETTABLEKS                       R40 R40 K48 ["QuestionAnswerTool"]
      269 CALL                             R39 1 1
      270 GETIMPORT                        R40 K5 [require]
      272 GETIMPORT                        R41 K1 [script]
      274 GETTABLEKS                       R41 R41 K49 ["ReadFileTool"]
      276 CALL                             R40 1 1
      277 GETIMPORT                        R41 K5 [require]
      279 GETIMPORT                        R42 K1 [script]
      281 GETTABLEKS                       R42 R42 K50 ["ScreenCaptureTool"]
      283 CALL                             R41 1 1
      284 GETIMPORT                        R42 K5 [require]
      286 GETIMPORT                        R43 K1 [script]
      288 GETTABLEKS                       R43 R43 K51 ["SegmentMeshTool"]
      290 CALL                             R42 1 1
      291 GETIMPORT                        R43 K5 [require]
      293 GETIMPORT                        R44 K1 [script]
      295 GETTABLEKS                       R44 R44 K52 ["SkillTool"]
      297 CALL                             R43 1 1
      298 GETIMPORT                        R44 K5 [require]
      300 GETIMPORT                        R45 K1 [script]
      302 GETTABLEKS                       R45 R45 K53 ["StartMultiPlayerAgentsTool"]
      304 CALL                             R44 1 1
      305 GETIMPORT                        R45 K5 [require]
      307 GETIMPORT                        R46 K1 [script]
      309 GETTABLEKS                       R46 R46 K54 ["StartStopPlayTool"]
      311 CALL                             R45 1 1
      312 GETIMPORT                        R46 K5 [require]
      314 GETIMPORT                        R47 K1 [script]
      316 GETTABLEKS                       R47 R47 K55 ["StopMultiPlayerAgentsTool"]
      318 CALL                             R46 1 1
      319 GETIMPORT                        R47 K5 [require]
      321 GETIMPORT                        R48 K1 [script]
      323 GETTABLEKS                       R48 R48 K56 ["StoreImageTool"]
      325 CALL                             R47 1 1
      326 GETIMPORT                        R48 K5 [require]
      328 GETIMPORT                        R49 K1 [script]
      330 GETTABLEKS                       R49 R49 K57 ["SubagentTool"]
      332 CALL                             R48 1 1
      333 GETIMPORT                        R49 K5 [require]
      335 GETIMPORT                        R50 K1 [script]
      337 GETTABLEKS                       R50 R50 K58 ["TextureGenTool"]
      339 CALL                             R49 1 1
      340 GETIMPORT                        R50 K5 [require]
      342 GETIMPORT                        R51 K1 [script]
      344 GETTABLEKS                       R51 R51 K59 ["UploadImageTool"]
      346 CALL                             R50 1 1
      347 GETIMPORT                        R51 K5 [require]
      349 GETIMPORT                        R52 K1 [script]
      351 GETTABLEKS                       R52 R52 K60 ["UserKeyboardInputTool"]
      353 CALL                             R51 1 1
      354 GETIMPORT                        R52 K5 [require]
      356 GETIMPORT                        R53 K1 [script]
      358 GETTABLEKS                       R53 R53 K61 ["UserMouseInputTool"]
      360 CALL                             R52 1 1
      361 GETIMPORT                        R53 K5 [require]
      363 GETIMPORT                        R54 K1 [script]
      365 GETTABLEKS                       R54 R54 K62 ["VideoCaptureTool"]
      367 CALL                             R53 1 1
      368 GETIMPORT                        R54 K5 [require]
      370 GETIMPORT                        R55 K1 [script]
      372 GETTABLEKS                       R55 R55 K63 ["WaitForMultiPlayerAgentsCommunicationTool"]
      374 CALL                             R54 1 1
      375 GETTABLEKS                       R55 R8 K64 ["getRuntimeForMeta"]
      377 GETTABLEKS                       R56 R9 K65 ["ToolNames"]
      379 NEWTABLE                         R57 32 0
      381 GETTABLEKS                       R58 R56 K66 ["CharacterNavigation"]
      383 SETTABLE                         R14 R57 R58
      384 GETTABLEKS                       R58 R56 K67 ["CompleteTodoItems"]
      386 SETTABLE                         R15 R57 R58
      387 GETTABLEKS                       R58 R56 K68 ["CreateSkill"]
      389 SETTABLE                         R16 R57 R58
      390 GETTABLEKS                       R58 R56 K69 ["EditSkill"]
      392 SETTABLE                         R19 R57 R58
      393 GETTABLEKS                       R58 R56 K70 ["ExecuteLuau"]
      395 SETTABLE                         R20 R57 R58
      396 GETTABLEKS                       R58 R56 K71 ["FileSearch"]
      398 SETTABLE                         R21 R57 R58
      399 GETTABLEKS                       R58 R56 K72 ["FinalizePlan"]
      401 SETTABLE                         R22 R57 R58
      402 GETTABLEKS                       R58 R56 K73 ["FromHistory"]
      404 SETTABLE                         R23 R57 R58
      405 GETTABLEKS                       R58 R56 K74 ["GameTree"]
      407 SETTABLE                         R24 R57 R58
      408 GETTABLEKS                       R58 R56 K75 ["GetConsoleOutput"]
      410 SETTABLE                         R25 R57 R58
      411 GETTABLEKS                       R58 R56 K76 ["GrepSearch"]
      413 SETTABLE                         R27 R57 R58
      414 GETTABLEKS                       R58 R56 K77 ["HttpGet"]
      416 SETTABLE                         R28 R57 R58
      417 GETTABLEKS                       R58 R56 K78 ["InspectInstance"]
      419 SETTABLE                         R29 R57 R58
      420 GETTABLEKS                       R58 R56 K79 ["JobWait"]
      422 SETTABLE                         R31 R57 R58
      423 GETTABLEKS                       R58 R56 K80 ["MaterialGen"]
      425 SETTABLE                         R33 R57 R58
      426 GETTABLEKS                       R58 R56 K81 ["MeshGen"]
      428 SETTABLE                         R34 R57 R58
      429 GETTABLEKS                       R58 R56 K82 ["MultiEdit"]
      431 SETTABLE                         R35 R57 R58
      432 GETTABLEKS                       R58 R56 K83 ["PrimitiveGen"]
      434 SETTABLE                         R38 R57 R58
      435 GETTABLEKS                       R58 R56 K84 ["QuestionAnswer"]
      437 SETTABLE                         R39 R57 R58
      438 GETTABLEKS                       R58 R56 K85 ["ReadFile"]
      440 SETTABLE                         R40 R57 R58
      441 GETTABLEKS                       R58 R56 K86 ["ScreenCapture"]
      443 SETTABLE                         R41 R57 R58
      444 GETTABLEKS                       R58 R56 K87 ["Skill"]
      446 SETTABLE                         R43 R57 R58
      447 GETTABLEKS                       R58 R56 K88 ["StartStopPlay"]
      449 SETTABLE                         R45 R57 R58
      450 GETTABLEKS                       R58 R56 K89 ["StoreImage"]
      452 SETTABLE                         R47 R57 R58
      453 GETTABLEKS                       R58 R56 K90 ["Subagent"]
      455 SETTABLE                         R48 R57 R58
      456 GETTABLEKS                       R58 R56 K91 ["UploadImage"]
      458 SETTABLE                         R50 R57 R58
      459 GETTABLEKS                       R58 R56 K92 ["UserKeyboardInput"]
      461 SETTABLE                         R51 R57 R58
      462 GETTABLEKS                       R58 R56 K93 ["UserMouseInput"]
      464 SETTABLE                         R52 R57 R58
      465 GETTABLEKS                       R58 R6 K94 ["getIsAskInputToolEnabled"]
      467 CALL                             R58 0 1
      468 JUMPIFNOT                        R58 ; [+3]
      469 GETTABLEKS                       R58 R56 K95 ["AskInput"]
      471 SETTABLE                         R12 R57 R58
      472 GETTABLEKS                       R58 R7 K96 ["FFlagAssistantAssetSearchInsertTool"]
      474 JUMPIF                           R58 ; [+3]
      475 GETTABLEKS                       R58 R7 K97 ["FFlagAssistantAssetSearchInsertToolABTest"]
      477 JUMPIFNOT                        R58 ; [+20]
      478 GETTABLEKS                       R58 R56 K98 ["AssetInsert"]
      480 GETIMPORT                        R59 K5 [require]
      482 GETIMPORT                        R60 K1 [script]
      484 GETTABLEKS                       R60 R60 K99 ["AssetInsertTool"]
      486 CALL                             R59 1 1
      487 SETTABLE                         R59 R57 R58
      488 GETTABLEKS                       R58 R56 K100 ["AssetSearch"]
      490 GETIMPORT                        R59 K5 [require]
      492 GETIMPORT                        R60 K1 [script]
      494 GETTABLEKS                       R60 R60 K101 ["AssetSearchTool"]
      496 CALL                             R59 1 1
      497 SETTABLE                         R59 R57 R58
      498 GETTABLEKS                       R58 R7 K96 ["FFlagAssistantAssetSearchInsertTool"]
      500 JUMPIF                           R58 ; [+6]
      501 GETTABLEKS                       R58 R56 K102 ["CreatorStoreSearch"]
      503 SETTABLE                         R18 R57 R58
      504 GETTABLEKS                       R58 R56 K103 ["CreatorStoreInsert"]
      506 SETTABLE                         R17 R57 R58
      507 GETTABLEKS                       R58 R7 K104 ["FFlagAssistantGetStudioState"]
      509 JUMPIFNOT                        R58 ; [+3]
      510 GETTABLEKS                       R58 R56 K105 ["GetStudioState"]
      512 SETTABLE                         R26 R57 R58
      513 GETTABLEKS                       R58 R7 K106 ["FFlagPlaytestVision"]
      515 JUMPIFNOT                        R58 ; [+3]
      516 GETTABLEKS                       R58 R56 K107 ["PlaytestLook"]
      518 SETTABLE                         R37 R57 R58
      519 GETTABLEKS                       R58 R7 K108 ["FFlagAssistantMultiPlayerAgents"]
      521 JUMPIFNOT                        R58 ; [+12]
      522 GETTABLEKS                       R58 R56 K109 ["StartMultiPlayerAgents"]
      524 SETTABLE                         R44 R57 R58
      525 GETTABLEKS                       R58 R56 K110 ["StopMultiPlayerAgents"]
      527 SETTABLE                         R46 R57 R58
      528 GETTABLEKS                       R58 R56 K111 ["MultiPlayerAgentsCommunication"]
      530 SETTABLE                         R36 R57 R58
      531 GETTABLEKS                       R58 R56 K112 ["WaitForMultiPlayerAgentsCommunication"]
      533 SETTABLE                         R54 R57 R58
      534 GETTABLEKS                       R58 R7 K113 ["FFlagAssistantVideoCaptureTool"]
      536 JUMPIFNOT                        R58 ; [+3]
      537 GETTABLEKS                       R58 R56 K114 ["VideoCapture"]
      539 SETTABLE                         R53 R57 R58
      540 GETTABLEKS                       R58 R7 K115 ["FFlagAssistantAnimationGenTool"]
      542 JUMPIFNOT                        R58 ; [+3]
      543 GETTABLEKS                       R58 R56 K116 ["AnimationGen"]
      545 SETTABLE                         R11 R57 R58
      546 GETTABLEKS                       R58 R7 K117 ["FFlagAssistantAvatarAutoSetupTool"]
      548 JUMPIFNOT                        R58 ; [+3]
      549 GETTABLEKS                       R58 R56 K118 ["AvatarAutoSetup"]
      551 SETTABLE                         R13 R57 R58
      552 GETTABLEKS                       R58 R7 K119 ["FFlagAssistantMigratePrimitiveGenTool"]
      554 JUMPIFNOT                        R58 ; [+3]
      555 GETTABLEKS                       R58 R56 K120 ["JobRun"]
      557 SETTABLE                         R30 R57 R58
      558 GETTABLEKS                       R58 R7 K121 ["FFlagAssistantMarkdownPlanMode"]
      560 JUMPIFNOT                        R58 ; [+10]
      561 GETTABLEKS                       R58 R56 K122 ["UpdatePlan"]
      563 GETIMPORT                        R59 K5 [require]
      565 GETIMPORT                        R60 K1 [script]
      567 GETTABLEKS                       R60 R60 K123 ["UpdatePlanTool"]
      569 CALL                             R59 1 1
      570 SETTABLE                         R59 R57 R58
      571 GETTABLEKS                       R58 R7 K124 ["FFlagAssistantSegmentMeshTool"]
      573 JUMPIFNOT                        R58 ; [+3]
      574 GETTABLEKS                       R58 R56 K125 ["SegmentMesh"]
      576 SETTABLE                         R42 R57 R58
      577 GETTABLEKS                       R58 R7 K126 ["FFlagAssistantTextureGenTool"]
      579 JUMPIFNOT                        R58 ; [+3]
      580 GETTABLEKS                       R58 R56 K127 ["TextureGen"]
      582 SETTABLE                         R49 R57 R58
      583 GETTABLEKS                       R58 R7 K128 ["FFlagUseStudioSideListTool"]
      585 JUMPIFNOT                        R58 ; [+3]
      586 GETTABLEKS                       R58 R56 K129 ["ListRobloxStudios"]
      588 SETTABLE                         R32 R57 R58
      589 DUPCLOSURE                       R58 K130 [PROTO_0]
      590 CAPTURE                          VAL R4
      591 CAPTURE                          VAL R5
      592 CAPTURE                          VAL R55
      593 DUPCLOSURE                       R59 K131 [PROTO_1]
      594 CAPTURE                          VAL R10
      595 CAPTURE                          VAL R7
      596 CAPTURE                          VAL R2
      597 DUPTABLE                         R60 K135 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      598 SETTABLEKS                       R9 R60 K17 ["ToolTypes"]
      600 SETTABLEKS                       R57 R60 K132 ["BuiltinTools"]
      602 SETTABLEKS                       R58 R60 K133 ["createTools"]
      604 SETTABLEKS                       R59 R60 K134 ["registerTools"]
      606 RETURN                           R60 1
