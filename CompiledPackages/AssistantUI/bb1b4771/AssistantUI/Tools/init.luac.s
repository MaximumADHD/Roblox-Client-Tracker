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
      206 GETTABLEKS                       R31 R31 K39 ["MaterialGenTool"]
      208 CALL                             R30 1 1
      209 GETIMPORT                        R31 K5 [require]
      211 GETIMPORT                        R32 K1 [script]
      213 GETTABLEKS                       R32 R32 K40 ["MeshGenTool"]
      215 CALL                             R31 1 1
      216 GETIMPORT                        R32 K5 [require]
      218 GETIMPORT                        R33 K1 [script]
      220 GETTABLEKS                       R33 R33 K41 ["MultiEditTool"]
      222 CALL                             R32 1 1
      223 GETIMPORT                        R33 K5 [require]
      225 GETIMPORT                        R34 K1 [script]
      227 GETTABLEKS                       R34 R34 K42 ["MultiPlayerAgentsCommunicationTool"]
      229 CALL                             R33 1 1
      230 GETIMPORT                        R34 K5 [require]
      232 GETIMPORT                        R35 K1 [script]
      234 GETTABLEKS                       R35 R35 K43 ["PrimitiveGenTool"]
      236 CALL                             R34 1 1
      237 GETIMPORT                        R35 K5 [require]
      239 GETIMPORT                        R36 K1 [script]
      241 GETTABLEKS                       R36 R36 K44 ["QuestionAnswerTool"]
      243 CALL                             R35 1 1
      244 GETIMPORT                        R36 K5 [require]
      246 GETIMPORT                        R37 K1 [script]
      248 GETTABLEKS                       R37 R37 K45 ["ReadFileTool"]
      250 CALL                             R36 1 1
      251 GETIMPORT                        R37 K5 [require]
      253 GETIMPORT                        R38 K1 [script]
      255 GETTABLEKS                       R38 R38 K46 ["ScreenCaptureTool"]
      257 CALL                             R37 1 1
      258 GETIMPORT                        R38 K5 [require]
      260 GETIMPORT                        R39 K1 [script]
      262 GETTABLEKS                       R39 R39 K47 ["SkillTool"]
      264 CALL                             R38 1 1
      265 GETIMPORT                        R39 K5 [require]
      267 GETIMPORT                        R40 K1 [script]
      269 GETTABLEKS                       R40 R40 K48 ["StartMultiPlayerAgentsTool"]
      271 CALL                             R39 1 1
      272 GETIMPORT                        R40 K5 [require]
      274 GETIMPORT                        R41 K1 [script]
      276 GETTABLEKS                       R41 R41 K49 ["StartStopPlayTool"]
      278 CALL                             R40 1 1
      279 GETIMPORT                        R41 K5 [require]
      281 GETIMPORT                        R42 K1 [script]
      283 GETTABLEKS                       R42 R42 K50 ["StopMultiPlayerAgentsTool"]
      285 CALL                             R41 1 1
      286 GETIMPORT                        R42 K5 [require]
      288 GETIMPORT                        R43 K1 [script]
      290 GETTABLEKS                       R43 R43 K51 ["StoreImageTool"]
      292 CALL                             R42 1 1
      293 GETIMPORT                        R43 K5 [require]
      295 GETIMPORT                        R44 K1 [script]
      297 GETTABLEKS                       R44 R44 K52 ["SubagentTool"]
      299 CALL                             R43 1 1
      300 GETIMPORT                        R44 K5 [require]
      302 GETIMPORT                        R45 K1 [script]
      304 GETTABLEKS                       R45 R45 K53 ["UploadImageTool"]
      306 CALL                             R44 1 1
      307 GETIMPORT                        R45 K5 [require]
      309 GETIMPORT                        R46 K1 [script]
      311 GETTABLEKS                       R46 R46 K54 ["UserKeyboardInputTool"]
      313 CALL                             R45 1 1
      314 GETIMPORT                        R46 K5 [require]
      316 GETIMPORT                        R47 K1 [script]
      318 GETTABLEKS                       R47 R47 K55 ["UserMouseInputTool"]
      320 CALL                             R46 1 1
      321 GETIMPORT                        R47 K5 [require]
      323 GETIMPORT                        R48 K1 [script]
      325 GETTABLEKS                       R48 R48 K56 ["VideoCaptureTool"]
      327 CALL                             R47 1 1
      328 GETIMPORT                        R48 K5 [require]
      330 GETIMPORT                        R49 K1 [script]
      332 GETTABLEKS                       R49 R49 K57 ["WaitForMultiPlayerAgentsCommunicationTool"]
      334 CALL                             R48 1 1
      335 GETTABLEKS                       R49 R7 K58 ["getRuntimeForMeta"]
      337 GETTABLEKS                       R50 R8 K59 ["ToolNames"]
      339 NEWTABLE                         R51 32 0
      341 GETTABLEKS                       R52 R50 K60 ["CharacterNavigation"]
      343 SETTABLE                         R12 R51 R52
      344 GETTABLEKS                       R52 R50 K61 ["CompleteTodoItems"]
      346 SETTABLE                         R13 R51 R52
      347 GETTABLEKS                       R52 R50 K62 ["CreateSkill"]
      349 SETTABLE                         R14 R51 R52
      350 GETTABLEKS                       R52 R50 K63 ["EditSkill"]
      352 SETTABLE                         R17 R51 R52
      353 GETTABLEKS                       R52 R50 K64 ["ExecuteLuau"]
      355 SETTABLE                         R18 R51 R52
      356 GETTABLEKS                       R52 R50 K65 ["FileSearch"]
      358 SETTABLE                         R19 R51 R52
      359 GETTABLEKS                       R52 R50 K66 ["FinalizePlan"]
      361 SETTABLE                         R20 R51 R52
      362 GETTABLEKS                       R52 R50 K67 ["FromHistory"]
      364 SETTABLE                         R21 R51 R52
      365 GETTABLEKS                       R52 R50 K68 ["GameTree"]
      367 SETTABLE                         R22 R51 R52
      368 GETTABLEKS                       R52 R50 K69 ["GetConsoleOutput"]
      370 SETTABLE                         R23 R51 R52
      371 GETTABLEKS                       R52 R50 K70 ["GrepSearch"]
      373 SETTABLE                         R25 R51 R52
      374 GETTABLEKS                       R52 R50 K71 ["HttpGet"]
      376 SETTABLE                         R26 R51 R52
      377 GETTABLEKS                       R52 R50 K72 ["InspectInstance"]
      379 SETTABLE                         R27 R51 R52
      380 GETTABLEKS                       R52 R50 K73 ["JobWait"]
      382 SETTABLE                         R29 R51 R52
      383 GETTABLEKS                       R52 R50 K74 ["MaterialGen"]
      385 SETTABLE                         R30 R51 R52
      386 GETTABLEKS                       R52 R50 K75 ["MeshGen"]
      388 SETTABLE                         R31 R51 R52
      389 GETTABLEKS                       R52 R50 K76 ["MultiEdit"]
      391 SETTABLE                         R32 R51 R52
      392 GETTABLEKS                       R52 R50 K77 ["PrimitiveGen"]
      394 SETTABLE                         R34 R51 R52
      395 GETTABLEKS                       R52 R50 K78 ["QuestionAnswer"]
      397 SETTABLE                         R35 R51 R52
      398 GETTABLEKS                       R52 R50 K79 ["ReadFile"]
      400 SETTABLE                         R36 R51 R52
      401 GETTABLEKS                       R52 R50 K80 ["ScreenCapture"]
      403 SETTABLE                         R37 R51 R52
      404 GETTABLEKS                       R52 R50 K81 ["Skill"]
      406 SETTABLE                         R38 R51 R52
      407 GETTABLEKS                       R52 R50 K82 ["StartStopPlay"]
      409 SETTABLE                         R40 R51 R52
      410 GETTABLEKS                       R52 R50 K83 ["StoreImage"]
      412 SETTABLE                         R42 R51 R52
      413 GETTABLEKS                       R52 R50 K84 ["Subagent"]
      415 SETTABLE                         R43 R51 R52
      416 GETTABLEKS                       R52 R50 K85 ["UploadImage"]
      418 SETTABLE                         R44 R51 R52
      419 GETTABLEKS                       R52 R50 K86 ["UserKeyboardInput"]
      421 SETTABLE                         R45 R51 R52
      422 GETTABLEKS                       R52 R50 K87 ["UserMouseInput"]
      424 SETTABLE                         R46 R51 R52
      425 GETTABLEKS                       R52 R6 K88 ["FFlagAssistantAssetSearchInsertTool"]
      427 JUMPIF                           R52 ; [+3]
      428 GETTABLEKS                       R52 R6 K89 ["FFlagAssistantAssetSearchInsertToolABTest"]
      430 JUMPIFNOT                        R52 ; [+20]
      431 GETTABLEKS                       R52 R50 K90 ["AssetInsert"]
      433 GETIMPORT                        R53 K5 [require]
      435 GETIMPORT                        R54 K1 [script]
      437 GETTABLEKS                       R54 R54 K91 ["AssetInsertTool"]
      439 CALL                             R53 1 1
      440 SETTABLE                         R53 R51 R52
      441 GETTABLEKS                       R52 R50 K92 ["AssetSearch"]
      443 GETIMPORT                        R53 K5 [require]
      445 GETIMPORT                        R54 K1 [script]
      447 GETTABLEKS                       R54 R54 K93 ["AssetSearchTool"]
      449 CALL                             R53 1 1
      450 SETTABLE                         R53 R51 R52
      451 GETTABLEKS                       R52 R6 K88 ["FFlagAssistantAssetSearchInsertTool"]
      453 JUMPIF                           R52 ; [+6]
      454 GETTABLEKS                       R52 R50 K94 ["CreatorStoreSearch"]
      456 SETTABLE                         R16 R51 R52
      457 GETTABLEKS                       R52 R50 K95 ["CreatorStoreInsert"]
      459 SETTABLE                         R15 R51 R52
      460 GETTABLEKS                       R52 R6 K96 ["FFlagAssistantGetStudioState"]
      462 JUMPIFNOT                        R52 ; [+3]
      463 GETTABLEKS                       R52 R50 K97 ["GetStudioState"]
      465 SETTABLE                         R24 R51 R52
      466 GETTABLEKS                       R52 R6 K98 ["FFlagAssistantMultiPlayerAgents"]
      468 JUMPIFNOT                        R52 ; [+12]
      469 GETTABLEKS                       R52 R50 K99 ["StartMultiPlayerAgents"]
      471 SETTABLE                         R39 R51 R52
      472 GETTABLEKS                       R52 R50 K100 ["StopMultiPlayerAgents"]
      474 SETTABLE                         R41 R51 R52
      475 GETTABLEKS                       R52 R50 K101 ["MultiPlayerAgentsCommunication"]
      477 SETTABLE                         R33 R51 R52
      478 GETTABLEKS                       R52 R50 K102 ["WaitForMultiPlayerAgentsCommunication"]
      480 SETTABLE                         R48 R51 R52
      481 GETTABLEKS                       R52 R6 K103 ["FFlagAssistantVideoCaptureTool"]
      483 JUMPIFNOT                        R52 ; [+3]
      484 GETTABLEKS                       R52 R50 K104 ["VideoCapture"]
      486 SETTABLE                         R47 R51 R52
      487 GETTABLEKS                       R52 R6 K105 ["FFlagAssistantAnimationGenTool"]
      489 JUMPIFNOT                        R52 ; [+3]
      490 GETTABLEKS                       R52 R50 K106 ["AnimationGen"]
      492 SETTABLE                         R10 R51 R52
      493 GETTABLEKS                       R52 R6 K107 ["FFlagAssistantAvatarAutoSetupTool"]
      495 JUMPIFNOT                        R52 ; [+3]
      496 GETTABLEKS                       R52 R50 K108 ["AvatarAutoSetup"]
      498 SETTABLE                         R11 R51 R52
      499 GETTABLEKS                       R52 R6 K109 ["FFlagAssistantMigratePrimitiveGenTool"]
      501 JUMPIFNOT                        R52 ; [+3]
      502 GETTABLEKS                       R52 R50 K110 ["JobRun"]
      504 SETTABLE                         R28 R51 R52
      505 GETTABLEKS                       R52 R6 K111 ["FFlagAssistantMarkdownPlanMode"]
      507 JUMPIFNOT                        R52 ; [+10]
      508 GETTABLEKS                       R52 R50 K112 ["UpdatePlan"]
      510 GETIMPORT                        R53 K5 [require]
      512 GETIMPORT                        R54 K1 [script]
      514 GETTABLEKS                       R54 R54 K113 ["UpdatePlanTool"]
      516 CALL                             R53 1 1
      517 SETTABLE                         R53 R51 R52
      518 DUPCLOSURE                       R52 K114 [PROTO_0]
      519 CAPTURE                          VAL R4
      520 CAPTURE                          VAL R5
      521 CAPTURE                          VAL R49
      522 DUPCLOSURE                       R53 K115 [PROTO_1]
      523 CAPTURE                          VAL R9
      524 CAPTURE                          VAL R6
      525 CAPTURE                          VAL R2
      526 DUPTABLE                         R54 K119 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      527 SETTABLEKS                       R8 R54 K16 ["ToolTypes"]
      529 SETTABLEKS                       R51 R54 K116 ["BuiltinTools"]
      531 SETTABLEKS                       R52 R54 K117 ["createTools"]
      533 SETTABLEKS                       R53 R54 K118 ["registerTools"]
      535 RETURN                           R54 1
