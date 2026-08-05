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
       92 LOADNIL                          R17
       93 GETTABLEKS                       R18 R16 K17 ["LastViewed"]
       95 JUMPIFNOT                        R18 ; [+6]
       96 GETUPVAL                         R18 11
       97 GETTABLEKS                       R19 R16 K17 ["LastViewed"]
       99 MOVE                             R20 R1
      100 CALL                             R18 2 1
      101 MOVE                             R17 R18
      102 NEWTABLE                         R18 0 0
      104 GETTABLEKS                       R19 R16 K18 ["TeamCreatePresence"]
      106 JUMPIFNOT                        R19 ; [+176]
      107 LOADN                            R19 2
      108 GETTABLEKS                       R21 R16 K18 ["TeamCreatePresence"]
      110 LENGTH                           R20 R21
      111 JUMPIFNOTEQKN                    R20 K19 [3] ; [+2]
      113 LOADN                            R19 3
      114 LOADN                            R22 1
      115 GETTABLEKS                       R25 R16 K18 ["TeamCreatePresence"]
      117 LENGTH                           R24 R25
      118 FASTCALL2                        MATH_MIN R24 R19 ; [+4]
      120 MOVE                             R25 R19
      121 GETIMPORT                        R23 K22 [math.min]
      123 CALL                             R23 2 1
      124 MOVE                             R20 R23
      125 LOADN                            R21 1
      126 FORNPREP                         R20
      127 MOVE                             R24 R18
      128 GETUPVAL                         R25 9
      129 GETTABLEKS                       R25 R25 K12 ["createElement"]
      131 LOADK                            R26 K23 ["Frame"]
      132 NEWTABLE                         R27 2 0
      134 GETIMPORT                        R28 K25 [UDim2.new]
      136 LOADN                            R29 0
      137 LOADN                            R30 35
      138 LOADN                            R31 0
      139 LOADN                            R32 35
      140 CALL                             R28 4 1
      141 SETTABLEKS                       R28 R27 K14 ["Size"]
      143 GETUPVAL                         R28 9
      144 GETTABLEKS                       R28 R28 K26 ["Tag"]
      146 LOADK                            R29 K27 ["X-Fit X-Middle X-Center StartPage-TeamCreateOnlineBackground StartPage-Circular"]
      147 SETTABLE                         R29 R27 R28
      148 NEWTABLE                         R28 0 1
      150 GETUPVAL                         R29 9
      151 GETTABLEKS                       R29 R29 K12 ["createElement"]
      153 LOADK                            R30 K23 ["Frame"]
      154 NEWTABLE                         R31 2 0
      156 GETIMPORT                        R32 K25 [UDim2.new]
      158 LOADN                            R33 0
      159 LOADN                            R34 30
      160 LOADN                            R35 0
      161 LOADN                            R36 30
      162 CALL                             R32 4 1
      163 SETTABLEKS                       R32 R31 K14 ["Size"]
      165 GETUPVAL                         R32 9
      166 GETTABLEKS                       R32 R32 K26 ["Tag"]
      168 LOADK                            R33 K28 ["X-Fit X-Middle X-Center StartPage-Standard StartPage-Circular"]
      169 SETTABLE                         R33 R31 R32
      170 NEWTABLE                         R32 0 1
      172 GETUPVAL                         R33 9
      173 GETTABLEKS                       R33 R33 K12 ["createElement"]
      175 GETUPVAL                         R34 12
      176 DUPTABLE                         R35 K30 [{"Style", "Size"}]
      177 DUPTABLE                         R36 K32 [{"Image"}]
      178 GETTABLEKS                       R38 R16 K18 ["TeamCreatePresence"]
      180 GETTABLE                         R37 R38 R22
      181 SETTABLEKS                       R37 R36 K31 ["Image"]
      183 SETTABLEKS                       R36 R35 K29 ["Style"]
      185 GETIMPORT                        R36 K25 [UDim2.new]
      187 LOADN                            R37 0
      188 LOADN                            R38 30
      189 LOADN                            R39 0
      190 LOADN                            R40 30
      191 CALL                             R36 4 1
      192 SETTABLEKS                       R36 R35 K14 ["Size"]
      194 CALL                             R33 2 -1
      195 SETLIST                          R32 R33 -1 [1]
      197 CALL                             R29 3 -1
      198 SETLIST                          R28 R29 -1 [1]
      200 CALL                             R25 3 -1
      201 FASTCALL                         TABLE_INSERT ; [+2]
      202 GETIMPORT                        R23 K35 [table.insert]
      204 CALL                             R23 -1 0
      205 FORNLOOP                         R20
      206 GETTABLEKS                       R21 R16 K18 ["TeamCreatePresence"]
      208 LENGTH                           R20 R21
      209 LOADN                            R21 3
      210 JUMPIFNOTLT                      R21 R20 ; [+72]
      212 MOVE                             R21 R18
      213 GETUPVAL                         R22 9
      214 GETTABLEKS                       R22 R22 K12 ["createElement"]
      216 LOADK                            R23 K23 ["Frame"]
      217 NEWTABLE                         R24 2 0
      219 GETIMPORT                        R25 K25 [UDim2.new]
      221 LOADN                            R26 0
      222 LOADN                            R27 35
      223 LOADN                            R28 0
      224 LOADN                            R29 35
      225 CALL                             R25 4 1
      226 SETTABLEKS                       R25 R24 K14 ["Size"]
      228 GETUPVAL                         R25 9
      229 GETTABLEKS                       R25 R25 K26 ["Tag"]
      231 LOADK                            R26 K28 ["X-Fit X-Middle X-Center StartPage-Standard StartPage-Circular"]
      232 SETTABLE                         R26 R24 R25
      233 NEWTABLE                         R25 0 1
      235 GETUPVAL                         R26 9
      236 GETTABLEKS                       R26 R26 K12 ["createElement"]
      238 LOADK                            R27 K36 ["TextLabel"]
      239 NEWTABLE                         R28 8 0
      241 GETIMPORT                        R29 K25 [UDim2.new]
      243 LOADN                            R30 0
      244 LOADN                            R31 30
      245 LOADN                            R32 0
      246 LOADN                            R33 30
      247 CALL                             R29 4 1
      248 SETTABLEKS                       R29 R28 K14 ["Size"]
      250 LOADK                            R30 K37 ["+"]
      251 GETTABLEKS                       R35 R16 K18 ["TeamCreatePresence"]
      253 LENGTH                           R34 R35
      254 SUBK                             R33 R34 K19 [3]
      255 ADDK                             R32 R33 K38 [1]
      256 FASTCALL1                        TOSTRING R32 ; [+2]
      257 GETIMPORT                        R31 K40 [tostring]
      259 CALL                             R31 1 1
      260 CONCAT                           R29 R30 R31
      261 SETTABLEKS                       R29 R28 K41 ["Text"]
      263 GETIMPORT                        R29 K45 [Enum.Font.BuilderSans]
      265 SETTABLEKS                       R29 R28 K43 ["Font"]
      267 LOADN                            R29 18
      268 SETTABLEKS                       R29 R28 K46 ["TextSize"]
      270 GETUPVAL                         R29 9
      271 GETTABLEKS                       R29 R29 K26 ["Tag"]
      273 LOADK                            R30 K47 ["X-Fit X-Transparent StartPage-StandardDarkTextColor"]
      274 SETTABLE                         R30 R28 R29
      275 CALL                             R26 2 -1
      276 SETLIST                          R25 R26 -1 [1]
      278 CALL                             R22 3 -1
      279 FASTCALL                         TABLE_INSERT ; [+2]
      280 GETIMPORT                        R20 K35 [table.insert]
      282 CALL                             R20 -1 0
      283 LOADNIL                          R19
      284 GETTABLEKS                       R20 R16 K48 ["ImageUrl"]
      286 JUMPIFNOT                        R20 ; [+111]
      287 GETUPVAL                         R20 13
      288 JUMPIFNOT                        R20 ; [+109]
      289 GETUPVAL                         R20 9
      290 GETTABLEKS                       R20 R20 K12 ["createElement"]
      292 GETUPVAL                         R21 12
      293 NEWTABLE                         R22 4 0
      295 DUPTABLE                         R23 K32 [{"Image"}]
      296 GETTABLEKS                       R24 R16 K48 ["ImageUrl"]
      298 SETTABLEKS                       R24 R23 K31 ["Image"]
      300 SETTABLEKS                       R23 R22 K29 ["Style"]
      302 GETTABLEKS                       R23 R0 K49 ["ImageSize"]
      304 SETTABLEKS                       R23 R22 K14 ["Size"]
      306 MOVE                             R23 R2
      307 CALL                             R23 0 1
      308 SETTABLEKS                       R23 R22 K50 ["LayoutOrder"]
      310 GETUPVAL                         R23 9
      311 GETTABLEKS                       R23 R23 K26 ["Tag"]
      313 LOADK                            R24 K51 ["X-Corner"]
      314 SETTABLE                         R24 R22 R23
      315 DUPTABLE                         R23 K54 [{"Difficulty", "Collaborators"}]
      316 GETTABLEKS                       R25 R0 K55 ["IsDifficultyVisible"]
      318 JUMPIFNOT                        R25 ; [+58]
      319 GETTABLEKS                       R25 R16 K52 ["Difficulty"]
      321 JUMPIFNOT                        R25 ; [+55]
      322 GETTABLEKS                       R25 R16 K52 ["Difficulty"]
      324 JUMPIFEQKS                       R25 K56 [""] ; [+52]
      326 GETUPVAL                         R24 9
      327 GETTABLEKS                       R24 R24 K12 ["createElement"]
      329 LOADK                            R25 K23 ["Frame"]
      330 NEWTABLE                         R26 1 0
      332 GETUPVAL                         R27 9
      333 GETTABLEKS                       R27 R27 K26 ["Tag"]
      335 LOADK                            R28 K57 ["X-Pad X-Fill X-Top X-Left X-Transparent"]
      336 SETTABLE                         R28 R26 R27
      337 GETUPVAL                         R28 14
      338 JUMPIFNOT                        R28 ; [+16]
      339 GETUPVAL                         R27 9
      340 GETTABLEKS                       R27 R27 K12 ["createElement"]
      342 GETUPVAL                         R28 15
      343 DUPTABLE                         R29 K60 [{"text", "variant"}]
      344 GETTABLEKS                       R30 R16 K52 ["Difficulty"]
      346 SETTABLEKS                       R30 R29 K58 ["text"]
      348 GETUPVAL                         R30 16
      349 GETTABLEKS                       R30 R30 K61 ["Neutral"]
      351 SETTABLEKS                       R30 R29 K59 ["variant"]
      353 CALL                             R27 2 1
      354 JUMP                             ; [+20]
      355 NEWTABLE                         R27 0 1
      357 GETUPVAL                         R28 9
      358 GETTABLEKS                       R28 R28 K12 ["createElement"]
      360 GETUPVAL                         R29 17
      361 NEWTABLE                         R30 2 0
      363 GETTABLEKS                       R31 R16 K52 ["Difficulty"]
      365 SETTABLEKS                       R31 R30 K41 ["Text"]
      367 GETUPVAL                         R31 9
      368 GETTABLEKS                       R31 R31 K26 ["Tag"]
      370 LOADK                            R32 K62 ["X-Fit"]
      371 SETTABLE                         R32 R30 R31
      372 CALL                             R28 2 1
      373 SETLIST                          R27 R28 1 [1]
      375 CALL                             R24 3 1
      376 JUMP                             ; [+1]
      377 LOADNIL                          R24
      378 SETTABLEKS                       R24 R23 K52 ["Difficulty"]
      380 GETUPVAL                         R24 9
      381 GETTABLEKS                       R24 R24 K12 ["createElement"]
      383 LOADK                            R25 K23 ["Frame"]
      384 NEWTABLE                         R26 1 0
      386 GETUPVAL                         R27 9
      387 GETTABLEKS                       R27 R27 K26 ["Tag"]
      389 LOADK                            R28 K63 ["X-Pad X-Bottom X-Right X-Fill X-Row X-Transparent"]
      390 SETTABLE                         R28 R26 R27
      391 MOVE                             R27 R18
      392 CALL                             R24 3 1
      393 SETTABLEKS                       R24 R23 K53 ["Collaborators"]
      395 CALL                             R20 3 1
      396 MOVE                             R19 R20
      397 JUMP                             ; [+116]
      398 GETTABLEKS                       R20 R16 K48 ["ImageUrl"]
      400 JUMPIFNOT                        R20 ; [+48]
      401 GETUPVAL                         R20 13
      402 JUMPIF                           R20 ; [+46]
      403 GETUPVAL                         R20 9
      404 GETTABLEKS                       R20 R20 K12 ["createElement"]
      406 GETUPVAL                         R21 12
      407 NEWTABLE                         R22 4 0
      409 DUPTABLE                         R23 K32 [{"Image"}]
      410 GETTABLEKS                       R24 R16 K48 ["ImageUrl"]
      412 SETTABLEKS                       R24 R23 K31 ["Image"]
      414 SETTABLEKS                       R23 R22 K29 ["Style"]
      416 GETTABLEKS                       R23 R0 K49 ["ImageSize"]
      418 SETTABLEKS                       R23 R22 K14 ["Size"]
      420 MOVE                             R23 R2
      421 CALL                             R23 0 1
      422 SETTABLEKS                       R23 R22 K50 ["LayoutOrder"]
      424 GETUPVAL                         R23 9
      425 GETTABLEKS                       R23 R23 K26 ["Tag"]
      427 LOADK                            R24 K64 ["X-Corner X-Bottom X-Right"]
      428 SETTABLE                         R24 R22 R23
      429 NEWTABLE                         R23 0 1
      431 GETUPVAL                         R24 9
      432 GETTABLEKS                       R24 R24 K12 ["createElement"]
      434 LOADK                            R25 K23 ["Frame"]
      435 NEWTABLE                         R26 1 0
      437 GETUPVAL                         R27 9
      438 GETTABLEKS                       R27 R27 K26 ["Tag"]
      440 LOADK                            R28 K65 ["X-Pad X-Fit X-Row X-Transparent"]
      441 SETTABLE                         R28 R26 R27
      442 MOVE                             R27 R18
      443 CALL                             R24 3 -1
      444 SETLIST                          R23 R24 -1 [1]
      446 CALL                             R20 3 1
      447 MOVE                             R19 R20
      448 JUMP                             ; [+65]
      449 GETTABLEKS                       R20 R16 K66 ["NoLoadableImage"]
      451 JUMPIFNOT                        R20 ; [+49]
      452 GETUPVAL                         R20 9
      453 GETTABLEKS                       R20 R20 K12 ["createElement"]
      455 LOADK                            R21 K23 ["Frame"]
      456 NEWTABLE                         R22 4 0
      458 GETTABLEKS                       R23 R0 K49 ["ImageSize"]
      460 SETTABLEKS                       R23 R22 K14 ["Size"]
      462 LOADK                            R23 K67 [0.84]
      463 SETTABLEKS                       R23 R22 K68 ["BackgroundTransparency"]
      465 MOVE                             R23 R2
      466 CALL                             R23 0 1
      467 SETTABLEKS                       R23 R22 K50 ["LayoutOrder"]
      469 GETUPVAL                         R23 9
      470 GETTABLEKS                       R23 R23 K26 ["Tag"]
      472 LOADK                            R24 K69 ["X-Corner X-Center X-Middle StartPage-StandardDarkBackground"]
      473 SETTABLE                         R24 R22 R23
      474 GETUPVAL                         R23 9
      475 GETTABLEKS                       R23 R23 K12 ["createElement"]
      477 GETUPVAL                         R24 12
      478 NEWTABLE                         R25 4 0
      480 DUPTABLE                         R26 K71 [{["Image"] = "rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"}]
      481 SETTABLEKS                       R26 R25 K29 ["Style"]
      483 GETIMPORT                        R26 K25 [UDim2.new]
      485 LOADN                            R27 0
      486 LOADN                            R28 100
      487 LOADN                            R29 0
      488 LOADN                            R30 100
      489 CALL                             R26 4 1
      490 SETTABLEKS                       R26 R25 K14 ["Size"]
      492 GETUPVAL                         R26 9
      493 GETTABLEKS                       R26 R26 K26 ["Tag"]
      495 LOADK                            R27 K51 ["X-Corner"]
      496 SETTABLE                         R27 R25 R26
      497 CALL                             R23 2 -1
      498 CALL                             R20 -1 1
      499 MOVE                             R19 R20
      500 JUMP                             ; [+13]
      501 GETUPVAL                         R20 9
      502 GETTABLEKS                       R20 R20 K12 ["createElement"]
      504 GETUPVAL                         R21 10
      505 GETTABLEKS                       R21 R21 K13 ["Component"]
      507 DUPTABLE                         R22 K72 [{"Size"}]
      508 GETTABLEKS                       R23 R0 K49 ["ImageSize"]
      510 SETTABLEKS                       R23 R22 K14 ["Size"]
      512 CALL                             R20 2 1
      513 MOVE                             R19 R20
      514 GETUPVAL                         R20 9
      515 GETTABLEKS                       R20 R20 K12 ["createElement"]
      517 LOADK                            R21 K73 ["TextButton"]
      518 NEWTABLE                         R22 8 0
      520 GETTABLEKS                       R23 R0 K15 ["Position"]
      522 SETTABLEKS                       R23 R22 K15 ["Position"]
      524 GETTABLEKS                       R23 R0 K14 ["Size"]
      526 SETTABLEKS                       R23 R22 K14 ["Size"]
      528 GETUPVAL                         R23 9
      529 GETTABLEKS                       R23 R23 K74 ["Event"]
      531 GETTABLEKS                       R23 R23 K75 ["Activated"]
      533 NEWCLOSURE                       R24 P1
      534 CAPTURE                          VAL R0
      535 CAPTURE                          VAL R16
      536 CAPTURE                          VAL R6
      537 SETTABLE                         R24 R22 R23
      538 GETUPVAL                         R23 9
      539 GETTABLEKS                       R23 R23 K74 ["Event"]
      541 GETTABLEKS                       R23 R23 K76 ["SecondaryActivated"]
      543 GETUPVAL                         R25 5
      544 JUMPIFNOT                        R25 ; [+2]
      545 MOVE                             R24 R15
      546 JUMP                             ; [+1]
      547 LOADNIL                          R24
      548 SETTABLE                         R24 R22 R23
      549 GETUPVAL                         R23 9
      550 GETTABLEKS                       R23 R23 K74 ["Event"]
      552 GETTABLEKS                       R23 R23 K77 ["MouseEnter"]
      554 SETTABLE                         R3 R22 R23
      555 GETUPVAL                         R23 9
      556 GETTABLEKS                       R23 R23 K74 ["Event"]
      558 GETTABLEKS                       R23 R23 K78 ["MouseLeave"]
      560 SETTABLE                         R4 R22 R23
      561 GETUPVAL                         R23 9
      562 GETTABLEKS                       R23 R23 K26 ["Tag"]
      564 LOADK                            R24 K79 ["X-Transparent data-testid=--start-page-InfoTile"]
      565 SETTABLE                         R24 R22 R23
      566 DUPTABLE                         R23 K81 [{"Child"}]
      567 GETUPVAL                         R24 9
      568 GETTABLEKS                       R24 R24 K12 ["createElement"]
      570 LOADK                            R25 K23 ["Frame"]
      571 NEWTABLE                         R26 1 0
      573 GETUPVAL                         R27 9
      574 GETTABLEKS                       R27 R27 K26 ["Tag"]
      576 LOADK                            R28 K82 ["X-Fill StartPage-TileBackground StartPage-TilePadding StartPage-RoundedCorner8 X-Column"]
      577 SETTABLE                         R28 R26 R27
      578 DUPTABLE                         R27 K84 [{"Image", "Body"}]
      579 SETTABLEKS                       R19 R27 K31 ["Image"]
      581 GETUPVAL                         R28 9
      582 GETTABLEKS                       R28 R28 K12 ["createElement"]
      584 LOADK                            R29 K23 ["Frame"]
      585 NEWTABLE                         R30 2 0
      587 MOVE                             R31 R2
      588 CALL                             R31 0 1
      589 SETTABLEKS                       R31 R30 K50 ["LayoutOrder"]
      591 GETUPVAL                         R31 9
      592 GETTABLEKS                       R31 R31 K26 ["Tag"]
      594 LOADK                            R32 K85 ["X-Fit X-Row StartPage-DescPadding X-Transparent"]
      595 SETTABLE                         R32 R30 R31
      596 DUPTABLE                         R31 K89 [{"Options", "Kebab", "Focus"}]
      597 GETUPVAL                         R32 9
      598 GETTABLEKS                       R32 R32 K12 ["createElement"]
      600 LOADK                            R33 K23 ["Frame"]
      601 NEWTABLE                         R34 4 0
      603 GETIMPORT                        R35 K25 [UDim2.new]
      605 LOADN                            R36 0
      606 LOADN                            R37 170
      607 LOADN                            R38 1
      608 LOADN                            R39 -200
      609 CALL                             R35 4 1
      610 SETTABLEKS                       R35 R34 K14 ["Size"]
      612 MOVE                             R35 R2
      613 CALL                             R35 0 1
      614 SETTABLEKS                       R35 R34 K50 ["LayoutOrder"]
      616 GETUPVAL                         R35 9
      617 GETTABLEKS                       R35 R35 K26 ["Tag"]
      619 LOADK                            R36 K90 ["X-Fit X-Top StartPage-SearchResultRowColumn X-Transparent"]
      620 SETTABLE                         R36 R34 R35
      621 DUPTABLE                         R35 K98 [{"Privacy", "Title", "CollaborationRestriction", "FormattedDate", "Description", "CreatorName", "Categories"}]
      622 GETTABLEKS                       R37 R0 K99 ["IsPrivacyVisible"]
      624 JUMPIFNOT                        R37 ; [+176]
      625 GETTABLEKS                       R37 R16 K100 ["PrivacyType"]
      627 JUMPIF                           R37 ; [+5]
      628 GETUPVAL                         R37 18
      629 JUMPIFNOT                        R37 ; [+171]
      630 GETTABLEKS                       R37 R16 K101 ["Audiences"]
      632 JUMPIFNOT                        R37 ; [+168]
      633 GETUPVAL                         R36 9
      634 GETTABLEKS                       R36 R36 K12 ["createElement"]
      636 LOADK                            R37 K23 ["Frame"]
      637 NEWTABLE                         R38 2 0
      639 MOVE                             R39 R2
      640 CALL                             R39 0 1
      641 SETTABLEKS                       R39 R38 K50 ["LayoutOrder"]
      643 GETUPVAL                         R39 9
      644 GETTABLEKS                       R39 R39 K26 ["Tag"]
      646 LOADK                            R40 K102 ["X-RowS X-Fit X-Transparent"]
      647 SETTABLE                         R40 R38 R39
      648 DUPTABLE                         R39 K105 [{"PrivacyBadge", "BuildSealBadge"}]
      649 GETUPVAL                         R41 19
      650 JUMPIFNOT                        R41 ; [+63]
      651 GETUPVAL                         R40 9
      652 GETTABLEKS                       R40 R40 K12 ["createElement"]
      654 GETUPVAL                         R41 20
      655 DUPTABLE                         R42 K115 [{"PrivacyType", "Audiences", "ContentMaturity", "IsFriendsOnly", "CreatorType", "CoreContentSelectStatus", "CoreContentReasons", "IsBeta", "AgeRecommendation", "IsSequestered", "IsDiscoveryBlocked", "LayoutOrder"}]
      656 GETTABLEKS                       R43 R16 K100 ["PrivacyType"]
      658 SETTABLEKS                       R43 R42 K100 ["PrivacyType"]
      660 GETUPVAL                         R44 18
      661 JUMPIFNOT                        R44 ; [+3]
      662 GETTABLEKS                       R43 R16 K101 ["Audiences"]
      664 JUMP                             ; [+1]
      665 LOADNIL                          R43
      666 SETTABLEKS                       R43 R42 K101 ["Audiences"]
      668 GETTABLEKS                       R43 R16 K106 ["ContentMaturity"]
      670 SETTABLEKS                       R43 R42 K106 ["ContentMaturity"]
      672 GETTABLEKS                       R43 R16 K107 ["IsFriendsOnly"]
      674 SETTABLEKS                       R43 R42 K107 ["IsFriendsOnly"]
      676 GETTABLEKS                       R43 R16 K108 ["CreatorType"]
      678 SETTABLEKS                       R43 R42 K108 ["CreatorType"]
      680 GETTABLEKS                       R43 R16 K109 ["CoreContentSelectStatus"]
      682 SETTABLEKS                       R43 R42 K109 ["CoreContentSelectStatus"]
      684 GETTABLEKS                       R43 R16 K110 ["CoreContentReasons"]
      686 SETTABLEKS                       R43 R42 K110 ["CoreContentReasons"]
      688 GETUPVAL                         R44 21
      689 JUMPIFNOT                        R44 ; [+2]
      690 LOADNIL                          R43
      691 JUMP                             ; [+2]
      692 GETTABLEKS                       R43 R16 K111 ["IsBeta"]
      694 SETTABLEKS                       R43 R42 K111 ["IsBeta"]
      696 GETTABLEKS                       R43 R16 K112 ["AgeRecommendation"]
      698 SETTABLEKS                       R43 R42 K112 ["AgeRecommendation"]
      700 GETTABLEKS                       R43 R16 K113 ["IsSequestered"]
      702 SETTABLEKS                       R43 R42 K113 ["IsSequestered"]
      704 GETTABLEKS                       R43 R16 K114 ["IsDiscoveryBlocked"]
      706 SETTABLEKS                       R43 R42 K114 ["IsDiscoveryBlocked"]
      708 MOVE                             R43 R2
      709 CALL                             R43 0 1
      710 SETTABLEKS                       R43 R42 K50 ["LayoutOrder"]
      712 CALL                             R40 2 1
      713 JUMP                             ; [+52]
      714 GETUPVAL                         R41 14
      715 JUMPIFNOT                        R41 ; [+25]
      716 GETUPVAL                         R40 9
      717 GETTABLEKS                       R40 R40 K12 ["createElement"]
      719 GETUPVAL                         R41 15
      720 DUPTABLE                         R42 K60 [{"text", "variant"}]
      721 LOADK                            R45 K116 ["Plugin"]
      722 LOADK                            R47 K117 ["PrivacyType.%*"]
      723 GETTABLEKS                       R49 R16 K100 ["PrivacyType"]
      725 NAMECALL                         R47 R47 K118 ["format"]
      727 CALL                             R47 2 1
      728 MOVE                             R46 R47
      729 NAMECALL                         R43 R1 K119 ["getText"]
      731 CALL                             R43 3 1
      732 SETTABLEKS                       R43 R42 K58 ["text"]
      734 GETUPVAL                         R43 16
      735 GETTABLEKS                       R43 R43 K61 ["Neutral"]
      737 SETTABLEKS                       R43 R42 K59 ["variant"]
      739 CALL                             R40 2 1
      740 JUMP                             ; [+25]
      741 GETUPVAL                         R40 9
      742 GETTABLEKS                       R40 R40 K12 ["createElement"]
      744 GETUPVAL                         R41 17
      745 NEWTABLE                         R42 2 0
      747 LOADK                            R45 K116 ["Plugin"]
      748 LOADK                            R47 K117 ["PrivacyType.%*"]
      749 GETTABLEKS                       R49 R16 K100 ["PrivacyType"]
      751 NAMECALL                         R47 R47 K118 ["format"]
      753 CALL                             R47 2 1
      754 MOVE                             R46 R47
      755 NAMECALL                         R43 R1 K119 ["getText"]
      757 CALL                             R43 3 1
      758 SETTABLEKS                       R43 R42 K41 ["Text"]
      760 GETUPVAL                         R43 9
      761 GETTABLEKS                       R43 R43 K26 ["Tag"]
      763 LOADK                            R44 K62 ["X-Fit"]
      764 SETTABLE                         R44 R42 R43
      765 CALL                             R40 2 1
      766 SETTABLEKS                       R40 R39 K103 ["PrivacyBadge"]
      768 GETUPVAL                         R41 22
      769 JUMPIFNOT                        R41 ; [+26]
      770 GETTABLEKS                       R41 R16 K120 ["IsBuildSealed"]
      772 JUMPIFNOT                        R41 ; [+23]
      773 GETUPVAL                         R40 9
      774 GETTABLEKS                       R40 R40 K12 ["createElement"]
      776 GETUPVAL                         R41 15
      777 DUPTABLE                         R42 K121 [{"text", "variant", "LayoutOrder"}]
      778 LOADK                            R45 K116 ["Plugin"]
      779 LOADK                            R46 K104 ["BuildSealBadge"]
      780 NAMECALL                         R43 R1 K119 ["getText"]
      782 CALL                             R43 3 1
      783 SETTABLEKS                       R43 R42 K58 ["text"]
      785 GETUPVAL                         R43 16
      786 GETTABLEKS                       R43 R43 K122 ["Contrast"]
      788 SETTABLEKS                       R43 R42 K59 ["variant"]
      790 MOVE                             R43 R2
      791 CALL                             R43 0 1
      792 SETTABLEKS                       R43 R42 K50 ["LayoutOrder"]
      794 CALL                             R40 2 1
      795 JUMP                             ; [+1]
      796 LOADNIL                          R40
      797 SETTABLEKS                       R40 R39 K104 ["BuildSealBadge"]
      799 CALL                             R36 3 1
      800 JUMP                             ; [+1]
      801 LOADNIL                          R36
      802 SETTABLEKS                       R36 R35 K91 ["Privacy"]
      804 GETUPVAL                         R36 9
      805 GETTABLEKS                       R36 R36 K12 ["createElement"]
      807 LOADK                            R37 K36 ["TextLabel"]
      808 NEWTABLE                         R38 8 0
      810 GETIMPORT                        R39 K125 [Enum.AutomaticSize.Y]
      812 SETTABLEKS                       R39 R38 K123 ["AutomaticSize"]
      814 GETTABLEKS                       R39 R16 K126 ["Name"]
      816 SETTABLEKS                       R39 R38 K41 ["Text"]
      818 LOADB                            R39 1
      819 SETTABLEKS                       R39 R38 K127 ["TextWrapped"]
      821 GETIMPORT                        R39 K130 [Enum.TextTruncate.AtEnd]
      823 SETTABLEKS                       R39 R38 K128 ["TextTruncate"]
      825 GETIMPORT                        R39 K133 [Enum.TextXAlignment.Left]
      827 SETTABLEKS                       R39 R38 K131 ["TextXAlignment"]
      829 GETIMPORT                        R39 K25 [UDim2.new]
      831 LOADN                            R40 1
      832 LOADN                            R41 -30
      833 LOADN                            R42 0
      834 LOADN                            R43 0
      835 CALL                             R39 4 1
      836 SETTABLEKS                       R39 R38 K14 ["Size"]
      838 MOVE                             R39 R2
      839 CALL                             R39 0 1
      840 SETTABLEKS                       R39 R38 K50 ["LayoutOrder"]
      842 GETUPVAL                         R39 9
      843 GETTABLEKS                       R39 R39 K26 ["Tag"]
      845 LOADK                            R40 K134 ["StartPage-TextColor StartPage-TextSize StartPage-FontBold X-Transparent"]
      846 SETTABLE                         R40 R38 R39
      847 DUPTABLE                         R39 K72 [{"Size"}]
      848 GETUPVAL                         R40 9
      849 GETTABLEKS                       R40 R40 K12 ["createElement"]
      851 LOADK                            R41 K135 ["UISizeConstraint"]
      852 DUPTABLE                         R42 K137 [{"MaxSize"}]
      853 GETIMPORT                        R43 K4 [Vector2.new]
      855 LOADK                            R44 K138 [∞]
      856 LOADN                            R45 50
      857 CALL                             R43 2 1
      858 SETTABLEKS                       R43 R42 K136 ["MaxSize"]
      860 CALL                             R40 2 1
      861 SETTABLEKS                       R40 R39 K14 ["Size"]
      863 CALL                             R36 3 1
      864 SETTABLEKS                       R36 R35 K92 ["Title"]
      866 GETUPVAL                         R37 23
      867 JUMPIFNOT                        R37 ; [+43]
      868 GETTABLEKS                       R37 R16 K139 ["IsGame"]
      870 JUMPIFNOT                        R37 ; [+40]
      871 GETTABLEKS                       R37 R16 K140 ["IsAgeRestrictedCollaboration"]
      873 JUMPIFNOT                        R37 ; [+37]
      874 GETUPVAL                         R36 9
      875 GETTABLEKS                       R36 R36 K12 ["createElement"]
      877 LOADK                            R37 K23 ["Frame"]
      878 NEWTABLE                         R38 2 0
      880 MOVE                             R39 R2
      881 CALL                             R39 0 1
      882 SETTABLEKS                       R39 R38 K50 ["LayoutOrder"]
      884 GETUPVAL                         R39 9
      885 GETTABLEKS                       R39 R39 K26 ["Tag"]
      887 LOADK                            R40 K141 ["X-Fit X-Transparent"]
      888 SETTABLE                         R40 R38 R39
      889 DUPTABLE                         R39 K143 [{"Badge"}]
      890 GETUPVAL                         R40 9
      891 GETTABLEKS                       R40 R40 K12 ["createElement"]
      893 GETUPVAL                         R41 24
      894 DUPTABLE                         R42 K146 [{"label", "UniverseId"}]
      895 LOADK                            R45 K116 ["Plugin"]
      896 LOADK                            R46 K147 ["ExperienceStatus.Collaborate"]
      897 NAMECALL                         R43 R1 K119 ["getText"]
      899 CALL                             R43 3 1
      900 SETTABLEKS                       R43 R42 K144 ["label"]
      902 GETTABLEKS                       R43 R16 K148 ["Id"]
      904 SETTABLEKS                       R43 R42 K145 ["UniverseId"]
      906 CALL                             R40 2 1
      907 SETTABLEKS                       R40 R39 K142 ["Badge"]
      909 CALL                             R36 3 1
      910 JUMP                             ; [+1]
      911 LOADNIL                          R36
      912 SETTABLEKS                       R36 R35 K93 ["CollaborationRestriction"]
      914 JUMPIFNOT                        R17 ; [+37]
      915 GETTABLEKS                       R37 R0 K149 ["IsDateModifiedVisible"]
      917 JUMPIFNOT                        R37 ; [+34]
      918 GETUPVAL                         R36 9
      919 GETTABLEKS                       R36 R36 K12 ["createElement"]
      921 LOADK                            R37 K36 ["TextLabel"]
      922 NEWTABLE                         R38 8 0
      924 LOADK                            R41 K116 ["Plugin"]
      925 LOADK                            R42 K150 ["LastModified"]
      926 DUPTABLE                         R43 K152 [{"lastModified"}]
      927 SETTABLEKS                       R17 R43 K151 ["lastModified"]
      929 NAMECALL                         R39 R1 K119 ["getText"]
      931 CALL                             R39 4 1
      932 SETTABLEKS                       R39 R38 K41 ["Text"]
      934 LOADN                            R39 12
      935 SETTABLEKS                       R39 R38 K46 ["TextSize"]
      937 GETIMPORT                        R39 K133 [Enum.TextXAlignment.Left]
      939 SETTABLEKS                       R39 R38 K131 ["TextXAlignment"]
      941 MOVE                             R39 R2
      942 CALL                             R39 0 1
      943 SETTABLEKS                       R39 R38 K50 ["LayoutOrder"]
      945 GETUPVAL                         R39 9
      946 GETTABLEKS                       R39 R39 K26 ["Tag"]
      948 LOADK                            R40 K153 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      949 SETTABLE                         R40 R38 R39
      950 CALL                             R36 2 1
      951 JUMP                             ; [+1]
      952 LOADNIL                          R36
      953 SETTABLEKS                       R36 R35 K94 ["FormattedDate"]
      955 GETTABLEKS                       R37 R16 K95 ["Description"]
      957 JUMPIFNOT                        R37 ; [+34]
      958 GETTABLEKS                       R37 R0 K154 ["IsDescriptionVisible"]
      960 JUMPIFNOT                        R37 ; [+31]
      961 GETUPVAL                         R36 9
      962 GETTABLEKS                       R36 R36 K12 ["createElement"]
      964 LOADK                            R37 K36 ["TextLabel"]
      965 NEWTABLE                         R38 8 0
      967 GETTABLEKS                       R39 R16 K95 ["Description"]
      969 SETTABLEKS                       R39 R38 K41 ["Text"]
      971 LOADN                            R39 12
      972 SETTABLEKS                       R39 R38 K46 ["TextSize"]
      974 LOADB                            R39 1
      975 SETTABLEKS                       R39 R38 K127 ["TextWrapped"]
      977 GETIMPORT                        R39 K133 [Enum.TextXAlignment.Left]
      979 SETTABLEKS                       R39 R38 K131 ["TextXAlignment"]
      981 MOVE                             R39 R2
      982 CALL                             R39 0 1
      983 SETTABLEKS                       R39 R38 K50 ["LayoutOrder"]
      985 GETUPVAL                         R39 9
      986 GETTABLEKS                       R39 R39 K26 ["Tag"]
      988 LOADK                            R40 K153 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      989 SETTABLE                         R40 R38 R39
      990 CALL                             R36 2 1
      991 JUMP                             ; [+1]
      992 LOADNIL                          R36
      993 SETTABLEKS                       R36 R35 K95 ["Description"]
      995 GETTABLEKS                       R37 R16 K96 ["CreatorName"]
      997 JUMPIFNOT                        R37 ; [+34]
      998 GETTABLEKS                       R37 R0 K155 ["IsCreatorNameVisible"]
     1000 JUMPIFNOT                        R37 ; [+31]
     1001 GETUPVAL                         R36 9
     1002 GETTABLEKS                       R36 R36 K12 ["createElement"]
     1004 LOADK                            R37 K36 ["TextLabel"]
     1005 NEWTABLE                         R38 8 0
     1007 GETTABLEKS                       R39 R16 K96 ["CreatorName"]
     1009 SETTABLEKS                       R39 R38 K41 ["Text"]
     1011 LOADN                            R39 12
     1012 SETTABLEKS                       R39 R38 K46 ["TextSize"]
     1014 LOADB                            R39 1
     1015 SETTABLEKS                       R39 R38 K127 ["TextWrapped"]
     1017 GETIMPORT                        R39 K133 [Enum.TextXAlignment.Left]
     1019 SETTABLEKS                       R39 R38 K131 ["TextXAlignment"]
     1021 MOVE                             R39 R2
     1022 CALL                             R39 0 1
     1023 SETTABLEKS                       R39 R38 K50 ["LayoutOrder"]
     1025 GETUPVAL                         R39 9
     1026 GETTABLEKS                       R39 R39 K26 ["Tag"]
     1028 LOADK                            R40 K153 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
     1029 SETTABLE                         R40 R38 R39
     1030 CALL                             R36 2 1
     1031 JUMP                             ; [+1]
     1032 LOADNIL                          R36
     1033 SETTABLEKS                       R36 R35 K96 ["CreatorName"]
     1035 GETUPVAL                         R37 13
     1036 JUMPIFNOT                        R37 ; [+48]
     1037 GETTABLEKS                       R37 R16 K97 ["Categories"]
     1039 JUMPIFNOT                        R37 ; [+45]
     1040 GETTABLEKS                       R37 R0 K156 ["IsCategoriesVisible"]
     1042 JUMPIFNOT                        R37 ; [+42]
     1043 GETUPVAL                         R36 9
     1044 GETTABLEKS                       R36 R36 K12 ["createElement"]
     1046 LOADK                            R37 K36 ["TextLabel"]
     1047 NEWTABLE                         R38 8 0
     1049 LOADK                            R40 K157 ["<i>"]
     1050 GETIMPORT                        R43 K159 [table.concat]
     1052 GETTABLEKS                       R44 R16 K97 ["Categories"]
     1054 LOADK                            R45 K160 [", "]
     1055 CALL                             R43 2 1
     1056 MOVE                             R41 R43
     1057 LOADK                            R42 K161 ["</i>"]
     1058 CONCAT                           R39 R40 R42
     1059 SETTABLEKS                       R39 R38 K41 ["Text"]
     1061 LOADN                            R39 12
     1062 SETTABLEKS                       R39 R38 K46 ["TextSize"]
     1064 LOADB                            R39 1
     1065 SETTABLEKS                       R39 R38 K127 ["TextWrapped"]
     1067 LOADB                            R39 1
     1068 SETTABLEKS                       R39 R38 K162 ["RichText"]
     1070 GETIMPORT                        R39 K133 [Enum.TextXAlignment.Left]
     1072 SETTABLEKS                       R39 R38 K131 ["TextXAlignment"]
     1074 MOVE                             R39 R2
     1075 CALL                             R39 0 1
     1076 SETTABLEKS                       R39 R38 K50 ["LayoutOrder"]
     1078 GETUPVAL                         R39 9
     1079 GETTABLEKS                       R39 R39 K26 ["Tag"]
     1081 LOADK                            R40 K153 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
     1082 SETTABLE                         R40 R38 R39
     1083 CALL                             R36 2 1
     1084 JUMP                             ; [+1]
     1085 LOADNIL                          R36
     1086 SETTABLEKS                       R36 R35 K97 ["Categories"]
     1088 CALL                             R32 3 1
     1089 SETTABLEKS                       R32 R31 K86 ["Options"]
     1091 GETTABLEKS                       R33 R0 K10 ["IsDropdownMenuVisible"]
     1093 JUMPIFNOT                        R33 ; [+43]
     1094 GETUPVAL                         R33 5
     1095 JUMPIFNOT                        R33 ; [+41]
     1096 LENGTH                           R33 R14
     1097 LOADN                            R34 0
     1098 JUMPIFNOTLT                      R34 R33 ; [+36]
     1100 GETUPVAL                         R32 9
     1101 GETTABLEKS                       R32 R32 K12 ["createElement"]
     1103 GETUPVAL                         R33 25
     1104 DUPTABLE                         R34 K169 [{["ref"], ["icon"], ["size"], ["variant"], ["LayoutOrder"], ["testId"] = "--start-page-TileKebab", ["onActivated"]}]
     1105 SETTABLEKS                       R11 R34 K163 ["ref"]
     1107 GETUPVAL                         R35 26
     1108 GETTABLEKS                       R35 R35 K170 ["ThreeDotsVertical"]
     1110 SETTABLEKS                       R35 R34 K164 ["icon"]
     1112 GETUPVAL                         R35 27
     1113 GETTABLEKS                       R35 R35 K171 ["Small"]
     1115 SETTABLEKS                       R35 R34 K165 ["size"]
     1117 GETUPVAL                         R35 28
     1118 GETTABLEKS                       R35 R35 K172 ["Utility"]
     1120 SETTABLEKS                       R35 R34 K59 ["variant"]
     1122 MOVE                             R35 R2
     1123 CALL                             R35 0 1
     1124 SETTABLEKS                       R35 R34 K50 ["LayoutOrder"]
     1126 NEWCLOSURE                       R35 P2
     1127 CAPTURE                          VAL R11
     1128 CAPTURE                          REF R12
     1129 CAPTURE                          VAL R6
     1130 CAPTURE                          VAL R5
     1131 SETTABLEKS                       R35 R34 K168 ["onActivated"]
     1133 CALL                             R32 2 1
     1134 JUMP                             ; [+66]
     1135 LOADNIL                          R32
     1136 JUMP                             ; [+64]
     1137 GETTABLEKS                       R33 R0 K10 ["IsDropdownMenuVisible"]
     1139 JUMPIFNOT                        R33 ; [+60]
     1140 GETUPVAL                         R32 9
     1141 GETTABLEKS                       R32 R32 K12 ["createElement"]
     1143 LOADK                            R33 K173 ["ImageButton"]
     1144 NEWTABLE                         R34 8 0
     1146 GETIMPORT                        R35 K25 [UDim2.new]
     1148 LOADN                            R36 1
     1149 LOADN                            R37 -32
     1150 LOADN                            R38 0
     1151 LOADN                            R39 0
     1152 CALL                             R35 4 1
     1153 SETTABLEKS                       R35 R34 K15 ["Position"]
     1155 LOADB                            R35 0
     1156 SETTABLEKS                       R35 R34 K174 ["Selectable"]
     1158 GETUPVAL                         R35 9
     1159 GETTABLEKS                       R35 R35 K74 ["Event"]
     1161 GETTABLEKS                       R35 R35 K75 ["Activated"]
     1163 NEWCLOSURE                       R36 P3
     1164 CAPTURE                          VAL R6
     1165 CAPTURE                          VAL R5
     1166 SETTABLE                         R36 R34 R35
     1167 GETUPVAL                         R35 9
     1168 GETTABLEKS                       R35 R35 K74 ["Event"]
     1170 GETTABLEKS                       R35 R35 K77 ["MouseEnter"]
     1172 SETTABLE                         R3 R34 R35
     1173 GETUPVAL                         R35 9
     1174 GETTABLEKS                       R35 R35 K74 ["Event"]
     1176 GETTABLEKS                       R35 R35 K78 ["MouseLeave"]
     1178 SETTABLE                         R4 R34 R35
     1179 GETUPVAL                         R35 9
     1180 GETTABLEKS                       R35 R35 K175 ["Change"]
     1182 GETTABLEKS                       R35 R35 K176 ["AbsolutePosition"]
     1184 NEWCLOSURE                       R36 P4
     1185 CAPTURE                          VAL R8
     1186 SETTABLE                         R36 R34 R35
     1187 MOVE                             R35 R2
     1188 CALL                             R35 0 1
     1189 SETTABLEKS                       R35 R34 K50 ["LayoutOrder"]
     1191 GETUPVAL                         R35 9
     1192 GETTABLEKS                       R35 R35 K26 ["Tag"]
     1194 LOADK                            R36 K177 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
     1195 SETTABLE                         R36 R34 R35
     1196 NEWTABLE                         R35 0 0
     1198 CALL                             R32 3 1
     1199 JUMP                             ; [+1]
     1200 LOADNIL                          R32
     1201 SETTABLEKS                       R32 R31 K87 ["Kebab"]
     1203 JUMPIFNOT                        R5 ; [+120]
     1204 GETUPVAL                         R33 5
     1205 JUMPIFNOT                        R33 ; [+21]
     1206 GETUPVAL                         R32 9
     1207 GETTABLEKS                       R32 R32 K12 ["createElement"]
     1209 GETUPVAL                         R33 29
     1210 DUPTABLE                         R34 K183 [{"isOpen", "actions", "onClose", "onItemActivated", "anchorRef"}]
     1211 SETTABLEKS                       R5 R34 K178 ["isOpen"]
     1213 SETTABLEKS                       R14 R34 K179 ["actions"]
     1215 NEWCLOSURE                       R35 P5
     1216 CAPTURE                          VAL R6
     1217 SETTABLEKS                       R35 R34 K180 ["onClose"]
     1219 NEWCLOSURE                       R35 P6
     1220 CAPTURE                          VAL R6
     1221 SETTABLEKS                       R35 R34 K181 ["onItemActivated"]
     1223 SETTABLEKS                       R12 R34 K182 ["anchorRef"]
     1225 CALL                             R32 2 1
     1226 JUMP                             ; [+98]
     1227 GETUPVAL                         R32 9
     1228 GETTABLEKS                       R32 R32 K12 ["createElement"]
     1230 GETUPVAL                         R33 30
     1231 NEWTABLE                         R34 2 0
     1233 NEWCLOSURE                       R35 P7
     1234 CAPTURE                          VAL R6
     1235 SETTABLEKS                       R35 R34 K184 ["OnFocusLost"]
     1237 GETUPVAL                         R35 9
     1238 GETTABLEKS                       R35 R35 K26 ["Tag"]
     1240 LOADK                            R36 K185 ["X-Fill X-Transparent"]
     1241 SETTABLE                         R36 R34 R35
     1242 GETUPVAL                         R35 9
     1243 GETTABLEKS                       R35 R35 K12 ["createElement"]
     1245 GETUPVAL                         R36 29
     1246 NEWTABLE                         R37 8 0
     1248 GETUPVAL                         R39 31
     1249 JUMPIFNOT                        R39 ; [+11]
     1250 GETIMPORT                        R38 K25 [UDim2.new]
     1252 LOADN                            R39 0
     1253 GETTABLEKS                       R41 R7 K187 ["X"]
     1255 ADDK                             R40 R41 K186 [32]
     1256 LOADN                            R41 0
     1257 GETTABLEKS                       R42 R7 K124 ["Y"]
     1259 CALL                             R38 4 1
     1260 JUMP                             ; [+16]
     1261 GETIMPORT                        R38 K25 [UDim2.new]
     1263 LOADN                            R39 0
     1264 GETTABLEKS                       R42 R7 K187 ["X"]
     1266 GETTABLEKS                       R43 R9 K187 ["X"]
     1268 SUB                              R41 R42 R43
     1269 ADDK                             R40 R41 K186 [32]
     1270 LOADN                            R41 0
     1271 GETTABLEKS                       R43 R7 K124 ["Y"]
     1273 GETTABLEKS                       R44 R9 K124 ["Y"]
     1275 SUB                              R42 R43 R44
     1276 CALL                             R38 4 1
     1277 SETTABLEKS                       R38 R37 K15 ["Position"]
     1279 GETUPVAL                         R39 31
     1280 JUMPIFNOT                        R39 ; [+2]
     1281 NOT                              R38 R5
     1282 JUMP                             ; [+13]
     1283 NOT                              R38 R5
     1284 JUMPIF                           R38 ; [+11]
     1285 LOADB                            R38 1
     1286 GETTABLEKS                       R39 R9 K187 ["X"]
     1288 JUMPIFEQKN                       R39 K188 [0] ; [+7]
     1290 GETTABLEKS                       R39 R9 K124 ["Y"]
     1292 JUMPIFEQKN                       R39 K188 [0] ; [+2]
     1294 LOADB                            R38 0 +1
     1295 LOADB                            R38 1
     1296 SETTABLEKS                       R38 R37 K189 ["Hide"]
     1298 GETTABLEKS                       R38 R0 K190 ["KebabMenu"]
     1300 SETTABLEKS                       R38 R37 K190 ["KebabMenu"]
     1302 SETTABLEKS                       R16 R37 K8 ["Cell"]
     1304 NEWCLOSURE                       R38 P8
     1305 CAPTURE                          VAL R6
     1306 SETTABLEKS                       R38 R37 K191 ["OnItemActivated"]
     1308 NEWCLOSURE                       R38 P9
     1309 CAPTURE                          VAL R10
     1310 SETTABLEKS                       R38 R37 K192 ["MenuContainerSizeChanged"]
     1312 GETUPVAL                         R38 9
     1313 GETTABLEKS                       R38 R38 K26 ["Tag"]
     1315 GETUPVAL                         R40 31
     1316 JUMPIFNOT                        R40 ; [+2]
     1317 LOADK                            R39 K193 ["StartPage-Anchor-Bottom-Right"]
     1318 JUMP                             ; [+1]
     1319 LOADNIL                          R39
     1320 SETTABLE                         R39 R37 R38
     1321 CALL                             R35 2 -1
     1322 CALL                             R32 -1 1
     1323 JUMP                             ; [+1]
     1324 LOADNIL                          R32
     1325 SETTABLEKS                       R32 R31 K88 ["Focus"]
     1327 CALL                             R28 3 1
     1328 SETTABLEKS                       R28 R27 K83 ["Body"]
     1330 CALL                             R24 3 1
     1331 SETTABLEKS                       R24 R23 K80 ["Child"]
     1333 CALL                             R20 3 -1
     1334 CLOSEUPVALS                      R12
     1335 RETURN                           R20 -1

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
       59 GETTABLEKS                       R7 R0 K6 ["Src"]
       61 GETTABLEKS                       R7 R7 K7 ["SharedFlags"]
       63 GETTABLEKS                       R7 R7 K13 ["getFFlagStartPageAddBuildSealBadge"]
       65 CALL                             R6 1 1
       66 CALL                             R6 0 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETTABLEKS                       R8 R0 K6 ["Src"]
       71 GETTABLEKS                       R8 R8 K7 ["SharedFlags"]
       73 GETTABLEKS                       R8 R8 K14 ["getFFlagRemoveUnusedStartPageApis"]
       75 CALL                             R7 1 1
       76 CALL                             R7 0 1
       77 GETIMPORT                        R8 K5 [require]
       79 GETTABLEKS                       R9 R0 K15 ["Packages"]
       81 GETTABLEKS                       R9 R9 K16 ["React"]
       83 CALL                             R8 1 1
       84 GETTABLEKS                       R9 R8 K17 ["useState"]
       86 GETTABLEKS                       R10 R8 K18 ["useRef"]
       88 GETIMPORT                        R11 K5 [require]
       90 GETTABLEKS                       R12 R0 K15 ["Packages"]
       92 GETTABLEKS                       R12 R12 K19 ["Framework"]
       94 CALL                             R11 1 1
       95 GETTABLEKS                       R12 R11 K20 ["Util"]
       97 GETTABLEKS                       R12 R12 K21 ["counter"]
       99 GETTABLEKS                       R13 R11 K22 ["ContextServices"]
      101 GETTABLEKS                       R13 R13 K23 ["Localization"]
      103 GETTABLEKS                       R14 R11 K24 ["UI"]
      105 GETTABLEKS                       R15 R14 K25 ["Image"]
      107 GETTABLEKS                       R16 R14 K26 ["CaptureFocus"]
      109 GETIMPORT                        R17 K5 [require]
      111 GETTABLEKS                       R18 R0 K6 ["Src"]
      113 GETTABLEKS                       R18 R18 K27 ["Types"]
      115 CALL                             R17 1 1
      116 GETIMPORT                        R18 K5 [require]
      118 GETTABLEKS                       R19 R0 K6 ["Src"]
      120 GETTABLEKS                       R19 R19 K28 ["Components"]
      122 GETTABLEKS                       R19 R19 K29 ["Shimmer"]
      124 CALL                             R18 1 1
      125 GETIMPORT                        R19 K5 [require]
      127 GETTABLEKS                       R20 R0 K6 ["Src"]
      129 GETTABLEKS                       R20 R20 K7 ["SharedFlags"]
      131 GETTABLEKS                       R20 R20 K30 ["getFFlagLuaStartPageTableContextMenu"]
      133 CALL                             R19 1 1
      134 CALL                             R19 0 1
      135 JUMPIFNOT                        R19 ; [+12]
      136 GETIMPORT                        R20 K5 [require]
      138 GETTABLEKS                       R21 R0 K6 ["Src"]
      140 GETTABLEKS                       R21 R21 K31 ["Foundation"]
      142 GETTABLEKS                       R21 R21 K28 ["Components"]
      144 GETTABLEKS                       R21 R21 K32 ["ContextMenu"]
      146 CALL                             R20 1 1
      147 JUMP                             ; [+9]
      148 GETIMPORT                        R20 K5 [require]
      150 GETTABLEKS                       R21 R0 K6 ["Src"]
      152 GETTABLEKS                       R21 R21 K28 ["Components"]
      154 GETTABLEKS                       R21 R21 K32 ["ContextMenu"]
      156 CALL                             R20 1 1
      157 GETIMPORT                        R21 K5 [require]
      159 GETTABLEKS                       R22 R0 K6 ["Src"]
      161 GETTABLEKS                       R22 R22 K28 ["Components"]
      163 GETTABLEKS                       R22 R22 K33 ["Pill"]
      165 CALL                             R21 1 1
      166 GETIMPORT                        R22 K5 [require]
      168 GETTABLEKS                       R23 R0 K6 ["Src"]
      170 GETTABLEKS                       R23 R23 K34 ["Hooks"]
      172 GETTABLEKS                       R23 R23 K35 ["useCursor"]
      174 CALL                             R22 1 1
      175 GETIMPORT                        R23 K5 [require]
      177 GETTABLEKS                       R24 R0 K6 ["Src"]
      179 GETTABLEKS                       R24 R24 K36 ["Contexts"]
      181 GETTABLEKS                       R24 R24 K37 ["ContextMenuActions"]
      183 CALL                             R23 1 1
      184 GETIMPORT                        R24 K5 [require]
      186 GETTABLEKS                       R25 R0 K6 ["Src"]
      188 GETTABLEKS                       R25 R25 K34 ["Hooks"]
      190 GETTABLEKS                       R25 R25 K38 ["useCellContextActions"]
      192 CALL                             R24 1 1
      193 GETIMPORT                        R25 K5 [require]
      195 GETTABLEKS                       R26 R0 K6 ["Src"]
      197 GETTABLEKS                       R26 R26 K20 ["Util"]
      199 GETTABLEKS                       R26 R26 K39 ["formatISOTimestamp"]
      201 CALL                             R25 1 1
      202 GETIMPORT                        R26 K5 [require]
      204 GETTABLEKS                       R27 R0 K6 ["Src"]
      206 GETTABLEKS                       R27 R27 K20 ["Util"]
      208 GETTABLEKS                       R27 R27 K31 ["Foundation"]
      210 CALL                             R26 1 1
      211 GETTABLEKS                       R27 R26 K40 ["Badge"]
      213 GETTABLEKS                       R28 R26 K41 ["IconButton"]
      215 GETTABLEKS                       R29 R26 K42 ["Enums"]
      217 GETTABLEKS                       R29 R29 K43 ["BadgeVariant"]
      219 GETTABLEKS                       R30 R26 K42 ["Enums"]
      221 GETTABLEKS                       R30 R30 K44 ["InputSize"]
      223 GETTABLEKS                       R31 R26 K42 ["Enums"]
      225 GETTABLEKS                       R31 R31 K45 ["ButtonVariant"]
      227 GETTABLEKS                       R32 R26 K42 ["Enums"]
      229 GETTABLEKS                       R32 R32 K46 ["IconName"]
      231 GETTABLEKS                       R33 R26 K34 ["Hooks"]
      233 GETTABLEKS                       R33 R33 K47 ["useMeasurableRef"]
      235 GETIMPORT                        R34 K5 [require]
      237 GETTABLEKS                       R35 R0 K6 ["Src"]
      239 GETTABLEKS                       R35 R35 K28 ["Components"]
      241 GETTABLEKS                       R35 R35 K48 ["PrivacyStatusBadge"]
      243 CALL                             R34 1 1
      244 GETIMPORT                        R35 K5 [require]
      246 GETTABLEKS                       R36 R0 K6 ["Src"]
      248 GETTABLEKS                       R36 R36 K28 ["Components"]
      250 GETTABLEKS                       R36 R36 K49 ["AgeRestrictedCollaborationBadge"]
      252 CALL                             R35 1 1
      253 GETIMPORT                        R36 K51 [game]
      255 LOADK                            R38 K52 ["DontLayoutInvisibleGuiObjects"]
      256 NAMECALL                         R36 R36 K53 ["GetEngineFeature"]
      258 CALL                             R36 2 1
      259 DUPCLOSURE                       R37 K54 [PROTO_10]
      260 CAPTURE                          VAL R13
      261 CAPTURE                          VAL R12
      262 CAPTURE                          VAL R22
      263 CAPTURE                          VAL R9
      264 CAPTURE                          VAL R10
      265 CAPTURE                          VAL R19
      266 CAPTURE                          VAL R33
      267 CAPTURE                          VAL R23
      268 CAPTURE                          VAL R24
      269 CAPTURE                          VAL R8
      270 CAPTURE                          VAL R18
      271 CAPTURE                          VAL R25
      272 CAPTURE                          VAL R15
      273 CAPTURE                          VAL R1
      274 CAPTURE                          VAL R2
      275 CAPTURE                          VAL R27
      276 CAPTURE                          VAL R29
      277 CAPTURE                          VAL R21
      278 CAPTURE                          VAL R5
      279 CAPTURE                          VAL R3
      280 CAPTURE                          VAL R34
      281 CAPTURE                          VAL R7
      282 CAPTURE                          VAL R6
      283 CAPTURE                          VAL R4
      284 CAPTURE                          VAL R35
      285 CAPTURE                          VAL R28
      286 CAPTURE                          VAL R32
      287 CAPTURE                          VAL R30
      288 CAPTURE                          VAL R31
      289 CAPTURE                          VAL R20
      290 CAPTURE                          VAL R16
      291 CAPTURE                          VAL R36
      292 RETURN                           R37 1
