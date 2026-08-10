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
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K0 ["add"]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K3 ["AssetInsert"]
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K2 ["Type"]
       20 GETUPVAL                         R3 3
       21 CALL                             R0 3 0
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K0 ["add"]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K4 ["AssetSearch"]
       28 GETUPVAL                         R2 5
       29 GETTABLEKS                       R2 R2 K2 ["Type"]
       31 GETUPVAL                         R3 3
       32 CALL                             R0 3 0
       33 GETUPVAL                         R0 0
       34 GETTABLEKS                       R0 R0 K0 ["add"]
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R1 R1 K5 ["AvatarAutoSetup"]
       39 GETUPVAL                         R2 6
       40 GETTABLEKS                       R2 R2 K2 ["Type"]
       42 GETUPVAL                         R3 3
       43 CALL                             R0 3 0
       44 GETUPVAL                         R0 0
       45 GETTABLEKS                       R0 R0 K0 ["add"]
       47 GETUPVAL                         R1 1
       48 GETTABLEKS                       R1 R1 K6 ["CharacterNavigation"]
       50 LOADNIL                          R2
       51 GETUPVAL                         R3 3
       52 CALL                             R0 3 0
       53 GETUPVAL                         R0 0
       54 GETTABLEKS                       R0 R0 K0 ["add"]
       56 GETUPVAL                         R1 1
       57 GETTABLEKS                       R1 R1 K7 ["CompleteTodoItems"]
       59 GETUPVAL                         R2 7
       60 GETUPVAL                         R3 3
       61 CALL                             R0 3 0
       62 GETUPVAL                         R0 0
       63 GETTABLEKS                       R0 R0 K0 ["add"]
       65 GETUPVAL                         R1 1
       66 GETTABLEKS                       R1 R1 K8 ["CreateSkill"]
       68 GETUPVAL                         R2 8
       69 GETTABLEKS                       R2 R2 K2 ["Type"]
       71 GETUPVAL                         R3 3
       72 CALL                             R0 3 0
       73 GETUPVAL                         R0 0
       74 GETTABLEKS                       R0 R0 K0 ["add"]
       76 GETUPVAL                         R1 1
       77 GETTABLEKS                       R1 R1 K9 ["CreatorStoreInsert"]
       79 GETUPVAL                         R2 9
       80 GETTABLEKS                       R2 R2 K2 ["Type"]
       82 GETUPVAL                         R3 3
       83 CALL                             R0 3 0
       84 GETUPVAL                         R0 0
       85 GETTABLEKS                       R0 R0 K0 ["add"]
       87 GETUPVAL                         R1 1
       88 GETTABLEKS                       R1 R1 K10 ["CreatorStoreSearch"]
       90 LOADNIL                          R2
       91 GETUPVAL                         R3 3
       92 CALL                             R0 3 0
       93 GETUPVAL                         R0 0
       94 GETTABLEKS                       R0 R0 K0 ["add"]
       96 GETUPVAL                         R1 1
       97 GETTABLEKS                       R1 R1 K11 ["EditSkill"]
       99 GETUPVAL                         R2 8
      100 GETTABLEKS                       R2 R2 K2 ["Type"]
      102 GETUPVAL                         R3 3
      103 CALL                             R0 3 0
      104 GETUPVAL                         R0 0
      105 GETTABLEKS                       R0 R0 K0 ["add"]
      107 GETUPVAL                         R1 1
      108 GETTABLEKS                       R1 R1 K12 ["ExecuteLuau"]
      110 GETUPVAL                         R2 10
      111 GETTABLEKS                       R2 R2 K2 ["Type"]
      113 GETUPVAL                         R3 3
      114 CALL                             R0 3 0
      115 GETUPVAL                         R0 0
      116 GETTABLEKS                       R0 R0 K0 ["add"]
      118 GETUPVAL                         R1 1
      119 GETTABLEKS                       R1 R1 K13 ["FileSearch"]
      121 GETUPVAL                         R2 11
      122 GETTABLEKS                       R2 R2 K2 ["Type"]
      124 GETUPVAL                         R3 3
      125 CALL                             R0 3 0
      126 GETUPVAL                         R0 0
      127 GETTABLEKS                       R0 R0 K0 ["add"]
      129 GETUPVAL                         R1 1
      130 GETTABLEKS                       R1 R1 K14 ["FinalizePlan"]
      132 GETUPVAL                         R2 12
      133 GETTABLEKS                       R2 R2 K2 ["Type"]
      135 GETUPVAL                         R3 3
      136 CALL                             R0 3 0
      137 GETUPVAL                         R0 0
      138 GETTABLEKS                       R0 R0 K0 ["add"]
      140 GETUPVAL                         R1 1
      141 GETTABLEKS                       R1 R1 K15 ["FromHistory"]
      143 GETUPVAL                         R2 13
      144 GETTABLEKS                       R2 R2 K2 ["Type"]
      146 GETUPVAL                         R3 3
      147 CALL                             R0 3 0
      148 GETUPVAL                         R0 0
      149 GETTABLEKS                       R0 R0 K0 ["add"]
      151 GETUPVAL                         R1 1
      152 GETTABLEKS                       R1 R1 K16 ["GameTree"]
      154 GETUPVAL                         R2 14
      155 GETTABLEKS                       R2 R2 K2 ["Type"]
      157 GETUPVAL                         R3 3
      158 CALL                             R0 3 0
      159 GETUPVAL                         R0 0
      160 GETTABLEKS                       R0 R0 K0 ["add"]
      162 GETUPVAL                         R1 1
      163 GETTABLEKS                       R1 R1 K17 ["GetConsoleOutput"]
      165 LOADNIL                          R2
      166 GETUPVAL                         R3 3
      167 CALL                             R0 3 0
      168 GETUPVAL                         R0 0
      169 GETTABLEKS                       R0 R0 K0 ["add"]
      171 GETUPVAL                         R1 1
      172 GETTABLEKS                       R1 R1 K18 ["GetStudioState"]
      174 LOADNIL                          R2
      175 GETUPVAL                         R3 3
      176 CALL                             R0 3 0
      177 GETUPVAL                         R0 0
      178 GETTABLEKS                       R0 R0 K0 ["add"]
      180 GETUPVAL                         R1 1
      181 GETTABLEKS                       R1 R1 K19 ["GrepSearch"]
      183 GETUPVAL                         R2 15
      184 GETTABLEKS                       R2 R2 K2 ["Type"]
      186 GETUPVAL                         R3 3
      187 CALL                             R0 3 0
      188 GETUPVAL                         R0 0
      189 GETTABLEKS                       R0 R0 K0 ["add"]
      191 GETUPVAL                         R1 1
      192 GETTABLEKS                       R1 R1 K20 ["HttpGet"]
      194 GETUPVAL                         R2 16
      195 GETTABLEKS                       R2 R2 K2 ["Type"]
      197 GETUPVAL                         R3 3
      198 CALL                             R0 3 0
      199 GETUPVAL                         R0 0
      200 GETTABLEKS                       R0 R0 K0 ["add"]
      202 GETUPVAL                         R1 1
      203 GETTABLEKS                       R1 R1 K21 ["InspectInstance"]
      205 GETUPVAL                         R2 17
      206 GETTABLEKS                       R2 R2 K2 ["Type"]
      208 GETUPVAL                         R3 3
      209 CALL                             R0 3 0
      210 GETUPVAL                         R0 0
      211 GETTABLEKS                       R0 R0 K0 ["add"]
      213 GETUPVAL                         R1 1
      214 GETTABLEKS                       R1 R1 K22 ["JobRun"]
      216 GETUPVAL                         R2 18
      217 GETTABLEKS                       R2 R2 K2 ["Type"]
      219 GETUPVAL                         R3 3
      220 CALL                             R0 3 0
      221 GETUPVAL                         R0 0
      222 GETTABLEKS                       R0 R0 K0 ["add"]
      224 GETUPVAL                         R1 1
      225 GETTABLEKS                       R1 R1 K23 ["JobWait"]
      227 GETUPVAL                         R2 19
      228 GETTABLEKS                       R2 R2 K2 ["Type"]
      230 GETUPVAL                         R3 3
      231 CALL                             R0 3 0
      232 GETUPVAL                         R0 0
      233 GETTABLEKS                       R0 R0 K0 ["add"]
      235 GETUPVAL                         R1 1
      236 GETTABLEKS                       R1 R1 K24 ["MaterialGen"]
      238 GETUPVAL                         R2 20
      239 GETTABLEKS                       R2 R2 K2 ["Type"]
      241 GETUPVAL                         R3 3
      242 CALL                             R0 3 0
      243 GETUPVAL                         R0 0
      244 GETTABLEKS                       R0 R0 K0 ["add"]
      246 GETUPVAL                         R1 1
      247 GETTABLEKS                       R1 R1 K25 ["MeshGen"]
      249 GETUPVAL                         R2 21
      250 GETTABLEKS                       R2 R2 K2 ["Type"]
      252 GETUPVAL                         R3 3
      253 CALL                             R0 3 0
      254 GETUPVAL                         R0 0
      255 GETTABLEKS                       R0 R0 K0 ["add"]
      257 GETUPVAL                         R1 1
      258 GETTABLEKS                       R1 R1 K26 ["MultiEdit"]
      260 LOADNIL                          R2
      261 GETUPVAL                         R3 3
      262 CALL                             R0 3 0
      263 GETUPVAL                         R0 0
      264 GETTABLEKS                       R0 R0 K0 ["add"]
      266 GETUPVAL                         R1 1
      267 GETTABLEKS                       R1 R1 K27 ["MultiPlayerAgentsCommunication"]
      269 LOADNIL                          R2
      270 GETUPVAL                         R3 3
      271 CALL                             R0 3 0
      272 GETUPVAL                         R0 0
      273 GETTABLEKS                       R0 R0 K0 ["add"]
      275 GETUPVAL                         R1 1
      276 GETTABLEKS                       R1 R1 K28 ["PrimitiveGen"]
      278 GETUPVAL                         R2 22
      279 GETTABLEKS                       R2 R2 K2 ["Type"]
      281 GETUPVAL                         R3 3
      282 CALL                             R0 3 0
      283 GETUPVAL                         R0 0
      284 GETTABLEKS                       R0 R0 K0 ["add"]
      286 GETUPVAL                         R1 1
      287 GETTABLEKS                       R1 R1 K29 ["QuestionAnswer"]
      289 GETUPVAL                         R2 23
      290 GETTABLEKS                       R2 R2 K2 ["Type"]
      292 GETUPVAL                         R3 3
      293 CALL                             R0 3 0
      294 GETUPVAL                         R0 0
      295 GETTABLEKS                       R0 R0 K0 ["add"]
      297 GETUPVAL                         R1 1
      298 GETTABLEKS                       R1 R1 K30 ["ReadFile"]
      300 GETUPVAL                         R2 24
      301 GETTABLEKS                       R2 R2 K2 ["Type"]
      303 GETUPVAL                         R3 3
      304 CALL                             R0 3 0
      305 GETUPVAL                         R0 0
      306 GETTABLEKS                       R0 R0 K0 ["add"]
      308 GETUPVAL                         R1 1
      309 GETTABLEKS                       R1 R1 K31 ["ScreenCapture"]
      311 GETUPVAL                         R2 25
      312 GETTABLEKS                       R2 R2 K2 ["Type"]
      314 GETUPVAL                         R3 3
      315 CALL                             R0 3 0
      316 GETUPVAL                         R0 0
      317 GETTABLEKS                       R0 R0 K0 ["add"]
      319 GETUPVAL                         R1 1
      320 GETTABLEKS                       R1 R1 K32 ["Skill"]
      322 GETUPVAL                         R2 26
      323 GETTABLEKS                       R2 R2 K2 ["Type"]
      325 GETUPVAL                         R3 3
      326 CALL                             R0 3 0
      327 GETUPVAL                         R0 0
      328 GETTABLEKS                       R0 R0 K0 ["add"]
      330 GETUPVAL                         R1 1
      331 GETTABLEKS                       R1 R1 K33 ["StartMultiPlayerAgents"]
      333 LOADNIL                          R2
      334 GETUPVAL                         R3 3
      335 CALL                             R0 3 0
      336 GETUPVAL                         R0 0
      337 GETTABLEKS                       R0 R0 K0 ["add"]
      339 GETUPVAL                         R1 1
      340 GETTABLEKS                       R1 R1 K34 ["StartStopPlay"]
      342 LOADNIL                          R2
      343 GETUPVAL                         R3 3
      344 CALL                             R0 3 0
      345 GETUPVAL                         R0 0
      346 GETTABLEKS                       R0 R0 K0 ["add"]
      348 GETUPVAL                         R1 1
      349 GETTABLEKS                       R1 R1 K35 ["StopMultiPlayerAgents"]
      351 LOADNIL                          R2
      352 GETUPVAL                         R3 3
      353 CALL                             R0 3 0
      354 GETUPVAL                         R0 0
      355 GETTABLEKS                       R0 R0 K0 ["add"]
      357 GETUPVAL                         R1 1
      358 GETTABLEKS                       R1 R1 K36 ["StoreImage"]
      360 LOADNIL                          R2
      361 GETUPVAL                         R3 3
      362 CALL                             R0 3 0
      363 GETUPVAL                         R0 0
      364 GETTABLEKS                       R0 R0 K0 ["add"]
      366 GETUPVAL                         R1 1
      367 GETTABLEKS                       R1 R1 K37 ["Subagent"]
      369 GETUPVAL                         R2 27
      370 GETTABLEKS                       R2 R2 K2 ["Type"]
      372 GETUPVAL                         R3 3
      373 CALL                             R0 3 0
      374 GETUPVAL                         R0 0
      375 GETTABLEKS                       R0 R0 K0 ["add"]
      377 GETUPVAL                         R1 1
      378 GETTABLEKS                       R1 R1 K38 ["UpdatePlan"]
      380 GETUPVAL                         R2 7
      381 GETUPVAL                         R3 3
      382 CALL                             R0 3 0
      383 GETUPVAL                         R0 0
      384 GETTABLEKS                       R0 R0 K0 ["add"]
      386 GETUPVAL                         R1 1
      387 GETTABLEKS                       R1 R1 K39 ["UploadImage"]
      389 LOADNIL                          R2
      390 GETUPVAL                         R3 3
      391 CALL                             R0 3 0
      392 GETUPVAL                         R0 0
      393 GETTABLEKS                       R0 R0 K0 ["add"]
      395 GETUPVAL                         R1 1
      396 GETTABLEKS                       R1 R1 K40 ["UserKeyboardInput"]
      398 LOADNIL                          R2
      399 GETUPVAL                         R3 3
      400 CALL                             R0 3 0
      401 GETUPVAL                         R0 0
      402 GETTABLEKS                       R0 R0 K0 ["add"]
      404 GETUPVAL                         R1 1
      405 GETTABLEKS                       R1 R1 K41 ["UserMouseInput"]
      407 LOADNIL                          R2
      408 GETUPVAL                         R3 3
      409 CALL                             R0 3 0
      410 GETUPVAL                         R0 0
      411 GETTABLEKS                       R0 R0 K0 ["add"]
      413 GETUPVAL                         R1 1
      414 GETTABLEKS                       R1 R1 K42 ["VideoCapture"]
      416 LOADNIL                          R2
      417 GETUPVAL                         R3 3
      418 CALL                             R0 3 0
      419 GETUPVAL                         R0 0
      420 GETTABLEKS                       R0 R0 K0 ["add"]
      422 GETUPVAL                         R1 1
      423 GETTABLEKS                       R1 R1 K43 ["WaitForMultiPlayerAgentsCommunication"]
      425 LOADNIL                          R2
      426 GETUPVAL                         R3 3
      427 CALL                             R0 3 0
      428 GETUPVAL                         R0 28
      429 GETTABLEKS                       R0 R0 K44 ["FFlagAssistantUseRemoteService"]
      431 JUMPIFNOT                        R0 ; [+11]
      432 GETUPVAL                         R0 0
      433 GETTABLEKS                       R0 R0 K0 ["add"]
      435 GETUPVAL                         R1 1
      436 GETTABLEKS                       R1 R1 K45 ["CloudExecuteLuau"]
      438 GETUPVAL                         R2 10
      439 GETTABLEKS                       R2 R2 K2 ["Type"]
      441 GETUPVAL                         R3 3
      442 CALL                             R0 3 0
      443 GETUPVAL                         R0 29
      444 CALL                             R0 0 1
      445 LENGTH                           R1 R0
      446 LOADN                            R2 0
      447 JUMPIFNOTLT                      R2 R1 ; [+14]
      449 GETUPVAL                         R1 28
      450 GETTABLEKS                       R1 R1 K46 ["FFlagDebugLogAssistantUI"]
      452 JUMPIFNOT                        R1 ; [+9]
      453 GETIMPORT                        R1 K48 [print]
      455 LOADK                            R3 K49 ["[registerToolWidgetMappings] Applying %* FString mapping(s)"]
      456 LENGTH                           R5 R0
      457 NAMECALL                         R3 R3 K50 ["format"]
      459 CALL                             R3 2 1
      460 MOVE                             R2 R3
      461 CALL                             R1 1 0
      462 MOVE                             R1 R0
      463 LOADNIL                          R2
      464 LOADNIL                          R3
      465 FORGPREP                         R1
      466 GETUPVAL                         R6 0
      467 GETTABLEKS                       R6 R6 K0 ["add"]
      469 GETTABLEKS                       R7 R5 K51 ["toolName"]
      471 GETTABLEKS                       R8 R5 K52 ["widgetType"]
      473 GETUPVAL                         R9 30
      474 GETTABLEKS                       R9 R9 K53 ["FString"]
      476 CALL                             R6 3 0
      477 FORGLOOP                         R1 2 ; [-12]
      479 GETUPVAL                         R1 28
      480 GETTABLEKS                       R1 R1 K46 ["FFlagDebugLogAssistantUI"]
      482 JUMPIFNOT                        R1 ; [+39]
      483 GETUPVAL                         R1 1
      484 LOADNIL                          R2
      485 LOADNIL                          R3
      486 FORGPREP                         R1
      487 FASTCALL1                        TYPEOF R5 ; [+3]
      488 MOVE                             R7 R5
      489 GETIMPORT                        R6 K55 [typeof]
      491 CALL                             R6 1 1
      492 JUMPIFNOTEQKS                    R6 K56 ["string"] ; [+27]
      494 GETUPVAL                         R6 28
      495 GETTABLEKS                       R6 R6 K44 ["FFlagAssistantUseRemoteService"]
      497 JUMPIF                           R6 ; [+6]
      498 GETUPVAL                         R6 31
      499 GETTABLEKS                       R6 R6 K57 ["isCloudTool"]
      501 MOVE                             R7 R5
      502 CALL                             R6 1 1
      503 JUMPIF                           R6 ; [+16]
      504 GETUPVAL                         R6 0
      505 GETTABLEKS                       R6 R6 K58 ["get"]
      507 MOVE                             R7 R5
      508 CALL                             R6 1 1
      509 JUMPIF                           R6 ; [+10]
      510 GETIMPORT                        R6 K60 [error]
      512 LOADK                            R8 K61 ["[registerToolWidgetMappings] No widget mapping found for tool \"%*\""]
      513 MOVE                             R10 R5
      514 NAMECALL                         R8 R8 K50 ["format"]
      516 CALL                             R8 2 1
      517 MOVE                             R7 R8
      518 LOADN                            R8 0
      519 CALL                             R6 2 0
      520 FORGLOOP                         R1 2 ; [-34]
      522 RETURN                           R0 0

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
       51 GETTABLEKS                       R8 R8 K18 ["AssetInsertContentWidget"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K16 ["Components"]
       58 GETTABLEKS                       R9 R9 K14 ["ContentWidgets"]
       60 GETTABLEKS                       R9 R9 K19 ["AssetSearchContentWidget"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K16 ["Components"]
       67 GETTABLEKS                       R10 R10 K14 ["ContentWidgets"]
       69 GETTABLEKS                       R10 R10 K20 ["AvatarAutoSetupContentWidget"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K16 ["Components"]
       76 GETTABLEKS                       R11 R11 K14 ["ContentWidgets"]
       78 GETTABLEKS                       R11 R11 K21 ["CreateSkillContentWidget"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K16 ["Components"]
       85 GETTABLEKS                       R12 R12 K14 ["ContentWidgets"]
       87 GETTABLEKS                       R12 R12 K22 ["CreatorStoreInsertContentWidget"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K16 ["Components"]
       94 GETTABLEKS                       R13 R13 K14 ["ContentWidgets"]
       96 GETTABLEKS                       R13 R13 K23 ["FileSearchContentWidget"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K16 ["Components"]
      103 GETTABLEKS                       R14 R14 K14 ["ContentWidgets"]
      105 GETTABLEKS                       R14 R14 K24 ["FinalizePlanContentWidget"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K16 ["Components"]
      112 GETTABLEKS                       R15 R15 K14 ["ContentWidgets"]
      114 GETTABLEKS                       R15 R15 K25 ["FromHistoryContentWidget"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R0 K16 ["Components"]
      121 GETTABLEKS                       R16 R16 K14 ["ContentWidgets"]
      123 GETTABLEKS                       R16 R16 K26 ["GameTreeContentWidget"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R17 R0 K16 ["Components"]
      130 GETTABLEKS                       R17 R17 K14 ["ContentWidgets"]
      132 GETTABLEKS                       R17 R17 K27 ["GrepSearchContentWidget"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K5 [require]
      137 GETTABLEKS                       R18 R0 K16 ["Components"]
      139 GETTABLEKS                       R18 R18 K14 ["ContentWidgets"]
      141 GETTABLEKS                       R18 R18 K28 ["HttpGetContentWidget"]
      143 CALL                             R17 1 1
      144 GETIMPORT                        R18 K5 [require]
      146 GETTABLEKS                       R19 R0 K16 ["Components"]
      148 GETTABLEKS                       R19 R19 K14 ["ContentWidgets"]
      150 GETTABLEKS                       R19 R19 K29 ["InspectInstanceContentWidget"]
      152 CALL                             R18 1 1
      153 GETIMPORT                        R19 K5 [require]
      155 GETTABLEKS                       R20 R0 K16 ["Components"]
      157 GETTABLEKS                       R20 R20 K14 ["ContentWidgets"]
      159 GETTABLEKS                       R20 R20 K30 ["JobRunContentWidget"]
      161 CALL                             R19 1 1
      162 GETIMPORT                        R20 K5 [require]
      164 GETTABLEKS                       R21 R0 K16 ["Components"]
      166 GETTABLEKS                       R21 R21 K14 ["ContentWidgets"]
      168 GETTABLEKS                       R21 R21 K31 ["JobWaitContentWidget"]
      170 CALL                             R20 1 1
      171 GETIMPORT                        R21 K5 [require]
      173 GETTABLEKS                       R22 R0 K16 ["Components"]
      175 GETTABLEKS                       R22 R22 K14 ["ContentWidgets"]
      177 GETTABLEKS                       R22 R22 K32 ["MaterialGenContentWidget"]
      179 CALL                             R21 1 1
      180 GETIMPORT                        R22 K5 [require]
      182 GETTABLEKS                       R23 R0 K16 ["Components"]
      184 GETTABLEKS                       R23 R23 K14 ["ContentWidgets"]
      186 GETTABLEKS                       R23 R23 K33 ["MeshGenContentWidget"]
      188 CALL                             R22 1 1
      189 GETIMPORT                        R23 K5 [require]
      191 GETTABLEKS                       R24 R0 K16 ["Components"]
      193 GETTABLEKS                       R24 R24 K14 ["ContentWidgets"]
      195 GETTABLEKS                       R24 R24 K34 ["PrimitiveGenContentWidget"]
      197 CALL                             R23 1 1
      198 GETIMPORT                        R24 K5 [require]
      200 GETTABLEKS                       R25 R0 K16 ["Components"]
      202 GETTABLEKS                       R25 R25 K14 ["ContentWidgets"]
      204 GETTABLEKS                       R25 R25 K35 ["QuestionAnswerContentWidget"]
      206 CALL                             R24 1 1
      207 GETIMPORT                        R25 K5 [require]
      209 GETTABLEKS                       R26 R0 K16 ["Components"]
      211 GETTABLEKS                       R26 R26 K14 ["ContentWidgets"]
      213 GETTABLEKS                       R26 R26 K36 ["ReadFileContentWidget"]
      215 CALL                             R25 1 1
      216 GETIMPORT                        R26 K5 [require]
      218 GETTABLEKS                       R27 R0 K16 ["Components"]
      220 GETTABLEKS                       R27 R27 K14 ["ContentWidgets"]
      222 GETTABLEKS                       R27 R27 K37 ["RunCodeContentWidget"]
      224 CALL                             R26 1 1
      225 GETIMPORT                        R27 K5 [require]
      227 GETTABLEKS                       R28 R0 K16 ["Components"]
      229 GETTABLEKS                       R28 R28 K14 ["ContentWidgets"]
      231 GETTABLEKS                       R28 R28 K38 ["ScreenCaptureContentWidget"]
      233 CALL                             R27 1 1
      234 GETIMPORT                        R28 K5 [require]
      236 GETTABLEKS                       R29 R0 K16 ["Components"]
      238 GETTABLEKS                       R29 R29 K14 ["ContentWidgets"]
      240 GETTABLEKS                       R29 R29 K39 ["SkillContentWidget"]
      242 CALL                             R28 1 1
      243 GETIMPORT                        R29 K5 [require]
      245 GETTABLEKS                       R30 R0 K16 ["Components"]
      247 GETTABLEKS                       R30 R30 K14 ["ContentWidgets"]
      249 GETTABLEKS                       R30 R30 K40 ["SubagentContentWidget"]
      251 CALL                             R29 1 1
      252 GETTABLEKS                       R30 R5 K41 ["MappingSource"]
      254 GETTABLEKS                       R31 R30 K42 ["Hardcoded"]
      256 GETTABLEKS                       R32 R5 K43 ["None"]
      258 DUPCLOSURE                       R33 K44 [PROTO_1]
      259 CAPTURE                          VAL R2
      260 DUPCLOSURE                       R34 K45 [PROTO_2]
      261 CAPTURE                          VAL R5
      262 CAPTURE                          VAL R3
      263 CAPTURE                          VAL R6
      264 CAPTURE                          VAL R31
      265 CAPTURE                          VAL R7
      266 CAPTURE                          VAL R8
      267 CAPTURE                          VAL R9
      268 CAPTURE                          VAL R32
      269 CAPTURE                          VAL R10
      270 CAPTURE                          VAL R11
      271 CAPTURE                          VAL R26
      272 CAPTURE                          VAL R12
      273 CAPTURE                          VAL R13
      274 CAPTURE                          VAL R14
      275 CAPTURE                          VAL R15
      276 CAPTURE                          VAL R16
      277 CAPTURE                          VAL R17
      278 CAPTURE                          VAL R18
      279 CAPTURE                          VAL R19
      280 CAPTURE                          VAL R20
      281 CAPTURE                          VAL R21
      282 CAPTURE                          VAL R22
      283 CAPTURE                          VAL R23
      284 CAPTURE                          VAL R24
      285 CAPTURE                          VAL R25
      286 CAPTURE                          VAL R27
      287 CAPTURE                          VAL R28
      288 CAPTURE                          VAL R29
      289 CAPTURE                          VAL R2
      290 CAPTURE                          VAL R33
      291 CAPTURE                          VAL R30
      292 CAPTURE                          VAL R4
      293 RETURN                           R34 1
