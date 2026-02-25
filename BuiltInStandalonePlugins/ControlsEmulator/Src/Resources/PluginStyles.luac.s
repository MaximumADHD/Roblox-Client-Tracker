MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 GETTABLEKS                       R4 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R4 K10 ["createStyleSheet"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R7 R0 K11 ["Src"]
       26 GETTABLEKS                       R6 R7 K12 ["Resources"]
       28 GETTABLEKS                       R5 R6 K13 ["StyleConstants"]
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
       47 DUPTABLE                         R9 K23 [{"ScrollBarThickness", "ScrollBarImageColor3"}]
       48 LOADN                            R10 8
       49 SETTABLEKS                       R10 R9 K21 ["ScrollBarThickness"]
       51 LOADK                            R10 K24 ["$SecondaryButtonBackgroundColor"]
       52 SETTABLEKS                       R10 R9 K22 ["ScrollBarImageColor3"]
       54 CALL                             R7 2 1
       55 MOVE                             R8 R2
       56 LOADK                            R9 K25 ["Frame"]
       57 DUPTABLE                         R10 K27 [{"BorderSizePixel"}]
       58 LOADN                            R11 0
       59 SETTABLEKS                       R11 R10 K26 ["BorderSizePixel"]
       61 CALL                             R8 2 1
       62 MOVE                             R9 R2
       63 LOADK                            R10 K28 [".HeaderButton"]
       64 DUPTABLE                         R11 K34 [{"Size", "TextSize", "AutomaticSize", "BackgroundTransparency", "Wraps", "AutoButtonColor"}]
       65 GETIMPORT                        R12 K37 [UDim2.new]
       67 LOADN                            R13 0
       68 LOADN                            R14 0
       69 LOADN                            R15 0
       70 GETTABLEKS                       R17 R4 K39 ["headerFontSize"]
       72 ADDK                             R16 R17 K38 [8]
       73 CALL                             R12 4 1
       74 SETTABLEKS                       R12 R11 K29 ["Size"]
       76 GETTABLEKS                       R12 R4 K39 ["headerFontSize"]
       78 SETTABLEKS                       R12 R11 K16 ["TextSize"]
       80 GETIMPORT                        R12 K42 [Enum.AutomaticSize.X]
       82 SETTABLEKS                       R12 R11 K30 ["AutomaticSize"]
       84 LOADN                            R12 0
       85 SETTABLEKS                       R12 R11 K31 ["BackgroundTransparency"]
       87 LOADB                            R12 1
       88 SETTABLEKS                       R12 R11 K32 ["Wraps"]
       90 LOADB                            R12 0
       91 SETTABLEKS                       R12 R11 K33 ["AutoButtonColor"]
       93 NEWTABLE                         R12 0 5
       95 MOVE                             R13 R2
       96 LOADK                            R14 K43 ["::UIPadding"]
       97 DUPTABLE                         R15 K48 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       98 GETIMPORT                        R16 K50 [UDim.new]
      100 LOADN                            R17 0
      101 GETTABLEKS                       R18 R4 K51 ["buttonPaddingHorizontal"]
      103 CALL                             R16 2 1
      104 SETTABLEKS                       R16 R15 K44 ["PaddingLeft"]
      106 GETIMPORT                        R16 K50 [UDim.new]
      108 LOADN                            R17 0
      109 GETTABLEKS                       R18 R4 K51 ["buttonPaddingHorizontal"]
      111 CALL                             R16 2 1
      112 SETTABLEKS                       R16 R15 K45 ["PaddingRight"]
      114 GETIMPORT                        R16 K50 [UDim.new]
      116 LOADN                            R17 0
      117 GETTABLEKS                       R18 R4 K52 ["buttonPaddingVertical"]
      119 CALL                             R16 2 1
      120 SETTABLEKS                       R16 R15 K46 ["PaddingTop"]
      122 GETIMPORT                        R16 K50 [UDim.new]
      124 LOADN                            R17 0
      125 GETTABLEKS                       R18 R4 K52 ["buttonPaddingVertical"]
      127 CALL                             R16 2 1
      128 SETTABLEKS                       R16 R15 K47 ["PaddingBottom"]
      130 CALL                             R13 2 1
      131 MOVE                             R14 R2
      132 LOADK                            R15 K53 ["::UICorner"]
      133 DUPTABLE                         R16 K55 [{"CornerRadius"}]
      134 GETIMPORT                        R17 K50 [UDim.new]
      136 LOADN                            R18 0
      137 GETTABLEKS                       R19 R4 K56 ["buttonCornerRadius"]
      139 CALL                             R17 2 1
      140 SETTABLEKS                       R17 R16 K54 ["CornerRadius"]
      142 CALL                             R14 2 1
      143 MOVE                             R15 R2
      144 LOADK                            R16 K57 [".Primary"]
      145 DUPTABLE                         R17 K60 [{"TextColor3", "BackgroundColor3"}]
      146 LOADK                            R18 K61 ["$ButtonTextColor"]
      147 SETTABLEKS                       R18 R17 K58 ["TextColor3"]
      149 LOADK                            R18 K62 ["$PrimaryButtonBackgroundColor"]
      150 SETTABLEKS                       R18 R17 K59 ["BackgroundColor3"]
      152 NEWTABLE                         R18 0 1
      154 MOVE                             R19 R2
      155 LOADK                            R20 K63 [":hover"]
      156 DUPTABLE                         R21 K64 [{"BackgroundColor3"}]
      157 LOADK                            R22 K65 ["$PrimaryButtonHoverBackgroundColor"]
      158 SETTABLEKS                       R22 R21 K59 ["BackgroundColor3"]
      160 CALL                             R19 2 -1
      161 SETLIST                          R18 R19 -1 [1]
      163 CALL                             R15 3 1
      164 MOVE                             R16 R2
      165 LOADK                            R17 K66 [".Secondary"]
      166 DUPTABLE                         R18 K60 [{"TextColor3", "BackgroundColor3"}]
      167 LOADK                            R19 K61 ["$ButtonTextColor"]
      168 SETTABLEKS                       R19 R18 K58 ["TextColor3"]
      170 LOADK                            R19 K24 ["$SecondaryButtonBackgroundColor"]
      171 SETTABLEKS                       R19 R18 K59 ["BackgroundColor3"]
      173 NEWTABLE                         R19 0 1
      175 MOVE                             R20 R2
      176 LOADK                            R21 K63 [":hover"]
      177 DUPTABLE                         R22 K64 [{"BackgroundColor3"}]
      178 LOADK                            R23 K67 ["$SecondaryButtonHoverBackgroundColor"]
      179 SETTABLEKS                       R23 R22 K59 ["BackgroundColor3"]
      181 CALL                             R20 2 -1
      182 SETLIST                          R19 R20 -1 [1]
      184 CALL                             R16 3 1
      185 MOVE                             R17 R2
      186 LOADK                            R18 K68 [".Inactive"]
      187 DUPTABLE                         R19 K70 [{"TextColor3", "BackgroundTransparency", "TextTransparency", "BackgroundColor3"}]
      188 LOADK                            R20 K61 ["$ButtonTextColor"]
      189 SETTABLEKS                       R20 R19 K58 ["TextColor3"]
      191 LOADK                            R20 K71 [0.4]
      192 SETTABLEKS                       R20 R19 K31 ["BackgroundTransparency"]
      194 LOADK                            R20 K71 [0.4]
      195 SETTABLEKS                       R20 R19 K69 ["TextTransparency"]
      197 LOADK                            R20 K62 ["$PrimaryButtonBackgroundColor"]
      198 SETTABLEKS                       R20 R19 K59 ["BackgroundColor3"]
      200 NEWTABLE                         R20 0 1
      202 MOVE                             R21 R2
      203 LOADK                            R22 K63 [":hover"]
      204 DUPTABLE                         R23 K64 [{"BackgroundColor3"}]
      205 LOADK                            R24 K62 ["$PrimaryButtonBackgroundColor"]
      206 SETTABLEKS                       R24 R23 K59 ["BackgroundColor3"]
      208 CALL                             R21 2 -1
      209 SETLIST                          R20 R21 -1 [1]
      211 CALL                             R17 3 -1
      212 SETLIST                          R12 R13 -1 [1]
      214 CALL                             R9 3 1
      215 MOVE                             R10 R2
      216 LOADK                            R11 K72 [".CX-Invisible"]
      217 DUPTABLE                         R12 K73 [{"BackgroundTransparency", "BorderSizePixel"}]
      218 LOADN                            R13 1
      219 SETTABLEKS                       R13 R12 K31 ["BackgroundTransparency"]
      221 LOADN                            R13 0
      222 SETTABLEKS                       R13 R12 K26 ["BorderSizePixel"]
      224 CALL                             R10 2 1
      225 MOVE                             R11 R2
      226 LOADK                            R12 K74 [".CX-Divider"]
      227 DUPTABLE                         R13 K75 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
      228 GETIMPORT                        R14 K37 [UDim2.new]
      230 LOADN                            R15 1
      231 LOADN                            R16 0
      232 LOADN                            R17 0
      233 LOADN                            R18 1
      234 CALL                             R14 4 1
      235 SETTABLEKS                       R14 R13 K29 ["Size"]
      237 LOADK                            R14 K76 ["$DividerColor"]
      238 SETTABLEKS                       R14 R13 K59 ["BackgroundColor3"]
      240 LOADN                            R14 0
      241 SETTABLEKS                       R14 R13 K26 ["BorderSizePixel"]
      243 CALL                             R11 2 1
      244 MOVE                             R12 R2
      245 LOADK                            R13 K77 [".Width-Scaling"]
      246 DUPTABLE                         R14 K79 [{"BorderSizePixel", "Size", "SizeConstraint"}]
      247 LOADN                            R15 0
      248 SETTABLEKS                       R15 R14 K26 ["BorderSizePixel"]
      250 GETIMPORT                        R15 K37 [UDim2.new]
      252 LOADN                            R16 1
      253 LOADN                            R17 0
      254 LOADN                            R18 1
      255 LOADN                            R19 0
      256 CALL                             R15 4 1
      257 SETTABLEKS                       R15 R14 K29 ["Size"]
      259 GETIMPORT                        R15 K81 [Enum.SizeConstraint.RelativeXX]
      261 SETTABLEKS                       R15 R14 K78 ["SizeConstraint"]
      263 CALL                             R12 2 1
      264 MOVE                             R13 R2
      265 LOADK                            R14 K82 [">> .Widget-Button"]
      266 DUPTABLE                         R15 K83 [{"BackgroundTransparency"}]
      267 LOADN                            R16 1
      268 SETTABLEKS                       R16 R15 K31 ["BackgroundTransparency"]
      270 CALL                             R13 2 1
      271 MOVE                             R14 R2
      272 LOADK                            R15 K84 [".Active"]
      273 DUPTABLE                         R16 K85 [{"BackgroundColor3", "BackgroundTransparency"}]
      274 LOADK                            R17 K86 ["$ControlActiveColor"]
      275 SETTABLEKS                       R17 R16 K59 ["BackgroundColor3"]
      277 LOADK                            R17 K87 [0.3]
      278 SETTABLEKS                       R17 R16 K31 ["BackgroundTransparency"]
      280 CALL                             R14 2 1
      281 MOVE                             R15 R2
      282 LOADK                            R16 K88 [".Hovered"]
      283 DUPTABLE                         R17 K85 [{"BackgroundColor3", "BackgroundTransparency"}]
      284 LOADK                            R18 K86 ["$ControlActiveColor"]
      285 SETTABLEKS                       R18 R17 K59 ["BackgroundColor3"]
      287 LOADK                            R18 K89 [0.6]
      288 SETTABLEKS                       R18 R17 K31 ["BackgroundTransparency"]
      290 CALL                             R15 2 1
      291 MOVE                             R16 R2
      292 LOADK                            R17 K90 [".Hovered.Active"]
      293 DUPTABLE                         R18 K85 [{"BackgroundColor3", "BackgroundTransparency"}]
      294 LOADK                            R19 K86 ["$ControlActiveColor"]
      295 SETTABLEKS                       R19 R18 K59 ["BackgroundColor3"]
      297 LOADK                            R19 K87 [0.3]
      298 SETTABLEKS                       R19 R18 K31 ["BackgroundTransparency"]
      300 CALL                             R16 2 1
      301 MOVE                             R17 R2
      302 LOADK                            R18 K91 ["#ScrollableBlueprintContainer"]
      303 DUPTABLE                         R19 K95 [{"Size", "BackgroundColor3", "ScrollBarThickness", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "BorderSizePixel", "ScrollBarImageColor3"}]
      304 GETIMPORT                        R20 K37 [UDim2.new]
      306 LOADN                            R21 1
      307 LOADN                            R22 0
      308 LOADN                            R23 1
      309 GETTABLEKS                       R25 R4 K96 ["deviceHeaderHeight"]
      311 MINUS                            R24 R25
      312 CALL                             R20 4 1
      313 SETTABLEKS                       R20 R19 K29 ["Size"]
      315 LOADK                            R20 K97 ["$BlueprintBackgroundColor"]
      316 SETTABLEKS                       R20 R19 K59 ["BackgroundColor3"]
      318 LOADN                            R20 8
      319 SETTABLEKS                       R20 R19 K21 ["ScrollBarThickness"]
      321 GETIMPORT                        R20 K99 [Enum.ScrollingDirection.XY]
      323 SETTABLEKS                       R20 R19 K92 ["ScrollingDirection"]
      325 GETIMPORT                        R20 K100 [Enum.AutomaticSize.XY]
      327 SETTABLEKS                       R20 R19 K93 ["AutomaticCanvasSize"]
      329 GETIMPORT                        R20 K37 [UDim2.new]
      331 LOADN                            R21 0
      332 LOADN                            R22 0
      333 LOADN                            R23 0
      334 LOADN                            R24 0
      335 CALL                             R20 4 1
      336 SETTABLEKS                       R20 R19 K94 ["CanvasSize"]
      338 LOADN                            R20 0
      339 SETTABLEKS                       R20 R19 K26 ["BorderSizePixel"]
      341 LOADK                            R20 K24 ["$SecondaryButtonBackgroundColor"]
      342 SETTABLEKS                       R20 R19 K22 ["ScrollBarImageColor3"]
      344 NEWTABLE                         R20 0 1
      346 MOVE                             R21 R2
      347 LOADK                            R22 K101 [">> #GamepadAndVRLayoutContainer"]
      348 NEWTABLE                         R23 0 0
      350 NEWTABLE                         R24 0 1
      352 MOVE                             R25 R2
      353 LOADK                            R26 K102 ["::UIListLayout"]
      354 DUPTABLE                         R27 K106 [{"SortOrder", "HorizontalAlignment", "FillDirection"}]
      355 GETIMPORT                        R28 K108 [Enum.SortOrder.LayoutOrder]
      357 SETTABLEKS                       R28 R27 K103 ["SortOrder"]
      359 GETIMPORT                        R28 K110 [Enum.HorizontalAlignment.Center]
      361 SETTABLEKS                       R28 R27 K104 ["HorizontalAlignment"]
      363 GETIMPORT                        R28 K112 [Enum.FillDirection.Vertical]
      365 SETTABLEKS                       R28 R27 K105 ["FillDirection"]
      367 CALL                             R25 2 -1
      368 SETLIST                          R24 R25 -1 [1]
      370 CALL                             R21 3 -1
      371 SETLIST                          R20 R21 -1 [1]
      373 CALL                             R17 3 1
      374 MOVE                             R18 R2
      375 LOADK                            R19 K113 [">> .Mapping-Widget"]
      376 DUPTABLE                         R20 K114 [{"BackgroundTransparency", "Size"}]
      377 LOADN                            R21 1
      378 SETTABLEKS                       R21 R20 K31 ["BackgroundTransparency"]
      380 GETIMPORT                        R21 K37 [UDim2.new]
      382 LOADN                            R22 1
      383 LOADN                            R23 0
      384 LOADN                            R24 1
      385 LOADN                            R25 0
      386 CALL                             R21 4 1
      387 SETTABLEKS                       R21 R20 K29 ["Size"]
      389 NEWTABLE                         R21 0 3
      391 MOVE                             R22 R2
      392 LOADK                            R23 K115 [">> .Mapping-Label"]
      393 DUPTABLE                         R24 K116 [{"Size", "BackgroundTransparency"}]
      394 GETIMPORT                        R25 K37 [UDim2.new]
      396 LOADK                            R26 K117 [0.04]
      397 LOADN                            R27 0
      398 LOADK                            R28 K117 [0.04]
      399 LOADN                            R29 0
      400 CALL                             R25 4 1
      401 SETTABLEKS                       R25 R24 K29 ["Size"]
      403 LOADN                            R25 1
      404 SETTABLEKS                       R25 R24 K31 ["BackgroundTransparency"]
      406 NEWTABLE                         R25 0 1
      408 MOVE                             R26 R2
      409 LOADK                            R27 K118 [">> TextLabel"]
      410 DUPTABLE                         R28 K120 [{"Font", "BackgroundTransparency", "TextColor3", "TextSize", "TextScaled", "HorizontalAlignment"}]
      411 GETTABLEKS                       R29 R4 K121 ["defaultFontBold"]
      413 SETTABLEKS                       R29 R28 K15 ["Font"]
      415 LOADN                            R29 1
      416 SETTABLEKS                       R29 R28 K31 ["BackgroundTransparency"]
      418 LOADK                            R29 K122 ["$BlueprintLabelsColor"]
      419 SETTABLEKS                       R29 R28 K58 ["TextColor3"]
      421 GETTABLEKS                       R29 R4 K123 ["blueprintLabelFontSize"]
      423 SETTABLEKS                       R29 R28 K16 ["TextSize"]
      425 LOADB                            R29 1
      426 SETTABLEKS                       R29 R28 K119 ["TextScaled"]
      428 GETIMPORT                        R29 K110 [Enum.HorizontalAlignment.Center]
      430 SETTABLEKS                       R29 R28 K104 ["HorizontalAlignment"]
      432 CALL                             R26 2 -1
      433 SETLIST                          R25 R26 -1 [1]
      435 CALL                             R22 3 1
      436 MOVE                             R23 R2
      437 LOADK                            R24 K124 [">> .Component-Arrow"]
      438 DUPTABLE                         R25 K126 [{"Color3"}]
      439 LOADK                            R26 K127 ["$BlueprintArrowColor"]
      440 SETTABLEKS                       R26 R25 K125 ["Color3"]
      442 CALL                             R23 2 1
      443 MOVE                             R24 R2
      444 LOADK                            R25 K128 [">> .Component-Arrow-Circle"]
      445 DUPTABLE                         R26 K130 [{"Size", "Color3", "AnchorPoint"}]
      446 GETIMPORT                        R27 K37 [UDim2.new]
      448 LOADK                            R28 K131 [0.02]
      449 LOADN                            R29 0
      450 LOADK                            R30 K131 [0.02]
      451 LOADN                            R31 0
      452 CALL                             R27 4 1
      453 SETTABLEKS                       R27 R26 K29 ["Size"]
      455 LOADK                            R27 K127 ["$BlueprintArrowColor"]
      456 SETTABLEKS                       R27 R26 K125 ["Color3"]
      458 GETIMPORT                        R27 K133 [Vector2.new]
      460 LOADK                            R28 K134 [0.5]
      461 LOADK                            R29 K134 [0.5]
      462 CALL                             R27 2 1
      463 SETTABLEKS                       R27 R26 K129 ["AnchorPoint"]
      465 CALL                             R24 2 -1
      466 SETLIST                          R21 R22 -1 [1]
      468 CALL                             R18 3 1
      469 MOVE                             R19 R2
      470 LOADK                            R20 K135 [">> .X-Circle"]
      471 NEWTABLE                         R21 0 0
      473 NEWTABLE                         R22 0 1
      475 MOVE                             R23 R2
      476 LOADK                            R24 K53 ["::UICorner"]
      477 DUPTABLE                         R25 K55 [{"CornerRadius"}]
      478 GETIMPORT                        R26 K50 [UDim.new]
      480 LOADN                            R27 1
      481 LOADN                            R28 0
      482 CALL                             R26 2 1
      483 SETTABLEKS                       R26 R25 K54 ["CornerRadius"]
      485 CALL                             R23 2 -1
      486 SETLIST                          R22 R23 -1 [1]
      488 CALL                             R19 3 -1
      489 SETLIST                          R5 R6 -1 [1]
      491 DUPTABLE                         R6 K138 [{"BlueprintWithMappingsPadding", "TooltipPadding"}]
      492 GETIMPORT                        R7 K50 [UDim.new]
      494 LOADK                            R8 K139 [0.2]
      495 LOADN                            R9 0
      496 CALL                             R7 2 1
      497 SETTABLEKS                       R7 R6 K136 ["BlueprintWithMappingsPadding"]
      499 GETIMPORT                        R7 K50 [UDim.new]
      501 LOADN                            R8 0
      502 LOADN                            R9 10
      503 CALL                             R7 2 1
      504 SETTABLEKS                       R7 R6 K137 ["TooltipPadding"]
      506 MOVE                             R7 R3
      507 LOADK                            R8 K2 ["ControlsEmulator"]
      508 MOVE                             R9 R5
      509 MOVE                             R10 R6
      510 CALL                             R7 3 -1
      511 RETURN                           R7 -1
