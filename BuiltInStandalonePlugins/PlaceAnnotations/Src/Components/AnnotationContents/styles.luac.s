MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-AnnotationContents"]
       20 DUPTABLE                         R5 K15 [{"Size", "AutomaticSize", "BackgroundTransparency", "ClipsDescendants"}]
       21 GETIMPORT                        R6 K18 [UDim2.fromScale]
       23 LOADN                            R7 1
       24 LOADN                            R8 0
       25 CALL                             R6 2 1
       26 SETTABLEKS                       R6 R5 K11 ["Size"]
       28 GETIMPORT                        R6 K21 [Enum.AutomaticSize.Y]
       30 SETTABLEKS                       R6 R5 K12 ["AutomaticSize"]
       32 LOADN                            R6 1
       33 SETTABLEKS                       R6 R5 K13 ["BackgroundTransparency"]
       35 LOADB                            R6 1
       36 SETTABLEKS                       R6 R5 K14 ["ClipsDescendants"]
       38 NEWTABLE                         R6 0 3
       40 MOVE                             R7 R2
       41 LOADK                            R8 K22 ["::UIPadding"]
       42 DUPTABLE                         R9 K24 [{"PaddingRight"}]
       43 GETIMPORT                        R10 K27 [UDim.new]
       45 LOADN                            R11 0
       46 LOADN                            R12 4
       47 CALL                             R10 2 1
       48 SETTABLEKS                       R10 R9 K23 ["PaddingRight"]
       50 CALL                             R7 2 1
       51 MOVE                             R8 R2
       52 LOADK                            R9 K28 [">> Frame"]
       53 DUPTABLE                         R10 K29 [{"BackgroundTransparency"}]
       54 LOADN                            R11 1
       55 SETTABLEKS                       R11 R10 K13 ["BackgroundTransparency"]
       57 CALL                             R8 2 1
       58 MOVE                             R9 R2
       59 LOADK                            R10 K30 ["> #TextColumn"]
       60 DUPTABLE                         R11 K31 [{"AutomaticSize"}]
       61 GETIMPORT                        R12 K21 [Enum.AutomaticSize.Y]
       63 SETTABLEKS                       R12 R11 K12 ["AutomaticSize"]
       65 NEWTABLE                         R12 0 5
       67 MOVE                             R13 R2
       68 LOADK                            R14 K32 ["::UIListLayout"]
       69 DUPTABLE                         R15 K36 [{"SortOrder", "FillDirection", "Padding"}]
       70 GETIMPORT                        R16 K38 [Enum.SortOrder.LayoutOrder]
       72 SETTABLEKS                       R16 R15 K33 ["SortOrder"]
       74 GETIMPORT                        R16 K40 [Enum.FillDirection.Vertical]
       76 SETTABLEKS                       R16 R15 K34 ["FillDirection"]
       78 GETIMPORT                        R16 K27 [UDim.new]
       80 LOADN                            R17 0
       81 LOADN                            R18 4
       82 CALL                             R16 2 1
       83 SETTABLEKS                       R16 R15 K35 ["Padding"]
       85 CALL                             R13 2 1
       86 MOVE                             R14 R2
       87 LOADK                            R15 K41 ["::UIFlexItem"]
       88 DUPTABLE                         R16 K43 [{"FlexMode"}]
       89 GETIMPORT                        R17 K46 [Enum.UIFlexMode.Grow]
       91 SETTABLEKS                       R17 R16 K42 ["FlexMode"]
       93 CALL                             R14 2 1
       94 MOVE                             R15 R2
       95 LOADK                            R16 K47 [">> #UsernameRow"]
       96 DUPTABLE                         R17 K48 [{"Size", "AutomaticSize"}]
       97 GETIMPORT                        R18 K18 [UDim2.fromScale]
       99 LOADN                            R19 1
      100 LOADN                            R20 0
      101 CALL                             R18 2 1
      102 SETTABLEKS                       R18 R17 K11 ["Size"]
      104 GETIMPORT                        R18 K21 [Enum.AutomaticSize.Y]
      106 SETTABLEKS                       R18 R17 K12 ["AutomaticSize"]
      108 NEWTABLE                         R18 0 2
      110 MOVE                             R19 R2
      111 LOADK                            R20 K49 ["> Frame"]
      112 DUPTABLE                         R21 K31 [{"AutomaticSize"}]
      113 GETIMPORT                        R22 K51 [Enum.AutomaticSize.XY]
      115 SETTABLEKS                       R22 R21 K12 ["AutomaticSize"]
      117 NEWTABLE                         R22 0 2
      119 MOVE                             R23 R2
      120 LOADK                            R24 K52 ["> TextLabel"]
      121 DUPTABLE                         R25 K57 [{"AutomaticSize", "BackgroundTransparency", "TextScaled", "TextColor3", "TextSize", "Font"}]
      122 GETIMPORT                        R26 K51 [Enum.AutomaticSize.XY]
      124 SETTABLEKS                       R26 R25 K12 ["AutomaticSize"]
      126 LOADN                            R26 1
      127 SETTABLEKS                       R26 R25 K13 ["BackgroundTransparency"]
      129 LOADB                            R26 0
      130 SETTABLEKS                       R26 R25 K53 ["TextScaled"]
      132 LOADK                            R26 K58 ["$SecondaryContrast"]
      133 SETTABLEKS                       R26 R25 K54 ["TextColor3"]
      135 LOADN                            R26 16
      136 SETTABLEKS                       R26 R25 K55 ["TextSize"]
      138 LOADK                            R26 K59 ["$Font"]
      139 SETTABLEKS                       R26 R25 K56 ["Font"]
      141 CALL                             R23 2 1
      142 MOVE                             R24 R2
      143 LOADK                            R25 K60 ["> #TaggedYou"]
      144 DUPTABLE                         R26 K63 [{"TextColor3", "TextSize", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
      145 LOADK                            R27 K64 ["$TextPrimary"]
      146 SETTABLEKS                       R27 R26 K54 ["TextColor3"]
      148 LOADK                            R27 K65 ["$FontSizeS"]
      149 SETTABLEKS                       R27 R26 K55 ["TextSize"]
      151 LOADN                            R27 0
      152 SETTABLEKS                       R27 R26 K13 ["BackgroundTransparency"]
      154 LOADK                            R27 K66 ["$ResolveIconBase"]
      155 SETTABLEKS                       R27 R26 K61 ["BackgroundColor3"]
      157 LOADN                            R27 0
      158 SETTABLEKS                       R27 R26 K62 ["BorderSizePixel"]
      160 NEWTABLE                         R27 0 2
      162 MOVE                             R28 R2
      163 LOADK                            R29 K22 ["::UIPadding"]
      164 DUPTABLE                         R30 K70 [{"PaddingTop", "PaddingLeft", "PaddingBottom", "PaddingRight"}]
      165 GETIMPORT                        R31 K27 [UDim.new]
      167 LOADN                            R32 0
      168 LOADN                            R33 2
      169 CALL                             R31 2 1
      170 SETTABLEKS                       R31 R30 K67 ["PaddingTop"]
      172 GETIMPORT                        R31 K27 [UDim.new]
      174 LOADN                            R32 0
      175 LOADN                            R33 4
      176 CALL                             R31 2 1
      177 SETTABLEKS                       R31 R30 K68 ["PaddingLeft"]
      179 GETIMPORT                        R31 K27 [UDim.new]
      181 LOADN                            R32 0
      182 LOADN                            R33 4
      183 CALL                             R31 2 1
      184 SETTABLEKS                       R31 R30 K69 ["PaddingBottom"]
      186 GETIMPORT                        R31 K27 [UDim.new]
      188 LOADN                            R32 0
      189 LOADN                            R33 4
      190 CALL                             R31 2 1
      191 SETTABLEKS                       R31 R30 K23 ["PaddingRight"]
      193 CALL                             R28 2 1
      194 MOVE                             R29 R2
      195 LOADK                            R30 K71 ["::UICorner"]
      196 DUPTABLE                         R31 K73 [{"CornerRadius"}]
      197 GETIMPORT                        R32 K27 [UDim.new]
      199 LOADN                            R33 0
      200 LOADN                            R34 2
      201 CALL                             R32 2 1
      202 SETTABLEKS                       R32 R31 K72 ["CornerRadius"]
      204 CALL                             R29 2 -1
      205 SETLIST                          R27 R28 -1 [1]
      207 CALL                             R24 3 -1
      208 SETLIST                          R22 R23 -1 [1]
      210 CALL                             R19 3 1
      211 MOVE                             R20 R2
      212 LOADK                            R21 K74 ["> #MoreIcon"]
      213 DUPTABLE                         R22 K76 [{"Size", "Position"}]
      214 GETIMPORT                        R23 K78 [UDim2.fromOffset]
      216 LOADN                            R24 16
      217 LOADN                            R25 16
      218 CALL                             R23 2 1
      219 SETTABLEKS                       R23 R22 K11 ["Size"]
      221 GETIMPORT                        R23 K79 [UDim2.new]
      223 LOADN                            R24 1
      224 LOADN                            R25 240
      225 LOADN                            R26 0
      226 LOADN                            R27 0
      227 CALL                             R23 4 1
      228 SETTABLEKS                       R23 R22 K75 ["Position"]
      230 NEWTABLE                         R23 0 2
      232 MOVE                             R24 R2
      233 LOADK                            R25 K80 [":hover"]
      234 DUPTABLE                         R26 K81 [{"BackgroundTransparency", "BackgroundColor3"}]
      235 LOADK                            R27 K82 ["$Shift200Transparency"]
      236 SETTABLEKS                       R27 R26 K13 ["BackgroundTransparency"]
      238 LOADK                            R27 K83 ["$Shift200Color"]
      239 SETTABLEKS                       R27 R26 K61 ["BackgroundColor3"]
      241 CALL                             R24 2 1
      242 MOVE                             R25 R2
      243 LOADK                            R26 K84 [":press"]
      244 DUPTABLE                         R27 K81 [{"BackgroundTransparency", "BackgroundColor3"}]
      245 LOADK                            R28 K85 ["$Shift100Transparency"]
      246 SETTABLEKS                       R28 R27 K13 ["BackgroundTransparency"]
      248 LOADK                            R28 K83 ["$Shift200Color"]
      249 SETTABLEKS                       R28 R27 K61 ["BackgroundColor3"]
      251 CALL                             R25 2 -1
      252 SETLIST                          R23 R24 -1 [1]
      254 CALL                             R20 3 -1
      255 SETLIST                          R18 R19 -1 [1]
      257 CALL                             R15 3 1
      258 MOVE                             R16 R2
      259 LOADK                            R17 K86 [">> TextLabel #Contents"]
      260 DUPTABLE                         R18 K91 [{"Size", "AutomaticSize", "TextWrapped", "TextColor3", "TextSize", "BackgroundTransparency", "LineHeight", "TextXAlignment", "RichText"}]
      261 GETIMPORT                        R19 K18 [UDim2.fromScale]
      263 LOADN                            R20 1
      264 LOADN                            R21 0
      265 CALL                             R19 2 1
      266 SETTABLEKS                       R19 R18 K11 ["Size"]
      268 GETIMPORT                        R19 K51 [Enum.AutomaticSize.XY]
      270 SETTABLEKS                       R19 R18 K12 ["AutomaticSize"]
      272 LOADB                            R19 1
      273 SETTABLEKS                       R19 R18 K87 ["TextWrapped"]
      275 LOADK                            R19 K64 ["$TextPrimary"]
      276 SETTABLEKS                       R19 R18 K54 ["TextColor3"]
      278 LOADK                            R19 K92 ["$FontSizeM"]
      279 SETTABLEKS                       R19 R18 K55 ["TextSize"]
      281 LOADN                            R19 1
      282 SETTABLEKS                       R19 R18 K13 ["BackgroundTransparency"]
      284 LOADK                            R19 K93 [1.2]
      285 SETTABLEKS                       R19 R18 K88 ["LineHeight"]
      287 GETIMPORT                        R19 K95 [Enum.TextXAlignment.Left]
      289 SETTABLEKS                       R19 R18 K89 ["TextXAlignment"]
      291 LOADB                            R19 1
      292 SETTABLEKS                       R19 R18 K90 ["RichText"]
      294 CALL                             R16 2 1
      295 MOVE                             R17 R2
      296 LOADK                            R18 K96 [">> TextBox"]
      297 DUPTABLE                         R19 K97 [{"TextSize"}]
      298 LOADN                            R20 16
      299 SETTABLEKS                       R20 R19 K55 ["TextSize"]
      301 CALL                             R17 2 -1
      302 SETLIST                          R12 R13 -1 [1]
      304 CALL                             R9 3 -1
      305 SETLIST                          R6 R7 -1 [1]
      307 CALL                             R3 3 -1
      308 RETURN                           R3 -1
