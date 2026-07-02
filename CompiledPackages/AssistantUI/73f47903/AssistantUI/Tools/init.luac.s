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
       67 GETIMPORT                        R10 K1 [script]
       69 GETTABLEKS                       R10 R10 K20 ["CreateSkillTool"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K15 ["Features"]
       76 GETTABLEKS                       R11 R11 K21 ["CreatorStore"]
       78 GETTABLEKS                       R11 R11 K22 ["CreatorStoreInsertTool"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K15 ["Features"]
       85 GETTABLEKS                       R12 R12 K21 ["CreatorStore"]
       87 GETTABLEKS                       R12 R12 K23 ["CreatorStoreSearchTool"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETIMPORT                        R13 K1 [script]
       94 GETTABLEKS                       R13 R13 K24 ["ExecuteLuauTool"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETIMPORT                        R14 K1 [script]
      101 GETTABLEKS                       R14 R14 K25 ["FileSearchTool"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETIMPORT                        R15 K1 [script]
      108 GETTABLEKS                       R15 R15 K26 ["FinalizePlanTool"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETIMPORT                        R16 K1 [script]
      115 GETTABLEKS                       R16 R16 K27 ["FromHistoryTool"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETIMPORT                        R17 K1 [script]
      122 GETTABLEKS                       R17 R17 K28 ["GameTreeTool"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETIMPORT                        R18 K1 [script]
      129 GETTABLEKS                       R18 R18 K29 ["GetConsoleOutputTool"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETIMPORT                        R19 K1 [script]
      136 GETTABLEKS                       R19 R19 K30 ["GetStudioStateTool"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETIMPORT                        R20 K1 [script]
      143 GETTABLEKS                       R20 R20 K31 ["GrepSearchTool"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETIMPORT                        R21 K1 [script]
      150 GETTABLEKS                       R21 R21 K32 ["HttpGetTool"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETIMPORT                        R22 K1 [script]
      157 GETTABLEKS                       R22 R22 K33 ["InspectInstanceTool"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETIMPORT                        R23 K1 [script]
      164 GETTABLEKS                       R23 R23 K34 ["MaterialGenTool"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K5 [require]
      169 GETTABLEKS                       R24 R0 K15 ["Features"]
      171 GETTABLEKS                       R24 R24 K35 ["MeshGen"]
      173 GETTABLEKS                       R24 R24 K36 ["MeshGenTool"]
      175 CALL                             R23 1 1
      176 GETIMPORT                        R24 K5 [require]
      178 GETIMPORT                        R25 K1 [script]
      180 GETTABLEKS                       R25 R25 K37 ["MultiEditTool"]
      182 CALL                             R24 1 1
      183 GETIMPORT                        R25 K5 [require]
      185 GETIMPORT                        R26 K1 [script]
      187 GETTABLEKS                       R26 R26 K38 ["MultiPlayerAgentsCommunicationTool"]
      189 CALL                             R25 1 1
      190 GETIMPORT                        R26 K5 [require]
      192 GETTABLEKS                       R27 R0 K39 ["PersistentPlanRuntime"]
      194 CALL                             R26 1 1
      195 GETIMPORT                        R27 K5 [require]
      197 GETTABLEKS                       R28 R0 K15 ["Features"]
      199 GETTABLEKS                       R28 R28 K40 ["PrimitiveGen"]
      201 GETTABLEKS                       R28 R28 K41 ["PrimitiveGenTool"]
      203 CALL                             R27 1 1
      204 GETIMPORT                        R28 K5 [require]
      206 GETIMPORT                        R29 K1 [script]
      208 GETTABLEKS                       R29 R29 K42 ["QuestionAnswerTool"]
      210 CALL                             R28 1 1
      211 GETIMPORT                        R29 K5 [require]
      213 GETIMPORT                        R30 K1 [script]
      215 GETTABLEKS                       R30 R30 K43 ["ReadFileTool"]
      217 CALL                             R29 1 1
      218 GETIMPORT                        R30 K5 [require]
      220 GETIMPORT                        R31 K1 [script]
      222 GETTABLEKS                       R31 R31 K44 ["ScreenCaptureTool"]
      224 CALL                             R30 1 1
      225 GETIMPORT                        R31 K5 [require]
      227 GETIMPORT                        R32 K1 [script]
      229 GETTABLEKS                       R32 R32 K45 ["SkillTool"]
      231 CALL                             R31 1 1
      232 GETIMPORT                        R32 K5 [require]
      234 GETIMPORT                        R33 K1 [script]
      236 GETTABLEKS                       R33 R33 K46 ["StartMultiPlayerAgentsTool"]
      238 CALL                             R32 1 1
      239 GETIMPORT                        R33 K5 [require]
      241 GETIMPORT                        R34 K1 [script]
      243 GETTABLEKS                       R34 R34 K47 ["StartStopPlayTool"]
      245 CALL                             R33 1 1
      246 GETIMPORT                        R34 K5 [require]
      248 GETIMPORT                        R35 K1 [script]
      250 GETTABLEKS                       R35 R35 K48 ["StopMultiPlayerAgentsTool"]
      252 CALL                             R34 1 1
      253 GETIMPORT                        R35 K5 [require]
      255 GETIMPORT                        R36 K1 [script]
      257 GETTABLEKS                       R36 R36 K49 ["StoreImageTool"]
      259 CALL                             R35 1 1
      260 GETIMPORT                        R36 K5 [require]
      262 GETIMPORT                        R37 K1 [script]
      264 GETTABLEKS                       R37 R37 K50 ["SubagentTool"]
      266 CALL                             R36 1 1
      267 GETIMPORT                        R37 K5 [require]
      269 GETIMPORT                        R38 K1 [script]
      271 GETTABLEKS                       R38 R38 K51 ["UploadImageTool"]
      273 CALL                             R37 1 1
      274 GETIMPORT                        R38 K5 [require]
      276 GETIMPORT                        R39 K1 [script]
      278 GETTABLEKS                       R39 R39 K52 ["UserKeyboardInputTool"]
      280 CALL                             R38 1 1
      281 GETIMPORT                        R39 K5 [require]
      283 GETIMPORT                        R40 K1 [script]
      285 GETTABLEKS                       R40 R40 K53 ["UserMouseInputTool"]
      287 CALL                             R39 1 1
      288 GETIMPORT                        R40 K5 [require]
      290 GETIMPORT                        R41 K1 [script]
      292 GETTABLEKS                       R41 R41 K54 ["VideoCaptureTool"]
      294 CALL                             R40 1 1
      295 GETIMPORT                        R41 K5 [require]
      297 GETIMPORT                        R42 K1 [script]
      299 GETTABLEKS                       R42 R42 K55 ["WaitForMultiPlayerAgentsCommunicationTool"]
      301 CALL                             R41 1 1
      302 GETIMPORT                        R42 K5 [require]
      304 GETIMPORT                        R43 K1 [script]
      306 GETTABLEKS                       R43 R43 K56 ["WaitJobFinishedTool"]
      308 CALL                             R42 1 1
      309 GETIMPORT                        R43 K5 [require]
      311 GETTABLEKS                       R44 R0 K57 ["Flags"]
      313 CALL                             R43 1 1
      314 GETTABLEKS                       R44 R43 K58 ["Shared"]
      316 GETTABLEKS                       R44 R44 K59 ["FFlagAssistantAssetSearchInsertTool"]
      318 GETTABLEKS                       R45 R43 K58 ["Shared"]
      320 GETTABLEKS                       R45 R45 K60 ["FFlagAssistantAssetSearchInsertToolABTest"]
      322 GETTABLEKS                       R46 R43 K58 ["Shared"]
      324 GETTABLEKS                       R46 R46 K61 ["FFlagAssistantAnimationGenTool"]
      326 GETTABLEKS                       R47 R43 K58 ["Shared"]
      328 GETTABLEKS                       R47 R47 K62 ["FFlagProceduralModel"]
      330 GETIMPORT                        R48 K5 [require]
      332 GETTABLEKS                       R49 R0 K57 ["Flags"]
      334 GETTABLEKS                       R49 R49 K63 ["FFlagAssistantMarkdownPlanMode"]
      336 CALL                             R48 1 1
      337 GETTABLEKS                       R49 R43 K58 ["Shared"]
      339 GETTABLEKS                       R49 R49 K64 ["FFlagAssistantMultiPlayerAgents"]
      341 GETTABLEKS                       R50 R43 K58 ["Shared"]
      343 GETTABLEKS                       R50 R50 K65 ["FFlagAssistantGetStudioState"]
      345 GETIMPORT                        R51 K5 [require]
      347 GETTABLEKS                       R52 R0 K57 ["Flags"]
      349 GETTABLEKS                       R52 R52 K66 ["FFlagAssistantUserSkills"]
      351 CALL                             R51 1 1
      352 GETTABLEKS                       R52 R43 K58 ["Shared"]
      354 GETTABLEKS                       R52 R52 K67 ["FFlagAssistantVideoCaptureTool"]
      356 GETTABLEKS                       R53 R26 K68 ["getRuntimeForMeta"]
      358 GETTABLEKS                       R54 R4 K69 ["ToolNames"]
      360 NEWTABLE                         R55 32 0
      362 GETTABLEKS                       R56 R54 K70 ["ExecuteLuau"]
      364 SETTABLE                         R12 R55 R56
      365 GETTABLEKS                       R56 R54 K71 ["FileSearch"]
      367 SETTABLE                         R13 R55 R56
      368 GETTABLEKS                       R56 R54 K72 ["GameTree"]
      370 SETTABLE                         R16 R55 R56
      371 GETTABLEKS                       R56 R54 K73 ["GrepSearch"]
      373 SETTABLE                         R19 R55 R56
      374 GETTABLEKS                       R56 R54 K74 ["InspectInstance"]
      376 SETTABLE                         R21 R55 R56
      377 GETTABLEKS                       R56 R54 K75 ["MaterialGen"]
      379 SETTABLE                         R22 R55 R56
      380 GETTABLEKS                       R56 R54 K35 ["MeshGen"]
      382 SETTABLE                         R23 R55 R56
      383 GETTABLEKS                       R56 R54 K76 ["MultiEdit"]
      385 SETTABLE                         R24 R55 R56
      386 GETTABLEKS                       R56 R54 K77 ["QuestionAnswer"]
      388 SETTABLE                         R28 R55 R56
      389 GETTABLEKS                       R56 R54 K78 ["ReadFile"]
      391 SETTABLE                         R29 R55 R56
      392 GETTABLEKS                       R56 R54 K79 ["ScreenCapture"]
      394 SETTABLE                         R30 R55 R56
      395 GETTABLEKS                       R56 R54 K80 ["StoreImage"]
      397 SETTABLE                         R35 R55 R56
      398 GETTABLEKS                       R56 R54 K81 ["Subagent"]
      400 SETTABLE                         R36 R55 R56
      401 GETTABLEKS                       R56 R54 K82 ["UploadImage"]
      403 SETTABLE                         R37 R55 R56
      404 GETTABLEKS                       R56 R54 K83 ["Skill"]
      406 SETTABLE                         R31 R55 R56
      407 GETTABLEKS                       R56 R54 K84 ["HttpGet"]
      409 SETTABLE                         R20 R55 R56
      410 GETTABLEKS                       R56 R54 K85 ["FromHistory"]
      412 SETTABLE                         R15 R55 R56
      413 GETTABLEKS                       R56 R54 K77 ["QuestionAnswer"]
      415 SETTABLE                         R28 R55 R56
      416 GETTABLEKS                       R56 R54 K86 ["FinalizePlan"]
      418 SETTABLE                         R14 R55 R56
      419 GETTABLEKS                       R56 R54 K87 ["CompleteTodoItems"]
      421 SETTABLE                         R8 R55 R56
      422 MOVE                             R56 R51
      423 CALL                             R56 0 1
      424 JUMPIFNOT                        R56 ; [+3]
      425 GETTABLEKS                       R56 R54 K88 ["CreateSkill"]
      427 SETTABLE                         R9 R55 R56
      428 MOVE                             R56 R44
      429 CALL                             R56 0 1
      430 JUMPIF                           R56 ; [+3]
      431 MOVE                             R56 R45
      432 CALL                             R56 0 1
      433 JUMPIFNOT                        R56 ; [+24]
      434 GETTABLEKS                       R56 R54 K89 ["AssetInsert"]
      436 GETIMPORT                        R57 K5 [require]
      438 GETTABLEKS                       R58 R0 K15 ["Features"]
      440 GETTABLEKS                       R58 R58 K90 ["AssetManagement"]
      442 GETTABLEKS                       R58 R58 K91 ["AssetInsertTool"]
      444 CALL                             R57 1 1
      445 SETTABLE                         R57 R55 R56
      446 GETTABLEKS                       R56 R54 K92 ["AssetSearch"]
      448 GETIMPORT                        R57 K5 [require]
      450 GETTABLEKS                       R58 R0 K15 ["Features"]
      452 GETTABLEKS                       R58 R58 K90 ["AssetManagement"]
      454 GETTABLEKS                       R58 R58 K93 ["AssetSearchTool"]
      456 CALL                             R57 1 1
      457 SETTABLE                         R57 R55 R56
      458 MOVE                             R56 R44
      459 CALL                             R56 0 1
      460 JUMPIF                           R56 ; [+6]
      461 GETTABLEKS                       R56 R54 K94 ["CreatorStoreSearch"]
      463 SETTABLE                         R11 R55 R56
      464 GETTABLEKS                       R56 R54 K95 ["CreatorStoreInsert"]
      466 SETTABLE                         R10 R55 R56
      467 MOVE                             R56 R50
      468 CALL                             R56 0 1
      469 JUMPIFNOT                        R56 ; [+3]
      470 GETTABLEKS                       R56 R54 K96 ["GetStudioState"]
      472 SETTABLE                         R18 R55 R56
      473 GETTABLEKS                       R56 R54 K97 ["StartStopPlay"]
      475 SETTABLE                         R33 R55 R56
      476 GETTABLEKS                       R56 R54 K98 ["GetConsoleOutput"]
      478 SETTABLE                         R17 R55 R56
      479 GETTABLEKS                       R56 R54 K99 ["UserKeyboardInput"]
      481 SETTABLE                         R38 R55 R56
      482 GETTABLEKS                       R56 R54 K100 ["UserMouseInput"]
      484 SETTABLE                         R39 R55 R56
      485 GETTABLEKS                       R56 R54 K101 ["CharacterNavigation"]
      487 SETTABLE                         R7 R55 R56
      488 MOVE                             R56 R49
      489 CALL                             R56 0 1
      490 JUMPIFNOT                        R56 ; [+12]
      491 GETTABLEKS                       R56 R54 K102 ["StartMultiPlayerAgents"]
      493 SETTABLE                         R32 R55 R56
      494 GETTABLEKS                       R56 R54 K103 ["StopMultiPlayerAgents"]
      496 SETTABLE                         R34 R55 R56
      497 GETTABLEKS                       R56 R54 K104 ["MultiPlayerAgentsCommunication"]
      499 SETTABLE                         R25 R55 R56
      500 GETTABLEKS                       R56 R54 K105 ["WaitForMultiPlayerAgentsCommunication"]
      502 SETTABLE                         R41 R55 R56
      503 MOVE                             R56 R52
      504 CALL                             R56 0 1
      505 JUMPIFNOT                        R56 ; [+3]
      506 GETTABLEKS                       R56 R54 K106 ["VideoCapture"]
      508 SETTABLE                         R40 R55 R56
      509 MOVE                             R56 R46
      510 CALL                             R56 0 1
      511 JUMPIFNOT                        R56 ; [+3]
      512 GETTABLEKS                       R56 R54 K16 ["AnimationGen"]
      514 SETTABLE                         R6 R55 R56
      515 MOVE                             R56 R47
      516 CALL                             R56 0 1
      517 JUMPIFNOT                        R56 ; [+3]
      518 GETTABLEKS                       R56 R54 K40 ["PrimitiveGen"]
      520 SETTABLE                         R27 R55 R56
      521 MOVE                             R56 R47
      522 CALL                             R56 0 1
      523 JUMPIFNOT                        R56 ; [+3]
      524 GETTABLEKS                       R56 R54 K107 ["WaitJobFinished"]
      526 SETTABLE                         R42 R55 R56
      527 MOVE                             R56 R48
      528 CALL                             R56 0 1
      529 JUMPIFNOT                        R56 ; [+10]
      530 GETTABLEKS                       R56 R54 K108 ["UpdatePlan"]
      532 GETIMPORT                        R57 K5 [require]
      534 GETIMPORT                        R58 K1 [script]
      536 GETTABLEKS                       R58 R58 K109 ["UpdatePlanTool"]
      538 CALL                             R57 1 1
      539 SETTABLE                         R57 R55 R56
      540 DUPCLOSURE                       R56 K110 [PROTO_0]
      541 CAPTURE                          VAL R2
      542 CAPTURE                          VAL R3
      543 CAPTURE                          VAL R53
      544 DUPCLOSURE                       R57 K111 [PROTO_1]
      545 CAPTURE                          VAL R5
      546 DUPTABLE                         R58 K115 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      547 SETTABLEKS                       R4 R58 K12 ["ToolTypes"]
      549 SETTABLEKS                       R55 R58 K112 ["BuiltinTools"]
      551 SETTABLEKS                       R56 R58 K113 ["createTools"]
      553 SETTABLEKS                       R57 R58 K114 ["registerTools"]
      555 RETURN                           R58 1
