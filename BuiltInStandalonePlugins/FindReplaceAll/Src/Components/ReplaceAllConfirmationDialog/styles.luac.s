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
       29 DUPTABLE                         R6 K20 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       30 GETIMPORT                        R7 K23 [UDim2.new]
       32 LOADN                            R8 1
       33 LOADN                            R9 0
       34 LOADN                            R10 0
       35 GETTABLEKS                       R11 R1 K24 ["widgetHeaderLineHeight"]
       37 CALL                             R7 4 1
       38 SETTABLEKS                       R7 R6 K14 ["Size"]
       40 GETIMPORT                        R7 K27 [Enum.AutomaticSize.Y]
       42 SETTABLEKS                       R7 R6 K15 ["AutomaticSize"]
       44 NEWTABLE                         R7 0 4
       46 MOVE                             R8 R3
       47 LOADK                            R9 K28 ["::UIPadding"]
       48 DUPTABLE                         R10 K31 [{"PaddingTop", "PaddingBottom"}]
       49 GETIMPORT                        R11 K33 [UDim.new]
       51 LOADN                            R12 0
       52 GETTABLEKS                       R13 R1 K34 ["paddingSmall"]
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K29 ["PaddingTop"]
       57 GETIMPORT                        R11 K33 [UDim.new]
       59 LOADN                            R12 0
       60 GETTABLEKS                       R13 R1 K34 ["paddingSmall"]
       62 CALL                             R11 2 1
       63 SETTABLEKS                       R11 R10 K30 ["PaddingBottom"]
       65 CALL                             R8 2 1
       66 MOVE                             R9 R3
       67 LOADK                            R10 K35 ["::UIListLayout"]
       68 DUPTABLE                         R11 K39 [{"ItemLineAlignment", "HorizontalFlex", "Padding"}]
       69 GETIMPORT                        R12 K41 [Enum.ItemLineAlignment.Center]
       71 SETTABLEKS                       R12 R11 K36 ["ItemLineAlignment"]
       73 GETIMPORT                        R12 K44 [Enum.UIFlexAlignment.Fill]
       75 SETTABLEKS                       R12 R11 K37 ["HorizontalFlex"]
       77 GETIMPORT                        R12 K33 [UDim.new]
       79 LOADN                            R13 0
       80 GETTABLEKS                       R14 R1 K34 ["paddingSmall"]
       82 CALL                             R12 2 1
       83 SETTABLEKS                       R12 R11 K38 ["Padding"]
       85 CALL                             R9 2 1
       86 MOVE                             R10 R3
       87 LOADK                            R11 K45 ["> .ReplaceAllDialogText"]
       88 DUPTABLE                         R12 K52 [{["BackgroundTransparency"] = 1, ["TextColor3"] = "$ColorContentDefault", ["TextXAlignment"], ["TextSize"], ["TextWrapped"] = True, ["AutomaticSize"], ["Size"], ["BorderSizePixel"] = 0}]
       89 GETIMPORT                        R13 K54 [Enum.TextXAlignment.Left]
       91 SETTABLEKS                       R13 R12 K48 ["TextXAlignment"]
       93 GETTABLEKS                       R14 R1 K55 ["confirmationDialogTextSize"]
       95 GETTABLEKS                       R15 R1 K56 ["defaultFontScale"]
       97 MUL                              R13 R14 R15
       98 SETTABLEKS                       R13 R12 K49 ["TextSize"]
      100 GETIMPORT                        R13 K27 [Enum.AutomaticSize.Y]
      102 SETTABLEKS                       R13 R12 K15 ["AutomaticSize"]
      104 GETIMPORT                        R13 K58 [UDim2.fromOffset]
      106 GETTABLEKS                       R14 R1 K59 ["replaceAllConfirmationLabelWidth"]
      108 GETTABLEKS                       R15 R1 K24 ["widgetHeaderLineHeight"]
      110 CALL                             R13 2 1
      111 SETTABLEKS                       R13 R12 K14 ["Size"]
      113 NEWTABLE                         R13 0 2
      115 MOVE                             R14 R3
      116 LOADK                            R15 K28 ["::UIPadding"]
      117 DUPTABLE                         R16 K61 [{"PaddingLeft"}]
      118 GETIMPORT                        R17 K33 [UDim.new]
      120 LOADN                            R18 0
      121 GETTABLEKS                       R19 R1 K34 ["paddingSmall"]
      123 CALL                             R17 2 1
      124 SETTABLEKS                       R17 R16 K60 ["PaddingLeft"]
      126 CALL                             R14 2 1
      127 MOVE                             R15 R3
      128 LOADK                            R16 K62 ["::UISizeConstraint"]
      129 DUPTABLE                         R17 K64 [{"MinSize"}]
      130 GETIMPORT                        R18 K66 [Vector2.new]
      132 GETTABLEKS                       R19 R1 K59 ["replaceAllConfirmationLabelWidth"]
      134 GETTABLEKS                       R20 R1 K24 ["widgetHeaderLineHeight"]
      136 CALL                             R18 2 1
      137 SETTABLEKS                       R18 R17 K63 ["MinSize"]
      139 CALL                             R15 2 -1
      140 SETLIST                          R13 R14 -1 [1]
      142 CALL                             R10 3 1
      143 MOVE                             R11 R3
      144 LOADK                            R12 K67 ["> .DialogButtonFrame"]
      145 DUPTABLE                         R13 K68 [{["BackgroundTransparency"] = 1, ["AutomaticSize"], ["BorderSizePixel"] = 0}]
      146 GETIMPORT                        R14 K70 [Enum.AutomaticSize.XY]
      148 SETTABLEKS                       R14 R13 K15 ["AutomaticSize"]
      150 NEWTABLE                         R14 0 4
      152 MOVE                             R15 R3
      153 LOADK                            R16 K35 ["::UIListLayout"]
      154 DUPTABLE                         R17 K71 [{"ItemLineAlignment", "Padding"}]
      155 GETIMPORT                        R18 K41 [Enum.ItemLineAlignment.Center]
      157 SETTABLEKS                       R18 R17 K36 ["ItemLineAlignment"]
      159 GETIMPORT                        R18 K33 [UDim.new]
      161 LOADN                            R19 0
      162 GETTABLEKS                       R20 R1 K34 ["paddingSmall"]
      164 CALL                             R18 2 1
      165 SETTABLEKS                       R18 R17 K38 ["Padding"]
      167 CALL                             R15 2 1
      168 MOVE                             R16 R3
      169 LOADK                            R17 K72 ["> .DialogButton"]
      170 DUPTABLE                         R18 K74 [{"Size", "AutomaticSize", "Font", "TextSize"}]
      171 GETIMPORT                        R19 K58 [UDim2.fromOffset]
      173 GETTABLEKS                       R20 R1 K24 ["widgetHeaderLineHeight"]
      175 GETTABLEKS                       R21 R1 K24 ["widgetHeaderLineHeight"]
      177 CALL                             R19 2 1
      178 SETTABLEKS                       R19 R18 K14 ["Size"]
      180 GETIMPORT                        R19 K76 [Enum.AutomaticSize.X]
      182 SETTABLEKS                       R19 R18 K15 ["AutomaticSize"]
      184 GETTABLEKS                       R19 R1 K77 ["defaultFontBold"]
      186 SETTABLEKS                       R19 R18 K73 ["Font"]
      188 GETTABLEKS                       R20 R1 K55 ["confirmationDialogTextSize"]
      190 GETTABLEKS                       R21 R1 K56 ["defaultFontScale"]
      192 MUL                              R19 R20 R21
      193 SETTABLEKS                       R19 R18 K49 ["TextSize"]
      195 NEWTABLE                         R19 0 3
      197 MOVE                             R20 R3
      198 LOADK                            R21 K78 ["::UICorner"]
      199 DUPTABLE                         R22 K80 [{"CornerRadius"}]
      200 GETIMPORT                        R23 K33 [UDim.new]
      202 LOADN                            R24 0
      203 GETTABLEKS                       R25 R1 K81 ["radiusMedium"]
      205 CALL                             R23 2 1
      206 SETTABLEKS                       R23 R22 K79 ["CornerRadius"]
      208 CALL                             R20 2 1
      209 MOVE                             R21 R3
      210 LOADK                            R22 K62 ["::UISizeConstraint"]
      211 DUPTABLE                         R23 K64 [{"MinSize"}]
      212 GETIMPORT                        R24 K66 [Vector2.new]
      214 GETTABLEKS                       R25 R1 K24 ["widgetHeaderLineHeight"]
      216 GETTABLEKS                       R26 R1 K24 ["widgetHeaderLineHeight"]
      218 CALL                             R24 2 1
      219 SETTABLEKS                       R24 R23 K63 ["MinSize"]
      221 CALL                             R21 2 1
      222 MOVE                             R22 R3
      223 LOADK                            R23 K28 ["::UIPadding"]
      224 DUPTABLE                         R24 K83 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      225 GETIMPORT                        R25 K33 [UDim.new]
      227 LOADN                            R26 0
      228 GETTABLEKS                       R27 R1 K34 ["paddingSmall"]
      230 CALL                             R25 2 1
      231 SETTABLEKS                       R25 R24 K60 ["PaddingLeft"]
      233 GETIMPORT                        R25 K33 [UDim.new]
      235 LOADN                            R26 0
      236 GETTABLEKS                       R27 R1 K34 ["paddingSmall"]
      238 CALL                             R25 2 1
      239 SETTABLEKS                       R25 R24 K82 ["PaddingRight"]
      241 GETIMPORT                        R25 K33 [UDim.new]
      243 LOADN                            R26 0
      244 GETTABLEKS                       R27 R1 K34 ["paddingSmall"]
      246 CALL                             R25 2 1
      247 SETTABLEKS                       R25 R24 K29 ["PaddingTop"]
      249 GETIMPORT                        R25 K33 [UDim.new]
      251 LOADN                            R26 0
      252 GETTABLEKS                       R27 R1 K34 ["paddingSmall"]
      254 CALL                             R25 2 1
      255 SETTABLEKS                       R25 R24 K30 ["PaddingBottom"]
      257 CALL                             R22 2 -1
      258 SETLIST                          R19 R20 -1 [1]
      260 CALL                             R16 3 1
      261 MOVE                             R17 R3
      262 LOADK                            R18 K84 ["> .YesButton"]
      263 DUPTABLE                         R19 K88 [{["BackgroundColor3"] = "$ColorActionEmphasisBackground", ["BackgroundTransparency"] = 0, ["TextColor3"] = "$ColorActionEmphasisForeground"}]
      264 CALL                             R17 2 1
      265 MOVE                             R18 R3
      266 LOADK                            R19 K89 ["> .NoButton"]
      267 DUPTABLE                         R20 K93 [{["BackgroundColor3"] = "$ColorActionStandardBackground", ["BackgroundTransparency"] = "$ColorActionStandardBackgroundTransparency", ["TextColor3"] = "$ColorActionStandardForeground"}]
      268 CALL                             R18 2 -1
      269 SETLIST                          R14 R15 -1 [1]
      271 CALL                             R11 3 -1
      272 SETLIST                          R7 R8 -1 [1]
      274 CALL                             R4 3 -1
      275 RETURN                           R4 -1
