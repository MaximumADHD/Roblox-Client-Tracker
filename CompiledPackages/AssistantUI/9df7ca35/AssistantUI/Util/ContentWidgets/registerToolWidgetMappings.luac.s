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
        4 GETTABLEKS                       R1 R1 K1 ["OpenPlugin"]
        6 LOADNIL                          R2
        7 GETUPVAL                         R3 2
        8 CALL                             R0 3 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["add"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K2 ["AnimationGen"]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K3 ["Type"]
       18 GETUPVAL                         R3 2
       19 CALL                             R0 3 0
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K0 ["add"]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K4 ["AskInput"]
       26 GETUPVAL                         R2 4
       27 GETTABLEKS                       R2 R2 K3 ["Type"]
       29 GETUPVAL                         R3 2
       30 CALL                             R0 3 0
       31 GETUPVAL                         R0 0
       32 GETTABLEKS                       R0 R0 K0 ["add"]
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K5 ["AssetInsert"]
       37 GETUPVAL                         R2 5
       38 GETTABLEKS                       R2 R2 K3 ["Type"]
       40 GETUPVAL                         R3 2
       41 CALL                             R0 3 0
       42 GETUPVAL                         R0 0
       43 GETTABLEKS                       R0 R0 K0 ["add"]
       45 GETUPVAL                         R1 1
       46 GETTABLEKS                       R1 R1 K6 ["AssetQuality"]
       48 LOADNIL                          R2
       49 GETUPVAL                         R3 2
       50 CALL                             R0 3 0
       51 GETUPVAL                         R0 0
       52 GETTABLEKS                       R0 R0 K0 ["add"]
       54 GETUPVAL                         R1 1
       55 GETTABLEKS                       R1 R1 K7 ["AssetSearch"]
       57 GETUPVAL                         R2 6
       58 GETTABLEKS                       R2 R2 K3 ["Type"]
       60 GETUPVAL                         R3 2
       61 CALL                             R0 3 0
       62 GETUPVAL                         R0 0
       63 GETTABLEKS                       R0 R0 K0 ["add"]
       65 GETUPVAL                         R1 1
       66 GETTABLEKS                       R1 R1 K8 ["AvatarAutoSetup"]
       68 GETUPVAL                         R2 7
       69 GETTABLEKS                       R2 R2 K3 ["Type"]
       71 GETUPVAL                         R3 2
       72 CALL                             R0 3 0
       73 GETUPVAL                         R0 0
       74 GETTABLEKS                       R0 R0 K0 ["add"]
       76 GETUPVAL                         R1 1
       77 GETTABLEKS                       R1 R1 K9 ["AvatarGen"]
       79 LOADNIL                          R2
       80 GETUPVAL                         R3 2
       81 CALL                             R0 3 0
       82 GETUPVAL                         R0 0
       83 GETTABLEKS                       R0 R0 K0 ["add"]
       85 GETUPVAL                         R1 1
       86 GETTABLEKS                       R1 R1 K10 ["CapturePluginGui"]
       88 GETUPVAL                         R3 8
       89 GETTABLEKS                       R3 R3 K11 ["FFlagAssistantCapturePluginGuiTool"]
       91 JUMPIFNOT                        R3 ; [+4]
       92 GETUPVAL                         R2 9
       93 GETTABLEKS                       R2 R2 K3 ["Type"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R2
       97 GETUPVAL                         R3 2
       98 CALL                             R0 3 0
       99 GETUPVAL                         R0 0
      100 GETTABLEKS                       R0 R0 K0 ["add"]
      102 GETUPVAL                         R1 1
      103 GETTABLEKS                       R1 R1 K12 ["CharacterNavigation"]
      105 LOADNIL                          R2
      106 GETUPVAL                         R3 2
      107 CALL                             R0 3 0
      108 GETUPVAL                         R0 0
      109 GETTABLEKS                       R0 R0 K0 ["add"]
      111 GETUPVAL                         R1 1
      112 GETTABLEKS                       R1 R1 K13 ["CompleteTodoItems"]
      114 GETUPVAL                         R2 10
      115 GETUPVAL                         R3 2
      116 CALL                             R0 3 0
      117 GETUPVAL                         R0 0
      118 GETTABLEKS                       R0 R0 K0 ["add"]
      120 GETUPVAL                         R1 1
      121 GETTABLEKS                       R1 R1 K14 ["CreateSkill"]
      123 GETUPVAL                         R2 11
      124 GETTABLEKS                       R2 R2 K3 ["Type"]
      126 GETUPVAL                         R3 2
      127 CALL                             R0 3 0
      128 GETUPVAL                         R0 0
      129 GETTABLEKS                       R0 R0 K0 ["add"]
      131 GETUPVAL                         R1 1
      132 GETTABLEKS                       R1 R1 K15 ["EditSkill"]
      134 GETUPVAL                         R2 11
      135 GETTABLEKS                       R2 R2 K3 ["Type"]
      137 GETUPVAL                         R3 2
      138 CALL                             R0 3 0
      139 GETUPVAL                         R0 0
      140 GETTABLEKS                       R0 R0 K0 ["add"]
      142 GETUPVAL                         R1 1
      143 GETTABLEKS                       R1 R1 K16 ["ExecuteLuau"]
      145 GETUPVAL                         R2 12
      146 GETTABLEKS                       R2 R2 K3 ["Type"]
      148 GETUPVAL                         R3 2
      149 CALL                             R0 3 0
      150 GETUPVAL                         R0 0
      151 GETTABLEKS                       R0 R0 K0 ["add"]
      153 GETUPVAL                         R1 1
      154 GETTABLEKS                       R1 R1 K17 ["FileSearch"]
      156 GETUPVAL                         R2 13
      157 GETTABLEKS                       R2 R2 K3 ["Type"]
      159 GETUPVAL                         R3 2
      160 CALL                             R0 3 0
      161 GETUPVAL                         R0 0
      162 GETTABLEKS                       R0 R0 K0 ["add"]
      164 GETUPVAL                         R1 1
      165 GETTABLEKS                       R1 R1 K18 ["FinalizePlan"]
      167 GETUPVAL                         R2 14
      168 GETTABLEKS                       R2 R2 K3 ["Type"]
      170 GETUPVAL                         R3 2
      171 CALL                             R0 3 0
      172 GETUPVAL                         R0 0
      173 GETTABLEKS                       R0 R0 K0 ["add"]
      175 GETUPVAL                         R1 1
      176 GETTABLEKS                       R1 R1 K19 ["FromHistory"]
      178 GETUPVAL                         R2 15
      179 GETTABLEKS                       R2 R2 K3 ["Type"]
      181 GETUPVAL                         R3 2
      182 CALL                             R0 3 0
      183 GETUPVAL                         R0 0
      184 GETTABLEKS                       R0 R0 K0 ["add"]
      186 GETUPVAL                         R1 1
      187 GETTABLEKS                       R1 R1 K20 ["GameTree"]
      189 GETUPVAL                         R2 16
      190 GETTABLEKS                       R2 R2 K3 ["Type"]
      192 GETUPVAL                         R3 2
      193 CALL                             R0 3 0
      194 GETUPVAL                         R0 0
      195 GETTABLEKS                       R0 R0 K0 ["add"]
      197 GETUPVAL                         R1 1
      198 GETTABLEKS                       R1 R1 K21 ["GenerateScene"]
      200 LOADNIL                          R2
      201 GETUPVAL                         R3 2
      202 CALL                             R0 3 0
      203 GETUPVAL                         R0 0
      204 GETTABLEKS                       R0 R0 K0 ["add"]
      206 GETUPVAL                         R1 1
      207 GETTABLEKS                       R1 R1 K22 ["GetConsoleOutput"]
      209 LOADNIL                          R2
      210 GETUPVAL                         R3 2
      211 CALL                             R0 3 0
      212 GETUPVAL                         R0 0
      213 GETTABLEKS                       R0 R0 K0 ["add"]
      215 GETUPVAL                         R1 1
      216 GETTABLEKS                       R1 R1 K23 ["GetStudioState"]
      218 LOADNIL                          R2
      219 GETUPVAL                         R3 2
      220 CALL                             R0 3 0
      221 GETUPVAL                         R0 0
      222 GETTABLEKS                       R0 R0 K0 ["add"]
      224 GETUPVAL                         R1 1
      225 GETTABLEKS                       R1 R1 K24 ["GrepSearch"]
      227 GETUPVAL                         R2 17
      228 GETTABLEKS                       R2 R2 K3 ["Type"]
      230 GETUPVAL                         R3 2
      231 CALL                             R0 3 0
      232 GETUPVAL                         R0 0
      233 GETTABLEKS                       R0 R0 K0 ["add"]
      235 GETUPVAL                         R1 1
      236 GETTABLEKS                       R1 R1 K25 ["HttpGet"]
      238 GETUPVAL                         R2 18
      239 GETTABLEKS                       R2 R2 K3 ["Type"]
      241 GETUPVAL                         R3 2
      242 CALL                             R0 3 0
      243 GETUPVAL                         R0 0
      244 GETTABLEKS                       R0 R0 K0 ["add"]
      246 GETUPVAL                         R1 1
      247 GETTABLEKS                       R1 R1 K26 ["InspectInstance"]
      249 GETUPVAL                         R2 19
      250 GETTABLEKS                       R2 R2 K3 ["Type"]
      252 GETUPVAL                         R3 2
      253 CALL                             R0 3 0
      254 GETUPVAL                         R0 0
      255 GETTABLEKS                       R0 R0 K0 ["add"]
      257 GETUPVAL                         R1 1
      258 GETTABLEKS                       R1 R1 K27 ["JobWait"]
      260 GETUPVAL                         R2 20
      261 GETTABLEKS                       R2 R2 K3 ["Type"]
      263 GETUPVAL                         R3 2
      264 CALL                             R0 3 0
      265 GETUPVAL                         R0 0
      266 GETTABLEKS                       R0 R0 K0 ["add"]
      268 GETUPVAL                         R1 1
      269 GETTABLEKS                       R1 R1 K28 ["MaterialGen"]
      271 GETUPVAL                         R2 21
      272 GETTABLEKS                       R2 R2 K3 ["Type"]
      274 GETUPVAL                         R3 2
      275 CALL                             R0 3 0
      276 GETUPVAL                         R0 0
      277 GETTABLEKS                       R0 R0 K0 ["add"]
      279 GETUPVAL                         R1 1
      280 GETTABLEKS                       R1 R1 K29 ["MeshGen"]
      282 GETUPVAL                         R2 22
      283 GETTABLEKS                       R2 R2 K3 ["Type"]
      285 GETUPVAL                         R3 2
      286 CALL                             R0 3 0
      287 GETUPVAL                         R0 0
      288 GETTABLEKS                       R0 R0 K0 ["add"]
      290 GETUPVAL                         R1 1
      291 GETTABLEKS                       R1 R1 K30 ["SegmentMesh"]
      293 GETUPVAL                         R3 8
      294 GETTABLEKS                       R3 R3 K31 ["FFlagAssistantSegmentMeshTool"]
      296 JUMPIFNOT                        R3 ; [+4]
      297 GETUPVAL                         R2 23
      298 GETTABLEKS                       R2 R2 K3 ["Type"]
      300 JUMP                             ; [+1]
      301 LOADNIL                          R2
      302 GETUPVAL                         R3 2
      303 CALL                             R0 3 0
      304 GETUPVAL                         R0 0
      305 GETTABLEKS                       R0 R0 K0 ["add"]
      307 GETUPVAL                         R1 1
      308 GETTABLEKS                       R1 R1 K32 ["TextureGen"]
      310 GETUPVAL                         R3 8
      311 GETTABLEKS                       R3 R3 K33 ["FFlagAssistantTextureGenTool"]
      313 JUMPIFNOT                        R3 ; [+4]
      314 GETUPVAL                         R2 24
      315 GETTABLEKS                       R2 R2 K3 ["Type"]
      317 JUMP                             ; [+1]
      318 LOADNIL                          R2
      319 GETUPVAL                         R3 2
      320 CALL                             R0 3 0
      321 GETUPVAL                         R0 0
      322 GETTABLEKS                       R0 R0 K0 ["add"]
      324 GETUPVAL                         R1 1
      325 GETTABLEKS                       R1 R1 K34 ["MultiEdit"]
      327 LOADNIL                          R2
      328 GETUPVAL                         R3 2
      329 CALL                             R0 3 0
      330 GETUPVAL                         R0 0
      331 GETTABLEKS                       R0 R0 K0 ["add"]
      333 GETUPVAL                         R1 1
      334 GETTABLEKS                       R1 R1 K35 ["MultiPlayerAgentsCommunication"]
      336 LOADNIL                          R2
      337 GETUPVAL                         R3 2
      338 CALL                             R0 3 0
      339 GETUPVAL                         R0 0
      340 GETTABLEKS                       R0 R0 K0 ["add"]
      342 GETUPVAL                         R1 1
      343 GETTABLEKS                       R1 R1 K36 ["OpenCloudInvoke"]
      345 LOADNIL                          R2
      346 GETUPVAL                         R3 2
      347 CALL                             R0 3 0
      348 GETUPVAL                         R0 0
      349 GETTABLEKS                       R0 R0 K0 ["add"]
      351 GETUPVAL                         R1 1
      352 GETTABLEKS                       R1 R1 K37 ["PlaytestLook"]
      354 LOADNIL                          R2
      355 GETUPVAL                         R3 2
      356 CALL                             R0 3 0
      357 GETUPVAL                         R0 0
      358 GETTABLEKS                       R0 R0 K0 ["add"]
      360 GETUPVAL                         R1 1
      361 GETTABLEKS                       R1 R1 K38 ["PrimitiveGen"]
      363 GETUPVAL                         R2 25
      364 GETTABLEKS                       R2 R2 K3 ["Type"]
      366 GETUPVAL                         R3 2
      367 CALL                             R0 3 0
      368 GETUPVAL                         R0 0
      369 GETTABLEKS                       R0 R0 K0 ["add"]
      371 GETUPVAL                         R1 1
      372 GETTABLEKS                       R1 R1 K39 ["QuestionAnswer"]
      374 GETUPVAL                         R2 26
      375 GETTABLEKS                       R2 R2 K3 ["Type"]
      377 GETUPVAL                         R3 2
      378 CALL                             R0 3 0
      379 GETUPVAL                         R0 0
      380 GETTABLEKS                       R0 R0 K0 ["add"]
      382 GETUPVAL                         R1 1
      383 GETTABLEKS                       R1 R1 K40 ["ReadFile"]
      385 GETUPVAL                         R2 27
      386 GETTABLEKS                       R2 R2 K3 ["Type"]
      388 GETUPVAL                         R3 2
      389 CALL                             R0 3 0
      390 GETUPVAL                         R0 0
      391 GETTABLEKS                       R0 R0 K0 ["add"]
      393 GETUPVAL                         R1 1
      394 GETTABLEKS                       R1 R1 K41 ["SavePlace"]
      396 LOADNIL                          R2
      397 GETUPVAL                         R3 2
      398 CALL                             R0 3 0
      399 GETUPVAL                         R0 0
      400 GETTABLEKS                       R0 R0 K0 ["add"]
      402 GETUPVAL                         R1 1
      403 GETTABLEKS                       R1 R1 K42 ["ScreenCapture"]
      405 GETUPVAL                         R2 9
      406 GETTABLEKS                       R2 R2 K3 ["Type"]
      408 GETUPVAL                         R3 2
      409 CALL                             R0 3 0
      410 GETUPVAL                         R0 0
      411 GETTABLEKS                       R0 R0 K0 ["add"]
      413 GETUPVAL                         R1 1
      414 GETTABLEKS                       R1 R1 K43 ["Skill"]
      416 GETUPVAL                         R2 28
      417 GETTABLEKS                       R2 R2 K3 ["Type"]
      419 GETUPVAL                         R3 2
      420 CALL                             R0 3 0
      421 GETUPVAL                         R0 0
      422 GETTABLEKS                       R0 R0 K0 ["add"]
      424 GETUPVAL                         R1 1
      425 GETTABLEKS                       R1 R1 K44 ["StartMultiPlayerAgents"]
      427 LOADNIL                          R2
      428 GETUPVAL                         R3 2
      429 CALL                             R0 3 0
      430 GETUPVAL                         R0 0
      431 GETTABLEKS                       R0 R0 K0 ["add"]
      433 GETUPVAL                         R1 1
      434 GETTABLEKS                       R1 R1 K45 ["StartStopPlay"]
      436 LOADNIL                          R2
      437 GETUPVAL                         R3 2
      438 CALL                             R0 3 0
      439 GETUPVAL                         R0 0
      440 GETTABLEKS                       R0 R0 K0 ["add"]
      442 GETUPVAL                         R1 1
      443 GETTABLEKS                       R1 R1 K46 ["StopMultiPlayerAgents"]
      445 LOADNIL                          R2
      446 GETUPVAL                         R3 2
      447 CALL                             R0 3 0
      448 GETUPVAL                         R0 0
      449 GETTABLEKS                       R0 R0 K0 ["add"]
      451 GETUPVAL                         R1 1
      452 GETTABLEKS                       R1 R1 K47 ["StoreImage"]
      454 LOADNIL                          R2
      455 GETUPVAL                         R3 2
      456 CALL                             R0 3 0
      457 GETUPVAL                         R0 0
      458 GETTABLEKS                       R0 R0 K0 ["add"]
      460 GETUPVAL                         R1 1
      461 GETTABLEKS                       R1 R1 K48 ["Subagent"]
      463 GETUPVAL                         R2 29
      464 GETTABLEKS                       R2 R2 K3 ["Type"]
      466 GETUPVAL                         R3 2
      467 CALL                             R0 3 0
      468 GETUPVAL                         R0 0
      469 GETTABLEKS                       R0 R0 K0 ["add"]
      471 GETUPVAL                         R1 1
      472 GETTABLEKS                       R1 R1 K49 ["UpdatePlan"]
      474 GETUPVAL                         R2 10
      475 GETUPVAL                         R3 2
      476 CALL                             R0 3 0
      477 GETUPVAL                         R0 0
      478 GETTABLEKS                       R0 R0 K0 ["add"]
      480 GETUPVAL                         R1 1
      481 GETTABLEKS                       R1 R1 K50 ["UploadImage"]
      483 LOADNIL                          R2
      484 GETUPVAL                         R3 2
      485 CALL                             R0 3 0
      486 GETUPVAL                         R0 0
      487 GETTABLEKS                       R0 R0 K0 ["add"]
      489 GETUPVAL                         R1 1
      490 GETTABLEKS                       R1 R1 K51 ["UserKeyboardInput"]
      492 LOADNIL                          R2
      493 GETUPVAL                         R3 2
      494 CALL                             R0 3 0
      495 GETUPVAL                         R0 0
      496 GETTABLEKS                       R0 R0 K0 ["add"]
      498 GETUPVAL                         R1 1
      499 GETTABLEKS                       R1 R1 K52 ["UserMouseInput"]
      501 LOADNIL                          R2
      502 GETUPVAL                         R3 2
      503 CALL                             R0 3 0
      504 GETUPVAL                         R0 0
      505 GETTABLEKS                       R0 R0 K0 ["add"]
      507 GETUPVAL                         R1 1
      508 GETTABLEKS                       R1 R1 K53 ["VideoCapture"]
      510 LOADNIL                          R2
      511 GETUPVAL                         R3 2
      512 CALL                             R0 3 0
      513 GETUPVAL                         R0 0
      514 GETTABLEKS                       R0 R0 K0 ["add"]
      516 GETUPVAL                         R1 1
      517 GETTABLEKS                       R1 R1 K54 ["WaitForMultiPlayerAgentsCommunication"]
      519 LOADNIL                          R2
      520 GETUPVAL                         R3 2
      521 CALL                             R0 3 0
      522 GETUPVAL                         R0 0
      523 GETTABLEKS                       R0 R0 K0 ["add"]
      525 GETUPVAL                         R1 1
      526 GETTABLEKS                       R1 R1 K55 ["ListPluginActions"]
      528 LOADNIL                          R2
      529 GETUPVAL                         R3 2
      530 CALL                             R0 3 0
      531 GETUPVAL                         R0 0
      532 GETTABLEKS                       R0 R0 K0 ["add"]
      534 GETUPVAL                         R1 1
      535 GETTABLEKS                       R1 R1 K56 ["ListPluginGuis"]
      537 LOADNIL                          R2
      538 GETUPVAL                         R3 2
      539 CALL                             R0 3 0
      540 GETUPVAL                         R0 0
      541 GETTABLEKS                       R0 R0 K0 ["add"]
      543 GETUPVAL                         R1 1
      544 GETTABLEKS                       R1 R1 K57 ["ListRobloxStudios"]
      546 GETUPVAL                         R2 10
      547 GETUPVAL                         R3 2
      548 CALL                             R0 3 0
      549 GETUPVAL                         R0 0
      550 GETTABLEKS                       R0 R0 K0 ["add"]
      552 GETUPVAL                         R1 1
      553 GETTABLEKS                       R1 R1 K58 ["ListSkills"]
      555 GETUPVAL                         R2 10
      556 GETUPVAL                         R3 2
      557 CALL                             R0 3 0
      558 GETUPVAL                         R0 0
      559 GETTABLEKS                       R0 R0 K0 ["add"]
      561 GETUPVAL                         R1 1
      562 GETTABLEKS                       R1 R1 K59 ["ListPlace"]
      564 GETUPVAL                         R2 10
      565 GETUPVAL                         R3 2
      566 CALL                             R0 3 0
      567 GETUPVAL                         R0 0
      568 GETTABLEKS                       R0 R0 K0 ["add"]
      570 GETUPVAL                         R1 1
      571 GETTABLEKS                       R1 R1 K60 ["SubmitFeedback"]
      573 GETUPVAL                         R2 10
      574 GETUPVAL                         R3 2
      575 CALL                             R0 3 0
      576 GETUPVAL                         R0 30
      577 CALL                             R0 0 1
      578 JUMPIFNOT                        R0 ; [+11]
      579 GETUPVAL                         R0 0
      580 GETTABLEKS                       R0 R0 K0 ["add"]
      582 GETUPVAL                         R1 1
      583 GETTABLEKS                       R1 R1 K61 ["CloudExecuteLuau"]
      585 GETUPVAL                         R2 12
      586 GETTABLEKS                       R2 R2 K3 ["Type"]
      588 GETUPVAL                         R3 2
      589 CALL                             R0 3 0
      590 GETUPVAL                         R0 31
      591 CALL                             R0 0 1
      592 LENGTH                           R1 R0
      593 LOADN                            R2 0
      594 JUMPIFNOTLT                      R2 R1 ; [+13]
      596 GETUPVAL                         R1 8
      597 GETTABLEKS                       R1 R1 K62 ["FFlagDebugLogAssistantUI"]
      599 JUMPIFNOT                        R1 ; [+8]
      600 GETIMPORT                        R1 K64 [print]
      602 LOADK                            R2 K65 ["[registerToolWidgetMappings] Applying %* FString mapping(s)"]
      603 LENGTH                           R4 R0
      604 NAMECALL                         R2 R2 K66 ["format"]
      606 CALL                             R2 2 1
      607 CALL                             R1 1 0
      608 MOVE                             R1 R0
      609 LOADNIL                          R2
      610 LOADNIL                          R3
      611 FORGPREP                         R1
      612 GETUPVAL                         R6 0
      613 GETTABLEKS                       R6 R6 K0 ["add"]
      615 GETTABLEKS                       R7 R5 K67 ["toolName"]
      617 GETTABLEKS                       R8 R5 K68 ["widgetType"]
      619 GETUPVAL                         R9 32
      620 GETTABLEKS                       R9 R9 K69 ["FString"]
      622 CALL                             R6 3 0
      623 FORGLOOP                         R1 2 ; [-12]
      625 GETUPVAL                         R1 8
      626 GETTABLEKS                       R1 R1 K62 ["FFlagDebugLogAssistantUI"]
      628 JUMPIFNOT                        R1 ; [+37]
      629 GETUPVAL                         R1 1
      630 LOADNIL                          R2
      631 LOADNIL                          R3
      632 FORGPREP                         R1
      633 FASTCALL1                        TYPEOF R5 ; [+3]
      634 MOVE                             R7 R5
      635 GETIMPORT                        R6 K71 [typeof]
      637 CALL                             R6 1 1
      638 JUMPIFNOTEQKS                    R6 K72 ["string"] ; [+25]
      640 GETUPVAL                         R6 30
      641 CALL                             R6 0 1
      642 JUMPIF                           R6 ; [+6]
      643 GETUPVAL                         R6 33
      644 GETTABLEKS                       R6 R6 K73 ["isCloudTool"]
      646 MOVE                             R7 R5
      647 CALL                             R6 1 1
      648 JUMPIF                           R6 ; [+15]
      649 GETUPVAL                         R6 0
      650 GETTABLEKS                       R6 R6 K74 ["get"]
      652 MOVE                             R7 R5
      653 CALL                             R6 1 1
      654 JUMPIF                           R6 ; [+9]
      655 GETIMPORT                        R6 K76 [error]
      657 LOADK                            R7 K77 ["[registerToolWidgetMappings] No widget mapping found for tool \"%*\""]
      658 MOVE                             R9 R5
      659 NAMECALL                         R7 R7 K66 ["format"]
      661 CALL                             R7 2 1
      662 LOADN                            R8 0
      663 CALL                             R6 2 0
      664 FORGLOOP                         R1 2 ; [-32]
      666 RETURN                           R0 0

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
      281 CAPTURE                          VAL R33
      282 CAPTURE                          VAL R7
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
