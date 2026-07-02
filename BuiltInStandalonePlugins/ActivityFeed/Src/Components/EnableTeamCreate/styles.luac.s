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
       31 GETTABLEKS                       R4 R3 K12 ["defaultPadding"]
       33 GETTABLEKS                       R5 R3 K13 ["buttonPaddingVertical"]
       35 GETTABLEKS                       R6 R3 K14 ["buttonPaddingHorizontal"]
       37 GETTABLEKS                       R7 R3 K15 ["largeIconSize"]
       39 GETTABLEKS                       R8 R3 K16 ["normalFontSize"]
       41 GETTABLEKS                       R9 R3 K17 ["boldedFont"]
       43 GETTABLEKS                       R10 R3 K18 ["emptyScreenContentPaddingPercentage"]
       45 GETIMPORT                        R11 K20 [game]
       47 LOADK                            R13 K21 ["ActivityHistoryCompactUI"]
       48 NAMECALL                         R11 R11 K22 ["GetFastFlag"]
       50 CALL                             R11 2 1
       51 MOVE                             R12 R2
       52 LOADK                            R13 K23 [".Component-EnableTeamCreate"]
       53 DUPTABLE                         R14 K26 [{"Size", "BackgroundColor3"}]
       54 GETIMPORT                        R15 K29 [UDim2.new]
       56 LOADN                            R16 1
       57 LOADN                            R17 0
       58 LOADN                            R18 1
       59 LOADN                            R19 0
       60 CALL                             R15 4 1
       61 SETTABLEKS                       R15 R14 K24 ["Size"]
       63 JUMPIFNOT                        R11 ; [+2]
       64 LOADK                            R15 K30 ["$FoundationColorsBackgroundPaper"]
       65 JUMP                             ; [+1]
       66 LOADK                            R15 K31 ["$BackgroundPaper"]
       67 SETTABLEKS                       R15 R14 K25 ["BackgroundColor3"]
       69 NEWTABLE                         R15 0 5
       71 MOVE                             R16 R2
       72 LOADK                            R17 K32 ["::UIPadding"]
       73 DUPTABLE                         R18 K34 [{"PaddingTop"}]
       74 GETIMPORT                        R19 K36 [UDim.new]
       76 MOVE                             R20 R10
       77 LOADN                            R21 0
       78 CALL                             R19 2 1
       79 SETTABLEKS                       R19 R18 K33 ["PaddingTop"]
       81 CALL                             R16 2 1
       82 MOVE                             R17 R2
       83 LOADK                            R18 K37 ["::UIListLayout"]
       84 DUPTABLE                         R19 K39 [{"Padding"}]
       85 GETIMPORT                        R20 K36 [UDim.new]
       87 LOADN                            R21 0
       88 MOVE                             R22 R4
       89 CALL                             R20 2 1
       90 SETTABLEKS                       R20 R19 K38 ["Padding"]
       92 CALL                             R17 2 1
       93 MOVE                             R18 R2
       94 LOADK                            R19 K40 ["> #UnsavedExperienceIcon"]
       95 DUPTABLE                         R20 K45 [{["Size"], ["Image"] = "$unsavedexperience", ["BackgroundTransparency"] = 1}]
       96 GETIMPORT                        R21 K29 [UDim2.new]
       98 LOADN                            R22 0
       99 MOVE                             R23 R7
      100 LOADN                            R24 0
      101 MOVE                             R25 R7
      102 CALL                             R21 4 1
      103 SETTABLEKS                       R21 R20 K24 ["Size"]
      105 CALL                             R18 2 1
      106 MOVE                             R19 R2
      107 LOADK                            R20 K46 ["> #Text"]
      108 DUPTABLE                         R21 K51 [{"TextXAlignment", "TextColor3", "TextSize", "Font"}]
      109 GETIMPORT                        R22 K54 [Enum.TextXAlignment.Center]
      111 SETTABLEKS                       R22 R21 K47 ["TextXAlignment"]
      113 JUMPIFNOT                        R11 ; [+2]
      114 LOADK                            R22 K55 ["$FoundationColorsContentEmphasis"]
      115 JUMP                             ; [+1]
      116 LOADK                            R22 K56 ["$TextPrimary"]
      117 SETTABLEKS                       R22 R21 K48 ["TextColor3"]
      119 SETTABLEKS                       R8 R21 K49 ["TextSize"]
      121 SETTABLEKS                       R9 R21 K50 ["Font"]
      123 CALL                             R19 2 1
      124 MOVE                             R20 R2
      125 LOADK                            R21 K57 ["> #Button"]
      126 DUPTABLE                         R22 K60 [{["BackgroundColor3"] = "$PrimaryMain", ["TextColor3"] = "$TextContrast", ["TextSize"]}]
      127 SETTABLEKS                       R8 R22 K49 ["TextSize"]
      129 NEWTABLE                         R23 0 2
      131 MOVE                             R24 R2
      132 LOADK                            R25 K32 ["::UIPadding"]
      133 DUPTABLE                         R26 K64 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      134 GETIMPORT                        R27 K36 [UDim.new]
      136 LOADN                            R28 0
      137 MOVE                             R29 R5
      138 CALL                             R27 2 1
      139 SETTABLEKS                       R27 R26 K33 ["PaddingTop"]
      141 GETIMPORT                        R27 K36 [UDim.new]
      143 LOADN                            R28 0
      144 MOVE                             R29 R5
      145 CALL                             R27 2 1
      146 SETTABLEKS                       R27 R26 K61 ["PaddingBottom"]
      148 GETIMPORT                        R27 K36 [UDim.new]
      150 LOADN                            R28 0
      151 MOVE                             R29 R6
      152 CALL                             R27 2 1
      153 SETTABLEKS                       R27 R26 K62 ["PaddingLeft"]
      155 GETIMPORT                        R27 K36 [UDim.new]
      157 LOADN                            R28 0
      158 MOVE                             R29 R6
      159 CALL                             R27 2 1
      160 SETTABLEKS                       R27 R26 K63 ["PaddingRight"]
      162 CALL                             R24 2 1
      163 MOVE                             R25 R2
      164 LOADK                            R26 K65 [":hover"]
      165 DUPTABLE                         R27 K67 [{["BackgroundColor3"] = "$PrimaryHoverBackground"}]
      166 CALL                             R25 2 -1
      167 SETLIST                          R23 R24 -1 [1]
      169 CALL                             R20 3 -1
      170 SETLIST                          R15 R16 -1 [1]
      172 CALL                             R12 3 -1
      173 RETURN                           R12 -1
