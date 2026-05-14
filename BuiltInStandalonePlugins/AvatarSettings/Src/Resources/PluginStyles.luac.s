MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 GETTABLEKS                       R3 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R3 K10 ["createStyleSheet"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R0 K11 ["Src"]
       26 GETTABLEKS                       R5 R5 K12 ["Flags"]
       28 GETTABLEKS                       R5 R5 K13 ["getFFlagAvatarSettingsRemoveMouseDownNavbarColor"]
       30 CALL                             R4 1 1
       31 NEWTABLE                         R5 0 39
       33 MOVE                             R6 R2
       34 LOADK                            R7 K14 [".Component-CategoryList"]
       35 DUPTABLE                         R8 K19 [{"Size", "BackgroundColor3", "BackgroundTransparency", "AutomaticSize"}]
       36 GETIMPORT                        R9 K22 [UDim2.fromScale]
       38 LOADN                            R10 0
       39 LOADN                            R11 1
       40 CALL                             R9 2 1
       41 SETTABLEKS                       R9 R8 K15 ["Size"]
       43 LOADK                            R9 K23 ["$BackgroundPaper"]
       44 SETTABLEKS                       R9 R8 K16 ["BackgroundColor3"]
       46 LOADN                            R9 0
       47 SETTABLEKS                       R9 R8 K17 ["BackgroundTransparency"]
       49 GETIMPORT                        R9 K26 [Enum.AutomaticSize.X]
       51 SETTABLEKS                       R9 R8 K18 ["AutomaticSize"]
       53 CALL                             R6 2 1
       54 MOVE                             R7 R2
       55 LOADK                            R8 K27 [".Component-CategoryListItem"]
       56 NEWTABLE                         R9 0 0
       58 NEWTABLE                         R10 0 1
       60 MOVE                             R11 R2
       61 LOADK                            R12 K28 [">> TextButton"]
       62 DUPTABLE                         R13 K32 [{"TextXAlignment", "AutomaticSize", "BorderSizePixel", "AutoButtonColor"}]
       63 GETIMPORT                        R14 K34 [Enum.TextXAlignment.Left]
       65 SETTABLEKS                       R14 R13 K29 ["TextXAlignment"]
       67 GETIMPORT                        R14 K26 [Enum.AutomaticSize.X]
       69 SETTABLEKS                       R14 R13 K18 ["AutomaticSize"]
       71 LOADN                            R14 0
       72 SETTABLEKS                       R14 R13 K30 ["BorderSizePixel"]
       74 MOVE                             R15 R4
       75 CALL                             R15 0 1
       76 JUMPIFNOT                        R15 ; [+2]
       77 LOADB                            R14 0
       78 JUMP                             ; [+1]
       79 LOADB                            R14 1
       80 SETTABLEKS                       R14 R13 K31 ["AutoButtonColor"]
       82 NEWTABLE                         R14 0 4
       84 MOVE                             R15 R2
       85 LOADK                            R16 K35 [":hover"]
       86 DUPTABLE                         R17 K37 [{"BackgroundColor3", "TextColor3"}]
       87 MOVE                             R19 R4
       88 CALL                             R19 0 1
       89 JUMPIFNOT                        R19 ; [+2]
       90 LOADNIL                          R18
       91 JUMP                             ; [+1]
       92 LOADK                            R18 K38 ["$ActionSelected"]
       93 SETTABLEKS                       R18 R17 K16 ["BackgroundColor3"]
       95 MOVE                             R19 R4
       96 CALL                             R19 0 1
       97 JUMPIFNOT                        R19 ; [+2]
       98 LOADNIL                          R18
       99 JUMP                             ; [+1]
      100 LOADK                            R18 K39 ["$CategoryListTextContrast"]
      101 SETTABLEKS                       R18 R17 K36 ["TextColor3"]
      103 CALL                             R15 2 1
      104 MOVE                             R16 R2
      105 LOADK                            R17 K40 [":press"]
      106 DUPTABLE                         R18 K37 [{"BackgroundColor3", "TextColor3"}]
      107 MOVE                             R20 R4
      108 CALL                             R20 0 1
      109 JUMPIFNOT                        R20 ; [+2]
      110 LOADNIL                          R19
      111 JUMP                             ; [+1]
      112 LOADK                            R19 K38 ["$ActionSelected"]
      113 SETTABLEKS                       R19 R18 K16 ["BackgroundColor3"]
      115 MOVE                             R20 R4
      116 CALL                             R20 0 1
      117 JUMPIFNOT                        R20 ; [+2]
      118 LOADNIL                          R19
      119 JUMP                             ; [+1]
      120 LOADK                            R19 K39 ["$CategoryListTextContrast"]
      121 SETTABLEKS                       R19 R18 K36 ["TextColor3"]
      123 CALL                             R16 2 1
      124 MOVE                             R17 R2
      125 LOADK                            R18 K41 [".Selected"]
      126 DUPTABLE                         R19 K37 [{"BackgroundColor3", "TextColor3"}]
      127 LOADK                            R20 K38 ["$ActionSelected"]
      128 SETTABLEKS                       R20 R19 K16 ["BackgroundColor3"]
      130 LOADK                            R20 K39 ["$CategoryListTextContrast"]
      131 SETTABLEKS                       R20 R19 K36 ["TextColor3"]
      133 CALL                             R17 2 1
      134 MOVE                             R18 R2
      135 LOADK                            R19 K42 [".Unselected"]
      136 DUPTABLE                         R20 K37 [{"BackgroundColor3", "TextColor3"}]
      137 LOADK                            R21 K23 ["$BackgroundPaper"]
      138 SETTABLEKS                       R21 R20 K16 ["BackgroundColor3"]
      140 LOADK                            R21 K43 ["$TextSecondary"]
      141 SETTABLEKS                       R21 R20 K36 ["TextColor3"]
      143 CALL                             R18 2 -1
      144 SETLIST                          R14 R15 -1 [1]
      146 CALL                             R11 3 -1
      147 SETLIST                          R10 R11 -1 [1]
      149 CALL                             R7 3 1
      150 MOVE                             R8 R2
      151 LOADK                            R9 K44 [".GeneralCategoryImage"]
      152 DUPTABLE                         R10 K46 [{"Image"}]
      153 LOADK                            R11 K47 ["$GeneralCategoryImage"]
      154 SETTABLEKS                       R11 R10 K45 ["Image"]
      156 CALL                             R8 2 1
      157 MOVE                             R9 R2
      158 LOADK                            R10 K48 [".BodyCategoryImage"]
      159 DUPTABLE                         R11 K46 [{"Image"}]
      160 LOADK                            R12 K49 ["$BodyCategoryImage"]
      161 SETTABLEKS                       R12 R11 K45 ["Image"]
      163 CALL                             R9 2 1
      164 MOVE                             R10 R2
      165 LOADK                            R11 K50 [".MovementCategoryImage"]
      166 DUPTABLE                         R12 K46 [{"Image"}]
      167 LOADK                            R13 K51 ["$MovementCategoryImage"]
      168 SETTABLEKS                       R13 R12 K45 ["Image"]
      170 CALL                             R10 2 1
      171 MOVE                             R11 R2
      172 LOADK                            R12 K52 [".AccessoriesCategoryImage"]
      173 DUPTABLE                         R13 K46 [{"Image"}]
      174 LOADK                            R14 K53 ["$AccessoriesCategoryImage"]
      175 SETTABLEKS                       R14 R13 K45 ["Image"]
      177 CALL                             R11 2 1
      178 MOVE                             R12 R2
      179 LOADK                            R13 K54 [".ClothingCategoryImage"]
      180 DUPTABLE                         R14 K46 [{"Image"}]
      181 LOADK                            R15 K55 ["$ClothingCategoryImage"]
      182 SETTABLEKS                       R15 R14 K45 ["Image"]
      184 CALL                             R12 2 1
      185 MOVE                             R13 R2
      186 LOADK                            R14 K56 [".ToggleSidebarExpandImage"]
      187 NEWTABLE                         R15 0 0
      189 NEWTABLE                         R16 0 2
      191 MOVE                             R17 R2
      192 LOADK                            R18 K57 [".Expanded"]
      193 DUPTABLE                         R19 K46 [{"Image"}]
      194 LOADK                            R20 K58 ["$CollapseSidebarImage"]
      195 SETTABLEKS                       R20 R19 K45 ["Image"]
      197 CALL                             R17 2 1
      198 MOVE                             R18 R2
      199 LOADK                            R19 K59 [".Collapsed"]
      200 DUPTABLE                         R20 K46 [{"Image"}]
      201 LOADK                            R21 K60 ["$ExpandSidebarImage"]
      202 SETTABLEKS                       R21 R20 K45 ["Image"]
      204 CALL                             R18 2 -1
      205 SETLIST                          R16 R17 -1 [1]
      207 CALL                             R13 3 1
      208 MOVE                             R14 R2
      209 LOADK                            R15 K61 [".Component-NavigationBar"]
      210 DUPTABLE                         R16 K63 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderColor3"}]
      211 GETIMPORT                        R17 K65 [UDim2.new]
      213 LOADN                            R18 1
      214 LOADN                            R19 0
      215 LOADN                            R20 0
      216 LOADN                            R21 44
      217 CALL                             R17 4 1
      218 SETTABLEKS                       R17 R16 K15 ["Size"]
      220 LOADK                            R17 K66 ["$ForegroundContrast"]
      221 SETTABLEKS                       R17 R16 K16 ["BackgroundColor3"]
      223 LOADN                            R17 0
      224 SETTABLEKS                       R17 R16 K17 ["BackgroundTransparency"]
      226 LOADK                            R17 K67 ["$Divider"]
      227 SETTABLEKS                       R17 R16 K62 ["BorderColor3"]
      229 NEWTABLE                         R17 0 2
      231 MOVE                             R18 R2
      232 LOADK                            R19 K68 ["::UIPadding"]
      233 DUPTABLE                         R20 K71 [{"PaddingTop", "PaddingBottom"}]
      234 GETIMPORT                        R21 K73 [UDim.new]
      236 LOADN                            R22 0
      237 LOADN                            R23 8
      238 CALL                             R21 2 1
      239 SETTABLEKS                       R21 R20 K69 ["PaddingTop"]
      241 GETIMPORT                        R21 K73 [UDim.new]
      243 LOADN                            R22 0
      244 LOADN                            R23 8
      245 CALL                             R21 2 1
      246 SETTABLEKS                       R21 R20 K70 ["PaddingBottom"]
      248 CALL                             R18 2 1
      249 MOVE                             R19 R2
      250 LOADK                            R20 K74 ["::UISizeConstraint"]
      251 DUPTABLE                         R21 K76 [{"MinSize"}]
      252 GETIMPORT                        R22 K78 [Vector2.new]
      254 LOADN                            R23 139
      255 LOADN                            R24 0
      256 CALL                             R22 2 1
      257 SETTABLEKS                       R22 R21 K75 ["MinSize"]
      259 CALL                             R19 2 -1
      260 SETLIST                          R17 R18 -1 [1]
      262 CALL                             R14 3 1
      263 MOVE                             R15 R2
      264 LOADK                            R16 K79 [".AvatarTypeDropdownItem"]
      265 DUPTABLE                         R17 K80 [{"Size", "BackgroundColor3", "AutomaticSize"}]
      266 GETIMPORT                        R18 K82 [UDim2.fromOffset]
      268 LOADN                            R19 200
      269 LOADN                            R20 66
      270 CALL                             R18 2 1
      271 SETTABLEKS                       R18 R17 K15 ["Size"]
      273 LOADK                            R18 K83 ["$ForegroundMain"]
      274 SETTABLEKS                       R18 R17 K16 ["BackgroundColor3"]
      276 GETIMPORT                        R18 K85 [Enum.AutomaticSize.XY]
      278 SETTABLEKS                       R18 R17 K18 ["AutomaticSize"]
      280 NEWTABLE                         R18 0 2
      282 MOVE                             R19 R2
      283 LOADK                            R20 K86 ["::UIStroke"]
      284 DUPTABLE                         R21 K89 [{"Color", "Thickness"}]
      285 LOADK                            R22 K67 ["$Divider"]
      286 SETTABLEKS                       R22 R21 K87 ["Color"]
      288 LOADN                            R22 1
      289 SETTABLEKS                       R22 R21 K88 ["Thickness"]
      291 CALL                             R19 2 1
      292 MOVE                             R20 R2
      293 LOADK                            R21 K35 [":hover"]
      294 DUPTABLE                         R22 K90 [{"BackgroundColor3"}]
      295 LOADK                            R23 K66 ["$ForegroundContrast"]
      296 SETTABLEKS                       R23 R22 K16 ["BackgroundColor3"]
      298 CALL                             R20 2 -1
      299 SETLIST                          R18 R19 -1 [1]
      301 CALL                             R15 3 1
      302 MOVE                             R16 R2
      303 LOADK                            R17 K91 [".AvatarTypeDropdownToggleButton"]
      304 DUPTABLE                         R18 K92 [{"Image", "BackgroundTransparency"}]
      305 LOADK                            R19 K93 ["$AvatarTypeDropdownToggleImage"]
      306 SETTABLEKS                       R19 R18 K45 ["Image"]
      308 LOADN                            R19 1
      309 SETTABLEKS                       R19 R18 K17 ["BackgroundTransparency"]
      311 NEWTABLE                         R19 0 2
      313 MOVE                             R20 R2
      314 LOADK                            R21 K94 [".Enabled"]
      315 DUPTABLE                         R22 K95 [{"BackgroundColor3", "BackgroundTransparency"}]
      316 LOADK                            R23 K96 ["$ActionActivated"]
      317 SETTABLEKS                       R23 R22 K16 ["BackgroundColor3"]
      319 LOADN                            R23 0
      320 SETTABLEKS                       R23 R22 K17 ["BackgroundTransparency"]
      322 CALL                             R20 2 1
      323 MOVE                             R21 R2
      324 LOADK                            R22 K97 ["::UICorner"]
      325 DUPTABLE                         R23 K99 [{"CornerRadius"}]
      326 GETIMPORT                        R24 K73 [UDim.new]
      328 LOADN                            R25 0
      329 LOADN                            R26 3
      330 CALL                             R24 2 1
      331 SETTABLEKS                       R24 R23 K98 ["CornerRadius"]
      333 CALL                             R21 2 -1
      334 SETLIST                          R19 R20 -1 [1]
      336 CALL                             R16 3 1
      337 MOVE                             R17 R2
      338 LOADK                            R18 K100 [".DropdownItem"]
      339 DUPTABLE                         R19 K80 [{"Size", "BackgroundColor3", "AutomaticSize"}]
      340 GETIMPORT                        R20 K82 [UDim2.fromOffset]
      342 LOADN                            R21 200
      343 LOADN                            R22 66
      344 CALL                             R20 2 1
      345 SETTABLEKS                       R20 R19 K15 ["Size"]
      347 LOADK                            R20 K83 ["$ForegroundMain"]
      348 SETTABLEKS                       R20 R19 K16 ["BackgroundColor3"]
      350 GETIMPORT                        R20 K85 [Enum.AutomaticSize.XY]
      352 SETTABLEKS                       R20 R19 K18 ["AutomaticSize"]
      354 NEWTABLE                         R20 0 1
      356 MOVE                             R21 R2
      357 LOADK                            R22 K35 [":hover"]
      358 DUPTABLE                         R23 K90 [{"BackgroundColor3"}]
      359 LOADK                            R24 K66 ["$ForegroundContrast"]
      360 SETTABLEKS                       R24 R23 K16 ["BackgroundColor3"]
      362 CALL                             R21 2 -1
      363 SETLIST                          R20 R21 -1 [1]
      365 CALL                             R17 3 1
      366 MOVE                             R18 R2
      367 LOADK                            R19 K101 [".AvatarSettings-LeftTextPrimary"]
      368 DUPTABLE                         R20 K102 [{"TextColor3", "TextXAlignment"}]
      369 LOADK                            R21 K103 ["$TextPrimary"]
      370 SETTABLEKS                       R21 R20 K36 ["TextColor3"]
      372 GETIMPORT                        R21 K34 [Enum.TextXAlignment.Left]
      374 SETTABLEKS                       R21 R20 K29 ["TextXAlignment"]
      376 CALL                             R18 2 1
      377 MOVE                             R19 R2
      378 LOADK                            R20 K104 [".AvatarSettings-SettingsPage"]
      379 DUPTABLE                         R21 K80 [{"Size", "BackgroundColor3", "AutomaticSize"}]
      380 GETIMPORT                        R22 K22 [UDim2.fromScale]
      382 LOADN                            R23 1
      383 LOADN                            R24 0
      384 CALL                             R22 2 1
      385 SETTABLEKS                       R22 R21 K15 ["Size"]
      387 LOADK                            R22 K83 ["$ForegroundMain"]
      388 SETTABLEKS                       R22 R21 K16 ["BackgroundColor3"]
      390 GETIMPORT                        R22 K85 [Enum.AutomaticSize.XY]
      392 SETTABLEKS                       R22 R21 K18 ["AutomaticSize"]
      394 NEWTABLE                         R22 0 1
      396 MOVE                             R23 R2
      397 LOADK                            R24 K105 ["::UIListLayout"]
      398 DUPTABLE                         R25 K107 [{"Padding"}]
      399 GETIMPORT                        R26 K73 [UDim.new]
      401 LOADN                            R27 0
      402 LOADN                            R28 1
      403 CALL                             R26 2 1
      404 SETTABLEKS                       R26 R25 K106 ["Padding"]
      406 CALL                             R23 2 -1
      407 SETLIST                          R22 R23 -1 [1]
      409 CALL                             R19 3 1
      410 MOVE                             R20 R2
      411 LOADK                            R21 K108 [".AvatarSettings-SettingsContent"]
      412 DUPTABLE                         R22 K90 [{"BackgroundColor3"}]
      413 LOADK                            R23 K83 ["$ForegroundMain"]
      414 SETTABLEKS                       R23 R22 K16 ["BackgroundColor3"]
      416 NEWTABLE                         R23 0 1
      418 MOVE                             R24 R2
      419 LOADK                            R25 K68 ["::UIPadding"]
      420 DUPTABLE                         R26 K109 [{"PaddingTop"}]
      421 GETIMPORT                        R27 K73 [UDim.new]
      423 LOADN                            R28 0
      424 LOADN                            R29 1
      425 CALL                             R27 2 1
      426 SETTABLEKS                       R27 R26 K69 ["PaddingTop"]
      428 CALL                             R24 2 -1
      429 SETLIST                          R23 R24 -1 [1]
      431 CALL                             R20 3 1
      432 MOVE                             R21 R2
      433 LOADK                            R22 K110 [".Component-ExpandableSection"]
      434 DUPTABLE                         R23 K111 [{"BackgroundTransparency", "Size", "AutomaticSize"}]
      435 LOADN                            R24 1
      436 SETTABLEKS                       R24 R23 K17 ["BackgroundTransparency"]
      438 GETIMPORT                        R24 K65 [UDim2.new]
      440 LOADN                            R25 1
      441 LOADN                            R26 0
      442 LOADN                            R27 0
      443 LOADN                            R28 0
      444 CALL                             R24 4 1
      445 SETTABLEKS                       R24 R23 K15 ["Size"]
      447 GETIMPORT                        R24 K113 [Enum.AutomaticSize.Y]
      449 SETTABLEKS                       R24 R23 K18 ["AutomaticSize"]
      451 CALL                             R21 2 1
      452 SETLIST                          R5 R6 16 [1]
      454 MOVE                             R6 R2
      455 LOADK                            R7 K114 [".Component-ExpandableSection-Header"]
      456 DUPTABLE                         R8 K115 [{"BorderColor3", "BackgroundColor3", "Size", "BackgroundTransparency", "BorderSizePixel"}]
      457 LOADK                            R9 K67 ["$Divider"]
      458 SETTABLEKS                       R9 R8 K62 ["BorderColor3"]
      460 LOADK                            R9 K66 ["$ForegroundContrast"]
      461 SETTABLEKS                       R9 R8 K16 ["BackgroundColor3"]
      463 GETIMPORT                        R9 K65 [UDim2.new]
      465 LOADN                            R10 1
      466 LOADN                            R11 0
      467 LOADN                            R12 0
      468 LOADN                            R13 24
      469 CALL                             R9 4 1
      470 SETTABLEKS                       R9 R8 K15 ["Size"]
      472 LOADN                            R9 0
      473 SETTABLEKS                       R9 R8 K17 ["BackgroundTransparency"]
      475 LOADN                            R9 1
      476 SETTABLEKS                       R9 R8 K30 ["BorderSizePixel"]
      478 NEWTABLE                         R9 0 2
      480 MOVE                             R10 R2
      481 LOADK                            R11 K68 ["::UIPadding"]
      482 DUPTABLE                         R12 K117 [{"PaddingLeft"}]
      483 GETIMPORT                        R13 K73 [UDim.new]
      485 LOADN                            R14 0
      486 LOADN                            R15 5
      487 CALL                             R13 2 1
      488 SETTABLEKS                       R13 R12 K116 ["PaddingLeft"]
      490 CALL                             R10 2 1
      491 MOVE                             R11 R2
      492 LOADK                            R12 K105 ["::UIListLayout"]
      493 DUPTABLE                         R13 K107 [{"Padding"}]
      494 GETIMPORT                        R14 K73 [UDim.new]
      496 LOADN                            R15 0
      497 LOADN                            R16 10
      498 CALL                             R14 2 1
      499 SETTABLEKS                       R14 R13 K106 ["Padding"]
      501 CALL                             R11 2 -1
      502 SETLIST                          R9 R10 -1 [1]
      504 CALL                             R6 3 1
      505 MOVE                             R7 R2
      506 LOADK                            R8 K118 [".Component-ExpandableSection-Content"]
      507 DUPTABLE                         R9 K120 [{"AutomaticSize", "Position", "Size"}]
      508 GETIMPORT                        R10 K85 [Enum.AutomaticSize.XY]
      510 SETTABLEKS                       R10 R9 K18 ["AutomaticSize"]
      512 GETIMPORT                        R10 K82 [UDim2.fromOffset]
      514 LOADN                            R11 0
      515 LOADN                            R12 24
      516 CALL                             R10 2 1
      517 SETTABLEKS                       R10 R9 K119 ["Position"]
      519 GETIMPORT                        R10 K22 [UDim2.fromScale]
      521 LOADN                            R11 1
      522 LOADN                            R12 0
      523 CALL                             R10 2 1
      524 SETTABLEKS                       R10 R9 K15 ["Size"]
      526 NEWTABLE                         R10 0 2
      528 MOVE                             R11 R2
      529 LOADK                            R12 K68 ["::UIPadding"]
      530 DUPTABLE                         R13 K121 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
      531 GETIMPORT                        R14 K73 [UDim.new]
      533 LOADN                            R15 0
      534 LOADN                            R16 24
      535 CALL                             R14 2 1
      536 SETTABLEKS                       R14 R13 K116 ["PaddingLeft"]
      538 GETIMPORT                        R14 K73 [UDim.new]
      540 LOADN                            R15 0
      541 LOADN                            R16 16
      542 CALL                             R14 2 1
      543 SETTABLEKS                       R14 R13 K69 ["PaddingTop"]
      545 GETIMPORT                        R14 K73 [UDim.new]
      547 LOADN                            R15 0
      548 LOADN                            R16 16
      549 CALL                             R14 2 1
      550 SETTABLEKS                       R14 R13 K70 ["PaddingBottom"]
      552 CALL                             R11 2 1
      553 MOVE                             R12 R2
      554 LOADK                            R13 K105 ["::UIListLayout"]
      555 DUPTABLE                         R14 K107 [{"Padding"}]
      556 GETIMPORT                        R15 K73 [UDim.new]
      558 LOADN                            R16 0
      559 LOADN                            R17 8
      560 CALL                             R15 2 1
      561 SETTABLEKS                       R15 R14 K106 ["Padding"]
      563 CALL                             R12 2 -1
      564 SETLIST                          R10 R11 -1 [1]
      566 CALL                             R7 3 1
      567 MOVE                             R8 R2
      568 LOADK                            R9 K122 [".Component-ExpandableSection-Arrow"]
      569 DUPTABLE                         R10 K124 [{"Image", "ImageRectSize", "Size"}]
      570 LOADK                            R11 K125 ["$ArrowRightImage"]
      571 SETTABLEKS                       R11 R10 K45 ["Image"]
      573 GETIMPORT                        R11 K78 [Vector2.new]
      575 LOADN                            R12 16
      576 LOADN                            R13 16
      577 CALL                             R11 2 1
      578 SETTABLEKS                       R11 R10 K123 ["ImageRectSize"]
      580 GETIMPORT                        R11 K82 [UDim2.fromOffset]
      582 LOADN                            R12 16
      583 LOADN                            R13 16
      584 CALL                             R11 2 1
      585 SETTABLEKS                       R11 R10 K15 ["Size"]
      587 NEWTABLE                         R11 0 2
      589 MOVE                             R12 R2
      590 LOADK                            R13 K57 [".Expanded"]
      591 DUPTABLE                         R14 K46 [{"Image"}]
      592 LOADK                            R15 K126 ["$ArrowDownImage"]
      593 SETTABLEKS                       R15 R14 K45 ["Image"]
      595 CALL                             R12 2 1
      596 MOVE                             R13 R2
      597 LOADK                            R14 K127 [".Invisible"]
      598 DUPTABLE                         R15 K129 [{"BackgroundTransparency", "ImageTransparency"}]
      599 LOADN                            R16 1
      600 SETTABLEKS                       R16 R15 K17 ["BackgroundTransparency"]
      602 LOADN                            R16 1
      603 SETTABLEKS                       R16 R15 K128 ["ImageTransparency"]
      605 CALL                             R13 2 -1
      606 SETLIST                          R11 R12 -1 [1]
      608 CALL                             R8 3 1
      609 MOVE                             R9 R2
      610 LOADK                            R10 K130 [".Component-WarningIcon"]
      611 DUPTABLE                         R11 K132 [{"BackgroundTransparency", "Image", "Size", "SizeConstraint"}]
      612 LOADN                            R12 1
      613 SETTABLEKS                       R12 R11 K17 ["BackgroundTransparency"]
      615 LOADK                            R12 K133 ["$WarningLargeImage"]
      616 SETTABLEKS                       R12 R11 K45 ["Image"]
      618 GETIMPORT                        R12 K22 [UDim2.fromScale]
      620 LOADK                            R13 K134 [0.8]
      621 LOADK                            R14 K134 [0.8]
      622 CALL                             R12 2 1
      623 SETTABLEKS                       R12 R11 K15 ["Size"]
      625 GETIMPORT                        R12 K136 [Enum.SizeConstraint.RelativeYY]
      627 SETTABLEKS                       R12 R11 K131 ["SizeConstraint"]
      629 NEWTABLE                         R12 0 1
      631 MOVE                             R13 R2
      632 LOADK                            R14 K137 [".AssetIdSelector"]
      633 DUPTABLE                         R15 K138 [{"Size"}]
      634 GETIMPORT                        R16 K82 [UDim2.fromOffset]
      636 LOADN                            R17 20
      637 LOADN                            R18 20
      638 CALL                             R16 2 1
      639 SETTABLEKS                       R16 R15 K15 ["Size"]
      641 CALL                             R13 2 -1
      642 SETLIST                          R12 R13 -1 [1]
      644 CALL                             R9 3 1
      645 MOVE                             R10 R2
      646 LOADK                            R11 K139 [".Component-HoverTextBox"]
      647 DUPTABLE                         R12 K142 [{"TextWrapped", "TextXAlignment", "TextYAlignment", "AutomaticSize", "BackgroundColor3"}]
      648 LOADB                            R13 1
      649 SETTABLEKS                       R13 R12 K140 ["TextWrapped"]
      651 GETIMPORT                        R13 K144 [Enum.TextXAlignment.Center]
      653 SETTABLEKS                       R13 R12 K29 ["TextXAlignment"]
      655 GETIMPORT                        R13 K145 [Enum.TextYAlignment.Center]
      657 SETTABLEKS                       R13 R12 K141 ["TextYAlignment"]
      659 GETIMPORT                        R13 K85 [Enum.AutomaticSize.XY]
      661 SETTABLEKS                       R13 R12 K18 ["AutomaticSize"]
      663 LOADK                            R13 K146 ["$ActionEnabled"]
      664 SETTABLEKS                       R13 R12 K16 ["BackgroundColor3"]
      666 NEWTABLE                         R13 0 2
      668 MOVE                             R14 R2
      669 LOADK                            R15 K97 ["::UICorner"]
      670 CALL                             R14 1 1
      671 MOVE                             R15 R2
      672 LOADK                            R16 K68 ["::UIPadding"]
      673 DUPTABLE                         R17 K148 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      674 GETIMPORT                        R18 K73 [UDim.new]
      676 LOADN                            R19 0
      677 LOADN                            R20 4
      678 CALL                             R18 2 1
      679 SETTABLEKS                       R18 R17 K70 ["PaddingBottom"]
      681 GETIMPORT                        R18 K73 [UDim.new]
      683 LOADN                            R19 0
      684 LOADN                            R20 8
      685 CALL                             R18 2 1
      686 SETTABLEKS                       R18 R17 K116 ["PaddingLeft"]
      688 GETIMPORT                        R18 K73 [UDim.new]
      690 LOADN                            R19 0
      691 LOADN                            R20 8
      692 CALL                             R18 2 1
      693 SETTABLEKS                       R18 R17 K147 ["PaddingRight"]
      695 GETIMPORT                        R18 K73 [UDim.new]
      697 LOADN                            R19 0
      698 LOADN                            R20 4
      699 CALL                             R18 2 1
      700 SETTABLEKS                       R18 R17 K69 ["PaddingTop"]
      702 CALL                             R15 2 -1
      703 SETLIST                          R13 R14 -1 [1]
      705 CALL                             R10 3 1
      706 MOVE                             R11 R2
      707 LOADK                            R12 K149 [".GenericModeSelector-Subtext"]
      708 DUPTABLE                         R13 K151 [{"TextXAlignment", "TextYAlignment", "TextWrapped", "AutomaticSize", "TextColor3", "TextSize"}]
      709 GETIMPORT                        R14 K34 [Enum.TextXAlignment.Left]
      711 SETTABLEKS                       R14 R13 K29 ["TextXAlignment"]
      713 GETIMPORT                        R14 K153 [Enum.TextYAlignment.Top]
      715 SETTABLEKS                       R14 R13 K141 ["TextYAlignment"]
      717 LOADB                            R14 1
      718 SETTABLEKS                       R14 R13 K140 ["TextWrapped"]
      720 GETIMPORT                        R14 K113 [Enum.AutomaticSize.Y]
      722 SETTABLEKS                       R14 R13 K18 ["AutomaticSize"]
      724 LOADK                            R14 K43 ["$TextSecondary"]
      725 SETTABLEKS                       R14 R13 K36 ["TextColor3"]
      727 LOADN                            R14 18
      728 SETTABLEKS                       R14 R13 K150 ["TextSize"]
      730 CALL                             R11 2 1
      731 MOVE                             R12 R2
      732 LOADK                            R13 K154 [".RadioButtonContainer >> TextLabel #DescriptionTextLabel"]
      733 DUPTABLE                         R14 K155 [{"TextSize", "TextColor3"}]
      734 LOADN                            R15 16
      735 SETTABLEKS                       R15 R14 K150 ["TextSize"]
      737 LOADK                            R15 K43 ["$TextSecondary"]
      738 SETTABLEKS                       R15 R14 K36 ["TextColor3"]
      740 CALL                             R12 2 1
      741 MOVE                             R13 R2
      742 LOADK                            R14 K156 [".PresetHoverTooltipDivider"]
      743 DUPTABLE                         R15 K157 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
      744 GETIMPORT                        R16 K65 [UDim2.new]
      746 LOADN                            R17 1
      747 LOADN                            R18 0
      748 LOADN                            R19 0
      749 LOADN                            R20 1
      750 CALL                             R16 4 1
      751 SETTABLEKS                       R16 R15 K15 ["Size"]
      753 LOADN                            R16 0
      754 SETTABLEKS                       R16 R15 K17 ["BackgroundTransparency"]
      756 LOADK                            R16 K103 ["$TextPrimary"]
      757 SETTABLEKS                       R16 R15 K16 ["BackgroundColor3"]
      759 CALL                             R13 2 1
      760 MOVE                             R14 R2
      761 LOADK                            R15 K158 [".Separator"]
      762 DUPTABLE                         R16 K157 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
      763 GETIMPORT                        R17 K65 [UDim2.new]
      765 LOADN                            R18 1
      766 LOADN                            R19 0
      767 LOADN                            R20 0
      768 LOADN                            R21 1
      769 CALL                             R17 4 1
      770 SETTABLEKS                       R17 R16 K15 ["Size"]
      772 LOADN                            R17 0
      773 SETTABLEKS                       R17 R16 K17 ["BackgroundTransparency"]
      775 LOADK                            R17 K159 ["$OtherDivider"]
      776 SETTABLEKS                       R17 R16 K16 ["BackgroundColor3"]
      778 CALL                             R14 2 1
      779 MOVE                             R15 R2
      780 LOADK                            R16 K160 [".PresetHoverTooltip"]
      781 NEWTABLE                         R17 0 0
      783 NEWTABLE                         R18 0 2
      785 MOVE                             R19 R2
      786 LOADK                            R20 K161 [">> Frame #ContentPane"]
      787 DUPTABLE                         R21 K162 [{"AutomaticSize"}]
      788 GETIMPORT                        R22 K85 [Enum.AutomaticSize.XY]
      790 SETTABLEKS                       R22 R21 K18 ["AutomaticSize"]
      792 CALL                             R19 2 1
      793 MOVE                             R20 R2
      794 LOADK                            R21 K163 [">> ImageLabel #DropShadow"]
      795 DUPTABLE                         R22 K162 [{"AutomaticSize"}]
      796 GETIMPORT                        R23 K85 [Enum.AutomaticSize.XY]
      798 SETTABLEKS                       R23 R22 K18 ["AutomaticSize"]
      800 CALL                             R20 2 -1
      801 SETLIST                          R18 R19 -1 [1]
      803 CALL                             R15 3 1
      804 MOVE                             R16 R2
      805 LOADK                            R17 K164 [".PresetHoverTooltipCheckImage"]
      806 DUPTABLE                         R18 K46 [{"Image"}]
      807 LOADK                            R19 K165 ["$PresetTooltipCheckImage"]
      808 SETTABLEKS                       R19 R18 K45 ["Image"]
      810 CALL                             R16 2 1
      811 MOVE                             R17 R2
      812 LOADK                            R18 K166 [".PresetHoverTooltipXImage"]
      813 DUPTABLE                         R19 K46 [{"Image"}]
      814 LOADK                            R20 K167 ["$PresetTooltipXImage"]
      815 SETTABLEKS                       R20 R19 K45 ["Image"]
      817 CALL                             R17 2 1
      818 MOVE                             R18 R2
      819 LOADK                            R19 K168 [".GeneralSettingsGameplayDescriptionImage"]
      820 DUPTABLE                         R20 K46 [{"Image"}]
      821 LOADK                            R21 K169 ["$PresetInfoImage"]
      822 SETTABLEKS                       R21 R20 K45 ["Image"]
      824 CALL                             R18 2 1
      825 MOVE                             R19 R2
      826 LOADK                            R20 K170 [".ColumnSpacing-Standard ::UIListLayout"]
      827 DUPTABLE                         R21 K107 [{"Padding"}]
      828 GETIMPORT                        R22 K73 [UDim.new]
      830 LOADN                            R23 0
      831 LOADN                            R24 8
      832 CALL                             R22 2 1
      833 SETTABLEKS                       R22 R21 K106 ["Padding"]
      835 CALL                             R19 2 1
      836 MOVE                             R20 R2
      837 LOADK                            R21 K171 [".VerticalFlex-Fill ::UIListLayout"]
      838 DUPTABLE                         R22 K173 [{"VerficalFlex"}]
      839 GETIMPORT                        R23 K176 [Enum.UIFlexAlignment.Fill]
      841 SETTABLEKS                       R23 R22 K172 ["VerficalFlex"]
      843 CALL                             R20 2 1
      844 MOVE                             R21 R2
      845 LOADK                            R22 K177 [".PublishBar"]
      846 DUPTABLE                         R23 K178 [{"BackgroundTransparency"}]
      847 LOADN                            R24 1
      848 SETTABLEKS                       R24 R23 K17 ["BackgroundTransparency"]
      850 NEWTABLE                         R24 0 3
      852 MOVE                             R25 R2
      853 LOADK                            R26 K86 ["::UIStroke"]
      854 DUPTABLE                         R27 K179 [{"Color"}]
      855 LOADK                            R28 K67 ["$Divider"]
      856 SETTABLEKS                       R28 R27 K87 ["Color"]
      858 CALL                             R25 2 1
      859 MOVE                             R26 R2
      860 LOADK                            R27 K68 ["::UIPadding"]
      861 DUPTABLE                         R28 K180 [{"PaddingRight"}]
      862 GETIMPORT                        R29 K73 [UDim.new]
      864 LOADN                            R30 0
      865 LOADN                            R31 8
      866 CALL                             R29 2 1
      867 SETTABLEKS                       R29 R28 K147 ["PaddingRight"]
      869 CALL                             R26 2 1
      870 MOVE                             R27 R2
      871 LOADK                            R28 K105 ["::UIListLayout"]
      872 DUPTABLE                         R29 K107 [{"Padding"}]
      873 GETIMPORT                        R30 K73 [UDim.new]
      875 LOADN                            R31 0
      876 LOADN                            R32 8
      877 CALL                             R30 2 1
      878 SETTABLEKS                       R30 R29 K106 ["Padding"]
      880 CALL                             R27 2 -1
      881 SETLIST                          R24 R25 -1 [1]
      883 CALL                             R21 3 1
      884 SETLIST                          R5 R6 16 [17]
      886 MOVE                             R6 R2
      887 LOADK                            R7 K181 [".TitledComponentLabel"]
      888 DUPTABLE                         R8 K183 [{"FontFace"}]
      889 GETIMPORT                        R9 K185 [Font.new]
      891 LOADK                            R10 K186 ["rbxasset://fonts/families/SourceSansPro.json"]
      892 GETIMPORT                        R11 K189 [Enum.FontWeight.Regular]
      894 GETIMPORT                        R12 K192 [Enum.FontStyle.Normal]
      896 CALL                             R9 3 1
      897 SETTABLEKS                       R9 R8 K182 ["FontFace"]
      899 CALL                             R6 2 1
      900 MOVE                             R7 R2
      901 LOADK                            R8 K193 [".PresetImage"]
      902 NEWTABLE                         R9 0 0
      904 NEWTABLE                         R10 0 3
      906 MOVE                             R11 R2
      907 LOADK                            R12 K68 ["::UIPadding"]
      908 DUPTABLE                         R13 K71 [{"PaddingTop", "PaddingBottom"}]
      909 GETIMPORT                        R14 K73 [UDim.new]
      911 LOADN                            R15 0
      912 LOADN                            R16 8
      913 CALL                             R14 2 1
      914 SETTABLEKS                       R14 R13 K69 ["PaddingTop"]
      916 GETIMPORT                        R14 K73 [UDim.new]
      918 LOADN                            R15 0
      919 LOADN                            R16 8
      920 CALL                             R14 2 1
      921 SETTABLEKS                       R14 R13 K70 ["PaddingBottom"]
      923 CALL                             R11 2 1
      924 MOVE                             R12 R2
      925 LOADK                            R13 K194 [".PlayerChoice"]
      926 DUPTABLE                         R14 K46 [{"Image"}]
      927 LOADK                            R15 K195 ["$PlayerChoicePresetImage"]
      928 SETTABLEKS                       R15 R14 K45 ["Image"]
      930 CALL                             R12 2 1
      931 MOVE                             R13 R2
      932 LOADK                            R14 K196 [".Consistent"]
      933 DUPTABLE                         R15 K46 [{"Image"}]
      934 LOADK                            R16 K197 ["$ConsistentPresetImage"]
      935 SETTABLEKS                       R16 R15 K45 ["Image"]
      937 CALL                             R13 2 -1
      938 SETLIST                          R10 R11 -1 [1]
      940 CALL                             R7 3 1
      941 MOVE                             R8 R2
      942 LOADK                            R9 K198 [".HoverTooltipPresetImage"]
      943 NEWTABLE                         R10 0 0
      945 NEWTABLE                         R11 0 2
      947 MOVE                             R12 R2
      948 LOADK                            R13 K194 [".PlayerChoice"]
      949 DUPTABLE                         R14 K46 [{"Image"}]
      950 LOADK                            R15 K195 ["$PlayerChoicePresetImage"]
      951 SETTABLEKS                       R15 R14 K45 ["Image"]
      953 CALL                             R12 2 1
      954 MOVE                             R13 R2
      955 LOADK                            R14 K196 [".Consistent"]
      956 DUPTABLE                         R15 K46 [{"Image"}]
      957 LOADK                            R16 K197 ["$ConsistentPresetImage"]
      958 SETTABLEKS                       R16 R15 K45 ["Image"]
      960 CALL                             R13 2 -1
      961 SETLIST                          R11 R12 -1 [1]
      963 CALL                             R8 3 1
      964 MOVE                             R9 R2
      965 LOADK                            R10 K199 [".SaveToRobloxButton"]
      966 NEWTABLE                         R11 0 0
      968 NEWTABLE                         R12 0 1
      970 MOVE                             R13 R2
      971 LOADK                            R14 K200 [">> TextLabel"]
      972 DUPTABLE                         R15 K201 [{"TextSize", "FontFace"}]
      973 LOADN                            R16 20
      974 SETTABLEKS                       R16 R15 K150 ["TextSize"]
      976 GETIMPORT                        R16 K185 [Font.new]
      978 LOADK                            R17 K186 ["rbxasset://fonts/families/SourceSansPro.json"]
      979 GETIMPORT                        R18 K203 [Enum.FontWeight.Bold]
      981 GETIMPORT                        R19 K192 [Enum.FontStyle.Normal]
      983 CALL                             R16 3 1
      984 SETTABLEKS                       R16 R15 K182 ["FontFace"]
      986 NEWTABLE                         R16 0 1
      988 MOVE                             R17 R2
      989 LOADK                            R18 K204 ["UIPadding"]
      990 DUPTABLE                         R19 K71 [{"PaddingTop", "PaddingBottom"}]
      991 GETIMPORT                        R20 K73 [UDim.new]
      993 LOADN                            R21 0
      994 LOADN                            R22 4
      995 CALL                             R20 2 1
      996 SETTABLEKS                       R20 R19 K69 ["PaddingTop"]
      998 GETIMPORT                        R20 K73 [UDim.new]
     1000 LOADN                            R21 0
     1001 LOADN                            R22 4
     1002 CALL                             R20 2 1
     1003 SETTABLEKS                       R20 R19 K70 ["PaddingBottom"]
     1005 CALL                             R17 2 -1
     1006 SETLIST                          R16 R17 -1 [1]
     1008 CALL                             R13 3 -1
     1009 SETLIST                          R12 R13 -1 [1]
     1011 CALL                             R9 3 1
     1012 MOVE                             R10 R2
     1013 LOADK                            R11 K205 ["TextLabel"]
     1014 NEWTABLE                         R12 0 0
     1016 NEWTABLE                         R13 0 1
     1018 MOVE                             R14 R2
     1019 LOADK                            R15 K206 [".Bold"]
     1020 DUPTABLE                         R16 K183 [{"FontFace"}]
     1021 GETIMPORT                        R17 K185 [Font.new]
     1023 LOADK                            R18 K186 ["rbxasset://fonts/families/SourceSansPro.json"]
     1024 GETIMPORT                        R19 K203 [Enum.FontWeight.Bold]
     1026 GETIMPORT                        R20 K192 [Enum.FontStyle.Normal]
     1028 CALL                             R17 3 1
     1029 SETTABLEKS                       R17 R16 K182 ["FontFace"]
     1031 CALL                             R14 2 -1
     1032 SETLIST                          R13 R14 -1 [1]
     1034 CALL                             R10 3 1
     1035 MOVE                             R11 R2
     1036 LOADK                            R12 K207 ["TextButton"]
     1037 DUPTABLE                         R13 K208 [{"FontFace", "TextSize"}]
     1038 GETIMPORT                        R14 K185 [Font.new]
     1040 LOADK                            R15 K186 ["rbxasset://fonts/families/SourceSansPro.json"]
     1041 GETIMPORT                        R16 K210 [Enum.FontWeight.Medium]
     1043 GETIMPORT                        R17 K192 [Enum.FontStyle.Normal]
     1045 CALL                             R14 3 1
     1046 SETTABLEKS                       R14 R13 K182 ["FontFace"]
     1048 LOADN                            R14 18
     1049 SETTABLEKS                       R14 R13 K150 ["TextSize"]
     1051 CALL                             R11 2 1
     1052 MOVE                             R12 R2
     1053 LOADK                            R13 K211 ["UIListLayout"]
     1054 DUPTABLE                         R14 K213 [{"SortOrder"}]
     1055 GETIMPORT                        R15 K215 [Enum.SortOrder.LayoutOrder]
     1057 SETTABLEKS                       R15 R14 K212 ["SortOrder"]
     1059 CALL                             R12 2 -1
     1060 SETLIST                          R5 R6 -1 [33]
     1062 NEWTABLE                         R6 0 0
     1064 MOVE                             R7 R3
     1065 LOADK                            R8 K2 ["AvatarSettings"]
     1066 MOVE                             R9 R5
     1067 MOVE                             R10 R6
     1068 CALL                             R7 3 -1
     1069 RETURN                           R7 -1
