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
       18 GETTABLEKS                       R2 R1 K7 ["Styling"]
       20 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K10 ["Resources"]
       28 GETTABLEKS                       R4 R4 K11 ["StyleTips"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K13 [game]
       33 LOADK                            R6 K14 ["ActivityHistoryCompactUI"]
       34 NAMECALL                         R4 R4 K15 ["GetFastFlag"]
       36 CALL                             R4 2 1
       37 GETTABLEKS                       R5 R3 K16 ["defaultPadding"]
       39 JUMPIFNOT                        R4 ; [+3]
       40 GETTABLEKS                       R6 R3 K17 ["filterHeaderHeight"]
       42 JUMPIF                           R6 ; [+4]
       43 GETTABLEKS                       R7 R3 K18 ["normalFontSize"]
       45 MULK                             R8 R5 K19 [2]
       46 ADD                              R6 R7 R8
       47 GETTABLEKS                       R7 R3 K20 ["smallPadding"]
       49 GETTABLEKS                       R8 R3 K21 ["defaultIconSize"]
       51 MOVE                             R9 R2
       52 LOADK                            R10 K22 [".Component-ActivityHistoryMain"]
       53 DUPTABLE                         R11 K25 [{"Size", "BackgroundColor3"}]
       54 GETIMPORT                        R12 K28 [UDim2.new]
       56 LOADN                            R13 1
       57 LOADN                            R14 0
       58 LOADN                            R15 1
       59 LOADN                            R16 0
       60 CALL                             R12 4 1
       61 SETTABLEKS                       R12 R11 K23 ["Size"]
       63 JUMPIFNOT                        R4 ; [+2]
       64 LOADK                            R12 K29 ["$FoundationColorsBackgroundPaper"]
       65 JUMP                             ; [+1]
       66 LOADK                            R12 K30 ["$BackgroundPaper"]
       67 SETTABLEKS                       R12 R11 K24 ["BackgroundColor3"]
       69 NEWTABLE                         R12 0 2
       71 MOVE                             R13 R2
       72 LOADK                            R14 K31 ["> #EventList"]
       73 DUPTABLE                         R15 K32 [{"Size"}]
       74 GETIMPORT                        R16 K28 [UDim2.new]
       76 LOADN                            R17 1
       77 LOADN                            R18 0
       78 LOADN                            R19 1
       79 LOADK                            R20 K33 [0]
       80 CALL                             R16 4 1
       81 SETTABLEKS                       R16 R15 K23 ["Size"]
       83 NEWTABLE                         R16 0 5
       85 MOVE                             R17 R2
       86 LOADK                            R18 K34 ["::UIPadding"]
       87 DUPTABLE                         R19 K39 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       88 GETIMPORT                        R20 K41 [UDim.new]
       90 LOADN                            R21 0
       91 JUMPIFNOT                        R4 ; [+2]
       92 LOADN                            R22 1
       93 JUMP                             ; [+1]
       94 MOVE                             R22 R7
       95 CALL                             R20 2 1
       96 SETTABLEKS                       R20 R19 K35 ["PaddingTop"]
       98 GETIMPORT                        R20 K41 [UDim.new]
      100 LOADN                            R21 0
      101 JUMPIFNOT                        R4 ; [+2]
      102 LOADN                            R22 1
      103 JUMP                             ; [+1]
      104 MOVE                             R22 R7
      105 CALL                             R20 2 1
      106 SETTABLEKS                       R20 R19 K36 ["PaddingBottom"]
      108 GETIMPORT                        R20 K41 [UDim.new]
      110 LOADN                            R21 0
      111 JUMPIFNOT                        R4 ; [+2]
      112 LOADN                            R22 1
      113 JUMP                             ; [+1]
      114 MOVE                             R22 R7
      115 CALL                             R20 2 1
      116 SETTABLEKS                       R20 R19 K37 ["PaddingLeft"]
      118 GETIMPORT                        R20 K41 [UDim.new]
      120 LOADN                            R21 0
      121 JUMPIFNOT                        R4 ; [+2]
      122 LOADN                            R22 1
      123 JUMP                             ; [+1]
      124 MOVE                             R22 R7
      125 CALL                             R20 2 1
      126 SETTABLEKS                       R20 R19 K38 ["PaddingRight"]
      128 CALL                             R17 2 1
      129 MOVE                             R18 R2
      130 LOADK                            R19 K42 ["> #Header"]
      131 DUPTABLE                         R20 K25 [{"Size", "BackgroundColor3"}]
      132 GETIMPORT                        R21 K28 [UDim2.new]
      134 LOADN                            R22 1
      135 LOADN                            R23 0
      136 LOADN                            R24 0
      137 MOVE                             R25 R6
      138 CALL                             R21 4 1
      139 SETTABLEKS                       R21 R20 K23 ["Size"]
      141 JUMPIFNOT                        R4 ; [+2]
      142 LOADK                            R21 K43 ["$FoundationColorsShift100"]
      143 JUMP                             ; [+1]
      144 LOADK                            R21 K30 ["$BackgroundPaper"]
      145 SETTABLEKS                       R21 R20 K24 ["BackgroundColor3"]
      147 NEWTABLE                         R21 0 3
      149 MOVE                             R22 R2
      150 LOADK                            R23 K44 ["::UICorner"]
      151 DUPTABLE                         R24 K46 [{"CornerRadius"}]
      152 GETIMPORT                        R25 K41 [UDim.new]
      154 LOADN                            R26 0
      155 GETTABLEKS                       R27 R3 K47 ["bubbleCornerRadius"]
      157 CALL                             R25 2 1
      158 SETTABLEKS                       R25 R24 K45 ["CornerRadius"]
      160 CALL                             R22 2 1
      161 MOVE                             R23 R2
      162 LOADK                            R24 K48 ["::UIStroke"]
      163 DUPTABLE                         R25 K51 [{"Color", "Thickness"}]
      164 JUMPIFNOT                        R4 ; [+2]
      165 LOADK                            R26 K52 ["$FoundationColorsShift300"]
      166 JUMP                             ; [+1]
      167 LOADK                            R26 K53 ["$Divider"]
      168 SETTABLEKS                       R26 R25 K49 ["Color"]
      170 LOADN                            R26 1
      171 SETTABLEKS                       R26 R25 K50 ["Thickness"]
      173 CALL                             R23 2 1
      174 MOVE                             R24 R2
      175 LOADK                            R25 K54 ["> #FilterHeader"]
      176 DUPTABLE                         R26 K32 [{"Size"}]
      177 GETIMPORT                        R27 K28 [UDim2.new]
      179 LOADN                            R28 1
      180 LOADN                            R29 0
      181 LOADN                            R30 1
      182 LOADN                            R31 0
      183 CALL                             R27 4 1
      184 SETTABLEKS                       R27 R26 K23 ["Size"]
      186 NEWTABLE                         R27 0 3
      188 MOVE                             R28 R2
      189 LOADK                            R29 K55 ["::UIListLayout"]
      190 DUPTABLE                         R30 K57 [{"HorizontalFlex"}]
      191 GETIMPORT                        R31 K61 [Enum.UIFlexAlignment.SpaceBetween]
      193 SETTABLEKS                       R31 R30 K56 ["HorizontalFlex"]
      195 CALL                             R28 2 1
      196 MOVE                             R29 R2
      197 LOADK                            R30 K62 ["> #FilterHeaderText"]
      198 DUPTABLE                         R31 K68 [{"TextColor3", "TextSize", "TextXAlignment", "RichText", "TextTruncate"}]
      199 JUMPIFNOT                        R4 ; [+2]
      200 LOADK                            R32 K69 ["$FoundationColorsContentEmphasis"]
      201 JUMP                             ; [+1]
      202 LOADK                            R32 K70 ["$TextPrimary"]
      203 SETTABLEKS                       R32 R31 K63 ["TextColor3"]
      205 GETTABLEKS                       R32 R3 K18 ["normalFontSize"]
      207 SETTABLEKS                       R32 R31 K64 ["TextSize"]
      209 GETIMPORT                        R32 K72 [Enum.TextXAlignment.Left]
      211 SETTABLEKS                       R32 R31 K65 ["TextXAlignment"]
      213 LOADB                            R32 1
      214 SETTABLEKS                       R32 R31 K66 ["RichText"]
      216 GETIMPORT                        R32 K74 [Enum.TextTruncate.AtEnd]
      218 SETTABLEKS                       R32 R31 K67 ["TextTruncate"]
      220 NEWTABLE                         R32 0 2
      222 MOVE                             R33 R2
      223 LOADK                            R34 K34 ["::UIPadding"]
      224 DUPTABLE                         R35 K75 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
      225 GETIMPORT                        R36 K41 [UDim.new]
      227 LOADN                            R37 0
      228 MOVE                             R38 R5
      229 CALL                             R36 2 1
      230 SETTABLEKS                       R36 R35 K37 ["PaddingLeft"]
      232 GETIMPORT                        R36 K41 [UDim.new]
      234 LOADN                            R37 0
      235 JUMPIFNOT                        R4 ; [+2]
      236 LOADN                            R38 1
      237 JUMP                             ; [+1]
      238 MOVE                             R38 R5
      239 CALL                             R36 2 1
      240 SETTABLEKS                       R36 R35 K35 ["PaddingTop"]
      242 GETIMPORT                        R36 K41 [UDim.new]
      244 LOADN                            R37 0
      245 JUMPIFNOT                        R4 ; [+2]
      246 LOADN                            R38 2
      247 JUMP                             ; [+1]
      248 MOVE                             R38 R5
      249 CALL                             R36 2 1
      250 SETTABLEKS                       R36 R35 K36 ["PaddingBottom"]
      252 GETIMPORT                        R36 K41 [UDim.new]
      254 LOADN                            R37 0
      255 LOADN                            R38 0
      256 CALL                             R36 2 1
      257 SETTABLEKS                       R36 R35 K38 ["PaddingRight"]
      259 CALL                             R33 2 1
      260 MOVE                             R34 R2
      261 LOADK                            R35 K76 ["::UIFlexItem"]
      262 DUPTABLE                         R36 K78 [{"FlexMode"}]
      263 GETIMPORT                        R37 K81 [Enum.UIFlexMode.Shrink]
      265 SETTABLEKS                       R37 R36 K77 ["FlexMode"]
      267 CALL                             R34 2 -1
      268 SETLIST                          R32 R33 -1 [1]
      270 CALL                             R29 3 1
      271 MOVE                             R30 R2
      272 LOADK                            R31 K82 ["> #HeaderIcons"]
      273 DUPTABLE                         R32 K84 [{"AutomaticSize"}]
      274 GETIMPORT                        R33 K86 [Enum.AutomaticSize.XY]
      276 SETTABLEKS                       R33 R32 K83 ["AutomaticSize"]
      278 NEWTABLE                         R33 0 4
      280 MOVE                             R34 R2
      281 LOADK                            R35 K55 ["::UIListLayout"]
      282 DUPTABLE                         R36 K57 [{"HorizontalFlex"}]
      283 GETIMPORT                        R37 K88 [Enum.UIFlexAlignment.Fill]
      285 SETTABLEKS                       R37 R36 K56 ["HorizontalFlex"]
      287 CALL                             R34 2 1
      288 MOVE                             R35 R2
      289 LOADK                            R36 K89 ["> .HeaderIcon"]
      290 DUPTABLE                         R37 K90 [{"Size", "AutomaticSize"}]
      291 GETIMPORT                        R38 K28 [UDim2.new]
      293 LOADN                            R39 0
      294 LOADN                            R40 0
      295 LOADN                            R41 1
      296 LOADN                            R42 0
      297 CALL                             R38 4 1
      298 SETTABLEKS                       R38 R37 K23 ["Size"]
      300 GETIMPORT                        R38 K92 [Enum.AutomaticSize.X]
      302 SETTABLEKS                       R38 R37 K83 ["AutomaticSize"]
      304 NEWTABLE                         R38 0 3
      306 MOVE                             R39 R2
      307 LOADK                            R40 K55 ["::UIListLayout"]
      308 DUPTABLE                         R41 K94 [{"VerticalAlignment"}]
      309 GETIMPORT                        R42 K96 [Enum.VerticalAlignment.Center]
      311 SETTABLEKS                       R42 R41 K93 ["VerticalAlignment"]
      313 CALL                             R39 2 1
      314 MOVE                             R40 R2
      315 LOADK                            R41 K34 ["::UIPadding"]
      316 DUPTABLE                         R42 K97 [{"PaddingLeft", "PaddingRight"}]
      317 GETIMPORT                        R43 K41 [UDim.new]
      319 LOADN                            R44 0
      320 JUMPIFNOT                        R4 ; [+2]
      321 LOADN                            R45 2
      322 JUMP                             ; [+1]
      323 MOVE                             R45 R7
      324 CALL                             R43 2 1
      325 SETTABLEKS                       R43 R42 K37 ["PaddingLeft"]
      327 GETIMPORT                        R43 K41 [UDim.new]
      329 LOADN                            R44 0
      330 JUMPIFNOT                        R4 ; [+2]
      331 LOADN                            R45 2
      332 JUMP                             ; [+1]
      333 MOVE                             R45 R7
      334 CALL                             R43 2 1
      335 SETTABLEKS                       R43 R42 K38 ["PaddingRight"]
      337 CALL                             R40 2 1
      338 MOVE                             R41 R2
      339 LOADK                            R42 K98 ["> ImageLabel, > ImageButton"]
      340 DUPTABLE                         R43 K101 [{"Size", "BorderSizePixel", "BackgroundTransparency"}]
      341 GETIMPORT                        R44 K28 [UDim2.new]
      343 LOADN                            R45 0
      344 JUMPIFNOT                        R4 ; [+2]
      345 LOADN                            R46 14
      346 JUMP                             ; [+1]
      347 MOVE                             R46 R8
      348 LOADN                            R47 0
      349 JUMPIFNOT                        R4 ; [+2]
      350 LOADN                            R48 14
      351 JUMP                             ; [+1]
      352 MOVE                             R48 R8
      353 CALL                             R44 4 1
      354 SETTABLEKS                       R44 R43 K23 ["Size"]
      356 LOADN                            R44 0
      357 SETTABLEKS                       R44 R43 K99 ["BorderSizePixel"]
      359 LOADN                            R44 1
      360 SETTABLEKS                       R44 R43 K100 ["BackgroundTransparency"]
      362 CALL                             R41 2 -1
      363 SETLIST                          R38 R39 -1 [1]
      365 CALL                             R35 3 1
      366 MOVE                             R36 R2
      367 LOADK                            R37 K102 [">> #ClearFiltersIcon"]
      368 DUPTABLE                         R38 K104 [{"Image"}]
      369 LOADK                            R39 K105 ["$close"]
      370 SETTABLEKS                       R39 R38 K103 ["Image"]
      372 CALL                             R36 2 1
      373 MOVE                             R37 R2
      374 LOADK                            R38 K106 [">> #FilterHeaderIcon"]
      375 DUPTABLE                         R39 K104 [{"Image"}]
      376 LOADK                            R40 K107 ["$filter"]
      377 SETTABLEKS                       R40 R39 K103 ["Image"]
      379 CALL                             R37 2 -1
      380 SETLIST                          R33 R34 -1 [1]
      382 CALL                             R30 3 -1
      383 SETLIST                          R27 R28 -1 [1]
      385 CALL                             R24 3 -1
      386 SETLIST                          R21 R22 -1 [1]
      388 CALL                             R18 3 1
      389 MOVE                             R19 R2
      390 LOADK                            R20 K108 ["> .HeaderHovered #Header"]
      391 NEWTABLE                         R21 0 0
      393 NEWTABLE                         R22 0 2
      395 MOVE                             R23 R2
      396 LOADK                            R24 K48 ["::UIStroke"]
      397 DUPTABLE                         R25 K109 [{"Color"}]
      398 JUMPIFNOT                        R4 ; [+2]
      399 LOADK                            R26 K110 ["$FoundationColorsShift200"]
      400 JUMP                             ; [+1]
      401 LOADK                            R26 K111 ["$ActionHover"]
      402 SETTABLEKS                       R26 R25 K49 ["Color"]
      404 CALL                             R23 2 1
      405 MOVE                             R24 R2
      406 LOADK                            R25 K112 [">> #FilterHeaderIconContainer"]
      407 DUPTABLE                         R26 K113 [{"BackgroundTransparency", "BackgroundColor3"}]
      408 LOADN                            R27 0
      409 SETTABLEKS                       R27 R26 K100 ["BackgroundTransparency"]
      411 JUMPIFNOT                        R4 ; [+2]
      412 LOADK                            R27 K110 ["$FoundationColorsShift200"]
      413 JUMP                             ; [+1]
      414 LOADK                            R27 K111 ["$ActionHover"]
      415 SETTABLEKS                       R27 R26 K24 ["BackgroundColor3"]
      417 CALL                             R24 2 -1
      418 SETLIST                          R22 R23 -1 [1]
      420 CALL                             R19 3 1
      421 MOVE                             R20 R2
      422 LOADK                            R21 K114 ["> .HeaderDisabled #Header"]
      423 DUPTABLE                         R22 K116 [{"Interactable"}]
      424 LOADB                            R23 0
      425 SETTABLEKS                       R23 R22 K115 ["Interactable"]
      427 NEWTABLE                         R23 0 2
      429 MOVE                             R24 R2
      430 LOADK                            R25 K117 [">> #FilterHeaderText"]
      431 DUPTABLE                         R26 K118 [{"TextColor3"}]
      432 JUMPIFNOT                        R4 ; [+2]
      433 LOADK                            R27 K119 ["$FoundationColorsContentMuted"]
      434 JUMP                             ; [+1]
      435 LOADK                            R27 K120 ["$TextSecondary"]
      436 SETTABLEKS                       R27 R26 K63 ["TextColor3"]
      438 CALL                             R24 2 1
      439 MOVE                             R25 R2
      440 LOADK                            R26 K112 [">> #FilterHeaderIconContainer"]
      441 NEWTABLE                         R27 0 0
      443 NEWTABLE                         R28 0 1
      445 MOVE                             R29 R2
      446 LOADK                            R30 K121 ["> #FilterHeaderIcon"]
      447 DUPTABLE                         R31 K104 [{"Image"}]
      448 LOADK                            R32 K122 ["$filterdisabled"]
      449 SETTABLEKS                       R32 R31 K103 ["Image"]
      451 CALL                             R29 2 -1
      452 SETLIST                          R28 R29 -1 [1]
      454 CALL                             R25 3 -1
      455 SETLIST                          R23 R24 -1 [1]
      457 CALL                             R20 3 1
      458 MOVE                             R21 R2
      459 LOADK                            R22 K123 ["> #ActivityHistoryBubbleListContainer"]
      460 DUPTABLE                         R23 K125 [{"Size", "ZIndex"}]
      461 GETIMPORT                        R24 K28 [UDim2.new]
      463 LOADN                            R25 1
      464 LOADN                            R26 0
      465 LOADN                            R27 1
      466 MINUS                            R28 R6
      467 CALL                             R24 4 1
      468 SETTABLEKS                       R24 R23 K23 ["Size"]
      470 LOADN                            R24 0
      471 SETTABLEKS                       R24 R23 K124 ["ZIndex"]
      473 CALL                             R21 2 -1
      474 SETLIST                          R16 R17 -1 [1]
      476 CALL                             R13 3 1
      477 MOVE                             R14 R2
      478 LOADK                            R15 K126 ["> #FilterMenu"]
      479 DUPTABLE                         R16 K32 [{"Size"}]
      480 GETIMPORT                        R17 K28 [UDim2.new]
      482 LOADN                            R18 1
      483 LOADN                            R19 0
      484 LOADN                            R20 1
      485 LOADN                            R21 0
      486 CALL                             R17 4 1
      487 SETTABLEKS                       R17 R16 K23 ["Size"]
      489 CALL                             R14 2 -1
      490 SETLIST                          R12 R13 -1 [1]
      492 CALL                             R9 3 -1
      493 RETURN                           R9 -1
