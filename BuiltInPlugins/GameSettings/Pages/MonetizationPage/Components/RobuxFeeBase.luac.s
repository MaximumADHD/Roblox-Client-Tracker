PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["new"]
        9 CALL                             R4 0 1
       10 GETTABLEKS                       R6 R1 K4 ["TaxRate"]
       12 JUMPIFNOT                        R6 ; [+3]
       13 GETTABLEKS                       R5 R1 K4 ["TaxRate"]
       15 JUMPIF                           R5 ; [+1]
       16 LOADK                            R5 K5 [0.9]
       17 GETTABLEKS                       R8 R1 K6 ["Price"]
       19 FASTCALL1                        TYPE R8 ; [+2]
       20 GETIMPORT                        R7 K8 [type]
       22 CALL                             R7 1 1
       23 JUMPIFNOTEQKS                    R7 K9 ["number"] ; [+4]
       25 GETTABLEKS                       R6 R1 K6 ["Price"]
       27 JUMPIF                           R6 ; [+1]
       28 LOADN                            R6 0
       29 LOADN                            R8 0
       30 JUMPIFNOTLT                      R8 R6 ; [+4]
       32 GETTABLEKS                       R7 R1 K10 ["MinimumFee"]
       34 JUMPIF                           R7 ; [+1]
       35 LOADN                            R7 0
       36 GETIMPORT                        R8 K13 [string.format]
       38 LOADK                            R9 K14 ["%.f"]
       39 MOVE                             R10 R6
       40 CALL                             R8 2 1
       41 GETTABLEKS                       R9 R1 K15 ["SubText"]
       43 MOVE                             R10 R9
       44 JUMPIFNOT                        R10 ; [+20]
       45 GETUPVAL                         R10 1
       46 MOVE                             R11 R9
       47 GETTABLEKS                       R12 R2 K16 ["fontStyle"]
       49 GETTABLEKS                       R12 R12 K17 ["Subtitle"]
       51 GETTABLEKS                       R12 R12 K18 ["TextSize"]
       53 GETTABLEKS                       R13 R2 K16 ["fontStyle"]
       55 GETTABLEKS                       R13 R13 K17 ["Subtitle"]
       57 GETTABLEKS                       R13 R13 K19 ["Font"]
       59 GETIMPORT                        R14 K21 [Vector2.new]
       61 LOADN                            R15 244
       62 LOADK                            R16 K22 [∞]
       63 CALL                             R14 2 -1
       64 CALL                             R10 -1 1
       65 GETTABLEKS                       R11 R1 K23 ["Enabled"]
       67 GETTABLEKS                       R12 R1 K24 ["OnPriceChanged"]
       69 LOADK                            R15 K25 ["Monetization"]
       70 LOADK                            R16 K26 ["MarketplaceFee"]
       71 NAMECALL                         R13 R3 K27 ["getText"]
       73 CALL                             R13 3 1
       74 GETUPVAL                         R14 1
       75 MOVE                             R15 R13
       76 GETTABLEKS                       R16 R2 K16 ["fontStyle"]
       78 GETTABLEKS                       R16 R16 K28 ["Normal"]
       80 GETTABLEKS                       R16 R16 K18 ["TextSize"]
       82 GETTABLEKS                       R17 R2 K16 ["fontStyle"]
       84 GETTABLEKS                       R17 R17 K28 ["Normal"]
       86 GETTABLEKS                       R17 R17 K19 ["Font"]
       88 CALL                             R14 3 1
       89 LOADK                            R17 K25 ["Monetization"]
       90 LOADK                            R18 K29 ["MarketplaceFeeIs"]
       91 NEWTABLE                         R19 0 1
       93 GETIMPORT                        R20 K13 [string.format]
       95 LOADK                            R21 K30 ["%2d"]
       96 MULK                             R22 R5 K31 [100]
       97 CALL                             R20 2 -1
       98 SETLIST                          R19 R20 -1 [1]
      100 NAMECALL                         R15 R3 K27 ["getText"]
      102 CALL                             R15 4 1
      103 GETUPVAL                         R17 2
      104 JUMPIFNOT                        R17 ; [+2]
      105 LOADNIL                          R16
      106 JUMP                             ; [+25]
      107 GETUPVAL                         R16 1
      108 MOVE                             R17 R15
      109 GETTABLEKS                       R18 R2 K16 ["fontStyle"]
      111 GETTABLEKS                       R18 R18 K32 ["Subtext"]
      113 GETTABLEKS                       R18 R18 K18 ["TextSize"]
      115 GETTABLEKS                       R19 R2 K16 ["fontStyle"]
      117 GETTABLEKS                       R19 R19 K32 ["Subtext"]
      119 GETTABLEKS                       R19 R19 K19 ["Font"]
      121 GETIMPORT                        R20 K21 [Vector2.new]
      123 GETTABLEKS                       R21 R2 K33 ["robuxFeeBase"]
      125 GETTABLEKS                       R21 R21 K34 ["subText"]
      127 GETTABLEKS                       R21 R21 K35 ["width"]
      129 LOADK                            R22 K22 [∞]
      130 CALL                             R20 2 -1
      131 CALL                             R16 -1 1
      132 MUL                              R20 R6 R5
      133 FASTCALL1                        MATH_CEIL R20 ; [+2]
      134 GETIMPORT                        R19 K38 [math.ceil]
      136 CALL                             R19 1 1
      137 FASTCALL2                        MATH_MAX R7 R19 ; [+4]
      139 MOVE                             R18 R7
      140 GETIMPORT                        R17 K40 [math.max]
      142 CALL                             R17 2 1
      143 GETIMPORT                        R18 K13 [string.format]
      145 LOADK                            R19 K14 ["%.f"]
      146 MOVE                             R20 R17
      147 CALL                             R18 2 1
      148 LOADK                            R21 K25 ["Monetization"]
      149 LOADK                            R22 K41 ["EarnLabel"]
      150 NAMECALL                         R19 R3 K27 ["getText"]
      152 CALL                             R19 3 1
      153 GETUPVAL                         R20 1
      154 MOVE                             R21 R19
      155 GETTABLEKS                       R22 R2 K16 ["fontStyle"]
      157 GETTABLEKS                       R22 R22 K28 ["Normal"]
      159 GETTABLEKS                       R22 R22 K18 ["TextSize"]
      161 GETTABLEKS                       R23 R2 K16 ["fontStyle"]
      163 GETTABLEKS                       R23 R23 K28 ["Normal"]
      165 GETTABLEKS                       R23 R23 K19 ["Font"]
      167 CALL                             R20 3 1
      168 SUB                              R22 R6 R17
      169 LOADN                            R23 0
      170 JUMPIFNOTLT                      R23 R22 ; [+3]
      172 SUB                              R21 R6 R17
      173 JUMPIF                           R21 ; [+1]
      174 LOADN                            R21 0
      175 GETIMPORT                        R22 K13 [string.format]
      177 LOADK                            R23 K14 ["%.f"]
      178 MOVE                             R24 R21
      179 CALL                             R22 2 1
      180 NOT                              R23 R9
      181 JUMPIF                           R23 ; [+2]
      182 GETTABLEKS                       R23 R1 K42 ["ShowPriceChangeWarning"]
      184 JUMPIFNOT                        R11 ; [+7]
      185 GETTABLEKS                       R24 R2 K33 ["robuxFeeBase"]
      187 GETTABLEKS                       R24 R24 K43 ["transparency"]
      189 GETTABLEKS                       R24 R24 K44 ["enabled"]
      191 JUMPIF                           R24 ; [+6]
      192 GETTABLEKS                       R24 R2 K33 ["robuxFeeBase"]
      194 GETTABLEKS                       R24 R24 K43 ["transparency"]
      196 GETTABLEKS                       R24 R24 K45 ["disabled"]
      198 MOVE                             R25 R23
      199 JUMPIFNOT                        R25 ; [+258]
      200 GETUPVAL                         R25 3
      201 GETTABLEKS                       R25 R25 K46 ["createElement"]
      203 GETUPVAL                         R27 2
      204 JUMPIFNOT                        R27 ; [+2]
      205 GETUPVAL                         R26 4
      206 JUMP                             ; [+1]
      207 LOADK                            R26 K47 ["Frame"]
      208 GETUPVAL                         R28 2
      209 JUMPIFNOT                        R28 ; [+21]
      210 DUPTABLE                         R27 K52 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing"}]
      211 GETIMPORT                        R28 K55 [Enum.AutomaticSize.XY]
      213 SETTABLEKS                       R28 R27 K48 ["AutomaticSize"]
      215 NAMECALL                         R28 R4 K56 ["getNextOrder"]
      217 CALL                             R28 1 1
      218 SETTABLEKS                       R28 R27 K49 ["LayoutOrder"]
      220 GETIMPORT                        R28 K59 [Enum.FillDirection.Horizontal]
      222 SETTABLEKS                       R28 R27 K50 ["Layout"]
      224 GETTABLEKS                       R28 R2 K33 ["robuxFeeBase"]
      226 GETTABLEKS                       R28 R28 K60 ["spacing"]
      228 SETTABLEKS                       R28 R27 K51 ["Spacing"]
      230 JUMP                             ; [+19]
      231 DUPTABLE                         R27 K63 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      232 GETIMPORT                        R28 K65 [UDim2.new]
      234 LOADN                            R29 1
      235 LOADN                            R30 0
      236 LOADN                            R31 0
      237 GETTABLEKS                       R32 R2 K66 ["rowHeight"]
      239 CALL                             R28 4 1
      240 SETTABLEKS                       R28 R27 K61 ["Size"]
      242 LOADN                            R28 1
      243 SETTABLEKS                       R28 R27 K62 ["BackgroundTransparency"]
      245 NAMECALL                         R28 R4 K56 ["getNextOrder"]
      247 CALL                             R28 1 1
      248 SETTABLEKS                       R28 R27 K49 ["LayoutOrder"]
      250 DUPTABLE                         R28 K71 [{"HorizontalLayout", "FeeLabel", "RobuxIcon", "FeeAmount"}]
      251 GETUPVAL                         R30 2
      252 JUMPIFNOT                        R30 ; [+2]
      253 LOADNIL                          R29
      254 JUMP                             ; [+18]
      255 GETUPVAL                         R29 3
      256 GETTABLEKS                       R29 R29 K46 ["createElement"]
      258 LOADK                            R30 K72 ["UIListLayout"]
      259 DUPTABLE                         R31 K75 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
      260 GETIMPORT                        R32 K59 [Enum.FillDirection.Horizontal]
      262 SETTABLEKS                       R32 R31 K57 ["FillDirection"]
      264 GETIMPORT                        R32 K76 [Enum.SortOrder.LayoutOrder]
      266 SETTABLEKS                       R32 R31 K73 ["SortOrder"]
      268 GETIMPORT                        R32 K78 [Enum.VerticalAlignment.Center]
      270 SETTABLEKS                       R32 R31 K74 ["VerticalAlignment"]
      272 CALL                             R29 2 1
      273 SETTABLEKS                       R29 R28 K67 ["HorizontalLayout"]
      275 GETUPVAL                         R30 2
      276 JUMPIFNOT                        R30 ; [+16]
      277 GETUPVAL                         R29 3
      278 GETTABLEKS                       R29 R29 K46 ["createElement"]
      280 GETUPVAL                         R30 5
      281 DUPTABLE                         R31 K80 [{"AutomaticSize", "LayoutOrder", "Text"}]
      282 GETIMPORT                        R32 K55 [Enum.AutomaticSize.XY]
      284 SETTABLEKS                       R32 R31 K48 ["AutomaticSize"]
      286 LOADN                            R32 1
      287 SETTABLEKS                       R32 R31 K49 ["LayoutOrder"]
      289 SETTABLEKS                       R13 R31 K79 ["Text"]
      291 CALL                             R29 2 1
      292 JUMP                             ; [+44]
      293 GETUPVAL                         R29 3
      294 GETTABLEKS                       R29 R29 K46 ["createElement"]
      296 LOADK                            R30 K81 ["TextLabel"]
      297 GETUPVAL                         R31 6
      298 GETTABLEKS                       R31 R31 K82 ["Dictionary"]
      300 GETTABLEKS                       R31 R31 K83 ["join"]
      302 GETTABLEKS                       R32 R2 K16 ["fontStyle"]
      304 GETTABLEKS                       R32 R32 K28 ["Normal"]
      306 DUPTABLE                         R33 K87 [{"Size", "BackgroundTransparency", "TextYAlignment", "TextXAlignment", "TextTransparency", "Text", "LayoutOrder"}]
      307 GETIMPORT                        R34 K65 [UDim2.new]
      309 LOADN                            R35 0
      310 GETTABLEKS                       R36 R14 K88 ["X"]
      312 LOADN                            R37 1
      313 LOADN                            R38 0
      314 CALL                             R34 4 1
      315 SETTABLEKS                       R34 R33 K61 ["Size"]
      317 LOADN                            R34 1
      318 SETTABLEKS                       R34 R33 K62 ["BackgroundTransparency"]
      320 GETIMPORT                        R34 K89 [Enum.TextYAlignment.Center]
      322 SETTABLEKS                       R34 R33 K84 ["TextYAlignment"]
      324 GETIMPORT                        R34 K91 [Enum.TextXAlignment.Left]
      326 SETTABLEKS                       R34 R33 K85 ["TextXAlignment"]
      328 SETTABLEKS                       R24 R33 K86 ["TextTransparency"]
      330 SETTABLEKS                       R13 R33 K79 ["Text"]
      332 LOADN                            R34 1
      333 SETTABLEKS                       R34 R33 K49 ["LayoutOrder"]
      335 CALL                             R31 2 -1
      336 CALL                             R29 -1 1
      337 SETTABLEKS                       R29 R28 K68 ["FeeLabel"]
      339 GETUPVAL                         R29 3
      340 GETTABLEKS                       R29 R29 K46 ["createElement"]
      342 LOADK                            R30 K92 ["ImageLabel"]
      343 DUPTABLE                         R31 K96 [{"Size", "ImageColor3", "Image", "ImageTransparency", "BackgroundTransparency", "LayoutOrder"}]
      344 GETIMPORT                        R32 K65 [UDim2.new]
      346 LOADN                            R33 0
      347 GETTABLEKS                       R34 R2 K33 ["robuxFeeBase"]
      349 GETTABLEKS                       R34 R34 K97 ["icon"]
      351 GETTABLEKS                       R34 R34 K98 ["size"]
      353 LOADN                            R35 0
      354 GETTABLEKS                       R36 R2 K33 ["robuxFeeBase"]
      356 GETTABLEKS                       R36 R36 K97 ["icon"]
      358 GETTABLEKS                       R36 R36 K98 ["size"]
      360 CALL                             R32 4 1
      361 SETTABLEKS                       R32 R31 K61 ["Size"]
      363 GETTABLEKS                       R32 R2 K33 ["robuxFeeBase"]
      365 GETTABLEKS                       R32 R32 K97 ["icon"]
      367 GETTABLEKS                       R32 R32 K99 ["imageColor"]
      369 SETTABLEKS                       R32 R31 K93 ["ImageColor3"]
      371 GETTABLEKS                       R32 R2 K33 ["robuxFeeBase"]
      373 GETTABLEKS                       R32 R32 K97 ["icon"]
      375 GETTABLEKS                       R32 R32 K100 ["image"]
      377 SETTABLEKS                       R32 R31 K94 ["Image"]
      379 SETTABLEKS                       R24 R31 K95 ["ImageTransparency"]
      381 LOADN                            R32 1
      382 SETTABLEKS                       R32 R31 K62 ["BackgroundTransparency"]
      384 LOADN                            R32 2
      385 SETTABLEKS                       R32 R31 K49 ["LayoutOrder"]
      387 CALL                             R29 2 1
      388 SETTABLEKS                       R29 R28 K69 ["RobuxIcon"]
      390 GETUPVAL                         R30 2
      391 JUMPIFNOT                        R30 ; [+16]
      392 GETUPVAL                         R29 3
      393 GETTABLEKS                       R29 R29 K46 ["createElement"]
      395 GETUPVAL                         R30 5
      396 DUPTABLE                         R31 K80 [{"AutomaticSize", "LayoutOrder", "Text"}]
      397 GETIMPORT                        R32 K55 [Enum.AutomaticSize.XY]
      399 SETTABLEKS                       R32 R31 K48 ["AutomaticSize"]
      401 LOADN                            R32 3
      402 SETTABLEKS                       R32 R31 K49 ["LayoutOrder"]
      404 SETTABLEKS                       R18 R31 K79 ["Text"]
      406 CALL                             R29 2 1
      407 JUMP                             ; [+47]
      408 GETUPVAL                         R29 3
      409 GETTABLEKS                       R29 R29 K46 ["createElement"]
      411 LOADK                            R30 K81 ["TextLabel"]
      412 GETUPVAL                         R31 6
      413 GETTABLEKS                       R31 R31 K82 ["Dictionary"]
      415 GETTABLEKS                       R31 R31 K83 ["join"]
      417 GETTABLEKS                       R32 R2 K16 ["fontStyle"]
      419 GETTABLEKS                       R32 R32 K28 ["Normal"]
      421 DUPTABLE                         R33 K102 [{"Size", "BackgroundTransparency", "BorderSizePixel", "TextYAlignment", "TextXAlignment", "TextTransparency", "Text", "LayoutOrder"}]
      422 GETIMPORT                        R34 K65 [UDim2.new]
      424 LOADN                            R35 1
      425 LOADN                            R36 0
      426 LOADN                            R37 0
      427 GETTABLEKS                       R38 R2 K66 ["rowHeight"]
      429 CALL                             R34 4 1
      430 SETTABLEKS                       R34 R33 K61 ["Size"]
      432 LOADN                            R34 1
      433 SETTABLEKS                       R34 R33 K62 ["BackgroundTransparency"]
      435 LOADN                            R34 0
      436 SETTABLEKS                       R34 R33 K101 ["BorderSizePixel"]
      438 GETIMPORT                        R34 K89 [Enum.TextYAlignment.Center]
      440 SETTABLEKS                       R34 R33 K84 ["TextYAlignment"]
      442 GETIMPORT                        R34 K91 [Enum.TextXAlignment.Left]
      444 SETTABLEKS                       R34 R33 K85 ["TextXAlignment"]
      446 SETTABLEKS                       R24 R33 K86 ["TextTransparency"]
      448 SETTABLEKS                       R18 R33 K79 ["Text"]
      450 LOADN                            R34 3
      451 SETTABLEKS                       R34 R33 K49 ["LayoutOrder"]
      453 CALL                             R31 2 -1
      454 CALL                             R29 -1 1
      455 SETTABLEKS                       R29 R28 K70 ["FeeAmount"]
      457 CALL                             R25 3 1
      458 MOVE                             R26 R23
      459 JUMPIFNOT                        R26 ; [+78]
      460 GETUPVAL                         R27 2
      461 JUMPIFNOT                        R27 ; [+24]
      462 GETUPVAL                         R26 3
      463 GETTABLEKS                       R26 R26 K46 ["createElement"]
      465 GETUPVAL                         R27 5
      466 DUPTABLE                         R28 K105 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextWrapped"}]
      467 GETIMPORT                        R29 K55 [Enum.AutomaticSize.XY]
      469 SETTABLEKS                       R29 R28 K48 ["AutomaticSize"]
      471 NAMECALL                         R29 R4 K56 ["getNextOrder"]
      473 CALL                             R29 1 1
      474 SETTABLEKS                       R29 R28 K49 ["LayoutOrder"]
      476 LOADK                            R29 K106 ["Label"]
      477 SETTABLEKS                       R29 R28 K103 ["Style"]
      479 SETTABLEKS                       R15 R28 K79 ["Text"]
      481 LOADB                            R29 1
      482 SETTABLEKS                       R29 R28 K104 ["TextWrapped"]
      484 CALL                             R26 2 1
      485 JUMP                             ; [+52]
      486 GETUPVAL                         R26 3
      487 GETTABLEKS                       R26 R26 K46 ["createElement"]
      489 LOADK                            R27 K81 ["TextLabel"]
      490 GETUPVAL                         R28 6
      491 GETTABLEKS                       R28 R28 K82 ["Dictionary"]
      493 GETTABLEKS                       R28 R28 K83 ["join"]
      495 GETTABLEKS                       R29 R2 K16 ["fontStyle"]
      497 GETTABLEKS                       R29 R29 K32 ["Subtext"]
      499 DUPTABLE                         R30 K107 [{"Size", "BackgroundTransparency", "Text", "TextYAlignment", "TextXAlignment", "TextWrapped", "LayoutOrder"}]
      500 GETIMPORT                        R31 K65 [UDim2.new]
      502 LOADN                            R32 0
      503 GETTABLEKS                       R34 R16 K88 ["X"]
      505 FASTCALL1                        MATH_CEIL R34 ; [+2]
      506 GETIMPORT                        R33 K38 [math.ceil]
      508 CALL                             R33 1 1
      509 LOADN                            R34 0
      510 GETTABLEKS                       R35 R16 K108 ["Y"]
      512 CALL                             R31 4 1
      513 SETTABLEKS                       R31 R30 K61 ["Size"]
      515 LOADN                            R31 1
      516 SETTABLEKS                       R31 R30 K62 ["BackgroundTransparency"]
      518 SETTABLEKS                       R15 R30 K79 ["Text"]
      520 GETIMPORT                        R31 K89 [Enum.TextYAlignment.Center]
      522 SETTABLEKS                       R31 R30 K84 ["TextYAlignment"]
      524 GETIMPORT                        R31 K91 [Enum.TextXAlignment.Left]
      526 SETTABLEKS                       R31 R30 K85 ["TextXAlignment"]
      528 LOADB                            R31 1
      529 SETTABLEKS                       R31 R30 K104 ["TextWrapped"]
      531 NAMECALL                         R31 R4 K56 ["getNextOrder"]
      533 CALL                             R31 1 1
      534 SETTABLEKS                       R31 R30 K49 ["LayoutOrder"]
      536 CALL                             R28 2 -1
      537 CALL                             R26 -1 1
      538 MOVE                             R27 R23
      539 JUMPIFNOT                        R27 ; [+263]
      540 GETUPVAL                         R27 3
      541 GETTABLEKS                       R27 R27 K46 ["createElement"]
      543 GETUPVAL                         R29 2
      544 JUMPIFNOT                        R29 ; [+2]
      545 GETUPVAL                         R28 4
      546 JUMP                             ; [+1]
      547 LOADK                            R28 K47 ["Frame"]
      548 GETUPVAL                         R30 2
      549 JUMPIFNOT                        R30 ; [+21]
      550 DUPTABLE                         R29 K52 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing"}]
      551 GETIMPORT                        R30 K55 [Enum.AutomaticSize.XY]
      553 SETTABLEKS                       R30 R29 K48 ["AutomaticSize"]
      555 NAMECALL                         R30 R4 K56 ["getNextOrder"]
      557 CALL                             R30 1 1
      558 SETTABLEKS                       R30 R29 K49 ["LayoutOrder"]
      560 GETIMPORT                        R30 K59 [Enum.FillDirection.Horizontal]
      562 SETTABLEKS                       R30 R29 K50 ["Layout"]
      564 GETTABLEKS                       R30 R2 K33 ["robuxFeeBase"]
      566 GETTABLEKS                       R30 R30 K60 ["spacing"]
      568 SETTABLEKS                       R30 R29 K51 ["Spacing"]
      570 JUMP                             ; [+19]
      571 DUPTABLE                         R29 K63 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      572 GETIMPORT                        R30 K65 [UDim2.new]
      574 LOADN                            R31 1
      575 LOADN                            R32 0
      576 LOADN                            R33 0
      577 GETTABLEKS                       R34 R2 K66 ["rowHeight"]
      579 CALL                             R30 4 1
      580 SETTABLEKS                       R30 R29 K61 ["Size"]
      582 LOADN                            R30 1
      583 SETTABLEKS                       R30 R29 K62 ["BackgroundTransparency"]
      585 NAMECALL                         R30 R4 K56 ["getNextOrder"]
      587 CALL                             R30 1 1
      588 SETTABLEKS                       R30 R29 K49 ["LayoutOrder"]
      590 DUPTABLE                         R30 K110 [{"HorizontalLayout", "EarnLabel", "RobuxIcon", "EarnAmount"}]
      591 GETUPVAL                         R32 2
      592 JUMPIFNOT                        R32 ; [+2]
      593 LOADNIL                          R31
      594 JUMP                             ; [+18]
      595 GETUPVAL                         R31 3
      596 GETTABLEKS                       R31 R31 K46 ["createElement"]
      598 LOADK                            R32 K72 ["UIListLayout"]
      599 DUPTABLE                         R33 K75 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
      600 GETIMPORT                        R34 K59 [Enum.FillDirection.Horizontal]
      602 SETTABLEKS                       R34 R33 K57 ["FillDirection"]
      604 GETIMPORT                        R34 K76 [Enum.SortOrder.LayoutOrder]
      606 SETTABLEKS                       R34 R33 K73 ["SortOrder"]
      608 GETIMPORT                        R34 K78 [Enum.VerticalAlignment.Center]
      610 SETTABLEKS                       R34 R33 K74 ["VerticalAlignment"]
      612 CALL                             R31 2 1
      613 SETTABLEKS                       R31 R30 K67 ["HorizontalLayout"]
      615 GETUPVAL                         R32 2
      616 JUMPIFNOT                        R32 ; [+16]
      617 GETUPVAL                         R31 3
      618 GETTABLEKS                       R31 R31 K46 ["createElement"]
      620 GETUPVAL                         R32 5
      621 DUPTABLE                         R33 K80 [{"AutomaticSize", "LayoutOrder", "Text"}]
      622 GETIMPORT                        R34 K55 [Enum.AutomaticSize.XY]
      624 SETTABLEKS                       R34 R33 K48 ["AutomaticSize"]
      626 LOADN                            R34 1
      627 SETTABLEKS                       R34 R33 K49 ["LayoutOrder"]
      629 SETTABLEKS                       R19 R33 K79 ["Text"]
      631 CALL                             R31 2 1
      632 JUMP                             ; [+47]
      633 GETUPVAL                         R31 3
      634 GETTABLEKS                       R31 R31 K46 ["createElement"]
      636 LOADK                            R32 K81 ["TextLabel"]
      637 GETUPVAL                         R33 6
      638 GETTABLEKS                       R33 R33 K82 ["Dictionary"]
      640 GETTABLEKS                       R33 R33 K83 ["join"]
      642 GETTABLEKS                       R34 R2 K16 ["fontStyle"]
      644 GETTABLEKS                       R34 R34 K28 ["Normal"]
      646 DUPTABLE                         R35 K102 [{"Size", "BackgroundTransparency", "BorderSizePixel", "TextYAlignment", "TextXAlignment", "TextTransparency", "Text", "LayoutOrder"}]
      647 GETIMPORT                        R36 K65 [UDim2.new]
      649 LOADN                            R37 0
      650 GETTABLEKS                       R38 R20 K88 ["X"]
      652 LOADN                            R39 1
      653 LOADN                            R40 0
      654 CALL                             R36 4 1
      655 SETTABLEKS                       R36 R35 K61 ["Size"]
      657 LOADN                            R36 1
      658 SETTABLEKS                       R36 R35 K62 ["BackgroundTransparency"]
      660 LOADN                            R36 0
      661 SETTABLEKS                       R36 R35 K101 ["BorderSizePixel"]
      663 GETIMPORT                        R36 K89 [Enum.TextYAlignment.Center]
      665 SETTABLEKS                       R36 R35 K84 ["TextYAlignment"]
      667 GETIMPORT                        R36 K91 [Enum.TextXAlignment.Left]
      669 SETTABLEKS                       R36 R35 K85 ["TextXAlignment"]
      671 SETTABLEKS                       R24 R35 K86 ["TextTransparency"]
      673 SETTABLEKS                       R19 R35 K79 ["Text"]
      675 LOADN                            R36 1
      676 SETTABLEKS                       R36 R35 K49 ["LayoutOrder"]
      678 CALL                             R33 2 -1
      679 CALL                             R31 -1 1
      680 SETTABLEKS                       R31 R30 K41 ["EarnLabel"]
      682 GETUPVAL                         R31 3
      683 GETTABLEKS                       R31 R31 K46 ["createElement"]
      685 LOADK                            R32 K92 ["ImageLabel"]
      686 DUPTABLE                         R33 K96 [{"Size", "ImageColor3", "Image", "ImageTransparency", "BackgroundTransparency", "LayoutOrder"}]
      687 GETIMPORT                        R34 K65 [UDim2.new]
      689 LOADN                            R35 0
      690 GETTABLEKS                       R36 R2 K33 ["robuxFeeBase"]
      692 GETTABLEKS                       R36 R36 K97 ["icon"]
      694 GETTABLEKS                       R36 R36 K98 ["size"]
      696 LOADN                            R37 0
      697 GETTABLEKS                       R38 R2 K33 ["robuxFeeBase"]
      699 GETTABLEKS                       R38 R38 K97 ["icon"]
      701 GETTABLEKS                       R38 R38 K98 ["size"]
      703 CALL                             R34 4 1
      704 SETTABLEKS                       R34 R33 K61 ["Size"]
      706 GETTABLEKS                       R34 R2 K33 ["robuxFeeBase"]
      708 GETTABLEKS                       R34 R34 K97 ["icon"]
      710 GETTABLEKS                       R34 R34 K99 ["imageColor"]
      712 SETTABLEKS                       R34 R33 K93 ["ImageColor3"]
      714 GETTABLEKS                       R34 R2 K33 ["robuxFeeBase"]
      716 GETTABLEKS                       R34 R34 K97 ["icon"]
      718 GETTABLEKS                       R34 R34 K100 ["image"]
      720 SETTABLEKS                       R34 R33 K94 ["Image"]
      722 SETTABLEKS                       R24 R33 K95 ["ImageTransparency"]
      724 LOADN                            R34 1
      725 SETTABLEKS                       R34 R33 K62 ["BackgroundTransparency"]
      727 LOADN                            R34 2
      728 SETTABLEKS                       R34 R33 K49 ["LayoutOrder"]
      730 CALL                             R31 2 1
      731 SETTABLEKS                       R31 R30 K69 ["RobuxIcon"]
      733 GETUPVAL                         R32 2
      734 JUMPIFNOT                        R32 ; [+18]
      735 GETUPVAL                         R31 3
      736 GETTABLEKS                       R31 R31 K46 ["createElement"]
      738 GETUPVAL                         R32 5
      739 DUPTABLE                         R33 K111 [{"AutomaticSize", "LayoutOrder", "Text", "TextTransparency"}]
      740 GETIMPORT                        R34 K55 [Enum.AutomaticSize.XY]
      742 SETTABLEKS                       R34 R33 K48 ["AutomaticSize"]
      744 LOADN                            R34 3
      745 SETTABLEKS                       R34 R33 K49 ["LayoutOrder"]
      747 SETTABLEKS                       R22 R33 K79 ["Text"]
      749 SETTABLEKS                       R24 R33 K86 ["TextTransparency"]
      751 CALL                             R31 2 1
      752 JUMP                             ; [+47]
      753 GETUPVAL                         R31 3
      754 GETTABLEKS                       R31 R31 K46 ["createElement"]
      756 LOADK                            R32 K81 ["TextLabel"]
      757 GETUPVAL                         R33 6
      758 GETTABLEKS                       R33 R33 K82 ["Dictionary"]
      760 GETTABLEKS                       R33 R33 K83 ["join"]
      762 GETTABLEKS                       R34 R2 K16 ["fontStyle"]
      764 GETTABLEKS                       R34 R34 K28 ["Normal"]
      766 DUPTABLE                         R35 K102 [{"Size", "BackgroundTransparency", "BorderSizePixel", "TextYAlignment", "TextXAlignment", "TextTransparency", "Text", "LayoutOrder"}]
      767 GETIMPORT                        R36 K65 [UDim2.new]
      769 LOADN                            R37 1
      770 LOADN                            R38 0
      771 LOADN                            R39 0
      772 GETTABLEKS                       R40 R2 K66 ["rowHeight"]
      774 CALL                             R36 4 1
      775 SETTABLEKS                       R36 R35 K61 ["Size"]
      777 LOADN                            R36 1
      778 SETTABLEKS                       R36 R35 K62 ["BackgroundTransparency"]
      780 LOADN                            R36 0
      781 SETTABLEKS                       R36 R35 K101 ["BorderSizePixel"]
      783 GETIMPORT                        R36 K89 [Enum.TextYAlignment.Center]
      785 SETTABLEKS                       R36 R35 K84 ["TextYAlignment"]
      787 GETIMPORT                        R36 K91 [Enum.TextXAlignment.Left]
      789 SETTABLEKS                       R36 R35 K85 ["TextXAlignment"]
      791 SETTABLEKS                       R24 R35 K86 ["TextTransparency"]
      793 SETTABLEKS                       R22 R35 K79 ["Text"]
      795 LOADN                            R36 3
      796 SETTABLEKS                       R36 R35 K49 ["LayoutOrder"]
      798 CALL                             R33 2 -1
      799 CALL                             R31 -1 1
      800 SETTABLEKS                       R31 R30 K109 ["EarnAmount"]
      802 CALL                             R27 3 1
      803 GETUPVAL                         R28 3
      804 GETTABLEKS                       R28 R28 K46 ["createElement"]
      806 GETUPVAL                         R29 4
      807 DUPTABLE                         R30 K113 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment"}]
      808 GETIMPORT                        R31 K55 [Enum.AutomaticSize.XY]
      810 SETTABLEKS                       R31 R30 K48 ["AutomaticSize"]
      812 GETIMPORT                        R31 K115 [Enum.FillDirection.Vertical]
      814 SETTABLEKS                       R31 R30 K50 ["Layout"]
      816 GETUPVAL                         R32 2
      817 JUMPIFNOT                        R32 ; [+5]
      818 GETTABLEKS                       R31 R2 K33 ["robuxFeeBase"]
      820 GETTABLEKS                       R31 R31 K116 ["pricePadding"]
      822 JUMP                             ; [+1]
      823 LOADNIL                          R31
      824 SETTABLEKS                       R31 R30 K51 ["Spacing"]
      826 GETUPVAL                         R32 2
      827 JUMPIFNOT                        R32 ; [+3]
      828 GETIMPORT                        R31 K117 [Enum.HorizontalAlignment.Left]
      830 JUMP                             ; [+1]
      831 LOADNIL                          R31
      832 SETTABLEKS                       R31 R30 K112 ["HorizontalAlignment"]
      834 DUPTABLE                         R31 K122 [{"TextInput", "SubText", "FeeFrame", "FeeSubText", "EarnFrame"}]
      835 GETUPVAL                         R32 3
      836 GETTABLEKS                       R32 R32 K46 ["createElement"]
      838 GETUPVAL                         R33 7
      839 DUPTABLE                         R34 K128 [{"Disabled", "LayoutOrder", "LeadingComponent", "LeadingComponentProps", "OnTextChanged", "Width", "Text"}]
      840 NOT                              R35 R11
      841 SETTABLEKS                       R35 R34 K123 ["Disabled"]
      843 LOADN                            R35 0
      844 SETTABLEKS                       R35 R34 K49 ["LayoutOrder"]
      846 GETUPVAL                         R35 8
      847 SETTABLEKS                       R35 R34 K124 ["LeadingComponent"]
      849 DUPTABLE                         R35 K129 [{"ImageColor3", "Image", "Size"}]
      850 GETTABLEKS                       R36 R2 K33 ["robuxFeeBase"]
      852 GETTABLEKS                       R36 R36 K97 ["icon"]
      854 GETTABLEKS                       R36 R36 K99 ["imageColor"]
      856 SETTABLEKS                       R36 R35 K93 ["ImageColor3"]
      858 GETTABLEKS                       R36 R2 K33 ["robuxFeeBase"]
      860 GETTABLEKS                       R36 R36 K97 ["icon"]
      862 GETTABLEKS                       R36 R36 K100 ["image"]
      864 SETTABLEKS                       R36 R35 K94 ["Image"]
      866 GETIMPORT                        R36 K65 [UDim2.new]
      868 LOADN                            R37 0
      869 GETTABLEKS                       R38 R2 K33 ["robuxFeeBase"]
      871 GETTABLEKS                       R38 R38 K97 ["icon"]
      873 GETTABLEKS                       R38 R38 K98 ["size"]
      875 LOADN                            R39 0
      876 GETTABLEKS                       R40 R2 K33 ["robuxFeeBase"]
      878 GETTABLEKS                       R40 R40 K97 ["icon"]
      880 GETTABLEKS                       R40 R40 K98 ["size"]
      882 CALL                             R36 4 1
      883 SETTABLEKS                       R36 R35 K61 ["Size"]
      885 SETTABLEKS                       R35 R34 K125 ["LeadingComponentProps"]
      887 SETTABLEKS                       R12 R34 K126 ["OnTextChanged"]
      889 GETTABLEKS                       R35 R2 K33 ["robuxFeeBase"]
      891 GETTABLEKS                       R35 R35 K130 ["priceField"]
      893 GETTABLEKS                       R35 R35 K35 ["width"]
      895 SETTABLEKS                       R35 R34 K127 ["Width"]
      897 SETTABLEKS                       R8 R34 K79 ["Text"]
      899 CALL                             R32 2 1
      900 SETTABLEKS                       R32 R31 K118 ["TextInput"]
      902 MOVE                             R32 R10
      903 JUMPIFNOT                        R32 ; [+50]
      904 GETUPVAL                         R32 3
      905 GETTABLEKS                       R32 R32 K46 ["createElement"]
      907 LOADK                            R33 K81 ["TextLabel"]
      908 GETUPVAL                         R34 6
      909 GETTABLEKS                       R34 R34 K82 ["Dictionary"]
      911 GETTABLEKS                       R34 R34 K83 ["join"]
      913 GETTABLEKS                       R35 R2 K16 ["fontStyle"]
      915 GETTABLEKS                       R35 R35 K17 ["Subtitle"]
      917 DUPTABLE                         R36 K131 [{"Size", "BackgroundTransparency", "Text", "TextWrapped", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
      918 GETIMPORT                        R37 K65 [UDim2.new]
      920 LOADN                            R38 0
      921 GETTABLEKS                       R40 R10 K88 ["X"]
      923 FASTCALL1                        MATH_CEIL R40 ; [+2]
      924 GETIMPORT                        R39 K38 [math.ceil]
      926 CALL                             R39 1 1
      927 LOADN                            R40 0
      928 GETTABLEKS                       R41 R10 K108 ["Y"]
      930 CALL                             R37 4 1
      931 SETTABLEKS                       R37 R36 K61 ["Size"]
      933 LOADN                            R37 1
      934 SETTABLEKS                       R37 R36 K62 ["BackgroundTransparency"]
      936 SETTABLEKS                       R9 R36 K79 ["Text"]
      938 LOADB                            R37 1
      939 SETTABLEKS                       R37 R36 K104 ["TextWrapped"]
      941 GETIMPORT                        R37 K91 [Enum.TextXAlignment.Left]
      943 SETTABLEKS                       R37 R36 K85 ["TextXAlignment"]
      945 GETIMPORT                        R37 K133 [Enum.TextYAlignment.Top]
      947 SETTABLEKS                       R37 R36 K84 ["TextYAlignment"]
      949 LOADN                            R37 1
      950 SETTABLEKS                       R37 R36 K49 ["LayoutOrder"]
      952 CALL                             R34 2 -1
      953 CALL                             R32 -1 1
      954 SETTABLEKS                       R32 R31 K15 ["SubText"]
      956 SETTABLEKS                       R25 R31 K119 ["FeeFrame"]
      958 SETTABLEKS                       R26 R31 K120 ["FeeSubText"]
      960 SETTABLEKS                       R27 R31 K121 ["EarnFrame"]
      962 CALL                             R28 3 -1
      963 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Roact"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Flags"]
       38 GETTABLEKS                       R5 R5 K11 ["getFFlagGameSettingsFixMoreLayoutIssues"]
       40 CALL                             R4 1 1
       41 CALL                             R4 0 1
       42 GETTABLEKS                       R5 R3 K12 ["Util"]
       44 GETTABLEKS                       R6 R5 K13 ["GetTextSize"]
       46 GETTABLEKS                       R7 R5 K14 ["LayoutOrderIterator"]
       48 GETTABLEKS                       R8 R3 K15 ["UI"]
       50 GETTABLEKS                       R9 R8 K16 ["Image"]
       52 GETTABLEKS                       R10 R8 K17 ["Pane"]
       54 GETTABLEKS                       R11 R8 K18 ["TextLabel"]
       56 GETTABLEKS                       R12 R8 K19 ["TextInput"]
       58 GETTABLEKS                       R13 R3 K20 ["ContextServices"]
       60 GETTABLEKS                       R14 R13 K21 ["withContext"]
       62 GETTABLEKS                       R15 R2 K22 ["PureComponent"]
       64 LOADK                            R17 K23 ["RobuxFeeBase"]
       65 NAMECALL                         R15 R15 K24 ["extend"]
       67 CALL                             R15 2 1
       68 DUPCLOSURE                       R16 K25 [PROTO_0]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R9
       78 SETTABLEKS                       R16 R15 K26 ["render"]
       80 MOVE                             R16 R14
       81 DUPTABLE                         R17 K29 [{"Localization", "Stylizer"}]
       82 GETTABLEKS                       R18 R13 K27 ["Localization"]
       84 SETTABLEKS                       R18 R17 K27 ["Localization"]
       86 GETTABLEKS                       R18 R13 K28 ["Stylizer"]
       88 SETTABLEKS                       R18 R17 K28 ["Stylizer"]
       90 CALL                             R16 1 1
       91 MOVE                             R17 R15
       92 CALL                             R16 1 1
       93 MOVE                             R15 R16
       94 RETURN                           R15 1
