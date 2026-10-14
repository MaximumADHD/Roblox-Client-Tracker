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
       92 GETUPVAL                         R17 11
       93 JUMPIFNOT                        R17 ; [+8]
       94 GETUPVAL                         R18 12
       95 GETTABLEKS                       R19 R16 K17 ["ReachStatus"]
       97 CALL                             R18 1 1
       98 JUMPIFNOTEQKNIL                  R18 ; [+2]
      100 LOADB                            R17 0 +1
      101 LOADB                            R17 1
      102 LOADNIL                          R18
      103 GETTABLEKS                       R19 R16 K18 ["LastViewed"]
      105 JUMPIFNOT                        R19 ; [+6]
      106 GETUPVAL                         R19 13
      107 GETTABLEKS                       R20 R16 K18 ["LastViewed"]
      109 MOVE                             R21 R1
      110 CALL                             R19 2 1
      111 MOVE                             R18 R19
      112 NEWTABLE                         R19 0 0
      114 GETTABLEKS                       R20 R16 K19 ["TeamCreatePresence"]
      116 JUMPIFNOT                        R20 ; [+176]
      117 LOADN                            R20 2
      118 GETTABLEKS                       R22 R16 K19 ["TeamCreatePresence"]
      120 LENGTH                           R21 R22
      121 JUMPIFNOTEQKN                    R21 K20 [3] ; [+2]
      123 LOADN                            R20 3
      124 LOADN                            R23 1
      125 GETTABLEKS                       R26 R16 K19 ["TeamCreatePresence"]
      127 LENGTH                           R25 R26
      128 FASTCALL2                        MATH_MIN R25 R20 ; [+4]
      130 MOVE                             R26 R20
      131 GETIMPORT                        R24 K23 [math.min]
      133 CALL                             R24 2 1
      134 MOVE                             R21 R24
      135 LOADN                            R22 1
      136 FORNPREP                         R21
      137 MOVE                             R25 R19
      138 GETUPVAL                         R26 9
      139 GETTABLEKS                       R26 R26 K12 ["createElement"]
      141 LOADK                            R27 K24 ["Frame"]
      142 NEWTABLE                         R28 2 0
      144 GETIMPORT                        R29 K26 [UDim2.new]
      146 LOADN                            R30 0
      147 LOADN                            R31 35
      148 LOADN                            R32 0
      149 LOADN                            R33 35
      150 CALL                             R29 4 1
      151 SETTABLEKS                       R29 R28 K14 ["Size"]
      153 GETUPVAL                         R29 9
      154 GETTABLEKS                       R29 R29 K27 ["Tag"]
      156 LOADK                            R30 K28 ["X-Fit X-Middle X-Center StartPage-TeamCreateOnlineBackground StartPage-Circular"]
      157 SETTABLE                         R30 R28 R29
      158 NEWTABLE                         R29 0 1
      160 GETUPVAL                         R30 9
      161 GETTABLEKS                       R30 R30 K12 ["createElement"]
      163 LOADK                            R31 K24 ["Frame"]
      164 NEWTABLE                         R32 2 0
      166 GETIMPORT                        R33 K26 [UDim2.new]
      168 LOADN                            R34 0
      169 LOADN                            R35 30
      170 LOADN                            R36 0
      171 LOADN                            R37 30
      172 CALL                             R33 4 1
      173 SETTABLEKS                       R33 R32 K14 ["Size"]
      175 GETUPVAL                         R33 9
      176 GETTABLEKS                       R33 R33 K27 ["Tag"]
      178 LOADK                            R34 K29 ["X-Fit X-Middle X-Center StartPage-Standard StartPage-Circular"]
      179 SETTABLE                         R34 R32 R33
      180 NEWTABLE                         R33 0 1
      182 GETUPVAL                         R34 9
      183 GETTABLEKS                       R34 R34 K12 ["createElement"]
      185 GETUPVAL                         R35 14
      186 DUPTABLE                         R36 K31 [{"Style", "Size"}]
      187 DUPTABLE                         R37 K33 [{"Image"}]
      188 GETTABLEKS                       R39 R16 K19 ["TeamCreatePresence"]
      190 GETTABLE                         R38 R39 R23
      191 SETTABLEKS                       R38 R37 K32 ["Image"]
      193 SETTABLEKS                       R37 R36 K30 ["Style"]
      195 GETIMPORT                        R37 K26 [UDim2.new]
      197 LOADN                            R38 0
      198 LOADN                            R39 30
      199 LOADN                            R40 0
      200 LOADN                            R41 30
      201 CALL                             R37 4 1
      202 SETTABLEKS                       R37 R36 K14 ["Size"]
      204 CALL                             R34 2 -1
      205 SETLIST                          R33 R34 -1 [1]
      207 CALL                             R30 3 -1
      208 SETLIST                          R29 R30 -1 [1]
      210 CALL                             R26 3 -1
      211 FASTCALL                         TABLE_INSERT ; [+2]
      212 GETIMPORT                        R24 K36 [table.insert]
      214 CALL                             R24 -1 0
      215 FORNLOOP                         R21
      216 GETTABLEKS                       R22 R16 K19 ["TeamCreatePresence"]
      218 LENGTH                           R21 R22
      219 LOADN                            R22 3
      220 JUMPIFNOTLT                      R22 R21 ; [+72]
      222 MOVE                             R22 R19
      223 GETUPVAL                         R23 9
      224 GETTABLEKS                       R23 R23 K12 ["createElement"]
      226 LOADK                            R24 K24 ["Frame"]
      227 NEWTABLE                         R25 2 0
      229 GETIMPORT                        R26 K26 [UDim2.new]
      231 LOADN                            R27 0
      232 LOADN                            R28 35
      233 LOADN                            R29 0
      234 LOADN                            R30 35
      235 CALL                             R26 4 1
      236 SETTABLEKS                       R26 R25 K14 ["Size"]
      238 GETUPVAL                         R26 9
      239 GETTABLEKS                       R26 R26 K27 ["Tag"]
      241 LOADK                            R27 K29 ["X-Fit X-Middle X-Center StartPage-Standard StartPage-Circular"]
      242 SETTABLE                         R27 R25 R26
      243 NEWTABLE                         R26 0 1
      245 GETUPVAL                         R27 9
      246 GETTABLEKS                       R27 R27 K12 ["createElement"]
      248 LOADK                            R28 K37 ["TextLabel"]
      249 NEWTABLE                         R29 8 0
      251 GETIMPORT                        R30 K26 [UDim2.new]
      253 LOADN                            R31 0
      254 LOADN                            R32 30
      255 LOADN                            R33 0
      256 LOADN                            R34 30
      257 CALL                             R30 4 1
      258 SETTABLEKS                       R30 R29 K14 ["Size"]
      260 LOADK                            R31 K38 ["+"]
      261 GETTABLEKS                       R36 R16 K19 ["TeamCreatePresence"]
      263 LENGTH                           R35 R36
      264 SUBK                             R34 R35 K20 [3]
      265 ADDK                             R33 R34 K39 [1]
      266 FASTCALL1                        TOSTRING R33 ; [+2]
      267 GETIMPORT                        R32 K41 [tostring]
      269 CALL                             R32 1 1
      270 CONCAT                           R30 R31 R32
      271 SETTABLEKS                       R30 R29 K42 ["Text"]
      273 GETIMPORT                        R30 K46 [Enum.Font.BuilderSans]
      275 SETTABLEKS                       R30 R29 K44 ["Font"]
      277 LOADN                            R30 18
      278 SETTABLEKS                       R30 R29 K47 ["TextSize"]
      280 GETUPVAL                         R30 9
      281 GETTABLEKS                       R30 R30 K27 ["Tag"]
      283 LOADK                            R31 K48 ["X-Fit X-Transparent StartPage-StandardDarkTextColor"]
      284 SETTABLE                         R31 R29 R30
      285 CALL                             R27 2 -1
      286 SETLIST                          R26 R27 -1 [1]
      288 CALL                             R23 3 -1
      289 FASTCALL                         TABLE_INSERT ; [+2]
      290 GETIMPORT                        R21 K36 [table.insert]
      292 CALL                             R21 -1 0
      293 LOADNIL                          R20
      294 GETTABLEKS                       R21 R16 K49 ["ImageUrl"]
      296 JUMPIFNOT                        R21 ; [+111]
      297 GETUPVAL                         R21 15
      298 JUMPIFNOT                        R21 ; [+109]
      299 GETUPVAL                         R21 9
      300 GETTABLEKS                       R21 R21 K12 ["createElement"]
      302 GETUPVAL                         R22 14
      303 NEWTABLE                         R23 4 0
      305 DUPTABLE                         R24 K33 [{"Image"}]
      306 GETTABLEKS                       R25 R16 K49 ["ImageUrl"]
      308 SETTABLEKS                       R25 R24 K32 ["Image"]
      310 SETTABLEKS                       R24 R23 K30 ["Style"]
      312 GETTABLEKS                       R24 R0 K50 ["ImageSize"]
      314 SETTABLEKS                       R24 R23 K14 ["Size"]
      316 MOVE                             R24 R2
      317 CALL                             R24 0 1
      318 SETTABLEKS                       R24 R23 K51 ["LayoutOrder"]
      320 GETUPVAL                         R24 9
      321 GETTABLEKS                       R24 R24 K27 ["Tag"]
      323 LOADK                            R25 K52 ["X-Corner"]
      324 SETTABLE                         R25 R23 R24
      325 DUPTABLE                         R24 K55 [{"Difficulty", "Collaborators"}]
      326 GETTABLEKS                       R26 R0 K56 ["IsDifficultyVisible"]
      328 JUMPIFNOT                        R26 ; [+58]
      329 GETTABLEKS                       R26 R16 K53 ["Difficulty"]
      331 JUMPIFNOT                        R26 ; [+55]
      332 GETTABLEKS                       R26 R16 K53 ["Difficulty"]
      334 JUMPIFEQKS                       R26 K57 [""] ; [+52]
      336 GETUPVAL                         R25 9
      337 GETTABLEKS                       R25 R25 K12 ["createElement"]
      339 LOADK                            R26 K24 ["Frame"]
      340 NEWTABLE                         R27 1 0
      342 GETUPVAL                         R28 9
      343 GETTABLEKS                       R28 R28 K27 ["Tag"]
      345 LOADK                            R29 K58 ["X-Pad X-Fill X-Top X-Left X-Transparent"]
      346 SETTABLE                         R29 R27 R28
      347 GETUPVAL                         R29 16
      348 JUMPIFNOT                        R29 ; [+16]
      349 GETUPVAL                         R28 9
      350 GETTABLEKS                       R28 R28 K12 ["createElement"]
      352 GETUPVAL                         R29 17
      353 DUPTABLE                         R30 K61 [{"text", "variant"}]
      354 GETTABLEKS                       R31 R16 K53 ["Difficulty"]
      356 SETTABLEKS                       R31 R30 K59 ["text"]
      358 GETUPVAL                         R31 18
      359 GETTABLEKS                       R31 R31 K62 ["Neutral"]
      361 SETTABLEKS                       R31 R30 K60 ["variant"]
      363 CALL                             R28 2 1
      364 JUMP                             ; [+20]
      365 NEWTABLE                         R28 0 1
      367 GETUPVAL                         R29 9
      368 GETTABLEKS                       R29 R29 K12 ["createElement"]
      370 GETUPVAL                         R30 19
      371 NEWTABLE                         R31 2 0
      373 GETTABLEKS                       R32 R16 K53 ["Difficulty"]
      375 SETTABLEKS                       R32 R31 K42 ["Text"]
      377 GETUPVAL                         R32 9
      378 GETTABLEKS                       R32 R32 K27 ["Tag"]
      380 LOADK                            R33 K63 ["X-Fit"]
      381 SETTABLE                         R33 R31 R32
      382 CALL                             R29 2 1
      383 SETLIST                          R28 R29 1 [1]
      385 CALL                             R25 3 1
      386 JUMP                             ; [+1]
      387 LOADNIL                          R25
      388 SETTABLEKS                       R25 R24 K53 ["Difficulty"]
      390 GETUPVAL                         R25 9
      391 GETTABLEKS                       R25 R25 K12 ["createElement"]
      393 LOADK                            R26 K24 ["Frame"]
      394 NEWTABLE                         R27 1 0
      396 GETUPVAL                         R28 9
      397 GETTABLEKS                       R28 R28 K27 ["Tag"]
      399 LOADK                            R29 K64 ["X-Pad X-Bottom X-Right X-Fill X-Row X-Transparent"]
      400 SETTABLE                         R29 R27 R28
      401 MOVE                             R28 R19
      402 CALL                             R25 3 1
      403 SETTABLEKS                       R25 R24 K54 ["Collaborators"]
      405 CALL                             R21 3 1
      406 MOVE                             R20 R21
      407 JUMP                             ; [+116]
      408 GETTABLEKS                       R21 R16 K49 ["ImageUrl"]
      410 JUMPIFNOT                        R21 ; [+48]
      411 GETUPVAL                         R21 15
      412 JUMPIF                           R21 ; [+46]
      413 GETUPVAL                         R21 9
      414 GETTABLEKS                       R21 R21 K12 ["createElement"]
      416 GETUPVAL                         R22 14
      417 NEWTABLE                         R23 4 0
      419 DUPTABLE                         R24 K33 [{"Image"}]
      420 GETTABLEKS                       R25 R16 K49 ["ImageUrl"]
      422 SETTABLEKS                       R25 R24 K32 ["Image"]
      424 SETTABLEKS                       R24 R23 K30 ["Style"]
      426 GETTABLEKS                       R24 R0 K50 ["ImageSize"]
      428 SETTABLEKS                       R24 R23 K14 ["Size"]
      430 MOVE                             R24 R2
      431 CALL                             R24 0 1
      432 SETTABLEKS                       R24 R23 K51 ["LayoutOrder"]
      434 GETUPVAL                         R24 9
      435 GETTABLEKS                       R24 R24 K27 ["Tag"]
      437 LOADK                            R25 K65 ["X-Corner X-Bottom X-Right"]
      438 SETTABLE                         R25 R23 R24
      439 NEWTABLE                         R24 0 1
      441 GETUPVAL                         R25 9
      442 GETTABLEKS                       R25 R25 K12 ["createElement"]
      444 LOADK                            R26 K24 ["Frame"]
      445 NEWTABLE                         R27 1 0
      447 GETUPVAL                         R28 9
      448 GETTABLEKS                       R28 R28 K27 ["Tag"]
      450 LOADK                            R29 K66 ["X-Pad X-Fit X-Row X-Transparent"]
      451 SETTABLE                         R29 R27 R28
      452 MOVE                             R28 R19
      453 CALL                             R25 3 -1
      454 SETLIST                          R24 R25 -1 [1]
      456 CALL                             R21 3 1
      457 MOVE                             R20 R21
      458 JUMP                             ; [+65]
      459 GETTABLEKS                       R21 R16 K67 ["NoLoadableImage"]
      461 JUMPIFNOT                        R21 ; [+49]
      462 GETUPVAL                         R21 9
      463 GETTABLEKS                       R21 R21 K12 ["createElement"]
      465 LOADK                            R22 K24 ["Frame"]
      466 NEWTABLE                         R23 4 0
      468 GETTABLEKS                       R24 R0 K50 ["ImageSize"]
      470 SETTABLEKS                       R24 R23 K14 ["Size"]
      472 LOADK                            R24 K68 [0.84]
      473 SETTABLEKS                       R24 R23 K69 ["BackgroundTransparency"]
      475 MOVE                             R24 R2
      476 CALL                             R24 0 1
      477 SETTABLEKS                       R24 R23 K51 ["LayoutOrder"]
      479 GETUPVAL                         R24 9
      480 GETTABLEKS                       R24 R24 K27 ["Tag"]
      482 LOADK                            R25 K70 ["X-Corner X-Center X-Middle StartPage-StandardDarkBackground"]
      483 SETTABLE                         R25 R23 R24
      484 GETUPVAL                         R24 9
      485 GETTABLEKS                       R24 R24 K12 ["createElement"]
      487 GETUPVAL                         R25 14
      488 NEWTABLE                         R26 4 0
      490 DUPTABLE                         R27 K72 [{["Image"] = "rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"}]
      491 SETTABLEKS                       R27 R26 K30 ["Style"]
      493 GETIMPORT                        R27 K26 [UDim2.new]
      495 LOADN                            R28 0
      496 LOADN                            R29 100
      497 LOADN                            R30 0
      498 LOADN                            R31 100
      499 CALL                             R27 4 1
      500 SETTABLEKS                       R27 R26 K14 ["Size"]
      502 GETUPVAL                         R27 9
      503 GETTABLEKS                       R27 R27 K27 ["Tag"]
      505 LOADK                            R28 K52 ["X-Corner"]
      506 SETTABLE                         R28 R26 R27
      507 CALL                             R24 2 -1
      508 CALL                             R21 -1 1
      509 MOVE                             R20 R21
      510 JUMP                             ; [+13]
      511 GETUPVAL                         R21 9
      512 GETTABLEKS                       R21 R21 K12 ["createElement"]
      514 GETUPVAL                         R22 10
      515 GETTABLEKS                       R22 R22 K13 ["Component"]
      517 DUPTABLE                         R23 K73 [{"Size"}]
      518 GETTABLEKS                       R24 R0 K50 ["ImageSize"]
      520 SETTABLEKS                       R24 R23 K14 ["Size"]
      522 CALL                             R21 2 1
      523 MOVE                             R20 R21
      524 GETUPVAL                         R21 9
      525 GETTABLEKS                       R21 R21 K12 ["createElement"]
      527 LOADK                            R22 K74 ["TextButton"]
      528 NEWTABLE                         R23 8 0
      530 GETTABLEKS                       R24 R0 K15 ["Position"]
      532 SETTABLEKS                       R24 R23 K15 ["Position"]
      534 GETTABLEKS                       R24 R0 K14 ["Size"]
      536 SETTABLEKS                       R24 R23 K14 ["Size"]
      538 GETUPVAL                         R24 9
      539 GETTABLEKS                       R24 R24 K75 ["Event"]
      541 GETTABLEKS                       R24 R24 K76 ["Activated"]
      543 NEWCLOSURE                       R25 P1
      544 CAPTURE                          VAL R0
      545 CAPTURE                          VAL R16
      546 CAPTURE                          VAL R6
      547 SETTABLE                         R25 R23 R24
      548 GETUPVAL                         R24 9
      549 GETTABLEKS                       R24 R24 K75 ["Event"]
      551 GETTABLEKS                       R24 R24 K77 ["SecondaryActivated"]
      553 GETUPVAL                         R26 5
      554 JUMPIFNOT                        R26 ; [+2]
      555 MOVE                             R25 R15
      556 JUMP                             ; [+1]
      557 LOADNIL                          R25
      558 SETTABLE                         R25 R23 R24
      559 GETUPVAL                         R24 9
      560 GETTABLEKS                       R24 R24 K75 ["Event"]
      562 GETTABLEKS                       R24 R24 K78 ["MouseEnter"]
      564 SETTABLE                         R3 R23 R24
      565 GETUPVAL                         R24 9
      566 GETTABLEKS                       R24 R24 K75 ["Event"]
      568 GETTABLEKS                       R24 R24 K79 ["MouseLeave"]
      570 SETTABLE                         R4 R23 R24
      571 GETUPVAL                         R24 9
      572 GETTABLEKS                       R24 R24 K27 ["Tag"]
      574 LOADK                            R25 K80 ["X-Transparent data-testid=--start-page-InfoTile"]
      575 SETTABLE                         R25 R23 R24
      576 DUPTABLE                         R24 K82 [{"Child"}]
      577 GETUPVAL                         R25 9
      578 GETTABLEKS                       R25 R25 K12 ["createElement"]
      580 LOADK                            R26 K24 ["Frame"]
      581 NEWTABLE                         R27 1 0
      583 GETUPVAL                         R28 9
      584 GETTABLEKS                       R28 R28 K27 ["Tag"]
      586 LOADK                            R29 K83 ["X-Fill StartPage-TileBackground StartPage-TilePadding StartPage-RoundedCorner8 X-Column"]
      587 SETTABLE                         R29 R27 R28
      588 DUPTABLE                         R28 K85 [{"Image", "Body"}]
      589 SETTABLEKS                       R20 R28 K32 ["Image"]
      591 GETUPVAL                         R29 9
      592 GETTABLEKS                       R29 R29 K12 ["createElement"]
      594 LOADK                            R30 K24 ["Frame"]
      595 NEWTABLE                         R31 2 0
      597 MOVE                             R32 R2
      598 CALL                             R32 0 1
      599 SETTABLEKS                       R32 R31 K51 ["LayoutOrder"]
      601 GETUPVAL                         R32 9
      602 GETTABLEKS                       R32 R32 K27 ["Tag"]
      604 LOADK                            R33 K86 ["X-Fit X-Row StartPage-DescPadding X-Transparent"]
      605 SETTABLE                         R33 R31 R32
      606 DUPTABLE                         R32 K90 [{"Options", "Kebab", "Focus"}]
      607 GETUPVAL                         R33 9
      608 GETTABLEKS                       R33 R33 K12 ["createElement"]
      610 LOADK                            R34 K24 ["Frame"]
      611 NEWTABLE                         R35 4 0
      613 GETIMPORT                        R36 K26 [UDim2.new]
      615 LOADN                            R37 0
      616 LOADN                            R38 170
      617 LOADN                            R39 1
      618 LOADN                            R40 -200
      619 CALL                             R36 4 1
      620 SETTABLEKS                       R36 R35 K14 ["Size"]
      622 MOVE                             R36 R2
      623 CALL                             R36 0 1
      624 SETTABLEKS                       R36 R35 K51 ["LayoutOrder"]
      626 GETUPVAL                         R36 9
      627 GETTABLEKS                       R36 R36 K27 ["Tag"]
      629 LOADK                            R37 K91 ["X-Fit X-Top StartPage-SearchResultRowColumn X-Transparent"]
      630 SETTABLE                         R37 R35 R36
      631 DUPTABLE                         R36 K99 [{"Privacy", "Title", "CollaborationRestriction", "FormattedDate", "Description", "CreatorName", "Categories"}]
      632 GETTABLEKS                       R38 R0 K100 ["IsPrivacyVisible"]
      634 JUMPIFNOT                        R38 ; [+191]
      635 GETTABLEKS                       R38 R16 K101 ["PrivacyType"]
      637 JUMPIF                           R38 ; [+5]
      638 GETUPVAL                         R38 20
      639 JUMPIFNOT                        R38 ; [+186]
      640 GETTABLEKS                       R38 R16 K102 ["Audiences"]
      642 JUMPIFNOT                        R38 ; [+183]
      643 GETUPVAL                         R37 9
      644 GETTABLEKS                       R37 R37 K12 ["createElement"]
      646 LOADK                            R38 K24 ["Frame"]
      647 NEWTABLE                         R39 2 0
      649 MOVE                             R40 R2
      650 CALL                             R40 0 1
      651 SETTABLEKS                       R40 R39 K51 ["LayoutOrder"]
      653 GETUPVAL                         R40 9
      654 GETTABLEKS                       R40 R40 K27 ["Tag"]
      656 LOADK                            R41 K103 ["X-RowS X-Fit X-Transparent"]
      657 SETTABLE                         R41 R39 R40
      658 DUPTABLE                         R40 K106 [{"PrivacyBadge", "BuildSealBadge"}]
      659 GETUPVAL                         R42 21
      660 JUMPIFNOT                        R42 ; [+64]
      661 JUMPIF                           R17 ; [+63]
      662 GETUPVAL                         R41 9
      663 GETTABLEKS                       R41 R41 K12 ["createElement"]
      665 GETUPVAL                         R42 22
      666 DUPTABLE                         R43 K116 [{"PrivacyType", "Audiences", "ContentMaturity", "IsFriendsOnly", "CreatorType", "CoreContentSelectStatus", "CoreContentReasons", "IsBeta", "AgeRecommendation", "IsSequestered", "IsDiscoveryBlocked", "LayoutOrder"}]
      667 GETTABLEKS                       R44 R16 K101 ["PrivacyType"]
      669 SETTABLEKS                       R44 R43 K101 ["PrivacyType"]
      671 GETUPVAL                         R45 20
      672 JUMPIFNOT                        R45 ; [+3]
      673 GETTABLEKS                       R44 R16 K102 ["Audiences"]
      675 JUMP                             ; [+1]
      676 LOADNIL                          R44
      677 SETTABLEKS                       R44 R43 K102 ["Audiences"]
      679 GETTABLEKS                       R44 R16 K107 ["ContentMaturity"]
      681 SETTABLEKS                       R44 R43 K107 ["ContentMaturity"]
      683 GETTABLEKS                       R44 R16 K108 ["IsFriendsOnly"]
      685 SETTABLEKS                       R44 R43 K108 ["IsFriendsOnly"]
      687 GETTABLEKS                       R44 R16 K109 ["CreatorType"]
      689 SETTABLEKS                       R44 R43 K109 ["CreatorType"]
      691 GETTABLEKS                       R44 R16 K110 ["CoreContentSelectStatus"]
      693 SETTABLEKS                       R44 R43 K110 ["CoreContentSelectStatus"]
      695 GETTABLEKS                       R44 R16 K111 ["CoreContentReasons"]
      697 SETTABLEKS                       R44 R43 K111 ["CoreContentReasons"]
      699 GETUPVAL                         R45 23
      700 JUMPIFNOT                        R45 ; [+2]
      701 LOADNIL                          R44
      702 JUMP                             ; [+2]
      703 GETTABLEKS                       R44 R16 K112 ["IsBeta"]
      705 SETTABLEKS                       R44 R43 K112 ["IsBeta"]
      707 GETTABLEKS                       R44 R16 K113 ["AgeRecommendation"]
      709 SETTABLEKS                       R44 R43 K113 ["AgeRecommendation"]
      711 GETTABLEKS                       R44 R16 K114 ["IsSequestered"]
      713 SETTABLEKS                       R44 R43 K114 ["IsSequestered"]
      715 GETTABLEKS                       R44 R16 K115 ["IsDiscoveryBlocked"]
      717 SETTABLEKS                       R44 R43 K115 ["IsDiscoveryBlocked"]
      719 MOVE                             R44 R2
      720 CALL                             R44 0 1
      721 SETTABLEKS                       R44 R43 K51 ["LayoutOrder"]
      723 CALL                             R41 2 1
      724 JUMP                             ; [+66]
      725 JUMPIFNOT                        R17 ; [+15]
      726 GETUPVAL                         R41 9
      727 GETTABLEKS                       R41 R41 K12 ["createElement"]
      729 GETUPVAL                         R42 24
      730 DUPTABLE                         R43 K117 [{"ReachStatus", "LayoutOrder"}]
      731 GETTABLEKS                       R44 R16 K17 ["ReachStatus"]
      733 SETTABLEKS                       R44 R43 K17 ["ReachStatus"]
      735 MOVE                             R44 R2
      736 CALL                             R44 0 1
      737 SETTABLEKS                       R44 R43 K51 ["LayoutOrder"]
      739 CALL                             R41 2 1
      740 JUMP                             ; [+50]
      741 GETUPVAL                         R42 16
      742 JUMPIFNOT                        R42 ; [+24]
      743 GETUPVAL                         R41 9
      744 GETTABLEKS                       R41 R41 K12 ["createElement"]
      746 GETUPVAL                         R42 17
      747 DUPTABLE                         R43 K61 [{"text", "variant"}]
      748 LOADK                            R46 K118 ["Plugin"]
      749 LOADK                            R47 K119 ["PrivacyType.%*"]
      750 GETTABLEKS                       R49 R16 K101 ["PrivacyType"]
      752 NAMECALL                         R47 R47 K120 ["format"]
      754 CALL                             R47 2 1
      755 NAMECALL                         R44 R1 K121 ["getText"]
      757 CALL                             R44 3 1
      758 SETTABLEKS                       R44 R43 K59 ["text"]
      760 GETUPVAL                         R44 18
      761 GETTABLEKS                       R44 R44 K62 ["Neutral"]
      763 SETTABLEKS                       R44 R43 K60 ["variant"]
      765 CALL                             R41 2 1
      766 JUMP                             ; [+24]
      767 GETUPVAL                         R41 9
      768 GETTABLEKS                       R41 R41 K12 ["createElement"]
      770 GETUPVAL                         R42 19
      771 NEWTABLE                         R43 2 0
      773 LOADK                            R46 K118 ["Plugin"]
      774 LOADK                            R47 K119 ["PrivacyType.%*"]
      775 GETTABLEKS                       R49 R16 K101 ["PrivacyType"]
      777 NAMECALL                         R47 R47 K120 ["format"]
      779 CALL                             R47 2 1
      780 NAMECALL                         R44 R1 K121 ["getText"]
      782 CALL                             R44 3 1
      783 SETTABLEKS                       R44 R43 K42 ["Text"]
      785 GETUPVAL                         R44 9
      786 GETTABLEKS                       R44 R44 K27 ["Tag"]
      788 LOADK                            R45 K63 ["X-Fit"]
      789 SETTABLE                         R45 R43 R44
      790 CALL                             R41 2 1
      791 SETTABLEKS                       R41 R40 K104 ["PrivacyBadge"]
      793 GETUPVAL                         R42 25
      794 JUMPIFNOT                        R42 ; [+26]
      795 GETTABLEKS                       R42 R16 K122 ["IsBuildSealed"]
      797 JUMPIFNOT                        R42 ; [+23]
      798 GETUPVAL                         R41 9
      799 GETTABLEKS                       R41 R41 K12 ["createElement"]
      801 GETUPVAL                         R42 17
      802 DUPTABLE                         R43 K123 [{"text", "variant", "LayoutOrder"}]
      803 LOADK                            R46 K118 ["Plugin"]
      804 LOADK                            R47 K105 ["BuildSealBadge"]
      805 NAMECALL                         R44 R1 K121 ["getText"]
      807 CALL                             R44 3 1
      808 SETTABLEKS                       R44 R43 K59 ["text"]
      810 GETUPVAL                         R44 18
      811 GETTABLEKS                       R44 R44 K124 ["Contrast"]
      813 SETTABLEKS                       R44 R43 K60 ["variant"]
      815 MOVE                             R44 R2
      816 CALL                             R44 0 1
      817 SETTABLEKS                       R44 R43 K51 ["LayoutOrder"]
      819 CALL                             R41 2 1
      820 JUMP                             ; [+1]
      821 LOADNIL                          R41
      822 SETTABLEKS                       R41 R40 K105 ["BuildSealBadge"]
      824 CALL                             R37 3 1
      825 JUMP                             ; [+1]
      826 LOADNIL                          R37
      827 SETTABLEKS                       R37 R36 K92 ["Privacy"]
      829 GETUPVAL                         R37 9
      830 GETTABLEKS                       R37 R37 K12 ["createElement"]
      832 LOADK                            R38 K37 ["TextLabel"]
      833 NEWTABLE                         R39 8 0
      835 GETIMPORT                        R40 K127 [Enum.AutomaticSize.Y]
      837 SETTABLEKS                       R40 R39 K125 ["AutomaticSize"]
      839 GETTABLEKS                       R40 R16 K128 ["Name"]
      841 SETTABLEKS                       R40 R39 K42 ["Text"]
      843 LOADB                            R40 1
      844 SETTABLEKS                       R40 R39 K129 ["TextWrapped"]
      846 GETIMPORT                        R40 K132 [Enum.TextTruncate.AtEnd]
      848 SETTABLEKS                       R40 R39 K130 ["TextTruncate"]
      850 GETIMPORT                        R40 K135 [Enum.TextXAlignment.Left]
      852 SETTABLEKS                       R40 R39 K133 ["TextXAlignment"]
      854 GETIMPORT                        R40 K26 [UDim2.new]
      856 LOADN                            R41 1
      857 LOADN                            R42 -30
      858 LOADN                            R43 0
      859 LOADN                            R44 0
      860 CALL                             R40 4 1
      861 SETTABLEKS                       R40 R39 K14 ["Size"]
      863 MOVE                             R40 R2
      864 CALL                             R40 0 1
      865 SETTABLEKS                       R40 R39 K51 ["LayoutOrder"]
      867 GETUPVAL                         R40 9
      868 GETTABLEKS                       R40 R40 K27 ["Tag"]
      870 LOADK                            R41 K136 ["StartPage-TextColor StartPage-TextSize StartPage-FontBold X-Transparent"]
      871 SETTABLE                         R41 R39 R40
      872 DUPTABLE                         R40 K73 [{"Size"}]
      873 GETUPVAL                         R41 9
      874 GETTABLEKS                       R41 R41 K12 ["createElement"]
      876 LOADK                            R42 K137 ["UISizeConstraint"]
      877 DUPTABLE                         R43 K139 [{"MaxSize"}]
      878 GETIMPORT                        R44 K4 [Vector2.new]
      880 LOADK                            R45 K140 [∞]
      881 LOADN                            R46 50
      882 CALL                             R44 2 1
      883 SETTABLEKS                       R44 R43 K138 ["MaxSize"]
      885 CALL                             R41 2 1
      886 SETTABLEKS                       R41 R40 K14 ["Size"]
      888 CALL                             R37 3 1
      889 SETTABLEKS                       R37 R36 K93 ["Title"]
      891 GETUPVAL                         R38 26
      892 JUMPIFNOT                        R38 ; [+43]
      893 GETTABLEKS                       R38 R16 K141 ["IsGame"]
      895 JUMPIFNOT                        R38 ; [+40]
      896 GETTABLEKS                       R38 R16 K142 ["IsAgeRestrictedCollaboration"]
      898 JUMPIFNOT                        R38 ; [+37]
      899 GETUPVAL                         R37 9
      900 GETTABLEKS                       R37 R37 K12 ["createElement"]
      902 LOADK                            R38 K24 ["Frame"]
      903 NEWTABLE                         R39 2 0
      905 MOVE                             R40 R2
      906 CALL                             R40 0 1
      907 SETTABLEKS                       R40 R39 K51 ["LayoutOrder"]
      909 GETUPVAL                         R40 9
      910 GETTABLEKS                       R40 R40 K27 ["Tag"]
      912 LOADK                            R41 K143 ["X-Fit X-Transparent"]
      913 SETTABLE                         R41 R39 R40
      914 DUPTABLE                         R40 K145 [{"Badge"}]
      915 GETUPVAL                         R41 9
      916 GETTABLEKS                       R41 R41 K12 ["createElement"]
      918 GETUPVAL                         R42 27
      919 DUPTABLE                         R43 K148 [{"label", "UniverseId"}]
      920 LOADK                            R46 K118 ["Plugin"]
      921 LOADK                            R47 K149 ["ExperienceStatus.Collaborate"]
      922 NAMECALL                         R44 R1 K121 ["getText"]
      924 CALL                             R44 3 1
      925 SETTABLEKS                       R44 R43 K146 ["label"]
      927 GETTABLEKS                       R44 R16 K150 ["Id"]
      929 SETTABLEKS                       R44 R43 K147 ["UniverseId"]
      931 CALL                             R41 2 1
      932 SETTABLEKS                       R41 R40 K144 ["Badge"]
      934 CALL                             R37 3 1
      935 JUMP                             ; [+1]
      936 LOADNIL                          R37
      937 SETTABLEKS                       R37 R36 K94 ["CollaborationRestriction"]
      939 JUMPIFNOT                        R18 ; [+37]
      940 GETTABLEKS                       R38 R0 K151 ["IsDateModifiedVisible"]
      942 JUMPIFNOT                        R38 ; [+34]
      943 GETUPVAL                         R37 9
      944 GETTABLEKS                       R37 R37 K12 ["createElement"]
      946 LOADK                            R38 K37 ["TextLabel"]
      947 NEWTABLE                         R39 8 0
      949 LOADK                            R42 K118 ["Plugin"]
      950 LOADK                            R43 K152 ["LastModified"]
      951 DUPTABLE                         R44 K154 [{"lastModified"}]
      952 SETTABLEKS                       R18 R44 K153 ["lastModified"]
      954 NAMECALL                         R40 R1 K121 ["getText"]
      956 CALL                             R40 4 1
      957 SETTABLEKS                       R40 R39 K42 ["Text"]
      959 LOADN                            R40 12
      960 SETTABLEKS                       R40 R39 K47 ["TextSize"]
      962 GETIMPORT                        R40 K135 [Enum.TextXAlignment.Left]
      964 SETTABLEKS                       R40 R39 K133 ["TextXAlignment"]
      966 MOVE                             R40 R2
      967 CALL                             R40 0 1
      968 SETTABLEKS                       R40 R39 K51 ["LayoutOrder"]
      970 GETUPVAL                         R40 9
      971 GETTABLEKS                       R40 R40 K27 ["Tag"]
      973 LOADK                            R41 K155 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      974 SETTABLE                         R41 R39 R40
      975 CALL                             R37 2 1
      976 JUMP                             ; [+1]
      977 LOADNIL                          R37
      978 SETTABLEKS                       R37 R36 K95 ["FormattedDate"]
      980 GETTABLEKS                       R38 R16 K96 ["Description"]
      982 JUMPIFNOT                        R38 ; [+34]
      983 GETTABLEKS                       R38 R0 K156 ["IsDescriptionVisible"]
      985 JUMPIFNOT                        R38 ; [+31]
      986 GETUPVAL                         R37 9
      987 GETTABLEKS                       R37 R37 K12 ["createElement"]
      989 LOADK                            R38 K37 ["TextLabel"]
      990 NEWTABLE                         R39 8 0
      992 GETTABLEKS                       R40 R16 K96 ["Description"]
      994 SETTABLEKS                       R40 R39 K42 ["Text"]
      996 LOADN                            R40 12
      997 SETTABLEKS                       R40 R39 K47 ["TextSize"]
      999 LOADB                            R40 1
     1000 SETTABLEKS                       R40 R39 K129 ["TextWrapped"]
     1002 GETIMPORT                        R40 K135 [Enum.TextXAlignment.Left]
     1004 SETTABLEKS                       R40 R39 K133 ["TextXAlignment"]
     1006 MOVE                             R40 R2
     1007 CALL                             R40 0 1
     1008 SETTABLEKS                       R40 R39 K51 ["LayoutOrder"]
     1010 GETUPVAL                         R40 9
     1011 GETTABLEKS                       R40 R40 K27 ["Tag"]
     1013 LOADK                            R41 K155 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
     1014 SETTABLE                         R41 R39 R40
     1015 CALL                             R37 2 1
     1016 JUMP                             ; [+1]
     1017 LOADNIL                          R37
     1018 SETTABLEKS                       R37 R36 K96 ["Description"]
     1020 GETTABLEKS                       R38 R16 K97 ["CreatorName"]
     1022 JUMPIFNOT                        R38 ; [+34]
     1023 GETTABLEKS                       R38 R0 K157 ["IsCreatorNameVisible"]
     1025 JUMPIFNOT                        R38 ; [+31]
     1026 GETUPVAL                         R37 9
     1027 GETTABLEKS                       R37 R37 K12 ["createElement"]
     1029 LOADK                            R38 K37 ["TextLabel"]
     1030 NEWTABLE                         R39 8 0
     1032 GETTABLEKS                       R40 R16 K97 ["CreatorName"]
     1034 SETTABLEKS                       R40 R39 K42 ["Text"]
     1036 LOADN                            R40 12
     1037 SETTABLEKS                       R40 R39 K47 ["TextSize"]
     1039 LOADB                            R40 1
     1040 SETTABLEKS                       R40 R39 K129 ["TextWrapped"]
     1042 GETIMPORT                        R40 K135 [Enum.TextXAlignment.Left]
     1044 SETTABLEKS                       R40 R39 K133 ["TextXAlignment"]
     1046 MOVE                             R40 R2
     1047 CALL                             R40 0 1
     1048 SETTABLEKS                       R40 R39 K51 ["LayoutOrder"]
     1050 GETUPVAL                         R40 9
     1051 GETTABLEKS                       R40 R40 K27 ["Tag"]
     1053 LOADK                            R41 K155 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
     1054 SETTABLE                         R41 R39 R40
     1055 CALL                             R37 2 1
     1056 JUMP                             ; [+1]
     1057 LOADNIL                          R37
     1058 SETTABLEKS                       R37 R36 K97 ["CreatorName"]
     1060 GETUPVAL                         R38 15
     1061 JUMPIFNOT                        R38 ; [+48]
     1062 GETTABLEKS                       R38 R16 K98 ["Categories"]
     1064 JUMPIFNOT                        R38 ; [+45]
     1065 GETTABLEKS                       R38 R0 K158 ["IsCategoriesVisible"]
     1067 JUMPIFNOT                        R38 ; [+42]
     1068 GETUPVAL                         R37 9
     1069 GETTABLEKS                       R37 R37 K12 ["createElement"]
     1071 LOADK                            R38 K37 ["TextLabel"]
     1072 NEWTABLE                         R39 8 0
     1074 LOADK                            R41 K159 ["<i>"]
     1075 GETIMPORT                        R44 K161 [table.concat]
     1077 GETTABLEKS                       R45 R16 K98 ["Categories"]
     1079 LOADK                            R46 K162 [", "]
     1080 CALL                             R44 2 1
     1081 MOVE                             R42 R44
     1082 LOADK                            R43 K163 ["</i>"]
     1083 CONCAT                           R40 R41 R43
     1084 SETTABLEKS                       R40 R39 K42 ["Text"]
     1086 LOADN                            R40 12
     1087 SETTABLEKS                       R40 R39 K47 ["TextSize"]
     1089 LOADB                            R40 1
     1090 SETTABLEKS                       R40 R39 K129 ["TextWrapped"]
     1092 LOADB                            R40 1
     1093 SETTABLEKS                       R40 R39 K164 ["RichText"]
     1095 GETIMPORT                        R40 K135 [Enum.TextXAlignment.Left]
     1097 SETTABLEKS                       R40 R39 K133 ["TextXAlignment"]
     1099 MOVE                             R40 R2
     1100 CALL                             R40 0 1
     1101 SETTABLEKS                       R40 R39 K51 ["LayoutOrder"]
     1103 GETUPVAL                         R40 9
     1104 GETTABLEKS                       R40 R40 K27 ["Tag"]
     1106 LOADK                            R41 K155 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
     1107 SETTABLE                         R41 R39 R40
     1108 CALL                             R37 2 1
     1109 JUMP                             ; [+1]
     1110 LOADNIL                          R37
     1111 SETTABLEKS                       R37 R36 K98 ["Categories"]
     1113 CALL                             R33 3 1
     1114 SETTABLEKS                       R33 R32 K87 ["Options"]
     1116 GETTABLEKS                       R34 R0 K10 ["IsDropdownMenuVisible"]
     1118 JUMPIFNOT                        R34 ; [+43]
     1119 GETUPVAL                         R34 5
     1120 JUMPIFNOT                        R34 ; [+41]
     1121 LENGTH                           R34 R14
     1122 LOADN                            R35 0
     1123 JUMPIFNOTLT                      R35 R34 ; [+36]
     1125 GETUPVAL                         R33 9
     1126 GETTABLEKS                       R33 R33 K12 ["createElement"]
     1128 GETUPVAL                         R34 28
     1129 DUPTABLE                         R35 K171 [{["ref"], ["icon"], ["size"], ["variant"], ["LayoutOrder"], ["testId"] = "--start-page-TileKebab", ["onActivated"]}]
     1130 SETTABLEKS                       R11 R35 K165 ["ref"]
     1132 GETUPVAL                         R36 29
     1133 GETTABLEKS                       R36 R36 K172 ["ThreeDotsVertical"]
     1135 SETTABLEKS                       R36 R35 K166 ["icon"]
     1137 GETUPVAL                         R36 30
     1138 GETTABLEKS                       R36 R36 K173 ["Small"]
     1140 SETTABLEKS                       R36 R35 K167 ["size"]
     1142 GETUPVAL                         R36 31
     1143 GETTABLEKS                       R36 R36 K174 ["Utility"]
     1145 SETTABLEKS                       R36 R35 K60 ["variant"]
     1147 MOVE                             R36 R2
     1148 CALL                             R36 0 1
     1149 SETTABLEKS                       R36 R35 K51 ["LayoutOrder"]
     1151 NEWCLOSURE                       R36 P2
     1152 CAPTURE                          VAL R11
     1153 CAPTURE                          REF R12
     1154 CAPTURE                          VAL R6
     1155 CAPTURE                          VAL R5
     1156 SETTABLEKS                       R36 R35 K170 ["onActivated"]
     1158 CALL                             R33 2 1
     1159 JUMP                             ; [+66]
     1160 LOADNIL                          R33
     1161 JUMP                             ; [+64]
     1162 GETTABLEKS                       R34 R0 K10 ["IsDropdownMenuVisible"]
     1164 JUMPIFNOT                        R34 ; [+60]
     1165 GETUPVAL                         R33 9
     1166 GETTABLEKS                       R33 R33 K12 ["createElement"]
     1168 LOADK                            R34 K175 ["ImageButton"]
     1169 NEWTABLE                         R35 8 0
     1171 GETIMPORT                        R36 K26 [UDim2.new]
     1173 LOADN                            R37 1
     1174 LOADN                            R38 -32
     1175 LOADN                            R39 0
     1176 LOADN                            R40 0
     1177 CALL                             R36 4 1
     1178 SETTABLEKS                       R36 R35 K15 ["Position"]
     1180 LOADB                            R36 0
     1181 SETTABLEKS                       R36 R35 K176 ["Selectable"]
     1183 GETUPVAL                         R36 9
     1184 GETTABLEKS                       R36 R36 K75 ["Event"]
     1186 GETTABLEKS                       R36 R36 K76 ["Activated"]
     1188 NEWCLOSURE                       R37 P3
     1189 CAPTURE                          VAL R6
     1190 CAPTURE                          VAL R5
     1191 SETTABLE                         R37 R35 R36
     1192 GETUPVAL                         R36 9
     1193 GETTABLEKS                       R36 R36 K75 ["Event"]
     1195 GETTABLEKS                       R36 R36 K78 ["MouseEnter"]
     1197 SETTABLE                         R3 R35 R36
     1198 GETUPVAL                         R36 9
     1199 GETTABLEKS                       R36 R36 K75 ["Event"]
     1201 GETTABLEKS                       R36 R36 K79 ["MouseLeave"]
     1203 SETTABLE                         R4 R35 R36
     1204 GETUPVAL                         R36 9
     1205 GETTABLEKS                       R36 R36 K177 ["Change"]
     1207 GETTABLEKS                       R36 R36 K178 ["AbsolutePosition"]
     1209 NEWCLOSURE                       R37 P4
     1210 CAPTURE                          VAL R8
     1211 SETTABLE                         R37 R35 R36
     1212 MOVE                             R36 R2
     1213 CALL                             R36 0 1
     1214 SETTABLEKS                       R36 R35 K51 ["LayoutOrder"]
     1216 GETUPVAL                         R36 9
     1217 GETTABLEKS                       R36 R36 K27 ["Tag"]
     1219 LOADK                            R37 K179 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
     1220 SETTABLE                         R37 R35 R36
     1221 NEWTABLE                         R36 0 0
     1223 CALL                             R33 3 1
     1224 JUMP                             ; [+1]
     1225 LOADNIL                          R33
     1226 SETTABLEKS                       R33 R32 K88 ["Kebab"]
     1228 JUMPIFNOT                        R5 ; [+120]
     1229 GETUPVAL                         R34 5
     1230 JUMPIFNOT                        R34 ; [+21]
     1231 GETUPVAL                         R33 9
     1232 GETTABLEKS                       R33 R33 K12 ["createElement"]
     1234 GETUPVAL                         R34 32
     1235 DUPTABLE                         R35 K185 [{"isOpen", "actions", "onClose", "onItemActivated", "anchorRef"}]
     1236 SETTABLEKS                       R5 R35 K180 ["isOpen"]
     1238 SETTABLEKS                       R14 R35 K181 ["actions"]
     1240 NEWCLOSURE                       R36 P5
     1241 CAPTURE                          VAL R6
     1242 SETTABLEKS                       R36 R35 K182 ["onClose"]
     1244 NEWCLOSURE                       R36 P6
     1245 CAPTURE                          VAL R6
     1246 SETTABLEKS                       R36 R35 K183 ["onItemActivated"]
     1248 SETTABLEKS                       R12 R35 K184 ["anchorRef"]
     1250 CALL                             R33 2 1
     1251 JUMP                             ; [+98]
     1252 GETUPVAL                         R33 9
     1253 GETTABLEKS                       R33 R33 K12 ["createElement"]
     1255 GETUPVAL                         R34 33
     1256 NEWTABLE                         R35 2 0
     1258 NEWCLOSURE                       R36 P7
     1259 CAPTURE                          VAL R6
     1260 SETTABLEKS                       R36 R35 K186 ["OnFocusLost"]
     1262 GETUPVAL                         R36 9
     1263 GETTABLEKS                       R36 R36 K27 ["Tag"]
     1265 LOADK                            R37 K187 ["X-Fill X-Transparent"]
     1266 SETTABLE                         R37 R35 R36
     1267 GETUPVAL                         R36 9
     1268 GETTABLEKS                       R36 R36 K12 ["createElement"]
     1270 GETUPVAL                         R37 32
     1271 NEWTABLE                         R38 8 0
     1273 GETUPVAL                         R40 34
     1274 JUMPIFNOT                        R40 ; [+11]
     1275 GETIMPORT                        R39 K26 [UDim2.new]
     1277 LOADN                            R40 0
     1278 GETTABLEKS                       R42 R7 K189 ["X"]
     1280 ADDK                             R41 R42 K188 [32]
     1281 LOADN                            R42 0
     1282 GETTABLEKS                       R43 R7 K126 ["Y"]
     1284 CALL                             R39 4 1
     1285 JUMP                             ; [+16]
     1286 GETIMPORT                        R39 K26 [UDim2.new]
     1288 LOADN                            R40 0
     1289 GETTABLEKS                       R43 R7 K189 ["X"]
     1291 GETTABLEKS                       R44 R9 K189 ["X"]
     1293 SUB                              R42 R43 R44
     1294 ADDK                             R41 R42 K188 [32]
     1295 LOADN                            R42 0
     1296 GETTABLEKS                       R44 R7 K126 ["Y"]
     1298 GETTABLEKS                       R45 R9 K126 ["Y"]
     1300 SUB                              R43 R44 R45
     1301 CALL                             R39 4 1
     1302 SETTABLEKS                       R39 R38 K15 ["Position"]
     1304 GETUPVAL                         R40 34
     1305 JUMPIFNOT                        R40 ; [+2]
     1306 NOT                              R39 R5
     1307 JUMP                             ; [+13]
     1308 NOT                              R39 R5
     1309 JUMPIF                           R39 ; [+11]
     1310 LOADB                            R39 1
     1311 GETTABLEKS                       R40 R9 K189 ["X"]
     1313 JUMPIFEQKN                       R40 K190 [0] ; [+7]
     1315 GETTABLEKS                       R40 R9 K126 ["Y"]
     1317 JUMPIFEQKN                       R40 K190 [0] ; [+2]
     1319 LOADB                            R39 0 +1
     1320 LOADB                            R39 1
     1321 SETTABLEKS                       R39 R38 K191 ["Hide"]
     1323 GETTABLEKS                       R39 R0 K192 ["KebabMenu"]
     1325 SETTABLEKS                       R39 R38 K192 ["KebabMenu"]
     1327 SETTABLEKS                       R16 R38 K8 ["Cell"]
     1329 NEWCLOSURE                       R39 P8
     1330 CAPTURE                          VAL R6
     1331 SETTABLEKS                       R39 R38 K193 ["OnItemActivated"]
     1333 NEWCLOSURE                       R39 P9
     1334 CAPTURE                          VAL R10
     1335 SETTABLEKS                       R39 R38 K194 ["MenuContainerSizeChanged"]
     1337 GETUPVAL                         R39 9
     1338 GETTABLEKS                       R39 R39 K27 ["Tag"]
     1340 GETUPVAL                         R41 34
     1341 JUMPIFNOT                        R41 ; [+2]
     1342 LOADK                            R40 K195 ["StartPage-Anchor-Bottom-Right"]
     1343 JUMP                             ; [+1]
     1344 LOADNIL                          R40
     1345 SETTABLE                         R40 R38 R39
     1346 CALL                             R36 2 -1
     1347 CALL                             R33 -1 1
     1348 JUMP                             ; [+1]
     1349 LOADNIL                          R33
     1350 SETTABLEKS                       R33 R32 K89 ["Focus"]
     1352 CALL                             R29 3 1
     1353 SETTABLEKS                       R29 R28 K84 ["Body"]
     1355 CALL                             R25 3 1
     1356 SETTABLEKS                       R25 R24 K81 ["Child"]
     1358 CALL                             R21 3 -1
     1359 CLOSEUPVALS                      R12
     1360 RETURN                           R21 -1

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
       43 GETTABLEKS                       R5 R5 K11 ["getFFlagLuaStartPageReachStatus"]
       45 CALL                             R4 1 1
       46 CALL                             R4 0 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K6 ["Src"]
       51 GETTABLEKS                       R6 R6 K7 ["SharedFlags"]
       53 GETTABLEKS                       R6 R6 K12 ["getFFlagLuaStartPageCollaborationRestriction"]
       55 CALL                             R5 1 1
       56 CALL                             R5 0 1
       57 GETIMPORT                        R6 K5 [require]
       59 GETTABLEKS                       R7 R0 K6 ["Src"]
       61 GETTABLEKS                       R7 R7 K7 ["SharedFlags"]
       63 GETTABLEKS                       R7 R7 K13 ["getFFlagLuaStartPageAudiencesReplacement"]
       65 CALL                             R6 1 1
       66 CALL                             R6 0 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETTABLEKS                       R8 R0 K6 ["Src"]
       71 GETTABLEKS                       R8 R8 K7 ["SharedFlags"]
       73 GETTABLEKS                       R8 R8 K14 ["getFFlagStartPageAddBuildSealBadge"]
       75 CALL                             R7 1 1
       76 CALL                             R7 0 1
       77 GETIMPORT                        R8 K5 [require]
       79 GETTABLEKS                       R9 R0 K6 ["Src"]
       81 GETTABLEKS                       R9 R9 K7 ["SharedFlags"]
       83 GETTABLEKS                       R9 R9 K15 ["getFFlagRemoveUnusedStartPageApis"]
       85 CALL                             R8 1 1
       86 CALL                             R8 0 1
       87 GETIMPORT                        R9 K5 [require]
       89 GETTABLEKS                       R10 R0 K16 ["Packages"]
       91 GETTABLEKS                       R10 R10 K17 ["React"]
       93 CALL                             R9 1 1
       94 GETTABLEKS                       R10 R9 K18 ["useState"]
       96 GETTABLEKS                       R11 R9 K19 ["useRef"]
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K16 ["Packages"]
      102 GETTABLEKS                       R13 R13 K20 ["Framework"]
      104 CALL                             R12 1 1
      105 GETTABLEKS                       R13 R12 K21 ["Util"]
      107 GETTABLEKS                       R13 R13 K22 ["counter"]
      109 GETTABLEKS                       R14 R12 K23 ["ContextServices"]
      111 GETTABLEKS                       R14 R14 K24 ["Localization"]
      113 GETTABLEKS                       R15 R12 K25 ["UI"]
      115 GETTABLEKS                       R16 R15 K26 ["Image"]
      117 GETTABLEKS                       R17 R15 K27 ["CaptureFocus"]
      119 GETIMPORT                        R18 K5 [require]
      121 GETTABLEKS                       R19 R0 K6 ["Src"]
      123 GETTABLEKS                       R19 R19 K28 ["Types"]
      125 CALL                             R18 1 1
      126 GETIMPORT                        R19 K5 [require]
      128 GETTABLEKS                       R20 R0 K6 ["Src"]
      130 GETTABLEKS                       R20 R20 K29 ["Components"]
      132 GETTABLEKS                       R20 R20 K30 ["Shimmer"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K5 [require]
      137 GETTABLEKS                       R21 R0 K6 ["Src"]
      139 GETTABLEKS                       R21 R21 K7 ["SharedFlags"]
      141 GETTABLEKS                       R21 R21 K31 ["getFFlagLuaStartPageTableContextMenu"]
      143 CALL                             R20 1 1
      144 CALL                             R20 0 1
      145 JUMPIFNOT                        R20 ; [+12]
      146 GETIMPORT                        R21 K5 [require]
      148 GETTABLEKS                       R22 R0 K6 ["Src"]
      150 GETTABLEKS                       R22 R22 K32 ["Foundation"]
      152 GETTABLEKS                       R22 R22 K29 ["Components"]
      154 GETTABLEKS                       R22 R22 K33 ["ContextMenu"]
      156 CALL                             R21 1 1
      157 JUMP                             ; [+9]
      158 GETIMPORT                        R21 K5 [require]
      160 GETTABLEKS                       R22 R0 K6 ["Src"]
      162 GETTABLEKS                       R22 R22 K29 ["Components"]
      164 GETTABLEKS                       R22 R22 K33 ["ContextMenu"]
      166 CALL                             R21 1 1
      167 GETIMPORT                        R22 K5 [require]
      169 GETTABLEKS                       R23 R0 K6 ["Src"]
      171 GETTABLEKS                       R23 R23 K29 ["Components"]
      173 GETTABLEKS                       R23 R23 K34 ["Pill"]
      175 CALL                             R22 1 1
      176 GETIMPORT                        R23 K5 [require]
      178 GETTABLEKS                       R24 R0 K6 ["Src"]
      180 GETTABLEKS                       R24 R24 K35 ["Hooks"]
      182 GETTABLEKS                       R24 R24 K36 ["useCursor"]
      184 CALL                             R23 1 1
      185 GETIMPORT                        R24 K5 [require]
      187 GETTABLEKS                       R25 R0 K6 ["Src"]
      189 GETTABLEKS                       R25 R25 K37 ["Contexts"]
      191 GETTABLEKS                       R25 R25 K38 ["ContextMenuActions"]
      193 CALL                             R24 1 1
      194 GETIMPORT                        R25 K5 [require]
      196 GETTABLEKS                       R26 R0 K6 ["Src"]
      198 GETTABLEKS                       R26 R26 K35 ["Hooks"]
      200 GETTABLEKS                       R26 R26 K39 ["useCellContextActions"]
      202 CALL                             R25 1 1
      203 GETIMPORT                        R26 K5 [require]
      205 GETTABLEKS                       R27 R0 K6 ["Src"]
      207 GETTABLEKS                       R27 R27 K21 ["Util"]
      209 GETTABLEKS                       R27 R27 K40 ["formatISOTimestamp"]
      211 CALL                             R26 1 1
      212 GETIMPORT                        R27 K5 [require]
      214 GETTABLEKS                       R28 R0 K6 ["Src"]
      216 GETTABLEKS                       R28 R28 K21 ["Util"]
      218 GETTABLEKS                       R28 R28 K32 ["Foundation"]
      220 CALL                             R27 1 1
      221 GETTABLEKS                       R28 R27 K41 ["Badge"]
      223 GETTABLEKS                       R29 R27 K42 ["IconButton"]
      225 GETTABLEKS                       R30 R27 K43 ["Enums"]
      227 GETTABLEKS                       R30 R30 K44 ["BadgeVariant"]
      229 GETTABLEKS                       R31 R27 K43 ["Enums"]
      231 GETTABLEKS                       R31 R31 K45 ["InputSize"]
      233 GETTABLEKS                       R32 R27 K43 ["Enums"]
      235 GETTABLEKS                       R32 R32 K46 ["ButtonVariant"]
      237 GETTABLEKS                       R33 R27 K43 ["Enums"]
      239 GETTABLEKS                       R33 R33 K47 ["IconName"]
      241 GETTABLEKS                       R34 R27 K35 ["Hooks"]
      243 GETTABLEKS                       R34 R34 K48 ["useMeasurableRef"]
      245 GETIMPORT                        R35 K5 [require]
      247 GETTABLEKS                       R36 R0 K6 ["Src"]
      249 GETTABLEKS                       R36 R36 K29 ["Components"]
      251 GETTABLEKS                       R36 R36 K49 ["PrivacyStatusBadge"]
      253 CALL                             R35 1 1
      254 GETIMPORT                        R36 K5 [require]
      256 GETTABLEKS                       R37 R0 K6 ["Src"]
      258 GETTABLEKS                       R37 R37 K29 ["Components"]
      260 GETTABLEKS                       R37 R37 K50 ["ReachStatusBadge"]
      262 CALL                             R36 1 1
      263 GETIMPORT                        R37 K5 [require]
      265 GETTABLEKS                       R38 R0 K6 ["Src"]
      267 GETTABLEKS                       R38 R38 K21 ["Util"]
      269 GETTABLEKS                       R38 R38 K51 ["getReachStatusBadgePresentation"]
      271 CALL                             R37 1 1
      272 GETIMPORT                        R38 K5 [require]
      274 GETTABLEKS                       R39 R0 K6 ["Src"]
      276 GETTABLEKS                       R39 R39 K29 ["Components"]
      278 GETTABLEKS                       R39 R39 K52 ["AgeRestrictedCollaborationBadge"]
      280 CALL                             R38 1 1
      281 GETIMPORT                        R39 K54 [game]
      283 LOADK                            R41 K55 ["DontLayoutInvisibleGuiObjects"]
      284 NAMECALL                         R39 R39 K56 ["GetEngineFeature"]
      286 CALL                             R39 2 1
      287 DUPCLOSURE                       R40 K57 [PROTO_10]
      288 CAPTURE                          VAL R14
      289 CAPTURE                          VAL R13
      290 CAPTURE                          VAL R23
      291 CAPTURE                          VAL R10
      292 CAPTURE                          VAL R11
      293 CAPTURE                          VAL R20
      294 CAPTURE                          VAL R34
      295 CAPTURE                          VAL R24
      296 CAPTURE                          VAL R25
      297 CAPTURE                          VAL R9
      298 CAPTURE                          VAL R19
      299 CAPTURE                          VAL R4
      300 CAPTURE                          VAL R37
      301 CAPTURE                          VAL R26
      302 CAPTURE                          VAL R16
      303 CAPTURE                          VAL R1
      304 CAPTURE                          VAL R2
      305 CAPTURE                          VAL R28
      306 CAPTURE                          VAL R30
      307 CAPTURE                          VAL R22
      308 CAPTURE                          VAL R6
      309 CAPTURE                          VAL R3
      310 CAPTURE                          VAL R35
      311 CAPTURE                          VAL R8
      312 CAPTURE                          VAL R36
      313 CAPTURE                          VAL R7
      314 CAPTURE                          VAL R5
      315 CAPTURE                          VAL R38
      316 CAPTURE                          VAL R29
      317 CAPTURE                          VAL R33
      318 CAPTURE                          VAL R31
      319 CAPTURE                          VAL R32
      320 CAPTURE                          VAL R21
      321 CAPTURE                          VAL R17
      322 CAPTURE                          VAL R39
      323 RETURN                           R40 1
