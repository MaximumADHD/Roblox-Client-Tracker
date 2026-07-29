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
      187 GETTABLEKS                       R28 R0 K18 ["Features"]
      189 GETTABLEKS                       R28 R28 K38 ["MeshGen"]
      191 GETTABLEKS                       R28 R28 K39 ["MeshGenTool"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K5 [require]
      196 GETIMPORT                        R29 K1 [script]
      198 GETTABLEKS                       R29 R29 K40 ["MultiEditTool"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K5 [require]
      203 GETIMPORT                        R30 K1 [script]
      205 GETTABLEKS                       R30 R30 K41 ["MultiPlayerAgentsCommunicationTool"]
      207 CALL                             R29 1 1
      208 GETIMPORT                        R30 K5 [require]
      210 GETTABLEKS                       R31 R0 K18 ["Features"]
      212 GETTABLEKS                       R31 R31 K42 ["PrimitiveGen"]
      214 GETTABLEKS                       R31 R31 K43 ["PrimitiveGenTool"]
      216 CALL                             R30 1 1
      217 GETIMPORT                        R31 K5 [require]
      219 GETIMPORT                        R32 K1 [script]
      221 GETTABLEKS                       R32 R32 K44 ["QuestionAnswerTool"]
      223 CALL                             R31 1 1
      224 GETIMPORT                        R32 K5 [require]
      226 GETIMPORT                        R33 K1 [script]
      228 GETTABLEKS                       R33 R33 K45 ["ReadFileTool"]
      230 CALL                             R32 1 1
      231 GETIMPORT                        R33 K5 [require]
      233 GETIMPORT                        R34 K1 [script]
      235 GETTABLEKS                       R34 R34 K46 ["ScreenCaptureTool"]
      237 CALL                             R33 1 1
      238 GETIMPORT                        R34 K5 [require]
      240 GETIMPORT                        R35 K1 [script]
      242 GETTABLEKS                       R35 R35 K47 ["SkillTool"]
      244 CALL                             R34 1 1
      245 GETIMPORT                        R35 K5 [require]
      247 GETIMPORT                        R36 K1 [script]
      249 GETTABLEKS                       R36 R36 K48 ["StartMultiPlayerAgentsTool"]
      251 CALL                             R35 1 1
      252 GETIMPORT                        R36 K5 [require]
      254 GETIMPORT                        R37 K1 [script]
      256 GETTABLEKS                       R37 R37 K49 ["StartStopPlayTool"]
      258 CALL                             R36 1 1
      259 GETIMPORT                        R37 K5 [require]
      261 GETIMPORT                        R38 K1 [script]
      263 GETTABLEKS                       R38 R38 K50 ["StopMultiPlayerAgentsTool"]
      265 CALL                             R37 1 1
      266 GETIMPORT                        R38 K5 [require]
      268 GETIMPORT                        R39 K1 [script]
      270 GETTABLEKS                       R39 R39 K51 ["StoreImageTool"]
      272 CALL                             R38 1 1
      273 GETIMPORT                        R39 K5 [require]
      275 GETIMPORT                        R40 K1 [script]
      277 GETTABLEKS                       R40 R40 K52 ["SubagentTool"]
      279 CALL                             R39 1 1
      280 GETIMPORT                        R40 K5 [require]
      282 GETIMPORT                        R41 K1 [script]
      284 GETTABLEKS                       R41 R41 K53 ["UploadImageTool"]
      286 CALL                             R40 1 1
      287 GETIMPORT                        R41 K5 [require]
      289 GETIMPORT                        R42 K1 [script]
      291 GETTABLEKS                       R42 R42 K54 ["UserKeyboardInputTool"]
      293 CALL                             R41 1 1
      294 GETIMPORT                        R42 K5 [require]
      296 GETIMPORT                        R43 K1 [script]
      298 GETTABLEKS                       R43 R43 K55 ["UserMouseInputTool"]
      300 CALL                             R42 1 1
      301 GETIMPORT                        R43 K5 [require]
      303 GETIMPORT                        R44 K1 [script]
      305 GETTABLEKS                       R44 R44 K56 ["VideoCaptureTool"]
      307 CALL                             R43 1 1
      308 GETIMPORT                        R44 K5 [require]
      310 GETIMPORT                        R45 K1 [script]
      312 GETTABLEKS                       R45 R45 K57 ["WaitForMultiPlayerAgentsCommunicationTool"]
      314 CALL                             R44 1 1
      315 GETIMPORT                        R45 K5 [require]
      317 GETIMPORT                        R46 K1 [script]
      319 GETTABLEKS                       R46 R46 K58 ["WaitJobFinishedTool"]
      321 CALL                             R45 1 1
      322 GETTABLEKS                       R46 R6 K59 ["getRuntimeForMeta"]
      324 GETTABLEKS                       R47 R7 K60 ["ToolNames"]
      326 NEWTABLE                         R48 32 0
      328 GETTABLEKS                       R49 R47 K61 ["ExecuteLuau"]
      330 SETTABLE                         R16 R48 R49
      331 GETTABLEKS                       R49 R47 K62 ["FileSearch"]
      333 SETTABLE                         R17 R48 R49
      334 GETTABLEKS                       R49 R47 K63 ["GameTree"]
      336 SETTABLE                         R20 R48 R49
      337 GETTABLEKS                       R49 R47 K64 ["GrepSearch"]
      339 SETTABLE                         R23 R48 R49
      340 GETTABLEKS                       R49 R47 K65 ["InspectInstance"]
      342 SETTABLE                         R25 R48 R49
      343 GETTABLEKS                       R49 R47 K66 ["MaterialGen"]
      345 SETTABLE                         R26 R48 R49
      346 GETTABLEKS                       R49 R47 K38 ["MeshGen"]
      348 SETTABLE                         R27 R48 R49
      349 GETTABLEKS                       R49 R47 K67 ["MultiEdit"]
      351 SETTABLE                         R28 R48 R49
      352 GETTABLEKS                       R49 R47 K68 ["QuestionAnswer"]
      354 SETTABLE                         R31 R48 R49
      355 GETTABLEKS                       R49 R47 K69 ["ReadFile"]
      357 SETTABLE                         R32 R48 R49
      358 GETTABLEKS                       R49 R47 K70 ["ScreenCapture"]
      360 SETTABLE                         R33 R48 R49
      361 GETTABLEKS                       R49 R47 K71 ["StoreImage"]
      363 SETTABLE                         R38 R48 R49
      364 GETTABLEKS                       R49 R47 K72 ["Subagent"]
      366 SETTABLE                         R39 R48 R49
      367 GETTABLEKS                       R49 R47 K73 ["UploadImage"]
      369 SETTABLE                         R40 R48 R49
      370 GETTABLEKS                       R49 R47 K74 ["Skill"]
      372 SETTABLE                         R34 R48 R49
      373 GETTABLEKS                       R49 R47 K75 ["HttpGet"]
      375 SETTABLE                         R24 R48 R49
      376 GETTABLEKS                       R49 R47 K76 ["FromHistory"]
      378 SETTABLE                         R19 R48 R49
      379 GETTABLEKS                       R49 R47 K68 ["QuestionAnswer"]
      381 SETTABLE                         R31 R48 R49
      382 GETTABLEKS                       R49 R47 K77 ["FinalizePlan"]
      384 SETTABLE                         R18 R48 R49
      385 GETTABLEKS                       R49 R47 K78 ["CompleteTodoItems"]
      387 SETTABLE                         R11 R48 R49
      388 GETTABLEKS                       R49 R47 K79 ["CreateSkill"]
      390 SETTABLE                         R12 R48 R49
      391 GETTABLEKS                       R49 R47 K80 ["EditSkill"]
      393 SETTABLE                         R15 R48 R49
      394 GETTABLEKS                       R49 R5 K81 ["FFlagAssistantAssetSearchInsertTool"]
      396 JUMPIF                           R49 ; [+3]
      397 GETTABLEKS                       R49 R5 K82 ["FFlagAssistantAssetSearchInsertToolABTest"]
      399 JUMPIFNOT                        R49 ; [+20]
      400 GETTABLEKS                       R49 R47 K83 ["AssetInsert"]
      402 GETIMPORT                        R50 K5 [require]
      404 GETIMPORT                        R51 K1 [script]
      406 GETTABLEKS                       R51 R51 K84 ["AssetInsertTool"]
      408 CALL                             R50 1 1
      409 SETTABLE                         R50 R48 R49
      410 GETTABLEKS                       R49 R47 K85 ["AssetSearch"]
      412 GETIMPORT                        R50 K5 [require]
      414 GETIMPORT                        R51 K1 [script]
      416 GETTABLEKS                       R51 R51 K86 ["AssetSearchTool"]
      418 CALL                             R50 1 1
      419 SETTABLE                         R50 R48 R49
      420 GETTABLEKS                       R49 R5 K81 ["FFlagAssistantAssetSearchInsertTool"]
      422 JUMPIF                           R49 ; [+6]
      423 GETTABLEKS                       R49 R47 K87 ["CreatorStoreSearch"]
      425 SETTABLE                         R14 R48 R49
      426 GETTABLEKS                       R49 R47 K88 ["CreatorStoreInsert"]
      428 SETTABLE                         R13 R48 R49
      429 GETTABLEKS                       R49 R5 K89 ["FFlagAssistantGetStudioState"]
      431 JUMPIFNOT                        R49 ; [+3]
      432 GETTABLEKS                       R49 R47 K90 ["GetStudioState"]
      434 SETTABLE                         R22 R48 R49
      435 GETTABLEKS                       R49 R47 K91 ["StartStopPlay"]
      437 SETTABLE                         R36 R48 R49
      438 GETTABLEKS                       R49 R47 K92 ["GetConsoleOutput"]
      440 SETTABLE                         R21 R48 R49
      441 GETTABLEKS                       R49 R47 K93 ["UserKeyboardInput"]
      443 SETTABLE                         R41 R48 R49
      444 GETTABLEKS                       R49 R47 K94 ["UserMouseInput"]
      446 SETTABLE                         R42 R48 R49
      447 GETTABLEKS                       R49 R47 K95 ["CharacterNavigation"]
      449 SETTABLE                         R10 R48 R49
      450 GETTABLEKS                       R49 R5 K96 ["FFlagAssistantMultiPlayerAgents"]
      452 JUMPIFNOT                        R49 ; [+12]
      453 GETTABLEKS                       R49 R47 K97 ["StartMultiPlayerAgents"]
      455 SETTABLE                         R35 R48 R49
      456 GETTABLEKS                       R49 R47 K98 ["StopMultiPlayerAgents"]
      458 SETTABLE                         R37 R48 R49
      459 GETTABLEKS                       R49 R47 K99 ["MultiPlayerAgentsCommunication"]
      461 SETTABLE                         R29 R48 R49
      462 GETTABLEKS                       R49 R47 K100 ["WaitForMultiPlayerAgentsCommunication"]
      464 SETTABLE                         R44 R48 R49
      465 GETTABLEKS                       R49 R5 K101 ["FFlagAssistantVideoCaptureTool"]
      467 JUMPIFNOT                        R49 ; [+3]
      468 GETTABLEKS                       R49 R47 K102 ["VideoCapture"]
      470 SETTABLE                         R43 R48 R49
      471 GETTABLEKS                       R49 R5 K103 ["FFlagAssistantAnimationGenTool"]
      473 JUMPIFNOT                        R49 ; [+3]
      474 GETTABLEKS                       R49 R47 K19 ["AnimationGen"]
      476 SETTABLE                         R9 R48 R49
      477 GETTABLEKS                       R49 R5 K104 ["EngineFeatureProceduralModel"]
      479 JUMPIFNOT                        R49 ; [+3]
      480 GETTABLEKS                       R49 R47 K42 ["PrimitiveGen"]
      482 SETTABLE                         R30 R48 R49
      483 GETTABLEKS                       R49 R5 K104 ["EngineFeatureProceduralModel"]
      485 JUMPIFNOT                        R49 ; [+3]
      486 GETTABLEKS                       R49 R47 K105 ["WaitJobFinished"]
      488 SETTABLE                         R45 R48 R49
      489 GETTABLEKS                       R49 R5 K106 ["FFlagAssistantMarkdownPlanMode"]
      491 JUMPIFNOT                        R49 ; [+10]
      492 GETTABLEKS                       R49 R47 K107 ["UpdatePlan"]
      494 GETIMPORT                        R50 K5 [require]
      496 GETIMPORT                        R51 K1 [script]
      498 GETTABLEKS                       R51 R51 K108 ["UpdatePlanTool"]
      500 CALL                             R50 1 1
      501 SETTABLE                         R50 R48 R49
      502 DUPCLOSURE                       R49 K109 [PROTO_0]
      503 CAPTURE                          VAL R3
      504 CAPTURE                          VAL R4
      505 CAPTURE                          VAL R46
      506 DUPCLOSURE                       R50 K110 [PROTO_1]
      507 CAPTURE                          VAL R8
      508 DUPTABLE                         R51 K114 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      509 SETTABLEKS                       R7 R51 K15 ["ToolTypes"]
      511 SETTABLEKS                       R48 R51 K111 ["BuiltinTools"]
      513 SETTABLEKS                       R49 R51 K112 ["createTools"]
      515 SETTABLEKS                       R50 R51 K113 ["registerTools"]
      517 RETURN                           R51 1
