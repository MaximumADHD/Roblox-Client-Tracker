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
       12 GETTABLEKS                       R0 R0 K3 ["FFlagAssistantAskInputTool"]
       14 JUMPIFNOT                        R0 ; [+11]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K0 ["add"]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K4 ["AskInput"]
       21 GETUPVAL                         R2 5
       22 GETTABLEKS                       R2 R2 K2 ["Type"]
       24 GETUPVAL                         R3 3
       25 CALL                             R0 3 0
       26 GETUPVAL                         R0 0
       27 GETTABLEKS                       R0 R0 K0 ["add"]
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R1 R1 K5 ["AssetInsert"]
       32 GETUPVAL                         R2 6
       33 GETTABLEKS                       R2 R2 K2 ["Type"]
       35 GETUPVAL                         R3 3
       36 CALL                             R0 3 0
       37 GETUPVAL                         R0 0
       38 GETTABLEKS                       R0 R0 K0 ["add"]
       40 GETUPVAL                         R1 1
       41 GETTABLEKS                       R1 R1 K6 ["AssetSearch"]
       43 GETUPVAL                         R2 7
       44 GETTABLEKS                       R2 R2 K2 ["Type"]
       46 GETUPVAL                         R3 3
       47 CALL                             R0 3 0
       48 GETUPVAL                         R0 0
       49 GETTABLEKS                       R0 R0 K0 ["add"]
       51 GETUPVAL                         R1 1
       52 GETTABLEKS                       R1 R1 K7 ["AvatarAutoSetup"]
       54 GETUPVAL                         R2 8
       55 GETTABLEKS                       R2 R2 K2 ["Type"]
       57 GETUPVAL                         R3 3
       58 CALL                             R0 3 0
       59 GETUPVAL                         R0 0
       60 GETTABLEKS                       R0 R0 K0 ["add"]
       62 GETUPVAL                         R1 1
       63 GETTABLEKS                       R1 R1 K8 ["CharacterNavigation"]
       65 LOADNIL                          R2
       66 GETUPVAL                         R3 3
       67 CALL                             R0 3 0
       68 GETUPVAL                         R0 0
       69 GETTABLEKS                       R0 R0 K0 ["add"]
       71 GETUPVAL                         R1 1
       72 GETTABLEKS                       R1 R1 K9 ["CompleteTodoItems"]
       74 GETUPVAL                         R2 9
       75 GETUPVAL                         R3 3
       76 CALL                             R0 3 0
       77 GETUPVAL                         R0 0
       78 GETTABLEKS                       R0 R0 K0 ["add"]
       80 GETUPVAL                         R1 1
       81 GETTABLEKS                       R1 R1 K10 ["CreateSkill"]
       83 GETUPVAL                         R2 10
       84 GETTABLEKS                       R2 R2 K2 ["Type"]
       86 GETUPVAL                         R3 3
       87 CALL                             R0 3 0
       88 GETUPVAL                         R0 0
       89 GETTABLEKS                       R0 R0 K0 ["add"]
       91 GETUPVAL                         R1 1
       92 GETTABLEKS                       R1 R1 K11 ["CreatorStoreInsert"]
       94 GETUPVAL                         R2 11
       95 GETTABLEKS                       R2 R2 K2 ["Type"]
       97 GETUPVAL                         R3 3
       98 CALL                             R0 3 0
       99 GETUPVAL                         R0 0
      100 GETTABLEKS                       R0 R0 K0 ["add"]
      102 GETUPVAL                         R1 1
      103 GETTABLEKS                       R1 R1 K12 ["CreatorStoreSearch"]
      105 LOADNIL                          R2
      106 GETUPVAL                         R3 3
      107 CALL                             R0 3 0
      108 GETUPVAL                         R0 0
      109 GETTABLEKS                       R0 R0 K0 ["add"]
      111 GETUPVAL                         R1 1
      112 GETTABLEKS                       R1 R1 K13 ["EditSkill"]
      114 GETUPVAL                         R2 10
      115 GETTABLEKS                       R2 R2 K2 ["Type"]
      117 GETUPVAL                         R3 3
      118 CALL                             R0 3 0
      119 GETUPVAL                         R0 0
      120 GETTABLEKS                       R0 R0 K0 ["add"]
      122 GETUPVAL                         R1 1
      123 GETTABLEKS                       R1 R1 K14 ["ExecuteLuau"]
      125 GETUPVAL                         R2 12
      126 GETTABLEKS                       R2 R2 K2 ["Type"]
      128 GETUPVAL                         R3 3
      129 CALL                             R0 3 0
      130 GETUPVAL                         R0 0
      131 GETTABLEKS                       R0 R0 K0 ["add"]
      133 GETUPVAL                         R1 1
      134 GETTABLEKS                       R1 R1 K15 ["FileSearch"]
      136 GETUPVAL                         R2 13
      137 GETTABLEKS                       R2 R2 K2 ["Type"]
      139 GETUPVAL                         R3 3
      140 CALL                             R0 3 0
      141 GETUPVAL                         R0 0
      142 GETTABLEKS                       R0 R0 K0 ["add"]
      144 GETUPVAL                         R1 1
      145 GETTABLEKS                       R1 R1 K16 ["FinalizePlan"]
      147 GETUPVAL                         R2 14
      148 GETTABLEKS                       R2 R2 K2 ["Type"]
      150 GETUPVAL                         R3 3
      151 CALL                             R0 3 0
      152 GETUPVAL                         R0 0
      153 GETTABLEKS                       R0 R0 K0 ["add"]
      155 GETUPVAL                         R1 1
      156 GETTABLEKS                       R1 R1 K17 ["FromHistory"]
      158 GETUPVAL                         R2 15
      159 GETTABLEKS                       R2 R2 K2 ["Type"]
      161 GETUPVAL                         R3 3
      162 CALL                             R0 3 0
      163 GETUPVAL                         R0 0
      164 GETTABLEKS                       R0 R0 K0 ["add"]
      166 GETUPVAL                         R1 1
      167 GETTABLEKS                       R1 R1 K18 ["GameTree"]
      169 GETUPVAL                         R2 16
      170 GETTABLEKS                       R2 R2 K2 ["Type"]
      172 GETUPVAL                         R3 3
      173 CALL                             R0 3 0
      174 GETUPVAL                         R0 0
      175 GETTABLEKS                       R0 R0 K0 ["add"]
      177 GETUPVAL                         R1 1
      178 GETTABLEKS                       R1 R1 K19 ["GenerateLayout"]
      180 LOADNIL                          R2
      181 GETUPVAL                         R3 3
      182 CALL                             R0 3 0
      183 GETUPVAL                         R0 0
      184 GETTABLEKS                       R0 R0 K0 ["add"]
      186 GETUPVAL                         R1 1
      187 GETTABLEKS                       R1 R1 K20 ["GetConsoleOutput"]
      189 LOADNIL                          R2
      190 GETUPVAL                         R3 3
      191 CALL                             R0 3 0
      192 GETUPVAL                         R0 0
      193 GETTABLEKS                       R0 R0 K0 ["add"]
      195 GETUPVAL                         R1 1
      196 GETTABLEKS                       R1 R1 K21 ["GetStudioState"]
      198 LOADNIL                          R2
      199 GETUPVAL                         R3 3
      200 CALL                             R0 3 0
      201 GETUPVAL                         R0 0
      202 GETTABLEKS                       R0 R0 K0 ["add"]
      204 GETUPVAL                         R1 1
      205 GETTABLEKS                       R1 R1 K22 ["GrepSearch"]
      207 GETUPVAL                         R2 17
      208 GETTABLEKS                       R2 R2 K2 ["Type"]
      210 GETUPVAL                         R3 3
      211 CALL                             R0 3 0
      212 GETUPVAL                         R0 0
      213 GETTABLEKS                       R0 R0 K0 ["add"]
      215 GETUPVAL                         R1 1
      216 GETTABLEKS                       R1 R1 K23 ["HttpGet"]
      218 GETUPVAL                         R2 18
      219 GETTABLEKS                       R2 R2 K2 ["Type"]
      221 GETUPVAL                         R3 3
      222 CALL                             R0 3 0
      223 GETUPVAL                         R0 0
      224 GETTABLEKS                       R0 R0 K0 ["add"]
      226 GETUPVAL                         R1 1
      227 GETTABLEKS                       R1 R1 K24 ["InspectInstance"]
      229 GETUPVAL                         R2 19
      230 GETTABLEKS                       R2 R2 K2 ["Type"]
      232 GETUPVAL                         R3 3
      233 CALL                             R0 3 0
      234 GETUPVAL                         R0 0
      235 GETTABLEKS                       R0 R0 K0 ["add"]
      237 GETUPVAL                         R1 1
      238 GETTABLEKS                       R1 R1 K25 ["JobRun"]
      240 GETUPVAL                         R2 20
      241 GETTABLEKS                       R2 R2 K2 ["Type"]
      243 GETUPVAL                         R3 3
      244 CALL                             R0 3 0
      245 GETUPVAL                         R0 0
      246 GETTABLEKS                       R0 R0 K0 ["add"]
      248 GETUPVAL                         R1 1
      249 GETTABLEKS                       R1 R1 K26 ["JobWait"]
      251 GETUPVAL                         R2 21
      252 GETTABLEKS                       R2 R2 K2 ["Type"]
      254 GETUPVAL                         R3 3
      255 CALL                             R0 3 0
      256 GETUPVAL                         R0 0
      257 GETTABLEKS                       R0 R0 K0 ["add"]
      259 GETUPVAL                         R1 1
      260 GETTABLEKS                       R1 R1 K27 ["MaterialGen"]
      262 GETUPVAL                         R2 22
      263 GETTABLEKS                       R2 R2 K2 ["Type"]
      265 GETUPVAL                         R3 3
      266 CALL                             R0 3 0
      267 GETUPVAL                         R0 0
      268 GETTABLEKS                       R0 R0 K0 ["add"]
      270 GETUPVAL                         R1 1
      271 GETTABLEKS                       R1 R1 K28 ["MeshGen"]
      273 GETUPVAL                         R2 23
      274 GETTABLEKS                       R2 R2 K2 ["Type"]
      276 GETUPVAL                         R3 3
      277 CALL                             R0 3 0
      278 GETUPVAL                         R0 0
      279 GETTABLEKS                       R0 R0 K0 ["add"]
      281 GETUPVAL                         R1 1
      282 GETTABLEKS                       R1 R1 K29 ["SegmentMesh"]
      284 GETUPVAL                         R3 4
      285 GETTABLEKS                       R3 R3 K30 ["FFlagAssistantSegmentMeshTool"]
      287 JUMPIFNOT                        R3 ; [+4]
      288 GETUPVAL                         R2 24
      289 GETTABLEKS                       R2 R2 K2 ["Type"]
      291 JUMP                             ; [+1]
      292 LOADNIL                          R2
      293 GETUPVAL                         R3 3
      294 CALL                             R0 3 0
      295 GETUPVAL                         R0 0
      296 GETTABLEKS                       R0 R0 K0 ["add"]
      298 GETUPVAL                         R1 1
      299 GETTABLEKS                       R1 R1 K31 ["TextureGen"]
      301 GETUPVAL                         R3 4
      302 GETTABLEKS                       R3 R3 K32 ["FFlagAssistantTextureGenTool"]
      304 JUMPIFNOT                        R3 ; [+4]
      305 GETUPVAL                         R2 25
      306 GETTABLEKS                       R2 R2 K2 ["Type"]
      308 JUMP                             ; [+1]
      309 LOADNIL                          R2
      310 GETUPVAL                         R3 3
      311 CALL                             R0 3 0
      312 GETUPVAL                         R0 0
      313 GETTABLEKS                       R0 R0 K0 ["add"]
      315 GETUPVAL                         R1 1
      316 GETTABLEKS                       R1 R1 K33 ["MultiEdit"]
      318 LOADNIL                          R2
      319 GETUPVAL                         R3 3
      320 CALL                             R0 3 0
      321 GETUPVAL                         R0 0
      322 GETTABLEKS                       R0 R0 K0 ["add"]
      324 GETUPVAL                         R1 1
      325 GETTABLEKS                       R1 R1 K34 ["MultiPlayerAgentsCommunication"]
      327 LOADNIL                          R2
      328 GETUPVAL                         R3 3
      329 CALL                             R0 3 0
      330 GETUPVAL                         R0 0
      331 GETTABLEKS                       R0 R0 K0 ["add"]
      333 GETUPVAL                         R1 1
      334 GETTABLEKS                       R1 R1 K35 ["PlaytestLook"]
      336 LOADNIL                          R2
      337 GETUPVAL                         R3 3
      338 CALL                             R0 3 0
      339 GETUPVAL                         R0 0
      340 GETTABLEKS                       R0 R0 K0 ["add"]
      342 GETUPVAL                         R1 1
      343 GETTABLEKS                       R1 R1 K36 ["PrimitiveGen"]
      345 GETUPVAL                         R2 26
      346 GETTABLEKS                       R2 R2 K2 ["Type"]
      348 GETUPVAL                         R3 3
      349 CALL                             R0 3 0
      350 GETUPVAL                         R0 0
      351 GETTABLEKS                       R0 R0 K0 ["add"]
      353 GETUPVAL                         R1 1
      354 GETTABLEKS                       R1 R1 K37 ["QuestionAnswer"]
      356 GETUPVAL                         R2 27
      357 GETTABLEKS                       R2 R2 K2 ["Type"]
      359 GETUPVAL                         R3 3
      360 CALL                             R0 3 0
      361 GETUPVAL                         R0 0
      362 GETTABLEKS                       R0 R0 K0 ["add"]
      364 GETUPVAL                         R1 1
      365 GETTABLEKS                       R1 R1 K38 ["ReadFile"]
      367 GETUPVAL                         R2 28
      368 GETTABLEKS                       R2 R2 K2 ["Type"]
      370 GETUPVAL                         R3 3
      371 CALL                             R0 3 0
      372 GETUPVAL                         R0 0
      373 GETTABLEKS                       R0 R0 K0 ["add"]
      375 GETUPVAL                         R1 1
      376 GETTABLEKS                       R1 R1 K39 ["ScreenCapture"]
      378 GETUPVAL                         R2 29
      379 GETTABLEKS                       R2 R2 K2 ["Type"]
      381 GETUPVAL                         R3 3
      382 CALL                             R0 3 0
      383 GETUPVAL                         R0 0
      384 GETTABLEKS                       R0 R0 K0 ["add"]
      386 GETUPVAL                         R1 1
      387 GETTABLEKS                       R1 R1 K40 ["Skill"]
      389 GETUPVAL                         R2 30
      390 GETTABLEKS                       R2 R2 K2 ["Type"]
      392 GETUPVAL                         R3 3
      393 CALL                             R0 3 0
      394 GETUPVAL                         R0 0
      395 GETTABLEKS                       R0 R0 K0 ["add"]
      397 GETUPVAL                         R1 1
      398 GETTABLEKS                       R1 R1 K41 ["StartMultiPlayerAgents"]
      400 LOADNIL                          R2
      401 GETUPVAL                         R3 3
      402 CALL                             R0 3 0
      403 GETUPVAL                         R0 0
      404 GETTABLEKS                       R0 R0 K0 ["add"]
      406 GETUPVAL                         R1 1
      407 GETTABLEKS                       R1 R1 K42 ["StartStopPlay"]
      409 LOADNIL                          R2
      410 GETUPVAL                         R3 3
      411 CALL                             R0 3 0
      412 GETUPVAL                         R0 0
      413 GETTABLEKS                       R0 R0 K0 ["add"]
      415 GETUPVAL                         R1 1
      416 GETTABLEKS                       R1 R1 K43 ["StopMultiPlayerAgents"]
      418 LOADNIL                          R2
      419 GETUPVAL                         R3 3
      420 CALL                             R0 3 0
      421 GETUPVAL                         R0 0
      422 GETTABLEKS                       R0 R0 K0 ["add"]
      424 GETUPVAL                         R1 1
      425 GETTABLEKS                       R1 R1 K44 ["StoreImage"]
      427 LOADNIL                          R2
      428 GETUPVAL                         R3 3
      429 CALL                             R0 3 0
      430 GETUPVAL                         R0 0
      431 GETTABLEKS                       R0 R0 K0 ["add"]
      433 GETUPVAL                         R1 1
      434 GETTABLEKS                       R1 R1 K45 ["Subagent"]
      436 GETUPVAL                         R2 31
      437 GETTABLEKS                       R2 R2 K2 ["Type"]
      439 GETUPVAL                         R3 3
      440 CALL                             R0 3 0
      441 GETUPVAL                         R0 0
      442 GETTABLEKS                       R0 R0 K0 ["add"]
      444 GETUPVAL                         R1 1
      445 GETTABLEKS                       R1 R1 K46 ["UpdatePlan"]
      447 GETUPVAL                         R2 9
      448 GETUPVAL                         R3 3
      449 CALL                             R0 3 0
      450 GETUPVAL                         R0 0
      451 GETTABLEKS                       R0 R0 K0 ["add"]
      453 GETUPVAL                         R1 1
      454 GETTABLEKS                       R1 R1 K47 ["UploadImage"]
      456 LOADNIL                          R2
      457 GETUPVAL                         R3 3
      458 CALL                             R0 3 0
      459 GETUPVAL                         R0 0
      460 GETTABLEKS                       R0 R0 K0 ["add"]
      462 GETUPVAL                         R1 1
      463 GETTABLEKS                       R1 R1 K48 ["UserKeyboardInput"]
      465 LOADNIL                          R2
      466 GETUPVAL                         R3 3
      467 CALL                             R0 3 0
      468 GETUPVAL                         R0 0
      469 GETTABLEKS                       R0 R0 K0 ["add"]
      471 GETUPVAL                         R1 1
      472 GETTABLEKS                       R1 R1 K49 ["UserMouseInput"]
      474 LOADNIL                          R2
      475 GETUPVAL                         R3 3
      476 CALL                             R0 3 0
      477 GETUPVAL                         R0 0
      478 GETTABLEKS                       R0 R0 K0 ["add"]
      480 GETUPVAL                         R1 1
      481 GETTABLEKS                       R1 R1 K50 ["VideoCapture"]
      483 LOADNIL                          R2
      484 GETUPVAL                         R3 3
      485 CALL                             R0 3 0
      486 GETUPVAL                         R0 0
      487 GETTABLEKS                       R0 R0 K0 ["add"]
      489 GETUPVAL                         R1 1
      490 GETTABLEKS                       R1 R1 K51 ["WaitForMultiPlayerAgentsCommunication"]
      492 LOADNIL                          R2
      493 GETUPVAL                         R3 3
      494 CALL                             R0 3 0
      495 GETUPVAL                         R0 0
      496 GETTABLEKS                       R0 R0 K0 ["add"]
      498 GETUPVAL                         R1 1
      499 GETTABLEKS                       R1 R1 K52 ["ListRobloxStudios"]
      501 GETUPVAL                         R2 9
      502 GETUPVAL                         R3 3
      503 CALL                             R0 3 0
      504 GETUPVAL                         R0 4
      505 GETTABLEKS                       R0 R0 K53 ["FFlagAssistantUseRemoteService"]
      507 JUMPIFNOT                        R0 ; [+11]
      508 GETUPVAL                         R0 0
      509 GETTABLEKS                       R0 R0 K0 ["add"]
      511 GETUPVAL                         R1 1
      512 GETTABLEKS                       R1 R1 K54 ["CloudExecuteLuau"]
      514 GETUPVAL                         R2 12
      515 GETTABLEKS                       R2 R2 K2 ["Type"]
      517 GETUPVAL                         R3 3
      518 CALL                             R0 3 0
      519 GETUPVAL                         R0 32
      520 CALL                             R0 0 1
      521 LENGTH                           R1 R0
      522 LOADN                            R2 0
      523 JUMPIFNOTLT                      R2 R1 ; [+14]
      525 GETUPVAL                         R1 4
      526 GETTABLEKS                       R1 R1 K55 ["FFlagDebugLogAssistantUI"]
      528 JUMPIFNOT                        R1 ; [+9]
      529 GETIMPORT                        R1 K57 [print]
      531 LOADK                            R3 K58 ["[registerToolWidgetMappings] Applying %* FString mapping(s)"]
      532 LENGTH                           R5 R0
      533 NAMECALL                         R3 R3 K59 ["format"]
      535 CALL                             R3 2 1
      536 MOVE                             R2 R3
      537 CALL                             R1 1 0
      538 MOVE                             R1 R0
      539 LOADNIL                          R2
      540 LOADNIL                          R3
      541 FORGPREP                         R1
      542 GETUPVAL                         R6 0
      543 GETTABLEKS                       R6 R6 K0 ["add"]
      545 GETTABLEKS                       R7 R5 K60 ["toolName"]
      547 GETTABLEKS                       R8 R5 K61 ["widgetType"]
      549 GETUPVAL                         R9 33
      550 GETTABLEKS                       R9 R9 K62 ["FString"]
      552 CALL                             R6 3 0
      553 FORGLOOP                         R1 2 ; [-12]
      555 GETUPVAL                         R1 4
      556 GETTABLEKS                       R1 R1 K55 ["FFlagDebugLogAssistantUI"]
      558 JUMPIFNOT                        R1 ; [+48]
      559 GETUPVAL                         R1 1
      560 LOADNIL                          R2
      561 LOADNIL                          R3
      562 FORGPREP                         R1
      563 FASTCALL1                        TYPEOF R5 ; [+3]
      564 MOVE                             R7 R5
      565 GETIMPORT                        R6 K64 [typeof]
      567 CALL                             R6 1 1
      568 JUMPIFNOTEQKS                    R6 K65 ["string"] ; [+36]
      570 GETUPVAL                         R6 4
      571 GETTABLEKS                       R6 R6 K53 ["FFlagAssistantUseRemoteService"]
      573 JUMPIF                           R6 ; [+6]
      574 GETUPVAL                         R6 34
      575 GETTABLEKS                       R6 R6 K66 ["isCloudTool"]
      577 MOVE                             R7 R5
      578 CALL                             R6 1 1
      579 JUMPIF                           R6 ; [+25]
      580 GETUPVAL                         R6 1
      581 GETTABLEKS                       R6 R6 K4 ["AskInput"]
      583 JUMPIFNOTEQ                      R5 R6 ; [+5]
      585 GETUPVAL                         R6 4
      586 GETTABLEKS                       R6 R6 K3 ["FFlagAssistantAskInputTool"]
      588 JUMPIFNOT                        R6 ; [+16]
      589 GETUPVAL                         R6 0
      590 GETTABLEKS                       R6 R6 K67 ["get"]
      592 MOVE                             R7 R5
      593 CALL                             R6 1 1
      594 JUMPIF                           R6 ; [+10]
      595 GETIMPORT                        R6 K69 [error]
      597 LOADK                            R8 K70 ["[registerToolWidgetMappings] No widget mapping found for tool \"%*\""]
      598 MOVE                             R10 R5
      599 NAMECALL                         R8 R8 K59 ["format"]
      601 CALL                             R8 2 1
      602 MOVE                             R7 R8
      603 LOADN                            R8 0
      604 CALL                             R6 2 0
      605 FORGLOOP                         R1 2 ; [-43]
      607 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R1 K9 ["Engine"]
       21 GETTABLEKS                       R3 R3 K10 ["Providers"]
       23 GETTABLEKS                       R3 R3 K11 ["ToolNames"]
       25 GETTABLEKS                       R4 R1 K12 ["ToolNaming"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K13 ["Util"]
       31 GETTABLEKS                       R6 R6 K14 ["ContentWidgets"]
       33 GETTABLEKS                       R6 R6 K15 ["ToolWidgetMappingRegistry"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K16 ["Components"]
       40 GETTABLEKS                       R7 R7 K14 ["ContentWidgets"]
       42 GETTABLEKS                       R7 R7 K17 ["AnimationGenContentWidget"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K16 ["Components"]
       49 GETTABLEKS                       R8 R8 K14 ["ContentWidgets"]
       51 GETTABLEKS                       R8 R8 K18 ["AskInputContentWidget"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K16 ["Components"]
       58 GETTABLEKS                       R9 R9 K14 ["ContentWidgets"]
       60 GETTABLEKS                       R9 R9 K19 ["AssetInsertContentWidget"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K16 ["Components"]
       67 GETTABLEKS                       R10 R10 K14 ["ContentWidgets"]
       69 GETTABLEKS                       R10 R10 K20 ["AssetSearchContentWidget"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K16 ["Components"]
       76 GETTABLEKS                       R11 R11 K14 ["ContentWidgets"]
       78 GETTABLEKS                       R11 R11 K21 ["AvatarAutoSetupContentWidget"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K16 ["Components"]
       85 GETTABLEKS                       R12 R12 K14 ["ContentWidgets"]
       87 GETTABLEKS                       R12 R12 K22 ["CreateSkillContentWidget"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K16 ["Components"]
       94 GETTABLEKS                       R13 R13 K14 ["ContentWidgets"]
       96 GETTABLEKS                       R13 R13 K23 ["CreatorStoreInsertContentWidget"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K16 ["Components"]
      103 GETTABLEKS                       R14 R14 K14 ["ContentWidgets"]
      105 GETTABLEKS                       R14 R14 K24 ["FileSearchContentWidget"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K16 ["Components"]
      112 GETTABLEKS                       R15 R15 K14 ["ContentWidgets"]
      114 GETTABLEKS                       R15 R15 K25 ["FinalizePlanContentWidget"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R0 K16 ["Components"]
      121 GETTABLEKS                       R16 R16 K14 ["ContentWidgets"]
      123 GETTABLEKS                       R16 R16 K26 ["FromHistoryContentWidget"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R17 R0 K16 ["Components"]
      130 GETTABLEKS                       R17 R17 K14 ["ContentWidgets"]
      132 GETTABLEKS                       R17 R17 K27 ["GameTreeContentWidget"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K5 [require]
      137 GETTABLEKS                       R18 R0 K16 ["Components"]
      139 GETTABLEKS                       R18 R18 K14 ["ContentWidgets"]
      141 GETTABLEKS                       R18 R18 K28 ["GrepSearchContentWidget"]
      143 CALL                             R17 1 1
      144 GETIMPORT                        R18 K5 [require]
      146 GETTABLEKS                       R19 R0 K16 ["Components"]
      148 GETTABLEKS                       R19 R19 K14 ["ContentWidgets"]
      150 GETTABLEKS                       R19 R19 K29 ["HttpGetContentWidget"]
      152 CALL                             R18 1 1
      153 GETIMPORT                        R19 K5 [require]
      155 GETTABLEKS                       R20 R0 K16 ["Components"]
      157 GETTABLEKS                       R20 R20 K14 ["ContentWidgets"]
      159 GETTABLEKS                       R20 R20 K30 ["InspectInstanceContentWidget"]
      161 CALL                             R19 1 1
      162 GETIMPORT                        R20 K5 [require]
      164 GETTABLEKS                       R21 R0 K16 ["Components"]
      166 GETTABLEKS                       R21 R21 K14 ["ContentWidgets"]
      168 GETTABLEKS                       R21 R21 K31 ["JobRunContentWidget"]
      170 CALL                             R20 1 1
      171 GETIMPORT                        R21 K5 [require]
      173 GETTABLEKS                       R22 R0 K16 ["Components"]
      175 GETTABLEKS                       R22 R22 K14 ["ContentWidgets"]
      177 GETTABLEKS                       R22 R22 K32 ["JobWaitContentWidget"]
      179 CALL                             R21 1 1
      180 GETIMPORT                        R22 K5 [require]
      182 GETTABLEKS                       R23 R0 K16 ["Components"]
      184 GETTABLEKS                       R23 R23 K14 ["ContentWidgets"]
      186 GETTABLEKS                       R23 R23 K33 ["MaterialGenContentWidget"]
      188 CALL                             R22 1 1
      189 GETIMPORT                        R23 K5 [require]
      191 GETTABLEKS                       R24 R0 K16 ["Components"]
      193 GETTABLEKS                       R24 R24 K14 ["ContentWidgets"]
      195 GETTABLEKS                       R24 R24 K34 ["MeshGenContentWidget"]
      197 CALL                             R23 1 1
      198 GETIMPORT                        R24 K5 [require]
      200 GETTABLEKS                       R25 R0 K16 ["Components"]
      202 GETTABLEKS                       R25 R25 K14 ["ContentWidgets"]
      204 GETTABLEKS                       R25 R25 K35 ["PrimitiveGenContentWidget"]
      206 CALL                             R24 1 1
      207 GETIMPORT                        R25 K5 [require]
      209 GETTABLEKS                       R26 R0 K16 ["Components"]
      211 GETTABLEKS                       R26 R26 K14 ["ContentWidgets"]
      213 GETTABLEKS                       R26 R26 K36 ["QuestionAnswerContentWidget"]
      215 CALL                             R25 1 1
      216 GETIMPORT                        R26 K5 [require]
      218 GETTABLEKS                       R27 R0 K16 ["Components"]
      220 GETTABLEKS                       R27 R27 K14 ["ContentWidgets"]
      222 GETTABLEKS                       R27 R27 K37 ["ReadFileContentWidget"]
      224 CALL                             R26 1 1
      225 GETIMPORT                        R27 K5 [require]
      227 GETTABLEKS                       R28 R0 K16 ["Components"]
      229 GETTABLEKS                       R28 R28 K14 ["ContentWidgets"]
      231 GETTABLEKS                       R28 R28 K38 ["RunCodeContentWidget"]
      233 CALL                             R27 1 1
      234 GETIMPORT                        R28 K5 [require]
      236 GETTABLEKS                       R29 R0 K16 ["Components"]
      238 GETTABLEKS                       R29 R29 K14 ["ContentWidgets"]
      240 GETTABLEKS                       R29 R29 K39 ["ScreenCaptureContentWidget"]
      242 CALL                             R28 1 1
      243 GETIMPORT                        R29 K5 [require]
      245 GETTABLEKS                       R30 R0 K16 ["Components"]
      247 GETTABLEKS                       R30 R30 K14 ["ContentWidgets"]
      249 GETTABLEKS                       R30 R30 K40 ["SegmentMeshContentWidget"]
      251 CALL                             R29 1 1
      252 GETIMPORT                        R30 K5 [require]
      254 GETTABLEKS                       R31 R0 K16 ["Components"]
      256 GETTABLEKS                       R31 R31 K14 ["ContentWidgets"]
      258 GETTABLEKS                       R31 R31 K41 ["SkillContentWidget"]
      260 CALL                             R30 1 1
      261 GETIMPORT                        R31 K5 [require]
      263 GETTABLEKS                       R32 R0 K16 ["Components"]
      265 GETTABLEKS                       R32 R32 K14 ["ContentWidgets"]
      267 GETTABLEKS                       R32 R32 K42 ["SubagentContentWidget"]
      269 CALL                             R31 1 1
      270 GETIMPORT                        R32 K5 [require]
      272 GETTABLEKS                       R33 R0 K16 ["Components"]
      274 GETTABLEKS                       R33 R33 K14 ["ContentWidgets"]
      276 GETTABLEKS                       R33 R33 K43 ["TextureGenContentWidget"]
      278 CALL                             R32 1 1
      279 GETTABLEKS                       R33 R5 K44 ["MappingSource"]
      281 GETTABLEKS                       R34 R33 K45 ["Hardcoded"]
      283 GETTABLEKS                       R35 R5 K46 ["None"]
      285 DUPCLOSURE                       R36 K47 [PROTO_1]
      286 CAPTURE                          VAL R2
      287 DUPCLOSURE                       R37 K48 [PROTO_2]
      288 CAPTURE                          VAL R5
      289 CAPTURE                          VAL R3
      290 CAPTURE                          VAL R6
      291 CAPTURE                          VAL R34
      292 CAPTURE                          VAL R2
      293 CAPTURE                          VAL R7
      294 CAPTURE                          VAL R8
      295 CAPTURE                          VAL R9
      296 CAPTURE                          VAL R10
      297 CAPTURE                          VAL R35
      298 CAPTURE                          VAL R11
      299 CAPTURE                          VAL R12
      300 CAPTURE                          VAL R27
      301 CAPTURE                          VAL R13
      302 CAPTURE                          VAL R14
      303 CAPTURE                          VAL R15
      304 CAPTURE                          VAL R16
      305 CAPTURE                          VAL R17
      306 CAPTURE                          VAL R18
      307 CAPTURE                          VAL R19
      308 CAPTURE                          VAL R20
      309 CAPTURE                          VAL R21
      310 CAPTURE                          VAL R22
      311 CAPTURE                          VAL R23
      312 CAPTURE                          VAL R29
      313 CAPTURE                          VAL R32
      314 CAPTURE                          VAL R24
      315 CAPTURE                          VAL R25
      316 CAPTURE                          VAL R26
      317 CAPTURE                          VAL R28
      318 CAPTURE                          VAL R30
      319 CAPTURE                          VAL R31
      320 CAPTURE                          VAL R36
      321 CAPTURE                          VAL R33
      322 CAPTURE                          VAL R4
      323 RETURN                           R37 1
