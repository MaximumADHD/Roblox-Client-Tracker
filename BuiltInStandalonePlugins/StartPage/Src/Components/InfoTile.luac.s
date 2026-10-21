PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["IsDropdownMenuVisible"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 1
        5 LENGTH                           R1 R2
        6 LOADN                            R2 0
        7 JUMPIFLT                         R2 R1 ; [+2]
        9 RETURN                           R0 0
       10 LOADK                            R3 K1 ["PluginGui"]
       11 NAMECALL                         R1 R0 K2 ["FindFirstAncestorWhichIsA"]
       13 CALL                             R1 2 1
       14 JUMPIFNOTEQKNIL                  R1 ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K3 ["current"]
       20 NAMECALL                         R4 R1 K4 ["GetRelativeMousePosition"]
       22 CALL                             R4 1 -1
       23 NAMECALL                         R2 R2 K5 ["SetPosition"]
       25 CALL                             R2 -1 0
       26 GETUPVAL                         R2 3
       27 LOADB                            R3 1
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClick"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+21]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 GETTABLEKS                       R4 R0 K1 ["AbsolutePosition"]
        9 GETIMPORT                        R5 K4 [Vector2.new]
       11 GETTABLEKS                       R7 R0 K6 ["AbsoluteSize"]
       13 GETTABLEKS                       R7 R7 K7 ["X"]
       15 DIVK                             R6 R7 K5 [2]
       16 GETTABLEKS                       R7 R0 K6 ["AbsoluteSize"]
       18 GETTABLEKS                       R7 R7 K8 ["Y"]
       20 CALL                             R5 2 1
       21 ADD                              R3 R4 R5
       22 NAMECALL                         R1 R1 K9 ["SetPosition"]
       24 CALL                             R1 2 0
       25 GETUPVAL                         R1 2
       26 GETUPVAL                         R3 3
       27 NOT                              R2 R3
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_10:
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
       25 LOADNIL                          R12
       26 GETUPVAL                         R13 5
       27 JUMPIFNOT                        R13 ; [+5]
       28 GETUPVAL                         R13 6
       29 GETIMPORT                        R14 K6 [Vector2.zero]
       31 CALL                             R13 1 1
       32 MOVE                             R12 R13
       33 GETUPVAL                         R13 7
       34 GETTABLEKS                       R13 R13 K7 ["useContextMenuActions"]
       36 CALL                             R13 0 1
       37 GETUPVAL                         R14 8
       38 GETTABLEKS                       R15 R0 K8 ["Cell"]
       40 MOVE                             R16 R13
       41 JUMPIF                           R16 ; [+2]
       42 NEWTABLE                         R16 0 0
       44 CALL                             R14 2 1
       45 LOADNIL                          R15
       46 GETUPVAL                         R16 5
       47 JUMPIFNOT                        R16 ; [+19]
       48 GETUPVAL                         R16 9
       49 GETTABLEKS                       R16 R16 K9 ["useCallback"]
       51 NEWCLOSURE                       R17 P0
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R14
       54 CAPTURE                          REF R12
       55 CAPTURE                          VAL R6
       56 NEWTABLE                         R18 0 4
       58 GETTABLEKS                       R19 R0 K10 ["IsDropdownMenuVisible"]
       60 MOVE                             R20 R14
       61 MOVE                             R21 R12
       62 MOVE                             R22 R6
       63 SETLIST                          R18 R19 4 [1]
       65 CALL                             R16 2 1
       66 MOVE                             R15 R16
       67 GETTABLEKS                       R16 R0 K8 ["Cell"]
       69 GETTABLEKS                       R16 R16 K11 ["IsPlaceholder"]
       71 JUMPIFNOT                        R16 ; [+18]
       72 GETUPVAL                         R16 9
       73 GETTABLEKS                       R16 R16 K12 ["createElement"]
       75 GETUPVAL                         R17 10
       76 GETTABLEKS                       R17 R17 K13 ["Component"]
       78 DUPTABLE                         R18 K16 [{"Size", "Position"}]
       79 GETTABLEKS                       R19 R0 K14 ["Size"]
       81 SETTABLEKS                       R19 R18 K14 ["Size"]
       83 GETTABLEKS                       R19 R0 K15 ["Position"]
       85 SETTABLEKS                       R19 R18 K15 ["Position"]
       87 CALL                             R16 2 -1
       88 CLOSEUPVALS                      R12
       89 RETURN                           R16 -1
       90 GETTABLEKS                       R16 R0 K8 ["Cell"]
       92 GETUPVAL                         R18 11
       93 GETTABLEKS                       R19 R16 K17 ["ReachStatus"]
       95 CALL                             R18 1 1
       96 JUMPIFNOTEQKNIL                  R18 ; [+2]
       98 LOADB                            R17 0 +1
       99 LOADB                            R17 1
      100 LOADNIL                          R18
      101 GETTABLEKS                       R19 R16 K18 ["LastViewed"]
      103 JUMPIFNOT                        R19 ; [+6]
      104 GETUPVAL                         R19 12
      105 GETTABLEKS                       R20 R16 K18 ["LastViewed"]
      107 MOVE                             R21 R1
      108 CALL                             R19 2 1
      109 MOVE                             R18 R19
      110 NEWTABLE                         R19 0 0
      112 GETTABLEKS                       R20 R16 K19 ["TeamCreatePresence"]
      114 JUMPIFNOT                        R20 ; [+176]
      115 LOADN                            R20 2
      116 GETTABLEKS                       R22 R16 K19 ["TeamCreatePresence"]
      118 LENGTH                           R21 R22
      119 JUMPIFNOTEQKN                    R21 K20 [3] ; [+2]
      121 LOADN                            R20 3
      122 LOADN                            R23 1
      123 GETTABLEKS                       R26 R16 K19 ["TeamCreatePresence"]
      125 LENGTH                           R25 R26
      126 FASTCALL2                        MATH_MIN R25 R20 ; [+4]
      128 MOVE                             R26 R20
      129 GETIMPORT                        R24 K23 [math.min]
      131 CALL                             R24 2 1
      132 MOVE                             R21 R24
      133 LOADN                            R22 1
      134 FORNPREP                         R21
      135 MOVE                             R25 R19
      136 GETUPVAL                         R26 9
      137 GETTABLEKS                       R26 R26 K12 ["createElement"]
      139 LOADK                            R27 K24 ["Frame"]
      140 NEWTABLE                         R28 2 0
      142 GETIMPORT                        R29 K26 [UDim2.new]
      144 LOADN                            R30 0
      145 LOADN                            R31 35
      146 LOADN                            R32 0
      147 LOADN                            R33 35
      148 CALL                             R29 4 1
      149 SETTABLEKS                       R29 R28 K14 ["Size"]
      151 GETUPVAL                         R29 9
      152 GETTABLEKS                       R29 R29 K27 ["Tag"]
      154 LOADK                            R30 K28 ["X-Fit X-Middle X-Center StartPage-TeamCreateOnlineBackground StartPage-Circular"]
      155 SETTABLE                         R30 R28 R29
      156 NEWTABLE                         R29 0 1
      158 GETUPVAL                         R30 9
      159 GETTABLEKS                       R30 R30 K12 ["createElement"]
      161 LOADK                            R31 K24 ["Frame"]
      162 NEWTABLE                         R32 2 0
      164 GETIMPORT                        R33 K26 [UDim2.new]
      166 LOADN                            R34 0
      167 LOADN                            R35 30
      168 LOADN                            R36 0
      169 LOADN                            R37 30
      170 CALL                             R33 4 1
      171 SETTABLEKS                       R33 R32 K14 ["Size"]
      173 GETUPVAL                         R33 9
      174 GETTABLEKS                       R33 R33 K27 ["Tag"]
      176 LOADK                            R34 K29 ["X-Fit X-Middle X-Center StartPage-Standard StartPage-Circular"]
      177 SETTABLE                         R34 R32 R33
      178 NEWTABLE                         R33 0 1
      180 GETUPVAL                         R34 9
      181 GETTABLEKS                       R34 R34 K12 ["createElement"]
      183 GETUPVAL                         R35 13
      184 DUPTABLE                         R36 K31 [{"Style", "Size"}]
      185 DUPTABLE                         R37 K33 [{"Image"}]
      186 GETTABLEKS                       R39 R16 K19 ["TeamCreatePresence"]
      188 GETTABLE                         R38 R39 R23
      189 SETTABLEKS                       R38 R37 K32 ["Image"]
      191 SETTABLEKS                       R37 R36 K30 ["Style"]
      193 GETIMPORT                        R37 K26 [UDim2.new]
      195 LOADN                            R38 0
      196 LOADN                            R39 30
      197 LOADN                            R40 0
      198 LOADN                            R41 30
      199 CALL                             R37 4 1
      200 SETTABLEKS                       R37 R36 K14 ["Size"]
      202 CALL                             R34 2 -1
      203 SETLIST                          R33 R34 -1 [1]
      205 CALL                             R30 3 -1
      206 SETLIST                          R29 R30 -1 [1]
      208 CALL                             R26 3 -1
      209 FASTCALL                         TABLE_INSERT ; [+2]
      210 GETIMPORT                        R24 K36 [table.insert]
      212 CALL                             R24 -1 0
      213 FORNLOOP                         R21
      214 GETTABLEKS                       R22 R16 K19 ["TeamCreatePresence"]
      216 LENGTH                           R21 R22
      217 LOADN                            R22 3
      218 JUMPIFNOTLT                      R22 R21 ; [+72]
      220 MOVE                             R22 R19
      221 GETUPVAL                         R23 9
      222 GETTABLEKS                       R23 R23 K12 ["createElement"]
      224 LOADK                            R24 K24 ["Frame"]
      225 NEWTABLE                         R25 2 0
      227 GETIMPORT                        R26 K26 [UDim2.new]
      229 LOADN                            R27 0
      230 LOADN                            R28 35
      231 LOADN                            R29 0
      232 LOADN                            R30 35
      233 CALL                             R26 4 1
      234 SETTABLEKS                       R26 R25 K14 ["Size"]
      236 GETUPVAL                         R26 9
      237 GETTABLEKS                       R26 R26 K27 ["Tag"]
      239 LOADK                            R27 K29 ["X-Fit X-Middle X-Center StartPage-Standard StartPage-Circular"]
      240 SETTABLE                         R27 R25 R26
      241 NEWTABLE                         R26 0 1
      243 GETUPVAL                         R27 9
      244 GETTABLEKS                       R27 R27 K12 ["createElement"]
      246 LOADK                            R28 K37 ["TextLabel"]
      247 NEWTABLE                         R29 8 0
      249 GETIMPORT                        R30 K26 [UDim2.new]
      251 LOADN                            R31 0
      252 LOADN                            R32 30
      253 LOADN                            R33 0
      254 LOADN                            R34 30
      255 CALL                             R30 4 1
      256 SETTABLEKS                       R30 R29 K14 ["Size"]
      258 LOADK                            R31 K38 ["+"]
      259 GETTABLEKS                       R36 R16 K19 ["TeamCreatePresence"]
      261 LENGTH                           R35 R36
      262 SUBK                             R34 R35 K20 [3]
      263 ADDK                             R33 R34 K39 [1]
      264 FASTCALL1                        TOSTRING R33 ; [+2]
      265 GETIMPORT                        R32 K41 [tostring]
      267 CALL                             R32 1 1
      268 CONCAT                           R30 R31 R32
      269 SETTABLEKS                       R30 R29 K42 ["Text"]
      271 GETIMPORT                        R30 K46 [Enum.Font.BuilderSans]
      273 SETTABLEKS                       R30 R29 K44 ["Font"]
      275 LOADN                            R30 18
      276 SETTABLEKS                       R30 R29 K47 ["TextSize"]
      278 GETUPVAL                         R30 9
      279 GETTABLEKS                       R30 R30 K27 ["Tag"]
      281 LOADK                            R31 K48 ["X-Fit X-Transparent StartPage-StandardDarkTextColor"]
      282 SETTABLE                         R31 R29 R30
      283 CALL                             R27 2 -1
      284 SETLIST                          R26 R27 -1 [1]
      286 CALL                             R23 3 -1
      287 FASTCALL                         TABLE_INSERT ; [+2]
      288 GETIMPORT                        R21 K36 [table.insert]
      290 CALL                             R21 -1 0
      291 LOADNIL                          R20
      292 GETTABLEKS                       R21 R16 K49 ["ImageUrl"]
      294 JUMPIFNOT                        R21 ; [+86]
      295 GETUPVAL                         R21 9
      296 GETTABLEKS                       R21 R21 K12 ["createElement"]
      298 GETUPVAL                         R22 13
      299 NEWTABLE                         R23 4 0
      301 DUPTABLE                         R24 K33 [{"Image"}]
      302 GETTABLEKS                       R25 R16 K49 ["ImageUrl"]
      304 SETTABLEKS                       R25 R24 K32 ["Image"]
      306 SETTABLEKS                       R24 R23 K30 ["Style"]
      308 GETTABLEKS                       R24 R0 K50 ["ImageSize"]
      310 SETTABLEKS                       R24 R23 K14 ["Size"]
      312 MOVE                             R24 R2
      313 CALL                             R24 0 1
      314 SETTABLEKS                       R24 R23 K51 ["LayoutOrder"]
      316 GETUPVAL                         R24 9
      317 GETTABLEKS                       R24 R24 K27 ["Tag"]
      319 LOADK                            R25 K52 ["X-Corner"]
      320 SETTABLE                         R25 R23 R24
      321 DUPTABLE                         R24 K55 [{"Difficulty", "Collaborators"}]
      322 GETTABLEKS                       R26 R0 K56 ["IsDifficultyVisible"]
      324 JUMPIFNOT                        R26 ; [+35]
      325 GETTABLEKS                       R26 R16 K53 ["Difficulty"]
      327 JUMPIFNOT                        R26 ; [+32]
      328 GETTABLEKS                       R26 R16 K53 ["Difficulty"]
      330 JUMPIFEQKS                       R26 K57 [""] ; [+29]
      332 GETUPVAL                         R25 9
      333 GETTABLEKS                       R25 R25 K12 ["createElement"]
      335 LOADK                            R26 K24 ["Frame"]
      336 NEWTABLE                         R27 1 0
      338 GETUPVAL                         R28 9
      339 GETTABLEKS                       R28 R28 K27 ["Tag"]
      341 LOADK                            R29 K58 ["X-Pad X-Fill X-Top X-Left X-Transparent"]
      342 SETTABLE                         R29 R27 R28
      343 GETUPVAL                         R28 9
      344 GETTABLEKS                       R28 R28 K12 ["createElement"]
      346 GETUPVAL                         R29 14
      347 DUPTABLE                         R30 K61 [{"text", "variant"}]
      348 GETTABLEKS                       R31 R16 K53 ["Difficulty"]
      350 SETTABLEKS                       R31 R30 K59 ["text"]
      352 GETUPVAL                         R31 15
      353 GETTABLEKS                       R31 R31 K62 ["Neutral"]
      355 SETTABLEKS                       R31 R30 K60 ["variant"]
      357 CALL                             R28 2 -1
      358 CALL                             R25 -1 1
      359 JUMP                             ; [+1]
      360 LOADNIL                          R25
      361 SETTABLEKS                       R25 R24 K53 ["Difficulty"]
      363 GETUPVAL                         R25 9
      364 GETTABLEKS                       R25 R25 K12 ["createElement"]
      366 LOADK                            R26 K24 ["Frame"]
      367 NEWTABLE                         R27 1 0
      369 GETUPVAL                         R28 9
      370 GETTABLEKS                       R28 R28 K27 ["Tag"]
      372 LOADK                            R29 K63 ["X-Pad X-Bottom X-Right X-Fill X-Row X-Transparent"]
      373 SETTABLE                         R29 R27 R28
      374 MOVE                             R28 R19
      375 CALL                             R25 3 1
      376 SETTABLEKS                       R25 R24 K54 ["Collaborators"]
      378 CALL                             R21 3 1
      379 MOVE                             R20 R21
      380 JUMP                             ; [+65]
      381 GETTABLEKS                       R21 R16 K64 ["NoLoadableImage"]
      383 JUMPIFNOT                        R21 ; [+49]
      384 GETUPVAL                         R21 9
      385 GETTABLEKS                       R21 R21 K12 ["createElement"]
      387 LOADK                            R22 K24 ["Frame"]
      388 NEWTABLE                         R23 4 0
      390 GETTABLEKS                       R24 R0 K50 ["ImageSize"]
      392 SETTABLEKS                       R24 R23 K14 ["Size"]
      394 LOADK                            R24 K65 [0.84]
      395 SETTABLEKS                       R24 R23 K66 ["BackgroundTransparency"]
      397 MOVE                             R24 R2
      398 CALL                             R24 0 1
      399 SETTABLEKS                       R24 R23 K51 ["LayoutOrder"]
      401 GETUPVAL                         R24 9
      402 GETTABLEKS                       R24 R24 K27 ["Tag"]
      404 LOADK                            R25 K67 ["X-Corner X-Center X-Middle StartPage-StandardDarkBackground"]
      405 SETTABLE                         R25 R23 R24
      406 GETUPVAL                         R24 9
      407 GETTABLEKS                       R24 R24 K12 ["createElement"]
      409 GETUPVAL                         R25 13
      410 NEWTABLE                         R26 4 0
      412 DUPTABLE                         R27 K69 [{["Image"] = "rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"}]
      413 SETTABLEKS                       R27 R26 K30 ["Style"]
      415 GETIMPORT                        R27 K26 [UDim2.new]
      417 LOADN                            R28 0
      418 LOADN                            R29 100
      419 LOADN                            R30 0
      420 LOADN                            R31 100
      421 CALL                             R27 4 1
      422 SETTABLEKS                       R27 R26 K14 ["Size"]
      424 GETUPVAL                         R27 9
      425 GETTABLEKS                       R27 R27 K27 ["Tag"]
      427 LOADK                            R28 K52 ["X-Corner"]
      428 SETTABLE                         R28 R26 R27
      429 CALL                             R24 2 -1
      430 CALL                             R21 -1 1
      431 MOVE                             R20 R21
      432 JUMP                             ; [+13]
      433 GETUPVAL                         R21 9
      434 GETTABLEKS                       R21 R21 K12 ["createElement"]
      436 GETUPVAL                         R22 10
      437 GETTABLEKS                       R22 R22 K13 ["Component"]
      439 DUPTABLE                         R23 K70 [{"Size"}]
      440 GETTABLEKS                       R24 R0 K50 ["ImageSize"]
      442 SETTABLEKS                       R24 R23 K14 ["Size"]
      444 CALL                             R21 2 1
      445 MOVE                             R20 R21
      446 GETUPVAL                         R21 9
      447 GETTABLEKS                       R21 R21 K12 ["createElement"]
      449 LOADK                            R22 K71 ["TextButton"]
      450 NEWTABLE                         R23 8 0
      452 GETTABLEKS                       R24 R0 K15 ["Position"]
      454 SETTABLEKS                       R24 R23 K15 ["Position"]
      456 GETTABLEKS                       R24 R0 K14 ["Size"]
      458 SETTABLEKS                       R24 R23 K14 ["Size"]
      460 GETUPVAL                         R24 9
      461 GETTABLEKS                       R24 R24 K72 ["Event"]
      463 GETTABLEKS                       R24 R24 K73 ["Activated"]
      465 NEWCLOSURE                       R25 P1
      466 CAPTURE                          VAL R0
      467 CAPTURE                          VAL R16
      468 CAPTURE                          VAL R6
      469 SETTABLE                         R25 R23 R24
      470 GETUPVAL                         R24 9
      471 GETTABLEKS                       R24 R24 K72 ["Event"]
      473 GETTABLEKS                       R24 R24 K74 ["SecondaryActivated"]
      475 GETUPVAL                         R26 5
      476 JUMPIFNOT                        R26 ; [+2]
      477 MOVE                             R25 R15
      478 JUMP                             ; [+1]
      479 LOADNIL                          R25
      480 SETTABLE                         R25 R23 R24
      481 GETUPVAL                         R24 9
      482 GETTABLEKS                       R24 R24 K72 ["Event"]
      484 GETTABLEKS                       R24 R24 K75 ["MouseEnter"]
      486 SETTABLE                         R3 R23 R24
      487 GETUPVAL                         R24 9
      488 GETTABLEKS                       R24 R24 K72 ["Event"]
      490 GETTABLEKS                       R24 R24 K76 ["MouseLeave"]
      492 SETTABLE                         R4 R23 R24
      493 GETUPVAL                         R24 9
      494 GETTABLEKS                       R24 R24 K27 ["Tag"]
      496 LOADK                            R25 K77 ["X-Transparent data-testid=--start-page-InfoTile"]
      497 SETTABLE                         R25 R23 R24
      498 DUPTABLE                         R24 K79 [{"Child"}]
      499 GETUPVAL                         R25 9
      500 GETTABLEKS                       R25 R25 K12 ["createElement"]
      502 LOADK                            R26 K24 ["Frame"]
      503 NEWTABLE                         R27 1 0
      505 GETUPVAL                         R28 9
      506 GETTABLEKS                       R28 R28 K27 ["Tag"]
      508 LOADK                            R29 K80 ["X-Fill StartPage-TileBackground StartPage-TilePadding StartPage-RoundedCorner8 X-Column"]
      509 SETTABLE                         R29 R27 R28
      510 DUPTABLE                         R28 K82 [{"Image", "Body"}]
      511 SETTABLEKS                       R20 R28 K32 ["Image"]
      513 GETUPVAL                         R29 9
      514 GETTABLEKS                       R29 R29 K12 ["createElement"]
      516 LOADK                            R30 K24 ["Frame"]
      517 NEWTABLE                         R31 2 0
      519 MOVE                             R32 R2
      520 CALL                             R32 0 1
      521 SETTABLEKS                       R32 R31 K51 ["LayoutOrder"]
      523 GETUPVAL                         R32 9
      524 GETTABLEKS                       R32 R32 K27 ["Tag"]
      526 LOADK                            R33 K83 ["X-Fit X-Row StartPage-DescPadding X-Transparent"]
      527 SETTABLE                         R33 R31 R32
      528 DUPTABLE                         R32 K87 [{"Options", "Kebab", "Focus"}]
      529 GETUPVAL                         R33 9
      530 GETTABLEKS                       R33 R33 K12 ["createElement"]
      532 LOADK                            R34 K24 ["Frame"]
      533 NEWTABLE                         R35 4 0
      535 GETIMPORT                        R36 K26 [UDim2.new]
      537 LOADN                            R37 0
      538 LOADN                            R38 170
      539 LOADN                            R39 1
      540 LOADN                            R40 -200
      541 CALL                             R36 4 1
      542 SETTABLEKS                       R36 R35 K14 ["Size"]
      544 MOVE                             R36 R2
      545 CALL                             R36 0 1
      546 SETTABLEKS                       R36 R35 K51 ["LayoutOrder"]
      548 GETUPVAL                         R36 9
      549 GETTABLEKS                       R36 R36 K27 ["Tag"]
      551 LOADK                            R37 K88 ["X-Fit X-Top StartPage-SearchResultRowColumn X-Transparent"]
      552 SETTABLE                         R37 R35 R36
      553 DUPTABLE                         R36 K96 [{"Privacy", "Title", "CollaborationRestriction", "FormattedDate", "Description", "CreatorName", "Categories"}]
      554 GETTABLEKS                       R38 R0 K97 ["IsPrivacyVisible"]
      556 JUMPIFNOT                        R38 ; [+121]
      557 GETTABLEKS                       R38 R16 K98 ["PrivacyType"]
      559 JUMPIF                           R38 ; [+3]
      560 GETTABLEKS                       R38 R16 K99 ["Audiences"]
      562 JUMPIFNOT                        R38 ; [+115]
      563 GETUPVAL                         R37 9
      564 GETTABLEKS                       R37 R37 K12 ["createElement"]
      566 LOADK                            R38 K24 ["Frame"]
      567 NEWTABLE                         R39 2 0
      569 MOVE                             R40 R2
      570 CALL                             R40 0 1
      571 SETTABLEKS                       R40 R39 K51 ["LayoutOrder"]
      573 GETUPVAL                         R40 9
      574 GETTABLEKS                       R40 R40 K27 ["Tag"]
      576 LOADK                            R41 K100 ["X-RowS X-Fit X-Transparent"]
      577 SETTABLE                         R41 R39 R40
      578 DUPTABLE                         R40 K103 [{"PrivacyBadge", "BuildSealBadge"}]
      579 JUMPIF                           R17 ; [+51]
      580 GETUPVAL                         R41 9
      581 GETTABLEKS                       R41 R41 K12 ["createElement"]
      583 GETUPVAL                         R42 16
      584 DUPTABLE                         R43 K112 [{"PrivacyType", "Audiences", "ContentMaturity", "IsFriendsOnly", "CreatorType", "CoreContentSelectStatus", "CoreContentReasons", "AgeRecommendation", "IsSequestered", "IsDiscoveryBlocked", "LayoutOrder"}]
      585 GETTABLEKS                       R44 R16 K98 ["PrivacyType"]
      587 SETTABLEKS                       R44 R43 K98 ["PrivacyType"]
      589 GETTABLEKS                       R44 R16 K99 ["Audiences"]
      591 SETTABLEKS                       R44 R43 K99 ["Audiences"]
      593 GETTABLEKS                       R44 R16 K104 ["ContentMaturity"]
      595 SETTABLEKS                       R44 R43 K104 ["ContentMaturity"]
      597 GETTABLEKS                       R44 R16 K105 ["IsFriendsOnly"]
      599 SETTABLEKS                       R44 R43 K105 ["IsFriendsOnly"]
      601 GETTABLEKS                       R44 R16 K106 ["CreatorType"]
      603 SETTABLEKS                       R44 R43 K106 ["CreatorType"]
      605 GETTABLEKS                       R44 R16 K107 ["CoreContentSelectStatus"]
      607 SETTABLEKS                       R44 R43 K107 ["CoreContentSelectStatus"]
      609 GETTABLEKS                       R44 R16 K108 ["CoreContentReasons"]
      611 SETTABLEKS                       R44 R43 K108 ["CoreContentReasons"]
      613 GETTABLEKS                       R44 R16 K109 ["AgeRecommendation"]
      615 SETTABLEKS                       R44 R43 K109 ["AgeRecommendation"]
      617 GETTABLEKS                       R44 R16 K110 ["IsSequestered"]
      619 SETTABLEKS                       R44 R43 K110 ["IsSequestered"]
      621 GETTABLEKS                       R44 R16 K111 ["IsDiscoveryBlocked"]
      623 SETTABLEKS                       R44 R43 K111 ["IsDiscoveryBlocked"]
      625 MOVE                             R44 R2
      626 CALL                             R44 0 1
      627 SETTABLEKS                       R44 R43 K51 ["LayoutOrder"]
      629 CALL                             R41 2 1
      630 JUMP                             ; [+14]
      631 GETUPVAL                         R41 9
      632 GETTABLEKS                       R41 R41 K12 ["createElement"]
      634 GETUPVAL                         R42 17
      635 DUPTABLE                         R43 K113 [{"ReachStatus", "LayoutOrder"}]
      636 GETTABLEKS                       R44 R16 K17 ["ReachStatus"]
      638 SETTABLEKS                       R44 R43 K17 ["ReachStatus"]
      640 MOVE                             R44 R2
      641 CALL                             R44 0 1
      642 SETTABLEKS                       R44 R43 K51 ["LayoutOrder"]
      644 CALL                             R41 2 1
      645 SETTABLEKS                       R41 R40 K101 ["PrivacyBadge"]
      647 GETTABLEKS                       R42 R16 K114 ["IsBuildSealed"]
      649 JUMPIFNOT                        R42 ; [+23]
      650 GETUPVAL                         R41 9
      651 GETTABLEKS                       R41 R41 K12 ["createElement"]
      653 GETUPVAL                         R42 14
      654 DUPTABLE                         R43 K115 [{"text", "variant", "LayoutOrder"}]
      655 LOADK                            R46 K116 ["Plugin"]
      656 LOADK                            R47 K102 ["BuildSealBadge"]
      657 NAMECALL                         R44 R1 K117 ["getText"]
      659 CALL                             R44 3 1
      660 SETTABLEKS                       R44 R43 K59 ["text"]
      662 GETUPVAL                         R44 15
      663 GETTABLEKS                       R44 R44 K118 ["Contrast"]
      665 SETTABLEKS                       R44 R43 K60 ["variant"]
      667 MOVE                             R44 R2
      668 CALL                             R44 0 1
      669 SETTABLEKS                       R44 R43 K51 ["LayoutOrder"]
      671 CALL                             R41 2 1
      672 JUMP                             ; [+1]
      673 LOADNIL                          R41
      674 SETTABLEKS                       R41 R40 K102 ["BuildSealBadge"]
      676 CALL                             R37 3 1
      677 JUMP                             ; [+1]
      678 LOADNIL                          R37
      679 SETTABLEKS                       R37 R36 K89 ["Privacy"]
      681 GETUPVAL                         R37 9
      682 GETTABLEKS                       R37 R37 K12 ["createElement"]
      684 LOADK                            R38 K37 ["TextLabel"]
      685 NEWTABLE                         R39 8 0
      687 GETIMPORT                        R40 K121 [Enum.AutomaticSize.Y]
      689 SETTABLEKS                       R40 R39 K119 ["AutomaticSize"]
      691 GETTABLEKS                       R40 R16 K122 ["Name"]
      693 SETTABLEKS                       R40 R39 K42 ["Text"]
      695 LOADB                            R40 1
      696 SETTABLEKS                       R40 R39 K123 ["TextWrapped"]
      698 GETIMPORT                        R40 K126 [Enum.TextTruncate.AtEnd]
      700 SETTABLEKS                       R40 R39 K124 ["TextTruncate"]
      702 GETIMPORT                        R40 K129 [Enum.TextXAlignment.Left]
      704 SETTABLEKS                       R40 R39 K127 ["TextXAlignment"]
      706 GETIMPORT                        R40 K26 [UDim2.new]
      708 LOADN                            R41 1
      709 LOADN                            R42 -30
      710 LOADN                            R43 0
      711 LOADN                            R44 0
      712 CALL                             R40 4 1
      713 SETTABLEKS                       R40 R39 K14 ["Size"]
      715 MOVE                             R40 R2
      716 CALL                             R40 0 1
      717 SETTABLEKS                       R40 R39 K51 ["LayoutOrder"]
      719 GETUPVAL                         R40 9
      720 GETTABLEKS                       R40 R40 K27 ["Tag"]
      722 LOADK                            R41 K130 ["StartPage-TextColor StartPage-TextSize StartPage-FontBold X-Transparent"]
      723 SETTABLE                         R41 R39 R40
      724 DUPTABLE                         R40 K70 [{"Size"}]
      725 GETUPVAL                         R41 9
      726 GETTABLEKS                       R41 R41 K12 ["createElement"]
      728 LOADK                            R42 K131 ["UISizeConstraint"]
      729 DUPTABLE                         R43 K133 [{"MaxSize"}]
      730 GETIMPORT                        R44 K4 [Vector2.new]
      732 LOADK                            R45 K134 [∞]
      733 LOADN                            R46 50
      734 CALL                             R44 2 1
      735 SETTABLEKS                       R44 R43 K132 ["MaxSize"]
      737 CALL                             R41 2 1
      738 SETTABLEKS                       R41 R40 K14 ["Size"]
      740 CALL                             R37 3 1
      741 SETTABLEKS                       R37 R36 K90 ["Title"]
      743 GETTABLEKS                       R38 R16 K135 ["IsGame"]
      745 JUMPIFNOT                        R38 ; [+40]
      746 GETTABLEKS                       R38 R16 K136 ["IsAgeRestrictedCollaboration"]
      748 JUMPIFNOT                        R38 ; [+37]
      749 GETUPVAL                         R37 9
      750 GETTABLEKS                       R37 R37 K12 ["createElement"]
      752 LOADK                            R38 K24 ["Frame"]
      753 NEWTABLE                         R39 2 0
      755 MOVE                             R40 R2
      756 CALL                             R40 0 1
      757 SETTABLEKS                       R40 R39 K51 ["LayoutOrder"]
      759 GETUPVAL                         R40 9
      760 GETTABLEKS                       R40 R40 K27 ["Tag"]
      762 LOADK                            R41 K137 ["X-Fit X-Transparent"]
      763 SETTABLE                         R41 R39 R40
      764 DUPTABLE                         R40 K139 [{"Badge"}]
      765 GETUPVAL                         R41 9
      766 GETTABLEKS                       R41 R41 K12 ["createElement"]
      768 GETUPVAL                         R42 18
      769 DUPTABLE                         R43 K142 [{"label", "UniverseId"}]
      770 LOADK                            R46 K116 ["Plugin"]
      771 LOADK                            R47 K143 ["ExperienceStatus.Collaborate"]
      772 NAMECALL                         R44 R1 K117 ["getText"]
      774 CALL                             R44 3 1
      775 SETTABLEKS                       R44 R43 K140 ["label"]
      777 GETTABLEKS                       R44 R16 K144 ["Id"]
      779 SETTABLEKS                       R44 R43 K141 ["UniverseId"]
      781 CALL                             R41 2 1
      782 SETTABLEKS                       R41 R40 K138 ["Badge"]
      784 CALL                             R37 3 1
      785 JUMP                             ; [+1]
      786 LOADNIL                          R37
      787 SETTABLEKS                       R37 R36 K91 ["CollaborationRestriction"]
      789 JUMPIFNOT                        R18 ; [+37]
      790 GETTABLEKS                       R38 R0 K145 ["IsDateModifiedVisible"]
      792 JUMPIFNOT                        R38 ; [+34]
      793 GETUPVAL                         R37 9
      794 GETTABLEKS                       R37 R37 K12 ["createElement"]
      796 LOADK                            R38 K37 ["TextLabel"]
      797 NEWTABLE                         R39 8 0
      799 LOADK                            R42 K116 ["Plugin"]
      800 LOADK                            R43 K146 ["LastModified"]
      801 DUPTABLE                         R44 K148 [{"lastModified"}]
      802 SETTABLEKS                       R18 R44 K147 ["lastModified"]
      804 NAMECALL                         R40 R1 K117 ["getText"]
      806 CALL                             R40 4 1
      807 SETTABLEKS                       R40 R39 K42 ["Text"]
      809 LOADN                            R40 12
      810 SETTABLEKS                       R40 R39 K47 ["TextSize"]
      812 GETIMPORT                        R40 K129 [Enum.TextXAlignment.Left]
      814 SETTABLEKS                       R40 R39 K127 ["TextXAlignment"]
      816 MOVE                             R40 R2
      817 CALL                             R40 0 1
      818 SETTABLEKS                       R40 R39 K51 ["LayoutOrder"]
      820 GETUPVAL                         R40 9
      821 GETTABLEKS                       R40 R40 K27 ["Tag"]
      823 LOADK                            R41 K149 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      824 SETTABLE                         R41 R39 R40
      825 CALL                             R37 2 1
      826 JUMP                             ; [+1]
      827 LOADNIL                          R37
      828 SETTABLEKS                       R37 R36 K92 ["FormattedDate"]
      830 GETTABLEKS                       R38 R16 K93 ["Description"]
      832 JUMPIFNOT                        R38 ; [+34]
      833 GETTABLEKS                       R38 R0 K150 ["IsDescriptionVisible"]
      835 JUMPIFNOT                        R38 ; [+31]
      836 GETUPVAL                         R37 9
      837 GETTABLEKS                       R37 R37 K12 ["createElement"]
      839 LOADK                            R38 K37 ["TextLabel"]
      840 NEWTABLE                         R39 8 0
      842 GETTABLEKS                       R40 R16 K93 ["Description"]
      844 SETTABLEKS                       R40 R39 K42 ["Text"]
      846 LOADN                            R40 12
      847 SETTABLEKS                       R40 R39 K47 ["TextSize"]
      849 LOADB                            R40 1
      850 SETTABLEKS                       R40 R39 K123 ["TextWrapped"]
      852 GETIMPORT                        R40 K129 [Enum.TextXAlignment.Left]
      854 SETTABLEKS                       R40 R39 K127 ["TextXAlignment"]
      856 MOVE                             R40 R2
      857 CALL                             R40 0 1
      858 SETTABLEKS                       R40 R39 K51 ["LayoutOrder"]
      860 GETUPVAL                         R40 9
      861 GETTABLEKS                       R40 R40 K27 ["Tag"]
      863 LOADK                            R41 K149 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      864 SETTABLE                         R41 R39 R40
      865 CALL                             R37 2 1
      866 JUMP                             ; [+1]
      867 LOADNIL                          R37
      868 SETTABLEKS                       R37 R36 K93 ["Description"]
      870 GETTABLEKS                       R38 R16 K94 ["CreatorName"]
      872 JUMPIFNOT                        R38 ; [+34]
      873 GETTABLEKS                       R38 R0 K151 ["IsCreatorNameVisible"]
      875 JUMPIFNOT                        R38 ; [+31]
      876 GETUPVAL                         R37 9
      877 GETTABLEKS                       R37 R37 K12 ["createElement"]
      879 LOADK                            R38 K37 ["TextLabel"]
      880 NEWTABLE                         R39 8 0
      882 GETTABLEKS                       R40 R16 K94 ["CreatorName"]
      884 SETTABLEKS                       R40 R39 K42 ["Text"]
      886 LOADN                            R40 12
      887 SETTABLEKS                       R40 R39 K47 ["TextSize"]
      889 LOADB                            R40 1
      890 SETTABLEKS                       R40 R39 K123 ["TextWrapped"]
      892 GETIMPORT                        R40 K129 [Enum.TextXAlignment.Left]
      894 SETTABLEKS                       R40 R39 K127 ["TextXAlignment"]
      896 MOVE                             R40 R2
      897 CALL                             R40 0 1
      898 SETTABLEKS                       R40 R39 K51 ["LayoutOrder"]
      900 GETUPVAL                         R40 9
      901 GETTABLEKS                       R40 R40 K27 ["Tag"]
      903 LOADK                            R41 K149 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      904 SETTABLE                         R41 R39 R40
      905 CALL                             R37 2 1
      906 JUMP                             ; [+1]
      907 LOADNIL                          R37
      908 SETTABLEKS                       R37 R36 K94 ["CreatorName"]
      910 GETTABLEKS                       R38 R16 K95 ["Categories"]
      912 JUMPIFNOT                        R38 ; [+45]
      913 GETTABLEKS                       R38 R0 K152 ["IsCategoriesVisible"]
      915 JUMPIFNOT                        R38 ; [+42]
      916 GETUPVAL                         R37 9
      917 GETTABLEKS                       R37 R37 K12 ["createElement"]
      919 LOADK                            R38 K37 ["TextLabel"]
      920 NEWTABLE                         R39 8 0
      922 LOADK                            R41 K153 ["<i>"]
      923 GETIMPORT                        R44 K155 [table.concat]
      925 GETTABLEKS                       R45 R16 K95 ["Categories"]
      927 LOADK                            R46 K156 [", "]
      928 CALL                             R44 2 1
      929 MOVE                             R42 R44
      930 LOADK                            R43 K157 ["</i>"]
      931 CONCAT                           R40 R41 R43
      932 SETTABLEKS                       R40 R39 K42 ["Text"]
      934 LOADN                            R40 12
      935 SETTABLEKS                       R40 R39 K47 ["TextSize"]
      937 LOADB                            R40 1
      938 SETTABLEKS                       R40 R39 K123 ["TextWrapped"]
      940 LOADB                            R40 1
      941 SETTABLEKS                       R40 R39 K158 ["RichText"]
      943 GETIMPORT                        R40 K129 [Enum.TextXAlignment.Left]
      945 SETTABLEKS                       R40 R39 K127 ["TextXAlignment"]
      947 MOVE                             R40 R2
      948 CALL                             R40 0 1
      949 SETTABLEKS                       R40 R39 K51 ["LayoutOrder"]
      951 GETUPVAL                         R40 9
      952 GETTABLEKS                       R40 R40 K27 ["Tag"]
      954 LOADK                            R41 K149 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      955 SETTABLE                         R41 R39 R40
      956 CALL                             R37 2 1
      957 JUMP                             ; [+1]
      958 LOADNIL                          R37
      959 SETTABLEKS                       R37 R36 K95 ["Categories"]
      961 CALL                             R33 3 1
      962 SETTABLEKS                       R33 R32 K84 ["Options"]
      964 GETTABLEKS                       R34 R0 K10 ["IsDropdownMenuVisible"]
      966 JUMPIFNOT                        R34 ; [+43]
      967 GETUPVAL                         R34 5
      968 JUMPIFNOT                        R34 ; [+41]
      969 LENGTH                           R34 R14
      970 LOADN                            R35 0
      971 JUMPIFNOTLT                      R35 R34 ; [+36]
      973 GETUPVAL                         R33 9
      974 GETTABLEKS                       R33 R33 K12 ["createElement"]
      976 GETUPVAL                         R34 19
      977 DUPTABLE                         R35 K165 [{["ref"], ["icon"], ["size"], ["variant"], ["LayoutOrder"], ["testId"] = "--start-page-TileKebab", ["onActivated"]}]
      978 SETTABLEKS                       R11 R35 K159 ["ref"]
      980 GETUPVAL                         R36 20
      981 GETTABLEKS                       R36 R36 K166 ["ThreeDotsVertical"]
      983 SETTABLEKS                       R36 R35 K160 ["icon"]
      985 GETUPVAL                         R36 21
      986 GETTABLEKS                       R36 R36 K167 ["Small"]
      988 SETTABLEKS                       R36 R35 K161 ["size"]
      990 GETUPVAL                         R36 22
      991 GETTABLEKS                       R36 R36 K168 ["Utility"]
      993 SETTABLEKS                       R36 R35 K60 ["variant"]
      995 MOVE                             R36 R2
      996 CALL                             R36 0 1
      997 SETTABLEKS                       R36 R35 K51 ["LayoutOrder"]
      999 NEWCLOSURE                       R36 P2
     1000 CAPTURE                          VAL R11
     1001 CAPTURE                          REF R12
     1002 CAPTURE                          VAL R6
     1003 CAPTURE                          VAL R5
     1004 SETTABLEKS                       R36 R35 K164 ["onActivated"]
     1006 CALL                             R33 2 1
     1007 JUMP                             ; [+66]
     1008 LOADNIL                          R33
     1009 JUMP                             ; [+64]
     1010 GETTABLEKS                       R34 R0 K10 ["IsDropdownMenuVisible"]
     1012 JUMPIFNOT                        R34 ; [+60]
     1013 GETUPVAL                         R33 9
     1014 GETTABLEKS                       R33 R33 K12 ["createElement"]
     1016 LOADK                            R34 K169 ["ImageButton"]
     1017 NEWTABLE                         R35 8 0
     1019 GETIMPORT                        R36 K26 [UDim2.new]
     1021 LOADN                            R37 1
     1022 LOADN                            R38 -32
     1023 LOADN                            R39 0
     1024 LOADN                            R40 0
     1025 CALL                             R36 4 1
     1026 SETTABLEKS                       R36 R35 K15 ["Position"]
     1028 LOADB                            R36 0
     1029 SETTABLEKS                       R36 R35 K170 ["Selectable"]
     1031 GETUPVAL                         R36 9
     1032 GETTABLEKS                       R36 R36 K72 ["Event"]
     1034 GETTABLEKS                       R36 R36 K73 ["Activated"]
     1036 NEWCLOSURE                       R37 P3
     1037 CAPTURE                          VAL R6
     1038 CAPTURE                          VAL R5
     1039 SETTABLE                         R37 R35 R36
     1040 GETUPVAL                         R36 9
     1041 GETTABLEKS                       R36 R36 K72 ["Event"]
     1043 GETTABLEKS                       R36 R36 K75 ["MouseEnter"]
     1045 SETTABLE                         R3 R35 R36
     1046 GETUPVAL                         R36 9
     1047 GETTABLEKS                       R36 R36 K72 ["Event"]
     1049 GETTABLEKS                       R36 R36 K76 ["MouseLeave"]
     1051 SETTABLE                         R4 R35 R36
     1052 GETUPVAL                         R36 9
     1053 GETTABLEKS                       R36 R36 K171 ["Change"]
     1055 GETTABLEKS                       R36 R36 K172 ["AbsolutePosition"]
     1057 NEWCLOSURE                       R37 P4
     1058 CAPTURE                          VAL R8
     1059 SETTABLE                         R37 R35 R36
     1060 MOVE                             R36 R2
     1061 CALL                             R36 0 1
     1062 SETTABLEKS                       R36 R35 K51 ["LayoutOrder"]
     1064 GETUPVAL                         R36 9
     1065 GETTABLEKS                       R36 R36 K27 ["Tag"]
     1067 LOADK                            R37 K173 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
     1068 SETTABLE                         R37 R35 R36
     1069 NEWTABLE                         R36 0 0
     1071 CALL                             R33 3 1
     1072 JUMP                             ; [+1]
     1073 LOADNIL                          R33
     1074 SETTABLEKS                       R33 R32 K85 ["Kebab"]
     1076 JUMPIFNOT                        R5 ; [+120]
     1077 GETUPVAL                         R34 5
     1078 JUMPIFNOT                        R34 ; [+21]
     1079 GETUPVAL                         R33 9
     1080 GETTABLEKS                       R33 R33 K12 ["createElement"]
     1082 GETUPVAL                         R34 23
     1083 DUPTABLE                         R35 K179 [{"isOpen", "actions", "onClose", "onItemActivated", "anchorRef"}]
     1084 SETTABLEKS                       R5 R35 K174 ["isOpen"]
     1086 SETTABLEKS                       R14 R35 K175 ["actions"]
     1088 NEWCLOSURE                       R36 P5
     1089 CAPTURE                          VAL R6
     1090 SETTABLEKS                       R36 R35 K176 ["onClose"]
     1092 NEWCLOSURE                       R36 P6
     1093 CAPTURE                          VAL R6
     1094 SETTABLEKS                       R36 R35 K177 ["onItemActivated"]
     1096 SETTABLEKS                       R12 R35 K178 ["anchorRef"]
     1098 CALL                             R33 2 1
     1099 JUMP                             ; [+98]
     1100 GETUPVAL                         R33 9
     1101 GETTABLEKS                       R33 R33 K12 ["createElement"]
     1103 GETUPVAL                         R34 24
     1104 NEWTABLE                         R35 2 0
     1106 NEWCLOSURE                       R36 P7
     1107 CAPTURE                          VAL R6
     1108 SETTABLEKS                       R36 R35 K180 ["OnFocusLost"]
     1110 GETUPVAL                         R36 9
     1111 GETTABLEKS                       R36 R36 K27 ["Tag"]
     1113 LOADK                            R37 K181 ["X-Fill X-Transparent"]
     1114 SETTABLE                         R37 R35 R36
     1115 GETUPVAL                         R36 9
     1116 GETTABLEKS                       R36 R36 K12 ["createElement"]
     1118 GETUPVAL                         R37 23
     1119 NEWTABLE                         R38 8 0
     1121 GETUPVAL                         R40 25
     1122 JUMPIFNOT                        R40 ; [+11]
     1123 GETIMPORT                        R39 K26 [UDim2.new]
     1125 LOADN                            R40 0
     1126 GETTABLEKS                       R42 R7 K183 ["X"]
     1128 ADDK                             R41 R42 K182 [32]
     1129 LOADN                            R42 0
     1130 GETTABLEKS                       R43 R7 K120 ["Y"]
     1132 CALL                             R39 4 1
     1133 JUMP                             ; [+16]
     1134 GETIMPORT                        R39 K26 [UDim2.new]
     1136 LOADN                            R40 0
     1137 GETTABLEKS                       R43 R7 K183 ["X"]
     1139 GETTABLEKS                       R44 R9 K183 ["X"]
     1141 SUB                              R42 R43 R44
     1142 ADDK                             R41 R42 K182 [32]
     1143 LOADN                            R42 0
     1144 GETTABLEKS                       R44 R7 K120 ["Y"]
     1146 GETTABLEKS                       R45 R9 K120 ["Y"]
     1148 SUB                              R43 R44 R45
     1149 CALL                             R39 4 1
     1150 SETTABLEKS                       R39 R38 K15 ["Position"]
     1152 GETUPVAL                         R40 25
     1153 JUMPIFNOT                        R40 ; [+2]
     1154 NOT                              R39 R5
     1155 JUMP                             ; [+13]
     1156 NOT                              R39 R5
     1157 JUMPIF                           R39 ; [+11]
     1158 LOADB                            R39 1
     1159 GETTABLEKS                       R40 R9 K183 ["X"]
     1161 JUMPIFEQKN                       R40 K184 [0] ; [+7]
     1163 GETTABLEKS                       R40 R9 K120 ["Y"]
     1165 JUMPIFEQKN                       R40 K184 [0] ; [+2]
     1167 LOADB                            R39 0 +1
     1168 LOADB                            R39 1
     1169 SETTABLEKS                       R39 R38 K185 ["Hide"]
     1171 GETTABLEKS                       R39 R0 K186 ["KebabMenu"]
     1173 SETTABLEKS                       R39 R38 K186 ["KebabMenu"]
     1175 SETTABLEKS                       R16 R38 K8 ["Cell"]
     1177 NEWCLOSURE                       R39 P8
     1178 CAPTURE                          VAL R6
     1179 SETTABLEKS                       R39 R38 K187 ["OnItemActivated"]
     1181 NEWCLOSURE                       R39 P9
     1182 CAPTURE                          VAL R10
     1183 SETTABLEKS                       R39 R38 K188 ["MenuContainerSizeChanged"]
     1185 GETUPVAL                         R39 9
     1186 GETTABLEKS                       R39 R39 K27 ["Tag"]
     1188 GETUPVAL                         R41 25
     1189 JUMPIFNOT                        R41 ; [+2]
     1190 LOADK                            R40 K189 ["StartPage-Anchor-Bottom-Right"]
     1191 JUMP                             ; [+1]
     1192 LOADNIL                          R40
     1193 SETTABLE                         R40 R38 R39
     1194 CALL                             R36 2 -1
     1195 CALL                             R33 -1 1
     1196 JUMP                             ; [+1]
     1197 LOADNIL                          R33
     1198 SETTABLEKS                       R33 R32 K86 ["Focus"]
     1200 CALL                             R29 3 1
     1201 SETTABLEKS                       R29 R28 K81 ["Body"]
     1203 CALL                             R25 3 1
     1204 SETTABLEKS                       R25 R24 K78 ["Child"]
     1206 CALL                             R21 3 -1
     1207 CLOSEUPVALS                      R12
     1208 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useRef"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R5 K10 ["Framework"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K11 ["Util"]
       27 GETTABLEKS                       R5 R5 K12 ["counter"]
       29 GETTABLEKS                       R6 R4 K13 ["ContextServices"]
       31 GETTABLEKS                       R6 R6 K14 ["Localization"]
       33 GETTABLEKS                       R7 R4 K15 ["UI"]
       35 GETTABLEKS                       R8 R7 K16 ["Image"]
       37 GETTABLEKS                       R9 R7 K17 ["CaptureFocus"]
       39 GETIMPORT                        R10 K5 [require]
       41 GETTABLEKS                       R11 R0 K18 ["Src"]
       43 GETTABLEKS                       R11 R11 K19 ["Types"]
       45 CALL                             R10 1 1
       46 GETIMPORT                        R11 K5 [require]
       48 GETTABLEKS                       R12 R0 K18 ["Src"]
       50 GETTABLEKS                       R12 R12 K20 ["Components"]
       52 GETTABLEKS                       R12 R12 K21 ["Shimmer"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K5 [require]
       57 GETTABLEKS                       R13 R0 K18 ["Src"]
       59 GETTABLEKS                       R13 R13 K22 ["SharedFlags"]
       61 GETTABLEKS                       R13 R13 K23 ["getFFlagLuaStartPageTableContextMenu"]
       63 CALL                             R12 1 1
       64 CALL                             R12 0 1
       65 JUMPIFNOT                        R12 ; [+12]
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R14 R0 K18 ["Src"]
       70 GETTABLEKS                       R14 R14 K24 ["Foundation"]
       72 GETTABLEKS                       R14 R14 K20 ["Components"]
       74 GETTABLEKS                       R14 R14 K25 ["ContextMenu"]
       76 CALL                             R13 1 1
       77 JUMP                             ; [+9]
       78 GETIMPORT                        R13 K5 [require]
       80 GETTABLEKS                       R14 R0 K18 ["Src"]
       82 GETTABLEKS                       R14 R14 K20 ["Components"]
       84 GETTABLEKS                       R14 R14 K25 ["ContextMenu"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K5 [require]
       89 GETTABLEKS                       R15 R0 K18 ["Src"]
       91 GETTABLEKS                       R15 R15 K26 ["Hooks"]
       93 GETTABLEKS                       R15 R15 K27 ["useCursor"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K5 [require]
       98 GETTABLEKS                       R16 R0 K18 ["Src"]
      100 GETTABLEKS                       R16 R16 K28 ["Contexts"]
      102 GETTABLEKS                       R16 R16 K29 ["ContextMenuActions"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K5 [require]
      107 GETTABLEKS                       R17 R0 K18 ["Src"]
      109 GETTABLEKS                       R17 R17 K26 ["Hooks"]
      111 GETTABLEKS                       R17 R17 K30 ["useCellContextActions"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K5 [require]
      116 GETTABLEKS                       R18 R0 K18 ["Src"]
      118 GETTABLEKS                       R18 R18 K11 ["Util"]
      120 GETTABLEKS                       R18 R18 K31 ["formatISOTimestamp"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K5 [require]
      125 GETTABLEKS                       R19 R0 K18 ["Src"]
      127 GETTABLEKS                       R19 R19 K11 ["Util"]
      129 GETTABLEKS                       R19 R19 K24 ["Foundation"]
      131 CALL                             R18 1 1
      132 GETTABLEKS                       R19 R18 K32 ["Badge"]
      134 GETTABLEKS                       R20 R18 K33 ["IconButton"]
      136 GETTABLEKS                       R21 R18 K34 ["Enums"]
      138 GETTABLEKS                       R21 R21 K35 ["BadgeVariant"]
      140 GETTABLEKS                       R22 R18 K34 ["Enums"]
      142 GETTABLEKS                       R22 R22 K36 ["InputSize"]
      144 GETTABLEKS                       R23 R18 K34 ["Enums"]
      146 GETTABLEKS                       R23 R23 K37 ["ButtonVariant"]
      148 GETTABLEKS                       R24 R18 K34 ["Enums"]
      150 GETTABLEKS                       R24 R24 K38 ["IconName"]
      152 GETTABLEKS                       R25 R18 K26 ["Hooks"]
      154 GETTABLEKS                       R25 R25 K39 ["useMeasurableRef"]
      156 GETIMPORT                        R26 K5 [require]
      158 GETTABLEKS                       R27 R0 K18 ["Src"]
      160 GETTABLEKS                       R27 R27 K20 ["Components"]
      162 GETTABLEKS                       R27 R27 K40 ["PrivacyStatusBadge"]
      164 CALL                             R26 1 1
      165 GETIMPORT                        R27 K5 [require]
      167 GETTABLEKS                       R28 R0 K18 ["Src"]
      169 GETTABLEKS                       R28 R28 K20 ["Components"]
      171 GETTABLEKS                       R28 R28 K41 ["ReachStatusBadge"]
      173 CALL                             R27 1 1
      174 GETIMPORT                        R28 K5 [require]
      176 GETTABLEKS                       R29 R0 K18 ["Src"]
      178 GETTABLEKS                       R29 R29 K11 ["Util"]
      180 GETTABLEKS                       R29 R29 K42 ["getReachStatusBadgePresentation"]
      182 CALL                             R28 1 1
      183 GETIMPORT                        R29 K5 [require]
      185 GETTABLEKS                       R30 R0 K18 ["Src"]
      187 GETTABLEKS                       R30 R30 K20 ["Components"]
      189 GETTABLEKS                       R30 R30 K43 ["AgeRestrictedCollaborationBadge"]
      191 CALL                             R29 1 1
      192 GETIMPORT                        R30 K45 [game]
      194 LOADK                            R32 K46 ["DontLayoutInvisibleGuiObjects"]
      195 NAMECALL                         R30 R30 K47 ["GetEngineFeature"]
      197 CALL                             R30 2 1
      198 DUPCLOSURE                       R31 K48 [PROTO_10]
      199 CAPTURE                          VAL R6
      200 CAPTURE                          VAL R5
      201 CAPTURE                          VAL R14
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R12
      205 CAPTURE                          VAL R25
      206 CAPTURE                          VAL R15
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R1
      209 CAPTURE                          VAL R11
      210 CAPTURE                          VAL R28
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R8
      213 CAPTURE                          VAL R19
      214 CAPTURE                          VAL R21
      215 CAPTURE                          VAL R26
      216 CAPTURE                          VAL R27
      217 CAPTURE                          VAL R29
      218 CAPTURE                          VAL R20
      219 CAPTURE                          VAL R24
      220 CAPTURE                          VAL R22
      221 CAPTURE                          VAL R23
      222 CAPTURE                          VAL R13
      223 CAPTURE                          VAL R9
      224 CAPTURE                          VAL R30
      225 RETURN                           R31 1
