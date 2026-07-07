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
      224 NEWTABLE                         R12 0 2
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
      296 CALL                             R14 3 -1
      297 SETLIST                          R12 R13 -1 [1]
      299 CALL                             R9 3 1
      300 MOVE                             R10 R3
      301 LOADK                            R11 K158 [".ScopeOptions"]
      302 NEWTABLE                         R12 0 0
      304 NEWTABLE                         R13 0 3
      306 MOVE                             R14 R3
      307 LOADK                            R15 K159 [">> .Header"]
      308 NEWTABLE                         R16 0 0
      310 NEWTABLE                         R17 0 1
      312 MOVE                             R18 R3
      313 LOADK                            R19 K151 ["::UIPadding"]
      314 DUPTABLE                         R20 K162 [{["PaddingTop"] = "$Padding", ["PaddingLeft"] = "$Padding", ["PaddingRight"] = "$Padding"}]
      315 CALL                             R18 2 -1
      316 SETLIST                          R17 R18 -1 [1]
      318 CALL                             R14 3 1
      319 MOVE                             R15 R3
      320 LOADK                            R16 K163 [">> .Description"]
      321 NEWTABLE                         R17 0 0
      323 NEWTABLE                         R18 0 1
      325 MOVE                             R19 R3
      326 LOADK                            R20 K151 ["::UIPadding"]
      327 DUPTABLE                         R21 K165 [{["PaddingTop"] = "$PaddingSmall", ["PaddingLeft"] = "$Padding", ["PaddingRight"] = "$Padding"}]
      328 CALL                             R19 2 -1
      329 SETLIST                          R18 R19 -1 [1]
      331 CALL                             R15 3 1
      332 MOVE                             R16 R3
      333 LOADK                            R17 K166 [">> .Component-SearchBar"]
      334 NEWTABLE                         R18 0 0
      336 NEWTABLE                         R19 0 1
      338 MOVE                             R20 R3
      339 LOADK                            R21 K151 ["::UIPadding"]
      340 DUPTABLE                         R22 K167 [{["PaddingLeft"] = "$PaddingSmall", ["PaddingRight"] = "$Padding"}]
      341 CALL                             R20 2 -1
      342 SETLIST                          R19 R20 -1 [1]
      344 CALL                             R16 3 -1
      345 SETLIST                          R13 R14 -1 [1]
      347 NEWTABLE                         R14 0 0
      349 CALL                             R10 4 1
      350 MOVE                             R11 R3
      351 LOADK                            R12 K168 [".CheckboxRow"]
      352 DUPTABLE                         R13 K171 [{["BackgroundTransparency"] = 1}]
      353 NEWTABLE                         R14 0 2
      355 MOVE                             R15 R3
      356 LOADK                            R16 K172 ["> .CheckboxRowContents"]
      357 DUPTABLE                         R17 K174 [{"AutomaticSize", "Size"}]
      358 GETIMPORT                        R18 K176 [Enum.AutomaticSize.Y]
      360 SETTABLEKS                       R18 R17 K173 ["AutomaticSize"]
      362 GETIMPORT                        R18 K142 [UDim2.new]
      364 LOADN                            R19 1
      365 GETTABLEKS                       R22 R2 K177 ["IconWidth"]
      367 MINUS                            R21 R22
      368 MULK                             R20 R21 K106 [2]
      369 LOADN                            R21 0
      370 LOADN                            R22 0
      371 CALL                             R18 4 1
      372 SETTABLEKS                       R18 R17 K139 ["Size"]
      374 CALL                             R15 2 1
      375 MOVE                             R16 R3
      376 LOADK                            R17 K178 ["> .Component-Checkbox"]
      377 DUPTABLE                         R18 K180 [{"AnchorPoint", "Position", "Size"}]
      378 GETIMPORT                        R19 K182 [Vector2.new]
      380 LOADN                            R20 1
      381 LOADN                            R21 0
      382 CALL                             R19 2 1
      383 SETTABLEKS                       R19 R18 K179 ["AnchorPoint"]
      385 GETIMPORT                        R19 K111 [UDim2.fromScale]
      387 LOADN                            R20 1
      388 LOADN                            R21 0
      389 CALL                             R19 2 1
      390 SETTABLEKS                       R19 R18 K107 ["Position"]
      392 GETIMPORT                        R19 K111 [UDim2.fromScale]
      394 LOADN                            R20 0
      395 LOADN                            R21 1
      396 CALL                             R19 2 1
      397 SETTABLEKS                       R19 R18 K139 ["Size"]
      399 CALL                             R16 2 -1
      400 SETLIST                          R14 R15 -1 [1]
      402 CALL                             R11 3 1
      403 MOVE                             R12 R3
      404 LOADK                            R13 K183 [".ContentList"]
      405 NEWTABLE                         R14 0 0
      407 NEWTABLE                         R15 0 2
      409 MOVE                             R16 R3
      410 LOADK                            R17 K184 ["> .HeaderRow"]
      411 DUPTABLE                         R18 K190 [{["BorderColor3"] = "$Divider", ["BorderSizePixel"] = 1, ["BackgroundColor3"] = "$ForegroundContrast"}]
      412 NEWTABLE                         R19 0 1
      414 MOVE                             R20 R3
      415 LOADK                            R21 K115 ["::UIListLayout"]
      416 DUPTABLE                         R22 K191 [{"FillDirection", "SortOrder"}]
      417 GETIMPORT                        R23 K126 [Enum.FillDirection.Horizontal]
      419 SETTABLEKS                       R23 R22 K116 ["FillDirection"]
      421 GETIMPORT                        R23 K128 [Enum.SortOrder.LayoutOrder]
      423 SETTABLEKS                       R23 R22 K119 ["SortOrder"]
      425 CALL                             R20 2 -1
      426 SETLIST                          R19 R20 -1 [1]
      428 CALL                             R16 3 1
      429 MOVE                             R17 R3
      430 LOADK                            R18 K192 ["> .ItemList"]
      431 DUPTABLE                         R19 K140 [{"Size"}]
      432 GETIMPORT                        R20 K142 [UDim2.new]
      434 LOADN                            R21 1
      435 LOADN                            R22 0
      436 LOADN                            R23 1
      437 GETTABLEKS                       R25 R2 K193 ["HeaderRowHeight"]
      439 MINUS                            R24 R25
      440 CALL                             R20 4 1
      441 SETTABLEKS                       R20 R19 K139 ["Size"]
      443 CALL                             R17 2 -1
      444 SETLIST                          R15 R16 -1 [1]
      446 CALL                             R12 3 1
      447 MOVE                             R13 R3
      448 LOADK                            R14 K194 [".am-size-itemrow"]
      449 DUPTABLE                         R15 K140 [{"Size"}]
      450 GETIMPORT                        R16 K142 [UDim2.new]
      452 LOADN                            R17 1
      453 LOADN                            R18 0
      454 LOADN                            R19 0
      455 GETTABLEKS                       R20 R2 K195 ["ItemRowHeightDefault"]
      457 CALL                             R16 4 1
      458 SETTABLEKS                       R16 R15 K139 ["Size"]
      460 NEWTABLE                         R16 0 0
      462 CALL                             R13 3 1
      463 MOVE                             R14 R3
      464 LOADK                            R15 K196 [".am-size-thumbnailcontainer"]
      465 DUPTABLE                         R16 K140 [{"Size"}]
      466 GETIMPORT                        R17 K198 [UDim2.fromOffset]
      468 GETTABLEKS                       R18 R2 K199 ["ThumbnailContainerSize"]
      470 GETTABLEKS                       R19 R2 K199 ["ThumbnailContainerSize"]
      472 CALL                             R17 2 1
      473 SETTABLEKS                       R17 R16 K139 ["Size"]
      475 CALL                             R14 2 1
      476 MOVE                             R15 R3
      477 LOADK                            R16 K200 [".FillMinusDragX"]
      478 DUPTABLE                         R17 K140 [{"Size"}]
      479 GETIMPORT                        R18 K142 [UDim2.new]
      481 LOADN                            R19 1
      482 GETTABLEKS                       R21 R2 K201 ["PaddingSmall"]
      484 MINUS                            R20 R21
      485 LOADN                            R21 1
      486 LOADN                            R22 0
      487 CALL                             R18 4 1
      488 SETTABLEKS                       R18 R17 K139 ["Size"]
      490 CALL                             R15 2 1
      491 MOVE                             R16 R3
      492 LOADK                            R17 K202 [".FitYPlusDragX"]
      493 DUPTABLE                         R18 K203 [{"Size", "AutomaticSize"}]
      494 GETIMPORT                        R19 K142 [UDim2.new]
      496 LOADN                            R20 1
      497 GETTABLEKS                       R21 R2 K201 ["PaddingSmall"]
      499 LOADN                            R22 0
      500 LOADN                            R23 0
      501 CALL                             R19 4 1
      502 SETTABLEKS                       R19 R18 K139 ["Size"]
      504 GETIMPORT                        R19 K176 [Enum.AutomaticSize.Y]
      506 SETTABLEKS                       R19 R18 K173 ["AutomaticSize"]
      508 CALL                             R16 2 1
      509 MOVE                             R17 R3
      510 LOADK                            R18 K204 [".bg-action-selected"]
      511 DUPTABLE                         R19 K207 [{["BackgroundColor3"] = "$ActionSelected", ["BackgroundTransparency"] = 0}]
      512 CALL                             R17 2 1
      513 MOVE                             R18 R3
      514 LOADK                            R19 K208 [".bg-foreground-main"]
      515 DUPTABLE                         R20 K210 [{["BackgroundColor3"] = "$ForegroundMain", ["BackgroundTransparency"] = 0}]
      516 CALL                             R18 2 1
      517 MOVE                             R19 R3
      518 LOADK                            R20 K211 [".bg-foreground-contrast"]
      519 DUPTABLE                         R21 K212 [{["BackgroundColor3"] = "$ForegroundContrast", ["BackgroundTransparency"] = 0}]
      520 CALL                             R19 2 1
      521 MOVE                             R20 R3
      522 LOADK                            R21 K213 [".bg-paper"]
      523 DUPTABLE                         R22 K215 [{["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0}]
      524 CALL                             R20 2 1
      525 MOVE                             R21 R3
      526 LOADK                            R22 K216 [".anchor-center-right"]
      527 DUPTABLE                         R23 K217 [{"AnchorPoint"}]
      528 GETIMPORT                        R24 K182 [Vector2.new]
      530 LOADN                            R25 1
      531 LOADK                            R26 K218 [0.5]
      532 CALL                             R24 2 1
      533 SETTABLEKS                       R24 R23 K179 ["AnchorPoint"]
      535 CALL                             R21 2 1
      536 SETLIST                          R5 R6 16 [1]
      538 MOVE                             R6 R3
      539 LOADK                            R7 K219 [".am-padding-right-xsmall"]
      540 NEWTABLE                         R8 0 0
      542 NEWTABLE                         R9 0 1
      544 MOVE                             R10 R3
      545 LOADK                            R11 K151 ["::UIPadding"]
      546 DUPTABLE                         R12 K220 [{["PaddingRight"] = "$PaddingSmall"}]
      547 CALL                             R10 2 -1
      548 SETLIST                          R9 R10 -1 [1]
      550 CALL                             R6 3 1
      551 MOVE                             R7 R3
      552 LOADK                            R8 K221 [".am-padding-left-small"]
      553 NEWTABLE                         R9 0 0
      555 NEWTABLE                         R10 0 1
      557 MOVE                             R11 R3
      558 LOADK                            R12 K151 ["::UIPadding"]
      559 DUPTABLE                         R13 K222 [{["PaddingLeft"] = "$PaddingSmall"}]
      560 CALL                             R11 2 -1
      561 SETLIST                          R10 R11 -1 [1]
      563 CALL                             R7 3 1
      564 MOVE                             R8 R3
      565 LOADK                            R9 K223 [".am-padding-left-medium"]
      566 NEWTABLE                         R10 0 0
      568 NEWTABLE                         R11 0 1
      570 MOVE                             R12 R3
      571 LOADK                            R13 K151 ["::UIPadding"]
      572 DUPTABLE                         R14 K224 [{["PaddingLeft"] = "$Padding"}]
      573 CALL                             R12 2 -1
      574 SETLIST                          R11 R12 -1 [1]
      576 CALL                             R8 3 1
      577 MOVE                             R9 R3
      578 LOADK                            R10 K225 [".am-padding-bottom-small"]
      579 NEWTABLE                         R11 0 0
      581 NEWTABLE                         R12 0 1
      583 MOVE                             R13 R3
      584 LOADK                            R14 K151 ["::UIPadding"]
      585 DUPTABLE                         R15 K227 [{["PaddingBottom"] = "$PaddingSmall"}]
      586 CALL                             R13 2 -1
      587 SETLIST                          R12 R13 -1 [1]
      589 CALL                             R9 3 1
      590 MOVE                             R10 R3
      591 LOADK                            R11 K228 [".am-padding-left-sidebar-toggle"]
      592 NEWTABLE                         R12 0 0
      594 NEWTABLE                         R13 0 1
      596 MOVE                             R14 R3
      597 LOADK                            R15 K151 ["::UIPadding"]
      598 DUPTABLE                         R16 K229 [{"PaddingLeft"}]
      599 GETIMPORT                        R17 K155 [UDim.new]
      601 LOADN                            R18 0
      602 GETTABLEKS                       R19 R2 K230 ["SidebarToggleLeftPadding"]
      604 CALL                             R17 2 1
      605 SETTABLEKS                       R17 R16 K160 ["PaddingLeft"]
      607 CALL                             R14 2 -1
      608 SETLIST                          R13 R14 -1 [1]
      610 CALL                             R10 3 1
      611 MOVE                             R11 R3
      612 LOADK                            R12 K231 [".am-padding-top-sidebar-toggle"]
      613 NEWTABLE                         R13 0 0
      615 NEWTABLE                         R14 0 1
      617 MOVE                             R15 R3
      618 LOADK                            R16 K151 ["::UIPadding"]
      619 DUPTABLE                         R17 K153 [{"PaddingTop"}]
      620 GETIMPORT                        R18 K155 [UDim.new]
      622 LOADN                            R19 0
      623 GETTABLEKS                       R20 R2 K232 ["SidebarToggleTopPadding"]
      625 CALL                             R18 2 1
      626 SETTABLEKS                       R18 R17 K152 ["PaddingTop"]
      628 CALL                             R15 2 -1
      629 SETLIST                          R14 R15 -1 [1]
      631 CALL                             R11 3 1
      632 MOVE                             R12 R3
      633 LOADK                            R13 K233 [".am-position-center-right-xoffset-small"]
      634 DUPTABLE                         R14 K234 [{"Position"}]
      635 GETIMPORT                        R15 K142 [UDim2.new]
      637 LOADN                            R16 1
      638 GETTABLEKS                       R18 R2 K201 ["PaddingSmall"]
      640 MINUS                            R17 R18
      641 LOADK                            R18 K218 [0.5]
      642 LOADN                            R19 0
      643 CALL                             R15 4 1
      644 SETTABLEKS                       R15 R14 K107 ["Position"]
      646 CALL                             R12 2 1
      647 MOVE                             R13 R3
      648 LOADK                            R14 K235 [".amr-underlay >> ScrollingFrame"]
      649 DUPTABLE                         R15 K239 [{["VerticalScrollBarInset"], ["HorizontalScrollBarInset"], ["ScrollingDirection"], ["ScrollBarThickness"] = 0, ["BackgroundColor3"]}]
      650 GETIMPORT                        R16 K136 [Enum.ScrollBarInset.None]
      652 SETTABLEKS                       R16 R15 K133 ["VerticalScrollBarInset"]
      654 GETIMPORT                        R16 K136 [Enum.ScrollBarInset.None]
      656 SETTABLEKS                       R16 R15 K236 ["HorizontalScrollBarInset"]
      658 GETIMPORT                        R16 K240 [Enum.ScrollingDirection.Y]
      660 SETTABLEKS                       R16 R15 K237 ["ScrollingDirection"]
      662 GETIMPORT                        R16 K241 [Color3.new]
      664 LOADN                            R17 1
      665 LOADN                            R18 1
      666 LOADN                            R19 0
      667 CALL                             R16 3 1
      668 SETTABLEKS                       R16 R15 K188 ["BackgroundColor3"]
      670 CALL                             R13 2 1
      671 MOVE                             R14 R3
      672 LOADK                            R15 K242 [".am-size-full-celldata"]
      673 DUPTABLE                         R16 K140 [{"Size"}]
      674 GETIMPORT                        R17 K142 [UDim2.new]
      676 LOADN                            R18 1
      677 LOADN                            R19 0
      678 LOADN                            R20 0
      679 GETTABLEKS                       R21 R2 K243 ["CellDataHeight"]
      681 CALL                             R17 4 1
      682 SETTABLEKS                       R17 R16 K139 ["Size"]
      684 CALL                             R14 2 1
      685 MOVE                             R15 R3
      686 LOADK                            R16 K244 [".am-size-scrollbar-full"]
      687 DUPTABLE                         R17 K140 [{"Size"}]
      688 GETIMPORT                        R18 K142 [UDim2.new]
      690 LOADN                            R19 0
      691 GETTABLEKS                       R20 R2 K157 ["LoadingBarHeight"]
      693 LOADN                            R21 1
      694 LOADN                            R22 0
      695 CALL                             R18 4 1
      696 SETTABLEKS                       R18 R17 K139 ["Size"]
      698 CALL                             R15 2 1
      699 MOVE                             R16 R3
      700 LOADK                            R17 K245 [".am-size-full-scrollbar"]
      701 DUPTABLE                         R18 K140 [{"Size"}]
      702 GETIMPORT                        R19 K142 [UDim2.new]
      704 LOADN                            R20 1
      705 LOADN                            R21 0
      706 LOADN                            R22 0
      707 GETTABLEKS                       R23 R2 K157 ["LoadingBarHeight"]
      709 CALL                             R19 4 1
      710 SETTABLEKS                       R19 R18 K139 ["Size"]
      712 CALL                             R16 2 1
      713 MOVE                             R17 R3
      714 LOADK                            R18 K246 [".am-size-full-topbar"]
      715 DUPTABLE                         R19 K140 [{"Size"}]
      716 GETIMPORT                        R20 K142 [UDim2.new]
      718 LOADN                            R21 1
      719 LOADN                            R22 0
      720 LOADN                            R23 0
      721 GETTABLEKS                       R24 R2 K143 ["TopBarHeight"]
      723 CALL                             R20 4 1
      724 SETTABLEKS                       R20 R19 K139 ["Size"]
      726 CALL                             R17 2 1
      727 MOVE                             R18 R3
      728 LOADK                            R19 K247 [".am-size-full-headerrow"]
      729 DUPTABLE                         R20 K140 [{"Size"}]
      730 GETIMPORT                        R21 K142 [UDim2.new]
      732 LOADN                            R22 1
      733 LOADN                            R23 0
      734 LOADN                            R24 0
      735 GETTABLEKS                       R25 R2 K193 ["HeaderRowHeight"]
      737 CALL                             R21 4 1
      738 SETTABLEKS                       R21 R20 K139 ["Size"]
      740 CALL                             R18 2 1
      741 MOVE                             R19 R3
      742 LOADK                            R20 K248 [".am-size-fit-headerrow"]
      743 DUPTABLE                         R21 K203 [{"Size", "AutomaticSize"}]
      744 GETIMPORT                        R22 K198 [UDim2.fromOffset]
      746 LOADN                            R23 0
      747 GETTABLEKS                       R24 R2 K193 ["HeaderRowHeight"]
      749 CALL                             R22 2 1
      750 SETTABLEKS                       R22 R21 K139 ["Size"]
      752 GETIMPORT                        R22 K250 [Enum.AutomaticSize.X]
      754 SETTABLEKS                       R22 R21 K173 ["AutomaticSize"]
      756 CALL                             R19 2 1
      757 MOVE                             R20 R3
      758 LOADK                            R21 K251 [".am-size-icon-xsmall"]
      759 DUPTABLE                         R22 K140 [{"Size"}]
      760 GETTABLEKS                       R23 R2 K252 ["IconSizeXSmall"]
      762 SETTABLEKS                       R23 R22 K139 ["Size"]
      764 CALL                             R20 2 1
      765 MOVE                             R21 R3
      766 LOADK                            R22 K253 [".am-size-icon"]
      767 DUPTABLE                         R23 K255 [{["Size"] = "$IconSize"}]
      768 CALL                             R21 2 1
      769 SETLIST                          R5 R6 16 [17]
      771 MOVE                             R6 R3
      772 LOADK                            R7 K256 [".am-bg-action-hover"]
      773 DUPTABLE                         R8 K258 [{["BackgroundColor3"] = "$ActionHover", ["BackgroundTransparency"] = 0}]
      774 CALL                             R6 2 1
      775 MOVE                             R7 R3
      776 LOADK                            R8 K259 [".am-hover"]
      777 NEWTABLE                         R9 0 0
      779 NEWTABLE                         R10 0 1
      781 MOVE                             R11 R3
      782 LOADK                            R12 K260 [":hover"]
      783 DUPTABLE                         R13 K258 [{["BackgroundColor3"] = "$ActionHover", ["BackgroundTransparency"] = 0}]
      784 CALL                             R11 2 -1
      785 SETLIST                          R10 R11 -1 [1]
      787 CALL                             R7 3 -1
      788 SETLIST                          R5 R6 -1 [33]
      790 DUPTABLE                         R6 K280 [{["PaddingSmall"], ["Padding"], ["PaddingLarge"], ["IconDisabled"] = 0.62, ["Rotation"], ["Transparency"], ["CheckboxSize"], ["IconSize"], ["SortItemSize"], ["IconWidth"], ["BaseWidth"], ["OffsetWidth"], ["CellHeightDiff"], ["ThumbnailSize"] = 50, ["CellTagPadding"], ["ColumnMinSize"], ["ContentListRowHeight"], ["ListThumbnailSize"], ["CellContentPadding"], ["InputHeight"]}]
      791 GETIMPORT                        R7 K155 [UDim.new]
      793 LOADN                            R8 0
      794 GETTABLEKS                       R9 R2 K201 ["PaddingSmall"]
      796 CALL                             R7 2 1
      797 SETTABLEKS                       R7 R6 K201 ["PaddingSmall"]
      799 GETIMPORT                        R7 K155 [UDim.new]
      801 LOADN                            R8 0
      802 GETTABLEKS                       R9 R2 K117 ["Padding"]
      804 CALL                             R7 2 1
      805 SETTABLEKS                       R7 R6 K117 ["Padding"]
      807 GETIMPORT                        R7 K155 [UDim.new]
      809 LOADN                            R8 0
      810 GETTABLEKS                       R9 R2 K261 ["PaddingLarge"]
      812 CALL                             R7 2 1
      813 SETTABLEKS                       R7 R6 K261 ["PaddingLarge"]
      815 GETTABLEKS                       R7 R2 K281 ["ShimmerRotation"]
      817 SETTABLEKS                       R7 R6 K264 ["Rotation"]
      819 GETIMPORT                        R7 K283 [NumberSequence.new]
      821 NEWTABLE                         R8 0 5
      823 GETIMPORT                        R9 K285 [NumberSequenceKeypoint.new]
      825 LOADN                            R10 0
      826 LOADN                            R11 1
      827 CALL                             R9 2 1
      828 GETIMPORT                        R10 K285 [NumberSequenceKeypoint.new]
      830 LOADK                            R11 K286 [0.05]
      831 LOADN                            R12 1
      832 CALL                             R10 2 1
      833 GETIMPORT                        R11 K285 [NumberSequenceKeypoint.new]
      835 LOADK                            R12 K218 [0.5]
      836 LOADK                            R13 K287 [0.7]
      837 CALL                             R11 2 1
      838 GETIMPORT                        R12 K285 [NumberSequenceKeypoint.new]
      840 LOADK                            R13 K288 [0.95]
      841 LOADN                            R14 1
      842 CALL                             R12 2 1
      843 GETIMPORT                        R13 K285 [NumberSequenceKeypoint.new]
      845 LOADN                            R14 1
      846 LOADN                            R15 1
      847 CALL                             R13 2 -1
      848 SETLIST                          R8 R9 -1 [1]
      850 CALL                             R7 1 1
      851 SETTABLEKS                       R7 R6 K265 ["Transparency"]
      853 GETTABLEKS                       R7 R2 K177 ["IconWidth"]
      855 SETTABLEKS                       R7 R6 K266 ["CheckboxSize"]
      857 GETTABLEKS                       R7 R2 K267 ["IconSize"]
      859 SETTABLEKS                       R7 R6 K267 ["IconSize"]
      861 GETIMPORT                        R7 K142 [UDim2.new]
      863 LOADN                            R8 0
      864 LOADN                            R9 150
      865 LOADN                            R10 0
      866 LOADN                            R11 24
      867 CALL                             R7 4 1
      868 SETTABLEKS                       R7 R6 K268 ["SortItemSize"]
      870 GETTABLEKS                       R8 R2 K117 ["Padding"]
      872 GETTABLEKS                       R9 R2 K177 ["IconWidth"]
      874 ADD                              R7 R8 R9
      875 SETTABLEKS                       R7 R6 K177 ["IconWidth"]
      877 GETTABLEKS                       R7 R2 K269 ["BaseWidth"]
      879 SETTABLEKS                       R7 R6 K269 ["BaseWidth"]
      881 GETTABLEKS                       R9 R2 K117 ["Padding"]
      883 MULK                             R8 R9 K106 [2]
      884 GETTABLEKS                       R9 R2 K177 ["IconWidth"]
      886 ADD                              R7 R8 R9
      887 SETTABLEKS                       R7 R6 K270 ["OffsetWidth"]
      889 GETTABLEKS                       R7 R2 K243 ["CellDataHeight"]
      891 SETTABLEKS                       R7 R6 K271 ["CellHeightDiff"]
      893 GETTABLEKS                       R7 R2 K201 ["PaddingSmall"]
      895 SETTABLEKS                       R7 R6 K274 ["CellTagPadding"]
      897 GETIMPORT                        R7 K155 [UDim.new]
      899 LOADN                            R8 0
      900 LOADN                            R9 60
      901 CALL                             R7 2 1
      902 SETTABLEKS                       R7 R6 K275 ["ColumnMinSize"]
      904 GETTABLEKS                       R7 R2 K195 ["ItemRowHeightDefault"]
      906 SETTABLEKS                       R7 R6 K276 ["ContentListRowHeight"]
      908 GETTABLEKS                       R7 R2 K199 ["ThumbnailContainerSize"]
      910 SETTABLEKS                       R7 R6 K277 ["ListThumbnailSize"]
      912 GETTABLEKS                       R7 R2 K117 ["Padding"]
      914 SETTABLEKS                       R7 R6 K278 ["CellContentPadding"]
      916 GETTABLEKS                       R8 R2 K195 ["ItemRowHeightDefault"]
      918 LOADN                            R10 2
      919 GETTABLEKS                       R11 R2 K117 ["Padding"]
      921 MUL                              R9 R10 R11
      922 SUB                              R7 R8 R9
      923 SETTABLEKS                       R7 R6 K279 ["InputHeight"]
      925 MOVE                             R7 R4
      926 LOADK                            R8 K2 ["AssetManager"]
      927 MOVE                             R9 R5
      928 MOVE                             R10 R6
      929 CALL                             R7 3 -1
      930 RETURN                           R7 -1
