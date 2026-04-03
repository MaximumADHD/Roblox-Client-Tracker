PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnClick"]
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
       25 GETUPVAL                         R13 5
       26 GETTABLEKS                       R12 R13 K5 ["useContextMenuActions"]
       28 CALL                             R12 0 1
       29 GETUPVAL                         R13 6
       30 GETTABLEKS                       R14 R0 K6 ["Cell"]
       32 MOVE                             R15 R12
       33 JUMPIF                           R15 ; [+2]
       34 NEWTABLE                         R15 0 0
       36 CALL                             R13 2 1
       37 GETTABLEKS                       R15 R0 K6 ["Cell"]
       39 GETTABLEKS                       R14 R15 K7 ["IsPlaceholder"]
       41 JUMPIFNOT                        R14 ; [+17]
       42 GETUPVAL                         R15 7
       43 GETTABLEKS                       R14 R15 K8 ["createElement"]
       45 GETUPVAL                         R16 8
       46 GETTABLEKS                       R15 R16 K9 ["Component"]
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
       97 GETUPVAL                         R24 7
       98 GETTABLEKS                       R23 R24 K8 ["createElement"]
      100 LOADK                            R24 K19 ["Frame"]
      101 NEWTABLE                         R25 2 0
      103 GETIMPORT                        R26 K21 [UDim2.new]
      105 LOADN                            R27 0
      106 LOADN                            R28 35
      107 LOADN                            R29 0
      108 LOADN                            R30 35
      109 CALL                             R26 4 1
      110 SETTABLEKS                       R26 R25 K10 ["Size"]
      112 GETUPVAL                         R27 7
      113 GETTABLEKS                       R26 R27 K22 ["Tag"]
      115 LOADK                            R27 K23 ["X-Fit X-Middle X-Center StartPage-TeamCreateOnlineBackground StartPage-Circular"]
      116 SETTABLE                         R27 R25 R26
      117 NEWTABLE                         R26 0 1
      119 GETUPVAL                         R28 7
      120 GETTABLEKS                       R27 R28 K8 ["createElement"]
      122 LOADK                            R28 K19 ["Frame"]
      123 NEWTABLE                         R29 2 0
      125 GETIMPORT                        R30 K21 [UDim2.new]
      127 LOADN                            R31 0
      128 LOADN                            R32 30
      129 LOADN                            R33 0
      130 LOADN                            R34 30
      131 CALL                             R30 4 1
      132 SETTABLEKS                       R30 R29 K10 ["Size"]
      134 GETUPVAL                         R31 7
      135 GETTABLEKS                       R30 R31 K22 ["Tag"]
      137 LOADK                            R31 K24 ["X-Fit X-Middle X-Center StartPage-Standard StartPage-Circular"]
      138 SETTABLE                         R31 R29 R30
      139 NEWTABLE                         R30 0 1
      141 GETUPVAL                         R32 7
      142 GETTABLEKS                       R31 R32 K8 ["createElement"]
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
      182 GETUPVAL                         R21 7
      183 GETTABLEKS                       R20 R21 K8 ["createElement"]
      185 LOADK                            R21 K19 ["Frame"]
      186 NEWTABLE                         R22 2 0
      188 GETIMPORT                        R23 K21 [UDim2.new]
      190 LOADN                            R24 0
      191 LOADN                            R25 35
      192 LOADN                            R26 0
      193 LOADN                            R27 35
      194 CALL                             R23 4 1
      195 SETTABLEKS                       R23 R22 K10 ["Size"]
      197 GETUPVAL                         R24 7
      198 GETTABLEKS                       R23 R24 K22 ["Tag"]
      200 LOADK                            R24 K24 ["X-Fit X-Middle X-Center StartPage-Standard StartPage-Circular"]
      201 SETTABLE                         R24 R22 R23
      202 NEWTABLE                         R23 0 1
      204 GETUPVAL                         R25 7
      205 GETTABLEKS                       R24 R25 K8 ["createElement"]
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
      239 GETUPVAL                         R28 7
      240 GETTABLEKS                       R27 R28 K22 ["Tag"]
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
      258 GETUPVAL                         R19 7
      259 GETTABLEKS                       R18 R19 K8 ["createElement"]
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
      279 GETUPVAL                         R22 7
      280 GETTABLEKS                       R21 R22 K22 ["Tag"]
      282 LOADK                            R22 K47 ["X-Corner"]
      283 SETTABLE                         R22 R20 R21
      284 DUPTABLE                         R21 K50 [{"Difficulty", "Collaborators"}]
      285 GETTABLEKS                       R23 R0 K51 ["IsDifficultyVisible"]
      287 JUMPIFNOT                        R23 ; [+58]
      288 GETTABLEKS                       R23 R14 K48 ["Difficulty"]
      290 JUMPIFNOT                        R23 ; [+55]
      291 GETTABLEKS                       R23 R14 K48 ["Difficulty"]
      293 JUMPIFEQKS                       R23 K52 [""] ; [+52]
      295 GETUPVAL                         R23 7
      296 GETTABLEKS                       R22 R23 K8 ["createElement"]
      298 LOADK                            R23 K19 ["Frame"]
      299 NEWTABLE                         R24 1 0
      301 GETUPVAL                         R26 7
      302 GETTABLEKS                       R25 R26 K22 ["Tag"]
      304 LOADK                            R26 K53 ["X-Pad X-Fill X-Top X-Left X-Transparent"]
      305 SETTABLE                         R26 R24 R25
      306 GETUPVAL                         R26 12
      307 JUMPIFNOT                        R26 ; [+16]
      308 GETUPVAL                         R26 7
      309 GETTABLEKS                       R25 R26 K8 ["createElement"]
      311 GETUPVAL                         R26 13
      312 DUPTABLE                         R27 K56 [{"text", "variant"}]
      313 GETTABLEKS                       R28 R14 K48 ["Difficulty"]
      315 SETTABLEKS                       R28 R27 K54 ["text"]
      317 GETUPVAL                         R29 14
      318 GETTABLEKS                       R28 R29 K57 ["Neutral"]
      320 SETTABLEKS                       R28 R27 K55 ["variant"]
      322 CALL                             R25 2 1
      323 JUMP                             ; [+20]
      324 NEWTABLE                         R25 0 1
      326 GETUPVAL                         R27 7
      327 GETTABLEKS                       R26 R27 K8 ["createElement"]
      329 GETUPVAL                         R27 15
      330 NEWTABLE                         R28 2 0
      332 GETTABLEKS                       R29 R14 K48 ["Difficulty"]
      334 SETTABLEKS                       R29 R28 K37 ["Text"]
      336 GETUPVAL                         R30 7
      337 GETTABLEKS                       R29 R30 K22 ["Tag"]
      339 LOADK                            R30 K58 ["X-Fit"]
      340 SETTABLE                         R30 R28 R29
      341 CALL                             R26 2 1
      342 SETLIST                          R25 R26 1 [1]
      344 CALL                             R22 3 1
      345 JUMP                             ; [+1]
      346 LOADNIL                          R22
      347 SETTABLEKS                       R22 R21 K48 ["Difficulty"]
      349 GETUPVAL                         R23 7
      350 GETTABLEKS                       R22 R23 K8 ["createElement"]
      352 LOADK                            R23 K19 ["Frame"]
      353 NEWTABLE                         R24 1 0
      355 GETUPVAL                         R26 7
      356 GETTABLEKS                       R25 R26 K22 ["Tag"]
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
      372 GETUPVAL                         R19 7
      373 GETTABLEKS                       R18 R19 K8 ["createElement"]
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
      393 GETUPVAL                         R22 7
      394 GETTABLEKS                       R21 R22 K22 ["Tag"]
      396 LOADK                            R22 K60 ["X-Corner X-Bottom X-Right"]
      397 SETTABLE                         R22 R20 R21
      398 NEWTABLE                         R21 0 1
      400 GETUPVAL                         R23 7
      401 GETTABLEKS                       R22 R23 K8 ["createElement"]
      403 LOADK                            R23 K19 ["Frame"]
      404 NEWTABLE                         R24 1 0
      406 GETUPVAL                         R26 7
      407 GETTABLEKS                       R25 R26 K22 ["Tag"]
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
      421 GETUPVAL                         R19 7
      422 GETTABLEKS                       R18 R19 K8 ["createElement"]
      424 LOADK                            R19 K19 ["Frame"]
      425 NEWTABLE                         R20 4 0
      427 GETTABLEKS                       R21 R0 K45 ["ImageSize"]
      429 SETTABLEKS                       R21 R20 K10 ["Size"]
      431 LOADK                            R21 K63 [0.84]
      432 SETTABLEKS                       R21 R20 K64 ["BackgroundTransparency"]
      434 MOVE                             R21 R2
      435 CALL                             R21 0 1
      436 SETTABLEKS                       R21 R20 K46 ["LayoutOrder"]
      438 GETUPVAL                         R22 7
      439 GETTABLEKS                       R21 R22 K22 ["Tag"]
      441 LOADK                            R22 K65 ["X-Corner X-Center X-Middle StartPage-StandardDarkBackground"]
      442 SETTABLE                         R22 R20 R21
      443 GETUPVAL                         R22 7
      444 GETTABLEKS                       R21 R22 K8 ["createElement"]
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
      464 GETUPVAL                         R25 7
      465 GETTABLEKS                       R24 R25 K22 ["Tag"]
      467 LOADK                            R25 K47 ["X-Corner"]
      468 SETTABLE                         R25 R23 R24
      469 CALL                             R21 2 -1
      470 CALL                             R18 -1 1
      471 MOVE                             R17 R18
      472 JUMP                             ; [+13]
      473 GETUPVAL                         R19 7
      474 GETTABLEKS                       R18 R19 K8 ["createElement"]
      476 GETUPVAL                         R20 8
      477 GETTABLEKS                       R19 R20 K9 ["Component"]
      479 DUPTABLE                         R20 K67 [{"Size"}]
      480 GETTABLEKS                       R21 R0 K45 ["ImageSize"]
      482 SETTABLEKS                       R21 R20 K10 ["Size"]
      484 CALL                             R18 2 1
      485 MOVE                             R17 R18
      486 GETUPVAL                         R19 7
      487 GETTABLEKS                       R18 R19 K8 ["createElement"]
      489 LOADK                            R19 K68 ["TextButton"]
      490 NEWTABLE                         R20 8 0
      492 GETTABLEKS                       R21 R0 K11 ["Position"]
      494 SETTABLEKS                       R21 R20 K11 ["Position"]
      496 GETTABLEKS                       R21 R0 K10 ["Size"]
      498 SETTABLEKS                       R21 R20 K10 ["Size"]
      500 GETUPVAL                         R23 7
      501 GETTABLEKS                       R22 R23 K69 ["Event"]
      503 GETTABLEKS                       R21 R22 K70 ["Activated"]
      505 NEWCLOSURE                       R22 P0
      506 CAPTURE                          VAL R0
      507 CAPTURE                          VAL R14
      508 CAPTURE                          VAL R6
      509 SETTABLE                         R22 R20 R21
      510 GETUPVAL                         R23 7
      511 GETTABLEKS                       R22 R23 K69 ["Event"]
      513 GETTABLEKS                       R21 R22 K71 ["MouseEnter"]
      515 SETTABLE                         R3 R20 R21
      516 GETUPVAL                         R23 7
      517 GETTABLEKS                       R22 R23 K69 ["Event"]
      519 GETTABLEKS                       R21 R22 K72 ["MouseLeave"]
      521 SETTABLE                         R4 R20 R21
      522 GETUPVAL                         R22 7
      523 GETTABLEKS                       R21 R22 K22 ["Tag"]
      525 LOADK                            R22 K73 ["X-Transparent data-testid=--start-page-InfoTile"]
      526 SETTABLE                         R22 R20 R21
      527 DUPTABLE                         R21 K75 [{"Child"}]
      528 GETUPVAL                         R23 7
      529 GETTABLEKS                       R22 R23 K8 ["createElement"]
      531 LOADK                            R23 K19 ["Frame"]
      532 NEWTABLE                         R24 1 0
      534 GETUPVAL                         R26 7
      535 GETTABLEKS                       R25 R26 K22 ["Tag"]
      537 LOADK                            R26 K76 ["X-Fill StartPage-TileBackground StartPage-TilePadding StartPage-RoundedCorner8 X-Column"]
      538 SETTABLE                         R26 R24 R25
      539 DUPTABLE                         R25 K78 [{"Image", "Body"}]
      540 SETTABLEKS                       R17 R25 K27 ["Image"]
      542 GETUPVAL                         R27 7
      543 GETTABLEKS                       R26 R27 K8 ["createElement"]
      545 LOADK                            R27 K19 ["Frame"]
      546 NEWTABLE                         R28 2 0
      548 MOVE                             R29 R2
      549 CALL                             R29 0 1
      550 SETTABLEKS                       R29 R28 K46 ["LayoutOrder"]
      552 GETUPVAL                         R30 7
      553 GETTABLEKS                       R29 R30 K22 ["Tag"]
      555 LOADK                            R30 K79 ["X-Fit X-Row StartPage-DescPadding X-Transparent"]
      556 SETTABLE                         R30 R28 R29
      557 DUPTABLE                         R29 K83 [{"Options", "Kebab", "Focus"}]
      558 GETUPVAL                         R31 7
      559 GETTABLEKS                       R30 R31 K8 ["createElement"]
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
      577 GETUPVAL                         R34 7
      578 GETTABLEKS                       R33 R34 K22 ["Tag"]
      580 LOADK                            R34 K84 ["X-Fit X-Top StartPage-SearchResultRowColumn X-Transparent"]
      581 SETTABLE                         R34 R32 R33
      582 DUPTABLE                         R33 K91 [{"Privacy", "Title", "FormattedDate", "Description", "CreatorName", "Categories"}]
      583 GETTABLEKS                       R35 R0 K92 ["IsPrivacyVisible"]
      585 JUMPIFNOT                        R35 ; [+72]
      586 GETTABLEKS                       R35 R14 K93 ["PrivacyType"]
      588 JUMPIFNOT                        R35 ; [+69]
      589 GETUPVAL                         R35 7
      590 GETTABLEKS                       R34 R35 K8 ["createElement"]
      592 LOADK                            R35 K19 ["Frame"]
      593 NEWTABLE                         R36 2 0
      595 MOVE                             R37 R2
      596 CALL                             R37 0 1
      597 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      599 GETUPVAL                         R38 7
      600 GETTABLEKS                       R37 R38 K22 ["Tag"]
      602 LOADK                            R38 K94 ["X-RowS X-Fit X-Transparent"]
      603 SETTABLE                         R38 R36 R37
      604 GETUPVAL                         R38 12
      605 JUMPIFNOT                        R38 ; [+25]
      606 GETUPVAL                         R38 7
      607 GETTABLEKS                       R37 R38 K8 ["createElement"]
      609 GETUPVAL                         R38 13
      610 DUPTABLE                         R39 K56 [{"text", "variant"}]
      611 LOADK                            R42 K95 ["Plugin"]
      612 LOADK                            R44 K96 ["PrivacyType.%*"]
      613 GETTABLEKS                       R46 R14 K93 ["PrivacyType"]
      615 NAMECALL                         R44 R44 K97 ["format"]
      617 CALL                             R44 2 1
      618 MOVE                             R43 R44
      619 NAMECALL                         R40 R1 K98 ["getText"]
      621 CALL                             R40 3 1
      622 SETTABLEKS                       R40 R39 K54 ["text"]
      624 GETUPVAL                         R41 14
      625 GETTABLEKS                       R40 R41 K57 ["Neutral"]
      627 SETTABLEKS                       R40 R39 K55 ["variant"]
      629 CALL                             R37 2 1
      630 JUMP                             ; [+25]
      631 GETUPVAL                         R38 7
      632 GETTABLEKS                       R37 R38 K8 ["createElement"]
      634 GETUPVAL                         R38 15
      635 NEWTABLE                         R39 2 0
      637 LOADK                            R42 K95 ["Plugin"]
      638 LOADK                            R44 K96 ["PrivacyType.%*"]
      639 GETTABLEKS                       R46 R14 K93 ["PrivacyType"]
      641 NAMECALL                         R44 R44 K97 ["format"]
      643 CALL                             R44 2 1
      644 MOVE                             R43 R44
      645 NAMECALL                         R40 R1 K98 ["getText"]
      647 CALL                             R40 3 1
      648 SETTABLEKS                       R40 R39 K37 ["Text"]
      650 GETUPVAL                         R41 7
      651 GETTABLEKS                       R40 R41 K22 ["Tag"]
      653 LOADK                            R41 K58 ["X-Fit"]
      654 SETTABLE                         R41 R39 R40
      655 CALL                             R37 2 1
      656 CALL                             R34 3 1
      657 JUMP                             ; [+1]
      658 LOADNIL                          R34
      659 SETTABLEKS                       R34 R33 K85 ["Privacy"]
      661 GETUPVAL                         R35 7
      662 GETTABLEKS                       R34 R35 K8 ["createElement"]
      664 LOADK                            R35 K32 ["TextLabel"]
      665 NEWTABLE                         R36 8 0
      667 GETIMPORT                        R37 K101 [Enum.AutomaticSize.Y]
      669 SETTABLEKS                       R37 R36 K99 ["AutomaticSize"]
      671 GETTABLEKS                       R37 R14 K102 ["Name"]
      673 SETTABLEKS                       R37 R36 K37 ["Text"]
      675 LOADB                            R37 1
      676 SETTABLEKS                       R37 R36 K103 ["TextWrapped"]
      678 GETIMPORT                        R37 K106 [Enum.TextTruncate.AtEnd]
      680 SETTABLEKS                       R37 R36 K104 ["TextTruncate"]
      682 GETIMPORT                        R37 K109 [Enum.TextXAlignment.Left]
      684 SETTABLEKS                       R37 R36 K107 ["TextXAlignment"]
      686 GETIMPORT                        R37 K21 [UDim2.new]
      688 LOADN                            R38 1
      689 LOADN                            R39 226
      690 LOADN                            R40 0
      691 LOADN                            R41 0
      692 CALL                             R37 4 1
      693 SETTABLEKS                       R37 R36 K10 ["Size"]
      695 MOVE                             R37 R2
      696 CALL                             R37 0 1
      697 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      699 GETUPVAL                         R38 7
      700 GETTABLEKS                       R37 R38 K22 ["Tag"]
      702 LOADK                            R38 K110 ["StartPage-TextColor StartPage-TextSize StartPage-FontBold X-Transparent"]
      703 SETTABLE                         R38 R36 R37
      704 DUPTABLE                         R37 K67 [{"Size"}]
      705 GETUPVAL                         R39 7
      706 GETTABLEKS                       R38 R39 K8 ["createElement"]
      708 LOADK                            R39 K111 ["UISizeConstraint"]
      709 DUPTABLE                         R40 K113 [{"MaxSize"}]
      710 GETIMPORT                        R41 K4 [Vector2.new]
      712 LOADK                            R42 K114 [∞]
      713 LOADN                            R43 50
      714 CALL                             R41 2 1
      715 SETTABLEKS                       R41 R40 K112 ["MaxSize"]
      717 CALL                             R38 2 1
      718 SETTABLEKS                       R38 R37 K10 ["Size"]
      720 CALL                             R34 3 1
      721 SETTABLEKS                       R34 R33 K86 ["Title"]
      723 JUMPIFNOT                        R15 ; [+37]
      724 GETTABLEKS                       R35 R0 K115 ["IsDateModifiedVisible"]
      726 JUMPIFNOT                        R35 ; [+34]
      727 GETUPVAL                         R35 7
      728 GETTABLEKS                       R34 R35 K8 ["createElement"]
      730 LOADK                            R35 K32 ["TextLabel"]
      731 NEWTABLE                         R36 8 0
      733 LOADK                            R39 K95 ["Plugin"]
      734 LOADK                            R40 K116 ["LastModified"]
      735 DUPTABLE                         R41 K118 [{"lastModified"}]
      736 SETTABLEKS                       R15 R41 K117 ["lastModified"]
      738 NAMECALL                         R37 R1 K98 ["getText"]
      740 CALL                             R37 4 1
      741 SETTABLEKS                       R37 R36 K37 ["Text"]
      743 LOADN                            R37 12
      744 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      746 GETIMPORT                        R37 K109 [Enum.TextXAlignment.Left]
      748 SETTABLEKS                       R37 R36 K107 ["TextXAlignment"]
      750 MOVE                             R37 R2
      751 CALL                             R37 0 1
      752 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      754 GETUPVAL                         R38 7
      755 GETTABLEKS                       R37 R38 K22 ["Tag"]
      757 LOADK                            R38 K119 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      758 SETTABLE                         R38 R36 R37
      759 CALL                             R34 2 1
      760 JUMP                             ; [+1]
      761 LOADNIL                          R34
      762 SETTABLEKS                       R34 R33 K87 ["FormattedDate"]
      764 GETTABLEKS                       R35 R14 K88 ["Description"]
      766 JUMPIFNOT                        R35 ; [+34]
      767 GETTABLEKS                       R35 R0 K120 ["IsDescriptionVisible"]
      769 JUMPIFNOT                        R35 ; [+31]
      770 GETUPVAL                         R35 7
      771 GETTABLEKS                       R34 R35 K8 ["createElement"]
      773 LOADK                            R35 K32 ["TextLabel"]
      774 NEWTABLE                         R36 8 0
      776 GETTABLEKS                       R37 R14 K88 ["Description"]
      778 SETTABLEKS                       R37 R36 K37 ["Text"]
      780 LOADN                            R37 12
      781 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      783 LOADB                            R37 1
      784 SETTABLEKS                       R37 R36 K103 ["TextWrapped"]
      786 GETIMPORT                        R37 K109 [Enum.TextXAlignment.Left]
      788 SETTABLEKS                       R37 R36 K107 ["TextXAlignment"]
      790 MOVE                             R37 R2
      791 CALL                             R37 0 1
      792 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      794 GETUPVAL                         R38 7
      795 GETTABLEKS                       R37 R38 K22 ["Tag"]
      797 LOADK                            R38 K119 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      798 SETTABLE                         R38 R36 R37
      799 CALL                             R34 2 1
      800 JUMP                             ; [+1]
      801 LOADNIL                          R34
      802 SETTABLEKS                       R34 R33 K88 ["Description"]
      804 GETTABLEKS                       R35 R14 K89 ["CreatorName"]
      806 JUMPIFNOT                        R35 ; [+34]
      807 GETTABLEKS                       R35 R0 K121 ["IsCreatorNameVisible"]
      809 JUMPIFNOT                        R35 ; [+31]
      810 GETUPVAL                         R35 7
      811 GETTABLEKS                       R34 R35 K8 ["createElement"]
      813 LOADK                            R35 K32 ["TextLabel"]
      814 NEWTABLE                         R36 8 0
      816 GETTABLEKS                       R37 R14 K89 ["CreatorName"]
      818 SETTABLEKS                       R37 R36 K37 ["Text"]
      820 LOADN                            R37 12
      821 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      823 LOADB                            R37 1
      824 SETTABLEKS                       R37 R36 K103 ["TextWrapped"]
      826 GETIMPORT                        R37 K109 [Enum.TextXAlignment.Left]
      828 SETTABLEKS                       R37 R36 K107 ["TextXAlignment"]
      830 MOVE                             R37 R2
      831 CALL                             R37 0 1
      832 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      834 GETUPVAL                         R38 7
      835 GETTABLEKS                       R37 R38 K22 ["Tag"]
      837 LOADK                            R38 K119 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      838 SETTABLE                         R38 R36 R37
      839 CALL                             R34 2 1
      840 JUMP                             ; [+1]
      841 LOADNIL                          R34
      842 SETTABLEKS                       R34 R33 K89 ["CreatorName"]
      844 GETUPVAL                         R35 11
      845 JUMPIFNOT                        R35 ; [+48]
      846 GETTABLEKS                       R35 R14 K90 ["Categories"]
      848 JUMPIFNOT                        R35 ; [+45]
      849 GETTABLEKS                       R35 R0 K122 ["IsCategoriesVisible"]
      851 JUMPIFNOT                        R35 ; [+42]
      852 GETUPVAL                         R35 7
      853 GETTABLEKS                       R34 R35 K8 ["createElement"]
      855 LOADK                            R35 K32 ["TextLabel"]
      856 NEWTABLE                         R36 8 0
      858 LOADK                            R38 K123 ["<i>"]
      859 GETIMPORT                        R41 K125 [table.concat]
      861 GETTABLEKS                       R42 R14 K90 ["Categories"]
      863 LOADK                            R43 K126 [", "]
      864 CALL                             R41 2 1
      865 MOVE                             R39 R41
      866 LOADK                            R40 K127 ["</i>"]
      867 CONCAT                           R37 R38 R40
      868 SETTABLEKS                       R37 R36 K37 ["Text"]
      870 LOADN                            R37 12
      871 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      873 LOADB                            R37 1
      874 SETTABLEKS                       R37 R36 K103 ["TextWrapped"]
      876 LOADB                            R37 1
      877 SETTABLEKS                       R37 R36 K128 ["RichText"]
      879 GETIMPORT                        R37 K109 [Enum.TextXAlignment.Left]
      881 SETTABLEKS                       R37 R36 K107 ["TextXAlignment"]
      883 MOVE                             R37 R2
      884 CALL                             R37 0 1
      885 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      887 GETUPVAL                         R38 7
      888 GETTABLEKS                       R37 R38 K22 ["Tag"]
      890 LOADK                            R38 K119 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      891 SETTABLE                         R38 R36 R37
      892 CALL                             R34 2 1
      893 JUMP                             ; [+1]
      894 LOADNIL                          R34
      895 SETTABLEKS                       R34 R33 K90 ["Categories"]
      897 CALL                             R30 3 1
      898 SETTABLEKS                       R30 R29 K80 ["Options"]
      900 GETTABLEKS                       R31 R0 K129 ["IsDropdownMenuVisible"]
      902 JUMPIFNOT                        R31 ; [+72]
      903 LENGTH                           R31 R13
      904 LOADN                            R32 0
      905 JUMPIFLT                         R32 R31 ; [+3]
      907 GETUPVAL                         R31 16
      908 JUMPIF                           R31 ; [+66]
      909 GETUPVAL                         R31 7
      910 GETTABLEKS                       R30 R31 K8 ["createElement"]
      912 LOADK                            R31 K130 ["ImageButton"]
      913 NEWTABLE                         R32 16 0
      915 GETIMPORT                        R33 K21 [UDim2.new]
      917 LOADN                            R34 1
      918 LOADN                            R35 224
      919 LOADN                            R36 0
      920 LOADN                            R37 0
      921 CALL                             R33 4 1
      922 SETTABLEKS                       R33 R32 K11 ["Position"]
      924 LOADB                            R33 0
      925 SETTABLEKS                       R33 R32 K131 ["Selectable"]
      927 GETUPVAL                         R35 7
      928 GETTABLEKS                       R34 R35 K69 ["Event"]
      930 GETTABLEKS                       R33 R34 K70 ["Activated"]
      932 NEWCLOSURE                       R34 P1
      933 CAPTURE                          VAL R6
      934 SETTABLE                         R34 R32 R33
      935 GETUPVAL                         R35 7
      936 GETTABLEKS                       R34 R35 K69 ["Event"]
      938 GETTABLEKS                       R33 R34 K71 ["MouseEnter"]
      940 SETTABLE                         R3 R32 R33
      941 GETUPVAL                         R35 7
      942 GETTABLEKS                       R34 R35 K69 ["Event"]
      944 GETTABLEKS                       R33 R34 K72 ["MouseLeave"]
      946 SETTABLE                         R4 R32 R33
      947 GETUPVAL                         R35 7
      948 GETTABLEKS                       R34 R35 K132 ["Change"]
      950 GETTABLEKS                       R33 R34 K133 ["AbsolutePosition"]
      952 NEWCLOSURE                       R34 P2
      953 CAPTURE                          VAL R8
      954 SETTABLE                         R34 R32 R33
      955 GETUPVAL                         R34 16
      956 JUMPIFNOT                        R34 ; [+2]
      957 MOVE                             R33 R11
      958 JUMP                             ; [+1]
      959 LOADNIL                          R33
      960 SETTABLEKS                       R33 R32 K134 ["ref"]
      962 MOVE                             R33 R2
      963 CALL                             R33 0 1
      964 SETTABLEKS                       R33 R32 K46 ["LayoutOrder"]
      966 GETUPVAL                         R34 7
      967 GETTABLEKS                       R33 R34 K22 ["Tag"]
      969 LOADK                            R34 K135 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
      970 SETTABLE                         R34 R32 R33
      971 NEWTABLE                         R33 0 0
      973 CALL                             R30 3 1
      974 JUMP                             ; [+1]
      975 LOADNIL                          R30
      976 SETTABLEKS                       R30 R29 K81 ["Kebab"]
      978 JUMPIFNOT                        R5 ; [+120]
      979 GETUPVAL                         R31 16
      980 JUMPIFNOT                        R31 ; [+21]
      981 GETUPVAL                         R31 7
      982 GETTABLEKS                       R30 R31 K8 ["createElement"]
      984 GETUPVAL                         R31 17
      985 DUPTABLE                         R32 K141 [{"isOpen", "actions", "onClose", "onItemActivated", "anchorRef"}]
      986 SETTABLEKS                       R5 R32 K136 ["isOpen"]
      988 SETTABLEKS                       R13 R32 K137 ["actions"]
      990 NEWCLOSURE                       R33 P3
      991 CAPTURE                          VAL R6
      992 SETTABLEKS                       R33 R32 K138 ["onClose"]
      994 NEWCLOSURE                       R33 P4
      995 CAPTURE                          VAL R6
      996 SETTABLEKS                       R33 R32 K139 ["onItemActivated"]
      998 SETTABLEKS                       R11 R32 K140 ["anchorRef"]
     1000 CALL                             R30 2 1
     1001 JUMP                             ; [+98]
     1002 GETUPVAL                         R31 7
     1003 GETTABLEKS                       R30 R31 K8 ["createElement"]
     1005 GETUPVAL                         R31 18
     1006 NEWTABLE                         R32 2 0
     1008 NEWCLOSURE                       R33 P5
     1009 CAPTURE                          VAL R6
     1010 SETTABLEKS                       R33 R32 K142 ["OnFocusLost"]
     1012 GETUPVAL                         R34 7
     1013 GETTABLEKS                       R33 R34 K22 ["Tag"]
     1015 LOADK                            R34 K143 ["X-Fill X-Transparent"]
     1016 SETTABLE                         R34 R32 R33
     1017 GETUPVAL                         R34 7
     1018 GETTABLEKS                       R33 R34 K8 ["createElement"]
     1020 GETUPVAL                         R34 17
     1021 NEWTABLE                         R35 8 0
     1023 GETUPVAL                         R37 19
     1024 JUMPIFNOT                        R37 ; [+11]
     1025 GETIMPORT                        R36 K21 [UDim2.new]
     1027 LOADN                            R37 0
     1028 GETTABLEKS                       R39 R7 K145 ["X"]
     1030 ADDK                             R38 R39 K144 [32]
     1031 LOADN                            R39 0
     1032 GETTABLEKS                       R40 R7 K100 ["Y"]
     1034 CALL                             R36 4 1
     1035 JUMP                             ; [+16]
     1036 GETIMPORT                        R36 K21 [UDim2.new]
     1038 LOADN                            R37 0
     1039 GETTABLEKS                       R40 R7 K145 ["X"]
     1041 GETTABLEKS                       R41 R9 K145 ["X"]
     1043 SUB                              R39 R40 R41
     1044 ADDK                             R38 R39 K144 [32]
     1045 LOADN                            R39 0
     1046 GETTABLEKS                       R41 R7 K100 ["Y"]
     1048 GETTABLEKS                       R42 R9 K100 ["Y"]
     1050 SUB                              R40 R41 R42
     1051 CALL                             R36 4 1
     1052 SETTABLEKS                       R36 R35 K11 ["Position"]
     1054 GETUPVAL                         R37 19
     1055 JUMPIFNOT                        R37 ; [+2]
     1056 NOT                              R36 R5
     1057 JUMP                             ; [+13]
     1058 NOT                              R36 R5
     1059 JUMPIF                           R36 ; [+11]
     1060 LOADB                            R36 1
     1061 GETTABLEKS                       R37 R9 K145 ["X"]
     1063 JUMPIFEQKN                       R37 K146 [0] ; [+7]
     1065 GETTABLEKS                       R37 R9 K100 ["Y"]
     1067 JUMPIFEQKN                       R37 K146 [0] ; [+2]
     1069 LOADB                            R36 0 +1
     1070 LOADB                            R36 1
     1071 SETTABLEKS                       R36 R35 K147 ["Hide"]
     1073 GETTABLEKS                       R36 R0 K148 ["KebabMenu"]
     1075 SETTABLEKS                       R36 R35 K148 ["KebabMenu"]
     1077 SETTABLEKS                       R14 R35 K6 ["Cell"]
     1079 NEWCLOSURE                       R36 P6
     1080 CAPTURE                          VAL R6
     1081 SETTABLEKS                       R36 R35 K149 ["OnItemActivated"]
     1083 NEWCLOSURE                       R36 P7
     1084 CAPTURE                          VAL R10
     1085 SETTABLEKS                       R36 R35 K150 ["MenuContainerSizeChanged"]
     1087 GETUPVAL                         R37 7
     1088 GETTABLEKS                       R36 R37 K22 ["Tag"]
     1090 GETUPVAL                         R38 19
     1091 JUMPIFNOT                        R38 ; [+2]
     1092 LOADK                            R37 K151 ["StartPage-Anchor-Bottom-Right"]
     1093 JUMP                             ; [+1]
     1094 LOADNIL                          R37
     1095 SETTABLE                         R37 R35 R36
     1096 CALL                             R33 2 -1
     1097 CALL                             R30 -1 1
     1098 JUMP                             ; [+1]
     1099 LOADNIL                          R30
     1100 SETTABLEKS                       R30 R29 K82 ["Focus"]
     1102 CALL                             R26 3 1
     1103 SETTABLEKS                       R26 R25 K77 ["Body"]
     1105 CALL                             R22 3 1
     1106 SETTABLEKS                       R22 R21 K74 ["Child"]
     1108 CALL                             R18 3 -1
     1109 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagLuaStartPageTutorialInfoTile"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R5 R0 K6 ["Src"]
       21 GETTABLEKS                       R4 R5 K7 ["SharedFlags"]
       23 GETTABLEKS                       R3 R4 K9 ["getFFlagLuaStartPageFoundationPill"]
       25 CALL                             R2 1 1
       26 CALL                             R2 0 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Packages"]
       31 GETTABLEKS                       R4 R5 K11 ["React"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K12 ["useState"]
       36 GETTABLEKS                       R5 R3 K13 ["useRef"]
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R8 R0 K10 ["Packages"]
       42 GETTABLEKS                       R7 R8 K14 ["Framework"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R8 R6 K15 ["Util"]
       47 GETTABLEKS                       R7 R8 K16 ["counter"]
       49 GETTABLEKS                       R9 R6 K17 ["ContextServices"]
       51 GETTABLEKS                       R8 R9 K18 ["Localization"]
       53 GETTABLEKS                       R9 R6 K19 ["UI"]
       55 GETTABLEKS                       R10 R9 K20 ["Image"]
       57 GETTABLEKS                       R11 R9 K21 ["CaptureFocus"]
       59 GETIMPORT                        R12 K5 [require]
       61 GETTABLEKS                       R14 R0 K6 ["Src"]
       63 GETTABLEKS                       R13 R14 K22 ["Types"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R16 R0 K6 ["Src"]
       70 GETTABLEKS                       R15 R16 K23 ["Components"]
       72 GETTABLEKS                       R14 R15 K24 ["Shimmer"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R17 R0 K6 ["Src"]
       79 GETTABLEKS                       R16 R17 K7 ["SharedFlags"]
       81 GETTABLEKS                       R15 R16 K25 ["getFFlagLuaStartPageTableContextMenu"]
       83 CALL                             R14 1 1
       84 CALL                             R14 0 1
       85 JUMPIFNOT                        R14 ; [+12]
       86 GETIMPORT                        R15 K5 [require]
       88 GETTABLEKS                       R19 R0 K6 ["Src"]
       90 GETTABLEKS                       R18 R19 K26 ["Foundation"]
       92 GETTABLEKS                       R17 R18 K23 ["Components"]
       94 GETTABLEKS                       R16 R17 K27 ["ContextMenu"]
       96 CALL                             R15 1 1
       97 JUMP                             ; [+9]
       98 GETIMPORT                        R15 K5 [require]
      100 GETTABLEKS                       R18 R0 K6 ["Src"]
      102 GETTABLEKS                       R17 R18 K23 ["Components"]
      104 GETTABLEKS                       R16 R17 K27 ["ContextMenu"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K5 [require]
      109 GETTABLEKS                       R19 R0 K6 ["Src"]
      111 GETTABLEKS                       R18 R19 K23 ["Components"]
      113 GETTABLEKS                       R17 R18 K28 ["Pill"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K5 [require]
      118 GETTABLEKS                       R20 R0 K6 ["Src"]
      120 GETTABLEKS                       R19 R20 K29 ["Hooks"]
      122 GETTABLEKS                       R18 R19 K30 ["useCursor"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K5 [require]
      127 GETTABLEKS                       R21 R0 K6 ["Src"]
      129 GETTABLEKS                       R20 R21 K31 ["Contexts"]
      131 GETTABLEKS                       R19 R20 K32 ["ContextMenuActions"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K5 [require]
      136 GETTABLEKS                       R22 R0 K6 ["Src"]
      138 GETTABLEKS                       R21 R22 K29 ["Hooks"]
      140 GETTABLEKS                       R20 R21 K33 ["useCellContextActions"]
      142 CALL                             R19 1 1
      143 GETIMPORT                        R20 K5 [require]
      145 GETTABLEKS                       R23 R0 K6 ["Src"]
      147 GETTABLEKS                       R22 R23 K15 ["Util"]
      149 GETTABLEKS                       R21 R22 K34 ["formatISOTimestamp"]
      151 CALL                             R20 1 1
      152 GETIMPORT                        R21 K5 [require]
      154 GETTABLEKS                       R24 R0 K6 ["Src"]
      156 GETTABLEKS                       R23 R24 K15 ["Util"]
      158 GETTABLEKS                       R22 R23 K26 ["Foundation"]
      160 CALL                             R21 1 1
      161 GETTABLEKS                       R22 R21 K35 ["Badge"]
      163 GETTABLEKS                       R24 R21 K36 ["Enums"]
      165 GETTABLEKS                       R23 R24 K37 ["BadgeVariant"]
      167 GETIMPORT                        R24 K39 [game]
      169 LOADK                            R26 K40 ["DontLayoutInvisibleGuiObjects"]
      170 NAMECALL                         R24 R24 K41 ["GetEngineFeature"]
      172 CALL                             R24 2 1
      173 DUPCLOSURE                       R25 K42 [PROTO_8]
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R5
      179 CAPTURE                          VAL R18
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R13
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R10
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R22
      188 CAPTURE                          VAL R23
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R24
      194 RETURN                           R25 1
