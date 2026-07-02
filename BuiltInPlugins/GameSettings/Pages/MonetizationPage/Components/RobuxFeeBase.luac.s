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
       61 LOADN                            R15 500
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
      199 JUMPIFNOT                        R25 ; [+228]
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
      230 JUMP                             ; [+16]
      231 DUPTABLE                         R27 K64 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      232 GETIMPORT                        R28 K66 [UDim2.new]
      234 LOADN                            R29 1
      235 LOADN                            R30 0
      236 LOADN                            R31 0
      237 GETTABLEKS                       R32 R2 K67 ["rowHeight"]
      239 CALL                             R28 4 1
      240 SETTABLEKS                       R28 R27 K61 ["Size"]
      242 NAMECALL                         R28 R4 K56 ["getNextOrder"]
      244 CALL                             R28 1 1
      245 SETTABLEKS                       R28 R27 K49 ["LayoutOrder"]
      247 DUPTABLE                         R28 K72 [{"HorizontalLayout", "FeeLabel", "RobuxIcon", "FeeAmount"}]
      248 GETUPVAL                         R30 2
      249 JUMPIFNOT                        R30 ; [+2]
      250 LOADNIL                          R29
      251 JUMP                             ; [+18]
      252 GETUPVAL                         R29 3
      253 GETTABLEKS                       R29 R29 K46 ["createElement"]
      255 LOADK                            R30 K73 ["UIListLayout"]
      256 DUPTABLE                         R31 K76 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
      257 GETIMPORT                        R32 K59 [Enum.FillDirection.Horizontal]
      259 SETTABLEKS                       R32 R31 K57 ["FillDirection"]
      261 GETIMPORT                        R32 K77 [Enum.SortOrder.LayoutOrder]
      263 SETTABLEKS                       R32 R31 K74 ["SortOrder"]
      265 GETIMPORT                        R32 K79 [Enum.VerticalAlignment.Center]
      267 SETTABLEKS                       R32 R31 K75 ["VerticalAlignment"]
      269 CALL                             R29 2 1
      270 SETTABLEKS                       R29 R28 K68 ["HorizontalLayout"]
      272 GETUPVAL                         R30 2
      273 JUMPIFNOT                        R30 ; [+13]
      274 GETUPVAL                         R29 3
      275 GETTABLEKS                       R29 R29 K46 ["createElement"]
      277 GETUPVAL                         R30 5
      278 DUPTABLE                         R31 K81 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Text"]}]
      279 GETIMPORT                        R32 K55 [Enum.AutomaticSize.XY]
      281 SETTABLEKS                       R32 R31 K48 ["AutomaticSize"]
      283 SETTABLEKS                       R13 R31 K80 ["Text"]
      285 CALL                             R29 2 1
      286 JUMP                             ; [+38]
      287 GETUPVAL                         R29 3
      288 GETTABLEKS                       R29 R29 K46 ["createElement"]
      290 LOADK                            R30 K82 ["TextLabel"]
      291 GETUPVAL                         R31 6
      292 GETTABLEKS                       R31 R31 K83 ["Dictionary"]
      294 GETTABLEKS                       R31 R31 K84 ["join"]
      296 GETTABLEKS                       R32 R2 K16 ["fontStyle"]
      298 GETTABLEKS                       R32 R32 K28 ["Normal"]
      300 DUPTABLE                         R33 K88 [{["Size"], ["BackgroundTransparency"] = 1, ["TextYAlignment"], ["TextXAlignment"], ["TextTransparency"], ["Text"], ["LayoutOrder"] = 1}]
      301 GETIMPORT                        R34 K66 [UDim2.new]
      303 LOADN                            R35 0
      304 GETTABLEKS                       R36 R14 K89 ["X"]
      306 LOADN                            R37 1
      307 LOADN                            R38 0
      308 CALL                             R34 4 1
      309 SETTABLEKS                       R34 R33 K61 ["Size"]
      311 GETIMPORT                        R34 K90 [Enum.TextYAlignment.Center]
      313 SETTABLEKS                       R34 R33 K85 ["TextYAlignment"]
      315 GETIMPORT                        R34 K92 [Enum.TextXAlignment.Left]
      317 SETTABLEKS                       R34 R33 K86 ["TextXAlignment"]
      319 SETTABLEKS                       R24 R33 K87 ["TextTransparency"]
      321 SETTABLEKS                       R13 R33 K80 ["Text"]
      323 CALL                             R31 2 -1
      324 CALL                             R29 -1 1
      325 SETTABLEKS                       R29 R28 K69 ["FeeLabel"]
      327 GETUPVAL                         R29 3
      328 GETTABLEKS                       R29 R29 K46 ["createElement"]
      330 LOADK                            R30 K93 ["ImageLabel"]
      331 DUPTABLE                         R31 K98 [{["Size"], ["ImageColor3"], ["Image"], ["ImageTransparency"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
      332 GETIMPORT                        R32 K66 [UDim2.new]
      334 LOADN                            R33 0
      335 GETTABLEKS                       R34 R2 K33 ["robuxFeeBase"]
      337 GETTABLEKS                       R34 R34 K99 ["icon"]
      339 GETTABLEKS                       R34 R34 K100 ["size"]
      341 LOADN                            R35 0
      342 GETTABLEKS                       R36 R2 K33 ["robuxFeeBase"]
      344 GETTABLEKS                       R36 R36 K99 ["icon"]
      346 GETTABLEKS                       R36 R36 K100 ["size"]
      348 CALL                             R32 4 1
      349 SETTABLEKS                       R32 R31 K61 ["Size"]
      351 GETTABLEKS                       R32 R2 K33 ["robuxFeeBase"]
      353 GETTABLEKS                       R32 R32 K99 ["icon"]
      355 GETTABLEKS                       R32 R32 K101 ["imageColor"]
      357 SETTABLEKS                       R32 R31 K94 ["ImageColor3"]
      359 GETTABLEKS                       R32 R2 K33 ["robuxFeeBase"]
      361 GETTABLEKS                       R32 R32 K99 ["icon"]
      363 GETTABLEKS                       R32 R32 K102 ["image"]
      365 SETTABLEKS                       R32 R31 K95 ["Image"]
      367 SETTABLEKS                       R24 R31 K96 ["ImageTransparency"]
      369 CALL                             R29 2 1
      370 SETTABLEKS                       R29 R28 K70 ["RobuxIcon"]
      372 GETUPVAL                         R30 2
      373 JUMPIFNOT                        R30 ; [+13]
      374 GETUPVAL                         R29 3
      375 GETTABLEKS                       R29 R29 K46 ["createElement"]
      377 GETUPVAL                         R30 5
      378 DUPTABLE                         R31 K104 [{["AutomaticSize"], ["LayoutOrder"] = 3, ["Text"]}]
      379 GETIMPORT                        R32 K55 [Enum.AutomaticSize.XY]
      381 SETTABLEKS                       R32 R31 K48 ["AutomaticSize"]
      383 SETTABLEKS                       R18 R31 K80 ["Text"]
      385 CALL                             R29 2 1
      386 JUMP                             ; [+38]
      387 GETUPVAL                         R29 3
      388 GETTABLEKS                       R29 R29 K46 ["createElement"]
      390 LOADK                            R30 K82 ["TextLabel"]
      391 GETUPVAL                         R31 6
      392 GETTABLEKS                       R31 R31 K83 ["Dictionary"]
      394 GETTABLEKS                       R31 R31 K84 ["join"]
      396 GETTABLEKS                       R32 R2 K16 ["fontStyle"]
      398 GETTABLEKS                       R32 R32 K28 ["Normal"]
      400 DUPTABLE                         R33 K107 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["TextYAlignment"], ["TextXAlignment"], ["TextTransparency"], ["Text"], ["LayoutOrder"] = 3}]
      401 GETIMPORT                        R34 K66 [UDim2.new]
      403 LOADN                            R35 1
      404 LOADN                            R36 0
      405 LOADN                            R37 0
      406 GETTABLEKS                       R38 R2 K67 ["rowHeight"]
      408 CALL                             R34 4 1
      409 SETTABLEKS                       R34 R33 K61 ["Size"]
      411 GETIMPORT                        R34 K90 [Enum.TextYAlignment.Center]
      413 SETTABLEKS                       R34 R33 K85 ["TextYAlignment"]
      415 GETIMPORT                        R34 K92 [Enum.TextXAlignment.Left]
      417 SETTABLEKS                       R34 R33 K86 ["TextXAlignment"]
      419 SETTABLEKS                       R24 R33 K87 ["TextTransparency"]
      421 SETTABLEKS                       R18 R33 K80 ["Text"]
      423 CALL                             R31 2 -1
      424 CALL                             R29 -1 1
      425 SETTABLEKS                       R29 R28 K71 ["FeeAmount"]
      427 CALL                             R25 3 1
      428 MOVE                             R26 R23
      429 JUMPIFNOT                        R26 ; [+66]
      430 GETUPVAL                         R27 2
      431 JUMPIFNOT                        R27 ; [+18]
      432 GETUPVAL                         R26 3
      433 GETTABLEKS                       R26 R26 K46 ["createElement"]
      435 GETUPVAL                         R27 5
      436 DUPTABLE                         R28 K112 [{["AutomaticSize"], ["LayoutOrder"], ["Style"] = "Label", ["Text"], ["TextWrapped"] = True}]
      437 GETIMPORT                        R29 K55 [Enum.AutomaticSize.XY]
      439 SETTABLEKS                       R29 R28 K48 ["AutomaticSize"]
      441 NAMECALL                         R29 R4 K56 ["getNextOrder"]
      443 CALL                             R29 1 1
      444 SETTABLEKS                       R29 R28 K49 ["LayoutOrder"]
      446 SETTABLEKS                       R15 R28 K80 ["Text"]
      448 CALL                             R26 2 1
      449 JUMP                             ; [+46]
      450 GETUPVAL                         R26 3
      451 GETTABLEKS                       R26 R26 K46 ["createElement"]
      453 LOADK                            R27 K82 ["TextLabel"]
      454 GETUPVAL                         R28 6
      455 GETTABLEKS                       R28 R28 K83 ["Dictionary"]
      457 GETTABLEKS                       R28 R28 K84 ["join"]
      459 GETTABLEKS                       R29 R2 K16 ["fontStyle"]
      461 GETTABLEKS                       R29 R29 K32 ["Subtext"]
      463 DUPTABLE                         R30 K113 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextYAlignment"], ["TextXAlignment"], ["TextWrapped"] = True, ["LayoutOrder"]}]
      464 GETIMPORT                        R31 K66 [UDim2.new]
      466 LOADN                            R32 0
      467 GETTABLEKS                       R34 R16 K89 ["X"]
      469 FASTCALL1                        MATH_CEIL R34 ; [+2]
      470 GETIMPORT                        R33 K38 [math.ceil]
      472 CALL                             R33 1 1
      473 LOADN                            R34 0
      474 GETTABLEKS                       R35 R16 K114 ["Y"]
      476 CALL                             R31 4 1
      477 SETTABLEKS                       R31 R30 K61 ["Size"]
      479 SETTABLEKS                       R15 R30 K80 ["Text"]
      481 GETIMPORT                        R31 K90 [Enum.TextYAlignment.Center]
      483 SETTABLEKS                       R31 R30 K85 ["TextYAlignment"]
      485 GETIMPORT                        R31 K92 [Enum.TextXAlignment.Left]
      487 SETTABLEKS                       R31 R30 K86 ["TextXAlignment"]
      489 NAMECALL                         R31 R4 K56 ["getNextOrder"]
      491 CALL                             R31 1 1
      492 SETTABLEKS                       R31 R30 K49 ["LayoutOrder"]
      494 CALL                             R28 2 -1
      495 CALL                             R26 -1 1
      496 MOVE                             R27 R23
      497 JUMPIFNOT                        R27 ; [+230]
      498 GETUPVAL                         R27 3
      499 GETTABLEKS                       R27 R27 K46 ["createElement"]
      501 GETUPVAL                         R29 2
      502 JUMPIFNOT                        R29 ; [+2]
      503 GETUPVAL                         R28 4
      504 JUMP                             ; [+1]
      505 LOADK                            R28 K47 ["Frame"]
      506 GETUPVAL                         R30 2
      507 JUMPIFNOT                        R30 ; [+21]
      508 DUPTABLE                         R29 K52 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing"}]
      509 GETIMPORT                        R30 K55 [Enum.AutomaticSize.XY]
      511 SETTABLEKS                       R30 R29 K48 ["AutomaticSize"]
      513 NAMECALL                         R30 R4 K56 ["getNextOrder"]
      515 CALL                             R30 1 1
      516 SETTABLEKS                       R30 R29 K49 ["LayoutOrder"]
      518 GETIMPORT                        R30 K59 [Enum.FillDirection.Horizontal]
      520 SETTABLEKS                       R30 R29 K50 ["Layout"]
      522 GETTABLEKS                       R30 R2 K33 ["robuxFeeBase"]
      524 GETTABLEKS                       R30 R30 K60 ["spacing"]
      526 SETTABLEKS                       R30 R29 K51 ["Spacing"]
      528 JUMP                             ; [+16]
      529 DUPTABLE                         R29 K64 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      530 GETIMPORT                        R30 K66 [UDim2.new]
      532 LOADN                            R31 1
      533 LOADN                            R32 0
      534 LOADN                            R33 0
      535 GETTABLEKS                       R34 R2 K67 ["rowHeight"]
      537 CALL                             R30 4 1
      538 SETTABLEKS                       R30 R29 K61 ["Size"]
      540 NAMECALL                         R30 R4 K56 ["getNextOrder"]
      542 CALL                             R30 1 1
      543 SETTABLEKS                       R30 R29 K49 ["LayoutOrder"]
      545 DUPTABLE                         R30 K116 [{"HorizontalLayout", "EarnLabel", "RobuxIcon", "EarnAmount"}]
      546 GETUPVAL                         R32 2
      547 JUMPIFNOT                        R32 ; [+2]
      548 LOADNIL                          R31
      549 JUMP                             ; [+18]
      550 GETUPVAL                         R31 3
      551 GETTABLEKS                       R31 R31 K46 ["createElement"]
      553 LOADK                            R32 K73 ["UIListLayout"]
      554 DUPTABLE                         R33 K76 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
      555 GETIMPORT                        R34 K59 [Enum.FillDirection.Horizontal]
      557 SETTABLEKS                       R34 R33 K57 ["FillDirection"]
      559 GETIMPORT                        R34 K77 [Enum.SortOrder.LayoutOrder]
      561 SETTABLEKS                       R34 R33 K74 ["SortOrder"]
      563 GETIMPORT                        R34 K79 [Enum.VerticalAlignment.Center]
      565 SETTABLEKS                       R34 R33 K75 ["VerticalAlignment"]
      567 CALL                             R31 2 1
      568 SETTABLEKS                       R31 R30 K68 ["HorizontalLayout"]
      570 GETUPVAL                         R32 2
      571 JUMPIFNOT                        R32 ; [+13]
      572 GETUPVAL                         R31 3
      573 GETTABLEKS                       R31 R31 K46 ["createElement"]
      575 GETUPVAL                         R32 5
      576 DUPTABLE                         R33 K81 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Text"]}]
      577 GETIMPORT                        R34 K55 [Enum.AutomaticSize.XY]
      579 SETTABLEKS                       R34 R33 K48 ["AutomaticSize"]
      581 SETTABLEKS                       R19 R33 K80 ["Text"]
      583 CALL                             R31 2 1
      584 JUMP                             ; [+38]
      585 GETUPVAL                         R31 3
      586 GETTABLEKS                       R31 R31 K46 ["createElement"]
      588 LOADK                            R32 K82 ["TextLabel"]
      589 GETUPVAL                         R33 6
      590 GETTABLEKS                       R33 R33 K83 ["Dictionary"]
      592 GETTABLEKS                       R33 R33 K84 ["join"]
      594 GETTABLEKS                       R34 R2 K16 ["fontStyle"]
      596 GETTABLEKS                       R34 R34 K28 ["Normal"]
      598 DUPTABLE                         R35 K117 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["TextYAlignment"], ["TextXAlignment"], ["TextTransparency"], ["Text"], ["LayoutOrder"] = 1}]
      599 GETIMPORT                        R36 K66 [UDim2.new]
      601 LOADN                            R37 0
      602 GETTABLEKS                       R38 R20 K89 ["X"]
      604 LOADN                            R39 1
      605 LOADN                            R40 0
      606 CALL                             R36 4 1
      607 SETTABLEKS                       R36 R35 K61 ["Size"]
      609 GETIMPORT                        R36 K90 [Enum.TextYAlignment.Center]
      611 SETTABLEKS                       R36 R35 K85 ["TextYAlignment"]
      613 GETIMPORT                        R36 K92 [Enum.TextXAlignment.Left]
      615 SETTABLEKS                       R36 R35 K86 ["TextXAlignment"]
      617 SETTABLEKS                       R24 R35 K87 ["TextTransparency"]
      619 SETTABLEKS                       R19 R35 K80 ["Text"]
      621 CALL                             R33 2 -1
      622 CALL                             R31 -1 1
      623 SETTABLEKS                       R31 R30 K41 ["EarnLabel"]
      625 GETUPVAL                         R31 3
      626 GETTABLEKS                       R31 R31 K46 ["createElement"]
      628 LOADK                            R32 K93 ["ImageLabel"]
      629 DUPTABLE                         R33 K98 [{["Size"], ["ImageColor3"], ["Image"], ["ImageTransparency"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
      630 GETIMPORT                        R34 K66 [UDim2.new]
      632 LOADN                            R35 0
      633 GETTABLEKS                       R36 R2 K33 ["robuxFeeBase"]
      635 GETTABLEKS                       R36 R36 K99 ["icon"]
      637 GETTABLEKS                       R36 R36 K100 ["size"]
      639 LOADN                            R37 0
      640 GETTABLEKS                       R38 R2 K33 ["robuxFeeBase"]
      642 GETTABLEKS                       R38 R38 K99 ["icon"]
      644 GETTABLEKS                       R38 R38 K100 ["size"]
      646 CALL                             R34 4 1
      647 SETTABLEKS                       R34 R33 K61 ["Size"]
      649 GETTABLEKS                       R34 R2 K33 ["robuxFeeBase"]
      651 GETTABLEKS                       R34 R34 K99 ["icon"]
      653 GETTABLEKS                       R34 R34 K101 ["imageColor"]
      655 SETTABLEKS                       R34 R33 K94 ["ImageColor3"]
      657 GETTABLEKS                       R34 R2 K33 ["robuxFeeBase"]
      659 GETTABLEKS                       R34 R34 K99 ["icon"]
      661 GETTABLEKS                       R34 R34 K102 ["image"]
      663 SETTABLEKS                       R34 R33 K95 ["Image"]
      665 SETTABLEKS                       R24 R33 K96 ["ImageTransparency"]
      667 CALL                             R31 2 1
      668 SETTABLEKS                       R31 R30 K70 ["RobuxIcon"]
      670 GETUPVAL                         R32 2
      671 JUMPIFNOT                        R32 ; [+15]
      672 GETUPVAL                         R31 3
      673 GETTABLEKS                       R31 R31 K46 ["createElement"]
      675 GETUPVAL                         R32 5
      676 DUPTABLE                         R33 K118 [{["AutomaticSize"], ["LayoutOrder"] = 3, ["Text"], ["TextTransparency"]}]
      677 GETIMPORT                        R34 K55 [Enum.AutomaticSize.XY]
      679 SETTABLEKS                       R34 R33 K48 ["AutomaticSize"]
      681 SETTABLEKS                       R22 R33 K80 ["Text"]
      683 SETTABLEKS                       R24 R33 K87 ["TextTransparency"]
      685 CALL                             R31 2 1
      686 JUMP                             ; [+38]
      687 GETUPVAL                         R31 3
      688 GETTABLEKS                       R31 R31 K46 ["createElement"]
      690 LOADK                            R32 K82 ["TextLabel"]
      691 GETUPVAL                         R33 6
      692 GETTABLEKS                       R33 R33 K83 ["Dictionary"]
      694 GETTABLEKS                       R33 R33 K84 ["join"]
      696 GETTABLEKS                       R34 R2 K16 ["fontStyle"]
      698 GETTABLEKS                       R34 R34 K28 ["Normal"]
      700 DUPTABLE                         R35 K107 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["TextYAlignment"], ["TextXAlignment"], ["TextTransparency"], ["Text"], ["LayoutOrder"] = 3}]
      701 GETIMPORT                        R36 K66 [UDim2.new]
      703 LOADN                            R37 1
      704 LOADN                            R38 0
      705 LOADN                            R39 0
      706 GETTABLEKS                       R40 R2 K67 ["rowHeight"]
      708 CALL                             R36 4 1
      709 SETTABLEKS                       R36 R35 K61 ["Size"]
      711 GETIMPORT                        R36 K90 [Enum.TextYAlignment.Center]
      713 SETTABLEKS                       R36 R35 K85 ["TextYAlignment"]
      715 GETIMPORT                        R36 K92 [Enum.TextXAlignment.Left]
      717 SETTABLEKS                       R36 R35 K86 ["TextXAlignment"]
      719 SETTABLEKS                       R24 R35 K87 ["TextTransparency"]
      721 SETTABLEKS                       R22 R35 K80 ["Text"]
      723 CALL                             R33 2 -1
      724 CALL                             R31 -1 1
      725 SETTABLEKS                       R31 R30 K115 ["EarnAmount"]
      727 CALL                             R27 3 1
      728 GETUPVAL                         R28 3
      729 GETTABLEKS                       R28 R28 K46 ["createElement"]
      731 GETUPVAL                         R29 4
      732 DUPTABLE                         R30 K120 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment"}]
      733 GETIMPORT                        R31 K55 [Enum.AutomaticSize.XY]
      735 SETTABLEKS                       R31 R30 K48 ["AutomaticSize"]
      737 GETIMPORT                        R31 K122 [Enum.FillDirection.Vertical]
      739 SETTABLEKS                       R31 R30 K50 ["Layout"]
      741 GETUPVAL                         R32 2
      742 JUMPIFNOT                        R32 ; [+5]
      743 GETTABLEKS                       R31 R2 K33 ["robuxFeeBase"]
      745 GETTABLEKS                       R31 R31 K123 ["pricePadding"]
      747 JUMP                             ; [+1]
      748 LOADNIL                          R31
      749 SETTABLEKS                       R31 R30 K51 ["Spacing"]
      751 GETUPVAL                         R32 2
      752 JUMPIFNOT                        R32 ; [+3]
      753 GETIMPORT                        R31 K124 [Enum.HorizontalAlignment.Left]
      755 JUMP                             ; [+1]
      756 LOADNIL                          R31
      757 SETTABLEKS                       R31 R30 K119 ["HorizontalAlignment"]
      759 DUPTABLE                         R31 K129 [{"TextInput", "SubText", "FeeFrame", "FeeSubText", "EarnFrame"}]
      760 GETUPVAL                         R32 3
      761 GETTABLEKS                       R32 R32 K46 ["createElement"]
      763 GETUPVAL                         R33 7
      764 DUPTABLE                         R34 K135 [{["Disabled"], ["LayoutOrder"] = 0, ["LeadingComponent"], ["LeadingComponentProps"], ["OnTextChanged"], ["Width"], ["Text"]}]
      765 NOT                              R35 R11
      766 SETTABLEKS                       R35 R34 K130 ["Disabled"]
      768 GETUPVAL                         R35 8
      769 SETTABLEKS                       R35 R34 K131 ["LeadingComponent"]
      771 DUPTABLE                         R35 K136 [{"ImageColor3", "Image", "Size"}]
      772 GETTABLEKS                       R36 R2 K33 ["robuxFeeBase"]
      774 GETTABLEKS                       R36 R36 K99 ["icon"]
      776 GETTABLEKS                       R36 R36 K101 ["imageColor"]
      778 SETTABLEKS                       R36 R35 K94 ["ImageColor3"]
      780 GETTABLEKS                       R36 R2 K33 ["robuxFeeBase"]
      782 GETTABLEKS                       R36 R36 K99 ["icon"]
      784 GETTABLEKS                       R36 R36 K102 ["image"]
      786 SETTABLEKS                       R36 R35 K95 ["Image"]
      788 GETIMPORT                        R36 K66 [UDim2.new]
      790 LOADN                            R37 0
      791 GETTABLEKS                       R38 R2 K33 ["robuxFeeBase"]
      793 GETTABLEKS                       R38 R38 K99 ["icon"]
      795 GETTABLEKS                       R38 R38 K100 ["size"]
      797 LOADN                            R39 0
      798 GETTABLEKS                       R40 R2 K33 ["robuxFeeBase"]
      800 GETTABLEKS                       R40 R40 K99 ["icon"]
      802 GETTABLEKS                       R40 R40 K100 ["size"]
      804 CALL                             R36 4 1
      805 SETTABLEKS                       R36 R35 K61 ["Size"]
      807 SETTABLEKS                       R35 R34 K132 ["LeadingComponentProps"]
      809 SETTABLEKS                       R12 R34 K133 ["OnTextChanged"]
      811 GETTABLEKS                       R35 R2 K33 ["robuxFeeBase"]
      813 GETTABLEKS                       R35 R35 K137 ["priceField"]
      815 GETTABLEKS                       R35 R35 K35 ["width"]
      817 SETTABLEKS                       R35 R34 K134 ["Width"]
      819 SETTABLEKS                       R8 R34 K80 ["Text"]
      821 CALL                             R32 2 1
      822 SETTABLEKS                       R32 R31 K125 ["TextInput"]
      824 MOVE                             R32 R10
      825 JUMPIFNOT                        R32 ; [+41]
      826 GETUPVAL                         R32 3
      827 GETTABLEKS                       R32 R32 K46 ["createElement"]
      829 LOADK                            R33 K82 ["TextLabel"]
      830 GETUPVAL                         R34 6
      831 GETTABLEKS                       R34 R34 K83 ["Dictionary"]
      833 GETTABLEKS                       R34 R34 K84 ["join"]
      835 GETTABLEKS                       R35 R2 K16 ["fontStyle"]
      837 GETTABLEKS                       R35 R35 K17 ["Subtitle"]
      839 DUPTABLE                         R36 K138 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["LayoutOrder"] = 1}]
      840 GETIMPORT                        R37 K66 [UDim2.new]
      842 LOADN                            R38 0
      843 GETTABLEKS                       R40 R10 K89 ["X"]
      845 FASTCALL1                        MATH_CEIL R40 ; [+2]
      846 GETIMPORT                        R39 K38 [math.ceil]
      848 CALL                             R39 1 1
      849 LOADN                            R40 0
      850 GETTABLEKS                       R41 R10 K114 ["Y"]
      852 CALL                             R37 4 1
      853 SETTABLEKS                       R37 R36 K61 ["Size"]
      855 SETTABLEKS                       R9 R36 K80 ["Text"]
      857 GETIMPORT                        R37 K92 [Enum.TextXAlignment.Left]
      859 SETTABLEKS                       R37 R36 K86 ["TextXAlignment"]
      861 GETIMPORT                        R37 K140 [Enum.TextYAlignment.Top]
      863 SETTABLEKS                       R37 R36 K85 ["TextYAlignment"]
      865 CALL                             R34 2 -1
      866 CALL                             R32 -1 1
      867 SETTABLEKS                       R32 R31 K15 ["SubText"]
      869 SETTABLEKS                       R25 R31 K126 ["FeeFrame"]
      871 SETTABLEKS                       R26 R31 K127 ["FeeSubText"]
      873 SETTABLEKS                       R27 R31 K128 ["EarnFrame"]
      875 CALL                             R28 3 -1
      876 RETURN                           R28 -1

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
