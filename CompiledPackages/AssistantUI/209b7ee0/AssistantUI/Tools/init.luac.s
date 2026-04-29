PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["get"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["get"]
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
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K0 ["registerTool"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R4 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Hooks"]
       25 GETTABLEKS                       R4 R5 K11 ["ExternalHooks"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R5 R6 K12 ["ToolTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Components"]
       39 GETTABLEKS                       R6 R7 K14 ["UIToolRegistry"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K15 ["Features"]
       46 GETTABLEKS                       R8 R9 K16 ["AnimationGen"]
       48 GETTABLEKS                       R7 R8 K17 ["AnimationGenTool"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETIMPORT                        R9 K1 [script]
       55 GETTABLEKS                       R8 R9 K18 ["CharacterNavigationTool"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R11 R0 K15 ["Features"]
       62 GETTABLEKS                       R10 R11 K19 ["CreatorStore"]
       64 GETTABLEKS                       R9 R10 K20 ["CreatorStoreInsertTool"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R12 R0 K15 ["Features"]
       71 GETTABLEKS                       R11 R12 K19 ["CreatorStore"]
       73 GETTABLEKS                       R10 R11 K21 ["CreatorStoreSearchTool"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETIMPORT                        R12 K1 [script]
       80 GETTABLEKS                       R11 R12 K22 ["ExecuteLuauTool"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETIMPORT                        R13 K1 [script]
       87 GETTABLEKS                       R12 R13 K23 ["FileSearchTool"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETIMPORT                        R14 K1 [script]
       94 GETTABLEKS                       R13 R14 K24 ["GameTreeTool"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETIMPORT                        R15 K1 [script]
      101 GETTABLEKS                       R14 R15 K25 ["GetConsoleOutputTool"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETIMPORT                        R16 K1 [script]
      108 GETTABLEKS                       R15 R16 K26 ["GrepSearchTool"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETIMPORT                        R17 K1 [script]
      115 GETTABLEKS                       R16 R17 K27 ["GrepTool"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETIMPORT                        R18 K1 [script]
      122 GETTABLEKS                       R17 R18 K28 ["HttpGetTool"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETIMPORT                        R19 K1 [script]
      129 GETTABLEKS                       R18 R19 K29 ["InspectInstanceTool"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETIMPORT                        R20 K1 [script]
      136 GETTABLEKS                       R19 R20 K30 ["MarketplaceInsertionTool"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETIMPORT                        R21 K1 [script]
      143 GETTABLEKS                       R20 R21 K31 ["MaterialGenTool"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R23 R0 K15 ["Features"]
      150 GETTABLEKS                       R22 R23 K32 ["MeshGen"]
      152 GETTABLEKS                       R21 R22 K33 ["MeshGenTool"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K5 [require]
      157 GETIMPORT                        R23 K1 [script]
      159 GETTABLEKS                       R22 R23 K34 ["MultiEditTool"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K5 [require]
      164 GETTABLEKS                       R23 R0 K35 ["PersistentPlanRuntime"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K5 [require]
      169 GETTABLEKS                       R26 R0 K15 ["Features"]
      171 GETTABLEKS                       R25 R26 K36 ["PrimitiveGen"]
      173 GETTABLEKS                       R24 R25 K37 ["PrimitiveGenTool"]
      175 CALL                             R23 1 1
      176 GETIMPORT                        R24 K5 [require]
      178 GETIMPORT                        R26 K1 [script]
      180 GETTABLEKS                       R25 R26 K38 ["QuestionAnswerTool"]
      182 CALL                             R24 1 1
      183 GETIMPORT                        R25 K5 [require]
      185 GETIMPORT                        R27 K1 [script]
      187 GETTABLEKS                       R26 R27 K39 ["ReadFileTool"]
      189 CALL                             R25 1 1
      190 GETIMPORT                        R26 K5 [require]
      192 GETIMPORT                        R28 K1 [script]
      194 GETTABLEKS                       R27 R28 K40 ["ScreenCaptureTool"]
      196 CALL                             R26 1 1
      197 GETIMPORT                        R27 K5 [require]
      199 GETIMPORT                        R29 K1 [script]
      201 GETTABLEKS                       R28 R29 K41 ["SkillTool"]
      203 CALL                             R27 1 1
      204 GETIMPORT                        R28 K5 [require]
      206 GETIMPORT                        R30 K1 [script]
      208 GETTABLEKS                       R29 R30 K42 ["StartStopPlayTool"]
      210 CALL                             R28 1 1
      211 GETIMPORT                        R29 K5 [require]
      213 GETIMPORT                        R31 K1 [script]
      215 GETTABLEKS                       R30 R31 K43 ["StoreImageTool"]
      217 CALL                             R29 1 1
      218 GETIMPORT                        R30 K5 [require]
      220 GETIMPORT                        R32 K1 [script]
      222 GETTABLEKS                       R31 R32 K44 ["SubagentTool"]
      224 CALL                             R30 1 1
      225 GETIMPORT                        R31 K5 [require]
      227 GETIMPORT                        R33 K1 [script]
      229 GETTABLEKS                       R32 R33 K45 ["TestGameTool"]
      231 CALL                             R31 1 1
      232 GETIMPORT                        R32 K5 [require]
      234 GETIMPORT                        R34 K1 [script]
      236 GETTABLEKS                       R33 R34 K46 ["UploadImageTool"]
      238 CALL                             R32 1 1
      239 GETIMPORT                        R33 K5 [require]
      241 GETIMPORT                        R35 K1 [script]
      243 GETTABLEKS                       R34 R35 K47 ["UserKeyboardInputTool"]
      245 CALL                             R33 1 1
      246 GETIMPORT                        R34 K5 [require]
      248 GETIMPORT                        R36 K1 [script]
      250 GETTABLEKS                       R35 R36 K48 ["UserMouseInputTool"]
      252 CALL                             R34 1 1
      253 GETIMPORT                        R35 K5 [require]
      255 GETIMPORT                        R37 K1 [script]
      257 GETTABLEKS                       R36 R37 K49 ["WaitJobFinishedTool"]
      259 CALL                             R35 1 1
      260 GETIMPORT                        R36 K5 [require]
      262 GETIMPORT                        R38 K1 [script]
      264 GETTABLEKS                       R37 R38 K50 ["FromHistoryTool"]
      266 CALL                             R36 1 1
      267 GETIMPORT                        R37 K5 [require]
      269 GETTABLEKS                       R38 R0 K51 ["Flags"]
      271 CALL                             R37 1 1
      272 GETTABLEKS                       R39 R37 K52 ["Shared"]
      274 GETTABLEKS                       R38 R39 K53 ["FFlagEnableSkills"]
      276 GETTABLEKS                       R40 R37 K52 ["Shared"]
      278 GETTABLEKS                       R39 R40 K54 ["FFlagAssistantDebugMode"]
      280 GETTABLEKS                       R41 R37 K52 ["Shared"]
      282 GETTABLEKS                       R40 R41 K55 ["FFlagAssistantTestAutomation"]
      284 GETTABLEKS                       R42 R37 K52 ["Shared"]
      286 GETTABLEKS                       R41 R42 K56 ["FFlagAssistantUseNewCreatorStoreTools"]
      288 GETTABLEKS                       R43 R37 K52 ["Shared"]
      290 GETTABLEKS                       R42 R43 K57 ["FFlagAssistantUseNewMeshGenTool"]
      292 GETTABLEKS                       R44 R37 K52 ["Shared"]
      294 GETTABLEKS                       R43 R44 K58 ["FFlagAssistantAnimationGenTool"]
      296 GETTABLEKS                       R45 R37 K52 ["Shared"]
      298 GETTABLEKS                       R44 R45 K59 ["FFlagEnablePrimitiveGenTool"]
      300 GETTABLEKS                       R46 R37 K52 ["Shared"]
      302 GETTABLEKS                       R45 R46 K60 ["FFlagEnableWaitJobFinishedTool"]
      304 GETTABLEKS                       R47 R37 K52 ["Shared"]
      306 GETTABLEKS                       R46 R47 K61 ["FFlagProceduralModel"]
      308 GETTABLEKS                       R48 R37 K52 ["Shared"]
      310 GETTABLEKS                       R47 R48 K62 ["FFlagAssistantQuestionAnswerTool"]
      312 GETTABLEKS                       R49 R37 K52 ["Shared"]
      314 GETTABLEKS                       R48 R49 K63 ["FFlagAssistantPlanMode"]
      316 GETTABLEKS                       R50 R37 K52 ["Shared"]
      318 GETTABLEKS                       R49 R50 K64 ["FFlagEnableHttpGetTool"]
      320 GETIMPORT                        R50 K5 [require]
      322 GETTABLEKS                       R52 R0 K51 ["Flags"]
      324 GETTABLEKS                       R51 R52 K65 ["FFlagAssistantContextCompaction"]
      326 CALL                             R50 1 1
      327 GETTABLEKS                       R52 R37 K52 ["Shared"]
      329 GETTABLEKS                       R51 R52 K66 ["FFlagEnableStoreImageTool"]
      331 GETTABLEKS                       R52 R22 K67 ["getRuntimeForMeta"]
      333 GETTABLEKS                       R53 R4 K68 ["ToolNames"]
      335 NEWTABLE                         R54 16 0
      337 GETTABLEKS                       R55 R53 K69 ["ExecuteLuau"]
      339 SETTABLE                         R10 R54 R55
      340 GETTABLEKS                       R55 R53 K70 ["FileSearch"]
      342 SETTABLE                         R11 R54 R55
      343 GETTABLEKS                       R55 R53 K71 ["GameTree"]
      345 SETTABLE                         R12 R54 R55
      346 GETTABLEKS                       R55 R53 K72 ["Grep"]
      348 SETTABLE                         R15 R54 R55
      349 GETTABLEKS                       R55 R53 K73 ["GrepSearch"]
      351 SETTABLE                         R14 R54 R55
      352 GETTABLEKS                       R55 R53 K74 ["InspectInstance"]
      354 SETTABLE                         R17 R54 R55
      355 GETTABLEKS                       R55 R53 K75 ["MaterialGen"]
      357 SETTABLE                         R19 R54 R55
      358 GETTABLEKS                       R55 R53 K32 ["MeshGen"]
      360 MOVE                             R57 R42
      361 CALL                             R57 0 1
      362 JUMPIFNOT                        R57 ; [+2]
      363 MOVE                             R56 R20
      364 JUMP                             ; [+1]
      365 LOADNIL                          R56
      366 SETTABLE                         R56 R54 R55
      367 GETTABLEKS                       R55 R53 K76 ["MultiEdit"]
      369 SETTABLE                         R21 R54 R55
      370 GETTABLEKS                       R55 R53 K77 ["QuestionAnswer"]
      372 SETTABLE                         R24 R54 R55
      373 GETTABLEKS                       R55 R53 K78 ["ReadFile"]
      375 SETTABLE                         R25 R54 R55
      376 GETTABLEKS                       R55 R53 K79 ["ScreenCapture"]
      378 SETTABLE                         R26 R54 R55
      379 GETTABLEKS                       R55 R53 K80 ["Subagent"]
      381 SETTABLE                         R30 R54 R55
      382 GETTABLEKS                       R55 R53 K81 ["UploadImage"]
      384 SETTABLE                         R32 R54 R55
      385 MOVE                             R55 R41
      386 CALL                             R55 0 1
      387 JUMPIFNOT                        R55 ; [+7]
      388 GETTABLEKS                       R55 R53 K82 ["CreatorStoreSearch"]
      390 SETTABLE                         R9 R54 R55
      391 GETTABLEKS                       R55 R53 K83 ["CreatorStoreInsert"]
      393 SETTABLE                         R8 R54 R55
      394 JUMP                             ; [+3]
      395 GETTABLEKS                       R55 R53 K84 ["InsertFromMarketplace"]
      397 SETTABLE                         R18 R54 R55
      398 MOVE                             R55 R39
      399 CALL                             R55 0 1
      400 JUMPIFNOT                        R55 ; [+6]
      401 MOVE                             R55 R40
      402 CALL                             R55 0 1
      403 JUMPIF                           R55 ; [+3]
      404 GETTABLEKS                       R55 R53 K85 ["TestGame"]
      406 SETTABLE                         R31 R54 R55
      407 MOVE                             R55 R40
      408 CALL                             R55 0 1
      409 JUMPIFNOT                        R55 ; [+15]
      410 GETTABLEKS                       R55 R53 K86 ["StartStopPlay"]
      412 SETTABLE                         R28 R54 R55
      413 GETTABLEKS                       R55 R53 K87 ["GetConsoleOutput"]
      415 SETTABLE                         R13 R54 R55
      416 GETTABLEKS                       R55 R53 K88 ["UserKeyboardInput"]
      418 SETTABLE                         R33 R54 R55
      419 GETTABLEKS                       R55 R53 K89 ["UserMouseInput"]
      421 SETTABLE                         R34 R54 R55
      422 GETTABLEKS                       R55 R53 K90 ["CharacterNavigation"]
      424 SETTABLE                         R7 R54 R55
      425 MOVE                             R55 R43
      426 CALL                             R55 0 1
      427 JUMPIFNOT                        R55 ; [+3]
      428 GETTABLEKS                       R55 R53 K16 ["AnimationGen"]
      430 SETTABLE                         R6 R54 R55
      431 MOVE                             R55 R44
      432 CALL                             R55 0 1
      433 JUMPIFNOT                        R55 ; [+6]
      434 MOVE                             R55 R46
      435 CALL                             R55 0 1
      436 JUMPIFNOT                        R55 ; [+3]
      437 GETTABLEKS                       R55 R53 K36 ["PrimitiveGen"]
      439 SETTABLE                         R23 R54 R55
      440 MOVE                             R55 R45
      441 CALL                             R55 0 1
      442 JUMPIFNOT                        R55 ; [+9]
      443 MOVE                             R55 R46
      444 CALL                             R55 0 1
      445 JUMPIFNOT                        R55 ; [+6]
      446 MOVE                             R55 R44
      447 CALL                             R55 0 1
      448 JUMPIFNOT                        R55 ; [+3]
      449 GETTABLEKS                       R55 R53 K91 ["WaitJobFinished"]
      451 SETTABLE                         R35 R54 R55
      452 MOVE                             R55 R38
      453 CALL                             R55 0 1
      454 JUMPIFNOT                        R55 ; [+3]
      455 GETTABLEKS                       R55 R53 K92 ["Skill"]
      457 SETTABLE                         R27 R54 R55
      458 MOVE                             R55 R47
      459 CALL                             R55 0 1
      460 JUMPIFNOT                        R55 ; [+3]
      461 GETTABLEKS                       R55 R53 K77 ["QuestionAnswer"]
      463 SETTABLE                         R24 R54 R55
      464 MOVE                             R55 R49
      465 CALL                             R55 0 1
      466 JUMPIFNOT                        R55 ; [+3]
      467 GETTABLEKS                       R55 R53 K93 ["HttpGet"]
      469 SETTABLE                         R16 R54 R55
      470 MOVE                             R55 R48
      471 CALL                             R55 0 1
      472 JUMPIFNOT                        R55 ; [+20]
      473 GETTABLEKS                       R55 R53 K94 ["FinalizePlan"]
      475 GETIMPORT                        R56 K5 [require]
      477 GETIMPORT                        R58 K1 [script]
      479 GETTABLEKS                       R57 R58 K95 ["FinalizePlanTool"]
      481 CALL                             R56 1 1
      482 SETTABLE                         R56 R54 R55
      483 GETTABLEKS                       R55 R53 K96 ["CompleteTodoItems"]
      485 GETIMPORT                        R56 K5 [require]
      487 GETIMPORT                        R58 K1 [script]
      489 GETTABLEKS                       R57 R58 K97 ["CompleteTodoItemsTool"]
      491 CALL                             R56 1 1
      492 SETTABLE                         R56 R54 R55
      493 MOVE                             R55 R50
      494 CALL                             R55 0 1
      495 JUMPIFNOT                        R55 ; [+3]
      496 GETTABLEKS                       R55 R53 K98 ["FromHistory"]
      498 SETTABLE                         R36 R54 R55
      499 MOVE                             R55 R51
      500 CALL                             R55 0 1
      501 JUMPIFNOT                        R55 ; [+3]
      502 GETTABLEKS                       R55 R53 K99 ["StoreImage"]
      504 SETTABLE                         R29 R54 R55
      505 DUPCLOSURE                       R55 K100 [PROTO_0]
      506 CAPTURE                          VAL R2
      507 CAPTURE                          VAL R3
      508 CAPTURE                          VAL R48
      509 CAPTURE                          VAL R52
      510 DUPCLOSURE                       R56 K101 [PROTO_1]
      511 CAPTURE                          VAL R5
      512 DUPTABLE                         R57 K105 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      513 SETTABLEKS                       R4 R57 K12 ["ToolTypes"]
      515 SETTABLEKS                       R54 R57 K102 ["BuiltinTools"]
      517 SETTABLEKS                       R55 R57 K103 ["createTools"]
      519 SETTABLEKS                       R56 R57 K104 ["registerTools"]
      521 RETURN                           R57 1
