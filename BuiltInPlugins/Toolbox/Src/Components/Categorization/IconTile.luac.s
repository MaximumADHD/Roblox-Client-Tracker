PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["isHovered"]
        2 JUMPIF                           R1 ; [+2]
        3 DUPTABLE                         R1 K2 [{[1] = True}]
        4 RETURN                           R1 1
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["isHovered"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 DUPTABLE                         R1 K2 [{[1] = False}]
        4 RETURN                           R1 1
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["OnClick"]
        5 JUMPIFEQKNIL                     R1 ; [+6]
        7 GETTABLEKS                       R1 R0 K1 ["OnClick"]
        9 GETTABLEKS                       R2 R0 K2 ["Key"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["OnAbsoluteSizeChanged"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETTABLEKS                       R2 R1 K1 ["OnAbsoluteSizeChanged"]
        8 GETTABLEKS                       R3 R0 K2 ["AbsoluteSize"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["onMouseEnter"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K5 ["onMouseLeave"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K6 ["onClick"]
       15 NEWCLOSURE                       R1 P3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K7 ["onAbsoluteSizeChanged"]
       19 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["iconTile"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["new"]
       11 CALL                             R4 0 1
       12 GETTABLEKS                       R6 R1 K5 ["ContentsLayoutOverride"]
       14 JUMPIFNOT                        R6 ; [+2]
       15 LOADNIL                          R5
       16 JUMP                             ; [+2]
       17 GETIMPORT                        R5 K9 [Enum.FillDirection.Vertical]
       19 GETTABLEKS                       R7 R1 K10 ["ContentsPadding"]
       21 JUMPIFNOT                        R7 ; [+3]
       22 GETTABLEKS                       R6 R1 K10 ["ContentsPadding"]
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R6 R3 K11 ["padding"]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K12 ["createElement"]
       30 GETUPVAL                         R8 2
       31 NEWTABLE                         R9 8 0
       33 GETTABLEKS                       R10 R1 K13 ["BackgroundColor"]
       35 SETTABLEKS                       R10 R9 K13 ["BackgroundColor"]
       37 GETTABLEKS                       R10 R1 K14 ["LayoutOrder"]
       39 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
       41 GETTABLEKS                       R10 R1 K15 ["AutomaticSize"]
       43 SETTABLEKS                       R10 R9 K15 ["AutomaticSize"]
       45 GETTABLEKS                       R10 R1 K16 ["Size"]
       47 SETTABLEKS                       R10 R9 K16 ["Size"]
       49 GETTABLEKS                       R10 R0 K17 ["onClick"]
       51 SETTABLEKS                       R10 R9 K18 ["OnClick"]
       53 GETUPVAL                         R10 1
       54 GETTABLEKS                       R10 R10 K19 ["Event"]
       56 GETTABLEKS                       R10 R10 K20 ["MouseEnter"]
       58 GETTABLEKS                       R11 R0 K21 ["onMouseEnter"]
       60 SETTABLE                         R11 R9 R10
       61 GETUPVAL                         R10 1
       62 GETTABLEKS                       R10 R10 K19 ["Event"]
       64 GETTABLEKS                       R10 R10 K22 ["MouseLeave"]
       66 GETTABLEKS                       R11 R0 K23 ["onMouseLeave"]
       68 SETTABLE                         R11 R9 R10
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K24 ["Change"]
       72 GETTABLEKS                       R10 R10 K25 ["AbsoluteSize"]
       74 GETTABLEKS                       R11 R0 K26 ["onAbsoluteSizeChanged"]
       76 SETTABLE                         R11 R9 R10
       77 DUPTABLE                         R10 K32 [{"UICorner", "DarkOverlay", "Contents", "UIGradientContainer", "HoverArea"}]
       78 GETUPVAL                         R11 1
       79 GETTABLEKS                       R11 R11 K12 ["createElement"]
       81 LOADK                            R12 K27 ["UICorner"]
       82 DUPTABLE                         R13 K34 [{"CornerRadius"}]
       83 GETIMPORT                        R14 K36 [UDim.new]
       85 LOADN                            R15 0
       86 LOADN                            R16 4
       87 CALL                             R14 2 1
       88 SETTABLEKS                       R14 R13 K33 ["CornerRadius"]
       90 CALL                             R11 2 1
       91 SETTABLEKS                       R11 R10 K27 ["UICorner"]
       93 GETTABLEKS                       R11 R2 K37 ["isHovered"]
       95 JUMPIFNOT                        R11 ; [+30]
       96 GETUPVAL                         R11 1
       97 GETTABLEKS                       R11 R11 K12 ["createElement"]
       99 GETUPVAL                         R12 2
      100 DUPTABLE                         R13 K41 [{["BackgroundTransparency"], ["BackgroundColor"], ["ZIndex"] = 2}]
      101 GETTABLEKS                       R14 R3 K42 ["overlayTransparency"]
      103 SETTABLEKS                       R14 R13 K38 ["BackgroundTransparency"]
      105 GETTABLEKS                       R14 R3 K43 ["overlayColor"]
      107 SETTABLEKS                       R14 R13 K13 ["BackgroundColor"]
      109 DUPTABLE                         R14 K44 [{"UICorner"}]
      110 GETUPVAL                         R15 1
      111 GETTABLEKS                       R15 R15 K12 ["createElement"]
      113 LOADK                            R16 K27 ["UICorner"]
      114 DUPTABLE                         R17 K34 [{"CornerRadius"}]
      115 GETIMPORT                        R18 K36 [UDim.new]
      117 LOADN                            R19 0
      118 LOADN                            R20 4
      119 CALL                             R18 2 1
      120 SETTABLEKS                       R18 R17 K33 ["CornerRadius"]
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K27 ["UICorner"]
      125 CALL                             R11 3 1
      126 SETTABLEKS                       R11 R10 K28 ["DarkOverlay"]
      128 GETUPVAL                         R11 1
      129 GETTABLEKS                       R11 R11 K12 ["createElement"]
      131 GETUPVAL                         R12 2
      132 DUPTABLE                         R13 K49 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Spacing"}]
      133 GETIMPORT                        R14 K51 [Enum.AutomaticSize.XY]
      135 SETTABLEKS                       R14 R13 K15 ["AutomaticSize"]
      137 GETIMPORT                        R14 K53 [Enum.HorizontalAlignment.Left]
      139 SETTABLEKS                       R14 R13 K45 ["HorizontalAlignment"]
      141 SETTABLEKS                       R5 R13 K46 ["Layout"]
      143 SETTABLEKS                       R6 R13 K47 ["Padding"]
      145 GETTABLEKS                       R14 R3 K54 ["spacing"]
      147 SETTABLEKS                       R14 R13 K48 ["Spacing"]
      149 DUPTABLE                         R14 K57 [{"Title", "ImageIcon"}]
      150 GETUPVAL                         R15 1
      151 GETTABLEKS                       R15 R15 K12 ["createElement"]
      153 GETUPVAL                         R16 3
      154 DUPTABLE                         R17 K64 [{"AutomaticSize", "Font", "LayoutOrder", "Text", "TextColor", "TextSize", "TextTruncate", "TextXAlignment"}]
      155 GETIMPORT                        R18 K51 [Enum.AutomaticSize.XY]
      157 SETTABLEKS                       R18 R17 K15 ["AutomaticSize"]
      159 GETTABLEKS                       R18 R3 K65 ["font"]
      161 SETTABLEKS                       R18 R17 K58 ["Font"]
      163 NAMECALL                         R18 R4 K66 ["getNextOrder"]
      165 CALL                             R18 1 1
      166 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      168 GETTABLEKS                       R18 R1 K55 ["Title"]
      170 SETTABLEKS                       R18 R17 K59 ["Text"]
      172 GETTABLEKS                       R18 R3 K67 ["textColor"]
      174 SETTABLEKS                       R18 R17 K60 ["TextColor"]
      176 GETTABLEKS                       R18 R3 K68 ["textSize"]
      178 SETTABLEKS                       R18 R17 K61 ["TextSize"]
      180 GETIMPORT                        R18 K70 [Enum.TextTruncate.AtEnd]
      182 SETTABLEKS                       R18 R17 K62 ["TextTruncate"]
      184 GETIMPORT                        R18 K71 [Enum.TextXAlignment.Left]
      186 SETTABLEKS                       R18 R17 K63 ["TextXAlignment"]
      188 CALL                             R15 2 1
      189 SETTABLEKS                       R15 R14 K55 ["Title"]
      191 GETUPVAL                         R15 1
      192 GETTABLEKS                       R15 R15 K12 ["createElement"]
      194 LOADK                            R16 K72 ["ImageLabel"]
      195 DUPTABLE                         R17 K76 [{["BackgroundTransparency"] = 1, ["Image"], ["LayoutOrder"], ["Size"], ["Position"]}]
      196 GETTABLEKS                       R18 R1 K74 ["Image"]
      198 SETTABLEKS                       R18 R17 K74 ["Image"]
      200 NAMECALL                         R18 R4 K66 ["getNextOrder"]
      202 CALL                             R18 1 1
      203 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      205 GETTABLEKS                       R18 R1 K77 ["ImageSize"]
      207 SETTABLEKS                       R18 R17 K16 ["Size"]
      209 GETTABLEKS                       R18 R1 K78 ["ImagePosition"]
      211 SETTABLEKS                       R18 R17 K75 ["Position"]
      213 CALL                             R15 2 1
      214 SETTABLEKS                       R15 R14 K56 ["ImageIcon"]
      216 CALL                             R11 3 1
      217 SETTABLEKS                       R11 R10 K29 ["Contents"]
      219 GETUPVAL                         R11 1
      220 GETTABLEKS                       R11 R11 K12 ["createElement"]
      222 LOADK                            R12 K79 ["Frame"]
      223 DUPTABLE                         R13 K85 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0.7, ["ClipsDescendants"] = True, ["Size"], ["ZIndex"] = -1}]
      224 GETTABLEKS                       R14 R1 K13 ["BackgroundColor"]
      226 SETTABLEKS                       R14 R13 K80 ["BackgroundColor3"]
      228 GETIMPORT                        R14 K88 [UDim2.fromScale]
      230 LOADN                            R15 1
      231 LOADN                            R16 1
      232 CALL                             R14 2 1
      233 SETTABLEKS                       R14 R13 K16 ["Size"]
      235 DUPTABLE                         R14 K90 [{"UIGradient"}]
      236 GETUPVAL                         R15 1
      237 GETTABLEKS                       R15 R15 K12 ["createElement"]
      239 LOADK                            R16 K89 ["UIGradient"]
      240 DUPTABLE                         R17 K95 [{["Transparency"], ["Rotation"] = -90, ["Color"]}]
      241 GETIMPORT                        R18 K97 [NumberSequence.new]
      243 NEWTABLE                         R19 0 2
      245 GETIMPORT                        R20 K99 [NumberSequenceKeypoint.new]
      247 LOADN                            R21 0
      248 LOADN                            R22 0
      249 CALL                             R20 2 1
      250 GETIMPORT                        R21 K99 [NumberSequenceKeypoint.new]
      252 LOADN                            R22 1
      253 LOADN                            R23 1
      254 CALL                             R21 2 -1
      255 SETLIST                          R19 R20 -1 [1]
      257 CALL                             R18 1 1
      258 SETTABLEKS                       R18 R17 K91 ["Transparency"]
      260 GETTABLEKS                       R19 R1 K13 ["BackgroundColor"]
      262 JUMPIFNOT                        R19 ; [+20]
      263 GETIMPORT                        R18 K101 [ColorSequence.new]
      265 NEWTABLE                         R19 0 2
      267 GETIMPORT                        R20 K103 [ColorSequenceKeypoint.new]
      269 LOADN                            R21 0
      270 GETTABLEKS                       R22 R3 K104 ["gradientColor"]
      272 CALL                             R20 2 1
      273 GETIMPORT                        R21 K103 [ColorSequenceKeypoint.new]
      275 LOADN                            R22 1
      276 GETTABLEKS                       R23 R1 K13 ["BackgroundColor"]
      278 CALL                             R21 2 -1
      279 SETLIST                          R19 R20 -1 [1]
      281 CALL                             R18 1 1
      282 JUMP                             ; [+1]
      283 LOADNIL                          R18
      284 SETTABLEKS                       R18 R17 K94 ["Color"]
      286 CALL                             R15 2 1
      287 SETTABLEKS                       R15 R14 K89 ["UIGradient"]
      289 CALL                             R11 3 1
      290 SETTABLEKS                       R11 R10 K30 ["UIGradientContainer"]
      292 GETTABLEKS                       R11 R1 K18 ["OnClick"]
      294 JUMPIFNOT                        R11 ; [+13]
      295 GETUPVAL                         R11 1
      296 GETTABLEKS                       R11 R11 K12 ["createElement"]
      298 GETUPVAL                         R12 4
      299 DUPTABLE                         R13 K107 [{["Cursor"] = "PointingHand", ["Size"]}]
      300 GETIMPORT                        R14 K88 [UDim2.fromScale]
      302 LOADN                            R15 1
      303 LOADN                            R16 1
      304 CALL                             R14 2 1
      305 SETTABLEKS                       R14 R13 K16 ["Size"]
      307 CALL                             R11 2 1
      308 SETTABLEKS                       R11 R10 K31 ["HoverArea"]
      310 CALL                             R7 3 -1
      311 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Src"]
       23 GETTABLEKS                       R5 R5 K10 ["Util"]
       25 GETTABLEKS                       R5 R5 K11 ["LayoutOrderIterator"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R2 K12 ["ContextServices"]
       30 GETTABLEKS                       R6 R2 K13 ["UI"]
       32 GETTABLEKS                       R6 R6 K14 ["HoverArea"]
       34 GETTABLEKS                       R7 R2 K13 ["UI"]
       36 GETTABLEKS                       R7 R7 K15 ["Pane"]
       38 GETTABLEKS                       R8 R2 K13 ["UI"]
       40 GETTABLEKS                       R8 R8 K16 ["TextLabel"]
       42 GETTABLEKS                       R9 R5 K17 ["withContext"]
       44 GETTABLEKS                       R10 R3 K18 ["PureComponent"]
       46 LOADK                            R12 K19 ["IconTile"]
       47 NAMECALL                         R10 R10 K20 ["extend"]
       49 CALL                             R10 2 1
       50 DUPTABLE                         R11 K26 [{["AutomaticSize"], ["ContentsLayoutOverride"] = False, ["ImageSize"], ["Size"]}]
       51 GETIMPORT                        R12 K29 [Enum.AutomaticSize.XY]
       53 SETTABLEKS                       R12 R11 K21 ["AutomaticSize"]
       55 GETIMPORT                        R12 K32 [UDim2.fromOffset]
       57 LOADN                            R13 63
       58 LOADN                            R14 63
       59 CALL                             R12 2 1
       60 SETTABLEKS                       R12 R11 K24 ["ImageSize"]
       62 GETIMPORT                        R12 K34 [UDim2.fromScale]
       64 LOADN                            R13 0
       65 LOADN                            R14 0
       66 CALL                             R12 2 1
       67 SETTABLEKS                       R12 R11 K25 ["Size"]
       69 SETTABLEKS                       R11 R10 K35 ["defaultProps"]
       71 DUPCLOSURE                       R11 K36 [PROTO_6]
       72 SETTABLEKS                       R11 R10 K37 ["init"]
       74 DUPCLOSURE                       R11 K38 [PROTO_7]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R6
       80 SETTABLEKS                       R11 R10 K39 ["render"]
       82 MOVE                             R11 R9
       83 DUPTABLE                         R12 K41 [{"Stylizer"}]
       84 GETTABLEKS                       R13 R5 K40 ["Stylizer"]
       86 SETTABLEKS                       R13 R12 K40 ["Stylizer"]
       88 CALL                             R11 1 1
       89 MOVE                             R12 R10
       90 CALL                             R11 1 1
       91 MOVE                             R10 R11
       92 RETURN                           R10 1
