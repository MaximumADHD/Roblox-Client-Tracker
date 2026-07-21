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
      448 LOADK                            R14 K194 [".am-size-thumbnailcontainer"]
      449 DUPTABLE                         R15 K140 [{"Size"}]
      450 GETIMPORT                        R16 K196 [UDim2.fromOffset]
      452 GETTABLEKS                       R17 R2 K197 ["ThumbnailContainerSize"]
      454 GETTABLEKS                       R18 R2 K197 ["ThumbnailContainerSize"]
      456 CALL                             R16 2 1
      457 SETTABLEKS                       R16 R15 K139 ["Size"]
      459 CALL                             R13 2 1
      460 MOVE                             R14 R3
      461 LOADK                            R15 K198 [".FillMinusDragX"]
      462 DUPTABLE                         R16 K140 [{"Size"}]
      463 GETIMPORT                        R17 K142 [UDim2.new]
      465 LOADN                            R18 1
      466 GETTABLEKS                       R20 R2 K199 ["PaddingSmall"]
      468 MINUS                            R19 R20
      469 LOADN                            R20 1
      470 LOADN                            R21 0
      471 CALL                             R17 4 1
      472 SETTABLEKS                       R17 R16 K139 ["Size"]
      474 CALL                             R14 2 1
      475 MOVE                             R15 R3
      476 LOADK                            R16 K200 [".FitYPlusDragX"]
      477 DUPTABLE                         R17 K201 [{"Size", "AutomaticSize"}]
      478 GETIMPORT                        R18 K142 [UDim2.new]
      480 LOADN                            R19 1
      481 GETTABLEKS                       R20 R2 K199 ["PaddingSmall"]
      483 LOADN                            R21 0
      484 LOADN                            R22 0
      485 CALL                             R18 4 1
      486 SETTABLEKS                       R18 R17 K139 ["Size"]
      488 GETIMPORT                        R18 K176 [Enum.AutomaticSize.Y]
      490 SETTABLEKS                       R18 R17 K173 ["AutomaticSize"]
      492 CALL                             R15 2 1
      493 MOVE                             R16 R3
      494 LOADK                            R17 K202 [".bg-action-selected"]
      495 DUPTABLE                         R18 K205 [{["BackgroundColor3"] = "$ActionSelected", ["BackgroundTransparency"] = 0}]
      496 CALL                             R16 2 1
      497 MOVE                             R17 R3
      498 LOADK                            R18 K206 [".bg-foreground-main"]
      499 DUPTABLE                         R19 K208 [{["BackgroundColor3"] = "$ForegroundMain", ["BackgroundTransparency"] = 0}]
      500 CALL                             R17 2 1
      501 MOVE                             R18 R3
      502 LOADK                            R19 K209 [".bg-foreground-contrast"]
      503 DUPTABLE                         R20 K210 [{["BackgroundColor3"] = "$ForegroundContrast", ["BackgroundTransparency"] = 0}]
      504 CALL                             R18 2 1
      505 MOVE                             R19 R3
      506 LOADK                            R20 K211 [".bg-paper"]
      507 DUPTABLE                         R21 K213 [{["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0}]
      508 CALL                             R19 2 1
      509 MOVE                             R20 R3
      510 LOADK                            R21 K214 [".anchor-center-right"]
      511 DUPTABLE                         R22 K215 [{"AnchorPoint"}]
      512 GETIMPORT                        R23 K182 [Vector2.new]
      514 LOADN                            R24 1
      515 LOADK                            R25 K216 [0.5]
      516 CALL                             R23 2 1
      517 SETTABLEKS                       R23 R22 K179 ["AnchorPoint"]
      519 CALL                             R20 2 1
      520 MOVE                             R21 R3
      521 LOADK                            R22 K217 [".am-padding-right-xsmall"]
      522 NEWTABLE                         R23 0 0
      524 NEWTABLE                         R24 0 1
      526 MOVE                             R25 R3
      527 LOADK                            R26 K151 ["::UIPadding"]
      528 DUPTABLE                         R27 K218 [{["PaddingRight"] = "$PaddingSmall"}]
      529 CALL                             R25 2 -1
      530 SETLIST                          R24 R25 -1 [1]
      532 CALL                             R21 3 1
      533 SETLIST                          R5 R6 16 [1]
      535 MOVE                             R6 R3
      536 LOADK                            R7 K219 [".am-padding-left-small"]
      537 NEWTABLE                         R8 0 0
      539 NEWTABLE                         R9 0 1
      541 MOVE                             R10 R3
      542 LOADK                            R11 K151 ["::UIPadding"]
      543 DUPTABLE                         R12 K220 [{["PaddingLeft"] = "$PaddingSmall"}]
      544 CALL                             R10 2 -1
      545 SETLIST                          R9 R10 -1 [1]
      547 CALL                             R6 3 1
      548 MOVE                             R7 R3
      549 LOADK                            R8 K221 [".am-padding-left-medium"]
      550 NEWTABLE                         R9 0 0
      552 NEWTABLE                         R10 0 1
      554 MOVE                             R11 R3
      555 LOADK                            R12 K151 ["::UIPadding"]
      556 DUPTABLE                         R13 K222 [{["PaddingLeft"] = "$Padding"}]
      557 CALL                             R11 2 -1
      558 SETLIST                          R10 R11 -1 [1]
      560 CALL                             R7 3 1
      561 MOVE                             R8 R3
      562 LOADK                            R9 K223 [".am-padding-bottom-small"]
      563 NEWTABLE                         R10 0 0
      565 NEWTABLE                         R11 0 1
      567 MOVE                             R12 R3
      568 LOADK                            R13 K151 ["::UIPadding"]
      569 DUPTABLE                         R14 K225 [{["PaddingBottom"] = "$PaddingSmall"}]
      570 CALL                             R12 2 -1
      571 SETLIST                          R11 R12 -1 [1]
      573 CALL                             R8 3 1
      574 MOVE                             R9 R3
      575 LOADK                            R10 K226 [".am-padding-left-sidebar-toggle"]
      576 NEWTABLE                         R11 0 0
      578 NEWTABLE                         R12 0 1
      580 MOVE                             R13 R3
      581 LOADK                            R14 K151 ["::UIPadding"]
      582 DUPTABLE                         R15 K227 [{"PaddingLeft"}]
      583 GETIMPORT                        R16 K155 [UDim.new]
      585 LOADN                            R17 0
      586 GETTABLEKS                       R18 R2 K228 ["SidebarToggleLeftPadding"]
      588 CALL                             R16 2 1
      589 SETTABLEKS                       R16 R15 K160 ["PaddingLeft"]
      591 CALL                             R13 2 -1
      592 SETLIST                          R12 R13 -1 [1]
      594 CALL                             R9 3 1
      595 MOVE                             R10 R3
      596 LOADK                            R11 K229 [".am-padding-top-sidebar-toggle"]
      597 NEWTABLE                         R12 0 0
      599 NEWTABLE                         R13 0 1
      601 MOVE                             R14 R3
      602 LOADK                            R15 K151 ["::UIPadding"]
      603 DUPTABLE                         R16 K153 [{"PaddingTop"}]
      604 GETIMPORT                        R17 K155 [UDim.new]
      606 LOADN                            R18 0
      607 GETTABLEKS                       R19 R2 K230 ["SidebarToggleTopPadding"]
      609 CALL                             R17 2 1
      610 SETTABLEKS                       R17 R16 K152 ["PaddingTop"]
      612 CALL                             R14 2 -1
      613 SETLIST                          R13 R14 -1 [1]
      615 CALL                             R10 3 1
      616 MOVE                             R11 R3
      617 LOADK                            R12 K231 [".am-position-center-right-xoffset-small"]
      618 DUPTABLE                         R13 K232 [{"Position"}]
      619 GETIMPORT                        R14 K142 [UDim2.new]
      621 LOADN                            R15 1
      622 GETTABLEKS                       R17 R2 K199 ["PaddingSmall"]
      624 MINUS                            R16 R17
      625 LOADK                            R17 K216 [0.5]
      626 LOADN                            R18 0
      627 CALL                             R14 4 1
      628 SETTABLEKS                       R14 R13 K107 ["Position"]
      630 CALL                             R11 2 1
      631 MOVE                             R12 R3
      632 LOADK                            R13 K233 [".amr-underlay >> ScrollingFrame"]
      633 DUPTABLE                         R14 K237 [{["VerticalScrollBarInset"], ["HorizontalScrollBarInset"], ["ScrollingDirection"], ["ScrollBarThickness"] = 0, ["BackgroundColor3"]}]
      634 GETIMPORT                        R15 K136 [Enum.ScrollBarInset.None]
      636 SETTABLEKS                       R15 R14 K133 ["VerticalScrollBarInset"]
      638 GETIMPORT                        R15 K136 [Enum.ScrollBarInset.None]
      640 SETTABLEKS                       R15 R14 K234 ["HorizontalScrollBarInset"]
      642 GETIMPORT                        R15 K238 [Enum.ScrollingDirection.Y]
      644 SETTABLEKS                       R15 R14 K235 ["ScrollingDirection"]
      646 GETIMPORT                        R15 K239 [Color3.new]
      648 LOADN                            R16 1
      649 LOADN                            R17 1
      650 LOADN                            R18 0
      651 CALL                             R15 3 1
      652 SETTABLEKS                       R15 R14 K188 ["BackgroundColor3"]
      654 CALL                             R12 2 1
      655 MOVE                             R13 R3
      656 LOADK                            R14 K240 [".am-size-full-celldata"]
      657 DUPTABLE                         R15 K140 [{"Size"}]
      658 GETIMPORT                        R16 K142 [UDim2.new]
      660 LOADN                            R17 1
      661 LOADN                            R18 0
      662 LOADN                            R19 0
      663 GETTABLEKS                       R20 R2 K241 ["CellDataHeight"]
      665 CALL                             R16 4 1
      666 SETTABLEKS                       R16 R15 K139 ["Size"]
      668 CALL                             R13 2 1
      669 MOVE                             R14 R3
      670 LOADK                            R15 K242 [".am-size-scrollbar-full"]
      671 DUPTABLE                         R16 K140 [{"Size"}]
      672 GETIMPORT                        R17 K142 [UDim2.new]
      674 LOADN                            R18 0
      675 GETTABLEKS                       R19 R2 K157 ["LoadingBarHeight"]
      677 LOADN                            R20 1
      678 LOADN                            R21 0
      679 CALL                             R17 4 1
      680 SETTABLEKS                       R17 R16 K139 ["Size"]
      682 CALL                             R14 2 1
      683 MOVE                             R15 R3
      684 LOADK                            R16 K243 [".am-size-full-scrollbar"]
      685 DUPTABLE                         R17 K140 [{"Size"}]
      686 GETIMPORT                        R18 K142 [UDim2.new]
      688 LOADN                            R19 1
      689 LOADN                            R20 0
      690 LOADN                            R21 0
      691 GETTABLEKS                       R22 R2 K157 ["LoadingBarHeight"]
      693 CALL                             R18 4 1
      694 SETTABLEKS                       R18 R17 K139 ["Size"]
      696 CALL                             R15 2 1
      697 MOVE                             R16 R3
      698 LOADK                            R17 K244 [".am-size-full-topbar"]
      699 DUPTABLE                         R18 K140 [{"Size"}]
      700 GETIMPORT                        R19 K142 [UDim2.new]
      702 LOADN                            R20 1
      703 LOADN                            R21 0
      704 LOADN                            R22 0
      705 GETTABLEKS                       R23 R2 K143 ["TopBarHeight"]
      707 CALL                             R19 4 1
      708 SETTABLEKS                       R19 R18 K139 ["Size"]
      710 CALL                             R16 2 1
      711 MOVE                             R17 R3
      712 LOADK                            R18 K245 [".am-size-full-headerrow"]
      713 DUPTABLE                         R19 K140 [{"Size"}]
      714 GETIMPORT                        R20 K142 [UDim2.new]
      716 LOADN                            R21 1
      717 LOADN                            R22 0
      718 LOADN                            R23 0
      719 GETTABLEKS                       R24 R2 K193 ["HeaderRowHeight"]
      721 CALL                             R20 4 1
      722 SETTABLEKS                       R20 R19 K139 ["Size"]
      724 CALL                             R17 2 1
      725 MOVE                             R18 R3
      726 LOADK                            R19 K246 [".am-size-fit-headerrow"]
      727 DUPTABLE                         R20 K201 [{"Size", "AutomaticSize"}]
      728 GETIMPORT                        R21 K196 [UDim2.fromOffset]
      730 LOADN                            R22 0
      731 GETTABLEKS                       R23 R2 K193 ["HeaderRowHeight"]
      733 CALL                             R21 2 1
      734 SETTABLEKS                       R21 R20 K139 ["Size"]
      736 GETIMPORT                        R21 K248 [Enum.AutomaticSize.X]
      738 SETTABLEKS                       R21 R20 K173 ["AutomaticSize"]
      740 CALL                             R18 2 1
      741 MOVE                             R19 R3
      742 LOADK                            R20 K249 [".am-size-icon-xsmall"]
      743 DUPTABLE                         R21 K140 [{"Size"}]
      744 GETTABLEKS                       R22 R2 K250 ["IconSizeXSmall"]
      746 SETTABLEKS                       R22 R21 K139 ["Size"]
      748 CALL                             R19 2 1
      749 MOVE                             R20 R3
      750 LOADK                            R21 K251 [".am-size-icon"]
      751 DUPTABLE                         R22 K253 [{["Size"] = "$IconSize"}]
      752 CALL                             R20 2 1
      753 MOVE                             R21 R3
      754 LOADK                            R22 K254 [".am-bg-action-hover"]
      755 DUPTABLE                         R23 K256 [{["BackgroundColor3"] = "$ActionHover", ["BackgroundTransparency"] = 0}]
      756 CALL                             R21 2 1
      757 SETLIST                          R5 R6 16 [17]
      759 MOVE                             R6 R3
      760 LOADK                            R7 K257 [".am-hover"]
      761 NEWTABLE                         R8 0 0
      763 NEWTABLE                         R9 0 1
      765 MOVE                             R10 R3
      766 LOADK                            R11 K258 [":hover"]
      767 DUPTABLE                         R12 K256 [{["BackgroundColor3"] = "$ActionHover", ["BackgroundTransparency"] = 0}]
      768 CALL                             R10 2 -1
      769 SETLIST                          R9 R10 -1 [1]
      771 CALL                             R6 3 -1
      772 SETLIST                          R5 R6 -1 [33]
      774 DUPTABLE                         R6 K276 [{["PaddingSmall"], ["Padding"], ["PaddingLarge"], ["IconDisabled"] = 0.62, ["Rotation"], ["Transparency"], ["CheckboxSize"], ["IconSize"], ["SortItemSize"], ["IconWidth"], ["BaseWidth"], ["OffsetWidth"], ["CellHeightDiff"], ["ThumbnailSize"] = 50, ["CellTagPadding"], ["ColumnMinSize"], ["CellContentPadding"], ["InputHeight"]}]
      775 GETIMPORT                        R7 K155 [UDim.new]
      777 LOADN                            R8 0
      778 GETTABLEKS                       R9 R2 K199 ["PaddingSmall"]
      780 CALL                             R7 2 1
      781 SETTABLEKS                       R7 R6 K199 ["PaddingSmall"]
      783 GETIMPORT                        R7 K155 [UDim.new]
      785 LOADN                            R8 0
      786 GETTABLEKS                       R9 R2 K117 ["Padding"]
      788 CALL                             R7 2 1
      789 SETTABLEKS                       R7 R6 K117 ["Padding"]
      791 GETIMPORT                        R7 K155 [UDim.new]
      793 LOADN                            R8 0
      794 GETTABLEKS                       R9 R2 K259 ["PaddingLarge"]
      796 CALL                             R7 2 1
      797 SETTABLEKS                       R7 R6 K259 ["PaddingLarge"]
      799 GETTABLEKS                       R7 R2 K277 ["ShimmerRotation"]
      801 SETTABLEKS                       R7 R6 K262 ["Rotation"]
      803 GETIMPORT                        R7 K279 [NumberSequence.new]
      805 NEWTABLE                         R8 0 5
      807 GETIMPORT                        R9 K281 [NumberSequenceKeypoint.new]
      809 LOADN                            R10 0
      810 LOADN                            R11 1
      811 CALL                             R9 2 1
      812 GETIMPORT                        R10 K281 [NumberSequenceKeypoint.new]
      814 LOADK                            R11 K282 [0.05]
      815 LOADN                            R12 1
      816 CALL                             R10 2 1
      817 GETIMPORT                        R11 K281 [NumberSequenceKeypoint.new]
      819 LOADK                            R12 K216 [0.5]
      820 LOADK                            R13 K283 [0.7]
      821 CALL                             R11 2 1
      822 GETIMPORT                        R12 K281 [NumberSequenceKeypoint.new]
      824 LOADK                            R13 K284 [0.95]
      825 LOADN                            R14 1
      826 CALL                             R12 2 1
      827 GETIMPORT                        R13 K281 [NumberSequenceKeypoint.new]
      829 LOADN                            R14 1
      830 LOADN                            R15 1
      831 CALL                             R13 2 -1
      832 SETLIST                          R8 R9 -1 [1]
      834 CALL                             R7 1 1
      835 SETTABLEKS                       R7 R6 K263 ["Transparency"]
      837 GETTABLEKS                       R7 R2 K177 ["IconWidth"]
      839 SETTABLEKS                       R7 R6 K264 ["CheckboxSize"]
      841 GETTABLEKS                       R7 R2 K265 ["IconSize"]
      843 SETTABLEKS                       R7 R6 K265 ["IconSize"]
      845 GETIMPORT                        R7 K196 [UDim2.fromOffset]
      847 LOADN                            R8 150
      848 LOADN                            R9 24
      849 CALL                             R7 2 1
      850 SETTABLEKS                       R7 R6 K266 ["SortItemSize"]
      852 GETTABLEKS                       R8 R2 K117 ["Padding"]
      854 GETTABLEKS                       R9 R2 K177 ["IconWidth"]
      856 ADD                              R7 R8 R9
      857 SETTABLEKS                       R7 R6 K177 ["IconWidth"]
      859 GETTABLEKS                       R7 R2 K267 ["BaseWidth"]
      861 SETTABLEKS                       R7 R6 K267 ["BaseWidth"]
      863 GETTABLEKS                       R9 R2 K117 ["Padding"]
      865 MULK                             R8 R9 K106 [2]
      866 GETTABLEKS                       R9 R2 K177 ["IconWidth"]
      868 ADD                              R7 R8 R9
      869 SETTABLEKS                       R7 R6 K268 ["OffsetWidth"]
      871 GETTABLEKS                       R7 R2 K241 ["CellDataHeight"]
      873 SETTABLEKS                       R7 R6 K269 ["CellHeightDiff"]
      875 GETTABLEKS                       R7 R2 K199 ["PaddingSmall"]
      877 SETTABLEKS                       R7 R6 K272 ["CellTagPadding"]
      879 GETIMPORT                        R7 K155 [UDim.new]
      881 LOADN                            R8 0
      882 LOADN                            R9 60
      883 CALL                             R7 2 1
      884 SETTABLEKS                       R7 R6 K273 ["ColumnMinSize"]
      886 GETTABLEKS                       R7 R2 K117 ["Padding"]
      888 SETTABLEKS                       R7 R6 K274 ["CellContentPadding"]
      890 GETTABLEKS                       R8 R2 K285 ["ItemRowHeightDefault"]
      892 LOADN                            R10 2
      893 GETTABLEKS                       R11 R2 K117 ["Padding"]
      895 MUL                              R9 R10 R11
      896 SUB                              R7 R8 R9
      897 SETTABLEKS                       R7 R6 K275 ["InputHeight"]
      899 MOVE                             R7 R4
      900 LOADK                            R8 K2 ["AssetManager"]
      901 MOVE                             R9 R5
      902 MOVE                             R10 R6
      903 CALL                             R7 3 -1
      904 RETURN                           R7 -1
