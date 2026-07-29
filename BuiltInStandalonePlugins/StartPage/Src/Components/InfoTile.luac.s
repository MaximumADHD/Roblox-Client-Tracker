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
      624 JUMPIFNOT                        R37 ; [+134]
      625 GETTABLEKS                       R37 R16 K100 ["PrivacyType"]
      627 JUMPIF                           R37 ; [+5]
      628 GETUPVAL                         R37 18
      629 JUMPIFNOT                        R37 ; [+129]
      630 GETTABLEKS                       R37 R16 K101 ["Audiences"]
      632 JUMPIFNOT                        R37 ; [+126]
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
      648 GETUPVAL                         R40 19
      649 JUMPIFNOT                        R40 ; [+55]
      650 GETUPVAL                         R39 9
      651 GETTABLEKS                       R39 R39 K12 ["createElement"]
      653 GETUPVAL                         R40 20
      654 DUPTABLE                         R41 K112 [{"PrivacyType", "Audiences", "ContentMaturity", "IsFriendsOnly", "CreatorType", "CoreContentSelectStatus", "CoreContentReasons", "IsBeta", "AgeRecommendation", "IsSequestered", "IsDiscoveryBlocked"}]
      655 GETTABLEKS                       R42 R16 K100 ["PrivacyType"]
      657 SETTABLEKS                       R42 R41 K100 ["PrivacyType"]
      659 GETUPVAL                         R43 18
      660 JUMPIFNOT                        R43 ; [+3]
      661 GETTABLEKS                       R42 R16 K101 ["Audiences"]
      663 JUMP                             ; [+1]
      664 LOADNIL                          R42
      665 SETTABLEKS                       R42 R41 K101 ["Audiences"]
      667 GETTABLEKS                       R42 R16 K103 ["ContentMaturity"]
      669 SETTABLEKS                       R42 R41 K103 ["ContentMaturity"]
      671 GETTABLEKS                       R42 R16 K104 ["IsFriendsOnly"]
      673 SETTABLEKS                       R42 R41 K104 ["IsFriendsOnly"]
      675 GETTABLEKS                       R42 R16 K105 ["CreatorType"]
      677 SETTABLEKS                       R42 R41 K105 ["CreatorType"]
      679 GETTABLEKS                       R42 R16 K106 ["CoreContentSelectStatus"]
      681 SETTABLEKS                       R42 R41 K106 ["CoreContentSelectStatus"]
      683 GETTABLEKS                       R42 R16 K107 ["CoreContentReasons"]
      685 SETTABLEKS                       R42 R41 K107 ["CoreContentReasons"]
      687 GETTABLEKS                       R42 R16 K108 ["IsBeta"]
      689 SETTABLEKS                       R42 R41 K108 ["IsBeta"]
      691 GETTABLEKS                       R42 R16 K109 ["AgeRecommendation"]
      693 SETTABLEKS                       R42 R41 K109 ["AgeRecommendation"]
      695 GETTABLEKS                       R42 R16 K110 ["IsSequestered"]
      697 SETTABLEKS                       R42 R41 K110 ["IsSequestered"]
      699 GETTABLEKS                       R42 R16 K111 ["IsDiscoveryBlocked"]
      701 SETTABLEKS                       R42 R41 K111 ["IsDiscoveryBlocked"]
      703 CALL                             R39 2 1
      704 JUMP                             ; [+52]
      705 GETUPVAL                         R40 14
      706 JUMPIFNOT                        R40 ; [+25]
      707 GETUPVAL                         R39 9
      708 GETTABLEKS                       R39 R39 K12 ["createElement"]
      710 GETUPVAL                         R40 15
      711 DUPTABLE                         R41 K60 [{"text", "variant"}]
      712 LOADK                            R44 K113 ["Plugin"]
      713 LOADK                            R46 K114 ["PrivacyType.%*"]
      714 GETTABLEKS                       R48 R16 K100 ["PrivacyType"]
      716 NAMECALL                         R46 R46 K115 ["format"]
      718 CALL                             R46 2 1
      719 MOVE                             R45 R46
      720 NAMECALL                         R42 R1 K116 ["getText"]
      722 CALL                             R42 3 1
      723 SETTABLEKS                       R42 R41 K58 ["text"]
      725 GETUPVAL                         R42 16
      726 GETTABLEKS                       R42 R42 K61 ["Neutral"]
      728 SETTABLEKS                       R42 R41 K59 ["variant"]
      730 CALL                             R39 2 1
      731 JUMP                             ; [+25]
      732 GETUPVAL                         R39 9
      733 GETTABLEKS                       R39 R39 K12 ["createElement"]
      735 GETUPVAL                         R40 17
      736 NEWTABLE                         R41 2 0
      738 LOADK                            R44 K113 ["Plugin"]
      739 LOADK                            R46 K114 ["PrivacyType.%*"]
      740 GETTABLEKS                       R48 R16 K100 ["PrivacyType"]
      742 NAMECALL                         R46 R46 K115 ["format"]
      744 CALL                             R46 2 1
      745 MOVE                             R45 R46
      746 NAMECALL                         R42 R1 K116 ["getText"]
      748 CALL                             R42 3 1
      749 SETTABLEKS                       R42 R41 K41 ["Text"]
      751 GETUPVAL                         R42 9
      752 GETTABLEKS                       R42 R42 K26 ["Tag"]
      754 LOADK                            R43 K62 ["X-Fit"]
      755 SETTABLE                         R43 R41 R42
      756 CALL                             R39 2 1
      757 CALL                             R36 3 1
      758 JUMP                             ; [+1]
      759 LOADNIL                          R36
      760 SETTABLEKS                       R36 R35 K91 ["Privacy"]
      762 GETUPVAL                         R36 9
      763 GETTABLEKS                       R36 R36 K12 ["createElement"]
      765 LOADK                            R37 K36 ["TextLabel"]
      766 NEWTABLE                         R38 8 0
      768 GETIMPORT                        R39 K119 [Enum.AutomaticSize.Y]
      770 SETTABLEKS                       R39 R38 K117 ["AutomaticSize"]
      772 GETTABLEKS                       R39 R16 K120 ["Name"]
      774 SETTABLEKS                       R39 R38 K41 ["Text"]
      776 LOADB                            R39 1
      777 SETTABLEKS                       R39 R38 K121 ["TextWrapped"]
      779 GETIMPORT                        R39 K124 [Enum.TextTruncate.AtEnd]
      781 SETTABLEKS                       R39 R38 K122 ["TextTruncate"]
      783 GETIMPORT                        R39 K127 [Enum.TextXAlignment.Left]
      785 SETTABLEKS                       R39 R38 K125 ["TextXAlignment"]
      787 GETIMPORT                        R39 K25 [UDim2.new]
      789 LOADN                            R40 1
      790 LOADN                            R41 -30
      791 LOADN                            R42 0
      792 LOADN                            R43 0
      793 CALL                             R39 4 1
      794 SETTABLEKS                       R39 R38 K14 ["Size"]
      796 MOVE                             R39 R2
      797 CALL                             R39 0 1
      798 SETTABLEKS                       R39 R38 K50 ["LayoutOrder"]
      800 GETUPVAL                         R39 9
      801 GETTABLEKS                       R39 R39 K26 ["Tag"]
      803 LOADK                            R40 K128 ["StartPage-TextColor StartPage-TextSize StartPage-FontBold X-Transparent"]
      804 SETTABLE                         R40 R38 R39
      805 DUPTABLE                         R39 K72 [{"Size"}]
      806 GETUPVAL                         R40 9
      807 GETTABLEKS                       R40 R40 K12 ["createElement"]
      809 LOADK                            R41 K129 ["UISizeConstraint"]
      810 DUPTABLE                         R42 K131 [{"MaxSize"}]
      811 GETIMPORT                        R43 K4 [Vector2.new]
      813 LOADK                            R44 K132 [∞]
      814 LOADN                            R45 50
      815 CALL                             R43 2 1
      816 SETTABLEKS                       R43 R42 K130 ["MaxSize"]
      818 CALL                             R40 2 1
      819 SETTABLEKS                       R40 R39 K14 ["Size"]
      821 CALL                             R36 3 1
      822 SETTABLEKS                       R36 R35 K92 ["Title"]
      824 GETUPVAL                         R37 21
      825 JUMPIFNOT                        R37 ; [+43]
      826 GETTABLEKS                       R37 R16 K133 ["IsGame"]
      828 JUMPIFNOT                        R37 ; [+40]
      829 GETTABLEKS                       R37 R16 K134 ["IsAgeRestrictedCollaboration"]
      831 JUMPIFNOT                        R37 ; [+37]
      832 GETUPVAL                         R36 9
      833 GETTABLEKS                       R36 R36 K12 ["createElement"]
      835 LOADK                            R37 K23 ["Frame"]
      836 NEWTABLE                         R38 2 0
      838 MOVE                             R39 R2
      839 CALL                             R39 0 1
      840 SETTABLEKS                       R39 R38 K50 ["LayoutOrder"]
      842 GETUPVAL                         R39 9
      843 GETTABLEKS                       R39 R39 K26 ["Tag"]
      845 LOADK                            R40 K135 ["X-Fit X-Transparent"]
      846 SETTABLE                         R40 R38 R39
      847 DUPTABLE                         R39 K137 [{"Badge"}]
      848 GETUPVAL                         R40 9
      849 GETTABLEKS                       R40 R40 K12 ["createElement"]
      851 GETUPVAL                         R41 22
      852 DUPTABLE                         R42 K140 [{"label", "UniverseId"}]
      853 LOADK                            R45 K113 ["Plugin"]
      854 LOADK                            R46 K141 ["ExperienceStatus.Collaborate"]
      855 NAMECALL                         R43 R1 K116 ["getText"]
      857 CALL                             R43 3 1
      858 SETTABLEKS                       R43 R42 K138 ["label"]
      860 GETTABLEKS                       R43 R16 K142 ["Id"]
      862 SETTABLEKS                       R43 R42 K139 ["UniverseId"]
      864 CALL                             R40 2 1
      865 SETTABLEKS                       R40 R39 K136 ["Badge"]
      867 CALL                             R36 3 1
      868 JUMP                             ; [+1]
      869 LOADNIL                          R36
      870 SETTABLEKS                       R36 R35 K93 ["CollaborationRestriction"]
      872 JUMPIFNOT                        R17 ; [+37]
      873 GETTABLEKS                       R37 R0 K143 ["IsDateModifiedVisible"]
      875 JUMPIFNOT                        R37 ; [+34]
      876 GETUPVAL                         R36 9
      877 GETTABLEKS                       R36 R36 K12 ["createElement"]
      879 LOADK                            R37 K36 ["TextLabel"]
      880 NEWTABLE                         R38 8 0
      882 LOADK                            R41 K113 ["Plugin"]
      883 LOADK                            R42 K144 ["LastModified"]
      884 DUPTABLE                         R43 K146 [{"lastModified"}]
      885 SETTABLEKS                       R17 R43 K145 ["lastModified"]
      887 NAMECALL                         R39 R1 K116 ["getText"]
      889 CALL                             R39 4 1
      890 SETTABLEKS                       R39 R38 K41 ["Text"]
      892 LOADN                            R39 12
      893 SETTABLEKS                       R39 R38 K46 ["TextSize"]
      895 GETIMPORT                        R39 K127 [Enum.TextXAlignment.Left]
      897 SETTABLEKS                       R39 R38 K125 ["TextXAlignment"]
      899 MOVE                             R39 R2
      900 CALL                             R39 0 1
      901 SETTABLEKS                       R39 R38 K50 ["LayoutOrder"]
      903 GETUPVAL                         R39 9
      904 GETTABLEKS                       R39 R39 K26 ["Tag"]
      906 LOADK                            R40 K147 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      907 SETTABLE                         R40 R38 R39
      908 CALL                             R36 2 1
      909 JUMP                             ; [+1]
      910 LOADNIL                          R36
      911 SETTABLEKS                       R36 R35 K94 ["FormattedDate"]
      913 GETTABLEKS                       R37 R16 K95 ["Description"]
      915 JUMPIFNOT                        R37 ; [+34]
      916 GETTABLEKS                       R37 R0 K148 ["IsDescriptionVisible"]
      918 JUMPIFNOT                        R37 ; [+31]
      919 GETUPVAL                         R36 9
      920 GETTABLEKS                       R36 R36 K12 ["createElement"]
      922 LOADK                            R37 K36 ["TextLabel"]
      923 NEWTABLE                         R38 8 0
      925 GETTABLEKS                       R39 R16 K95 ["Description"]
      927 SETTABLEKS                       R39 R38 K41 ["Text"]
      929 LOADN                            R39 12
      930 SETTABLEKS                       R39 R38 K46 ["TextSize"]
      932 LOADB                            R39 1
      933 SETTABLEKS                       R39 R38 K121 ["TextWrapped"]
      935 GETIMPORT                        R39 K127 [Enum.TextXAlignment.Left]
      937 SETTABLEKS                       R39 R38 K125 ["TextXAlignment"]
      939 MOVE                             R39 R2
      940 CALL                             R39 0 1
      941 SETTABLEKS                       R39 R38 K50 ["LayoutOrder"]
      943 GETUPVAL                         R39 9
      944 GETTABLEKS                       R39 R39 K26 ["Tag"]
      946 LOADK                            R40 K147 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      947 SETTABLE                         R40 R38 R39
      948 CALL                             R36 2 1
      949 JUMP                             ; [+1]
      950 LOADNIL                          R36
      951 SETTABLEKS                       R36 R35 K95 ["Description"]
      953 GETTABLEKS                       R37 R16 K96 ["CreatorName"]
      955 JUMPIFNOT                        R37 ; [+34]
      956 GETTABLEKS                       R37 R0 K149 ["IsCreatorNameVisible"]
      958 JUMPIFNOT                        R37 ; [+31]
      959 GETUPVAL                         R36 9
      960 GETTABLEKS                       R36 R36 K12 ["createElement"]
      962 LOADK                            R37 K36 ["TextLabel"]
      963 NEWTABLE                         R38 8 0
      965 GETTABLEKS                       R39 R16 K96 ["CreatorName"]
      967 SETTABLEKS                       R39 R38 K41 ["Text"]
      969 LOADN                            R39 12
      970 SETTABLEKS                       R39 R38 K46 ["TextSize"]
      972 LOADB                            R39 1
      973 SETTABLEKS                       R39 R38 K121 ["TextWrapped"]
      975 GETIMPORT                        R39 K127 [Enum.TextXAlignment.Left]
      977 SETTABLEKS                       R39 R38 K125 ["TextXAlignment"]
      979 MOVE                             R39 R2
      980 CALL                             R39 0 1
      981 SETTABLEKS                       R39 R38 K50 ["LayoutOrder"]
      983 GETUPVAL                         R39 9
      984 GETTABLEKS                       R39 R39 K26 ["Tag"]
      986 LOADK                            R40 K147 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      987 SETTABLE                         R40 R38 R39
      988 CALL                             R36 2 1
      989 JUMP                             ; [+1]
      990 LOADNIL                          R36
      991 SETTABLEKS                       R36 R35 K96 ["CreatorName"]
      993 GETUPVAL                         R37 13
      994 JUMPIFNOT                        R37 ; [+48]
      995 GETTABLEKS                       R37 R16 K97 ["Categories"]
      997 JUMPIFNOT                        R37 ; [+45]
      998 GETTABLEKS                       R37 R0 K150 ["IsCategoriesVisible"]
     1000 JUMPIFNOT                        R37 ; [+42]
     1001 GETUPVAL                         R36 9
     1002 GETTABLEKS                       R36 R36 K12 ["createElement"]
     1004 LOADK                            R37 K36 ["TextLabel"]
     1005 NEWTABLE                         R38 8 0
     1007 LOADK                            R40 K151 ["<i>"]
     1008 GETIMPORT                        R43 K153 [table.concat]
     1010 GETTABLEKS                       R44 R16 K97 ["Categories"]
     1012 LOADK                            R45 K154 [", "]
     1013 CALL                             R43 2 1
     1014 MOVE                             R41 R43
     1015 LOADK                            R42 K155 ["</i>"]
     1016 CONCAT                           R39 R40 R42
     1017 SETTABLEKS                       R39 R38 K41 ["Text"]
     1019 LOADN                            R39 12
     1020 SETTABLEKS                       R39 R38 K46 ["TextSize"]
     1022 LOADB                            R39 1
     1023 SETTABLEKS                       R39 R38 K121 ["TextWrapped"]
     1025 LOADB                            R39 1
     1026 SETTABLEKS                       R39 R38 K156 ["RichText"]
     1028 GETIMPORT                        R39 K127 [Enum.TextXAlignment.Left]
     1030 SETTABLEKS                       R39 R38 K125 ["TextXAlignment"]
     1032 MOVE                             R39 R2
     1033 CALL                             R39 0 1
     1034 SETTABLEKS                       R39 R38 K50 ["LayoutOrder"]
     1036 GETUPVAL                         R39 9
     1037 GETTABLEKS                       R39 R39 K26 ["Tag"]
     1039 LOADK                            R40 K147 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
     1040 SETTABLE                         R40 R38 R39
     1041 CALL                             R36 2 1
     1042 JUMP                             ; [+1]
     1043 LOADNIL                          R36
     1044 SETTABLEKS                       R36 R35 K97 ["Categories"]
     1046 CALL                             R32 3 1
     1047 SETTABLEKS                       R32 R31 K86 ["Options"]
     1049 GETTABLEKS                       R33 R0 K10 ["IsDropdownMenuVisible"]
     1051 JUMPIFNOT                        R33 ; [+43]
     1052 GETUPVAL                         R33 5
     1053 JUMPIFNOT                        R33 ; [+41]
     1054 LENGTH                           R33 R14
     1055 LOADN                            R34 0
     1056 JUMPIFNOTLT                      R34 R33 ; [+36]
     1058 GETUPVAL                         R32 9
     1059 GETTABLEKS                       R32 R32 K12 ["createElement"]
     1061 GETUPVAL                         R33 23
     1062 DUPTABLE                         R34 K163 [{["ref"], ["icon"], ["size"], ["variant"], ["LayoutOrder"], ["testId"] = "--start-page-TileKebab", ["onActivated"]}]
     1063 SETTABLEKS                       R11 R34 K157 ["ref"]
     1065 GETUPVAL                         R35 24
     1066 GETTABLEKS                       R35 R35 K164 ["ThreeDotsVertical"]
     1068 SETTABLEKS                       R35 R34 K158 ["icon"]
     1070 GETUPVAL                         R35 25
     1071 GETTABLEKS                       R35 R35 K165 ["Small"]
     1073 SETTABLEKS                       R35 R34 K159 ["size"]
     1075 GETUPVAL                         R35 26
     1076 GETTABLEKS                       R35 R35 K166 ["Utility"]
     1078 SETTABLEKS                       R35 R34 K59 ["variant"]
     1080 MOVE                             R35 R2
     1081 CALL                             R35 0 1
     1082 SETTABLEKS                       R35 R34 K50 ["LayoutOrder"]
     1084 NEWCLOSURE                       R35 P2
     1085 CAPTURE                          VAL R11
     1086 CAPTURE                          REF R12
     1087 CAPTURE                          VAL R6
     1088 CAPTURE                          VAL R5
     1089 SETTABLEKS                       R35 R34 K162 ["onActivated"]
     1091 CALL                             R32 2 1
     1092 JUMP                             ; [+66]
     1093 LOADNIL                          R32
     1094 JUMP                             ; [+64]
     1095 GETTABLEKS                       R33 R0 K10 ["IsDropdownMenuVisible"]
     1097 JUMPIFNOT                        R33 ; [+60]
     1098 GETUPVAL                         R32 9
     1099 GETTABLEKS                       R32 R32 K12 ["createElement"]
     1101 LOADK                            R33 K167 ["ImageButton"]
     1102 NEWTABLE                         R34 8 0
     1104 GETIMPORT                        R35 K25 [UDim2.new]
     1106 LOADN                            R36 1
     1107 LOADN                            R37 -32
     1108 LOADN                            R38 0
     1109 LOADN                            R39 0
     1110 CALL                             R35 4 1
     1111 SETTABLEKS                       R35 R34 K15 ["Position"]
     1113 LOADB                            R35 0
     1114 SETTABLEKS                       R35 R34 K168 ["Selectable"]
     1116 GETUPVAL                         R35 9
     1117 GETTABLEKS                       R35 R35 K74 ["Event"]
     1119 GETTABLEKS                       R35 R35 K75 ["Activated"]
     1121 NEWCLOSURE                       R36 P3
     1122 CAPTURE                          VAL R6
     1123 CAPTURE                          VAL R5
     1124 SETTABLE                         R36 R34 R35
     1125 GETUPVAL                         R35 9
     1126 GETTABLEKS                       R35 R35 K74 ["Event"]
     1128 GETTABLEKS                       R35 R35 K77 ["MouseEnter"]
     1130 SETTABLE                         R3 R34 R35
     1131 GETUPVAL                         R35 9
     1132 GETTABLEKS                       R35 R35 K74 ["Event"]
     1134 GETTABLEKS                       R35 R35 K78 ["MouseLeave"]
     1136 SETTABLE                         R4 R34 R35
     1137 GETUPVAL                         R35 9
     1138 GETTABLEKS                       R35 R35 K169 ["Change"]
     1140 GETTABLEKS                       R35 R35 K170 ["AbsolutePosition"]
     1142 NEWCLOSURE                       R36 P4
     1143 CAPTURE                          VAL R8
     1144 SETTABLE                         R36 R34 R35
     1145 MOVE                             R35 R2
     1146 CALL                             R35 0 1
     1147 SETTABLEKS                       R35 R34 K50 ["LayoutOrder"]
     1149 GETUPVAL                         R35 9
     1150 GETTABLEKS                       R35 R35 K26 ["Tag"]
     1152 LOADK                            R36 K171 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
     1153 SETTABLE                         R36 R34 R35
     1154 NEWTABLE                         R35 0 0
     1156 CALL                             R32 3 1
     1157 JUMP                             ; [+1]
     1158 LOADNIL                          R32
     1159 SETTABLEKS                       R32 R31 K87 ["Kebab"]
     1161 JUMPIFNOT                        R5 ; [+120]
     1162 GETUPVAL                         R33 5
     1163 JUMPIFNOT                        R33 ; [+21]
     1164 GETUPVAL                         R32 9
     1165 GETTABLEKS                       R32 R32 K12 ["createElement"]
     1167 GETUPVAL                         R33 27
     1168 DUPTABLE                         R34 K177 [{"isOpen", "actions", "onClose", "onItemActivated", "anchorRef"}]
     1169 SETTABLEKS                       R5 R34 K172 ["isOpen"]
     1171 SETTABLEKS                       R14 R34 K173 ["actions"]
     1173 NEWCLOSURE                       R35 P5
     1174 CAPTURE                          VAL R6
     1175 SETTABLEKS                       R35 R34 K174 ["onClose"]
     1177 NEWCLOSURE                       R35 P6
     1178 CAPTURE                          VAL R6
     1179 SETTABLEKS                       R35 R34 K175 ["onItemActivated"]
     1181 SETTABLEKS                       R12 R34 K176 ["anchorRef"]
     1183 CALL                             R32 2 1
     1184 JUMP                             ; [+98]
     1185 GETUPVAL                         R32 9
     1186 GETTABLEKS                       R32 R32 K12 ["createElement"]
     1188 GETUPVAL                         R33 28
     1189 NEWTABLE                         R34 2 0
     1191 NEWCLOSURE                       R35 P7
     1192 CAPTURE                          VAL R6
     1193 SETTABLEKS                       R35 R34 K178 ["OnFocusLost"]
     1195 GETUPVAL                         R35 9
     1196 GETTABLEKS                       R35 R35 K26 ["Tag"]
     1198 LOADK                            R36 K179 ["X-Fill X-Transparent"]
     1199 SETTABLE                         R36 R34 R35
     1200 GETUPVAL                         R35 9
     1201 GETTABLEKS                       R35 R35 K12 ["createElement"]
     1203 GETUPVAL                         R36 27
     1204 NEWTABLE                         R37 8 0
     1206 GETUPVAL                         R39 29
     1207 JUMPIFNOT                        R39 ; [+11]
     1208 GETIMPORT                        R38 K25 [UDim2.new]
     1210 LOADN                            R39 0
     1211 GETTABLEKS                       R41 R7 K181 ["X"]
     1213 ADDK                             R40 R41 K180 [32]
     1214 LOADN                            R41 0
     1215 GETTABLEKS                       R42 R7 K118 ["Y"]
     1217 CALL                             R38 4 1
     1218 JUMP                             ; [+16]
     1219 GETIMPORT                        R38 K25 [UDim2.new]
     1221 LOADN                            R39 0
     1222 GETTABLEKS                       R42 R7 K181 ["X"]
     1224 GETTABLEKS                       R43 R9 K181 ["X"]
     1226 SUB                              R41 R42 R43
     1227 ADDK                             R40 R41 K180 [32]
     1228 LOADN                            R41 0
     1229 GETTABLEKS                       R43 R7 K118 ["Y"]
     1231 GETTABLEKS                       R44 R9 K118 ["Y"]
     1233 SUB                              R42 R43 R44
     1234 CALL                             R38 4 1
     1235 SETTABLEKS                       R38 R37 K15 ["Position"]
     1237 GETUPVAL                         R39 29
     1238 JUMPIFNOT                        R39 ; [+2]
     1239 NOT                              R38 R5
     1240 JUMP                             ; [+13]
     1241 NOT                              R38 R5
     1242 JUMPIF                           R38 ; [+11]
     1243 LOADB                            R38 1
     1244 GETTABLEKS                       R39 R9 K181 ["X"]
     1246 JUMPIFEQKN                       R39 K182 [0] ; [+7]
     1248 GETTABLEKS                       R39 R9 K118 ["Y"]
     1250 JUMPIFEQKN                       R39 K182 [0] ; [+2]
     1252 LOADB                            R38 0 +1
     1253 LOADB                            R38 1
     1254 SETTABLEKS                       R38 R37 K183 ["Hide"]
     1256 GETTABLEKS                       R38 R0 K184 ["KebabMenu"]
     1258 SETTABLEKS                       R38 R37 K184 ["KebabMenu"]
     1260 SETTABLEKS                       R16 R37 K8 ["Cell"]
     1262 NEWCLOSURE                       R38 P8
     1263 CAPTURE                          VAL R6
     1264 SETTABLEKS                       R38 R37 K185 ["OnItemActivated"]
     1266 NEWCLOSURE                       R38 P9
     1267 CAPTURE                          VAL R10
     1268 SETTABLEKS                       R38 R37 K186 ["MenuContainerSizeChanged"]
     1270 GETUPVAL                         R38 9
     1271 GETTABLEKS                       R38 R38 K26 ["Tag"]
     1273 GETUPVAL                         R40 29
     1274 JUMPIFNOT                        R40 ; [+2]
     1275 LOADK                            R39 K187 ["StartPage-Anchor-Bottom-Right"]
     1276 JUMP                             ; [+1]
     1277 LOADNIL                          R39
     1278 SETTABLE                         R39 R37 R38
     1279 CALL                             R35 2 -1
     1280 CALL                             R32 -1 1
     1281 JUMP                             ; [+1]
     1282 LOADNIL                          R32
     1283 SETTABLEKS                       R32 R31 K88 ["Focus"]
     1285 CALL                             R28 3 1
     1286 SETTABLEKS                       R28 R27 K83 ["Body"]
     1288 CALL                             R24 3 1
     1289 SETTABLEKS                       R24 R23 K80 ["Child"]
     1291 CALL                             R20 3 -1
     1292 CLOSEUPVALS                      R12
     1293 RETURN                           R20 -1

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
      193 GETTABLEKS                       R26 R24 K39 ["IconButton"]
      195 GETTABLEKS                       R27 R24 K40 ["Enums"]
      197 GETTABLEKS                       R27 R27 K41 ["BadgeVariant"]
      199 GETTABLEKS                       R28 R24 K40 ["Enums"]
      201 GETTABLEKS                       R28 R28 K42 ["InputSize"]
      203 GETTABLEKS                       R29 R24 K40 ["Enums"]
      205 GETTABLEKS                       R29 R29 K43 ["ButtonVariant"]
      207 GETTABLEKS                       R30 R24 K40 ["Enums"]
      209 GETTABLEKS                       R30 R30 K44 ["IconName"]
      211 GETTABLEKS                       R31 R24 K32 ["Hooks"]
      213 GETTABLEKS                       R31 R31 K45 ["useMeasurableRef"]
      215 GETIMPORT                        R32 K5 [require]
      217 GETTABLEKS                       R33 R0 K6 ["Src"]
      219 GETTABLEKS                       R33 R33 K26 ["Components"]
      221 GETTABLEKS                       R33 R33 K46 ["PrivacyStatusBadge"]
      223 CALL                             R32 1 1
      224 GETIMPORT                        R33 K5 [require]
      226 GETTABLEKS                       R34 R0 K6 ["Src"]
      228 GETTABLEKS                       R34 R34 K26 ["Components"]
      230 GETTABLEKS                       R34 R34 K47 ["AgeRestrictedCollaborationBadge"]
      232 CALL                             R33 1 1
      233 GETIMPORT                        R34 K49 [game]
      235 LOADK                            R36 K50 ["DontLayoutInvisibleGuiObjects"]
      236 NAMECALL                         R34 R34 K51 ["GetEngineFeature"]
      238 CALL                             R34 2 1
      239 DUPCLOSURE                       R35 K52 [PROTO_10]
      240 CAPTURE                          VAL R11
      241 CAPTURE                          VAL R10
      242 CAPTURE                          VAL R20
      243 CAPTURE                          VAL R7
      244 CAPTURE                          VAL R8
      245 CAPTURE                          VAL R17
      246 CAPTURE                          VAL R31
      247 CAPTURE                          VAL R21
      248 CAPTURE                          VAL R22
      249 CAPTURE                          VAL R6
      250 CAPTURE                          VAL R16
      251 CAPTURE                          VAL R23
      252 CAPTURE                          VAL R13
      253 CAPTURE                          VAL R1
      254 CAPTURE                          VAL R2
      255 CAPTURE                          VAL R25
      256 CAPTURE                          VAL R27
      257 CAPTURE                          VAL R19
      258 CAPTURE                          VAL R5
      259 CAPTURE                          VAL R3
      260 CAPTURE                          VAL R32
      261 CAPTURE                          VAL R4
      262 CAPTURE                          VAL R33
      263 CAPTURE                          VAL R26
      264 CAPTURE                          VAL R30
      265 CAPTURE                          VAL R28
      266 CAPTURE                          VAL R29
      267 CAPTURE                          VAL R18
      268 CAPTURE                          VAL R14
      269 CAPTURE                          VAL R34
      270 RETURN                           R35 1
