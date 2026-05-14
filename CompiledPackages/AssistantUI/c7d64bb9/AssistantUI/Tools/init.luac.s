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
       15 DUPTABLE                         R11 K5 [{"networking", "environment", "externalHooks", "getPersistentPlanRuntime"}]
       16 SETTABLEKS                       R0 R11 K1 ["networking"]
       18 SETTABLEKS                       R2 R11 K2 ["environment"]
       20 SETTABLEKS                       R3 R11 K3 ["externalHooks"]
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
       25 GETTABLEKS                       R4 R4 K11 ["ExternalHooks"]
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
      302 GETTABLEKS                       R47 R35 K50 ["Shared"]
      304 GETTABLEKS                       R47 R47 K62 ["FFlagEnableHttpGetTool"]
      306 GETIMPORT                        R48 K5 [require]
      308 GETTABLEKS                       R49 R0 K49 ["Flags"]
      310 GETTABLEKS                       R49 R49 K63 ["FFlagAssistantContextCompaction"]
      312 CALL                             R48 1 1
      313 GETTABLEKS                       R49 R35 K50 ["Shared"]
      315 GETTABLEKS                       R49 R49 K64 ["FFlagEnableStoreImageTool"]
      317 GETTABLEKS                       R50 R21 K65 ["getRuntimeForMeta"]
      319 GETTABLEKS                       R51 R4 K66 ["ToolNames"]
      321 NEWTABLE                         R52 16 0
      323 GETTABLEKS                       R53 R51 K67 ["ExecuteLuau"]
      325 SETTABLE                         R10 R52 R53
      326 GETTABLEKS                       R53 R51 K68 ["FileSearch"]
      328 SETTABLE                         R11 R52 R53
      329 GETTABLEKS                       R53 R51 K69 ["GameTree"]
      331 SETTABLE                         R12 R52 R53
      332 GETTABLEKS                       R53 R51 K70 ["GrepSearch"]
      334 SETTABLE                         R14 R52 R53
      335 GETTABLEKS                       R53 R51 K71 ["InspectInstance"]
      337 SETTABLE                         R16 R52 R53
      338 GETTABLEKS                       R53 R51 K72 ["MaterialGen"]
      340 SETTABLE                         R18 R52 R53
      341 GETTABLEKS                       R53 R51 K31 ["MeshGen"]
      343 MOVE                             R55 R40
      344 CALL                             R55 0 1
      345 JUMPIFNOT                        R55 ; [+2]
      346 MOVE                             R54 R19
      347 JUMP                             ; [+1]
      348 LOADNIL                          R54
      349 SETTABLE                         R54 R52 R53
      350 GETTABLEKS                       R53 R51 K73 ["MultiEdit"]
      352 SETTABLE                         R20 R52 R53
      353 GETTABLEKS                       R53 R51 K74 ["QuestionAnswer"]
      355 SETTABLE                         R23 R52 R53
      356 GETTABLEKS                       R53 R51 K75 ["ReadFile"]
      358 SETTABLE                         R24 R52 R53
      359 GETTABLEKS                       R53 R51 K76 ["ScreenCapture"]
      361 SETTABLE                         R25 R52 R53
      362 GETTABLEKS                       R53 R51 K77 ["Subagent"]
      364 SETTABLE                         R29 R52 R53
      365 GETTABLEKS                       R53 R51 K78 ["UploadImage"]
      367 SETTABLE                         R30 R52 R53
      368 MOVE                             R53 R37
      369 CALL                             R53 0 1
      370 JUMPIF                           R53 ; [+3]
      371 MOVE                             R53 R38
      372 CALL                             R53 0 1
      373 JUMPIFNOT                        R53 ; [+24]
      374 GETTABLEKS                       R53 R51 K79 ["AssetInsert"]
      376 GETIMPORT                        R54 K5 [require]
      378 GETTABLEKS                       R55 R0 K15 ["Features"]
      380 GETTABLEKS                       R55 R55 K80 ["AssetManagement"]
      382 GETTABLEKS                       R55 R55 K81 ["AssetInsertTool"]
      384 CALL                             R54 1 1
      385 SETTABLE                         R54 R52 R53
      386 GETTABLEKS                       R53 R51 K82 ["AssetSearch"]
      388 GETIMPORT                        R54 K5 [require]
      390 GETTABLEKS                       R55 R0 K15 ["Features"]
      392 GETTABLEKS                       R55 R55 K80 ["AssetManagement"]
      394 GETTABLEKS                       R55 R55 K83 ["AssetSearchTool"]
      396 CALL                             R54 1 1
      397 SETTABLE                         R54 R52 R53
      398 MOVE                             R53 R37
      399 CALL                             R53 0 1
      400 JUMPIF                           R53 ; [+13]
      401 MOVE                             R53 R39
      402 CALL                             R53 0 1
      403 JUMPIFNOT                        R53 ; [+7]
      404 GETTABLEKS                       R53 R51 K84 ["CreatorStoreSearch"]
      406 SETTABLE                         R9 R52 R53
      407 GETTABLEKS                       R53 R51 K85 ["CreatorStoreInsert"]
      409 SETTABLE                         R8 R52 R53
      410 JUMP                             ; [+3]
      411 GETTABLEKS                       R53 R51 K86 ["InsertFromMarketplace"]
      413 SETTABLE                         R17 R52 R53
      414 GETTABLEKS                       R53 R51 K87 ["StartStopPlay"]
      416 SETTABLE                         R27 R52 R53
      417 GETTABLEKS                       R53 R51 K88 ["GetConsoleOutput"]
      419 SETTABLE                         R13 R52 R53
      420 GETTABLEKS                       R53 R51 K89 ["UserKeyboardInput"]
      422 SETTABLE                         R31 R52 R53
      423 GETTABLEKS                       R53 R51 K90 ["UserMouseInput"]
      425 SETTABLE                         R32 R52 R53
      426 GETTABLEKS                       R53 R51 K91 ["CharacterNavigation"]
      428 SETTABLE                         R7 R52 R53
      429 MOVE                             R53 R41
      430 CALL                             R53 0 1
      431 JUMPIFNOT                        R53 ; [+3]
      432 GETTABLEKS                       R53 R51 K16 ["AnimationGen"]
      434 SETTABLE                         R6 R52 R53
      435 MOVE                             R53 R42
      436 CALL                             R53 0 1
      437 JUMPIFNOT                        R53 ; [+6]
      438 MOVE                             R53 R44
      439 CALL                             R53 0 1
      440 JUMPIFNOT                        R53 ; [+3]
      441 GETTABLEKS                       R53 R51 K35 ["PrimitiveGen"]
      443 SETTABLE                         R22 R52 R53
      444 MOVE                             R53 R43
      445 CALL                             R53 0 1
      446 JUMPIFNOT                        R53 ; [+9]
      447 MOVE                             R53 R44
      448 CALL                             R53 0 1
      449 JUMPIFNOT                        R53 ; [+6]
      450 MOVE                             R53 R42
      451 CALL                             R53 0 1
      452 JUMPIFNOT                        R53 ; [+3]
      453 GETTABLEKS                       R53 R51 K92 ["WaitJobFinished"]
      455 SETTABLE                         R33 R52 R53
      456 MOVE                             R53 R36
      457 CALL                             R53 0 1
      458 JUMPIFNOT                        R53 ; [+3]
      459 GETTABLEKS                       R53 R51 K93 ["Skill"]
      461 SETTABLE                         R26 R52 R53
      462 MOVE                             R53 R45
      463 CALL                             R53 0 1
      464 JUMPIFNOT                        R53 ; [+3]
      465 GETTABLEKS                       R53 R51 K74 ["QuestionAnswer"]
      467 SETTABLE                         R23 R52 R53
      468 MOVE                             R53 R47
      469 CALL                             R53 0 1
      470 JUMPIFNOT                        R53 ; [+3]
      471 GETTABLEKS                       R53 R51 K94 ["HttpGet"]
      473 SETTABLE                         R15 R52 R53
      474 MOVE                             R53 R46
      475 CALL                             R53 0 1
      476 JUMPIFNOT                        R53 ; [+20]
      477 GETTABLEKS                       R53 R51 K95 ["FinalizePlan"]
      479 GETIMPORT                        R54 K5 [require]
      481 GETIMPORT                        R55 K1 [script]
      483 GETTABLEKS                       R55 R55 K96 ["FinalizePlanTool"]
      485 CALL                             R54 1 1
      486 SETTABLE                         R54 R52 R53
      487 GETTABLEKS                       R53 R51 K97 ["CompleteTodoItems"]
      489 GETIMPORT                        R54 K5 [require]
      491 GETIMPORT                        R55 K1 [script]
      493 GETTABLEKS                       R55 R55 K98 ["CompleteTodoItemsTool"]
      495 CALL                             R54 1 1
      496 SETTABLE                         R54 R52 R53
      497 MOVE                             R53 R48
      498 CALL                             R53 0 1
      499 JUMPIFNOT                        R53 ; [+3]
      500 GETTABLEKS                       R53 R51 K99 ["FromHistory"]
      502 SETTABLE                         R34 R52 R53
      503 MOVE                             R53 R49
      504 CALL                             R53 0 1
      505 JUMPIFNOT                        R53 ; [+3]
      506 GETTABLEKS                       R53 R51 K100 ["StoreImage"]
      508 SETTABLE                         R28 R52 R53
      509 DUPCLOSURE                       R53 K101 [PROTO_0]
      510 CAPTURE                          VAL R2
      511 CAPTURE                          VAL R3
      512 CAPTURE                          VAL R46
      513 CAPTURE                          VAL R50
      514 DUPCLOSURE                       R54 K102 [PROTO_1]
      515 CAPTURE                          VAL R5
      516 DUPTABLE                         R55 K106 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      517 SETTABLEKS                       R4 R55 K12 ["ToolTypes"]
      519 SETTABLEKS                       R52 R55 K103 ["BuiltinTools"]
      521 SETTABLEKS                       R53 R55 K104 ["createTools"]
      523 SETTABLEKS                       R54 R55 K105 ["registerTools"]
      525 RETURN                           R55 1
