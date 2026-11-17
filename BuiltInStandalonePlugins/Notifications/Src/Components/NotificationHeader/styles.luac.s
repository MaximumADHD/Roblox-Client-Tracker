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
       22 MOVE                             R3 R2
       23 LOADK                            R4 K9 [".Component-NotificationHeader"]
       24 DUPTABLE                         R5 K16 [{["Size"] = "$HeaderSize", ["BackgroundColor3"] = "$BackgroundPaper", ["BorderSizePixel"] = 0}]
       25 NEWTABLE                         R6 0 3
       27 MOVE                             R7 R2
       28 LOADK                            R8 K17 ["::UIPadding"]
       29 DUPTABLE                         R9 K24 [{["PaddingLeft"] = "$HeaderLeftMargin", ["PaddingRight"] = "$Margin", ["PaddingTop"] = "$Margin", ["PaddingBottom"] = "$Margin"}]
       30 CALL                             R7 2 1
       31 MOVE                             R8 R2
       32 LOADK                            R9 K25 ["> #Title"]
       33 DUPTABLE                         R10 K36 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["TextColor3"] = "$TextPrimary", ["TextSize"] = "$HeaderTitleTextSize", ["BorderSizePixel"] = 0, ["Font"], ["TextXAlignment"], ["TextYAlignment"]}]
       34 GETIMPORT                        R11 K39 [UDim2.new]
       36 LOADN                            R12 1
       37 LOADN                            R13 0
       38 LOADN                            R14 1
       39 LOADN                            R15 0
       40 CALL                             R11 4 1
       41 SETTABLEKS                       R11 R10 K10 ["Size"]
       43 GETIMPORT                        R11 K39 [UDim2.new]
       45 LOADN                            R12 0
       46 LOADN                            R13 0
       47 LOADN                            R14 0
       48 LOADN                            R15 0
       49 CALL                             R11 4 1
       50 SETTABLEKS                       R11 R10 K26 ["Position"]
       52 GETIMPORT                        R11 K42 [Enum.Font.SourceSansSemibold]
       54 SETTABLEKS                       R11 R10 K33 ["Font"]
       56 GETIMPORT                        R11 K44 [Enum.TextXAlignment.Left]
       58 SETTABLEKS                       R11 R10 K34 ["TextXAlignment"]
       60 GETIMPORT                        R11 K46 [Enum.TextYAlignment.Center]
       62 SETTABLEKS                       R11 R10 K35 ["TextYAlignment"]
       64 NEWTABLE                         R11 0 1
       66 MOVE                             R12 R2
       67 LOADK                            R13 K17 ["::UIPadding"]
       68 NEWTABLE                         R14 0 0
       70 CALL                             R12 2 -1
       71 SETLIST                          R11 R12 -1 [1]
       73 CALL                             R8 3 1
       74 MOVE                             R9 R2
       75 LOADK                            R10 K47 ["> #MoreOptionsFrame"]
       76 DUPTABLE                         R11 K51 [{["BackgroundTransparency"] = 1, ["AutomaticSize"], ["SortOrder"], ["Position"], ["AnchorPoint"], ["BorderSizePixel"] = 0}]
       77 GETIMPORT                        R12 K53 [Enum.AutomaticSize.XY]
       79 SETTABLEKS                       R12 R11 K48 ["AutomaticSize"]
       81 GETIMPORT                        R12 K55 [Enum.SortOrder.LayoutOrder]
       83 SETTABLEKS                       R12 R11 K49 ["SortOrder"]
       85 GETIMPORT                        R12 K39 [UDim2.new]
       87 LOADN                            R13 1
       88 LOADN                            R14 0
       89 LOADN                            R15 0
       90 LOADN                            R16 0
       91 CALL                             R12 4 1
       92 SETTABLEKS                       R12 R11 K26 ["Position"]
       94 GETIMPORT                        R12 K57 [Vector2.new]
       96 LOADN                            R13 1
       97 LOADN                            R14 0
       98 CALL                             R12 2 1
       99 SETTABLEKS                       R12 R11 K50 ["AnchorPoint"]
      101 NEWTABLE                         R12 0 3
      103 MOVE                             R13 R2
      104 LOADK                            R14 K58 ["::UIListLayout"]
      105 DUPTABLE                         R15 K63 [{["HorizontalAlignment"], ["FillDirection"], ["VerticalAlignment"], ["Padding"] = "$Margin"}]
      106 GETIMPORT                        R16 K65 [Enum.HorizontalAlignment.Right]
      108 SETTABLEKS                       R16 R15 K59 ["HorizontalAlignment"]
      110 GETIMPORT                        R16 K67 [Enum.FillDirection.Horizontal]
      112 SETTABLEKS                       R16 R15 K60 ["FillDirection"]
      114 GETIMPORT                        R16 K68 [Enum.VerticalAlignment.Center]
      116 SETTABLEKS                       R16 R15 K61 ["VerticalAlignment"]
      118 CALL                             R13 2 1
      119 MOVE                             R14 R2
      120 LOADK                            R15 K69 ["> #MoreOptionsButton"]
      121 DUPTABLE                         R16 K71 [{["Size"] = "$HeaderIconSize", ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      122 NEWTABLE                         R17 0 3
      124 MOVE                             R18 R2
      125 LOADK                            R19 K72 [":hover"]
      126 DUPTABLE                         R20 K74 [{["BackgroundColor3"] = "$ActionHover", ["BackgroundTransparency"] = 0}]
      127 CALL                             R18 2 1
      128 MOVE                             R19 R2
      129 LOADK                            R20 K75 [":press"]
      130 DUPTABLE                         R21 K77 [{["BackgroundColor3"] = "$ActionActivated", ["BackgroundTransparency"] = 0}]
      131 CALL                             R19 2 1
      132 MOVE                             R20 R2
      133 LOADK                            R21 K78 ["::UICorner"]
      134 DUPTABLE                         R22 K81 [{["CornerRadius"] = "$ButtonBorderRadius"}]
      135 CALL                             R20 2 -1
      136 SETLIST                          R17 R18 -1 [1]
      138 CALL                             R14 3 1
      139 MOVE                             R15 R2
      140 LOADK                            R16 K82 ["> #MarkAllAsRead"]
      141 DUPTABLE                         R17 K84 [{["Size"], ["AutomaticSize"], ["TextColor3"] = "$TextPrimary", ["BackgroundTransparency"] = 1, ["TextSize"] = "$HeaderSubtitleTextSize", ["Font"], ["BorderSizePixel"] = 0}]
      142 GETIMPORT                        R18 K39 [UDim2.new]
      144 LOADN                            R19 0
      145 LOADN                            R20 0
      146 LOADN                            R21 1
      147 LOADN                            R22 0
      148 CALL                             R18 4 1
      149 SETTABLEKS                       R18 R17 K10 ["Size"]
      151 GETIMPORT                        R18 K86 [Enum.AutomaticSize.X]
      153 SETTABLEKS                       R18 R17 K48 ["AutomaticSize"]
      155 GETIMPORT                        R18 K88 [Enum.Font.SourceSansBold]
      157 SETTABLEKS                       R18 R17 K33 ["Font"]
      159 NEWTABLE                         R18 0 3
      161 MOVE                             R19 R2
      162 LOADK                            R20 K72 [":hover"]
      163 DUPTABLE                         R21 K74 [{["BackgroundColor3"] = "$ActionHover", ["BackgroundTransparency"] = 0}]
      164 CALL                             R19 2 1
      165 MOVE                             R20 R2
      166 LOADK                            R21 K75 [":press"]
      167 DUPTABLE                         R22 K77 [{["BackgroundColor3"] = "$ActionActivated", ["BackgroundTransparency"] = 0}]
      168 CALL                             R20 2 1
      169 MOVE                             R21 R2
      170 LOADK                            R22 K78 ["::UICorner"]
      171 DUPTABLE                         R23 K81 [{["CornerRadius"] = "$ButtonBorderRadius"}]
      172 CALL                             R21 2 -1
      173 SETLIST                          R18 R19 -1 [1]
      175 CALL                             R15 3 -1
      176 SETLIST                          R12 R13 -1 [1]
      178 CALL                             R9 3 -1
      179 SETLIST                          R6 R7 -1 [1]
      181 CALL                             R3 3 -1
      182 RETURN                           R3 -1
