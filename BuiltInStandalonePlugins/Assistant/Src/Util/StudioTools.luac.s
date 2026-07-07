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
      222 GETTABLEKS                       R8 R3 K47 ["FFlagAssistantMultiPlayerAgents"]
      224 JUMPIFNOT                        R8 ; [+24]
      225 GETTABLEKS                       R8 R5 K48 ["StartMultiPlayerAgents"]
      227 GETTABLEKS                       R10 R5 K48 ["StartMultiPlayerAgents"]
      229 GETTABLE                         R9 R6 R10
      230 SETTABLE                         R9 R7 R8
      231 GETTABLEKS                       R8 R5 K49 ["StopMultiPlayerAgents"]
      233 GETTABLEKS                       R10 R5 K49 ["StopMultiPlayerAgents"]
      235 GETTABLE                         R9 R6 R10
      236 SETTABLE                         R9 R7 R8
      237 GETTABLEKS                       R8 R5 K50 ["MultiPlayerAgentsCommunication"]
      239 GETTABLEKS                       R10 R5 K50 ["MultiPlayerAgentsCommunication"]
      241 GETTABLE                         R9 R6 R10
      242 SETTABLE                         R9 R7 R8
      243 GETTABLEKS                       R8 R5 K51 ["WaitForMultiPlayerAgentsCommunication"]
      245 GETTABLEKS                       R10 R5 K51 ["WaitForMultiPlayerAgentsCommunication"]
      247 GETTABLE                         R9 R6 R10
      248 SETTABLE                         R9 R7 R8
      249 GETTABLEKS                       R8 R3 K52 ["FFlagAssistantAssetSearchInsertTool"]
      251 JUMPIFNOT                        R8 ; [+13]
      252 GETTABLEKS                       R8 R5 K53 ["AssetInsert"]
      254 GETTABLEKS                       R10 R5 K53 ["AssetInsert"]
      256 GETTABLE                         R9 R6 R10
      257 SETTABLE                         R9 R7 R8
      258 GETTABLEKS                       R8 R5 K54 ["AssetSearch"]
      260 GETTABLEKS                       R10 R5 K54 ["AssetSearch"]
      262 GETTABLE                         R9 R6 R10
      263 SETTABLE                         R9 R7 R8
      264 JUMP                             ; [+15]
      265 GETTABLEKS                       R8 R3 K55 ["FFlagAssistantAssetSearchInsertToolABTest"]
      267 JUMPIF                           R8 ; [+12]
      268 GETTABLEKS                       R8 R5 K56 ["CreatorStoreSearch"]
      270 GETTABLEKS                       R10 R5 K56 ["CreatorStoreSearch"]
      272 GETTABLE                         R9 R6 R10
      273 SETTABLE                         R9 R7 R8
      274 GETTABLEKS                       R8 R5 K57 ["CreatorStoreInsert"]
      276 GETTABLEKS                       R10 R5 K57 ["CreatorStoreInsert"]
      278 GETTABLE                         R9 R6 R10
      279 SETTABLE                         R9 R7 R8
      280 GETTABLEKS                       R8 R3 K58 ["FFlagAssistantGetStudioState"]
      282 JUMPIFNOT                        R8 ; [+6]
      283 GETTABLEKS                       R8 R5 K59 ["GetStudioState"]
      285 GETTABLEKS                       R10 R5 K59 ["GetStudioState"]
      287 GETTABLE                         R9 R6 R10
      288 SETTABLE                         R9 R7 R8
      289 GETTABLEKS                       R8 R3 K60 ["FFlagAssistantVideoCaptureTool"]
      291 JUMPIFNOT                        R8 ; [+6]
      292 GETTABLEKS                       R8 R5 K61 ["VideoCapture"]
      294 GETTABLEKS                       R10 R5 K61 ["VideoCapture"]
      296 GETTABLE                         R9 R6 R10
      297 SETTABLE                         R9 R7 R8
      298 GETTABLEKS                       R8 R3 K62 ["FFlagAssistantUserSkills"]
      300 JUMPIFNOT                        R8 ; [+12]
      301 GETTABLEKS                       R8 R5 K63 ["CreateSkill"]
      303 GETTABLEKS                       R10 R5 K63 ["CreateSkill"]
      305 GETTABLE                         R9 R6 R10
      306 SETTABLE                         R9 R7 R8
      307 GETTABLEKS                       R8 R5 K64 ["EditSkill"]
      309 GETTABLEKS                       R10 R5 K64 ["EditSkill"]
      311 GETTABLE                         R9 R6 R10
      312 SETTABLE                         R9 R7 R8
      313 NEWTABLE                         R8 4 0
      315 GETTABLEKS                       R9 R5 K65 ["ScreenCapture"]
      317 GETTABLEKS                       R11 R5 K65 ["ScreenCapture"]
      319 GETTABLE                         R10 R6 R11
      320 SETTABLE                         R10 R8 R9
      321 GETTABLEKS                       R9 R5 K66 ["UploadImage"]
      323 GETTABLEKS                       R11 R3 K67 ["FFlagEnableAssistantImageUpload"]
      325 JUMPIFNOT                        R11 ; [+4]
      326 GETTABLEKS                       R11 R5 K66 ["UploadImage"]
      328 GETTABLE                         R10 R6 R11
      329 JUMP                             ; [+1]
      330 LOADNIL                          R10
      331 SETTABLE                         R10 R8 R9
      332 GETTABLEKS                       R9 R5 K56 ["CreatorStoreSearch"]
      334 GETTABLEKS                       R11 R3 K55 ["FFlagAssistantAssetSearchInsertToolABTest"]
      336 JUMPIFNOT                        R11 ; [+4]
      337 GETTABLEKS                       R11 R5 K56 ["CreatorStoreSearch"]
      339 GETTABLE                         R10 R6 R11
      340 JUMP                             ; [+1]
      341 LOADNIL                          R10
      342 SETTABLE                         R10 R8 R9
      343 GETTABLEKS                       R9 R5 K57 ["CreatorStoreInsert"]
      345 GETTABLEKS                       R11 R3 K55 ["FFlagAssistantAssetSearchInsertToolABTest"]
      347 JUMPIFNOT                        R11 ; [+4]
      348 GETTABLEKS                       R11 R5 K57 ["CreatorStoreInsert"]
      350 GETTABLE                         R10 R6 R11
      351 JUMP                             ; [+1]
      352 LOADNIL                          R10
      353 SETTABLE                         R10 R8 R9
      354 NEWTABLE                         R9 1 0
      356 GETTABLEKS                       R10 R2 K68 ["FeatureNames"]
      358 GETTABLEKS                       R10 R10 K69 ["NewAssetToolSet"]
      360 NEWTABLE                         R11 2 0
      362 GETTABLEKS                       R12 R5 K53 ["AssetInsert"]
      364 GETTABLEKS                       R14 R3 K55 ["FFlagAssistantAssetSearchInsertToolABTest"]
      366 JUMPIFNOT                        R14 ; [+7]
      367 GETTABLEKS                       R14 R3 K52 ["FFlagAssistantAssetSearchInsertTool"]
      369 JUMPIF                           R14 ; [+4]
      370 GETTABLEKS                       R14 R5 K53 ["AssetInsert"]
      372 GETTABLE                         R13 R6 R14
      373 JUMP                             ; [+1]
      374 LOADNIL                          R13
      375 SETTABLE                         R13 R11 R12
      376 GETTABLEKS                       R12 R5 K54 ["AssetSearch"]
      378 GETTABLEKS                       R14 R3 K55 ["FFlagAssistantAssetSearchInsertToolABTest"]
      380 JUMPIFNOT                        R14 ; [+7]
      381 GETTABLEKS                       R14 R3 K52 ["FFlagAssistantAssetSearchInsertTool"]
      383 JUMPIF                           R14 ; [+4]
      384 GETTABLEKS                       R14 R5 K54 ["AssetSearch"]
      386 GETTABLE                         R13 R6 R14
      387 JUMP                             ; [+1]
      388 LOADNIL                          R13
      389 SETTABLE                         R13 R11 R12
      390 SETTABLE                         R11 R9 R10
      391 NEWTABLE                         R10 1 0
      393 GETTABLEKS                       R11 R4 K70 ["Agent"]
      395 NEWTABLE                         R12 0 32
      397 GETTABLEKS                       R13 R5 K18 ["ExecuteLuau"]
      399 GETTABLEKS                       R14 R5 K19 ["FileSearch"]
      401 GETTABLEKS                       R15 R5 K20 ["GameTree"]
      403 GETTABLEKS                       R16 R5 K21 ["GrepSearch"]
      405 GETTABLEKS                       R17 R5 K57 ["CreatorStoreInsert"]
      407 GETTABLEKS                       R18 R5 K56 ["CreatorStoreSearch"]
      409 GETTABLEKS                       R19 R5 K53 ["AssetInsert"]
      411 GETTABLEKS                       R20 R5 K54 ["AssetSearch"]
      413 GETTABLEKS                       R21 R5 K22 ["InspectInstance"]
      415 GETTABLEKS                       R22 R5 K23 ["MaterialGen"]
      417 GETTABLEKS                       R23 R5 K26 ["MeshGen"]
      419 GETTABLEKS                       R24 R5 K27 ["MultiEdit"]
      421 GETTABLEKS                       R25 R5 K28 ["ReadFile"]
      423 GETTABLEKS                       R26 R5 K29 ["PrimitiveGen"]
      425 GETTABLEKS                       R27 R5 K45 ["Skill"]
      427 GETTABLEKS                       R28 R5 K34 ["Subagent"]
      429 SETLIST                          R12 R13 16 [1]
      431 GETTABLEKS                       R13 R5 K65 ["ScreenCapture"]
      433 GETTABLEKS                       R14 R5 K66 ["UploadImage"]
      435 GETTABLEKS                       R15 R5 K48 ["StartMultiPlayerAgents"]
      437 GETTABLEKS                       R16 R5 K49 ["StopMultiPlayerAgents"]
      439 GETTABLEKS                       R17 R5 K50 ["MultiPlayerAgentsCommunication"]
      441 GETTABLEKS                       R18 R5 K51 ["WaitForMultiPlayerAgentsCommunication"]
      443 GETTABLEKS                       R19 R5 K46 ["HttpGet"]
      445 GETTABLEKS                       R20 R5 K39 ["FromHistory"]
      447 GETTABLEKS                       R21 R5 K40 ["StartStopPlay"]
      449 GETTABLEKS                       R22 R5 K41 ["GetConsoleOutput"]
      451 GETTABLEKS                       R23 R5 K42 ["UserKeyboardInput"]
      453 GETTABLEKS                       R24 R5 K43 ["UserMouseInput"]
      455 GETTABLEKS                       R25 R5 K44 ["CharacterNavigation"]
      457 GETTABLEKS                       R26 R5 K61 ["VideoCapture"]
      459 GETTABLEKS                       R27 R5 K32 ["QuestionAnswer"]
      461 GETTABLEKS                       R28 R5 K36 ["CompleteTodoItems"]
      463 SETLIST                          R12 R13 16 [17]
      465 SETTABLE                         R12 R10 R11
      466 GETTABLEKS                       R11 R3 K58 ["FFlagAssistantGetStudioState"]
      468 JUMPIFNOT                        R11 ; [+10]
      469 GETTABLEKS                       R13 R4 K70 ["Agent"]
      471 GETTABLE                         R12 R10 R13
      472 GETTABLEKS                       R13 R5 K59 ["GetStudioState"]
      474 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      476 GETIMPORT                        R11 K73 [table.insert]
      478 CALL                             R11 2 0
      479 GETTABLEKS                       R13 R4 K70 ["Agent"]
      481 GETTABLE                         R12 R10 R13
      482 GETTABLEKS                       R13 R5 K33 ["StoreImage"]
      484 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      486 GETIMPORT                        R11 K73 [table.insert]
      488 CALL                             R11 2 0
      489 GETTABLEKS                       R11 R3 K25 ["FFlagAssistantAnimationGenTool"]
      491 JUMPIFNOT                        R11 ; [+10]
      492 GETTABLEKS                       R13 R4 K70 ["Agent"]
      494 GETTABLE                         R12 R10 R13
      495 GETTABLEKS                       R13 R5 K24 ["AnimationGen"]
      497 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      499 GETIMPORT                        R11 K73 [table.insert]
      501 CALL                             R11 2 0
      502 GETTABLEKS                       R11 R3 K30 ["EngineFeatureProceduralModel"]
      504 JUMPIFNOT                        R11 ; [+10]
      505 GETTABLEKS                       R13 R4 K70 ["Agent"]
      507 GETTABLE                         R12 R10 R13
      508 GETTABLEKS                       R13 R5 K31 ["WaitJobFinished"]
      510 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      512 GETIMPORT                        R11 K73 [table.insert]
      514 CALL                             R11 2 0
      515 GETTABLEKS                       R11 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      517 JUMPIFNOT                        R11 ; [+10]
      518 GETTABLEKS                       R13 R4 K70 ["Agent"]
      520 GETTABLE                         R12 R10 R13
      521 GETTABLEKS                       R13 R5 K37 ["UpdatePlan"]
      523 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      525 GETIMPORT                        R11 K73 [table.insert]
      527 CALL                             R11 2 0
      528 GETTABLEKS                       R11 R3 K62 ["FFlagAssistantUserSkills"]
      530 JUMPIFNOT                        R11 ; [+20]
      531 GETTABLEKS                       R13 R4 K70 ["Agent"]
      533 GETTABLE                         R12 R10 R13
      534 GETTABLEKS                       R13 R5 K63 ["CreateSkill"]
      536 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      538 GETIMPORT                        R11 K73 [table.insert]
      540 CALL                             R11 2 0
      541 GETTABLEKS                       R13 R4 K70 ["Agent"]
      543 GETTABLE                         R12 R10 R13
      544 GETTABLEKS                       R13 R5 K64 ["EditSkill"]
      546 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      548 GETIMPORT                        R11 K73 [table.insert]
      550 CALL                             R11 2 0
      551 GETTABLEKS                       R11 R4 K74 ["Plan"]
      553 NEWTABLE                         R12 0 9
      555 GETTABLEKS                       R13 R5 K28 ["ReadFile"]
      557 GETTABLEKS                       R14 R5 K19 ["FileSearch"]
      559 GETTABLEKS                       R15 R5 K21 ["GrepSearch"]
      561 GETTABLEKS                       R16 R5 K20 ["GameTree"]
      563 GETTABLEKS                       R17 R5 K22 ["InspectInstance"]
      565 GETTABLEKS                       R18 R5 K65 ["ScreenCapture"]
      567 GETTABLEKS                       R19 R5 K32 ["QuestionAnswer"]
      569 GETTABLEKS                       R20 R5 K35 ["FinalizePlan"]
      571 GETTABLEKS                       R22 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      573 JUMPIFNOT                        R22 ; [+3]
      574 GETTABLEKS                       R21 R5 K37 ["UpdatePlan"]
      576 JUMP                             ; [+1]
      577 LOADNIL                          R21
      578 SETLIST                          R12 R13 9 [1]
      580 SETTABLE                         R12 R10 R11
      581 NEWTABLE                         R11 0 15
      583 GETTABLEKS                       R12 R5 K18 ["ExecuteLuau"]
      585 GETTABLEKS                       R13 R5 K19 ["FileSearch"]
      587 GETTABLEKS                       R14 R5 K20 ["GameTree"]
      589 GETTABLEKS                       R15 R5 K21 ["GrepSearch"]
      591 GETTABLEKS                       R16 R5 K22 ["InspectInstance"]
      593 GETTABLEKS                       R17 R5 K28 ["ReadFile"]
      595 GETTABLEKS                       R18 R5 K45 ["Skill"]
      597 GETTABLEKS                       R19 R5 K34 ["Subagent"]
      599 GETTABLEKS                       R20 R5 K65 ["ScreenCapture"]
      601 GETTABLEKS                       R21 R5 K41 ["GetConsoleOutput"]
      603 GETTABLEKS                       R22 R5 K42 ["UserKeyboardInput"]
      605 GETTABLEKS                       R23 R5 K43 ["UserMouseInput"]
      607 GETTABLEKS                       R24 R5 K44 ["CharacterNavigation"]
      609 GETTABLEKS                       R25 R5 K50 ["MultiPlayerAgentsCommunication"]
      611 GETTABLEKS                       R26 R5 K51 ["WaitForMultiPlayerAgentsCommunication"]
      613 SETLIST                          R11 R12 15 [1]
      615 GETTABLEKS                       R12 R3 K58 ["FFlagAssistantGetStudioState"]
      617 JUMPIFNOT                        R12 ; [+8]
      618 GETTABLEKS                       R14 R5 K59 ["GetStudioState"]
      620 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
      622 MOVE                             R13 R11
      623 GETIMPORT                        R12 K73 [table.insert]
      625 CALL                             R12 2 0
      626 DUPTABLE                         R12 K80 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools"}]
      627 SETTABLEKS                       R7 R12 K75 ["DefaultTools"]
      629 SETTABLEKS                       R8 R12 K76 ["ExperimentalTools"]
      631 SETTABLEKS                       R9 R12 K77 ["ExperimentFeatureTools"]
      633 SETTABLEKS                       R10 R12 K78 ["AssistantModeToolsAllowlist"]
      635 SETTABLEKS                       R11 R12 K79 ["MultiPlayerTestTools"]
      637 RETURN                           R12 1
