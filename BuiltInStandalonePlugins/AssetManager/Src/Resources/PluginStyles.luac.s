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
      334 GETTABLEKS                       R22 R2 K114 ["TopBarHeight"]
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
      349 GETTABLEKS                       R23 R2 K114 ["TopBarHeight"]
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
      384 GETTABLEKS                       R30 R2 K114 ["TopBarHeight"]
      386 GETTABLEKS                       R31 R2 K128 ["LoadingBarHeight"]
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
      403 GETTABLEKS                       R21 R2 K131 ["PaddingSmall"]
      405 LOADN                            R22 0
      406 LOADN                            R25 2
      407 GETTABLEKS                       R26 R2 K131 ["PaddingSmall"]
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
      441 GETTABLEKS                       R28 R2 K139 ["IconSizeXSmall"]
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
      547 GETTABLEKS                       R23 R2 K154 ["IconWidth"]
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
      620 LOADK                            R15 K164 [".CellThumbnailContainer"]
      621 DUPTABLE                         R16 K104 [{"Size"}]
      622 GETIMPORT                        R17 K113 [UDim2.new]
      624 LOADN                            R18 1
      625 LOADN                            R19 0
      626 LOADN                            R20 1
      627 GETTABLEKS                       R22 R2 K165 ["CellDataHeight"]
      629 MINUS                            R21 R22
      630 CALL                             R17 4 1
      631 SETTABLEKS                       R17 R16 K103 ["Size"]
      633 CALL                             R14 2 1
      634 MOVE                             R15 R3
      635 LOADK                            R16 K166 [".ContentList"]
      636 NEWTABLE                         R17 0 0
      638 NEWTABLE                         R18 0 2
      640 MOVE                             R19 R3
      641 LOADK                            R20 K167 ["> .HeaderRow"]
      642 DUPTABLE                         R21 K171 [{"BorderColor3", "BorderSizePixel", "BackgroundColor3"}]
      643 LOADK                            R22 K172 ["$Divider"]
      644 SETTABLEKS                       R22 R21 K168 ["BorderColor3"]
      646 LOADN                            R22 1
      647 SETTABLEKS                       R22 R21 K169 ["BorderSizePixel"]
      649 LOADK                            R22 K173 ["$ForegroundContrast"]
      650 SETTABLEKS                       R22 R21 K170 ["BackgroundColor3"]
      652 NEWTABLE                         R22 0 1
      654 MOVE                             R23 R3
      655 LOADK                            R24 K86 ["::UIListLayout"]
      656 DUPTABLE                         R25 K174 [{"FillDirection", "SortOrder"}]
      657 GETIMPORT                        R26 K95 [Enum.FillDirection.Horizontal]
      659 SETTABLEKS                       R26 R25 K87 ["FillDirection"]
      661 GETIMPORT                        R26 K98 [Enum.SortOrder.LayoutOrder]
      663 SETTABLEKS                       R26 R25 K89 ["SortOrder"]
      665 CALL                             R23 2 -1
      666 SETLIST                          R22 R23 -1 [1]
      668 CALL                             R19 3 1
      669 MOVE                             R20 R3
      670 LOADK                            R21 K175 ["> .ItemList"]
      671 DUPTABLE                         R22 K104 [{"Size"}]
      672 GETIMPORT                        R23 K113 [UDim2.new]
      674 LOADN                            R24 1
      675 LOADN                            R25 0
      676 LOADN                            R26 1
      677 GETTABLEKS                       R28 R2 K176 ["HeaderRowHeight"]
      679 MINUS                            R27 R28
      680 CALL                             R23 4 1
      681 SETTABLEKS                       R23 R22 K103 ["Size"]
      683 CALL                             R20 2 -1
      684 SETLIST                          R18 R19 -1 [1]
      686 CALL                             R15 3 1
      687 MOVE                             R16 R3
      688 LOADK                            R17 K177 [".am-size-itemrow"]
      689 DUPTABLE                         R18 K104 [{"Size"}]
      690 GETIMPORT                        R19 K113 [UDim2.new]
      692 LOADN                            R20 1
      693 LOADN                            R21 0
      694 LOADN                            R22 0
      695 GETTABLEKS                       R23 R2 K178 ["ItemRowHeight"]
      697 CALL                             R19 4 1
      698 SETTABLEKS                       R19 R18 K103 ["Size"]
      700 NEWTABLE                         R19 0 0
      702 CALL                             R16 3 1
      703 MOVE                             R17 R3
      704 LOADK                            R18 K179 [".am-size-thumbnailcontainer"]
      705 DUPTABLE                         R19 K104 [{"Size"}]
      706 GETIMPORT                        R20 K181 [UDim2.fromOffset]
      708 GETTABLEKS                       R21 R2 K182 ["ThumbnailContainerSize"]
      710 GETTABLEKS                       R22 R2 K182 ["ThumbnailContainerSize"]
      712 CALL                             R20 2 1
      713 SETTABLEKS                       R20 R19 K103 ["Size"]
      715 CALL                             R17 2 1
      716 MOVE                             R18 R3
      717 LOADK                            R19 K183 [".ItemRow"]
      718 DUPTABLE                         R20 K104 [{"Size"}]
      719 GETIMPORT                        R21 K113 [UDim2.new]
      721 LOADN                            R22 1
      722 LOADN                            R23 0
      723 LOADN                            R24 0
      724 GETTABLEKS                       R25 R2 K178 ["ItemRowHeight"]
      726 CALL                             R21 4 1
      727 SETTABLEKS                       R21 R20 K103 ["Size"]
      729 NEWTABLE                         R21 0 3
      731 MOVE                             R22 R3
      732 LOADK                            R23 K184 [".FocusedRow ::UIStroke"]
      733 DUPTABLE                         R24 K188 [{"ApplyStrokeMode", "Color", "Thickness"}]
      734 GETIMPORT                        R25 K190 [Enum.ApplyStrokeMode.Border]
      736 SETTABLEKS                       R25 R24 K185 ["ApplyStrokeMode"]
      738 LOADK                            R25 K191 ["$ActionFocusBorder"]
      739 SETTABLEKS                       R25 R24 K186 ["Color"]
      741 LOADN                            R25 1
      742 SETTABLEKS                       R25 R24 K187 ["Thickness"]
      744 CALL                             R22 2 1
      745 MOVE                             R23 R3
      746 LOADK                            R24 K192 [">> .ThumbnailContainer"]
      747 DUPTABLE                         R25 K193 [{"Size", "BackgroundColor3"}]
      748 GETIMPORT                        R26 K181 [UDim2.fromOffset]
      750 GETTABLEKS                       R27 R2 K182 ["ThumbnailContainerSize"]
      752 GETTABLEKS                       R28 R2 K182 ["ThumbnailContainerSize"]
      754 CALL                             R26 2 1
      755 SETTABLEKS                       R26 R25 K103 ["Size"]
      757 LOADK                            R26 K173 ["$ForegroundContrast"]
      758 SETTABLEKS                       R26 R25 K170 ["BackgroundColor3"]
      760 CALL                             R23 2 1
      761 MOVE                             R24 R3
      762 LOADK                            R25 K194 [">> TextLabel"]
      763 NEWTABLE                         R26 0 0
      765 NEWTABLE                         R27 0 1
      767 MOVE                             R28 R3
      768 LOADK                            R29 K122 ["::UIPadding"]
      769 DUPTABLE                         R30 K145 [{"PaddingLeft", "PaddingRight"}]
      770 LOADK                            R31 K96 ["$Padding"]
      771 SETTABLEKS                       R31 R30 K134 ["PaddingLeft"]
      773 LOADK                            R31 K96 ["$Padding"]
      774 SETTABLEKS                       R31 R30 K135 ["PaddingRight"]
      776 CALL                             R28 2 -1
      777 SETLIST                          R27 R28 -1 [1]
      779 CALL                             R24 3 -1
      780 SETLIST                          R21 R22 -1 [1]
      782 CALL                             R18 3 1
      783 MOVE                             R19 R3
      784 LOADK                            R20 K195 [".TopSidebarButtonPadding"]
      785 DUPTABLE                         R21 K104 [{"Size"}]
      786 GETIMPORT                        R22 K113 [UDim2.new]
      788 LOADN                            R23 0
      789 GETTABLEKS                       R24 R2 K196 ["SidebarTogglePadding"]
      791 LOADN                            R25 0
      792 GETTABLEKS                       R26 R2 K196 ["SidebarTogglePadding"]
      794 CALL                             R22 4 1
      795 SETTABLEKS                       R22 R21 K103 ["Size"]
      797 CALL                             R19 2 1
      798 MOVE                             R20 R3
      799 LOADK                            R21 K197 [".FillMinusDragX"]
      800 DUPTABLE                         R22 K104 [{"Size"}]
      801 GETIMPORT                        R23 K113 [UDim2.new]
      803 LOADN                            R24 1
      804 GETTABLEKS                       R26 R2 K131 ["PaddingSmall"]
      806 MINUS                            R25 R26
      807 LOADN                            R26 1
      808 LOADN                            R27 0
      809 CALL                             R23 4 1
      810 SETTABLEKS                       R23 R22 K103 ["Size"]
      812 CALL                             R20 2 1
      813 MOVE                             R21 R3
      814 LOADK                            R22 K198 [".FitYPlusDragX"]
      815 DUPTABLE                         R23 K199 [{"Size", "AutomaticSize"}]
      816 GETIMPORT                        R24 K113 [UDim2.new]
      818 LOADN                            R25 1
      819 GETTABLEKS                       R26 R2 K131 ["PaddingSmall"]
      821 LOADN                            R27 0
      822 LOADN                            R28 0
      823 CALL                             R24 4 1
      824 SETTABLEKS                       R24 R23 K103 ["Size"]
      826 GETIMPORT                        R24 K153 [Enum.AutomaticSize.Y]
      828 SETTABLEKS                       R24 R23 K150 ["AutomaticSize"]
      830 CALL                             R21 2 1
      831 SETLIST                          R5 R6 16 [1]
      833 MOVE                             R6 R3
      834 LOADK                            R7 K200 [".bg-action-selected"]
      835 DUPTABLE                         R8 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
      836 LOADK                            R9 K202 ["$ActionSelected"]
      837 SETTABLEKS                       R9 R8 K170 ["BackgroundColor3"]
      839 LOADN                            R9 0
      840 SETTABLEKS                       R9 R8 K147 ["BackgroundTransparency"]
      842 CALL                             R6 2 1
      843 MOVE                             R7 R3
      844 LOADK                            R8 K203 [".bg-foreground-main"]
      845 DUPTABLE                         R9 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
      846 LOADK                            R10 K204 ["$ForegroundMain"]
      847 SETTABLEKS                       R10 R9 K170 ["BackgroundColor3"]
      849 LOADN                            R10 0
      850 SETTABLEKS                       R10 R9 K147 ["BackgroundTransparency"]
      852 CALL                             R7 2 1
      853 MOVE                             R8 R3
      854 LOADK                            R9 K205 [".bg-foreground-contrast"]
      855 DUPTABLE                         R10 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
      856 LOADK                            R11 K173 ["$ForegroundContrast"]
      857 SETTABLEKS                       R11 R10 K170 ["BackgroundColor3"]
      859 LOADN                            R11 0
      860 SETTABLEKS                       R11 R10 K147 ["BackgroundTransparency"]
      862 CALL                             R8 2 1
      863 MOVE                             R9 R3
      864 LOADK                            R10 K206 [".bg-paper"]
      865 DUPTABLE                         R11 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
      866 LOADK                            R12 K207 ["$BackgroundPaper"]
      867 SETTABLEKS                       R12 R11 K170 ["BackgroundColor3"]
      869 LOADN                            R12 0
      870 SETTABLEKS                       R12 R11 K147 ["BackgroundTransparency"]
      872 CALL                             R9 2 1
      873 MOVE                             R10 R3
      874 LOADK                            R11 K208 [".anchor-center-right"]
      875 DUPTABLE                         R12 K209 [{"AnchorPoint"}]
      876 GETIMPORT                        R13 K159 [Vector2.new]
      878 LOADN                            R14 1
      879 LOADK                            R15 K210 [0.5]
      880 CALL                             R13 2 1
      881 SETTABLEKS                       R13 R12 K156 ["AnchorPoint"]
      883 CALL                             R10 2 1
      884 MOVE                             R11 R3
      885 LOADK                            R12 K211 [".am-padding-right-xsmall"]
      886 NEWTABLE                         R13 0 0
      888 NEWTABLE                         R14 0 1
      890 MOVE                             R15 R3
      891 LOADK                            R16 K122 ["::UIPadding"]
      892 DUPTABLE                         R17 K212 [{"PaddingRight"}]
      893 LOADK                            R18 K138 ["$PaddingSmall"]
      894 SETTABLEKS                       R18 R17 K135 ["PaddingRight"]
      896 CALL                             R15 2 -1
      897 SETLIST                          R14 R15 -1 [1]
      899 CALL                             R11 3 1
      900 MOVE                             R12 R3
      901 LOADK                            R13 K213 [".am-padding-left-small"]
      902 NEWTABLE                         R14 0 0
      904 NEWTABLE                         R15 0 1
      906 MOVE                             R16 R3
      907 LOADK                            R17 K122 ["::UIPadding"]
      908 DUPTABLE                         R18 K214 [{"PaddingLeft"}]
      909 LOADK                            R19 K138 ["$PaddingSmall"]
      910 SETTABLEKS                       R19 R18 K134 ["PaddingLeft"]
      912 CALL                             R16 2 -1
      913 SETLIST                          R15 R16 -1 [1]
      915 CALL                             R12 3 1
      916 MOVE                             R13 R3
      917 LOADK                            R14 K215 [".am-padding-left-medium"]
      918 NEWTABLE                         R15 0 0
      920 NEWTABLE                         R16 0 1
      922 MOVE                             R17 R3
      923 LOADK                            R18 K122 ["::UIPadding"]
      924 DUPTABLE                         R19 K214 [{"PaddingLeft"}]
      925 LOADK                            R20 K96 ["$Padding"]
      926 SETTABLEKS                       R20 R19 K134 ["PaddingLeft"]
      928 CALL                             R17 2 -1
      929 SETLIST                          R16 R17 -1 [1]
      931 CALL                             R13 3 1
      932 MOVE                             R14 R3
      933 LOADK                            R15 K216 [".am-padding-bottom-small"]
      934 NEWTABLE                         R16 0 0
      936 NEWTABLE                         R17 0 1
      938 MOVE                             R18 R3
      939 LOADK                            R19 K122 ["::UIPadding"]
      940 DUPTABLE                         R20 K217 [{"PaddingBottom"}]
      941 LOADK                            R21 K138 ["$PaddingSmall"]
      942 SETTABLEKS                       R21 R20 K136 ["PaddingBottom"]
      944 CALL                             R18 2 -1
      945 SETLIST                          R17 R18 -1 [1]
      947 CALL                             R14 3 1
      948 MOVE                             R15 R3
      949 LOADK                            R16 K218 [".am-padding-celldata"]
      950 NEWTABLE                         R17 0 0
      952 NEWTABLE                         R18 0 1
      954 MOVE                             R19 R3
      955 LOADK                            R20 K122 ["::UIPadding"]
      956 DUPTABLE                         R21 K137 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      957 LOADK                            R22 K138 ["$PaddingSmall"]
      958 SETTABLEKS                       R22 R21 K134 ["PaddingLeft"]
      960 LOADK                            R22 K138 ["$PaddingSmall"]
      961 SETTABLEKS                       R22 R21 K135 ["PaddingRight"]
      963 LOADK                            R22 K138 ["$PaddingSmall"]
      964 SETTABLEKS                       R22 R21 K123 ["PaddingTop"]
      966 LOADK                            R22 K96 ["$Padding"]
      967 SETTABLEKS                       R22 R21 K136 ["PaddingBottom"]
      969 CALL                             R19 2 -1
      970 SETLIST                          R18 R19 -1 [1]
      972 CALL                             R15 3 1
      973 MOVE                             R16 R3
      974 LOADK                            R17 K219 [".am-size-full-explorerrow"]
      975 DUPTABLE                         R18 K104 [{"Size"}]
      976 GETIMPORT                        R19 K113 [UDim2.new]
      978 LOADN                            R20 1
      979 LOADN                            R21 0
      980 LOADN                            R22 0
      981 LOADN                            R23 24
      982 CALL                             R19 4 1
      983 SETTABLEKS                       R19 R18 K103 ["Size"]
      985 CALL                             R16 2 1
      986 MOVE                             R17 R3
      987 LOADK                            R18 K220 [".am-position-center-right-xoffset-small"]
      988 DUPTABLE                         R19 K130 [{"Position"}]
      989 GETIMPORT                        R20 K113 [UDim2.new]
      991 LOADN                            R21 1
      992 GETTABLEKS                       R23 R2 K131 ["PaddingSmall"]
      994 MINUS                            R22 R23
      995 LOADK                            R23 K210 [0.5]
      996 LOADN                            R24 0
      997 CALL                             R20 4 1
      998 SETTABLEKS                       R20 R19 K77 ["Position"]
     1000 CALL                             R17 2 1
     1001 MOVE                             R18 R3
     1002 LOADK                            R19 K221 [".amr-underlay >> ScrollingFrame"]
     1003 DUPTABLE                         R20 K224 [{"VerticalScrollBarInset", "HorizontalScrollBarInset", "ScrollingDirection"}]
     1004 GETIMPORT                        R21 K109 [Enum.ScrollBarInset.None]
     1006 SETTABLEKS                       R21 R20 K106 ["VerticalScrollBarInset"]
     1008 GETIMPORT                        R21 K109 [Enum.ScrollBarInset.None]
     1010 SETTABLEKS                       R21 R20 K222 ["HorizontalScrollBarInset"]
     1012 GETIMPORT                        R21 K225 [Enum.ScrollingDirection.Y]
     1014 SETTABLEKS                       R21 R20 K223 ["ScrollingDirection"]
     1016 CALL                             R18 2 1
     1017 MOVE                             R19 R3
     1018 LOADK                            R20 K226 [".am-size-full-celldata"]
     1019 DUPTABLE                         R21 K104 [{"Size"}]
     1020 GETIMPORT                        R22 K113 [UDim2.new]
     1022 LOADN                            R23 1
     1023 LOADN                            R24 0
     1024 LOADN                            R25 0
     1025 GETTABLEKS                       R26 R2 K165 ["CellDataHeight"]
     1027 CALL                             R22 4 1
     1028 SETTABLEKS                       R22 R21 K103 ["Size"]
     1030 CALL                             R19 2 1
     1031 MOVE                             R20 R3
     1032 LOADK                            R21 K227 [".am-size-scrollbar-full"]
     1033 DUPTABLE                         R22 K104 [{"Size"}]
     1034 GETIMPORT                        R23 K113 [UDim2.new]
     1036 LOADN                            R24 0
     1037 GETTABLEKS                       R25 R2 K128 ["LoadingBarHeight"]
     1039 LOADN                            R26 1
     1040 LOADN                            R27 0
     1041 CALL                             R23 4 1
     1042 SETTABLEKS                       R23 R22 K103 ["Size"]
     1044 CALL                             R20 2 1
     1045 MOVE                             R21 R3
     1046 LOADK                            R22 K228 [".am-size-full-scrollbar"]
     1047 DUPTABLE                         R23 K104 [{"Size"}]
     1048 GETIMPORT                        R24 K113 [UDim2.new]
     1050 LOADN                            R25 1
     1051 LOADN                            R26 0
     1052 LOADN                            R27 0
     1053 GETTABLEKS                       R28 R2 K128 ["LoadingBarHeight"]
     1055 CALL                             R24 4 1
     1056 SETTABLEKS                       R24 R23 K103 ["Size"]
     1058 CALL                             R21 2 1
     1059 SETLIST                          R5 R6 16 [17]
     1061 MOVE                             R6 R3
     1062 LOADK                            R7 K229 [".am-size-full-topbar"]
     1063 DUPTABLE                         R8 K104 [{"Size"}]
     1064 GETIMPORT                        R9 K113 [UDim2.new]
     1066 LOADN                            R10 1
     1067 LOADN                            R11 0
     1068 LOADN                            R12 0
     1069 GETTABLEKS                       R13 R2 K114 ["TopBarHeight"]
     1071 CALL                             R9 4 1
     1072 SETTABLEKS                       R9 R8 K103 ["Size"]
     1074 CALL                             R6 2 1
     1075 MOVE                             R7 R3
     1076 LOADK                            R8 K230 [".am-size-full-headerrow"]
     1077 DUPTABLE                         R9 K104 [{"Size"}]
     1078 GETIMPORT                        R10 K113 [UDim2.new]
     1080 LOADN                            R11 1
     1081 LOADN                            R12 0
     1082 LOADN                            R13 0
     1083 GETTABLEKS                       R14 R2 K176 ["HeaderRowHeight"]
     1085 CALL                             R10 4 1
     1086 SETTABLEKS                       R10 R9 K103 ["Size"]
     1088 CALL                             R7 2 1
     1089 MOVE                             R8 R3
     1090 LOADK                            R9 K231 [".am-size-fit-headerrow"]
     1091 DUPTABLE                         R10 K199 [{"Size", "AutomaticSize"}]
     1092 GETIMPORT                        R11 K181 [UDim2.fromOffset]
     1094 LOADN                            R12 0
     1095 GETTABLEKS                       R13 R2 K176 ["HeaderRowHeight"]
     1097 CALL                             R11 2 1
     1098 SETTABLEKS                       R11 R10 K103 ["Size"]
     1100 GETIMPORT                        R11 K233 [Enum.AutomaticSize.X]
     1102 SETTABLEKS                       R11 R10 K150 ["AutomaticSize"]
     1104 CALL                             R8 2 1
     1105 MOVE                             R9 R3
     1106 LOADK                            R10 K234 [".am-size-icon-xsmall"]
     1107 DUPTABLE                         R11 K104 [{"Size"}]
     1108 GETTABLEKS                       R12 R2 K139 ["IconSizeXSmall"]
     1110 SETTABLEKS                       R12 R11 K103 ["Size"]
     1112 CALL                             R9 2 1
     1113 MOVE                             R10 R3
     1114 LOADK                            R11 K235 [".am-size-icon"]
     1115 DUPTABLE                         R12 K104 [{"Size"}]
     1116 LOADK                            R13 K236 ["$IconSize"]
     1117 SETTABLEKS                       R13 R12 K103 ["Size"]
     1119 CALL                             R10 2 1
     1120 MOVE                             R11 R3
     1121 LOADK                            R12 K237 [".am-bg-action-hover"]
     1122 DUPTABLE                         R13 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
     1123 LOADK                            R14 K238 ["$ActionHover"]
     1124 SETTABLEKS                       R14 R13 K170 ["BackgroundColor3"]
     1126 LOADN                            R14 0
     1127 SETTABLEKS                       R14 R13 K147 ["BackgroundTransparency"]
     1129 CALL                             R11 2 1
     1130 MOVE                             R12 R3
     1131 LOADK                            R13 K239 [".am-hover"]
     1132 NEWTABLE                         R14 0 0
     1134 NEWTABLE                         R15 0 1
     1136 MOVE                             R16 R3
     1137 LOADK                            R17 K240 [":hover"]
     1138 DUPTABLE                         R18 K201 [{"BackgroundColor3", "BackgroundTransparency"}]
     1139 LOADK                            R19 K238 ["$ActionHover"]
     1140 SETTABLEKS                       R19 R18 K170 ["BackgroundColor3"]
     1142 LOADN                            R19 0
     1143 SETTABLEKS                       R19 R18 K147 ["BackgroundTransparency"]
     1145 CALL                             R16 2 -1
     1146 SETLIST                          R15 R16 -1 [1]
     1148 CALL                             R12 3 -1
     1149 SETLIST                          R5 R6 -1 [33]
     1151 DUPTABLE                         R6 K258 [{"PaddingSmall", "Padding", "PaddingLarge", "IconDisabled", "Rotation", "Transparency", "CheckboxSize", "IconSize", "SortItemSize", "IconWidth", "BaseWidth", "OffsetWidth", "CellHeightDiff", "ThumbnailSize", "CellTagPadding", "ColumnMinSize", "ContentListRowHeight", "ListThumbnailSize", "CellContentPadding", "InputHeight"}]
     1152 GETIMPORT                        R7 K126 [UDim.new]
     1154 LOADN                            R8 0
     1155 GETTABLEKS                       R9 R2 K131 ["PaddingSmall"]
     1157 CALL                             R7 2 1
     1158 SETTABLEKS                       R7 R6 K131 ["PaddingSmall"]
     1160 GETIMPORT                        R7 K126 [UDim.new]
     1162 LOADN                            R8 0
     1163 GETTABLEKS                       R9 R2 K88 ["Padding"]
     1165 CALL                             R7 2 1
     1166 SETTABLEKS                       R7 R6 K88 ["Padding"]
     1168 GETIMPORT                        R7 K126 [UDim.new]
     1170 LOADN                            R8 0
     1171 GETTABLEKS                       R9 R2 K241 ["PaddingLarge"]
     1173 CALL                             R7 2 1
     1174 SETTABLEKS                       R7 R6 K241 ["PaddingLarge"]
     1176 LOADK                            R7 K3 ["FindFirstAncestor"]
     1177 SETTABLEKS                       R7 R6 K242 ["IconDisabled"]
     1179 GETTABLEKS                       R7 R2 K260 ["ShimmerRotation"]
     1181 SETTABLEKS                       R7 R6 K243 ["Rotation"]
     1183 GETIMPORT                        R7 K262 [NumberSequence.new]
     1185 NEWTABLE                         R8 0 5
     1187 GETIMPORT                        R9 K264 [NumberSequenceKeypoint.new]
     1189 LOADN                            R10 0
     1190 LOADN                            R11 1
     1191 CALL                             R9 2 1
     1192 GETIMPORT                        R10 K264 [NumberSequenceKeypoint.new]
     1194 LOADK                            R11 K9 ["Resources"]
     1195 LOADN                            R12 1
     1196 CALL                             R10 2 1
     1197 GETIMPORT                        R11 K264 [NumberSequenceKeypoint.new]
     1199 LOADK                            R12 K210 [0.5]
     1200 LOADK                            R13 K10 ["StyleConstants"]
     1201 CALL                             R11 2 1
     1202 GETIMPORT                        R12 K264 [NumberSequenceKeypoint.new]
     1204 LOADK                            R13 K11 ["Styling"]
     1205 LOADN                            R14 1
     1206 CALL                             R12 2 1
     1207 GETIMPORT                        R13 K264 [NumberSequenceKeypoint.new]
     1209 LOADN                            R14 1
     1210 LOADN                            R15 1
     1211 CALL                             R13 2 -1
     1212 SETLIST                          R8 R9 -1 [1]
     1214 CALL                             R7 1 1
     1215 SETTABLEKS                       R7 R6 K244 ["Transparency"]
     1217 GETTABLEKS                       R7 R2 K154 ["IconWidth"]
     1219 SETTABLEKS                       R7 R6 K245 ["CheckboxSize"]
     1221 GETTABLEKS                       R7 R2 K246 ["IconSize"]
     1223 SETTABLEKS                       R7 R6 K246 ["IconSize"]
     1225 GETIMPORT                        R7 K113 [UDim2.new]
     1227 LOADN                            R8 0
     1228 LOADN                            R9 150
     1229 LOADN                            R10 0
     1230 LOADN                            R11 24
     1231 CALL                             R7 4 1
     1232 SETTABLEKS                       R7 R6 K247 ["SortItemSize"]
     1234 GETTABLEKS                       R8 R2 K88 ["Padding"]
     1236 GETTABLEKS                       R9 R2 K154 ["IconWidth"]
     1238 ADD                              R7 R8 R9
     1239 SETTABLEKS                       R7 R6 K154 ["IconWidth"]
     1241 GETTABLEKS                       R7 R2 K248 ["BaseWidth"]
     1243 SETTABLEKS                       R7 R6 K248 ["BaseWidth"]
     1245 GETTABLEKS                       R9 R2 K88 ["Padding"]
     1247 MULK                             R8 R9 K132 [2]
     1248 GETTABLEKS                       R9 R2 K154 ["IconWidth"]
     1250 ADD                              R7 R8 R9
     1251 SETTABLEKS                       R7 R6 K249 ["OffsetWidth"]
     1253 GETTABLEKS                       R7 R2 K165 ["CellDataHeight"]
     1255 SETTABLEKS                       R7 R6 K250 ["CellHeightDiff"]
     1257 LOADN                            R7 50
     1258 SETTABLEKS                       R7 R6 K251 ["ThumbnailSize"]
     1260 GETTABLEKS                       R7 R2 K131 ["PaddingSmall"]
     1262 SETTABLEKS                       R7 R6 K252 ["CellTagPadding"]
     1264 GETIMPORT                        R7 K126 [UDim.new]
     1266 LOADN                            R8 0
     1267 LOADN                            R9 60
     1268 CALL                             R7 2 1
     1269 SETTABLEKS                       R7 R6 K253 ["ColumnMinSize"]
     1271 GETTABLEKS                       R7 R2 K178 ["ItemRowHeight"]
     1273 SETTABLEKS                       R7 R6 K254 ["ContentListRowHeight"]
     1275 GETTABLEKS                       R7 R2 K182 ["ThumbnailContainerSize"]
     1277 SETTABLEKS                       R7 R6 K255 ["ListThumbnailSize"]
     1279 GETTABLEKS                       R7 R2 K88 ["Padding"]
     1281 SETTABLEKS                       R7 R6 K256 ["CellContentPadding"]
     1283 GETTABLEKS                       R8 R2 K178 ["ItemRowHeight"]
     1285 LOADN                            R10 2
     1286 GETTABLEKS                       R11 R2 K88 ["Padding"]
     1288 MUL                              R9 R10 R11
     1289 SUB                              R7 R8 R9
     1290 SETTABLEKS                       R7 R6 K257 ["InputHeight"]
     1292 MOVE                             R7 R4
     1293 LOADK                            R8 K2 ["AssetManager"]
     1294 MOVE                             R9 R5
     1295 MOVE                             R10 R6
     1296 CALL                             R7 3 -1
     1297 RETURN                           R7 -1
