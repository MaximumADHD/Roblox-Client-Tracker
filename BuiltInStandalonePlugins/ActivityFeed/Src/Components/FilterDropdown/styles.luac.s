MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Resources"]
       24 GETTABLEKS                       R3 R3 K9 ["StyleTips"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R1 K10 ["Styling"]
       29 GETTABLEKS                       R3 R3 K11 ["createStyleRule"]
       31 GETIMPORT                        R4 K13 [game]
       33 LOADK                            R6 K14 ["ActivityHistoryCompactUI"]
       34 NAMECALL                         R4 R4 K15 ["GetFastFlag"]
       36 CALL                             R4 2 1
       37 GETTABLEKS                       R5 R2 K16 ["defaultPadding"]
       39 GETTABLEKS                       R6 R2 K17 ["smallPadding"]
       41 GETTABLEKS                       R7 R2 K18 ["normalFontSize"]
       43 JUMPIFNOT                        R4 ; [+2]
       44 ADDK                             R8 R7 K19 [2]
       45 JUMPIF                           R8 ; [+2]
       46 MULK                             R9 R5 K19 [2]
       47 ADD                              R8 R7 R9
       48 GETTABLEKS                       R9 R2 K20 ["defaultIconSize"]
       50 GETTABLEKS                       R10 R2 K21 ["bubbleCornerRadius"]
       52 MOVE                             R11 R3
       53 LOADK                            R12 K22 [".Component-FilterDropdown"]
       54 DUPTABLE                         R13 K27 [{["BorderSizePixel"] = 1, ["BackgroundColor3"], ["BorderColor3"]}]
       55 JUMPIFNOT                        R4 ; [+2]
       56 LOADK                            R14 K28 ["$FoundationColorsBackgroundPaper"]
       57 JUMP                             ; [+1]
       58 LOADK                            R14 K29 ["$BackgroundPaper"]
       59 SETTABLEKS                       R14 R13 K25 ["BackgroundColor3"]
       61 JUMPIFNOT                        R4 ; [+2]
       62 LOADK                            R14 K30 ["$FoundationColorsBackgroundDefault"]
       63 JUMP                             ; [+1]
       64 LOADK                            R14 K31 ["$BackgroundDefault"]
       65 SETTABLEKS                       R14 R13 K26 ["BorderColor3"]
       67 NEWTABLE                         R14 0 4
       69 MOVE                             R15 R3
       70 LOADK                            R16 K32 ["::UICorner"]
       71 DUPTABLE                         R17 K34 [{"CornerRadius"}]
       72 GETIMPORT                        R18 K37 [UDim.new]
       74 LOADN                            R19 0
       75 MOVE                             R20 R10
       76 CALL                             R18 2 1
       77 SETTABLEKS                       R18 R17 K33 ["CornerRadius"]
       79 CALL                             R15 2 1
       80 MOVE                             R16 R3
       81 LOADK                            R17 K38 ["::UIStroke"]
       82 DUPTABLE                         R18 K40 [{"Color"}]
       83 JUMPIFNOT                        R4 ; [+2]
       84 LOADK                            R19 K41 ["$FoundationColorsShift300"]
       85 JUMP                             ; [+1]
       86 LOADK                            R19 K42 ["$Divider"]
       87 SETTABLEKS                       R19 R18 K39 ["Color"]
       89 CALL                             R16 2 1
       90 MOVE                             R17 R3
       91 LOADK                            R18 K43 ["> #Content"]
       92 DUPTABLE                         R19 K45 [{"Size"}]
       93 GETIMPORT                        R20 K47 [UDim2.new]
       95 LOADN                            R21 1
       96 LOADN                            R22 0
       97 LOADN                            R23 0
       98 MOVE                             R24 R8
       99 CALL                             R20 4 1
      100 SETTABLEKS                       R20 R19 K44 ["Size"]
      102 NEWTABLE                         R20 0 3
      104 MOVE                             R21 R3
      105 LOADK                            R22 K48 ["::UIListLayout"]
      106 DUPTABLE                         R23 K50 [{"HorizontalFlex"}]
      107 GETIMPORT                        R24 K54 [Enum.UIFlexAlignment.SpaceBetween]
      109 SETTABLEKS                       R24 R23 K49 ["HorizontalFlex"]
      111 CALL                             R21 2 1
      112 MOVE                             R22 R3
      113 LOADK                            R23 K55 ["> #Selected"]
      114 DUPTABLE                         R24 K59 [{"TextColor3", "TextSize", "TextXAlignment"}]
      115 JUMPIFNOT                        R4 ; [+2]
      116 LOADK                            R25 K60 ["$FoundationColorsContentEmphasis"]
      117 JUMP                             ; [+1]
      118 LOADK                            R25 K61 ["$TextPrimary"]
      119 SETTABLEKS                       R25 R24 K56 ["TextColor3"]
      121 GETTABLEKS                       R25 R2 K18 ["normalFontSize"]
      123 SETTABLEKS                       R25 R24 K57 ["TextSize"]
      125 GETIMPORT                        R25 K63 [Enum.TextXAlignment.Left]
      127 SETTABLEKS                       R25 R24 K58 ["TextXAlignment"]
      129 NEWTABLE                         R25 0 1
      131 MOVE                             R26 R3
      132 LOADK                            R27 K64 ["::UIPadding"]
      133 DUPTABLE                         R28 K69 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
      134 GETIMPORT                        R29 K37 [UDim.new]
      136 LOADN                            R30 0
      137 MOVE                             R31 R5
      138 CALL                             R29 2 1
      139 SETTABLEKS                       R29 R28 K65 ["PaddingLeft"]
      141 GETIMPORT                        R29 K37 [UDim.new]
      143 LOADN                            R30 0
      144 JUMPIFNOT                        R4 ; [+2]
      145 LOADN                            R31 1
      146 JUMP                             ; [+1]
      147 MOVE                             R31 R5
      148 CALL                             R29 2 1
      149 SETTABLEKS                       R29 R28 K66 ["PaddingTop"]
      151 GETIMPORT                        R29 K37 [UDim.new]
      153 LOADN                            R30 0
      154 JUMPIFNOT                        R4 ; [+2]
      155 LOADN                            R31 2
      156 JUMP                             ; [+1]
      157 MOVE                             R31 R5
      158 CALL                             R29 2 1
      159 SETTABLEKS                       R29 R28 K67 ["PaddingBottom"]
      161 GETIMPORT                        R29 K37 [UDim.new]
      163 LOADN                            R30 0
      164 LOADN                            R31 0
      165 CALL                             R29 2 1
      166 SETTABLEKS                       R29 R28 K68 ["PaddingRight"]
      168 CALL                             R26 2 -1
      169 SETLIST                          R25 R26 -1 [1]
      171 CALL                             R22 3 1
      172 MOVE                             R23 R3
      173 LOADK                            R24 K70 ["> #DropdownIconContainer"]
      174 DUPTABLE                         R25 K72 [{"Size", "AutomaticSize"}]
      175 GETIMPORT                        R26 K47 [UDim2.new]
      177 LOADN                            R27 0
      178 LOADN                            R28 0
      179 LOADN                            R29 1
      180 LOADN                            R30 0
      181 CALL                             R26 4 1
      182 SETTABLEKS                       R26 R25 K44 ["Size"]
      184 GETIMPORT                        R26 K74 [Enum.AutomaticSize.X]
      186 SETTABLEKS                       R26 R25 K71 ["AutomaticSize"]
      188 NEWTABLE                         R26 0 3
      190 MOVE                             R27 R3
      191 LOADK                            R28 K48 ["::UIListLayout"]
      192 DUPTABLE                         R29 K76 [{"VerticalAlignment"}]
      193 GETIMPORT                        R30 K78 [Enum.VerticalAlignment.Center]
      195 SETTABLEKS                       R30 R29 K75 ["VerticalAlignment"]
      197 CALL                             R27 2 1
      198 MOVE                             R28 R3
      199 LOADK                            R29 K64 ["::UIPadding"]
      200 DUPTABLE                         R30 K79 [{"PaddingLeft", "PaddingRight"}]
      201 GETIMPORT                        R31 K37 [UDim.new]
      203 LOADN                            R32 0
      204 MOVE                             R33 R6
      205 CALL                             R31 2 1
      206 SETTABLEKS                       R31 R30 K65 ["PaddingLeft"]
      208 GETIMPORT                        R31 K37 [UDim.new]
      210 LOADN                            R32 0
      211 MOVE                             R33 R6
      212 CALL                             R31 2 1
      213 SETTABLEKS                       R31 R30 K68 ["PaddingRight"]
      215 CALL                             R28 2 1
      216 MOVE                             R29 R3
      217 LOADK                            R30 K80 ["> #DropdownIcon"]
      218 DUPTABLE                         R31 K85 [{["Size"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["Image"] = "$arrowdownicon"}]
      219 GETIMPORT                        R32 K47 [UDim2.new]
      221 LOADN                            R33 0
      222 MOVE                             R34 R9
      223 LOADN                            R35 0
      224 MOVE                             R36 R9
      225 CALL                             R32 4 1
      226 SETTABLEKS                       R32 R31 K44 ["Size"]
      228 CALL                             R29 2 -1
      229 SETLIST                          R26 R27 -1 [1]
      231 CALL                             R23 3 -1
      232 SETLIST                          R20 R21 -1 [1]
      234 CALL                             R17 3 1
      235 MOVE                             R18 R3
      236 LOADK                            R19 K86 [".ContentHovered"]
      237 NEWTABLE                         R20 0 0
      239 NEWTABLE                         R21 0 2
      241 MOVE                             R22 R3
      242 LOADK                            R23 K38 ["::UIStroke"]
      243 DUPTABLE                         R24 K40 [{"Color"}]
      244 JUMPIFNOT                        R4 ; [+2]
      245 LOADK                            R25 K87 ["$FoundationColorsShift200"]
      246 JUMP                             ; [+1]
      247 LOADK                            R25 K88 ["$ActionHover"]
      248 SETTABLEKS                       R25 R24 K39 ["Color"]
      250 CALL                             R22 2 1
      251 MOVE                             R23 R3
      252 LOADK                            R24 K89 [">> #DropdownIconContainer"]
      253 DUPTABLE                         R25 K90 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"]}]
      254 JUMPIFNOT                        R4 ; [+2]
      255 LOADK                            R26 K87 ["$FoundationColorsShift200"]
      256 JUMP                             ; [+1]
      257 LOADK                            R26 K88 ["$ActionHover"]
      258 SETTABLEKS                       R26 R25 K25 ["BackgroundColor3"]
      260 CALL                             R23 2 -1
      261 SETLIST                          R21 R22 -1 [1]
      263 CALL                             R18 3 -1
      264 SETLIST                          R14 R15 -1 [1]
      266 CALL                             R11 3 -1
      267 RETURN                           R11 -1
