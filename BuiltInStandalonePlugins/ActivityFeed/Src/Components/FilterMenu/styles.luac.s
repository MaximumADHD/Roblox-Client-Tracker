MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Resources"]
       24 GETTABLEKS                       R3 R3 K9 ["StyleTips"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R1 K10 ["Styling"]
       29 GETTABLEKS                       R3 R3 K11 ["createStyleRule"]
       31 GETTABLEKS                       R4 R2 K12 ["buttonPaddingHorizontal"]
       33 GETTABLEKS                       R5 R2 K13 ["defaultPadding"]
       35 GETTABLEKS                       R6 R2 K14 ["filterHeaderHeight"]
       37 GETTABLEKS                       R7 R2 K15 ["checkBoxRowHeight"]
       39 GETTABLEKS                       R8 R2 K16 ["normalFontSize"]
       41 GETTABLEKS                       R9 R2 K17 ["headerFontSize"]
       43 GETIMPORT                        R10 K19 [game]
       45 LOADK                            R12 K20 ["ActivityHistoryCompactUI"]
       46 NAMECALL                         R10 R10 K21 ["GetFastFlag"]
       48 CALL                             R10 2 1
       49 MOVE                             R11 R3
       50 LOADK                            R12 K22 [".Component-FilterMenu"]
       51 DUPTABLE                         R13 K24 [{"BackgroundColor3"}]
       52 JUMPIFNOT                        R10 ; [+2]
       53 LOADK                            R14 K25 ["$FoundationColorsBackgroundDefault"]
       54 JUMP                             ; [+1]
       55 LOADK                            R14 K26 ["$ForegroundMain"]
       56 SETTABLEKS                       R14 R13 K23 ["BackgroundColor3"]
       58 NEWTABLE                         R14 0 3
       60 MOVE                             R15 R3
       61 LOADK                            R16 K27 [">> .Component-OptionButton"]
       62 DUPTABLE                         R17 K31 [{["AutoButtonColor"] = False, ["TextColor3"]}]
       63 JUMPIFNOT                        R10 ; [+2]
       64 LOADK                            R18 K32 ["$FoundationColorsContentEmphasis"]
       65 JUMP                             ; [+1]
       66 LOADK                            R18 K33 ["$TextPrimary"]
       67 SETTABLEKS                       R18 R17 K30 ["TextColor3"]
       69 NEWTABLE                         R18 0 2
       71 MOVE                             R19 R3
       72 LOADK                            R20 K34 ["::UICorner"]
       73 DUPTABLE                         R21 K36 [{"CornerRadius"}]
       74 GETIMPORT                        R22 K39 [UDim.new]
       76 LOADN                            R23 0
       77 LOADN                            R24 4
       78 CALL                             R22 2 1
       79 SETTABLEKS                       R22 R21 K35 ["CornerRadius"]
       81 CALL                             R19 2 1
       82 MOVE                             R20 R3
       83 LOADK                            R21 K40 ["::UIPadding"]
       84 DUPTABLE                         R22 K45 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       85 GETIMPORT                        R23 K39 [UDim.new]
       87 LOADN                            R24 0
       88 MOVE                             R25 R4
       89 CALL                             R23 2 1
       90 SETTABLEKS                       R23 R22 K41 ["PaddingLeft"]
       92 GETIMPORT                        R23 K39 [UDim.new]
       94 LOADN                            R24 0
       95 MOVE                             R25 R4
       96 CALL                             R23 2 1
       97 SETTABLEKS                       R23 R22 K42 ["PaddingRight"]
       99 GETIMPORT                        R23 K39 [UDim.new]
      101 LOADN                            R24 0
      102 LOADN                            R25 0
      103 CALL                             R23 2 1
      104 SETTABLEKS                       R23 R22 K43 ["PaddingTop"]
      106 GETIMPORT                        R23 K39 [UDim.new]
      108 LOADN                            R24 0
      109 LOADN                            R25 0
      110 CALL                             R23 2 1
      111 SETTABLEKS                       R23 R22 K44 ["PaddingBottom"]
      113 CALL                             R20 2 -1
      114 SETLIST                          R18 R19 -1 [1]
      116 CALL                             R15 3 1
      117 MOVE                             R16 R3
      118 LOADK                            R17 K46 [">> #Header"]
      119 DUPTABLE                         R18 K48 [{"Size"}]
      120 GETIMPORT                        R19 K50 [UDim2.new]
      122 LOADN                            R20 1
      123 LOADN                            R21 0
      124 LOADN                            R22 0
      125 MOVE                             R23 R6
      126 CALL                             R19 4 1
      127 SETTABLEKS                       R19 R18 K47 ["Size"]
      129 NEWTABLE                         R19 0 4
      131 MOVE                             R20 R3
      132 LOADK                            R21 K40 ["::UIPadding"]
      133 DUPTABLE                         R22 K51 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      134 GETIMPORT                        R23 K39 [UDim.new]
      136 LOADN                            R24 0
      137 JUMPIFNOT                        R10 ; [+2]
      138 LOADN                            R25 2
      139 JUMP                             ; [+1]
      140 LOADN                            R25 4
      141 CALL                             R23 2 1
      142 SETTABLEKS                       R23 R22 K43 ["PaddingTop"]
      144 GETIMPORT                        R23 K39 [UDim.new]
      146 LOADN                            R24 0
      147 JUMPIFNOT                        R10 ; [+2]
      148 LOADN                            R25 1
      149 JUMP                             ; [+1]
      150 LOADN                            R25 4
      151 CALL                             R23 2 1
      152 SETTABLEKS                       R23 R22 K44 ["PaddingBottom"]
      154 GETIMPORT                        R23 K39 [UDim.new]
      156 LOADN                            R24 0
      157 LOADN                            R25 16
      158 CALL                             R23 2 1
      159 SETTABLEKS                       R23 R22 K41 ["PaddingLeft"]
      161 GETIMPORT                        R23 K39 [UDim.new]
      163 LOADN                            R24 0
      164 LOADN                            R25 16
      165 CALL                             R23 2 1
      166 SETTABLEKS                       R23 R22 K42 ["PaddingRight"]
      168 CALL                             R20 2 1
      169 MOVE                             R21 R3
      170 LOADK                            R22 K52 ["::UIListLayout"]
      171 DUPTABLE                         R23 K54 [{"HorizontalFlex"}]
      172 GETIMPORT                        R24 K58 [Enum.UIFlexAlignment.SpaceBetween]
      174 SETTABLEKS                       R24 R23 K53 ["HorizontalFlex"]
      176 CALL                             R21 2 1
      177 MOVE                             R22 R3
      178 LOADK                            R23 K59 ["> #Text"]
      179 DUPTABLE                         R24 K65 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["TextSize"], ["TextColor3"], ["TextXAlignment"]}]
      180 GETIMPORT                        R25 K50 [UDim2.new]
      182 LOADN                            R26 0
      183 LOADN                            R27 0
      184 LOADN                            R28 1
      185 LOADN                            R29 0
      186 CALL                             R25 4 1
      187 SETTABLEKS                       R25 R24 K47 ["Size"]
      189 GETIMPORT                        R25 K67 [Enum.AutomaticSize.Y]
      191 SETTABLEKS                       R25 R24 K60 ["AutomaticSize"]
      193 SETTABLEKS                       R9 R24 K63 ["TextSize"]
      195 JUMPIFNOT                        R10 ; [+2]
      196 LOADK                            R25 K32 ["$FoundationColorsContentEmphasis"]
      197 JUMP                             ; [+1]
      198 LOADK                            R25 K33 ["$TextPrimary"]
      199 SETTABLEKS                       R25 R24 K30 ["TextColor3"]
      201 GETIMPORT                        R25 K69 [Enum.TextXAlignment.Left]
      203 SETTABLEKS                       R25 R24 K64 ["TextXAlignment"]
      205 CALL                             R22 2 1
      206 MOVE                             R23 R3
      207 LOADK                            R24 K70 ["> #Buttons"]
      208 NEWTABLE                         R25 0 0
      210 NEWTABLE                         R26 0 3
      212 MOVE                             R27 R3
      213 LOADK                            R28 K52 ["::UIListLayout"]
      214 DUPTABLE                         R29 K72 [{"Padding"}]
      215 GETIMPORT                        R30 K39 [UDim.new]
      217 LOADN                            R31 0
      218 MOVE                             R32 R5
      219 CALL                             R30 2 1
      220 SETTABLEKS                       R30 R29 K71 ["Padding"]
      222 CALL                             R27 2 1
      223 MOVE                             R28 R3
      224 LOADK                            R29 K73 ["> #Clear"]
      225 DUPTABLE                         R30 K75 [{["BackgroundColor3"] = "$SecondaryMain"}]
      226 NEWTABLE                         R31 0 1
      228 MOVE                             R32 R3
      229 LOADK                            R33 K76 [":hover"]
      230 DUPTABLE                         R34 K78 [{["BackgroundColor3"] = "$SecondaryHoverBackground"}]
      231 CALL                             R32 2 -1
      232 SETLIST                          R31 R32 -1 [1]
      234 CALL                             R28 3 1
      235 MOVE                             R29 R3
      236 LOADK                            R30 K79 ["> #Apply"]
      237 DUPTABLE                         R31 K81 [{["BackgroundColor3"] = "$PrimaryMain"}]
      238 NEWTABLE                         R32 0 1
      240 MOVE                             R33 R3
      241 LOADK                            R34 K76 [":hover"]
      242 DUPTABLE                         R35 K83 [{["BackgroundColor3"] = "$PrimaryHoverBackground"}]
      243 CALL                             R33 2 -1
      244 SETLIST                          R32 R33 -1 [1]
      246 CALL                             R29 3 -1
      247 SETLIST                          R26 R27 -1 [1]
      249 CALL                             R23 3 -1
      250 SETLIST                          R19 R20 -1 [1]
      252 CALL                             R16 3 1
      253 MOVE                             R17 R3
      254 LOADK                            R18 K84 ["> #Contents"]
      255 DUPTABLE                         R19 K88 [{["Size"], ["BorderSizePixel"] = 0, ["ScrollBarThickness"] = 0}]
      256 GETIMPORT                        R20 K50 [UDim2.new]
      258 LOADN                            R21 1
      259 LOADN                            R22 0
      260 LOADN                            R23 1
      261 MINUS                            R24 R6
      262 CALL                             R20 4 1
      263 SETTABLEKS                       R20 R19 K47 ["Size"]
      265 NEWTABLE                         R20 0 5
      267 MOVE                             R21 R3
      268 LOADK                            R22 K40 ["::UIPadding"]
      269 DUPTABLE                         R23 K51 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      270 GETIMPORT                        R24 K39 [UDim.new]
      272 LOADN                            R25 0
      273 LOADN                            R26 16
      274 CALL                             R24 2 1
      275 SETTABLEKS                       R24 R23 K43 ["PaddingTop"]
      277 GETIMPORT                        R24 K39 [UDim.new]
      279 LOADN                            R25 0
      280 LOADN                            R26 16
      281 CALL                             R24 2 1
      282 SETTABLEKS                       R24 R23 K44 ["PaddingBottom"]
      284 GETIMPORT                        R24 K39 [UDim.new]
      286 LOADN                            R25 0
      287 LOADN                            R26 16
      288 CALL                             R24 2 1
      289 SETTABLEKS                       R24 R23 K41 ["PaddingLeft"]
      291 GETIMPORT                        R24 K39 [UDim.new]
      293 LOADN                            R25 0
      294 LOADN                            R26 16
      295 CALL                             R24 2 1
      296 SETTABLEKS                       R24 R23 K42 ["PaddingRight"]
      298 CALL                             R21 2 1
      299 MOVE                             R22 R3
      300 LOADK                            R23 K89 ["> #Layout"]
      301 DUPTABLE                         R24 K72 [{"Padding"}]
      302 GETIMPORT                        R25 K39 [UDim.new]
      304 LOADN                            R26 0
      305 JUMPIFNOT                        R10 ; [+2]
      306 LOADN                            R27 12
      307 JUMP                             ; [+1]
      308 LOADN                            R27 24
      309 CALL                             R25 2 1
      310 SETTABLEKS                       R25 R24 K71 ["Padding"]
      312 CALL                             R22 2 1
      313 MOVE                             R23 R3
      314 LOADK                            R24 K90 [">> #ByDateRange"]
      315 NEWTABLE                         R25 0 0
      317 NEWTABLE                         R26 0 3
      319 MOVE                             R27 R3
      320 LOADK                            R28 K52 ["::UIListLayout"]
      321 DUPTABLE                         R29 K72 [{"Padding"}]
      322 GETIMPORT                        R30 K39 [UDim.new]
      324 LOADN                            R31 0
      325 MOVE                             R32 R5
      326 CALL                             R30 2 1
      327 SETTABLEKS                       R30 R29 K71 ["Padding"]
      329 CALL                             R27 2 1
      330 MOVE                             R28 R3
      331 LOADK                            R29 K91 ["> #Label"]
      332 DUPTABLE                         R30 K93 [{["AutomaticSize"], ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["BackgroundTransparency"] = 1}]
      333 GETIMPORT                        R31 K67 [Enum.AutomaticSize.Y]
      335 SETTABLEKS                       R31 R30 K60 ["AutomaticSize"]
      337 SETTABLEKS                       R8 R30 K63 ["TextSize"]
      339 JUMPIFNOT                        R10 ; [+2]
      340 LOADK                            R31 K32 ["$FoundationColorsContentEmphasis"]
      341 JUMP                             ; [+1]
      342 LOADK                            R31 K33 ["$TextPrimary"]
      343 SETTABLEKS                       R31 R30 K30 ["TextColor3"]
      345 GETIMPORT                        R31 K69 [Enum.TextXAlignment.Left]
      347 SETTABLEKS                       R31 R30 K64 ["TextXAlignment"]
      349 GETIMPORT                        R31 K95 [Enum.TextYAlignment.Center]
      351 SETTABLEKS                       R31 R30 K92 ["TextYAlignment"]
      353 CALL                             R28 2 1
      354 MOVE                             R29 R3
      355 LOADK                            R30 K96 ["> #ByDateRangeFilter"]
      356 DUPTABLE                         R31 K97 [{"Size", "AutomaticSize"}]
      357 GETIMPORT                        R32 K50 [UDim2.new]
      359 LOADN                            R33 1
      360 LOADN                            R34 0
      361 LOADN                            R35 0
      362 LOADN                            R36 0
      363 CALL                             R32 4 1
      364 SETTABLEKS                       R32 R31 K47 ["Size"]
      366 GETIMPORT                        R32 K67 [Enum.AutomaticSize.Y]
      368 SETTABLEKS                       R32 R31 K60 ["AutomaticSize"]
      370 CALL                             R29 2 -1
      371 SETLIST                          R26 R27 -1 [1]
      373 CALL                             R23 3 1
      374 MOVE                             R24 R3
      375 LOADK                            R25 K98 [">> .Component-FilterMenu-By"]
      376 DUPTABLE                         R26 K99 [{["Size"], ["BackgroundTransparency"] = 1}]
      377 GETIMPORT                        R27 K50 [UDim2.new]
      379 LOADN                            R28 1
      380 LOADN                            R29 0
      381 LOADN                            R30 0
      382 GETTABLEKS                       R31 R2 K100 ["byHeight"]
      384 CALL                             R27 4 1
      385 SETTABLEKS                       R27 R26 K47 ["Size"]
      387 NEWTABLE                         R27 0 2
      389 MOVE                             R28 R3
      390 LOADK                            R29 K91 ["> #Label"]
      391 DUPTABLE                         R30 K102 [{["Position"], ["Size"], ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["BackgroundTransparency"] = 1}]
      392 GETIMPORT                        R31 K50 [UDim2.new]
      394 LOADN                            R32 0
      395 LOADN                            R33 2
      396 LOADN                            R34 0
      397 LOADN                            R35 0
      398 CALL                             R31 4 1
      399 SETTABLEKS                       R31 R30 K101 ["Position"]
      401 GETIMPORT                        R31 K50 [UDim2.new]
      403 LOADK                            R32 K103 [0.5]
      404 LOADN                            R33 0
      405 LOADN                            R34 1
      406 LOADN                            R35 0
      407 CALL                             R31 4 1
      408 SETTABLEKS                       R31 R30 K47 ["Size"]
      410 SETTABLEKS                       R8 R30 K63 ["TextSize"]
      412 JUMPIFNOT                        R10 ; [+2]
      413 LOADK                            R31 K32 ["$FoundationColorsContentEmphasis"]
      414 JUMP                             ; [+1]
      415 LOADK                            R31 K33 ["$TextPrimary"]
      416 SETTABLEKS                       R31 R30 K30 ["TextColor3"]
      418 GETIMPORT                        R31 K69 [Enum.TextXAlignment.Left]
      420 SETTABLEKS                       R31 R30 K64 ["TextXAlignment"]
      422 GETIMPORT                        R31 K95 [Enum.TextYAlignment.Center]
      424 SETTABLEKS                       R31 R30 K92 ["TextYAlignment"]
      426 CALL                             R28 2 1
      427 MOVE                             R29 R3
      428 LOADK                            R30 K104 ["> #SelectAll"]
      429 DUPTABLE                         R31 K105 [{["Size"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["BackgroundTransparency"] = 1, ["TextColor3"]}]
      430 GETIMPORT                        R32 K50 [UDim2.new]
      432 LOADK                            R33 K103 [0.5]
      433 LOADN                            R34 0
      434 LOADN                            R35 1
      435 LOADN                            R36 0
      436 CALL                             R32 4 1
      437 SETTABLEKS                       R32 R31 K47 ["Size"]
      439 SETTABLEKS                       R8 R31 K63 ["TextSize"]
      441 GETIMPORT                        R32 K107 [Enum.TextXAlignment.Right]
      443 SETTABLEKS                       R32 R31 K64 ["TextXAlignment"]
      445 GETIMPORT                        R32 K95 [Enum.TextYAlignment.Center]
      447 SETTABLEKS                       R32 R31 K92 ["TextYAlignment"]
      449 JUMPIFNOT                        R10 ; [+2]
      450 LOADK                            R32 K32 ["$FoundationColorsContentEmphasis"]
      451 JUMP                             ; [+1]
      452 LOADK                            R32 K33 ["$TextPrimary"]
      453 SETTABLEKS                       R32 R31 K30 ["TextColor3"]
      455 NEWTABLE                         R32 0 1
      457 MOVE                             R33 R3
      458 LOADK                            R34 K76 [":hover"]
      459 DUPTABLE                         R35 K108 [{"TextColor3"}]
      460 JUMPIFNOT                        R10 ; [+2]
      461 LOADK                            R36 K109 ["$FoundationColorsContentMuted"]
      462 JUMP                             ; [+1]
      463 LOADK                            R36 K110 ["$TextSecondary"]
      464 SETTABLEKS                       R36 R35 K30 ["TextColor3"]
      466 CALL                             R33 2 -1
      467 SETLIST                          R32 R33 -1 [1]
      469 CALL                             R29 3 -1
      470 SETLIST                          R27 R28 -1 [1]
      472 CALL                             R24 3 1
      473 MOVE                             R25 R3
      474 LOADK                            R26 K111 [">> .Component-FilterMenu-CheckBoxes"]
      475 DUPTABLE                         R27 K48 [{"Size"}]
      476 GETIMPORT                        R28 K50 [UDim2.new]
      478 LOADN                            R29 1
      479 LOADN                            R30 0
      480 LOADN                            R31 0
      481 MOVE                             R32 R7
      482 CALL                             R28 4 1
      483 SETTABLEKS                       R28 R27 K47 ["Size"]
      485 NEWTABLE                         R28 0 4
      487 MOVE                             R29 R3
      488 LOADK                            R30 K52 ["::UIListLayout"]
      489 DUPTABLE                         R31 K72 [{"Padding"}]
      490 GETIMPORT                        R32 K39 [UDim.new]
      492 LOADN                            R33 0
      493 MOVE                             R34 R5
      494 CALL                             R32 2 1
      495 SETTABLEKS                       R32 R31 K71 ["Padding"]
      497 CALL                             R29 2 1
      498 MOVE                             R30 R3
      499 LOADK                            R31 K112 [">> #CheckboxContainer"]
      500 DUPTABLE                         R32 K48 [{"Size"}]
      501 GETIMPORT                        R33 K50 [UDim2.new]
      503 LOADN                            R34 0
      504 LOADN                            R35 24
      505 LOADN                            R36 0
      506 MOVE                             R37 R7
      507 CALL                             R33 4 1
      508 SETTABLEKS                       R33 R32 K47 ["Size"]
      510 CALL                             R30 2 1
      511 MOVE                             R31 R3
      512 LOADK                            R32 K113 [">> .Component-Checkbox"]
      513 DUPTABLE                         R33 K114 [{"Position"}]
      514 GETIMPORT                        R34 K50 [UDim2.new]
      516 LOADN                            R35 0
      517 LOADN                            R36 0
      518 LOADN                            R37 0
      519 DIVK                             R39 R7 K116 [2]
      520 SUBK                             R38 R39 K115 [12]
      521 CALL                             R34 4 1
      522 SETTABLEKS                       R34 R33 K101 ["Position"]
      524 CALL                             R31 2 1
      525 MOVE                             R32 R3
      526 LOADK                            R33 K117 [">> .Component-CheckboxButton"]
      527 DUPTABLE                         R34 K118 [{["TextColor3"], ["Size"], ["BackgroundTransparency"] = 1, ["TextSize"], ["TextXAlignment"], ["TextYAlignment"]}]
      528 JUMPIFNOT                        R10 ; [+2]
      529 LOADK                            R35 K32 ["$FoundationColorsContentEmphasis"]
      530 JUMP                             ; [+1]
      531 LOADK                            R35 K33 ["$TextPrimary"]
      532 SETTABLEKS                       R35 R34 K30 ["TextColor3"]
      534 GETIMPORT                        R35 K50 [UDim2.new]
      536 LOADN                            R36 1
      537 LOADN                            R37 -100
      538 LOADN                            R38 0
      539 MOVE                             R39 R7
      540 CALL                             R35 4 1
      541 SETTABLEKS                       R35 R34 K47 ["Size"]
      543 SETTABLEKS                       R8 R34 K63 ["TextSize"]
      545 GETIMPORT                        R35 K69 [Enum.TextXAlignment.Left]
      547 SETTABLEKS                       R35 R34 K64 ["TextXAlignment"]
      549 GETIMPORT                        R35 K95 [Enum.TextYAlignment.Center]
      551 SETTABLEKS                       R35 R34 K92 ["TextYAlignment"]
      553 CALL                             R32 2 -1
      554 SETLIST                          R28 R29 -1 [1]
      556 CALL                             R25 3 -1
      557 SETLIST                          R20 R21 -1 [1]
      559 CALL                             R17 3 -1
      560 SETLIST                          R14 R15 -1 [1]
      562 CALL                             R11 3 -1
      563 RETURN                           R11 -1
