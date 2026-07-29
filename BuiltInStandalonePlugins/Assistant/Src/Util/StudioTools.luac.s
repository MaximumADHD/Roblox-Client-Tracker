MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["ExperimentFeature"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["Types"]
       32 GETTABLEKS                       R4 R4 K13 ["AssistantMode"]
       34 GETTABLEKS                       R5 R1 K14 ["Tools"]
       36 GETTABLEKS                       R5 R5 K15 ["ToolTypes"]
       38 GETTABLEKS                       R5 R5 K16 ["ToolNames"]
       40 GETTABLEKS                       R6 R1 K14 ["Tools"]
       42 GETTABLEKS                       R6 R6 K17 ["BuiltinTools"]
       44 NEWTABLE                         R7 32 0
       46 GETTABLEKS                       R8 R5 K18 ["ExecuteLuau"]
       48 GETTABLEKS                       R10 R5 K18 ["ExecuteLuau"]
       50 GETTABLE                         R9 R6 R10
       51 SETTABLE                         R9 R7 R8
       52 GETTABLEKS                       R8 R5 K19 ["FileSearch"]
       54 GETTABLEKS                       R10 R5 K19 ["FileSearch"]
       56 GETTABLE                         R9 R6 R10
       57 SETTABLE                         R9 R7 R8
       58 GETTABLEKS                       R8 R5 K20 ["GameTree"]
       60 GETTABLEKS                       R10 R5 K20 ["GameTree"]
       62 GETTABLE                         R9 R6 R10
       63 SETTABLE                         R9 R7 R8
       64 GETTABLEKS                       R8 R5 K21 ["GrepSearch"]
       66 GETTABLEKS                       R10 R5 K21 ["GrepSearch"]
       68 GETTABLE                         R9 R6 R10
       69 SETTABLE                         R9 R7 R8
       70 GETTABLEKS                       R8 R5 K22 ["InspectInstance"]
       72 GETTABLEKS                       R10 R5 K22 ["InspectInstance"]
       74 GETTABLE                         R9 R6 R10
       75 SETTABLE                         R9 R7 R8
       76 GETTABLEKS                       R8 R5 K23 ["MaterialGen"]
       78 GETTABLEKS                       R10 R5 K23 ["MaterialGen"]
       80 GETTABLE                         R9 R6 R10
       81 SETTABLE                         R9 R7 R8
       82 GETTABLEKS                       R8 R5 K24 ["AnimationGen"]
       84 GETTABLEKS                       R10 R3 K25 ["FFlagAssistantAnimationGenTool"]
       86 JUMPIFNOT                        R10 ; [+4]
       87 GETTABLEKS                       R10 R5 K24 ["AnimationGen"]
       89 GETTABLE                         R9 R6 R10
       90 JUMP                             ; [+1]
       91 LOADNIL                          R9
       92 SETTABLE                         R9 R7 R8
       93 GETTABLEKS                       R8 R5 K26 ["MeshGen"]
       95 GETTABLEKS                       R10 R5 K26 ["MeshGen"]
       97 GETTABLE                         R9 R6 R10
       98 SETTABLE                         R9 R7 R8
       99 GETTABLEKS                       R8 R5 K27 ["MultiEdit"]
      101 GETTABLEKS                       R10 R5 K27 ["MultiEdit"]
      103 GETTABLE                         R9 R6 R10
      104 SETTABLE                         R9 R7 R8
      105 GETTABLEKS                       R8 R5 K28 ["ReadFile"]
      107 GETTABLEKS                       R10 R5 K28 ["ReadFile"]
      109 GETTABLE                         R9 R6 R10
      110 SETTABLE                         R9 R7 R8
      111 GETTABLEKS                       R8 R5 K29 ["PrimitiveGen"]
      113 GETTABLEKS                       R10 R3 K30 ["EngineFeatureProceduralModel"]
      115 JUMPIFNOT                        R10 ; [+4]
      116 GETTABLEKS                       R10 R5 K29 ["PrimitiveGen"]
      118 GETTABLE                         R9 R6 R10
      119 JUMP                             ; [+1]
      120 LOADNIL                          R9
      121 SETTABLE                         R9 R7 R8
      122 GETTABLEKS                       R8 R5 K31 ["WaitJobFinished"]
      124 GETTABLEKS                       R10 R3 K30 ["EngineFeatureProceduralModel"]
      126 JUMPIFNOT                        R10 ; [+4]
      127 GETTABLEKS                       R10 R5 K31 ["WaitJobFinished"]
      129 GETTABLE                         R9 R6 R10
      130 JUMP                             ; [+1]
      131 LOADNIL                          R9
      132 SETTABLE                         R9 R7 R8
      133 GETTABLEKS                       R8 R5 K32 ["QuestionAnswer"]
      135 GETTABLEKS                       R10 R5 K32 ["QuestionAnswer"]
      137 GETTABLE                         R9 R6 R10
      138 SETTABLE                         R9 R7 R8
      139 GETTABLEKS                       R8 R5 K33 ["StoreImage"]
      141 GETTABLEKS                       R10 R5 K33 ["StoreImage"]
      143 GETTABLE                         R9 R6 R10
      144 SETTABLE                         R9 R7 R8
      145 GETTABLEKS                       R8 R5 K34 ["Subagent"]
      147 GETTABLEKS                       R10 R5 K34 ["Subagent"]
      149 GETTABLE                         R9 R6 R10
      150 SETTABLE                         R9 R7 R8
      151 GETTABLEKS                       R8 R5 K35 ["FinalizePlan"]
      153 GETTABLEKS                       R10 R5 K35 ["FinalizePlan"]
      155 GETTABLE                         R9 R6 R10
      156 SETTABLE                         R9 R7 R8
      157 GETTABLEKS                       R8 R5 K36 ["CompleteTodoItems"]
      159 GETTABLEKS                       R10 R5 K36 ["CompleteTodoItems"]
      161 GETTABLE                         R9 R6 R10
      162 SETTABLE                         R9 R7 R8
      163 GETTABLEKS                       R8 R5 K37 ["UpdatePlan"]
      165 GETTABLEKS                       R10 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      167 JUMPIFNOT                        R10 ; [+4]
      168 GETTABLEKS                       R10 R5 K37 ["UpdatePlan"]
      170 GETTABLE                         R9 R6 R10
      171 JUMP                             ; [+1]
      172 LOADNIL                          R9
      173 SETTABLE                         R9 R7 R8
      174 GETTABLEKS                       R8 R5 K39 ["FromHistory"]
      176 GETTABLEKS                       R10 R5 K39 ["FromHistory"]
      178 GETTABLE                         R9 R6 R10
      179 SETTABLE                         R9 R7 R8
      180 GETTABLEKS                       R8 R5 K40 ["StartStopPlay"]
      182 GETTABLEKS                       R10 R5 K40 ["StartStopPlay"]
      184 GETTABLE                         R9 R6 R10
      185 SETTABLE                         R9 R7 R8
      186 GETTABLEKS                       R8 R5 K41 ["GetConsoleOutput"]
      188 GETTABLEKS                       R10 R5 K41 ["GetConsoleOutput"]
      190 GETTABLE                         R9 R6 R10
      191 SETTABLE                         R9 R7 R8
      192 GETTABLEKS                       R8 R5 K42 ["UserKeyboardInput"]
      194 GETTABLEKS                       R10 R5 K42 ["UserKeyboardInput"]
      196 GETTABLE                         R9 R6 R10
      197 SETTABLE                         R9 R7 R8
      198 GETTABLEKS                       R8 R5 K43 ["UserMouseInput"]
      200 GETTABLEKS                       R10 R5 K43 ["UserMouseInput"]
      202 GETTABLE                         R9 R6 R10
      203 SETTABLE                         R9 R7 R8
      204 GETTABLEKS                       R8 R5 K44 ["CharacterNavigation"]
      206 GETTABLEKS                       R10 R5 K44 ["CharacterNavigation"]
      208 GETTABLE                         R9 R6 R10
      209 SETTABLE                         R9 R7 R8
      210 GETTABLEKS                       R8 R5 K45 ["Skill"]
      212 GETTABLEKS                       R10 R5 K45 ["Skill"]
      214 GETTABLE                         R9 R6 R10
      215 SETTABLE                         R9 R7 R8
      216 GETTABLEKS                       R8 R5 K46 ["HttpGet"]
      218 GETTABLEKS                       R10 R5 K46 ["HttpGet"]
      220 GETTABLE                         R9 R6 R10
      221 SETTABLE                         R9 R7 R8
      222 GETTABLEKS                       R8 R5 K47 ["CreateSkill"]
      224 GETTABLEKS                       R10 R5 K47 ["CreateSkill"]
      226 GETTABLE                         R9 R6 R10
      227 SETTABLE                         R9 R7 R8
      228 GETTABLEKS                       R8 R5 K48 ["EditSkill"]
      230 GETTABLEKS                       R10 R5 K48 ["EditSkill"]
      232 GETTABLE                         R9 R6 R10
      233 SETTABLE                         R9 R7 R8
      234 GETTABLEKS                       R8 R3 K49 ["FFlagAssistantMultiPlayerAgents"]
      236 JUMPIFNOT                        R8 ; [+24]
      237 GETTABLEKS                       R8 R5 K50 ["StartMultiPlayerAgents"]
      239 GETTABLEKS                       R10 R5 K50 ["StartMultiPlayerAgents"]
      241 GETTABLE                         R9 R6 R10
      242 SETTABLE                         R9 R7 R8
      243 GETTABLEKS                       R8 R5 K51 ["StopMultiPlayerAgents"]
      245 GETTABLEKS                       R10 R5 K51 ["StopMultiPlayerAgents"]
      247 GETTABLE                         R9 R6 R10
      248 SETTABLE                         R9 R7 R8
      249 GETTABLEKS                       R8 R5 K52 ["MultiPlayerAgentsCommunication"]
      251 GETTABLEKS                       R10 R5 K52 ["MultiPlayerAgentsCommunication"]
      253 GETTABLE                         R9 R6 R10
      254 SETTABLE                         R9 R7 R8
      255 GETTABLEKS                       R8 R5 K53 ["WaitForMultiPlayerAgentsCommunication"]
      257 GETTABLEKS                       R10 R5 K53 ["WaitForMultiPlayerAgentsCommunication"]
      259 GETTABLE                         R9 R6 R10
      260 SETTABLE                         R9 R7 R8
      261 GETTABLEKS                       R8 R3 K54 ["FFlagAssistantAssetSearchInsertTool"]
      263 JUMPIFNOT                        R8 ; [+13]
      264 GETTABLEKS                       R8 R5 K55 ["AssetInsert"]
      266 GETTABLEKS                       R10 R5 K55 ["AssetInsert"]
      268 GETTABLE                         R9 R6 R10
      269 SETTABLE                         R9 R7 R8
      270 GETTABLEKS                       R8 R5 K56 ["AssetSearch"]
      272 GETTABLEKS                       R10 R5 K56 ["AssetSearch"]
      274 GETTABLE                         R9 R6 R10
      275 SETTABLE                         R9 R7 R8
      276 JUMP                             ; [+15]
      277 GETTABLEKS                       R8 R3 K57 ["FFlagAssistantAssetSearchInsertToolABTest"]
      279 JUMPIF                           R8 ; [+12]
      280 GETTABLEKS                       R8 R5 K58 ["CreatorStoreSearch"]
      282 GETTABLEKS                       R10 R5 K58 ["CreatorStoreSearch"]
      284 GETTABLE                         R9 R6 R10
      285 SETTABLE                         R9 R7 R8
      286 GETTABLEKS                       R8 R5 K59 ["CreatorStoreInsert"]
      288 GETTABLEKS                       R10 R5 K59 ["CreatorStoreInsert"]
      290 GETTABLE                         R9 R6 R10
      291 SETTABLE                         R9 R7 R8
      292 GETTABLEKS                       R8 R3 K60 ["FFlagAssistantGetStudioState"]
      294 JUMPIFNOT                        R8 ; [+6]
      295 GETTABLEKS                       R8 R5 K61 ["GetStudioState"]
      297 GETTABLEKS                       R10 R5 K61 ["GetStudioState"]
      299 GETTABLE                         R9 R6 R10
      300 SETTABLE                         R9 R7 R8
      301 GETTABLEKS                       R8 R3 K62 ["FFlagAssistantVideoCaptureTool"]
      303 JUMPIFNOT                        R8 ; [+6]
      304 GETTABLEKS                       R8 R5 K63 ["VideoCapture"]
      306 GETTABLEKS                       R10 R5 K63 ["VideoCapture"]
      308 GETTABLE                         R9 R6 R10
      309 SETTABLE                         R9 R7 R8
      310 NEWTABLE                         R8 4 0
      312 GETTABLEKS                       R9 R5 K64 ["ScreenCapture"]
      314 GETTABLEKS                       R11 R5 K64 ["ScreenCapture"]
      316 GETTABLE                         R10 R6 R11
      317 SETTABLE                         R10 R8 R9
      318 GETTABLEKS                       R9 R5 K65 ["UploadImage"]
      320 GETTABLEKS                       R11 R3 K66 ["FFlagEnableAssistantImageUpload"]
      322 JUMPIFNOT                        R11 ; [+4]
      323 GETTABLEKS                       R11 R5 K65 ["UploadImage"]
      325 GETTABLE                         R10 R6 R11
      326 JUMP                             ; [+1]
      327 LOADNIL                          R10
      328 SETTABLE                         R10 R8 R9
      329 GETTABLEKS                       R9 R5 K58 ["CreatorStoreSearch"]
      331 GETTABLEKS                       R11 R3 K57 ["FFlagAssistantAssetSearchInsertToolABTest"]
      333 JUMPIFNOT                        R11 ; [+4]
      334 GETTABLEKS                       R11 R5 K58 ["CreatorStoreSearch"]
      336 GETTABLE                         R10 R6 R11
      337 JUMP                             ; [+1]
      338 LOADNIL                          R10
      339 SETTABLE                         R10 R8 R9
      340 GETTABLEKS                       R9 R5 K59 ["CreatorStoreInsert"]
      342 GETTABLEKS                       R11 R3 K57 ["FFlagAssistantAssetSearchInsertToolABTest"]
      344 JUMPIFNOT                        R11 ; [+4]
      345 GETTABLEKS                       R11 R5 K59 ["CreatorStoreInsert"]
      347 GETTABLE                         R10 R6 R11
      348 JUMP                             ; [+1]
      349 LOADNIL                          R10
      350 SETTABLE                         R10 R8 R9
      351 NEWTABLE                         R9 1 0
      353 GETTABLEKS                       R10 R2 K67 ["FeatureNames"]
      355 GETTABLEKS                       R10 R10 K68 ["NewAssetToolSet"]
      357 NEWTABLE                         R11 2 0
      359 GETTABLEKS                       R12 R5 K55 ["AssetInsert"]
      361 GETTABLEKS                       R14 R3 K57 ["FFlagAssistantAssetSearchInsertToolABTest"]
      363 JUMPIFNOT                        R14 ; [+7]
      364 GETTABLEKS                       R14 R3 K54 ["FFlagAssistantAssetSearchInsertTool"]
      366 JUMPIF                           R14 ; [+4]
      367 GETTABLEKS                       R14 R5 K55 ["AssetInsert"]
      369 GETTABLE                         R13 R6 R14
      370 JUMP                             ; [+1]
      371 LOADNIL                          R13
      372 SETTABLE                         R13 R11 R12
      373 GETTABLEKS                       R12 R5 K56 ["AssetSearch"]
      375 GETTABLEKS                       R14 R3 K57 ["FFlagAssistantAssetSearchInsertToolABTest"]
      377 JUMPIFNOT                        R14 ; [+7]
      378 GETTABLEKS                       R14 R3 K54 ["FFlagAssistantAssetSearchInsertTool"]
      380 JUMPIF                           R14 ; [+4]
      381 GETTABLEKS                       R14 R5 K56 ["AssetSearch"]
      383 GETTABLE                         R13 R6 R14
      384 JUMP                             ; [+1]
      385 LOADNIL                          R13
      386 SETTABLE                         R13 R11 R12
      387 SETTABLE                         R11 R9 R10
      388 NEWTABLE                         R10 1 0
      390 GETTABLEKS                       R11 R4 K69 ["Agent"]
      392 NEWTABLE                         R12 0 32
      394 GETTABLEKS                       R13 R5 K18 ["ExecuteLuau"]
      396 GETTABLEKS                       R14 R5 K19 ["FileSearch"]
      398 GETTABLEKS                       R15 R5 K20 ["GameTree"]
      400 GETTABLEKS                       R16 R5 K21 ["GrepSearch"]
      402 GETTABLEKS                       R17 R5 K59 ["CreatorStoreInsert"]
      404 GETTABLEKS                       R18 R5 K58 ["CreatorStoreSearch"]
      406 GETTABLEKS                       R19 R5 K55 ["AssetInsert"]
      408 GETTABLEKS                       R20 R5 K56 ["AssetSearch"]
      410 GETTABLEKS                       R21 R5 K22 ["InspectInstance"]
      412 GETTABLEKS                       R22 R5 K23 ["MaterialGen"]
      414 GETTABLEKS                       R23 R5 K26 ["MeshGen"]
      416 GETTABLEKS                       R24 R5 K27 ["MultiEdit"]
      418 GETTABLEKS                       R25 R5 K28 ["ReadFile"]
      420 GETTABLEKS                       R26 R5 K29 ["PrimitiveGen"]
      422 GETTABLEKS                       R27 R5 K45 ["Skill"]
      424 GETTABLEKS                       R28 R5 K34 ["Subagent"]
      426 SETLIST                          R12 R13 16 [1]
      428 GETTABLEKS                       R13 R5 K64 ["ScreenCapture"]
      430 GETTABLEKS                       R14 R5 K65 ["UploadImage"]
      432 GETTABLEKS                       R15 R5 K50 ["StartMultiPlayerAgents"]
      434 GETTABLEKS                       R16 R5 K51 ["StopMultiPlayerAgents"]
      436 GETTABLEKS                       R17 R5 K52 ["MultiPlayerAgentsCommunication"]
      438 GETTABLEKS                       R18 R5 K53 ["WaitForMultiPlayerAgentsCommunication"]
      440 GETTABLEKS                       R19 R5 K46 ["HttpGet"]
      442 GETTABLEKS                       R20 R5 K39 ["FromHistory"]
      444 GETTABLEKS                       R21 R5 K40 ["StartStopPlay"]
      446 GETTABLEKS                       R22 R5 K41 ["GetConsoleOutput"]
      448 GETTABLEKS                       R23 R5 K42 ["UserKeyboardInput"]
      450 GETTABLEKS                       R24 R5 K43 ["UserMouseInput"]
      452 GETTABLEKS                       R25 R5 K44 ["CharacterNavigation"]
      454 GETTABLEKS                       R26 R5 K63 ["VideoCapture"]
      456 GETTABLEKS                       R27 R5 K32 ["QuestionAnswer"]
      458 GETTABLEKS                       R28 R5 K36 ["CompleteTodoItems"]
      460 SETLIST                          R12 R13 16 [17]
      462 SETTABLE                         R12 R10 R11
      463 GETTABLEKS                       R11 R3 K60 ["FFlagAssistantGetStudioState"]
      465 JUMPIFNOT                        R11 ; [+10]
      466 GETTABLEKS                       R13 R4 K69 ["Agent"]
      468 GETTABLE                         R12 R10 R13
      469 GETTABLEKS                       R13 R5 K61 ["GetStudioState"]
      471 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      473 GETIMPORT                        R11 K72 [table.insert]
      475 CALL                             R11 2 0
      476 GETTABLEKS                       R13 R4 K69 ["Agent"]
      478 GETTABLE                         R12 R10 R13
      479 GETTABLEKS                       R13 R5 K33 ["StoreImage"]
      481 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      483 GETIMPORT                        R11 K72 [table.insert]
      485 CALL                             R11 2 0
      486 GETTABLEKS                       R11 R3 K25 ["FFlagAssistantAnimationGenTool"]
      488 JUMPIFNOT                        R11 ; [+10]
      489 GETTABLEKS                       R13 R4 K69 ["Agent"]
      491 GETTABLE                         R12 R10 R13
      492 GETTABLEKS                       R13 R5 K24 ["AnimationGen"]
      494 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      496 GETIMPORT                        R11 K72 [table.insert]
      498 CALL                             R11 2 0
      499 GETTABLEKS                       R11 R3 K30 ["EngineFeatureProceduralModel"]
      501 JUMPIFNOT                        R11 ; [+10]
      502 GETTABLEKS                       R13 R4 K69 ["Agent"]
      504 GETTABLE                         R12 R10 R13
      505 GETTABLEKS                       R13 R5 K31 ["WaitJobFinished"]
      507 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      509 GETIMPORT                        R11 K72 [table.insert]
      511 CALL                             R11 2 0
      512 GETTABLEKS                       R11 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      514 JUMPIFNOT                        R11 ; [+10]
      515 GETTABLEKS                       R13 R4 K69 ["Agent"]
      517 GETTABLE                         R12 R10 R13
      518 GETTABLEKS                       R13 R5 K37 ["UpdatePlan"]
      520 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      522 GETIMPORT                        R11 K72 [table.insert]
      524 CALL                             R11 2 0
      525 GETTABLEKS                       R13 R4 K69 ["Agent"]
      527 GETTABLE                         R12 R10 R13
      528 GETTABLEKS                       R13 R5 K47 ["CreateSkill"]
      530 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      532 GETIMPORT                        R11 K72 [table.insert]
      534 CALL                             R11 2 0
      535 GETTABLEKS                       R13 R4 K69 ["Agent"]
      537 GETTABLE                         R12 R10 R13
      538 GETTABLEKS                       R13 R5 K48 ["EditSkill"]
      540 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      542 GETIMPORT                        R11 K72 [table.insert]
      544 CALL                             R11 2 0
      545 GETTABLEKS                       R11 R4 K73 ["Plan"]
      547 NEWTABLE                         R12 0 9
      549 GETTABLEKS                       R13 R5 K28 ["ReadFile"]
      551 GETTABLEKS                       R14 R5 K19 ["FileSearch"]
      553 GETTABLEKS                       R15 R5 K21 ["GrepSearch"]
      555 GETTABLEKS                       R16 R5 K20 ["GameTree"]
      557 GETTABLEKS                       R17 R5 K22 ["InspectInstance"]
      559 GETTABLEKS                       R18 R5 K64 ["ScreenCapture"]
      561 GETTABLEKS                       R19 R5 K32 ["QuestionAnswer"]
      563 GETTABLEKS                       R20 R5 K35 ["FinalizePlan"]
      565 GETTABLEKS                       R22 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      567 JUMPIFNOT                        R22 ; [+3]
      568 GETTABLEKS                       R21 R5 K37 ["UpdatePlan"]
      570 JUMP                             ; [+1]
      571 LOADNIL                          R21
      572 SETLIST                          R12 R13 9 [1]
      574 SETTABLE                         R12 R10 R11
      575 NEWTABLE                         R11 0 15
      577 GETTABLEKS                       R12 R5 K18 ["ExecuteLuau"]
      579 GETTABLEKS                       R13 R5 K19 ["FileSearch"]
      581 GETTABLEKS                       R14 R5 K20 ["GameTree"]
      583 GETTABLEKS                       R15 R5 K21 ["GrepSearch"]
      585 GETTABLEKS                       R16 R5 K22 ["InspectInstance"]
      587 GETTABLEKS                       R17 R5 K28 ["ReadFile"]
      589 GETTABLEKS                       R18 R5 K45 ["Skill"]
      591 GETTABLEKS                       R19 R5 K34 ["Subagent"]
      593 GETTABLEKS                       R20 R5 K64 ["ScreenCapture"]
      595 GETTABLEKS                       R21 R5 K41 ["GetConsoleOutput"]
      597 GETTABLEKS                       R22 R5 K42 ["UserKeyboardInput"]
      599 GETTABLEKS                       R23 R5 K43 ["UserMouseInput"]
      601 GETTABLEKS                       R24 R5 K44 ["CharacterNavigation"]
      603 GETTABLEKS                       R25 R5 K52 ["MultiPlayerAgentsCommunication"]
      605 GETTABLEKS                       R26 R5 K53 ["WaitForMultiPlayerAgentsCommunication"]
      607 SETLIST                          R11 R12 15 [1]
      609 GETTABLEKS                       R12 R3 K60 ["FFlagAssistantGetStudioState"]
      611 JUMPIFNOT                        R12 ; [+8]
      612 GETTABLEKS                       R14 R5 K61 ["GetStudioState"]
      614 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
      616 MOVE                             R13 R11
      617 GETIMPORT                        R12 K72 [table.insert]
      619 CALL                             R12 2 0
      620 DUPTABLE                         R12 K79 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools"}]
      621 SETTABLEKS                       R7 R12 K74 ["DefaultTools"]
      623 SETTABLEKS                       R8 R12 K75 ["ExperimentalTools"]
      625 SETTABLEKS                       R9 R12 K76 ["ExperimentFeatureTools"]
      627 SETTABLEKS                       R10 R12 K77 ["AssistantModeToolsAllowlist"]
      629 SETTABLEKS                       R11 R12 K78 ["MultiPlayerTestTools"]
      631 RETURN                           R12 1
