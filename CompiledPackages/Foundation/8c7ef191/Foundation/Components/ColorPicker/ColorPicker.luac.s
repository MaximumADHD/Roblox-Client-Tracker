PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["onColorChanged"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Color"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R2 R0 K0 ["Color"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R3 R3 K0 ["getValue"]
        4 CALL                             R3 1 1
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R2 3 0
        8 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R4 R4 K5 ["useBinding"]
       28 GETTABLEKS                       R5 R2 K6 ["initialColor"]
       30 JUMPIF                           R5 ; [+10]
       31 GETTABLEKS                       R5 R3 K7 ["Color"]
       33 GETTABLEKS                       R5 R5 K8 ["Extended"]
       35 GETTABLEKS                       R5 R5 K9 ["Magenta"]
       37 GETTABLEKS                       R5 R5 K10 ["Magenta_700"]
       39 GETTABLEKS                       R5 R5 K11 ["Color3"]
       41 CALL                             R4 1 2
       42 GETUPVAL                         R6 4
       43 GETTABLEKS                       R6 R6 K5 ["useBinding"]
       45 LOADN                            R7 0
       46 CALL                             R6 1 2
       47 GETUPVAL                         R8 4
       48 GETTABLEKS                       R8 R8 K5 ["useBinding"]
       50 LOADN                            R9 1
       51 CALL                             R8 1 2
       52 GETUPVAL                         R10 4
       53 GETTABLEKS                       R10 R10 K5 ["useBinding"]
       55 LOADN                            R11 1
       56 CALL                             R10 1 2
       57 GETUPVAL                         R12 4
       58 GETTABLEKS                       R12 R12 K5 ["useBinding"]
       60 GETTABLEKS                       R14 R2 K13 ["initialAlpha"]
       62 ORK                              R13 R14 K12 [1]
       63 CALL                             R12 1 2
       64 GETUPVAL                         R14 4
       65 GETTABLEKS                       R14 R14 K14 ["useState"]
       67 GETTABLEKS                       R15 R2 K15 ["initialMode"]
       69 JUMPIF                           R15 ; [+3]
       70 GETUPVAL                         R15 0
       71 GETTABLEKS                       R15 R15 K1 ["RGB"]
       73 CALL                             R14 1 2
       74 GETUPVAL                         R16 4
       75 GETTABLEKS                       R16 R16 K16 ["useRef"]
       77 LOADB                            R17 0
       78 CALL                             R16 1 1
       79 GETUPVAL                         R17 4
       80 GETTABLEKS                       R17 R17 K17 ["useEffect"]
       82 NEWCLOSURE                       R18 P0
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R15
       86 NEWTABLE                         R19 0 1
       88 GETTABLEKS                       R20 R2 K15 ["initialMode"]
       90 SETLIST                          R19 R20 1 [1]
       92 CALL                             R17 2 0
       93 GETUPVAL                         R17 4
       94 GETTABLEKS                       R17 R17 K18 ["useCallback"]
       96 NEWCLOSURE                       R18 P1
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R2
       99 NEWTABLE                         R19 0 1
      101 GETTABLEKS                       R20 R2 K19 ["onColorChanged"]
      103 SETLIST                          R19 R20 1 [1]
      105 CALL                             R17 2 1
      106 GETUPVAL                         R18 4
      107 GETTABLEKS                       R18 R18 K18 ["useCallback"]
      109 NEWCLOSURE                       R19 P2
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R2
      112 NEWTABLE                         R20 0 1
      114 GETTABLEKS                       R21 R2 K20 ["onAlphaChanged"]
      116 SETLIST                          R20 R21 1 [1]
      118 CALL                             R18 2 1
      119 GETUPVAL                         R19 4
      120 GETTABLEKS                       R19 R19 K18 ["useCallback"]
      122 NEWCLOSURE                       R20 P3
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R17
      125 NEWTABLE                         R21 0 1
      127 MOVE                             R22 R17
      128 SETLIST                          R21 R22 1 [1]
      130 CALL                             R19 2 1
      131 LOADB                            R20 0
      132 GETTABLEKS                       R21 R2 K20 ["onAlphaChanged"]
      134 JUMPIFEQKNIL                     R21 ; [+8]
      136 GETUPVAL                         R21 0
      137 GETTABLEKS                       R21 R21 K4 ["Brick"]
      139 JUMPIFNOTEQ                      R14 R21 ; [+2]
      141 LOADB                            R20 0 +1
      142 LOADB                            R20 1
      143 GETUPVAL                         R21 4
      144 GETTABLEKS                       R21 R21 K18 ["useCallback"]
      146 NEWCLOSURE                       R22 P4
      147 CAPTURE                          VAL R17
      148 NEWTABLE                         R23 0 1
      150 MOVE                             R24 R17
      151 SETLIST                          R23 R24 1 [1]
      153 CALL                             R21 2 1
      154 GETUPVAL                         R22 4
      155 GETTABLEKS                       R22 R22 K18 ["useCallback"]
      157 GETUPVAL                         R23 5
      158 GETTABLEKS                       R23 R23 K21 ["createHSVUpdateHandler"]
      160 MOVE                             R24 R7
      161 MOVE                             R25 R9
      162 MOVE                             R26 R11
      163 MOVE                             R27 R21
      164 MOVE                             R28 R16
      165 CALL                             R23 5 1
      166 NEWTABLE                         R24 0 5
      168 MOVE                             R25 R21
      169 MOVE                             R26 R7
      170 MOVE                             R27 R9
      171 MOVE                             R28 R11
      172 MOVE                             R29 R5
      173 SETLIST                          R24 R25 5 [1]
      175 CALL                             R22 2 1
      176 GETUPVAL                         R23 4
      177 GETTABLEKS                       R23 R23 K18 ["useCallback"]
      179 GETUPVAL                         R24 5
      180 GETTABLEKS                       R24 R24 K22 ["createColorInputChangeHandler"]
      182 MOVE                             R25 R21
      183 MOVE                             R26 R16
      184 MOVE                             R27 R7
      185 MOVE                             R28 R9
      186 MOVE                             R29 R11
      187 CALL                             R24 5 1
      188 NEWTABLE                         R25 0 5
      190 MOVE                             R26 R21
      191 MOVE                             R27 R16
      192 MOVE                             R28 R7
      193 MOVE                             R29 R9
      194 MOVE                             R30 R11
      195 SETLIST                          R25 R26 5 [1]
      197 CALL                             R23 2 1
      198 GETUPVAL                         R24 4
      199 GETTABLEKS                       R24 R24 K17 ["useEffect"]
      201 NEWCLOSURE                       R25 P5
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R7
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R11
      206 NEWTABLE                         R26 0 0
      208 CALL                             R24 2 0
      209 GETUPVAL                         R24 4
      210 GETTABLEKS                       R24 R24 K23 ["createElement"]
      212 GETUPVAL                         R25 6
      213 GETUPVAL                         R26 7
      214 MOVE                             R27 R2
      215 DUPTABLE                         R28 K25 [{"tag"}]
      216 LOADK                            R29 K26 ["col gap-medium auto-xy align-x-center"]
      217 SETTABLEKS                       R29 R28 K24 ["tag"]
      219 CALL                             R26 2 1
      220 DUPTABLE                         R27 K32 [{"ColorInputs", "BrickPicker", "SVPickerContainer", "HueSlider", "AlphaSlider"}]
      221 GETUPVAL                         R28 4
      222 GETTABLEKS                       R28 R28 K23 ["createElement"]
      224 GETUPVAL                         R29 8
      225 DUPTABLE                         R30 K39 [{"color", "alpha", "onColorChanged", "onAlphaChanged", "mode", "onModeChanged", "availableModes", "LayoutOrder", "testId"}]
      226 SETTABLEKS                       R4 R30 K33 ["color"]
      228 SETTABLEKS                       R12 R30 K34 ["alpha"]
      230 SETTABLEKS                       R23 R30 K19 ["onColorChanged"]
      232 JUMPIFNOT                        R20 ; [+2]
      233 MOVE                             R31 R18
      234 JUMP                             ; [+1]
      235 LOADNIL                          R31
      236 SETTABLEKS                       R31 R30 K20 ["onAlphaChanged"]
      238 SETTABLEKS                       R14 R30 K35 ["mode"]
      240 SETTABLEKS                       R15 R30 K36 ["onModeChanged"]
      242 SETTABLEKS                       R1 R30 K0 ["availableModes"]
      244 LOADN                            R31 1
      245 SETTABLEKS                       R31 R30 K37 ["LayoutOrder"]
      247 LOADK                            R32 K40 ["%*--input"]
      248 GETTABLEKS                       R34 R2 K38 ["testId"]
      250 NAMECALL                         R32 R32 K41 ["format"]
      252 CALL                             R32 2 1
      253 MOVE                             R31 R32
      254 SETTABLEKS                       R31 R30 K38 ["testId"]
      256 CALL                             R28 2 1
      257 SETTABLEKS                       R28 R27 K27 ["ColorInputs"]
      259 GETUPVAL                         R29 0
      260 GETTABLEKS                       R29 R29 K4 ["Brick"]
      262 JUMPIFNOTEQ                      R14 R29 ; [+24]
      264 GETUPVAL                         R28 4
      265 GETTABLEKS                       R28 R28 K23 ["createElement"]
      267 GETUPVAL                         R29 9
      268 DUPTABLE                         R30 K44 [{"selectedColor", "onBrickColorChanged", "LayoutOrder", "testId"}]
      269 SETTABLEKS                       R4 R30 K42 ["selectedColor"]
      271 SETTABLEKS                       R19 R30 K43 ["onBrickColorChanged"]
      273 LOADN                            R31 2
      274 SETTABLEKS                       R31 R30 K37 ["LayoutOrder"]
      276 LOADK                            R32 K45 ["%*--brick-picker"]
      277 GETTABLEKS                       R34 R2 K38 ["testId"]
      279 NAMECALL                         R32 R32 K41 ["format"]
      281 CALL                             R32 2 1
      282 MOVE                             R31 R32
      283 SETTABLEKS                       R31 R30 K38 ["testId"]
      285 CALL                             R28 2 1
      286 JUMP                             ; [+1]
      287 LOADNIL                          R28
      288 SETTABLEKS                       R28 R27 K28 ["BrickPicker"]
      290 GETUPVAL                         R29 0
      291 GETTABLEKS                       R29 R29 K4 ["Brick"]
      293 JUMPIFEQ                         R14 R29 ; [+43]
      295 GETUPVAL                         R28 4
      296 GETTABLEKS                       R28 R28 K23 ["createElement"]
      298 GETUPVAL                         R29 6
      299 DUPTABLE                         R30 K46 [{"tag", "LayoutOrder"}]
      300 LOADK                            R31 K47 ["auto-xy"]
      301 SETTABLEKS                       R31 R30 K24 ["tag"]
      303 LOADN                            R31 2
      304 SETTABLEKS                       R31 R30 K37 ["LayoutOrder"]
      306 DUPTABLE                         R31 K49 [{"SVPicker"}]
      307 GETUPVAL                         R32 4
      308 GETTABLEKS                       R32 R32 K23 ["createElement"]
      310 GETUPVAL                         R33 10
      311 DUPTABLE                         R34 K54 [{"hue", "saturation", "value", "onChanged", "testId"}]
      312 SETTABLEKS                       R6 R34 K50 ["hue"]
      314 SETTABLEKS                       R8 R34 K51 ["saturation"]
      316 SETTABLEKS                       R10 R34 K52 ["value"]
      318 NEWCLOSURE                       R35 P6
      319 CAPTURE                          VAL R22
      320 CAPTURE                          VAL R6
      321 SETTABLEKS                       R35 R34 K53 ["onChanged"]
      323 LOADK                            R36 K55 ["%*--sv-picker"]
      324 GETTABLEKS                       R38 R2 K38 ["testId"]
      326 NAMECALL                         R36 R36 K41 ["format"]
      328 CALL                             R36 2 1
      329 MOVE                             R35 R36
      330 SETTABLEKS                       R35 R34 K38 ["testId"]
      332 CALL                             R32 2 1
      333 SETTABLEKS                       R32 R31 K48 ["SVPicker"]
      335 CALL                             R28 3 1
      336 JUMP                             ; [+1]
      337 LOADNIL                          R28
      338 SETTABLEKS                       R28 R27 K29 ["SVPickerContainer"]
      340 GETUPVAL                         R29 0
      341 GETTABLEKS                       R29 R29 K4 ["Brick"]
      343 JUMPIFEQ                         R14 R29 ; [+33]
      345 GETUPVAL                         R28 4
      346 GETTABLEKS                       R28 R28 K23 ["createElement"]
      348 GETUPVAL                         R29 11
      349 DUPTABLE                         R30 K58 [{"sliderType", "value", "onValueChanged", "LayoutOrder", "testId"}]
      350 GETUPVAL                         R31 12
      351 GETTABLEKS                       R31 R31 K59 ["Hue"]
      353 SETTABLEKS                       R31 R30 K56 ["sliderType"]
      355 SETTABLEKS                       R6 R30 K52 ["value"]
      357 NEWCLOSURE                       R31 P7
      358 CAPTURE                          VAL R22
      359 CAPTURE                          VAL R8
      360 CAPTURE                          VAL R10
      361 SETTABLEKS                       R31 R30 K57 ["onValueChanged"]
      363 LOADN                            R31 3
      364 SETTABLEKS                       R31 R30 K37 ["LayoutOrder"]
      366 LOADK                            R32 K60 ["%*--hue-slider"]
      367 GETTABLEKS                       R34 R2 K38 ["testId"]
      369 NAMECALL                         R32 R32 K41 ["format"]
      371 CALL                             R32 2 1
      372 MOVE                             R31 R32
      373 SETTABLEKS                       R31 R30 K38 ["testId"]
      375 CALL                             R28 2 1
      376 JUMP                             ; [+1]
      377 LOADNIL                          R28
      378 SETTABLEKS                       R28 R27 K30 ["HueSlider"]
      380 JUMPIFNOT                        R20 ; [+30]
      381 GETUPVAL                         R28 4
      382 GETTABLEKS                       R28 R28 K23 ["createElement"]
      384 GETUPVAL                         R29 11
      385 DUPTABLE                         R30 K62 [{"sliderType", "value", "baseColor", "onValueChanged", "LayoutOrder", "testId"}]
      386 GETUPVAL                         R31 12
      387 GETTABLEKS                       R31 R31 K63 ["Alpha"]
      389 SETTABLEKS                       R31 R30 K56 ["sliderType"]
      391 SETTABLEKS                       R12 R30 K52 ["value"]
      393 SETTABLEKS                       R4 R30 K61 ["baseColor"]
      395 SETTABLEKS                       R18 R30 K57 ["onValueChanged"]
      397 LOADN                            R31 4
      398 SETTABLEKS                       R31 R30 K37 ["LayoutOrder"]
      400 LOADK                            R32 K64 ["%*--alpha-slider"]
      401 GETTABLEKS                       R34 R2 K38 ["testId"]
      403 NAMECALL                         R32 R32 K41 ["format"]
      405 CALL                             R32 2 1
      406 MOVE                             R31 R32
      407 SETTABLEKS                       R31 R30 K38 ["testId"]
      409 CALL                             R28 2 1
      410 JUMP                             ; [+1]
      411 LOADNIL                          R28
      412 SETTABLEKS                       R28 R27 K31 ["AlphaSlider"]
      414 CALL                             R24 3 -1
      415 RETURN                           R24 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["ColorPicker"]
       27 GETTABLEKS                       R5 R5 K11 ["SVPicker"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Components"]
       34 GETTABLEKS                       R6 R6 K10 ["ColorPicker"]
       36 GETTABLEKS                       R6 R6 K12 ["ColorSlider"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K8 ["Components"]
       43 GETTABLEKS                       R7 R7 K10 ["ColorPicker"]
       45 GETTABLEKS                       R7 R7 K13 ["ColorInputs"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K8 ["Components"]
       52 GETTABLEKS                       R8 R8 K10 ["ColorPicker"]
       54 GETTABLEKS                       R8 R8 K14 ["BrickColorPicker"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R0 K15 ["Enums"]
       61 GETTABLEKS                       R9 R9 K16 ["ColorSliderType"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R10 R0 K15 ["Enums"]
       68 GETTABLEKS                       R10 R10 K17 ["ColorInputMode"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETTABLEKS                       R11 R0 K18 ["Utility"]
       75 GETTABLEKS                       R11 R11 K19 ["withCommonProps"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K6 [require]
       80 GETTABLEKS                       R12 R0 K18 ["Utility"]
       82 GETTABLEKS                       R12 R12 K20 ["withDefaults"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K6 [require]
       87 GETTABLEKS                       R13 R0 K21 ["Providers"]
       89 GETTABLEKS                       R13 R13 K22 ["Style"]
       91 GETTABLEKS                       R13 R13 K23 ["useTokens"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K6 [require]
       96 GETTABLEKS                       R14 R0 K8 ["Components"]
       98 GETTABLEKS                       R14 R14 K10 ["ColorPicker"]
      100 GETTABLEKS                       R14 R14 K24 ["colorUtils"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K6 [require]
      105 GETTABLEKS                       R15 R0 K8 ["Components"]
      107 GETTABLEKS                       R15 R15 K25 ["Types"]
      109 CALL                             R14 1 1
      110 DUPTABLE                         R15 K29 [{"initialAlpha", "initialMode", "testId"}]
      111 LOADN                            R16 1
      112 SETTABLEKS                       R16 R15 K26 ["initialAlpha"]
      114 GETTABLEKS                       R16 R9 K30 ["RGB"]
      116 SETTABLEKS                       R16 R15 K27 ["initialMode"]
      118 LOADK                            R16 K31 ["--foundation-color-picker"]
      119 SETTABLEKS                       R16 R15 K28 ["testId"]
      121 DUPCLOSURE                       R16 K32 [PROTO_8]
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R8
      135 RETURN                           R16 1
