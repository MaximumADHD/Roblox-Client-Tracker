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
       19 JUMPIF                           R8 ; [+12]
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K6 ["FFlagDebugLogAssistantUI"]
       23 JUMPIFNOT                        R9 ; [+8]
       24 GETIMPORT                        R9 K8 [warn]
       26 LOADK                            R10 K9 ["[registerToolWidgetMappings] Invalid FString mapping format: \"%*\""]
       27 MOVE                             R12 R6
       28 NAMECALL                         R10 R10 K10 ["format"]
       30 CALL                             R10 2 1
       31 CALL                             R9 1 0
       32 FORGLOOP                         R3 1 ; [-17]
       34 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["add"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["AnimationGen"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["Type"]
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K0 ["add"]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K3 ["AskInput"]
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K2 ["Type"]
       20 GETUPVAL                         R3 3
       21 CALL                             R0 3 0
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K0 ["add"]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K4 ["AssetInsert"]
       28 GETUPVAL                         R2 5
       29 GETTABLEKS                       R2 R2 K2 ["Type"]
       31 GETUPVAL                         R3 3
       32 CALL                             R0 3 0
       33 GETUPVAL                         R0 0
       34 GETTABLEKS                       R0 R0 K0 ["add"]
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R1 R1 K5 ["AssetSearch"]
       39 GETUPVAL                         R2 6
       40 GETTABLEKS                       R2 R2 K2 ["Type"]
       42 GETUPVAL                         R3 3
       43 CALL                             R0 3 0
       44 GETUPVAL                         R0 0
       45 GETTABLEKS                       R0 R0 K0 ["add"]
       47 GETUPVAL                         R1 1
       48 GETTABLEKS                       R1 R1 K6 ["AvatarAutoSetup"]
       50 GETUPVAL                         R2 7
       51 GETTABLEKS                       R2 R2 K2 ["Type"]
       53 GETUPVAL                         R3 3
       54 CALL                             R0 3 0
       55 GETUPVAL                         R0 0
       56 GETTABLEKS                       R0 R0 K0 ["add"]
       58 GETUPVAL                         R1 1
       59 GETTABLEKS                       R1 R1 K7 ["CapturePluginGui"]
       61 GETUPVAL                         R3 8
       62 GETTABLEKS                       R3 R3 K8 ["FFlagAssistantCapturePluginGuiTool"]
       64 JUMPIFNOT                        R3 ; [+4]
       65 GETUPVAL                         R2 9
       66 GETTABLEKS                       R2 R2 K2 ["Type"]
       68 JUMP                             ; [+1]
       69 LOADNIL                          R2
       70 GETUPVAL                         R3 3
       71 CALL                             R0 3 0
       72 GETUPVAL                         R0 0
       73 GETTABLEKS                       R0 R0 K0 ["add"]
       75 GETUPVAL                         R1 1
       76 GETTABLEKS                       R1 R1 K9 ["CharacterNavigation"]
       78 LOADNIL                          R2
       79 GETUPVAL                         R3 3
       80 CALL                             R0 3 0
       81 GETUPVAL                         R0 0
       82 GETTABLEKS                       R0 R0 K0 ["add"]
       84 GETUPVAL                         R1 1
       85 GETTABLEKS                       R1 R1 K10 ["CompleteTodoItems"]
       87 GETUPVAL                         R2 10
       88 GETUPVAL                         R3 3
       89 CALL                             R0 3 0
       90 GETUPVAL                         R0 0
       91 GETTABLEKS                       R0 R0 K0 ["add"]
       93 GETUPVAL                         R1 1
       94 GETTABLEKS                       R1 R1 K11 ["CreateSkill"]
       96 GETUPVAL                         R2 11
       97 GETTABLEKS                       R2 R2 K2 ["Type"]
       99 GETUPVAL                         R3 3
      100 CALL                             R0 3 0
      101 GETUPVAL                         R0 0
      102 GETTABLEKS                       R0 R0 K0 ["add"]
      104 GETUPVAL                         R1 1
      105 GETTABLEKS                       R1 R1 K12 ["EditSkill"]
      107 GETUPVAL                         R2 11
      108 GETTABLEKS                       R2 R2 K2 ["Type"]
      110 GETUPVAL                         R3 3
      111 CALL                             R0 3 0
      112 GETUPVAL                         R0 0
      113 GETTABLEKS                       R0 R0 K0 ["add"]
      115 GETUPVAL                         R1 1
      116 GETTABLEKS                       R1 R1 K13 ["ExecuteLuau"]
      118 GETUPVAL                         R2 12
      119 GETTABLEKS                       R2 R2 K2 ["Type"]
      121 GETUPVAL                         R3 3
      122 CALL                             R0 3 0
      123 GETUPVAL                         R0 0
      124 GETTABLEKS                       R0 R0 K0 ["add"]
      126 GETUPVAL                         R1 1
      127 GETTABLEKS                       R1 R1 K14 ["FileSearch"]
      129 GETUPVAL                         R2 13
      130 GETTABLEKS                       R2 R2 K2 ["Type"]
      132 GETUPVAL                         R3 3
      133 CALL                             R0 3 0
      134 GETUPVAL                         R0 0
      135 GETTABLEKS                       R0 R0 K0 ["add"]
      137 GETUPVAL                         R1 1
      138 GETTABLEKS                       R1 R1 K15 ["FinalizePlan"]
      140 GETUPVAL                         R2 14
      141 GETTABLEKS                       R2 R2 K2 ["Type"]
      143 GETUPVAL                         R3 3
      144 CALL                             R0 3 0
      145 GETUPVAL                         R0 0
      146 GETTABLEKS                       R0 R0 K0 ["add"]
      148 GETUPVAL                         R1 1
      149 GETTABLEKS                       R1 R1 K16 ["FromHistory"]
      151 GETUPVAL                         R2 15
      152 GETTABLEKS                       R2 R2 K2 ["Type"]
      154 GETUPVAL                         R3 3
      155 CALL                             R0 3 0
      156 GETUPVAL                         R0 0
      157 GETTABLEKS                       R0 R0 K0 ["add"]
      159 GETUPVAL                         R1 1
      160 GETTABLEKS                       R1 R1 K17 ["GameTree"]
      162 GETUPVAL                         R2 16
      163 GETTABLEKS                       R2 R2 K2 ["Type"]
      165 GETUPVAL                         R3 3
      166 CALL                             R0 3 0
      167 GETUPVAL                         R0 0
      168 GETTABLEKS                       R0 R0 K0 ["add"]
      170 GETUPVAL                         R1 1
      171 GETTABLEKS                       R1 R1 K18 ["GenerateLayout"]
      173 LOADNIL                          R2
      174 GETUPVAL                         R3 3
      175 CALL                             R0 3 0
      176 GETUPVAL                         R0 0
      177 GETTABLEKS                       R0 R0 K0 ["add"]
      179 GETUPVAL                         R1 1
      180 GETTABLEKS                       R1 R1 K19 ["GetConsoleOutput"]
      182 LOADNIL                          R2
      183 GETUPVAL                         R3 3
      184 CALL                             R0 3 0
      185 GETUPVAL                         R0 0
      186 GETTABLEKS                       R0 R0 K0 ["add"]
      188 GETUPVAL                         R1 1
      189 GETTABLEKS                       R1 R1 K20 ["GetStudioState"]
      191 LOADNIL                          R2
      192 GETUPVAL                         R3 3
      193 CALL                             R0 3 0
      194 GETUPVAL                         R0 0
      195 GETTABLEKS                       R0 R0 K0 ["add"]
      197 GETUPVAL                         R1 1
      198 GETTABLEKS                       R1 R1 K21 ["GrepSearch"]
      200 GETUPVAL                         R2 17
      201 GETTABLEKS                       R2 R2 K2 ["Type"]
      203 GETUPVAL                         R3 3
      204 CALL                             R0 3 0
      205 GETUPVAL                         R0 0
      206 GETTABLEKS                       R0 R0 K0 ["add"]
      208 GETUPVAL                         R1 1
      209 GETTABLEKS                       R1 R1 K22 ["HttpGet"]
      211 GETUPVAL                         R2 18
      212 GETTABLEKS                       R2 R2 K2 ["Type"]
      214 GETUPVAL                         R3 3
      215 CALL                             R0 3 0
      216 GETUPVAL                         R0 0
      217 GETTABLEKS                       R0 R0 K0 ["add"]
      219 GETUPVAL                         R1 1
      220 GETTABLEKS                       R1 R1 K23 ["InspectInstance"]
      222 GETUPVAL                         R2 19
      223 GETTABLEKS                       R2 R2 K2 ["Type"]
      225 GETUPVAL                         R3 3
      226 CALL                             R0 3 0
      227 GETUPVAL                         R0 0
      228 GETTABLEKS                       R0 R0 K0 ["add"]
      230 GETUPVAL                         R1 1
      231 GETTABLEKS                       R1 R1 K24 ["JobWait"]
      233 GETUPVAL                         R2 20
      234 GETTABLEKS                       R2 R2 K2 ["Type"]
      236 GETUPVAL                         R3 3
      237 CALL                             R0 3 0
      238 GETUPVAL                         R0 0
      239 GETTABLEKS                       R0 R0 K0 ["add"]
      241 GETUPVAL                         R1 1
      242 GETTABLEKS                       R1 R1 K25 ["MaterialGen"]
      244 GETUPVAL                         R2 21
      245 GETTABLEKS                       R2 R2 K2 ["Type"]
      247 GETUPVAL                         R3 3
      248 CALL                             R0 3 0
      249 GETUPVAL                         R0 0
      250 GETTABLEKS                       R0 R0 K0 ["add"]
      252 GETUPVAL                         R1 1
      253 GETTABLEKS                       R1 R1 K26 ["MeshGen"]
      255 GETUPVAL                         R2 22
      256 GETTABLEKS                       R2 R2 K2 ["Type"]
      258 GETUPVAL                         R3 3
      259 CALL                             R0 3 0
      260 GETUPVAL                         R0 0
      261 GETTABLEKS                       R0 R0 K0 ["add"]
      263 GETUPVAL                         R1 1
      264 GETTABLEKS                       R1 R1 K27 ["SegmentMesh"]
      266 GETUPVAL                         R3 8
      267 GETTABLEKS                       R3 R3 K28 ["FFlagAssistantSegmentMeshTool"]
      269 JUMPIFNOT                        R3 ; [+4]
      270 GETUPVAL                         R2 23
      271 GETTABLEKS                       R2 R2 K2 ["Type"]
      273 JUMP                             ; [+1]
      274 LOADNIL                          R2
      275 GETUPVAL                         R3 3
      276 CALL                             R0 3 0
      277 GETUPVAL                         R0 0
      278 GETTABLEKS                       R0 R0 K0 ["add"]
      280 GETUPVAL                         R1 1
      281 GETTABLEKS                       R1 R1 K29 ["TextureGen"]
      283 GETUPVAL                         R3 8
      284 GETTABLEKS                       R3 R3 K30 ["FFlagAssistantTextureGenTool"]
      286 JUMPIFNOT                        R3 ; [+4]
      287 GETUPVAL                         R2 24
      288 GETTABLEKS                       R2 R2 K2 ["Type"]
      290 JUMP                             ; [+1]
      291 LOADNIL                          R2
      292 GETUPVAL                         R3 3
      293 CALL                             R0 3 0
      294 GETUPVAL                         R0 0
      295 GETTABLEKS                       R0 R0 K0 ["add"]
      297 GETUPVAL                         R1 1
      298 GETTABLEKS                       R1 R1 K31 ["MultiEdit"]
      300 LOADNIL                          R2
      301 GETUPVAL                         R3 3
      302 CALL                             R0 3 0
      303 GETUPVAL                         R0 0
      304 GETTABLEKS                       R0 R0 K0 ["add"]
      306 GETUPVAL                         R1 1
      307 GETTABLEKS                       R1 R1 K32 ["MultiPlayerAgentsCommunication"]
      309 LOADNIL                          R2
      310 GETUPVAL                         R3 3
      311 CALL                             R0 3 0
      312 GETUPVAL                         R0 0
      313 GETTABLEKS                       R0 R0 K0 ["add"]
      315 GETUPVAL                         R1 1
      316 GETTABLEKS                       R1 R1 K33 ["PlaytestLook"]
      318 LOADNIL                          R2
      319 GETUPVAL                         R3 3
      320 CALL                             R0 3 0
      321 GETUPVAL                         R0 0
      322 GETTABLEKS                       R0 R0 K0 ["add"]
      324 GETUPVAL                         R1 1
      325 GETTABLEKS                       R1 R1 K34 ["PrimitiveGen"]
      327 GETUPVAL                         R2 25
      328 GETTABLEKS                       R2 R2 K2 ["Type"]
      330 GETUPVAL                         R3 3
      331 CALL                             R0 3 0
      332 GETUPVAL                         R0 0
      333 GETTABLEKS                       R0 R0 K0 ["add"]
      335 GETUPVAL                         R1 1
      336 GETTABLEKS                       R1 R1 K35 ["QuestionAnswer"]
      338 GETUPVAL                         R2 26
      339 GETTABLEKS                       R2 R2 K2 ["Type"]
      341 GETUPVAL                         R3 3
      342 CALL                             R0 3 0
      343 GETUPVAL                         R0 0
      344 GETTABLEKS                       R0 R0 K0 ["add"]
      346 GETUPVAL                         R1 1
      347 GETTABLEKS                       R1 R1 K36 ["ReadFile"]
      349 GETUPVAL                         R2 27
      350 GETTABLEKS                       R2 R2 K2 ["Type"]
      352 GETUPVAL                         R3 3
      353 CALL                             R0 3 0
      354 GETUPVAL                         R0 0
      355 GETTABLEKS                       R0 R0 K0 ["add"]
      357 GETUPVAL                         R1 1
      358 GETTABLEKS                       R1 R1 K37 ["ScreenCapture"]
      360 GETUPVAL                         R2 9
      361 GETTABLEKS                       R2 R2 K2 ["Type"]
      363 GETUPVAL                         R3 3
      364 CALL                             R0 3 0
      365 GETUPVAL                         R0 0
      366 GETTABLEKS                       R0 R0 K0 ["add"]
      368 GETUPVAL                         R1 1
      369 GETTABLEKS                       R1 R1 K38 ["Skill"]
      371 GETUPVAL                         R2 28
      372 GETTABLEKS                       R2 R2 K2 ["Type"]
      374 GETUPVAL                         R3 3
      375 CALL                             R0 3 0
      376 GETUPVAL                         R0 0
      377 GETTABLEKS                       R0 R0 K0 ["add"]
      379 GETUPVAL                         R1 1
      380 GETTABLEKS                       R1 R1 K39 ["StartMultiPlayerAgents"]
      382 LOADNIL                          R2
      383 GETUPVAL                         R3 3
      384 CALL                             R0 3 0
      385 GETUPVAL                         R0 0
      386 GETTABLEKS                       R0 R0 K0 ["add"]
      388 GETUPVAL                         R1 1
      389 GETTABLEKS                       R1 R1 K40 ["StartStopPlay"]
      391 LOADNIL                          R2
      392 GETUPVAL                         R3 3
      393 CALL                             R0 3 0
      394 GETUPVAL                         R0 0
      395 GETTABLEKS                       R0 R0 K0 ["add"]
      397 GETUPVAL                         R1 1
      398 GETTABLEKS                       R1 R1 K41 ["StopMultiPlayerAgents"]
      400 LOADNIL                          R2
      401 GETUPVAL                         R3 3
      402 CALL                             R0 3 0
      403 GETUPVAL                         R0 0
      404 GETTABLEKS                       R0 R0 K0 ["add"]
      406 GETUPVAL                         R1 1
      407 GETTABLEKS                       R1 R1 K42 ["StoreImage"]
      409 LOADNIL                          R2
      410 GETUPVAL                         R3 3
      411 CALL                             R0 3 0
      412 GETUPVAL                         R0 0
      413 GETTABLEKS                       R0 R0 K0 ["add"]
      415 GETUPVAL                         R1 1
      416 GETTABLEKS                       R1 R1 K43 ["Subagent"]
      418 GETUPVAL                         R2 29
      419 GETTABLEKS                       R2 R2 K2 ["Type"]
      421 GETUPVAL                         R3 3
      422 CALL                             R0 3 0
      423 GETUPVAL                         R0 0
      424 GETTABLEKS                       R0 R0 K0 ["add"]
      426 GETUPVAL                         R1 1
      427 GETTABLEKS                       R1 R1 K44 ["UpdatePlan"]
      429 GETUPVAL                         R2 10
      430 GETUPVAL                         R3 3
      431 CALL                             R0 3 0
      432 GETUPVAL                         R0 0
      433 GETTABLEKS                       R0 R0 K0 ["add"]
      435 GETUPVAL                         R1 1
      436 GETTABLEKS                       R1 R1 K45 ["UploadImage"]
      438 LOADNIL                          R2
      439 GETUPVAL                         R3 3
      440 CALL                             R0 3 0
      441 GETUPVAL                         R0 0
      442 GETTABLEKS                       R0 R0 K0 ["add"]
      444 GETUPVAL                         R1 1
      445 GETTABLEKS                       R1 R1 K46 ["UserKeyboardInput"]
      447 LOADNIL                          R2
      448 GETUPVAL                         R3 3
      449 CALL                             R0 3 0
      450 GETUPVAL                         R0 0
      451 GETTABLEKS                       R0 R0 K0 ["add"]
      453 GETUPVAL                         R1 1
      454 GETTABLEKS                       R1 R1 K47 ["UserMouseInput"]
      456 LOADNIL                          R2
      457 GETUPVAL                         R3 3
      458 CALL                             R0 3 0
      459 GETUPVAL                         R0 0
      460 GETTABLEKS                       R0 R0 K0 ["add"]
      462 GETUPVAL                         R1 1
      463 GETTABLEKS                       R1 R1 K48 ["VideoCapture"]
      465 LOADNIL                          R2
      466 GETUPVAL                         R3 3
      467 CALL                             R0 3 0
      468 GETUPVAL                         R0 0
      469 GETTABLEKS                       R0 R0 K0 ["add"]
      471 GETUPVAL                         R1 1
      472 GETTABLEKS                       R1 R1 K49 ["WaitForMultiPlayerAgentsCommunication"]
      474 LOADNIL                          R2
      475 GETUPVAL                         R3 3
      476 CALL                             R0 3 0
      477 GETUPVAL                         R0 0
      478 GETTABLEKS                       R0 R0 K0 ["add"]
      480 GETUPVAL                         R1 1
      481 GETTABLEKS                       R1 R1 K50 ["ListPluginGuis"]
      483 LOADNIL                          R2
      484 GETUPVAL                         R3 3
      485 CALL                             R0 3 0
      486 GETUPVAL                         R0 0
      487 GETTABLEKS                       R0 R0 K0 ["add"]
      489 GETUPVAL                         R1 1
      490 GETTABLEKS                       R1 R1 K51 ["ListRobloxStudios"]
      492 GETUPVAL                         R2 10
      493 GETUPVAL                         R3 3
      494 CALL                             R0 3 0
      495 GETUPVAL                         R0 30
      496 CALL                             R0 0 1
      497 JUMPIFNOT                        R0 ; [+11]
      498 GETUPVAL                         R0 0
      499 GETTABLEKS                       R0 R0 K0 ["add"]
      501 GETUPVAL                         R1 1
      502 GETTABLEKS                       R1 R1 K52 ["CloudExecuteLuau"]
      504 GETUPVAL                         R2 12
      505 GETTABLEKS                       R2 R2 K2 ["Type"]
      507 GETUPVAL                         R3 3
      508 CALL                             R0 3 0
      509 GETUPVAL                         R0 31
      510 CALL                             R0 0 1
      511 LENGTH                           R1 R0
      512 LOADN                            R2 0
      513 JUMPIFNOTLT                      R2 R1 ; [+13]
      515 GETUPVAL                         R1 8
      516 GETTABLEKS                       R1 R1 K53 ["FFlagDebugLogAssistantUI"]
      518 JUMPIFNOT                        R1 ; [+8]
      519 GETIMPORT                        R1 K55 [print]
      521 LOADK                            R2 K56 ["[registerToolWidgetMappings] Applying %* FString mapping(s)"]
      522 LENGTH                           R4 R0
      523 NAMECALL                         R2 R2 K57 ["format"]
      525 CALL                             R2 2 1
      526 CALL                             R1 1 0
      527 MOVE                             R1 R0
      528 LOADNIL                          R2
      529 LOADNIL                          R3
      530 FORGPREP                         R1
      531 GETUPVAL                         R6 0
      532 GETTABLEKS                       R6 R6 K0 ["add"]
      534 GETTABLEKS                       R7 R5 K58 ["toolName"]
      536 GETTABLEKS                       R8 R5 K59 ["widgetType"]
      538 GETUPVAL                         R9 32
      539 GETTABLEKS                       R9 R9 K60 ["FString"]
      541 CALL                             R6 3 0
      542 FORGLOOP                         R1 2 ; [-12]
      544 GETUPVAL                         R1 8
      545 GETTABLEKS                       R1 R1 K53 ["FFlagDebugLogAssistantUI"]
      547 JUMPIFNOT                        R1 ; [+37]
      548 GETUPVAL                         R1 1
      549 LOADNIL                          R2
      550 LOADNIL                          R3
      551 FORGPREP                         R1
      552 FASTCALL1                        TYPEOF R5 ; [+3]
      553 MOVE                             R7 R5
      554 GETIMPORT                        R6 K62 [typeof]
      556 CALL                             R6 1 1
      557 JUMPIFNOTEQKS                    R6 K63 ["string"] ; [+25]
      559 GETUPVAL                         R6 30
      560 CALL                             R6 0 1
      561 JUMPIF                           R6 ; [+6]
      562 GETUPVAL                         R6 33
      563 GETTABLEKS                       R6 R6 K64 ["isCloudTool"]
      565 MOVE                             R7 R5
      566 CALL                             R6 1 1
      567 JUMPIF                           R6 ; [+15]
      568 GETUPVAL                         R6 0
      569 GETTABLEKS                       R6 R6 K65 ["get"]
      571 MOVE                             R7 R5
      572 CALL                             R6 1 1
      573 JUMPIF                           R6 ; [+9]
      574 GETIMPORT                        R6 K67 [error]
      576 LOADK                            R7 K68 ["[registerToolWidgetMappings] No widget mapping found for tool \"%*\""]
      577 MOVE                             R9 R5
      578 NAMECALL                         R7 R7 K57 ["format"]
      580 CALL                             R7 2 1
      581 LOADN                            R8 0
      582 CALL                             R6 2 0
      583 FORGLOOP                         R1 2 ; [-32]
      585 RETURN                           R0 0

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
      105 GETTABLEKS                       R14 R14 K26 ["FileSearchContentWidget"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K19 ["Components"]
      112 GETTABLEKS                       R15 R15 K14 ["ContentWidgets"]
      114 GETTABLEKS                       R15 R15 K27 ["FinalizePlanContentWidget"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R0 K19 ["Components"]
      121 GETTABLEKS                       R16 R16 K14 ["ContentWidgets"]
      123 GETTABLEKS                       R16 R16 K28 ["FromHistoryContentWidget"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R17 R0 K19 ["Components"]
      130 GETTABLEKS                       R17 R17 K14 ["ContentWidgets"]
      132 GETTABLEKS                       R17 R17 K29 ["GameTreeContentWidget"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K5 [require]
      137 GETTABLEKS                       R18 R0 K19 ["Components"]
      139 GETTABLEKS                       R18 R18 K14 ["ContentWidgets"]
      141 GETTABLEKS                       R18 R18 K30 ["GrepSearchContentWidget"]
      143 CALL                             R17 1 1
      144 GETIMPORT                        R18 K5 [require]
      146 GETTABLEKS                       R19 R0 K19 ["Components"]
      148 GETTABLEKS                       R19 R19 K14 ["ContentWidgets"]
      150 GETTABLEKS                       R19 R19 K31 ["HttpGetContentWidget"]
      152 CALL                             R18 1 1
      153 GETIMPORT                        R19 K5 [require]
      155 GETTABLEKS                       R20 R0 K19 ["Components"]
      157 GETTABLEKS                       R20 R20 K14 ["ContentWidgets"]
      159 GETTABLEKS                       R20 R20 K32 ["InspectInstanceContentWidget"]
      161 CALL                             R19 1 1
      162 GETIMPORT                        R20 K5 [require]
      164 GETTABLEKS                       R21 R0 K19 ["Components"]
      166 GETTABLEKS                       R21 R21 K14 ["ContentWidgets"]
      168 GETTABLEKS                       R21 R21 K33 ["JobWaitContentWidget"]
      170 CALL                             R20 1 1
      171 GETIMPORT                        R21 K5 [require]
      173 GETTABLEKS                       R22 R0 K19 ["Components"]
      175 GETTABLEKS                       R22 R22 K14 ["ContentWidgets"]
      177 GETTABLEKS                       R22 R22 K34 ["MaterialGenContentWidget"]
      179 CALL                             R21 1 1
      180 GETIMPORT                        R22 K5 [require]
      182 GETTABLEKS                       R23 R0 K19 ["Components"]
      184 GETTABLEKS                       R23 R23 K14 ["ContentWidgets"]
      186 GETTABLEKS                       R23 R23 K35 ["MeshGenContentWidget"]
      188 CALL                             R22 1 1
      189 GETIMPORT                        R23 K5 [require]
      191 GETTABLEKS                       R24 R0 K19 ["Components"]
      193 GETTABLEKS                       R24 R24 K14 ["ContentWidgets"]
      195 GETTABLEKS                       R24 R24 K36 ["PrimitiveGenContentWidget"]
      197 CALL                             R23 1 1
      198 GETIMPORT                        R24 K5 [require]
      200 GETTABLEKS                       R25 R0 K19 ["Components"]
      202 GETTABLEKS                       R25 R25 K14 ["ContentWidgets"]
      204 GETTABLEKS                       R25 R25 K37 ["QuestionAnswerContentWidget"]
      206 CALL                             R24 1 1
      207 GETIMPORT                        R25 K5 [require]
      209 GETTABLEKS                       R26 R0 K19 ["Components"]
      211 GETTABLEKS                       R26 R26 K14 ["ContentWidgets"]
      213 GETTABLEKS                       R26 R26 K38 ["ReadFileContentWidget"]
      215 CALL                             R25 1 1
      216 GETIMPORT                        R26 K5 [require]
      218 GETTABLEKS                       R27 R0 K19 ["Components"]
      220 GETTABLEKS                       R27 R27 K14 ["ContentWidgets"]
      222 GETTABLEKS                       R27 R27 K39 ["RunCodeContentWidget"]
      224 CALL                             R26 1 1
      225 GETIMPORT                        R27 K5 [require]
      227 GETTABLEKS                       R28 R0 K19 ["Components"]
      229 GETTABLEKS                       R28 R28 K14 ["ContentWidgets"]
      231 GETTABLEKS                       R28 R28 K40 ["ScreenCaptureContentWidget"]
      233 CALL                             R27 1 1
      234 GETIMPORT                        R28 K5 [require]
      236 GETTABLEKS                       R29 R0 K19 ["Components"]
      238 GETTABLEKS                       R29 R29 K14 ["ContentWidgets"]
      240 GETTABLEKS                       R29 R29 K41 ["SegmentMeshContentWidget"]
      242 CALL                             R28 1 1
      243 GETIMPORT                        R29 K5 [require]
      245 GETTABLEKS                       R30 R0 K19 ["Components"]
      247 GETTABLEKS                       R30 R30 K14 ["ContentWidgets"]
      249 GETTABLEKS                       R30 R30 K42 ["SkillContentWidget"]
      251 CALL                             R29 1 1
      252 GETIMPORT                        R30 K5 [require]
      254 GETTABLEKS                       R31 R0 K19 ["Components"]
      256 GETTABLEKS                       R31 R31 K14 ["ContentWidgets"]
      258 GETTABLEKS                       R31 R31 K43 ["SubagentContentWidget"]
      260 CALL                             R30 1 1
      261 GETIMPORT                        R31 K5 [require]
      263 GETTABLEKS                       R32 R0 K19 ["Components"]
      265 GETTABLEKS                       R32 R32 K14 ["ContentWidgets"]
      267 GETTABLEKS                       R32 R32 K44 ["TextureGenContentWidget"]
      269 CALL                             R31 1 1
      270 GETTABLEKS                       R32 R5 K45 ["MappingSource"]
      272 GETTABLEKS                       R33 R32 K46 ["Hardcoded"]
      274 GETTABLEKS                       R34 R5 K47 ["None"]
      276 DUPCLOSURE                       R35 K48 [PROTO_1]
      277 CAPTURE                          VAL R2
      278 DUPCLOSURE                       R36 K49 [PROTO_2]
      279 CAPTURE                          VAL R5
      280 CAPTURE                          VAL R3
      281 CAPTURE                          VAL R7
      282 CAPTURE                          VAL R33
      283 CAPTURE                          VAL R8
      284 CAPTURE                          VAL R9
      285 CAPTURE                          VAL R10
      286 CAPTURE                          VAL R11
      287 CAPTURE                          VAL R2
      288 CAPTURE                          VAL R27
      289 CAPTURE                          VAL R34
      290 CAPTURE                          VAL R12
      291 CAPTURE                          VAL R26
      292 CAPTURE                          VAL R13
      293 CAPTURE                          VAL R14
      294 CAPTURE                          VAL R15
      295 CAPTURE                          VAL R16
      296 CAPTURE                          VAL R17
      297 CAPTURE                          VAL R18
      298 CAPTURE                          VAL R19
      299 CAPTURE                          VAL R20
      300 CAPTURE                          VAL R21
      301 CAPTURE                          VAL R22
      302 CAPTURE                          VAL R28
      303 CAPTURE                          VAL R31
      304 CAPTURE                          VAL R23
      305 CAPTURE                          VAL R24
      306 CAPTURE                          VAL R25
      307 CAPTURE                          VAL R29
      308 CAPTURE                          VAL R30
      309 CAPTURE                          VAL R6
      310 CAPTURE                          VAL R35
      311 CAPTURE                          VAL R32
      312 CAPTURE                          VAL R4
      313 RETURN                           R36 1
