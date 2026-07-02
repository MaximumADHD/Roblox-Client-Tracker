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
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

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
      366 JUMP                             ; [+116]
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
      417 JUMP                             ; [+65]
      418 GETTABLEKS                       R18 R14 K62 ["NoLoadableImage"]
      420 JUMPIFNOT                        R18 ; [+49]
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
      449 DUPTABLE                         R24 K67 [{["Image"] = "rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"}]
      450 SETTABLEKS                       R24 R23 K25 ["Style"]
      452 GETIMPORT                        R24 K21 [UDim2.new]
      454 LOADN                            R25 0
      455 LOADN                            R26 100
      456 LOADN                            R27 0
      457 LOADN                            R28 100
      458 CALL                             R24 4 1
      459 SETTABLEKS                       R24 R23 K10 ["Size"]
      461 GETUPVAL                         R24 7
      462 GETTABLEKS                       R24 R24 K22 ["Tag"]
      464 LOADK                            R25 K47 ["X-Corner"]
      465 SETTABLE                         R25 R23 R24
      466 CALL                             R21 2 -1
      467 CALL                             R18 -1 1
      468 MOVE                             R17 R18
      469 JUMP                             ; [+13]
      470 GETUPVAL                         R18 7
      471 GETTABLEKS                       R18 R18 K8 ["createElement"]
      473 GETUPVAL                         R19 8
      474 GETTABLEKS                       R19 R19 K9 ["Component"]
      476 DUPTABLE                         R20 K68 [{"Size"}]
      477 GETTABLEKS                       R21 R0 K45 ["ImageSize"]
      479 SETTABLEKS                       R21 R20 K10 ["Size"]
      481 CALL                             R18 2 1
      482 MOVE                             R17 R18
      483 GETUPVAL                         R18 7
      484 GETTABLEKS                       R18 R18 K8 ["createElement"]
      486 LOADK                            R19 K69 ["TextButton"]
      487 NEWTABLE                         R20 8 0
      489 GETTABLEKS                       R21 R0 K11 ["Position"]
      491 SETTABLEKS                       R21 R20 K11 ["Position"]
      493 GETTABLEKS                       R21 R0 K10 ["Size"]
      495 SETTABLEKS                       R21 R20 K10 ["Size"]
      497 GETUPVAL                         R21 7
      498 GETTABLEKS                       R21 R21 K70 ["Event"]
      500 GETTABLEKS                       R21 R21 K71 ["Activated"]
      502 NEWCLOSURE                       R22 P0
      503 CAPTURE                          VAL R0
      504 CAPTURE                          VAL R14
      505 CAPTURE                          VAL R6
      506 SETTABLE                         R22 R20 R21
      507 GETUPVAL                         R21 7
      508 GETTABLEKS                       R21 R21 K70 ["Event"]
      510 GETTABLEKS                       R21 R21 K72 ["MouseEnter"]
      512 SETTABLE                         R3 R20 R21
      513 GETUPVAL                         R21 7
      514 GETTABLEKS                       R21 R21 K70 ["Event"]
      516 GETTABLEKS                       R21 R21 K73 ["MouseLeave"]
      518 SETTABLE                         R4 R20 R21
      519 GETUPVAL                         R21 7
      520 GETTABLEKS                       R21 R21 K22 ["Tag"]
      522 LOADK                            R22 K74 ["X-Transparent data-testid=--start-page-InfoTile"]
      523 SETTABLE                         R22 R20 R21
      524 DUPTABLE                         R21 K76 [{"Child"}]
      525 GETUPVAL                         R22 7
      526 GETTABLEKS                       R22 R22 K8 ["createElement"]
      528 LOADK                            R23 K19 ["Frame"]
      529 NEWTABLE                         R24 1 0
      531 GETUPVAL                         R25 7
      532 GETTABLEKS                       R25 R25 K22 ["Tag"]
      534 LOADK                            R26 K77 ["X-Fill StartPage-TileBackground StartPage-TilePadding StartPage-RoundedCorner8 X-Column"]
      535 SETTABLE                         R26 R24 R25
      536 DUPTABLE                         R25 K79 [{"Image", "Body"}]
      537 SETTABLEKS                       R17 R25 K27 ["Image"]
      539 GETUPVAL                         R26 7
      540 GETTABLEKS                       R26 R26 K8 ["createElement"]
      542 LOADK                            R27 K19 ["Frame"]
      543 NEWTABLE                         R28 2 0
      545 MOVE                             R29 R2
      546 CALL                             R29 0 1
      547 SETTABLEKS                       R29 R28 K46 ["LayoutOrder"]
      549 GETUPVAL                         R29 7
      550 GETTABLEKS                       R29 R29 K22 ["Tag"]
      552 LOADK                            R30 K80 ["X-Fit X-Row StartPage-DescPadding X-Transparent"]
      553 SETTABLE                         R30 R28 R29
      554 DUPTABLE                         R29 K84 [{"Options", "Kebab", "Focus"}]
      555 GETUPVAL                         R30 7
      556 GETTABLEKS                       R30 R30 K8 ["createElement"]
      558 LOADK                            R31 K19 ["Frame"]
      559 NEWTABLE                         R32 4 0
      561 GETIMPORT                        R33 K21 [UDim2.new]
      563 LOADN                            R34 0
      564 LOADN                            R35 170
      565 LOADN                            R36 1
      566 LOADN                            R37 -200
      567 CALL                             R33 4 1
      568 SETTABLEKS                       R33 R32 K10 ["Size"]
      570 MOVE                             R33 R2
      571 CALL                             R33 0 1
      572 SETTABLEKS                       R33 R32 K46 ["LayoutOrder"]
      574 GETUPVAL                         R33 7
      575 GETTABLEKS                       R33 R33 K22 ["Tag"]
      577 LOADK                            R34 K85 ["X-Fit X-Top StartPage-SearchResultRowColumn X-Transparent"]
      578 SETTABLE                         R34 R32 R33
      579 DUPTABLE                         R33 K93 [{"Privacy", "Title", "CollaborationRestriction", "FormattedDate", "Description", "CreatorName", "Categories"}]
      580 GETTABLEKS                       R35 R0 K94 ["IsPrivacyVisible"]
      582 JUMPIFNOT                        R35 ; [+134]
      583 GETTABLEKS                       R35 R14 K95 ["PrivacyType"]
      585 JUMPIF                           R35 ; [+5]
      586 GETUPVAL                         R35 16
      587 JUMPIFNOT                        R35 ; [+129]
      588 GETTABLEKS                       R35 R14 K96 ["Audiences"]
      590 JUMPIFNOT                        R35 ; [+126]
      591 GETUPVAL                         R34 7
      592 GETTABLEKS                       R34 R34 K8 ["createElement"]
      594 LOADK                            R35 K19 ["Frame"]
      595 NEWTABLE                         R36 2 0
      597 MOVE                             R37 R2
      598 CALL                             R37 0 1
      599 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      601 GETUPVAL                         R37 7
      602 GETTABLEKS                       R37 R37 K22 ["Tag"]
      604 LOADK                            R38 K97 ["X-RowS X-Fit X-Transparent"]
      605 SETTABLE                         R38 R36 R37
      606 GETUPVAL                         R38 17
      607 JUMPIFNOT                        R38 ; [+55]
      608 GETUPVAL                         R37 7
      609 GETTABLEKS                       R37 R37 K8 ["createElement"]
      611 GETUPVAL                         R38 18
      612 DUPTABLE                         R39 K107 [{"PrivacyType", "Audiences", "ContentMaturity", "IsFriendsOnly", "CreatorType", "CoreContentSelectStatus", "CoreContentReasons", "IsBeta", "AgeRecommendation", "IsSequestered", "IsDiscoveryBlocked"}]
      613 GETTABLEKS                       R40 R14 K95 ["PrivacyType"]
      615 SETTABLEKS                       R40 R39 K95 ["PrivacyType"]
      617 GETUPVAL                         R41 16
      618 JUMPIFNOT                        R41 ; [+3]
      619 GETTABLEKS                       R40 R14 K96 ["Audiences"]
      621 JUMP                             ; [+1]
      622 LOADNIL                          R40
      623 SETTABLEKS                       R40 R39 K96 ["Audiences"]
      625 GETTABLEKS                       R40 R14 K98 ["ContentMaturity"]
      627 SETTABLEKS                       R40 R39 K98 ["ContentMaturity"]
      629 GETTABLEKS                       R40 R14 K99 ["IsFriendsOnly"]
      631 SETTABLEKS                       R40 R39 K99 ["IsFriendsOnly"]
      633 GETTABLEKS                       R40 R14 K100 ["CreatorType"]
      635 SETTABLEKS                       R40 R39 K100 ["CreatorType"]
      637 GETTABLEKS                       R40 R14 K101 ["CoreContentSelectStatus"]
      639 SETTABLEKS                       R40 R39 K101 ["CoreContentSelectStatus"]
      641 GETTABLEKS                       R40 R14 K102 ["CoreContentReasons"]
      643 SETTABLEKS                       R40 R39 K102 ["CoreContentReasons"]
      645 GETTABLEKS                       R40 R14 K103 ["IsBeta"]
      647 SETTABLEKS                       R40 R39 K103 ["IsBeta"]
      649 GETTABLEKS                       R40 R14 K104 ["AgeRecommendation"]
      651 SETTABLEKS                       R40 R39 K104 ["AgeRecommendation"]
      653 GETTABLEKS                       R40 R14 K105 ["IsSequestered"]
      655 SETTABLEKS                       R40 R39 K105 ["IsSequestered"]
      657 GETTABLEKS                       R40 R14 K106 ["IsDiscoveryBlocked"]
      659 SETTABLEKS                       R40 R39 K106 ["IsDiscoveryBlocked"]
      661 CALL                             R37 2 1
      662 JUMP                             ; [+52]
      663 GETUPVAL                         R38 12
      664 JUMPIFNOT                        R38 ; [+25]
      665 GETUPVAL                         R37 7
      666 GETTABLEKS                       R37 R37 K8 ["createElement"]
      668 GETUPVAL                         R38 13
      669 DUPTABLE                         R39 K56 [{"text", "variant"}]
      670 LOADK                            R42 K108 ["Plugin"]
      671 LOADK                            R44 K109 ["PrivacyType.%*"]
      672 GETTABLEKS                       R46 R14 K95 ["PrivacyType"]
      674 NAMECALL                         R44 R44 K110 ["format"]
      676 CALL                             R44 2 1
      677 MOVE                             R43 R44
      678 NAMECALL                         R40 R1 K111 ["getText"]
      680 CALL                             R40 3 1
      681 SETTABLEKS                       R40 R39 K54 ["text"]
      683 GETUPVAL                         R40 14
      684 GETTABLEKS                       R40 R40 K57 ["Neutral"]
      686 SETTABLEKS                       R40 R39 K55 ["variant"]
      688 CALL                             R37 2 1
      689 JUMP                             ; [+25]
      690 GETUPVAL                         R37 7
      691 GETTABLEKS                       R37 R37 K8 ["createElement"]
      693 GETUPVAL                         R38 15
      694 NEWTABLE                         R39 2 0
      696 LOADK                            R42 K108 ["Plugin"]
      697 LOADK                            R44 K109 ["PrivacyType.%*"]
      698 GETTABLEKS                       R46 R14 K95 ["PrivacyType"]
      700 NAMECALL                         R44 R44 K110 ["format"]
      702 CALL                             R44 2 1
      703 MOVE                             R43 R44
      704 NAMECALL                         R40 R1 K111 ["getText"]
      706 CALL                             R40 3 1
      707 SETTABLEKS                       R40 R39 K37 ["Text"]
      709 GETUPVAL                         R40 7
      710 GETTABLEKS                       R40 R40 K22 ["Tag"]
      712 LOADK                            R41 K58 ["X-Fit"]
      713 SETTABLE                         R41 R39 R40
      714 CALL                             R37 2 1
      715 CALL                             R34 3 1
      716 JUMP                             ; [+1]
      717 LOADNIL                          R34
      718 SETTABLEKS                       R34 R33 K86 ["Privacy"]
      720 GETUPVAL                         R34 7
      721 GETTABLEKS                       R34 R34 K8 ["createElement"]
      723 LOADK                            R35 K32 ["TextLabel"]
      724 NEWTABLE                         R36 8 0
      726 GETIMPORT                        R37 K114 [Enum.AutomaticSize.Y]
      728 SETTABLEKS                       R37 R36 K112 ["AutomaticSize"]
      730 GETTABLEKS                       R37 R14 K115 ["Name"]
      732 SETTABLEKS                       R37 R36 K37 ["Text"]
      734 LOADB                            R37 1
      735 SETTABLEKS                       R37 R36 K116 ["TextWrapped"]
      737 GETIMPORT                        R37 K119 [Enum.TextTruncate.AtEnd]
      739 SETTABLEKS                       R37 R36 K117 ["TextTruncate"]
      741 GETIMPORT                        R37 K122 [Enum.TextXAlignment.Left]
      743 SETTABLEKS                       R37 R36 K120 ["TextXAlignment"]
      745 GETIMPORT                        R37 K21 [UDim2.new]
      747 LOADN                            R38 1
      748 LOADN                            R39 -30
      749 LOADN                            R40 0
      750 LOADN                            R41 0
      751 CALL                             R37 4 1
      752 SETTABLEKS                       R37 R36 K10 ["Size"]
      754 MOVE                             R37 R2
      755 CALL                             R37 0 1
      756 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      758 GETUPVAL                         R37 7
      759 GETTABLEKS                       R37 R37 K22 ["Tag"]
      761 LOADK                            R38 K123 ["StartPage-TextColor StartPage-TextSize StartPage-FontBold X-Transparent"]
      762 SETTABLE                         R38 R36 R37
      763 DUPTABLE                         R37 K68 [{"Size"}]
      764 GETUPVAL                         R38 7
      765 GETTABLEKS                       R38 R38 K8 ["createElement"]
      767 LOADK                            R39 K124 ["UISizeConstraint"]
      768 DUPTABLE                         R40 K126 [{"MaxSize"}]
      769 GETIMPORT                        R41 K4 [Vector2.new]
      771 LOADK                            R42 K127 [∞]
      772 LOADN                            R43 50
      773 CALL                             R41 2 1
      774 SETTABLEKS                       R41 R40 K125 ["MaxSize"]
      776 CALL                             R38 2 1
      777 SETTABLEKS                       R38 R37 K10 ["Size"]
      779 CALL                             R34 3 1
      780 SETTABLEKS                       R34 R33 K87 ["Title"]
      782 GETUPVAL                         R35 19
      783 JUMPIFNOT                        R35 ; [+43]
      784 GETTABLEKS                       R35 R14 K128 ["IsGame"]
      786 JUMPIFNOT                        R35 ; [+40]
      787 GETTABLEKS                       R35 R14 K129 ["IsAgeRestrictedCollaboration"]
      789 JUMPIFNOT                        R35 ; [+37]
      790 GETUPVAL                         R34 7
      791 GETTABLEKS                       R34 R34 K8 ["createElement"]
      793 LOADK                            R35 K19 ["Frame"]
      794 NEWTABLE                         R36 2 0
      796 MOVE                             R37 R2
      797 CALL                             R37 0 1
      798 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      800 GETUPVAL                         R37 7
      801 GETTABLEKS                       R37 R37 K22 ["Tag"]
      803 LOADK                            R38 K130 ["X-Fit X-Transparent"]
      804 SETTABLE                         R38 R36 R37
      805 DUPTABLE                         R37 K132 [{"Badge"}]
      806 GETUPVAL                         R38 7
      807 GETTABLEKS                       R38 R38 K8 ["createElement"]
      809 GETUPVAL                         R39 20
      810 DUPTABLE                         R40 K135 [{"label", "UniverseId"}]
      811 LOADK                            R43 K108 ["Plugin"]
      812 LOADK                            R44 K136 ["ExperienceStatus.Collaborate"]
      813 NAMECALL                         R41 R1 K111 ["getText"]
      815 CALL                             R41 3 1
      816 SETTABLEKS                       R41 R40 K133 ["label"]
      818 GETTABLEKS                       R41 R14 K137 ["Id"]
      820 SETTABLEKS                       R41 R40 K134 ["UniverseId"]
      822 CALL                             R38 2 1
      823 SETTABLEKS                       R38 R37 K131 ["Badge"]
      825 CALL                             R34 3 1
      826 JUMP                             ; [+1]
      827 LOADNIL                          R34
      828 SETTABLEKS                       R34 R33 K88 ["CollaborationRestriction"]
      830 JUMPIFNOT                        R15 ; [+37]
      831 GETTABLEKS                       R35 R0 K138 ["IsDateModifiedVisible"]
      833 JUMPIFNOT                        R35 ; [+34]
      834 GETUPVAL                         R34 7
      835 GETTABLEKS                       R34 R34 K8 ["createElement"]
      837 LOADK                            R35 K32 ["TextLabel"]
      838 NEWTABLE                         R36 8 0
      840 LOADK                            R39 K108 ["Plugin"]
      841 LOADK                            R40 K139 ["LastModified"]
      842 DUPTABLE                         R41 K141 [{"lastModified"}]
      843 SETTABLEKS                       R15 R41 K140 ["lastModified"]
      845 NAMECALL                         R37 R1 K111 ["getText"]
      847 CALL                             R37 4 1
      848 SETTABLEKS                       R37 R36 K37 ["Text"]
      850 LOADN                            R37 12
      851 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      853 GETIMPORT                        R37 K122 [Enum.TextXAlignment.Left]
      855 SETTABLEKS                       R37 R36 K120 ["TextXAlignment"]
      857 MOVE                             R37 R2
      858 CALL                             R37 0 1
      859 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      861 GETUPVAL                         R37 7
      862 GETTABLEKS                       R37 R37 K22 ["Tag"]
      864 LOADK                            R38 K142 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      865 SETTABLE                         R38 R36 R37
      866 CALL                             R34 2 1
      867 JUMP                             ; [+1]
      868 LOADNIL                          R34
      869 SETTABLEKS                       R34 R33 K89 ["FormattedDate"]
      871 GETTABLEKS                       R35 R14 K90 ["Description"]
      873 JUMPIFNOT                        R35 ; [+34]
      874 GETTABLEKS                       R35 R0 K143 ["IsDescriptionVisible"]
      876 JUMPIFNOT                        R35 ; [+31]
      877 GETUPVAL                         R34 7
      878 GETTABLEKS                       R34 R34 K8 ["createElement"]
      880 LOADK                            R35 K32 ["TextLabel"]
      881 NEWTABLE                         R36 8 0
      883 GETTABLEKS                       R37 R14 K90 ["Description"]
      885 SETTABLEKS                       R37 R36 K37 ["Text"]
      887 LOADN                            R37 12
      888 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      890 LOADB                            R37 1
      891 SETTABLEKS                       R37 R36 K116 ["TextWrapped"]
      893 GETIMPORT                        R37 K122 [Enum.TextXAlignment.Left]
      895 SETTABLEKS                       R37 R36 K120 ["TextXAlignment"]
      897 MOVE                             R37 R2
      898 CALL                             R37 0 1
      899 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      901 GETUPVAL                         R37 7
      902 GETTABLEKS                       R37 R37 K22 ["Tag"]
      904 LOADK                            R38 K142 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      905 SETTABLE                         R38 R36 R37
      906 CALL                             R34 2 1
      907 JUMP                             ; [+1]
      908 LOADNIL                          R34
      909 SETTABLEKS                       R34 R33 K90 ["Description"]
      911 GETTABLEKS                       R35 R14 K91 ["CreatorName"]
      913 JUMPIFNOT                        R35 ; [+34]
      914 GETTABLEKS                       R35 R0 K144 ["IsCreatorNameVisible"]
      916 JUMPIFNOT                        R35 ; [+31]
      917 GETUPVAL                         R34 7
      918 GETTABLEKS                       R34 R34 K8 ["createElement"]
      920 LOADK                            R35 K32 ["TextLabel"]
      921 NEWTABLE                         R36 8 0
      923 GETTABLEKS                       R37 R14 K91 ["CreatorName"]
      925 SETTABLEKS                       R37 R36 K37 ["Text"]
      927 LOADN                            R37 12
      928 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      930 LOADB                            R37 1
      931 SETTABLEKS                       R37 R36 K116 ["TextWrapped"]
      933 GETIMPORT                        R37 K122 [Enum.TextXAlignment.Left]
      935 SETTABLEKS                       R37 R36 K120 ["TextXAlignment"]
      937 MOVE                             R37 R2
      938 CALL                             R37 0 1
      939 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      941 GETUPVAL                         R37 7
      942 GETTABLEKS                       R37 R37 K22 ["Tag"]
      944 LOADK                            R38 K142 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      945 SETTABLE                         R38 R36 R37
      946 CALL                             R34 2 1
      947 JUMP                             ; [+1]
      948 LOADNIL                          R34
      949 SETTABLEKS                       R34 R33 K91 ["CreatorName"]
      951 GETUPVAL                         R35 11
      952 JUMPIFNOT                        R35 ; [+48]
      953 GETTABLEKS                       R35 R14 K92 ["Categories"]
      955 JUMPIFNOT                        R35 ; [+45]
      956 GETTABLEKS                       R35 R0 K145 ["IsCategoriesVisible"]
      958 JUMPIFNOT                        R35 ; [+42]
      959 GETUPVAL                         R34 7
      960 GETTABLEKS                       R34 R34 K8 ["createElement"]
      962 LOADK                            R35 K32 ["TextLabel"]
      963 NEWTABLE                         R36 8 0
      965 LOADK                            R38 K146 ["<i>"]
      966 GETIMPORT                        R41 K148 [table.concat]
      968 GETTABLEKS                       R42 R14 K92 ["Categories"]
      970 LOADK                            R43 K149 [", "]
      971 CALL                             R41 2 1
      972 MOVE                             R39 R41
      973 LOADK                            R40 K150 ["</i>"]
      974 CONCAT                           R37 R38 R40
      975 SETTABLEKS                       R37 R36 K37 ["Text"]
      977 LOADN                            R37 12
      978 SETTABLEKS                       R37 R36 K42 ["TextSize"]
      980 LOADB                            R37 1
      981 SETTABLEKS                       R37 R36 K116 ["TextWrapped"]
      983 LOADB                            R37 1
      984 SETTABLEKS                       R37 R36 K151 ["RichText"]
      986 GETIMPORT                        R37 K122 [Enum.TextXAlignment.Left]
      988 SETTABLEKS                       R37 R36 K120 ["TextXAlignment"]
      990 MOVE                             R37 R2
      991 CALL                             R37 0 1
      992 SETTABLEKS                       R37 R36 K46 ["LayoutOrder"]
      994 GETUPVAL                         R37 7
      995 GETTABLEKS                       R37 R37 K22 ["Tag"]
      997 LOADK                            R38 K142 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      998 SETTABLE                         R38 R36 R37
      999 CALL                             R34 2 1
     1000 JUMP                             ; [+1]
     1001 LOADNIL                          R34
     1002 SETTABLEKS                       R34 R33 K92 ["Categories"]
     1004 CALL                             R30 3 1
     1005 SETTABLEKS                       R30 R29 K81 ["Options"]
     1007 GETTABLEKS                       R31 R0 K152 ["IsDropdownMenuVisible"]
     1009 JUMPIFNOT                        R31 ; [+73]
     1010 LENGTH                           R31 R13
     1011 LOADN                            R32 0
     1012 JUMPIFLT                         R32 R31 ; [+3]
     1014 GETUPVAL                         R31 21
     1015 JUMPIF                           R31 ; [+67]
     1016 GETUPVAL                         R30 7
     1017 GETTABLEKS                       R30 R30 K8 ["createElement"]
     1019 LOADK                            R31 K153 ["ImageButton"]
     1020 NEWTABLE                         R32 16 0
     1022 GETIMPORT                        R33 K21 [UDim2.new]
     1024 LOADN                            R34 1
     1025 LOADN                            R35 -32
     1026 LOADN                            R36 0
     1027 LOADN                            R37 0
     1028 CALL                             R33 4 1
     1029 SETTABLEKS                       R33 R32 K11 ["Position"]
     1031 LOADB                            R33 0
     1032 SETTABLEKS                       R33 R32 K154 ["Selectable"]
     1034 GETUPVAL                         R33 7
     1035 GETTABLEKS                       R33 R33 K70 ["Event"]
     1037 GETTABLEKS                       R33 R33 K71 ["Activated"]
     1039 NEWCLOSURE                       R34 P1
     1040 CAPTURE                          VAL R6
     1041 CAPTURE                          VAL R5
     1042 SETTABLE                         R34 R32 R33
     1043 GETUPVAL                         R33 7
     1044 GETTABLEKS                       R33 R33 K70 ["Event"]
     1046 GETTABLEKS                       R33 R33 K72 ["MouseEnter"]
     1048 SETTABLE                         R3 R32 R33
     1049 GETUPVAL                         R33 7
     1050 GETTABLEKS                       R33 R33 K70 ["Event"]
     1052 GETTABLEKS                       R33 R33 K73 ["MouseLeave"]
     1054 SETTABLE                         R4 R32 R33
     1055 GETUPVAL                         R33 7
     1056 GETTABLEKS                       R33 R33 K155 ["Change"]
     1058 GETTABLEKS                       R33 R33 K156 ["AbsolutePosition"]
     1060 NEWCLOSURE                       R34 P2
     1061 CAPTURE                          VAL R8
     1062 SETTABLE                         R34 R32 R33
     1063 GETUPVAL                         R34 21
     1064 JUMPIFNOT                        R34 ; [+2]
     1065 MOVE                             R33 R11
     1066 JUMP                             ; [+1]
     1067 LOADNIL                          R33
     1068 SETTABLEKS                       R33 R32 K157 ["ref"]
     1070 MOVE                             R33 R2
     1071 CALL                             R33 0 1
     1072 SETTABLEKS                       R33 R32 K46 ["LayoutOrder"]
     1074 GETUPVAL                         R33 7
     1075 GETTABLEKS                       R33 R33 K22 ["Tag"]
     1077 LOADK                            R34 K158 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
     1078 SETTABLE                         R34 R32 R33
     1079 NEWTABLE                         R33 0 0
     1081 CALL                             R30 3 1
     1082 JUMP                             ; [+1]
     1083 LOADNIL                          R30
     1084 SETTABLEKS                       R30 R29 K82 ["Kebab"]
     1086 JUMPIFNOT                        R5 ; [+120]
     1087 GETUPVAL                         R31 21
     1088 JUMPIFNOT                        R31 ; [+21]
     1089 GETUPVAL                         R30 7
     1090 GETTABLEKS                       R30 R30 K8 ["createElement"]
     1092 GETUPVAL                         R31 22
     1093 DUPTABLE                         R32 K164 [{"isOpen", "actions", "onClose", "onItemActivated", "anchorRef"}]
     1094 SETTABLEKS                       R5 R32 K159 ["isOpen"]
     1096 SETTABLEKS                       R13 R32 K160 ["actions"]
     1098 NEWCLOSURE                       R33 P3
     1099 CAPTURE                          VAL R6
     1100 SETTABLEKS                       R33 R32 K161 ["onClose"]
     1102 NEWCLOSURE                       R33 P4
     1103 CAPTURE                          VAL R6
     1104 SETTABLEKS                       R33 R32 K162 ["onItemActivated"]
     1106 SETTABLEKS                       R11 R32 K163 ["anchorRef"]
     1108 CALL                             R30 2 1
     1109 JUMP                             ; [+98]
     1110 GETUPVAL                         R30 7
     1111 GETTABLEKS                       R30 R30 K8 ["createElement"]
     1113 GETUPVAL                         R31 23
     1114 NEWTABLE                         R32 2 0
     1116 NEWCLOSURE                       R33 P5
     1117 CAPTURE                          VAL R6
     1118 SETTABLEKS                       R33 R32 K165 ["OnFocusLost"]
     1120 GETUPVAL                         R33 7
     1121 GETTABLEKS                       R33 R33 K22 ["Tag"]
     1123 LOADK                            R34 K166 ["X-Fill X-Transparent"]
     1124 SETTABLE                         R34 R32 R33
     1125 GETUPVAL                         R33 7
     1126 GETTABLEKS                       R33 R33 K8 ["createElement"]
     1128 GETUPVAL                         R34 22
     1129 NEWTABLE                         R35 8 0
     1131 GETUPVAL                         R37 24
     1132 JUMPIFNOT                        R37 ; [+11]
     1133 GETIMPORT                        R36 K21 [UDim2.new]
     1135 LOADN                            R37 0
     1136 GETTABLEKS                       R39 R7 K168 ["X"]
     1138 ADDK                             R38 R39 K167 [32]
     1139 LOADN                            R39 0
     1140 GETTABLEKS                       R40 R7 K113 ["Y"]
     1142 CALL                             R36 4 1
     1143 JUMP                             ; [+16]
     1144 GETIMPORT                        R36 K21 [UDim2.new]
     1146 LOADN                            R37 0
     1147 GETTABLEKS                       R40 R7 K168 ["X"]
     1149 GETTABLEKS                       R41 R9 K168 ["X"]
     1151 SUB                              R39 R40 R41
     1152 ADDK                             R38 R39 K167 [32]
     1153 LOADN                            R39 0
     1154 GETTABLEKS                       R41 R7 K113 ["Y"]
     1156 GETTABLEKS                       R42 R9 K113 ["Y"]
     1158 SUB                              R40 R41 R42
     1159 CALL                             R36 4 1
     1160 SETTABLEKS                       R36 R35 K11 ["Position"]
     1162 GETUPVAL                         R37 24
     1163 JUMPIFNOT                        R37 ; [+2]
     1164 NOT                              R36 R5
     1165 JUMP                             ; [+13]
     1166 NOT                              R36 R5
     1167 JUMPIF                           R36 ; [+11]
     1168 LOADB                            R36 1
     1169 GETTABLEKS                       R37 R9 K168 ["X"]
     1171 JUMPIFEQKN                       R37 K169 [0] ; [+7]
     1173 GETTABLEKS                       R37 R9 K113 ["Y"]
     1175 JUMPIFEQKN                       R37 K169 [0] ; [+2]
     1177 LOADB                            R36 0 +1
     1178 LOADB                            R36 1
     1179 SETTABLEKS                       R36 R35 K170 ["Hide"]
     1181 GETTABLEKS                       R36 R0 K171 ["KebabMenu"]
     1183 SETTABLEKS                       R36 R35 K171 ["KebabMenu"]
     1185 SETTABLEKS                       R14 R35 K6 ["Cell"]
     1187 NEWCLOSURE                       R36 P6
     1188 CAPTURE                          VAL R6
     1189 SETTABLEKS                       R36 R35 K172 ["OnItemActivated"]
     1191 NEWCLOSURE                       R36 P7
     1192 CAPTURE                          VAL R10
     1193 SETTABLEKS                       R36 R35 K173 ["MenuContainerSizeChanged"]
     1195 GETUPVAL                         R36 7
     1196 GETTABLEKS                       R36 R36 K22 ["Tag"]
     1198 GETUPVAL                         R38 24
     1199 JUMPIFNOT                        R38 ; [+2]
     1200 LOADK                            R37 K174 ["StartPage-Anchor-Bottom-Right"]
     1201 JUMP                             ; [+1]
     1202 LOADNIL                          R37
     1203 SETTABLE                         R37 R35 R36
     1204 CALL                             R33 2 -1
     1205 CALL                             R30 -1 1
     1206 JUMP                             ; [+1]
     1207 LOADNIL                          R30
     1208 SETTABLEKS                       R30 R29 K83 ["Focus"]
     1210 CALL                             R26 3 1
     1211 SETTABLEKS                       R26 R25 K78 ["Body"]
     1213 CALL                             R22 3 1
     1214 SETTABLEKS                       R22 R21 K75 ["Child"]
     1216 CALL                             R18 3 -1
     1217 RETURN                           R18 -1

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
