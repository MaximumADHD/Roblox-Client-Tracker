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
      163 DUPTABLE                         R25 K52 [{["Color"], ["Thickness"] = 1}]
      164 JUMPIFNOT                        R4 ; [+2]
      165 LOADK                            R26 K53 ["$FoundationColorsShift300"]
      166 JUMP                             ; [+1]
      167 LOADK                            R26 K54 ["$Divider"]
      168 SETTABLEKS                       R26 R25 K49 ["Color"]
      170 CALL                             R23 2 1
      171 MOVE                             R24 R2
      172 LOADK                            R25 K55 ["> #FilterHeader"]
      173 DUPTABLE                         R26 K32 [{"Size"}]
      174 GETIMPORT                        R27 K28 [UDim2.new]
      176 LOADN                            R28 1
      177 LOADN                            R29 0
      178 LOADN                            R30 1
      179 LOADN                            R31 0
      180 CALL                             R27 4 1
      181 SETTABLEKS                       R27 R26 K23 ["Size"]
      183 NEWTABLE                         R27 0 3
      185 MOVE                             R28 R2
      186 LOADK                            R29 K56 ["::UIListLayout"]
      187 DUPTABLE                         R30 K58 [{"HorizontalFlex"}]
      188 GETIMPORT                        R31 K62 [Enum.UIFlexAlignment.SpaceBetween]
      190 SETTABLEKS                       R31 R30 K57 ["HorizontalFlex"]
      192 CALL                             R28 2 1
      193 MOVE                             R29 R2
      194 LOADK                            R30 K63 ["> #FilterHeaderText"]
      195 DUPTABLE                         R31 K70 [{["TextColor3"], ["TextSize"], ["TextXAlignment"], ["RichText"] = True, ["TextTruncate"]}]
      196 JUMPIFNOT                        R4 ; [+2]
      197 LOADK                            R32 K71 ["$FoundationColorsContentEmphasis"]
      198 JUMP                             ; [+1]
      199 LOADK                            R32 K72 ["$TextPrimary"]
      200 SETTABLEKS                       R32 R31 K64 ["TextColor3"]
      202 GETTABLEKS                       R32 R3 K18 ["normalFontSize"]
      204 SETTABLEKS                       R32 R31 K65 ["TextSize"]
      206 GETIMPORT                        R32 K74 [Enum.TextXAlignment.Left]
      208 SETTABLEKS                       R32 R31 K66 ["TextXAlignment"]
      210 GETIMPORT                        R32 K76 [Enum.TextTruncate.AtEnd]
      212 SETTABLEKS                       R32 R31 K69 ["TextTruncate"]
      214 NEWTABLE                         R32 0 2
      216 MOVE                             R33 R2
      217 LOADK                            R34 K34 ["::UIPadding"]
      218 DUPTABLE                         R35 K77 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
      219 GETIMPORT                        R36 K41 [UDim.new]
      221 LOADN                            R37 0
      222 MOVE                             R38 R5
      223 CALL                             R36 2 1
      224 SETTABLEKS                       R36 R35 K37 ["PaddingLeft"]
      226 GETIMPORT                        R36 K41 [UDim.new]
      228 LOADN                            R37 0
      229 JUMPIFNOT                        R4 ; [+2]
      230 LOADN                            R38 1
      231 JUMP                             ; [+1]
      232 MOVE                             R38 R5
      233 CALL                             R36 2 1
      234 SETTABLEKS                       R36 R35 K35 ["PaddingTop"]
      236 GETIMPORT                        R36 K41 [UDim.new]
      238 LOADN                            R37 0
      239 JUMPIFNOT                        R4 ; [+2]
      240 LOADN                            R38 2
      241 JUMP                             ; [+1]
      242 MOVE                             R38 R5
      243 CALL                             R36 2 1
      244 SETTABLEKS                       R36 R35 K36 ["PaddingBottom"]
      246 GETIMPORT                        R36 K41 [UDim.new]
      248 LOADN                            R37 0
      249 LOADN                            R38 0
      250 CALL                             R36 2 1
      251 SETTABLEKS                       R36 R35 K38 ["PaddingRight"]
      253 CALL                             R33 2 1
      254 MOVE                             R34 R2
      255 LOADK                            R35 K78 ["::UIFlexItem"]
      256 DUPTABLE                         R36 K80 [{"FlexMode"}]
      257 GETIMPORT                        R37 K83 [Enum.UIFlexMode.Shrink]
      259 SETTABLEKS                       R37 R36 K79 ["FlexMode"]
      261 CALL                             R34 2 -1
      262 SETLIST                          R32 R33 -1 [1]
      264 CALL                             R29 3 1
      265 MOVE                             R30 R2
      266 LOADK                            R31 K84 ["> #HeaderIcons"]
      267 DUPTABLE                         R32 K86 [{"AutomaticSize"}]
      268 GETIMPORT                        R33 K88 [Enum.AutomaticSize.XY]
      270 SETTABLEKS                       R33 R32 K85 ["AutomaticSize"]
      272 NEWTABLE                         R33 0 4
      274 MOVE                             R34 R2
      275 LOADK                            R35 K56 ["::UIListLayout"]
      276 DUPTABLE                         R36 K58 [{"HorizontalFlex"}]
      277 GETIMPORT                        R37 K90 [Enum.UIFlexAlignment.Fill]
      279 SETTABLEKS                       R37 R36 K57 ["HorizontalFlex"]
      281 CALL                             R34 2 1
      282 MOVE                             R35 R2
      283 LOADK                            R36 K91 ["> .HeaderIcon"]
      284 DUPTABLE                         R37 K92 [{"Size", "AutomaticSize"}]
      285 GETIMPORT                        R38 K28 [UDim2.new]
      287 LOADN                            R39 0
      288 LOADN                            R40 0
      289 LOADN                            R41 1
      290 LOADN                            R42 0
      291 CALL                             R38 4 1
      292 SETTABLEKS                       R38 R37 K23 ["Size"]
      294 GETIMPORT                        R38 K94 [Enum.AutomaticSize.X]
      296 SETTABLEKS                       R38 R37 K85 ["AutomaticSize"]
      298 NEWTABLE                         R38 0 3
      300 MOVE                             R39 R2
      301 LOADK                            R40 K56 ["::UIListLayout"]
      302 DUPTABLE                         R41 K96 [{"VerticalAlignment"}]
      303 GETIMPORT                        R42 K98 [Enum.VerticalAlignment.Center]
      305 SETTABLEKS                       R42 R41 K95 ["VerticalAlignment"]
      307 CALL                             R39 2 1
      308 MOVE                             R40 R2
      309 LOADK                            R41 K34 ["::UIPadding"]
      310 DUPTABLE                         R42 K99 [{"PaddingLeft", "PaddingRight"}]
      311 GETIMPORT                        R43 K41 [UDim.new]
      313 LOADN                            R44 0
      314 JUMPIFNOT                        R4 ; [+2]
      315 LOADN                            R45 2
      316 JUMP                             ; [+1]
      317 MOVE                             R45 R7
      318 CALL                             R43 2 1
      319 SETTABLEKS                       R43 R42 K37 ["PaddingLeft"]
      321 GETIMPORT                        R43 K41 [UDim.new]
      323 LOADN                            R44 0
      324 JUMPIFNOT                        R4 ; [+2]
      325 LOADN                            R45 2
      326 JUMP                             ; [+1]
      327 MOVE                             R45 R7
      328 CALL                             R43 2 1
      329 SETTABLEKS                       R43 R42 K38 ["PaddingRight"]
      331 CALL                             R40 2 1
      332 MOVE                             R41 R2
      333 LOADK                            R42 K100 ["> ImageLabel, > ImageButton"]
      334 DUPTABLE                         R43 K104 [{["Size"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1}]
      335 GETIMPORT                        R44 K28 [UDim2.new]
      337 LOADN                            R45 0
      338 JUMPIFNOT                        R4 ; [+2]
      339 LOADN                            R46 14
      340 JUMP                             ; [+1]
      341 MOVE                             R46 R8
      342 LOADN                            R47 0
      343 JUMPIFNOT                        R4 ; [+2]
      344 LOADN                            R48 14
      345 JUMP                             ; [+1]
      346 MOVE                             R48 R8
      347 CALL                             R44 4 1
      348 SETTABLEKS                       R44 R43 K23 ["Size"]
      350 CALL                             R41 2 -1
      351 SETLIST                          R38 R39 -1 [1]
      353 CALL                             R35 3 1
      354 MOVE                             R36 R2
      355 LOADK                            R37 K105 [">> #ClearFiltersIcon"]
      356 DUPTABLE                         R38 K108 [{["Image"] = "$close"}]
      357 CALL                             R36 2 1
      358 MOVE                             R37 R2
      359 LOADK                            R38 K109 [">> #FilterHeaderIcon"]
      360 DUPTABLE                         R39 K111 [{["Image"] = "$filter"}]
      361 CALL                             R37 2 -1
      362 SETLIST                          R33 R34 -1 [1]
      364 CALL                             R30 3 -1
      365 SETLIST                          R27 R28 -1 [1]
      367 CALL                             R24 3 -1
      368 SETLIST                          R21 R22 -1 [1]
      370 CALL                             R18 3 1
      371 MOVE                             R19 R2
      372 LOADK                            R20 K112 ["> .HeaderHovered #Header"]
      373 NEWTABLE                         R21 0 0
      375 NEWTABLE                         R22 0 2
      377 MOVE                             R23 R2
      378 LOADK                            R24 K48 ["::UIStroke"]
      379 DUPTABLE                         R25 K113 [{"Color"}]
      380 JUMPIFNOT                        R4 ; [+2]
      381 LOADK                            R26 K114 ["$FoundationColorsShift200"]
      382 JUMP                             ; [+1]
      383 LOADK                            R26 K115 ["$ActionHover"]
      384 SETTABLEKS                       R26 R25 K49 ["Color"]
      386 CALL                             R23 2 1
      387 MOVE                             R24 R2
      388 LOADK                            R25 K116 [">> #FilterHeaderIconContainer"]
      389 DUPTABLE                         R26 K117 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"]}]
      390 JUMPIFNOT                        R4 ; [+2]
      391 LOADK                            R27 K114 ["$FoundationColorsShift200"]
      392 JUMP                             ; [+1]
      393 LOADK                            R27 K115 ["$ActionHover"]
      394 SETTABLEKS                       R27 R26 K24 ["BackgroundColor3"]
      396 CALL                             R24 2 -1
      397 SETLIST                          R22 R23 -1 [1]
      399 CALL                             R19 3 1
      400 MOVE                             R20 R2
      401 LOADK                            R21 K118 ["> .HeaderDisabled #Header"]
      402 DUPTABLE                         R22 K121 [{["Interactable"] = False}]
      403 NEWTABLE                         R23 0 2
      405 MOVE                             R24 R2
      406 LOADK                            R25 K122 [">> #FilterHeaderText"]
      407 DUPTABLE                         R26 K123 [{"TextColor3"}]
      408 JUMPIFNOT                        R4 ; [+2]
      409 LOADK                            R27 K124 ["$FoundationColorsContentMuted"]
      410 JUMP                             ; [+1]
      411 LOADK                            R27 K125 ["$TextSecondary"]
      412 SETTABLEKS                       R27 R26 K64 ["TextColor3"]
      414 CALL                             R24 2 1
      415 MOVE                             R25 R2
      416 LOADK                            R26 K116 [">> #FilterHeaderIconContainer"]
      417 NEWTABLE                         R27 0 0
      419 NEWTABLE                         R28 0 1
      421 MOVE                             R29 R2
      422 LOADK                            R30 K126 ["> #FilterHeaderIcon"]
      423 DUPTABLE                         R31 K128 [{["Image"] = "$filterdisabled"}]
      424 CALL                             R29 2 -1
      425 SETLIST                          R28 R29 -1 [1]
      427 CALL                             R25 3 -1
      428 SETLIST                          R23 R24 -1 [1]
      430 CALL                             R20 3 1
      431 MOVE                             R21 R2
      432 LOADK                            R22 K129 ["> #ActivityHistoryBubbleListContainer"]
      433 DUPTABLE                         R23 K131 [{["Size"], ["ZIndex"] = 0}]
      434 GETIMPORT                        R24 K28 [UDim2.new]
      436 LOADN                            R25 1
      437 LOADN                            R26 0
      438 LOADN                            R27 1
      439 MINUS                            R28 R6
      440 CALL                             R24 4 1
      441 SETTABLEKS                       R24 R23 K23 ["Size"]
      443 CALL                             R21 2 -1
      444 SETLIST                          R16 R17 -1 [1]
      446 CALL                             R13 3 1
      447 MOVE                             R14 R2
      448 LOADK                            R15 K132 ["> #FilterMenu"]
      449 DUPTABLE                         R16 K32 [{"Size"}]
      450 GETIMPORT                        R17 K28 [UDim2.new]
      452 LOADN                            R18 1
      453 LOADN                            R19 0
      454 LOADN                            R20 1
      455 LOADN                            R21 0
      456 CALL                             R17 4 1
      457 SETTABLEKS                       R17 R16 K23 ["Size"]
      459 CALL                             R14 2 -1
      460 SETLIST                          R12 R13 -1 [1]
      462 CALL                             R9 3 -1
      463 RETURN                           R9 -1
