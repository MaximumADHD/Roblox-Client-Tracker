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
       89 GETIMPORT                        R14 K1 [script]
       91 GETTABLEKS                       R14 R14 K24 ["CreatorStoreInsertTool"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K5 [require]
       96 GETIMPORT                        R15 K1 [script]
       98 GETTABLEKS                       R15 R15 K25 ["CreatorStoreSearchTool"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETIMPORT                        R16 K1 [script]
      105 GETTABLEKS                       R16 R16 K26 ["EditSkillTool"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETIMPORT                        R17 K1 [script]
      112 GETTABLEKS                       R17 R17 K27 ["ExecuteLuauTool"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETIMPORT                        R18 K1 [script]
      119 GETTABLEKS                       R18 R18 K28 ["FileSearchTool"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K5 [require]
      124 GETIMPORT                        R19 K1 [script]
      126 GETTABLEKS                       R19 R19 K29 ["FinalizePlanTool"]
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K5 [require]
      131 GETIMPORT                        R20 K1 [script]
      133 GETTABLEKS                       R20 R20 K30 ["FromHistoryTool"]
      135 CALL                             R19 1 1
      136 GETIMPORT                        R20 K5 [require]
      138 GETIMPORT                        R21 K1 [script]
      140 GETTABLEKS                       R21 R21 K31 ["GameTreeTool"]
      142 CALL                             R20 1 1
      143 GETIMPORT                        R21 K5 [require]
      145 GETIMPORT                        R22 K1 [script]
      147 GETTABLEKS                       R22 R22 K32 ["GetConsoleOutputTool"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K5 [require]
      152 GETIMPORT                        R23 K1 [script]
      154 GETTABLEKS                       R23 R23 K33 ["GetStudioStateTool"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K5 [require]
      159 GETIMPORT                        R24 K1 [script]
      161 GETTABLEKS                       R24 R24 K34 ["GrepSearchTool"]
      163 CALL                             R23 1 1
      164 GETIMPORT                        R24 K5 [require]
      166 GETIMPORT                        R25 K1 [script]
      168 GETTABLEKS                       R25 R25 K35 ["HttpGetTool"]
      170 CALL                             R24 1 1
      171 GETIMPORT                        R25 K5 [require]
      173 GETIMPORT                        R26 K1 [script]
      175 GETTABLEKS                       R26 R26 K36 ["InspectInstanceTool"]
      177 CALL                             R25 1 1
      178 GETIMPORT                        R26 K5 [require]
      180 GETIMPORT                        R27 K1 [script]
      182 GETTABLEKS                       R27 R27 K37 ["MaterialGenTool"]
      184 CALL                             R26 1 1
      185 GETIMPORT                        R27 K5 [require]
      187 GETIMPORT                        R28 K1 [script]
      189 GETTABLEKS                       R28 R28 K38 ["MeshGenTool"]
      191 CALL                             R27 1 1
      192 GETIMPORT                        R28 K5 [require]
      194 GETIMPORT                        R29 K1 [script]
      196 GETTABLEKS                       R29 R29 K39 ["MultiEditTool"]
      198 CALL                             R28 1 1
      199 GETIMPORT                        R29 K5 [require]
      201 GETIMPORT                        R30 K1 [script]
      203 GETTABLEKS                       R30 R30 K40 ["MultiPlayerAgentsCommunicationTool"]
      205 CALL                             R29 1 1
      206 GETIMPORT                        R30 K5 [require]
      208 GETTABLEKS                       R31 R0 K18 ["Features"]
      210 GETTABLEKS                       R31 R31 K41 ["PrimitiveGen"]
      212 GETTABLEKS                       R31 R31 K42 ["PrimitiveGenTool"]
      214 CALL                             R30 1 1
      215 GETIMPORT                        R31 K5 [require]
      217 GETIMPORT                        R32 K1 [script]
      219 GETTABLEKS                       R32 R32 K43 ["QuestionAnswerTool"]
      221 CALL                             R31 1 1
      222 GETIMPORT                        R32 K5 [require]
      224 GETIMPORT                        R33 K1 [script]
      226 GETTABLEKS                       R33 R33 K44 ["ReadFileTool"]
      228 CALL                             R32 1 1
      229 GETIMPORT                        R33 K5 [require]
      231 GETIMPORT                        R34 K1 [script]
      233 GETTABLEKS                       R34 R34 K45 ["ScreenCaptureTool"]
      235 CALL                             R33 1 1
      236 GETIMPORT                        R34 K5 [require]
      238 GETIMPORT                        R35 K1 [script]
      240 GETTABLEKS                       R35 R35 K46 ["SkillTool"]
      242 CALL                             R34 1 1
      243 GETIMPORT                        R35 K5 [require]
      245 GETIMPORT                        R36 K1 [script]
      247 GETTABLEKS                       R36 R36 K47 ["StartMultiPlayerAgentsTool"]
      249 CALL                             R35 1 1
      250 GETIMPORT                        R36 K5 [require]
      252 GETIMPORT                        R37 K1 [script]
      254 GETTABLEKS                       R37 R37 K48 ["StartStopPlayTool"]
      256 CALL                             R36 1 1
      257 GETIMPORT                        R37 K5 [require]
      259 GETIMPORT                        R38 K1 [script]
      261 GETTABLEKS                       R38 R38 K49 ["StopMultiPlayerAgentsTool"]
      263 CALL                             R37 1 1
      264 GETIMPORT                        R38 K5 [require]
      266 GETIMPORT                        R39 K1 [script]
      268 GETTABLEKS                       R39 R39 K50 ["StoreImageTool"]
      270 CALL                             R38 1 1
      271 GETIMPORT                        R39 K5 [require]
      273 GETIMPORT                        R40 K1 [script]
      275 GETTABLEKS                       R40 R40 K51 ["SubagentTool"]
      277 CALL                             R39 1 1
      278 GETIMPORT                        R40 K5 [require]
      280 GETIMPORT                        R41 K1 [script]
      282 GETTABLEKS                       R41 R41 K52 ["UploadImageTool"]
      284 CALL                             R40 1 1
      285 GETIMPORT                        R41 K5 [require]
      287 GETIMPORT                        R42 K1 [script]
      289 GETTABLEKS                       R42 R42 K53 ["UserKeyboardInputTool"]
      291 CALL                             R41 1 1
      292 GETIMPORT                        R42 K5 [require]
      294 GETIMPORT                        R43 K1 [script]
      296 GETTABLEKS                       R43 R43 K54 ["UserMouseInputTool"]
      298 CALL                             R42 1 1
      299 GETIMPORT                        R43 K5 [require]
      301 GETIMPORT                        R44 K1 [script]
      303 GETTABLEKS                       R44 R44 K55 ["VideoCaptureTool"]
      305 CALL                             R43 1 1
      306 GETIMPORT                        R44 K5 [require]
      308 GETIMPORT                        R45 K1 [script]
      310 GETTABLEKS                       R45 R45 K56 ["WaitForMultiPlayerAgentsCommunicationTool"]
      312 CALL                             R44 1 1
      313 GETIMPORT                        R45 K5 [require]
      315 GETIMPORT                        R46 K1 [script]
      317 GETTABLEKS                       R46 R46 K57 ["WaitJobFinishedTool"]
      319 CALL                             R45 1 1
      320 GETTABLEKS                       R46 R6 K58 ["getRuntimeForMeta"]
      322 GETTABLEKS                       R47 R7 K59 ["ToolNames"]
      324 NEWTABLE                         R48 32 0
      326 GETTABLEKS                       R49 R47 K60 ["ExecuteLuau"]
      328 SETTABLE                         R16 R48 R49
      329 GETTABLEKS                       R49 R47 K61 ["FileSearch"]
      331 SETTABLE                         R17 R48 R49
      332 GETTABLEKS                       R49 R47 K62 ["GameTree"]
      334 SETTABLE                         R20 R48 R49
      335 GETTABLEKS                       R49 R47 K63 ["GrepSearch"]
      337 SETTABLE                         R23 R48 R49
      338 GETTABLEKS                       R49 R47 K64 ["InspectInstance"]
      340 SETTABLE                         R25 R48 R49
      341 GETTABLEKS                       R49 R47 K65 ["MaterialGen"]
      343 SETTABLE                         R26 R48 R49
      344 GETTABLEKS                       R49 R47 K66 ["MeshGen"]
      346 SETTABLE                         R27 R48 R49
      347 GETTABLEKS                       R49 R47 K67 ["MultiEdit"]
      349 SETTABLE                         R28 R48 R49
      350 GETTABLEKS                       R49 R47 K68 ["QuestionAnswer"]
      352 SETTABLE                         R31 R48 R49
      353 GETTABLEKS                       R49 R47 K69 ["ReadFile"]
      355 SETTABLE                         R32 R48 R49
      356 GETTABLEKS                       R49 R47 K70 ["ScreenCapture"]
      358 SETTABLE                         R33 R48 R49
      359 GETTABLEKS                       R49 R47 K71 ["StoreImage"]
      361 SETTABLE                         R38 R48 R49
      362 GETTABLEKS                       R49 R47 K72 ["Subagent"]
      364 SETTABLE                         R39 R48 R49
      365 GETTABLEKS                       R49 R47 K73 ["UploadImage"]
      367 SETTABLE                         R40 R48 R49
      368 GETTABLEKS                       R49 R47 K74 ["Skill"]
      370 SETTABLE                         R34 R48 R49
      371 GETTABLEKS                       R49 R47 K75 ["HttpGet"]
      373 SETTABLE                         R24 R48 R49
      374 GETTABLEKS                       R49 R47 K76 ["FromHistory"]
      376 SETTABLE                         R19 R48 R49
      377 GETTABLEKS                       R49 R47 K68 ["QuestionAnswer"]
      379 SETTABLE                         R31 R48 R49
      380 GETTABLEKS                       R49 R47 K77 ["FinalizePlan"]
      382 SETTABLE                         R18 R48 R49
      383 GETTABLEKS                       R49 R47 K78 ["CompleteTodoItems"]
      385 SETTABLE                         R11 R48 R49
      386 GETTABLEKS                       R49 R47 K79 ["CreateSkill"]
      388 SETTABLE                         R12 R48 R49
      389 GETTABLEKS                       R49 R47 K80 ["EditSkill"]
      391 SETTABLE                         R15 R48 R49
      392 GETTABLEKS                       R49 R5 K81 ["FFlagAssistantAssetSearchInsertTool"]
      394 JUMPIF                           R49 ; [+3]
      395 GETTABLEKS                       R49 R5 K82 ["FFlagAssistantAssetSearchInsertToolABTest"]
      397 JUMPIFNOT                        R49 ; [+20]
      398 GETTABLEKS                       R49 R47 K83 ["AssetInsert"]
      400 GETIMPORT                        R50 K5 [require]
      402 GETIMPORT                        R51 K1 [script]
      404 GETTABLEKS                       R51 R51 K84 ["AssetInsertTool"]
      406 CALL                             R50 1 1
      407 SETTABLE                         R50 R48 R49
      408 GETTABLEKS                       R49 R47 K85 ["AssetSearch"]
      410 GETIMPORT                        R50 K5 [require]
      412 GETIMPORT                        R51 K1 [script]
      414 GETTABLEKS                       R51 R51 K86 ["AssetSearchTool"]
      416 CALL                             R50 1 1
      417 SETTABLE                         R50 R48 R49
      418 GETTABLEKS                       R49 R5 K81 ["FFlagAssistantAssetSearchInsertTool"]
      420 JUMPIF                           R49 ; [+6]
      421 GETTABLEKS                       R49 R47 K87 ["CreatorStoreSearch"]
      423 SETTABLE                         R14 R48 R49
      424 GETTABLEKS                       R49 R47 K88 ["CreatorStoreInsert"]
      426 SETTABLE                         R13 R48 R49
      427 GETTABLEKS                       R49 R5 K89 ["FFlagAssistantGetStudioState"]
      429 JUMPIFNOT                        R49 ; [+3]
      430 GETTABLEKS                       R49 R47 K90 ["GetStudioState"]
      432 SETTABLE                         R22 R48 R49
      433 GETTABLEKS                       R49 R47 K91 ["StartStopPlay"]
      435 SETTABLE                         R36 R48 R49
      436 GETTABLEKS                       R49 R47 K92 ["GetConsoleOutput"]
      438 SETTABLE                         R21 R48 R49
      439 GETTABLEKS                       R49 R47 K93 ["UserKeyboardInput"]
      441 SETTABLE                         R41 R48 R49
      442 GETTABLEKS                       R49 R47 K94 ["UserMouseInput"]
      444 SETTABLE                         R42 R48 R49
      445 GETTABLEKS                       R49 R47 K95 ["CharacterNavigation"]
      447 SETTABLE                         R10 R48 R49
      448 GETTABLEKS                       R49 R5 K96 ["FFlagAssistantMultiPlayerAgents"]
      450 JUMPIFNOT                        R49 ; [+12]
      451 GETTABLEKS                       R49 R47 K97 ["StartMultiPlayerAgents"]
      453 SETTABLE                         R35 R48 R49
      454 GETTABLEKS                       R49 R47 K98 ["StopMultiPlayerAgents"]
      456 SETTABLE                         R37 R48 R49
      457 GETTABLEKS                       R49 R47 K99 ["MultiPlayerAgentsCommunication"]
      459 SETTABLE                         R29 R48 R49
      460 GETTABLEKS                       R49 R47 K100 ["WaitForMultiPlayerAgentsCommunication"]
      462 SETTABLE                         R44 R48 R49
      463 GETTABLEKS                       R49 R5 K101 ["FFlagAssistantVideoCaptureTool"]
      465 JUMPIFNOT                        R49 ; [+3]
      466 GETTABLEKS                       R49 R47 K102 ["VideoCapture"]
      468 SETTABLE                         R43 R48 R49
      469 GETTABLEKS                       R49 R5 K103 ["FFlagAssistantAnimationGenTool"]
      471 JUMPIFNOT                        R49 ; [+3]
      472 GETTABLEKS                       R49 R47 K19 ["AnimationGen"]
      474 SETTABLE                         R9 R48 R49
      475 GETTABLEKS                       R49 R5 K104 ["EngineFeatureProceduralModel"]
      477 JUMPIFNOT                        R49 ; [+3]
      478 GETTABLEKS                       R49 R47 K41 ["PrimitiveGen"]
      480 SETTABLE                         R30 R48 R49
      481 GETTABLEKS                       R49 R5 K104 ["EngineFeatureProceduralModel"]
      483 JUMPIFNOT                        R49 ; [+3]
      484 GETTABLEKS                       R49 R47 K105 ["WaitJobFinished"]
      486 SETTABLE                         R45 R48 R49
      487 GETTABLEKS                       R49 R5 K106 ["FFlagAssistantMarkdownPlanMode"]
      489 JUMPIFNOT                        R49 ; [+10]
      490 GETTABLEKS                       R49 R47 K107 ["UpdatePlan"]
      492 GETIMPORT                        R50 K5 [require]
      494 GETIMPORT                        R51 K1 [script]
      496 GETTABLEKS                       R51 R51 K108 ["UpdatePlanTool"]
      498 CALL                             R50 1 1
      499 SETTABLE                         R50 R48 R49
      500 DUPCLOSURE                       R49 K109 [PROTO_0]
      501 CAPTURE                          VAL R3
      502 CAPTURE                          VAL R4
      503 CAPTURE                          VAL R46
      504 DUPCLOSURE                       R50 K110 [PROTO_1]
      505 CAPTURE                          VAL R8
      506 DUPTABLE                         R51 K114 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      507 SETTABLEKS                       R7 R51 K15 ["ToolTypes"]
      509 SETTABLEKS                       R48 R51 K111 ["BuiltinTools"]
      511 SETTABLEKS                       R49 R51 K112 ["createTools"]
      513 SETTABLEKS                       R50 R51 K113 ["registerTools"]
      515 RETURN                           R51 1
