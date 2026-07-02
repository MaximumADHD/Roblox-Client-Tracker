MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleSheet"]
       18 GETTABLEKS                       R3 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R3 K10 ["createStyleRule"]
       22 NEWTABLE                         R4 64 0
       24 LOADK                            R5 K11 ["$GlobalSpace50"]
       25 SETTABLEKS                       R5 R4 K12 ["DividerWithLabelsPadding"]
       27 LOADK                            R5 K13 ["$GlobalSpace100"]
       28 SETTABLEKS                       R5 R4 K14 ["DividerWithoutLabelsPadding"]
       30 GETIMPORT                        R5 K17 [UDim2.new]
       32 LOADN                            R6 0
       33 LOADN                            R7 1
       34 LOADN                            R8 0
       35 LOADN                            R9 50
       36 CALL                             R5 4 1
       37 SETTABLEKS                       R5 R4 K18 ["LargeSeparatorWithLabels"]
       39 GETIMPORT                        R5 K17 [UDim2.new]
       41 LOADN                            R6 0
       42 LOADN                            R7 1
       43 LOADN                            R8 0
       44 LOADN                            R9 40
       45 CALL                             R5 4 1
       46 SETTABLEKS                       R5 R4 K19 ["LargeSeparatorWithoutLabels"]
       48 LOADK                            R5 K20 ["$FontSize25"]
       49 SETTABLEKS                       R5 R4 K21 ["RibbonButtonLabelTextSize"]
       51 GETIMPORT                        R5 K17 [UDim2.new]
       53 LOADN                            R6 0
       54 LOADN                            R7 48
       55 LOADN                            R8 0
       56 LOADN                            R9 14
       57 CALL                             R5 4 1
       58 SETTABLEKS                       R5 R4 K22 ["RibbonButtonTextLabelSize"]
       60 GETIMPORT                        R5 K24 [Vector2.new]
       62 LOADN                            R6 48
       63 LOADN                            R7 50
       64 CALL                             R5 2 1
       65 SETTABLEKS                       R5 R4 K25 ["RibbonButtonWithLabelsLargeMaxSize"]
       67 GETIMPORT                        R5 K24 [Vector2.new]
       69 LOADN                            R6 32
       70 LOADN                            R7 32
       71 CALL                             R5 2 1
       72 SETTABLEKS                       R5 R4 K26 ["RibbonButtonWithoutLabelsLargeMaxSize"]
       74 LOADK                            R5 K11 ["$GlobalSpace50"]
       75 SETTABLEKS                       R5 R4 K27 ["RibbonContentsWithLabelsBottomPadding"]
       77 LOADK                            R5 K13 ["$GlobalSpace100"]
       78 SETTABLEKS                       R5 R4 K28 ["RibbonContentsWithLabelsLeftPadding"]
       80 LOADK                            R5 K29 ["$GlobalSpace25"]
       81 SETTABLEKS                       R5 R4 K30 ["RibbonContentsWithLabelsRightPadding"]
       83 LOADK                            R5 K11 ["$GlobalSpace50"]
       84 SETTABLEKS                       R5 R4 K31 ["RibbonContentsWithLabelsTopPadding"]
       86 LOADK                            R5 K11 ["$GlobalSpace50"]
       87 SETTABLEKS                       R5 R4 K32 ["RibbonContentsWithoutLabelsBottomPadding"]
       89 LOADK                            R5 K33 ["$GlobalSpace0"]
       90 SETTABLEKS                       R5 R4 K34 ["RibbonContentsWithoutLabelsPadding"]
       92 LOADK                            R5 K11 ["$GlobalSpace50"]
       93 SETTABLEKS                       R5 R4 K35 ["RibbonContentsWithoutLabelsTopPadding"]
       95 GETIMPORT                        R5 K17 [UDim2.new]
       97 LOADN                            R6 1
       98 LOADN                            R7 0
       99 LOADN                            R8 0
      100 LOADN                            R9 58
      101 CALL                             R5 4 1
      102 SETTABLEKS                       R5 R4 K36 ["ScrollerWithLabelsSize"]
      104 GETIMPORT                        R5 K17 [UDim2.new]
      106 LOADN                            R6 1
      107 LOADN                            R7 0
      108 LOADN                            R8 0
      109 LOADN                            R9 40
      110 CALL                             R5 4 1
      111 SETTABLEKS                       R5 R4 K37 ["ScrollerWithoutLabelsSize"]
      113 GETIMPORT                        R5 K17 [UDim2.new]
      115 LOADN                            R6 0
      116 LOADN                            R7 4
      117 LOADN                            R8 0
      118 LOADN                            R9 32
      119 CALL                             R5 4 1
      120 SETTABLEKS                       R5 R4 K38 ["SplitButtonArrowComponentHeight"]
      122 LOADK                            R5 K11 ["$GlobalSpace50"]
      123 SETTABLEKS                       R5 R4 K39 ["PaddingLeftMedium"]
      125 LOADK                            R5 K11 ["$GlobalSpace50"]
      126 SETTABLEKS                       R5 R4 K40 ["ColumnSpacingDefault"]
      128 LOADK                            R5 K13 ["$GlobalSpace100"]
      129 SETTABLEKS                       R5 R4 K41 ["ColumnSpacingMedium"]
      131 LOADK                            R5 K42 ["$FontSize50"]
      132 SETTABLEKS                       R5 R4 K43 ["ContentTextFontSize"]
      134 LOADK                            R5 K44 ["$FontWeight400"]
      135 SETTABLEKS                       R5 R4 K45 ["ContentTextFontWeight"]
      137 LOADK                            R5 K46 ["$GlobalSpace150"]
      138 SETTABLEKS                       R5 R4 K47 ["MenuColumnSpacing"]
      140 LOADK                            R5 K13 ["$GlobalSpace100"]
      141 SETTABLEKS                       R5 R4 K48 ["MenuItemPaddingHorizontal"]
      143 LOADK                            R5 K29 ["$GlobalSpace25"]
      144 SETTABLEKS                       R5 R4 K49 ["MenuItemPaddingVertical"]
      146 LOADK                            R5 K13 ["$GlobalSpace100"]
      147 SETTABLEKS                       R5 R4 K50 ["MenuItemSpacing"]
      149 LOADK                            R5 K13 ["$GlobalSpace100"]
      150 SETTABLEKS                       R5 R4 K51 ["MenuPadding"]
      152 LOADK                            R5 K13 ["$GlobalSpace100"]
      153 SETTABLEKS                       R5 R4 K52 ["MezzaninePadding"]
      155 GETIMPORT                        R5 K24 [Vector2.new]
      157 LOADN                            R6 24
      158 LOADN                            R7 24
      159 CALL                             R5 2 1
      160 SETTABLEKS                       R5 R4 K53 ["RibbonButtonSmallMaxSize"]
      162 LOADK                            R5 K11 ["$GlobalSpace50"]
      163 SETTABLEKS                       R5 R4 K54 ["RibbonContentsWithLabelsPadding"]
      165 LOADK                            R5 K13 ["$GlobalSpace100"]
      166 SETTABLEKS                       R5 R4 K55 ["RibbonContentsWithoutLabelsLeftPadding"]
      168 LOADK                            R5 K13 ["$GlobalSpace100"]
      169 SETTABLEKS                       R5 R4 K56 ["RibbonContentsWithoutLabelsRightPadding"]
      171 LOADK                            R5 K13 ["$GlobalSpace100"]
      172 SETTABLEKS                       R5 R4 K57 ["RibbonTabsContainerSpacing"]
      174 LOADK                            R5 K11 ["$GlobalSpace50"]
      175 SETTABLEKS                       R5 R4 K58 ["RibbonTabsSpacing"]
      177 LOADK                            R5 K59 ["$GlobalSpace200"]
      178 SETTABLEKS                       R5 R4 K60 ["RibbonToggleSpacing"]
      180 LOADK                            R5 K11 ["$GlobalSpace50"]
      181 SETTABLEKS                       R5 R4 K61 ["RowSpacingDefault"]
      183 LOADK                            R5 K62 ["$GlobalRadiusXSmall"]
      184 SETTABLEKS                       R5 R4 K63 ["SelectInputCornerRadius"]
      186 LOADK                            R5 K29 ["$GlobalSpace25"]
      187 SETTABLEKS                       R5 R4 K64 ["SelectInputPaddingBottom"]
      189 LOADK                            R5 K13 ["$GlobalSpace100"]
      190 SETTABLEKS                       R5 R4 K65 ["SelectInputPaddingLeft"]
      192 LOADK                            R5 K11 ["$GlobalSpace50"]
      193 SETTABLEKS                       R5 R4 K66 ["SelectInputPaddingRight"]
      195 LOADK                            R5 K29 ["$GlobalSpace25"]
      196 SETTABLEKS                       R5 R4 K67 ["SelectInputPaddingTop"]
      198 GETIMPORT                        R5 K17 [UDim2.new]
      200 LOADN                            R6 0
      201 LOADN                            R7 1
      202 LOADN                            R8 0
      203 LOADN                            R9 24
      204 CALL                             R5 4 1
      205 SETTABLEKS                       R5 R4 K68 ["SmallSeparator"]
      207 LOADK                            R5 K62 ["$GlobalRadiusXSmall"]
      208 SETTABLEKS                       R5 R4 K69 ["SpinboxCornerRadius"]
      210 LOADK                            R5 K62 ["$GlobalRadiusXSmall"]
      211 SETTABLEKS                       R5 R4 K70 ["TabCornerRadius"]
      213 LOADK                            R5 K20 ["$FontSize25"]
      214 SETTABLEKS                       R5 R4 K71 ["TitleTextFontSize"]
      216 LOADK                            R5 K72 ["$FontWeight600"]
      217 SETTABLEKS                       R5 R4 K73 ["TitleTextFontWeight"]
      219 LOADK                            R5 K42 ["$FontSize50"]
      220 SETTABLEKS                       R5 R4 K74 ["ToggleControlFontSize"]
      222 LOADK                            R5 K11 ["$GlobalSpace50"]
      223 SETTABLEKS                       R5 R4 K75 ["TooltipContentSpacing"]
      225 GETIMPORT                        R5 K24 [Vector2.new]
      227 LOADN                            R6 150
      228 LOADK                            R7 K76 [∞]
      229 CALL                             R5 2 1
      230 SETTABLEKS                       R5 R4 K77 ["TooltipMaxSize"]
      232 LOADK                            R5 K29 ["$GlobalSpace25"]
      233 SETTABLEKS                       R5 R4 K78 ["TooltipTextSpacing"]
      235 NEWTABLE                         R5 0 4
      237 MOVE                             R6 R3
      238 LOADK                            R7 K79 [".Role-Tooltip"]
      239 NEWTABLE                         R8 0 0
      241 NEWTABLE                         R9 0 1
      243 MOVE                             R10 R3
      244 LOADK                            R11 K80 ["> #Wrapper"]
      245 NEWTABLE                         R12 0 0
      247 NEWTABLE                         R13 0 2
      249 MOVE                             R14 R3
      250 LOADK                            R15 K81 ["::UIPadding"]
      251 DUPTABLE                         R16 K86 [{["PaddingLeft"] = "$GlobalSpace100", ["PaddingRight"] = "$GlobalSpace100", ["PaddingTop"] = "$GlobalSpace50", ["PaddingBottom"] = "$GlobalSpace50"}]
      252 CALL                             R14 2 1
      253 MOVE                             R15 R3
      254 LOADK                            R16 K87 ["> #Content"]
      255 NEWTABLE                         R17 0 0
      257 NEWTABLE                         R18 0 1
      259 MOVE                             R19 R3
      260 LOADK                            R20 K88 [">> TextLabel"]
      261 DUPTABLE                         R21 K90 [{["TextSize"] = "$FontSize25"}]
      262 CALL                             R19 2 -1
      263 SETLIST                          R18 R19 -1 [1]
      265 CALL                             R15 3 -1
      266 SETLIST                          R13 R14 -1 [1]
      268 CALL                             R10 3 -1
      269 SETLIST                          R9 R10 -1 [1]
      271 CALL                             R6 3 1
      272 MOVE                             R7 R3
      273 LOADK                            R8 K91 [".Role-TextControl"]
      274 NEWTABLE                         R9 0 0
      276 NEWTABLE                         R10 0 1
      278 MOVE                             R11 R3
      279 LOADK                            R12 K92 ["::UIListLayout"]
      280 DUPTABLE                         R13 K96 [{["FillDirection"], ["Padding"] = "$GlobalSpace25", ["SortOrder"]}]
      281 GETIMPORT                        R14 K99 [Enum.FillDirection.Vertical]
      283 SETTABLEKS                       R14 R13 K93 ["FillDirection"]
      285 GETIMPORT                        R14 K101 [Enum.SortOrder.LayoutOrder]
      287 SETTABLEKS                       R14 R13 K95 ["SortOrder"]
      289 CALL                             R11 2 -1
      290 SETLIST                          R10 R11 -1 [1]
      292 CALL                             R7 3 1
      293 MOVE                             R8 R3
      294 LOADK                            R9 K102 [".Component-Button"]
      295 NEWTABLE                         R10 0 0
      297 NEWTABLE                         R11 0 1
      299 MOVE                             R12 R3
      300 LOADK                            R13 K103 ["> #StateLayer"]
      301 NEWTABLE                         R14 0 0
      303 NEWTABLE                         R15 0 4
      305 MOVE                             R16 R3
      306 LOADK                            R17 K92 ["::UIListLayout"]
      307 DUPTABLE                         R18 K104 [{["Padding"] = "$GlobalSpace50"}]
      308 CALL                             R16 2 1
      309 MOVE                             R17 R3
      310 LOADK                            R18 K105 [".Small ::UIPadding"]
      311 DUPTABLE                         R19 K86 [{["PaddingLeft"] = "$GlobalSpace100", ["PaddingRight"] = "$GlobalSpace100", ["PaddingTop"] = "$GlobalSpace50", ["PaddingBottom"] = "$GlobalSpace50"}]
      312 CALL                             R17 2 1
      313 MOVE                             R18 R3
      314 LOADK                            R19 K106 [".Large ::UIPadding"]
      315 DUPTABLE                         R20 K107 [{["PaddingLeft"] = "$GlobalSpace200", ["PaddingRight"] = "$GlobalSpace200", ["PaddingTop"] = "$GlobalSpace150", ["PaddingBottom"] = "$GlobalSpace150"}]
      316 CALL                             R18 2 1
      317 MOVE                             R19 R3
      318 LOADK                            R20 K108 [".Medium ::UIPadding"]
      319 DUPTABLE                         R21 K109 [{["PaddingLeft"] = "$GlobalSpace150", ["PaddingRight"] = "$GlobalSpace150", ["PaddingTop"] = "$GlobalSpace100", ["PaddingBottom"] = "$GlobalSpace100"}]
      320 CALL                             R19 2 -1
      321 SETLIST                          R15 R16 -1 [1]
      323 CALL                             R12 3 -1
      324 SETLIST                          R11 R12 -1 [1]
      326 CALL                             R8 3 1
      327 MOVE                             R9 R3
      328 LOADK                            R10 K110 [".Component-RibbonButton"]
      329 NEWTABLE                         R11 0 0
      331 NEWTABLE                         R12 0 2
      333 MOVE                             R13 R3
      334 LOADK                            R14 K111 [".Large"]
      335 NEWTABLE                         R15 0 0
      337 NEWTABLE                         R16 0 1
      339 MOVE                             R17 R3
      340 LOADK                            R18 K112 ["> #RibbonTool"]
      341 NEWTABLE                         R19 0 0
      343 NEWTABLE                         R20 0 1
      345 MOVE                             R21 R3
      346 LOADK                            R22 K81 ["::UIPadding"]
      347 DUPTABLE                         R23 K113 [{["PaddingLeft"] = "$GlobalSpace50", ["PaddingRight"] = "$GlobalSpace50", ["PaddingTop"] = "$GlobalSpace50", ["PaddingBottom"] = "$GlobalSpace50"}]
      348 CALL                             R21 2 -1
      349 SETLIST                          R20 R21 -1 [1]
      351 CALL                             R17 3 -1
      352 SETLIST                          R16 R17 -1 [1]
      354 CALL                             R13 3 1
      355 MOVE                             R14 R3
      356 LOADK                            R15 K114 [".Small"]
      357 NEWTABLE                         R16 0 0
      359 NEWTABLE                         R17 0 1
      361 MOVE                             R18 R3
      362 LOADK                            R19 K112 ["> #RibbonTool"]
      363 NEWTABLE                         R20 0 0
      365 NEWTABLE                         R21 0 1
      367 MOVE                             R22 R3
      368 LOADK                            R23 K81 ["::UIPadding"]
      369 DUPTABLE                         R24 K113 [{["PaddingLeft"] = "$GlobalSpace50", ["PaddingRight"] = "$GlobalSpace50", ["PaddingTop"] = "$GlobalSpace50", ["PaddingBottom"] = "$GlobalSpace50"}]
      370 CALL                             R22 2 -1
      371 SETLIST                          R21 R22 -1 [1]
      373 CALL                             R18 3 -1
      374 SETLIST                          R17 R18 -1 [1]
      376 CALL                             R14 3 -1
      377 SETLIST                          R12 R13 -1 [1]
      379 CALL                             R9 3 -1
      380 SETLIST                          R5 R6 -1 [1]
      382 MOVE                             R6 R2
      383 LOADK                            R7 K115 ["DensityCompact"]
      384 MOVE                             R8 R5
      385 MOVE                             R9 R4
      386 CALL                             R6 3 1
      387 RETURN                           R6 1
