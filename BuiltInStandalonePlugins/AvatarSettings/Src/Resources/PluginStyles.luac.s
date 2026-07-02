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
       35 DUPTABLE                         R8 K21 [{["Size"], ["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0, ["AutomaticSize"]}]
       36 GETIMPORT                        R9 K24 [UDim2.fromScale]
       38 LOADN                            R10 0
       39 LOADN                            R11 1
       40 CALL                             R9 2 1
       41 SETTABLEKS                       R9 R8 K15 ["Size"]
       43 GETIMPORT                        R9 K27 [Enum.AutomaticSize.X]
       45 SETTABLEKS                       R9 R8 K20 ["AutomaticSize"]
       47 CALL                             R6 2 1
       48 MOVE                             R7 R2
       49 LOADK                            R8 K28 [".Component-CategoryListItem"]
       50 NEWTABLE                         R9 0 0
       52 NEWTABLE                         R10 0 1
       54 MOVE                             R11 R2
       55 LOADK                            R12 K29 [">> TextButton"]
       56 DUPTABLE                         R13 K33 [{["TextXAlignment"], ["AutomaticSize"], ["BorderSizePixel"] = 0, ["AutoButtonColor"]}]
       57 GETIMPORT                        R14 K35 [Enum.TextXAlignment.Left]
       59 SETTABLEKS                       R14 R13 K30 ["TextXAlignment"]
       61 GETIMPORT                        R14 K27 [Enum.AutomaticSize.X]
       63 SETTABLEKS                       R14 R13 K20 ["AutomaticSize"]
       65 MOVE                             R15 R4
       66 CALL                             R15 0 1
       67 JUMPIFNOT                        R15 ; [+2]
       68 LOADB                            R14 0
       69 JUMP                             ; [+1]
       70 LOADB                            R14 1
       71 SETTABLEKS                       R14 R13 K32 ["AutoButtonColor"]
       73 NEWTABLE                         R14 0 4
       75 MOVE                             R15 R2
       76 LOADK                            R16 K36 [":hover"]
       77 DUPTABLE                         R17 K38 [{"BackgroundColor3", "TextColor3"}]
       78 MOVE                             R19 R4
       79 CALL                             R19 0 1
       80 JUMPIFNOT                        R19 ; [+2]
       81 LOADNIL                          R18
       82 JUMP                             ; [+1]
       83 LOADK                            R18 K39 ["$ActionSelected"]
       84 SETTABLEKS                       R18 R17 K16 ["BackgroundColor3"]
       86 MOVE                             R19 R4
       87 CALL                             R19 0 1
       88 JUMPIFNOT                        R19 ; [+2]
       89 LOADNIL                          R18
       90 JUMP                             ; [+1]
       91 LOADK                            R18 K40 ["$CategoryListTextContrast"]
       92 SETTABLEKS                       R18 R17 K37 ["TextColor3"]
       94 CALL                             R15 2 1
       95 MOVE                             R16 R2
       96 LOADK                            R17 K41 [":press"]
       97 DUPTABLE                         R18 K38 [{"BackgroundColor3", "TextColor3"}]
       98 MOVE                             R20 R4
       99 CALL                             R20 0 1
      100 JUMPIFNOT                        R20 ; [+2]
      101 LOADNIL                          R19
      102 JUMP                             ; [+1]
      103 LOADK                            R19 K39 ["$ActionSelected"]
      104 SETTABLEKS                       R19 R18 K16 ["BackgroundColor3"]
      106 MOVE                             R20 R4
      107 CALL                             R20 0 1
      108 JUMPIFNOT                        R20 ; [+2]
      109 LOADNIL                          R19
      110 JUMP                             ; [+1]
      111 LOADK                            R19 K40 ["$CategoryListTextContrast"]
      112 SETTABLEKS                       R19 R18 K37 ["TextColor3"]
      114 CALL                             R16 2 1
      115 MOVE                             R17 R2
      116 LOADK                            R18 K42 [".Selected"]
      117 DUPTABLE                         R19 K43 [{["BackgroundColor3"] = "$ActionSelected", ["TextColor3"] = "$CategoryListTextContrast"}]
      118 CALL                             R17 2 1
      119 MOVE                             R18 R2
      120 LOADK                            R19 K44 [".Unselected"]
      121 DUPTABLE                         R20 K46 [{["BackgroundColor3"] = "$BackgroundPaper", ["TextColor3"] = "$TextSecondary"}]
      122 CALL                             R18 2 -1
      123 SETLIST                          R14 R15 -1 [1]
      125 CALL                             R11 3 -1
      126 SETLIST                          R10 R11 -1 [1]
      128 CALL                             R7 3 1
      129 MOVE                             R8 R2
      130 LOADK                            R9 K47 [".GeneralCategoryImage"]
      131 DUPTABLE                         R10 K50 [{["Image"] = "$GeneralCategoryImage"}]
      132 CALL                             R8 2 1
      133 MOVE                             R9 R2
      134 LOADK                            R10 K51 [".BodyCategoryImage"]
      135 DUPTABLE                         R11 K53 [{["Image"] = "$BodyCategoryImage"}]
      136 CALL                             R9 2 1
      137 MOVE                             R10 R2
      138 LOADK                            R11 K54 [".MovementCategoryImage"]
      139 DUPTABLE                         R12 K56 [{["Image"] = "$MovementCategoryImage"}]
      140 CALL                             R10 2 1
      141 MOVE                             R11 R2
      142 LOADK                            R12 K57 [".AccessoriesCategoryImage"]
      143 DUPTABLE                         R13 K59 [{["Image"] = "$AccessoriesCategoryImage"}]
      144 CALL                             R11 2 1
      145 MOVE                             R12 R2
      146 LOADK                            R13 K60 [".ClothingCategoryImage"]
      147 DUPTABLE                         R14 K62 [{["Image"] = "$ClothingCategoryImage"}]
      148 CALL                             R12 2 1
      149 MOVE                             R13 R2
      150 LOADK                            R14 K63 [".ToggleSidebarExpandImage"]
      151 NEWTABLE                         R15 0 0
      153 NEWTABLE                         R16 0 2
      155 MOVE                             R17 R2
      156 LOADK                            R18 K64 [".Expanded"]
      157 DUPTABLE                         R19 K66 [{["Image"] = "$CollapseSidebarImage"}]
      158 CALL                             R17 2 1
      159 MOVE                             R18 R2
      160 LOADK                            R19 K67 [".Collapsed"]
      161 DUPTABLE                         R20 K69 [{["Image"] = "$ExpandSidebarImage"}]
      162 CALL                             R18 2 -1
      163 SETLIST                          R16 R17 -1 [1]
      165 CALL                             R13 3 1
      166 MOVE                             R14 R2
      167 LOADK                            R15 K70 [".Component-NavigationBar"]
      168 DUPTABLE                         R16 K74 [{["Size"], ["BackgroundColor3"] = "$ForegroundContrast", ["BackgroundTransparency"] = 0, ["BorderColor3"] = "$Divider"}]
      169 GETIMPORT                        R17 K76 [UDim2.new]
      171 LOADN                            R18 1
      172 LOADN                            R19 0
      173 LOADN                            R20 0
      174 LOADN                            R21 44
      175 CALL                             R17 4 1
      176 SETTABLEKS                       R17 R16 K15 ["Size"]
      178 NEWTABLE                         R17 0 2
      180 MOVE                             R18 R2
      181 LOADK                            R19 K77 ["::UIPadding"]
      182 DUPTABLE                         R20 K80 [{"PaddingTop", "PaddingBottom"}]
      183 GETIMPORT                        R21 K82 [UDim.new]
      185 LOADN                            R22 0
      186 LOADN                            R23 8
      187 CALL                             R21 2 1
      188 SETTABLEKS                       R21 R20 K78 ["PaddingTop"]
      190 GETIMPORT                        R21 K82 [UDim.new]
      192 LOADN                            R22 0
      193 LOADN                            R23 8
      194 CALL                             R21 2 1
      195 SETTABLEKS                       R21 R20 K79 ["PaddingBottom"]
      197 CALL                             R18 2 1
      198 MOVE                             R19 R2
      199 LOADK                            R20 K83 ["::UISizeConstraint"]
      200 DUPTABLE                         R21 K85 [{"MinSize"}]
      201 GETIMPORT                        R22 K87 [Vector2.new]
      203 LOADN                            R23 395
      204 LOADN                            R24 0
      205 CALL                             R22 2 1
      206 SETTABLEKS                       R22 R21 K84 ["MinSize"]
      208 CALL                             R19 2 -1
      209 SETLIST                          R17 R18 -1 [1]
      211 CALL                             R14 3 1
      212 MOVE                             R15 R2
      213 LOADK                            R16 K88 [".AvatarTypeDropdownItem"]
      214 DUPTABLE                         R17 K90 [{["Size"], ["BackgroundColor3"] = "$ForegroundMain", ["AutomaticSize"]}]
      215 GETIMPORT                        R18 K92 [UDim2.fromOffset]
      217 LOADN                            R19 200
      218 LOADN                            R20 66
      219 CALL                             R18 2 1
      220 SETTABLEKS                       R18 R17 K15 ["Size"]
      222 GETIMPORT                        R18 K94 [Enum.AutomaticSize.XY]
      224 SETTABLEKS                       R18 R17 K20 ["AutomaticSize"]
      226 NEWTABLE                         R18 0 2
      228 MOVE                             R19 R2
      229 LOADK                            R20 K95 ["::UIStroke"]
      230 DUPTABLE                         R21 K99 [{["Color"] = "$Divider", ["Thickness"] = 1}]
      231 CALL                             R19 2 1
      232 MOVE                             R20 R2
      233 LOADK                            R21 K36 [":hover"]
      234 DUPTABLE                         R22 K100 [{["BackgroundColor3"] = "$ForegroundContrast"}]
      235 CALL                             R20 2 -1
      236 SETLIST                          R18 R19 -1 [1]
      238 CALL                             R15 3 1
      239 MOVE                             R16 R2
      240 LOADK                            R17 K101 [".AvatarTypeDropdownToggleButton"]
      241 DUPTABLE                         R18 K103 [{["Image"] = "$AvatarTypeDropdownToggleImage", ["BackgroundTransparency"] = 1}]
      242 NEWTABLE                         R19 0 2
      244 MOVE                             R20 R2
      245 LOADK                            R21 K104 [".Enabled"]
      246 DUPTABLE                         R22 K106 [{["BackgroundColor3"] = "$ActionActivated", ["BackgroundTransparency"] = 0}]
      247 CALL                             R20 2 1
      248 MOVE                             R21 R2
      249 LOADK                            R22 K107 ["::UICorner"]
      250 DUPTABLE                         R23 K109 [{"CornerRadius"}]
      251 GETIMPORT                        R24 K82 [UDim.new]
      253 LOADN                            R25 0
      254 LOADN                            R26 3
      255 CALL                             R24 2 1
      256 SETTABLEKS                       R24 R23 K108 ["CornerRadius"]
      258 CALL                             R21 2 -1
      259 SETLIST                          R19 R20 -1 [1]
      261 CALL                             R16 3 1
      262 MOVE                             R17 R2
      263 LOADK                            R18 K110 [".DropdownItem"]
      264 DUPTABLE                         R19 K90 [{["Size"], ["BackgroundColor3"] = "$ForegroundMain", ["AutomaticSize"]}]
      265 GETIMPORT                        R20 K92 [UDim2.fromOffset]
      267 LOADN                            R21 200
      268 LOADN                            R22 66
      269 CALL                             R20 2 1
      270 SETTABLEKS                       R20 R19 K15 ["Size"]
      272 GETIMPORT                        R20 K94 [Enum.AutomaticSize.XY]
      274 SETTABLEKS                       R20 R19 K20 ["AutomaticSize"]
      276 NEWTABLE                         R20 0 1
      278 MOVE                             R21 R2
      279 LOADK                            R22 K36 [":hover"]
      280 DUPTABLE                         R23 K100 [{["BackgroundColor3"] = "$ForegroundContrast"}]
      281 CALL                             R21 2 -1
      282 SETLIST                          R20 R21 -1 [1]
      284 CALL                             R17 3 1
      285 MOVE                             R18 R2
      286 LOADK                            R19 K111 [".AvatarSettings-LeftTextPrimary"]
      287 DUPTABLE                         R20 K113 [{["TextColor3"] = "$TextPrimary", ["TextXAlignment"]}]
      288 GETIMPORT                        R21 K35 [Enum.TextXAlignment.Left]
      290 SETTABLEKS                       R21 R20 K30 ["TextXAlignment"]
      292 CALL                             R18 2 1
      293 MOVE                             R19 R2
      294 LOADK                            R20 K114 [".AvatarSettings-SettingsPage"]
      295 DUPTABLE                         R21 K90 [{["Size"], ["BackgroundColor3"] = "$ForegroundMain", ["AutomaticSize"]}]
      296 GETIMPORT                        R22 K24 [UDim2.fromScale]
      298 LOADN                            R23 1
      299 LOADN                            R24 0
      300 CALL                             R22 2 1
      301 SETTABLEKS                       R22 R21 K15 ["Size"]
      303 GETIMPORT                        R22 K94 [Enum.AutomaticSize.XY]
      305 SETTABLEKS                       R22 R21 K20 ["AutomaticSize"]
      307 NEWTABLE                         R22 0 1
      309 MOVE                             R23 R2
      310 LOADK                            R24 K115 ["::UIListLayout"]
      311 DUPTABLE                         R25 K117 [{"Padding"}]
      312 GETIMPORT                        R26 K82 [UDim.new]
      314 LOADN                            R27 0
      315 LOADN                            R28 1
      316 CALL                             R26 2 1
      317 SETTABLEKS                       R26 R25 K116 ["Padding"]
      319 CALL                             R23 2 -1
      320 SETLIST                          R22 R23 -1 [1]
      322 CALL                             R19 3 1
      323 MOVE                             R20 R2
      324 LOADK                            R21 K118 [".AvatarSettings-SettingsContent"]
      325 DUPTABLE                         R22 K119 [{["BackgroundColor3"] = "$ForegroundMain"}]
      326 NEWTABLE                         R23 0 1
      328 MOVE                             R24 R2
      329 LOADK                            R25 K77 ["::UIPadding"]
      330 DUPTABLE                         R26 K120 [{"PaddingTop"}]
      331 GETIMPORT                        R27 K82 [UDim.new]
      333 LOADN                            R28 0
      334 LOADN                            R29 1
      335 CALL                             R27 2 1
      336 SETTABLEKS                       R27 R26 K78 ["PaddingTop"]
      338 CALL                             R24 2 -1
      339 SETLIST                          R23 R24 -1 [1]
      341 CALL                             R20 3 1
      342 MOVE                             R21 R2
      343 LOADK                            R22 K121 [".Component-ExpandableSection"]
      344 DUPTABLE                         R23 K122 [{["BackgroundTransparency"] = 1, ["Size"], ["AutomaticSize"]}]
      345 GETIMPORT                        R24 K76 [UDim2.new]
      347 LOADN                            R25 1
      348 LOADN                            R26 0
      349 LOADN                            R27 0
      350 LOADN                            R28 0
      351 CALL                             R24 4 1
      352 SETTABLEKS                       R24 R23 K15 ["Size"]
      354 GETIMPORT                        R24 K124 [Enum.AutomaticSize.Y]
      356 SETTABLEKS                       R24 R23 K20 ["AutomaticSize"]
      358 CALL                             R21 2 1
      359 SETLIST                          R5 R6 16 [1]
      361 MOVE                             R6 R2
      362 LOADK                            R7 K125 [".Component-ExpandableSection-Header"]
      363 DUPTABLE                         R8 K126 [{["BorderColor3"] = "$Divider", ["BackgroundColor3"] = "$ForegroundContrast", ["Size"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 1}]
      364 GETIMPORT                        R9 K76 [UDim2.new]
      366 LOADN                            R10 1
      367 LOADN                            R11 0
      368 LOADN                            R12 0
      369 LOADN                            R13 24
      370 CALL                             R9 4 1
      371 SETTABLEKS                       R9 R8 K15 ["Size"]
      373 NEWTABLE                         R9 0 2
      375 MOVE                             R10 R2
      376 LOADK                            R11 K77 ["::UIPadding"]
      377 DUPTABLE                         R12 K128 [{"PaddingLeft"}]
      378 GETIMPORT                        R13 K82 [UDim.new]
      380 LOADN                            R14 0
      381 LOADN                            R15 5
      382 CALL                             R13 2 1
      383 SETTABLEKS                       R13 R12 K127 ["PaddingLeft"]
      385 CALL                             R10 2 1
      386 MOVE                             R11 R2
      387 LOADK                            R12 K115 ["::UIListLayout"]
      388 DUPTABLE                         R13 K117 [{"Padding"}]
      389 GETIMPORT                        R14 K82 [UDim.new]
      391 LOADN                            R15 0
      392 LOADN                            R16 10
      393 CALL                             R14 2 1
      394 SETTABLEKS                       R14 R13 K116 ["Padding"]
      396 CALL                             R11 2 -1
      397 SETLIST                          R9 R10 -1 [1]
      399 CALL                             R6 3 1
      400 MOVE                             R7 R2
      401 LOADK                            R8 K129 [".Component-ExpandableSection-Content"]
      402 DUPTABLE                         R9 K131 [{"AutomaticSize", "Position", "Size"}]
      403 GETIMPORT                        R10 K94 [Enum.AutomaticSize.XY]
      405 SETTABLEKS                       R10 R9 K20 ["AutomaticSize"]
      407 GETIMPORT                        R10 K92 [UDim2.fromOffset]
      409 LOADN                            R11 0
      410 LOADN                            R12 24
      411 CALL                             R10 2 1
      412 SETTABLEKS                       R10 R9 K130 ["Position"]
      414 GETIMPORT                        R10 K24 [UDim2.fromScale]
      416 LOADN                            R11 1
      417 LOADN                            R12 0
      418 CALL                             R10 2 1
      419 SETTABLEKS                       R10 R9 K15 ["Size"]
      421 NEWTABLE                         R10 0 2
      423 MOVE                             R11 R2
      424 LOADK                            R12 K77 ["::UIPadding"]
      425 DUPTABLE                         R13 K132 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
      426 GETIMPORT                        R14 K82 [UDim.new]
      428 LOADN                            R15 0
      429 LOADN                            R16 24
      430 CALL                             R14 2 1
      431 SETTABLEKS                       R14 R13 K127 ["PaddingLeft"]
      433 GETIMPORT                        R14 K82 [UDim.new]
      435 LOADN                            R15 0
      436 LOADN                            R16 16
      437 CALL                             R14 2 1
      438 SETTABLEKS                       R14 R13 K78 ["PaddingTop"]
      440 GETIMPORT                        R14 K82 [UDim.new]
      442 LOADN                            R15 0
      443 LOADN                            R16 16
      444 CALL                             R14 2 1
      445 SETTABLEKS                       R14 R13 K79 ["PaddingBottom"]
      447 CALL                             R11 2 1
      448 MOVE                             R12 R2
      449 LOADK                            R13 K115 ["::UIListLayout"]
      450 DUPTABLE                         R14 K117 [{"Padding"}]
      451 GETIMPORT                        R15 K82 [UDim.new]
      453 LOADN                            R16 0
      454 LOADN                            R17 8
      455 CALL                             R15 2 1
      456 SETTABLEKS                       R15 R14 K116 ["Padding"]
      458 CALL                             R12 2 -1
      459 SETLIST                          R10 R11 -1 [1]
      461 CALL                             R7 3 1
      462 MOVE                             R8 R2
      463 LOADK                            R9 K133 [".Component-ExpandableSection-Arrow"]
      464 DUPTABLE                         R10 K136 [{["Image"] = "$ArrowRightImage", ["ImageRectSize"], ["Size"]}]
      465 GETIMPORT                        R11 K87 [Vector2.new]
      467 LOADN                            R12 16
      468 LOADN                            R13 16
      469 CALL                             R11 2 1
      470 SETTABLEKS                       R11 R10 K135 ["ImageRectSize"]
      472 GETIMPORT                        R11 K92 [UDim2.fromOffset]
      474 LOADN                            R12 16
      475 LOADN                            R13 16
      476 CALL                             R11 2 1
      477 SETTABLEKS                       R11 R10 K15 ["Size"]
      479 NEWTABLE                         R11 0 2
      481 MOVE                             R12 R2
      482 LOADK                            R13 K64 [".Expanded"]
      483 DUPTABLE                         R14 K138 [{["Image"] = "$ArrowDownImage"}]
      484 CALL                             R12 2 1
      485 MOVE                             R13 R2
      486 LOADK                            R14 K139 [".Invisible"]
      487 DUPTABLE                         R15 K141 [{["BackgroundTransparency"] = 1, ["ImageTransparency"] = 1}]
      488 CALL                             R13 2 -1
      489 SETLIST                          R11 R12 -1 [1]
      491 CALL                             R8 3 1
      492 MOVE                             R9 R2
      493 LOADK                            R10 K142 [".Component-WarningIcon"]
      494 DUPTABLE                         R11 K145 [{["BackgroundTransparency"] = 1, ["Image"] = "$WarningLargeImage", ["Size"], ["SizeConstraint"]}]
      495 GETIMPORT                        R12 K24 [UDim2.fromScale]
      497 LOADK                            R13 K146 [0.8]
      498 LOADK                            R14 K146 [0.8]
      499 CALL                             R12 2 1
      500 SETTABLEKS                       R12 R11 K15 ["Size"]
      502 GETIMPORT                        R12 K148 [Enum.SizeConstraint.RelativeYY]
      504 SETTABLEKS                       R12 R11 K144 ["SizeConstraint"]
      506 NEWTABLE                         R12 0 1
      508 MOVE                             R13 R2
      509 LOADK                            R14 K149 [".AssetIdSelector"]
      510 DUPTABLE                         R15 K150 [{"Size"}]
      511 GETIMPORT                        R16 K92 [UDim2.fromOffset]
      513 LOADN                            R17 20
      514 LOADN                            R18 20
      515 CALL                             R16 2 1
      516 SETTABLEKS                       R16 R15 K15 ["Size"]
      518 CALL                             R13 2 -1
      519 SETLIST                          R12 R13 -1 [1]
      521 CALL                             R9 3 1
      522 MOVE                             R10 R2
      523 LOADK                            R11 K151 [".Component-HoverTextBox"]
      524 DUPTABLE                         R12 K156 [{["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["AutomaticSize"], ["BackgroundColor3"] = "$ActionEnabled"}]
      525 GETIMPORT                        R13 K158 [Enum.TextXAlignment.Center]
      527 SETTABLEKS                       R13 R12 K30 ["TextXAlignment"]
      529 GETIMPORT                        R13 K159 [Enum.TextYAlignment.Center]
      531 SETTABLEKS                       R13 R12 K154 ["TextYAlignment"]
      533 GETIMPORT                        R13 K94 [Enum.AutomaticSize.XY]
      535 SETTABLEKS                       R13 R12 K20 ["AutomaticSize"]
      537 NEWTABLE                         R13 0 2
      539 MOVE                             R14 R2
      540 LOADK                            R15 K107 ["::UICorner"]
      541 CALL                             R14 1 1
      542 MOVE                             R15 R2
      543 LOADK                            R16 K77 ["::UIPadding"]
      544 DUPTABLE                         R17 K161 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      545 GETIMPORT                        R18 K82 [UDim.new]
      547 LOADN                            R19 0
      548 LOADN                            R20 4
      549 CALL                             R18 2 1
      550 SETTABLEKS                       R18 R17 K79 ["PaddingBottom"]
      552 GETIMPORT                        R18 K82 [UDim.new]
      554 LOADN                            R19 0
      555 LOADN                            R20 8
      556 CALL                             R18 2 1
      557 SETTABLEKS                       R18 R17 K127 ["PaddingLeft"]
      559 GETIMPORT                        R18 K82 [UDim.new]
      561 LOADN                            R19 0
      562 LOADN                            R20 8
      563 CALL                             R18 2 1
      564 SETTABLEKS                       R18 R17 K160 ["PaddingRight"]
      566 GETIMPORT                        R18 K82 [UDim.new]
      568 LOADN                            R19 0
      569 LOADN                            R20 4
      570 CALL                             R18 2 1
      571 SETTABLEKS                       R18 R17 K78 ["PaddingTop"]
      573 CALL                             R15 2 -1
      574 SETLIST                          R13 R14 -1 [1]
      576 CALL                             R10 3 1
      577 MOVE                             R11 R2
      578 LOADK                            R12 K162 [".GenericModeSelector-Subtext"]
      579 DUPTABLE                         R13 K165 [{["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True, ["AutomaticSize"], ["TextColor3"] = "$TextSecondary", ["TextSize"] = 18}]
      580 GETIMPORT                        R14 K35 [Enum.TextXAlignment.Left]
      582 SETTABLEKS                       R14 R13 K30 ["TextXAlignment"]
      584 GETIMPORT                        R14 K167 [Enum.TextYAlignment.Top]
      586 SETTABLEKS                       R14 R13 K154 ["TextYAlignment"]
      588 GETIMPORT                        R14 K124 [Enum.AutomaticSize.Y]
      590 SETTABLEKS                       R14 R13 K20 ["AutomaticSize"]
      592 CALL                             R11 2 1
      593 MOVE                             R12 R2
      594 LOADK                            R13 K168 [".RadioButtonContainer >> TextLabel #DescriptionTextLabel"]
      595 DUPTABLE                         R14 K170 [{["TextSize"] = 16, ["TextColor3"] = "$TextSecondary"}]
      596 CALL                             R12 2 1
      597 MOVE                             R13 R2
      598 LOADK                            R14 K171 [".PresetHoverTooltipDivider"]
      599 DUPTABLE                         R15 K172 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$TextPrimary"}]
      600 GETIMPORT                        R16 K76 [UDim2.new]
      602 LOADN                            R17 1
      603 LOADN                            R18 0
      604 LOADN                            R19 0
      605 LOADN                            R20 1
      606 CALL                             R16 4 1
      607 SETTABLEKS                       R16 R15 K15 ["Size"]
      609 CALL                             R13 2 1
      610 MOVE                             R14 R2
      611 LOADK                            R15 K173 [".Separator"]
      612 DUPTABLE                         R16 K175 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$OtherDivider"}]
      613 GETIMPORT                        R17 K76 [UDim2.new]
      615 LOADN                            R18 1
      616 LOADN                            R19 0
      617 LOADN                            R20 0
      618 LOADN                            R21 1
      619 CALL                             R17 4 1
      620 SETTABLEKS                       R17 R16 K15 ["Size"]
      622 CALL                             R14 2 1
      623 MOVE                             R15 R2
      624 LOADK                            R16 K176 [".PresetHoverTooltip"]
      625 NEWTABLE                         R17 0 0
      627 NEWTABLE                         R18 0 2
      629 MOVE                             R19 R2
      630 LOADK                            R20 K177 [">> Frame #ContentPane"]
      631 DUPTABLE                         R21 K178 [{"AutomaticSize"}]
      632 GETIMPORT                        R22 K94 [Enum.AutomaticSize.XY]
      634 SETTABLEKS                       R22 R21 K20 ["AutomaticSize"]
      636 CALL                             R19 2 1
      637 MOVE                             R20 R2
      638 LOADK                            R21 K179 [">> ImageLabel #DropShadow"]
      639 DUPTABLE                         R22 K178 [{"AutomaticSize"}]
      640 GETIMPORT                        R23 K94 [Enum.AutomaticSize.XY]
      642 SETTABLEKS                       R23 R22 K20 ["AutomaticSize"]
      644 CALL                             R20 2 -1
      645 SETLIST                          R18 R19 -1 [1]
      647 CALL                             R15 3 1
      648 MOVE                             R16 R2
      649 LOADK                            R17 K180 [".PresetHoverTooltipCheckImage"]
      650 DUPTABLE                         R18 K182 [{["Image"] = "$PresetTooltipCheckImage"}]
      651 CALL                             R16 2 1
      652 MOVE                             R17 R2
      653 LOADK                            R18 K183 [".PresetHoverTooltipXImage"]
      654 DUPTABLE                         R19 K185 [{["Image"] = "$PresetTooltipXImage"}]
      655 CALL                             R17 2 1
      656 MOVE                             R18 R2
      657 LOADK                            R19 K186 [".GeneralSettingsGameplayDescriptionImage"]
      658 DUPTABLE                         R20 K188 [{["Image"] = "$PresetInfoImage"}]
      659 CALL                             R18 2 1
      660 MOVE                             R19 R2
      661 LOADK                            R20 K189 [".ColumnSpacing-Standard ::UIListLayout"]
      662 DUPTABLE                         R21 K117 [{"Padding"}]
      663 GETIMPORT                        R22 K82 [UDim.new]
      665 LOADN                            R23 0
      666 LOADN                            R24 8
      667 CALL                             R22 2 1
      668 SETTABLEKS                       R22 R21 K116 ["Padding"]
      670 CALL                             R19 2 1
      671 MOVE                             R20 R2
      672 LOADK                            R21 K190 [".VerticalFlex-Fill ::UIListLayout"]
      673 DUPTABLE                         R22 K192 [{"VerficalFlex"}]
      674 GETIMPORT                        R23 K195 [Enum.UIFlexAlignment.Fill]
      676 SETTABLEKS                       R23 R22 K191 ["VerficalFlex"]
      678 CALL                             R20 2 1
      679 MOVE                             R21 R2
      680 LOADK                            R22 K196 [".PublishBar"]
      681 DUPTABLE                         R23 K197 [{["BackgroundTransparency"] = 1}]
      682 NEWTABLE                         R24 0 3
      684 MOVE                             R25 R2
      685 LOADK                            R26 K95 ["::UIStroke"]
      686 DUPTABLE                         R27 K198 [{["Color"] = "$Divider"}]
      687 CALL                             R25 2 1
      688 MOVE                             R26 R2
      689 LOADK                            R27 K77 ["::UIPadding"]
      690 DUPTABLE                         R28 K199 [{"PaddingRight"}]
      691 GETIMPORT                        R29 K82 [UDim.new]
      693 LOADN                            R30 0
      694 LOADN                            R31 8
      695 CALL                             R29 2 1
      696 SETTABLEKS                       R29 R28 K160 ["PaddingRight"]
      698 CALL                             R26 2 1
      699 MOVE                             R27 R2
      700 LOADK                            R28 K115 ["::UIListLayout"]
      701 DUPTABLE                         R29 K117 [{"Padding"}]
      702 GETIMPORT                        R30 K82 [UDim.new]
      704 LOADN                            R31 0
      705 LOADN                            R32 8
      706 CALL                             R30 2 1
      707 SETTABLEKS                       R30 R29 K116 ["Padding"]
      709 CALL                             R27 2 -1
      710 SETLIST                          R24 R25 -1 [1]
      712 CALL                             R21 3 1
      713 SETLIST                          R5 R6 16 [17]
      715 MOVE                             R6 R2
      716 LOADK                            R7 K200 [".TitledComponentLabel"]
      717 DUPTABLE                         R8 K202 [{"FontFace"}]
      718 GETIMPORT                        R9 K204 [Font.new]
      720 LOADK                            R10 K205 ["rbxasset://fonts/families/SourceSansPro.json"]
      721 GETIMPORT                        R11 K208 [Enum.FontWeight.Regular]
      723 GETIMPORT                        R12 K211 [Enum.FontStyle.Normal]
      725 CALL                             R9 3 1
      726 SETTABLEKS                       R9 R8 K201 ["FontFace"]
      728 CALL                             R6 2 1
      729 MOVE                             R7 R2
      730 LOADK                            R8 K212 [".PresetImage"]
      731 NEWTABLE                         R9 0 0
      733 NEWTABLE                         R10 0 3
      735 MOVE                             R11 R2
      736 LOADK                            R12 K77 ["::UIPadding"]
      737 DUPTABLE                         R13 K80 [{"PaddingTop", "PaddingBottom"}]
      738 GETIMPORT                        R14 K82 [UDim.new]
      740 LOADN                            R15 0
      741 LOADN                            R16 8
      742 CALL                             R14 2 1
      743 SETTABLEKS                       R14 R13 K78 ["PaddingTop"]
      745 GETIMPORT                        R14 K82 [UDim.new]
      747 LOADN                            R15 0
      748 LOADN                            R16 8
      749 CALL                             R14 2 1
      750 SETTABLEKS                       R14 R13 K79 ["PaddingBottom"]
      752 CALL                             R11 2 1
      753 MOVE                             R12 R2
      754 LOADK                            R13 K213 [".PlayerChoice"]
      755 DUPTABLE                         R14 K215 [{["Image"] = "$PlayerChoicePresetImage"}]
      756 CALL                             R12 2 1
      757 MOVE                             R13 R2
      758 LOADK                            R14 K216 [".Consistent"]
      759 DUPTABLE                         R15 K218 [{["Image"] = "$ConsistentPresetImage"}]
      760 CALL                             R13 2 -1
      761 SETLIST                          R10 R11 -1 [1]
      763 CALL                             R7 3 1
      764 MOVE                             R8 R2
      765 LOADK                            R9 K219 [".HoverTooltipPresetImage"]
      766 NEWTABLE                         R10 0 0
      768 NEWTABLE                         R11 0 2
      770 MOVE                             R12 R2
      771 LOADK                            R13 K213 [".PlayerChoice"]
      772 DUPTABLE                         R14 K215 [{["Image"] = "$PlayerChoicePresetImage"}]
      773 CALL                             R12 2 1
      774 MOVE                             R13 R2
      775 LOADK                            R14 K216 [".Consistent"]
      776 DUPTABLE                         R15 K218 [{["Image"] = "$ConsistentPresetImage"}]
      777 CALL                             R13 2 -1
      778 SETLIST                          R11 R12 -1 [1]
      780 CALL                             R8 3 1
      781 MOVE                             R9 R2
      782 LOADK                            R10 K220 [".SaveToRobloxButton"]
      783 NEWTABLE                         R11 0 0
      785 NEWTABLE                         R12 0 1
      787 MOVE                             R13 R2
      788 LOADK                            R14 K221 [">> TextLabel"]
      789 DUPTABLE                         R15 K223 [{["TextSize"] = 20, ["FontFace"]}]
      790 GETIMPORT                        R16 K204 [Font.new]
      792 LOADK                            R17 K205 ["rbxasset://fonts/families/SourceSansPro.json"]
      793 GETIMPORT                        R18 K225 [Enum.FontWeight.Bold]
      795 GETIMPORT                        R19 K211 [Enum.FontStyle.Normal]
      797 CALL                             R16 3 1
      798 SETTABLEKS                       R16 R15 K201 ["FontFace"]
      800 NEWTABLE                         R16 0 1
      802 MOVE                             R17 R2
      803 LOADK                            R18 K226 ["UIPadding"]
      804 DUPTABLE                         R19 K80 [{"PaddingTop", "PaddingBottom"}]
      805 GETIMPORT                        R20 K82 [UDim.new]
      807 LOADN                            R21 0
      808 LOADN                            R22 4
      809 CALL                             R20 2 1
      810 SETTABLEKS                       R20 R19 K78 ["PaddingTop"]
      812 GETIMPORT                        R20 K82 [UDim.new]
      814 LOADN                            R21 0
      815 LOADN                            R22 4
      816 CALL                             R20 2 1
      817 SETTABLEKS                       R20 R19 K79 ["PaddingBottom"]
      819 CALL                             R17 2 -1
      820 SETLIST                          R16 R17 -1 [1]
      822 CALL                             R13 3 -1
      823 SETLIST                          R12 R13 -1 [1]
      825 CALL                             R9 3 1
      826 MOVE                             R10 R2
      827 LOADK                            R11 K227 ["TextLabel"]
      828 NEWTABLE                         R12 0 0
      830 NEWTABLE                         R13 0 1
      832 MOVE                             R14 R2
      833 LOADK                            R15 K228 [".Bold"]
      834 DUPTABLE                         R16 K202 [{"FontFace"}]
      835 GETIMPORT                        R17 K204 [Font.new]
      837 LOADK                            R18 K205 ["rbxasset://fonts/families/SourceSansPro.json"]
      838 GETIMPORT                        R19 K225 [Enum.FontWeight.Bold]
      840 GETIMPORT                        R20 K211 [Enum.FontStyle.Normal]
      842 CALL                             R17 3 1
      843 SETTABLEKS                       R17 R16 K201 ["FontFace"]
      845 CALL                             R14 2 -1
      846 SETLIST                          R13 R14 -1 [1]
      848 CALL                             R10 3 1
      849 MOVE                             R11 R2
      850 LOADK                            R12 K229 ["TextButton"]
      851 DUPTABLE                         R13 K230 [{["FontFace"], ["TextSize"] = 18}]
      852 GETIMPORT                        R14 K204 [Font.new]
      854 LOADK                            R15 K205 ["rbxasset://fonts/families/SourceSansPro.json"]
      855 GETIMPORT                        R16 K232 [Enum.FontWeight.Medium]
      857 GETIMPORT                        R17 K211 [Enum.FontStyle.Normal]
      859 CALL                             R14 3 1
      860 SETTABLEKS                       R14 R13 K201 ["FontFace"]
      862 CALL                             R11 2 1
      863 MOVE                             R12 R2
      864 LOADK                            R13 K233 ["UIListLayout"]
      865 DUPTABLE                         R14 K235 [{"SortOrder"}]
      866 GETIMPORT                        R15 K237 [Enum.SortOrder.LayoutOrder]
      868 SETTABLEKS                       R15 R14 K234 ["SortOrder"]
      870 CALL                             R12 2 -1
      871 SETLIST                          R5 R6 -1 [33]
      873 NEWTABLE                         R6 0 0
      875 MOVE                             R7 R3
      876 LOADK                            R8 K2 ["AvatarSettings"]
      877 MOVE                             R9 R5
      878 MOVE                             R10 R6
      879 CALL                             R7 3 -1
      880 RETURN                           R7 -1
