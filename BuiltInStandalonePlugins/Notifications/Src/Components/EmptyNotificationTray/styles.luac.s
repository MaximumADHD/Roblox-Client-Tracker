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
       22 GETIMPORT                        R3 K11 [UDim2.new]
       24 LOADN                            R4 0
       25 LOADN                            R5 96
       26 LOADN                            R6 0
       27 LOADN                            R7 96
       28 CALL                             R3 4 1
       29 MOVE                             R4 R2
       30 LOADK                            R5 K12 [".Component-EmptyNotificationTray"]
       31 DUPTABLE                         R6 K18 [{["BackgroundTransparency"] = 1, ["Size"], ["BorderSizePixel"] = 0}]
       32 GETIMPORT                        R7 K11 [UDim2.new]
       34 LOADN                            R8 1
       35 LOADN                            R9 0
       36 LOADN                            R10 1
       37 LOADN                            R11 -43
       38 CALL                             R7 4 1
       39 SETTABLEKS                       R7 R6 K15 ["Size"]
       41 NEWTABLE                         R7 0 6
       43 MOVE                             R8 R2
       44 LOADK                            R9 K19 ["::UIPadding"]
       45 DUPTABLE                         R10 K22 [{"PaddingLeft", "PaddingRight"}]
       46 GETIMPORT                        R11 K24 [UDim.new]
       48 LOADN                            R12 0
       49 LOADN                            R13 12
       50 CALL                             R11 2 1
       51 SETTABLEKS                       R11 R10 K20 ["PaddingLeft"]
       53 GETIMPORT                        R11 K24 [UDim.new]
       55 LOADN                            R12 0
       56 LOADN                            R13 12
       57 CALL                             R11 2 1
       58 SETTABLEKS                       R11 R10 K21 ["PaddingRight"]
       60 CALL                             R8 2 1
       61 MOVE                             R9 R2
       62 LOADK                            R10 K25 ["> #ErrorState"]
       63 NEWTABLE                         R11 0 0
       65 NEWTABLE                         R12 0 3
       67 MOVE                             R13 R2
       68 LOADK                            R14 K26 ["::UIListLayout"]
       69 DUPTABLE                         R15 K31 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
       70 GETIMPORT                        R16 K34 [Enum.FillDirection.Vertical]
       72 SETTABLEKS                       R16 R15 K27 ["FillDirection"]
       74 GETIMPORT                        R16 K36 [Enum.HorizontalAlignment.Center]
       76 SETTABLEKS                       R16 R15 K28 ["HorizontalAlignment"]
       78 GETIMPORT                        R16 K38 [Enum.SortOrder.LayoutOrder]
       80 SETTABLEKS                       R16 R15 K29 ["SortOrder"]
       82 GETIMPORT                        R16 K24 [UDim.new]
       84 LOADN                            R17 0
       85 LOADN                            R18 24
       86 CALL                             R16 2 1
       87 SETTABLEKS                       R16 R15 K30 ["Padding"]
       89 CALL                             R13 2 1
       90 MOVE                             R14 R2
       91 LOADK                            R15 K39 ["> #ErrorImage"]
       92 DUPTABLE                         R16 K42 [{["Image"] = "$NotificationErrorIcon", ["Size"], ["BackgroundTransparency"] = 1}]
       93 SETTABLEKS                       R3 R16 K15 ["Size"]
       95 CALL                             R14 2 1
       96 MOVE                             R15 R2
       97 LOADK                            R16 K43 ["> #RefreshButton"]
       98 DUPTABLE                         R17 K54 [{["AutomaticSize"], ["BackgroundColor3"] = "$BackgroundPaper", ["TextColor3"] = "$TextPrimary", ["TextSize"] = 24, ["TextWrapped"] = True, ["Font"]}]
       99 GETIMPORT                        R18 K56 [Enum.AutomaticSize.XY]
      101 SETTABLEKS                       R18 R17 K44 ["AutomaticSize"]
      103 GETIMPORT                        R18 K58 [Enum.Font.SourceSansSemibold]
      105 SETTABLEKS                       R18 R17 K53 ["Font"]
      107 NEWTABLE                         R18 0 3
      109 MOVE                             R19 R2
      110 LOADK                            R20 K59 ["::UICorner"]
      111 DUPTABLE                         R21 K61 [{"CornerRadius"}]
      112 GETIMPORT                        R22 K24 [UDim.new]
      114 LOADN                            R23 0
      115 LOADN                            R24 8
      116 CALL                             R22 2 1
      117 SETTABLEKS                       R22 R21 K60 ["CornerRadius"]
      119 CALL                             R19 2 1
      120 MOVE                             R20 R2
      121 LOADK                            R21 K62 ["::UIStroke"]
      122 DUPTABLE                         R22 K68 [{["Color"] = "$SecondaryRestingOutlineBorder", ["Thickness"] = 1, ["LineJoinMode"], ["ApplyStrokeMode"]}]
      123 GETIMPORT                        R23 K70 [Enum.LineJoinMode.Round]
      125 SETTABLEKS                       R23 R22 K66 ["LineJoinMode"]
      127 GETIMPORT                        R23 K72 [Enum.ApplyStrokeMode.Border]
      129 SETTABLEKS                       R23 R22 K67 ["ApplyStrokeMode"]
      131 CALL                             R20 2 1
      132 MOVE                             R21 R2
      133 LOADK                            R22 K19 ["::UIPadding"]
      134 DUPTABLE                         R23 K75 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      135 GETIMPORT                        R24 K24 [UDim.new]
      137 LOADN                            R25 0
      138 LOADN                            R26 4
      139 CALL                             R24 2 1
      140 SETTABLEKS                       R24 R23 K73 ["PaddingTop"]
      142 GETIMPORT                        R24 K24 [UDim.new]
      144 LOADN                            R25 0
      145 LOADN                            R26 4
      146 CALL                             R24 2 1
      147 SETTABLEKS                       R24 R23 K74 ["PaddingBottom"]
      149 GETIMPORT                        R24 K24 [UDim.new]
      151 LOADN                            R25 0
      152 LOADN                            R26 10
      153 CALL                             R24 2 1
      154 SETTABLEKS                       R24 R23 K20 ["PaddingLeft"]
      156 GETIMPORT                        R24 K24 [UDim.new]
      158 LOADN                            R25 0
      159 LOADN                            R26 10
      160 CALL                             R24 2 1
      161 SETTABLEKS                       R24 R23 K21 ["PaddingRight"]
      163 CALL                             R21 2 -1
      164 SETLIST                          R18 R19 -1 [1]
      166 CALL                             R15 3 -1
      167 SETLIST                          R12 R13 -1 [1]
      169 CALL                             R9 3 1
      170 MOVE                             R10 R2
      171 LOADK                            R11 K76 ["> #EmptyState"]
      172 NEWTABLE                         R12 0 0
      174 NEWTABLE                         R13 0 2
      176 MOVE                             R14 R2
      177 LOADK                            R15 K26 ["::UIListLayout"]
      178 DUPTABLE                         R16 K31 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
      179 GETIMPORT                        R17 K34 [Enum.FillDirection.Vertical]
      181 SETTABLEKS                       R17 R16 K27 ["FillDirection"]
      183 GETIMPORT                        R17 K36 [Enum.HorizontalAlignment.Center]
      185 SETTABLEKS                       R17 R16 K28 ["HorizontalAlignment"]
      187 GETIMPORT                        R17 K38 [Enum.SortOrder.LayoutOrder]
      189 SETTABLEKS                       R17 R16 K29 ["SortOrder"]
      191 GETIMPORT                        R17 K24 [UDim.new]
      193 LOADN                            R18 0
      194 LOADN                            R19 6
      195 CALL                             R17 2 1
      196 SETTABLEKS                       R17 R16 K30 ["Padding"]
      198 CALL                             R14 2 1
      199 MOVE                             R15 R2
      200 LOADK                            R16 K77 ["> #EmptyImage"]
      201 DUPTABLE                         R17 K79 [{["Image"] = "$NotificationEmptyTrayIcon", ["Size"], ["BackgroundTransparency"] = 1}]
      202 SETTABLEKS                       R3 R17 K15 ["Size"]
      204 CALL                             R15 2 -1
      205 SETLIST                          R13 R14 -1 [1]
      207 CALL                             R10 3 1
      208 MOVE                             R11 R2
      209 LOADK                            R12 K80 [">> .Component-EmptyNotificationTray-Centering"]
      210 DUPTABLE                         R13 K83 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Position"], ["AnchorPoint"]}]
      211 GETIMPORT                        R14 K11 [UDim2.new]
      213 LOADN                            R15 1
      214 LOADN                            R16 0
      215 LOADN                            R17 0
      216 LOADN                            R18 0
      217 CALL                             R14 4 1
      218 SETTABLEKS                       R14 R13 K15 ["Size"]
      220 GETIMPORT                        R14 K85 [Enum.AutomaticSize.Y]
      222 SETTABLEKS                       R14 R13 K44 ["AutomaticSize"]
      224 GETIMPORT                        R14 K11 [UDim2.new]
      226 LOADK                            R15 K86 [0.5]
      227 LOADN                            R16 0
      228 LOADK                            R17 K86 [0.5]
      229 LOADN                            R18 0
      230 CALL                             R14 4 1
      231 SETTABLEKS                       R14 R13 K81 ["Position"]
      233 GETIMPORT                        R14 K88 [Vector2.new]
      235 LOADK                            R15 K86 [0.5]
      236 LOADK                            R16 K86 [0.5]
      237 CALL                             R14 2 1
      238 SETTABLEKS                       R14 R13 K82 ["AnchorPoint"]
      240 CALL                             R11 2 1
      241 MOVE                             R12 R2
      242 LOADK                            R13 K89 [">> .Component-EmptyNotificationTray-MainText"]
      243 DUPTABLE                         R14 K91 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["TextColor3"] = "$TextPrimary", ["TextSize"] = 18, ["TextWrapped"] = True, ["Font"]}]
      244 GETIMPORT                        R15 K11 [UDim2.new]
      246 LOADN                            R16 1
      247 LOADN                            R17 0
      248 LOADN                            R18 0
      249 LOADN                            R19 0
      250 CALL                             R15 4 1
      251 SETTABLEKS                       R15 R14 K15 ["Size"]
      253 GETIMPORT                        R15 K85 [Enum.AutomaticSize.Y]
      255 SETTABLEKS                       R15 R14 K44 ["AutomaticSize"]
      257 GETIMPORT                        R15 K58 [Enum.Font.SourceSansSemibold]
      259 SETTABLEKS                       R15 R14 K53 ["Font"]
      261 CALL                             R12 2 1
      262 MOVE                             R13 R2
      263 LOADK                            R14 K92 [">> .Component-EmptyNotificationTray-SubText"]
      264 DUPTABLE                         R15 K94 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["TextColor3"] = "$TextSecondary", ["TextSize"] = 18, ["TextWrapped"] = True, ["Font"]}]
      265 GETIMPORT                        R16 K11 [UDim2.new]
      267 LOADN                            R17 1
      268 LOADN                            R18 0
      269 LOADN                            R19 0
      270 LOADN                            R20 0
      271 CALL                             R16 4 1
      272 SETTABLEKS                       R16 R15 K15 ["Size"]
      274 GETIMPORT                        R16 K85 [Enum.AutomaticSize.Y]
      276 SETTABLEKS                       R16 R15 K44 ["AutomaticSize"]
      278 GETIMPORT                        R16 K58 [Enum.Font.SourceSansSemibold]
      280 SETTABLEKS                       R16 R15 K53 ["Font"]
      282 CALL                             R13 2 -1
      283 SETLIST                          R7 R8 -1 [1]
      285 CALL                             R4 3 -1
      286 RETURN                           R4 -1
