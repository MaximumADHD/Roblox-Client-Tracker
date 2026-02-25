PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETTABLEN                        R2 R3 1
        3 GETTABLEKS                       R1 R2 K0 ["Key"]
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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K3 ["tabs"]
        5 GETUPVAL                         R2 1
        6 CALL                             R0 2 1
        7 JUMPIFEQKNIL                     R0 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K3 ["tabs"]
       13 GETTABLEN                        R0 R1 1
       14 GETUPVAL                         R1 2
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 3
       18 GETUPVAL                         R5 4
       19 GETTABLE                         R4 R5 R0
       20 GETTABLEN                        R3 R4 1
       21 GETTABLEKS                       R2 R3 K4 ["Key"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["tabs"]
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
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K0 ["tabs"]
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
       44 GETUPVAL                         R9 5
       45 GETTABLEKS                       R8 R9 K7 ["setStage"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R5 2
        5 GETTABLE                         R4 R5 R0
        6 GETTABLEN                        R3 R4 1
        7 GETTABLEKS                       R2 R3 K0 ["Key"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["removeAllEquippedItems"]
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
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K3 ["useContext"]
       13 GETUPVAL                         R4 2
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K3 ["useContext"]
       18 GETUPVAL                         R5 3
       19 CALL                             R4 1 1
       20 GETUPVAL                         R6 4
       21 GETTABLEKS                       R7 R4 K4 ["stage"]
       23 GETTABLE                         R5 R6 R7
       24 GETTABLEKS                       R7 R0 K5 ["Avatar"]
       26 GETTABLEKS                       R6 R7 K6 ["WorldModel"]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R7 R8 K7 ["useState"]
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
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R9 R10 K7 ["useState"]
       48 GETUPVAL                         R13 5
       49 GETTABLE                         R12 R13 R7
       50 GETTABLEN                        R11 R12 1
       51 GETTABLEKS                       R10 R11 K12 ["Key"]
       53 CALL                             R9 1 2
       54 GETUPVAL                         R12 6
       55 GETTABLEKS                       R11 R12 K13 ["find"]
       57 GETUPVAL                         R13 5
       58 GETTABLE                         R12 R13 R7
       59 NEWCLOSURE                       R13 P0
       60 CAPTURE                          VAL R9
       61 CALL                             R11 2 1
       62 GETUPVAL                         R13 1
       63 GETTABLEKS                       R12 R13 K14 ["useEffect"]
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
       77 GETUPVAL                         R13 1
       78 GETTABLEKS                       R12 R13 K15 ["useCallback"]
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
       96 GETUPVAL                         R14 1
       97 GETTABLEKS                       R13 R14 K7 ["useState"]
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
      152 MOVE                             R18 R16
      153 CALL                             R17 1 0
      154 GETUPVAL                         R17 15
      155 CALL                             R17 0 1
      156 JUMPIFNOT                        R17 ; [+3]
      157 GETUPVAL                         R17 20
      158 MOVE                             R18 R16
      159 CALL                             R17 1 0
      160 GETUPVAL                         R18 1
      161 GETTABLEKS                       R17 R18 K21 ["useRef"]
      163 GETUPVAL                         R19 21
      164 GETTABLEKS                       R18 R19 K22 ["new"]
      166 CALL                             R18 0 -1
      167 CALL                             R17 -1 1
      168 GETTABLEKS                       R20 R17 K23 ["current"]
      170 JUMPIFNOTEQKNIL                  R20 ; [+2]
      172 LOADB                            R19 0 +1
      173 LOADB                            R19 1
      174 GETUPVAL                         R21 22
      175 GETTABLEKS                       R20 R21 K24 ["LUAU_ANALYZE_ERROR"]
      177 FASTCALL2                        ASSERT R19 R20 ; [+3]
      179 GETIMPORT                        R18 K11 [assert]
      181 CALL                             R18 2 0
      182 GETUPVAL                         R19 1
      183 GETTABLEKS                       R18 R19 K15 ["useCallback"]
      185 NEWCLOSURE                       R19 P3
      186 CAPTURE                          VAL R17
      187 NEWTABLE                         R20 0 0
      189 CALL                             R18 2 1
      190 GETUPVAL                         R20 23
      191 GETTABLEKS                       R19 R20 K22 ["new"]
      193 CALL                             R19 0 1
      194 NEWTABLE                         R20 4 0
      196 GETUPVAL                         R22 1
      197 GETTABLEKS                       R21 R22 K25 ["createElement"]
      199 GETUPVAL                         R22 24
      200 NEWTABLE                         R23 0 0
      202 DUPTABLE                         R24 K28 [{"StageSelect", "Contents"}]
      203 GETUPVAL                         R26 1
      204 GETTABLEKS                       R25 R26 K25 ["createElement"]
      206 GETUPVAL                         R26 25
      207 DUPTABLE                         R27 K33 [{"type", "SelectedStage", "SetStage", "Avatar", "PreviewDummy"}]
      208 LOADK                            R28 K34 ["avatar"]
      209 SETTABLEKS                       R28 R27 K29 ["type"]
      211 GETTABLEKS                       R28 R4 K4 ["stage"]
      213 SETTABLEKS                       R28 R27 K30 ["SelectedStage"]
      215 GETTABLEKS                       R28 R4 K16 ["setStage"]
      217 SETTABLEKS                       R28 R27 K31 ["SetStage"]
      219 GETTABLEKS                       R28 R0 K5 ["Avatar"]
      221 SETTABLEKS                       R28 R27 K5 ["Avatar"]
      223 SETTABLEKS                       R16 R27 K32 ["PreviewDummy"]
      225 CALL                             R25 2 1
      226 SETTABLEKS                       R25 R24 K26 ["StageSelect"]
      228 GETUPVAL                         R26 1
      229 GETTABLEKS                       R25 R26 K25 ["createElement"]
      231 GETUPVAL                         R26 24
      232 DUPTABLE                         R27 K37 [{"Position", "Size"}]
      233 GETIMPORT                        R28 K40 [UDim2.fromOffset]
      235 GETTABLEKS                       R29 R2 K41 ["Width"]
      237 LOADN                            R30 0
      238 CALL                             R28 2 1
      239 SETTABLEKS                       R28 R27 K35 ["Position"]
      241 GETIMPORT                        R28 K42 [UDim2.new]
      243 LOADN                            R29 1
      244 GETTABLEKS                       R31 R2 K41 ["Width"]
      246 MINUS                            R30 R31
      247 LOADN                            R31 1
      248 LOADN                            R32 0
      249 CALL                             R28 4 1
      250 SETTABLEKS                       R28 R27 K36 ["Size"]
      252 DUPTABLE                         R28 K44 [{"Tabs", "Contents"}]
      253 GETUPVAL                         R30 1
      254 GETTABLEKS                       R29 R30 K25 ["createElement"]
      256 GETUPVAL                         R30 24
      257 DUPTABLE                         R31 K46 [{"Position", "Size", "Layout"}]
      258 GETIMPORT                        R32 K40 [UDim2.fromOffset]
      260 LOADN                            R33 0
      261 GETTABLEKS                       R35 R1 K43 ["Tabs"]
      263 GETTABLEKS                       R34 R35 K47 ["VerticalOffset"]
      265 CALL                             R32 2 1
      266 SETTABLEKS                       R32 R31 K35 ["Position"]
      268 GETIMPORT                        R32 K42 [UDim2.new]
      270 LOADN                            R33 1
      271 LOADN                            R34 0
      272 LOADN                            R35 0
      273 GETTABLEKS                       R37 R1 K43 ["Tabs"]
      275 GETTABLEKS                       R36 R37 K48 ["Height"]
      277 CALL                             R32 4 1
      278 SETTABLEKS                       R32 R31 K36 ["Size"]
      280 GETIMPORT                        R32 K52 [Enum.FillDirection.Vertical]
      282 SETTABLEKS                       R32 R31 K45 ["Layout"]
      284 DUPTABLE                         R32 K55 [{"TabBar", "AssetPalettes"}]
      285 GETUPVAL                         R34 1
      286 GETTABLEKS                       R33 R34 K25 ["createElement"]
      288 GETUPVAL                         R34 26
      289 DUPTABLE                         R35 K59 [{"LayoutOrder", "Tabs", "SelectedTab", "SetSelectedTab"}]
      290 NAMECALL                         R36 R19 K60 ["getNextOrder"]
      292 CALL                             R36 1 1
      293 SETTABLEKS                       R36 R35 K56 ["LayoutOrder"]
      295 GETTABLEKS                       R36 R5 K8 ["tabs"]
      297 SETTABLEKS                       R36 R35 K43 ["Tabs"]
      299 SETTABLEKS                       R7 R35 K57 ["SelectedTab"]
      301 NEWCLOSURE                       R36 P4
      302 CAPTURE                          VAL R8
      303 CAPTURE                          VAL R10
      304 CAPTURE                          UPVAL U5
      305 SETTABLEKS                       R36 R35 K58 ["SetSelectedTab"]
      307 CALL                             R33 2 1
      308 SETTABLEKS                       R33 R32 K53 ["TabBar"]
      310 GETUPVAL                         R34 1
      311 GETTABLEKS                       R33 R34 K25 ["createElement"]
      313 GETUPVAL                         R34 27
      314 DUPTABLE                         R35 K63 [{"LayoutOrder", "SelectedTab", "SelectedPalette", "SetSelectedPalette"}]
      315 NAMECALL                         R36 R19 K60 ["getNextOrder"]
      317 CALL                             R36 1 1
      318 SETTABLEKS                       R36 R35 K56 ["LayoutOrder"]
      320 SETTABLEKS                       R7 R35 K57 ["SelectedTab"]
      322 SETTABLEKS                       R9 R35 K61 ["SelectedPalette"]
      324 SETTABLEKS                       R10 R35 K62 ["SetSelectedPalette"]
      326 CALL                             R33 2 1
      327 SETTABLEKS                       R33 R32 K54 ["AssetPalettes"]
      329 CALL                             R29 3 1
      330 SETTABLEKS                       R29 R28 K43 ["Tabs"]
      332 GETUPVAL                         R30 1
      333 GETTABLEKS                       R29 R30 K25 ["createElement"]
      335 GETUPVAL                         R30 24
      336 DUPTABLE                         R31 K65 [{"AnchorPoint", "Position", "Size"}]
      337 GETIMPORT                        R32 K67 [Vector2.new]
      339 LOADN                            R33 0
      340 LOADN                            R34 1
      341 CALL                             R32 2 1
      342 SETTABLEKS                       R32 R31 K64 ["AnchorPoint"]
      344 GETIMPORT                        R32 K69 [UDim2.fromScale]
      346 LOADN                            R33 0
      347 LOADN                            R34 1
      348 CALL                             R32 2 1
      349 SETTABLEKS                       R32 R31 K35 ["Position"]
      351 GETIMPORT                        R32 K42 [UDim2.new]
      353 LOADN                            R33 1
      354 LOADN                            R34 0
      355 LOADN                            R35 1
      356 GETTABLEKS                       R38 R1 K43 ["Tabs"]
      358 GETTABLEKS                       R37 R38 K48 ["Height"]
      360 MINUS                            R36 R37
      361 CALL                             R32 4 1
      362 SETTABLEKS                       R32 R31 K36 ["Size"]
      364 DUPTABLE                         R32 K72 [{"CatalogContainer", "Preview"}]
      365 MOVE                             R33 R11
      366 JUMPIFNOT                        R33 ; [+101]
      367 GETUPVAL                         R34 1
      368 GETTABLEKS                       R33 R34 K25 ["createElement"]
      370 GETUPVAL                         R34 24
      371 DUPTABLE                         R35 K75 [{"AutomaticSize", "BackgroundColor3", "Size"}]
      372 GETIMPORT                        R36 K77 [Enum.AutomaticSize.Y]
      374 SETTABLEKS                       R36 R35 K73 ["AutomaticSize"]
      376 GETTABLEKS                       R37 R1 K54 ["AssetPalettes"]
      378 GETTABLEKS                       R36 R37 K78 ["BackgroundColor"]
      380 SETTABLEKS                       R36 R35 K74 ["BackgroundColor3"]
      382 GETIMPORT                        R36 K42 [UDim2.new]
      384 LOADN                            R37 0
      385 GETTABLEKS                       R39 R1 K54 ["AssetPalettes"]
      387 GETTABLEKS                       R38 R39 K41 ["Width"]
      389 LOADN                            R39 1
      390 LOADN                            R40 0
      391 CALL                             R36 4 1
      392 SETTABLEKS                       R36 R35 K36 ["Size"]
      394 DUPTABLE                         R36 K80 [{"CatalogContainer", "Separator"}]
      395 GETUPVAL                         R38 1
      396 GETTABLEKS                       R37 R38 K25 ["createElement"]
      398 GETUPVAL                         R38 24
      399 DUPTABLE                         R39 K81 [{"Size"}]
      400 GETIMPORT                        R40 K42 [UDim2.new]
      402 LOADN                            R41 1
      403 GETTABLEKS                       R44 R1 K54 ["AssetPalettes"]
      405 GETTABLEKS                       R43 R44 K82 ["SeparatorWidth"]
      407 MINUS                            R42 R43
      408 LOADN                            R43 1
      409 LOADN                            R44 0
      410 CALL                             R40 4 1
      411 SETTABLEKS                       R40 R39 K36 ["Size"]
      413 DUPTABLE                         R40 K84 [{"Catalog"}]
      414 GETUPVAL                         R42 1
      415 GETTABLEKS                       R41 R42 K25 ["createElement"]
      417 GETUPVAL                         R42 28
      418 DUPTABLE                         R43 K86 [{"Palette"}]
      419 SETTABLEKS                       R11 R43 K85 ["Palette"]
      421 CALL                             R41 2 1
      422 SETTABLEKS                       R41 R40 K83 ["Catalog"]
      424 CALL                             R37 3 1
      425 SETTABLEKS                       R37 R36 K70 ["CatalogContainer"]
      427 GETUPVAL                         R38 1
      428 GETTABLEKS                       R37 R38 K25 ["createElement"]
      430 GETUPVAL                         R38 24
      431 DUPTABLE                         R39 K87 [{"AnchorPoint", "BackgroundColor3", "Position", "Size"}]
      432 GETIMPORT                        R40 K67 [Vector2.new]
      434 LOADN                            R41 1
      435 LOADN                            R42 0
      436 CALL                             R40 2 1
      437 SETTABLEKS                       R40 R39 K64 ["AnchorPoint"]
      439 GETTABLEKS                       R41 R1 K54 ["AssetPalettes"]
      441 GETTABLEKS                       R40 R41 K88 ["SeparatorColor"]
      443 SETTABLEKS                       R40 R39 K74 ["BackgroundColor3"]
      445 GETIMPORT                        R40 K69 [UDim2.fromScale]
      447 LOADN                            R41 1
      448 LOADN                            R42 0
      449 CALL                             R40 2 1
      450 SETTABLEKS                       R40 R39 K35 ["Position"]
      452 GETIMPORT                        R40 K42 [UDim2.new]
      454 LOADN                            R41 0
      455 GETTABLEKS                       R43 R1 K54 ["AssetPalettes"]
      457 GETTABLEKS                       R42 R43 K82 ["SeparatorWidth"]
      459 LOADN                            R43 1
      460 LOADN                            R44 0
      461 CALL                             R40 4 1
      462 SETTABLEKS                       R40 R39 K36 ["Size"]
      464 CALL                             R37 2 1
      465 SETTABLEKS                       R37 R36 K79 ["Separator"]
      467 CALL                             R33 3 1
      468 SETTABLEKS                       R33 R32 K70 ["CatalogContainer"]
      470 GETUPVAL                         R34 1
      471 GETTABLEKS                       R33 R34 K25 ["createElement"]
      473 GETUPVAL                         R34 24
      474 DUPTABLE                         R35 K65 [{"AnchorPoint", "Position", "Size"}]
      475 GETIMPORT                        R36 K67 [Vector2.new]
      477 LOADN                            R37 1
      478 LOADN                            R38 0
      479 CALL                             R36 2 1
      480 SETTABLEKS                       R36 R35 K64 ["AnchorPoint"]
      482 GETIMPORT                        R36 K69 [UDim2.fromScale]
      484 LOADN                            R37 1
      485 LOADN                            R38 0
      486 CALL                             R36 2 1
      487 SETTABLEKS                       R36 R35 K35 ["Position"]
      489 GETIMPORT                        R36 K42 [UDim2.new]
      491 LOADN                            R37 1
      492 JUMPIFNOT                        R11 ; [+6]
      493 GETTABLEKS                       R40 R1 K54 ["AssetPalettes"]
      495 GETTABLEKS                       R39 R40 K41 ["Width"]
      497 MINUS                            R38 R39
      498 JUMP                             ; [+1]
      499 LOADN                            R38 0
      500 LOADN                            R39 1
      501 LOADN                            R40 0
      502 CALL                             R36 4 1
      503 SETTABLEKS                       R36 R35 K36 ["Size"]
      505 DUPTABLE                         R36 K95 [{"DummyPreview", "ResizeNotification", "AvatarSizingHint", "UGCValidationNotice", "ChedkRender", "ContextualSurveyDialogButton"}]
      506 GETUPVAL                         R38 1
      507 GETTABLEKS                       R37 R38 K25 ["createElement"]
      509 GETUPVAL                         R38 29
      510 DUPTABLE                         R39 K99 [{"Dummy", "Avatar", "RevertToDefault", "ResetCameraSignal"}]
      511 SETTABLEKS                       R16 R39 K96 ["Dummy"]
      513 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      515 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      517 NEWCLOSURE                       R40 P5
      518 CAPTURE                          VAL R6
      519 CAPTURE                          VAL R3
      520 SETTABLEKS                       R40 R39 K97 ["RevertToDefault"]
      522 GETTABLEKS                       R40 R17 K23 ["current"]
      524 SETTABLEKS                       R40 R39 K98 ["ResetCameraSignal"]
      526 CALL                             R37 2 1
      527 SETTABLEKS                       R37 R36 K89 ["DummyPreview"]
      529 GETUPVAL                         R38 1
      530 GETTABLEKS                       R37 R38 K25 ["createElement"]
      532 GETUPVAL                         R38 30
      533 DUPTABLE                         R39 K100 [{"Avatar"}]
      534 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      536 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      538 CALL                             R37 2 1
      539 SETTABLEKS                       R37 R36 K90 ["ResizeNotification"]
      541 GETTABLEKS                       R38 R0 K101 ["IsSelected"]
      543 JUMPIFNOT                        R38 ; [+11]
      544 GETUPVAL                         R38 1
      545 GETTABLEKS                       R37 R38 K25 ["createElement"]
      547 GETUPVAL                         R38 31
      548 DUPTABLE                         R39 K100 [{"Avatar"}]
      549 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      551 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      553 CALL                             R37 2 1
      554 JUMP                             ; [+1]
      555 LOADNIL                          R37
      556 SETTABLEKS                       R37 R36 K91 ["AvatarSizingHint"]
      558 GETUPVAL                         R38 1
      559 GETTABLEKS                       R37 R38 K25 ["createElement"]
      561 GETUPVAL                         R38 32
      562 DUPTABLE                         R39 K100 [{"Avatar"}]
      563 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      565 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      567 CALL                             R37 2 1
      568 SETTABLEKS                       R37 R36 K92 ["UGCValidationNotice"]
      570 GETTABLEKS                       R38 R4 K4 ["stage"]
      572 JUMPIFNOTEQKS                    R38 K102 ["CheckBody"] ; [+20]
      574 GETUPVAL                         R38 1
      575 GETTABLEKS                       R37 R38 K25 ["createElement"]
      577 GETUPVAL                         R40 4
      578 GETTABLEKS                       R39 R40 K102 ["CheckBody"]
      580 GETTABLEKS                       R38 R39 K103 ["render"]
      582 DUPTABLE                         R39 K104 [{"Avatar", "Dummy", "SelectedTab"}]
      583 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      585 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      587 SETTABLEKS                       R16 R39 K96 ["Dummy"]
      589 SETTABLEKS                       R7 R39 K57 ["SelectedTab"]
      591 CALL                             R37 2 1
      592 JUMP                             ; [+33]
      593 GETTABLEKS                       R38 R4 K4 ["stage"]
      595 JUMPIFNOTEQKS                    R38 K105 ["CheckFace"] ; [+20]
      597 GETUPVAL                         R38 1
      598 GETTABLEKS                       R37 R38 K25 ["createElement"]
      600 GETUPVAL                         R40 4
      601 GETTABLEKS                       R39 R40 K105 ["CheckFace"]
      603 GETTABLEKS                       R38 R39 K103 ["render"]
      605 DUPTABLE                         R39 K104 [{"Avatar", "Dummy", "SelectedTab"}]
      606 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      608 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      610 SETTABLEKS                       R16 R39 K96 ["Dummy"]
      612 SETTABLEKS                       R7 R39 K57 ["SelectedTab"]
      614 CALL                             R37 2 1
      615 JUMP                             ; [+10]
      616 GETIMPORT                        R37 K107 [error]
      618 LOADK                            R39 K108 ["Unknown stage %*"]
      619 GETTABLEKS                       R41 R4 K4 ["stage"]
      621 NAMECALL                         R39 R39 K109 ["format"]
      623 CALL                             R39 2 1
      624 MOVE                             R38 R39
      625 CALL                             R37 1 1
      626 SETTABLEKS                       R37 R36 K93 ["ChedkRender"]
      628 GETUPVAL                         R38 1
      629 GETTABLEKS                       R37 R38 K25 ["createElement"]
      631 GETUPVAL                         R38 33
      632 DUPTABLE                         R39 K100 [{"Avatar"}]
      633 GETTABLEKS                       R40 R0 K5 ["Avatar"]
      635 SETTABLEKS                       R40 R39 K5 ["Avatar"]
      637 CALL                             R37 2 1
      638 SETTABLEKS                       R37 R36 K94 ["ContextualSurveyDialogButton"]
      640 CALL                             R33 3 1
      641 SETTABLEKS                       R33 R32 K71 ["Preview"]
      643 CALL                             R29 3 1
      644 SETTABLEKS                       R29 R28 K27 ["Contents"]
      646 CALL                             R25 3 1
      647 SETTABLEKS                       R25 R24 K27 ["Contents"]
      649 CALL                             R21 3 1
      650 SETTABLEKS                       R21 R20 K0 ["AvatarScreen"]
      652 GETUPVAL                         R22 1
      653 GETTABLEKS                       R21 R22 K25 ["createElement"]
      655 GETUPVAL                         R22 34
      656 DUPTABLE                         R23 K111 [{"WorldModel", "Dummy", "UpdateHumanoidDescription"}]
      657 SETTABLEKS                       R6 R23 K6 ["WorldModel"]
      659 SETTABLEKS                       R16 R23 K96 ["Dummy"]
      661 NEWCLOSURE                       R24 P6
      662 CAPTURE                          VAL R14
      663 SETTABLEKS                       R24 R23 K110 ["UpdateHumanoidDescription"]
      665 CALL                             R21 2 1
      666 SETTABLEKS                       R21 R20 K112 ["InitialImport"]
      668 GETUPVAL                         R23 22
      669 GETTABLEKS                       R22 R23 K113 ["EDITING_TOOLS_GUI_NAMES"]
      671 GETTABLEKS                       R21 R22 K114 ["EditingToolbar"]
      673 GETUPVAL                         R22 15
      674 CALL                             R22 0 1
      675 JUMPIFNOT                        R22 ; [+10]
      676 GETUPVAL                         R23 1
      677 GETTABLEKS                       R22 R23 K25 ["createElement"]
      679 GETUPVAL                         R23 35
      680 DUPTABLE                         R24 K115 [{"avatar"}]
      681 GETTABLEKS                       R25 R0 K5 ["Avatar"]
      683 SETTABLEKS                       R25 R24 K34 ["avatar"]
      685 CALL                             R22 2 1
      686 SETTABLE                         R22 R20 R21
      687 GETUPVAL                         R21 36
      688 CALL                             R21 0 1
      689 JUMPIFNOT                        R21 ; [+8]
      690 GETUPVAL                         R22 1
      691 GETTABLEKS                       R21 R22 K25 ["createElement"]
      693 GETUPVAL                         R22 37
      694 DUPTABLE                         R23 K116 [{"dummy"}]
      695 SETTABLEKS                       R16 R23 K17 ["dummy"]
      697 CALL                             R21 2 1
      698 SETTABLEKS                       R21 R20 K117 ["LookComposerDialog"]
      700 GETUPVAL                         R22 1
      701 GETTABLEKS                       R21 R22 K25 ["createElement"]
      703 GETUPVAL                         R22 38
      704 DUPTABLE                         R23 K119 [{"providers"}]
      705 NEWTABLE                         R24 0 3
      707 GETUPVAL                         R26 1
      708 GETTABLEKS                       R25 R26 K25 ["createElement"]
      710 GETUPVAL                         R27 39
      711 GETTABLEKS                       R26 R27 K120 ["Provider"]
      713 DUPTABLE                         R27 K124 [{"openPalette", "resetCamera", "stage", "selectedAvatar"}]
      714 SETTABLEKS                       R12 R27 K121 ["openPalette"]
      716 SETTABLEKS                       R18 R27 K122 ["resetCamera"]
      718 SETTABLEKS                       R5 R27 K4 ["stage"]
      720 SETTABLEKS                       R6 R27 K123 ["selectedAvatar"]
      722 CALL                             R25 2 1
      723 GETUPVAL                         R27 1
      724 GETTABLEKS                       R26 R27 K25 ["createElement"]
      726 GETUPVAL                         R28 40
      727 GETTABLEKS                       R27 R28 K120 ["Provider"]
      729 CALL                             R26 1 1
      730 GETUPVAL                         R28 15
      731 CALL                             R28 0 1
      732 JUMPIFNOT                        R28 ; [+8]
      733 GETUPVAL                         R28 1
      734 GETTABLEKS                       R27 R28 K25 ["createElement"]
      736 GETUPVAL                         R29 41
      737 GETTABLEKS                       R28 R29 K120 ["Provider"]
      739 CALL                             R27 1 1
      740 JUMP                             ; [+1]
      741 LOADNIL                          R27
      742 SETLIST                          R24 R25 3 [1]
      744 SETTABLEKS                       R24 R23 K118 ["providers"]
      746 MOVE                             R24 R20
      747 CALL                             R21 3 -1
      748 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Components"]
       13 GETTABLEKS                       R2 R3 K8 ["AssetPalettes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["AvatarScreenContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Src"]
       29 GETTABLEKS                       R6 R7 K7 ["Components"]
       31 GETTABLEKS                       R5 R6 K10 ["Sizing"]
       33 GETTABLEKS                       R4 R5 K11 ["AvatarSizingHint"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R7 R0 K6 ["Src"]
       40 GETTABLEKS                       R6 R7 K7 ["Components"]
       42 GETTABLEKS                       R5 R6 K12 ["Catalog"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R8 R0 K6 ["Src"]
       49 GETTABLEKS                       R7 R8 K13 ["Resources"]
       51 GETTABLEKS                       R6 R7 K14 ["CatalogItems"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Src"]
       58 GETTABLEKS                       R8 R9 K15 ["Util"]
       60 GETTABLEKS                       R7 R8 K16 ["Constants"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R10 R0 K6 ["Src"]
       67 GETTABLEKS                       R9 R10 K7 ["Components"]
       69 GETTABLEKS                       R8 R9 K17 ["ContextStack"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETIMPORT                        R10 K1 [script]
       76 GETTABLEKS                       R9 R10 K18 ["ContextualSurveyDialogButton"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R11 R0 K19 ["Packages"]
       83 GETTABLEKS                       R10 R11 K20 ["Dash"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R13 R0 K6 ["Src"]
       90 GETTABLEKS                       R12 R13 K7 ["Components"]
       92 GETTABLEKS                       R11 R12 K21 ["DisambiguationMenuContext"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R16 R0 K6 ["Src"]
       99 GETTABLEKS                       R15 R16 K7 ["Components"]
      101 GETTABLEKS                       R14 R15 K22 ["EditingTools"]
      103 GETTABLEKS                       R13 R14 K23 ["CageEditingTool"]
      105 GETTABLEKS                       R12 R13 K24 ["CageEditingToolHistoryContext"]
      107 CALL                             R11 1 1
      108 GETIMPORT                        R12 K5 [require]
      110 GETTABLEKS                       R15 R0 K6 ["Src"]
      112 GETTABLEKS                       R14 R15 K7 ["Components"]
      114 GETTABLEKS                       R13 R14 K22 ["EditingTools"]
      116 CALL                             R12 1 1
      117 GETIMPORT                        R13 K5 [require]
      119 GETTABLEKS                       R16 R0 K6 ["Src"]
      121 GETTABLEKS                       R15 R16 K15 ["Util"]
      123 GETTABLEKS                       R14 R15 K25 ["EquipmentStateContext"]
      125 CALL                             R13 1 1
      126 GETIMPORT                        R14 K5 [require]
      128 GETTABLEKS                       R16 R0 K19 ["Packages"]
      130 GETTABLEKS                       R15 R16 K26 ["Framework"]
      132 CALL                             R14 1 1
      133 GETIMPORT                        R15 K5 [require]
      135 GETTABLEKS                       R18 R0 K6 ["Src"]
      137 GETTABLEKS                       R17 R18 K7 ["Components"]
      139 GETTABLEKS                       R16 R17 K27 ["PrimaryDummyPreview"]
      141 CALL                             R15 1 1
      142 GETIMPORT                        R16 K5 [require]
      144 GETTABLEKS                       R18 R0 K19 ["Packages"]
      146 GETTABLEKS                       R17 R18 K28 ["React"]
      148 CALL                             R16 1 1
      149 GETIMPORT                        R17 K5 [require]
      151 GETTABLEKS                       R21 R0 K6 ["Src"]
      153 GETTABLEKS                       R20 R21 K7 ["Components"]
      155 GETTABLEKS                       R19 R20 K29 ["ResizeNotice"]
      157 GETTABLEKS                       R18 R19 K29 ["ResizeNotice"]
      159 CALL                             R17 1 1
      160 GETIMPORT                        R18 K5 [require]
      162 GETTABLEKS                       R21 R0 K6 ["Src"]
      164 GETTABLEKS                       R20 R21 K15 ["Util"]
      166 GETTABLEKS                       R19 R20 K30 ["SimpleSerializedStateContext"]
      168 CALL                             R18 1 1
      169 GETIMPORT                        R19 K5 [require]
      171 GETTABLEKS                       R22 R0 K6 ["Src"]
      173 GETTABLEKS                       R21 R22 K7 ["Components"]
      175 GETTABLEKS                       R20 R21 K31 ["StageSelector"]
      177 CALL                             R19 1 1
      178 GETIMPORT                        R20 K5 [require]
      180 GETIMPORT                        R22 K1 [script]
      182 GETTABLEKS                       R21 R22 K32 ["Stages"]
      184 CALL                             R20 1 1
      185 GETIMPORT                        R21 K5 [require]
      187 GETTABLEKS                       R24 R0 K6 ["Src"]
      189 GETTABLEKS                       R23 R24 K7 ["Components"]
      191 GETTABLEKS                       R22 R23 K33 ["TabBar"]
      193 CALL                             R21 1 1
      194 GETIMPORT                        R22 K5 [require]
      196 GETTABLEKS                       R25 R0 K6 ["Src"]
      198 GETTABLEKS                       R24 R25 K13 ["Resources"]
      200 GETTABLEKS                       R23 R24 K34 ["Theme"]
      202 CALL                             R22 1 1
      203 GETIMPORT                        R23 K5 [require]
      205 GETTABLEKS                       R25 R0 K6 ["Src"]
      207 GETTABLEKS                       R24 R25 K35 ["Types"]
      209 CALL                             R23 1 1
      210 GETIMPORT                        R24 K5 [require]
      212 GETTABLEKS                       R27 R0 K6 ["Src"]
      214 GETTABLEKS                       R26 R27 K7 ["Components"]
      216 GETTABLEKS                       R25 R26 K36 ["UGCValidationNotice"]
      218 CALL                             R24 1 1
      219 GETIMPORT                        R25 K5 [require]
      221 GETTABLEKS                       R28 R0 K6 ["Src"]
      223 GETTABLEKS                       R27 R28 K37 ["Flags"]
      225 GETTABLEKS                       R26 R27 K38 ["getFFlagAvatarPreviewerEditingTools"]
      227 CALL                             R25 1 1
      228 GETIMPORT                        R26 K5 [require]
      230 GETTABLEKS                       R29 R0 K6 ["Src"]
      232 GETTABLEKS                       R28 R29 K37 ["Flags"]
      234 GETTABLEKS                       R27 R28 K39 ["getFFlagAvatarPreviewerLookComposer"]
      236 CALL                             R26 1 1
      237 GETIMPORT                        R27 K5 [require]
      239 GETTABLEKS                       R30 R0 K6 ["Src"]
      241 GETTABLEKS                       R29 R30 K37 ["Flags"]
      243 GETTABLEKS                       R28 R29 K40 ["getFFlagAvatarPreviewerMakeup"]
      245 CALL                             R27 1 1
      246 GETIMPORT                        R28 K5 [require]
      248 GETTABLEKS                       R31 R0 K6 ["Src"]
      250 GETTABLEKS                       R30 R31 K37 ["Flags"]
      252 GETTABLEKS                       R29 R30 K41 ["getFFlagAvatarPreviewerMakeupDescription"]
      254 CALL                             R28 1 1
      255 GETIMPORT                        R29 K5 [require]
      257 GETTABLEKS                       R32 R0 K6 ["Src"]
      259 GETTABLEKS                       R31 R32 K7 ["Components"]
      261 GETTABLEKS                       R30 R31 K42 ["LookComposerDialog"]
      263 CALL                             R29 1 1
      264 GETIMPORT                        R30 K5 [require]
      266 GETTABLEKS                       R33 R0 K6 ["Src"]
      268 GETTABLEKS                       R32 R33 K15 ["Util"]
      270 GETTABLEKS                       R31 R32 K43 ["getPaletteFromKey"]
      272 CALL                             R30 1 1
      273 GETIMPORT                        R31 K5 [require]
      275 GETTABLEKS                       R34 R0 K6 ["Src"]
      277 GETTABLEKS                       R33 R34 K44 ["Hooks"]
      279 GETTABLEKS                       R32 R33 K45 ["useAccessoryWelding"]
      281 CALL                             R31 1 1
      282 GETIMPORT                        R32 K5 [require]
      284 GETTABLEKS                       R35 R0 K6 ["Src"]
      286 GETTABLEKS                       R34 R35 K44 ["Hooks"]
      288 GETTABLEKS                       R33 R34 K46 ["useBodyPartsFromBase"]
      290 CALL                             R32 1 1
      291 GETIMPORT                        R33 K5 [require]
      293 GETTABLEKS                       R36 R0 K6 ["Src"]
      295 GETTABLEKS                       R35 R36 K44 ["Hooks"]
      297 GETTABLEKS                       R34 R35 K47 ["useClothingFromInstances"]
      299 CALL                             R33 1 1
      300 GETIMPORT                        R34 K5 [require]
      302 GETTABLEKS                       R37 R0 K6 ["Src"]
      304 GETTABLEKS                       R36 R37 K44 ["Hooks"]
      306 GETTABLEKS                       R35 R36 K48 ["useClothingFromInstances_DEPRECATED"]
      308 CALL                             R34 1 1
      309 GETIMPORT                        R35 K5 [require]
      311 GETTABLEKS                       R38 R0 K6 ["Src"]
      313 GETTABLEKS                       R37 R38 K44 ["Hooks"]
      315 GETTABLEKS                       R36 R37 K49 ["useCopyPropertyChanges"]
      317 CALL                             R35 1 1
      318 GETIMPORT                        R36 K5 [require]
      320 GETTABLEKS                       R39 R0 K6 ["Src"]
      322 GETTABLEKS                       R38 R39 K44 ["Hooks"]
      324 GETTABLEKS                       R37 R38 K50 ["useDummyFromHumanoidDescription"]
      326 CALL                             R36 1 1
      327 GETIMPORT                        R37 K5 [require]
      329 GETTABLEKS                       R40 R0 K6 ["Src"]
      331 GETTABLEKS                       R39 R40 K44 ["Hooks"]
      333 GETTABLEKS                       R38 R39 K51 ["useInitialImportController"]
      335 CALL                             R37 1 1
      336 GETIMPORT                        R38 K5 [require]
      338 GETTABLEKS                       R41 R0 K6 ["Src"]
      340 GETTABLEKS                       R40 R41 K44 ["Hooks"]
      342 GETTABLEKS                       R39 R40 K52 ["useMoveAccessoriesAlongsideAttachments"]
      344 CALL                             R38 1 1
      345 GETIMPORT                        R39 K5 [require]
      347 GETTABLEKS                       R42 R0 K6 ["Src"]
      349 GETTABLEKS                       R41 R42 K44 ["Hooks"]
      351 GETTABLEKS                       R40 R41 K53 ["usePreviewHumanoidDescription"]
      353 CALL                             R39 1 1
      354 GETIMPORT                        R40 K5 [require]
      356 GETTABLEKS                       R43 R0 K6 ["Src"]
      358 GETTABLEKS                       R42 R43 K44 ["Hooks"]
      360 GETTABLEKS                       R41 R42 K54 ["useSynchronizeAvatarMakeup_DEPRECATED"]
      362 CALL                             R40 1 1
      363 GETIMPORT                        R41 K5 [require]
      365 GETTABLEKS                       R44 R0 K6 ["Src"]
      367 GETTABLEKS                       R43 R44 K44 ["Hooks"]
      369 GETTABLEKS                       R42 R43 K55 ["useSynchronizeGearAccessories"]
      371 CALL                             R41 1 1
      372 GETIMPORT                        R42 K5 [require]
      374 GETTABLEKS                       R45 R0 K6 ["Src"]
      376 GETTABLEKS                       R44 R45 K44 ["Hooks"]
      378 GETTABLEKS                       R43 R44 K56 ["useTrackNewChildrenController"]
      380 CALL                             R42 1 1
      381 GETIMPORT                        R43 K5 [require]
      383 GETTABLEKS                       R46 R0 K6 ["Src"]
      385 GETTABLEKS                       R45 R46 K44 ["Hooks"]
      387 GETTABLEKS                       R44 R45 K57 ["useUntexturedController"]
      389 CALL                             R43 1 1
      390 GETTABLEKS                       R44 R14 K58 ["UI"]
      392 GETTABLEKS                       R45 R44 K59 ["Pane"]
      394 GETTABLEKS                       R47 R14 K15 ["Util"]
      396 GETTABLEKS                       R46 R47 K60 ["LayoutOrderIterator"]
      398 GETTABLEKS                       R48 R14 K15 ["Util"]
      400 GETTABLEKS                       R47 R48 K61 ["Signal"]
      402 GETTABLEKS                       R49 R14 K62 ["ContextServices"]
      404 GETTABLEKS                       R48 R49 K63 ["Stylizer"]
      406 DUPCLOSURE                       R49 K64 [PROTO_0]
      407 CAPTURE                          VAL R5
      408 DUPCLOSURE                       R50 K65 [PROTO_1]
      409 CAPTURE                          VAL R37
      410 CAPTURE                          VAL R42
      411 CAPTURE                          VAL R25
      412 CAPTURE                          VAL R35
      413 DUPCLOSURE                       R51 K66 [PROTO_10]
      414 CAPTURE                          VAL R48
      415 CAPTURE                          VAL R16
      416 CAPTURE                          VAL R13
      417 CAPTURE                          VAL R18
      418 CAPTURE                          VAL R20
      419 CAPTURE                          VAL R5
      420 CAPTURE                          VAL R9
      421 CAPTURE                          VAL R30
      422 CAPTURE                          VAL R39
      423 CAPTURE                          VAL R36
      424 CAPTURE                          VAL R32
      425 CAPTURE                          VAL R28
      426 CAPTURE                          VAL R27
      427 CAPTURE                          VAL R40
      428 CAPTURE                          VAL R41
      429 CAPTURE                          VAL R25
      430 CAPTURE                          VAL R33
      431 CAPTURE                          VAL R34
      432 CAPTURE                          VAL R43
      433 CAPTURE                          VAL R31
      434 CAPTURE                          VAL R38
      435 CAPTURE                          VAL R47
      436 CAPTURE                          VAL R6
      437 CAPTURE                          VAL R46
      438 CAPTURE                          VAL R45
      439 CAPTURE                          VAL R19
      440 CAPTURE                          VAL R21
      441 CAPTURE                          VAL R1
      442 CAPTURE                          VAL R4
      443 CAPTURE                          VAL R15
      444 CAPTURE                          VAL R17
      445 CAPTURE                          VAL R3
      446 CAPTURE                          VAL R24
      447 CAPTURE                          VAL R8
      448 CAPTURE                          VAL R50
      449 CAPTURE                          VAL R12
      450 CAPTURE                          VAL R26
      451 CAPTURE                          VAL R29
      452 CAPTURE                          VAL R7
      453 CAPTURE                          VAL R2
      454 CAPTURE                          VAL R10
      455 CAPTURE                          VAL R11
      456 RETURN                           R51 1
