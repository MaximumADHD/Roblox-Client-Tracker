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
       31 NEWTABLE                         R5 0 47
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
      842 LOADK                            R19 K194 [".am-size-itemrow"]
      843 DUPTABLE                         R20 K104 [{"Size"}]
      844 GETIMPORT                        R21 K113 [UDim2.new]
      846 LOADN                            R22 1
      847 LOADN                            R23 0
      848 LOADN                            R24 0
      849 GETTABLEKS                       R25 R2 K195 ["AMR_ITEMROW_DEFAULT_HEIGHT"]
      851 CALL                             R21 4 1
      852 SETTABLEKS                       R21 R20 K103 ["Size"]
      854 NEWTABLE                         R21 0 0
      856 CALL                             R18 3 1
      857 MOVE                             R19 R3
      858 LOADK                            R20 K196 [".am-size-thumbnailcontainer"]
      859 DUPTABLE                         R21 K104 [{"Size"}]
      860 GETIMPORT                        R22 K198 [UDim2.fromOffset]
      862 GETTABLEKS                       R23 R2 K199 ["THUMBNAIL_CONTAINER_SIZE"]
      864 GETTABLEKS                       R24 R2 K199 ["THUMBNAIL_CONTAINER_SIZE"]
      866 CALL                             R22 2 1
      867 SETTABLEKS                       R22 R21 K103 ["Size"]
      869 CALL                             R19 2 1
      870 MOVE                             R20 R3
      871 LOADK                            R21 K200 [".ItemRow"]
      872 DUPTABLE                         R22 K104 [{"Size"}]
      873 GETIMPORT                        R23 K113 [UDim2.new]
      875 LOADN                            R24 1
      876 LOADN                            R25 0
      877 LOADN                            R26 0
      878 GETTABLEKS                       R27 R2 K195 ["AMR_ITEMROW_DEFAULT_HEIGHT"]
      880 CALL                             R23 4 1
      881 SETTABLEKS                       R23 R22 K103 ["Size"]
      883 NEWTABLE                         R23 0 3
      885 MOVE                             R24 R3
      886 LOADK                            R25 K201 [".FocusedRow ::UIStroke"]
      887 DUPTABLE                         R26 K205 [{"ApplyStrokeMode", "Color", "Thickness"}]
      888 GETIMPORT                        R27 K207 [Enum.ApplyStrokeMode.Border]
      890 SETTABLEKS                       R27 R26 K202 ["ApplyStrokeMode"]
      892 LOADK                            R27 K208 ["$ActionFocusBorder"]
      893 SETTABLEKS                       R27 R26 K203 ["Color"]
      895 LOADN                            R27 1
      896 SETTABLEKS                       R27 R26 K204 ["Thickness"]
      898 CALL                             R24 2 1
      899 MOVE                             R25 R3
      900 LOADK                            R26 K209 [">> .ThumbnailContainer"]
      901 DUPTABLE                         R27 K210 [{"Size", "BackgroundColor3"}]
      902 GETIMPORT                        R28 K198 [UDim2.fromOffset]
      904 GETTABLEKS                       R29 R2 K199 ["THUMBNAIL_CONTAINER_SIZE"]
      906 GETTABLEKS                       R30 R2 K199 ["THUMBNAIL_CONTAINER_SIZE"]
      908 CALL                             R28 2 1
      909 SETTABLEKS                       R28 R27 K103 ["Size"]
      911 LOADK                            R28 K190 ["$ForegroundContrast"]
      912 SETTABLEKS                       R28 R27 K187 ["BackgroundColor3"]
      914 CALL                             R25 2 1
      915 MOVE                             R26 R3
      916 LOADK                            R27 K211 [">> TextLabel"]
      917 NEWTABLE                         R28 0 0
      919 NEWTABLE                         R29 0 1
      921 MOVE                             R30 R3
      922 LOADK                            R31 K122 ["::UIPadding"]
      923 DUPTABLE                         R32 K145 [{"PaddingLeft", "PaddingRight"}]
      924 LOADK                            R33 K96 ["$Padding"]
      925 SETTABLEKS                       R33 R32 K134 ["PaddingLeft"]
      927 LOADK                            R33 K96 ["$Padding"]
      928 SETTABLEKS                       R33 R32 K135 ["PaddingRight"]
      930 CALL                             R30 2 -1
      931 SETLIST                          R29 R30 -1 [1]
      933 CALL                             R26 3 -1
      934 SETLIST                          R23 R24 -1 [1]
      936 CALL                             R20 3 1
      937 MOVE                             R21 R3
      938 LOADK                            R22 K212 [".TopSidebarButtonPadding"]
      939 DUPTABLE                         R23 K104 [{"Size"}]
      940 GETIMPORT                        R24 K113 [UDim2.new]
      942 LOADN                            R25 0
      943 GETTABLEKS                       R26 R2 K213 ["AMR_SIDEBAR_TOGGLE_PADDING"]
      945 LOADN                            R27 0
      946 GETTABLEKS                       R28 R2 K213 ["AMR_SIDEBAR_TOGGLE_PADDING"]
      948 CALL                             R24 4 1
      949 SETTABLEKS                       R24 R23 K103 ["Size"]
      951 CALL                             R21 2 1
      952 SETLIST                          R5 R6 16 [1]
      954 MOVE                             R6 R3
      955 LOADK                            R7 K214 [".SearchPanel"]
      956 DUPTABLE                         R8 K104 [{"Size"}]
      957 GETIMPORT                        R9 K113 [UDim2.new]
      959 LOADN                            R10 1
      960 GETTABLEKS                       R11 R2 K131 ["AMR_PADDING_SMALL"]
      962 LOADN                            R12 0
      963 GETTABLEKS                       R13 R2 K114 ["AMR_TOPBAR_HEIGHT"]
      965 CALL                             R9 4 1
      966 SETTABLEKS                       R9 R8 K103 ["Size"]
      968 CALL                             R6 2 1
      969 MOVE                             R7 R3
      970 LOADK                            R8 K215 [".FillMinusDragX"]
      971 DUPTABLE                         R9 K104 [{"Size"}]
      972 GETIMPORT                        R10 K113 [UDim2.new]
      974 LOADN                            R11 1
      975 GETTABLEKS                       R13 R2 K131 ["AMR_PADDING_SMALL"]
      977 MINUS                            R12 R13
      978 LOADN                            R13 1
      979 LOADN                            R14 0
      980 CALL                             R10 4 1
      981 SETTABLEKS                       R10 R9 K103 ["Size"]
      983 CALL                             R7 2 1
      984 MOVE                             R8 R3
      985 LOADK                            R9 K216 [".FitYPlusDragX"]
      986 DUPTABLE                         R10 K217 [{"Size", "AutomaticSize"}]
      987 GETIMPORT                        R11 K113 [UDim2.new]
      989 LOADN                            R12 1
      990 GETTABLEKS                       R13 R2 K131 ["AMR_PADDING_SMALL"]
      992 LOADN                            R14 0
      993 LOADN                            R15 0
      994 CALL                             R11 4 1
      995 SETTABLEKS                       R11 R10 K103 ["Size"]
      997 GETIMPORT                        R11 K153 [Enum.AutomaticSize.Y]
      999 SETTABLEKS                       R11 R10 K150 ["AutomaticSize"]
     1001 CALL                             R8 2 1
     1002 MOVE                             R9 R3
     1003 LOADK                            R10 K218 [".bg-action-selected"]
     1004 DUPTABLE                         R11 K219 [{"BackgroundColor3", "BackgroundTransparency"}]
     1005 LOADK                            R12 K220 ["$ActionSelected"]
     1006 SETTABLEKS                       R12 R11 K187 ["BackgroundColor3"]
     1008 LOADN                            R12 0
     1009 SETTABLEKS                       R12 R11 K147 ["BackgroundTransparency"]
     1011 CALL                             R9 2 1
     1012 MOVE                             R10 R3
     1013 LOADK                            R11 K221 [".bg-foreground-main"]
     1014 DUPTABLE                         R12 K219 [{"BackgroundColor3", "BackgroundTransparency"}]
     1015 LOADK                            R13 K222 ["$ForegroundMain"]
     1016 SETTABLEKS                       R13 R12 K187 ["BackgroundColor3"]
     1018 LOADN                            R13 0
     1019 SETTABLEKS                       R13 R12 K147 ["BackgroundTransparency"]
     1021 CALL                             R10 2 1
     1022 MOVE                             R11 R3
     1023 LOADK                            R12 K223 [".bg-foreground-contrast"]
     1024 DUPTABLE                         R13 K219 [{"BackgroundColor3", "BackgroundTransparency"}]
     1025 LOADK                            R14 K190 ["$ForegroundContrast"]
     1026 SETTABLEKS                       R14 R13 K187 ["BackgroundColor3"]
     1028 LOADN                            R14 0
     1029 SETTABLEKS                       R14 R13 K147 ["BackgroundTransparency"]
     1031 CALL                             R11 2 1
     1032 MOVE                             R12 R3
     1033 LOADK                            R13 K224 [".bg-paper"]
     1034 DUPTABLE                         R14 K219 [{"BackgroundColor3", "BackgroundTransparency"}]
     1035 LOADK                            R15 K225 ["$BackgroundPaper"]
     1036 SETTABLEKS                       R15 R14 K187 ["BackgroundColor3"]
     1038 LOADN                            R15 0
     1039 SETTABLEKS                       R15 R14 K147 ["BackgroundTransparency"]
     1041 CALL                             R12 2 1
     1042 MOVE                             R13 R3
     1043 LOADK                            R14 K226 [".anchor-center-right"]
     1044 DUPTABLE                         R15 K227 [{"AnchorPoint"}]
     1045 GETIMPORT                        R16 K159 [Vector2.new]
     1047 LOADN                            R17 1
     1048 LOADK                            R18 K173 [0.5]
     1049 CALL                             R16 2 1
     1050 SETTABLEKS                       R16 R15 K156 ["AnchorPoint"]
     1052 CALL                             R13 2 1
     1053 MOVE                             R14 R3
     1054 LOADK                            R15 K228 [".am-padding-right-xsmall"]
     1055 NEWTABLE                         R16 0 0
     1057 NEWTABLE                         R17 0 1
     1059 MOVE                             R18 R3
     1060 LOADK                            R19 K122 ["::UIPadding"]
     1061 DUPTABLE                         R20 K229 [{"PaddingRight"}]
     1062 LOADK                            R21 K138 ["$PaddingSmall"]
     1063 SETTABLEKS                       R21 R20 K135 ["PaddingRight"]
     1065 CALL                             R18 2 -1
     1066 SETLIST                          R17 R18 -1 [1]
     1068 CALL                             R14 3 1
     1069 MOVE                             R15 R3
     1070 LOADK                            R16 K230 [".am-padding-right-medium"]
     1071 NEWTABLE                         R17 0 0
     1073 NEWTABLE                         R18 0 1
     1075 MOVE                             R19 R3
     1076 LOADK                            R20 K122 ["::UIPadding"]
     1077 DUPTABLE                         R21 K229 [{"PaddingRight"}]
     1078 LOADK                            R22 K96 ["$Padding"]
     1079 SETTABLEKS                       R22 R21 K135 ["PaddingRight"]
     1081 CALL                             R19 2 -1
     1082 SETLIST                          R18 R19 -1 [1]
     1084 CALL                             R15 3 1
     1085 MOVE                             R16 R3
     1086 LOADK                            R17 K231 [".am-padding-x-medium"]
     1087 NEWTABLE                         R18 0 0
     1089 NEWTABLE                         R19 0 1
     1091 MOVE                             R20 R3
     1092 LOADK                            R21 K122 ["::UIPadding"]
     1093 DUPTABLE                         R22 K145 [{"PaddingLeft", "PaddingRight"}]
     1094 LOADK                            R23 K96 ["$Padding"]
     1095 SETTABLEKS                       R23 R22 K134 ["PaddingLeft"]
     1097 LOADK                            R23 K96 ["$Padding"]
     1098 SETTABLEKS                       R23 R22 K135 ["PaddingRight"]
     1100 CALL                             R20 2 -1
     1101 SETLIST                          R19 R20 -1 [1]
     1103 CALL                             R16 3 1
     1104 MOVE                             R17 R3
     1105 LOADK                            R18 K232 [".am-padding-y-medium"]
     1106 NEWTABLE                         R19 0 0
     1108 NEWTABLE                         R20 0 1
     1110 MOVE                             R21 R3
     1111 LOADK                            R22 K122 ["::UIPadding"]
     1112 DUPTABLE                         R23 K233 [{"PaddingTop", "PaddingBottom"}]
     1113 LOADK                            R24 K96 ["$Padding"]
     1114 SETTABLEKS                       R24 R23 K123 ["PaddingTop"]
     1116 LOADK                            R24 K96 ["$Padding"]
     1117 SETTABLEKS                       R24 R23 K136 ["PaddingBottom"]
     1119 CALL                             R21 2 -1
     1120 SETLIST                          R20 R21 -1 [1]
     1122 CALL                             R17 3 1
     1123 MOVE                             R18 R3
     1124 LOADK                            R19 K234 [".am-padding-left-small"]
     1125 NEWTABLE                         R20 0 0
     1127 NEWTABLE                         R21 0 1
     1129 MOVE                             R22 R3
     1130 LOADK                            R23 K122 ["::UIPadding"]
     1131 DUPTABLE                         R24 K235 [{"PaddingLeft"}]
     1132 LOADK                            R25 K138 ["$PaddingSmall"]
     1133 SETTABLEKS                       R25 R24 K134 ["PaddingLeft"]
     1135 CALL                             R22 2 -1
     1136 SETLIST                          R21 R22 -1 [1]
     1138 CALL                             R18 3 1
     1139 MOVE                             R19 R3
     1140 LOADK                            R20 K236 [".am-padding-left-medium"]
     1141 NEWTABLE                         R21 0 0
     1143 NEWTABLE                         R22 0 1
     1145 MOVE                             R23 R3
     1146 LOADK                            R24 K122 ["::UIPadding"]
     1147 DUPTABLE                         R25 K235 [{"PaddingLeft"}]
     1148 LOADK                            R26 K96 ["$Padding"]
     1149 SETTABLEKS                       R26 R25 K134 ["PaddingLeft"]
     1151 CALL                             R23 2 -1
     1152 SETLIST                          R22 R23 -1 [1]
     1154 CALL                             R19 3 1
     1155 MOVE                             R20 R3
     1156 LOADK                            R21 K237 [".am-padding-top-large"]
     1157 NEWTABLE                         R22 0 0
     1159 NEWTABLE                         R23 0 1
     1161 MOVE                             R24 R3
     1162 LOADK                            R25 K122 ["::UIPadding"]
     1163 DUPTABLE                         R26 K124 [{"PaddingTop"}]
     1164 LOADK                            R27 K163 ["$PaddingLarge"]
     1165 SETTABLEKS                       R27 R26 K123 ["PaddingTop"]
     1167 CALL                             R24 2 -1
     1168 SETLIST                          R23 R24 -1 [1]
     1170 CALL                             R20 3 1
     1171 MOVE                             R21 R3
     1172 LOADK                            R22 K238 [".am-padding-bottom-small"]
     1173 NEWTABLE                         R23 0 0
     1175 NEWTABLE                         R24 0 1
     1177 MOVE                             R25 R3
     1178 LOADK                            R26 K122 ["::UIPadding"]
     1179 DUPTABLE                         R27 K239 [{"PaddingBottom"}]
     1180 LOADK                            R28 K138 ["$PaddingSmall"]
     1181 SETTABLEKS                       R28 R27 K136 ["PaddingBottom"]
     1183 CALL                             R25 2 -1
     1184 SETLIST                          R24 R25 -1 [1]
     1186 CALL                             R21 3 1
     1187 SETLIST                          R5 R6 16 [17]
     1189 MOVE                             R6 R3
     1190 LOADK                            R7 K240 [".am-padding-bottom-medium"]
     1191 NEWTABLE                         R8 0 0
     1193 NEWTABLE                         R9 0 1
     1195 MOVE                             R10 R3
     1196 LOADK                            R11 K122 ["::UIPadding"]
     1197 DUPTABLE                         R12 K239 [{"PaddingBottom"}]
     1198 LOADK                            R13 K96 ["$Padding"]
     1199 SETTABLEKS                       R13 R12 K136 ["PaddingBottom"]
     1201 CALL                             R10 2 -1
     1202 SETLIST                          R9 R10 -1 [1]
     1204 CALL                             R6 3 1
     1205 MOVE                             R7 R3
     1206 LOADK                            R8 K241 [".am-padding-celldata"]
     1207 NEWTABLE                         R9 0 0
     1209 NEWTABLE                         R10 0 1
     1211 MOVE                             R11 R3
     1212 LOADK                            R12 K122 ["::UIPadding"]
     1213 DUPTABLE                         R13 K137 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     1214 LOADK                            R14 K138 ["$PaddingSmall"]
     1215 SETTABLEKS                       R14 R13 K134 ["PaddingLeft"]
     1217 LOADK                            R14 K138 ["$PaddingSmall"]
     1218 SETTABLEKS                       R14 R13 K135 ["PaddingRight"]
     1220 LOADK                            R14 K138 ["$PaddingSmall"]
     1221 SETTABLEKS                       R14 R13 K123 ["PaddingTop"]
     1223 LOADK                            R14 K96 ["$Padding"]
     1224 SETTABLEKS                       R14 R13 K136 ["PaddingBottom"]
     1226 CALL                             R11 2 -1
     1227 SETLIST                          R10 R11 -1 [1]
     1229 CALL                             R7 3 1
     1230 MOVE                             R8 R3
     1231 LOADK                            R9 K242 [".am-position-center-right-xoffset-small"]
     1232 DUPTABLE                         R10 K130 [{"Position"}]
     1233 GETIMPORT                        R11 K113 [UDim2.new]
     1235 LOADN                            R12 1
     1236 GETTABLEKS                       R14 R2 K131 ["AMR_PADDING_SMALL"]
     1238 MINUS                            R13 R14
     1239 LOADK                            R14 K173 [0.5]
     1240 LOADN                            R15 0
     1241 CALL                             R11 4 1
     1242 SETTABLEKS                       R11 R10 K77 ["Position"]
     1244 CALL                             R8 2 1
     1245 MOVE                             R9 R3
     1246 LOADK                            R10 K243 [".am-size-full-celldata"]
     1247 DUPTABLE                         R11 K104 [{"Size"}]
     1248 GETIMPORT                        R12 K113 [UDim2.new]
     1250 LOADN                            R13 1
     1251 LOADN                            R14 0
     1252 LOADN                            R15 0
     1253 GETTABLEKS                       R16 R2 K182 ["AMR_CELLDATA_HEIGHT"]
     1255 CALL                             R12 4 1
     1256 SETTABLEKS                       R12 R11 K103 ["Size"]
     1258 CALL                             R9 2 1
     1259 MOVE                             R10 R3
     1260 LOADK                            R11 K244 [".am-size-scrollbar-full"]
     1261 DUPTABLE                         R12 K104 [{"Size"}]
     1262 GETIMPORT                        R13 K113 [UDim2.new]
     1264 LOADN                            R14 0
     1265 GETTABLEKS                       R15 R2 K128 ["AMR_LOADING_BAR_THICKNESS"]
     1267 LOADN                            R16 1
     1268 LOADN                            R17 0
     1269 CALL                             R13 4 1
     1270 SETTABLEKS                       R13 R12 K103 ["Size"]
     1272 CALL                             R10 2 1
     1273 MOVE                             R11 R3
     1274 LOADK                            R12 K245 [".am-size-full-scrollbar"]
     1275 DUPTABLE                         R13 K104 [{"Size"}]
     1276 GETIMPORT                        R14 K113 [UDim2.new]
     1278 LOADN                            R15 1
     1279 LOADN                            R16 0
     1280 LOADN                            R17 0
     1281 GETTABLEKS                       R18 R2 K128 ["AMR_LOADING_BAR_THICKNESS"]
     1283 CALL                             R14 4 1
     1284 SETTABLEKS                       R14 R13 K103 ["Size"]
     1286 CALL                             R11 2 1
     1287 MOVE                             R12 R3
     1288 LOADK                            R13 K246 [".am-size-full-topbar"]
     1289 DUPTABLE                         R14 K104 [{"Size"}]
     1290 GETIMPORT                        R15 K113 [UDim2.new]
     1292 LOADN                            R16 1
     1293 LOADN                            R17 0
     1294 LOADN                            R18 0
     1295 GETTABLEKS                       R19 R2 K114 ["AMR_TOPBAR_HEIGHT"]
     1297 CALL                             R15 4 1
     1298 SETTABLEKS                       R15 R14 K103 ["Size"]
     1300 CALL                             R12 2 1
     1301 MOVE                             R13 R3
     1302 LOADK                            R14 K247 [".am-size-full-explorerrow"]
     1303 DUPTABLE                         R15 K104 [{"Size"}]
     1304 GETIMPORT                        R16 K113 [UDim2.new]
     1306 LOADN                            R17 1
     1307 LOADN                            R18 0
     1308 LOADN                            R19 0
     1309 GETTABLEKS                       R20 R2 K248 ["AMR_EXPLORERROW_HEIGHT"]
     1311 CALL                             R16 4 1
     1312 SETTABLEKS                       R16 R15 K103 ["Size"]
     1314 CALL                             R13 2 1
     1315 MOVE                             R14 R3
     1316 LOADK                            R15 K249 [".am-size-full-headerrow"]
     1317 DUPTABLE                         R16 K104 [{"Size"}]
     1318 GETIMPORT                        R17 K113 [UDim2.new]
     1320 LOADN                            R18 1
     1321 LOADN                            R19 0
     1322 LOADN                            R20 0
     1323 GETTABLEKS                       R21 R2 K193 ["AMR_HEADERROW_HEIGHT"]
     1325 CALL                             R17 4 1
     1326 SETTABLEKS                       R17 R16 K103 ["Size"]
     1328 CALL                             R14 2 1
     1329 MOVE                             R15 R3
     1330 LOADK                            R16 K250 [".am-size-fit-headerrow"]
     1331 DUPTABLE                         R17 K217 [{"Size", "AutomaticSize"}]
     1332 GETIMPORT                        R18 K113 [UDim2.new]
     1334 LOADN                            R19 0
     1335 LOADN                            R20 0
     1336 LOADN                            R21 0
     1337 GETTABLEKS                       R22 R2 K193 ["AMR_HEADERROW_HEIGHT"]
     1339 CALL                             R18 4 1
     1340 SETTABLEKS                       R18 R17 K103 ["Size"]
     1342 GETIMPORT                        R18 K178 [Enum.AutomaticSize.X]
     1344 SETTABLEKS                       R18 R17 K150 ["AutomaticSize"]
     1346 CALL                             R15 2 1
     1347 MOVE                             R16 R3
     1348 LOADK                            R17 K251 [".am-size-icon-xsmall"]
     1349 DUPTABLE                         R18 K104 [{"Size"}]
     1350 GETTABLEKS                       R19 R2 K139 ["AMR_ICON_SIZE_XSMALL"]
     1352 SETTABLEKS                       R19 R18 K103 ["Size"]
     1354 CALL                             R16 2 1
     1355 MOVE                             R17 R3
     1356 LOADK                            R18 K252 [".am-size-icon-small"]
     1357 DUPTABLE                         R19 K104 [{"Size"}]
     1358 GETTABLEKS                       R20 R2 K253 ["AMR_ICON_SIZE_SMALL"]
     1360 SETTABLEKS                       R20 R19 K103 ["Size"]
     1362 CALL                             R17 2 1
     1363 MOVE                             R18 R3
     1364 LOADK                            R19 K254 [".am-size-icon"]
     1365 DUPTABLE                         R20 K104 [{"Size"}]
     1366 LOADK                            R21 K255 ["$AmrIconSize"]
     1367 SETTABLEKS                       R21 R20 K103 ["Size"]
     1369 CALL                             R18 2 1
     1370 MOVE                             R19 R3
     1371 LOADK                            R20 K0 ["script"]
     1372 DUPTABLE                         R21 K104 [{"Size"}]
     1373 LOADK                            R22 K1 [script]
     1374 SETTABLEKS                       R22 R21 K103 ["Size"]
     1376 CALL                             R19 2 1
     1377 MOVE                             R20 R3
     1378 LOADK                            R21 K2 ["AssetManager"]
     1379 NEWTABLE                         R22 0 0
     1381 NEWTABLE                         R23 0 1
     1383 MOVE                             R24 R3
     1384 LOADK                            R25 K3 ["FindFirstAncestor"]
     1385 DUPTABLE                         R26 K219 [{"BackgroundColor3", "BackgroundTransparency"}]
     1386 LOADK                            R27 K4 ["require"]
     1387 SETTABLEKS                       R27 R26 K187 ["BackgroundColor3"]
     1389 LOADN                            R27 0
     1390 SETTABLEKS                       R27 R26 K147 ["BackgroundTransparency"]
     1392 CALL                             R24 2 -1
     1393 SETLIST                          R23 R24 -1 [1]
     1395 CALL                             R20 3 -1
     1396 SETLIST                          R5 R6 -1 [33]
     1398 DUPTABLE                         R6 K282 [{"HeaderButtonSize", "PaddingSmall", "Padding", "PaddingLarge", "PaddingXLarge", "IconDisabled", "Rotation", "Transparency", "CheckboxSize", "AmrIconSize", "SortItemSize", "IconWidth", "BaseWidth", "OffsetWidth", "CellHeightDiff", "ThumbnailSize", "CellTagPadding", "ColumnMinSize", "ContentListRowHeight", "ListThumbnailSize", "CellContentPadding", "InputHeight"}]
     1399 GETTABLEKS                       R7 R2 K283 ["AMR_HEADERBUTTON_SIZE"]
     1401 SETTABLEKS                       R7 R6 K261 ["HeaderButtonSize"]
     1403 GETIMPORT                        R7 K126 [UDim.new]
     1405 LOADN                            R8 0
     1406 GETTABLEKS                       R9 R2 K131 ["AMR_PADDING_SMALL"]
     1408 CALL                             R7 2 1
     1409 SETTABLEKS                       R7 R6 K262 ["PaddingSmall"]
     1411 GETIMPORT                        R7 K126 [UDim.new]
     1413 LOADN                            R8 0
     1414 GETTABLEKS                       R9 R2 K284 ["AMR_PADDING"]
     1416 CALL                             R7 2 1
     1417 SETTABLEKS                       R7 R6 K88 ["Padding"]
     1419 GETIMPORT                        R7 K126 [UDim.new]
     1421 LOADN                            R8 0
     1422 GETTABLEKS                       R9 R2 K285 ["AMR_PADDING_LARGE"]
     1424 CALL                             R7 2 1
     1425 SETTABLEKS                       R7 R6 K263 ["PaddingLarge"]
     1427 GETIMPORT                        R7 K126 [UDim.new]
     1429 LOADN                            R8 0
     1430 GETTABLEKS                       R9 R2 K286 ["AMR_PADDING_XLARGE"]
     1432 CALL                             R7 2 1
     1433 SETTABLEKS                       R7 R6 K264 ["PaddingXLarge"]
     1435 LOADK                            R7 K31 [".icon-clear"]
     1436 SETTABLEKS                       R7 R6 K265 ["IconDisabled"]
     1438 GETTABLEKS                       R7 R2 K288 ["AMR_SHIMMER_ROTATION"]
     1440 SETTABLEKS                       R7 R6 K266 ["Rotation"]
     1442 GETIMPORT                        R7 K290 [NumberSequence.new]
     1444 NEWTABLE                         R8 0 5
     1446 GETIMPORT                        R9 K292 [NumberSequenceKeypoint.new]
     1448 LOADN                            R10 0
     1449 LOADN                            R11 1
     1450 CALL                             R9 2 1
     1451 GETIMPORT                        R10 K292 [NumberSequenceKeypoint.new]
     1453 LOADK                            R11 K37 [".icon-group"]
     1454 LOADN                            R12 1
     1455 CALL                             R10 2 1
     1456 GETIMPORT                        R11 K292 [NumberSequenceKeypoint.new]
     1458 LOADK                            R12 K173 [0.5]
     1459 LOADK                            R13 K38 ["$GroupDefaultIcon"]
     1460 CALL                             R11 2 1
     1461 GETIMPORT                        R12 K292 [NumberSequenceKeypoint.new]
     1463 LOADK                            R13 K39 [".icon-group-large"]
     1464 LOADN                            R14 1
     1465 CALL                             R12 2 1
     1466 GETIMPORT                        R13 K292 [NumberSequenceKeypoint.new]
     1468 LOADN                            R14 1
     1469 LOADN                            R15 1
     1470 CALL                             R13 2 -1
     1471 SETLIST                          R8 R9 -1 [1]
     1473 CALL                             R7 1 1
     1474 SETTABLEKS                       R7 R6 K267 ["Transparency"]
     1476 GETTABLEKS                       R7 R2 K154 ["AMR_ICON_WIDTH"]
     1478 SETTABLEKS                       R7 R6 K268 ["CheckboxSize"]
     1480 GETTABLEKS                       R7 R2 K296 ["AMR_ICON_SIZE"]
     1482 SETTABLEKS                       R7 R6 K269 ["AmrIconSize"]
     1484 GETIMPORT                        R7 K113 [UDim2.new]
     1486 LOADN                            R8 0
     1487 LOADN                            R9 150
     1488 LOADN                            R10 0
     1489 LOADN                            R11 24
     1490 CALL                             R7 4 1
     1491 SETTABLEKS                       R7 R6 K270 ["SortItemSize"]
     1493 GETTABLEKS                       R8 R2 K284 ["AMR_PADDING"]
     1495 GETTABLEKS                       R9 R2 K154 ["AMR_ICON_WIDTH"]
     1497 ADD                              R7 R8 R9
     1498 SETTABLEKS                       R7 R6 K271 ["IconWidth"]
     1500 GETTABLEKS                       R7 R2 K297 ["BASE_WIDTH"]
     1502 SETTABLEKS                       R7 R6 K272 ["BaseWidth"]
     1504 GETTABLEKS                       R9 R2 K284 ["AMR_PADDING"]
     1506 MULK                             R8 R9 K132 [2]
     1507 GETTABLEKS                       R9 R2 K154 ["AMR_ICON_WIDTH"]
     1509 ADD                              R7 R8 R9
     1510 SETTABLEKS                       R7 R6 K273 ["OffsetWidth"]
     1512 GETTABLEKS                       R7 R2 K182 ["AMR_CELLDATA_HEIGHT"]
     1514 SETTABLEKS                       R7 R6 K274 ["CellHeightDiff"]
     1516 LOADN                            R7 50
     1517 SETTABLEKS                       R7 R6 K275 ["ThumbnailSize"]
     1519 GETTABLEKS                       R7 R2 K131 ["AMR_PADDING_SMALL"]
     1521 SETTABLEKS                       R7 R6 K276 ["CellTagPadding"]
     1523 GETIMPORT                        R7 K126 [UDim.new]
     1525 LOADN                            R8 0
     1526 LOADN                            R9 60
     1527 CALL                             R7 2 1
     1528 SETTABLEKS                       R7 R6 K277 ["ColumnMinSize"]
     1530 GETTABLEKS                       R7 R2 K195 ["AMR_ITEMROW_DEFAULT_HEIGHT"]
     1532 SETTABLEKS                       R7 R6 K278 ["ContentListRowHeight"]
     1534 GETTABLEKS                       R7 R2 K199 ["THUMBNAIL_CONTAINER_SIZE"]
     1536 SETTABLEKS                       R7 R6 K279 ["ListThumbnailSize"]
     1538 GETTABLEKS                       R7 R2 K284 ["AMR_PADDING"]
     1540 SETTABLEKS                       R7 R6 K280 ["CellContentPadding"]
     1542 GETTABLEKS                       R8 R2 K195 ["AMR_ITEMROW_DEFAULT_HEIGHT"]
     1544 LOADN                            R10 2
     1545 GETTABLEKS                       R11 R2 K284 ["AMR_PADDING"]
     1547 MUL                              R9 R10 R11
     1548 SUB                              R7 R8 R9
     1549 SETTABLEKS                       R7 R6 K281 ["InputHeight"]
     1551 MOVE                             R7 R4
     1552 LOADK                            R8 K2 ["AssetManager"]
     1553 MOVE                             R9 R5
     1554 MOVE                             R10 R6
     1555 CALL                             R7 3 -1
     1556 RETURN                           R7 -1
