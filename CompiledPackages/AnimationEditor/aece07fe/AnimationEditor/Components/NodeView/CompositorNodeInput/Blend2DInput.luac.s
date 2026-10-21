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
       59 GETTABLEKS                       R7 R7 K12 ["NumberInput"]
       61 DUPTABLE                         R8 K29 [{["size"], ["width"], ["label"] = "", ["value"], ["formatAsString"], ["step"] = 0.005, ["minimum"], ["maximum"], ["LayoutOrder"] = 1, ["precision"], ["onChanged"], ["controlsVariant"], ["scrubBehavior"]}]
       62 GETUPVAL                         R9 4
       63 GETTABLEKS                       R9 R9 K30 ["Enums"]
       65 GETTABLEKS                       R9 R9 K31 ["InputSize"]
       67 GETTABLEKS                       R9 R9 K32 ["XSmall"]
       69 SETTABLEKS                       R9 R8 K13 ["size"]
       71 GETUPVAL                         R10 5
       72 CALL                             R10 0 1
       73 JUMPIFNOT                        R10 ; [+6]
       74 GETIMPORT                        R9 K35 [UDim.new]
       76 LOADN                            R10 1
       77 LOADN                            R11 0
       78 CALL                             R9 2 1
       79 JUMP                             ; [+5]
       80 GETIMPORT                        R9 K35 [UDim.new]
       82 LOADK                            R10 K36 [0.5]
       83 LOADN                            R11 -2
       84 CALL                             R9 2 1
       85 SETTABLEKS                       R9 R8 K14 ["width"]
       87 JUMPIFNOT                        R3 ; [+17]
       88 GETTABLEKS                       R13 R0 K10 ["Input"]
       90 GETTABLEKS                       R13 R13 K38 ["Value"]
       92 GETTABLEKS                       R13 R13 K39 ["X"]
       94 FASTCALL1                        MATH_DEG R13 ; [+2]
       95 GETIMPORT                        R12 K42 [math.deg]
       97 CALL                             R12 1 1
       98 MULK                             R11 R12 K37 [100]
       99 FASTCALL1                        MATH_ROUND R11 ; [+2]
      100 GETIMPORT                        R10 K44 [math.round]
      102 CALL                             R10 1 1
      103 DIVK                             R9 R10 K37 [100]
      104 JUMP                             ; [+6]
      105 GETTABLEKS                       R9 R0 K10 ["Input"]
      107 GETTABLEKS                       R9 R9 K38 ["Value"]
      109 GETTABLEKS                       R9 R9 K39 ["X"]
      111 SETTABLEKS                       R9 R8 K17 ["value"]
      113 JUMPIFNOT                        R3 ; [+2]
      114 MOVE                             R9 R1
      115 JUMP                             ; [+1]
      116 LOADNIL                          R9
      117 SETTABLEKS                       R9 R8 K18 ["formatAsString"]
      119 JUMPIFNOT                        R3 ; [+2]
      120 LOADN                            R9 -180
      121 JUMP                             ; [+1]
      122 LOADK                            R9 K45 [-∞]
      123 SETTABLEKS                       R9 R8 K21 ["minimum"]
      125 JUMPIFNOT                        R3 ; [+2]
      126 LOADN                            R9 180
      127 JUMP                             ; [+1]
      128 LOADK                            R9 K46 [∞]
      129 SETTABLEKS                       R9 R8 K22 ["maximum"]
      131 GETUPVAL                         R9 6
      132 GETTABLEKS                       R9 R9 K47 ["NUMBER_PRECISION"]
      134 GETTABLEKS                       R9 R9 K48 ["Float"]
      136 SETTABLEKS                       R9 R8 K25 ["precision"]
      138 SETTABLEKS                       R4 R8 K26 ["onChanged"]
      140 GETUPVAL                         R9 4
      141 GETTABLEKS                       R9 R9 K30 ["Enums"]
      143 GETTABLEKS                       R9 R9 K49 ["NumberInputControlsVariant"]
      145 GETTABLEKS                       R9 R9 K50 ["None"]
      147 SETTABLEKS                       R9 R8 K27 ["controlsVariant"]
      149 GETUPVAL                         R9 7
      150 GETTABLEKS                       R9 R9 K51 ["On"]
      152 SETTABLEKS                       R9 R8 K28 ["scrubBehavior"]
      154 CALL                             R6 2 1
      155 GETUPVAL                         R7 0
      156 GETTABLEKS                       R7 R7 K11 ["createElement"]
      158 GETUPVAL                         R8 4
      159 GETTABLEKS                       R8 R8 K12 ["NumberInput"]
      161 DUPTABLE                         R9 K53 [{["size"], ["width"], ["label"] = "", ["value"], ["minimum"], ["LayoutOrder"] = 2, ["precision"], ["step"] = 0.005, ["onChanged"], ["controlsVariant"], ["scrubBehavior"]}]
      162 GETUPVAL                         R10 4
      163 GETTABLEKS                       R10 R10 K30 ["Enums"]
      165 GETTABLEKS                       R10 R10 K31 ["InputSize"]
      167 GETTABLEKS                       R10 R10 K32 ["XSmall"]
      169 SETTABLEKS                       R10 R9 K13 ["size"]
      171 GETUPVAL                         R11 5
      172 CALL                             R11 0 1
      173 JUMPIFNOT                        R11 ; [+6]
      174 GETIMPORT                        R10 K35 [UDim.new]
      176 LOADN                            R11 1
      177 LOADN                            R12 0
      178 CALL                             R10 2 1
      179 JUMP                             ; [+5]
      180 GETIMPORT                        R10 K35 [UDim.new]
      182 LOADK                            R11 K36 [0.5]
      183 LOADN                            R12 -2
      184 CALL                             R10 2 1
      185 SETTABLEKS                       R10 R9 K14 ["width"]
      187 GETTABLEKS                       R13 R0 K10 ["Input"]
      189 GETTABLEKS                       R13 R13 K38 ["Value"]
      191 GETTABLEKS                       R13 R13 K54 ["Y"]
      193 MULK                             R12 R13 K37 [100]
      194 FASTCALL1                        MATH_ROUND R12 ; [+2]
      195 GETIMPORT                        R11 K44 [math.round]
      197 CALL                             R11 1 1
      198 DIVK                             R10 R11 K37 [100]
      199 SETTABLEKS                       R10 R9 K17 ["value"]
      201 JUMPIFNOT                        R3 ; [+2]
      202 LOADN                            R10 0
      203 JUMP                             ; [+1]
      204 LOADK                            R10 K45 [-∞]
      205 SETTABLEKS                       R10 R9 K21 ["minimum"]
      207 GETUPVAL                         R10 6
      208 GETTABLEKS                       R10 R10 K47 ["NUMBER_PRECISION"]
      210 GETTABLEKS                       R10 R10 K48 ["Float"]
      212 SETTABLEKS                       R10 R9 K25 ["precision"]
      214 SETTABLEKS                       R5 R9 K26 ["onChanged"]
      216 GETUPVAL                         R10 4
      217 GETTABLEKS                       R10 R10 K30 ["Enums"]
      219 GETTABLEKS                       R10 R10 K49 ["NumberInputControlsVariant"]
      221 GETTABLEKS                       R10 R10 K50 ["None"]
      223 SETTABLEKS                       R10 R9 K27 ["controlsVariant"]
      225 GETUPVAL                         R10 7
      226 GETTABLEKS                       R10 R10 K51 ["On"]
      228 SETTABLEKS                       R10 R9 K28 ["scrubBehavior"]
      230 CALL                             R7 2 1
      231 GETUPVAL                         R9 8
      232 CALL                             R9 0 1
      233 JUMPIFNOT                        R9 ; [+71]
      234 GETUPVAL                         R9 5
      235 CALL                             R9 0 1
      236 JUMPIFNOT                        R9 ; [+54]
      237 GETUPVAL                         R8 0
      238 GETTABLEKS                       R8 R8 K11 ["createElement"]
      240 GETUPVAL                         R9 4
      241 GETTABLEKS                       R9 R9 K55 ["View"]
      243 DUPTABLE                         R10 K58 [{["tag"] = "row gap-xxsmall size-full-0 auto-y"}]
      244 DUPTABLE                         R11 K59 [{"X", "Y"}]
      245 GETUPVAL                         R12 0
      246 GETTABLEKS                       R12 R12 K11 ["createElement"]
      248 GETUPVAL                         R13 4
      249 GETTABLEKS                       R13 R13 K55 ["View"]
      251 DUPTABLE                         R14 K62 [{["Size"], ["tag"] = "auto-y", ["LayoutOrder"] = 1}]
      252 GETIMPORT                        R15 K64 [UDim2.new]
      254 LOADK                            R16 K36 [0.5]
      255 LOADN                            R17 -1
      256 LOADN                            R18 0
      257 LOADN                            R19 0
      258 CALL                             R15 4 1
      259 SETTABLEKS                       R15 R14 K60 ["Size"]
      261 DUPTABLE                         R15 K66 [{"Field"}]
      262 SETTABLEKS                       R6 R15 K65 ["Field"]
      264 CALL                             R12 3 1
      265 SETTABLEKS                       R12 R11 K39 ["X"]
      267 GETUPVAL                         R12 0
      268 GETTABLEKS                       R12 R12 K11 ["createElement"]
      270 GETUPVAL                         R13 4
      271 GETTABLEKS                       R13 R13 K55 ["View"]
      273 DUPTABLE                         R14 K67 [{["Size"], ["tag"] = "auto-y", ["LayoutOrder"] = 2}]
      274 GETIMPORT                        R15 K64 [UDim2.new]
      276 LOADK                            R16 K36 [0.5]
      277 LOADN                            R17 -1
      278 LOADN                            R18 0
      279 LOADN                            R19 0
      280 CALL                             R15 4 1
      281 SETTABLEKS                       R15 R14 K60 ["Size"]
      283 DUPTABLE                         R15 K66 [{"Field"}]
      284 SETTABLEKS                       R7 R15 K65 ["Field"]
      286 CALL                             R12 3 1
      287 SETTABLEKS                       R12 R11 K54 ["Y"]
      289 CALL                             R8 3 1
      290 JUMP                             ; [+15]
      291 GETUPVAL                         R8 0
      292 GETTABLEKS                       R8 R8 K11 ["createElement"]
      294 GETUPVAL                         R9 4
      295 GETTABLEKS                       R9 R9 K55 ["View"]
      297 DUPTABLE                         R10 K69 [{["tag"] = "row gap-xsmall size-full-0 auto-y"}]
      298 DUPTABLE                         R11 K59 [{"X", "Y"}]
      299 SETTABLEKS                       R6 R11 K39 ["X"]
      301 SETTABLEKS                       R7 R11 K54 ["Y"]
      303 CALL                             R8 3 1
      304 JUMP                             ; [+1]
      305 LOADNIL                          R8
      306 GETUPVAL                         R9 0
      307 GETTABLEKS                       R9 R9 K11 ["createElement"]
      309 GETUPVAL                         R10 4
      310 GETTABLEKS                       R10 R10 K55 ["View"]
      312 DUPTABLE                         R11 K70 [{"tag", "LayoutOrder"}]
      313 NEWTABLE                         R12 2 0
      315 LOADB                            R13 1
      316 SETTABLEKS                       R13 R12 K71 ["row align-y-center gap-small size-full-700 auto-y padding-x-small"]
      318 GETUPVAL                         R14 8
      319 CALL                             R14 0 1
      320 NOT                              R13 R14
      321 SETTABLEKS                       R13 R12 K72 ["flex-x-fill"]
      323 SETTABLEKS                       R12 R11 K56 ["tag"]
      325 GETTABLEKS                       R12 R0 K23 ["LayoutOrder"]
      327 SETTABLEKS                       R12 R11 K23 ["LayoutOrder"]
      329 DUPTABLE                         R12 K75 [{"InputLabelWeight", "X", "Y", "PinChildren"}]
      330 GETUPVAL                         R13 0
      331 GETTABLEKS                       R13 R13 K11 ["createElement"]
      333 GETUPVAL                         R14 9
      334 DUPTABLE                         R15 K84 [{"Name", "Label", "Weight", "LayoutOrder", "OnDelete", "OnRename", "IsHovered", "HasDuplicateName", "TrailingValue"}]
      335 GETTABLEKS                       R16 R0 K10 ["Input"]
      337 GETTABLEKS                       R16 R16 K76 ["Name"]
      339 SETTABLEKS                       R16 R15 K76 ["Name"]
      341 GETTABLEKS                       R16 R0 K10 ["Input"]
      343 GETTABLEKS                       R16 R16 K85 ["ConnectedNodeName"]
      345 SETTABLEKS                       R16 R15 K77 ["Label"]
      347 GETTABLEKS                       R16 R0 K10 ["Input"]
      349 GETTABLEKS                       R16 R16 K78 ["Weight"]
      351 SETTABLEKS                       R16 R15 K78 ["Weight"]
      353 MOVE                             R16 R2
      354 CALL                             R16 0 1
      355 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      357 GETTABLEKS                       R16 R0 K79 ["OnDelete"]
      359 SETTABLEKS                       R16 R15 K79 ["OnDelete"]
      361 GETUPVAL                         R17 8
      362 CALL                             R17 0 1
      363 JUMPIFNOT                        R17 ; [+3]
      364 GETTABLEKS                       R16 R0 K80 ["OnRename"]
      366 JUMP                             ; [+1]
      367 LOADNIL                          R16
      368 SETTABLEKS                       R16 R15 K80 ["OnRename"]
      370 GETTABLEKS                       R16 R0 K81 ["IsHovered"]
      372 SETTABLEKS                       R16 R15 K81 ["IsHovered"]
      374 GETTABLEKS                       R16 R0 K82 ["HasDuplicateName"]
      376 SETTABLEKS                       R16 R15 K82 ["HasDuplicateName"]
      378 SETTABLEKS                       R8 R15 K83 ["TrailingValue"]
      380 CALL                             R13 2 1
      381 SETTABLEKS                       R13 R12 K73 ["InputLabelWeight"]
      383 GETUPVAL                         R14 8
      384 CALL                             R14 0 1
      385 JUMPIFNOT                        R14 ; [+2]
      386 LOADNIL                          R13
      387 JUMP                             ; [+95]
      388 GETUPVAL                         R13 0
      389 GETTABLEKS                       R13 R13 K11 ["createElement"]
      391 GETUPVAL                         R14 4
      392 GETTABLEKS                       R14 R14 K12 ["NumberInput"]
      394 DUPTABLE                         R15 K86 [{["size"], ["width"], ["label"] = "", ["value"], ["formatAsString"], ["step"] = 0.005, ["minimum"], ["maximum"], ["LayoutOrder"], ["precision"], ["onChanged"], ["controlsVariant"], ["scrubBehavior"]}]
      395 GETUPVAL                         R16 4
      396 GETTABLEKS                       R16 R16 K30 ["Enums"]
      398 GETTABLEKS                       R16 R16 K31 ["InputSize"]
      400 GETTABLEKS                       R16 R16 K32 ["XSmall"]
      402 SETTABLEKS                       R16 R15 K13 ["size"]
      404 GETIMPORT                        R16 K35 [UDim.new]
      406 LOADN                            R17 0
      407 LOADN                            R18 60
      408 CALL                             R16 2 1
      409 SETTABLEKS                       R16 R15 K14 ["width"]
      411 JUMPIFNOT                        R3 ; [+17]
      412 GETTABLEKS                       R20 R0 K10 ["Input"]
      414 GETTABLEKS                       R20 R20 K38 ["Value"]
      416 GETTABLEKS                       R20 R20 K39 ["X"]
      418 FASTCALL1                        MATH_DEG R20 ; [+2]
      419 GETIMPORT                        R19 K42 [math.deg]
      421 CALL                             R19 1 1
      422 MULK                             R18 R19 K37 [100]
      423 FASTCALL1                        MATH_ROUND R18 ; [+2]
      424 GETIMPORT                        R17 K44 [math.round]
      426 CALL                             R17 1 1
      427 DIVK                             R16 R17 K37 [100]
      428 JUMP                             ; [+6]
      429 GETTABLEKS                       R16 R0 K10 ["Input"]
      431 GETTABLEKS                       R16 R16 K38 ["Value"]
      433 GETTABLEKS                       R16 R16 K39 ["X"]
      435 SETTABLEKS                       R16 R15 K17 ["value"]
      437 JUMPIFNOT                        R3 ; [+2]
      438 MOVE                             R16 R1
      439 JUMP                             ; [+1]
      440 LOADNIL                          R16
      441 SETTABLEKS                       R16 R15 K18 ["formatAsString"]
      443 JUMPIFNOT                        R3 ; [+2]
      444 LOADN                            R16 -180
      445 JUMP                             ; [+1]
      446 LOADK                            R16 K45 [-∞]
      447 SETTABLEKS                       R16 R15 K21 ["minimum"]
      449 JUMPIFNOT                        R3 ; [+2]
      450 LOADN                            R16 180
      451 JUMP                             ; [+1]
      452 LOADK                            R16 K46 [∞]
      453 SETTABLEKS                       R16 R15 K22 ["maximum"]
      455 MOVE                             R16 R2
      456 CALL                             R16 0 1
      457 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      459 GETUPVAL                         R16 6
      460 GETTABLEKS                       R16 R16 K47 ["NUMBER_PRECISION"]
      462 GETTABLEKS                       R16 R16 K48 ["Float"]
      464 SETTABLEKS                       R16 R15 K25 ["precision"]
      466 SETTABLEKS                       R4 R15 K26 ["onChanged"]
      468 GETUPVAL                         R16 4
      469 GETTABLEKS                       R16 R16 K30 ["Enums"]
      471 GETTABLEKS                       R16 R16 K49 ["NumberInputControlsVariant"]
      473 GETTABLEKS                       R16 R16 K50 ["None"]
      475 SETTABLEKS                       R16 R15 K27 ["controlsVariant"]
      477 GETUPVAL                         R16 7
      478 GETTABLEKS                       R16 R16 K51 ["On"]
      480 SETTABLEKS                       R16 R15 K28 ["scrubBehavior"]
      482 CALL                             R13 2 1
      483 SETTABLEKS                       R13 R12 K39 ["X"]
      485 GETUPVAL                         R14 8
      486 CALL                             R14 0 1
      487 JUMPIFNOT                        R14 ; [+2]
      488 LOADNIL                          R13
      489 JUMP                             ; [+71]
      490 GETUPVAL                         R13 0
      491 GETTABLEKS                       R13 R13 K11 ["createElement"]
      493 GETUPVAL                         R14 4
      494 GETTABLEKS                       R14 R14 K12 ["NumberInput"]
      496 DUPTABLE                         R15 K87 [{["size"], ["width"], ["label"] = "", ["value"], ["minimum"], ["LayoutOrder"], ["precision"], ["step"] = 0.005, ["onChanged"], ["controlsVariant"], ["scrubBehavior"]}]
      497 GETUPVAL                         R16 4
      498 GETTABLEKS                       R16 R16 K30 ["Enums"]
      500 GETTABLEKS                       R16 R16 K31 ["InputSize"]
      502 GETTABLEKS                       R16 R16 K32 ["XSmall"]
      504 SETTABLEKS                       R16 R15 K13 ["size"]
      506 GETIMPORT                        R16 K35 [UDim.new]
      508 LOADN                            R17 0
      509 LOADN                            R18 60
      510 CALL                             R16 2 1
      511 SETTABLEKS                       R16 R15 K14 ["width"]
      513 GETTABLEKS                       R19 R0 K10 ["Input"]
      515 GETTABLEKS                       R19 R19 K38 ["Value"]
      517 GETTABLEKS                       R19 R19 K54 ["Y"]
      519 MULK                             R18 R19 K37 [100]
      520 FASTCALL1                        MATH_ROUND R18 ; [+2]
      521 GETIMPORT                        R17 K44 [math.round]
      523 CALL                             R17 1 1
      524 DIVK                             R16 R17 K37 [100]
      525 SETTABLEKS                       R16 R15 K17 ["value"]
      527 JUMPIFNOT                        R3 ; [+2]
      528 LOADN                            R16 0
      529 JUMP                             ; [+1]
      530 LOADK                            R16 K45 [-∞]
      531 SETTABLEKS                       R16 R15 K21 ["minimum"]
      533 MOVE                             R16 R2
      534 CALL                             R16 0 1
      535 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      537 GETUPVAL                         R16 6
      538 GETTABLEKS                       R16 R16 K47 ["NUMBER_PRECISION"]
      540 GETTABLEKS                       R16 R16 K48 ["Float"]
      542 SETTABLEKS                       R16 R15 K25 ["precision"]
      544 SETTABLEKS                       R5 R15 K26 ["onChanged"]
      546 GETUPVAL                         R16 4
      547 GETTABLEKS                       R16 R16 K30 ["Enums"]
      549 GETTABLEKS                       R16 R16 K49 ["NumberInputControlsVariant"]
      551 GETTABLEKS                       R16 R16 K50 ["None"]
      553 SETTABLEKS                       R16 R15 K27 ["controlsVariant"]
      555 GETUPVAL                         R16 7
      556 GETTABLEKS                       R16 R16 K51 ["On"]
      558 SETTABLEKS                       R16 R15 K28 ["scrubBehavior"]
      560 CALL                             R13 2 1
      561 SETTABLEKS                       R13 R12 K54 ["Y"]
      563 GETUPVAL                         R13 0
      564 GETTABLEKS                       R13 R13 K11 ["createElement"]
      566 LOADK                            R14 K88 ["Folder"]
      567 NEWTABLE                         R15 0 0
      569 DUPTABLE                         R16 K90 [{"RenderedPinInput"}]
      570 GETUPVAL                         R17 0
      571 GETTABLEKS                       R17 R17 K11 ["createElement"]
      573 GETUPVAL                         R18 10
      574 GETTABLEKS                       R18 R18 K91 ["RenderedCompositorPin"]
      576 DUPTABLE                         R19 K100 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinInputId"], ["pinValue"], ["selected"]}]
      577 GETIMPORT                        R20 K102 [UDim2.fromOffset]
      579 GETUPVAL                         R22 11
      580 CALL                             R22 0 1
      581 JUMPIFNOT                        R22 ; [+2]
      582 LOADN                            R21 -21
      583 JUMP                             ; [+1]
      584 LOADN                            R21 -9
      585 LOADN                            R22 14
      586 CALL                             R20 2 1
      587 SETTABLEKS                       R20 R19 K92 ["Position"]
      589 GETUPVAL                         R20 10
      590 GETTABLEKS                       R20 R20 K103 ["DEFAULT_PIN_DATA_TYPE"]
      592 SETTABLEKS                       R20 R19 K94 ["pinDataType"]
      594 GETTABLEKS                       R20 R0 K104 ["NodeId"]
      596 SETTABLEKS                       R20 R19 K95 ["pinNodeId"]
      598 GETTABLEKS                       R20 R0 K10 ["Input"]
      600 GETTABLEKS                       R20 R20 K76 ["Name"]
      602 SETTABLEKS                       R20 R19 K96 ["pinName"]
      604 GETTABLEKS                       R20 R0 K10 ["Input"]
      606 GETTABLEKS                       R20 R20 K105 ["InputId"]
      608 SETTABLEKS                       R20 R19 K97 ["pinInputId"]
      610 GETTABLEKS                       R20 R0 K10 ["Input"]
      612 GETTABLEKS                       R20 R20 K38 ["Value"]
      614 SETTABLEKS                       R20 R19 K98 ["pinValue"]
      616 GETTABLEKS                       R20 R0 K106 ["IsSelected"]
      618 SETTABLEKS                       R20 R19 K99 ["selected"]
      620 CALL                             R17 2 1
      621 SETTABLEKS                       R17 R16 K89 ["RenderedPinInput"]
      623 CALL                             R13 3 1
      624 SETTABLEKS                       R13 R12 K74 ["PinChildren"]
      626 CALL                             R9 3 -1
      627 RETURN                           R9 -1

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
       93 GETTABLEKS                       R12 R6 K25 ["getFFlagAnimGraphUINodeFieldLayout"]
       95 GETTABLEKS                       R13 R6 K26 ["getFFlagAnimGraphUIPinOffset"]
       97 DUPCLOSURE                       R14 K27 [PROTO_2]
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R13
      110 RETURN                           R14 1
