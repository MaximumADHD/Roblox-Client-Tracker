PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"focused"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["focused"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K1 [{"focused"}]
        2 LOADB                            R5 0
        3 SETTABLEKS                       R5 R4 K0 ["focused"]
        5 NAMECALL                         R2 R2 K2 ["setState"]
        7 CALL                             R2 2 0
        8 JUMPIFNOT                        R1 ; [+16]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["props"]
       12 GETTABLEKS                       R2 R3 K4 ["OnChanged"]
       14 GETTABLEKS                       R3 R0 K5 ["Text"]
       16 CALL                             R2 1 1
       17 JUMPIF                           R2 ; [+7]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K3 ["props"]
       21 GETTABLEKS                       R3 R4 K6 ["Value"]
       23 SETTABLEKS                       R3 R0 K5 ["Text"]
       25 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R2 R3 ; [+7]
        6 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        8 GETIMPORT                        R3 K5 [Enum.UserInputType.Touch]
       10 JUMPIFNOTEQ                      R2 R3 ; [+10]
       12 LOADN                            R2 0
       13 SETTABLEKS                       R2 R0 K6 ["SelectionStart"]
       15 GETTABLEKS                       R4 R0 K8 ["Text"]
       17 LENGTH                           R3 R4
       18 ADDK                             R2 R3 K7 [1]
       19 SETTABLEKS                       R2 R0 K9 ["CursorPosition"]
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"hovered"}]
        2 LOADB                            R4 1
        3 SETTABLEKS                       R4 R3 K0 ["hovered"]
        5 NAMECALL                         R1 R1 K2 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"hovered"}]
        2 LOADB                            R4 0
        3 SETTABLEKS                       R4 R3 K0 ["hovered"]
        5 NAMECALL                         R1 R1 K2 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R3 K2 [{"focused", "hovered"}]
        1 LOADB                            R4 0
        2 SETTABLEKS                       R4 R3 K0 ["focused"]
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K1 ["hovered"]
        7 NAMECALL                         R1 R0 K3 ["setState"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K4 ["createRef"]
       13 CALL                             R1 0 1
       14 SETTABLEKS                       R1 R0 K5 ["_textboxRef"]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K6 ["onFocused"]
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K7 ["onFocusLost"]
       24 DUPCLOSURE                       R1 K8 [PROTO_2]
       25 SETTABLEKS                       R1 R0 K9 ["onInputEnded"]
       27 NEWCLOSURE                       R1 P3
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K10 ["mouseEnter"]
       31 NEWCLOSURE                       R1 P4
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R1 R0 K11 ["mouseLeave"]
       35 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["OnHidden"]
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETTABLEKS                       R2 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R2 K1 ["OnHidden"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["DraggerContext"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 JUMPIF                           R4 ; [+2]
        9 LOADNIL                          R4
       10 RETURN                           R4 1
       11 GETUPVAL                         R5 0
       12 NAMECALL                         R6 R3 K4 ["getTheme"]
       14 CALL                             R6 1 1
       15 GETTABLE                         R4 R5 R6
       16 LOADNIL                          R5
       17 GETTABLEKS                       R6 R2 K5 ["focused"]
       19 JUMPIFNOT                        R6 ; [+3]
       20 GETTABLEKS                       R5 R4 K6 ["BorderSelected"]
       22 JUMP                             ; [+8]
       23 GETTABLEKS                       R6 R2 K7 ["hovered"]
       25 JUMPIFNOT                        R6 ; [+3]
       26 GETTABLEKS                       R5 R4 K8 ["BorderHover"]
       28 JUMP                             ; [+2]
       29 GETTABLEKS                       R5 R4 K9 ["Border"]
       31 LOADNIL                          R6
       32 GETTABLEKS                       R7 R1 K10 ["OnChanged"]
       34 JUMPIFNOT                        R7 ; [+86]
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R7 R8 K11 ["createElement"]
       38 LOADK                            R8 K12 ["TextBox"]
       39 NEWTABLE                         R9 16 0
       41 LOADB                            R10 0
       42 SETTABLEKS                       R10 R9 K13 ["ClearTextOnFocus"]
       44 GETIMPORT                        R10 K17 [Enum.AutomaticSize.XY]
       46 SETTABLEKS                       R10 R9 K15 ["AutomaticSize"]
       48 GETTABLEKS                       R10 R1 K18 ["Value"]
       50 SETTABLEKS                       R10 R9 K19 ["Text"]
       52 GETIMPORT                        R10 K22 [Enum.Font.SourceSansBold]
       54 SETTABLEKS                       R10 R9 K20 ["Font"]
       56 LOADN                            R10 24
       57 SETTABLEKS                       R10 R9 K23 ["TextSize"]
       59 LOADN                            R10 1
       60 SETTABLEKS                       R10 R9 K24 ["BackgroundTransparency"]
       62 GETTABLEKS                       R10 R4 K19 ["Text"]
       64 SETTABLEKS                       R10 R9 K25 ["TextColor3"]
       66 LOADB                            R10 1
       67 SETTABLEKS                       R10 R9 K26 ["Active"]
       69 GETUPVAL                         R12 1
       70 GETTABLEKS                       R11 R12 K27 ["Event"]
       72 GETTABLEKS                       R10 R11 K28 ["Focused"]
       74 GETTABLEKS                       R11 R0 K29 ["onFocused"]
       76 SETTABLE                         R11 R9 R10
       77 GETUPVAL                         R12 1
       78 GETTABLEKS                       R11 R12 K27 ["Event"]
       80 GETTABLEKS                       R10 R11 K30 ["FocusLost"]
       82 GETTABLEKS                       R11 R0 K31 ["onFocusLost"]
       84 SETTABLE                         R11 R9 R10
       85 GETUPVAL                         R12 1
       86 GETTABLEKS                       R11 R12 K27 ["Event"]
       88 GETTABLEKS                       R10 R11 K32 ["InputEnded"]
       90 GETTABLEKS                       R11 R0 K33 ["onInputEnded"]
       92 SETTABLE                         R11 R9 R10
       93 GETUPVAL                         R12 1
       94 GETTABLEKS                       R11 R12 K27 ["Event"]
       96 GETTABLEKS                       R10 R11 K34 ["MouseEnter"]
       98 GETTABLEKS                       R11 R0 K35 ["mouseEnter"]
      100 SETTABLE                         R11 R9 R10
      101 GETUPVAL                         R12 1
      102 GETTABLEKS                       R11 R12 K27 ["Event"]
      104 GETTABLEKS                       R10 R11 K36 ["MouseLeave"]
      106 GETTABLEKS                       R11 R0 K37 ["mouseLeave"]
      108 SETTABLE                         R11 R9 R10
      109 GETUPVAL                         R11 1
      110 GETTABLEKS                       R10 R11 K38 ["Ref"]
      112 GETTABLEKS                       R11 R0 K39 ["_textboxRef"]
      114 SETTABLE                         R11 R9 R10
      115 LOADN                            R10 2
      116 SETTABLEKS                       R10 R9 K40 ["ZIndex"]
      118 CALL                             R7 2 1
      119 MOVE                             R6 R7
      120 JUMP                             ; [+35]
      121 GETUPVAL                         R8 1
      122 GETTABLEKS                       R7 R8 K11 ["createElement"]
      124 LOADK                            R8 K41 ["TextLabel"]
      125 DUPTABLE                         R9 K43 [{"AutomaticSize", "Text", "BackgroundTransparency", "Font", "TextSize", "BorderSizePixel", "TextColor3", "ZIndex"}]
      126 GETIMPORT                        R10 K17 [Enum.AutomaticSize.XY]
      128 SETTABLEKS                       R10 R9 K15 ["AutomaticSize"]
      130 GETTABLEKS                       R10 R1 K18 ["Value"]
      132 SETTABLEKS                       R10 R9 K19 ["Text"]
      134 LOADN                            R10 1
      135 SETTABLEKS                       R10 R9 K24 ["BackgroundTransparency"]
      137 GETIMPORT                        R10 K22 [Enum.Font.SourceSansBold]
      139 SETTABLEKS                       R10 R9 K20 ["Font"]
      141 LOADN                            R10 24
      142 SETTABLEKS                       R10 R9 K23 ["TextSize"]
      144 LOADN                            R10 0
      145 SETTABLEKS                       R10 R9 K42 ["BorderSizePixel"]
      147 GETTABLEKS                       R10 R4 K19 ["Text"]
      149 SETTABLEKS                       R10 R9 K25 ["TextColor3"]
      151 LOADN                            R10 2
      152 SETTABLEKS                       R10 R9 K40 ["ZIndex"]
      154 CALL                             R7 2 1
      155 MOVE                             R6 R7
      156 GETUPVAL                         R8 1
      157 GETTABLEKS                       R7 R8 K11 ["createElement"]
      159 GETUPVAL                         R9 1
      160 GETTABLEKS                       R8 R9 K44 ["Portal"]
      162 DUPTABLE                         R9 K46 [{"target"}]
      163 GETTABLEKS                       R10 R1 K2 ["DraggerContext"]
      165 NAMECALL                         R10 R10 K47 ["getGuiParent"]
      167 CALL                             R10 1 1
      168 SETTABLEKS                       R10 R9 K45 ["target"]
      170 DUPTABLE                         R10 K49 [{"FloatingValueInput"}]
      171 GETUPVAL                         R12 1
      172 GETTABLEKS                       R11 R12 K11 ["createElement"]
      174 LOADK                            R12 K50 ["ScreenGui"]
      175 DUPTABLE                         R13 K53 [{"IgnoreGuiInset", "ZIndexBehavior"}]
      176 LOADB                            R14 1
      177 SETTABLEKS                       R14 R13 K51 ["IgnoreGuiInset"]
      179 GETIMPORT                        R14 K55 [Enum.ZIndexBehavior.Sibling]
      181 SETTABLEKS                       R14 R13 K52 ["ZIndexBehavior"]
      183 DUPTABLE                         R14 K57 [{"Background"}]
      184 GETUPVAL                         R16 1
      185 GETTABLEKS                       R15 R16 K11 ["createElement"]
      187 LOADK                            R16 K58 ["ImageLabel"]
      188 DUPTABLE                         R17 K64 [{"AnchorPoint", "Position", "AutomaticSize", "Image", "SliceCenter", "ScaleType", "ImageColor3", "BackgroundTransparency", "ZIndex"}]
      189 GETIMPORT                        R18 K67 [Vector2.new]
      191 LOADK                            R19 K68 [0.5]
      192 LOADK                            R20 K68 [0.5]
      193 CALL                             R18 2 1
      194 SETTABLEKS                       R18 R17 K59 ["AnchorPoint"]
      196 GETTABLEKS                       R18 R1 K3 ["Position"]
      198 SETTABLEKS                       R18 R17 K3 ["Position"]
      200 GETIMPORT                        R18 K17 [Enum.AutomaticSize.XY]
      202 SETTABLEKS                       R18 R17 K15 ["AutomaticSize"]
      204 LOADK                            R18 K69 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
      205 SETTABLEKS                       R18 R17 K60 ["Image"]
      207 GETIMPORT                        R18 K71 [Rect.new]
      209 LOADN                            R19 3
      210 LOADN                            R20 3
      211 LOADN                            R21 13
      212 LOADN                            R22 13
      213 CALL                             R18 4 1
      214 SETTABLEKS                       R18 R17 K61 ["SliceCenter"]
      216 GETIMPORT                        R18 K73 [Enum.ScaleType.Slice]
      218 SETTABLEKS                       R18 R17 K62 ["ScaleType"]
      220 GETTABLEKS                       R18 R4 K56 ["Background"]
      222 SETTABLEKS                       R18 R17 K63 ["ImageColor3"]
      224 LOADN                            R18 1
      225 SETTABLEKS                       R18 R17 K24 ["BackgroundTransparency"]
      227 LOADN                            R18 0
      228 SETTABLEKS                       R18 R17 K40 ["ZIndex"]
      230 DUPTABLE                         R18 K74 [{"Border"}]
      231 GETUPVAL                         R20 1
      232 GETTABLEKS                       R19 R20 K11 ["createElement"]
      234 LOADK                            R20 K58 ["ImageLabel"]
      235 DUPTABLE                         R21 K75 [{"AutomaticSize", "Image", "SliceCenter", "ScaleType", "ImageColor3", "BackgroundTransparency", "ZIndex"}]
      236 GETIMPORT                        R22 K17 [Enum.AutomaticSize.XY]
      238 SETTABLEKS                       R22 R21 K15 ["AutomaticSize"]
      240 LOADK                            R22 K76 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
      241 SETTABLEKS                       R22 R21 K60 ["Image"]
      243 GETIMPORT                        R22 K71 [Rect.new]
      245 LOADN                            R23 3
      246 LOADN                            R24 3
      247 LOADN                            R25 13
      248 LOADN                            R26 13
      249 CALL                             R22 4 1
      250 SETTABLEKS                       R22 R21 K61 ["SliceCenter"]
      252 GETIMPORT                        R22 K73 [Enum.ScaleType.Slice]
      254 SETTABLEKS                       R22 R21 K62 ["ScaleType"]
      256 SETTABLEKS                       R5 R21 K63 ["ImageColor3"]
      258 LOADN                            R22 1
      259 SETTABLEKS                       R22 R21 K24 ["BackgroundTransparency"]
      261 LOADN                            R22 1
      262 SETTABLEKS                       R22 R21 K40 ["ZIndex"]
      264 NEWTABLE                         R22 1 1
      266 GETUPVAL                         R24 1
      267 GETTABLEKS                       R23 R24 K11 ["createElement"]
      269 LOADK                            R24 K77 ["UIPadding"]
      270 DUPTABLE                         R25 K82 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      271 GETIMPORT                        R26 K84 [UDim.new]
      273 LOADN                            R27 0
      274 LOADN                            R28 4
      275 CALL                             R26 2 1
      276 SETTABLEKS                       R26 R25 K78 ["PaddingLeft"]
      278 GETIMPORT                        R26 K84 [UDim.new]
      280 LOADN                            R27 0
      281 LOADN                            R28 4
      282 CALL                             R26 2 1
      283 SETTABLEKS                       R26 R25 K79 ["PaddingRight"]
      285 GETIMPORT                        R26 K84 [UDim.new]
      287 LOADN                            R27 0
      288 LOADN                            R28 2
      289 CALL                             R26 2 1
      290 SETTABLEKS                       R26 R25 K80 ["PaddingTop"]
      292 GETIMPORT                        R26 K84 [UDim.new]
      294 LOADN                            R27 0
      295 LOADN                            R28 4
      296 CALL                             R26 2 1
      297 SETTABLEKS                       R26 R25 K81 ["PaddingBottom"]
      299 CALL                             R23 2 1
      300 SETLIST                          R22 R23 1 [1]
      302 SETTABLEKS                       R6 R22 K85 ["Label"]
      304 CALL                             R19 3 1
      305 SETTABLEKS                       R19 R18 K9 ["Border"]
      307 CALL                             R15 3 1
      308 SETTABLEKS                       R15 R14 K56 ["Background"]
      310 CALL                             R11 3 1
      311 SETTABLEKS                       R11 R10 K48 ["FloatingValueInput"]
      313 CALL                             R7 3 -1
      314 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Utility"]
       18 GETTABLEKS                       R4 R5 K7 ["Colors"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R2 K8 ["PureComponent"]
       23 LOADK                            R6 K9 ["FloatingValueInput"]
       24 NAMECALL                         R4 R4 K10 ["extend"]
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K13 [Color3.fromRGB]
       29 LOADN                            R6 0
       30 LOADN                            R7 139
       31 LOADN                            R8 234
       32 CALL                             R5 3 1
       33 DUPTABLE                         R6 K16 [{"Dark", "Light"}]
       34 DUPTABLE                         R7 K22 [{"Background", "Border", "BorderHover", "BorderSelected", "Text"}]
       35 GETIMPORT                        R8 K13 [Color3.fromRGB]
       37 LOADN                            R9 37
       38 LOADN                            R10 37
       39 LOADN                            R11 37
       40 CALL                             R8 3 1
       41 SETTABLEKS                       R8 R7 K17 ["Background"]
       43 GETTABLEKS                       R8 R3 K23 ["BLACK"]
       45 SETTABLEKS                       R8 R7 K18 ["Border"]
       47 SETTABLEKS                       R5 R7 K19 ["BorderHover"]
       49 SETTABLEKS                       R5 R7 K20 ["BorderSelected"]
       51 GETTABLEKS                       R8 R3 K24 ["WHITE"]
       53 SETTABLEKS                       R8 R7 K21 ["Text"]
       55 SETTABLEKS                       R7 R6 K14 ["Dark"]
       57 DUPTABLE                         R7 K22 [{"Background", "Border", "BorderHover", "BorderSelected", "Text"}]
       58 GETTABLEKS                       R8 R3 K24 ["WHITE"]
       60 SETTABLEKS                       R8 R7 K17 ["Background"]
       62 GETIMPORT                        R8 K13 [Color3.fromRGB]
       64 LOADN                            R9 182
       65 LOADN                            R10 182
       66 LOADN                            R11 182
       67 CALL                             R8 3 1
       68 SETTABLEKS                       R8 R7 K18 ["Border"]
       70 SETTABLEKS                       R5 R7 K19 ["BorderHover"]
       72 SETTABLEKS                       R5 R7 K20 ["BorderSelected"]
       74 GETTABLEKS                       R8 R3 K23 ["BLACK"]
       76 SETTABLEKS                       R8 R7 K21 ["Text"]
       78 SETTABLEKS                       R7 R6 K15 ["Light"]
       80 DUPCLOSURE                       R7 K25 [PROTO_5]
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R7 R4 K26 ["init"]
       84 DUPCLOSURE                       R7 K27 [PROTO_6]
       85 SETTABLEKS                       R7 R4 K28 ["willUnmount"]
       87 DUPCLOSURE                       R7 K29 [PROTO_7]
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R2
       90 SETTABLEKS                       R7 R4 K30 ["render"]
       92 RETURN                           R4 1
