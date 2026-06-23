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
       22 GETUPVAL                         R12 2
       23 SETTABLEKS                       R12 R11 K4 ["getPersistentPlanRuntime"]
       25 CALL                             R10 1 1
       26 GETTABLE                         R13 R4 R8
       27 NOT                              R12 R13
       28 LOADK                            R14 K6 ["Tool with name %* already exists"]
       29 MOVE                             R16 R8
       30 NAMECALL                         R14 R14 K7 ["format"]
       32 CALL                             R14 2 1
       33 MOVE                             R13 R14
       34 FASTCALL2                        ASSERT R12 R13 ; [+3]
       36 GETIMPORT                        R11 K9 [assert]
       38 CALL                             R11 2 0
       39 SETTABLE                         R10 R4 R8
       40 FORGLOOP                         R5 2 ; [-27]
       42 RETURN                           R4 1

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
       60 GETIMPORT                        R9 K1 [script]
       62 GETTABLEKS                       R9 R9 K19 ["CompleteTodoItemsTool"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K15 ["Features"]
       69 GETTABLEKS                       R10 R10 K20 ["CreatorStore"]
       71 GETTABLEKS                       R10 R10 K21 ["CreatorStoreInsertTool"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K15 ["Features"]
       78 GETTABLEKS                       R11 R11 K20 ["CreatorStore"]
       80 GETTABLEKS                       R11 R11 K22 ["CreatorStoreSearchTool"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETIMPORT                        R12 K1 [script]
       87 GETTABLEKS                       R12 R12 K23 ["ExecuteLuauTool"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETIMPORT                        R13 K1 [script]
       94 GETTABLEKS                       R13 R13 K24 ["FileSearchTool"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETIMPORT                        R14 K1 [script]
      101 GETTABLEKS                       R14 R14 K25 ["FinalizePlanTool"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETIMPORT                        R15 K1 [script]
      108 GETTABLEKS                       R15 R15 K26 ["FromHistoryTool"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETIMPORT                        R16 K1 [script]
      115 GETTABLEKS                       R16 R16 K27 ["GameTreeTool"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETIMPORT                        R17 K1 [script]
      122 GETTABLEKS                       R17 R17 K28 ["GetConsoleOutputTool"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETIMPORT                        R18 K1 [script]
      129 GETTABLEKS                       R18 R18 K29 ["GetStudioStateTool"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETIMPORT                        R19 K1 [script]
      136 GETTABLEKS                       R19 R19 K30 ["GrepSearchTool"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETIMPORT                        R20 K1 [script]
      143 GETTABLEKS                       R20 R20 K31 ["HttpGetTool"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETIMPORT                        R21 K1 [script]
      150 GETTABLEKS                       R21 R21 K32 ["InspectInstanceTool"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETIMPORT                        R22 K1 [script]
      157 GETTABLEKS                       R22 R22 K33 ["MaterialGenTool"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R23 R0 K15 ["Features"]
      164 GETTABLEKS                       R23 R23 K34 ["MeshGen"]
      166 GETTABLEKS                       R23 R23 K35 ["MeshGenTool"]
      168 CALL                             R22 1 1
      169 GETIMPORT                        R23 K5 [require]
      171 GETIMPORT                        R24 K1 [script]
      173 GETTABLEKS                       R24 R24 K36 ["MultiEditTool"]
      175 CALL                             R23 1 1
      176 GETIMPORT                        R24 K5 [require]
      178 GETIMPORT                        R25 K1 [script]
      180 GETTABLEKS                       R25 R25 K37 ["MultiPlayerAgentsCommunicationTool"]
      182 CALL                             R24 1 1
      183 GETIMPORT                        R25 K5 [require]
      185 GETTABLEKS                       R26 R0 K38 ["PersistentPlanRuntime"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K5 [require]
      190 GETTABLEKS                       R27 R0 K15 ["Features"]
      192 GETTABLEKS                       R27 R27 K39 ["PrimitiveGen"]
      194 GETTABLEKS                       R27 R27 K40 ["PrimitiveGenTool"]
      196 CALL                             R26 1 1
      197 GETIMPORT                        R27 K5 [require]
      199 GETIMPORT                        R28 K1 [script]
      201 GETTABLEKS                       R28 R28 K41 ["QuestionAnswerTool"]
      203 CALL                             R27 1 1
      204 GETIMPORT                        R28 K5 [require]
      206 GETIMPORT                        R29 K1 [script]
      208 GETTABLEKS                       R29 R29 K42 ["ReadFileTool"]
      210 CALL                             R28 1 1
      211 GETIMPORT                        R29 K5 [require]
      213 GETIMPORT                        R30 K1 [script]
      215 GETTABLEKS                       R30 R30 K43 ["ScreenCaptureTool"]
      217 CALL                             R29 1 1
      218 GETIMPORT                        R30 K5 [require]
      220 GETIMPORT                        R31 K1 [script]
      222 GETTABLEKS                       R31 R31 K44 ["SkillTool"]
      224 CALL                             R30 1 1
      225 GETIMPORT                        R31 K5 [require]
      227 GETIMPORT                        R32 K1 [script]
      229 GETTABLEKS                       R32 R32 K45 ["StartMultiPlayerAgentsTool"]
      231 CALL                             R31 1 1
      232 GETIMPORT                        R32 K5 [require]
      234 GETIMPORT                        R33 K1 [script]
      236 GETTABLEKS                       R33 R33 K46 ["StartStopPlayTool"]
      238 CALL                             R32 1 1
      239 GETIMPORT                        R33 K5 [require]
      241 GETIMPORT                        R34 K1 [script]
      243 GETTABLEKS                       R34 R34 K47 ["StopMultiPlayerAgentsTool"]
      245 CALL                             R33 1 1
      246 GETIMPORT                        R34 K5 [require]
      248 GETIMPORT                        R35 K1 [script]
      250 GETTABLEKS                       R35 R35 K48 ["StoreImageTool"]
      252 CALL                             R34 1 1
      253 GETIMPORT                        R35 K5 [require]
      255 GETIMPORT                        R36 K1 [script]
      257 GETTABLEKS                       R36 R36 K49 ["SubagentTool"]
      259 CALL                             R35 1 1
      260 GETIMPORT                        R36 K5 [require]
      262 GETIMPORT                        R37 K1 [script]
      264 GETTABLEKS                       R37 R37 K50 ["UploadImageTool"]
      266 CALL                             R36 1 1
      267 GETIMPORT                        R37 K5 [require]
      269 GETIMPORT                        R38 K1 [script]
      271 GETTABLEKS                       R38 R38 K51 ["UserKeyboardInputTool"]
      273 CALL                             R37 1 1
      274 GETIMPORT                        R38 K5 [require]
      276 GETIMPORT                        R39 K1 [script]
      278 GETTABLEKS                       R39 R39 K52 ["UserMouseInputTool"]
      280 CALL                             R38 1 1
      281 GETIMPORT                        R39 K5 [require]
      283 GETIMPORT                        R40 K1 [script]
      285 GETTABLEKS                       R40 R40 K53 ["VideoCaptureTool"]
      287 CALL                             R39 1 1
      288 GETIMPORT                        R40 K5 [require]
      290 GETIMPORT                        R41 K1 [script]
      292 GETTABLEKS                       R41 R41 K54 ["WaitForMultiPlayerAgentsCommunicationTool"]
      294 CALL                             R40 1 1
      295 GETIMPORT                        R41 K5 [require]
      297 GETIMPORT                        R42 K1 [script]
      299 GETTABLEKS                       R42 R42 K55 ["WaitJobFinishedTool"]
      301 CALL                             R41 1 1
      302 GETIMPORT                        R42 K5 [require]
      304 GETTABLEKS                       R43 R0 K56 ["Flags"]
      306 CALL                             R42 1 1
      307 GETTABLEKS                       R43 R42 K57 ["Shared"]
      309 GETTABLEKS                       R43 R43 K58 ["FFlagAssistantAssetSearchInsertTool"]
      311 GETTABLEKS                       R44 R42 K57 ["Shared"]
      313 GETTABLEKS                       R44 R44 K59 ["FFlagAssistantAssetSearchInsertToolABTest"]
      315 GETTABLEKS                       R45 R42 K57 ["Shared"]
      317 GETTABLEKS                       R45 R45 K60 ["FFlagAssistantAnimationGenTool"]
      319 GETTABLEKS                       R46 R42 K57 ["Shared"]
      321 GETTABLEKS                       R46 R46 K61 ["FFlagProceduralModel"]
      323 GETIMPORT                        R47 K5 [require]
      325 GETTABLEKS                       R48 R0 K56 ["Flags"]
      327 GETTABLEKS                       R48 R48 K62 ["FFlagAssistantMarkdownPlanMode"]
      329 CALL                             R47 1 1
      330 GETTABLEKS                       R48 R42 K57 ["Shared"]
      332 GETTABLEKS                       R48 R48 K63 ["FFlagAssistantMultiPlayerAgents"]
      334 GETTABLEKS                       R49 R42 K57 ["Shared"]
      336 GETTABLEKS                       R49 R49 K64 ["FFlagAssistantGetStudioState"]
      338 GETTABLEKS                       R50 R42 K57 ["Shared"]
      340 GETTABLEKS                       R50 R50 K65 ["FFlagAssistantVideoCaptureTool"]
      342 GETTABLEKS                       R51 R25 K66 ["getRuntimeForMeta"]
      344 GETTABLEKS                       R52 R4 K67 ["ToolNames"]
      346 NEWTABLE                         R53 32 0
      348 GETTABLEKS                       R54 R52 K68 ["ExecuteLuau"]
      350 SETTABLE                         R11 R53 R54
      351 GETTABLEKS                       R54 R52 K69 ["FileSearch"]
      353 SETTABLE                         R12 R53 R54
      354 GETTABLEKS                       R54 R52 K70 ["GameTree"]
      356 SETTABLE                         R15 R53 R54
      357 GETTABLEKS                       R54 R52 K71 ["GrepSearch"]
      359 SETTABLE                         R18 R53 R54
      360 GETTABLEKS                       R54 R52 K72 ["InspectInstance"]
      362 SETTABLE                         R20 R53 R54
      363 GETTABLEKS                       R54 R52 K73 ["MaterialGen"]
      365 SETTABLE                         R21 R53 R54
      366 GETTABLEKS                       R54 R52 K34 ["MeshGen"]
      368 SETTABLE                         R22 R53 R54
      369 GETTABLEKS                       R54 R52 K74 ["MultiEdit"]
      371 SETTABLE                         R23 R53 R54
      372 GETTABLEKS                       R54 R52 K75 ["QuestionAnswer"]
      374 SETTABLE                         R27 R53 R54
      375 GETTABLEKS                       R54 R52 K76 ["ReadFile"]
      377 SETTABLE                         R28 R53 R54
      378 GETTABLEKS                       R54 R52 K77 ["ScreenCapture"]
      380 SETTABLE                         R29 R53 R54
      381 GETTABLEKS                       R54 R52 K78 ["StoreImage"]
      383 SETTABLE                         R34 R53 R54
      384 GETTABLEKS                       R54 R52 K79 ["Subagent"]
      386 SETTABLE                         R35 R53 R54
      387 GETTABLEKS                       R54 R52 K80 ["UploadImage"]
      389 SETTABLE                         R36 R53 R54
      390 GETTABLEKS                       R54 R52 K81 ["Skill"]
      392 SETTABLE                         R30 R53 R54
      393 GETTABLEKS                       R54 R52 K82 ["HttpGet"]
      395 SETTABLE                         R19 R53 R54
      396 GETTABLEKS                       R54 R52 K83 ["FromHistory"]
      398 SETTABLE                         R14 R53 R54
      399 GETTABLEKS                       R54 R52 K75 ["QuestionAnswer"]
      401 SETTABLE                         R27 R53 R54
      402 GETTABLEKS                       R54 R52 K84 ["FinalizePlan"]
      404 SETTABLE                         R13 R53 R54
      405 GETTABLEKS                       R54 R52 K85 ["CompleteTodoItems"]
      407 SETTABLE                         R8 R53 R54
      408 MOVE                             R54 R43
      409 CALL                             R54 0 1
      410 JUMPIF                           R54 ; [+3]
      411 MOVE                             R54 R44
      412 CALL                             R54 0 1
      413 JUMPIFNOT                        R54 ; [+24]
      414 GETTABLEKS                       R54 R52 K86 ["AssetInsert"]
      416 GETIMPORT                        R55 K5 [require]
      418 GETTABLEKS                       R56 R0 K15 ["Features"]
      420 GETTABLEKS                       R56 R56 K87 ["AssetManagement"]
      422 GETTABLEKS                       R56 R56 K88 ["AssetInsertTool"]
      424 CALL                             R55 1 1
      425 SETTABLE                         R55 R53 R54
      426 GETTABLEKS                       R54 R52 K89 ["AssetSearch"]
      428 GETIMPORT                        R55 K5 [require]
      430 GETTABLEKS                       R56 R0 K15 ["Features"]
      432 GETTABLEKS                       R56 R56 K87 ["AssetManagement"]
      434 GETTABLEKS                       R56 R56 K90 ["AssetSearchTool"]
      436 CALL                             R55 1 1
      437 SETTABLE                         R55 R53 R54
      438 MOVE                             R54 R43
      439 CALL                             R54 0 1
      440 JUMPIF                           R54 ; [+6]
      441 GETTABLEKS                       R54 R52 K91 ["CreatorStoreSearch"]
      443 SETTABLE                         R10 R53 R54
      444 GETTABLEKS                       R54 R52 K92 ["CreatorStoreInsert"]
      446 SETTABLE                         R9 R53 R54
      447 MOVE                             R54 R49
      448 CALL                             R54 0 1
      449 JUMPIFNOT                        R54 ; [+3]
      450 GETTABLEKS                       R54 R52 K93 ["GetStudioState"]
      452 SETTABLE                         R17 R53 R54
      453 GETTABLEKS                       R54 R52 K94 ["StartStopPlay"]
      455 SETTABLE                         R32 R53 R54
      456 GETTABLEKS                       R54 R52 K95 ["GetConsoleOutput"]
      458 SETTABLE                         R16 R53 R54
      459 GETTABLEKS                       R54 R52 K96 ["UserKeyboardInput"]
      461 SETTABLE                         R37 R53 R54
      462 GETTABLEKS                       R54 R52 K97 ["UserMouseInput"]
      464 SETTABLE                         R38 R53 R54
      465 GETTABLEKS                       R54 R52 K98 ["CharacterNavigation"]
      467 SETTABLE                         R7 R53 R54
      468 MOVE                             R54 R48
      469 CALL                             R54 0 1
      470 JUMPIFNOT                        R54 ; [+12]
      471 GETTABLEKS                       R54 R52 K99 ["StartMultiPlayerAgents"]
      473 SETTABLE                         R31 R53 R54
      474 GETTABLEKS                       R54 R52 K100 ["StopMultiPlayerAgents"]
      476 SETTABLE                         R33 R53 R54
      477 GETTABLEKS                       R54 R52 K101 ["MultiPlayerAgentsCommunication"]
      479 SETTABLE                         R24 R53 R54
      480 GETTABLEKS                       R54 R52 K102 ["WaitForMultiPlayerAgentsCommunication"]
      482 SETTABLE                         R40 R53 R54
      483 MOVE                             R54 R50
      484 CALL                             R54 0 1
      485 JUMPIFNOT                        R54 ; [+3]
      486 GETTABLEKS                       R54 R52 K103 ["VideoCapture"]
      488 SETTABLE                         R39 R53 R54
      489 MOVE                             R54 R45
      490 CALL                             R54 0 1
      491 JUMPIFNOT                        R54 ; [+3]
      492 GETTABLEKS                       R54 R52 K16 ["AnimationGen"]
      494 SETTABLE                         R6 R53 R54
      495 MOVE                             R54 R46
      496 CALL                             R54 0 1
      497 JUMPIFNOT                        R54 ; [+3]
      498 GETTABLEKS                       R54 R52 K39 ["PrimitiveGen"]
      500 SETTABLE                         R26 R53 R54
      501 MOVE                             R54 R46
      502 CALL                             R54 0 1
      503 JUMPIFNOT                        R54 ; [+3]
      504 GETTABLEKS                       R54 R52 K104 ["WaitJobFinished"]
      506 SETTABLE                         R41 R53 R54
      507 MOVE                             R54 R47
      508 CALL                             R54 0 1
      509 JUMPIFNOT                        R54 ; [+10]
      510 GETTABLEKS                       R54 R52 K105 ["UpdatePlan"]
      512 GETIMPORT                        R55 K5 [require]
      514 GETIMPORT                        R56 K1 [script]
      516 GETTABLEKS                       R56 R56 K106 ["UpdatePlanTool"]
      518 CALL                             R55 1 1
      519 SETTABLE                         R55 R53 R54
      520 DUPCLOSURE                       R54 K107 [PROTO_0]
      521 CAPTURE                          VAL R2
      522 CAPTURE                          VAL R3
      523 CAPTURE                          VAL R51
      524 DUPCLOSURE                       R55 K108 [PROTO_1]
      525 CAPTURE                          VAL R5
      526 DUPTABLE                         R56 K112 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      527 SETTABLEKS                       R4 R56 K12 ["ToolTypes"]
      529 SETTABLEKS                       R53 R56 K109 ["BuiltinTools"]
      531 SETTABLEKS                       R54 R56 K110 ["createTools"]
      533 SETTABLEKS                       R55 R56 K111 ["registerTools"]
      535 RETURN                           R56 1
