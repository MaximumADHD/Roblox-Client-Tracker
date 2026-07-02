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
       31 NEWTABLE                         R5 0 34
       33 MOVE                             R6 R3
       34 LOADK                            R7 K14 ["ImageLabel, ImageButton"]
       35 NEWTABLE                         R8 0 0
       37 NEWTABLE                         R9 0 28
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
       84 LOADK                            R18 K43 [".icon-group"]
       85 DUPTABLE                         R19 K45 [{["Image"] = "$GroupDefaultIcon"}]
       86 CALL                             R17 2 1
       87 MOVE                             R18 R3
       88 LOADK                            R19 K46 [".icon-group-large"]
       89 DUPTABLE                         R20 K48 [{["Image"] = "$GroupLargeDefaultIcon"}]
       90 CALL                             R18 2 1
       91 MOVE                             R19 R3
       92 LOADK                            R20 K49 [".icon-import"]
       93 DUPTABLE                         R21 K51 [{["Image"] = "$ImportIcon"}]
       94 CALL                             R19 2 1
       95 MOVE                             R20 R3
       96 LOADK                            R21 K52 [".icon-notification"]
       97 DUPTABLE                         R22 K54 [{["Image"] = "$NotificationIcon"}]
       98 CALL                             R20 2 1
       99 MOVE                             R21 R3
      100 LOADK                            R22 K55 [".icon-assetPlaceholder"]
      101 DUPTABLE                         R23 K57 [{["Image"] = "$PlaceholderAssetIcon"}]
      102 CALL                             R21 2 1
      103 MOVE                             R22 R3
      104 LOADK                            R23 K58 [".icon-placeholder"]
      105 DUPTABLE                         R24 K60 [{["Image"] = "$PlaceholderIcon"}]
      106 CALL                             R22 2 1
      107 MOVE                             R23 R3
      108 LOADK                            R24 K61 [".icon-refresh"]
      109 DUPTABLE                         R25 K63 [{["Image"] = "$RefreshIcon"}]
      110 CALL                             R23 2 1
      111 MOVE                             R24 R3
      112 LOADK                            R25 K64 [".icon-search"]
      113 DUPTABLE                         R26 K66 [{["Image"] = "$SearchIcon"}]
      114 CALL                             R24 2 1
      115 MOVE                             R25 R3
      116 LOADK                            R26 K67 [".icon-collapse"]
      117 DUPTABLE                         R27 K69 [{["Image"] = "$SidebarCollapseIcon"}]
      118 CALL                             R25 2 1
      119 SETLIST                          R9 R10 16 [1]
      121 MOVE                             R10 R3
      122 LOADK                            R11 K70 [".icon-expand"]
      123 DUPTABLE                         R12 K72 [{["Image"] = "$SidebarExpandIcon"}]
      124 CALL                             R10 2 1
      125 MOVE                             R11 R3
      126 LOADK                            R12 K73 [".icon-sort"]
      127 DUPTABLE                         R13 K75 [{["Image"] = "$SortIcon"}]
      128 CALL                             R11 2 1
      129 MOVE                             R12 R3
      130 LOADK                            R13 K76 [".icon-universe"]
      131 DUPTABLE                         R14 K78 [{["Image"] = "$UniverseDefaultIcon"}]
      132 CALL                             R12 2 1
      133 MOVE                             R13 R3
      134 LOADK                            R14 K79 [".icon-universe-large"]
      135 DUPTABLE                         R15 K81 [{["Image"] = "$UniverseLargeDefaultIcon"}]
      136 CALL                             R13 2 1
      137 MOVE                             R14 R3
      138 LOADK                            R15 K82 [".icon-user"]
      139 DUPTABLE                         R16 K84 [{["Image"] = "$UserDefaultIcon"}]
      140 CALL                             R14 2 1
      141 MOVE                             R15 R3
      142 LOADK                            R16 K85 [".icon-user-large"]
      143 DUPTABLE                         R17 K87 [{["Image"] = "$UserLargeDefaultIcon"}]
      144 CALL                             R15 2 1
      145 MOVE                             R16 R3
      146 LOADK                            R17 K88 [".icon-folder"]
      147 DUPTABLE                         R18 K90 [{["Image"] = "$FolderIcon"}]
      148 CALL                             R16 2 1
      149 MOVE                             R17 R3
      150 LOADK                            R18 K91 [".icon-places-folder"]
      151 DUPTABLE                         R19 K93 [{["Image"] = "$PlacesFolderIcon"}]
      152 CALL                             R17 2 1
      153 MOVE                             R18 R3
      154 LOADK                            R19 K94 [".icon-user-folder"]
      155 DUPTABLE                         R20 K96 [{["Image"] = "$UserFolderIcon"}]
      156 CALL                             R18 2 1
      157 MOVE                             R19 R3
      158 LOADK                            R20 K97 [".icon-group-folder"]
      159 DUPTABLE                         R21 K99 [{["Image"] = "$GroupFolderIcon"}]
      160 CALL                             R19 2 1
      161 MOVE                             R20 R3
      162 LOADK                            R21 K100 [".icon-game-folder"]
      163 DUPTABLE                         R22 K102 [{["Image"] = "$GameFolderIcon"}]
      164 CALL                             R20 2 1
      165 MOVE                             R21 R3
      166 LOADK                            R22 K103 [".icon-packageLink"]
      167 DUPTABLE                         R23 K108 [{["Image"] = "$PackageLinkIcon", ["ZIndex"] = 2, ["Position"]}]
      168 GETIMPORT                        R24 K111 [UDim2.fromScale]
      170 LOADN                            R25 1
      171 LOADN                            R26 1
      172 CALL                             R24 2 1
      173 SETTABLEKS                       R24 R23 K107 ["Position"]
      175 NEWTABLE                         R24 0 1
      177 MOVE                             R25 R3
      178 LOADK                            R26 K112 ["> ImageLabel"]
      179 DUPTABLE                         R27 K113 [{["ZIndex"] = 2}]
      180 CALL                             R25 2 -1
      181 SETLIST                          R24 R25 -1 [1]
      183 CALL                             R21 3 -1
      184 SETLIST                          R9 R10 -1 [17]
      186 CALL                             R6 3 1
      187 MOVE                             R7 R3
      188 LOADK                            R8 K114 [".Toolbar"]
      189 NEWTABLE                         R9 0 0
      191 NEWTABLE                         R10 0 1
      193 MOVE                             R11 R3
      194 LOADK                            R12 K115 ["::UIListLayout"]
      195 DUPTABLE                         R13 K123 [{["FillDirection"], ["Padding"] = "$Padding", ["SortOrder"], ["Wraps"] = True, ["HorizontalFlex"]}]
      196 GETIMPORT                        R14 K126 [Enum.FillDirection.Horizontal]
      198 SETTABLEKS                       R14 R13 K116 ["FillDirection"]
      200 GETIMPORT                        R14 K128 [Enum.SortOrder.LayoutOrder]
      202 SETTABLEKS                       R14 R13 K119 ["SortOrder"]
      204 GETIMPORT                        R14 K131 [Enum.UIFlexAlignment.None]
      206 SETTABLEKS                       R14 R13 K122 ["HorizontalFlex"]
      208 CALL                             R11 2 -1
      209 SETLIST                          R10 R11 -1 [1]
      211 CALL                             R7 3 1
      212 MOVE                             R8 R3
      213 LOADK                            R9 K132 ["#TopLevelDetector >> #Menu >> ScrollingFrame"]
      214 DUPTABLE                         R10 K134 [{"VerticalScrollBarInset"}]
      215 GETIMPORT                        R11 K136 [Enum.ScrollBarInset.None]
      217 SETTABLEKS                       R11 R10 K133 ["VerticalScrollBarInset"]
      219 CALL                             R8 2 1
      220 MOVE                             R9 R3
      221 LOADK                            R10 K137 [".App"]
      222 NEWTABLE                         R11 0 0
      224 NEWTABLE                         R12 0 3
      226 MOVE                             R13 R3
      227 LOADK                            R14 K138 [">> .Explorer"]
      228 DUPTABLE                         R15 K140 [{"Size"}]
      229 GETIMPORT                        R16 K142 [UDim2.new]
      231 LOADN                            R17 1
      232 LOADN                            R18 0
      233 LOADN                            R19 1
      234 GETTABLEKS                       R21 R2 K143 ["TopBarHeight"]
      236 MINUS                            R20 R21
      237 CALL                             R16 4 1
      238 SETTABLEKS                       R16 R15 K139 ["Size"]
      240 CALL                             R13 2 1
      241 MOVE                             R14 R3
      242 LOADK                            R15 K144 [">> .MainContents"]
      243 DUPTABLE                         R16 K140 [{"Size"}]
      244 GETIMPORT                        R17 K142 [UDim2.new]
      246 LOADN                            R18 1
      247 LOADN                            R19 0
      248 LOADN                            R20 1
      249 GETTABLEKS                       R22 R2 K143 ["TopBarHeight"]
      251 MINUS                            R21 R22
      252 CALL                             R17 4 1
      253 SETTABLEKS                       R17 R16 K139 ["Size"]
      255 NEWTABLE                         R17 0 3
      257 MOVE                             R18 R3
      258 LOADK                            R19 K145 ["::UIFlexItem"]
      259 DUPTABLE                         R20 K147 [{"FlexMode"}]
      260 GETIMPORT                        R21 K150 [Enum.UIFlexMode.Fill]
      262 SETTABLEKS                       R21 R20 K146 ["FlexMode"]
      264 CALL                             R18 2 1
      265 MOVE                             R19 R3
      266 LOADK                            R20 K151 ["::UIPadding"]
      267 DUPTABLE                         R21 K153 [{"PaddingTop"}]
      268 GETIMPORT                        R22 K155 [UDim.new]
      270 LOADN                            R23 0
      271 LOADN                            R24 1
      272 CALL                             R22 2 1
      273 SETTABLEKS                       R22 R21 K152 ["PaddingTop"]
      275 CALL                             R19 2 1
      276 MOVE                             R20 R3
      277 LOADK                            R21 K156 [".HasLoadingBar"]
      278 DUPTABLE                         R22 K140 [{"Size"}]
      279 GETIMPORT                        R23 K142 [UDim2.new]
      281 LOADN                            R24 1
      282 LOADN                            R25 0
      283 LOADN                            R26 1
      284 GETTABLEKS                       R29 R2 K143 ["TopBarHeight"]
      286 GETTABLEKS                       R30 R2 K157 ["LoadingBarHeight"]
      288 ADD                              R28 R29 R30
      289 MINUS                            R27 R28
      290 CALL                             R23 4 1
      291 SETTABLEKS                       R23 R22 K139 ["Size"]
      293 CALL                             R20 2 -1
      294 SETLIST                          R17 R18 -1 [1]
      296 CALL                             R14 3 1
      297 MOVE                             R15 R3
      298 LOADK                            R16 K158 ["> .SidebarButton"]
      299 DUPTABLE                         R17 K159 [{"Position"}]
      300 GETIMPORT                        R18 K142 [UDim2.new]
      302 LOADN                            R19 0
      303 GETTABLEKS                       R20 R2 K160 ["PaddingSmall"]
      305 LOADN                            R21 0
      306 LOADN                            R24 2
      307 GETTABLEKS                       R25 R2 K160 ["PaddingSmall"]
      309 MUL                              R23 R24 R25
      310 SUBK                             R22 R23 K106 [2]
      311 CALL                             R18 4 1
      312 SETTABLEKS                       R18 R17 K107 ["Position"]
      314 NEWTABLE                         R18 0 1
      316 MOVE                             R19 R3
      317 LOADK                            R20 K161 ["> Frame"]
      318 NEWTABLE                         R21 0 0
      320 NEWTABLE                         R22 0 2
      322 MOVE                             R23 R3
      323 LOADK                            R24 K151 ["::UIPadding"]
      324 DUPTABLE                         R25 K166 [{["PaddingLeft"] = "$PaddingSmall", ["PaddingRight"] = "$PaddingSmall", ["PaddingTop"] = "$PaddingSmall", ["PaddingBottom"] = "$PaddingSmall"}]
      325 CALL                             R23 2 1
      326 MOVE                             R24 R3
      327 LOADK                            R25 K112 ["> ImageLabel"]
      328 DUPTABLE                         R26 K140 [{"Size"}]
      329 GETTABLEKS                       R27 R2 K167 ["IconSizeXSmall"]
      331 SETTABLEKS                       R27 R26 K139 ["Size"]
      333 CALL                             R24 2 -1
      334 SETLIST                          R22 R23 -1 [1]
      336 CALL                             R19 3 -1
      337 SETLIST                          R18 R19 -1 [1]
      339 CALL                             R15 3 -1
      340 SETLIST                          R12 R13 -1 [1]
      342 CALL                             R9 3 1
      343 MOVE                             R10 R3
      344 LOADK                            R11 K168 [".ScopeOptions"]
      345 NEWTABLE                         R12 0 0
      347 NEWTABLE                         R13 0 3
      349 MOVE                             R14 R3
      350 LOADK                            R15 K169 [">> .Header"]
      351 NEWTABLE                         R16 0 0
      353 NEWTABLE                         R17 0 1
      355 MOVE                             R18 R3
      356 LOADK                            R19 K151 ["::UIPadding"]
      357 DUPTABLE                         R20 K170 [{["PaddingTop"] = "$Padding", ["PaddingLeft"] = "$Padding", ["PaddingRight"] = "$Padding"}]
      358 CALL                             R18 2 -1
      359 SETLIST                          R17 R18 -1 [1]
      361 CALL                             R14 3 1
      362 MOVE                             R15 R3
      363 LOADK                            R16 K171 [">> .Description"]
      364 NEWTABLE                         R17 0 0
      366 NEWTABLE                         R18 0 1
      368 MOVE                             R19 R3
      369 LOADK                            R20 K151 ["::UIPadding"]
      370 DUPTABLE                         R21 K172 [{["PaddingTop"] = "$PaddingSmall", ["PaddingLeft"] = "$Padding", ["PaddingRight"] = "$Padding"}]
      371 CALL                             R19 2 -1
      372 SETLIST                          R18 R19 -1 [1]
      374 CALL                             R15 3 1
      375 MOVE                             R16 R3
      376 LOADK                            R17 K173 [">> .Component-SearchBar"]
      377 NEWTABLE                         R18 0 0
      379 NEWTABLE                         R19 0 1
      381 MOVE                             R20 R3
      382 LOADK                            R21 K151 ["::UIPadding"]
      383 DUPTABLE                         R22 K174 [{["PaddingLeft"] = "$PaddingSmall", ["PaddingRight"] = "$Padding"}]
      384 CALL                             R20 2 -1
      385 SETLIST                          R19 R20 -1 [1]
      387 CALL                             R16 3 -1
      388 SETLIST                          R13 R14 -1 [1]
      390 NEWTABLE                         R14 0 0
      392 CALL                             R10 4 1
      393 MOVE                             R11 R3
      394 LOADK                            R12 K175 [".CheckboxRow"]
      395 DUPTABLE                         R13 K178 [{["BackgroundTransparency"] = 1}]
      396 NEWTABLE                         R14 0 2
      398 MOVE                             R15 R3
      399 LOADK                            R16 K179 ["> .CheckboxRowContents"]
      400 DUPTABLE                         R17 K181 [{"AutomaticSize", "Size"}]
      401 GETIMPORT                        R18 K183 [Enum.AutomaticSize.Y]
      403 SETTABLEKS                       R18 R17 K180 ["AutomaticSize"]
      405 GETIMPORT                        R18 K142 [UDim2.new]
      407 LOADN                            R19 1
      408 GETTABLEKS                       R22 R2 K184 ["IconWidth"]
      410 MINUS                            R21 R22
      411 MULK                             R20 R21 K106 [2]
      412 LOADN                            R21 0
      413 LOADN                            R22 0
      414 CALL                             R18 4 1
      415 SETTABLEKS                       R18 R17 K139 ["Size"]
      417 CALL                             R15 2 1
      418 MOVE                             R16 R3
      419 LOADK                            R17 K185 ["> .Component-Checkbox"]
      420 DUPTABLE                         R18 K187 [{"AnchorPoint", "Position", "Size"}]
      421 GETIMPORT                        R19 K189 [Vector2.new]
      423 LOADN                            R20 1
      424 LOADN                            R21 0
      425 CALL                             R19 2 1
      426 SETTABLEKS                       R19 R18 K186 ["AnchorPoint"]
      428 GETIMPORT                        R19 K111 [UDim2.fromScale]
      430 LOADN                            R20 1
      431 LOADN                            R21 0
      432 CALL                             R19 2 1
      433 SETTABLEKS                       R19 R18 K107 ["Position"]
      435 GETIMPORT                        R19 K111 [UDim2.fromScale]
      437 LOADN                            R20 0
      438 LOADN                            R21 1
      439 CALL                             R19 2 1
      440 SETTABLEKS                       R19 R18 K139 ["Size"]
      442 CALL                             R16 2 -1
      443 SETLIST                          R14 R15 -1 [1]
      445 CALL                             R11 3 1
      446 MOVE                             R12 R3
      447 LOADK                            R13 K190 [".SearchOptions"]
      448 NEWTABLE                         R14 0 0
      450 NEWTABLE                         R15 0 1
      452 MOVE                             R16 R3
      453 LOADK                            R17 K191 [">> .ScopeSelector"]
      454 NEWTABLE                         R18 0 0
      456 NEWTABLE                         R19 0 1
      458 MOVE                             R20 R3
      459 LOADK                            R21 K151 ["::UIPadding"]
      460 DUPTABLE                         R22 K193 [{["PaddingLeft"] = "$Padding", ["PaddingRight"] = "$Padding", ["PaddingBottom"] = "$PaddingLarge", ["PaddingTop"] = "$Padding"}]
      461 CALL                             R20 2 -1
      462 SETLIST                          R19 R20 -1 [1]
      464 CALL                             R16 3 -1
      465 SETLIST                          R15 R16 -1 [1]
      467 CALL                             R12 3 1
      468 MOVE                             R13 R3
      469 LOADK                            R14 K194 [".ContentList"]
      470 NEWTABLE                         R15 0 0
      472 NEWTABLE                         R16 0 2
      474 MOVE                             R17 R3
      475 LOADK                            R18 K195 ["> .HeaderRow"]
      476 DUPTABLE                         R19 K201 [{["BorderColor3"] = "$Divider", ["BorderSizePixel"] = 1, ["BackgroundColor3"] = "$ForegroundContrast"}]
      477 NEWTABLE                         R20 0 1
      479 MOVE                             R21 R3
      480 LOADK                            R22 K115 ["::UIListLayout"]
      481 DUPTABLE                         R23 K202 [{"FillDirection", "SortOrder"}]
      482 GETIMPORT                        R24 K126 [Enum.FillDirection.Horizontal]
      484 SETTABLEKS                       R24 R23 K116 ["FillDirection"]
      486 GETIMPORT                        R24 K128 [Enum.SortOrder.LayoutOrder]
      488 SETTABLEKS                       R24 R23 K119 ["SortOrder"]
      490 CALL                             R21 2 -1
      491 SETLIST                          R20 R21 -1 [1]
      493 CALL                             R17 3 1
      494 MOVE                             R18 R3
      495 LOADK                            R19 K203 ["> .ItemList"]
      496 DUPTABLE                         R20 K140 [{"Size"}]
      497 GETIMPORT                        R21 K142 [UDim2.new]
      499 LOADN                            R22 1
      500 LOADN                            R23 0
      501 LOADN                            R24 1
      502 GETTABLEKS                       R26 R2 K204 ["HeaderRowHeight"]
      504 MINUS                            R25 R26
      505 CALL                             R21 4 1
      506 SETTABLEKS                       R21 R20 K139 ["Size"]
      508 CALL                             R18 2 -1
      509 SETLIST                          R16 R17 -1 [1]
      511 CALL                             R13 3 1
      512 MOVE                             R14 R3
      513 LOADK                            R15 K205 [".am-size-itemrow"]
      514 DUPTABLE                         R16 K140 [{"Size"}]
      515 GETIMPORT                        R17 K142 [UDim2.new]
      517 LOADN                            R18 1
      518 LOADN                            R19 0
      519 LOADN                            R20 0
      520 GETTABLEKS                       R21 R2 K206 ["ItemRowHeightDefault"]
      522 CALL                             R17 4 1
      523 SETTABLEKS                       R17 R16 K139 ["Size"]
      525 NEWTABLE                         R17 0 0
      527 CALL                             R14 3 1
      528 MOVE                             R15 R3
      529 LOADK                            R16 K207 [".am-size-thumbnailcontainer"]
      530 DUPTABLE                         R17 K140 [{"Size"}]
      531 GETIMPORT                        R18 K209 [UDim2.fromOffset]
      533 GETTABLEKS                       R19 R2 K210 ["ThumbnailContainerSize"]
      535 GETTABLEKS                       R20 R2 K210 ["ThumbnailContainerSize"]
      537 CALL                             R18 2 1
      538 SETTABLEKS                       R18 R17 K139 ["Size"]
      540 CALL                             R15 2 1
      541 MOVE                             R16 R3
      542 LOADK                            R17 K211 [".TopSidebarButtonPadding"]
      543 DUPTABLE                         R18 K140 [{"Size"}]
      544 GETIMPORT                        R19 K142 [UDim2.new]
      546 LOADN                            R20 0
      547 GETTABLEKS                       R21 R2 K212 ["SidebarTogglePadding"]
      549 LOADN                            R22 0
      550 GETTABLEKS                       R23 R2 K212 ["SidebarTogglePadding"]
      552 CALL                             R19 4 1
      553 SETTABLEKS                       R19 R18 K139 ["Size"]
      555 CALL                             R16 2 1
      556 MOVE                             R17 R3
      557 LOADK                            R18 K213 [".FillMinusDragX"]
      558 DUPTABLE                         R19 K140 [{"Size"}]
      559 GETIMPORT                        R20 K142 [UDim2.new]
      561 LOADN                            R21 1
      562 GETTABLEKS                       R23 R2 K160 ["PaddingSmall"]
      564 MINUS                            R22 R23
      565 LOADN                            R23 1
      566 LOADN                            R24 0
      567 CALL                             R20 4 1
      568 SETTABLEKS                       R20 R19 K139 ["Size"]
      570 CALL                             R17 2 1
      571 MOVE                             R18 R3
      572 LOADK                            R19 K214 [".FitYPlusDragX"]
      573 DUPTABLE                         R20 K215 [{"Size", "AutomaticSize"}]
      574 GETIMPORT                        R21 K142 [UDim2.new]
      576 LOADN                            R22 1
      577 GETTABLEKS                       R23 R2 K160 ["PaddingSmall"]
      579 LOADN                            R24 0
      580 LOADN                            R25 0
      581 CALL                             R21 4 1
      582 SETTABLEKS                       R21 R20 K139 ["Size"]
      584 GETIMPORT                        R21 K183 [Enum.AutomaticSize.Y]
      586 SETTABLEKS                       R21 R20 K180 ["AutomaticSize"]
      588 CALL                             R18 2 1
      589 MOVE                             R19 R3
      590 LOADK                            R20 K216 [".bg-action-selected"]
      591 DUPTABLE                         R21 K219 [{["BackgroundColor3"] = "$ActionSelected", ["BackgroundTransparency"] = 0}]
      592 CALL                             R19 2 1
      593 MOVE                             R20 R3
      594 LOADK                            R21 K220 [".bg-foreground-main"]
      595 DUPTABLE                         R22 K222 [{["BackgroundColor3"] = "$ForegroundMain", ["BackgroundTransparency"] = 0}]
      596 CALL                             R20 2 1
      597 MOVE                             R21 R3
      598 LOADK                            R22 K223 [".bg-foreground-contrast"]
      599 DUPTABLE                         R23 K224 [{["BackgroundColor3"] = "$ForegroundContrast", ["BackgroundTransparency"] = 0}]
      600 CALL                             R21 2 1
      601 SETLIST                          R5 R6 16 [1]
      603 MOVE                             R6 R3
      604 LOADK                            R7 K225 [".bg-paper"]
      605 DUPTABLE                         R8 K227 [{["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0}]
      606 CALL                             R6 2 1
      607 MOVE                             R7 R3
      608 LOADK                            R8 K228 [".anchor-center-right"]
      609 DUPTABLE                         R9 K229 [{"AnchorPoint"}]
      610 GETIMPORT                        R10 K189 [Vector2.new]
      612 LOADN                            R11 1
      613 LOADK                            R12 K230 [0.5]
      614 CALL                             R10 2 1
      615 SETTABLEKS                       R10 R9 K186 ["AnchorPoint"]
      617 CALL                             R7 2 1
      618 MOVE                             R8 R3
      619 LOADK                            R9 K231 [".am-padding-right-xsmall"]
      620 NEWTABLE                         R10 0 0
      622 NEWTABLE                         R11 0 1
      624 MOVE                             R12 R3
      625 LOADK                            R13 K151 ["::UIPadding"]
      626 DUPTABLE                         R14 K232 [{["PaddingRight"] = "$PaddingSmall"}]
      627 CALL                             R12 2 -1
      628 SETLIST                          R11 R12 -1 [1]
      630 CALL                             R8 3 1
      631 MOVE                             R9 R3
      632 LOADK                            R10 K233 [".am-padding-left-small"]
      633 NEWTABLE                         R11 0 0
      635 NEWTABLE                         R12 0 1
      637 MOVE                             R13 R3
      638 LOADK                            R14 K151 ["::UIPadding"]
      639 DUPTABLE                         R15 K234 [{["PaddingLeft"] = "$PaddingSmall"}]
      640 CALL                             R13 2 -1
      641 SETLIST                          R12 R13 -1 [1]
      643 CALL                             R9 3 1
      644 MOVE                             R10 R3
      645 LOADK                            R11 K235 [".am-padding-left-medium"]
      646 NEWTABLE                         R12 0 0
      648 NEWTABLE                         R13 0 1
      650 MOVE                             R14 R3
      651 LOADK                            R15 K151 ["::UIPadding"]
      652 DUPTABLE                         R16 K236 [{["PaddingLeft"] = "$Padding"}]
      653 CALL                             R14 2 -1
      654 SETLIST                          R13 R14 -1 [1]
      656 CALL                             R10 3 1
      657 MOVE                             R11 R3
      658 LOADK                            R12 K237 [".am-padding-bottom-small"]
      659 NEWTABLE                         R13 0 0
      661 NEWTABLE                         R14 0 1
      663 MOVE                             R15 R3
      664 LOADK                            R16 K151 ["::UIPadding"]
      665 DUPTABLE                         R17 K238 [{["PaddingBottom"] = "$PaddingSmall"}]
      666 CALL                             R15 2 -1
      667 SETLIST                          R14 R15 -1 [1]
      669 CALL                             R11 3 1
      670 MOVE                             R12 R3
      671 LOADK                            R13 K239 [".am-position-center-right-xoffset-small"]
      672 DUPTABLE                         R14 K159 [{"Position"}]
      673 GETIMPORT                        R15 K142 [UDim2.new]
      675 LOADN                            R16 1
      676 GETTABLEKS                       R18 R2 K160 ["PaddingSmall"]
      678 MINUS                            R17 R18
      679 LOADK                            R18 K230 [0.5]
      680 LOADN                            R19 0
      681 CALL                             R15 4 1
      682 SETTABLEKS                       R15 R14 K107 ["Position"]
      684 CALL                             R12 2 1
      685 MOVE                             R13 R3
      686 LOADK                            R14 K240 [".amr-underlay >> ScrollingFrame"]
      687 DUPTABLE                         R15 K244 [{["VerticalScrollBarInset"], ["HorizontalScrollBarInset"], ["ScrollingDirection"], ["ScrollBarThickness"] = 0, ["BackgroundColor3"]}]
      688 GETIMPORT                        R16 K136 [Enum.ScrollBarInset.None]
      690 SETTABLEKS                       R16 R15 K133 ["VerticalScrollBarInset"]
      692 GETIMPORT                        R16 K136 [Enum.ScrollBarInset.None]
      694 SETTABLEKS                       R16 R15 K241 ["HorizontalScrollBarInset"]
      696 GETIMPORT                        R16 K245 [Enum.ScrollingDirection.Y]
      698 SETTABLEKS                       R16 R15 K242 ["ScrollingDirection"]
      700 GETIMPORT                        R16 K246 [Color3.new]
      702 LOADN                            R17 1
      703 LOADN                            R18 1
      704 LOADN                            R19 0
      705 CALL                             R16 3 1
      706 SETTABLEKS                       R16 R15 K199 ["BackgroundColor3"]
      708 CALL                             R13 2 1
      709 MOVE                             R14 R3
      710 LOADK                            R15 K247 [".am-size-full-celldata"]
      711 DUPTABLE                         R16 K140 [{"Size"}]
      712 GETIMPORT                        R17 K142 [UDim2.new]
      714 LOADN                            R18 1
      715 LOADN                            R19 0
      716 LOADN                            R20 0
      717 GETTABLEKS                       R21 R2 K248 ["CellDataHeight"]
      719 CALL                             R17 4 1
      720 SETTABLEKS                       R17 R16 K139 ["Size"]
      722 CALL                             R14 2 1
      723 MOVE                             R15 R3
      724 LOADK                            R16 K249 [".am-size-scrollbar-full"]
      725 DUPTABLE                         R17 K140 [{"Size"}]
      726 GETIMPORT                        R18 K142 [UDim2.new]
      728 LOADN                            R19 0
      729 GETTABLEKS                       R20 R2 K157 ["LoadingBarHeight"]
      731 LOADN                            R21 1
      732 LOADN                            R22 0
      733 CALL                             R18 4 1
      734 SETTABLEKS                       R18 R17 K139 ["Size"]
      736 CALL                             R15 2 1
      737 MOVE                             R16 R3
      738 LOADK                            R17 K250 [".am-size-full-scrollbar"]
      739 DUPTABLE                         R18 K140 [{"Size"}]
      740 GETIMPORT                        R19 K142 [UDim2.new]
      742 LOADN                            R20 1
      743 LOADN                            R21 0
      744 LOADN                            R22 0
      745 GETTABLEKS                       R23 R2 K157 ["LoadingBarHeight"]
      747 CALL                             R19 4 1
      748 SETTABLEKS                       R19 R18 K139 ["Size"]
      750 CALL                             R16 2 1
      751 MOVE                             R17 R3
      752 LOADK                            R18 K251 [".am-size-full-topbar"]
      753 DUPTABLE                         R19 K140 [{"Size"}]
      754 GETIMPORT                        R20 K142 [UDim2.new]
      756 LOADN                            R21 1
      757 LOADN                            R22 0
      758 LOADN                            R23 0
      759 GETTABLEKS                       R24 R2 K143 ["TopBarHeight"]
      761 CALL                             R20 4 1
      762 SETTABLEKS                       R20 R19 K139 ["Size"]
      764 CALL                             R17 2 1
      765 MOVE                             R18 R3
      766 LOADK                            R19 K252 [".am-size-full-headerrow"]
      767 DUPTABLE                         R20 K140 [{"Size"}]
      768 GETIMPORT                        R21 K142 [UDim2.new]
      770 LOADN                            R22 1
      771 LOADN                            R23 0
      772 LOADN                            R24 0
      773 GETTABLEKS                       R25 R2 K204 ["HeaderRowHeight"]
      775 CALL                             R21 4 1
      776 SETTABLEKS                       R21 R20 K139 ["Size"]
      778 CALL                             R18 2 1
      779 MOVE                             R19 R3
      780 LOADK                            R20 K253 [".am-size-fit-headerrow"]
      781 DUPTABLE                         R21 K215 [{"Size", "AutomaticSize"}]
      782 GETIMPORT                        R22 K209 [UDim2.fromOffset]
      784 LOADN                            R23 0
      785 GETTABLEKS                       R24 R2 K204 ["HeaderRowHeight"]
      787 CALL                             R22 2 1
      788 SETTABLEKS                       R22 R21 K139 ["Size"]
      790 GETIMPORT                        R22 K255 [Enum.AutomaticSize.X]
      792 SETTABLEKS                       R22 R21 K180 ["AutomaticSize"]
      794 CALL                             R19 2 1
      795 MOVE                             R20 R3
      796 LOADK                            R21 K256 [".am-size-icon-xsmall"]
      797 DUPTABLE                         R22 K140 [{"Size"}]
      798 GETTABLEKS                       R23 R2 K167 ["IconSizeXSmall"]
      800 SETTABLEKS                       R23 R22 K139 ["Size"]
      802 CALL                             R20 2 1
      803 MOVE                             R21 R3
      804 LOADK                            R22 K257 [".am-size-icon"]
      805 DUPTABLE                         R23 K259 [{["Size"] = "$IconSize"}]
      806 CALL                             R21 2 1
      807 SETLIST                          R5 R6 16 [17]
      809 MOVE                             R6 R3
      810 LOADK                            R7 K260 [".am-bg-action-hover"]
      811 DUPTABLE                         R8 K262 [{["BackgroundColor3"] = "$ActionHover", ["BackgroundTransparency"] = 0}]
      812 CALL                             R6 2 1
      813 MOVE                             R7 R3
      814 LOADK                            R8 K263 [".am-hover"]
      815 NEWTABLE                         R9 0 0
      817 NEWTABLE                         R10 0 1
      819 MOVE                             R11 R3
      820 LOADK                            R12 K264 [":hover"]
      821 DUPTABLE                         R13 K262 [{["BackgroundColor3"] = "$ActionHover", ["BackgroundTransparency"] = 0}]
      822 CALL                             R11 2 -1
      823 SETLIST                          R10 R11 -1 [1]
      825 CALL                             R7 3 -1
      826 SETLIST                          R5 R6 -1 [33]
      828 DUPTABLE                         R6 K284 [{["PaddingSmall"], ["Padding"], ["PaddingLarge"], ["IconDisabled"] = 0.62, ["Rotation"], ["Transparency"], ["CheckboxSize"], ["IconSize"], ["SortItemSize"], ["IconWidth"], ["BaseWidth"], ["OffsetWidth"], ["CellHeightDiff"], ["ThumbnailSize"] = 50, ["CellTagPadding"], ["ColumnMinSize"], ["ContentListRowHeight"], ["ListThumbnailSize"], ["CellContentPadding"], ["InputHeight"]}]
      829 GETIMPORT                        R7 K155 [UDim.new]
      831 LOADN                            R8 0
      832 GETTABLEKS                       R9 R2 K160 ["PaddingSmall"]
      834 CALL                             R7 2 1
      835 SETTABLEKS                       R7 R6 K160 ["PaddingSmall"]
      837 GETIMPORT                        R7 K155 [UDim.new]
      839 LOADN                            R8 0
      840 GETTABLEKS                       R9 R2 K117 ["Padding"]
      842 CALL                             R7 2 1
      843 SETTABLEKS                       R7 R6 K117 ["Padding"]
      845 GETIMPORT                        R7 K155 [UDim.new]
      847 LOADN                            R8 0
      848 GETTABLEKS                       R9 R2 K265 ["PaddingLarge"]
      850 CALL                             R7 2 1
      851 SETTABLEKS                       R7 R6 K265 ["PaddingLarge"]
      853 GETTABLEKS                       R7 R2 K285 ["ShimmerRotation"]
      855 SETTABLEKS                       R7 R6 K268 ["Rotation"]
      857 GETIMPORT                        R7 K287 [NumberSequence.new]
      859 NEWTABLE                         R8 0 5
      861 GETIMPORT                        R9 K289 [NumberSequenceKeypoint.new]
      863 LOADN                            R10 0
      864 LOADN                            R11 1
      865 CALL                             R9 2 1
      866 GETIMPORT                        R10 K289 [NumberSequenceKeypoint.new]
      868 LOADK                            R11 K290 [0.05]
      869 LOADN                            R12 1
      870 CALL                             R10 2 1
      871 GETIMPORT                        R11 K289 [NumberSequenceKeypoint.new]
      873 LOADK                            R12 K230 [0.5]
      874 LOADK                            R13 K291 [0.7]
      875 CALL                             R11 2 1
      876 GETIMPORT                        R12 K289 [NumberSequenceKeypoint.new]
      878 LOADK                            R13 K292 [0.95]
      879 LOADN                            R14 1
      880 CALL                             R12 2 1
      881 GETIMPORT                        R13 K289 [NumberSequenceKeypoint.new]
      883 LOADN                            R14 1
      884 LOADN                            R15 1
      885 CALL                             R13 2 -1
      886 SETLIST                          R8 R9 -1 [1]
      888 CALL                             R7 1 1
      889 SETTABLEKS                       R7 R6 K269 ["Transparency"]
      891 GETTABLEKS                       R7 R2 K184 ["IconWidth"]
      893 SETTABLEKS                       R7 R6 K270 ["CheckboxSize"]
      895 GETTABLEKS                       R7 R2 K271 ["IconSize"]
      897 SETTABLEKS                       R7 R6 K271 ["IconSize"]
      899 GETIMPORT                        R7 K142 [UDim2.new]
      901 LOADN                            R8 0
      902 LOADN                            R9 150
      903 LOADN                            R10 0
      904 LOADN                            R11 24
      905 CALL                             R7 4 1
      906 SETTABLEKS                       R7 R6 K272 ["SortItemSize"]
      908 GETTABLEKS                       R8 R2 K117 ["Padding"]
      910 GETTABLEKS                       R9 R2 K184 ["IconWidth"]
      912 ADD                              R7 R8 R9
      913 SETTABLEKS                       R7 R6 K184 ["IconWidth"]
      915 GETTABLEKS                       R7 R2 K273 ["BaseWidth"]
      917 SETTABLEKS                       R7 R6 K273 ["BaseWidth"]
      919 GETTABLEKS                       R9 R2 K117 ["Padding"]
      921 MULK                             R8 R9 K106 [2]
      922 GETTABLEKS                       R9 R2 K184 ["IconWidth"]
      924 ADD                              R7 R8 R9
      925 SETTABLEKS                       R7 R6 K274 ["OffsetWidth"]
      927 GETTABLEKS                       R7 R2 K248 ["CellDataHeight"]
      929 SETTABLEKS                       R7 R6 K275 ["CellHeightDiff"]
      931 GETTABLEKS                       R7 R2 K160 ["PaddingSmall"]
      933 SETTABLEKS                       R7 R6 K278 ["CellTagPadding"]
      935 GETIMPORT                        R7 K155 [UDim.new]
      937 LOADN                            R8 0
      938 LOADN                            R9 60
      939 CALL                             R7 2 1
      940 SETTABLEKS                       R7 R6 K279 ["ColumnMinSize"]
      942 GETTABLEKS                       R7 R2 K206 ["ItemRowHeightDefault"]
      944 SETTABLEKS                       R7 R6 K280 ["ContentListRowHeight"]
      946 GETTABLEKS                       R7 R2 K210 ["ThumbnailContainerSize"]
      948 SETTABLEKS                       R7 R6 K281 ["ListThumbnailSize"]
      950 GETTABLEKS                       R7 R2 K117 ["Padding"]
      952 SETTABLEKS                       R7 R6 K282 ["CellContentPadding"]
      954 GETTABLEKS                       R8 R2 K206 ["ItemRowHeightDefault"]
      956 LOADN                            R10 2
      957 GETTABLEKS                       R11 R2 K117 ["Padding"]
      959 MUL                              R9 R10 R11
      960 SUB                              R7 R8 R9
      961 SETTABLEKS                       R7 R6 K283 ["InputHeight"]
      963 MOVE                             R7 R4
      964 LOADK                            R8 K2 ["AssetManager"]
      965 MOVE                             R9 R5
      966 MOVE                             R10 R6
      967 CALL                             R7 3 -1
      968 RETURN                           R7 -1
