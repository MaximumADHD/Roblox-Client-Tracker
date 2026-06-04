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
       31 NEWTABLE                         R5 0 39
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
       53 DUPTABLE                         R13 K23 [{"Image"}]
       54 LOADK                            R14 K24 ["$ArrowDownIcon"]
       55 SETTABLEKS                       R14 R13 K22 ["Image"]
       57 CALL                             R11 2 1
       58 MOVE                             R12 R3
       59 LOADK                            R13 K25 [".icon-arrow-right"]
       60 DUPTABLE                         R14 K23 [{"Image"}]
       61 LOADK                            R15 K26 ["$ArrowRightIcon"]
       62 SETTABLEKS                       R15 R14 K22 ["Image"]
       64 CALL                             R12 2 1
       65 MOVE                             R13 R3
       66 LOADK                            R14 K27 [".icon-arrow-up"]
       67 DUPTABLE                         R15 K23 [{"Image"}]
       68 LOADK                            R16 K28 ["$ArrowUpIcon"]
       69 SETTABLEKS                       R16 R15 K22 ["Image"]
       71 CALL                             R13 2 1
       72 MOVE                             R14 R3
       73 LOADK                            R15 K29 [".icon-checkmark"]
       74 DUPTABLE                         R16 K23 [{"Image"}]
       75 LOADK                            R17 K30 ["$CheckmarkIcon"]
       76 SETTABLEKS                       R17 R16 K22 ["Image"]
       78 CALL                             R14 2 1
       79 MOVE                             R15 R3
       80 LOADK                            R16 K31 [".icon-clear"]
       81 DUPTABLE                         R17 K23 [{"Image"}]
       82 LOADK                            R18 K32 ["$ClearIcon"]
       83 SETTABLEKS                       R18 R17 K22 ["Image"]
       85 CALL                             R15 2 1
       86 MOVE                             R16 R3
       87 LOADK                            R17 K33 [".icon-filter"]
       88 DUPTABLE                         R18 K17 [{"ImageColor3"}]
       89 LOADK                            R19 K34 ["$AmContentEmphasis"]
       90 SETTABLEKS                       R19 R18 K16 ["ImageColor3"]
       92 NEWTABLE                         R19 0 1
       94 MOVE                             R20 R3
       95 LOADK                            R21 K35 [".Active ImageLabel"]
       96 DUPTABLE                         R22 K17 [{"ImageColor3"}]
       97 LOADK                            R23 K36 ["$PrimaryHoverBackground"]
       98 SETTABLEKS                       R23 R22 K16 ["ImageColor3"]
      100 CALL                             R20 2 -1
      101 SETLIST                          R19 R20 -1 [1]
      103 CALL                             R16 3 1
      104 MOVE                             R17 R3
      105 LOADK                            R18 K37 [".icon-group"]
      106 DUPTABLE                         R19 K23 [{"Image"}]
      107 LOADK                            R20 K38 ["$GroupDefaultIcon"]
      108 SETTABLEKS                       R20 R19 K22 ["Image"]
      110 CALL                             R17 2 1
      111 MOVE                             R18 R3
      112 LOADK                            R19 K39 [".icon-group-large"]
      113 DUPTABLE                         R20 K23 [{"Image"}]
      114 LOADK                            R21 K40 ["$GroupLargeDefaultIcon"]
      115 SETTABLEKS                       R21 R20 K22 ["Image"]
      117 CALL                             R18 2 1
      118 MOVE                             R19 R3
      119 LOADK                            R20 K41 [".icon-import"]
      120 DUPTABLE                         R21 K23 [{"Image"}]
      121 LOADK                            R22 K42 ["$ImportIcon"]
      122 SETTABLEKS                       R22 R21 K22 ["Image"]
      124 CALL                             R19 2 1
      125 MOVE                             R20 R3
      126 LOADK                            R21 K43 [".icon-notification"]
      127 DUPTABLE                         R22 K23 [{"Image"}]
      128 LOADK                            R23 K44 ["$NotificationIcon"]
      129 SETTABLEKS                       R23 R22 K22 ["Image"]
      131 CALL                             R20 2 1
      132 MOVE                             R21 R3
      133 LOADK                            R22 K45 [".icon-assetPlaceholder"]
      134 DUPTABLE                         R23 K23 [{"Image"}]
      135 LOADK                            R24 K46 ["$PlaceholderAssetIcon"]
      136 SETTABLEKS                       R24 R23 K22 ["Image"]
      138 CALL                             R21 2 1
      139 MOVE                             R22 R3
      140 LOADK                            R23 K47 [".icon-placeholder"]
      141 DUPTABLE                         R24 K23 [{"Image"}]
      142 LOADK                            R25 K48 ["$PlaceholderIcon"]
      143 SETTABLEKS                       R25 R24 K22 ["Image"]
      145 CALL                             R22 2 1
      146 MOVE                             R23 R3
      147 LOADK                            R24 K49 [".icon-refresh"]
      148 DUPTABLE                         R25 K23 [{"Image"}]
      149 LOADK                            R26 K50 ["$RefreshIcon"]
      150 SETTABLEKS                       R26 R25 K22 ["Image"]
      152 CALL                             R23 2 1
      153 MOVE                             R24 R3
      154 LOADK                            R25 K51 [".icon-search"]
      155 DUPTABLE                         R26 K23 [{"Image"}]
      156 LOADK                            R27 K52 ["$SearchIcon"]
      157 SETTABLEKS                       R27 R26 K22 ["Image"]
      159 CALL                             R24 2 1
      160 MOVE                             R25 R3
      161 LOADK                            R26 K53 [".icon-collapse"]
      162 DUPTABLE                         R27 K23 [{"Image"}]
      163 LOADK                            R28 K54 ["$SidebarCollapseIcon"]
      164 SETTABLEKS                       R28 R27 K22 ["Image"]
      166 CALL                             R25 2 1
      167 SETLIST                          R9 R10 16 [1]
      169 MOVE                             R10 R3
      170 LOADK                            R11 K55 [".icon-expand"]
      171 DUPTABLE                         R12 K23 [{"Image"}]
      172 LOADK                            R13 K56 ["$SidebarExpandIcon"]
      173 SETTABLEKS                       R13 R12 K22 ["Image"]
      175 CALL                             R10 2 1
      176 MOVE                             R11 R3
      177 LOADK                            R12 K57 [".icon-sort"]
      178 DUPTABLE                         R13 K23 [{"Image"}]
      179 LOADK                            R14 K58 ["$SortIcon"]
      180 SETTABLEKS                       R14 R13 K22 ["Image"]
      182 CALL                             R11 2 1
      183 MOVE                             R12 R3
      184 LOADK                            R13 K59 [".icon-universe"]
      185 DUPTABLE                         R14 K23 [{"Image"}]
      186 LOADK                            R15 K60 ["$UniverseDefaultIcon"]
      187 SETTABLEKS                       R15 R14 K22 ["Image"]
      189 CALL                             R12 2 1
      190 MOVE                             R13 R3
      191 LOADK                            R14 K61 [".icon-universe-large"]
      192 DUPTABLE                         R15 K23 [{"Image"}]
      193 LOADK                            R16 K62 ["$UniverseLargeDefaultIcon"]
      194 SETTABLEKS                       R16 R15 K22 ["Image"]
      196 CALL                             R13 2 1
      197 MOVE                             R14 R3
      198 LOADK                            R15 K63 [".icon-user"]
      199 DUPTABLE                         R16 K23 [{"Image"}]
      200 LOADK                            R17 K64 ["$UserDefaultIcon"]
      201 SETTABLEKS                       R17 R16 K22 ["Image"]
      203 CALL                             R14 2 1
      204 MOVE                             R15 R3
      205 LOADK                            R16 K65 [".icon-user-large"]
      206 DUPTABLE                         R17 K23 [{"Image"}]
      207 LOADK                            R18 K66 ["$UserLargeDefaultIcon"]
      208 SETTABLEKS                       R18 R17 K22 ["Image"]
      210 CALL                             R15 2 1
      211 MOVE                             R16 R3
      212 LOADK                            R17 K67 [".icon-folder"]
      213 DUPTABLE                         R18 K23 [{"Image"}]
      214 LOADK                            R19 K68 ["$FolderIcon"]
      215 SETTABLEKS                       R19 R18 K22 ["Image"]
      217 CALL                             R16 2 1
      218 MOVE                             R17 R3
      219 LOADK                            R18 K69 [".icon-places-folder"]
      220 DUPTABLE                         R19 K23 [{"Image"}]
      221 LOADK                            R20 K70 ["$PlacesFolderIcon"]
      222 SETTABLEKS                       R20 R19 K22 ["Image"]
      224 CALL                             R17 2 1
      225 MOVE                             R18 R3
      226 LOADK                            R19 K71 [".icon-user-folder"]
      227 DUPTABLE                         R20 K23 [{"Image"}]
      228 LOADK                            R21 K72 ["$UserFolderIcon"]
      229 SETTABLEKS                       R21 R20 K22 ["Image"]
      231 CALL                             R18 2 1
      232 MOVE                             R19 R3
      233 LOADK                            R20 K73 [".icon-group-folder"]
      234 DUPTABLE                         R21 K23 [{"Image"}]
      235 LOADK                            R22 K74 ["$GroupFolderIcon"]
      236 SETTABLEKS                       R22 R21 K22 ["Image"]
      238 CALL                             R19 2 1
      239 MOVE                             R20 R3
      240 LOADK                            R21 K75 [".icon-game-folder"]
      241 DUPTABLE                         R22 K23 [{"Image"}]
      242 LOADK                            R23 K76 ["$GameFolderIcon"]
      243 SETTABLEKS                       R23 R22 K22 ["Image"]
      245 CALL                             R20 2 1
      246 MOVE                             R21 R3
      247 LOADK                            R22 K77 [".icon-packageLink"]
      248 DUPTABLE                         R23 K80 [{"Image", "ZIndex", "Position"}]
      249 LOADK                            R24 K81 ["$PackageLinkIcon"]
      250 SETTABLEKS                       R24 R23 K22 ["Image"]
      252 LOADN                            R24 2
      253 SETTABLEKS                       R24 R23 K78 ["ZIndex"]
      255 GETIMPORT                        R24 K84 [UDim2.fromScale]
      257 LOADN                            R25 1
      258 LOADN                            R26 1
      259 CALL                             R24 2 1
      260 SETTABLEKS                       R24 R23 K79 ["Position"]
      262 NEWTABLE                         R24 0 1
      264 MOVE                             R25 R3
      265 LOADK                            R26 K85 ["> ImageLabel"]
      266 DUPTABLE                         R27 K86 [{"ZIndex"}]
      267 LOADN                            R28 2
      268 SETTABLEKS                       R28 R27 K78 ["ZIndex"]
      270 CALL                             R25 2 -1
      271 SETLIST                          R24 R25 -1 [1]
      273 CALL                             R21 3 -1
      274 SETLIST                          R9 R10 -1 [17]
      276 CALL                             R6 3 1
      277 MOVE                             R7 R3
      278 LOADK                            R8 K87 [".Toolbar"]
      279 NEWTABLE                         R9 0 0
      281 NEWTABLE                         R10 0 1
      283 MOVE                             R11 R3
      284 LOADK                            R12 K88 ["::UIListLayout"]
      285 DUPTABLE                         R13 K94 [{"FillDirection", "Padding", "SortOrder", "Wraps", "HorizontalFlex"}]
      286 GETIMPORT                        R14 K97 [Enum.FillDirection.Horizontal]
      288 SETTABLEKS                       R14 R13 K89 ["FillDirection"]
      290 LOADK                            R14 K98 ["$Padding"]
      291 SETTABLEKS                       R14 R13 K90 ["Padding"]
      293 GETIMPORT                        R14 K100 [Enum.SortOrder.LayoutOrder]
      295 SETTABLEKS                       R14 R13 K91 ["SortOrder"]
      297 LOADB                            R14 1
      298 SETTABLEKS                       R14 R13 K92 ["Wraps"]
      300 GETIMPORT                        R14 K103 [Enum.UIFlexAlignment.None]
      302 SETTABLEKS                       R14 R13 K93 ["HorizontalFlex"]
      304 CALL                             R11 2 -1
      305 SETLIST                          R10 R11 -1 [1]
      307 CALL                             R7 3 1
      308 MOVE                             R8 R3
      309 LOADK                            R9 K104 [".AssetThumbnail"]
      310 DUPTABLE                         R10 K106 [{"Size"}]
      311 GETIMPORT                        R11 K84 [UDim2.fromScale]
      313 LOADN                            R12 1
      314 LOADN                            R13 1
      315 CALL                             R11 2 1
      316 SETTABLEKS                       R11 R10 K105 ["Size"]
      318 CALL                             R8 2 1
      319 MOVE                             R9 R3
      320 LOADK                            R10 K107 ["#TopLevelDetector >> #Menu >> ScrollingFrame"]
      321 DUPTABLE                         R11 K109 [{"VerticalScrollBarInset"}]
      322 GETIMPORT                        R12 K111 [Enum.ScrollBarInset.None]
      324 SETTABLEKS                       R12 R11 K108 ["VerticalScrollBarInset"]
      326 CALL                             R9 2 1
      327 MOVE                             R10 R3
      328 LOADK                            R11 K112 [".App"]
      329 NEWTABLE                         R12 0 0
      331 NEWTABLE                         R13 0 3
      333 MOVE                             R14 R3
      334 LOADK                            R15 K113 [">> .Explorer"]
      335 DUPTABLE                         R16 K106 [{"Size"}]
      336 GETIMPORT                        R17 K115 [UDim2.new]
      338 LOADN                            R18 1
      339 LOADN                            R19 0
      340 LOADN                            R20 1
      341 GETTABLEKS                       R22 R2 K116 ["TopBarHeight"]
      343 MINUS                            R21 R22
      344 CALL                             R17 4 1
      345 SETTABLEKS                       R17 R16 K105 ["Size"]
      347 CALL                             R14 2 1
      348 MOVE                             R15 R3
      349 LOADK                            R16 K117 [">> .MainContents"]
      350 DUPTABLE                         R17 K106 [{"Size"}]
      351 GETIMPORT                        R18 K115 [UDim2.new]
      353 LOADN                            R19 1
      354 LOADN                            R20 0
      355 LOADN                            R21 1
      356 GETTABLEKS                       R23 R2 K116 ["TopBarHeight"]
      358 MINUS                            R22 R23
      359 CALL                             R18 4 1
      360 SETTABLEKS                       R18 R17 K105 ["Size"]
      362 NEWTABLE                         R18 0 3
      364 MOVE                             R19 R3
      365 LOADK                            R20 K118 ["::UIFlexItem"]
      366 DUPTABLE                         R21 K120 [{"FlexMode"}]
      367 GETIMPORT                        R22 K123 [Enum.UIFlexMode.Fill]
      369 SETTABLEKS                       R22 R21 K119 ["FlexMode"]
      371 CALL                             R19 2 1
      372 MOVE                             R20 R3
      373 LOADK                            R21 K124 ["::UIPadding"]
      374 DUPTABLE                         R22 K126 [{"PaddingTop"}]
      375 GETIMPORT                        R23 K128 [UDim.new]
      377 LOADN                            R24 0
      378 LOADN                            R25 1
      379 CALL                             R23 2 1
      380 SETTABLEKS                       R23 R22 K125 ["PaddingTop"]
      382 CALL                             R20 2 1
      383 MOVE                             R21 R3
      384 LOADK                            R22 K129 [".HasLoadingBar"]
      385 DUPTABLE                         R23 K106 [{"Size"}]
      386 GETIMPORT                        R24 K115 [UDim2.new]
      388 LOADN                            R25 1
      389 LOADN                            R26 0
      390 LOADN                            R27 1
      391 GETTABLEKS                       R30 R2 K116 ["TopBarHeight"]
      393 GETTABLEKS                       R31 R2 K130 ["LoadingBarHeight"]
      395 ADD                              R29 R30 R31
      396 MINUS                            R28 R29
      397 CALL                             R24 4 1
      398 SETTABLEKS                       R24 R23 K105 ["Size"]
      400 CALL                             R21 2 -1
      401 SETLIST                          R18 R19 -1 [1]
      403 CALL                             R15 3 1
      404 MOVE                             R16 R3
      405 LOADK                            R17 K131 ["> .SidebarButton"]
      406 DUPTABLE                         R18 K132 [{"Position"}]
      407 GETIMPORT                        R19 K115 [UDim2.new]
      409 LOADN                            R20 0
      410 GETTABLEKS                       R21 R2 K133 ["PaddingSmall"]
      412 LOADN                            R22 0
      413 LOADN                            R25 2
      414 GETTABLEKS                       R26 R2 K133 ["PaddingSmall"]
      416 MUL                              R24 R25 R26
      417 SUBK                             R23 R24 K134 [2]
      418 CALL                             R19 4 1
      419 SETTABLEKS                       R19 R18 K79 ["Position"]
      421 NEWTABLE                         R19 0 1
      423 MOVE                             R20 R3
      424 LOADK                            R21 K135 ["> Frame"]
      425 NEWTABLE                         R22 0 0
      427 NEWTABLE                         R23 0 2
      429 MOVE                             R24 R3
      430 LOADK                            R25 K124 ["::UIPadding"]
      431 DUPTABLE                         R26 K139 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      432 LOADK                            R27 K140 ["$PaddingSmall"]
      433 SETTABLEKS                       R27 R26 K136 ["PaddingLeft"]
      435 LOADK                            R27 K140 ["$PaddingSmall"]
      436 SETTABLEKS                       R27 R26 K137 ["PaddingRight"]
      438 LOADK                            R27 K140 ["$PaddingSmall"]
      439 SETTABLEKS                       R27 R26 K125 ["PaddingTop"]
      441 LOADK                            R27 K140 ["$PaddingSmall"]
      442 SETTABLEKS                       R27 R26 K138 ["PaddingBottom"]
      444 CALL                             R24 2 1
      445 MOVE                             R25 R3
      446 LOADK                            R26 K85 ["> ImageLabel"]
      447 DUPTABLE                         R27 K106 [{"Size"}]
      448 GETTABLEKS                       R28 R2 K141 ["IconSizeXSmall"]
      450 SETTABLEKS                       R28 R27 K105 ["Size"]
      452 CALL                             R25 2 -1
      453 SETLIST                          R23 R24 -1 [1]
      455 CALL                             R20 3 -1
      456 SETLIST                          R19 R20 -1 [1]
      458 CALL                             R16 3 -1
      459 SETLIST                          R13 R14 -1 [1]
      461 CALL                             R10 3 1
      462 MOVE                             R11 R3
      463 LOADK                            R12 K142 [".ScopeOptions"]
      464 NEWTABLE                         R13 0 0
      466 NEWTABLE                         R14 0 3
      468 MOVE                             R15 R3
      469 LOADK                            R16 K143 [">> .Header"]
      470 NEWTABLE                         R17 0 0
      472 NEWTABLE                         R18 0 1
      474 MOVE                             R19 R3
      475 LOADK                            R20 K124 ["::UIPadding"]
      476 DUPTABLE                         R21 K144 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
      477 LOADK                            R22 K98 ["$Padding"]
      478 SETTABLEKS                       R22 R21 K125 ["PaddingTop"]
      480 LOADK                            R22 K98 ["$Padding"]
      481 SETTABLEKS                       R22 R21 K136 ["PaddingLeft"]
      483 LOADK                            R22 K98 ["$Padding"]
      484 SETTABLEKS                       R22 R21 K137 ["PaddingRight"]
      486 CALL                             R19 2 -1
      487 SETLIST                          R18 R19 -1 [1]
      489 CALL                             R15 3 1
      490 MOVE                             R16 R3
      491 LOADK                            R17 K145 [">> .Description"]
      492 NEWTABLE                         R18 0 0
      494 NEWTABLE                         R19 0 1
      496 MOVE                             R20 R3
      497 LOADK                            R21 K124 ["::UIPadding"]
      498 DUPTABLE                         R22 K144 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
      499 LOADK                            R23 K140 ["$PaddingSmall"]
      500 SETTABLEKS                       R23 R22 K125 ["PaddingTop"]
      502 LOADK                            R23 K98 ["$Padding"]
      503 SETTABLEKS                       R23 R22 K136 ["PaddingLeft"]
      505 LOADK                            R23 K98 ["$Padding"]
      506 SETTABLEKS                       R23 R22 K137 ["PaddingRight"]
      508 CALL                             R20 2 -1
      509 SETLIST                          R19 R20 -1 [1]
      511 CALL                             R16 3 1
      512 MOVE                             R17 R3
      513 LOADK                            R18 K146 [">> .Component-SearchBar"]
      514 NEWTABLE                         R19 0 0
      516 NEWTABLE                         R20 0 1
      518 MOVE                             R21 R3
      519 LOADK                            R22 K124 ["::UIPadding"]
      520 DUPTABLE                         R23 K147 [{"PaddingLeft", "PaddingRight"}]
      521 LOADK                            R24 K140 ["$PaddingSmall"]
      522 SETTABLEKS                       R24 R23 K136 ["PaddingLeft"]
      524 LOADK                            R24 K98 ["$Padding"]
      525 SETTABLEKS                       R24 R23 K137 ["PaddingRight"]
      527 CALL                             R21 2 -1
      528 SETLIST                          R20 R21 -1 [1]
      530 CALL                             R17 3 -1
      531 SETLIST                          R14 R15 -1 [1]
      533 NEWTABLE                         R15 0 0
      535 CALL                             R11 4 1
      536 MOVE                             R12 R3
      537 LOADK                            R13 K148 [".CheckboxRow"]
      538 DUPTABLE                         R14 K150 [{"BackgroundTransparency"}]
      539 LOADN                            R15 1
      540 SETTABLEKS                       R15 R14 K149 ["BackgroundTransparency"]
      542 NEWTABLE                         R15 0 2
      544 MOVE                             R16 R3
      545 LOADK                            R17 K151 ["> .CheckboxRowContents"]
      546 DUPTABLE                         R18 K153 [{"AutomaticSize", "Size"}]
      547 GETIMPORT                        R19 K155 [Enum.AutomaticSize.Y]
      549 SETTABLEKS                       R19 R18 K152 ["AutomaticSize"]
      551 GETIMPORT                        R19 K115 [UDim2.new]
      553 LOADN                            R20 1
      554 GETTABLEKS                       R23 R2 K156 ["IconWidth"]
      556 MINUS                            R22 R23
      557 MULK                             R21 R22 K134 [2]
      558 LOADN                            R22 0
      559 LOADN                            R23 0
      560 CALL                             R19 4 1
      561 SETTABLEKS                       R19 R18 K105 ["Size"]
      563 CALL                             R16 2 1
      564 MOVE                             R17 R3
      565 LOADK                            R18 K157 ["> .Component-Checkbox"]
      566 DUPTABLE                         R19 K159 [{"AnchorPoint", "Position", "Size"}]
      567 GETIMPORT                        R20 K161 [Vector2.new]
      569 LOADN                            R21 1
      570 LOADN                            R22 0
      571 CALL                             R20 2 1
      572 SETTABLEKS                       R20 R19 K158 ["AnchorPoint"]
      574 GETIMPORT                        R20 K84 [UDim2.fromScale]
      576 LOADN                            R21 1
      577 LOADN                            R22 0
      578 CALL                             R20 2 1
      579 SETTABLEKS                       R20 R19 K79 ["Position"]
      581 GETIMPORT                        R20 K84 [UDim2.fromScale]
      583 LOADN                            R21 0
      584 LOADN                            R22 1
      585 CALL                             R20 2 1
      586 SETTABLEKS                       R20 R19 K105 ["Size"]
      588 CALL                             R17 2 -1
      589 SETLIST                          R15 R16 -1 [1]
      591 CALL                             R12 3 1
      592 MOVE                             R13 R3
      593 LOADK                            R14 K162 [".SearchOptions"]
      594 NEWTABLE                         R15 0 0
      596 NEWTABLE                         R16 0 1
      598 MOVE                             R17 R3
      599 LOADK                            R18 K163 [">> .ScopeSelector"]
      600 NEWTABLE                         R19 0 0
      602 NEWTABLE                         R20 0 1
      604 MOVE                             R21 R3
      605 LOADK                            R22 K124 ["::UIPadding"]
      606 DUPTABLE                         R23 K164 [{"PaddingLeft", "PaddingRight", "PaddingBottom", "PaddingTop"}]
      607 LOADK                            R24 K98 ["$Padding"]
      608 SETTABLEKS                       R24 R23 K136 ["PaddingLeft"]
      610 LOADK                            R24 K98 ["$Padding"]
      611 SETTABLEKS                       R24 R23 K137 ["PaddingRight"]
      613 LOADK                            R24 K165 ["$PaddingLarge"]
      614 SETTABLEKS                       R24 R23 K138 ["PaddingBottom"]
      616 LOADK                            R24 K98 ["$Padding"]
      617 SETTABLEKS                       R24 R23 K125 ["PaddingTop"]
      619 CALL                             R21 2 -1
      620 SETLIST                          R20 R21 -1 [1]
      622 CALL                             R17 3 -1
      623 SETLIST                          R16 R17 -1 [1]
      625 CALL                             R13 3 1
      626 MOVE                             R14 R3
      627 LOADK                            R15 K166 [".CellThumbnailContainer"]
      628 DUPTABLE                         R16 K106 [{"Size"}]
      629 GETIMPORT                        R17 K115 [UDim2.new]
      631 LOADN                            R18 1
      632 LOADN                            R19 0
      633 LOADN                            R20 1
      634 GETTABLEKS                       R22 R2 K167 ["CellDataHeight"]
      636 MINUS                            R21 R22
      637 CALL                             R17 4 1
      638 SETTABLEKS                       R17 R16 K105 ["Size"]
      640 CALL                             R14 2 1
      641 MOVE                             R15 R3
      642 LOADK                            R16 K168 [".ContentList"]
      643 NEWTABLE                         R17 0 0
      645 NEWTABLE                         R18 0 2
      647 MOVE                             R19 R3
      648 LOADK                            R20 K169 ["> .HeaderRow"]
      649 DUPTABLE                         R21 K173 [{"BorderColor3", "BorderSizePixel", "BackgroundColor3"}]
      650 LOADK                            R22 K174 ["$Divider"]
      651 SETTABLEKS                       R22 R21 K170 ["BorderColor3"]
      653 LOADN                            R22 1
      654 SETTABLEKS                       R22 R21 K171 ["BorderSizePixel"]
      656 LOADK                            R22 K175 ["$ForegroundContrast"]
      657 SETTABLEKS                       R22 R21 K172 ["BackgroundColor3"]
      659 NEWTABLE                         R22 0 1
      661 MOVE                             R23 R3
      662 LOADK                            R24 K88 ["::UIListLayout"]
      663 DUPTABLE                         R25 K176 [{"FillDirection", "SortOrder"}]
      664 GETIMPORT                        R26 K97 [Enum.FillDirection.Horizontal]
      666 SETTABLEKS                       R26 R25 K89 ["FillDirection"]
      668 GETIMPORT                        R26 K100 [Enum.SortOrder.LayoutOrder]
      670 SETTABLEKS                       R26 R25 K91 ["SortOrder"]
      672 CALL                             R23 2 -1
      673 SETLIST                          R22 R23 -1 [1]
      675 CALL                             R19 3 1
      676 MOVE                             R20 R3
      677 LOADK                            R21 K177 ["> .ItemList"]
      678 DUPTABLE                         R22 K106 [{"Size"}]
      679 GETIMPORT                        R23 K115 [UDim2.new]
      681 LOADN                            R24 1
      682 LOADN                            R25 0
      683 LOADN                            R26 1
      684 GETTABLEKS                       R28 R2 K178 ["HeaderRowHeight"]
      686 MINUS                            R27 R28
      687 CALL                             R23 4 1
      688 SETTABLEKS                       R23 R22 K105 ["Size"]
      690 CALL                             R20 2 -1
      691 SETLIST                          R18 R19 -1 [1]
      693 CALL                             R15 3 1
      694 MOVE                             R16 R3
      695 LOADK                            R17 K179 [".am-size-itemrow"]
      696 DUPTABLE                         R18 K106 [{"Size"}]
      697 GETIMPORT                        R19 K115 [UDim2.new]
      699 LOADN                            R20 1
      700 LOADN                            R21 0
      701 LOADN                            R22 0
      702 GETTABLEKS                       R23 R2 K180 ["ItemRowHeight"]
      704 CALL                             R19 4 1
      705 SETTABLEKS                       R19 R18 K105 ["Size"]
      707 NEWTABLE                         R19 0 0
      709 CALL                             R16 3 1
      710 MOVE                             R17 R3
      711 LOADK                            R18 K181 [".am-size-thumbnailcontainer"]
      712 DUPTABLE                         R19 K106 [{"Size"}]
      713 GETIMPORT                        R20 K183 [UDim2.fromOffset]
      715 GETTABLEKS                       R21 R2 K184 ["ThumbnailContainerSize"]
      717 GETTABLEKS                       R22 R2 K184 ["ThumbnailContainerSize"]
      719 CALL                             R20 2 1
      720 SETTABLEKS                       R20 R19 K105 ["Size"]
      722 CALL                             R17 2 1
      723 MOVE                             R18 R3
      724 LOADK                            R19 K185 [".ItemRow"]
      725 DUPTABLE                         R20 K106 [{"Size"}]
      726 GETIMPORT                        R21 K115 [UDim2.new]
      728 LOADN                            R22 1
      729 LOADN                            R23 0
      730 LOADN                            R24 0
      731 GETTABLEKS                       R25 R2 K180 ["ItemRowHeight"]
      733 CALL                             R21 4 1
      734 SETTABLEKS                       R21 R20 K105 ["Size"]
      736 NEWTABLE                         R21 0 3
      738 MOVE                             R22 R3
      739 LOADK                            R23 K186 [".FocusedRow ::UIStroke"]
      740 DUPTABLE                         R24 K190 [{"ApplyStrokeMode", "Color", "Thickness"}]
      741 GETIMPORT                        R25 K192 [Enum.ApplyStrokeMode.Border]
      743 SETTABLEKS                       R25 R24 K187 ["ApplyStrokeMode"]
      745 LOADK                            R25 K193 ["$ActionFocusBorder"]
      746 SETTABLEKS                       R25 R24 K188 ["Color"]
      748 LOADN                            R25 1
      749 SETTABLEKS                       R25 R24 K189 ["Thickness"]
      751 CALL                             R22 2 1
      752 MOVE                             R23 R3
      753 LOADK                            R24 K194 [">> .ThumbnailContainer"]
      754 DUPTABLE                         R25 K195 [{"Size", "BackgroundColor3"}]
      755 GETIMPORT                        R26 K183 [UDim2.fromOffset]
      757 GETTABLEKS                       R27 R2 K184 ["ThumbnailContainerSize"]
      759 GETTABLEKS                       R28 R2 K184 ["ThumbnailContainerSize"]
      761 CALL                             R26 2 1
      762 SETTABLEKS                       R26 R25 K105 ["Size"]
      764 LOADK                            R26 K175 ["$ForegroundContrast"]
      765 SETTABLEKS                       R26 R25 K172 ["BackgroundColor3"]
      767 CALL                             R23 2 1
      768 MOVE                             R24 R3
      769 LOADK                            R25 K196 [">> TextLabel"]
      770 NEWTABLE                         R26 0 0
      772 NEWTABLE                         R27 0 1
      774 MOVE                             R28 R3
      775 LOADK                            R29 K124 ["::UIPadding"]
      776 DUPTABLE                         R30 K147 [{"PaddingLeft", "PaddingRight"}]
      777 LOADK                            R31 K98 ["$Padding"]
      778 SETTABLEKS                       R31 R30 K136 ["PaddingLeft"]
      780 LOADK                            R31 K98 ["$Padding"]
      781 SETTABLEKS                       R31 R30 K137 ["PaddingRight"]
      783 CALL                             R28 2 -1
      784 SETLIST                          R27 R28 -1 [1]
      786 CALL                             R24 3 -1
      787 SETLIST                          R21 R22 -1 [1]
      789 CALL                             R18 3 1
      790 MOVE                             R19 R3
      791 LOADK                            R20 K197 [".TopSidebarButtonPadding"]
      792 DUPTABLE                         R21 K106 [{"Size"}]
      793 GETIMPORT                        R22 K115 [UDim2.new]
      795 LOADN                            R23 0
      796 GETTABLEKS                       R24 R2 K198 ["SidebarTogglePadding"]
      798 LOADN                            R25 0
      799 GETTABLEKS                       R26 R2 K198 ["SidebarTogglePadding"]
      801 CALL                             R22 4 1
      802 SETTABLEKS                       R22 R21 K105 ["Size"]
      804 CALL                             R19 2 1
      805 MOVE                             R20 R3
      806 LOADK                            R21 K199 [".FillMinusDragX"]
      807 DUPTABLE                         R22 K106 [{"Size"}]
      808 GETIMPORT                        R23 K115 [UDim2.new]
      810 LOADN                            R24 1
      811 GETTABLEKS                       R26 R2 K133 ["PaddingSmall"]
      813 MINUS                            R25 R26
      814 LOADN                            R26 1
      815 LOADN                            R27 0
      816 CALL                             R23 4 1
      817 SETTABLEKS                       R23 R22 K105 ["Size"]
      819 CALL                             R20 2 1
      820 MOVE                             R21 R3
      821 LOADK                            R22 K200 [".FitYPlusDragX"]
      822 DUPTABLE                         R23 K201 [{"Size", "AutomaticSize"}]
      823 GETIMPORT                        R24 K115 [UDim2.new]
      825 LOADN                            R25 1
      826 GETTABLEKS                       R26 R2 K133 ["PaddingSmall"]
      828 LOADN                            R27 0
      829 LOADN                            R28 0
      830 CALL                             R24 4 1
      831 SETTABLEKS                       R24 R23 K105 ["Size"]
      833 GETIMPORT                        R24 K155 [Enum.AutomaticSize.Y]
      835 SETTABLEKS                       R24 R23 K152 ["AutomaticSize"]
      837 CALL                             R21 2 1
      838 SETLIST                          R5 R6 16 [1]
      840 MOVE                             R6 R3
      841 LOADK                            R7 K202 [".bg-action-selected"]
      842 DUPTABLE                         R8 K203 [{"BackgroundColor3", "BackgroundTransparency"}]
      843 LOADK                            R9 K204 ["$ActionSelected"]
      844 SETTABLEKS                       R9 R8 K172 ["BackgroundColor3"]
      846 LOADN                            R9 0
      847 SETTABLEKS                       R9 R8 K149 ["BackgroundTransparency"]
      849 CALL                             R6 2 1
      850 MOVE                             R7 R3
      851 LOADK                            R8 K205 [".bg-foreground-main"]
      852 DUPTABLE                         R9 K203 [{"BackgroundColor3", "BackgroundTransparency"}]
      853 LOADK                            R10 K206 ["$ForegroundMain"]
      854 SETTABLEKS                       R10 R9 K172 ["BackgroundColor3"]
      856 LOADN                            R10 0
      857 SETTABLEKS                       R10 R9 K149 ["BackgroundTransparency"]
      859 CALL                             R7 2 1
      860 MOVE                             R8 R3
      861 LOADK                            R9 K207 [".bg-foreground-contrast"]
      862 DUPTABLE                         R10 K203 [{"BackgroundColor3", "BackgroundTransparency"}]
      863 LOADK                            R11 K175 ["$ForegroundContrast"]
      864 SETTABLEKS                       R11 R10 K172 ["BackgroundColor3"]
      866 LOADN                            R11 0
      867 SETTABLEKS                       R11 R10 K149 ["BackgroundTransparency"]
      869 CALL                             R8 2 1
      870 MOVE                             R9 R3
      871 LOADK                            R10 K208 [".bg-paper"]
      872 DUPTABLE                         R11 K203 [{"BackgroundColor3", "BackgroundTransparency"}]
      873 LOADK                            R12 K209 ["$BackgroundPaper"]
      874 SETTABLEKS                       R12 R11 K172 ["BackgroundColor3"]
      876 LOADN                            R12 0
      877 SETTABLEKS                       R12 R11 K149 ["BackgroundTransparency"]
      879 CALL                             R9 2 1
      880 MOVE                             R10 R3
      881 LOADK                            R11 K210 [".anchor-center-right"]
      882 DUPTABLE                         R12 K211 [{"AnchorPoint"}]
      883 GETIMPORT                        R13 K161 [Vector2.new]
      885 LOADN                            R14 1
      886 LOADK                            R15 K212 [0.5]
      887 CALL                             R13 2 1
      888 SETTABLEKS                       R13 R12 K158 ["AnchorPoint"]
      890 CALL                             R10 2 1
      891 MOVE                             R11 R3
      892 LOADK                            R12 K213 [".am-padding-right-xsmall"]
      893 NEWTABLE                         R13 0 0
      895 NEWTABLE                         R14 0 1
      897 MOVE                             R15 R3
      898 LOADK                            R16 K124 ["::UIPadding"]
      899 DUPTABLE                         R17 K214 [{"PaddingRight"}]
      900 LOADK                            R18 K140 ["$PaddingSmall"]
      901 SETTABLEKS                       R18 R17 K137 ["PaddingRight"]
      903 CALL                             R15 2 -1
      904 SETLIST                          R14 R15 -1 [1]
      906 CALL                             R11 3 1
      907 MOVE                             R12 R3
      908 LOADK                            R13 K215 [".am-padding-left-small"]
      909 NEWTABLE                         R14 0 0
      911 NEWTABLE                         R15 0 1
      913 MOVE                             R16 R3
      914 LOADK                            R17 K124 ["::UIPadding"]
      915 DUPTABLE                         R18 K216 [{"PaddingLeft"}]
      916 LOADK                            R19 K140 ["$PaddingSmall"]
      917 SETTABLEKS                       R19 R18 K136 ["PaddingLeft"]
      919 CALL                             R16 2 -1
      920 SETLIST                          R15 R16 -1 [1]
      922 CALL                             R12 3 1
      923 MOVE                             R13 R3
      924 LOADK                            R14 K217 [".am-padding-left-medium"]
      925 NEWTABLE                         R15 0 0
      927 NEWTABLE                         R16 0 1
      929 MOVE                             R17 R3
      930 LOADK                            R18 K124 ["::UIPadding"]
      931 DUPTABLE                         R19 K216 [{"PaddingLeft"}]
      932 LOADK                            R20 K98 ["$Padding"]
      933 SETTABLEKS                       R20 R19 K136 ["PaddingLeft"]
      935 CALL                             R17 2 -1
      936 SETLIST                          R16 R17 -1 [1]
      938 CALL                             R13 3 1
      939 MOVE                             R14 R3
      940 LOADK                            R15 K218 [".am-padding-bottom-small"]
      941 NEWTABLE                         R16 0 0
      943 NEWTABLE                         R17 0 1
      945 MOVE                             R18 R3
      946 LOADK                            R19 K124 ["::UIPadding"]
      947 DUPTABLE                         R20 K219 [{"PaddingBottom"}]
      948 LOADK                            R21 K140 ["$PaddingSmall"]
      949 SETTABLEKS                       R21 R20 K138 ["PaddingBottom"]
      951 CALL                             R18 2 -1
      952 SETLIST                          R17 R18 -1 [1]
      954 CALL                             R14 3 1
      955 MOVE                             R15 R3
      956 LOADK                            R16 K220 [".am-padding-celldata"]
      957 NEWTABLE                         R17 0 0
      959 NEWTABLE                         R18 0 1
      961 MOVE                             R19 R3
      962 LOADK                            R20 K124 ["::UIPadding"]
      963 DUPTABLE                         R21 K139 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      964 LOADK                            R22 K140 ["$PaddingSmall"]
      965 SETTABLEKS                       R22 R21 K136 ["PaddingLeft"]
      967 LOADK                            R22 K140 ["$PaddingSmall"]
      968 SETTABLEKS                       R22 R21 K137 ["PaddingRight"]
      970 LOADK                            R22 K140 ["$PaddingSmall"]
      971 SETTABLEKS                       R22 R21 K125 ["PaddingTop"]
      973 LOADK                            R22 K98 ["$Padding"]
      974 SETTABLEKS                       R22 R21 K138 ["PaddingBottom"]
      976 CALL                             R19 2 -1
      977 SETLIST                          R18 R19 -1 [1]
      979 CALL                             R15 3 1
      980 MOVE                             R16 R3
      981 LOADK                            R17 K221 [".am-size-full-explorerrow"]
      982 DUPTABLE                         R18 K106 [{"Size"}]
      983 GETIMPORT                        R19 K115 [UDim2.new]
      985 LOADN                            R20 1
      986 LOADN                            R21 0
      987 LOADN                            R22 0
      988 LOADN                            R23 24
      989 CALL                             R19 4 1
      990 SETTABLEKS                       R19 R18 K105 ["Size"]
      992 CALL                             R16 2 1
      993 MOVE                             R17 R3
      994 LOADK                            R18 K222 [".am-position-center-right-xoffset-small"]
      995 DUPTABLE                         R19 K132 [{"Position"}]
      996 GETIMPORT                        R20 K115 [UDim2.new]
      998 LOADN                            R21 1
      999 GETTABLEKS                       R23 R2 K133 ["PaddingSmall"]
     1001 MINUS                            R22 R23
     1002 LOADK                            R23 K212 [0.5]
     1003 LOADN                            R24 0
     1004 CALL                             R20 4 1
     1005 SETTABLEKS                       R20 R19 K79 ["Position"]
     1007 CALL                             R17 2 1
     1008 MOVE                             R18 R3
     1009 LOADK                            R19 K223 [".amr-underlay >> ScrollingFrame"]
     1010 DUPTABLE                         R20 K227 [{"VerticalScrollBarInset", "HorizontalScrollBarInset", "ScrollingDirection", "ScrollBarThickness", "BackgroundColor3"}]
     1011 GETIMPORT                        R21 K111 [Enum.ScrollBarInset.None]
     1013 SETTABLEKS                       R21 R20 K108 ["VerticalScrollBarInset"]
     1015 GETIMPORT                        R21 K111 [Enum.ScrollBarInset.None]
     1017 SETTABLEKS                       R21 R20 K224 ["HorizontalScrollBarInset"]
     1019 GETIMPORT                        R21 K228 [Enum.ScrollingDirection.Y]
     1021 SETTABLEKS                       R21 R20 K225 ["ScrollingDirection"]
     1023 LOADN                            R21 0
     1024 SETTABLEKS                       R21 R20 K226 ["ScrollBarThickness"]
     1026 GETIMPORT                        R21 K229 [Color3.new]
     1028 LOADN                            R22 1
     1029 LOADN                            R23 1
     1030 LOADN                            R24 0
     1031 CALL                             R21 3 1
     1032 SETTABLEKS                       R21 R20 K172 ["BackgroundColor3"]
     1034 CALL                             R18 2 1
     1035 MOVE                             R19 R3
     1036 LOADK                            R20 K230 [".am-size-full-celldata"]
     1037 DUPTABLE                         R21 K106 [{"Size"}]
     1038 GETIMPORT                        R22 K115 [UDim2.new]
     1040 LOADN                            R23 1
     1041 LOADN                            R24 0
     1042 LOADN                            R25 0
     1043 GETTABLEKS                       R26 R2 K167 ["CellDataHeight"]
     1045 CALL                             R22 4 1
     1046 SETTABLEKS                       R22 R21 K105 ["Size"]
     1048 CALL                             R19 2 1
     1049 MOVE                             R20 R3
     1050 LOADK                            R21 K231 [".am-size-scrollbar-full"]
     1051 DUPTABLE                         R22 K106 [{"Size"}]
     1052 GETIMPORT                        R23 K115 [UDim2.new]
     1054 LOADN                            R24 0
     1055 GETTABLEKS                       R25 R2 K130 ["LoadingBarHeight"]
     1057 LOADN                            R26 1
     1058 LOADN                            R27 0
     1059 CALL                             R23 4 1
     1060 SETTABLEKS                       R23 R22 K105 ["Size"]
     1062 CALL                             R20 2 1
     1063 MOVE                             R21 R3
     1064 LOADK                            R22 K232 [".am-size-full-scrollbar"]
     1065 DUPTABLE                         R23 K106 [{"Size"}]
     1066 GETIMPORT                        R24 K115 [UDim2.new]
     1068 LOADN                            R25 1
     1069 LOADN                            R26 0
     1070 LOADN                            R27 0
     1071 GETTABLEKS                       R28 R2 K130 ["LoadingBarHeight"]
     1073 CALL                             R24 4 1
     1074 SETTABLEKS                       R24 R23 K105 ["Size"]
     1076 CALL                             R21 2 1
     1077 SETLIST                          R5 R6 16 [17]
     1079 MOVE                             R6 R3
     1080 LOADK                            R7 K233 [".am-size-full-topbar"]
     1081 DUPTABLE                         R8 K106 [{"Size"}]
     1082 GETIMPORT                        R9 K115 [UDim2.new]
     1084 LOADN                            R10 1
     1085 LOADN                            R11 0
     1086 LOADN                            R12 0
     1087 GETTABLEKS                       R13 R2 K116 ["TopBarHeight"]
     1089 CALL                             R9 4 1
     1090 SETTABLEKS                       R9 R8 K105 ["Size"]
     1092 CALL                             R6 2 1
     1093 MOVE                             R7 R3
     1094 LOADK                            R8 K234 [".am-size-full-headerrow"]
     1095 DUPTABLE                         R9 K106 [{"Size"}]
     1096 GETIMPORT                        R10 K115 [UDim2.new]
     1098 LOADN                            R11 1
     1099 LOADN                            R12 0
     1100 LOADN                            R13 0
     1101 GETTABLEKS                       R14 R2 K178 ["HeaderRowHeight"]
     1103 CALL                             R10 4 1
     1104 SETTABLEKS                       R10 R9 K105 ["Size"]
     1106 CALL                             R7 2 1
     1107 MOVE                             R8 R3
     1108 LOADK                            R9 K235 [".am-size-fit-headerrow"]
     1109 DUPTABLE                         R10 K201 [{"Size", "AutomaticSize"}]
     1110 GETIMPORT                        R11 K183 [UDim2.fromOffset]
     1112 LOADN                            R12 0
     1113 GETTABLEKS                       R13 R2 K178 ["HeaderRowHeight"]
     1115 CALL                             R11 2 1
     1116 SETTABLEKS                       R11 R10 K105 ["Size"]
     1118 GETIMPORT                        R11 K237 [Enum.AutomaticSize.X]
     1120 SETTABLEKS                       R11 R10 K152 ["AutomaticSize"]
     1122 CALL                             R8 2 1
     1123 MOVE                             R9 R3
     1124 LOADK                            R10 K238 [".am-size-icon-xsmall"]
     1125 DUPTABLE                         R11 K106 [{"Size"}]
     1126 GETTABLEKS                       R12 R2 K141 ["IconSizeXSmall"]
     1128 SETTABLEKS                       R12 R11 K105 ["Size"]
     1130 CALL                             R9 2 1
     1131 MOVE                             R10 R3
     1132 LOADK                            R11 K239 [".am-size-icon"]
     1133 DUPTABLE                         R12 K106 [{"Size"}]
     1134 LOADK                            R13 K240 ["$IconSize"]
     1135 SETTABLEKS                       R13 R12 K105 ["Size"]
     1137 CALL                             R10 2 1
     1138 MOVE                             R11 R3
     1139 LOADK                            R12 K241 [".am-bg-action-hover"]
     1140 DUPTABLE                         R13 K203 [{"BackgroundColor3", "BackgroundTransparency"}]
     1141 LOADK                            R14 K242 ["$ActionHover"]
     1142 SETTABLEKS                       R14 R13 K172 ["BackgroundColor3"]
     1144 LOADN                            R14 0
     1145 SETTABLEKS                       R14 R13 K149 ["BackgroundTransparency"]
     1147 CALL                             R11 2 1
     1148 MOVE                             R12 R3
     1149 LOADK                            R13 K243 [".am-hover"]
     1150 NEWTABLE                         R14 0 0
     1152 NEWTABLE                         R15 0 1
     1154 MOVE                             R16 R3
     1155 LOADK                            R17 K244 [":hover"]
     1156 DUPTABLE                         R18 K203 [{"BackgroundColor3", "BackgroundTransparency"}]
     1157 LOADK                            R19 K242 ["$ActionHover"]
     1158 SETTABLEKS                       R19 R18 K172 ["BackgroundColor3"]
     1160 LOADN                            R19 0
     1161 SETTABLEKS                       R19 R18 K149 ["BackgroundTransparency"]
     1163 CALL                             R16 2 -1
     1164 SETLIST                          R15 R16 -1 [1]
     1166 CALL                             R12 3 -1
     1167 SETLIST                          R5 R6 -1 [33]
     1169 DUPTABLE                         R6 K262 [{"PaddingSmall", "Padding", "PaddingLarge", "IconDisabled", "Rotation", "Transparency", "CheckboxSize", "IconSize", "SortItemSize", "IconWidth", "BaseWidth", "OffsetWidth", "CellHeightDiff", "ThumbnailSize", "CellTagPadding", "ColumnMinSize", "ContentListRowHeight", "ListThumbnailSize", "CellContentPadding", "InputHeight"}]
     1170 GETIMPORT                        R7 K128 [UDim.new]
     1172 LOADN                            R8 0
     1173 GETTABLEKS                       R9 R2 K133 ["PaddingSmall"]
     1175 CALL                             R7 2 1
     1176 SETTABLEKS                       R7 R6 K133 ["PaddingSmall"]
     1178 GETIMPORT                        R7 K128 [UDim.new]
     1180 LOADN                            R8 0
     1181 GETTABLEKS                       R9 R2 K90 ["Padding"]
     1183 CALL                             R7 2 1
     1184 SETTABLEKS                       R7 R6 K90 ["Padding"]
     1186 GETIMPORT                        R7 K128 [UDim.new]
     1188 LOADN                            R8 0
     1189 GETTABLEKS                       R9 R2 K245 ["PaddingLarge"]
     1191 CALL                             R7 2 1
     1192 SETTABLEKS                       R7 R6 K245 ["PaddingLarge"]
     1194 LOADK                            R7 K7 ["Framework"]
     1195 SETTABLEKS                       R7 R6 K246 ["IconDisabled"]
     1197 GETTABLEKS                       R7 R2 K264 ["ShimmerRotation"]
     1199 SETTABLEKS                       R7 R6 K247 ["Rotation"]
     1201 GETIMPORT                        R7 K266 [NumberSequence.new]
     1203 NEWTABLE                         R8 0 5
     1205 GETIMPORT                        R9 K268 [NumberSequenceKeypoint.new]
     1207 LOADN                            R10 0
     1208 LOADN                            R11 1
     1209 CALL                             R9 2 1
     1210 GETIMPORT                        R10 K268 [NumberSequenceKeypoint.new]
     1212 LOADK                            R11 K13 ["createStyleSheet"]
     1213 LOADN                            R12 1
     1214 CALL                             R10 2 1
     1215 GETIMPORT                        R11 K268 [NumberSequenceKeypoint.new]
     1217 LOADK                            R12 K212 [0.5]
     1218 LOADK                            R13 K14 ["ImageLabel, ImageButton"]
     1219 CALL                             R11 2 1
     1220 GETIMPORT                        R12 K268 [NumberSequenceKeypoint.new]
     1222 LOADK                            R13 K15 [".icon-dark"]
     1223 LOADN                            R14 1
     1224 CALL                             R12 2 1
     1225 GETIMPORT                        R13 K268 [NumberSequenceKeypoint.new]
     1227 LOADN                            R14 1
     1228 LOADN                            R15 1
     1229 CALL                             R13 2 -1
     1230 SETLIST                          R8 R9 -1 [1]
     1232 CALL                             R7 1 1
     1233 SETTABLEKS                       R7 R6 K248 ["Transparency"]
     1235 GETTABLEKS                       R7 R2 K156 ["IconWidth"]
     1237 SETTABLEKS                       R7 R6 K249 ["CheckboxSize"]
     1239 GETTABLEKS                       R7 R2 K250 ["IconSize"]
     1241 SETTABLEKS                       R7 R6 K250 ["IconSize"]
     1243 GETIMPORT                        R7 K115 [UDim2.new]
     1245 LOADN                            R8 0
     1246 LOADN                            R9 150
     1247 LOADN                            R10 0
     1248 LOADN                            R11 24
     1249 CALL                             R7 4 1
     1250 SETTABLEKS                       R7 R6 K251 ["SortItemSize"]
     1252 GETTABLEKS                       R8 R2 K90 ["Padding"]
     1254 GETTABLEKS                       R9 R2 K156 ["IconWidth"]
     1256 ADD                              R7 R8 R9
     1257 SETTABLEKS                       R7 R6 K156 ["IconWidth"]
     1259 GETTABLEKS                       R7 R2 K252 ["BaseWidth"]
     1261 SETTABLEKS                       R7 R6 K252 ["BaseWidth"]
     1263 GETTABLEKS                       R9 R2 K90 ["Padding"]
     1265 MULK                             R8 R9 K134 [2]
     1266 GETTABLEKS                       R9 R2 K156 ["IconWidth"]
     1268 ADD                              R7 R8 R9
     1269 SETTABLEKS                       R7 R6 K253 ["OffsetWidth"]
     1271 GETTABLEKS                       R7 R2 K167 ["CellDataHeight"]
     1273 SETTABLEKS                       R7 R6 K254 ["CellHeightDiff"]
     1275 LOADN                            R7 50
     1276 SETTABLEKS                       R7 R6 K255 ["ThumbnailSize"]
     1278 GETTABLEKS                       R7 R2 K133 ["PaddingSmall"]
     1280 SETTABLEKS                       R7 R6 K256 ["CellTagPadding"]
     1282 GETIMPORT                        R7 K128 [UDim.new]
     1284 LOADN                            R8 0
     1285 LOADN                            R9 60
     1286 CALL                             R7 2 1
     1287 SETTABLEKS                       R7 R6 K257 ["ColumnMinSize"]
     1289 GETTABLEKS                       R7 R2 K180 ["ItemRowHeight"]
     1291 SETTABLEKS                       R7 R6 K258 ["ContentListRowHeight"]
     1293 GETTABLEKS                       R7 R2 K184 ["ThumbnailContainerSize"]
     1295 SETTABLEKS                       R7 R6 K259 ["ListThumbnailSize"]
     1297 GETTABLEKS                       R7 R2 K90 ["Padding"]
     1299 SETTABLEKS                       R7 R6 K260 ["CellContentPadding"]
     1301 GETTABLEKS                       R8 R2 K180 ["ItemRowHeight"]
     1303 LOADN                            R10 2
     1304 GETTABLEKS                       R11 R2 K90 ["Padding"]
     1306 MUL                              R9 R10 R11
     1307 SUB                              R7 R8 R9
     1308 SETTABLEKS                       R7 R6 K261 ["InputHeight"]
     1310 MOVE                             R7 R4
     1311 LOADK                            R8 K2 ["AssetManager"]
     1312 MOVE                             R9 R5
     1313 MOVE                             R10 R6
     1314 CALL                             R7 3 -1
     1315 RETURN                           R7 -1
