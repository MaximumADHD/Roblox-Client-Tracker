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
       74 LOADK                            R21 K43 ["Plugin"]
       75 LOADK                            R22 K44 ["LeftPaneInfo"]
       76 NAMECALL                         R19 R2 K45 ["getText"]
       78 CALL                             R19 3 1
       79 LOADK                            R20 K46 [" (%d)"]
       80 GETTABLEKS                       R23 R1 K47 ["Rows"]
       82 LENGTH                           R22 R23
       83 NAMECALL                         R20 R20 K48 ["format"]
       85 CALL                             R20 2 1
       86 CONCAT                           R18 R19 R20
       87 SETTABLEKS                       R18 R17 K37 ["Text"]
       89 GETIMPORT                        R18 K49 [Enum.TextXAlignment.Left]
       91 SETTABLEKS                       R18 R17 K38 ["TextXAlignment"]
       93 GETIMPORT                        R18 K51 [Enum.Font.SourceSansBold]
       95 SETTABLEKS                       R18 R17 K39 ["Font"]
       97 CALL                             R15 2 1
       98 SETTABLEKS                       R15 R14 K33 ["Info"]
      100 GETUPVAL                         R15 0
      101 GETTABLEKS                       R15 R15 K2 ["createElement"]
      103 GETUPVAL                         R16 3
      104 DUPTABLE                         R17 K56 [{["Text"], ["OnClick"], ["Size"], ["Position"], ["AnchorPoint"], ["Style"] = "Round"}]
      105 LOADK                            R20 K43 ["Plugin"]
      106 LOADK                            R21 K34 ["Refresh"]
      107 NAMECALL                         R18 R2 K45 ["getText"]
      109 CALL                             R18 3 1
      110 SETTABLEKS                       R18 R17 K37 ["Text"]
      112 GETTABLEKS                       R18 R1 K34 ["Refresh"]
      114 SETTABLEKS                       R18 R17 K52 ["OnClick"]
      116 GETIMPORT                        R18 K58 [UDim2.fromOffset]
      118 LOADN                            R19 80
      119 LOADN                            R20 24
      120 CALL                             R18 2 1
      121 SETTABLEKS                       R18 R17 K5 ["Size"]
      123 GETIMPORT                        R18 K60 [UDim2.fromScale]
      125 LOADN                            R19 1
      126 LOADN                            R20 0
      127 CALL                             R18 2 1
      128 SETTABLEKS                       R18 R17 K53 ["Position"]
      130 GETIMPORT                        R18 K62 [Vector2.new]
      132 LOADN                            R19 1
      133 LOADN                            R20 0
      134 CALL                             R18 2 1
      135 SETTABLEKS                       R18 R17 K54 ["AnchorPoint"]
      137 CALL                             R15 2 1
      138 SETTABLEKS                       R15 R14 K34 ["Refresh"]
      140 CALL                             R11 3 1
      141 SETTABLEKS                       R11 R10 K27 ["Top"]
      143 GETUPVAL                         R11 0
      144 GETTABLEKS                       R11 R11 K2 ["createElement"]
      146 GETUPVAL                         R12 1
      147 DUPTABLE                         R13 K65 [{["Size"], ["ClipsDescendants"] = True, ["LayoutOrder"] = 2}]
      148 GETIMPORT                        R14 K10 [UDim2.new]
      150 LOADN                            R15 1
      151 LOADN                            R16 0
      152 LOADN                            R17 1
      153 LOADN                            R18 -34
      154 CALL                             R14 4 1
      155 SETTABLEKS                       R14 R13 K5 ["Size"]
      157 DUPTABLE                         R14 K67 [{"Child"}]
      158 GETUPVAL                         R15 0
      159 GETTABLEKS                       R15 R15 K2 ["createElement"]
      161 GETUPVAL                         R16 4
      162 CALL                             R15 1 1
      163 SETTABLEKS                       R15 R14 K66 ["Child"]
      165 CALL                             R11 3 1
      166 SETTABLEKS                       R11 R10 K28 ["Main"]
      168 CALL                             R7 3 1
      169 SETTABLEKS                       R7 R6 K15 ["Left"]
      171 GETUPVAL                         R7 0
      172 GETTABLEKS                       R7 R7 K2 ["createElement"]
      174 GETUPVAL                         R8 1
      175 DUPTABLE                         R9 K68 [{["HorizontalAlignment"], ["Layout"], ["Size"], ["Style"] = "Box", ["LayoutOrder"] = 2}]
      176 GETIMPORT                        R10 K23 [Enum.HorizontalAlignment.Left]
      178 SETTABLEKS                       R10 R9 K18 ["HorizontalAlignment"]
      180 GETIMPORT                        R10 K25 [Enum.FillDirection.Vertical]
      182 SETTABLEKS                       R10 R9 K6 ["Layout"]
      184 GETIMPORT                        R10 K10 [UDim2.new]
      186 LOADK                            R11 K69 [0.35]
      187 LOADN                            R12 0
      188 LOADN                            R13 1
      189 LOADN                            R14 0
      190 CALL                             R10 4 1
      191 SETTABLEKS                       R10 R9 K5 ["Size"]
      193 DUPTABLE                         R10 K29 [{"Top", "Main"}]
      194 GETUPVAL                         R11 0
      195 GETTABLEKS                       R11 R11 K2 ["createElement"]
      197 GETUPVAL                         R12 1
      198 DUPTABLE                         R13 K70 [{["AutomaticSize"], ["HorizontalAlignment"], ["Padding"] = 5, ["LayoutOrder"] = 1}]
      199 GETIMPORT                        R14 K42 [Enum.AutomaticSize.XY]
      201 SETTABLEKS                       R14 R13 K36 ["AutomaticSize"]
      203 GETIMPORT                        R14 K23 [Enum.HorizontalAlignment.Left]
      205 SETTABLEKS                       R14 R13 K18 ["HorizontalAlignment"]
      207 DUPTABLE                         R14 K71 [{"Info"}]
      208 GETUPVAL                         R15 0
      209 GETTABLEKS                       R15 R15 K2 ["createElement"]
      211 GETUPVAL                         R16 2
      212 DUPTABLE                         R17 K72 [{"AutomaticSize", "Text", "TextXAlignment", "Font"}]
      213 GETIMPORT                        R18 K42 [Enum.AutomaticSize.XY]
      215 SETTABLEKS                       R18 R17 K36 ["AutomaticSize"]
      217 LOADK                            R20 K43 ["Plugin"]
      218 LOADK                            R21 K73 ["RightPaneInfo"]
      219 NAMECALL                         R18 R2 K45 ["getText"]
      221 CALL                             R18 3 1
      222 SETTABLEKS                       R18 R17 K37 ["Text"]
      224 GETIMPORT                        R18 K49 [Enum.TextXAlignment.Left]
      226 SETTABLEKS                       R18 R17 K38 ["TextXAlignment"]
      228 GETIMPORT                        R18 K51 [Enum.Font.SourceSansBold]
      230 SETTABLEKS                       R18 R17 K39 ["Font"]
      232 CALL                             R15 2 1
      233 SETTABLEKS                       R15 R14 K33 ["Info"]
      235 CALL                             R11 3 1
      236 SETTABLEKS                       R11 R10 K27 ["Top"]
      238 GETUPVAL                         R11 0
      239 GETTABLEKS                       R11 R11 K2 ["createElement"]
      241 GETUPVAL                         R12 1
      242 DUPTABLE                         R13 K65 [{["Size"], ["ClipsDescendants"] = True, ["LayoutOrder"] = 2}]
      243 GETIMPORT                        R14 K10 [UDim2.new]
      245 LOADN                            R15 1
      246 LOADN                            R16 0
      247 LOADN                            R17 1
      248 LOADN                            R18 -34
      249 CALL                             R14 4 1
      250 SETTABLEKS                       R14 R13 K5 ["Size"]
      252 DUPTABLE                         R14 K67 [{"Child"}]
      253 GETUPVAL                         R15 0
      254 GETTABLEKS                       R15 R15 K2 ["createElement"]
      256 GETUPVAL                         R16 5
      257 CALL                             R15 1 1
      258 SETTABLEKS                       R15 R14 K66 ["Child"]
      260 CALL                             R11 3 1
      261 SETTABLEKS                       R11 R10 K28 ["Main"]
      263 CALL                             R7 3 1
      264 SETTABLEKS                       R7 R6 K16 ["Right"]
      266 CALL                             R3 3 1
      267 GETTABLEKS                       R4 R1 K74 ["Paused"]
      269 JUMPIFNOT                        R4 ; [+164]
      270 GETUPVAL                         R4 0
      271 GETTABLEKS                       R4 R4 K2 ["createElement"]
      273 GETUPVAL                         R5 1
      274 DUPTABLE                         R6 K75 [{["Style"] = "Box"}]
      275 DUPTABLE                         R7 K78 [{"Pane", "Overlay"}]
      276 SETTABLEKS                       R3 R7 K76 ["Pane"]
      278 GETUPVAL                         R8 0
      279 GETTABLEKS                       R8 R8 K2 ["createElement"]
      281 GETUPVAL                         R9 1
      282 DUPTABLE                         R10 K83 [{["Active"] = True, ["Style"] = "Box", ["BackgroundTransparency"] = 0.2, ["ZIndex"] = 2}]
      283 DUPTABLE                         R11 K85 [{"Dialog"}]
      284 GETUPVAL                         R12 0
      285 GETTABLEKS                       R12 R12 K2 ["createElement"]
      287 GETUPVAL                         R13 1
      288 DUPTABLE                         R14 K86 [{"Position", "AnchorPoint", "Size"}]
      289 GETIMPORT                        R15 K60 [UDim2.fromScale]
      291 LOADK                            R16 K87 [0.5]
      292 LOADK                            R17 K87 [0.5]
      293 CALL                             R15 2 1
      294 SETTABLEKS                       R15 R14 K53 ["Position"]
      296 GETIMPORT                        R15 K62 [Vector2.new]
      298 LOADK                            R16 K87 [0.5]
      299 LOADK                            R17 K87 [0.5]
      300 CALL                             R15 2 1
      301 SETTABLEKS                       R15 R14 K54 ["AnchorPoint"]
      303 GETIMPORT                        R15 K58 [UDim2.fromOffset]
      305 LOADN                            R16 400
      306 LOADN                            R17 150
      307 CALL                             R15 2 1
      308 SETTABLEKS                       R15 R14 K5 ["Size"]
      310 DUPTABLE                         R15 K89 [{"DropShadow"}]
      311 GETUPVAL                         R16 0
      312 GETTABLEKS                       R16 R16 K2 ["createElement"]
      314 GETUPVAL                         R17 6
      315 NEWTABLE                         R18 0 0
      317 DUPTABLE                         R19 K67 [{"Child"}]
      318 GETUPVAL                         R20 0
      319 GETTABLEKS                       R20 R20 K2 ["createElement"]
      321 GETUPVAL                         R21 1
      322 DUPTABLE                         R22 K92 [{["Style"] = "Box", ["Layout"], ["HorizontalAlignment"], ["Padding"] = 20, ["Spacing"] = 5}]
      323 GETIMPORT                        R23 K25 [Enum.FillDirection.Vertical]
      325 SETTABLEKS                       R23 R22 K6 ["Layout"]
      327 GETIMPORT                        R23 K93 [Enum.HorizontalAlignment.Right]
      329 SETTABLEKS                       R23 R22 K18 ["HorizontalAlignment"]
      331 DUPTABLE                         R23 K96 [{"Title", "Text", "Close"}]
      332 GETUPVAL                         R24 0
      333 GETTABLEKS                       R24 R24 K2 ["createElement"]
      335 GETUPVAL                         R25 2
      336 DUPTABLE                         R26 K99 [{["TextSize"] = 24, ["TextXAlignment"], ["Text"], ["AutomaticSize"], ["Size"], ["LayoutOrder"] = 1}]
      337 GETIMPORT                        R27 K49 [Enum.TextXAlignment.Left]
      339 SETTABLEKS                       R27 R26 K38 ["TextXAlignment"]
      341 LOADK                            R29 K100 ["PausedDialog"]
      342 LOADK                            R30 K94 ["Title"]
      343 NAMECALL                         R27 R2 K45 ["getText"]
      345 CALL                             R27 3 1
      346 SETTABLEKS                       R27 R26 K37 ["Text"]
      348 GETIMPORT                        R27 K102 [Enum.AutomaticSize.Y]
      350 SETTABLEKS                       R27 R26 K36 ["AutomaticSize"]
      352 GETIMPORT                        R27 K60 [UDim2.fromScale]
      354 LOADN                            R28 1
      355 LOADN                            R29 0
      356 CALL                             R27 2 1
      357 SETTABLEKS                       R27 R26 K5 ["Size"]
      359 CALL                             R24 2 1
      360 SETTABLEKS                       R24 R23 K94 ["Title"]
      362 GETUPVAL                         R24 0
      363 GETTABLEKS                       R24 R24 K2 ["createElement"]
      365 GETUPVAL                         R25 2
      366 DUPTABLE                         R26 K106 [{["TextSize"] = 17, ["TextXAlignment"], ["Text"], ["RichText"] = True, ["AutomaticSize"], ["Size"], ["TextWrapped"] = True, ["LayoutOrder"] = 2}]
      367 GETIMPORT                        R27 K49 [Enum.TextXAlignment.Left]
      369 SETTABLEKS                       R27 R26 K38 ["TextXAlignment"]
      371 LOADK                            R29 K100 ["PausedDialog"]
      372 LOADK                            R30 K37 ["Text"]
      373 NAMECALL                         R27 R2 K45 ["getText"]
      375 CALL                             R27 3 1
      376 SETTABLEKS                       R27 R26 K37 ["Text"]
      378 GETIMPORT                        R27 K102 [Enum.AutomaticSize.Y]
      380 SETTABLEKS                       R27 R26 K36 ["AutomaticSize"]
      382 GETIMPORT                        R27 K60 [UDim2.fromScale]
      384 LOADN                            R28 1
      385 LOADN                            R29 0
      386 CALL                             R27 2 1
      387 SETTABLEKS                       R27 R26 K5 ["Size"]
      389 CALL                             R24 2 1
      390 SETTABLEKS                       R24 R23 K37 ["Text"]
      392 GETUPVAL                         R24 0
      393 GETTABLEKS                       R24 R24 K2 ["createElement"]
      395 GETUPVAL                         R25 3
      396 DUPTABLE                         R26 K108 [{["Text"], ["OnClick"], ["Size"], ["LayoutOrder"] = 3, ["Style"] = "Round"}]
      397 LOADK                            R29 K100 ["PausedDialog"]
      398 LOADK                            R30 K95 ["Close"]
      399 NAMECALL                         R27 R2 K45 ["getText"]
      401 CALL                             R27 3 1
      402 SETTABLEKS                       R27 R26 K37 ["Text"]
      404 GETTABLEKS                       R27 R0 K0 ["props"]
      406 GETTABLEKS                       R27 R27 K109 ["Unpause"]
      408 SETTABLEKS                       R27 R26 K52 ["OnClick"]
      410 GETIMPORT                        R27 K58 [UDim2.fromOffset]
      412 LOADN                            R28 120
      413 LOADN                            R29 32
      414 CALL                             R27 2 1
      415 SETTABLEKS                       R27 R26 K5 ["Size"]
      417 CALL                             R24 2 1
      418 SETTABLEKS                       R24 R23 K95 ["Close"]
      420 CALL                             R20 3 1
      421 SETTABLEKS                       R20 R19 K66 ["Child"]
      423 CALL                             R16 3 1
      424 SETTABLEKS                       R16 R15 K88 ["DropShadow"]
      426 CALL                             R12 3 1
      427 SETTABLEKS                       R12 R11 K84 ["Dialog"]
      429 CALL                             R8 3 1
      430 SETTABLEKS                       R8 R7 K77 ["Overlay"]
      432 CALL                             R4 3 -1
      433 RETURN                           R4 -1
      434 GETTABLEKS                       R4 R1 K84 ["Dialog"]
      436 JUMPIFNOT                        R4 ; [+162]
      437 GETUPVAL                         R4 0
      438 GETTABLEKS                       R4 R4 K2 ["createElement"]
      440 GETUPVAL                         R5 1
      441 DUPTABLE                         R6 K75 [{["Style"] = "Box"}]
      442 DUPTABLE                         R7 K78 [{"Pane", "Overlay"}]
      443 SETTABLEKS                       R3 R7 K76 ["Pane"]
      445 GETUPVAL                         R8 0
      446 GETTABLEKS                       R8 R8 K2 ["createElement"]
      448 GETUPVAL                         R9 1
      449 DUPTABLE                         R10 K83 [{["Active"] = True, ["Style"] = "Box", ["BackgroundTransparency"] = 0.2, ["ZIndex"] = 2}]
      450 DUPTABLE                         R11 K85 [{"Dialog"}]
      451 GETUPVAL                         R12 0
      452 GETTABLEKS                       R12 R12 K2 ["createElement"]
      454 GETUPVAL                         R13 1
      455 DUPTABLE                         R14 K86 [{"Position", "AnchorPoint", "Size"}]
      456 GETIMPORT                        R15 K60 [UDim2.fromScale]
      458 LOADK                            R16 K87 [0.5]
      459 LOADK                            R17 K87 [0.5]
      460 CALL                             R15 2 1
      461 SETTABLEKS                       R15 R14 K53 ["Position"]
      463 GETIMPORT                        R15 K62 [Vector2.new]
      465 LOADK                            R16 K87 [0.5]
      466 LOADK                            R17 K87 [0.5]
      467 CALL                             R15 2 1
      468 SETTABLEKS                       R15 R14 K54 ["AnchorPoint"]
      470 GETIMPORT                        R15 K58 [UDim2.fromOffset]
      472 LOADN                            R16 400
      473 LOADN                            R17 250
      474 CALL                             R15 2 1
      475 SETTABLEKS                       R15 R14 K5 ["Size"]
      477 DUPTABLE                         R15 K89 [{"DropShadow"}]
      478 GETUPVAL                         R16 0
      479 GETTABLEKS                       R16 R16 K2 ["createElement"]
      481 GETUPVAL                         R17 6
      482 NEWTABLE                         R18 0 0
      484 DUPTABLE                         R19 K67 [{"Child"}]
      485 GETUPVAL                         R20 0
      486 GETTABLEKS                       R20 R20 K2 ["createElement"]
      488 GETUPVAL                         R21 1
      489 DUPTABLE                         R22 K92 [{["Style"] = "Box", ["Layout"], ["HorizontalAlignment"], ["Padding"] = 20, ["Spacing"] = 5}]
      490 GETIMPORT                        R23 K25 [Enum.FillDirection.Vertical]
      492 SETTABLEKS                       R23 R22 K6 ["Layout"]
      494 GETIMPORT                        R23 K93 [Enum.HorizontalAlignment.Right]
      496 SETTABLEKS                       R23 R22 K18 ["HorizontalAlignment"]
      498 DUPTABLE                         R23 K96 [{"Title", "Text", "Close"}]
      499 GETUPVAL                         R24 0
      500 GETTABLEKS                       R24 R24 K2 ["createElement"]
      502 GETUPVAL                         R25 2
      503 DUPTABLE                         R26 K99 [{["TextSize"] = 24, ["TextXAlignment"], ["Text"], ["AutomaticSize"], ["Size"], ["LayoutOrder"] = 1}]
      504 GETIMPORT                        R27 K49 [Enum.TextXAlignment.Left]
      506 SETTABLEKS                       R27 R26 K38 ["TextXAlignment"]
      508 LOADK                            R29 K84 ["Dialog"]
      509 LOADK                            R30 K94 ["Title"]
      510 NAMECALL                         R27 R2 K45 ["getText"]
      512 CALL                             R27 3 1
      513 SETTABLEKS                       R27 R26 K37 ["Text"]
      515 GETIMPORT                        R27 K102 [Enum.AutomaticSize.Y]
      517 SETTABLEKS                       R27 R26 K36 ["AutomaticSize"]
      519 GETIMPORT                        R27 K60 [UDim2.fromScale]
      521 LOADN                            R28 1
      522 LOADN                            R29 0
      523 CALL                             R27 2 1
      524 SETTABLEKS                       R27 R26 K5 ["Size"]
      526 CALL                             R24 2 1
      527 SETTABLEKS                       R24 R23 K94 ["Title"]
      529 GETUPVAL                         R24 0
      530 GETTABLEKS                       R24 R24 K2 ["createElement"]
      532 GETUPVAL                         R25 2
      533 DUPTABLE                         R26 K106 [{["TextSize"] = 17, ["TextXAlignment"], ["Text"], ["RichText"] = True, ["AutomaticSize"], ["Size"], ["TextWrapped"] = True, ["LayoutOrder"] = 2}]
      534 GETIMPORT                        R27 K49 [Enum.TextXAlignment.Left]
      536 SETTABLEKS                       R27 R26 K38 ["TextXAlignment"]
      538 LOADK                            R29 K84 ["Dialog"]
      539 LOADK                            R30 K37 ["Text"]
      540 NAMECALL                         R27 R2 K45 ["getText"]
      542 CALL                             R27 3 1
      543 SETTABLEKS                       R27 R26 K37 ["Text"]
      545 GETIMPORT                        R27 K102 [Enum.AutomaticSize.Y]
      547 SETTABLEKS                       R27 R26 K36 ["AutomaticSize"]
      549 GETIMPORT                        R27 K60 [UDim2.fromScale]
      551 LOADN                            R28 1
      552 LOADN                            R29 0
      553 CALL                             R27 2 1
      554 SETTABLEKS                       R27 R26 K5 ["Size"]
      556 CALL                             R24 2 1
      557 SETTABLEKS                       R24 R23 K37 ["Text"]
      559 GETUPVAL                         R24 0
      560 GETTABLEKS                       R24 R24 K2 ["createElement"]
      562 GETUPVAL                         R25 3
      563 DUPTABLE                         R26 K108 [{["Text"], ["OnClick"], ["Size"], ["LayoutOrder"] = 3, ["Style"] = "Round"}]
      564 LOADK                            R29 K84 ["Dialog"]
      565 LOADK                            R30 K95 ["Close"]
      566 NAMECALL                         R27 R2 K45 ["getText"]
      568 CALL                             R27 3 1
      569 SETTABLEKS                       R27 R26 K37 ["Text"]
      571 GETTABLEKS                       R27 R1 K110 ["CloseDialog"]
      573 SETTABLEKS                       R27 R26 K52 ["OnClick"]
      575 GETIMPORT                        R27 K58 [UDim2.fromOffset]
      577 LOADN                            R28 120
      578 LOADN                            R29 32
      579 CALL                             R27 2 1
      580 SETTABLEKS                       R27 R26 K5 ["Size"]
      582 CALL                             R24 2 1
      583 SETTABLEKS                       R24 R23 K95 ["Close"]
      585 CALL                             R20 3 1
      586 SETTABLEKS                       R20 R19 K66 ["Child"]
      588 CALL                             R16 3 1
      589 SETTABLEKS                       R16 R15 K88 ["DropShadow"]
      591 CALL                             R12 3 1
      592 SETTABLEKS                       R12 R11 K84 ["Dialog"]
      594 CALL                             R8 3 1
      595 SETTABLEKS                       R8 R7 K77 ["Overlay"]
      597 CALL                             R4 3 -1
      598 RETURN                           R4 -1
      599 RETURN                           R3 1

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
