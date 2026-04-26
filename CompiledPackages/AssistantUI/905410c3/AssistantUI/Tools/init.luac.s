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
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R7 R8 K15 ["CharacterNavigationTool"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K16 ["Features"]
       53 GETTABLEKS                       R9 R10 K17 ["CreatorStore"]
       55 GETTABLEKS                       R8 R9 K18 ["CreatorStoreInsertTool"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R11 R0 K16 ["Features"]
       62 GETTABLEKS                       R10 R11 K17 ["CreatorStore"]
       64 GETTABLEKS                       R9 R10 K19 ["CreatorStoreSearchTool"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETIMPORT                        R11 K1 [script]
       71 GETTABLEKS                       R10 R11 K20 ["ExecuteLuauTool"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETIMPORT                        R12 K1 [script]
       78 GETTABLEKS                       R11 R12 K21 ["FileSearchTool"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETIMPORT                        R13 K1 [script]
       85 GETTABLEKS                       R12 R13 K22 ["GameTreeTool"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETIMPORT                        R14 K1 [script]
       92 GETTABLEKS                       R13 R14 K23 ["GetConsoleOutputTool"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETIMPORT                        R15 K1 [script]
       99 GETTABLEKS                       R14 R15 K24 ["GrepSearchTool"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETIMPORT                        R16 K1 [script]
      106 GETTABLEKS                       R15 R16 K25 ["GrepTool"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETIMPORT                        R17 K1 [script]
      113 GETTABLEKS                       R16 R17 K26 ["HttpGetTool"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETIMPORT                        R18 K1 [script]
      120 GETTABLEKS                       R17 R18 K27 ["InspectInstanceTool"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETIMPORT                        R19 K1 [script]
      127 GETTABLEKS                       R18 R19 K28 ["MarketplaceInsertionTool"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETIMPORT                        R20 K1 [script]
      134 GETTABLEKS                       R19 R20 K29 ["MaterialGenTool"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R22 R0 K16 ["Features"]
      141 GETTABLEKS                       R21 R22 K30 ["MeshGen"]
      143 GETTABLEKS                       R20 R21 K31 ["MeshGenTool"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETIMPORT                        R22 K1 [script]
      150 GETTABLEKS                       R21 R22 K32 ["MultiEditTool"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R22 R0 K33 ["PersistentPlanRuntime"]
      157 CALL                             R21 1 1
      158 GETIMPORT                        R22 K5 [require]
      160 GETTABLEKS                       R25 R0 K16 ["Features"]
      162 GETTABLEKS                       R24 R25 K34 ["PrimitiveGen"]
      164 GETTABLEKS                       R23 R24 K35 ["PrimitiveGenTool"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K5 [require]
      169 GETIMPORT                        R25 K1 [script]
      171 GETTABLEKS                       R24 R25 K36 ["QuestionAnswerTool"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K5 [require]
      176 GETIMPORT                        R26 K1 [script]
      178 GETTABLEKS                       R25 R26 K37 ["ReadFileTool"]
      180 CALL                             R24 1 1
      181 GETIMPORT                        R25 K5 [require]
      183 GETIMPORT                        R27 K1 [script]
      185 GETTABLEKS                       R26 R27 K38 ["ScreenCaptureTool"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K5 [require]
      190 GETIMPORT                        R28 K1 [script]
      192 GETTABLEKS                       R27 R28 K39 ["SkillTool"]
      194 CALL                             R26 1 1
      195 GETIMPORT                        R27 K5 [require]
      197 GETIMPORT                        R29 K1 [script]
      199 GETTABLEKS                       R28 R29 K40 ["StartStopPlayTool"]
      201 CALL                             R27 1 1
      202 GETIMPORT                        R28 K5 [require]
      204 GETIMPORT                        R30 K1 [script]
      206 GETTABLEKS                       R29 R30 K41 ["StoreImageTool"]
      208 CALL                             R28 1 1
      209 GETIMPORT                        R29 K5 [require]
      211 GETIMPORT                        R31 K1 [script]
      213 GETTABLEKS                       R30 R31 K42 ["SubagentTool"]
      215 CALL                             R29 1 1
      216 GETIMPORT                        R30 K5 [require]
      218 GETIMPORT                        R32 K1 [script]
      220 GETTABLEKS                       R31 R32 K43 ["TestGameTool"]
      222 CALL                             R30 1 1
      223 GETIMPORT                        R31 K5 [require]
      225 GETIMPORT                        R33 K1 [script]
      227 GETTABLEKS                       R32 R33 K44 ["UploadImageTool"]
      229 CALL                             R31 1 1
      230 GETIMPORT                        R32 K5 [require]
      232 GETIMPORT                        R34 K1 [script]
      234 GETTABLEKS                       R33 R34 K45 ["UserKeyboardInputTool"]
      236 CALL                             R32 1 1
      237 GETIMPORT                        R33 K5 [require]
      239 GETIMPORT                        R35 K1 [script]
      241 GETTABLEKS                       R34 R35 K46 ["UserMouseInputTool"]
      243 CALL                             R33 1 1
      244 GETIMPORT                        R34 K5 [require]
      246 GETIMPORT                        R36 K1 [script]
      248 GETTABLEKS                       R35 R36 K47 ["WaitJobFinishedTool"]
      250 CALL                             R34 1 1
      251 GETIMPORT                        R35 K5 [require]
      253 GETIMPORT                        R37 K1 [script]
      255 GETTABLEKS                       R36 R37 K48 ["FromHistoryTool"]
      257 CALL                             R35 1 1
      258 GETIMPORT                        R36 K5 [require]
      260 GETTABLEKS                       R37 R0 K49 ["Flags"]
      262 CALL                             R36 1 1
      263 GETTABLEKS                       R38 R36 K50 ["Shared"]
      265 GETTABLEKS                       R37 R38 K51 ["FFlagEnableSkills"]
      267 GETTABLEKS                       R39 R36 K50 ["Shared"]
      269 GETTABLEKS                       R38 R39 K52 ["FFlagAssistantDebugMode"]
      271 GETTABLEKS                       R40 R36 K50 ["Shared"]
      273 GETTABLEKS                       R39 R40 K53 ["FFlagAssistantTestAutomation"]
      275 GETTABLEKS                       R41 R36 K50 ["Shared"]
      277 GETTABLEKS                       R40 R41 K54 ["FFlagAssistantUseNewCreatorStoreTools"]
      279 GETTABLEKS                       R42 R36 K50 ["Shared"]
      281 GETTABLEKS                       R41 R42 K55 ["FFlagAssistantUseNewMeshGenTool"]
      283 GETTABLEKS                       R43 R36 K50 ["Shared"]
      285 GETTABLEKS                       R42 R43 K56 ["FFlagEnablePrimitiveGenTool"]
      287 GETTABLEKS                       R44 R36 K50 ["Shared"]
      289 GETTABLEKS                       R43 R44 K57 ["FFlagEnableWaitJobFinishedTool"]
      291 GETTABLEKS                       R45 R36 K50 ["Shared"]
      293 GETTABLEKS                       R44 R45 K58 ["FFlagProceduralModel"]
      295 GETTABLEKS                       R46 R36 K50 ["Shared"]
      297 GETTABLEKS                       R45 R46 K59 ["FFlagAssistantQuestionAnswerTool"]
      299 GETTABLEKS                       R47 R36 K50 ["Shared"]
      301 GETTABLEKS                       R46 R47 K60 ["FFlagAssistantPlanMode"]
      303 GETTABLEKS                       R48 R36 K50 ["Shared"]
      305 GETTABLEKS                       R47 R48 K61 ["FFlagEnableHttpGetTool"]
      307 GETIMPORT                        R48 K5 [require]
      309 GETTABLEKS                       R50 R0 K49 ["Flags"]
      311 GETTABLEKS                       R49 R50 K62 ["FFlagAssistantContextCompaction"]
      313 CALL                             R48 1 1
      314 GETTABLEKS                       R50 R36 K50 ["Shared"]
      316 GETTABLEKS                       R49 R50 K63 ["FFlagEnableStoreImageTool"]
      318 GETTABLEKS                       R50 R21 K64 ["getRuntimeForMeta"]
      320 GETTABLEKS                       R51 R4 K65 ["ToolNames"]
      322 NEWTABLE                         R52 16 0
      324 GETTABLEKS                       R53 R51 K66 ["ExecuteLuau"]
      326 SETTABLE                         R9 R52 R53
      327 GETTABLEKS                       R53 R51 K67 ["FileSearch"]
      329 SETTABLE                         R10 R52 R53
      330 GETTABLEKS                       R53 R51 K68 ["GameTree"]
      332 SETTABLE                         R11 R52 R53
      333 GETTABLEKS                       R53 R51 K69 ["Grep"]
      335 SETTABLE                         R14 R52 R53
      336 GETTABLEKS                       R53 R51 K70 ["GrepSearch"]
      338 SETTABLE                         R13 R52 R53
      339 GETTABLEKS                       R53 R51 K71 ["InspectInstance"]
      341 SETTABLE                         R16 R52 R53
      342 GETTABLEKS                       R53 R51 K72 ["MaterialGen"]
      344 SETTABLE                         R18 R52 R53
      345 GETTABLEKS                       R53 R51 K30 ["MeshGen"]
      347 MOVE                             R55 R41
      348 CALL                             R55 0 1
      349 JUMPIFNOT                        R55 ; [+2]
      350 MOVE                             R54 R19
      351 JUMP                             ; [+1]
      352 LOADNIL                          R54
      353 SETTABLE                         R54 R52 R53
      354 GETTABLEKS                       R53 R51 K73 ["MultiEdit"]
      356 SETTABLE                         R20 R52 R53
      357 GETTABLEKS                       R53 R51 K74 ["QuestionAnswer"]
      359 SETTABLE                         R23 R52 R53
      360 GETTABLEKS                       R53 R51 K75 ["ReadFile"]
      362 SETTABLE                         R24 R52 R53
      363 GETTABLEKS                       R53 R51 K76 ["ScreenCapture"]
      365 SETTABLE                         R25 R52 R53
      366 GETTABLEKS                       R53 R51 K77 ["Subagent"]
      368 SETTABLE                         R29 R52 R53
      369 GETTABLEKS                       R53 R51 K78 ["UploadImage"]
      371 SETTABLE                         R31 R52 R53
      372 MOVE                             R53 R40
      373 CALL                             R53 0 1
      374 JUMPIFNOT                        R53 ; [+7]
      375 GETTABLEKS                       R53 R51 K79 ["CreatorStoreSearch"]
      377 SETTABLE                         R8 R52 R53
      378 GETTABLEKS                       R53 R51 K80 ["CreatorStoreInsert"]
      380 SETTABLE                         R7 R52 R53
      381 JUMP                             ; [+3]
      382 GETTABLEKS                       R53 R51 K81 ["InsertFromMarketplace"]
      384 SETTABLE                         R17 R52 R53
      385 MOVE                             R53 R38
      386 CALL                             R53 0 1
      387 JUMPIFNOT                        R53 ; [+6]
      388 MOVE                             R53 R39
      389 CALL                             R53 0 1
      390 JUMPIF                           R53 ; [+3]
      391 GETTABLEKS                       R53 R51 K82 ["TestGame"]
      393 SETTABLE                         R30 R52 R53
      394 MOVE                             R53 R39
      395 CALL                             R53 0 1
      396 JUMPIFNOT                        R53 ; [+15]
      397 GETTABLEKS                       R53 R51 K83 ["StartStopPlay"]
      399 SETTABLE                         R27 R52 R53
      400 GETTABLEKS                       R53 R51 K84 ["GetConsoleOutput"]
      402 SETTABLE                         R12 R52 R53
      403 GETTABLEKS                       R53 R51 K85 ["UserKeyboardInput"]
      405 SETTABLE                         R32 R52 R53
      406 GETTABLEKS                       R53 R51 K86 ["UserMouseInput"]
      408 SETTABLE                         R33 R52 R53
      409 GETTABLEKS                       R53 R51 K87 ["CharacterNavigation"]
      411 SETTABLE                         R6 R52 R53
      412 MOVE                             R53 R42
      413 CALL                             R53 0 1
      414 JUMPIFNOT                        R53 ; [+6]
      415 MOVE                             R53 R44
      416 CALL                             R53 0 1
      417 JUMPIFNOT                        R53 ; [+3]
      418 GETTABLEKS                       R53 R51 K34 ["PrimitiveGen"]
      420 SETTABLE                         R22 R52 R53
      421 MOVE                             R53 R43
      422 CALL                             R53 0 1
      423 JUMPIFNOT                        R53 ; [+9]
      424 MOVE                             R53 R44
      425 CALL                             R53 0 1
      426 JUMPIFNOT                        R53 ; [+6]
      427 MOVE                             R53 R42
      428 CALL                             R53 0 1
      429 JUMPIFNOT                        R53 ; [+3]
      430 GETTABLEKS                       R53 R51 K88 ["WaitJobFinished"]
      432 SETTABLE                         R34 R52 R53
      433 MOVE                             R53 R37
      434 CALL                             R53 0 1
      435 JUMPIFNOT                        R53 ; [+3]
      436 GETTABLEKS                       R53 R51 K89 ["Skill"]
      438 SETTABLE                         R26 R52 R53
      439 MOVE                             R53 R45
      440 CALL                             R53 0 1
      441 JUMPIFNOT                        R53 ; [+3]
      442 GETTABLEKS                       R53 R51 K74 ["QuestionAnswer"]
      444 SETTABLE                         R23 R52 R53
      445 MOVE                             R53 R47
      446 CALL                             R53 0 1
      447 JUMPIFNOT                        R53 ; [+3]
      448 GETTABLEKS                       R53 R51 K90 ["HttpGet"]
      450 SETTABLE                         R15 R52 R53
      451 MOVE                             R53 R46
      452 CALL                             R53 0 1
      453 JUMPIFNOT                        R53 ; [+20]
      454 GETTABLEKS                       R53 R51 K91 ["FinalizePlan"]
      456 GETIMPORT                        R54 K5 [require]
      458 GETIMPORT                        R56 K1 [script]
      460 GETTABLEKS                       R55 R56 K92 ["FinalizePlanTool"]
      462 CALL                             R54 1 1
      463 SETTABLE                         R54 R52 R53
      464 GETTABLEKS                       R53 R51 K93 ["CompleteTodoItems"]
      466 GETIMPORT                        R54 K5 [require]
      468 GETIMPORT                        R56 K1 [script]
      470 GETTABLEKS                       R55 R56 K94 ["CompleteTodoItemsTool"]
      472 CALL                             R54 1 1
      473 SETTABLE                         R54 R52 R53
      474 MOVE                             R53 R48
      475 CALL                             R53 0 1
      476 JUMPIFNOT                        R53 ; [+3]
      477 GETTABLEKS                       R53 R51 K95 ["FromHistory"]
      479 SETTABLE                         R35 R52 R53
      480 MOVE                             R53 R49
      481 CALL                             R53 0 1
      482 JUMPIFNOT                        R53 ; [+3]
      483 GETTABLEKS                       R53 R51 K96 ["StoreImage"]
      485 SETTABLE                         R28 R52 R53
      486 DUPCLOSURE                       R53 K97 [PROTO_0]
      487 CAPTURE                          VAL R2
      488 CAPTURE                          VAL R3
      489 CAPTURE                          VAL R46
      490 CAPTURE                          VAL R50
      491 DUPCLOSURE                       R54 K98 [PROTO_1]
      492 CAPTURE                          VAL R5
      493 DUPTABLE                         R55 K102 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      494 SETTABLEKS                       R4 R55 K12 ["ToolTypes"]
      496 SETTABLEKS                       R52 R55 K99 ["BuiltinTools"]
      498 SETTABLEKS                       R53 R55 K100 ["createTools"]
      500 SETTABLEKS                       R54 R55 K101 ["registerTools"]
      502 RETURN                           R55 1
