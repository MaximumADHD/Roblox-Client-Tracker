PROTO_0:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^%s*([^=]+)%s*=%s*([^=]+)%s*$"]
        4 CALL                             R1 2 2
        5 JUMPIFNOT                        R1 ; [+30]
        6 JUMPIFNOT                        R2 ; [+29]
        7 GETIMPORT                        R3 K2 [string.match]
        9 MOVE                             R4 R1
       10 LOADK                            R5 K4 ["^%s*(.-)%s*$"]
       11 CALL                             R3 2 1
       12 MOVE                             R1 R3
       13 GETIMPORT                        R3 K2 [string.match]
       15 MOVE                             R4 R2
       16 LOADK                            R5 K4 ["^%s*(.-)%s*$"]
       17 CALL                             R3 2 1
       18 MOVE                             R2 R3
       19 JUMPIFEQKS                       R1 K5 [""] ; [+16]
       21 JUMPIFEQKS                       R2 K5 [""] ; [+14]
       23 GETUPVAL                         R4 0
       24 DUPTABLE                         R5 K8 [{"toolName", "widgetType"}]
       25 SETTABLEKS                       R1 R5 K6 ["toolName"]
       27 SETTABLEKS                       R2 R5 K7 ["widgetType"]
       29 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       31 GETIMPORT                        R3 K11 [table.insert]
       33 CALL                             R3 2 0
       34 LOADB                            R3 1
       35 RETURN                           R3 1
       36 LOADB                            R3 0
       37 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FStringAssistantToolWidgetMappings"]
        3 NEWTABLE                         R1 0 0
        5 JUMPIFNOTEQKS                    R0 K1 [""] ; [+2]
        7 RETURN                           R1 1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R1
       10 GETIMPORT                        R3 K4 [string.gmatch]
       12 MOVE                             R4 R0
       13 LOADK                            R5 K5 ["[^,]+"]
       14 CALL                             R3 2 3
       15 FORGPREP                         R3
       16 MOVE                             R8 R2
       17 MOVE                             R9 R6
       18 CALL                             R8 1 1
       19 JUMPIF                           R8 ; [+13]
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K6 ["FFlagDebugLogAssistantUI"]
       23 JUMPIFNOT                        R9 ; [+9]
       24 GETIMPORT                        R9 K8 [warn]
       26 LOADK                            R11 K9 ["[registerToolWidgetMappings] Invalid FString mapping format: \"%*\""]
       27 MOVE                             R13 R6
       28 NAMECALL                         R11 R11 K10 ["format"]
       30 CALL                             R11 2 1
       31 MOVE                             R10 R11
       32 CALL                             R9 1 0
       33 FORGLOOP                         R3 1 ; [-18]
       35 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["add"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["AnimationGen"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["Type"]
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 4
       12 GETTABLEKS                       R0 R0 K3 ["getIsAskInputToolEnabled"]
       14 CALL                             R0 0 1
       15 JUMPIFNOT                        R0 ; [+11]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K0 ["add"]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K4 ["AskInput"]
       22 GETUPVAL                         R2 5
       23 GETTABLEKS                       R2 R2 K2 ["Type"]
       25 GETUPVAL                         R3 3
       26 CALL                             R0 3 0
       27 GETUPVAL                         R0 0
       28 GETTABLEKS                       R0 R0 K0 ["add"]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K5 ["AssetInsert"]
       33 GETUPVAL                         R2 6
       34 GETTABLEKS                       R2 R2 K2 ["Type"]
       36 GETUPVAL                         R3 3
       37 CALL                             R0 3 0
       38 GETUPVAL                         R0 0
       39 GETTABLEKS                       R0 R0 K0 ["add"]
       41 GETUPVAL                         R1 1
       42 GETTABLEKS                       R1 R1 K6 ["AssetSearch"]
       44 GETUPVAL                         R2 7
       45 GETTABLEKS                       R2 R2 K2 ["Type"]
       47 GETUPVAL                         R3 3
       48 CALL                             R0 3 0
       49 GETUPVAL                         R0 0
       50 GETTABLEKS                       R0 R0 K0 ["add"]
       52 GETUPVAL                         R1 1
       53 GETTABLEKS                       R1 R1 K7 ["AvatarAutoSetup"]
       55 GETUPVAL                         R2 8
       56 GETTABLEKS                       R2 R2 K2 ["Type"]
       58 GETUPVAL                         R3 3
       59 CALL                             R0 3 0
       60 GETUPVAL                         R0 0
       61 GETTABLEKS                       R0 R0 K0 ["add"]
       63 GETUPVAL                         R1 1
       64 GETTABLEKS                       R1 R1 K8 ["CharacterNavigation"]
       66 LOADNIL                          R2
       67 GETUPVAL                         R3 3
       68 CALL                             R0 3 0
       69 GETUPVAL                         R0 0
       70 GETTABLEKS                       R0 R0 K0 ["add"]
       72 GETUPVAL                         R1 1
       73 GETTABLEKS                       R1 R1 K9 ["CompleteTodoItems"]
       75 GETUPVAL                         R2 9
       76 GETUPVAL                         R3 3
       77 CALL                             R0 3 0
       78 GETUPVAL                         R0 0
       79 GETTABLEKS                       R0 R0 K0 ["add"]
       81 GETUPVAL                         R1 1
       82 GETTABLEKS                       R1 R1 K10 ["CreateSkill"]
       84 GETUPVAL                         R2 10
       85 GETTABLEKS                       R2 R2 K2 ["Type"]
       87 GETUPVAL                         R3 3
       88 CALL                             R0 3 0
       89 GETUPVAL                         R0 0
       90 GETTABLEKS                       R0 R0 K0 ["add"]
       92 GETUPVAL                         R1 1
       93 GETTABLEKS                       R1 R1 K11 ["CreatorStoreInsert"]
       95 GETUPVAL                         R2 11
       96 GETTABLEKS                       R2 R2 K2 ["Type"]
       98 GETUPVAL                         R3 3
       99 CALL                             R0 3 0
      100 GETUPVAL                         R0 0
      101 GETTABLEKS                       R0 R0 K0 ["add"]
      103 GETUPVAL                         R1 1
      104 GETTABLEKS                       R1 R1 K12 ["CreatorStoreSearch"]
      106 LOADNIL                          R2
      107 GETUPVAL                         R3 3
      108 CALL                             R0 3 0
      109 GETUPVAL                         R0 0
      110 GETTABLEKS                       R0 R0 K0 ["add"]
      112 GETUPVAL                         R1 1
      113 GETTABLEKS                       R1 R1 K13 ["EditSkill"]
      115 GETUPVAL                         R2 10
      116 GETTABLEKS                       R2 R2 K2 ["Type"]
      118 GETUPVAL                         R3 3
      119 CALL                             R0 3 0
      120 GETUPVAL                         R0 0
      121 GETTABLEKS                       R0 R0 K0 ["add"]
      123 GETUPVAL                         R1 1
      124 GETTABLEKS                       R1 R1 K14 ["ExecuteLuau"]
      126 GETUPVAL                         R2 12
      127 GETTABLEKS                       R2 R2 K2 ["Type"]
      129 GETUPVAL                         R3 3
      130 CALL                             R0 3 0
      131 GETUPVAL                         R0 0
      132 GETTABLEKS                       R0 R0 K0 ["add"]
      134 GETUPVAL                         R1 1
      135 GETTABLEKS                       R1 R1 K15 ["FileSearch"]
      137 GETUPVAL                         R2 13
      138 GETTABLEKS                       R2 R2 K2 ["Type"]
      140 GETUPVAL                         R3 3
      141 CALL                             R0 3 0
      142 GETUPVAL                         R0 0
      143 GETTABLEKS                       R0 R0 K0 ["add"]
      145 GETUPVAL                         R1 1
      146 GETTABLEKS                       R1 R1 K16 ["FinalizePlan"]
      148 GETUPVAL                         R2 14
      149 GETTABLEKS                       R2 R2 K2 ["Type"]
      151 GETUPVAL                         R3 3
      152 CALL                             R0 3 0
      153 GETUPVAL                         R0 0
      154 GETTABLEKS                       R0 R0 K0 ["add"]
      156 GETUPVAL                         R1 1
      157 GETTABLEKS                       R1 R1 K17 ["FromHistory"]
      159 GETUPVAL                         R2 15
      160 GETTABLEKS                       R2 R2 K2 ["Type"]
      162 GETUPVAL                         R3 3
      163 CALL                             R0 3 0
      164 GETUPVAL                         R0 0
      165 GETTABLEKS                       R0 R0 K0 ["add"]
      167 GETUPVAL                         R1 1
      168 GETTABLEKS                       R1 R1 K18 ["GameTree"]
      170 GETUPVAL                         R2 16
      171 GETTABLEKS                       R2 R2 K2 ["Type"]
      173 GETUPVAL                         R3 3
      174 CALL                             R0 3 0
      175 GETUPVAL                         R0 0
      176 GETTABLEKS                       R0 R0 K0 ["add"]
      178 GETUPVAL                         R1 1
      179 GETTABLEKS                       R1 R1 K19 ["GetConsoleOutput"]
      181 LOADNIL                          R2
      182 GETUPVAL                         R3 3
      183 CALL                             R0 3 0
      184 GETUPVAL                         R0 0
      185 GETTABLEKS                       R0 R0 K0 ["add"]
      187 GETUPVAL                         R1 1
      188 GETTABLEKS                       R1 R1 K20 ["GetStudioState"]
      190 LOADNIL                          R2
      191 GETUPVAL                         R3 3
      192 CALL                             R0 3 0
      193 GETUPVAL                         R0 0
      194 GETTABLEKS                       R0 R0 K0 ["add"]
      196 GETUPVAL                         R1 1
      197 GETTABLEKS                       R1 R1 K21 ["GrepSearch"]
      199 GETUPVAL                         R2 17
      200 GETTABLEKS                       R2 R2 K2 ["Type"]
      202 GETUPVAL                         R3 3
      203 CALL                             R0 3 0
      204 GETUPVAL                         R0 0
      205 GETTABLEKS                       R0 R0 K0 ["add"]
      207 GETUPVAL                         R1 1
      208 GETTABLEKS                       R1 R1 K22 ["HttpGet"]
      210 GETUPVAL                         R2 18
      211 GETTABLEKS                       R2 R2 K2 ["Type"]
      213 GETUPVAL                         R3 3
      214 CALL                             R0 3 0
      215 GETUPVAL                         R0 0
      216 GETTABLEKS                       R0 R0 K0 ["add"]
      218 GETUPVAL                         R1 1
      219 GETTABLEKS                       R1 R1 K23 ["InspectInstance"]
      221 GETUPVAL                         R2 19
      222 GETTABLEKS                       R2 R2 K2 ["Type"]
      224 GETUPVAL                         R3 3
      225 CALL                             R0 3 0
      226 GETUPVAL                         R0 0
      227 GETTABLEKS                       R0 R0 K0 ["add"]
      229 GETUPVAL                         R1 1
      230 GETTABLEKS                       R1 R1 K24 ["JobRun"]
      232 GETUPVAL                         R2 20
      233 GETTABLEKS                       R2 R2 K2 ["Type"]
      235 GETUPVAL                         R3 3
      236 CALL                             R0 3 0
      237 GETUPVAL                         R0 0
      238 GETTABLEKS                       R0 R0 K0 ["add"]
      240 GETUPVAL                         R1 1
      241 GETTABLEKS                       R1 R1 K25 ["JobWait"]
      243 GETUPVAL                         R2 21
      244 GETTABLEKS                       R2 R2 K2 ["Type"]
      246 GETUPVAL                         R3 3
      247 CALL                             R0 3 0
      248 GETUPVAL                         R0 0
      249 GETTABLEKS                       R0 R0 K0 ["add"]
      251 GETUPVAL                         R1 1
      252 GETTABLEKS                       R1 R1 K26 ["MaterialGen"]
      254 GETUPVAL                         R2 22
      255 GETTABLEKS                       R2 R2 K2 ["Type"]
      257 GETUPVAL                         R3 3
      258 CALL                             R0 3 0
      259 GETUPVAL                         R0 0
      260 GETTABLEKS                       R0 R0 K0 ["add"]
      262 GETUPVAL                         R1 1
      263 GETTABLEKS                       R1 R1 K27 ["MeshGen"]
      265 GETUPVAL                         R2 23
      266 GETTABLEKS                       R2 R2 K2 ["Type"]
      268 GETUPVAL                         R3 3
      269 CALL                             R0 3 0
      270 GETUPVAL                         R0 0
      271 GETTABLEKS                       R0 R0 K0 ["add"]
      273 GETUPVAL                         R1 1
      274 GETTABLEKS                       R1 R1 K28 ["SegmentMesh"]
      276 GETUPVAL                         R3 24
      277 GETTABLEKS                       R3 R3 K29 ["FFlagAssistantSegmentMeshTool"]
      279 JUMPIFNOT                        R3 ; [+4]
      280 GETUPVAL                         R2 25
      281 GETTABLEKS                       R2 R2 K2 ["Type"]
      283 JUMP                             ; [+1]
      284 LOADNIL                          R2
      285 GETUPVAL                         R3 3
      286 CALL                             R0 3 0
      287 GETUPVAL                         R0 0
      288 GETTABLEKS                       R0 R0 K0 ["add"]
      290 GETUPVAL                         R1 1
      291 GETTABLEKS                       R1 R1 K30 ["TextureGen"]
      293 GETUPVAL                         R3 24
      294 GETTABLEKS                       R3 R3 K31 ["FFlagAssistantTextureGenTool"]
      296 JUMPIFNOT                        R3 ; [+4]
      297 GETUPVAL                         R2 26
      298 GETTABLEKS                       R2 R2 K2 ["Type"]
      300 JUMP                             ; [+1]
      301 LOADNIL                          R2
      302 GETUPVAL                         R3 3
      303 CALL                             R0 3 0
      304 GETUPVAL                         R0 0
      305 GETTABLEKS                       R0 R0 K0 ["add"]
      307 GETUPVAL                         R1 1
      308 GETTABLEKS                       R1 R1 K32 ["MultiEdit"]
      310 LOADNIL                          R2
      311 GETUPVAL                         R3 3
      312 CALL                             R0 3 0
      313 GETUPVAL                         R0 0
      314 GETTABLEKS                       R0 R0 K0 ["add"]
      316 GETUPVAL                         R1 1
      317 GETTABLEKS                       R1 R1 K33 ["MultiPlayerAgentsCommunication"]
      319 LOADNIL                          R2
      320 GETUPVAL                         R3 3
      321 CALL                             R0 3 0
      322 GETUPVAL                         R0 0
      323 GETTABLEKS                       R0 R0 K0 ["add"]
      325 GETUPVAL                         R1 1
      326 GETTABLEKS                       R1 R1 K34 ["PlaytestLook"]
      328 LOADNIL                          R2
      329 GETUPVAL                         R3 3
      330 CALL                             R0 3 0
      331 GETUPVAL                         R0 0
      332 GETTABLEKS                       R0 R0 K0 ["add"]
      334 GETUPVAL                         R1 1
      335 GETTABLEKS                       R1 R1 K35 ["PrimitiveGen"]
      337 GETUPVAL                         R2 27
      338 GETTABLEKS                       R2 R2 K2 ["Type"]
      340 GETUPVAL                         R3 3
      341 CALL                             R0 3 0
      342 GETUPVAL                         R0 0
      343 GETTABLEKS                       R0 R0 K0 ["add"]
      345 GETUPVAL                         R1 1
      346 GETTABLEKS                       R1 R1 K36 ["QuestionAnswer"]
      348 GETUPVAL                         R2 28
      349 GETTABLEKS                       R2 R2 K2 ["Type"]
      351 GETUPVAL                         R3 3
      352 CALL                             R0 3 0
      353 GETUPVAL                         R0 0
      354 GETTABLEKS                       R0 R0 K0 ["add"]
      356 GETUPVAL                         R1 1
      357 GETTABLEKS                       R1 R1 K37 ["ReadFile"]
      359 GETUPVAL                         R2 29
      360 GETTABLEKS                       R2 R2 K2 ["Type"]
      362 GETUPVAL                         R3 3
      363 CALL                             R0 3 0
      364 GETUPVAL                         R0 0
      365 GETTABLEKS                       R0 R0 K0 ["add"]
      367 GETUPVAL                         R1 1
      368 GETTABLEKS                       R1 R1 K38 ["ScreenCapture"]
      370 GETUPVAL                         R2 30
      371 GETTABLEKS                       R2 R2 K2 ["Type"]
      373 GETUPVAL                         R3 3
      374 CALL                             R0 3 0
      375 GETUPVAL                         R0 0
      376 GETTABLEKS                       R0 R0 K0 ["add"]
      378 GETUPVAL                         R1 1
      379 GETTABLEKS                       R1 R1 K39 ["Skill"]
      381 GETUPVAL                         R2 31
      382 GETTABLEKS                       R2 R2 K2 ["Type"]
      384 GETUPVAL                         R3 3
      385 CALL                             R0 3 0
      386 GETUPVAL                         R0 0
      387 GETTABLEKS                       R0 R0 K0 ["add"]
      389 GETUPVAL                         R1 1
      390 GETTABLEKS                       R1 R1 K40 ["StartMultiPlayerAgents"]
      392 LOADNIL                          R2
      393 GETUPVAL                         R3 3
      394 CALL                             R0 3 0
      395 GETUPVAL                         R0 0
      396 GETTABLEKS                       R0 R0 K0 ["add"]
      398 GETUPVAL                         R1 1
      399 GETTABLEKS                       R1 R1 K41 ["StartStopPlay"]
      401 LOADNIL                          R2
      402 GETUPVAL                         R3 3
      403 CALL                             R0 3 0
      404 GETUPVAL                         R0 0
      405 GETTABLEKS                       R0 R0 K0 ["add"]
      407 GETUPVAL                         R1 1
      408 GETTABLEKS                       R1 R1 K42 ["StopMultiPlayerAgents"]
      410 LOADNIL                          R2
      411 GETUPVAL                         R3 3
      412 CALL                             R0 3 0
      413 GETUPVAL                         R0 0
      414 GETTABLEKS                       R0 R0 K0 ["add"]
      416 GETUPVAL                         R1 1
      417 GETTABLEKS                       R1 R1 K43 ["StoreImage"]
      419 LOADNIL                          R2
      420 GETUPVAL                         R3 3
      421 CALL                             R0 3 0
      422 GETUPVAL                         R0 0
      423 GETTABLEKS                       R0 R0 K0 ["add"]
      425 GETUPVAL                         R1 1
      426 GETTABLEKS                       R1 R1 K44 ["Subagent"]
      428 GETUPVAL                         R2 32
      429 GETTABLEKS                       R2 R2 K2 ["Type"]
      431 GETUPVAL                         R3 3
      432 CALL                             R0 3 0
      433 GETUPVAL                         R0 0
      434 GETTABLEKS                       R0 R0 K0 ["add"]
      436 GETUPVAL                         R1 1
      437 GETTABLEKS                       R1 R1 K45 ["UpdatePlan"]
      439 GETUPVAL                         R2 9
      440 GETUPVAL                         R3 3
      441 CALL                             R0 3 0
      442 GETUPVAL                         R0 0
      443 GETTABLEKS                       R0 R0 K0 ["add"]
      445 GETUPVAL                         R1 1
      446 GETTABLEKS                       R1 R1 K46 ["UploadImage"]
      448 LOADNIL                          R2
      449 GETUPVAL                         R3 3
      450 CALL                             R0 3 0
      451 GETUPVAL                         R0 0
      452 GETTABLEKS                       R0 R0 K0 ["add"]
      454 GETUPVAL                         R1 1
      455 GETTABLEKS                       R1 R1 K47 ["UserKeyboardInput"]
      457 LOADNIL                          R2
      458 GETUPVAL                         R3 3
      459 CALL                             R0 3 0
      460 GETUPVAL                         R0 0
      461 GETTABLEKS                       R0 R0 K0 ["add"]
      463 GETUPVAL                         R1 1
      464 GETTABLEKS                       R1 R1 K48 ["UserMouseInput"]
      466 LOADNIL                          R2
      467 GETUPVAL                         R3 3
      468 CALL                             R0 3 0
      469 GETUPVAL                         R0 0
      470 GETTABLEKS                       R0 R0 K0 ["add"]
      472 GETUPVAL                         R1 1
      473 GETTABLEKS                       R1 R1 K49 ["VideoCapture"]
      475 LOADNIL                          R2
      476 GETUPVAL                         R3 3
      477 CALL                             R0 3 0
      478 GETUPVAL                         R0 0
      479 GETTABLEKS                       R0 R0 K0 ["add"]
      481 GETUPVAL                         R1 1
      482 GETTABLEKS                       R1 R1 K50 ["WaitForMultiPlayerAgentsCommunication"]
      484 LOADNIL                          R2
      485 GETUPVAL                         R3 3
      486 CALL                             R0 3 0
      487 GETUPVAL                         R0 0
      488 GETTABLEKS                       R0 R0 K0 ["add"]
      490 GETUPVAL                         R1 1
      491 GETTABLEKS                       R1 R1 K51 ["ListRobloxStudios"]
      493 GETUPVAL                         R2 9
      494 GETUPVAL                         R3 3
      495 CALL                             R0 3 0
      496 GETUPVAL                         R0 24
      497 GETTABLEKS                       R0 R0 K52 ["FFlagAssistantUseRemoteService"]
      499 JUMPIFNOT                        R0 ; [+11]
      500 GETUPVAL                         R0 0
      501 GETTABLEKS                       R0 R0 K0 ["add"]
      503 GETUPVAL                         R1 1
      504 GETTABLEKS                       R1 R1 K53 ["CloudExecuteLuau"]
      506 GETUPVAL                         R2 12
      507 GETTABLEKS                       R2 R2 K2 ["Type"]
      509 GETUPVAL                         R3 3
      510 CALL                             R0 3 0
      511 GETUPVAL                         R0 33
      512 CALL                             R0 0 1
      513 LENGTH                           R1 R0
      514 LOADN                            R2 0
      515 JUMPIFNOTLT                      R2 R1 ; [+14]
      517 GETUPVAL                         R1 24
      518 GETTABLEKS                       R1 R1 K54 ["FFlagDebugLogAssistantUI"]
      520 JUMPIFNOT                        R1 ; [+9]
      521 GETIMPORT                        R1 K56 [print]
      523 LOADK                            R3 K57 ["[registerToolWidgetMappings] Applying %* FString mapping(s)"]
      524 LENGTH                           R5 R0
      525 NAMECALL                         R3 R3 K58 ["format"]
      527 CALL                             R3 2 1
      528 MOVE                             R2 R3
      529 CALL                             R1 1 0
      530 MOVE                             R1 R0
      531 LOADNIL                          R2
      532 LOADNIL                          R3
      533 FORGPREP                         R1
      534 GETUPVAL                         R6 0
      535 GETTABLEKS                       R6 R6 K0 ["add"]
      537 GETTABLEKS                       R7 R5 K59 ["toolName"]
      539 GETTABLEKS                       R8 R5 K60 ["widgetType"]
      541 GETUPVAL                         R9 34
      542 GETTABLEKS                       R9 R9 K61 ["FString"]
      544 CALL                             R6 3 0
      545 FORGLOOP                         R1 2 ; [-12]
      547 GETUPVAL                         R1 24
      548 GETTABLEKS                       R1 R1 K54 ["FFlagDebugLogAssistantUI"]
      550 JUMPIFNOT                        R1 ; [+49]
      551 GETUPVAL                         R1 1
      552 LOADNIL                          R2
      553 LOADNIL                          R3
      554 FORGPREP                         R1
      555 FASTCALL1                        TYPEOF R5 ; [+3]
      556 MOVE                             R7 R5
      557 GETIMPORT                        R6 K63 [typeof]
      559 CALL                             R6 1 1
      560 JUMPIFNOTEQKS                    R6 K64 ["string"] ; [+37]
      562 GETUPVAL                         R6 24
      563 GETTABLEKS                       R6 R6 K52 ["FFlagAssistantUseRemoteService"]
      565 JUMPIF                           R6 ; [+6]
      566 GETUPVAL                         R6 35
      567 GETTABLEKS                       R6 R6 K65 ["isCloudTool"]
      569 MOVE                             R7 R5
      570 CALL                             R6 1 1
      571 JUMPIF                           R6 ; [+26]
      572 GETUPVAL                         R6 1
      573 GETTABLEKS                       R6 R6 K4 ["AskInput"]
      575 JUMPIFNOTEQ                      R5 R6 ; [+6]
      577 GETUPVAL                         R6 4
      578 GETTABLEKS                       R6 R6 K3 ["getIsAskInputToolEnabled"]
      580 CALL                             R6 0 1
      581 JUMPIFNOT                        R6 ; [+16]
      582 GETUPVAL                         R6 0
      583 GETTABLEKS                       R6 R6 K66 ["get"]
      585 MOVE                             R7 R5
      586 CALL                             R6 1 1
      587 JUMPIF                           R6 ; [+10]
      588 GETIMPORT                        R6 K68 [error]
      590 LOADK                            R8 K69 ["[registerToolWidgetMappings] No widget mapping found for tool \"%*\""]
      591 MOVE                             R10 R5
      592 NAMECALL                         R8 R8 K58 ["format"]
      594 CALL                             R8 2 1
      595 MOVE                             R7 R8
      596 LOADN                            R8 0
      597 CALL                             R6 2 0
      598 FORGLOOP                         R1 2 ; [-44]
      600 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["FlagUtils"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Flags"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R1 K10 ["Engine"]
       26 GETTABLEKS                       R4 R4 K11 ["Providers"]
       28 GETTABLEKS                       R4 R4 K12 ["ToolNames"]
       30 GETTABLEKS                       R5 R1 K13 ["ToolNaming"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K14 ["Util"]
       36 GETTABLEKS                       R7 R7 K15 ["ContentWidgets"]
       38 GETTABLEKS                       R7 R7 K16 ["ToolWidgetMappingRegistry"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K17 ["Components"]
       45 GETTABLEKS                       R8 R8 K15 ["ContentWidgets"]
       47 GETTABLEKS                       R8 R8 K18 ["AnimationGenContentWidget"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K17 ["Components"]
       54 GETTABLEKS                       R9 R9 K15 ["ContentWidgets"]
       56 GETTABLEKS                       R9 R9 K19 ["AskInputContentWidget"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K17 ["Components"]
       63 GETTABLEKS                       R10 R10 K15 ["ContentWidgets"]
       65 GETTABLEKS                       R10 R10 K20 ["AssetInsertContentWidget"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K17 ["Components"]
       72 GETTABLEKS                       R11 R11 K15 ["ContentWidgets"]
       74 GETTABLEKS                       R11 R11 K21 ["AssetSearchContentWidget"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K17 ["Components"]
       81 GETTABLEKS                       R12 R12 K15 ["ContentWidgets"]
       83 GETTABLEKS                       R12 R12 K22 ["AvatarAutoSetupContentWidget"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K17 ["Components"]
       90 GETTABLEKS                       R13 R13 K15 ["ContentWidgets"]
       92 GETTABLEKS                       R13 R13 K23 ["CreateSkillContentWidget"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K17 ["Components"]
       99 GETTABLEKS                       R14 R14 K15 ["ContentWidgets"]
      101 GETTABLEKS                       R14 R14 K24 ["CreatorStoreInsertContentWidget"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K17 ["Components"]
      108 GETTABLEKS                       R15 R15 K15 ["ContentWidgets"]
      110 GETTABLEKS                       R15 R15 K25 ["FileSearchContentWidget"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K5 [require]
      115 GETTABLEKS                       R16 R0 K17 ["Components"]
      117 GETTABLEKS                       R16 R16 K15 ["ContentWidgets"]
      119 GETTABLEKS                       R16 R16 K26 ["FinalizePlanContentWidget"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K5 [require]
      124 GETTABLEKS                       R17 R0 K17 ["Components"]
      126 GETTABLEKS                       R17 R17 K15 ["ContentWidgets"]
      128 GETTABLEKS                       R17 R17 K27 ["FromHistoryContentWidget"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K5 [require]
      133 GETTABLEKS                       R18 R0 K17 ["Components"]
      135 GETTABLEKS                       R18 R18 K15 ["ContentWidgets"]
      137 GETTABLEKS                       R18 R18 K28 ["GameTreeContentWidget"]
      139 CALL                             R17 1 1
      140 GETIMPORT                        R18 K5 [require]
      142 GETTABLEKS                       R19 R0 K17 ["Components"]
      144 GETTABLEKS                       R19 R19 K15 ["ContentWidgets"]
      146 GETTABLEKS                       R19 R19 K29 ["GrepSearchContentWidget"]
      148 CALL                             R18 1 1
      149 GETIMPORT                        R19 K5 [require]
      151 GETTABLEKS                       R20 R0 K17 ["Components"]
      153 GETTABLEKS                       R20 R20 K15 ["ContentWidgets"]
      155 GETTABLEKS                       R20 R20 K30 ["HttpGetContentWidget"]
      157 CALL                             R19 1 1
      158 GETIMPORT                        R20 K5 [require]
      160 GETTABLEKS                       R21 R0 K17 ["Components"]
      162 GETTABLEKS                       R21 R21 K15 ["ContentWidgets"]
      164 GETTABLEKS                       R21 R21 K31 ["InspectInstanceContentWidget"]
      166 CALL                             R20 1 1
      167 GETIMPORT                        R21 K5 [require]
      169 GETTABLEKS                       R22 R0 K17 ["Components"]
      171 GETTABLEKS                       R22 R22 K15 ["ContentWidgets"]
      173 GETTABLEKS                       R22 R22 K32 ["JobRunContentWidget"]
      175 CALL                             R21 1 1
      176 GETIMPORT                        R22 K5 [require]
      178 GETTABLEKS                       R23 R0 K17 ["Components"]
      180 GETTABLEKS                       R23 R23 K15 ["ContentWidgets"]
      182 GETTABLEKS                       R23 R23 K33 ["JobWaitContentWidget"]
      184 CALL                             R22 1 1
      185 GETIMPORT                        R23 K5 [require]
      187 GETTABLEKS                       R24 R0 K17 ["Components"]
      189 GETTABLEKS                       R24 R24 K15 ["ContentWidgets"]
      191 GETTABLEKS                       R24 R24 K34 ["MaterialGenContentWidget"]
      193 CALL                             R23 1 1
      194 GETIMPORT                        R24 K5 [require]
      196 GETTABLEKS                       R25 R0 K17 ["Components"]
      198 GETTABLEKS                       R25 R25 K15 ["ContentWidgets"]
      200 GETTABLEKS                       R25 R25 K35 ["MeshGenContentWidget"]
      202 CALL                             R24 1 1
      203 GETIMPORT                        R25 K5 [require]
      205 GETTABLEKS                       R26 R0 K17 ["Components"]
      207 GETTABLEKS                       R26 R26 K15 ["ContentWidgets"]
      209 GETTABLEKS                       R26 R26 K36 ["PrimitiveGenContentWidget"]
      211 CALL                             R25 1 1
      212 GETIMPORT                        R26 K5 [require]
      214 GETTABLEKS                       R27 R0 K17 ["Components"]
      216 GETTABLEKS                       R27 R27 K15 ["ContentWidgets"]
      218 GETTABLEKS                       R27 R27 K37 ["QuestionAnswerContentWidget"]
      220 CALL                             R26 1 1
      221 GETIMPORT                        R27 K5 [require]
      223 GETTABLEKS                       R28 R0 K17 ["Components"]
      225 GETTABLEKS                       R28 R28 K15 ["ContentWidgets"]
      227 GETTABLEKS                       R28 R28 K38 ["ReadFileContentWidget"]
      229 CALL                             R27 1 1
      230 GETIMPORT                        R28 K5 [require]
      232 GETTABLEKS                       R29 R0 K17 ["Components"]
      234 GETTABLEKS                       R29 R29 K15 ["ContentWidgets"]
      236 GETTABLEKS                       R29 R29 K39 ["RunCodeContentWidget"]
      238 CALL                             R28 1 1
      239 GETIMPORT                        R29 K5 [require]
      241 GETTABLEKS                       R30 R0 K17 ["Components"]
      243 GETTABLEKS                       R30 R30 K15 ["ContentWidgets"]
      245 GETTABLEKS                       R30 R30 K40 ["ScreenCaptureContentWidget"]
      247 CALL                             R29 1 1
      248 GETIMPORT                        R30 K5 [require]
      250 GETTABLEKS                       R31 R0 K17 ["Components"]
      252 GETTABLEKS                       R31 R31 K15 ["ContentWidgets"]
      254 GETTABLEKS                       R31 R31 K41 ["SegmentMeshContentWidget"]
      256 CALL                             R30 1 1
      257 GETIMPORT                        R31 K5 [require]
      259 GETTABLEKS                       R32 R0 K17 ["Components"]
      261 GETTABLEKS                       R32 R32 K15 ["ContentWidgets"]
      263 GETTABLEKS                       R32 R32 K42 ["SkillContentWidget"]
      265 CALL                             R31 1 1
      266 GETIMPORT                        R32 K5 [require]
      268 GETTABLEKS                       R33 R0 K17 ["Components"]
      270 GETTABLEKS                       R33 R33 K15 ["ContentWidgets"]
      272 GETTABLEKS                       R33 R33 K43 ["SubagentContentWidget"]
      274 CALL                             R32 1 1
      275 GETIMPORT                        R33 K5 [require]
      277 GETTABLEKS                       R34 R0 K17 ["Components"]
      279 GETTABLEKS                       R34 R34 K15 ["ContentWidgets"]
      281 GETTABLEKS                       R34 R34 K44 ["TextureGenContentWidget"]
      283 CALL                             R33 1 1
      284 GETTABLEKS                       R34 R6 K45 ["MappingSource"]
      286 GETTABLEKS                       R35 R34 K46 ["Hardcoded"]
      288 GETTABLEKS                       R36 R6 K47 ["None"]
      290 DUPCLOSURE                       R37 K48 [PROTO_1]
      291 CAPTURE                          VAL R3
      292 DUPCLOSURE                       R38 K49 [PROTO_2]
      293 CAPTURE                          VAL R6
      294 CAPTURE                          VAL R4
      295 CAPTURE                          VAL R7
      296 CAPTURE                          VAL R35
      297 CAPTURE                          VAL R2
      298 CAPTURE                          VAL R8
      299 CAPTURE                          VAL R9
      300 CAPTURE                          VAL R10
      301 CAPTURE                          VAL R11
      302 CAPTURE                          VAL R36
      303 CAPTURE                          VAL R12
      304 CAPTURE                          VAL R13
      305 CAPTURE                          VAL R28
      306 CAPTURE                          VAL R14
      307 CAPTURE                          VAL R15
      308 CAPTURE                          VAL R16
      309 CAPTURE                          VAL R17
      310 CAPTURE                          VAL R18
      311 CAPTURE                          VAL R19
      312 CAPTURE                          VAL R20
      313 CAPTURE                          VAL R21
      314 CAPTURE                          VAL R22
      315 CAPTURE                          VAL R23
      316 CAPTURE                          VAL R24
      317 CAPTURE                          VAL R3
      318 CAPTURE                          VAL R30
      319 CAPTURE                          VAL R33
      320 CAPTURE                          VAL R25
      321 CAPTURE                          VAL R26
      322 CAPTURE                          VAL R27
      323 CAPTURE                          VAL R29
      324 CAPTURE                          VAL R31
      325 CAPTURE                          VAL R32
      326 CAPTURE                          VAL R37
      327 CAPTURE                          VAL R34
      328 CAPTURE                          VAL R5
      329 RETURN                           R38 1
