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
       24 GETTABLEKS                       R7 R0 K9 ["Src"]
       26 GETTABLEKS                       R6 R7 K10 ["Components"]
       28 GETTABLEKS                       R5 R6 K11 ["NotificationMenu"]
       30 GETTABLEKS                       R4 R5 K12 ["constants"]
       32 CALL                             R3 1 1
       33 MOVE                             R4 R2
       34 LOADK                            R5 K13 [".Component-NotificationMenu"]
       35 DUPTABLE                         R6 K15 [{"BackgroundColor3"}]
       36 LOADK                            R7 K16 ["$BackgroundPaper"]
       37 SETTABLEKS                       R7 R6 K14 ["BackgroundColor3"]
       39 NEWTABLE                         R7 0 2
       41 MOVE                             R8 R2
       42 LOADK                            R9 K17 ["::UICorner"]
       43 DUPTABLE                         R10 K19 [{"CornerRadius"}]
       44 GETIMPORT                        R11 K22 [UDim.new]
       46 LOADN                            R12 0
       47 LOADN                            R13 4
       48 CALL                             R11 2 1
       49 SETTABLEKS                       R11 R10 K18 ["CornerRadius"]
       51 CALL                             R8 2 1
       52 MOVE                             R9 R2
       53 LOADK                            R10 K23 [">> .Component-NotificationMenuInner"]
       54 DUPTABLE                         R11 K15 [{"BackgroundColor3"}]
       55 LOADK                            R12 K24 ["$SecondaryMain"]
       56 SETTABLEKS                       R12 R11 K14 ["BackgroundColor3"]
       58 NEWTABLE                         R12 0 3
       60 MOVE                             R13 R2
       61 LOADK                            R14 K17 ["::UICorner"]
       62 DUPTABLE                         R15 K19 [{"CornerRadius"}]
       63 GETIMPORT                        R16 K22 [UDim.new]
       65 LOADN                            R17 0
       66 LOADN                            R18 4
       67 CALL                             R16 2 1
       68 SETTABLEKS                       R16 R15 K18 ["CornerRadius"]
       70 CALL                             R13 2 1
       71 MOVE                             R14 R2
       72 LOADK                            R15 K25 ["::UIListLayout"]
       73 DUPTABLE                         R16 K30 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
       74 GETIMPORT                        R17 K33 [Enum.FillDirection.Vertical]
       76 SETTABLEKS                       R17 R16 K26 ["FillDirection"]
       78 GETIMPORT                        R17 K35 [Enum.HorizontalAlignment.Left]
       80 SETTABLEKS                       R17 R16 K27 ["HorizontalAlignment"]
       82 GETIMPORT                        R17 K37 [Enum.SortOrder.LayoutOrder]
       84 SETTABLEKS                       R17 R16 K28 ["SortOrder"]
       86 GETIMPORT                        R17 K39 [Enum.VerticalAlignment.Top]
       88 SETTABLEKS                       R17 R16 K29 ["VerticalAlignment"]
       90 CALL                             R14 2 1
       91 MOVE                             R15 R2
       92 LOADK                            R16 K40 [">> .Component-NotificationMenuOptionButton"]
       93 DUPTABLE                         R17 K49 [{"BorderSizePixel", "Font", "TextSize", "TextTruncate", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextColor3", "BackgroundColor3"}]
       94 LOADN                            R18 0
       95 SETTABLEKS                       R18 R17 K41 ["BorderSizePixel"]
       97 GETTABLEKS                       R18 R3 K50 ["TEXT_FONT"]
       99 SETTABLEKS                       R18 R17 K42 ["Font"]
      101 GETTABLEKS                       R18 R3 K51 ["TEXT_SIZE"]
      103 SETTABLEKS                       R18 R17 K43 ["TextSize"]
      105 GETIMPORT                        R18 K53 [Enum.TextTruncate.AtEnd]
      107 SETTABLEKS                       R18 R17 K44 ["TextTruncate"]
      109 LOADB                            R18 1
      110 SETTABLEKS                       R18 R17 K45 ["TextWrapped"]
      112 GETIMPORT                        R18 K54 [Enum.TextXAlignment.Left]
      114 SETTABLEKS                       R18 R17 K46 ["TextXAlignment"]
      116 GETIMPORT                        R18 K56 [Enum.TextYAlignment.Center]
      118 SETTABLEKS                       R18 R17 K47 ["TextYAlignment"]
      120 LOADK                            R18 K57 ["$TextPrimary"]
      121 SETTABLEKS                       R18 R17 K48 ["TextColor3"]
      123 LOADK                            R18 K24 ["$SecondaryMain"]
      124 SETTABLEKS                       R18 R17 K14 ["BackgroundColor3"]
      126 NEWTABLE                         R18 0 5
      128 MOVE                             R19 R2
      129 LOADK                            R20 K17 ["::UICorner"]
      130 DUPTABLE                         R21 K19 [{"CornerRadius"}]
      131 GETIMPORT                        R22 K22 [UDim.new]
      133 LOADN                            R23 0
      134 LOADN                            R24 4
      135 CALL                             R22 2 1
      136 SETTABLEKS                       R22 R21 K18 ["CornerRadius"]
      138 CALL                             R19 2 1
      139 MOVE                             R20 R2
      140 LOADK                            R21 K58 ["::UISizeConstraint"]
      141 DUPTABLE                         R22 K60 [{"MaxSize"}]
      142 GETIMPORT                        R23 K62 [Vector2.new]
      144 LOADK                            R24 K63 [∞]
      145 LOADN                            R25 48
      146 CALL                             R23 2 1
      147 SETTABLEKS                       R23 R22 K59 ["MaxSize"]
      149 CALL                             R20 2 1
      150 MOVE                             R21 R2
      151 LOADK                            R22 K64 ["::UIPadding"]
      152 DUPTABLE                         R23 K69 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      153 GETIMPORT                        R24 K22 [UDim.new]
      155 LOADN                            R25 0
      156 GETTABLEKS                       R26 R3 K70 ["LEFT_RIGHT_BUTTON_PADDING"]
      158 CALL                             R24 2 1
      159 SETTABLEKS                       R24 R23 K65 ["PaddingLeft"]
      161 GETIMPORT                        R24 K22 [UDim.new]
      163 LOADN                            R25 0
      164 GETTABLEKS                       R26 R3 K70 ["LEFT_RIGHT_BUTTON_PADDING"]
      166 CALL                             R24 2 1
      167 SETTABLEKS                       R24 R23 K66 ["PaddingRight"]
      169 GETIMPORT                        R24 K22 [UDim.new]
      171 LOADN                            R25 0
      172 LOADN                            R26 4
      173 CALL                             R24 2 1
      174 SETTABLEKS                       R24 R23 K67 ["PaddingTop"]
      176 GETIMPORT                        R24 K22 [UDim.new]
      178 LOADN                            R25 0
      179 LOADN                            R26 4
      180 CALL                             R24 2 1
      181 SETTABLEKS                       R24 R23 K68 ["PaddingBottom"]
      183 CALL                             R21 2 1
      184 MOVE                             R22 R2
      185 LOADK                            R23 K71 [":hover"]
      186 DUPTABLE                         R24 K15 [{"BackgroundColor3"}]
      187 LOADK                            R25 K72 ["$ActionHover"]
      188 SETTABLEKS                       R25 R24 K14 ["BackgroundColor3"]
      190 CALL                             R22 2 1
      191 MOVE                             R23 R2
      192 LOADK                            R24 K73 [":press"]
      193 DUPTABLE                         R25 K15 [{"BackgroundColor3"}]
      194 LOADK                            R26 K74 ["$ActionActivated"]
      195 SETTABLEKS                       R26 R25 K14 ["BackgroundColor3"]
      197 CALL                             R23 2 -1
      198 SETLIST                          R18 R19 -1 [1]
      200 CALL                             R15 3 -1
      201 SETLIST                          R12 R13 -1 [1]
      203 CALL                             R9 3 -1
      204 SETLIST                          R7 R8 -1 [1]
      206 CALL                             R4 3 -1
      207 RETURN                           R4 -1
