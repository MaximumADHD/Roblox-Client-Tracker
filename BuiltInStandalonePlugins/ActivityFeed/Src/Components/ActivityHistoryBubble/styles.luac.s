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
       31 GETTABLEKS                       R4 R2 K12 ["bubbleTopHeight"]
       33 GETTABLEKS                       R5 R2 K13 ["bubbleMiddleHeight"]
       35 GETTABLEKS                       R6 R2 K14 ["bubbleBottomHeight"]
       37 GETTABLEKS                       R7 R2 K15 ["bubbleHeight"]
       39 GETTABLEKS                       R8 R2 K16 ["bubblePaddingHalf"]
       41 GETTABLEKS                       R9 R2 K17 ["defaultPadding"]
       43 GETTABLEKS                       R10 R2 K18 ["smallPadding"]
       45 GETIMPORT                        R11 K20 [game]
       47 LOADK                            R13 K21 ["ActivityHistoryCompactUI"]
       48 NAMECALL                         R11 R11 K22 ["GetFastFlag"]
       50 CALL                             R11 2 1
       51 MOVE                             R12 R3
       52 LOADK                            R13 K23 [".Component-ActivityHistoryBubble"]
       53 DUPTABLE                         R14 K27 [{"Size", "AutomaticSize", "BackgroundColor3"}]
       54 GETIMPORT                        R15 K30 [UDim2.new]
       56 LOADN                            R16 1
       57 LOADN                            R17 0
       58 LOADN                            R18 0
       59 JUMPIFNOT                        R11 ; [+2]
       60 LOADN                            R19 0
       61 JUMP                             ; [+1]
       62 MOVE                             R19 R7
       63 CALL                             R15 4 1
       64 SETTABLEKS                       R15 R14 K24 ["Size"]
       66 GETIMPORT                        R15 K33 [Enum.AutomaticSize.Y]
       68 SETTABLEKS                       R15 R14 K25 ["AutomaticSize"]
       70 JUMPIFNOT                        R11 ; [+2]
       71 LOADK                            R15 K34 ["$FoundationColorsBackgroundDefault"]
       72 JUMP                             ; [+1]
       73 LOADK                            R15 K35 ["$ForegroundMain"]
       74 SETTABLEKS                       R15 R14 K26 ["BackgroundColor3"]
       76 NEWTABLE                         R15 0 8
       78 MOVE                             R16 R3
       79 LOADK                            R17 K36 ["::UICorner"]
       80 DUPTABLE                         R18 K38 [{"CornerRadius"}]
       81 GETIMPORT                        R19 K40 [UDim.new]
       83 LOADN                            R20 0
       84 JUMPIF                           R11 ; [+3]
       85 GETTABLEKS                       R21 R2 K41 ["bubbleCornerRadius"]
       87 JUMPIF                           R21 ; [+1]
       88 LOADN                            R21 0
       89 CALL                             R19 2 1
       90 SETTABLEKS                       R19 R18 K37 ["CornerRadius"]
       92 CALL                             R16 2 1
       93 MOVE                             R17 R3
       94 LOADK                            R18 K42 ["::UIStroke"]
       95 DUPTABLE                         R19 K45 [{"Color", "Thickness"}]
       96 JUMPIFNOT                        R11 ; [+2]
       97 LOADK                            R20 K46 ["$FoundationColorsShift300"]
       98 JUMP                             ; [+1]
       99 LOADK                            R20 K47 ["$Divider"]
      100 SETTABLEKS                       R20 R19 K43 ["Color"]
      102 LOADN                            R20 1
      103 SETTABLEKS                       R20 R19 K44 ["Thickness"]
      105 CALL                             R17 2 1
      106 MOVE                             R18 R3
      107 LOADK                            R19 K48 ["::UIPadding"]
      108 DUPTABLE                         R20 K53 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      109 GETIMPORT                        R21 K40 [UDim.new]
      111 LOADN                            R22 0
      112 MOVE                             R23 R8
      113 CALL                             R21 2 1
      114 SETTABLEKS                       R21 R20 K49 ["PaddingTop"]
      116 GETIMPORT                        R21 K40 [UDim.new]
      118 LOADN                            R22 0
      119 MOVE                             R23 R8
      120 CALL                             R21 2 1
      121 SETTABLEKS                       R21 R20 K50 ["PaddingBottom"]
      123 GETIMPORT                        R21 K40 [UDim.new]
      125 LOADN                            R22 0
      126 MOVE                             R23 R8
      127 CALL                             R21 2 1
      128 SETTABLEKS                       R21 R20 K51 ["PaddingLeft"]
      130 GETIMPORT                        R21 K40 [UDim.new]
      132 LOADN                            R22 0
      133 MOVE                             R23 R8
      134 CALL                             R21 2 1
      135 SETTABLEKS                       R21 R20 K52 ["PaddingRight"]
      137 CALL                             R18 2 1
      138 MOVE                             R19 R3
      139 LOADK                            R20 K54 [":hover"]
      140 DUPTABLE                         R21 K55 [{"BackgroundColor3"}]
      141 JUMPIFNOT                        R11 ; [+2]
      142 LOADK                            R22 K56 ["$FoundationColorsShift100"]
      143 JUMP                             ; [+1]
      144 LOADK                            R22 K57 ["$ForegroundContrast"]
      145 SETTABLEKS                       R22 R21 K26 ["BackgroundColor3"]
      147 CALL                             R19 2 1
      148 MOVE                             R20 R3
      149 LOADK                            R21 K58 [">> TextLabel"]
      150 DUPTABLE                         R22 K61 [{"TextColor3", "BackgroundTransparency"}]
      151 JUMPIFNOT                        R11 ; [+2]
      152 LOADK                            R23 K62 ["$FoundationColorsContentEmphasis"]
      153 JUMP                             ; [+1]
      154 LOADK                            R23 K63 ["$TextPrimary"]
      155 SETTABLEKS                       R23 R22 K59 ["TextColor3"]
      157 LOADN                            R23 1
      158 SETTABLEKS                       R23 R22 K60 ["BackgroundTransparency"]
      160 CALL                             R20 2 1
      161 MOVE                             R21 R3
      162 LOADK                            R22 K64 ["> #Left"]
      163 DUPTABLE                         R23 K65 [{"Size"}]
      164 GETIMPORT                        R24 K30 [UDim2.new]
      166 LOADN                            R25 0
      167 LOADN                            R26 36
      168 LOADN                            R27 1
      169 LOADN                            R28 0
      170 CALL                             R24 4 1
      171 SETTABLEKS                       R24 R23 K24 ["Size"]
      173 NEWTABLE                         R24 0 4
      175 MOVE                             R25 R3
      176 LOADK                            R26 K66 ["> #Icon"]
      177 DUPTABLE                         R27 K68 [{"Position", "Size"}]
      178 GETIMPORT                        R28 K30 [UDim2.new]
      180 LOADN                            R29 0
      181 LOADN                            R30 0
      182 LOADN                            R31 0
      183 LOADN                            R32 0
      184 CALL                             R28 4 1
      185 SETTABLEKS                       R28 R27 K67 ["Position"]
      187 GETIMPORT                        R28 K30 [UDim2.new]
      189 LOADN                            R29 0
      190 LOADN                            R30 36
      191 LOADN                            R31 0
      192 LOADN                            R32 36
      193 CALL                             R28 4 1
      194 SETTABLEKS                       R28 R27 K24 ["Size"]
      196 CALL                             R25 2 1
      197 MOVE                             R26 R3
      198 LOADK                            R27 K69 ["> .RoundIcon"]
      199 NEWTABLE                         R28 0 0
      201 NEWTABLE                         R29 0 1
      203 MOVE                             R30 R3
      204 LOADK                            R31 K36 ["::UICorner"]
      205 DUPTABLE                         R32 K38 [{"CornerRadius"}]
      206 GETIMPORT                        R33 K40 [UDim.new]
      208 LOADN                            R34 0
      209 LOADN                            R35 18
      210 CALL                             R33 2 1
      211 SETTABLEKS                       R33 R32 K37 ["CornerRadius"]
      213 CALL                             R30 2 -1
      214 SETLIST                          R29 R30 -1 [1]
      216 CALL                             R26 3 1
      217 MOVE                             R27 R3
      218 LOADK                            R28 K70 ["> .SquareIcon"]
      219 NEWTABLE                         R29 0 0
      221 NEWTABLE                         R30 0 1
      223 MOVE                             R31 R3
      224 LOADK                            R32 K36 ["::UICorner"]
      225 DUPTABLE                         R33 K38 [{"CornerRadius"}]
      226 GETIMPORT                        R34 K40 [UDim.new]
      228 LOADN                            R35 0
      229 LOADN                            R36 5
      230 CALL                             R34 2 1
      231 SETTABLEKS                       R34 R33 K37 ["CornerRadius"]
      233 CALL                             R31 2 -1
      234 SETLIST                          R30 R31 -1 [1]
      236 CALL                             R27 3 1
      237 MOVE                             R28 R3
      238 LOADK                            R29 K71 [">.ScriptIcon"]
      239 DUPTABLE                         R30 K73 [{"Image"}]
      240 LOADK                            R31 K74 ["$scripticon"]
      241 SETTABLEKS                       R31 R30 K72 ["Image"]
      243 CALL                             R28 2 -1
      244 SETLIST                          R24 R25 -1 [1]
      246 CALL                             R21 3 1
      247 MOVE                             R22 R3
      248 LOADK                            R23 K75 ["> #Right"]
      249 DUPTABLE                         R24 K65 [{"Size"}]
      250 GETIMPORT                        R25 K30 [UDim2.new]
      252 LOADN                            R26 1
      253 LOADN                            R27 220
      254 LOADN                            R28 1
      255 LOADN                            R29 0
      256 CALL                             R25 4 1
      257 SETTABLEKS                       R25 R24 K24 ["Size"]
      259 NEWTABLE                         R25 0 5
      261 MOVE                             R26 R3
      262 LOADK                            R27 K48 ["::UIPadding"]
      263 DUPTABLE                         R28 K76 [{"PaddingLeft"}]
      264 GETIMPORT                        R29 K40 [UDim.new]
      266 LOADN                            R30 0
      267 MOVE                             R31 R9
      268 CALL                             R29 2 1
      269 SETTABLEKS                       R29 R28 K51 ["PaddingLeft"]
      271 CALL                             R26 2 1
      272 MOVE                             R27 R3
      273 LOADK                            R28 K58 [">> TextLabel"]
      274 DUPTABLE                         R29 K79 [{"TextXAlignment", "TextYAlignment"}]
      275 GETIMPORT                        R30 K81 [Enum.TextXAlignment.Left]
      277 SETTABLEKS                       R30 R29 K77 ["TextXAlignment"]
      279 GETIMPORT                        R30 K83 [Enum.TextYAlignment.Center]
      281 SETTABLEKS                       R30 R29 K78 ["TextYAlignment"]
      283 CALL                             R27 2 1
      284 MOVE                             R28 R3
      285 LOADK                            R29 K84 ["> #Top"]
      286 DUPTABLE                         R30 K65 [{"Size"}]
      287 GETIMPORT                        R31 K30 [UDim2.new]
      289 LOADN                            R32 1
      290 LOADN                            R33 0
      291 LOADN                            R34 0
      292 MOVE                             R35 R4
      293 CALL                             R31 4 1
      294 SETTABLEKS                       R31 R30 K24 ["Size"]
      296 NEWTABLE                         R31 0 3
      298 MOVE                             R32 R3
      299 LOADK                            R33 K85 ["> #DotDotDot"]
      300 DUPTABLE                         R34 K65 [{"Size"}]
      301 GETIMPORT                        R35 K30 [UDim2.new]
      303 LOADN                            R36 0
      304 MOVE                             R37 R4
      305 LOADN                            R38 0
      306 MOVE                             R39 R4
      307 CALL                             R35 4 1
      308 SETTABLEKS                       R35 R34 K24 ["Size"]
      310 NEWTABLE                         R35 0 1
      312 MOVE                             R36 R3
      313 LOADK                            R37 K86 ["> ImageButton"]
      314 DUPTABLE                         R38 K89 [{"BorderSizePixel", "Image", "ScaleType", "BackgroundColor3"}]
      315 LOADN                            R39 0
      316 SETTABLEKS                       R39 R38 K87 ["BorderSizePixel"]
      318 LOADK                            R39 K90 ["$threedotsicon"]
      319 SETTABLEKS                       R39 R38 K72 ["Image"]
      321 GETIMPORT                        R39 K92 [Enum.ScaleType.Fit]
      323 SETTABLEKS                       R39 R38 K88 ["ScaleType"]
      325 JUMPIFNOT                        R11 ; [+2]
      326 LOADK                            R39 K56 ["$FoundationColorsShift100"]
      327 JUMP                             ; [+1]
      328 LOADK                            R39 K57 ["$ForegroundContrast"]
      329 SETTABLEKS                       R39 R38 K26 ["BackgroundColor3"]
      331 NEWTABLE                         R39 0 2
      333 MOVE                             R40 R3
      334 LOADK                            R41 K54 [":hover"]
      335 DUPTABLE                         R42 K55 [{"BackgroundColor3"}]
      336 JUMPIFNOT                        R11 ; [+2]
      337 LOADK                            R43 K93 ["$FoundationColorsShift400"]
      338 JUMP                             ; [+1]
      339 LOADK                            R43 K94 ["$ActionHover"]
      340 SETTABLEKS                       R43 R42 K26 ["BackgroundColor3"]
      342 CALL                             R40 2 1
      343 MOVE                             R41 R3
      344 LOADK                            R42 K36 ["::UICorner"]
      345 DUPTABLE                         R43 K38 [{"CornerRadius"}]
      346 GETIMPORT                        R44 K40 [UDim.new]
      348 LOADN                            R45 0
      349 LOADN                            R46 2
      350 CALL                             R44 2 1
      351 SETTABLEKS                       R44 R43 K37 ["CornerRadius"]
      353 CALL                             R41 2 -1
      354 SETLIST                          R39 R40 -1 [1]
      356 CALL                             R36 3 -1
      357 SETLIST                          R35 R36 -1 [1]
      359 CALL                             R32 3 1
      360 MOVE                             R33 R3
      361 LOADK                            R34 K95 ["> #Date"]
      362 JUMPIFNOT                        R11 ; [+3]
      363 NEWTABLE                         R35 0 0
      365 JUMPIF                           R35 ; [+17]
      366 DUPTABLE                         R35 K97 [{"Size", "TextSize", "TextColor3"}]
      367 GETIMPORT                        R36 K30 [UDim2.new]
      369 LOADN                            R37 1
      370 MINUS                            R38 R4
      371 LOADN                            R39 1
      372 LOADN                            R40 0
      373 CALL                             R36 4 1
      374 SETTABLEKS                       R36 R35 K24 ["Size"]
      376 GETTABLEKS                       R36 R2 K98 ["detailFontSize"]
      378 SETTABLEKS                       R36 R35 K96 ["TextSize"]
      380 LOADK                            R36 K63 ["$TextPrimary"]
      381 SETTABLEKS                       R36 R35 K59 ["TextColor3"]
      383 CALL                             R33 2 1
      384 MOVE                             R34 R3
      385 LOADK                            R35 K99 ["> #Info"]
      386 JUMPIFNOT                        R11 ; [+11]
      387 DUPTABLE                         R36 K65 [{"Size"}]
      388 GETIMPORT                        R37 K30 [UDim2.new]
      390 LOADN                            R38 1
      391 MINUS                            R39 R4
      392 LOADN                            R40 1
      393 LOADN                            R41 0
      394 CALL                             R37 4 1
      395 SETTABLEKS                       R37 R36 K24 ["Size"]
      397 JUMPIF                           R36 ; [+2]
      398 NEWTABLE                         R36 0 0
      400 JUMPIFNOT                        R11 ; [+108]
      401 NEWTABLE                         R37 0 3
      403 MOVE                             R38 R3
      404 LOADK                            R39 K100 ["::UIListLayout"]
      405 DUPTABLE                         R40 K102 [{"Padding"}]
      406 GETIMPORT                        R41 K40 [UDim.new]
      408 LOADN                            R42 0
      409 LOADN                            R43 4
      410 CALL                             R41 2 1
      411 SETTABLEKS                       R41 R40 K101 ["Padding"]
      413 CALL                             R38 2 1
      414 MOVE                             R39 R3
      415 LOADK                            R40 K103 ["> TextLabel, >> TextLabel"]
      416 DUPTABLE                         R41 K104 [{"AutomaticSize", "TextSize", "TextColor3"}]
      417 GETIMPORT                        R42 K106 [Enum.AutomaticSize.XY]
      419 SETTABLEKS                       R42 R41 K25 ["AutomaticSize"]
      421 GETTABLEKS                       R42 R2 K98 ["detailFontSize"]
      423 SETTABLEKS                       R42 R41 K96 ["TextSize"]
      425 JUMPIFNOT                        R11 ; [+2]
      426 LOADK                            R42 K107 ["$FoundationColorsContentMuted"]
      427 JUMP                             ; [+1]
      428 LOADK                            R42 K108 ["$TextSecondary"]
      429 SETTABLEKS                       R42 R41 K59 ["TextColor3"]
      431 CALL                             R39 2 1
      432 MOVE                             R40 R3
      433 LOADK                            R41 K109 ["> #TargetNameContainer"]
      434 DUPTABLE                         R42 K110 [{"AutomaticSize"}]
      435 GETIMPORT                        R43 K106 [Enum.AutomaticSize.XY]
      437 SETTABLEKS                       R43 R42 K25 ["AutomaticSize"]
      439 NEWTABLE                         R43 0 1
      441 MOVE                             R44 R3
      442 LOADK                            R45 K111 ["> #MiniUserIconContainer"]
      443 DUPTABLE                         R46 K112 [{"Size", "AutomaticSize"}]
      444 GETIMPORT                        R47 K30 [UDim2.new]
      446 LOADN                            R48 0
      447 LOADN                            R49 0
      448 LOADN                            R50 1
      449 LOADN                            R51 0
      450 CALL                             R47 4 1
      451 SETTABLEKS                       R47 R46 K24 ["Size"]
      453 GETIMPORT                        R47 K114 [Enum.AutomaticSize.X]
      455 SETTABLEKS                       R47 R46 K25 ["AutomaticSize"]
      457 NEWTABLE                         R47 0 3
      459 MOVE                             R48 R3
      460 LOADK                            R49 K48 ["::UIPadding"]
      461 DUPTABLE                         R50 K115 [{"PaddingRight"}]
      462 GETIMPORT                        R51 K40 [UDim.new]
      464 LOADN                            R52 0
      465 LOADN                            R53 2
      466 CALL                             R51 2 1
      467 SETTABLEKS                       R51 R50 K52 ["PaddingRight"]
      469 CALL                             R48 2 1
      470 MOVE                             R49 R3
      471 LOADK                            R50 K100 ["::UIListLayout"]
      472 DUPTABLE                         R51 K117 [{"VerticalAlignment"}]
      473 GETIMPORT                        R52 K118 [Enum.VerticalAlignment.Center]
      475 SETTABLEKS                       R52 R51 K116 ["VerticalAlignment"]
      477 CALL                             R49 2 1
      478 MOVE                             R50 R3
      479 LOADK                            R51 K119 ["> #MiniUserIcon"]
      480 DUPTABLE                         R52 K120 [{"Size", "BorderSizePixel", "BackgroundTransparency", "Image"}]
      481 GETIMPORT                        R53 K30 [UDim2.new]
      483 LOADN                            R54 0
      484 LOADN                            R55 12
      485 LOADN                            R56 0
      486 LOADN                            R57 12
      487 CALL                             R53 4 1
      488 SETTABLEKS                       R53 R52 K24 ["Size"]
      490 LOADN                            R53 0
      491 SETTABLEKS                       R53 R52 K87 ["BorderSizePixel"]
      493 LOADN                            R53 1
      494 SETTABLEKS                       R53 R52 K60 ["BackgroundTransparency"]
      496 LOADK                            R53 K121 ["$miniuser"]
      497 SETTABLEKS                       R53 R52 K72 ["Image"]
      499 CALL                             R50 2 -1
      500 SETLIST                          R47 R48 -1 [1]
      502 CALL                             R44 3 -1
      503 SETLIST                          R43 R44 -1 [1]
      505 CALL                             R40 3 -1
      506 SETLIST                          R37 R38 -1 [1]
      508 JUMPIF                           R37 ; [+2]
      509 NEWTABLE                         R37 0 0
      511 CALL                             R34 3 -1
      512 SETLIST                          R31 R32 -1 [1]
      514 CALL                             R28 3 1
      515 MOVE                             R29 R3
      516 LOADK                            R30 K122 ["> #Middle"]
      517 DUPTABLE                         R31 K112 [{"Size", "AutomaticSize"}]
      518 GETIMPORT                        R32 K30 [UDim2.new]
      520 LOADN                            R33 1
      521 LOADN                            R34 0
      522 LOADN                            R35 0
      523 MOVE                             R36 R5
      524 CALL                             R32 4 1
      525 SETTABLEKS                       R32 R31 K24 ["Size"]
      527 GETIMPORT                        R32 K33 [Enum.AutomaticSize.Y]
      529 SETTABLEKS                       R32 R31 K25 ["AutomaticSize"]
      531 NEWTABLE                         R32 0 2
      533 MOVE                             R33 R3
      534 LOADK                            R34 K48 ["::UIPadding"]
      535 DUPTABLE                         R35 K123 [{"PaddingBottom"}]
      536 GETIMPORT                        R36 K40 [UDim.new]
      538 LOADN                            R37 0
      539 MOVE                             R38 R9
      540 CALL                             R36 2 1
      541 SETTABLEKS                       R36 R35 K50 ["PaddingBottom"]
      543 CALL                             R33 2 1
      544 MOVE                             R34 R3
      545 LOADK                            R35 K124 ["> #Description"]
      546 DUPTABLE                         R36 K110 [{"AutomaticSize"}]
      547 GETIMPORT                        R37 K106 [Enum.AutomaticSize.XY]
      549 SETTABLEKS                       R37 R36 K25 ["AutomaticSize"]
      551 NEWTABLE                         R37 0 4
      553 MOVE                             R38 R3
      554 LOADK                            R39 K100 ["::UIListLayout"]
      555 DUPTABLE                         R40 K126 [{"HorizontalFlex"}]
      556 GETIMPORT                        R41 K129 [Enum.UIFlexAlignment.Fill]
      558 SETTABLEKS                       R41 R40 K125 ["HorizontalFlex"]
      560 CALL                             R38 2 1
      561 MOVE                             R39 R3
      562 LOADK                            R40 K130 [">> #LinkButton"]
      563 DUPTABLE                         R41 K131 [{"TextColor3"}]
      564 LOADK                            R42 K132 ["$TextLink"]
      565 SETTABLEKS                       R42 R41 K59 ["TextColor3"]
      567 CALL                             R39 2 1
      568 MOVE                             R40 R3
      569 LOADK                            R41 K133 [">> #ShowMore"]
      570 DUPTABLE                         R42 K131 [{"TextColor3"}]
      571 LOADK                            R43 K132 ["$TextLink"]
      572 SETTABLEKS                       R43 R42 K59 ["TextColor3"]
      574 CALL                             R40 2 1
      575 MOVE                             R41 R3
      576 LOADK                            R42 K134 ["> .SecondaryText >> TextLabel"]
      577 DUPTABLE                         R43 K131 [{"TextColor3"}]
      578 LOADK                            R44 K135 ["$SecondaryContrast"]
      579 SETTABLEKS                       R44 R43 K59 ["TextColor3"]
      581 CALL                             R41 2 -1
      582 SETLIST                          R37 R38 -1 [1]
      584 CALL                             R34 3 -1
      585 SETLIST                          R32 R33 -1 [1]
      587 CALL                             R29 3 1
      588 MOVE                             R30 R3
      589 LOADK                            R31 K136 ["> #Bottom"]
      590 DUPTABLE                         R32 K112 [{"Size", "AutomaticSize"}]
      591 GETIMPORT                        R33 K30 [UDim2.new]
      593 LOADN                            R34 0
      594 LOADN                            R35 0
      595 LOADN                            R36 0
      596 MOVE                             R37 R6
      597 CALL                             R33 4 1
      598 SETTABLEKS                       R33 R32 K24 ["Size"]
      600 GETIMPORT                        R33 K114 [Enum.AutomaticSize.X]
      602 SETTABLEKS                       R33 R32 K25 ["AutomaticSize"]
      604 NEWTABLE                         R33 0 4
      606 MOVE                             R34 R3
      607 LOADK                            R35 K36 ["::UICorner"]
      608 DUPTABLE                         R36 K38 [{"CornerRadius"}]
      609 GETIMPORT                        R37 K40 [UDim.new]
      611 LOADN                            R38 0
      612 LOADN                            R39 2
      613 CALL                             R37 2 1
      614 SETTABLEKS                       R37 R36 K37 ["CornerRadius"]
      616 CALL                             R34 2 1
      617 MOVE                             R35 R3
      618 LOADK                            R36 K54 [":hover"]
      619 DUPTABLE                         R37 K55 [{"BackgroundColor3"}]
      620 JUMPIFNOT                        R11 ; [+2]
      621 LOADK                            R38 K93 ["$FoundationColorsShift400"]
      622 JUMP                             ; [+1]
      623 LOADK                            R38 K94 ["$ActionHover"]
      624 SETTABLEKS                       R38 R37 K26 ["BackgroundColor3"]
      626 CALL                             R35 2 1
      627 MOVE                             R36 R3
      628 LOADK                            R37 K137 ["> #IconFrame"]
      629 DUPTABLE                         R38 K110 [{"AutomaticSize"}]
      630 GETIMPORT                        R39 K106 [Enum.AutomaticSize.XY]
      632 SETTABLEKS                       R39 R38 K25 ["AutomaticSize"]
      634 NEWTABLE                         R39 0 2
      636 MOVE                             R40 R3
      637 LOADK                            R41 K48 ["::UIPadding"]
      638 DUPTABLE                         R42 K115 [{"PaddingRight"}]
      639 GETIMPORT                        R43 K40 [UDim.new]
      641 LOADN                            R44 0
      642 MOVE                             R45 R10
      643 CALL                             R43 2 1
      644 SETTABLEKS                       R43 R42 K52 ["PaddingRight"]
      646 CALL                             R40 2 1
      647 MOVE                             R41 R3
      648 LOADK                            R42 K66 ["> #Icon"]
      649 DUPTABLE                         R43 K65 [{"Size"}]
      650 GETIMPORT                        R44 K30 [UDim2.new]
      652 LOADN                            R45 0
      653 LOADN                            R46 16
      654 LOADN                            R47 0
      655 LOADN                            R48 16
      656 CALL                             R44 4 1
      657 SETTABLEKS                       R44 R43 K24 ["Size"]
      659 NEWTABLE                         R44 0 1
      661 MOVE                             R45 R3
      662 LOADK                            R46 K36 ["::UICorner"]
      663 DUPTABLE                         R47 K38 [{"CornerRadius"}]
      664 GETIMPORT                        R48 K40 [UDim.new]
      666 LOADN                            R49 0
      667 LOADN                            R50 8
      668 CALL                             R48 2 1
      669 SETTABLEKS                       R48 R47 K37 ["CornerRadius"]
      671 CALL                             R45 2 -1
      672 SETLIST                          R44 R45 -1 [1]
      674 CALL                             R41 3 -1
      675 SETLIST                          R39 R40 -1 [1]
      677 CALL                             R36 3 1
      678 MOVE                             R37 R3
      679 LOADK                            R38 K138 ["> #TargetName"]
      680 DUPTABLE                         R39 K139 [{"Size", "AutomaticSize", "TextSize", "TextColor3", "TextXAlignment", "TextYAlignment", "BackgroundTransparency"}]
      681 GETIMPORT                        R40 K30 [UDim2.new]
      683 LOADN                            R41 0
      684 LOADN                            R42 0
      685 LOADN                            R43 1
      686 LOADN                            R44 0
      687 CALL                             R40 4 1
      688 SETTABLEKS                       R40 R39 K24 ["Size"]
      690 GETIMPORT                        R40 K114 [Enum.AutomaticSize.X]
      692 SETTABLEKS                       R40 R39 K25 ["AutomaticSize"]
      694 GETTABLEKS                       R40 R2 K98 ["detailFontSize"]
      696 SETTABLEKS                       R40 R39 K96 ["TextSize"]
      698 LOADK                            R40 K63 ["$TextPrimary"]
      699 SETTABLEKS                       R40 R39 K59 ["TextColor3"]
      701 GETIMPORT                        R40 K81 [Enum.TextXAlignment.Left]
      703 SETTABLEKS                       R40 R39 K77 ["TextXAlignment"]
      705 GETIMPORT                        R40 K83 [Enum.TextYAlignment.Center]
      707 SETTABLEKS                       R40 R39 K78 ["TextYAlignment"]
      709 LOADN                            R40 1
      710 SETTABLEKS                       R40 R39 K60 ["BackgroundTransparency"]
      712 NEWTABLE                         R40 0 1
      714 MOVE                             R41 R3
      715 LOADK                            R42 K54 [":hover"]
      716 DUPTABLE                         R43 K141 [{"Font"}]
      717 GETTABLEKS                       R44 R2 K142 ["boldedFont"]
      719 SETTABLEKS                       R44 R43 K140 ["Font"]
      721 CALL                             R41 2 -1
      722 SETLIST                          R40 R41 -1 [1]
      724 CALL                             R37 3 -1
      725 SETLIST                          R33 R34 -1 [1]
      727 CALL                             R30 3 -1
      728 SETLIST                          R25 R26 -1 [1]
      730 CALL                             R22 3 1
      731 MOVE                             R23 R3
      732 LOADK                            R24 K143 [".TargetIcon ::UICorner"]
      733 DUPTABLE                         R25 K38 [{"CornerRadius"}]
      734 GETIMPORT                        R26 K40 [UDim.new]
      736 LOADN                            R27 0
      737 LOADN                            R28 8
      738 CALL                             R26 2 1
      739 SETTABLEKS                       R26 R25 K37 ["CornerRadius"]
      741 CALL                             R23 2 -1
      742 SETLIST                          R15 R16 -1 [1]
      744 CALL                             R12 3 -1
      745 RETURN                           R12 -1
