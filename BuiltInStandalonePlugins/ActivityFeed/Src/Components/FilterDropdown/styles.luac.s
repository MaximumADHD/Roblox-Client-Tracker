MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K7 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Resources"]
       24 GETTABLEKS                       R3 R4 K9 ["StyleTips"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R4 R1 K10 ["Styling"]
       29 GETTABLEKS                       R3 R4 K11 ["createStyleRule"]
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
       54 DUPTABLE                         R13 K26 [{"BorderSizePixel", "BackgroundColor3", "BorderColor3"}]
       55 LOADN                            R14 1
       56 SETTABLEKS                       R14 R13 K23 ["BorderSizePixel"]
       58 JUMPIFNOT                        R4 ; [+2]
       59 LOADK                            R14 K27 ["$FoundationColorsBackgroundPaper"]
       60 JUMP                             ; [+1]
       61 LOADK                            R14 K28 ["$BackgroundPaper"]
       62 SETTABLEKS                       R14 R13 K24 ["BackgroundColor3"]
       64 JUMPIFNOT                        R4 ; [+2]
       65 LOADK                            R14 K29 ["$FoundationColorsBackgroundDefault"]
       66 JUMP                             ; [+1]
       67 LOADK                            R14 K30 ["$BackgroundDefault"]
       68 SETTABLEKS                       R14 R13 K25 ["BorderColor3"]
       70 NEWTABLE                         R14 0 4
       72 MOVE                             R15 R3
       73 LOADK                            R16 K31 ["::UICorner"]
       74 DUPTABLE                         R17 K33 [{"CornerRadius"}]
       75 GETIMPORT                        R18 K36 [UDim.new]
       77 LOADN                            R19 0
       78 MOVE                             R20 R10
       79 CALL                             R18 2 1
       80 SETTABLEKS                       R18 R17 K32 ["CornerRadius"]
       82 CALL                             R15 2 1
       83 MOVE                             R16 R3
       84 LOADK                            R17 K37 ["::UIStroke"]
       85 DUPTABLE                         R18 K39 [{"Color"}]
       86 JUMPIFNOT                        R4 ; [+2]
       87 LOADK                            R19 K40 ["$FoundationColorsShift300"]
       88 JUMP                             ; [+1]
       89 LOADK                            R19 K41 ["$Divider"]
       90 SETTABLEKS                       R19 R18 K38 ["Color"]
       92 CALL                             R16 2 1
       93 MOVE                             R17 R3
       94 LOADK                            R18 K42 ["> #Content"]
       95 DUPTABLE                         R19 K44 [{"Size"}]
       96 GETIMPORT                        R20 K46 [UDim2.new]
       98 LOADN                            R21 1
       99 LOADN                            R22 0
      100 LOADN                            R23 0
      101 MOVE                             R24 R8
      102 CALL                             R20 4 1
      103 SETTABLEKS                       R20 R19 K43 ["Size"]
      105 NEWTABLE                         R20 0 3
      107 MOVE                             R21 R3
      108 LOADK                            R22 K47 ["::UIListLayout"]
      109 DUPTABLE                         R23 K49 [{"HorizontalFlex"}]
      110 GETIMPORT                        R24 K53 [Enum.UIFlexAlignment.SpaceBetween]
      112 SETTABLEKS                       R24 R23 K48 ["HorizontalFlex"]
      114 CALL                             R21 2 1
      115 MOVE                             R22 R3
      116 LOADK                            R23 K54 ["> #Selected"]
      117 DUPTABLE                         R24 K58 [{"TextColor3", "TextSize", "TextXAlignment"}]
      118 JUMPIFNOT                        R4 ; [+2]
      119 LOADK                            R25 K59 ["$FoundationColorsContentEmphasis"]
      120 JUMP                             ; [+1]
      121 LOADK                            R25 K60 ["$TextPrimary"]
      122 SETTABLEKS                       R25 R24 K55 ["TextColor3"]
      124 GETTABLEKS                       R25 R2 K18 ["normalFontSize"]
      126 SETTABLEKS                       R25 R24 K56 ["TextSize"]
      128 GETIMPORT                        R25 K62 [Enum.TextXAlignment.Left]
      130 SETTABLEKS                       R25 R24 K57 ["TextXAlignment"]
      132 NEWTABLE                         R25 0 1
      134 MOVE                             R26 R3
      135 LOADK                            R27 K63 ["::UIPadding"]
      136 DUPTABLE                         R28 K68 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
      137 GETIMPORT                        R29 K36 [UDim.new]
      139 LOADN                            R30 0
      140 MOVE                             R31 R5
      141 CALL                             R29 2 1
      142 SETTABLEKS                       R29 R28 K64 ["PaddingLeft"]
      144 GETIMPORT                        R29 K36 [UDim.new]
      146 LOADN                            R30 0
      147 JUMPIFNOT                        R4 ; [+2]
      148 LOADN                            R31 1
      149 JUMP                             ; [+1]
      150 MOVE                             R31 R5
      151 CALL                             R29 2 1
      152 SETTABLEKS                       R29 R28 K65 ["PaddingTop"]
      154 GETIMPORT                        R29 K36 [UDim.new]
      156 LOADN                            R30 0
      157 JUMPIFNOT                        R4 ; [+2]
      158 LOADN                            R31 2
      159 JUMP                             ; [+1]
      160 MOVE                             R31 R5
      161 CALL                             R29 2 1
      162 SETTABLEKS                       R29 R28 K66 ["PaddingBottom"]
      164 GETIMPORT                        R29 K36 [UDim.new]
      166 LOADN                            R30 0
      167 LOADN                            R31 0
      168 CALL                             R29 2 1
      169 SETTABLEKS                       R29 R28 K67 ["PaddingRight"]
      171 CALL                             R26 2 -1
      172 SETLIST                          R25 R26 -1 [1]
      174 CALL                             R22 3 1
      175 MOVE                             R23 R3
      176 LOADK                            R24 K69 ["> #DropdownIconContainer"]
      177 DUPTABLE                         R25 K71 [{"Size", "AutomaticSize"}]
      178 GETIMPORT                        R26 K46 [UDim2.new]
      180 LOADN                            R27 0
      181 LOADN                            R28 0
      182 LOADN                            R29 1
      183 LOADN                            R30 0
      184 CALL                             R26 4 1
      185 SETTABLEKS                       R26 R25 K43 ["Size"]
      187 GETIMPORT                        R26 K73 [Enum.AutomaticSize.X]
      189 SETTABLEKS                       R26 R25 K70 ["AutomaticSize"]
      191 NEWTABLE                         R26 0 3
      193 MOVE                             R27 R3
      194 LOADK                            R28 K47 ["::UIListLayout"]
      195 DUPTABLE                         R29 K75 [{"VerticalAlignment"}]
      196 GETIMPORT                        R30 K77 [Enum.VerticalAlignment.Center]
      198 SETTABLEKS                       R30 R29 K74 ["VerticalAlignment"]
      200 CALL                             R27 2 1
      201 MOVE                             R28 R3
      202 LOADK                            R29 K63 ["::UIPadding"]
      203 DUPTABLE                         R30 K78 [{"PaddingLeft", "PaddingRight"}]
      204 GETIMPORT                        R31 K36 [UDim.new]
      206 LOADN                            R32 0
      207 MOVE                             R33 R6
      208 CALL                             R31 2 1
      209 SETTABLEKS                       R31 R30 K64 ["PaddingLeft"]
      211 GETIMPORT                        R31 K36 [UDim.new]
      213 LOADN                            R32 0
      214 MOVE                             R33 R6
      215 CALL                             R31 2 1
      216 SETTABLEKS                       R31 R30 K67 ["PaddingRight"]
      218 CALL                             R28 2 1
      219 MOVE                             R29 R3
      220 LOADK                            R30 K79 ["> #DropdownIcon"]
      221 DUPTABLE                         R31 K82 [{"Size", "BorderSizePixel", "BackgroundTransparency", "Image"}]
      222 GETIMPORT                        R32 K46 [UDim2.new]
      224 LOADN                            R33 0
      225 MOVE                             R34 R9
      226 LOADN                            R35 0
      227 MOVE                             R36 R9
      228 CALL                             R32 4 1
      229 SETTABLEKS                       R32 R31 K43 ["Size"]
      231 LOADN                            R32 0
      232 SETTABLEKS                       R32 R31 K23 ["BorderSizePixel"]
      234 LOADN                            R32 1
      235 SETTABLEKS                       R32 R31 K80 ["BackgroundTransparency"]
      237 LOADK                            R32 K83 ["$arrowdownicon"]
      238 SETTABLEKS                       R32 R31 K81 ["Image"]
      240 CALL                             R29 2 -1
      241 SETLIST                          R26 R27 -1 [1]
      243 CALL                             R23 3 -1
      244 SETLIST                          R20 R21 -1 [1]
      246 CALL                             R17 3 1
      247 MOVE                             R18 R3
      248 LOADK                            R19 K84 [".ContentHovered"]
      249 NEWTABLE                         R20 0 0
      251 NEWTABLE                         R21 0 2
      253 MOVE                             R22 R3
      254 LOADK                            R23 K37 ["::UIStroke"]
      255 DUPTABLE                         R24 K39 [{"Color"}]
      256 JUMPIFNOT                        R4 ; [+2]
      257 LOADK                            R25 K85 ["$FoundationColorsShift200"]
      258 JUMP                             ; [+1]
      259 LOADK                            R25 K86 ["$ActionHover"]
      260 SETTABLEKS                       R25 R24 K38 ["Color"]
      262 CALL                             R22 2 1
      263 MOVE                             R23 R3
      264 LOADK                            R24 K87 [">> #DropdownIconContainer"]
      265 DUPTABLE                         R25 K88 [{"BackgroundTransparency", "BackgroundColor3"}]
      266 LOADN                            R26 0
      267 SETTABLEKS                       R26 R25 K80 ["BackgroundTransparency"]
      269 JUMPIFNOT                        R4 ; [+2]
      270 LOADK                            R26 K85 ["$FoundationColorsShift200"]
      271 JUMP                             ; [+1]
      272 LOADK                            R26 K86 ["$ActionHover"]
      273 SETTABLEKS                       R26 R25 K24 ["BackgroundColor3"]
      275 CALL                             R23 2 -1
      276 SETLIST                          R21 R22 -1 [1]
      278 CALL                             R18 3 -1
      279 SETLIST                          R14 R15 -1 [1]
      281 CALL                             R11 3 -1
      282 RETURN                           R11 -1
