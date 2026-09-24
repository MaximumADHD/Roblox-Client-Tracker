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
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["useRef"]
       12 LOADNIL                          R4
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K2 ["useRef"]
       17 LOADNIL                          R5
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K2 ["useRef"]
       22 LOADNIL                          R6
       23 CALL                             R5 1 1
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R0
       29 GETUPVAL                         R7 3
       30 NEWCLOSURE                       R8 P1
       31 CAPTURE                          VAL R6
       32 CALL                             R7 1 1
       33 GETUPVAL                         R8 3
       34 NEWCLOSURE                       R9 P2
       35 CAPTURE                          VAL R6
       36 CALL                             R8 1 1
       37 GETUPVAL                         R9 3
       38 NEWCLOSURE                       R10 P3
       39 CAPTURE                          VAL R6
       40 CALL                             R9 1 1
       41 GETUPVAL                         R10 3
       42 NEWCLOSURE                       R11 P4
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R0
       45 CALL                             R10 1 1
       46 GETUPVAL                         R11 3
       47 NEWCLOSURE                       R12 P5
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 CALL                             R11 1 1
       51 GETUPVAL                         R12 4
       52 CALL                             R12 0 1
       53 GETUPVAL                         R13 0
       54 GETTABLEKS                       R13 R13 K3 ["createElement"]
       56 GETUPVAL                         R14 5
       57 DUPTABLE                         R15 K6 [{["tag"] = "row align-y-center gap-xxsmall size-full padding-x-small bg-surface-200 radius-medium clip"}]
       58 DUPTABLE                         R16 K11 [{"SwatchAndPicker", "RInput", "GInput", "BInput"}]
       59 GETUPVAL                         R17 0
       60 GETTABLEKS                       R17 R17 K3 ["createElement"]
       62 GETUPVAL                         R18 6
       63 GETTABLEKS                       R18 R18 K12 ["Root"]
       65 DUPTABLE                         R19 K14 [{"isOpen"}]
       66 GETTABLEKS                       R20 R2 K15 ["enabled"]
       68 SETTABLEKS                       R20 R19 K13 ["isOpen"]
       70 DUPTABLE                         R20 K18 [{"Anchor", "Picker"}]
       71 GETUPVAL                         R21 0
       72 GETTABLEKS                       R21 R21 K3 ["createElement"]
       74 GETUPVAL                         R22 6
       75 GETTABLEKS                       R22 R22 K16 ["Anchor"]
       77 DUPTABLE                         R23 K20 [{"LayoutOrder"}]
       78 MOVE                             R24 R12
       79 CALL                             R24 0 1
       80 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
       82 DUPTABLE                         R24 K22 [{"Swatch"}]
       83 GETUPVAL                         R25 0
       84 GETTABLEKS                       R25 R25 K3 ["createElement"]
       86 GETUPVAL                         R26 5
       87 DUPTABLE                         R27 K29 [{["tag"] = "no-flex stroke-standard radius-xsmall", ["backgroundStyle"], ["Size"], ["onActivated"], ["testId"] = "ColorSwatch"}]
       88 DUPTABLE                         R28 K33 [{["Color3"], ["Transparency"] = 0}]
       89 GETTABLEKS                       R29 R0 K34 ["color"]
       91 SETTABLEKS                       R29 R28 K30 ["Color3"]
       93 SETTABLEKS                       R28 R27 K24 ["backgroundStyle"]
       95 GETIMPORT                        R28 K37 [UDim2.fromOffset]
       97 LOADN                            R29 22
       98 LOADN                            R30 22
       99 CALL                             R28 2 1
      100 SETTABLEKS                       R28 R27 K25 ["Size"]
      102 SETTABLEKS                       R10 R27 K26 ["onActivated"]
      104 CALL                             R25 2 1
      105 SETTABLEKS                       R25 R24 K21 ["Swatch"]
      107 CALL                             R21 3 1
      108 SETTABLEKS                       R21 R20 K16 ["Anchor"]
      110 GETUPVAL                         R21 0
      111 GETTABLEKS                       R21 R21 K3 ["createElement"]
      113 GETUPVAL                         R22 6
      114 GETTABLEKS                       R22 R22 K38 ["Content"]
      116 DUPTABLE                         R23 K44 [{["hasArrow"] = False, ["onPressedOutside"], ["align"], ["side"]}]
      117 SETTABLEKS                       R11 R23 K41 ["onPressedOutside"]
      119 GETUPVAL                         R24 7
      120 GETTABLEKS                       R24 R24 K45 ["Start"]
      122 SETTABLEKS                       R24 R23 K42 ["align"]
      124 DUPTABLE                         R24 K49 [{["position"], ["offset"] = 8}]
      125 GETUPVAL                         R25 8
      126 GETTABLEKS                       R25 R25 K50 ["Bottom"]
      128 SETTABLEKS                       R25 R24 K46 ["position"]
      130 SETTABLEKS                       R24 R23 K43 ["side"]
      132 DUPTABLE                         R24 K52 [{"Wrapper"}]
      133 GETUPVAL                         R25 0
      134 GETTABLEKS                       R25 R25 K3 ["createElement"]
      136 GETUPVAL                         R26 5
      137 DUPTABLE                         R27 K54 [{["tag"] = "auto-y", ["Size"]}]
      138 GETIMPORT                        R28 K37 [UDim2.fromOffset]
      140 LOADN                            R29 208
      141 LOADN                            R30 0
      142 CALL                             R28 2 1
      143 SETTABLEKS                       R28 R27 K25 ["Size"]
      145 DUPTABLE                         R28 K56 [{"ColorPicker"}]
      146 GETUPVAL                         R29 0
      147 GETTABLEKS                       R29 R29 K3 ["createElement"]
      149 GETUPVAL                         R30 9
      150 DUPTABLE                         R31 K60 [{"initialColor", "onColorChanged", "onDragEnded"}]
      151 GETTABLEKS                       R32 R0 K34 ["color"]
      153 SETTABLEKS                       R32 R31 K57 ["initialColor"]
      155 GETTABLEKS                       R32 R0 K58 ["onColorChanged"]
      157 SETTABLEKS                       R32 R31 K58 ["onColorChanged"]
      159 GETTABLEKS                       R32 R0 K61 ["onColorChangeCommitted"]
      161 SETTABLEKS                       R32 R31 K59 ["onDragEnded"]
      163 CALL                             R29 2 1
      164 SETTABLEKS                       R29 R28 K55 ["ColorPicker"]
      166 CALL                             R25 3 1
      167 SETTABLEKS                       R25 R24 K51 ["Wrapper"]
      169 CALL                             R21 3 1
      170 SETTABLEKS                       R21 R20 K17 ["Picker"]
      172 CALL                             R17 3 1
      173 SETTABLEKS                       R17 R16 K7 ["SwatchAndPicker"]
      175 GETUPVAL                         R17 0
      176 GETTABLEKS                       R17 R17 K3 ["createElement"]
      178 GETUPVAL                         R18 5
      179 DUPTABLE                         R19 K63 [{["tag"] = "row grow-1 align-y-center size-0-full", ["LayoutOrder"]}]
      180 MOVE                             R20 R12
      181 CALL                             R20 0 1
      182 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      184 DUPTABLE                         R20 K65 [{"Input"}]
      185 GETUPVAL                         R21 0
      186 GETTABLEKS                       R21 R21 K3 ["createElement"]
      188 GETUPVAL                         R22 10
      189 DUPTABLE                         R23 K75 [{["label"] = "", ["text"], ["onChanged"], ["onFocusLost"], ["textBoxRef"], ["size"], ["testId"] = "RInput", ["variant"], ["width"]}]
      190 GETTABLEKS                       R27 R0 K34 ["color"]
      192 GETTABLEKS                       R27 R27 K77 ["R"]
      194 MULK                             R26 R27 K76 [255]
      195 FASTCALL1                        MATH_ROUND R26 ; [+2]
      196 GETIMPORT                        R25 K80 [math.round]
      198 CALL                             R25 1 1
      199 FASTCALL1                        TOSTRING R25 ; [+2]
      200 GETIMPORT                        R24 K82 [tostring]
      202 CALL                             R24 1 1
      203 SETTABLEKS                       R24 R23 K68 ["text"]
      205 SETTABLEKS                       R7 R23 K69 ["onChanged"]
      207 GETTABLEKS                       R24 R0 K61 ["onColorChangeCommitted"]
      209 SETTABLEKS                       R24 R23 K70 ["onFocusLost"]
      211 SETTABLEKS                       R3 R23 K71 ["textBoxRef"]
      213 GETUPVAL                         R24 11
      214 GETTABLEKS                       R24 R24 K83 ["XSmall"]
      216 SETTABLEKS                       R24 R23 K72 ["size"]
      218 GETUPVAL                         R24 12
      219 GETTABLEKS                       R24 R24 K84 ["Utility"]
      221 SETTABLEKS                       R24 R23 K73 ["variant"]
      223 GETIMPORT                        R24 K87 [UDim.new]
      225 LOADN                            R25 1
      226 LOADN                            R26 0
      227 CALL                             R24 2 1
      228 SETTABLEKS                       R24 R23 K74 ["width"]
      230 CALL                             R21 2 1
      231 SETTABLEKS                       R21 R20 K64 ["Input"]
      233 CALL                             R17 3 1
      234 SETTABLEKS                       R17 R16 K8 ["RInput"]
      236 GETUPVAL                         R17 0
      237 GETTABLEKS                       R17 R17 K3 ["createElement"]
      239 GETUPVAL                         R18 5
      240 DUPTABLE                         R19 K63 [{["tag"] = "row grow-1 align-y-center size-0-full", ["LayoutOrder"]}]
      241 MOVE                             R20 R12
      242 CALL                             R20 0 1
      243 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      245 DUPTABLE                         R20 K65 [{"Input"}]
      246 GETUPVAL                         R21 0
      247 GETTABLEKS                       R21 R21 K3 ["createElement"]
      249 GETUPVAL                         R22 10
      250 DUPTABLE                         R23 K88 [{["label"] = "", ["text"], ["onChanged"], ["onFocusLost"], ["textBoxRef"], ["size"], ["testId"] = "GInput", ["variant"], ["width"]}]
      251 GETTABLEKS                       R27 R0 K34 ["color"]
      253 GETTABLEKS                       R27 R27 K89 ["G"]
      255 MULK                             R26 R27 K76 [255]
      256 FASTCALL1                        MATH_ROUND R26 ; [+2]
      257 GETIMPORT                        R25 K80 [math.round]
      259 CALL                             R25 1 1
      260 FASTCALL1                        TOSTRING R25 ; [+2]
      261 GETIMPORT                        R24 K82 [tostring]
      263 CALL                             R24 1 1
      264 SETTABLEKS                       R24 R23 K68 ["text"]
      266 SETTABLEKS                       R8 R23 K69 ["onChanged"]
      268 GETTABLEKS                       R24 R0 K61 ["onColorChangeCommitted"]
      270 SETTABLEKS                       R24 R23 K70 ["onFocusLost"]
      272 SETTABLEKS                       R4 R23 K71 ["textBoxRef"]
      274 GETUPVAL                         R24 11
      275 GETTABLEKS                       R24 R24 K83 ["XSmall"]
      277 SETTABLEKS                       R24 R23 K72 ["size"]
      279 GETUPVAL                         R24 12
      280 GETTABLEKS                       R24 R24 K84 ["Utility"]
      282 SETTABLEKS                       R24 R23 K73 ["variant"]
      284 GETIMPORT                        R24 K87 [UDim.new]
      286 LOADN                            R25 1
      287 LOADN                            R26 0
      288 CALL                             R24 2 1
      289 SETTABLEKS                       R24 R23 K74 ["width"]
      291 CALL                             R21 2 1
      292 SETTABLEKS                       R21 R20 K64 ["Input"]
      294 CALL                             R17 3 1
      295 SETTABLEKS                       R17 R16 K9 ["GInput"]
      297 GETUPVAL                         R17 0
      298 GETTABLEKS                       R17 R17 K3 ["createElement"]
      300 GETUPVAL                         R18 5
      301 DUPTABLE                         R19 K63 [{["tag"] = "row grow-1 align-y-center size-0-full", ["LayoutOrder"]}]
      302 MOVE                             R20 R12
      303 CALL                             R20 0 1
      304 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      306 DUPTABLE                         R20 K65 [{"Input"}]
      307 GETUPVAL                         R21 0
      308 GETTABLEKS                       R21 R21 K3 ["createElement"]
      310 GETUPVAL                         R22 10
      311 DUPTABLE                         R23 K90 [{["label"] = "", ["text"], ["onChanged"], ["onFocusLost"], ["textBoxRef"], ["size"], ["testId"] = "BInput", ["variant"], ["width"]}]
      312 GETTABLEKS                       R27 R0 K34 ["color"]
      314 GETTABLEKS                       R27 R27 K91 ["B"]
      316 MULK                             R26 R27 K76 [255]
      317 FASTCALL1                        MATH_ROUND R26 ; [+2]
      318 GETIMPORT                        R25 K80 [math.round]
      320 CALL                             R25 1 1
      321 FASTCALL1                        TOSTRING R25 ; [+2]
      322 GETIMPORT                        R24 K82 [tostring]
      324 CALL                             R24 1 1
      325 SETTABLEKS                       R24 R23 K68 ["text"]
      327 SETTABLEKS                       R9 R23 K69 ["onChanged"]
      329 GETTABLEKS                       R24 R0 K61 ["onColorChangeCommitted"]
      331 SETTABLEKS                       R24 R23 K70 ["onFocusLost"]
      333 SETTABLEKS                       R5 R23 K71 ["textBoxRef"]
      335 GETUPVAL                         R24 11
      336 GETTABLEKS                       R24 R24 K83 ["XSmall"]
      338 SETTABLEKS                       R24 R23 K72 ["size"]
      340 GETUPVAL                         R24 12
      341 GETTABLEKS                       R24 R24 K84 ["Utility"]
      343 SETTABLEKS                       R24 R23 K73 ["variant"]
      345 GETIMPORT                        R24 K87 [UDim.new]
      347 LOADN                            R25 1
      348 LOADN                            R26 0
      349 CALL                             R24 2 1
      350 SETTABLEKS                       R24 R23 K74 ["width"]
      352 CALL                             R21 2 1
      353 SETTABLEKS                       R21 R20 K64 ["Input"]
      355 CALL                             R17 3 1
      356 SETTABLEKS                       R17 R16 K10 ["BInput"]
      358 CALL                             R13 3 1
      359 GETUPVAL                         R14 0
      360 GETTABLEKS                       R14 R14 K3 ["createElement"]
      362 GETUPVAL                         R15 13
      363 DUPTABLE                         R16 K97 [{["layoutOrder"], ["label"], ["isWide"], ["controlWidth"] = 140, ["control"]}]
      364 GETTABLEKS                       R17 R0 K92 ["layoutOrder"]
      366 SETTABLEKS                       R17 R16 K92 ["layoutOrder"]
      368 LOADK                            R19 K98 ["Plugin"]
      369 LOADK                            R20 K99 ["ColorLabel"]
      370 NAMECALL                         R17 R1 K100 ["getText"]
      372 CALL                             R17 3 1
      373 SETTABLEKS                       R17 R16 K66 ["label"]
      375 GETTABLEKS                       R17 R0 K93 ["isWide"]
      377 SETTABLEKS                       R17 R16 K93 ["isWide"]
      379 SETTABLEKS                       R13 R16 K96 ["control"]
      381 CALL                             R14 2 -1
      382 RETURN                           R14 -1

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
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R6 K13 ["StudioFoundation"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R1 K14 ["ColorPicker"]
       46 GETTABLEKS                       R7 R1 K15 ["Enums"]
       48 GETTABLEKS                       R7 R7 K16 ["InputSize"]
       50 GETTABLEKS                       R8 R1 K15 ["Enums"]
       52 GETTABLEKS                       R8 R8 K17 ["InputVariant"]
       54 GETTABLEKS                       R9 R5 K18 ["Contexts"]
       56 GETTABLEKS                       R9 R9 K19 ["Localization"]
       58 GETTABLEKS                       R10 R1 K20 ["Popover"]
       60 GETTABLEKS                       R11 R1 K15 ["Enums"]
       62 GETTABLEKS                       R11 R11 K21 ["PopoverAlign"]
       64 GETTABLEKS                       R12 R1 K15 ["Enums"]
       66 GETTABLEKS                       R12 R12 K22 ["PopoverSide"]
       68 GETTABLEKS                       R13 R1 K23 ["TextInput"]
       70 GETTABLEKS                       R14 R1 K24 ["View"]
       72 GETTABLEKS                       R15 R4 K25 ["createNextOrder"]
       74 GETTABLEKS                       R16 R4 K26 ["useEventCallback"]
       76 GETTABLEKS                       R17 R4 K27 ["useToggleState"]
       78 DUPCLOSURE                       R18 K28 [PROTO_6]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R17
       82 CAPTURE                          VAL R16
       83 CAPTURE                          VAL R15
       84 CAPTURE                          VAL R14
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R2
       93 RETURN                           R18 1
