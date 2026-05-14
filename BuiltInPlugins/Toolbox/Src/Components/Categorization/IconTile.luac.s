PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["isHovered"]
        2 JUMPIF                           R1 ; [+5]
        3 DUPTABLE                         R1 K1 [{"isHovered"}]
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K0 ["isHovered"]
        7 RETURN                           R1 1
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["isHovered"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 DUPTABLE                         R1 K1 [{"isHovered"}]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K0 ["isHovered"]
        7 RETURN                           R1 1
        8 RETURN                           R0 0

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
        0 DUPTABLE                         R1 K1 [{"isHovered"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isHovered"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onMouseEnter"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["onMouseLeave"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K5 ["onClick"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K6 ["onAbsoluteSizeChanged"]
       22 RETURN                           R0 0

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
       95 JUMPIFNOT                        R11 ; [+33]
       96 GETUPVAL                         R11 1
       97 GETTABLEKS                       R11 R11 K12 ["createElement"]
       99 GETUPVAL                         R12 2
      100 DUPTABLE                         R13 K40 [{"BackgroundTransparency", "BackgroundColor", "ZIndex"}]
      101 GETTABLEKS                       R14 R3 K41 ["overlayTransparency"]
      103 SETTABLEKS                       R14 R13 K38 ["BackgroundTransparency"]
      105 GETTABLEKS                       R14 R3 K42 ["overlayColor"]
      107 SETTABLEKS                       R14 R13 K13 ["BackgroundColor"]
      109 LOADN                            R14 2
      110 SETTABLEKS                       R14 R13 K39 ["ZIndex"]
      112 DUPTABLE                         R14 K43 [{"UICorner"}]
      113 GETUPVAL                         R15 1
      114 GETTABLEKS                       R15 R15 K12 ["createElement"]
      116 LOADK                            R16 K27 ["UICorner"]
      117 DUPTABLE                         R17 K34 [{"CornerRadius"}]
      118 GETIMPORT                        R18 K36 [UDim.new]
      120 LOADN                            R19 0
      121 LOADN                            R20 4
      122 CALL                             R18 2 1
      123 SETTABLEKS                       R18 R17 K33 ["CornerRadius"]
      125 CALL                             R15 2 1
      126 SETTABLEKS                       R15 R14 K27 ["UICorner"]
      128 CALL                             R11 3 1
      129 SETTABLEKS                       R11 R10 K28 ["DarkOverlay"]
      131 GETUPVAL                         R11 1
      132 GETTABLEKS                       R11 R11 K12 ["createElement"]
      134 GETUPVAL                         R12 2
      135 DUPTABLE                         R13 K48 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Spacing"}]
      136 GETIMPORT                        R14 K50 [Enum.AutomaticSize.XY]
      138 SETTABLEKS                       R14 R13 K15 ["AutomaticSize"]
      140 GETIMPORT                        R14 K52 [Enum.HorizontalAlignment.Left]
      142 SETTABLEKS                       R14 R13 K44 ["HorizontalAlignment"]
      144 SETTABLEKS                       R5 R13 K45 ["Layout"]
      146 SETTABLEKS                       R6 R13 K46 ["Padding"]
      148 GETTABLEKS                       R14 R3 K53 ["spacing"]
      150 SETTABLEKS                       R14 R13 K47 ["Spacing"]
      152 DUPTABLE                         R14 K56 [{"Title", "ImageIcon"}]
      153 GETUPVAL                         R15 1
      154 GETTABLEKS                       R15 R15 K12 ["createElement"]
      156 GETUPVAL                         R16 3
      157 DUPTABLE                         R17 K63 [{"AutomaticSize", "Font", "LayoutOrder", "Text", "TextColor", "TextSize", "TextTruncate", "TextXAlignment"}]
      158 GETIMPORT                        R18 K50 [Enum.AutomaticSize.XY]
      160 SETTABLEKS                       R18 R17 K15 ["AutomaticSize"]
      162 GETTABLEKS                       R18 R3 K64 ["font"]
      164 SETTABLEKS                       R18 R17 K57 ["Font"]
      166 NAMECALL                         R18 R4 K65 ["getNextOrder"]
      168 CALL                             R18 1 1
      169 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      171 GETTABLEKS                       R18 R1 K54 ["Title"]
      173 SETTABLEKS                       R18 R17 K58 ["Text"]
      175 GETTABLEKS                       R18 R3 K66 ["textColor"]
      177 SETTABLEKS                       R18 R17 K59 ["TextColor"]
      179 GETTABLEKS                       R18 R3 K67 ["textSize"]
      181 SETTABLEKS                       R18 R17 K60 ["TextSize"]
      183 GETIMPORT                        R18 K69 [Enum.TextTruncate.AtEnd]
      185 SETTABLEKS                       R18 R17 K61 ["TextTruncate"]
      187 GETIMPORT                        R18 K70 [Enum.TextXAlignment.Left]
      189 SETTABLEKS                       R18 R17 K62 ["TextXAlignment"]
      191 CALL                             R15 2 1
      192 SETTABLEKS                       R15 R14 K54 ["Title"]
      194 GETUPVAL                         R15 1
      195 GETTABLEKS                       R15 R15 K12 ["createElement"]
      197 LOADK                            R16 K71 ["ImageLabel"]
      198 DUPTABLE                         R17 K74 [{"BackgroundTransparency", "Image", "LayoutOrder", "Size", "Position"}]
      199 LOADN                            R18 1
      200 SETTABLEKS                       R18 R17 K38 ["BackgroundTransparency"]
      202 GETTABLEKS                       R18 R1 K72 ["Image"]
      204 SETTABLEKS                       R18 R17 K72 ["Image"]
      206 NAMECALL                         R18 R4 K65 ["getNextOrder"]
      208 CALL                             R18 1 1
      209 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      211 GETTABLEKS                       R18 R1 K75 ["ImageSize"]
      213 SETTABLEKS                       R18 R17 K16 ["Size"]
      215 GETTABLEKS                       R18 R1 K76 ["ImagePosition"]
      217 SETTABLEKS                       R18 R17 K73 ["Position"]
      219 CALL                             R15 2 1
      220 SETTABLEKS                       R15 R14 K55 ["ImageIcon"]
      222 CALL                             R11 3 1
      223 SETTABLEKS                       R11 R10 K29 ["Contents"]
      225 GETUPVAL                         R11 1
      226 GETTABLEKS                       R11 R11 K12 ["createElement"]
      228 LOADK                            R12 K77 ["Frame"]
      229 DUPTABLE                         R13 K80 [{"BackgroundColor3", "BackgroundTransparency", "ClipsDescendants", "Size", "ZIndex"}]
      230 GETTABLEKS                       R14 R1 K13 ["BackgroundColor"]
      232 SETTABLEKS                       R14 R13 K78 ["BackgroundColor3"]
      234 LOADK                            R14 K81 [0.7]
      235 SETTABLEKS                       R14 R13 K38 ["BackgroundTransparency"]
      237 LOADB                            R14 1
      238 SETTABLEKS                       R14 R13 K79 ["ClipsDescendants"]
      240 GETIMPORT                        R14 K84 [UDim2.fromScale]
      242 LOADN                            R15 1
      243 LOADN                            R16 1
      244 CALL                             R14 2 1
      245 SETTABLEKS                       R14 R13 K16 ["Size"]
      247 LOADN                            R14 255
      248 SETTABLEKS                       R14 R13 K39 ["ZIndex"]
      250 DUPTABLE                         R14 K86 [{"UIGradient"}]
      251 GETUPVAL                         R15 1
      252 GETTABLEKS                       R15 R15 K12 ["createElement"]
      254 LOADK                            R16 K85 ["UIGradient"]
      255 DUPTABLE                         R17 K90 [{"Transparency", "Rotation", "Color"}]
      256 GETIMPORT                        R18 K92 [NumberSequence.new]
      258 NEWTABLE                         R19 0 2
      260 GETIMPORT                        R20 K94 [NumberSequenceKeypoint.new]
      262 LOADN                            R21 0
      263 LOADN                            R22 0
      264 CALL                             R20 2 1
      265 GETIMPORT                        R21 K94 [NumberSequenceKeypoint.new]
      267 LOADN                            R22 1
      268 LOADN                            R23 1
      269 CALL                             R21 2 -1
      270 SETLIST                          R19 R20 -1 [1]
      272 CALL                             R18 1 1
      273 SETTABLEKS                       R18 R17 K87 ["Transparency"]
      275 LOADN                            R18 166
      276 SETTABLEKS                       R18 R17 K88 ["Rotation"]
      278 GETTABLEKS                       R19 R1 K13 ["BackgroundColor"]
      280 JUMPIFNOT                        R19 ; [+20]
      281 GETIMPORT                        R18 K96 [ColorSequence.new]
      283 NEWTABLE                         R19 0 2
      285 GETIMPORT                        R20 K98 [ColorSequenceKeypoint.new]
      287 LOADN                            R21 0
      288 GETTABLEKS                       R22 R3 K99 ["gradientColor"]
      290 CALL                             R20 2 1
      291 GETIMPORT                        R21 K98 [ColorSequenceKeypoint.new]
      293 LOADN                            R22 1
      294 GETTABLEKS                       R23 R1 K13 ["BackgroundColor"]
      296 CALL                             R21 2 -1
      297 SETLIST                          R19 R20 -1 [1]
      299 CALL                             R18 1 1
      300 JUMP                             ; [+1]
      301 LOADNIL                          R18
      302 SETTABLEKS                       R18 R17 K89 ["Color"]
      304 CALL                             R15 2 1
      305 SETTABLEKS                       R15 R14 K85 ["UIGradient"]
      307 CALL                             R11 3 1
      308 SETTABLEKS                       R11 R10 K30 ["UIGradientContainer"]
      310 GETTABLEKS                       R11 R1 K18 ["OnClick"]
      312 JUMPIFNOT                        R11 ; [+16]
      313 GETUPVAL                         R11 1
      314 GETTABLEKS                       R11 R11 K12 ["createElement"]
      316 GETUPVAL                         R12 4
      317 DUPTABLE                         R13 K101 [{"Cursor", "Size"}]
      318 LOADK                            R14 K102 ["PointingHand"]
      319 SETTABLEKS                       R14 R13 K100 ["Cursor"]
      321 GETIMPORT                        R14 K84 [UDim2.fromScale]
      323 LOADN                            R15 1
      324 LOADN                            R16 1
      325 CALL                             R14 2 1
      326 SETTABLEKS                       R14 R13 K16 ["Size"]
      328 CALL                             R11 2 1
      329 SETTABLEKS                       R11 R10 K31 ["HoverArea"]
      331 CALL                             R7 3 -1
      332 RETURN                           R7 -1

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
       50 DUPTABLE                         R11 K25 [{"AutomaticSize", "ContentsLayoutOverride", "ImageSize", "Size"}]
       51 GETIMPORT                        R12 K28 [Enum.AutomaticSize.XY]
       53 SETTABLEKS                       R12 R11 K21 ["AutomaticSize"]
       55 LOADB                            R12 0
       56 SETTABLEKS                       R12 R11 K22 ["ContentsLayoutOverride"]
       58 GETIMPORT                        R12 K31 [UDim2.fromOffset]
       60 LOADN                            R13 63
       61 LOADN                            R14 63
       62 CALL                             R12 2 1
       63 SETTABLEKS                       R12 R11 K23 ["ImageSize"]
       65 GETIMPORT                        R12 K33 [UDim2.fromScale]
       67 LOADN                            R13 0
       68 LOADN                            R14 0
       69 CALL                             R12 2 1
       70 SETTABLEKS                       R12 R11 K24 ["Size"]
       72 SETTABLEKS                       R11 R10 K34 ["defaultProps"]
       74 DUPCLOSURE                       R11 K35 [PROTO_6]
       75 SETTABLEKS                       R11 R10 K36 ["init"]
       77 DUPCLOSURE                       R11 K37 [PROTO_7]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R6
       83 SETTABLEKS                       R11 R10 K38 ["render"]
       85 MOVE                             R11 R9
       86 DUPTABLE                         R12 K40 [{"Stylizer"}]
       87 GETTABLEKS                       R13 R5 K39 ["Stylizer"]
       89 SETTABLEKS                       R13 R12 K39 ["Stylizer"]
       91 CALL                             R11 1 1
       92 MOVE                             R12 R10
       93 CALL                             R11 1 1
       94 MOVE                             R10 R11
       95 RETURN                           R10 1
