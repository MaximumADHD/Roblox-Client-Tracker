PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+13]
        7 GETTABLEKS                       R2 R0 K4 ["H"]
        9 DIVK                             R1 R2 K3 [360]
       10 GETTABLEKS                       R4 R0 K6 ["S"]
       12 ORK                              R3 R4 K5 [100]
       13 DIVK                             R2 R3 K5 [100]
       14 GETTABLEKS                       R5 R0 K7 ["V"]
       16 ORK                              R4 R5 K5 [100]
       17 DIVK                             R3 R4 K5 [100]
       18 RETURN                           R1 3
       19 NAMECALL                         R1 R0 K8 ["ToHSV"]
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isPartialHSV"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NOT                              R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["initialMode"]
        3 JUMPIFNOT                        R0 ; [+25]
        4 LOADB                            R1 0
        5 GETUPVAL                         R2 1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 JUMPIFNOTEQ                      R6 R0 ; [+3]
       11 LOADB                            R1 1
       12 JUMP                             ; [+2]
       13 FORGLOOP                         R2 2 ; [-5]
       15 JUMPIF                           R1 ; [+13]
       16 GETIMPORT                        R2 K2 [warn]
       18 LOADK                            R4 K3 ["ColorPicker: initialMode %* is not in availableModes. Using first available mode."]
       19 MOVE                             R6 R0
       20 NAMECALL                         R4 R4 K4 ["format"]
       22 CALL                             R4 2 1
       23 MOVE                             R3 R4
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 2
       26 GETUPVAL                         R4 1
       27 GETTABLEN                        R3 R4 1
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["onColorChanged"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onAlphaChanged"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["onAlphaChanged"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationColorPickerDesignUpdate"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R2 R0 K1 ["Color"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R2 R0 K1 ["Color"]
       11 MOVE                             R3 R0
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getValue"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["ToHSV"]
        6 CALL                             R0 1 3
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R0
        9 CALL                             R3 1 0
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R1
       12 CALL                             R3 1 0
       13 GETUPVAL                         R3 3
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R3 R3 K0 ["getValue"]
        4 CALL                             R3 1 1
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R2 3 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R3 R3 K0 ["getValue"]
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 2
        7 NAMECALL                         R4 R4 K0 ["getValue"]
        9 CALL                             R4 1 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["availableModes"]
        2 JUMPIF                           R1 ; [+16]
        3 NEWTABLE                         R1 0 4
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["RGB"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["HSV"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["Hex"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["Brick"]
       17 SETLIST                          R1 R2 4 [1]
       19 GETUPVAL                         R2 1
       20 MOVE                             R3 R0
       21 GETUPVAL                         R4 2
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 3
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R3 K5 ["Color"]
       27 GETTABLEKS                       R4 R4 K6 ["Extended"]
       29 GETTABLEKS                       R4 R4 K7 ["Magenta"]
       31 GETTABLEKS                       R4 R4 K8 ["Magenta_700"]
       33 GETTABLEKS                       R4 R4 K9 ["Color3"]
       35 GETTABLEKS                       R6 R2 K10 ["initialColor"]
       37 OR                               R5 R6 R4
       38 GETUPVAL                         R6 4
       39 GETTABLEKS                       R6 R6 K11 ["useBinding"]
       41 MOVE                             R7 R5
       42 CALL                             R6 1 2
       43 FASTCALL1                        TYPE R5 ; [+3]
       44 MOVE                             R12 R5
       45 GETIMPORT                        R11 K13 [type]
       47 CALL                             R11 1 1
       48 JUMPIFNOTEQKS                    R11 K14 ["table"] ; [+13]
       50 GETTABLEKS                       R11 R5 K16 ["H"]
       52 DIVK                             R8 R11 K15 [360]
       53 GETTABLEKS                       R12 R5 K18 ["S"]
       55 ORK                              R11 R12 K17 [100]
       56 DIVK                             R9 R11 K17 [100]
       57 GETTABLEKS                       R12 R5 K19 ["V"]
       59 ORK                              R11 R12 K17 [100]
       60 DIVK                             R10 R11 K17 [100]
       61 JUMP                             ; [+6]
       62 NAMECALL                         R11 R5 K20 ["ToHSV"]
       64 CALL                             R11 1 3
       65 MOVE                             R8 R11
       66 MOVE                             R9 R12
       67 MOVE                             R10 R13
       68 GETUPVAL                         R11 4
       69 GETTABLEKS                       R11 R11 K11 ["useBinding"]
       71 MOVE                             R12 R8
       72 CALL                             R11 1 2
       73 GETUPVAL                         R13 4
       74 GETTABLEKS                       R13 R13 K11 ["useBinding"]
       76 MOVE                             R14 R9
       77 CALL                             R13 1 2
       78 GETUPVAL                         R15 4
       79 GETTABLEKS                       R15 R15 K11 ["useBinding"]
       81 MOVE                             R16 R10
       82 CALL                             R15 1 2
       83 GETUPVAL                         R17 4
       84 GETTABLEKS                       R17 R17 K11 ["useBinding"]
       86 GETTABLEKS                       R19 R2 K22 ["initialAlpha"]
       88 ORK                              R18 R19 K21 [1]
       89 CALL                             R17 1 2
       90 GETUPVAL                         R19 4
       91 GETTABLEKS                       R19 R19 K23 ["useState"]
       93 GETTABLEKS                       R20 R2 K24 ["initialMode"]
       95 JUMPIF                           R20 ; [+3]
       96 GETUPVAL                         R20 0
       97 GETTABLEKS                       R20 R20 K1 ["RGB"]
       99 CALL                             R19 1 2
      100 GETUPVAL                         R23 5
      101 GETTABLEKS                       R23 R23 K25 ["toColor3"]
      103 NAMECALL                         R21 R6 K26 ["map"]
      105 CALL                             R21 2 1
      106 DUPCLOSURE                       R24 K27 [PROTO_1]
      107 CAPTURE                          UPVAL U5
      108 NAMECALL                         R22 R6 K26 ["map"]
      110 CALL                             R22 2 1
      111 GETUPVAL                         R23 4
      112 GETTABLEKS                       R23 R23 K28 ["useRef"]
      114 LOADB                            R24 0
      115 CALL                             R23 1 1
      116 GETUPVAL                         R24 4
      117 GETTABLEKS                       R24 R24 K29 ["useEffect"]
      119 NEWCLOSURE                       R25 P1
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R20
      123 NEWTABLE                         R26 0 1
      125 GETTABLEKS                       R27 R2 K24 ["initialMode"]
      127 SETLIST                          R26 R27 1 [1]
      129 CALL                             R24 2 0
      130 GETUPVAL                         R24 4
      131 GETTABLEKS                       R24 R24 K30 ["useCallback"]
      133 NEWCLOSURE                       R25 P2
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R2
      136 NEWTABLE                         R26 0 1
      138 GETTABLEKS                       R27 R2 K31 ["onColorChanged"]
      140 SETLIST                          R26 R27 1 [1]
      142 CALL                             R24 2 1
      143 GETUPVAL                         R25 4
      144 GETTABLEKS                       R25 R25 K30 ["useCallback"]
      146 NEWCLOSURE                       R26 P3
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R2
      149 NEWTABLE                         R27 0 1
      151 GETTABLEKS                       R28 R2 K32 ["onAlphaChanged"]
      153 SETLIST                          R27 R28 1 [1]
      155 CALL                             R25 2 1
      156 GETUPVAL                         R26 4
      157 GETTABLEKS                       R26 R26 K30 ["useCallback"]
      159 NEWCLOSURE                       R27 P4
      160 CAPTURE                          UPVAL U6
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R24
      163 NEWTABLE                         R28 0 1
      165 MOVE                             R29 R24
      166 SETLIST                          R28 R29 1 [1]
      168 CALL                             R26 2 1
      169 GETUPVAL                         R28 6
      170 GETTABLEKS                       R28 R28 K33 ["FoundationColorPickerDesignUpdate"]
      172 JUMPIFNOT                        R28 ; [+7]
      173 GETTABLEKS                       R28 R2 K32 ["onAlphaChanged"]
      175 JUMPIFNOTEQKNIL                  R28 ; [+2]
      177 LOADB                            R27 0 +1
      178 LOADB                            R27 1
      179 JUMP                             ; [+12]
      180 LOADB                            R27 0
      181 GETTABLEKS                       R28 R2 K32 ["onAlphaChanged"]
      183 JUMPIFEQKNIL                     R28 ; [+8]
      185 GETUPVAL                         R28 0
      186 GETTABLEKS                       R28 R28 K4 ["Brick"]
      188 JUMPIFNOTEQ                      R19 R28 ; [+2]
      190 LOADB                            R27 0 +1
      191 LOADB                            R27 1
      192 GETUPVAL                         R28 4
      193 GETTABLEKS                       R28 R28 K30 ["useCallback"]
      195 NEWCLOSURE                       R29 P5
      196 CAPTURE                          VAL R24
      197 NEWTABLE                         R30 0 1
      199 MOVE                             R31 R24
      200 SETLIST                          R30 R31 1 [1]
      202 CALL                             R28 2 1
      203 GETUPVAL                         R29 4
      204 GETTABLEKS                       R29 R29 K30 ["useCallback"]
      206 GETUPVAL                         R30 5
      207 GETTABLEKS                       R30 R30 K34 ["createHSVUpdateHandler"]
      209 MOVE                             R31 R12
      210 MOVE                             R32 R14
      211 MOVE                             R33 R16
      212 MOVE                             R34 R28
      213 MOVE                             R35 R23
      214 CALL                             R30 5 1
      215 NEWTABLE                         R31 0 5
      217 MOVE                             R32 R28
      218 MOVE                             R33 R12
      219 MOVE                             R34 R14
      220 MOVE                             R35 R16
      221 MOVE                             R36 R7
      222 SETLIST                          R31 R32 5 [1]
      224 CALL                             R29 2 1
      225 GETUPVAL                         R30 4
      226 GETTABLEKS                       R30 R30 K30 ["useCallback"]
      228 GETUPVAL                         R31 5
      229 GETTABLEKS                       R31 R31 K35 ["createColorInputChangeHandler"]
      231 MOVE                             R32 R28
      232 MOVE                             R33 R23
      233 MOVE                             R34 R12
      234 MOVE                             R35 R14
      235 MOVE                             R36 R16
      236 CALL                             R31 5 1
      237 NEWTABLE                         R32 0 5
      239 MOVE                             R33 R28
      240 MOVE                             R34 R23
      241 MOVE                             R35 R12
      242 MOVE                             R36 R14
      243 MOVE                             R37 R16
      244 SETLIST                          R32 R33 5 [1]
      246 CALL                             R30 2 1
      247 GETUPVAL                         R31 4
      248 GETTABLEKS                       R31 R31 K29 ["useEffect"]
      250 NEWCLOSURE                       R32 P6
      251 CAPTURE                          VAL R21
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R14
      254 CAPTURE                          VAL R16
      255 NEWTABLE                         R33 0 0
      257 CALL                             R31 2 0
      258 GETUPVAL                         R31 4
      259 GETTABLEKS                       R31 R31 K36 ["createElement"]
      261 GETUPVAL                         R32 7
      262 GETUPVAL                         R33 8
      263 MOVE                             R34 R2
      264 GETUPVAL                         R36 6
      265 GETTABLEKS                       R36 R36 K33 ["FoundationColorPickerDesignUpdate"]
      267 JUMPIFNOT                        R36 ; [+5]
      268 DUPTABLE                         R35 K38 [{"tag"}]
      269 LOADK                            R36 K39 ["col gap-small size-full-0 auto-y padding-small"]
      270 SETTABLEKS                       R36 R35 K37 ["tag"]
      272 JUMP                             ; [+4]
      273 DUPTABLE                         R35 K38 [{"tag"}]
      274 LOADK                            R36 K40 ["col align-x-center gap-medium auto-xy"]
      275 SETTABLEKS                       R36 R35 K37 ["tag"]
      277 CALL                             R33 2 1
      278 DUPTABLE                         R34 K46 [{"ColorInputs", "BrickPicker", "SVPickerContainer", "HueSlider", "AlphaSlider"}]
      279 GETUPVAL                         R35 4
      280 GETTABLEKS                       R35 R35 K36 ["createElement"]
      282 GETUPVAL                         R36 9
      283 DUPTABLE                         R37 K53 [{"color", "alpha", "onColorChanged", "onAlphaChanged", "mode", "onModeChanged", "availableModes", "LayoutOrder", "testId"}]
      284 SETTABLEKS                       R6 R37 K47 ["color"]
      286 SETTABLEKS                       R17 R37 K48 ["alpha"]
      288 SETTABLEKS                       R30 R37 K31 ["onColorChanged"]
      290 JUMPIFNOT                        R27 ; [+2]
      291 MOVE                             R38 R25
      292 JUMP                             ; [+1]
      293 LOADNIL                          R38
      294 SETTABLEKS                       R38 R37 K32 ["onAlphaChanged"]
      296 SETTABLEKS                       R19 R37 K49 ["mode"]
      298 SETTABLEKS                       R20 R37 K50 ["onModeChanged"]
      300 SETTABLEKS                       R1 R37 K0 ["availableModes"]
      302 LOADN                            R38 1
      303 SETTABLEKS                       R38 R37 K51 ["LayoutOrder"]
      305 LOADK                            R39 K54 ["%*--input"]
      306 GETTABLEKS                       R41 R2 K52 ["testId"]
      308 NAMECALL                         R39 R39 K55 ["format"]
      310 CALL                             R39 2 1
      311 MOVE                             R38 R39
      312 SETTABLEKS                       R38 R37 K52 ["testId"]
      314 CALL                             R35 2 1
      315 SETTABLEKS                       R35 R34 K41 ["ColorInputs"]
      317 GETUPVAL                         R36 0
      318 GETTABLEKS                       R36 R36 K4 ["Brick"]
      320 JUMPIFNOTEQ                      R19 R36 ; [+24]
      322 GETUPVAL                         R35 4
      323 GETTABLEKS                       R35 R35 K36 ["createElement"]
      325 GETUPVAL                         R36 10
      326 DUPTABLE                         R37 K58 [{"selectedColor", "onBrickColorChanged", "LayoutOrder", "testId"}]
      327 SETTABLEKS                       R21 R37 K56 ["selectedColor"]
      329 SETTABLEKS                       R26 R37 K57 ["onBrickColorChanged"]
      331 LOADN                            R38 2
      332 SETTABLEKS                       R38 R37 K51 ["LayoutOrder"]
      334 LOADK                            R39 K59 ["%*--brick-picker"]
      335 GETTABLEKS                       R41 R2 K52 ["testId"]
      337 NAMECALL                         R39 R39 K55 ["format"]
      339 CALL                             R39 2 1
      340 MOVE                             R38 R39
      341 SETTABLEKS                       R38 R37 K52 ["testId"]
      343 CALL                             R35 2 1
      344 JUMP                             ; [+1]
      345 LOADNIL                          R35
      346 SETTABLEKS                       R35 R34 K42 ["BrickPicker"]
      348 GETUPVAL                         R36 0
      349 GETTABLEKS                       R36 R36 K4 ["Brick"]
      351 JUMPIFEQ                         R19 R36 ; [+74]
      353 GETUPVAL                         R35 4
      354 GETTABLEKS                       R35 R35 K36 ["createElement"]
      356 GETUPVAL                         R36 7
      357 GETUPVAL                         R38 6
      358 GETTABLEKS                       R38 R38 K33 ["FoundationColorPickerDesignUpdate"]
      360 JUMPIFNOT                        R38 ; [+14]
      361 DUPTABLE                         R37 K61 [{"Size", "LayoutOrder"}]
      362 GETIMPORT                        R38 K64 [UDim2.new]
      364 LOADN                            R39 1
      365 LOADN                            R40 0
      366 LOADN                            R41 0
      367 LOADN                            R42 156
      368 CALL                             R38 4 1
      369 SETTABLEKS                       R38 R37 K60 ["Size"]
      371 LOADN                            R38 2
      372 SETTABLEKS                       R38 R37 K51 ["LayoutOrder"]
      374 JUMP                             ; [+7]
      375 DUPTABLE                         R37 K65 [{"tag", "LayoutOrder"}]
      376 LOADK                            R38 K66 ["auto-xy"]
      377 SETTABLEKS                       R38 R37 K37 ["tag"]
      379 LOADN                            R38 2
      380 SETTABLEKS                       R38 R37 K51 ["LayoutOrder"]
      382 DUPTABLE                         R38 K68 [{"SVPicker"}]
      383 GETUPVAL                         R39 4
      384 GETTABLEKS                       R39 R39 K36 ["createElement"]
      386 GETUPVAL                         R40 11
      387 DUPTABLE                         R41 K76 [{"hue", "saturation", "value", "onChanged", "onDragStarted", "onDragEnded", "showSelectionKnob", "testId"}]
      388 SETTABLEKS                       R11 R41 K69 ["hue"]
      390 SETTABLEKS                       R13 R41 K70 ["saturation"]
      392 SETTABLEKS                       R15 R41 K71 ["value"]
      394 NEWCLOSURE                       R42 P7
      395 CAPTURE                          VAL R29
      396 CAPTURE                          VAL R11
      397 SETTABLEKS                       R42 R41 K72 ["onChanged"]
      399 GETTABLEKS                       R42 R2 K73 ["onDragStarted"]
      401 SETTABLEKS                       R42 R41 K73 ["onDragStarted"]
      403 GETTABLEKS                       R42 R2 K74 ["onDragEnded"]
      405 SETTABLEKS                       R42 R41 K74 ["onDragEnded"]
      407 NAMECALL                         R42 R22 K77 ["getValue"]
      409 CALL                             R42 1 1
      410 SETTABLEKS                       R42 R41 K75 ["showSelectionKnob"]
      412 LOADK                            R43 K78 ["%*--sv-picker"]
      413 GETTABLEKS                       R45 R2 K52 ["testId"]
      415 NAMECALL                         R43 R43 K55 ["format"]
      417 CALL                             R43 2 1
      418 MOVE                             R42 R43
      419 SETTABLEKS                       R42 R41 K52 ["testId"]
      421 CALL                             R39 2 1
      422 SETTABLEKS                       R39 R38 K67 ["SVPicker"]
      424 CALL                             R35 3 1
      425 JUMP                             ; [+1]
      426 LOADNIL                          R35
      427 SETTABLEKS                       R35 R34 K43 ["SVPickerContainer"]
      429 GETUPVAL                         R36 0
      430 GETTABLEKS                       R36 R36 K4 ["Brick"]
      432 JUMPIFEQ                         R19 R36 ; [+41]
      434 GETUPVAL                         R35 4
      435 GETTABLEKS                       R35 R35 K36 ["createElement"]
      437 GETUPVAL                         R36 12
      438 DUPTABLE                         R37 K81 [{"sliderType", "value", "onValueChanged", "onDragStarted", "onDragEnded", "LayoutOrder", "testId"}]
      439 GETUPVAL                         R38 13
      440 GETTABLEKS                       R38 R38 K82 ["Hue"]
      442 SETTABLEKS                       R38 R37 K79 ["sliderType"]
      444 SETTABLEKS                       R11 R37 K71 ["value"]
      446 NEWCLOSURE                       R38 P8
      447 CAPTURE                          VAL R29
      448 CAPTURE                          VAL R13
      449 CAPTURE                          VAL R15
      450 SETTABLEKS                       R38 R37 K80 ["onValueChanged"]
      452 GETTABLEKS                       R38 R2 K73 ["onDragStarted"]
      454 SETTABLEKS                       R38 R37 K73 ["onDragStarted"]
      456 GETTABLEKS                       R38 R2 K74 ["onDragEnded"]
      458 SETTABLEKS                       R38 R37 K74 ["onDragEnded"]
      460 LOADN                            R38 3
      461 SETTABLEKS                       R38 R37 K51 ["LayoutOrder"]
      463 LOADK                            R39 K83 ["%*--hue-slider"]
      464 GETTABLEKS                       R41 R2 K52 ["testId"]
      466 NAMECALL                         R39 R39 K55 ["format"]
      468 CALL                             R39 2 1
      469 MOVE                             R38 R39
      470 SETTABLEKS                       R38 R37 K52 ["testId"]
      472 CALL                             R35 2 1
      473 JUMP                             ; [+1]
      474 LOADNIL                          R35
      475 SETTABLEKS                       R35 R34 K44 ["HueSlider"]
      477 JUMPIFNOT                        R27 ; [+38]
      478 GETUPVAL                         R35 4
      479 GETTABLEKS                       R35 R35 K36 ["createElement"]
      481 GETUPVAL                         R36 12
      482 DUPTABLE                         R37 K85 [{"sliderType", "value", "baseColor", "onValueChanged", "onDragStarted", "onDragEnded", "LayoutOrder", "testId"}]
      483 GETUPVAL                         R38 13
      484 GETTABLEKS                       R38 R38 K86 ["Alpha"]
      486 SETTABLEKS                       R38 R37 K79 ["sliderType"]
      488 SETTABLEKS                       R17 R37 K71 ["value"]
      490 SETTABLEKS                       R21 R37 K84 ["baseColor"]
      492 SETTABLEKS                       R25 R37 K80 ["onValueChanged"]
      494 GETTABLEKS                       R38 R2 K73 ["onDragStarted"]
      496 SETTABLEKS                       R38 R37 K73 ["onDragStarted"]
      498 GETTABLEKS                       R38 R2 K74 ["onDragEnded"]
      500 SETTABLEKS                       R38 R37 K74 ["onDragEnded"]
      502 LOADN                            R38 4
      503 SETTABLEKS                       R38 R37 K51 ["LayoutOrder"]
      505 LOADK                            R39 K87 ["%*--alpha-slider"]
      506 GETTABLEKS                       R41 R2 K52 ["testId"]
      508 NAMECALL                         R39 R39 K55 ["format"]
      510 CALL                             R39 2 1
      511 MOVE                             R38 R39
      512 SETTABLEKS                       R38 R37 K52 ["testId"]
      514 CALL                             R35 2 1
      515 JUMP                             ; [+1]
      516 LOADNIL                          R35
      517 SETTABLEKS                       R35 R34 K45 ["AlphaSlider"]
      519 CALL                             R31 3 -1
      520 RETURN                           R31 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["ColorPicker"]
       20 GETTABLEKS                       R4 R4 K10 ["BrickColorPicker"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Enums"]
       27 GETTABLEKS                       R5 R5 K12 ["ColorInputMode"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Components"]
       34 GETTABLEKS                       R6 R6 K9 ["ColorPicker"]
       36 GETTABLEKS                       R6 R6 K13 ["ColorInputs"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K8 ["Components"]
       43 GETTABLEKS                       R7 R7 K9 ["ColorPicker"]
       45 GETTABLEKS                       R7 R7 K14 ["ColorSlider"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K11 ["Enums"]
       52 GETTABLEKS                       R8 R8 K15 ["ColorSliderType"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K8 ["Components"]
       59 GETTABLEKS                       R9 R9 K9 ["ColorPicker"]
       61 GETTABLEKS                       R9 R9 K16 ["SVPicker"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R10 R0 K8 ["Components"]
       68 GETTABLEKS                       R10 R10 K17 ["View"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETTABLEKS                       R11 R0 K18 ["Utility"]
       75 GETTABLEKS                       R11 R11 K19 ["Flags"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K6 [require]
       80 GETTABLEKS                       R12 R0 K8 ["Components"]
       82 GETTABLEKS                       R12 R12 K9 ["ColorPicker"]
       84 GETTABLEKS                       R12 R12 K20 ["colorUtils"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K6 [require]
       89 GETTABLEKS                       R13 R0 K21 ["Providers"]
       91 GETTABLEKS                       R13 R13 K22 ["Style"]
       93 GETTABLEKS                       R13 R13 K23 ["useTokens"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K6 [require]
       98 GETTABLEKS                       R14 R0 K18 ["Utility"]
      100 GETTABLEKS                       R14 R14 K24 ["withCommonProps"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K6 [require]
      105 GETTABLEKS                       R15 R0 K18 ["Utility"]
      107 GETTABLEKS                       R15 R15 K25 ["withDefaults"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K6 [require]
      112 GETTABLEKS                       R16 R0 K8 ["Components"]
      114 GETTABLEKS                       R16 R16 K26 ["Types"]
      116 CALL                             R15 1 1
      117 DUPTABLE                         R16 K30 [{"initialAlpha", "initialMode", "testId"}]
      118 LOADN                            R17 1
      119 SETTABLEKS                       R17 R16 K27 ["initialAlpha"]
      121 GETTABLEKS                       R17 R4 K31 ["RGB"]
      123 SETTABLEKS                       R17 R16 K28 ["initialMode"]
      125 LOADK                            R17 K32 ["--foundation-color-picker"]
      126 SETTABLEKS                       R17 R16 K29 ["testId"]
      128 DUPCLOSURE                       R17 K33 [PROTO_0]
      129 DUPCLOSURE                       R18 K34 [PROTO_10]
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R7
      144 RETURN                           R18 1
