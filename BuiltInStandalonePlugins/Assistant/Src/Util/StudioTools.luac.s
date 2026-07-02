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
       75 GETTABLEKS                       R11 R11 K21 ["FFlagAssistantUserSkills"]
       77 GETTABLEKS                       R12 R1 K11 ["Flags"]
       79 GETTABLEKS                       R12 R12 K12 ["Shared"]
       81 GETTABLEKS                       R12 R12 K22 ["FFlagAssistantVideoCaptureTool"]
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
      137 MOVE                             R19 R8
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
      168 JUMPIFNOT                        R19 ; [+4]
      169 GETTABLEKS                       R19 R14 K39 ["PrimitiveGen"]
      171 GETTABLE                         R18 R15 R19
      172 JUMP                             ; [+1]
      173 LOADNIL                          R18
      174 SETTABLE                         R18 R16 R17
      175 GETTABLEKS                       R17 R14 K40 ["WaitJobFinished"]
      177 MOVE                             R19 R4
      178 CALL                             R19 0 1
      179 JUMPIFNOT                        R19 ; [+4]
      180 GETTABLEKS                       R19 R14 K40 ["WaitJobFinished"]
      182 GETTABLE                         R18 R15 R19
      183 JUMP                             ; [+1]
      184 LOADNIL                          R18
      185 SETTABLE                         R18 R16 R17
      186 GETTABLEKS                       R17 R14 K41 ["QuestionAnswer"]
      188 GETTABLEKS                       R19 R14 K41 ["QuestionAnswer"]
      190 GETTABLE                         R18 R15 R19
      191 SETTABLE                         R18 R16 R17
      192 GETTABLEKS                       R17 R14 K42 ["StoreImage"]
      194 GETTABLEKS                       R19 R14 K42 ["StoreImage"]
      196 GETTABLE                         R18 R15 R19
      197 SETTABLE                         R18 R16 R17
      198 GETTABLEKS                       R17 R14 K43 ["Subagent"]
      200 GETTABLEKS                       R19 R14 K43 ["Subagent"]
      202 GETTABLE                         R18 R15 R19
      203 SETTABLE                         R18 R16 R17
      204 GETTABLEKS                       R17 R14 K44 ["FinalizePlan"]
      206 GETTABLEKS                       R19 R14 K44 ["FinalizePlan"]
      208 GETTABLE                         R18 R15 R19
      209 SETTABLE                         R18 R16 R17
      210 GETTABLEKS                       R17 R14 K45 ["CompleteTodoItems"]
      212 GETTABLEKS                       R19 R14 K45 ["CompleteTodoItems"]
      214 GETTABLE                         R18 R15 R19
      215 SETTABLE                         R18 R16 R17
      216 GETTABLEKS                       R17 R14 K46 ["UpdatePlan"]
      218 MOVE                             R19 R7
      219 CALL                             R19 0 1
      220 JUMPIFNOT                        R19 ; [+4]
      221 GETTABLEKS                       R19 R14 K46 ["UpdatePlan"]
      223 GETTABLE                         R18 R15 R19
      224 JUMP                             ; [+1]
      225 LOADNIL                          R18
      226 SETTABLE                         R18 R16 R17
      227 GETTABLEKS                       R17 R14 K47 ["FromHistory"]
      229 GETTABLEKS                       R19 R14 K47 ["FromHistory"]
      231 GETTABLE                         R18 R15 R19
      232 SETTABLE                         R18 R16 R17
      233 GETTABLEKS                       R17 R14 K48 ["StartStopPlay"]
      235 GETTABLEKS                       R19 R14 K48 ["StartStopPlay"]
      237 GETTABLE                         R18 R15 R19
      238 SETTABLE                         R18 R16 R17
      239 GETTABLEKS                       R17 R14 K49 ["GetConsoleOutput"]
      241 GETTABLEKS                       R19 R14 K49 ["GetConsoleOutput"]
      243 GETTABLE                         R18 R15 R19
      244 SETTABLE                         R18 R16 R17
      245 GETTABLEKS                       R17 R14 K50 ["UserKeyboardInput"]
      247 GETTABLEKS                       R19 R14 K50 ["UserKeyboardInput"]
      249 GETTABLE                         R18 R15 R19
      250 SETTABLE                         R18 R16 R17
      251 GETTABLEKS                       R17 R14 K51 ["UserMouseInput"]
      253 GETTABLEKS                       R19 R14 K51 ["UserMouseInput"]
      255 GETTABLE                         R18 R15 R19
      256 SETTABLE                         R18 R16 R17
      257 GETTABLEKS                       R17 R14 K52 ["CharacterNavigation"]
      259 GETTABLEKS                       R19 R14 K52 ["CharacterNavigation"]
      261 GETTABLE                         R18 R15 R19
      262 SETTABLE                         R18 R16 R17
      263 GETTABLEKS                       R17 R14 K53 ["Skill"]
      265 GETTABLEKS                       R19 R14 K53 ["Skill"]
      267 GETTABLE                         R18 R15 R19
      268 SETTABLE                         R18 R16 R17
      269 GETTABLEKS                       R17 R14 K54 ["HttpGet"]
      271 GETTABLEKS                       R19 R14 K54 ["HttpGet"]
      273 GETTABLE                         R18 R15 R19
      274 SETTABLE                         R18 R16 R17
      275 MOVE                             R17 R9
      276 CALL                             R17 0 1
      277 JUMPIFNOT                        R17 ; [+24]
      278 GETTABLEKS                       R17 R14 K55 ["StartMultiPlayerAgents"]
      280 GETTABLEKS                       R19 R14 K55 ["StartMultiPlayerAgents"]
      282 GETTABLE                         R18 R15 R19
      283 SETTABLE                         R18 R16 R17
      284 GETTABLEKS                       R17 R14 K56 ["StopMultiPlayerAgents"]
      286 GETTABLEKS                       R19 R14 K56 ["StopMultiPlayerAgents"]
      288 GETTABLE                         R18 R15 R19
      289 SETTABLE                         R18 R16 R17
      290 GETTABLEKS                       R17 R14 K57 ["MultiPlayerAgentsCommunication"]
      292 GETTABLEKS                       R19 R14 K57 ["MultiPlayerAgentsCommunication"]
      294 GETTABLE                         R18 R15 R19
      295 SETTABLE                         R18 R16 R17
      296 GETTABLEKS                       R17 R14 K58 ["WaitForMultiPlayerAgentsCommunication"]
      298 GETTABLEKS                       R19 R14 K58 ["WaitForMultiPlayerAgentsCommunication"]
      300 GETTABLE                         R18 R15 R19
      301 SETTABLE                         R18 R16 R17
      302 MOVE                             R17 R5
      303 CALL                             R17 0 1
      304 JUMPIFNOT                        R17 ; [+13]
      305 GETTABLEKS                       R17 R14 K59 ["AssetInsert"]
      307 GETTABLEKS                       R19 R14 K59 ["AssetInsert"]
      309 GETTABLE                         R18 R15 R19
      310 SETTABLE                         R18 R16 R17
      311 GETTABLEKS                       R17 R14 K60 ["AssetSearch"]
      313 GETTABLEKS                       R19 R14 K60 ["AssetSearch"]
      315 GETTABLE                         R18 R15 R19
      316 SETTABLE                         R18 R16 R17
      317 JUMP                             ; [+15]
      318 MOVE                             R17 R6
      319 CALL                             R17 0 1
      320 JUMPIF                           R17 ; [+12]
      321 GETTABLEKS                       R17 R14 K61 ["CreatorStoreSearch"]
      323 GETTABLEKS                       R19 R14 K61 ["CreatorStoreSearch"]
      325 GETTABLE                         R18 R15 R19
      326 SETTABLE                         R18 R16 R17
      327 GETTABLEKS                       R17 R14 K62 ["CreatorStoreInsert"]
      329 GETTABLEKS                       R19 R14 K62 ["CreatorStoreInsert"]
      331 GETTABLE                         R18 R15 R19
      332 SETTABLE                         R18 R16 R17
      333 MOVE                             R17 R10
      334 CALL                             R17 0 1
      335 JUMPIFNOT                        R17 ; [+6]
      336 GETTABLEKS                       R17 R14 K63 ["GetStudioState"]
      338 GETTABLEKS                       R19 R14 K63 ["GetStudioState"]
      340 GETTABLE                         R18 R15 R19
      341 SETTABLE                         R18 R16 R17
      342 MOVE                             R17 R12
      343 CALL                             R17 0 1
      344 JUMPIFNOT                        R17 ; [+6]
      345 GETTABLEKS                       R17 R14 K64 ["VideoCapture"]
      347 GETTABLEKS                       R19 R14 K64 ["VideoCapture"]
      349 GETTABLE                         R18 R15 R19
      350 SETTABLE                         R18 R16 R17
      351 MOVE                             R17 R11
      352 CALL                             R17 0 1
      353 JUMPIFNOT                        R17 ; [+6]
      354 GETTABLEKS                       R17 R14 K65 ["CreateSkill"]
      356 GETTABLEKS                       R19 R14 K65 ["CreateSkill"]
      358 GETTABLE                         R18 R15 R19
      359 SETTABLE                         R18 R16 R17
      360 NEWTABLE                         R17 4 0
      362 GETTABLEKS                       R18 R14 K66 ["ScreenCapture"]
      364 GETTABLEKS                       R20 R14 K66 ["ScreenCapture"]
      366 GETTABLE                         R19 R15 R20
      367 SETTABLE                         R19 R17 R18
      368 GETTABLEKS                       R18 R14 K67 ["UploadImage"]
      370 MOVE                             R20 R3
      371 CALL                             R20 0 1
      372 JUMPIFNOT                        R20 ; [+4]
      373 GETTABLEKS                       R20 R14 K67 ["UploadImage"]
      375 GETTABLE                         R19 R15 R20
      376 JUMP                             ; [+1]
      377 LOADNIL                          R19
      378 SETTABLE                         R19 R17 R18
      379 GETTABLEKS                       R18 R14 K61 ["CreatorStoreSearch"]
      381 MOVE                             R20 R6
      382 CALL                             R20 0 1
      383 JUMPIFNOT                        R20 ; [+4]
      384 GETTABLEKS                       R20 R14 K61 ["CreatorStoreSearch"]
      386 GETTABLE                         R19 R15 R20
      387 JUMP                             ; [+1]
      388 LOADNIL                          R19
      389 SETTABLE                         R19 R17 R18
      390 GETTABLEKS                       R18 R14 K62 ["CreatorStoreInsert"]
      392 MOVE                             R20 R6
      393 CALL                             R20 0 1
      394 JUMPIFNOT                        R20 ; [+4]
      395 GETTABLEKS                       R20 R14 K62 ["CreatorStoreInsert"]
      397 GETTABLE                         R19 R15 R20
      398 JUMP                             ; [+1]
      399 LOADNIL                          R19
      400 SETTABLE                         R19 R17 R18
      401 NEWTABLE                         R18 1 0
      403 GETTABLEKS                       R19 R2 K68 ["FeatureNames"]
      405 GETTABLEKS                       R19 R19 K69 ["NewAssetToolSet"]
      407 NEWTABLE                         R20 2 0
      409 GETTABLEKS                       R21 R14 K59 ["AssetInsert"]
      411 MOVE                             R23 R6
      412 CALL                             R23 0 1
      413 JUMPIFNOT                        R23 ; [+7]
      414 MOVE                             R23 R5
      415 CALL                             R23 0 1
      416 JUMPIF                           R23 ; [+4]
      417 GETTABLEKS                       R23 R14 K59 ["AssetInsert"]
      419 GETTABLE                         R22 R15 R23
      420 JUMP                             ; [+1]
      421 LOADNIL                          R22
      422 SETTABLE                         R22 R20 R21
      423 GETTABLEKS                       R21 R14 K60 ["AssetSearch"]
      425 MOVE                             R23 R6
      426 CALL                             R23 0 1
      427 JUMPIFNOT                        R23 ; [+7]
      428 MOVE                             R23 R5
      429 CALL                             R23 0 1
      430 JUMPIF                           R23 ; [+4]
      431 GETTABLEKS                       R23 R14 K60 ["AssetSearch"]
      433 GETTABLE                         R22 R15 R23
      434 JUMP                             ; [+1]
      435 LOADNIL                          R22
      436 SETTABLE                         R22 R20 R21
      437 SETTABLE                         R20 R18 R19
      438 NEWTABLE                         R19 1 0
      440 GETTABLEKS                       R20 R13 K70 ["Agent"]
      442 NEWTABLE                         R21 0 32
      444 GETTABLEKS                       R22 R14 K29 ["ExecuteLuau"]
      446 GETTABLEKS                       R23 R14 K30 ["FileSearch"]
      448 GETTABLEKS                       R24 R14 K31 ["GameTree"]
      450 GETTABLEKS                       R25 R14 K32 ["GrepSearch"]
      452 GETTABLEKS                       R26 R14 K62 ["CreatorStoreInsert"]
      454 GETTABLEKS                       R27 R14 K61 ["CreatorStoreSearch"]
      456 GETTABLEKS                       R28 R14 K59 ["AssetInsert"]
      458 GETTABLEKS                       R29 R14 K60 ["AssetSearch"]
      460 GETTABLEKS                       R30 R14 K33 ["InspectInstance"]
      462 GETTABLEKS                       R31 R14 K34 ["MaterialGen"]
      464 GETTABLEKS                       R32 R14 K36 ["MeshGen"]
      466 GETTABLEKS                       R33 R14 K37 ["MultiEdit"]
      468 GETTABLEKS                       R34 R14 K38 ["ReadFile"]
      470 GETTABLEKS                       R35 R14 K39 ["PrimitiveGen"]
      472 GETTABLEKS                       R36 R14 K53 ["Skill"]
      474 GETTABLEKS                       R37 R14 K43 ["Subagent"]
      476 SETLIST                          R21 R22 16 [1]
      478 GETTABLEKS                       R22 R14 K66 ["ScreenCapture"]
      480 GETTABLEKS                       R23 R14 K67 ["UploadImage"]
      482 GETTABLEKS                       R24 R14 K55 ["StartMultiPlayerAgents"]
      484 GETTABLEKS                       R25 R14 K56 ["StopMultiPlayerAgents"]
      486 GETTABLEKS                       R26 R14 K57 ["MultiPlayerAgentsCommunication"]
      488 GETTABLEKS                       R27 R14 K58 ["WaitForMultiPlayerAgentsCommunication"]
      490 GETTABLEKS                       R28 R14 K54 ["HttpGet"]
      492 GETTABLEKS                       R29 R14 K47 ["FromHistory"]
      494 GETTABLEKS                       R30 R14 K48 ["StartStopPlay"]
      496 GETTABLEKS                       R31 R14 K49 ["GetConsoleOutput"]
      498 GETTABLEKS                       R32 R14 K50 ["UserKeyboardInput"]
      500 GETTABLEKS                       R33 R14 K51 ["UserMouseInput"]
      502 GETTABLEKS                       R34 R14 K52 ["CharacterNavigation"]
      504 GETTABLEKS                       R35 R14 K64 ["VideoCapture"]
      506 GETTABLEKS                       R36 R14 K41 ["QuestionAnswer"]
      508 GETTABLEKS                       R37 R14 K45 ["CompleteTodoItems"]
      510 SETLIST                          R21 R22 16 [17]
      512 SETTABLE                         R21 R19 R20
      513 MOVE                             R20 R10
      514 CALL                             R20 0 1
      515 JUMPIFNOT                        R20 ; [+10]
      516 GETTABLEKS                       R22 R13 K70 ["Agent"]
      518 GETTABLE                         R21 R19 R22
      519 GETTABLEKS                       R22 R14 K63 ["GetStudioState"]
      521 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      523 GETIMPORT                        R20 K73 [table.insert]
      525 CALL                             R20 2 0
      526 GETTABLEKS                       R22 R13 K70 ["Agent"]
      528 GETTABLE                         R21 R19 R22
      529 GETTABLEKS                       R22 R14 K42 ["StoreImage"]
      531 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      533 GETIMPORT                        R20 K73 [table.insert]
      535 CALL                             R20 2 0
      536 MOVE                             R20 R8
      537 CALL                             R20 0 1
      538 JUMPIFNOT                        R20 ; [+10]
      539 GETTABLEKS                       R22 R13 K70 ["Agent"]
      541 GETTABLE                         R21 R19 R22
      542 GETTABLEKS                       R22 R14 K35 ["AnimationGen"]
      544 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      546 GETIMPORT                        R20 K73 [table.insert]
      548 CALL                             R20 2 0
      549 MOVE                             R20 R4
      550 CALL                             R20 0 1
      551 JUMPIFNOT                        R20 ; [+10]
      552 GETTABLEKS                       R22 R13 K70 ["Agent"]
      554 GETTABLE                         R21 R19 R22
      555 GETTABLEKS                       R22 R14 K40 ["WaitJobFinished"]
      557 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      559 GETIMPORT                        R20 K73 [table.insert]
      561 CALL                             R20 2 0
      562 MOVE                             R20 R7
      563 CALL                             R20 0 1
      564 JUMPIFNOT                        R20 ; [+10]
      565 GETTABLEKS                       R22 R13 K70 ["Agent"]
      567 GETTABLE                         R21 R19 R22
      568 GETTABLEKS                       R22 R14 K46 ["UpdatePlan"]
      570 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      572 GETIMPORT                        R20 K73 [table.insert]
      574 CALL                             R20 2 0
      575 MOVE                             R20 R11
      576 CALL                             R20 0 1
      577 JUMPIFNOT                        R20 ; [+10]
      578 GETTABLEKS                       R22 R13 K70 ["Agent"]
      580 GETTABLE                         R21 R19 R22
      581 GETTABLEKS                       R22 R14 K65 ["CreateSkill"]
      583 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      585 GETIMPORT                        R20 K73 [table.insert]
      587 CALL                             R20 2 0
      588 GETTABLEKS                       R20 R13 K74 ["Plan"]
      590 NEWTABLE                         R21 0 9
      592 GETTABLEKS                       R22 R14 K38 ["ReadFile"]
      594 GETTABLEKS                       R23 R14 K30 ["FileSearch"]
      596 GETTABLEKS                       R24 R14 K32 ["GrepSearch"]
      598 GETTABLEKS                       R25 R14 K31 ["GameTree"]
      600 GETTABLEKS                       R26 R14 K33 ["InspectInstance"]
      602 GETTABLEKS                       R27 R14 K66 ["ScreenCapture"]
      604 GETTABLEKS                       R28 R14 K41 ["QuestionAnswer"]
      606 GETTABLEKS                       R29 R14 K44 ["FinalizePlan"]
      608 MOVE                             R31 R7
      609 CALL                             R31 0 1
      610 JUMPIFNOT                        R31 ; [+3]
      611 GETTABLEKS                       R30 R14 K46 ["UpdatePlan"]
      613 JUMP                             ; [+1]
      614 LOADNIL                          R30
      615 SETLIST                          R21 R22 9 [1]
      617 SETTABLE                         R21 R19 R20
      618 NEWTABLE                         R20 0 15
      620 GETTABLEKS                       R21 R14 K29 ["ExecuteLuau"]
      622 GETTABLEKS                       R22 R14 K30 ["FileSearch"]
      624 GETTABLEKS                       R23 R14 K31 ["GameTree"]
      626 GETTABLEKS                       R24 R14 K32 ["GrepSearch"]
      628 GETTABLEKS                       R25 R14 K33 ["InspectInstance"]
      630 GETTABLEKS                       R26 R14 K38 ["ReadFile"]
      632 GETTABLEKS                       R27 R14 K53 ["Skill"]
      634 GETTABLEKS                       R28 R14 K43 ["Subagent"]
      636 GETTABLEKS                       R29 R14 K66 ["ScreenCapture"]
      638 GETTABLEKS                       R30 R14 K49 ["GetConsoleOutput"]
      640 GETTABLEKS                       R31 R14 K50 ["UserKeyboardInput"]
      642 GETTABLEKS                       R32 R14 K51 ["UserMouseInput"]
      644 GETTABLEKS                       R33 R14 K52 ["CharacterNavigation"]
      646 GETTABLEKS                       R34 R14 K57 ["MultiPlayerAgentsCommunication"]
      648 GETTABLEKS                       R35 R14 K58 ["WaitForMultiPlayerAgentsCommunication"]
      650 SETLIST                          R20 R21 15 [1]
      652 MOVE                             R21 R10
      653 CALL                             R21 0 1
      654 JUMPIFNOT                        R21 ; [+8]
      655 GETTABLEKS                       R23 R14 K63 ["GetStudioState"]
      657 FASTCALL2                        TABLE_INSERT R20 R23 ; [+4]
      659 MOVE                             R22 R20
      660 GETIMPORT                        R21 K73 [table.insert]
      662 CALL                             R21 2 0
      663 DUPTABLE                         R21 K80 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools"}]
      664 SETTABLEKS                       R16 R21 K75 ["DefaultTools"]
      666 SETTABLEKS                       R17 R21 K76 ["ExperimentalTools"]
      668 SETTABLEKS                       R18 R21 K77 ["ExperimentFeatureTools"]
      670 SETTABLEKS                       R19 R21 K78 ["AssistantModeToolsAllowlist"]
      672 SETTABLEKS                       R20 R21 K79 ["MultiPlayerTestTools"]
      674 RETURN                           R21 1
