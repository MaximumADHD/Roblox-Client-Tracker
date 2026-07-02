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
       26 GETTABLEKS                       R4 R4 K10 ["Components"]
       28 GETTABLEKS                       R4 R4 K11 ["NotificationMenu"]
       30 GETTABLEKS                       R4 R4 K12 ["constants"]
       32 CALL                             R3 1 1
       33 MOVE                             R4 R2
       34 LOADK                            R5 K13 [".Component-NotificationMenu"]
       35 DUPTABLE                         R6 K16 [{["BackgroundColor3"] = "$BackgroundPaper"}]
       36 NEWTABLE                         R7 0 2
       38 MOVE                             R8 R2
       39 LOADK                            R9 K17 ["::UICorner"]
       40 DUPTABLE                         R10 K19 [{"CornerRadius"}]
       41 GETIMPORT                        R11 K22 [UDim.new]
       43 LOADN                            R12 0
       44 LOADN                            R13 4
       45 CALL                             R11 2 1
       46 SETTABLEKS                       R11 R10 K18 ["CornerRadius"]
       48 CALL                             R8 2 1
       49 MOVE                             R9 R2
       50 LOADK                            R10 K23 [">> .Component-NotificationMenuInner"]
       51 DUPTABLE                         R11 K25 [{["BackgroundColor3"] = "$SecondaryMain"}]
       52 NEWTABLE                         R12 0 3
       54 MOVE                             R13 R2
       55 LOADK                            R14 K17 ["::UICorner"]
       56 DUPTABLE                         R15 K19 [{"CornerRadius"}]
       57 GETIMPORT                        R16 K22 [UDim.new]
       59 LOADN                            R17 0
       60 LOADN                            R18 4
       61 CALL                             R16 2 1
       62 SETTABLEKS                       R16 R15 K18 ["CornerRadius"]
       64 CALL                             R13 2 1
       65 MOVE                             R14 R2
       66 LOADK                            R15 K26 ["::UIListLayout"]
       67 DUPTABLE                         R16 K31 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
       68 GETIMPORT                        R17 K34 [Enum.FillDirection.Vertical]
       70 SETTABLEKS                       R17 R16 K27 ["FillDirection"]
       72 GETIMPORT                        R17 K36 [Enum.HorizontalAlignment.Left]
       74 SETTABLEKS                       R17 R16 K28 ["HorizontalAlignment"]
       76 GETIMPORT                        R17 K38 [Enum.SortOrder.LayoutOrder]
       78 SETTABLEKS                       R17 R16 K29 ["SortOrder"]
       80 GETIMPORT                        R17 K40 [Enum.VerticalAlignment.Top]
       82 SETTABLEKS                       R17 R16 K30 ["VerticalAlignment"]
       84 CALL                             R14 2 1
       85 MOVE                             R15 R2
       86 LOADK                            R16 K41 [">> .Component-NotificationMenuOptionButton"]
       87 DUPTABLE                         R17 K53 [{["BorderSizePixel"] = 0, ["Font"], ["TextSize"], ["TextTruncate"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"] = "$TextPrimary", ["BackgroundColor3"] = "$SecondaryMain"}]
       88 GETTABLEKS                       R18 R3 K54 ["TEXT_FONT"]
       90 SETTABLEKS                       R18 R17 K44 ["Font"]
       92 GETTABLEKS                       R18 R3 K55 ["TEXT_SIZE"]
       94 SETTABLEKS                       R18 R17 K45 ["TextSize"]
       96 GETIMPORT                        R18 K57 [Enum.TextTruncate.AtEnd]
       98 SETTABLEKS                       R18 R17 K46 ["TextTruncate"]
      100 GETIMPORT                        R18 K58 [Enum.TextXAlignment.Left]
      102 SETTABLEKS                       R18 R17 K49 ["TextXAlignment"]
      104 GETIMPORT                        R18 K60 [Enum.TextYAlignment.Center]
      106 SETTABLEKS                       R18 R17 K50 ["TextYAlignment"]
      108 NEWTABLE                         R18 0 5
      110 MOVE                             R19 R2
      111 LOADK                            R20 K17 ["::UICorner"]
      112 DUPTABLE                         R21 K19 [{"CornerRadius"}]
      113 GETIMPORT                        R22 K22 [UDim.new]
      115 LOADN                            R23 0
      116 LOADN                            R24 4
      117 CALL                             R22 2 1
      118 SETTABLEKS                       R22 R21 K18 ["CornerRadius"]
      120 CALL                             R19 2 1
      121 MOVE                             R20 R2
      122 LOADK                            R21 K61 ["::UISizeConstraint"]
      123 DUPTABLE                         R22 K63 [{"MaxSize"}]
      124 GETIMPORT                        R23 K65 [Vector2.new]
      126 LOADK                            R24 K66 [∞]
      127 LOADN                            R25 48
      128 CALL                             R23 2 1
      129 SETTABLEKS                       R23 R22 K62 ["MaxSize"]
      131 CALL                             R20 2 1
      132 MOVE                             R21 R2
      133 LOADK                            R22 K67 ["::UIPadding"]
      134 DUPTABLE                         R23 K72 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      135 GETIMPORT                        R24 K22 [UDim.new]
      137 LOADN                            R25 0
      138 GETTABLEKS                       R26 R3 K73 ["LEFT_RIGHT_BUTTON_PADDING"]
      140 CALL                             R24 2 1
      141 SETTABLEKS                       R24 R23 K68 ["PaddingLeft"]
      143 GETIMPORT                        R24 K22 [UDim.new]
      145 LOADN                            R25 0
      146 GETTABLEKS                       R26 R3 K73 ["LEFT_RIGHT_BUTTON_PADDING"]
      148 CALL                             R24 2 1
      149 SETTABLEKS                       R24 R23 K69 ["PaddingRight"]
      151 GETIMPORT                        R24 K22 [UDim.new]
      153 LOADN                            R25 0
      154 LOADN                            R26 4
      155 CALL                             R24 2 1
      156 SETTABLEKS                       R24 R23 K70 ["PaddingTop"]
      158 GETIMPORT                        R24 K22 [UDim.new]
      160 LOADN                            R25 0
      161 LOADN                            R26 4
      162 CALL                             R24 2 1
      163 SETTABLEKS                       R24 R23 K71 ["PaddingBottom"]
      165 CALL                             R21 2 1
      166 MOVE                             R22 R2
      167 LOADK                            R23 K74 [":hover"]
      168 DUPTABLE                         R24 K76 [{["BackgroundColor3"] = "$ActionHover"}]
      169 CALL                             R22 2 1
      170 MOVE                             R23 R2
      171 LOADK                            R24 K77 [":press"]
      172 DUPTABLE                         R25 K79 [{["BackgroundColor3"] = "$ActionActivated"}]
      173 CALL                             R23 2 -1
      174 SETLIST                          R18 R19 -1 [1]
      176 CALL                             R15 3 -1
      177 SETLIST                          R12 R13 -1 [1]
      179 CALL                             R9 3 -1
      180 SETLIST                          R7 R8 -1 [1]
      182 CALL                             R4 3 -1
      183 RETURN                           R4 -1
