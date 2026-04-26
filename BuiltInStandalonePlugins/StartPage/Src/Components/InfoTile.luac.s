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
      585 JUMPIFNOT                        R35 ; [+113]
      586 GETTABLEKS                       R35 R14 K93 ["PrivacyType"]
      588 JUMPIFNOT                        R35 ; [+110]
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
      604 GETUPVAL                         R38 16
      605 JUMPIFNOT                        R38 ; [+39]
      606 GETUPVAL                         R38 7
      607 GETTABLEKS                       R37 R38 K8 ["createElement"]
      609 GETUPVAL                         R38 17
      610 DUPTABLE                         R39 K102 [{"UniverseId", "PrivacyType", "ContentMaturity", "IsFriendsOnly", "CreatorType", "CoreContentSelectStatus", "CoreContentReasons", "IsBeta"}]
      611 GETTABLEKS                       R40 R14 K103 ["Id"]
      613 SETTABLEKS                       R40 R39 K95 ["UniverseId"]
      615 GETTABLEKS                       R40 R14 K93 ["PrivacyType"]
      617 SETTABLEKS                       R40 R39 K93 ["PrivacyType"]
      619 GETTABLEKS                       R40 R14 K96 ["ContentMaturity"]
      621 SETTABLEKS                       R40 R39 K96 ["ContentMaturity"]
      623 GETTABLEKS                       R40 R14 K97 ["IsFriendsOnly"]
      625 SETTABLEKS                       R40 R39 K97 ["IsFriendsOnly"]
      627 GETTABLEKS                       R40 R14 K98 ["CreatorType"]
      629 SETTABLEKS                       R40 R39 K98 ["CreatorType"]
      631 GETTABLEKS                       R40 R14 K99 ["CoreContentSelectStatus"]
      633 SETTABLEKS                       R40 R39 K99 ["CoreContentSelectStatus"]
      635 GETTABLEKS                       R40 R14 K100 ["CoreContentReasons"]
      637 SETTABLEKS                       R40 R39 K100 ["CoreContentReasons"]
      639 GETTABLEKS                       R40 R14 K101 ["IsBeta"]
      641 SETTABLEKS                       R40 R39 K101 ["IsBeta"]
      643 CALL                             R37 2 1
      644 JUMP                             ; [+52]
      645 GETUPVAL                         R38 12
      646 JUMPIFNOT                        R38 ; [+25]
      647 GETUPVAL                         R38 7
      648 GETTABLEKS                       R37 R38 K8 ["createElement"]
      650 GETUPVAL                         R38 13
      651 DUPTABLE                         R39 K56 [{"text", "variant"}]
      652 LOADK                            R42 K104 ["Plugin"]
      653 LOADK                            R44 K105 ["PrivacyType.%*"]
      654 GETTABLEKS                       R46 R14 K93 ["PrivacyType"]
      656 NAMECALL                         R44 R44 K106 ["format"]
      658 CALL                             R44 2 1
      659 MOVE                             R43 R44
      660 NAMECALL                         R40 R1 K107 ["getText"]
      662 CALL                             R40 3 1
      663 SETTABLEKS                       R40 R39 K54 ["text"]
      665 GETUPVAL                         R41 14
      666 GETTABLEKS                       R40 R41 K57 ["Neutral"]
      668 SETTABLEKS                       R40 R39 K55 ["variant"]
      670 CALL                             R37 2 1
      671 JUMP                             ; [+25]
      672 GETUPVAL                         R38 7
      673 GETTABLEKS                       R37 R38 K8 ["createElement"]
      675 GETUPVAL                         R38 15
      676 NEWTABLE                         R39 2 0
      678 LOADK                            R42 K104 ["Plugin"]
      679 LOADK                            R44 K105 ["PrivacyType.%*"]
      680 GETTABLEKS                       R46 R14 K93 ["PrivacyType"]
      682 NAMECALL                         R44 R44 K106 ["format"]
      684 CALL                             R44 2 1
      685 MOVE                             R43 R44
      686 NAMECALL                         R40 R1 K107 ["getText"]
      688 CALL                             R40 3 1
      689 SETTABLEKS                       R40 R39 K37 ["Text"]
      691 GETUPVAL                         R41 7
      692 GETTABLEKS                       R40 R41 K22 ["Tag"]
      694 LOADK                            R41 K58 ["X-Fit"]
      695 SETTABLE                         R41 R39 R40
      696 CALL                             R37 2 1
      697 CALL                             R34 3 1
      698 JUMP                             ; [+1]
      699 LOADNIL                          R34
      700 SETTABLEKS                       R34 R33 K85 ["Privacy"]
      702 GETUPVAL                         R35 7
      703 GETTABLEKS                       R34 R35 K8 ["createElement"]
      705 LOADK                            R35 K32 ["TextLabel"]
      706 NEWTABLE                         R36 8 0
      708 GETIMPORT                        R37 K110 [Enum.AutomaticSize.Y]
      710 SETTABLEKS                       R37 R36 K108 ["AutomaticSize"]
      712 GETTABLEKS                       R37 R14 K111 ["Name"]
      714 SETTABLEKS                       R37 R36 K37 ["Text"]
      716 LOADB                            R37 1
      717 SETTABLEKS                       R37 R36 K112 ["TextWrapped"]
      719 GETIMPORT                        R37 K115 [Enum.TextTruncate.AtEnd]
      721 SETTABLEKS                       R37 R36 K113 ["TextTruncate"]
      723 GETIMPORT                        R37 K118 [Enum.TextXAlignment.Left]
      725 SETTABLEKS                       R37 R36 K116 ["TextXAlignment"]
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
      740 GETUPVAL                         R38 7
      741 GETTABLEKS                       R37 R38 K22 ["Tag"]
      743 LOADK                            R38 K119 ["StartPage-TextColor StartPage-TextSize StartPage-FontBold X-Transparent"]
      744 SETTABLE                         R38 R36 R37
      745 DUPTABLE                         R37 K67 [{"Size"}]
      746 GETUPVAL                         R39 7
      747 GETTABLEKS                       R38 R39 K8 ["createElement"]
      749 LOADK                            R39 K120 ["UISizeConstraint"]
      750 DUPTABLE                         R40 K122 [{"MaxSize"}]
      751 GETIMPORT                        R41 K4 [Vector2.new]
      753 LOADK                            R42 K123 [∞]
      754 LOADN                            R43 50
      755 CALL                             R41 2 1
      756 SETTABLEKS                       R41 R40 K121 ["MaxSize"]
      758 CALL                             R38 2 1
      759 SETTABLEKS                       R38 R37 K10 ["Size"]
      761 CALL                             R34 3 1
      762 SETTABLEKS                       R34 R33 K86 ["Title"]
      764 JUMPIFNOT                        R15 ; [+37]
      765 GETTABLEKS                       R35 R0 K124 ["IsDateModifiedVisible"]
      767 JUMPIFNOT                        R35 ; [+34]
      768 GETUPVAL                         R35 7
      769 GETTABLEKS                       R34 R35 K8 ["createElement"]
      771 LOADK                            R35 K32 ["TextLabel"]
      772 NEWTABLE                         R36 8 0
      774 LOADK                            R39 K104 ["Plugin"]
      775 LOADK                            R40 K125 ["LastModified"]
      776 DUPTABLE                         R41 K127 [{"lastModified"}]
      777 SETTABLEKS                       R15 R41 K126 ["lastModified"]
      779 NAMECALL                         R37 R1 K107 ["getText"]
      781 CALL                             R37 4 1
      782 SETTABLEKS                       R37 R36 K37 ["Text"]
      784 LOADN                            R37 12
      785 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      787 GETIMPORT                        R37 K118 [Enum.TextXAlignment.Left]
      789 SETTABLEKS                       R37 R36 K116 ["TextXAlignment"]
      791 MOVE                             R37 R2
      792 CALL                             R37 0 1
      793 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      795 GETUPVAL                         R38 7
      796 GETTABLEKS                       R37 R38 K22 ["Tag"]
      798 LOADK                            R38 K128 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      799 SETTABLE                         R38 R36 R37
      800 CALL                             R34 2 1
      801 JUMP                             ; [+1]
      802 LOADNIL                          R34
      803 SETTABLEKS                       R34 R33 K87 ["FormattedDate"]
      805 GETTABLEKS                       R35 R14 K88 ["Description"]
      807 JUMPIFNOT                        R35 ; [+34]
      808 GETTABLEKS                       R35 R0 K129 ["IsDescriptionVisible"]
      810 JUMPIFNOT                        R35 ; [+31]
      811 GETUPVAL                         R35 7
      812 GETTABLEKS                       R34 R35 K8 ["createElement"]
      814 LOADK                            R35 K32 ["TextLabel"]
      815 NEWTABLE                         R36 8 0
      817 GETTABLEKS                       R37 R14 K88 ["Description"]
      819 SETTABLEKS                       R37 R36 K37 ["Text"]
      821 LOADN                            R37 12
      822 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      824 LOADB                            R37 1
      825 SETTABLEKS                       R37 R36 K112 ["TextWrapped"]
      827 GETIMPORT                        R37 K118 [Enum.TextXAlignment.Left]
      829 SETTABLEKS                       R37 R36 K116 ["TextXAlignment"]
      831 MOVE                             R37 R2
      832 CALL                             R37 0 1
      833 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      835 GETUPVAL                         R38 7
      836 GETTABLEKS                       R37 R38 K22 ["Tag"]
      838 LOADK                            R38 K128 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      839 SETTABLE                         R38 R36 R37
      840 CALL                             R34 2 1
      841 JUMP                             ; [+1]
      842 LOADNIL                          R34
      843 SETTABLEKS                       R34 R33 K88 ["Description"]
      845 GETTABLEKS                       R35 R14 K89 ["CreatorName"]
      847 JUMPIFNOT                        R35 ; [+34]
      848 GETTABLEKS                       R35 R0 K130 ["IsCreatorNameVisible"]
      850 JUMPIFNOT                        R35 ; [+31]
      851 GETUPVAL                         R35 7
      852 GETTABLEKS                       R34 R35 K8 ["createElement"]
      854 LOADK                            R35 K32 ["TextLabel"]
      855 NEWTABLE                         R36 8 0
      857 GETTABLEKS                       R37 R14 K89 ["CreatorName"]
      859 SETTABLEKS                       R37 R36 K37 ["Text"]
      861 LOADN                            R37 12
      862 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      864 LOADB                            R37 1
      865 SETTABLEKS                       R37 R36 K112 ["TextWrapped"]
      867 GETIMPORT                        R37 K118 [Enum.TextXAlignment.Left]
      869 SETTABLEKS                       R37 R36 K116 ["TextXAlignment"]
      871 MOVE                             R37 R2
      872 CALL                             R37 0 1
      873 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      875 GETUPVAL                         R38 7
      876 GETTABLEKS                       R37 R38 K22 ["Tag"]
      878 LOADK                            R38 K128 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      879 SETTABLE                         R38 R36 R37
      880 CALL                             R34 2 1
      881 JUMP                             ; [+1]
      882 LOADNIL                          R34
      883 SETTABLEKS                       R34 R33 K89 ["CreatorName"]
      885 GETUPVAL                         R35 11
      886 JUMPIFNOT                        R35 ; [+48]
      887 GETTABLEKS                       R35 R14 K90 ["Categories"]
      889 JUMPIFNOT                        R35 ; [+45]
      890 GETTABLEKS                       R35 R0 K131 ["IsCategoriesVisible"]
      892 JUMPIFNOT                        R35 ; [+42]
      893 GETUPVAL                         R35 7
      894 GETTABLEKS                       R34 R35 K8 ["createElement"]
      896 LOADK                            R35 K32 ["TextLabel"]
      897 NEWTABLE                         R36 8 0
      899 LOADK                            R38 K132 ["<i>"]
      900 GETIMPORT                        R41 K134 [table.concat]
      902 GETTABLEKS                       R42 R14 K90 ["Categories"]
      904 LOADK                            R43 K135 [", "]
      905 CALL                             R41 2 1
      906 MOVE                             R39 R41
      907 LOADK                            R40 K136 ["</i>"]
      908 CONCAT                           R37 R38 R40
      909 SETTABLEKS                       R37 R36 K37 ["Text"]
      911 LOADN                            R37 12
      912 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      914 LOADB                            R37 1
      915 SETTABLEKS                       R37 R36 K112 ["TextWrapped"]
      917 LOADB                            R37 1
      918 SETTABLEKS                       R37 R36 K137 ["RichText"]
      920 GETIMPORT                        R37 K118 [Enum.TextXAlignment.Left]
      922 SETTABLEKS                       R37 R36 K116 ["TextXAlignment"]
      924 MOVE                             R37 R2
      925 CALL                             R37 0 1
      926 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      928 GETUPVAL                         R38 7
      929 GETTABLEKS                       R37 R38 K22 ["Tag"]
      931 LOADK                            R38 K128 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      932 SETTABLE                         R38 R36 R37
      933 CALL                             R34 2 1
      934 JUMP                             ; [+1]
      935 LOADNIL                          R34
      936 SETTABLEKS                       R34 R33 K90 ["Categories"]
      938 CALL                             R30 3 1
      939 SETTABLEKS                       R30 R29 K80 ["Options"]
      941 GETTABLEKS                       R31 R0 K138 ["IsDropdownMenuVisible"]
      943 JUMPIFNOT                        R31 ; [+72]
      944 LENGTH                           R31 R13
      945 LOADN                            R32 0
      946 JUMPIFLT                         R32 R31 ; [+3]
      948 GETUPVAL                         R31 18
      949 JUMPIF                           R31 ; [+66]
      950 GETUPVAL                         R31 7
      951 GETTABLEKS                       R30 R31 K8 ["createElement"]
      953 LOADK                            R31 K139 ["ImageButton"]
      954 NEWTABLE                         R32 16 0
      956 GETIMPORT                        R33 K21 [UDim2.new]
      958 LOADN                            R34 1
      959 LOADN                            R35 224
      960 LOADN                            R36 0
      961 LOADN                            R37 0
      962 CALL                             R33 4 1
      963 SETTABLEKS                       R33 R32 K11 ["Position"]
      965 LOADB                            R33 0
      966 SETTABLEKS                       R33 R32 K140 ["Selectable"]
      968 GETUPVAL                         R35 7
      969 GETTABLEKS                       R34 R35 K69 ["Event"]
      971 GETTABLEKS                       R33 R34 K70 ["Activated"]
      973 NEWCLOSURE                       R34 P1
      974 CAPTURE                          VAL R6
      975 SETTABLE                         R34 R32 R33
      976 GETUPVAL                         R35 7
      977 GETTABLEKS                       R34 R35 K69 ["Event"]
      979 GETTABLEKS                       R33 R34 K71 ["MouseEnter"]
      981 SETTABLE                         R3 R32 R33
      982 GETUPVAL                         R35 7
      983 GETTABLEKS                       R34 R35 K69 ["Event"]
      985 GETTABLEKS                       R33 R34 K72 ["MouseLeave"]
      987 SETTABLE                         R4 R32 R33
      988 GETUPVAL                         R35 7
      989 GETTABLEKS                       R34 R35 K141 ["Change"]
      991 GETTABLEKS                       R33 R34 K142 ["AbsolutePosition"]
      993 NEWCLOSURE                       R34 P2
      994 CAPTURE                          VAL R8
      995 SETTABLE                         R34 R32 R33
      996 GETUPVAL                         R34 18
      997 JUMPIFNOT                        R34 ; [+2]
      998 MOVE                             R33 R11
      999 JUMP                             ; [+1]
     1000 LOADNIL                          R33
     1001 SETTABLEKS                       R33 R32 K143 ["ref"]
     1003 MOVE                             R33 R2
     1004 CALL                             R33 0 1
     1005 SETTABLEKS                       R33 R32 K46 ["LayoutOrder"]
     1007 GETUPVAL                         R34 7
     1008 GETTABLEKS                       R33 R34 K22 ["Tag"]
     1010 LOADK                            R34 K144 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
     1011 SETTABLE                         R34 R32 R33
     1012 NEWTABLE                         R33 0 0
     1014 CALL                             R30 3 1
     1015 JUMP                             ; [+1]
     1016 LOADNIL                          R30
     1017 SETTABLEKS                       R30 R29 K81 ["Kebab"]
     1019 JUMPIFNOT                        R5 ; [+120]
     1020 GETUPVAL                         R31 18
     1021 JUMPIFNOT                        R31 ; [+21]
     1022 GETUPVAL                         R31 7
     1023 GETTABLEKS                       R30 R31 K8 ["createElement"]
     1025 GETUPVAL                         R31 19
     1026 DUPTABLE                         R32 K150 [{"isOpen", "actions", "onClose", "onItemActivated", "anchorRef"}]
     1027 SETTABLEKS                       R5 R32 K145 ["isOpen"]
     1029 SETTABLEKS                       R13 R32 K146 ["actions"]
     1031 NEWCLOSURE                       R33 P3
     1032 CAPTURE                          VAL R6
     1033 SETTABLEKS                       R33 R32 K147 ["onClose"]
     1035 NEWCLOSURE                       R33 P4
     1036 CAPTURE                          VAL R6
     1037 SETTABLEKS                       R33 R32 K148 ["onItemActivated"]
     1039 SETTABLEKS                       R11 R32 K149 ["anchorRef"]
     1041 CALL                             R30 2 1
     1042 JUMP                             ; [+98]
     1043 GETUPVAL                         R31 7
     1044 GETTABLEKS                       R30 R31 K8 ["createElement"]
     1046 GETUPVAL                         R31 20
     1047 NEWTABLE                         R32 2 0
     1049 NEWCLOSURE                       R33 P5
     1050 CAPTURE                          VAL R6
     1051 SETTABLEKS                       R33 R32 K151 ["OnFocusLost"]
     1053 GETUPVAL                         R34 7
     1054 GETTABLEKS                       R33 R34 K22 ["Tag"]
     1056 LOADK                            R34 K152 ["X-Fill X-Transparent"]
     1057 SETTABLE                         R34 R32 R33
     1058 GETUPVAL                         R34 7
     1059 GETTABLEKS                       R33 R34 K8 ["createElement"]
     1061 GETUPVAL                         R34 19
     1062 NEWTABLE                         R35 8 0
     1064 GETUPVAL                         R37 21
     1065 JUMPIFNOT                        R37 ; [+11]
     1066 GETIMPORT                        R36 K21 [UDim2.new]
     1068 LOADN                            R37 0
     1069 GETTABLEKS                       R39 R7 K154 ["X"]
     1071 ADDK                             R38 R39 K153 [32]
     1072 LOADN                            R39 0
     1073 GETTABLEKS                       R40 R7 K109 ["Y"]
     1075 CALL                             R36 4 1
     1076 JUMP                             ; [+16]
     1077 GETIMPORT                        R36 K21 [UDim2.new]
     1079 LOADN                            R37 0
     1080 GETTABLEKS                       R40 R7 K154 ["X"]
     1082 GETTABLEKS                       R41 R9 K154 ["X"]
     1084 SUB                              R39 R40 R41
     1085 ADDK                             R38 R39 K153 [32]
     1086 LOADN                            R39 0
     1087 GETTABLEKS                       R41 R7 K109 ["Y"]
     1089 GETTABLEKS                       R42 R9 K109 ["Y"]
     1091 SUB                              R40 R41 R42
     1092 CALL                             R36 4 1
     1093 SETTABLEKS                       R36 R35 K11 ["Position"]
     1095 GETUPVAL                         R37 21
     1096 JUMPIFNOT                        R37 ; [+2]
     1097 NOT                              R36 R5
     1098 JUMP                             ; [+13]
     1099 NOT                              R36 R5
     1100 JUMPIF                           R36 ; [+11]
     1101 LOADB                            R36 1
     1102 GETTABLEKS                       R37 R9 K154 ["X"]
     1104 JUMPIFEQKN                       R37 K155 [0] ; [+7]
     1106 GETTABLEKS                       R37 R9 K109 ["Y"]
     1108 JUMPIFEQKN                       R37 K155 [0] ; [+2]
     1110 LOADB                            R36 0 +1
     1111 LOADB                            R36 1
     1112 SETTABLEKS                       R36 R35 K156 ["Hide"]
     1114 GETTABLEKS                       R36 R0 K157 ["KebabMenu"]
     1116 SETTABLEKS                       R36 R35 K157 ["KebabMenu"]
     1118 SETTABLEKS                       R14 R35 K6 ["Cell"]
     1120 NEWCLOSURE                       R36 P6
     1121 CAPTURE                          VAL R6
     1122 SETTABLEKS                       R36 R35 K158 ["OnItemActivated"]
     1124 NEWCLOSURE                       R36 P7
     1125 CAPTURE                          VAL R10
     1126 SETTABLEKS                       R36 R35 K159 ["MenuContainerSizeChanged"]
     1128 GETUPVAL                         R37 7
     1129 GETTABLEKS                       R36 R37 K22 ["Tag"]
     1131 GETUPVAL                         R38 21
     1132 JUMPIFNOT                        R38 ; [+2]
     1133 LOADK                            R37 K160 ["StartPage-Anchor-Bottom-Right"]
     1134 JUMP                             ; [+1]
     1135 LOADNIL                          R37
     1136 SETTABLE                         R37 R35 R36
     1137 CALL                             R33 2 -1
     1138 CALL                             R30 -1 1
     1139 JUMP                             ; [+1]
     1140 LOADNIL                          R30
     1141 SETTABLEKS                       R30 R29 K82 ["Focus"]
     1143 CALL                             R26 3 1
     1144 SETTABLEKS                       R26 R25 K77 ["Body"]
     1146 CALL                             R22 3 1
     1147 SETTABLEKS                       R22 R21 K74 ["Child"]
     1149 CALL                             R18 3 -1
     1150 RETURN                           R18 -1

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
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K7 ["SharedFlags"]
       33 GETTABLEKS                       R4 R5 K10 ["getFFlagLuaStartPageCoreContentStatus"]
       35 CALL                             R3 1 1
       36 CALL                             R3 0 1
       37 GETIMPORT                        R4 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Packages"]
       41 GETTABLEKS                       R5 R6 K12 ["React"]
       43 CALL                             R4 1 1
       44 GETTABLEKS                       R5 R4 K13 ["useState"]
       46 GETTABLEKS                       R6 R4 K14 ["useRef"]
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R9 R0 K11 ["Packages"]
       52 GETTABLEKS                       R8 R9 K15 ["Framework"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R9 R7 K16 ["Util"]
       57 GETTABLEKS                       R8 R9 K17 ["counter"]
       59 GETTABLEKS                       R10 R7 K18 ["ContextServices"]
       61 GETTABLEKS                       R9 R10 K19 ["Localization"]
       63 GETTABLEKS                       R10 R7 K20 ["UI"]
       65 GETTABLEKS                       R11 R10 K21 ["Image"]
       67 GETTABLEKS                       R12 R10 K22 ["CaptureFocus"]
       69 GETIMPORT                        R13 K5 [require]
       71 GETTABLEKS                       R15 R0 K6 ["Src"]
       73 GETTABLEKS                       R14 R15 K23 ["Types"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K5 [require]
       78 GETTABLEKS                       R17 R0 K6 ["Src"]
       80 GETTABLEKS                       R16 R17 K24 ["Components"]
       82 GETTABLEKS                       R15 R16 K25 ["Shimmer"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K5 [require]
       87 GETTABLEKS                       R18 R0 K6 ["Src"]
       89 GETTABLEKS                       R17 R18 K7 ["SharedFlags"]
       91 GETTABLEKS                       R16 R17 K26 ["getFFlagLuaStartPageTableContextMenu"]
       93 CALL                             R15 1 1
       94 CALL                             R15 0 1
       95 JUMPIFNOT                        R15 ; [+12]
       96 GETIMPORT                        R16 K5 [require]
       98 GETTABLEKS                       R20 R0 K6 ["Src"]
      100 GETTABLEKS                       R19 R20 K27 ["Foundation"]
      102 GETTABLEKS                       R18 R19 K24 ["Components"]
      104 GETTABLEKS                       R17 R18 K28 ["ContextMenu"]
      106 CALL                             R16 1 1
      107 JUMP                             ; [+9]
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R19 R0 K6 ["Src"]
      112 GETTABLEKS                       R18 R19 K24 ["Components"]
      114 GETTABLEKS                       R17 R18 K28 ["ContextMenu"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R20 R0 K6 ["Src"]
      121 GETTABLEKS                       R19 R20 K24 ["Components"]
      123 GETTABLEKS                       R18 R19 K29 ["Pill"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETTABLEKS                       R21 R0 K6 ["Src"]
      130 GETTABLEKS                       R20 R21 K30 ["Hooks"]
      132 GETTABLEKS                       R19 R20 K31 ["useCursor"]
      134 CALL                             R18 1 1
      135 GETIMPORT                        R19 K5 [require]
      137 GETTABLEKS                       R22 R0 K6 ["Src"]
      139 GETTABLEKS                       R21 R22 K32 ["Contexts"]
      141 GETTABLEKS                       R20 R21 K33 ["ContextMenuActions"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K5 [require]
      146 GETTABLEKS                       R23 R0 K6 ["Src"]
      148 GETTABLEKS                       R22 R23 K30 ["Hooks"]
      150 GETTABLEKS                       R21 R22 K34 ["useCellContextActions"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R24 R0 K6 ["Src"]
      157 GETTABLEKS                       R23 R24 K16 ["Util"]
      159 GETTABLEKS                       R22 R23 K35 ["formatISOTimestamp"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K5 [require]
      164 GETTABLEKS                       R25 R0 K6 ["Src"]
      166 GETTABLEKS                       R24 R25 K16 ["Util"]
      168 GETTABLEKS                       R23 R24 K27 ["Foundation"]
      170 CALL                             R22 1 1
      171 GETTABLEKS                       R23 R22 K36 ["Badge"]
      173 GETTABLEKS                       R25 R22 K37 ["Enums"]
      175 GETTABLEKS                       R24 R25 K38 ["BadgeVariant"]
      177 GETIMPORT                        R25 K5 [require]
      179 GETTABLEKS                       R28 R0 K6 ["Src"]
      181 GETTABLEKS                       R27 R28 K24 ["Components"]
      183 GETTABLEKS                       R26 R27 K39 ["PrivacyStatusBadge"]
      185 CALL                             R25 1 1
      186 GETIMPORT                        R26 K41 [game]
      188 LOADK                            R28 K42 ["DontLayoutInvisibleGuiObjects"]
      189 NAMECALL                         R26 R26 K43 ["GetEngineFeature"]
      191 CALL                             R26 2 1
      192 DUPCLOSURE                       R27 K44 [PROTO_8]
      193 CAPTURE                          VAL R9
      194 CAPTURE                          VAL R8
      195 CAPTURE                          VAL R18
      196 CAPTURE                          VAL R5
      197 CAPTURE                          VAL R6
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R20
      200 CAPTURE                          VAL R4
      201 CAPTURE                          VAL R14
      202 CAPTURE                          VAL R21
      203 CAPTURE                          VAL R11
      204 CAPTURE                          VAL R1
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R23
      207 CAPTURE                          VAL R24
      208 CAPTURE                          VAL R17
      209 CAPTURE                          VAL R3
      210 CAPTURE                          VAL R25
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R16
      213 CAPTURE                          VAL R12
      214 CAPTURE                          VAL R26
      215 RETURN                           R27 1
