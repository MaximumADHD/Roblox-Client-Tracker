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
       71 GETTABLEKS                       R10 R11 K20 ["DEPRECATED_MeshGenTool"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETIMPORT                        R12 K1 [script]
       78 GETTABLEKS                       R11 R12 K21 ["ExecuteLuauTool"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETIMPORT                        R13 K1 [script]
       85 GETTABLEKS                       R12 R13 K22 ["FileSearchTool"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETIMPORT                        R14 K1 [script]
       92 GETTABLEKS                       R13 R14 K23 ["GameTreeTool"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETIMPORT                        R15 K1 [script]
       99 GETTABLEKS                       R14 R15 K24 ["GetConsoleOutputTool"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETIMPORT                        R16 K1 [script]
      106 GETTABLEKS                       R15 R16 K25 ["GrepSearchTool"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETIMPORT                        R17 K1 [script]
      113 GETTABLEKS                       R16 R17 K26 ["GrepTool"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETIMPORT                        R18 K1 [script]
      120 GETTABLEKS                       R17 R18 K27 ["HttpGetTool"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETIMPORT                        R19 K1 [script]
      127 GETTABLEKS                       R18 R19 K28 ["InspectInstanceTool"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETIMPORT                        R20 K1 [script]
      134 GETTABLEKS                       R19 R20 K29 ["MarketplaceInsertionTool"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETIMPORT                        R21 K1 [script]
      141 GETTABLEKS                       R20 R21 K30 ["MaterialGenTool"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K5 [require]
      146 GETTABLEKS                       R23 R0 K16 ["Features"]
      148 GETTABLEKS                       R22 R23 K31 ["MeshGen"]
      150 GETTABLEKS                       R21 R22 K32 ["MeshGenTool"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETIMPORT                        R23 K1 [script]
      157 GETTABLEKS                       R22 R23 K33 ["MultiEditTool"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R23 R0 K34 ["PersistentPlanRuntime"]
      164 CALL                             R22 1 1
      165 GETIMPORT                        R23 K5 [require]
      167 GETTABLEKS                       R26 R0 K16 ["Features"]
      169 GETTABLEKS                       R25 R26 K35 ["PrimitiveGen"]
      171 GETTABLEKS                       R24 R25 K36 ["PrimitiveGenTool"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K5 [require]
      176 GETIMPORT                        R26 K1 [script]
      178 GETTABLEKS                       R25 R26 K37 ["QuestionAnswerTool"]
      180 CALL                             R24 1 1
      181 GETIMPORT                        R25 K5 [require]
      183 GETIMPORT                        R27 K1 [script]
      185 GETTABLEKS                       R26 R27 K38 ["ReadFileTool"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K5 [require]
      190 GETIMPORT                        R28 K1 [script]
      192 GETTABLEKS                       R27 R28 K39 ["ScreenCaptureTool"]
      194 CALL                             R26 1 1
      195 GETIMPORT                        R27 K5 [require]
      197 GETIMPORT                        R29 K1 [script]
      199 GETTABLEKS                       R28 R29 K40 ["SkillTool"]
      201 CALL                             R27 1 1
      202 GETIMPORT                        R28 K5 [require]
      204 GETIMPORT                        R30 K1 [script]
      206 GETTABLEKS                       R29 R30 K41 ["StartStopPlayTool"]
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
      253 GETTABLEKS                       R36 R0 K48 ["Flags"]
      255 CALL                             R35 1 1
      256 GETTABLEKS                       R37 R35 K49 ["Shared"]
      258 GETTABLEKS                       R36 R37 K50 ["FFlagEnableSkills"]
      260 GETTABLEKS                       R38 R35 K49 ["Shared"]
      262 GETTABLEKS                       R37 R38 K51 ["FFlagEnableSubagents"]
      264 GETTABLEKS                       R39 R35 K49 ["Shared"]
      266 GETTABLEKS                       R38 R39 K52 ["FFlagAssistantDebugMode"]
      268 GETTABLEKS                       R40 R35 K49 ["Shared"]
      270 GETTABLEKS                       R39 R40 K53 ["FFlagAssistantTestAutomation"]
      272 GETTABLEKS                       R41 R35 K49 ["Shared"]
      274 GETTABLEKS                       R40 R41 K54 ["FFlagAssistantUseNewCreatorStoreTools"]
      276 GETTABLEKS                       R42 R35 K49 ["Shared"]
      278 GETTABLEKS                       R41 R42 K55 ["FFlagAssistantUseNewMeshGenTool"]
      280 GETTABLEKS                       R43 R35 K49 ["Shared"]
      282 GETTABLEKS                       R42 R43 K56 ["FFlagEnablePrimitiveGenTool"]
      284 GETTABLEKS                       R44 R35 K49 ["Shared"]
      286 GETTABLEKS                       R43 R44 K57 ["FFlagEnableWaitJobFinishedTool"]
      288 GETTABLEKS                       R45 R35 K49 ["Shared"]
      290 GETTABLEKS                       R44 R45 K58 ["FFlagProceduralModel"]
      292 GETTABLEKS                       R46 R35 K49 ["Shared"]
      294 GETTABLEKS                       R45 R46 K59 ["FFlagAssistantQuestionAnswerTool"]
      296 GETTABLEKS                       R47 R35 K49 ["Shared"]
      298 GETTABLEKS                       R46 R47 K60 ["FFlagAssistantPlanMode"]
      300 GETTABLEKS                       R48 R35 K49 ["Shared"]
      302 GETTABLEKS                       R47 R48 K61 ["FFlagEnableHttpGetTool"]
      304 GETTABLEKS                       R48 R22 K62 ["getRuntimeForMeta"]
      306 GETTABLEKS                       R49 R4 K63 ["ToolNames"]
      308 NEWTABLE                         R50 16 0
      310 GETTABLEKS                       R51 R49 K64 ["ExecuteLuau"]
      312 SETTABLE                         R10 R50 R51
      313 GETTABLEKS                       R51 R49 K65 ["FileSearch"]
      315 SETTABLE                         R11 R50 R51
      316 GETTABLEKS                       R51 R49 K66 ["GameTree"]
      318 SETTABLE                         R12 R50 R51
      319 GETTABLEKS                       R51 R49 K67 ["Grep"]
      321 SETTABLE                         R15 R50 R51
      322 GETTABLEKS                       R51 R49 K68 ["GrepSearch"]
      324 SETTABLE                         R14 R50 R51
      325 GETTABLEKS                       R51 R49 K69 ["InspectInstance"]
      327 SETTABLE                         R17 R50 R51
      328 GETTABLEKS                       R51 R49 K70 ["MaterialGen"]
      330 SETTABLE                         R19 R50 R51
      331 GETTABLEKS                       R51 R49 K31 ["MeshGen"]
      333 MOVE                             R53 R41
      334 CALL                             R53 0 1
      335 JUMPIFNOT                        R53 ; [+2]
      336 MOVE                             R52 R20
      337 JUMP                             ; [+1]
      338 MOVE                             R52 R9
      339 SETTABLE                         R52 R50 R51
      340 GETTABLEKS                       R51 R49 K71 ["MultiEdit"]
      342 SETTABLE                         R21 R50 R51
      343 GETTABLEKS                       R51 R49 K72 ["QuestionAnswer"]
      345 SETTABLE                         R24 R50 R51
      346 GETTABLEKS                       R51 R49 K73 ["ReadFile"]
      348 SETTABLE                         R25 R50 R51
      349 GETTABLEKS                       R51 R49 K74 ["ScreenCapture"]
      351 SETTABLE                         R26 R50 R51
      352 GETTABLEKS                       R51 R49 K75 ["UploadImage"]
      354 SETTABLE                         R31 R50 R51
      355 MOVE                             R51 R40
      356 CALL                             R51 0 1
      357 JUMPIFNOT                        R51 ; [+7]
      358 GETTABLEKS                       R51 R49 K76 ["CreatorStoreSearch"]
      360 SETTABLE                         R8 R50 R51
      361 GETTABLEKS                       R51 R49 K77 ["CreatorStoreInsert"]
      363 SETTABLE                         R7 R50 R51
      364 JUMP                             ; [+3]
      365 GETTABLEKS                       R51 R49 K78 ["InsertFromMarketplace"]
      367 SETTABLE                         R18 R50 R51
      368 MOVE                             R51 R38
      369 CALL                             R51 0 1
      370 JUMPIFNOT                        R51 ; [+6]
      371 MOVE                             R51 R39
      372 CALL                             R51 0 1
      373 JUMPIF                           R51 ; [+3]
      374 GETTABLEKS                       R51 R49 K79 ["TestGame"]
      376 SETTABLE                         R30 R50 R51
      377 MOVE                             R51 R39
      378 CALL                             R51 0 1
      379 JUMPIFNOT                        R51 ; [+15]
      380 GETTABLEKS                       R51 R49 K80 ["StartStopPlay"]
      382 SETTABLE                         R28 R50 R51
      383 GETTABLEKS                       R51 R49 K81 ["GetConsoleOutput"]
      385 SETTABLE                         R13 R50 R51
      386 GETTABLEKS                       R51 R49 K82 ["UserKeyboardInput"]
      388 SETTABLE                         R32 R50 R51
      389 GETTABLEKS                       R51 R49 K83 ["UserMouseInput"]
      391 SETTABLE                         R33 R50 R51
      392 GETTABLEKS                       R51 R49 K84 ["CharacterNavigation"]
      394 SETTABLE                         R6 R50 R51
      395 MOVE                             R51 R42
      396 CALL                             R51 0 1
      397 JUMPIFNOT                        R51 ; [+6]
      398 MOVE                             R51 R44
      399 CALL                             R51 0 1
      400 JUMPIFNOT                        R51 ; [+3]
      401 GETTABLEKS                       R51 R49 K35 ["PrimitiveGen"]
      403 SETTABLE                         R23 R50 R51
      404 MOVE                             R51 R43
      405 CALL                             R51 0 1
      406 JUMPIFNOT                        R51 ; [+9]
      407 MOVE                             R51 R44
      408 CALL                             R51 0 1
      409 JUMPIFNOT                        R51 ; [+6]
      410 MOVE                             R51 R42
      411 CALL                             R51 0 1
      412 JUMPIFNOT                        R51 ; [+3]
      413 GETTABLEKS                       R51 R49 K85 ["WaitJobFinished"]
      415 SETTABLE                         R34 R50 R51
      416 MOVE                             R51 R36
      417 CALL                             R51 0 1
      418 JUMPIFNOT                        R51 ; [+3]
      419 GETTABLEKS                       R51 R49 K86 ["Skill"]
      421 SETTABLE                         R27 R50 R51
      422 MOVE                             R51 R37
      423 CALL                             R51 0 1
      424 JUMPIFNOT                        R51 ; [+3]
      425 GETTABLEKS                       R51 R49 K87 ["Subagent"]
      427 SETTABLE                         R29 R50 R51
      428 MOVE                             R51 R45
      429 CALL                             R51 0 1
      430 JUMPIFNOT                        R51 ; [+3]
      431 GETTABLEKS                       R51 R49 K72 ["QuestionAnswer"]
      433 SETTABLE                         R24 R50 R51
      434 MOVE                             R51 R47
      435 CALL                             R51 0 1
      436 JUMPIFNOT                        R51 ; [+3]
      437 GETTABLEKS                       R51 R49 K88 ["HttpGet"]
      439 SETTABLE                         R16 R50 R51
      440 MOVE                             R51 R46
      441 CALL                             R51 0 1
      442 JUMPIFNOT                        R51 ; [+20]
      443 GETTABLEKS                       R51 R49 K89 ["FinalizePlan"]
      445 GETIMPORT                        R52 K5 [require]
      447 GETIMPORT                        R54 K1 [script]
      449 GETTABLEKS                       R53 R54 K90 ["FinalizePlanTool"]
      451 CALL                             R52 1 1
      452 SETTABLE                         R52 R50 R51
      453 GETTABLEKS                       R51 R49 K91 ["CompleteTodoItem"]
      455 GETIMPORT                        R52 K5 [require]
      457 GETIMPORT                        R54 K1 [script]
      459 GETTABLEKS                       R53 R54 K92 ["CompleteTodoItemTool"]
      461 CALL                             R52 1 1
      462 SETTABLE                         R52 R50 R51
      463 DUPCLOSURE                       R51 K93 [PROTO_0]
      464 CAPTURE                          VAL R2
      465 CAPTURE                          VAL R3
      466 CAPTURE                          VAL R46
      467 CAPTURE                          VAL R48
      468 DUPCLOSURE                       R52 K94 [PROTO_1]
      469 CAPTURE                          VAL R5
      470 DUPTABLE                         R53 K98 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      471 SETTABLEKS                       R4 R53 K12 ["ToolTypes"]
      473 SETTABLEKS                       R50 R53 K95 ["BuiltinTools"]
      475 SETTABLEKS                       R51 R53 K96 ["createTools"]
      477 SETTABLEKS                       R52 R53 K97 ["registerTools"]
      479 RETURN                           R53 1
