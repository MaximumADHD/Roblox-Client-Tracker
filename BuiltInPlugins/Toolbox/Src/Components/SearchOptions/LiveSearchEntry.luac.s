PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["closeDropdown"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["closeDropdown"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["onClick"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["onClick"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K2 ["closeDropdown"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K2 [{[1] = False}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K4 ["closeDropdown"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K5 ["onClick"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K6 ["mouseEnter"]
       15 NEWCLOSURE                       R2 P3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K7 ["mouseLeave"]
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["DROPDOWN_SELECTED_BAR"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["SEARCH_ENTRY_HEIGHT"]
        6 GETTABLEKS                       R3 R0 K2 ["props"]
        8 GETTABLEKS                       R3 R3 K3 ["Stylizer"]
       10 GETTABLEKS                       R4 R3 K4 ["isDarkerTheme"]
       12 GETTABLEKS                       R5 R3 K5 ["dropdownMenu"]
       14 GETTABLEKS                       R6 R5 K6 ["item"]
       16 GETTABLEKS                       R7 R0 K7 ["state"]
       18 GETTABLEKS                       R7 R7 K8 ["hovering"]
       20 GETTABLEKS                       R8 R0 K2 ["props"]
       22 GETTABLEKS                       R8 R8 K9 ["LayoutOrder"]
       24 GETTABLEKS                       R9 R0 K2 ["props"]
       26 GETTABLEKS                       R9 R9 K10 ["Thumbnail"]
       28 GETTABLEKS                       R10 R0 K2 ["props"]
       30 GETTABLEKS                       R10 R10 K11 ["Name"]
       32 GETUPVAL                         R11 1
       33 GETTABLEKS                       R11 R11 K12 ["createElement"]
       35 LOADK                            R12 K13 ["ImageButton"]
       36 NEWTABLE                         R13 16 0
       38 GETIMPORT                        R14 K16 [UDim2.new]
       40 LOADN                            R15 1
       41 GETUPVAL                         R18 0
       42 GETTABLEKS                       R18 R18 K17 ["SCROLLBAR_BACKGROUND_THICKNESS"]
       44 MINUS                            R17 R18
       45 GETUPVAL                         R18 0
       46 GETTABLEKS                       R18 R18 K18 ["SCROLLBAR_PADDING"]
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
       73 GETUPVAL                         R14 1
       74 GETTABLEKS                       R14 R14 K26 ["Event"]
       76 GETTABLEKS                       R14 R14 K27 ["Activated"]
       78 GETTABLEKS                       R15 R0 K28 ["onClick"]
       80 SETTABLE                         R15 R13 R14
       81 GETUPVAL                         R14 1
       82 GETTABLEKS                       R14 R14 K26 ["Event"]
       84 GETTABLEKS                       R14 R14 K29 ["MouseEnter"]
       86 GETTABLEKS                       R15 R0 K30 ["mouseEnter"]
       88 SETTABLE                         R15 R13 R14
       89 GETUPVAL                         R14 1
       90 GETTABLEKS                       R14 R14 K26 ["Event"]
       92 GETTABLEKS                       R14 R14 K31 ["MouseLeave"]
       94 GETTABLEKS                       R15 R0 K32 ["mouseLeave"]
       96 SETTABLE                         R15 R13 R14
       97 DUPTABLE                         R14 K35 [{"SelectedBar", "Container"}]
       98 NOT                              R15 R4
       99 JUMPIFNOT                        R15 ; [+23]
      100 GETUPVAL                         R15 1
      101 GETTABLEKS                       R15 R15 K12 ["createElement"]
      103 LOADK                            R16 K36 ["Frame"]
      104 DUPTABLE                         R17 K40 [{["Size"], ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["Visible"], ["ZIndex"] = 2}]
      105 GETIMPORT                        R18 K16 [UDim2.new]
      107 LOADN                            R19 0
      108 MOVE                             R20 R1
      109 LOADN                            R21 1
      110 LOADN                            R22 0
      111 CALL                             R18 4 1
      112 SETTABLEKS                       R18 R17 K19 ["Size"]
      114 GETTABLEKS                       R18 R5 K6 ["item"]
      116 GETTABLEKS                       R18 R18 K41 ["selectedBarColor"]
      118 SETTABLEKS                       R18 R17 K22 ["BackgroundColor3"]
      120 SETTABLEKS                       R7 R17 K38 ["Visible"]
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K33 ["SelectedBar"]
      125 GETUPVAL                         R15 1
      126 GETTABLEKS                       R15 R15 K12 ["createElement"]
      128 LOADK                            R16 K36 ["Frame"]
      129 DUPTABLE                         R17 K44 [{["Size"], ["BackgroundTransparency"] = 1}]
      130 GETIMPORT                        R18 K16 [UDim2.new]
      132 LOADN                            R19 1
      133 LOADN                            R20 0
      134 LOADN                            R21 1
      135 LOADN                            R22 0
      136 CALL                             R18 4 1
      137 SETTABLEKS                       R18 R17 K19 ["Size"]
      139 DUPTABLE                         R18 K48 [{"UIPadding", "UIListLayout", "Thumbnail", "TextLabel"}]
      140 GETUPVAL                         R19 1
      141 GETTABLEKS                       R19 R19 K12 ["createElement"]
      143 LOADK                            R20 K45 ["UIPadding"]
      144 DUPTABLE                         R21 K53 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      145 GETIMPORT                        R22 K55 [UDim.new]
      147 LOADN                            R23 0
      148 LOADN                            R24 10
      149 CALL                             R22 2 1
      150 SETTABLEKS                       R22 R21 K49 ["PaddingLeft"]
      152 GETIMPORT                        R22 K55 [UDim.new]
      154 LOADN                            R23 0
      155 LOADN                            R24 10
      156 CALL                             R22 2 1
      157 SETTABLEKS                       R22 R21 K50 ["PaddingRight"]
      159 GETIMPORT                        R22 K55 [UDim.new]
      161 LOADN                            R23 0
      162 LOADN                            R24 2
      163 CALL                             R22 2 1
      164 SETTABLEKS                       R22 R21 K51 ["PaddingTop"]
      166 GETIMPORT                        R22 K55 [UDim.new]
      168 LOADN                            R23 0
      169 LOADN                            R24 2
      170 CALL                             R22 2 1
      171 SETTABLEKS                       R22 R21 K52 ["PaddingBottom"]
      173 CALL                             R19 2 1
      174 SETTABLEKS                       R19 R18 K45 ["UIPadding"]
      176 GETUPVAL                         R19 1
      177 GETTABLEKS                       R19 R19 K12 ["createElement"]
      179 LOADK                            R20 K46 ["UIListLayout"]
      180 DUPTABLE                         R21 K60 [{"FillDirection", "SortOrder", "VerticalAlignment", "Padding"}]
      181 GETIMPORT                        R22 K63 [Enum.FillDirection.Horizontal]
      183 SETTABLEKS                       R22 R21 K56 ["FillDirection"]
      185 GETIMPORT                        R22 K64 [Enum.SortOrder.LayoutOrder]
      187 SETTABLEKS                       R22 R21 K57 ["SortOrder"]
      189 GETIMPORT                        R22 K66 [Enum.VerticalAlignment.Center]
      191 SETTABLEKS                       R22 R21 K58 ["VerticalAlignment"]
      193 GETIMPORT                        R22 K55 [UDim.new]
      195 LOADN                            R23 0
      196 LOADN                            R24 10
      197 CALL                             R22 2 1
      198 SETTABLEKS                       R22 R21 K59 ["Padding"]
      200 CALL                             R19 2 1
      201 SETTABLEKS                       R19 R18 K46 ["UIListLayout"]
      203 GETUPVAL                         R19 1
      204 GETTABLEKS                       R19 R19 K12 ["createElement"]
      206 LOADK                            R20 K67 ["ImageLabel"]
      207 DUPTABLE                         R21 K72 [{["LayoutOrder"] = 2, ["Size"], ["SizeConstraint"], ["AnchorPoint"], ["Image"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 3}]
      208 GETIMPORT                        R22 K16 [UDim2.new]
      210 LOADK                            R23 K73 [0.8]
      211 LOADN                            R24 0
      212 LOADK                            R25 K73 [0.8]
      213 LOADN                            R26 0
      214 CALL                             R22 4 1
      215 SETTABLEKS                       R22 R21 K19 ["Size"]
      217 GETIMPORT                        R22 K75 [Enum.SizeConstraint.RelativeYY]
      219 SETTABLEKS                       R22 R21 K68 ["SizeConstraint"]
      221 GETIMPORT                        R22 K77 [Vector2.new]
      223 LOADN                            R23 0
      224 LOADK                            R24 K78 [0.5]
      225 CALL                             R22 2 1
      226 SETTABLEKS                       R22 R21 K69 ["AnchorPoint"]
      228 SETTABLEKS                       R9 R21 K70 ["Image"]
      230 CALL                             R19 2 1
      231 SETTABLEKS                       R19 R18 K10 ["Thumbnail"]
      233 GETUPVAL                         R19 1
      234 GETTABLEKS                       R19 R19 K12 ["createElement"]
      236 LOADK                            R20 K47 ["TextLabel"]
      237 DUPTABLE                         R21 K88 [{["LayoutOrder"] = 3, ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["TextTruncate"], ["ClipsDescendants"] = True, ["ZIndex"] = 3}]
      238 GETIMPORT                        R22 K16 [UDim2.new]
      240 LOADN                            R23 1
      241 LOADN                            R24 0
      242 LOADN                            R25 1
      243 LOADN                            R26 0
      244 CALL                             R22 4 1
      245 SETTABLEKS                       R22 R21 K19 ["Size"]
      247 SETTABLEKS                       R10 R21 K79 ["Text"]
      249 GETTABLEKS                       R22 R6 K89 ["textColor"]
      251 SETTABLEKS                       R22 R21 K80 ["TextColor3"]
      253 GETUPVAL                         R22 0
      254 GETTABLEKS                       R22 R22 K90 ["FONT"]
      256 SETTABLEKS                       R22 R21 K81 ["Font"]
      258 GETUPVAL                         R22 0
      259 GETTABLEKS                       R22 R22 K91 ["FONT_SIZE_MEDIUM"]
      261 SETTABLEKS                       R22 R21 K82 ["TextSize"]
      263 GETIMPORT                        R22 K93 [Enum.TextXAlignment.Left]
      265 SETTABLEKS                       R22 R21 K83 ["TextXAlignment"]
      267 GETIMPORT                        R22 K94 [Enum.TextYAlignment.Center]
      269 SETTABLEKS                       R22 R21 K84 ["TextYAlignment"]
      271 GETIMPORT                        R22 K96 [Enum.TextTruncate.AtEnd]
      273 SETTABLEKS                       R22 R21 K85 ["TextTruncate"]
      275 CALL                             R19 2 1
      276 SETTABLEKS                       R19 R18 K47 ["TextLabel"]
      278 CALL                             R15 3 1
      279 SETTABLEKS                       R15 R14 K34 ["Container"]
      281 CALL                             R11 3 -1
      282 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R5 K9 ["Util"]
       29 GETTABLEKS                       R5 R5 K10 ["Constants"]
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
