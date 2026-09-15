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
       31 NEWTABLE                         R5 0 31
       33 MOVE                             R6 R3
       34 LOADK                            R7 K14 ["ImageLabel, ImageButton"]
       35 NEWTABLE                         R8 0 0
       37 NEWTABLE                         R9 0 8
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
       86 CALL                             R17 2 -1
       87 SETLIST                          R9 R10 -1 [1]
       89 CALL                             R6 3 1
       90 MOVE                             R7 R3
       91 LOADK                            R8 K46 [".Toolbar"]
       92 NEWTABLE                         R9 0 0
       94 NEWTABLE                         R10 0 1
       96 MOVE                             R11 R3
       97 LOADK                            R12 K47 ["::UIListLayout"]
       98 DUPTABLE                         R13 K55 [{["FillDirection"], ["Padding"] = "$Padding", ["SortOrder"], ["Wraps"] = True, ["HorizontalFlex"]}]
       99 GETIMPORT                        R14 K58 [Enum.FillDirection.Horizontal]
      101 SETTABLEKS                       R14 R13 K48 ["FillDirection"]
      103 GETIMPORT                        R14 K60 [Enum.SortOrder.LayoutOrder]
      105 SETTABLEKS                       R14 R13 K51 ["SortOrder"]
      107 GETIMPORT                        R14 K63 [Enum.UIFlexAlignment.None]
      109 SETTABLEKS                       R14 R13 K54 ["HorizontalFlex"]
      111 CALL                             R11 2 -1
      112 SETLIST                          R10 R11 -1 [1]
      114 CALL                             R7 3 1
      115 MOVE                             R8 R3
      116 LOADK                            R9 K64 ["#TopLevelDetector >> #Menu >> ScrollingFrame"]
      117 DUPTABLE                         R10 K66 [{"VerticalScrollBarInset"}]
      118 GETIMPORT                        R11 K68 [Enum.ScrollBarInset.None]
      120 SETTABLEKS                       R11 R10 K65 ["VerticalScrollBarInset"]
      122 CALL                             R8 2 1
      123 MOVE                             R9 R3
      124 LOADK                            R10 K69 [".App"]
      125 NEWTABLE                         R11 0 0
      127 NEWTABLE                         R12 0 2
      129 MOVE                             R13 R3
      130 LOADK                            R14 K70 [">> .Explorer"]
      131 DUPTABLE                         R15 K72 [{"Size"}]
      132 GETIMPORT                        R16 K75 [UDim2.new]
      134 LOADN                            R17 1
      135 LOADN                            R18 0
      136 LOADN                            R19 1
      137 GETTABLEKS                       R21 R2 K76 ["TopBarHeight"]
      139 MINUS                            R20 R21
      140 CALL                             R16 4 1
      141 SETTABLEKS                       R16 R15 K71 ["Size"]
      143 CALL                             R13 2 1
      144 MOVE                             R14 R3
      145 LOADK                            R15 K77 [">> .MainContents"]
      146 DUPTABLE                         R16 K72 [{"Size"}]
      147 GETIMPORT                        R17 K75 [UDim2.new]
      149 LOADN                            R18 1
      150 LOADN                            R19 0
      151 LOADN                            R20 1
      152 GETTABLEKS                       R22 R2 K76 ["TopBarHeight"]
      154 MINUS                            R21 R22
      155 CALL                             R17 4 1
      156 SETTABLEKS                       R17 R16 K71 ["Size"]
      158 NEWTABLE                         R17 0 3
      160 MOVE                             R18 R3
      161 LOADK                            R19 K78 ["::UIFlexItem"]
      162 DUPTABLE                         R20 K80 [{"FlexMode"}]
      163 GETIMPORT                        R21 K83 [Enum.UIFlexMode.Fill]
      165 SETTABLEKS                       R21 R20 K79 ["FlexMode"]
      167 CALL                             R18 2 1
      168 MOVE                             R19 R3
      169 LOADK                            R20 K84 ["::UIPadding"]
      170 DUPTABLE                         R21 K86 [{"PaddingTop"}]
      171 GETIMPORT                        R22 K88 [UDim.new]
      173 LOADN                            R23 0
      174 LOADN                            R24 1
      175 CALL                             R22 2 1
      176 SETTABLEKS                       R22 R21 K85 ["PaddingTop"]
      178 CALL                             R19 2 1
      179 MOVE                             R20 R3
      180 LOADK                            R21 K89 [".HasLoadingBar"]
      181 DUPTABLE                         R22 K72 [{"Size"}]
      182 GETIMPORT                        R23 K75 [UDim2.new]
      184 LOADN                            R24 1
      185 LOADN                            R25 0
      186 LOADN                            R26 1
      187 GETTABLEKS                       R29 R2 K76 ["TopBarHeight"]
      189 GETTABLEKS                       R30 R2 K90 ["LoadingBarHeight"]
      191 ADD                              R28 R29 R30
      192 MINUS                            R27 R28
      193 CALL                             R23 4 1
      194 SETTABLEKS                       R23 R22 K71 ["Size"]
      196 CALL                             R20 2 -1
      197 SETLIST                          R17 R18 -1 [1]
      199 CALL                             R14 3 -1
      200 SETLIST                          R12 R13 -1 [1]
      202 CALL                             R9 3 1
      203 MOVE                             R10 R3
      204 LOADK                            R11 K91 [".ScopeOptions"]
      205 NEWTABLE                         R12 0 0
      207 NEWTABLE                         R13 0 3
      209 MOVE                             R14 R3
      210 LOADK                            R15 K92 [">> .Header"]
      211 NEWTABLE                         R16 0 0
      213 NEWTABLE                         R17 0 1
      215 MOVE                             R18 R3
      216 LOADK                            R19 K84 ["::UIPadding"]
      217 DUPTABLE                         R20 K95 [{["PaddingTop"] = "$Padding", ["PaddingLeft"] = "$Padding", ["PaddingRight"] = "$Padding"}]
      218 CALL                             R18 2 -1
      219 SETLIST                          R17 R18 -1 [1]
      221 CALL                             R14 3 1
      222 MOVE                             R15 R3
      223 LOADK                            R16 K96 [">> .Description"]
      224 NEWTABLE                         R17 0 0
      226 NEWTABLE                         R18 0 1
      228 MOVE                             R19 R3
      229 LOADK                            R20 K84 ["::UIPadding"]
      230 DUPTABLE                         R21 K98 [{["PaddingTop"] = "$PaddingSmall", ["PaddingLeft"] = "$Padding", ["PaddingRight"] = "$Padding"}]
      231 CALL                             R19 2 -1
      232 SETLIST                          R18 R19 -1 [1]
      234 CALL                             R15 3 1
      235 MOVE                             R16 R3
      236 LOADK                            R17 K99 [">> .Component-SearchBar"]
      237 NEWTABLE                         R18 0 0
      239 NEWTABLE                         R19 0 1
      241 MOVE                             R20 R3
      242 LOADK                            R21 K84 ["::UIPadding"]
      243 DUPTABLE                         R22 K100 [{["PaddingLeft"] = "$PaddingSmall", ["PaddingRight"] = "$Padding"}]
      244 CALL                             R20 2 -1
      245 SETLIST                          R19 R20 -1 [1]
      247 CALL                             R16 3 -1
      248 SETLIST                          R13 R14 -1 [1]
      250 NEWTABLE                         R14 0 0
      252 CALL                             R10 4 1
      253 MOVE                             R11 R3
      254 LOADK                            R12 K101 [".CheckboxRow"]
      255 DUPTABLE                         R13 K104 [{["BackgroundTransparency"] = 1}]
      256 NEWTABLE                         R14 0 2
      258 MOVE                             R15 R3
      259 LOADK                            R16 K105 ["> .CheckboxRowContents"]
      260 DUPTABLE                         R17 K107 [{"AutomaticSize", "Size"}]
      261 GETIMPORT                        R18 K109 [Enum.AutomaticSize.Y]
      263 SETTABLEKS                       R18 R17 K106 ["AutomaticSize"]
      265 GETIMPORT                        R18 K75 [UDim2.new]
      267 LOADN                            R19 1
      268 GETTABLEKS                       R22 R2 K111 ["IconWidth"]
      270 MINUS                            R21 R22
      271 MULK                             R20 R21 K110 [2]
      272 LOADN                            R21 0
      273 LOADN                            R22 0
      274 CALL                             R18 4 1
      275 SETTABLEKS                       R18 R17 K71 ["Size"]
      277 CALL                             R15 2 1
      278 MOVE                             R16 R3
      279 LOADK                            R17 K112 ["> .Component-Checkbox"]
      280 DUPTABLE                         R18 K115 [{"AnchorPoint", "Position", "Size"}]
      281 GETIMPORT                        R19 K117 [Vector2.new]
      283 LOADN                            R20 1
      284 LOADN                            R21 0
      285 CALL                             R19 2 1
      286 SETTABLEKS                       R19 R18 K113 ["AnchorPoint"]
      288 GETIMPORT                        R19 K119 [UDim2.fromScale]
      290 LOADN                            R20 1
      291 LOADN                            R21 0
      292 CALL                             R19 2 1
      293 SETTABLEKS                       R19 R18 K114 ["Position"]
      295 GETIMPORT                        R19 K119 [UDim2.fromScale]
      297 LOADN                            R20 0
      298 LOADN                            R21 1
      299 CALL                             R19 2 1
      300 SETTABLEKS                       R19 R18 K71 ["Size"]
      302 CALL                             R16 2 -1
      303 SETLIST                          R14 R15 -1 [1]
      305 CALL                             R11 3 1
      306 MOVE                             R12 R3
      307 LOADK                            R13 K120 [".ContentList"]
      308 NEWTABLE                         R14 0 0
      310 NEWTABLE                         R15 0 2
      312 MOVE                             R16 R3
      313 LOADK                            R17 K121 ["> .HeaderRow"]
      314 DUPTABLE                         R18 K127 [{["BorderColor3"] = "$Divider", ["BorderSizePixel"] = 1, ["BackgroundColor3"] = "$ForegroundContrast"}]
      315 NEWTABLE                         R19 0 1
      317 MOVE                             R20 R3
      318 LOADK                            R21 K47 ["::UIListLayout"]
      319 DUPTABLE                         R22 K128 [{"FillDirection", "SortOrder"}]
      320 GETIMPORT                        R23 K58 [Enum.FillDirection.Horizontal]
      322 SETTABLEKS                       R23 R22 K48 ["FillDirection"]
      324 GETIMPORT                        R23 K60 [Enum.SortOrder.LayoutOrder]
      326 SETTABLEKS                       R23 R22 K51 ["SortOrder"]
      328 CALL                             R20 2 -1
      329 SETLIST                          R19 R20 -1 [1]
      331 CALL                             R16 3 1
      332 MOVE                             R17 R3
      333 LOADK                            R18 K129 ["> .ItemList"]
      334 DUPTABLE                         R19 K72 [{"Size"}]
      335 GETIMPORT                        R20 K75 [UDim2.new]
      337 LOADN                            R21 1
      338 LOADN                            R22 0
      339 LOADN                            R23 1
      340 GETTABLEKS                       R25 R2 K130 ["HeaderRowHeight"]
      342 MINUS                            R24 R25
      343 CALL                             R20 4 1
      344 SETTABLEKS                       R20 R19 K71 ["Size"]
      346 CALL                             R17 2 -1
      347 SETLIST                          R15 R16 -1 [1]
      349 CALL                             R12 3 1
      350 MOVE                             R13 R3
      351 LOADK                            R14 K131 [".am-size-thumbnailcontainer"]
      352 DUPTABLE                         R15 K72 [{"Size"}]
      353 GETIMPORT                        R16 K133 [UDim2.fromOffset]
      355 GETTABLEKS                       R17 R2 K134 ["ThumbnailContainerSize"]
      357 GETTABLEKS                       R18 R2 K134 ["ThumbnailContainerSize"]
      359 CALL                             R16 2 1
      360 SETTABLEKS                       R16 R15 K71 ["Size"]
      362 CALL                             R13 2 1
      363 MOVE                             R14 R3
      364 LOADK                            R15 K135 [".FillMinusDragX"]
      365 DUPTABLE                         R16 K72 [{"Size"}]
      366 GETIMPORT                        R17 K75 [UDim2.new]
      368 LOADN                            R18 1
      369 GETTABLEKS                       R20 R2 K136 ["PaddingSmall"]
      371 MINUS                            R19 R20
      372 LOADN                            R20 1
      373 LOADN                            R21 0
      374 CALL                             R17 4 1
      375 SETTABLEKS                       R17 R16 K71 ["Size"]
      377 CALL                             R14 2 1
      378 MOVE                             R15 R3
      379 LOADK                            R16 K137 [".FitYPlusDragX"]
      380 DUPTABLE                         R17 K138 [{"Size", "AutomaticSize"}]
      381 GETIMPORT                        R18 K75 [UDim2.new]
      383 LOADN                            R19 1
      384 GETTABLEKS                       R20 R2 K136 ["PaddingSmall"]
      386 LOADN                            R21 0
      387 LOADN                            R22 0
      388 CALL                             R18 4 1
      389 SETTABLEKS                       R18 R17 K71 ["Size"]
      391 GETIMPORT                        R18 K109 [Enum.AutomaticSize.Y]
      393 SETTABLEKS                       R18 R17 K106 ["AutomaticSize"]
      395 CALL                             R15 2 1
      396 MOVE                             R16 R3
      397 LOADK                            R17 K139 [".bg-action-selected"]
      398 DUPTABLE                         R18 K142 [{["BackgroundColor3"] = "$ActionSelected", ["BackgroundTransparency"] = 0}]
      399 CALL                             R16 2 1
      400 MOVE                             R17 R3
      401 LOADK                            R18 K143 [".bg-foreground-main"]
      402 DUPTABLE                         R19 K145 [{["BackgroundColor3"] = "$ForegroundMain", ["BackgroundTransparency"] = 0}]
      403 CALL                             R17 2 1
      404 MOVE                             R18 R3
      405 LOADK                            R19 K146 [".bg-foreground-contrast"]
      406 DUPTABLE                         R20 K147 [{["BackgroundColor3"] = "$ForegroundContrast", ["BackgroundTransparency"] = 0}]
      407 CALL                             R18 2 1
      408 MOVE                             R19 R3
      409 LOADK                            R20 K148 [".bg-paper"]
      410 DUPTABLE                         R21 K150 [{["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0}]
      411 CALL                             R19 2 1
      412 MOVE                             R20 R3
      413 LOADK                            R21 K151 [".anchor-center-right"]
      414 DUPTABLE                         R22 K152 [{"AnchorPoint"}]
      415 GETIMPORT                        R23 K117 [Vector2.new]
      417 LOADN                            R24 1
      418 LOADK                            R25 K153 [0.5]
      419 CALL                             R23 2 1
      420 SETTABLEKS                       R23 R22 K113 ["AnchorPoint"]
      422 CALL                             R20 2 1
      423 MOVE                             R21 R3
      424 LOADK                            R22 K154 [".am-padding-right-xsmall"]
      425 NEWTABLE                         R23 0 0
      427 NEWTABLE                         R24 0 1
      429 MOVE                             R25 R3
      430 LOADK                            R26 K84 ["::UIPadding"]
      431 DUPTABLE                         R27 K155 [{["PaddingRight"] = "$PaddingSmall"}]
      432 CALL                             R25 2 -1
      433 SETLIST                          R24 R25 -1 [1]
      435 CALL                             R21 3 1
      436 SETLIST                          R5 R6 16 [1]
      438 MOVE                             R6 R3
      439 LOADK                            R7 K156 [".am-padding-left-small"]
      440 NEWTABLE                         R8 0 0
      442 NEWTABLE                         R9 0 1
      444 MOVE                             R10 R3
      445 LOADK                            R11 K84 ["::UIPadding"]
      446 DUPTABLE                         R12 K157 [{["PaddingLeft"] = "$PaddingSmall"}]
      447 CALL                             R10 2 -1
      448 SETLIST                          R9 R10 -1 [1]
      450 CALL                             R6 3 1
      451 MOVE                             R7 R3
      452 LOADK                            R8 K158 [".am-padding-left-medium"]
      453 NEWTABLE                         R9 0 0
      455 NEWTABLE                         R10 0 1
      457 MOVE                             R11 R3
      458 LOADK                            R12 K84 ["::UIPadding"]
      459 DUPTABLE                         R13 K159 [{["PaddingLeft"] = "$Padding"}]
      460 CALL                             R11 2 -1
      461 SETLIST                          R10 R11 -1 [1]
      463 CALL                             R7 3 1
      464 MOVE                             R8 R3
      465 LOADK                            R9 K160 [".am-padding-bottom-small"]
      466 NEWTABLE                         R10 0 0
      468 NEWTABLE                         R11 0 1
      470 MOVE                             R12 R3
      471 LOADK                            R13 K84 ["::UIPadding"]
      472 DUPTABLE                         R14 K162 [{["PaddingBottom"] = "$PaddingSmall"}]
      473 CALL                             R12 2 -1
      474 SETLIST                          R11 R12 -1 [1]
      476 CALL                             R8 3 1
      477 MOVE                             R9 R3
      478 LOADK                            R10 K163 [".am-padding-left-sidebar-toggle"]
      479 NEWTABLE                         R11 0 0
      481 NEWTABLE                         R12 0 1
      483 MOVE                             R13 R3
      484 LOADK                            R14 K84 ["::UIPadding"]
      485 DUPTABLE                         R15 K164 [{"PaddingLeft"}]
      486 GETIMPORT                        R16 K88 [UDim.new]
      488 LOADN                            R17 0
      489 GETTABLEKS                       R18 R2 K165 ["SidebarToggleLeftPadding"]
      491 CALL                             R16 2 1
      492 SETTABLEKS                       R16 R15 K93 ["PaddingLeft"]
      494 CALL                             R13 2 -1
      495 SETLIST                          R12 R13 -1 [1]
      497 CALL                             R9 3 1
      498 MOVE                             R10 R3
      499 LOADK                            R11 K166 [".am-padding-top-sidebar-toggle"]
      500 NEWTABLE                         R12 0 0
      502 NEWTABLE                         R13 0 1
      504 MOVE                             R14 R3
      505 LOADK                            R15 K84 ["::UIPadding"]
      506 DUPTABLE                         R16 K86 [{"PaddingTop"}]
      507 GETIMPORT                        R17 K88 [UDim.new]
      509 LOADN                            R18 0
      510 GETTABLEKS                       R19 R2 K167 ["SidebarToggleTopPadding"]
      512 CALL                             R17 2 1
      513 SETTABLEKS                       R17 R16 K85 ["PaddingTop"]
      515 CALL                             R14 2 -1
      516 SETLIST                          R13 R14 -1 [1]
      518 CALL                             R10 3 1
      519 MOVE                             R11 R3
      520 LOADK                            R12 K168 [".am-position-center-right-xoffset-small"]
      521 DUPTABLE                         R13 K169 [{"Position"}]
      522 GETIMPORT                        R14 K75 [UDim2.new]
      524 LOADN                            R15 1
      525 GETTABLEKS                       R17 R2 K136 ["PaddingSmall"]
      527 MINUS                            R16 R17
      528 LOADK                            R17 K153 [0.5]
      529 LOADN                            R18 0
      530 CALL                             R14 4 1
      531 SETTABLEKS                       R14 R13 K114 ["Position"]
      533 CALL                             R11 2 1
      534 MOVE                             R12 R3
      535 LOADK                            R13 K170 [".amr-underlay >> ScrollingFrame"]
      536 DUPTABLE                         R14 K174 [{["VerticalScrollBarInset"], ["HorizontalScrollBarInset"], ["ScrollingDirection"], ["ScrollBarThickness"] = 0, ["BackgroundColor3"]}]
      537 GETIMPORT                        R15 K68 [Enum.ScrollBarInset.None]
      539 SETTABLEKS                       R15 R14 K65 ["VerticalScrollBarInset"]
      541 GETIMPORT                        R15 K68 [Enum.ScrollBarInset.None]
      543 SETTABLEKS                       R15 R14 K171 ["HorizontalScrollBarInset"]
      545 GETIMPORT                        R15 K175 [Enum.ScrollingDirection.Y]
      547 SETTABLEKS                       R15 R14 K172 ["ScrollingDirection"]
      549 GETIMPORT                        R15 K176 [Color3.new]
      551 LOADN                            R16 1
      552 LOADN                            R17 1
      553 LOADN                            R18 0
      554 CALL                             R15 3 1
      555 SETTABLEKS                       R15 R14 K125 ["BackgroundColor3"]
      557 CALL                             R12 2 1
      558 MOVE                             R13 R3
      559 LOADK                            R14 K177 [".am-size-full-celldata"]
      560 DUPTABLE                         R15 K72 [{"Size"}]
      561 GETIMPORT                        R16 K75 [UDim2.new]
      563 LOADN                            R17 1
      564 LOADN                            R18 0
      565 LOADN                            R19 0
      566 GETTABLEKS                       R20 R2 K178 ["CellDataHeight"]
      568 CALL                             R16 4 1
      569 SETTABLEKS                       R16 R15 K71 ["Size"]
      571 CALL                             R13 2 1
      572 MOVE                             R14 R3
      573 LOADK                            R15 K179 [".am-size-scrollbar-full"]
      574 DUPTABLE                         R16 K72 [{"Size"}]
      575 GETIMPORT                        R17 K75 [UDim2.new]
      577 LOADN                            R18 0
      578 GETTABLEKS                       R19 R2 K90 ["LoadingBarHeight"]
      580 LOADN                            R20 1
      581 LOADN                            R21 0
      582 CALL                             R17 4 1
      583 SETTABLEKS                       R17 R16 K71 ["Size"]
      585 CALL                             R14 2 1
      586 MOVE                             R15 R3
      587 LOADK                            R16 K180 [".am-size-full-scrollbar"]
      588 DUPTABLE                         R17 K72 [{"Size"}]
      589 GETIMPORT                        R18 K75 [UDim2.new]
      591 LOADN                            R19 1
      592 LOADN                            R20 0
      593 LOADN                            R21 0
      594 GETTABLEKS                       R22 R2 K90 ["LoadingBarHeight"]
      596 CALL                             R18 4 1
      597 SETTABLEKS                       R18 R17 K71 ["Size"]
      599 CALL                             R15 2 1
      600 MOVE                             R16 R3
      601 LOADK                            R17 K181 [".am-size-full-topbar"]
      602 DUPTABLE                         R18 K72 [{"Size"}]
      603 GETIMPORT                        R19 K75 [UDim2.new]
      605 LOADN                            R20 1
      606 LOADN                            R21 0
      607 LOADN                            R22 0
      608 GETTABLEKS                       R23 R2 K76 ["TopBarHeight"]
      610 CALL                             R19 4 1
      611 SETTABLEKS                       R19 R18 K71 ["Size"]
      613 CALL                             R16 2 1
      614 MOVE                             R17 R3
      615 LOADK                            R18 K182 [".am-size-full-headerrow"]
      616 DUPTABLE                         R19 K72 [{"Size"}]
      617 GETIMPORT                        R20 K75 [UDim2.new]
      619 LOADN                            R21 1
      620 LOADN                            R22 0
      621 LOADN                            R23 0
      622 GETTABLEKS                       R24 R2 K130 ["HeaderRowHeight"]
      624 CALL                             R20 4 1
      625 SETTABLEKS                       R20 R19 K71 ["Size"]
      627 CALL                             R17 2 1
      628 MOVE                             R18 R3
      629 LOADK                            R19 K183 [".am-size-fit-headerrow"]
      630 DUPTABLE                         R20 K138 [{"Size", "AutomaticSize"}]
      631 GETIMPORT                        R21 K133 [UDim2.fromOffset]
      633 LOADN                            R22 0
      634 GETTABLEKS                       R23 R2 K130 ["HeaderRowHeight"]
      636 CALL                             R21 2 1
      637 SETTABLEKS                       R21 R20 K71 ["Size"]
      639 GETIMPORT                        R21 K185 [Enum.AutomaticSize.X]
      641 SETTABLEKS                       R21 R20 K106 ["AutomaticSize"]
      643 CALL                             R18 2 1
      644 MOVE                             R19 R3
      645 LOADK                            R20 K186 [".am-bg-action-hover"]
      646 DUPTABLE                         R21 K188 [{["BackgroundColor3"] = "$ActionHover", ["BackgroundTransparency"] = 0}]
      647 CALL                             R19 2 1
      648 MOVE                             R20 R3
      649 LOADK                            R21 K189 [".am-hover"]
      650 NEWTABLE                         R22 0 0
      652 NEWTABLE                         R23 0 1
      654 MOVE                             R24 R3
      655 LOADK                            R25 K190 [":hover"]
      656 DUPTABLE                         R26 K188 [{["BackgroundColor3"] = "$ActionHover", ["BackgroundTransparency"] = 0}]
      657 CALL                             R24 2 -1
      658 SETLIST                          R23 R24 -1 [1]
      660 CALL                             R20 3 -1
      661 SETLIST                          R5 R6 -1 [17]
      663 DUPTABLE                         R6 K208 [{["PaddingSmall"], ["Padding"], ["PaddingLarge"], ["IconDisabled"] = 0.62, ["Rotation"], ["Transparency"], ["CheckboxSize"], ["IconSize"], ["SortItemSize"], ["IconWidth"], ["BaseWidth"], ["OffsetWidth"], ["CellHeightDiff"], ["ThumbnailSize"] = 50, ["CellTagPadding"], ["ColumnMinSize"], ["CellContentPadding"], ["InputHeight"]}]
      664 GETIMPORT                        R7 K88 [UDim.new]
      666 LOADN                            R8 0
      667 GETTABLEKS                       R9 R2 K136 ["PaddingSmall"]
      669 CALL                             R7 2 1
      670 SETTABLEKS                       R7 R6 K136 ["PaddingSmall"]
      672 GETIMPORT                        R7 K88 [UDim.new]
      674 LOADN                            R8 0
      675 GETTABLEKS                       R9 R2 K49 ["Padding"]
      677 CALL                             R7 2 1
      678 SETTABLEKS                       R7 R6 K49 ["Padding"]
      680 GETIMPORT                        R7 K88 [UDim.new]
      682 LOADN                            R8 0
      683 GETTABLEKS                       R9 R2 K191 ["PaddingLarge"]
      685 CALL                             R7 2 1
      686 SETTABLEKS                       R7 R6 K191 ["PaddingLarge"]
      688 GETTABLEKS                       R7 R2 K209 ["ShimmerRotation"]
      690 SETTABLEKS                       R7 R6 K194 ["Rotation"]
      692 GETIMPORT                        R7 K211 [NumberSequence.new]
      694 NEWTABLE                         R8 0 5
      696 GETIMPORT                        R9 K213 [NumberSequenceKeypoint.new]
      698 LOADN                            R10 0
      699 LOADN                            R11 1
      700 CALL                             R9 2 1
      701 GETIMPORT                        R10 K213 [NumberSequenceKeypoint.new]
      703 LOADK                            R11 K214 [0.05]
      704 LOADN                            R12 1
      705 CALL                             R10 2 1
      706 GETIMPORT                        R11 K213 [NumberSequenceKeypoint.new]
      708 LOADK                            R12 K153 [0.5]
      709 LOADK                            R13 K215 [0.7]
      710 CALL                             R11 2 1
      711 GETIMPORT                        R12 K213 [NumberSequenceKeypoint.new]
      713 LOADK                            R13 K216 [0.95]
      714 LOADN                            R14 1
      715 CALL                             R12 2 1
      716 GETIMPORT                        R13 K213 [NumberSequenceKeypoint.new]
      718 LOADN                            R14 1
      719 LOADN                            R15 1
      720 CALL                             R13 2 -1
      721 SETLIST                          R8 R9 -1 [1]
      723 CALL                             R7 1 1
      724 SETTABLEKS                       R7 R6 K195 ["Transparency"]
      726 GETTABLEKS                       R7 R2 K111 ["IconWidth"]
      728 SETTABLEKS                       R7 R6 K196 ["CheckboxSize"]
      730 GETTABLEKS                       R7 R2 K197 ["IconSize"]
      732 SETTABLEKS                       R7 R6 K197 ["IconSize"]
      734 GETIMPORT                        R7 K133 [UDim2.fromOffset]
      736 LOADN                            R8 150
      737 LOADN                            R9 24
      738 CALL                             R7 2 1
      739 SETTABLEKS                       R7 R6 K198 ["SortItemSize"]
      741 GETTABLEKS                       R8 R2 K49 ["Padding"]
      743 GETTABLEKS                       R9 R2 K111 ["IconWidth"]
      745 ADD                              R7 R8 R9
      746 SETTABLEKS                       R7 R6 K111 ["IconWidth"]
      748 GETTABLEKS                       R7 R2 K199 ["BaseWidth"]
      750 SETTABLEKS                       R7 R6 K199 ["BaseWidth"]
      752 GETTABLEKS                       R9 R2 K49 ["Padding"]
      754 MULK                             R8 R9 K110 [2]
      755 GETTABLEKS                       R9 R2 K111 ["IconWidth"]
      757 ADD                              R7 R8 R9
      758 SETTABLEKS                       R7 R6 K200 ["OffsetWidth"]
      760 GETTABLEKS                       R7 R2 K178 ["CellDataHeight"]
      762 SETTABLEKS                       R7 R6 K201 ["CellHeightDiff"]
      764 GETTABLEKS                       R7 R2 K136 ["PaddingSmall"]
      766 SETTABLEKS                       R7 R6 K204 ["CellTagPadding"]
      768 GETIMPORT                        R7 K88 [UDim.new]
      770 LOADN                            R8 0
      771 LOADN                            R9 60
      772 CALL                             R7 2 1
      773 SETTABLEKS                       R7 R6 K205 ["ColumnMinSize"]
      775 GETTABLEKS                       R7 R2 K49 ["Padding"]
      777 SETTABLEKS                       R7 R6 K206 ["CellContentPadding"]
      779 GETTABLEKS                       R8 R2 K217 ["ListRowHeightDefault"]
      781 LOADN                            R10 2
      782 GETTABLEKS                       R11 R2 K49 ["Padding"]
      784 MUL                              R9 R10 R11
      785 SUB                              R7 R8 R9
      786 SETTABLEKS                       R7 R6 K207 ["InputHeight"]
      788 MOVE                             R7 R4
      789 LOADK                            R8 K2 ["AssetManager"]
      790 MOVE                             R9 R5
      791 MOVE                             R10 R6
      792 CALL                             R7 3 -1
      793 RETURN                           R7 -1
