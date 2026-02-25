MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagTerrainEditorMigrateFoundationFonts"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["Style"]
       25 GETTABLEKS                       R4 R3 K12 ["StyleKey"]
       27 GETTABLEKS                       R6 R2 K13 ["Util"]
       29 GETTABLEKS                       R5 R6 K14 ["StyleModifier"]
       31 GETTABLEKS                       R8 R2 K11 ["Style"]
       33 GETTABLEKS                       R7 R8 K15 ["Themes"]
       35 GETTABLEKS                       R6 R7 K16 ["FoundationDark"]
       37 MOVE                             R8 R1
       38 CALL                             R8 0 1
       39 JUMPIFNOT                        R8 ; [+4]
       40 MOVE                             R7 R6
       41 LOADN                            R8 1
       42 CALL                             R7 1 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R7
       45 LOADNIL                          R8
       46 LOADNIL                          R9
       47 MOVE                             R10 R1
       48 CALL                             R10 0 1
       49 JUMPIFNOT                        R10 ; [+12]
       50 GETTABLEKS                       R11 R7 K17 ["Typography"]
       52 GETTABLEKS                       R10 R11 K18 ["LabelSmall"]
       54 GETTABLEKS                       R8 R10 K19 ["FontSize"]
       56 GETTABLEKS                       R11 R7 K17 ["Typography"]
       58 GETTABLEKS                       R10 R11 K20 ["BodySmall"]
       60 GETTABLEKS                       R9 R10 K19 ["FontSize"]
       62 GETTABLEKS                       R10 R3 K21 ["ComponentSymbols"]
       64 NEWTABLE                         R11 0 0
       66 LOADK                            R14 K22 ["Toolbar"]
       67 NAMECALL                         R12 R10 K23 ["add"]
       69 CALL                             R12 2 0
       70 GETTABLEKS                       R12 R10 K22 ["Toolbar"]
       72 DUPTABLE                         R13 K32 [{"CellSize", "CellPadding", "IconSize", "OverflowTextSize", "OverflowThreshold", "StudioTheme", "TabBackgroundColor", "TextSize"}]
       73 GETIMPORT                        R14 K35 [UDim2.fromOffset]
       75 LOADN                            R15 84
       76 LOADN                            R16 60
       77 CALL                             R14 2 1
       78 SETTABLEKS                       R14 R13 K24 ["CellSize"]
       80 GETIMPORT                        R14 K35 [UDim2.fromOffset]
       82 LOADN                            R15 2
       83 LOADN                            R16 2
       84 CALL                             R14 2 1
       85 SETTABLEKS                       R14 R13 K25 ["CellPadding"]
       87 GETIMPORT                        R14 K35 [UDim2.fromOffset]
       89 LOADN                            R15 30
       90 LOADN                            R16 30
       91 CALL                             R14 2 1
       92 SETTABLEKS                       R14 R13 K26 ["IconSize"]
       94 LOADN                            R14 15
       95 SETTABLEKS                       R14 R13 K27 ["OverflowTextSize"]
       97 LOADN                            R14 75
       98 SETTABLEKS                       R14 R13 K28 ["OverflowThreshold"]
      100 GETTABLEKS                       R14 R4 K29 ["StudioTheme"]
      102 SETTABLEKS                       R14 R13 K29 ["StudioTheme"]
      104 GETTABLEKS                       R14 R4 K36 ["SubBackground"]
      106 SETTABLEKS                       R14 R13 K30 ["TabBackgroundColor"]
      108 LOADN                            R14 18
      109 SETTABLEKS                       R14 R13 K31 ["TextSize"]
      111 SETTABLE                         R13 R11 R12
      112 LOADK                            R14 K37 ["ToolSettings"]
      113 NAMECALL                         R12 R10 K23 ["add"]
      115 CALL                             R12 2 0
      116 GETTABLEKS                       R12 R10 K37 ["ToolSettings"]
      118 DUPTABLE                         R13 K39 [{"BackgroundColor"}]
      119 GETTABLEKS                       R14 R4 K40 ["MainBackground"]
      121 SETTABLEKS                       R14 R13 K38 ["BackgroundColor"]
      123 SETTABLE                         R13 R11 R12
      124 LOADK                            R14 K41 ["ImageRenderer"]
      125 NAMECALL                         R12 R10 K23 ["add"]
      127 CALL                             R12 2 0
      128 GETTABLEKS                       R12 R10 K41 ["ImageRenderer"]
      130 DUPTABLE                         R13 K51 [{"ClearIcon", "ExpandIcon", "IconPadding", "ImportIcon", "PreviewSize", "ToolbarTransparency", "ToolbarBackgroundColor", "ToolbarButtonBackgroundColor", "ToolbarHeight"}]
      131 LOADK                            R14 K52 ["rbxasset://textures/StudioSharedUI/preview_clear.png"]
      132 SETTABLEKS                       R14 R13 K42 ["ClearIcon"]
      134 LOADK                            R14 K53 ["rbxasset://textures/StudioSharedUI/preview_expand.png"]
      135 SETTABLEKS                       R14 R13 K43 ["ExpandIcon"]
      137 LOADN                            R14 3
      138 SETTABLEKS                       R14 R13 K44 ["IconPadding"]
      140 LOADK                            R14 K54 ["rbxasset://textures/StudioSharedUI/import@2x.png"]
      141 SETTABLEKS                       R14 R13 K45 ["ImportIcon"]
      143 GETIMPORT                        R14 K35 [UDim2.fromOffset]
      145 LOADN                            R15 100
      146 LOADN                            R16 100
      147 CALL                             R14 2 1
      148 SETTABLEKS                       R14 R13 K46 ["PreviewSize"]
      150 LOADK                            R14 K55 [0.4]
      151 SETTABLEKS                       R14 R13 K47 ["ToolbarTransparency"]
      153 GETTABLEKS                       R14 R4 K48 ["ToolbarBackgroundColor"]
      155 SETTABLEKS                       R14 R13 K48 ["ToolbarBackgroundColor"]
      157 GETTABLEKS                       R14 R4 K49 ["ToolbarButtonBackgroundColor"]
      159 SETTABLEKS                       R14 R13 K49 ["ToolbarButtonBackgroundColor"]
      161 LOADN                            R14 32
      162 SETTABLEKS                       R14 R13 K50 ["ToolbarHeight"]
      164 SETTABLE                         R13 R11 R12
      165 LOADK                            R14 K56 ["MetadataDialog"]
      166 NAMECALL                         R12 R10 K23 ["add"]
      168 CALL                             R12 2 0
      169 GETTABLEKS                       R12 R10 K56 ["MetadataDialog"]
      171 DUPTABLE                         R13 K63 [{"ImageBackgroundColor", "MetadataLineHeight", "MinSize", "Padding", "Size", "Spacing"}]
      172 GETIMPORT                        R14 K66 [Color3.new]
      174 LOADN                            R15 0
      175 LOADN                            R16 0
      176 LOADN                            R17 0
      177 CALL                             R14 3 1
      178 SETTABLEKS                       R14 R13 K57 ["ImageBackgroundColor"]
      180 LOADN                            R14 16
      181 SETTABLEKS                       R14 R13 K58 ["MetadataLineHeight"]
      183 GETIMPORT                        R14 K68 [Vector2.new]
      185 LOADN                            R15 100
      186 LOADN                            R16 100
      187 CALL                             R14 2 1
      188 SETTABLEKS                       R14 R13 K59 ["MinSize"]
      190 LOADN                            R14 4
      191 SETTABLEKS                       R14 R13 K60 ["Padding"]
      193 GETIMPORT                        R14 K68 [Vector2.new]
      195 LOADN                            R15 144
      196 LOADN                            R16 144
      197 CALL                             R14 2 1
      198 SETTABLEKS                       R14 R13 K61 ["Size"]
      200 LOADN                            R14 4
      201 SETTABLEKS                       R14 R13 K62 ["Spacing"]
      203 SETTABLE                         R13 R11 R12
      204 LOADK                            R14 K69 ["MaterialRenderer"]
      205 NAMECALL                         R12 R10 K23 ["add"]
      207 CALL                             R12 2 0
      208 GETTABLEKS                       R12 R10 K69 ["MaterialRenderer"]
      210 DUPTABLE                         R13 K78 [{"CornerRadius", "DropdownItemHeight", "DropdownPadding", "Font", "FontSize", "GridItemSize", "InitialDistance", "MaterialPreviewBackground", "PreviewSize", "SelectInputArrowSize", "Spacing"}]
      211 GETIMPORT                        R14 K80 [UDim.new]
      213 LOADN                            R15 0
      214 LOADN                            R16 4
      215 CALL                             R14 2 1
      216 SETTABLEKS                       R14 R13 K70 ["CornerRadius"]
      218 LOADN                            R14 40
      219 SETTABLEKS                       R14 R13 K71 ["DropdownItemHeight"]
      221 LOADN                            R14 10
      222 SETTABLEKS                       R14 R13 K72 ["DropdownPadding"]
      224 GETIMPORT                        R14 K83 [Enum.Font.BuilderSans]
      226 SETTABLEKS                       R14 R13 K73 ["Font"]
      228 LOADN                            R14 18
      229 SETTABLEKS                       R14 R13 K19 ["FontSize"]
      231 LOADN                            R14 48
      232 SETTABLEKS                       R14 R13 K74 ["GridItemSize"]
      234 LOADK                            R14 K84 [6.2]
      235 SETTABLEKS                       R14 R13 K75 ["InitialDistance"]
      237 GETTABLEKS                       R14 R4 K85 ["InputFieldBackground"]
      239 SETTABLEKS                       R14 R13 K76 ["MaterialPreviewBackground"]
      241 LOADN                            R14 24
      242 SETTABLEKS                       R14 R13 K46 ["PreviewSize"]
      244 LOADN                            R14 16
      245 SETTABLEKS                       R14 R13 K77 ["SelectInputArrowSize"]
      247 LOADN                            R14 6
      248 SETTABLEKS                       R14 R13 K62 ["Spacing"]
      250 SETTABLE                         R13 R11 R12
      251 LOADK                            R14 K86 ["ProgressDialog"]
      252 NAMECALL                         R12 R10 K23 ["add"]
      254 CALL                             R12 2 0
      255 GETTABLEKS                       R12 R10 K86 ["ProgressDialog"]
      257 DUPTABLE                         R13 K90 [{"DescriptionHeight", "MinContentSize", "Padding", "ProgressHeight", "Spacing"}]
      258 LOADN                            R14 20
      259 SETTABLEKS                       R14 R13 K87 ["DescriptionHeight"]
      261 GETIMPORT                        R14 K68 [Vector2.new]
      263 LOADN                            R15 64
      264 LOADN                            R16 60
      265 CALL                             R14 2 1
      266 SETTABLEKS                       R14 R13 K88 ["MinContentSize"]
      268 LOADN                            R14 5
      269 SETTABLEKS                       R14 R13 K60 ["Padding"]
      271 LOADN                            R14 20
      272 SETTABLEKS                       R14 R13 K89 ["ProgressHeight"]
      274 LOADN                            R14 5
      275 SETTABLEKS                       R14 R13 K62 ["Spacing"]
      277 SETTABLE                         R13 R11 R12
      278 LOADK                            R14 K91 ["PlaneLockRenderer"]
      279 NAMECALL                         R12 R10 K23 ["add"]
      281 CALL                             R12 2 0
      282 GETTABLEKS                       R12 R10 K91 ["PlaneLockRenderer"]
      284 DUPTABLE                         R13 K94 [{"Height", "Icon", "Spacing"}]
      285 LOADN                            R14 32
      286 SETTABLEKS                       R14 R13 K92 ["Height"]
      288 GETTABLEKS                       R14 R4 K95 ["Reset"]
      290 SETTABLEKS                       R14 R13 K93 ["Icon"]
      292 LOADN                            R14 6
      293 SETTABLEKS                       R14 R13 K62 ["Spacing"]
      295 SETTABLE                         R13 R11 R12
      296 LOADK                            R14 K96 ["UpgradeRenderer"]
      297 NAMECALL                         R12 R10 K23 ["add"]
      299 CALL                             R12 2 0
      300 GETTABLEKS                       R12 R10 K96 ["UpgradeRenderer"]
      302 DUPTABLE                         R13 K98 [{"Font", "MaxWidth", "Spacing", "TextSize"}]
      303 GETIMPORT                        R14 K100 [Enum.Font.SourceSans]
      305 SETTABLEKS                       R14 R13 K73 ["Font"]
      307 LOADN                            R14 44
      308 SETTABLEKS                       R14 R13 K97 ["MaxWidth"]
      310 LOADN                            R14 12
      311 SETTABLEKS                       R14 R13 K62 ["Spacing"]
      313 LOADN                            R14 16
      314 SETTABLEKS                       R14 R13 K31 ["TextSize"]
      316 SETTABLE                         R13 R11 R12
      317 LOADK                            R14 K101 ["Line"]
      318 NAMECALL                         R12 R10 K23 ["add"]
      320 CALL                             R12 2 0
      321 GETTABLEKS                       R12 R10 K101 ["Line"]
      323 DUPTABLE                         R13 K105 [{"Color", "TransparencyActive", "Transparency"}]
      324 GETIMPORT                        R14 K108 [BrickColor.White]
      326 CALL                             R14 0 1
      327 SETTABLEKS                       R14 R13 K102 ["Color"]
      329 LOADK                            R14 K109 [0.8]
      330 SETTABLEKS                       R14 R13 K103 ["TransparencyActive"]
      332 LOADK                            R14 K110 [0.3]
      333 SETTABLEKS                       R14 R13 K104 ["Transparency"]
      335 SETTABLE                         R13 R11 R12
      336 LOADK                            R14 K111 ["Brush"]
      337 NAMECALL                         R12 R10 K23 ["add"]
      339 CALL                             R12 2 0
      340 GETTABLEKS                       R12 R10 K111 ["Brush"]
      342 DUPTABLE                         R13 K115 [{"CenterRadiusMultiplier", "CenterTransparency", "Color", "MainTransparency"}]
      343 LOADK                            R14 K116 [0.015]
      344 SETTABLEKS                       R14 R13 K112 ["CenterRadiusMultiplier"]
      346 LOADK                            R14 K117 [0.25]
      347 SETTABLEKS                       R14 R13 K113 ["CenterTransparency"]
      349 GETIMPORT                        R14 K108 [BrickColor.White]
      351 CALL                             R14 0 1
      352 SETTABLEKS                       R14 R13 K102 ["Color"]
      354 LOADK                            R14 K118 [0.95]
      355 SETTABLEKS                       R14 R13 K114 ["MainTransparency"]
      357 SETTABLE                         R13 R11 R12
      358 GETTABLEKS                       R12 R10 K119 ["SimpleTab"]
      360 NEWTABLE                         R13 16 0
      362 LOADN                            R14 1
      363 SETTABLEKS                       R14 R13 K120 ["BorderSize"]
      365 LOADN                            R14 5
      366 SETTABLEKS                       R14 R13 K62 ["Spacing"]
      368 DUPTABLE                         R14 K125 [{"Left", "Top", "Bottom", "Right"}]
      369 LOADN                            R15 20
      370 SETTABLEKS                       R15 R14 K121 ["Left"]
      372 LOADN                            R15 4
      373 SETTABLEKS                       R15 R14 K122 ["Top"]
      375 LOADN                            R15 0
      376 SETTABLEKS                       R15 R14 K123 ["Bottom"]
      378 LOADN                            R15 20
      379 SETTABLEKS                       R15 R14 K124 ["Right"]
      381 SETTABLEKS                       R14 R13 K60 ["Padding"]
      383 LOADN                            R14 3
      384 SETTABLEKS                       R14 R13 K126 ["TopLineHeight"]
      386 GETTABLEKS                       R14 R4 K127 ["ButtonText"]
      388 SETTABLEKS                       R14 R13 K102 ["Color"]
      390 GETTABLEKS                       R14 R4 K36 ["SubBackground"]
      392 SETTABLEKS                       R14 R13 K38 ["BackgroundColor"]
      394 GETTABLEKS                       R14 R4 K36 ["SubBackground"]
      396 SETTABLEKS                       R14 R13 K128 ["BorderColor"]
      398 GETTABLEKS                       R14 R4 K129 ["DialogMainButton"]
      400 SETTABLEKS                       R14 R13 K130 ["TopLineColor"]
      402 GETTABLEKS                       R14 R4 K36 ["SubBackground"]
      404 SETTABLEKS                       R14 R13 K131 ["BottomLineColor"]
      406 MOVE                             R15 R1
      407 CALL                             R15 0 1
      408 JUMPIFNOT                        R15 ; [+3]
      409 GETIMPORT                        R14 K133 [Enum.Font.BuilderSansMedium]
      411 JUMP                             ; [+1]
      412 LOADNIL                          R14
      413 SETTABLEKS                       R14 R13 K73 ["Font"]
      415 MOVE                             R15 R1
      416 CALL                             R15 0 1
      417 JUMPIFNOT                        R15 ; [+2]
      418 MOVE                             R14 R8
      419 JUMP                             ; [+1]
      420 LOADNIL                          R14
      421 SETTABLEKS                       R14 R13 K31 ["TextSize"]
      423 GETTABLEKS                       R14 R5 K134 ["Hover"]
      425 DUPTABLE                         R15 K135 [{"Color"}]
      426 GETTABLEKS                       R16 R4 K129 ["DialogMainButton"]
      428 SETTABLEKS                       R16 R15 K102 ["Color"]
      430 SETTABLE                         R15 R13 R14
      431 GETTABLEKS                       R14 R5 K136 ["Selected"]
      433 DUPTABLE                         R15 K137 [{"BottomLineColor", "BackgroundColor", "BorderColor"}]
      434 GETTABLEKS                       R16 R4 K40 ["MainBackground"]
      436 SETTABLEKS                       R16 R15 K131 ["BottomLineColor"]
      438 GETTABLEKS                       R16 R4 K40 ["MainBackground"]
      440 SETTABLEKS                       R16 R15 K38 ["BackgroundColor"]
      442 GETTABLEKS                       R16 R4 K138 ["Border"]
      444 SETTABLEKS                       R16 R15 K128 ["BorderColor"]
      446 SETTABLE                         R15 R13 R14
      447 GETTABLEKS                       R14 R5 K139 ["Disabled"]
      449 DUPTABLE                         R15 K135 [{"Color"}]
      450 GETTABLEKS                       R16 R4 K140 ["ButtonTextDisabled"]
      452 SETTABLEKS                       R16 R15 K102 ["Color"]
      454 SETTABLE                         R15 R13 R14
      455 SETTABLE                         R13 R11 R12
      456 MOVE                             R12 R1
      457 CALL                             R12 0 1
      458 JUMPIFNOT                        R12 ; [+96]
      459 GETTABLEKS                       R12 R10 K141 ["Form"]
      461 DUPTABLE                         R13 K144 [{"ExpandablePaneHeader", "FormItem", "Spacing"}]
      462 LOADK                            R14 K145 ["SectionTitleSmall"]
      463 SETTABLEKS                       R14 R13 K142 ["ExpandablePaneHeader"]
      465 DUPTABLE                         R14 K155 [{"Spacing", "StatusIconSize", "HelpIconSize", "DepthPadding", "WithChildrenPadding", "Padding", "StatusIconError", "StatusIconWarning", "HelpIcon", "IconColor", "Arrow", "Font", "FontSize", "TextSize"}]
      466 LOADN                            R15 6
      467 SETTABLEKS                       R15 R14 K62 ["Spacing"]
      469 LOADN                            R15 20
      470 SETTABLEKS                       R15 R14 K146 ["StatusIconSize"]
      472 LOADN                            R15 16
      473 SETTABLEKS                       R15 R14 K147 ["HelpIconSize"]
      475 LOADN                            R15 10
      476 SETTABLEKS                       R15 R14 K148 ["DepthPadding"]
      478 LOADN                            R15 10
      479 SETTABLEKS                       R15 R14 K149 ["WithChildrenPadding"]
      481 LOADN                            R15 28
      482 SETTABLEKS                       R15 R14 K60 ["Padding"]
      484 LOADK                            R15 K156 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
      485 SETTABLEKS                       R15 R14 K150 ["StatusIconError"]
      487 LOADK                            R15 K157 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
      488 SETTABLEKS                       R15 R14 K151 ["StatusIconWarning"]
      490 LOADK                            R15 K158 ["rbxasset://textures/StudioSharedUI/Help.png"]
      491 SETTABLEKS                       R15 R14 K152 ["HelpIcon"]
      493 GETTABLEKS                       R15 R4 K93 ["Icon"]
      495 SETTABLEKS                       R15 R14 K153 ["IconColor"]
      497 NEWTABLE                         R15 8 0
      499 GETTABLEKS                       R16 R4 K159 ["MainText"]
      501 SETTABLEKS                       R16 R15 K102 ["Color"]
      503 LOADK                            R16 K160 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      504 SETTABLEKS                       R16 R15 K161 ["Image"]
      506 GETIMPORT                        R16 K68 [Vector2.new]
      508 LOADN                            R17 12
      509 LOADN                            R18 0
      510 CALL                             R16 2 1
      511 SETTABLEKS                       R16 R15 K162 ["ImageRectOffset"]
      513 GETIMPORT                        R16 K68 [Vector2.new]
      515 LOADN                            R17 12
      516 LOADN                            R18 12
      517 CALL                             R16 2 1
      518 SETTABLEKS                       R16 R15 K163 ["ImageRectSize"]
      520 GETIMPORT                        R16 K35 [UDim2.fromOffset]
      522 LOADN                            R17 12
      523 LOADN                            R18 12
      524 CALL                             R16 2 1
      525 SETTABLEKS                       R16 R15 K61 ["Size"]
      527 GETTABLEKS                       R16 R5 K136 ["Selected"]
      529 DUPTABLE                         R17 K164 [{"ImageRectOffset"}]
      530 GETIMPORT                        R18 K68 [Vector2.new]
      532 LOADN                            R19 24
      533 LOADN                            R20 0
      534 CALL                             R18 2 1
      535 SETTABLEKS                       R18 R17 K162 ["ImageRectOffset"]
      537 SETTABLE                         R17 R15 R16
      538 SETTABLEKS                       R15 R14 K154 ["Arrow"]
      540 GETIMPORT                        R15 K83 [Enum.Font.BuilderSans]
      542 SETTABLEKS                       R15 R14 K73 ["Font"]
      544 LOADN                            R15 18
      545 SETTABLEKS                       R15 R14 K19 ["FontSize"]
      547 SETTABLEKS                       R9 R14 K31 ["TextSize"]
      549 SETTABLEKS                       R14 R13 K143 ["FormItem"]
      551 LOADN                            R14 16
      552 SETTABLEKS                       R14 R13 K62 ["Spacing"]
      554 SETTABLE                         R13 R11 R12
      555 GETIMPORT                        R12 K80 [UDim.new]
      557 LOADN                            R13 0
      558 LOADN                            R14 6
      559 CALL                             R12 2 1
      560 LOADK                            R15 K165 ["MaterialGrid"]
      561 NAMECALL                         R13 R10 K23 ["add"]
      563 CALL                             R13 2 0
      564 GETTABLEKS                       R13 R10 K165 ["MaterialGrid"]
      566 DUPTABLE                         R14 K178 [{"BackgroundColor", "GridItemBackgroundColor", "GridItemBackgroundColorHovered", "GridItemBorderColor", "GridItemBorderColorSelected", "GridItemCornerRadius", "GridItemPadding", "GridItemSize", "GridItemLabelPadding", "ListItemHeight", "ListItemPadding", "ListItemSpacing", "MaterialPreviewStyle", "Padding", "ShimmerSizeOffset", "TextSize"}]
      567 GETTABLEKS                       R15 R4 K40 ["MainBackground"]
      569 SETTABLEKS                       R15 R14 K38 ["BackgroundColor"]
      571 GETTABLEKS                       R15 R4 K179 ["Button"]
      573 SETTABLEKS                       R15 R14 K166 ["GridItemBackgroundColor"]
      575 GETTABLEKS                       R15 R4 K180 ["ButtonHover"]
      577 SETTABLEKS                       R15 R14 K167 ["GridItemBackgroundColorHovered"]
      579 GETTABLEKS                       R15 R4 K138 ["Border"]
      581 SETTABLEKS                       R15 R14 K168 ["GridItemBorderColor"]
      583 GETTABLEKS                       R15 R4 K181 ["InputFieldBorderSelected"]
      585 SETTABLEKS                       R15 R14 K169 ["GridItemBorderColorSelected"]
      587 GETIMPORT                        R15 K80 [UDim.new]
      589 LOADN                            R16 0
      590 LOADN                            R17 6
      591 CALL                             R15 2 1
      592 SETTABLEKS                       R15 R14 K170 ["GridItemCornerRadius"]
      594 LOADN                            R15 2
      595 SETTABLEKS                       R15 R14 K171 ["GridItemPadding"]
      597 LOADN                            R15 128
      598 SETTABLEKS                       R15 R14 K74 ["GridItemSize"]
      600 DUPTABLE                         R15 K185 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
      601 SETTABLEKS                       R12 R15 K182 ["PaddingBottom"]
      603 SETTABLEKS                       R12 R15 K183 ["PaddingLeft"]
      605 SETTABLEKS                       R12 R15 K184 ["PaddingRight"]
      607 SETTABLEKS                       R15 R14 K172 ["GridItemLabelPadding"]
      609 LOADN                            R15 40
      610 SETTABLEKS                       R15 R14 K173 ["ListItemHeight"]
      612 LOADN                            R15 0
      613 SETTABLEKS                       R15 R14 K174 ["ListItemPadding"]
      615 LOADN                            R15 4
      616 SETTABLEKS                       R15 R14 K175 ["ListItemSpacing"]
      618 LOADK                            R15 K186 ["CornerBox"]
      619 SETTABLEKS                       R15 R14 K176 ["MaterialPreviewStyle"]
      621 LOADN                            R15 0
      622 SETTABLEKS                       R15 R14 K60 ["Padding"]
      624 LOADN                            R15 2
      625 SETTABLEKS                       R15 R14 K177 ["ShimmerSizeOffset"]
      627 LOADN                            R15 20
      628 SETTABLEKS                       R15 R14 K31 ["TextSize"]
      630 SETTABLE                         R14 R11 R13
      631 LOADK                            R15 K187 ["Note"]
      632 NAMECALL                         R13 R10 K23 ["add"]
      634 CALL                             R13 2 0
      635 GETTABLEKS                       R13 R10 K187 ["Note"]
      637 DUPTABLE                         R14 K193 [{"Background", "KeyBackground", "EdgePadding", "FramePadding", "TextMargin"}]
      638 GETTABLEKS                       R15 R4 K40 ["MainBackground"]
      640 SETTABLEKS                       R15 R14 K188 ["Background"]
      642 GETTABLEKS                       R15 R4 K194 ["DimmedText"]
      644 SETTABLEKS                       R15 R14 K189 ["KeyBackground"]
      646 LOADN                            R15 2
      647 SETTABLEKS                       R15 R14 K190 ["EdgePadding"]
      649 LOADN                            R15 3
      650 SETTABLEKS                       R15 R14 K191 ["FramePadding"]
      652 LOADN                            R15 2
      653 SETTABLEKS                       R15 R14 K192 ["TextMargin"]
      655 SETTABLE                         R14 R11 R13
      656 LOADK                            R15 K195 ["BrushSizeRenderer"]
      657 NAMECALL                         R13 R10 K23 ["add"]
      659 CALL                             R13 2 0
      660 GETTABLEKS                       R13 R10 K195 ["BrushSizeRenderer"]
      662 DUPTABLE                         R14 K201 [{"LabelWidth", "LockButtonWidth", "RowHeight", "Locked", "Unlocked"}]
      663 LOADN                            R15 20
      664 SETTABLEKS                       R15 R14 K196 ["LabelWidth"]
      666 LOADN                            R15 26
      667 SETTABLEKS                       R15 R14 K197 ["LockButtonWidth"]
      669 LOADN                            R15 24
      670 SETTABLEKS                       R15 R14 K198 ["RowHeight"]
      672 GETTABLEKS                       R15 R4 K199 ["Locked"]
      674 SETTABLEKS                       R15 R14 K199 ["Locked"]
      676 GETTABLEKS                       R15 R4 K200 ["Unlocked"]
      678 SETTABLEKS                       R15 R14 K200 ["Unlocked"]
      680 SETTABLE                         R14 R11 R13
      681 LOADK                            R15 K202 ["MultiSelectionRenderer"]
      682 NAMECALL                         R13 R10 K23 ["add"]
      684 CALL                             R13 2 0
      685 GETTABLEKS                       R13 R10 K202 ["MultiSelectionRenderer"]
      687 DUPTABLE                         R14 K203 [{"Spacing"}]
      688 LOADN                            R15 4
      689 SETTABLEKS                       R15 R14 K62 ["Spacing"]
      691 SETTABLE                         R14 R11 R13
      692 LOADK                            R15 K204 ["ElevationRenderer"]
      693 NAMECALL                         R13 R10 K23 ["add"]
      695 CALL                             R13 2 0
      696 GETTABLEKS                       R13 R10 K204 ["ElevationRenderer"]
      698 DUPTABLE                         R14 K218 [{"AddStyle", "ArrowSize", "ArrowStyle", "ButtonSize", "Corner", "ImageColor", "ImageColorSelected", "MaterialPreviewSize", "PreviewBorder", "RemoveStyle", "SliderAreaSize", "SliderSize", "TextBoxSize", "Spacing"}]
      699 DUPTABLE                         R15 K219 [{"Image"}]
      700 GETTABLEKS                       R16 R4 K220 ["Add"]
      702 SETTABLEKS                       R16 R15 K161 ["Image"]
      704 SETTABLEKS                       R15 R14 K205 ["AddStyle"]
      706 GETIMPORT                        R15 K35 [UDim2.fromOffset]
      708 LOADN                            R16 10
      709 LOADN                            R17 5
      710 CALL                             R15 2 1
      711 SETTABLEKS                       R15 R14 K206 ["ArrowSize"]
      713 DUPTABLE                         R15 K219 [{"Image"}]
      714 LOADK                            R16 K221 ["rbxasset://textures/TerrainEditor/trianglesmallinverted.png"]
      715 SETTABLEKS                       R16 R15 K161 ["Image"]
      717 SETTABLEKS                       R15 R14 K207 ["ArrowStyle"]
      719 GETIMPORT                        R15 K35 [UDim2.fromOffset]
      721 LOADN                            R16 16
      722 LOADN                            R17 16
      723 CALL                             R15 2 1
      724 SETTABLEKS                       R15 R14 K208 ["ButtonSize"]
      726 GETIMPORT                        R15 K80 [UDim.new]
      728 LOADN                            R16 0
      729 LOADN                            R17 4
      730 CALL                             R15 2 1
      731 SETTABLEKS                       R15 R14 K209 ["Corner"]
      733 GETTABLEKS                       R15 R4 K222 ["TextPrimary"]
      735 SETTABLEKS                       R15 R14 K210 ["ImageColor"]
      737 GETTABLEKS                       R15 R4 K129 ["DialogMainButton"]
      739 SETTABLEKS                       R15 R14 K211 ["ImageColorSelected"]
      741 GETIMPORT                        R15 K35 [UDim2.fromOffset]
      743 LOADN                            R16 20
      744 LOADN                            R17 20
      745 CALL                             R15 2 1
      746 SETTABLEKS                       R15 R14 K212 ["MaterialPreviewSize"]
      748 DUPTABLE                         R15 K224 [{"Color", "Image", "SliceCenter"}]
      749 GETTABLEKS                       R16 R4 K129 ["DialogMainButton"]
      751 SETTABLEKS                       R16 R15 K102 ["Color"]
      753 LOADK                            R16 K225 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
      754 SETTABLEKS                       R16 R15 K161 ["Image"]
      756 GETIMPORT                        R16 K227 [Rect.new]
      758 LOADN                            R17 3
      759 LOADN                            R18 3
      760 LOADN                            R19 13
      761 LOADN                            R20 13
      762 CALL                             R16 4 1
      763 SETTABLEKS                       R16 R15 K223 ["SliceCenter"]
      765 SETTABLEKS                       R15 R14 K213 ["PreviewBorder"]
      767 DUPTABLE                         R15 K219 [{"Image"}]
      768 GETTABLEKS                       R16 R4 K228 ["Remove"]
      770 SETTABLEKS                       R16 R15 K161 ["Image"]
      772 SETTABLEKS                       R15 R14 K214 ["RemoveStyle"]
      774 GETIMPORT                        R15 K35 [UDim2.fromOffset]
      776 LOADN                            R16 20
      777 LOADN                            R17 182
      778 CALL                             R15 2 1
      779 SETTABLEKS                       R15 R14 K215 ["SliderAreaSize"]
      781 GETIMPORT                        R15 K35 [UDim2.fromOffset]
      783 LOADN                            R16 20
      784 LOADN                            R17 200
      785 CALL                             R15 2 1
      786 SETTABLEKS                       R15 R14 K216 ["SliderSize"]
      788 GETIMPORT                        R15 K35 [UDim2.fromOffset]
      790 LOADN                            R16 50
      791 LOADN                            R17 20
      792 CALL                             R15 2 1
      793 SETTABLEKS                       R15 R14 K217 ["TextBoxSize"]
      795 LOADN                            R15 10
      796 SETTABLEKS                       R15 R14 K62 ["Spacing"]
      798 SETTABLE                         R14 R11 R13
      799 LOADK                            R15 K229 ["SlopeRenderer"]
      800 NAMECALL                         R13 R10 K23 ["add"]
      802 CALL                             R13 2 0
      803 GETTABLEKS                       R13 R10 K229 ["SlopeRenderer"]
      805 DUPTABLE                         R14 K231 [{"Height", "Spacing", "TextInputWidth"}]
      806 LOADN                            R15 24
      807 SETTABLEKS                       R15 R14 K92 ["Height"]
      809 LOADN                            R15 6
      810 SETTABLEKS                       R15 R14 K62 ["Spacing"]
      812 LOADN                            R15 50
      813 SETTABLEKS                       R15 R14 K230 ["TextInputWidth"]
      815 SETTABLE                         R14 R11 R13
      816 LOADK                            R15 K232 ["MaterialRangesRenderer"]
      817 NAMECALL                         R13 R10 K23 ["add"]
      819 CALL                             R13 2 0
      820 GETTABLEKS                       R13 R10 K232 ["MaterialRangesRenderer"]
      822 DUPTABLE                         R14 K236 [{"BackgroundColor", "CloseButton", "Dialog", "MinHeight", "Padding", "Reset"}]
      823 GETIMPORT                        R15 K237 [BrickColor.new]
      825 LOADN                            R16 0
      826 LOADN                            R17 0
      827 LOADN                            R18 0
      828 CALL                             R15 3 1
      829 SETTABLEKS                       R15 R14 K38 ["BackgroundColor"]
      831 DUPTABLE                         R15 K244 [{"AnchorPoint", "BackgroundTransparency", "BorderSizePixel", "Image", "ImageColor3", "Position", "Size", "ZIndex"}]
      832 GETIMPORT                        R16 K68 [Vector2.new]
      834 LOADN                            R17 1
      835 LOADN                            R18 0
      836 CALL                             R16 2 1
      837 SETTABLEKS                       R16 R15 K238 ["AnchorPoint"]
      839 LOADN                            R16 1
      840 SETTABLEKS                       R16 R15 K239 ["BackgroundTransparency"]
      842 LOADN                            R16 0
      843 SETTABLEKS                       R16 R15 K240 ["BorderSizePixel"]
      845 LOADK                            R16 K245 ["rbxasset://textures/DeveloperFramework/AssetPreview/close_button.png"]
      846 SETTABLEKS                       R16 R15 K161 ["Image"]
      848 GETIMPORT                        R16 K247 [Color3.fromRGB]
      850 LOADN                            R17 255
      851 LOADN                            R18 255
      852 LOADN                            R19 255
      853 CALL                             R16 3 1
      854 SETTABLEKS                       R16 R15 K241 ["ImageColor3"]
      856 GETIMPORT                        R16 K249 [UDim2.fromScale]
      858 LOADN                            R17 1
      859 LOADN                            R18 0
      860 CALL                             R16 2 1
      861 SETTABLEKS                       R16 R15 K242 ["Position"]
      863 GETIMPORT                        R16 K35 [UDim2.fromOffset]
      865 LOADN                            R17 28
      866 LOADN                            R18 28
      867 CALL                             R16 2 1
      868 SETTABLEKS                       R16 R15 K61 ["Size"]
      870 LOADN                            R16 2
      871 SETTABLEKS                       R16 R15 K243 ["ZIndex"]
      873 SETTABLEKS                       R15 R14 K233 ["CloseButton"]
      875 DUPTABLE                         R15 K251 [{"AnchorPoint", "BackgroundColor", "Position", "FillSize", "Size"}]
      876 GETIMPORT                        R16 K68 [Vector2.new]
      878 LOADK                            R17 K252 [0.5]
      879 LOADK                            R18 K252 [0.5]
      880 CALL                             R16 2 1
      881 SETTABLEKS                       R16 R15 K238 ["AnchorPoint"]
      883 GETTABLEKS                       R16 R4 K40 ["MainBackground"]
      885 SETTABLEKS                       R16 R15 K38 ["BackgroundColor"]
      887 GETIMPORT                        R16 K249 [UDim2.fromScale]
      889 LOADK                            R17 K252 [0.5]
      890 LOADK                            R18 K252 [0.5]
      891 CALL                             R16 2 1
      892 SETTABLEKS                       R16 R15 K242 ["Position"]
      894 GETIMPORT                        R16 K253 [UDim2.new]
      896 LOADN                            R17 0
      897 LOADN                            R18 250
      898 LOADN                            R19 1
      899 LOADN                            R20 196
      900 CALL                             R16 4 1
      901 SETTABLEKS                       R16 R15 K250 ["FillSize"]
      903 GETIMPORT                        R16 K35 [UDim2.fromOffset]
      905 LOADN                            R17 250
      906 LOADN                            R18 0
      907 CALL                             R16 2 1
      908 SETTABLEKS                       R16 R15 K61 ["Size"]
      910 SETTABLEKS                       R15 R14 K234 ["Dialog"]
      912 LOADN                            R15 127
      913 SETTABLEKS                       R15 R14 K235 ["MinHeight"]
      915 LOADN                            R15 6
      916 SETTABLEKS                       R15 R14 K60 ["Padding"]
      918 DUPTABLE                         R15 K254 [{"Icon", "Size"}]
      919 GETTABLEKS                       R16 R4 K95 ["Reset"]
      921 SETTABLEKS                       R16 R15 K93 ["Icon"]
      923 GETIMPORT                        R16 K35 [UDim2.fromOffset]
      925 LOADN                            R17 90
      926 LOADN                            R18 32
      927 CALL                             R16 2 1
      928 SETTABLEKS                       R16 R15 K61 ["Size"]
      930 SETTABLEKS                       R15 R14 K95 ["Reset"]
      932 SETTABLE                         R14 R11 R13
      933 LOADK                            R15 K255 ["TerrainTypeRenderer"]
      934 NAMECALL                         R13 R10 K23 ["add"]
      936 CALL                             R13 2 0
      937 GETTABLEKS                       R13 R10 K255 ["TerrainTypeRenderer"]
      939 DUPTABLE                         R14 K258 [{"BorderColor", "Height", "IconSize", "ItemsPerRow", "ItemMinWidth", "Spacing"}]
      940 GETTABLEKS                       R15 R4 K129 ["DialogMainButton"]
      942 SETTABLEKS                       R15 R14 K128 ["BorderColor"]
      944 LOADN                            R15 32
      945 SETTABLEKS                       R15 R14 K92 ["Height"]
      947 LOADN                            R15 24
      948 SETTABLEKS                       R15 R14 K26 ["IconSize"]
      950 LOADN                            R15 3
      951 SETTABLEKS                       R15 R14 K256 ["ItemsPerRow"]
      953 LOADN                            R15 130
      954 SETTABLEKS                       R15 R14 K257 ["ItemMinWidth"]
      956 LOADN                            R15 6
      957 SETTABLEKS                       R15 R14 K62 ["Spacing"]
      959 SETTABLE                         R14 R11 R13
      960 LOADK                            R15 K3 ["FindFirstAncestor"]
      961 NAMECALL                         R13 R10 K23 ["add"]
      963 CALL                             R13 2 0
      964 GETTABLEKS                       R13 R10 K259 ["SeedRenderer"]
      966 DUPTABLE                         R14 K94 [{"Height", "Icon", "Spacing"}]
      967 LOADN                            R15 24
      968 SETTABLEKS                       R15 R14 K92 ["Height"]
      970 GETTABLEKS                       R15 R4 K260 ["Randomize"]
      972 SETTABLEKS                       R15 R14 K93 ["Icon"]
      974 LOADN                            R15 6
      975 SETTABLEKS                       R15 R14 K62 ["Spacing"]
      977 SETTABLE                         R14 R11 R13
      978 RETURN                           R11 1
