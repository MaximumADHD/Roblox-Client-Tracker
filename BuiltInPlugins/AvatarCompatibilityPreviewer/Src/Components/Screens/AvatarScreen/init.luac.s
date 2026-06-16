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
      120 CALL                             R17 0 1
      121 JUMPIF                           R17 ; [+6]
      122 GETUPVAL                         R17 12
      123 CALL                             R17 0 1
      124 JUMPIFNOT                        R17 ; [+3]
      125 GETUPVAL                         R17 13
      126 MOVE                             R18 R16
      127 CALL                             R17 1 0
      128 GETUPVAL                         R17 14
      129 MOVE                             R18 R16
      130 CALL                             R17 1 0
      131 GETUPVAL                         R17 15
      132 CALL                             R17 0 1
      133 JUMPIFNOT                        R17 ; [+9]
      134 GETUPVAL                         R17 16
      135 DUPTABLE                         R18 K19 [{"dummy", "includeBuiltInAccessories"}]
      136 SETTABLEKS                       R16 R18 K17 ["dummy"]
      138 LOADB                            R19 0
      139 SETTABLEKS                       R19 R18 K18 ["includeBuiltInAccessories"]
      141 CALL                             R17 1 0
      142 JUMP                             ; [+3]
      143 GETUPVAL                         R17 17
      144 MOVE                             R18 R16
      145 CALL                             R17 1 0
      146 GETUPVAL                         R17 18
      147 MOVE                             R18 R16
      148 GETTABLEKS                       R19 R4 K20 ["isTextured"]
      150 CALL                             R17 2 0
      151 GETUPVAL                         R17 19
      152 CALL                             R17 0 1
      153 JUMPIF                           R17 ; [+3]
      154 GETUPVAL                         R17 20
      155 MOVE                             R18 R16
      156 CALL                             R17 1 0
      157 GETUPVAL                         R17 15
      158 CALL                             R17 0 1
      159 JUMPIFNOT                        R17 ; [+3]
      160 GETUPVAL                         R17 21
      161 MOVE                             R18 R16
      162 CALL                             R17 1 0
      163 GETUPVAL                         R17 1
      164 GETTABLEKS                       R17 R17 K21 ["useRef"]
      166 GETUPVAL                         R18 22
      167 GETTABLEKS                       R18 R18 K22 ["new"]
      169 CALL                             R18 0 -1
      170 CALL                             R17 -1 1
      171 GETTABLEKS                       R20 R17 K23 ["current"]
      173 JUMPIFNOTEQKNIL                  R20 ; [+2]
      175 LOADB                            R19 0 +1
      176 LOADB                            R19 1
      177 GETUPVAL                         R20 23
      178 GETTABLEKS                       R20 R20 K24 ["LUAU_ANALYZE_ERROR"]
      180 FASTCALL2                        ASSERT R19 R20 ; [+3]
      182 GETIMPORT                        R18 K11 [assert]
      184 CALL                             R18 2 0
      185 GETUPVAL                         R18 1
      186 GETTABLEKS                       R18 R18 K15 ["useCallback"]
      188 NEWCLOSURE                       R19 P3
      189 CAPTURE                          VAL R17
      190 NEWTABLE                         R20 0 0
      192 CALL                             R18 2 1
      193 GETUPVAL                         R19 24
      194 GETTABLEKS                       R19 R19 K22 ["new"]
      196 CALL                             R19 0 1
      197 NEWTABLE                         R20 4 0
      199 GETUPVAL                         R21 1
      200 GETTABLEKS                       R21 R21 K25 ["createElement"]
      202 GETUPVAL                         R22 25
      203 NEWTABLE                         R23 0 0
      205 DUPTABLE                         R24 K28 [{"StageSelect", "Contents"}]
      206 GETUPVAL                         R25 1
      207 GETTABLEKS                       R25 R25 K25 ["createElement"]
      209 GETUPVAL                         R26 26
      210 DUPTABLE                         R27 K34 [{"type", "SelectedStage", "SetStage", "Avatar", "PreviewDummy", "onBack"}]
      211 LOADK                            R28 K35 ["avatar"]
      212 SETTABLEKS                       R28 R27 K29 ["type"]
      214 GETTABLEKS                       R28 R4 K4 ["stage"]
      216 SETTABLEKS                       R28 R27 K30 ["SelectedStage"]
      218 GETTABLEKS                       R28 R4 K16 ["setStage"]
      220 SETTABLEKS                       R28 R27 K31 ["SetStage"]
      222 GETTABLEKS                       R28 R0 K5 ["Avatar"]
      224 SETTABLEKS                       R28 R27 K5 ["Avatar"]
      226 SETTABLEKS                       R16 R27 K32 ["PreviewDummy"]
      228 GETTABLEKS                       R28 R0 K33 ["onBack"]
      230 SETTABLEKS                       R28 R27 K33 ["onBack"]
      232 CALL                             R25 2 1
      233 SETTABLEKS                       R25 R24 K26 ["StageSelect"]
      235 GETUPVAL                         R25 1
      236 GETTABLEKS                       R25 R25 K25 ["createElement"]
      238 GETUPVAL                         R26 25
      239 DUPTABLE                         R27 K38 [{"Position", "Size"}]
      240 GETIMPORT                        R28 K41 [UDim2.fromOffset]
      242 GETTABLEKS                       R29 R2 K42 ["Width"]
      244 LOADN                            R30 0
      245 CALL                             R28 2 1
      246 SETTABLEKS                       R28 R27 K36 ["Position"]
      248 GETIMPORT                        R28 K43 [UDim2.new]
      250 LOADN                            R29 1
      251 GETTABLEKS                       R31 R2 K42 ["Width"]
      253 MINUS                            R30 R31
      254 LOADN                            R31 1
      255 LOADN                            R32 0
      256 CALL                             R28 4 1
      257 SETTABLEKS                       R28 R27 K37 ["Size"]
      259 DUPTABLE                         R28 K45 [{"Tabs", "Contents"}]
      260 GETUPVAL                         R29 1
      261 GETTABLEKS                       R29 R29 K25 ["createElement"]
      263 GETUPVAL                         R30 25
      264 DUPTABLE                         R31 K47 [{"Position", "Size", "Layout"}]
      265 GETIMPORT                        R32 K41 [UDim2.fromOffset]
      267 LOADN                            R33 0
      268 GETTABLEKS                       R34 R1 K44 ["Tabs"]
      270 GETTABLEKS                       R34 R34 K48 ["VerticalOffset"]
      272 CALL                             R32 2 1
      273 SETTABLEKS                       R32 R31 K36 ["Position"]
      275 GETIMPORT                        R32 K43 [UDim2.new]
      277 LOADN                            R33 1
      278 LOADN                            R34 0
      279 LOADN                            R35 0
      280 GETTABLEKS                       R36 R1 K44 ["Tabs"]
      282 GETTABLEKS                       R36 R36 K49 ["Height"]
      284 CALL                             R32 4 1
      285 SETTABLEKS                       R32 R31 K37 ["Size"]
      287 GETIMPORT                        R32 K53 [Enum.FillDirection.Vertical]
      289 SETTABLEKS                       R32 R31 K46 ["Layout"]
      291 DUPTABLE                         R32 K56 [{"TabBar", "AssetPalettes"}]
      292 GETUPVAL                         R33 1
      293 GETTABLEKS                       R33 R33 K25 ["createElement"]
      295 GETUPVAL                         R34 27
      296 DUPTABLE                         R35 K60 [{"LayoutOrder", "Tabs", "SelectedTab", "SetSelectedTab"}]
      297 NAMECALL                         R36 R19 K61 ["getNextOrder"]
      299 CALL                             R36 1 1
      300 SETTABLEKS                       R36 R35 K57 ["LayoutOrder"]
      302 GETTABLEKS                       R36 R5 K8 ["tabs"]
      304 SETTABLEKS                       R36 R35 K44 ["Tabs"]
      306 SETTABLEKS                       R7 R35 K58 ["SelectedTab"]
      308 NEWCLOSURE                       R36 P4
      309 CAPTURE                          VAL R8
      310 CAPTURE                          VAL R10
      311 CAPTURE                          UPVAL U5
      312 SETTABLEKS                       R36 R35 K59 ["SetSelectedTab"]
      314 CALL                             R33 2 1
      315 SETTABLEKS                       R33 R32 K54 ["TabBar"]
      317 GETUPVAL                         R33 1
      318 GETTABLEKS                       R33 R33 K25 ["createElement"]
      320 GETUPVAL                         R34 28
      321 DUPTABLE                         R35 K64 [{"LayoutOrder", "SelectedTab", "SelectedPalette", "SetSelectedPalette"}]
      322 NAMECALL                         R36 R19 K61 ["getNextOrder"]
      324 CALL                             R36 1 1
      325 SETTABLEKS                       R36 R35 K57 ["LayoutOrder"]
      327 SETTABLEKS                       R7 R35 K58 ["SelectedTab"]
      329 SETTABLEKS                       R9 R35 K62 ["SelectedPalette"]
      331 SETTABLEKS                       R10 R35 K63 ["SetSelectedPalette"]
      333 CALL                             R33 2 1
      334 SETTABLEKS                       R33 R32 K55 ["AssetPalettes"]
      336 CALL                             R29 3 1
      337 SETTABLEKS                       R29 R28 K44 ["Tabs"]
      339 GETUPVAL                         R29 1
      340 GETTABLEKS                       R29 R29 K25 ["createElement"]
      342 GETUPVAL                         R30 25
      343 DUPTABLE                         R31 K66 [{"AnchorPoint", "Position", "Size"}]
      344 GETIMPORT                        R32 K68 [Vector2.new]
      346 LOADN                            R33 0
      347 LOADN                            R34 1
      348 CALL                             R32 2 1
      349 SETTABLEKS                       R32 R31 K65 ["AnchorPoint"]
      351 GETIMPORT                        R32 K70 [UDim2.fromScale]
      353 LOADN                            R33 0
      354 LOADN                            R34 1
      355 CALL                             R32 2 1
      356 SETTABLEKS                       R32 R31 K36 ["Position"]
      358 GETIMPORT                        R32 K43 [UDim2.new]
      360 LOADN                            R33 1
      361 LOADN                            R34 0
      362 LOADN                            R35 1
      363 GETTABLEKS                       R37 R1 K44 ["Tabs"]
      365 GETTABLEKS                       R37 R37 K49 ["Height"]
      367 MINUS                            R36 R37
      368 CALL                             R32 4 1
      369 SETTABLEKS                       R32 R31 K37 ["Size"]
      371 DUPTABLE                         R32 K73 [{"CatalogContainer", "Preview"}]
      372 MOVE                             R33 R11
      373 JUMPIFNOT                        R33 ; [+101]
      374 GETUPVAL                         R33 1
      375 GETTABLEKS                       R33 R33 K25 ["createElement"]
      377 GETUPVAL                         R34 25
      378 DUPTABLE                         R35 K76 [{"AutomaticSize", "BackgroundColor3", "Size"}]
      379 GETIMPORT                        R36 K78 [Enum.AutomaticSize.Y]
      381 SETTABLEKS                       R36 R35 K74 ["AutomaticSize"]
      383 GETTABLEKS                       R36 R1 K55 ["AssetPalettes"]
      385 GETTABLEKS                       R36 R36 K79 ["BackgroundColor"]
      387 SETTABLEKS                       R36 R35 K75 ["BackgroundColor3"]
      389 GETIMPORT                        R36 K43 [UDim2.new]
      391 LOADN                            R37 0
      392 GETTABLEKS                       R38 R1 K55 ["AssetPalettes"]
      394 GETTABLEKS                       R38 R38 K42 ["Width"]
      396 LOADN                            R39 1
      397 LOADN                            R40 0
      398 CALL                             R36 4 1
      399 SETTABLEKS                       R36 R35 K37 ["Size"]
      401 DUPTABLE                         R36 K81 [{"CatalogContainer", "Separator"}]
      402 GETUPVAL                         R37 1
      403 GETTABLEKS                       R37 R37 K25 ["createElement"]
      405 GETUPVAL                         R38 25
      406 DUPTABLE                         R39 K82 [{"Size"}]
      407 GETIMPORT                        R40 K43 [UDim2.new]
      409 LOADN                            R41 1
      410 GETTABLEKS                       R43 R1 K55 ["AssetPalettes"]
      412 GETTABLEKS                       R43 R43 K83 ["SeparatorWidth"]
      414 MINUS                            R42 R43
      415 LOADN                            R43 1
      416 LOADN                            R44 0
      417 CALL                             R40 4 1
      418 SETTABLEKS                       R40 R39 K37 ["Size"]
      420 DUPTABLE                         R40 K85 [{"Catalog"}]
      421 GETUPVAL                         R41 1
      422 GETTABLEKS                       R41 R41 K25 ["createElement"]
      424 GETUPVAL                         R42 29
      425 DUPTABLE                         R43 K87 [{"Palette"}]
      426 SETTABLEKS                       R11 R43 K86 ["Palette"]
      428 CALL                             R41 2 1
      429 SETTABLEKS                       R41 R40 K84 ["Catalog"]
      431 CALL                             R37 3 1
      432 SETTABLEKS                       R37 R36 K71 ["CatalogContainer"]
      434 GETUPVAL                         R37 1
      435 GETTABLEKS                       R37 R37 K25 ["createElement"]
      437 GETUPVAL                         R38 25
      438 DUPTABLE                         R39 K88 [{"AnchorPoint", "BackgroundColor3", "Position", "Size"}]
      439 GETIMPORT                        R40 K68 [Vector2.new]
      441 LOADN                            R41 1
      442 LOADN                            R42 0
      443 CALL                             R40 2 1
      444 SETTABLEKS                       R40 R39 K65 ["AnchorPoint"]
      446 GETTABLEKS                       R40 R1 K55 ["AssetPalettes"]
      448 GETTABLEKS                       R40 R40 K89 ["SeparatorColor"]
      450 SETTABLEKS                       R40 R39 K75 ["BackgroundColor3"]
      452 GETIMPORT                        R40 K70 [UDim2.fromScale]
      454 LOADN                            R41 1
      455 LOADN                            R42 0
      456 CALL                             R40 2 1
      457 SETTABLEKS                       R40 R39 K36 ["Position"]
      459 GETIMPORT                        R40 K43 [UDim2.new]
      461 LOADN                            R41 0
      462 GETTABLEKS                       R42 R1 K55 ["AssetPalettes"]
      464 GETTABLEKS                       R42 R42 K83 ["SeparatorWidth"]
      466 LOADN                            R43 1
      467 LOADN                            R44 0
      468 CALL                             R40 4 1
      469 SETTABLEKS                       R40 R39 K37 ["Size"]
      471 CALL                             R37 2 1
      472 SETTABLEKS                       R37 R36 K80 ["Separator"]
      474 CALL                             R33 3 1
      475 SETTABLEKS                       R33 R32 K71 ["CatalogContainer"]
      477 GETUPVAL                         R33 1
      478 GETTABLEKS                       R33 R33 K25 ["createElement"]
      480 GETUPVAL                         R34 25
      481 DUPTABLE                         R35 K66 [{"AnchorPoint", "Position", "Size"}]
      482 GETIMPORT                        R36 K68 [Vector2.new]
      484 LOADN                            R37 1
      485 LOADN                            R38 0
      486 CALL                             R36 2 1
      487 SETTABLEKS                       R36 R35 K65 ["AnchorPoint"]
      489 GETIMPORT                        R36 K70 [UDim2.fromScale]
      491 LOADN                            R37 1
      492 LOADN                            R38 0
      493 CALL                             R36 2 1
      494 SETTABLEKS                       R36 R35 K36 ["Position"]
      496 GETIMPORT                        R36 K43 [UDim2.new]
      498 LOADN                            R37 1
      499 JUMPIFNOT                        R11 ; [+6]
      500 GETTABLEKS                       R39 R1 K55 ["AssetPalettes"]
      502 GETTABLEKS                       R39 R39 K42 ["Width"]
      504 MINUS                            R38 R39
      505 JUMP                             ; [+1]
      506 LOADN                            R38 0
      507 LOADN                            R39 1
      508 LOADN                            R40 0
      509 CALL                             R36 4 1
      510 SETTABLEKS                       R36 R35 K37 ["Size"]
      512 DUPTABLE                         R36 K96 [{"DummyPreview", "ResizeNotification", "AvatarSizingHint", "UGCValidationNotice", "ChedkRender", "ContextualSurveyDialogButton"}]
      513 GETUPVAL                         R37 1
      514 GETTABLEKS                       R37 R37 K25 ["createElement"]
      516 GETUPVAL                         R38 30
      517 DUPTABLE                         R39 K100 [{"Dummy", "Avatar", "RevertToDefault", "ResetCameraSignal"}]
      518 SETTABLEKS                       R16 R39 K97 ["Dummy"]
      520 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      522 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      524 NEWCLOSURE                       R40 P5
      525 CAPTURE                          VAL R6
      526 CAPTURE                          VAL R3
      527 SETTABLEKS                       R40 R39 K98 ["RevertToDefault"]
      529 GETTABLEKS                       R40 R17 K23 ["current"]
      531 SETTABLEKS                       R40 R39 K99 ["ResetCameraSignal"]
      533 CALL                             R37 2 1
      534 SETTABLEKS                       R37 R36 K90 ["DummyPreview"]
      536 GETUPVAL                         R37 1
      537 GETTABLEKS                       R37 R37 K25 ["createElement"]
      539 GETUPVAL                         R38 31
      540 DUPTABLE                         R39 K101 [{"Avatar"}]
      541 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      543 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      545 CALL                             R37 2 1
      546 SETTABLEKS                       R37 R36 K91 ["ResizeNotification"]
      548 GETTABLEKS                       R38 R0 K102 ["IsSelected"]
      550 JUMPIFNOT                        R38 ; [+11]
      551 GETUPVAL                         R37 1
      552 GETTABLEKS                       R37 R37 K25 ["createElement"]
      554 GETUPVAL                         R38 32
      555 DUPTABLE                         R39 K101 [{"Avatar"}]
      556 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      558 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      560 CALL                             R37 2 1
      561 JUMP                             ; [+1]
      562 LOADNIL                          R37
      563 SETTABLEKS                       R37 R36 K92 ["AvatarSizingHint"]
      565 GETUPVAL                         R37 1
      566 GETTABLEKS                       R37 R37 K25 ["createElement"]
      568 GETUPVAL                         R38 33
      569 DUPTABLE                         R39 K101 [{"Avatar"}]
      570 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      572 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      574 CALL                             R37 2 1
      575 SETTABLEKS                       R37 R36 K93 ["UGCValidationNotice"]
      577 GETTABLEKS                       R38 R4 K4 ["stage"]
      579 JUMPIFNOTEQKS                    R38 K103 ["CheckBody"] ; [+20]
      581 GETUPVAL                         R37 1
      582 GETTABLEKS                       R37 R37 K25 ["createElement"]
      584 GETUPVAL                         R38 4
      585 GETTABLEKS                       R38 R38 K103 ["CheckBody"]
      587 GETTABLEKS                       R38 R38 K104 ["render"]
      589 DUPTABLE                         R39 K105 [{"Avatar", "Dummy", "SelectedTab"}]
      590 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      592 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      594 SETTABLEKS                       R16 R39 K97 ["Dummy"]
      596 SETTABLEKS                       R7 R39 K58 ["SelectedTab"]
      598 CALL                             R37 2 1
      599 JUMP                             ; [+33]
      600 GETTABLEKS                       R38 R4 K4 ["stage"]
      602 JUMPIFNOTEQKS                    R38 K106 ["CheckFace"] ; [+20]
      604 GETUPVAL                         R37 1
      605 GETTABLEKS                       R37 R37 K25 ["createElement"]
      607 GETUPVAL                         R38 4
      608 GETTABLEKS                       R38 R38 K106 ["CheckFace"]
      610 GETTABLEKS                       R38 R38 K104 ["render"]
      612 DUPTABLE                         R39 K105 [{"Avatar", "Dummy", "SelectedTab"}]
      613 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      615 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      617 SETTABLEKS                       R16 R39 K97 ["Dummy"]
      619 SETTABLEKS                       R7 R39 K58 ["SelectedTab"]
      621 CALL                             R37 2 1
      622 JUMP                             ; [+10]
      623 GETIMPORT                        R37 K108 [error]
      625 LOADK                            R39 K109 ["Unknown stage %*"]
      626 GETTABLEKS                       R41 R4 K4 ["stage"]
      628 NAMECALL                         R39 R39 K110 ["format"]
      630 CALL                             R39 2 1
      631 MOVE                             R38 R39
      632 CALL                             R37 1 1
      633 SETTABLEKS                       R37 R36 K94 ["ChedkRender"]
      635 GETUPVAL                         R37 1
      636 GETTABLEKS                       R37 R37 K25 ["createElement"]
      638 GETUPVAL                         R38 34
      639 DUPTABLE                         R39 K101 [{"Avatar"}]
      640 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      642 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      644 CALL                             R37 2 1
      645 SETTABLEKS                       R37 R36 K95 ["ContextualSurveyDialogButton"]
      647 CALL                             R33 3 1
      648 SETTABLEKS                       R33 R32 K72 ["Preview"]
      650 CALL                             R29 3 1
      651 SETTABLEKS                       R29 R28 K27 ["Contents"]
      653 CALL                             R25 3 1
      654 SETTABLEKS                       R25 R24 K27 ["Contents"]
      656 CALL                             R21 3 1
      657 SETTABLEKS                       R21 R20 K0 ["AvatarScreen"]
      659 GETUPVAL                         R21 1
      660 GETTABLEKS                       R21 R21 K25 ["createElement"]
      662 GETUPVAL                         R22 35
      663 DUPTABLE                         R23 K112 [{"WorldModel", "Dummy", "UpdateHumanoidDescription"}]
      664 SETTABLEKS                       R6 R23 K6 ["WorldModel"]
      666 SETTABLEKS                       R16 R23 K97 ["Dummy"]
      668 NEWCLOSURE                       R24 P6
      669 CAPTURE                          VAL R14
      670 SETTABLEKS                       R24 R23 K111 ["UpdateHumanoidDescription"]
      672 CALL                             R21 2 1
      673 SETTABLEKS                       R21 R20 K113 ["InitialImport"]
      675 GETUPVAL                         R21 23
      676 GETTABLEKS                       R21 R21 K114 ["EDITING_TOOLS_GUI_NAMES"]
      678 GETTABLEKS                       R21 R21 K115 ["EditingToolbar"]
      680 GETUPVAL                         R22 15
      681 CALL                             R22 0 1
      682 JUMPIFNOT                        R22 ; [+10]
      683 GETUPVAL                         R22 1
      684 GETTABLEKS                       R22 R22 K25 ["createElement"]
      686 GETUPVAL                         R23 36
      687 DUPTABLE                         R24 K116 [{"avatar"}]
      688 GETTABLEKS                       R25 R0 K5 ["Avatar"]
      690 SETTABLEKS                       R25 R24 K35 ["avatar"]
      692 CALL                             R22 2 1
      693 SETTABLE                         R22 R20 R21
      694 GETUPVAL                         R21 1
      695 GETTABLEKS                       R21 R21 K25 ["createElement"]
      697 GETUPVAL                         R22 37
      698 DUPTABLE                         R23 K118 [{"providers"}]
      699 NEWTABLE                         R24 0 3
      701 GETUPVAL                         R25 1
      702 GETTABLEKS                       R25 R25 K25 ["createElement"]
      704 GETUPVAL                         R26 38
      705 GETTABLEKS                       R26 R26 K119 ["Provider"]
      707 DUPTABLE                         R27 K123 [{"openPalette", "resetCamera", "stage", "selectedAvatar"}]
      708 SETTABLEKS                       R12 R27 K120 ["openPalette"]
      710 SETTABLEKS                       R18 R27 K121 ["resetCamera"]
      712 SETTABLEKS                       R5 R27 K4 ["stage"]
      714 SETTABLEKS                       R6 R27 K122 ["selectedAvatar"]
      716 CALL                             R25 2 1
      717 GETUPVAL                         R26 1
      718 GETTABLEKS                       R26 R26 K25 ["createElement"]
      720 GETUPVAL                         R27 39
      721 GETTABLEKS                       R27 R27 K119 ["Provider"]
      723 CALL                             R26 1 1
      724 GETUPVAL                         R28 15
      725 CALL                             R28 0 1
      726 JUMPIFNOT                        R28 ; [+8]
      727 GETUPVAL                         R27 1
      728 GETTABLEKS                       R27 R27 K25 ["createElement"]
      730 GETUPVAL                         R28 40
      731 GETTABLEKS                       R28 R28 K119 ["Provider"]
      733 CALL                             R27 1 1
      734 JUMP                             ; [+1]
      735 LOADNIL                          R27
      736 SETLIST                          R24 R25 3 [1]
      738 SETTABLEKS                       R24 R23 K117 ["providers"]
      740 MOVE                             R24 R20
      741 CALL                             R21 3 -1
      742 RETURN                           R21 -1

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
      234 GETTABLEKS                       R27 R27 K39 ["getFFlagAvatarPreviewerMakeup"]
      236 CALL                             R26 1 1
      237 GETIMPORT                        R27 K5 [require]
      239 GETTABLEKS                       R28 R0 K6 ["Src"]
      241 GETTABLEKS                       R28 R28 K37 ["Flags"]
      243 GETTABLEKS                       R28 R28 K40 ["getFFlagAvatarPreviewerMakeupDescription"]
      245 CALL                             R27 1 1
      246 GETIMPORT                        R28 K5 [require]
      248 GETTABLEKS                       R29 R0 K6 ["Src"]
      250 GETTABLEKS                       R29 R29 K37 ["Flags"]
      252 GETTABLEKS                       R29 R29 K41 ["getFFlagAvatarPreviewerRemoveAccessoryWeldingWorkaround"]
      254 CALL                             R28 1 1
      255 GETIMPORT                        R29 K5 [require]
      257 GETTABLEKS                       R30 R0 K6 ["Src"]
      259 GETTABLEKS                       R30 R30 K15 ["Util"]
      261 GETTABLEKS                       R30 R30 K42 ["getPaletteFromKey"]
      263 CALL                             R29 1 1
      264 GETIMPORT                        R30 K5 [require]
      266 GETTABLEKS                       R31 R0 K6 ["Src"]
      268 GETTABLEKS                       R31 R31 K43 ["Hooks"]
      270 GETTABLEKS                       R31 R31 K44 ["useAccessoryWelding"]
      272 CALL                             R30 1 1
      273 GETIMPORT                        R31 K5 [require]
      275 GETTABLEKS                       R32 R0 K6 ["Src"]
      277 GETTABLEKS                       R32 R32 K43 ["Hooks"]
      279 GETTABLEKS                       R32 R32 K45 ["useBodyPartsFromBase"]
      281 CALL                             R31 1 1
      282 GETIMPORT                        R32 K5 [require]
      284 GETTABLEKS                       R33 R0 K6 ["Src"]
      286 GETTABLEKS                       R33 R33 K43 ["Hooks"]
      288 GETTABLEKS                       R33 R33 K46 ["useClothingFromInstances"]
      290 CALL                             R32 1 1
      291 GETIMPORT                        R33 K5 [require]
      293 GETTABLEKS                       R34 R0 K6 ["Src"]
      295 GETTABLEKS                       R34 R34 K43 ["Hooks"]
      297 GETTABLEKS                       R34 R34 K47 ["useClothingFromInstances_DEPRECATED"]
      299 CALL                             R33 1 1
      300 GETIMPORT                        R34 K5 [require]
      302 GETTABLEKS                       R35 R0 K6 ["Src"]
      304 GETTABLEKS                       R35 R35 K43 ["Hooks"]
      306 GETTABLEKS                       R35 R35 K48 ["useCopyPropertyChanges"]
      308 CALL                             R34 1 1
      309 GETIMPORT                        R35 K5 [require]
      311 GETTABLEKS                       R36 R0 K6 ["Src"]
      313 GETTABLEKS                       R36 R36 K43 ["Hooks"]
      315 GETTABLEKS                       R36 R36 K49 ["useDummyFromHumanoidDescription"]
      317 CALL                             R35 1 1
      318 GETIMPORT                        R36 K5 [require]
      320 GETTABLEKS                       R37 R0 K6 ["Src"]
      322 GETTABLEKS                       R37 R37 K43 ["Hooks"]
      324 GETTABLEKS                       R37 R37 K50 ["useInitialImportController"]
      326 CALL                             R36 1 1
      327 GETIMPORT                        R37 K5 [require]
      329 GETTABLEKS                       R38 R0 K6 ["Src"]
      331 GETTABLEKS                       R38 R38 K43 ["Hooks"]
      333 GETTABLEKS                       R38 R38 K51 ["useMoveAccessoriesAlongsideAttachments"]
      335 CALL                             R37 1 1
      336 GETIMPORT                        R38 K5 [require]
      338 GETTABLEKS                       R39 R0 K6 ["Src"]
      340 GETTABLEKS                       R39 R39 K43 ["Hooks"]
      342 GETTABLEKS                       R39 R39 K52 ["usePreviewHumanoidDescription"]
      344 CALL                             R38 1 1
      345 GETIMPORT                        R39 K5 [require]
      347 GETTABLEKS                       R40 R0 K6 ["Src"]
      349 GETTABLEKS                       R40 R40 K43 ["Hooks"]
      351 GETTABLEKS                       R40 R40 K53 ["useSynchronizeAvatarMakeup_DEPRECATED"]
      353 CALL                             R39 1 1
      354 GETIMPORT                        R40 K5 [require]
      356 GETTABLEKS                       R41 R0 K6 ["Src"]
      358 GETTABLEKS                       R41 R41 K43 ["Hooks"]
      360 GETTABLEKS                       R41 R41 K54 ["useSynchronizeGearAccessories"]
      362 CALL                             R40 1 1
      363 GETIMPORT                        R41 K5 [require]
      365 GETTABLEKS                       R42 R0 K6 ["Src"]
      367 GETTABLEKS                       R42 R42 K43 ["Hooks"]
      369 GETTABLEKS                       R42 R42 K55 ["useTrackNewChildrenController"]
      371 CALL                             R41 1 1
      372 GETIMPORT                        R42 K5 [require]
      374 GETTABLEKS                       R43 R0 K6 ["Src"]
      376 GETTABLEKS                       R43 R43 K43 ["Hooks"]
      378 GETTABLEKS                       R43 R43 K56 ["useUntexturedController"]
      380 CALL                             R42 1 1
      381 GETTABLEKS                       R43 R14 K57 ["UI"]
      383 GETTABLEKS                       R44 R43 K58 ["Pane"]
      385 GETTABLEKS                       R45 R14 K15 ["Util"]
      387 GETTABLEKS                       R45 R45 K59 ["LayoutOrderIterator"]
      389 GETTABLEKS                       R46 R14 K15 ["Util"]
      391 GETTABLEKS                       R46 R46 K60 ["Signal"]
      393 GETTABLEKS                       R47 R14 K61 ["ContextServices"]
      395 GETTABLEKS                       R47 R47 K62 ["Stylizer"]
      397 DUPCLOSURE                       R48 K63 [PROTO_0]
      398 CAPTURE                          VAL R5
      399 DUPCLOSURE                       R49 K64 [PROTO_1]
      400 CAPTURE                          VAL R36
      401 CAPTURE                          VAL R41
      402 CAPTURE                          VAL R25
      403 CAPTURE                          VAL R34
      404 DUPCLOSURE                       R50 K65 [PROTO_10]
      405 CAPTURE                          VAL R47
      406 CAPTURE                          VAL R16
      407 CAPTURE                          VAL R13
      408 CAPTURE                          VAL R18
      409 CAPTURE                          VAL R20
      410 CAPTURE                          VAL R5
      411 CAPTURE                          VAL R9
      412 CAPTURE                          VAL R29
      413 CAPTURE                          VAL R38
      414 CAPTURE                          VAL R35
      415 CAPTURE                          VAL R31
      416 CAPTURE                          VAL R27
      417 CAPTURE                          VAL R26
      418 CAPTURE                          VAL R39
      419 CAPTURE                          VAL R40
      420 CAPTURE                          VAL R25
      421 CAPTURE                          VAL R32
      422 CAPTURE                          VAL R33
      423 CAPTURE                          VAL R42
      424 CAPTURE                          VAL R28
      425 CAPTURE                          VAL R30
      426 CAPTURE                          VAL R37
      427 CAPTURE                          VAL R46
      428 CAPTURE                          VAL R6
      429 CAPTURE                          VAL R45
      430 CAPTURE                          VAL R44
      431 CAPTURE                          VAL R19
      432 CAPTURE                          VAL R21
      433 CAPTURE                          VAL R1
      434 CAPTURE                          VAL R4
      435 CAPTURE                          VAL R15
      436 CAPTURE                          VAL R17
      437 CAPTURE                          VAL R3
      438 CAPTURE                          VAL R24
      439 CAPTURE                          VAL R8
      440 CAPTURE                          VAL R49
      441 CAPTURE                          VAL R12
      442 CAPTURE                          VAL R7
      443 CAPTURE                          VAL R2
      444 CAPTURE                          VAL R10
      445 CAPTURE                          VAL R11
      446 RETURN                           R50 1
