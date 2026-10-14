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
      336 DUPTABLE                         R22 K80 [{["AnchorPoint"], ["AutomaticSize"], ["LayoutOrder"], ["Position"], ["Size"], ["Layout"], ["Spacing"] = 2}]
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
      353 GETIMPORT                        R23 K82 [UDim2.fromScale]
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
      375 GETTABLEKS                       R30 R1 K83 ["ContentsSpacing"]
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
      392 GETIMPORT                        R23 K86 [Enum.FillDirection.Vertical]
      394 SETTABLEKS                       R23 R22 K77 ["Layout"]
      396 DUPTABLE                         R23 K89 [{"Title", "Description", "DescriptionWithLink"}]
      397 GETUPVAL                         R24 0
      398 GETTABLEKS                       R24 R24 K22 ["createElement"]
      400 GETUPVAL                         R25 5
      401 DUPTABLE                         R26 K90 [{"AutomaticSize", "LayoutOrder", "Size"}]
      402 GETIMPORT                        R27 K28 [Enum.AutomaticSize.Y]
      404 SETTABLEKS                       R27 R26 K26 ["AutomaticSize"]
      406 NAMECALL                         R27 R2 K74 ["getNextOrder"]
      408 CALL                             R27 1 1
      409 SETTABLEKS                       R27 R26 K71 ["LayoutOrder"]
      411 GETIMPORT                        R27 K82 [UDim2.fromScale]
      413 LOADN                            R28 1
      414 LOADN                            R29 0
      415 CALL                             R27 2 1
      416 SETTABLEKS                       R27 R26 K41 ["Size"]
      418 DUPTABLE                         R27 K93 [{"LeftSide", "RightSide"}]
      419 GETUPVAL                         R28 0
      420 GETTABLEKS                       R28 R28 K22 ["createElement"]
      422 GETUPVAL                         R29 5
      423 DUPTABLE                         R30 K94 [{"AutomaticSize", "Layout", "Spacing"}]
      424 GETIMPORT                        R31 K96 [Enum.AutomaticSize.XY]
      426 SETTABLEKS                       R31 R30 K26 ["AutomaticSize"]
      428 GETIMPORT                        R31 K98 [Enum.FillDirection.Horizontal]
      430 SETTABLEKS                       R31 R30 K77 ["Layout"]
      432 GETTABLEKS                       R31 R1 K83 ["ContentsSpacing"]
      434 SETTABLEKS                       R31 R30 K78 ["Spacing"]
      436 DUPTABLE                         R31 K100 [{"TitleSpace"}]
      437 GETUPVAL                         R32 0
      438 GETTABLEKS                       R32 R32 K22 ["createElement"]
      440 GETUPVAL                         R33 5
      441 NEWTABLE                         R34 4 0
      443 GETIMPORT                        R35 K96 [Enum.AutomaticSize.XY]
      445 SETTABLEKS                       R35 R34 K26 ["AutomaticSize"]
      447 NAMECALL                         R35 R2 K74 ["getNextOrder"]
      449 CALL                             R35 1 1
      450 SETTABLEKS                       R35 R34 K71 ["LayoutOrder"]
      452 GETIMPORT                        R35 K102 [UDim2.fromOffset]
      454 LOADN                            R36 0
      455 LOADN                            R37 0
      456 CALL                             R35 2 1
      457 SETTABLEKS                       R35 R34 K41 ["Size"]
      459 GETUPVAL                         R35 0
      460 GETTABLEKS                       R35 R35 K103 ["Change"]
      462 GETTABLEKS                       R35 R35 K104 ["AbsolutePosition"]
      464 NEWCLOSURE                       R36 P1
      465 CAPTURE                          VAL R6
      466 SETTABLE                         R36 R34 R35
      467 DUPTABLE                         R35 K106 [{"MaxSizeContraint", "Title"}]
      468 GETUPVAL                         R36 0
      469 GETTABLEKS                       R36 R36 K22 ["createElement"]
      471 LOADK                            R37 K52 ["UISizeConstraint"]
      472 DUPTABLE                         R38 K108 [{"MaxSize", "MinSize"}]
      473 GETIMPORT                        R39 K12 [Vector2.new]
      475 MOVE                             R40 R10
      476 LOADK                            R41 K13 [∞]
      477 CALL                             R39 2 1
      478 SETTABLEKS                       R39 R38 K59 ["MaxSize"]
      480 GETIMPORT                        R39 K12 [Vector2.new]
      482 LOADN                            R40 0
      483 LOADN                            R41 0
      484 CALL                             R39 2 1
      485 SETTABLEKS                       R39 R38 K107 ["MinSize"]
      487 CALL                             R36 2 1
      488 SETTABLEKS                       R36 R35 K105 ["MaxSizeContraint"]
      490 GETUPVAL                         R36 0
      491 GETTABLEKS                       R36 R36 K22 ["createElement"]
      493 GETUPVAL                         R37 8
      494 DUPTABLE                         R38 K114 [{["Font"], ["Text"], ["TextColor"], ["TextSize"], ["AutomaticSize"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      495 GETTABLEKS                       R39 R1 K9 ["TitleFont"]
      497 SETTABLEKS                       R39 R38 K109 ["Font"]
      499 SETTABLEKS                       R12 R38 K19 ["Text"]
      501 GETTABLEKS                       R39 R1 K73 ["TextColor"]
      503 SETTABLEKS                       R39 R38 K73 ["TextColor"]
      505 GETTABLEKS                       R39 R1 K10 ["TextSize"]
      507 SETTABLEKS                       R39 R38 K10 ["TextSize"]
      509 GETIMPORT                        R39 K96 [Enum.AutomaticSize.XY]
      511 SETTABLEKS                       R39 R38 K26 ["AutomaticSize"]
      513 GETIMPORT                        R39 K116 [Enum.TextXAlignment.Left]
      515 SETTABLEKS                       R39 R38 K112 ["TextXAlignment"]
      517 GETIMPORT                        R39 K118 [Enum.TextYAlignment.Top]
      519 SETTABLEKS                       R39 R38 K113 ["TextYAlignment"]
      521 CALL                             R36 2 1
      522 SETTABLEKS                       R36 R35 K8 ["Title"]
      524 CALL                             R32 3 1
      525 SETTABLEKS                       R32 R31 K99 ["TitleSpace"]
      527 CALL                             R28 3 1
      528 SETTABLEKS                       R28 R27 K91 ["LeftSide"]
      530 GETUPVAL                         R28 0
      531 GETTABLEKS                       R28 R28 K22 ["createElement"]
      533 GETUPVAL                         R29 5
      534 NEWTABLE                         R30 8 0
      536 GETIMPORT                        R31 K12 [Vector2.new]
      538 LOADN                            R32 1
      539 LOADN                            R33 0
      540 CALL                             R31 2 1
      541 SETTABLEKS                       R31 R30 K24 ["AnchorPoint"]
      543 GETIMPORT                        R31 K119 [Enum.AutomaticSize.X]
      545 SETTABLEKS                       R31 R30 K26 ["AutomaticSize"]
      547 GETIMPORT                        R31 K82 [UDim2.fromScale]
      549 LOADN                            R32 1
      550 LOADN                            R33 0
      551 CALL                             R31 2 1
      552 SETTABLEKS                       R31 R30 K39 ["Position"]
      554 GETIMPORT                        R31 K102 [UDim2.fromOffset]
      556 LOADN                            R32 0
      557 LOADN                            R33 18
      558 CALL                             R31 2 1
      559 SETTABLEKS                       R31 R30 K41 ["Size"]
      561 GETIMPORT                        R31 K98 [Enum.FillDirection.Horizontal]
      563 SETTABLEKS                       R31 R30 K77 ["Layout"]
      565 GETTABLEKS                       R31 R1 K83 ["ContentsSpacing"]
      567 SETTABLEKS                       R31 R30 K78 ["Spacing"]
      569 GETUPVAL                         R31 0
      570 GETTABLEKS                       R31 R31 K103 ["Change"]
      572 GETTABLEKS                       R31 R31 K104 ["AbsolutePosition"]
      574 NEWCLOSURE                       R32 P2
      575 CAPTURE                          VAL R8
      576 SETTABLE                         R32 R30 R31
      577 DUPTABLE                         R31 K122 [{"PrimaryActionSpace", "Close"}]
      578 GETUPVAL                         R32 0
      579 GETTABLEKS                       R32 R32 K22 ["createElement"]
      581 GETUPVAL                         R33 5
      582 DUPTABLE                         R34 K90 [{"AutomaticSize", "LayoutOrder", "Size"}]
      583 GETIMPORT                        R35 K28 [Enum.AutomaticSize.Y]
      585 SETTABLEKS                       R35 R34 K26 ["AutomaticSize"]
      587 NAMECALL                         R35 R2 K74 ["getNextOrder"]
      589 CALL                             R35 1 1
      590 SETTABLEKS                       R35 R34 K71 ["LayoutOrder"]
      592 GETIMPORT                        R35 K102 [UDim2.fromOffset]
      594 MOVE                             R36 R14
      595 LOADN                            R37 0
      596 CALL                             R35 2 1
      597 SETTABLEKS                       R35 R34 K41 ["Size"]
      599 DUPTABLE                         R35 K123 [{"PrimaryAction"}]
      600 GETTABLEKS                       R37 R0 K18 ["PrimaryAction"]
      602 JUMPIFEQKNIL                     R37 ; [+38]
      604 ADD                              R37 R5 R13
      605 JUMPIFNOTLT                      R37 R7 ; [+35]
      607 GETUPVAL                         R36 0
      608 GETTABLEKS                       R36 R36 K22 ["createElement"]
      610 GETUPVAL                         R37 8
      611 DUPTABLE                         R38 K125 [{["AutomaticSize"], ["Font"], ["LayoutOrder"], ["RichText"] = True, ["Text"], ["TextColor"]}]
      612 GETIMPORT                        R39 K96 [Enum.AutomaticSize.XY]
      614 SETTABLEKS                       R39 R38 K26 ["AutomaticSize"]
      616 GETTABLEKS                       R39 R1 K20 ["PrimaryActionFont"]
      618 SETTABLEKS                       R39 R38 K109 ["Font"]
      620 NAMECALL                         R39 R2 K74 ["getNextOrder"]
      622 CALL                             R39 1 1
      623 SETTABLEKS                       R39 R38 K71 ["LayoutOrder"]
      625 LOADK                            R39 K126 ["<u>%*</u>"]
      626 GETTABLEKS                       R41 R0 K18 ["PrimaryAction"]
      628 GETTABLEKS                       R41 R41 K19 ["Text"]
      630 NAMECALL                         R39 R39 K127 ["format"]
      632 CALL                             R39 2 1
      633 SETTABLEKS                       R39 R38 K19 ["Text"]
      635 GETTABLEKS                       R39 R1 K73 ["TextColor"]
      637 SETTABLEKS                       R39 R38 K73 ["TextColor"]
      639 CALL                             R36 2 1
      640 JUMP                             ; [+1]
      641 LOADNIL                          R36
      642 SETTABLEKS                       R36 R35 K18 ["PrimaryAction"]
      644 CALL                             R32 3 1
      645 SETTABLEKS                       R32 R31 K120 ["PrimaryActionSpace"]
      647 GETTABLEKS                       R32 R0 K128 ["OnClose"]
      649 JUMPIFNOT                        R32 ; [+170]
      650 GETUPVAL                         R32 0
      651 GETTABLEKS                       R32 R32 K22 ["createElement"]
      653 LOADK                            R33 K129 ["TextButton"]
      654 NEWTABLE                         R34 8 0
      656 LOADN                            R35 1
      657 SETTABLEKS                       R35 R34 K130 ["BackgroundTransparency"]
      659 NAMECALL                         R35 R2 K74 ["getNextOrder"]
      661 CALL                             R35 1 1
      662 SETTABLEKS                       R35 R34 K71 ["LayoutOrder"]
      664 GETIMPORT                        R35 K82 [UDim2.fromScale]
      666 LOADN                            R36 1
      667 LOADN                            R37 1
      668 CALL                             R35 2 1
      669 SETTABLEKS                       R35 R34 K41 ["Size"]
      671 LOADK                            R35 K0 [""]
      672 SETTABLEKS                       R35 R34 K19 ["Text"]
      674 GETUPVAL                         R35 0
      675 GETTABLEKS                       R35 R35 K45 ["Event"]
      677 GETTABLEKS                       R35 R35 K131 ["Activated"]
      679 GETTABLEKS                       R36 R0 K128 ["OnClose"]
      681 SETTABLE                         R36 R34 R35
      682 GETUPVAL                         R35 0
      683 GETTABLEKS                       R35 R35 K45 ["Event"]
      685 GETTABLEKS                       R35 R35 K46 ["MouseEnter"]
      687 GETTABLEKS                       R36 R4 K47 ["enable"]
      689 SETTABLE                         R36 R34 R35
      690 GETUPVAL                         R35 0
      691 GETTABLEKS                       R35 R35 K45 ["Event"]
      693 GETTABLEKS                       R35 R35 K48 ["MouseLeave"]
      695 GETTABLEKS                       R36 R4 K49 ["disable"]
      697 SETTABLE                         R36 R34 R35
      698 DUPTABLE                         R35 K135 [{"UIAspectRatioConstraint", "IconContents", "HoverBackground"}]
      699 GETUPVAL                         R36 0
      700 GETTABLEKS                       R36 R36 K22 ["createElement"]
      702 LOADK                            R37 K132 ["UIAspectRatioConstraint"]
      703 CALL                             R36 1 1
      704 SETTABLEKS                       R36 R35 K132 ["UIAspectRatioConstraint"]
      706 GETUPVAL                         R36 0
      707 GETTABLEKS                       R36 R36 K22 ["createElement"]
      709 GETUPVAL                         R37 5
      710 DUPTABLE                         R38 K136 [{"Padding"}]
      711 DUPTABLE                         R39 K139 [{["Left"] = 4, ["Right"] = 4, ["Top"] = 2}]
      712 SETTABLEKS                       R39 R38 K44 ["Padding"]
      714 DUPTABLE                         R39 K140 [{"Icon"}]
      715 GETUPVAL                         R40 0
      716 GETTABLEKS                       R40 R40 K22 ["createElement"]
      718 GETUPVAL                         R41 7
      719 DUPTABLE                         R42 K141 [{"AnchorPoint", "Image", "ImageColor3", "Position", "Size"}]
      720 GETIMPORT                        R43 K12 [Vector2.new]
      722 LOADK                            R44 K23 [0.5]
      723 LOADK                            R45 K23 [0.5]
      724 CALL                             R43 2 1
      725 SETTABLEKS                       R43 R42 K24 ["AnchorPoint"]
      727 GETTABLEKS                       R43 R1 K142 ["CloseButtonImage"]
      729 SETTABLEKS                       R43 R42 K54 ["Image"]
      731 GETTABLEKS                       R43 R1 K73 ["TextColor"]
      733 SETTABLEKS                       R43 R42 K70 ["ImageColor3"]
      735 GETIMPORT                        R43 K82 [UDim2.fromScale]
      737 LOADK                            R44 K23 [0.5]
      738 LOADK                            R45 K23 [0.5]
      739 CALL                             R43 2 1
      740 SETTABLEKS                       R43 R42 K39 ["Position"]
      742 GETIMPORT                        R43 K82 [UDim2.fromScale]
      744 LOADN                            R44 1
      745 LOADN                            R45 1
      746 CALL                             R43 2 1
      747 SETTABLEKS                       R43 R42 K41 ["Size"]
      749 DUPTABLE                         R43 K143 [{"UIAspectRatioConstraint"}]
      750 GETUPVAL                         R44 0
      751 GETTABLEKS                       R44 R44 K22 ["createElement"]
      753 LOADK                            R45 K132 ["UIAspectRatioConstraint"]
      754 CALL                             R44 1 1
      755 SETTABLEKS                       R44 R43 K132 ["UIAspectRatioConstraint"]
      757 CALL                             R40 3 1
      758 SETTABLEKS                       R40 R39 K21 ["Icon"]
      760 CALL                             R36 3 1
      761 SETTABLEKS                       R36 R35 K133 ["IconContents"]
      763 GETTABLEKS                       R36 R4 K29 ["enabled"]
      765 JUMPIFNOT                        R36 ; [+51]
      766 GETUPVAL                         R36 0
      767 GETTABLEKS                       R36 R36 K22 ["createElement"]
      769 GETUPVAL                         R37 5
      770 DUPTABLE                         R38 K146 [{["AnchorPoint"], ["BackgroundColor3"], ["Position"], ["Size"], ["Transparency"], ["ZIndex"] = 0}]
      771 GETIMPORT                        R39 K12 [Vector2.new]
      773 LOADK                            R40 K23 [0.5]
      774 LOADK                            R41 K23 [0.5]
      775 CALL                             R39 2 1
      776 SETTABLEKS                       R39 R38 K24 ["AnchorPoint"]
      778 GETTABLEKS                       R39 R1 K147 ["HoverCircleColor"]
      780 SETTABLEKS                       R39 R38 K33 ["BackgroundColor3"]
      782 GETIMPORT                        R39 K82 [UDim2.fromScale]
      784 LOADK                            R40 K23 [0.5]
      785 LOADK                            R41 K23 [0.5]
      786 CALL                             R39 2 1
      787 SETTABLEKS                       R39 R38 K39 ["Position"]
      789 GETTABLEKS                       R40 R1 K76 ["IconSize"]
      791 GETTABLEKS                       R41 R1 K148 ["HoverCircleAdditionalSize"]
      793 ADD                              R39 R40 R41
      794 SETTABLEKS                       R39 R38 K41 ["Size"]
      796 GETTABLEKS                       R39 R1 K149 ["HoverCircleTransparency"]
      798 SETTABLEKS                       R39 R38 K144 ["Transparency"]
      800 DUPTABLE                         R39 K150 [{"UICorner"}]
      801 GETUPVAL                         R40 0
      802 GETTABLEKS                       R40 R40 K22 ["createElement"]
      804 LOADK                            R41 K51 ["UICorner"]
      805 DUPTABLE                         R42 K58 [{"CornerRadius"}]
      806 GETIMPORT                        R43 K37 [UDim.new]
      808 LOADN                            R44 1
      809 LOADN                            R45 0
      810 CALL                             R43 2 1
      811 SETTABLEKS                       R43 R42 K57 ["CornerRadius"]
      813 CALL                             R40 2 1
      814 SETTABLEKS                       R40 R39 K51 ["UICorner"]
      816 CALL                             R36 3 1
      817 SETTABLEKS                       R36 R35 K134 ["HoverBackground"]
      819 CALL                             R32 3 1
      820 SETTABLEKS                       R32 R31 K121 ["Close"]
      822 CALL                             R28 3 1
      823 SETTABLEKS                       R28 R27 K92 ["RightSide"]
      825 CALL                             R24 3 1
      826 SETTABLEKS                       R24 R23 K8 ["Title"]
      828 GETTABLEKS                       R24 R0 K87 ["Description"]
      830 JUMPIFNOT                        R24 ; [+39]
      831 LOADB                            R24 0
      832 GETTABLEKS                       R25 R0 K151 ["LinkMap"]
      834 JUMPIFNOTEQKNIL                  R25 ; [+35]
      836 GETUPVAL                         R24 0
      837 GETTABLEKS                       R24 R24 K22 ["createElement"]
      839 GETUPVAL                         R25 8
      840 DUPTABLE                         R26 K152 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Text"], ["TextColor"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      841 GETIMPORT                        R27 K28 [Enum.AutomaticSize.Y]
      843 SETTABLEKS                       R27 R26 K26 ["AutomaticSize"]
      845 NAMECALL                         R27 R2 K74 ["getNextOrder"]
      847 CALL                             R27 1 1
      848 SETTABLEKS                       R27 R26 K71 ["LayoutOrder"]
      850 GETIMPORT                        R27 K82 [UDim2.fromScale]
      852 LOADN                            R28 1
      853 LOADN                            R29 0
      854 CALL                             R27 2 1
      855 SETTABLEKS                       R27 R26 K41 ["Size"]
      857 GETTABLEKS                       R27 R0 K87 ["Description"]
      859 SETTABLEKS                       R27 R26 K19 ["Text"]
      861 GETTABLEKS                       R27 R1 K73 ["TextColor"]
      863 SETTABLEKS                       R27 R26 K73 ["TextColor"]
      865 GETIMPORT                        R27 K116 [Enum.TextXAlignment.Left]
      867 SETTABLEKS                       R27 R26 K112 ["TextXAlignment"]
      869 CALL                             R24 2 1
      870 SETTABLEKS                       R24 R23 K87 ["Description"]
      872 GETTABLEKS                       R24 R0 K87 ["Description"]
      874 JUMPIFNOT                        R24 ; [+58]
      875 LOADB                            R24 0
      876 GETTABLEKS                       R25 R0 K151 ["LinkMap"]
      878 JUMPIFEQKNIL                     R25 ; [+54]
      880 GETUPVAL                         R24 0
      881 GETTABLEKS                       R24 R24 K22 ["createElement"]
      883 GETUPVAL                         R25 9
      884 DUPTABLE                         R26 K155 [{["AutomaticSize"], ["HorizontalAlignment"], ["LayoutOrder"], ["LinkMap"], ["Size"], ["Text"], ["TextColor"], ["TextProps"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      885 GETIMPORT                        R27 K28 [Enum.AutomaticSize.Y]
      887 SETTABLEKS                       R27 R26 K26 ["AutomaticSize"]
      889 GETIMPORT                        R27 K156 [Enum.HorizontalAlignment.Left]
      891 SETTABLEKS                       R27 R26 K153 ["HorizontalAlignment"]
      893 NAMECALL                         R27 R2 K74 ["getNextOrder"]
      895 CALL                             R27 1 1
      896 SETTABLEKS                       R27 R26 K71 ["LayoutOrder"]
      898 GETTABLEKS                       R27 R0 K151 ["LinkMap"]
      900 SETTABLEKS                       R27 R26 K151 ["LinkMap"]
      902 GETIMPORT                        R27 K82 [UDim2.fromScale]
      904 LOADN                            R28 1
      905 LOADN                            R29 0
      906 CALL                             R27 2 1
      907 SETTABLEKS                       R27 R26 K41 ["Size"]
      909 GETTABLEKS                       R27 R0 K87 ["Description"]
      911 SETTABLEKS                       R27 R26 K19 ["Text"]
      913 GETTABLEKS                       R27 R1 K73 ["TextColor"]
      915 SETTABLEKS                       R27 R26 K73 ["TextColor"]
      917 DUPTABLE                         R27 K158 [{["Font"], ["TextSize"] = 18, ["TextXAlignment"]}]
      918 GETIMPORT                        R28 K160 [Enum.Font.SourceSans]
      920 SETTABLEKS                       R28 R27 K109 ["Font"]
      922 GETIMPORT                        R28 K116 [Enum.TextXAlignment.Left]
      924 SETTABLEKS                       R28 R27 K112 ["TextXAlignment"]
      926 SETTABLEKS                       R27 R26 K154 ["TextProps"]
      928 GETIMPORT                        R27 K116 [Enum.TextXAlignment.Left]
      930 SETTABLEKS                       R27 R26 K112 ["TextXAlignment"]
      932 CALL                             R24 2 1
      933 SETTABLEKS                       R24 R23 K88 ["DescriptionWithLink"]
      935 CALL                             R20 3 1
      936 SETTABLEKS                       R20 R19 K55 ["Contents"]
      938 CALL                             R16 3 -1
      939 RETURN                           R16 -1

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
       88 DUPCLOSURE                       R11 K24 [PROTO_2]
       89 CAPTURE                          VAL R2
       90 DUPCLOSURE                       R12 K25 [PROTO_6]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R5
      101 RETURN                           R12 1
