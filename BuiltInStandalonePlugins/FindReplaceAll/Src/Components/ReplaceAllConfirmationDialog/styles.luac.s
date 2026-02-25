MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Resources"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Util"]
       29 GETTABLEKS                       R4 R5 K12 ["defineFlags"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R5 R2 K13 ["Styling"]
       34 GETTABLEKS                       R4 R5 K14 ["createStyleRule"]
       36 MOVE                             R5 R4
       37 LOADK                            R6 K15 [">> .FindReplaceAll-ReplaceAllConfirmationDialog"]
       38 DUPTABLE                         R7 K20 [{"Size", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel"}]
       39 GETIMPORT                        R8 K23 [UDim2.new]
       41 LOADN                            R9 1
       42 LOADN                            R10 0
       43 LOADN                            R11 0
       44 GETTABLEKS                       R12 R1 K24 ["widgetHeaderLineHeight"]
       46 CALL                             R8 4 1
       47 SETTABLEKS                       R8 R7 K16 ["Size"]
       49 GETIMPORT                        R8 K27 [Enum.AutomaticSize.Y]
       51 SETTABLEKS                       R8 R7 K17 ["AutomaticSize"]
       53 LOADN                            R8 1
       54 SETTABLEKS                       R8 R7 K18 ["BackgroundTransparency"]
       56 LOADN                            R8 0
       57 SETTABLEKS                       R8 R7 K19 ["BorderSizePixel"]
       59 NEWTABLE                         R8 0 4
       61 MOVE                             R9 R4
       62 LOADK                            R10 K28 ["::UIPadding"]
       63 DUPTABLE                         R11 K31 [{"PaddingTop", "PaddingBottom"}]
       64 GETIMPORT                        R12 K33 [UDim.new]
       66 LOADN                            R13 0
       67 GETTABLEKS                       R14 R1 K34 ["paddingSmall"]
       69 CALL                             R12 2 1
       70 SETTABLEKS                       R12 R11 K29 ["PaddingTop"]
       72 GETIMPORT                        R12 K33 [UDim.new]
       74 LOADN                            R13 0
       75 GETTABLEKS                       R14 R1 K34 ["paddingSmall"]
       77 CALL                             R12 2 1
       78 SETTABLEKS                       R12 R11 K30 ["PaddingBottom"]
       80 CALL                             R9 2 1
       81 MOVE                             R10 R4
       82 LOADK                            R11 K35 ["::UIListLayout"]
       83 DUPTABLE                         R12 K39 [{"ItemLineAlignment", "HorizontalFlex", "Padding"}]
       84 GETIMPORT                        R13 K41 [Enum.ItemLineAlignment.Center]
       86 SETTABLEKS                       R13 R12 K36 ["ItemLineAlignment"]
       88 GETIMPORT                        R13 K44 [Enum.UIFlexAlignment.Fill]
       90 SETTABLEKS                       R13 R12 K37 ["HorizontalFlex"]
       92 GETIMPORT                        R13 K33 [UDim.new]
       94 LOADN                            R14 0
       95 GETTABLEKS                       R15 R1 K34 ["paddingSmall"]
       97 CALL                             R13 2 1
       98 SETTABLEKS                       R13 R12 K38 ["Padding"]
      100 CALL                             R10 2 1
      101 MOVE                             R11 R4
      102 LOADK                            R12 K45 ["> .ReplaceAllDialogText"]
      103 DUPTABLE                         R13 K50 [{"BackgroundTransparency", "TextColor3", "TextXAlignment", "TextSize", "TextWrapped", "AutomaticSize", "Size", "BorderSizePixel"}]
      104 LOADN                            R14 1
      105 SETTABLEKS                       R14 R13 K18 ["BackgroundTransparency"]
      107 LOADK                            R14 K51 ["$ColorContentDefault"]
      108 SETTABLEKS                       R14 R13 K46 ["TextColor3"]
      110 GETIMPORT                        R14 K53 [Enum.TextXAlignment.Left]
      112 SETTABLEKS                       R14 R13 K47 ["TextXAlignment"]
      114 GETTABLEKS                       R15 R1 K54 ["confirmationDialogTextSize"]
      116 GETTABLEKS                       R17 R3 K55 ["getFFlagFindReplaceAllUseBuilderFont"]
      118 CALL                             R17 0 1
      119 JUMPIFNOT                        R17 ; [+3]
      120 GETTABLEKS                       R16 R1 K56 ["defaultFontScale"]
      122 JUMP                             ; [+1]
      123 LOADK                            R16 K57 [1.257]
      124 MUL                              R14 R15 R16
      125 SETTABLEKS                       R14 R13 K48 ["TextSize"]
      127 LOADB                            R14 1
      128 SETTABLEKS                       R14 R13 K49 ["TextWrapped"]
      130 GETIMPORT                        R14 K27 [Enum.AutomaticSize.Y]
      132 SETTABLEKS                       R14 R13 K17 ["AutomaticSize"]
      134 GETIMPORT                        R14 K59 [UDim2.fromOffset]
      136 GETTABLEKS                       R15 R1 K60 ["replaceAllConfirmationLabelWidth"]
      138 GETTABLEKS                       R16 R1 K24 ["widgetHeaderLineHeight"]
      140 CALL                             R14 2 1
      141 SETTABLEKS                       R14 R13 K16 ["Size"]
      143 LOADN                            R14 0
      144 SETTABLEKS                       R14 R13 K19 ["BorderSizePixel"]
      146 NEWTABLE                         R14 0 2
      148 MOVE                             R15 R4
      149 LOADK                            R16 K28 ["::UIPadding"]
      150 DUPTABLE                         R17 K62 [{"PaddingLeft"}]
      151 GETIMPORT                        R18 K33 [UDim.new]
      153 LOADN                            R19 0
      154 GETTABLEKS                       R20 R1 K34 ["paddingSmall"]
      156 CALL                             R18 2 1
      157 SETTABLEKS                       R18 R17 K61 ["PaddingLeft"]
      159 CALL                             R15 2 1
      160 MOVE                             R16 R4
      161 LOADK                            R17 K63 ["::UISizeConstraint"]
      162 DUPTABLE                         R18 K65 [{"MinSize"}]
      163 GETIMPORT                        R19 K67 [Vector2.new]
      165 GETTABLEKS                       R20 R1 K60 ["replaceAllConfirmationLabelWidth"]
      167 GETTABLEKS                       R21 R1 K24 ["widgetHeaderLineHeight"]
      169 CALL                             R19 2 1
      170 SETTABLEKS                       R19 R18 K64 ["MinSize"]
      172 CALL                             R16 2 -1
      173 SETLIST                          R14 R15 -1 [1]
      175 CALL                             R11 3 1
      176 MOVE                             R12 R4
      177 LOADK                            R13 K68 ["> .DialogButtonFrame"]
      178 DUPTABLE                         R14 K69 [{"BackgroundTransparency", "AutomaticSize", "BorderSizePixel"}]
      179 LOADN                            R15 1
      180 SETTABLEKS                       R15 R14 K18 ["BackgroundTransparency"]
      182 GETIMPORT                        R15 K71 [Enum.AutomaticSize.XY]
      184 SETTABLEKS                       R15 R14 K17 ["AutomaticSize"]
      186 LOADN                            R15 0
      187 SETTABLEKS                       R15 R14 K19 ["BorderSizePixel"]
      189 NEWTABLE                         R15 0 4
      191 MOVE                             R16 R4
      192 LOADK                            R17 K35 ["::UIListLayout"]
      193 DUPTABLE                         R18 K72 [{"ItemLineAlignment", "Padding"}]
      194 GETIMPORT                        R19 K41 [Enum.ItemLineAlignment.Center]
      196 SETTABLEKS                       R19 R18 K36 ["ItemLineAlignment"]
      198 GETIMPORT                        R19 K33 [UDim.new]
      200 LOADN                            R20 0
      201 GETTABLEKS                       R21 R1 K34 ["paddingSmall"]
      203 CALL                             R19 2 1
      204 SETTABLEKS                       R19 R18 K38 ["Padding"]
      206 CALL                             R16 2 1
      207 MOVE                             R17 R4
      208 LOADK                            R18 K73 ["> .DialogButton"]
      209 DUPTABLE                         R19 K75 [{"Size", "AutomaticSize", "Font", "TextSize"}]
      210 GETIMPORT                        R20 K59 [UDim2.fromOffset]
      212 GETTABLEKS                       R21 R1 K24 ["widgetHeaderLineHeight"]
      214 GETTABLEKS                       R22 R1 K24 ["widgetHeaderLineHeight"]
      216 CALL                             R20 2 1
      217 SETTABLEKS                       R20 R19 K16 ["Size"]
      219 GETIMPORT                        R20 K77 [Enum.AutomaticSize.X]
      221 SETTABLEKS                       R20 R19 K17 ["AutomaticSize"]
      223 GETTABLEKS                       R20 R1 K78 ["defaultFontBold"]
      225 SETTABLEKS                       R20 R19 K74 ["Font"]
      227 GETTABLEKS                       R21 R1 K54 ["confirmationDialogTextSize"]
      229 GETTABLEKS                       R23 R3 K55 ["getFFlagFindReplaceAllUseBuilderFont"]
      231 CALL                             R23 0 1
      232 JUMPIFNOT                        R23 ; [+3]
      233 GETTABLEKS                       R22 R1 K56 ["defaultFontScale"]
      235 JUMP                             ; [+1]
      236 LOADK                            R22 K57 [1.257]
      237 MUL                              R20 R21 R22
      238 SETTABLEKS                       R20 R19 K48 ["TextSize"]
      240 NEWTABLE                         R20 0 3
      242 MOVE                             R21 R4
      243 LOADK                            R22 K79 ["::UICorner"]
      244 DUPTABLE                         R23 K81 [{"CornerRadius"}]
      245 GETIMPORT                        R24 K33 [UDim.new]
      247 LOADN                            R25 0
      248 GETTABLEKS                       R26 R1 K82 ["radiusMedium"]
      250 CALL                             R24 2 1
      251 SETTABLEKS                       R24 R23 K80 ["CornerRadius"]
      253 CALL                             R21 2 1
      254 MOVE                             R22 R4
      255 LOADK                            R23 K63 ["::UISizeConstraint"]
      256 DUPTABLE                         R24 K65 [{"MinSize"}]
      257 GETIMPORT                        R25 K67 [Vector2.new]
      259 GETTABLEKS                       R26 R1 K24 ["widgetHeaderLineHeight"]
      261 GETTABLEKS                       R27 R1 K24 ["widgetHeaderLineHeight"]
      263 CALL                             R25 2 1
      264 SETTABLEKS                       R25 R24 K64 ["MinSize"]
      266 CALL                             R22 2 1
      267 MOVE                             R23 R4
      268 LOADK                            R24 K28 ["::UIPadding"]
      269 DUPTABLE                         R25 K84 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      270 GETIMPORT                        R26 K33 [UDim.new]
      272 LOADN                            R27 0
      273 GETTABLEKS                       R28 R1 K34 ["paddingSmall"]
      275 CALL                             R26 2 1
      276 SETTABLEKS                       R26 R25 K61 ["PaddingLeft"]
      278 GETIMPORT                        R26 K33 [UDim.new]
      280 LOADN                            R27 0
      281 GETTABLEKS                       R28 R1 K34 ["paddingSmall"]
      283 CALL                             R26 2 1
      284 SETTABLEKS                       R26 R25 K83 ["PaddingRight"]
      286 GETIMPORT                        R26 K33 [UDim.new]
      288 LOADN                            R27 0
      289 GETTABLEKS                       R28 R1 K34 ["paddingSmall"]
      291 CALL                             R26 2 1
      292 SETTABLEKS                       R26 R25 K29 ["PaddingTop"]
      294 GETIMPORT                        R26 K33 [UDim.new]
      296 LOADN                            R27 0
      297 GETTABLEKS                       R28 R1 K34 ["paddingSmall"]
      299 CALL                             R26 2 1
      300 SETTABLEKS                       R26 R25 K30 ["PaddingBottom"]
      302 CALL                             R23 2 -1
      303 SETLIST                          R20 R21 -1 [1]
      305 CALL                             R17 3 1
      306 MOVE                             R18 R4
      307 LOADK                            R19 K85 ["> .YesButton"]
      308 DUPTABLE                         R20 K87 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
      309 LOADK                            R21 K88 ["$ColorActionEmphasisBackground"]
      310 SETTABLEKS                       R21 R20 K86 ["BackgroundColor3"]
      312 LOADN                            R21 0
      313 SETTABLEKS                       R21 R20 K18 ["BackgroundTransparency"]
      315 LOADK                            R21 K89 ["$ColorActionEmphasisForeground"]
      316 SETTABLEKS                       R21 R20 K46 ["TextColor3"]
      318 CALL                             R18 2 1
      319 MOVE                             R19 R4
      320 LOADK                            R20 K90 ["> .NoButton"]
      321 DUPTABLE                         R21 K87 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
      322 LOADK                            R22 K91 ["$ColorActionStandardBackground"]
      323 SETTABLEKS                       R22 R21 K86 ["BackgroundColor3"]
      325 LOADK                            R22 K92 ["$ColorActionStandardBackgroundTransparency"]
      326 SETTABLEKS                       R22 R21 K18 ["BackgroundTransparency"]
      328 LOADK                            R22 K93 ["$ColorActionStandardForeground"]
      329 SETTABLEKS                       R22 R21 K46 ["TextColor3"]
      331 CALL                             R19 2 -1
      332 SETLIST                          R15 R16 -1 [1]
      334 CALL                             R12 3 -1
      335 SETLIST                          R8 R9 -1 [1]
      337 CALL                             R5 3 -1
      338 RETURN                           R5 -1
