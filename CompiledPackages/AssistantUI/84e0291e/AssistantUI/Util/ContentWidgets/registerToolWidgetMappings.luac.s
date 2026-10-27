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
       59 GETTABLEKS                       R1 R1 K7 ["AvatarGen"]
       61 LOADNIL                          R2
       62 GETUPVAL                         R3 3
       63 CALL                             R0 3 0
       64 GETUPVAL                         R0 0
       65 GETTABLEKS                       R0 R0 K0 ["add"]
       67 GETUPVAL                         R1 1
       68 GETTABLEKS                       R1 R1 K8 ["CapturePluginGui"]
       70 GETUPVAL                         R3 8
       71 GETTABLEKS                       R3 R3 K9 ["FFlagAssistantCapturePluginGuiTool"]
       73 JUMPIFNOT                        R3 ; [+4]
       74 GETUPVAL                         R2 9
       75 GETTABLEKS                       R2 R2 K2 ["Type"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R2
       79 GETUPVAL                         R3 3
       80 CALL                             R0 3 0
       81 GETUPVAL                         R0 0
       82 GETTABLEKS                       R0 R0 K0 ["add"]
       84 GETUPVAL                         R1 1
       85 GETTABLEKS                       R1 R1 K10 ["CharacterNavigation"]
       87 LOADNIL                          R2
       88 GETUPVAL                         R3 3
       89 CALL                             R0 3 0
       90 GETUPVAL                         R0 0
       91 GETTABLEKS                       R0 R0 K0 ["add"]
       93 GETUPVAL                         R1 1
       94 GETTABLEKS                       R1 R1 K11 ["CompleteTodoItems"]
       96 GETUPVAL                         R2 10
       97 GETUPVAL                         R3 3
       98 CALL                             R0 3 0
       99 GETUPVAL                         R0 0
      100 GETTABLEKS                       R0 R0 K0 ["add"]
      102 GETUPVAL                         R1 1
      103 GETTABLEKS                       R1 R1 K12 ["CreateSkill"]
      105 GETUPVAL                         R2 11
      106 GETTABLEKS                       R2 R2 K2 ["Type"]
      108 GETUPVAL                         R3 3
      109 CALL                             R0 3 0
      110 GETUPVAL                         R0 0
      111 GETTABLEKS                       R0 R0 K0 ["add"]
      113 GETUPVAL                         R1 1
      114 GETTABLEKS                       R1 R1 K13 ["EditSkill"]
      116 GETUPVAL                         R2 11
      117 GETTABLEKS                       R2 R2 K2 ["Type"]
      119 GETUPVAL                         R3 3
      120 CALL                             R0 3 0
      121 GETUPVAL                         R0 0
      122 GETTABLEKS                       R0 R0 K0 ["add"]
      124 GETUPVAL                         R1 1
      125 GETTABLEKS                       R1 R1 K14 ["ExecuteLuau"]
      127 GETUPVAL                         R2 12
      128 GETTABLEKS                       R2 R2 K2 ["Type"]
      130 GETUPVAL                         R3 3
      131 CALL                             R0 3 0
      132 GETUPVAL                         R0 0
      133 GETTABLEKS                       R0 R0 K0 ["add"]
      135 GETUPVAL                         R1 1
      136 GETTABLEKS                       R1 R1 K15 ["FileSearch"]
      138 GETUPVAL                         R2 13
      139 GETTABLEKS                       R2 R2 K2 ["Type"]
      141 GETUPVAL                         R3 3
      142 CALL                             R0 3 0
      143 GETUPVAL                         R0 0
      144 GETTABLEKS                       R0 R0 K0 ["add"]
      146 GETUPVAL                         R1 1
      147 GETTABLEKS                       R1 R1 K16 ["FinalizePlan"]
      149 GETUPVAL                         R2 14
      150 GETTABLEKS                       R2 R2 K2 ["Type"]
      152 GETUPVAL                         R3 3
      153 CALL                             R0 3 0
      154 GETUPVAL                         R0 0
      155 GETTABLEKS                       R0 R0 K0 ["add"]
      157 GETUPVAL                         R1 1
      158 GETTABLEKS                       R1 R1 K17 ["FromHistory"]
      160 GETUPVAL                         R2 15
      161 GETTABLEKS                       R2 R2 K2 ["Type"]
      163 GETUPVAL                         R3 3
      164 CALL                             R0 3 0
      165 GETUPVAL                         R0 0
      166 GETTABLEKS                       R0 R0 K0 ["add"]
      168 GETUPVAL                         R1 1
      169 GETTABLEKS                       R1 R1 K18 ["GameTree"]
      171 GETUPVAL                         R2 16
      172 GETTABLEKS                       R2 R2 K2 ["Type"]
      174 GETUPVAL                         R3 3
      175 CALL                             R0 3 0
      176 GETUPVAL                         R0 0
      177 GETTABLEKS                       R0 R0 K0 ["add"]
      179 GETUPVAL                         R1 1
      180 GETTABLEKS                       R1 R1 K19 ["GenerateScene"]
      182 LOADNIL                          R2
      183 GETUPVAL                         R3 3
      184 CALL                             R0 3 0
      185 GETUPVAL                         R0 0
      186 GETTABLEKS                       R0 R0 K0 ["add"]
      188 GETUPVAL                         R1 1
      189 GETTABLEKS                       R1 R1 K20 ["GetConsoleOutput"]
      191 LOADNIL                          R2
      192 GETUPVAL                         R3 3
      193 CALL                             R0 3 0
      194 GETUPVAL                         R0 0
      195 GETTABLEKS                       R0 R0 K0 ["add"]
      197 GETUPVAL                         R1 1
      198 GETTABLEKS                       R1 R1 K21 ["GetStudioState"]
      200 LOADNIL                          R2
      201 GETUPVAL                         R3 3
      202 CALL                             R0 3 0
      203 GETUPVAL                         R0 0
      204 GETTABLEKS                       R0 R0 K0 ["add"]
      206 GETUPVAL                         R1 1
      207 GETTABLEKS                       R1 R1 K22 ["GrepSearch"]
      209 GETUPVAL                         R2 17
      210 GETTABLEKS                       R2 R2 K2 ["Type"]
      212 GETUPVAL                         R3 3
      213 CALL                             R0 3 0
      214 GETUPVAL                         R0 0
      215 GETTABLEKS                       R0 R0 K0 ["add"]
      217 GETUPVAL                         R1 1
      218 GETTABLEKS                       R1 R1 K23 ["HttpGet"]
      220 GETUPVAL                         R2 18
      221 GETTABLEKS                       R2 R2 K2 ["Type"]
      223 GETUPVAL                         R3 3
      224 CALL                             R0 3 0
      225 GETUPVAL                         R0 0
      226 GETTABLEKS                       R0 R0 K0 ["add"]
      228 GETUPVAL                         R1 1
      229 GETTABLEKS                       R1 R1 K24 ["InspectInstance"]
      231 GETUPVAL                         R2 19
      232 GETTABLEKS                       R2 R2 K2 ["Type"]
      234 GETUPVAL                         R3 3
      235 CALL                             R0 3 0
      236 GETUPVAL                         R0 0
      237 GETTABLEKS                       R0 R0 K0 ["add"]
      239 GETUPVAL                         R1 1
      240 GETTABLEKS                       R1 R1 K25 ["JobWait"]
      242 GETUPVAL                         R2 20
      243 GETTABLEKS                       R2 R2 K2 ["Type"]
      245 GETUPVAL                         R3 3
      246 CALL                             R0 3 0
      247 GETUPVAL                         R0 0
      248 GETTABLEKS                       R0 R0 K0 ["add"]
      250 GETUPVAL                         R1 1
      251 GETTABLEKS                       R1 R1 K26 ["MaterialGen"]
      253 GETUPVAL                         R2 21
      254 GETTABLEKS                       R2 R2 K2 ["Type"]
      256 GETUPVAL                         R3 3
      257 CALL                             R0 3 0
      258 GETUPVAL                         R0 0
      259 GETTABLEKS                       R0 R0 K0 ["add"]
      261 GETUPVAL                         R1 1
      262 GETTABLEKS                       R1 R1 K27 ["MeshGen"]
      264 GETUPVAL                         R2 22
      265 GETTABLEKS                       R2 R2 K2 ["Type"]
      267 GETUPVAL                         R3 3
      268 CALL                             R0 3 0
      269 GETUPVAL                         R0 0
      270 GETTABLEKS                       R0 R0 K0 ["add"]
      272 GETUPVAL                         R1 1
      273 GETTABLEKS                       R1 R1 K28 ["SegmentMesh"]
      275 GETUPVAL                         R3 8
      276 GETTABLEKS                       R3 R3 K29 ["FFlagAssistantSegmentMeshTool"]
      278 JUMPIFNOT                        R3 ; [+4]
      279 GETUPVAL                         R2 23
      280 GETTABLEKS                       R2 R2 K2 ["Type"]
      282 JUMP                             ; [+1]
      283 LOADNIL                          R2
      284 GETUPVAL                         R3 3
      285 CALL                             R0 3 0
      286 GETUPVAL                         R0 0
      287 GETTABLEKS                       R0 R0 K0 ["add"]
      289 GETUPVAL                         R1 1
      290 GETTABLEKS                       R1 R1 K30 ["TextureGen"]
      292 GETUPVAL                         R3 8
      293 GETTABLEKS                       R3 R3 K31 ["FFlagAssistantTextureGenTool"]
      295 JUMPIFNOT                        R3 ; [+4]
      296 GETUPVAL                         R2 24
      297 GETTABLEKS                       R2 R2 K2 ["Type"]
      299 JUMP                             ; [+1]
      300 LOADNIL                          R2
      301 GETUPVAL                         R3 3
      302 CALL                             R0 3 0
      303 GETUPVAL                         R0 0
      304 GETTABLEKS                       R0 R0 K0 ["add"]
      306 GETUPVAL                         R1 1
      307 GETTABLEKS                       R1 R1 K32 ["MultiEdit"]
      309 LOADNIL                          R2
      310 GETUPVAL                         R3 3
      311 CALL                             R0 3 0
      312 GETUPVAL                         R0 0
      313 GETTABLEKS                       R0 R0 K0 ["add"]
      315 GETUPVAL                         R1 1
      316 GETTABLEKS                       R1 R1 K33 ["MultiPlayerAgentsCommunication"]
      318 LOADNIL                          R2
      319 GETUPVAL                         R3 3
      320 CALL                             R0 3 0
      321 GETUPVAL                         R0 0
      322 GETTABLEKS                       R0 R0 K0 ["add"]
      324 GETUPVAL                         R1 1
      325 GETTABLEKS                       R1 R1 K34 ["OpenCloudInvoke"]
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
      345 GETUPVAL                         R2 25
      346 GETTABLEKS                       R2 R2 K2 ["Type"]
      348 GETUPVAL                         R3 3
      349 CALL                             R0 3 0
      350 GETUPVAL                         R0 0
      351 GETTABLEKS                       R0 R0 K0 ["add"]
      353 GETUPVAL                         R1 1
      354 GETTABLEKS                       R1 R1 K37 ["QuestionAnswer"]
      356 GETUPVAL                         R2 26
      357 GETTABLEKS                       R2 R2 K2 ["Type"]
      359 GETUPVAL                         R3 3
      360 CALL                             R0 3 0
      361 GETUPVAL                         R0 0
      362 GETTABLEKS                       R0 R0 K0 ["add"]
      364 GETUPVAL                         R1 1
      365 GETTABLEKS                       R1 R1 K38 ["ReadFile"]
      367 GETUPVAL                         R2 27
      368 GETTABLEKS                       R2 R2 K2 ["Type"]
      370 GETUPVAL                         R3 3
      371 CALL                             R0 3 0
      372 GETUPVAL                         R0 0
      373 GETTABLEKS                       R0 R0 K0 ["add"]
      375 GETUPVAL                         R1 1
      376 GETTABLEKS                       R1 R1 K39 ["ScreenCapture"]
      378 GETUPVAL                         R2 9
      379 GETTABLEKS                       R2 R2 K2 ["Type"]
      381 GETUPVAL                         R3 3
      382 CALL                             R0 3 0
      383 GETUPVAL                         R0 0
      384 GETTABLEKS                       R0 R0 K0 ["add"]
      386 GETUPVAL                         R1 1
      387 GETTABLEKS                       R1 R1 K40 ["Skill"]
      389 GETUPVAL                         R2 28
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
      436 GETUPVAL                         R2 29
      437 GETTABLEKS                       R2 R2 K2 ["Type"]
      439 GETUPVAL                         R3 3
      440 CALL                             R0 3 0
      441 GETUPVAL                         R0 0
      442 GETTABLEKS                       R0 R0 K0 ["add"]
      444 GETUPVAL                         R1 1
      445 GETTABLEKS                       R1 R1 K46 ["UpdatePlan"]
      447 GETUPVAL                         R2 10
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
      499 GETTABLEKS                       R1 R1 K52 ["ListPluginGuis"]
      501 LOADNIL                          R2
      502 GETUPVAL                         R3 3
      503 CALL                             R0 3 0
      504 GETUPVAL                         R0 0
      505 GETTABLEKS                       R0 R0 K0 ["add"]
      507 GETUPVAL                         R1 1
      508 GETTABLEKS                       R1 R1 K53 ["ListRobloxStudios"]
      510 GETUPVAL                         R2 10
      511 GETUPVAL                         R3 3
      512 CALL                             R0 3 0
      513 GETUPVAL                         R0 0
      514 GETTABLEKS                       R0 R0 K0 ["add"]
      516 GETUPVAL                         R1 1
      517 GETTABLEKS                       R1 R1 K54 ["ListSkills"]
      519 GETUPVAL                         R2 10
      520 GETUPVAL                         R3 3
      521 CALL                             R0 3 0
      522 GETUPVAL                         R0 30
      523 CALL                             R0 0 1
      524 JUMPIFNOT                        R0 ; [+11]
      525 GETUPVAL                         R0 0
      526 GETTABLEKS                       R0 R0 K0 ["add"]
      528 GETUPVAL                         R1 1
      529 GETTABLEKS                       R1 R1 K55 ["CloudExecuteLuau"]
      531 GETUPVAL                         R2 12
      532 GETTABLEKS                       R2 R2 K2 ["Type"]
      534 GETUPVAL                         R3 3
      535 CALL                             R0 3 0
      536 GETUPVAL                         R0 31
      537 CALL                             R0 0 1
      538 LENGTH                           R1 R0
      539 LOADN                            R2 0
      540 JUMPIFNOTLT                      R2 R1 ; [+13]
      542 GETUPVAL                         R1 8
      543 GETTABLEKS                       R1 R1 K56 ["FFlagDebugLogAssistantUI"]
      545 JUMPIFNOT                        R1 ; [+8]
      546 GETIMPORT                        R1 K58 [print]
      548 LOADK                            R2 K59 ["[registerToolWidgetMappings] Applying %* FString mapping(s)"]
      549 LENGTH                           R4 R0
      550 NAMECALL                         R2 R2 K60 ["format"]
      552 CALL                             R2 2 1
      553 CALL                             R1 1 0
      554 MOVE                             R1 R0
      555 LOADNIL                          R2
      556 LOADNIL                          R3
      557 FORGPREP                         R1
      558 GETUPVAL                         R6 0
      559 GETTABLEKS                       R6 R6 K0 ["add"]
      561 GETTABLEKS                       R7 R5 K61 ["toolName"]
      563 GETTABLEKS                       R8 R5 K62 ["widgetType"]
      565 GETUPVAL                         R9 32
      566 GETTABLEKS                       R9 R9 K63 ["FString"]
      568 CALL                             R6 3 0
      569 FORGLOOP                         R1 2 ; [-12]
      571 GETUPVAL                         R1 8
      572 GETTABLEKS                       R1 R1 K56 ["FFlagDebugLogAssistantUI"]
      574 JUMPIFNOT                        R1 ; [+37]
      575 GETUPVAL                         R1 1
      576 LOADNIL                          R2
      577 LOADNIL                          R3
      578 FORGPREP                         R1
      579 FASTCALL1                        TYPEOF R5 ; [+3]
      580 MOVE                             R7 R5
      581 GETIMPORT                        R6 K65 [typeof]
      583 CALL                             R6 1 1
      584 JUMPIFNOTEQKS                    R6 K66 ["string"] ; [+25]
      586 GETUPVAL                         R6 30
      587 CALL                             R6 0 1
      588 JUMPIF                           R6 ; [+6]
      589 GETUPVAL                         R6 33
      590 GETTABLEKS                       R6 R6 K67 ["isCloudTool"]
      592 MOVE                             R7 R5
      593 CALL                             R6 1 1
      594 JUMPIF                           R6 ; [+15]
      595 GETUPVAL                         R6 0
      596 GETTABLEKS                       R6 R6 K68 ["get"]
      598 MOVE                             R7 R5
      599 CALL                             R6 1 1
      600 JUMPIF                           R6 ; [+9]
      601 GETIMPORT                        R6 K70 [error]
      603 LOADK                            R7 K71 ["[registerToolWidgetMappings] No widget mapping found for tool \"%*\""]
      604 MOVE                             R9 R5
      605 NAMECALL                         R7 R7 K60 ["format"]
      607 CALL                             R7 2 1
      608 LOADN                            R8 0
      609 CALL                             R6 2 0
      610 FORGLOOP                         R1 2 ; [-32]
      612 RETURN                           R0 0

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
