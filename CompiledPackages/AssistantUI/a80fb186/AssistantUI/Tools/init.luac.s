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
      206 GETTABLEKS                       R29 R30 K41 ["SubagentTool"]
      208 CALL                             R28 1 1
      209 GETIMPORT                        R29 K5 [require]
      211 GETIMPORT                        R31 K1 [script]
      213 GETTABLEKS                       R30 R31 K42 ["TestGameTool"]
      215 CALL                             R29 1 1
      216 GETIMPORT                        R30 K5 [require]
      218 GETIMPORT                        R32 K1 [script]
      220 GETTABLEKS                       R31 R32 K43 ["UploadImageTool"]
      222 CALL                             R30 1 1
      223 GETIMPORT                        R31 K5 [require]
      225 GETIMPORT                        R33 K1 [script]
      227 GETTABLEKS                       R32 R33 K44 ["UserKeyboardInputTool"]
      229 CALL                             R31 1 1
      230 GETIMPORT                        R32 K5 [require]
      232 GETIMPORT                        R34 K1 [script]
      234 GETTABLEKS                       R33 R34 K45 ["UserMouseInputTool"]
      236 CALL                             R32 1 1
      237 GETIMPORT                        R33 K5 [require]
      239 GETIMPORT                        R35 K1 [script]
      241 GETTABLEKS                       R34 R35 K46 ["WaitJobFinishedTool"]
      243 CALL                             R33 1 1
      244 GETIMPORT                        R34 K5 [require]
      246 GETTABLEKS                       R35 R0 K47 ["Flags"]
      248 CALL                             R34 1 1
      249 GETTABLEKS                       R36 R34 K48 ["Shared"]
      251 GETTABLEKS                       R35 R36 K49 ["FFlagEnableSkills"]
      253 GETTABLEKS                       R37 R34 K48 ["Shared"]
      255 GETTABLEKS                       R36 R37 K50 ["FFlagEnableSubagents"]
      257 GETTABLEKS                       R38 R34 K48 ["Shared"]
      259 GETTABLEKS                       R37 R38 K51 ["FFlagAssistantDebugMode"]
      261 GETTABLEKS                       R39 R34 K48 ["Shared"]
      263 GETTABLEKS                       R38 R39 K52 ["FFlagAssistantTestAutomation"]
      265 GETTABLEKS                       R40 R34 K48 ["Shared"]
      267 GETTABLEKS                       R39 R40 K53 ["FFlagAssistantUseNewCreatorStoreTools"]
      269 GETTABLEKS                       R41 R34 K48 ["Shared"]
      271 GETTABLEKS                       R40 R41 K54 ["FFlagAssistantUseNewMeshGenTool"]
      273 GETTABLEKS                       R42 R34 K48 ["Shared"]
      275 GETTABLEKS                       R41 R42 K55 ["FFlagEnablePrimitiveGenTool"]
      277 GETTABLEKS                       R43 R34 K48 ["Shared"]
      279 GETTABLEKS                       R42 R43 K56 ["FFlagEnableWaitJobFinishedTool"]
      281 GETTABLEKS                       R44 R34 K48 ["Shared"]
      283 GETTABLEKS                       R43 R44 K57 ["FFlagProceduralModel"]
      285 GETTABLEKS                       R45 R34 K48 ["Shared"]
      287 GETTABLEKS                       R44 R45 K58 ["FFlagAssistantQuestionAnswerTool"]
      289 GETTABLEKS                       R46 R34 K48 ["Shared"]
      291 GETTABLEKS                       R45 R46 K59 ["FFlagAssistantPlanMode"]
      293 GETTABLEKS                       R47 R34 K48 ["Shared"]
      295 GETTABLEKS                       R46 R47 K60 ["FFlagEnableHttpGetTool"]
      297 GETTABLEKS                       R47 R21 K61 ["getRuntimeForMeta"]
      299 GETTABLEKS                       R48 R4 K62 ["ToolNames"]
      301 NEWTABLE                         R49 16 0
      303 GETTABLEKS                       R50 R48 K63 ["ExecuteLuau"]
      305 SETTABLE                         R9 R49 R50
      306 GETTABLEKS                       R50 R48 K64 ["FileSearch"]
      308 SETTABLE                         R10 R49 R50
      309 GETTABLEKS                       R50 R48 K65 ["GameTree"]
      311 SETTABLE                         R11 R49 R50
      312 GETTABLEKS                       R50 R48 K66 ["Grep"]
      314 SETTABLE                         R14 R49 R50
      315 GETTABLEKS                       R50 R48 K67 ["GrepSearch"]
      317 SETTABLE                         R13 R49 R50
      318 GETTABLEKS                       R50 R48 K68 ["InspectInstance"]
      320 SETTABLE                         R16 R49 R50
      321 GETTABLEKS                       R50 R48 K69 ["MaterialGen"]
      323 SETTABLE                         R18 R49 R50
      324 GETTABLEKS                       R50 R48 K30 ["MeshGen"]
      326 MOVE                             R52 R40
      327 CALL                             R52 0 1
      328 JUMPIFNOT                        R52 ; [+2]
      329 MOVE                             R51 R19
      330 JUMP                             ; [+1]
      331 LOADNIL                          R51
      332 SETTABLE                         R51 R49 R50
      333 GETTABLEKS                       R50 R48 K70 ["MultiEdit"]
      335 SETTABLE                         R20 R49 R50
      336 GETTABLEKS                       R50 R48 K71 ["QuestionAnswer"]
      338 SETTABLE                         R23 R49 R50
      339 GETTABLEKS                       R50 R48 K72 ["ReadFile"]
      341 SETTABLE                         R24 R49 R50
      342 GETTABLEKS                       R50 R48 K73 ["ScreenCapture"]
      344 SETTABLE                         R25 R49 R50
      345 GETTABLEKS                       R50 R48 K74 ["UploadImage"]
      347 SETTABLE                         R30 R49 R50
      348 MOVE                             R50 R39
      349 CALL                             R50 0 1
      350 JUMPIFNOT                        R50 ; [+7]
      351 GETTABLEKS                       R50 R48 K75 ["CreatorStoreSearch"]
      353 SETTABLE                         R8 R49 R50
      354 GETTABLEKS                       R50 R48 K76 ["CreatorStoreInsert"]
      356 SETTABLE                         R7 R49 R50
      357 JUMP                             ; [+3]
      358 GETTABLEKS                       R50 R48 K77 ["InsertFromMarketplace"]
      360 SETTABLE                         R17 R49 R50
      361 MOVE                             R50 R37
      362 CALL                             R50 0 1
      363 JUMPIFNOT                        R50 ; [+6]
      364 MOVE                             R50 R38
      365 CALL                             R50 0 1
      366 JUMPIF                           R50 ; [+3]
      367 GETTABLEKS                       R50 R48 K78 ["TestGame"]
      369 SETTABLE                         R29 R49 R50
      370 MOVE                             R50 R38
      371 CALL                             R50 0 1
      372 JUMPIFNOT                        R50 ; [+15]
      373 GETTABLEKS                       R50 R48 K79 ["StartStopPlay"]
      375 SETTABLE                         R27 R49 R50
      376 GETTABLEKS                       R50 R48 K80 ["GetConsoleOutput"]
      378 SETTABLE                         R12 R49 R50
      379 GETTABLEKS                       R50 R48 K81 ["UserKeyboardInput"]
      381 SETTABLE                         R31 R49 R50
      382 GETTABLEKS                       R50 R48 K82 ["UserMouseInput"]
      384 SETTABLE                         R32 R49 R50
      385 GETTABLEKS                       R50 R48 K83 ["CharacterNavigation"]
      387 SETTABLE                         R6 R49 R50
      388 MOVE                             R50 R41
      389 CALL                             R50 0 1
      390 JUMPIFNOT                        R50 ; [+6]
      391 MOVE                             R50 R43
      392 CALL                             R50 0 1
      393 JUMPIFNOT                        R50 ; [+3]
      394 GETTABLEKS                       R50 R48 K34 ["PrimitiveGen"]
      396 SETTABLE                         R22 R49 R50
      397 MOVE                             R50 R42
      398 CALL                             R50 0 1
      399 JUMPIFNOT                        R50 ; [+9]
      400 MOVE                             R50 R43
      401 CALL                             R50 0 1
      402 JUMPIFNOT                        R50 ; [+6]
      403 MOVE                             R50 R41
      404 CALL                             R50 0 1
      405 JUMPIFNOT                        R50 ; [+3]
      406 GETTABLEKS                       R50 R48 K84 ["WaitJobFinished"]
      408 SETTABLE                         R33 R49 R50
      409 MOVE                             R50 R35
      410 CALL                             R50 0 1
      411 JUMPIFNOT                        R50 ; [+3]
      412 GETTABLEKS                       R50 R48 K85 ["Skill"]
      414 SETTABLE                         R26 R49 R50
      415 MOVE                             R50 R36
      416 CALL                             R50 0 1
      417 JUMPIFNOT                        R50 ; [+3]
      418 GETTABLEKS                       R50 R48 K86 ["Subagent"]
      420 SETTABLE                         R28 R49 R50
      421 MOVE                             R50 R44
      422 CALL                             R50 0 1
      423 JUMPIFNOT                        R50 ; [+3]
      424 GETTABLEKS                       R50 R48 K71 ["QuestionAnswer"]
      426 SETTABLE                         R23 R49 R50
      427 MOVE                             R50 R46
      428 CALL                             R50 0 1
      429 JUMPIFNOT                        R50 ; [+3]
      430 GETTABLEKS                       R50 R48 K87 ["HttpGet"]
      432 SETTABLE                         R15 R49 R50
      433 MOVE                             R50 R45
      434 CALL                             R50 0 1
      435 JUMPIFNOT                        R50 ; [+20]
      436 GETTABLEKS                       R50 R48 K88 ["FinalizePlan"]
      438 GETIMPORT                        R51 K5 [require]
      440 GETIMPORT                        R53 K1 [script]
      442 GETTABLEKS                       R52 R53 K89 ["FinalizePlanTool"]
      444 CALL                             R51 1 1
      445 SETTABLE                         R51 R49 R50
      446 GETTABLEKS                       R50 R48 K90 ["CompleteTodoItems"]
      448 GETIMPORT                        R51 K5 [require]
      450 GETIMPORT                        R53 K1 [script]
      452 GETTABLEKS                       R52 R53 K91 ["CompleteTodoItemsTool"]
      454 CALL                             R51 1 1
      455 SETTABLE                         R51 R49 R50
      456 DUPCLOSURE                       R50 K92 [PROTO_0]
      457 CAPTURE                          VAL R2
      458 CAPTURE                          VAL R3
      459 CAPTURE                          VAL R45
      460 CAPTURE                          VAL R47
      461 DUPCLOSURE                       R51 K93 [PROTO_1]
      462 CAPTURE                          VAL R5
      463 DUPTABLE                         R52 K97 [{"ToolTypes", "BuiltinTools", "createTools", "registerTools"}]
      464 SETTABLEKS                       R4 R52 K12 ["ToolTypes"]
      466 SETTABLEKS                       R49 R52 K94 ["BuiltinTools"]
      468 SETTABLEKS                       R50 R52 K95 ["createTools"]
      470 SETTABLEKS                       R51 R52 K96 ["registerTools"]
      472 RETURN                           R52 1
