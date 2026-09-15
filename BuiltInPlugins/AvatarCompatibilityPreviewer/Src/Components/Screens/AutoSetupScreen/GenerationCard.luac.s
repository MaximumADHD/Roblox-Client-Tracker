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
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["completionStart"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["completionEnd"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["progressPercentage"]
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
       51 SUBRK                            R7 K6 [1] R8
       52 DIV                              R5 R6 R7
       53 CALL                             R4 1 0
       54 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["new"]
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
       19 GETTABLEKS                       R6 R0 K3 ["autoSetupState"]
       21 GETTABLEKS                       R6 R6 K4 ["progressState"]
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
       43 GETUPVAL                         R8 4
       44 GETTABLEKS                       R8 R8 K8 ["useState"]
       46 LOADN                            R9 0
       47 CALL                             R8 1 2
       48 GETUPVAL                         R10 4
       49 GETTABLEKS                       R10 R10 K8 ["useState"]
       51 LOADN                            R11 0
       52 CALL                             R10 1 2
       53 GETUPVAL                         R12 4
       54 GETTABLEKS                       R12 R12 K8 ["useState"]
       56 LOADN                            R13 150
       57 CALL                             R12 1 2
       58 MOVE                             R14 R6
       59 JUMPIFNOT                        R14 ; [+2]
       60 GETTABLEKS                       R14 R6 K9 ["estimatedWait"]
       62 GETUPVAL                         R15 4
       63 GETTABLEKS                       R15 R15 K10 ["useEffect"]
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
       79 GETUPVAL                         R15 4
       80 GETTABLEKS                       R15 R15 K11 ["createElement"]
       82 GETUPVAL                         R16 5
       83 NEWTABLE                         R17 16 0
       85 GETIMPORT                        R18 K13 [UDim2.new]
       87 LOADN                            R19 1
       88 LOADN                            R20 -24
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
      106 LOADN                            R22 -12
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
      127 GETUPVAL                         R18 6
      128 GETTABLEKS                       R18 R18 K30 ["darker"]
      130 GETTABLEKS                       R19 R3 K31 ["BackgroundColor"]
      132 GETTABLEKS                       R20 R3 K32 ["BackgroundColorHoverDarkerMultiplier"]
      134 CALL                             R18 2 1
      135 JUMP                             ; [+2]
      136 GETTABLEKS                       R18 R3 K31 ["BackgroundColor"]
      138 SETTABLEKS                       R18 R17 K33 ["BackgroundColor3"]
      140 GETUPVAL                         R18 4
      141 GETTABLEKS                       R18 R18 K34 ["Event"]
      143 GETTABLEKS                       R18 R18 K35 ["MouseEnter"]
      145 GETTABLEKS                       R19 R4 K36 ["enable"]
      147 SETTABLE                         R19 R17 R18
      148 GETUPVAL                         R18 4
      149 GETTABLEKS                       R18 R18 K34 ["Event"]
      151 GETTABLEKS                       R18 R18 K37 ["MouseLeave"]
      153 GETTABLEKS                       R19 R4 K38 ["disable"]
      155 SETTABLE                         R19 R17 R18
      156 GETTABLEKS                       R18 R0 K39 ["cancelDialogOpen"]
      158 GETTABLEKS                       R18 R18 K36 ["enable"]
      160 SETTABLEKS                       R18 R17 K40 ["OnClick"]
      162 LOADN                            R18 2
      163 SETTABLEKS                       R18 R17 K41 ["Spacing"]
      165 GETTABLEKS                       R18 R3 K42 ["InnerPadding"]
      167 SETTABLEKS                       R18 R17 K43 ["Padding"]
      169 DUPTABLE                         R18 K49 [{"TitlePane", "UISizeConstraint", "ProgressBar", "ProgressPane", "UICorner", "UIStroke"}]
      170 GETUPVAL                         R19 4
      171 GETTABLEKS                       R19 R19 K11 ["createElement"]
      173 GETUPVAL                         R20 5
      174 DUPTABLE                         R21 K52 [{["AutomaticSize"], ["LayoutOrder"], ["Layout"], ["Spacing"] = 2}]
      175 GETIMPORT                        R22 K23 [Enum.AutomaticSize.Y]
      177 SETTABLEKS                       R22 R21 K21 ["AutomaticSize"]
      179 NAMECALL                         R22 R2 K53 ["getNextOrder"]
      181 CALL                             R22 1 1
      182 SETTABLEKS                       R22 R21 K50 ["LayoutOrder"]
      184 GETIMPORT                        R22 K55 [Enum.FillDirection.Horizontal]
      186 SETTABLEKS                       R22 R21 K27 ["Layout"]
      188 DUPTABLE                         R22 K58 [{"Title", "PrimaryAction"}]
      189 GETUPVAL                         R23 4
      190 GETTABLEKS                       R23 R23 K11 ["createElement"]
      192 GETUPVAL                         R24 7
      193 DUPTABLE                         R25 K68 [{["Size"], ["AutomaticSize"], ["LayoutOrder"], ["Font"], ["Text"], ["TextColor"], ["TextWrapped"] = False, ["TextSize"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"]}]
      194 GETIMPORT                        R26 K70 [UDim2.fromScale]
      196 LOADN                            R27 0
      197 LOADN                            R28 0
      198 CALL                             R26 2 1
      199 SETTABLEKS                       R26 R25 K14 ["Size"]
      201 GETIMPORT                        R26 K72 [Enum.AutomaticSize.XY]
      203 SETTABLEKS                       R26 R25 K21 ["AutomaticSize"]
      205 NAMECALL                         R26 R2 K53 ["getNextOrder"]
      207 CALL                             R26 1 1
      208 SETTABLEKS                       R26 R25 K50 ["LayoutOrder"]
      210 GETTABLEKS                       R26 R3 K73 ["TitleFont"]
      212 SETTABLEKS                       R26 R25 K59 ["Font"]
      214 LOADK                            R28 K74 ["AvatarScreen"]
      215 LOADK                            R29 K75 ["AutoSetupInProgressTitle"]
      216 NAMECALL                         R26 R1 K7 ["getText"]
      218 CALL                             R26 3 1
      219 SETTABLEKS                       R26 R25 K60 ["Text"]
      221 GETTABLEKS                       R26 R3 K61 ["TextColor"]
      223 SETTABLEKS                       R26 R25 K61 ["TextColor"]
      225 GETTABLEKS                       R26 R3 K64 ["TextSize"]
      227 SETTABLEKS                       R26 R25 K64 ["TextSize"]
      229 GETIMPORT                        R26 K77 [Enum.TextTruncate.AtEnd]
      231 SETTABLEKS                       R26 R25 K65 ["TextTruncate"]
      233 GETIMPORT                        R26 K79 [Enum.TextXAlignment.Left]
      235 SETTABLEKS                       R26 R25 K66 ["TextXAlignment"]
      237 GETIMPORT                        R26 K81 [Enum.TextYAlignment.Top]
      239 SETTABLEKS                       R26 R25 K67 ["TextYAlignment"]
      241 DUPTABLE                         R26 K83 [{"UIFlexItem"}]
      242 GETUPVAL                         R27 4
      243 GETTABLEKS                       R27 R27 K11 ["createElement"]
      245 LOADK                            R28 K82 ["UIFlexItem"]
      246 DUPTABLE                         R29 K85 [{"FlexMode"}]
      247 GETIMPORT                        R30 K88 [Enum.UIFlexMode.Fill]
      249 SETTABLEKS                       R30 R29 K84 ["FlexMode"]
      251 CALL                             R27 2 1
      252 SETTABLEKS                       R27 R26 K82 ["UIFlexItem"]
      254 CALL                             R23 3 1
      255 SETTABLEKS                       R23 R22 K56 ["Title"]
      257 GETUPVAL                         R23 4
      258 GETTABLEKS                       R23 R23 K11 ["createElement"]
      260 GETUPVAL                         R24 7
      261 DUPTABLE                         R25 K91 [{["AutomaticSize"], ["Font"], ["LayoutOrder"], ["RichText"] = True, ["Text"], ["TextColor"]}]
      262 GETIMPORT                        R26 K72 [Enum.AutomaticSize.XY]
      264 SETTABLEKS                       R26 R25 K21 ["AutomaticSize"]
      266 GETTABLEKS                       R26 R3 K92 ["PrimaryActionFont"]
      268 SETTABLEKS                       R26 R25 K59 ["Font"]
      270 NAMECALL                         R26 R2 K53 ["getNextOrder"]
      272 CALL                             R26 1 1
      273 SETTABLEKS                       R26 R25 K50 ["LayoutOrder"]
      275 LOADK                            R26 K93 ["<u>%*</u>"]
      276 LOADK                            R30 K74 ["AvatarScreen"]
      277 LOADK                            R31 K94 ["AutoSetupInProgressActionText"]
      278 NAMECALL                         R28 R1 K7 ["getText"]
      280 CALL                             R28 3 1
      281 NAMECALL                         R26 R26 K95 ["format"]
      283 CALL                             R26 2 1
      284 SETTABLEKS                       R26 R25 K60 ["Text"]
      286 GETTABLEKS                       R26 R3 K61 ["TextColor"]
      288 SETTABLEKS                       R26 R25 K61 ["TextColor"]
      290 DUPTABLE                         R26 K83 [{"UIFlexItem"}]
      291 GETUPVAL                         R27 4
      292 GETTABLEKS                       R27 R27 K11 ["createElement"]
      294 LOADK                            R28 K82 ["UIFlexItem"]
      295 DUPTABLE                         R29 K85 [{"FlexMode"}]
      296 GETIMPORT                        R30 K97 [Enum.UIFlexMode.Shrink]
      298 SETTABLEKS                       R30 R29 K84 ["FlexMode"]
      300 CALL                             R27 2 1
      301 SETTABLEKS                       R27 R26 K82 ["UIFlexItem"]
      303 CALL                             R23 3 1
      304 SETTABLEKS                       R23 R22 K57 ["PrimaryAction"]
      306 CALL                             R19 3 1
      307 SETTABLEKS                       R19 R18 K44 ["TitlePane"]
      309 GETUPVAL                         R19 4
      310 GETTABLEKS                       R19 R19 K11 ["createElement"]
      312 LOADK                            R20 K45 ["UISizeConstraint"]
      313 DUPTABLE                         R21 K99 [{"MaxSize"}]
      314 GETIMPORT                        R22 K16 [Vector2.new]
      316 GETTABLEKS                       R23 R3 K100 ["MaxWidth"]
      318 LOADK                            R24 K101 [∞]
      319 CALL                             R22 2 1
      320 SETTABLEKS                       R22 R21 K98 ["MaxSize"]
      322 CALL                             R19 2 1
      323 SETTABLEKS                       R19 R18 K45 ["UISizeConstraint"]
      325 GETUPVAL                         R19 4
      326 GETTABLEKS                       R19 R19 K11 ["createElement"]
      328 GETUPVAL                         R20 8
      329 DUPTABLE                         R21 K106 [{["LayoutOrder"], ["estimatedTotalTime"], ["startProgress"], ["holdProgress"], ["displayPercentLabel"] = True}]
      330 NAMECALL                         R22 R2 K53 ["getNextOrder"]
      332 CALL                             R22 1 1
      333 SETTABLEKS                       R22 R21 K50 ["LayoutOrder"]
      335 ORK                              R22 R12 K107 [150]
      336 SETTABLEKS                       R22 R21 K102 ["estimatedTotalTime"]
      338 SETTABLEKS                       R8 R21 K103 ["startProgress"]
      340 SETTABLEKS                       R10 R21 K104 ["holdProgress"]
      342 CALL                             R19 2 1
      343 SETTABLEKS                       R19 R18 K6 ["ProgressBar"]
      345 GETUPVAL                         R19 4
      346 GETTABLEKS                       R19 R19 K11 ["createElement"]
      348 GETUPVAL                         R20 5
      349 DUPTABLE                         R21 K52 [{["AutomaticSize"], ["LayoutOrder"], ["Layout"], ["Spacing"] = 2}]
      350 GETIMPORT                        R22 K72 [Enum.AutomaticSize.XY]
      352 SETTABLEKS                       R22 R21 K21 ["AutomaticSize"]
      354 NAMECALL                         R22 R2 K53 ["getNextOrder"]
      356 CALL                             R22 1 1
      357 SETTABLEKS                       R22 R21 K50 ["LayoutOrder"]
      359 GETIMPORT                        R22 K55 [Enum.FillDirection.Horizontal]
      361 SETTABLEKS                       R22 R21 K27 ["Layout"]
      363 DUPTABLE                         R22 K110 [{"CurrentStage", "EstimatedTime"}]
      364 GETTABLEKS                       R24 R0 K3 ["autoSetupState"]
      366 GETTABLEKS                       R24 R24 K4 ["progressState"]
      368 JUMPIFNOT                        R24 ; [+53]
      369 JUMPIFEQKNIL                     R7 ; [+52]
      371 GETUPVAL                         R23 4
      372 GETTABLEKS                       R23 R23 K11 ["createElement"]
      374 GETUPVAL                         R24 7
      375 DUPTABLE                         R25 K111 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Text"], ["TextColor"], ["TextTruncate"], ["TextWrapped"] = False, ["TextXAlignment"]}]
      376 GETIMPORT                        R26 K72 [Enum.AutomaticSize.XY]
      378 SETTABLEKS                       R26 R25 K21 ["AutomaticSize"]
      380 NAMECALL                         R26 R2 K53 ["getNextOrder"]
      382 CALL                             R26 1 1
      383 SETTABLEKS                       R26 R25 K50 ["LayoutOrder"]
      385 GETIMPORT                        R26 K70 [UDim2.fromScale]
      387 GETUPVAL                         R28 9
      388 JUMPIFNOT                        R28 ; [+2]
      389 LOADK                            R27 K17 [0.5]
      390 JUMP                             ; [+1]
      391 LOADN                            R27 1
      392 LOADN                            R28 0
      393 CALL                             R26 2 1
      394 SETTABLEKS                       R26 R25 K14 ["Size"]
      396 SETTABLEKS                       R7 R25 K60 ["Text"]
      398 GETTABLEKS                       R26 R3 K61 ["TextColor"]
      400 SETTABLEKS                       R26 R25 K61 ["TextColor"]
      402 GETIMPORT                        R26 K77 [Enum.TextTruncate.AtEnd]
      404 SETTABLEKS                       R26 R25 K65 ["TextTruncate"]
      406 GETIMPORT                        R26 K79 [Enum.TextXAlignment.Left]
      408 SETTABLEKS                       R26 R25 K66 ["TextXAlignment"]
      410 DUPTABLE                         R26 K83 [{"UIFlexItem"}]
      411 GETUPVAL                         R27 4
      412 GETTABLEKS                       R27 R27 K11 ["createElement"]
      414 LOADK                            R28 K82 ["UIFlexItem"]
      415 NEWTABLE                         R29 0 0
      417 CALL                             R27 2 1
      418 SETTABLEKS                       R27 R26 K82 ["UIFlexItem"]
      420 CALL                             R23 3 1
      421 JUMP                             ; [+1]
      422 LOADNIL                          R23
      423 SETTABLEKS                       R23 R22 K108 ["CurrentStage"]
      425 GETUPVAL                         R23 9
      426 JUMPIFNOT                        R23 ; [+70]
      427 GETUPVAL                         R23 4
      428 GETTABLEKS                       R23 R23 K11 ["createElement"]
      430 GETUPVAL                         R24 7
      431 DUPTABLE                         R25 K112 [{["AutomaticSize"], ["Font"], ["LayoutOrder"], ["RichText"] = True, ["Size"], ["Text"], ["TextTruncate"], ["TextXAlignment"], ["TextColor"]}]
      432 GETIMPORT                        R26 K72 [Enum.AutomaticSize.XY]
      434 SETTABLEKS                       R26 R25 K21 ["AutomaticSize"]
      436 GETTABLEKS                       R26 R3 K92 ["PrimaryActionFont"]
      438 SETTABLEKS                       R26 R25 K59 ["Font"]
      440 NAMECALL                         R26 R2 K53 ["getNextOrder"]
      442 CALL                             R26 1 1
      443 SETTABLEKS                       R26 R25 K50 ["LayoutOrder"]
      445 GETIMPORT                        R26 K70 [UDim2.fromScale]
      447 LOADK                            R27 K17 [0.5]
      448 LOADN                            R28 0
      449 CALL                             R26 2 1
      450 SETTABLEKS                       R26 R25 K14 ["Size"]
      452 LOADK                            R32 K74 ["AvatarScreen"]
      453 LOADK                            R33 K113 ["AutoSetupEstimatedTime"]
      454 NAMECALL                         R30 R1 K7 ["getText"]
      456 CALL                             R30 3 1
      457 MOVE                             R27 R30
      458 LOADK                            R28 K114 ["\t"]
      459 ORK                              R30 R14 K107 [150]
      460 GETIMPORT                        R31 K116 [string.format]
      462 LOADK                            R32 K117 ["%01i:%02i"]
      463 DIVK                             R34 R30 K118 [60]
      464 MODK                             R33 R34 K118 [60]
      465 MODK                             R34 R30 K118 [60]
      466 CALL                             R31 3 1
      467 MOVE                             R29 R31
      468 CONCAT                           R26 R27 R29
      469 SETTABLEKS                       R26 R25 K60 ["Text"]
      471 GETIMPORT                        R26 K77 [Enum.TextTruncate.AtEnd]
      473 SETTABLEKS                       R26 R25 K65 ["TextTruncate"]
      475 GETIMPORT                        R26 K120 [Enum.TextXAlignment.Right]
      477 SETTABLEKS                       R26 R25 K66 ["TextXAlignment"]
      479 GETTABLEKS                       R26 R3 K61 ["TextColor"]
      481 SETTABLEKS                       R26 R25 K61 ["TextColor"]
      483 DUPTABLE                         R26 K83 [{"UIFlexItem"}]
      484 GETUPVAL                         R27 4
      485 GETTABLEKS                       R27 R27 K11 ["createElement"]
      487 LOADK                            R28 K82 ["UIFlexItem"]
      488 DUPTABLE                         R29 K85 [{"FlexMode"}]
      489 GETIMPORT                        R30 K97 [Enum.UIFlexMode.Shrink]
      491 SETTABLEKS                       R30 R29 K84 ["FlexMode"]
      493 CALL                             R27 2 1
      494 SETTABLEKS                       R27 R26 K82 ["UIFlexItem"]
      496 CALL                             R23 3 1
      497 SETTABLEKS                       R23 R22 K109 ["EstimatedTime"]
      499 CALL                             R19 3 1
      500 SETTABLEKS                       R19 R18 K46 ["ProgressPane"]
      502 GETUPVAL                         R19 4
      503 GETTABLEKS                       R19 R19 K11 ["createElement"]
      505 LOADK                            R20 K47 ["UICorner"]
      506 DUPTABLE                         R21 K122 [{"CornerRadius"}]
      507 GETTABLEKS                       R22 R3 K121 ["CornerRadius"]
      509 SETTABLEKS                       R22 R21 K121 ["CornerRadius"]
      511 CALL                             R19 2 1
      512 SETTABLEKS                       R19 R18 K47 ["UICorner"]
      514 GETUPVAL                         R19 4
      515 GETTABLEKS                       R19 R19 K11 ["createElement"]
      517 LOADK                            R20 K48 ["UIStroke"]
      518 DUPTABLE                         R21 K126 [{"ApplyStrokeMode", "Color", "Thickness"}]
      519 GETIMPORT                        R22 K128 [Enum.ApplyStrokeMode.Border]
      521 SETTABLEKS                       R22 R21 K123 ["ApplyStrokeMode"]
      523 GETTABLEKS                       R22 R3 K129 ["StrokeColor"]
      525 SETTABLEKS                       R22 R21 K124 ["Color"]
      527 GETTABLEKS                       R22 R3 K130 ["StrokeThickness"]
      529 SETTABLEKS                       R22 R21 K125 ["Thickness"]
      531 CALL                             R19 2 1
      532 SETTABLEKS                       R19 R18 K48 ["UIStroke"]
      534 CALL                             R15 3 -1
      535 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["Screens"]
       29 GETTABLEKS                       R4 R4 K12 ["AutoSetupScreen"]
       31 GETTABLEKS                       R4 R4 K13 ["FakeLoadingBarSegment"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K9 ["Src"]
       38 GETTABLEKS                       R5 R5 K14 ["Resources"]
       40 GETTABLEKS                       R5 R5 K15 ["Theme"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K9 ["Src"]
       47 GETTABLEKS                       R6 R6 K16 ["Types"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K9 ["Src"]
       54 GETTABLEKS                       R7 R7 K17 ["Hooks"]
       56 GETTABLEKS                       R7 R7 K18 ["useToggleState"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K20 [game]
       61 LOADK                            R9 K21 ["DebugAvatarPreviewerEstimatedTime"]
       62 LOADB                            R10 0
       63 NAMECALL                         R7 R7 K22 ["DefineFastFlag"]
       65 CALL                             R7 3 1
       66 GETTABLEKS                       R8 R1 K23 ["ContextServices"]
       68 GETTABLEKS                       R8 R8 K24 ["Localization"]
       70 GETTABLEKS                       R9 R1 K23 ["ContextServices"]
       72 GETTABLEKS                       R9 R9 K25 ["Stylizer"]
       74 GETTABLEKS                       R10 R1 K26 ["Style"]
       76 GETTABLEKS                       R10 R10 K27 ["Colors"]
       78 GETTABLEKS                       R11 R1 K28 ["UI"]
       80 GETTABLEKS                       R12 R11 K29 ["Pane"]
       82 GETTABLEKS                       R13 R11 K30 ["TextLabel"]
       84 GETTABLEKS                       R14 R1 K31 ["Util"]
       86 GETTABLEKS                       R14 R14 K32 ["LayoutOrderIterator"]
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
