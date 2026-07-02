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
      245 DUPTABLE                         R35 K38 [{["tag"] = "col gap-small size-full-0 auto-y padding-small"}]
      246 CALL                             R33 2 1
      247 DUPTABLE                         R34 K44 [{"ColorInputs", "BrickPicker", "SVPickerContainer", "HueSlider", "AlphaSlider"}]
      248 GETUPVAL                         R35 4
      249 GETTABLEKS                       R35 R35 K35 ["createElement"]
      251 GETUPVAL                         R36 8
      252 DUPTABLE                         R37 K51 [{["color"], ["alpha"], ["onColorChanged"], ["onAlphaChanged"], ["mode"], ["onModeChanged"], [7], ["LayoutOrder"] = 1, ["testId"]}]
      253 SETTABLEKS                       R6 R37 K45 ["color"]
      255 SETTABLEKS                       R17 R37 K46 ["alpha"]
      257 SETTABLEKS                       R30 R37 K31 ["onColorChanged"]
      259 JUMPIFNOT                        R27 ; [+2]
      260 MOVE                             R38 R25
      261 JUMP                             ; [+1]
      262 LOADNIL                          R38
      263 SETTABLEKS                       R38 R37 K32 ["onAlphaChanged"]
      265 SETTABLEKS                       R19 R37 K47 ["mode"]
      267 SETTABLEKS                       R20 R37 K48 ["onModeChanged"]
      269 SETTABLEKS                       R1 R37 K0 ["availableModes"]
      271 LOADK                            R39 K52 ["%*--input"]
      272 GETTABLEKS                       R41 R2 K50 ["testId"]
      274 NAMECALL                         R39 R39 K53 ["format"]
      276 CALL                             R39 2 1
      277 MOVE                             R38 R39
      278 SETTABLEKS                       R38 R37 K50 ["testId"]
      280 CALL                             R35 2 1
      281 SETTABLEKS                       R35 R34 K39 ["ColorInputs"]
      283 GETUPVAL                         R36 0
      284 GETTABLEKS                       R36 R36 K4 ["Brick"]
      286 JUMPIFNOTEQ                      R19 R36 ; [+21]
      288 GETUPVAL                         R35 4
      289 GETTABLEKS                       R35 R35 K35 ["createElement"]
      291 GETUPVAL                         R36 9
      292 DUPTABLE                         R37 K57 [{["selectedColor"], ["onBrickColorChanged"], ["LayoutOrder"] = 2, ["testId"]}]
      293 SETTABLEKS                       R21 R37 K54 ["selectedColor"]
      295 SETTABLEKS                       R26 R37 K55 ["onBrickColorChanged"]
      297 LOADK                            R39 K58 ["%*--brick-picker"]
      298 GETTABLEKS                       R41 R2 K50 ["testId"]
      300 NAMECALL                         R39 R39 K53 ["format"]
      302 CALL                             R39 2 1
      303 MOVE                             R38 R39
      304 SETTABLEKS                       R38 R37 K50 ["testId"]
      306 CALL                             R35 2 1
      307 JUMP                             ; [+1]
      308 LOADNIL                          R35
      309 SETTABLEKS                       R35 R34 K40 ["BrickPicker"]
      311 GETUPVAL                         R36 0
      312 GETTABLEKS                       R36 R36 K4 ["Brick"]
      314 JUMPIFEQ                         R19 R36 ; [+59]
      316 GETUPVAL                         R35 4
      317 GETTABLEKS                       R35 R35 K35 ["createElement"]
      319 GETUPVAL                         R36 6
      320 DUPTABLE                         R37 K60 [{["Size"], ["LayoutOrder"] = 2}]
      321 GETIMPORT                        R38 K63 [UDim2.new]
      323 LOADN                            R39 1
      324 LOADN                            R40 0
      325 LOADN                            R41 0
      326 LOADN                            R42 156
      327 CALL                             R38 4 1
      328 SETTABLEKS                       R38 R37 K59 ["Size"]
      330 DUPTABLE                         R38 K65 [{"SVPicker"}]
      331 GETUPVAL                         R39 4
      332 GETTABLEKS                       R39 R39 K35 ["createElement"]
      334 GETUPVAL                         R40 10
      335 DUPTABLE                         R41 K73 [{"hue", "saturation", "value", "onChanged", "onDragStarted", "onDragEnded", "showSelectionKnob", "testId"}]
      336 SETTABLEKS                       R11 R41 K66 ["hue"]
      338 SETTABLEKS                       R13 R41 K67 ["saturation"]
      340 SETTABLEKS                       R15 R41 K68 ["value"]
      342 NEWCLOSURE                       R42 P7
      343 CAPTURE                          VAL R29
      344 CAPTURE                          VAL R11
      345 SETTABLEKS                       R42 R41 K69 ["onChanged"]
      347 GETTABLEKS                       R42 R2 K70 ["onDragStarted"]
      349 SETTABLEKS                       R42 R41 K70 ["onDragStarted"]
      351 GETTABLEKS                       R42 R2 K71 ["onDragEnded"]
      353 SETTABLEKS                       R42 R41 K71 ["onDragEnded"]
      355 NAMECALL                         R42 R22 K74 ["getValue"]
      357 CALL                             R42 1 1
      358 SETTABLEKS                       R42 R41 K72 ["showSelectionKnob"]
      360 LOADK                            R43 K75 ["%*--sv-picker"]
      361 GETTABLEKS                       R45 R2 K50 ["testId"]
      363 NAMECALL                         R43 R43 K53 ["format"]
      365 CALL                             R43 2 1
      366 MOVE                             R42 R43
      367 SETTABLEKS                       R42 R41 K50 ["testId"]
      369 CALL                             R39 2 1
      370 SETTABLEKS                       R39 R38 K64 ["SVPicker"]
      372 CALL                             R35 3 1
      373 JUMP                             ; [+1]
      374 LOADNIL                          R35
      375 SETTABLEKS                       R35 R34 K41 ["SVPickerContainer"]
      377 GETUPVAL                         R36 0
      378 GETTABLEKS                       R36 R36 K4 ["Brick"]
      380 JUMPIFEQ                         R19 R36 ; [+38]
      382 GETUPVAL                         R35 4
      383 GETTABLEKS                       R35 R35 K35 ["createElement"]
      385 GETUPVAL                         R36 11
      386 DUPTABLE                         R37 K79 [{["sliderType"], ["value"], ["onValueChanged"], ["onDragStarted"], ["onDragEnded"], ["LayoutOrder"] = 3, ["testId"]}]
      387 GETUPVAL                         R38 12
      388 GETTABLEKS                       R38 R38 K80 ["Hue"]
      390 SETTABLEKS                       R38 R37 K76 ["sliderType"]
      392 SETTABLEKS                       R11 R37 K68 ["value"]
      394 NEWCLOSURE                       R38 P8
      395 CAPTURE                          VAL R29
      396 CAPTURE                          VAL R13
      397 CAPTURE                          VAL R15
      398 SETTABLEKS                       R38 R37 K77 ["onValueChanged"]
      400 GETTABLEKS                       R38 R2 K70 ["onDragStarted"]
      402 SETTABLEKS                       R38 R37 K70 ["onDragStarted"]
      404 GETTABLEKS                       R38 R2 K71 ["onDragEnded"]
      406 SETTABLEKS                       R38 R37 K71 ["onDragEnded"]
      408 LOADK                            R39 K81 ["%*--hue-slider"]
      409 GETTABLEKS                       R41 R2 K50 ["testId"]
      411 NAMECALL                         R39 R39 K53 ["format"]
      413 CALL                             R39 2 1
      414 MOVE                             R38 R39
      415 SETTABLEKS                       R38 R37 K50 ["testId"]
      417 CALL                             R35 2 1
      418 JUMP                             ; [+1]
      419 LOADNIL                          R35
      420 SETTABLEKS                       R35 R34 K42 ["HueSlider"]
      422 JUMPIFNOT                        R27 ; [+35]
      423 GETUPVAL                         R35 4
      424 GETTABLEKS                       R35 R35 K35 ["createElement"]
      426 GETUPVAL                         R36 11
      427 DUPTABLE                         R37 K84 [{["sliderType"], ["value"], ["baseColor"], ["onValueChanged"], ["onDragStarted"], ["onDragEnded"], ["LayoutOrder"] = 4, ["testId"]}]
      428 GETUPVAL                         R38 12
      429 GETTABLEKS                       R38 R38 K85 ["Alpha"]
      431 SETTABLEKS                       R38 R37 K76 ["sliderType"]
      433 SETTABLEKS                       R17 R37 K68 ["value"]
      435 SETTABLEKS                       R21 R37 K82 ["baseColor"]
      437 SETTABLEKS                       R25 R37 K77 ["onValueChanged"]
      439 GETTABLEKS                       R38 R2 K70 ["onDragStarted"]
      441 SETTABLEKS                       R38 R37 K70 ["onDragStarted"]
      443 GETTABLEKS                       R38 R2 K71 ["onDragEnded"]
      445 SETTABLEKS                       R38 R37 K71 ["onDragEnded"]
      447 LOADK                            R39 K86 ["%*--alpha-slider"]
      448 GETTABLEKS                       R41 R2 K50 ["testId"]
      450 NAMECALL                         R39 R39 K53 ["format"]
      452 CALL                             R39 2 1
      453 MOVE                             R38 R39
      454 SETTABLEKS                       R38 R37 K50 ["testId"]
      456 CALL                             R35 2 1
      457 JUMP                             ; [+1]
      458 LOADNIL                          R35
      459 SETTABLEKS                       R35 R34 K43 ["AlphaSlider"]
      461 CALL                             R31 3 -1
      462 RETURN                           R31 -1

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
      110 DUPTABLE                         R15 K31 [{["initialAlpha"] = 1, ["initialMode"], ["testId"] = "--foundation-color-picker"}]
      111 GETTABLEKS                       R16 R4 K32 ["RGB"]
      113 SETTABLEKS                       R16 R15 K28 ["initialMode"]
      115 DUPCLOSURE                       R16 K33 [PROTO_0]
      116 DUPCLOSURE                       R17 K34 [PROTO_10]
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R7
      130 RETURN                           R17 1
