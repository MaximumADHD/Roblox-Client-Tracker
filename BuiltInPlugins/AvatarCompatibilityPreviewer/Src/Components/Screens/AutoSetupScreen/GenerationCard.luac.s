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
      275 LOADK                            R27 K93 ["<u>%*</u>"]
      276 LOADK                            R31 K74 ["AvatarScreen"]
      277 LOADK                            R32 K94 ["AutoSetupInProgressActionText"]
      278 NAMECALL                         R29 R1 K7 ["getText"]
      280 CALL                             R29 3 1
      281 NAMECALL                         R27 R27 K95 ["format"]
      283 CALL                             R27 2 1
      284 MOVE                             R26 R27
      285 SETTABLEKS                       R26 R25 K60 ["Text"]
      287 GETTABLEKS                       R26 R3 K61 ["TextColor"]
      289 SETTABLEKS                       R26 R25 K61 ["TextColor"]
      291 DUPTABLE                         R26 K83 [{"UIFlexItem"}]
      292 GETUPVAL                         R27 4
      293 GETTABLEKS                       R27 R27 K11 ["createElement"]
      295 LOADK                            R28 K82 ["UIFlexItem"]
      296 DUPTABLE                         R29 K85 [{"FlexMode"}]
      297 GETIMPORT                        R30 K97 [Enum.UIFlexMode.Shrink]
      299 SETTABLEKS                       R30 R29 K84 ["FlexMode"]
      301 CALL                             R27 2 1
      302 SETTABLEKS                       R27 R26 K82 ["UIFlexItem"]
      304 CALL                             R23 3 1
      305 SETTABLEKS                       R23 R22 K57 ["PrimaryAction"]
      307 CALL                             R19 3 1
      308 SETTABLEKS                       R19 R18 K44 ["TitlePane"]
      310 GETUPVAL                         R19 4
      311 GETTABLEKS                       R19 R19 K11 ["createElement"]
      313 LOADK                            R20 K45 ["UISizeConstraint"]
      314 DUPTABLE                         R21 K99 [{"MaxSize"}]
      315 GETIMPORT                        R22 K16 [Vector2.new]
      317 GETTABLEKS                       R23 R3 K100 ["MaxWidth"]
      319 LOADK                            R24 K101 [∞]
      320 CALL                             R22 2 1
      321 SETTABLEKS                       R22 R21 K98 ["MaxSize"]
      323 CALL                             R19 2 1
      324 SETTABLEKS                       R19 R18 K45 ["UISizeConstraint"]
      326 GETUPVAL                         R19 4
      327 GETTABLEKS                       R19 R19 K11 ["createElement"]
      329 GETUPVAL                         R20 8
      330 DUPTABLE                         R21 K106 [{["LayoutOrder"], ["estimatedTotalTime"], ["startProgress"], ["holdProgress"], ["displayPercentLabel"] = True}]
      331 NAMECALL                         R22 R2 K53 ["getNextOrder"]
      333 CALL                             R22 1 1
      334 SETTABLEKS                       R22 R21 K50 ["LayoutOrder"]
      336 ORK                              R22 R12 K107 [150]
      337 SETTABLEKS                       R22 R21 K102 ["estimatedTotalTime"]
      339 SETTABLEKS                       R8 R21 K103 ["startProgress"]
      341 SETTABLEKS                       R10 R21 K104 ["holdProgress"]
      343 CALL                             R19 2 1
      344 SETTABLEKS                       R19 R18 K6 ["ProgressBar"]
      346 GETUPVAL                         R19 4
      347 GETTABLEKS                       R19 R19 K11 ["createElement"]
      349 GETUPVAL                         R20 5
      350 DUPTABLE                         R21 K52 [{["AutomaticSize"], ["LayoutOrder"], ["Layout"], ["Spacing"] = 2}]
      351 GETIMPORT                        R22 K72 [Enum.AutomaticSize.XY]
      353 SETTABLEKS                       R22 R21 K21 ["AutomaticSize"]
      355 NAMECALL                         R22 R2 K53 ["getNextOrder"]
      357 CALL                             R22 1 1
      358 SETTABLEKS                       R22 R21 K50 ["LayoutOrder"]
      360 GETIMPORT                        R22 K55 [Enum.FillDirection.Horizontal]
      362 SETTABLEKS                       R22 R21 K27 ["Layout"]
      364 DUPTABLE                         R22 K110 [{"CurrentStage", "EstimatedTime"}]
      365 GETTABLEKS                       R24 R0 K3 ["autoSetupState"]
      367 GETTABLEKS                       R24 R24 K4 ["progressState"]
      369 JUMPIFNOT                        R24 ; [+53]
      370 JUMPIFEQKNIL                     R7 ; [+52]
      372 GETUPVAL                         R23 4
      373 GETTABLEKS                       R23 R23 K11 ["createElement"]
      375 GETUPVAL                         R24 7
      376 DUPTABLE                         R25 K111 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Text"], ["TextColor"], ["TextTruncate"], ["TextWrapped"] = False, ["TextXAlignment"]}]
      377 GETIMPORT                        R26 K72 [Enum.AutomaticSize.XY]
      379 SETTABLEKS                       R26 R25 K21 ["AutomaticSize"]
      381 NAMECALL                         R26 R2 K53 ["getNextOrder"]
      383 CALL                             R26 1 1
      384 SETTABLEKS                       R26 R25 K50 ["LayoutOrder"]
      386 GETIMPORT                        R26 K70 [UDim2.fromScale]
      388 GETUPVAL                         R28 9
      389 JUMPIFNOT                        R28 ; [+2]
      390 LOADK                            R27 K17 [0.5]
      391 JUMP                             ; [+1]
      392 LOADN                            R27 1
      393 LOADN                            R28 0
      394 CALL                             R26 2 1
      395 SETTABLEKS                       R26 R25 K14 ["Size"]
      397 SETTABLEKS                       R7 R25 K60 ["Text"]
      399 GETTABLEKS                       R26 R3 K61 ["TextColor"]
      401 SETTABLEKS                       R26 R25 K61 ["TextColor"]
      403 GETIMPORT                        R26 K77 [Enum.TextTruncate.AtEnd]
      405 SETTABLEKS                       R26 R25 K65 ["TextTruncate"]
      407 GETIMPORT                        R26 K79 [Enum.TextXAlignment.Left]
      409 SETTABLEKS                       R26 R25 K66 ["TextXAlignment"]
      411 DUPTABLE                         R26 K83 [{"UIFlexItem"}]
      412 GETUPVAL                         R27 4
      413 GETTABLEKS                       R27 R27 K11 ["createElement"]
      415 LOADK                            R28 K82 ["UIFlexItem"]
      416 NEWTABLE                         R29 0 0
      418 CALL                             R27 2 1
      419 SETTABLEKS                       R27 R26 K82 ["UIFlexItem"]
      421 CALL                             R23 3 1
      422 JUMP                             ; [+1]
      423 LOADNIL                          R23
      424 SETTABLEKS                       R23 R22 K108 ["CurrentStage"]
      426 GETUPVAL                         R23 9
      427 JUMPIFNOT                        R23 ; [+70]
      428 GETUPVAL                         R23 4
      429 GETTABLEKS                       R23 R23 K11 ["createElement"]
      431 GETUPVAL                         R24 7
      432 DUPTABLE                         R25 K112 [{["AutomaticSize"], ["Font"], ["LayoutOrder"], ["RichText"] = True, ["Size"], ["Text"], ["TextTruncate"], ["TextXAlignment"], ["TextColor"]}]
      433 GETIMPORT                        R26 K72 [Enum.AutomaticSize.XY]
      435 SETTABLEKS                       R26 R25 K21 ["AutomaticSize"]
      437 GETTABLEKS                       R26 R3 K92 ["PrimaryActionFont"]
      439 SETTABLEKS                       R26 R25 K59 ["Font"]
      441 NAMECALL                         R26 R2 K53 ["getNextOrder"]
      443 CALL                             R26 1 1
      444 SETTABLEKS                       R26 R25 K50 ["LayoutOrder"]
      446 GETIMPORT                        R26 K70 [UDim2.fromScale]
      448 LOADK                            R27 K17 [0.5]
      449 LOADN                            R28 0
      450 CALL                             R26 2 1
      451 SETTABLEKS                       R26 R25 K14 ["Size"]
      453 LOADK                            R32 K74 ["AvatarScreen"]
      454 LOADK                            R33 K113 ["AutoSetupEstimatedTime"]
      455 NAMECALL                         R30 R1 K7 ["getText"]
      457 CALL                             R30 3 1
      458 MOVE                             R27 R30
      459 LOADK                            R28 K114 ["\t"]
      460 ORK                              R30 R14 K107 [150]
      461 GETIMPORT                        R31 K116 [string.format]
      463 LOADK                            R32 K117 ["%01i:%02i"]
      464 DIVK                             R34 R30 K118 [60]
      465 MODK                             R33 R34 K118 [60]
      466 MODK                             R34 R30 K118 [60]
      467 CALL                             R31 3 1
      468 MOVE                             R29 R31
      469 CONCAT                           R26 R27 R29
      470 SETTABLEKS                       R26 R25 K60 ["Text"]
      472 GETIMPORT                        R26 K77 [Enum.TextTruncate.AtEnd]
      474 SETTABLEKS                       R26 R25 K65 ["TextTruncate"]
      476 GETIMPORT                        R26 K120 [Enum.TextXAlignment.Right]
      478 SETTABLEKS                       R26 R25 K66 ["TextXAlignment"]
      480 GETTABLEKS                       R26 R3 K61 ["TextColor"]
      482 SETTABLEKS                       R26 R25 K61 ["TextColor"]
      484 DUPTABLE                         R26 K83 [{"UIFlexItem"}]
      485 GETUPVAL                         R27 4
      486 GETTABLEKS                       R27 R27 K11 ["createElement"]
      488 LOADK                            R28 K82 ["UIFlexItem"]
      489 DUPTABLE                         R29 K85 [{"FlexMode"}]
      490 GETIMPORT                        R30 K97 [Enum.UIFlexMode.Shrink]
      492 SETTABLEKS                       R30 R29 K84 ["FlexMode"]
      494 CALL                             R27 2 1
      495 SETTABLEKS                       R27 R26 K82 ["UIFlexItem"]
      497 CALL                             R23 3 1
      498 SETTABLEKS                       R23 R22 K109 ["EstimatedTime"]
      500 CALL                             R19 3 1
      501 SETTABLEKS                       R19 R18 K46 ["ProgressPane"]
      503 GETUPVAL                         R19 4
      504 GETTABLEKS                       R19 R19 K11 ["createElement"]
      506 LOADK                            R20 K47 ["UICorner"]
      507 DUPTABLE                         R21 K122 [{"CornerRadius"}]
      508 GETTABLEKS                       R22 R3 K121 ["CornerRadius"]
      510 SETTABLEKS                       R22 R21 K121 ["CornerRadius"]
      512 CALL                             R19 2 1
      513 SETTABLEKS                       R19 R18 K47 ["UICorner"]
      515 GETUPVAL                         R19 4
      516 GETTABLEKS                       R19 R19 K11 ["createElement"]
      518 LOADK                            R20 K48 ["UIStroke"]
      519 DUPTABLE                         R21 K126 [{"ApplyStrokeMode", "Color", "Thickness"}]
      520 GETIMPORT                        R22 K128 [Enum.ApplyStrokeMode.Border]
      522 SETTABLEKS                       R22 R21 K123 ["ApplyStrokeMode"]
      524 GETTABLEKS                       R22 R3 K129 ["StrokeColor"]
      526 SETTABLEKS                       R22 R21 K124 ["Color"]
      528 GETTABLEKS                       R22 R3 K130 ["StrokeThickness"]
      530 SETTABLEKS                       R22 R21 K125 ["Thickness"]
      532 CALL                             R19 2 1
      533 SETTABLEKS                       R19 R18 K48 ["UIStroke"]
      535 CALL                             R15 3 -1
      536 RETURN                           R15 -1

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
