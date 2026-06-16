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
        1 GETTABLEKS                       R2 R0 K0 ["Color"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

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
      160 CAPTURE                          VAL R24
      161 NEWTABLE                         R28 0 1
      163 MOVE                             R29 R24
      164 SETLIST                          R28 R29 1 [1]
      166 CALL                             R26 2 1
      167 GETTABLEKS                       R28 R2 K32 ["onAlphaChanged"]
      169 JUMPIFNOTEQKNIL                  R28 ; [+2]
      171 LOADB                            R27 0 +1
      172 LOADB                            R27 1
      173 GETUPVAL                         R28 4
      174 GETTABLEKS                       R28 R28 K30 ["useCallback"]
      176 NEWCLOSURE                       R29 P5
      177 CAPTURE                          VAL R24
      178 NEWTABLE                         R30 0 1
      180 MOVE                             R31 R24
      181 SETLIST                          R30 R31 1 [1]
      183 CALL                             R28 2 1
      184 GETUPVAL                         R29 4
      185 GETTABLEKS                       R29 R29 K30 ["useCallback"]
      187 GETUPVAL                         R30 5
      188 GETTABLEKS                       R30 R30 K33 ["createHSVUpdateHandler"]
      190 MOVE                             R31 R12
      191 MOVE                             R32 R14
      192 MOVE                             R33 R16
      193 MOVE                             R34 R28
      194 MOVE                             R35 R23
      195 CALL                             R30 5 1
      196 NEWTABLE                         R31 0 5
      198 MOVE                             R32 R28
      199 MOVE                             R33 R12
      200 MOVE                             R34 R14
      201 MOVE                             R35 R16
      202 MOVE                             R36 R7
      203 SETLIST                          R31 R32 5 [1]
      205 CALL                             R29 2 1
      206 GETUPVAL                         R30 4
      207 GETTABLEKS                       R30 R30 K30 ["useCallback"]
      209 GETUPVAL                         R31 5
      210 GETTABLEKS                       R31 R31 K34 ["createColorInputChangeHandler"]
      212 MOVE                             R32 R28
      213 MOVE                             R33 R23
      214 MOVE                             R34 R12
      215 MOVE                             R35 R14
      216 MOVE                             R36 R16
      217 CALL                             R31 5 1
      218 NEWTABLE                         R32 0 5
      220 MOVE                             R33 R28
      221 MOVE                             R34 R23
      222 MOVE                             R35 R12
      223 MOVE                             R36 R14
      224 MOVE                             R37 R16
      225 SETLIST                          R32 R33 5 [1]
      227 CALL                             R30 2 1
      228 GETUPVAL                         R31 4
      229 GETTABLEKS                       R31 R31 K29 ["useEffect"]
      231 NEWCLOSURE                       R32 P6
      232 CAPTURE                          VAL R21
      233 CAPTURE                          VAL R12
      234 CAPTURE                          VAL R14
      235 CAPTURE                          VAL R16
      236 NEWTABLE                         R33 0 0
      238 CALL                             R31 2 0
      239 GETUPVAL                         R31 4
      240 GETTABLEKS                       R31 R31 K35 ["createElement"]
      242 GETUPVAL                         R32 6
      243 GETUPVAL                         R33 7
      244 MOVE                             R34 R2
      245 DUPTABLE                         R35 K37 [{"tag"}]
      246 LOADK                            R36 K38 ["col gap-small size-full-0 auto-y padding-small"]
      247 SETTABLEKS                       R36 R35 K36 ["tag"]
      249 CALL                             R33 2 1
      250 DUPTABLE                         R34 K44 [{"ColorInputs", "BrickPicker", "SVPickerContainer", "HueSlider", "AlphaSlider"}]
      251 GETUPVAL                         R35 4
      252 GETTABLEKS                       R35 R35 K35 ["createElement"]
      254 GETUPVAL                         R36 8
      255 DUPTABLE                         R37 K51 [{"color", "alpha", "onColorChanged", "onAlphaChanged", "mode", "onModeChanged", "availableModes", "LayoutOrder", "testId"}]
      256 SETTABLEKS                       R6 R37 K45 ["color"]
      258 SETTABLEKS                       R17 R37 K46 ["alpha"]
      260 SETTABLEKS                       R30 R37 K31 ["onColorChanged"]
      262 JUMPIFNOT                        R27 ; [+2]
      263 MOVE                             R38 R25
      264 JUMP                             ; [+1]
      265 LOADNIL                          R38
      266 SETTABLEKS                       R38 R37 K32 ["onAlphaChanged"]
      268 SETTABLEKS                       R19 R37 K47 ["mode"]
      270 SETTABLEKS                       R20 R37 K48 ["onModeChanged"]
      272 SETTABLEKS                       R1 R37 K0 ["availableModes"]
      274 LOADN                            R38 1
      275 SETTABLEKS                       R38 R37 K49 ["LayoutOrder"]
      277 LOADK                            R39 K52 ["%*--input"]
      278 GETTABLEKS                       R41 R2 K50 ["testId"]
      280 NAMECALL                         R39 R39 K53 ["format"]
      282 CALL                             R39 2 1
      283 MOVE                             R38 R39
      284 SETTABLEKS                       R38 R37 K50 ["testId"]
      286 CALL                             R35 2 1
      287 SETTABLEKS                       R35 R34 K39 ["ColorInputs"]
      289 GETUPVAL                         R36 0
      290 GETTABLEKS                       R36 R36 K4 ["Brick"]
      292 JUMPIFNOTEQ                      R19 R36 ; [+24]
      294 GETUPVAL                         R35 4
      295 GETTABLEKS                       R35 R35 K35 ["createElement"]
      297 GETUPVAL                         R36 9
      298 DUPTABLE                         R37 K56 [{"selectedColor", "onBrickColorChanged", "LayoutOrder", "testId"}]
      299 SETTABLEKS                       R21 R37 K54 ["selectedColor"]
      301 SETTABLEKS                       R26 R37 K55 ["onBrickColorChanged"]
      303 LOADN                            R38 2
      304 SETTABLEKS                       R38 R37 K49 ["LayoutOrder"]
      306 LOADK                            R39 K57 ["%*--brick-picker"]
      307 GETTABLEKS                       R41 R2 K50 ["testId"]
      309 NAMECALL                         R39 R39 K53 ["format"]
      311 CALL                             R39 2 1
      312 MOVE                             R38 R39
      313 SETTABLEKS                       R38 R37 K50 ["testId"]
      315 CALL                             R35 2 1
      316 JUMP                             ; [+1]
      317 LOADNIL                          R35
      318 SETTABLEKS                       R35 R34 K40 ["BrickPicker"]
      320 GETUPVAL                         R36 0
      321 GETTABLEKS                       R36 R36 K4 ["Brick"]
      323 JUMPIFEQ                         R19 R36 ; [+62]
      325 GETUPVAL                         R35 4
      326 GETTABLEKS                       R35 R35 K35 ["createElement"]
      328 GETUPVAL                         R36 6
      329 DUPTABLE                         R37 K59 [{"Size", "LayoutOrder"}]
      330 GETIMPORT                        R38 K62 [UDim2.new]
      332 LOADN                            R39 1
      333 LOADN                            R40 0
      334 LOADN                            R41 0
      335 LOADN                            R42 156
      336 CALL                             R38 4 1
      337 SETTABLEKS                       R38 R37 K58 ["Size"]
      339 LOADN                            R38 2
      340 SETTABLEKS                       R38 R37 K49 ["LayoutOrder"]
      342 DUPTABLE                         R38 K64 [{"SVPicker"}]
      343 GETUPVAL                         R39 4
      344 GETTABLEKS                       R39 R39 K35 ["createElement"]
      346 GETUPVAL                         R40 10
      347 DUPTABLE                         R41 K72 [{"hue", "saturation", "value", "onChanged", "onDragStarted", "onDragEnded", "showSelectionKnob", "testId"}]
      348 SETTABLEKS                       R11 R41 K65 ["hue"]
      350 SETTABLEKS                       R13 R41 K66 ["saturation"]
      352 SETTABLEKS                       R15 R41 K67 ["value"]
      354 NEWCLOSURE                       R42 P7
      355 CAPTURE                          VAL R29
      356 CAPTURE                          VAL R11
      357 SETTABLEKS                       R42 R41 K68 ["onChanged"]
      359 GETTABLEKS                       R42 R2 K69 ["onDragStarted"]
      361 SETTABLEKS                       R42 R41 K69 ["onDragStarted"]
      363 GETTABLEKS                       R42 R2 K70 ["onDragEnded"]
      365 SETTABLEKS                       R42 R41 K70 ["onDragEnded"]
      367 NAMECALL                         R42 R22 K73 ["getValue"]
      369 CALL                             R42 1 1
      370 SETTABLEKS                       R42 R41 K71 ["showSelectionKnob"]
      372 LOADK                            R43 K74 ["%*--sv-picker"]
      373 GETTABLEKS                       R45 R2 K50 ["testId"]
      375 NAMECALL                         R43 R43 K53 ["format"]
      377 CALL                             R43 2 1
      378 MOVE                             R42 R43
      379 SETTABLEKS                       R42 R41 K50 ["testId"]
      381 CALL                             R39 2 1
      382 SETTABLEKS                       R39 R38 K63 ["SVPicker"]
      384 CALL                             R35 3 1
      385 JUMP                             ; [+1]
      386 LOADNIL                          R35
      387 SETTABLEKS                       R35 R34 K41 ["SVPickerContainer"]
      389 GETUPVAL                         R36 0
      390 GETTABLEKS                       R36 R36 K4 ["Brick"]
      392 JUMPIFEQ                         R19 R36 ; [+41]
      394 GETUPVAL                         R35 4
      395 GETTABLEKS                       R35 R35 K35 ["createElement"]
      397 GETUPVAL                         R36 11
      398 DUPTABLE                         R37 K77 [{"sliderType", "value", "onValueChanged", "onDragStarted", "onDragEnded", "LayoutOrder", "testId"}]
      399 GETUPVAL                         R38 12
      400 GETTABLEKS                       R38 R38 K78 ["Hue"]
      402 SETTABLEKS                       R38 R37 K75 ["sliderType"]
      404 SETTABLEKS                       R11 R37 K67 ["value"]
      406 NEWCLOSURE                       R38 P8
      407 CAPTURE                          VAL R29
      408 CAPTURE                          VAL R13
      409 CAPTURE                          VAL R15
      410 SETTABLEKS                       R38 R37 K76 ["onValueChanged"]
      412 GETTABLEKS                       R38 R2 K69 ["onDragStarted"]
      414 SETTABLEKS                       R38 R37 K69 ["onDragStarted"]
      416 GETTABLEKS                       R38 R2 K70 ["onDragEnded"]
      418 SETTABLEKS                       R38 R37 K70 ["onDragEnded"]
      420 LOADN                            R38 3
      421 SETTABLEKS                       R38 R37 K49 ["LayoutOrder"]
      423 LOADK                            R39 K79 ["%*--hue-slider"]
      424 GETTABLEKS                       R41 R2 K50 ["testId"]
      426 NAMECALL                         R39 R39 K53 ["format"]
      428 CALL                             R39 2 1
      429 MOVE                             R38 R39
      430 SETTABLEKS                       R38 R37 K50 ["testId"]
      432 CALL                             R35 2 1
      433 JUMP                             ; [+1]
      434 LOADNIL                          R35
      435 SETTABLEKS                       R35 R34 K42 ["HueSlider"]
      437 JUMPIFNOT                        R27 ; [+38]
      438 GETUPVAL                         R35 4
      439 GETTABLEKS                       R35 R35 K35 ["createElement"]
      441 GETUPVAL                         R36 11
      442 DUPTABLE                         R37 K81 [{"sliderType", "value", "baseColor", "onValueChanged", "onDragStarted", "onDragEnded", "LayoutOrder", "testId"}]
      443 GETUPVAL                         R38 12
      444 GETTABLEKS                       R38 R38 K82 ["Alpha"]
      446 SETTABLEKS                       R38 R37 K75 ["sliderType"]
      448 SETTABLEKS                       R17 R37 K67 ["value"]
      450 SETTABLEKS                       R21 R37 K80 ["baseColor"]
      452 SETTABLEKS                       R25 R37 K76 ["onValueChanged"]
      454 GETTABLEKS                       R38 R2 K69 ["onDragStarted"]
      456 SETTABLEKS                       R38 R37 K69 ["onDragStarted"]
      458 GETTABLEKS                       R38 R2 K70 ["onDragEnded"]
      460 SETTABLEKS                       R38 R37 K70 ["onDragEnded"]
      462 LOADN                            R38 4
      463 SETTABLEKS                       R38 R37 K49 ["LayoutOrder"]
      465 LOADK                            R39 K83 ["%*--alpha-slider"]
      466 GETTABLEKS                       R41 R2 K50 ["testId"]
      468 NAMECALL                         R39 R39 K53 ["format"]
      470 CALL                             R39 2 1
      471 MOVE                             R38 R39
      472 SETTABLEKS                       R38 R37 K50 ["testId"]
      474 CALL                             R35 2 1
      475 JUMP                             ; [+1]
      476 LOADNIL                          R35
      477 SETTABLEKS                       R35 R34 K43 ["AlphaSlider"]
      479 CALL                             R31 3 -1
      480 RETURN                           R31 -1

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
       73 GETTABLEKS                       R11 R0 K8 ["Components"]
       75 GETTABLEKS                       R11 R11 K9 ["ColorPicker"]
       77 GETTABLEKS                       R11 R11 K18 ["colorUtils"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K6 [require]
       82 GETTABLEKS                       R12 R0 K19 ["Providers"]
       84 GETTABLEKS                       R12 R12 K20 ["Style"]
       86 GETTABLEKS                       R12 R12 K21 ["useTokens"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETTABLEKS                       R13 R0 K22 ["Utility"]
       93 GETTABLEKS                       R13 R13 K23 ["withCommonProps"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K6 [require]
       98 GETTABLEKS                       R14 R0 K22 ["Utility"]
      100 GETTABLEKS                       R14 R14 K24 ["withDefaults"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K6 [require]
      105 GETTABLEKS                       R15 R0 K8 ["Components"]
      107 GETTABLEKS                       R15 R15 K25 ["Types"]
      109 CALL                             R14 1 1
      110 DUPTABLE                         R15 K29 [{"initialAlpha", "initialMode", "testId"}]
      111 LOADN                            R16 1
      112 SETTABLEKS                       R16 R15 K26 ["initialAlpha"]
      114 GETTABLEKS                       R16 R4 K30 ["RGB"]
      116 SETTABLEKS                       R16 R15 K27 ["initialMode"]
      118 LOADK                            R16 K31 ["--foundation-color-picker"]
      119 SETTABLEKS                       R16 R15 K28 ["testId"]
      121 DUPCLOSURE                       R16 K32 [PROTO_0]
      122 DUPCLOSURE                       R17 K33 [PROTO_10]
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R7
      136 RETURN                           R17 1
