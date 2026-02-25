MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K7 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Resources"]
       24 GETTABLEKS                       R3 R4 K9 ["StyleTips"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R4 R1 K10 ["Styling"]
       29 GETTABLEKS                       R3 R4 K11 ["createStyleRule"]
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
       62 DUPTABLE                         R17 K30 [{"AutoButtonColor", "TextColor3"}]
       63 LOADB                            R18 0
       64 SETTABLEKS                       R18 R17 K28 ["AutoButtonColor"]
       66 JUMPIFNOT                        R10 ; [+2]
       67 LOADK                            R18 K31 ["$FoundationColorsContentEmphasis"]
       68 JUMP                             ; [+1]
       69 LOADK                            R18 K32 ["$TextPrimary"]
       70 SETTABLEKS                       R18 R17 K29 ["TextColor3"]
       72 NEWTABLE                         R18 0 2
       74 MOVE                             R19 R3
       75 LOADK                            R20 K33 ["::UICorner"]
       76 DUPTABLE                         R21 K35 [{"CornerRadius"}]
       77 GETIMPORT                        R22 K38 [UDim.new]
       79 LOADN                            R23 0
       80 LOADN                            R24 4
       81 CALL                             R22 2 1
       82 SETTABLEKS                       R22 R21 K34 ["CornerRadius"]
       84 CALL                             R19 2 1
       85 MOVE                             R20 R3
       86 LOADK                            R21 K39 ["::UIPadding"]
       87 DUPTABLE                         R22 K44 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       88 GETIMPORT                        R23 K38 [UDim.new]
       90 LOADN                            R24 0
       91 MOVE                             R25 R4
       92 CALL                             R23 2 1
       93 SETTABLEKS                       R23 R22 K40 ["PaddingLeft"]
       95 GETIMPORT                        R23 K38 [UDim.new]
       97 LOADN                            R24 0
       98 MOVE                             R25 R4
       99 CALL                             R23 2 1
      100 SETTABLEKS                       R23 R22 K41 ["PaddingRight"]
      102 GETIMPORT                        R23 K38 [UDim.new]
      104 LOADN                            R24 0
      105 LOADN                            R25 0
      106 CALL                             R23 2 1
      107 SETTABLEKS                       R23 R22 K42 ["PaddingTop"]
      109 GETIMPORT                        R23 K38 [UDim.new]
      111 LOADN                            R24 0
      112 LOADN                            R25 0
      113 CALL                             R23 2 1
      114 SETTABLEKS                       R23 R22 K43 ["PaddingBottom"]
      116 CALL                             R20 2 -1
      117 SETLIST                          R18 R19 -1 [1]
      119 CALL                             R15 3 1
      120 MOVE                             R16 R3
      121 LOADK                            R17 K45 [">> #Header"]
      122 DUPTABLE                         R18 K47 [{"Size"}]
      123 GETIMPORT                        R19 K49 [UDim2.new]
      125 LOADN                            R20 1
      126 LOADN                            R21 0
      127 LOADN                            R22 0
      128 MOVE                             R23 R6
      129 CALL                             R19 4 1
      130 SETTABLEKS                       R19 R18 K46 ["Size"]
      132 NEWTABLE                         R19 0 4
      134 MOVE                             R20 R3
      135 LOADK                            R21 K39 ["::UIPadding"]
      136 DUPTABLE                         R22 K50 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      137 GETIMPORT                        R23 K38 [UDim.new]
      139 LOADN                            R24 0
      140 JUMPIFNOT                        R10 ; [+2]
      141 LOADN                            R25 2
      142 JUMP                             ; [+1]
      143 LOADN                            R25 4
      144 CALL                             R23 2 1
      145 SETTABLEKS                       R23 R22 K42 ["PaddingTop"]
      147 GETIMPORT                        R23 K38 [UDim.new]
      149 LOADN                            R24 0
      150 JUMPIFNOT                        R10 ; [+2]
      151 LOADN                            R25 1
      152 JUMP                             ; [+1]
      153 LOADN                            R25 4
      154 CALL                             R23 2 1
      155 SETTABLEKS                       R23 R22 K43 ["PaddingBottom"]
      157 GETIMPORT                        R23 K38 [UDim.new]
      159 LOADN                            R24 0
      160 LOADN                            R25 16
      161 CALL                             R23 2 1
      162 SETTABLEKS                       R23 R22 K40 ["PaddingLeft"]
      164 GETIMPORT                        R23 K38 [UDim.new]
      166 LOADN                            R24 0
      167 LOADN                            R25 16
      168 CALL                             R23 2 1
      169 SETTABLEKS                       R23 R22 K41 ["PaddingRight"]
      171 CALL                             R20 2 1
      172 MOVE                             R21 R3
      173 LOADK                            R22 K51 ["::UIListLayout"]
      174 DUPTABLE                         R23 K53 [{"HorizontalFlex"}]
      175 GETIMPORT                        R24 K57 [Enum.UIFlexAlignment.SpaceBetween]
      177 SETTABLEKS                       R24 R23 K52 ["HorizontalFlex"]
      179 CALL                             R21 2 1
      180 MOVE                             R22 R3
      181 LOADK                            R23 K58 ["> #Text"]
      182 DUPTABLE                         R24 K63 [{"Size", "AutomaticSize", "BackgroundTransparency", "TextSize", "TextColor3", "TextXAlignment"}]
      183 GETIMPORT                        R25 K49 [UDim2.new]
      185 LOADN                            R26 0
      186 LOADN                            R27 0
      187 LOADN                            R28 1
      188 LOADN                            R29 0
      189 CALL                             R25 4 1
      190 SETTABLEKS                       R25 R24 K46 ["Size"]
      192 GETIMPORT                        R25 K65 [Enum.AutomaticSize.Y]
      194 SETTABLEKS                       R25 R24 K59 ["AutomaticSize"]
      196 LOADN                            R25 1
      197 SETTABLEKS                       R25 R24 K60 ["BackgroundTransparency"]
      199 SETTABLEKS                       R9 R24 K61 ["TextSize"]
      201 JUMPIFNOT                        R10 ; [+2]
      202 LOADK                            R25 K31 ["$FoundationColorsContentEmphasis"]
      203 JUMP                             ; [+1]
      204 LOADK                            R25 K32 ["$TextPrimary"]
      205 SETTABLEKS                       R25 R24 K29 ["TextColor3"]
      207 GETIMPORT                        R25 K67 [Enum.TextXAlignment.Left]
      209 SETTABLEKS                       R25 R24 K62 ["TextXAlignment"]
      211 CALL                             R22 2 1
      212 MOVE                             R23 R3
      213 LOADK                            R24 K68 ["> #Buttons"]
      214 NEWTABLE                         R25 0 0
      216 NEWTABLE                         R26 0 3
      218 MOVE                             R27 R3
      219 LOADK                            R28 K51 ["::UIListLayout"]
      220 DUPTABLE                         R29 K70 [{"Padding"}]
      221 GETIMPORT                        R30 K38 [UDim.new]
      223 LOADN                            R31 0
      224 MOVE                             R32 R5
      225 CALL                             R30 2 1
      226 SETTABLEKS                       R30 R29 K69 ["Padding"]
      228 CALL                             R27 2 1
      229 MOVE                             R28 R3
      230 LOADK                            R29 K71 ["> #Clear"]
      231 DUPTABLE                         R30 K24 [{"BackgroundColor3"}]
      232 LOADK                            R31 K72 ["$SecondaryMain"]
      233 SETTABLEKS                       R31 R30 K23 ["BackgroundColor3"]
      235 NEWTABLE                         R31 0 1
      237 MOVE                             R32 R3
      238 LOADK                            R33 K73 [":hover"]
      239 DUPTABLE                         R34 K24 [{"BackgroundColor3"}]
      240 LOADK                            R35 K74 ["$SecondaryHoverBackground"]
      241 SETTABLEKS                       R35 R34 K23 ["BackgroundColor3"]
      243 CALL                             R32 2 -1
      244 SETLIST                          R31 R32 -1 [1]
      246 CALL                             R28 3 1
      247 MOVE                             R29 R3
      248 LOADK                            R30 K75 ["> #Apply"]
      249 DUPTABLE                         R31 K24 [{"BackgroundColor3"}]
      250 LOADK                            R32 K76 ["$PrimaryMain"]
      251 SETTABLEKS                       R32 R31 K23 ["BackgroundColor3"]
      253 NEWTABLE                         R32 0 1
      255 MOVE                             R33 R3
      256 LOADK                            R34 K73 [":hover"]
      257 DUPTABLE                         R35 K24 [{"BackgroundColor3"}]
      258 LOADK                            R36 K77 ["$PrimaryHoverBackground"]
      259 SETTABLEKS                       R36 R35 K23 ["BackgroundColor3"]
      261 CALL                             R33 2 -1
      262 SETLIST                          R32 R33 -1 [1]
      264 CALL                             R29 3 -1
      265 SETLIST                          R26 R27 -1 [1]
      267 CALL                             R23 3 -1
      268 SETLIST                          R19 R20 -1 [1]
      270 CALL                             R16 3 1
      271 MOVE                             R17 R3
      272 LOADK                            R18 K78 ["> #Contents"]
      273 DUPTABLE                         R19 K81 [{"Size", "BorderSizePixel", "ScrollBarThickness"}]
      274 GETIMPORT                        R20 K49 [UDim2.new]
      276 LOADN                            R21 1
      277 LOADN                            R22 0
      278 LOADN                            R23 1
      279 MINUS                            R24 R6
      280 CALL                             R20 4 1
      281 SETTABLEKS                       R20 R19 K46 ["Size"]
      283 LOADN                            R20 0
      284 SETTABLEKS                       R20 R19 K79 ["BorderSizePixel"]
      286 LOADN                            R20 0
      287 SETTABLEKS                       R20 R19 K80 ["ScrollBarThickness"]
      289 NEWTABLE                         R20 0 5
      291 MOVE                             R21 R3
      292 LOADK                            R22 K39 ["::UIPadding"]
      293 DUPTABLE                         R23 K50 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      294 GETIMPORT                        R24 K38 [UDim.new]
      296 LOADN                            R25 0
      297 LOADN                            R26 16
      298 CALL                             R24 2 1
      299 SETTABLEKS                       R24 R23 K42 ["PaddingTop"]
      301 GETIMPORT                        R24 K38 [UDim.new]
      303 LOADN                            R25 0
      304 LOADN                            R26 16
      305 CALL                             R24 2 1
      306 SETTABLEKS                       R24 R23 K43 ["PaddingBottom"]
      308 GETIMPORT                        R24 K38 [UDim.new]
      310 LOADN                            R25 0
      311 LOADN                            R26 16
      312 CALL                             R24 2 1
      313 SETTABLEKS                       R24 R23 K40 ["PaddingLeft"]
      315 GETIMPORT                        R24 K38 [UDim.new]
      317 LOADN                            R25 0
      318 LOADN                            R26 16
      319 CALL                             R24 2 1
      320 SETTABLEKS                       R24 R23 K41 ["PaddingRight"]
      322 CALL                             R21 2 1
      323 MOVE                             R22 R3
      324 LOADK                            R23 K82 ["> #Layout"]
      325 DUPTABLE                         R24 K70 [{"Padding"}]
      326 GETIMPORT                        R25 K38 [UDim.new]
      328 LOADN                            R26 0
      329 JUMPIFNOT                        R10 ; [+2]
      330 LOADN                            R27 12
      331 JUMP                             ; [+1]
      332 LOADN                            R27 24
      333 CALL                             R25 2 1
      334 SETTABLEKS                       R25 R24 K69 ["Padding"]
      336 CALL                             R22 2 1
      337 MOVE                             R23 R3
      338 LOADK                            R24 K83 [">> #ByDateRange"]
      339 NEWTABLE                         R25 0 0
      341 NEWTABLE                         R26 0 3
      343 MOVE                             R27 R3
      344 LOADK                            R28 K51 ["::UIListLayout"]
      345 DUPTABLE                         R29 K70 [{"Padding"}]
      346 GETIMPORT                        R30 K38 [UDim.new]
      348 LOADN                            R31 0
      349 MOVE                             R32 R5
      350 CALL                             R30 2 1
      351 SETTABLEKS                       R30 R29 K69 ["Padding"]
      353 CALL                             R27 2 1
      354 MOVE                             R28 R3
      355 LOADK                            R29 K84 ["> #Label"]
      356 DUPTABLE                         R30 K86 [{"AutomaticSize", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "BackgroundTransparency"}]
      357 GETIMPORT                        R31 K65 [Enum.AutomaticSize.Y]
      359 SETTABLEKS                       R31 R30 K59 ["AutomaticSize"]
      361 SETTABLEKS                       R8 R30 K61 ["TextSize"]
      363 JUMPIFNOT                        R10 ; [+2]
      364 LOADK                            R31 K31 ["$FoundationColorsContentEmphasis"]
      365 JUMP                             ; [+1]
      366 LOADK                            R31 K32 ["$TextPrimary"]
      367 SETTABLEKS                       R31 R30 K29 ["TextColor3"]
      369 GETIMPORT                        R31 K67 [Enum.TextXAlignment.Left]
      371 SETTABLEKS                       R31 R30 K62 ["TextXAlignment"]
      373 GETIMPORT                        R31 K88 [Enum.TextYAlignment.Center]
      375 SETTABLEKS                       R31 R30 K85 ["TextYAlignment"]
      377 LOADN                            R31 1
      378 SETTABLEKS                       R31 R30 K60 ["BackgroundTransparency"]
      380 CALL                             R28 2 1
      381 MOVE                             R29 R3
      382 LOADK                            R30 K89 ["> #ByDateRangeFilter"]
      383 DUPTABLE                         R31 K90 [{"Size", "AutomaticSize"}]
      384 GETIMPORT                        R32 K49 [UDim2.new]
      386 LOADN                            R33 1
      387 LOADN                            R34 0
      388 LOADN                            R35 0
      389 LOADN                            R36 0
      390 CALL                             R32 4 1
      391 SETTABLEKS                       R32 R31 K46 ["Size"]
      393 GETIMPORT                        R32 K65 [Enum.AutomaticSize.Y]
      395 SETTABLEKS                       R32 R31 K59 ["AutomaticSize"]
      397 CALL                             R29 2 -1
      398 SETLIST                          R26 R27 -1 [1]
      400 CALL                             R23 3 1
      401 MOVE                             R24 R3
      402 LOADK                            R25 K91 [">> .Component-FilterMenu-By"]
      403 DUPTABLE                         R26 K92 [{"Size", "BackgroundTransparency"}]
      404 GETIMPORT                        R27 K49 [UDim2.new]
      406 LOADN                            R28 1
      407 LOADN                            R29 0
      408 LOADN                            R30 0
      409 GETTABLEKS                       R31 R2 K93 ["byHeight"]
      411 CALL                             R27 4 1
      412 SETTABLEKS                       R27 R26 K46 ["Size"]
      414 LOADN                            R27 1
      415 SETTABLEKS                       R27 R26 K60 ["BackgroundTransparency"]
      417 NEWTABLE                         R27 0 2
      419 MOVE                             R28 R3
      420 LOADK                            R29 K84 ["> #Label"]
      421 DUPTABLE                         R30 K95 [{"Position", "Size", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "BackgroundTransparency"}]
      422 GETIMPORT                        R31 K49 [UDim2.new]
      424 LOADN                            R32 0
      425 LOADN                            R33 2
      426 LOADN                            R34 0
      427 LOADN                            R35 0
      428 CALL                             R31 4 1
      429 SETTABLEKS                       R31 R30 K94 ["Position"]
      431 GETIMPORT                        R31 K49 [UDim2.new]
      433 LOADK                            R32 K96 [0.5]
      434 LOADN                            R33 0
      435 LOADN                            R34 1
      436 LOADN                            R35 0
      437 CALL                             R31 4 1
      438 SETTABLEKS                       R31 R30 K46 ["Size"]
      440 SETTABLEKS                       R8 R30 K61 ["TextSize"]
      442 JUMPIFNOT                        R10 ; [+2]
      443 LOADK                            R31 K31 ["$FoundationColorsContentEmphasis"]
      444 JUMP                             ; [+1]
      445 LOADK                            R31 K32 ["$TextPrimary"]
      446 SETTABLEKS                       R31 R30 K29 ["TextColor3"]
      448 GETIMPORT                        R31 K67 [Enum.TextXAlignment.Left]
      450 SETTABLEKS                       R31 R30 K62 ["TextXAlignment"]
      452 GETIMPORT                        R31 K88 [Enum.TextYAlignment.Center]
      454 SETTABLEKS                       R31 R30 K85 ["TextYAlignment"]
      456 LOADN                            R31 1
      457 SETTABLEKS                       R31 R30 K60 ["BackgroundTransparency"]
      459 CALL                             R28 2 1
      460 MOVE                             R29 R3
      461 LOADK                            R30 K97 ["> #SelectAll"]
      462 DUPTABLE                         R31 K98 [{"Size", "TextSize", "TextXAlignment", "TextYAlignment", "BackgroundTransparency", "TextColor3"}]
      463 GETIMPORT                        R32 K49 [UDim2.new]
      465 LOADK                            R33 K96 [0.5]
      466 LOADN                            R34 0
      467 LOADN                            R35 1
      468 LOADN                            R36 0
      469 CALL                             R32 4 1
      470 SETTABLEKS                       R32 R31 K46 ["Size"]
      472 SETTABLEKS                       R8 R31 K61 ["TextSize"]
      474 GETIMPORT                        R32 K100 [Enum.TextXAlignment.Right]
      476 SETTABLEKS                       R32 R31 K62 ["TextXAlignment"]
      478 GETIMPORT                        R32 K88 [Enum.TextYAlignment.Center]
      480 SETTABLEKS                       R32 R31 K85 ["TextYAlignment"]
      482 LOADN                            R32 1
      483 SETTABLEKS                       R32 R31 K60 ["BackgroundTransparency"]
      485 JUMPIFNOT                        R10 ; [+2]
      486 LOADK                            R32 K31 ["$FoundationColorsContentEmphasis"]
      487 JUMP                             ; [+1]
      488 LOADK                            R32 K32 ["$TextPrimary"]
      489 SETTABLEKS                       R32 R31 K29 ["TextColor3"]
      491 NEWTABLE                         R32 0 1
      493 MOVE                             R33 R3
      494 LOADK                            R34 K73 [":hover"]
      495 DUPTABLE                         R35 K101 [{"TextColor3"}]
      496 JUMPIFNOT                        R10 ; [+2]
      497 LOADK                            R36 K102 ["$FoundationColorsContentMuted"]
      498 JUMP                             ; [+1]
      499 LOADK                            R36 K103 ["$TextSecondary"]
      500 SETTABLEKS                       R36 R35 K29 ["TextColor3"]
      502 CALL                             R33 2 -1
      503 SETLIST                          R32 R33 -1 [1]
      505 CALL                             R29 3 -1
      506 SETLIST                          R27 R28 -1 [1]
      508 CALL                             R24 3 1
      509 MOVE                             R25 R3
      510 LOADK                            R26 K104 [">> .Component-FilterMenu-CheckBoxes"]
      511 DUPTABLE                         R27 K47 [{"Size"}]
      512 GETIMPORT                        R28 K49 [UDim2.new]
      514 LOADN                            R29 1
      515 LOADN                            R30 0
      516 LOADN                            R31 0
      517 MOVE                             R32 R7
      518 CALL                             R28 4 1
      519 SETTABLEKS                       R28 R27 K46 ["Size"]
      521 NEWTABLE                         R28 0 4
      523 MOVE                             R29 R3
      524 LOADK                            R30 K51 ["::UIListLayout"]
      525 DUPTABLE                         R31 K70 [{"Padding"}]
      526 GETIMPORT                        R32 K38 [UDim.new]
      528 LOADN                            R33 0
      529 MOVE                             R34 R5
      530 CALL                             R32 2 1
      531 SETTABLEKS                       R32 R31 K69 ["Padding"]
      533 CALL                             R29 2 1
      534 MOVE                             R30 R3
      535 LOADK                            R31 K105 [">> #CheckboxContainer"]
      536 DUPTABLE                         R32 K47 [{"Size"}]
      537 GETIMPORT                        R33 K49 [UDim2.new]
      539 LOADN                            R34 0
      540 LOADN                            R35 24
      541 LOADN                            R36 0
      542 MOVE                             R37 R7
      543 CALL                             R33 4 1
      544 SETTABLEKS                       R33 R32 K46 ["Size"]
      546 CALL                             R30 2 1
      547 MOVE                             R31 R3
      548 LOADK                            R32 K106 [">> .Component-Checkbox"]
      549 DUPTABLE                         R33 K107 [{"Position"}]
      550 GETIMPORT                        R34 K49 [UDim2.new]
      552 LOADN                            R35 0
      553 LOADN                            R36 0
      554 LOADN                            R37 0
      555 DIVK                             R39 R7 K109 [2]
      556 SUBK                             R38 R39 K108 [12]
      557 CALL                             R34 4 1
      558 SETTABLEKS                       R34 R33 K94 ["Position"]
      560 CALL                             R31 2 1
      561 MOVE                             R32 R3
      562 LOADK                            R33 K110 [">> .Component-CheckboxButton"]
      563 DUPTABLE                         R34 K111 [{"TextColor3", "Size", "BackgroundTransparency", "TextSize", "TextXAlignment", "TextYAlignment"}]
      564 JUMPIFNOT                        R10 ; [+2]
      565 LOADK                            R35 K31 ["$FoundationColorsContentEmphasis"]
      566 JUMP                             ; [+1]
      567 LOADK                            R35 K32 ["$TextPrimary"]
      568 SETTABLEKS                       R35 R34 K29 ["TextColor3"]
      570 GETIMPORT                        R35 K49 [UDim2.new]
      572 LOADN                            R36 1
      573 LOADN                            R37 156
      574 LOADN                            R38 0
      575 MOVE                             R39 R7
      576 CALL                             R35 4 1
      577 SETTABLEKS                       R35 R34 K46 ["Size"]
      579 LOADN                            R35 1
      580 SETTABLEKS                       R35 R34 K60 ["BackgroundTransparency"]
      582 SETTABLEKS                       R8 R34 K61 ["TextSize"]
      584 GETIMPORT                        R35 K67 [Enum.TextXAlignment.Left]
      586 SETTABLEKS                       R35 R34 K62 ["TextXAlignment"]
      588 GETIMPORT                        R35 K88 [Enum.TextYAlignment.Center]
      590 SETTABLEKS                       R35 R34 K85 ["TextYAlignment"]
      592 CALL                             R32 2 -1
      593 SETLIST                          R28 R29 -1 [1]
      595 CALL                             R25 3 -1
      596 SETLIST                          R20 R21 -1 [1]
      598 CALL                             R17 3 -1
      599 SETLIST                          R14 R15 -1 [1]
      601 CALL                             R11 3 -1
      602 RETURN                           R11 -1
