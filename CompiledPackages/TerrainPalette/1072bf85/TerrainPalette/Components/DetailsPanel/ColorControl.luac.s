PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["R"] ; [+3]
        2 GETUPVAL                         R2 0
        3 JUMP                             ; [+5]
        4 JUMPIFNOTEQKS                    R0 K1 ["G"] ; [+3]
        6 GETUPVAL                         R2 1
        7 JUMP                             ; [+1]
        8 GETUPVAL                         R2 2
        9 LOADB                            R3 0
       10 GETTABLEKS                       R4 R2 K2 ["current"]
       12 JUMPIFEQKNIL                     R4 ; [+13]
       14 LOADB                            R3 0
       15 GETTABLEKS                       R4 R2 K2 ["current"]
       17 GETTABLEKS                       R4 R4 K3 ["getIsFocused"]
       19 JUMPIFEQKNIL                     R4 ; [+6]
       21 GETTABLEKS                       R3 R2 K2 ["current"]
       23 GETTABLEKS                       R3 R3 K3 ["getIsFocused"]
       25 CALL                             R3 0 1
       26 JUMPIF                           R3 ; [+1]
       27 RETURN                           R0 0
       28 FASTCALL1                        TONUMBER R1 ; [+3]
       29 MOVE                             R5 R1
       30 GETIMPORT                        R4 K5 [tonumber]
       32 CALL                             R4 1 1
       33 JUMPIFNOTEQKNIL                  R4 ; [+2]
       35 RETURN                           R0 0
       36 FASTCALL1                        MATH_ROUND R4 ; [+3]
       37 MOVE                             R7 R4
       38 GETIMPORT                        R6 K8 [math.round]
       40 CALL                             R6 1 1
       41 LOADN                            R7 0
       42 LOADN                            R8 255
       43 FASTCALL                         MATH_CLAMP ; [+2]
       44 GETIMPORT                        R5 K10 [math.clamp]
       46 CALL                             R5 3 1
       47 JUMPIFNOTEQKS                    R0 K0 ["R"] ; [+3]
       49 MOVE                             R6 R5
       50 JUMP                             ; [+10]
       51 GETUPVAL                         R8 3
       52 GETTABLEKS                       R8 R8 K12 ["color"]
       54 GETTABLEKS                       R8 R8 K0 ["R"]
       56 MULK                             R7 R8 K11 [255]
       57 FASTCALL1                        MATH_ROUND R7 ; [+2]
       58 GETIMPORT                        R6 K8 [math.round]
       60 CALL                             R6 1 1
       61 JUMPIFNOTEQKS                    R0 K1 ["G"] ; [+3]
       63 MOVE                             R7 R5
       64 JUMP                             ; [+10]
       65 GETUPVAL                         R9 3
       66 GETTABLEKS                       R9 R9 K12 ["color"]
       68 GETTABLEKS                       R9 R9 K1 ["G"]
       70 MULK                             R8 R9 K11 [255]
       71 FASTCALL1                        MATH_ROUND R8 ; [+2]
       72 GETIMPORT                        R7 K8 [math.round]
       74 CALL                             R7 1 1
       75 JUMPIFNOTEQKS                    R0 K13 ["B"] ; [+3]
       77 MOVE                             R8 R5
       78 JUMP                             ; [+10]
       79 GETUPVAL                         R10 3
       80 GETTABLEKS                       R10 R10 K12 ["color"]
       82 GETTABLEKS                       R10 R10 K13 ["B"]
       84 MULK                             R9 R10 K11 [255]
       85 FASTCALL1                        MATH_ROUND R9 ; [+2]
       86 GETIMPORT                        R8 K8 [math.round]
       88 CALL                             R8 1 1
       89 GETUPVAL                         R9 3
       90 GETTABLEKS                       R9 R9 K14 ["onColorChanged"]
       92 GETIMPORT                        R10 K17 [Color3.fromRGB]
       94 MOVE                             R11 R6
       95 MOVE                             R12 R7
       96 MOVE                             R13 R8
       97 CALL                             R10 3 -1
       98 CALL                             R9 -1 0
       99 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["R"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["G"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["B"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onColorChangeCommitted"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["toggle"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onColorChangeCommitted"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["disable"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useRef"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["useRef"]
       10 LOADNIL                          R4
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K0 ["useRef"]
       15 LOADNIL                          R5
       16 CALL                             R4 1 1
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R0
       22 GETUPVAL                         R6 2
       23 NEWCLOSURE                       R7 P1
       24 CAPTURE                          VAL R5
       25 CALL                             R6 1 1
       26 GETUPVAL                         R7 2
       27 NEWCLOSURE                       R8 P2
       28 CAPTURE                          VAL R5
       29 CALL                             R7 1 1
       30 GETUPVAL                         R8 2
       31 NEWCLOSURE                       R9 P3
       32 CAPTURE                          VAL R5
       33 CALL                             R8 1 1
       34 GETUPVAL                         R9 2
       35 NEWCLOSURE                       R10 P4
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R0
       38 CALL                             R9 1 1
       39 GETUPVAL                         R10 2
       40 NEWCLOSURE                       R11 P5
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 CALL                             R10 1 1
       44 GETUPVAL                         R11 3
       45 CALL                             R11 0 1
       46 GETUPVAL                         R12 1
       47 GETTABLEKS                       R12 R12 K1 ["createElement"]
       49 GETUPVAL                         R13 4
       50 DUPTABLE                         R14 K4 [{["tag"] = "row align-y-center gap-xxsmall size-full padding-x-small bg-surface-200 radius-medium clip"}]
       51 DUPTABLE                         R15 K9 [{"SwatchAndPicker", "RInput", "GInput", "BInput"}]
       52 GETUPVAL                         R16 1
       53 GETTABLEKS                       R16 R16 K1 ["createElement"]
       55 GETUPVAL                         R17 5
       56 GETTABLEKS                       R17 R17 K10 ["Root"]
       58 DUPTABLE                         R18 K12 [{"isOpen"}]
       59 GETTABLEKS                       R19 R1 K13 ["enabled"]
       61 SETTABLEKS                       R19 R18 K11 ["isOpen"]
       63 DUPTABLE                         R19 K16 [{"Anchor", "Picker"}]
       64 GETUPVAL                         R20 1
       65 GETTABLEKS                       R20 R20 K1 ["createElement"]
       67 GETUPVAL                         R21 5
       68 GETTABLEKS                       R21 R21 K14 ["Anchor"]
       70 DUPTABLE                         R22 K18 [{"LayoutOrder"}]
       71 MOVE                             R23 R11
       72 CALL                             R23 0 1
       73 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
       75 DUPTABLE                         R23 K20 [{"Swatch"}]
       76 GETUPVAL                         R24 1
       77 GETTABLEKS                       R24 R24 K1 ["createElement"]
       79 GETUPVAL                         R25 4
       80 DUPTABLE                         R26 K27 [{["tag"] = "no-flex stroke-standard radius-xsmall", ["backgroundStyle"], ["Size"], ["onActivated"], ["testId"] = "ColorSwatch"}]
       81 DUPTABLE                         R27 K31 [{["Color3"], ["Transparency"] = 0}]
       82 GETTABLEKS                       R28 R0 K32 ["color"]
       84 SETTABLEKS                       R28 R27 K28 ["Color3"]
       86 SETTABLEKS                       R27 R26 K22 ["backgroundStyle"]
       88 GETIMPORT                        R27 K35 [UDim2.fromOffset]
       90 LOADN                            R28 22
       91 LOADN                            R29 22
       92 CALL                             R27 2 1
       93 SETTABLEKS                       R27 R26 K23 ["Size"]
       95 SETTABLEKS                       R9 R26 K24 ["onActivated"]
       97 CALL                             R24 2 1
       98 SETTABLEKS                       R24 R23 K19 ["Swatch"]
      100 CALL                             R20 3 1
      101 SETTABLEKS                       R20 R19 K14 ["Anchor"]
      103 GETUPVAL                         R20 1
      104 GETTABLEKS                       R20 R20 K1 ["createElement"]
      106 GETUPVAL                         R21 5
      107 GETTABLEKS                       R21 R21 K36 ["Content"]
      109 DUPTABLE                         R22 K42 [{["hasArrow"] = False, ["onPressedOutside"], ["align"], ["side"]}]
      110 SETTABLEKS                       R10 R22 K39 ["onPressedOutside"]
      112 GETUPVAL                         R23 6
      113 GETTABLEKS                       R23 R23 K43 ["Start"]
      115 SETTABLEKS                       R23 R22 K40 ["align"]
      117 DUPTABLE                         R23 K47 [{["position"], ["offset"] = 8}]
      118 GETUPVAL                         R24 7
      119 GETTABLEKS                       R24 R24 K48 ["Bottom"]
      121 SETTABLEKS                       R24 R23 K44 ["position"]
      123 SETTABLEKS                       R23 R22 K41 ["side"]
      125 DUPTABLE                         R23 K50 [{"Wrapper"}]
      126 GETUPVAL                         R24 1
      127 GETTABLEKS                       R24 R24 K1 ["createElement"]
      129 GETUPVAL                         R25 4
      130 DUPTABLE                         R26 K52 [{["tag"] = "auto-y", ["Size"]}]
      131 GETIMPORT                        R27 K35 [UDim2.fromOffset]
      133 LOADN                            R28 208
      134 LOADN                            R29 0
      135 CALL                             R27 2 1
      136 SETTABLEKS                       R27 R26 K23 ["Size"]
      138 DUPTABLE                         R27 K54 [{"ColorPicker"}]
      139 GETUPVAL                         R28 1
      140 GETTABLEKS                       R28 R28 K1 ["createElement"]
      142 GETUPVAL                         R29 8
      143 DUPTABLE                         R30 K58 [{"initialColor", "onColorChanged", "onDragEnded"}]
      144 GETTABLEKS                       R31 R0 K32 ["color"]
      146 SETTABLEKS                       R31 R30 K55 ["initialColor"]
      148 GETTABLEKS                       R31 R0 K56 ["onColorChanged"]
      150 SETTABLEKS                       R31 R30 K56 ["onColorChanged"]
      152 GETTABLEKS                       R31 R0 K59 ["onColorChangeCommitted"]
      154 SETTABLEKS                       R31 R30 K57 ["onDragEnded"]
      156 CALL                             R28 2 1
      157 SETTABLEKS                       R28 R27 K53 ["ColorPicker"]
      159 CALL                             R24 3 1
      160 SETTABLEKS                       R24 R23 K49 ["Wrapper"]
      162 CALL                             R20 3 1
      163 SETTABLEKS                       R20 R19 K15 ["Picker"]
      165 CALL                             R16 3 1
      166 SETTABLEKS                       R16 R15 K5 ["SwatchAndPicker"]
      168 GETUPVAL                         R16 1
      169 GETTABLEKS                       R16 R16 K1 ["createElement"]
      171 GETUPVAL                         R17 4
      172 DUPTABLE                         R18 K61 [{["tag"] = "row grow-1 align-y-center size-0-full", ["LayoutOrder"]}]
      173 MOVE                             R19 R11
      174 CALL                             R19 0 1
      175 SETTABLEKS                       R19 R18 K17 ["LayoutOrder"]
      177 DUPTABLE                         R19 K63 [{"Input"}]
      178 GETUPVAL                         R20 1
      179 GETTABLEKS                       R20 R20 K1 ["createElement"]
      181 GETUPVAL                         R21 9
      182 DUPTABLE                         R22 K73 [{["label"] = "", ["text"], ["onChanged"], ["onFocusLost"], ["textBoxRef"], ["size"], ["testId"] = "RInput", ["variant"], ["width"]}]
      183 GETTABLEKS                       R26 R0 K32 ["color"]
      185 GETTABLEKS                       R26 R26 K75 ["R"]
      187 MULK                             R25 R26 K74 [255]
      188 FASTCALL1                        MATH_ROUND R25 ; [+2]
      189 GETIMPORT                        R24 K78 [math.round]
      191 CALL                             R24 1 1
      192 FASTCALL1                        TOSTRING R24 ; [+2]
      193 GETIMPORT                        R23 K80 [tostring]
      195 CALL                             R23 1 1
      196 SETTABLEKS                       R23 R22 K66 ["text"]
      198 SETTABLEKS                       R6 R22 K67 ["onChanged"]
      200 GETTABLEKS                       R23 R0 K59 ["onColorChangeCommitted"]
      202 SETTABLEKS                       R23 R22 K68 ["onFocusLost"]
      204 SETTABLEKS                       R2 R22 K69 ["textBoxRef"]
      206 GETUPVAL                         R23 10
      207 GETTABLEKS                       R23 R23 K81 ["XSmall"]
      209 SETTABLEKS                       R23 R22 K70 ["size"]
      211 GETUPVAL                         R23 11
      212 GETTABLEKS                       R23 R23 K82 ["Utility"]
      214 SETTABLEKS                       R23 R22 K71 ["variant"]
      216 GETIMPORT                        R23 K85 [UDim.new]
      218 LOADN                            R24 1
      219 LOADN                            R25 0
      220 CALL                             R23 2 1
      221 SETTABLEKS                       R23 R22 K72 ["width"]
      223 CALL                             R20 2 1
      224 SETTABLEKS                       R20 R19 K62 ["Input"]
      226 CALL                             R16 3 1
      227 SETTABLEKS                       R16 R15 K6 ["RInput"]
      229 GETUPVAL                         R16 1
      230 GETTABLEKS                       R16 R16 K1 ["createElement"]
      232 GETUPVAL                         R17 4
      233 DUPTABLE                         R18 K61 [{["tag"] = "row grow-1 align-y-center size-0-full", ["LayoutOrder"]}]
      234 MOVE                             R19 R11
      235 CALL                             R19 0 1
      236 SETTABLEKS                       R19 R18 K17 ["LayoutOrder"]
      238 DUPTABLE                         R19 K63 [{"Input"}]
      239 GETUPVAL                         R20 1
      240 GETTABLEKS                       R20 R20 K1 ["createElement"]
      242 GETUPVAL                         R21 9
      243 DUPTABLE                         R22 K86 [{["label"] = "", ["text"], ["onChanged"], ["onFocusLost"], ["textBoxRef"], ["size"], ["testId"] = "GInput", ["variant"], ["width"]}]
      244 GETTABLEKS                       R26 R0 K32 ["color"]
      246 GETTABLEKS                       R26 R26 K87 ["G"]
      248 MULK                             R25 R26 K74 [255]
      249 FASTCALL1                        MATH_ROUND R25 ; [+2]
      250 GETIMPORT                        R24 K78 [math.round]
      252 CALL                             R24 1 1
      253 FASTCALL1                        TOSTRING R24 ; [+2]
      254 GETIMPORT                        R23 K80 [tostring]
      256 CALL                             R23 1 1
      257 SETTABLEKS                       R23 R22 K66 ["text"]
      259 SETTABLEKS                       R7 R22 K67 ["onChanged"]
      261 GETTABLEKS                       R23 R0 K59 ["onColorChangeCommitted"]
      263 SETTABLEKS                       R23 R22 K68 ["onFocusLost"]
      265 SETTABLEKS                       R3 R22 K69 ["textBoxRef"]
      267 GETUPVAL                         R23 10
      268 GETTABLEKS                       R23 R23 K81 ["XSmall"]
      270 SETTABLEKS                       R23 R22 K70 ["size"]
      272 GETUPVAL                         R23 11
      273 GETTABLEKS                       R23 R23 K82 ["Utility"]
      275 SETTABLEKS                       R23 R22 K71 ["variant"]
      277 GETIMPORT                        R23 K85 [UDim.new]
      279 LOADN                            R24 1
      280 LOADN                            R25 0
      281 CALL                             R23 2 1
      282 SETTABLEKS                       R23 R22 K72 ["width"]
      284 CALL                             R20 2 1
      285 SETTABLEKS                       R20 R19 K62 ["Input"]
      287 CALL                             R16 3 1
      288 SETTABLEKS                       R16 R15 K7 ["GInput"]
      290 GETUPVAL                         R16 1
      291 GETTABLEKS                       R16 R16 K1 ["createElement"]
      293 GETUPVAL                         R17 4
      294 DUPTABLE                         R18 K61 [{["tag"] = "row grow-1 align-y-center size-0-full", ["LayoutOrder"]}]
      295 MOVE                             R19 R11
      296 CALL                             R19 0 1
      297 SETTABLEKS                       R19 R18 K17 ["LayoutOrder"]
      299 DUPTABLE                         R19 K63 [{"Input"}]
      300 GETUPVAL                         R20 1
      301 GETTABLEKS                       R20 R20 K1 ["createElement"]
      303 GETUPVAL                         R21 9
      304 DUPTABLE                         R22 K88 [{["label"] = "", ["text"], ["onChanged"], ["onFocusLost"], ["textBoxRef"], ["size"], ["testId"] = "BInput", ["variant"], ["width"]}]
      305 GETTABLEKS                       R26 R0 K32 ["color"]
      307 GETTABLEKS                       R26 R26 K89 ["B"]
      309 MULK                             R25 R26 K74 [255]
      310 FASTCALL1                        MATH_ROUND R25 ; [+2]
      311 GETIMPORT                        R24 K78 [math.round]
      313 CALL                             R24 1 1
      314 FASTCALL1                        TOSTRING R24 ; [+2]
      315 GETIMPORT                        R23 K80 [tostring]
      317 CALL                             R23 1 1
      318 SETTABLEKS                       R23 R22 K66 ["text"]
      320 SETTABLEKS                       R8 R22 K67 ["onChanged"]
      322 GETTABLEKS                       R23 R0 K59 ["onColorChangeCommitted"]
      324 SETTABLEKS                       R23 R22 K68 ["onFocusLost"]
      326 SETTABLEKS                       R4 R22 K69 ["textBoxRef"]
      328 GETUPVAL                         R23 10
      329 GETTABLEKS                       R23 R23 K81 ["XSmall"]
      331 SETTABLEKS                       R23 R22 K70 ["size"]
      333 GETUPVAL                         R23 11
      334 GETTABLEKS                       R23 R23 K82 ["Utility"]
      336 SETTABLEKS                       R23 R22 K71 ["variant"]
      338 GETIMPORT                        R23 K85 [UDim.new]
      340 LOADN                            R24 1
      341 LOADN                            R25 0
      342 CALL                             R23 2 1
      343 SETTABLEKS                       R23 R22 K72 ["width"]
      345 CALL                             R20 2 1
      346 SETTABLEKS                       R20 R19 K62 ["Input"]
      348 CALL                             R16 3 1
      349 SETTABLEKS                       R16 R15 K8 ["BInput"]
      351 CALL                             R12 3 1
      352 GETUPVAL                         R13 1
      353 GETTABLEKS                       R13 R13 K1 ["createElement"]
      355 GETUPVAL                         R14 12
      356 DUPTABLE                         R15 K96 [{["layoutOrder"], ["label"] = "Color", ["isWide"], ["controlWidth"] = 140, ["control"]}]
      357 GETTABLEKS                       R16 R0 K90 ["layoutOrder"]
      359 SETTABLEKS                       R16 R15 K90 ["layoutOrder"]
      361 GETTABLEKS                       R16 R0 K92 ["isWide"]
      363 SETTABLEKS                       R16 R15 K92 ["isWide"]
      365 SETTABLEKS                       R12 R15 K95 ["control"]
      367 CALL                             R13 2 -1
      368 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["DetailsPanel"]
       20 GETTABLEKS                       R3 R3 K10 ["LabeledControl"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["ColorPicker"]
       39 GETTABLEKS                       R6 R1 K14 ["Enums"]
       41 GETTABLEKS                       R6 R6 K15 ["InputSize"]
       43 GETTABLEKS                       R7 R1 K14 ["Enums"]
       45 GETTABLEKS                       R7 R7 K16 ["InputVariant"]
       47 GETTABLEKS                       R8 R1 K17 ["Popover"]
       49 GETTABLEKS                       R9 R1 K14 ["Enums"]
       51 GETTABLEKS                       R9 R9 K18 ["PopoverAlign"]
       53 GETTABLEKS                       R10 R1 K14 ["Enums"]
       55 GETTABLEKS                       R10 R10 K19 ["PopoverSide"]
       57 GETTABLEKS                       R11 R1 K20 ["TextInput"]
       59 GETTABLEKS                       R12 R1 K21 ["View"]
       61 GETTABLEKS                       R13 R4 K22 ["createNextOrder"]
       63 GETTABLEKS                       R14 R4 K23 ["useEventCallback"]
       65 GETTABLEKS                       R15 R4 K24 ["useToggleState"]
       67 DUPCLOSURE                       R16 K25 [PROTO_6]
       68 CAPTURE                          VAL R15
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R14
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R2
       81 RETURN                           R16 1
