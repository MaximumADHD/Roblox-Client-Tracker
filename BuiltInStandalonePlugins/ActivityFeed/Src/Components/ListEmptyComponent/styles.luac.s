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
       18 GETTABLEKS                       R3 R1 K7 ["Styling"]
       20 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R6 R0 K9 ["Src"]
       26 GETTABLEKS                       R5 R6 K10 ["Resources"]
       28 GETTABLEKS                       R4 R5 K11 ["StyleTips"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K12 ["buttonPaddingHorizontal"]
       33 GETTABLEKS                       R5 R3 K13 ["buttonPaddingVertical"]
       35 GETTABLEKS                       R6 R3 K14 ["buttonCornerRadius"]
       37 GETTABLEKS                       R7 R3 K15 ["largeIconSize"]
       39 GETTABLEKS                       R8 R3 K16 ["emptyScreenContentPaddingPercentage"]
       41 GETIMPORT                        R9 K18 [game]
       43 LOADK                            R11 K19 ["ActivityHistoryCompactUI"]
       44 NAMECALL                         R9 R9 K20 ["GetFastFlag"]
       46 CALL                             R9 2 1
       47 MOVE                             R10 R2
       48 LOADK                            R11 K21 [".Component-ListEmptyComponent"]
       49 DUPTABLE                         R12 K24 [{"Size", "BackgroundColor3"}]
       50 GETIMPORT                        R13 K27 [UDim2.new]
       52 LOADN                            R14 1
       53 LOADN                            R15 0
       54 LOADN                            R16 1
       55 LOADN                            R17 0
       56 CALL                             R13 4 1
       57 SETTABLEKS                       R13 R12 K22 ["Size"]
       59 JUMPIFNOT                        R9 ; [+2]
       60 LOADK                            R13 K28 ["$FoundationColorsBackgroundPaper"]
       61 JUMP                             ; [+1]
       62 LOADK                            R13 K29 ["$BackgroundPaper"]
       63 SETTABLEKS                       R13 R12 K23 ["BackgroundColor3"]
       65 NEWTABLE                         R13 0 5
       67 MOVE                             R14 R2
       68 LOADK                            R15 K30 ["::UIPadding"]
       69 DUPTABLE                         R16 K32 [{"PaddingTopPercentage"}]
       70 GETIMPORT                        R17 K34 [UDim.new]
       72 MOVE                             R18 R8
       73 LOADN                            R19 2
       74 CALL                             R17 2 1
       75 SETTABLEKS                       R17 R16 K31 ["PaddingTopPercentage"]
       77 CALL                             R14 2 1
       78 MOVE                             R15 R2
       79 LOADK                            R16 K35 ["::UIListLayout"]
       80 DUPTABLE                         R17 K37 [{"Padding"}]
       81 GETIMPORT                        R18 K34 [UDim.new]
       83 LOADN                            R19 0
       84 LOADN                            R20 8
       85 CALL                             R18 2 1
       86 SETTABLEKS                       R18 R17 K36 ["Padding"]
       88 CALL                             R15 2 1
       89 MOVE                             R16 R2
       90 LOADK                            R17 K38 ["> #NoFilterResultsIcon"]
       91 DUPTABLE                         R18 K41 [{"Size", "Image", "BackgroundTransparency"}]
       92 GETIMPORT                        R19 K27 [UDim2.new]
       94 LOADN                            R20 0
       95 MOVE                             R21 R7
       96 LOADN                            R22 0
       97 MOVE                             R23 R7
       98 CALL                             R19 4 1
       99 SETTABLEKS                       R19 R18 K22 ["Size"]
      101 LOADK                            R19 K42 ["$nofilterresults"]
      102 SETTABLEKS                       R19 R18 K39 ["Image"]
      104 LOADN                            R19 1
      105 SETTABLEKS                       R19 R18 K40 ["BackgroundTransparency"]
      107 CALL                             R16 2 1
      108 MOVE                             R17 R2
      109 LOADK                            R18 K43 ["> #Description"]
      110 DUPTABLE                         R19 K48 [{"TextXAlignment", "TextColor3", "TextSize", "Font"}]
      111 GETIMPORT                        R20 K51 [Enum.TextXAlignment.Center]
      113 SETTABLEKS                       R20 R19 K44 ["TextXAlignment"]
      115 JUMPIFNOT                        R9 ; [+2]
      116 LOADK                            R20 K52 ["$FoundationColorsContentEmphasis"]
      117 JUMP                             ; [+1]
      118 LOADK                            R20 K53 ["$TextPrimary"]
      119 SETTABLEKS                       R20 R19 K45 ["TextColor3"]
      121 GETTABLEKS                       R20 R3 K54 ["normalFontSize"]
      123 SETTABLEKS                       R20 R19 K46 ["TextSize"]
      125 GETTABLEKS                       R20 R3 K55 ["boldedFont"]
      127 SETTABLEKS                       R20 R19 K47 ["Font"]
      129 CALL                             R17 2 1
      130 MOVE                             R18 R2
      131 LOADK                            R19 K56 ["> #Edit"]
      132 DUPTABLE                         R20 K58 [{"AutoButtonColor", "TextColor3", "BackgroundColor3"}]
      133 LOADB                            R21 0
      134 SETTABLEKS                       R21 R20 K57 ["AutoButtonColor"]
      136 JUMPIFNOT                        R9 ; [+2]
      137 LOADK                            R21 K52 ["$FoundationColorsContentEmphasis"]
      138 JUMP                             ; [+1]
      139 LOADK                            R21 K53 ["$TextPrimary"]
      140 SETTABLEKS                       R21 R20 K45 ["TextColor3"]
      142 LOADK                            R21 K59 ["$SecondaryMain"]
      143 SETTABLEKS                       R21 R20 K23 ["BackgroundColor3"]
      145 NEWTABLE                         R21 0 3
      147 MOVE                             R22 R2
      148 LOADK                            R23 K60 ["::UICorner"]
      149 DUPTABLE                         R24 K62 [{"CornerRadius"}]
      150 GETIMPORT                        R25 K34 [UDim.new]
      152 LOADN                            R26 0
      153 MOVE                             R27 R6
      154 CALL                             R25 2 1
      155 SETTABLEKS                       R25 R24 K61 ["CornerRadius"]
      157 CALL                             R22 2 1
      158 MOVE                             R23 R2
      159 LOADK                            R24 K30 ["::UIPadding"]
      160 DUPTABLE                         R25 K67 [{"PaddingRight", "PaddingLeft", "PaddingTop", "PaddingBottom"}]
      161 GETIMPORT                        R26 K34 [UDim.new]
      163 LOADN                            R27 0
      164 MOVE                             R28 R4
      165 CALL                             R26 2 1
      166 SETTABLEKS                       R26 R25 K63 ["PaddingRight"]
      168 GETIMPORT                        R26 K34 [UDim.new]
      170 LOADN                            R27 0
      171 MOVE                             R28 R4
      172 CALL                             R26 2 1
      173 SETTABLEKS                       R26 R25 K64 ["PaddingLeft"]
      175 GETIMPORT                        R26 K34 [UDim.new]
      177 LOADN                            R27 0
      178 MOVE                             R28 R5
      179 CALL                             R26 2 1
      180 SETTABLEKS                       R26 R25 K65 ["PaddingTop"]
      182 GETIMPORT                        R26 K34 [UDim.new]
      184 LOADN                            R27 0
      185 MOVE                             R28 R5
      186 CALL                             R26 2 1
      187 SETTABLEKS                       R26 R25 K66 ["PaddingBottom"]
      189 CALL                             R23 2 1
      190 MOVE                             R24 R2
      191 LOADK                            R25 K68 [":hover"]
      192 DUPTABLE                         R26 K69 [{"BackgroundColor3"}]
      193 LOADK                            R27 K70 ["$SecondaryHoverBackground"]
      194 SETTABLEKS                       R27 R26 K23 ["BackgroundColor3"]
      196 CALL                             R24 2 -1
      197 SETLIST                          R21 R22 -1 [1]
      199 CALL                             R18 3 -1
      200 SETLIST                          R13 R14 -1 [1]
      202 CALL                             R10 3 -1
      203 RETURN                           R10 -1
