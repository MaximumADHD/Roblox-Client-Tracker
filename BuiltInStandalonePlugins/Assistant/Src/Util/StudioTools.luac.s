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
       93 GETTABLEKS                       R8 R5 K26 ["AvatarAutoSetup"]
       95 GETTABLEKS                       R10 R3 K27 ["FFlagAssistantAvatarAutoSetupTool"]
       97 JUMPIFNOT                        R10 ; [+4]
       98 GETTABLEKS                       R10 R5 K26 ["AvatarAutoSetup"]
      100 GETTABLE                         R9 R6 R10
      101 JUMP                             ; [+1]
      102 LOADNIL                          R9
      103 SETTABLE                         R9 R7 R8
      104 GETTABLEKS                       R8 R5 K28 ["MeshGen"]
      106 GETTABLEKS                       R10 R5 K28 ["MeshGen"]
      108 GETTABLE                         R9 R6 R10
      109 SETTABLE                         R9 R7 R8
      110 GETTABLEKS                       R8 R5 K29 ["MultiEdit"]
      112 GETTABLEKS                       R10 R5 K29 ["MultiEdit"]
      114 GETTABLE                         R9 R6 R10
      115 SETTABLE                         R9 R7 R8
      116 GETTABLEKS                       R8 R5 K30 ["ReadFile"]
      118 GETTABLEKS                       R10 R5 K30 ["ReadFile"]
      120 GETTABLE                         R9 R6 R10
      121 SETTABLE                         R9 R7 R8
      122 GETTABLEKS                       R8 R5 K31 ["PrimitiveGen"]
      124 GETTABLEKS                       R10 R5 K31 ["PrimitiveGen"]
      126 GETTABLE                         R9 R6 R10
      127 SETTABLE                         R9 R7 R8
      128 GETTABLEKS                       R8 R5 K32 ["QuestionAnswer"]
      130 GETTABLEKS                       R10 R5 K32 ["QuestionAnswer"]
      132 GETTABLE                         R9 R6 R10
      133 SETTABLE                         R9 R7 R8
      134 GETTABLEKS                       R8 R5 K33 ["StoreImage"]
      136 GETTABLEKS                       R10 R5 K33 ["StoreImage"]
      138 GETTABLE                         R9 R6 R10
      139 SETTABLE                         R9 R7 R8
      140 GETTABLEKS                       R8 R5 K34 ["Subagent"]
      142 GETTABLEKS                       R10 R5 K34 ["Subagent"]
      144 GETTABLE                         R9 R6 R10
      145 SETTABLE                         R9 R7 R8
      146 GETTABLEKS                       R8 R5 K35 ["FinalizePlan"]
      148 GETTABLEKS                       R10 R5 K35 ["FinalizePlan"]
      150 GETTABLE                         R9 R6 R10
      151 SETTABLE                         R9 R7 R8
      152 GETTABLEKS                       R8 R5 K36 ["CompleteTodoItems"]
      154 GETTABLEKS                       R10 R5 K36 ["CompleteTodoItems"]
      156 GETTABLE                         R9 R6 R10
      157 SETTABLE                         R9 R7 R8
      158 GETTABLEKS                       R8 R5 K37 ["UpdatePlan"]
      160 GETTABLEKS                       R10 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      162 JUMPIFNOT                        R10 ; [+4]
      163 GETTABLEKS                       R10 R5 K37 ["UpdatePlan"]
      165 GETTABLE                         R9 R6 R10
      166 JUMP                             ; [+1]
      167 LOADNIL                          R9
      168 SETTABLE                         R9 R7 R8
      169 GETTABLEKS                       R8 R5 K39 ["FromHistory"]
      171 GETTABLEKS                       R10 R5 K39 ["FromHistory"]
      173 GETTABLE                         R9 R6 R10
      174 SETTABLE                         R9 R7 R8
      175 GETTABLEKS                       R8 R5 K40 ["StartStopPlay"]
      177 GETTABLEKS                       R10 R5 K40 ["StartStopPlay"]
      179 GETTABLE                         R9 R6 R10
      180 SETTABLE                         R9 R7 R8
      181 GETTABLEKS                       R8 R5 K41 ["GetConsoleOutput"]
      183 GETTABLEKS                       R10 R5 K41 ["GetConsoleOutput"]
      185 GETTABLE                         R9 R6 R10
      186 SETTABLE                         R9 R7 R8
      187 GETTABLEKS                       R8 R5 K42 ["UserKeyboardInput"]
      189 GETTABLEKS                       R10 R5 K42 ["UserKeyboardInput"]
      191 GETTABLE                         R9 R6 R10
      192 SETTABLE                         R9 R7 R8
      193 GETTABLEKS                       R8 R5 K43 ["UserMouseInput"]
      195 GETTABLEKS                       R10 R5 K43 ["UserMouseInput"]
      197 GETTABLE                         R9 R6 R10
      198 SETTABLE                         R9 R7 R8
      199 GETTABLEKS                       R8 R5 K44 ["CharacterNavigation"]
      201 GETTABLEKS                       R10 R5 K44 ["CharacterNavigation"]
      203 GETTABLE                         R9 R6 R10
      204 SETTABLE                         R9 R7 R8
      205 GETTABLEKS                       R8 R5 K45 ["Skill"]
      207 GETTABLEKS                       R10 R5 K45 ["Skill"]
      209 GETTABLE                         R9 R6 R10
      210 SETTABLE                         R9 R7 R8
      211 GETTABLEKS                       R8 R5 K46 ["HttpGet"]
      213 GETTABLEKS                       R10 R5 K46 ["HttpGet"]
      215 GETTABLE                         R9 R6 R10
      216 SETTABLE                         R9 R7 R8
      217 GETTABLEKS                       R8 R5 K47 ["CreateSkill"]
      219 GETTABLEKS                       R10 R5 K47 ["CreateSkill"]
      221 GETTABLE                         R9 R6 R10
      222 SETTABLE                         R9 R7 R8
      223 GETTABLEKS                       R8 R5 K48 ["EditSkill"]
      225 GETTABLEKS                       R10 R5 K48 ["EditSkill"]
      227 GETTABLE                         R9 R6 R10
      228 SETTABLE                         R9 R7 R8
      229 GETTABLEKS                       R8 R5 K49 ["JobWait"]
      231 GETTABLEKS                       R10 R5 K49 ["JobWait"]
      233 GETTABLE                         R9 R6 R10
      234 SETTABLE                         R9 R7 R8
      235 GETTABLEKS                       R8 R3 K50 ["FFlagAssistantMigratePrimitiveGenTool"]
      237 JUMPIFNOT                        R8 ; [+6]
      238 GETTABLEKS                       R8 R5 K51 ["JobRun"]
      240 GETTABLEKS                       R10 R5 K51 ["JobRun"]
      242 GETTABLE                         R9 R6 R10
      243 SETTABLE                         R9 R7 R8
      244 GETTABLEKS                       R8 R3 K52 ["FFlagAssistantMultiPlayerAgents"]
      246 JUMPIFNOT                        R8 ; [+24]
      247 GETTABLEKS                       R8 R5 K53 ["StartMultiPlayerAgents"]
      249 GETTABLEKS                       R10 R5 K53 ["StartMultiPlayerAgents"]
      251 GETTABLE                         R9 R6 R10
      252 SETTABLE                         R9 R7 R8
      253 GETTABLEKS                       R8 R5 K54 ["StopMultiPlayerAgents"]
      255 GETTABLEKS                       R10 R5 K54 ["StopMultiPlayerAgents"]
      257 GETTABLE                         R9 R6 R10
      258 SETTABLE                         R9 R7 R8
      259 GETTABLEKS                       R8 R5 K55 ["MultiPlayerAgentsCommunication"]
      261 GETTABLEKS                       R10 R5 K55 ["MultiPlayerAgentsCommunication"]
      263 GETTABLE                         R9 R6 R10
      264 SETTABLE                         R9 R7 R8
      265 GETTABLEKS                       R8 R5 K56 ["WaitForMultiPlayerAgentsCommunication"]
      267 GETTABLEKS                       R10 R5 K56 ["WaitForMultiPlayerAgentsCommunication"]
      269 GETTABLE                         R9 R6 R10
      270 SETTABLE                         R9 R7 R8
      271 GETTABLEKS                       R8 R3 K57 ["FFlagAssistantAssetSearchInsertTool"]
      273 JUMPIFNOT                        R8 ; [+13]
      274 GETTABLEKS                       R8 R5 K58 ["AssetInsert"]
      276 GETTABLEKS                       R10 R5 K58 ["AssetInsert"]
      278 GETTABLE                         R9 R6 R10
      279 SETTABLE                         R9 R7 R8
      280 GETTABLEKS                       R8 R5 K59 ["AssetSearch"]
      282 GETTABLEKS                       R10 R5 K59 ["AssetSearch"]
      284 GETTABLE                         R9 R6 R10
      285 SETTABLE                         R9 R7 R8
      286 JUMP                             ; [+15]
      287 GETTABLEKS                       R8 R3 K60 ["FFlagAssistantAssetSearchInsertToolABTest"]
      289 JUMPIF                           R8 ; [+12]
      290 GETTABLEKS                       R8 R5 K61 ["CreatorStoreSearch"]
      292 GETTABLEKS                       R10 R5 K61 ["CreatorStoreSearch"]
      294 GETTABLE                         R9 R6 R10
      295 SETTABLE                         R9 R7 R8
      296 GETTABLEKS                       R8 R5 K62 ["CreatorStoreInsert"]
      298 GETTABLEKS                       R10 R5 K62 ["CreatorStoreInsert"]
      300 GETTABLE                         R9 R6 R10
      301 SETTABLE                         R9 R7 R8
      302 GETTABLEKS                       R8 R3 K63 ["FFlagAssistantGetStudioState"]
      304 JUMPIFNOT                        R8 ; [+6]
      305 GETTABLEKS                       R8 R5 K64 ["GetStudioState"]
      307 GETTABLEKS                       R10 R5 K64 ["GetStudioState"]
      309 GETTABLE                         R9 R6 R10
      310 SETTABLE                         R9 R7 R8
      311 GETTABLEKS                       R8 R3 K65 ["FFlagAssistantVideoCaptureTool"]
      313 JUMPIFNOT                        R8 ; [+6]
      314 GETTABLEKS                       R8 R5 K66 ["VideoCapture"]
      316 GETTABLEKS                       R10 R5 K66 ["VideoCapture"]
      318 GETTABLE                         R9 R6 R10
      319 SETTABLE                         R9 R7 R8
      320 NEWTABLE                         R8 4 0
      322 GETTABLEKS                       R9 R5 K67 ["ScreenCapture"]
      324 GETTABLEKS                       R11 R5 K67 ["ScreenCapture"]
      326 GETTABLE                         R10 R6 R11
      327 SETTABLE                         R10 R8 R9
      328 GETTABLEKS                       R9 R5 K68 ["UploadImage"]
      330 GETTABLEKS                       R11 R3 K69 ["FFlagEnableAssistantImageUpload"]
      332 JUMPIFNOT                        R11 ; [+4]
      333 GETTABLEKS                       R11 R5 K68 ["UploadImage"]
      335 GETTABLE                         R10 R6 R11
      336 JUMP                             ; [+1]
      337 LOADNIL                          R10
      338 SETTABLE                         R10 R8 R9
      339 GETTABLEKS                       R9 R5 K61 ["CreatorStoreSearch"]
      341 GETTABLEKS                       R11 R3 K60 ["FFlagAssistantAssetSearchInsertToolABTest"]
      343 JUMPIFNOT                        R11 ; [+4]
      344 GETTABLEKS                       R11 R5 K61 ["CreatorStoreSearch"]
      346 GETTABLE                         R10 R6 R11
      347 JUMP                             ; [+1]
      348 LOADNIL                          R10
      349 SETTABLE                         R10 R8 R9
      350 GETTABLEKS                       R9 R5 K62 ["CreatorStoreInsert"]
      352 GETTABLEKS                       R11 R3 K60 ["FFlagAssistantAssetSearchInsertToolABTest"]
      354 JUMPIFNOT                        R11 ; [+4]
      355 GETTABLEKS                       R11 R5 K62 ["CreatorStoreInsert"]
      357 GETTABLE                         R10 R6 R11
      358 JUMP                             ; [+1]
      359 LOADNIL                          R10
      360 SETTABLE                         R10 R8 R9
      361 NEWTABLE                         R9 1 0
      363 GETTABLEKS                       R10 R2 K70 ["FeatureNames"]
      365 GETTABLEKS                       R10 R10 K71 ["NewAssetToolSet"]
      367 NEWTABLE                         R11 2 0
      369 GETTABLEKS                       R12 R5 K58 ["AssetInsert"]
      371 GETTABLEKS                       R14 R3 K60 ["FFlagAssistantAssetSearchInsertToolABTest"]
      373 JUMPIFNOT                        R14 ; [+7]
      374 GETTABLEKS                       R14 R3 K57 ["FFlagAssistantAssetSearchInsertTool"]
      376 JUMPIF                           R14 ; [+4]
      377 GETTABLEKS                       R14 R5 K58 ["AssetInsert"]
      379 GETTABLE                         R13 R6 R14
      380 JUMP                             ; [+1]
      381 LOADNIL                          R13
      382 SETTABLE                         R13 R11 R12
      383 GETTABLEKS                       R12 R5 K59 ["AssetSearch"]
      385 GETTABLEKS                       R14 R3 K60 ["FFlagAssistantAssetSearchInsertToolABTest"]
      387 JUMPIFNOT                        R14 ; [+7]
      388 GETTABLEKS                       R14 R3 K57 ["FFlagAssistantAssetSearchInsertTool"]
      390 JUMPIF                           R14 ; [+4]
      391 GETTABLEKS                       R14 R5 K59 ["AssetSearch"]
      393 GETTABLE                         R13 R6 R14
      394 JUMP                             ; [+1]
      395 LOADNIL                          R13
      396 SETTABLE                         R13 R11 R12
      397 SETTABLE                         R11 R9 R10
      398 NEWTABLE                         R10 1 0
      400 GETTABLEKS                       R11 R4 K72 ["Agent"]
      402 NEWTABLE                         R12 0 33
      404 GETTABLEKS                       R13 R5 K18 ["ExecuteLuau"]
      406 GETTABLEKS                       R14 R5 K19 ["FileSearch"]
      408 GETTABLEKS                       R15 R5 K20 ["GameTree"]
      410 GETTABLEKS                       R16 R5 K21 ["GrepSearch"]
      412 GETTABLEKS                       R17 R5 K62 ["CreatorStoreInsert"]
      414 GETTABLEKS                       R18 R5 K61 ["CreatorStoreSearch"]
      416 GETTABLEKS                       R19 R5 K58 ["AssetInsert"]
      418 GETTABLEKS                       R20 R5 K59 ["AssetSearch"]
      420 GETTABLEKS                       R21 R5 K22 ["InspectInstance"]
      422 GETTABLEKS                       R22 R5 K23 ["MaterialGen"]
      424 GETTABLEKS                       R23 R5 K28 ["MeshGen"]
      426 GETTABLEKS                       R24 R5 K29 ["MultiEdit"]
      428 GETTABLEKS                       R25 R5 K30 ["ReadFile"]
      430 GETTABLEKS                       R26 R5 K31 ["PrimitiveGen"]
      432 GETTABLEKS                       R27 R5 K45 ["Skill"]
      434 GETTABLEKS                       R28 R5 K34 ["Subagent"]
      436 SETLIST                          R12 R13 16 [1]
      438 GETTABLEKS                       R13 R5 K67 ["ScreenCapture"]
      440 GETTABLEKS                       R14 R5 K68 ["UploadImage"]
      442 GETTABLEKS                       R15 R5 K53 ["StartMultiPlayerAgents"]
      444 GETTABLEKS                       R16 R5 K54 ["StopMultiPlayerAgents"]
      446 GETTABLEKS                       R17 R5 K55 ["MultiPlayerAgentsCommunication"]
      448 GETTABLEKS                       R18 R5 K56 ["WaitForMultiPlayerAgentsCommunication"]
      450 GETTABLEKS                       R19 R5 K46 ["HttpGet"]
      452 GETTABLEKS                       R20 R5 K39 ["FromHistory"]
      454 GETTABLEKS                       R21 R5 K40 ["StartStopPlay"]
      456 GETTABLEKS                       R22 R5 K41 ["GetConsoleOutput"]
      458 GETTABLEKS                       R23 R5 K42 ["UserKeyboardInput"]
      460 GETTABLEKS                       R24 R5 K43 ["UserMouseInput"]
      462 GETTABLEKS                       R25 R5 K44 ["CharacterNavigation"]
      464 GETTABLEKS                       R26 R5 K66 ["VideoCapture"]
      466 GETTABLEKS                       R27 R5 K32 ["QuestionAnswer"]
      468 GETTABLEKS                       R28 R5 K36 ["CompleteTodoItems"]
      470 SETLIST                          R12 R13 16 [17]
      472 GETTABLEKS                       R13 R5 K49 ["JobWait"]
      474 SETLIST                          R12 R13 1 [33]
      476 SETTABLE                         R12 R10 R11
      477 GETTABLEKS                       R11 R3 K63 ["FFlagAssistantGetStudioState"]
      479 JUMPIFNOT                        R11 ; [+10]
      480 GETTABLEKS                       R13 R4 K72 ["Agent"]
      482 GETTABLE                         R12 R10 R13
      483 GETTABLEKS                       R13 R5 K64 ["GetStudioState"]
      485 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      487 GETIMPORT                        R11 K75 [table.insert]
      489 CALL                             R11 2 0
      490 GETTABLEKS                       R13 R4 K72 ["Agent"]
      492 GETTABLE                         R12 R10 R13
      493 GETTABLEKS                       R13 R5 K33 ["StoreImage"]
      495 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      497 GETIMPORT                        R11 K75 [table.insert]
      499 CALL                             R11 2 0
      500 GETTABLEKS                       R11 R3 K25 ["FFlagAssistantAnimationGenTool"]
      502 JUMPIFNOT                        R11 ; [+10]
      503 GETTABLEKS                       R13 R4 K72 ["Agent"]
      505 GETTABLE                         R12 R10 R13
      506 GETTABLEKS                       R13 R5 K24 ["AnimationGen"]
      508 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      510 GETIMPORT                        R11 K75 [table.insert]
      512 CALL                             R11 2 0
      513 GETTABLEKS                       R11 R3 K27 ["FFlagAssistantAvatarAutoSetupTool"]
      515 JUMPIFNOT                        R11 ; [+10]
      516 GETTABLEKS                       R13 R4 K72 ["Agent"]
      518 GETTABLE                         R12 R10 R13
      519 GETTABLEKS                       R13 R5 K26 ["AvatarAutoSetup"]
      521 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      523 GETIMPORT                        R11 K75 [table.insert]
      525 CALL                             R11 2 0
      526 GETTABLEKS                       R11 R3 K50 ["FFlagAssistantMigratePrimitiveGenTool"]
      528 JUMPIFNOT                        R11 ; [+10]
      529 GETTABLEKS                       R13 R4 K72 ["Agent"]
      531 GETTABLE                         R12 R10 R13
      532 GETTABLEKS                       R13 R5 K51 ["JobRun"]
      534 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      536 GETIMPORT                        R11 K75 [table.insert]
      538 CALL                             R11 2 0
      539 GETTABLEKS                       R11 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      541 JUMPIFNOT                        R11 ; [+10]
      542 GETTABLEKS                       R13 R4 K72 ["Agent"]
      544 GETTABLE                         R12 R10 R13
      545 GETTABLEKS                       R13 R5 K37 ["UpdatePlan"]
      547 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      549 GETIMPORT                        R11 K75 [table.insert]
      551 CALL                             R11 2 0
      552 GETTABLEKS                       R13 R4 K72 ["Agent"]
      554 GETTABLE                         R12 R10 R13
      555 GETTABLEKS                       R13 R5 K47 ["CreateSkill"]
      557 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      559 GETIMPORT                        R11 K75 [table.insert]
      561 CALL                             R11 2 0
      562 GETTABLEKS                       R13 R4 K72 ["Agent"]
      564 GETTABLE                         R12 R10 R13
      565 GETTABLEKS                       R13 R5 K48 ["EditSkill"]
      567 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      569 GETIMPORT                        R11 K75 [table.insert]
      571 CALL                             R11 2 0
      572 GETTABLEKS                       R11 R4 K76 ["Plan"]
      574 NEWTABLE                         R12 0 9
      576 GETTABLEKS                       R13 R5 K30 ["ReadFile"]
      578 GETTABLEKS                       R14 R5 K19 ["FileSearch"]
      580 GETTABLEKS                       R15 R5 K21 ["GrepSearch"]
      582 GETTABLEKS                       R16 R5 K20 ["GameTree"]
      584 GETTABLEKS                       R17 R5 K22 ["InspectInstance"]
      586 GETTABLEKS                       R18 R5 K67 ["ScreenCapture"]
      588 GETTABLEKS                       R19 R5 K32 ["QuestionAnswer"]
      590 GETTABLEKS                       R20 R5 K35 ["FinalizePlan"]
      592 GETTABLEKS                       R22 R3 K38 ["FFlagAssistantMarkdownPlanMode"]
      594 JUMPIFNOT                        R22 ; [+3]
      595 GETTABLEKS                       R21 R5 K37 ["UpdatePlan"]
      597 JUMP                             ; [+1]
      598 LOADNIL                          R21
      599 SETLIST                          R12 R13 9 [1]
      601 SETTABLE                         R12 R10 R11
      602 NEWTABLE                         R11 0 15
      604 GETTABLEKS                       R12 R5 K18 ["ExecuteLuau"]
      606 GETTABLEKS                       R13 R5 K19 ["FileSearch"]
      608 GETTABLEKS                       R14 R5 K20 ["GameTree"]
      610 GETTABLEKS                       R15 R5 K21 ["GrepSearch"]
      612 GETTABLEKS                       R16 R5 K22 ["InspectInstance"]
      614 GETTABLEKS                       R17 R5 K30 ["ReadFile"]
      616 GETTABLEKS                       R18 R5 K45 ["Skill"]
      618 GETTABLEKS                       R19 R5 K34 ["Subagent"]
      620 GETTABLEKS                       R20 R5 K67 ["ScreenCapture"]
      622 GETTABLEKS                       R21 R5 K41 ["GetConsoleOutput"]
      624 GETTABLEKS                       R22 R5 K42 ["UserKeyboardInput"]
      626 GETTABLEKS                       R23 R5 K43 ["UserMouseInput"]
      628 GETTABLEKS                       R24 R5 K44 ["CharacterNavigation"]
      630 GETTABLEKS                       R25 R5 K55 ["MultiPlayerAgentsCommunication"]
      632 GETTABLEKS                       R26 R5 K56 ["WaitForMultiPlayerAgentsCommunication"]
      634 SETLIST                          R11 R12 15 [1]
      636 GETTABLEKS                       R12 R3 K63 ["FFlagAssistantGetStudioState"]
      638 JUMPIFNOT                        R12 ; [+8]
      639 GETTABLEKS                       R14 R5 K64 ["GetStudioState"]
      641 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
      643 MOVE                             R13 R11
      644 GETIMPORT                        R12 K75 [table.insert]
      646 CALL                             R12 2 0
      647 DUPTABLE                         R12 K82 [{"DefaultTools", "ExperimentalTools", "ExperimentFeatureTools", "AssistantModeToolsAllowlist", "MultiPlayerTestTools"}]
      648 SETTABLEKS                       R7 R12 K77 ["DefaultTools"]
      650 SETTABLEKS                       R8 R12 K78 ["ExperimentalTools"]
      652 SETTABLEKS                       R9 R12 K79 ["ExperimentFeatureTools"]
      654 SETTABLEKS                       R10 R12 K80 ["AssistantModeToolsAllowlist"]
      656 SETTABLEKS                       R11 R12 K81 ["MultiPlayerTestTools"]
      658 RETURN                           R12 1
