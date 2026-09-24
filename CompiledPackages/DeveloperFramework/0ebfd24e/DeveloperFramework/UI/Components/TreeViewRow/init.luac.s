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
      147 JUMPIFNOT                        R13 ; [+10]
      148 GETUPVAL                         R26 2
      149 GETTABLEKS                       R26 R26 K40 ["createElement"]
      151 MOVE                             R27 R13
      152 GETUPVAL                         R28 3
      153 MOVE                             R29 R1
      154 DUPTABLE                         R30 K43 [{["LayoutOrder"] = 1}]
      155 CALL                             R28 2 -1
      156 CALL                             R26 -1 1
      157 JUMP                             ; [+1]
      158 LOADNIL                          R26
      159 SETTABLEKS                       R26 R25 K16 ["BeforeIndentItem"]
      161 JUMPIFNOT                        R21 ; [+16]
      162 GETUPVAL                         R26 2
      163 GETTABLEKS                       R26 R26 K40 ["createElement"]
      165 GETUPVAL                         R27 4
      166 DUPTABLE                         R28 K45 [{["LayoutOrder"] = 2, ["Size"]}]
      167 GETIMPORT                        R29 K48 [UDim2.new]
      169 LOADN                            R30 0
      170 MOVE                             R31 R23
      171 LOADN                            R32 0
      172 LOADN                            R33 0
      173 CALL                             R29 4 1
      174 SETTABLEKS                       R29 R28 K11 ["Size"]
      176 CALL                             R26 2 1
      177 JUMP                             ; [+1]
      178 LOADNIL                          R26
      179 SETTABLEKS                       R26 R25 K35 ["Spacer"]
      181 JUMPIFNOT                        R9 ; [+10]
      182 GETUPVAL                         R26 2
      183 GETTABLEKS                       R26 R26 K40 ["createElement"]
      185 MOVE                             R27 R9
      186 GETUPVAL                         R28 3
      187 MOVE                             R29 R1
      188 DUPTABLE                         R30 K50 [{["LayoutOrder"] = 3}]
      189 CALL                             R28 2 -1
      190 CALL                             R26 -1 1
      191 JUMP                             ; [+1]
      192 LOADNIL                          R26
      193 SETTABLEKS                       R26 R25 K12 ["BeforeToggle"]
      195 JUMPIFNOT                        R21 ; [+100]
      196 JUMPIFNOT                        R6 ; [+83]
      197 GETUPVAL                         R26 2
      198 GETTABLEKS                       R26 R26 K40 ["createElement"]
      200 LOADK                            R27 K51 ["ImageButton"]
      201 GETUPVAL                         R29 0
      202 JUMPIFNOT                        R29 ; [+25]
      203 NEWTABLE                         R28 4 0
      205 JUMPIFNOT                        R7 ; [+2]
      206 MOVE                             R29 R19
      207 JUMP                             ; [+1]
      208 MOVE                             R29 R20
      209 SETTABLEKS                       R29 R28 K52 ["ImageRectOffset"]
      211 LOADN                            R29 4
      212 SETTABLEKS                       R29 R28 K41 ["LayoutOrder"]
      214 GETUPVAL                         R29 2
      215 GETTABLEKS                       R29 R29 K53 ["Event"]
      217 GETTABLEKS                       R29 R29 K54 ["Activated"]
      219 GETTABLEKS                       R30 R0 K55 ["onToggle"]
      221 SETTABLE                         R30 R28 R29
      222 GETUPVAL                         R29 5
      223 GETTABLEKS                       R29 R29 K56 ["Tag"]
      225 LOADK                            R30 K10 ["Arrow"]
      226 SETTABLE                         R30 R28 R29
      227 JUMP                             ; [+50]
      228 NEWTABLE                         R28 8 0
      230 LOADN                            R29 4
      231 SETTABLEKS                       R29 R28 K41 ["LayoutOrder"]
      233 GETIMPORT                        R29 K48 [UDim2.new]
      235 LOADN                            R30 0
      236 MOVE                             R31 R8
      237 LOADN                            R32 0
      238 MOVE                             R33 R8
      239 CALL                             R29 4 1
      240 SETTABLEKS                       R29 R28 K11 ["Size"]
      242 LOADN                            R29 1
      243 SETTABLEKS                       R29 R28 K57 ["BackgroundTransparency"]
      245 GETTABLEKS                       R29 R2 K10 ["Arrow"]
      247 GETTABLEKS                       R29 R29 K58 ["Image"]
      249 SETTABLEKS                       R29 R28 K58 ["Image"]
      251 GETTABLEKS                       R29 R2 K10 ["Arrow"]
      253 GETTABLEKS                       R29 R29 K59 ["Color"]
      255 SETTABLEKS                       R29 R28 K60 ["ImageColor3"]
      257 GETIMPORT                        R29 K62 [Vector2.new]
      259 MOVE                             R30 R8
      260 MOVE                             R31 R8
      261 CALL                             R29 2 1
      262 SETTABLEKS                       R29 R28 K63 ["ImageRectSize"]
      264 JUMPIFNOT                        R7 ; [+2]
      265 MOVE                             R29 R19
      266 JUMP                             ; [+1]
      267 MOVE                             R29 R20
      268 SETTABLEKS                       R29 R28 K52 ["ImageRectOffset"]
      270 GETUPVAL                         R29 2
      271 GETTABLEKS                       R29 R29 K53 ["Event"]
      273 GETTABLEKS                       R29 R29 K54 ["Activated"]
      275 GETTABLEKS                       R30 R0 K55 ["onToggle"]
      277 SETTABLE                         R30 R28 R29
      278 CALL                             R26 2 1
      279 JUMP                             ; [+17]
      280 GETUPVAL                         R26 2
      281 GETTABLEKS                       R26 R26 K40 ["createElement"]
      283 GETUPVAL                         R27 4
      284 DUPTABLE                         R28 K65 [{["LayoutOrder"] = 4, ["Size"]}]
      285 GETIMPORT                        R29 K48 [UDim2.new]
      287 LOADN                            R30 0
      288 MOVE                             R31 R8
      289 LOADN                            R32 0
      290 MOVE                             R33 R8
      291 CALL                             R29 4 1
      292 SETTABLEKS                       R29 R28 K11 ["Size"]
      294 CALL                             R26 2 1
      295 JUMP                             ; [+1]
      296 LOADNIL                          R26
      297 SETTABLEKS                       R26 R25 K36 ["Toggle"]
      299 JUMPIFNOT                        R10 ; [+10]
      300 GETUPVAL                         R26 2
      301 GETTABLEKS                       R26 R26 K40 ["createElement"]
      303 MOVE                             R27 R10
      304 GETUPVAL                         R28 3
      305 MOVE                             R29 R1
      306 DUPTABLE                         R30 K67 [{["LayoutOrder"] = 5}]
      307 CALL                             R28 2 -1
      308 CALL                             R26 -1 1
      309 JUMP                             ; [+1]
      310 LOADNIL                          R26
      311 SETTABLEKS                       R26 R25 K13 ["BeforeIcon"]
      313 JUMPIFNOT                        R17 ; [+10]
      314 GETUPVAL                         R26 2
      315 GETTABLEKS                       R26 R26 K40 ["createElement"]
      317 GETUPVAL                         R27 6
      318 GETUPVAL                         R28 3
      319 DUPTABLE                         R29 K69 [{["LayoutOrder"] = 6}]
      320 MOVE                             R30 R17
      321 CALL                             R28 2 -1
      322 CALL                             R26 -1 1
      323 JUMP                             ; [+1]
      324 LOADNIL                          R26
      325 SETTABLEKS                       R26 R25 K37 ["LeftIcon"]
      327 JUMPIFNOT                        R16 ; [+31]
      328 GETUPVAL                         R26 2
      329 GETTABLEKS                       R26 R26 K40 ["createElement"]
      331 GETUPVAL                         R27 7
      332 DUPTABLE                         R28 K73 [{["TextColor"], ["LayoutOrder"] = 7, ["Text"], ["AutomaticSize"]}]
      333 GETTABLEKS                       R29 R2 K70 ["TextColor"]
      335 SETTABLEKS                       R29 R28 K70 ["TextColor"]
      337 SETTABLEKS                       R16 R28 K38 ["Text"]
      339 GETIMPORT                        R29 K76 [Enum.AutomaticSize.XY]
      341 SETTABLEKS                       R29 R28 K72 ["AutomaticSize"]
      343 JUMPIFNOT                        R18 ; [+12]
      344 DUPTABLE                         R29 K78 [{"Tooltip"}]
      345 GETUPVAL                         R30 2
      346 GETTABLEKS                       R30 R30 K40 ["createElement"]
      348 GETUPVAL                         R31 8
      349 DUPTABLE                         R32 K79 [{"Text"}]
      350 SETTABLEKS                       R18 R32 K38 ["Text"]
      352 CALL                             R30 2 1
      353 SETTABLEKS                       R30 R29 K77 ["Tooltip"]
      355 JUMP                             ; [+1]
      356 LOADNIL                          R29
      357 CALL                             R26 3 1
      358 JUMP                             ; [+1]
      359 LOADNIL                          R26
      360 SETTABLEKS                       R26 R25 K38 ["Text"]
      362 JUMPIFNOT                        R11 ; [+10]
      363 GETUPVAL                         R26 2
      364 GETTABLEKS                       R26 R26 K40 ["createElement"]
      366 MOVE                             R27 R11
      367 GETUPVAL                         R28 3
      368 MOVE                             R29 R1
      369 DUPTABLE                         R30 K81 [{["LayoutOrder"] = 8}]
      370 CALL                             R28 2 -1
      371 CALL                             R26 -1 1
      372 JUMP                             ; [+1]
      373 LOADNIL                          R26
      374 SETTABLEKS                       R26 R25 K14 ["AfterItem"]
      376 GETUPVAL                         R26 2
      377 GETTABLEKS                       R26 R26 K40 ["createElement"]
      379 GETUPVAL                         R27 4
      380 GETUPVAL                         R28 9
      381 DUPTABLE                         R29 K83 [{"OnClick", "LayoutOrder", "Position", "Size"}]
      382 DUPCLOSURE                       R30 K84 [PROTO_2]
      383 SETTABLEKS                       R30 R29 K82 ["OnClick"]
      385 JUMPIFNOT                        R13 ; [+2]
      386 LOADN                            R30 2
      387 JUMP                             ; [+1]
      388 MOVE                             R30 R3
      389 SETTABLEKS                       R30 R29 K41 ["LayoutOrder"]
      391 SETTABLEKS                       R15 R29 K18 ["Position"]
      393 GETTABLEKS                       R30 R1 K11 ["Size"]
      395 SETTABLEKS                       R30 R29 K11 ["Size"]
      397 GETTABLEKS                       R30 R1 K85 ["WrapperProps"]
      399 GETUPVAL                         R32 0
      400 JUMPIFNOT                        R32 ; [+15]
      401 NEWTABLE                         R31 1 0
      403 GETUPVAL                         R32 5
      404 GETTABLEKS                       R32 R32 K56 ["Tag"]
      406 GETUPVAL                         R33 10
      407 LOADK                            R34 K86 ["Component-TreeViewRow"]
      408 GETUPVAL                         R37 5
      409 GETTABLEKS                       R37 R37 K56 ["Tag"]
      411 GETTABLE                         R36 R1 R37
      412 ORK                              R35 R36 K87 ["Row Fit-X X-Stroke X-Corner X-RowM X-Middle"]
      413 CALL                             R33 2 1
      414 SETTABLE                         R33 R31 R32
      415 JUMP                             ; [+42]
      416 DUPTABLE                         R31 K93 [{["AutomaticSize"], ["Style"] = "Box", ["Layout"], ["HorizontalAlignment"], ["BackgroundColor3"], ["Padding"], ["Size"], ["Spacing"]}]
      417 GETIMPORT                        R32 K95 [Enum.AutomaticSize.X]
      419 SETTABLEKS                       R32 R31 K72 ["AutomaticSize"]
      421 JUMPIFNOT                        R12 ; [+2]
      422 LOADNIL                          R32
      423 JUMP                             ; [+2]
      424 GETIMPORT                        R32 K98 [Enum.FillDirection.Horizontal]
      426 SETTABLEKS                       R32 R31 K89 ["Layout"]
      428 JUMPIFNOT                        R12 ; [+2]
      429 LOADNIL                          R32
      430 JUMP                             ; [+2]
      431 GETIMPORT                        R32 K99 [Enum.HorizontalAlignment.Left]
      433 SETTABLEKS                       R32 R31 K90 ["HorizontalAlignment"]
      435 GETTABLEKS                       R32 R2 K100 ["Background"]
      437 SETTABLEKS                       R32 R31 K91 ["BackgroundColor3"]
      439 SETTABLEKS                       R24 R31 K34 ["Padding"]
      441 GETTABLEKS                       R32 R1 K11 ["Size"]
      443 JUMPIF                           R32 ; [+8]
      444 GETIMPORT                        R32 K48 [UDim2.new]
      446 LOADN                            R33 1
      447 LOADN                            R34 0
      448 LOADN                            R35 0
      449 GETTABLEKS                       R36 R2 K101 ["RowHeight"]
      451 CALL                             R32 4 1
      452 SETTABLEKS                       R32 R31 K11 ["Size"]
      454 GETTABLEKS                       R32 R2 K92 ["Spacing"]
      456 SETTABLEKS                       R32 R31 K92 ["Spacing"]
      458 CALL                             R28 3 1
      459 JUMPIFNOT                        R12 ; [+79]
      460 DUPTABLE                         R29 K104 [{"Row", "Tail"}]
      461 GETUPVAL                         R30 2
      462 GETTABLEKS                       R30 R30 K40 ["createElement"]
      464 GETUPVAL                         R31 4
      465 DUPTABLE                         R32 K105 [{"Layout", "HorizontalAlignment"}]
      466 GETIMPORT                        R33 K98 [Enum.FillDirection.Horizontal]
      468 SETTABLEKS                       R33 R32 K89 ["Layout"]
      470 GETIMPORT                        R33 K99 [Enum.HorizontalAlignment.Left]
      472 SETTABLEKS                       R33 R32 K90 ["HorizontalAlignment"]
      474 MOVE                             R33 R25
      475 CALL                             R30 3 1
      476 SETTABLEKS                       R30 R29 K102 ["Row"]
      478 GETUPVAL                         R30 2
      479 GETTABLEKS                       R30 R30 K40 ["createElement"]
      481 GETUPVAL                         R31 4
      482 GETUPVAL                         R33 0
      483 JUMPIFNOT                        R33 ; [+8]
      484 NEWTABLE                         R32 1 0
      486 GETUPVAL                         R33 5
      487 GETTABLEKS                       R33 R33 K56 ["Tag"]
      489 LOADK                            R34 K103 ["Tail"]
      490 SETTABLE                         R34 R32 R33
      491 JUMP                             ; [+34]
      492 DUPTABLE                         R32 K108 [{["AnchorPoint"], ["AutomaticSize"], ["Padding"], ["Position"], ["Size"], ["BackgroundColor3"], ["ZIndex"] = 2}]
      493 GETIMPORT                        R33 K62 [Vector2.new]
      495 LOADN                            R34 1
      496 LOADN                            R35 0
      497 CALL                             R33 2 1
      498 SETTABLEKS                       R33 R32 K106 ["AnchorPoint"]
      500 GETIMPORT                        R33 K95 [Enum.AutomaticSize.X]
      502 SETTABLEKS                       R33 R32 K72 ["AutomaticSize"]
      504 GETTABLEKS                       R33 R2 K109 ["TailPadding"]
      506 SETTABLEKS                       R33 R32 K34 ["Padding"]
      508 GETIMPORT                        R33 K111 [UDim2.fromScale]
      510 LOADN                            R34 1
      511 LOADN                            R35 0
      512 CALL                             R33 2 1
      513 SETTABLEKS                       R33 R32 K18 ["Position"]
      515 GETIMPORT                        R33 K111 [UDim2.fromScale]
      517 LOADN                            R34 0
      518 LOADN                            R35 1
      519 CALL                             R33 2 1
      520 SETTABLEKS                       R33 R32 K11 ["Size"]
      522 GETTABLEKS                       R33 R2 K100 ["Background"]
      524 SETTABLEKS                       R33 R32 K91 ["BackgroundColor3"]
      526 DUPTABLE                         R33 K113 [{"Child"}]
      527 GETUPVAL                         R34 2
      528 GETTABLEKS                       R34 R34 K40 ["createElement"]
      530 MOVE                             R35 R12
      531 MOVE                             R36 R1
      532 CALL                             R34 2 1
      533 SETTABLEKS                       R34 R33 K112 ["Child"]
      535 CALL                             R30 3 1
      536 SETTABLEKS                       R30 R29 K103 ["Tail"]
      538 JUMP                             ; [+1]
      539 MOVE                             R29 R25
      540 CALL                             R26 3 -1
      541 RETURN                           R26 -1

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
      146 DUPTABLE                         R19 K38 [{["ExpandableRoot"] = True}]
      147 SETTABLEKS                       R19 R18 K39 ["defaultProps"]
      149 MOVE                             R19 R3
      150 DUPTABLE                         R20 K41 [{"Stylizer"}]
      151 JUMPIFNOT                        R5 ; [+2]
      152 LOADNIL                          R21
      153 JUMP                             ; [+2]
      154 GETTABLEKS                       R21 R2 K40 ["Stylizer"]
      156 SETTABLEKS                       R21 R20 K40 ["Stylizer"]
      158 CALL                             R19 1 1
      159 MOVE                             R20 R18
      160 CALL                             R19 1 1
      161 MOVE                             R18 R19
      162 MOVE                             R19 R12
      163 MOVE                             R20 R18
      164 CALL                             R19 1 -1
      165 RETURN                           R19 -1
