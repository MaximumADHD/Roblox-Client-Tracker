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
       22 GETIMPORT                        R3 K11 [UDim2.new]
       24 LOADN                            R4 0
       25 LOADN                            R5 96
       26 LOADN                            R6 0
       27 LOADN                            R7 96
       28 CALL                             R3 4 1
       29 MOVE                             R4 R2
       30 LOADK                            R5 K12 [".Component-EmptyNotificationTray"]
       31 DUPTABLE                         R6 K16 [{"BackgroundTransparency", "Size", "BorderSizePixel"}]
       32 LOADN                            R7 1
       33 SETTABLEKS                       R7 R6 K13 ["BackgroundTransparency"]
       35 GETIMPORT                        R7 K11 [UDim2.new]
       37 LOADN                            R8 1
       38 LOADN                            R9 0
       39 LOADN                            R10 1
       40 LOADN                            R11 213
       41 CALL                             R7 4 1
       42 SETTABLEKS                       R7 R6 K14 ["Size"]
       44 LOADN                            R7 0
       45 SETTABLEKS                       R7 R6 K15 ["BorderSizePixel"]
       47 NEWTABLE                         R7 0 6
       49 MOVE                             R8 R2
       50 LOADK                            R9 K17 ["::UIPadding"]
       51 DUPTABLE                         R10 K20 [{"PaddingLeft", "PaddingRight"}]
       52 GETIMPORT                        R11 K22 [UDim.new]
       54 LOADN                            R12 0
       55 LOADN                            R13 12
       56 CALL                             R11 2 1
       57 SETTABLEKS                       R11 R10 K18 ["PaddingLeft"]
       59 GETIMPORT                        R11 K22 [UDim.new]
       61 LOADN                            R12 0
       62 LOADN                            R13 12
       63 CALL                             R11 2 1
       64 SETTABLEKS                       R11 R10 K19 ["PaddingRight"]
       66 CALL                             R8 2 1
       67 MOVE                             R9 R2
       68 LOADK                            R10 K23 ["> #ErrorState"]
       69 NEWTABLE                         R11 0 0
       71 NEWTABLE                         R12 0 3
       73 MOVE                             R13 R2
       74 LOADK                            R14 K24 ["::UIListLayout"]
       75 DUPTABLE                         R15 K29 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
       76 GETIMPORT                        R16 K32 [Enum.FillDirection.Vertical]
       78 SETTABLEKS                       R16 R15 K25 ["FillDirection"]
       80 GETIMPORT                        R16 K34 [Enum.HorizontalAlignment.Center]
       82 SETTABLEKS                       R16 R15 K26 ["HorizontalAlignment"]
       84 GETIMPORT                        R16 K36 [Enum.SortOrder.LayoutOrder]
       86 SETTABLEKS                       R16 R15 K27 ["SortOrder"]
       88 GETIMPORT                        R16 K22 [UDim.new]
       90 LOADN                            R17 0
       91 LOADN                            R18 24
       92 CALL                             R16 2 1
       93 SETTABLEKS                       R16 R15 K28 ["Padding"]
       95 CALL                             R13 2 1
       96 MOVE                             R14 R2
       97 LOADK                            R15 K37 ["> #ErrorImage"]
       98 DUPTABLE                         R16 K39 [{"Image", "Size", "BackgroundTransparency"}]
       99 LOADK                            R17 K40 ["$NotificationErrorIcon"]
      100 SETTABLEKS                       R17 R16 K38 ["Image"]
      102 SETTABLEKS                       R3 R16 K14 ["Size"]
      104 LOADN                            R17 1
      105 SETTABLEKS                       R17 R16 K13 ["BackgroundTransparency"]
      107 CALL                             R14 2 1
      108 MOVE                             R15 R2
      109 LOADK                            R16 K41 ["> #RefreshButton"]
      110 DUPTABLE                         R17 K48 [{"AutomaticSize", "BackgroundColor3", "TextColor3", "TextSize", "TextWrapped", "Font"}]
      111 GETIMPORT                        R18 K50 [Enum.AutomaticSize.XY]
      113 SETTABLEKS                       R18 R17 K42 ["AutomaticSize"]
      115 LOADK                            R18 K51 ["$BackgroundPaper"]
      116 SETTABLEKS                       R18 R17 K43 ["BackgroundColor3"]
      118 LOADK                            R18 K52 ["$TextPrimary"]
      119 SETTABLEKS                       R18 R17 K44 ["TextColor3"]
      121 LOADN                            R18 24
      122 SETTABLEKS                       R18 R17 K45 ["TextSize"]
      124 LOADB                            R18 1
      125 SETTABLEKS                       R18 R17 K46 ["TextWrapped"]
      127 GETIMPORT                        R18 K54 [Enum.Font.SourceSansSemibold]
      129 SETTABLEKS                       R18 R17 K47 ["Font"]
      131 NEWTABLE                         R18 0 3
      133 MOVE                             R19 R2
      134 LOADK                            R20 K55 ["::UICorner"]
      135 DUPTABLE                         R21 K57 [{"CornerRadius"}]
      136 GETIMPORT                        R22 K22 [UDim.new]
      138 LOADN                            R23 0
      139 LOADN                            R24 8
      140 CALL                             R22 2 1
      141 SETTABLEKS                       R22 R21 K56 ["CornerRadius"]
      143 CALL                             R19 2 1
      144 MOVE                             R20 R2
      145 LOADK                            R21 K58 ["::UIStroke"]
      146 DUPTABLE                         R22 K63 [{"Color", "Thickness", "LineJoinMode", "ApplyStrokeMode"}]
      147 LOADK                            R23 K64 ["$SecondaryRestingOutlineBorder"]
      148 SETTABLEKS                       R23 R22 K59 ["Color"]
      150 LOADN                            R23 1
      151 SETTABLEKS                       R23 R22 K60 ["Thickness"]
      153 GETIMPORT                        R23 K66 [Enum.LineJoinMode.Round]
      155 SETTABLEKS                       R23 R22 K61 ["LineJoinMode"]
      157 GETIMPORT                        R23 K68 [Enum.ApplyStrokeMode.Border]
      159 SETTABLEKS                       R23 R22 K62 ["ApplyStrokeMode"]
      161 CALL                             R20 2 1
      162 MOVE                             R21 R2
      163 LOADK                            R22 K17 ["::UIPadding"]
      164 DUPTABLE                         R23 K71 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      165 GETIMPORT                        R24 K22 [UDim.new]
      167 LOADN                            R25 0
      168 LOADN                            R26 4
      169 CALL                             R24 2 1
      170 SETTABLEKS                       R24 R23 K69 ["PaddingTop"]
      172 GETIMPORT                        R24 K22 [UDim.new]
      174 LOADN                            R25 0
      175 LOADN                            R26 4
      176 CALL                             R24 2 1
      177 SETTABLEKS                       R24 R23 K70 ["PaddingBottom"]
      179 GETIMPORT                        R24 K22 [UDim.new]
      181 LOADN                            R25 0
      182 LOADN                            R26 10
      183 CALL                             R24 2 1
      184 SETTABLEKS                       R24 R23 K18 ["PaddingLeft"]
      186 GETIMPORT                        R24 K22 [UDim.new]
      188 LOADN                            R25 0
      189 LOADN                            R26 10
      190 CALL                             R24 2 1
      191 SETTABLEKS                       R24 R23 K19 ["PaddingRight"]
      193 CALL                             R21 2 -1
      194 SETLIST                          R18 R19 -1 [1]
      196 CALL                             R15 3 -1
      197 SETLIST                          R12 R13 -1 [1]
      199 CALL                             R9 3 1
      200 MOVE                             R10 R2
      201 LOADK                            R11 K72 ["> #EmptyState"]
      202 NEWTABLE                         R12 0 0
      204 NEWTABLE                         R13 0 2
      206 MOVE                             R14 R2
      207 LOADK                            R15 K24 ["::UIListLayout"]
      208 DUPTABLE                         R16 K29 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
      209 GETIMPORT                        R17 K32 [Enum.FillDirection.Vertical]
      211 SETTABLEKS                       R17 R16 K25 ["FillDirection"]
      213 GETIMPORT                        R17 K34 [Enum.HorizontalAlignment.Center]
      215 SETTABLEKS                       R17 R16 K26 ["HorizontalAlignment"]
      217 GETIMPORT                        R17 K36 [Enum.SortOrder.LayoutOrder]
      219 SETTABLEKS                       R17 R16 K27 ["SortOrder"]
      221 GETIMPORT                        R17 K22 [UDim.new]
      223 LOADN                            R18 0
      224 LOADN                            R19 6
      225 CALL                             R17 2 1
      226 SETTABLEKS                       R17 R16 K28 ["Padding"]
      228 CALL                             R14 2 1
      229 MOVE                             R15 R2
      230 LOADK                            R16 K73 ["> #EmptyImage"]
      231 DUPTABLE                         R17 K39 [{"Image", "Size", "BackgroundTransparency"}]
      232 LOADK                            R18 K74 ["$NotificationEmptyTrayIcon"]
      233 SETTABLEKS                       R18 R17 K38 ["Image"]
      235 SETTABLEKS                       R3 R17 K14 ["Size"]
      237 LOADN                            R18 1
      238 SETTABLEKS                       R18 R17 K13 ["BackgroundTransparency"]
      240 CALL                             R15 2 -1
      241 SETLIST                          R13 R14 -1 [1]
      243 CALL                             R10 3 1
      244 MOVE                             R11 R2
      245 LOADK                            R12 K75 [">> .Component-EmptyNotificationTray-Centering"]
      246 DUPTABLE                         R13 K78 [{"Size", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "Position", "AnchorPoint"}]
      247 GETIMPORT                        R14 K11 [UDim2.new]
      249 LOADN                            R15 1
      250 LOADN                            R16 0
      251 LOADN                            R17 0
      252 LOADN                            R18 0
      253 CALL                             R14 4 1
      254 SETTABLEKS                       R14 R13 K14 ["Size"]
      256 GETIMPORT                        R14 K80 [Enum.AutomaticSize.Y]
      258 SETTABLEKS                       R14 R13 K42 ["AutomaticSize"]
      260 LOADN                            R14 1
      261 SETTABLEKS                       R14 R13 K13 ["BackgroundTransparency"]
      263 LOADN                            R14 0
      264 SETTABLEKS                       R14 R13 K15 ["BorderSizePixel"]
      266 GETIMPORT                        R14 K11 [UDim2.new]
      268 LOADK                            R15 K81 [0.5]
      269 LOADN                            R16 0
      270 LOADK                            R17 K81 [0.5]
      271 LOADN                            R18 0
      272 CALL                             R14 4 1
      273 SETTABLEKS                       R14 R13 K76 ["Position"]
      275 GETIMPORT                        R14 K83 [Vector2.new]
      277 LOADK                            R15 K81 [0.5]
      278 LOADK                            R16 K81 [0.5]
      279 CALL                             R14 2 1
      280 SETTABLEKS                       R14 R13 K77 ["AnchorPoint"]
      282 CALL                             R11 2 1
      283 MOVE                             R12 R2
      284 LOADK                            R13 K84 [">> .Component-EmptyNotificationTray-MainText"]
      285 DUPTABLE                         R14 K85 [{"Size", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "TextColor3", "TextSize", "TextWrapped", "Font"}]
      286 GETIMPORT                        R15 K11 [UDim2.new]
      288 LOADN                            R16 1
      289 LOADN                            R17 0
      290 LOADN                            R18 0
      291 LOADN                            R19 0
      292 CALL                             R15 4 1
      293 SETTABLEKS                       R15 R14 K14 ["Size"]
      295 GETIMPORT                        R15 K80 [Enum.AutomaticSize.Y]
      297 SETTABLEKS                       R15 R14 K42 ["AutomaticSize"]
      299 LOADN                            R15 1
      300 SETTABLEKS                       R15 R14 K13 ["BackgroundTransparency"]
      302 LOADN                            R15 0
      303 SETTABLEKS                       R15 R14 K15 ["BorderSizePixel"]
      305 LOADK                            R15 K52 ["$TextPrimary"]
      306 SETTABLEKS                       R15 R14 K44 ["TextColor3"]
      308 LOADN                            R15 18
      309 SETTABLEKS                       R15 R14 K45 ["TextSize"]
      311 LOADB                            R15 1
      312 SETTABLEKS                       R15 R14 K46 ["TextWrapped"]
      314 GETIMPORT                        R15 K54 [Enum.Font.SourceSansSemibold]
      316 SETTABLEKS                       R15 R14 K47 ["Font"]
      318 CALL                             R12 2 1
      319 MOVE                             R13 R2
      320 LOADK                            R14 K86 [">> .Component-EmptyNotificationTray-SubText"]
      321 DUPTABLE                         R15 K85 [{"Size", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "TextColor3", "TextSize", "TextWrapped", "Font"}]
      322 GETIMPORT                        R16 K11 [UDim2.new]
      324 LOADN                            R17 1
      325 LOADN                            R18 0
      326 LOADN                            R19 0
      327 LOADN                            R20 0
      328 CALL                             R16 4 1
      329 SETTABLEKS                       R16 R15 K14 ["Size"]
      331 GETIMPORT                        R16 K80 [Enum.AutomaticSize.Y]
      333 SETTABLEKS                       R16 R15 K42 ["AutomaticSize"]
      335 LOADN                            R16 1
      336 SETTABLEKS                       R16 R15 K13 ["BackgroundTransparency"]
      338 LOADN                            R16 0
      339 SETTABLEKS                       R16 R15 K15 ["BorderSizePixel"]
      341 LOADK                            R16 K87 ["$TextSecondary"]
      342 SETTABLEKS                       R16 R15 K44 ["TextColor3"]
      344 LOADN                            R16 18
      345 SETTABLEKS                       R16 R15 K45 ["TextSize"]
      347 LOADB                            R16 1
      348 SETTABLEKS                       R16 R15 K46 ["TextWrapped"]
      350 GETIMPORT                        R16 K54 [Enum.Font.SourceSansSemibold]
      352 SETTABLEKS                       R16 R15 K47 ["Font"]
      354 CALL                             R13 2 -1
      355 SETLIST                          R7 R8 -1 [1]
      357 CALL                             R4 3 -1
      358 RETURN                           R4 -1
