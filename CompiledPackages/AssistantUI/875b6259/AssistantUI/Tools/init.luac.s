PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["get"]
        7 CALL                             R3 0 1
        8 NEWTABLE                         R4 0 0
       10 MOVE                             R5 R1
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 MOVE                             R10 R9
       15 DUPTABLE                         R11 K5 [{"networking", "environment", "RESTRICTED_externalHooks", "getPersistentPlanRuntime"}]
       16 SETTABLEKS                       R0 R11 K1 ["networking"]
       18 SETTABLEKS                       R2 R11 K2 ["environment"]
       20 SETTABLEKS                       R3 R11 K3 ["RESTRICTED_externalHooks"]
       22 GETUPVAL                         R13 2
       23 CALL                             R13 0 1
       24 JUMPIFNOT                        R13 ; [+2]
       25 GETUPVAL                         R12 3
       26 JUMP                             ; [+1]
       27 LOADNIL                          R12
       28 SETTABLEKS                       R12 R11 K4 ["getPersistentPlanRuntime"]
       30 CALL                             R10 1 1
       31 GETTABLE                         R13 R4 R8
       32 NOT                              R12 R13
       33 LOADK                            R14 K6 ["Tool with name %* already exists"]
       34 MOVE                             R16 R8
       35 NAMECALL                         R14 R14 K7 ["format"]
       37 CALL                             R14 2 1
       38 MOVE                             R13 R14
       39 FASTCALL2                        ASSERT R12 R13 ; [+3]
       41 GETIMPORT                        R11 K9 [assert]
       43 CALL                             R11 2 0
       44 SETTABLE                         R10 R4 R8
       45 FORGLOOP                         R5 2 ; [-32]
       47 RETURN                           R4 1

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
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Hooks"]
       25 GETTABLEKS                       R4 R4 K11 ["RESTRICTED_ExternalHooks"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K12 ["ToolTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Components"]
       39 GETTABLEKS                       R6 R6 K14 ["UIToolRegistry"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Features"]
       46 GETTABLEKS                       R7 R7 K16 ["AnimationGen"]
       48 GETTABLEKS                       R7 R7 K17 ["AnimationGenTool"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETIMPORT                        R8 K1 [script]
       55 GETTABLEKS                       R8 R8 K18 ["CharacterNavigationTool"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K15 ["Features"]
       62 GETTABLEKS                       R9 R9 K19 ["CreatorStore"]
       64 GETTABLEKS                       R9 R9 K20 ["CreatorStoreInsertTool"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K15 ["Features"]
       71 GETTABLEKS                       R10 R10 K19 ["CreatorStore"]
       73 GETTABLEKS                       R10 R10 K21 ["CreatorStoreSearchTool"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETIMPORT                        R11 K1 [script]
       80 GETTABLEKS                       R11 R11 K22 ["ExecuteLuauTool"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETIMPORT                        R12 K1 [script]
       87 GETTABLEKS                       R12 R12 K23 ["FileSearchTool"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETIMPORT                        R13 K1 [script]
       94 GETTABLEKS                       R13 R13 K24 ["FromHistoryTool"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETIMPORT                        R14 K1 [script]
      101 GETTABLEKS                       R14 R14 K25 ["GameTreeTool"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETIMPORT                        R15 K1 [script]
      108 GETTABLEKS                       R15 R15 K26 ["GetConsoleOutputTool"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETIMPORT                        R16 K1 [script]
      115 GETTABLEKS                       R16 R16 K27 ["GetStudioStateTool"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETIMPORT                        R17 K1 [script]
      122 GETTABLEKS                       R17 R17 K28 ["GrepSearchTool"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETIMPORT                        R18 K1 [script]
      129 GETTABLEKS                       R18 R18 K29 ["HttpGetTool"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETIMPORT                        R19 K1 [script]
      136 GETTABLEKS                       R19 R19 K30 ["InspectInstanceTool"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETIMPORT                        R20 K1 [script]
      143 GETTABLEKS                       R20 R20 K31 ["MaterialGenTool"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K15 ["Features"]
      150 GETTABLEKS                       R21 R21 K32 ["MeshGen"]
      152 GETTABLEKS                       R21 R21 K33 ["MeshGenTool"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K5 [require]
      157 GETIMPORT                        R22 K1 [script]
      159 GETTABLEKS                       R22 R22 K34 ["MultiEditTool"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K5 [require]
      164 GETIMPORT                        R23 K1 [script]
      166 GETTABLEKS                       R23 R23 K35 ["MultiPlayerAgentsCommunicationTool"]
      168 CALL                             R22 1 1
      169 GETIMPORT                        R23 K5 [require]
      171 GETTABLEKS                       R24 R0 K36 ["PersistentPlanRuntime"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K5 [require]
      176 GETTABLEKS                       R25 R0 K15 ["Features"]
      178 GETTABLEKS                       R25 R25 K37 ["PrimitiveGen"]
      180 GETTABLEKS                       R25 R25 K38 ["PrimitiveGenTool"]
      182 CALL                             R24 1 1
      183 GETIMPORT                        R25 K5 [require]
      185 GETIMPORT                        R26 K1 [script]
      187 GETTABLEKS                       R26 R26 K39 ["QuestionAnswerTool"]
      189 CALL                             R25 1 1
      190 GETIMPORT                        R26 K5 [require]
      192 GETIMPORT                        R27 K1 [script]
      194 GETTABLEKS                       R27 R27 K40 ["ReadFileTool"]
      196 CALL                             R26 1 1
      197 GETIMPORT                        R27 K5 [require]
      199 GETIMPORT                        R28 K1 [script]
      201 GETTABLEKS                       R28 R28 K41 ["ScreenCaptureTool"]
      203 CALL                             R27 1 1
      204 GETIMPORT                        R28 K5 [require]
      206 GETIMPORT                        R29 K1 [script]
      208 GETTABLEKS                       R29 R29 K42 ["SkillTool"]
      210 CALL                             R28 1 1
      211 GETIMPORT                        R29 K5 [require]
      213 GETIMPORT                        R30 K1 [script]
      215 GETTABLEKS                       R30 R30 K43 ["StartMultiPlayerAgentsTool"]
      217 CALL                             R29 1 1
      218 GETIMPORT                        R30 K5 [require]
      220 GETIMPORT                        R31 K1 [script]
      222 GETTABLEKS                       R31 R31 K44 ["StartStopPlayTool"]
      224 CALL                             R30 1 1
      225 GETIMPORT                        R31 K5 [require]
      227 GETIMPORT                        R32 K1 [script]
      229 GETTABLEKS                       R32 R32 K45 ["StopMultiPlayerAgentsTool"]
      231 CALL                             R31 1 1
      232 GETIMPORT                        R32 K5 [require]
      234 GETIMPORT                        R33 K1 [script]
      236 GETTABLEKS                       R33 R33 K46 ["StoreImageTool"]
      238 CALL                             R32 1 1
      239 GETIMPORT                        R33 K5 [require]
      241 GETIMPORT                        R34 K1 [script]
      243 GETTABLEKS                       R34 R34 K47 ["SubagentTool"]
      245 CALL                             R33 1 1
      246 GETIMPORT                        R34 K5 [require]
      248 GETIMPORT                        R35 K1 [script]
      250 GETTABLEKS                       R35 R35 K48 ["UploadImageTool"]
      252 CALL                             R34 1 1
      253 GETIMPORT                        R35 K5 [require]
      255 GETIMPORT                        R36 K1 [script]
      257 GETTABLEKS                       R36 R36 K49 ["UserKeyboardInputTool"]
      259 CALL                             R35 1 1
      260 GETIMPORT                        R36 K5 [require]
      262 GETIMPORT                        R37 K1 [script]
      264 GETTABLEKS                       R37 R37 K50 ["UserMouseInputTool"]
      266 CALL                             R36 1 1
      267 GETIMPORT                        R37 K5 [require]
      269 GETIMPORT                        R38 K1 [script]
      271 GETTABLEKS                       R38 R38 K51 ["WaitForMultiPlayerAgentsCommunicationTool"]
      273 CALL                             R37 1 1
      274 GETIMPORT                        R38 K5 [require]
      276 GETIMPORT                        R39 K1 [script]
      278 GETTABLEKS                       R39 R39 K52 ["WaitJobFinishedTool"]
      280 CALL                             R38 1 1
      281 GETIMPORT                        R39 K5 [require]
      283 GETTABLEKS                       R40 R0 K53 ["Flags"]
      285 CALL                             R39 1 1
      286 GETTABLEKS                       R40 R39 K54 ["Shared"]
      288 GETTABLEKS                       R40 R40 K55 ["FFlagAssistantAssetSearchInsertTool"]
      290 GETTABLEKS                       R41 R39 K54 ["Shared"]
      292 GETTABLEKS                       R41 R41 K56 ["FFlagAssistantAssetSearchInsertToolABTest"]
      294 GETTABLEKS                       R42 R39 K54 ["Shared"]
      296 GETTABLEKS                       R42 R42 K57 ["FFlagAssistantAnimationGenTool"]
      298 GETTABLEKS                       R43 R39 K54 ["Shared"]
      300 GETTABLEKS                       R43 R43 K58 ["FFlagProceduralModel"]
      302 GETTABLEKS                       R44 R39 K54 ["Shared"]
      304 GETTABLEKS                       R44 R44 K59 ["FFlagAssistantQuestionAnswerTool"]
      306 GETTABLEKS                       R45 R39 K54 ["Shared"]
      308 GETTABLEKS                       R45 R45 K60 ["FFlagAssistantPlanMode"]
      310 GETIMPORT                        R46 K5 [require]
      312 GETTABLEKS                       R47 R0 K53 ["Flags"]
      314 GETTABLEKS                       R47 R47 K61 ["FFlagAssistantMarkdownPlanMode"]
      316 CALL                             R46 1 1
      317 GETTABLEKS                       R47 R39 K54 ["Shared"]
      319 GETTABLEKS                       R47 R47 K62 ["FFlagAssistantMultiPlayerAgents"]
      321 GETTABLEKS                       R48 R39 K54 ["Shared"]
      323 GETTABLEKS                       R48 R48 K63 ["FFlagAssistantGetStudioState"]
      325 GETTABLEKS                       R49 R23 K64 ["getRuntimeForMeta"]
      327 GETTABLEKS                       R50 R4 K65 ["ToolNames"]
      329 NEWTABLE                         R51 32 0
      331 GETTABLEKS                       R52 R50 K66 ["ExecuteLuau"]
      333 SETTABLE                         R10 R51 R52
      334 GETTABLEKS                       R52 R50 K67 ["FileSearch"]
      336 SETTABLE                         R11 R51 R52
      337 GETTABLEKS                       R52 R50 K68 ["GameTree"]
      339 SETTABLE                         R13 R51 R52
      340 GETTABLEKS                       R52 R50 K69 ["GrepSearch"]
      342 SETTABLE                         R16 R51 R52
      343 GETTABLEKS                       R52 R50 K70 ["InspectInstance"]
      345 SETTABLE                         R18 R51 R52
      346 GETTABLEKS                       R52 R50 K71 ["MaterialGen"]
      348 SETTABLE                         R19 R51 R52
      349 GETTABLEKS                       R52 R50 K32 ["MeshGen"]
      351 SETTABLE                         R20 R51 R52
      352 GETTABLEKS                       R52 R50 K72 ["MultiEdit"]
      354 SETTABLE                         R21 R51 R52
      355 GETTABLEKS                       R52 R50 K73 ["QuestionAnswer"]
      357 SETTABLE                         R25 R51 R52
      358 GETTABLEKS                       R52 R50 K74 ["ReadFile"]
      360 SETTABLE                         R26 R51 R52
      361 GETTABLEKS                       R52 R50 K75 ["ScreenCapture"]
      363 SETTABLE                         R27 R51 R52
      364 GETTABLEKS                       R52 R50 K76 ["StoreImage"]
      366 SETTABLE                         R32 R51 R52
      367 GETTABLEKS                       R52 R50 K77 ["Subagent"]
      369 SETTABLE                         R33 R51 R52
      370 GETTABLEKS                       R52 R50 K78 ["UploadImage"]
      372 SETTABLE                         R34 R51 R52
      373 GETTABLEKS                       R52 R50 K79 ["Skill"]
      375 SETTABLE                         R28 R51 R52
      376 GETTABLEKS                       R52 R50 K80 ["HttpGet"]
      378 SETTABLE                         R17 R51 R52
      379 GETTABLEKS                       R52 R50 K81 ["FromHistory"]
      381 SETTABLE                         R12 R51 R52
      382 MOVE                             R52 R40
      383 CALL                             R52 0 1
      384 JUMPIF                           R52 ; [+3]
      385 MOVE                             R52 R41
      386 CALL                             R52 0 1
      387 JUMPIFNOT                        R52 ; [+24]
      388 GETTABLEKS                       R52 R50 K82 ["AssetInsert"]
      390 GETIMPORT                        R53 K5 [require]
      392 GETTABLEKS                       R54 R0 K15 ["Features"]
      394 GETTABLEKS                       R54 R54 K83 ["AssetManagement"]
      396 GETTABLEKS                       R54 R54 K84 ["AssetInsertTool"]
      398 CALL                             R53 1 1
      399 SETTABLE                         R53 R51 R52
      400 GETTABLEKS                       R52 R50 K85 ["AssetSearch"]
      402 GETIMPORT                        R53 K5 [require]
      404 GETTABLEKS                       R54 R0 K15 ["Features"]
      406 GETTABLEKS                       R54 R54 K83 ["AssetManagement"]
      408 GETTABLEKS                       R54 R54 K86 ["AssetSearchTool"]
      410 CALL                             R53 1 1
      411 SETTABLE                         R53 R51 R52
      412 MOVE                             R52 R40
      413 CALL                             R52 0 1
      414 JUMPIF                           R52 ; [+6]
      415 GETTABLEKS                       R52 R50 K87 ["CreatorStoreSearch"]
      417 SETTABLE                         R9 R51 R52
      418 GETTABLEKS                       R52 R50 K88 ["CreatorStoreInsert"]
      420 SETTABLE                         R8 R51 R52
      421 MOVE                             R52 R48
      422 CALL                             R52 0 1
      423 JUMPIFNOT                        R52 ; [+3]
      424 GETTABLEKS                       R52 R50 K89 ["GetStudioState"]
      426 SETTABLE                         R15 R51 R52
      427 GETTABLEKS                       R52 R50 K90 ["StartStopPlay"]
      429 SETTABLE                         R30 R51 R52
      430 GETTABLEKS                       R52 R50 K91 ["GetConsoleOutput"]
      432 SETTABLE                         R14 R51 R52
      433 GETTABLEKS                       R52 R50 K92 ["UserKeyboardInput"]
      435 SETTABLE                         R35 R51 R52
      436 GETTABLEKS                       R52 R50 K93 ["UserMouseInput"]
      438 SETTABLE                         R36 R51 R52
      439 GETTABLEKS                       R52 R50 K94 ["CharacterNavigation"]
      441 SETTABLE                         R7 R51 R52
      442 MOVE                             R52 R47
      443 CALL                             R52 0 1
      444 JUMPIFNOT                        R52 ; [+12]
      445 GETTABLEKS                       R52 R50 K95 ["StartMultiPlayerAgents"]
      447 SETTABLE                         R29 R51 R52
      448 GETTABLEKS                       R52 R50 K96 ["StopMultiPlayerAgents"]
      450 SETTABLE                         R31 R51 R52
      451 GETTABLEKS                       R52 R50 K97 ["MultiPlayerAgentsCommunication"]
      453 SETTABLE                         R22 R51 R52
      454 GETTABLEKS                       R52 R50 K98 ["WaitForMultiPlayerAgentsCommunication"]
      456 SETTABLE                         R37 R51 R52
      457 MOVE                             R52 R42
      458 CALL                             R52 0 1
      459 JUMPIFNOT                        R52 ; [+3]
      460 GETTABLEKS                       R52 R50 K16 ["AnimationGen"]
      462 SETTABLE                         R6 R51 R52
      463 MOVE                             R52 R43
      464 CALL                             R52 0 1
      465 JUMPIFNOT                        R52 ; [+3]
      466 GETTABLEKS                       R52 R50 K37 ["PrimitiveGen"]
      468 SETTABLE                         R24 R51 R52
      469 MOVE                             R52 R43
      470 CALL                             R52 0 1
      471 JUMPIFNOT                        R52 ; [+3]
      472 GETTABLEKS                       R52 R50 K99 ["WaitJobFinished"]
      474 SETTABLE                         R38 R51 R52
      475 MOVE                             R52 R44
      476 CALL                             R52 0 1
      477 JUMPIFNOT                        R52 ; [+3]
      478 GETTABLEKS                       R52 R50 K73 ["QuestionAnswer"]
      480 SETTABLE                         R25 R51 R52
      481 MOVE                             R52 R45
      482 CALL                             R52 0 1
      483 JUMPIFNOT                        R52 ; [+33]
      484 GETTABLEKS                       R52 R50 K100 ["FinalizePlan"]
      486 GETIMPORT                        R53 K5 [require]
      488 GETIMPORT                        R54 K1 [script]
      490 GETTABLEKS                       R54 R54 K101 ["FinalizePlanTool"]
      492 CALL                             R53 1 1
      493 SETTABLE                         R53 R51 R52
      494 GETTABLEKS                       R52 R50 K102 ["CompleteTodoItems"]
      496 GETIMPORT                        R53 K5 [require]
      498 GETIMPORT                        R54 K1 [script]
      500 GETTABLEKS                       R54 R54 K103 ["CompleteTodoItemsTool"]
      502 CALL                             R53 1 1
      503 SETTABLE                         R53 R51 R52
      504 MOVE                             R52 R46
      505 CALL                             R52 0 1
      506 JUMPIFNOT                        R52 ; [+10]
      507 GETTABLEKS                       R52 R50 K104 ["UpdatePlan"]
      509 GETIMPORT                        R53 K5 [require]
      511 GETIMPORT                        R54 K1 [script]
      513 GETTABLEKS                       R54 R54 K105 ["UpdatePlanTool"]
      515 CALL                             R53 1 1
      516 SETTABLE                         R53 R51 R52
      517 DUPCLOSURE                       R52 K106 [PROTO_0]
      518 CAPTURE                          VAL R2
      519 CAPTURE                          VAL R3
      520 CAPTURE                          VAL R45
      521 CAPTURE                          VAL R49
      522 DUPCLOSURE                       R53 K107 [PROTO_1]
      523 CAPTURE                          VAL R5
      524 DUPTABLE                         R54 K111 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      525 SETTABLEKS                       R4 R54 K12 ["ToolTypes"]
      527 SETTABLEKS                       R51 R54 K108 ["BuiltinTools"]
      529 SETTABLEKS                       R52 R54 K109 ["createTools"]
      531 SETTABLEKS                       R53 R54 K110 ["registerTools"]
      533 RETURN                           R54 1
