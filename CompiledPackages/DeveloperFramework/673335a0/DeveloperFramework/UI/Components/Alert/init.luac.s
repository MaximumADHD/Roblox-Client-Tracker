PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 NEWTABLE                         R5 0 0
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R6 0 0
       20 CALL                             R4 2 1
       21 DUPTABLE                         R5 K5 [{"enabled", "enable", "disable"}]
       22 SETTABLEKS                       R1 R5 K2 ["enabled"]
       24 SETTABLEKS                       R3 R5 K3 ["enable"]
       26 SETTABLEKS                       R4 R5 K4 ["disable"]
       28 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K0 ["TextSize"]
        5 MOVE                             R6 R1
        6 GETIMPORT                        R7 K3 [Vector2.new]
        8 LOADK                            R8 K4 [∞]
        9 GETUPVAL                         R9 1
       10 GETTABLEKS                       R9 R9 K0 ["TextSize"]
       12 CALL                             R7 2 -1
       13 NAMECALL                         R2 R2 K5 ["GetTextSize"]
       15 CALL                             R2 -1 1
       16 GETTABLEKS                       R2 R2 K6 ["X"]
       18 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKS                    R3 K0 [""] ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        7 LOADK                            R3 K1 ["You must be using non-legacy React in order to use Alert"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 1
       12 LOADK                            R3 K4 ["Alert"]
       13 MOVE                             R4 R0
       14 NAMECALL                         R1 R1 K5 ["use"]
       16 CALL                             R1 3 1
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K6 ["new"]
       20 CALL                             R2 0 1
       21 GETUPVAL                         R3 3
       22 LOADB                            R4 0
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 3
       25 LOADB                            R5 0
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K7 ["useState"]
       30 LOADN                            R6 0
       31 CALL                             R5 1 2
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K7 ["useState"]
       35 LOADN                            R8 0
       36 CALL                             R7 1 2
       37 NEWCLOSURE                       R9 P0
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R1
       40 GETTABLEKS                       R11 R0 K8 ["Title"]
       42 GETTABLEKS                       R12 R1 K9 ["TitleFont"]
       44 GETUPVAL                         R13 4
       45 MOVE                             R15 R11
       46 GETTABLEKS                       R16 R1 K10 ["TextSize"]
       48 MOVE                             R17 R12
       49 GETIMPORT                        R18 K12 [Vector2.new]
       51 LOADK                            R19 K13 [∞]
       52 GETTABLEKS                       R20 R1 K10 ["TextSize"]
       54 CALL                             R18 2 -1
       55 NAMECALL                         R13 R13 K14 ["GetTextSize"]
       57 CALL                             R13 -1 1
       58 MOVE                             R10 R13
       59 GETTABLEKS                       R10 R10 K15 ["X"]
       61 LOADB                            R11 0
       62 GETTABLEKS                       R12 R0 K16 ["ShortTitle"]
       64 JUMPIFEQKNIL                     R12 ; [+6]
       66 ADD                              R12 R5 R10
       67 JUMPIFLT                         R7 R12 ; [+2]
       69 LOADB                            R11 0 +1
       70 LOADB                            R11 1
       71 JUMPIFNOT                        R11 ; [+3]
       72 GETTABLEKS                       R12 R0 K16 ["ShortTitle"]
       74 JUMP                             ; [+2]
       75 GETTABLEKS                       R12 R0 K8 ["Title"]
       77 JUMPIFNOT                        R11 ; [+28]
       78 GETTABLEKS                       R15 R0 K16 ["ShortTitle"]
       80 FASTCALL2K                       ASSERT R15 K17 ; [+4]
       82 LOADK                            R16 K17 ["ShortTitle not specified, but useShortTitle is true"]
       83 GETIMPORT                        R14 K3 [assert]
       85 CALL                             R14 2 1
       86 GETTABLEKS                       R15 R1 K9 ["TitleFont"]
       88 GETUPVAL                         R16 4
       89 MOVE                             R18 R14
       90 GETTABLEKS                       R19 R1 K10 ["TextSize"]
       92 MOVE                             R20 R15
       93 GETIMPORT                        R21 K12 [Vector2.new]
       95 LOADK                            R22 K13 [∞]
       96 GETTABLEKS                       R23 R1 K10 ["TextSize"]
       98 CALL                             R21 2 -1
       99 NAMECALL                         R16 R16 K14 ["GetTextSize"]
      101 CALL                             R16 -1 1
      102 MOVE                             R13 R16
      103 GETTABLEKS                       R13 R13 K15 ["X"]
      105 JUMP                             ; [+1]
      106 MOVE                             R13 R10
      107 GETTABLEKS                       R15 R0 K18 ["PrimaryAction"]
      109 JUMPIFNOT                        R15 ; [+24]
      110 GETTABLEKS                       R15 R0 K18 ["PrimaryAction"]
      112 GETTABLEKS                       R15 R15 K19 ["Text"]
      114 GETTABLEKS                       R16 R1 K20 ["PrimaryActionFont"]
      116 GETUPVAL                         R17 4
      117 MOVE                             R19 R15
      118 GETTABLEKS                       R20 R1 K10 ["TextSize"]
      120 MOVE                             R21 R16
      121 GETIMPORT                        R22 K12 [Vector2.new]
      123 LOADK                            R23 K13 [∞]
      124 GETTABLEKS                       R24 R1 K10 ["TextSize"]
      126 CALL                             R22 2 -1
      127 NAMECALL                         R17 R17 K14 ["GetTextSize"]
      129 CALL                             R17 -1 1
      130 MOVE                             R14 R17
      131 GETTABLEKS                       R14 R14 K15 ["X"]
      133 JUMP                             ; [+1]
      134 LOADN                            R14 0
      135 GETTABLEKS                       R16 R1 K21 ["Icon"]
      137 JUMPIFNOTEQKNIL                  R16 ; [+2]
      139 LOADB                            R15 0 +1
      140 LOADB                            R15 1
      141 GETUPVAL                         R16 0
      142 GETTABLEKS                       R16 R16 K22 ["createElement"]
      144 GETUPVAL                         R17 5
      145 NEWTABLE                         R18 16 0
      147 GETIMPORT                        R19 K12 [Vector2.new]
      149 LOADK                            R20 K23 [0.5]
      150 LOADN                            R21 0
      151 CALL                             R19 2 1
      152 SETTABLEKS                       R19 R18 K24 ["AnchorPoint"]
      154 GETIMPORT                        R19 K28 [Enum.AutomaticSize.Y]
      156 SETTABLEKS                       R19 R18 K26 ["AutomaticSize"]
      158 GETTABLEKS                       R20 R3 K29 ["enabled"]
      160 JUMPIFNOT                        R20 ; [+12]
      161 GETTABLEKS                       R20 R4 K29 ["enabled"]
      163 JUMPIF                           R20 ; [+9]
      164 GETUPVAL                         R19 6
      165 GETTABLEKS                       R19 R19 K30 ["darker"]
      167 GETTABLEKS                       R20 R1 K31 ["BackgroundColor"]
      169 GETTABLEKS                       R21 R1 K32 ["BackgroundColorHoverDarkerMultiplier"]
      171 CALL                             R19 2 1
      172 JUMP                             ; [+2]
      173 GETTABLEKS                       R19 R1 K31 ["BackgroundColor"]
      175 SETTABLEKS                       R19 R18 K33 ["BackgroundColor3"]
      177 GETIMPORT                        R19 K35 [UDim2.new]
      179 GETIMPORT                        R20 K37 [UDim.new]
      181 LOADK                            R21 K23 [0.5]
      182 LOADN                            R22 0
      183 CALL                             R20 2 1
      184 GETTABLEKS                       R21 R1 K38 ["TopPadding"]
      186 CALL                             R19 2 1
      187 SETTABLEKS                       R19 R18 K39 ["Position"]
      189 GETIMPORT                        R19 K35 [UDim2.new]
      191 GETIMPORT                        R21 K37 [UDim.new]
      193 LOADN                            R22 1
      194 LOADN                            R23 0
      195 CALL                             R21 2 1
      196 GETTABLEKS                       R22 R1 K40 ["HorizontalPadding"]
      198 SUB                              R20 R21 R22
      199 GETIMPORT                        R21 K37 [UDim.new]
      201 LOADN                            R22 0
      202 LOADN                            R23 0
      203 CALL                             R21 2 -1
      204 CALL                             R19 -1 1
      205 SETTABLEKS                       R19 R18 K41 ["Size"]
      207 GETTABLEKS                       R19 R0 K42 ["ZIndex"]
      209 SETTABLEKS                       R19 R18 K42 ["ZIndex"]
      211 GETTABLEKS                       R19 R1 K43 ["InnerPadding"]
      213 SETTABLEKS                       R19 R18 K44 ["Padding"]
      215 GETUPVAL                         R19 0
      216 GETTABLEKS                       R19 R19 K45 ["Event"]
      218 GETTABLEKS                       R19 R19 K46 ["MouseEnter"]
      220 GETTABLEKS                       R21 R0 K18 ["PrimaryAction"]
      222 JUMPIFNOT                        R21 ; [+3]
      223 GETTABLEKS                       R20 R3 K47 ["enable"]
      225 JUMP                             ; [+1]
      226 LOADNIL                          R20
      227 SETTABLE                         R20 R18 R19
      228 GETUPVAL                         R19 0
      229 GETTABLEKS                       R19 R19 K45 ["Event"]
      231 GETTABLEKS                       R19 R19 K48 ["MouseLeave"]
      233 GETTABLEKS                       R21 R0 K18 ["PrimaryAction"]
      235 JUMPIFNOT                        R21 ; [+3]
      236 GETTABLEKS                       R20 R3 K49 ["disable"]
      238 JUMP                             ; [+1]
      239 LOADNIL                          R20
      240 SETTABLE                         R20 R18 R19
      241 GETTABLEKS                       R20 R0 K18 ["PrimaryAction"]
      243 JUMPIFNOT                        R20 ; [+5]
      244 GETTABLEKS                       R19 R0 K18 ["PrimaryAction"]
      246 GETTABLEKS                       R19 R19 K50 ["OnClick"]
      248 JUMP                             ; [+1]
      249 LOADNIL                          R19
      250 SETTABLEKS                       R19 R18 K50 ["OnClick"]
      252 DUPTABLE                         R19 K56 [{"UICorner", "UISizeConstraint", "UIStroke", "Image", "Contents"}]
      253 GETUPVAL                         R20 0
      254 GETTABLEKS                       R20 R20 K22 ["createElement"]
      256 LOADK                            R21 K51 ["UICorner"]
      257 DUPTABLE                         R22 K58 [{"CornerRadius"}]
      258 GETTABLEKS                       R23 R1 K57 ["CornerRadius"]
      260 SETTABLEKS                       R23 R22 K57 ["CornerRadius"]
      262 CALL                             R20 2 1
      263 SETTABLEKS                       R20 R19 K51 ["UICorner"]
      265 GETUPVAL                         R20 0
      266 GETTABLEKS                       R20 R20 K22 ["createElement"]
      268 LOADK                            R21 K52 ["UISizeConstraint"]
      269 DUPTABLE                         R22 K60 [{"MaxSize"}]
      270 GETIMPORT                        R23 K12 [Vector2.new]
      272 GETTABLEKS                       R24 R1 K61 ["MaxWidth"]
      274 LOADK                            R25 K13 [∞]
      275 CALL                             R23 2 1
      276 SETTABLEKS                       R23 R22 K59 ["MaxSize"]
      278 CALL                             R20 2 1
      279 SETTABLEKS                       R20 R19 K52 ["UISizeConstraint"]
      281 GETUPVAL                         R20 0
      282 GETTABLEKS                       R20 R20 K22 ["createElement"]
      284 LOADK                            R21 K53 ["UIStroke"]
      285 DUPTABLE                         R22 K65 [{"ApplyStrokeMode", "Color", "Thickness"}]
      286 GETIMPORT                        R23 K67 [Enum.ApplyStrokeMode.Border]
      288 SETTABLEKS                       R23 R22 K62 ["ApplyStrokeMode"]
      290 GETTABLEKS                       R23 R1 K68 ["StrokeColor"]
      292 SETTABLEKS                       R23 R22 K63 ["Color"]
      294 GETTABLEKS                       R23 R1 K69 ["StrokeThickness"]
      296 SETTABLEKS                       R23 R22 K64 ["Thickness"]
      298 CALL                             R20 2 1
      299 SETTABLEKS                       R20 R19 K53 ["UIStroke"]
      301 MOVE                             R20 R15
      302 JUMPIFNOT                        R20 ; [+27]
      303 GETUPVAL                         R20 0
      304 GETTABLEKS                       R20 R20 K22 ["createElement"]
      306 GETUPVAL                         R21 7
      307 DUPTABLE                         R22 K72 [{"Image", "ImageColor3", "LayoutOrder", "Position", "Size"}]
      308 GETTABLEKS                       R23 R1 K21 ["Icon"]
      310 SETTABLEKS                       R23 R22 K54 ["Image"]
      312 GETTABLEKS                       R23 R1 K73 ["TextColor"]
      314 SETTABLEKS                       R23 R22 K70 ["ImageColor3"]
      316 NAMECALL                         R23 R2 K74 ["getNextOrder"]
      318 CALL                             R23 1 1
      319 SETTABLEKS                       R23 R22 K71 ["LayoutOrder"]
      321 GETTABLEKS                       R23 R1 K75 ["IconPosition"]
      323 SETTABLEKS                       R23 R22 K39 ["Position"]
      325 GETTABLEKS                       R23 R1 K76 ["IconSize"]
      327 SETTABLEKS                       R23 R22 K41 ["Size"]
      329 CALL                             R20 2 1
      330 SETTABLEKS                       R20 R19 K54 ["Image"]
      332 GETUPVAL                         R20 0
      333 GETTABLEKS                       R20 R20 K22 ["createElement"]
      335 GETUPVAL                         R21 5
      336 DUPTABLE                         R22 K79 [{"AnchorPoint", "AutomaticSize", "LayoutOrder", "Position", "Size", "Layout", "Spacing"}]
      337 GETIMPORT                        R23 K12 [Vector2.new]
      339 LOADN                            R24 1
      340 LOADN                            R25 0
      341 CALL                             R23 2 1
      342 SETTABLEKS                       R23 R22 K24 ["AnchorPoint"]
      344 GETIMPORT                        R23 K28 [Enum.AutomaticSize.Y]
      346 SETTABLEKS                       R23 R22 K26 ["AutomaticSize"]
      348 NAMECALL                         R23 R2 K74 ["getNextOrder"]
      350 CALL                             R23 1 1
      351 SETTABLEKS                       R23 R22 K71 ["LayoutOrder"]
      353 GETIMPORT                        R23 K81 [UDim2.fromScale]
      355 LOADN                            R24 1
      356 LOADN                            R25 0
      357 CALL                             R23 2 1
      358 SETTABLEKS                       R23 R22 K39 ["Position"]
      360 GETIMPORT                        R23 K35 [UDim2.new]
      362 GETIMPORT                        R25 K37 [UDim.new]
      364 LOADN                            R26 1
      365 LOADN                            R27 0
      366 CALL                             R25 2 1
      367 JUMPIFNOT                        R15 ; [+12]
      368 GETTABLEKS                       R27 R1 K76 ["IconSize"]
      370 GETTABLEKS                       R27 R27 K15 ["X"]
      372 GETIMPORT                        R28 K37 [UDim.new]
      374 LOADN                            R29 0
      375 GETTABLEKS                       R30 R1 K82 ["ContentsSpacing"]
      377 CALL                             R28 2 1
      378 ADD                              R26 R27 R28
      379 JUMP                             ; [+3]
      380 GETIMPORT                        R26 K37 [UDim.new]
      382 CALL                             R26 0 1
      383 SUB                              R24 R25 R26
      384 GETIMPORT                        R25 K37 [UDim.new]
      386 LOADN                            R26 0
      387 LOADN                            R27 0
      388 CALL                             R25 2 -1
      389 CALL                             R23 -1 1
      390 SETTABLEKS                       R23 R22 K41 ["Size"]
      392 GETIMPORT                        R23 K85 [Enum.FillDirection.Vertical]
      394 SETTABLEKS                       R23 R22 K77 ["Layout"]
      396 LOADN                            R23 2
      397 SETTABLEKS                       R23 R22 K78 ["Spacing"]
      399 DUPTABLE                         R23 K88 [{"Title", "Description", "DescriptionWithLink"}]
      400 GETUPVAL                         R24 0
      401 GETTABLEKS                       R24 R24 K22 ["createElement"]
      403 GETUPVAL                         R25 5
      404 DUPTABLE                         R26 K89 [{"AutomaticSize", "LayoutOrder", "Size"}]
      405 GETIMPORT                        R27 K28 [Enum.AutomaticSize.Y]
      407 SETTABLEKS                       R27 R26 K26 ["AutomaticSize"]
      409 NAMECALL                         R27 R2 K74 ["getNextOrder"]
      411 CALL                             R27 1 1
      412 SETTABLEKS                       R27 R26 K71 ["LayoutOrder"]
      414 GETIMPORT                        R27 K81 [UDim2.fromScale]
      416 LOADN                            R28 1
      417 LOADN                            R29 0
      418 CALL                             R27 2 1
      419 SETTABLEKS                       R27 R26 K41 ["Size"]
      421 DUPTABLE                         R27 K92 [{"LeftSide", "RightSide"}]
      422 GETUPVAL                         R28 0
      423 GETTABLEKS                       R28 R28 K22 ["createElement"]
      425 GETUPVAL                         R29 5
      426 DUPTABLE                         R30 K93 [{"AutomaticSize", "Layout", "Spacing"}]
      427 GETIMPORT                        R31 K95 [Enum.AutomaticSize.XY]
      429 SETTABLEKS                       R31 R30 K26 ["AutomaticSize"]
      431 GETIMPORT                        R31 K97 [Enum.FillDirection.Horizontal]
      433 SETTABLEKS                       R31 R30 K77 ["Layout"]
      435 GETTABLEKS                       R31 R1 K82 ["ContentsSpacing"]
      437 SETTABLEKS                       R31 R30 K78 ["Spacing"]
      439 DUPTABLE                         R31 K99 [{"TitleSpace"}]
      440 GETUPVAL                         R32 0
      441 GETTABLEKS                       R32 R32 K22 ["createElement"]
      443 GETUPVAL                         R33 5
      444 NEWTABLE                         R34 4 0
      446 GETIMPORT                        R35 K95 [Enum.AutomaticSize.XY]
      448 SETTABLEKS                       R35 R34 K26 ["AutomaticSize"]
      450 NAMECALL                         R35 R2 K74 ["getNextOrder"]
      452 CALL                             R35 1 1
      453 SETTABLEKS                       R35 R34 K71 ["LayoutOrder"]
      455 GETIMPORT                        R35 K101 [UDim2.fromOffset]
      457 LOADN                            R36 0
      458 LOADN                            R37 0
      459 CALL                             R35 2 1
      460 SETTABLEKS                       R35 R34 K41 ["Size"]
      462 GETUPVAL                         R35 0
      463 GETTABLEKS                       R35 R35 K102 ["Change"]
      465 GETTABLEKS                       R35 R35 K103 ["AbsolutePosition"]
      467 NEWCLOSURE                       R36 P1
      468 CAPTURE                          VAL R6
      469 SETTABLE                         R36 R34 R35
      470 DUPTABLE                         R35 K105 [{"MaxSizeContraint", "Title"}]
      471 GETUPVAL                         R36 0
      472 GETTABLEKS                       R36 R36 K22 ["createElement"]
      474 LOADK                            R37 K52 ["UISizeConstraint"]
      475 DUPTABLE                         R38 K107 [{"MaxSize", "MinSize"}]
      476 GETIMPORT                        R39 K12 [Vector2.new]
      478 MOVE                             R40 R10
      479 LOADK                            R41 K13 [∞]
      480 CALL                             R39 2 1
      481 SETTABLEKS                       R39 R38 K59 ["MaxSize"]
      483 GETIMPORT                        R39 K12 [Vector2.new]
      485 LOADN                            R40 0
      486 LOADN                            R41 0
      487 CALL                             R39 2 1
      488 SETTABLEKS                       R39 R38 K106 ["MinSize"]
      490 CALL                             R36 2 1
      491 SETTABLEKS                       R36 R35 K104 ["MaxSizeContraint"]
      493 GETUPVAL                         R36 0
      494 GETTABLEKS                       R36 R36 K22 ["createElement"]
      496 GETUPVAL                         R37 8
      497 DUPTABLE                         R38 K112 [{"Font", "Text", "TextColor", "TextSize", "AutomaticSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      498 GETTABLEKS                       R39 R1 K9 ["TitleFont"]
      500 SETTABLEKS                       R39 R38 K108 ["Font"]
      502 SETTABLEKS                       R12 R38 K19 ["Text"]
      504 GETTABLEKS                       R39 R1 K73 ["TextColor"]
      506 SETTABLEKS                       R39 R38 K73 ["TextColor"]
      508 GETTABLEKS                       R39 R1 K10 ["TextSize"]
      510 SETTABLEKS                       R39 R38 K10 ["TextSize"]
      512 GETIMPORT                        R39 K95 [Enum.AutomaticSize.XY]
      514 SETTABLEKS                       R39 R38 K26 ["AutomaticSize"]
      516 LOADB                            R39 1
      517 SETTABLEKS                       R39 R38 K109 ["TextWrapped"]
      519 GETIMPORT                        R39 K114 [Enum.TextXAlignment.Left]
      521 SETTABLEKS                       R39 R38 K110 ["TextXAlignment"]
      523 GETUPVAL                         R40 9
      524 CALL                             R40 0 1
      525 JUMPIFNOT                        R40 ; [+3]
      526 GETIMPORT                        R39 K116 [Enum.TextYAlignment.Top]
      528 JUMP                             ; [+1]
      529 LOADNIL                          R39
      530 SETTABLEKS                       R39 R38 K111 ["TextYAlignment"]
      532 CALL                             R36 2 1
      533 SETTABLEKS                       R36 R35 K8 ["Title"]
      535 CALL                             R32 3 1
      536 SETTABLEKS                       R32 R31 K98 ["TitleSpace"]
      538 CALL                             R28 3 1
      539 SETTABLEKS                       R28 R27 K90 ["LeftSide"]
      541 GETUPVAL                         R28 0
      542 GETTABLEKS                       R28 R28 K22 ["createElement"]
      544 GETUPVAL                         R29 5
      545 NEWTABLE                         R30 8 0
      547 GETIMPORT                        R31 K12 [Vector2.new]
      549 LOADN                            R32 1
      550 LOADN                            R33 0
      551 CALL                             R31 2 1
      552 SETTABLEKS                       R31 R30 K24 ["AnchorPoint"]
      554 GETIMPORT                        R31 K117 [Enum.AutomaticSize.X]
      556 SETTABLEKS                       R31 R30 K26 ["AutomaticSize"]
      558 GETIMPORT                        R31 K81 [UDim2.fromScale]
      560 LOADN                            R32 1
      561 LOADN                            R33 0
      562 CALL                             R31 2 1
      563 SETTABLEKS                       R31 R30 K39 ["Position"]
      565 GETIMPORT                        R31 K101 [UDim2.fromOffset]
      567 LOADN                            R32 0
      568 LOADN                            R33 18
      569 CALL                             R31 2 1
      570 SETTABLEKS                       R31 R30 K41 ["Size"]
      572 GETIMPORT                        R31 K97 [Enum.FillDirection.Horizontal]
      574 SETTABLEKS                       R31 R30 K77 ["Layout"]
      576 GETTABLEKS                       R31 R1 K82 ["ContentsSpacing"]
      578 SETTABLEKS                       R31 R30 K78 ["Spacing"]
      580 GETUPVAL                         R31 0
      581 GETTABLEKS                       R31 R31 K102 ["Change"]
      583 GETTABLEKS                       R31 R31 K103 ["AbsolutePosition"]
      585 NEWCLOSURE                       R32 P2
      586 CAPTURE                          VAL R8
      587 SETTABLE                         R32 R30 R31
      588 DUPTABLE                         R31 K120 [{"PrimaryActionSpace", "Close"}]
      589 GETUPVAL                         R32 0
      590 GETTABLEKS                       R32 R32 K22 ["createElement"]
      592 GETUPVAL                         R33 5
      593 DUPTABLE                         R34 K89 [{"AutomaticSize", "LayoutOrder", "Size"}]
      594 GETIMPORT                        R35 K28 [Enum.AutomaticSize.Y]
      596 SETTABLEKS                       R35 R34 K26 ["AutomaticSize"]
      598 NAMECALL                         R35 R2 K74 ["getNextOrder"]
      600 CALL                             R35 1 1
      601 SETTABLEKS                       R35 R34 K71 ["LayoutOrder"]
      603 GETIMPORT                        R35 K101 [UDim2.fromOffset]
      605 MOVE                             R36 R14
      606 LOADN                            R37 0
      607 CALL                             R35 2 1
      608 SETTABLEKS                       R35 R34 K41 ["Size"]
      610 DUPTABLE                         R35 K121 [{"PrimaryAction"}]
      611 GETTABLEKS                       R37 R0 K18 ["PrimaryAction"]
      613 JUMPIFEQKNIL                     R37 ; [+42]
      615 ADD                              R37 R5 R13
      616 JUMPIFNOTLT                      R37 R7 ; [+39]
      618 GETUPVAL                         R36 0
      619 GETTABLEKS                       R36 R36 K22 ["createElement"]
      621 GETUPVAL                         R37 8
      622 DUPTABLE                         R38 K123 [{"AutomaticSize", "Font", "LayoutOrder", "RichText", "Text", "TextColor"}]
      623 GETIMPORT                        R39 K95 [Enum.AutomaticSize.XY]
      625 SETTABLEKS                       R39 R38 K26 ["AutomaticSize"]
      627 GETTABLEKS                       R39 R1 K20 ["PrimaryActionFont"]
      629 SETTABLEKS                       R39 R38 K108 ["Font"]
      631 NAMECALL                         R39 R2 K74 ["getNextOrder"]
      633 CALL                             R39 1 1
      634 SETTABLEKS                       R39 R38 K71 ["LayoutOrder"]
      636 LOADB                            R39 1
      637 SETTABLEKS                       R39 R38 K122 ["RichText"]
      639 LOADK                            R40 K124 ["<u>%*</u>"]
      640 GETTABLEKS                       R42 R0 K18 ["PrimaryAction"]
      642 GETTABLEKS                       R42 R42 K19 ["Text"]
      644 NAMECALL                         R40 R40 K125 ["format"]
      646 CALL                             R40 2 1
      647 MOVE                             R39 R40
      648 SETTABLEKS                       R39 R38 K19 ["Text"]
      650 GETTABLEKS                       R39 R1 K73 ["TextColor"]
      652 SETTABLEKS                       R39 R38 K73 ["TextColor"]
      654 CALL                             R36 2 1
      655 JUMP                             ; [+1]
      656 LOADNIL                          R36
      657 SETTABLEKS                       R36 R35 K18 ["PrimaryAction"]
      659 CALL                             R32 3 1
      660 SETTABLEKS                       R32 R31 K118 ["PrimaryActionSpace"]
      662 GETTABLEKS                       R32 R0 K126 ["OnClose"]
      664 JUMPIFNOT                        R32 ; [+182]
      665 GETUPVAL                         R32 0
      666 GETTABLEKS                       R32 R32 K22 ["createElement"]
      668 LOADK                            R33 K127 ["TextButton"]
      669 NEWTABLE                         R34 8 0
      671 LOADN                            R35 1
      672 SETTABLEKS                       R35 R34 K128 ["BackgroundTransparency"]
      674 NAMECALL                         R35 R2 K74 ["getNextOrder"]
      676 CALL                             R35 1 1
      677 SETTABLEKS                       R35 R34 K71 ["LayoutOrder"]
      679 GETIMPORT                        R35 K81 [UDim2.fromScale]
      681 LOADN                            R36 1
      682 LOADN                            R37 1
      683 CALL                             R35 2 1
      684 SETTABLEKS                       R35 R34 K41 ["Size"]
      686 LOADK                            R35 K0 [""]
      687 SETTABLEKS                       R35 R34 K19 ["Text"]
      689 GETUPVAL                         R35 0
      690 GETTABLEKS                       R35 R35 K45 ["Event"]
      692 GETTABLEKS                       R35 R35 K129 ["Activated"]
      694 GETTABLEKS                       R36 R0 K126 ["OnClose"]
      696 SETTABLE                         R36 R34 R35
      697 GETUPVAL                         R35 0
      698 GETTABLEKS                       R35 R35 K45 ["Event"]
      700 GETTABLEKS                       R35 R35 K46 ["MouseEnter"]
      702 GETTABLEKS                       R36 R4 K47 ["enable"]
      704 SETTABLE                         R36 R34 R35
      705 GETUPVAL                         R35 0
      706 GETTABLEKS                       R35 R35 K45 ["Event"]
      708 GETTABLEKS                       R35 R35 K48 ["MouseLeave"]
      710 GETTABLEKS                       R36 R4 K49 ["disable"]
      712 SETTABLE                         R36 R34 R35
      713 DUPTABLE                         R35 K133 [{"UIAspectRatioConstraint", "IconContents", "HoverBackground"}]
      714 GETUPVAL                         R36 0
      715 GETTABLEKS                       R36 R36 K22 ["createElement"]
      717 LOADK                            R37 K130 ["UIAspectRatioConstraint"]
      718 CALL                             R36 1 1
      719 SETTABLEKS                       R36 R35 K130 ["UIAspectRatioConstraint"]
      721 GETUPVAL                         R36 0
      722 GETTABLEKS                       R36 R36 K22 ["createElement"]
      724 GETUPVAL                         R37 5
      725 DUPTABLE                         R38 K134 [{"Padding"}]
      726 DUPTABLE                         R39 K136 [{"Left", "Right", "Top"}]
      727 LOADN                            R40 4
      728 SETTABLEKS                       R40 R39 K113 ["Left"]
      730 LOADN                            R40 4
      731 SETTABLEKS                       R40 R39 K135 ["Right"]
      733 LOADN                            R40 2
      734 SETTABLEKS                       R40 R39 K115 ["Top"]
      736 SETTABLEKS                       R39 R38 K44 ["Padding"]
      738 DUPTABLE                         R39 K137 [{"Icon"}]
      739 GETUPVAL                         R40 0
      740 GETTABLEKS                       R40 R40 K22 ["createElement"]
      742 GETUPVAL                         R41 7
      743 DUPTABLE                         R42 K138 [{"AnchorPoint", "Image", "ImageColor3", "Position", "Size"}]
      744 GETIMPORT                        R43 K12 [Vector2.new]
      746 LOADK                            R44 K23 [0.5]
      747 LOADK                            R45 K23 [0.5]
      748 CALL                             R43 2 1
      749 SETTABLEKS                       R43 R42 K24 ["AnchorPoint"]
      751 GETTABLEKS                       R43 R1 K139 ["CloseButtonImage"]
      753 SETTABLEKS                       R43 R42 K54 ["Image"]
      755 GETTABLEKS                       R43 R1 K73 ["TextColor"]
      757 SETTABLEKS                       R43 R42 K70 ["ImageColor3"]
      759 GETIMPORT                        R43 K81 [UDim2.fromScale]
      761 LOADK                            R44 K23 [0.5]
      762 LOADK                            R45 K23 [0.5]
      763 CALL                             R43 2 1
      764 SETTABLEKS                       R43 R42 K39 ["Position"]
      766 GETIMPORT                        R43 K81 [UDim2.fromScale]
      768 LOADN                            R44 1
      769 LOADN                            R45 1
      770 CALL                             R43 2 1
      771 SETTABLEKS                       R43 R42 K41 ["Size"]
      773 DUPTABLE                         R43 K140 [{"UIAspectRatioConstraint"}]
      774 GETUPVAL                         R44 0
      775 GETTABLEKS                       R44 R44 K22 ["createElement"]
      777 LOADK                            R45 K130 ["UIAspectRatioConstraint"]
      778 CALL                             R44 1 1
      779 SETTABLEKS                       R44 R43 K130 ["UIAspectRatioConstraint"]
      781 CALL                             R40 3 1
      782 SETTABLEKS                       R40 R39 K21 ["Icon"]
      784 CALL                             R36 3 1
      785 SETTABLEKS                       R36 R35 K131 ["IconContents"]
      787 GETTABLEKS                       R36 R4 K29 ["enabled"]
      789 JUMPIFNOT                        R36 ; [+54]
      790 GETUPVAL                         R36 0
      791 GETTABLEKS                       R36 R36 K22 ["createElement"]
      793 GETUPVAL                         R37 5
      794 DUPTABLE                         R38 K142 [{"AnchorPoint", "BackgroundColor3", "Position", "Size", "Transparency", "ZIndex"}]
      795 GETIMPORT                        R39 K12 [Vector2.new]
      797 LOADK                            R40 K23 [0.5]
      798 LOADK                            R41 K23 [0.5]
      799 CALL                             R39 2 1
      800 SETTABLEKS                       R39 R38 K24 ["AnchorPoint"]
      802 GETTABLEKS                       R39 R1 K143 ["HoverCircleColor"]
      804 SETTABLEKS                       R39 R38 K33 ["BackgroundColor3"]
      806 GETIMPORT                        R39 K81 [UDim2.fromScale]
      808 LOADK                            R40 K23 [0.5]
      809 LOADK                            R41 K23 [0.5]
      810 CALL                             R39 2 1
      811 SETTABLEKS                       R39 R38 K39 ["Position"]
      813 GETTABLEKS                       R40 R1 K76 ["IconSize"]
      815 GETTABLEKS                       R41 R1 K144 ["HoverCircleAdditionalSize"]
      817 ADD                              R39 R40 R41
      818 SETTABLEKS                       R39 R38 K41 ["Size"]
      820 GETTABLEKS                       R39 R1 K145 ["HoverCircleTransparency"]
      822 SETTABLEKS                       R39 R38 K141 ["Transparency"]
      824 LOADN                            R39 0
      825 SETTABLEKS                       R39 R38 K42 ["ZIndex"]
      827 DUPTABLE                         R39 K146 [{"UICorner"}]
      828 GETUPVAL                         R40 0
      829 GETTABLEKS                       R40 R40 K22 ["createElement"]
      831 LOADK                            R41 K51 ["UICorner"]
      832 DUPTABLE                         R42 K58 [{"CornerRadius"}]
      833 GETIMPORT                        R43 K37 [UDim.new]
      835 LOADN                            R44 1
      836 LOADN                            R45 0
      837 CALL                             R43 2 1
      838 SETTABLEKS                       R43 R42 K57 ["CornerRadius"]
      840 CALL                             R40 2 1
      841 SETTABLEKS                       R40 R39 K51 ["UICorner"]
      843 CALL                             R36 3 1
      844 SETTABLEKS                       R36 R35 K132 ["HoverBackground"]
      846 CALL                             R32 3 1
      847 SETTABLEKS                       R32 R31 K119 ["Close"]
      849 CALL                             R28 3 1
      850 SETTABLEKS                       R28 R27 K91 ["RightSide"]
      852 CALL                             R24 3 1
      853 SETTABLEKS                       R24 R23 K8 ["Title"]
      855 GETTABLEKS                       R24 R0 K86 ["Description"]
      857 JUMPIFNOT                        R24 ; [+45]
      858 GETUPVAL                         R25 9
      859 CALL                             R25 0 1
      860 JUMPIFNOT                        R25 ; [+5]
      861 LOADB                            R24 0
      862 GETTABLEKS                       R25 R0 K147 ["LinkMap"]
      864 JUMPIFNOTEQKNIL                  R25 ; [+38]
      866 GETUPVAL                         R24 0
      867 GETTABLEKS                       R24 R24 K22 ["createElement"]
      869 GETUPVAL                         R25 8
      870 DUPTABLE                         R26 K148 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextWrapped", "TextXAlignment"}]
      871 GETIMPORT                        R27 K28 [Enum.AutomaticSize.Y]
      873 SETTABLEKS                       R27 R26 K26 ["AutomaticSize"]
      875 NAMECALL                         R27 R2 K74 ["getNextOrder"]
      877 CALL                             R27 1 1
      878 SETTABLEKS                       R27 R26 K71 ["LayoutOrder"]
      880 GETIMPORT                        R27 K81 [UDim2.fromScale]
      882 LOADN                            R28 1
      883 LOADN                            R29 0
      884 CALL                             R27 2 1
      885 SETTABLEKS                       R27 R26 K41 ["Size"]
      887 GETTABLEKS                       R27 R0 K86 ["Description"]
      889 SETTABLEKS                       R27 R26 K19 ["Text"]
      891 GETTABLEKS                       R27 R1 K73 ["TextColor"]
      893 SETTABLEKS                       R27 R26 K73 ["TextColor"]
      895 LOADB                            R27 1
      896 SETTABLEKS                       R27 R26 K109 ["TextWrapped"]
      898 GETIMPORT                        R27 K114 [Enum.TextXAlignment.Left]
      900 SETTABLEKS                       R27 R26 K110 ["TextXAlignment"]
      902 CALL                             R24 2 1
      903 SETTABLEKS                       R24 R23 K86 ["Description"]
      905 GETTABLEKS                       R24 R0 K86 ["Description"]
      907 JUMPIFNOT                        R24 ; [+67]
      908 GETUPVAL                         R24 9
      909 CALL                             R24 0 1
      910 JUMPIFNOT                        R24 ; [+64]
      911 LOADB                            R24 0
      912 GETTABLEKS                       R25 R0 K147 ["LinkMap"]
      914 JUMPIFEQKNIL                     R25 ; [+60]
      916 GETUPVAL                         R24 0
      917 GETTABLEKS                       R24 R24 K22 ["createElement"]
      919 GETUPVAL                         R25 10
      920 DUPTABLE                         R26 K151 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "LinkMap", "Size", "Text", "TextColor", "TextProps", "TextWrapped", "TextXAlignment"}]
      921 GETIMPORT                        R27 K28 [Enum.AutomaticSize.Y]
      923 SETTABLEKS                       R27 R26 K26 ["AutomaticSize"]
      925 GETIMPORT                        R27 K152 [Enum.HorizontalAlignment.Left]
      927 SETTABLEKS                       R27 R26 K149 ["HorizontalAlignment"]
      929 NAMECALL                         R27 R2 K74 ["getNextOrder"]
      931 CALL                             R27 1 1
      932 SETTABLEKS                       R27 R26 K71 ["LayoutOrder"]
      934 GETTABLEKS                       R27 R0 K147 ["LinkMap"]
      936 SETTABLEKS                       R27 R26 K147 ["LinkMap"]
      938 GETIMPORT                        R27 K81 [UDim2.fromScale]
      940 LOADN                            R28 1
      941 LOADN                            R29 0
      942 CALL                             R27 2 1
      943 SETTABLEKS                       R27 R26 K41 ["Size"]
      945 GETTABLEKS                       R27 R0 K86 ["Description"]
      947 SETTABLEKS                       R27 R26 K19 ["Text"]
      949 GETTABLEKS                       R27 R1 K73 ["TextColor"]
      951 SETTABLEKS                       R27 R26 K73 ["TextColor"]
      953 DUPTABLE                         R27 K153 [{"Font", "TextSize", "TextXAlignment"}]
      954 GETIMPORT                        R28 K155 [Enum.Font.SourceSans]
      956 SETTABLEKS                       R28 R27 K108 ["Font"]
      958 LOADN                            R28 18
      959 SETTABLEKS                       R28 R27 K10 ["TextSize"]
      961 GETIMPORT                        R28 K114 [Enum.TextXAlignment.Left]
      963 SETTABLEKS                       R28 R27 K110 ["TextXAlignment"]
      965 SETTABLEKS                       R27 R26 K150 ["TextProps"]
      967 LOADB                            R27 1
      968 SETTABLEKS                       R27 R26 K109 ["TextWrapped"]
      970 GETIMPORT                        R27 K114 [Enum.TextXAlignment.Left]
      972 SETTABLEKS                       R27 R26 K110 ["TextXAlignment"]
      974 CALL                             R24 2 1
      975 SETTABLEKS                       R24 R23 K87 ["DescriptionWithLink"]
      977 CALL                             R20 3 1
      978 SETTABLEKS                       R20 R19 K55 ["Contents"]
      980 CALL                             R16 3 -1
      981 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["UI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R1 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["React"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R4 R1 K6 ["UI"]
       26 GETTABLEKS                       R4 R4 K13 ["Components"]
       28 GETTABLEKS                       R4 R4 K14 ["Image"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K10 [require]
       33 GETTABLEKS                       R5 R1 K6 ["UI"]
       35 GETTABLEKS                       R5 R5 K13 ["Components"]
       37 GETTABLEKS                       R5 R5 K15 ["TextLabel"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K10 [require]
       42 GETTABLEKS                       R6 R1 K6 ["UI"]
       44 GETTABLEKS                       R6 R6 K13 ["Components"]
       46 GETTABLEKS                       R6 R6 K16 ["TextWithLinks"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K10 [require]
       51 GETTABLEKS                       R7 R1 K6 ["UI"]
       53 GETTABLEKS                       R7 R7 K13 ["Components"]
       55 GETTABLEKS                       R7 R7 K17 ["Pane"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K10 [require]
       60 GETTABLEKS                       R8 R1 K18 ["Style"]
       62 GETTABLEKS                       R8 R8 K19 ["Colors"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K10 [require]
       67 GETTABLEKS                       R9 R1 K6 ["UI"]
       69 GETTABLEKS                       R9 R9 K20 ["ContextServices"]
       71 GETTABLEKS                       R9 R9 K21 ["Stylizer"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K10 [require]
       76 GETTABLEKS                       R10 R1 K11 ["Util"]
       78 GETTABLEKS                       R10 R10 K22 ["LayoutOrderIterator"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K10 [require]
       83 GETIMPORT                        R11 K5 [script]
       85 GETTABLEKS                       R11 R11 K23 ["style"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K10 [require]
       90 GETTABLEKS                       R12 R1 K24 ["SharedFlags"]
       92 GETTABLEKS                       R12 R12 K25 ["getFFlagDevFrameworkAlertAddTextLinks"]
       94 CALL                             R11 1 1
       95 DUPCLOSURE                       R12 K26 [PROTO_2]
       96 CAPTURE                          VAL R2
       97 DUPCLOSURE                       R13 K27 [PROTO_6]
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R5
      109 RETURN                           R13 1
