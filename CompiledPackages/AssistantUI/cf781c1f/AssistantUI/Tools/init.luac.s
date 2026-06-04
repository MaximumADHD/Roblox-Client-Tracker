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
      129 GETTABLEKS                       R18 R18 K29 ["MaterialGenTool"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K15 ["Features"]
      136 GETTABLEKS                       R19 R19 K30 ["MeshGen"]
      138 GETTABLEKS                       R19 R19 K31 ["MeshGenTool"]
      140 CALL                             R18 1 1
      141 GETIMPORT                        R19 K5 [require]
      143 GETIMPORT                        R20 K1 [script]
      145 GETTABLEKS                       R20 R20 K32 ["MultiEditTool"]
      147 CALL                             R19 1 1
      148 GETIMPORT                        R20 K5 [require]
      150 GETTABLEKS                       R21 R0 K33 ["PersistentPlanRuntime"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R22 R0 K15 ["Features"]
      157 GETTABLEKS                       R22 R22 K34 ["PrimitiveGen"]
      159 GETTABLEKS                       R22 R22 K35 ["PrimitiveGenTool"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K5 [require]
      164 GETIMPORT                        R23 K1 [script]
      166 GETTABLEKS                       R23 R23 K36 ["QuestionAnswerTool"]
      168 CALL                             R22 1 1
      169 GETIMPORT                        R23 K5 [require]
      171 GETIMPORT                        R24 K1 [script]
      173 GETTABLEKS                       R24 R24 K37 ["ReadFileTool"]
      175 CALL                             R23 1 1
      176 GETIMPORT                        R24 K5 [require]
      178 GETIMPORT                        R25 K1 [script]
      180 GETTABLEKS                       R25 R25 K38 ["ScreenCaptureTool"]
      182 CALL                             R24 1 1
      183 GETIMPORT                        R25 K5 [require]
      185 GETIMPORT                        R26 K1 [script]
      187 GETTABLEKS                       R26 R26 K39 ["SkillTool"]
      189 CALL                             R25 1 1
      190 GETIMPORT                        R26 K5 [require]
      192 GETIMPORT                        R27 K1 [script]
      194 GETTABLEKS                       R27 R27 K40 ["StartStopPlayTool"]
      196 CALL                             R26 1 1
      197 GETIMPORT                        R27 K5 [require]
      199 GETIMPORT                        R28 K1 [script]
      201 GETTABLEKS                       R28 R28 K41 ["StoreImageTool"]
      203 CALL                             R27 1 1
      204 GETIMPORT                        R28 K5 [require]
      206 GETIMPORT                        R29 K1 [script]
      208 GETTABLEKS                       R29 R29 K42 ["SubagentTool"]
      210 CALL                             R28 1 1
      211 GETIMPORT                        R29 K5 [require]
      213 GETIMPORT                        R30 K1 [script]
      215 GETTABLEKS                       R30 R30 K43 ["UploadImageTool"]
      217 CALL                             R29 1 1
      218 GETIMPORT                        R30 K5 [require]
      220 GETIMPORT                        R31 K1 [script]
      222 GETTABLEKS                       R31 R31 K44 ["UserKeyboardInputTool"]
      224 CALL                             R30 1 1
      225 GETIMPORT                        R31 K5 [require]
      227 GETIMPORT                        R32 K1 [script]
      229 GETTABLEKS                       R32 R32 K45 ["UserMouseInputTool"]
      231 CALL                             R31 1 1
      232 GETIMPORT                        R32 K5 [require]
      234 GETIMPORT                        R33 K1 [script]
      236 GETTABLEKS                       R33 R33 K46 ["WaitJobFinishedTool"]
      238 CALL                             R32 1 1
      239 GETIMPORT                        R33 K5 [require]
      241 GETIMPORT                        R34 K1 [script]
      243 GETTABLEKS                       R34 R34 K47 ["FromHistoryTool"]
      245 CALL                             R33 1 1
      246 GETIMPORT                        R34 K5 [require]
      248 GETTABLEKS                       R35 R0 K48 ["Flags"]
      250 CALL                             R34 1 1
      251 GETTABLEKS                       R35 R34 K49 ["Shared"]
      253 GETTABLEKS                       R35 R35 K50 ["FFlagAssistantAssetSearchInsertTool"]
      255 GETTABLEKS                       R36 R34 K49 ["Shared"]
      257 GETTABLEKS                       R36 R36 K51 ["FFlagAssistantAssetSearchInsertToolABTest"]
      259 GETTABLEKS                       R37 R34 K49 ["Shared"]
      261 GETTABLEKS                       R37 R37 K52 ["FFlagAssistantAnimationGenTool"]
      263 GETTABLEKS                       R38 R34 K49 ["Shared"]
      265 GETTABLEKS                       R38 R38 K53 ["FFlagEnablePrimitiveGenTool"]
      267 GETTABLEKS                       R39 R34 K49 ["Shared"]
      269 GETTABLEKS                       R39 R39 K54 ["FFlagProceduralModel"]
      271 GETTABLEKS                       R40 R34 K49 ["Shared"]
      273 GETTABLEKS                       R40 R40 K55 ["FFlagAssistantQuestionAnswerTool"]
      275 GETTABLEKS                       R41 R34 K49 ["Shared"]
      277 GETTABLEKS                       R41 R41 K56 ["FFlagAssistantPlanMode"]
      279 GETIMPORT                        R42 K5 [require]
      281 GETTABLEKS                       R43 R0 K48 ["Flags"]
      283 GETTABLEKS                       R43 R43 K57 ["FFlagAssistantMarkdownPlanMode"]
      285 CALL                             R42 1 1
      286 GETTABLEKS                       R43 R34 K49 ["Shared"]
      288 GETTABLEKS                       R43 R43 K58 ["FFlagEnableStoreImageTool"]
      290 GETTABLEKS                       R44 R20 K59 ["getRuntimeForMeta"]
      292 GETTABLEKS                       R45 R4 K60 ["ToolNames"]
      294 NEWTABLE                         R46 16 0
      296 GETTABLEKS                       R47 R45 K61 ["ExecuteLuau"]
      298 SETTABLE                         R10 R46 R47
      299 GETTABLEKS                       R47 R45 K62 ["FileSearch"]
      301 SETTABLE                         R11 R46 R47
      302 GETTABLEKS                       R47 R45 K63 ["GameTree"]
      304 SETTABLE                         R12 R46 R47
      305 GETTABLEKS                       R47 R45 K64 ["GrepSearch"]
      307 SETTABLE                         R14 R46 R47
      308 GETTABLEKS                       R47 R45 K65 ["InspectInstance"]
      310 SETTABLE                         R16 R46 R47
      311 GETTABLEKS                       R47 R45 K66 ["MaterialGen"]
      313 SETTABLE                         R17 R46 R47
      314 GETTABLEKS                       R47 R45 K30 ["MeshGen"]
      316 SETTABLE                         R18 R46 R47
      317 GETTABLEKS                       R47 R45 K67 ["MultiEdit"]
      319 SETTABLE                         R19 R46 R47
      320 GETTABLEKS                       R47 R45 K68 ["QuestionAnswer"]
      322 SETTABLE                         R22 R46 R47
      323 GETTABLEKS                       R47 R45 K69 ["ReadFile"]
      325 SETTABLE                         R23 R46 R47
      326 GETTABLEKS                       R47 R45 K70 ["ScreenCapture"]
      328 SETTABLE                         R24 R46 R47
      329 GETTABLEKS                       R47 R45 K71 ["Subagent"]
      331 SETTABLE                         R28 R46 R47
      332 GETTABLEKS                       R47 R45 K72 ["UploadImage"]
      334 SETTABLE                         R29 R46 R47
      335 GETTABLEKS                       R47 R45 K73 ["Skill"]
      337 SETTABLE                         R25 R46 R47
      338 GETTABLEKS                       R47 R45 K74 ["HttpGet"]
      340 SETTABLE                         R15 R46 R47
      341 GETTABLEKS                       R47 R45 K75 ["FromHistory"]
      343 SETTABLE                         R33 R46 R47
      344 MOVE                             R47 R35
      345 CALL                             R47 0 1
      346 JUMPIF                           R47 ; [+3]
      347 MOVE                             R47 R36
      348 CALL                             R47 0 1
      349 JUMPIFNOT                        R47 ; [+24]
      350 GETTABLEKS                       R47 R45 K76 ["AssetInsert"]
      352 GETIMPORT                        R48 K5 [require]
      354 GETTABLEKS                       R49 R0 K15 ["Features"]
      356 GETTABLEKS                       R49 R49 K77 ["AssetManagement"]
      358 GETTABLEKS                       R49 R49 K78 ["AssetInsertTool"]
      360 CALL                             R48 1 1
      361 SETTABLE                         R48 R46 R47
      362 GETTABLEKS                       R47 R45 K79 ["AssetSearch"]
      364 GETIMPORT                        R48 K5 [require]
      366 GETTABLEKS                       R49 R0 K15 ["Features"]
      368 GETTABLEKS                       R49 R49 K77 ["AssetManagement"]
      370 GETTABLEKS                       R49 R49 K80 ["AssetSearchTool"]
      372 CALL                             R48 1 1
      373 SETTABLE                         R48 R46 R47
      374 MOVE                             R47 R35
      375 CALL                             R47 0 1
      376 JUMPIF                           R47 ; [+6]
      377 GETTABLEKS                       R47 R45 K81 ["CreatorStoreSearch"]
      379 SETTABLE                         R9 R46 R47
      380 GETTABLEKS                       R47 R45 K82 ["CreatorStoreInsert"]
      382 SETTABLE                         R8 R46 R47
      383 GETTABLEKS                       R47 R45 K83 ["StartStopPlay"]
      385 SETTABLE                         R26 R46 R47
      386 GETTABLEKS                       R47 R45 K84 ["GetConsoleOutput"]
      388 SETTABLE                         R13 R46 R47
      389 GETTABLEKS                       R47 R45 K85 ["UserKeyboardInput"]
      391 SETTABLE                         R30 R46 R47
      392 GETTABLEKS                       R47 R45 K86 ["UserMouseInput"]
      394 SETTABLE                         R31 R46 R47
      395 GETTABLEKS                       R47 R45 K87 ["CharacterNavigation"]
      397 SETTABLE                         R7 R46 R47
      398 MOVE                             R47 R37
      399 CALL                             R47 0 1
      400 JUMPIFNOT                        R47 ; [+3]
      401 GETTABLEKS                       R47 R45 K16 ["AnimationGen"]
      403 SETTABLE                         R6 R46 R47
      404 MOVE                             R47 R38
      405 CALL                             R47 0 1
      406 JUMPIFNOT                        R47 ; [+6]
      407 MOVE                             R47 R39
      408 CALL                             R47 0 1
      409 JUMPIFNOT                        R47 ; [+3]
      410 GETTABLEKS                       R47 R45 K34 ["PrimitiveGen"]
      412 SETTABLE                         R21 R46 R47
      413 MOVE                             R47 R39
      414 CALL                             R47 0 1
      415 JUMPIFNOT                        R47 ; [+6]
      416 MOVE                             R47 R38
      417 CALL                             R47 0 1
      418 JUMPIFNOT                        R47 ; [+3]
      419 GETTABLEKS                       R47 R45 K88 ["WaitJobFinished"]
      421 SETTABLE                         R32 R46 R47
      422 MOVE                             R47 R40
      423 CALL                             R47 0 1
      424 JUMPIFNOT                        R47 ; [+3]
      425 GETTABLEKS                       R47 R45 K68 ["QuestionAnswer"]
      427 SETTABLE                         R22 R46 R47
      428 MOVE                             R47 R41
      429 CALL                             R47 0 1
      430 JUMPIFNOT                        R47 ; [+33]
      431 GETTABLEKS                       R47 R45 K89 ["FinalizePlan"]
      433 GETIMPORT                        R48 K5 [require]
      435 GETIMPORT                        R49 K1 [script]
      437 GETTABLEKS                       R49 R49 K90 ["FinalizePlanTool"]
      439 CALL                             R48 1 1
      440 SETTABLE                         R48 R46 R47
      441 GETTABLEKS                       R47 R45 K91 ["CompleteTodoItems"]
      443 GETIMPORT                        R48 K5 [require]
      445 GETIMPORT                        R49 K1 [script]
      447 GETTABLEKS                       R49 R49 K92 ["CompleteTodoItemsTool"]
      449 CALL                             R48 1 1
      450 SETTABLE                         R48 R46 R47
      451 MOVE                             R47 R42
      452 CALL                             R47 0 1
      453 JUMPIFNOT                        R47 ; [+10]
      454 GETTABLEKS                       R47 R45 K93 ["UpdatePlan"]
      456 GETIMPORT                        R48 K5 [require]
      458 GETIMPORT                        R49 K1 [script]
      460 GETTABLEKS                       R49 R49 K94 ["UpdatePlanTool"]
      462 CALL                             R48 1 1
      463 SETTABLE                         R48 R46 R47
      464 MOVE                             R47 R43
      465 CALL                             R47 0 1
      466 JUMPIFNOT                        R47 ; [+3]
      467 GETTABLEKS                       R47 R45 K95 ["StoreImage"]
      469 SETTABLE                         R27 R46 R47
      470 DUPCLOSURE                       R47 K96 [PROTO_0]
      471 CAPTURE                          VAL R2
      472 CAPTURE                          VAL R3
      473 CAPTURE                          VAL R41
      474 CAPTURE                          VAL R44
      475 DUPCLOSURE                       R48 K97 [PROTO_1]
      476 CAPTURE                          VAL R5
      477 DUPTABLE                         R49 K101 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      478 SETTABLEKS                       R4 R49 K12 ["ToolTypes"]
      480 SETTABLEKS                       R46 R49 K98 ["BuiltinTools"]
      482 SETTABLEKS                       R47 R49 K99 ["createTools"]
      484 SETTABLEKS                       R48 R49 K100 ["registerTools"]
      486 RETURN                           R49 1
