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
       18 GETTABLEKS                       R2 R1 K7 ["Styling"]
       20 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K10 ["Resources"]
       28 GETTABLEKS                       R4 R4 K11 ["StyleTips"]
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
       91 DUPTABLE                         R18 K43 [{["Size"], ["Image"] = "$nofilterresults", ["BackgroundTransparency"] = 1}]
       92 GETIMPORT                        R19 K27 [UDim2.new]
       94 LOADN                            R20 0
       95 MOVE                             R21 R7
       96 LOADN                            R22 0
       97 MOVE                             R23 R7
       98 CALL                             R19 4 1
       99 SETTABLEKS                       R19 R18 K22 ["Size"]
      101 CALL                             R16 2 1
      102 MOVE                             R17 R2
      103 LOADK                            R18 K44 ["> #Description"]
      104 DUPTABLE                         R19 K49 [{"TextXAlignment", "TextColor3", "TextSize", "Font"}]
      105 GETIMPORT                        R20 K52 [Enum.TextXAlignment.Center]
      107 SETTABLEKS                       R20 R19 K45 ["TextXAlignment"]
      109 JUMPIFNOT                        R9 ; [+2]
      110 LOADK                            R20 K53 ["$FoundationColorsContentEmphasis"]
      111 JUMP                             ; [+1]
      112 LOADK                            R20 K54 ["$TextPrimary"]
      113 SETTABLEKS                       R20 R19 K46 ["TextColor3"]
      115 GETTABLEKS                       R20 R3 K55 ["normalFontSize"]
      117 SETTABLEKS                       R20 R19 K47 ["TextSize"]
      119 GETTABLEKS                       R20 R3 K56 ["boldedFont"]
      121 SETTABLEKS                       R20 R19 K48 ["Font"]
      123 CALL                             R17 2 1
      124 MOVE                             R18 R2
      125 LOADK                            R19 K57 ["> #Edit"]
      126 DUPTABLE                         R20 K61 [{["AutoButtonColor"] = False, ["TextColor3"], ["BackgroundColor3"] = "$SecondaryMain"}]
      127 JUMPIFNOT                        R9 ; [+2]
      128 LOADK                            R21 K53 ["$FoundationColorsContentEmphasis"]
      129 JUMP                             ; [+1]
      130 LOADK                            R21 K54 ["$TextPrimary"]
      131 SETTABLEKS                       R21 R20 K46 ["TextColor3"]
      133 NEWTABLE                         R21 0 3
      135 MOVE                             R22 R2
      136 LOADK                            R23 K62 ["::UICorner"]
      137 DUPTABLE                         R24 K64 [{"CornerRadius"}]
      138 GETIMPORT                        R25 K34 [UDim.new]
      140 LOADN                            R26 0
      141 MOVE                             R27 R6
      142 CALL                             R25 2 1
      143 SETTABLEKS                       R25 R24 K63 ["CornerRadius"]
      145 CALL                             R22 2 1
      146 MOVE                             R23 R2
      147 LOADK                            R24 K30 ["::UIPadding"]
      148 DUPTABLE                         R25 K69 [{"PaddingRight", "PaddingLeft", "PaddingTop", "PaddingBottom"}]
      149 GETIMPORT                        R26 K34 [UDim.new]
      151 LOADN                            R27 0
      152 MOVE                             R28 R4
      153 CALL                             R26 2 1
      154 SETTABLEKS                       R26 R25 K65 ["PaddingRight"]
      156 GETIMPORT                        R26 K34 [UDim.new]
      158 LOADN                            R27 0
      159 MOVE                             R28 R4
      160 CALL                             R26 2 1
      161 SETTABLEKS                       R26 R25 K66 ["PaddingLeft"]
      163 GETIMPORT                        R26 K34 [UDim.new]
      165 LOADN                            R27 0
      166 MOVE                             R28 R5
      167 CALL                             R26 2 1
      168 SETTABLEKS                       R26 R25 K67 ["PaddingTop"]
      170 GETIMPORT                        R26 K34 [UDim.new]
      172 LOADN                            R27 0
      173 MOVE                             R28 R5
      174 CALL                             R26 2 1
      175 SETTABLEKS                       R26 R25 K68 ["PaddingBottom"]
      177 CALL                             R23 2 1
      178 MOVE                             R24 R2
      179 LOADK                            R25 K70 [":hover"]
      180 DUPTABLE                         R26 K72 [{["BackgroundColor3"] = "$SecondaryHoverBackground"}]
      181 CALL                             R24 2 -1
      182 SETLIST                          R21 R22 -1 [1]
      184 CALL                             R18 3 -1
      185 SETLIST                          R13 R14 -1 [1]
      187 CALL                             R10 3 -1
      188 RETURN                           R10 -1
