MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Resources"]
       20 GETTABLEKS                       R3 R3 K10 ["StyleConstants"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["Styling"]
       25 GETTABLEKS                       R3 R3 K12 ["createStyleRule"]
       27 GETTABLEKS                       R4 R1 K11 ["Styling"]
       29 GETTABLEKS                       R4 R4 K13 ["createStyleSheet"]
       31 NEWTABLE                         R5 0 33
       33 MOVE                             R6 R3
       34 LOADK                            R7 K14 ["ImageLabel, ImageButton"]
       35 NEWTABLE                         R8 0 0
       37 NEWTABLE                         R9 0 14
       39 MOVE                             R10 R3
       40 LOADK                            R11 K15 [".icon-dark"]
       41 DUPTABLE                         R12 K17 [{"ImageColor3"}]
       42 GETIMPORT                        R13 K20 [Color3.fromRGB]
       44 LOADN                            R14 0
       45 LOADN                            R15 0
       46 LOADN                            R16 0
       47 CALL                             R13 3 1
       48 SETTABLEKS                       R13 R12 K16 ["ImageColor3"]
       50 CALL                             R10 2 1
       51 MOVE                             R11 R3
       52 LOADK                            R12 K21 [".icon-arrow-down"]
       53 DUPTABLE                         R13 K24 [{["Image"] = "$ArrowDownIcon"}]
       54 CALL                             R11 2 1
       55 MOVE                             R12 R3
       56 LOADK                            R13 K25 [".icon-arrow-right"]
       57 DUPTABLE                         R14 K27 [{["Image"] = "$ArrowRightIcon"}]
       58 CALL                             R12 2 1
       59 MOVE                             R13 R3
       60 LOADK                            R14 K28 [".icon-arrow-up"]
       61 DUPTABLE                         R15 K30 [{["Image"] = "$ArrowUpIcon"}]
       62 CALL                             R13 2 1
       63 MOVE                             R14 R3
       64 LOADK                            R15 K31 [".icon-checkmark"]
       65 DUPTABLE                         R16 K33 [{["Image"] = "$CheckmarkIcon"}]
       66 CALL                             R14 2 1
       67 MOVE                             R15 R3
       68 LOADK                            R16 K34 [".icon-clear"]
       69 DUPTABLE                         R17 K36 [{["Image"] = "$ClearIcon"}]
       70 CALL                             R15 2 1
       71 MOVE                             R16 R3
       72 LOADK                            R17 K37 [".icon-filter"]
       73 DUPTABLE                         R18 K39 [{["ImageColor3"] = "$AmContentEmphasis"}]
       74 NEWTABLE                         R19 0 1
       76 MOVE                             R20 R3
       77 LOADK                            R21 K40 [".Active ImageLabel"]
       78 DUPTABLE                         R22 K42 [{["ImageColor3"] = "$PrimaryHoverBackground"}]
       79 CALL                             R20 2 -1
       80 SETLIST                          R19 R20 -1 [1]
       82 CALL                             R16 3 1
       83 MOVE                             R17 R3
       84 LOADK                            R18 K43 [".icon-notification"]
       85 DUPTABLE                         R19 K45 [{["Image"] = "$NotificationIcon"}]
       86 CALL                             R17 2 1
       87 MOVE                             R18 R3
       88 LOADK                            R19 K46 [".icon-refresh"]
       89 DUPTABLE                         R20 K48 [{["Image"] = "$RefreshIcon"}]
       90 CALL                             R18 2 1
       91 MOVE                             R19 R3
       92 LOADK                            R20 K49 [".icon-search"]
       93 DUPTABLE                         R21 K51 [{["Image"] = "$SearchIcon"}]
       94 CALL                             R19 2 1
       95 MOVE                             R20 R3
       96 LOADK                            R21 K52 [".icon-collapse"]
       97 DUPTABLE                         R22 K54 [{["Image"] = "$SidebarCollapseIcon"}]
       98 CALL                             R20 2 1
       99 MOVE                             R21 R3
      100 LOADK                            R22 K55 [".icon-expand"]
      101 DUPTABLE                         R23 K57 [{["Image"] = "$SidebarExpandIcon"}]
      102 CALL                             R21 2 1
      103 MOVE                             R22 R3
      104 LOADK                            R23 K58 [".icon-sort"]
      105 DUPTABLE                         R24 K60 [{["Image"] = "$SortIcon"}]
      106 CALL                             R22 2 1
      107 MOVE                             R23 R3
      108 LOADK                            R24 K61 [".icon-packageLink"]
      109 DUPTABLE                         R25 K66 [{["Image"] = "$PackageLinkIcon", ["ZIndex"] = 2, ["Position"]}]
      110 GETIMPORT                        R26 K69 [UDim2.fromScale]
      112 LOADN                            R27 1
      113 LOADN                            R28 1
      114 CALL                             R26 2 1
      115 SETTABLEKS                       R26 R25 K65 ["Position"]
      117 NEWTABLE                         R26 0 1
      119 MOVE                             R27 R3
      120 LOADK                            R28 K70 ["> ImageLabel"]
      121 DUPTABLE                         R29 K71 [{["ZIndex"] = 2}]
      122 CALL                             R27 2 -1
      123 SETLIST                          R26 R27 -1 [1]
      125 CALL                             R23 3 -1
      126 SETLIST                          R9 R10 -1 [1]
      128 CALL                             R6 3 1
      129 MOVE                             R7 R3
      130 LOADK                            R8 K72 [".Toolbar"]
      131 NEWTABLE                         R9 0 0
      133 NEWTABLE                         R10 0 1
      135 MOVE                             R11 R3
      136 LOADK                            R12 K73 ["::UIListLayout"]
      137 DUPTABLE                         R13 K81 [{["FillDirection"], ["Padding"] = "$Padding", ["SortOrder"], ["Wraps"] = True, ["HorizontalFlex"]}]
      138 GETIMPORT                        R14 K84 [Enum.FillDirection.Horizontal]
      140 SETTABLEKS                       R14 R13 K74 ["FillDirection"]
      142 GETIMPORT                        R14 K86 [Enum.SortOrder.LayoutOrder]
      144 SETTABLEKS                       R14 R13 K77 ["SortOrder"]
      146 GETIMPORT                        R14 K89 [Enum.UIFlexAlignment.None]
      148 SETTABLEKS                       R14 R13 K80 ["HorizontalFlex"]
      150 CALL                             R11 2 -1
      151 SETLIST                          R10 R11 -1 [1]
      153 CALL                             R7 3 1
      154 MOVE                             R8 R3
      155 LOADK                            R9 K90 ["#TopLevelDetector >> #Menu >> ScrollingFrame"]
      156 DUPTABLE                         R10 K92 [{"VerticalScrollBarInset"}]
      157 GETIMPORT                        R11 K94 [Enum.ScrollBarInset.None]
      159 SETTABLEKS                       R11 R10 K91 ["VerticalScrollBarInset"]
      161 CALL                             R8 2 1
      162 MOVE                             R9 R3
      163 LOADK                            R10 K95 [".App"]
      164 NEWTABLE                         R11 0 0
      166 NEWTABLE                         R12 0 2
      168 MOVE                             R13 R3
      169 LOADK                            R14 K96 [">> .Explorer"]
      170 DUPTABLE                         R15 K98 [{"Size"}]
      171 GETIMPORT                        R16 K100 [UDim2.new]
      173 LOADN                            R17 1
      174 LOADN                            R18 0
      175 LOADN                            R19 1
      176 GETTABLEKS                       R21 R2 K101 ["TopBarHeight"]
      178 MINUS                            R20 R21
      179 CALL                             R16 4 1
      180 SETTABLEKS                       R16 R15 K97 ["Size"]
      182 CALL                             R13 2 1
      183 MOVE                             R14 R3
      184 LOADK                            R15 K102 [">> .MainContents"]
      185 DUPTABLE                         R16 K98 [{"Size"}]
      186 GETIMPORT                        R17 K100 [UDim2.new]
      188 LOADN                            R18 1
      189 LOADN                            R19 0
      190 LOADN                            R20 1
      191 GETTABLEKS                       R22 R2 K101 ["TopBarHeight"]
      193 MINUS                            R21 R22
      194 CALL                             R17 4 1
      195 SETTABLEKS                       R17 R16 K97 ["Size"]
      197 NEWTABLE                         R17 0 3
      199 MOVE                             R18 R3
      200 LOADK                            R19 K103 ["::UIFlexItem"]
      201 DUPTABLE                         R20 K105 [{"FlexMode"}]
      202 GETIMPORT                        R21 K108 [Enum.UIFlexMode.Fill]
      204 SETTABLEKS                       R21 R20 K104 ["FlexMode"]
      206 CALL                             R18 2 1
      207 MOVE                             R19 R3
      208 LOADK                            R20 K109 ["::UIPadding"]
      209 DUPTABLE                         R21 K111 [{"PaddingTop"}]
      210 GETIMPORT                        R22 K113 [UDim.new]
      212 LOADN                            R23 0
      213 LOADN                            R24 1
      214 CALL                             R22 2 1
      215 SETTABLEKS                       R22 R21 K110 ["PaddingTop"]
      217 CALL                             R19 2 1
      218 MOVE                             R20 R3
      219 LOADK                            R21 K114 [".HasLoadingBar"]
      220 DUPTABLE                         R22 K98 [{"Size"}]
      221 GETIMPORT                        R23 K100 [UDim2.new]
      223 LOADN                            R24 1
      224 LOADN                            R25 0
      225 LOADN                            R26 1
      226 GETTABLEKS                       R29 R2 K101 ["TopBarHeight"]
      228 GETTABLEKS                       R30 R2 K115 ["LoadingBarHeight"]
      230 ADD                              R28 R29 R30
      231 MINUS                            R27 R28
      232 CALL                             R23 4 1
      233 SETTABLEKS                       R23 R22 K97 ["Size"]
      235 CALL                             R20 2 -1
      236 SETLIST                          R17 R18 -1 [1]
      238 CALL                             R14 3 -1
      239 SETLIST                          R12 R13 -1 [1]
      241 CALL                             R9 3 1
      242 MOVE                             R10 R3
      243 LOADK                            R11 K116 [".ScopeOptions"]
      244 NEWTABLE                         R12 0 0
      246 NEWTABLE                         R13 0 3
      248 MOVE                             R14 R3
      249 LOADK                            R15 K117 [">> .Header"]
      250 NEWTABLE                         R16 0 0
      252 NEWTABLE                         R17 0 1
      254 MOVE                             R18 R3
      255 LOADK                            R19 K109 ["::UIPadding"]
      256 DUPTABLE                         R20 K120 [{["PaddingTop"] = "$Padding", ["PaddingLeft"] = "$Padding", ["PaddingRight"] = "$Padding"}]
      257 CALL                             R18 2 -1
      258 SETLIST                          R17 R18 -1 [1]
      260 CALL                             R14 3 1
      261 MOVE                             R15 R3
      262 LOADK                            R16 K121 [">> .Description"]
      263 NEWTABLE                         R17 0 0
      265 NEWTABLE                         R18 0 1
      267 MOVE                             R19 R3
      268 LOADK                            R20 K109 ["::UIPadding"]
      269 DUPTABLE                         R21 K123 [{["PaddingTop"] = "$PaddingSmall", ["PaddingLeft"] = "$Padding", ["PaddingRight"] = "$Padding"}]
      270 CALL                             R19 2 -1
      271 SETLIST                          R18 R19 -1 [1]
      273 CALL                             R15 3 1
      274 MOVE                             R16 R3
      275 LOADK                            R17 K124 [">> .Component-SearchBar"]
      276 NEWTABLE                         R18 0 0
      278 NEWTABLE                         R19 0 1
      280 MOVE                             R20 R3
      281 LOADK                            R21 K109 ["::UIPadding"]
      282 DUPTABLE                         R22 K125 [{["PaddingLeft"] = "$PaddingSmall", ["PaddingRight"] = "$Padding"}]
      283 CALL                             R20 2 -1
      284 SETLIST                          R19 R20 -1 [1]
      286 CALL                             R16 3 -1
      287 SETLIST                          R13 R14 -1 [1]
      289 NEWTABLE                         R14 0 0
      291 CALL                             R10 4 1
      292 MOVE                             R11 R3
      293 LOADK                            R12 K126 [".CheckboxRow"]
      294 DUPTABLE                         R13 K129 [{["BackgroundTransparency"] = 1}]
      295 NEWTABLE                         R14 0 2
      297 MOVE                             R15 R3
      298 LOADK                            R16 K130 ["> .CheckboxRowContents"]
      299 DUPTABLE                         R17 K132 [{"AutomaticSize", "Size"}]
      300 GETIMPORT                        R18 K134 [Enum.AutomaticSize.Y]
      302 SETTABLEKS                       R18 R17 K131 ["AutomaticSize"]
      304 GETIMPORT                        R18 K100 [UDim2.new]
      306 LOADN                            R19 1
      307 GETTABLEKS                       R22 R2 K135 ["IconWidth"]
      309 MINUS                            R21 R22
      310 MULK                             R20 R21 K64 [2]
      311 LOADN                            R21 0
      312 LOADN                            R22 0
      313 CALL                             R18 4 1
      314 SETTABLEKS                       R18 R17 K97 ["Size"]
      316 CALL                             R15 2 1
      317 MOVE                             R16 R3
      318 LOADK                            R17 K136 ["> .Component-Checkbox"]
      319 DUPTABLE                         R18 K138 [{"AnchorPoint", "Position", "Size"}]
      320 GETIMPORT                        R19 K140 [Vector2.new]
      322 LOADN                            R20 1
      323 LOADN                            R21 0
      324 CALL                             R19 2 1
      325 SETTABLEKS                       R19 R18 K137 ["AnchorPoint"]
      327 GETIMPORT                        R19 K69 [UDim2.fromScale]
      329 LOADN                            R20 1
      330 LOADN                            R21 0
      331 CALL                             R19 2 1
      332 SETTABLEKS                       R19 R18 K65 ["Position"]
      334 GETIMPORT                        R19 K69 [UDim2.fromScale]
      336 LOADN                            R20 0
      337 LOADN                            R21 1
      338 CALL                             R19 2 1
      339 SETTABLEKS                       R19 R18 K97 ["Size"]
      341 CALL                             R16 2 -1
      342 SETLIST                          R14 R15 -1 [1]
      344 CALL                             R11 3 1
      345 MOVE                             R12 R3
      346 LOADK                            R13 K141 [".ContentList"]
      347 NEWTABLE                         R14 0 0
      349 NEWTABLE                         R15 0 2
      351 MOVE                             R16 R3
      352 LOADK                            R17 K142 ["> .HeaderRow"]
      353 DUPTABLE                         R18 K148 [{["BorderColor3"] = "$Divider", ["BorderSizePixel"] = 1, ["BackgroundColor3"] = "$ForegroundContrast"}]
      354 NEWTABLE                         R19 0 1
      356 MOVE                             R20 R3
      357 LOADK                            R21 K73 ["::UIListLayout"]
      358 DUPTABLE                         R22 K149 [{"FillDirection", "SortOrder"}]
      359 GETIMPORT                        R23 K84 [Enum.FillDirection.Horizontal]
      361 SETTABLEKS                       R23 R22 K74 ["FillDirection"]
      363 GETIMPORT                        R23 K86 [Enum.SortOrder.LayoutOrder]
      365 SETTABLEKS                       R23 R22 K77 ["SortOrder"]
      367 CALL                             R20 2 -1
      368 SETLIST                          R19 R20 -1 [1]
      370 CALL                             R16 3 1
      371 MOVE                             R17 R3
      372 LOADK                            R18 K150 ["> .ItemList"]
      373 DUPTABLE                         R19 K98 [{"Size"}]
      374 GETIMPORT                        R20 K100 [UDim2.new]
      376 LOADN                            R21 1
      377 LOADN                            R22 0
      378 LOADN                            R23 1
      379 GETTABLEKS                       R25 R2 K151 ["HeaderRowHeight"]
      381 MINUS                            R24 R25
      382 CALL                             R20 4 1
      383 SETTABLEKS                       R20 R19 K97 ["Size"]
      385 CALL                             R17 2 -1
      386 SETLIST                          R15 R16 -1 [1]
      388 CALL                             R12 3 1
      389 MOVE                             R13 R3
      390 LOADK                            R14 K152 [".am-size-thumbnailcontainer"]
      391 DUPTABLE                         R15 K98 [{"Size"}]
      392 GETIMPORT                        R16 K154 [UDim2.fromOffset]
      394 GETTABLEKS                       R17 R2 K155 ["ThumbnailContainerSize"]
      396 GETTABLEKS                       R18 R2 K155 ["ThumbnailContainerSize"]
      398 CALL                             R16 2 1
      399 SETTABLEKS                       R16 R15 K97 ["Size"]
      401 CALL                             R13 2 1
      402 MOVE                             R14 R3
      403 LOADK                            R15 K156 [".FillMinusDragX"]
      404 DUPTABLE                         R16 K98 [{"Size"}]
      405 GETIMPORT                        R17 K100 [UDim2.new]
      407 LOADN                            R18 1
      408 GETTABLEKS                       R20 R2 K157 ["PaddingSmall"]
      410 MINUS                            R19 R20
      411 LOADN                            R20 1
      412 LOADN                            R21 0
      413 CALL                             R17 4 1
      414 SETTABLEKS                       R17 R16 K97 ["Size"]
      416 CALL                             R14 2 1
      417 MOVE                             R15 R3
      418 LOADK                            R16 K158 [".FitYPlusDragX"]
      419 DUPTABLE                         R17 K159 [{"Size", "AutomaticSize"}]
      420 GETIMPORT                        R18 K100 [UDim2.new]
      422 LOADN                            R19 1
      423 GETTABLEKS                       R20 R2 K157 ["PaddingSmall"]
      425 LOADN                            R21 0
      426 LOADN                            R22 0
      427 CALL                             R18 4 1
      428 SETTABLEKS                       R18 R17 K97 ["Size"]
      430 GETIMPORT                        R18 K134 [Enum.AutomaticSize.Y]
      432 SETTABLEKS                       R18 R17 K131 ["AutomaticSize"]
      434 CALL                             R15 2 1
      435 MOVE                             R16 R3
      436 LOADK                            R17 K160 [".bg-action-selected"]
      437 DUPTABLE                         R18 K163 [{["BackgroundColor3"] = "$ActionSelected", ["BackgroundTransparency"] = 0}]
      438 CALL                             R16 2 1
      439 MOVE                             R17 R3
      440 LOADK                            R18 K164 [".bg-foreground-main"]
      441 DUPTABLE                         R19 K166 [{["BackgroundColor3"] = "$ForegroundMain", ["BackgroundTransparency"] = 0}]
      442 CALL                             R17 2 1
      443 MOVE                             R18 R3
      444 LOADK                            R19 K167 [".bg-foreground-contrast"]
      445 DUPTABLE                         R20 K168 [{["BackgroundColor3"] = "$ForegroundContrast", ["BackgroundTransparency"] = 0}]
      446 CALL                             R18 2 1
      447 MOVE                             R19 R3
      448 LOADK                            R20 K169 [".bg-paper"]
      449 DUPTABLE                         R21 K171 [{["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0}]
      450 CALL                             R19 2 1
      451 MOVE                             R20 R3
      452 LOADK                            R21 K172 [".anchor-center-right"]
      453 DUPTABLE                         R22 K173 [{"AnchorPoint"}]
      454 GETIMPORT                        R23 K140 [Vector2.new]
      456 LOADN                            R24 1
      457 LOADK                            R25 K174 [0.5]
      458 CALL                             R23 2 1
      459 SETTABLEKS                       R23 R22 K137 ["AnchorPoint"]
      461 CALL                             R20 2 1
      462 MOVE                             R21 R3
      463 LOADK                            R22 K175 [".am-padding-right-xsmall"]
      464 NEWTABLE                         R23 0 0
      466 NEWTABLE                         R24 0 1
      468 MOVE                             R25 R3
      469 LOADK                            R26 K109 ["::UIPadding"]
      470 DUPTABLE                         R27 K176 [{["PaddingRight"] = "$PaddingSmall"}]
      471 CALL                             R25 2 -1
      472 SETLIST                          R24 R25 -1 [1]
      474 CALL                             R21 3 1
      475 SETLIST                          R5 R6 16 [1]
      477 MOVE                             R6 R3
      478 LOADK                            R7 K177 [".am-padding-left-small"]
      479 NEWTABLE                         R8 0 0
      481 NEWTABLE                         R9 0 1
      483 MOVE                             R10 R3
      484 LOADK                            R11 K109 ["::UIPadding"]
      485 DUPTABLE                         R12 K178 [{["PaddingLeft"] = "$PaddingSmall"}]
      486 CALL                             R10 2 -1
      487 SETLIST                          R9 R10 -1 [1]
      489 CALL                             R6 3 1
      490 MOVE                             R7 R3
      491 LOADK                            R8 K179 [".am-padding-left-medium"]
      492 NEWTABLE                         R9 0 0
      494 NEWTABLE                         R10 0 1
      496 MOVE                             R11 R3
      497 LOADK                            R12 K109 ["::UIPadding"]
      498 DUPTABLE                         R13 K180 [{["PaddingLeft"] = "$Padding"}]
      499 CALL                             R11 2 -1
      500 SETLIST                          R10 R11 -1 [1]
      502 CALL                             R7 3 1
      503 MOVE                             R8 R3
      504 LOADK                            R9 K181 [".am-padding-bottom-small"]
      505 NEWTABLE                         R10 0 0
      507 NEWTABLE                         R11 0 1
      509 MOVE                             R12 R3
      510 LOADK                            R13 K109 ["::UIPadding"]
      511 DUPTABLE                         R14 K183 [{["PaddingBottom"] = "$PaddingSmall"}]
      512 CALL                             R12 2 -1
      513 SETLIST                          R11 R12 -1 [1]
      515 CALL                             R8 3 1
      516 MOVE                             R9 R3
      517 LOADK                            R10 K184 [".am-padding-left-sidebar-toggle"]
      518 NEWTABLE                         R11 0 0
      520 NEWTABLE                         R12 0 1
      522 MOVE                             R13 R3
      523 LOADK                            R14 K109 ["::UIPadding"]
      524 DUPTABLE                         R15 K185 [{"PaddingLeft"}]
      525 GETIMPORT                        R16 K113 [UDim.new]
      527 LOADN                            R17 0
      528 GETTABLEKS                       R18 R2 K186 ["SidebarToggleLeftPadding"]
      530 CALL                             R16 2 1
      531 SETTABLEKS                       R16 R15 K118 ["PaddingLeft"]
      533 CALL                             R13 2 -1
      534 SETLIST                          R12 R13 -1 [1]
      536 CALL                             R9 3 1
      537 MOVE                             R10 R3
      538 LOADK                            R11 K187 [".am-padding-top-sidebar-toggle"]
      539 NEWTABLE                         R12 0 0
      541 NEWTABLE                         R13 0 1
      543 MOVE                             R14 R3
      544 LOADK                            R15 K109 ["::UIPadding"]
      545 DUPTABLE                         R16 K111 [{"PaddingTop"}]
      546 GETIMPORT                        R17 K113 [UDim.new]
      548 LOADN                            R18 0
      549 GETTABLEKS                       R19 R2 K188 ["SidebarToggleTopPadding"]
      551 CALL                             R17 2 1
      552 SETTABLEKS                       R17 R16 K110 ["PaddingTop"]
      554 CALL                             R14 2 -1
      555 SETLIST                          R13 R14 -1 [1]
      557 CALL                             R10 3 1
      558 MOVE                             R11 R3
      559 LOADK                            R12 K189 [".am-position-center-right-xoffset-small"]
      560 DUPTABLE                         R13 K190 [{"Position"}]
      561 GETIMPORT                        R14 K100 [UDim2.new]
      563 LOADN                            R15 1
      564 GETTABLEKS                       R17 R2 K157 ["PaddingSmall"]
      566 MINUS                            R16 R17
      567 LOADK                            R17 K174 [0.5]
      568 LOADN                            R18 0
      569 CALL                             R14 4 1
      570 SETTABLEKS                       R14 R13 K65 ["Position"]
      572 CALL                             R11 2 1
      573 MOVE                             R12 R3
      574 LOADK                            R13 K191 [".amr-underlay >> ScrollingFrame"]
      575 DUPTABLE                         R14 K195 [{["VerticalScrollBarInset"], ["HorizontalScrollBarInset"], ["ScrollingDirection"], ["ScrollBarThickness"] = 0, ["BackgroundColor3"]}]
      576 GETIMPORT                        R15 K94 [Enum.ScrollBarInset.None]
      578 SETTABLEKS                       R15 R14 K91 ["VerticalScrollBarInset"]
      580 GETIMPORT                        R15 K94 [Enum.ScrollBarInset.None]
      582 SETTABLEKS                       R15 R14 K192 ["HorizontalScrollBarInset"]
      584 GETIMPORT                        R15 K196 [Enum.ScrollingDirection.Y]
      586 SETTABLEKS                       R15 R14 K193 ["ScrollingDirection"]
      588 GETIMPORT                        R15 K197 [Color3.new]
      590 LOADN                            R16 1
      591 LOADN                            R17 1
      592 LOADN                            R18 0
      593 CALL                             R15 3 1
      594 SETTABLEKS                       R15 R14 K146 ["BackgroundColor3"]
      596 CALL                             R12 2 1
      597 MOVE                             R13 R3
      598 LOADK                            R14 K198 [".am-size-full-celldata"]
      599 DUPTABLE                         R15 K98 [{"Size"}]
      600 GETIMPORT                        R16 K100 [UDim2.new]
      602 LOADN                            R17 1
      603 LOADN                            R18 0
      604 LOADN                            R19 0
      605 GETTABLEKS                       R20 R2 K199 ["CellDataHeight"]
      607 CALL                             R16 4 1
      608 SETTABLEKS                       R16 R15 K97 ["Size"]
      610 CALL                             R13 2 1
      611 MOVE                             R14 R3
      612 LOADK                            R15 K200 [".am-size-scrollbar-full"]
      613 DUPTABLE                         R16 K98 [{"Size"}]
      614 GETIMPORT                        R17 K100 [UDim2.new]
      616 LOADN                            R18 0
      617 GETTABLEKS                       R19 R2 K115 ["LoadingBarHeight"]
      619 LOADN                            R20 1
      620 LOADN                            R21 0
      621 CALL                             R17 4 1
      622 SETTABLEKS                       R17 R16 K97 ["Size"]
      624 CALL                             R14 2 1
      625 MOVE                             R15 R3
      626 LOADK                            R16 K201 [".am-size-full-scrollbar"]
      627 DUPTABLE                         R17 K98 [{"Size"}]
      628 GETIMPORT                        R18 K100 [UDim2.new]
      630 LOADN                            R19 1
      631 LOADN                            R20 0
      632 LOADN                            R21 0
      633 GETTABLEKS                       R22 R2 K115 ["LoadingBarHeight"]
      635 CALL                             R18 4 1
      636 SETTABLEKS                       R18 R17 K97 ["Size"]
      638 CALL                             R15 2 1
      639 MOVE                             R16 R3
      640 LOADK                            R17 K202 [".am-size-full-topbar"]
      641 DUPTABLE                         R18 K98 [{"Size"}]
      642 GETIMPORT                        R19 K100 [UDim2.new]
      644 LOADN                            R20 1
      645 LOADN                            R21 0
      646 LOADN                            R22 0
      647 GETTABLEKS                       R23 R2 K101 ["TopBarHeight"]
      649 CALL                             R19 4 1
      650 SETTABLEKS                       R19 R18 K97 ["Size"]
      652 CALL                             R16 2 1
      653 MOVE                             R17 R3
      654 LOADK                            R18 K203 [".am-size-full-headerrow"]
      655 DUPTABLE                         R19 K98 [{"Size"}]
      656 GETIMPORT                        R20 K100 [UDim2.new]
      658 LOADN                            R21 1
      659 LOADN                            R22 0
      660 LOADN                            R23 0
      661 GETTABLEKS                       R24 R2 K151 ["HeaderRowHeight"]
      663 CALL                             R20 4 1
      664 SETTABLEKS                       R20 R19 K97 ["Size"]
      666 CALL                             R17 2 1
      667 MOVE                             R18 R3
      668 LOADK                            R19 K204 [".am-size-fit-headerrow"]
      669 DUPTABLE                         R20 K159 [{"Size", "AutomaticSize"}]
      670 GETIMPORT                        R21 K154 [UDim2.fromOffset]
      672 LOADN                            R22 0
      673 GETTABLEKS                       R23 R2 K151 ["HeaderRowHeight"]
      675 CALL                             R21 2 1
      676 SETTABLEKS                       R21 R20 K97 ["Size"]
      678 GETIMPORT                        R21 K206 [Enum.AutomaticSize.X]
      680 SETTABLEKS                       R21 R20 K131 ["AutomaticSize"]
      682 CALL                             R18 2 1
      683 MOVE                             R19 R3
      684 LOADK                            R20 K207 [".am-size-icon-xsmall"]
      685 DUPTABLE                         R21 K98 [{"Size"}]
      686 GETTABLEKS                       R22 R2 K208 ["IconSizeXSmall"]
      688 SETTABLEKS                       R22 R21 K97 ["Size"]
      690 CALL                             R19 2 1
      691 MOVE                             R20 R3
      692 LOADK                            R21 K209 [".am-size-icon"]
      693 DUPTABLE                         R22 K211 [{["Size"] = "$IconSize"}]
      694 CALL                             R20 2 1
      695 MOVE                             R21 R3
      696 LOADK                            R22 K212 [".am-bg-action-hover"]
      697 DUPTABLE                         R23 K214 [{["BackgroundColor3"] = "$ActionHover", ["BackgroundTransparency"] = 0}]
      698 CALL                             R21 2 1
      699 SETLIST                          R5 R6 16 [17]
      701 MOVE                             R6 R3
      702 LOADK                            R7 K215 [".am-hover"]
      703 NEWTABLE                         R8 0 0
      705 NEWTABLE                         R9 0 1
      707 MOVE                             R10 R3
      708 LOADK                            R11 K216 [":hover"]
      709 DUPTABLE                         R12 K214 [{["BackgroundColor3"] = "$ActionHover", ["BackgroundTransparency"] = 0}]
      710 CALL                             R10 2 -1
      711 SETLIST                          R9 R10 -1 [1]
      713 CALL                             R6 3 -1
      714 SETLIST                          R5 R6 -1 [33]
      716 DUPTABLE                         R6 K234 [{["PaddingSmall"], ["Padding"], ["PaddingLarge"], ["IconDisabled"] = 0.62, ["Rotation"], ["Transparency"], ["CheckboxSize"], ["IconSize"], ["SortItemSize"], ["IconWidth"], ["BaseWidth"], ["OffsetWidth"], ["CellHeightDiff"], ["ThumbnailSize"] = 50, ["CellTagPadding"], ["ColumnMinSize"], ["CellContentPadding"], ["InputHeight"]}]
      717 GETIMPORT                        R7 K113 [UDim.new]
      719 LOADN                            R8 0
      720 GETTABLEKS                       R9 R2 K157 ["PaddingSmall"]
      722 CALL                             R7 2 1
      723 SETTABLEKS                       R7 R6 K157 ["PaddingSmall"]
      725 GETIMPORT                        R7 K113 [UDim.new]
      727 LOADN                            R8 0
      728 GETTABLEKS                       R9 R2 K75 ["Padding"]
      730 CALL                             R7 2 1
      731 SETTABLEKS                       R7 R6 K75 ["Padding"]
      733 GETIMPORT                        R7 K113 [UDim.new]
      735 LOADN                            R8 0
      736 GETTABLEKS                       R9 R2 K217 ["PaddingLarge"]
      738 CALL                             R7 2 1
      739 SETTABLEKS                       R7 R6 K217 ["PaddingLarge"]
      741 GETTABLEKS                       R7 R2 K235 ["ShimmerRotation"]
      743 SETTABLEKS                       R7 R6 K220 ["Rotation"]
      745 GETIMPORT                        R7 K237 [NumberSequence.new]
      747 NEWTABLE                         R8 0 5
      749 GETIMPORT                        R9 K239 [NumberSequenceKeypoint.new]
      751 LOADN                            R10 0
      752 LOADN                            R11 1
      753 CALL                             R9 2 1
      754 GETIMPORT                        R10 K239 [NumberSequenceKeypoint.new]
      756 LOADK                            R11 K240 [0.05]
      757 LOADN                            R12 1
      758 CALL                             R10 2 1
      759 GETIMPORT                        R11 K239 [NumberSequenceKeypoint.new]
      761 LOADK                            R12 K174 [0.5]
      762 LOADK                            R13 K241 [0.7]
      763 CALL                             R11 2 1
      764 GETIMPORT                        R12 K239 [NumberSequenceKeypoint.new]
      766 LOADK                            R13 K242 [0.95]
      767 LOADN                            R14 1
      768 CALL                             R12 2 1
      769 GETIMPORT                        R13 K239 [NumberSequenceKeypoint.new]
      771 LOADN                            R14 1
      772 LOADN                            R15 1
      773 CALL                             R13 2 -1
      774 SETLIST                          R8 R9 -1 [1]
      776 CALL                             R7 1 1
      777 SETTABLEKS                       R7 R6 K221 ["Transparency"]
      779 GETTABLEKS                       R7 R2 K135 ["IconWidth"]
      781 SETTABLEKS                       R7 R6 K222 ["CheckboxSize"]
      783 GETTABLEKS                       R7 R2 K223 ["IconSize"]
      785 SETTABLEKS                       R7 R6 K223 ["IconSize"]
      787 GETIMPORT                        R7 K154 [UDim2.fromOffset]
      789 LOADN                            R8 150
      790 LOADN                            R9 24
      791 CALL                             R7 2 1
      792 SETTABLEKS                       R7 R6 K224 ["SortItemSize"]
      794 GETTABLEKS                       R8 R2 K75 ["Padding"]
      796 GETTABLEKS                       R9 R2 K135 ["IconWidth"]
      798 ADD                              R7 R8 R9
      799 SETTABLEKS                       R7 R6 K135 ["IconWidth"]
      801 GETTABLEKS                       R7 R2 K225 ["BaseWidth"]
      803 SETTABLEKS                       R7 R6 K225 ["BaseWidth"]
      805 GETTABLEKS                       R9 R2 K75 ["Padding"]
      807 MULK                             R8 R9 K64 [2]
      808 GETTABLEKS                       R9 R2 K135 ["IconWidth"]
      810 ADD                              R7 R8 R9
      811 SETTABLEKS                       R7 R6 K226 ["OffsetWidth"]
      813 GETTABLEKS                       R7 R2 K199 ["CellDataHeight"]
      815 SETTABLEKS                       R7 R6 K227 ["CellHeightDiff"]
      817 GETTABLEKS                       R7 R2 K157 ["PaddingSmall"]
      819 SETTABLEKS                       R7 R6 K230 ["CellTagPadding"]
      821 GETIMPORT                        R7 K113 [UDim.new]
      823 LOADN                            R8 0
      824 LOADN                            R9 60
      825 CALL                             R7 2 1
      826 SETTABLEKS                       R7 R6 K231 ["ColumnMinSize"]
      828 GETTABLEKS                       R7 R2 K75 ["Padding"]
      830 SETTABLEKS                       R7 R6 K232 ["CellContentPadding"]
      832 GETTABLEKS                       R8 R2 K243 ["ItemRowHeightDefault"]
      834 LOADN                            R10 2
      835 GETTABLEKS                       R11 R2 K75 ["Padding"]
      837 MUL                              R9 R10 R11
      838 SUB                              R7 R8 R9
      839 SETTABLEKS                       R7 R6 K233 ["InputHeight"]
      841 MOVE                             R7 R4
      842 LOADK                            R8 K2 ["AssetManager"]
      843 MOVE                             R9 R5
      844 MOVE                             R10 R6
      845 CALL                             R7 3 -1
      846 RETURN                           R7 -1
