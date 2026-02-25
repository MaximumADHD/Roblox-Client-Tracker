MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Resources"]
       20 GETTABLEKS                       R3 R4 K10 ["StyleConstants"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R1 K11 ["Styling"]
       25 GETTABLEKS                       R3 R4 K12 ["createStyleRule"]
       27 GETTABLEKS                       R5 R1 K11 ["Styling"]
       29 GETTABLEKS                       R4 R5 K13 ["createStyleSheet"]
       31 NEWTABLE                         R5 0 58
       33 MOVE                             R6 R3
       34 LOADK                            R7 K14 ["ImageLabel, ImageButton"]
       35 NEWTABLE                         R8 0 0
       37 NEWTABLE                         R9 0 27
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
      240 LOADK                            R21 K75 [".icon-packageLink"]
      241 DUPTABLE                         R22 K78 [{"Image", "ZIndex", "Position"}]
      242 LOADK                            R23 K79 ["$PackageLinkIcon"]
      243 SETTABLEKS                       R23 R22 K22 ["Image"]
      245 LOADN                            R23 2
      246 SETTABLEKS                       R23 R22 K76 ["ZIndex"]
      248 GETIMPORT                        R23 K82 [UDim2.fromScale]
      250 LOADN                            R24 1
      251 LOADN                            R25 1
      252 CALL                             R23 2 1
      253 SETTABLEKS                       R23 R22 K77 ["Position"]
      255 NEWTABLE                         R23 0 1
      257 MOVE                             R24 R3
      258 LOADK                            R25 K83 ["> ImageLabel"]
      259 DUPTABLE                         R26 K84 [{"ZIndex"}]
      260 LOADN                            R27 2
      261 SETTABLEKS                       R27 R26 K76 ["ZIndex"]
      263 CALL                             R24 2 -1
      264 SETLIST                          R23 R24 -1 [1]
      266 CALL                             R20 3 -1
      267 SETLIST                          R9 R10 -1 [17]
      269 CALL                             R6 3 1
      270 MOVE                             R7 R3
      271 LOADK                            R8 K85 [".Toolbar"]
      272 NEWTABLE                         R9 0 0
      274 NEWTABLE                         R10 0 1
      276 MOVE                             R11 R3
      277 LOADK                            R12 K86 ["::UIListLayout"]
      278 DUPTABLE                         R13 K92 [{"FillDirection", "Padding", "SortOrder", "Wraps", "HorizontalFlex"}]
      279 GETIMPORT                        R14 K95 [Enum.FillDirection.Horizontal]
      281 SETTABLEKS                       R14 R13 K87 ["FillDirection"]
      283 LOADK                            R14 K96 ["$Padding"]
      284 SETTABLEKS                       R14 R13 K88 ["Padding"]
      286 GETIMPORT                        R14 K98 [Enum.SortOrder.LayoutOrder]
      288 SETTABLEKS                       R14 R13 K89 ["SortOrder"]
      290 LOADB                            R14 1
      291 SETTABLEKS                       R14 R13 K90 ["Wraps"]
      293 GETIMPORT                        R14 K101 [Enum.UIFlexAlignment.None]
      295 SETTABLEKS                       R14 R13 K91 ["HorizontalFlex"]
      297 CALL                             R11 2 -1
      298 SETLIST                          R10 R11 -1 [1]
      300 CALL                             R7 3 1
      301 MOVE                             R8 R3
      302 LOADK                            R9 K102 [".AssetThumbnail"]
      303 DUPTABLE                         R10 K104 [{"Size"}]
      304 GETIMPORT                        R11 K82 [UDim2.fromScale]
      306 LOADN                            R12 1
      307 LOADN                            R13 1
      308 CALL                             R11 2 1
      309 SETTABLEKS                       R11 R10 K103 ["Size"]
      311 CALL                             R8 2 1
      312 MOVE                             R9 R3
      313 LOADK                            R10 K105 ["#TopLevelDetector >> #Menu >> ScrollingFrame"]
      314 DUPTABLE                         R11 K107 [{"VerticalScrollBarInset"}]
      315 GETIMPORT                        R12 K109 [Enum.ScrollBarInset.None]
      317 SETTABLEKS                       R12 R11 K106 ["VerticalScrollBarInset"]
      319 CALL                             R9 2 1
      320 MOVE                             R10 R3
      321 LOADK                            R11 K110 [".App"]
      322 NEWTABLE                         R12 0 0
      324 NEWTABLE                         R13 0 3
      326 MOVE                             R14 R3
      327 LOADK                            R15 K111 [">> .Explorer"]
      328 DUPTABLE                         R16 K104 [{"Size"}]
      329 GETIMPORT                        R17 K113 [UDim2.new]
      331 LOADN                            R18 1
      332 LOADN                            R19 0
      333 LOADN                            R20 1
      334 GETTABLEKS                       R22 R2 K114 ["AMR_TOPBAR_HEIGHT"]
      336 MINUS                            R21 R22
      337 CALL                             R17 4 1
      338 SETTABLEKS                       R17 R16 K103 ["Size"]
      340 CALL                             R14 2 1
      341 MOVE                             R15 R3
      342 LOADK                            R16 K115 [">> .MainContents"]
      343 DUPTABLE                         R17 K104 [{"Size"}]
      344 GETIMPORT                        R18 K113 [UDim2.new]
      346 LOADN                            R19 1
      347 LOADN                            R20 0
      348 LOADN                            R21 1
      349 GETTABLEKS                       R23 R2 K114 ["AMR_TOPBAR_HEIGHT"]
      351 MINUS                            R22 R23
      352 CALL                             R18 4 1
      353 SETTABLEKS                       R18 R17 K103 ["Size"]
      355 NEWTABLE                         R18 0 3
      357 MOVE                             R19 R3
      358 LOADK                            R20 K116 ["::UIFlexItem"]
      359 DUPTABLE                         R21 K118 [{"FlexMode"}]
      360 GETIMPORT                        R22 K121 [Enum.UIFlexMode.Fill]
      362 SETTABLEKS                       R22 R21 K117 ["FlexMode"]
      364 CALL                             R19 2 1
      365 MOVE                             R20 R3
      366 LOADK                            R21 K122 ["::UIPadding"]
      367 DUPTABLE                         R22 K124 [{"PaddingTop"}]
      368 GETIMPORT                        R23 K126 [UDim.new]
      370 LOADN                            R24 0
      371 LOADN                            R25 1
      372 CALL                             R23 2 1
      373 SETTABLEKS                       R23 R22 K123 ["PaddingTop"]
      375 CALL                             R20 2 1
      376 MOVE                             R21 R3
      377 LOADK                            R22 K127 [".HasLoadingBar"]
      378 DUPTABLE                         R23 K104 [{"Size"}]
      379 GETIMPORT                        R24 K113 [UDim2.new]
      381 LOADN                            R25 1
      382 LOADN                            R26 0
      383 LOADN                            R27 1
      384 GETTABLEKS                       R30 R2 K114 ["AMR_TOPBAR_HEIGHT"]
      386 GETTABLEKS                       R31 R2 K128 ["AMR_LOADING_BAR_THICKNESS"]
      388 ADD                              R29 R30 R31
      389 MINUS                            R28 R29
      390 CALL                             R24 4 1
      391 SETTABLEKS                       R24 R23 K103 ["Size"]
      393 CALL                             R21 2 -1
      394 SETLIST                          R18 R19 -1 [1]
      396 CALL                             R15 3 1
      397 MOVE                             R16 R3
      398 LOADK                            R17 K129 ["> .SidebarButton"]
      399 DUPTABLE                         R18 K130 [{"Position"}]
      400 GETIMPORT                        R19 K113 [UDim2.new]
      402 LOADN                            R20 0
      403 GETTABLEKS                       R21 R2 K131 ["AMR_PADDING_SMALL"]
      405 LOADN                            R22 0
      406 LOADN                            R25 2
      407 GETTABLEKS                       R26 R2 K131 ["AMR_PADDING_SMALL"]
      409 MUL                              R24 R25 R26
      410 SUBK                             R23 R24 K132 [2]
      411 CALL                             R19 4 1
      412 SETTABLEKS                       R19 R18 K77 ["Position"]
      414 NEWTABLE                         R19 0 1
      416 MOVE                             R20 R3
      417 LOADK                            R21 K133 ["> Frame"]
      418 NEWTABLE                         R22 0 0
      420 NEWTABLE                         R23 0 2
      422 MOVE                             R24 R3
      423 LOADK                            R25 K122 ["::UIPadding"]
      424 DUPTABLE                         R26 K137 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      425 LOADK                            R27 K138 ["$PaddingSmall"]
      426 SETTABLEKS                       R27 R26 K134 ["PaddingLeft"]
      428 LOADK                            R27 K138 ["$PaddingSmall"]
      429 SETTABLEKS                       R27 R26 K135 ["PaddingRight"]
      431 LOADK                            R27 K138 ["$PaddingSmall"]
      432 SETTABLEKS                       R27 R26 K123 ["PaddingTop"]
      434 LOADK                            R27 K138 ["$PaddingSmall"]
      435 SETTABLEKS                       R27 R26 K136 ["PaddingBottom"]
      437 CALL                             R24 2 1
      438 MOVE                             R25 R3
      439 LOADK                            R26 K83 ["> ImageLabel"]
      440 DUPTABLE                         R27 K104 [{"Size"}]
      441 GETTABLEKS                       R28 R2 K139 ["AMR_ICON_SIZE_XSMALL"]
      443 SETTABLEKS                       R28 R27 K103 ["Size"]
      445 CALL                             R25 2 -1
      446 SETLIST                          R23 R24 -1 [1]
      448 CALL                             R20 3 -1
      449 SETLIST                          R19 R20 -1 [1]
      451 CALL                             R16 3 -1
      452 SETLIST                          R13 R14 -1 [1]
      454 CALL                             R10 3 1
      455 MOVE                             R11 R3
      456 LOADK                            R12 K140 [".ScopeOptions"]
      457 NEWTABLE                         R13 0 0
      459 NEWTABLE                         R14 0 3
      461 MOVE                             R15 R3
      462 LOADK                            R16 K141 [">> .Header"]
      463 NEWTABLE                         R17 0 0
      465 NEWTABLE                         R18 0 1
      467 MOVE                             R19 R3
      468 LOADK                            R20 K122 ["::UIPadding"]
      469 DUPTABLE                         R21 K142 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
      470 LOADK                            R22 K96 ["$Padding"]
      471 SETTABLEKS                       R22 R21 K123 ["PaddingTop"]
      473 LOADK                            R22 K96 ["$Padding"]
      474 SETTABLEKS                       R22 R21 K134 ["PaddingLeft"]
      476 LOADK                            R22 K96 ["$Padding"]
      477 SETTABLEKS                       R22 R21 K135 ["PaddingRight"]
      479 CALL                             R19 2 -1
      480 SETLIST                          R18 R19 -1 [1]
      482 CALL                             R15 3 1
      483 MOVE                             R16 R3
      484 LOADK                            R17 K143 [">> .Description"]
      485 NEWTABLE                         R18 0 0
      487 NEWTABLE                         R19 0 1
      489 MOVE                             R20 R3
      490 LOADK                            R21 K122 ["::UIPadding"]
      491 DUPTABLE                         R22 K142 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
      492 LOADK                            R23 K138 ["$PaddingSmall"]
      493 SETTABLEKS                       R23 R22 K123 ["PaddingTop"]
      495 LOADK                            R23 K96 ["$Padding"]
      496 SETTABLEKS                       R23 R22 K134 ["PaddingLeft"]
      498 LOADK                            R23 K96 ["$Padding"]
      499 SETTABLEKS                       R23 R22 K135 ["PaddingRight"]
      501 CALL                             R20 2 -1
      502 SETLIST                          R19 R20 -1 [1]
      504 CALL                             R16 3 1
      505 MOVE                             R17 R3
      506 LOADK                            R18 K144 [">> .Component-SearchBar"]
      507 NEWTABLE                         R19 0 0
      509 NEWTABLE                         R20 0 1
      511 MOVE                             R21 R3
      512 LOADK                            R22 K122 ["::UIPadding"]
      513 DUPTABLE                         R23 K145 [{"PaddingLeft", "PaddingRight"}]
      514 LOADK                            R24 K138 ["$PaddingSmall"]
      515 SETTABLEKS                       R24 R23 K134 ["PaddingLeft"]
      517 LOADK                            R24 K96 ["$Padding"]
      518 SETTABLEKS                       R24 R23 K135 ["PaddingRight"]
      520 CALL                             R21 2 -1
      521 SETLIST                          R20 R21 -1 [1]
      523 CALL                             R17 3 -1
      524 SETLIST                          R14 R15 -1 [1]
      526 NEWTABLE                         R15 0 0
      528 CALL                             R11 4 1
      529 MOVE                             R12 R3
      530 LOADK                            R13 K146 [".CheckboxRow"]
      531 DUPTABLE                         R14 K148 [{"BackgroundTransparency"}]
      532 LOADN                            R15 1
      533 SETTABLEKS                       R15 R14 K147 ["BackgroundTransparency"]
      535 NEWTABLE                         R15 0 2
      537 MOVE                             R16 R3
      538 LOADK                            R17 K149 ["> .CheckboxRowContents"]
      539 DUPTABLE                         R18 K151 [{"AutomaticSize", "Size"}]
      540 GETIMPORT                        R19 K153 [Enum.AutomaticSize.Y]
      542 SETTABLEKS                       R19 R18 K150 ["AutomaticSize"]
      544 GETIMPORT                        R19 K113 [UDim2.new]
      546 LOADN                            R20 1
      547 GETTABLEKS                       R23 R2 K154 ["AMR_ICON_WIDTH"]
      549 MINUS                            R22 R23
      550 MULK                             R21 R22 K132 [2]
      551 LOADN                            R22 0
      552 LOADN                            R23 0
      553 CALL                             R19 4 1
      554 SETTABLEKS                       R19 R18 K103 ["Size"]
      556 CALL                             R16 2 1
      557 MOVE                             R17 R3
      558 LOADK                            R18 K155 ["> .Component-Checkbox"]
      559 DUPTABLE                         R19 K157 [{"AnchorPoint", "Position", "Size"}]
      560 GETIMPORT                        R20 K159 [Vector2.new]
      562 LOADN                            R21 1
      563 LOADN                            R22 0
      564 CALL                             R20 2 1
      565 SETTABLEKS                       R20 R19 K156 ["AnchorPoint"]
      567 GETIMPORT                        R20 K82 [UDim2.fromScale]
      569 LOADN                            R21 1
      570 LOADN                            R22 0
      571 CALL                             R20 2 1
      572 SETTABLEKS                       R20 R19 K77 ["Position"]
      574 GETIMPORT                        R20 K82 [UDim2.fromScale]
      576 LOADN                            R21 0
      577 LOADN                            R22 1
      578 CALL                             R20 2 1
      579 SETTABLEKS                       R20 R19 K103 ["Size"]
      581 CALL                             R17 2 -1
      582 SETLIST                          R15 R16 -1 [1]
      584 CALL                             R12 3 1
      585 MOVE                             R13 R3
      586 LOADK                            R14 K160 [".SearchOptions"]
      587 NEWTABLE                         R15 0 0
      589 NEWTABLE                         R16 0 1
      591 MOVE                             R17 R3
      592 LOADK                            R18 K161 [">> .ScopeSelector"]
      593 NEWTABLE                         R19 0 0
      595 NEWTABLE                         R20 0 1
      597 MOVE                             R21 R3
      598 LOADK                            R22 K122 ["::UIPadding"]
      599 DUPTABLE                         R23 K162 [{"PaddingLeft", "PaddingRight", "PaddingBottom", "PaddingTop"}]
      600 LOADK                            R24 K96 ["$Padding"]
      601 SETTABLEKS                       R24 R23 K134 ["PaddingLeft"]
      603 LOADK                            R24 K96 ["$Padding"]
      604 SETTABLEKS                       R24 R23 K135 ["PaddingRight"]
      606 LOADK                            R24 K163 ["$PaddingLarge"]
      607 SETTABLEKS                       R24 R23 K136 ["PaddingBottom"]
      609 LOADK                            R24 K96 ["$Padding"]
      610 SETTABLEKS                       R24 R23 K123 ["PaddingTop"]
      612 CALL                             R21 2 -1
      613 SETLIST                          R20 R21 -1 [1]
      615 CALL                             R17 3 -1
      616 SETLIST                          R16 R17 -1 [1]
      618 CALL                             R13 3 1
      619 MOVE                             R14 R3
      620 LOADK                            R15 K164 [".HeaderOptions"]
      621 NEWTABLE                         R16 0 0
      623 NEWTABLE                         R17 0 1
      625 MOVE                             R18 R3
      626 LOADK                            R19 K122 ["::UIPadding"]
      627 DUPTABLE                         R20 K165 [{"PaddingRight", "PaddingTop", "PaddingBottom"}]
      628 LOADK                            R21 K166 ["$PaddingXLarge"]
      629 SETTABLEKS                       R21 R20 K135 ["PaddingRight"]
      631 LOADK                            R21 K138 ["$PaddingSmall"]
      632 SETTABLEKS                       R21 R20 K123 ["PaddingTop"]
      634 LOADK                            R21 K138 ["$PaddingSmall"]
      635 SETTABLEKS                       R21 R20 K136 ["PaddingBottom"]
      637 CALL                             R18 2 -1
      638 SETLIST                          R17 R18 -1 [1]
      640 CALL                             R14 3 1
      641 MOVE                             R15 R3
      642 LOADK                            R16 K167 [".FlyoutItem"]
      643 DUPTABLE                         R17 K168 [{"AutomaticSize"}]
      644 GETIMPORT                        R18 K153 [Enum.AutomaticSize.Y]
      646 SETTABLEKS                       R18 R17 K150 ["AutomaticSize"]
      648 NEWTABLE                         R18 0 1
      650 MOVE                             R19 R3
      651 LOADK                            R20 K169 ["> .Contents"]
      652 DUPTABLE                         R21 K104 [{"Size"}]
      653 GETIMPORT                        R22 K113 [UDim2.new]
      655 LOADN                            R23 1
      656 LOADN                            R24 0
      657 LOADN                            R25 0
      658 GETTABLEKS                       R26 R2 K170 ["HEIGHT"]
      660 CALL                             R22 4 1
      661 SETTABLEKS                       R22 R21 K103 ["Size"]
      663 NEWTABLE                         R22 0 2
      665 MOVE                             R23 R3
      666 LOADK                            R24 K171 [">> .Label"]
      667 DUPTABLE                         R25 K172 [{"AnchorPoint", "Position"}]
      668 GETIMPORT                        R26 K159 [Vector2.new]
      670 LOADN                            R27 0
      671 LOADK                            R28 K173 [0.5]
      672 CALL                             R26 2 1
      673 SETTABLEKS                       R26 R25 K156 ["AnchorPoint"]
      675 GETIMPORT                        R26 K82 [UDim2.fromScale]
      677 LOADN                            R27 0
      678 LOADK                            R28 K173 [0.5]
      679 CALL                             R26 2 1
      680 SETTABLEKS                       R26 R25 K77 ["Position"]
      682 NEWTABLE                         R26 0 1
      684 MOVE                             R27 R3
      685 LOADK                            R28 K122 ["::UIPadding"]
      686 DUPTABLE                         R29 K174 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
      687 LOADK                            R30 K96 ["$Padding"]
      688 SETTABLEKS                       R30 R29 K134 ["PaddingLeft"]
      690 LOADK                            R30 K138 ["$PaddingSmall"]
      691 SETTABLEKS                       R30 R29 K123 ["PaddingTop"]
      693 LOADK                            R30 K138 ["$PaddingSmall"]
      694 SETTABLEKS                       R30 R29 K136 ["PaddingBottom"]
      696 CALL                             R27 2 -1
      697 SETLIST                          R26 R27 -1 [1]
      699 CALL                             R23 3 1
      700 MOVE                             R24 R3
      701 LOADK                            R25 K175 ["> .Icon"]
      702 DUPTABLE                         R26 K176 [{"AnchorPoint", "Position", "Size", "AutomaticSize"}]
      703 GETIMPORT                        R27 K159 [Vector2.new]
      705 LOADN                            R28 1
      706 LOADK                            R29 K173 [0.5]
      707 CALL                             R27 2 1
      708 SETTABLEKS                       R27 R26 K156 ["AnchorPoint"]
      710 GETIMPORT                        R27 K82 [UDim2.fromScale]
      712 LOADN                            R28 1
      713 LOADK                            R29 K173 [0.5]
      714 CALL                             R27 2 1
      715 SETTABLEKS                       R27 R26 K77 ["Position"]
      717 GETIMPORT                        R27 K113 [UDim2.new]
      719 LOADN                            R28 0
      720 LOADN                            R29 0
      721 LOADN                            R30 1
      722 LOADN                            R31 0
      723 CALL                             R27 4 1
      724 SETTABLEKS                       R27 R26 K103 ["Size"]
      726 GETIMPORT                        R27 K178 [Enum.AutomaticSize.X]
      728 SETTABLEKS                       R27 R26 K150 ["AutomaticSize"]
      730 NEWTABLE                         R27 0 2
      732 MOVE                             R28 R3
      733 LOADK                            R29 K179 [".Arrow"]
      734 NEWTABLE                         R30 0 0
      736 NEWTABLE                         R31 0 1
      738 MOVE                             R32 R3
      739 LOADK                            R33 K83 ["> ImageLabel"]
      740 DUPTABLE                         R34 K23 [{"Image"}]
      741 LOADK                            R35 K26 ["$ArrowRightIcon"]
      742 SETTABLEKS                       R35 R34 K22 ["Image"]
      744 CALL                             R32 2 -1
      745 SETLIST                          R31 R32 -1 [1]
      747 CALL                             R28 3 1
      748 MOVE                             R29 R3
      749 LOADK                            R30 K180 [".Checkmark"]
      750 NEWTABLE                         R31 0 0
      752 NEWTABLE                         R32 0 1
      754 MOVE                             R33 R3
      755 LOADK                            R34 K83 ["> ImageLabel"]
      756 DUPTABLE                         R35 K23 [{"Image"}]
      757 LOADK                            R36 K30 ["$CheckmarkIcon"]
      758 SETTABLEKS                       R36 R35 K22 ["Image"]
      760 CALL                             R33 2 -1
      761 SETLIST                          R32 R33 -1 [1]
      763 CALL                             R29 3 -1
      764 SETLIST                          R27 R28 -1 [1]
      766 CALL                             R24 3 -1
      767 SETLIST                          R22 R23 -1 [1]
      769 CALL                             R19 3 -1
      770 SETLIST                          R18 R19 -1 [1]
      772 CALL                             R15 3 1
      773 MOVE                             R16 R3
      774 LOADK                            R17 K181 [".CellThumbnailContainer"]
      775 DUPTABLE                         R18 K104 [{"Size"}]
      776 GETIMPORT                        R19 K113 [UDim2.new]
      778 LOADN                            R20 1
      779 LOADN                            R21 0
      780 LOADN                            R22 1
      781 GETTABLEKS                       R24 R2 K182 ["AMR_CELLDATA_HEIGHT"]
      783 MINUS                            R23 R24
      784 CALL                             R19 4 1
      785 SETTABLEKS                       R19 R18 K103 ["Size"]
      787 CALL                             R16 2 1
      788 MOVE                             R17 R3
      789 LOADK                            R18 K183 [".ContentList"]
      790 NEWTABLE                         R19 0 0
      792 NEWTABLE                         R20 0 2
      794 MOVE                             R21 R3
      795 LOADK                            R22 K184 ["> .HeaderRow"]
      796 DUPTABLE                         R23 K188 [{"BorderColor3", "BorderSizePixel", "BackgroundColor3"}]
      797 LOADK                            R24 K189 ["$Divider"]
      798 SETTABLEKS                       R24 R23 K185 ["BorderColor3"]
      800 LOADN                            R24 1
      801 SETTABLEKS                       R24 R23 K186 ["BorderSizePixel"]
      803 LOADK                            R24 K190 ["$ForegroundContrast"]
      804 SETTABLEKS                       R24 R23 K187 ["BackgroundColor3"]
      806 NEWTABLE                         R24 0 1
      808 MOVE                             R25 R3
      809 LOADK                            R26 K86 ["::UIListLayout"]
      810 DUPTABLE                         R27 K191 [{"FillDirection", "SortOrder"}]
      811 GETIMPORT                        R28 K95 [Enum.FillDirection.Horizontal]
      813 SETTABLEKS                       R28 R27 K87 ["FillDirection"]
      815 GETIMPORT                        R28 K98 [Enum.SortOrder.LayoutOrder]
      817 SETTABLEKS                       R28 R27 K89 ["SortOrder"]
      819 CALL                             R25 2 -1
      820 SETLIST                          R24 R25 -1 [1]
      822 CALL                             R21 3 1
      823 MOVE                             R22 R3
      824 LOADK                            R23 K192 ["> .ItemList"]
      825 DUPTABLE                         R24 K104 [{"Size"}]
      826 GETIMPORT                        R25 K113 [UDim2.new]
      828 LOADN                            R26 1
      829 LOADN                            R27 0
      830 LOADN                            R28 1
      831 GETTABLEKS                       R30 R2 K193 ["AMR_HEADERROW_HEIGHT"]
      833 MINUS                            R29 R30
      834 CALL                             R25 4 1
      835 SETTABLEKS                       R25 R24 K103 ["Size"]
      837 CALL                             R22 2 -1
      838 SETLIST                          R20 R21 -1 [1]
      840 CALL                             R17 3 1
      841 MOVE                             R18 R3
      842 LOADK                            R19 K194 [".ItemRow"]
      843 DUPTABLE                         R20 K104 [{"Size"}]
      844 GETIMPORT                        R21 K113 [UDim2.new]
      846 LOADN                            R22 1
      847 LOADN                            R23 0
      848 LOADN                            R24 0
      849 GETTABLEKS                       R25 R2 K195 ["AMR_ITEMROW_DEFAULT_HEIGHT"]
      851 CALL                             R21 4 1
      852 SETTABLEKS                       R21 R20 K103 ["Size"]
      854 NEWTABLE                         R21 0 3
      856 MOVE                             R22 R3
      857 LOADK                            R23 K196 [".FocusedRow ::UIStroke"]
      858 DUPTABLE                         R24 K200 [{"ApplyStrokeMode", "Color", "Thickness"}]
      859 GETIMPORT                        R25 K202 [Enum.ApplyStrokeMode.Border]
      861 SETTABLEKS                       R25 R24 K197 ["ApplyStrokeMode"]
      863 LOADK                            R25 K203 ["$ActionFocusBorder"]
      864 SETTABLEKS                       R25 R24 K198 ["Color"]
      866 LOADN                            R25 1
      867 SETTABLEKS                       R25 R24 K199 ["Thickness"]
      869 CALL                             R22 2 1
      870 MOVE                             R23 R3
      871 LOADK                            R24 K204 [">> .ThumbnailContainer"]
      872 DUPTABLE                         R25 K205 [{"Size", "BackgroundColor3"}]
      873 GETIMPORT                        R26 K207 [UDim2.fromOffset]
      875 GETTABLEKS                       R27 R2 K208 ["THUMBNAIL_CONTAINER_SIZE"]
      877 GETTABLEKS                       R28 R2 K208 ["THUMBNAIL_CONTAINER_SIZE"]
      879 CALL                             R26 2 1
      880 SETTABLEKS                       R26 R25 K103 ["Size"]
      882 LOADK                            R26 K190 ["$ForegroundContrast"]
      883 SETTABLEKS                       R26 R25 K187 ["BackgroundColor3"]
      885 CALL                             R23 2 1
      886 MOVE                             R24 R3
      887 LOADK                            R25 K209 [">> TextLabel"]
      888 NEWTABLE                         R26 0 0
      890 NEWTABLE                         R27 0 1
      892 MOVE                             R28 R3
      893 LOADK                            R29 K122 ["::UIPadding"]
      894 DUPTABLE                         R30 K145 [{"PaddingLeft", "PaddingRight"}]
      895 LOADK                            R31 K96 ["$Padding"]
      896 SETTABLEKS                       R31 R30 K134 ["PaddingLeft"]
      898 LOADK                            R31 K96 ["$Padding"]
      899 SETTABLEKS                       R31 R30 K135 ["PaddingRight"]
      901 CALL                             R28 2 -1
      902 SETLIST                          R27 R28 -1 [1]
      904 CALL                             R24 3 -1
      905 SETLIST                          R21 R22 -1 [1]
      907 CALL                             R18 3 1
      908 MOVE                             R19 R3
      909 LOADK                            R20 K210 [".TopSidebarButtonPadding"]
      910 DUPTABLE                         R21 K104 [{"Size"}]
      911 GETIMPORT                        R22 K113 [UDim2.new]
      913 LOADN                            R23 0
      914 GETTABLEKS                       R24 R2 K211 ["AMR_SIDEBAR_TOGGLE_PADDING"]
      916 LOADN                            R25 0
      917 GETTABLEKS                       R26 R2 K211 ["AMR_SIDEBAR_TOGGLE_PADDING"]
      919 CALL                             R22 4 1
      920 SETTABLEKS                       R22 R21 K103 ["Size"]
      922 CALL                             R19 2 1
      923 MOVE                             R20 R3
      924 LOADK                            R21 K212 [".SearchPanel"]
      925 DUPTABLE                         R22 K104 [{"Size"}]
      926 GETIMPORT                        R23 K113 [UDim2.new]
      928 LOADN                            R24 1
      929 GETTABLEKS                       R25 R2 K131 ["AMR_PADDING_SMALL"]
      931 LOADN                            R26 0
      932 GETTABLEKS                       R27 R2 K114 ["AMR_TOPBAR_HEIGHT"]
      934 CALL                             R23 4 1
      935 SETTABLEKS                       R23 R22 K103 ["Size"]
      937 CALL                             R20 2 1
      938 MOVE                             R21 R3
      939 LOADK                            R22 K213 [".FillMinusDragX"]
      940 DUPTABLE                         R23 K104 [{"Size"}]
      941 GETIMPORT                        R24 K113 [UDim2.new]
      943 LOADN                            R25 1
      944 GETTABLEKS                       R27 R2 K131 ["AMR_PADDING_SMALL"]
      946 MINUS                            R26 R27
      947 LOADN                            R27 1
      948 LOADN                            R28 0
      949 CALL                             R24 4 1
      950 SETTABLEKS                       R24 R23 K103 ["Size"]
      952 CALL                             R21 2 1
      953 SETLIST                          R5 R6 16 [1]
      955 MOVE                             R6 R3
      956 LOADK                            R7 K214 [".FitYPlusDragX"]
      957 DUPTABLE                         R8 K215 [{"Size", "AutomaticSize"}]
      958 GETIMPORT                        R9 K113 [UDim2.new]
      960 LOADN                            R10 1
      961 GETTABLEKS                       R11 R2 K131 ["AMR_PADDING_SMALL"]
      963 LOADN                            R12 0
      964 LOADN                            R13 0
      965 CALL                             R9 4 1
      966 SETTABLEKS                       R9 R8 K103 ["Size"]
      968 GETIMPORT                        R9 K153 [Enum.AutomaticSize.Y]
      970 SETTABLEKS                       R9 R8 K150 ["AutomaticSize"]
      972 CALL                             R6 2 1
      973 MOVE                             R7 R3
      974 LOADK                            R8 K216 [".bg-action-selected"]
      975 DUPTABLE                         R9 K217 [{"BackgroundColor3", "BackgroundTransparency"}]
      976 LOADK                            R10 K218 ["$ActionSelected"]
      977 SETTABLEKS                       R10 R9 K187 ["BackgroundColor3"]
      979 LOADN                            R10 0
      980 SETTABLEKS                       R10 R9 K147 ["BackgroundTransparency"]
      982 CALL                             R7 2 1
      983 MOVE                             R8 R3
      984 LOADK                            R9 K219 [".bg-foreground-main"]
      985 DUPTABLE                         R10 K217 [{"BackgroundColor3", "BackgroundTransparency"}]
      986 LOADK                            R11 K220 ["$ForegroundMain"]
      987 SETTABLEKS                       R11 R10 K187 ["BackgroundColor3"]
      989 LOADN                            R11 0
      990 SETTABLEKS                       R11 R10 K147 ["BackgroundTransparency"]
      992 CALL                             R8 2 1
      993 MOVE                             R9 R3
      994 LOADK                            R10 K221 [".bg-foreground-contrast"]
      995 DUPTABLE                         R11 K217 [{"BackgroundColor3", "BackgroundTransparency"}]
      996 LOADK                            R12 K190 ["$ForegroundContrast"]
      997 SETTABLEKS                       R12 R11 K187 ["BackgroundColor3"]
      999 LOADN                            R12 0
     1000 SETTABLEKS                       R12 R11 K147 ["BackgroundTransparency"]
     1002 CALL                             R9 2 1
     1003 MOVE                             R10 R3
     1004 LOADK                            R11 K222 [".bg-paper"]
     1005 DUPTABLE                         R12 K217 [{"BackgroundColor3", "BackgroundTransparency"}]
     1006 LOADK                            R13 K223 ["$BackgroundPaper"]
     1007 SETTABLEKS                       R13 R12 K187 ["BackgroundColor3"]
     1009 LOADN                            R13 0
     1010 SETTABLEKS                       R13 R12 K147 ["BackgroundTransparency"]
     1012 CALL                             R10 2 1
     1013 MOVE                             R11 R3
     1014 LOADK                            R12 K224 [".anchor-center-right"]
     1015 DUPTABLE                         R13 K225 [{"AnchorPoint"}]
     1016 GETIMPORT                        R14 K159 [Vector2.new]
     1018 LOADN                            R15 1
     1019 LOADK                            R16 K173 [0.5]
     1020 CALL                             R14 2 1
     1021 SETTABLEKS                       R14 R13 K156 ["AnchorPoint"]
     1023 CALL                             R11 2 1
     1024 MOVE                             R12 R3
     1025 LOADK                            R13 K226 [".anchor-bottom-left"]
     1026 DUPTABLE                         R14 K225 [{"AnchorPoint"}]
     1027 GETIMPORT                        R15 K159 [Vector2.new]
     1029 LOADN                            R16 0
     1030 LOADN                            R17 1
     1031 CALL                             R15 2 1
     1032 SETTABLEKS                       R15 R14 K156 ["AnchorPoint"]
     1034 CALL                             R12 2 1
     1035 MOVE                             R13 R3
     1036 LOADK                            R14 K227 [".anchor-bottom-right"]
     1037 DUPTABLE                         R15 K225 [{"AnchorPoint"}]
     1038 GETIMPORT                        R16 K159 [Vector2.new]
     1040 LOADN                            R17 1
     1041 LOADN                            R18 1
     1042 CALL                             R16 2 1
     1043 SETTABLEKS                       R16 R15 K156 ["AnchorPoint"]
     1045 CALL                             R13 2 1
     1046 MOVE                             R14 R3
     1047 LOADK                            R15 K228 [".bg-action-subtle"]
     1048 DUPTABLE                         R16 K229 [{"BackgroundTransparency", "BackgroundColor3"}]
     1049 LOADN                            R17 1
     1050 SETTABLEKS                       R17 R16 K147 ["BackgroundTransparency"]
     1052 LOADK                            R17 K230 [{0, 0, 0}]
     1053 SETTABLEKS                       R17 R16 K187 ["BackgroundColor3"]
     1055 CALL                             R14 2 1
     1056 MOVE                             R15 R3
     1057 LOADK                            R16 K231 [".position-center-right"]
     1058 DUPTABLE                         R17 K130 [{"Position"}]
     1059 GETIMPORT                        R18 K113 [UDim2.new]
     1061 LOADN                            R19 1
     1062 LOADN                            R20 0
     1063 LOADK                            R21 K173 [0.5]
     1064 LOADN                            R22 0
     1065 CALL                             R18 4 1
     1066 SETTABLEKS                       R18 R17 K77 ["Position"]
     1068 CALL                             R15 2 1
     1069 MOVE                             R16 R3
     1070 LOADK                            R17 K232 [".position-bottom-left"]
     1071 DUPTABLE                         R18 K130 [{"Position"}]
     1072 GETIMPORT                        R19 K82 [UDim2.fromScale]
     1074 LOADN                            R20 0
     1075 LOADN                            R21 1
     1076 CALL                             R19 2 1
     1077 SETTABLEKS                       R19 R18 K77 ["Position"]
     1079 CALL                             R16 2 1
     1080 MOVE                             R17 R3
     1081 LOADK                            R18 K233 [".radius-xsmall"]
     1082 NEWTABLE                         R19 0 0
     1084 NEWTABLE                         R20 0 1
     1086 MOVE                             R21 R3
     1087 LOADK                            R22 K234 ["::UICorner"]
     1088 DUPTABLE                         R23 K236 [{"CornerRadius"}]
     1089 GETIMPORT                        R24 K126 [UDim.new]
     1091 LOADN                            R25 0
     1092 LOADN                            R26 2
     1093 CALL                             R24 2 1
     1094 SETTABLEKS                       R24 R23 K235 ["CornerRadius"]
     1096 CALL                             R21 2 -1
     1097 SETLIST                          R20 R21 -1 [1]
     1099 CALL                             R17 3 1
     1100 MOVE                             R18 R3
     1101 LOADK                            R19 K237 [".radius-small"]
     1102 NEWTABLE                         R20 0 0
     1104 NEWTABLE                         R21 0 1
     1106 MOVE                             R22 R3
     1107 LOADK                            R23 K234 ["::UICorner"]
     1108 DUPTABLE                         R24 K236 [{"CornerRadius"}]
     1109 GETIMPORT                        R25 K126 [UDim.new]
     1111 LOADN                            R26 0
     1112 LOADN                            R27 4
     1113 CALL                             R25 2 1
     1114 SETTABLEKS                       R25 R24 K235 ["CornerRadius"]
     1116 CALL                             R22 2 -1
     1117 SETLIST                          R21 R22 -1 [1]
     1119 CALL                             R18 3 1
     1120 MOVE                             R19 R3
     1121 LOADK                            R20 K238 [".radius-circle"]
     1122 NEWTABLE                         R21 0 0
     1124 NEWTABLE                         R22 0 1
     1126 MOVE                             R23 R3
     1127 LOADK                            R24 K234 ["::UICorner"]
     1128 DUPTABLE                         R25 K236 [{"CornerRadius"}]
     1129 GETIMPORT                        R26 K126 [UDim.new]
     1131 LOADN                            R27 0
     1132 LOADN                            R28 15
     1133 CALL                             R26 2 1
     1134 SETTABLEKS                       R26 R25 K235 ["CornerRadius"]
     1136 CALL                             R23 2 -1
     1137 SETLIST                          R22 R23 -1 [1]
     1139 CALL                             R19 3 1
     1140 MOVE                             R20 R3
     1141 LOADK                            R21 K239 [".size-full"]
     1142 DUPTABLE                         R22 K104 [{"Size"}]
     1143 GETIMPORT                        R23 K113 [UDim2.new]
     1145 LOADN                            R24 1
     1146 LOADN                            R25 0
     1147 LOADN                            R26 1
     1148 LOADN                            R27 0
     1149 CALL                             R23 4 1
     1150 SETTABLEKS                       R23 R22 K103 ["Size"]
     1152 CALL                             R20 2 1
     1153 MOVE                             R21 R3
     1154 LOADK                            R22 K240 [".fill"]
     1155 NEWTABLE                         R23 0 0
     1157 NEWTABLE                         R24 0 1
     1159 MOVE                             R25 R3
     1160 LOADK                            R26 K116 ["::UIFlexItem"]
     1161 DUPTABLE                         R27 K118 [{"FlexMode"}]
     1162 GETIMPORT                        R28 K121 [Enum.UIFlexMode.Fill]
     1164 SETTABLEKS                       R28 R27 K117 ["FlexMode"]
     1166 CALL                             R25 2 -1
     1167 SETLIST                          R24 R25 -1 [1]
     1169 CALL                             R21 3 1
     1170 SETLIST                          R5 R6 16 [17]
     1172 MOVE                             R6 R3
     1173 LOADK                            R7 K241 [".grow"]
     1174 NEWTABLE                         R8 0 0
     1176 NEWTABLE                         R9 0 1
     1178 MOVE                             R10 R3
     1179 LOADK                            R11 K116 ["::UIFlexItem"]
     1180 DUPTABLE                         R12 K118 [{"FlexMode"}]
     1181 GETIMPORT                        R13 K243 [Enum.UIFlexMode.Grow]
     1183 SETTABLEKS                       R13 R12 K117 ["FlexMode"]
     1185 CALL                             R10 2 -1
     1186 SETLIST                          R9 R10 -1 [1]
     1188 CALL                             R6 3 1
     1189 MOVE                             R7 R3
     1190 LOADK                            R8 K244 [".am-padding-right-xsmall"]
     1191 NEWTABLE                         R9 0 0
     1193 NEWTABLE                         R10 0 1
     1195 MOVE                             R11 R3
     1196 LOADK                            R12 K122 ["::UIPadding"]
     1197 DUPTABLE                         R13 K245 [{"PaddingRight"}]
     1198 LOADK                            R14 K138 ["$PaddingSmall"]
     1199 SETTABLEKS                       R14 R13 K135 ["PaddingRight"]
     1201 CALL                             R11 2 -1
     1202 SETLIST                          R10 R11 -1 [1]
     1204 CALL                             R7 3 1
     1205 MOVE                             R8 R3
     1206 LOADK                            R9 K246 [".am-padding-right-medium"]
     1207 NEWTABLE                         R10 0 0
     1209 NEWTABLE                         R11 0 1
     1211 MOVE                             R12 R3
     1212 LOADK                            R13 K122 ["::UIPadding"]
     1213 DUPTABLE                         R14 K245 [{"PaddingRight"}]
     1214 LOADK                            R15 K96 ["$Padding"]
     1215 SETTABLEKS                       R15 R14 K135 ["PaddingRight"]
     1217 CALL                             R12 2 -1
     1218 SETLIST                          R11 R12 -1 [1]
     1220 CALL                             R8 3 1
     1221 MOVE                             R9 R3
     1222 LOADK                            R10 K247 [".am-padding-x-medium"]
     1223 NEWTABLE                         R11 0 0
     1225 NEWTABLE                         R12 0 1
     1227 MOVE                             R13 R3
     1228 LOADK                            R14 K122 ["::UIPadding"]
     1229 DUPTABLE                         R15 K145 [{"PaddingLeft", "PaddingRight"}]
     1230 LOADK                            R16 K96 ["$Padding"]
     1231 SETTABLEKS                       R16 R15 K134 ["PaddingLeft"]
     1233 LOADK                            R16 K96 ["$Padding"]
     1234 SETTABLEKS                       R16 R15 K135 ["PaddingRight"]
     1236 CALL                             R13 2 -1
     1237 SETLIST                          R12 R13 -1 [1]
     1239 CALL                             R9 3 1
     1240 MOVE                             R10 R3
     1241 LOADK                            R11 K248 [".am-padding-y-medium"]
     1242 NEWTABLE                         R12 0 0
     1244 NEWTABLE                         R13 0 1
     1246 MOVE                             R14 R3
     1247 LOADK                            R15 K122 ["::UIPadding"]
     1248 DUPTABLE                         R16 K249 [{"PaddingTop", "PaddingBottom"}]
     1249 LOADK                            R17 K96 ["$Padding"]
     1250 SETTABLEKS                       R17 R16 K123 ["PaddingTop"]
     1252 LOADK                            R17 K96 ["$Padding"]
     1253 SETTABLEKS                       R17 R16 K136 ["PaddingBottom"]
     1255 CALL                             R14 2 -1
     1256 SETLIST                          R13 R14 -1 [1]
     1258 CALL                             R10 3 1
     1259 MOVE                             R11 R3
     1260 LOADK                            R12 K250 [".am-padding-left-small"]
     1261 NEWTABLE                         R13 0 0
     1263 NEWTABLE                         R14 0 1
     1265 MOVE                             R15 R3
     1266 LOADK                            R16 K122 ["::UIPadding"]
     1267 DUPTABLE                         R17 K251 [{"PaddingLeft"}]
     1268 LOADK                            R18 K138 ["$PaddingSmall"]
     1269 SETTABLEKS                       R18 R17 K134 ["PaddingLeft"]
     1271 CALL                             R15 2 -1
     1272 SETLIST                          R14 R15 -1 [1]
     1274 CALL                             R11 3 1
     1275 MOVE                             R12 R3
     1276 LOADK                            R13 K252 [".am-padding-left-medium"]
     1277 NEWTABLE                         R14 0 0
     1279 NEWTABLE                         R15 0 1
     1281 MOVE                             R16 R3
     1282 LOADK                            R17 K122 ["::UIPadding"]
     1283 DUPTABLE                         R18 K251 [{"PaddingLeft"}]
     1284 LOADK                            R19 K96 ["$Padding"]
     1285 SETTABLEKS                       R19 R18 K134 ["PaddingLeft"]
     1287 CALL                             R16 2 -1
     1288 SETLIST                          R15 R16 -1 [1]
     1290 CALL                             R12 3 1
     1291 MOVE                             R13 R3
     1292 LOADK                            R14 K253 [".am-padding-top-large"]
     1293 NEWTABLE                         R15 0 0
     1295 NEWTABLE                         R16 0 1
     1297 MOVE                             R17 R3
     1298 LOADK                            R18 K122 ["::UIPadding"]
     1299 DUPTABLE                         R19 K124 [{"PaddingTop"}]
     1300 LOADK                            R20 K163 ["$PaddingLarge"]
     1301 SETTABLEKS                       R20 R19 K123 ["PaddingTop"]
     1303 CALL                             R17 2 -1
     1304 SETLIST                          R16 R17 -1 [1]
     1306 CALL                             R13 3 1
     1307 MOVE                             R14 R3
     1308 LOADK                            R15 K254 [".am-padding-bottom-small"]
     1309 NEWTABLE                         R16 0 0
     1311 NEWTABLE                         R17 0 1
     1313 MOVE                             R18 R3
     1314 LOADK                            R19 K122 ["::UIPadding"]
     1315 DUPTABLE                         R20 K255 [{"PaddingBottom"}]
     1316 LOADK                            R21 K138 ["$PaddingSmall"]
     1317 SETTABLEKS                       R21 R20 K136 ["PaddingBottom"]
     1319 CALL                             R18 2 -1
     1320 SETLIST                          R17 R18 -1 [1]
     1322 CALL                             R14 3 1
     1323 MOVE                             R15 R3
     1324 LOADK                            R16 K0 ["script"]
     1325 NEWTABLE                         R17 0 0
     1327 NEWTABLE                         R18 0 1
     1329 MOVE                             R19 R3
     1330 LOADK                            R20 K122 ["::UIPadding"]
     1331 DUPTABLE                         R21 K255 [{"PaddingBottom"}]
     1332 LOADK                            R22 K96 ["$Padding"]
     1333 SETTABLEKS                       R22 R21 K136 ["PaddingBottom"]
     1335 CALL                             R19 2 -1
     1336 SETLIST                          R18 R19 -1 [1]
     1338 CALL                             R15 3 1
     1339 MOVE                             R16 R3
     1340 LOADK                            R17 K1 [script]
     1341 NEWTABLE                         R18 0 0
     1343 NEWTABLE                         R19 0 1
     1345 MOVE                             R20 R3
     1346 LOADK                            R21 K122 ["::UIPadding"]
     1347 DUPTABLE                         R22 K137 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     1348 LOADK                            R23 K138 ["$PaddingSmall"]
     1349 SETTABLEKS                       R23 R22 K134 ["PaddingLeft"]
     1351 LOADK                            R23 K138 ["$PaddingSmall"]
     1352 SETTABLEKS                       R23 R22 K135 ["PaddingRight"]
     1354 LOADK                            R23 K138 ["$PaddingSmall"]
     1355 SETTABLEKS                       R23 R22 K123 ["PaddingTop"]
     1357 LOADK                            R23 K96 ["$Padding"]
     1358 SETTABLEKS                       R23 R22 K136 ["PaddingBottom"]
     1360 CALL                             R20 2 -1
     1361 SETLIST                          R19 R20 -1 [1]
     1363 CALL                             R16 3 1
     1364 MOVE                             R17 R3
     1365 LOADK                            R18 K2 ["AssetManager"]
     1366 DUPTABLE                         R19 K130 [{"Position"}]
     1367 GETIMPORT                        R20 K113 [UDim2.new]
     1369 LOADN                            R21 1
     1370 GETTABLEKS                       R23 R2 K131 ["AMR_PADDING_SMALL"]
     1372 MINUS                            R22 R23
     1373 LOADK                            R23 K173 [0.5]
     1374 LOADN                            R24 0
     1375 CALL                             R20 4 1
     1376 SETTABLEKS                       R20 R19 K77 ["Position"]
     1378 CALL                             R17 2 1
     1379 MOVE                             R18 R3
     1380 LOADK                            R19 K3 ["FindFirstAncestor"]
     1381 DUPTABLE                         R20 K104 [{"Size"}]
     1382 GETIMPORT                        R21 K113 [UDim2.new]
     1384 LOADN                            R22 1
     1385 LOADN                            R23 0
     1386 LOADN                            R24 0
     1387 GETTABLEKS                       R25 R2 K182 ["AMR_CELLDATA_HEIGHT"]
     1389 CALL                             R21 4 1
     1390 SETTABLEKS                       R21 R20 K103 ["Size"]
     1392 CALL                             R18 2 1
     1393 MOVE                             R19 R3
     1394 LOADK                            R20 K4 ["require"]
     1395 DUPTABLE                         R21 K104 [{"Size"}]
     1396 GETIMPORT                        R22 K113 [UDim2.new]
     1398 LOADN                            R23 0
     1399 GETTABLEKS                       R25 R2 K261 ["AMR_ICON_WIDTH_XLARGE"]
     1401 GETTABLEKS                       R26 R2 K262 ["AMR_PADDING"]
     1403 ADD                              R24 R25 R26
     1404 LOADN                            R25 1
     1405 LOADN                            R26 0
     1406 CALL                             R22 4 1
     1407 SETTABLEKS                       R22 R21 K103 ["Size"]
     1409 CALL                             R19 2 1
     1410 MOVE                             R20 R3
     1411 LOADK                            R21 K7 ["Framework"]
     1412 DUPTABLE                         R22 K104 [{"Size"}]
     1413 GETIMPORT                        R23 K113 [UDim2.new]
     1415 LOADN                            R24 0
     1416 GETTABLEKS                       R25 R2 K128 ["AMR_LOADING_BAR_THICKNESS"]
     1418 LOADN                            R26 1
     1419 LOADN                            R27 0
     1420 CALL                             R23 4 1
     1421 SETTABLEKS                       R23 R22 K103 ["Size"]
     1423 CALL                             R20 2 1
     1424 MOVE                             R21 R3
     1425 LOADK                            R22 K8 ["Src"]
     1426 DUPTABLE                         R23 K104 [{"Size"}]
     1427 GETIMPORT                        R24 K113 [UDim2.new]
     1429 LOADN                            R25 1
     1430 LOADN                            R26 0
     1431 LOADN                            R27 0
     1432 GETTABLEKS                       R28 R2 K128 ["AMR_LOADING_BAR_THICKNESS"]
     1434 CALL                             R24 4 1
     1435 SETTABLEKS                       R24 R23 K103 ["Size"]
     1437 CALL                             R21 2 1
     1438 SETLIST                          R5 R6 16 [33]
     1440 MOVE                             R6 R3
     1441 LOADK                            R7 K9 ["Resources"]
     1442 DUPTABLE                         R8 K104 [{"Size"}]
     1443 GETIMPORT                        R9 K113 [UDim2.new]
     1445 LOADN                            R10 1
     1446 LOADN                            R11 0
     1447 LOADN                            R12 0
     1448 GETTABLEKS                       R13 R2 K114 ["AMR_TOPBAR_HEIGHT"]
     1450 CALL                             R9 4 1
     1451 SETTABLEKS                       R9 R8 K103 ["Size"]
     1453 CALL                             R6 2 1
     1454 MOVE                             R7 R3
     1455 LOADK                            R8 K10 ["StyleConstants"]
     1456 DUPTABLE                         R9 K104 [{"Size"}]
     1457 GETIMPORT                        R10 K113 [UDim2.new]
     1459 LOADN                            R11 1
     1460 LOADN                            R12 0
     1461 LOADN                            R13 0
     1462 GETTABLEKS                       R14 R2 K267 ["AMR_EXPLORERROW_HEIGHT"]
     1464 CALL                             R10 4 1
     1465 SETTABLEKS                       R10 R9 K103 ["Size"]
     1467 CALL                             R7 2 1
     1468 MOVE                             R8 R3
     1469 LOADK                            R9 K12 ["createStyleRule"]
     1470 DUPTABLE                         R10 K104 [{"Size"}]
     1471 GETIMPORT                        R11 K113 [UDim2.new]
     1473 LOADN                            R12 1
     1474 LOADN                            R13 0
     1475 LOADN                            R14 0
     1476 GETTABLEKS                       R15 R2 K193 ["AMR_HEADERROW_HEIGHT"]
     1478 CALL                             R11 4 1
     1479 SETTABLEKS                       R11 R10 K103 ["Size"]
     1481 CALL                             R8 2 1
     1482 MOVE                             R9 R3
     1483 LOADK                            R10 K13 ["createStyleSheet"]
     1484 DUPTABLE                         R11 K215 [{"Size", "AutomaticSize"}]
     1485 GETIMPORT                        R12 K113 [UDim2.new]
     1487 LOADN                            R13 0
     1488 LOADN                            R14 0
     1489 LOADN                            R15 0
     1490 GETTABLEKS                       R16 R2 K193 ["AMR_HEADERROW_HEIGHT"]
     1492 CALL                             R12 4 1
     1493 SETTABLEKS                       R12 R11 K103 ["Size"]
     1495 GETIMPORT                        R12 K178 [Enum.AutomaticSize.X]
     1497 SETTABLEKS                       R12 R11 K150 ["AutomaticSize"]
     1499 CALL                             R9 2 1
     1500 MOVE                             R10 R3
     1501 LOADK                            R11 K14 ["ImageLabel, ImageButton"]
     1502 DUPTABLE                         R12 K104 [{"Size"}]
     1503 GETTABLEKS                       R13 R2 K139 ["AMR_ICON_SIZE_XSMALL"]
     1505 SETTABLEKS                       R13 R12 K103 ["Size"]
     1507 CALL                             R10 2 1
     1508 MOVE                             R11 R3
     1509 LOADK                            R12 K15 [".icon-dark"]
     1510 DUPTABLE                         R13 K104 [{"Size"}]
     1511 GETTABLEKS                       R14 R2 K272 ["AMR_ICON_SIZE_SMALL"]
     1513 SETTABLEKS                       R14 R13 K103 ["Size"]
     1515 CALL                             R11 2 1
     1516 MOVE                             R12 R3
     1517 LOADK                            R13 K17 [{"ImageColor3"}]
     1518 DUPTABLE                         R14 K104 [{"Size"}]
     1519 LOADK                            R15 K18 ["Color3"]
     1520 SETTABLEKS                       R15 R14 K103 ["Size"]
     1522 CALL                             R12 2 1
     1523 MOVE                             R13 R3
     1524 LOADK                            R14 K19 ["fromRGB"]
     1525 DUPTABLE                         R15 K104 [{"Size"}]
     1526 GETTABLEKS                       R16 R2 K276 ["AMR_ICON_SIZE_XLARGE"]
     1528 SETTABLEKS                       R16 R15 K103 ["Size"]
     1530 CALL                             R13 2 1
     1531 MOVE                             R14 R3
     1532 LOADK                            R15 K21 [".icon-arrow-down"]
     1533 DUPTABLE                         R16 K104 [{"Size"}]
     1534 LOADK                            R17 K22 ["Image"]
     1535 SETTABLEKS                       R17 R16 K103 ["Size"]
     1537 CALL                             R14 2 1
     1538 MOVE                             R15 R3
     1539 LOADK                            R16 K23 [{"Image"}]
     1540 NEWTABLE                         R17 0 0
     1542 NEWTABLE                         R18 0 1
     1544 MOVE                             R19 R3
     1545 LOADK                            R20 K24 ["$ArrowDownIcon"]
     1546 DUPTABLE                         R21 K217 [{"BackgroundColor3", "BackgroundTransparency"}]
     1547 LOADK                            R22 K25 [".icon-arrow-right"]
     1548 SETTABLEKS                       R22 R21 K187 ["BackgroundColor3"]
     1550 LOADN                            R22 0
     1551 SETTABLEKS                       R22 R21 K147 ["BackgroundTransparency"]
     1553 CALL                             R19 2 -1
     1554 SETLIST                          R18 R19 -1 [1]
     1556 CALL                             R15 3 -1
     1557 SETLIST                          R5 R6 -1 [49]
     1559 DUPTABLE                         R6 K303 [{"HeaderButtonSize", "PaddingSmall", "Padding", "PaddingLarge", "PaddingXLarge", "IconDisabled", "Rotation", "Transparency", "CheckboxSize", "AmrIconSize", "SortItemSize", "IconWidth", "BaseWidth", "OffsetWidth", "CellHeightDiff", "ThumbnailSize", "CellTagPadding", "ColumnMinSize", "ContentListRowHeight", "ListThumbnailSize", "CellContentPadding", "InputHeight"}]
     1560 GETTABLEKS                       R7 R2 K304 ["AMR_HEADERBUTTON_SIZE"]
     1562 SETTABLEKS                       R7 R6 K282 ["HeaderButtonSize"]
     1564 GETIMPORT                        R7 K126 [UDim.new]
     1566 LOADN                            R8 0
     1567 GETTABLEKS                       R9 R2 K131 ["AMR_PADDING_SMALL"]
     1569 CALL                             R7 2 1
     1570 SETTABLEKS                       R7 R6 K283 ["PaddingSmall"]
     1572 GETIMPORT                        R7 K126 [UDim.new]
     1574 LOADN                            R8 0
     1575 GETTABLEKS                       R9 R2 K262 ["AMR_PADDING"]
     1577 CALL                             R7 2 1
     1578 SETTABLEKS                       R7 R6 K88 ["Padding"]
     1580 GETIMPORT                        R7 K126 [UDim.new]
     1582 LOADN                            R8 0
     1583 GETTABLEKS                       R9 R2 K305 ["AMR_PADDING_LARGE"]
     1585 CALL                             R7 2 1
     1586 SETTABLEKS                       R7 R6 K284 ["PaddingLarge"]
     1588 GETIMPORT                        R7 K126 [UDim.new]
     1590 LOADN                            R8 0
     1591 GETTABLEKS                       R9 R2 K306 ["AMR_PADDING_XLARGE"]
     1593 CALL                             R7 2 1
     1594 SETTABLEKS                       R7 R6 K285 ["PaddingXLarge"]
     1596 LOADK                            R7 K51 [".icon-search"]
     1597 SETTABLEKS                       R7 R6 K286 ["IconDisabled"]
     1599 GETTABLEKS                       R7 R2 K308 ["AMR_SHIMMER_ROTATION"]
     1601 SETTABLEKS                       R7 R6 K287 ["Rotation"]
     1603 GETIMPORT                        R7 K310 [NumberSequence.new]
     1605 NEWTABLE                         R8 0 5
     1607 GETIMPORT                        R9 K312 [NumberSequenceKeypoint.new]
     1609 LOADN                            R10 0
     1610 LOADN                            R11 1
     1611 CALL                             R9 2 1
     1612 GETIMPORT                        R10 K312 [NumberSequenceKeypoint.new]
     1614 LOADK                            R11 K57 [".icon-sort"]
     1615 LOADN                            R12 1
     1616 CALL                             R10 2 1
     1617 GETIMPORT                        R11 K312 [NumberSequenceKeypoint.new]
     1619 LOADK                            R12 K173 [0.5]
     1620 LOADK                            R13 K58 ["$SortIcon"]
     1621 CALL                             R11 2 1
     1622 GETIMPORT                        R12 K312 [NumberSequenceKeypoint.new]
     1624 LOADK                            R13 K59 [".icon-universe"]
     1625 LOADN                            R14 1
     1626 CALL                             R12 2 1
     1627 GETIMPORT                        R13 K312 [NumberSequenceKeypoint.new]
     1629 LOADN                            R14 1
     1630 LOADN                            R15 1
     1631 CALL                             R13 2 -1
     1632 SETLIST                          R8 R9 -1 [1]
     1634 CALL                             R7 1 1
     1635 SETTABLEKS                       R7 R6 K288 ["Transparency"]
     1637 GETTABLEKS                       R7 R2 K154 ["AMR_ICON_WIDTH"]
     1639 SETTABLEKS                       R7 R6 K289 ["CheckboxSize"]
     1641 GETTABLEKS                       R7 R2 K316 ["AMR_ICON_SIZE"]
     1643 SETTABLEKS                       R7 R6 K290 ["AmrIconSize"]
     1645 GETIMPORT                        R7 K113 [UDim2.new]
     1647 LOADN                            R8 0
     1648 LOADN                            R9 150
     1649 LOADN                            R10 0
     1650 LOADN                            R11 24
     1651 CALL                             R7 4 1
     1652 SETTABLEKS                       R7 R6 K291 ["SortItemSize"]
     1654 GETTABLEKS                       R8 R2 K262 ["AMR_PADDING"]
     1656 GETTABLEKS                       R9 R2 K154 ["AMR_ICON_WIDTH"]
     1658 ADD                              R7 R8 R9
     1659 SETTABLEKS                       R7 R6 K292 ["IconWidth"]
     1661 GETTABLEKS                       R7 R2 K317 ["BASE_WIDTH"]
     1663 SETTABLEKS                       R7 R6 K293 ["BaseWidth"]
     1665 GETTABLEKS                       R9 R2 K262 ["AMR_PADDING"]
     1667 MULK                             R8 R9 K132 [2]
     1668 GETTABLEKS                       R9 R2 K154 ["AMR_ICON_WIDTH"]
     1670 ADD                              R7 R8 R9
     1671 SETTABLEKS                       R7 R6 K294 ["OffsetWidth"]
     1673 GETTABLEKS                       R7 R2 K182 ["AMR_CELLDATA_HEIGHT"]
     1675 SETTABLEKS                       R7 R6 K295 ["CellHeightDiff"]
     1677 LOADN                            R7 50
     1678 SETTABLEKS                       R7 R6 K296 ["ThumbnailSize"]
     1680 GETTABLEKS                       R7 R2 K131 ["AMR_PADDING_SMALL"]
     1682 SETTABLEKS                       R7 R6 K297 ["CellTagPadding"]
     1684 GETIMPORT                        R7 K126 [UDim.new]
     1686 LOADN                            R8 0
     1687 LOADN                            R9 60
     1688 CALL                             R7 2 1
     1689 SETTABLEKS                       R7 R6 K298 ["ColumnMinSize"]
     1691 GETTABLEKS                       R7 R2 K195 ["AMR_ITEMROW_DEFAULT_HEIGHT"]
     1693 SETTABLEKS                       R7 R6 K299 ["ContentListRowHeight"]
     1695 GETTABLEKS                       R7 R2 K208 ["THUMBNAIL_CONTAINER_SIZE"]
     1697 SETTABLEKS                       R7 R6 K300 ["ListThumbnailSize"]
     1699 GETTABLEKS                       R7 R2 K262 ["AMR_PADDING"]
     1701 SETTABLEKS                       R7 R6 K301 ["CellContentPadding"]
     1703 GETTABLEKS                       R8 R2 K195 ["AMR_ITEMROW_DEFAULT_HEIGHT"]
     1705 LOADN                            R10 2
     1706 GETTABLEKS                       R11 R2 K262 ["AMR_PADDING"]
     1708 MUL                              R9 R10 R11
     1709 SUB                              R7 R8 R9
     1710 SETTABLEKS                       R7 R6 K302 ["InputHeight"]
     1712 MOVE                             R7 R4
     1713 LOADK                            R8 K2 ["AssetManager"]
     1714 MOVE                             R9 R5
     1715 MOVE                             R10 R6
     1716 CALL                             R7 3 -1
     1717 RETURN                           R7 -1
