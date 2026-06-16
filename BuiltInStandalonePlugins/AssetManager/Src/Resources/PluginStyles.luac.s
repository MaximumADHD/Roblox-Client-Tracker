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
       31 NEWTABLE                         R5 0 35
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
      309 LOADK                            R9 K104 ["#TopLevelDetector >> #Menu >> ScrollingFrame"]
      310 DUPTABLE                         R10 K106 [{"VerticalScrollBarInset"}]
      311 GETIMPORT                        R11 K108 [Enum.ScrollBarInset.None]
      313 SETTABLEKS                       R11 R10 K105 ["VerticalScrollBarInset"]
      315 CALL                             R8 2 1
      316 MOVE                             R9 R3
      317 LOADK                            R10 K109 [".App"]
      318 NEWTABLE                         R11 0 0
      320 NEWTABLE                         R12 0 3
      322 MOVE                             R13 R3
      323 LOADK                            R14 K110 [">> .Explorer"]
      324 DUPTABLE                         R15 K112 [{"Size"}]
      325 GETIMPORT                        R16 K114 [UDim2.new]
      327 LOADN                            R17 1
      328 LOADN                            R18 0
      329 LOADN                            R19 1
      330 GETTABLEKS                       R21 R2 K115 ["TopBarHeight"]
      332 MINUS                            R20 R21
      333 CALL                             R16 4 1
      334 SETTABLEKS                       R16 R15 K111 ["Size"]
      336 CALL                             R13 2 1
      337 MOVE                             R14 R3
      338 LOADK                            R15 K116 [">> .MainContents"]
      339 DUPTABLE                         R16 K112 [{"Size"}]
      340 GETIMPORT                        R17 K114 [UDim2.new]
      342 LOADN                            R18 1
      343 LOADN                            R19 0
      344 LOADN                            R20 1
      345 GETTABLEKS                       R22 R2 K115 ["TopBarHeight"]
      347 MINUS                            R21 R22
      348 CALL                             R17 4 1
      349 SETTABLEKS                       R17 R16 K111 ["Size"]
      351 NEWTABLE                         R17 0 3
      353 MOVE                             R18 R3
      354 LOADK                            R19 K117 ["::UIFlexItem"]
      355 DUPTABLE                         R20 K119 [{"FlexMode"}]
      356 GETIMPORT                        R21 K122 [Enum.UIFlexMode.Fill]
      358 SETTABLEKS                       R21 R20 K118 ["FlexMode"]
      360 CALL                             R18 2 1
      361 MOVE                             R19 R3
      362 LOADK                            R20 K123 ["::UIPadding"]
      363 DUPTABLE                         R21 K125 [{"PaddingTop"}]
      364 GETIMPORT                        R22 K127 [UDim.new]
      366 LOADN                            R23 0
      367 LOADN                            R24 1
      368 CALL                             R22 2 1
      369 SETTABLEKS                       R22 R21 K124 ["PaddingTop"]
      371 CALL                             R19 2 1
      372 MOVE                             R20 R3
      373 LOADK                            R21 K128 [".HasLoadingBar"]
      374 DUPTABLE                         R22 K112 [{"Size"}]
      375 GETIMPORT                        R23 K114 [UDim2.new]
      377 LOADN                            R24 1
      378 LOADN                            R25 0
      379 LOADN                            R26 1
      380 GETTABLEKS                       R29 R2 K115 ["TopBarHeight"]
      382 GETTABLEKS                       R30 R2 K129 ["LoadingBarHeight"]
      384 ADD                              R28 R29 R30
      385 MINUS                            R27 R28
      386 CALL                             R23 4 1
      387 SETTABLEKS                       R23 R22 K111 ["Size"]
      389 CALL                             R20 2 -1
      390 SETLIST                          R17 R18 -1 [1]
      392 CALL                             R14 3 1
      393 MOVE                             R15 R3
      394 LOADK                            R16 K130 ["> .SidebarButton"]
      395 DUPTABLE                         R17 K131 [{"Position"}]
      396 GETIMPORT                        R18 K114 [UDim2.new]
      398 LOADN                            R19 0
      399 GETTABLEKS                       R20 R2 K132 ["PaddingSmall"]
      401 LOADN                            R21 0
      402 LOADN                            R24 2
      403 GETTABLEKS                       R25 R2 K132 ["PaddingSmall"]
      405 MUL                              R23 R24 R25
      406 SUBK                             R22 R23 K133 [2]
      407 CALL                             R18 4 1
      408 SETTABLEKS                       R18 R17 K79 ["Position"]
      410 NEWTABLE                         R18 0 1
      412 MOVE                             R19 R3
      413 LOADK                            R20 K134 ["> Frame"]
      414 NEWTABLE                         R21 0 0
      416 NEWTABLE                         R22 0 2
      418 MOVE                             R23 R3
      419 LOADK                            R24 K123 ["::UIPadding"]
      420 DUPTABLE                         R25 K138 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      421 LOADK                            R26 K139 ["$PaddingSmall"]
      422 SETTABLEKS                       R26 R25 K135 ["PaddingLeft"]
      424 LOADK                            R26 K139 ["$PaddingSmall"]
      425 SETTABLEKS                       R26 R25 K136 ["PaddingRight"]
      427 LOADK                            R26 K139 ["$PaddingSmall"]
      428 SETTABLEKS                       R26 R25 K124 ["PaddingTop"]
      430 LOADK                            R26 K139 ["$PaddingSmall"]
      431 SETTABLEKS                       R26 R25 K137 ["PaddingBottom"]
      433 CALL                             R23 2 1
      434 MOVE                             R24 R3
      435 LOADK                            R25 K85 ["> ImageLabel"]
      436 DUPTABLE                         R26 K112 [{"Size"}]
      437 GETTABLEKS                       R27 R2 K140 ["IconSizeXSmall"]
      439 SETTABLEKS                       R27 R26 K111 ["Size"]
      441 CALL                             R24 2 -1
      442 SETLIST                          R22 R23 -1 [1]
      444 CALL                             R19 3 -1
      445 SETLIST                          R18 R19 -1 [1]
      447 CALL                             R15 3 -1
      448 SETLIST                          R12 R13 -1 [1]
      450 CALL                             R9 3 1
      451 MOVE                             R10 R3
      452 LOADK                            R11 K141 [".ScopeOptions"]
      453 NEWTABLE                         R12 0 0
      455 NEWTABLE                         R13 0 3
      457 MOVE                             R14 R3
      458 LOADK                            R15 K142 [">> .Header"]
      459 NEWTABLE                         R16 0 0
      461 NEWTABLE                         R17 0 1
      463 MOVE                             R18 R3
      464 LOADK                            R19 K123 ["::UIPadding"]
      465 DUPTABLE                         R20 K143 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
      466 LOADK                            R21 K98 ["$Padding"]
      467 SETTABLEKS                       R21 R20 K124 ["PaddingTop"]
      469 LOADK                            R21 K98 ["$Padding"]
      470 SETTABLEKS                       R21 R20 K135 ["PaddingLeft"]
      472 LOADK                            R21 K98 ["$Padding"]
      473 SETTABLEKS                       R21 R20 K136 ["PaddingRight"]
      475 CALL                             R18 2 -1
      476 SETLIST                          R17 R18 -1 [1]
      478 CALL                             R14 3 1
      479 MOVE                             R15 R3
      480 LOADK                            R16 K144 [">> .Description"]
      481 NEWTABLE                         R17 0 0
      483 NEWTABLE                         R18 0 1
      485 MOVE                             R19 R3
      486 LOADK                            R20 K123 ["::UIPadding"]
      487 DUPTABLE                         R21 K143 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
      488 LOADK                            R22 K139 ["$PaddingSmall"]
      489 SETTABLEKS                       R22 R21 K124 ["PaddingTop"]
      491 LOADK                            R22 K98 ["$Padding"]
      492 SETTABLEKS                       R22 R21 K135 ["PaddingLeft"]
      494 LOADK                            R22 K98 ["$Padding"]
      495 SETTABLEKS                       R22 R21 K136 ["PaddingRight"]
      497 CALL                             R19 2 -1
      498 SETLIST                          R18 R19 -1 [1]
      500 CALL                             R15 3 1
      501 MOVE                             R16 R3
      502 LOADK                            R17 K145 [">> .Component-SearchBar"]
      503 NEWTABLE                         R18 0 0
      505 NEWTABLE                         R19 0 1
      507 MOVE                             R20 R3
      508 LOADK                            R21 K123 ["::UIPadding"]
      509 DUPTABLE                         R22 K146 [{"PaddingLeft", "PaddingRight"}]
      510 LOADK                            R23 K139 ["$PaddingSmall"]
      511 SETTABLEKS                       R23 R22 K135 ["PaddingLeft"]
      513 LOADK                            R23 K98 ["$Padding"]
      514 SETTABLEKS                       R23 R22 K136 ["PaddingRight"]
      516 CALL                             R20 2 -1
      517 SETLIST                          R19 R20 -1 [1]
      519 CALL                             R16 3 -1
      520 SETLIST                          R13 R14 -1 [1]
      522 NEWTABLE                         R14 0 0
      524 CALL                             R10 4 1
      525 MOVE                             R11 R3
      526 LOADK                            R12 K147 [".CheckboxRow"]
      527 DUPTABLE                         R13 K149 [{"BackgroundTransparency"}]
      528 LOADN                            R14 1
      529 SETTABLEKS                       R14 R13 K148 ["BackgroundTransparency"]
      531 NEWTABLE                         R14 0 2
      533 MOVE                             R15 R3
      534 LOADK                            R16 K150 ["> .CheckboxRowContents"]
      535 DUPTABLE                         R17 K152 [{"AutomaticSize", "Size"}]
      536 GETIMPORT                        R18 K154 [Enum.AutomaticSize.Y]
      538 SETTABLEKS                       R18 R17 K151 ["AutomaticSize"]
      540 GETIMPORT                        R18 K114 [UDim2.new]
      542 LOADN                            R19 1
      543 GETTABLEKS                       R22 R2 K155 ["IconWidth"]
      545 MINUS                            R21 R22
      546 MULK                             R20 R21 K133 [2]
      547 LOADN                            R21 0
      548 LOADN                            R22 0
      549 CALL                             R18 4 1
      550 SETTABLEKS                       R18 R17 K111 ["Size"]
      552 CALL                             R15 2 1
      553 MOVE                             R16 R3
      554 LOADK                            R17 K156 ["> .Component-Checkbox"]
      555 DUPTABLE                         R18 K158 [{"AnchorPoint", "Position", "Size"}]
      556 GETIMPORT                        R19 K160 [Vector2.new]
      558 LOADN                            R20 1
      559 LOADN                            R21 0
      560 CALL                             R19 2 1
      561 SETTABLEKS                       R19 R18 K157 ["AnchorPoint"]
      563 GETIMPORT                        R19 K84 [UDim2.fromScale]
      565 LOADN                            R20 1
      566 LOADN                            R21 0
      567 CALL                             R19 2 1
      568 SETTABLEKS                       R19 R18 K79 ["Position"]
      570 GETIMPORT                        R19 K84 [UDim2.fromScale]
      572 LOADN                            R20 0
      573 LOADN                            R21 1
      574 CALL                             R19 2 1
      575 SETTABLEKS                       R19 R18 K111 ["Size"]
      577 CALL                             R16 2 -1
      578 SETLIST                          R14 R15 -1 [1]
      580 CALL                             R11 3 1
      581 MOVE                             R12 R3
      582 LOADK                            R13 K161 [".SearchOptions"]
      583 NEWTABLE                         R14 0 0
      585 NEWTABLE                         R15 0 1
      587 MOVE                             R16 R3
      588 LOADK                            R17 K162 [">> .ScopeSelector"]
      589 NEWTABLE                         R18 0 0
      591 NEWTABLE                         R19 0 1
      593 MOVE                             R20 R3
      594 LOADK                            R21 K123 ["::UIPadding"]
      595 DUPTABLE                         R22 K163 [{"PaddingLeft", "PaddingRight", "PaddingBottom", "PaddingTop"}]
      596 LOADK                            R23 K98 ["$Padding"]
      597 SETTABLEKS                       R23 R22 K135 ["PaddingLeft"]
      599 LOADK                            R23 K98 ["$Padding"]
      600 SETTABLEKS                       R23 R22 K136 ["PaddingRight"]
      602 LOADK                            R23 K164 ["$PaddingLarge"]
      603 SETTABLEKS                       R23 R22 K137 ["PaddingBottom"]
      605 LOADK                            R23 K98 ["$Padding"]
      606 SETTABLEKS                       R23 R22 K124 ["PaddingTop"]
      608 CALL                             R20 2 -1
      609 SETLIST                          R19 R20 -1 [1]
      611 CALL                             R16 3 -1
      612 SETLIST                          R15 R16 -1 [1]
      614 CALL                             R12 3 1
      615 MOVE                             R13 R3
      616 LOADK                            R14 K165 [".ContentList"]
      617 NEWTABLE                         R15 0 0
      619 NEWTABLE                         R16 0 2
      621 MOVE                             R17 R3
      622 LOADK                            R18 K166 ["> .HeaderRow"]
      623 DUPTABLE                         R19 K170 [{"BorderColor3", "BorderSizePixel", "BackgroundColor3"}]
      624 LOADK                            R20 K171 ["$Divider"]
      625 SETTABLEKS                       R20 R19 K167 ["BorderColor3"]
      627 LOADN                            R20 1
      628 SETTABLEKS                       R20 R19 K168 ["BorderSizePixel"]
      630 LOADK                            R20 K172 ["$ForegroundContrast"]
      631 SETTABLEKS                       R20 R19 K169 ["BackgroundColor3"]
      633 NEWTABLE                         R20 0 1
      635 MOVE                             R21 R3
      636 LOADK                            R22 K88 ["::UIListLayout"]
      637 DUPTABLE                         R23 K173 [{"FillDirection", "SortOrder"}]
      638 GETIMPORT                        R24 K97 [Enum.FillDirection.Horizontal]
      640 SETTABLEKS                       R24 R23 K89 ["FillDirection"]
      642 GETIMPORT                        R24 K100 [Enum.SortOrder.LayoutOrder]
      644 SETTABLEKS                       R24 R23 K91 ["SortOrder"]
      646 CALL                             R21 2 -1
      647 SETLIST                          R20 R21 -1 [1]
      649 CALL                             R17 3 1
      650 MOVE                             R18 R3
      651 LOADK                            R19 K174 ["> .ItemList"]
      652 DUPTABLE                         R20 K112 [{"Size"}]
      653 GETIMPORT                        R21 K114 [UDim2.new]
      655 LOADN                            R22 1
      656 LOADN                            R23 0
      657 LOADN                            R24 1
      658 GETTABLEKS                       R26 R2 K175 ["HeaderRowHeight"]
      660 MINUS                            R25 R26
      661 CALL                             R21 4 1
      662 SETTABLEKS                       R21 R20 K111 ["Size"]
      664 CALL                             R18 2 -1
      665 SETLIST                          R16 R17 -1 [1]
      667 CALL                             R13 3 1
      668 MOVE                             R14 R3
      669 LOADK                            R15 K176 [".am-size-itemrow"]
      670 DUPTABLE                         R16 K112 [{"Size"}]
      671 GETIMPORT                        R17 K114 [UDim2.new]
      673 LOADN                            R18 1
      674 LOADN                            R19 0
      675 LOADN                            R20 0
      676 GETTABLEKS                       R21 R2 K177 ["ItemRowHeight"]
      678 CALL                             R17 4 1
      679 SETTABLEKS                       R17 R16 K111 ["Size"]
      681 NEWTABLE                         R17 0 0
      683 CALL                             R14 3 1
      684 MOVE                             R15 R3
      685 LOADK                            R16 K178 [".am-size-thumbnailcontainer"]
      686 DUPTABLE                         R17 K112 [{"Size"}]
      687 GETIMPORT                        R18 K180 [UDim2.fromOffset]
      689 GETTABLEKS                       R19 R2 K181 ["ThumbnailContainerSize"]
      691 GETTABLEKS                       R20 R2 K181 ["ThumbnailContainerSize"]
      693 CALL                             R18 2 1
      694 SETTABLEKS                       R18 R17 K111 ["Size"]
      696 CALL                             R15 2 1
      697 MOVE                             R16 R3
      698 LOADK                            R17 K182 [".TopSidebarButtonPadding"]
      699 DUPTABLE                         R18 K112 [{"Size"}]
      700 GETIMPORT                        R19 K114 [UDim2.new]
      702 LOADN                            R20 0
      703 GETTABLEKS                       R21 R2 K183 ["SidebarTogglePadding"]
      705 LOADN                            R22 0
      706 GETTABLEKS                       R23 R2 K183 ["SidebarTogglePadding"]
      708 CALL                             R19 4 1
      709 SETTABLEKS                       R19 R18 K111 ["Size"]
      711 CALL                             R16 2 1
      712 MOVE                             R17 R3
      713 LOADK                            R18 K184 [".FillMinusDragX"]
      714 DUPTABLE                         R19 K112 [{"Size"}]
      715 GETIMPORT                        R20 K114 [UDim2.new]
      717 LOADN                            R21 1
      718 GETTABLEKS                       R23 R2 K132 ["PaddingSmall"]
      720 MINUS                            R22 R23
      721 LOADN                            R23 1
      722 LOADN                            R24 0
      723 CALL                             R20 4 1
      724 SETTABLEKS                       R20 R19 K111 ["Size"]
      726 CALL                             R17 2 1
      727 MOVE                             R18 R3
      728 LOADK                            R19 K185 [".FitYPlusDragX"]
      729 DUPTABLE                         R20 K186 [{"Size", "AutomaticSize"}]
      730 GETIMPORT                        R21 K114 [UDim2.new]
      732 LOADN                            R22 1
      733 GETTABLEKS                       R23 R2 K132 ["PaddingSmall"]
      735 LOADN                            R24 0
      736 LOADN                            R25 0
      737 CALL                             R21 4 1
      738 SETTABLEKS                       R21 R20 K111 ["Size"]
      740 GETIMPORT                        R21 K154 [Enum.AutomaticSize.Y]
      742 SETTABLEKS                       R21 R20 K151 ["AutomaticSize"]
      744 CALL                             R18 2 1
      745 MOVE                             R19 R3
      746 LOADK                            R20 K187 [".bg-action-selected"]
      747 DUPTABLE                         R21 K188 [{"BackgroundColor3", "BackgroundTransparency"}]
      748 LOADK                            R22 K189 ["$ActionSelected"]
      749 SETTABLEKS                       R22 R21 K169 ["BackgroundColor3"]
      751 LOADN                            R22 0
      752 SETTABLEKS                       R22 R21 K148 ["BackgroundTransparency"]
      754 CALL                             R19 2 1
      755 MOVE                             R20 R3
      756 LOADK                            R21 K190 [".bg-foreground-main"]
      757 DUPTABLE                         R22 K188 [{"BackgroundColor3", "BackgroundTransparency"}]
      758 LOADK                            R23 K191 ["$ForegroundMain"]
      759 SETTABLEKS                       R23 R22 K169 ["BackgroundColor3"]
      761 LOADN                            R23 0
      762 SETTABLEKS                       R23 R22 K148 ["BackgroundTransparency"]
      764 CALL                             R20 2 1
      765 MOVE                             R21 R3
      766 LOADK                            R22 K192 [".bg-foreground-contrast"]
      767 DUPTABLE                         R23 K188 [{"BackgroundColor3", "BackgroundTransparency"}]
      768 LOADK                            R24 K172 ["$ForegroundContrast"]
      769 SETTABLEKS                       R24 R23 K169 ["BackgroundColor3"]
      771 LOADN                            R24 0
      772 SETTABLEKS                       R24 R23 K148 ["BackgroundTransparency"]
      774 CALL                             R21 2 1
      775 SETLIST                          R5 R6 16 [1]
      777 MOVE                             R6 R3
      778 LOADK                            R7 K193 [".bg-paper"]
      779 DUPTABLE                         R8 K188 [{"BackgroundColor3", "BackgroundTransparency"}]
      780 LOADK                            R9 K194 ["$BackgroundPaper"]
      781 SETTABLEKS                       R9 R8 K169 ["BackgroundColor3"]
      783 LOADN                            R9 0
      784 SETTABLEKS                       R9 R8 K148 ["BackgroundTransparency"]
      786 CALL                             R6 2 1
      787 MOVE                             R7 R3
      788 LOADK                            R8 K195 [".anchor-center-right"]
      789 DUPTABLE                         R9 K196 [{"AnchorPoint"}]
      790 GETIMPORT                        R10 K160 [Vector2.new]
      792 LOADN                            R11 1
      793 LOADK                            R12 K197 [0.5]
      794 CALL                             R10 2 1
      795 SETTABLEKS                       R10 R9 K157 ["AnchorPoint"]
      797 CALL                             R7 2 1
      798 MOVE                             R8 R3
      799 LOADK                            R9 K198 [".am-padding-right-xsmall"]
      800 NEWTABLE                         R10 0 0
      802 NEWTABLE                         R11 0 1
      804 MOVE                             R12 R3
      805 LOADK                            R13 K123 ["::UIPadding"]
      806 DUPTABLE                         R14 K199 [{"PaddingRight"}]
      807 LOADK                            R15 K139 ["$PaddingSmall"]
      808 SETTABLEKS                       R15 R14 K136 ["PaddingRight"]
      810 CALL                             R12 2 -1
      811 SETLIST                          R11 R12 -1 [1]
      813 CALL                             R8 3 1
      814 MOVE                             R9 R3
      815 LOADK                            R10 K200 [".am-padding-left-small"]
      816 NEWTABLE                         R11 0 0
      818 NEWTABLE                         R12 0 1
      820 MOVE                             R13 R3
      821 LOADK                            R14 K123 ["::UIPadding"]
      822 DUPTABLE                         R15 K201 [{"PaddingLeft"}]
      823 LOADK                            R16 K139 ["$PaddingSmall"]
      824 SETTABLEKS                       R16 R15 K135 ["PaddingLeft"]
      826 CALL                             R13 2 -1
      827 SETLIST                          R12 R13 -1 [1]
      829 CALL                             R9 3 1
      830 MOVE                             R10 R3
      831 LOADK                            R11 K202 [".am-padding-left-medium"]
      832 NEWTABLE                         R12 0 0
      834 NEWTABLE                         R13 0 1
      836 MOVE                             R14 R3
      837 LOADK                            R15 K123 ["::UIPadding"]
      838 DUPTABLE                         R16 K201 [{"PaddingLeft"}]
      839 LOADK                            R17 K98 ["$Padding"]
      840 SETTABLEKS                       R17 R16 K135 ["PaddingLeft"]
      842 CALL                             R14 2 -1
      843 SETLIST                          R13 R14 -1 [1]
      845 CALL                             R10 3 1
      846 MOVE                             R11 R3
      847 LOADK                            R12 K203 [".am-padding-bottom-small"]
      848 NEWTABLE                         R13 0 0
      850 NEWTABLE                         R14 0 1
      852 MOVE                             R15 R3
      853 LOADK                            R16 K123 ["::UIPadding"]
      854 DUPTABLE                         R17 K204 [{"PaddingBottom"}]
      855 LOADK                            R18 K139 ["$PaddingSmall"]
      856 SETTABLEKS                       R18 R17 K137 ["PaddingBottom"]
      858 CALL                             R15 2 -1
      859 SETLIST                          R14 R15 -1 [1]
      861 CALL                             R11 3 1
      862 MOVE                             R12 R3
      863 LOADK                            R13 K205 [".am-size-full-explorerrow"]
      864 DUPTABLE                         R14 K112 [{"Size"}]
      865 GETIMPORT                        R15 K114 [UDim2.new]
      867 LOADN                            R16 1
      868 LOADN                            R17 0
      869 LOADN                            R18 0
      870 LOADN                            R19 24
      871 CALL                             R15 4 1
      872 SETTABLEKS                       R15 R14 K111 ["Size"]
      874 CALL                             R12 2 1
      875 MOVE                             R13 R3
      876 LOADK                            R14 K206 [".am-position-center-right-xoffset-small"]
      877 DUPTABLE                         R15 K131 [{"Position"}]
      878 GETIMPORT                        R16 K114 [UDim2.new]
      880 LOADN                            R17 1
      881 GETTABLEKS                       R19 R2 K132 ["PaddingSmall"]
      883 MINUS                            R18 R19
      884 LOADK                            R19 K197 [0.5]
      885 LOADN                            R20 0
      886 CALL                             R16 4 1
      887 SETTABLEKS                       R16 R15 K79 ["Position"]
      889 CALL                             R13 2 1
      890 MOVE                             R14 R3
      891 LOADK                            R15 K207 [".amr-underlay >> ScrollingFrame"]
      892 DUPTABLE                         R16 K211 [{"VerticalScrollBarInset", "HorizontalScrollBarInset", "ScrollingDirection", "ScrollBarThickness", "BackgroundColor3"}]
      893 GETIMPORT                        R17 K108 [Enum.ScrollBarInset.None]
      895 SETTABLEKS                       R17 R16 K105 ["VerticalScrollBarInset"]
      897 GETIMPORT                        R17 K108 [Enum.ScrollBarInset.None]
      899 SETTABLEKS                       R17 R16 K208 ["HorizontalScrollBarInset"]
      901 GETIMPORT                        R17 K212 [Enum.ScrollingDirection.Y]
      903 SETTABLEKS                       R17 R16 K209 ["ScrollingDirection"]
      905 LOADN                            R17 0
      906 SETTABLEKS                       R17 R16 K210 ["ScrollBarThickness"]
      908 GETIMPORT                        R17 K213 [Color3.new]
      910 LOADN                            R18 1
      911 LOADN                            R19 1
      912 LOADN                            R20 0
      913 CALL                             R17 3 1
      914 SETTABLEKS                       R17 R16 K169 ["BackgroundColor3"]
      916 CALL                             R14 2 1
      917 MOVE                             R15 R3
      918 LOADK                            R16 K214 [".am-size-full-celldata"]
      919 DUPTABLE                         R17 K112 [{"Size"}]
      920 GETIMPORT                        R18 K114 [UDim2.new]
      922 LOADN                            R19 1
      923 LOADN                            R20 0
      924 LOADN                            R21 0
      925 GETTABLEKS                       R22 R2 K215 ["CellDataHeight"]
      927 CALL                             R18 4 1
      928 SETTABLEKS                       R18 R17 K111 ["Size"]
      930 CALL                             R15 2 1
      931 MOVE                             R16 R3
      932 LOADK                            R17 K216 [".am-size-scrollbar-full"]
      933 DUPTABLE                         R18 K112 [{"Size"}]
      934 GETIMPORT                        R19 K114 [UDim2.new]
      936 LOADN                            R20 0
      937 GETTABLEKS                       R21 R2 K129 ["LoadingBarHeight"]
      939 LOADN                            R22 1
      940 LOADN                            R23 0
      941 CALL                             R19 4 1
      942 SETTABLEKS                       R19 R18 K111 ["Size"]
      944 CALL                             R16 2 1
      945 MOVE                             R17 R3
      946 LOADK                            R18 K217 [".am-size-full-scrollbar"]
      947 DUPTABLE                         R19 K112 [{"Size"}]
      948 GETIMPORT                        R20 K114 [UDim2.new]
      950 LOADN                            R21 1
      951 LOADN                            R22 0
      952 LOADN                            R23 0
      953 GETTABLEKS                       R24 R2 K129 ["LoadingBarHeight"]
      955 CALL                             R20 4 1
      956 SETTABLEKS                       R20 R19 K111 ["Size"]
      958 CALL                             R17 2 1
      959 MOVE                             R18 R3
      960 LOADK                            R19 K218 [".am-size-full-topbar"]
      961 DUPTABLE                         R20 K112 [{"Size"}]
      962 GETIMPORT                        R21 K114 [UDim2.new]
      964 LOADN                            R22 1
      965 LOADN                            R23 0
      966 LOADN                            R24 0
      967 GETTABLEKS                       R25 R2 K115 ["TopBarHeight"]
      969 CALL                             R21 4 1
      970 SETTABLEKS                       R21 R20 K111 ["Size"]
      972 CALL                             R18 2 1
      973 MOVE                             R19 R3
      974 LOADK                            R20 K219 [".am-size-full-headerrow"]
      975 DUPTABLE                         R21 K112 [{"Size"}]
      976 GETIMPORT                        R22 K114 [UDim2.new]
      978 LOADN                            R23 1
      979 LOADN                            R24 0
      980 LOADN                            R25 0
      981 GETTABLEKS                       R26 R2 K175 ["HeaderRowHeight"]
      983 CALL                             R22 4 1
      984 SETTABLEKS                       R22 R21 K111 ["Size"]
      986 CALL                             R19 2 1
      987 MOVE                             R20 R3
      988 LOADK                            R21 K220 [".am-size-fit-headerrow"]
      989 DUPTABLE                         R22 K186 [{"Size", "AutomaticSize"}]
      990 GETIMPORT                        R23 K180 [UDim2.fromOffset]
      992 LOADN                            R24 0
      993 GETTABLEKS                       R25 R2 K175 ["HeaderRowHeight"]
      995 CALL                             R23 2 1
      996 SETTABLEKS                       R23 R22 K111 ["Size"]
      998 GETIMPORT                        R23 K222 [Enum.AutomaticSize.X]
     1000 SETTABLEKS                       R23 R22 K151 ["AutomaticSize"]
     1002 CALL                             R20 2 1
     1003 MOVE                             R21 R3
     1004 LOADK                            R22 K223 [".am-size-icon-xsmall"]
     1005 DUPTABLE                         R23 K112 [{"Size"}]
     1006 GETTABLEKS                       R24 R2 K140 ["IconSizeXSmall"]
     1008 SETTABLEKS                       R24 R23 K111 ["Size"]
     1010 CALL                             R21 2 1
     1011 SETLIST                          R5 R6 16 [17]
     1013 MOVE                             R6 R3
     1014 LOADK                            R7 K224 [".am-size-icon"]
     1015 DUPTABLE                         R8 K112 [{"Size"}]
     1016 LOADK                            R9 K225 ["$IconSize"]
     1017 SETTABLEKS                       R9 R8 K111 ["Size"]
     1019 CALL                             R6 2 1
     1020 MOVE                             R7 R3
     1021 LOADK                            R8 K226 [".am-bg-action-hover"]
     1022 DUPTABLE                         R9 K188 [{"BackgroundColor3", "BackgroundTransparency"}]
     1023 LOADK                            R10 K227 ["$ActionHover"]
     1024 SETTABLEKS                       R10 R9 K169 ["BackgroundColor3"]
     1026 LOADN                            R10 0
     1027 SETTABLEKS                       R10 R9 K148 ["BackgroundTransparency"]
     1029 CALL                             R7 2 1
     1030 MOVE                             R8 R3
     1031 LOADK                            R9 K228 [".am-hover"]
     1032 NEWTABLE                         R10 0 0
     1034 NEWTABLE                         R11 0 1
     1036 MOVE                             R12 R3
     1037 LOADK                            R13 K229 [":hover"]
     1038 DUPTABLE                         R14 K188 [{"BackgroundColor3", "BackgroundTransparency"}]
     1039 LOADK                            R15 K227 ["$ActionHover"]
     1040 SETTABLEKS                       R15 R14 K169 ["BackgroundColor3"]
     1042 LOADN                            R15 0
     1043 SETTABLEKS                       R15 R14 K148 ["BackgroundTransparency"]
     1045 CALL                             R12 2 -1
     1046 SETLIST                          R11 R12 -1 [1]
     1048 CALL                             R8 3 -1
     1049 SETLIST                          R5 R6 -1 [33]
     1051 DUPTABLE                         R6 K247 [{"PaddingSmall", "Padding", "PaddingLarge", "IconDisabled", "Rotation", "Transparency", "CheckboxSize", "IconSize", "SortItemSize", "IconWidth", "BaseWidth", "OffsetWidth", "CellHeightDiff", "ThumbnailSize", "CellTagPadding", "ColumnMinSize", "ContentListRowHeight", "ListThumbnailSize", "CellContentPadding", "InputHeight"}]
     1052 GETIMPORT                        R7 K127 [UDim.new]
     1054 LOADN                            R8 0
     1055 GETTABLEKS                       R9 R2 K132 ["PaddingSmall"]
     1057 CALL                             R7 2 1
     1058 SETTABLEKS                       R7 R6 K132 ["PaddingSmall"]
     1060 GETIMPORT                        R7 K127 [UDim.new]
     1062 LOADN                            R8 0
     1063 GETTABLEKS                       R9 R2 K90 ["Padding"]
     1065 CALL                             R7 2 1
     1066 SETTABLEKS                       R7 R6 K90 ["Padding"]
     1068 GETIMPORT                        R7 K127 [UDim.new]
     1070 LOADN                            R8 0
     1071 GETTABLEKS                       R9 R2 K230 ["PaddingLarge"]
     1073 CALL                             R7 2 1
     1074 SETTABLEKS                       R7 R6 K230 ["PaddingLarge"]
     1076 LOADK                            R7 K248 [0.62]
     1077 SETTABLEKS                       R7 R6 K231 ["IconDisabled"]
     1079 GETTABLEKS                       R7 R2 K249 ["ShimmerRotation"]
     1081 SETTABLEKS                       R7 R6 K232 ["Rotation"]
     1083 GETIMPORT                        R7 K251 [NumberSequence.new]
     1085 NEWTABLE                         R8 0 5
     1087 GETIMPORT                        R9 K253 [NumberSequenceKeypoint.new]
     1089 LOADN                            R10 0
     1090 LOADN                            R11 1
     1091 CALL                             R9 2 1
     1092 GETIMPORT                        R10 K253 [NumberSequenceKeypoint.new]
     1094 LOADK                            R11 K254 [0.05]
     1095 LOADN                            R12 1
     1096 CALL                             R10 2 1
     1097 GETIMPORT                        R11 K253 [NumberSequenceKeypoint.new]
     1099 LOADK                            R12 K197 [0.5]
     1100 LOADK                            R13 K255 [0.7]
     1101 CALL                             R11 2 1
     1102 GETIMPORT                        R12 K253 [NumberSequenceKeypoint.new]
     1104 LOADK                            R13 K0 ["script"]
     1105 LOADN                            R14 1
     1106 CALL                             R12 2 1
     1107 GETIMPORT                        R13 K253 [NumberSequenceKeypoint.new]
     1109 LOADN                            R14 1
     1110 LOADN                            R15 1
     1111 CALL                             R13 2 -1
     1112 SETLIST                          R8 R9 -1 [1]
     1114 CALL                             R7 1 1
     1115 SETTABLEKS                       R7 R6 K233 ["Transparency"]
     1117 GETTABLEKS                       R7 R2 K155 ["IconWidth"]
     1119 SETTABLEKS                       R7 R6 K234 ["CheckboxSize"]
     1121 GETTABLEKS                       R7 R2 K235 ["IconSize"]
     1123 SETTABLEKS                       R7 R6 K235 ["IconSize"]
     1125 GETIMPORT                        R7 K114 [UDim2.new]
     1127 LOADN                            R8 0
     1128 LOADN                            R9 150
     1129 LOADN                            R10 0
     1130 LOADN                            R11 24
     1131 CALL                             R7 4 1
     1132 SETTABLEKS                       R7 R6 K236 ["SortItemSize"]
     1134 GETTABLEKS                       R8 R2 K90 ["Padding"]
     1136 GETTABLEKS                       R9 R2 K155 ["IconWidth"]
     1138 ADD                              R7 R8 R9
     1139 SETTABLEKS                       R7 R6 K155 ["IconWidth"]
     1141 GETTABLEKS                       R7 R2 K237 ["BaseWidth"]
     1143 SETTABLEKS                       R7 R6 K237 ["BaseWidth"]
     1145 GETTABLEKS                       R9 R2 K90 ["Padding"]
     1147 MULK                             R8 R9 K133 [2]
     1148 GETTABLEKS                       R9 R2 K155 ["IconWidth"]
     1150 ADD                              R7 R8 R9
     1151 SETTABLEKS                       R7 R6 K238 ["OffsetWidth"]
     1153 GETTABLEKS                       R7 R2 K215 ["CellDataHeight"]
     1155 SETTABLEKS                       R7 R6 K239 ["CellHeightDiff"]
     1157 LOADN                            R7 50
     1158 SETTABLEKS                       R7 R6 K240 ["ThumbnailSize"]
     1160 GETTABLEKS                       R7 R2 K132 ["PaddingSmall"]
     1162 SETTABLEKS                       R7 R6 K241 ["CellTagPadding"]
     1164 GETIMPORT                        R7 K127 [UDim.new]
     1166 LOADN                            R8 0
     1167 LOADN                            R9 60
     1168 CALL                             R7 2 1
     1169 SETTABLEKS                       R7 R6 K242 ["ColumnMinSize"]
     1171 GETTABLEKS                       R7 R2 K177 ["ItemRowHeight"]
     1173 SETTABLEKS                       R7 R6 K243 ["ContentListRowHeight"]
     1175 GETTABLEKS                       R7 R2 K181 ["ThumbnailContainerSize"]
     1177 SETTABLEKS                       R7 R6 K244 ["ListThumbnailSize"]
     1179 GETTABLEKS                       R7 R2 K90 ["Padding"]
     1181 SETTABLEKS                       R7 R6 K245 ["CellContentPadding"]
     1183 GETTABLEKS                       R8 R2 K177 ["ItemRowHeight"]
     1185 LOADN                            R10 2
     1186 GETTABLEKS                       R11 R2 K90 ["Padding"]
     1188 MUL                              R9 R10 R11
     1189 SUB                              R7 R8 R9
     1190 SETTABLEKS                       R7 R6 K246 ["InputHeight"]
     1192 MOVE                             R7 R4
     1193 LOADK                            R8 K2 ["AssetManager"]
     1194 MOVE                             R9 R5
     1195 MOVE                             R10 R6
     1196 CALL                             R7 3 -1
     1197 RETURN                           R7 -1
