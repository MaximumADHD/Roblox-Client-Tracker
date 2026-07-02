MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 GETTABLEKS                       R3 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R3 K10 ["createStyleSheet"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R0 K11 ["Src"]
       26 GETTABLEKS                       R5 R5 K12 ["Resources"]
       28 GETTABLEKS                       R5 R5 K13 ["StyleConstants"]
       30 CALL                             R4 1 1
       31 NEWTABLE                         R5 0 14
       33 MOVE                             R6 R2
       34 LOADK                            R7 K14 ["TextLabel, TextButton, TextBox"]
       35 DUPTABLE                         R8 K17 [{"Font", "TextSize"}]
       36 GETTABLEKS                       R9 R4 K18 ["defaultFont"]
       38 SETTABLEKS                       R9 R8 K15 ["Font"]
       40 GETTABLEKS                       R9 R4 K19 ["normalFontSize"]
       42 SETTABLEKS                       R9 R8 K16 ["TextSize"]
       44 CALL                             R6 2 1
       45 MOVE                             R7 R2
       46 LOADK                            R8 K20 ["ScrollingFrame"]
       47 DUPTABLE                         R9 K25 [{["ScrollBarThickness"] = 8, ["ScrollBarImageColor3"] = "$SecondaryButtonBackgroundColor"}]
       48 CALL                             R7 2 1
       49 MOVE                             R8 R2
       50 LOADK                            R9 K26 ["Frame"]
       51 DUPTABLE                         R10 K29 [{["BorderSizePixel"] = 0}]
       52 CALL                             R8 2 1
       53 MOVE                             R9 R2
       54 LOADK                            R10 K30 [".HeaderButton"]
       55 DUPTABLE                         R11 K38 [{["Size"], ["TextSize"], ["AutomaticSize"], ["BackgroundTransparency"] = 0, ["Wraps"] = True, ["AutoButtonColor"] = False}]
       56 GETIMPORT                        R12 K41 [UDim2.new]
       58 LOADN                            R13 0
       59 LOADN                            R14 0
       60 LOADN                            R15 0
       61 GETTABLEKS                       R17 R4 K42 ["headerFontSize"]
       63 ADDK                             R16 R17 K22 [8]
       64 CALL                             R12 4 1
       65 SETTABLEKS                       R12 R11 K31 ["Size"]
       67 GETTABLEKS                       R12 R4 K42 ["headerFontSize"]
       69 SETTABLEKS                       R12 R11 K16 ["TextSize"]
       71 GETIMPORT                        R12 K45 [Enum.AutomaticSize.X]
       73 SETTABLEKS                       R12 R11 K32 ["AutomaticSize"]
       75 NEWTABLE                         R12 0 5
       77 MOVE                             R13 R2
       78 LOADK                            R14 K46 ["::UIPadding"]
       79 DUPTABLE                         R15 K51 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       80 GETIMPORT                        R16 K53 [UDim.new]
       82 LOADN                            R17 0
       83 GETTABLEKS                       R18 R4 K54 ["buttonPaddingHorizontal"]
       85 CALL                             R16 2 1
       86 SETTABLEKS                       R16 R15 K47 ["PaddingLeft"]
       88 GETIMPORT                        R16 K53 [UDim.new]
       90 LOADN                            R17 0
       91 GETTABLEKS                       R18 R4 K54 ["buttonPaddingHorizontal"]
       93 CALL                             R16 2 1
       94 SETTABLEKS                       R16 R15 K48 ["PaddingRight"]
       96 GETIMPORT                        R16 K53 [UDim.new]
       98 LOADN                            R17 0
       99 GETTABLEKS                       R18 R4 K55 ["buttonPaddingVertical"]
      101 CALL                             R16 2 1
      102 SETTABLEKS                       R16 R15 K49 ["PaddingTop"]
      104 GETIMPORT                        R16 K53 [UDim.new]
      106 LOADN                            R17 0
      107 GETTABLEKS                       R18 R4 K55 ["buttonPaddingVertical"]
      109 CALL                             R16 2 1
      110 SETTABLEKS                       R16 R15 K50 ["PaddingBottom"]
      112 CALL                             R13 2 1
      113 MOVE                             R14 R2
      114 LOADK                            R15 K56 ["::UICorner"]
      115 DUPTABLE                         R16 K58 [{"CornerRadius"}]
      116 GETIMPORT                        R17 K53 [UDim.new]
      118 LOADN                            R18 0
      119 GETTABLEKS                       R19 R4 K59 ["buttonCornerRadius"]
      121 CALL                             R17 2 1
      122 SETTABLEKS                       R17 R16 K57 ["CornerRadius"]
      124 CALL                             R14 2 1
      125 MOVE                             R15 R2
      126 LOADK                            R16 K60 [".Primary"]
      127 DUPTABLE                         R17 K65 [{["TextColor3"] = "$ButtonTextColor", ["BackgroundColor3"] = "$PrimaryButtonBackgroundColor"}]
      128 NEWTABLE                         R18 0 1
      130 MOVE                             R19 R2
      131 LOADK                            R20 K66 [":hover"]
      132 DUPTABLE                         R21 K68 [{["BackgroundColor3"] = "$PrimaryButtonHoverBackgroundColor"}]
      133 CALL                             R19 2 -1
      134 SETLIST                          R18 R19 -1 [1]
      136 CALL                             R15 3 1
      137 MOVE                             R16 R2
      138 LOADK                            R17 K69 [".Secondary"]
      139 DUPTABLE                         R18 K70 [{["TextColor3"] = "$ButtonTextColor", ["BackgroundColor3"] = "$SecondaryButtonBackgroundColor"}]
      140 NEWTABLE                         R19 0 1
      142 MOVE                             R20 R2
      143 LOADK                            R21 K66 [":hover"]
      144 DUPTABLE                         R22 K72 [{["BackgroundColor3"] = "$SecondaryButtonHoverBackgroundColor"}]
      145 CALL                             R20 2 -1
      146 SETLIST                          R19 R20 -1 [1]
      148 CALL                             R16 3 1
      149 MOVE                             R17 R2
      150 LOADK                            R18 K73 [".Inactive"]
      151 DUPTABLE                         R19 K76 [{["TextColor3"] = "$ButtonTextColor", ["BackgroundTransparency"] = 0.4, ["TextTransparency"] = 0.4, ["BackgroundColor3"] = "$PrimaryButtonBackgroundColor"}]
      152 NEWTABLE                         R20 0 1
      154 MOVE                             R21 R2
      155 LOADK                            R22 K66 [":hover"]
      156 DUPTABLE                         R23 K77 [{["BackgroundColor3"] = "$PrimaryButtonBackgroundColor"}]
      157 CALL                             R21 2 -1
      158 SETLIST                          R20 R21 -1 [1]
      160 CALL                             R17 3 -1
      161 SETLIST                          R12 R13 -1 [1]
      163 CALL                             R9 3 1
      164 MOVE                             R10 R2
      165 LOADK                            R11 K78 [".CX-Invisible"]
      166 DUPTABLE                         R12 K80 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      167 CALL                             R10 2 1
      168 MOVE                             R11 R2
      169 LOADK                            R12 K81 [".CX-Divider"]
      170 DUPTABLE                         R13 K83 [{["Size"], ["BackgroundColor3"] = "$DividerColor", ["BorderSizePixel"] = 0}]
      171 GETIMPORT                        R14 K41 [UDim2.new]
      173 LOADN                            R15 1
      174 LOADN                            R16 0
      175 LOADN                            R17 0
      176 LOADN                            R18 1
      177 CALL                             R14 4 1
      178 SETTABLEKS                       R14 R13 K31 ["Size"]
      180 CALL                             R11 2 1
      181 MOVE                             R12 R2
      182 LOADK                            R13 K84 [".Width-Scaling"]
      183 DUPTABLE                         R14 K86 [{["BorderSizePixel"] = 0, ["Size"], ["SizeConstraint"]}]
      184 GETIMPORT                        R15 K41 [UDim2.new]
      186 LOADN                            R16 1
      187 LOADN                            R17 0
      188 LOADN                            R18 1
      189 LOADN                            R19 0
      190 CALL                             R15 4 1
      191 SETTABLEKS                       R15 R14 K31 ["Size"]
      193 GETIMPORT                        R15 K88 [Enum.SizeConstraint.RelativeXX]
      195 SETTABLEKS                       R15 R14 K85 ["SizeConstraint"]
      197 CALL                             R12 2 1
      198 MOVE                             R13 R2
      199 LOADK                            R14 K89 [">> .Widget-Button"]
      200 DUPTABLE                         R15 K90 [{["BackgroundTransparency"] = 1}]
      201 CALL                             R13 2 1
      202 MOVE                             R14 R2
      203 LOADK                            R15 K91 [".Active"]
      204 DUPTABLE                         R16 K94 [{["BackgroundColor3"] = "$ControlActiveColor", ["BackgroundTransparency"] = 0.3}]
      205 CALL                             R14 2 1
      206 MOVE                             R15 R2
      207 LOADK                            R16 K95 [".Hovered"]
      208 DUPTABLE                         R17 K97 [{["BackgroundColor3"] = "$ControlActiveColor", ["BackgroundTransparency"] = 0.6}]
      209 CALL                             R15 2 1
      210 MOVE                             R16 R2
      211 LOADK                            R17 K98 [".Hovered.Active"]
      212 DUPTABLE                         R18 K94 [{["BackgroundColor3"] = "$ControlActiveColor", ["BackgroundTransparency"] = 0.3}]
      213 CALL                             R16 2 1
      214 MOVE                             R17 R2
      215 LOADK                            R18 K99 ["#ScrollableBlueprintContainer"]
      216 DUPTABLE                         R19 K104 [{["Size"], ["BackgroundColor3"] = "$BlueprintBackgroundColor", ["ScrollBarThickness"] = 8, ["ScrollingDirection"], ["AutomaticCanvasSize"], ["CanvasSize"], ["BorderSizePixel"] = 0, ["ScrollBarImageColor3"] = "$SecondaryButtonBackgroundColor"}]
      217 GETIMPORT                        R20 K41 [UDim2.new]
      219 LOADN                            R21 1
      220 LOADN                            R22 0
      221 LOADN                            R23 1
      222 GETTABLEKS                       R25 R4 K105 ["deviceHeaderHeight"]
      224 MINUS                            R24 R25
      225 CALL                             R20 4 1
      226 SETTABLEKS                       R20 R19 K31 ["Size"]
      228 GETIMPORT                        R20 K107 [Enum.ScrollingDirection.XY]
      230 SETTABLEKS                       R20 R19 K101 ["ScrollingDirection"]
      232 GETIMPORT                        R20 K108 [Enum.AutomaticSize.XY]
      234 SETTABLEKS                       R20 R19 K102 ["AutomaticCanvasSize"]
      236 GETIMPORT                        R20 K41 [UDim2.new]
      238 LOADN                            R21 0
      239 LOADN                            R22 0
      240 LOADN                            R23 0
      241 LOADN                            R24 0
      242 CALL                             R20 4 1
      243 SETTABLEKS                       R20 R19 K103 ["CanvasSize"]
      245 NEWTABLE                         R20 0 1
      247 MOVE                             R21 R2
      248 LOADK                            R22 K109 [">> #GamepadAndVRLayoutContainer"]
      249 NEWTABLE                         R23 0 0
      251 NEWTABLE                         R24 0 1
      253 MOVE                             R25 R2
      254 LOADK                            R26 K110 ["::UIListLayout"]
      255 DUPTABLE                         R27 K114 [{"SortOrder", "HorizontalAlignment", "FillDirection"}]
      256 GETIMPORT                        R28 K116 [Enum.SortOrder.LayoutOrder]
      258 SETTABLEKS                       R28 R27 K111 ["SortOrder"]
      260 GETIMPORT                        R28 K118 [Enum.HorizontalAlignment.Center]
      262 SETTABLEKS                       R28 R27 K112 ["HorizontalAlignment"]
      264 GETIMPORT                        R28 K120 [Enum.FillDirection.Vertical]
      266 SETTABLEKS                       R28 R27 K113 ["FillDirection"]
      268 CALL                             R25 2 -1
      269 SETLIST                          R24 R25 -1 [1]
      271 CALL                             R21 3 -1
      272 SETLIST                          R20 R21 -1 [1]
      274 CALL                             R17 3 1
      275 MOVE                             R18 R2
      276 LOADK                            R19 K121 [">> .Mapping-Widget"]
      277 DUPTABLE                         R20 K122 [{["BackgroundTransparency"] = 1, ["Size"]}]
      278 GETIMPORT                        R21 K41 [UDim2.new]
      280 LOADN                            R22 1
      281 LOADN                            R23 0
      282 LOADN                            R24 1
      283 LOADN                            R25 0
      284 CALL                             R21 4 1
      285 SETTABLEKS                       R21 R20 K31 ["Size"]
      287 NEWTABLE                         R21 0 3
      289 MOVE                             R22 R2
      290 LOADK                            R23 K123 [">> .Mapping-Label"]
      291 DUPTABLE                         R24 K124 [{["Size"], ["BackgroundTransparency"] = 1}]
      292 GETIMPORT                        R25 K41 [UDim2.new]
      294 LOADK                            R26 K125 [0.04]
      295 LOADN                            R27 0
      296 LOADK                            R28 K125 [0.04]
      297 LOADN                            R29 0
      298 CALL                             R25 4 1
      299 SETTABLEKS                       R25 R24 K31 ["Size"]
      301 NEWTABLE                         R25 0 1
      303 MOVE                             R26 R2
      304 LOADK                            R27 K126 [">> TextLabel"]
      305 DUPTABLE                         R28 K129 [{["Font"], ["BackgroundTransparency"] = 1, ["TextColor3"] = "$BlueprintLabelsColor", ["TextSize"], ["TextScaled"] = True, ["HorizontalAlignment"]}]
      306 GETTABLEKS                       R29 R4 K130 ["defaultFontBold"]
      308 SETTABLEKS                       R29 R28 K15 ["Font"]
      310 GETTABLEKS                       R29 R4 K131 ["blueprintLabelFontSize"]
      312 SETTABLEKS                       R29 R28 K16 ["TextSize"]
      314 GETIMPORT                        R29 K118 [Enum.HorizontalAlignment.Center]
      316 SETTABLEKS                       R29 R28 K112 ["HorizontalAlignment"]
      318 CALL                             R26 2 -1
      319 SETLIST                          R25 R26 -1 [1]
      321 CALL                             R22 3 1
      322 MOVE                             R23 R2
      323 LOADK                            R24 K132 [">> .Component-Arrow"]
      324 DUPTABLE                         R25 K135 [{["Color3"] = "$BlueprintArrowColor"}]
      325 CALL                             R23 2 1
      326 MOVE                             R24 R2
      327 LOADK                            R25 K136 [">> .Component-Arrow-Circle"]
      328 DUPTABLE                         R26 K138 [{["Size"], ["Color3"] = "$BlueprintArrowColor", ["AnchorPoint"]}]
      329 GETIMPORT                        R27 K41 [UDim2.new]
      331 LOADK                            R28 K139 [0.02]
      332 LOADN                            R29 0
      333 LOADK                            R30 K139 [0.02]
      334 LOADN                            R31 0
      335 CALL                             R27 4 1
      336 SETTABLEKS                       R27 R26 K31 ["Size"]
      338 GETIMPORT                        R27 K141 [Vector2.new]
      340 LOADK                            R28 K142 [0.5]
      341 LOADK                            R29 K142 [0.5]
      342 CALL                             R27 2 1
      343 SETTABLEKS                       R27 R26 K137 ["AnchorPoint"]
      345 CALL                             R24 2 -1
      346 SETLIST                          R21 R22 -1 [1]
      348 CALL                             R18 3 1
      349 MOVE                             R19 R2
      350 LOADK                            R20 K143 [">> .X-Circle"]
      351 NEWTABLE                         R21 0 0
      353 NEWTABLE                         R22 0 1
      355 MOVE                             R23 R2
      356 LOADK                            R24 K56 ["::UICorner"]
      357 DUPTABLE                         R25 K58 [{"CornerRadius"}]
      358 GETIMPORT                        R26 K53 [UDim.new]
      360 LOADN                            R27 1
      361 LOADN                            R28 0
      362 CALL                             R26 2 1
      363 SETTABLEKS                       R26 R25 K57 ["CornerRadius"]
      365 CALL                             R23 2 -1
      366 SETLIST                          R22 R23 -1 [1]
      368 CALL                             R19 3 -1
      369 SETLIST                          R5 R6 -1 [1]
      371 DUPTABLE                         R6 K146 [{"BlueprintWithMappingsPadding", "TooltipPadding"}]
      372 GETIMPORT                        R7 K53 [UDim.new]
      374 LOADK                            R8 K147 [0.2]
      375 LOADN                            R9 0
      376 CALL                             R7 2 1
      377 SETTABLEKS                       R7 R6 K144 ["BlueprintWithMappingsPadding"]
      379 GETIMPORT                        R7 K53 [UDim.new]
      381 LOADN                            R8 0
      382 LOADN                            R9 10
      383 CALL                             R7 2 1
      384 SETTABLEKS                       R7 R6 K145 ["TooltipPadding"]
      386 MOVE                             R7 R3
      387 LOADK                            R8 K2 ["ControlsEmulator"]
      388 MOVE                             R9 R5
      389 MOVE                             R10 R6
      390 CALL                             R7 3 -1
      391 RETURN                           R7 -1
