PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["closeDropdown"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["closeDropdown"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["onClick"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["onClick"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K2 ["closeDropdown"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"hovering"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["hovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"hovering"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["hovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"hovering"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["hovering"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K3 ["closeDropdown"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K4 ["onClick"]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K5 ["mouseEnter"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K6 ["mouseLeave"]
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["DROPDOWN_SELECTED_BAR"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["SEARCH_ENTRY_HEIGHT"]
        6 GETTABLEKS                       R4 R0 K2 ["props"]
        8 GETTABLEKS                       R3 R4 K3 ["Stylizer"]
       10 GETTABLEKS                       R4 R3 K4 ["isDarkerTheme"]
       12 GETTABLEKS                       R5 R3 K5 ["dropdownMenu"]
       14 GETTABLEKS                       R6 R5 K6 ["item"]
       16 GETTABLEKS                       R8 R0 K7 ["state"]
       18 GETTABLEKS                       R7 R8 K8 ["hovering"]
       20 GETTABLEKS                       R9 R0 K2 ["props"]
       22 GETTABLEKS                       R8 R9 K9 ["LayoutOrder"]
       24 GETTABLEKS                       R10 R0 K2 ["props"]
       26 GETTABLEKS                       R9 R10 K10 ["Thumbnail"]
       28 GETTABLEKS                       R11 R0 K2 ["props"]
       30 GETTABLEKS                       R10 R11 K11 ["Name"]
       32 GETUPVAL                         R12 1
       33 GETTABLEKS                       R11 R12 K12 ["createElement"]
       35 LOADK                            R12 K13 ["ImageButton"]
       36 NEWTABLE                         R13 16 0
       38 GETIMPORT                        R14 K16 [UDim2.new]
       40 LOADN                            R15 1
       41 GETUPVAL                         R19 0
       42 GETTABLEKS                       R18 R19 K17 ["SCROLLBAR_BACKGROUND_THICKNESS"]
       44 MINUS                            R17 R18
       45 GETUPVAL                         R19 0
       46 GETTABLEKS                       R18 R19 K18 ["SCROLLBAR_PADDING"]
       48 ADD                              R16 R17 R18
       49 LOADN                            R17 0
       50 MOVE                             R18 R2
       51 CALL                             R14 4 1
       52 SETTABLEKS                       R14 R13 K19 ["Size"]
       54 JUMPIFNOT                        R7 ; [+3]
       55 GETTABLEKS                       R14 R6 K20 ["backgroundSelectedColor"]
       57 JUMPIF                           R14 ; [+2]
       58 GETTABLEKS                       R14 R6 K21 ["backgroundColor"]
       60 SETTABLEKS                       R14 R13 K22 ["BackgroundColor3"]
       62 LOADN                            R14 0
       63 SETTABLEKS                       R14 R13 K23 ["BorderSizePixel"]
       65 SETTABLEKS                       R8 R13 K9 ["LayoutOrder"]
       67 LOADN                            R14 2
       68 SETTABLEKS                       R14 R13 K24 ["ZIndex"]
       70 LOADB                            R14 0
       71 SETTABLEKS                       R14 R13 K25 ["AutoButtonColor"]
       73 GETUPVAL                         R16 1
       74 GETTABLEKS                       R15 R16 K26 ["Event"]
       76 GETTABLEKS                       R14 R15 K27 ["Activated"]
       78 GETTABLEKS                       R15 R0 K28 ["onClick"]
       80 SETTABLE                         R15 R13 R14
       81 GETUPVAL                         R16 1
       82 GETTABLEKS                       R15 R16 K26 ["Event"]
       84 GETTABLEKS                       R14 R15 K29 ["MouseEnter"]
       86 GETTABLEKS                       R15 R0 K30 ["mouseEnter"]
       88 SETTABLE                         R15 R13 R14
       89 GETUPVAL                         R16 1
       90 GETTABLEKS                       R15 R16 K26 ["Event"]
       92 GETTABLEKS                       R14 R15 K31 ["MouseLeave"]
       94 GETTABLEKS                       R15 R0 K32 ["mouseLeave"]
       96 SETTABLE                         R15 R13 R14
       97 DUPTABLE                         R14 K35 [{"SelectedBar", "Container"}]
       98 NOT                              R15 R4
       99 JUMPIFNOT                        R15 ; [+29]
      100 GETUPVAL                         R16 1
      101 GETTABLEKS                       R15 R16 K12 ["createElement"]
      103 LOADK                            R16 K36 ["Frame"]
      104 DUPTABLE                         R17 K38 [{"Size", "BorderSizePixel", "BackgroundColor3", "Visible", "ZIndex"}]
      105 GETIMPORT                        R18 K16 [UDim2.new]
      107 LOADN                            R19 0
      108 MOVE                             R20 R1
      109 LOADN                            R21 1
      110 LOADN                            R22 0
      111 CALL                             R18 4 1
      112 SETTABLEKS                       R18 R17 K19 ["Size"]
      114 LOADN                            R18 0
      115 SETTABLEKS                       R18 R17 K23 ["BorderSizePixel"]
      117 GETTABLEKS                       R19 R5 K6 ["item"]
      119 GETTABLEKS                       R18 R19 K39 ["selectedBarColor"]
      121 SETTABLEKS                       R18 R17 K22 ["BackgroundColor3"]
      123 SETTABLEKS                       R7 R17 K37 ["Visible"]
      125 LOADN                            R18 2
      126 SETTABLEKS                       R18 R17 K24 ["ZIndex"]
      128 CALL                             R15 2 1
      129 SETTABLEKS                       R15 R14 K33 ["SelectedBar"]
      131 GETUPVAL                         R16 1
      132 GETTABLEKS                       R15 R16 K12 ["createElement"]
      134 LOADK                            R16 K36 ["Frame"]
      135 DUPTABLE                         R17 K41 [{"Size", "BackgroundTransparency"}]
      136 GETIMPORT                        R18 K16 [UDim2.new]
      138 LOADN                            R19 1
      139 LOADN                            R20 0
      140 LOADN                            R21 1
      141 LOADN                            R22 0
      142 CALL                             R18 4 1
      143 SETTABLEKS                       R18 R17 K19 ["Size"]
      145 LOADN                            R18 1
      146 SETTABLEKS                       R18 R17 K40 ["BackgroundTransparency"]
      148 DUPTABLE                         R18 K45 [{"UIPadding", "UIListLayout", "Thumbnail", "TextLabel"}]
      149 GETUPVAL                         R20 1
      150 GETTABLEKS                       R19 R20 K12 ["createElement"]
      152 LOADK                            R20 K42 ["UIPadding"]
      153 DUPTABLE                         R21 K50 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      154 GETIMPORT                        R22 K52 [UDim.new]
      156 LOADN                            R23 0
      157 LOADN                            R24 10
      158 CALL                             R22 2 1
      159 SETTABLEKS                       R22 R21 K46 ["PaddingLeft"]
      161 GETIMPORT                        R22 K52 [UDim.new]
      163 LOADN                            R23 0
      164 LOADN                            R24 10
      165 CALL                             R22 2 1
      166 SETTABLEKS                       R22 R21 K47 ["PaddingRight"]
      168 GETIMPORT                        R22 K52 [UDim.new]
      170 LOADN                            R23 0
      171 LOADN                            R24 2
      172 CALL                             R22 2 1
      173 SETTABLEKS                       R22 R21 K48 ["PaddingTop"]
      175 GETIMPORT                        R22 K52 [UDim.new]
      177 LOADN                            R23 0
      178 LOADN                            R24 2
      179 CALL                             R22 2 1
      180 SETTABLEKS                       R22 R21 K49 ["PaddingBottom"]
      182 CALL                             R19 2 1
      183 SETTABLEKS                       R19 R18 K42 ["UIPadding"]
      185 GETUPVAL                         R20 1
      186 GETTABLEKS                       R19 R20 K12 ["createElement"]
      188 LOADK                            R20 K43 ["UIListLayout"]
      189 DUPTABLE                         R21 K57 [{"FillDirection", "SortOrder", "VerticalAlignment", "Padding"}]
      190 GETIMPORT                        R22 K60 [Enum.FillDirection.Horizontal]
      192 SETTABLEKS                       R22 R21 K53 ["FillDirection"]
      194 GETIMPORT                        R22 K61 [Enum.SortOrder.LayoutOrder]
      196 SETTABLEKS                       R22 R21 K54 ["SortOrder"]
      198 GETIMPORT                        R22 K63 [Enum.VerticalAlignment.Center]
      200 SETTABLEKS                       R22 R21 K55 ["VerticalAlignment"]
      202 GETIMPORT                        R22 K52 [UDim.new]
      204 LOADN                            R23 0
      205 LOADN                            R24 10
      206 CALL                             R22 2 1
      207 SETTABLEKS                       R22 R21 K56 ["Padding"]
      209 CALL                             R19 2 1
      210 SETTABLEKS                       R19 R18 K43 ["UIListLayout"]
      212 GETUPVAL                         R20 1
      213 GETTABLEKS                       R19 R20 K12 ["createElement"]
      215 LOADK                            R20 K64 ["ImageLabel"]
      216 DUPTABLE                         R21 K68 [{"LayoutOrder", "Size", "SizeConstraint", "AnchorPoint", "Image", "BackgroundTransparency", "ZIndex"}]
      217 LOADN                            R22 2
      218 SETTABLEKS                       R22 R21 K9 ["LayoutOrder"]
      220 GETIMPORT                        R22 K16 [UDim2.new]
      222 LOADK                            R23 K69 [0.8]
      223 LOADN                            R24 0
      224 LOADK                            R25 K69 [0.8]
      225 LOADN                            R26 0
      226 CALL                             R22 4 1
      227 SETTABLEKS                       R22 R21 K19 ["Size"]
      229 GETIMPORT                        R22 K71 [Enum.SizeConstraint.RelativeYY]
      231 SETTABLEKS                       R22 R21 K65 ["SizeConstraint"]
      233 GETIMPORT                        R22 K73 [Vector2.new]
      235 LOADN                            R23 0
      236 LOADK                            R24 K74 [0.5]
      237 CALL                             R22 2 1
      238 SETTABLEKS                       R22 R21 K66 ["AnchorPoint"]
      240 SETTABLEKS                       R9 R21 K67 ["Image"]
      242 LOADN                            R22 1
      243 SETTABLEKS                       R22 R21 K40 ["BackgroundTransparency"]
      245 LOADN                            R22 3
      246 SETTABLEKS                       R22 R21 K24 ["ZIndex"]
      248 CALL                             R19 2 1
      249 SETTABLEKS                       R19 R18 K10 ["Thumbnail"]
      251 GETUPVAL                         R20 1
      252 GETTABLEKS                       R19 R20 K12 ["createElement"]
      254 LOADK                            R20 K44 ["TextLabel"]
      255 DUPTABLE                         R21 K83 [{"LayoutOrder", "Size", "BackgroundTransparency", "Text", "TextColor3", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "TextTruncate", "ClipsDescendants", "ZIndex"}]
      256 LOADN                            R22 3
      257 SETTABLEKS                       R22 R21 K9 ["LayoutOrder"]
      259 GETIMPORT                        R22 K16 [UDim2.new]
      261 LOADN                            R23 1
      262 LOADN                            R24 0
      263 LOADN                            R25 1
      264 LOADN                            R26 0
      265 CALL                             R22 4 1
      266 SETTABLEKS                       R22 R21 K19 ["Size"]
      268 LOADN                            R22 1
      269 SETTABLEKS                       R22 R21 K40 ["BackgroundTransparency"]
      271 SETTABLEKS                       R10 R21 K75 ["Text"]
      273 GETTABLEKS                       R22 R6 K84 ["textColor"]
      275 SETTABLEKS                       R22 R21 K76 ["TextColor3"]
      277 GETUPVAL                         R23 0
      278 GETTABLEKS                       R22 R23 K85 ["FONT"]
      280 SETTABLEKS                       R22 R21 K77 ["Font"]
      282 GETUPVAL                         R23 0
      283 GETTABLEKS                       R22 R23 K86 ["FONT_SIZE_MEDIUM"]
      285 SETTABLEKS                       R22 R21 K78 ["TextSize"]
      287 GETIMPORT                        R22 K88 [Enum.TextXAlignment.Left]
      289 SETTABLEKS                       R22 R21 K79 ["TextXAlignment"]
      291 GETIMPORT                        R22 K89 [Enum.TextYAlignment.Center]
      293 SETTABLEKS                       R22 R21 K80 ["TextYAlignment"]
      295 GETIMPORT                        R22 K91 [Enum.TextTruncate.AtEnd]
      297 SETTABLEKS                       R22 R21 K81 ["TextTruncate"]
      299 LOADB                            R22 1
      300 SETTABLEKS                       R22 R21 K82 ["ClipsDescendants"]
      302 LOADN                            R22 3
      303 SETTABLEKS                       R22 R21 K24 ["ZIndex"]
      305 CALL                             R19 2 1
      306 SETTABLEKS                       R19 R18 K44 ["TextLabel"]
      308 CALL                             R15 3 1
      309 SETTABLEKS                       R15 R14 K34 ["Container"]
      311 CALL                             R11 3 -1
      312 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R7 R0 K8 ["Src"]
       27 GETTABLEKS                       R6 R7 K9 ["Util"]
       29 GETTABLEKS                       R5 R6 K10 ["Constants"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       34 GETTABLEKS                       R6 R5 K12 ["withContext"]
       36 GETTABLEKS                       R7 R2 K13 ["PureComponent"]
       38 LOADK                            R9 K14 ["LiveSearchEntry"]
       39 NAMECALL                         R7 R7 K15 ["extend"]
       41 CALL                             R7 2 1
       42 DUPCLOSURE                       R8 K16 [PROTO_4]
       43 SETTABLEKS                       R8 R7 K17 ["init"]
       45 DUPCLOSURE                       R8 K18 [PROTO_5]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R8 R7 K19 ["render"]
       50 MOVE                             R8 R6
       51 DUPTABLE                         R9 K21 [{"Stylizer"}]
       52 GETTABLEKS                       R10 R5 K20 ["Stylizer"]
       54 SETTABLEKS                       R10 R9 K20 ["Stylizer"]
       56 CALL                             R8 1 1
       57 MOVE                             R9 R7
       58 CALL                             R8 1 1
       59 MOVE                             R7 R8
       60 RETURN                           R7 1
