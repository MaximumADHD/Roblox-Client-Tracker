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
       24 LOADK                            R5 K11 ["$GlobalSpace100"]
       25 SETTABLEKS                       R5 R4 K12 ["DividerWithLabelsPadding"]
       27 LOADK                            R5 K13 ["$GlobalSpace0"]
       28 SETTABLEKS                       R5 R4 K14 ["DividerWithoutLabelsPadding"]
       30 GETIMPORT                        R5 K17 [UDim2.new]
       32 LOADN                            R6 0
       33 LOADN                            R7 1
       34 LOADN                            R8 0
       35 LOADN                            R9 58
       36 CALL                             R5 4 1
       37 SETTABLEKS                       R5 R4 K18 ["LargeSeparatorWithLabels"]
       39 GETIMPORT                        R5 K17 [UDim2.new]
       41 LOADN                            R6 0
       42 LOADN                            R7 1
       43 LOADN                            R8 0
       44 LOADN                            R9 56
       45 CALL                             R5 4 1
       46 SETTABLEKS                       R5 R4 K19 ["LargeSeparatorWithoutLabels"]
       48 LOADK                            R5 K20 ["$FontSize50"]
       49 SETTABLEKS                       R5 R4 K21 ["RibbonButtonLabelTextSize"]
       51 GETIMPORT                        R5 K17 [UDim2.new]
       53 LOADN                            R6 0
       54 LOADN                            R7 60
       55 LOADN                            R8 0
       56 LOADN                            R9 14
       57 CALL                             R5 4 1
       58 SETTABLEKS                       R5 R4 K22 ["RibbonButtonTextLabelSize"]
       60 GETIMPORT                        R5 K24 [Vector2.new]
       62 LOADN                            R6 60
       63 LOADN                            R7 58
       64 CALL                             R5 2 1
       65 SETTABLEKS                       R5 R4 K25 ["RibbonButtonWithLabelsLargeMaxSize"]
       67 GETIMPORT                        R5 K24 [Vector2.new]
       69 LOADN                            R6 40
       70 LOADN                            R7 40
       71 CALL                             R5 2 1
       72 SETTABLEKS                       R5 R4 K26 ["RibbonButtonWithoutLabelsLargeMaxSize"]
       74 LOADK                            R5 K11 ["$GlobalSpace100"]
       75 SETTABLEKS                       R5 R4 K27 ["RibbonContentsWithLabelsBottomPadding"]
       77 LOADK                            R5 K11 ["$GlobalSpace100"]
       78 SETTABLEKS                       R5 R4 K28 ["RibbonContentsWithLabelsLeftPadding"]
       80 LOADK                            R5 K11 ["$GlobalSpace100"]
       81 SETTABLEKS                       R5 R4 K29 ["RibbonContentsWithLabelsRightPadding"]
       83 LOADK                            R5 K11 ["$GlobalSpace100"]
       84 SETTABLEKS                       R5 R4 K30 ["RibbonContentsWithLabelsTopPadding"]
       86 LOADK                            R5 K11 ["$GlobalSpace100"]
       87 SETTABLEKS                       R5 R4 K31 ["RibbonContentsWithoutLabelsBottomPadding"]
       89 LOADK                            R5 K13 ["$GlobalSpace0"]
       90 SETTABLEKS                       R5 R4 K32 ["RibbonContentsWithoutLabelsPadding"]
       92 LOADK                            R5 K11 ["$GlobalSpace100"]
       93 SETTABLEKS                       R5 R4 K33 ["RibbonContentsWithoutLabelsTopPadding"]
       95 GETIMPORT                        R5 K17 [UDim2.new]
       97 LOADN                            R6 1
       98 LOADN                            R7 0
       99 LOADN                            R8 0
      100 LOADN                            R9 74
      101 CALL                             R5 4 1
      102 SETTABLEKS                       R5 R4 K34 ["ScrollerWithLabelsSize"]
      104 GETIMPORT                        R5 K17 [UDim2.new]
      106 LOADN                            R6 1
      107 LOADN                            R7 0
      108 LOADN                            R8 0
      109 LOADN                            R9 56
      110 CALL                             R5 4 1
      111 SETTABLEKS                       R5 R4 K35 ["ScrollerWithoutLabelsSize"]
      113 GETIMPORT                        R5 K17 [UDim2.new]
      115 LOADN                            R6 0
      116 LOADN                            R7 4
      117 LOADN                            R8 0
      118 LOADN                            R9 40
      119 CALL                             R5 4 1
      120 SETTABLEKS                       R5 R4 K36 ["SplitButtonArrowComponentHeight"]
      122 LOADK                            R5 K11 ["$GlobalSpace100"]
      123 SETTABLEKS                       R5 R4 K37 ["PaddingLeftMedium"]
      125 LOADK                            R5 K38 ["$GlobalSpace50"]
      126 SETTABLEKS                       R5 R4 K39 ["ColumnSpacingDefault"]
      128 LOADK                            R5 K11 ["$GlobalSpace100"]
      129 SETTABLEKS                       R5 R4 K40 ["ColumnSpacingMedium"]
      131 LOADK                            R5 K20 ["$FontSize50"]
      132 SETTABLEKS                       R5 R4 K41 ["ContentTextFontSize"]
      134 LOADK                            R5 K42 ["$FontWeight400"]
      135 SETTABLEKS                       R5 R4 K43 ["ContentTextFontWeight"]
      137 LOADK                            R5 K44 ["$GlobalSpace150"]
      138 SETTABLEKS                       R5 R4 K45 ["MenuColumnSpacing"]
      140 LOADK                            R5 K11 ["$GlobalSpace100"]
      141 SETTABLEKS                       R5 R4 K46 ["MenuItemPaddingHorizontal"]
      143 LOADK                            R5 K47 ["$GlobalSpace25"]
      144 SETTABLEKS                       R5 R4 K48 ["MenuItemPaddingVertical"]
      146 LOADK                            R5 K11 ["$GlobalSpace100"]
      147 SETTABLEKS                       R5 R4 K49 ["MenuItemSpacing"]
      149 LOADK                            R5 K11 ["$GlobalSpace100"]
      150 SETTABLEKS                       R5 R4 K50 ["MenuPadding"]
      152 LOADK                            R5 K11 ["$GlobalSpace100"]
      153 SETTABLEKS                       R5 R4 K51 ["MezzaninePadding"]
      155 GETIMPORT                        R5 K24 [Vector2.new]
      157 LOADN                            R6 24
      158 LOADN                            R7 24
      159 CALL                             R5 2 1
      160 SETTABLEKS                       R5 R4 K52 ["RibbonButtonSmallMaxSize"]
      162 LOADK                            R5 K38 ["$GlobalSpace50"]
      163 SETTABLEKS                       R5 R4 K53 ["RibbonContentsWithLabelsPadding"]
      165 LOADK                            R5 K11 ["$GlobalSpace100"]
      166 SETTABLEKS                       R5 R4 K54 ["RibbonContentsWithoutLabelsLeftPadding"]
      168 LOADK                            R5 K11 ["$GlobalSpace100"]
      169 SETTABLEKS                       R5 R4 K55 ["RibbonContentsWithoutLabelsRightPadding"]
      171 LOADK                            R5 K11 ["$GlobalSpace100"]
      172 SETTABLEKS                       R5 R4 K56 ["RibbonTabsContainerSpacing"]
      174 LOADK                            R5 K38 ["$GlobalSpace50"]
      175 SETTABLEKS                       R5 R4 K57 ["RibbonTabsSpacing"]
      177 LOADK                            R5 K58 ["$GlobalSpace200"]
      178 SETTABLEKS                       R5 R4 K59 ["RibbonToggleSpacing"]
      180 LOADK                            R5 K38 ["$GlobalSpace50"]
      181 SETTABLEKS                       R5 R4 K60 ["RowSpacingDefault"]
      183 LOADK                            R5 K61 ["$GlobalRadiusXSmall"]
      184 SETTABLEKS                       R5 R4 K62 ["SelectInputCornerRadius"]
      186 LOADK                            R5 K47 ["$GlobalSpace25"]
      187 SETTABLEKS                       R5 R4 K63 ["SelectInputPaddingBottom"]
      189 LOADK                            R5 K11 ["$GlobalSpace100"]
      190 SETTABLEKS                       R5 R4 K64 ["SelectInputPaddingLeft"]
      192 LOADK                            R5 K38 ["$GlobalSpace50"]
      193 SETTABLEKS                       R5 R4 K65 ["SelectInputPaddingRight"]
      195 LOADK                            R5 K47 ["$GlobalSpace25"]
      196 SETTABLEKS                       R5 R4 K66 ["SelectInputPaddingTop"]
      198 GETIMPORT                        R5 K17 [UDim2.new]
      200 LOADN                            R6 0
      201 LOADN                            R7 1
      202 LOADN                            R8 0
      203 LOADN                            R9 24
      204 CALL                             R5 4 1
      205 SETTABLEKS                       R5 R4 K67 ["SmallSeparator"]
      207 LOADK                            R5 K61 ["$GlobalRadiusXSmall"]
      208 SETTABLEKS                       R5 R4 K68 ["SpinboxCornerRadius"]
      210 LOADK                            R5 K61 ["$GlobalRadiusXSmall"]
      211 SETTABLEKS                       R5 R4 K69 ["TabCornerRadius"]
      213 LOADK                            R5 K70 ["$FontSize25"]
      214 SETTABLEKS                       R5 R4 K71 ["TitleTextFontSize"]
      216 LOADK                            R5 K72 ["$FontWeight600"]
      217 SETTABLEKS                       R5 R4 K73 ["TitleTextFontWeight"]
      219 LOADK                            R5 K20 ["$FontSize50"]
      220 SETTABLEKS                       R5 R4 K74 ["ToggleControlFontSize"]
      222 LOADK                            R5 K38 ["$GlobalSpace50"]
      223 SETTABLEKS                       R5 R4 K75 ["TooltipContentSpacing"]
      225 GETIMPORT                        R5 K24 [Vector2.new]
      227 LOADN                            R6 150
      228 LOADK                            R7 K76 [∞]
      229 CALL                             R5 2 1
      230 SETTABLEKS                       R5 R4 K77 ["TooltipMaxSize"]
      232 LOADK                            R5 K47 ["$GlobalSpace25"]
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
      251 DUPTABLE                         R16 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      252 LOADK                            R17 K11 ["$GlobalSpace100"]
      253 SETTABLEKS                       R17 R16 K82 ["PaddingLeft"]
      255 LOADK                            R17 K11 ["$GlobalSpace100"]
      256 SETTABLEKS                       R17 R16 K83 ["PaddingRight"]
      258 LOADK                            R17 K38 ["$GlobalSpace50"]
      259 SETTABLEKS                       R17 R16 K84 ["PaddingTop"]
      261 LOADK                            R17 K38 ["$GlobalSpace50"]
      262 SETTABLEKS                       R17 R16 K85 ["PaddingBottom"]
      264 CALL                             R14 2 1
      265 MOVE                             R15 R3
      266 LOADK                            R16 K87 ["> #Content"]
      267 NEWTABLE                         R17 0 0
      269 NEWTABLE                         R18 0 1
      271 MOVE                             R19 R3
      272 LOADK                            R20 K88 [">> TextLabel"]
      273 DUPTABLE                         R21 K90 [{"TextSize"}]
      274 LOADK                            R22 K70 ["$FontSize25"]
      275 SETTABLEKS                       R22 R21 K89 ["TextSize"]
      277 CALL                             R19 2 -1
      278 SETLIST                          R18 R19 -1 [1]
      280 CALL                             R15 3 -1
      281 SETLIST                          R13 R14 -1 [1]
      283 CALL                             R10 3 -1
      284 SETLIST                          R9 R10 -1 [1]
      286 CALL                             R6 3 1
      287 MOVE                             R7 R3
      288 LOADK                            R8 K91 [".Role-TextControl"]
      289 NEWTABLE                         R9 0 0
      291 NEWTABLE                         R10 0 1
      293 MOVE                             R11 R3
      294 LOADK                            R12 K92 ["::UIListLayout"]
      295 DUPTABLE                         R13 K96 [{"FillDirection", "Padding", "SortOrder"}]
      296 GETIMPORT                        R14 K99 [Enum.FillDirection.Vertical]
      298 SETTABLEKS                       R14 R13 K93 ["FillDirection"]
      300 LOADK                            R14 K47 ["$GlobalSpace25"]
      301 SETTABLEKS                       R14 R13 K94 ["Padding"]
      303 GETIMPORT                        R14 K101 [Enum.SortOrder.LayoutOrder]
      305 SETTABLEKS                       R14 R13 K95 ["SortOrder"]
      307 CALL                             R11 2 -1
      308 SETLIST                          R10 R11 -1 [1]
      310 CALL                             R7 3 1
      311 MOVE                             R8 R3
      312 LOADK                            R9 K102 [".Component-Button"]
      313 NEWTABLE                         R10 0 0
      315 NEWTABLE                         R11 0 1
      317 MOVE                             R12 R3
      318 LOADK                            R13 K103 ["> #StateLayer"]
      319 NEWTABLE                         R14 0 0
      321 NEWTABLE                         R15 0 4
      323 MOVE                             R16 R3
      324 LOADK                            R17 K92 ["::UIListLayout"]
      325 DUPTABLE                         R18 K104 [{"Padding"}]
      326 LOADK                            R19 K38 ["$GlobalSpace50"]
      327 SETTABLEKS                       R19 R18 K94 ["Padding"]
      329 CALL                             R16 2 1
      330 MOVE                             R17 R3
      331 LOADK                            R18 K105 [".Small ::UIPadding"]
      332 DUPTABLE                         R19 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      333 LOADK                            R20 K11 ["$GlobalSpace100"]
      334 SETTABLEKS                       R20 R19 K82 ["PaddingLeft"]
      336 LOADK                            R20 K11 ["$GlobalSpace100"]
      337 SETTABLEKS                       R20 R19 K83 ["PaddingRight"]
      339 LOADK                            R20 K38 ["$GlobalSpace50"]
      340 SETTABLEKS                       R20 R19 K84 ["PaddingTop"]
      342 LOADK                            R20 K38 ["$GlobalSpace50"]
      343 SETTABLEKS                       R20 R19 K85 ["PaddingBottom"]
      345 CALL                             R17 2 1
      346 MOVE                             R18 R3
      347 LOADK                            R19 K106 [".Large ::UIPadding"]
      348 DUPTABLE                         R20 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      349 LOADK                            R21 K58 ["$GlobalSpace200"]
      350 SETTABLEKS                       R21 R20 K82 ["PaddingLeft"]
      352 LOADK                            R21 K58 ["$GlobalSpace200"]
      353 SETTABLEKS                       R21 R20 K83 ["PaddingRight"]
      355 LOADK                            R21 K44 ["$GlobalSpace150"]
      356 SETTABLEKS                       R21 R20 K84 ["PaddingTop"]
      358 LOADK                            R21 K44 ["$GlobalSpace150"]
      359 SETTABLEKS                       R21 R20 K85 ["PaddingBottom"]
      361 CALL                             R18 2 1
      362 MOVE                             R19 R3
      363 LOADK                            R20 K107 [".Medium ::UIPadding"]
      364 DUPTABLE                         R21 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      365 LOADK                            R22 K44 ["$GlobalSpace150"]
      366 SETTABLEKS                       R22 R21 K82 ["PaddingLeft"]
      368 LOADK                            R22 K44 ["$GlobalSpace150"]
      369 SETTABLEKS                       R22 R21 K83 ["PaddingRight"]
      371 LOADK                            R22 K11 ["$GlobalSpace100"]
      372 SETTABLEKS                       R22 R21 K84 ["PaddingTop"]
      374 LOADK                            R22 K11 ["$GlobalSpace100"]
      375 SETTABLEKS                       R22 R21 K85 ["PaddingBottom"]
      377 CALL                             R19 2 -1
      378 SETLIST                          R15 R16 -1 [1]
      380 CALL                             R12 3 -1
      381 SETLIST                          R11 R12 -1 [1]
      383 CALL                             R8 3 1
      384 MOVE                             R9 R3
      385 LOADK                            R10 K108 [".Component-RibbonButton"]
      386 NEWTABLE                         R11 0 0
      388 NEWTABLE                         R12 0 2
      390 MOVE                             R13 R3
      391 LOADK                            R14 K109 [".Large"]
      392 NEWTABLE                         R15 0 0
      394 NEWTABLE                         R16 0 1
      396 MOVE                             R17 R3
      397 LOADK                            R18 K110 ["> #RibbonTool"]
      398 NEWTABLE                         R19 0 0
      400 NEWTABLE                         R20 0 1
      402 MOVE                             R21 R3
      403 LOADK                            R22 K81 ["::UIPadding"]
      404 DUPTABLE                         R23 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      405 LOADK                            R24 K11 ["$GlobalSpace100"]
      406 SETTABLEKS                       R24 R23 K82 ["PaddingLeft"]
      408 LOADK                            R24 K11 ["$GlobalSpace100"]
      409 SETTABLEKS                       R24 R23 K83 ["PaddingRight"]
      411 LOADK                            R24 K11 ["$GlobalSpace100"]
      412 SETTABLEKS                       R24 R23 K84 ["PaddingTop"]
      414 LOADK                            R24 K11 ["$GlobalSpace100"]
      415 SETTABLEKS                       R24 R23 K85 ["PaddingBottom"]
      417 CALL                             R21 2 -1
      418 SETLIST                          R20 R21 -1 [1]
      420 CALL                             R17 3 -1
      421 SETLIST                          R16 R17 -1 [1]
      423 CALL                             R13 3 1
      424 MOVE                             R14 R3
      425 LOADK                            R15 K111 [".Small"]
      426 NEWTABLE                         R16 0 0
      428 NEWTABLE                         R17 0 1
      430 MOVE                             R18 R3
      431 LOADK                            R19 K110 ["> #RibbonTool"]
      432 NEWTABLE                         R20 0 0
      434 NEWTABLE                         R21 0 1
      436 MOVE                             R22 R3
      437 LOADK                            R23 K81 ["::UIPadding"]
      438 DUPTABLE                         R24 K86 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      439 LOADK                            R25 K38 ["$GlobalSpace50"]
      440 SETTABLEKS                       R25 R24 K82 ["PaddingLeft"]
      442 LOADK                            R25 K38 ["$GlobalSpace50"]
      443 SETTABLEKS                       R25 R24 K83 ["PaddingRight"]
      445 LOADK                            R25 K38 ["$GlobalSpace50"]
      446 SETTABLEKS                       R25 R24 K84 ["PaddingTop"]
      448 LOADK                            R25 K38 ["$GlobalSpace50"]
      449 SETTABLEKS                       R25 R24 K85 ["PaddingBottom"]
      451 CALL                             R22 2 -1
      452 SETLIST                          R21 R22 -1 [1]
      454 CALL                             R18 3 -1
      455 SETLIST                          R17 R18 -1 [1]
      457 CALL                             R14 3 -1
      458 SETLIST                          R12 R13 -1 [1]
      460 CALL                             R9 3 -1
      461 SETLIST                          R5 R6 -1 [1]
      463 MOVE                             R6 R2
      464 LOADK                            R7 K112 ["DensityDefault"]
      465 MOVE                             R8 R5
      466 MOVE                             R9 R4
      467 CALL                             R6 3 1
      468 RETURN                           R6 1
