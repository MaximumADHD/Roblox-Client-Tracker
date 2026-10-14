PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R1 ; [+25]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+6]
        7 FASTCALL1                        MATH_RAD R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [math.rad]
       11 CALL                             R1 1 1
       12 MOVE                             R0 R1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K4 ["join"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K5 ["Input"]
       22 GETTABLEKS                       R3 R3 K6 ["Value"]
       24 DUPTABLE                         R4 K8 [{"X"}]
       25 SETTABLEKS                       R0 R4 K7 ["X"]
       27 CALL                             R2 2 -1
       28 CALL                             R1 -1 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R1 ; [+17]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["join"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["Input"]
       14 GETTABLEKS                       R3 R3 K3 ["Value"]
       16 DUPTABLE                         R4 K5 [{"Y"}]
       17 SETTABLEKS                       R0 R4 K4 ["Y"]
       19 CALL                             R2 2 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["formatDegrees"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["createNextOrder"]
       12 CALL                             R2 0 1
       13 GETTABLEKS                       R4 R0 K3 ["InputBuilderProps"]
       15 GETTABLEKS                       R4 R4 K4 ["InputMode"]
       17 GETIMPORT                        R5 K8 [Enum.AnimationNodeBlend2DInputMode.Polar]
       19 JUMPIFEQ                         R4 R5 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K0 ["useCallback"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U3
       30 NEWTABLE                         R6 0 3
       32 GETTABLEKS                       R7 R0 K9 ["OnChanged"]
       34 GETTABLEKS                       R8 R0 K10 ["Input"]
       36 MOVE                             R9 R3
       37 SETLIST                          R6 R7 3 [1]
       39 CALL                             R4 2 1
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K0 ["useCallback"]
       43 NEWCLOSURE                       R6 P1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U3
       46 NEWTABLE                         R7 0 2
       48 GETTABLEKS                       R8 R0 K9 ["OnChanged"]
       50 GETTABLEKS                       R9 R0 K10 ["Input"]
       52 SETLIST                          R7 R8 2 [1]
       54 CALL                             R5 2 1
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K11 ["createElement"]
       58 GETUPVAL                         R7 4
       59 GETTABLEKS                       R7 R7 K12 ["View"]
       61 DUPTABLE                         R8 K15 [{"tag", "LayoutOrder"}]
       62 NEWTABLE                         R9 2 0
       64 LOADB                            R10 1
       65 SETTABLEKS                       R10 R9 K16 ["row align-y-center gap-small size-full-700 auto-y padding-x-small"]
       67 GETUPVAL                         R11 5
       68 CALL                             R11 0 1
       69 NOT                              R10 R11
       70 SETTABLEKS                       R10 R9 K17 ["flex-x-fill"]
       72 SETTABLEKS                       R9 R8 K13 ["tag"]
       74 GETTABLEKS                       R9 R0 K14 ["LayoutOrder"]
       76 SETTABLEKS                       R9 R8 K14 ["LayoutOrder"]
       78 DUPTABLE                         R9 K22 [{"InputLabelWeight", "X", "Y", "PinChildren"}]
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R10 R10 K11 ["createElement"]
       82 GETUPVAL                         R11 6
       83 DUPTABLE                         R12 K31 [{"Name", "Label", "Weight", "LayoutOrder", "OnDelete", "OnRename", "IsHovered", "HasDuplicateName", "TrailingValue"}]
       84 GETTABLEKS                       R13 R0 K10 ["Input"]
       86 GETTABLEKS                       R13 R13 K23 ["Name"]
       88 SETTABLEKS                       R13 R12 K23 ["Name"]
       90 GETTABLEKS                       R13 R0 K10 ["Input"]
       92 GETTABLEKS                       R13 R13 K32 ["ConnectedNodeName"]
       94 SETTABLEKS                       R13 R12 K24 ["Label"]
       96 GETTABLEKS                       R13 R0 K10 ["Input"]
       98 GETTABLEKS                       R13 R13 K25 ["Weight"]
      100 SETTABLEKS                       R13 R12 K25 ["Weight"]
      102 MOVE                             R13 R2
      103 CALL                             R13 0 1
      104 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      106 GETTABLEKS                       R13 R0 K26 ["OnDelete"]
      108 SETTABLEKS                       R13 R12 K26 ["OnDelete"]
      110 GETUPVAL                         R14 5
      111 CALL                             R14 0 1
      112 JUMPIFNOT                        R14 ; [+3]
      113 GETTABLEKS                       R13 R0 K27 ["OnRename"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R13
      117 SETTABLEKS                       R13 R12 K27 ["OnRename"]
      119 GETTABLEKS                       R13 R0 K28 ["IsHovered"]
      121 SETTABLEKS                       R13 R12 K28 ["IsHovered"]
      123 GETTABLEKS                       R13 R0 K29 ["HasDuplicateName"]
      125 SETTABLEKS                       R13 R12 K29 ["HasDuplicateName"]
      127 GETUPVAL                         R14 5
      128 CALL                             R14 0 1
      129 JUMPIFNOT                        R14 ; [+172]
      130 GETUPVAL                         R13 0
      131 GETTABLEKS                       R13 R13 K11 ["createElement"]
      133 GETUPVAL                         R14 4
      134 GETTABLEKS                       R14 R14 K12 ["View"]
      136 DUPTABLE                         R15 K34 [{["tag"] = "row gap-xsmall size-full-0 auto-y"}]
      137 DUPTABLE                         R16 K35 [{"X", "Y"}]
      138 GETUPVAL                         R17 0
      139 GETTABLEKS                       R17 R17 K11 ["createElement"]
      141 GETUPVAL                         R18 4
      142 GETTABLEKS                       R18 R18 K36 ["NumberInput"]
      144 DUPTABLE                         R19 K52 [{["size"], ["width"], ["label"] = "", ["value"], ["formatAsString"], ["step"] = 0.005, ["minimum"], ["maximum"], ["LayoutOrder"] = 1, ["precision"], ["onChanged"], ["controlsVariant"], ["scrubBehavior"]}]
      145 GETUPVAL                         R20 4
      146 GETTABLEKS                       R20 R20 K53 ["Enums"]
      148 GETTABLEKS                       R20 R20 K54 ["InputSize"]
      150 GETTABLEKS                       R20 R20 K55 ["XSmall"]
      152 SETTABLEKS                       R20 R19 K37 ["size"]
      154 GETIMPORT                        R20 K58 [UDim.new]
      156 LOADK                            R21 K59 [0.5]
      157 LOADN                            R22 -2
      158 CALL                             R20 2 1
      159 SETTABLEKS                       R20 R19 K38 ["width"]
      161 JUMPIFNOT                        R3 ; [+17]
      162 GETTABLEKS                       R24 R0 K10 ["Input"]
      164 GETTABLEKS                       R24 R24 K61 ["Value"]
      166 GETTABLEKS                       R24 R24 K19 ["X"]
      168 FASTCALL1                        MATH_DEG R24 ; [+2]
      169 GETIMPORT                        R23 K64 [math.deg]
      171 CALL                             R23 1 1
      172 MULK                             R22 R23 K60 [100]
      173 FASTCALL1                        MATH_ROUND R22 ; [+2]
      174 GETIMPORT                        R21 K66 [math.round]
      176 CALL                             R21 1 1
      177 DIVK                             R20 R21 K60 [100]
      178 JUMP                             ; [+6]
      179 GETTABLEKS                       R20 R0 K10 ["Input"]
      181 GETTABLEKS                       R20 R20 K61 ["Value"]
      183 GETTABLEKS                       R20 R20 K19 ["X"]
      185 SETTABLEKS                       R20 R19 K41 ["value"]
      187 JUMPIFNOT                        R3 ; [+2]
      188 MOVE                             R20 R1
      189 JUMP                             ; [+1]
      190 LOADNIL                          R20
      191 SETTABLEKS                       R20 R19 K42 ["formatAsString"]
      193 JUMPIFNOT                        R3 ; [+2]
      194 LOADN                            R20 -180
      195 JUMP                             ; [+1]
      196 LOADK                            R20 K67 [-∞]
      197 SETTABLEKS                       R20 R19 K45 ["minimum"]
      199 JUMPIFNOT                        R3 ; [+2]
      200 LOADN                            R20 180
      201 JUMP                             ; [+1]
      202 LOADK                            R20 K68 [∞]
      203 SETTABLEKS                       R20 R19 K46 ["maximum"]
      205 GETUPVAL                         R20 7
      206 GETTABLEKS                       R20 R20 K69 ["NUMBER_PRECISION"]
      208 GETTABLEKS                       R20 R20 K70 ["Float"]
      210 SETTABLEKS                       R20 R19 K48 ["precision"]
      212 SETTABLEKS                       R4 R19 K49 ["onChanged"]
      214 GETUPVAL                         R20 4
      215 GETTABLEKS                       R20 R20 K53 ["Enums"]
      217 GETTABLEKS                       R20 R20 K71 ["NumberInputControlsVariant"]
      219 GETTABLEKS                       R20 R20 K72 ["None"]
      221 SETTABLEKS                       R20 R19 K50 ["controlsVariant"]
      223 GETUPVAL                         R20 8
      224 GETTABLEKS                       R20 R20 K73 ["On"]
      226 SETTABLEKS                       R20 R19 K51 ["scrubBehavior"]
      228 CALL                             R17 2 1
      229 SETTABLEKS                       R17 R16 K19 ["X"]
      231 GETUPVAL                         R17 0
      232 GETTABLEKS                       R17 R17 K11 ["createElement"]
      234 GETUPVAL                         R18 4
      235 GETTABLEKS                       R18 R18 K36 ["NumberInput"]
      237 DUPTABLE                         R19 K75 [{["size"], ["width"], ["label"] = "", ["value"], ["minimum"], ["LayoutOrder"] = 2, ["precision"], ["step"] = 0.005, ["onChanged"], ["controlsVariant"], ["scrubBehavior"]}]
      238 GETUPVAL                         R20 4
      239 GETTABLEKS                       R20 R20 K53 ["Enums"]
      241 GETTABLEKS                       R20 R20 K54 ["InputSize"]
      243 GETTABLEKS                       R20 R20 K55 ["XSmall"]
      245 SETTABLEKS                       R20 R19 K37 ["size"]
      247 GETIMPORT                        R20 K58 [UDim.new]
      249 LOADK                            R21 K59 [0.5]
      250 LOADN                            R22 -2
      251 CALL                             R20 2 1
      252 SETTABLEKS                       R20 R19 K38 ["width"]
      254 GETTABLEKS                       R23 R0 K10 ["Input"]
      256 GETTABLEKS                       R23 R23 K61 ["Value"]
      258 GETTABLEKS                       R23 R23 K20 ["Y"]
      260 MULK                             R22 R23 K60 [100]
      261 FASTCALL1                        MATH_ROUND R22 ; [+2]
      262 GETIMPORT                        R21 K66 [math.round]
      264 CALL                             R21 1 1
      265 DIVK                             R20 R21 K60 [100]
      266 SETTABLEKS                       R20 R19 K41 ["value"]
      268 JUMPIFNOT                        R3 ; [+2]
      269 LOADN                            R20 0
      270 JUMP                             ; [+1]
      271 LOADK                            R20 K67 [-∞]
      272 SETTABLEKS                       R20 R19 K45 ["minimum"]
      274 GETUPVAL                         R20 7
      275 GETTABLEKS                       R20 R20 K69 ["NUMBER_PRECISION"]
      277 GETTABLEKS                       R20 R20 K70 ["Float"]
      279 SETTABLEKS                       R20 R19 K48 ["precision"]
      281 SETTABLEKS                       R5 R19 K49 ["onChanged"]
      283 GETUPVAL                         R20 4
      284 GETTABLEKS                       R20 R20 K53 ["Enums"]
      286 GETTABLEKS                       R20 R20 K71 ["NumberInputControlsVariant"]
      288 GETTABLEKS                       R20 R20 K72 ["None"]
      290 SETTABLEKS                       R20 R19 K50 ["controlsVariant"]
      292 GETUPVAL                         R20 8
      293 GETTABLEKS                       R20 R20 K73 ["On"]
      295 SETTABLEKS                       R20 R19 K51 ["scrubBehavior"]
      297 CALL                             R17 2 1
      298 SETTABLEKS                       R17 R16 K20 ["Y"]
      300 CALL                             R13 3 1
      301 JUMP                             ; [+1]
      302 LOADNIL                          R13
      303 SETTABLEKS                       R13 R12 K30 ["TrailingValue"]
      305 CALL                             R10 2 1
      306 SETTABLEKS                       R10 R9 K18 ["InputLabelWeight"]
      308 GETUPVAL                         R11 5
      309 CALL                             R11 0 1
      310 JUMPIFNOT                        R11 ; [+2]
      311 LOADNIL                          R10
      312 JUMP                             ; [+95]
      313 GETUPVAL                         R10 0
      314 GETTABLEKS                       R10 R10 K11 ["createElement"]
      316 GETUPVAL                         R11 4
      317 GETTABLEKS                       R11 R11 K36 ["NumberInput"]
      319 DUPTABLE                         R12 K76 [{["size"], ["width"], ["label"] = "", ["value"], ["formatAsString"], ["step"] = 0.005, ["minimum"], ["maximum"], ["LayoutOrder"], ["precision"], ["onChanged"], ["controlsVariant"], ["scrubBehavior"]}]
      320 GETUPVAL                         R13 4
      321 GETTABLEKS                       R13 R13 K53 ["Enums"]
      323 GETTABLEKS                       R13 R13 K54 ["InputSize"]
      325 GETTABLEKS                       R13 R13 K55 ["XSmall"]
      327 SETTABLEKS                       R13 R12 K37 ["size"]
      329 GETIMPORT                        R13 K58 [UDim.new]
      331 LOADN                            R14 0
      332 LOADN                            R15 60
      333 CALL                             R13 2 1
      334 SETTABLEKS                       R13 R12 K38 ["width"]
      336 JUMPIFNOT                        R3 ; [+17]
      337 GETTABLEKS                       R17 R0 K10 ["Input"]
      339 GETTABLEKS                       R17 R17 K61 ["Value"]
      341 GETTABLEKS                       R17 R17 K19 ["X"]
      343 FASTCALL1                        MATH_DEG R17 ; [+2]
      344 GETIMPORT                        R16 K64 [math.deg]
      346 CALL                             R16 1 1
      347 MULK                             R15 R16 K60 [100]
      348 FASTCALL1                        MATH_ROUND R15 ; [+2]
      349 GETIMPORT                        R14 K66 [math.round]
      351 CALL                             R14 1 1
      352 DIVK                             R13 R14 K60 [100]
      353 JUMP                             ; [+6]
      354 GETTABLEKS                       R13 R0 K10 ["Input"]
      356 GETTABLEKS                       R13 R13 K61 ["Value"]
      358 GETTABLEKS                       R13 R13 K19 ["X"]
      360 SETTABLEKS                       R13 R12 K41 ["value"]
      362 JUMPIFNOT                        R3 ; [+2]
      363 MOVE                             R13 R1
      364 JUMP                             ; [+1]
      365 LOADNIL                          R13
      366 SETTABLEKS                       R13 R12 K42 ["formatAsString"]
      368 JUMPIFNOT                        R3 ; [+2]
      369 LOADN                            R13 -180
      370 JUMP                             ; [+1]
      371 LOADK                            R13 K67 [-∞]
      372 SETTABLEKS                       R13 R12 K45 ["minimum"]
      374 JUMPIFNOT                        R3 ; [+2]
      375 LOADN                            R13 180
      376 JUMP                             ; [+1]
      377 LOADK                            R13 K68 [∞]
      378 SETTABLEKS                       R13 R12 K46 ["maximum"]
      380 MOVE                             R13 R2
      381 CALL                             R13 0 1
      382 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      384 GETUPVAL                         R13 7
      385 GETTABLEKS                       R13 R13 K69 ["NUMBER_PRECISION"]
      387 GETTABLEKS                       R13 R13 K70 ["Float"]
      389 SETTABLEKS                       R13 R12 K48 ["precision"]
      391 SETTABLEKS                       R4 R12 K49 ["onChanged"]
      393 GETUPVAL                         R13 4
      394 GETTABLEKS                       R13 R13 K53 ["Enums"]
      396 GETTABLEKS                       R13 R13 K71 ["NumberInputControlsVariant"]
      398 GETTABLEKS                       R13 R13 K72 ["None"]
      400 SETTABLEKS                       R13 R12 K50 ["controlsVariant"]
      402 GETUPVAL                         R13 8
      403 GETTABLEKS                       R13 R13 K73 ["On"]
      405 SETTABLEKS                       R13 R12 K51 ["scrubBehavior"]
      407 CALL                             R10 2 1
      408 SETTABLEKS                       R10 R9 K19 ["X"]
      410 GETUPVAL                         R11 5
      411 CALL                             R11 0 1
      412 JUMPIFNOT                        R11 ; [+2]
      413 LOADNIL                          R10
      414 JUMP                             ; [+71]
      415 GETUPVAL                         R10 0
      416 GETTABLEKS                       R10 R10 K11 ["createElement"]
      418 GETUPVAL                         R11 4
      419 GETTABLEKS                       R11 R11 K36 ["NumberInput"]
      421 DUPTABLE                         R12 K77 [{["size"], ["width"], ["label"] = "", ["value"], ["minimum"], ["LayoutOrder"], ["precision"], ["step"] = 0.005, ["onChanged"], ["controlsVariant"], ["scrubBehavior"]}]
      422 GETUPVAL                         R13 4
      423 GETTABLEKS                       R13 R13 K53 ["Enums"]
      425 GETTABLEKS                       R13 R13 K54 ["InputSize"]
      427 GETTABLEKS                       R13 R13 K55 ["XSmall"]
      429 SETTABLEKS                       R13 R12 K37 ["size"]
      431 GETIMPORT                        R13 K58 [UDim.new]
      433 LOADN                            R14 0
      434 LOADN                            R15 60
      435 CALL                             R13 2 1
      436 SETTABLEKS                       R13 R12 K38 ["width"]
      438 GETTABLEKS                       R16 R0 K10 ["Input"]
      440 GETTABLEKS                       R16 R16 K61 ["Value"]
      442 GETTABLEKS                       R16 R16 K20 ["Y"]
      444 MULK                             R15 R16 K60 [100]
      445 FASTCALL1                        MATH_ROUND R15 ; [+2]
      446 GETIMPORT                        R14 K66 [math.round]
      448 CALL                             R14 1 1
      449 DIVK                             R13 R14 K60 [100]
      450 SETTABLEKS                       R13 R12 K41 ["value"]
      452 JUMPIFNOT                        R3 ; [+2]
      453 LOADN                            R13 0
      454 JUMP                             ; [+1]
      455 LOADK                            R13 K67 [-∞]
      456 SETTABLEKS                       R13 R12 K45 ["minimum"]
      458 MOVE                             R13 R2
      459 CALL                             R13 0 1
      460 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      462 GETUPVAL                         R13 7
      463 GETTABLEKS                       R13 R13 K69 ["NUMBER_PRECISION"]
      465 GETTABLEKS                       R13 R13 K70 ["Float"]
      467 SETTABLEKS                       R13 R12 K48 ["precision"]
      469 SETTABLEKS                       R5 R12 K49 ["onChanged"]
      471 GETUPVAL                         R13 4
      472 GETTABLEKS                       R13 R13 K53 ["Enums"]
      474 GETTABLEKS                       R13 R13 K71 ["NumberInputControlsVariant"]
      476 GETTABLEKS                       R13 R13 K72 ["None"]
      478 SETTABLEKS                       R13 R12 K50 ["controlsVariant"]
      480 GETUPVAL                         R13 8
      481 GETTABLEKS                       R13 R13 K73 ["On"]
      483 SETTABLEKS                       R13 R12 K51 ["scrubBehavior"]
      485 CALL                             R10 2 1
      486 SETTABLEKS                       R10 R9 K20 ["Y"]
      488 GETUPVAL                         R10 0
      489 GETTABLEKS                       R10 R10 K11 ["createElement"]
      491 LOADK                            R11 K78 ["Folder"]
      492 NEWTABLE                         R12 0 0
      494 DUPTABLE                         R13 K80 [{"RenderedPinInput"}]
      495 GETUPVAL                         R14 0
      496 GETTABLEKS                       R14 R14 K11 ["createElement"]
      498 GETUPVAL                         R15 9
      499 GETTABLEKS                       R15 R15 K81 ["RenderedCompositorPin"]
      501 DUPTABLE                         R16 K90 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinInputId"], ["pinValue"], ["selected"]}]
      502 GETIMPORT                        R17 K93 [UDim2.fromOffset]
      504 GETUPVAL                         R19 10
      505 CALL                             R19 0 1
      506 JUMPIFNOT                        R19 ; [+2]
      507 LOADN                            R18 -21
      508 JUMP                             ; [+1]
      509 LOADN                            R18 -9
      510 LOADN                            R19 14
      511 CALL                             R17 2 1
      512 SETTABLEKS                       R17 R16 K82 ["Position"]
      514 GETUPVAL                         R17 9
      515 GETTABLEKS                       R17 R17 K94 ["DEFAULT_PIN_DATA_TYPE"]
      517 SETTABLEKS                       R17 R16 K84 ["pinDataType"]
      519 GETTABLEKS                       R17 R0 K95 ["NodeId"]
      521 SETTABLEKS                       R17 R16 K85 ["pinNodeId"]
      523 GETTABLEKS                       R17 R0 K10 ["Input"]
      525 GETTABLEKS                       R17 R17 K23 ["Name"]
      527 SETTABLEKS                       R17 R16 K86 ["pinName"]
      529 GETTABLEKS                       R17 R0 K10 ["Input"]
      531 GETTABLEKS                       R17 R17 K96 ["InputId"]
      533 SETTABLEKS                       R17 R16 K87 ["pinInputId"]
      535 GETTABLEKS                       R17 R0 K10 ["Input"]
      537 GETTABLEKS                       R17 R17 K61 ["Value"]
      539 SETTABLEKS                       R17 R16 K88 ["pinValue"]
      541 GETTABLEKS                       R17 R0 K97 ["IsSelected"]
      543 SETTABLEKS                       R17 R16 K89 ["selected"]
      545 CALL                             R14 2 1
      546 SETTABLEKS                       R14 R13 K79 ["RenderedPinInput"]
      548 CALL                             R10 3 1
      549 SETTABLEKS                       R10 R9 K21 ["PinChildren"]
      551 CALL                             R6 3 -1
      552 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K13 ["CompositorNodeInput"]
       36 GETTABLEKS                       R5 R5 K14 ["InputLabelWeight"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K11 ["Components"]
       43 GETTABLEKS                       R6 R6 K12 ["NodeView"]
       45 GETTABLEKS                       R6 R6 K13 ["CompositorNodeInput"]
       47 GETTABLEKS                       R6 R6 K15 ["InputPanelTypes"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Parent"]
       54 GETTABLEKS                       R7 R7 K16 ["NodeGraphing"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K11 ["Components"]
       61 GETTABLEKS                       R8 R8 K12 ["NodeView"]
       63 GETTABLEKS                       R8 R8 K17 ["CompositorNodeProperty"]
       65 GETTABLEKS                       R8 R8 K18 ["PropertyUtils"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K8 ["Parent"]
       72 GETTABLEKS                       R9 R9 K19 ["React"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K8 ["Parent"]
       79 GETTABLEKS                       R10 R10 K20 ["ReactUtils"]
       81 CALL                             R9 1 1
       82 GETTABLEKS                       R10 R3 K21 ["Enums"]
       84 GETTABLEKS                       R10 R10 K22 ["ScrubBehavior"]
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R12 R0 K23 ["Flags"]
       90 GETTABLEKS                       R12 R12 K24 ["getFFlagAnimGraphUIInputIds"]
       92 CALL                             R11 1 1
       93 GETTABLEKS                       R12 R6 K25 ["getFFlagAnimGraphUIPinOffset"]
       95 DUPCLOSURE                       R13 K26 [PROTO_2]
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R12
      107 RETURN                           R13 1
