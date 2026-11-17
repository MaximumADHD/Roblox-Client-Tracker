MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagTerrainEditorMigrateFoundationFonts"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["Style"]
       25 GETTABLEKS                       R4 R3 K12 ["StyleKey"]
       27 GETTABLEKS                       R5 R2 K13 ["Util"]
       29 GETTABLEKS                       R5 R5 K14 ["StyleModifier"]
       31 GETTABLEKS                       R6 R2 K11 ["Style"]
       33 GETTABLEKS                       R6 R6 K15 ["Themes"]
       35 GETTABLEKS                       R6 R6 K16 ["FoundationDark"]
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
       50 GETTABLEKS                       R10 R7 K17 ["Typography"]
       52 GETTABLEKS                       R10 R10 K18 ["LabelSmall"]
       54 GETTABLEKS                       R8 R10 K19 ["FontSize"]
       56 GETTABLEKS                       R10 R7 K17 ["Typography"]
       58 GETTABLEKS                       R10 R10 K20 ["BodySmall"]
       60 GETTABLEKS                       R9 R10 K19 ["FontSize"]
       62 GETTABLEKS                       R10 R3 K21 ["ComponentSymbols"]
       64 NEWTABLE                         R11 0 0
       66 LOADK                            R14 K22 ["Toolbar"]
       67 NAMECALL                         R12 R10 K23 ["add"]
       69 CALL                             R12 2 0
       70 GETTABLEKS                       R12 R10 K22 ["Toolbar"]
       72 DUPTABLE                         R13 K35 [{["CellSize"], ["CellPadding"], ["IconSize"], ["OverflowTextSize"] = 15, ["OverflowThreshold"] = 75, ["StudioTheme"], ["TabBackgroundColor"], ["TextSize"] = 18}]
       73 GETIMPORT                        R14 K38 [UDim2.fromOffset]
       75 LOADN                            R15 84
       76 LOADN                            R16 60
       77 CALL                             R14 2 1
       78 SETTABLEKS                       R14 R13 K24 ["CellSize"]
       80 GETIMPORT                        R14 K38 [UDim2.fromOffset]
       82 LOADN                            R15 2
       83 LOADN                            R16 2
       84 CALL                             R14 2 1
       85 SETTABLEKS                       R14 R13 K25 ["CellPadding"]
       87 GETIMPORT                        R14 K38 [UDim2.fromOffset]
       89 LOADN                            R15 30
       90 LOADN                            R16 30
       91 CALL                             R14 2 1
       92 SETTABLEKS                       R14 R13 K26 ["IconSize"]
       94 GETTABLEKS                       R14 R4 K31 ["StudioTheme"]
       96 SETTABLEKS                       R14 R13 K31 ["StudioTheme"]
       98 GETTABLEKS                       R14 R4 K39 ["SubBackground"]
      100 SETTABLEKS                       R14 R13 K32 ["TabBackgroundColor"]
      102 SETTABLE                         R13 R11 R12
      103 LOADK                            R14 K40 ["ToolSettings"]
      104 NAMECALL                         R12 R10 K23 ["add"]
      106 CALL                             R12 2 0
      107 GETTABLEKS                       R12 R10 K40 ["ToolSettings"]
      109 DUPTABLE                         R13 K42 [{"BackgroundColor"}]
      110 GETTABLEKS                       R14 R4 K43 ["MainBackground"]
      112 SETTABLEKS                       R14 R13 K41 ["BackgroundColor"]
      114 SETTABLE                         R13 R11 R12
      115 LOADK                            R14 K44 ["ImageRenderer"]
      116 NAMECALL                         R12 R10 K23 ["add"]
      118 CALL                             R12 2 0
      119 GETTABLEKS                       R12 R10 K44 ["ImageRenderer"]
      121 DUPTABLE                         R13 K60 [{["ClearIcon"] = "rbxasset://textures/StudioSharedUI/preview_clear.png", ["ExpandIcon"] = "rbxasset://textures/StudioSharedUI/preview_expand.png", ["IconPadding"] = 3, ["ImportIcon"] = "rbxasset://textures/StudioSharedUI/import@2x.png", ["PreviewSize"], ["ToolbarTransparency"] = 0.4, ["ToolbarBackgroundColor"], ["ToolbarButtonBackgroundColor"], ["ToolbarHeight"] = 32}]
      122 GETIMPORT                        R14 K38 [UDim2.fromOffset]
      124 LOADN                            R15 100
      125 LOADN                            R16 100
      126 CALL                             R14 2 1
      127 SETTABLEKS                       R14 R13 K53 ["PreviewSize"]
      129 GETTABLEKS                       R14 R4 K56 ["ToolbarBackgroundColor"]
      131 SETTABLEKS                       R14 R13 K56 ["ToolbarBackgroundColor"]
      133 GETTABLEKS                       R14 R4 K57 ["ToolbarButtonBackgroundColor"]
      135 SETTABLEKS                       R14 R13 K57 ["ToolbarButtonBackgroundColor"]
      137 SETTABLE                         R13 R11 R12
      138 LOADK                            R14 K61 ["MetadataDialog"]
      139 NAMECALL                         R12 R10 K23 ["add"]
      141 CALL                             R12 2 0
      142 GETTABLEKS                       R12 R10 K61 ["MetadataDialog"]
      144 DUPTABLE                         R13 K70 [{["ImageBackgroundColor"], ["MetadataLineHeight"] = 16, ["MinSize"], ["Padding"] = 4, ["Size"], ["Spacing"] = 4}]
      145 GETIMPORT                        R14 K73 [Color3.new]
      147 LOADN                            R15 0
      148 LOADN                            R16 0
      149 LOADN                            R17 0
      150 CALL                             R14 3 1
      151 SETTABLEKS                       R14 R13 K62 ["ImageBackgroundColor"]
      153 GETIMPORT                        R14 K75 [Vector2.new]
      155 LOADN                            R15 100
      156 LOADN                            R16 100
      157 CALL                             R14 2 1
      158 SETTABLEKS                       R14 R13 K65 ["MinSize"]
      160 GETIMPORT                        R14 K75 [Vector2.new]
      162 LOADN                            R15 400
      163 LOADN                            R16 400
      164 CALL                             R14 2 1
      165 SETTABLEKS                       R14 R13 K68 ["Size"]
      167 SETTABLE                         R13 R11 R12
      168 LOADK                            R14 K76 ["MaterialRenderer"]
      169 NAMECALL                         R12 R10 K23 ["add"]
      171 CALL                             R12 2 0
      172 GETTABLEKS                       R12 R10 K76 ["MaterialRenderer"]
      174 DUPTABLE                         R13 K91 [{["CornerRadius"], ["DropdownItemHeight"] = 40, ["DropdownPadding"] = 10, ["Font"], ["FontSize"] = 18, ["GridItemSize"] = 48, ["InitialDistance"] = 6.2, ["MaterialPreviewBackground"], ["PreviewSize"] = 24, ["SelectInputArrowSize"] = 16, ["Spacing"] = 6}]
      175 GETIMPORT                        R14 K93 [UDim.new]
      177 LOADN                            R15 0
      178 LOADN                            R16 4
      179 CALL                             R14 2 1
      180 SETTABLEKS                       R14 R13 K77 ["CornerRadius"]
      182 GETIMPORT                        R14 K96 [Enum.Font.BuilderSans]
      184 SETTABLEKS                       R14 R13 K82 ["Font"]
      186 GETTABLEKS                       R14 R4 K97 ["InputFieldBackground"]
      188 SETTABLEKS                       R14 R13 K87 ["MaterialPreviewBackground"]
      190 SETTABLE                         R13 R11 R12
      191 LOADK                            R14 K98 ["ProgressDialog"]
      192 NAMECALL                         R12 R10 K23 ["add"]
      194 CALL                             R12 2 0
      195 GETTABLEKS                       R12 R10 K98 ["ProgressDialog"]
      197 DUPTABLE                         R13 K104 [{["DescriptionHeight"] = 20, ["MinContentSize"], ["Padding"] = 5, ["ProgressHeight"] = 20, ["Spacing"] = 5}]
      198 GETIMPORT                        R14 K75 [Vector2.new]
      200 LOADN                            R15 320
      201 LOADN                            R16 60
      202 CALL                             R14 2 1
      203 SETTABLEKS                       R14 R13 K101 ["MinContentSize"]
      205 SETTABLE                         R13 R11 R12
      206 LOADK                            R14 K105 ["PlaneLockRenderer"]
      207 NAMECALL                         R12 R10 K23 ["add"]
      209 CALL                             R12 2 0
      210 GETTABLEKS                       R12 R10 K105 ["PlaneLockRenderer"]
      212 DUPTABLE                         R13 K108 [{["Height"] = 32, ["Icon"], ["Spacing"] = 6}]
      213 GETTABLEKS                       R14 R4 K109 ["Reset"]
      215 SETTABLEKS                       R14 R13 K107 ["Icon"]
      217 SETTABLE                         R13 R11 R12
      218 LOADK                            R14 K110 ["UpgradeRenderer"]
      219 NAMECALL                         R12 R10 K23 ["add"]
      221 CALL                             R12 2 0
      222 GETTABLEKS                       R12 R10 K110 ["UpgradeRenderer"]
      224 DUPTABLE                         R13 K114 [{["Font"], ["MaxWidth"] = 300, ["Spacing"] = 12, ["TextSize"] = 16}]
      225 GETIMPORT                        R14 K116 [Enum.Font.SourceSans]
      227 SETTABLEKS                       R14 R13 K82 ["Font"]
      229 SETTABLE                         R13 R11 R12
      230 LOADK                            R14 K117 ["Line"]
      231 NAMECALL                         R12 R10 K23 ["add"]
      233 CALL                             R12 2 0
      234 GETTABLEKS                       R12 R10 K117 ["Line"]
      236 DUPTABLE                         R13 K123 [{["Color"], ["TransparencyActive"] = 0.8, ["Transparency"] = 0.3}]
      237 GETIMPORT                        R14 K126 [BrickColor.White]
      239 CALL                             R14 0 1
      240 SETTABLEKS                       R14 R13 K118 ["Color"]
      242 SETTABLE                         R13 R11 R12
      243 LOADK                            R14 K127 ["Brush"]
      244 NAMECALL                         R12 R10 K23 ["add"]
      246 CALL                             R12 2 0
      247 GETTABLEKS                       R12 R10 K127 ["Brush"]
      249 DUPTABLE                         R13 K134 [{["CenterRadiusMultiplier"] = 0.015, ["CenterTransparency"] = 0.25, ["Color"], ["MainTransparency"] = 0.95}]
      250 GETIMPORT                        R14 K126 [BrickColor.White]
      252 CALL                             R14 0 1
      253 SETTABLEKS                       R14 R13 K118 ["Color"]
      255 SETTABLE                         R13 R11 R12
      256 GETTABLEKS                       R12 R10 K135 ["SimpleTab"]
      258 NEWTABLE                         R13 16 0
      260 LOADN                            R14 1
      261 SETTABLEKS                       R14 R13 K136 ["BorderSize"]
      263 LOADN                            R14 5
      264 SETTABLEKS                       R14 R13 K69 ["Spacing"]
      266 DUPTABLE                         R14 K142 [{["Left"] = 20, ["Top"] = 4, ["Bottom"] = 0, ["Right"] = 20}]
      267 SETTABLEKS                       R14 R13 K66 ["Padding"]
      269 LOADN                            R14 3
      270 SETTABLEKS                       R14 R13 K143 ["TopLineHeight"]
      272 GETTABLEKS                       R14 R4 K144 ["ButtonText"]
      274 SETTABLEKS                       R14 R13 K118 ["Color"]
      276 GETTABLEKS                       R14 R4 K39 ["SubBackground"]
      278 SETTABLEKS                       R14 R13 K41 ["BackgroundColor"]
      280 GETTABLEKS                       R14 R4 K39 ["SubBackground"]
      282 SETTABLEKS                       R14 R13 K145 ["BorderColor"]
      284 GETTABLEKS                       R14 R4 K146 ["DialogMainButton"]
      286 SETTABLEKS                       R14 R13 K147 ["TopLineColor"]
      288 GETTABLEKS                       R14 R4 K39 ["SubBackground"]
      290 SETTABLEKS                       R14 R13 K148 ["BottomLineColor"]
      292 MOVE                             R15 R1
      293 CALL                             R15 0 1
      294 JUMPIFNOT                        R15 ; [+3]
      295 GETIMPORT                        R14 K150 [Enum.Font.BuilderSansMedium]
      297 JUMP                             ; [+1]
      298 LOADNIL                          R14
      299 SETTABLEKS                       R14 R13 K82 ["Font"]
      301 MOVE                             R15 R1
      302 CALL                             R15 0 1
      303 JUMPIFNOT                        R15 ; [+2]
      304 MOVE                             R14 R8
      305 JUMP                             ; [+1]
      306 LOADNIL                          R14
      307 SETTABLEKS                       R14 R13 K33 ["TextSize"]
      309 GETTABLEKS                       R14 R5 K151 ["Hover"]
      311 DUPTABLE                         R15 K152 [{"Color"}]
      312 GETTABLEKS                       R16 R4 K146 ["DialogMainButton"]
      314 SETTABLEKS                       R16 R15 K118 ["Color"]
      316 SETTABLE                         R15 R13 R14
      317 GETTABLEKS                       R14 R5 K153 ["Selected"]
      319 DUPTABLE                         R15 K154 [{"BottomLineColor", "BackgroundColor", "BorderColor"}]
      320 GETTABLEKS                       R16 R4 K43 ["MainBackground"]
      322 SETTABLEKS                       R16 R15 K148 ["BottomLineColor"]
      324 GETTABLEKS                       R16 R4 K43 ["MainBackground"]
      326 SETTABLEKS                       R16 R15 K41 ["BackgroundColor"]
      328 GETTABLEKS                       R16 R4 K155 ["Border"]
      330 SETTABLEKS                       R16 R15 K145 ["BorderColor"]
      332 SETTABLE                         R15 R13 R14
      333 GETTABLEKS                       R14 R5 K156 ["Disabled"]
      335 DUPTABLE                         R15 K152 [{"Color"}]
      336 GETTABLEKS                       R16 R4 K157 ["ButtonTextDisabled"]
      338 SETTABLEKS                       R16 R15 K118 ["Color"]
      340 SETTABLE                         R15 R13 R14
      341 SETTABLE                         R13 R11 R12
      342 MOVE                             R12 R1
      343 CALL                             R12 0 1
      344 JUMPIFNOT                        R12 ; [+60]
      345 GETTABLEKS                       R12 R10 K158 ["Form"]
      347 DUPTABLE                         R13 K162 [{["ExpandablePaneHeader"] = "SectionTitleSmall", ["FormItem"], ["Spacing"] = 16}]
      348 DUPTABLE                         R14 K176 [{["Spacing"] = 6, ["StatusIconSize"] = 20, ["HelpIconSize"] = 16, ["DepthPadding"] = 10, ["WithChildrenPadding"] = 10, ["Padding"] = 28, ["StatusIconError"] = "rbxasset://textures/StudioSharedUI/alert_error@2x.png", ["StatusIconWarning"] = "rbxasset://textures/StudioSharedUI/alert_warning@2x.png", ["HelpIcon"] = "rbxasset://textures/StudioSharedUI/Help.png", ["IconColor"], ["Arrow"], ["Font"], ["FontSize"] = 18, ["TextSize"]}]
      349 GETTABLEKS                       R15 R4 K107 ["Icon"]
      351 SETTABLEKS                       R15 R14 K174 ["IconColor"]
      353 NEWTABLE                         R15 8 0
      355 GETTABLEKS                       R16 R4 K177 ["MainText"]
      357 SETTABLEKS                       R16 R15 K118 ["Color"]
      359 LOADK                            R16 K178 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      360 SETTABLEKS                       R16 R15 K179 ["Image"]
      362 GETIMPORT                        R16 K75 [Vector2.new]
      364 LOADN                            R17 12
      365 LOADN                            R18 0
      366 CALL                             R16 2 1
      367 SETTABLEKS                       R16 R15 K180 ["ImageRectOffset"]
      369 GETIMPORT                        R16 K75 [Vector2.new]
      371 LOADN                            R17 12
      372 LOADN                            R18 12
      373 CALL                             R16 2 1
      374 SETTABLEKS                       R16 R15 K181 ["ImageRectSize"]
      376 GETIMPORT                        R16 K38 [UDim2.fromOffset]
      378 LOADN                            R17 12
      379 LOADN                            R18 12
      380 CALL                             R16 2 1
      381 SETTABLEKS                       R16 R15 K68 ["Size"]
      383 GETTABLEKS                       R16 R5 K153 ["Selected"]
      385 DUPTABLE                         R17 K182 [{"ImageRectOffset"}]
      386 GETIMPORT                        R18 K75 [Vector2.new]
      388 LOADN                            R19 24
      389 LOADN                            R20 0
      390 CALL                             R18 2 1
      391 SETTABLEKS                       R18 R17 K180 ["ImageRectOffset"]
      393 SETTABLE                         R17 R15 R16
      394 SETTABLEKS                       R15 R14 K175 ["Arrow"]
      396 GETIMPORT                        R15 K96 [Enum.Font.BuilderSans]
      398 SETTABLEKS                       R15 R14 K82 ["Font"]
      400 SETTABLEKS                       R9 R14 K33 ["TextSize"]
      402 SETTABLEKS                       R14 R13 K161 ["FormItem"]
      404 SETTABLE                         R13 R11 R12
      405 GETIMPORT                        R12 K93 [UDim.new]
      407 LOADN                            R13 0
      408 LOADN                            R14 6
      409 CALL                             R12 2 1
      410 LOADK                            R15 K183 ["MaterialGrid"]
      411 NAMECALL                         R13 R10 K23 ["add"]
      413 CALL                             R13 2 0
      414 GETTABLEKS                       R13 R10 K183 ["MaterialGrid"]
      416 DUPTABLE                         R14 K201 [{["BackgroundColor"], ["GridItemBackgroundColor"], ["GridItemBackgroundColorHovered"], ["GridItemBorderColor"], ["GridItemBorderColorSelected"], ["GridItemCornerRadius"], ["GridItemPadding"] = 2, ["GridItemSize"] = 128, ["GridItemLabelPadding"], ["ItemLabelScrimColor"], ["ItemLabelTextColor"], ["ListItemHeight"] = 40, ["ListItemPadding"] = 0, ["ListItemSpacing"] = 4, ["MaterialPreviewStyle"] = "CornerBox", ["Padding"] = 0, ["ShimmerSizeOffset"] = 2, ["TextSize"] = 20}]
      417 GETTABLEKS                       R15 R4 K43 ["MainBackground"]
      419 SETTABLEKS                       R15 R14 K41 ["BackgroundColor"]
      421 GETTABLEKS                       R15 R4 K202 ["Button"]
      423 SETTABLEKS                       R15 R14 K184 ["GridItemBackgroundColor"]
      425 GETTABLEKS                       R15 R4 K203 ["ButtonHover"]
      427 SETTABLEKS                       R15 R14 K185 ["GridItemBackgroundColorHovered"]
      429 GETTABLEKS                       R15 R4 K155 ["Border"]
      431 SETTABLEKS                       R15 R14 K186 ["GridItemBorderColor"]
      433 GETTABLEKS                       R15 R4 K204 ["InputFieldBorderSelected"]
      435 SETTABLEKS                       R15 R14 K187 ["GridItemBorderColorSelected"]
      437 GETIMPORT                        R15 K93 [UDim.new]
      439 LOADN                            R16 0
      440 LOADN                            R17 6
      441 CALL                             R15 2 1
      442 SETTABLEKS                       R15 R14 K188 ["GridItemCornerRadius"]
      444 DUPTABLE                         R15 K208 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
      445 SETTABLEKS                       R12 R15 K205 ["PaddingBottom"]
      447 SETTABLEKS                       R12 R15 K206 ["PaddingLeft"]
      449 SETTABLEKS                       R12 R15 K207 ["PaddingRight"]
      451 SETTABLEKS                       R15 R14 K192 ["GridItemLabelPadding"]
      453 GETTABLEKS                       R15 R4 K43 ["MainBackground"]
      455 SETTABLEKS                       R15 R14 K193 ["ItemLabelScrimColor"]
      457 GETTABLEKS                       R15 R4 K177 ["MainText"]
      459 SETTABLEKS                       R15 R14 K194 ["ItemLabelTextColor"]
      461 SETTABLE                         R14 R11 R13
      462 LOADK                            R15 K209 ["Note"]
      463 NAMECALL                         R13 R10 K23 ["add"]
      465 CALL                             R13 2 0
      466 GETTABLEKS                       R13 R10 K209 ["Note"]
      468 DUPTABLE                         R14 K215 [{["Background"], ["KeyBackground"], ["EdgePadding"] = 2, ["FramePadding"] = 3, ["TextMargin"] = 2}]
      469 GETTABLEKS                       R15 R4 K43 ["MainBackground"]
      471 SETTABLEKS                       R15 R14 K210 ["Background"]
      473 GETTABLEKS                       R15 R4 K216 ["DimmedText"]
      475 SETTABLEKS                       R15 R14 K211 ["KeyBackground"]
      477 SETTABLE                         R14 R11 R13
      478 LOADK                            R15 K217 ["BrushSizeRenderer"]
      479 NAMECALL                         R13 R10 K23 ["add"]
      481 CALL                             R13 2 0
      482 GETTABLEKS                       R13 R10 K217 ["BrushSizeRenderer"]
      484 DUPTABLE                         R14 K224 [{["LabelWidth"] = 20, ["LockButtonWidth"] = 26, ["RowHeight"] = 24, ["Locked"], ["Unlocked"]}]
      485 GETTABLEKS                       R15 R4 K222 ["Locked"]
      487 SETTABLEKS                       R15 R14 K222 ["Locked"]
      489 GETTABLEKS                       R15 R4 K223 ["Unlocked"]
      491 SETTABLEKS                       R15 R14 K223 ["Unlocked"]
      493 SETTABLE                         R14 R11 R13
      494 LOADK                            R15 K225 ["MultiSelectionRenderer"]
      495 NAMECALL                         R13 R10 K23 ["add"]
      497 CALL                             R13 2 0
      498 GETTABLEKS                       R13 R10 K225 ["MultiSelectionRenderer"]
      500 DUPTABLE                         R14 K226 [{["Spacing"] = 4}]
      501 SETTABLE                         R14 R11 R13
      502 LOADK                            R15 K227 ["ElevationRenderer"]
      503 NAMECALL                         R13 R10 K23 ["add"]
      505 CALL                             R13 2 0
      506 GETTABLEKS                       R13 R10 K227 ["ElevationRenderer"]
      508 DUPTABLE                         R14 K241 [{["AddStyle"], ["ArrowSize"], ["ArrowStyle"], ["ButtonSize"], ["Corner"], ["ImageColor"], ["ImageColorSelected"], ["MaterialPreviewSize"], ["PreviewBorder"], ["RemoveStyle"], ["SliderAreaSize"], ["SliderSize"], ["TextBoxSize"], ["Spacing"] = 10}]
      509 DUPTABLE                         R15 K242 [{"Image"}]
      510 GETTABLEKS                       R16 R4 K243 ["Add"]
      512 SETTABLEKS                       R16 R15 K179 ["Image"]
      514 SETTABLEKS                       R15 R14 K228 ["AddStyle"]
      516 GETIMPORT                        R15 K38 [UDim2.fromOffset]
      518 LOADN                            R16 10
      519 LOADN                            R17 5
      520 CALL                             R15 2 1
      521 SETTABLEKS                       R15 R14 K229 ["ArrowSize"]
      523 DUPTABLE                         R15 K245 [{["Image"] = "rbxasset://textures/TerrainEditor/trianglesmallinverted.png"}]
      524 SETTABLEKS                       R15 R14 K230 ["ArrowStyle"]
      526 GETIMPORT                        R15 K38 [UDim2.fromOffset]
      528 LOADN                            R16 16
      529 LOADN                            R17 16
      530 CALL                             R15 2 1
      531 SETTABLEKS                       R15 R14 K231 ["ButtonSize"]
      533 GETIMPORT                        R15 K93 [UDim.new]
      535 LOADN                            R16 0
      536 LOADN                            R17 4
      537 CALL                             R15 2 1
      538 SETTABLEKS                       R15 R14 K232 ["Corner"]
      540 GETTABLEKS                       R15 R4 K246 ["TextPrimary"]
      542 SETTABLEKS                       R15 R14 K233 ["ImageColor"]
      544 GETTABLEKS                       R15 R4 K146 ["DialogMainButton"]
      546 SETTABLEKS                       R15 R14 K234 ["ImageColorSelected"]
      548 GETIMPORT                        R15 K38 [UDim2.fromOffset]
      550 LOADN                            R16 20
      551 LOADN                            R17 20
      552 CALL                             R15 2 1
      553 SETTABLEKS                       R15 R14 K235 ["MaterialPreviewSize"]
      555 DUPTABLE                         R15 K249 [{["Color"], ["Image"] = "rbxasset://textures/StudioToolbox/RoundedBorder.png", ["SliceCenter"]}]
      556 GETTABLEKS                       R16 R4 K146 ["DialogMainButton"]
      558 SETTABLEKS                       R16 R15 K118 ["Color"]
      560 GETIMPORT                        R16 K251 [Rect.new]
      562 LOADN                            R17 3
      563 LOADN                            R18 3
      564 LOADN                            R19 13
      565 LOADN                            R20 13
      566 CALL                             R16 4 1
      567 SETTABLEKS                       R16 R15 K248 ["SliceCenter"]
      569 SETTABLEKS                       R15 R14 K236 ["PreviewBorder"]
      571 DUPTABLE                         R15 K242 [{"Image"}]
      572 GETTABLEKS                       R16 R4 K252 ["Remove"]
      574 SETTABLEKS                       R16 R15 K179 ["Image"]
      576 SETTABLEKS                       R15 R14 K237 ["RemoveStyle"]
      578 GETIMPORT                        R15 K38 [UDim2.fromOffset]
      580 LOADN                            R16 20
      581 LOADN                            R17 182
      582 CALL                             R15 2 1
      583 SETTABLEKS                       R15 R14 K238 ["SliderAreaSize"]
      585 GETIMPORT                        R15 K38 [UDim2.fromOffset]
      587 LOADN                            R16 20
      588 LOADN                            R17 200
      589 CALL                             R15 2 1
      590 SETTABLEKS                       R15 R14 K239 ["SliderSize"]
      592 GETIMPORT                        R15 K38 [UDim2.fromOffset]
      594 LOADN                            R16 50
      595 LOADN                            R17 20
      596 CALL                             R15 2 1
      597 SETTABLEKS                       R15 R14 K240 ["TextBoxSize"]
      599 SETTABLE                         R14 R11 R13
      600 LOADK                            R15 K253 ["SlopeRenderer"]
      601 NAMECALL                         R13 R10 K23 ["add"]
      603 CALL                             R13 2 0
      604 GETTABLEKS                       R13 R10 K253 ["SlopeRenderer"]
      606 DUPTABLE                         R14 K256 [{["Height"] = 24, ["Spacing"] = 6, ["TextInputWidth"] = 50}]
      607 SETTABLE                         R14 R11 R13
      608 LOADK                            R15 K257 ["SeedRenderer"]
      609 NAMECALL                         R13 R10 K23 ["add"]
      611 CALL                             R13 2 0
      612 GETTABLEKS                       R13 R10 K257 ["SeedRenderer"]
      614 DUPTABLE                         R14 K258 [{["Height"] = 24, ["Icon"], ["Spacing"] = 6}]
      615 GETTABLEKS                       R15 R4 K259 ["Randomize"]
      617 SETTABLEKS                       R15 R14 K107 ["Icon"]
      619 SETTABLE                         R14 R11 R13
      620 RETURN                           R11 1
