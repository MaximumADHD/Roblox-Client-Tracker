MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["Styling"]
       25 GETTABLEKS                       R3 R3 K12 ["createStyleRule"]
       27 MOVE                             R4 R3
       28 LOADK                            R5 K13 [">> .FindReplaceAll-ReplaceAllConfirmationDialog"]
       29 DUPTABLE                         R6 K18 [{"Size", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel"}]
       30 GETIMPORT                        R7 K21 [UDim2.new]
       32 LOADN                            R8 1
       33 LOADN                            R9 0
       34 LOADN                            R10 0
       35 GETTABLEKS                       R11 R1 K22 ["widgetHeaderLineHeight"]
       37 CALL                             R7 4 1
       38 SETTABLEKS                       R7 R6 K14 ["Size"]
       40 GETIMPORT                        R7 K25 [Enum.AutomaticSize.Y]
       42 SETTABLEKS                       R7 R6 K15 ["AutomaticSize"]
       44 LOADN                            R7 1
       45 SETTABLEKS                       R7 R6 K16 ["BackgroundTransparency"]
       47 LOADN                            R7 0
       48 SETTABLEKS                       R7 R6 K17 ["BorderSizePixel"]
       50 NEWTABLE                         R7 0 4
       52 MOVE                             R8 R3
       53 LOADK                            R9 K26 ["::UIPadding"]
       54 DUPTABLE                         R10 K29 [{"PaddingTop", "PaddingBottom"}]
       55 GETIMPORT                        R11 K31 [UDim.new]
       57 LOADN                            R12 0
       58 GETTABLEKS                       R13 R1 K32 ["paddingSmall"]
       60 CALL                             R11 2 1
       61 SETTABLEKS                       R11 R10 K27 ["PaddingTop"]
       63 GETIMPORT                        R11 K31 [UDim.new]
       65 LOADN                            R12 0
       66 GETTABLEKS                       R13 R1 K32 ["paddingSmall"]
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K28 ["PaddingBottom"]
       71 CALL                             R8 2 1
       72 MOVE                             R9 R3
       73 LOADK                            R10 K33 ["::UIListLayout"]
       74 DUPTABLE                         R11 K37 [{"ItemLineAlignment", "HorizontalFlex", "Padding"}]
       75 GETIMPORT                        R12 K39 [Enum.ItemLineAlignment.Center]
       77 SETTABLEKS                       R12 R11 K34 ["ItemLineAlignment"]
       79 GETIMPORT                        R12 K42 [Enum.UIFlexAlignment.Fill]
       81 SETTABLEKS                       R12 R11 K35 ["HorizontalFlex"]
       83 GETIMPORT                        R12 K31 [UDim.new]
       85 LOADN                            R13 0
       86 GETTABLEKS                       R14 R1 K32 ["paddingSmall"]
       88 CALL                             R12 2 1
       89 SETTABLEKS                       R12 R11 K36 ["Padding"]
       91 CALL                             R9 2 1
       92 MOVE                             R10 R3
       93 LOADK                            R11 K43 ["> .ReplaceAllDialogText"]
       94 DUPTABLE                         R12 K48 [{"BackgroundTransparency", "TextColor3", "TextXAlignment", "TextSize", "TextWrapped", "AutomaticSize", "Size", "BorderSizePixel"}]
       95 LOADN                            R13 1
       96 SETTABLEKS                       R13 R12 K16 ["BackgroundTransparency"]
       98 LOADK                            R13 K49 ["$ColorContentDefault"]
       99 SETTABLEKS                       R13 R12 K44 ["TextColor3"]
      101 GETIMPORT                        R13 K51 [Enum.TextXAlignment.Left]
      103 SETTABLEKS                       R13 R12 K45 ["TextXAlignment"]
      105 GETTABLEKS                       R14 R1 K52 ["confirmationDialogTextSize"]
      107 GETTABLEKS                       R15 R1 K53 ["defaultFontScale"]
      109 MUL                              R13 R14 R15
      110 SETTABLEKS                       R13 R12 K46 ["TextSize"]
      112 LOADB                            R13 1
      113 SETTABLEKS                       R13 R12 K47 ["TextWrapped"]
      115 GETIMPORT                        R13 K25 [Enum.AutomaticSize.Y]
      117 SETTABLEKS                       R13 R12 K15 ["AutomaticSize"]
      119 GETIMPORT                        R13 K55 [UDim2.fromOffset]
      121 GETTABLEKS                       R14 R1 K56 ["replaceAllConfirmationLabelWidth"]
      123 GETTABLEKS                       R15 R1 K22 ["widgetHeaderLineHeight"]
      125 CALL                             R13 2 1
      126 SETTABLEKS                       R13 R12 K14 ["Size"]
      128 LOADN                            R13 0
      129 SETTABLEKS                       R13 R12 K17 ["BorderSizePixel"]
      131 NEWTABLE                         R13 0 2
      133 MOVE                             R14 R3
      134 LOADK                            R15 K26 ["::UIPadding"]
      135 DUPTABLE                         R16 K58 [{"PaddingLeft"}]
      136 GETIMPORT                        R17 K31 [UDim.new]
      138 LOADN                            R18 0
      139 GETTABLEKS                       R19 R1 K32 ["paddingSmall"]
      141 CALL                             R17 2 1
      142 SETTABLEKS                       R17 R16 K57 ["PaddingLeft"]
      144 CALL                             R14 2 1
      145 MOVE                             R15 R3
      146 LOADK                            R16 K59 ["::UISizeConstraint"]
      147 DUPTABLE                         R17 K61 [{"MinSize"}]
      148 GETIMPORT                        R18 K63 [Vector2.new]
      150 GETTABLEKS                       R19 R1 K56 ["replaceAllConfirmationLabelWidth"]
      152 GETTABLEKS                       R20 R1 K22 ["widgetHeaderLineHeight"]
      154 CALL                             R18 2 1
      155 SETTABLEKS                       R18 R17 K60 ["MinSize"]
      157 CALL                             R15 2 -1
      158 SETLIST                          R13 R14 -1 [1]
      160 CALL                             R10 3 1
      161 MOVE                             R11 R3
      162 LOADK                            R12 K64 ["> .DialogButtonFrame"]
      163 DUPTABLE                         R13 K65 [{"BackgroundTransparency", "AutomaticSize", "BorderSizePixel"}]
      164 LOADN                            R14 1
      165 SETTABLEKS                       R14 R13 K16 ["BackgroundTransparency"]
      167 GETIMPORT                        R14 K67 [Enum.AutomaticSize.XY]
      169 SETTABLEKS                       R14 R13 K15 ["AutomaticSize"]
      171 LOADN                            R14 0
      172 SETTABLEKS                       R14 R13 K17 ["BorderSizePixel"]
      174 NEWTABLE                         R14 0 4
      176 MOVE                             R15 R3
      177 LOADK                            R16 K33 ["::UIListLayout"]
      178 DUPTABLE                         R17 K68 [{"ItemLineAlignment", "Padding"}]
      179 GETIMPORT                        R18 K39 [Enum.ItemLineAlignment.Center]
      181 SETTABLEKS                       R18 R17 K34 ["ItemLineAlignment"]
      183 GETIMPORT                        R18 K31 [UDim.new]
      185 LOADN                            R19 0
      186 GETTABLEKS                       R20 R1 K32 ["paddingSmall"]
      188 CALL                             R18 2 1
      189 SETTABLEKS                       R18 R17 K36 ["Padding"]
      191 CALL                             R15 2 1
      192 MOVE                             R16 R3
      193 LOADK                            R17 K69 ["> .DialogButton"]
      194 DUPTABLE                         R18 K71 [{"Size", "AutomaticSize", "Font", "TextSize"}]
      195 GETIMPORT                        R19 K55 [UDim2.fromOffset]
      197 GETTABLEKS                       R20 R1 K22 ["widgetHeaderLineHeight"]
      199 GETTABLEKS                       R21 R1 K22 ["widgetHeaderLineHeight"]
      201 CALL                             R19 2 1
      202 SETTABLEKS                       R19 R18 K14 ["Size"]
      204 GETIMPORT                        R19 K73 [Enum.AutomaticSize.X]
      206 SETTABLEKS                       R19 R18 K15 ["AutomaticSize"]
      208 GETTABLEKS                       R19 R1 K74 ["defaultFontBold"]
      210 SETTABLEKS                       R19 R18 K70 ["Font"]
      212 GETTABLEKS                       R20 R1 K52 ["confirmationDialogTextSize"]
      214 GETTABLEKS                       R21 R1 K53 ["defaultFontScale"]
      216 MUL                              R19 R20 R21
      217 SETTABLEKS                       R19 R18 K46 ["TextSize"]
      219 NEWTABLE                         R19 0 3
      221 MOVE                             R20 R3
      222 LOADK                            R21 K75 ["::UICorner"]
      223 DUPTABLE                         R22 K77 [{"CornerRadius"}]
      224 GETIMPORT                        R23 K31 [UDim.new]
      226 LOADN                            R24 0
      227 GETTABLEKS                       R25 R1 K78 ["radiusMedium"]
      229 CALL                             R23 2 1
      230 SETTABLEKS                       R23 R22 K76 ["CornerRadius"]
      232 CALL                             R20 2 1
      233 MOVE                             R21 R3
      234 LOADK                            R22 K59 ["::UISizeConstraint"]
      235 DUPTABLE                         R23 K61 [{"MinSize"}]
      236 GETIMPORT                        R24 K63 [Vector2.new]
      238 GETTABLEKS                       R25 R1 K22 ["widgetHeaderLineHeight"]
      240 GETTABLEKS                       R26 R1 K22 ["widgetHeaderLineHeight"]
      242 CALL                             R24 2 1
      243 SETTABLEKS                       R24 R23 K60 ["MinSize"]
      245 CALL                             R21 2 1
      246 MOVE                             R22 R3
      247 LOADK                            R23 K26 ["::UIPadding"]
      248 DUPTABLE                         R24 K80 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      249 GETIMPORT                        R25 K31 [UDim.new]
      251 LOADN                            R26 0
      252 GETTABLEKS                       R27 R1 K32 ["paddingSmall"]
      254 CALL                             R25 2 1
      255 SETTABLEKS                       R25 R24 K57 ["PaddingLeft"]
      257 GETIMPORT                        R25 K31 [UDim.new]
      259 LOADN                            R26 0
      260 GETTABLEKS                       R27 R1 K32 ["paddingSmall"]
      262 CALL                             R25 2 1
      263 SETTABLEKS                       R25 R24 K79 ["PaddingRight"]
      265 GETIMPORT                        R25 K31 [UDim.new]
      267 LOADN                            R26 0
      268 GETTABLEKS                       R27 R1 K32 ["paddingSmall"]
      270 CALL                             R25 2 1
      271 SETTABLEKS                       R25 R24 K27 ["PaddingTop"]
      273 GETIMPORT                        R25 K31 [UDim.new]
      275 LOADN                            R26 0
      276 GETTABLEKS                       R27 R1 K32 ["paddingSmall"]
      278 CALL                             R25 2 1
      279 SETTABLEKS                       R25 R24 K28 ["PaddingBottom"]
      281 CALL                             R22 2 -1
      282 SETLIST                          R19 R20 -1 [1]
      284 CALL                             R16 3 1
      285 MOVE                             R17 R3
      286 LOADK                            R18 K81 ["> .YesButton"]
      287 DUPTABLE                         R19 K83 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
      288 LOADK                            R20 K84 ["$ColorActionEmphasisBackground"]
      289 SETTABLEKS                       R20 R19 K82 ["BackgroundColor3"]
      291 LOADN                            R20 0
      292 SETTABLEKS                       R20 R19 K16 ["BackgroundTransparency"]
      294 LOADK                            R20 K85 ["$ColorActionEmphasisForeground"]
      295 SETTABLEKS                       R20 R19 K44 ["TextColor3"]
      297 CALL                             R17 2 1
      298 MOVE                             R18 R3
      299 LOADK                            R19 K86 ["> .NoButton"]
      300 DUPTABLE                         R20 K83 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3"}]
      301 LOADK                            R21 K87 ["$ColorActionStandardBackground"]
      302 SETTABLEKS                       R21 R20 K82 ["BackgroundColor3"]
      304 LOADK                            R21 K88 ["$ColorActionStandardBackgroundTransparency"]
      305 SETTABLEKS                       R21 R20 K16 ["BackgroundTransparency"]
      307 LOADK                            R21 K89 ["$ColorActionStandardForeground"]
      308 SETTABLEKS                       R21 R20 K44 ["TextColor3"]
      310 CALL                             R18 2 -1
      311 SETLIST                          R14 R15 -1 [1]
      313 CALL                             R11 3 -1
      314 SETLIST                          R7 R8 -1 [1]
      316 CALL                             R4 3 -1
      317 RETURN                           R4 -1
