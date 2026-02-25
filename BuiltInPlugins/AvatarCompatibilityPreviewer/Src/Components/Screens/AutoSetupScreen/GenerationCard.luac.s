PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%01i:%02i"]
        3 DIVK                             R4 R0 K4 [60]
        4 MODK                             R3 R4 K4 [60]
        5 MODK                             R4 R0 K4 [60]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+52]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["completionStart"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["completionEnd"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K2 ["progressPercentage"]
       12 GETUPVAL                         R5 1
       13 FASTCALL2                        MATH_MAX R0 R5 ; [+4]
       15 MOVE                             R4 R0
       16 GETIMPORT                        R3 K5 [math.max]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R4 2
       20 GETUPVAL                         R6 3
       21 FASTCALL2                        MATH_MAX R6 R3 ; [+4]
       23 MOVE                             R7 R3
       24 GETIMPORT                        R5 K5 [math.max]
       26 CALL                             R5 2 1
       27 CALL                             R4 1 0
       28 GETUPVAL                         R4 4
       29 GETUPVAL                         R6 1
       30 SUB                              R9 R1 R0
       31 MUL                              R8 R2 R9
       32 ADD                              R7 R0 R8
       33 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       35 GETIMPORT                        R5 K5 [math.max]
       37 CALL                             R5 2 1
       38 CALL                             R4 1 0
       39 GETUPVAL                         R4 5
       40 JUMPIFEQKNIL                     R4 ; [+13]
       42 GETUPVAL                         R4 6
       43 GETUPVAL                         R6 5
       44 GETUPVAL                         R9 3
       45 FASTCALL2                        MATH_MAX R9 R3 ; [+4]
       47 MOVE                             R10 R3
       48 GETIMPORT                        R8 K5 [math.max]
       50 CALL                             R8 2 1
       51 SUBRK                            R7 R6 K8 [NULL]
       52 DIV                              R5 R6 R7
       53 CALL                             R4 1 0
       54 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 LOADK                            R5 K2 ["GenerationCard"]
       10 NAMECALL                         R3 R3 K0 ["use"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 3
       14 LOADB                            R5 0
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 3
       17 LOADB                            R6 0
       18 CALL                             R5 1 1
       19 GETTABLEKS                       R7 R0 K3 ["autoSetupState"]
       21 GETTABLEKS                       R6 R7 K4 ["progressState"]
       23 JUMPIFEQKNIL                     R6 ; [+18]
       25 GETTABLEKS                       R8 R6 K5 ["progressName"]
       27 JUMPIFEQKNIL                     R8 ; [+14]
       29 GETTABLEKS                       R9 R6 K5 ["progressName"]
       31 LENGTH                           R8 R9
       32 LOADN                            R9 0
       33 JUMPIFNOTLT                      R9 R8 ; [+8]
       35 LOADK                            R9 K6 ["ProgressBar"]
       36 GETTABLEKS                       R10 R6 K5 ["progressName"]
       38 NAMECALL                         R7 R1 K7 ["getText"]
       40 CALL                             R7 3 1
       41 JUMP                             ; [+1]
       42 LOADNIL                          R7
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R8 R9 K8 ["useState"]
       46 LOADN                            R9 0
       47 CALL                             R8 1 2
       48 GETUPVAL                         R11 4
       49 GETTABLEKS                       R10 R11 K8 ["useState"]
       51 LOADN                            R11 0
       52 CALL                             R10 1 2
       53 GETUPVAL                         R13 4
       54 GETTABLEKS                       R12 R13 K8 ["useState"]
       56 LOADN                            R13 150
       57 CALL                             R12 1 2
       58 MOVE                             R14 R6
       59 JUMPIFNOT                        R14 ; [+2]
       60 GETTABLEKS                       R14 R6 K9 ["estimatedWait"]
       62 GETUPVAL                         R16 4
       63 GETTABLEKS                       R15 R16 K10 ["useEffect"]
       65 NEWCLOSURE                       R16 P0
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R14
       72 CAPTURE                          VAL R13
       73 NEWTABLE                         R17 0 1
       75 MOVE                             R18 R6
       76 SETLIST                          R17 R18 1 [1]
       78 CALL                             R15 2 0
       79 GETUPVAL                         R16 4
       80 GETTABLEKS                       R15 R16 K11 ["createElement"]
       82 GETUPVAL                         R16 5
       83 NEWTABLE                         R17 16 0
       85 GETIMPORT                        R18 K13 [UDim2.new]
       87 LOADN                            R19 1
       88 LOADN                            R20 232
       89 LOADN                            R21 0
       90 LOADN                            R22 0
       91 CALL                             R18 4 1
       92 SETTABLEKS                       R18 R17 K14 ["Size"]
       94 GETIMPORT                        R18 K16 [Vector2.new]
       96 LOADK                            R19 K17 [0.5]
       97 LOADN                            R20 1
       98 CALL                             R18 2 1
       99 SETTABLEKS                       R18 R17 K18 ["AnchorPoint"]
      101 GETIMPORT                        R18 K13 [UDim2.new]
      103 LOADK                            R19 K17 [0.5]
      104 LOADN                            R20 0
      105 LOADN                            R21 1
      106 LOADN                            R22 244
      107 CALL                             R18 4 1
      108 SETTABLEKS                       R18 R17 K19 ["Position"]
      110 GETIMPORT                        R18 K23 [Enum.AutomaticSize.Y]
      112 SETTABLEKS                       R18 R17 K21 ["AutomaticSize"]
      114 GETIMPORT                        R18 K26 [Enum.FillDirection.Vertical]
      116 SETTABLEKS                       R18 R17 K27 ["Layout"]
      118 LOADN                            R18 0
      119 SETTABLEKS                       R18 R17 K28 ["BackgroundTransparency"]
      121 GETTABLEKS                       R19 R4 K29 ["enabled"]
      123 JUMPIFNOT                        R19 ; [+12]
      124 GETTABLEKS                       R19 R5 K29 ["enabled"]
      126 JUMPIF                           R19 ; [+9]
      127 GETUPVAL                         R19 6
      128 GETTABLEKS                       R18 R19 K30 ["darker"]
      130 GETTABLEKS                       R19 R3 K31 ["BackgroundColor"]
      132 GETTABLEKS                       R20 R3 K32 ["BackgroundColorHoverDarkerMultiplier"]
      134 CALL                             R18 2 1
      135 JUMP                             ; [+2]
      136 GETTABLEKS                       R18 R3 K31 ["BackgroundColor"]
      138 SETTABLEKS                       R18 R17 K33 ["BackgroundColor3"]
      140 GETUPVAL                         R20 4
      141 GETTABLEKS                       R19 R20 K34 ["Event"]
      143 GETTABLEKS                       R18 R19 K35 ["MouseEnter"]
      145 GETTABLEKS                       R19 R4 K36 ["enable"]
      147 SETTABLE                         R19 R17 R18
      148 GETUPVAL                         R20 4
      149 GETTABLEKS                       R19 R20 K34 ["Event"]
      151 GETTABLEKS                       R18 R19 K37 ["MouseLeave"]
      153 GETTABLEKS                       R19 R4 K38 ["disable"]
      155 SETTABLE                         R19 R17 R18
      156 GETTABLEKS                       R19 R0 K39 ["cancelDialogOpen"]
      158 GETTABLEKS                       R18 R19 K36 ["enable"]
      160 SETTABLEKS                       R18 R17 K40 ["OnClick"]
      162 LOADN                            R18 2
      163 SETTABLEKS                       R18 R17 K41 ["Spacing"]
      165 GETTABLEKS                       R18 R3 K42 ["InnerPadding"]
      167 SETTABLEKS                       R18 R17 K43 ["Padding"]
      169 DUPTABLE                         R18 K49 [{"TitlePane", "UISizeConstraint", "ProgressBar", "ProgressPane", "UICorner", "UIStroke"}]
      170 GETUPVAL                         R20 4
      171 GETTABLEKS                       R19 R20 K11 ["createElement"]
      173 GETUPVAL                         R20 5
      174 DUPTABLE                         R21 K51 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing"}]
      175 GETIMPORT                        R22 K23 [Enum.AutomaticSize.Y]
      177 SETTABLEKS                       R22 R21 K21 ["AutomaticSize"]
      179 NAMECALL                         R22 R2 K52 ["getNextOrder"]
      181 CALL                             R22 1 1
      182 SETTABLEKS                       R22 R21 K50 ["LayoutOrder"]
      184 GETIMPORT                        R22 K54 [Enum.FillDirection.Horizontal]
      186 SETTABLEKS                       R22 R21 K27 ["Layout"]
      188 LOADN                            R22 2
      189 SETTABLEKS                       R22 R21 K41 ["Spacing"]
      191 DUPTABLE                         R22 K57 [{"Title", "PrimaryAction"}]
      192 GETUPVAL                         R24 4
      193 GETTABLEKS                       R23 R24 K11 ["createElement"]
      195 GETUPVAL                         R24 7
      196 DUPTABLE                         R25 K66 [{"Size", "AutomaticSize", "LayoutOrder", "Font", "Text", "TextColor", "TextWrapped", "TextSize", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
      197 GETIMPORT                        R26 K68 [UDim2.fromScale]
      199 LOADN                            R27 0
      200 LOADN                            R28 0
      201 CALL                             R26 2 1
      202 SETTABLEKS                       R26 R25 K14 ["Size"]
      204 GETIMPORT                        R26 K70 [Enum.AutomaticSize.XY]
      206 SETTABLEKS                       R26 R25 K21 ["AutomaticSize"]
      208 NAMECALL                         R26 R2 K52 ["getNextOrder"]
      210 CALL                             R26 1 1
      211 SETTABLEKS                       R26 R25 K50 ["LayoutOrder"]
      213 GETTABLEKS                       R26 R3 K71 ["TitleFont"]
      215 SETTABLEKS                       R26 R25 K58 ["Font"]
      217 LOADK                            R28 K72 ["AvatarScreen"]
      218 LOADK                            R29 K73 ["AutoSetupInProgressTitle"]
      219 NAMECALL                         R26 R1 K7 ["getText"]
      221 CALL                             R26 3 1
      222 SETTABLEKS                       R26 R25 K59 ["Text"]
      224 GETTABLEKS                       R26 R3 K60 ["TextColor"]
      226 SETTABLEKS                       R26 R25 K60 ["TextColor"]
      228 LOADB                            R26 0
      229 SETTABLEKS                       R26 R25 K61 ["TextWrapped"]
      231 GETTABLEKS                       R26 R3 K62 ["TextSize"]
      233 SETTABLEKS                       R26 R25 K62 ["TextSize"]
      235 GETIMPORT                        R26 K75 [Enum.TextTruncate.AtEnd]
      237 SETTABLEKS                       R26 R25 K63 ["TextTruncate"]
      239 GETIMPORT                        R26 K77 [Enum.TextXAlignment.Left]
      241 SETTABLEKS                       R26 R25 K64 ["TextXAlignment"]
      243 GETIMPORT                        R26 K79 [Enum.TextYAlignment.Top]
      245 SETTABLEKS                       R26 R25 K65 ["TextYAlignment"]
      247 DUPTABLE                         R26 K81 [{"UIFlexItem"}]
      248 GETUPVAL                         R28 4
      249 GETTABLEKS                       R27 R28 K11 ["createElement"]
      251 LOADK                            R28 K80 ["UIFlexItem"]
      252 DUPTABLE                         R29 K83 [{"FlexMode"}]
      253 GETIMPORT                        R30 K86 [Enum.UIFlexMode.Fill]
      255 SETTABLEKS                       R30 R29 K82 ["FlexMode"]
      257 CALL                             R27 2 1
      258 SETTABLEKS                       R27 R26 K80 ["UIFlexItem"]
      260 CALL                             R23 3 1
      261 SETTABLEKS                       R23 R22 K55 ["Title"]
      263 GETUPVAL                         R24 4
      264 GETTABLEKS                       R23 R24 K11 ["createElement"]
      266 GETUPVAL                         R24 7
      267 DUPTABLE                         R25 K88 [{"AutomaticSize", "Font", "LayoutOrder", "RichText", "Text", "TextColor"}]
      268 GETIMPORT                        R26 K70 [Enum.AutomaticSize.XY]
      270 SETTABLEKS                       R26 R25 K21 ["AutomaticSize"]
      272 GETTABLEKS                       R26 R3 K89 ["PrimaryActionFont"]
      274 SETTABLEKS                       R26 R25 K58 ["Font"]
      276 NAMECALL                         R26 R2 K52 ["getNextOrder"]
      278 CALL                             R26 1 1
      279 SETTABLEKS                       R26 R25 K50 ["LayoutOrder"]
      281 LOADB                            R26 1
      282 SETTABLEKS                       R26 R25 K87 ["RichText"]
      284 LOADK                            R27 K90 ["<u>%*</u>"]
      285 LOADK                            R31 K72 ["AvatarScreen"]
      286 LOADK                            R32 K91 ["AutoSetupInProgressActionText"]
      287 NAMECALL                         R29 R1 K7 ["getText"]
      289 CALL                             R29 3 1
      290 NAMECALL                         R27 R27 K92 ["format"]
      292 CALL                             R27 2 1
      293 MOVE                             R26 R27
      294 SETTABLEKS                       R26 R25 K59 ["Text"]
      296 GETTABLEKS                       R26 R3 K60 ["TextColor"]
      298 SETTABLEKS                       R26 R25 K60 ["TextColor"]
      300 DUPTABLE                         R26 K81 [{"UIFlexItem"}]
      301 GETUPVAL                         R28 4
      302 GETTABLEKS                       R27 R28 K11 ["createElement"]
      304 LOADK                            R28 K80 ["UIFlexItem"]
      305 DUPTABLE                         R29 K83 [{"FlexMode"}]
      306 GETIMPORT                        R30 K94 [Enum.UIFlexMode.Shrink]
      308 SETTABLEKS                       R30 R29 K82 ["FlexMode"]
      310 CALL                             R27 2 1
      311 SETTABLEKS                       R27 R26 K80 ["UIFlexItem"]
      313 CALL                             R23 3 1
      314 SETTABLEKS                       R23 R22 K56 ["PrimaryAction"]
      316 CALL                             R19 3 1
      317 SETTABLEKS                       R19 R18 K44 ["TitlePane"]
      319 GETUPVAL                         R20 4
      320 GETTABLEKS                       R19 R20 K11 ["createElement"]
      322 LOADK                            R20 K45 ["UISizeConstraint"]
      323 DUPTABLE                         R21 K96 [{"MaxSize"}]
      324 GETIMPORT                        R22 K16 [Vector2.new]
      326 GETTABLEKS                       R23 R3 K97 ["MaxWidth"]
      328 LOADK                            R24 K98 [∞]
      329 CALL                             R22 2 1
      330 SETTABLEKS                       R22 R21 K95 ["MaxSize"]
      332 CALL                             R19 2 1
      333 SETTABLEKS                       R19 R18 K45 ["UISizeConstraint"]
      335 GETUPVAL                         R20 4
      336 GETTABLEKS                       R19 R20 K11 ["createElement"]
      338 GETUPVAL                         R20 8
      339 DUPTABLE                         R21 K103 [{"LayoutOrder", "estimatedTotalTime", "startProgress", "holdProgress", "displayPercentLabel"}]
      340 NAMECALL                         R22 R2 K52 ["getNextOrder"]
      342 CALL                             R22 1 1
      343 SETTABLEKS                       R22 R21 K50 ["LayoutOrder"]
      345 ORK                              R22 R12 K104 [150]
      346 SETTABLEKS                       R22 R21 K99 ["estimatedTotalTime"]
      348 SETTABLEKS                       R8 R21 K100 ["startProgress"]
      350 SETTABLEKS                       R10 R21 K101 ["holdProgress"]
      352 LOADB                            R22 1
      353 SETTABLEKS                       R22 R21 K102 ["displayPercentLabel"]
      355 CALL                             R19 2 1
      356 SETTABLEKS                       R19 R18 K6 ["ProgressBar"]
      358 GETUPVAL                         R20 4
      359 GETTABLEKS                       R19 R20 K11 ["createElement"]
      361 GETUPVAL                         R20 5
      362 DUPTABLE                         R21 K51 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing"}]
      363 GETIMPORT                        R22 K70 [Enum.AutomaticSize.XY]
      365 SETTABLEKS                       R22 R21 K21 ["AutomaticSize"]
      367 NAMECALL                         R22 R2 K52 ["getNextOrder"]
      369 CALL                             R22 1 1
      370 SETTABLEKS                       R22 R21 K50 ["LayoutOrder"]
      372 GETIMPORT                        R22 K54 [Enum.FillDirection.Horizontal]
      374 SETTABLEKS                       R22 R21 K27 ["Layout"]
      376 LOADN                            R22 2
      377 SETTABLEKS                       R22 R21 K41 ["Spacing"]
      379 DUPTABLE                         R22 K107 [{"CurrentStage", "EstimatedTime"}]
      380 GETTABLEKS                       R25 R0 K3 ["autoSetupState"]
      382 GETTABLEKS                       R24 R25 K4 ["progressState"]
      384 JUMPIFNOT                        R24 ; [+56]
      385 JUMPIFEQKNIL                     R7 ; [+55]
      387 GETUPVAL                         R24 4
      388 GETTABLEKS                       R23 R24 K11 ["createElement"]
      390 GETUPVAL                         R24 7
      391 DUPTABLE                         R25 K108 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextTruncate", "TextWrapped", "TextXAlignment"}]
      392 GETIMPORT                        R26 K70 [Enum.AutomaticSize.XY]
      394 SETTABLEKS                       R26 R25 K21 ["AutomaticSize"]
      396 NAMECALL                         R26 R2 K52 ["getNextOrder"]
      398 CALL                             R26 1 1
      399 SETTABLEKS                       R26 R25 K50 ["LayoutOrder"]
      401 GETIMPORT                        R26 K68 [UDim2.fromScale]
      403 GETUPVAL                         R28 9
      404 JUMPIFNOT                        R28 ; [+2]
      405 LOADK                            R27 K17 [0.5]
      406 JUMP                             ; [+1]
      407 LOADN                            R27 1
      408 LOADN                            R28 0
      409 CALL                             R26 2 1
      410 SETTABLEKS                       R26 R25 K14 ["Size"]
      412 SETTABLEKS                       R7 R25 K59 ["Text"]
      414 GETTABLEKS                       R26 R3 K60 ["TextColor"]
      416 SETTABLEKS                       R26 R25 K60 ["TextColor"]
      418 GETIMPORT                        R26 K75 [Enum.TextTruncate.AtEnd]
      420 SETTABLEKS                       R26 R25 K63 ["TextTruncate"]
      422 LOADB                            R26 0
      423 SETTABLEKS                       R26 R25 K61 ["TextWrapped"]
      425 GETIMPORT                        R26 K77 [Enum.TextXAlignment.Left]
      427 SETTABLEKS                       R26 R25 K64 ["TextXAlignment"]
      429 DUPTABLE                         R26 K81 [{"UIFlexItem"}]
      430 GETUPVAL                         R28 4
      431 GETTABLEKS                       R27 R28 K11 ["createElement"]
      433 LOADK                            R28 K80 ["UIFlexItem"]
      434 NEWTABLE                         R29 0 0
      436 CALL                             R27 2 1
      437 SETTABLEKS                       R27 R26 K80 ["UIFlexItem"]
      439 CALL                             R23 3 1
      440 JUMP                             ; [+1]
      441 LOADNIL                          R23
      442 SETTABLEKS                       R23 R22 K105 ["CurrentStage"]
      444 GETUPVAL                         R23 9
      445 JUMPIFNOT                        R23 ; [+73]
      446 GETUPVAL                         R24 4
      447 GETTABLEKS                       R23 R24 K11 ["createElement"]
      449 GETUPVAL                         R24 7
      450 DUPTABLE                         R25 K109 [{"AutomaticSize", "Font", "LayoutOrder", "RichText", "Size", "Text", "TextTruncate", "TextXAlignment", "TextColor"}]
      451 GETIMPORT                        R26 K70 [Enum.AutomaticSize.XY]
      453 SETTABLEKS                       R26 R25 K21 ["AutomaticSize"]
      455 GETTABLEKS                       R26 R3 K89 ["PrimaryActionFont"]
      457 SETTABLEKS                       R26 R25 K58 ["Font"]
      459 NAMECALL                         R26 R2 K52 ["getNextOrder"]
      461 CALL                             R26 1 1
      462 SETTABLEKS                       R26 R25 K50 ["LayoutOrder"]
      464 LOADB                            R26 1
      465 SETTABLEKS                       R26 R25 K87 ["RichText"]
      467 GETIMPORT                        R26 K68 [UDim2.fromScale]
      469 LOADK                            R27 K17 [0.5]
      470 LOADN                            R28 0
      471 CALL                             R26 2 1
      472 SETTABLEKS                       R26 R25 K14 ["Size"]
      474 LOADK                            R32 K72 ["AvatarScreen"]
      475 LOADK                            R33 K110 ["AutoSetupEstimatedTime"]
      476 NAMECALL                         R30 R1 K7 ["getText"]
      478 CALL                             R30 3 1
      479 MOVE                             R27 R30
      480 LOADK                            R28 K111 ["\t"]
      481 ORK                              R30 R14 K104 [150]
      482 GETIMPORT                        R31 K113 [string.format]
      484 LOADK                            R32 K114 ["%01i:%02i"]
      485 DIVK                             R34 R30 K115 [60]
      486 MODK                             R33 R34 K115 [60]
      487 MODK                             R34 R30 K115 [60]
      488 CALL                             R31 3 1
      489 MOVE                             R29 R31
      490 CONCAT                           R26 R27 R29
      491 SETTABLEKS                       R26 R25 K59 ["Text"]
      493 GETIMPORT                        R26 K75 [Enum.TextTruncate.AtEnd]
      495 SETTABLEKS                       R26 R25 K63 ["TextTruncate"]
      497 GETIMPORT                        R26 K117 [Enum.TextXAlignment.Right]
      499 SETTABLEKS                       R26 R25 K64 ["TextXAlignment"]
      501 GETTABLEKS                       R26 R3 K60 ["TextColor"]
      503 SETTABLEKS                       R26 R25 K60 ["TextColor"]
      505 DUPTABLE                         R26 K81 [{"UIFlexItem"}]
      506 GETUPVAL                         R28 4
      507 GETTABLEKS                       R27 R28 K11 ["createElement"]
      509 LOADK                            R28 K80 ["UIFlexItem"]
      510 DUPTABLE                         R29 K83 [{"FlexMode"}]
      511 GETIMPORT                        R30 K94 [Enum.UIFlexMode.Shrink]
      513 SETTABLEKS                       R30 R29 K82 ["FlexMode"]
      515 CALL                             R27 2 1
      516 SETTABLEKS                       R27 R26 K80 ["UIFlexItem"]
      518 CALL                             R23 3 1
      519 SETTABLEKS                       R23 R22 K106 ["EstimatedTime"]
      521 CALL                             R19 3 1
      522 SETTABLEKS                       R19 R18 K46 ["ProgressPane"]
      524 GETUPVAL                         R20 4
      525 GETTABLEKS                       R19 R20 K11 ["createElement"]
      527 LOADK                            R20 K47 ["UICorner"]
      528 DUPTABLE                         R21 K119 [{"CornerRadius"}]
      529 GETTABLEKS                       R22 R3 K118 ["CornerRadius"]
      531 SETTABLEKS                       R22 R21 K118 ["CornerRadius"]
      533 CALL                             R19 2 1
      534 SETTABLEKS                       R19 R18 K47 ["UICorner"]
      536 GETUPVAL                         R20 4
      537 GETTABLEKS                       R19 R20 K11 ["createElement"]
      539 LOADK                            R20 K48 ["UIStroke"]
      540 DUPTABLE                         R21 K123 [{"ApplyStrokeMode", "Color", "Thickness"}]
      541 GETIMPORT                        R22 K125 [Enum.ApplyStrokeMode.Border]
      543 SETTABLEKS                       R22 R21 K120 ["ApplyStrokeMode"]
      545 GETTABLEKS                       R22 R3 K126 ["StrokeColor"]
      547 SETTABLEKS                       R22 R21 K121 ["Color"]
      549 GETTABLEKS                       R22 R3 K127 ["StrokeThickness"]
      551 SETTABLEKS                       R22 R21 K122 ["Thickness"]
      553 CALL                             R19 2 1
      554 SETTABLEKS                       R19 R18 K48 ["UIStroke"]
      556 CALL                             R15 3 -1
      557 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R8 R0 K9 ["Src"]
       25 GETTABLEKS                       R7 R8 K10 ["Components"]
       27 GETTABLEKS                       R6 R7 K11 ["Screens"]
       29 GETTABLEKS                       R5 R6 K12 ["AutoSetupScreen"]
       31 GETTABLEKS                       R4 R5 K13 ["FakeLoadingBarSegment"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K9 ["Src"]
       38 GETTABLEKS                       R6 R7 K14 ["Resources"]
       40 GETTABLEKS                       R5 R6 K15 ["Theme"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R7 R0 K9 ["Src"]
       47 GETTABLEKS                       R6 R7 K16 ["Types"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K9 ["Src"]
       54 GETTABLEKS                       R8 R9 K17 ["Hooks"]
       56 GETTABLEKS                       R7 R8 K18 ["useToggleState"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K20 [game]
       61 LOADK                            R9 K21 ["DebugAvatarPreviewerEstimatedTime"]
       62 LOADB                            R10 0
       63 NAMECALL                         R7 R7 K22 ["DefineFastFlag"]
       65 CALL                             R7 3 1
       66 GETTABLEKS                       R9 R1 K23 ["ContextServices"]
       68 GETTABLEKS                       R8 R9 K24 ["Localization"]
       70 GETTABLEKS                       R10 R1 K23 ["ContextServices"]
       72 GETTABLEKS                       R9 R10 K25 ["Stylizer"]
       74 GETTABLEKS                       R11 R1 K26 ["Style"]
       76 GETTABLEKS                       R10 R11 K27 ["Colors"]
       78 GETTABLEKS                       R11 R1 K28 ["UI"]
       80 GETTABLEKS                       R12 R11 K29 ["Pane"]
       82 GETTABLEKS                       R13 R11 K30 ["TextLabel"]
       84 GETTABLEKS                       R15 R1 K31 ["Util"]
       86 GETTABLEKS                       R14 R15 K32 ["LayoutOrderIterator"]
       88 DUPCLOSURE                       R15 K33 [PROTO_0]
       89 DUPCLOSURE                       R16 K34 [PROTO_2]
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R7
      100 RETURN                           R16 1
