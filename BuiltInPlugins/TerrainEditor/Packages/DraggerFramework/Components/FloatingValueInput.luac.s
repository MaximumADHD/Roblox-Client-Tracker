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
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["props"]
       12 GETTABLEKS                       R2 R2 K4 ["OnChanged"]
       14 GETTABLEKS                       R3 R0 K5 ["Text"]
       16 CALL                             R2 1 1
       17 JUMPIF                           R2 ; [+7]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K3 ["props"]
       21 GETTABLEKS                       R3 R3 K6 ["Value"]
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
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K4 ["createRef"]
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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["OnHidden"]
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["OnHidden"]
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
       34 JUMPIFNOT                        R7 ; [+97]
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R7 R7 K11 ["createElement"]
       38 LOADK                            R8 K12 ["TextBox"]
       39 NEWTABLE                         R9 16 0
       41 LOADB                            R10 0
       42 SETTABLEKS                       R10 R9 K13 ["ClearTextOnFocus"]
       44 GETIMPORT                        R10 K17 [Enum.AutomaticSize.XY]
       46 SETTABLEKS                       R10 R9 K15 ["AutomaticSize"]
       48 GETTABLEKS                       R10 R1 K18 ["Value"]
       50 SETTABLEKS                       R10 R9 K19 ["Text"]
       52 GETUPVAL                         R11 2
       53 CALL                             R11 0 1
       54 JUMPIFNOT                        R11 ; [+3]
       55 GETIMPORT                        R10 K22 [Enum.Font.RobotoMono]
       57 JUMP                             ; [+2]
       58 GETIMPORT                        R10 K24 [Enum.Font.SourceSansBold]
       60 SETTABLEKS                       R10 R9 K20 ["Font"]
       62 GETUPVAL                         R11 2
       63 CALL                             R11 0 1
       64 JUMPIFNOT                        R11 ; [+2]
       65 LOADN                            R10 16
       66 JUMP                             ; [+1]
       67 LOADN                            R10 24
       68 SETTABLEKS                       R10 R9 K25 ["TextSize"]
       70 LOADN                            R10 1
       71 SETTABLEKS                       R10 R9 K26 ["BackgroundTransparency"]
       73 GETTABLEKS                       R10 R4 K19 ["Text"]
       75 SETTABLEKS                       R10 R9 K27 ["TextColor3"]
       77 LOADB                            R10 1
       78 SETTABLEKS                       R10 R9 K28 ["Active"]
       80 GETUPVAL                         R10 1
       81 GETTABLEKS                       R10 R10 K29 ["Event"]
       83 GETTABLEKS                       R10 R10 K30 ["Focused"]
       85 GETTABLEKS                       R11 R0 K31 ["onFocused"]
       87 SETTABLE                         R11 R9 R10
       88 GETUPVAL                         R10 1
       89 GETTABLEKS                       R10 R10 K29 ["Event"]
       91 GETTABLEKS                       R10 R10 K32 ["FocusLost"]
       93 GETTABLEKS                       R11 R0 K33 ["onFocusLost"]
       95 SETTABLE                         R11 R9 R10
       96 GETUPVAL                         R10 1
       97 GETTABLEKS                       R10 R10 K29 ["Event"]
       99 GETTABLEKS                       R10 R10 K34 ["InputEnded"]
      101 GETTABLEKS                       R11 R0 K35 ["onInputEnded"]
      103 SETTABLE                         R11 R9 R10
      104 GETUPVAL                         R10 1
      105 GETTABLEKS                       R10 R10 K29 ["Event"]
      107 GETTABLEKS                       R10 R10 K36 ["MouseEnter"]
      109 GETTABLEKS                       R11 R0 K37 ["mouseEnter"]
      111 SETTABLE                         R11 R9 R10
      112 GETUPVAL                         R10 1
      113 GETTABLEKS                       R10 R10 K29 ["Event"]
      115 GETTABLEKS                       R10 R10 K38 ["MouseLeave"]
      117 GETTABLEKS                       R11 R0 K39 ["mouseLeave"]
      119 SETTABLE                         R11 R9 R10
      120 GETUPVAL                         R10 1
      121 GETTABLEKS                       R10 R10 K40 ["Ref"]
      123 GETTABLEKS                       R11 R0 K41 ["_textboxRef"]
      125 SETTABLE                         R11 R9 R10
      126 LOADN                            R10 2
      127 SETTABLEKS                       R10 R9 K42 ["ZIndex"]
      129 CALL                             R7 2 1
      130 MOVE                             R6 R7
      131 JUMP                             ; [+46]
      132 GETUPVAL                         R7 1
      133 GETTABLEKS                       R7 R7 K11 ["createElement"]
      135 LOADK                            R8 K43 ["TextLabel"]
      136 DUPTABLE                         R9 K45 [{"AutomaticSize", "Text", "BackgroundTransparency", "Font", "TextSize", "BorderSizePixel", "TextColor3", "ZIndex"}]
      137 GETIMPORT                        R10 K17 [Enum.AutomaticSize.XY]
      139 SETTABLEKS                       R10 R9 K15 ["AutomaticSize"]
      141 GETTABLEKS                       R10 R1 K18 ["Value"]
      143 SETTABLEKS                       R10 R9 K19 ["Text"]
      145 LOADN                            R10 1
      146 SETTABLEKS                       R10 R9 K26 ["BackgroundTransparency"]
      148 GETUPVAL                         R11 2
      149 CALL                             R11 0 1
      150 JUMPIFNOT                        R11 ; [+3]
      151 GETIMPORT                        R10 K22 [Enum.Font.RobotoMono]
      153 JUMP                             ; [+2]
      154 GETIMPORT                        R10 K24 [Enum.Font.SourceSansBold]
      156 SETTABLEKS                       R10 R9 K20 ["Font"]
      158 GETUPVAL                         R11 2
      159 CALL                             R11 0 1
      160 JUMPIFNOT                        R11 ; [+2]
      161 LOADN                            R10 16
      162 JUMP                             ; [+1]
      163 LOADN                            R10 24
      164 SETTABLEKS                       R10 R9 K25 ["TextSize"]
      166 LOADN                            R10 0
      167 SETTABLEKS                       R10 R9 K44 ["BorderSizePixel"]
      169 GETTABLEKS                       R10 R4 K19 ["Text"]
      171 SETTABLEKS                       R10 R9 K27 ["TextColor3"]
      173 LOADN                            R10 2
      174 SETTABLEKS                       R10 R9 K42 ["ZIndex"]
      176 CALL                             R7 2 1
      177 MOVE                             R6 R7
      178 GETUPVAL                         R7 1
      179 GETTABLEKS                       R7 R7 K11 ["createElement"]
      181 GETUPVAL                         R8 1
      182 GETTABLEKS                       R8 R8 K46 ["Portal"]
      184 DUPTABLE                         R9 K48 [{"target"}]
      185 GETTABLEKS                       R10 R1 K2 ["DraggerContext"]
      187 NAMECALL                         R10 R10 K49 ["getGuiParent"]
      189 CALL                             R10 1 1
      190 SETTABLEKS                       R10 R9 K47 ["target"]
      192 DUPTABLE                         R10 K51 [{"FloatingValueInput"}]
      193 GETUPVAL                         R11 1
      194 GETTABLEKS                       R11 R11 K11 ["createElement"]
      196 LOADK                            R12 K52 ["ScreenGui"]
      197 DUPTABLE                         R13 K55 [{"IgnoreGuiInset", "ZIndexBehavior"}]
      198 LOADB                            R14 1
      199 SETTABLEKS                       R14 R13 K53 ["IgnoreGuiInset"]
      201 GETIMPORT                        R14 K57 [Enum.ZIndexBehavior.Sibling]
      203 SETTABLEKS                       R14 R13 K54 ["ZIndexBehavior"]
      205 DUPTABLE                         R14 K59 [{"Background"}]
      206 GETUPVAL                         R15 1
      207 GETTABLEKS                       R15 R15 K11 ["createElement"]
      209 LOADK                            R16 K60 ["ImageLabel"]
      210 DUPTABLE                         R17 K66 [{"AnchorPoint", "Position", "AutomaticSize", "Image", "SliceCenter", "ScaleType", "ImageColor3", "BackgroundTransparency", "ZIndex"}]
      211 GETIMPORT                        R18 K69 [Vector2.new]
      213 LOADK                            R19 K70 [0.5]
      214 LOADK                            R20 K70 [0.5]
      215 CALL                             R18 2 1
      216 SETTABLEKS                       R18 R17 K61 ["AnchorPoint"]
      218 GETTABLEKS                       R18 R1 K3 ["Position"]
      220 SETTABLEKS                       R18 R17 K3 ["Position"]
      222 GETIMPORT                        R18 K17 [Enum.AutomaticSize.XY]
      224 SETTABLEKS                       R18 R17 K15 ["AutomaticSize"]
      226 LOADK                            R18 K71 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
      227 SETTABLEKS                       R18 R17 K62 ["Image"]
      229 GETIMPORT                        R18 K73 [Rect.new]
      231 LOADN                            R19 3
      232 LOADN                            R20 3
      233 LOADN                            R21 13
      234 LOADN                            R22 13
      235 CALL                             R18 4 1
      236 SETTABLEKS                       R18 R17 K63 ["SliceCenter"]
      238 GETIMPORT                        R18 K75 [Enum.ScaleType.Slice]
      240 SETTABLEKS                       R18 R17 K64 ["ScaleType"]
      242 GETTABLEKS                       R18 R4 K58 ["Background"]
      244 SETTABLEKS                       R18 R17 K65 ["ImageColor3"]
      246 LOADN                            R18 1
      247 SETTABLEKS                       R18 R17 K26 ["BackgroundTransparency"]
      249 LOADN                            R18 0
      250 SETTABLEKS                       R18 R17 K42 ["ZIndex"]
      252 DUPTABLE                         R18 K76 [{"Border"}]
      253 GETUPVAL                         R19 1
      254 GETTABLEKS                       R19 R19 K11 ["createElement"]
      256 LOADK                            R20 K60 ["ImageLabel"]
      257 DUPTABLE                         R21 K77 [{"AutomaticSize", "Image", "SliceCenter", "ScaleType", "ImageColor3", "BackgroundTransparency", "ZIndex"}]
      258 GETIMPORT                        R22 K17 [Enum.AutomaticSize.XY]
      260 SETTABLEKS                       R22 R21 K15 ["AutomaticSize"]
      262 LOADK                            R22 K78 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
      263 SETTABLEKS                       R22 R21 K62 ["Image"]
      265 GETIMPORT                        R22 K73 [Rect.new]
      267 LOADN                            R23 3
      268 LOADN                            R24 3
      269 LOADN                            R25 13
      270 LOADN                            R26 13
      271 CALL                             R22 4 1
      272 SETTABLEKS                       R22 R21 K63 ["SliceCenter"]
      274 GETIMPORT                        R22 K75 [Enum.ScaleType.Slice]
      276 SETTABLEKS                       R22 R21 K64 ["ScaleType"]
      278 SETTABLEKS                       R5 R21 K65 ["ImageColor3"]
      280 LOADN                            R22 1
      281 SETTABLEKS                       R22 R21 K26 ["BackgroundTransparency"]
      283 LOADN                            R22 1
      284 SETTABLEKS                       R22 R21 K42 ["ZIndex"]
      286 NEWTABLE                         R22 1 1
      288 GETUPVAL                         R23 1
      289 GETTABLEKS                       R23 R23 K11 ["createElement"]
      291 LOADK                            R24 K79 ["UIPadding"]
      292 DUPTABLE                         R25 K84 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      293 GETIMPORT                        R26 K86 [UDim.new]
      295 LOADN                            R27 0
      296 LOADN                            R28 4
      297 CALL                             R26 2 1
      298 SETTABLEKS                       R26 R25 K80 ["PaddingLeft"]
      300 GETIMPORT                        R26 K86 [UDim.new]
      302 LOADN                            R27 0
      303 LOADN                            R28 4
      304 CALL                             R26 2 1
      305 SETTABLEKS                       R26 R25 K81 ["PaddingRight"]
      307 GETIMPORT                        R26 K86 [UDim.new]
      309 LOADN                            R27 0
      310 LOADN                            R28 2
      311 CALL                             R26 2 1
      312 SETTABLEKS                       R26 R25 K82 ["PaddingTop"]
      314 GETIMPORT                        R26 K86 [UDim.new]
      316 LOADN                            R27 0
      317 LOADN                            R28 4
      318 CALL                             R26 2 1
      319 SETTABLEKS                       R26 R25 K83 ["PaddingBottom"]
      321 CALL                             R23 2 1
      322 SETLIST                          R22 R23 1 [1]
      324 SETTABLEKS                       R6 R22 K87 ["Label"]
      326 CALL                             R19 3 1
      327 SETTABLEKS                       R19 R18 K9 ["Border"]
      329 CALL                             R15 3 1
      330 SETTABLEKS                       R15 R14 K58 ["Background"]
      332 CALL                             R11 3 1
      333 SETTABLEKS                       R11 R10 K50 ["FloatingValueInput"]
      335 CALL                             R7 3 -1
      336 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Utility"]
       18 GETTABLEKS                       R4 R4 K7 ["Colors"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Flags"]
       25 GETTABLEKS                       R5 R5 K9 ["getFFlagNextGenDraggers"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R2 K10 ["PureComponent"]
       30 LOADK                            R7 K11 ["FloatingValueInput"]
       31 NAMECALL                         R5 R5 K12 ["extend"]
       33 CALL                             R5 2 1
       34 GETIMPORT                        R6 K15 [Color3.fromRGB]
       36 LOADN                            R7 0
       37 LOADN                            R8 139
       38 LOADN                            R9 234
       39 CALL                             R6 3 1
       40 DUPTABLE                         R7 K18 [{"Dark", "Light"}]
       41 DUPTABLE                         R8 K24 [{"Background", "Border", "BorderHover", "BorderSelected", "Text"}]
       42 MOVE                             R10 R4
       43 CALL                             R10 0 1
       44 JUMPIFNOT                        R10 ; [+5]
       45 GETIMPORT                        R9 K26 [Color3.fromHex]
       47 LOADK                            R10 K27 ["#121215"]
       48 CALL                             R9 1 1
       49 JUMP                             ; [+6]
       50 GETIMPORT                        R9 K15 [Color3.fromRGB]
       52 LOADN                            R10 37
       53 LOADN                            R11 37
       54 LOADN                            R12 37
       55 CALL                             R9 3 1
       56 SETTABLEKS                       R9 R8 K19 ["Background"]
       58 GETTABLEKS                       R9 R3 K28 ["BLACK"]
       60 SETTABLEKS                       R9 R8 K20 ["Border"]
       62 SETTABLEKS                       R6 R8 K21 ["BorderHover"]
       64 SETTABLEKS                       R6 R8 K22 ["BorderSelected"]
       66 GETTABLEKS                       R9 R3 K29 ["WHITE"]
       68 SETTABLEKS                       R9 R8 K23 ["Text"]
       70 SETTABLEKS                       R8 R7 K16 ["Dark"]
       72 DUPTABLE                         R8 K24 [{"Background", "Border", "BorderHover", "BorderSelected", "Text"}]
       73 GETTABLEKS                       R9 R3 K29 ["WHITE"]
       75 SETTABLEKS                       R9 R8 K19 ["Background"]
       77 GETIMPORT                        R9 K15 [Color3.fromRGB]
       79 LOADN                            R10 182
       80 LOADN                            R11 182
       81 LOADN                            R12 182
       82 CALL                             R9 3 1
       83 SETTABLEKS                       R9 R8 K20 ["Border"]
       85 SETTABLEKS                       R6 R8 K21 ["BorderHover"]
       87 SETTABLEKS                       R6 R8 K22 ["BorderSelected"]
       89 GETTABLEKS                       R9 R3 K28 ["BLACK"]
       91 SETTABLEKS                       R9 R8 K23 ["Text"]
       93 SETTABLEKS                       R8 R7 K17 ["Light"]
       95 DUPCLOSURE                       R8 K30 [PROTO_5]
       96 CAPTURE                          VAL R2
       97 SETTABLEKS                       R8 R5 K31 ["init"]
       99 DUPCLOSURE                       R8 K32 [PROTO_6]
      100 SETTABLEKS                       R8 R5 K33 ["willUnmount"]
      102 DUPCLOSURE                       R8 K34 [PROTO_7]
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R4
      106 SETTABLEKS                       R8 R5 K35 ["render"]
      108 RETURN                           R5 1
