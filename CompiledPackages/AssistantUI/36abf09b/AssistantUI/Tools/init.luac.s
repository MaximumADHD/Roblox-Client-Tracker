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
       11 RETURN                           R0 0

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
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["DMNetworking"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Guest"]
       23 GETTABLEKS                       R4 R4 K10 ["Environment"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Hooks"]
       30 GETTABLEKS                       R5 R5 K12 ["RESTRICTED_ExternalHooks"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K13 ["Flags"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K14 ["PersistentPlanRuntime"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETIMPORT                        R8 K1 [script]
       47 GETTABLEKS                       R8 R8 K15 ["ToolTypes"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K16 ["Components"]
       54 GETTABLEKS                       R9 R9 K17 ["UIToolRegistry"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K18 ["Features"]
       61 GETTABLEKS                       R10 R10 K19 ["AnimationGen"]
       63 GETTABLEKS                       R10 R10 K20 ["AnimationGenTool"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETIMPORT                        R11 K1 [script]
       70 GETTABLEKS                       R11 R11 K21 ["CharacterNavigationTool"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETIMPORT                        R12 K1 [script]
       77 GETTABLEKS                       R12 R12 K22 ["CompleteTodoItemsTool"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETIMPORT                        R13 K1 [script]
       84 GETTABLEKS                       R13 R13 K23 ["CreateSkillTool"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K18 ["Features"]
       91 GETTABLEKS                       R14 R14 K24 ["CreatorStore"]
       93 GETTABLEKS                       R14 R14 K25 ["CreatorStoreInsertTool"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K18 ["Features"]
      100 GETTABLEKS                       R15 R15 K24 ["CreatorStore"]
      102 GETTABLEKS                       R15 R15 K26 ["CreatorStoreSearchTool"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETIMPORT                        R16 K1 [script]
      109 GETTABLEKS                       R16 R16 K27 ["EditSkillTool"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETIMPORT                        R17 K1 [script]
      116 GETTABLEKS                       R17 R17 K28 ["ExecuteLuauTool"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETIMPORT                        R18 K1 [script]
      123 GETTABLEKS                       R18 R18 K29 ["FileSearchTool"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETIMPORT                        R19 K1 [script]
      130 GETTABLEKS                       R19 R19 K30 ["FinalizePlanTool"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K5 [require]
      135 GETIMPORT                        R20 K1 [script]
      137 GETTABLEKS                       R20 R20 K31 ["FromHistoryTool"]
      139 CALL                             R19 1 1
      140 GETIMPORT                        R20 K5 [require]
      142 GETIMPORT                        R21 K1 [script]
      144 GETTABLEKS                       R21 R21 K32 ["GameTreeTool"]
      146 CALL                             R20 1 1
      147 GETIMPORT                        R21 K5 [require]
      149 GETIMPORT                        R22 K1 [script]
      151 GETTABLEKS                       R22 R22 K33 ["GetConsoleOutputTool"]
      153 CALL                             R21 1 1
      154 GETIMPORT                        R22 K5 [require]
      156 GETIMPORT                        R23 K1 [script]
      158 GETTABLEKS                       R23 R23 K34 ["GetStudioStateTool"]
      160 CALL                             R22 1 1
      161 GETIMPORT                        R23 K5 [require]
      163 GETIMPORT                        R24 K1 [script]
      165 GETTABLEKS                       R24 R24 K35 ["GrepSearchTool"]
      167 CALL                             R23 1 1
      168 GETIMPORT                        R24 K5 [require]
      170 GETIMPORT                        R25 K1 [script]
      172 GETTABLEKS                       R25 R25 K36 ["HttpGetTool"]
      174 CALL                             R24 1 1
      175 GETIMPORT                        R25 K5 [require]
      177 GETIMPORT                        R26 K1 [script]
      179 GETTABLEKS                       R26 R26 K37 ["InspectInstanceTool"]
      181 CALL                             R25 1 1
      182 GETIMPORT                        R26 K5 [require]
      184 GETIMPORT                        R27 K1 [script]
      186 GETTABLEKS                       R27 R27 K38 ["MaterialGenTool"]
      188 CALL                             R26 1 1
      189 GETIMPORT                        R27 K5 [require]
      191 GETTABLEKS                       R28 R0 K18 ["Features"]
      193 GETTABLEKS                       R28 R28 K39 ["MeshGen"]
      195 GETTABLEKS                       R28 R28 K40 ["MeshGenTool"]
      197 CALL                             R27 1 1
      198 GETIMPORT                        R28 K5 [require]
      200 GETIMPORT                        R29 K1 [script]
      202 GETTABLEKS                       R29 R29 K41 ["MultiEditTool"]
      204 CALL                             R28 1 1
      205 GETIMPORT                        R29 K5 [require]
      207 GETIMPORT                        R30 K1 [script]
      209 GETTABLEKS                       R30 R30 K42 ["MultiPlayerAgentsCommunicationTool"]
      211 CALL                             R29 1 1
      212 GETIMPORT                        R30 K5 [require]
      214 GETTABLEKS                       R31 R0 K18 ["Features"]
      216 GETTABLEKS                       R31 R31 K43 ["PrimitiveGen"]
      218 GETTABLEKS                       R31 R31 K44 ["PrimitiveGenTool"]
      220 CALL                             R30 1 1
      221 GETIMPORT                        R31 K5 [require]
      223 GETIMPORT                        R32 K1 [script]
      225 GETTABLEKS                       R32 R32 K45 ["QuestionAnswerTool"]
      227 CALL                             R31 1 1
      228 GETIMPORT                        R32 K5 [require]
      230 GETIMPORT                        R33 K1 [script]
      232 GETTABLEKS                       R33 R33 K46 ["ReadFileTool"]
      234 CALL                             R32 1 1
      235 GETIMPORT                        R33 K5 [require]
      237 GETIMPORT                        R34 K1 [script]
      239 GETTABLEKS                       R34 R34 K47 ["ScreenCaptureTool"]
      241 CALL                             R33 1 1
      242 GETIMPORT                        R34 K5 [require]
      244 GETIMPORT                        R35 K1 [script]
      246 GETTABLEKS                       R35 R35 K48 ["SkillTool"]
      248 CALL                             R34 1 1
      249 GETIMPORT                        R35 K5 [require]
      251 GETIMPORT                        R36 K1 [script]
      253 GETTABLEKS                       R36 R36 K49 ["StartMultiPlayerAgentsTool"]
      255 CALL                             R35 1 1
      256 GETIMPORT                        R36 K5 [require]
      258 GETIMPORT                        R37 K1 [script]
      260 GETTABLEKS                       R37 R37 K50 ["StartStopPlayTool"]
      262 CALL                             R36 1 1
      263 GETIMPORT                        R37 K5 [require]
      265 GETIMPORT                        R38 K1 [script]
      267 GETTABLEKS                       R38 R38 K51 ["StopMultiPlayerAgentsTool"]
      269 CALL                             R37 1 1
      270 GETIMPORT                        R38 K5 [require]
      272 GETIMPORT                        R39 K1 [script]
      274 GETTABLEKS                       R39 R39 K52 ["StoreImageTool"]
      276 CALL                             R38 1 1
      277 GETIMPORT                        R39 K5 [require]
      279 GETIMPORT                        R40 K1 [script]
      281 GETTABLEKS                       R40 R40 K53 ["SubagentTool"]
      283 CALL                             R39 1 1
      284 GETIMPORT                        R40 K5 [require]
      286 GETIMPORT                        R41 K1 [script]
      288 GETTABLEKS                       R41 R41 K54 ["UploadImageTool"]
      290 CALL                             R40 1 1
      291 GETIMPORT                        R41 K5 [require]
      293 GETIMPORT                        R42 K1 [script]
      295 GETTABLEKS                       R42 R42 K55 ["UserKeyboardInputTool"]
      297 CALL                             R41 1 1
      298 GETIMPORT                        R42 K5 [require]
      300 GETIMPORT                        R43 K1 [script]
      302 GETTABLEKS                       R43 R43 K56 ["UserMouseInputTool"]
      304 CALL                             R42 1 1
      305 GETIMPORT                        R43 K5 [require]
      307 GETIMPORT                        R44 K1 [script]
      309 GETTABLEKS                       R44 R44 K57 ["VideoCaptureTool"]
      311 CALL                             R43 1 1
      312 GETIMPORT                        R44 K5 [require]
      314 GETIMPORT                        R45 K1 [script]
      316 GETTABLEKS                       R45 R45 K58 ["WaitForMultiPlayerAgentsCommunicationTool"]
      318 CALL                             R44 1 1
      319 GETIMPORT                        R45 K5 [require]
      321 GETIMPORT                        R46 K1 [script]
      323 GETTABLEKS                       R46 R46 K59 ["WaitJobFinishedTool"]
      325 CALL                             R45 1 1
      326 GETTABLEKS                       R46 R6 K60 ["getRuntimeForMeta"]
      328 GETTABLEKS                       R47 R7 K61 ["ToolNames"]
      330 NEWTABLE                         R48 32 0
      332 GETTABLEKS                       R49 R47 K62 ["ExecuteLuau"]
      334 SETTABLE                         R16 R48 R49
      335 GETTABLEKS                       R49 R47 K63 ["FileSearch"]
      337 SETTABLE                         R17 R48 R49
      338 GETTABLEKS                       R49 R47 K64 ["GameTree"]
      340 SETTABLE                         R20 R48 R49
      341 GETTABLEKS                       R49 R47 K65 ["GrepSearch"]
      343 SETTABLE                         R23 R48 R49
      344 GETTABLEKS                       R49 R47 K66 ["InspectInstance"]
      346 SETTABLE                         R25 R48 R49
      347 GETTABLEKS                       R49 R47 K67 ["MaterialGen"]
      349 SETTABLE                         R26 R48 R49
      350 GETTABLEKS                       R49 R47 K39 ["MeshGen"]
      352 SETTABLE                         R27 R48 R49
      353 GETTABLEKS                       R49 R47 K68 ["MultiEdit"]
      355 SETTABLE                         R28 R48 R49
      356 GETTABLEKS                       R49 R47 K69 ["QuestionAnswer"]
      358 SETTABLE                         R31 R48 R49
      359 GETTABLEKS                       R49 R47 K70 ["ReadFile"]
      361 SETTABLE                         R32 R48 R49
      362 GETTABLEKS                       R49 R47 K71 ["ScreenCapture"]
      364 SETTABLE                         R33 R48 R49
      365 GETTABLEKS                       R49 R47 K72 ["StoreImage"]
      367 SETTABLE                         R38 R48 R49
      368 GETTABLEKS                       R49 R47 K73 ["Subagent"]
      370 SETTABLE                         R39 R48 R49
      371 GETTABLEKS                       R49 R47 K74 ["UploadImage"]
      373 SETTABLE                         R40 R48 R49
      374 GETTABLEKS                       R49 R47 K75 ["Skill"]
      376 SETTABLE                         R34 R48 R49
      377 GETTABLEKS                       R49 R47 K76 ["HttpGet"]
      379 SETTABLE                         R24 R48 R49
      380 GETTABLEKS                       R49 R47 K77 ["FromHistory"]
      382 SETTABLE                         R19 R48 R49
      383 GETTABLEKS                       R49 R47 K69 ["QuestionAnswer"]
      385 SETTABLE                         R31 R48 R49
      386 GETTABLEKS                       R49 R47 K78 ["FinalizePlan"]
      388 SETTABLE                         R18 R48 R49
      389 GETTABLEKS                       R49 R47 K79 ["CompleteTodoItems"]
      391 SETTABLE                         R11 R48 R49
      392 GETTABLEKS                       R49 R5 K80 ["FFlagAssistantUserSkills"]
      394 JUMPIFNOT                        R49 ; [+6]
      395 GETTABLEKS                       R49 R47 K81 ["CreateSkill"]
      397 SETTABLE                         R12 R48 R49
      398 GETTABLEKS                       R49 R47 K82 ["EditSkill"]
      400 SETTABLE                         R15 R48 R49
      401 GETTABLEKS                       R49 R5 K83 ["FFlagAssistantAssetSearchInsertTool"]
      403 JUMPIF                           R49 ; [+3]
      404 GETTABLEKS                       R49 R5 K84 ["FFlagAssistantAssetSearchInsertToolABTest"]
      406 JUMPIFNOT                        R49 ; [+24]
      407 GETTABLEKS                       R49 R47 K85 ["AssetInsert"]
      409 GETIMPORT                        R50 K5 [require]
      411 GETTABLEKS                       R51 R0 K18 ["Features"]
      413 GETTABLEKS                       R51 R51 K86 ["AssetManagement"]
      415 GETTABLEKS                       R51 R51 K87 ["AssetInsertTool"]
      417 CALL                             R50 1 1
      418 SETTABLE                         R50 R48 R49
      419 GETTABLEKS                       R49 R47 K88 ["AssetSearch"]
      421 GETIMPORT                        R50 K5 [require]
      423 GETTABLEKS                       R51 R0 K18 ["Features"]
      425 GETTABLEKS                       R51 R51 K86 ["AssetManagement"]
      427 GETTABLEKS                       R51 R51 K89 ["AssetSearchTool"]
      429 CALL                             R50 1 1
      430 SETTABLE                         R50 R48 R49
      431 GETTABLEKS                       R49 R5 K83 ["FFlagAssistantAssetSearchInsertTool"]
      433 JUMPIF                           R49 ; [+6]
      434 GETTABLEKS                       R49 R47 K90 ["CreatorStoreSearch"]
      436 SETTABLE                         R14 R48 R49
      437 GETTABLEKS                       R49 R47 K91 ["CreatorStoreInsert"]
      439 SETTABLE                         R13 R48 R49
      440 GETTABLEKS                       R49 R5 K92 ["FFlagAssistantGetStudioState"]
      442 JUMPIFNOT                        R49 ; [+3]
      443 GETTABLEKS                       R49 R47 K93 ["GetStudioState"]
      445 SETTABLE                         R22 R48 R49
      446 GETTABLEKS                       R49 R47 K94 ["StartStopPlay"]
      448 SETTABLE                         R36 R48 R49
      449 GETTABLEKS                       R49 R47 K95 ["GetConsoleOutput"]
      451 SETTABLE                         R21 R48 R49
      452 GETTABLEKS                       R49 R47 K96 ["UserKeyboardInput"]
      454 SETTABLE                         R41 R48 R49
      455 GETTABLEKS                       R49 R47 K97 ["UserMouseInput"]
      457 SETTABLE                         R42 R48 R49
      458 GETTABLEKS                       R49 R47 K98 ["CharacterNavigation"]
      460 SETTABLE                         R10 R48 R49
      461 GETTABLEKS                       R49 R5 K99 ["FFlagAssistantMultiPlayerAgents"]
      463 JUMPIFNOT                        R49 ; [+12]
      464 GETTABLEKS                       R49 R47 K100 ["StartMultiPlayerAgents"]
      466 SETTABLE                         R35 R48 R49
      467 GETTABLEKS                       R49 R47 K101 ["StopMultiPlayerAgents"]
      469 SETTABLE                         R37 R48 R49
      470 GETTABLEKS                       R49 R47 K102 ["MultiPlayerAgentsCommunication"]
      472 SETTABLE                         R29 R48 R49
      473 GETTABLEKS                       R49 R47 K103 ["WaitForMultiPlayerAgentsCommunication"]
      475 SETTABLE                         R44 R48 R49
      476 GETTABLEKS                       R49 R5 K104 ["FFlagAssistantVideoCaptureTool"]
      478 JUMPIFNOT                        R49 ; [+3]
      479 GETTABLEKS                       R49 R47 K105 ["VideoCapture"]
      481 SETTABLE                         R43 R48 R49
      482 GETTABLEKS                       R49 R5 K106 ["FFlagAssistantAnimationGenTool"]
      484 JUMPIFNOT                        R49 ; [+3]
      485 GETTABLEKS                       R49 R47 K19 ["AnimationGen"]
      487 SETTABLE                         R9 R48 R49
      488 GETTABLEKS                       R49 R5 K107 ["EngineFeatureProceduralModel"]
      490 JUMPIFNOT                        R49 ; [+3]
      491 GETTABLEKS                       R49 R47 K43 ["PrimitiveGen"]
      493 SETTABLE                         R30 R48 R49
      494 GETTABLEKS                       R49 R5 K107 ["EngineFeatureProceduralModel"]
      496 JUMPIFNOT                        R49 ; [+3]
      497 GETTABLEKS                       R49 R47 K108 ["WaitJobFinished"]
      499 SETTABLE                         R45 R48 R49
      500 GETTABLEKS                       R49 R5 K109 ["FFlagAssistantMarkdownPlanMode"]
      502 JUMPIFNOT                        R49 ; [+10]
      503 GETTABLEKS                       R49 R47 K110 ["UpdatePlan"]
      505 GETIMPORT                        R50 K5 [require]
      507 GETIMPORT                        R51 K1 [script]
      509 GETTABLEKS                       R51 R51 K111 ["UpdatePlanTool"]
      511 CALL                             R50 1 1
      512 SETTABLE                         R50 R48 R49
      513 DUPCLOSURE                       R49 K112 [PROTO_0]
      514 CAPTURE                          VAL R3
      515 CAPTURE                          VAL R4
      516 CAPTURE                          VAL R46
      517 DUPCLOSURE                       R50 K113 [PROTO_1]
      518 CAPTURE                          VAL R8
      519 DUPTABLE                         R51 K117 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      520 SETTABLEKS                       R7 R51 K15 ["ToolTypes"]
      522 SETTABLEKS                       R48 R51 K114 ["BuiltinTools"]
      524 SETTABLEKS                       R49 R51 K115 ["createTools"]
      526 SETTABLEKS                       R50 R51 K116 ["registerTools"]
      528 RETURN                           R51 1
