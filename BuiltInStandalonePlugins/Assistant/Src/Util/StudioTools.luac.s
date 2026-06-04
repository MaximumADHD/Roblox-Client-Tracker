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
       33 GETTABLEKS                       R4 R4 K14 ["FFlagEnablePrimitiveGenTool"]
       35 GETTABLEKS                       R5 R1 K11 ["Flags"]
       37 GETTABLEKS                       R5 R5 K12 ["Shared"]
       39 GETTABLEKS                       R5 R5 K15 ["FFlagProceduralModel"]
       41 GETTABLEKS                       R6 R1 K11 ["Flags"]
       43 GETTABLEKS                       R6 R6 K12 ["Shared"]
       45 GETTABLEKS                       R6 R6 K16 ["FFlagAssistantQuestionAnswerTool"]
       47 GETTABLEKS                       R7 R1 K11 ["Flags"]
       49 GETTABLEKS                       R7 R7 K12 ["Shared"]
       51 GETTABLEKS                       R7 R7 K17 ["FFlagAssistantPlanMode"]
       53 GETTABLEKS                       R8 R1 K11 ["Flags"]
       55 GETTABLEKS                       R8 R8 K12 ["Shared"]
       57 GETTABLEKS                       R8 R8 K18 ["FFlagAssistantAssetSearchInsertTool"]
       59 GETTABLEKS                       R9 R1 K11 ["Flags"]
       61 GETTABLEKS                       R9 R9 K12 ["Shared"]
       63 GETTABLEKS                       R9 R9 K19 ["FFlagAssistantAssetSearchInsertToolABTest"]
       65 GETTABLEKS                       R10 R1 K11 ["Flags"]
       67 GETTABLEKS                       R10 R10 K12 ["Shared"]
       69 GETTABLEKS                       R10 R10 K20 ["FFlagAssistantMarkdownPlanMode"]
       71 GETTABLEKS                       R11 R1 K11 ["Flags"]
       73 GETTABLEKS                       R11 R11 K12 ["Shared"]
       75 GETTABLEKS                       R11 R11 K21 ["FFlagAssistantAnimationGenTool"]
       77 GETTABLEKS                       R12 R1 K11 ["Flags"]
       79 GETTABLEKS                       R12 R12 K12 ["Shared"]
       81 GETTABLEKS                       R12 R12 K22 ["FFlagEnableStoreImageTool"]
       83 GETTABLEKS                       R13 R1 K23 ["Types"]
       85 GETTABLEKS                       R13 R13 K24 ["AssistantMode"]
       87 GETTABLEKS                       R14 R1 K25 ["Tools"]
       89 GETTABLEKS                       R14 R14 K26 ["ToolTypes"]
       91 GETTABLEKS                       R14 R14 K27 ["ToolNames"]
       93 GETTABLEKS                       R15 R1 K25 ["Tools"]
       95 GETTABLEKS                       R15 R15 K28 ["BuiltinTools"]
       97 NEWTABLE                         R16 32 0
       99 GETTABLEKS                       R17 R14 K29 ["ExecuteLuau"]
      101 GETTABLEKS                       R19 R14 K29 ["ExecuteLuau"]
      103 GETTABLE                         R18 R15 R19
      104 SETTABLE                         R18 R16 R17
      105 GETTABLEKS                       R17 R14 K30 ["FileSearch"]
      107 GETTABLEKS                       R19 R14 K30 ["FileSearch"]
      109 GETTABLE                         R18 R15 R19
      110 SETTABLE                         R18 R16 R17
      111 GETTABLEKS                       R17 R14 K31 ["GameTree"]
      113 GETTABLEKS                       R19 R14 K31 ["GameTree"]
      115 GETTABLE                         R18 R15 R19
      116 SETTABLE                         R18 R16 R17
      117 GETTABLEKS                       R17 R14 K32 ["GrepSearch"]
      119 GETTABLEKS                       R19 R14 K32 ["GrepSearch"]
      121 GETTABLE                         R18 R15 R19
      122 SETTABLE                         R18 R16 R17
      123 GETTABLEKS                       R17 R14 K33 ["InspectInstance"]
      125 GETTABLEKS                       R19 R14 K33 ["InspectInstance"]
      127 GETTABLE                         R18 R15 R19
      128 SETTABLE                         R18 R16 R17
      129 GETTABLEKS                       R17 R14 K34 ["MaterialGen"]
      131 GETTABLEKS                       R19 R14 K34 ["MaterialGen"]
      133 GETTABLE                         R18 R15 R19
      134 SETTABLE                         R18 R16 R17
      135 GETTABLEKS                       R17 R14 K35 ["AnimationGen"]
      137 MOVE                             R19 R11
      138 CALL                             R19 0 1
      139 JUMPIFNOT                        R19 ; [+4]
      140 GETTABLEKS                       R19 R14 K35 ["AnimationGen"]
      142 GETTABLE                         R18 R15 R19
      143 JUMP                             ; [+1]
      144 LOADNIL                          R18
      145 SETTABLE                         R18 R16 R17
      146 GETTABLEKS                       R17 R14 K36 ["MeshGen"]
      148 GETTABLEKS                       R19 R14 K36 ["MeshGen"]
      150 GETTABLE                         R18 R15 R19
      151 SETTABLE                         R18 R16 R17
      152 GETTABLEKS                       R17 R14 K37 ["MultiEdit"]
      154 GETTABLEKS                       R19 R14 K37 ["MultiEdit"]
      156 GETTABLE                         R18 R15 R19
      157 SETTABLE                         R18 R16 R17
      158 GETTABLEKS                       R17 R14 K38 ["ReadFile"]
      160 GETTABLEKS                       R19 R14 K38 ["ReadFile"]
      162 GETTABLE                         R18 R15 R19
      163 SETTABLE                         R18 R16 R17
      164 GETTABLEKS                       R17 R14 K39 ["PrimitiveGen"]
      166 MOVE                             R19 R4
      167 CALL                             R19 0 1
      168 JUMPIFNOT                        R19 ; [+7]
      169 MOVE                             R19 R5
      170 CALL                             R19 0 1
      171 JUMPIFNOT                        R19 ; [+4]
      172 GETTABLEKS                       R19 R14 K39 ["PrimitiveGen"]
      174 GETTABLE                         R18 R15 R19
      175 JUMP                             ; [+1]
      176 LOADNIL                          R18
      177 SETTABLE                         R18 R16 R17
      178 GETTABLEKS                       R17 R14 K40 ["WaitJobFinished"]
      180 MOVE                             R19 R5
      181 CALL                             R19 0 1
      182 JUMPIFNOT                        R19 ; [+7]
      183 MOVE                             R19 R4
      184 CALL                             R19 0 1
      185 JUMPIFNOT                        R19 ; [+4]
      186 GETTABLEKS                       R19 R14 K40 ["WaitJobFinished"]
      188 GETTABLE                         R18 R15 R19
      189 JUMP                             ; [+1]
      190 LOADNIL                          R18
      191 SETTABLE                         R18 R16 R17
      192 GETTABLEKS                       R17 R14 K41 ["QuestionAnswer"]
      194 MOVE                             R19 R6
      195 CALL                             R19 0 1
      196 JUMPIFNOT                        R19 ; [+4]
      197 GETTABLEKS                       R19 R14 K41 ["QuestionAnswer"]
      199 GETTABLE                         R18 R15 R19
      200 JUMP                             ; [+1]
      201 LOADNIL                          R18
      202 SETTABLE                         R18 R16 R17
      203 GETTABLEKS                       R17 R14 K42 ["StoreImage"]
      205 MOVE                             R19 R12
      206 CALL                             R19 0 1
      207 JUMPIFNOT                        R19 ; [+4]
      208 GETTABLEKS                       R19 R14 K42 ["StoreImage"]
      210 GETTABLE                         R18 R15 R19
      211 JUMP                             ; [+1]
      212 LOADNIL                          R18
      213 SETTABLE                         R18 R16 R17
      214 GETTABLEKS                       R17 R14 K43 ["Subagent"]
      216 GETTABLEKS                       R19 R14 K43 ["Subagent"]
      218 GETTABLE                         R18 R15 R19
      219 SETTABLE                         R18 R16 R17
      220 GETTABLEKS                       R17 R14 K44 ["FinalizePlan"]
      222 MOVE                             R19 R7
      223 CALL                             R19 0 1
      224 JUMPIFNOT                        R19 ; [+4]
      225 GETTABLEKS                       R19 R14 K44 ["FinalizePlan"]
      227 GETTABLE                         R18 R15 R19
      228 JUMP                             ; [+1]
      229 LOADNIL                          R18
      230 SETTABLE                         R18 R16 R17
      231 GETTABLEKS                       R17 R14 K45 ["CompleteTodoItems"]
      233 MOVE                             R19 R7
      234 CALL                             R19 0 1
      235 JUMPIFNOT                        R19 ; [+4]
      236 GETTABLEKS                       R19 R14 K45 ["CompleteTodoItems"]
      238 GETTABLE                         R18 R15 R19
      239 JUMP                             ; [+1]
      240 LOADNIL                          R18
      241 SETTABLE                         R18 R16 R17
      242 GETTABLEKS                       R17 R14 K46 ["UpdatePlan"]
      244 MOVE                             R19 R7
      245 CALL                             R19 0 1
      246 JUMPIFNOT                        R19 ; [+7]
      247 MOVE                             R19 R10
      248 CALL                             R19 0 1
      249 JUMPIFNOT                        R19 ; [+4]
      250 GETTABLEKS                       R19 R14 K46 ["UpdatePlan"]
      252 GETTABLE                         R18 R15 R19
      253 JUMP                             ; [+1]
      254 LOADNIL                          R18
      255 SETTABLE                         R18 R16 R17
      256 GETTABLEKS                       R17 R14 K47 ["FromHistory"]
      258 GETTABLEKS                       R19 R14 K47 ["FromHistory"]
      260 GETTABLE                         R18 R15 R19
      261 SETTABLE                         R18 R16 R17
      262 GETTABLEKS                       R17 R14 K48 ["StartStopPlay"]
      264 GETTABLEKS                       R19 R14 K48 ["StartStopPlay"]
      266 GETTABLE                         R18 R15 R19
      267 SETTABLE                         R18 R16 R17
      268 GETTABLEKS                       R17 R14 K49 ["GetConsoleOutput"]
      270 GETTABLEKS                       R19 R14 K49 ["GetConsoleOutput"]
      272 GETTABLE                         R18 R15 R19
      273 SETTABLE                         R18 R16 R17
      274 GETTABLEKS                       R17 R14 K50 ["UserKeyboardInput"]
      276 GETTABLEKS                       R19 R14 K50 ["UserKeyboardInput"]
      278 GETTABLE                         R18 R15 R19
      279 SETTABLE                         R18 R16 R17
      280 GETTABLEKS                       R17 R14 K51 ["UserMouseInput"]
      282 GETTABLEKS                       R19 R14 K51 ["UserMouseInput"]
      284 GETTABLE                         R18 R15 R19
      285 SETTABLE                         R18 R16 R17
      286 GETTABLEKS                       R17 R14 K52 ["CharacterNavigation"]
      288 GETTABLEKS                       R19 R14 K52 ["CharacterNavigation"]
      290 GETTABLE                         R18 R15 R19
      291 SETTABLE                         R18 R16 R17
      292 GETTABLEKS                       R17 R14 K53 ["Skill"]
      294 GETTABLEKS                       R19 R14 K53 ["Skill"]
      296 GETTABLE                         R18 R15 R19
      297 SETTABLE                         R18 R16 R17
      298 GETTABLEKS                       R17 R14 K54 ["HttpGet"]
      300 GETTABLEKS                       R19 R14 K54 ["HttpGet"]
      302 GETTABLE                         R18 R15 R19
      303 SETTABLE                         R18 R16 R17
      304 MOVE                             R17 R8
      305 CALL                             R17 0 1
      306 JUMPIFNOT                        R17 ; [+13]
      307 GETTABLEKS                       R17 R14 K55 ["AssetInsert"]
      309 GETTABLEKS                       R19 R14 K55 ["AssetInsert"]
      311 GETTABLE                         R18 R15 R19
      312 SETTABLE                         R18 R16 R17
      313 GETTABLEKS                       R17 R14 K56 ["AssetSearch"]
      315 GETTABLEKS                       R19 R14 K56 ["AssetSearch"]
      317 GETTABLE                         R18 R15 R19
      318 SETTABLE                         R18 R16 R17
      319 JUMP                             ; [+15]
      320 MOVE                             R17 R9
      321 CALL                             R17 0 1
      322 JUMPIF                           R17 ; [+12]
      323 GETTABLEKS                       R17 R14 K57 ["CreatorStoreSearch"]
      325 GETTABLEKS                       R19 R14 K57 ["CreatorStoreSearch"]
      327 GETTABLE                         R18 R15 R19
      328 SETTABLE                         R18 R16 R17
      329 GETTABLEKS                       R17 R14 K58 ["CreatorStoreInsert"]
      331 GETTABLEKS                       R19 R14 K58 ["CreatorStoreInsert"]
      333 GETTABLE                         R18 R15 R19
      334 SETTABLE                         R18 R16 R17
      335 NEWTABLE                         R17 4 0
      337 GETTABLEKS                       R18 R14 K59 ["ScreenCapture"]
      339 GETTABLEKS                       R20 R14 K59 ["ScreenCapture"]
      341 GETTABLE                         R19 R15 R20
      342 SETTABLE                         R19 R17 R18
      343 GETTABLEKS                       R18 R14 K60 ["UploadImage"]
      345 MOVE                             R20 R3
      346 CALL                             R20 0 1
      347 JUMPIFNOT                        R20 ; [+4]
      348 GETTABLEKS                       R20 R14 K60 ["UploadImage"]
      350 GETTABLE                         R19 R15 R20
      351 JUMP                             ; [+1]
      352 LOADNIL                          R19
      353 SETTABLE                         R19 R17 R18
      354 GETTABLEKS                       R18 R14 K57 ["CreatorStoreSearch"]
      356 MOVE                             R20 R9
      357 CALL                             R20 0 1
      358 JUMPIFNOT                        R20 ; [+4]
      359 GETTABLEKS                       R20 R14 K57 ["CreatorStoreSearch"]
      361 GETTABLE                         R19 R15 R20
      362 JUMP                             ; [+1]
      363 LOADNIL                          R19
      364 SETTABLE                         R19 R17 R18
      365 GETTABLEKS                       R18 R14 K58 ["CreatorStoreInsert"]
      367 MOVE                             R20 R9
      368 CALL                             R20 0 1
      369 JUMPIFNOT                        R20 ; [+4]
      370 GETTABLEKS                       R20 R14 K58 ["CreatorStoreInsert"]
      372 GETTABLE                         R19 R15 R20
      373 JUMP                             ; [+1]
      374 LOADNIL                          R19
      375 SETTABLE                         R19 R17 R18
      376 NEWTABLE                         R18 1 0
      378 GETTABLEKS                       R19 R2 K61 ["FeatureNames"]
      380 GETTABLEKS                       R19 R19 K62 ["NewAssetToolSet"]
      382 NEWTABLE                         R20 2 0
      384 GETTABLEKS                       R21 R14 K55 ["AssetInsert"]
      386 MOVE                             R23 R9
      387 CALL                             R23 0 1
      388 JUMPIFNOT                        R23 ; [+7]
      389 MOVE                             R23 R8
      390 CALL                             R23 0 1
      391 JUMPIF                           R23 ; [+4]
      392 GETTABLEKS                       R23 R14 K55 ["AssetInsert"]
      394 GETTABLE                         R22 R15 R23
      395 JUMP                             ; [+1]
      396 LOADNIL                          R22
      397 SETTABLE                         R22 R20 R21
      398 GETTABLEKS                       R21 R14 K56 ["AssetSearch"]
      400 MOVE                             R23 R9
      401 CALL                             R23 0 1
      402 JUMPIFNOT                        R23 ; [+7]
      403 MOVE                             R23 R8
      404 CALL                             R23 0 1
      405 JUMPIF                           R23 ; [+4]
      406 GETTABLEKS                       R23 R14 K56 ["AssetSearch"]
      408 GETTABLE                         R22 R15 R23
      409 JUMP                             ; [+1]
      410 LOADNIL                          R22
      411 SETTABLE                         R22 R20 R21
      412 SETTABLE                         R20 R18 R19
      413 NEWTABLE                         R19 1 0
      415 GETTABLEKS                       R20 R13 K63 ["Agent"]
      417 NEWTABLE                         R21 0 25
      419 GETTABLEKS                       R22 R14 K29 ["ExecuteLuau"]
      421 GETTABLEKS                       R23 R14 K30 ["FileSearch"]
      423 GETTABLEKS                       R24 R14 K31 ["GameTree"]
      425 GETTABLEKS                       R25 R14 K32 ["GrepSearch"]
      427 GETTABLEKS                       R26 R14 K58 ["CreatorStoreInsert"]
      429 GETTABLEKS                       R27 R14 K57 ["CreatorStoreSearch"]
      431 GETTABLEKS                       R28 R14 K55 ["AssetInsert"]
      433 GETTABLEKS                       R29 R14 K56 ["AssetSearch"]
      435 GETTABLEKS                       R30 R14 K33 ["InspectInstance"]
      437 GETTABLEKS                       R31 R14 K34 ["MaterialGen"]
      439 GETTABLEKS                       R32 R14 K36 ["MeshGen"]
      441 GETTABLEKS                       R33 R14 K37 ["MultiEdit"]
      443 GETTABLEKS                       R34 R14 K38 ["ReadFile"]
      445 GETTABLEKS                       R35 R14 K39 ["PrimitiveGen"]
      447 GETTABLEKS                       R36 R14 K53 ["Skill"]
      449 GETTABLEKS                       R37 R14 K43 ["Subagent"]
      451 SETLIST                          R21 R22 16 [1]
      453 GETTABLEKS                       R22 R14 K59 ["ScreenCapture"]
      455 GETTABLEKS                       R23 R14 K60 ["UploadImage"]
      457 GETTABLEKS                       R24 R14 K54 ["HttpGet"]
      459 GETTABLEKS                       R25 R14 K47 ["FromHistory"]
      461 GETTABLEKS                       R26 R14 K48 ["StartStopPlay"]
      463 GETTABLEKS                       R27 R14 K49 ["GetConsoleOutput"]
      465 GETTABLEKS                       R28 R14 K50 ["UserKeyboardInput"]
      467 GETTABLEKS                       R29 R14 K51 ["UserMouseInput"]
      469 GETTABLEKS                       R30 R14 K52 ["CharacterNavigation"]
      471 SETLIST                          R21 R22 9 [17]
      473 SETTABLE                         R21 R19 R20
      474 MOVE                             R20 R6
      475 CALL                             R20 0 1
      476 JUMPIFNOT                        R20 ; [+10]
      477 GETTABLEKS                       R22 R13 K63 ["Agent"]
      479 GETTABLE                         R21 R19 R22
      480 GETTABLEKS                       R22 R14 K41 ["QuestionAnswer"]
      482 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      484 GETIMPORT                        R20 K66 [table.insert]
      486 CALL                             R20 2 0
      487 MOVE                             R20 R12
      488 CALL                             R20 0 1
      489 JUMPIFNOT                        R20 ; [+10]
      490 GETTABLEKS                       R22 R13 K63 ["Agent"]
      492 GETTABLE                         R21 R19 R22
      493 GETTABLEKS                       R22 R14 K42 ["StoreImage"]
      495 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      497 GETIMPORT                        R20 K66 [table.insert]
      499 CALL                             R20 2 0
      500 MOVE                             R20 R11
      501 CALL                             R20 0 1
      502 JUMPIFNOT                        R20 ; [+10]
      503 GETTABLEKS                       R22 R13 K63 ["Agent"]
      505 GETTABLE                         R21 R19 R22
      506 GETTABLEKS                       R22 R14 K35 ["AnimationGen"]
      508 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      510 GETIMPORT                        R20 K66 [table.insert]
      512 CALL                             R20 2 0
      513 MOVE                             R20 R5
      514 CALL                             R20 0 1
      515 JUMPIFNOT                        R20 ; [+13]
      516 MOVE                             R20 R4
      517 CALL                             R20 0 1
      518 JUMPIFNOT                        R20 ; [+10]
      519 GETTABLEKS                       R22 R13 K63 ["Agent"]
      521 GETTABLE                         R21 R19 R22
      522 GETTABLEKS                       R22 R14 K40 ["WaitJobFinished"]
      524 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      526 GETIMPORT                        R20 K66 [table.insert]
      528 CALL                             R20 2 0
      529 MOVE                             R20 R7
      530 CALL                             R20 0 1
      531 JUMPIFNOT                        R20 ; [+53]
      532 GETTABLEKS                       R22 R13 K63 ["Agent"]
      534 GETTABLE                         R21 R19 R22
      535 GETTABLEKS                       R22 R14 K45 ["CompleteTodoItems"]
      537 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      539 GETIMPORT                        R20 K66 [table.insert]
      541 CALL                             R20 2 0
      542 MOVE                             R20 R10
      543 CALL                             R20 0 1
      544 JUMPIFNOT                        R20 ; [+10]
      545 GETTABLEKS                       R22 R13 K63 ["Agent"]
      547 GETTABLE                         R21 R19 R22
      548 GETTABLEKS                       R22 R14 K46 ["UpdatePlan"]
      550 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      552 GETIMPORT                        R20 K66 [table.insert]
      554 CALL                             R20 2 0
      555 GETTABLEKS                       R20 R13 K67 ["Plan"]
      557 NEWTABLE                         R21 0 9
      559 GETTABLEKS                       R22 R14 K38 ["ReadFile"]
      561 GETTABLEKS                       R23 R14 K30 ["FileSearch"]
      563 GETTABLEKS                       R24 R14 K32 ["GrepSearch"]
      565 GETTABLEKS                       R25 R14 K31 ["GameTree"]
      567 GETTABLEKS                       R26 R14 K33 ["InspectInstance"]
      569 GETTABLEKS                       R27 R14 K59 ["ScreenCapture"]
      571 GETTABLEKS                       R28 R14 K41 ["QuestionAnswer"]
      573 GETTABLEKS                       R29 R14 K44 ["FinalizePlan"]
      575 MOVE                             R31 R10
      576 CALL                             R31 0 1
      577 JUMPIFNOT                        R31 ; [+3]
      578 GETTABLEKS                       R30 R14 K46 ["UpdatePlan"]
      580 JUMP                             ; [+1]
      581 LOADNIL                          R30
      582 SETLIST                          R21 R22 9 [1]
      584 SETTABLE                         R21 R19 R20
      585 DUPTABLE                         R20 K72 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist"}]
      586 SETTABLEKS                       R16 R20 K68 ["DefaultTools"]
      588 SETTABLEKS                       R17 R20 K69 ["ExperimentalTools"]
      590 SETTABLEKS                       R18 R20 K70 ["ExperimentFeatureTools"]
      592 SETTABLEKS                       R19 R20 K71 ["AssistantModeToolsAllowlist"]
      594 RETURN                           R20 1
