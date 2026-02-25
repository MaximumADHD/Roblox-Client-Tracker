PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["new"]
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
       43 GETTABLEKS                       R10 R1 K16 ["Enabled"]
       45 GETTABLEKS                       R11 R1 K17 ["OnPriceChanged"]
       47 LOADK                            R14 K18 ["Monetization"]
       48 LOADK                            R15 K19 ["MarketplaceFee"]
       49 NAMECALL                         R12 R3 K20 ["getText"]
       51 CALL                             R12 3 1
       52 GETUPVAL                         R13 1
       53 MOVE                             R14 R12
       54 GETTABLEKS                       R17 R2 K21 ["fontStyle"]
       56 GETTABLEKS                       R16 R17 K22 ["Normal"]
       58 GETTABLEKS                       R15 R16 K23 ["TextSize"]
       60 GETTABLEKS                       R18 R2 K21 ["fontStyle"]
       62 GETTABLEKS                       R17 R18 K22 ["Normal"]
       64 GETTABLEKS                       R16 R17 K24 ["Font"]
       66 CALL                             R13 3 1
       67 LOADK                            R16 K18 ["Monetization"]
       68 LOADK                            R17 K25 ["MarketplaceFeeIs"]
       69 NEWTABLE                         R18 0 1
       71 GETIMPORT                        R19 K13 [string.format]
       73 LOADK                            R20 K26 ["%2d"]
       74 MULK                             R21 R5 K27 [100]
       75 CALL                             R19 2 -1
       76 SETLIST                          R18 R19 -1 [1]
       78 NAMECALL                         R14 R3 K20 ["getText"]
       80 CALL                             R14 4 1
       81 GETUPVAL                         R16 2
       82 JUMPIFNOT                        R16 ; [+2]
       83 LOADNIL                          R15
       84 JUMP                             ; [+25]
       85 GETUPVAL                         R15 1
       86 MOVE                             R16 R14
       87 GETTABLEKS                       R19 R2 K21 ["fontStyle"]
       89 GETTABLEKS                       R18 R19 K28 ["Subtext"]
       91 GETTABLEKS                       R17 R18 K23 ["TextSize"]
       93 GETTABLEKS                       R20 R2 K21 ["fontStyle"]
       95 GETTABLEKS                       R19 R20 K28 ["Subtext"]
       97 GETTABLEKS                       R18 R19 K24 ["Font"]
       99 GETIMPORT                        R19 K30 [Vector2.new]
      101 GETTABLEKS                       R22 R2 K31 ["robuxFeeBase"]
      103 GETTABLEKS                       R21 R22 K32 ["subText"]
      105 GETTABLEKS                       R20 R21 K33 ["width"]
      107 LOADK                            R21 K34 [∞]
      108 CALL                             R19 2 -1
      109 CALL                             R15 -1 1
      110 MUL                              R19 R6 R5
      111 FASTCALL1                        MATH_CEIL R19 ; [+2]
      112 GETIMPORT                        R18 K37 [math.ceil]
      114 CALL                             R18 1 1
      115 FASTCALL2                        MATH_MAX R7 R18 ; [+4]
      117 MOVE                             R17 R7
      118 GETIMPORT                        R16 K39 [math.max]
      120 CALL                             R16 2 1
      121 GETIMPORT                        R17 K13 [string.format]
      123 LOADK                            R18 K14 ["%.f"]
      124 MOVE                             R19 R16
      125 CALL                             R17 2 1
      126 LOADK                            R20 K18 ["Monetization"]
      127 LOADK                            R21 K40 ["EarnLabel"]
      128 NAMECALL                         R18 R3 K20 ["getText"]
      130 CALL                             R18 3 1
      131 GETUPVAL                         R19 1
      132 MOVE                             R20 R18
      133 GETTABLEKS                       R23 R2 K21 ["fontStyle"]
      135 GETTABLEKS                       R22 R23 K22 ["Normal"]
      137 GETTABLEKS                       R21 R22 K23 ["TextSize"]
      139 GETTABLEKS                       R24 R2 K21 ["fontStyle"]
      141 GETTABLEKS                       R23 R24 K22 ["Normal"]
      143 GETTABLEKS                       R22 R23 K24 ["Font"]
      145 CALL                             R19 3 1
      146 SUB                              R21 R6 R16
      147 LOADN                            R22 0
      148 JUMPIFNOTLT                      R22 R21 ; [+3]
      150 SUB                              R20 R6 R16
      151 JUMPIF                           R20 ; [+1]
      152 LOADN                            R20 0
      153 GETIMPORT                        R21 K13 [string.format]
      155 LOADK                            R22 K14 ["%.f"]
      156 MOVE                             R23 R20
      157 CALL                             R21 2 1
      158 NOT                              R22 R9
      159 JUMPIF                           R22 ; [+2]
      160 GETTABLEKS                       R22 R1 K41 ["ShowPriceChangeWarning"]
      162 JUMPIFNOT                        R10 ; [+7]
      163 GETTABLEKS                       R25 R2 K31 ["robuxFeeBase"]
      165 GETTABLEKS                       R24 R25 K42 ["transparency"]
      167 GETTABLEKS                       R23 R24 K43 ["enabled"]
      169 JUMPIF                           R23 ; [+6]
      170 GETTABLEKS                       R25 R2 K31 ["robuxFeeBase"]
      172 GETTABLEKS                       R24 R25 K42 ["transparency"]
      174 GETTABLEKS                       R23 R24 K44 ["disabled"]
      176 MOVE                             R24 R22
      177 JUMPIFNOT                        R24 ; [+258]
      178 GETUPVAL                         R25 3
      179 GETTABLEKS                       R24 R25 K45 ["createElement"]
      181 GETUPVAL                         R26 2
      182 JUMPIFNOT                        R26 ; [+2]
      183 GETUPVAL                         R25 4
      184 JUMP                             ; [+1]
      185 LOADK                            R25 K46 ["Frame"]
      186 GETUPVAL                         R27 2
      187 JUMPIFNOT                        R27 ; [+21]
      188 DUPTABLE                         R26 K51 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing"}]
      189 GETIMPORT                        R27 K54 [Enum.AutomaticSize.XY]
      191 SETTABLEKS                       R27 R26 K47 ["AutomaticSize"]
      193 NAMECALL                         R27 R4 K55 ["getNextOrder"]
      195 CALL                             R27 1 1
      196 SETTABLEKS                       R27 R26 K48 ["LayoutOrder"]
      198 GETIMPORT                        R27 K58 [Enum.FillDirection.Horizontal]
      200 SETTABLEKS                       R27 R26 K49 ["Layout"]
      202 GETTABLEKS                       R28 R2 K31 ["robuxFeeBase"]
      204 GETTABLEKS                       R27 R28 K59 ["spacing"]
      206 SETTABLEKS                       R27 R26 K50 ["Spacing"]
      208 JUMP                             ; [+19]
      209 DUPTABLE                         R26 K62 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      210 GETIMPORT                        R27 K64 [UDim2.new]
      212 LOADN                            R28 1
      213 LOADN                            R29 0
      214 LOADN                            R30 0
      215 GETTABLEKS                       R31 R2 K65 ["rowHeight"]
      217 CALL                             R27 4 1
      218 SETTABLEKS                       R27 R26 K60 ["Size"]
      220 LOADN                            R27 1
      221 SETTABLEKS                       R27 R26 K61 ["BackgroundTransparency"]
      223 NAMECALL                         R27 R4 K55 ["getNextOrder"]
      225 CALL                             R27 1 1
      226 SETTABLEKS                       R27 R26 K48 ["LayoutOrder"]
      228 DUPTABLE                         R27 K70 [{"HorizontalLayout", "FeeLabel", "RobuxIcon", "FeeAmount"}]
      229 GETUPVAL                         R29 2
      230 JUMPIFNOT                        R29 ; [+2]
      231 LOADNIL                          R28
      232 JUMP                             ; [+18]
      233 GETUPVAL                         R29 3
      234 GETTABLEKS                       R28 R29 K45 ["createElement"]
      236 LOADK                            R29 K71 ["UIListLayout"]
      237 DUPTABLE                         R30 K74 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
      238 GETIMPORT                        R31 K58 [Enum.FillDirection.Horizontal]
      240 SETTABLEKS                       R31 R30 K56 ["FillDirection"]
      242 GETIMPORT                        R31 K75 [Enum.SortOrder.LayoutOrder]
      244 SETTABLEKS                       R31 R30 K72 ["SortOrder"]
      246 GETIMPORT                        R31 K77 [Enum.VerticalAlignment.Center]
      248 SETTABLEKS                       R31 R30 K73 ["VerticalAlignment"]
      250 CALL                             R28 2 1
      251 SETTABLEKS                       R28 R27 K66 ["HorizontalLayout"]
      253 GETUPVAL                         R29 2
      254 JUMPIFNOT                        R29 ; [+16]
      255 GETUPVAL                         R29 3
      256 GETTABLEKS                       R28 R29 K45 ["createElement"]
      258 GETUPVAL                         R29 5
      259 DUPTABLE                         R30 K79 [{"AutomaticSize", "LayoutOrder", "Text"}]
      260 GETIMPORT                        R31 K54 [Enum.AutomaticSize.XY]
      262 SETTABLEKS                       R31 R30 K47 ["AutomaticSize"]
      264 LOADN                            R31 1
      265 SETTABLEKS                       R31 R30 K48 ["LayoutOrder"]
      267 SETTABLEKS                       R12 R30 K78 ["Text"]
      269 CALL                             R28 2 1
      270 JUMP                             ; [+44]
      271 GETUPVAL                         R29 3
      272 GETTABLEKS                       R28 R29 K45 ["createElement"]
      274 LOADK                            R29 K80 ["TextLabel"]
      275 GETUPVAL                         R32 6
      276 GETTABLEKS                       R31 R32 K81 ["Dictionary"]
      278 GETTABLEKS                       R30 R31 K82 ["join"]
      280 GETTABLEKS                       R32 R2 K21 ["fontStyle"]
      282 GETTABLEKS                       R31 R32 K22 ["Normal"]
      284 DUPTABLE                         R32 K86 [{"Size", "BackgroundTransparency", "TextYAlignment", "TextXAlignment", "TextTransparency", "Text", "LayoutOrder"}]
      285 GETIMPORT                        R33 K64 [UDim2.new]
      287 LOADN                            R34 0
      288 GETTABLEKS                       R35 R13 K87 ["X"]
      290 LOADN                            R36 1
      291 LOADN                            R37 0
      292 CALL                             R33 4 1
      293 SETTABLEKS                       R33 R32 K60 ["Size"]
      295 LOADN                            R33 1
      296 SETTABLEKS                       R33 R32 K61 ["BackgroundTransparency"]
      298 GETIMPORT                        R33 K88 [Enum.TextYAlignment.Center]
      300 SETTABLEKS                       R33 R32 K83 ["TextYAlignment"]
      302 GETIMPORT                        R33 K90 [Enum.TextXAlignment.Left]
      304 SETTABLEKS                       R33 R32 K84 ["TextXAlignment"]
      306 SETTABLEKS                       R23 R32 K85 ["TextTransparency"]
      308 SETTABLEKS                       R12 R32 K78 ["Text"]
      310 LOADN                            R33 1
      311 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      313 CALL                             R30 2 -1
      314 CALL                             R28 -1 1
      315 SETTABLEKS                       R28 R27 K67 ["FeeLabel"]
      317 GETUPVAL                         R29 3
      318 GETTABLEKS                       R28 R29 K45 ["createElement"]
      320 LOADK                            R29 K91 ["ImageLabel"]
      321 DUPTABLE                         R30 K95 [{"Size", "ImageColor3", "Image", "ImageTransparency", "BackgroundTransparency", "LayoutOrder"}]
      322 GETIMPORT                        R31 K64 [UDim2.new]
      324 LOADN                            R32 0
      325 GETTABLEKS                       R35 R2 K31 ["robuxFeeBase"]
      327 GETTABLEKS                       R34 R35 K96 ["icon"]
      329 GETTABLEKS                       R33 R34 K97 ["size"]
      331 LOADN                            R34 0
      332 GETTABLEKS                       R37 R2 K31 ["robuxFeeBase"]
      334 GETTABLEKS                       R36 R37 K96 ["icon"]
      336 GETTABLEKS                       R35 R36 K97 ["size"]
      338 CALL                             R31 4 1
      339 SETTABLEKS                       R31 R30 K60 ["Size"]
      341 GETTABLEKS                       R33 R2 K31 ["robuxFeeBase"]
      343 GETTABLEKS                       R32 R33 K96 ["icon"]
      345 GETTABLEKS                       R31 R32 K98 ["imageColor"]
      347 SETTABLEKS                       R31 R30 K92 ["ImageColor3"]
      349 GETTABLEKS                       R33 R2 K31 ["robuxFeeBase"]
      351 GETTABLEKS                       R32 R33 K96 ["icon"]
      353 GETTABLEKS                       R31 R32 K99 ["image"]
      355 SETTABLEKS                       R31 R30 K93 ["Image"]
      357 SETTABLEKS                       R23 R30 K94 ["ImageTransparency"]
      359 LOADN                            R31 1
      360 SETTABLEKS                       R31 R30 K61 ["BackgroundTransparency"]
      362 LOADN                            R31 2
      363 SETTABLEKS                       R31 R30 K48 ["LayoutOrder"]
      365 CALL                             R28 2 1
      366 SETTABLEKS                       R28 R27 K68 ["RobuxIcon"]
      368 GETUPVAL                         R29 2
      369 JUMPIFNOT                        R29 ; [+16]
      370 GETUPVAL                         R29 3
      371 GETTABLEKS                       R28 R29 K45 ["createElement"]
      373 GETUPVAL                         R29 5
      374 DUPTABLE                         R30 K79 [{"AutomaticSize", "LayoutOrder", "Text"}]
      375 GETIMPORT                        R31 K54 [Enum.AutomaticSize.XY]
      377 SETTABLEKS                       R31 R30 K47 ["AutomaticSize"]
      379 LOADN                            R31 3
      380 SETTABLEKS                       R31 R30 K48 ["LayoutOrder"]
      382 SETTABLEKS                       R17 R30 K78 ["Text"]
      384 CALL                             R28 2 1
      385 JUMP                             ; [+47]
      386 GETUPVAL                         R29 3
      387 GETTABLEKS                       R28 R29 K45 ["createElement"]
      389 LOADK                            R29 K80 ["TextLabel"]
      390 GETUPVAL                         R32 6
      391 GETTABLEKS                       R31 R32 K81 ["Dictionary"]
      393 GETTABLEKS                       R30 R31 K82 ["join"]
      395 GETTABLEKS                       R32 R2 K21 ["fontStyle"]
      397 GETTABLEKS                       R31 R32 K22 ["Normal"]
      399 DUPTABLE                         R32 K101 [{"Size", "BackgroundTransparency", "BorderSizePixel", "TextYAlignment", "TextXAlignment", "TextTransparency", "Text", "LayoutOrder"}]
      400 GETIMPORT                        R33 K64 [UDim2.new]
      402 LOADN                            R34 1
      403 LOADN                            R35 0
      404 LOADN                            R36 0
      405 GETTABLEKS                       R37 R2 K65 ["rowHeight"]
      407 CALL                             R33 4 1
      408 SETTABLEKS                       R33 R32 K60 ["Size"]
      410 LOADN                            R33 1
      411 SETTABLEKS                       R33 R32 K61 ["BackgroundTransparency"]
      413 LOADN                            R33 0
      414 SETTABLEKS                       R33 R32 K100 ["BorderSizePixel"]
      416 GETIMPORT                        R33 K88 [Enum.TextYAlignment.Center]
      418 SETTABLEKS                       R33 R32 K83 ["TextYAlignment"]
      420 GETIMPORT                        R33 K90 [Enum.TextXAlignment.Left]
      422 SETTABLEKS                       R33 R32 K84 ["TextXAlignment"]
      424 SETTABLEKS                       R23 R32 K85 ["TextTransparency"]
      426 SETTABLEKS                       R17 R32 K78 ["Text"]
      428 LOADN                            R33 3
      429 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      431 CALL                             R30 2 -1
      432 CALL                             R28 -1 1
      433 SETTABLEKS                       R28 R27 K69 ["FeeAmount"]
      435 CALL                             R24 3 1
      436 MOVE                             R25 R22
      437 JUMPIFNOT                        R25 ; [+78]
      438 GETUPVAL                         R26 2
      439 JUMPIFNOT                        R26 ; [+24]
      440 GETUPVAL                         R26 3
      441 GETTABLEKS                       R25 R26 K45 ["createElement"]
      443 GETUPVAL                         R26 5
      444 DUPTABLE                         R27 K104 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextWrapped"}]
      445 GETIMPORT                        R28 K54 [Enum.AutomaticSize.XY]
      447 SETTABLEKS                       R28 R27 K47 ["AutomaticSize"]
      449 NAMECALL                         R28 R4 K55 ["getNextOrder"]
      451 CALL                             R28 1 1
      452 SETTABLEKS                       R28 R27 K48 ["LayoutOrder"]
      454 LOADK                            R28 K105 ["Label"]
      455 SETTABLEKS                       R28 R27 K102 ["Style"]
      457 SETTABLEKS                       R14 R27 K78 ["Text"]
      459 LOADB                            R28 1
      460 SETTABLEKS                       R28 R27 K103 ["TextWrapped"]
      462 CALL                             R25 2 1
      463 JUMP                             ; [+52]
      464 GETUPVAL                         R26 3
      465 GETTABLEKS                       R25 R26 K45 ["createElement"]
      467 LOADK                            R26 K80 ["TextLabel"]
      468 GETUPVAL                         R29 6
      469 GETTABLEKS                       R28 R29 K81 ["Dictionary"]
      471 GETTABLEKS                       R27 R28 K82 ["join"]
      473 GETTABLEKS                       R29 R2 K21 ["fontStyle"]
      475 GETTABLEKS                       R28 R29 K28 ["Subtext"]
      477 DUPTABLE                         R29 K106 [{"Size", "BackgroundTransparency", "Text", "TextYAlignment", "TextXAlignment", "TextWrapped", "LayoutOrder"}]
      478 GETIMPORT                        R30 K64 [UDim2.new]
      480 LOADN                            R31 0
      481 GETTABLEKS                       R33 R15 K87 ["X"]
      483 FASTCALL1                        MATH_CEIL R33 ; [+2]
      484 GETIMPORT                        R32 K37 [math.ceil]
      486 CALL                             R32 1 1
      487 LOADN                            R33 0
      488 GETTABLEKS                       R34 R15 K107 ["Y"]
      490 CALL                             R30 4 1
      491 SETTABLEKS                       R30 R29 K60 ["Size"]
      493 LOADN                            R30 1
      494 SETTABLEKS                       R30 R29 K61 ["BackgroundTransparency"]
      496 SETTABLEKS                       R14 R29 K78 ["Text"]
      498 GETIMPORT                        R30 K88 [Enum.TextYAlignment.Center]
      500 SETTABLEKS                       R30 R29 K83 ["TextYAlignment"]
      502 GETIMPORT                        R30 K90 [Enum.TextXAlignment.Left]
      504 SETTABLEKS                       R30 R29 K84 ["TextXAlignment"]
      506 LOADB                            R30 1
      507 SETTABLEKS                       R30 R29 K103 ["TextWrapped"]
      509 NAMECALL                         R30 R4 K55 ["getNextOrder"]
      511 CALL                             R30 1 1
      512 SETTABLEKS                       R30 R29 K48 ["LayoutOrder"]
      514 CALL                             R27 2 -1
      515 CALL                             R25 -1 1
      516 MOVE                             R26 R22
      517 JUMPIFNOT                        R26 ; [+263]
      518 GETUPVAL                         R27 3
      519 GETTABLEKS                       R26 R27 K45 ["createElement"]
      521 GETUPVAL                         R28 2
      522 JUMPIFNOT                        R28 ; [+2]
      523 GETUPVAL                         R27 4
      524 JUMP                             ; [+1]
      525 LOADK                            R27 K46 ["Frame"]
      526 GETUPVAL                         R29 2
      527 JUMPIFNOT                        R29 ; [+21]
      528 DUPTABLE                         R28 K51 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing"}]
      529 GETIMPORT                        R29 K54 [Enum.AutomaticSize.XY]
      531 SETTABLEKS                       R29 R28 K47 ["AutomaticSize"]
      533 NAMECALL                         R29 R4 K55 ["getNextOrder"]
      535 CALL                             R29 1 1
      536 SETTABLEKS                       R29 R28 K48 ["LayoutOrder"]
      538 GETIMPORT                        R29 K58 [Enum.FillDirection.Horizontal]
      540 SETTABLEKS                       R29 R28 K49 ["Layout"]
      542 GETTABLEKS                       R30 R2 K31 ["robuxFeeBase"]
      544 GETTABLEKS                       R29 R30 K59 ["spacing"]
      546 SETTABLEKS                       R29 R28 K50 ["Spacing"]
      548 JUMP                             ; [+19]
      549 DUPTABLE                         R28 K62 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      550 GETIMPORT                        R29 K64 [UDim2.new]
      552 LOADN                            R30 1
      553 LOADN                            R31 0
      554 LOADN                            R32 0
      555 GETTABLEKS                       R33 R2 K65 ["rowHeight"]
      557 CALL                             R29 4 1
      558 SETTABLEKS                       R29 R28 K60 ["Size"]
      560 LOADN                            R29 1
      561 SETTABLEKS                       R29 R28 K61 ["BackgroundTransparency"]
      563 NAMECALL                         R29 R4 K55 ["getNextOrder"]
      565 CALL                             R29 1 1
      566 SETTABLEKS                       R29 R28 K48 ["LayoutOrder"]
      568 DUPTABLE                         R29 K109 [{"HorizontalLayout", "EarnLabel", "RobuxIcon", "EarnAmount"}]
      569 GETUPVAL                         R31 2
      570 JUMPIFNOT                        R31 ; [+2]
      571 LOADNIL                          R30
      572 JUMP                             ; [+18]
      573 GETUPVAL                         R31 3
      574 GETTABLEKS                       R30 R31 K45 ["createElement"]
      576 LOADK                            R31 K71 ["UIListLayout"]
      577 DUPTABLE                         R32 K74 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
      578 GETIMPORT                        R33 K58 [Enum.FillDirection.Horizontal]
      580 SETTABLEKS                       R33 R32 K56 ["FillDirection"]
      582 GETIMPORT                        R33 K75 [Enum.SortOrder.LayoutOrder]
      584 SETTABLEKS                       R33 R32 K72 ["SortOrder"]
      586 GETIMPORT                        R33 K77 [Enum.VerticalAlignment.Center]
      588 SETTABLEKS                       R33 R32 K73 ["VerticalAlignment"]
      590 CALL                             R30 2 1
      591 SETTABLEKS                       R30 R29 K66 ["HorizontalLayout"]
      593 GETUPVAL                         R31 2
      594 JUMPIFNOT                        R31 ; [+16]
      595 GETUPVAL                         R31 3
      596 GETTABLEKS                       R30 R31 K45 ["createElement"]
      598 GETUPVAL                         R31 5
      599 DUPTABLE                         R32 K79 [{"AutomaticSize", "LayoutOrder", "Text"}]
      600 GETIMPORT                        R33 K54 [Enum.AutomaticSize.XY]
      602 SETTABLEKS                       R33 R32 K47 ["AutomaticSize"]
      604 LOADN                            R33 1
      605 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      607 SETTABLEKS                       R18 R32 K78 ["Text"]
      609 CALL                             R30 2 1
      610 JUMP                             ; [+47]
      611 GETUPVAL                         R31 3
      612 GETTABLEKS                       R30 R31 K45 ["createElement"]
      614 LOADK                            R31 K80 ["TextLabel"]
      615 GETUPVAL                         R34 6
      616 GETTABLEKS                       R33 R34 K81 ["Dictionary"]
      618 GETTABLEKS                       R32 R33 K82 ["join"]
      620 GETTABLEKS                       R34 R2 K21 ["fontStyle"]
      622 GETTABLEKS                       R33 R34 K22 ["Normal"]
      624 DUPTABLE                         R34 K101 [{"Size", "BackgroundTransparency", "BorderSizePixel", "TextYAlignment", "TextXAlignment", "TextTransparency", "Text", "LayoutOrder"}]
      625 GETIMPORT                        R35 K64 [UDim2.new]
      627 LOADN                            R36 0
      628 GETTABLEKS                       R37 R19 K87 ["X"]
      630 LOADN                            R38 1
      631 LOADN                            R39 0
      632 CALL                             R35 4 1
      633 SETTABLEKS                       R35 R34 K60 ["Size"]
      635 LOADN                            R35 1
      636 SETTABLEKS                       R35 R34 K61 ["BackgroundTransparency"]
      638 LOADN                            R35 0
      639 SETTABLEKS                       R35 R34 K100 ["BorderSizePixel"]
      641 GETIMPORT                        R35 K88 [Enum.TextYAlignment.Center]
      643 SETTABLEKS                       R35 R34 K83 ["TextYAlignment"]
      645 GETIMPORT                        R35 K90 [Enum.TextXAlignment.Left]
      647 SETTABLEKS                       R35 R34 K84 ["TextXAlignment"]
      649 SETTABLEKS                       R23 R34 K85 ["TextTransparency"]
      651 SETTABLEKS                       R18 R34 K78 ["Text"]
      653 LOADN                            R35 1
      654 SETTABLEKS                       R35 R34 K48 ["LayoutOrder"]
      656 CALL                             R32 2 -1
      657 CALL                             R30 -1 1
      658 SETTABLEKS                       R30 R29 K40 ["EarnLabel"]
      660 GETUPVAL                         R31 3
      661 GETTABLEKS                       R30 R31 K45 ["createElement"]
      663 LOADK                            R31 K91 ["ImageLabel"]
      664 DUPTABLE                         R32 K95 [{"Size", "ImageColor3", "Image", "ImageTransparency", "BackgroundTransparency", "LayoutOrder"}]
      665 GETIMPORT                        R33 K64 [UDim2.new]
      667 LOADN                            R34 0
      668 GETTABLEKS                       R37 R2 K31 ["robuxFeeBase"]
      670 GETTABLEKS                       R36 R37 K96 ["icon"]
      672 GETTABLEKS                       R35 R36 K97 ["size"]
      674 LOADN                            R36 0
      675 GETTABLEKS                       R39 R2 K31 ["robuxFeeBase"]
      677 GETTABLEKS                       R38 R39 K96 ["icon"]
      679 GETTABLEKS                       R37 R38 K97 ["size"]
      681 CALL                             R33 4 1
      682 SETTABLEKS                       R33 R32 K60 ["Size"]
      684 GETTABLEKS                       R35 R2 K31 ["robuxFeeBase"]
      686 GETTABLEKS                       R34 R35 K96 ["icon"]
      688 GETTABLEKS                       R33 R34 K98 ["imageColor"]
      690 SETTABLEKS                       R33 R32 K92 ["ImageColor3"]
      692 GETTABLEKS                       R35 R2 K31 ["robuxFeeBase"]
      694 GETTABLEKS                       R34 R35 K96 ["icon"]
      696 GETTABLEKS                       R33 R34 K99 ["image"]
      698 SETTABLEKS                       R33 R32 K93 ["Image"]
      700 SETTABLEKS                       R23 R32 K94 ["ImageTransparency"]
      702 LOADN                            R33 1
      703 SETTABLEKS                       R33 R32 K61 ["BackgroundTransparency"]
      705 LOADN                            R33 2
      706 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      708 CALL                             R30 2 1
      709 SETTABLEKS                       R30 R29 K68 ["RobuxIcon"]
      711 GETUPVAL                         R31 2
      712 JUMPIFNOT                        R31 ; [+18]
      713 GETUPVAL                         R31 3
      714 GETTABLEKS                       R30 R31 K45 ["createElement"]
      716 GETUPVAL                         R31 5
      717 DUPTABLE                         R32 K110 [{"AutomaticSize", "LayoutOrder", "Text", "TextTransparency"}]
      718 GETIMPORT                        R33 K54 [Enum.AutomaticSize.XY]
      720 SETTABLEKS                       R33 R32 K47 ["AutomaticSize"]
      722 LOADN                            R33 3
      723 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      725 SETTABLEKS                       R21 R32 K78 ["Text"]
      727 SETTABLEKS                       R23 R32 K85 ["TextTransparency"]
      729 CALL                             R30 2 1
      730 JUMP                             ; [+47]
      731 GETUPVAL                         R31 3
      732 GETTABLEKS                       R30 R31 K45 ["createElement"]
      734 LOADK                            R31 K80 ["TextLabel"]
      735 GETUPVAL                         R34 6
      736 GETTABLEKS                       R33 R34 K81 ["Dictionary"]
      738 GETTABLEKS                       R32 R33 K82 ["join"]
      740 GETTABLEKS                       R34 R2 K21 ["fontStyle"]
      742 GETTABLEKS                       R33 R34 K22 ["Normal"]
      744 DUPTABLE                         R34 K101 [{"Size", "BackgroundTransparency", "BorderSizePixel", "TextYAlignment", "TextXAlignment", "TextTransparency", "Text", "LayoutOrder"}]
      745 GETIMPORT                        R35 K64 [UDim2.new]
      747 LOADN                            R36 1
      748 LOADN                            R37 0
      749 LOADN                            R38 0
      750 GETTABLEKS                       R39 R2 K65 ["rowHeight"]
      752 CALL                             R35 4 1
      753 SETTABLEKS                       R35 R34 K60 ["Size"]
      755 LOADN                            R35 1
      756 SETTABLEKS                       R35 R34 K61 ["BackgroundTransparency"]
      758 LOADN                            R35 0
      759 SETTABLEKS                       R35 R34 K100 ["BorderSizePixel"]
      761 GETIMPORT                        R35 K88 [Enum.TextYAlignment.Center]
      763 SETTABLEKS                       R35 R34 K83 ["TextYAlignment"]
      765 GETIMPORT                        R35 K90 [Enum.TextXAlignment.Left]
      767 SETTABLEKS                       R35 R34 K84 ["TextXAlignment"]
      769 SETTABLEKS                       R23 R34 K85 ["TextTransparency"]
      771 SETTABLEKS                       R21 R34 K78 ["Text"]
      773 LOADN                            R35 3
      774 SETTABLEKS                       R35 R34 K48 ["LayoutOrder"]
      776 CALL                             R32 2 -1
      777 CALL                             R30 -1 1
      778 SETTABLEKS                       R30 R29 K108 ["EarnAmount"]
      780 CALL                             R26 3 1
      781 GETUPVAL                         R28 3
      782 GETTABLEKS                       R27 R28 K45 ["createElement"]
      784 GETUPVAL                         R28 4
      785 DUPTABLE                         R29 K112 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment"}]
      786 GETIMPORT                        R30 K54 [Enum.AutomaticSize.XY]
      788 SETTABLEKS                       R30 R29 K47 ["AutomaticSize"]
      790 GETIMPORT                        R30 K114 [Enum.FillDirection.Vertical]
      792 SETTABLEKS                       R30 R29 K49 ["Layout"]
      794 GETUPVAL                         R31 2
      795 JUMPIFNOT                        R31 ; [+5]
      796 GETTABLEKS                       R31 R2 K31 ["robuxFeeBase"]
      798 GETTABLEKS                       R30 R31 K115 ["pricePadding"]
      800 JUMP                             ; [+1]
      801 LOADNIL                          R30
      802 SETTABLEKS                       R30 R29 K50 ["Spacing"]
      804 GETUPVAL                         R31 2
      805 JUMPIFNOT                        R31 ; [+3]
      806 GETIMPORT                        R30 K116 [Enum.HorizontalAlignment.Left]
      808 JUMP                             ; [+1]
      809 LOADNIL                          R30
      810 SETTABLEKS                       R30 R29 K111 ["HorizontalAlignment"]
      812 DUPTABLE                         R30 K121 [{"TextInput", "FeeFrame", "FeeSubText", "EarnFrame"}]
      813 GETUPVAL                         R32 3
      814 GETTABLEKS                       R31 R32 K45 ["createElement"]
      816 GETUPVAL                         R32 7
      817 DUPTABLE                         R33 K128 [{"BottomText", "Disabled", "LayoutOrder", "LeadingComponent", "LeadingComponentProps", "OnTextChanged", "Width", "Text"}]
      818 SETTABLEKS                       R9 R33 K122 ["BottomText"]
      820 NOT                              R34 R10
      821 SETTABLEKS                       R34 R33 K123 ["Disabled"]
      823 LOADN                            R34 0
      824 SETTABLEKS                       R34 R33 K48 ["LayoutOrder"]
      826 GETUPVAL                         R34 8
      827 SETTABLEKS                       R34 R33 K124 ["LeadingComponent"]
      829 DUPTABLE                         R34 K129 [{"ImageColor3", "Image", "Size"}]
      830 GETTABLEKS                       R37 R2 K31 ["robuxFeeBase"]
      832 GETTABLEKS                       R36 R37 K96 ["icon"]
      834 GETTABLEKS                       R35 R36 K98 ["imageColor"]
      836 SETTABLEKS                       R35 R34 K92 ["ImageColor3"]
      838 GETTABLEKS                       R37 R2 K31 ["robuxFeeBase"]
      840 GETTABLEKS                       R36 R37 K96 ["icon"]
      842 GETTABLEKS                       R35 R36 K99 ["image"]
      844 SETTABLEKS                       R35 R34 K93 ["Image"]
      846 GETIMPORT                        R35 K64 [UDim2.new]
      848 LOADN                            R36 0
      849 GETTABLEKS                       R39 R2 K31 ["robuxFeeBase"]
      851 GETTABLEKS                       R38 R39 K96 ["icon"]
      853 GETTABLEKS                       R37 R38 K97 ["size"]
      855 LOADN                            R38 0
      856 GETTABLEKS                       R41 R2 K31 ["robuxFeeBase"]
      858 GETTABLEKS                       R40 R41 K96 ["icon"]
      860 GETTABLEKS                       R39 R40 K97 ["size"]
      862 CALL                             R35 4 1
      863 SETTABLEKS                       R35 R34 K60 ["Size"]
      865 SETTABLEKS                       R34 R33 K125 ["LeadingComponentProps"]
      867 SETTABLEKS                       R11 R33 K126 ["OnTextChanged"]
      869 GETTABLEKS                       R36 R2 K31 ["robuxFeeBase"]
      871 GETTABLEKS                       R35 R36 K130 ["priceField"]
      873 GETTABLEKS                       R34 R35 K33 ["width"]
      875 SETTABLEKS                       R34 R33 K127 ["Width"]
      877 SETTABLEKS                       R8 R33 K78 ["Text"]
      879 CALL                             R31 2 1
      880 SETTABLEKS                       R31 R30 K117 ["TextInput"]
      882 SETTABLEKS                       R24 R30 K118 ["FeeFrame"]
      884 SETTABLEKS                       R25 R30 K119 ["FeeSubText"]
      886 SETTABLEKS                       R26 R30 K120 ["EarnFrame"]
      888 CALL                             R27 3 -1
      889 RETURN                           R27 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Roact"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R7 R0 K9 ["Src"]
       36 GETTABLEKS                       R6 R7 K10 ["Flags"]
       38 GETTABLEKS                       R5 R6 K11 ["getFFlagGameSettingsFixMoreLayoutIssues"]
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
