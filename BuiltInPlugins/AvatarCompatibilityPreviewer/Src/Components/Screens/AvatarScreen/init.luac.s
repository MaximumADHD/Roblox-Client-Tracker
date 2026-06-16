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
      124 JUMPIFNOT                        R17 ; [+9]
      125 GETUPVAL                         R17 13
      126 DUPTABLE                         R18 K19 [{"dummy", "includeBuiltInAccessories"}]
      127 SETTABLEKS                       R16 R18 K17 ["dummy"]
      129 LOADB                            R19 0
      130 SETTABLEKS                       R19 R18 K18 ["includeBuiltInAccessories"]
      132 CALL                             R17 1 0
      133 JUMP                             ; [+3]
      134 GETUPVAL                         R17 14
      135 MOVE                             R18 R16
      136 CALL                             R17 1 0
      137 GETUPVAL                         R17 15
      138 MOVE                             R18 R16
      139 GETTABLEKS                       R19 R4 K20 ["isTextured"]
      141 CALL                             R17 2 0
      142 GETUPVAL                         R17 16
      143 CALL                             R17 0 1
      144 JUMPIF                           R17 ; [+3]
      145 GETUPVAL                         R17 17
      146 MOVE                             R18 R16
      147 CALL                             R17 1 0
      148 GETUPVAL                         R17 12
      149 CALL                             R17 0 1
      150 JUMPIFNOT                        R17 ; [+3]
      151 GETUPVAL                         R17 18
      152 MOVE                             R18 R16
      153 CALL                             R17 1 0
      154 GETUPVAL                         R17 1
      155 GETTABLEKS                       R17 R17 K21 ["useRef"]
      157 GETUPVAL                         R18 19
      158 GETTABLEKS                       R18 R18 K22 ["new"]
      160 CALL                             R18 0 -1
      161 CALL                             R17 -1 1
      162 GETTABLEKS                       R20 R17 K23 ["current"]
      164 JUMPIFNOTEQKNIL                  R20 ; [+2]
      166 LOADB                            R19 0 +1
      167 LOADB                            R19 1
      168 GETUPVAL                         R20 20
      169 GETTABLEKS                       R20 R20 K24 ["LUAU_ANALYZE_ERROR"]
      171 FASTCALL2                        ASSERT R19 R20 ; [+3]
      173 GETIMPORT                        R18 K11 [assert]
      175 CALL                             R18 2 0
      176 GETUPVAL                         R18 1
      177 GETTABLEKS                       R18 R18 K15 ["useCallback"]
      179 NEWCLOSURE                       R19 P3
      180 CAPTURE                          VAL R17
      181 NEWTABLE                         R20 0 0
      183 CALL                             R18 2 1
      184 GETUPVAL                         R19 21
      185 GETTABLEKS                       R19 R19 K22 ["new"]
      187 CALL                             R19 0 1
      188 NEWTABLE                         R20 4 0
      190 GETUPVAL                         R21 1
      191 GETTABLEKS                       R21 R21 K25 ["createElement"]
      193 GETUPVAL                         R22 22
      194 NEWTABLE                         R23 0 0
      196 DUPTABLE                         R24 K28 [{"StageSelect", "Contents"}]
      197 GETUPVAL                         R25 1
      198 GETTABLEKS                       R25 R25 K25 ["createElement"]
      200 GETUPVAL                         R26 23
      201 DUPTABLE                         R27 K34 [{"type", "SelectedStage", "SetStage", "Avatar", "PreviewDummy", "onBack"}]
      202 LOADK                            R28 K35 ["avatar"]
      203 SETTABLEKS                       R28 R27 K29 ["type"]
      205 GETTABLEKS                       R28 R4 K4 ["stage"]
      207 SETTABLEKS                       R28 R27 K30 ["SelectedStage"]
      209 GETTABLEKS                       R28 R4 K16 ["setStage"]
      211 SETTABLEKS                       R28 R27 K31 ["SetStage"]
      213 GETTABLEKS                       R28 R0 K5 ["Avatar"]
      215 SETTABLEKS                       R28 R27 K5 ["Avatar"]
      217 SETTABLEKS                       R16 R27 K32 ["PreviewDummy"]
      219 GETTABLEKS                       R28 R0 K33 ["onBack"]
      221 SETTABLEKS                       R28 R27 K33 ["onBack"]
      223 CALL                             R25 2 1
      224 SETTABLEKS                       R25 R24 K26 ["StageSelect"]
      226 GETUPVAL                         R25 1
      227 GETTABLEKS                       R25 R25 K25 ["createElement"]
      229 GETUPVAL                         R26 22
      230 DUPTABLE                         R27 K38 [{"Position", "Size"}]
      231 GETIMPORT                        R28 K41 [UDim2.fromOffset]
      233 GETTABLEKS                       R29 R2 K42 ["Width"]
      235 LOADN                            R30 0
      236 CALL                             R28 2 1
      237 SETTABLEKS                       R28 R27 K36 ["Position"]
      239 GETIMPORT                        R28 K43 [UDim2.new]
      241 LOADN                            R29 1
      242 GETTABLEKS                       R31 R2 K42 ["Width"]
      244 MINUS                            R30 R31
      245 LOADN                            R31 1
      246 LOADN                            R32 0
      247 CALL                             R28 4 1
      248 SETTABLEKS                       R28 R27 K37 ["Size"]
      250 DUPTABLE                         R28 K45 [{"Tabs", "Contents"}]
      251 GETUPVAL                         R29 1
      252 GETTABLEKS                       R29 R29 K25 ["createElement"]
      254 GETUPVAL                         R30 22
      255 DUPTABLE                         R31 K47 [{"Position", "Size", "Layout"}]
      256 GETIMPORT                        R32 K41 [UDim2.fromOffset]
      258 LOADN                            R33 0
      259 GETTABLEKS                       R34 R1 K44 ["Tabs"]
      261 GETTABLEKS                       R34 R34 K48 ["VerticalOffset"]
      263 CALL                             R32 2 1
      264 SETTABLEKS                       R32 R31 K36 ["Position"]
      266 GETIMPORT                        R32 K43 [UDim2.new]
      268 LOADN                            R33 1
      269 LOADN                            R34 0
      270 LOADN                            R35 0
      271 GETTABLEKS                       R36 R1 K44 ["Tabs"]
      273 GETTABLEKS                       R36 R36 K49 ["Height"]
      275 CALL                             R32 4 1
      276 SETTABLEKS                       R32 R31 K37 ["Size"]
      278 GETIMPORT                        R32 K53 [Enum.FillDirection.Vertical]
      280 SETTABLEKS                       R32 R31 K46 ["Layout"]
      282 DUPTABLE                         R32 K56 [{"TabBar", "AssetPalettes"}]
      283 GETUPVAL                         R33 1
      284 GETTABLEKS                       R33 R33 K25 ["createElement"]
      286 GETUPVAL                         R34 24
      287 DUPTABLE                         R35 K60 [{"LayoutOrder", "Tabs", "SelectedTab", "SetSelectedTab"}]
      288 NAMECALL                         R36 R19 K61 ["getNextOrder"]
      290 CALL                             R36 1 1
      291 SETTABLEKS                       R36 R35 K57 ["LayoutOrder"]
      293 GETTABLEKS                       R36 R5 K8 ["tabs"]
      295 SETTABLEKS                       R36 R35 K44 ["Tabs"]
      297 SETTABLEKS                       R7 R35 K58 ["SelectedTab"]
      299 NEWCLOSURE                       R36 P4
      300 CAPTURE                          VAL R8
      301 CAPTURE                          VAL R10
      302 CAPTURE                          UPVAL U5
      303 SETTABLEKS                       R36 R35 K59 ["SetSelectedTab"]
      305 CALL                             R33 2 1
      306 SETTABLEKS                       R33 R32 K54 ["TabBar"]
      308 GETUPVAL                         R33 1
      309 GETTABLEKS                       R33 R33 K25 ["createElement"]
      311 GETUPVAL                         R34 25
      312 DUPTABLE                         R35 K64 [{"LayoutOrder", "SelectedTab", "SelectedPalette", "SetSelectedPalette"}]
      313 NAMECALL                         R36 R19 K61 ["getNextOrder"]
      315 CALL                             R36 1 1
      316 SETTABLEKS                       R36 R35 K57 ["LayoutOrder"]
      318 SETTABLEKS                       R7 R35 K58 ["SelectedTab"]
      320 SETTABLEKS                       R9 R35 K62 ["SelectedPalette"]
      322 SETTABLEKS                       R10 R35 K63 ["SetSelectedPalette"]
      324 CALL                             R33 2 1
      325 SETTABLEKS                       R33 R32 K55 ["AssetPalettes"]
      327 CALL                             R29 3 1
      328 SETTABLEKS                       R29 R28 K44 ["Tabs"]
      330 GETUPVAL                         R29 1
      331 GETTABLEKS                       R29 R29 K25 ["createElement"]
      333 GETUPVAL                         R30 22
      334 DUPTABLE                         R31 K66 [{"AnchorPoint", "Position", "Size"}]
      335 GETIMPORT                        R32 K68 [Vector2.new]
      337 LOADN                            R33 0
      338 LOADN                            R34 1
      339 CALL                             R32 2 1
      340 SETTABLEKS                       R32 R31 K65 ["AnchorPoint"]
      342 GETIMPORT                        R32 K70 [UDim2.fromScale]
      344 LOADN                            R33 0
      345 LOADN                            R34 1
      346 CALL                             R32 2 1
      347 SETTABLEKS                       R32 R31 K36 ["Position"]
      349 GETIMPORT                        R32 K43 [UDim2.new]
      351 LOADN                            R33 1
      352 LOADN                            R34 0
      353 LOADN                            R35 1
      354 GETTABLEKS                       R37 R1 K44 ["Tabs"]
      356 GETTABLEKS                       R37 R37 K49 ["Height"]
      358 MINUS                            R36 R37
      359 CALL                             R32 4 1
      360 SETTABLEKS                       R32 R31 K37 ["Size"]
      362 DUPTABLE                         R32 K73 [{"CatalogContainer", "Preview"}]
      363 MOVE                             R33 R11
      364 JUMPIFNOT                        R33 ; [+101]
      365 GETUPVAL                         R33 1
      366 GETTABLEKS                       R33 R33 K25 ["createElement"]
      368 GETUPVAL                         R34 22
      369 DUPTABLE                         R35 K76 [{"AutomaticSize", "BackgroundColor3", "Size"}]
      370 GETIMPORT                        R36 K78 [Enum.AutomaticSize.Y]
      372 SETTABLEKS                       R36 R35 K74 ["AutomaticSize"]
      374 GETTABLEKS                       R36 R1 K55 ["AssetPalettes"]
      376 GETTABLEKS                       R36 R36 K79 ["BackgroundColor"]
      378 SETTABLEKS                       R36 R35 K75 ["BackgroundColor3"]
      380 GETIMPORT                        R36 K43 [UDim2.new]
      382 LOADN                            R37 0
      383 GETTABLEKS                       R38 R1 K55 ["AssetPalettes"]
      385 GETTABLEKS                       R38 R38 K42 ["Width"]
      387 LOADN                            R39 1
      388 LOADN                            R40 0
      389 CALL                             R36 4 1
      390 SETTABLEKS                       R36 R35 K37 ["Size"]
      392 DUPTABLE                         R36 K81 [{"CatalogContainer", "Separator"}]
      393 GETUPVAL                         R37 1
      394 GETTABLEKS                       R37 R37 K25 ["createElement"]
      396 GETUPVAL                         R38 22
      397 DUPTABLE                         R39 K82 [{"Size"}]
      398 GETIMPORT                        R40 K43 [UDim2.new]
      400 LOADN                            R41 1
      401 GETTABLEKS                       R43 R1 K55 ["AssetPalettes"]
      403 GETTABLEKS                       R43 R43 K83 ["SeparatorWidth"]
      405 MINUS                            R42 R43
      406 LOADN                            R43 1
      407 LOADN                            R44 0
      408 CALL                             R40 4 1
      409 SETTABLEKS                       R40 R39 K37 ["Size"]
      411 DUPTABLE                         R40 K85 [{"Catalog"}]
      412 GETUPVAL                         R41 1
      413 GETTABLEKS                       R41 R41 K25 ["createElement"]
      415 GETUPVAL                         R42 26
      416 DUPTABLE                         R43 K87 [{"Palette"}]
      417 SETTABLEKS                       R11 R43 K86 ["Palette"]
      419 CALL                             R41 2 1
      420 SETTABLEKS                       R41 R40 K84 ["Catalog"]
      422 CALL                             R37 3 1
      423 SETTABLEKS                       R37 R36 K71 ["CatalogContainer"]
      425 GETUPVAL                         R37 1
      426 GETTABLEKS                       R37 R37 K25 ["createElement"]
      428 GETUPVAL                         R38 22
      429 DUPTABLE                         R39 K88 [{"AnchorPoint", "BackgroundColor3", "Position", "Size"}]
      430 GETIMPORT                        R40 K68 [Vector2.new]
      432 LOADN                            R41 1
      433 LOADN                            R42 0
      434 CALL                             R40 2 1
      435 SETTABLEKS                       R40 R39 K65 ["AnchorPoint"]
      437 GETTABLEKS                       R40 R1 K55 ["AssetPalettes"]
      439 GETTABLEKS                       R40 R40 K89 ["SeparatorColor"]
      441 SETTABLEKS                       R40 R39 K75 ["BackgroundColor3"]
      443 GETIMPORT                        R40 K70 [UDim2.fromScale]
      445 LOADN                            R41 1
      446 LOADN                            R42 0
      447 CALL                             R40 2 1
      448 SETTABLEKS                       R40 R39 K36 ["Position"]
      450 GETIMPORT                        R40 K43 [UDim2.new]
      452 LOADN                            R41 0
      453 GETTABLEKS                       R42 R1 K55 ["AssetPalettes"]
      455 GETTABLEKS                       R42 R42 K83 ["SeparatorWidth"]
      457 LOADN                            R43 1
      458 LOADN                            R44 0
      459 CALL                             R40 4 1
      460 SETTABLEKS                       R40 R39 K37 ["Size"]
      462 CALL                             R37 2 1
      463 SETTABLEKS                       R37 R36 K80 ["Separator"]
      465 CALL                             R33 3 1
      466 SETTABLEKS                       R33 R32 K71 ["CatalogContainer"]
      468 GETUPVAL                         R33 1
      469 GETTABLEKS                       R33 R33 K25 ["createElement"]
      471 GETUPVAL                         R34 22
      472 DUPTABLE                         R35 K66 [{"AnchorPoint", "Position", "Size"}]
      473 GETIMPORT                        R36 K68 [Vector2.new]
      475 LOADN                            R37 1
      476 LOADN                            R38 0
      477 CALL                             R36 2 1
      478 SETTABLEKS                       R36 R35 K65 ["AnchorPoint"]
      480 GETIMPORT                        R36 K70 [UDim2.fromScale]
      482 LOADN                            R37 1
      483 LOADN                            R38 0
      484 CALL                             R36 2 1
      485 SETTABLEKS                       R36 R35 K36 ["Position"]
      487 GETIMPORT                        R36 K43 [UDim2.new]
      489 LOADN                            R37 1
      490 JUMPIFNOT                        R11 ; [+6]
      491 GETTABLEKS                       R39 R1 K55 ["AssetPalettes"]
      493 GETTABLEKS                       R39 R39 K42 ["Width"]
      495 MINUS                            R38 R39
      496 JUMP                             ; [+1]
      497 LOADN                            R38 0
      498 LOADN                            R39 1
      499 LOADN                            R40 0
      500 CALL                             R36 4 1
      501 SETTABLEKS                       R36 R35 K37 ["Size"]
      503 DUPTABLE                         R36 K96 [{"DummyPreview", "ResizeNotification", "AvatarSizingHint", "UGCValidationNotice", "ChedkRender", "ContextualSurveyDialogButton"}]
      504 GETUPVAL                         R37 1
      505 GETTABLEKS                       R37 R37 K25 ["createElement"]
      507 GETUPVAL                         R38 27
      508 DUPTABLE                         R39 K100 [{"Dummy", "Avatar", "RevertToDefault", "ResetCameraSignal"}]
      509 SETTABLEKS                       R16 R39 K97 ["Dummy"]
      511 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      513 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      515 NEWCLOSURE                       R40 P5
      516 CAPTURE                          VAL R6
      517 CAPTURE                          VAL R3
      518 SETTABLEKS                       R40 R39 K98 ["RevertToDefault"]
      520 GETTABLEKS                       R40 R17 K23 ["current"]
      522 SETTABLEKS                       R40 R39 K99 ["ResetCameraSignal"]
      524 CALL                             R37 2 1
      525 SETTABLEKS                       R37 R36 K90 ["DummyPreview"]
      527 GETUPVAL                         R37 1
      528 GETTABLEKS                       R37 R37 K25 ["createElement"]
      530 GETUPVAL                         R38 28
      531 DUPTABLE                         R39 K101 [{"Avatar"}]
      532 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      534 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      536 CALL                             R37 2 1
      537 SETTABLEKS                       R37 R36 K91 ["ResizeNotification"]
      539 GETTABLEKS                       R38 R0 K102 ["IsSelected"]
      541 JUMPIFNOT                        R38 ; [+11]
      542 GETUPVAL                         R37 1
      543 GETTABLEKS                       R37 R37 K25 ["createElement"]
      545 GETUPVAL                         R38 29
      546 DUPTABLE                         R39 K101 [{"Avatar"}]
      547 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      549 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      551 CALL                             R37 2 1
      552 JUMP                             ; [+1]
      553 LOADNIL                          R37
      554 SETTABLEKS                       R37 R36 K92 ["AvatarSizingHint"]
      556 GETUPVAL                         R37 1
      557 GETTABLEKS                       R37 R37 K25 ["createElement"]
      559 GETUPVAL                         R38 30
      560 DUPTABLE                         R39 K101 [{"Avatar"}]
      561 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      563 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      565 CALL                             R37 2 1
      566 SETTABLEKS                       R37 R36 K93 ["UGCValidationNotice"]
      568 GETTABLEKS                       R38 R4 K4 ["stage"]
      570 JUMPIFNOTEQKS                    R38 K103 ["CheckBody"] ; [+20]
      572 GETUPVAL                         R37 1
      573 GETTABLEKS                       R37 R37 K25 ["createElement"]
      575 GETUPVAL                         R38 4
      576 GETTABLEKS                       R38 R38 K103 ["CheckBody"]
      578 GETTABLEKS                       R38 R38 K104 ["render"]
      580 DUPTABLE                         R39 K105 [{"Avatar", "Dummy", "SelectedTab"}]
      581 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      583 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      585 SETTABLEKS                       R16 R39 K97 ["Dummy"]
      587 SETTABLEKS                       R7 R39 K58 ["SelectedTab"]
      589 CALL                             R37 2 1
      590 JUMP                             ; [+33]
      591 GETTABLEKS                       R38 R4 K4 ["stage"]
      593 JUMPIFNOTEQKS                    R38 K106 ["CheckFace"] ; [+20]
      595 GETUPVAL                         R37 1
      596 GETTABLEKS                       R37 R37 K25 ["createElement"]
      598 GETUPVAL                         R38 4
      599 GETTABLEKS                       R38 R38 K106 ["CheckFace"]
      601 GETTABLEKS                       R38 R38 K104 ["render"]
      603 DUPTABLE                         R39 K105 [{"Avatar", "Dummy", "SelectedTab"}]
      604 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      606 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      608 SETTABLEKS                       R16 R39 K97 ["Dummy"]
      610 SETTABLEKS                       R7 R39 K58 ["SelectedTab"]
      612 CALL                             R37 2 1
      613 JUMP                             ; [+10]
      614 GETIMPORT                        R37 K108 [error]
      616 LOADK                            R39 K109 ["Unknown stage %*"]
      617 GETTABLEKS                       R41 R4 K4 ["stage"]
      619 NAMECALL                         R39 R39 K110 ["format"]
      621 CALL                             R39 2 1
      622 MOVE                             R38 R39
      623 CALL                             R37 1 1
      624 SETTABLEKS                       R37 R36 K94 ["ChedkRender"]
      626 GETUPVAL                         R37 1
      627 GETTABLEKS                       R37 R37 K25 ["createElement"]
      629 GETUPVAL                         R38 31
      630 DUPTABLE                         R39 K101 [{"Avatar"}]
      631 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      633 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      635 CALL                             R37 2 1
      636 SETTABLEKS                       R37 R36 K95 ["ContextualSurveyDialogButton"]
      638 CALL                             R33 3 1
      639 SETTABLEKS                       R33 R32 K72 ["Preview"]
      641 CALL                             R29 3 1
      642 SETTABLEKS                       R29 R28 K27 ["Contents"]
      644 CALL                             R25 3 1
      645 SETTABLEKS                       R25 R24 K27 ["Contents"]
      647 CALL                             R21 3 1
      648 SETTABLEKS                       R21 R20 K0 ["AvatarScreen"]
      650 GETUPVAL                         R21 1
      651 GETTABLEKS                       R21 R21 K25 ["createElement"]
      653 GETUPVAL                         R22 32
      654 DUPTABLE                         R23 K112 [{"WorldModel", "Dummy", "UpdateHumanoidDescription"}]
      655 SETTABLEKS                       R6 R23 K6 ["WorldModel"]
      657 SETTABLEKS                       R16 R23 K97 ["Dummy"]
      659 NEWCLOSURE                       R24 P6
      660 CAPTURE                          VAL R14
      661 SETTABLEKS                       R24 R23 K111 ["UpdateHumanoidDescription"]
      663 CALL                             R21 2 1
      664 SETTABLEKS                       R21 R20 K113 ["InitialImport"]
      666 GETUPVAL                         R21 20
      667 GETTABLEKS                       R21 R21 K114 ["EDITING_TOOLS_GUI_NAMES"]
      669 GETTABLEKS                       R21 R21 K115 ["EditingToolbar"]
      671 GETUPVAL                         R22 12
      672 CALL                             R22 0 1
      673 JUMPIFNOT                        R22 ; [+10]
      674 GETUPVAL                         R22 1
      675 GETTABLEKS                       R22 R22 K25 ["createElement"]
      677 GETUPVAL                         R23 33
      678 DUPTABLE                         R24 K116 [{"avatar"}]
      679 GETTABLEKS                       R25 R0 K5 ["Avatar"]
      681 SETTABLEKS                       R25 R24 K35 ["avatar"]
      683 CALL                             R22 2 1
      684 SETTABLE                         R22 R20 R21
      685 GETUPVAL                         R21 1
      686 GETTABLEKS                       R21 R21 K25 ["createElement"]
      688 GETUPVAL                         R22 34
      689 DUPTABLE                         R23 K118 [{"providers"}]
      690 NEWTABLE                         R24 0 3
      692 GETUPVAL                         R25 1
      693 GETTABLEKS                       R25 R25 K25 ["createElement"]
      695 GETUPVAL                         R26 35
      696 GETTABLEKS                       R26 R26 K119 ["Provider"]
      698 DUPTABLE                         R27 K123 [{"openPalette", "resetCamera", "stage", "selectedAvatar"}]
      699 SETTABLEKS                       R12 R27 K120 ["openPalette"]
      701 SETTABLEKS                       R18 R27 K121 ["resetCamera"]
      703 SETTABLEKS                       R5 R27 K4 ["stage"]
      705 SETTABLEKS                       R6 R27 K122 ["selectedAvatar"]
      707 CALL                             R25 2 1
      708 GETUPVAL                         R26 1
      709 GETTABLEKS                       R26 R26 K25 ["createElement"]
      711 GETUPVAL                         R27 36
      712 GETTABLEKS                       R27 R27 K119 ["Provider"]
      714 CALL                             R26 1 1
      715 GETUPVAL                         R28 12
      716 CALL                             R28 0 1
      717 JUMPIFNOT                        R28 ; [+8]
      718 GETUPVAL                         R27 1
      719 GETTABLEKS                       R27 R27 K25 ["createElement"]
      721 GETUPVAL                         R28 37
      722 GETTABLEKS                       R28 R28 K119 ["Provider"]
      724 CALL                             R27 1 1
      725 JUMP                             ; [+1]
      726 LOADNIL                          R27
      727 SETLIST                          R24 R25 3 [1]
      729 SETTABLEKS                       R24 R23 K117 ["providers"]
      731 MOVE                             R24 R20
      732 CALL                             R21 3 -1
      733 RETURN                           R21 -1

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
