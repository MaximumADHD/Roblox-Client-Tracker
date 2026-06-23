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
       23 GETTABLEKS                       R3 R1 K11 ["Flags"]
       25 GETTABLEKS                       R3 R3 K12 ["Shared"]
       27 GETTABLEKS                       R3 R3 K13 ["FFlagEnableAssistantImageUpload"]
       29 GETTABLEKS                       R4 R1 K11 ["Flags"]
       31 GETTABLEKS                       R4 R4 K12 ["Shared"]
       33 GETTABLEKS                       R4 R4 K14 ["FFlagProceduralModel"]
       35 GETTABLEKS                       R5 R1 K11 ["Flags"]
       37 GETTABLEKS                       R5 R5 K12 ["Shared"]
       39 GETTABLEKS                       R5 R5 K15 ["FFlagAssistantAssetSearchInsertTool"]
       41 GETTABLEKS                       R6 R1 K11 ["Flags"]
       43 GETTABLEKS                       R6 R6 K12 ["Shared"]
       45 GETTABLEKS                       R6 R6 K16 ["FFlagAssistantAssetSearchInsertToolABTest"]
       47 GETTABLEKS                       R7 R1 K11 ["Flags"]
       49 GETTABLEKS                       R7 R7 K12 ["Shared"]
       51 GETTABLEKS                       R7 R7 K17 ["FFlagAssistantMarkdownPlanMode"]
       53 GETTABLEKS                       R8 R1 K11 ["Flags"]
       55 GETTABLEKS                       R8 R8 K12 ["Shared"]
       57 GETTABLEKS                       R8 R8 K18 ["FFlagAssistantAnimationGenTool"]
       59 GETTABLEKS                       R9 R1 K11 ["Flags"]
       61 GETTABLEKS                       R9 R9 K12 ["Shared"]
       63 GETTABLEKS                       R9 R9 K19 ["FFlagAssistantMultiPlayerAgents"]
       65 GETTABLEKS                       R10 R1 K11 ["Flags"]
       67 GETTABLEKS                       R10 R10 K12 ["Shared"]
       69 GETTABLEKS                       R10 R10 K20 ["FFlagAssistantGetStudioState"]
       71 GETTABLEKS                       R11 R1 K11 ["Flags"]
       73 GETTABLEKS                       R11 R11 K12 ["Shared"]
       75 GETTABLEKS                       R11 R11 K21 ["FFlagAssistantVideoCaptureTool"]
       77 GETTABLEKS                       R12 R1 K22 ["Types"]
       79 GETTABLEKS                       R12 R12 K23 ["AssistantMode"]
       81 GETTABLEKS                       R13 R1 K24 ["Tools"]
       83 GETTABLEKS                       R13 R13 K25 ["ToolTypes"]
       85 GETTABLEKS                       R13 R13 K26 ["ToolNames"]
       87 GETTABLEKS                       R14 R1 K24 ["Tools"]
       89 GETTABLEKS                       R14 R14 K27 ["BuiltinTools"]
       91 NEWTABLE                         R15 32 0
       93 GETTABLEKS                       R16 R13 K28 ["ExecuteLuau"]
       95 GETTABLEKS                       R18 R13 K28 ["ExecuteLuau"]
       97 GETTABLE                         R17 R14 R18
       98 SETTABLE                         R17 R15 R16
       99 GETTABLEKS                       R16 R13 K29 ["FileSearch"]
      101 GETTABLEKS                       R18 R13 K29 ["FileSearch"]
      103 GETTABLE                         R17 R14 R18
      104 SETTABLE                         R17 R15 R16
      105 GETTABLEKS                       R16 R13 K30 ["GameTree"]
      107 GETTABLEKS                       R18 R13 K30 ["GameTree"]
      109 GETTABLE                         R17 R14 R18
      110 SETTABLE                         R17 R15 R16
      111 GETTABLEKS                       R16 R13 K31 ["GrepSearch"]
      113 GETTABLEKS                       R18 R13 K31 ["GrepSearch"]
      115 GETTABLE                         R17 R14 R18
      116 SETTABLE                         R17 R15 R16
      117 GETTABLEKS                       R16 R13 K32 ["InspectInstance"]
      119 GETTABLEKS                       R18 R13 K32 ["InspectInstance"]
      121 GETTABLE                         R17 R14 R18
      122 SETTABLE                         R17 R15 R16
      123 GETTABLEKS                       R16 R13 K33 ["MaterialGen"]
      125 GETTABLEKS                       R18 R13 K33 ["MaterialGen"]
      127 GETTABLE                         R17 R14 R18
      128 SETTABLE                         R17 R15 R16
      129 GETTABLEKS                       R16 R13 K34 ["AnimationGen"]
      131 MOVE                             R18 R8
      132 CALL                             R18 0 1
      133 JUMPIFNOT                        R18 ; [+4]
      134 GETTABLEKS                       R18 R13 K34 ["AnimationGen"]
      136 GETTABLE                         R17 R14 R18
      137 JUMP                             ; [+1]
      138 LOADNIL                          R17
      139 SETTABLE                         R17 R15 R16
      140 GETTABLEKS                       R16 R13 K35 ["MeshGen"]
      142 GETTABLEKS                       R18 R13 K35 ["MeshGen"]
      144 GETTABLE                         R17 R14 R18
      145 SETTABLE                         R17 R15 R16
      146 GETTABLEKS                       R16 R13 K36 ["MultiEdit"]
      148 GETTABLEKS                       R18 R13 K36 ["MultiEdit"]
      150 GETTABLE                         R17 R14 R18
      151 SETTABLE                         R17 R15 R16
      152 GETTABLEKS                       R16 R13 K37 ["ReadFile"]
      154 GETTABLEKS                       R18 R13 K37 ["ReadFile"]
      156 GETTABLE                         R17 R14 R18
      157 SETTABLE                         R17 R15 R16
      158 GETTABLEKS                       R16 R13 K38 ["PrimitiveGen"]
      160 MOVE                             R18 R4
      161 CALL                             R18 0 1
      162 JUMPIFNOT                        R18 ; [+4]
      163 GETTABLEKS                       R18 R13 K38 ["PrimitiveGen"]
      165 GETTABLE                         R17 R14 R18
      166 JUMP                             ; [+1]
      167 LOADNIL                          R17
      168 SETTABLE                         R17 R15 R16
      169 GETTABLEKS                       R16 R13 K39 ["WaitJobFinished"]
      171 MOVE                             R18 R4
      172 CALL                             R18 0 1
      173 JUMPIFNOT                        R18 ; [+4]
      174 GETTABLEKS                       R18 R13 K39 ["WaitJobFinished"]
      176 GETTABLE                         R17 R14 R18
      177 JUMP                             ; [+1]
      178 LOADNIL                          R17
      179 SETTABLE                         R17 R15 R16
      180 GETTABLEKS                       R16 R13 K40 ["QuestionAnswer"]
      182 GETTABLEKS                       R18 R13 K40 ["QuestionAnswer"]
      184 GETTABLE                         R17 R14 R18
      185 SETTABLE                         R17 R15 R16
      186 GETTABLEKS                       R16 R13 K41 ["StoreImage"]
      188 GETTABLEKS                       R18 R13 K41 ["StoreImage"]
      190 GETTABLE                         R17 R14 R18
      191 SETTABLE                         R17 R15 R16
      192 GETTABLEKS                       R16 R13 K42 ["Subagent"]
      194 GETTABLEKS                       R18 R13 K42 ["Subagent"]
      196 GETTABLE                         R17 R14 R18
      197 SETTABLE                         R17 R15 R16
      198 GETTABLEKS                       R16 R13 K43 ["FinalizePlan"]
      200 GETTABLEKS                       R18 R13 K43 ["FinalizePlan"]
      202 GETTABLE                         R17 R14 R18
      203 SETTABLE                         R17 R15 R16
      204 GETTABLEKS                       R16 R13 K44 ["CompleteTodoItems"]
      206 GETTABLEKS                       R18 R13 K44 ["CompleteTodoItems"]
      208 GETTABLE                         R17 R14 R18
      209 SETTABLE                         R17 R15 R16
      210 GETTABLEKS                       R16 R13 K45 ["UpdatePlan"]
      212 MOVE                             R18 R7
      213 CALL                             R18 0 1
      214 JUMPIFNOT                        R18 ; [+4]
      215 GETTABLEKS                       R18 R13 K45 ["UpdatePlan"]
      217 GETTABLE                         R17 R14 R18
      218 JUMP                             ; [+1]
      219 LOADNIL                          R17
      220 SETTABLE                         R17 R15 R16
      221 GETTABLEKS                       R16 R13 K46 ["FromHistory"]
      223 GETTABLEKS                       R18 R13 K46 ["FromHistory"]
      225 GETTABLE                         R17 R14 R18
      226 SETTABLE                         R17 R15 R16
      227 GETTABLEKS                       R16 R13 K47 ["StartStopPlay"]
      229 GETTABLEKS                       R18 R13 K47 ["StartStopPlay"]
      231 GETTABLE                         R17 R14 R18
      232 SETTABLE                         R17 R15 R16
      233 GETTABLEKS                       R16 R13 K48 ["GetConsoleOutput"]
      235 GETTABLEKS                       R18 R13 K48 ["GetConsoleOutput"]
      237 GETTABLE                         R17 R14 R18
      238 SETTABLE                         R17 R15 R16
      239 GETTABLEKS                       R16 R13 K49 ["UserKeyboardInput"]
      241 GETTABLEKS                       R18 R13 K49 ["UserKeyboardInput"]
      243 GETTABLE                         R17 R14 R18
      244 SETTABLE                         R17 R15 R16
      245 GETTABLEKS                       R16 R13 K50 ["UserMouseInput"]
      247 GETTABLEKS                       R18 R13 K50 ["UserMouseInput"]
      249 GETTABLE                         R17 R14 R18
      250 SETTABLE                         R17 R15 R16
      251 GETTABLEKS                       R16 R13 K51 ["CharacterNavigation"]
      253 GETTABLEKS                       R18 R13 K51 ["CharacterNavigation"]
      255 GETTABLE                         R17 R14 R18
      256 SETTABLE                         R17 R15 R16
      257 GETTABLEKS                       R16 R13 K52 ["Skill"]
      259 GETTABLEKS                       R18 R13 K52 ["Skill"]
      261 GETTABLE                         R17 R14 R18
      262 SETTABLE                         R17 R15 R16
      263 GETTABLEKS                       R16 R13 K53 ["HttpGet"]
      265 GETTABLEKS                       R18 R13 K53 ["HttpGet"]
      267 GETTABLE                         R17 R14 R18
      268 SETTABLE                         R17 R15 R16
      269 MOVE                             R16 R9
      270 CALL                             R16 0 1
      271 JUMPIFNOT                        R16 ; [+24]
      272 GETTABLEKS                       R16 R13 K54 ["StartMultiPlayerAgents"]
      274 GETTABLEKS                       R18 R13 K54 ["StartMultiPlayerAgents"]
      276 GETTABLE                         R17 R14 R18
      277 SETTABLE                         R17 R15 R16
      278 GETTABLEKS                       R16 R13 K55 ["StopMultiPlayerAgents"]
      280 GETTABLEKS                       R18 R13 K55 ["StopMultiPlayerAgents"]
      282 GETTABLE                         R17 R14 R18
      283 SETTABLE                         R17 R15 R16
      284 GETTABLEKS                       R16 R13 K56 ["MultiPlayerAgentsCommunication"]
      286 GETTABLEKS                       R18 R13 K56 ["MultiPlayerAgentsCommunication"]
      288 GETTABLE                         R17 R14 R18
      289 SETTABLE                         R17 R15 R16
      290 GETTABLEKS                       R16 R13 K57 ["WaitForMultiPlayerAgentsCommunication"]
      292 GETTABLEKS                       R18 R13 K57 ["WaitForMultiPlayerAgentsCommunication"]
      294 GETTABLE                         R17 R14 R18
      295 SETTABLE                         R17 R15 R16
      296 MOVE                             R16 R5
      297 CALL                             R16 0 1
      298 JUMPIFNOT                        R16 ; [+13]
      299 GETTABLEKS                       R16 R13 K58 ["AssetInsert"]
      301 GETTABLEKS                       R18 R13 K58 ["AssetInsert"]
      303 GETTABLE                         R17 R14 R18
      304 SETTABLE                         R17 R15 R16
      305 GETTABLEKS                       R16 R13 K59 ["AssetSearch"]
      307 GETTABLEKS                       R18 R13 K59 ["AssetSearch"]
      309 GETTABLE                         R17 R14 R18
      310 SETTABLE                         R17 R15 R16
      311 JUMP                             ; [+15]
      312 MOVE                             R16 R6
      313 CALL                             R16 0 1
      314 JUMPIF                           R16 ; [+12]
      315 GETTABLEKS                       R16 R13 K60 ["CreatorStoreSearch"]
      317 GETTABLEKS                       R18 R13 K60 ["CreatorStoreSearch"]
      319 GETTABLE                         R17 R14 R18
      320 SETTABLE                         R17 R15 R16
      321 GETTABLEKS                       R16 R13 K61 ["CreatorStoreInsert"]
      323 GETTABLEKS                       R18 R13 K61 ["CreatorStoreInsert"]
      325 GETTABLE                         R17 R14 R18
      326 SETTABLE                         R17 R15 R16
      327 MOVE                             R16 R10
      328 CALL                             R16 0 1
      329 JUMPIFNOT                        R16 ; [+6]
      330 GETTABLEKS                       R16 R13 K62 ["GetStudioState"]
      332 GETTABLEKS                       R18 R13 K62 ["GetStudioState"]
      334 GETTABLE                         R17 R14 R18
      335 SETTABLE                         R17 R15 R16
      336 MOVE                             R16 R11
      337 CALL                             R16 0 1
      338 JUMPIFNOT                        R16 ; [+6]
      339 GETTABLEKS                       R16 R13 K63 ["VideoCapture"]
      341 GETTABLEKS                       R18 R13 K63 ["VideoCapture"]
      343 GETTABLE                         R17 R14 R18
      344 SETTABLE                         R17 R15 R16
      345 NEWTABLE                         R16 4 0
      347 GETTABLEKS                       R17 R13 K64 ["ScreenCapture"]
      349 GETTABLEKS                       R19 R13 K64 ["ScreenCapture"]
      351 GETTABLE                         R18 R14 R19
      352 SETTABLE                         R18 R16 R17
      353 GETTABLEKS                       R17 R13 K65 ["UploadImage"]
      355 MOVE                             R19 R3
      356 CALL                             R19 0 1
      357 JUMPIFNOT                        R19 ; [+4]
      358 GETTABLEKS                       R19 R13 K65 ["UploadImage"]
      360 GETTABLE                         R18 R14 R19
      361 JUMP                             ; [+1]
      362 LOADNIL                          R18
      363 SETTABLE                         R18 R16 R17
      364 GETTABLEKS                       R17 R13 K60 ["CreatorStoreSearch"]
      366 MOVE                             R19 R6
      367 CALL                             R19 0 1
      368 JUMPIFNOT                        R19 ; [+4]
      369 GETTABLEKS                       R19 R13 K60 ["CreatorStoreSearch"]
      371 GETTABLE                         R18 R14 R19
      372 JUMP                             ; [+1]
      373 LOADNIL                          R18
      374 SETTABLE                         R18 R16 R17
      375 GETTABLEKS                       R17 R13 K61 ["CreatorStoreInsert"]
      377 MOVE                             R19 R6
      378 CALL                             R19 0 1
      379 JUMPIFNOT                        R19 ; [+4]
      380 GETTABLEKS                       R19 R13 K61 ["CreatorStoreInsert"]
      382 GETTABLE                         R18 R14 R19
      383 JUMP                             ; [+1]
      384 LOADNIL                          R18
      385 SETTABLE                         R18 R16 R17
      386 NEWTABLE                         R17 1 0
      388 GETTABLEKS                       R18 R2 K66 ["FeatureNames"]
      390 GETTABLEKS                       R18 R18 K67 ["NewAssetToolSet"]
      392 NEWTABLE                         R19 2 0
      394 GETTABLEKS                       R20 R13 K58 ["AssetInsert"]
      396 MOVE                             R22 R6
      397 CALL                             R22 0 1
      398 JUMPIFNOT                        R22 ; [+7]
      399 MOVE                             R22 R5
      400 CALL                             R22 0 1
      401 JUMPIF                           R22 ; [+4]
      402 GETTABLEKS                       R22 R13 K58 ["AssetInsert"]
      404 GETTABLE                         R21 R14 R22
      405 JUMP                             ; [+1]
      406 LOADNIL                          R21
      407 SETTABLE                         R21 R19 R20
      408 GETTABLEKS                       R20 R13 K59 ["AssetSearch"]
      410 MOVE                             R22 R6
      411 CALL                             R22 0 1
      412 JUMPIFNOT                        R22 ; [+7]
      413 MOVE                             R22 R5
      414 CALL                             R22 0 1
      415 JUMPIF                           R22 ; [+4]
      416 GETTABLEKS                       R22 R13 K59 ["AssetSearch"]
      418 GETTABLE                         R21 R14 R22
      419 JUMP                             ; [+1]
      420 LOADNIL                          R21
      421 SETTABLE                         R21 R19 R20
      422 SETTABLE                         R19 R17 R18
      423 NEWTABLE                         R18 1 0
      425 GETTABLEKS                       R19 R12 K68 ["Agent"]
      427 NEWTABLE                         R20 0 32
      429 GETTABLEKS                       R21 R13 K28 ["ExecuteLuau"]
      431 GETTABLEKS                       R22 R13 K29 ["FileSearch"]
      433 GETTABLEKS                       R23 R13 K30 ["GameTree"]
      435 GETTABLEKS                       R24 R13 K31 ["GrepSearch"]
      437 GETTABLEKS                       R25 R13 K61 ["CreatorStoreInsert"]
      439 GETTABLEKS                       R26 R13 K60 ["CreatorStoreSearch"]
      441 GETTABLEKS                       R27 R13 K58 ["AssetInsert"]
      443 GETTABLEKS                       R28 R13 K59 ["AssetSearch"]
      445 GETTABLEKS                       R29 R13 K32 ["InspectInstance"]
      447 GETTABLEKS                       R30 R13 K33 ["MaterialGen"]
      449 GETTABLEKS                       R31 R13 K35 ["MeshGen"]
      451 GETTABLEKS                       R32 R13 K36 ["MultiEdit"]
      453 GETTABLEKS                       R33 R13 K37 ["ReadFile"]
      455 GETTABLEKS                       R34 R13 K38 ["PrimitiveGen"]
      457 GETTABLEKS                       R35 R13 K52 ["Skill"]
      459 GETTABLEKS                       R36 R13 K42 ["Subagent"]
      461 SETLIST                          R20 R21 16 [1]
      463 GETTABLEKS                       R21 R13 K64 ["ScreenCapture"]
      465 GETTABLEKS                       R22 R13 K65 ["UploadImage"]
      467 GETTABLEKS                       R23 R13 K54 ["StartMultiPlayerAgents"]
      469 GETTABLEKS                       R24 R13 K55 ["StopMultiPlayerAgents"]
      471 GETTABLEKS                       R25 R13 K56 ["MultiPlayerAgentsCommunication"]
      473 GETTABLEKS                       R26 R13 K57 ["WaitForMultiPlayerAgentsCommunication"]
      475 GETTABLEKS                       R27 R13 K53 ["HttpGet"]
      477 GETTABLEKS                       R28 R13 K46 ["FromHistory"]
      479 GETTABLEKS                       R29 R13 K47 ["StartStopPlay"]
      481 GETTABLEKS                       R30 R13 K48 ["GetConsoleOutput"]
      483 GETTABLEKS                       R31 R13 K49 ["UserKeyboardInput"]
      485 GETTABLEKS                       R32 R13 K50 ["UserMouseInput"]
      487 GETTABLEKS                       R33 R13 K51 ["CharacterNavigation"]
      489 GETTABLEKS                       R34 R13 K63 ["VideoCapture"]
      491 GETTABLEKS                       R35 R13 K40 ["QuestionAnswer"]
      493 GETTABLEKS                       R36 R13 K44 ["CompleteTodoItems"]
      495 SETLIST                          R20 R21 16 [17]
      497 SETTABLE                         R20 R18 R19
      498 MOVE                             R19 R10
      499 CALL                             R19 0 1
      500 JUMPIFNOT                        R19 ; [+10]
      501 GETTABLEKS                       R21 R12 K68 ["Agent"]
      503 GETTABLE                         R20 R18 R21
      504 GETTABLEKS                       R21 R13 K62 ["GetStudioState"]
      506 FASTCALL2                        TABLE_INSERT R20 R21 ; [+3]
      508 GETIMPORT                        R19 K71 [table.insert]
      510 CALL                             R19 2 0
      511 GETTABLEKS                       R21 R12 K68 ["Agent"]
      513 GETTABLE                         R20 R18 R21
      514 GETTABLEKS                       R21 R13 K41 ["StoreImage"]
      516 FASTCALL2                        TABLE_INSERT R20 R21 ; [+3]
      518 GETIMPORT                        R19 K71 [table.insert]
      520 CALL                             R19 2 0
      521 MOVE                             R19 R8
      522 CALL                             R19 0 1
      523 JUMPIFNOT                        R19 ; [+10]
      524 GETTABLEKS                       R21 R12 K68 ["Agent"]
      526 GETTABLE                         R20 R18 R21
      527 GETTABLEKS                       R21 R13 K34 ["AnimationGen"]
      529 FASTCALL2                        TABLE_INSERT R20 R21 ; [+3]
      531 GETIMPORT                        R19 K71 [table.insert]
      533 CALL                             R19 2 0
      534 MOVE                             R19 R4
      535 CALL                             R19 0 1
      536 JUMPIFNOT                        R19 ; [+10]
      537 GETTABLEKS                       R21 R12 K68 ["Agent"]
      539 GETTABLE                         R20 R18 R21
      540 GETTABLEKS                       R21 R13 K39 ["WaitJobFinished"]
      542 FASTCALL2                        TABLE_INSERT R20 R21 ; [+3]
      544 GETIMPORT                        R19 K71 [table.insert]
      546 CALL                             R19 2 0
      547 MOVE                             R19 R7
      548 CALL                             R19 0 1
      549 JUMPIFNOT                        R19 ; [+10]
      550 GETTABLEKS                       R21 R12 K68 ["Agent"]
      552 GETTABLE                         R20 R18 R21
      553 GETTABLEKS                       R21 R13 K45 ["UpdatePlan"]
      555 FASTCALL2                        TABLE_INSERT R20 R21 ; [+3]
      557 GETIMPORT                        R19 K71 [table.insert]
      559 CALL                             R19 2 0
      560 GETTABLEKS                       R19 R12 K72 ["Plan"]
      562 NEWTABLE                         R20 0 9
      564 GETTABLEKS                       R21 R13 K37 ["ReadFile"]
      566 GETTABLEKS                       R22 R13 K29 ["FileSearch"]
      568 GETTABLEKS                       R23 R13 K31 ["GrepSearch"]
      570 GETTABLEKS                       R24 R13 K30 ["GameTree"]
      572 GETTABLEKS                       R25 R13 K32 ["InspectInstance"]
      574 GETTABLEKS                       R26 R13 K64 ["ScreenCapture"]
      576 GETTABLEKS                       R27 R13 K40 ["QuestionAnswer"]
      578 GETTABLEKS                       R28 R13 K43 ["FinalizePlan"]
      580 MOVE                             R30 R7
      581 CALL                             R30 0 1
      582 JUMPIFNOT                        R30 ; [+3]
      583 GETTABLEKS                       R29 R13 K45 ["UpdatePlan"]
      585 JUMP                             ; [+1]
      586 LOADNIL                          R29
      587 SETLIST                          R20 R21 9 [1]
      589 SETTABLE                         R20 R18 R19
      590 NEWTABLE                         R19 0 15
      592 GETTABLEKS                       R20 R13 K28 ["ExecuteLuau"]
      594 GETTABLEKS                       R21 R13 K29 ["FileSearch"]
      596 GETTABLEKS                       R22 R13 K30 ["GameTree"]
      598 GETTABLEKS                       R23 R13 K31 ["GrepSearch"]
      600 GETTABLEKS                       R24 R13 K32 ["InspectInstance"]
      602 GETTABLEKS                       R25 R13 K37 ["ReadFile"]
      604 GETTABLEKS                       R26 R13 K52 ["Skill"]
      606 GETTABLEKS                       R27 R13 K42 ["Subagent"]
      608 GETTABLEKS                       R28 R13 K64 ["ScreenCapture"]
      610 GETTABLEKS                       R29 R13 K48 ["GetConsoleOutput"]
      612 GETTABLEKS                       R30 R13 K49 ["UserKeyboardInput"]
      614 GETTABLEKS                       R31 R13 K50 ["UserMouseInput"]
      616 GETTABLEKS                       R32 R13 K51 ["CharacterNavigation"]
      618 GETTABLEKS                       R33 R13 K56 ["MultiPlayerAgentsCommunication"]
      620 GETTABLEKS                       R34 R13 K57 ["WaitForMultiPlayerAgentsCommunication"]
      622 SETLIST                          R19 R20 15 [1]
      624 MOVE                             R20 R10
      625 CALL                             R20 0 1
      626 JUMPIFNOT                        R20 ; [+8]
      627 GETTABLEKS                       R22 R13 K62 ["GetStudioState"]
      629 FASTCALL2                        TABLE_INSERT R19 R22 ; [+4]
      631 MOVE                             R21 R19
      632 GETIMPORT                        R20 K71 [table.insert]
      634 CALL                             R20 2 0
      635 DUPTABLE                         R20 K78 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools"}]
      636 SETTABLEKS                       R15 R20 K73 ["DefaultTools"]
      638 SETTABLEKS                       R16 R20 K74 ["ExperimentalTools"]
      640 SETTABLEKS                       R17 R20 K75 ["ExperimentFeatureTools"]
      642 SETTABLEKS                       R18 R20 K76 ["AssistantModeToolsAllowlist"]
      644 SETTABLEKS                       R19 R20 K77 ["MultiPlayerTestTools"]
      646 RETURN                           R20 1
