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
       23 LOADK                            R4 K9 [".Component-AnnotationHeader"]
       24 DUPTABLE                         R5 K13 [{"BackgroundTransparency", "Size", "AutomaticSize"}]
       25 LOADN                            R6 1
       26 SETTABLEKS                       R6 R5 K10 ["BackgroundTransparency"]
       28 GETIMPORT                        R6 K16 [UDim2.fromScale]
       30 LOADN                            R7 1
       31 LOADN                            R8 0
       32 CALL                             R6 2 1
       33 SETTABLEKS                       R6 R5 K11 ["Size"]
       35 GETIMPORT                        R6 K19 [Enum.AutomaticSize.Y]
       37 SETTABLEKS                       R6 R5 K12 ["AutomaticSize"]
       39 NEWTABLE                         R6 0 3
       41 MOVE                             R7 R2
       42 LOADK                            R8 K20 ["::UIPadding"]
       43 DUPTABLE                         R9 K23 [{"PaddingTop", "PaddingBottom"}]
       44 GETIMPORT                        R10 K26 [UDim.new]
       46 LOADN                            R11 0
       47 LOADN                            R12 8
       48 CALL                             R10 2 1
       49 SETTABLEKS                       R10 R9 K21 ["PaddingTop"]
       51 GETIMPORT                        R10 K26 [UDim.new]
       53 LOADN                            R11 0
       54 LOADN                            R12 16
       55 CALL                             R10 2 1
       56 SETTABLEKS                       R10 R9 K22 ["PaddingBottom"]
       58 CALL                             R7 2 1
       59 MOVE                             R8 R2
       60 LOADK                            R9 K27 ["::UIListLayout"]
       61 DUPTABLE                         R10 K32 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
       62 GETIMPORT                        R11 K34 [Enum.FillDirection.Vertical]
       64 SETTABLEKS                       R11 R10 K28 ["FillDirection"]
       66 GETIMPORT                        R11 K36 [Enum.HorizontalAlignment.Center]
       68 SETTABLEKS                       R11 R10 K29 ["HorizontalAlignment"]
       70 GETIMPORT                        R11 K38 [Enum.SortOrder.LayoutOrder]
       72 SETTABLEKS                       R11 R10 K30 ["SortOrder"]
       74 GETIMPORT                        R11 K26 [UDim.new]
       76 LOADN                            R12 0
       77 LOADN                            R13 10
       78 CALL                             R11 2 1
       79 SETTABLEKS                       R11 R10 K31 ["Padding"]
       81 CALL                             R8 2 1
       82 MOVE                             R9 R2
       83 LOADK                            R10 K39 ["> #Navigation"]
       84 DUPTABLE                         R11 K40 [{"BackgroundTransparency", "Size"}]
       85 LOADN                            R12 1
       86 SETTABLEKS                       R12 R11 K10 ["BackgroundTransparency"]
       88 GETIMPORT                        R12 K16 [UDim2.fromScale]
       90 LOADN                            R13 1
       91 LOADN                            R14 0
       92 CALL                             R12 2 1
       93 SETTABLEKS                       R12 R11 K11 ["Size"]
       95 NEWTABLE                         R12 0 3
       97 MOVE                             R13 R2
       98 LOADK                            R14 K41 ["> #ErrorBanner"]
       99 DUPTABLE                         R15 K44 [{"AnchorPoint", "Position"}]
      100 GETIMPORT                        R16 K46 [Vector2.new]
      102 LOADN                            R17 0
      103 LOADK                            R18 K47 [0.5]
      104 CALL                             R16 2 1
      105 SETTABLEKS                       R16 R15 K42 ["AnchorPoint"]
      107 GETIMPORT                        R16 K16 [UDim2.fromScale]
      109 LOADN                            R17 0
      110 LOADK                            R18 K47 [0.5]
      111 CALL                             R16 2 1
      112 SETTABLEKS                       R16 R15 K43 ["Position"]
      114 CALL                             R13 2 1
      115 MOVE                             R14 R2
      116 LOADK                            R15 K48 ["> #LeftAligned"]
      117 DUPTABLE                         R16 K49 [{"BackgroundTransparency", "AnchorPoint", "Position", "AutomaticSize"}]
      118 LOADN                            R17 1
      119 SETTABLEKS                       R17 R16 K10 ["BackgroundTransparency"]
      121 GETIMPORT                        R17 K46 [Vector2.new]
      123 LOADN                            R18 0
      124 LOADK                            R19 K47 [0.5]
      125 CALL                             R17 2 1
      126 SETTABLEKS                       R17 R16 K42 ["AnchorPoint"]
      128 GETIMPORT                        R17 K16 [UDim2.fromScale]
      130 LOADN                            R18 0
      131 LOADK                            R19 K47 [0.5]
      132 CALL                             R17 2 1
      133 SETTABLEKS                       R17 R16 K43 ["Position"]
      135 GETIMPORT                        R17 K51 [Enum.AutomaticSize.XY]
      137 SETTABLEKS                       R17 R16 K12 ["AutomaticSize"]
      139 NEWTABLE                         R17 0 4
      141 MOVE                             R18 R2
      142 LOADK                            R19 K27 ["::UIListLayout"]
      143 DUPTABLE                         R20 K53 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      144 GETIMPORT                        R21 K55 [Enum.FillDirection.Horizontal]
      146 SETTABLEKS                       R21 R20 K28 ["FillDirection"]
      148 GETIMPORT                        R21 K57 [Enum.HorizontalAlignment.Left]
      150 SETTABLEKS                       R21 R20 K29 ["HorizontalAlignment"]
      152 GETIMPORT                        R21 K58 [Enum.VerticalAlignment.Center]
      154 SETTABLEKS                       R21 R20 K52 ["VerticalAlignment"]
      156 GETIMPORT                        R21 K38 [Enum.SortOrder.LayoutOrder]
      158 SETTABLEKS                       R21 R20 K30 ["SortOrder"]
      160 GETIMPORT                        R21 K26 [UDim.new]
      162 LOADN                            R22 0
      163 LOADN                            R23 8
      164 CALL                             R21 2 1
      165 SETTABLEKS                       R21 R20 K31 ["Padding"]
      167 CALL                             R18 2 1
      168 MOVE                             R19 R2
      169 LOADK                            R20 K59 ["> ImageLabel"]
      170 DUPTABLE                         R21 K40 [{"BackgroundTransparency", "Size"}]
      171 LOADN                            R22 1
      172 SETTABLEKS                       R22 R21 K10 ["BackgroundTransparency"]
      174 GETIMPORT                        R22 K61 [UDim2.fromOffset]
      176 LOADN                            R23 16
      177 LOADN                            R24 16
      178 CALL                             R22 2 1
      179 SETTABLEKS                       R22 R21 K11 ["Size"]
      181 CALL                             R19 2 1
      182 MOVE                             R20 R2
      183 LOADK                            R21 K62 ["> TextLabel"]
      184 DUPTABLE                         R22 K70 [{"TextColor3", "TextTransparency", "Font", "BackgroundTransparency", "TextSize", "TextXAlignment", "TextTruncate", "TextWrapped"}]
      185 LOADK                            R23 K71 ["$TextPrimary"]
      186 SETTABLEKS                       R23 R22 K63 ["TextColor3"]
      188 LOADK                            R23 K72 [0.2]
      189 SETTABLEKS                       R23 R22 K64 ["TextTransparency"]
      191 LOADK                            R23 K73 ["$FontBold"]
      192 SETTABLEKS                       R23 R22 K65 ["Font"]
      194 LOADN                            R23 1
      195 SETTABLEKS                       R23 R22 K10 ["BackgroundTransparency"]
      197 LOADN                            R23 16
      198 SETTABLEKS                       R23 R22 K66 ["TextSize"]
      200 GETIMPORT                        R23 K74 [Enum.TextXAlignment.Left]
      202 SETTABLEKS                       R23 R22 K67 ["TextXAlignment"]
      204 GETIMPORT                        R23 K76 [Enum.TextTruncate.AtEnd]
      206 SETTABLEKS                       R23 R22 K68 ["TextTruncate"]
      208 LOADB                            R23 0
      209 SETTABLEKS                       R23 R22 K69 ["TextWrapped"]
      211 CALL                             R20 2 1
      212 MOVE                             R21 R2
      213 LOADK                            R22 K77 [">> ImageButton"]
      214 DUPTABLE                         R23 K79 [{"AnchorPoint", "Size", "BackgroundTransparency", "BorderSizePixel"}]
      215 GETIMPORT                        R24 K46 [Vector2.new]
      217 LOADN                            R25 0
      218 LOADK                            R26 K47 [0.5]
      219 CALL                             R24 2 1
      220 SETTABLEKS                       R24 R23 K42 ["AnchorPoint"]
      222 GETIMPORT                        R24 K16 [UDim2.fromScale]
      224 LOADN                            R25 16
      225 LOADN                            R26 16
      226 CALL                             R24 2 1
      227 SETTABLEKS                       R24 R23 K11 ["Size"]
      229 LOADN                            R24 1
      230 SETTABLEKS                       R24 R23 K10 ["BackgroundTransparency"]
      232 LOADN                            R24 0
      233 SETTABLEKS                       R24 R23 K78 ["BorderSizePixel"]
      235 CALL                             R21 2 -1
      236 SETLIST                          R17 R18 -1 [1]
      238 CALL                             R14 3 1
      239 MOVE                             R15 R2
      240 LOADK                            R16 K80 ["> #RightAligned"]
      241 DUPTABLE                         R17 K81 [{"BackgroundTransparency", "AutomaticSize", "AnchorPoint", "Position"}]
      242 LOADN                            R18 1
      243 SETTABLEKS                       R18 R17 K10 ["BackgroundTransparency"]
      245 GETIMPORT                        R18 K51 [Enum.AutomaticSize.XY]
      247 SETTABLEKS                       R18 R17 K12 ["AutomaticSize"]
      249 GETIMPORT                        R18 K46 [Vector2.new]
      251 LOADN                            R19 1
      252 LOADK                            R20 K47 [0.5]
      253 CALL                             R18 2 1
      254 SETTABLEKS                       R18 R17 K42 ["AnchorPoint"]
      256 GETIMPORT                        R18 K16 [UDim2.fromScale]
      258 LOADN                            R19 1
      259 LOADK                            R20 K47 [0.5]
      260 CALL                             R18 2 1
      261 SETTABLEKS                       R18 R17 K43 ["Position"]
      263 NEWTABLE                         R18 0 2
      265 MOVE                             R19 R2
      266 LOADK                            R20 K27 ["::UIListLayout"]
      267 DUPTABLE                         R21 K53 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      268 GETIMPORT                        R22 K55 [Enum.FillDirection.Horizontal]
      270 SETTABLEKS                       R22 R21 K28 ["FillDirection"]
      272 GETIMPORT                        R22 K83 [Enum.HorizontalAlignment.Right]
      274 SETTABLEKS                       R22 R21 K29 ["HorizontalAlignment"]
      276 GETIMPORT                        R22 K58 [Enum.VerticalAlignment.Center]
      278 SETTABLEKS                       R22 R21 K52 ["VerticalAlignment"]
      280 GETIMPORT                        R22 K38 [Enum.SortOrder.LayoutOrder]
      282 SETTABLEKS                       R22 R21 K30 ["SortOrder"]
      284 GETIMPORT                        R22 K26 [UDim.new]
      286 LOADN                            R23 0
      287 LOADN                            R24 6
      288 CALL                             R22 2 1
      289 SETTABLEKS                       R22 R21 K31 ["Padding"]
      291 CALL                             R19 2 1
      292 MOVE                             R20 R2
      293 LOADK                            R21 K84 ["> .CloseButton"]
      294 DUPTABLE                         R22 K86 [{"Text", "Size", "BackgroundTransparency"}]
      295 LOADK                            R23 K87 [""]
      296 SETTABLEKS                       R23 R22 K85 ["Text"]
      298 GETIMPORT                        R23 K61 [UDim2.fromOffset]
      300 LOADN                            R24 20
      301 LOADN                            R25 20
      302 CALL                             R23 2 1
      303 SETTABLEKS                       R23 R22 K11 ["Size"]
      305 LOADN                            R23 1
      306 SETTABLEKS                       R23 R22 K10 ["BackgroundTransparency"]
      308 NEWTABLE                         R23 0 4
      310 MOVE                             R24 R2
      311 LOADK                            R25 K20 ["::UIPadding"]
      312 DUPTABLE                         R26 K90 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
      313 GETIMPORT                        R27 K26 [UDim.new]
      315 LOADN                            R28 0
      316 LOADN                            R29 2
      317 CALL                             R27 2 1
      318 SETTABLEKS                       R27 R26 K21 ["PaddingTop"]
      320 GETIMPORT                        R27 K26 [UDim.new]
      322 LOADN                            R28 0
      323 LOADN                            R29 2
      324 CALL                             R27 2 1
      325 SETTABLEKS                       R27 R26 K88 ["PaddingLeft"]
      327 GETIMPORT                        R27 K26 [UDim.new]
      329 LOADN                            R28 0
      330 LOADN                            R29 2
      331 CALL                             R27 2 1
      332 SETTABLEKS                       R27 R26 K89 ["PaddingRight"]
      334 GETIMPORT                        R27 K26 [UDim.new]
      336 LOADN                            R28 0
      337 LOADN                            R29 2
      338 CALL                             R27 2 1
      339 SETTABLEKS                       R27 R26 K22 ["PaddingBottom"]
      341 CALL                             R24 2 1
      342 MOVE                             R25 R2
      343 LOADK                            R26 K91 [":hover"]
      344 DUPTABLE                         R27 K93 [{"BackgroundColor3", "BackgroundTransparency"}]
      345 LOADK                            R28 K94 ["$Shift200Color"]
      346 SETTABLEKS                       R28 R27 K92 ["BackgroundColor3"]
      348 LOADK                            R28 K95 ["$Shift200Transparency"]
      349 SETTABLEKS                       R28 R27 K10 ["BackgroundTransparency"]
      351 CALL                             R25 2 1
      352 MOVE                             R26 R2
      353 LOADK                            R27 K96 [":press"]
      354 DUPTABLE                         R28 K93 [{"BackgroundColor3", "BackgroundTransparency"}]
      355 LOADK                            R29 K94 ["$Shift200Color"]
      356 SETTABLEKS                       R29 R28 K92 ["BackgroundColor3"]
      358 LOADK                            R29 K97 ["$Shift100Transparency"]
      359 SETTABLEKS                       R29 R28 K10 ["BackgroundTransparency"]
      361 CALL                             R26 2 1
      362 MOVE                             R27 R2
      363 LOADK                            R28 K98 ["::UICorner"]
      364 DUPTABLE                         R29 K100 [{"CornerRadius"}]
      365 GETIMPORT                        R30 K26 [UDim.new]
      367 LOADN                            R31 0
      368 LOADN                            R32 4
      369 CALL                             R30 2 1
      370 SETTABLEKS                       R30 R29 K99 ["CornerRadius"]
      372 CALL                             R27 2 -1
      373 SETLIST                          R23 R24 -1 [1]
      375 CALL                             R20 3 -1
      376 SETLIST                          R18 R19 -1 [1]
      378 CALL                             R15 3 -1
      379 SETLIST                          R12 R13 -1 [1]
      381 CALL                             R9 3 -1
      382 SETLIST                          R6 R7 -1 [1]
      384 CALL                             R3 3 -1
      385 RETURN                           R3 -1
