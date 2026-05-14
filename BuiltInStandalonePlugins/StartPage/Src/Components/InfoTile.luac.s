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
      585 JUMPIFNOT                        R35 ; [+113]
      586 GETTABLEKS                       R35 R14 K94 ["PrivacyType"]
      588 JUMPIFNOT                        R35 ; [+110]
      589 GETUPVAL                         R34 7
      590 GETTABLEKS                       R34 R34 K8 ["createElement"]
      592 LOADK                            R35 K19 ["Frame"]
      593 NEWTABLE                         R36 2 0
      595 MOVE                             R37 R2
      596 CALL                             R37 0 1
      597 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      599 GETUPVAL                         R37 7
      600 GETTABLEKS                       R37 R37 K22 ["Tag"]
      602 LOADK                            R38 K95 ["X-RowS X-Fit X-Transparent"]
      603 SETTABLE                         R38 R36 R37
      604 GETUPVAL                         R38 16
      605 JUMPIFNOT                        R38 ; [+39]
      606 GETUPVAL                         R37 7
      607 GETTABLEKS                       R37 R37 K8 ["createElement"]
      609 GETUPVAL                         R38 17
      610 DUPTABLE                         R39 K103 [{"UniverseId", "PrivacyType", "ContentMaturity", "IsFriendsOnly", "CreatorType", "CoreContentSelectStatus", "CoreContentReasons", "IsBeta"}]
      611 GETTABLEKS                       R40 R14 K104 ["Id"]
      613 SETTABLEKS                       R40 R39 K96 ["UniverseId"]
      615 GETTABLEKS                       R40 R14 K94 ["PrivacyType"]
      617 SETTABLEKS                       R40 R39 K94 ["PrivacyType"]
      619 GETTABLEKS                       R40 R14 K97 ["ContentMaturity"]
      621 SETTABLEKS                       R40 R39 K97 ["ContentMaturity"]
      623 GETTABLEKS                       R40 R14 K98 ["IsFriendsOnly"]
      625 SETTABLEKS                       R40 R39 K98 ["IsFriendsOnly"]
      627 GETTABLEKS                       R40 R14 K99 ["CreatorType"]
      629 SETTABLEKS                       R40 R39 K99 ["CreatorType"]
      631 GETTABLEKS                       R40 R14 K100 ["CoreContentSelectStatus"]
      633 SETTABLEKS                       R40 R39 K100 ["CoreContentSelectStatus"]
      635 GETTABLEKS                       R40 R14 K101 ["CoreContentReasons"]
      637 SETTABLEKS                       R40 R39 K101 ["CoreContentReasons"]
      639 GETTABLEKS                       R40 R14 K102 ["IsBeta"]
      641 SETTABLEKS                       R40 R39 K102 ["IsBeta"]
      643 CALL                             R37 2 1
      644 JUMP                             ; [+52]
      645 GETUPVAL                         R38 12
      646 JUMPIFNOT                        R38 ; [+25]
      647 GETUPVAL                         R37 7
      648 GETTABLEKS                       R37 R37 K8 ["createElement"]
      650 GETUPVAL                         R38 13
      651 DUPTABLE                         R39 K56 [{"text", "variant"}]
      652 LOADK                            R42 K105 ["Plugin"]
      653 LOADK                            R44 K106 ["PrivacyType.%*"]
      654 GETTABLEKS                       R46 R14 K94 ["PrivacyType"]
      656 NAMECALL                         R44 R44 K107 ["format"]
      658 CALL                             R44 2 1
      659 MOVE                             R43 R44
      660 NAMECALL                         R40 R1 K108 ["getText"]
      662 CALL                             R40 3 1
      663 SETTABLEKS                       R40 R39 K54 ["text"]
      665 GETUPVAL                         R40 14
      666 GETTABLEKS                       R40 R40 K57 ["Neutral"]
      668 SETTABLEKS                       R40 R39 K55 ["variant"]
      670 CALL                             R37 2 1
      671 JUMP                             ; [+25]
      672 GETUPVAL                         R37 7
      673 GETTABLEKS                       R37 R37 K8 ["createElement"]
      675 GETUPVAL                         R38 15
      676 NEWTABLE                         R39 2 0
      678 LOADK                            R42 K105 ["Plugin"]
      679 LOADK                            R44 K106 ["PrivacyType.%*"]
      680 GETTABLEKS                       R46 R14 K94 ["PrivacyType"]
      682 NAMECALL                         R44 R44 K107 ["format"]
      684 CALL                             R44 2 1
      685 MOVE                             R43 R44
      686 NAMECALL                         R40 R1 K108 ["getText"]
      688 CALL                             R40 3 1
      689 SETTABLEKS                       R40 R39 K37 ["Text"]
      691 GETUPVAL                         R40 7
      692 GETTABLEKS                       R40 R40 K22 ["Tag"]
      694 LOADK                            R41 K58 ["X-Fit"]
      695 SETTABLE                         R41 R39 R40
      696 CALL                             R37 2 1
      697 CALL                             R34 3 1
      698 JUMP                             ; [+1]
      699 LOADNIL                          R34
      700 SETTABLEKS                       R34 R33 K85 ["Privacy"]
      702 GETUPVAL                         R34 7
      703 GETTABLEKS                       R34 R34 K8 ["createElement"]
      705 LOADK                            R35 K32 ["TextLabel"]
      706 NEWTABLE                         R36 8 0
      708 GETIMPORT                        R37 K111 [Enum.AutomaticSize.Y]
      710 SETTABLEKS                       R37 R36 K109 ["AutomaticSize"]
      712 GETTABLEKS                       R37 R14 K112 ["Name"]
      714 SETTABLEKS                       R37 R36 K37 ["Text"]
      716 LOADB                            R37 1
      717 SETTABLEKS                       R37 R36 K113 ["TextWrapped"]
      719 GETIMPORT                        R37 K116 [Enum.TextTruncate.AtEnd]
      721 SETTABLEKS                       R37 R36 K114 ["TextTruncate"]
      723 GETIMPORT                        R37 K119 [Enum.TextXAlignment.Left]
      725 SETTABLEKS                       R37 R36 K117 ["TextXAlignment"]
      727 GETIMPORT                        R37 K21 [UDim2.new]
      729 LOADN                            R38 1
      730 LOADN                            R39 226
      731 LOADN                            R40 0
      732 LOADN                            R41 0
      733 CALL                             R37 4 1
      734 SETTABLEKS                       R37 R36 K10 ["Size"]
      736 MOVE                             R37 R2
      737 CALL                             R37 0 1
      738 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      740 GETUPVAL                         R37 7
      741 GETTABLEKS                       R37 R37 K22 ["Tag"]
      743 LOADK                            R38 K120 ["StartPage-TextColor StartPage-TextSize StartPage-FontBold X-Transparent"]
      744 SETTABLE                         R38 R36 R37
      745 DUPTABLE                         R37 K67 [{"Size"}]
      746 GETUPVAL                         R38 7
      747 GETTABLEKS                       R38 R38 K8 ["createElement"]
      749 LOADK                            R39 K121 ["UISizeConstraint"]
      750 DUPTABLE                         R40 K123 [{"MaxSize"}]
      751 GETIMPORT                        R41 K4 [Vector2.new]
      753 LOADK                            R42 K124 [∞]
      754 LOADN                            R43 50
      755 CALL                             R41 2 1
      756 SETTABLEKS                       R41 R40 K122 ["MaxSize"]
      758 CALL                             R38 2 1
      759 SETTABLEKS                       R38 R37 K10 ["Size"]
      761 CALL                             R34 3 1
      762 SETTABLEKS                       R34 R33 K86 ["Title"]
      764 GETUPVAL                         R35 18
      765 JUMPIFNOT                        R35 ; [+36]
      766 GETTABLEKS                       R35 R14 K125 ["IsGame"]
      768 JUMPIFNOT                        R35 ; [+33]
      769 GETTABLEKS                       R35 R14 K126 ["IsAgeRestrictedCollaboration"]
      771 JUMPIFNOT                        R35 ; [+30]
      772 GETUPVAL                         R34 7
      773 GETTABLEKS                       R34 R34 K8 ["createElement"]
      775 LOADK                            R35 K19 ["Frame"]
      776 NEWTABLE                         R36 2 0
      778 MOVE                             R37 R2
      779 CALL                             R37 0 1
      780 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      782 GETUPVAL                         R37 7
      783 GETTABLEKS                       R37 R37 K22 ["Tag"]
      785 LOADK                            R38 K127 ["X-Fit X-Transparent"]
      786 SETTABLE                         R38 R36 R37
      787 DUPTABLE                         R37 K129 [{"Badge"}]
      788 GETUPVAL                         R38 7
      789 GETTABLEKS                       R38 R38 K8 ["createElement"]
      791 GETUPVAL                         R39 19
      792 DUPTABLE                         R40 K130 [{"UniverseId"}]
      793 GETTABLEKS                       R41 R14 K104 ["Id"]
      795 SETTABLEKS                       R41 R40 K96 ["UniverseId"]
      797 CALL                             R38 2 1
      798 SETTABLEKS                       R38 R37 K128 ["Badge"]
      800 CALL                             R34 3 1
      801 JUMP                             ; [+1]
      802 LOADNIL                          R34
      803 SETTABLEKS                       R34 R33 K87 ["CollaborationRestriction"]
      805 JUMPIFNOT                        R15 ; [+37]
      806 GETTABLEKS                       R35 R0 K131 ["IsDateModifiedVisible"]
      808 JUMPIFNOT                        R35 ; [+34]
      809 GETUPVAL                         R34 7
      810 GETTABLEKS                       R34 R34 K8 ["createElement"]
      812 LOADK                            R35 K32 ["TextLabel"]
      813 NEWTABLE                         R36 8 0
      815 LOADK                            R39 K105 ["Plugin"]
      816 LOADK                            R40 K132 ["LastModified"]
      817 DUPTABLE                         R41 K134 [{"lastModified"}]
      818 SETTABLEKS                       R15 R41 K133 ["lastModified"]
      820 NAMECALL                         R37 R1 K108 ["getText"]
      822 CALL                             R37 4 1
      823 SETTABLEKS                       R37 R36 K37 ["Text"]
      825 LOADN                            R37 12
      826 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      828 GETIMPORT                        R37 K119 [Enum.TextXAlignment.Left]
      830 SETTABLEKS                       R37 R36 K117 ["TextXAlignment"]
      832 MOVE                             R37 R2
      833 CALL                             R37 0 1
      834 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      836 GETUPVAL                         R37 7
      837 GETTABLEKS                       R37 R37 K22 ["Tag"]
      839 LOADK                            R38 K135 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      840 SETTABLE                         R38 R36 R37
      841 CALL                             R34 2 1
      842 JUMP                             ; [+1]
      843 LOADNIL                          R34
      844 SETTABLEKS                       R34 R33 K88 ["FormattedDate"]
      846 GETTABLEKS                       R35 R14 K89 ["Description"]
      848 JUMPIFNOT                        R35 ; [+34]
      849 GETTABLEKS                       R35 R0 K136 ["IsDescriptionVisible"]
      851 JUMPIFNOT                        R35 ; [+31]
      852 GETUPVAL                         R34 7
      853 GETTABLEKS                       R34 R34 K8 ["createElement"]
      855 LOADK                            R35 K32 ["TextLabel"]
      856 NEWTABLE                         R36 8 0
      858 GETTABLEKS                       R37 R14 K89 ["Description"]
      860 SETTABLEKS                       R37 R36 K37 ["Text"]
      862 LOADN                            R37 12
      863 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      865 LOADB                            R37 1
      866 SETTABLEKS                       R37 R36 K113 ["TextWrapped"]
      868 GETIMPORT                        R37 K119 [Enum.TextXAlignment.Left]
      870 SETTABLEKS                       R37 R36 K117 ["TextXAlignment"]
      872 MOVE                             R37 R2
      873 CALL                             R37 0 1
      874 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      876 GETUPVAL                         R37 7
      877 GETTABLEKS                       R37 R37 K22 ["Tag"]
      879 LOADK                            R38 K135 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      880 SETTABLE                         R38 R36 R37
      881 CALL                             R34 2 1
      882 JUMP                             ; [+1]
      883 LOADNIL                          R34
      884 SETTABLEKS                       R34 R33 K89 ["Description"]
      886 GETTABLEKS                       R35 R14 K90 ["CreatorName"]
      888 JUMPIFNOT                        R35 ; [+34]
      889 GETTABLEKS                       R35 R0 K137 ["IsCreatorNameVisible"]
      891 JUMPIFNOT                        R35 ; [+31]
      892 GETUPVAL                         R34 7
      893 GETTABLEKS                       R34 R34 K8 ["createElement"]
      895 LOADK                            R35 K32 ["TextLabel"]
      896 NEWTABLE                         R36 8 0
      898 GETTABLEKS                       R37 R14 K90 ["CreatorName"]
      900 SETTABLEKS                       R37 R36 K37 ["Text"]
      902 LOADN                            R37 12
      903 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      905 LOADB                            R37 1
      906 SETTABLEKS                       R37 R36 K113 ["TextWrapped"]
      908 GETIMPORT                        R37 K119 [Enum.TextXAlignment.Left]
      910 SETTABLEKS                       R37 R36 K117 ["TextXAlignment"]
      912 MOVE                             R37 R2
      913 CALL                             R37 0 1
      914 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      916 GETUPVAL                         R37 7
      917 GETTABLEKS                       R37 R37 K22 ["Tag"]
      919 LOADK                            R38 K135 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      920 SETTABLE                         R38 R36 R37
      921 CALL                             R34 2 1
      922 JUMP                             ; [+1]
      923 LOADNIL                          R34
      924 SETTABLEKS                       R34 R33 K90 ["CreatorName"]
      926 GETUPVAL                         R35 11
      927 JUMPIFNOT                        R35 ; [+48]
      928 GETTABLEKS                       R35 R14 K91 ["Categories"]
      930 JUMPIFNOT                        R35 ; [+45]
      931 GETTABLEKS                       R35 R0 K138 ["IsCategoriesVisible"]
      933 JUMPIFNOT                        R35 ; [+42]
      934 GETUPVAL                         R34 7
      935 GETTABLEKS                       R34 R34 K8 ["createElement"]
      937 LOADK                            R35 K32 ["TextLabel"]
      938 NEWTABLE                         R36 8 0
      940 LOADK                            R38 K139 ["<i>"]
      941 GETIMPORT                        R41 K141 [table.concat]
      943 GETTABLEKS                       R42 R14 K91 ["Categories"]
      945 LOADK                            R43 K142 [", "]
      946 CALL                             R41 2 1
      947 MOVE                             R39 R41
      948 LOADK                            R40 K143 ["</i>"]
      949 CONCAT                           R37 R38 R40
      950 SETTABLEKS                       R37 R36 K37 ["Text"]
      952 LOADN                            R37 12
      953 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      955 LOADB                            R37 1
      956 SETTABLEKS                       R37 R36 K113 ["TextWrapped"]
      958 LOADB                            R37 1
      959 SETTABLEKS                       R37 R36 K144 ["RichText"]
      961 GETIMPORT                        R37 K119 [Enum.TextXAlignment.Left]
      963 SETTABLEKS                       R37 R36 K117 ["TextXAlignment"]
      965 MOVE                             R37 R2
      966 CALL                             R37 0 1
      967 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      969 GETUPVAL                         R37 7
      970 GETTABLEKS                       R37 R37 K22 ["Tag"]
      972 LOADK                            R38 K135 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      973 SETTABLE                         R38 R36 R37
      974 CALL                             R34 2 1
      975 JUMP                             ; [+1]
      976 LOADNIL                          R34
      977 SETTABLEKS                       R34 R33 K91 ["Categories"]
      979 CALL                             R30 3 1
      980 SETTABLEKS                       R30 R29 K80 ["Options"]
      982 GETTABLEKS                       R31 R0 K145 ["IsDropdownMenuVisible"]
      984 JUMPIFNOT                        R31 ; [+72]
      985 LENGTH                           R31 R13
      986 LOADN                            R32 0
      987 JUMPIFLT                         R32 R31 ; [+3]
      989 GETUPVAL                         R31 20
      990 JUMPIF                           R31 ; [+66]
      991 GETUPVAL                         R30 7
      992 GETTABLEKS                       R30 R30 K8 ["createElement"]
      994 LOADK                            R31 K146 ["ImageButton"]
      995 NEWTABLE                         R32 16 0
      997 GETIMPORT                        R33 K21 [UDim2.new]
      999 LOADN                            R34 1
     1000 LOADN                            R35 224
     1001 LOADN                            R36 0
     1002 LOADN                            R37 0
     1003 CALL                             R33 4 1
     1004 SETTABLEKS                       R33 R32 K11 ["Position"]
     1006 LOADB                            R33 0
     1007 SETTABLEKS                       R33 R32 K147 ["Selectable"]
     1009 GETUPVAL                         R33 7
     1010 GETTABLEKS                       R33 R33 K69 ["Event"]
     1012 GETTABLEKS                       R33 R33 K70 ["Activated"]
     1014 NEWCLOSURE                       R34 P1
     1015 CAPTURE                          VAL R6
     1016 SETTABLE                         R34 R32 R33
     1017 GETUPVAL                         R33 7
     1018 GETTABLEKS                       R33 R33 K69 ["Event"]
     1020 GETTABLEKS                       R33 R33 K71 ["MouseEnter"]
     1022 SETTABLE                         R3 R32 R33
     1023 GETUPVAL                         R33 7
     1024 GETTABLEKS                       R33 R33 K69 ["Event"]
     1026 GETTABLEKS                       R33 R33 K72 ["MouseLeave"]
     1028 SETTABLE                         R4 R32 R33
     1029 GETUPVAL                         R33 7
     1030 GETTABLEKS                       R33 R33 K148 ["Change"]
     1032 GETTABLEKS                       R33 R33 K149 ["AbsolutePosition"]
     1034 NEWCLOSURE                       R34 P2
     1035 CAPTURE                          VAL R8
     1036 SETTABLE                         R34 R32 R33
     1037 GETUPVAL                         R34 20
     1038 JUMPIFNOT                        R34 ; [+2]
     1039 MOVE                             R33 R11
     1040 JUMP                             ; [+1]
     1041 LOADNIL                          R33
     1042 SETTABLEKS                       R33 R32 K150 ["ref"]
     1044 MOVE                             R33 R2
     1045 CALL                             R33 0 1
     1046 SETTABLEKS                       R33 R32 K46 ["LayoutOrder"]
     1048 GETUPVAL                         R33 7
     1049 GETTABLEKS                       R33 R33 K22 ["Tag"]
     1051 LOADK                            R34 K151 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
     1052 SETTABLE                         R34 R32 R33
     1053 NEWTABLE                         R33 0 0
     1055 CALL                             R30 3 1
     1056 JUMP                             ; [+1]
     1057 LOADNIL                          R30
     1058 SETTABLEKS                       R30 R29 K81 ["Kebab"]
     1060 JUMPIFNOT                        R5 ; [+120]
     1061 GETUPVAL                         R31 20
     1062 JUMPIFNOT                        R31 ; [+21]
     1063 GETUPVAL                         R30 7
     1064 GETTABLEKS                       R30 R30 K8 ["createElement"]
     1066 GETUPVAL                         R31 21
     1067 DUPTABLE                         R32 K157 [{"isOpen", "actions", "onClose", "onItemActivated", "anchorRef"}]
     1068 SETTABLEKS                       R5 R32 K152 ["isOpen"]
     1070 SETTABLEKS                       R13 R32 K153 ["actions"]
     1072 NEWCLOSURE                       R33 P3
     1073 CAPTURE                          VAL R6
     1074 SETTABLEKS                       R33 R32 K154 ["onClose"]
     1076 NEWCLOSURE                       R33 P4
     1077 CAPTURE                          VAL R6
     1078 SETTABLEKS                       R33 R32 K155 ["onItemActivated"]
     1080 SETTABLEKS                       R11 R32 K156 ["anchorRef"]
     1082 CALL                             R30 2 1
     1083 JUMP                             ; [+98]
     1084 GETUPVAL                         R30 7
     1085 GETTABLEKS                       R30 R30 K8 ["createElement"]
     1087 GETUPVAL                         R31 22
     1088 NEWTABLE                         R32 2 0
     1090 NEWCLOSURE                       R33 P5
     1091 CAPTURE                          VAL R6
     1092 SETTABLEKS                       R33 R32 K158 ["OnFocusLost"]
     1094 GETUPVAL                         R33 7
     1095 GETTABLEKS                       R33 R33 K22 ["Tag"]
     1097 LOADK                            R34 K159 ["X-Fill X-Transparent"]
     1098 SETTABLE                         R34 R32 R33
     1099 GETUPVAL                         R33 7
     1100 GETTABLEKS                       R33 R33 K8 ["createElement"]
     1102 GETUPVAL                         R34 21
     1103 NEWTABLE                         R35 8 0
     1105 GETUPVAL                         R37 23
     1106 JUMPIFNOT                        R37 ; [+11]
     1107 GETIMPORT                        R36 K21 [UDim2.new]
     1109 LOADN                            R37 0
     1110 GETTABLEKS                       R39 R7 K161 ["X"]
     1112 ADDK                             R38 R39 K160 [32]
     1113 LOADN                            R39 0
     1114 GETTABLEKS                       R40 R7 K110 ["Y"]
     1116 CALL                             R36 4 1
     1117 JUMP                             ; [+16]
     1118 GETIMPORT                        R36 K21 [UDim2.new]
     1120 LOADN                            R37 0
     1121 GETTABLEKS                       R40 R7 K161 ["X"]
     1123 GETTABLEKS                       R41 R9 K161 ["X"]
     1125 SUB                              R39 R40 R41
     1126 ADDK                             R38 R39 K160 [32]
     1127 LOADN                            R39 0
     1128 GETTABLEKS                       R41 R7 K110 ["Y"]
     1130 GETTABLEKS                       R42 R9 K110 ["Y"]
     1132 SUB                              R40 R41 R42
     1133 CALL                             R36 4 1
     1134 SETTABLEKS                       R36 R35 K11 ["Position"]
     1136 GETUPVAL                         R37 23
     1137 JUMPIFNOT                        R37 ; [+2]
     1138 NOT                              R36 R5
     1139 JUMP                             ; [+13]
     1140 NOT                              R36 R5
     1141 JUMPIF                           R36 ; [+11]
     1142 LOADB                            R36 1
     1143 GETTABLEKS                       R37 R9 K161 ["X"]
     1145 JUMPIFEQKN                       R37 K162 [0] ; [+7]
     1147 GETTABLEKS                       R37 R9 K110 ["Y"]
     1149 JUMPIFEQKN                       R37 K162 [0] ; [+2]
     1151 LOADB                            R36 0 +1
     1152 LOADB                            R36 1
     1153 SETTABLEKS                       R36 R35 K163 ["Hide"]
     1155 GETTABLEKS                       R36 R0 K164 ["KebabMenu"]
     1157 SETTABLEKS                       R36 R35 K164 ["KebabMenu"]
     1159 SETTABLEKS                       R14 R35 K6 ["Cell"]
     1161 NEWCLOSURE                       R36 P6
     1162 CAPTURE                          VAL R6
     1163 SETTABLEKS                       R36 R35 K165 ["OnItemActivated"]
     1165 NEWCLOSURE                       R36 P7
     1166 CAPTURE                          VAL R10
     1167 SETTABLEKS                       R36 R35 K166 ["MenuContainerSizeChanged"]
     1169 GETUPVAL                         R36 7
     1170 GETTABLEKS                       R36 R36 K22 ["Tag"]
     1172 GETUPVAL                         R38 23
     1173 JUMPIFNOT                        R38 ; [+2]
     1174 LOADK                            R37 K167 ["StartPage-Anchor-Bottom-Right"]
     1175 JUMP                             ; [+1]
     1176 LOADNIL                          R37
     1177 SETTABLE                         R37 R35 R36
     1178 CALL                             R33 2 -1
     1179 CALL                             R30 -1 1
     1180 JUMP                             ; [+1]
     1181 LOADNIL                          R30
     1182 SETTABLEKS                       R30 R29 K82 ["Focus"]
     1184 CALL                             R26 3 1
     1185 SETTABLEKS                       R26 R25 K77 ["Body"]
     1187 CALL                             R22 3 1
     1188 SETTABLEKS                       R22 R21 K74 ["Child"]
     1190 CALL                             R18 3 -1
     1191 RETURN                           R18 -1

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
       49 GETTABLEKS                       R6 R0 K12 ["Packages"]
       51 GETTABLEKS                       R6 R6 K13 ["React"]
       53 CALL                             R5 1 1
       54 GETTABLEKS                       R6 R5 K14 ["useState"]
       56 GETTABLEKS                       R7 R5 K15 ["useRef"]
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K12 ["Packages"]
       62 GETTABLEKS                       R9 R9 K16 ["Framework"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R8 K17 ["Util"]
       67 GETTABLEKS                       R9 R9 K18 ["counter"]
       69 GETTABLEKS                       R10 R8 K19 ["ContextServices"]
       71 GETTABLEKS                       R10 R10 K20 ["Localization"]
       73 GETTABLEKS                       R11 R8 K21 ["UI"]
       75 GETTABLEKS                       R12 R11 K22 ["Image"]
       77 GETTABLEKS                       R13 R11 K23 ["CaptureFocus"]
       79 GETIMPORT                        R14 K5 [require]
       81 GETTABLEKS                       R15 R0 K6 ["Src"]
       83 GETTABLEKS                       R15 R15 K24 ["Types"]
       85 CALL                             R14 1 1
       86 GETIMPORT                        R15 K5 [require]
       88 GETTABLEKS                       R16 R0 K6 ["Src"]
       90 GETTABLEKS                       R16 R16 K25 ["Components"]
       92 GETTABLEKS                       R16 R16 K26 ["Shimmer"]
       94 CALL                             R15 1 1
       95 GETIMPORT                        R16 K5 [require]
       97 GETTABLEKS                       R17 R0 K6 ["Src"]
       99 GETTABLEKS                       R17 R17 K7 ["SharedFlags"]
      101 GETTABLEKS                       R17 R17 K27 ["getFFlagLuaStartPageTableContextMenu"]
      103 CALL                             R16 1 1
      104 CALL                             R16 0 1
      105 JUMPIFNOT                        R16 ; [+12]
      106 GETIMPORT                        R17 K5 [require]
      108 GETTABLEKS                       R18 R0 K6 ["Src"]
      110 GETTABLEKS                       R18 R18 K28 ["Foundation"]
      112 GETTABLEKS                       R18 R18 K25 ["Components"]
      114 GETTABLEKS                       R18 R18 K29 ["ContextMenu"]
      116 CALL                             R17 1 1
      117 JUMP                             ; [+9]
      118 GETIMPORT                        R17 K5 [require]
      120 GETTABLEKS                       R18 R0 K6 ["Src"]
      122 GETTABLEKS                       R18 R18 K25 ["Components"]
      124 GETTABLEKS                       R18 R18 K29 ["ContextMenu"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K5 [require]
      129 GETTABLEKS                       R19 R0 K6 ["Src"]
      131 GETTABLEKS                       R19 R19 K25 ["Components"]
      133 GETTABLEKS                       R19 R19 K30 ["Pill"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K5 [require]
      138 GETTABLEKS                       R20 R0 K6 ["Src"]
      140 GETTABLEKS                       R20 R20 K31 ["Hooks"]
      142 GETTABLEKS                       R20 R20 K32 ["useCursor"]
      144 CALL                             R19 1 1
      145 GETIMPORT                        R20 K5 [require]
      147 GETTABLEKS                       R21 R0 K6 ["Src"]
      149 GETTABLEKS                       R21 R21 K33 ["Contexts"]
      151 GETTABLEKS                       R21 R21 K34 ["ContextMenuActions"]
      153 CALL                             R20 1 1
      154 GETIMPORT                        R21 K5 [require]
      156 GETTABLEKS                       R22 R0 K6 ["Src"]
      158 GETTABLEKS                       R22 R22 K31 ["Hooks"]
      160 GETTABLEKS                       R22 R22 K35 ["useCellContextActions"]
      162 CALL                             R21 1 1
      163 GETIMPORT                        R22 K5 [require]
      165 GETTABLEKS                       R23 R0 K6 ["Src"]
      167 GETTABLEKS                       R23 R23 K17 ["Util"]
      169 GETTABLEKS                       R23 R23 K36 ["formatISOTimestamp"]
      171 CALL                             R22 1 1
      172 GETIMPORT                        R23 K5 [require]
      174 GETTABLEKS                       R24 R0 K6 ["Src"]
      176 GETTABLEKS                       R24 R24 K17 ["Util"]
      178 GETTABLEKS                       R24 R24 K28 ["Foundation"]
      180 CALL                             R23 1 1
      181 GETTABLEKS                       R24 R23 K37 ["Badge"]
      183 GETTABLEKS                       R25 R23 K38 ["Enums"]
      185 GETTABLEKS                       R25 R25 K39 ["BadgeVariant"]
      187 GETIMPORT                        R26 K5 [require]
      189 GETTABLEKS                       R27 R0 K6 ["Src"]
      191 GETTABLEKS                       R27 R27 K25 ["Components"]
      193 GETTABLEKS                       R27 R27 K40 ["PrivacyStatusBadge"]
      195 CALL                             R26 1 1
      196 GETIMPORT                        R27 K5 [require]
      198 GETTABLEKS                       R28 R0 K6 ["Src"]
      200 GETTABLEKS                       R28 R28 K25 ["Components"]
      202 GETTABLEKS                       R28 R28 K41 ["AgeRestrictedCollaborationBadge"]
      204 CALL                             R27 1 1
      205 GETIMPORT                        R28 K43 [game]
      207 LOADK                            R30 K44 ["DontLayoutInvisibleGuiObjects"]
      208 NAMECALL                         R28 R28 K45 ["GetEngineFeature"]
      210 CALL                             R28 2 1
      211 DUPCLOSURE                       R29 K46 [PROTO_8]
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R19
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R7
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R5
      220 CAPTURE                          VAL R15
      221 CAPTURE                          VAL R22
      222 CAPTURE                          VAL R12
      223 CAPTURE                          VAL R1
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R24
      226 CAPTURE                          VAL R25
      227 CAPTURE                          VAL R18
      228 CAPTURE                          VAL R3
      229 CAPTURE                          VAL R26
      230 CAPTURE                          VAL R4
      231 CAPTURE                          VAL R27
      232 CAPTURE                          VAL R16
      233 CAPTURE                          VAL R17
      234 CAPTURE                          VAL R13
      235 CAPTURE                          VAL R28
      236 RETURN                           R29 1
