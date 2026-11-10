PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["lastHexValid"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["props"]
        7 GETTABLEKS                       R0 R0 K2 ["OnTextChangedHex"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["lastHex"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["lastRGBValid"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["props"]
        7 GETTABLEKS                       R0 R0 K2 ["OnTextChangedRGB"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["lastRGB"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["lastHSVValid"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["props"]
        7 GETTABLEKS                       R0 R0 K2 ["OnTextChangedHSV"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["lastHSV"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R1 R2 K0 ["lastHexValid"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R0 R2 K1 ["lastHex"]
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R1 R2 K0 ["lastRGBValid"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R0 R2 K1 ["lastRGB"]
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R1 R2 K0 ["lastHSVValid"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R0 R2 K1 ["lastHSV"]
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["lastHexValid"]
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["lastRGBValid"]
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["lastHSVValid"]
        4 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onFocusLostHex"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onFocusLostRGB"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K2 ["onFocusLostHSV"]
       12 NEWCLOSURE                       R1 P3
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K3 ["onTextChangedHex"]
       16 NEWCLOSURE                       R1 P4
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K4 ["onTextChangedRGB"]
       20 NEWCLOSURE                       R1 P5
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K5 ["onTextChangedHSV"]
       24 NEWCLOSURE                       R1 P6
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K6 ["onFocusedHex"]
       28 NEWCLOSURE                       R1 P7
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R1 R0 K7 ["onFocusedRGB"]
       32 NEWCLOSURE                       R1 P8
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R1 R0 K8 ["onFocusedHSV"]
       36 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Style"]
        4 GETTABLEKS                       R2 R2 K2 ["ColorPropertiesPanel"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["new"]
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K4 ["new"]
       15 CALL                             R5 0 1
       16 GETTABLEKS                       R6 R1 K5 ["Hue"]
       18 GETTABLEKS                       R7 R1 K6 ["Saturation"]
       20 GETTABLEKS                       R8 R1 K7 ["Value"]
       22 GETTABLEKS                       R9 R1 K8 ["Color"]
       24 GETTABLEKS                       R10 R9 K9 ["r"]
       26 GETTABLEKS                       R11 R9 K10 ["g"]
       28 GETTABLEKS                       R12 R9 K11 ["b"]
       30 GETUPVAL                         R13 1
       31 GETTABLEKS                       R13 R13 K12 ["createElement"]
       33 GETUPVAL                         R14 2
       34 DUPTABLE                         R15 K19 [{"Size", "AutomaticSize", "Layout", "LayoutOrder", "Spacing", "VerticalAlignment"}]
       35 GETTABLEKS                       R16 R2 K13 ["Size"]
       37 SETTABLEKS                       R16 R15 K13 ["Size"]
       39 GETIMPORT                        R16 K22 [Enum.AutomaticSize.Y]
       41 SETTABLEKS                       R16 R15 K14 ["AutomaticSize"]
       43 GETIMPORT                        R16 K25 [Enum.FillDirection.Vertical]
       45 SETTABLEKS                       R16 R15 K15 ["Layout"]
       47 GETTABLEKS                       R16 R1 K16 ["LayoutOrder"]
       49 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
       51 GETTABLEKS                       R16 R2 K17 ["Spacing"]
       53 SETTABLEKS                       R16 R15 K17 ["Spacing"]
       55 GETIMPORT                        R16 K27 [Enum.VerticalAlignment.Top]
       57 SETTABLEKS                       R16 R15 K18 ["VerticalAlignment"]
       59 DUPTABLE                         R16 K32 [{"ColorPane", "Hex", "RGB", "HSV"}]
       60 GETUPVAL                         R17 1
       61 GETTABLEKS                       R17 R17 K12 ["createElement"]
       63 GETUPVAL                         R18 2
       64 DUPTABLE                         R19 K33 [{"LayoutOrder", "Size", "Layout", "VerticalAlignment"}]
       65 NAMECALL                         R20 R4 K34 ["getNextOrder"]
       67 CALL                             R20 1 1
       68 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
       70 GETTABLEKS                       R20 R2 K35 ["ColorPreviewSize"]
       72 SETTABLEKS                       R20 R19 K13 ["Size"]
       74 GETIMPORT                        R20 K25 [Enum.FillDirection.Vertical]
       76 SETTABLEKS                       R20 R19 K15 ["Layout"]
       78 GETIMPORT                        R20 K27 [Enum.VerticalAlignment.Top]
       80 SETTABLEKS                       R20 R19 K18 ["VerticalAlignment"]
       82 DUPTABLE                         R20 K38 [{"Preview", "TitleText"}]
       83 GETUPVAL                         R21 1
       84 GETTABLEKS                       R21 R21 K12 ["createElement"]
       86 GETUPVAL                         R22 2
       87 DUPTABLE                         R23 K40 [{"LayoutOrder", "Size", "BackgroundColor", "Style"}]
       88 NAMECALL                         R24 R5 K34 ["getNextOrder"]
       90 CALL                             R24 1 1
       91 SETTABLEKS                       R24 R23 K16 ["LayoutOrder"]
       93 GETTABLEKS                       R24 R2 K41 ["TextInputSize"]
       95 SETTABLEKS                       R24 R23 K13 ["Size"]
       97 GETTABLEKS                       R24 R1 K8 ["Color"]
       99 SETTABLEKS                       R24 R23 K39 ["BackgroundColor"]
      101 GETTABLEKS                       R24 R2 K42 ["ColorPreviewPaneStyle"]
      103 SETTABLEKS                       R24 R23 K1 ["Style"]
      105 CALL                             R21 2 1
      106 SETTABLEKS                       R21 R20 K36 ["Preview"]
      108 GETUPVAL                         R21 1
      109 GETTABLEKS                       R21 R21 K12 ["createElement"]
      111 GETUPVAL                         R22 3
      112 DUPTABLE                         R23 K47 [{"LayoutOrder", "Size", "TextXAlignment", "Text", "TextColor", "TextSize"}]
      113 NAMECALL                         R24 R5 K34 ["getNextOrder"]
      115 CALL                             R24 1 1
      116 SETTABLEKS                       R24 R23 K16 ["LayoutOrder"]
      118 GETTABLEKS                       R24 R2 K41 ["TextInputSize"]
      120 SETTABLEKS                       R24 R23 K13 ["Size"]
      122 GETIMPORT                        R24 K49 [Enum.TextXAlignment.Left]
      124 SETTABLEKS                       R24 R23 K43 ["TextXAlignment"]
      126 GETUPVAL                         R26 4
      127 LOADK                            R27 K50 ["ColorPicker"]
      128 LOADK                            R28 K8 ["Color"]
      129 NAMECALL                         R24 R3 K51 ["getProjectText"]
      131 CALL                             R24 4 1
      132 SETTABLEKS                       R24 R23 K44 ["Text"]
      134 GETTABLEKS                       R24 R2 K45 ["TextColor"]
      136 SETTABLEKS                       R24 R23 K45 ["TextColor"]
      138 GETTABLEKS                       R24 R2 K46 ["TextSize"]
      140 SETTABLEKS                       R24 R23 K46 ["TextSize"]
      142 CALL                             R21 2 1
      143 SETTABLEKS                       R21 R20 K37 ["TitleText"]
      145 CALL                             R17 3 1
      146 SETTABLEKS                       R17 R16 K28 ["ColorPane"]
      148 GETUPVAL                         R17 1
      149 GETTABLEKS                       R17 R17 K12 ["createElement"]
      151 GETUPVAL                         R18 5
      152 DUPTABLE                         R19 K57 [{"LayoutOrder", "Size", "Text", "BottomText", "OnFocusLost", "OnValidateText", "OnTextChanged", "OnFocused"}]
      153 NAMECALL                         R20 R4 K34 ["getNextOrder"]
      155 CALL                             R20 1 1
      156 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      158 GETTABLEKS                       R20 R2 K41 ["TextInputSize"]
      160 SETTABLEKS                       R20 R19 K13 ["Size"]
      162 GETIMPORT                        R20 K60 [string.format]
      164 LOADK                            R21 K61 ["#%02x%02x%02x"]
      165 MULK                             R22 R10 K62 [255]
      166 MULK                             R23 R11 K62 [255]
      167 MULK                             R24 R12 K62 [255]
      168 CALL                             R20 4 1
      169 SETTABLEKS                       R20 R19 K44 ["Text"]
      171 GETUPVAL                         R22 4
      172 LOADK                            R23 K50 ["ColorPicker"]
      173 LOADK                            R24 K29 ["Hex"]
      174 NAMECALL                         R20 R3 K51 ["getProjectText"]
      176 CALL                             R20 4 1
      177 SETTABLEKS                       R20 R19 K52 ["BottomText"]
      179 GETTABLEKS                       R20 R0 K63 ["onFocusLostHex"]
      181 SETTABLEKS                       R20 R19 K53 ["OnFocusLost"]
      183 GETUPVAL                         R20 6
      184 GETTABLEKS                       R20 R20 K64 ["validateHex"]
      186 SETTABLEKS                       R20 R19 K54 ["OnValidateText"]
      188 GETTABLEKS                       R20 R0 K65 ["onTextChangedHex"]
      190 SETTABLEKS                       R20 R19 K55 ["OnTextChanged"]
      192 GETTABLEKS                       R20 R0 K66 ["onFocusedHex"]
      194 SETTABLEKS                       R20 R19 K56 ["OnFocused"]
      196 CALL                             R17 2 1
      197 SETTABLEKS                       R17 R16 K29 ["Hex"]
      199 GETUPVAL                         R17 1
      200 GETTABLEKS                       R17 R17 K12 ["createElement"]
      202 GETUPVAL                         R18 5
      203 DUPTABLE                         R19 K57 [{"LayoutOrder", "Size", "Text", "BottomText", "OnFocusLost", "OnValidateText", "OnTextChanged", "OnFocused"}]
      204 NAMECALL                         R20 R4 K34 ["getNextOrder"]
      206 CALL                             R20 1 1
      207 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      209 GETTABLEKS                       R20 R2 K41 ["TextInputSize"]
      211 SETTABLEKS                       R20 R19 K13 ["Size"]
      213 LOADK                            R20 K67 ["%d, %d, %d"]
      214 MULK                             R22 R10 K62 [255]
      215 MULK                             R23 R11 K62 [255]
      216 MULK                             R24 R12 K62 [255]
      217 NAMECALL                         R20 R20 K59 ["format"]
      219 CALL                             R20 4 1
      220 SETTABLEKS                       R20 R19 K44 ["Text"]
      222 GETUPVAL                         R22 4
      223 LOADK                            R23 K50 ["ColorPicker"]
      224 LOADK                            R24 K30 ["RGB"]
      225 NAMECALL                         R20 R3 K51 ["getProjectText"]
      227 CALL                             R20 4 1
      228 SETTABLEKS                       R20 R19 K52 ["BottomText"]
      230 GETTABLEKS                       R20 R0 K68 ["onFocusLostRGB"]
      232 SETTABLEKS                       R20 R19 K53 ["OnFocusLost"]
      234 GETUPVAL                         R20 6
      235 GETTABLEKS                       R20 R20 K69 ["validateRGB"]
      237 SETTABLEKS                       R20 R19 K54 ["OnValidateText"]
      239 GETTABLEKS                       R20 R0 K70 ["onTextChangedRGB"]
      241 SETTABLEKS                       R20 R19 K55 ["OnTextChanged"]
      243 GETTABLEKS                       R20 R0 K71 ["onFocusedRGB"]
      245 SETTABLEKS                       R20 R19 K56 ["OnFocused"]
      247 CALL                             R17 2 1
      248 SETTABLEKS                       R17 R16 K30 ["RGB"]
      250 GETUPVAL                         R17 1
      251 GETTABLEKS                       R17 R17 K12 ["createElement"]
      253 GETUPVAL                         R18 5
      254 DUPTABLE                         R19 K57 [{"LayoutOrder", "Size", "Text", "BottomText", "OnFocusLost", "OnValidateText", "OnTextChanged", "OnFocused"}]
      255 NAMECALL                         R20 R4 K34 ["getNextOrder"]
      257 CALL                             R20 1 1
      258 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      260 GETTABLEKS                       R20 R2 K41 ["TextInputSize"]
      262 SETTABLEKS                       R20 R19 K13 ["Size"]
      264 LOADK                            R20 K67 ["%d, %d, %d"]
      265 MULK                             R22 R6 K72 [360]
      266 MULK                             R23 R7 K73 [100]
      267 MULK                             R24 R8 K73 [100]
      268 NAMECALL                         R20 R20 K59 ["format"]
      270 CALL                             R20 4 1
      271 SETTABLEKS                       R20 R19 K44 ["Text"]
      273 GETUPVAL                         R22 4
      274 LOADK                            R23 K50 ["ColorPicker"]
      275 LOADK                            R24 K31 ["HSV"]
      276 NAMECALL                         R20 R3 K51 ["getProjectText"]
      278 CALL                             R20 4 1
      279 SETTABLEKS                       R20 R19 K52 ["BottomText"]
      281 GETTABLEKS                       R20 R0 K74 ["onFocusLostHSV"]
      283 SETTABLEKS                       R20 R19 K53 ["OnFocusLost"]
      285 GETUPVAL                         R20 6
      286 GETTABLEKS                       R20 R20 K75 ["validateHSV"]
      288 SETTABLEKS                       R20 R19 K54 ["OnValidateText"]
      290 GETTABLEKS                       R20 R0 K76 ["onTextChangedHSV"]
      292 SETTABLEKS                       R20 R19 K55 ["OnTextChanged"]
      294 GETTABLEKS                       R20 R0 K77 ["onFocusedHSV"]
      296 SETTABLEKS                       R20 R19 K56 ["OnFocused"]
      298 CALL                             R17 2 1
      299 SETTABLEKS                       R17 R16 K31 ["HSV"]
      301 CALL                             R13 3 -1
      302 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Resources"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["LOCALIZATION_PROJECT_NAME"]
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K10 ["ContextServices"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R4 K11 ["withContext"]
       30 GETTABLEKS                       R6 R4 K12 ["Localization"]
       32 GETTABLEKS                       R7 R0 K2 ["UI"]
       34 GETIMPORT                        R8 K6 [require]
       36 GETTABLEKS                       R9 R7 K13 ["Components"]
       38 GETTABLEKS                       R9 R9 K14 ["Pane"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R10 R7 K13 ["Components"]
       45 GETTABLEKS                       R10 R10 K15 ["TextInput"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R11 R7 K13 ["Components"]
       52 GETTABLEKS                       R11 R11 K16 ["TextLabel"]
       54 CALL                             R10 1 1
       55 GETTABLEKS                       R11 R0 K17 ["Util"]
       57 GETIMPORT                        R12 K6 [require]
       59 GETTABLEKS                       R13 R11 K18 ["LayoutOrderIterator"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K6 [require]
       64 GETTABLEKS                       R14 R11 K19 ["ColorStringValidators"]
       66 CALL                             R13 1 1
       67 GETTABLEKS                       R14 R1 K20 ["PureComponent"]
       69 LOADK                            R16 K21 ["ColorPropertiesPanel"]
       70 NAMECALL                         R14 R14 K22 ["extend"]
       72 CALL                             R14 2 1
       73 DUPCLOSURE                       R15 K23 [PROTO_9]
       74 SETTABLEKS                       R15 R14 K24 ["init"]
       76 DUPCLOSURE                       R15 K25 [PROTO_10]
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R13
       84 SETTABLEKS                       R15 R14 K26 ["render"]
       86 MOVE                             R15 R5
       87 DUPTABLE                         R16 K27 [{"Localization"}]
       88 SETTABLEKS                       R6 R16 K12 ["Localization"]
       90 CALL                             R15 1 1
       91 MOVE                             R16 R14
       92 CALL                             R15 1 1
       93 MOVE                             R14 R15
       94 RETURN                           R14 1
