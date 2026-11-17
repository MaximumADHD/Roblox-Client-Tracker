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
       31 NEWTABLE                         R5 0 43
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
      506 NEWTABLE                         R12 0 2
      508 MOVE                             R13 R2
      509 LOADK                            R14 K149 [".AssetIdSelector"]
      510 DUPTABLE                         R15 K150 [{"Size"}]
      511 GETIMPORT                        R16 K92 [UDim2.fromOffset]
      513 LOADN                            R17 20
      514 LOADN                            R18 20
      515 CALL                             R16 2 1
      516 SETTABLEKS                       R16 R15 K15 ["Size"]
      518 CALL                             R13 2 1
      519 MOVE                             R14 R2
      520 LOADK                            R15 K151 [".ConsistentGameplayOff"]
      521 DUPTABLE                         R16 K150 [{"Size"}]
      522 GETIMPORT                        R17 K92 [UDim2.fromOffset]
      524 LOADN                            R18 16
      525 LOADN                            R19 16
      526 CALL                             R17 2 1
      527 SETTABLEKS                       R17 R16 K15 ["Size"]
      529 CALL                             R14 2 -1
      530 SETLIST                          R12 R13 -1 [1]
      532 CALL                             R9 3 1
      533 MOVE                             R10 R2
      534 LOADK                            R11 K152 [".Component-HoverTextBox"]
      535 DUPTABLE                         R12 K157 [{["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["AutomaticSize"], ["BackgroundColor3"] = "$ActionEnabled"}]
      536 GETIMPORT                        R13 K159 [Enum.TextXAlignment.Center]
      538 SETTABLEKS                       R13 R12 K30 ["TextXAlignment"]
      540 GETIMPORT                        R13 K160 [Enum.TextYAlignment.Center]
      542 SETTABLEKS                       R13 R12 K155 ["TextYAlignment"]
      544 GETIMPORT                        R13 K94 [Enum.AutomaticSize.XY]
      546 SETTABLEKS                       R13 R12 K20 ["AutomaticSize"]
      548 NEWTABLE                         R13 0 2
      550 MOVE                             R14 R2
      551 LOADK                            R15 K107 ["::UICorner"]
      552 CALL                             R14 1 1
      553 MOVE                             R15 R2
      554 LOADK                            R16 K77 ["::UIPadding"]
      555 DUPTABLE                         R17 K162 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      556 GETIMPORT                        R18 K82 [UDim.new]
      558 LOADN                            R19 0
      559 LOADN                            R20 4
      560 CALL                             R18 2 1
      561 SETTABLEKS                       R18 R17 K79 ["PaddingBottom"]
      563 GETIMPORT                        R18 K82 [UDim.new]
      565 LOADN                            R19 0
      566 LOADN                            R20 8
      567 CALL                             R18 2 1
      568 SETTABLEKS                       R18 R17 K127 ["PaddingLeft"]
      570 GETIMPORT                        R18 K82 [UDim.new]
      572 LOADN                            R19 0
      573 LOADN                            R20 8
      574 CALL                             R18 2 1
      575 SETTABLEKS                       R18 R17 K161 ["PaddingRight"]
      577 GETIMPORT                        R18 K82 [UDim.new]
      579 LOADN                            R19 0
      580 LOADN                            R20 4
      581 CALL                             R18 2 1
      582 SETTABLEKS                       R18 R17 K78 ["PaddingTop"]
      584 CALL                             R15 2 -1
      585 SETLIST                          R13 R14 -1 [1]
      587 CALL                             R10 3 1
      588 MOVE                             R11 R2
      589 LOADK                            R12 K163 [".GenericModeSelector-Subtext"]
      590 DUPTABLE                         R13 K166 [{["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True, ["AutomaticSize"], ["TextColor3"] = "$TextSecondary", ["TextSize"] = 18}]
      591 GETIMPORT                        R14 K35 [Enum.TextXAlignment.Left]
      593 SETTABLEKS                       R14 R13 K30 ["TextXAlignment"]
      595 GETIMPORT                        R14 K168 [Enum.TextYAlignment.Top]
      597 SETTABLEKS                       R14 R13 K155 ["TextYAlignment"]
      599 GETIMPORT                        R14 K124 [Enum.AutomaticSize.Y]
      601 SETTABLEKS                       R14 R13 K20 ["AutomaticSize"]
      603 CALL                             R11 2 1
      604 MOVE                             R12 R2
      605 LOADK                            R13 K169 [".AvatarSettings-DeathCollisionCheckbox >> TextLabel"]
      606 DUPTABLE                         R14 K170 [{["TextSize"] = 18}]
      607 CALL                             R12 2 1
      608 MOVE                             R13 R2
      609 LOADK                            R14 K171 [".AvatarSettings-ConsistentGameplayOffWarning"]
      610 DUPTABLE                         R15 K173 [{["TextSize"] = 16, ["TextColor3"] = "$TextSecondary", ["TextXAlignment"], ["TextWrapped"] = True, ["AutomaticSize"]}]
      611 GETIMPORT                        R16 K35 [Enum.TextXAlignment.Left]
      613 SETTABLEKS                       R16 R15 K30 ["TextXAlignment"]
      615 GETIMPORT                        R16 K94 [Enum.AutomaticSize.XY]
      617 SETTABLEKS                       R16 R15 K20 ["AutomaticSize"]
      619 CALL                             R13 2 1
      620 MOVE                             R14 R2
      621 LOADK                            R15 K174 [".AvatarSettings-DeathCollisionDescription"]
      622 DUPTABLE                         R16 K175 [{["TextSize"] = 16, ["TextColor3"] = "$TextSecondary", ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True, ["AutomaticSize"]}]
      623 GETIMPORT                        R17 K35 [Enum.TextXAlignment.Left]
      625 SETTABLEKS                       R17 R16 K30 ["TextXAlignment"]
      627 GETIMPORT                        R17 K168 [Enum.TextYAlignment.Top]
      629 SETTABLEKS                       R17 R16 K155 ["TextYAlignment"]
      631 GETIMPORT                        R17 K124 [Enum.AutomaticSize.Y]
      633 SETTABLEKS                       R17 R16 K20 ["AutomaticSize"]
      635 NEWTABLE                         R17 0 1
      637 MOVE                             R18 R2
      638 LOADK                            R19 K77 ["::UIPadding"]
      639 DUPTABLE                         R20 K128 [{"PaddingLeft"}]
      640 GETIMPORT                        R21 K82 [UDim.new]
      642 LOADN                            R22 0
      643 LOADN                            R23 24
      644 CALL                             R21 2 1
      645 SETTABLEKS                       R21 R20 K127 ["PaddingLeft"]
      647 CALL                             R18 2 -1
      648 SETLIST                          R17 R18 -1 [1]
      650 CALL                             R14 3 1
      651 MOVE                             R15 R2
      652 LOADK                            R16 K176 [".RadioButtonContainer >> TextLabel #DescriptionTextLabel"]
      653 DUPTABLE                         R17 K177 [{["TextSize"] = 16, ["TextColor3"] = "$TextSecondary"}]
      654 CALL                             R15 2 1
      655 MOVE                             R16 R2
      656 LOADK                            R17 K178 [".PresetHoverTooltipDivider"]
      657 DUPTABLE                         R18 K179 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$TextPrimary"}]
      658 GETIMPORT                        R19 K76 [UDim2.new]
      660 LOADN                            R20 1
      661 LOADN                            R21 0
      662 LOADN                            R22 0
      663 LOADN                            R23 1
      664 CALL                             R19 4 1
      665 SETTABLEKS                       R19 R18 K15 ["Size"]
      667 CALL                             R16 2 1
      668 MOVE                             R17 R2
      669 LOADK                            R18 K180 [".Separator"]
      670 DUPTABLE                         R19 K182 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$OtherDivider"}]
      671 GETIMPORT                        R20 K76 [UDim2.new]
      673 LOADN                            R21 1
      674 LOADN                            R22 0
      675 LOADN                            R23 0
      676 LOADN                            R24 1
      677 CALL                             R20 4 1
      678 SETTABLEKS                       R20 R19 K15 ["Size"]
      680 CALL                             R17 2 1
      681 MOVE                             R18 R2
      682 LOADK                            R19 K183 [".PresetHoverTooltip"]
      683 NEWTABLE                         R20 0 0
      685 NEWTABLE                         R21 0 2
      687 MOVE                             R22 R2
      688 LOADK                            R23 K184 [">> Frame #ContentPane"]
      689 DUPTABLE                         R24 K185 [{"AutomaticSize"}]
      690 GETIMPORT                        R25 K94 [Enum.AutomaticSize.XY]
      692 SETTABLEKS                       R25 R24 K20 ["AutomaticSize"]
      694 CALL                             R22 2 1
      695 MOVE                             R23 R2
      696 LOADK                            R24 K186 [">> ImageLabel #DropShadow"]
      697 DUPTABLE                         R25 K185 [{"AutomaticSize"}]
      698 GETIMPORT                        R26 K94 [Enum.AutomaticSize.XY]
      700 SETTABLEKS                       R26 R25 K20 ["AutomaticSize"]
      702 CALL                             R23 2 -1
      703 SETLIST                          R21 R22 -1 [1]
      705 CALL                             R18 3 1
      706 MOVE                             R19 R2
      707 LOADK                            R20 K187 [".PresetHoverTooltipCheckImage"]
      708 DUPTABLE                         R21 K189 [{["Image"] = "$PresetTooltipCheckImage"}]
      709 CALL                             R19 2 1
      710 MOVE                             R20 R2
      711 LOADK                            R21 K190 [".PresetHoverTooltipXImage"]
      712 DUPTABLE                         R22 K192 [{["Image"] = "$PresetTooltipXImage"}]
      713 CALL                             R20 2 1
      714 MOVE                             R21 R2
      715 LOADK                            R22 K193 [".GeneralSettingsGameplayDescriptionImage"]
      716 DUPTABLE                         R23 K195 [{["Image"] = "$PresetInfoImage"}]
      717 CALL                             R21 2 1
      718 SETLIST                          R5 R6 16 [17]
      720 MOVE                             R6 R2
      721 LOADK                            R7 K196 [".ColumnSpacing-Standard ::UIListLayout"]
      722 DUPTABLE                         R8 K117 [{"Padding"}]
      723 GETIMPORT                        R9 K82 [UDim.new]
      725 LOADN                            R10 0
      726 LOADN                            R11 8
      727 CALL                             R9 2 1
      728 SETTABLEKS                       R9 R8 K116 ["Padding"]
      730 CALL                             R6 2 1
      731 MOVE                             R7 R2
      732 LOADK                            R8 K197 [".VerticalFlex-Fill ::UIListLayout"]
      733 DUPTABLE                         R9 K199 [{"VerficalFlex"}]
      734 GETIMPORT                        R10 K202 [Enum.UIFlexAlignment.Fill]
      736 SETTABLEKS                       R10 R9 K198 ["VerficalFlex"]
      738 CALL                             R7 2 1
      739 MOVE                             R8 R2
      740 LOADK                            R9 K203 [".AvatarSettings-BodyOnlyDialog >> TextLabel #Heading"]
      741 DUPTABLE                         R10 K206 [{["Visible"] = False}]
      742 CALL                             R8 2 1
      743 MOVE                             R9 R2
      744 LOADK                            R10 K207 [".PublishBar"]
      745 DUPTABLE                         R11 K208 [{["BackgroundTransparency"] = 1}]
      746 NEWTABLE                         R12 0 3
      748 MOVE                             R13 R2
      749 LOADK                            R14 K95 ["::UIStroke"]
      750 DUPTABLE                         R15 K209 [{["Color"] = "$Divider"}]
      751 CALL                             R13 2 1
      752 MOVE                             R14 R2
      753 LOADK                            R15 K77 ["::UIPadding"]
      754 DUPTABLE                         R16 K210 [{"PaddingRight"}]
      755 GETIMPORT                        R17 K82 [UDim.new]
      757 LOADN                            R18 0
      758 LOADN                            R19 8
      759 CALL                             R17 2 1
      760 SETTABLEKS                       R17 R16 K161 ["PaddingRight"]
      762 CALL                             R14 2 1
      763 MOVE                             R15 R2
      764 LOADK                            R16 K115 ["::UIListLayout"]
      765 DUPTABLE                         R17 K117 [{"Padding"}]
      766 GETIMPORT                        R18 K82 [UDim.new]
      768 LOADN                            R19 0
      769 LOADN                            R20 8
      770 CALL                             R18 2 1
      771 SETTABLEKS                       R18 R17 K116 ["Padding"]
      773 CALL                             R15 2 -1
      774 SETLIST                          R12 R13 -1 [1]
      776 CALL                             R9 3 1
      777 MOVE                             R10 R2
      778 LOADK                            R11 K211 [".TitledComponentLabel"]
      779 DUPTABLE                         R12 K213 [{"FontFace"}]
      780 GETIMPORT                        R13 K215 [Font.new]
      782 LOADK                            R14 K216 ["rbxasset://fonts/families/SourceSansPro.json"]
      783 GETIMPORT                        R15 K219 [Enum.FontWeight.Regular]
      785 GETIMPORT                        R16 K222 [Enum.FontStyle.Normal]
      787 CALL                             R13 3 1
      788 SETTABLEKS                       R13 R12 K212 ["FontFace"]
      790 CALL                             R10 2 1
      791 MOVE                             R11 R2
      792 LOADK                            R12 K223 [".PresetImage"]
      793 NEWTABLE                         R13 0 0
      795 NEWTABLE                         R14 0 3
      797 MOVE                             R15 R2
      798 LOADK                            R16 K77 ["::UIPadding"]
      799 DUPTABLE                         R17 K80 [{"PaddingTop", "PaddingBottom"}]
      800 GETIMPORT                        R18 K82 [UDim.new]
      802 LOADN                            R19 0
      803 LOADN                            R20 8
      804 CALL                             R18 2 1
      805 SETTABLEKS                       R18 R17 K78 ["PaddingTop"]
      807 GETIMPORT                        R18 K82 [UDim.new]
      809 LOADN                            R19 0
      810 LOADN                            R20 8
      811 CALL                             R18 2 1
      812 SETTABLEKS                       R18 R17 K79 ["PaddingBottom"]
      814 CALL                             R15 2 1
      815 MOVE                             R16 R2
      816 LOADK                            R17 K224 [".PlayerChoice"]
      817 DUPTABLE                         R18 K226 [{["Image"] = "$PlayerChoicePresetImage"}]
      818 CALL                             R16 2 1
      819 MOVE                             R17 R2
      820 LOADK                            R18 K227 [".Consistent"]
      821 DUPTABLE                         R19 K229 [{["Image"] = "$ConsistentPresetImage"}]
      822 CALL                             R17 2 -1
      823 SETLIST                          R14 R15 -1 [1]
      825 CALL                             R11 3 1
      826 MOVE                             R12 R2
      827 LOADK                            R13 K230 [".HoverTooltipPresetImage"]
      828 NEWTABLE                         R14 0 0
      830 NEWTABLE                         R15 0 2
      832 MOVE                             R16 R2
      833 LOADK                            R17 K224 [".PlayerChoice"]
      834 DUPTABLE                         R18 K226 [{["Image"] = "$PlayerChoicePresetImage"}]
      835 CALL                             R16 2 1
      836 MOVE                             R17 R2
      837 LOADK                            R18 K227 [".Consistent"]
      838 DUPTABLE                         R19 K229 [{["Image"] = "$ConsistentPresetImage"}]
      839 CALL                             R17 2 -1
      840 SETLIST                          R15 R16 -1 [1]
      842 CALL                             R12 3 1
      843 MOVE                             R13 R2
      844 LOADK                            R14 K231 [".SaveToRobloxButton"]
      845 NEWTABLE                         R15 0 0
      847 NEWTABLE                         R16 0 1
      849 MOVE                             R17 R2
      850 LOADK                            R18 K232 [">> TextLabel"]
      851 DUPTABLE                         R19 K234 [{["TextSize"] = 20, ["FontFace"]}]
      852 GETIMPORT                        R20 K215 [Font.new]
      854 LOADK                            R21 K216 ["rbxasset://fonts/families/SourceSansPro.json"]
      855 GETIMPORT                        R22 K236 [Enum.FontWeight.Bold]
      857 GETIMPORT                        R23 K222 [Enum.FontStyle.Normal]
      859 CALL                             R20 3 1
      860 SETTABLEKS                       R20 R19 K212 ["FontFace"]
      862 NEWTABLE                         R20 0 1
      864 MOVE                             R21 R2
      865 LOADK                            R22 K237 ["UIPadding"]
      866 DUPTABLE                         R23 K80 [{"PaddingTop", "PaddingBottom"}]
      867 GETIMPORT                        R24 K82 [UDim.new]
      869 LOADN                            R25 0
      870 LOADN                            R26 4
      871 CALL                             R24 2 1
      872 SETTABLEKS                       R24 R23 K78 ["PaddingTop"]
      874 GETIMPORT                        R24 K82 [UDim.new]
      876 LOADN                            R25 0
      877 LOADN                            R26 4
      878 CALL                             R24 2 1
      879 SETTABLEKS                       R24 R23 K79 ["PaddingBottom"]
      881 CALL                             R21 2 -1
      882 SETLIST                          R20 R21 -1 [1]
      884 CALL                             R17 3 -1
      885 SETLIST                          R16 R17 -1 [1]
      887 CALL                             R13 3 1
      888 MOVE                             R14 R2
      889 LOADK                            R15 K238 ["TextLabel"]
      890 NEWTABLE                         R16 0 0
      892 NEWTABLE                         R17 0 1
      894 MOVE                             R18 R2
      895 LOADK                            R19 K239 [".Bold"]
      896 DUPTABLE                         R20 K213 [{"FontFace"}]
      897 GETIMPORT                        R21 K215 [Font.new]
      899 LOADK                            R22 K216 ["rbxasset://fonts/families/SourceSansPro.json"]
      900 GETIMPORT                        R23 K236 [Enum.FontWeight.Bold]
      902 GETIMPORT                        R24 K222 [Enum.FontStyle.Normal]
      904 CALL                             R21 3 1
      905 SETTABLEKS                       R21 R20 K212 ["FontFace"]
      907 CALL                             R18 2 -1
      908 SETLIST                          R17 R18 -1 [1]
      910 CALL                             R14 3 1
      911 MOVE                             R15 R2
      912 LOADK                            R16 K240 ["TextButton"]
      913 DUPTABLE                         R17 K241 [{["FontFace"], ["TextSize"] = 18}]
      914 GETIMPORT                        R18 K215 [Font.new]
      916 LOADK                            R19 K216 ["rbxasset://fonts/families/SourceSansPro.json"]
      917 GETIMPORT                        R20 K243 [Enum.FontWeight.Medium]
      919 GETIMPORT                        R21 K222 [Enum.FontStyle.Normal]
      921 CALL                             R18 3 1
      922 SETTABLEKS                       R18 R17 K212 ["FontFace"]
      924 CALL                             R15 2 1
      925 MOVE                             R16 R2
      926 LOADK                            R17 K244 ["UIListLayout"]
      927 DUPTABLE                         R18 K246 [{"SortOrder"}]
      928 GETIMPORT                        R19 K248 [Enum.SortOrder.LayoutOrder]
      930 SETTABLEKS                       R19 R18 K245 ["SortOrder"]
      932 CALL                             R16 2 -1
      933 SETLIST                          R5 R6 -1 [33]
      935 NEWTABLE                         R6 0 0
      937 MOVE                             R7 R3
      938 LOADK                            R8 K2 ["AvatarSettings"]
      939 MOVE                             R9 R5
      940 MOVE                             R10 R6
      941 CALL                             R7 3 -1
      942 RETURN                           R7 -1
