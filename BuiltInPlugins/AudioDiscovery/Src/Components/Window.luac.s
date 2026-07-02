PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K7 [{["LayoutOrder"] = 2, ["Size"], ["Layout"]}]
        9 GETIMPORT                        R6 K10 [UDim2.new]
       11 LOADN                            R7 1
       12 LOADN                            R8 0
       13 LOADN                            R9 1
       14 LOADN                            R10 0
       15 CALL                             R6 4 1
       16 SETTABLEKS                       R6 R5 K5 ["Size"]
       18 GETIMPORT                        R6 K14 [Enum.FillDirection.Horizontal]
       20 SETTABLEKS                       R6 R5 K6 ["Layout"]
       22 DUPTABLE                         R6 K17 [{"Left", "Right"}]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K2 ["createElement"]
       26 GETUPVAL                         R8 1
       27 DUPTABLE                         R9 K22 [{["HorizontalAlignment"], ["Layout"], ["Size"], ["Style"] = "Box", ["LayoutOrder"] = 1}]
       28 GETIMPORT                        R10 K23 [Enum.HorizontalAlignment.Left]
       30 SETTABLEKS                       R10 R9 K18 ["HorizontalAlignment"]
       32 GETIMPORT                        R10 K25 [Enum.FillDirection.Vertical]
       34 SETTABLEKS                       R10 R9 K6 ["Layout"]
       36 GETIMPORT                        R10 K10 [UDim2.new]
       38 LOADK                            R11 K26 [0.65]
       39 LOADN                            R12 0
       40 LOADN                            R13 1
       41 LOADN                            R14 0
       42 CALL                             R10 4 1
       43 SETTABLEKS                       R10 R9 K5 ["Size"]
       45 DUPTABLE                         R10 K29 [{"Top", "Main"}]
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R11 R11 K2 ["createElement"]
       49 GETUPVAL                         R12 1
       50 DUPTABLE                         R13 K32 [{["Size"], ["HorizontalAlignment"], ["Padding"] = 5, ["LayoutOrder"] = 1}]
       51 GETIMPORT                        R14 K10 [UDim2.new]
       53 LOADN                            R15 1
       54 LOADN                            R16 0
       55 LOADN                            R17 0
       56 LOADN                            R18 34
       57 CALL                             R14 4 1
       58 SETTABLEKS                       R14 R13 K5 ["Size"]
       60 GETIMPORT                        R14 K23 [Enum.HorizontalAlignment.Left]
       62 SETTABLEKS                       R14 R13 K18 ["HorizontalAlignment"]
       64 DUPTABLE                         R14 K35 [{"Info", "Refresh"}]
       65 GETUPVAL                         R15 0
       66 GETTABLEKS                       R15 R15 K2 ["createElement"]
       68 GETUPVAL                         R16 2
       69 DUPTABLE                         R17 K40 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Text"], ["TextXAlignment"], ["Font"]}]
       70 GETIMPORT                        R18 K42 [Enum.AutomaticSize.XY]
       72 SETTABLEKS                       R18 R17 K36 ["AutomaticSize"]
       74 LOADK                            R23 K43 ["Plugin"]
       75 LOADK                            R24 K44 ["LeftPaneInfo"]
       76 NAMECALL                         R21 R2 K45 ["getText"]
       78 CALL                             R21 3 1
       79 MOVE                             R19 R21
       80 LOADK                            R20 K46 [" (%d)"]
       81 GETTABLEKS                       R23 R1 K47 ["Rows"]
       83 LENGTH                           R22 R23
       84 NAMECALL                         R20 R20 K48 ["format"]
       86 CALL                             R20 2 1
       87 CONCAT                           R18 R19 R20
       88 SETTABLEKS                       R18 R17 K37 ["Text"]
       90 GETIMPORT                        R18 K49 [Enum.TextXAlignment.Left]
       92 SETTABLEKS                       R18 R17 K38 ["TextXAlignment"]
       94 GETIMPORT                        R18 K51 [Enum.Font.SourceSansBold]
       96 SETTABLEKS                       R18 R17 K39 ["Font"]
       98 CALL                             R15 2 1
       99 SETTABLEKS                       R15 R14 K33 ["Info"]
      101 GETUPVAL                         R15 0
      102 GETTABLEKS                       R15 R15 K2 ["createElement"]
      104 GETUPVAL                         R16 3
      105 DUPTABLE                         R17 K56 [{["Text"], ["OnClick"], ["Size"], ["Position"], ["AnchorPoint"], ["Style"] = "Round"}]
      106 LOADK                            R20 K43 ["Plugin"]
      107 LOADK                            R21 K34 ["Refresh"]
      108 NAMECALL                         R18 R2 K45 ["getText"]
      110 CALL                             R18 3 1
      111 SETTABLEKS                       R18 R17 K37 ["Text"]
      113 GETTABLEKS                       R18 R1 K34 ["Refresh"]
      115 SETTABLEKS                       R18 R17 K52 ["OnClick"]
      117 GETIMPORT                        R18 K58 [UDim2.fromOffset]
      119 LOADN                            R19 80
      120 LOADN                            R20 24
      121 CALL                             R18 2 1
      122 SETTABLEKS                       R18 R17 K5 ["Size"]
      124 GETIMPORT                        R18 K60 [UDim2.fromScale]
      126 LOADN                            R19 1
      127 LOADN                            R20 0
      128 CALL                             R18 2 1
      129 SETTABLEKS                       R18 R17 K53 ["Position"]
      131 GETIMPORT                        R18 K62 [Vector2.new]
      133 LOADN                            R19 1
      134 LOADN                            R20 0
      135 CALL                             R18 2 1
      136 SETTABLEKS                       R18 R17 K54 ["AnchorPoint"]
      138 CALL                             R15 2 1
      139 SETTABLEKS                       R15 R14 K34 ["Refresh"]
      141 CALL                             R11 3 1
      142 SETTABLEKS                       R11 R10 K27 ["Top"]
      144 GETUPVAL                         R11 0
      145 GETTABLEKS                       R11 R11 K2 ["createElement"]
      147 GETUPVAL                         R12 1
      148 DUPTABLE                         R13 K65 [{["Size"], ["ClipsDescendants"] = True, ["LayoutOrder"] = 2}]
      149 GETIMPORT                        R14 K10 [UDim2.new]
      151 LOADN                            R15 1
      152 LOADN                            R16 0
      153 LOADN                            R17 1
      154 LOADN                            R18 -34
      155 CALL                             R14 4 1
      156 SETTABLEKS                       R14 R13 K5 ["Size"]
      158 DUPTABLE                         R14 K67 [{"Child"}]
      159 GETUPVAL                         R15 0
      160 GETTABLEKS                       R15 R15 K2 ["createElement"]
      162 GETUPVAL                         R16 4
      163 CALL                             R15 1 1
      164 SETTABLEKS                       R15 R14 K66 ["Child"]
      166 CALL                             R11 3 1
      167 SETTABLEKS                       R11 R10 K28 ["Main"]
      169 CALL                             R7 3 1
      170 SETTABLEKS                       R7 R6 K15 ["Left"]
      172 GETUPVAL                         R7 0
      173 GETTABLEKS                       R7 R7 K2 ["createElement"]
      175 GETUPVAL                         R8 1
      176 DUPTABLE                         R9 K68 [{["HorizontalAlignment"], ["Layout"], ["Size"], ["Style"] = "Box", ["LayoutOrder"] = 2}]
      177 GETIMPORT                        R10 K23 [Enum.HorizontalAlignment.Left]
      179 SETTABLEKS                       R10 R9 K18 ["HorizontalAlignment"]
      181 GETIMPORT                        R10 K25 [Enum.FillDirection.Vertical]
      183 SETTABLEKS                       R10 R9 K6 ["Layout"]
      185 GETIMPORT                        R10 K10 [UDim2.new]
      187 LOADK                            R11 K69 [0.35]
      188 LOADN                            R12 0
      189 LOADN                            R13 1
      190 LOADN                            R14 0
      191 CALL                             R10 4 1
      192 SETTABLEKS                       R10 R9 K5 ["Size"]
      194 DUPTABLE                         R10 K29 [{"Top", "Main"}]
      195 GETUPVAL                         R11 0
      196 GETTABLEKS                       R11 R11 K2 ["createElement"]
      198 GETUPVAL                         R12 1
      199 DUPTABLE                         R13 K70 [{["AutomaticSize"], ["HorizontalAlignment"], ["Padding"] = 5, ["LayoutOrder"] = 1}]
      200 GETIMPORT                        R14 K42 [Enum.AutomaticSize.XY]
      202 SETTABLEKS                       R14 R13 K36 ["AutomaticSize"]
      204 GETIMPORT                        R14 K23 [Enum.HorizontalAlignment.Left]
      206 SETTABLEKS                       R14 R13 K18 ["HorizontalAlignment"]
      208 DUPTABLE                         R14 K71 [{"Info"}]
      209 GETUPVAL                         R15 0
      210 GETTABLEKS                       R15 R15 K2 ["createElement"]
      212 GETUPVAL                         R16 2
      213 DUPTABLE                         R17 K72 [{"AutomaticSize", "Text", "TextXAlignment", "Font"}]
      214 GETIMPORT                        R18 K42 [Enum.AutomaticSize.XY]
      216 SETTABLEKS                       R18 R17 K36 ["AutomaticSize"]
      218 LOADK                            R20 K43 ["Plugin"]
      219 LOADK                            R21 K73 ["RightPaneInfo"]
      220 NAMECALL                         R18 R2 K45 ["getText"]
      222 CALL                             R18 3 1
      223 SETTABLEKS                       R18 R17 K37 ["Text"]
      225 GETIMPORT                        R18 K49 [Enum.TextXAlignment.Left]
      227 SETTABLEKS                       R18 R17 K38 ["TextXAlignment"]
      229 GETIMPORT                        R18 K51 [Enum.Font.SourceSansBold]
      231 SETTABLEKS                       R18 R17 K39 ["Font"]
      233 CALL                             R15 2 1
      234 SETTABLEKS                       R15 R14 K33 ["Info"]
      236 CALL                             R11 3 1
      237 SETTABLEKS                       R11 R10 K27 ["Top"]
      239 GETUPVAL                         R11 0
      240 GETTABLEKS                       R11 R11 K2 ["createElement"]
      242 GETUPVAL                         R12 1
      243 DUPTABLE                         R13 K65 [{["Size"], ["ClipsDescendants"] = True, ["LayoutOrder"] = 2}]
      244 GETIMPORT                        R14 K10 [UDim2.new]
      246 LOADN                            R15 1
      247 LOADN                            R16 0
      248 LOADN                            R17 1
      249 LOADN                            R18 -34
      250 CALL                             R14 4 1
      251 SETTABLEKS                       R14 R13 K5 ["Size"]
      253 DUPTABLE                         R14 K67 [{"Child"}]
      254 GETUPVAL                         R15 0
      255 GETTABLEKS                       R15 R15 K2 ["createElement"]
      257 GETUPVAL                         R16 5
      258 CALL                             R15 1 1
      259 SETTABLEKS                       R15 R14 K66 ["Child"]
      261 CALL                             R11 3 1
      262 SETTABLEKS                       R11 R10 K28 ["Main"]
      264 CALL                             R7 3 1
      265 SETTABLEKS                       R7 R6 K16 ["Right"]
      267 CALL                             R3 3 1
      268 GETTABLEKS                       R4 R1 K74 ["Paused"]
      270 JUMPIFNOT                        R4 ; [+164]
      271 GETUPVAL                         R4 0
      272 GETTABLEKS                       R4 R4 K2 ["createElement"]
      274 GETUPVAL                         R5 1
      275 DUPTABLE                         R6 K75 [{["Style"] = "Box"}]
      276 DUPTABLE                         R7 K78 [{"Pane", "Overlay"}]
      277 SETTABLEKS                       R3 R7 K76 ["Pane"]
      279 GETUPVAL                         R8 0
      280 GETTABLEKS                       R8 R8 K2 ["createElement"]
      282 GETUPVAL                         R9 1
      283 DUPTABLE                         R10 K83 [{["Active"] = True, ["Style"] = "Box", ["BackgroundTransparency"] = 0.2, ["ZIndex"] = 2}]
      284 DUPTABLE                         R11 K85 [{"Dialog"}]
      285 GETUPVAL                         R12 0
      286 GETTABLEKS                       R12 R12 K2 ["createElement"]
      288 GETUPVAL                         R13 1
      289 DUPTABLE                         R14 K86 [{"Position", "AnchorPoint", "Size"}]
      290 GETIMPORT                        R15 K60 [UDim2.fromScale]
      292 LOADK                            R16 K87 [0.5]
      293 LOADK                            R17 K87 [0.5]
      294 CALL                             R15 2 1
      295 SETTABLEKS                       R15 R14 K53 ["Position"]
      297 GETIMPORT                        R15 K62 [Vector2.new]
      299 LOADK                            R16 K87 [0.5]
      300 LOADK                            R17 K87 [0.5]
      301 CALL                             R15 2 1
      302 SETTABLEKS                       R15 R14 K54 ["AnchorPoint"]
      304 GETIMPORT                        R15 K58 [UDim2.fromOffset]
      306 LOADN                            R16 400
      307 LOADN                            R17 150
      308 CALL                             R15 2 1
      309 SETTABLEKS                       R15 R14 K5 ["Size"]
      311 DUPTABLE                         R15 K89 [{"DropShadow"}]
      312 GETUPVAL                         R16 0
      313 GETTABLEKS                       R16 R16 K2 ["createElement"]
      315 GETUPVAL                         R17 6
      316 NEWTABLE                         R18 0 0
      318 DUPTABLE                         R19 K67 [{"Child"}]
      319 GETUPVAL                         R20 0
      320 GETTABLEKS                       R20 R20 K2 ["createElement"]
      322 GETUPVAL                         R21 1
      323 DUPTABLE                         R22 K92 [{["Style"] = "Box", ["Layout"], ["HorizontalAlignment"], ["Padding"] = 20, ["Spacing"] = 5}]
      324 GETIMPORT                        R23 K25 [Enum.FillDirection.Vertical]
      326 SETTABLEKS                       R23 R22 K6 ["Layout"]
      328 GETIMPORT                        R23 K93 [Enum.HorizontalAlignment.Right]
      330 SETTABLEKS                       R23 R22 K18 ["HorizontalAlignment"]
      332 DUPTABLE                         R23 K96 [{"Title", "Text", "Close"}]
      333 GETUPVAL                         R24 0
      334 GETTABLEKS                       R24 R24 K2 ["createElement"]
      336 GETUPVAL                         R25 2
      337 DUPTABLE                         R26 K99 [{["TextSize"] = 24, ["TextXAlignment"], ["Text"], ["AutomaticSize"], ["Size"], ["LayoutOrder"] = 1}]
      338 GETIMPORT                        R27 K49 [Enum.TextXAlignment.Left]
      340 SETTABLEKS                       R27 R26 K38 ["TextXAlignment"]
      342 LOADK                            R29 K100 ["PausedDialog"]
      343 LOADK                            R30 K94 ["Title"]
      344 NAMECALL                         R27 R2 K45 ["getText"]
      346 CALL                             R27 3 1
      347 SETTABLEKS                       R27 R26 K37 ["Text"]
      349 GETIMPORT                        R27 K102 [Enum.AutomaticSize.Y]
      351 SETTABLEKS                       R27 R26 K36 ["AutomaticSize"]
      353 GETIMPORT                        R27 K60 [UDim2.fromScale]
      355 LOADN                            R28 1
      356 LOADN                            R29 0
      357 CALL                             R27 2 1
      358 SETTABLEKS                       R27 R26 K5 ["Size"]
      360 CALL                             R24 2 1
      361 SETTABLEKS                       R24 R23 K94 ["Title"]
      363 GETUPVAL                         R24 0
      364 GETTABLEKS                       R24 R24 K2 ["createElement"]
      366 GETUPVAL                         R25 2
      367 DUPTABLE                         R26 K106 [{["TextSize"] = 17, ["TextXAlignment"], ["Text"], ["RichText"] = True, ["AutomaticSize"], ["Size"], ["TextWrapped"] = True, ["LayoutOrder"] = 2}]
      368 GETIMPORT                        R27 K49 [Enum.TextXAlignment.Left]
      370 SETTABLEKS                       R27 R26 K38 ["TextXAlignment"]
      372 LOADK                            R29 K100 ["PausedDialog"]
      373 LOADK                            R30 K37 ["Text"]
      374 NAMECALL                         R27 R2 K45 ["getText"]
      376 CALL                             R27 3 1
      377 SETTABLEKS                       R27 R26 K37 ["Text"]
      379 GETIMPORT                        R27 K102 [Enum.AutomaticSize.Y]
      381 SETTABLEKS                       R27 R26 K36 ["AutomaticSize"]
      383 GETIMPORT                        R27 K60 [UDim2.fromScale]
      385 LOADN                            R28 1
      386 LOADN                            R29 0
      387 CALL                             R27 2 1
      388 SETTABLEKS                       R27 R26 K5 ["Size"]
      390 CALL                             R24 2 1
      391 SETTABLEKS                       R24 R23 K37 ["Text"]
      393 GETUPVAL                         R24 0
      394 GETTABLEKS                       R24 R24 K2 ["createElement"]
      396 GETUPVAL                         R25 3
      397 DUPTABLE                         R26 K108 [{["Text"], ["OnClick"], ["Size"], ["LayoutOrder"] = 3, ["Style"] = "Round"}]
      398 LOADK                            R29 K100 ["PausedDialog"]
      399 LOADK                            R30 K95 ["Close"]
      400 NAMECALL                         R27 R2 K45 ["getText"]
      402 CALL                             R27 3 1
      403 SETTABLEKS                       R27 R26 K37 ["Text"]
      405 GETTABLEKS                       R27 R0 K0 ["props"]
      407 GETTABLEKS                       R27 R27 K109 ["Unpause"]
      409 SETTABLEKS                       R27 R26 K52 ["OnClick"]
      411 GETIMPORT                        R27 K58 [UDim2.fromOffset]
      413 LOADN                            R28 120
      414 LOADN                            R29 32
      415 CALL                             R27 2 1
      416 SETTABLEKS                       R27 R26 K5 ["Size"]
      418 CALL                             R24 2 1
      419 SETTABLEKS                       R24 R23 K95 ["Close"]
      421 CALL                             R20 3 1
      422 SETTABLEKS                       R20 R19 K66 ["Child"]
      424 CALL                             R16 3 1
      425 SETTABLEKS                       R16 R15 K88 ["DropShadow"]
      427 CALL                             R12 3 1
      428 SETTABLEKS                       R12 R11 K84 ["Dialog"]
      430 CALL                             R8 3 1
      431 SETTABLEKS                       R8 R7 K77 ["Overlay"]
      433 CALL                             R4 3 -1
      434 RETURN                           R4 -1
      435 GETTABLEKS                       R4 R1 K84 ["Dialog"]
      437 JUMPIFNOT                        R4 ; [+162]
      438 GETUPVAL                         R4 0
      439 GETTABLEKS                       R4 R4 K2 ["createElement"]
      441 GETUPVAL                         R5 1
      442 DUPTABLE                         R6 K75 [{["Style"] = "Box"}]
      443 DUPTABLE                         R7 K78 [{"Pane", "Overlay"}]
      444 SETTABLEKS                       R3 R7 K76 ["Pane"]
      446 GETUPVAL                         R8 0
      447 GETTABLEKS                       R8 R8 K2 ["createElement"]
      449 GETUPVAL                         R9 1
      450 DUPTABLE                         R10 K83 [{["Active"] = True, ["Style"] = "Box", ["BackgroundTransparency"] = 0.2, ["ZIndex"] = 2}]
      451 DUPTABLE                         R11 K85 [{"Dialog"}]
      452 GETUPVAL                         R12 0
      453 GETTABLEKS                       R12 R12 K2 ["createElement"]
      455 GETUPVAL                         R13 1
      456 DUPTABLE                         R14 K86 [{"Position", "AnchorPoint", "Size"}]
      457 GETIMPORT                        R15 K60 [UDim2.fromScale]
      459 LOADK                            R16 K87 [0.5]
      460 LOADK                            R17 K87 [0.5]
      461 CALL                             R15 2 1
      462 SETTABLEKS                       R15 R14 K53 ["Position"]
      464 GETIMPORT                        R15 K62 [Vector2.new]
      466 LOADK                            R16 K87 [0.5]
      467 LOADK                            R17 K87 [0.5]
      468 CALL                             R15 2 1
      469 SETTABLEKS                       R15 R14 K54 ["AnchorPoint"]
      471 GETIMPORT                        R15 K58 [UDim2.fromOffset]
      473 LOADN                            R16 400
      474 LOADN                            R17 250
      475 CALL                             R15 2 1
      476 SETTABLEKS                       R15 R14 K5 ["Size"]
      478 DUPTABLE                         R15 K89 [{"DropShadow"}]
      479 GETUPVAL                         R16 0
      480 GETTABLEKS                       R16 R16 K2 ["createElement"]
      482 GETUPVAL                         R17 6
      483 NEWTABLE                         R18 0 0
      485 DUPTABLE                         R19 K67 [{"Child"}]
      486 GETUPVAL                         R20 0
      487 GETTABLEKS                       R20 R20 K2 ["createElement"]
      489 GETUPVAL                         R21 1
      490 DUPTABLE                         R22 K92 [{["Style"] = "Box", ["Layout"], ["HorizontalAlignment"], ["Padding"] = 20, ["Spacing"] = 5}]
      491 GETIMPORT                        R23 K25 [Enum.FillDirection.Vertical]
      493 SETTABLEKS                       R23 R22 K6 ["Layout"]
      495 GETIMPORT                        R23 K93 [Enum.HorizontalAlignment.Right]
      497 SETTABLEKS                       R23 R22 K18 ["HorizontalAlignment"]
      499 DUPTABLE                         R23 K96 [{"Title", "Text", "Close"}]
      500 GETUPVAL                         R24 0
      501 GETTABLEKS                       R24 R24 K2 ["createElement"]
      503 GETUPVAL                         R25 2
      504 DUPTABLE                         R26 K99 [{["TextSize"] = 24, ["TextXAlignment"], ["Text"], ["AutomaticSize"], ["Size"], ["LayoutOrder"] = 1}]
      505 GETIMPORT                        R27 K49 [Enum.TextXAlignment.Left]
      507 SETTABLEKS                       R27 R26 K38 ["TextXAlignment"]
      509 LOADK                            R29 K84 ["Dialog"]
      510 LOADK                            R30 K94 ["Title"]
      511 NAMECALL                         R27 R2 K45 ["getText"]
      513 CALL                             R27 3 1
      514 SETTABLEKS                       R27 R26 K37 ["Text"]
      516 GETIMPORT                        R27 K102 [Enum.AutomaticSize.Y]
      518 SETTABLEKS                       R27 R26 K36 ["AutomaticSize"]
      520 GETIMPORT                        R27 K60 [UDim2.fromScale]
      522 LOADN                            R28 1
      523 LOADN                            R29 0
      524 CALL                             R27 2 1
      525 SETTABLEKS                       R27 R26 K5 ["Size"]
      527 CALL                             R24 2 1
      528 SETTABLEKS                       R24 R23 K94 ["Title"]
      530 GETUPVAL                         R24 0
      531 GETTABLEKS                       R24 R24 K2 ["createElement"]
      533 GETUPVAL                         R25 2
      534 DUPTABLE                         R26 K106 [{["TextSize"] = 17, ["TextXAlignment"], ["Text"], ["RichText"] = True, ["AutomaticSize"], ["Size"], ["TextWrapped"] = True, ["LayoutOrder"] = 2}]
      535 GETIMPORT                        R27 K49 [Enum.TextXAlignment.Left]
      537 SETTABLEKS                       R27 R26 K38 ["TextXAlignment"]
      539 LOADK                            R29 K84 ["Dialog"]
      540 LOADK                            R30 K37 ["Text"]
      541 NAMECALL                         R27 R2 K45 ["getText"]
      543 CALL                             R27 3 1
      544 SETTABLEKS                       R27 R26 K37 ["Text"]
      546 GETIMPORT                        R27 K102 [Enum.AutomaticSize.Y]
      548 SETTABLEKS                       R27 R26 K36 ["AutomaticSize"]
      550 GETIMPORT                        R27 K60 [UDim2.fromScale]
      552 LOADN                            R28 1
      553 LOADN                            R29 0
      554 CALL                             R27 2 1
      555 SETTABLEKS                       R27 R26 K5 ["Size"]
      557 CALL                             R24 2 1
      558 SETTABLEKS                       R24 R23 K37 ["Text"]
      560 GETUPVAL                         R24 0
      561 GETTABLEKS                       R24 R24 K2 ["createElement"]
      563 GETUPVAL                         R25 3
      564 DUPTABLE                         R26 K108 [{["Text"], ["OnClick"], ["Size"], ["LayoutOrder"] = 3, ["Style"] = "Round"}]
      565 LOADK                            R29 K84 ["Dialog"]
      566 LOADK                            R30 K95 ["Close"]
      567 NAMECALL                         R27 R2 K45 ["getText"]
      569 CALL                             R27 3 1
      570 SETTABLEKS                       R27 R26 K37 ["Text"]
      572 GETTABLEKS                       R27 R1 K110 ["CloseDialog"]
      574 SETTABLEKS                       R27 R26 K52 ["OnClick"]
      576 GETIMPORT                        R27 K58 [UDim2.fromOffset]
      578 LOADN                            R28 120
      579 LOADN                            R29 32
      580 CALL                             R27 2 1
      581 SETTABLEKS                       R27 R26 K5 ["Size"]
      583 CALL                             R24 2 1
      584 SETTABLEKS                       R24 R23 K95 ["Close"]
      586 CALL                             R20 3 1
      587 SETTABLEKS                       R20 R19 K66 ["Child"]
      589 CALL                             R16 3 1
      590 SETTABLEKS                       R16 R15 K88 ["DropShadow"]
      592 CALL                             R12 3 1
      593 SETTABLEKS                       R12 R11 K84 ["Dialog"]
      595 CALL                             R8 3 1
      596 SETTABLEKS                       R8 R7 K77 ["Overlay"]
      598 CALL                             R4 3 -1
      599 RETURN                           R4 -1
      600 RETURN                           R3 1

PROTO_1:
        0 DUPTABLE                         R2 K3 [{"Paused", "Dialog", "Rows"}]
        1 GETTABLEKS                       R3 R0 K4 ["Audio"]
        3 GETTABLEKS                       R3 R3 K0 ["Paused"]
        5 SETTABLEKS                       R3 R2 K0 ["Paused"]
        7 GETTABLEKS                       R3 R0 K4 ["Audio"]
        9 GETTABLEKS                       R3 R3 K1 ["Dialog"]
       11 SETTABLEKS                       R3 R2 K1 ["Dialog"]
       13 GETTABLEKS                       R3 R0 K4 ["Audio"]
       15 GETTABLEKS                       R3 R3 K2 ["Rows"]
       17 SETTABLEKS                       R3 R2 K2 ["Rows"]
       19 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K3 [{"Refresh", "CloseDialog", "Unpause"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["Refresh"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["CloseDialog"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U0
       15 SETTABLEKS                       R2 R1 K2 ["Unpause"]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Thunks"]
       29 GETTABLEKS                       R4 R4 K10 ["DiscoverAudio"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Actions"]
       38 GETTABLEKS                       R5 R5 K12 ["SetDialog"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K11 ["Actions"]
       47 GETTABLEKS                       R6 R6 K13 ["Unpause"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K4 [require]
       52 GETTABLEKS                       R7 R0 K5 ["Packages"]
       54 GETTABLEKS                       R7 R7 K14 ["Framework"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R6 K15 ["UI"]
       59 GETTABLEKS                       R8 R7 K16 ["DropShadow"]
       61 GETTABLEKS                       R9 R7 K17 ["Button"]
       63 GETTABLEKS                       R10 R7 K18 ["Pane"]
       65 GETTABLEKS                       R11 R7 K19 ["TextLabel"]
       67 GETTABLEKS                       R12 R6 K20 ["ContextServices"]
       69 GETTABLEKS                       R13 R12 K21 ["withContext"]
       71 GETTABLEKS                       R14 R12 K22 ["Localization"]
       73 GETIMPORT                        R15 K4 [require]
       75 GETTABLEKS                       R16 R0 K8 ["Src"]
       77 GETTABLEKS                       R16 R16 K23 ["Components"]
       79 GETTABLEKS                       R16 R16 K24 ["LeftPanel"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K4 [require]
       84 GETTABLEKS                       R17 R0 K8 ["Src"]
       86 GETTABLEKS                       R17 R17 K23 ["Components"]
       88 GETTABLEKS                       R17 R17 K25 ["RightPanel"]
       90 CALL                             R16 1 1
       91 GETTABLEKS                       R17 R1 K26 ["PureComponent"]
       93 LOADK                            R19 K27 ["Window"]
       94 NAMECALL                         R17 R17 K28 ["extend"]
       96 CALL                             R17 2 1
       97 DUPCLOSURE                       R18 K29 [PROTO_0]
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R8
      105 SETTABLEKS                       R18 R17 K30 ["render"]
      107 MOVE                             R18 R13
      108 DUPTABLE                         R19 K31 [{"Localization"}]
      109 SETTABLEKS                       R14 R19 K22 ["Localization"]
      111 CALL                             R18 1 1
      112 MOVE                             R19 R17
      113 CALL                             R18 1 1
      114 MOVE                             R17 R18
      115 GETTABLEKS                       R18 R2 K32 ["connect"]
      117 DUPCLOSURE                       R19 K33 [PROTO_1]
      118 DUPCLOSURE                       R20 K34 [PROTO_5]
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R5
      122 CALL                             R18 2 1
      123 MOVE                             R19 R17
      124 CALL                             R18 1 -1
      125 RETURN                           R18 -1
