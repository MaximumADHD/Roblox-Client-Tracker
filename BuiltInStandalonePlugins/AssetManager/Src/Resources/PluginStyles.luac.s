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
       31 NEWTABLE                         R5 0 40
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
      799 LOADK                            R21 K197 [".SearchPanel"]
      800 DUPTABLE                         R22 K104 [{"Size"}]
      801 GETIMPORT                        R23 K113 [UDim2.new]
      803 LOADN                            R24 1
      804 GETTABLEKS                       R25 R2 K131 ["PaddingSmall"]
      806 LOADN                            R26 0
      807 GETTABLEKS                       R27 R2 K114 ["TopBarHeight"]
      809 CALL                             R23 4 1
      810 SETTABLEKS                       R23 R22 K103 ["Size"]
      812 CALL                             R20 2 1
      813 MOVE                             R21 R3
      814 LOADK                            R22 K198 [".FillMinusDragX"]
      815 DUPTABLE                         R23 K104 [{"Size"}]
      816 GETIMPORT                        R24 K113 [UDim2.new]
      818 LOADN                            R25 1
      819 GETTABLEKS                       R27 R2 K131 ["PaddingSmall"]
      821 MINUS                            R26 R27
      822 LOADN                            R27 1
      823 LOADN                            R28 0
      824 CALL                             R24 4 1
      825 SETTABLEKS                       R24 R23 K103 ["Size"]
      827 CALL                             R21 2 1
      828 SETLIST                          R5 R6 16 [1]
      830 MOVE                             R6 R3
      831 LOADK                            R7 K199 [".FitYPlusDragX"]
      832 DUPTABLE                         R8 K200 [{"Size", "AutomaticSize"}]
      833 GETIMPORT                        R9 K113 [UDim2.new]
      835 LOADN                            R10 1
      836 GETTABLEKS                       R11 R2 K131 ["PaddingSmall"]
      838 LOADN                            R12 0
      839 LOADN                            R13 0
      840 CALL                             R9 4 1
      841 SETTABLEKS                       R9 R8 K103 ["Size"]
      843 GETIMPORT                        R9 K153 [Enum.AutomaticSize.Y]
      845 SETTABLEKS                       R9 R8 K150 ["AutomaticSize"]
      847 CALL                             R6 2 1
      848 MOVE                             R7 R3
      849 LOADK                            R8 K201 [".bg-action-selected"]
      850 DUPTABLE                         R9 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
      851 LOADK                            R10 K203 ["$ActionSelected"]
      852 SETTABLEKS                       R10 R9 K170 ["BackgroundColor3"]
      854 LOADN                            R10 0
      855 SETTABLEKS                       R10 R9 K147 ["BackgroundTransparency"]
      857 CALL                             R7 2 1
      858 MOVE                             R8 R3
      859 LOADK                            R9 K204 [".bg-foreground-main"]
      860 DUPTABLE                         R10 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
      861 LOADK                            R11 K205 ["$ForegroundMain"]
      862 SETTABLEKS                       R11 R10 K170 ["BackgroundColor3"]
      864 LOADN                            R11 0
      865 SETTABLEKS                       R11 R10 K147 ["BackgroundTransparency"]
      867 CALL                             R8 2 1
      868 MOVE                             R9 R3
      869 LOADK                            R10 K206 [".bg-foreground-contrast"]
      870 DUPTABLE                         R11 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
      871 LOADK                            R12 K173 ["$ForegroundContrast"]
      872 SETTABLEKS                       R12 R11 K170 ["BackgroundColor3"]
      874 LOADN                            R12 0
      875 SETTABLEKS                       R12 R11 K147 ["BackgroundTransparency"]
      877 CALL                             R9 2 1
      878 MOVE                             R10 R3
      879 LOADK                            R11 K207 [".bg-paper"]
      880 DUPTABLE                         R12 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
      881 LOADK                            R13 K208 ["$BackgroundPaper"]
      882 SETTABLEKS                       R13 R12 K170 ["BackgroundColor3"]
      884 LOADN                            R13 0
      885 SETTABLEKS                       R13 R12 K147 ["BackgroundTransparency"]
      887 CALL                             R10 2 1
      888 MOVE                             R11 R3
      889 LOADK                            R12 K209 [".anchor-center-right"]
      890 DUPTABLE                         R13 K210 [{"AnchorPoint"}]
      891 GETIMPORT                        R14 K159 [Vector2.new]
      893 LOADN                            R15 1
      894 LOADK                            R16 K211 [0.5]
      895 CALL                             R14 2 1
      896 SETTABLEKS                       R14 R13 K156 ["AnchorPoint"]
      898 CALL                             R11 2 1
      899 MOVE                             R12 R3
      900 LOADK                            R13 K212 [".am-padding-right-xsmall"]
      901 NEWTABLE                         R14 0 0
      903 NEWTABLE                         R15 0 1
      905 MOVE                             R16 R3
      906 LOADK                            R17 K122 ["::UIPadding"]
      907 DUPTABLE                         R18 K213 [{"PaddingRight"}]
      908 LOADK                            R19 K138 ["$PaddingSmall"]
      909 SETTABLEKS                       R19 R18 K135 ["PaddingRight"]
      911 CALL                             R16 2 -1
      912 SETLIST                          R15 R16 -1 [1]
      914 CALL                             R12 3 1
      915 MOVE                             R13 R3
      916 LOADK                            R14 K214 [".am-padding-left-small"]
      917 NEWTABLE                         R15 0 0
      919 NEWTABLE                         R16 0 1
      921 MOVE                             R17 R3
      922 LOADK                            R18 K122 ["::UIPadding"]
      923 DUPTABLE                         R19 K215 [{"PaddingLeft"}]
      924 LOADK                            R20 K138 ["$PaddingSmall"]
      925 SETTABLEKS                       R20 R19 K134 ["PaddingLeft"]
      927 CALL                             R17 2 -1
      928 SETLIST                          R16 R17 -1 [1]
      930 CALL                             R13 3 1
      931 MOVE                             R14 R3
      932 LOADK                            R15 K216 [".am-padding-left-medium"]
      933 NEWTABLE                         R16 0 0
      935 NEWTABLE                         R17 0 1
      937 MOVE                             R18 R3
      938 LOADK                            R19 K122 ["::UIPadding"]
      939 DUPTABLE                         R20 K215 [{"PaddingLeft"}]
      940 LOADK                            R21 K96 ["$Padding"]
      941 SETTABLEKS                       R21 R20 K134 ["PaddingLeft"]
      943 CALL                             R18 2 -1
      944 SETLIST                          R17 R18 -1 [1]
      946 CALL                             R14 3 1
      947 MOVE                             R15 R3
      948 LOADK                            R16 K217 [".am-padding-bottom-small"]
      949 NEWTABLE                         R17 0 0
      951 NEWTABLE                         R18 0 1
      953 MOVE                             R19 R3
      954 LOADK                            R20 K122 ["::UIPadding"]
      955 DUPTABLE                         R21 K218 [{"PaddingBottom"}]
      956 LOADK                            R22 K138 ["$PaddingSmall"]
      957 SETTABLEKS                       R22 R21 K136 ["PaddingBottom"]
      959 CALL                             R19 2 -1
      960 SETLIST                          R18 R19 -1 [1]
      962 CALL                             R15 3 1
      963 MOVE                             R16 R3
      964 LOADK                            R17 K219 [".am-padding-celldata"]
      965 NEWTABLE                         R18 0 0
      967 NEWTABLE                         R19 0 1
      969 MOVE                             R20 R3
      970 LOADK                            R21 K122 ["::UIPadding"]
      971 DUPTABLE                         R22 K137 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      972 LOADK                            R23 K138 ["$PaddingSmall"]
      973 SETTABLEKS                       R23 R22 K134 ["PaddingLeft"]
      975 LOADK                            R23 K138 ["$PaddingSmall"]
      976 SETTABLEKS                       R23 R22 K135 ["PaddingRight"]
      978 LOADK                            R23 K138 ["$PaddingSmall"]
      979 SETTABLEKS                       R23 R22 K123 ["PaddingTop"]
      981 LOADK                            R23 K96 ["$Padding"]
      982 SETTABLEKS                       R23 R22 K136 ["PaddingBottom"]
      984 CALL                             R20 2 -1
      985 SETLIST                          R19 R20 -1 [1]
      987 CALL                             R16 3 1
      988 MOVE                             R17 R3
      989 LOADK                            R18 K220 [".am-size-full-explorerrow"]
      990 DUPTABLE                         R19 K104 [{"Size"}]
      991 GETIMPORT                        R20 K113 [UDim2.new]
      993 LOADN                            R21 1
      994 LOADN                            R22 0
      995 LOADN                            R23 0
      996 LOADN                            R24 24
      997 CALL                             R20 4 1
      998 SETTABLEKS                       R20 R19 K103 ["Size"]
     1000 CALL                             R17 2 1
     1001 MOVE                             R18 R3
     1002 LOADK                            R19 K221 [".am-position-center-right-xoffset-small"]
     1003 DUPTABLE                         R20 K130 [{"Position"}]
     1004 GETIMPORT                        R21 K113 [UDim2.new]
     1006 LOADN                            R22 1
     1007 GETTABLEKS                       R24 R2 K131 ["PaddingSmall"]
     1009 MINUS                            R23 R24
     1010 LOADK                            R24 K211 [0.5]
     1011 LOADN                            R25 0
     1012 CALL                             R21 4 1
     1013 SETTABLEKS                       R21 R20 K77 ["Position"]
     1015 CALL                             R18 2 1
     1016 MOVE                             R19 R3
     1017 LOADK                            R20 K222 [".amr-underlay >> ScrollingFrame"]
     1018 DUPTABLE                         R21 K225 [{"VerticalScrollBarInset", "HorizontalScrollBarInset", "ScrollingDirection"}]
     1019 GETIMPORT                        R22 K109 [Enum.ScrollBarInset.None]
     1021 SETTABLEKS                       R22 R21 K106 ["VerticalScrollBarInset"]
     1023 GETIMPORT                        R22 K109 [Enum.ScrollBarInset.None]
     1025 SETTABLEKS                       R22 R21 K223 ["HorizontalScrollBarInset"]
     1027 GETIMPORT                        R22 K226 [Enum.ScrollingDirection.Y]
     1029 SETTABLEKS                       R22 R21 K224 ["ScrollingDirection"]
     1031 CALL                             R19 2 1
     1032 MOVE                             R20 R3
     1033 LOADK                            R21 K227 [".am-size-full-celldata"]
     1034 DUPTABLE                         R22 K104 [{"Size"}]
     1035 GETIMPORT                        R23 K113 [UDim2.new]
     1037 LOADN                            R24 1
     1038 LOADN                            R25 0
     1039 LOADN                            R26 0
     1040 GETTABLEKS                       R27 R2 K165 ["CellDataHeight"]
     1042 CALL                             R23 4 1
     1043 SETTABLEKS                       R23 R22 K103 ["Size"]
     1045 CALL                             R20 2 1
     1046 MOVE                             R21 R3
     1047 LOADK                            R22 K228 [".am-size-scrollbar-full"]
     1048 DUPTABLE                         R23 K104 [{"Size"}]
     1049 GETIMPORT                        R24 K113 [UDim2.new]
     1051 LOADN                            R25 0
     1052 GETTABLEKS                       R26 R2 K128 ["LoadingBarHeight"]
     1054 LOADN                            R27 1
     1055 LOADN                            R28 0
     1056 CALL                             R24 4 1
     1057 SETTABLEKS                       R24 R23 K103 ["Size"]
     1059 CALL                             R21 2 1
     1060 SETLIST                          R5 R6 16 [17]
     1062 MOVE                             R6 R3
     1063 LOADK                            R7 K229 [".am-size-full-scrollbar"]
     1064 DUPTABLE                         R8 K104 [{"Size"}]
     1065 GETIMPORT                        R9 K113 [UDim2.new]
     1067 LOADN                            R10 1
     1068 LOADN                            R11 0
     1069 LOADN                            R12 0
     1070 GETTABLEKS                       R13 R2 K128 ["LoadingBarHeight"]
     1072 CALL                             R9 4 1
     1073 SETTABLEKS                       R9 R8 K103 ["Size"]
     1075 CALL                             R6 2 1
     1076 MOVE                             R7 R3
     1077 LOADK                            R8 K230 [".am-size-full-topbar"]
     1078 DUPTABLE                         R9 K104 [{"Size"}]
     1079 GETIMPORT                        R10 K113 [UDim2.new]
     1081 LOADN                            R11 1
     1082 LOADN                            R12 0
     1083 LOADN                            R13 0
     1084 GETTABLEKS                       R14 R2 K114 ["TopBarHeight"]
     1086 CALL                             R10 4 1
     1087 SETTABLEKS                       R10 R9 K103 ["Size"]
     1089 CALL                             R7 2 1
     1090 MOVE                             R8 R3
     1091 LOADK                            R9 K231 [".am-size-full-headerrow"]
     1092 DUPTABLE                         R10 K104 [{"Size"}]
     1093 GETIMPORT                        R11 K113 [UDim2.new]
     1095 LOADN                            R12 1
     1096 LOADN                            R13 0
     1097 LOADN                            R14 0
     1098 GETTABLEKS                       R15 R2 K176 ["HeaderRowHeight"]
     1100 CALL                             R11 4 1
     1101 SETTABLEKS                       R11 R10 K103 ["Size"]
     1103 CALL                             R8 2 1
     1104 MOVE                             R9 R3
     1105 LOADK                            R10 K232 [".am-size-fit-headerrow"]
     1106 DUPTABLE                         R11 K200 [{"Size", "AutomaticSize"}]
     1107 GETIMPORT                        R12 K181 [UDim2.fromOffset]
     1109 LOADN                            R13 0
     1110 GETTABLEKS                       R14 R2 K176 ["HeaderRowHeight"]
     1112 CALL                             R12 2 1
     1113 SETTABLEKS                       R12 R11 K103 ["Size"]
     1115 GETIMPORT                        R12 K234 [Enum.AutomaticSize.X]
     1117 SETTABLEKS                       R12 R11 K150 ["AutomaticSize"]
     1119 CALL                             R9 2 1
     1120 MOVE                             R10 R3
     1121 LOADK                            R11 K235 [".am-size-icon-xsmall"]
     1122 DUPTABLE                         R12 K104 [{"Size"}]
     1123 GETTABLEKS                       R13 R2 K139 ["IconSizeXSmall"]
     1125 SETTABLEKS                       R13 R12 K103 ["Size"]
     1127 CALL                             R10 2 1
     1128 MOVE                             R11 R3
     1129 LOADK                            R12 K236 [".am-size-icon"]
     1130 DUPTABLE                         R13 K104 [{"Size"}]
     1131 LOADK                            R14 K237 ["$IconSize"]
     1132 SETTABLEKS                       R14 R13 K103 ["Size"]
     1134 CALL                             R11 2 1
     1135 MOVE                             R12 R3
     1136 LOADK                            R13 K238 [".am-bg-action-hover"]
     1137 DUPTABLE                         R14 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
     1138 LOADK                            R15 K239 ["$ActionHover"]
     1139 SETTABLEKS                       R15 R14 K170 ["BackgroundColor3"]
     1141 LOADN                            R15 0
     1142 SETTABLEKS                       R15 R14 K147 ["BackgroundTransparency"]
     1144 CALL                             R12 2 1
     1145 MOVE                             R13 R3
     1146 LOADK                            R14 K240 [".am-hover"]
     1147 NEWTABLE                         R15 0 0
     1149 NEWTABLE                         R16 0 1
     1151 MOVE                             R17 R3
     1152 LOADK                            R18 K241 [":hover"]
     1153 DUPTABLE                         R19 K202 [{"BackgroundColor3", "BackgroundTransparency"}]
     1154 LOADK                            R20 K239 ["$ActionHover"]
     1155 SETTABLEKS                       R20 R19 K170 ["BackgroundColor3"]
     1157 LOADN                            R20 0
     1158 SETTABLEKS                       R20 R19 K147 ["BackgroundTransparency"]
     1160 CALL                             R17 2 -1
     1161 SETLIST                          R16 R17 -1 [1]
     1163 CALL                             R13 3 -1
     1164 SETLIST                          R5 R6 -1 [33]
     1166 DUPTABLE                         R6 K259 [{"PaddingSmall", "Padding", "PaddingLarge", "IconDisabled", "Rotation", "Transparency", "CheckboxSize", "IconSize", "SortItemSize", "IconWidth", "BaseWidth", "OffsetWidth", "CellHeightDiff", "ThumbnailSize", "CellTagPadding", "ColumnMinSize", "ContentListRowHeight", "ListThumbnailSize", "CellContentPadding", "InputHeight"}]
     1167 GETIMPORT                        R7 K126 [UDim.new]
     1169 LOADN                            R8 0
     1170 GETTABLEKS                       R9 R2 K131 ["PaddingSmall"]
     1172 CALL                             R7 2 1
     1173 SETTABLEKS                       R7 R6 K131 ["PaddingSmall"]
     1175 GETIMPORT                        R7 K126 [UDim.new]
     1177 LOADN                            R8 0
     1178 GETTABLEKS                       R9 R2 K88 ["Padding"]
     1180 CALL                             R7 2 1
     1181 SETTABLEKS                       R7 R6 K88 ["Padding"]
     1183 GETIMPORT                        R7 K126 [UDim.new]
     1185 LOADN                            R8 0
     1186 GETTABLEKS                       R9 R2 K242 ["PaddingLarge"]
     1188 CALL                             R7 2 1
     1189 SETTABLEKS                       R7 R6 K242 ["PaddingLarge"]
     1191 LOADK                            R7 K4 ["require"]
     1192 SETTABLEKS                       R7 R6 K243 ["IconDisabled"]
     1194 GETTABLEKS                       R7 R2 K261 ["ShimmerRotation"]
     1196 SETTABLEKS                       R7 R6 K244 ["Rotation"]
     1198 GETIMPORT                        R7 K263 [NumberSequence.new]
     1200 NEWTABLE                         R8 0 5
     1202 GETIMPORT                        R9 K265 [NumberSequenceKeypoint.new]
     1204 LOADN                            R10 0
     1205 LOADN                            R11 1
     1206 CALL                             R9 2 1
     1207 GETIMPORT                        R10 K265 [NumberSequenceKeypoint.new]
     1209 LOADK                            R11 K10 ["StyleConstants"]
     1210 LOADN                            R12 1
     1211 CALL                             R10 2 1
     1212 GETIMPORT                        R11 K265 [NumberSequenceKeypoint.new]
     1214 LOADK                            R12 K211 [0.5]
     1215 LOADK                            R13 K11 ["Styling"]
     1216 CALL                             R11 2 1
     1217 GETIMPORT                        R12 K265 [NumberSequenceKeypoint.new]
     1219 LOADK                            R13 K12 ["createStyleRule"]
     1220 LOADN                            R14 1
     1221 CALL                             R12 2 1
     1222 GETIMPORT                        R13 K265 [NumberSequenceKeypoint.new]
     1224 LOADN                            R14 1
     1225 LOADN                            R15 1
     1226 CALL                             R13 2 -1
     1227 SETLIST                          R8 R9 -1 [1]
     1229 CALL                             R7 1 1
     1230 SETTABLEKS                       R7 R6 K245 ["Transparency"]
     1232 GETTABLEKS                       R7 R2 K154 ["IconWidth"]
     1234 SETTABLEKS                       R7 R6 K246 ["CheckboxSize"]
     1236 GETTABLEKS                       R7 R2 K247 ["IconSize"]
     1238 SETTABLEKS                       R7 R6 K247 ["IconSize"]
     1240 GETIMPORT                        R7 K113 [UDim2.new]
     1242 LOADN                            R8 0
     1243 LOADN                            R9 150
     1244 LOADN                            R10 0
     1245 LOADN                            R11 24
     1246 CALL                             R7 4 1
     1247 SETTABLEKS                       R7 R6 K248 ["SortItemSize"]
     1249 GETTABLEKS                       R8 R2 K88 ["Padding"]
     1251 GETTABLEKS                       R9 R2 K154 ["IconWidth"]
     1253 ADD                              R7 R8 R9
     1254 SETTABLEKS                       R7 R6 K154 ["IconWidth"]
     1256 GETTABLEKS                       R7 R2 K249 ["BaseWidth"]
     1258 SETTABLEKS                       R7 R6 K249 ["BaseWidth"]
     1260 GETTABLEKS                       R9 R2 K88 ["Padding"]
     1262 MULK                             R8 R9 K132 [2]
     1263 GETTABLEKS                       R9 R2 K154 ["IconWidth"]
     1265 ADD                              R7 R8 R9
     1266 SETTABLEKS                       R7 R6 K250 ["OffsetWidth"]
     1268 GETTABLEKS                       R7 R2 K165 ["CellDataHeight"]
     1270 SETTABLEKS                       R7 R6 K251 ["CellHeightDiff"]
     1272 LOADN                            R7 50
     1273 SETTABLEKS                       R7 R6 K252 ["ThumbnailSize"]
     1275 GETTABLEKS                       R7 R2 K131 ["PaddingSmall"]
     1277 SETTABLEKS                       R7 R6 K253 ["CellTagPadding"]
     1279 GETIMPORT                        R7 K126 [UDim.new]
     1281 LOADN                            R8 0
     1282 LOADN                            R9 60
     1283 CALL                             R7 2 1
     1284 SETTABLEKS                       R7 R6 K254 ["ColumnMinSize"]
     1286 GETTABLEKS                       R7 R2 K178 ["ItemRowHeight"]
     1288 SETTABLEKS                       R7 R6 K255 ["ContentListRowHeight"]
     1290 GETTABLEKS                       R7 R2 K182 ["ThumbnailContainerSize"]
     1292 SETTABLEKS                       R7 R6 K256 ["ListThumbnailSize"]
     1294 GETTABLEKS                       R7 R2 K88 ["Padding"]
     1296 SETTABLEKS                       R7 R6 K257 ["CellContentPadding"]
     1298 GETTABLEKS                       R8 R2 K178 ["ItemRowHeight"]
     1300 LOADN                            R10 2
     1301 GETTABLEKS                       R11 R2 K88 ["Padding"]
     1303 MUL                              R9 R10 R11
     1304 SUB                              R7 R8 R9
     1305 SETTABLEKS                       R7 R6 K258 ["InputHeight"]
     1307 MOVE                             R7 R4
     1308 LOADK                            R8 K2 ["AssetManager"]
     1309 MOVE                             R9 R5
     1310 MOVE                             R10 R6
     1311 CALL                             R7 3 -1
     1312 RETURN                           R7 -1
