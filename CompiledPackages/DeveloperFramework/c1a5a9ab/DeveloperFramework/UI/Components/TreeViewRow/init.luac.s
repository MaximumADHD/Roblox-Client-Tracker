PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnToggle"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onToggle"]
        4 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+6]
        4 GETTABLEKS                       R2 R1 K1 ["Style"]
        6 JUMPIF                           R2 ; [+5]
        7 NEWTABLE                         R2 0 0
        9 JUMP                             ; [+2]
       10 GETTABLEKS                       R2 R1 K2 ["Stylizer"]
       12 GETTABLEKS                       R3 R1 K3 ["Index"]
       14 GETTABLEKS                       R4 R1 K4 ["Item"]
       16 GETTABLEKS                       R5 R1 K5 ["Depth"]
       18 GETTABLEKS                       R8 R1 K6 ["Children"]
       20 LENGTH                           R7 R8
       21 LOADN                            R8 0
       22 JUMPIFLT                         R8 R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 GETTABLEKS                       R7 R1 K7 ["Expanded"]
       28 GETUPVAL                         R9 0
       29 JUMPIFNOT                        R9 ; [+6]
       30 GETUPVAL                         R8 1
       31 LOADK                            R10 K8 ["ArrowSize"]
       32 NAMECALL                         R8 R8 K9 ["GetAttribute"]
       34 CALL                             R8 2 1
       35 JUMP                             ; [+4]
       36 GETTABLEKS                       R8 R2 K10 ["Arrow"]
       38 GETTABLEKS                       R8 R8 K11 ["Size"]
       40 GETTABLEKS                       R9 R1 K12 ["BeforeToggle"]
       42 GETTABLEKS                       R10 R1 K13 ["BeforeIcon"]
       44 GETTABLEKS                       R11 R1 K14 ["AfterItem"]
       46 GETTABLEKS                       R12 R1 K15 ["TailItem"]
       48 GETTABLEKS                       R13 R1 K16 ["BeforeIndentItem"]
       50 GETTABLEKS                       R14 R1 K17 ["ExpandableRoot"]
       52 GETTABLEKS                       R15 R1 K18 ["Position"]
       54 LOADNIL                          R16
       55 LOADNIL                          R17
       56 LOADNIL                          R18
       57 GETUPVAL                         R20 0
       58 JUMPIFNOT                        R20 ; [+6]
       59 GETUPVAL                         R19 1
       60 LOADK                            R21 K19 ["ArrowExpandedOffset"]
       61 NAMECALL                         R19 R19 K9 ["GetAttribute"]
       63 CALL                             R19 2 1
       64 JUMP                             ; [+4]
       65 GETTABLEKS                       R19 R2 K10 ["Arrow"]
       67 GETTABLEKS                       R19 R19 K20 ["ExpandedOffset"]
       69 GETUPVAL                         R21 0
       70 JUMPIFNOT                        R21 ; [+6]
       71 GETUPVAL                         R20 1
       72 LOADK                            R22 K21 ["ArrowCollapsedOffset"]
       73 NAMECALL                         R20 R20 K9 ["GetAttribute"]
       75 CALL                             R20 2 1
       76 JUMP                             ; [+4]
       77 GETTABLEKS                       R20 R2 K10 ["Arrow"]
       79 GETTABLEKS                       R20 R20 K22 ["CollapsedOffset"]
       81 GETTABLEKS                       R21 R1 K23 ["GetContents"]
       83 JUMPIFNOT                        R21 ; [+7]
       84 GETTABLEKS                       R21 R1 K23 ["GetContents"]
       86 MOVE                             R22 R4
       87 CALL                             R21 1 2
       88 MOVE                             R16 R21
       89 MOVE                             R17 R22
       90 JUMP                             ; [+6]
       91 GETTABLEKS                       R16 R4 K24 ["text"]
       93 GETTABLEKS                       R17 R4 K25 ["icon"]
       95 GETTABLEKS                       R18 R4 K26 ["tooltip"]
       97 LOADB                            R21 1
       98 JUMPIFNOTEQKN                    R5 K27 [0] ; [+2]
      100 MOVE                             R21 R14
      101 JUMPIF                           R14 ; [+2]
      102 LOADN                            R23 1
      103 JUMP                             ; [+1]
      104 LOADN                            R23 0
      105 SUB                              R22 R5 R23
      106 GETUPVAL                         R25 0
      107 JUMPIFNOT                        R25 ; [+6]
      108 GETUPVAL                         R24 1
      109 LOADK                            R26 K28 ["Indent"]
      110 NAMECALL                         R24 R24 K9 ["GetAttribute"]
      112 CALL                             R24 2 1
      113 JUMP                             ; [+2]
      114 GETTABLEKS                       R24 R2 K28 ["Indent"]
      116 MUL                              R23 R22 R24
      117 GETUPVAL                         R25 0
      118 JUMPIFNOT                        R25 ; [+2]
      119 LOADNIL                          R24
      120 JUMP                             ; [+25]
      121 DUPTABLE                         R24 K33 [{"Top", "Left", "Right", "Bottom"}]
      122 GETTABLEKS                       R25 R2 K34 ["Padding"]
      124 GETTABLEKS                       R25 R25 K29 ["Top"]
      126 SETTABLEKS                       R25 R24 K29 ["Top"]
      128 GETTABLEKS                       R25 R2 K34 ["Padding"]
      130 GETTABLEKS                       R25 R25 K30 ["Left"]
      132 SETTABLEKS                       R25 R24 K30 ["Left"]
      134 GETTABLEKS                       R25 R2 K34 ["Padding"]
      136 GETTABLEKS                       R25 R25 K31 ["Right"]
      138 SETTABLEKS                       R25 R24 K31 ["Right"]
      140 GETTABLEKS                       R25 R2 K34 ["Padding"]
      142 GETTABLEKS                       R25 R25 K32 ["Bottom"]
      144 SETTABLEKS                       R25 R24 K32 ["Bottom"]
      146 DUPTABLE                         R25 K39 [{"BeforeIndentItem", "Spacer", "BeforeToggle", "Toggle", "BeforeIcon", "LeftIcon", "Text", "AfterItem"}]
      147 JUMPIFNOT                        R13 ; [+13]
      148 GETUPVAL                         R26 2
      149 GETTABLEKS                       R26 R26 K40 ["createElement"]
      151 MOVE                             R27 R13
      152 GETUPVAL                         R28 3
      153 MOVE                             R29 R1
      154 DUPTABLE                         R30 K42 [{"LayoutOrder"}]
      155 LOADN                            R31 1
      156 SETTABLEKS                       R31 R30 K41 ["LayoutOrder"]
      158 CALL                             R28 2 -1
      159 CALL                             R26 -1 1
      160 JUMP                             ; [+1]
      161 LOADNIL                          R26
      162 SETTABLEKS                       R26 R25 K16 ["BeforeIndentItem"]
      164 JUMPIFNOT                        R21 ; [+19]
      165 GETUPVAL                         R26 2
      166 GETTABLEKS                       R26 R26 K40 ["createElement"]
      168 GETUPVAL                         R27 4
      169 DUPTABLE                         R28 K43 [{"LayoutOrder", "Size"}]
      170 LOADN                            R29 2
      171 SETTABLEKS                       R29 R28 K41 ["LayoutOrder"]
      173 GETIMPORT                        R29 K46 [UDim2.new]
      175 LOADN                            R30 0
      176 MOVE                             R31 R23
      177 LOADN                            R32 0
      178 LOADN                            R33 0
      179 CALL                             R29 4 1
      180 SETTABLEKS                       R29 R28 K11 ["Size"]
      182 CALL                             R26 2 1
      183 JUMP                             ; [+1]
      184 LOADNIL                          R26
      185 SETTABLEKS                       R26 R25 K35 ["Spacer"]
      187 JUMPIFNOT                        R9 ; [+13]
      188 GETUPVAL                         R26 2
      189 GETTABLEKS                       R26 R26 K40 ["createElement"]
      191 MOVE                             R27 R9
      192 GETUPVAL                         R28 3
      193 MOVE                             R29 R1
      194 DUPTABLE                         R30 K42 [{"LayoutOrder"}]
      195 LOADN                            R31 3
      196 SETTABLEKS                       R31 R30 K41 ["LayoutOrder"]
      198 CALL                             R28 2 -1
      199 CALL                             R26 -1 1
      200 JUMP                             ; [+1]
      201 LOADNIL                          R26
      202 SETTABLEKS                       R26 R25 K12 ["BeforeToggle"]
      204 JUMPIFNOT                        R21 ; [+103]
      205 JUMPIFNOT                        R6 ; [+83]
      206 GETUPVAL                         R26 2
      207 GETTABLEKS                       R26 R26 K40 ["createElement"]
      209 LOADK                            R27 K47 ["ImageButton"]
      210 GETUPVAL                         R29 0
      211 JUMPIFNOT                        R29 ; [+25]
      212 NEWTABLE                         R28 4 0
      214 JUMPIFNOT                        R7 ; [+2]
      215 MOVE                             R29 R19
      216 JUMP                             ; [+1]
      217 MOVE                             R29 R20
      218 SETTABLEKS                       R29 R28 K48 ["ImageRectOffset"]
      220 LOADN                            R29 4
      221 SETTABLEKS                       R29 R28 K41 ["LayoutOrder"]
      223 GETUPVAL                         R29 2
      224 GETTABLEKS                       R29 R29 K49 ["Event"]
      226 GETTABLEKS                       R29 R29 K50 ["Activated"]
      228 GETTABLEKS                       R30 R0 K51 ["onToggle"]
      230 SETTABLE                         R30 R28 R29
      231 GETUPVAL                         R29 5
      232 GETTABLEKS                       R29 R29 K52 ["Tag"]
      234 LOADK                            R30 K10 ["Arrow"]
      235 SETTABLE                         R30 R28 R29
      236 JUMP                             ; [+50]
      237 NEWTABLE                         R28 8 0
      239 LOADN                            R29 4
      240 SETTABLEKS                       R29 R28 K41 ["LayoutOrder"]
      242 GETIMPORT                        R29 K46 [UDim2.new]
      244 LOADN                            R30 0
      245 MOVE                             R31 R8
      246 LOADN                            R32 0
      247 MOVE                             R33 R8
      248 CALL                             R29 4 1
      249 SETTABLEKS                       R29 R28 K11 ["Size"]
      251 LOADN                            R29 1
      252 SETTABLEKS                       R29 R28 K53 ["BackgroundTransparency"]
      254 GETTABLEKS                       R29 R2 K10 ["Arrow"]
      256 GETTABLEKS                       R29 R29 K54 ["Image"]
      258 SETTABLEKS                       R29 R28 K54 ["Image"]
      260 GETTABLEKS                       R29 R2 K10 ["Arrow"]
      262 GETTABLEKS                       R29 R29 K55 ["Color"]
      264 SETTABLEKS                       R29 R28 K56 ["ImageColor3"]
      266 GETIMPORT                        R29 K58 [Vector2.new]
      268 MOVE                             R30 R8
      269 MOVE                             R31 R8
      270 CALL                             R29 2 1
      271 SETTABLEKS                       R29 R28 K59 ["ImageRectSize"]
      273 JUMPIFNOT                        R7 ; [+2]
      274 MOVE                             R29 R19
      275 JUMP                             ; [+1]
      276 MOVE                             R29 R20
      277 SETTABLEKS                       R29 R28 K48 ["ImageRectOffset"]
      279 GETUPVAL                         R29 2
      280 GETTABLEKS                       R29 R29 K49 ["Event"]
      282 GETTABLEKS                       R29 R29 K50 ["Activated"]
      284 GETTABLEKS                       R30 R0 K51 ["onToggle"]
      286 SETTABLE                         R30 R28 R29
      287 CALL                             R26 2 1
      288 JUMP                             ; [+20]
      289 GETUPVAL                         R26 2
      290 GETTABLEKS                       R26 R26 K40 ["createElement"]
      292 GETUPVAL                         R27 4
      293 DUPTABLE                         R28 K43 [{"LayoutOrder", "Size"}]
      294 LOADN                            R29 4
      295 SETTABLEKS                       R29 R28 K41 ["LayoutOrder"]
      297 GETIMPORT                        R29 K46 [UDim2.new]
      299 LOADN                            R30 0
      300 MOVE                             R31 R8
      301 LOADN                            R32 0
      302 MOVE                             R33 R8
      303 CALL                             R29 4 1
      304 SETTABLEKS                       R29 R28 K11 ["Size"]
      306 CALL                             R26 2 1
      307 JUMP                             ; [+1]
      308 LOADNIL                          R26
      309 SETTABLEKS                       R26 R25 K36 ["Toggle"]
      311 JUMPIFNOT                        R10 ; [+13]
      312 GETUPVAL                         R26 2
      313 GETTABLEKS                       R26 R26 K40 ["createElement"]
      315 MOVE                             R27 R10
      316 GETUPVAL                         R28 3
      317 MOVE                             R29 R1
      318 DUPTABLE                         R30 K42 [{"LayoutOrder"}]
      319 LOADN                            R31 5
      320 SETTABLEKS                       R31 R30 K41 ["LayoutOrder"]
      322 CALL                             R28 2 -1
      323 CALL                             R26 -1 1
      324 JUMP                             ; [+1]
      325 LOADNIL                          R26
      326 SETTABLEKS                       R26 R25 K13 ["BeforeIcon"]
      328 JUMPIFNOT                        R17 ; [+13]
      329 GETUPVAL                         R26 2
      330 GETTABLEKS                       R26 R26 K40 ["createElement"]
      332 GETUPVAL                         R27 6
      333 GETUPVAL                         R28 3
      334 DUPTABLE                         R29 K42 [{"LayoutOrder"}]
      335 LOADN                            R30 6
      336 SETTABLEKS                       R30 R29 K41 ["LayoutOrder"]
      338 MOVE                             R30 R17
      339 CALL                             R28 2 -1
      340 CALL                             R26 -1 1
      341 JUMP                             ; [+1]
      342 LOADNIL                          R26
      343 SETTABLEKS                       R26 R25 K37 ["LeftIcon"]
      345 JUMPIFNOT                        R16 ; [+34]
      346 GETUPVAL                         R26 2
      347 GETTABLEKS                       R26 R26 K40 ["createElement"]
      349 GETUPVAL                         R27 7
      350 DUPTABLE                         R28 K62 [{"TextColor", "LayoutOrder", "Text", "AutomaticSize"}]
      351 GETTABLEKS                       R29 R2 K60 ["TextColor"]
      353 SETTABLEKS                       R29 R28 K60 ["TextColor"]
      355 LOADN                            R29 7
      356 SETTABLEKS                       R29 R28 K41 ["LayoutOrder"]
      358 SETTABLEKS                       R16 R28 K38 ["Text"]
      360 GETIMPORT                        R29 K65 [Enum.AutomaticSize.XY]
      362 SETTABLEKS                       R29 R28 K61 ["AutomaticSize"]
      364 JUMPIFNOT                        R18 ; [+12]
      365 DUPTABLE                         R29 K67 [{"Tooltip"}]
      366 GETUPVAL                         R30 2
      367 GETTABLEKS                       R30 R30 K40 ["createElement"]
      369 GETUPVAL                         R31 8
      370 DUPTABLE                         R32 K68 [{"Text"}]
      371 SETTABLEKS                       R18 R32 K38 ["Text"]
      373 CALL                             R30 2 1
      374 SETTABLEKS                       R30 R29 K66 ["Tooltip"]
      376 JUMP                             ; [+1]
      377 LOADNIL                          R29
      378 CALL                             R26 3 1
      379 JUMP                             ; [+1]
      380 LOADNIL                          R26
      381 SETTABLEKS                       R26 R25 K38 ["Text"]
      383 JUMPIFNOT                        R11 ; [+13]
      384 GETUPVAL                         R26 2
      385 GETTABLEKS                       R26 R26 K40 ["createElement"]
      387 MOVE                             R27 R11
      388 GETUPVAL                         R28 3
      389 MOVE                             R29 R1
      390 DUPTABLE                         R30 K42 [{"LayoutOrder"}]
      391 LOADN                            R31 8
      392 SETTABLEKS                       R31 R30 K41 ["LayoutOrder"]
      394 CALL                             R28 2 -1
      395 CALL                             R26 -1 1
      396 JUMP                             ; [+1]
      397 LOADNIL                          R26
      398 SETTABLEKS                       R26 R25 K14 ["AfterItem"]
      400 GETUPVAL                         R26 2
      401 GETTABLEKS                       R26 R26 K40 ["createElement"]
      403 GETUPVAL                         R27 4
      404 GETUPVAL                         R28 9
      405 DUPTABLE                         R29 K70 [{"OnClick", "LayoutOrder", "Position", "Size"}]
      406 DUPCLOSURE                       R30 K71 [PROTO_2]
      407 SETTABLEKS                       R30 R29 K69 ["OnClick"]
      409 JUMPIFNOT                        R13 ; [+2]
      410 LOADN                            R30 2
      411 JUMP                             ; [+1]
      412 MOVE                             R30 R3
      413 SETTABLEKS                       R30 R29 K41 ["LayoutOrder"]
      415 SETTABLEKS                       R15 R29 K18 ["Position"]
      417 GETTABLEKS                       R30 R1 K11 ["Size"]
      419 SETTABLEKS                       R30 R29 K11 ["Size"]
      421 GETTABLEKS                       R30 R1 K72 ["WrapperProps"]
      423 GETUPVAL                         R32 0
      424 JUMPIFNOT                        R32 ; [+15]
      425 NEWTABLE                         R31 1 0
      427 GETUPVAL                         R32 5
      428 GETTABLEKS                       R32 R32 K52 ["Tag"]
      430 GETUPVAL                         R33 10
      431 LOADK                            R34 K73 ["Component-TreeViewRow"]
      432 GETUPVAL                         R37 5
      433 GETTABLEKS                       R37 R37 K52 ["Tag"]
      435 GETTABLE                         R36 R1 R37
      436 ORK                              R35 R36 K74 ["Row Fit-X X-Stroke X-Corner X-RowM X-Middle"]
      437 CALL                             R33 2 1
      438 SETTABLE                         R33 R31 R32
      439 JUMP                             ; [+45]
      440 DUPTABLE                         R31 K79 [{"AutomaticSize", "Style", "Layout", "HorizontalAlignment", "BackgroundColor3", "Padding", "Size", "Spacing"}]
      441 GETIMPORT                        R32 K81 [Enum.AutomaticSize.X]
      443 SETTABLEKS                       R32 R31 K61 ["AutomaticSize"]
      445 LOADK                            R32 K82 ["Box"]
      446 SETTABLEKS                       R32 R31 K1 ["Style"]
      448 JUMPIFNOT                        R12 ; [+2]
      449 LOADNIL                          R32
      450 JUMP                             ; [+2]
      451 GETIMPORT                        R32 K85 [Enum.FillDirection.Horizontal]
      453 SETTABLEKS                       R32 R31 K75 ["Layout"]
      455 JUMPIFNOT                        R12 ; [+2]
      456 LOADNIL                          R32
      457 JUMP                             ; [+2]
      458 GETIMPORT                        R32 K86 [Enum.HorizontalAlignment.Left]
      460 SETTABLEKS                       R32 R31 K76 ["HorizontalAlignment"]
      462 GETTABLEKS                       R32 R2 K87 ["Background"]
      464 SETTABLEKS                       R32 R31 K77 ["BackgroundColor3"]
      466 SETTABLEKS                       R24 R31 K34 ["Padding"]
      468 GETTABLEKS                       R32 R1 K11 ["Size"]
      470 JUMPIF                           R32 ; [+8]
      471 GETIMPORT                        R32 K46 [UDim2.new]
      473 LOADN                            R33 1
      474 LOADN                            R34 0
      475 LOADN                            R35 0
      476 GETTABLEKS                       R36 R2 K88 ["RowHeight"]
      478 CALL                             R32 4 1
      479 SETTABLEKS                       R32 R31 K11 ["Size"]
      481 GETTABLEKS                       R32 R2 K78 ["Spacing"]
      483 SETTABLEKS                       R32 R31 K78 ["Spacing"]
      485 CALL                             R28 3 1
      486 JUMPIFNOT                        R12 ; [+82]
      487 DUPTABLE                         R29 K91 [{"Row", "Tail"}]
      488 GETUPVAL                         R30 2
      489 GETTABLEKS                       R30 R30 K40 ["createElement"]
      491 GETUPVAL                         R31 4
      492 DUPTABLE                         R32 K92 [{"Layout", "HorizontalAlignment"}]
      493 GETIMPORT                        R33 K85 [Enum.FillDirection.Horizontal]
      495 SETTABLEKS                       R33 R32 K75 ["Layout"]
      497 GETIMPORT                        R33 K86 [Enum.HorizontalAlignment.Left]
      499 SETTABLEKS                       R33 R32 K76 ["HorizontalAlignment"]
      501 MOVE                             R33 R25
      502 CALL                             R30 3 1
      503 SETTABLEKS                       R30 R29 K89 ["Row"]
      505 GETUPVAL                         R30 2
      506 GETTABLEKS                       R30 R30 K40 ["createElement"]
      508 GETUPVAL                         R31 4
      509 GETUPVAL                         R33 0
      510 JUMPIFNOT                        R33 ; [+8]
      511 NEWTABLE                         R32 1 0
      513 GETUPVAL                         R33 5
      514 GETTABLEKS                       R33 R33 K52 ["Tag"]
      516 LOADK                            R34 K90 ["Tail"]
      517 SETTABLE                         R34 R32 R33
      518 JUMP                             ; [+37]
      519 DUPTABLE                         R32 K95 [{"AnchorPoint", "AutomaticSize", "Padding", "Position", "Size", "BackgroundColor3", "ZIndex"}]
      520 GETIMPORT                        R33 K58 [Vector2.new]
      522 LOADN                            R34 1
      523 LOADN                            R35 0
      524 CALL                             R33 2 1
      525 SETTABLEKS                       R33 R32 K93 ["AnchorPoint"]
      527 GETIMPORT                        R33 K81 [Enum.AutomaticSize.X]
      529 SETTABLEKS                       R33 R32 K61 ["AutomaticSize"]
      531 GETTABLEKS                       R33 R2 K96 ["TailPadding"]
      533 SETTABLEKS                       R33 R32 K34 ["Padding"]
      535 GETIMPORT                        R33 K98 [UDim2.fromScale]
      537 LOADN                            R34 1
      538 LOADN                            R35 0
      539 CALL                             R33 2 1
      540 SETTABLEKS                       R33 R32 K18 ["Position"]
      542 GETIMPORT                        R33 K98 [UDim2.fromScale]
      544 LOADN                            R34 0
      545 LOADN                            R35 1
      546 CALL                             R33 2 1
      547 SETTABLEKS                       R33 R32 K11 ["Size"]
      549 GETTABLEKS                       R33 R2 K87 ["Background"]
      551 SETTABLEKS                       R33 R32 K77 ["BackgroundColor3"]
      553 LOADN                            R33 2
      554 SETTABLEKS                       R33 R32 K94 ["ZIndex"]
      556 DUPTABLE                         R33 K100 [{"Child"}]
      557 GETUPVAL                         R34 2
      558 GETTABLEKS                       R34 R34 K40 ["createElement"]
      560 MOVE                             R35 R12
      561 MOVE                             R36 R1
      562 CALL                             R34 2 1
      563 SETTABLEKS                       R34 R33 K99 ["Child"]
      565 CALL                             R30 3 1
      566 SETTABLEKS                       R30 R29 K90 ["Tail"]
      568 JUMP                             ; [+1]
      569 MOVE                             R29 R25
      570 CALL                             R26 3 -1
      571 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 LOADK                            R7 K10 ["React"]
       28 NAMECALL                         R5 R5 K11 ["FindFirstChild"]
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+8]
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K4 ["Parent"]
       36 GETTABLEKS                       R5 R5 K10 ["React"]
       38 CALL                             R4 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R4
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Styling"]
       45 GETTABLEKS                       R6 R6 K13 ["supportsStyleSheets"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R7 R0 K12 ["Styling"]
       52 GETTABLEKS                       R7 R7 K14 ["joinTags"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K6 [require]
       57 GETIMPORT                        R8 K1 [script]
       59 GETTABLEKS                       R8 R8 K15 ["styles"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K6 [require]
       64 GETTABLEKS                       R9 R0 K16 ["Util"]
       66 GETTABLEKS                       R9 R9 K17 ["Typecheck"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K6 [require]
       71 GETTABLEKS                       R10 R0 K4 ["Parent"]
       73 GETTABLEKS                       R10 R10 K18 ["Dash"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R9 K19 ["assign"]
       78 GETTABLEKS                       R11 R9 K20 ["join"]
       80 GETIMPORT                        R12 K6 [require]
       82 GETTABLEKS                       R13 R0 K21 ["Wrappers"]
       84 GETTABLEKS                       R13 R13 K22 ["withControl"]
       86 CALL                             R12 1 1
       87 GETTABLEKS                       R13 R0 K2 ["UI"]
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R13 K23 ["Components"]
       93 GETTABLEKS                       R15 R15 K24 ["Image"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R16 R13 K23 ["Components"]
      100 GETTABLEKS                       R16 R16 K25 ["Pane"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K6 [require]
      105 GETTABLEKS                       R17 R13 K23 ["Components"]
      107 GETTABLEKS                       R17 R17 K26 ["TextLabel"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K6 [require]
      112 GETTABLEKS                       R18 R13 K23 ["Components"]
      114 GETTABLEKS                       R18 R18 K27 ["Tooltip"]
      116 CALL                             R17 1 1
      117 GETTABLEKS                       R18 R1 K28 ["PureComponent"]
      119 LOADK                            R20 K29 ["TreeViewRow"]
      120 NAMECALL                         R18 R18 K30 ["extend"]
      122 CALL                             R18 2 1
      123 GETTABLEKS                       R19 R8 K31 ["wrap"]
      125 MOVE                             R20 R18
      126 GETIMPORT                        R21 K1 [script]
      128 CALL                             R19 2 0
      129 DUPCLOSURE                       R19 K32 [PROTO_1]
      130 SETTABLEKS                       R19 R18 K33 ["init"]
      132 DUPCLOSURE                       R19 K34 [PROTO_3]
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R6
      144 SETTABLEKS                       R19 R18 K35 ["render"]
      146 DUPTABLE                         R19 K37 [{"ExpandableRoot"}]
      147 LOADB                            R20 1
      148 SETTABLEKS                       R20 R19 K36 ["ExpandableRoot"]
      150 SETTABLEKS                       R19 R18 K38 ["defaultProps"]
      152 MOVE                             R19 R3
      153 DUPTABLE                         R20 K40 [{"Stylizer"}]
      154 JUMPIFNOT                        R5 ; [+2]
      155 LOADNIL                          R21
      156 JUMP                             ; [+2]
      157 GETTABLEKS                       R21 R2 K39 ["Stylizer"]
      159 SETTABLEKS                       R21 R20 K39 ["Stylizer"]
      161 CALL                             R19 1 1
      162 MOVE                             R20 R18
      163 CALL                             R19 1 1
      164 MOVE                             R18 R19
      165 MOVE                             R19 R12
      166 MOVE                             R20 R18
      167 CALL                             R19 1 -1
      168 RETURN                           R19 -1
