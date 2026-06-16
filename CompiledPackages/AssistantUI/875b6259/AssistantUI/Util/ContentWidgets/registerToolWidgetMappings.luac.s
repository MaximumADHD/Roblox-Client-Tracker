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
        1 CALL                             R0 0 1
        2 NEWTABLE                         R1 0 0
        4 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        6 RETURN                           R1 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R1
        9 GETIMPORT                        R3 K3 [string.gmatch]
       11 MOVE                             R4 R0
       12 LOADK                            R5 K4 ["[^,]+"]
       13 CALL                             R3 2 3
       14 FORGPREP                         R3
       15 MOVE                             R8 R2
       16 MOVE                             R9 R6
       17 CALL                             R8 1 1
       18 JUMPIF                           R8 ; [+12]
       19 GETUPVAL                         R9 1
       20 CALL                             R9 0 1
       21 JUMPIFNOT                        R9 ; [+9]
       22 GETIMPORT                        R9 K6 [warn]
       24 LOADK                            R11 K7 ["[registerToolWidgetMappings] Invalid FString mapping format: \"%*\""]
       25 MOVE                             R13 R6
       26 NAMECALL                         R11 R11 K8 ["format"]
       28 CALL                             R11 2 1
       29 MOVE                             R10 R11
       30 CALL                             R9 1 0
       31 FORGLOOP                         R3 1 ; [-17]
       33 RETURN                           R1 1

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
       48 LOADNIL                          R2
       49 GETUPVAL                         R3 3
       50 CALL                             R0 3 0
       51 GETUPVAL                         R0 0
       52 GETTABLEKS                       R0 R0 K0 ["add"]
       54 GETUPVAL                         R1 1
       55 GETTABLEKS                       R1 R1 K7 ["CreatorStoreInsert"]
       57 GETUPVAL                         R2 6
       58 GETTABLEKS                       R2 R2 K2 ["Type"]
       60 GETUPVAL                         R3 3
       61 CALL                             R0 3 0
       62 GETUPVAL                         R0 0
       63 GETTABLEKS                       R0 R0 K0 ["add"]
       65 GETUPVAL                         R1 1
       66 GETTABLEKS                       R1 R1 K8 ["CreatorStoreSearch"]
       68 LOADNIL                          R2
       69 GETUPVAL                         R3 3
       70 CALL                             R0 3 0
       71 GETUPVAL                         R0 0
       72 GETTABLEKS                       R0 R0 K0 ["add"]
       74 GETUPVAL                         R1 1
       75 GETTABLEKS                       R1 R1 K9 ["ExecuteLuau"]
       77 GETUPVAL                         R2 7
       78 GETTABLEKS                       R2 R2 K2 ["Type"]
       80 GETUPVAL                         R3 3
       81 CALL                             R0 3 0
       82 GETUPVAL                         R0 0
       83 GETTABLEKS                       R0 R0 K0 ["add"]
       85 GETUPVAL                         R1 1
       86 GETTABLEKS                       R1 R1 K10 ["FileSearch"]
       88 GETUPVAL                         R2 8
       89 GETTABLEKS                       R2 R2 K2 ["Type"]
       91 GETUPVAL                         R3 3
       92 CALL                             R0 3 0
       93 GETUPVAL                         R0 0
       94 GETTABLEKS                       R0 R0 K0 ["add"]
       96 GETUPVAL                         R1 1
       97 GETTABLEKS                       R1 R1 K11 ["FinalizePlan"]
       99 GETUPVAL                         R2 9
      100 GETTABLEKS                       R2 R2 K2 ["Type"]
      102 GETUPVAL                         R3 3
      103 CALL                             R0 3 0
      104 GETUPVAL                         R0 0
      105 GETTABLEKS                       R0 R0 K0 ["add"]
      107 GETUPVAL                         R1 1
      108 GETTABLEKS                       R1 R1 K12 ["FromHistory"]
      110 GETUPVAL                         R2 10
      111 GETTABLEKS                       R2 R2 K2 ["Type"]
      113 GETUPVAL                         R3 3
      114 CALL                             R0 3 0
      115 GETUPVAL                         R0 0
      116 GETTABLEKS                       R0 R0 K0 ["add"]
      118 GETUPVAL                         R1 1
      119 GETTABLEKS                       R1 R1 K13 ["GameTree"]
      121 GETUPVAL                         R2 11
      122 GETTABLEKS                       R2 R2 K2 ["Type"]
      124 GETUPVAL                         R3 3
      125 CALL                             R0 3 0
      126 GETUPVAL                         R0 0
      127 GETTABLEKS                       R0 R0 K0 ["add"]
      129 GETUPVAL                         R1 1
      130 GETTABLEKS                       R1 R1 K14 ["GetConsoleOutput"]
      132 LOADNIL                          R2
      133 GETUPVAL                         R3 3
      134 CALL                             R0 3 0
      135 GETUPVAL                         R0 0
      136 GETTABLEKS                       R0 R0 K0 ["add"]
      138 GETUPVAL                         R1 1
      139 GETTABLEKS                       R1 R1 K15 ["GetStudioState"]
      141 LOADNIL                          R2
      142 GETUPVAL                         R3 3
      143 CALL                             R0 3 0
      144 GETUPVAL                         R0 0
      145 GETTABLEKS                       R0 R0 K0 ["add"]
      147 GETUPVAL                         R1 1
      148 GETTABLEKS                       R1 R1 K16 ["GrepSearch"]
      150 GETUPVAL                         R2 12
      151 GETTABLEKS                       R2 R2 K2 ["Type"]
      153 GETUPVAL                         R3 3
      154 CALL                             R0 3 0
      155 GETUPVAL                         R0 0
      156 GETTABLEKS                       R0 R0 K0 ["add"]
      158 GETUPVAL                         R1 1
      159 GETTABLEKS                       R1 R1 K17 ["HttpGet"]
      161 GETUPVAL                         R2 13
      162 GETTABLEKS                       R2 R2 K2 ["Type"]
      164 GETUPVAL                         R3 3
      165 CALL                             R0 3 0
      166 GETUPVAL                         R0 0
      167 GETTABLEKS                       R0 R0 K0 ["add"]
      169 GETUPVAL                         R1 1
      170 GETTABLEKS                       R1 R1 K18 ["InspectInstance"]
      172 GETUPVAL                         R2 14
      173 GETTABLEKS                       R2 R2 K2 ["Type"]
      175 GETUPVAL                         R3 3
      176 CALL                             R0 3 0
      177 GETUPVAL                         R0 0
      178 GETTABLEKS                       R0 R0 K0 ["add"]
      180 GETUPVAL                         R1 1
      181 GETTABLEKS                       R1 R1 K19 ["MaterialGen"]
      183 GETUPVAL                         R2 15
      184 GETTABLEKS                       R2 R2 K2 ["Type"]
      186 GETUPVAL                         R3 3
      187 CALL                             R0 3 0
      188 GETUPVAL                         R0 0
      189 GETTABLEKS                       R0 R0 K0 ["add"]
      191 GETUPVAL                         R1 1
      192 GETTABLEKS                       R1 R1 K20 ["MeshGen"]
      194 GETUPVAL                         R2 16
      195 GETTABLEKS                       R2 R2 K2 ["Type"]
      197 GETUPVAL                         R3 3
      198 CALL                             R0 3 0
      199 GETUPVAL                         R0 0
      200 GETTABLEKS                       R0 R0 K0 ["add"]
      202 GETUPVAL                         R1 1
      203 GETTABLEKS                       R1 R1 K21 ["MultiEdit"]
      205 LOADNIL                          R2
      206 GETUPVAL                         R3 3
      207 CALL                             R0 3 0
      208 GETUPVAL                         R0 0
      209 GETTABLEKS                       R0 R0 K0 ["add"]
      211 GETUPVAL                         R1 1
      212 GETTABLEKS                       R1 R1 K22 ["MultiPlayerAgentsCommunication"]
      214 LOADNIL                          R2
      215 GETUPVAL                         R3 3
      216 CALL                             R0 3 0
      217 GETUPVAL                         R0 0
      218 GETTABLEKS                       R0 R0 K0 ["add"]
      220 GETUPVAL                         R1 1
      221 GETTABLEKS                       R1 R1 K23 ["PrimitiveGen"]
      223 GETUPVAL                         R2 17
      224 GETTABLEKS                       R2 R2 K2 ["Type"]
      226 GETUPVAL                         R3 3
      227 CALL                             R0 3 0
      228 GETUPVAL                         R0 0
      229 GETTABLEKS                       R0 R0 K0 ["add"]
      231 GETUPVAL                         R1 1
      232 GETTABLEKS                       R1 R1 K24 ["QuestionAnswer"]
      234 GETUPVAL                         R2 18
      235 GETTABLEKS                       R2 R2 K2 ["Type"]
      237 GETUPVAL                         R3 3
      238 CALL                             R0 3 0
      239 GETUPVAL                         R0 0
      240 GETTABLEKS                       R0 R0 K0 ["add"]
      242 GETUPVAL                         R1 1
      243 GETTABLEKS                       R1 R1 K25 ["ReadFile"]
      245 GETUPVAL                         R2 19
      246 GETTABLEKS                       R2 R2 K2 ["Type"]
      248 GETUPVAL                         R3 3
      249 CALL                             R0 3 0
      250 GETUPVAL                         R0 0
      251 GETTABLEKS                       R0 R0 K0 ["add"]
      253 GETUPVAL                         R1 1
      254 GETTABLEKS                       R1 R1 K26 ["ScreenCapture"]
      256 GETUPVAL                         R2 20
      257 GETTABLEKS                       R2 R2 K2 ["Type"]
      259 GETUPVAL                         R3 3
      260 CALL                             R0 3 0
      261 GETUPVAL                         R0 0
      262 GETTABLEKS                       R0 R0 K0 ["add"]
      264 GETUPVAL                         R1 1
      265 GETTABLEKS                       R1 R1 K27 ["Skill"]
      267 GETUPVAL                         R2 21
      268 GETTABLEKS                       R2 R2 K2 ["Type"]
      270 GETUPVAL                         R3 3
      271 CALL                             R0 3 0
      272 GETUPVAL                         R0 0
      273 GETTABLEKS                       R0 R0 K0 ["add"]
      275 GETUPVAL                         R1 1
      276 GETTABLEKS                       R1 R1 K28 ["StartMultiPlayerAgents"]
      278 LOADNIL                          R2
      279 GETUPVAL                         R3 3
      280 CALL                             R0 3 0
      281 GETUPVAL                         R0 0
      282 GETTABLEKS                       R0 R0 K0 ["add"]
      284 GETUPVAL                         R1 1
      285 GETTABLEKS                       R1 R1 K29 ["StartStopPlay"]
      287 LOADNIL                          R2
      288 GETUPVAL                         R3 3
      289 CALL                             R0 3 0
      290 GETUPVAL                         R0 0
      291 GETTABLEKS                       R0 R0 K0 ["add"]
      293 GETUPVAL                         R1 1
      294 GETTABLEKS                       R1 R1 K30 ["StopMultiPlayerAgents"]
      296 LOADNIL                          R2
      297 GETUPVAL                         R3 3
      298 CALL                             R0 3 0
      299 GETUPVAL                         R0 0
      300 GETTABLEKS                       R0 R0 K0 ["add"]
      302 GETUPVAL                         R1 1
      303 GETTABLEKS                       R1 R1 K31 ["StoreImage"]
      305 LOADNIL                          R2
      306 GETUPVAL                         R3 3
      307 CALL                             R0 3 0
      308 GETUPVAL                         R0 0
      309 GETTABLEKS                       R0 R0 K0 ["add"]
      311 GETUPVAL                         R1 1
      312 GETTABLEKS                       R1 R1 K32 ["Subagent"]
      314 GETUPVAL                         R2 22
      315 GETTABLEKS                       R2 R2 K2 ["Type"]
      317 GETUPVAL                         R3 3
      318 CALL                             R0 3 0
      319 GETUPVAL                         R0 0
      320 GETTABLEKS                       R0 R0 K0 ["add"]
      322 GETUPVAL                         R1 1
      323 GETTABLEKS                       R1 R1 K33 ["UpdatePlan"]
      325 LOADNIL                          R2
      326 GETUPVAL                         R3 3
      327 CALL                             R0 3 0
      328 GETUPVAL                         R0 0
      329 GETTABLEKS                       R0 R0 K0 ["add"]
      331 GETUPVAL                         R1 1
      332 GETTABLEKS                       R1 R1 K34 ["UploadImage"]
      334 LOADNIL                          R2
      335 GETUPVAL                         R3 3
      336 CALL                             R0 3 0
      337 GETUPVAL                         R0 0
      338 GETTABLEKS                       R0 R0 K0 ["add"]
      340 GETUPVAL                         R1 1
      341 GETTABLEKS                       R1 R1 K35 ["UserKeyboardInput"]
      343 LOADNIL                          R2
      344 GETUPVAL                         R3 3
      345 CALL                             R0 3 0
      346 GETUPVAL                         R0 0
      347 GETTABLEKS                       R0 R0 K0 ["add"]
      349 GETUPVAL                         R1 1
      350 GETTABLEKS                       R1 R1 K36 ["UserMouseInput"]
      352 LOADNIL                          R2
      353 GETUPVAL                         R3 3
      354 CALL                             R0 3 0
      355 GETUPVAL                         R0 0
      356 GETTABLEKS                       R0 R0 K0 ["add"]
      358 GETUPVAL                         R1 1
      359 GETTABLEKS                       R1 R1 K37 ["WaitForMultiPlayerAgentsCommunication"]
      361 LOADNIL                          R2
      362 GETUPVAL                         R3 3
      363 CALL                             R0 3 0
      364 GETUPVAL                         R0 0
      365 GETTABLEKS                       R0 R0 K0 ["add"]
      367 GETUPVAL                         R1 1
      368 GETTABLEKS                       R1 R1 K38 ["WaitJobFinished"]
      370 LOADNIL                          R2
      371 GETUPVAL                         R3 3
      372 CALL                             R0 3 0
      373 GETUPVAL                         R0 23
      374 CALL                             R0 0 1
      375 LENGTH                           R1 R0
      376 LOADN                            R2 0
      377 JUMPIFNOTLT                      R2 R1 ; [+13]
      379 GETUPVAL                         R1 24
      380 CALL                             R1 0 1
      381 JUMPIFNOT                        R1 ; [+9]
      382 GETIMPORT                        R1 K40 [print]
      384 LOADK                            R3 K41 ["[registerToolWidgetMappings] Applying %* FString mapping(s)"]
      385 LENGTH                           R5 R0
      386 NAMECALL                         R3 R3 K42 ["format"]
      388 CALL                             R3 2 1
      389 MOVE                             R2 R3
      390 CALL                             R1 1 0
      391 MOVE                             R1 R0
      392 LOADNIL                          R2
      393 LOADNIL                          R3
      394 FORGPREP                         R1
      395 GETUPVAL                         R6 0
      396 GETTABLEKS                       R6 R6 K0 ["add"]
      398 GETTABLEKS                       R7 R5 K43 ["toolName"]
      400 GETTABLEKS                       R8 R5 K44 ["widgetType"]
      402 GETUPVAL                         R9 25
      403 GETTABLEKS                       R9 R9 K45 ["FString"]
      405 CALL                             R6 3 0
      406 FORGLOOP                         R1 2 ; [-12]
      408 GETUPVAL                         R1 24
      409 CALL                             R1 0 1
      410 JUMPIFNOT                        R1 ; [+28]
      411 GETUPVAL                         R1 1
      412 LOADNIL                          R2
      413 LOADNIL                          R3
      414 FORGPREP                         R1
      415 FASTCALL1                        TYPEOF R5 ; [+3]
      416 MOVE                             R7 R5
      417 GETIMPORT                        R6 K47 [typeof]
      419 CALL                             R6 1 1
      420 JUMPIFNOTEQKS                    R6 K48 ["string"] ; [+16]
      422 GETUPVAL                         R6 0
      423 GETTABLEKS                       R6 R6 K49 ["get"]
      425 MOVE                             R7 R5
      426 CALL                             R6 1 1
      427 JUMPIF                           R6 ; [+9]
      428 GETIMPORT                        R6 K51 [warn]
      430 LOADK                            R8 K52 ["[registerToolWidgetMappings] No widget mapping found for tool \"%*\""]
      431 MOVE                             R10 R5
      432 NAMECALL                         R8 R8 K42 ["format"]
      434 CALL                             R8 2 1
      435 MOVE                             R7 R8
      436 CALL                             R6 1 0
      437 FORGLOOP                         R1 2 ; [-23]
      439 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Tools"]
       11 GETTABLEKS                       R2 R2 K7 ["ToolNames"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["ContentWidgets"]
       20 GETTABLEKS                       R3 R3 K10 ["ToolWidgetMappingRegistry"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Features"]
       27 GETTABLEKS                       R4 R4 K12 ["AnimationGen"]
       29 GETTABLEKS                       R4 R4 K13 ["AnimationGenContentWidget"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K11 ["Features"]
       36 GETTABLEKS                       R5 R5 K14 ["AssetManagement"]
       38 GETTABLEKS                       R5 R5 K15 ["AssetInsertContentWidget"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K11 ["Features"]
       45 GETTABLEKS                       R6 R6 K14 ["AssetManagement"]
       47 GETTABLEKS                       R6 R6 K16 ["AssetSearchContentWidget"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K11 ["Features"]
       54 GETTABLEKS                       R7 R7 K17 ["CreatorStore"]
       56 GETTABLEKS                       R7 R7 K18 ["CreatorStoreInsertContentWidget"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K19 ["Components"]
       63 GETTABLEKS                       R8 R8 K9 ["ContentWidgets"]
       65 GETTABLEKS                       R8 R8 K20 ["FileSearchContentWidget"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K19 ["Components"]
       72 GETTABLEKS                       R9 R9 K9 ["ContentWidgets"]
       74 GETTABLEKS                       R9 R9 K21 ["FinalizePlanContentWidget"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K19 ["Components"]
       81 GETTABLEKS                       R10 R10 K9 ["ContentWidgets"]
       83 GETTABLEKS                       R10 R10 K22 ["FromHistoryContentWidget"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K19 ["Components"]
       90 GETTABLEKS                       R11 R11 K9 ["ContentWidgets"]
       92 GETTABLEKS                       R11 R11 K23 ["GameTreeContentWidget"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R12 R0 K19 ["Components"]
       99 GETTABLEKS                       R12 R12 K9 ["ContentWidgets"]
      101 GETTABLEKS                       R12 R12 K24 ["GrepSearchContentWidget"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K5 [require]
      106 GETTABLEKS                       R13 R0 K19 ["Components"]
      108 GETTABLEKS                       R13 R13 K9 ["ContentWidgets"]
      110 GETTABLEKS                       R13 R13 K25 ["HttpGetContentWidget"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K5 [require]
      115 GETTABLEKS                       R14 R0 K19 ["Components"]
      117 GETTABLEKS                       R14 R14 K9 ["ContentWidgets"]
      119 GETTABLEKS                       R14 R14 K26 ["ImageContentWidget"]
      121 CALL                             R13 1 1
      122 GETIMPORT                        R14 K5 [require]
      124 GETTABLEKS                       R15 R0 K19 ["Components"]
      126 GETTABLEKS                       R15 R15 K9 ["ContentWidgets"]
      128 GETTABLEKS                       R15 R15 K27 ["InspectInstanceContentWidget"]
      130 CALL                             R14 1 1
      131 GETIMPORT                        R15 K5 [require]
      133 GETTABLEKS                       R16 R0 K19 ["Components"]
      135 GETTABLEKS                       R16 R16 K9 ["ContentWidgets"]
      137 GETTABLEKS                       R16 R16 K28 ["MaterialGenContentWidget"]
      139 CALL                             R15 1 1
      140 GETIMPORT                        R16 K5 [require]
      142 GETTABLEKS                       R17 R0 K11 ["Features"]
      144 GETTABLEKS                       R17 R17 K29 ["MeshGen"]
      146 GETTABLEKS                       R17 R17 K30 ["MeshGenContentWidget"]
      148 CALL                             R16 1 1
      149 GETIMPORT                        R17 K5 [require]
      151 GETTABLEKS                       R18 R0 K11 ["Features"]
      153 GETTABLEKS                       R18 R18 K31 ["PrimitiveGen"]
      155 GETTABLEKS                       R18 R18 K32 ["PrimitiveGenContentWidget"]
      157 CALL                             R17 1 1
      158 GETIMPORT                        R18 K5 [require]
      160 GETTABLEKS                       R19 R0 K19 ["Components"]
      162 GETTABLEKS                       R19 R19 K9 ["ContentWidgets"]
      164 GETTABLEKS                       R19 R19 K33 ["QuestionAnswerContentWidget"]
      166 CALL                             R18 1 1
      167 GETIMPORT                        R19 K5 [require]
      169 GETTABLEKS                       R20 R0 K19 ["Components"]
      171 GETTABLEKS                       R20 R20 K9 ["ContentWidgets"]
      173 GETTABLEKS                       R20 R20 K34 ["ReadFileContentWidget"]
      175 CALL                             R19 1 1
      176 GETIMPORT                        R20 K5 [require]
      178 GETTABLEKS                       R21 R0 K19 ["Components"]
      180 GETTABLEKS                       R21 R21 K9 ["ContentWidgets"]
      182 GETTABLEKS                       R21 R21 K35 ["RunCodeContentWidget"]
      184 CALL                             R20 1 1
      185 GETIMPORT                        R21 K5 [require]
      187 GETTABLEKS                       R22 R0 K19 ["Components"]
      189 GETTABLEKS                       R22 R22 K9 ["ContentWidgets"]
      191 GETTABLEKS                       R22 R22 K36 ["SkillContentWidget"]
      193 CALL                             R21 1 1
      194 GETIMPORT                        R22 K5 [require]
      196 GETTABLEKS                       R23 R0 K19 ["Components"]
      198 GETTABLEKS                       R23 R23 K9 ["ContentWidgets"]
      200 GETTABLEKS                       R23 R23 K37 ["SubagentProgressWidget"]
      202 CALL                             R22 1 1
      203 GETIMPORT                        R23 K5 [require]
      205 GETTABLEKS                       R24 R0 K38 ["Flags"]
      207 GETTABLEKS                       R24 R24 K39 ["FFlagDebugLogAssistantUI"]
      209 CALL                             R23 1 1
      210 GETIMPORT                        R24 K5 [require]
      212 GETTABLEKS                       R25 R0 K38 ["Flags"]
      214 GETTABLEKS                       R25 R25 K40 ["FStringAssistantToolWidgetMappings"]
      216 CALL                             R24 1 1
      217 GETTABLEKS                       R25 R2 K41 ["MappingSource"]
      219 GETTABLEKS                       R26 R25 K42 ["Hardcoded"]
      221 DUPCLOSURE                       R27 K43 [PROTO_1]
      222 CAPTURE                          VAL R24
      223 CAPTURE                          VAL R23
      224 DUPCLOSURE                       R28 K44 [PROTO_2]
      225 CAPTURE                          VAL R2
      226 CAPTURE                          VAL R1
      227 CAPTURE                          VAL R3
      228 CAPTURE                          VAL R26
      229 CAPTURE                          VAL R4
      230 CAPTURE                          VAL R5
      231 CAPTURE                          VAL R6
      232 CAPTURE                          VAL R20
      233 CAPTURE                          VAL R7
      234 CAPTURE                          VAL R8
      235 CAPTURE                          VAL R9
      236 CAPTURE                          VAL R10
      237 CAPTURE                          VAL R11
      238 CAPTURE                          VAL R12
      239 CAPTURE                          VAL R14
      240 CAPTURE                          VAL R15
      241 CAPTURE                          VAL R16
      242 CAPTURE                          VAL R17
      243 CAPTURE                          VAL R18
      244 CAPTURE                          VAL R19
      245 CAPTURE                          VAL R13
      246 CAPTURE                          VAL R21
      247 CAPTURE                          VAL R22
      248 CAPTURE                          VAL R27
      249 CAPTURE                          VAL R23
      250 CAPTURE                          VAL R25
      251 RETURN                           R28 1
