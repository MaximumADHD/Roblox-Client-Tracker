PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationColorPickerPartialHSV"]
        3 JUMPIFNOT                        R1 ; [+19]
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [type]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+13]
       11 GETTABLEKS                       R2 R0 K5 ["H"]
       13 DIVK                             R1 R2 K4 [360]
       14 GETTABLEKS                       R4 R0 K7 ["S"]
       16 ORK                              R3 R4 K6 [100]
       17 DIVK                             R2 R3 K6 [100]
       18 GETTABLEKS                       R5 R0 K8 ["V"]
       20 ORK                              R4 R5 K6 [100]
       21 DIVK                             R3 R4 K6 [100]
       22 RETURN                           R1 3
       23 NAMECALL                         R1 R0 K9 ["ToHSV"]
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1

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
       55 MOVE                             R11 R5
       56 GETUPVAL                         R12 4
       57 GETTABLEKS                       R12 R12 K11 ["FoundationColorPickerPartialHSV"]
       59 JUMPIFNOT                        R12 ; [+19]
       60 FASTCALL1                        TYPE R11 ; [+3]
       61 MOVE                             R13 R11
       62 GETIMPORT                        R12 K16 [type]
       64 CALL                             R12 1 1
       65 JUMPIFNOTEQKS                    R12 K17 ["table"] ; [+13]
       67 GETTABLEKS                       R12 R11 K19 ["H"]
       69 DIVK                             R8 R12 K18 [360]
       70 GETTABLEKS                       R13 R11 K21 ["S"]
       72 ORK                              R12 R13 K20 [100]
       73 DIVK                             R9 R12 K20 [100]
       74 GETTABLEKS                       R13 R11 K22 ["V"]
       76 ORK                              R12 R13 K20 [100]
       77 DIVK                             R10 R12 K20 [100]
       78 JUMP                             ; [+6]
       79 NAMECALL                         R12 R11 K23 ["ToHSV"]
       81 CALL                             R12 1 3
       82 MOVE                             R8 R12
       83 MOVE                             R9 R13
       84 MOVE                             R10 R14
       85 GETUPVAL                         R11 5
       86 GETTABLEKS                       R11 R11 K14 ["useBinding"]
       88 MOVE                             R12 R8
       89 CALL                             R11 1 2
       90 GETUPVAL                         R13 5
       91 GETTABLEKS                       R13 R13 K14 ["useBinding"]
       93 MOVE                             R14 R9
       94 CALL                             R13 1 2
       95 GETUPVAL                         R15 5
       96 GETTABLEKS                       R15 R15 K14 ["useBinding"]
       98 MOVE                             R16 R10
       99 CALL                             R15 1 2
      100 GETUPVAL                         R17 5
      101 GETTABLEKS                       R17 R17 K14 ["useBinding"]
      103 GETTABLEKS                       R19 R2 K25 ["initialAlpha"]
      105 ORK                              R18 R19 K24 [1]
      106 CALL                             R17 1 2
      107 GETUPVAL                         R19 5
      108 GETTABLEKS                       R19 R19 K26 ["useState"]
      110 GETTABLEKS                       R20 R2 K27 ["initialMode"]
      112 JUMPIF                           R20 ; [+3]
      113 GETUPVAL                         R20 0
      114 GETTABLEKS                       R20 R20 K1 ["RGB"]
      116 CALL                             R19 1 2
      117 GETUPVAL                         R23 6
      118 GETTABLEKS                       R23 R23 K28 ["toColor3"]
      120 NAMECALL                         R21 R6 K29 ["map"]
      122 CALL                             R21 2 1
      123 GETUPVAL                         R23 4
      124 GETTABLEKS                       R23 R23 K11 ["FoundationColorPickerPartialHSV"]
      126 JUMPIFNOT                        R23 ; [+6]
      127 DUPCLOSURE                       R24 K30 [PROTO_1]
      128 CAPTURE                          UPVAL U6
      129 NAMECALL                         R22 R6 K29 ["map"]
      131 CALL                             R22 2 1
      132 JUMP                             ; [+5]
      133 GETUPVAL                         R22 5
      134 GETTABLEKS                       R22 R22 K31 ["createBinding"]
      136 LOADB                            R23 1
      137 CALL                             R22 1 1
      138 GETUPVAL                         R23 5
      139 GETTABLEKS                       R23 R23 K32 ["useRef"]
      141 LOADB                            R24 0
      142 CALL                             R23 1 1
      143 GETUPVAL                         R24 5
      144 GETTABLEKS                       R24 R24 K33 ["useEffect"]
      146 NEWCLOSURE                       R25 P1
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R20
      150 NEWTABLE                         R26 0 1
      152 GETTABLEKS                       R27 R2 K27 ["initialMode"]
      154 SETLIST                          R26 R27 1 [1]
      156 CALL                             R24 2 0
      157 GETUPVAL                         R24 5
      158 GETTABLEKS                       R24 R24 K34 ["useCallback"]
      160 NEWCLOSURE                       R25 P2
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R2
      163 NEWTABLE                         R26 0 1
      165 GETTABLEKS                       R27 R2 K35 ["onColorChanged"]
      167 SETLIST                          R26 R27 1 [1]
      169 CALL                             R24 2 1
      170 GETUPVAL                         R25 5
      171 GETTABLEKS                       R25 R25 K34 ["useCallback"]
      173 NEWCLOSURE                       R26 P3
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R2
      176 NEWTABLE                         R27 0 1
      178 GETTABLEKS                       R28 R2 K36 ["onAlphaChanged"]
      180 SETLIST                          R27 R28 1 [1]
      182 CALL                             R25 2 1
      183 GETUPVAL                         R26 5
      184 GETTABLEKS                       R26 R26 K34 ["useCallback"]
      186 NEWCLOSURE                       R27 P4
      187 CAPTURE                          UPVAL U4
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R24
      190 NEWTABLE                         R28 0 1
      192 MOVE                             R29 R24
      193 SETLIST                          R28 R29 1 [1]
      195 CALL                             R26 2 1
      196 GETUPVAL                         R28 4
      197 GETTABLEKS                       R28 R28 K37 ["FoundationColorPickerDesignUpdate"]
      199 JUMPIFNOT                        R28 ; [+7]
      200 GETTABLEKS                       R28 R2 K36 ["onAlphaChanged"]
      202 JUMPIFNOTEQKNIL                  R28 ; [+2]
      204 LOADB                            R27 0 +1
      205 LOADB                            R27 1
      206 JUMP                             ; [+12]
      207 LOADB                            R27 0
      208 GETTABLEKS                       R28 R2 K36 ["onAlphaChanged"]
      210 JUMPIFEQKNIL                     R28 ; [+8]
      212 GETUPVAL                         R28 0
      213 GETTABLEKS                       R28 R28 K4 ["Brick"]
      215 JUMPIFNOTEQ                      R19 R28 ; [+2]
      217 LOADB                            R27 0 +1
      218 LOADB                            R27 1
      219 GETUPVAL                         R28 5
      220 GETTABLEKS                       R28 R28 K34 ["useCallback"]
      222 NEWCLOSURE                       R29 P5
      223 CAPTURE                          VAL R24
      224 NEWTABLE                         R30 0 1
      226 MOVE                             R31 R24
      227 SETLIST                          R30 R31 1 [1]
      229 CALL                             R28 2 1
      230 GETUPVAL                         R29 5
      231 GETTABLEKS                       R29 R29 K34 ["useCallback"]
      233 GETUPVAL                         R30 6
      234 GETTABLEKS                       R30 R30 K38 ["createHSVUpdateHandler"]
      236 MOVE                             R31 R12
      237 MOVE                             R32 R14
      238 MOVE                             R33 R16
      239 MOVE                             R34 R28
      240 MOVE                             R35 R23
      241 CALL                             R30 5 1
      242 NEWTABLE                         R31 0 5
      244 MOVE                             R32 R28
      245 MOVE                             R33 R12
      246 MOVE                             R34 R14
      247 MOVE                             R35 R16
      248 MOVE                             R36 R7
      249 SETLIST                          R31 R32 5 [1]
      251 CALL                             R29 2 1
      252 GETUPVAL                         R30 5
      253 GETTABLEKS                       R30 R30 K34 ["useCallback"]
      255 GETUPVAL                         R31 6
      256 GETTABLEKS                       R31 R31 K39 ["createColorInputChangeHandler"]
      258 MOVE                             R32 R28
      259 MOVE                             R33 R23
      260 MOVE                             R34 R12
      261 MOVE                             R35 R14
      262 MOVE                             R36 R16
      263 CALL                             R31 5 1
      264 NEWTABLE                         R32 0 5
      266 MOVE                             R33 R28
      267 MOVE                             R34 R23
      268 MOVE                             R35 R12
      269 MOVE                             R36 R14
      270 MOVE                             R37 R16
      271 SETLIST                          R32 R33 5 [1]
      273 CALL                             R30 2 1
      274 GETUPVAL                         R31 5
      275 GETTABLEKS                       R31 R31 K33 ["useEffect"]
      277 NEWCLOSURE                       R32 P6
      278 CAPTURE                          UPVAL U4
      279 CAPTURE                          VAL R21
      280 CAPTURE                          VAL R6
      281 CAPTURE                          VAL R12
      282 CAPTURE                          VAL R14
      283 CAPTURE                          VAL R16
      284 NEWTABLE                         R33 0 0
      286 CALL                             R31 2 0
      287 GETUPVAL                         R31 5
      288 GETTABLEKS                       R31 R31 K40 ["createElement"]
      290 GETUPVAL                         R32 7
      291 GETUPVAL                         R33 8
      292 MOVE                             R34 R2
      293 GETUPVAL                         R36 4
      294 GETTABLEKS                       R36 R36 K37 ["FoundationColorPickerDesignUpdate"]
      296 JUMPIFNOT                        R36 ; [+5]
      297 DUPTABLE                         R35 K42 [{"tag"}]
      298 LOADK                            R36 K43 ["col gap-small auto-y padding-small size-full-0"]
      299 SETTABLEKS                       R36 R35 K41 ["tag"]
      301 JUMP                             ; [+4]
      302 DUPTABLE                         R35 K42 [{"tag"}]
      303 LOADK                            R36 K44 ["col gap-medium auto-xy align-x-center"]
      304 SETTABLEKS                       R36 R35 K41 ["tag"]
      306 CALL                             R33 2 1
      307 DUPTABLE                         R34 K50 [{"ColorInputs", "BrickPicker", "SVPickerContainer", "HueSlider", "AlphaSlider"}]
      308 GETUPVAL                         R35 5
      309 GETTABLEKS                       R35 R35 K40 ["createElement"]
      311 GETUPVAL                         R36 9
      312 DUPTABLE                         R37 K57 [{"color", "alpha", "onColorChanged", "onAlphaChanged", "mode", "onModeChanged", "availableModes", "LayoutOrder", "testId"}]
      313 SETTABLEKS                       R6 R37 K51 ["color"]
      315 SETTABLEKS                       R17 R37 K52 ["alpha"]
      317 SETTABLEKS                       R30 R37 K35 ["onColorChanged"]
      319 JUMPIFNOT                        R27 ; [+2]
      320 MOVE                             R38 R25
      321 JUMP                             ; [+1]
      322 LOADNIL                          R38
      323 SETTABLEKS                       R38 R37 K36 ["onAlphaChanged"]
      325 SETTABLEKS                       R19 R37 K53 ["mode"]
      327 SETTABLEKS                       R20 R37 K54 ["onModeChanged"]
      329 SETTABLEKS                       R1 R37 K0 ["availableModes"]
      331 LOADN                            R38 1
      332 SETTABLEKS                       R38 R37 K55 ["LayoutOrder"]
      334 LOADK                            R39 K58 ["%*--input"]
      335 GETTABLEKS                       R41 R2 K56 ["testId"]
      337 NAMECALL                         R39 R39 K59 ["format"]
      339 CALL                             R39 2 1
      340 MOVE                             R38 R39
      341 SETTABLEKS                       R38 R37 K56 ["testId"]
      343 CALL                             R35 2 1
      344 SETTABLEKS                       R35 R34 K45 ["ColorInputs"]
      346 GETUPVAL                         R36 0
      347 GETTABLEKS                       R36 R36 K4 ["Brick"]
      349 JUMPIFNOTEQ                      R19 R36 ; [+31]
      351 GETUPVAL                         R35 5
      352 GETTABLEKS                       R35 R35 K40 ["createElement"]
      354 GETUPVAL                         R36 10
      355 DUPTABLE                         R37 K62 [{"selectedColor", "onBrickColorChanged", "LayoutOrder", "testId"}]
      356 GETUPVAL                         R39 4
      357 GETTABLEKS                       R39 R39 K11 ["FoundationColorPickerPartialHSV"]
      359 JUMPIFNOT                        R39 ; [+2]
      360 MOVE                             R38 R21
      361 JUMP                             ; [+1]
      362 MOVE                             R38 R6
      363 SETTABLEKS                       R38 R37 K60 ["selectedColor"]
      365 SETTABLEKS                       R26 R37 K61 ["onBrickColorChanged"]
      367 LOADN                            R38 2
      368 SETTABLEKS                       R38 R37 K55 ["LayoutOrder"]
      370 LOADK                            R39 K63 ["%*--brick-picker"]
      371 GETTABLEKS                       R41 R2 K56 ["testId"]
      373 NAMECALL                         R39 R39 K59 ["format"]
      375 CALL                             R39 2 1
      376 MOVE                             R38 R39
      377 SETTABLEKS                       R38 R37 K56 ["testId"]
      379 CALL                             R35 2 1
      380 JUMP                             ; [+1]
      381 LOADNIL                          R35
      382 SETTABLEKS                       R35 R34 K46 ["BrickPicker"]
      384 GETUPVAL                         R36 0
      385 GETTABLEKS                       R36 R36 K4 ["Brick"]
      387 JUMPIFEQ                         R19 R36 ; [+80]
      389 GETUPVAL                         R35 5
      390 GETTABLEKS                       R35 R35 K40 ["createElement"]
      392 GETUPVAL                         R36 7
      393 GETUPVAL                         R38 4
      394 GETTABLEKS                       R38 R38 K37 ["FoundationColorPickerDesignUpdate"]
      396 JUMPIFNOT                        R38 ; [+14]
      397 DUPTABLE                         R37 K65 [{"Size", "LayoutOrder"}]
      398 GETIMPORT                        R38 K68 [UDim2.new]
      400 LOADN                            R39 1
      401 LOADN                            R40 0
      402 LOADN                            R41 0
      403 LOADN                            R42 156
      404 CALL                             R38 4 1
      405 SETTABLEKS                       R38 R37 K64 ["Size"]
      407 LOADN                            R38 2
      408 SETTABLEKS                       R38 R37 K55 ["LayoutOrder"]
      410 JUMP                             ; [+7]
      411 DUPTABLE                         R37 K69 [{"tag", "LayoutOrder"}]
      412 LOADK                            R38 K70 ["auto-xy"]
      413 SETTABLEKS                       R38 R37 K41 ["tag"]
      415 LOADN                            R38 2
      416 SETTABLEKS                       R38 R37 K55 ["LayoutOrder"]
      418 DUPTABLE                         R38 K72 [{"SVPicker"}]
      419 GETUPVAL                         R39 5
      420 GETTABLEKS                       R39 R39 K40 ["createElement"]
      422 GETUPVAL                         R40 11
      423 DUPTABLE                         R41 K80 [{"hue", "saturation", "value", "onChanged", "onDragStarted", "onDragEnded", "showSelectionKnob", "testId"}]
      424 SETTABLEKS                       R11 R41 K73 ["hue"]
      426 SETTABLEKS                       R13 R41 K74 ["saturation"]
      428 SETTABLEKS                       R15 R41 K75 ["value"]
      430 NEWCLOSURE                       R42 P7
      431 CAPTURE                          VAL R29
      432 CAPTURE                          VAL R11
      433 SETTABLEKS                       R42 R41 K76 ["onChanged"]
      435 GETTABLEKS                       R42 R2 K77 ["onDragStarted"]
      437 SETTABLEKS                       R42 R41 K77 ["onDragStarted"]
      439 GETTABLEKS                       R42 R2 K78 ["onDragEnded"]
      441 SETTABLEKS                       R42 R41 K78 ["onDragEnded"]
      443 GETUPVAL                         R43 4
      444 GETTABLEKS                       R43 R43 K11 ["FoundationColorPickerPartialHSV"]
      446 JUMPIFNOT                        R43 ; [+4]
      447 NAMECALL                         R42 R22 K81 ["getValue"]
      449 CALL                             R42 1 1
      450 JUMP                             ; [+1]
      451 LOADB                            R42 1
      452 SETTABLEKS                       R42 R41 K79 ["showSelectionKnob"]
      454 LOADK                            R43 K82 ["%*--sv-picker"]
      455 GETTABLEKS                       R45 R2 K56 ["testId"]
      457 NAMECALL                         R43 R43 K59 ["format"]
      459 CALL                             R43 2 1
      460 MOVE                             R42 R43
      461 SETTABLEKS                       R42 R41 K56 ["testId"]
      463 CALL                             R39 2 1
      464 SETTABLEKS                       R39 R38 K71 ["SVPicker"]
      466 CALL                             R35 3 1
      467 JUMP                             ; [+1]
      468 LOADNIL                          R35
      469 SETTABLEKS                       R35 R34 K47 ["SVPickerContainer"]
      471 GETUPVAL                         R36 0
      472 GETTABLEKS                       R36 R36 K4 ["Brick"]
      474 JUMPIFEQ                         R19 R36 ; [+41]
      476 GETUPVAL                         R35 5
      477 GETTABLEKS                       R35 R35 K40 ["createElement"]
      479 GETUPVAL                         R36 12
      480 DUPTABLE                         R37 K85 [{"sliderType", "value", "onValueChanged", "onDragStarted", "onDragEnded", "LayoutOrder", "testId"}]
      481 GETUPVAL                         R38 13
      482 GETTABLEKS                       R38 R38 K86 ["Hue"]
      484 SETTABLEKS                       R38 R37 K83 ["sliderType"]
      486 SETTABLEKS                       R11 R37 K75 ["value"]
      488 NEWCLOSURE                       R38 P8
      489 CAPTURE                          VAL R29
      490 CAPTURE                          VAL R13
      491 CAPTURE                          VAL R15
      492 SETTABLEKS                       R38 R37 K84 ["onValueChanged"]
      494 GETTABLEKS                       R38 R2 K77 ["onDragStarted"]
      496 SETTABLEKS                       R38 R37 K77 ["onDragStarted"]
      498 GETTABLEKS                       R38 R2 K78 ["onDragEnded"]
      500 SETTABLEKS                       R38 R37 K78 ["onDragEnded"]
      502 LOADN                            R38 3
      503 SETTABLEKS                       R38 R37 K55 ["LayoutOrder"]
      505 LOADK                            R39 K87 ["%*--hue-slider"]
      506 GETTABLEKS                       R41 R2 K56 ["testId"]
      508 NAMECALL                         R39 R39 K59 ["format"]
      510 CALL                             R39 2 1
      511 MOVE                             R38 R39
      512 SETTABLEKS                       R38 R37 K56 ["testId"]
      514 CALL                             R35 2 1
      515 JUMP                             ; [+1]
      516 LOADNIL                          R35
      517 SETTABLEKS                       R35 R34 K48 ["HueSlider"]
      519 JUMPIFNOT                        R27 ; [+45]
      520 GETUPVAL                         R35 5
      521 GETTABLEKS                       R35 R35 K40 ["createElement"]
      523 GETUPVAL                         R36 12
      524 DUPTABLE                         R37 K89 [{"sliderType", "value", "baseColor", "onValueChanged", "onDragStarted", "onDragEnded", "LayoutOrder", "testId"}]
      525 GETUPVAL                         R38 13
      526 GETTABLEKS                       R38 R38 K90 ["Alpha"]
      528 SETTABLEKS                       R38 R37 K83 ["sliderType"]
      530 SETTABLEKS                       R17 R37 K75 ["value"]
      532 GETUPVAL                         R39 4
      533 GETTABLEKS                       R39 R39 K11 ["FoundationColorPickerPartialHSV"]
      535 JUMPIFNOT                        R39 ; [+2]
      536 MOVE                             R38 R21
      537 JUMP                             ; [+1]
      538 MOVE                             R38 R6
      539 SETTABLEKS                       R38 R37 K88 ["baseColor"]
      541 SETTABLEKS                       R25 R37 K84 ["onValueChanged"]
      543 GETTABLEKS                       R38 R2 K77 ["onDragStarted"]
      545 SETTABLEKS                       R38 R37 K77 ["onDragStarted"]
      547 GETTABLEKS                       R38 R2 K78 ["onDragEnded"]
      549 SETTABLEKS                       R38 R37 K78 ["onDragEnded"]
      551 LOADN                            R38 4
      552 SETTABLEKS                       R38 R37 K55 ["LayoutOrder"]
      554 LOADK                            R39 K91 ["%*--alpha-slider"]
      555 GETTABLEKS                       R41 R2 K56 ["testId"]
      557 NAMECALL                         R39 R39 K59 ["format"]
      559 CALL                             R39 2 1
      560 MOVE                             R38 R39
      561 SETTABLEKS                       R38 R37 K56 ["testId"]
      563 CALL                             R35 2 1
      564 JUMP                             ; [+1]
      565 LOADNIL                          R35
      566 SETTABLEKS                       R35 R34 K49 ["AlphaSlider"]
      568 CALL                             R31 3 -1
      569 RETURN                           R31 -1

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
      129 CAPTURE                          VAL R10
      130 DUPCLOSURE                       R18 K34 [PROTO_10]
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R7
      145 RETURN                           R18 1
