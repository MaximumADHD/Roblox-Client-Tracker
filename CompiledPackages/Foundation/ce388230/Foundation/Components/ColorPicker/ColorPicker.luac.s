PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isPartialHSV"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NOT                              R1 R2
        6 RETURN                           R1 1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["onColorChanged"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Color"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R2 R0 K0 ["Color"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["FoundationColorPickerPartialHSV"]
        6 JUMPIFNOT                        R3 ; [+11]
        7 GETUPVAL                         R3 1
        8 NAMECALL                         R3 R3 K1 ["getValue"]
       10 CALL                             R3 1 1
       11 NAMECALL                         R3 R3 K2 ["ToHSV"]
       13 CALL                             R3 1 3
       14 MOVE                             R0 R3
       15 MOVE                             R1 R4
       16 MOVE                             R2 R5
       17 JUMP                             ; [+10]
       18 GETUPVAL                         R3 2
       19 NAMECALL                         R3 R3 K1 ["getValue"]
       21 CALL                             R3 1 1
       22 NAMECALL                         R3 R3 K2 ["ToHSV"]
       24 CALL                             R3 1 3
       25 MOVE                             R0 R3
       26 MOVE                             R1 R4
       27 MOVE                             R2 R5
       28 GETUPVAL                         R3 3
       29 MOVE                             R4 R0
       30 CALL                             R3 1 0
       31 GETUPVAL                         R3 4
       32 MOVE                             R4 R1
       33 CALL                             R3 1 0
       34 GETUPVAL                         R3 5
       35 MOVE                             R4 R2
       36 CALL                             R3 1 0
       37 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R3 R3 K0 ["getValue"]
        4 CALL                             R3 1 1
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R2 3 0
        8 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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
       39 GETTABLEKS                       R6 R6 K11 ["FoundationColorPickerPartialHSV"]
       41 JUMPIF                           R6 ; [+8]
       42 FASTCALL1                        TYPEOF R5 ; [+3]
       43 MOVE                             R7 R5
       44 GETIMPORT                        R6 K13 [typeof]
       46 CALL                             R6 1 1
       47 JUMPIFEQKS                       R6 K9 ["Color3"] ; [+2]
       49 MOVE                             R5 R4
       50 GETUPVAL                         R6 5
       51 GETTABLEKS                       R6 R6 K14 ["useBinding"]
       53 MOVE                             R7 R5
       54 CALL                             R6 1 2
       55 LOADNIL                          R8
       56 LOADNIL                          R9
       57 LOADNIL                          R10
       58 GETUPVAL                         R11 4
       59 GETTABLEKS                       R11 R11 K11 ["FoundationColorPickerPartialHSV"]
       61 JUMPIFNOT                        R11 ; [+20]
       62 FASTCALL1                        TYPE R5 ; [+3]
       63 MOVE                             R12 R5
       64 GETIMPORT                        R11 K16 [type]
       66 CALL                             R11 1 1
       67 JUMPIFNOTEQKS                    R11 K17 ["table"] ; [+14]
       69 MOVE                             R11 R5
       70 GETTABLEKS                       R12 R11 K19 ["H"]
       72 DIVK                             R8 R12 K18 [360]
       73 GETTABLEKS                       R13 R11 K21 ["S"]
       75 ORK                              R12 R13 K20 [100]
       76 DIVK                             R9 R12 K20 [100]
       77 GETTABLEKS                       R13 R11 K22 ["V"]
       79 ORK                              R12 R13 K20 [100]
       80 DIVK                             R10 R12 K20 [100]
       81 JUMP                             ; [+6]
       82 NAMECALL                         R11 R5 K23 ["ToHSV"]
       84 CALL                             R11 1 3
       85 MOVE                             R8 R11
       86 MOVE                             R9 R12
       87 MOVE                             R10 R13
       88 GETUPVAL                         R11 5
       89 GETTABLEKS                       R11 R11 K14 ["useBinding"]
       91 MOVE                             R12 R8
       92 CALL                             R11 1 2
       93 GETUPVAL                         R13 5
       94 GETTABLEKS                       R13 R13 K14 ["useBinding"]
       96 MOVE                             R14 R9
       97 CALL                             R13 1 2
       98 GETUPVAL                         R15 5
       99 GETTABLEKS                       R15 R15 K14 ["useBinding"]
      101 MOVE                             R16 R10
      102 CALL                             R15 1 2
      103 GETUPVAL                         R17 5
      104 GETTABLEKS                       R17 R17 K14 ["useBinding"]
      106 GETTABLEKS                       R19 R2 K25 ["initialAlpha"]
      108 ORK                              R18 R19 K24 [1]
      109 CALL                             R17 1 2
      110 GETUPVAL                         R19 5
      111 GETTABLEKS                       R19 R19 K26 ["useState"]
      113 GETTABLEKS                       R20 R2 K27 ["initialMode"]
      115 JUMPIF                           R20 ; [+3]
      116 GETUPVAL                         R20 0
      117 GETTABLEKS                       R20 R20 K1 ["RGB"]
      119 CALL                             R19 1 2
      120 GETUPVAL                         R23 6
      121 GETTABLEKS                       R23 R23 K28 ["toColor3"]
      123 NAMECALL                         R21 R6 K29 ["map"]
      125 CALL                             R21 2 1
      126 GETUPVAL                         R23 4
      127 GETTABLEKS                       R23 R23 K11 ["FoundationColorPickerPartialHSV"]
      129 JUMPIFNOT                        R23 ; [+6]
      130 DUPCLOSURE                       R24 K30 [PROTO_0]
      131 CAPTURE                          UPVAL U6
      132 NAMECALL                         R22 R6 K29 ["map"]
      134 CALL                             R22 2 1
      135 JUMP                             ; [+5]
      136 GETUPVAL                         R22 5
      137 GETTABLEKS                       R22 R22 K31 ["createBinding"]
      139 LOADB                            R23 1
      140 CALL                             R22 1 1
      141 GETUPVAL                         R23 5
      142 GETTABLEKS                       R23 R23 K32 ["useRef"]
      144 LOADB                            R24 0
      145 CALL                             R23 1 1
      146 GETUPVAL                         R24 5
      147 GETTABLEKS                       R24 R24 K33 ["useEffect"]
      149 NEWCLOSURE                       R25 P1
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R20
      153 NEWTABLE                         R26 0 1
      155 GETTABLEKS                       R27 R2 K27 ["initialMode"]
      157 SETLIST                          R26 R27 1 [1]
      159 CALL                             R24 2 0
      160 GETUPVAL                         R24 5
      161 GETTABLEKS                       R24 R24 K34 ["useCallback"]
      163 NEWCLOSURE                       R25 P2
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R2
      166 NEWTABLE                         R26 0 1
      168 GETTABLEKS                       R27 R2 K35 ["onColorChanged"]
      170 SETLIST                          R26 R27 1 [1]
      172 CALL                             R24 2 1
      173 GETUPVAL                         R25 5
      174 GETTABLEKS                       R25 R25 K34 ["useCallback"]
      176 NEWCLOSURE                       R26 P3
      177 CAPTURE                          VAL R18
      178 CAPTURE                          VAL R2
      179 NEWTABLE                         R27 0 1
      181 GETTABLEKS                       R28 R2 K36 ["onAlphaChanged"]
      183 SETLIST                          R27 R28 1 [1]
      185 CALL                             R25 2 1
      186 GETUPVAL                         R26 5
      187 GETTABLEKS                       R26 R26 K34 ["useCallback"]
      189 NEWCLOSURE                       R27 P4
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R24
      192 NEWTABLE                         R28 0 1
      194 MOVE                             R29 R24
      195 SETLIST                          R28 R29 1 [1]
      197 CALL                             R26 2 1
      198 LOADB                            R27 0
      199 GETTABLEKS                       R28 R2 K36 ["onAlphaChanged"]
      201 JUMPIFEQKNIL                     R28 ; [+8]
      203 GETUPVAL                         R28 0
      204 GETTABLEKS                       R28 R28 K4 ["Brick"]
      206 JUMPIFNOTEQ                      R19 R28 ; [+2]
      208 LOADB                            R27 0 +1
      209 LOADB                            R27 1
      210 GETUPVAL                         R28 5
      211 GETTABLEKS                       R28 R28 K34 ["useCallback"]
      213 NEWCLOSURE                       R29 P5
      214 CAPTURE                          VAL R24
      215 NEWTABLE                         R30 0 1
      217 MOVE                             R31 R24
      218 SETLIST                          R30 R31 1 [1]
      220 CALL                             R28 2 1
      221 GETUPVAL                         R29 5
      222 GETTABLEKS                       R29 R29 K34 ["useCallback"]
      224 GETUPVAL                         R30 6
      225 GETTABLEKS                       R30 R30 K37 ["createHSVUpdateHandler"]
      227 MOVE                             R31 R12
      228 MOVE                             R32 R14
      229 MOVE                             R33 R16
      230 MOVE                             R34 R28
      231 MOVE                             R35 R23
      232 CALL                             R30 5 1
      233 NEWTABLE                         R31 0 5
      235 MOVE                             R32 R28
      236 MOVE                             R33 R12
      237 MOVE                             R34 R14
      238 MOVE                             R35 R16
      239 MOVE                             R36 R7
      240 SETLIST                          R31 R32 5 [1]
      242 CALL                             R29 2 1
      243 GETUPVAL                         R30 5
      244 GETTABLEKS                       R30 R30 K34 ["useCallback"]
      246 GETUPVAL                         R31 6
      247 GETTABLEKS                       R31 R31 K38 ["createColorInputChangeHandler"]
      249 MOVE                             R32 R28
      250 MOVE                             R33 R23
      251 MOVE                             R34 R12
      252 MOVE                             R35 R14
      253 MOVE                             R36 R16
      254 CALL                             R31 5 1
      255 NEWTABLE                         R32 0 5
      257 MOVE                             R33 R28
      258 MOVE                             R34 R23
      259 MOVE                             R35 R12
      260 MOVE                             R36 R14
      261 MOVE                             R37 R16
      262 SETLIST                          R32 R33 5 [1]
      264 CALL                             R30 2 1
      265 GETUPVAL                         R31 5
      266 GETTABLEKS                       R31 R31 K33 ["useEffect"]
      268 NEWCLOSURE                       R32 P6
      269 CAPTURE                          UPVAL U4
      270 CAPTURE                          VAL R21
      271 CAPTURE                          VAL R6
      272 CAPTURE                          VAL R12
      273 CAPTURE                          VAL R14
      274 CAPTURE                          VAL R16
      275 NEWTABLE                         R33 0 0
      277 CALL                             R31 2 0
      278 GETUPVAL                         R31 5
      279 GETTABLEKS                       R31 R31 K39 ["createElement"]
      281 GETUPVAL                         R32 7
      282 GETUPVAL                         R33 8
      283 MOVE                             R34 R2
      284 DUPTABLE                         R35 K41 [{"tag"}]
      285 LOADK                            R36 K42 ["col gap-medium auto-xy align-x-center"]
      286 SETTABLEKS                       R36 R35 K40 ["tag"]
      288 CALL                             R33 2 1
      289 DUPTABLE                         R34 K48 [{"ColorInputs", "BrickPicker", "SVPickerContainer", "HueSlider", "AlphaSlider"}]
      290 GETUPVAL                         R35 5
      291 GETTABLEKS                       R35 R35 K39 ["createElement"]
      293 GETUPVAL                         R36 9
      294 DUPTABLE                         R37 K55 [{"color", "alpha", "onColorChanged", "onAlphaChanged", "mode", "onModeChanged", "availableModes", "LayoutOrder", "testId"}]
      295 SETTABLEKS                       R6 R37 K49 ["color"]
      297 SETTABLEKS                       R17 R37 K50 ["alpha"]
      299 SETTABLEKS                       R30 R37 K35 ["onColorChanged"]
      301 JUMPIFNOT                        R27 ; [+2]
      302 MOVE                             R38 R25
      303 JUMP                             ; [+1]
      304 LOADNIL                          R38
      305 SETTABLEKS                       R38 R37 K36 ["onAlphaChanged"]
      307 SETTABLEKS                       R19 R37 K51 ["mode"]
      309 SETTABLEKS                       R20 R37 K52 ["onModeChanged"]
      311 SETTABLEKS                       R1 R37 K0 ["availableModes"]
      313 LOADN                            R38 1
      314 SETTABLEKS                       R38 R37 K53 ["LayoutOrder"]
      316 LOADK                            R39 K56 ["%*--input"]
      317 GETTABLEKS                       R41 R2 K54 ["testId"]
      319 NAMECALL                         R39 R39 K57 ["format"]
      321 CALL                             R39 2 1
      322 MOVE                             R38 R39
      323 SETTABLEKS                       R38 R37 K54 ["testId"]
      325 CALL                             R35 2 1
      326 SETTABLEKS                       R35 R34 K43 ["ColorInputs"]
      328 GETUPVAL                         R36 0
      329 GETTABLEKS                       R36 R36 K4 ["Brick"]
      331 JUMPIFNOTEQ                      R19 R36 ; [+31]
      333 GETUPVAL                         R35 5
      334 GETTABLEKS                       R35 R35 K39 ["createElement"]
      336 GETUPVAL                         R36 10
      337 DUPTABLE                         R37 K60 [{"selectedColor", "onBrickColorChanged", "LayoutOrder", "testId"}]
      338 GETUPVAL                         R39 4
      339 GETTABLEKS                       R39 R39 K11 ["FoundationColorPickerPartialHSV"]
      341 JUMPIFNOT                        R39 ; [+2]
      342 MOVE                             R38 R21
      343 JUMP                             ; [+1]
      344 MOVE                             R38 R6
      345 SETTABLEKS                       R38 R37 K58 ["selectedColor"]
      347 SETTABLEKS                       R26 R37 K59 ["onBrickColorChanged"]
      349 LOADN                            R38 2
      350 SETTABLEKS                       R38 R37 K53 ["LayoutOrder"]
      352 LOADK                            R39 K61 ["%*--brick-picker"]
      353 GETTABLEKS                       R41 R2 K54 ["testId"]
      355 NAMECALL                         R39 R39 K57 ["format"]
      357 CALL                             R39 2 1
      358 MOVE                             R38 R39
      359 SETTABLEKS                       R38 R37 K54 ["testId"]
      361 CALL                             R35 2 1
      362 JUMP                             ; [+1]
      363 LOADNIL                          R35
      364 SETTABLEKS                       R35 R34 K44 ["BrickPicker"]
      366 GETUPVAL                         R36 0
      367 GETTABLEKS                       R36 R36 K4 ["Brick"]
      369 JUMPIFEQ                         R19 R36 ; [+54]
      371 GETUPVAL                         R35 5
      372 GETTABLEKS                       R35 R35 K39 ["createElement"]
      374 GETUPVAL                         R36 7
      375 DUPTABLE                         R37 K62 [{"tag", "LayoutOrder"}]
      376 LOADK                            R38 K63 ["auto-xy"]
      377 SETTABLEKS                       R38 R37 K40 ["tag"]
      379 LOADN                            R38 2
      380 SETTABLEKS                       R38 R37 K53 ["LayoutOrder"]
      382 DUPTABLE                         R38 K65 [{"SVPicker"}]
      383 GETUPVAL                         R39 5
      384 GETTABLEKS                       R39 R39 K39 ["createElement"]
      386 GETUPVAL                         R40 11
      387 DUPTABLE                         R41 K71 [{"hue", "saturation", "value", "onChanged", "showSelectionKnob", "testId"}]
      388 SETTABLEKS                       R11 R41 K66 ["hue"]
      390 SETTABLEKS                       R13 R41 K67 ["saturation"]
      392 SETTABLEKS                       R15 R41 K68 ["value"]
      394 NEWCLOSURE                       R42 P7
      395 CAPTURE                          VAL R29
      396 CAPTURE                          VAL R11
      397 SETTABLEKS                       R42 R41 K69 ["onChanged"]
      399 GETUPVAL                         R43 4
      400 GETTABLEKS                       R43 R43 K11 ["FoundationColorPickerPartialHSV"]
      402 JUMPIFNOT                        R43 ; [+4]
      403 NAMECALL                         R42 R22 K72 ["getValue"]
      405 CALL                             R42 1 1
      406 JUMP                             ; [+1]
      407 LOADB                            R42 1
      408 SETTABLEKS                       R42 R41 K70 ["showSelectionKnob"]
      410 LOADK                            R43 K73 ["%*--sv-picker"]
      411 GETTABLEKS                       R45 R2 K54 ["testId"]
      413 NAMECALL                         R43 R43 K57 ["format"]
      415 CALL                             R43 2 1
      416 MOVE                             R42 R43
      417 SETTABLEKS                       R42 R41 K54 ["testId"]
      419 CALL                             R39 2 1
      420 SETTABLEKS                       R39 R38 K64 ["SVPicker"]
      422 CALL                             R35 3 1
      423 JUMP                             ; [+1]
      424 LOADNIL                          R35
      425 SETTABLEKS                       R35 R34 K45 ["SVPickerContainer"]
      427 GETUPVAL                         R36 0
      428 GETTABLEKS                       R36 R36 K4 ["Brick"]
      430 JUMPIFEQ                         R19 R36 ; [+33]
      432 GETUPVAL                         R35 5
      433 GETTABLEKS                       R35 R35 K39 ["createElement"]
      435 GETUPVAL                         R36 12
      436 DUPTABLE                         R37 K76 [{"sliderType", "value", "onValueChanged", "LayoutOrder", "testId"}]
      437 GETUPVAL                         R38 13
      438 GETTABLEKS                       R38 R38 K77 ["Hue"]
      440 SETTABLEKS                       R38 R37 K74 ["sliderType"]
      442 SETTABLEKS                       R11 R37 K68 ["value"]
      444 NEWCLOSURE                       R38 P8
      445 CAPTURE                          VAL R29
      446 CAPTURE                          VAL R13
      447 CAPTURE                          VAL R15
      448 SETTABLEKS                       R38 R37 K75 ["onValueChanged"]
      450 LOADN                            R38 3
      451 SETTABLEKS                       R38 R37 K53 ["LayoutOrder"]
      453 LOADK                            R39 K78 ["%*--hue-slider"]
      454 GETTABLEKS                       R41 R2 K54 ["testId"]
      456 NAMECALL                         R39 R39 K57 ["format"]
      458 CALL                             R39 2 1
      459 MOVE                             R38 R39
      460 SETTABLEKS                       R38 R37 K54 ["testId"]
      462 CALL                             R35 2 1
      463 JUMP                             ; [+1]
      464 LOADNIL                          R35
      465 SETTABLEKS                       R35 R34 K46 ["HueSlider"]
      467 JUMPIFNOT                        R27 ; [+37]
      468 GETUPVAL                         R35 5
      469 GETTABLEKS                       R35 R35 K39 ["createElement"]
      471 GETUPVAL                         R36 12
      472 DUPTABLE                         R37 K80 [{"sliderType", "value", "baseColor", "onValueChanged", "LayoutOrder", "testId"}]
      473 GETUPVAL                         R38 13
      474 GETTABLEKS                       R38 R38 K81 ["Alpha"]
      476 SETTABLEKS                       R38 R37 K74 ["sliderType"]
      478 SETTABLEKS                       R17 R37 K68 ["value"]
      480 GETUPVAL                         R39 4
      481 GETTABLEKS                       R39 R39 K11 ["FoundationColorPickerPartialHSV"]
      483 JUMPIFNOT                        R39 ; [+2]
      484 MOVE                             R38 R21
      485 JUMP                             ; [+1]
      486 MOVE                             R38 R6
      487 SETTABLEKS                       R38 R37 K79 ["baseColor"]
      489 SETTABLEKS                       R25 R37 K75 ["onValueChanged"]
      491 LOADN                            R38 4
      492 SETTABLEKS                       R38 R37 K53 ["LayoutOrder"]
      494 LOADK                            R39 K82 ["%*--alpha-slider"]
      495 GETTABLEKS                       R41 R2 K54 ["testId"]
      497 NAMECALL                         R39 R39 K57 ["format"]
      499 CALL                             R39 2 1
      500 MOVE                             R38 R39
      501 SETTABLEKS                       R38 R37 K54 ["testId"]
      503 CALL                             R35 2 1
      504 JUMP                             ; [+1]
      505 LOADNIL                          R35
      506 SETTABLEKS                       R35 R34 K47 ["AlphaSlider"]
      508 CALL                             R31 3 -1
      509 RETURN                           R31 -1

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
      128 DUPCLOSURE                       R17 K33 [PROTO_9]
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R7
      143 RETURN                           R17 1
