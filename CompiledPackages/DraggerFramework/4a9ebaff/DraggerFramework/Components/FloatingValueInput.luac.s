PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{[1] = False}]
        2 NAMECALL                         R2 R2 K3 ["setState"]
        4 CALL                             R2 2 0
        5 JUMPIFNOT                        R1 ; [+16]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["props"]
        9 GETTABLEKS                       R2 R2 K5 ["OnChanged"]
       11 GETTABLEKS                       R3 R0 K6 ["Text"]
       13 CALL                             R2 1 1
       14 JUMPIF                           R2 ; [+7]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K4 ["props"]
       18 GETTABLEKS                       R3 R3 K7 ["Value"]
       20 SETTABLEKS                       R3 R0 K6 ["Text"]
       22 RETURN                           R0 0

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
        1 DUPTABLE                         R3 K2 [{[1] = True}]
        2 NAMECALL                         R1 R1 K3 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{[1] = False}]
        2 NAMECALL                         R1 R1 K3 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R3 K3 [{[1] = False, ["hovered"] = False}]
        1 NAMECALL                         R1 R0 K4 ["setState"]
        3 CALL                             R1 2 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K5 ["createRef"]
        7 CALL                             R1 0 1
        8 SETTABLEKS                       R1 R0 K6 ["_textboxRef"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K7 ["onFocused"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K8 ["onFocusLost"]
       18 DUPCLOSURE                       R1 K9 [PROTO_2]
       19 SETTABLEKS                       R1 R0 K10 ["onInputEnded"]
       21 NEWCLOSURE                       R1 P3
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K11 ["mouseEnter"]
       25 NEWCLOSURE                       R1 P4
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K12 ["mouseLeave"]
       29 RETURN                           R0 0

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
      131 JUMP                             ; [+37]
      132 GETUPVAL                         R7 1
      133 GETTABLEKS                       R7 R7 K11 ["createElement"]
      135 LOADK                            R8 K43 ["TextLabel"]
      136 DUPTABLE                         R9 K48 [{["AutomaticSize"], ["Text"], ["BackgroundTransparency"] = 1, ["Font"], ["TextSize"], ["BorderSizePixel"] = 0, ["TextColor3"], ["ZIndex"] = 2}]
      137 GETIMPORT                        R10 K17 [Enum.AutomaticSize.XY]
      139 SETTABLEKS                       R10 R9 K15 ["AutomaticSize"]
      141 GETTABLEKS                       R10 R1 K18 ["Value"]
      143 SETTABLEKS                       R10 R9 K19 ["Text"]
      145 GETUPVAL                         R11 2
      146 CALL                             R11 0 1
      147 JUMPIFNOT                        R11 ; [+3]
      148 GETIMPORT                        R10 K22 [Enum.Font.RobotoMono]
      150 JUMP                             ; [+2]
      151 GETIMPORT                        R10 K24 [Enum.Font.SourceSansBold]
      153 SETTABLEKS                       R10 R9 K20 ["Font"]
      155 GETUPVAL                         R11 2
      156 CALL                             R11 0 1
      157 JUMPIFNOT                        R11 ; [+2]
      158 LOADN                            R10 16
      159 JUMP                             ; [+1]
      160 LOADN                            R10 24
      161 SETTABLEKS                       R10 R9 K25 ["TextSize"]
      163 GETTABLEKS                       R10 R4 K19 ["Text"]
      165 SETTABLEKS                       R10 R9 K27 ["TextColor3"]
      167 CALL                             R7 2 1
      168 MOVE                             R6 R7
      169 GETUPVAL                         R7 1
      170 GETTABLEKS                       R7 R7 K11 ["createElement"]
      172 GETUPVAL                         R8 1
      173 GETTABLEKS                       R8 R8 K49 ["Portal"]
      175 DUPTABLE                         R9 K51 [{"target"}]
      176 GETTABLEKS                       R10 R1 K2 ["DraggerContext"]
      178 NAMECALL                         R10 R10 K52 ["getGuiParent"]
      180 CALL                             R10 1 1
      181 SETTABLEKS                       R10 R9 K50 ["target"]
      183 DUPTABLE                         R10 K54 [{"FloatingValueInput"}]
      184 GETUPVAL                         R11 1
      185 GETTABLEKS                       R11 R11 K11 ["createElement"]
      187 LOADK                            R12 K55 ["ScreenGui"]
      188 DUPTABLE                         R13 K59 [{["IgnoreGuiInset"] = True, ["ZIndexBehavior"]}]
      189 GETIMPORT                        R14 K61 [Enum.ZIndexBehavior.Sibling]
      191 SETTABLEKS                       R14 R13 K58 ["ZIndexBehavior"]
      193 DUPTABLE                         R14 K63 [{"Background"}]
      194 GETUPVAL                         R15 1
      195 GETTABLEKS                       R15 R15 K11 ["createElement"]
      197 LOADK                            R16 K64 ["ImageLabel"]
      198 DUPTABLE                         R17 K71 [{["AnchorPoint"], ["Position"], ["AutomaticSize"], ["Image"] = "rbxasset://textures/StudioToolbox/RoundedBackground.png", ["SliceCenter"], ["ScaleType"], ["ImageColor3"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 0}]
      199 GETIMPORT                        R18 K74 [Vector2.new]
      201 LOADK                            R19 K75 [0.5]
      202 LOADK                            R20 K75 [0.5]
      203 CALL                             R18 2 1
      204 SETTABLEKS                       R18 R17 K65 ["AnchorPoint"]
      206 GETTABLEKS                       R18 R1 K3 ["Position"]
      208 SETTABLEKS                       R18 R17 K3 ["Position"]
      210 GETIMPORT                        R18 K17 [Enum.AutomaticSize.XY]
      212 SETTABLEKS                       R18 R17 K15 ["AutomaticSize"]
      214 GETIMPORT                        R18 K77 [Rect.new]
      216 LOADN                            R19 3
      217 LOADN                            R20 3
      218 LOADN                            R21 13
      219 LOADN                            R22 13
      220 CALL                             R18 4 1
      221 SETTABLEKS                       R18 R17 K68 ["SliceCenter"]
      223 GETIMPORT                        R18 K79 [Enum.ScaleType.Slice]
      225 SETTABLEKS                       R18 R17 K69 ["ScaleType"]
      227 GETTABLEKS                       R18 R4 K62 ["Background"]
      229 SETTABLEKS                       R18 R17 K70 ["ImageColor3"]
      231 DUPTABLE                         R18 K80 [{"Border"}]
      232 GETUPVAL                         R19 1
      233 GETTABLEKS                       R19 R19 K11 ["createElement"]
      235 LOADK                            R20 K64 ["ImageLabel"]
      236 DUPTABLE                         R21 K82 [{["AutomaticSize"], ["Image"] = "rbxasset://textures/StudioToolbox/RoundedBorder.png", ["SliceCenter"], ["ScaleType"], ["ImageColor3"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 1}]
      237 GETIMPORT                        R22 K17 [Enum.AutomaticSize.XY]
      239 SETTABLEKS                       R22 R21 K15 ["AutomaticSize"]
      241 GETIMPORT                        R22 K77 [Rect.new]
      243 LOADN                            R23 3
      244 LOADN                            R24 3
      245 LOADN                            R25 13
      246 LOADN                            R26 13
      247 CALL                             R22 4 1
      248 SETTABLEKS                       R22 R21 K68 ["SliceCenter"]
      250 GETIMPORT                        R22 K79 [Enum.ScaleType.Slice]
      252 SETTABLEKS                       R22 R21 K69 ["ScaleType"]
      254 SETTABLEKS                       R5 R21 K70 ["ImageColor3"]
      256 NEWTABLE                         R22 1 1
      258 GETUPVAL                         R23 1
      259 GETTABLEKS                       R23 R23 K11 ["createElement"]
      261 LOADK                            R24 K83 ["UIPadding"]
      262 DUPTABLE                         R25 K88 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      263 GETIMPORT                        R26 K90 [UDim.new]
      265 LOADN                            R27 0
      266 LOADN                            R28 4
      267 CALL                             R26 2 1
      268 SETTABLEKS                       R26 R25 K84 ["PaddingLeft"]
      270 GETIMPORT                        R26 K90 [UDim.new]
      272 LOADN                            R27 0
      273 LOADN                            R28 4
      274 CALL                             R26 2 1
      275 SETTABLEKS                       R26 R25 K85 ["PaddingRight"]
      277 GETIMPORT                        R26 K90 [UDim.new]
      279 LOADN                            R27 0
      280 LOADN                            R28 2
      281 CALL                             R26 2 1
      282 SETTABLEKS                       R26 R25 K86 ["PaddingTop"]
      284 GETIMPORT                        R26 K90 [UDim.new]
      286 LOADN                            R27 0
      287 LOADN                            R28 4
      288 CALL                             R26 2 1
      289 SETTABLEKS                       R26 R25 K87 ["PaddingBottom"]
      291 CALL                             R23 2 1
      292 SETLIST                          R22 R23 1 [1]
      294 SETTABLEKS                       R6 R22 K91 ["Label"]
      296 CALL                             R19 3 1
      297 SETTABLEKS                       R19 R18 K9 ["Border"]
      299 CALL                             R15 3 1
      300 SETTABLEKS                       R15 R14 K62 ["Background"]
      302 CALL                             R11 3 1
      303 SETTABLEKS                       R11 R10 K53 ["FloatingValueInput"]
      305 CALL                             R7 3 -1
      306 RETURN                           R7 -1

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
