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
       95 DUPTABLE                         R19 K46 [{["Color"], ["Thickness"] = 1}]
       96 JUMPIFNOT                        R11 ; [+2]
       97 LOADK                            R20 K47 ["$FoundationColorsShift300"]
       98 JUMP                             ; [+1]
       99 LOADK                            R20 K48 ["$Divider"]
      100 SETTABLEKS                       R20 R19 K43 ["Color"]
      102 CALL                             R17 2 1
      103 MOVE                             R18 R3
      104 LOADK                            R19 K49 ["::UIPadding"]
      105 DUPTABLE                         R20 K54 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      106 GETIMPORT                        R21 K40 [UDim.new]
      108 LOADN                            R22 0
      109 MOVE                             R23 R8
      110 CALL                             R21 2 1
      111 SETTABLEKS                       R21 R20 K50 ["PaddingTop"]
      113 GETIMPORT                        R21 K40 [UDim.new]
      115 LOADN                            R22 0
      116 MOVE                             R23 R8
      117 CALL                             R21 2 1
      118 SETTABLEKS                       R21 R20 K51 ["PaddingBottom"]
      120 GETIMPORT                        R21 K40 [UDim.new]
      122 LOADN                            R22 0
      123 MOVE                             R23 R8
      124 CALL                             R21 2 1
      125 SETTABLEKS                       R21 R20 K52 ["PaddingLeft"]
      127 GETIMPORT                        R21 K40 [UDim.new]
      129 LOADN                            R22 0
      130 MOVE                             R23 R8
      131 CALL                             R21 2 1
      132 SETTABLEKS                       R21 R20 K53 ["PaddingRight"]
      134 CALL                             R18 2 1
      135 MOVE                             R19 R3
      136 LOADK                            R20 K55 [":hover"]
      137 DUPTABLE                         R21 K56 [{"BackgroundColor3"}]
      138 JUMPIFNOT                        R11 ; [+2]
      139 LOADK                            R22 K57 ["$FoundationColorsShift100"]
      140 JUMP                             ; [+1]
      141 LOADK                            R22 K58 ["$ForegroundContrast"]
      142 SETTABLEKS                       R22 R21 K26 ["BackgroundColor3"]
      144 CALL                             R19 2 1
      145 MOVE                             R20 R3
      146 LOADK                            R21 K59 [">> TextLabel"]
      147 DUPTABLE                         R22 K62 [{["TextColor3"], ["BackgroundTransparency"] = 1}]
      148 JUMPIFNOT                        R11 ; [+2]
      149 LOADK                            R23 K63 ["$FoundationColorsContentEmphasis"]
      150 JUMP                             ; [+1]
      151 LOADK                            R23 K64 ["$TextPrimary"]
      152 SETTABLEKS                       R23 R22 K60 ["TextColor3"]
      154 CALL                             R20 2 1
      155 MOVE                             R21 R3
      156 LOADK                            R22 K65 ["> #Left"]
      157 DUPTABLE                         R23 K66 [{"Size"}]
      158 GETIMPORT                        R24 K30 [UDim2.new]
      160 LOADN                            R25 0
      161 LOADN                            R26 36
      162 LOADN                            R27 1
      163 LOADN                            R28 0
      164 CALL                             R24 4 1
      165 SETTABLEKS                       R24 R23 K24 ["Size"]
      167 NEWTABLE                         R24 0 4
      169 MOVE                             R25 R3
      170 LOADK                            R26 K67 ["> #Icon"]
      171 DUPTABLE                         R27 K69 [{"Position", "Size"}]
      172 GETIMPORT                        R28 K30 [UDim2.new]
      174 LOADN                            R29 0
      175 LOADN                            R30 0
      176 LOADN                            R31 0
      177 LOADN                            R32 0
      178 CALL                             R28 4 1
      179 SETTABLEKS                       R28 R27 K68 ["Position"]
      181 GETIMPORT                        R28 K30 [UDim2.new]
      183 LOADN                            R29 0
      184 LOADN                            R30 36
      185 LOADN                            R31 0
      186 LOADN                            R32 36
      187 CALL                             R28 4 1
      188 SETTABLEKS                       R28 R27 K24 ["Size"]
      190 CALL                             R25 2 1
      191 MOVE                             R26 R3
      192 LOADK                            R27 K70 ["> .RoundIcon"]
      193 NEWTABLE                         R28 0 0
      195 NEWTABLE                         R29 0 1
      197 MOVE                             R30 R3
      198 LOADK                            R31 K36 ["::UICorner"]
      199 DUPTABLE                         R32 K38 [{"CornerRadius"}]
      200 GETIMPORT                        R33 K40 [UDim.new]
      202 LOADN                            R34 0
      203 LOADN                            R35 18
      204 CALL                             R33 2 1
      205 SETTABLEKS                       R33 R32 K37 ["CornerRadius"]
      207 CALL                             R30 2 -1
      208 SETLIST                          R29 R30 -1 [1]
      210 CALL                             R26 3 1
      211 MOVE                             R27 R3
      212 LOADK                            R28 K71 ["> .SquareIcon"]
      213 NEWTABLE                         R29 0 0
      215 NEWTABLE                         R30 0 1
      217 MOVE                             R31 R3
      218 LOADK                            R32 K36 ["::UICorner"]
      219 DUPTABLE                         R33 K38 [{"CornerRadius"}]
      220 GETIMPORT                        R34 K40 [UDim.new]
      222 LOADN                            R35 0
      223 LOADN                            R36 5
      224 CALL                             R34 2 1
      225 SETTABLEKS                       R34 R33 K37 ["CornerRadius"]
      227 CALL                             R31 2 -1
      228 SETLIST                          R30 R31 -1 [1]
      230 CALL                             R27 3 1
      231 MOVE                             R28 R3
      232 LOADK                            R29 K72 [">.ScriptIcon"]
      233 DUPTABLE                         R30 K75 [{["Image"] = "$scripticon"}]
      234 CALL                             R28 2 -1
      235 SETLIST                          R24 R25 -1 [1]
      237 CALL                             R21 3 1
      238 MOVE                             R22 R3
      239 LOADK                            R23 K76 ["> #Right"]
      240 DUPTABLE                         R24 K66 [{"Size"}]
      241 GETIMPORT                        R25 K30 [UDim2.new]
      243 LOADN                            R26 1
      244 LOADN                            R27 -36
      245 LOADN                            R28 1
      246 LOADN                            R29 0
      247 CALL                             R25 4 1
      248 SETTABLEKS                       R25 R24 K24 ["Size"]
      250 NEWTABLE                         R25 0 5
      252 MOVE                             R26 R3
      253 LOADK                            R27 K49 ["::UIPadding"]
      254 DUPTABLE                         R28 K77 [{"PaddingLeft"}]
      255 GETIMPORT                        R29 K40 [UDim.new]
      257 LOADN                            R30 0
      258 MOVE                             R31 R9
      259 CALL                             R29 2 1
      260 SETTABLEKS                       R29 R28 K52 ["PaddingLeft"]
      262 CALL                             R26 2 1
      263 MOVE                             R27 R3
      264 LOADK                            R28 K59 [">> TextLabel"]
      265 DUPTABLE                         R29 K80 [{"TextXAlignment", "TextYAlignment"}]
      266 GETIMPORT                        R30 K82 [Enum.TextXAlignment.Left]
      268 SETTABLEKS                       R30 R29 K78 ["TextXAlignment"]
      270 GETIMPORT                        R30 K84 [Enum.TextYAlignment.Center]
      272 SETTABLEKS                       R30 R29 K79 ["TextYAlignment"]
      274 CALL                             R27 2 1
      275 MOVE                             R28 R3
      276 LOADK                            R29 K85 ["> #Top"]
      277 DUPTABLE                         R30 K66 [{"Size"}]
      278 GETIMPORT                        R31 K30 [UDim2.new]
      280 LOADN                            R32 1
      281 LOADN                            R33 0
      282 LOADN                            R34 0
      283 MOVE                             R35 R4
      284 CALL                             R31 4 1
      285 SETTABLEKS                       R31 R30 K24 ["Size"]
      287 NEWTABLE                         R31 0 3
      289 MOVE                             R32 R3
      290 LOADK                            R33 K86 ["> #DotDotDot"]
      291 DUPTABLE                         R34 K66 [{"Size"}]
      292 GETIMPORT                        R35 K30 [UDim2.new]
      294 LOADN                            R36 0
      295 MOVE                             R37 R4
      296 LOADN                            R38 0
      297 MOVE                             R39 R4
      298 CALL                             R35 4 1
      299 SETTABLEKS                       R35 R34 K24 ["Size"]
      301 NEWTABLE                         R35 0 1
      303 MOVE                             R36 R3
      304 LOADK                            R37 K87 ["> ImageButton"]
      305 DUPTABLE                         R38 K92 [{["BorderSizePixel"] = 0, ["Image"] = "$threedotsicon", ["ScaleType"], ["BackgroundColor3"]}]
      306 GETIMPORT                        R39 K94 [Enum.ScaleType.Fit]
      308 SETTABLEKS                       R39 R38 K91 ["ScaleType"]
      310 JUMPIFNOT                        R11 ; [+2]
      311 LOADK                            R39 K57 ["$FoundationColorsShift100"]
      312 JUMP                             ; [+1]
      313 LOADK                            R39 K58 ["$ForegroundContrast"]
      314 SETTABLEKS                       R39 R38 K26 ["BackgroundColor3"]
      316 NEWTABLE                         R39 0 2
      318 MOVE                             R40 R3
      319 LOADK                            R41 K55 [":hover"]
      320 DUPTABLE                         R42 K56 [{"BackgroundColor3"}]
      321 JUMPIFNOT                        R11 ; [+2]
      322 LOADK                            R43 K95 ["$FoundationColorsShift400"]
      323 JUMP                             ; [+1]
      324 LOADK                            R43 K96 ["$ActionHover"]
      325 SETTABLEKS                       R43 R42 K26 ["BackgroundColor3"]
      327 CALL                             R40 2 1
      328 MOVE                             R41 R3
      329 LOADK                            R42 K36 ["::UICorner"]
      330 DUPTABLE                         R43 K38 [{"CornerRadius"}]
      331 GETIMPORT                        R44 K40 [UDim.new]
      333 LOADN                            R45 0
      334 LOADN                            R46 2
      335 CALL                             R44 2 1
      336 SETTABLEKS                       R44 R43 K37 ["CornerRadius"]
      338 CALL                             R41 2 -1
      339 SETLIST                          R39 R40 -1 [1]
      341 CALL                             R36 3 -1
      342 SETLIST                          R35 R36 -1 [1]
      344 CALL                             R32 3 1
      345 MOVE                             R33 R3
      346 LOADK                            R34 K97 ["> #Date"]
      347 JUMPIFNOT                        R11 ; [+3]
      348 NEWTABLE                         R35 0 0
      350 JUMPIF                           R35 ; [+14]
      351 DUPTABLE                         R35 K99 [{["Size"], ["TextSize"], ["TextColor3"] = "$TextPrimary"}]
      352 GETIMPORT                        R36 K30 [UDim2.new]
      354 LOADN                            R37 1
      355 MINUS                            R38 R4
      356 LOADN                            R39 1
      357 LOADN                            R40 0
      358 CALL                             R36 4 1
      359 SETTABLEKS                       R36 R35 K24 ["Size"]
      361 GETTABLEKS                       R36 R2 K100 ["detailFontSize"]
      363 SETTABLEKS                       R36 R35 K98 ["TextSize"]
      365 CALL                             R33 2 1
      366 MOVE                             R34 R3
      367 LOADK                            R35 K101 ["> #Info"]
      368 JUMPIFNOT                        R11 ; [+11]
      369 DUPTABLE                         R36 K66 [{"Size"}]
      370 GETIMPORT                        R37 K30 [UDim2.new]
      372 LOADN                            R38 1
      373 MINUS                            R39 R4
      374 LOADN                            R40 1
      375 LOADN                            R41 0
      376 CALL                             R37 4 1
      377 SETTABLEKS                       R37 R36 K24 ["Size"]
      379 JUMPIF                           R36 ; [+2]
      380 NEWTABLE                         R36 0 0
      382 JUMPIFNOT                        R11 ; [+99]
      383 NEWTABLE                         R37 0 3
      385 MOVE                             R38 R3
      386 LOADK                            R39 K102 ["::UIListLayout"]
      387 DUPTABLE                         R40 K104 [{"Padding"}]
      388 GETIMPORT                        R41 K40 [UDim.new]
      390 LOADN                            R42 0
      391 LOADN                            R43 4
      392 CALL                             R41 2 1
      393 SETTABLEKS                       R41 R40 K103 ["Padding"]
      395 CALL                             R38 2 1
      396 MOVE                             R39 R3
      397 LOADK                            R40 K105 ["> TextLabel, >> TextLabel"]
      398 DUPTABLE                         R41 K106 [{"AutomaticSize", "TextSize", "TextColor3"}]
      399 GETIMPORT                        R42 K108 [Enum.AutomaticSize.XY]
      401 SETTABLEKS                       R42 R41 K25 ["AutomaticSize"]
      403 GETTABLEKS                       R42 R2 K100 ["detailFontSize"]
      405 SETTABLEKS                       R42 R41 K98 ["TextSize"]
      407 JUMPIFNOT                        R11 ; [+2]
      408 LOADK                            R42 K109 ["$FoundationColorsContentMuted"]
      409 JUMP                             ; [+1]
      410 LOADK                            R42 K110 ["$TextSecondary"]
      411 SETTABLEKS                       R42 R41 K60 ["TextColor3"]
      413 CALL                             R39 2 1
      414 MOVE                             R40 R3
      415 LOADK                            R41 K111 ["> #TargetNameContainer"]
      416 DUPTABLE                         R42 K112 [{"AutomaticSize"}]
      417 GETIMPORT                        R43 K108 [Enum.AutomaticSize.XY]
      419 SETTABLEKS                       R43 R42 K25 ["AutomaticSize"]
      421 NEWTABLE                         R43 0 1
      423 MOVE                             R44 R3
      424 LOADK                            R45 K113 ["> #MiniUserIconContainer"]
      425 DUPTABLE                         R46 K114 [{"Size", "AutomaticSize"}]
      426 GETIMPORT                        R47 K30 [UDim2.new]
      428 LOADN                            R48 0
      429 LOADN                            R49 0
      430 LOADN                            R50 1
      431 LOADN                            R51 0
      432 CALL                             R47 4 1
      433 SETTABLEKS                       R47 R46 K24 ["Size"]
      435 GETIMPORT                        R47 K116 [Enum.AutomaticSize.X]
      437 SETTABLEKS                       R47 R46 K25 ["AutomaticSize"]
      439 NEWTABLE                         R47 0 3
      441 MOVE                             R48 R3
      442 LOADK                            R49 K49 ["::UIPadding"]
      443 DUPTABLE                         R50 K117 [{"PaddingRight"}]
      444 GETIMPORT                        R51 K40 [UDim.new]
      446 LOADN                            R52 0
      447 LOADN                            R53 2
      448 CALL                             R51 2 1
      449 SETTABLEKS                       R51 R50 K53 ["PaddingRight"]
      451 CALL                             R48 2 1
      452 MOVE                             R49 R3
      453 LOADK                            R50 K102 ["::UIListLayout"]
      454 DUPTABLE                         R51 K119 [{"VerticalAlignment"}]
      455 GETIMPORT                        R52 K120 [Enum.VerticalAlignment.Center]
      457 SETTABLEKS                       R52 R51 K118 ["VerticalAlignment"]
      459 CALL                             R49 2 1
      460 MOVE                             R50 R3
      461 LOADK                            R51 K121 ["> #MiniUserIcon"]
      462 DUPTABLE                         R52 K123 [{["Size"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["Image"] = "$miniuser"}]
      463 GETIMPORT                        R53 K30 [UDim2.new]
      465 LOADN                            R54 0
      466 LOADN                            R55 12
      467 LOADN                            R56 0
      468 LOADN                            R57 12
      469 CALL                             R53 4 1
      470 SETTABLEKS                       R53 R52 K24 ["Size"]
      472 CALL                             R50 2 -1
      473 SETLIST                          R47 R48 -1 [1]
      475 CALL                             R44 3 -1
      476 SETLIST                          R43 R44 -1 [1]
      478 CALL                             R40 3 -1
      479 SETLIST                          R37 R38 -1 [1]
      481 JUMPIF                           R37 ; [+2]
      482 NEWTABLE                         R37 0 0
      484 CALL                             R34 3 -1
      485 SETLIST                          R31 R32 -1 [1]
      487 CALL                             R28 3 1
      488 MOVE                             R29 R3
      489 LOADK                            R30 K124 ["> #Middle"]
      490 DUPTABLE                         R31 K114 [{"Size", "AutomaticSize"}]
      491 GETIMPORT                        R32 K30 [UDim2.new]
      493 LOADN                            R33 1
      494 LOADN                            R34 0
      495 LOADN                            R35 0
      496 MOVE                             R36 R5
      497 CALL                             R32 4 1
      498 SETTABLEKS                       R32 R31 K24 ["Size"]
      500 GETIMPORT                        R32 K33 [Enum.AutomaticSize.Y]
      502 SETTABLEKS                       R32 R31 K25 ["AutomaticSize"]
      504 NEWTABLE                         R32 0 2
      506 MOVE                             R33 R3
      507 LOADK                            R34 K49 ["::UIPadding"]
      508 DUPTABLE                         R35 K125 [{"PaddingBottom"}]
      509 GETIMPORT                        R36 K40 [UDim.new]
      511 LOADN                            R37 0
      512 MOVE                             R38 R9
      513 CALL                             R36 2 1
      514 SETTABLEKS                       R36 R35 K51 ["PaddingBottom"]
      516 CALL                             R33 2 1
      517 MOVE                             R34 R3
      518 LOADK                            R35 K126 ["> #Description"]
      519 DUPTABLE                         R36 K112 [{"AutomaticSize"}]
      520 GETIMPORT                        R37 K108 [Enum.AutomaticSize.XY]
      522 SETTABLEKS                       R37 R36 K25 ["AutomaticSize"]
      524 NEWTABLE                         R37 0 4
      526 MOVE                             R38 R3
      527 LOADK                            R39 K102 ["::UIListLayout"]
      528 DUPTABLE                         R40 K128 [{"HorizontalFlex"}]
      529 GETIMPORT                        R41 K131 [Enum.UIFlexAlignment.Fill]
      531 SETTABLEKS                       R41 R40 K127 ["HorizontalFlex"]
      533 CALL                             R38 2 1
      534 MOVE                             R39 R3
      535 LOADK                            R40 K132 [">> #LinkButton"]
      536 DUPTABLE                         R41 K134 [{["TextColor3"] = "$TextLink"}]
      537 CALL                             R39 2 1
      538 MOVE                             R40 R3
      539 LOADK                            R41 K135 [">> #ShowMore"]
      540 DUPTABLE                         R42 K134 [{["TextColor3"] = "$TextLink"}]
      541 CALL                             R40 2 1
      542 MOVE                             R41 R3
      543 LOADK                            R42 K136 ["> .SecondaryText >> TextLabel"]
      544 DUPTABLE                         R43 K138 [{["TextColor3"] = "$SecondaryContrast"}]
      545 CALL                             R41 2 -1
      546 SETLIST                          R37 R38 -1 [1]
      548 CALL                             R34 3 -1
      549 SETLIST                          R32 R33 -1 [1]
      551 CALL                             R29 3 1
      552 MOVE                             R30 R3
      553 LOADK                            R31 K139 ["> #Bottom"]
      554 DUPTABLE                         R32 K114 [{"Size", "AutomaticSize"}]
      555 GETIMPORT                        R33 K30 [UDim2.new]
      557 LOADN                            R34 0
      558 LOADN                            R35 0
      559 LOADN                            R36 0
      560 MOVE                             R37 R6
      561 CALL                             R33 4 1
      562 SETTABLEKS                       R33 R32 K24 ["Size"]
      564 GETIMPORT                        R33 K116 [Enum.AutomaticSize.X]
      566 SETTABLEKS                       R33 R32 K25 ["AutomaticSize"]
      568 NEWTABLE                         R33 0 4
      570 MOVE                             R34 R3
      571 LOADK                            R35 K36 ["::UICorner"]
      572 DUPTABLE                         R36 K38 [{"CornerRadius"}]
      573 GETIMPORT                        R37 K40 [UDim.new]
      575 LOADN                            R38 0
      576 LOADN                            R39 2
      577 CALL                             R37 2 1
      578 SETTABLEKS                       R37 R36 K37 ["CornerRadius"]
      580 CALL                             R34 2 1
      581 MOVE                             R35 R3
      582 LOADK                            R36 K55 [":hover"]
      583 DUPTABLE                         R37 K56 [{"BackgroundColor3"}]
      584 JUMPIFNOT                        R11 ; [+2]
      585 LOADK                            R38 K95 ["$FoundationColorsShift400"]
      586 JUMP                             ; [+1]
      587 LOADK                            R38 K96 ["$ActionHover"]
      588 SETTABLEKS                       R38 R37 K26 ["BackgroundColor3"]
      590 CALL                             R35 2 1
      591 MOVE                             R36 R3
      592 LOADK                            R37 K140 ["> #IconFrame"]
      593 DUPTABLE                         R38 K112 [{"AutomaticSize"}]
      594 GETIMPORT                        R39 K108 [Enum.AutomaticSize.XY]
      596 SETTABLEKS                       R39 R38 K25 ["AutomaticSize"]
      598 NEWTABLE                         R39 0 2
      600 MOVE                             R40 R3
      601 LOADK                            R41 K49 ["::UIPadding"]
      602 DUPTABLE                         R42 K117 [{"PaddingRight"}]
      603 GETIMPORT                        R43 K40 [UDim.new]
      605 LOADN                            R44 0
      606 MOVE                             R45 R10
      607 CALL                             R43 2 1
      608 SETTABLEKS                       R43 R42 K53 ["PaddingRight"]
      610 CALL                             R40 2 1
      611 MOVE                             R41 R3
      612 LOADK                            R42 K67 ["> #Icon"]
      613 DUPTABLE                         R43 K66 [{"Size"}]
      614 GETIMPORT                        R44 K30 [UDim2.new]
      616 LOADN                            R45 0
      617 LOADN                            R46 16
      618 LOADN                            R47 0
      619 LOADN                            R48 16
      620 CALL                             R44 4 1
      621 SETTABLEKS                       R44 R43 K24 ["Size"]
      623 NEWTABLE                         R44 0 1
      625 MOVE                             R45 R3
      626 LOADK                            R46 K36 ["::UICorner"]
      627 DUPTABLE                         R47 K38 [{"CornerRadius"}]
      628 GETIMPORT                        R48 K40 [UDim.new]
      630 LOADN                            R49 0
      631 LOADN                            R50 8
      632 CALL                             R48 2 1
      633 SETTABLEKS                       R48 R47 K37 ["CornerRadius"]
      635 CALL                             R45 2 -1
      636 SETLIST                          R44 R45 -1 [1]
      638 CALL                             R41 3 -1
      639 SETLIST                          R39 R40 -1 [1]
      641 CALL                             R36 3 1
      642 MOVE                             R37 R3
      643 LOADK                            R38 K141 ["> #TargetName"]
      644 DUPTABLE                         R39 K142 [{["Size"], ["AutomaticSize"], ["TextSize"], ["TextColor3"] = "$TextPrimary", ["TextXAlignment"], ["TextYAlignment"], ["BackgroundTransparency"] = 1}]
      645 GETIMPORT                        R40 K30 [UDim2.new]
      647 LOADN                            R41 0
      648 LOADN                            R42 0
      649 LOADN                            R43 1
      650 LOADN                            R44 0
      651 CALL                             R40 4 1
      652 SETTABLEKS                       R40 R39 K24 ["Size"]
      654 GETIMPORT                        R40 K116 [Enum.AutomaticSize.X]
      656 SETTABLEKS                       R40 R39 K25 ["AutomaticSize"]
      658 GETTABLEKS                       R40 R2 K100 ["detailFontSize"]
      660 SETTABLEKS                       R40 R39 K98 ["TextSize"]
      662 GETIMPORT                        R40 K82 [Enum.TextXAlignment.Left]
      664 SETTABLEKS                       R40 R39 K78 ["TextXAlignment"]
      666 GETIMPORT                        R40 K84 [Enum.TextYAlignment.Center]
      668 SETTABLEKS                       R40 R39 K79 ["TextYAlignment"]
      670 NEWTABLE                         R40 0 1
      672 MOVE                             R41 R3
      673 LOADK                            R42 K55 [":hover"]
      674 DUPTABLE                         R43 K144 [{"Font"}]
      675 GETTABLEKS                       R44 R2 K145 ["boldedFont"]
      677 SETTABLEKS                       R44 R43 K143 ["Font"]
      679 CALL                             R41 2 -1
      680 SETLIST                          R40 R41 -1 [1]
      682 CALL                             R37 3 -1
      683 SETLIST                          R33 R34 -1 [1]
      685 CALL                             R30 3 -1
      686 SETLIST                          R25 R26 -1 [1]
      688 CALL                             R22 3 1
      689 MOVE                             R23 R3
      690 LOADK                            R24 K146 [".TargetIcon ::UICorner"]
      691 DUPTABLE                         R25 K38 [{"CornerRadius"}]
      692 GETIMPORT                        R26 K40 [UDim.new]
      694 LOADN                            R27 0
      695 LOADN                            R28 8
      696 CALL                             R26 2 1
      697 SETTABLEKS                       R26 R25 K37 ["CornerRadius"]
      699 CALL                             R23 2 -1
      700 SETLIST                          R15 R16 -1 [1]
      702 CALL                             R12 3 -1
      703 RETURN                           R12 -1
