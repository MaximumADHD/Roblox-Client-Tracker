PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETTABLEN                        R1 R2 1
        3 GETTABLEKS                       R1 R1 K0 ["Key"]
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["WorldModel"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R2 R0 K0 ["WorldModel"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+8]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R2 R0 K0 ["WorldModel"]
       14 GETTABLEKS                       R3 R0 K1 ["Dummy"]
       16 GETTABLEKS                       R4 R0 K2 ["UpdateHumanoidDescription"]
       18 CALL                             R1 3 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Key"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["tabs"]
        5 GETUPVAL                         R2 1
        6 CALL                             R0 2 1
        7 JUMPIFEQKNIL                     R0 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["tabs"]
       13 GETTABLEN                        R0 R1 1
       14 GETUPVAL                         R1 2
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 3
       18 GETUPVAL                         R4 4
       19 GETTABLE                         R3 R4 R0
       20 GETTABLEN                        R2 R3 1
       21 GETTABLEKS                       R2 R2 K4 ["Key"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["tabs"]
        5 CALL                             R1 2 2
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       12 LOADK                            R5 K1 ["Selecting palette that doesn't exist"]
       13 GETIMPORT                        R3 K3 [assert]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R3 2
       17 MOVE                             R4 R0
       18 CALL                             R3 1 0
       19 GETUPVAL                         R3 3
       20 MOVE                             R4 R2
       21 CALL                             R3 1 0
       22 GETIMPORT                        R3 K6 [table.find]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K0 ["tabs"]
       27 MOVE                             R5 R2
       28 CALL                             R3 2 1
       29 JUMPIFEQKNIL                     R3 ; [+2]
       31 RETURN                           R0 0
       32 GETUPVAL                         R3 4
       33 LOADNIL                          R4
       34 LOADNIL                          R5
       35 FORGPREP                         R3
       36 GETIMPORT                        R8 K6 [table.find]
       38 GETTABLEKS                       R9 R7 K0 ["tabs"]
       40 MOVE                             R10 R2
       41 CALL                             R8 2 1
       42 JUMPIFEQKNIL                     R8 ; [+7]
       44 GETUPVAL                         R8 5
       45 GETTABLEKS                       R8 R8 K7 ["setStage"]
       47 MOVE                             R9 R6
       48 CALL                             R8 1 0
       49 RETURN                           R0 0
       50 FORGLOOP                         R3 2 ; [-15]
       52 GETIMPORT                        R3 K9 [error]
       54 LOADK                            R5 K10 ["Invalid stage for %* (in %*)"]
       55 MOVE                             R7 R0
       56 MOVE                             R8 R2
       57 NAMECALL                         R5 R5 K11 ["format"]
       59 CALL                             R5 3 1
       60 MOVE                             R4 R5
       61 CALL                             R3 1 0
       62 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R4 2
        5 GETTABLE                         R3 R4 R0
        6 GETTABLEN                        R2 R3 1
        7 GETTABLEKS                       R2 R2 K0 ["Key"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["removeAllEquippedItems"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_8:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_8]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AvatarScreen"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 0
        6 LOADK                            R4 K2 ["StageSelector"]
        7 NAMECALL                         R2 R2 K1 ["use"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["useContext"]
       13 GETUPVAL                         R4 2
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K3 ["useContext"]
       18 GETUPVAL                         R5 3
       19 CALL                             R4 1 1
       20 GETUPVAL                         R6 4
       21 GETTABLEKS                       R7 R4 K4 ["stage"]
       23 GETTABLE                         R5 R6 R7
       24 GETTABLEKS                       R6 R0 K5 ["Avatar"]
       26 GETTABLEKS                       R6 R6 K6 ["WorldModel"]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K7 ["useState"]
       31 GETTABLEKS                       R9 R5 K8 ["tabs"]
       33 GETTABLEN                        R8 R9 1
       34 CALL                             R7 1 2
       35 JUMPIFNOTEQKNIL                  R7 ; [+2]
       37 LOADB                            R10 0 +1
       38 LOADB                            R10 1
       39 FASTCALL2K                       ASSERT R10 K9 ; [+4]
       41 LOADK                            R11 K9 ["Current stage didn't have a tab"]
       42 GETIMPORT                        R9 K11 [assert]
       44 CALL                             R9 2 0
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R9 R9 K7 ["useState"]
       48 GETUPVAL                         R12 5
       49 GETTABLE                         R11 R12 R7
       50 GETTABLEN                        R10 R11 1
       51 GETTABLEKS                       R10 R10 K12 ["Key"]
       53 CALL                             R9 1 2
       54 GETUPVAL                         R11 6
       55 GETTABLEKS                       R11 R11 K13 ["find"]
       57 GETUPVAL                         R13 5
       58 GETTABLE                         R12 R13 R7
       59 NEWCLOSURE                       R13 P0
       60 CAPTURE                          VAL R9
       61 CALL                             R11 2 1
       62 GETUPVAL                         R12 1
       63 GETTABLEKS                       R12 R12 K14 ["useEffect"]
       65 NEWCLOSURE                       R13 P1
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R10
       70 CAPTURE                          UPVAL U5
       71 NEWTABLE                         R14 0 1
       73 MOVE                             R15 R5
       74 SETLIST                          R14 R15 1 [1]
       76 CALL                             R12 2 0
       77 GETUPVAL                         R12 1
       78 GETTABLEKS                       R12 R12 K15 ["useCallback"]
       80 NEWCLOSURE                       R13 P2
       81 CAPTURE                          UPVAL U7
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R8
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          VAL R4
       87 NEWTABLE                         R14 0 2
       89 GETTABLEKS                       R15 R4 K16 ["setStage"]
       91 GETTABLEKS                       R16 R5 K8 ["tabs"]
       93 SETLIST                          R14 R15 2 [1]
       95 CALL                             R12 2 1
       96 GETUPVAL                         R13 1
       97 GETTABLEKS                       R13 R13 K7 ["useState"]
       99 LOADN                            R14 0
      100 CALL                             R13 1 2
      101 GETUPVAL                         R15 8
      102 GETTABLEKS                       R16 R0 K5 ["Avatar"]
      104 NEWTABLE                         R17 0 1
      106 MOVE                             R18 R13
      107 SETLIST                          R17 R18 1 [1]
      109 CALL                             R15 2 1
      110 GETUPVAL                         R16 9
      111 GETTABLEKS                       R17 R0 K5 ["Avatar"]
      113 MOVE                             R18 R15
      114 CALL                             R16 2 1
      115 GETUPVAL                         R17 10
      116 MOVE                             R18 R16
      117 MOVE                             R19 R6
      118 CALL                             R17 2 0
      119 GETUPVAL                         R17 11
      120 MOVE                             R18 R16
      121 CALL                             R17 1 0
      122 GETUPVAL                         R17 12
      123 CALL                             R17 0 1
      124 JUMPIFNOT                        R17 ; [+6]
      125 GETUPVAL                         R17 13
      126 DUPTABLE                         R18 K20 [{["dummy"], ["includeBuiltInAccessories"] = False}]
      127 SETTABLEKS                       R16 R18 K17 ["dummy"]
      129 CALL                             R17 1 0
      130 JUMP                             ; [+3]
      131 GETUPVAL                         R17 14
      132 MOVE                             R18 R16
      133 CALL                             R17 1 0
      134 GETUPVAL                         R17 15
      135 MOVE                             R18 R16
      136 GETTABLEKS                       R19 R4 K21 ["isTextured"]
      138 CALL                             R17 2 0
      139 GETUPVAL                         R17 16
      140 CALL                             R17 0 1
      141 JUMPIF                           R17 ; [+3]
      142 GETUPVAL                         R17 17
      143 MOVE                             R18 R16
      144 CALL                             R17 1 0
      145 GETUPVAL                         R17 12
      146 CALL                             R17 0 1
      147 JUMPIFNOT                        R17 ; [+3]
      148 GETUPVAL                         R17 18
      149 MOVE                             R18 R16
      150 CALL                             R17 1 0
      151 GETUPVAL                         R17 1
      152 GETTABLEKS                       R17 R17 K22 ["useRef"]
      154 GETUPVAL                         R18 19
      155 GETTABLEKS                       R18 R18 K23 ["new"]
      157 CALL                             R18 0 -1
      158 CALL                             R17 -1 1
      159 GETTABLEKS                       R20 R17 K24 ["current"]
      161 JUMPIFNOTEQKNIL                  R20 ; [+2]
      163 LOADB                            R19 0 +1
      164 LOADB                            R19 1
      165 GETUPVAL                         R20 20
      166 GETTABLEKS                       R20 R20 K25 ["LUAU_ANALYZE_ERROR"]
      168 FASTCALL2                        ASSERT R19 R20 ; [+3]
      170 GETIMPORT                        R18 K11 [assert]
      172 CALL                             R18 2 0
      173 GETUPVAL                         R18 1
      174 GETTABLEKS                       R18 R18 K15 ["useCallback"]
      176 NEWCLOSURE                       R19 P3
      177 CAPTURE                          VAL R17
      178 NEWTABLE                         R20 0 0
      180 CALL                             R18 2 1
      181 GETUPVAL                         R19 21
      182 GETTABLEKS                       R19 R19 K23 ["new"]
      184 CALL                             R19 0 1
      185 NEWTABLE                         R20 4 0
      187 GETUPVAL                         R21 1
      188 GETTABLEKS                       R21 R21 K26 ["createElement"]
      190 GETUPVAL                         R22 22
      191 NEWTABLE                         R23 0 0
      193 DUPTABLE                         R24 K29 [{"StageSelect", "Contents"}]
      194 GETUPVAL                         R25 1
      195 GETTABLEKS                       R25 R25 K26 ["createElement"]
      197 GETUPVAL                         R26 23
      198 DUPTABLE                         R27 K36 [{["type"] = "avatar", ["SelectedStage"], ["SetStage"], ["Avatar"], ["PreviewDummy"], ["onBack"]}]
      199 GETTABLEKS                       R28 R4 K4 ["stage"]
      201 SETTABLEKS                       R28 R27 K32 ["SelectedStage"]
      203 GETTABLEKS                       R28 R4 K16 ["setStage"]
      205 SETTABLEKS                       R28 R27 K33 ["SetStage"]
      207 GETTABLEKS                       R28 R0 K5 ["Avatar"]
      209 SETTABLEKS                       R28 R27 K5 ["Avatar"]
      211 SETTABLEKS                       R16 R27 K34 ["PreviewDummy"]
      213 GETTABLEKS                       R28 R0 K35 ["onBack"]
      215 SETTABLEKS                       R28 R27 K35 ["onBack"]
      217 CALL                             R25 2 1
      218 SETTABLEKS                       R25 R24 K27 ["StageSelect"]
      220 GETUPVAL                         R25 1
      221 GETTABLEKS                       R25 R25 K26 ["createElement"]
      223 GETUPVAL                         R26 22
      224 DUPTABLE                         R27 K39 [{"Position", "Size"}]
      225 GETIMPORT                        R28 K42 [UDim2.fromOffset]
      227 GETTABLEKS                       R29 R2 K43 ["Width"]
      229 LOADN                            R30 0
      230 CALL                             R28 2 1
      231 SETTABLEKS                       R28 R27 K37 ["Position"]
      233 GETIMPORT                        R28 K44 [UDim2.new]
      235 LOADN                            R29 1
      236 GETTABLEKS                       R31 R2 K43 ["Width"]
      238 MINUS                            R30 R31
      239 LOADN                            R31 1
      240 LOADN                            R32 0
      241 CALL                             R28 4 1
      242 SETTABLEKS                       R28 R27 K38 ["Size"]
      244 DUPTABLE                         R28 K46 [{"Tabs", "Contents"}]
      245 GETUPVAL                         R29 1
      246 GETTABLEKS                       R29 R29 K26 ["createElement"]
      248 GETUPVAL                         R30 22
      249 DUPTABLE                         R31 K48 [{"Position", "Size", "Layout"}]
      250 GETIMPORT                        R32 K42 [UDim2.fromOffset]
      252 LOADN                            R33 0
      253 GETTABLEKS                       R34 R1 K45 ["Tabs"]
      255 GETTABLEKS                       R34 R34 K49 ["VerticalOffset"]
      257 CALL                             R32 2 1
      258 SETTABLEKS                       R32 R31 K37 ["Position"]
      260 GETIMPORT                        R32 K44 [UDim2.new]
      262 LOADN                            R33 1
      263 LOADN                            R34 0
      264 LOADN                            R35 0
      265 GETTABLEKS                       R36 R1 K45 ["Tabs"]
      267 GETTABLEKS                       R36 R36 K50 ["Height"]
      269 CALL                             R32 4 1
      270 SETTABLEKS                       R32 R31 K38 ["Size"]
      272 GETIMPORT                        R32 K54 [Enum.FillDirection.Vertical]
      274 SETTABLEKS                       R32 R31 K47 ["Layout"]
      276 DUPTABLE                         R32 K57 [{"TabBar", "AssetPalettes"}]
      277 GETUPVAL                         R33 1
      278 GETTABLEKS                       R33 R33 K26 ["createElement"]
      280 GETUPVAL                         R34 24
      281 DUPTABLE                         R35 K61 [{"LayoutOrder", "Tabs", "SelectedTab", "SetSelectedTab"}]
      282 NAMECALL                         R36 R19 K62 ["getNextOrder"]
      284 CALL                             R36 1 1
      285 SETTABLEKS                       R36 R35 K58 ["LayoutOrder"]
      287 GETTABLEKS                       R36 R5 K8 ["tabs"]
      289 SETTABLEKS                       R36 R35 K45 ["Tabs"]
      291 SETTABLEKS                       R7 R35 K59 ["SelectedTab"]
      293 NEWCLOSURE                       R36 P4
      294 CAPTURE                          VAL R8
      295 CAPTURE                          VAL R10
      296 CAPTURE                          UPVAL U5
      297 SETTABLEKS                       R36 R35 K60 ["SetSelectedTab"]
      299 CALL                             R33 2 1
      300 SETTABLEKS                       R33 R32 K55 ["TabBar"]
      302 GETUPVAL                         R33 1
      303 GETTABLEKS                       R33 R33 K26 ["createElement"]
      305 GETUPVAL                         R34 25
      306 DUPTABLE                         R35 K65 [{"LayoutOrder", "SelectedTab", "SelectedPalette", "SetSelectedPalette"}]
      307 NAMECALL                         R36 R19 K62 ["getNextOrder"]
      309 CALL                             R36 1 1
      310 SETTABLEKS                       R36 R35 K58 ["LayoutOrder"]
      312 SETTABLEKS                       R7 R35 K59 ["SelectedTab"]
      314 SETTABLEKS                       R9 R35 K63 ["SelectedPalette"]
      316 SETTABLEKS                       R10 R35 K64 ["SetSelectedPalette"]
      318 CALL                             R33 2 1
      319 SETTABLEKS                       R33 R32 K56 ["AssetPalettes"]
      321 CALL                             R29 3 1
      322 SETTABLEKS                       R29 R28 K45 ["Tabs"]
      324 GETUPVAL                         R29 1
      325 GETTABLEKS                       R29 R29 K26 ["createElement"]
      327 GETUPVAL                         R30 22
      328 DUPTABLE                         R31 K67 [{"AnchorPoint", "Position", "Size"}]
      329 GETIMPORT                        R32 K69 [Vector2.new]
      331 LOADN                            R33 0
      332 LOADN                            R34 1
      333 CALL                             R32 2 1
      334 SETTABLEKS                       R32 R31 K66 ["AnchorPoint"]
      336 GETIMPORT                        R32 K71 [UDim2.fromScale]
      338 LOADN                            R33 0
      339 LOADN                            R34 1
      340 CALL                             R32 2 1
      341 SETTABLEKS                       R32 R31 K37 ["Position"]
      343 GETIMPORT                        R32 K44 [UDim2.new]
      345 LOADN                            R33 1
      346 LOADN                            R34 0
      347 LOADN                            R35 1
      348 GETTABLEKS                       R37 R1 K45 ["Tabs"]
      350 GETTABLEKS                       R37 R37 K50 ["Height"]
      352 MINUS                            R36 R37
      353 CALL                             R32 4 1
      354 SETTABLEKS                       R32 R31 K38 ["Size"]
      356 DUPTABLE                         R32 K74 [{"CatalogContainer", "Preview"}]
      357 MOVE                             R33 R11
      358 JUMPIFNOT                        R33 ; [+101]
      359 GETUPVAL                         R33 1
      360 GETTABLEKS                       R33 R33 K26 ["createElement"]
      362 GETUPVAL                         R34 22
      363 DUPTABLE                         R35 K77 [{"AutomaticSize", "BackgroundColor3", "Size"}]
      364 GETIMPORT                        R36 K79 [Enum.AutomaticSize.Y]
      366 SETTABLEKS                       R36 R35 K75 ["AutomaticSize"]
      368 GETTABLEKS                       R36 R1 K56 ["AssetPalettes"]
      370 GETTABLEKS                       R36 R36 K80 ["BackgroundColor"]
      372 SETTABLEKS                       R36 R35 K76 ["BackgroundColor3"]
      374 GETIMPORT                        R36 K44 [UDim2.new]
      376 LOADN                            R37 0
      377 GETTABLEKS                       R38 R1 K56 ["AssetPalettes"]
      379 GETTABLEKS                       R38 R38 K43 ["Width"]
      381 LOADN                            R39 1
      382 LOADN                            R40 0
      383 CALL                             R36 4 1
      384 SETTABLEKS                       R36 R35 K38 ["Size"]
      386 DUPTABLE                         R36 K82 [{"CatalogContainer", "Separator"}]
      387 GETUPVAL                         R37 1
      388 GETTABLEKS                       R37 R37 K26 ["createElement"]
      390 GETUPVAL                         R38 22
      391 DUPTABLE                         R39 K83 [{"Size"}]
      392 GETIMPORT                        R40 K44 [UDim2.new]
      394 LOADN                            R41 1
      395 GETTABLEKS                       R43 R1 K56 ["AssetPalettes"]
      397 GETTABLEKS                       R43 R43 K84 ["SeparatorWidth"]
      399 MINUS                            R42 R43
      400 LOADN                            R43 1
      401 LOADN                            R44 0
      402 CALL                             R40 4 1
      403 SETTABLEKS                       R40 R39 K38 ["Size"]
      405 DUPTABLE                         R40 K86 [{"Catalog"}]
      406 GETUPVAL                         R41 1
      407 GETTABLEKS                       R41 R41 K26 ["createElement"]
      409 GETUPVAL                         R42 26
      410 DUPTABLE                         R43 K88 [{"Palette"}]
      411 SETTABLEKS                       R11 R43 K87 ["Palette"]
      413 CALL                             R41 2 1
      414 SETTABLEKS                       R41 R40 K85 ["Catalog"]
      416 CALL                             R37 3 1
      417 SETTABLEKS                       R37 R36 K72 ["CatalogContainer"]
      419 GETUPVAL                         R37 1
      420 GETTABLEKS                       R37 R37 K26 ["createElement"]
      422 GETUPVAL                         R38 22
      423 DUPTABLE                         R39 K89 [{"AnchorPoint", "BackgroundColor3", "Position", "Size"}]
      424 GETIMPORT                        R40 K69 [Vector2.new]
      426 LOADN                            R41 1
      427 LOADN                            R42 0
      428 CALL                             R40 2 1
      429 SETTABLEKS                       R40 R39 K66 ["AnchorPoint"]
      431 GETTABLEKS                       R40 R1 K56 ["AssetPalettes"]
      433 GETTABLEKS                       R40 R40 K90 ["SeparatorColor"]
      435 SETTABLEKS                       R40 R39 K76 ["BackgroundColor3"]
      437 GETIMPORT                        R40 K71 [UDim2.fromScale]
      439 LOADN                            R41 1
      440 LOADN                            R42 0
      441 CALL                             R40 2 1
      442 SETTABLEKS                       R40 R39 K37 ["Position"]
      444 GETIMPORT                        R40 K44 [UDim2.new]
      446 LOADN                            R41 0
      447 GETTABLEKS                       R42 R1 K56 ["AssetPalettes"]
      449 GETTABLEKS                       R42 R42 K84 ["SeparatorWidth"]
      451 LOADN                            R43 1
      452 LOADN                            R44 0
      453 CALL                             R40 4 1
      454 SETTABLEKS                       R40 R39 K38 ["Size"]
      456 CALL                             R37 2 1
      457 SETTABLEKS                       R37 R36 K81 ["Separator"]
      459 CALL                             R33 3 1
      460 SETTABLEKS                       R33 R32 K72 ["CatalogContainer"]
      462 GETUPVAL                         R33 1
      463 GETTABLEKS                       R33 R33 K26 ["createElement"]
      465 GETUPVAL                         R34 22
      466 DUPTABLE                         R35 K67 [{"AnchorPoint", "Position", "Size"}]
      467 GETIMPORT                        R36 K69 [Vector2.new]
      469 LOADN                            R37 1
      470 LOADN                            R38 0
      471 CALL                             R36 2 1
      472 SETTABLEKS                       R36 R35 K66 ["AnchorPoint"]
      474 GETIMPORT                        R36 K71 [UDim2.fromScale]
      476 LOADN                            R37 1
      477 LOADN                            R38 0
      478 CALL                             R36 2 1
      479 SETTABLEKS                       R36 R35 K37 ["Position"]
      481 GETIMPORT                        R36 K44 [UDim2.new]
      483 LOADN                            R37 1
      484 JUMPIFNOT                        R11 ; [+6]
      485 GETTABLEKS                       R39 R1 K56 ["AssetPalettes"]
      487 GETTABLEKS                       R39 R39 K43 ["Width"]
      489 MINUS                            R38 R39
      490 JUMP                             ; [+1]
      491 LOADN                            R38 0
      492 LOADN                            R39 1
      493 LOADN                            R40 0
      494 CALL                             R36 4 1
      495 SETTABLEKS                       R36 R35 K38 ["Size"]
      497 DUPTABLE                         R36 K97 [{"DummyPreview", "ResizeNotification", "AvatarSizingHint", "UGCValidationNotice", "ChedkRender", "ContextualSurveyDialogButton"}]
      498 GETUPVAL                         R37 1
      499 GETTABLEKS                       R37 R37 K26 ["createElement"]
      501 GETUPVAL                         R38 27
      502 DUPTABLE                         R39 K101 [{"Dummy", "Avatar", "RevertToDefault", "ResetCameraSignal"}]
      503 SETTABLEKS                       R16 R39 K98 ["Dummy"]
      505 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      507 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      509 NEWCLOSURE                       R40 P5
      510 CAPTURE                          VAL R6
      511 CAPTURE                          VAL R3
      512 SETTABLEKS                       R40 R39 K99 ["RevertToDefault"]
      514 GETTABLEKS                       R40 R17 K24 ["current"]
      516 SETTABLEKS                       R40 R39 K100 ["ResetCameraSignal"]
      518 CALL                             R37 2 1
      519 SETTABLEKS                       R37 R36 K91 ["DummyPreview"]
      521 GETUPVAL                         R37 1
      522 GETTABLEKS                       R37 R37 K26 ["createElement"]
      524 GETUPVAL                         R38 28
      525 DUPTABLE                         R39 K102 [{"Avatar"}]
      526 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      528 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      530 CALL                             R37 2 1
      531 SETTABLEKS                       R37 R36 K92 ["ResizeNotification"]
      533 GETTABLEKS                       R38 R0 K103 ["IsSelected"]
      535 JUMPIFNOT                        R38 ; [+11]
      536 GETUPVAL                         R37 1
      537 GETTABLEKS                       R37 R37 K26 ["createElement"]
      539 GETUPVAL                         R38 29
      540 DUPTABLE                         R39 K102 [{"Avatar"}]
      541 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      543 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      545 CALL                             R37 2 1
      546 JUMP                             ; [+1]
      547 LOADNIL                          R37
      548 SETTABLEKS                       R37 R36 K93 ["AvatarSizingHint"]
      550 GETUPVAL                         R37 1
      551 GETTABLEKS                       R37 R37 K26 ["createElement"]
      553 GETUPVAL                         R38 30
      554 DUPTABLE                         R39 K102 [{"Avatar"}]
      555 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      557 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      559 CALL                             R37 2 1
      560 SETTABLEKS                       R37 R36 K94 ["UGCValidationNotice"]
      562 GETTABLEKS                       R38 R4 K4 ["stage"]
      564 JUMPIFNOTEQKS                    R38 K104 ["CheckBody"] ; [+20]
      566 GETUPVAL                         R37 1
      567 GETTABLEKS                       R37 R37 K26 ["createElement"]
      569 GETUPVAL                         R38 4
      570 GETTABLEKS                       R38 R38 K104 ["CheckBody"]
      572 GETTABLEKS                       R38 R38 K105 ["render"]
      574 DUPTABLE                         R39 K106 [{"Avatar", "Dummy", "SelectedTab"}]
      575 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      577 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      579 SETTABLEKS                       R16 R39 K98 ["Dummy"]
      581 SETTABLEKS                       R7 R39 K59 ["SelectedTab"]
      583 CALL                             R37 2 1
      584 JUMP                             ; [+33]
      585 GETTABLEKS                       R38 R4 K4 ["stage"]
      587 JUMPIFNOTEQKS                    R38 K107 ["CheckFace"] ; [+20]
      589 GETUPVAL                         R37 1
      590 GETTABLEKS                       R37 R37 K26 ["createElement"]
      592 GETUPVAL                         R38 4
      593 GETTABLEKS                       R38 R38 K107 ["CheckFace"]
      595 GETTABLEKS                       R38 R38 K105 ["render"]
      597 DUPTABLE                         R39 K106 [{"Avatar", "Dummy", "SelectedTab"}]
      598 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      600 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      602 SETTABLEKS                       R16 R39 K98 ["Dummy"]
      604 SETTABLEKS                       R7 R39 K59 ["SelectedTab"]
      606 CALL                             R37 2 1
      607 JUMP                             ; [+10]
      608 GETIMPORT                        R37 K109 [error]
      610 LOADK                            R39 K110 ["Unknown stage %*"]
      611 GETTABLEKS                       R41 R4 K4 ["stage"]
      613 NAMECALL                         R39 R39 K111 ["format"]
      615 CALL                             R39 2 1
      616 MOVE                             R38 R39
      617 CALL                             R37 1 1
      618 SETTABLEKS                       R37 R36 K95 ["ChedkRender"]
      620 GETUPVAL                         R37 1
      621 GETTABLEKS                       R37 R37 K26 ["createElement"]
      623 GETUPVAL                         R38 31
      624 DUPTABLE                         R39 K102 [{"Avatar"}]
      625 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      627 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      629 CALL                             R37 2 1
      630 SETTABLEKS                       R37 R36 K96 ["ContextualSurveyDialogButton"]
      632 CALL                             R33 3 1
      633 SETTABLEKS                       R33 R32 K73 ["Preview"]
      635 CALL                             R29 3 1
      636 SETTABLEKS                       R29 R28 K28 ["Contents"]
      638 CALL                             R25 3 1
      639 SETTABLEKS                       R25 R24 K28 ["Contents"]
      641 CALL                             R21 3 1
      642 SETTABLEKS                       R21 R20 K0 ["AvatarScreen"]
      644 GETUPVAL                         R21 1
      645 GETTABLEKS                       R21 R21 K26 ["createElement"]
      647 GETUPVAL                         R22 32
      648 DUPTABLE                         R23 K113 [{"WorldModel", "Dummy", "UpdateHumanoidDescription"}]
      649 SETTABLEKS                       R6 R23 K6 ["WorldModel"]
      651 SETTABLEKS                       R16 R23 K98 ["Dummy"]
      653 NEWCLOSURE                       R24 P6
      654 CAPTURE                          VAL R14
      655 SETTABLEKS                       R24 R23 K112 ["UpdateHumanoidDescription"]
      657 CALL                             R21 2 1
      658 SETTABLEKS                       R21 R20 K114 ["InitialImport"]
      660 GETUPVAL                         R21 20
      661 GETTABLEKS                       R21 R21 K115 ["EDITING_TOOLS_GUI_NAMES"]
      663 GETTABLEKS                       R21 R21 K116 ["EditingToolbar"]
      665 GETUPVAL                         R22 12
      666 CALL                             R22 0 1
      667 JUMPIFNOT                        R22 ; [+10]
      668 GETUPVAL                         R22 1
      669 GETTABLEKS                       R22 R22 K26 ["createElement"]
      671 GETUPVAL                         R23 33
      672 DUPTABLE                         R24 K117 [{"avatar"}]
      673 GETTABLEKS                       R25 R0 K5 ["Avatar"]
      675 SETTABLEKS                       R25 R24 K31 ["avatar"]
      677 CALL                             R22 2 1
      678 SETTABLE                         R22 R20 R21
      679 GETUPVAL                         R21 1
      680 GETTABLEKS                       R21 R21 K26 ["createElement"]
      682 GETUPVAL                         R22 34
      683 DUPTABLE                         R23 K119 [{"providers"}]
      684 NEWTABLE                         R24 0 3
      686 GETUPVAL                         R25 1
      687 GETTABLEKS                       R25 R25 K26 ["createElement"]
      689 GETUPVAL                         R26 35
      690 GETTABLEKS                       R26 R26 K120 ["Provider"]
      692 DUPTABLE                         R27 K124 [{"openPalette", "resetCamera", "stage", "selectedAvatar"}]
      693 SETTABLEKS                       R12 R27 K121 ["openPalette"]
      695 SETTABLEKS                       R18 R27 K122 ["resetCamera"]
      697 SETTABLEKS                       R5 R27 K4 ["stage"]
      699 SETTABLEKS                       R6 R27 K123 ["selectedAvatar"]
      701 CALL                             R25 2 1
      702 GETUPVAL                         R26 1
      703 GETTABLEKS                       R26 R26 K26 ["createElement"]
      705 GETUPVAL                         R27 36
      706 GETTABLEKS                       R27 R27 K120 ["Provider"]
      708 CALL                             R26 1 1
      709 GETUPVAL                         R28 12
      710 CALL                             R28 0 1
      711 JUMPIFNOT                        R28 ; [+8]
      712 GETUPVAL                         R27 1
      713 GETTABLEKS                       R27 R27 K26 ["createElement"]
      715 GETUPVAL                         R28 37
      716 GETTABLEKS                       R28 R28 K120 ["Provider"]
      718 CALL                             R27 1 1
      719 JUMP                             ; [+1]
      720 LOADNIL                          R27
      721 SETLIST                          R24 R25 3 [1]
      723 SETTABLEKS                       R24 R23 K118 ["providers"]
      725 MOVE                             R24 R20
      726 CALL                             R21 3 -1
      727 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetPalettes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["AvatarScreenContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["Sizing"]
       33 GETTABLEKS                       R4 R4 K11 ["AvatarSizingHint"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K7 ["Components"]
       42 GETTABLEKS                       R5 R5 K12 ["Catalog"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Src"]
       49 GETTABLEKS                       R6 R6 K13 ["Resources"]
       51 GETTABLEKS                       R6 R6 K14 ["CatalogItems"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K6 ["Src"]
       58 GETTABLEKS                       R7 R7 K15 ["Util"]
       60 GETTABLEKS                       R7 R7 K16 ["Constants"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K6 ["Src"]
       67 GETTABLEKS                       R8 R8 K7 ["Components"]
       69 GETTABLEKS                       R8 R8 K17 ["ContextStack"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETIMPORT                        R9 K1 [script]
       76 GETTABLEKS                       R9 R9 K18 ["ContextualSurveyDialogButton"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K19 ["Packages"]
       83 GETTABLEKS                       R10 R10 K20 ["Dash"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K6 ["Src"]
       90 GETTABLEKS                       R11 R11 K7 ["Components"]
       92 GETTABLEKS                       R11 R11 K21 ["DisambiguationMenuContext"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R12 R0 K6 ["Src"]
       99 GETTABLEKS                       R12 R12 K7 ["Components"]
      101 GETTABLEKS                       R12 R12 K22 ["EditingTools"]
      103 GETTABLEKS                       R12 R12 K23 ["CageEditingTool"]
      105 GETTABLEKS                       R12 R12 K24 ["CageEditingToolHistoryContext"]
      107 CALL                             R11 1 1
      108 GETIMPORT                        R12 K5 [require]
      110 GETTABLEKS                       R13 R0 K6 ["Src"]
      112 GETTABLEKS                       R13 R13 K7 ["Components"]
      114 GETTABLEKS                       R13 R13 K22 ["EditingTools"]
      116 CALL                             R12 1 1
      117 GETIMPORT                        R13 K5 [require]
      119 GETTABLEKS                       R14 R0 K6 ["Src"]
      121 GETTABLEKS                       R14 R14 K15 ["Util"]
      123 GETTABLEKS                       R14 R14 K25 ["EquipmentStateContext"]
      125 CALL                             R13 1 1
      126 GETIMPORT                        R14 K5 [require]
      128 GETTABLEKS                       R15 R0 K19 ["Packages"]
      130 GETTABLEKS                       R15 R15 K26 ["Framework"]
      132 CALL                             R14 1 1
      133 GETIMPORT                        R15 K5 [require]
      135 GETTABLEKS                       R16 R0 K6 ["Src"]
      137 GETTABLEKS                       R16 R16 K7 ["Components"]
      139 GETTABLEKS                       R16 R16 K27 ["PrimaryDummyPreview"]
      141 CALL                             R15 1 1
      142 GETIMPORT                        R16 K5 [require]
      144 GETTABLEKS                       R17 R0 K19 ["Packages"]
      146 GETTABLEKS                       R17 R17 K28 ["React"]
      148 CALL                             R16 1 1
      149 GETIMPORT                        R17 K5 [require]
      151 GETTABLEKS                       R18 R0 K6 ["Src"]
      153 GETTABLEKS                       R18 R18 K7 ["Components"]
      155 GETTABLEKS                       R18 R18 K29 ["ResizeNotice"]
      157 GETTABLEKS                       R18 R18 K29 ["ResizeNotice"]
      159 CALL                             R17 1 1
      160 GETIMPORT                        R18 K5 [require]
      162 GETTABLEKS                       R19 R0 K6 ["Src"]
      164 GETTABLEKS                       R19 R19 K15 ["Util"]
      166 GETTABLEKS                       R19 R19 K30 ["SimpleSerializedStateContext"]
      168 CALL                             R18 1 1
      169 GETIMPORT                        R19 K5 [require]
      171 GETTABLEKS                       R20 R0 K6 ["Src"]
      173 GETTABLEKS                       R20 R20 K7 ["Components"]
      175 GETTABLEKS                       R20 R20 K31 ["StageSelector"]
      177 CALL                             R19 1 1
      178 GETIMPORT                        R20 K5 [require]
      180 GETIMPORT                        R21 K1 [script]
      182 GETTABLEKS                       R21 R21 K32 ["Stages"]
      184 CALL                             R20 1 1
      185 GETIMPORT                        R21 K5 [require]
      187 GETTABLEKS                       R22 R0 K6 ["Src"]
      189 GETTABLEKS                       R22 R22 K7 ["Components"]
      191 GETTABLEKS                       R22 R22 K33 ["TabBar"]
      193 CALL                             R21 1 1
      194 GETIMPORT                        R22 K5 [require]
      196 GETTABLEKS                       R23 R0 K6 ["Src"]
      198 GETTABLEKS                       R23 R23 K13 ["Resources"]
      200 GETTABLEKS                       R23 R23 K34 ["Theme"]
      202 CALL                             R22 1 1
      203 GETIMPORT                        R23 K5 [require]
      205 GETTABLEKS                       R24 R0 K6 ["Src"]
      207 GETTABLEKS                       R24 R24 K35 ["Types"]
      209 CALL                             R23 1 1
      210 GETIMPORT                        R24 K5 [require]
      212 GETTABLEKS                       R25 R0 K6 ["Src"]
      214 GETTABLEKS                       R25 R25 K7 ["Components"]
      216 GETTABLEKS                       R25 R25 K36 ["UGCValidationNotice"]
      218 CALL                             R24 1 1
      219 GETIMPORT                        R25 K5 [require]
      221 GETTABLEKS                       R26 R0 K6 ["Src"]
      223 GETTABLEKS                       R26 R26 K37 ["Flags"]
      225 GETTABLEKS                       R26 R26 K38 ["getFFlagAvatarPreviewerEditingTools"]
      227 CALL                             R25 1 1
      228 GETIMPORT                        R26 K5 [require]
      230 GETTABLEKS                       R27 R0 K6 ["Src"]
      232 GETTABLEKS                       R27 R27 K37 ["Flags"]
      234 GETTABLEKS                       R27 R27 K39 ["getFFlagAvatarPreviewerRemoveAccessoryWeldingWorkaround"]
      236 CALL                             R26 1 1
      237 GETIMPORT                        R27 K5 [require]
      239 GETTABLEKS                       R28 R0 K6 ["Src"]
      241 GETTABLEKS                       R28 R28 K15 ["Util"]
      243 GETTABLEKS                       R28 R28 K40 ["getPaletteFromKey"]
      245 CALL                             R27 1 1
      246 GETIMPORT                        R28 K5 [require]
      248 GETTABLEKS                       R29 R0 K6 ["Src"]
      250 GETTABLEKS                       R29 R29 K41 ["Hooks"]
      252 GETTABLEKS                       R29 R29 K42 ["useAccessoryWelding"]
      254 CALL                             R28 1 1
      255 GETIMPORT                        R29 K5 [require]
      257 GETTABLEKS                       R30 R0 K6 ["Src"]
      259 GETTABLEKS                       R30 R30 K41 ["Hooks"]
      261 GETTABLEKS                       R30 R30 K43 ["useBodyPartsFromBase"]
      263 CALL                             R29 1 1
      264 GETIMPORT                        R30 K5 [require]
      266 GETTABLEKS                       R31 R0 K6 ["Src"]
      268 GETTABLEKS                       R31 R31 K41 ["Hooks"]
      270 GETTABLEKS                       R31 R31 K44 ["useClothingFromInstances"]
      272 CALL                             R30 1 1
      273 GETIMPORT                        R31 K5 [require]
      275 GETTABLEKS                       R32 R0 K6 ["Src"]
      277 GETTABLEKS                       R32 R32 K41 ["Hooks"]
      279 GETTABLEKS                       R32 R32 K45 ["useClothingFromInstances_DEPRECATED"]
      281 CALL                             R31 1 1
      282 GETIMPORT                        R32 K5 [require]
      284 GETTABLEKS                       R33 R0 K6 ["Src"]
      286 GETTABLEKS                       R33 R33 K41 ["Hooks"]
      288 GETTABLEKS                       R33 R33 K46 ["useCopyPropertyChanges"]
      290 CALL                             R32 1 1
      291 GETIMPORT                        R33 K5 [require]
      293 GETTABLEKS                       R34 R0 K6 ["Src"]
      295 GETTABLEKS                       R34 R34 K41 ["Hooks"]
      297 GETTABLEKS                       R34 R34 K47 ["useDummyFromHumanoidDescription"]
      299 CALL                             R33 1 1
      300 GETIMPORT                        R34 K5 [require]
      302 GETTABLEKS                       R35 R0 K6 ["Src"]
      304 GETTABLEKS                       R35 R35 K41 ["Hooks"]
      306 GETTABLEKS                       R35 R35 K48 ["useInitialImportController"]
      308 CALL                             R34 1 1
      309 GETIMPORT                        R35 K5 [require]
      311 GETTABLEKS                       R36 R0 K6 ["Src"]
      313 GETTABLEKS                       R36 R36 K41 ["Hooks"]
      315 GETTABLEKS                       R36 R36 K49 ["useMoveAccessoriesAlongsideAttachments"]
      317 CALL                             R35 1 1
      318 GETIMPORT                        R36 K5 [require]
      320 GETTABLEKS                       R37 R0 K6 ["Src"]
      322 GETTABLEKS                       R37 R37 K41 ["Hooks"]
      324 GETTABLEKS                       R37 R37 K50 ["usePreviewHumanoidDescription"]
      326 CALL                             R36 1 1
      327 GETIMPORT                        R37 K5 [require]
      329 GETTABLEKS                       R38 R0 K6 ["Src"]
      331 GETTABLEKS                       R38 R38 K41 ["Hooks"]
      333 GETTABLEKS                       R38 R38 K51 ["useSynchronizeGearAccessories"]
      335 CALL                             R37 1 1
      336 GETIMPORT                        R38 K5 [require]
      338 GETTABLEKS                       R39 R0 K6 ["Src"]
      340 GETTABLEKS                       R39 R39 K41 ["Hooks"]
      342 GETTABLEKS                       R39 R39 K52 ["useTrackNewChildrenController"]
      344 CALL                             R38 1 1
      345 GETIMPORT                        R39 K5 [require]
      347 GETTABLEKS                       R40 R0 K6 ["Src"]
      349 GETTABLEKS                       R40 R40 K41 ["Hooks"]
      351 GETTABLEKS                       R40 R40 K53 ["useUntexturedController"]
      353 CALL                             R39 1 1
      354 GETTABLEKS                       R40 R14 K54 ["UI"]
      356 GETTABLEKS                       R41 R40 K55 ["Pane"]
      358 GETTABLEKS                       R42 R14 K15 ["Util"]
      360 GETTABLEKS                       R42 R42 K56 ["LayoutOrderIterator"]
      362 GETTABLEKS                       R43 R14 K15 ["Util"]
      364 GETTABLEKS                       R43 R43 K57 ["Signal"]
      366 GETTABLEKS                       R44 R14 K58 ["ContextServices"]
      368 GETTABLEKS                       R44 R44 K59 ["Stylizer"]
      370 DUPCLOSURE                       R45 K60 [PROTO_0]
      371 CAPTURE                          VAL R5
      372 DUPCLOSURE                       R46 K61 [PROTO_1]
      373 CAPTURE                          VAL R34
      374 CAPTURE                          VAL R38
      375 CAPTURE                          VAL R25
      376 CAPTURE                          VAL R32
      377 DUPCLOSURE                       R47 K62 [PROTO_10]
      378 CAPTURE                          VAL R44
      379 CAPTURE                          VAL R16
      380 CAPTURE                          VAL R13
      381 CAPTURE                          VAL R18
      382 CAPTURE                          VAL R20
      383 CAPTURE                          VAL R5
      384 CAPTURE                          VAL R9
      385 CAPTURE                          VAL R27
      386 CAPTURE                          VAL R36
      387 CAPTURE                          VAL R33
      388 CAPTURE                          VAL R29
      389 CAPTURE                          VAL R37
      390 CAPTURE                          VAL R25
      391 CAPTURE                          VAL R30
      392 CAPTURE                          VAL R31
      393 CAPTURE                          VAL R39
      394 CAPTURE                          VAL R26
      395 CAPTURE                          VAL R28
      396 CAPTURE                          VAL R35
      397 CAPTURE                          VAL R43
      398 CAPTURE                          VAL R6
      399 CAPTURE                          VAL R42
      400 CAPTURE                          VAL R41
      401 CAPTURE                          VAL R19
      402 CAPTURE                          VAL R21
      403 CAPTURE                          VAL R1
      404 CAPTURE                          VAL R4
      405 CAPTURE                          VAL R15
      406 CAPTURE                          VAL R17
      407 CAPTURE                          VAL R3
      408 CAPTURE                          VAL R24
      409 CAPTURE                          VAL R8
      410 CAPTURE                          VAL R46
      411 CAPTURE                          VAL R12
      412 CAPTURE                          VAL R7
      413 CAPTURE                          VAL R2
      414 CAPTURE                          VAL R10
      415 CAPTURE                          VAL R11
      416 RETURN                           R47 1
