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
       94 GETTABLEKS                       R13 R13 K24 ["GameTreeTool"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETIMPORT                        R14 K1 [script]
      101 GETTABLEKS                       R14 R14 K25 ["GetConsoleOutputTool"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETIMPORT                        R15 K1 [script]
      108 GETTABLEKS                       R15 R15 K26 ["GrepSearchTool"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETIMPORT                        R16 K1 [script]
      115 GETTABLEKS                       R16 R16 K27 ["HttpGetTool"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETIMPORT                        R17 K1 [script]
      122 GETTABLEKS                       R17 R17 K28 ["InspectInstanceTool"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETIMPORT                        R18 K1 [script]
      129 GETTABLEKS                       R18 R18 K29 ["MarketplaceInsertionTool"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETIMPORT                        R19 K1 [script]
      136 GETTABLEKS                       R19 R19 K30 ["MaterialGenTool"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K15 ["Features"]
      143 GETTABLEKS                       R20 R20 K31 ["MeshGen"]
      145 GETTABLEKS                       R20 R20 K32 ["MeshGenTool"]
      147 CALL                             R19 1 1
      148 GETIMPORT                        R20 K5 [require]
      150 GETIMPORT                        R21 K1 [script]
      152 GETTABLEKS                       R21 R21 K33 ["MultiEditTool"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K5 [require]
      157 GETTABLEKS                       R22 R0 K34 ["PersistentPlanRuntime"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R23 R0 K15 ["Features"]
      164 GETTABLEKS                       R23 R23 K35 ["PrimitiveGen"]
      166 GETTABLEKS                       R23 R23 K36 ["PrimitiveGenTool"]
      168 CALL                             R22 1 1
      169 GETIMPORT                        R23 K5 [require]
      171 GETIMPORT                        R24 K1 [script]
      173 GETTABLEKS                       R24 R24 K37 ["QuestionAnswerTool"]
      175 CALL                             R23 1 1
      176 GETIMPORT                        R24 K5 [require]
      178 GETIMPORT                        R25 K1 [script]
      180 GETTABLEKS                       R25 R25 K38 ["ReadFileTool"]
      182 CALL                             R24 1 1
      183 GETIMPORT                        R25 K5 [require]
      185 GETIMPORT                        R26 K1 [script]
      187 GETTABLEKS                       R26 R26 K39 ["ScreenCaptureTool"]
      189 CALL                             R25 1 1
      190 GETIMPORT                        R26 K5 [require]
      192 GETIMPORT                        R27 K1 [script]
      194 GETTABLEKS                       R27 R27 K40 ["SkillTool"]
      196 CALL                             R26 1 1
      197 GETIMPORT                        R27 K5 [require]
      199 GETIMPORT                        R28 K1 [script]
      201 GETTABLEKS                       R28 R28 K41 ["StartStopPlayTool"]
      203 CALL                             R27 1 1
      204 GETIMPORT                        R28 K5 [require]
      206 GETIMPORT                        R29 K1 [script]
      208 GETTABLEKS                       R29 R29 K42 ["StoreImageTool"]
      210 CALL                             R28 1 1
      211 GETIMPORT                        R29 K5 [require]
      213 GETIMPORT                        R30 K1 [script]
      215 GETTABLEKS                       R30 R30 K43 ["SubagentTool"]
      217 CALL                             R29 1 1
      218 GETIMPORT                        R30 K5 [require]
      220 GETIMPORT                        R31 K1 [script]
      222 GETTABLEKS                       R31 R31 K44 ["UploadImageTool"]
      224 CALL                             R30 1 1
      225 GETIMPORT                        R31 K5 [require]
      227 GETIMPORT                        R32 K1 [script]
      229 GETTABLEKS                       R32 R32 K45 ["UserKeyboardInputTool"]
      231 CALL                             R31 1 1
      232 GETIMPORT                        R32 K5 [require]
      234 GETIMPORT                        R33 K1 [script]
      236 GETTABLEKS                       R33 R33 K46 ["UserMouseInputTool"]
      238 CALL                             R32 1 1
      239 GETIMPORT                        R33 K5 [require]
      241 GETIMPORT                        R34 K1 [script]
      243 GETTABLEKS                       R34 R34 K47 ["WaitJobFinishedTool"]
      245 CALL                             R33 1 1
      246 GETIMPORT                        R34 K5 [require]
      248 GETIMPORT                        R35 K1 [script]
      250 GETTABLEKS                       R35 R35 K48 ["FromHistoryTool"]
      252 CALL                             R34 1 1
      253 GETIMPORT                        R35 K5 [require]
      255 GETTABLEKS                       R36 R0 K49 ["Flags"]
      257 CALL                             R35 1 1
      258 GETTABLEKS                       R36 R35 K50 ["Shared"]
      260 GETTABLEKS                       R36 R36 K51 ["FFlagEnableSkills"]
      262 GETTABLEKS                       R37 R35 K50 ["Shared"]
      264 GETTABLEKS                       R37 R37 K52 ["FFlagAssistantAssetSearchInsertTool"]
      266 GETTABLEKS                       R38 R35 K50 ["Shared"]
      268 GETTABLEKS                       R38 R38 K53 ["FFlagAssistantAssetSearchInsertToolABTest"]
      270 GETTABLEKS                       R39 R35 K50 ["Shared"]
      272 GETTABLEKS                       R39 R39 K54 ["FFlagAssistantUseNewCreatorStoreTools"]
      274 GETTABLEKS                       R40 R35 K50 ["Shared"]
      276 GETTABLEKS                       R40 R40 K55 ["FFlagAssistantUseNewMeshGenTool"]
      278 GETTABLEKS                       R41 R35 K50 ["Shared"]
      280 GETTABLEKS                       R41 R41 K56 ["FFlagAssistantAnimationGenTool"]
      282 GETTABLEKS                       R42 R35 K50 ["Shared"]
      284 GETTABLEKS                       R42 R42 K57 ["FFlagEnablePrimitiveGenTool"]
      286 GETTABLEKS                       R43 R35 K50 ["Shared"]
      288 GETTABLEKS                       R43 R43 K58 ["FFlagEnableWaitJobFinishedTool"]
      290 GETTABLEKS                       R44 R35 K50 ["Shared"]
      292 GETTABLEKS                       R44 R44 K59 ["FFlagProceduralModel"]
      294 GETTABLEKS                       R45 R35 K50 ["Shared"]
      296 GETTABLEKS                       R45 R45 K60 ["FFlagAssistantQuestionAnswerTool"]
      298 GETTABLEKS                       R46 R35 K50 ["Shared"]
      300 GETTABLEKS                       R46 R46 K61 ["FFlagAssistantPlanMode"]
      302 GETIMPORT                        R47 K5 [require]
      304 GETTABLEKS                       R48 R0 K49 ["Flags"]
      306 GETTABLEKS                       R48 R48 K62 ["FFlagAssistantMarkdownPlanMode"]
      308 CALL                             R47 1 1
      309 GETTABLEKS                       R48 R35 K50 ["Shared"]
      311 GETTABLEKS                       R48 R48 K63 ["FFlagEnableHttpGetTool"]
      313 GETIMPORT                        R49 K5 [require]
      315 GETTABLEKS                       R50 R0 K49 ["Flags"]
      317 GETTABLEKS                       R50 R50 K64 ["FFlagAssistantContextCompaction"]
      319 CALL                             R49 1 1
      320 GETTABLEKS                       R50 R35 K50 ["Shared"]
      322 GETTABLEKS                       R50 R50 K65 ["FFlagEnableStoreImageTool"]
      324 GETTABLEKS                       R51 R21 K66 ["getRuntimeForMeta"]
      326 GETTABLEKS                       R52 R4 K67 ["ToolNames"]
      328 NEWTABLE                         R53 16 0
      330 GETTABLEKS                       R54 R52 K68 ["ExecuteLuau"]
      332 SETTABLE                         R10 R53 R54
      333 GETTABLEKS                       R54 R52 K69 ["FileSearch"]
      335 SETTABLE                         R11 R53 R54
      336 GETTABLEKS                       R54 R52 K70 ["GameTree"]
      338 SETTABLE                         R12 R53 R54
      339 GETTABLEKS                       R54 R52 K71 ["GrepSearch"]
      341 SETTABLE                         R14 R53 R54
      342 GETTABLEKS                       R54 R52 K72 ["InspectInstance"]
      344 SETTABLE                         R16 R53 R54
      345 GETTABLEKS                       R54 R52 K73 ["MaterialGen"]
      347 SETTABLE                         R18 R53 R54
      348 GETTABLEKS                       R54 R52 K31 ["MeshGen"]
      350 MOVE                             R56 R40
      351 CALL                             R56 0 1
      352 JUMPIFNOT                        R56 ; [+2]
      353 MOVE                             R55 R19
      354 JUMP                             ; [+1]
      355 LOADNIL                          R55
      356 SETTABLE                         R55 R53 R54
      357 GETTABLEKS                       R54 R52 K74 ["MultiEdit"]
      359 SETTABLE                         R20 R53 R54
      360 GETTABLEKS                       R54 R52 K75 ["QuestionAnswer"]
      362 SETTABLE                         R23 R53 R54
      363 GETTABLEKS                       R54 R52 K76 ["ReadFile"]
      365 SETTABLE                         R24 R53 R54
      366 GETTABLEKS                       R54 R52 K77 ["ScreenCapture"]
      368 SETTABLE                         R25 R53 R54
      369 GETTABLEKS                       R54 R52 K78 ["Subagent"]
      371 SETTABLE                         R29 R53 R54
      372 GETTABLEKS                       R54 R52 K79 ["UploadImage"]
      374 SETTABLE                         R30 R53 R54
      375 MOVE                             R54 R37
      376 CALL                             R54 0 1
      377 JUMPIF                           R54 ; [+3]
      378 MOVE                             R54 R38
      379 CALL                             R54 0 1
      380 JUMPIFNOT                        R54 ; [+24]
      381 GETTABLEKS                       R54 R52 K80 ["AssetInsert"]
      383 GETIMPORT                        R55 K5 [require]
      385 GETTABLEKS                       R56 R0 K15 ["Features"]
      387 GETTABLEKS                       R56 R56 K81 ["AssetManagement"]
      389 GETTABLEKS                       R56 R56 K82 ["AssetInsertTool"]
      391 CALL                             R55 1 1
      392 SETTABLE                         R55 R53 R54
      393 GETTABLEKS                       R54 R52 K83 ["AssetSearch"]
      395 GETIMPORT                        R55 K5 [require]
      397 GETTABLEKS                       R56 R0 K15 ["Features"]
      399 GETTABLEKS                       R56 R56 K81 ["AssetManagement"]
      401 GETTABLEKS                       R56 R56 K84 ["AssetSearchTool"]
      403 CALL                             R55 1 1
      404 SETTABLE                         R55 R53 R54
      405 MOVE                             R54 R37
      406 CALL                             R54 0 1
      407 JUMPIF                           R54 ; [+13]
      408 MOVE                             R54 R39
      409 CALL                             R54 0 1
      410 JUMPIFNOT                        R54 ; [+7]
      411 GETTABLEKS                       R54 R52 K85 ["CreatorStoreSearch"]
      413 SETTABLE                         R9 R53 R54
      414 GETTABLEKS                       R54 R52 K86 ["CreatorStoreInsert"]
      416 SETTABLE                         R8 R53 R54
      417 JUMP                             ; [+3]
      418 GETTABLEKS                       R54 R52 K87 ["InsertFromMarketplace"]
      420 SETTABLE                         R17 R53 R54
      421 GETTABLEKS                       R54 R52 K88 ["StartStopPlay"]
      423 SETTABLE                         R27 R53 R54
      424 GETTABLEKS                       R54 R52 K89 ["GetConsoleOutput"]
      426 SETTABLE                         R13 R53 R54
      427 GETTABLEKS                       R54 R52 K90 ["UserKeyboardInput"]
      429 SETTABLE                         R31 R53 R54
      430 GETTABLEKS                       R54 R52 K91 ["UserMouseInput"]
      432 SETTABLE                         R32 R53 R54
      433 GETTABLEKS                       R54 R52 K92 ["CharacterNavigation"]
      435 SETTABLE                         R7 R53 R54
      436 MOVE                             R54 R41
      437 CALL                             R54 0 1
      438 JUMPIFNOT                        R54 ; [+3]
      439 GETTABLEKS                       R54 R52 K16 ["AnimationGen"]
      441 SETTABLE                         R6 R53 R54
      442 MOVE                             R54 R42
      443 CALL                             R54 0 1
      444 JUMPIFNOT                        R54 ; [+6]
      445 MOVE                             R54 R44
      446 CALL                             R54 0 1
      447 JUMPIFNOT                        R54 ; [+3]
      448 GETTABLEKS                       R54 R52 K35 ["PrimitiveGen"]
      450 SETTABLE                         R22 R53 R54
      451 MOVE                             R54 R43
      452 CALL                             R54 0 1
      453 JUMPIFNOT                        R54 ; [+9]
      454 MOVE                             R54 R44
      455 CALL                             R54 0 1
      456 JUMPIFNOT                        R54 ; [+6]
      457 MOVE                             R54 R42
      458 CALL                             R54 0 1
      459 JUMPIFNOT                        R54 ; [+3]
      460 GETTABLEKS                       R54 R52 K93 ["WaitJobFinished"]
      462 SETTABLE                         R33 R53 R54
      463 MOVE                             R54 R36
      464 CALL                             R54 0 1
      465 JUMPIFNOT                        R54 ; [+3]
      466 GETTABLEKS                       R54 R52 K94 ["Skill"]
      468 SETTABLE                         R26 R53 R54
      469 MOVE                             R54 R45
      470 CALL                             R54 0 1
      471 JUMPIFNOT                        R54 ; [+3]
      472 GETTABLEKS                       R54 R52 K75 ["QuestionAnswer"]
      474 SETTABLE                         R23 R53 R54
      475 MOVE                             R54 R48
      476 CALL                             R54 0 1
      477 JUMPIFNOT                        R54 ; [+3]
      478 GETTABLEKS                       R54 R52 K95 ["HttpGet"]
      480 SETTABLE                         R15 R53 R54
      481 MOVE                             R54 R46
      482 CALL                             R54 0 1
      483 JUMPIFNOT                        R54 ; [+33]
      484 GETTABLEKS                       R54 R52 K96 ["FinalizePlan"]
      486 GETIMPORT                        R55 K5 [require]
      488 GETIMPORT                        R56 K1 [script]
      490 GETTABLEKS                       R56 R56 K97 ["FinalizePlanTool"]
      492 CALL                             R55 1 1
      493 SETTABLE                         R55 R53 R54
      494 GETTABLEKS                       R54 R52 K98 ["CompleteTodoItems"]
      496 GETIMPORT                        R55 K5 [require]
      498 GETIMPORT                        R56 K1 [script]
      500 GETTABLEKS                       R56 R56 K99 ["CompleteTodoItemsTool"]
      502 CALL                             R55 1 1
      503 SETTABLE                         R55 R53 R54
      504 MOVE                             R54 R47
      505 CALL                             R54 0 1
      506 JUMPIFNOT                        R54 ; [+10]
      507 GETTABLEKS                       R54 R52 K100 ["UpdatePlan"]
      509 GETIMPORT                        R55 K5 [require]
      511 GETIMPORT                        R56 K1 [script]
      513 GETTABLEKS                       R56 R56 K101 ["UpdatePlanTool"]
      515 CALL                             R55 1 1
      516 SETTABLE                         R55 R53 R54
      517 MOVE                             R54 R49
      518 CALL                             R54 0 1
      519 JUMPIFNOT                        R54 ; [+3]
      520 GETTABLEKS                       R54 R52 K102 ["FromHistory"]
      522 SETTABLE                         R34 R53 R54
      523 MOVE                             R54 R50
      524 CALL                             R54 0 1
      525 JUMPIFNOT                        R54 ; [+3]
      526 GETTABLEKS                       R54 R52 K103 ["StoreImage"]
      528 SETTABLE                         R28 R53 R54
      529 DUPCLOSURE                       R54 K104 [PROTO_0]
      530 CAPTURE                          VAL R2
      531 CAPTURE                          VAL R3
      532 CAPTURE                          VAL R46
      533 CAPTURE                          VAL R51
      534 DUPCLOSURE                       R55 K105 [PROTO_1]
      535 CAPTURE                          VAL R5
      536 DUPTABLE                         R56 K109 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      537 SETTABLEKS                       R4 R56 K12 ["ToolTypes"]
      539 SETTABLEKS                       R53 R56 K106 ["BuiltinTools"]
      541 SETTABLEKS                       R54 R56 K107 ["createTools"]
      543 SETTABLEKS                       R55 R56 K108 ["registerTools"]
      545 RETURN                           R56 1
