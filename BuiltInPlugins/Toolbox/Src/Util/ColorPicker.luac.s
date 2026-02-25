PROTO_0:
        0 GETTABLEKS                       R3 R0 K1 ["R"]
        2 MULK                             R2 R3 K0 [255]
        3 FASTCALL1                        MATH_FLOOR R2 ; [+2]
        4 GETIMPORT                        R1 K4 [math.floor]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R4 R0 K5 ["G"]
        9 MULK                             R3 R4 K0 [255]
       10 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       11 GETIMPORT                        R2 K4 [math.floor]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R5 R0 K6 ["B"]
       16 MULK                             R4 R5 K0 [255]
       17 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       18 GETIMPORT                        R3 K4 [math.floor]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K9 [string.format]
       23 LOADK                            R5 K10 ["#%02X%02X%02X"]
       24 MOVE                             R6 R1
       25 MOVE                             R7 R2
       26 MOVE                             R8 R3
       27 CALL                             R4 4 -1
       28 RETURN                           R4 -1

PROTO_1:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_1]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R0 K0 ["selectedColor"]
       10 GETTABLEKS                       R2 R0 K1 ["setSelectedColor"]
       12 GETTABLEKS                       R3 R0 K2 ["LayoutOrder"]
       14 GETTABLEKS                       R4 R0 K3 ["textColor"]
       16 JUMPIF                           R4 ; [+6]
       17 GETIMPORT                        R4 K6 [Color3.fromRGB]
       19 LOADN                            R5 0
       20 LOADN                            R6 0
       21 LOADN                            R7 0
       22 CALL                             R4 3 1
       23 GETTABLEKS                       R6 R0 K8 ["Width"]
       25 ORK                              R5 R6 K7 [400]
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R6 R7 K9 ["useState"]
       29 LOADB                            R7 0
       30 CALL                             R6 1 2
       31 GETTABLEKS                       R11 R1 K11 ["R"]
       33 MULK                             R10 R11 K10 [255]
       34 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       35 GETIMPORT                        R9 K14 [math.floor]
       37 CALL                             R9 1 1
       38 GETTABLEKS                       R12 R1 K15 ["G"]
       40 MULK                             R11 R12 K10 [255]
       41 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       42 GETIMPORT                        R10 K14 [math.floor]
       44 CALL                             R10 1 1
       45 GETTABLEKS                       R13 R1 K16 ["B"]
       47 MULK                             R12 R13 K10 [255]
       48 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       49 GETIMPORT                        R11 K14 [math.floor]
       51 CALL                             R11 1 1
       52 GETIMPORT                        R12 K19 [string.format]
       54 LOADK                            R13 K20 ["#%02X%02X%02X"]
       55 MOVE                             R14 R9
       56 MOVE                             R15 R10
       57 MOVE                             R16 R11
       58 CALL                             R12 4 1
       59 MOVE                             R8 R12
       60 GETUPVAL                         R10 2
       61 GETTABLEKS                       R9 R10 K21 ["useCallback"]
       63 NEWCLOSURE                       R10 P0
       64 CAPTURE                          VAL R7
       65 NEWTABLE                         R11 0 0
       67 CALL                             R9 2 1
       68 GETUPVAL                         R11 2
       69 GETTABLEKS                       R10 R11 K21 ["useCallback"]
       71 NEWCLOSURE                       R11 P1
       72 CAPTURE                          VAL R7
       73 NEWTABLE                         R12 0 0
       75 CALL                             R10 2 1
       76 GETUPVAL                         R12 2
       77 GETTABLEKS                       R11 R12 K21 ["useCallback"]
       79 NEWCLOSURE                       R12 P2
       80 CAPTURE                          VAL R2
       81 NEWTABLE                         R13 0 1
       83 MOVE                             R14 R2
       84 SETLIST                          R13 R14 1 [1]
       86 CALL                             R11 2 1
       87 GETUPVAL                         R13 2
       88 GETTABLEKS                       R12 R13 K22 ["createElement"]
       90 GETUPVAL                         R13 3
       91 DUPTABLE                         R14 K24 [{"Size", "LayoutOrder"}]
       92 GETIMPORT                        R15 K27 [UDim2.new]
       94 LOADN                            R16 0
       95 MOVE                             R17 R5
       96 LOADN                            R18 0
       97 LOADN                            R19 38
       98 CALL                             R15 4 1
       99 SETTABLEKS                       R15 R14 K23 ["Size"]
      101 SETTABLEKS                       R3 R14 K2 ["LayoutOrder"]
      103 DUPTABLE                         R15 K29 [{"PopoverRoot"}]
      104 GETUPVAL                         R17 2
      105 GETTABLEKS                       R16 R17 K22 ["createElement"]
      107 GETUPVAL                         R18 4
      108 GETTABLEKS                       R17 R18 K30 ["Root"]
      110 DUPTABLE                         R18 K32 [{"isOpen"}]
      111 SETTABLEKS                       R6 R18 K31 ["isOpen"]
      113 DUPTABLE                         R19 K35 [{"Anchor", "Content"}]
      114 GETUPVAL                         R21 2
      115 GETTABLEKS                       R20 R21 K22 ["createElement"]
      117 GETUPVAL                         R22 4
      118 GETTABLEKS                       R21 R22 K33 ["Anchor"]
      120 LOADNIL                          R22
      121 DUPTABLE                         R23 K37 [{"ColorSwatchButton"}]
      122 GETUPVAL                         R25 2
      123 GETTABLEKS                       R24 R25 K22 ["createElement"]
      125 GETUPVAL                         R25 3
      126 DUPTABLE                         R26 K40 [{"tag", "Size", "onActivated"}]
      127 LOADK                            R27 K41 ["bg-surface-100 row align-y-center gap-small padding-small radius-small stroke-default"]
      128 SETTABLEKS                       R27 R26 K38 ["tag"]
      130 GETIMPORT                        R27 K43 [UDim2.fromOffset]
      132 MOVE                             R28 R5
      133 LOADN                            R29 32
      134 CALL                             R27 2 1
      135 SETTABLEKS                       R27 R26 K23 ["Size"]
      137 SETTABLEKS                       R9 R26 K39 ["onActivated"]
      139 DUPTABLE                         R27 K46 [{"ColorSwatch", "ColorLabel"}]
      140 GETUPVAL                         R29 2
      141 GETTABLEKS                       R28 R29 K22 ["createElement"]
      143 LOADK                            R29 K47 ["Frame"]
      144 DUPTABLE                         R30 K50 [{"Size", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      145 GETIMPORT                        R31 K43 [UDim2.fromOffset]
      147 LOADN                            R32 24
      148 LOADN                            R33 24
      149 CALL                             R31 2 1
      150 SETTABLEKS                       R31 R30 K23 ["Size"]
      152 SETTABLEKS                       R1 R30 K48 ["BackgroundColor3"]
      154 LOADN                            R31 0
      155 SETTABLEKS                       R31 R30 K49 ["BorderSizePixel"]
      157 LOADN                            R31 1
      158 SETTABLEKS                       R31 R30 K2 ["LayoutOrder"]
      160 DUPTABLE                         R31 K52 [{"UICorner"}]
      161 GETUPVAL                         R33 2
      162 GETTABLEKS                       R32 R33 K22 ["createElement"]
      164 LOADK                            R33 K51 ["UICorner"]
      165 DUPTABLE                         R34 K54 [{"CornerRadius"}]
      166 GETIMPORT                        R35 K56 [UDim.new]
      168 LOADN                            R36 0
      169 LOADN                            R37 4
      170 CALL                             R35 2 1
      171 SETTABLEKS                       R35 R34 K53 ["CornerRadius"]
      173 CALL                             R32 2 1
      174 SETTABLEKS                       R32 R31 K51 ["UICorner"]
      176 CALL                             R28 3 1
      177 SETTABLEKS                       R28 R27 K44 ["ColorSwatch"]
      179 GETUPVAL                         R29 2
      180 GETTABLEKS                       R28 R29 K22 ["createElement"]
      182 GETUPVAL                         R29 5
      183 DUPTABLE                         R30 K59 [{"tag", "Text", "textStyle", "LayoutOrder"}]
      184 LOADK                            R31 K60 ["auto-xy text-body-small"]
      185 SETTABLEKS                       R31 R30 K38 ["tag"]
      187 SETTABLEKS                       R8 R30 K57 ["Text"]
      189 DUPTABLE                         R31 K62 [{"Color"}]
      190 SETTABLEKS                       R4 R31 K61 ["Color"]
      192 SETTABLEKS                       R31 R30 K58 ["textStyle"]
      194 LOADN                            R31 2
      195 SETTABLEKS                       R31 R30 K2 ["LayoutOrder"]
      197 CALL                             R28 2 1
      198 SETTABLEKS                       R28 R27 K45 ["ColorLabel"]
      200 CALL                             R24 3 1
      201 SETTABLEKS                       R24 R23 K36 ["ColorSwatchButton"]
      203 CALL                             R20 3 1
      204 SETTABLEKS                       R20 R19 K33 ["Anchor"]
      206 GETUPVAL                         R21 2
      207 GETTABLEKS                       R20 R21 K22 ["createElement"]
      209 GETUPVAL                         R22 4
      210 GETTABLEKS                       R21 R22 K34 ["Content"]
      212 DUPTABLE                         R22 K67 [{"onPressedOutside", "side", "align", "hasArrow"}]
      213 SETTABLEKS                       R10 R22 K63 ["onPressedOutside"]
      215 GETUPVAL                         R24 6
      216 GETTABLEKS                       R23 R24 K68 ["Bottom"]
      218 SETTABLEKS                       R23 R22 K64 ["side"]
      220 GETUPVAL                         R24 7
      221 GETTABLEKS                       R23 R24 K69 ["Start"]
      223 SETTABLEKS                       R23 R22 K65 ["align"]
      225 LOADB                            R23 0
      226 SETTABLEKS                       R23 R22 K66 ["hasArrow"]
      228 MOVE                             R23 R6
      229 JUMPIFNOT                        R23 ; [+39]
      230 GETUPVAL                         R24 2
      231 GETTABLEKS                       R23 R24 K22 ["createElement"]
      233 GETUPVAL                         R24 3
      234 DUPTABLE                         R25 K70 [{"tag", "Size"}]
      235 LOADK                            R26 K71 ["bg-surface-100 padding-small radius-small stroke-default"]
      236 SETTABLEKS                       R26 R25 K38 ["tag"]
      238 GETIMPORT                        R26 K43 [UDim2.fromOffset]
      240 LOADN                            R27 44
      241 LOADN                            R28 200
      242 CALL                             R26 2 1
      243 SETTABLEKS                       R26 R25 K23 ["Size"]
      245 DUPTABLE                         R26 K73 [{"Picker"}]
      246 GETUPVAL                         R28 2
      247 GETTABLEKS                       R27 R28 K22 ["createElement"]
      249 GETUPVAL                         R29 8
      250 GETTABLEKS                       R28 R29 K74 ["ColorPicker"]
      252 DUPTABLE                         R29 K78 [{"initialColor", "availableModes", "onColorChanged"}]
      253 SETTABLEKS                       R1 R29 K75 ["initialColor"]
      255 NEWTABLE                         R30 0 2
      257 LOADK                            R31 K79 ["RGB"]
      258 LOADK                            R32 K80 ["HSV"]
      259 SETLIST                          R30 R31 2 [1]
      261 SETTABLEKS                       R30 R29 K76 ["availableModes"]
      263 SETTABLEKS                       R11 R29 K77 ["onColorChanged"]
      265 CALL                             R27 2 1
      266 SETTABLEKS                       R27 R26 K72 ["Picker"]
      268 CALL                             R23 3 1
      269 CALL                             R20 3 1
      270 SETTABLEKS                       R20 R19 K34 ["Content"]
      272 CALL                             R16 3 1
      273 SETTABLEKS                       R16 R15 K28 ["PopoverRoot"]
      275 CALL                             R12 3 -1
      276 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["View"]
       21 GETTABLEKS                       R5 R3 K10 ["Text"]
       23 GETTABLEKS                       R6 R3 K11 ["Popover"]
       25 GETTABLEKS                       R8 R3 K12 ["Enums"]
       27 GETTABLEKS                       R7 R8 K13 ["PopoverSide"]
       29 GETTABLEKS                       R9 R3 K12 ["Enums"]
       31 GETTABLEKS                       R8 R9 K14 ["PopoverAlign"]
       33 GETIMPORT                        R9 K6 [require]
       35 GETTABLEKS                       R12 R0 K15 ["Src"]
       37 GETTABLEKS                       R11 R12 K16 ["Flags"]
       39 GETTABLEKS                       R10 R11 K17 ["getFFlagEnableUploadingMakeup"]
       41 CALL                             R9 1 1
       42 GETIMPORT                        R10 K6 [require]
       44 GETTABLEKS                       R13 R0 K15 ["Src"]
       46 GETTABLEKS                       R12 R13 K16 ["Flags"]
       48 GETTABLEKS                       R11 R12 K18 ["getFFlagToolboxMigrateFoundation"]
       50 CALL                             R10 1 1
       51 DUPCLOSURE                       R11 K19 [PROTO_0]
       52 DUPCLOSURE                       R12 K20 [PROTO_5]
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R10
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R3
       62 RETURN                           R12 1
