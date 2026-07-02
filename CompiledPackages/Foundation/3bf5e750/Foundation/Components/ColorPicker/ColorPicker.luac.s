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
      215 DUPTABLE                         R28 K26 [{["tag"] = "col gap-medium auto-xy align-x-center"}]
      216 CALL                             R26 2 1
      217 DUPTABLE                         R27 K32 [{"ColorInputs", "BrickPicker", "SVPickerContainer", "HueSlider", "AlphaSlider"}]
      218 GETUPVAL                         R28 4
      219 GETTABLEKS                       R28 R28 K23 ["createElement"]
      221 GETUPVAL                         R29 8
      222 DUPTABLE                         R30 K39 [{["color"], ["alpha"], ["onColorChanged"], ["onAlphaChanged"], ["mode"], ["onModeChanged"], [7], ["LayoutOrder"] = 1, ["testId"]}]
      223 SETTABLEKS                       R4 R30 K33 ["color"]
      225 SETTABLEKS                       R12 R30 K34 ["alpha"]
      227 SETTABLEKS                       R23 R30 K19 ["onColorChanged"]
      229 JUMPIFNOT                        R20 ; [+2]
      230 MOVE                             R31 R18
      231 JUMP                             ; [+1]
      232 LOADNIL                          R31
      233 SETTABLEKS                       R31 R30 K20 ["onAlphaChanged"]
      235 SETTABLEKS                       R14 R30 K35 ["mode"]
      237 SETTABLEKS                       R15 R30 K36 ["onModeChanged"]
      239 SETTABLEKS                       R1 R30 K0 ["availableModes"]
      241 LOADK                            R32 K40 ["%*--input"]
      242 GETTABLEKS                       R34 R2 K38 ["testId"]
      244 NAMECALL                         R32 R32 K41 ["format"]
      246 CALL                             R32 2 1
      247 MOVE                             R31 R32
      248 SETTABLEKS                       R31 R30 K38 ["testId"]
      250 CALL                             R28 2 1
      251 SETTABLEKS                       R28 R27 K27 ["ColorInputs"]
      253 GETUPVAL                         R29 0
      254 GETTABLEKS                       R29 R29 K4 ["Brick"]
      256 JUMPIFNOTEQ                      R14 R29 ; [+21]
      258 GETUPVAL                         R28 4
      259 GETTABLEKS                       R28 R28 K23 ["createElement"]
      261 GETUPVAL                         R29 9
      262 DUPTABLE                         R30 K45 [{["selectedColor"], ["onBrickColorChanged"], ["LayoutOrder"] = 2, ["testId"]}]
      263 SETTABLEKS                       R4 R30 K42 ["selectedColor"]
      265 SETTABLEKS                       R19 R30 K43 ["onBrickColorChanged"]
      267 LOADK                            R32 K46 ["%*--brick-picker"]
      268 GETTABLEKS                       R34 R2 K38 ["testId"]
      270 NAMECALL                         R32 R32 K41 ["format"]
      272 CALL                             R32 2 1
      273 MOVE                             R31 R32
      274 SETTABLEKS                       R31 R30 K38 ["testId"]
      276 CALL                             R28 2 1
      277 JUMP                             ; [+1]
      278 LOADNIL                          R28
      279 SETTABLEKS                       R28 R27 K28 ["BrickPicker"]
      281 GETUPVAL                         R29 0
      282 GETTABLEKS                       R29 R29 K4 ["Brick"]
      284 JUMPIFEQ                         R14 R29 ; [+37]
      286 GETUPVAL                         R28 4
      287 GETTABLEKS                       R28 R28 K23 ["createElement"]
      289 GETUPVAL                         R29 6
      290 DUPTABLE                         R30 K48 [{["tag"] = "auto-xy", ["LayoutOrder"] = 2}]
      291 DUPTABLE                         R31 K50 [{"SVPicker"}]
      292 GETUPVAL                         R32 4
      293 GETTABLEKS                       R32 R32 K23 ["createElement"]
      295 GETUPVAL                         R33 10
      296 DUPTABLE                         R34 K55 [{"hue", "saturation", "value", "onChanged", "testId"}]
      297 SETTABLEKS                       R6 R34 K51 ["hue"]
      299 SETTABLEKS                       R8 R34 K52 ["saturation"]
      301 SETTABLEKS                       R10 R34 K53 ["value"]
      303 NEWCLOSURE                       R35 P6
      304 CAPTURE                          VAL R22
      305 CAPTURE                          VAL R6
      306 SETTABLEKS                       R35 R34 K54 ["onChanged"]
      308 LOADK                            R36 K56 ["%*--sv-picker"]
      309 GETTABLEKS                       R38 R2 K38 ["testId"]
      311 NAMECALL                         R36 R36 K41 ["format"]
      313 CALL                             R36 2 1
      314 MOVE                             R35 R36
      315 SETTABLEKS                       R35 R34 K38 ["testId"]
      317 CALL                             R32 2 1
      318 SETTABLEKS                       R32 R31 K49 ["SVPicker"]
      320 CALL                             R28 3 1
      321 JUMP                             ; [+1]
      322 LOADNIL                          R28
      323 SETTABLEKS                       R28 R27 K29 ["SVPickerContainer"]
      325 GETUPVAL                         R29 0
      326 GETTABLEKS                       R29 R29 K4 ["Brick"]
      328 JUMPIFEQ                         R14 R29 ; [+30]
      330 GETUPVAL                         R28 4
      331 GETTABLEKS                       R28 R28 K23 ["createElement"]
      333 GETUPVAL                         R29 11
      334 DUPTABLE                         R30 K60 [{["sliderType"], ["value"], ["onValueChanged"], ["LayoutOrder"] = 3, ["testId"]}]
      335 GETUPVAL                         R31 12
      336 GETTABLEKS                       R31 R31 K61 ["Hue"]
      338 SETTABLEKS                       R31 R30 K57 ["sliderType"]
      340 SETTABLEKS                       R6 R30 K53 ["value"]
      342 NEWCLOSURE                       R31 P7
      343 CAPTURE                          VAL R22
      344 CAPTURE                          VAL R8
      345 CAPTURE                          VAL R10
      346 SETTABLEKS                       R31 R30 K58 ["onValueChanged"]
      348 LOADK                            R32 K62 ["%*--hue-slider"]
      349 GETTABLEKS                       R34 R2 K38 ["testId"]
      351 NAMECALL                         R32 R32 K41 ["format"]
      353 CALL                             R32 2 1
      354 MOVE                             R31 R32
      355 SETTABLEKS                       R31 R30 K38 ["testId"]
      357 CALL                             R28 2 1
      358 JUMP                             ; [+1]
      359 LOADNIL                          R28
      360 SETTABLEKS                       R28 R27 K30 ["HueSlider"]
      362 JUMPIFNOT                        R20 ; [+27]
      363 GETUPVAL                         R28 4
      364 GETTABLEKS                       R28 R28 K23 ["createElement"]
      366 GETUPVAL                         R29 11
      367 DUPTABLE                         R30 K65 [{["sliderType"], ["value"], ["baseColor"], ["onValueChanged"], ["LayoutOrder"] = 4, ["testId"]}]
      368 GETUPVAL                         R31 12
      369 GETTABLEKS                       R31 R31 K66 ["Alpha"]
      371 SETTABLEKS                       R31 R30 K57 ["sliderType"]
      373 SETTABLEKS                       R12 R30 K53 ["value"]
      375 SETTABLEKS                       R4 R30 K63 ["baseColor"]
      377 SETTABLEKS                       R18 R30 K58 ["onValueChanged"]
      379 LOADK                            R32 K67 ["%*--alpha-slider"]
      380 GETTABLEKS                       R34 R2 K38 ["testId"]
      382 NAMECALL                         R32 R32 K41 ["format"]
      384 CALL                             R32 2 1
      385 MOVE                             R31 R32
      386 SETTABLEKS                       R31 R30 K38 ["testId"]
      388 CALL                             R28 2 1
      389 JUMP                             ; [+1]
      390 LOADNIL                          R28
      391 SETTABLEKS                       R28 R27 K31 ["AlphaSlider"]
      393 CALL                             R24 3 -1
      394 RETURN                           R24 -1

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
      115 DUPCLOSURE                       R16 K33 [PROTO_8]
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R7
      129 RETURN                           R16 1
