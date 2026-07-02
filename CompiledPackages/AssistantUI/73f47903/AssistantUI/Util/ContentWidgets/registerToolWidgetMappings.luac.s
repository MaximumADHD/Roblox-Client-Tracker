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
       55 GETTABLEKS                       R1 R1 K7 ["CreateSkill"]
       57 GETUPVAL                         R2 6
       58 GETTABLEKS                       R2 R2 K2 ["Type"]
       60 GETUPVAL                         R3 3
       61 CALL                             R0 3 0
       62 GETUPVAL                         R0 0
       63 GETTABLEKS                       R0 R0 K0 ["add"]
       65 GETUPVAL                         R1 1
       66 GETTABLEKS                       R1 R1 K8 ["CreatorStoreInsert"]
       68 GETUPVAL                         R2 7
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
       86 GETTABLEKS                       R1 R1 K10 ["ExecuteLuau"]
       88 GETUPVAL                         R2 8
       89 GETTABLEKS                       R2 R2 K2 ["Type"]
       91 GETUPVAL                         R3 3
       92 CALL                             R0 3 0
       93 GETUPVAL                         R0 0
       94 GETTABLEKS                       R0 R0 K0 ["add"]
       96 GETUPVAL                         R1 1
       97 GETTABLEKS                       R1 R1 K11 ["FileSearch"]
       99 GETUPVAL                         R2 9
      100 GETTABLEKS                       R2 R2 K2 ["Type"]
      102 GETUPVAL                         R3 3
      103 CALL                             R0 3 0
      104 GETUPVAL                         R0 0
      105 GETTABLEKS                       R0 R0 K0 ["add"]
      107 GETUPVAL                         R1 1
      108 GETTABLEKS                       R1 R1 K12 ["FinalizePlan"]
      110 GETUPVAL                         R2 10
      111 GETTABLEKS                       R2 R2 K2 ["Type"]
      113 GETUPVAL                         R3 3
      114 CALL                             R0 3 0
      115 GETUPVAL                         R0 0
      116 GETTABLEKS                       R0 R0 K0 ["add"]
      118 GETUPVAL                         R1 1
      119 GETTABLEKS                       R1 R1 K13 ["FromHistory"]
      121 GETUPVAL                         R2 11
      122 GETTABLEKS                       R2 R2 K2 ["Type"]
      124 GETUPVAL                         R3 3
      125 CALL                             R0 3 0
      126 GETUPVAL                         R0 0
      127 GETTABLEKS                       R0 R0 K0 ["add"]
      129 GETUPVAL                         R1 1
      130 GETTABLEKS                       R1 R1 K14 ["GameTree"]
      132 GETUPVAL                         R2 12
      133 GETTABLEKS                       R2 R2 K2 ["Type"]
      135 GETUPVAL                         R3 3
      136 CALL                             R0 3 0
      137 GETUPVAL                         R0 0
      138 GETTABLEKS                       R0 R0 K0 ["add"]
      140 GETUPVAL                         R1 1
      141 GETTABLEKS                       R1 R1 K15 ["GetConsoleOutput"]
      143 LOADNIL                          R2
      144 GETUPVAL                         R3 3
      145 CALL                             R0 3 0
      146 GETUPVAL                         R0 0
      147 GETTABLEKS                       R0 R0 K0 ["add"]
      149 GETUPVAL                         R1 1
      150 GETTABLEKS                       R1 R1 K16 ["GetStudioState"]
      152 LOADNIL                          R2
      153 GETUPVAL                         R3 3
      154 CALL                             R0 3 0
      155 GETUPVAL                         R0 0
      156 GETTABLEKS                       R0 R0 K0 ["add"]
      158 GETUPVAL                         R1 1
      159 GETTABLEKS                       R1 R1 K17 ["GrepSearch"]
      161 GETUPVAL                         R2 13
      162 GETTABLEKS                       R2 R2 K2 ["Type"]
      164 GETUPVAL                         R3 3
      165 CALL                             R0 3 0
      166 GETUPVAL                         R0 0
      167 GETTABLEKS                       R0 R0 K0 ["add"]
      169 GETUPVAL                         R1 1
      170 GETTABLEKS                       R1 R1 K18 ["HttpGet"]
      172 GETUPVAL                         R2 14
      173 GETTABLEKS                       R2 R2 K2 ["Type"]
      175 GETUPVAL                         R3 3
      176 CALL                             R0 3 0
      177 GETUPVAL                         R0 0
      178 GETTABLEKS                       R0 R0 K0 ["add"]
      180 GETUPVAL                         R1 1
      181 GETTABLEKS                       R1 R1 K19 ["InspectInstance"]
      183 GETUPVAL                         R2 15
      184 GETTABLEKS                       R2 R2 K2 ["Type"]
      186 GETUPVAL                         R3 3
      187 CALL                             R0 3 0
      188 GETUPVAL                         R0 0
      189 GETTABLEKS                       R0 R0 K0 ["add"]
      191 GETUPVAL                         R1 1
      192 GETTABLEKS                       R1 R1 K20 ["MaterialGen"]
      194 GETUPVAL                         R2 16
      195 GETTABLEKS                       R2 R2 K2 ["Type"]
      197 GETUPVAL                         R3 3
      198 CALL                             R0 3 0
      199 GETUPVAL                         R0 0
      200 GETTABLEKS                       R0 R0 K0 ["add"]
      202 GETUPVAL                         R1 1
      203 GETTABLEKS                       R1 R1 K21 ["MeshGen"]
      205 GETUPVAL                         R2 17
      206 GETTABLEKS                       R2 R2 K2 ["Type"]
      208 GETUPVAL                         R3 3
      209 CALL                             R0 3 0
      210 GETUPVAL                         R0 0
      211 GETTABLEKS                       R0 R0 K0 ["add"]
      213 GETUPVAL                         R1 1
      214 GETTABLEKS                       R1 R1 K22 ["MultiEdit"]
      216 LOADNIL                          R2
      217 GETUPVAL                         R3 3
      218 CALL                             R0 3 0
      219 GETUPVAL                         R0 0
      220 GETTABLEKS                       R0 R0 K0 ["add"]
      222 GETUPVAL                         R1 1
      223 GETTABLEKS                       R1 R1 K23 ["MultiPlayerAgentsCommunication"]
      225 LOADNIL                          R2
      226 GETUPVAL                         R3 3
      227 CALL                             R0 3 0
      228 GETUPVAL                         R0 0
      229 GETTABLEKS                       R0 R0 K0 ["add"]
      231 GETUPVAL                         R1 1
      232 GETTABLEKS                       R1 R1 K24 ["PrimitiveGen"]
      234 GETUPVAL                         R2 18
      235 GETTABLEKS                       R2 R2 K2 ["Type"]
      237 GETUPVAL                         R3 3
      238 CALL                             R0 3 0
      239 GETUPVAL                         R0 0
      240 GETTABLEKS                       R0 R0 K0 ["add"]
      242 GETUPVAL                         R1 1
      243 GETTABLEKS                       R1 R1 K25 ["QuestionAnswer"]
      245 GETUPVAL                         R2 19
      246 GETTABLEKS                       R2 R2 K2 ["Type"]
      248 GETUPVAL                         R3 3
      249 CALL                             R0 3 0
      250 GETUPVAL                         R0 0
      251 GETTABLEKS                       R0 R0 K0 ["add"]
      253 GETUPVAL                         R1 1
      254 GETTABLEKS                       R1 R1 K26 ["ReadFile"]
      256 GETUPVAL                         R2 20
      257 GETTABLEKS                       R2 R2 K2 ["Type"]
      259 GETUPVAL                         R3 3
      260 CALL                             R0 3 0
      261 GETUPVAL                         R0 0
      262 GETTABLEKS                       R0 R0 K0 ["add"]
      264 GETUPVAL                         R1 1
      265 GETTABLEKS                       R1 R1 K27 ["ScreenCapture"]
      267 GETUPVAL                         R2 21
      268 GETTABLEKS                       R2 R2 K2 ["Type"]
      270 GETUPVAL                         R3 3
      271 CALL                             R0 3 0
      272 GETUPVAL                         R0 0
      273 GETTABLEKS                       R0 R0 K0 ["add"]
      275 GETUPVAL                         R1 1
      276 GETTABLEKS                       R1 R1 K28 ["Skill"]
      278 GETUPVAL                         R2 22
      279 GETTABLEKS                       R2 R2 K2 ["Type"]
      281 GETUPVAL                         R3 3
      282 CALL                             R0 3 0
      283 GETUPVAL                         R0 0
      284 GETTABLEKS                       R0 R0 K0 ["add"]
      286 GETUPVAL                         R1 1
      287 GETTABLEKS                       R1 R1 K29 ["StartMultiPlayerAgents"]
      289 LOADNIL                          R2
      290 GETUPVAL                         R3 3
      291 CALL                             R0 3 0
      292 GETUPVAL                         R0 0
      293 GETTABLEKS                       R0 R0 K0 ["add"]
      295 GETUPVAL                         R1 1
      296 GETTABLEKS                       R1 R1 K30 ["StartStopPlay"]
      298 LOADNIL                          R2
      299 GETUPVAL                         R3 3
      300 CALL                             R0 3 0
      301 GETUPVAL                         R0 0
      302 GETTABLEKS                       R0 R0 K0 ["add"]
      304 GETUPVAL                         R1 1
      305 GETTABLEKS                       R1 R1 K31 ["StopMultiPlayerAgents"]
      307 LOADNIL                          R2
      308 GETUPVAL                         R3 3
      309 CALL                             R0 3 0
      310 GETUPVAL                         R0 0
      311 GETTABLEKS                       R0 R0 K0 ["add"]
      313 GETUPVAL                         R1 1
      314 GETTABLEKS                       R1 R1 K32 ["StoreImage"]
      316 LOADNIL                          R2
      317 GETUPVAL                         R3 3
      318 CALL                             R0 3 0
      319 GETUPVAL                         R0 0
      320 GETTABLEKS                       R0 R0 K0 ["add"]
      322 GETUPVAL                         R1 1
      323 GETTABLEKS                       R1 R1 K33 ["Subagent"]
      325 GETUPVAL                         R2 23
      326 GETTABLEKS                       R2 R2 K2 ["Type"]
      328 GETUPVAL                         R3 3
      329 CALL                             R0 3 0
      330 GETUPVAL                         R0 0
      331 GETTABLEKS                       R0 R0 K0 ["add"]
      333 GETUPVAL                         R1 1
      334 GETTABLEKS                       R1 R1 K34 ["UpdatePlan"]
      336 LOADNIL                          R2
      337 GETUPVAL                         R3 3
      338 CALL                             R0 3 0
      339 GETUPVAL                         R0 0
      340 GETTABLEKS                       R0 R0 K0 ["add"]
      342 GETUPVAL                         R1 1
      343 GETTABLEKS                       R1 R1 K35 ["UploadImage"]
      345 LOADNIL                          R2
      346 GETUPVAL                         R3 3
      347 CALL                             R0 3 0
      348 GETUPVAL                         R0 0
      349 GETTABLEKS                       R0 R0 K0 ["add"]
      351 GETUPVAL                         R1 1
      352 GETTABLEKS                       R1 R1 K36 ["UserKeyboardInput"]
      354 LOADNIL                          R2
      355 GETUPVAL                         R3 3
      356 CALL                             R0 3 0
      357 GETUPVAL                         R0 0
      358 GETTABLEKS                       R0 R0 K0 ["add"]
      360 GETUPVAL                         R1 1
      361 GETTABLEKS                       R1 R1 K37 ["UserMouseInput"]
      363 LOADNIL                          R2
      364 GETUPVAL                         R3 3
      365 CALL                             R0 3 0
      366 GETUPVAL                         R0 0
      367 GETTABLEKS                       R0 R0 K0 ["add"]
      369 GETUPVAL                         R1 1
      370 GETTABLEKS                       R1 R1 K38 ["VideoCapture"]
      372 LOADNIL                          R2
      373 GETUPVAL                         R3 3
      374 CALL                             R0 3 0
      375 GETUPVAL                         R0 0
      376 GETTABLEKS                       R0 R0 K0 ["add"]
      378 GETUPVAL                         R1 1
      379 GETTABLEKS                       R1 R1 K39 ["WaitForMultiPlayerAgentsCommunication"]
      381 LOADNIL                          R2
      382 GETUPVAL                         R3 3
      383 CALL                             R0 3 0
      384 GETUPVAL                         R0 0
      385 GETTABLEKS                       R0 R0 K0 ["add"]
      387 GETUPVAL                         R1 1
      388 GETTABLEKS                       R1 R1 K40 ["WaitJobFinished"]
      390 LOADNIL                          R2
      391 GETUPVAL                         R3 3
      392 CALL                             R0 3 0
      393 GETUPVAL                         R0 24
      394 CALL                             R0 0 1
      395 LENGTH                           R1 R0
      396 LOADN                            R2 0
      397 JUMPIFNOTLT                      R2 R1 ; [+13]
      399 GETUPVAL                         R1 25
      400 CALL                             R1 0 1
      401 JUMPIFNOT                        R1 ; [+9]
      402 GETIMPORT                        R1 K42 [print]
      404 LOADK                            R3 K43 ["[registerToolWidgetMappings] Applying %* FString mapping(s)"]
      405 LENGTH                           R5 R0
      406 NAMECALL                         R3 R3 K44 ["format"]
      408 CALL                             R3 2 1
      409 MOVE                             R2 R3
      410 CALL                             R1 1 0
      411 MOVE                             R1 R0
      412 LOADNIL                          R2
      413 LOADNIL                          R3
      414 FORGPREP                         R1
      415 GETUPVAL                         R6 0
      416 GETTABLEKS                       R6 R6 K0 ["add"]
      418 GETTABLEKS                       R7 R5 K45 ["toolName"]
      420 GETTABLEKS                       R8 R5 K46 ["widgetType"]
      422 GETUPVAL                         R9 26
      423 GETTABLEKS                       R9 R9 K47 ["FString"]
      425 CALL                             R6 3 0
      426 FORGLOOP                         R1 2 ; [-12]
      428 GETUPVAL                         R1 25
      429 CALL                             R1 0 1
      430 JUMPIFNOT                        R1 ; [+29]
      431 GETUPVAL                         R1 1
      432 LOADNIL                          R2
      433 LOADNIL                          R3
      434 FORGPREP                         R1
      435 FASTCALL1                        TYPEOF R5 ; [+3]
      436 MOVE                             R7 R5
      437 GETIMPORT                        R6 K49 [typeof]
      439 CALL                             R6 1 1
      440 JUMPIFNOTEQKS                    R6 K50 ["string"] ; [+17]
      442 GETUPVAL                         R6 0
      443 GETTABLEKS                       R6 R6 K51 ["get"]
      445 MOVE                             R7 R5
      446 CALL                             R6 1 1
      447 JUMPIF                           R6 ; [+10]
      448 GETIMPORT                        R6 K53 [error]
      450 LOADK                            R8 K54 ["[registerToolWidgetMappings] No widget mapping found for tool \"%*\""]
      451 MOVE                             R10 R5
      452 NAMECALL                         R8 R8 K44 ["format"]
      454 CALL                             R8 2 1
      455 MOVE                             R7 R8
      456 LOADN                            R8 0
      457 CALL                             R6 2 0
      458 FORGLOOP                         R1 2 ; [-24]
      460 RETURN                           R0 0

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
       52 GETTABLEKS                       R7 R0 K17 ["Components"]
       54 GETTABLEKS                       R7 R7 K9 ["ContentWidgets"]
       56 GETTABLEKS                       R7 R7 K18 ["CreateSkillContentWidget"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K11 ["Features"]
       63 GETTABLEKS                       R8 R8 K19 ["CreatorStore"]
       65 GETTABLEKS                       R8 R8 K20 ["CreatorStoreInsertContentWidget"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K17 ["Components"]
       72 GETTABLEKS                       R9 R9 K9 ["ContentWidgets"]
       74 GETTABLEKS                       R9 R9 K21 ["FileSearchContentWidget"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K17 ["Components"]
       81 GETTABLEKS                       R10 R10 K9 ["ContentWidgets"]
       83 GETTABLEKS                       R10 R10 K22 ["FinalizePlanContentWidget"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K17 ["Components"]
       90 GETTABLEKS                       R11 R11 K9 ["ContentWidgets"]
       92 GETTABLEKS                       R11 R11 K23 ["FromHistoryContentWidget"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R12 R0 K17 ["Components"]
       99 GETTABLEKS                       R12 R12 K9 ["ContentWidgets"]
      101 GETTABLEKS                       R12 R12 K24 ["GameTreeContentWidget"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K5 [require]
      106 GETTABLEKS                       R13 R0 K17 ["Components"]
      108 GETTABLEKS                       R13 R13 K9 ["ContentWidgets"]
      110 GETTABLEKS                       R13 R13 K25 ["GrepSearchContentWidget"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K5 [require]
      115 GETTABLEKS                       R14 R0 K17 ["Components"]
      117 GETTABLEKS                       R14 R14 K9 ["ContentWidgets"]
      119 GETTABLEKS                       R14 R14 K26 ["HttpGetContentWidget"]
      121 CALL                             R13 1 1
      122 GETIMPORT                        R14 K5 [require]
      124 GETTABLEKS                       R15 R0 K17 ["Components"]
      126 GETTABLEKS                       R15 R15 K9 ["ContentWidgets"]
      128 GETTABLEKS                       R15 R15 K27 ["ImageContentWidget"]
      130 CALL                             R14 1 1
      131 GETIMPORT                        R15 K5 [require]
      133 GETTABLEKS                       R16 R0 K17 ["Components"]
      135 GETTABLEKS                       R16 R16 K9 ["ContentWidgets"]
      137 GETTABLEKS                       R16 R16 K28 ["InspectInstanceContentWidget"]
      139 CALL                             R15 1 1
      140 GETIMPORT                        R16 K5 [require]
      142 GETTABLEKS                       R17 R0 K17 ["Components"]
      144 GETTABLEKS                       R17 R17 K9 ["ContentWidgets"]
      146 GETTABLEKS                       R17 R17 K29 ["MaterialGenContentWidget"]
      148 CALL                             R16 1 1
      149 GETIMPORT                        R17 K5 [require]
      151 GETTABLEKS                       R18 R0 K11 ["Features"]
      153 GETTABLEKS                       R18 R18 K30 ["MeshGen"]
      155 GETTABLEKS                       R18 R18 K31 ["MeshGenContentWidget"]
      157 CALL                             R17 1 1
      158 GETIMPORT                        R18 K5 [require]
      160 GETTABLEKS                       R19 R0 K11 ["Features"]
      162 GETTABLEKS                       R19 R19 K32 ["PrimitiveGen"]
      164 GETTABLEKS                       R19 R19 K33 ["PrimitiveGenContentWidget"]
      166 CALL                             R18 1 1
      167 GETIMPORT                        R19 K5 [require]
      169 GETTABLEKS                       R20 R0 K17 ["Components"]
      171 GETTABLEKS                       R20 R20 K9 ["ContentWidgets"]
      173 GETTABLEKS                       R20 R20 K34 ["QuestionAnswerContentWidget"]
      175 CALL                             R19 1 1
      176 GETIMPORT                        R20 K5 [require]
      178 GETTABLEKS                       R21 R0 K17 ["Components"]
      180 GETTABLEKS                       R21 R21 K9 ["ContentWidgets"]
      182 GETTABLEKS                       R21 R21 K35 ["ReadFileContentWidget"]
      184 CALL                             R20 1 1
      185 GETIMPORT                        R21 K5 [require]
      187 GETTABLEKS                       R22 R0 K17 ["Components"]
      189 GETTABLEKS                       R22 R22 K9 ["ContentWidgets"]
      191 GETTABLEKS                       R22 R22 K36 ["RunCodeContentWidget"]
      193 CALL                             R21 1 1
      194 GETIMPORT                        R22 K5 [require]
      196 GETTABLEKS                       R23 R0 K17 ["Components"]
      198 GETTABLEKS                       R23 R23 K9 ["ContentWidgets"]
      200 GETTABLEKS                       R23 R23 K37 ["SkillContentWidget"]
      202 CALL                             R22 1 1
      203 GETIMPORT                        R23 K5 [require]
      205 GETTABLEKS                       R24 R0 K17 ["Components"]
      207 GETTABLEKS                       R24 R24 K9 ["ContentWidgets"]
      209 GETTABLEKS                       R24 R24 K38 ["SubagentProgressWidget"]
      211 CALL                             R23 1 1
      212 GETIMPORT                        R24 K5 [require]
      214 GETTABLEKS                       R25 R0 K39 ["Flags"]
      216 GETTABLEKS                       R25 R25 K40 ["FFlagDebugLogAssistantUI"]
      218 CALL                             R24 1 1
      219 GETIMPORT                        R25 K5 [require]
      221 GETTABLEKS                       R26 R0 K39 ["Flags"]
      223 GETTABLEKS                       R26 R26 K41 ["FStringAssistantToolWidgetMappings"]
      225 CALL                             R25 1 1
      226 GETTABLEKS                       R26 R2 K42 ["MappingSource"]
      228 GETTABLEKS                       R27 R26 K43 ["Hardcoded"]
      230 DUPCLOSURE                       R28 K44 [PROTO_1]
      231 CAPTURE                          VAL R25
      232 CAPTURE                          VAL R24
      233 DUPCLOSURE                       R29 K45 [PROTO_2]
      234 CAPTURE                          VAL R2
      235 CAPTURE                          VAL R1
      236 CAPTURE                          VAL R3
      237 CAPTURE                          VAL R27
      238 CAPTURE                          VAL R4
      239 CAPTURE                          VAL R5
      240 CAPTURE                          VAL R6
      241 CAPTURE                          VAL R7
      242 CAPTURE                          VAL R21
      243 CAPTURE                          VAL R8
      244 CAPTURE                          VAL R9
      245 CAPTURE                          VAL R10
      246 CAPTURE                          VAL R11
      247 CAPTURE                          VAL R12
      248 CAPTURE                          VAL R13
      249 CAPTURE                          VAL R15
      250 CAPTURE                          VAL R16
      251 CAPTURE                          VAL R17
      252 CAPTURE                          VAL R18
      253 CAPTURE                          VAL R19
      254 CAPTURE                          VAL R20
      255 CAPTURE                          VAL R14
      256 CAPTURE                          VAL R22
      257 CAPTURE                          VAL R23
      258 CAPTURE                          VAL R28
      259 CAPTURE                          VAL R24
      260 CAPTURE                          VAL R26
      261 RETURN                           R29 1
