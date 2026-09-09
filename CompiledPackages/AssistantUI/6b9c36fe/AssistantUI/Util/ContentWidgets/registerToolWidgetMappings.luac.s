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
      234 GETUPVAL                         R0 4
      235 GETTABLEKS                       R0 R0 K25 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
      237 JUMPIF                           R0 ; [+11]
      238 GETUPVAL                         R0 0
      239 GETTABLEKS                       R0 R0 K0 ["add"]
      241 GETUPVAL                         R1 1
      242 GETTABLEKS                       R1 R1 K26 ["JobRun"]
      244 GETUPVAL                         R2 20
      245 GETTABLEKS                       R2 R2 K2 ["Type"]
      247 GETUPVAL                         R3 3
      248 CALL                             R0 3 0
      249 GETUPVAL                         R0 0
      250 GETTABLEKS                       R0 R0 K0 ["add"]
      252 GETUPVAL                         R1 1
      253 GETTABLEKS                       R1 R1 K27 ["JobWait"]
      255 GETUPVAL                         R2 21
      256 GETTABLEKS                       R2 R2 K2 ["Type"]
      258 GETUPVAL                         R3 3
      259 CALL                             R0 3 0
      260 GETUPVAL                         R0 0
      261 GETTABLEKS                       R0 R0 K0 ["add"]
      263 GETUPVAL                         R1 1
      264 GETTABLEKS                       R1 R1 K28 ["MaterialGen"]
      266 GETUPVAL                         R2 22
      267 GETTABLEKS                       R2 R2 K2 ["Type"]
      269 GETUPVAL                         R3 3
      270 CALL                             R0 3 0
      271 GETUPVAL                         R0 0
      272 GETTABLEKS                       R0 R0 K0 ["add"]
      274 GETUPVAL                         R1 1
      275 GETTABLEKS                       R1 R1 K29 ["MeshGen"]
      277 GETUPVAL                         R2 23
      278 GETTABLEKS                       R2 R2 K2 ["Type"]
      280 GETUPVAL                         R3 3
      281 CALL                             R0 3 0
      282 GETUPVAL                         R0 0
      283 GETTABLEKS                       R0 R0 K0 ["add"]
      285 GETUPVAL                         R1 1
      286 GETTABLEKS                       R1 R1 K30 ["SegmentMesh"]
      288 GETUPVAL                         R3 4
      289 GETTABLEKS                       R3 R3 K31 ["FFlagAssistantSegmentMeshTool"]
      291 JUMPIFNOT                        R3 ; [+4]
      292 GETUPVAL                         R2 24
      293 GETTABLEKS                       R2 R2 K2 ["Type"]
      295 JUMP                             ; [+1]
      296 LOADNIL                          R2
      297 GETUPVAL                         R3 3
      298 CALL                             R0 3 0
      299 GETUPVAL                         R0 0
      300 GETTABLEKS                       R0 R0 K0 ["add"]
      302 GETUPVAL                         R1 1
      303 GETTABLEKS                       R1 R1 K32 ["TextureGen"]
      305 GETUPVAL                         R3 4
      306 GETTABLEKS                       R3 R3 K33 ["FFlagAssistantTextureGenTool"]
      308 JUMPIFNOT                        R3 ; [+4]
      309 GETUPVAL                         R2 25
      310 GETTABLEKS                       R2 R2 K2 ["Type"]
      312 JUMP                             ; [+1]
      313 LOADNIL                          R2
      314 GETUPVAL                         R3 3
      315 CALL                             R0 3 0
      316 GETUPVAL                         R0 0
      317 GETTABLEKS                       R0 R0 K0 ["add"]
      319 GETUPVAL                         R1 1
      320 GETTABLEKS                       R1 R1 K34 ["MultiEdit"]
      322 LOADNIL                          R2
      323 GETUPVAL                         R3 3
      324 CALL                             R0 3 0
      325 GETUPVAL                         R0 0
      326 GETTABLEKS                       R0 R0 K0 ["add"]
      328 GETUPVAL                         R1 1
      329 GETTABLEKS                       R1 R1 K35 ["MultiPlayerAgentsCommunication"]
      331 LOADNIL                          R2
      332 GETUPVAL                         R3 3
      333 CALL                             R0 3 0
      334 GETUPVAL                         R0 0
      335 GETTABLEKS                       R0 R0 K0 ["add"]
      337 GETUPVAL                         R1 1
      338 GETTABLEKS                       R1 R1 K36 ["PlaytestLook"]
      340 LOADNIL                          R2
      341 GETUPVAL                         R3 3
      342 CALL                             R0 3 0
      343 GETUPVAL                         R0 0
      344 GETTABLEKS                       R0 R0 K0 ["add"]
      346 GETUPVAL                         R1 1
      347 GETTABLEKS                       R1 R1 K37 ["PrimitiveGen"]
      349 GETUPVAL                         R2 26
      350 GETTABLEKS                       R2 R2 K2 ["Type"]
      352 GETUPVAL                         R3 3
      353 CALL                             R0 3 0
      354 GETUPVAL                         R0 0
      355 GETTABLEKS                       R0 R0 K0 ["add"]
      357 GETUPVAL                         R1 1
      358 GETTABLEKS                       R1 R1 K38 ["QuestionAnswer"]
      360 GETUPVAL                         R2 27
      361 GETTABLEKS                       R2 R2 K2 ["Type"]
      363 GETUPVAL                         R3 3
      364 CALL                             R0 3 0
      365 GETUPVAL                         R0 0
      366 GETTABLEKS                       R0 R0 K0 ["add"]
      368 GETUPVAL                         R1 1
      369 GETTABLEKS                       R1 R1 K39 ["ReadFile"]
      371 GETUPVAL                         R2 28
      372 GETTABLEKS                       R2 R2 K2 ["Type"]
      374 GETUPVAL                         R3 3
      375 CALL                             R0 3 0
      376 GETUPVAL                         R0 0
      377 GETTABLEKS                       R0 R0 K0 ["add"]
      379 GETUPVAL                         R1 1
      380 GETTABLEKS                       R1 R1 K40 ["ScreenCapture"]
      382 GETUPVAL                         R2 29
      383 GETTABLEKS                       R2 R2 K2 ["Type"]
      385 GETUPVAL                         R3 3
      386 CALL                             R0 3 0
      387 GETUPVAL                         R0 0
      388 GETTABLEKS                       R0 R0 K0 ["add"]
      390 GETUPVAL                         R1 1
      391 GETTABLEKS                       R1 R1 K41 ["Skill"]
      393 GETUPVAL                         R2 30
      394 GETTABLEKS                       R2 R2 K2 ["Type"]
      396 GETUPVAL                         R3 3
      397 CALL                             R0 3 0
      398 GETUPVAL                         R0 0
      399 GETTABLEKS                       R0 R0 K0 ["add"]
      401 GETUPVAL                         R1 1
      402 GETTABLEKS                       R1 R1 K42 ["StartMultiPlayerAgents"]
      404 LOADNIL                          R2
      405 GETUPVAL                         R3 3
      406 CALL                             R0 3 0
      407 GETUPVAL                         R0 0
      408 GETTABLEKS                       R0 R0 K0 ["add"]
      410 GETUPVAL                         R1 1
      411 GETTABLEKS                       R1 R1 K43 ["StartStopPlay"]
      413 LOADNIL                          R2
      414 GETUPVAL                         R3 3
      415 CALL                             R0 3 0
      416 GETUPVAL                         R0 0
      417 GETTABLEKS                       R0 R0 K0 ["add"]
      419 GETUPVAL                         R1 1
      420 GETTABLEKS                       R1 R1 K44 ["StopMultiPlayerAgents"]
      422 LOADNIL                          R2
      423 GETUPVAL                         R3 3
      424 CALL                             R0 3 0
      425 GETUPVAL                         R0 0
      426 GETTABLEKS                       R0 R0 K0 ["add"]
      428 GETUPVAL                         R1 1
      429 GETTABLEKS                       R1 R1 K45 ["StoreImage"]
      431 LOADNIL                          R2
      432 GETUPVAL                         R3 3
      433 CALL                             R0 3 0
      434 GETUPVAL                         R0 0
      435 GETTABLEKS                       R0 R0 K0 ["add"]
      437 GETUPVAL                         R1 1
      438 GETTABLEKS                       R1 R1 K46 ["Subagent"]
      440 GETUPVAL                         R2 31
      441 GETTABLEKS                       R2 R2 K2 ["Type"]
      443 GETUPVAL                         R3 3
      444 CALL                             R0 3 0
      445 GETUPVAL                         R0 0
      446 GETTABLEKS                       R0 R0 K0 ["add"]
      448 GETUPVAL                         R1 1
      449 GETTABLEKS                       R1 R1 K47 ["UpdatePlan"]
      451 GETUPVAL                         R2 9
      452 GETUPVAL                         R3 3
      453 CALL                             R0 3 0
      454 GETUPVAL                         R0 0
      455 GETTABLEKS                       R0 R0 K0 ["add"]
      457 GETUPVAL                         R1 1
      458 GETTABLEKS                       R1 R1 K48 ["UploadImage"]
      460 LOADNIL                          R2
      461 GETUPVAL                         R3 3
      462 CALL                             R0 3 0
      463 GETUPVAL                         R0 0
      464 GETTABLEKS                       R0 R0 K0 ["add"]
      466 GETUPVAL                         R1 1
      467 GETTABLEKS                       R1 R1 K49 ["UserKeyboardInput"]
      469 LOADNIL                          R2
      470 GETUPVAL                         R3 3
      471 CALL                             R0 3 0
      472 GETUPVAL                         R0 0
      473 GETTABLEKS                       R0 R0 K0 ["add"]
      475 GETUPVAL                         R1 1
      476 GETTABLEKS                       R1 R1 K50 ["UserMouseInput"]
      478 LOADNIL                          R2
      479 GETUPVAL                         R3 3
      480 CALL                             R0 3 0
      481 GETUPVAL                         R0 0
      482 GETTABLEKS                       R0 R0 K0 ["add"]
      484 GETUPVAL                         R1 1
      485 GETTABLEKS                       R1 R1 K51 ["VideoCapture"]
      487 LOADNIL                          R2
      488 GETUPVAL                         R3 3
      489 CALL                             R0 3 0
      490 GETUPVAL                         R0 0
      491 GETTABLEKS                       R0 R0 K0 ["add"]
      493 GETUPVAL                         R1 1
      494 GETTABLEKS                       R1 R1 K52 ["WaitForMultiPlayerAgentsCommunication"]
      496 LOADNIL                          R2
      497 GETUPVAL                         R3 3
      498 CALL                             R0 3 0
      499 GETUPVAL                         R0 0
      500 GETTABLEKS                       R0 R0 K0 ["add"]
      502 GETUPVAL                         R1 1
      503 GETTABLEKS                       R1 R1 K53 ["ListRobloxStudios"]
      505 GETUPVAL                         R2 9
      506 GETUPVAL                         R3 3
      507 CALL                             R0 3 0
      508 GETUPVAL                         R0 32
      509 CALL                             R0 0 1
      510 JUMPIFNOT                        R0 ; [+11]
      511 GETUPVAL                         R0 0
      512 GETTABLEKS                       R0 R0 K0 ["add"]
      514 GETUPVAL                         R1 1
      515 GETTABLEKS                       R1 R1 K54 ["CloudExecuteLuau"]
      517 GETUPVAL                         R2 12
      518 GETTABLEKS                       R2 R2 K2 ["Type"]
      520 GETUPVAL                         R3 3
      521 CALL                             R0 3 0
      522 GETUPVAL                         R0 33
      523 CALL                             R0 0 1
      524 LENGTH                           R1 R0
      525 LOADN                            R2 0
      526 JUMPIFNOTLT                      R2 R1 ; [+14]
      528 GETUPVAL                         R1 4
      529 GETTABLEKS                       R1 R1 K55 ["FFlagDebugLogAssistantUI"]
      531 JUMPIFNOT                        R1 ; [+9]
      532 GETIMPORT                        R1 K57 [print]
      534 LOADK                            R3 K58 ["[registerToolWidgetMappings] Applying %* FString mapping(s)"]
      535 LENGTH                           R5 R0
      536 NAMECALL                         R3 R3 K59 ["format"]
      538 CALL                             R3 2 1
      539 MOVE                             R2 R3
      540 CALL                             R1 1 0
      541 MOVE                             R1 R0
      542 LOADNIL                          R2
      543 LOADNIL                          R3
      544 FORGPREP                         R1
      545 GETUPVAL                         R6 0
      546 GETTABLEKS                       R6 R6 K0 ["add"]
      548 GETTABLEKS                       R7 R5 K60 ["toolName"]
      550 GETTABLEKS                       R8 R5 K61 ["widgetType"]
      552 GETUPVAL                         R9 34
      553 GETTABLEKS                       R9 R9 K62 ["FString"]
      555 CALL                             R6 3 0
      556 FORGLOOP                         R1 2 ; [-12]
      558 GETUPVAL                         R1 4
      559 GETTABLEKS                       R1 R1 K55 ["FFlagDebugLogAssistantUI"]
      561 JUMPIFNOT                        R1 ; [+56]
      562 GETUPVAL                         R1 1
      563 LOADNIL                          R2
      564 LOADNIL                          R3
      565 FORGPREP                         R1
      566 FASTCALL1                        TYPEOF R5 ; [+3]
      567 MOVE                             R7 R5
      568 GETIMPORT                        R6 K64 [typeof]
      570 CALL                             R6 1 1
      571 JUMPIFNOTEQKS                    R6 K65 ["string"] ; [+44]
      573 GETUPVAL                         R6 32
      574 CALL                             R6 0 1
      575 JUMPIF                           R6 ; [+6]
      576 GETUPVAL                         R6 35
      577 GETTABLEKS                       R6 R6 K66 ["isCloudTool"]
      579 MOVE                             R7 R5
      580 CALL                             R6 1 1
      581 JUMPIF                           R6 ; [+34]
      582 GETUPVAL                         R6 1
      583 GETTABLEKS                       R6 R6 K4 ["AskInput"]
      585 JUMPIFNOTEQ                      R5 R6 ; [+5]
      587 GETUPVAL                         R6 4
      588 GETTABLEKS                       R6 R6 K3 ["FFlagAssistantAskInputTool"]
      590 JUMPIFNOT                        R6 ; [+25]
      591 GETUPVAL                         R6 1
      592 GETTABLEKS                       R6 R6 K26 ["JobRun"]
      594 JUMPIFNOTEQ                      R5 R6 ; [+5]
      596 GETUPVAL                         R6 4
      597 GETTABLEKS                       R6 R6 K25 ["FFlagAssistantReplaceJobRunWithAsyncArg"]
      599 JUMPIF                           R6 ; [+16]
      600 GETUPVAL                         R6 0
      601 GETTABLEKS                       R6 R6 K67 ["get"]
      603 MOVE                             R7 R5
      604 CALL                             R6 1 1
      605 JUMPIF                           R6 ; [+10]
      606 GETIMPORT                        R6 K69 [error]
      608 LOADK                            R8 K70 ["[registerToolWidgetMappings] No widget mapping found for tool \"%*\""]
      609 MOVE                             R10 R5
      610 NAMECALL                         R8 R8 K59 ["format"]
      612 CALL                             R8 2 1
      613 MOVE                             R7 R8
      614 LOADN                            R8 0
      615 CALL                             R6 2 0
      616 FORGLOOP                         R1 2 ; [-51]
      618 RETURN                           R0 0

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
       38 GETTABLEKS                       R7 R0 K16 ["FlagUtils"]
       40 GETTABLEKS                       R7 R7 K17 ["getIsAssistantUseRemoteService"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R6 R6 K18 ["get"]
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K19 ["Components"]
       49 GETTABLEKS                       R8 R8 K14 ["ContentWidgets"]
       51 GETTABLEKS                       R8 R8 K20 ["AnimationGenContentWidget"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K19 ["Components"]
       58 GETTABLEKS                       R9 R9 K14 ["ContentWidgets"]
       60 GETTABLEKS                       R9 R9 K21 ["AskInputContentWidget"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K19 ["Components"]
       67 GETTABLEKS                       R10 R10 K14 ["ContentWidgets"]
       69 GETTABLEKS                       R10 R10 K22 ["AssetInsertContentWidget"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K19 ["Components"]
       76 GETTABLEKS                       R11 R11 K14 ["ContentWidgets"]
       78 GETTABLEKS                       R11 R11 K23 ["AssetSearchContentWidget"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K19 ["Components"]
       85 GETTABLEKS                       R12 R12 K14 ["ContentWidgets"]
       87 GETTABLEKS                       R12 R12 K24 ["AvatarAutoSetupContentWidget"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K19 ["Components"]
       94 GETTABLEKS                       R13 R13 K14 ["ContentWidgets"]
       96 GETTABLEKS                       R13 R13 K25 ["CreateSkillContentWidget"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K19 ["Components"]
      103 GETTABLEKS                       R14 R14 K14 ["ContentWidgets"]
      105 GETTABLEKS                       R14 R14 K26 ["CreatorStoreInsertContentWidget"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K19 ["Components"]
      112 GETTABLEKS                       R15 R15 K14 ["ContentWidgets"]
      114 GETTABLEKS                       R15 R15 K27 ["FileSearchContentWidget"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R0 K19 ["Components"]
      121 GETTABLEKS                       R16 R16 K14 ["ContentWidgets"]
      123 GETTABLEKS                       R16 R16 K28 ["FinalizePlanContentWidget"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R17 R0 K19 ["Components"]
      130 GETTABLEKS                       R17 R17 K14 ["ContentWidgets"]
      132 GETTABLEKS                       R17 R17 K29 ["FromHistoryContentWidget"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K5 [require]
      137 GETTABLEKS                       R18 R0 K19 ["Components"]
      139 GETTABLEKS                       R18 R18 K14 ["ContentWidgets"]
      141 GETTABLEKS                       R18 R18 K30 ["GameTreeContentWidget"]
      143 CALL                             R17 1 1
      144 GETIMPORT                        R18 K5 [require]
      146 GETTABLEKS                       R19 R0 K19 ["Components"]
      148 GETTABLEKS                       R19 R19 K14 ["ContentWidgets"]
      150 GETTABLEKS                       R19 R19 K31 ["GrepSearchContentWidget"]
      152 CALL                             R18 1 1
      153 GETIMPORT                        R19 K5 [require]
      155 GETTABLEKS                       R20 R0 K19 ["Components"]
      157 GETTABLEKS                       R20 R20 K14 ["ContentWidgets"]
      159 GETTABLEKS                       R20 R20 K32 ["HttpGetContentWidget"]
      161 CALL                             R19 1 1
      162 GETIMPORT                        R20 K5 [require]
      164 GETTABLEKS                       R21 R0 K19 ["Components"]
      166 GETTABLEKS                       R21 R21 K14 ["ContentWidgets"]
      168 GETTABLEKS                       R21 R21 K33 ["InspectInstanceContentWidget"]
      170 CALL                             R20 1 1
      171 GETIMPORT                        R21 K5 [require]
      173 GETTABLEKS                       R22 R0 K19 ["Components"]
      175 GETTABLEKS                       R22 R22 K14 ["ContentWidgets"]
      177 GETTABLEKS                       R22 R22 K34 ["JobRunContentWidget"]
      179 CALL                             R21 1 1
      180 GETIMPORT                        R22 K5 [require]
      182 GETTABLEKS                       R23 R0 K19 ["Components"]
      184 GETTABLEKS                       R23 R23 K14 ["ContentWidgets"]
      186 GETTABLEKS                       R23 R23 K35 ["JobWaitContentWidget"]
      188 CALL                             R22 1 1
      189 GETIMPORT                        R23 K5 [require]
      191 GETTABLEKS                       R24 R0 K19 ["Components"]
      193 GETTABLEKS                       R24 R24 K14 ["ContentWidgets"]
      195 GETTABLEKS                       R24 R24 K36 ["MaterialGenContentWidget"]
      197 CALL                             R23 1 1
      198 GETIMPORT                        R24 K5 [require]
      200 GETTABLEKS                       R25 R0 K19 ["Components"]
      202 GETTABLEKS                       R25 R25 K14 ["ContentWidgets"]
      204 GETTABLEKS                       R25 R25 K37 ["MeshGenContentWidget"]
      206 CALL                             R24 1 1
      207 GETIMPORT                        R25 K5 [require]
      209 GETTABLEKS                       R26 R0 K19 ["Components"]
      211 GETTABLEKS                       R26 R26 K14 ["ContentWidgets"]
      213 GETTABLEKS                       R26 R26 K38 ["PrimitiveGenContentWidget"]
      215 CALL                             R25 1 1
      216 GETIMPORT                        R26 K5 [require]
      218 GETTABLEKS                       R27 R0 K19 ["Components"]
      220 GETTABLEKS                       R27 R27 K14 ["ContentWidgets"]
      222 GETTABLEKS                       R27 R27 K39 ["QuestionAnswerContentWidget"]
      224 CALL                             R26 1 1
      225 GETIMPORT                        R27 K5 [require]
      227 GETTABLEKS                       R28 R0 K19 ["Components"]
      229 GETTABLEKS                       R28 R28 K14 ["ContentWidgets"]
      231 GETTABLEKS                       R28 R28 K40 ["ReadFileContentWidget"]
      233 CALL                             R27 1 1
      234 GETIMPORT                        R28 K5 [require]
      236 GETTABLEKS                       R29 R0 K19 ["Components"]
      238 GETTABLEKS                       R29 R29 K14 ["ContentWidgets"]
      240 GETTABLEKS                       R29 R29 K41 ["RunCodeContentWidget"]
      242 CALL                             R28 1 1
      243 GETIMPORT                        R29 K5 [require]
      245 GETTABLEKS                       R30 R0 K19 ["Components"]
      247 GETTABLEKS                       R30 R30 K14 ["ContentWidgets"]
      249 GETTABLEKS                       R30 R30 K42 ["ScreenCaptureContentWidget"]
      251 CALL                             R29 1 1
      252 GETIMPORT                        R30 K5 [require]
      254 GETTABLEKS                       R31 R0 K19 ["Components"]
      256 GETTABLEKS                       R31 R31 K14 ["ContentWidgets"]
      258 GETTABLEKS                       R31 R31 K43 ["SegmentMeshContentWidget"]
      260 CALL                             R30 1 1
      261 GETIMPORT                        R31 K5 [require]
      263 GETTABLEKS                       R32 R0 K19 ["Components"]
      265 GETTABLEKS                       R32 R32 K14 ["ContentWidgets"]
      267 GETTABLEKS                       R32 R32 K44 ["SkillContentWidget"]
      269 CALL                             R31 1 1
      270 GETIMPORT                        R32 K5 [require]
      272 GETTABLEKS                       R33 R0 K19 ["Components"]
      274 GETTABLEKS                       R33 R33 K14 ["ContentWidgets"]
      276 GETTABLEKS                       R33 R33 K45 ["SubagentContentWidget"]
      278 CALL                             R32 1 1
      279 GETIMPORT                        R33 K5 [require]
      281 GETTABLEKS                       R34 R0 K19 ["Components"]
      283 GETTABLEKS                       R34 R34 K14 ["ContentWidgets"]
      285 GETTABLEKS                       R34 R34 K46 ["TextureGenContentWidget"]
      287 CALL                             R33 1 1
      288 GETTABLEKS                       R34 R5 K47 ["MappingSource"]
      290 GETTABLEKS                       R35 R34 K48 ["Hardcoded"]
      292 GETTABLEKS                       R36 R5 K49 ["None"]
      294 DUPCLOSURE                       R37 K50 [PROTO_1]
      295 CAPTURE                          VAL R2
      296 DUPCLOSURE                       R38 K51 [PROTO_2]
      297 CAPTURE                          VAL R5
      298 CAPTURE                          VAL R3
      299 CAPTURE                          VAL R7
      300 CAPTURE                          VAL R35
      301 CAPTURE                          VAL R2
      302 CAPTURE                          VAL R8
      303 CAPTURE                          VAL R9
      304 CAPTURE                          VAL R10
      305 CAPTURE                          VAL R11
      306 CAPTURE                          VAL R36
      307 CAPTURE                          VAL R12
      308 CAPTURE                          VAL R13
      309 CAPTURE                          VAL R28
      310 CAPTURE                          VAL R14
      311 CAPTURE                          VAL R15
      312 CAPTURE                          VAL R16
      313 CAPTURE                          VAL R17
      314 CAPTURE                          VAL R18
      315 CAPTURE                          VAL R19
      316 CAPTURE                          VAL R20
      317 CAPTURE                          VAL R21
      318 CAPTURE                          VAL R22
      319 CAPTURE                          VAL R23
      320 CAPTURE                          VAL R24
      321 CAPTURE                          VAL R30
      322 CAPTURE                          VAL R33
      323 CAPTURE                          VAL R25
      324 CAPTURE                          VAL R26
      325 CAPTURE                          VAL R27
      326 CAPTURE                          VAL R29
      327 CAPTURE                          VAL R31
      328 CAPTURE                          VAL R32
      329 CAPTURE                          VAL R6
      330 CAPTURE                          VAL R37
      331 CAPTURE                          VAL R34
      332 CAPTURE                          VAL R4
      333 RETURN                           R38 1
