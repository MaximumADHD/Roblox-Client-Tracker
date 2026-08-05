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
       37 GETTABLEKS                       R1 R1 K5 ["CharacterNavigation"]
       39 LOADNIL                          R2
       40 GETUPVAL                         R3 3
       41 CALL                             R0 3 0
       42 GETUPVAL                         R0 0
       43 GETTABLEKS                       R0 R0 K0 ["add"]
       45 GETUPVAL                         R1 1
       46 GETTABLEKS                       R1 R1 K6 ["CompleteTodoItems"]
       48 GETUPVAL                         R2 6
       49 GETUPVAL                         R3 3
       50 CALL                             R0 3 0
       51 GETUPVAL                         R0 0
       52 GETTABLEKS                       R0 R0 K0 ["add"]
       54 GETUPVAL                         R1 1
       55 GETTABLEKS                       R1 R1 K7 ["CreateSkill"]
       57 GETUPVAL                         R2 7
       58 GETTABLEKS                       R2 R2 K2 ["Type"]
       60 GETUPVAL                         R3 3
       61 CALL                             R0 3 0
       62 GETUPVAL                         R0 0
       63 GETTABLEKS                       R0 R0 K0 ["add"]
       65 GETUPVAL                         R1 1
       66 GETTABLEKS                       R1 R1 K8 ["CreatorStoreInsert"]
       68 GETUPVAL                         R2 8
       69 GETTABLEKS                       R2 R2 K2 ["Type"]
       71 GETUPVAL                         R3 3
       72 CALL                             R0 3 0
       73 GETUPVAL                         R0 0
       74 GETTABLEKS                       R0 R0 K0 ["add"]
       76 GETUPVAL                         R1 1
       77 GETTABLEKS                       R1 R1 K9 ["CreatorStoreSearch"]
       79 LOADNIL                          R2
       80 GETUPVAL                         R3 3
       81 CALL                             R0 3 0
       82 GETUPVAL                         R0 0
       83 GETTABLEKS                       R0 R0 K0 ["add"]
       85 GETUPVAL                         R1 1
       86 GETTABLEKS                       R1 R1 K10 ["EditSkill"]
       88 GETUPVAL                         R2 7
       89 GETTABLEKS                       R2 R2 K2 ["Type"]
       91 GETUPVAL                         R3 3
       92 CALL                             R0 3 0
       93 GETUPVAL                         R0 0
       94 GETTABLEKS                       R0 R0 K0 ["add"]
       96 GETUPVAL                         R1 1
       97 GETTABLEKS                       R1 R1 K11 ["ExecuteLuau"]
       99 GETUPVAL                         R2 9
      100 GETTABLEKS                       R2 R2 K2 ["Type"]
      102 GETUPVAL                         R3 3
      103 CALL                             R0 3 0
      104 GETUPVAL                         R0 0
      105 GETTABLEKS                       R0 R0 K0 ["add"]
      107 GETUPVAL                         R1 1
      108 GETTABLEKS                       R1 R1 K12 ["FileSearch"]
      110 GETUPVAL                         R2 10
      111 GETTABLEKS                       R2 R2 K2 ["Type"]
      113 GETUPVAL                         R3 3
      114 CALL                             R0 3 0
      115 GETUPVAL                         R0 0
      116 GETTABLEKS                       R0 R0 K0 ["add"]
      118 GETUPVAL                         R1 1
      119 GETTABLEKS                       R1 R1 K13 ["FinalizePlan"]
      121 GETUPVAL                         R2 11
      122 GETTABLEKS                       R2 R2 K2 ["Type"]
      124 GETUPVAL                         R3 3
      125 CALL                             R0 3 0
      126 GETUPVAL                         R0 0
      127 GETTABLEKS                       R0 R0 K0 ["add"]
      129 GETUPVAL                         R1 1
      130 GETTABLEKS                       R1 R1 K14 ["FromHistory"]
      132 GETUPVAL                         R2 12
      133 GETTABLEKS                       R2 R2 K2 ["Type"]
      135 GETUPVAL                         R3 3
      136 CALL                             R0 3 0
      137 GETUPVAL                         R0 0
      138 GETTABLEKS                       R0 R0 K0 ["add"]
      140 GETUPVAL                         R1 1
      141 GETTABLEKS                       R1 R1 K15 ["GameTree"]
      143 GETUPVAL                         R2 13
      144 GETTABLEKS                       R2 R2 K2 ["Type"]
      146 GETUPVAL                         R3 3
      147 CALL                             R0 3 0
      148 GETUPVAL                         R0 0
      149 GETTABLEKS                       R0 R0 K0 ["add"]
      151 GETUPVAL                         R1 1
      152 GETTABLEKS                       R1 R1 K16 ["GetConsoleOutput"]
      154 LOADNIL                          R2
      155 GETUPVAL                         R3 3
      156 CALL                             R0 3 0
      157 GETUPVAL                         R0 0
      158 GETTABLEKS                       R0 R0 K0 ["add"]
      160 GETUPVAL                         R1 1
      161 GETTABLEKS                       R1 R1 K17 ["GetStudioState"]
      163 LOADNIL                          R2
      164 GETUPVAL                         R3 3
      165 CALL                             R0 3 0
      166 GETUPVAL                         R0 0
      167 GETTABLEKS                       R0 R0 K0 ["add"]
      169 GETUPVAL                         R1 1
      170 GETTABLEKS                       R1 R1 K18 ["GrepSearch"]
      172 GETUPVAL                         R2 14
      173 GETTABLEKS                       R2 R2 K2 ["Type"]
      175 GETUPVAL                         R3 3
      176 CALL                             R0 3 0
      177 GETUPVAL                         R0 0
      178 GETTABLEKS                       R0 R0 K0 ["add"]
      180 GETUPVAL                         R1 1
      181 GETTABLEKS                       R1 R1 K19 ["HttpGet"]
      183 GETUPVAL                         R2 15
      184 GETTABLEKS                       R2 R2 K2 ["Type"]
      186 GETUPVAL                         R3 3
      187 CALL                             R0 3 0
      188 GETUPVAL                         R0 0
      189 GETTABLEKS                       R0 R0 K0 ["add"]
      191 GETUPVAL                         R1 1
      192 GETTABLEKS                       R1 R1 K20 ["InspectInstance"]
      194 GETUPVAL                         R2 16
      195 GETTABLEKS                       R2 R2 K2 ["Type"]
      197 GETUPVAL                         R3 3
      198 CALL                             R0 3 0
      199 GETUPVAL                         R0 0
      200 GETTABLEKS                       R0 R0 K0 ["add"]
      202 GETUPVAL                         R1 1
      203 GETTABLEKS                       R1 R1 K21 ["MaterialGen"]
      205 GETUPVAL                         R2 17
      206 GETTABLEKS                       R2 R2 K2 ["Type"]
      208 GETUPVAL                         R3 3
      209 CALL                             R0 3 0
      210 GETUPVAL                         R0 0
      211 GETTABLEKS                       R0 R0 K0 ["add"]
      213 GETUPVAL                         R1 1
      214 GETTABLEKS                       R1 R1 K22 ["MeshGen"]
      216 GETUPVAL                         R2 18
      217 GETTABLEKS                       R2 R2 K2 ["Type"]
      219 GETUPVAL                         R3 3
      220 CALL                             R0 3 0
      221 GETUPVAL                         R0 0
      222 GETTABLEKS                       R0 R0 K0 ["add"]
      224 GETUPVAL                         R1 1
      225 GETTABLEKS                       R1 R1 K23 ["MultiEdit"]
      227 LOADNIL                          R2
      228 GETUPVAL                         R3 3
      229 CALL                             R0 3 0
      230 GETUPVAL                         R0 0
      231 GETTABLEKS                       R0 R0 K0 ["add"]
      233 GETUPVAL                         R1 1
      234 GETTABLEKS                       R1 R1 K24 ["MultiPlayerAgentsCommunication"]
      236 LOADNIL                          R2
      237 GETUPVAL                         R3 3
      238 CALL                             R0 3 0
      239 GETUPVAL                         R0 0
      240 GETTABLEKS                       R0 R0 K0 ["add"]
      242 GETUPVAL                         R1 1
      243 GETTABLEKS                       R1 R1 K25 ["PrimitiveGen"]
      245 GETUPVAL                         R2 19
      246 GETTABLEKS                       R2 R2 K2 ["Type"]
      248 GETUPVAL                         R3 3
      249 CALL                             R0 3 0
      250 GETUPVAL                         R0 0
      251 GETTABLEKS                       R0 R0 K0 ["add"]
      253 GETUPVAL                         R1 1
      254 GETTABLEKS                       R1 R1 K26 ["QuestionAnswer"]
      256 GETUPVAL                         R2 20
      257 GETTABLEKS                       R2 R2 K2 ["Type"]
      259 GETUPVAL                         R3 3
      260 CALL                             R0 3 0
      261 GETUPVAL                         R0 0
      262 GETTABLEKS                       R0 R0 K0 ["add"]
      264 GETUPVAL                         R1 1
      265 GETTABLEKS                       R1 R1 K27 ["ReadFile"]
      267 GETUPVAL                         R2 21
      268 GETTABLEKS                       R2 R2 K2 ["Type"]
      270 GETUPVAL                         R3 3
      271 CALL                             R0 3 0
      272 GETUPVAL                         R0 0
      273 GETTABLEKS                       R0 R0 K0 ["add"]
      275 GETUPVAL                         R1 1
      276 GETTABLEKS                       R1 R1 K28 ["ScreenCapture"]
      278 GETUPVAL                         R2 22
      279 GETTABLEKS                       R2 R2 K2 ["Type"]
      281 GETUPVAL                         R3 3
      282 CALL                             R0 3 0
      283 GETUPVAL                         R0 0
      284 GETTABLEKS                       R0 R0 K0 ["add"]
      286 GETUPVAL                         R1 1
      287 GETTABLEKS                       R1 R1 K29 ["Skill"]
      289 GETUPVAL                         R2 23
      290 GETTABLEKS                       R2 R2 K2 ["Type"]
      292 GETUPVAL                         R3 3
      293 CALL                             R0 3 0
      294 GETUPVAL                         R0 0
      295 GETTABLEKS                       R0 R0 K0 ["add"]
      297 GETUPVAL                         R1 1
      298 GETTABLEKS                       R1 R1 K30 ["StartMultiPlayerAgents"]
      300 LOADNIL                          R2
      301 GETUPVAL                         R3 3
      302 CALL                             R0 3 0
      303 GETUPVAL                         R0 0
      304 GETTABLEKS                       R0 R0 K0 ["add"]
      306 GETUPVAL                         R1 1
      307 GETTABLEKS                       R1 R1 K31 ["StartStopPlay"]
      309 LOADNIL                          R2
      310 GETUPVAL                         R3 3
      311 CALL                             R0 3 0
      312 GETUPVAL                         R0 0
      313 GETTABLEKS                       R0 R0 K0 ["add"]
      315 GETUPVAL                         R1 1
      316 GETTABLEKS                       R1 R1 K32 ["StopMultiPlayerAgents"]
      318 LOADNIL                          R2
      319 GETUPVAL                         R3 3
      320 CALL                             R0 3 0
      321 GETUPVAL                         R0 0
      322 GETTABLEKS                       R0 R0 K0 ["add"]
      324 GETUPVAL                         R1 1
      325 GETTABLEKS                       R1 R1 K33 ["StoreImage"]
      327 LOADNIL                          R2
      328 GETUPVAL                         R3 3
      329 CALL                             R0 3 0
      330 GETUPVAL                         R0 0
      331 GETTABLEKS                       R0 R0 K0 ["add"]
      333 GETUPVAL                         R1 1
      334 GETTABLEKS                       R1 R1 K34 ["Subagent"]
      336 GETUPVAL                         R2 24
      337 GETTABLEKS                       R2 R2 K2 ["Type"]
      339 GETUPVAL                         R3 3
      340 CALL                             R0 3 0
      341 GETUPVAL                         R0 0
      342 GETTABLEKS                       R0 R0 K0 ["add"]
      344 GETUPVAL                         R1 1
      345 GETTABLEKS                       R1 R1 K35 ["UpdatePlan"]
      347 GETUPVAL                         R2 6
      348 GETUPVAL                         R3 3
      349 CALL                             R0 3 0
      350 GETUPVAL                         R0 0
      351 GETTABLEKS                       R0 R0 K0 ["add"]
      353 GETUPVAL                         R1 1
      354 GETTABLEKS                       R1 R1 K36 ["UploadImage"]
      356 LOADNIL                          R2
      357 GETUPVAL                         R3 3
      358 CALL                             R0 3 0
      359 GETUPVAL                         R0 0
      360 GETTABLEKS                       R0 R0 K0 ["add"]
      362 GETUPVAL                         R1 1
      363 GETTABLEKS                       R1 R1 K37 ["UserKeyboardInput"]
      365 LOADNIL                          R2
      366 GETUPVAL                         R3 3
      367 CALL                             R0 3 0
      368 GETUPVAL                         R0 0
      369 GETTABLEKS                       R0 R0 K0 ["add"]
      371 GETUPVAL                         R1 1
      372 GETTABLEKS                       R1 R1 K38 ["UserMouseInput"]
      374 LOADNIL                          R2
      375 GETUPVAL                         R3 3
      376 CALL                             R0 3 0
      377 GETUPVAL                         R0 0
      378 GETTABLEKS                       R0 R0 K0 ["add"]
      380 GETUPVAL                         R1 1
      381 GETTABLEKS                       R1 R1 K39 ["VideoCapture"]
      383 LOADNIL                          R2
      384 GETUPVAL                         R3 3
      385 CALL                             R0 3 0
      386 GETUPVAL                         R0 0
      387 GETTABLEKS                       R0 R0 K0 ["add"]
      389 GETUPVAL                         R1 1
      390 GETTABLEKS                       R1 R1 K40 ["WaitForMultiPlayerAgentsCommunication"]
      392 LOADNIL                          R2
      393 GETUPVAL                         R3 3
      394 CALL                             R0 3 0
      395 GETUPVAL                         R0 0
      396 GETTABLEKS                       R0 R0 K0 ["add"]
      398 GETUPVAL                         R1 1
      399 GETTABLEKS                       R1 R1 K41 ["WaitJobFinished"]
      401 LOADNIL                          R2
      402 GETUPVAL                         R3 3
      403 CALL                             R0 3 0
      404 GETUPVAL                         R0 25
      405 CALL                             R0 0 1
      406 LENGTH                           R1 R0
      407 LOADN                            R2 0
      408 JUMPIFNOTLT                      R2 R1 ; [+14]
      410 GETUPVAL                         R1 26
      411 GETTABLEKS                       R1 R1 K42 ["FFlagDebugLogAssistantUI"]
      413 JUMPIFNOT                        R1 ; [+9]
      414 GETIMPORT                        R1 K44 [print]
      416 LOADK                            R3 K45 ["[registerToolWidgetMappings] Applying %* FString mapping(s)"]
      417 LENGTH                           R5 R0
      418 NAMECALL                         R3 R3 K46 ["format"]
      420 CALL                             R3 2 1
      421 MOVE                             R2 R3
      422 CALL                             R1 1 0
      423 MOVE                             R1 R0
      424 LOADNIL                          R2
      425 LOADNIL                          R3
      426 FORGPREP                         R1
      427 GETUPVAL                         R6 0
      428 GETTABLEKS                       R6 R6 K0 ["add"]
      430 GETTABLEKS                       R7 R5 K47 ["toolName"]
      432 GETTABLEKS                       R8 R5 K48 ["widgetType"]
      434 GETUPVAL                         R9 27
      435 GETTABLEKS                       R9 R9 K49 ["FString"]
      437 CALL                             R6 3 0
      438 FORGLOOP                         R1 2 ; [-12]
      440 GETUPVAL                         R1 26
      441 GETTABLEKS                       R1 R1 K42 ["FFlagDebugLogAssistantUI"]
      443 JUMPIFNOT                        R1 ; [+29]
      444 GETUPVAL                         R1 1
      445 LOADNIL                          R2
      446 LOADNIL                          R3
      447 FORGPREP                         R1
      448 FASTCALL1                        TYPEOF R5 ; [+3]
      449 MOVE                             R7 R5
      450 GETIMPORT                        R6 K51 [typeof]
      452 CALL                             R6 1 1
      453 JUMPIFNOTEQKS                    R6 K52 ["string"] ; [+17]
      455 GETUPVAL                         R6 0
      456 GETTABLEKS                       R6 R6 K53 ["get"]
      458 MOVE                             R7 R5
      459 CALL                             R6 1 1
      460 JUMPIF                           R6 ; [+10]
      461 GETIMPORT                        R6 K55 [error]
      463 LOADK                            R8 K56 ["[registerToolWidgetMappings] No widget mapping found for tool \"%*\""]
      464 MOVE                             R10 R5
      465 NAMECALL                         R8 R8 K46 ["format"]
      467 CALL                             R8 2 1
      468 MOVE                             R7 R8
      469 LOADN                            R8 0
      470 CALL                             R6 2 0
      471 FORGLOOP                         R1 2 ; [-24]
      473 RETURN                           R0 0

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
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Util"]
       29 GETTABLEKS                       R5 R5 K13 ["ContentWidgets"]
       31 GETTABLEKS                       R5 R5 K14 ["ToolWidgetMappingRegistry"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K15 ["Features"]
       38 GETTABLEKS                       R6 R6 K16 ["AnimationGen"]
       40 GETTABLEKS                       R6 R6 K17 ["AnimationGenContentWidget"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K18 ["Components"]
       47 GETTABLEKS                       R7 R7 K13 ["ContentWidgets"]
       49 GETTABLEKS                       R7 R7 K19 ["AssetInsertContentWidget"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K18 ["Components"]
       56 GETTABLEKS                       R8 R8 K13 ["ContentWidgets"]
       58 GETTABLEKS                       R8 R8 K20 ["AssetSearchContentWidget"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K18 ["Components"]
       65 GETTABLEKS                       R9 R9 K13 ["ContentWidgets"]
       67 GETTABLEKS                       R9 R9 K21 ["CreateSkillContentWidget"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R10 R0 K18 ["Components"]
       74 GETTABLEKS                       R10 R10 K13 ["ContentWidgets"]
       76 GETTABLEKS                       R10 R10 K22 ["CreatorStoreInsertContentWidget"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K5 [require]
       81 GETTABLEKS                       R11 R0 K18 ["Components"]
       83 GETTABLEKS                       R11 R11 K13 ["ContentWidgets"]
       85 GETTABLEKS                       R11 R11 K23 ["FileSearchContentWidget"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K5 [require]
       90 GETTABLEKS                       R12 R0 K18 ["Components"]
       92 GETTABLEKS                       R12 R12 K13 ["ContentWidgets"]
       94 GETTABLEKS                       R12 R12 K24 ["FinalizePlanContentWidget"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K5 [require]
       99 GETTABLEKS                       R13 R0 K18 ["Components"]
      101 GETTABLEKS                       R13 R13 K13 ["ContentWidgets"]
      103 GETTABLEKS                       R13 R13 K25 ["FromHistoryContentWidget"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K5 [require]
      108 GETTABLEKS                       R14 R0 K18 ["Components"]
      110 GETTABLEKS                       R14 R14 K13 ["ContentWidgets"]
      112 GETTABLEKS                       R14 R14 K26 ["GameTreeContentWidget"]
      114 CALL                             R13 1 1
      115 GETIMPORT                        R14 K5 [require]
      117 GETTABLEKS                       R15 R0 K18 ["Components"]
      119 GETTABLEKS                       R15 R15 K13 ["ContentWidgets"]
      121 GETTABLEKS                       R15 R15 K27 ["GrepSearchContentWidget"]
      123 CALL                             R14 1 1
      124 GETIMPORT                        R15 K5 [require]
      126 GETTABLEKS                       R16 R0 K18 ["Components"]
      128 GETTABLEKS                       R16 R16 K13 ["ContentWidgets"]
      130 GETTABLEKS                       R16 R16 K28 ["HttpGetContentWidget"]
      132 CALL                             R15 1 1
      133 GETIMPORT                        R16 K5 [require]
      135 GETTABLEKS                       R17 R0 K18 ["Components"]
      137 GETTABLEKS                       R17 R17 K13 ["ContentWidgets"]
      139 GETTABLEKS                       R17 R17 K29 ["InspectInstanceContentWidget"]
      141 CALL                             R16 1 1
      142 GETIMPORT                        R17 K5 [require]
      144 GETTABLEKS                       R18 R0 K18 ["Components"]
      146 GETTABLEKS                       R18 R18 K13 ["ContentWidgets"]
      148 GETTABLEKS                       R18 R18 K30 ["MaterialGenContentWidget"]
      150 CALL                             R17 1 1
      151 GETIMPORT                        R18 K5 [require]
      153 GETTABLEKS                       R19 R0 K18 ["Components"]
      155 GETTABLEKS                       R19 R19 K13 ["ContentWidgets"]
      157 GETTABLEKS                       R19 R19 K31 ["MeshGenContentWidget"]
      159 CALL                             R18 1 1
      160 GETIMPORT                        R19 K5 [require]
      162 GETTABLEKS                       R20 R0 K15 ["Features"]
      164 GETTABLEKS                       R20 R20 K32 ["PrimitiveGen"]
      166 GETTABLEKS                       R20 R20 K33 ["PrimitiveGenContentWidget"]
      168 CALL                             R19 1 1
      169 GETIMPORT                        R20 K5 [require]
      171 GETTABLEKS                       R21 R0 K18 ["Components"]
      173 GETTABLEKS                       R21 R21 K13 ["ContentWidgets"]
      175 GETTABLEKS                       R21 R21 K34 ["QuestionAnswerContentWidget"]
      177 CALL                             R20 1 1
      178 GETIMPORT                        R21 K5 [require]
      180 GETTABLEKS                       R22 R0 K18 ["Components"]
      182 GETTABLEKS                       R22 R22 K13 ["ContentWidgets"]
      184 GETTABLEKS                       R22 R22 K35 ["ReadFileContentWidget"]
      186 CALL                             R21 1 1
      187 GETIMPORT                        R22 K5 [require]
      189 GETTABLEKS                       R23 R0 K18 ["Components"]
      191 GETTABLEKS                       R23 R23 K13 ["ContentWidgets"]
      193 GETTABLEKS                       R23 R23 K36 ["RunCodeContentWidget"]
      195 CALL                             R22 1 1
      196 GETIMPORT                        R23 K5 [require]
      198 GETTABLEKS                       R24 R0 K18 ["Components"]
      200 GETTABLEKS                       R24 R24 K13 ["ContentWidgets"]
      202 GETTABLEKS                       R24 R24 K37 ["ScreenCaptureContentWidget"]
      204 CALL                             R23 1 1
      205 GETIMPORT                        R24 K5 [require]
      207 GETTABLEKS                       R25 R0 K18 ["Components"]
      209 GETTABLEKS                       R25 R25 K13 ["ContentWidgets"]
      211 GETTABLEKS                       R25 R25 K38 ["SkillContentWidget"]
      213 CALL                             R24 1 1
      214 GETIMPORT                        R25 K5 [require]
      216 GETTABLEKS                       R26 R0 K18 ["Components"]
      218 GETTABLEKS                       R26 R26 K13 ["ContentWidgets"]
      220 GETTABLEKS                       R26 R26 K39 ["SubagentProgressContentWidget"]
      222 CALL                             R25 1 1
      223 GETTABLEKS                       R26 R4 K40 ["MappingSource"]
      225 GETTABLEKS                       R27 R26 K41 ["Hardcoded"]
      227 GETTABLEKS                       R28 R4 K42 ["None"]
      229 DUPCLOSURE                       R29 K43 [PROTO_1]
      230 CAPTURE                          VAL R2
      231 DUPCLOSURE                       R30 K44 [PROTO_2]
      232 CAPTURE                          VAL R4
      233 CAPTURE                          VAL R3
      234 CAPTURE                          VAL R5
      235 CAPTURE                          VAL R27
      236 CAPTURE                          VAL R6
      237 CAPTURE                          VAL R7
      238 CAPTURE                          VAL R28
      239 CAPTURE                          VAL R8
      240 CAPTURE                          VAL R9
      241 CAPTURE                          VAL R22
      242 CAPTURE                          VAL R10
      243 CAPTURE                          VAL R11
      244 CAPTURE                          VAL R12
      245 CAPTURE                          VAL R13
      246 CAPTURE                          VAL R14
      247 CAPTURE                          VAL R15
      248 CAPTURE                          VAL R16
      249 CAPTURE                          VAL R17
      250 CAPTURE                          VAL R18
      251 CAPTURE                          VAL R19
      252 CAPTURE                          VAL R20
      253 CAPTURE                          VAL R21
      254 CAPTURE                          VAL R23
      255 CAPTURE                          VAL R24
      256 CAPTURE                          VAL R25
      257 CAPTURE                          VAL R29
      258 CAPTURE                          VAL R2
      259 CAPTURE                          VAL R26
      260 RETURN                           R30 1
