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
      210 DUPTABLE                         R27 K33 [{"type", "SelectedStage", "SetStage", "Avatar", "PreviewDummy"}]
      211 LOADK                            R28 K34 ["avatar"]
      212 SETTABLEKS                       R28 R27 K29 ["type"]
      214 GETTABLEKS                       R28 R4 K4 ["stage"]
      216 SETTABLEKS                       R28 R27 K30 ["SelectedStage"]
      218 GETTABLEKS                       R28 R4 K16 ["setStage"]
      220 SETTABLEKS                       R28 R27 K31 ["SetStage"]
      222 GETTABLEKS                       R28 R0 K5 ["Avatar"]
      224 SETTABLEKS                       R28 R27 K5 ["Avatar"]
      226 SETTABLEKS                       R16 R27 K32 ["PreviewDummy"]
      228 CALL                             R25 2 1
      229 SETTABLEKS                       R25 R24 K26 ["StageSelect"]
      231 GETUPVAL                         R25 1
      232 GETTABLEKS                       R25 R25 K25 ["createElement"]
      234 GETUPVAL                         R26 25
      235 DUPTABLE                         R27 K37 [{"Position", "Size"}]
      236 GETIMPORT                        R28 K40 [UDim2.fromOffset]
      238 GETTABLEKS                       R29 R2 K41 ["Width"]
      240 LOADN                            R30 0
      241 CALL                             R28 2 1
      242 SETTABLEKS                       R28 R27 K35 ["Position"]
      244 GETIMPORT                        R28 K42 [UDim2.new]
      246 LOADN                            R29 1
      247 GETTABLEKS                       R31 R2 K41 ["Width"]
      249 MINUS                            R30 R31
      250 LOADN                            R31 1
      251 LOADN                            R32 0
      252 CALL                             R28 4 1
      253 SETTABLEKS                       R28 R27 K36 ["Size"]
      255 DUPTABLE                         R28 K44 [{"Tabs", "Contents"}]
      256 GETUPVAL                         R29 1
      257 GETTABLEKS                       R29 R29 K25 ["createElement"]
      259 GETUPVAL                         R30 25
      260 DUPTABLE                         R31 K46 [{"Position", "Size", "Layout"}]
      261 GETIMPORT                        R32 K40 [UDim2.fromOffset]
      263 LOADN                            R33 0
      264 GETTABLEKS                       R34 R1 K43 ["Tabs"]
      266 GETTABLEKS                       R34 R34 K47 ["VerticalOffset"]
      268 CALL                             R32 2 1
      269 SETTABLEKS                       R32 R31 K35 ["Position"]
      271 GETIMPORT                        R32 K42 [UDim2.new]
      273 LOADN                            R33 1
      274 LOADN                            R34 0
      275 LOADN                            R35 0
      276 GETTABLEKS                       R36 R1 K43 ["Tabs"]
      278 GETTABLEKS                       R36 R36 K48 ["Height"]
      280 CALL                             R32 4 1
      281 SETTABLEKS                       R32 R31 K36 ["Size"]
      283 GETIMPORT                        R32 K52 [Enum.FillDirection.Vertical]
      285 SETTABLEKS                       R32 R31 K45 ["Layout"]
      287 DUPTABLE                         R32 K55 [{"TabBar", "AssetPalettes"}]
      288 GETUPVAL                         R33 1
      289 GETTABLEKS                       R33 R33 K25 ["createElement"]
      291 GETUPVAL                         R34 27
      292 DUPTABLE                         R35 K59 [{"LayoutOrder", "Tabs", "SelectedTab", "SetSelectedTab"}]
      293 NAMECALL                         R36 R19 K60 ["getNextOrder"]
      295 CALL                             R36 1 1
      296 SETTABLEKS                       R36 R35 K56 ["LayoutOrder"]
      298 GETTABLEKS                       R36 R5 K8 ["tabs"]
      300 SETTABLEKS                       R36 R35 K43 ["Tabs"]
      302 SETTABLEKS                       R7 R35 K57 ["SelectedTab"]
      304 NEWCLOSURE                       R36 P4
      305 CAPTURE                          VAL R8
      306 CAPTURE                          VAL R10
      307 CAPTURE                          UPVAL U5
      308 SETTABLEKS                       R36 R35 K58 ["SetSelectedTab"]
      310 CALL                             R33 2 1
      311 SETTABLEKS                       R33 R32 K53 ["TabBar"]
      313 GETUPVAL                         R33 1
      314 GETTABLEKS                       R33 R33 K25 ["createElement"]
      316 GETUPVAL                         R34 28
      317 DUPTABLE                         R35 K63 [{"LayoutOrder", "SelectedTab", "SelectedPalette", "SetSelectedPalette"}]
      318 NAMECALL                         R36 R19 K60 ["getNextOrder"]
      320 CALL                             R36 1 1
      321 SETTABLEKS                       R36 R35 K56 ["LayoutOrder"]
      323 SETTABLEKS                       R7 R35 K57 ["SelectedTab"]
      325 SETTABLEKS                       R9 R35 K61 ["SelectedPalette"]
      327 SETTABLEKS                       R10 R35 K62 ["SetSelectedPalette"]
      329 CALL                             R33 2 1
      330 SETTABLEKS                       R33 R32 K54 ["AssetPalettes"]
      332 CALL                             R29 3 1
      333 SETTABLEKS                       R29 R28 K43 ["Tabs"]
      335 GETUPVAL                         R29 1
      336 GETTABLEKS                       R29 R29 K25 ["createElement"]
      338 GETUPVAL                         R30 25
      339 DUPTABLE                         R31 K65 [{"AnchorPoint", "Position", "Size"}]
      340 GETIMPORT                        R32 K67 [Vector2.new]
      342 LOADN                            R33 0
      343 LOADN                            R34 1
      344 CALL                             R32 2 1
      345 SETTABLEKS                       R32 R31 K64 ["AnchorPoint"]
      347 GETIMPORT                        R32 K69 [UDim2.fromScale]
      349 LOADN                            R33 0
      350 LOADN                            R34 1
      351 CALL                             R32 2 1
      352 SETTABLEKS                       R32 R31 K35 ["Position"]
      354 GETIMPORT                        R32 K42 [UDim2.new]
      356 LOADN                            R33 1
      357 LOADN                            R34 0
      358 LOADN                            R35 1
      359 GETTABLEKS                       R37 R1 K43 ["Tabs"]
      361 GETTABLEKS                       R37 R37 K48 ["Height"]
      363 MINUS                            R36 R37
      364 CALL                             R32 4 1
      365 SETTABLEKS                       R32 R31 K36 ["Size"]
      367 DUPTABLE                         R32 K72 [{"CatalogContainer", "Preview"}]
      368 MOVE                             R33 R11
      369 JUMPIFNOT                        R33 ; [+101]
      370 GETUPVAL                         R33 1
      371 GETTABLEKS                       R33 R33 K25 ["createElement"]
      373 GETUPVAL                         R34 25
      374 DUPTABLE                         R35 K75 [{"AutomaticSize", "BackgroundColor3", "Size"}]
      375 GETIMPORT                        R36 K77 [Enum.AutomaticSize.Y]
      377 SETTABLEKS                       R36 R35 K73 ["AutomaticSize"]
      379 GETTABLEKS                       R36 R1 K54 ["AssetPalettes"]
      381 GETTABLEKS                       R36 R36 K78 ["BackgroundColor"]
      383 SETTABLEKS                       R36 R35 K74 ["BackgroundColor3"]
      385 GETIMPORT                        R36 K42 [UDim2.new]
      387 LOADN                            R37 0
      388 GETTABLEKS                       R38 R1 K54 ["AssetPalettes"]
      390 GETTABLEKS                       R38 R38 K41 ["Width"]
      392 LOADN                            R39 1
      393 LOADN                            R40 0
      394 CALL                             R36 4 1
      395 SETTABLEKS                       R36 R35 K36 ["Size"]
      397 DUPTABLE                         R36 K80 [{"CatalogContainer", "Separator"}]
      398 GETUPVAL                         R37 1
      399 GETTABLEKS                       R37 R37 K25 ["createElement"]
      401 GETUPVAL                         R38 25
      402 DUPTABLE                         R39 K81 [{"Size"}]
      403 GETIMPORT                        R40 K42 [UDim2.new]
      405 LOADN                            R41 1
      406 GETTABLEKS                       R43 R1 K54 ["AssetPalettes"]
      408 GETTABLEKS                       R43 R43 K82 ["SeparatorWidth"]
      410 MINUS                            R42 R43
      411 LOADN                            R43 1
      412 LOADN                            R44 0
      413 CALL                             R40 4 1
      414 SETTABLEKS                       R40 R39 K36 ["Size"]
      416 DUPTABLE                         R40 K84 [{"Catalog"}]
      417 GETUPVAL                         R41 1
      418 GETTABLEKS                       R41 R41 K25 ["createElement"]
      420 GETUPVAL                         R42 29
      421 DUPTABLE                         R43 K86 [{"Palette"}]
      422 SETTABLEKS                       R11 R43 K85 ["Palette"]
      424 CALL                             R41 2 1
      425 SETTABLEKS                       R41 R40 K83 ["Catalog"]
      427 CALL                             R37 3 1
      428 SETTABLEKS                       R37 R36 K70 ["CatalogContainer"]
      430 GETUPVAL                         R37 1
      431 GETTABLEKS                       R37 R37 K25 ["createElement"]
      433 GETUPVAL                         R38 25
      434 DUPTABLE                         R39 K87 [{"AnchorPoint", "BackgroundColor3", "Position", "Size"}]
      435 GETIMPORT                        R40 K67 [Vector2.new]
      437 LOADN                            R41 1
      438 LOADN                            R42 0
      439 CALL                             R40 2 1
      440 SETTABLEKS                       R40 R39 K64 ["AnchorPoint"]
      442 GETTABLEKS                       R40 R1 K54 ["AssetPalettes"]
      444 GETTABLEKS                       R40 R40 K88 ["SeparatorColor"]
      446 SETTABLEKS                       R40 R39 K74 ["BackgroundColor3"]
      448 GETIMPORT                        R40 K69 [UDim2.fromScale]
      450 LOADN                            R41 1
      451 LOADN                            R42 0
      452 CALL                             R40 2 1
      453 SETTABLEKS                       R40 R39 K35 ["Position"]
      455 GETIMPORT                        R40 K42 [UDim2.new]
      457 LOADN                            R41 0
      458 GETTABLEKS                       R42 R1 K54 ["AssetPalettes"]
      460 GETTABLEKS                       R42 R42 K82 ["SeparatorWidth"]
      462 LOADN                            R43 1
      463 LOADN                            R44 0
      464 CALL                             R40 4 1
      465 SETTABLEKS                       R40 R39 K36 ["Size"]
      467 CALL                             R37 2 1
      468 SETTABLEKS                       R37 R36 K79 ["Separator"]
      470 CALL                             R33 3 1
      471 SETTABLEKS                       R33 R32 K70 ["CatalogContainer"]
      473 GETUPVAL                         R33 1
      474 GETTABLEKS                       R33 R33 K25 ["createElement"]
      476 GETUPVAL                         R34 25
      477 DUPTABLE                         R35 K65 [{"AnchorPoint", "Position", "Size"}]
      478 GETIMPORT                        R36 K67 [Vector2.new]
      480 LOADN                            R37 1
      481 LOADN                            R38 0
      482 CALL                             R36 2 1
      483 SETTABLEKS                       R36 R35 K64 ["AnchorPoint"]
      485 GETIMPORT                        R36 K69 [UDim2.fromScale]
      487 LOADN                            R37 1
      488 LOADN                            R38 0
      489 CALL                             R36 2 1
      490 SETTABLEKS                       R36 R35 K35 ["Position"]
      492 GETIMPORT                        R36 K42 [UDim2.new]
      494 LOADN                            R37 1
      495 JUMPIFNOT                        R11 ; [+6]
      496 GETTABLEKS                       R39 R1 K54 ["AssetPalettes"]
      498 GETTABLEKS                       R39 R39 K41 ["Width"]
      500 MINUS                            R38 R39
      501 JUMP                             ; [+1]
      502 LOADN                            R38 0
      503 LOADN                            R39 1
      504 LOADN                            R40 0
      505 CALL                             R36 4 1
      506 SETTABLEKS                       R36 R35 K36 ["Size"]
      508 DUPTABLE                         R36 K95 [{"DummyPreview", "ResizeNotification", "AvatarSizingHint", "UGCValidationNotice", "ChedkRender", "ContextualSurveyDialogButton"}]
      509 GETUPVAL                         R37 1
      510 GETTABLEKS                       R37 R37 K25 ["createElement"]
      512 GETUPVAL                         R38 30
      513 DUPTABLE                         R39 K99 [{"Dummy", "Avatar", "RevertToDefault", "ResetCameraSignal"}]
      514 SETTABLEKS                       R16 R39 K96 ["Dummy"]
      516 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      518 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      520 NEWCLOSURE                       R40 P5
      521 CAPTURE                          VAL R6
      522 CAPTURE                          VAL R3
      523 SETTABLEKS                       R40 R39 K97 ["RevertToDefault"]
      525 GETTABLEKS                       R40 R17 K23 ["current"]
      527 SETTABLEKS                       R40 R39 K98 ["ResetCameraSignal"]
      529 CALL                             R37 2 1
      530 SETTABLEKS                       R37 R36 K89 ["DummyPreview"]
      532 GETUPVAL                         R37 1
      533 GETTABLEKS                       R37 R37 K25 ["createElement"]
      535 GETUPVAL                         R38 31
      536 DUPTABLE                         R39 K100 [{"Avatar"}]
      537 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      539 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      541 CALL                             R37 2 1
      542 SETTABLEKS                       R37 R36 K90 ["ResizeNotification"]
      544 GETTABLEKS                       R38 R0 K101 ["IsSelected"]
      546 JUMPIFNOT                        R38 ; [+11]
      547 GETUPVAL                         R37 1
      548 GETTABLEKS                       R37 R37 K25 ["createElement"]
      550 GETUPVAL                         R38 32
      551 DUPTABLE                         R39 K100 [{"Avatar"}]
      552 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      554 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      556 CALL                             R37 2 1
      557 JUMP                             ; [+1]
      558 LOADNIL                          R37
      559 SETTABLEKS                       R37 R36 K91 ["AvatarSizingHint"]
      561 GETUPVAL                         R37 1
      562 GETTABLEKS                       R37 R37 K25 ["createElement"]
      564 GETUPVAL                         R38 33
      565 DUPTABLE                         R39 K100 [{"Avatar"}]
      566 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      568 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      570 CALL                             R37 2 1
      571 SETTABLEKS                       R37 R36 K92 ["UGCValidationNotice"]
      573 GETTABLEKS                       R38 R4 K4 ["stage"]
      575 JUMPIFNOTEQKS                    R38 K102 ["CheckBody"] ; [+20]
      577 GETUPVAL                         R37 1
      578 GETTABLEKS                       R37 R37 K25 ["createElement"]
      580 GETUPVAL                         R38 4
      581 GETTABLEKS                       R38 R38 K102 ["CheckBody"]
      583 GETTABLEKS                       R38 R38 K103 ["render"]
      585 DUPTABLE                         R39 K104 [{"Avatar", "Dummy", "SelectedTab"}]
      586 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      588 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      590 SETTABLEKS                       R16 R39 K96 ["Dummy"]
      592 SETTABLEKS                       R7 R39 K57 ["SelectedTab"]
      594 CALL                             R37 2 1
      595 JUMP                             ; [+33]
      596 GETTABLEKS                       R38 R4 K4 ["stage"]
      598 JUMPIFNOTEQKS                    R38 K105 ["CheckFace"] ; [+20]
      600 GETUPVAL                         R37 1
      601 GETTABLEKS                       R37 R37 K25 ["createElement"]
      603 GETUPVAL                         R38 4
      604 GETTABLEKS                       R38 R38 K105 ["CheckFace"]
      606 GETTABLEKS                       R38 R38 K103 ["render"]
      608 DUPTABLE                         R39 K104 [{"Avatar", "Dummy", "SelectedTab"}]
      609 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      611 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      613 SETTABLEKS                       R16 R39 K96 ["Dummy"]
      615 SETTABLEKS                       R7 R39 K57 ["SelectedTab"]
      617 CALL                             R37 2 1
      618 JUMP                             ; [+10]
      619 GETIMPORT                        R37 K107 [error]
      621 LOADK                            R39 K108 ["Unknown stage %*"]
      622 GETTABLEKS                       R41 R4 K4 ["stage"]
      624 NAMECALL                         R39 R39 K109 ["format"]
      626 CALL                             R39 2 1
      627 MOVE                             R38 R39
      628 CALL                             R37 1 1
      629 SETTABLEKS                       R37 R36 K93 ["ChedkRender"]
      631 GETUPVAL                         R37 1
      632 GETTABLEKS                       R37 R37 K25 ["createElement"]
      634 GETUPVAL                         R38 34
      635 DUPTABLE                         R39 K100 [{"Avatar"}]
      636 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      638 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      640 CALL                             R37 2 1
      641 SETTABLEKS                       R37 R36 K94 ["ContextualSurveyDialogButton"]
      643 CALL                             R33 3 1
      644 SETTABLEKS                       R33 R32 K71 ["Preview"]
      646 CALL                             R29 3 1
      647 SETTABLEKS                       R29 R28 K27 ["Contents"]
      649 CALL                             R25 3 1
      650 SETTABLEKS                       R25 R24 K27 ["Contents"]
      652 CALL                             R21 3 1
      653 SETTABLEKS                       R21 R20 K0 ["AvatarScreen"]
      655 GETUPVAL                         R21 1
      656 GETTABLEKS                       R21 R21 K25 ["createElement"]
      658 GETUPVAL                         R22 35
      659 DUPTABLE                         R23 K111 [{"WorldModel", "Dummy", "UpdateHumanoidDescription"}]
      660 SETTABLEKS                       R6 R23 K6 ["WorldModel"]
      662 SETTABLEKS                       R16 R23 K96 ["Dummy"]
      664 NEWCLOSURE                       R24 P6
      665 CAPTURE                          VAL R14
      666 SETTABLEKS                       R24 R23 K110 ["UpdateHumanoidDescription"]
      668 CALL                             R21 2 1
      669 SETTABLEKS                       R21 R20 K112 ["InitialImport"]
      671 GETUPVAL                         R21 23
      672 GETTABLEKS                       R21 R21 K113 ["EDITING_TOOLS_GUI_NAMES"]
      674 GETTABLEKS                       R21 R21 K114 ["EditingToolbar"]
      676 GETUPVAL                         R22 15
      677 CALL                             R22 0 1
      678 JUMPIFNOT                        R22 ; [+10]
      679 GETUPVAL                         R22 1
      680 GETTABLEKS                       R22 R22 K25 ["createElement"]
      682 GETUPVAL                         R23 36
      683 DUPTABLE                         R24 K115 [{"avatar"}]
      684 GETTABLEKS                       R25 R0 K5 ["Avatar"]
      686 SETTABLEKS                       R25 R24 K34 ["avatar"]
      688 CALL                             R22 2 1
      689 SETTABLE                         R22 R20 R21
      690 GETUPVAL                         R21 1
      691 GETTABLEKS                       R21 R21 K25 ["createElement"]
      693 GETUPVAL                         R22 37
      694 DUPTABLE                         R23 K117 [{"providers"}]
      695 NEWTABLE                         R24 0 3
      697 GETUPVAL                         R25 1
      698 GETTABLEKS                       R25 R25 K25 ["createElement"]
      700 GETUPVAL                         R26 38
      701 GETTABLEKS                       R26 R26 K118 ["Provider"]
      703 DUPTABLE                         R27 K122 [{"openPalette", "resetCamera", "stage", "selectedAvatar"}]
      704 SETTABLEKS                       R12 R27 K119 ["openPalette"]
      706 SETTABLEKS                       R18 R27 K120 ["resetCamera"]
      708 SETTABLEKS                       R5 R27 K4 ["stage"]
      710 SETTABLEKS                       R6 R27 K121 ["selectedAvatar"]
      712 CALL                             R25 2 1
      713 GETUPVAL                         R26 1
      714 GETTABLEKS                       R26 R26 K25 ["createElement"]
      716 GETUPVAL                         R27 39
      717 GETTABLEKS                       R27 R27 K118 ["Provider"]
      719 CALL                             R26 1 1
      720 GETUPVAL                         R28 15
      721 CALL                             R28 0 1
      722 JUMPIFNOT                        R28 ; [+8]
      723 GETUPVAL                         R27 1
      724 GETTABLEKS                       R27 R27 K25 ["createElement"]
      726 GETUPVAL                         R28 40
      727 GETTABLEKS                       R28 R28 K118 ["Provider"]
      729 CALL                             R27 1 1
      730 JUMP                             ; [+1]
      731 LOADNIL                          R27
      732 SETLIST                          R24 R25 3 [1]
      734 SETTABLEKS                       R24 R23 K116 ["providers"]
      736 MOVE                             R24 R20
      737 CALL                             R21 3 -1
      738 RETURN                           R21 -1

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
