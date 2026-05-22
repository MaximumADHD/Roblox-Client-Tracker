PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClick"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 LOADK                            R4 K1 ["PointingHand"]
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 3
       10 LOADB                            R6 0
       11 CALL                             R5 1 2
       12 GETUPVAL                         R7 3
       13 LOADNIL                          R8
       14 CALL                             R7 1 2
       15 GETUPVAL                         R9 3
       16 GETIMPORT                        R10 K4 [Vector2.new]
       18 LOADN                            R11 0
       19 LOADN                            R12 0
       20 CALL                             R10 2 -1
       21 CALL                             R9 -1 2
       22 GETUPVAL                         R11 4
       23 LOADNIL                          R12
       24 CALL                             R11 1 1
       25 GETUPVAL                         R12 5
       26 GETTABLEKS                       R12 R12 K5 ["useContextMenuActions"]
       28 CALL                             R12 0 1
       29 GETUPVAL                         R13 6
       30 GETTABLEKS                       R14 R0 K6 ["Cell"]
       32 MOVE                             R15 R12
       33 JUMPIF                           R15 ; [+2]
       34 NEWTABLE                         R15 0 0
       36 CALL                             R13 2 1
       37 GETTABLEKS                       R14 R0 K6 ["Cell"]
       39 GETTABLEKS                       R14 R14 K7 ["IsPlaceholder"]
       41 JUMPIFNOT                        R14 ; [+17]
       42 GETUPVAL                         R14 7
       43 GETTABLEKS                       R14 R14 K8 ["createElement"]
       45 GETUPVAL                         R15 8
       46 GETTABLEKS                       R15 R15 K9 ["Component"]
       48 DUPTABLE                         R16 K12 [{"Size", "Position"}]
       49 GETTABLEKS                       R17 R0 K10 ["Size"]
       51 SETTABLEKS                       R17 R16 K10 ["Size"]
       53 GETTABLEKS                       R17 R0 K11 ["Position"]
       55 SETTABLEKS                       R17 R16 K11 ["Position"]
       57 CALL                             R14 2 -1
       58 RETURN                           R14 -1
       59 GETTABLEKS                       R14 R0 K6 ["Cell"]
       61 LOADNIL                          R15
       62 GETTABLEKS                       R16 R14 K13 ["LastViewed"]
       64 JUMPIFNOT                        R16 ; [+6]
       65 GETUPVAL                         R16 9
       66 GETTABLEKS                       R17 R14 K13 ["LastViewed"]
       68 MOVE                             R18 R1
       69 CALL                             R16 2 1
       70 MOVE                             R15 R16
       71 NEWTABLE                         R16 0 0
       73 GETTABLEKS                       R17 R14 K14 ["TeamCreatePresence"]
       75 JUMPIFNOT                        R17 ; [+176]
       76 LOADN                            R17 2
       77 GETTABLEKS                       R19 R14 K14 ["TeamCreatePresence"]
       79 LENGTH                           R18 R19
       80 JUMPIFNOTEQKN                    R18 K15 [3] ; [+2]
       82 LOADN                            R17 3
       83 LOADN                            R20 1
       84 GETTABLEKS                       R23 R14 K14 ["TeamCreatePresence"]
       86 LENGTH                           R22 R23
       87 FASTCALL2                        MATH_MIN R22 R17 ; [+4]
       89 MOVE                             R23 R17
       90 GETIMPORT                        R21 K18 [math.min]
       92 CALL                             R21 2 1
       93 MOVE                             R18 R21
       94 LOADN                            R19 1
       95 FORNPREP                         R18
       96 MOVE                             R22 R16
       97 GETUPVAL                         R23 7
       98 GETTABLEKS                       R23 R23 K8 ["createElement"]
      100 LOADK                            R24 K19 ["Frame"]
      101 NEWTABLE                         R25 2 0
      103 GETIMPORT                        R26 K21 [UDim2.new]
      105 LOADN                            R27 0
      106 LOADN                            R28 35
      107 LOADN                            R29 0
      108 LOADN                            R30 35
      109 CALL                             R26 4 1
      110 SETTABLEKS                       R26 R25 K10 ["Size"]
      112 GETUPVAL                         R26 7
      113 GETTABLEKS                       R26 R26 K22 ["Tag"]
      115 LOADK                            R27 K23 ["X-Fit X-Middle X-Center StartPage-TeamCreateOnlineBackground StartPage-Circular"]
      116 SETTABLE                         R27 R25 R26
      117 NEWTABLE                         R26 0 1
      119 GETUPVAL                         R27 7
      120 GETTABLEKS                       R27 R27 K8 ["createElement"]
      122 LOADK                            R28 K19 ["Frame"]
      123 NEWTABLE                         R29 2 0
      125 GETIMPORT                        R30 K21 [UDim2.new]
      127 LOADN                            R31 0
      128 LOADN                            R32 30
      129 LOADN                            R33 0
      130 LOADN                            R34 30
      131 CALL                             R30 4 1
      132 SETTABLEKS                       R30 R29 K10 ["Size"]
      134 GETUPVAL                         R30 7
      135 GETTABLEKS                       R30 R30 K22 ["Tag"]
      137 LOADK                            R31 K24 ["X-Fit X-Middle X-Center StartPage-Standard StartPage-Circular"]
      138 SETTABLE                         R31 R29 R30
      139 NEWTABLE                         R30 0 1
      141 GETUPVAL                         R31 7
      142 GETTABLEKS                       R31 R31 K8 ["createElement"]
      144 GETUPVAL                         R32 10
      145 DUPTABLE                         R33 K26 [{"Style", "Size"}]
      146 DUPTABLE                         R34 K28 [{"Image"}]
      147 GETTABLEKS                       R36 R14 K14 ["TeamCreatePresence"]
      149 GETTABLE                         R35 R36 R20
      150 SETTABLEKS                       R35 R34 K27 ["Image"]
      152 SETTABLEKS                       R34 R33 K25 ["Style"]
      154 GETIMPORT                        R34 K21 [UDim2.new]
      156 LOADN                            R35 0
      157 LOADN                            R36 30
      158 LOADN                            R37 0
      159 LOADN                            R38 30
      160 CALL                             R34 4 1
      161 SETTABLEKS                       R34 R33 K10 ["Size"]
      163 CALL                             R31 2 -1
      164 SETLIST                          R30 R31 -1 [1]
      166 CALL                             R27 3 -1
      167 SETLIST                          R26 R27 -1 [1]
      169 CALL                             R23 3 -1
      170 FASTCALL                         TABLE_INSERT ; [+2]
      171 GETIMPORT                        R21 K31 [table.insert]
      173 CALL                             R21 -1 0
      174 FORNLOOP                         R18
      175 GETTABLEKS                       R19 R14 K14 ["TeamCreatePresence"]
      177 LENGTH                           R18 R19
      178 LOADN                            R19 3
      179 JUMPIFNOTLT                      R19 R18 ; [+72]
      181 MOVE                             R19 R16
      182 GETUPVAL                         R20 7
      183 GETTABLEKS                       R20 R20 K8 ["createElement"]
      185 LOADK                            R21 K19 ["Frame"]
      186 NEWTABLE                         R22 2 0
      188 GETIMPORT                        R23 K21 [UDim2.new]
      190 LOADN                            R24 0
      191 LOADN                            R25 35
      192 LOADN                            R26 0
      193 LOADN                            R27 35
      194 CALL                             R23 4 1
      195 SETTABLEKS                       R23 R22 K10 ["Size"]
      197 GETUPVAL                         R23 7
      198 GETTABLEKS                       R23 R23 K22 ["Tag"]
      200 LOADK                            R24 K24 ["X-Fit X-Middle X-Center StartPage-Standard StartPage-Circular"]
      201 SETTABLE                         R24 R22 R23
      202 NEWTABLE                         R23 0 1
      204 GETUPVAL                         R24 7
      205 GETTABLEKS                       R24 R24 K8 ["createElement"]
      207 LOADK                            R25 K32 ["TextLabel"]
      208 NEWTABLE                         R26 8 0
      210 GETIMPORT                        R27 K21 [UDim2.new]
      212 LOADN                            R28 0
      213 LOADN                            R29 30
      214 LOADN                            R30 0
      215 LOADN                            R31 30
      216 CALL                             R27 4 1
      217 SETTABLEKS                       R27 R26 K10 ["Size"]
      219 LOADK                            R28 K33 ["+"]
      220 GETTABLEKS                       R33 R14 K14 ["TeamCreatePresence"]
      222 LENGTH                           R32 R33
      223 SUBK                             R31 R32 K15 [3]
      224 ADDK                             R30 R31 K34 [1]
      225 FASTCALL1                        TOSTRING R30 ; [+2]
      226 GETIMPORT                        R29 K36 [tostring]
      228 CALL                             R29 1 1
      229 CONCAT                           R27 R28 R29
      230 SETTABLEKS                       R27 R26 K37 ["Text"]
      232 GETIMPORT                        R27 K41 [Enum.Font.BuilderSans]
      234 SETTABLEKS                       R27 R26 K39 ["Font"]
      236 LOADN                            R27 18
      237 SETTABLEKS                       R27 R26 K42 ["TextSize"]
      239 GETUPVAL                         R27 7
      240 GETTABLEKS                       R27 R27 K22 ["Tag"]
      242 LOADK                            R28 K43 ["X-Fit X-Transparent StartPage-StandardDarkTextColor"]
      243 SETTABLE                         R28 R26 R27
      244 CALL                             R24 2 -1
      245 SETLIST                          R23 R24 -1 [1]
      247 CALL                             R20 3 -1
      248 FASTCALL                         TABLE_INSERT ; [+2]
      249 GETIMPORT                        R18 K31 [table.insert]
      251 CALL                             R18 -1 0
      252 LOADNIL                          R17
      253 GETTABLEKS                       R18 R14 K44 ["ImageUrl"]
      255 JUMPIFNOT                        R18 ; [+111]
      256 GETUPVAL                         R18 11
      257 JUMPIFNOT                        R18 ; [+109]
      258 GETUPVAL                         R18 7
      259 GETTABLEKS                       R18 R18 K8 ["createElement"]
      261 GETUPVAL                         R19 10
      262 NEWTABLE                         R20 4 0
      264 DUPTABLE                         R21 K28 [{"Image"}]
      265 GETTABLEKS                       R22 R14 K44 ["ImageUrl"]
      267 SETTABLEKS                       R22 R21 K27 ["Image"]
      269 SETTABLEKS                       R21 R20 K25 ["Style"]
      271 GETTABLEKS                       R21 R0 K45 ["ImageSize"]
      273 SETTABLEKS                       R21 R20 K10 ["Size"]
      275 MOVE                             R21 R2
      276 CALL                             R21 0 1
      277 SETTABLEKS                       R21 R20 K46 ["LayoutOrder"]
      279 GETUPVAL                         R21 7
      280 GETTABLEKS                       R21 R21 K22 ["Tag"]
      282 LOADK                            R22 K47 ["X-Corner"]
      283 SETTABLE                         R22 R20 R21
      284 DUPTABLE                         R21 K50 [{"Difficulty", "Collaborators"}]
      285 GETTABLEKS                       R23 R0 K51 ["IsDifficultyVisible"]
      287 JUMPIFNOT                        R23 ; [+58]
      288 GETTABLEKS                       R23 R14 K48 ["Difficulty"]
      290 JUMPIFNOT                        R23 ; [+55]
      291 GETTABLEKS                       R23 R14 K48 ["Difficulty"]
      293 JUMPIFEQKS                       R23 K52 [""] ; [+52]
      295 GETUPVAL                         R22 7
      296 GETTABLEKS                       R22 R22 K8 ["createElement"]
      298 LOADK                            R23 K19 ["Frame"]
      299 NEWTABLE                         R24 1 0
      301 GETUPVAL                         R25 7
      302 GETTABLEKS                       R25 R25 K22 ["Tag"]
      304 LOADK                            R26 K53 ["X-Pad X-Fill X-Top X-Left X-Transparent"]
      305 SETTABLE                         R26 R24 R25
      306 GETUPVAL                         R26 12
      307 JUMPIFNOT                        R26 ; [+16]
      308 GETUPVAL                         R25 7
      309 GETTABLEKS                       R25 R25 K8 ["createElement"]
      311 GETUPVAL                         R26 13
      312 DUPTABLE                         R27 K56 [{"text", "variant"}]
      313 GETTABLEKS                       R28 R14 K48 ["Difficulty"]
      315 SETTABLEKS                       R28 R27 K54 ["text"]
      317 GETUPVAL                         R28 14
      318 GETTABLEKS                       R28 R28 K57 ["Neutral"]
      320 SETTABLEKS                       R28 R27 K55 ["variant"]
      322 CALL                             R25 2 1
      323 JUMP                             ; [+20]
      324 NEWTABLE                         R25 0 1
      326 GETUPVAL                         R26 7
      327 GETTABLEKS                       R26 R26 K8 ["createElement"]
      329 GETUPVAL                         R27 15
      330 NEWTABLE                         R28 2 0
      332 GETTABLEKS                       R29 R14 K48 ["Difficulty"]
      334 SETTABLEKS                       R29 R28 K37 ["Text"]
      336 GETUPVAL                         R29 7
      337 GETTABLEKS                       R29 R29 K22 ["Tag"]
      339 LOADK                            R30 K58 ["X-Fit"]
      340 SETTABLE                         R30 R28 R29
      341 CALL                             R26 2 1
      342 SETLIST                          R25 R26 1 [1]
      344 CALL                             R22 3 1
      345 JUMP                             ; [+1]
      346 LOADNIL                          R22
      347 SETTABLEKS                       R22 R21 K48 ["Difficulty"]
      349 GETUPVAL                         R22 7
      350 GETTABLEKS                       R22 R22 K8 ["createElement"]
      352 LOADK                            R23 K19 ["Frame"]
      353 NEWTABLE                         R24 1 0
      355 GETUPVAL                         R25 7
      356 GETTABLEKS                       R25 R25 K22 ["Tag"]
      358 LOADK                            R26 K59 ["X-Pad X-Bottom X-Right X-Fill X-Row X-Transparent"]
      359 SETTABLE                         R26 R24 R25
      360 MOVE                             R25 R16
      361 CALL                             R22 3 1
      362 SETTABLEKS                       R22 R21 K49 ["Collaborators"]
      364 CALL                             R18 3 1
      365 MOVE                             R17 R18
      366 JUMP                             ; [+119]
      367 GETTABLEKS                       R18 R14 K44 ["ImageUrl"]
      369 JUMPIFNOT                        R18 ; [+48]
      370 GETUPVAL                         R18 11
      371 JUMPIF                           R18 ; [+46]
      372 GETUPVAL                         R18 7
      373 GETTABLEKS                       R18 R18 K8 ["createElement"]
      375 GETUPVAL                         R19 10
      376 NEWTABLE                         R20 4 0
      378 DUPTABLE                         R21 K28 [{"Image"}]
      379 GETTABLEKS                       R22 R14 K44 ["ImageUrl"]
      381 SETTABLEKS                       R22 R21 K27 ["Image"]
      383 SETTABLEKS                       R21 R20 K25 ["Style"]
      385 GETTABLEKS                       R21 R0 K45 ["ImageSize"]
      387 SETTABLEKS                       R21 R20 K10 ["Size"]
      389 MOVE                             R21 R2
      390 CALL                             R21 0 1
      391 SETTABLEKS                       R21 R20 K46 ["LayoutOrder"]
      393 GETUPVAL                         R21 7
      394 GETTABLEKS                       R21 R21 K22 ["Tag"]
      396 LOADK                            R22 K60 ["X-Corner X-Bottom X-Right"]
      397 SETTABLE                         R22 R20 R21
      398 NEWTABLE                         R21 0 1
      400 GETUPVAL                         R22 7
      401 GETTABLEKS                       R22 R22 K8 ["createElement"]
      403 LOADK                            R23 K19 ["Frame"]
      404 NEWTABLE                         R24 1 0
      406 GETUPVAL                         R25 7
      407 GETTABLEKS                       R25 R25 K22 ["Tag"]
      409 LOADK                            R26 K61 ["X-Pad X-Fit X-Row X-Transparent"]
      410 SETTABLE                         R26 R24 R25
      411 MOVE                             R25 R16
      412 CALL                             R22 3 -1
      413 SETLIST                          R21 R22 -1 [1]
      415 CALL                             R18 3 1
      416 MOVE                             R17 R18
      417 JUMP                             ; [+68]
      418 GETTABLEKS                       R18 R14 K62 ["NoLoadableImage"]
      420 JUMPIFNOT                        R18 ; [+52]
      421 GETUPVAL                         R18 7
      422 GETTABLEKS                       R18 R18 K8 ["createElement"]
      424 LOADK                            R19 K19 ["Frame"]
      425 NEWTABLE                         R20 4 0
      427 GETTABLEKS                       R21 R0 K45 ["ImageSize"]
      429 SETTABLEKS                       R21 R20 K10 ["Size"]
      431 LOADK                            R21 K63 [0.84]
      432 SETTABLEKS                       R21 R20 K64 ["BackgroundTransparency"]
      434 MOVE                             R21 R2
      435 CALL                             R21 0 1
      436 SETTABLEKS                       R21 R20 K46 ["LayoutOrder"]
      438 GETUPVAL                         R21 7
      439 GETTABLEKS                       R21 R21 K22 ["Tag"]
      441 LOADK                            R22 K65 ["X-Corner X-Center X-Middle StartPage-StandardDarkBackground"]
      442 SETTABLE                         R22 R20 R21
      443 GETUPVAL                         R21 7
      444 GETTABLEKS                       R21 R21 K8 ["createElement"]
      446 GETUPVAL                         R22 10
      447 NEWTABLE                         R23 4 0
      449 DUPTABLE                         R24 K28 [{"Image"}]
      450 LOADK                            R25 K66 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"]
      451 SETTABLEKS                       R25 R24 K27 ["Image"]
      453 SETTABLEKS                       R24 R23 K25 ["Style"]
      455 GETIMPORT                        R24 K21 [UDim2.new]
      457 LOADN                            R25 0
      458 LOADN                            R26 100
      459 LOADN                            R27 0
      460 LOADN                            R28 100
      461 CALL                             R24 4 1
      462 SETTABLEKS                       R24 R23 K10 ["Size"]
      464 GETUPVAL                         R24 7
      465 GETTABLEKS                       R24 R24 K22 ["Tag"]
      467 LOADK                            R25 K47 ["X-Corner"]
      468 SETTABLE                         R25 R23 R24
      469 CALL                             R21 2 -1
      470 CALL                             R18 -1 1
      471 MOVE                             R17 R18
      472 JUMP                             ; [+13]
      473 GETUPVAL                         R18 7
      474 GETTABLEKS                       R18 R18 K8 ["createElement"]
      476 GETUPVAL                         R19 8
      477 GETTABLEKS                       R19 R19 K9 ["Component"]
      479 DUPTABLE                         R20 K67 [{"Size"}]
      480 GETTABLEKS                       R21 R0 K45 ["ImageSize"]
      482 SETTABLEKS                       R21 R20 K10 ["Size"]
      484 CALL                             R18 2 1
      485 MOVE                             R17 R18
      486 GETUPVAL                         R18 7
      487 GETTABLEKS                       R18 R18 K8 ["createElement"]
      489 LOADK                            R19 K68 ["TextButton"]
      490 NEWTABLE                         R20 8 0
      492 GETTABLEKS                       R21 R0 K11 ["Position"]
      494 SETTABLEKS                       R21 R20 K11 ["Position"]
      496 GETTABLEKS                       R21 R0 K10 ["Size"]
      498 SETTABLEKS                       R21 R20 K10 ["Size"]
      500 GETUPVAL                         R21 7
      501 GETTABLEKS                       R21 R21 K69 ["Event"]
      503 GETTABLEKS                       R21 R21 K70 ["Activated"]
      505 NEWCLOSURE                       R22 P0
      506 CAPTURE                          VAL R0
      507 CAPTURE                          VAL R14
      508 CAPTURE                          VAL R6
      509 SETTABLE                         R22 R20 R21
      510 GETUPVAL                         R21 7
      511 GETTABLEKS                       R21 R21 K69 ["Event"]
      513 GETTABLEKS                       R21 R21 K71 ["MouseEnter"]
      515 SETTABLE                         R3 R20 R21
      516 GETUPVAL                         R21 7
      517 GETTABLEKS                       R21 R21 K69 ["Event"]
      519 GETTABLEKS                       R21 R21 K72 ["MouseLeave"]
      521 SETTABLE                         R4 R20 R21
      522 GETUPVAL                         R21 7
      523 GETTABLEKS                       R21 R21 K22 ["Tag"]
      525 LOADK                            R22 K73 ["X-Transparent data-testid=--start-page-InfoTile"]
      526 SETTABLE                         R22 R20 R21
      527 DUPTABLE                         R21 K75 [{"Child"}]
      528 GETUPVAL                         R22 7
      529 GETTABLEKS                       R22 R22 K8 ["createElement"]
      531 LOADK                            R23 K19 ["Frame"]
      532 NEWTABLE                         R24 1 0
      534 GETUPVAL                         R25 7
      535 GETTABLEKS                       R25 R25 K22 ["Tag"]
      537 LOADK                            R26 K76 ["X-Fill StartPage-TileBackground StartPage-TilePadding StartPage-RoundedCorner8 X-Column"]
      538 SETTABLE                         R26 R24 R25
      539 DUPTABLE                         R25 K78 [{"Image", "Body"}]
      540 SETTABLEKS                       R17 R25 K27 ["Image"]
      542 GETUPVAL                         R26 7
      543 GETTABLEKS                       R26 R26 K8 ["createElement"]
      545 LOADK                            R27 K19 ["Frame"]
      546 NEWTABLE                         R28 2 0
      548 MOVE                             R29 R2
      549 CALL                             R29 0 1
      550 SETTABLEKS                       R29 R28 K46 ["LayoutOrder"]
      552 GETUPVAL                         R29 7
      553 GETTABLEKS                       R29 R29 K22 ["Tag"]
      555 LOADK                            R30 K79 ["X-Fit X-Row StartPage-DescPadding X-Transparent"]
      556 SETTABLE                         R30 R28 R29
      557 DUPTABLE                         R29 K83 [{"Options", "Kebab", "Focus"}]
      558 GETUPVAL                         R30 7
      559 GETTABLEKS                       R30 R30 K8 ["createElement"]
      561 LOADK                            R31 K19 ["Frame"]
      562 NEWTABLE                         R32 4 0
      564 GETIMPORT                        R33 K21 [UDim2.new]
      566 LOADN                            R34 0
      567 LOADN                            R35 170
      568 LOADN                            R36 1
      569 LOADN                            R37 56
      570 CALL                             R33 4 1
      571 SETTABLEKS                       R33 R32 K10 ["Size"]
      573 MOVE                             R33 R2
      574 CALL                             R33 0 1
      575 SETTABLEKS                       R33 R32 K46 ["LayoutOrder"]
      577 GETUPVAL                         R33 7
      578 GETTABLEKS                       R33 R33 K22 ["Tag"]
      580 LOADK                            R34 K84 ["X-Fit X-Top StartPage-SearchResultRowColumn X-Transparent"]
      581 SETTABLE                         R34 R32 R33
      582 DUPTABLE                         R33 K92 [{"Privacy", "Title", "CollaborationRestriction", "FormattedDate", "Description", "CreatorName", "Categories"}]
      583 GETTABLEKS                       R35 R0 K93 ["IsPrivacyVisible"]
      585 JUMPIFNOT                        R35 ; [+134]
      586 GETTABLEKS                       R35 R14 K94 ["PrivacyType"]
      588 JUMPIF                           R35 ; [+5]
      589 GETUPVAL                         R35 16
      590 JUMPIFNOT                        R35 ; [+129]
      591 GETTABLEKS                       R35 R14 K95 ["Audiences"]
      593 JUMPIFNOT                        R35 ; [+126]
      594 GETUPVAL                         R34 7
      595 GETTABLEKS                       R34 R34 K8 ["createElement"]
      597 LOADK                            R35 K19 ["Frame"]
      598 NEWTABLE                         R36 2 0
      600 MOVE                             R37 R2
      601 CALL                             R37 0 1
      602 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      604 GETUPVAL                         R37 7
      605 GETTABLEKS                       R37 R37 K22 ["Tag"]
      607 LOADK                            R38 K96 ["X-RowS X-Fit X-Transparent"]
      608 SETTABLE                         R38 R36 R37
      609 GETUPVAL                         R38 17
      610 JUMPIFNOT                        R38 ; [+55]
      611 GETUPVAL                         R37 7
      612 GETTABLEKS                       R37 R37 K8 ["createElement"]
      614 GETUPVAL                         R38 18
      615 DUPTABLE                         R39 K106 [{"PrivacyType", "Audiences", "ContentMaturity", "IsFriendsOnly", "CreatorType", "CoreContentSelectStatus", "CoreContentReasons", "IsBeta", "AgeRecommendation", "IsSequestered", "IsDiscoveryBlocked"}]
      616 GETTABLEKS                       R40 R14 K94 ["PrivacyType"]
      618 SETTABLEKS                       R40 R39 K94 ["PrivacyType"]
      620 GETUPVAL                         R41 16
      621 JUMPIFNOT                        R41 ; [+3]
      622 GETTABLEKS                       R40 R14 K95 ["Audiences"]
      624 JUMP                             ; [+1]
      625 LOADNIL                          R40
      626 SETTABLEKS                       R40 R39 K95 ["Audiences"]
      628 GETTABLEKS                       R40 R14 K97 ["ContentMaturity"]
      630 SETTABLEKS                       R40 R39 K97 ["ContentMaturity"]
      632 GETTABLEKS                       R40 R14 K98 ["IsFriendsOnly"]
      634 SETTABLEKS                       R40 R39 K98 ["IsFriendsOnly"]
      636 GETTABLEKS                       R40 R14 K99 ["CreatorType"]
      638 SETTABLEKS                       R40 R39 K99 ["CreatorType"]
      640 GETTABLEKS                       R40 R14 K100 ["CoreContentSelectStatus"]
      642 SETTABLEKS                       R40 R39 K100 ["CoreContentSelectStatus"]
      644 GETTABLEKS                       R40 R14 K101 ["CoreContentReasons"]
      646 SETTABLEKS                       R40 R39 K101 ["CoreContentReasons"]
      648 GETTABLEKS                       R40 R14 K102 ["IsBeta"]
      650 SETTABLEKS                       R40 R39 K102 ["IsBeta"]
      652 GETTABLEKS                       R40 R14 K103 ["AgeRecommendation"]
      654 SETTABLEKS                       R40 R39 K103 ["AgeRecommendation"]
      656 GETTABLEKS                       R40 R14 K104 ["IsSequestered"]
      658 SETTABLEKS                       R40 R39 K104 ["IsSequestered"]
      660 GETTABLEKS                       R40 R14 K105 ["IsDiscoveryBlocked"]
      662 SETTABLEKS                       R40 R39 K105 ["IsDiscoveryBlocked"]
      664 CALL                             R37 2 1
      665 JUMP                             ; [+52]
      666 GETUPVAL                         R38 12
      667 JUMPIFNOT                        R38 ; [+25]
      668 GETUPVAL                         R37 7
      669 GETTABLEKS                       R37 R37 K8 ["createElement"]
      671 GETUPVAL                         R38 13
      672 DUPTABLE                         R39 K56 [{"text", "variant"}]
      673 LOADK                            R42 K107 ["Plugin"]
      674 LOADK                            R44 K108 ["PrivacyType.%*"]
      675 GETTABLEKS                       R46 R14 K94 ["PrivacyType"]
      677 NAMECALL                         R44 R44 K109 ["format"]
      679 CALL                             R44 2 1
      680 MOVE                             R43 R44
      681 NAMECALL                         R40 R1 K110 ["getText"]
      683 CALL                             R40 3 1
      684 SETTABLEKS                       R40 R39 K54 ["text"]
      686 GETUPVAL                         R40 14
      687 GETTABLEKS                       R40 R40 K57 ["Neutral"]
      689 SETTABLEKS                       R40 R39 K55 ["variant"]
      691 CALL                             R37 2 1
      692 JUMP                             ; [+25]
      693 GETUPVAL                         R37 7
      694 GETTABLEKS                       R37 R37 K8 ["createElement"]
      696 GETUPVAL                         R38 15
      697 NEWTABLE                         R39 2 0
      699 LOADK                            R42 K107 ["Plugin"]
      700 LOADK                            R44 K108 ["PrivacyType.%*"]
      701 GETTABLEKS                       R46 R14 K94 ["PrivacyType"]
      703 NAMECALL                         R44 R44 K109 ["format"]
      705 CALL                             R44 2 1
      706 MOVE                             R43 R44
      707 NAMECALL                         R40 R1 K110 ["getText"]
      709 CALL                             R40 3 1
      710 SETTABLEKS                       R40 R39 K37 ["Text"]
      712 GETUPVAL                         R40 7
      713 GETTABLEKS                       R40 R40 K22 ["Tag"]
      715 LOADK                            R41 K58 ["X-Fit"]
      716 SETTABLE                         R41 R39 R40
      717 CALL                             R37 2 1
      718 CALL                             R34 3 1
      719 JUMP                             ; [+1]
      720 LOADNIL                          R34
      721 SETTABLEKS                       R34 R33 K85 ["Privacy"]
      723 GETUPVAL                         R34 7
      724 GETTABLEKS                       R34 R34 K8 ["createElement"]
      726 LOADK                            R35 K32 ["TextLabel"]
      727 NEWTABLE                         R36 8 0
      729 GETIMPORT                        R37 K113 [Enum.AutomaticSize.Y]
      731 SETTABLEKS                       R37 R36 K111 ["AutomaticSize"]
      733 GETTABLEKS                       R37 R14 K114 ["Name"]
      735 SETTABLEKS                       R37 R36 K37 ["Text"]
      737 LOADB                            R37 1
      738 SETTABLEKS                       R37 R36 K115 ["TextWrapped"]
      740 GETIMPORT                        R37 K118 [Enum.TextTruncate.AtEnd]
      742 SETTABLEKS                       R37 R36 K116 ["TextTruncate"]
      744 GETIMPORT                        R37 K121 [Enum.TextXAlignment.Left]
      746 SETTABLEKS                       R37 R36 K119 ["TextXAlignment"]
      748 GETIMPORT                        R37 K21 [UDim2.new]
      750 LOADN                            R38 1
      751 LOADN                            R39 226
      752 LOADN                            R40 0
      753 LOADN                            R41 0
      754 CALL                             R37 4 1
      755 SETTABLEKS                       R37 R36 K10 ["Size"]
      757 MOVE                             R37 R2
      758 CALL                             R37 0 1
      759 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      761 GETUPVAL                         R37 7
      762 GETTABLEKS                       R37 R37 K22 ["Tag"]
      764 LOADK                            R38 K122 ["StartPage-TextColor StartPage-TextSize StartPage-FontBold X-Transparent"]
      765 SETTABLE                         R38 R36 R37
      766 DUPTABLE                         R37 K67 [{"Size"}]
      767 GETUPVAL                         R38 7
      768 GETTABLEKS                       R38 R38 K8 ["createElement"]
      770 LOADK                            R39 K123 ["UISizeConstraint"]
      771 DUPTABLE                         R40 K125 [{"MaxSize"}]
      772 GETIMPORT                        R41 K4 [Vector2.new]
      774 LOADK                            R42 K126 [∞]
      775 LOADN                            R43 50
      776 CALL                             R41 2 1
      777 SETTABLEKS                       R41 R40 K124 ["MaxSize"]
      779 CALL                             R38 2 1
      780 SETTABLEKS                       R38 R37 K10 ["Size"]
      782 CALL                             R34 3 1
      783 SETTABLEKS                       R34 R33 K86 ["Title"]
      785 GETUPVAL                         R35 19
      786 JUMPIFNOT                        R35 ; [+36]
      787 GETTABLEKS                       R35 R14 K127 ["IsGame"]
      789 JUMPIFNOT                        R35 ; [+33]
      790 GETTABLEKS                       R35 R14 K128 ["IsAgeRestrictedCollaboration"]
      792 JUMPIFNOT                        R35 ; [+30]
      793 GETUPVAL                         R34 7
      794 GETTABLEKS                       R34 R34 K8 ["createElement"]
      796 LOADK                            R35 K19 ["Frame"]
      797 NEWTABLE                         R36 2 0
      799 MOVE                             R37 R2
      800 CALL                             R37 0 1
      801 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      803 GETUPVAL                         R37 7
      804 GETTABLEKS                       R37 R37 K22 ["Tag"]
      806 LOADK                            R38 K129 ["X-Fit X-Transparent"]
      807 SETTABLE                         R38 R36 R37
      808 DUPTABLE                         R37 K131 [{"Badge"}]
      809 GETUPVAL                         R38 7
      810 GETTABLEKS                       R38 R38 K8 ["createElement"]
      812 GETUPVAL                         R39 20
      813 DUPTABLE                         R40 K133 [{"UniverseId"}]
      814 GETTABLEKS                       R41 R14 K134 ["Id"]
      816 SETTABLEKS                       R41 R40 K132 ["UniverseId"]
      818 CALL                             R38 2 1
      819 SETTABLEKS                       R38 R37 K130 ["Badge"]
      821 CALL                             R34 3 1
      822 JUMP                             ; [+1]
      823 LOADNIL                          R34
      824 SETTABLEKS                       R34 R33 K87 ["CollaborationRestriction"]
      826 JUMPIFNOT                        R15 ; [+37]
      827 GETTABLEKS                       R35 R0 K135 ["IsDateModifiedVisible"]
      829 JUMPIFNOT                        R35 ; [+34]
      830 GETUPVAL                         R34 7
      831 GETTABLEKS                       R34 R34 K8 ["createElement"]
      833 LOADK                            R35 K32 ["TextLabel"]
      834 NEWTABLE                         R36 8 0
      836 LOADK                            R39 K107 ["Plugin"]
      837 LOADK                            R40 K136 ["LastModified"]
      838 DUPTABLE                         R41 K138 [{"lastModified"}]
      839 SETTABLEKS                       R15 R41 K137 ["lastModified"]
      841 NAMECALL                         R37 R1 K110 ["getText"]
      843 CALL                             R37 4 1
      844 SETTABLEKS                       R37 R36 K37 ["Text"]
      846 LOADN                            R37 12
      847 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      849 GETIMPORT                        R37 K121 [Enum.TextXAlignment.Left]
      851 SETTABLEKS                       R37 R36 K119 ["TextXAlignment"]
      853 MOVE                             R37 R2
      854 CALL                             R37 0 1
      855 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      857 GETUPVAL                         R37 7
      858 GETTABLEKS                       R37 R37 K22 ["Tag"]
      860 LOADK                            R38 K139 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      861 SETTABLE                         R38 R36 R37
      862 CALL                             R34 2 1
      863 JUMP                             ; [+1]
      864 LOADNIL                          R34
      865 SETTABLEKS                       R34 R33 K88 ["FormattedDate"]
      867 GETTABLEKS                       R35 R14 K89 ["Description"]
      869 JUMPIFNOT                        R35 ; [+34]
      870 GETTABLEKS                       R35 R0 K140 ["IsDescriptionVisible"]
      872 JUMPIFNOT                        R35 ; [+31]
      873 GETUPVAL                         R34 7
      874 GETTABLEKS                       R34 R34 K8 ["createElement"]
      876 LOADK                            R35 K32 ["TextLabel"]
      877 NEWTABLE                         R36 8 0
      879 GETTABLEKS                       R37 R14 K89 ["Description"]
      881 SETTABLEKS                       R37 R36 K37 ["Text"]
      883 LOADN                            R37 12
      884 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      886 LOADB                            R37 1
      887 SETTABLEKS                       R37 R36 K115 ["TextWrapped"]
      889 GETIMPORT                        R37 K121 [Enum.TextXAlignment.Left]
      891 SETTABLEKS                       R37 R36 K119 ["TextXAlignment"]
      893 MOVE                             R37 R2
      894 CALL                             R37 0 1
      895 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      897 GETUPVAL                         R37 7
      898 GETTABLEKS                       R37 R37 K22 ["Tag"]
      900 LOADK                            R38 K139 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      901 SETTABLE                         R38 R36 R37
      902 CALL                             R34 2 1
      903 JUMP                             ; [+1]
      904 LOADNIL                          R34
      905 SETTABLEKS                       R34 R33 K89 ["Description"]
      907 GETTABLEKS                       R35 R14 K90 ["CreatorName"]
      909 JUMPIFNOT                        R35 ; [+34]
      910 GETTABLEKS                       R35 R0 K141 ["IsCreatorNameVisible"]
      912 JUMPIFNOT                        R35 ; [+31]
      913 GETUPVAL                         R34 7
      914 GETTABLEKS                       R34 R34 K8 ["createElement"]
      916 LOADK                            R35 K32 ["TextLabel"]
      917 NEWTABLE                         R36 8 0
      919 GETTABLEKS                       R37 R14 K90 ["CreatorName"]
      921 SETTABLEKS                       R37 R36 K37 ["Text"]
      923 LOADN                            R37 12
      924 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      926 LOADB                            R37 1
      927 SETTABLEKS                       R37 R36 K115 ["TextWrapped"]
      929 GETIMPORT                        R37 K121 [Enum.TextXAlignment.Left]
      931 SETTABLEKS                       R37 R36 K119 ["TextXAlignment"]
      933 MOVE                             R37 R2
      934 CALL                             R37 0 1
      935 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      937 GETUPVAL                         R37 7
      938 GETTABLEKS                       R37 R37 K22 ["Tag"]
      940 LOADK                            R38 K139 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      941 SETTABLE                         R38 R36 R37
      942 CALL                             R34 2 1
      943 JUMP                             ; [+1]
      944 LOADNIL                          R34
      945 SETTABLEKS                       R34 R33 K90 ["CreatorName"]
      947 GETUPVAL                         R35 11
      948 JUMPIFNOT                        R35 ; [+48]
      949 GETTABLEKS                       R35 R14 K91 ["Categories"]
      951 JUMPIFNOT                        R35 ; [+45]
      952 GETTABLEKS                       R35 R0 K142 ["IsCategoriesVisible"]
      954 JUMPIFNOT                        R35 ; [+42]
      955 GETUPVAL                         R34 7
      956 GETTABLEKS                       R34 R34 K8 ["createElement"]
      958 LOADK                            R35 K32 ["TextLabel"]
      959 NEWTABLE                         R36 8 0
      961 LOADK                            R38 K143 ["<i>"]
      962 GETIMPORT                        R41 K145 [table.concat]
      964 GETTABLEKS                       R42 R14 K91 ["Categories"]
      966 LOADK                            R43 K146 [", "]
      967 CALL                             R41 2 1
      968 MOVE                             R39 R41
      969 LOADK                            R40 K147 ["</i>"]
      970 CONCAT                           R37 R38 R40
      971 SETTABLEKS                       R37 R36 K37 ["Text"]
      973 LOADN                            R37 12
      974 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      976 LOADB                            R37 1
      977 SETTABLEKS                       R37 R36 K115 ["TextWrapped"]
      979 LOADB                            R37 1
      980 SETTABLEKS                       R37 R36 K148 ["RichText"]
      982 GETIMPORT                        R37 K121 [Enum.TextXAlignment.Left]
      984 SETTABLEKS                       R37 R36 K119 ["TextXAlignment"]
      986 MOVE                             R37 R2
      987 CALL                             R37 0 1
      988 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      990 GETUPVAL                         R37 7
      991 GETTABLEKS                       R37 R37 K22 ["Tag"]
      993 LOADK                            R38 K139 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      994 SETTABLE                         R38 R36 R37
      995 CALL                             R34 2 1
      996 JUMP                             ; [+1]
      997 LOADNIL                          R34
      998 SETTABLEKS                       R34 R33 K91 ["Categories"]
     1000 CALL                             R30 3 1
     1001 SETTABLEKS                       R30 R29 K80 ["Options"]
     1003 GETTABLEKS                       R31 R0 K149 ["IsDropdownMenuVisible"]
     1005 JUMPIFNOT                        R31 ; [+72]
     1006 LENGTH                           R31 R13
     1007 LOADN                            R32 0
     1008 JUMPIFLT                         R32 R31 ; [+3]
     1010 GETUPVAL                         R31 21
     1011 JUMPIF                           R31 ; [+66]
     1012 GETUPVAL                         R30 7
     1013 GETTABLEKS                       R30 R30 K8 ["createElement"]
     1015 LOADK                            R31 K150 ["ImageButton"]
     1016 NEWTABLE                         R32 16 0
     1018 GETIMPORT                        R33 K21 [UDim2.new]
     1020 LOADN                            R34 1
     1021 LOADN                            R35 224
     1022 LOADN                            R36 0
     1023 LOADN                            R37 0
     1024 CALL                             R33 4 1
     1025 SETTABLEKS                       R33 R32 K11 ["Position"]
     1027 LOADB                            R33 0
     1028 SETTABLEKS                       R33 R32 K151 ["Selectable"]
     1030 GETUPVAL                         R33 7
     1031 GETTABLEKS                       R33 R33 K69 ["Event"]
     1033 GETTABLEKS                       R33 R33 K70 ["Activated"]
     1035 NEWCLOSURE                       R34 P1
     1036 CAPTURE                          VAL R6
     1037 SETTABLE                         R34 R32 R33
     1038 GETUPVAL                         R33 7
     1039 GETTABLEKS                       R33 R33 K69 ["Event"]
     1041 GETTABLEKS                       R33 R33 K71 ["MouseEnter"]
     1043 SETTABLE                         R3 R32 R33
     1044 GETUPVAL                         R33 7
     1045 GETTABLEKS                       R33 R33 K69 ["Event"]
     1047 GETTABLEKS                       R33 R33 K72 ["MouseLeave"]
     1049 SETTABLE                         R4 R32 R33
     1050 GETUPVAL                         R33 7
     1051 GETTABLEKS                       R33 R33 K152 ["Change"]
     1053 GETTABLEKS                       R33 R33 K153 ["AbsolutePosition"]
     1055 NEWCLOSURE                       R34 P2
     1056 CAPTURE                          VAL R8
     1057 SETTABLE                         R34 R32 R33
     1058 GETUPVAL                         R34 21
     1059 JUMPIFNOT                        R34 ; [+2]
     1060 MOVE                             R33 R11
     1061 JUMP                             ; [+1]
     1062 LOADNIL                          R33
     1063 SETTABLEKS                       R33 R32 K154 ["ref"]
     1065 MOVE                             R33 R2
     1066 CALL                             R33 0 1
     1067 SETTABLEKS                       R33 R32 K46 ["LayoutOrder"]
     1069 GETUPVAL                         R33 7
     1070 GETTABLEKS                       R33 R33 K22 ["Tag"]
     1072 LOADK                            R34 K155 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
     1073 SETTABLE                         R34 R32 R33
     1074 NEWTABLE                         R33 0 0
     1076 CALL                             R30 3 1
     1077 JUMP                             ; [+1]
     1078 LOADNIL                          R30
     1079 SETTABLEKS                       R30 R29 K81 ["Kebab"]
     1081 JUMPIFNOT                        R5 ; [+120]
     1082 GETUPVAL                         R31 21
     1083 JUMPIFNOT                        R31 ; [+21]
     1084 GETUPVAL                         R30 7
     1085 GETTABLEKS                       R30 R30 K8 ["createElement"]
     1087 GETUPVAL                         R31 22
     1088 DUPTABLE                         R32 K161 [{"isOpen", "actions", "onClose", "onItemActivated", "anchorRef"}]
     1089 SETTABLEKS                       R5 R32 K156 ["isOpen"]
     1091 SETTABLEKS                       R13 R32 K157 ["actions"]
     1093 NEWCLOSURE                       R33 P3
     1094 CAPTURE                          VAL R6
     1095 SETTABLEKS                       R33 R32 K158 ["onClose"]
     1097 NEWCLOSURE                       R33 P4
     1098 CAPTURE                          VAL R6
     1099 SETTABLEKS                       R33 R32 K159 ["onItemActivated"]
     1101 SETTABLEKS                       R11 R32 K160 ["anchorRef"]
     1103 CALL                             R30 2 1
     1104 JUMP                             ; [+98]
     1105 GETUPVAL                         R30 7
     1106 GETTABLEKS                       R30 R30 K8 ["createElement"]
     1108 GETUPVAL                         R31 23
     1109 NEWTABLE                         R32 2 0
     1111 NEWCLOSURE                       R33 P5
     1112 CAPTURE                          VAL R6
     1113 SETTABLEKS                       R33 R32 K162 ["OnFocusLost"]
     1115 GETUPVAL                         R33 7
     1116 GETTABLEKS                       R33 R33 K22 ["Tag"]
     1118 LOADK                            R34 K163 ["X-Fill X-Transparent"]
     1119 SETTABLE                         R34 R32 R33
     1120 GETUPVAL                         R33 7
     1121 GETTABLEKS                       R33 R33 K8 ["createElement"]
     1123 GETUPVAL                         R34 22
     1124 NEWTABLE                         R35 8 0
     1126 GETUPVAL                         R37 24
     1127 JUMPIFNOT                        R37 ; [+11]
     1128 GETIMPORT                        R36 K21 [UDim2.new]
     1130 LOADN                            R37 0
     1131 GETTABLEKS                       R39 R7 K165 ["X"]
     1133 ADDK                             R38 R39 K164 [32]
     1134 LOADN                            R39 0
     1135 GETTABLEKS                       R40 R7 K112 ["Y"]
     1137 CALL                             R36 4 1
     1138 JUMP                             ; [+16]
     1139 GETIMPORT                        R36 K21 [UDim2.new]
     1141 LOADN                            R37 0
     1142 GETTABLEKS                       R40 R7 K165 ["X"]
     1144 GETTABLEKS                       R41 R9 K165 ["X"]
     1146 SUB                              R39 R40 R41
     1147 ADDK                             R38 R39 K164 [32]
     1148 LOADN                            R39 0
     1149 GETTABLEKS                       R41 R7 K112 ["Y"]
     1151 GETTABLEKS                       R42 R9 K112 ["Y"]
     1153 SUB                              R40 R41 R42
     1154 CALL                             R36 4 1
     1155 SETTABLEKS                       R36 R35 K11 ["Position"]
     1157 GETUPVAL                         R37 24
     1158 JUMPIFNOT                        R37 ; [+2]
     1159 NOT                              R36 R5
     1160 JUMP                             ; [+13]
     1161 NOT                              R36 R5
     1162 JUMPIF                           R36 ; [+11]
     1163 LOADB                            R36 1
     1164 GETTABLEKS                       R37 R9 K165 ["X"]
     1166 JUMPIFEQKN                       R37 K166 [0] ; [+7]
     1168 GETTABLEKS                       R37 R9 K112 ["Y"]
     1170 JUMPIFEQKN                       R37 K166 [0] ; [+2]
     1172 LOADB                            R36 0 +1
     1173 LOADB                            R36 1
     1174 SETTABLEKS                       R36 R35 K167 ["Hide"]
     1176 GETTABLEKS                       R36 R0 K168 ["KebabMenu"]
     1178 SETTABLEKS                       R36 R35 K168 ["KebabMenu"]
     1180 SETTABLEKS                       R14 R35 K6 ["Cell"]
     1182 NEWCLOSURE                       R36 P6
     1183 CAPTURE                          VAL R6
     1184 SETTABLEKS                       R36 R35 K169 ["OnItemActivated"]
     1186 NEWCLOSURE                       R36 P7
     1187 CAPTURE                          VAL R10
     1188 SETTABLEKS                       R36 R35 K170 ["MenuContainerSizeChanged"]
     1190 GETUPVAL                         R36 7
     1191 GETTABLEKS                       R36 R36 K22 ["Tag"]
     1193 GETUPVAL                         R38 24
     1194 JUMPIFNOT                        R38 ; [+2]
     1195 LOADK                            R37 K171 ["StartPage-Anchor-Bottom-Right"]
     1196 JUMP                             ; [+1]
     1197 LOADNIL                          R37
     1198 SETTABLE                         R37 R35 R36
     1199 CALL                             R33 2 -1
     1200 CALL                             R30 -1 1
     1201 JUMP                             ; [+1]
     1202 LOADNIL                          R30
     1203 SETTABLEKS                       R30 R29 K82 ["Focus"]
     1205 CALL                             R26 3 1
     1206 SETTABLEKS                       R26 R25 K77 ["Body"]
     1208 CALL                             R22 3 1
     1209 SETTABLEKS                       R22 R21 K74 ["Child"]
     1211 CALL                             R18 3 -1
     1212 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagLuaStartPageTutorialInfoTile"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R3 R0 K6 ["Src"]
       21 GETTABLEKS                       R3 R3 K7 ["SharedFlags"]
       23 GETTABLEKS                       R3 R3 K9 ["getFFlagLuaStartPageFoundationPill"]
       25 CALL                             R2 1 1
       26 CALL                             R2 0 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["SharedFlags"]
       33 GETTABLEKS                       R4 R4 K10 ["getFFlagLuaStartPageCoreContentStatus"]
       35 CALL                             R3 1 1
       36 CALL                             R3 0 1
       37 GETIMPORT                        R4 K5 [require]
       39 GETTABLEKS                       R5 R0 K6 ["Src"]
       41 GETTABLEKS                       R5 R5 K7 ["SharedFlags"]
       43 GETTABLEKS                       R5 R5 K11 ["getFFlagLuaStartPageCollaborationRestriction"]
       45 CALL                             R4 1 1
       46 CALL                             R4 0 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K6 ["Src"]
       51 GETTABLEKS                       R6 R6 K7 ["SharedFlags"]
       53 GETTABLEKS                       R6 R6 K12 ["getFFlagLuaStartPageAudiencesReplacement"]
       55 CALL                             R5 1 1
       56 CALL                             R5 0 1
       57 GETIMPORT                        R6 K5 [require]
       59 GETTABLEKS                       R7 R0 K13 ["Packages"]
       61 GETTABLEKS                       R7 R7 K14 ["React"]
       63 CALL                             R6 1 1
       64 GETTABLEKS                       R7 R6 K15 ["useState"]
       66 GETTABLEKS                       R8 R6 K16 ["useRef"]
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K13 ["Packages"]
       72 GETTABLEKS                       R10 R10 K17 ["Framework"]
       74 CALL                             R9 1 1
       75 GETTABLEKS                       R10 R9 K18 ["Util"]
       77 GETTABLEKS                       R10 R10 K19 ["counter"]
       79 GETTABLEKS                       R11 R9 K20 ["ContextServices"]
       81 GETTABLEKS                       R11 R11 K21 ["Localization"]
       83 GETTABLEKS                       R12 R9 K22 ["UI"]
       85 GETTABLEKS                       R13 R12 K23 ["Image"]
       87 GETTABLEKS                       R14 R12 K24 ["CaptureFocus"]
       89 GETIMPORT                        R15 K5 [require]
       91 GETTABLEKS                       R16 R0 K6 ["Src"]
       93 GETTABLEKS                       R16 R16 K25 ["Types"]
       95 CALL                             R15 1 1
       96 GETIMPORT                        R16 K5 [require]
       98 GETTABLEKS                       R17 R0 K6 ["Src"]
      100 GETTABLEKS                       R17 R17 K26 ["Components"]
      102 GETTABLEKS                       R17 R17 K27 ["Shimmer"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K5 [require]
      107 GETTABLEKS                       R18 R0 K6 ["Src"]
      109 GETTABLEKS                       R18 R18 K7 ["SharedFlags"]
      111 GETTABLEKS                       R18 R18 K28 ["getFFlagLuaStartPageTableContextMenu"]
      113 CALL                             R17 1 1
      114 CALL                             R17 0 1
      115 JUMPIFNOT                        R17 ; [+12]
      116 GETIMPORT                        R18 K5 [require]
      118 GETTABLEKS                       R19 R0 K6 ["Src"]
      120 GETTABLEKS                       R19 R19 K29 ["Foundation"]
      122 GETTABLEKS                       R19 R19 K26 ["Components"]
      124 GETTABLEKS                       R19 R19 K30 ["ContextMenu"]
      126 CALL                             R18 1 1
      127 JUMP                             ; [+9]
      128 GETIMPORT                        R18 K5 [require]
      130 GETTABLEKS                       R19 R0 K6 ["Src"]
      132 GETTABLEKS                       R19 R19 K26 ["Components"]
      134 GETTABLEKS                       R19 R19 K30 ["ContextMenu"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K6 ["Src"]
      141 GETTABLEKS                       R20 R20 K26 ["Components"]
      143 GETTABLEKS                       R20 R20 K31 ["Pill"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K6 ["Src"]
      150 GETTABLEKS                       R21 R21 K32 ["Hooks"]
      152 GETTABLEKS                       R21 R21 K33 ["useCursor"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K5 [require]
      157 GETTABLEKS                       R22 R0 K6 ["Src"]
      159 GETTABLEKS                       R22 R22 K34 ["Contexts"]
      161 GETTABLEKS                       R22 R22 K35 ["ContextMenuActions"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K5 [require]
      166 GETTABLEKS                       R23 R0 K6 ["Src"]
      168 GETTABLEKS                       R23 R23 K32 ["Hooks"]
      170 GETTABLEKS                       R23 R23 K36 ["useCellContextActions"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K5 [require]
      175 GETTABLEKS                       R24 R0 K6 ["Src"]
      177 GETTABLEKS                       R24 R24 K18 ["Util"]
      179 GETTABLEKS                       R24 R24 K37 ["formatISOTimestamp"]
      181 CALL                             R23 1 1
      182 GETIMPORT                        R24 K5 [require]
      184 GETTABLEKS                       R25 R0 K6 ["Src"]
      186 GETTABLEKS                       R25 R25 K18 ["Util"]
      188 GETTABLEKS                       R25 R25 K29 ["Foundation"]
      190 CALL                             R24 1 1
      191 GETTABLEKS                       R25 R24 K38 ["Badge"]
      193 GETTABLEKS                       R26 R24 K39 ["Enums"]
      195 GETTABLEKS                       R26 R26 K40 ["BadgeVariant"]
      197 GETIMPORT                        R27 K5 [require]
      199 GETTABLEKS                       R28 R0 K6 ["Src"]
      201 GETTABLEKS                       R28 R28 K26 ["Components"]
      203 GETTABLEKS                       R28 R28 K41 ["PrivacyStatusBadge"]
      205 CALL                             R27 1 1
      206 GETIMPORT                        R28 K5 [require]
      208 GETTABLEKS                       R29 R0 K6 ["Src"]
      210 GETTABLEKS                       R29 R29 K26 ["Components"]
      212 GETTABLEKS                       R29 R29 K42 ["AgeRestrictedCollaborationBadge"]
      214 CALL                             R28 1 1
      215 GETIMPORT                        R29 K44 [game]
      217 LOADK                            R31 K45 ["DontLayoutInvisibleGuiObjects"]
      218 NAMECALL                         R29 R29 K46 ["GetEngineFeature"]
      220 CALL                             R29 2 1
      221 DUPCLOSURE                       R30 K47 [PROTO_8]
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R10
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R7
      226 CAPTURE                          VAL R8
      227 CAPTURE                          VAL R21
      228 CAPTURE                          VAL R22
      229 CAPTURE                          VAL R6
      230 CAPTURE                          VAL R16
      231 CAPTURE                          VAL R23
      232 CAPTURE                          VAL R13
      233 CAPTURE                          VAL R1
      234 CAPTURE                          VAL R2
      235 CAPTURE                          VAL R25
      236 CAPTURE                          VAL R26
      237 CAPTURE                          VAL R19
      238 CAPTURE                          VAL R5
      239 CAPTURE                          VAL R3
      240 CAPTURE                          VAL R27
      241 CAPTURE                          VAL R4
      242 CAPTURE                          VAL R28
      243 CAPTURE                          VAL R17
      244 CAPTURE                          VAL R18
      245 CAPTURE                          VAL R14
      246 CAPTURE                          VAL R29
      247 RETURN                           R30 1
