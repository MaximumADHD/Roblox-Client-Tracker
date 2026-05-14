PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K6 [{"LayoutOrder", "Size", "Layout"}]
        9 LOADN                            R6 2
       10 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       12 GETIMPORT                        R6 K9 [UDim2.new]
       14 LOADN                            R7 1
       15 LOADN                            R8 0
       16 LOADN                            R9 1
       17 LOADN                            R10 0
       18 CALL                             R6 4 1
       19 SETTABLEKS                       R6 R5 K4 ["Size"]
       21 GETIMPORT                        R6 K13 [Enum.FillDirection.Horizontal]
       23 SETTABLEKS                       R6 R5 K5 ["Layout"]
       25 DUPTABLE                         R6 K16 [{"Left", "Right"}]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K2 ["createElement"]
       29 GETUPVAL                         R8 1
       30 DUPTABLE                         R9 K19 [{"HorizontalAlignment", "Layout", "Size", "Style", "LayoutOrder"}]
       31 GETIMPORT                        R10 K20 [Enum.HorizontalAlignment.Left]
       33 SETTABLEKS                       R10 R9 K17 ["HorizontalAlignment"]
       35 GETIMPORT                        R10 K22 [Enum.FillDirection.Vertical]
       37 SETTABLEKS                       R10 R9 K5 ["Layout"]
       39 GETIMPORT                        R10 K9 [UDim2.new]
       41 LOADK                            R11 K23 [0.65]
       42 LOADN                            R12 0
       43 LOADN                            R13 1
       44 LOADN                            R14 0
       45 CALL                             R10 4 1
       46 SETTABLEKS                       R10 R9 K4 ["Size"]
       48 LOADK                            R10 K24 ["Box"]
       49 SETTABLEKS                       R10 R9 K18 ["Style"]
       51 LOADN                            R10 1
       52 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       54 DUPTABLE                         R10 K27 [{"Top", "Main"}]
       55 GETUPVAL                         R11 0
       56 GETTABLEKS                       R11 R11 K2 ["createElement"]
       58 GETUPVAL                         R12 1
       59 DUPTABLE                         R13 K29 [{"Size", "HorizontalAlignment", "Padding", "LayoutOrder"}]
       60 GETIMPORT                        R14 K9 [UDim2.new]
       62 LOADN                            R15 1
       63 LOADN                            R16 0
       64 LOADN                            R17 0
       65 LOADN                            R18 34
       66 CALL                             R14 4 1
       67 SETTABLEKS                       R14 R13 K4 ["Size"]
       69 GETIMPORT                        R14 K20 [Enum.HorizontalAlignment.Left]
       71 SETTABLEKS                       R14 R13 K17 ["HorizontalAlignment"]
       73 LOADN                            R14 5
       74 SETTABLEKS                       R14 R13 K28 ["Padding"]
       76 LOADN                            R14 1
       77 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
       79 DUPTABLE                         R14 K32 [{"Info", "Refresh"}]
       80 GETUPVAL                         R15 0
       81 GETTABLEKS                       R15 R15 K2 ["createElement"]
       83 GETUPVAL                         R16 2
       84 DUPTABLE                         R17 K37 [{"AutomaticSize", "LayoutOrder", "Text", "TextXAlignment", "Font"}]
       85 GETIMPORT                        R18 K39 [Enum.AutomaticSize.XY]
       87 SETTABLEKS                       R18 R17 K33 ["AutomaticSize"]
       89 LOADN                            R18 1
       90 SETTABLEKS                       R18 R17 K3 ["LayoutOrder"]
       92 LOADK                            R23 K40 ["Plugin"]
       93 LOADK                            R24 K41 ["LeftPaneInfo"]
       94 NAMECALL                         R21 R2 K42 ["getText"]
       96 CALL                             R21 3 1
       97 MOVE                             R19 R21
       98 LOADK                            R20 K43 [" (%d)"]
       99 GETTABLEKS                       R23 R1 K44 ["Rows"]
      101 LENGTH                           R22 R23
      102 NAMECALL                         R20 R20 K45 ["format"]
      104 CALL                             R20 2 1
      105 CONCAT                           R18 R19 R20
      106 SETTABLEKS                       R18 R17 K34 ["Text"]
      108 GETIMPORT                        R18 K46 [Enum.TextXAlignment.Left]
      110 SETTABLEKS                       R18 R17 K35 ["TextXAlignment"]
      112 GETIMPORT                        R18 K48 [Enum.Font.SourceSansBold]
      114 SETTABLEKS                       R18 R17 K36 ["Font"]
      116 CALL                             R15 2 1
      117 SETTABLEKS                       R15 R14 K30 ["Info"]
      119 GETUPVAL                         R15 0
      120 GETTABLEKS                       R15 R15 K2 ["createElement"]
      122 GETUPVAL                         R16 3
      123 DUPTABLE                         R17 K52 [{"Text", "OnClick", "Size", "Position", "AnchorPoint", "Style"}]
      124 LOADK                            R20 K40 ["Plugin"]
      125 LOADK                            R21 K31 ["Refresh"]
      126 NAMECALL                         R18 R2 K42 ["getText"]
      128 CALL                             R18 3 1
      129 SETTABLEKS                       R18 R17 K34 ["Text"]
      131 GETTABLEKS                       R18 R1 K31 ["Refresh"]
      133 SETTABLEKS                       R18 R17 K49 ["OnClick"]
      135 GETIMPORT                        R18 K54 [UDim2.fromOffset]
      137 LOADN                            R19 80
      138 LOADN                            R20 24
      139 CALL                             R18 2 1
      140 SETTABLEKS                       R18 R17 K4 ["Size"]
      142 GETIMPORT                        R18 K56 [UDim2.fromScale]
      144 LOADN                            R19 1
      145 LOADN                            R20 0
      146 CALL                             R18 2 1
      147 SETTABLEKS                       R18 R17 K50 ["Position"]
      149 GETIMPORT                        R18 K58 [Vector2.new]
      151 LOADN                            R19 1
      152 LOADN                            R20 0
      153 CALL                             R18 2 1
      154 SETTABLEKS                       R18 R17 K51 ["AnchorPoint"]
      156 LOADK                            R18 K59 ["Round"]
      157 SETTABLEKS                       R18 R17 K18 ["Style"]
      159 CALL                             R15 2 1
      160 SETTABLEKS                       R15 R14 K31 ["Refresh"]
      162 CALL                             R11 3 1
      163 SETTABLEKS                       R11 R10 K25 ["Top"]
      165 GETUPVAL                         R11 0
      166 GETTABLEKS                       R11 R11 K2 ["createElement"]
      168 GETUPVAL                         R12 1
      169 DUPTABLE                         R13 K61 [{"Size", "ClipsDescendants", "LayoutOrder"}]
      170 GETIMPORT                        R14 K9 [UDim2.new]
      172 LOADN                            R15 1
      173 LOADN                            R16 0
      174 LOADN                            R17 1
      175 LOADN                            R18 222
      176 CALL                             R14 4 1
      177 SETTABLEKS                       R14 R13 K4 ["Size"]
      179 LOADB                            R14 1
      180 SETTABLEKS                       R14 R13 K60 ["ClipsDescendants"]
      182 LOADN                            R14 2
      183 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
      185 DUPTABLE                         R14 K63 [{"Child"}]
      186 GETUPVAL                         R15 0
      187 GETTABLEKS                       R15 R15 K2 ["createElement"]
      189 GETUPVAL                         R16 4
      190 CALL                             R15 1 1
      191 SETTABLEKS                       R15 R14 K62 ["Child"]
      193 CALL                             R11 3 1
      194 SETTABLEKS                       R11 R10 K26 ["Main"]
      196 CALL                             R7 3 1
      197 SETTABLEKS                       R7 R6 K14 ["Left"]
      199 GETUPVAL                         R7 0
      200 GETTABLEKS                       R7 R7 K2 ["createElement"]
      202 GETUPVAL                         R8 1
      203 DUPTABLE                         R9 K19 [{"HorizontalAlignment", "Layout", "Size", "Style", "LayoutOrder"}]
      204 GETIMPORT                        R10 K20 [Enum.HorizontalAlignment.Left]
      206 SETTABLEKS                       R10 R9 K17 ["HorizontalAlignment"]
      208 GETIMPORT                        R10 K22 [Enum.FillDirection.Vertical]
      210 SETTABLEKS                       R10 R9 K5 ["Layout"]
      212 GETIMPORT                        R10 K9 [UDim2.new]
      214 LOADK                            R11 K64 [0.35]
      215 LOADN                            R12 0
      216 LOADN                            R13 1
      217 LOADN                            R14 0
      218 CALL                             R10 4 1
      219 SETTABLEKS                       R10 R9 K4 ["Size"]
      221 LOADK                            R10 K24 ["Box"]
      222 SETTABLEKS                       R10 R9 K18 ["Style"]
      224 LOADN                            R10 2
      225 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
      227 DUPTABLE                         R10 K27 [{"Top", "Main"}]
      228 GETUPVAL                         R11 0
      229 GETTABLEKS                       R11 R11 K2 ["createElement"]
      231 GETUPVAL                         R12 1
      232 DUPTABLE                         R13 K65 [{"AutomaticSize", "HorizontalAlignment", "Padding", "LayoutOrder"}]
      233 GETIMPORT                        R14 K39 [Enum.AutomaticSize.XY]
      235 SETTABLEKS                       R14 R13 K33 ["AutomaticSize"]
      237 GETIMPORT                        R14 K20 [Enum.HorizontalAlignment.Left]
      239 SETTABLEKS                       R14 R13 K17 ["HorizontalAlignment"]
      241 LOADN                            R14 5
      242 SETTABLEKS                       R14 R13 K28 ["Padding"]
      244 LOADN                            R14 1
      245 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
      247 DUPTABLE                         R14 K66 [{"Info"}]
      248 GETUPVAL                         R15 0
      249 GETTABLEKS                       R15 R15 K2 ["createElement"]
      251 GETUPVAL                         R16 2
      252 DUPTABLE                         R17 K67 [{"AutomaticSize", "Text", "TextXAlignment", "Font"}]
      253 GETIMPORT                        R18 K39 [Enum.AutomaticSize.XY]
      255 SETTABLEKS                       R18 R17 K33 ["AutomaticSize"]
      257 LOADK                            R20 K40 ["Plugin"]
      258 LOADK                            R21 K68 ["RightPaneInfo"]
      259 NAMECALL                         R18 R2 K42 ["getText"]
      261 CALL                             R18 3 1
      262 SETTABLEKS                       R18 R17 K34 ["Text"]
      264 GETIMPORT                        R18 K46 [Enum.TextXAlignment.Left]
      266 SETTABLEKS                       R18 R17 K35 ["TextXAlignment"]
      268 GETIMPORT                        R18 K48 [Enum.Font.SourceSansBold]
      270 SETTABLEKS                       R18 R17 K36 ["Font"]
      272 CALL                             R15 2 1
      273 SETTABLEKS                       R15 R14 K30 ["Info"]
      275 CALL                             R11 3 1
      276 SETTABLEKS                       R11 R10 K25 ["Top"]
      278 GETUPVAL                         R11 0
      279 GETTABLEKS                       R11 R11 K2 ["createElement"]
      281 GETUPVAL                         R12 1
      282 DUPTABLE                         R13 K61 [{"Size", "ClipsDescendants", "LayoutOrder"}]
      283 GETIMPORT                        R14 K9 [UDim2.new]
      285 LOADN                            R15 1
      286 LOADN                            R16 0
      287 LOADN                            R17 1
      288 LOADN                            R18 222
      289 CALL                             R14 4 1
      290 SETTABLEKS                       R14 R13 K4 ["Size"]
      292 LOADB                            R14 1
      293 SETTABLEKS                       R14 R13 K60 ["ClipsDescendants"]
      295 LOADN                            R14 2
      296 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
      298 DUPTABLE                         R14 K63 [{"Child"}]
      299 GETUPVAL                         R15 0
      300 GETTABLEKS                       R15 R15 K2 ["createElement"]
      302 GETUPVAL                         R16 5
      303 CALL                             R15 1 1
      304 SETTABLEKS                       R15 R14 K62 ["Child"]
      306 CALL                             R11 3 1
      307 SETTABLEKS                       R11 R10 K26 ["Main"]
      309 CALL                             R7 3 1
      310 SETTABLEKS                       R7 R6 K15 ["Right"]
      312 CALL                             R3 3 1
      313 GETTABLEKS                       R4 R1 K69 ["Paused"]
      315 JUMPIFNOT                        R4 ; [+212]
      316 GETUPVAL                         R4 0
      317 GETTABLEKS                       R4 R4 K2 ["createElement"]
      319 GETUPVAL                         R5 1
      320 DUPTABLE                         R6 K70 [{"Style"}]
      321 LOADK                            R7 K24 ["Box"]
      322 SETTABLEKS                       R7 R6 K18 ["Style"]
      324 DUPTABLE                         R7 K73 [{"Pane", "Overlay"}]
      325 SETTABLEKS                       R3 R7 K71 ["Pane"]
      327 GETUPVAL                         R8 0
      328 GETTABLEKS                       R8 R8 K2 ["createElement"]
      330 GETUPVAL                         R9 1
      331 DUPTABLE                         R10 K77 [{"Active", "Style", "BackgroundTransparency", "ZIndex"}]
      332 LOADB                            R11 1
      333 SETTABLEKS                       R11 R10 K74 ["Active"]
      335 LOADK                            R11 K24 ["Box"]
      336 SETTABLEKS                       R11 R10 K18 ["Style"]
      338 LOADK                            R11 K78 [0.2]
      339 SETTABLEKS                       R11 R10 K75 ["BackgroundTransparency"]
      341 LOADN                            R11 2
      342 SETTABLEKS                       R11 R10 K76 ["ZIndex"]
      344 DUPTABLE                         R11 K80 [{"Dialog"}]
      345 GETUPVAL                         R12 0
      346 GETTABLEKS                       R12 R12 K2 ["createElement"]
      348 GETUPVAL                         R13 1
      349 DUPTABLE                         R14 K81 [{"Position", "AnchorPoint", "Size"}]
      350 GETIMPORT                        R15 K56 [UDim2.fromScale]
      352 LOADK                            R16 K82 [0.5]
      353 LOADK                            R17 K82 [0.5]
      354 CALL                             R15 2 1
      355 SETTABLEKS                       R15 R14 K50 ["Position"]
      357 GETIMPORT                        R15 K58 [Vector2.new]
      359 LOADK                            R16 K82 [0.5]
      360 LOADK                            R17 K82 [0.5]
      361 CALL                             R15 2 1
      362 SETTABLEKS                       R15 R14 K51 ["AnchorPoint"]
      364 GETIMPORT                        R15 K54 [UDim2.fromOffset]
      366 LOADN                            R16 144
      367 LOADN                            R17 150
      368 CALL                             R15 2 1
      369 SETTABLEKS                       R15 R14 K4 ["Size"]
      371 DUPTABLE                         R15 K84 [{"DropShadow"}]
      372 GETUPVAL                         R16 0
      373 GETTABLEKS                       R16 R16 K2 ["createElement"]
      375 GETUPVAL                         R17 6
      376 NEWTABLE                         R18 0 0
      378 DUPTABLE                         R19 K63 [{"Child"}]
      379 GETUPVAL                         R20 0
      380 GETTABLEKS                       R20 R20 K2 ["createElement"]
      382 GETUPVAL                         R21 1
      383 DUPTABLE                         R22 K86 [{"Style", "Layout", "HorizontalAlignment", "Padding", "Spacing"}]
      384 LOADK                            R23 K24 ["Box"]
      385 SETTABLEKS                       R23 R22 K18 ["Style"]
      387 GETIMPORT                        R23 K22 [Enum.FillDirection.Vertical]
      389 SETTABLEKS                       R23 R22 K5 ["Layout"]
      391 GETIMPORT                        R23 K87 [Enum.HorizontalAlignment.Right]
      393 SETTABLEKS                       R23 R22 K17 ["HorizontalAlignment"]
      395 LOADN                            R23 20
      396 SETTABLEKS                       R23 R22 K28 ["Padding"]
      398 LOADN                            R23 5
      399 SETTABLEKS                       R23 R22 K85 ["Spacing"]
      401 DUPTABLE                         R23 K90 [{"Title", "Text", "Close"}]
      402 GETUPVAL                         R24 0
      403 GETTABLEKS                       R24 R24 K2 ["createElement"]
      405 GETUPVAL                         R25 2
      406 DUPTABLE                         R26 K92 [{"TextSize", "TextXAlignment", "Text", "AutomaticSize", "Size", "LayoutOrder"}]
      407 LOADN                            R27 24
      408 SETTABLEKS                       R27 R26 K91 ["TextSize"]
      410 GETIMPORT                        R27 K46 [Enum.TextXAlignment.Left]
      412 SETTABLEKS                       R27 R26 K35 ["TextXAlignment"]
      414 LOADK                            R29 K93 ["PausedDialog"]
      415 LOADK                            R30 K88 ["Title"]
      416 NAMECALL                         R27 R2 K42 ["getText"]
      418 CALL                             R27 3 1
      419 SETTABLEKS                       R27 R26 K34 ["Text"]
      421 GETIMPORT                        R27 K95 [Enum.AutomaticSize.Y]
      423 SETTABLEKS                       R27 R26 K33 ["AutomaticSize"]
      425 GETIMPORT                        R27 K56 [UDim2.fromScale]
      427 LOADN                            R28 1
      428 LOADN                            R29 0
      429 CALL                             R27 2 1
      430 SETTABLEKS                       R27 R26 K4 ["Size"]
      432 LOADN                            R27 1
      433 SETTABLEKS                       R27 R26 K3 ["LayoutOrder"]
      435 CALL                             R24 2 1
      436 SETTABLEKS                       R24 R23 K88 ["Title"]
      438 GETUPVAL                         R24 0
      439 GETTABLEKS                       R24 R24 K2 ["createElement"]
      441 GETUPVAL                         R25 2
      442 DUPTABLE                         R26 K98 [{"TextSize", "TextXAlignment", "Text", "RichText", "AutomaticSize", "Size", "TextWrapped", "LayoutOrder"}]
      443 LOADN                            R27 17
      444 SETTABLEKS                       R27 R26 K91 ["TextSize"]
      446 GETIMPORT                        R27 K46 [Enum.TextXAlignment.Left]
      448 SETTABLEKS                       R27 R26 K35 ["TextXAlignment"]
      450 LOADK                            R29 K93 ["PausedDialog"]
      451 LOADK                            R30 K34 ["Text"]
      452 NAMECALL                         R27 R2 K42 ["getText"]
      454 CALL                             R27 3 1
      455 SETTABLEKS                       R27 R26 K34 ["Text"]
      457 LOADB                            R27 1
      458 SETTABLEKS                       R27 R26 K96 ["RichText"]
      460 GETIMPORT                        R27 K95 [Enum.AutomaticSize.Y]
      462 SETTABLEKS                       R27 R26 K33 ["AutomaticSize"]
      464 GETIMPORT                        R27 K56 [UDim2.fromScale]
      466 LOADN                            R28 1
      467 LOADN                            R29 0
      468 CALL                             R27 2 1
      469 SETTABLEKS                       R27 R26 K4 ["Size"]
      471 LOADB                            R27 1
      472 SETTABLEKS                       R27 R26 K97 ["TextWrapped"]
      474 LOADN                            R27 2
      475 SETTABLEKS                       R27 R26 K3 ["LayoutOrder"]
      477 CALL                             R24 2 1
      478 SETTABLEKS                       R24 R23 K34 ["Text"]
      480 GETUPVAL                         R24 0
      481 GETTABLEKS                       R24 R24 K2 ["createElement"]
      483 GETUPVAL                         R25 3
      484 DUPTABLE                         R26 K99 [{"Text", "OnClick", "Size", "LayoutOrder", "Style"}]
      485 LOADK                            R29 K93 ["PausedDialog"]
      486 LOADK                            R30 K89 ["Close"]
      487 NAMECALL                         R27 R2 K42 ["getText"]
      489 CALL                             R27 3 1
      490 SETTABLEKS                       R27 R26 K34 ["Text"]
      492 GETTABLEKS                       R27 R0 K0 ["props"]
      494 GETTABLEKS                       R27 R27 K100 ["Unpause"]
      496 SETTABLEKS                       R27 R26 K49 ["OnClick"]
      498 GETIMPORT                        R27 K54 [UDim2.fromOffset]
      500 LOADN                            R28 120
      501 LOADN                            R29 32
      502 CALL                             R27 2 1
      503 SETTABLEKS                       R27 R26 K4 ["Size"]
      505 LOADN                            R27 3
      506 SETTABLEKS                       R27 R26 K3 ["LayoutOrder"]
      508 LOADK                            R27 K59 ["Round"]
      509 SETTABLEKS                       R27 R26 K18 ["Style"]
      511 CALL                             R24 2 1
      512 SETTABLEKS                       R24 R23 K89 ["Close"]
      514 CALL                             R20 3 1
      515 SETTABLEKS                       R20 R19 K62 ["Child"]
      517 CALL                             R16 3 1
      518 SETTABLEKS                       R16 R15 K83 ["DropShadow"]
      520 CALL                             R12 3 1
      521 SETTABLEKS                       R12 R11 K79 ["Dialog"]
      523 CALL                             R8 3 1
      524 SETTABLEKS                       R8 R7 K72 ["Overlay"]
      526 CALL                             R4 3 -1
      527 RETURN                           R4 -1
      528 GETTABLEKS                       R4 R1 K79 ["Dialog"]
      530 JUMPIFNOT                        R4 ; [+210]
      531 GETUPVAL                         R4 0
      532 GETTABLEKS                       R4 R4 K2 ["createElement"]
      534 GETUPVAL                         R5 1
      535 DUPTABLE                         R6 K70 [{"Style"}]
      536 LOADK                            R7 K24 ["Box"]
      537 SETTABLEKS                       R7 R6 K18 ["Style"]
      539 DUPTABLE                         R7 K73 [{"Pane", "Overlay"}]
      540 SETTABLEKS                       R3 R7 K71 ["Pane"]
      542 GETUPVAL                         R8 0
      543 GETTABLEKS                       R8 R8 K2 ["createElement"]
      545 GETUPVAL                         R9 1
      546 DUPTABLE                         R10 K77 [{"Active", "Style", "BackgroundTransparency", "ZIndex"}]
      547 LOADB                            R11 1
      548 SETTABLEKS                       R11 R10 K74 ["Active"]
      550 LOADK                            R11 K24 ["Box"]
      551 SETTABLEKS                       R11 R10 K18 ["Style"]
      553 LOADK                            R11 K78 [0.2]
      554 SETTABLEKS                       R11 R10 K75 ["BackgroundTransparency"]
      556 LOADN                            R11 2
      557 SETTABLEKS                       R11 R10 K76 ["ZIndex"]
      559 DUPTABLE                         R11 K80 [{"Dialog"}]
      560 GETUPVAL                         R12 0
      561 GETTABLEKS                       R12 R12 K2 ["createElement"]
      563 GETUPVAL                         R13 1
      564 DUPTABLE                         R14 K81 [{"Position", "AnchorPoint", "Size"}]
      565 GETIMPORT                        R15 K56 [UDim2.fromScale]
      567 LOADK                            R16 K82 [0.5]
      568 LOADK                            R17 K82 [0.5]
      569 CALL                             R15 2 1
      570 SETTABLEKS                       R15 R14 K50 ["Position"]
      572 GETIMPORT                        R15 K58 [Vector2.new]
      574 LOADK                            R16 K82 [0.5]
      575 LOADK                            R17 K82 [0.5]
      576 CALL                             R15 2 1
      577 SETTABLEKS                       R15 R14 K51 ["AnchorPoint"]
      579 GETIMPORT                        R15 K54 [UDim2.fromOffset]
      581 LOADN                            R16 144
      582 LOADN                            R17 250
      583 CALL                             R15 2 1
      584 SETTABLEKS                       R15 R14 K4 ["Size"]
      586 DUPTABLE                         R15 K84 [{"DropShadow"}]
      587 GETUPVAL                         R16 0
      588 GETTABLEKS                       R16 R16 K2 ["createElement"]
      590 GETUPVAL                         R17 6
      591 NEWTABLE                         R18 0 0
      593 DUPTABLE                         R19 K63 [{"Child"}]
      594 GETUPVAL                         R20 0
      595 GETTABLEKS                       R20 R20 K2 ["createElement"]
      597 GETUPVAL                         R21 1
      598 DUPTABLE                         R22 K86 [{"Style", "Layout", "HorizontalAlignment", "Padding", "Spacing"}]
      599 LOADK                            R23 K24 ["Box"]
      600 SETTABLEKS                       R23 R22 K18 ["Style"]
      602 GETIMPORT                        R23 K22 [Enum.FillDirection.Vertical]
      604 SETTABLEKS                       R23 R22 K5 ["Layout"]
      606 GETIMPORT                        R23 K87 [Enum.HorizontalAlignment.Right]
      608 SETTABLEKS                       R23 R22 K17 ["HorizontalAlignment"]
      610 LOADN                            R23 20
      611 SETTABLEKS                       R23 R22 K28 ["Padding"]
      613 LOADN                            R23 5
      614 SETTABLEKS                       R23 R22 K85 ["Spacing"]
      616 DUPTABLE                         R23 K90 [{"Title", "Text", "Close"}]
      617 GETUPVAL                         R24 0
      618 GETTABLEKS                       R24 R24 K2 ["createElement"]
      620 GETUPVAL                         R25 2
      621 DUPTABLE                         R26 K92 [{"TextSize", "TextXAlignment", "Text", "AutomaticSize", "Size", "LayoutOrder"}]
      622 LOADN                            R27 24
      623 SETTABLEKS                       R27 R26 K91 ["TextSize"]
      625 GETIMPORT                        R27 K46 [Enum.TextXAlignment.Left]
      627 SETTABLEKS                       R27 R26 K35 ["TextXAlignment"]
      629 LOADK                            R29 K79 ["Dialog"]
      630 LOADK                            R30 K88 ["Title"]
      631 NAMECALL                         R27 R2 K42 ["getText"]
      633 CALL                             R27 3 1
      634 SETTABLEKS                       R27 R26 K34 ["Text"]
      636 GETIMPORT                        R27 K95 [Enum.AutomaticSize.Y]
      638 SETTABLEKS                       R27 R26 K33 ["AutomaticSize"]
      640 GETIMPORT                        R27 K56 [UDim2.fromScale]
      642 LOADN                            R28 1
      643 LOADN                            R29 0
      644 CALL                             R27 2 1
      645 SETTABLEKS                       R27 R26 K4 ["Size"]
      647 LOADN                            R27 1
      648 SETTABLEKS                       R27 R26 K3 ["LayoutOrder"]
      650 CALL                             R24 2 1
      651 SETTABLEKS                       R24 R23 K88 ["Title"]
      653 GETUPVAL                         R24 0
      654 GETTABLEKS                       R24 R24 K2 ["createElement"]
      656 GETUPVAL                         R25 2
      657 DUPTABLE                         R26 K98 [{"TextSize", "TextXAlignment", "Text", "RichText", "AutomaticSize", "Size", "TextWrapped", "LayoutOrder"}]
      658 LOADN                            R27 17
      659 SETTABLEKS                       R27 R26 K91 ["TextSize"]
      661 GETIMPORT                        R27 K46 [Enum.TextXAlignment.Left]
      663 SETTABLEKS                       R27 R26 K35 ["TextXAlignment"]
      665 LOADK                            R29 K79 ["Dialog"]
      666 LOADK                            R30 K34 ["Text"]
      667 NAMECALL                         R27 R2 K42 ["getText"]
      669 CALL                             R27 3 1
      670 SETTABLEKS                       R27 R26 K34 ["Text"]
      672 LOADB                            R27 1
      673 SETTABLEKS                       R27 R26 K96 ["RichText"]
      675 GETIMPORT                        R27 K95 [Enum.AutomaticSize.Y]
      677 SETTABLEKS                       R27 R26 K33 ["AutomaticSize"]
      679 GETIMPORT                        R27 K56 [UDim2.fromScale]
      681 LOADN                            R28 1
      682 LOADN                            R29 0
      683 CALL                             R27 2 1
      684 SETTABLEKS                       R27 R26 K4 ["Size"]
      686 LOADB                            R27 1
      687 SETTABLEKS                       R27 R26 K97 ["TextWrapped"]
      689 LOADN                            R27 2
      690 SETTABLEKS                       R27 R26 K3 ["LayoutOrder"]
      692 CALL                             R24 2 1
      693 SETTABLEKS                       R24 R23 K34 ["Text"]
      695 GETUPVAL                         R24 0
      696 GETTABLEKS                       R24 R24 K2 ["createElement"]
      698 GETUPVAL                         R25 3
      699 DUPTABLE                         R26 K99 [{"Text", "OnClick", "Size", "LayoutOrder", "Style"}]
      700 LOADK                            R29 K79 ["Dialog"]
      701 LOADK                            R30 K89 ["Close"]
      702 NAMECALL                         R27 R2 K42 ["getText"]
      704 CALL                             R27 3 1
      705 SETTABLEKS                       R27 R26 K34 ["Text"]
      707 GETTABLEKS                       R27 R1 K101 ["CloseDialog"]
      709 SETTABLEKS                       R27 R26 K49 ["OnClick"]
      711 GETIMPORT                        R27 K54 [UDim2.fromOffset]
      713 LOADN                            R28 120
      714 LOADN                            R29 32
      715 CALL                             R27 2 1
      716 SETTABLEKS                       R27 R26 K4 ["Size"]
      718 LOADN                            R27 3
      719 SETTABLEKS                       R27 R26 K3 ["LayoutOrder"]
      721 LOADK                            R27 K59 ["Round"]
      722 SETTABLEKS                       R27 R26 K18 ["Style"]
      724 CALL                             R24 2 1
      725 SETTABLEKS                       R24 R23 K89 ["Close"]
      727 CALL                             R20 3 1
      728 SETTABLEKS                       R20 R19 K62 ["Child"]
      730 CALL                             R16 3 1
      731 SETTABLEKS                       R16 R15 K83 ["DropShadow"]
      733 CALL                             R12 3 1
      734 SETTABLEKS                       R12 R11 K79 ["Dialog"]
      736 CALL                             R8 3 1
      737 SETTABLEKS                       R8 R7 K72 ["Overlay"]
      739 CALL                             R4 3 -1
      740 RETURN                           R4 -1
      741 RETURN                           R3 1

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
