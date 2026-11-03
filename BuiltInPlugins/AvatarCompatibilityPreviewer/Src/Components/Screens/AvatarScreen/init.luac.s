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
        9 GETTABLEKS                       R2 R0 K0 ["WorldModel"]
       11 GETTABLEKS                       R3 R0 K1 ["Dummy"]
       13 GETTABLEKS                       R4 R0 K2 ["UpdateHumanoidDescription"]
       15 CALL                             R1 3 0
       16 RETURN                           R0 0

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
       54 LOADK                            R4 K10 ["Invalid stage for %* (in %*)"]
       55 MOVE                             R6 R0
       56 MOVE                             R7 R2
       57 NAMECALL                         R4 R4 K11 ["format"]
       59 CALL                             R4 3 1
       60 CALL                             R3 1 0
       61 RETURN                           R0 0

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
      123 DUPTABLE                         R18 K20 [{["dummy"], ["includeBuiltInAccessories"] = False}]
      124 SETTABLEKS                       R16 R18 K17 ["dummy"]
      126 CALL                             R17 1 0
      127 GETUPVAL                         R17 13
      128 MOVE                             R18 R16
      129 GETTABLEKS                       R19 R4 K21 ["isTextured"]
      131 CALL                             R17 2 0
      132 GETUPVAL                         R17 14
      133 CALL                             R17 0 1
      134 JUMPIF                           R17 ; [+3]
      135 GETUPVAL                         R17 15
      136 MOVE                             R18 R16
      137 CALL                             R17 1 0
      138 GETUPVAL                         R17 16
      139 MOVE                             R18 R16
      140 CALL                             R17 1 0
      141 GETUPVAL                         R17 1
      142 GETTABLEKS                       R17 R17 K22 ["useRef"]
      144 GETUPVAL                         R18 17
      145 GETTABLEKS                       R18 R18 K23 ["new"]
      147 CALL                             R18 0 -1
      148 CALL                             R17 -1 1
      149 GETTABLEKS                       R20 R17 K24 ["current"]
      151 JUMPIFNOTEQKNIL                  R20 ; [+2]
      153 LOADB                            R19 0 +1
      154 LOADB                            R19 1
      155 GETUPVAL                         R20 18
      156 GETTABLEKS                       R20 R20 K25 ["LUAU_ANALYZE_ERROR"]
      158 FASTCALL2                        ASSERT R19 R20 ; [+3]
      160 GETIMPORT                        R18 K11 [assert]
      162 CALL                             R18 2 0
      163 GETUPVAL                         R18 1
      164 GETTABLEKS                       R18 R18 K15 ["useCallback"]
      166 NEWCLOSURE                       R19 P3
      167 CAPTURE                          VAL R17
      168 NEWTABLE                         R20 0 0
      170 CALL                             R18 2 1
      171 GETUPVAL                         R19 19
      172 GETTABLEKS                       R19 R19 K23 ["new"]
      174 CALL                             R19 0 1
      175 NEWTABLE                         R20 4 0
      177 GETUPVAL                         R21 1
      178 GETTABLEKS                       R21 R21 K26 ["createElement"]
      180 GETUPVAL                         R22 20
      181 NEWTABLE                         R23 0 0
      183 DUPTABLE                         R24 K29 [{"StageSelect", "Contents"}]
      184 GETUPVAL                         R25 1
      185 GETTABLEKS                       R25 R25 K26 ["createElement"]
      187 GETUPVAL                         R26 21
      188 DUPTABLE                         R27 K36 [{["type"] = "avatar", ["SelectedStage"], ["SetStage"], ["Avatar"], ["PreviewDummy"], ["onBack"]}]
      189 GETTABLEKS                       R28 R4 K4 ["stage"]
      191 SETTABLEKS                       R28 R27 K32 ["SelectedStage"]
      193 GETTABLEKS                       R28 R4 K16 ["setStage"]
      195 SETTABLEKS                       R28 R27 K33 ["SetStage"]
      197 GETTABLEKS                       R28 R0 K5 ["Avatar"]
      199 SETTABLEKS                       R28 R27 K5 ["Avatar"]
      201 SETTABLEKS                       R16 R27 K34 ["PreviewDummy"]
      203 GETTABLEKS                       R28 R0 K35 ["onBack"]
      205 SETTABLEKS                       R28 R27 K35 ["onBack"]
      207 CALL                             R25 2 1
      208 SETTABLEKS                       R25 R24 K27 ["StageSelect"]
      210 GETUPVAL                         R25 1
      211 GETTABLEKS                       R25 R25 K26 ["createElement"]
      213 GETUPVAL                         R26 20
      214 DUPTABLE                         R27 K39 [{"Position", "Size"}]
      215 GETIMPORT                        R28 K42 [UDim2.fromOffset]
      217 GETTABLEKS                       R29 R2 K43 ["Width"]
      219 LOADN                            R30 0
      220 CALL                             R28 2 1
      221 SETTABLEKS                       R28 R27 K37 ["Position"]
      223 GETIMPORT                        R28 K44 [UDim2.new]
      225 LOADN                            R29 1
      226 GETTABLEKS                       R31 R2 K43 ["Width"]
      228 MINUS                            R30 R31
      229 LOADN                            R31 1
      230 LOADN                            R32 0
      231 CALL                             R28 4 1
      232 SETTABLEKS                       R28 R27 K38 ["Size"]
      234 DUPTABLE                         R28 K46 [{"Tabs", "Contents"}]
      235 GETUPVAL                         R29 1
      236 GETTABLEKS                       R29 R29 K26 ["createElement"]
      238 GETUPVAL                         R30 20
      239 DUPTABLE                         R31 K48 [{"Position", "Size", "Layout"}]
      240 GETIMPORT                        R32 K42 [UDim2.fromOffset]
      242 LOADN                            R33 0
      243 GETTABLEKS                       R34 R1 K45 ["Tabs"]
      245 GETTABLEKS                       R34 R34 K49 ["VerticalOffset"]
      247 CALL                             R32 2 1
      248 SETTABLEKS                       R32 R31 K37 ["Position"]
      250 GETIMPORT                        R32 K44 [UDim2.new]
      252 LOADN                            R33 1
      253 LOADN                            R34 0
      254 LOADN                            R35 0
      255 GETTABLEKS                       R36 R1 K45 ["Tabs"]
      257 GETTABLEKS                       R36 R36 K50 ["Height"]
      259 CALL                             R32 4 1
      260 SETTABLEKS                       R32 R31 K38 ["Size"]
      262 GETIMPORT                        R32 K54 [Enum.FillDirection.Vertical]
      264 SETTABLEKS                       R32 R31 K47 ["Layout"]
      266 DUPTABLE                         R32 K57 [{"TabBar", "AssetPalettes"}]
      267 GETUPVAL                         R33 1
      268 GETTABLEKS                       R33 R33 K26 ["createElement"]
      270 GETUPVAL                         R34 22
      271 DUPTABLE                         R35 K61 [{"LayoutOrder", "Tabs", "SelectedTab", "SetSelectedTab"}]
      272 NAMECALL                         R36 R19 K62 ["getNextOrder"]
      274 CALL                             R36 1 1
      275 SETTABLEKS                       R36 R35 K58 ["LayoutOrder"]
      277 GETTABLEKS                       R36 R5 K8 ["tabs"]
      279 SETTABLEKS                       R36 R35 K45 ["Tabs"]
      281 SETTABLEKS                       R7 R35 K59 ["SelectedTab"]
      283 NEWCLOSURE                       R36 P4
      284 CAPTURE                          VAL R8
      285 CAPTURE                          VAL R10
      286 CAPTURE                          UPVAL U5
      287 SETTABLEKS                       R36 R35 K60 ["SetSelectedTab"]
      289 CALL                             R33 2 1
      290 SETTABLEKS                       R33 R32 K55 ["TabBar"]
      292 GETUPVAL                         R33 1
      293 GETTABLEKS                       R33 R33 K26 ["createElement"]
      295 GETUPVAL                         R34 23
      296 DUPTABLE                         R35 K65 [{"LayoutOrder", "SelectedTab", "SelectedPalette", "SetSelectedPalette"}]
      297 NAMECALL                         R36 R19 K62 ["getNextOrder"]
      299 CALL                             R36 1 1
      300 SETTABLEKS                       R36 R35 K58 ["LayoutOrder"]
      302 SETTABLEKS                       R7 R35 K59 ["SelectedTab"]
      304 SETTABLEKS                       R9 R35 K63 ["SelectedPalette"]
      306 SETTABLEKS                       R10 R35 K64 ["SetSelectedPalette"]
      308 CALL                             R33 2 1
      309 SETTABLEKS                       R33 R32 K56 ["AssetPalettes"]
      311 CALL                             R29 3 1
      312 SETTABLEKS                       R29 R28 K45 ["Tabs"]
      314 GETUPVAL                         R29 1
      315 GETTABLEKS                       R29 R29 K26 ["createElement"]
      317 GETUPVAL                         R30 20
      318 DUPTABLE                         R31 K67 [{"AnchorPoint", "Position", "Size"}]
      319 GETIMPORT                        R32 K69 [Vector2.new]
      321 LOADN                            R33 0
      322 LOADN                            R34 1
      323 CALL                             R32 2 1
      324 SETTABLEKS                       R32 R31 K66 ["AnchorPoint"]
      326 GETIMPORT                        R32 K71 [UDim2.fromScale]
      328 LOADN                            R33 0
      329 LOADN                            R34 1
      330 CALL                             R32 2 1
      331 SETTABLEKS                       R32 R31 K37 ["Position"]
      333 GETIMPORT                        R32 K44 [UDim2.new]
      335 LOADN                            R33 1
      336 LOADN                            R34 0
      337 LOADN                            R35 1
      338 GETTABLEKS                       R37 R1 K45 ["Tabs"]
      340 GETTABLEKS                       R37 R37 K50 ["Height"]
      342 MINUS                            R36 R37
      343 CALL                             R32 4 1
      344 SETTABLEKS                       R32 R31 K38 ["Size"]
      346 DUPTABLE                         R32 K74 [{"CatalogContainer", "Preview"}]
      347 MOVE                             R33 R11
      348 JUMPIFNOT                        R33 ; [+101]
      349 GETUPVAL                         R33 1
      350 GETTABLEKS                       R33 R33 K26 ["createElement"]
      352 GETUPVAL                         R34 20
      353 DUPTABLE                         R35 K77 [{"AutomaticSize", "BackgroundColor3", "Size"}]
      354 GETIMPORT                        R36 K79 [Enum.AutomaticSize.Y]
      356 SETTABLEKS                       R36 R35 K75 ["AutomaticSize"]
      358 GETTABLEKS                       R36 R1 K56 ["AssetPalettes"]
      360 GETTABLEKS                       R36 R36 K80 ["BackgroundColor"]
      362 SETTABLEKS                       R36 R35 K76 ["BackgroundColor3"]
      364 GETIMPORT                        R36 K44 [UDim2.new]
      366 LOADN                            R37 0
      367 GETTABLEKS                       R38 R1 K56 ["AssetPalettes"]
      369 GETTABLEKS                       R38 R38 K43 ["Width"]
      371 LOADN                            R39 1
      372 LOADN                            R40 0
      373 CALL                             R36 4 1
      374 SETTABLEKS                       R36 R35 K38 ["Size"]
      376 DUPTABLE                         R36 K82 [{"CatalogContainer", "Separator"}]
      377 GETUPVAL                         R37 1
      378 GETTABLEKS                       R37 R37 K26 ["createElement"]
      380 GETUPVAL                         R38 20
      381 DUPTABLE                         R39 K83 [{"Size"}]
      382 GETIMPORT                        R40 K44 [UDim2.new]
      384 LOADN                            R41 1
      385 GETTABLEKS                       R43 R1 K56 ["AssetPalettes"]
      387 GETTABLEKS                       R43 R43 K84 ["SeparatorWidth"]
      389 MINUS                            R42 R43
      390 LOADN                            R43 1
      391 LOADN                            R44 0
      392 CALL                             R40 4 1
      393 SETTABLEKS                       R40 R39 K38 ["Size"]
      395 DUPTABLE                         R40 K86 [{"Catalog"}]
      396 GETUPVAL                         R41 1
      397 GETTABLEKS                       R41 R41 K26 ["createElement"]
      399 GETUPVAL                         R42 24
      400 DUPTABLE                         R43 K88 [{"Palette"}]
      401 SETTABLEKS                       R11 R43 K87 ["Palette"]
      403 CALL                             R41 2 1
      404 SETTABLEKS                       R41 R40 K85 ["Catalog"]
      406 CALL                             R37 3 1
      407 SETTABLEKS                       R37 R36 K72 ["CatalogContainer"]
      409 GETUPVAL                         R37 1
      410 GETTABLEKS                       R37 R37 K26 ["createElement"]
      412 GETUPVAL                         R38 20
      413 DUPTABLE                         R39 K89 [{"AnchorPoint", "BackgroundColor3", "Position", "Size"}]
      414 GETIMPORT                        R40 K69 [Vector2.new]
      416 LOADN                            R41 1
      417 LOADN                            R42 0
      418 CALL                             R40 2 1
      419 SETTABLEKS                       R40 R39 K66 ["AnchorPoint"]
      421 GETTABLEKS                       R40 R1 K56 ["AssetPalettes"]
      423 GETTABLEKS                       R40 R40 K90 ["SeparatorColor"]
      425 SETTABLEKS                       R40 R39 K76 ["BackgroundColor3"]
      427 GETIMPORT                        R40 K71 [UDim2.fromScale]
      429 LOADN                            R41 1
      430 LOADN                            R42 0
      431 CALL                             R40 2 1
      432 SETTABLEKS                       R40 R39 K37 ["Position"]
      434 GETIMPORT                        R40 K44 [UDim2.new]
      436 LOADN                            R41 0
      437 GETTABLEKS                       R42 R1 K56 ["AssetPalettes"]
      439 GETTABLEKS                       R42 R42 K84 ["SeparatorWidth"]
      441 LOADN                            R43 1
      442 LOADN                            R44 0
      443 CALL                             R40 4 1
      444 SETTABLEKS                       R40 R39 K38 ["Size"]
      446 CALL                             R37 2 1
      447 SETTABLEKS                       R37 R36 K81 ["Separator"]
      449 CALL                             R33 3 1
      450 SETTABLEKS                       R33 R32 K72 ["CatalogContainer"]
      452 GETUPVAL                         R33 1
      453 GETTABLEKS                       R33 R33 K26 ["createElement"]
      455 GETUPVAL                         R34 20
      456 DUPTABLE                         R35 K67 [{"AnchorPoint", "Position", "Size"}]
      457 GETIMPORT                        R36 K69 [Vector2.new]
      459 LOADN                            R37 1
      460 LOADN                            R38 0
      461 CALL                             R36 2 1
      462 SETTABLEKS                       R36 R35 K66 ["AnchorPoint"]
      464 GETIMPORT                        R36 K71 [UDim2.fromScale]
      466 LOADN                            R37 1
      467 LOADN                            R38 0
      468 CALL                             R36 2 1
      469 SETTABLEKS                       R36 R35 K37 ["Position"]
      471 GETIMPORT                        R36 K44 [UDim2.new]
      473 LOADN                            R37 1
      474 JUMPIFNOT                        R11 ; [+6]
      475 GETTABLEKS                       R39 R1 K56 ["AssetPalettes"]
      477 GETTABLEKS                       R39 R39 K43 ["Width"]
      479 MINUS                            R38 R39
      480 JUMP                             ; [+1]
      481 LOADN                            R38 0
      482 LOADN                            R39 1
      483 LOADN                            R40 0
      484 CALL                             R36 4 1
      485 SETTABLEKS                       R36 R35 K38 ["Size"]
      487 DUPTABLE                         R36 K97 [{"DummyPreview", "ResizeNotification", "AvatarSizingHint", "UGCValidationNotice", "ChedkRender", "ContextualSurveyDialogButton"}]
      488 GETUPVAL                         R37 1
      489 GETTABLEKS                       R37 R37 K26 ["createElement"]
      491 GETUPVAL                         R38 25
      492 DUPTABLE                         R39 K101 [{"Dummy", "Avatar", "RevertToDefault", "ResetCameraSignal"}]
      493 SETTABLEKS                       R16 R39 K98 ["Dummy"]
      495 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      497 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      499 NEWCLOSURE                       R40 P5
      500 CAPTURE                          VAL R6
      501 CAPTURE                          VAL R3
      502 SETTABLEKS                       R40 R39 K99 ["RevertToDefault"]
      504 GETTABLEKS                       R40 R17 K24 ["current"]
      506 SETTABLEKS                       R40 R39 K100 ["ResetCameraSignal"]
      508 CALL                             R37 2 1
      509 SETTABLEKS                       R37 R36 K91 ["DummyPreview"]
      511 GETUPVAL                         R37 1
      512 GETTABLEKS                       R37 R37 K26 ["createElement"]
      514 GETUPVAL                         R38 26
      515 DUPTABLE                         R39 K102 [{"Avatar"}]
      516 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      518 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      520 CALL                             R37 2 1
      521 SETTABLEKS                       R37 R36 K92 ["ResizeNotification"]
      523 GETTABLEKS                       R38 R0 K103 ["IsSelected"]
      525 JUMPIFNOT                        R38 ; [+11]
      526 GETUPVAL                         R37 1
      527 GETTABLEKS                       R37 R37 K26 ["createElement"]
      529 GETUPVAL                         R38 27
      530 DUPTABLE                         R39 K102 [{"Avatar"}]
      531 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      533 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      535 CALL                             R37 2 1
      536 JUMP                             ; [+1]
      537 LOADNIL                          R37
      538 SETTABLEKS                       R37 R36 K93 ["AvatarSizingHint"]
      540 GETUPVAL                         R37 1
      541 GETTABLEKS                       R37 R37 K26 ["createElement"]
      543 GETUPVAL                         R38 28
      544 DUPTABLE                         R39 K102 [{"Avatar"}]
      545 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      547 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      549 CALL                             R37 2 1
      550 SETTABLEKS                       R37 R36 K94 ["UGCValidationNotice"]
      552 GETTABLEKS                       R38 R4 K4 ["stage"]
      554 JUMPIFNOTEQKS                    R38 K104 ["CheckBody"] ; [+20]
      556 GETUPVAL                         R37 1
      557 GETTABLEKS                       R37 R37 K26 ["createElement"]
      559 GETUPVAL                         R38 4
      560 GETTABLEKS                       R38 R38 K104 ["CheckBody"]
      562 GETTABLEKS                       R38 R38 K105 ["render"]
      564 DUPTABLE                         R39 K106 [{"Avatar", "Dummy", "SelectedTab"}]
      565 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      567 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      569 SETTABLEKS                       R16 R39 K98 ["Dummy"]
      571 SETTABLEKS                       R7 R39 K59 ["SelectedTab"]
      573 CALL                             R37 2 1
      574 JUMP                             ; [+32]
      575 GETTABLEKS                       R38 R4 K4 ["stage"]
      577 JUMPIFNOTEQKS                    R38 K107 ["CheckFace"] ; [+20]
      579 GETUPVAL                         R37 1
      580 GETTABLEKS                       R37 R37 K26 ["createElement"]
      582 GETUPVAL                         R38 4
      583 GETTABLEKS                       R38 R38 K107 ["CheckFace"]
      585 GETTABLEKS                       R38 R38 K105 ["render"]
      587 DUPTABLE                         R39 K106 [{"Avatar", "Dummy", "SelectedTab"}]
      588 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      590 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      592 SETTABLEKS                       R16 R39 K98 ["Dummy"]
      594 SETTABLEKS                       R7 R39 K59 ["SelectedTab"]
      596 CALL                             R37 2 1
      597 JUMP                             ; [+9]
      598 GETIMPORT                        R37 K109 [error]
      600 LOADK                            R38 K110 ["Unknown stage %*"]
      601 GETTABLEKS                       R40 R4 K4 ["stage"]
      603 NAMECALL                         R38 R38 K111 ["format"]
      605 CALL                             R38 2 1
      606 CALL                             R37 1 1
      607 SETTABLEKS                       R37 R36 K95 ["ChedkRender"]
      609 GETUPVAL                         R37 1
      610 GETTABLEKS                       R37 R37 K26 ["createElement"]
      612 GETUPVAL                         R38 29
      613 DUPTABLE                         R39 K102 [{"Avatar"}]
      614 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      616 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      618 CALL                             R37 2 1
      619 SETTABLEKS                       R37 R36 K96 ["ContextualSurveyDialogButton"]
      621 CALL                             R33 3 1
      622 SETTABLEKS                       R33 R32 K73 ["Preview"]
      624 CALL                             R29 3 1
      625 SETTABLEKS                       R29 R28 K28 ["Contents"]
      627 CALL                             R25 3 1
      628 SETTABLEKS                       R25 R24 K28 ["Contents"]
      630 CALL                             R21 3 1
      631 SETTABLEKS                       R21 R20 K0 ["AvatarScreen"]
      633 GETUPVAL                         R21 1
      634 GETTABLEKS                       R21 R21 K26 ["createElement"]
      636 GETUPVAL                         R22 30
      637 DUPTABLE                         R23 K113 [{"WorldModel", "Dummy", "UpdateHumanoidDescription"}]
      638 SETTABLEKS                       R6 R23 K6 ["WorldModel"]
      640 SETTABLEKS                       R16 R23 K98 ["Dummy"]
      642 NEWCLOSURE                       R24 P6
      643 CAPTURE                          VAL R14
      644 SETTABLEKS                       R24 R23 K112 ["UpdateHumanoidDescription"]
      646 CALL                             R21 2 1
      647 SETTABLEKS                       R21 R20 K114 ["InitialImport"]
      649 GETUPVAL                         R21 18
      650 GETTABLEKS                       R21 R21 K115 ["EDITING_TOOLS_GUI_NAMES"]
      652 GETTABLEKS                       R21 R21 K116 ["EditingToolbar"]
      654 GETUPVAL                         R22 1
      655 GETTABLEKS                       R22 R22 K26 ["createElement"]
      657 GETUPVAL                         R23 31
      658 DUPTABLE                         R24 K117 [{"avatar"}]
      659 GETTABLEKS                       R25 R0 K5 ["Avatar"]
      661 SETTABLEKS                       R25 R24 K31 ["avatar"]
      663 CALL                             R22 2 1
      664 SETTABLE                         R22 R20 R21
      665 GETUPVAL                         R21 1
      666 GETTABLEKS                       R21 R21 K26 ["createElement"]
      668 GETUPVAL                         R22 32
      669 DUPTABLE                         R23 K119 [{"providers"}]
      670 NEWTABLE                         R24 0 3
      672 GETUPVAL                         R25 1
      673 GETTABLEKS                       R25 R25 K26 ["createElement"]
      675 GETUPVAL                         R26 33
      676 GETTABLEKS                       R26 R26 K120 ["Provider"]
      678 DUPTABLE                         R27 K124 [{"openPalette", "resetCamera", "stage", "selectedAvatar"}]
      679 SETTABLEKS                       R12 R27 K121 ["openPalette"]
      681 SETTABLEKS                       R18 R27 K122 ["resetCamera"]
      683 SETTABLEKS                       R5 R27 K4 ["stage"]
      685 SETTABLEKS                       R6 R27 K123 ["selectedAvatar"]
      687 CALL                             R25 2 1
      688 GETUPVAL                         R26 1
      689 GETTABLEKS                       R26 R26 K26 ["createElement"]
      691 GETUPVAL                         R27 34
      692 GETTABLEKS                       R27 R27 K120 ["Provider"]
      694 CALL                             R26 1 1
      695 GETUPVAL                         R27 1
      696 GETTABLEKS                       R27 R27 K26 ["createElement"]
      698 GETUPVAL                         R28 35
      699 GETTABLEKS                       R28 R28 K120 ["Provider"]
      701 CALL                             R27 1 -1
      702 SETLIST                          R24 R25 -1 [1]
      704 SETTABLEKS                       R24 R23 K118 ["providers"]
      706 MOVE                             R24 R20
      707 CALL                             R21 3 -1
      708 RETURN                           R21 -1

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
      225 GETTABLEKS                       R26 R26 K38 ["getFFlagAvatarPreviewerRemoveAccessoryWeldingWorkaround"]
      227 CALL                             R25 1 1
      228 GETIMPORT                        R26 K5 [require]
      230 GETTABLEKS                       R27 R0 K6 ["Src"]
      232 GETTABLEKS                       R27 R27 K15 ["Util"]
      234 GETTABLEKS                       R27 R27 K39 ["getPaletteFromKey"]
      236 CALL                             R26 1 1
      237 GETIMPORT                        R27 K5 [require]
      239 GETTABLEKS                       R28 R0 K6 ["Src"]
      241 GETTABLEKS                       R28 R28 K40 ["Hooks"]
      243 GETTABLEKS                       R28 R28 K41 ["useAccessoryWelding"]
      245 CALL                             R27 1 1
      246 GETIMPORT                        R28 K5 [require]
      248 GETTABLEKS                       R29 R0 K6 ["Src"]
      250 GETTABLEKS                       R29 R29 K40 ["Hooks"]
      252 GETTABLEKS                       R29 R29 K42 ["useBodyPartsFromBase"]
      254 CALL                             R28 1 1
      255 GETIMPORT                        R29 K5 [require]
      257 GETTABLEKS                       R30 R0 K6 ["Src"]
      259 GETTABLEKS                       R30 R30 K40 ["Hooks"]
      261 GETTABLEKS                       R30 R30 K43 ["useClothingFromInstances"]
      263 CALL                             R29 1 1
      264 GETIMPORT                        R30 K5 [require]
      266 GETTABLEKS                       R31 R0 K6 ["Src"]
      268 GETTABLEKS                       R31 R31 K40 ["Hooks"]
      270 GETTABLEKS                       R31 R31 K44 ["useCopyPropertyChanges"]
      272 CALL                             R30 1 1
      273 GETIMPORT                        R31 K5 [require]
      275 GETTABLEKS                       R32 R0 K6 ["Src"]
      277 GETTABLEKS                       R32 R32 K40 ["Hooks"]
      279 GETTABLEKS                       R32 R32 K45 ["useDummyFromHumanoidDescription"]
      281 CALL                             R31 1 1
      282 GETIMPORT                        R32 K5 [require]
      284 GETTABLEKS                       R33 R0 K6 ["Src"]
      286 GETTABLEKS                       R33 R33 K40 ["Hooks"]
      288 GETTABLEKS                       R33 R33 K46 ["useInitialImportController"]
      290 CALL                             R32 1 1
      291 GETIMPORT                        R33 K5 [require]
      293 GETTABLEKS                       R34 R0 K6 ["Src"]
      295 GETTABLEKS                       R34 R34 K40 ["Hooks"]
      297 GETTABLEKS                       R34 R34 K47 ["useMoveAccessoriesAlongsideAttachments"]
      299 CALL                             R33 1 1
      300 GETIMPORT                        R34 K5 [require]
      302 GETTABLEKS                       R35 R0 K6 ["Src"]
      304 GETTABLEKS                       R35 R35 K40 ["Hooks"]
      306 GETTABLEKS                       R35 R35 K48 ["usePreviewHumanoidDescription"]
      308 CALL                             R34 1 1
      309 GETIMPORT                        R35 K5 [require]
      311 GETTABLEKS                       R36 R0 K6 ["Src"]
      313 GETTABLEKS                       R36 R36 K40 ["Hooks"]
      315 GETTABLEKS                       R36 R36 K49 ["useSynchronizeGearAccessories"]
      317 CALL                             R35 1 1
      318 GETIMPORT                        R36 K5 [require]
      320 GETTABLEKS                       R37 R0 K6 ["Src"]
      322 GETTABLEKS                       R37 R37 K40 ["Hooks"]
      324 GETTABLEKS                       R37 R37 K50 ["useTrackNewChildrenController"]
      326 CALL                             R36 1 1
      327 GETIMPORT                        R37 K5 [require]
      329 GETTABLEKS                       R38 R0 K6 ["Src"]
      331 GETTABLEKS                       R38 R38 K40 ["Hooks"]
      333 GETTABLEKS                       R38 R38 K51 ["useUntexturedController"]
      335 CALL                             R37 1 1
      336 GETTABLEKS                       R38 R14 K52 ["UI"]
      338 GETTABLEKS                       R39 R38 K53 ["Pane"]
      340 GETTABLEKS                       R40 R14 K15 ["Util"]
      342 GETTABLEKS                       R40 R40 K54 ["LayoutOrderIterator"]
      344 GETTABLEKS                       R41 R14 K15 ["Util"]
      346 GETTABLEKS                       R41 R41 K55 ["Signal"]
      348 GETTABLEKS                       R42 R14 K56 ["ContextServices"]
      350 GETTABLEKS                       R42 R42 K57 ["Stylizer"]
      352 DUPCLOSURE                       R43 K58 [PROTO_0]
      353 CAPTURE                          VAL R5
      354 DUPCLOSURE                       R44 K59 [PROTO_1]
      355 CAPTURE                          VAL R32
      356 CAPTURE                          VAL R36
      357 CAPTURE                          VAL R30
      358 DUPCLOSURE                       R45 K60 [PROTO_10]
      359 CAPTURE                          VAL R42
      360 CAPTURE                          VAL R16
      361 CAPTURE                          VAL R13
      362 CAPTURE                          VAL R18
      363 CAPTURE                          VAL R20
      364 CAPTURE                          VAL R5
      365 CAPTURE                          VAL R9
      366 CAPTURE                          VAL R26
      367 CAPTURE                          VAL R34
      368 CAPTURE                          VAL R31
      369 CAPTURE                          VAL R28
      370 CAPTURE                          VAL R35
      371 CAPTURE                          VAL R29
      372 CAPTURE                          VAL R37
      373 CAPTURE                          VAL R25
      374 CAPTURE                          VAL R27
      375 CAPTURE                          VAL R33
      376 CAPTURE                          VAL R41
      377 CAPTURE                          VAL R6
      378 CAPTURE                          VAL R40
      379 CAPTURE                          VAL R39
      380 CAPTURE                          VAL R19
      381 CAPTURE                          VAL R21
      382 CAPTURE                          VAL R1
      383 CAPTURE                          VAL R4
      384 CAPTURE                          VAL R15
      385 CAPTURE                          VAL R17
      386 CAPTURE                          VAL R3
      387 CAPTURE                          VAL R24
      388 CAPTURE                          VAL R8
      389 CAPTURE                          VAL R44
      390 CAPTURE                          VAL R12
      391 CAPTURE                          VAL R7
      392 CAPTURE                          VAL R2
      393 CAPTURE                          VAL R10
      394 CAPTURE                          VAL R11
      395 RETURN                           R45 1
