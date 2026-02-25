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
       22 MOVE                             R3 R2
       23 LOADK                            R4 K9 [".Component-NotificationHeader"]
       24 DUPTABLE                         R5 K13 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
       25 LOADK                            R6 K14 ["$HeaderSize"]
       26 SETTABLEKS                       R6 R5 K10 ["Size"]
       28 LOADK                            R6 K15 ["$BackgroundPaper"]
       29 SETTABLEKS                       R6 R5 K11 ["BackgroundColor3"]
       31 LOADN                            R6 0
       32 SETTABLEKS                       R6 R5 K12 ["BorderSizePixel"]
       34 NEWTABLE                         R6 0 3
       36 MOVE                             R7 R2
       37 LOADK                            R8 K16 ["::UIPadding"]
       38 DUPTABLE                         R9 K21 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       39 LOADK                            R10 K22 ["$HeaderLeftMargin"]
       40 SETTABLEKS                       R10 R9 K17 ["PaddingLeft"]
       42 LOADK                            R10 K23 ["$Margin"]
       43 SETTABLEKS                       R10 R9 K18 ["PaddingRight"]
       45 LOADK                            R10 K23 ["$Margin"]
       46 SETTABLEKS                       R10 R9 K19 ["PaddingTop"]
       48 LOADK                            R10 K23 ["$Margin"]
       49 SETTABLEKS                       R10 R9 K20 ["PaddingBottom"]
       51 CALL                             R7 2 1
       52 MOVE                             R8 R2
       53 LOADK                            R9 K24 ["> #Title"]
       54 DUPTABLE                         R10 K32 [{"Size", "Position", "BackgroundTransparency", "TextColor3", "TextSize", "BorderSizePixel", "Font", "TextXAlignment", "TextYAlignment"}]
       55 GETIMPORT                        R11 K35 [UDim2.new]
       57 LOADN                            R12 1
       58 LOADN                            R13 0
       59 LOADN                            R14 1
       60 LOADN                            R15 0
       61 CALL                             R11 4 1
       62 SETTABLEKS                       R11 R10 K10 ["Size"]
       64 GETIMPORT                        R11 K35 [UDim2.new]
       66 LOADN                            R12 0
       67 LOADN                            R13 0
       68 LOADN                            R14 0
       69 LOADN                            R15 0
       70 CALL                             R11 4 1
       71 SETTABLEKS                       R11 R10 K25 ["Position"]
       73 LOADN                            R11 1
       74 SETTABLEKS                       R11 R10 K26 ["BackgroundTransparency"]
       76 LOADK                            R11 K36 ["$TextPrimary"]
       77 SETTABLEKS                       R11 R10 K27 ["TextColor3"]
       79 LOADK                            R11 K37 ["$HeaderTitleTextSize"]
       80 SETTABLEKS                       R11 R10 K28 ["TextSize"]
       82 LOADN                            R11 0
       83 SETTABLEKS                       R11 R10 K12 ["BorderSizePixel"]
       85 GETIMPORT                        R11 K40 [Enum.Font.SourceSansSemibold]
       87 SETTABLEKS                       R11 R10 K29 ["Font"]
       89 GETIMPORT                        R11 K42 [Enum.TextXAlignment.Left]
       91 SETTABLEKS                       R11 R10 K30 ["TextXAlignment"]
       93 GETIMPORT                        R11 K44 [Enum.TextYAlignment.Center]
       95 SETTABLEKS                       R11 R10 K31 ["TextYAlignment"]
       97 NEWTABLE                         R11 0 1
       99 MOVE                             R12 R2
      100 LOADK                            R13 K16 ["::UIPadding"]
      101 NEWTABLE                         R14 0 0
      103 CALL                             R12 2 -1
      104 SETLIST                          R11 R12 -1 [1]
      106 CALL                             R8 3 1
      107 MOVE                             R9 R2
      108 LOADK                            R10 K45 ["> #MoreOptionsFrame"]
      109 DUPTABLE                         R11 K49 [{"BackgroundTransparency", "AutomaticSize", "SortOrder", "Position", "AnchorPoint", "BorderSizePixel"}]
      110 LOADN                            R12 1
      111 SETTABLEKS                       R12 R11 K26 ["BackgroundTransparency"]
      113 GETIMPORT                        R12 K51 [Enum.AutomaticSize.XY]
      115 SETTABLEKS                       R12 R11 K46 ["AutomaticSize"]
      117 GETIMPORT                        R12 K53 [Enum.SortOrder.LayoutOrder]
      119 SETTABLEKS                       R12 R11 K47 ["SortOrder"]
      121 GETIMPORT                        R12 K35 [UDim2.new]
      123 LOADN                            R13 1
      124 LOADN                            R14 0
      125 LOADN                            R15 0
      126 LOADN                            R16 0
      127 CALL                             R12 4 1
      128 SETTABLEKS                       R12 R11 K25 ["Position"]
      130 GETIMPORT                        R12 K55 [Vector2.new]
      132 LOADN                            R13 1
      133 LOADN                            R14 0
      134 CALL                             R12 2 1
      135 SETTABLEKS                       R12 R11 K48 ["AnchorPoint"]
      137 LOADN                            R12 0
      138 SETTABLEKS                       R12 R11 K12 ["BorderSizePixel"]
      140 NEWTABLE                         R12 0 3
      142 MOVE                             R13 R2
      143 LOADK                            R14 K56 ["::UIListLayout"]
      144 DUPTABLE                         R15 K61 [{"HorizontalAlignment", "FillDirection", "VerticalAlignment", "Padding"}]
      145 GETIMPORT                        R16 K63 [Enum.HorizontalAlignment.Right]
      147 SETTABLEKS                       R16 R15 K57 ["HorizontalAlignment"]
      149 GETIMPORT                        R16 K65 [Enum.FillDirection.Horizontal]
      151 SETTABLEKS                       R16 R15 K58 ["FillDirection"]
      153 GETIMPORT                        R16 K66 [Enum.VerticalAlignment.Center]
      155 SETTABLEKS                       R16 R15 K59 ["VerticalAlignment"]
      157 LOADK                            R16 K23 ["$Margin"]
      158 SETTABLEKS                       R16 R15 K60 ["Padding"]
      160 CALL                             R13 2 1
      161 MOVE                             R14 R2
      162 LOADK                            R15 K67 ["> #MoreOptionsButton"]
      163 DUPTABLE                         R16 K68 [{"Size", "BackgroundTransparency", "BorderSizePixel"}]
      164 LOADK                            R17 K69 ["$HeaderIconSize"]
      165 SETTABLEKS                       R17 R16 K10 ["Size"]
      167 LOADN                            R17 1
      168 SETTABLEKS                       R17 R16 K26 ["BackgroundTransparency"]
      170 LOADN                            R17 0
      171 SETTABLEKS                       R17 R16 K12 ["BorderSizePixel"]
      173 NEWTABLE                         R17 0 3
      175 MOVE                             R18 R2
      176 LOADK                            R19 K70 [":hover"]
      177 DUPTABLE                         R20 K71 [{"BackgroundColor3"}]
      178 LOADK                            R21 K72 ["$ActionHover"]
      179 SETTABLEKS                       R21 R20 K11 ["BackgroundColor3"]
      181 CALL                             R18 2 1
      182 MOVE                             R19 R2
      183 LOADK                            R20 K73 [":press"]
      184 DUPTABLE                         R21 K71 [{"BackgroundColor3"}]
      185 LOADK                            R22 K74 ["$ActionActivated"]
      186 SETTABLEKS                       R22 R21 K11 ["BackgroundColor3"]
      188 CALL                             R19 2 1
      189 MOVE                             R20 R2
      190 LOADK                            R21 K75 ["::UICorner"]
      191 DUPTABLE                         R22 K77 [{"CornerRadius"}]
      192 LOADK                            R23 K78 ["$ButtonBorderRadius"]
      193 SETTABLEKS                       R23 R22 K76 ["CornerRadius"]
      195 CALL                             R20 2 -1
      196 SETLIST                          R17 R18 -1 [1]
      198 CALL                             R14 3 1
      199 MOVE                             R15 R2
      200 LOADK                            R16 K79 ["> #MarkAllAsRead"]
      201 DUPTABLE                         R17 K80 [{"Size", "AutomaticSize", "TextColor3", "BackgroundTransparency", "TextSize", "Font", "BorderSizePixel"}]
      202 GETIMPORT                        R18 K35 [UDim2.new]
      204 LOADN                            R19 0
      205 LOADN                            R20 0
      206 LOADN                            R21 1
      207 LOADN                            R22 0
      208 CALL                             R18 4 1
      209 SETTABLEKS                       R18 R17 K10 ["Size"]
      211 GETIMPORT                        R18 K82 [Enum.AutomaticSize.X]
      213 SETTABLEKS                       R18 R17 K46 ["AutomaticSize"]
      215 LOADK                            R18 K36 ["$TextPrimary"]
      216 SETTABLEKS                       R18 R17 K27 ["TextColor3"]
      218 LOADN                            R18 1
      219 SETTABLEKS                       R18 R17 K26 ["BackgroundTransparency"]
      221 LOADK                            R18 K83 ["$HeaderSubtitleTextSize"]
      222 SETTABLEKS                       R18 R17 K28 ["TextSize"]
      224 GETIMPORT                        R18 K85 [Enum.Font.SourceSansBold]
      226 SETTABLEKS                       R18 R17 K29 ["Font"]
      228 LOADN                            R18 0
      229 SETTABLEKS                       R18 R17 K12 ["BorderSizePixel"]
      231 NEWTABLE                         R18 0 3
      233 MOVE                             R19 R2
      234 LOADK                            R20 K70 [":hover"]
      235 DUPTABLE                         R21 K71 [{"BackgroundColor3"}]
      236 LOADK                            R22 K72 ["$ActionHover"]
      237 SETTABLEKS                       R22 R21 K11 ["BackgroundColor3"]
      239 CALL                             R19 2 1
      240 MOVE                             R20 R2
      241 LOADK                            R21 K73 [":press"]
      242 DUPTABLE                         R22 K71 [{"BackgroundColor3"}]
      243 LOADK                            R23 K74 ["$ActionActivated"]
      244 SETTABLEKS                       R23 R22 K11 ["BackgroundColor3"]
      246 CALL                             R20 2 1
      247 MOVE                             R21 R2
      248 LOADK                            R22 K75 ["::UICorner"]
      249 DUPTABLE                         R23 K77 [{"CornerRadius"}]
      250 LOADK                            R24 K78 ["$ButtonBorderRadius"]
      251 SETTABLEKS                       R24 R23 K76 ["CornerRadius"]
      253 CALL                             R21 2 -1
      254 SETLIST                          R18 R19 -1 [1]
      256 CALL                             R15 3 -1
      257 SETLIST                          R12 R13 -1 [1]
      259 CALL                             R9 3 -1
      260 SETLIST                          R6 R7 -1 [1]
      262 CALL                             R3 3 -1
      263 RETURN                           R3 -1
