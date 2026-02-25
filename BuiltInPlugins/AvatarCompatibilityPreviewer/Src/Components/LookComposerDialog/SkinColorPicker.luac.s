PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["onColorChanged"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K0 ["use"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 LOADB                            R3 0
       11 CALL                             R2 1 1
       12 LOADK                            R4 K1 ["#"]
       13 GETTABLEKS                       R5 R0 K2 ["selectedColor"]
       15 NAMECALL                         R5 R5 K3 ["ToHex"]
       17 CALL                             R5 1 1
       18 CONCAT                           R3 R4 R5
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R4 R5 K4 ["useCallback"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R6 0 1
       26 GETTABLEKS                       R7 R0 K5 ["onColorChanged"]
       28 SETLIST                          R6 R7 1 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R5 R6 K6 ["createElement"]
       34 GETUPVAL                         R6 4
       35 DUPTABLE                         R7 K11 [{"tag", "Size", "AutomaticSize", "LayoutOrder"}]
       36 LOADK                            R8 K12 ["col gap-small auto-y"]
       37 SETTABLEKS                       R8 R7 K7 ["tag"]
       39 GETIMPORT                        R8 K15 [UDim2.new]
       41 LOADN                            R9 1
       42 LOADN                            R10 0
       43 LOADN                            R11 0
       44 LOADN                            R12 0
       45 CALL                             R8 4 1
       46 SETTABLEKS                       R8 R7 K8 ["Size"]
       48 GETIMPORT                        R8 K18 [Enum.AutomaticSize.Y]
       50 SETTABLEKS                       R8 R7 K9 ["AutomaticSize"]
       52 GETTABLEKS                       R8 R0 K10 ["LayoutOrder"]
       54 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       56 DUPTABLE                         R8 K21 [{"Title", "PopoverWrapper"}]
       57 GETUPVAL                         R10 3
       58 GETTABLEKS                       R9 R10 K6 ["createElement"]
       60 GETUPVAL                         R10 5
       61 DUPTABLE                         R11 K23 [{"Text", "tag", "LayoutOrder"}]
       62 LOADK                            R14 K24 ["LookComposerDialog"]
       63 LOADK                            R15 K25 ["ThumbnailSkinTone"]
       64 NAMECALL                         R12 R1 K26 ["getText"]
       66 CALL                             R12 3 1
       67 SETTABLEKS                       R12 R11 K22 ["Text"]
       69 LOADK                            R12 K27 ["text-label-medium auto-xy content-default"]
       70 SETTABLEKS                       R12 R11 K7 ["tag"]
       72 LOADN                            R12 1
       73 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
       75 CALL                             R9 2 1
       76 SETTABLEKS                       R9 R8 K19 ["Title"]
       78 GETUPVAL                         R10 3
       79 GETTABLEKS                       R9 R10 K6 ["createElement"]
       81 GETUPVAL                         R10 4
       82 DUPTABLE                         R11 K28 [{"Size", "LayoutOrder"}]
       83 GETIMPORT                        R12 K15 [UDim2.new]
       85 LOADN                            R13 1
       86 LOADN                            R14 0
       87 LOADN                            R15 0
       88 LOADN                            R16 28
       89 CALL                             R12 4 1
       90 SETTABLEKS                       R12 R11 K8 ["Size"]
       92 LOADN                            R12 2
       93 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
       95 DUPTABLE                         R12 K30 [{"PopoverRoot"}]
       96 GETUPVAL                         R14 3
       97 GETTABLEKS                       R13 R14 K6 ["createElement"]
       99 GETUPVAL                         R15 6
      100 GETTABLEKS                       R14 R15 K31 ["Root"]
      102 DUPTABLE                         R15 K33 [{"isOpen"}]
      103 GETTABLEKS                       R16 R2 K34 ["enabled"]
      105 SETTABLEKS                       R16 R15 K32 ["isOpen"]
      107 DUPTABLE                         R16 K37 [{"Anchor", "Content"}]
      108 GETUPVAL                         R18 3
      109 GETTABLEKS                       R17 R18 K6 ["createElement"]
      111 GETUPVAL                         R19 6
      112 GETTABLEKS                       R18 R19 K35 ["Anchor"]
      114 NEWTABLE                         R19 0 0
      116 DUPTABLE                         R20 K39 [{"ColorSwatchButton"}]
      117 GETUPVAL                         R22 3
      118 GETTABLEKS                       R21 R22 K6 ["createElement"]
      120 GETUPVAL                         R22 4
      121 DUPTABLE                         R23 K41 [{"tag", "Size", "onActivated"}]
      122 LOADK                            R24 K42 ["bg-surface-100 row align-y-center gap-small padding-small radius-small stroke-default cursor-pointer"]
      123 SETTABLEKS                       R24 R23 K7 ["tag"]
      125 GETIMPORT                        R24 K15 [UDim2.new]
      127 LOADN                            R25 1
      128 LOADN                            R26 0
      129 LOADN                            R27 0
      130 LOADN                            R28 28
      131 CALL                             R24 4 1
      132 SETTABLEKS                       R24 R23 K8 ["Size"]
      134 GETTABLEKS                       R24 R2 K43 ["toggle"]
      136 SETTABLEKS                       R24 R23 K40 ["onActivated"]
      138 DUPTABLE                         R24 K46 [{"ColorSwatch", "ColorLabel"}]
      139 GETUPVAL                         R26 3
      140 GETTABLEKS                       R25 R26 K6 ["createElement"]
      142 LOADK                            R26 K47 ["Frame"]
      143 DUPTABLE                         R27 K50 [{"Size", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      144 GETIMPORT                        R28 K52 [UDim2.fromOffset]
      146 LOADN                            R29 18
      147 LOADN                            R30 18
      148 CALL                             R28 2 1
      149 SETTABLEKS                       R28 R27 K8 ["Size"]
      151 GETTABLEKS                       R28 R0 K2 ["selectedColor"]
      153 SETTABLEKS                       R28 R27 K48 ["BackgroundColor3"]
      155 LOADN                            R28 0
      156 SETTABLEKS                       R28 R27 K49 ["BorderSizePixel"]
      158 LOADN                            R28 1
      159 SETTABLEKS                       R28 R27 K10 ["LayoutOrder"]
      161 DUPTABLE                         R28 K54 [{"UICorner"}]
      162 GETUPVAL                         R30 3
      163 GETTABLEKS                       R29 R30 K6 ["createElement"]
      165 LOADK                            R30 K53 ["UICorner"]
      166 DUPTABLE                         R31 K56 [{"CornerRadius"}]
      167 GETIMPORT                        R32 K58 [UDim.new]
      169 LOADN                            R33 0
      170 LOADN                            R34 4
      171 CALL                             R32 2 1
      172 SETTABLEKS                       R32 R31 K55 ["CornerRadius"]
      174 CALL                             R29 2 1
      175 SETTABLEKS                       R29 R28 K53 ["UICorner"]
      177 CALL                             R25 3 1
      178 SETTABLEKS                       R25 R24 K44 ["ColorSwatch"]
      180 GETUPVAL                         R26 3
      181 GETTABLEKS                       R25 R26 K6 ["createElement"]
      183 GETUPVAL                         R26 5
      184 DUPTABLE                         R27 K59 [{"tag", "Text", "LayoutOrder"}]
      185 LOADK                            R28 K60 ["auto-xy text-body-small content-default"]
      186 SETTABLEKS                       R28 R27 K7 ["tag"]
      188 SETTABLEKS                       R3 R27 K22 ["Text"]
      190 LOADN                            R28 2
      191 SETTABLEKS                       R28 R27 K10 ["LayoutOrder"]
      193 CALL                             R25 2 1
      194 SETTABLEKS                       R25 R24 K45 ["ColorLabel"]
      196 CALL                             R21 3 1
      197 SETTABLEKS                       R21 R20 K38 ["ColorSwatchButton"]
      199 CALL                             R17 3 1
      200 SETTABLEKS                       R17 R16 K35 ["Anchor"]
      202 GETUPVAL                         R18 3
      203 GETTABLEKS                       R17 R18 K6 ["createElement"]
      205 GETUPVAL                         R19 6
      206 GETTABLEKS                       R18 R19 K36 ["Content"]
      208 DUPTABLE                         R19 K65 [{"onPressedOutside", "side", "align", "hasArrow"}]
      209 GETTABLEKS                       R20 R2 K66 ["disable"]
      211 SETTABLEKS                       R20 R19 K61 ["onPressedOutside"]
      213 GETUPVAL                         R23 7
      214 GETTABLEKS                       R22 R23 K67 ["Enums"]
      216 GETTABLEKS                       R21 R22 K68 ["PopoverSide"]
      218 GETTABLEKS                       R20 R21 K69 ["Bottom"]
      220 SETTABLEKS                       R20 R19 K62 ["side"]
      222 GETUPVAL                         R23 7
      223 GETTABLEKS                       R22 R23 K67 ["Enums"]
      225 GETTABLEKS                       R21 R22 K70 ["PopoverAlign"]
      227 GETTABLEKS                       R20 R21 K71 ["Start"]
      229 SETTABLEKS                       R20 R19 K63 ["align"]
      231 LOADB                            R20 0
      232 SETTABLEKS                       R20 R19 K64 ["hasArrow"]
      234 GETTABLEKS                       R20 R2 K34 ["enabled"]
      236 JUMPIFNOT                        R20 ; [+52]
      237 GETUPVAL                         R21 3
      238 GETTABLEKS                       R20 R21 K6 ["createElement"]
      240 GETUPVAL                         R21 4
      241 DUPTABLE                         R22 K72 [{"tag", "Size"}]
      242 LOADK                            R23 K73 ["col bg-surface-100 padding-small radius-small stroke-default gap-small"]
      243 SETTABLEKS                       R23 R22 K7 ["tag"]
      245 GETIMPORT                        R23 K52 [UDim2.fromOffset]
      247 LOADN                            R24 59
      248 LOADN                            R25 24
      249 CALL                             R23 2 1
      250 SETTABLEKS                       R23 R22 K8 ["Size"]
      252 DUPTABLE                         R23 K75 [{"PickerSlot"}]
      253 GETUPVAL                         R25 3
      254 GETTABLEKS                       R24 R25 K6 ["createElement"]
      256 GETUPVAL                         R25 4
      257 DUPTABLE                         R26 K76 [{"Size"}]
      258 GETIMPORT                        R27 K52 [UDim2.fromOffset]
      260 LOADN                            R28 44
      261 LOADN                            R29 200
      262 CALL                             R27 2 1
      263 SETTABLEKS                       R27 R26 K8 ["Size"]
      265 DUPTABLE                         R27 K78 [{"Picker"}]
      266 GETUPVAL                         R29 3
      267 GETTABLEKS                       R28 R29 K6 ["createElement"]
      269 GETUPVAL                         R30 7
      270 GETTABLEKS                       R29 R30 K79 ["ColorPicker"]
      272 DUPTABLE                         R30 K82 [{"initialColor", "availableModes", "onColorChanged"}]
      273 GETTABLEKS                       R31 R0 K2 ["selectedColor"]
      275 SETTABLEKS                       R31 R30 K80 ["initialColor"]
      277 GETUPVAL                         R31 8
      278 SETTABLEKS                       R31 R30 K81 ["availableModes"]
      280 SETTABLEKS                       R4 R30 K5 ["onColorChanged"]
      282 CALL                             R28 2 1
      283 SETTABLEKS                       R28 R27 K77 ["Picker"]
      285 CALL                             R24 3 1
      286 SETTABLEKS                       R24 R23 K74 ["PickerSlot"]
      288 CALL                             R20 3 1
      289 CALL                             R17 3 1
      290 SETTABLEKS                       R17 R16 K36 ["Content"]
      292 CALL                             R13 3 1
      293 SETTABLEKS                       R13 R12 K29 ["PopoverRoot"]
      295 CALL                             R9 3 1
      296 SETTABLEKS                       R9 R8 K20 ["PopoverWrapper"]
      298 CALL                             R5 3 -1
      299 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R2 K11 ["Popover"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R8 R0 K6 ["Packages"]
       31 GETTABLEKS                       R7 R8 K12 ["Framework"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R8 R6 K13 ["ContextServices"]
       36 GETTABLEKS                       R7 R8 K14 ["Localization"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R11 R0 K15 ["Src"]
       42 GETTABLEKS                       R10 R11 K16 ["Hooks"]
       44 GETTABLEKS                       R9 R10 K17 ["useToggleState"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R12 R0 K15 ["Src"]
       51 GETTABLEKS                       R11 R12 K18 ["Flags"]
       53 GETTABLEKS                       R10 R11 K19 ["getFFlagAvatarPreviewerLookComposer"]
       55 CALL                             R9 1 1
       56 NEWTABLE                         R10 0 2
       58 LOADK                            R11 K20 ["RGB"]
       59 LOADK                            R12 K21 ["HSV"]
       60 SETLIST                          R10 R11 2 [1]
       62 DUPCLOSURE                       R11 K22 [PROTO_1]
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R10
       72 RETURN                           R11 1
