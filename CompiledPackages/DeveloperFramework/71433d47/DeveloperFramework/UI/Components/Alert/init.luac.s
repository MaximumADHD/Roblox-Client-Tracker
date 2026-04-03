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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 NEWTABLE                         R5 0 0
       12 CALL                             R3 2 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K1 ["useCallback"]
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
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 GETUPVAL                         R7 1
        3 GETTABLEKS                       R6 R7 K0 ["TextSize"]
        5 MOVE                             R7 R1
        6 GETIMPORT                        R8 K3 [Vector2.new]
        8 LOADK                            R9 K4 [∞]
        9 GETUPVAL                         R11 1
       10 GETTABLEKS                       R10 R11 K0 ["TextSize"]
       12 CALL                             R8 2 -1
       13 NAMECALL                         R3 R3 K5 ["GetTextSize"]
       15 CALL                             R3 -1 1
       16 GETTABLEKS                       R2 R3 K6 ["X"]
       18 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
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
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K6 ["new"]
       20 CALL                             R2 0 1
       21 GETUPVAL                         R3 3
       22 LOADB                            R4 0
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 3
       25 LOADB                            R5 0
       26 CALL                             R4 1 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K7 ["useState"]
       30 LOADN                            R6 0
       31 CALL                             R5 1 2
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K7 ["useState"]
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
       58 GETTABLEKS                       R10 R13 K15 ["X"]
       60 LOADB                            R11 0
       61 GETTABLEKS                       R12 R0 K16 ["ShortTitle"]
       63 JUMPIFEQKNIL                     R12 ; [+6]
       65 ADD                              R12 R5 R10
       66 JUMPIFLT                         R7 R12 ; [+2]
       68 LOADB                            R11 0 +1
       69 LOADB                            R11 1
       70 JUMPIFNOT                        R11 ; [+3]
       71 GETTABLEKS                       R12 R0 K16 ["ShortTitle"]
       73 JUMP                             ; [+2]
       74 GETTABLEKS                       R12 R0 K8 ["Title"]
       76 JUMPIFNOT                        R11 ; [+27]
       77 GETTABLEKS                       R15 R0 K16 ["ShortTitle"]
       79 FASTCALL2K                       ASSERT R15 K17 ; [+4]
       81 LOADK                            R16 K17 ["ShortTitle not specified, but useShortTitle is true"]
       82 GETIMPORT                        R14 K3 [assert]
       84 CALL                             R14 2 1
       85 GETTABLEKS                       R15 R1 K9 ["TitleFont"]
       87 GETUPVAL                         R16 4
       88 MOVE                             R18 R14
       89 GETTABLEKS                       R19 R1 K10 ["TextSize"]
       91 MOVE                             R20 R15
       92 GETIMPORT                        R21 K12 [Vector2.new]
       94 LOADK                            R22 K13 [∞]
       95 GETTABLEKS                       R23 R1 K10 ["TextSize"]
       97 CALL                             R21 2 -1
       98 NAMECALL                         R16 R16 K14 ["GetTextSize"]
      100 CALL                             R16 -1 1
      101 GETTABLEKS                       R13 R16 K15 ["X"]
      103 JUMP                             ; [+1]
      104 MOVE                             R13 R10
      105 GETTABLEKS                       R15 R0 K18 ["PrimaryAction"]
      107 JUMPIFNOT                        R15 ; [+23]
      108 GETTABLEKS                       R16 R0 K18 ["PrimaryAction"]
      110 GETTABLEKS                       R15 R16 K19 ["Text"]
      112 GETTABLEKS                       R16 R1 K20 ["PrimaryActionFont"]
      114 GETUPVAL                         R17 4
      115 MOVE                             R19 R15
      116 GETTABLEKS                       R20 R1 K10 ["TextSize"]
      118 MOVE                             R21 R16
      119 GETIMPORT                        R22 K12 [Vector2.new]
      121 LOADK                            R23 K13 [∞]
      122 GETTABLEKS                       R24 R1 K10 ["TextSize"]
      124 CALL                             R22 2 -1
      125 NAMECALL                         R17 R17 K14 ["GetTextSize"]
      127 CALL                             R17 -1 1
      128 GETTABLEKS                       R14 R17 K15 ["X"]
      130 JUMP                             ; [+1]
      131 LOADN                            R14 0
      132 GETTABLEKS                       R16 R1 K21 ["Icon"]
      134 JUMPIFNOTEQKNIL                  R16 ; [+2]
      136 LOADB                            R15 0 +1
      137 LOADB                            R15 1
      138 GETUPVAL                         R17 0
      139 GETTABLEKS                       R16 R17 K22 ["createElement"]
      141 GETUPVAL                         R17 5
      142 NEWTABLE                         R18 16 0
      144 GETIMPORT                        R19 K12 [Vector2.new]
      146 LOADK                            R20 K23 [0.5]
      147 LOADN                            R21 0
      148 CALL                             R19 2 1
      149 SETTABLEKS                       R19 R18 K24 ["AnchorPoint"]
      151 GETIMPORT                        R19 K28 [Enum.AutomaticSize.Y]
      153 SETTABLEKS                       R19 R18 K26 ["AutomaticSize"]
      155 GETTABLEKS                       R20 R3 K29 ["enabled"]
      157 JUMPIFNOT                        R20 ; [+12]
      158 GETTABLEKS                       R20 R4 K29 ["enabled"]
      160 JUMPIF                           R20 ; [+9]
      161 GETUPVAL                         R20 6
      162 GETTABLEKS                       R19 R20 K30 ["darker"]
      164 GETTABLEKS                       R20 R1 K31 ["BackgroundColor"]
      166 GETTABLEKS                       R21 R1 K32 ["BackgroundColorHoverDarkerMultiplier"]
      168 CALL                             R19 2 1
      169 JUMP                             ; [+2]
      170 GETTABLEKS                       R19 R1 K31 ["BackgroundColor"]
      172 SETTABLEKS                       R19 R18 K33 ["BackgroundColor3"]
      174 GETIMPORT                        R19 K35 [UDim2.new]
      176 GETIMPORT                        R20 K37 [UDim.new]
      178 LOADK                            R21 K23 [0.5]
      179 LOADN                            R22 0
      180 CALL                             R20 2 1
      181 GETTABLEKS                       R21 R1 K38 ["TopPadding"]
      183 CALL                             R19 2 1
      184 SETTABLEKS                       R19 R18 K39 ["Position"]
      186 GETIMPORT                        R19 K35 [UDim2.new]
      188 GETIMPORT                        R21 K37 [UDim.new]
      190 LOADN                            R22 1
      191 LOADN                            R23 0
      192 CALL                             R21 2 1
      193 GETTABLEKS                       R22 R1 K40 ["HorizontalPadding"]
      195 SUB                              R20 R21 R22
      196 GETIMPORT                        R21 K37 [UDim.new]
      198 LOADN                            R22 0
      199 LOADN                            R23 0
      200 CALL                             R21 2 -1
      201 CALL                             R19 -1 1
      202 SETTABLEKS                       R19 R18 K41 ["Size"]
      204 GETTABLEKS                       R19 R0 K42 ["ZIndex"]
      206 SETTABLEKS                       R19 R18 K42 ["ZIndex"]
      208 GETTABLEKS                       R19 R1 K43 ["InnerPadding"]
      210 SETTABLEKS                       R19 R18 K44 ["Padding"]
      212 GETUPVAL                         R21 0
      213 GETTABLEKS                       R20 R21 K45 ["Event"]
      215 GETTABLEKS                       R19 R20 K46 ["MouseEnter"]
      217 GETTABLEKS                       R21 R0 K18 ["PrimaryAction"]
      219 JUMPIFNOT                        R21 ; [+3]
      220 GETTABLEKS                       R20 R3 K47 ["enable"]
      222 JUMP                             ; [+1]
      223 LOADNIL                          R20
      224 SETTABLE                         R20 R18 R19
      225 GETUPVAL                         R21 0
      226 GETTABLEKS                       R20 R21 K45 ["Event"]
      228 GETTABLEKS                       R19 R20 K48 ["MouseLeave"]
      230 GETTABLEKS                       R21 R0 K18 ["PrimaryAction"]
      232 JUMPIFNOT                        R21 ; [+3]
      233 GETTABLEKS                       R20 R3 K49 ["disable"]
      235 JUMP                             ; [+1]
      236 LOADNIL                          R20
      237 SETTABLE                         R20 R18 R19
      238 GETTABLEKS                       R20 R0 K18 ["PrimaryAction"]
      240 JUMPIFNOT                        R20 ; [+5]
      241 GETTABLEKS                       R20 R0 K18 ["PrimaryAction"]
      243 GETTABLEKS                       R19 R20 K50 ["OnClick"]
      245 JUMP                             ; [+1]
      246 LOADNIL                          R19
      247 SETTABLEKS                       R19 R18 K50 ["OnClick"]
      249 DUPTABLE                         R19 K56 [{"UICorner", "UISizeConstraint", "UIStroke", "Image", "Contents"}]
      250 GETUPVAL                         R21 0
      251 GETTABLEKS                       R20 R21 K22 ["createElement"]
      253 LOADK                            R21 K51 ["UICorner"]
      254 DUPTABLE                         R22 K58 [{"CornerRadius"}]
      255 GETTABLEKS                       R23 R1 K57 ["CornerRadius"]
      257 SETTABLEKS                       R23 R22 K57 ["CornerRadius"]
      259 CALL                             R20 2 1
      260 SETTABLEKS                       R20 R19 K51 ["UICorner"]
      262 GETUPVAL                         R21 0
      263 GETTABLEKS                       R20 R21 K22 ["createElement"]
      265 LOADK                            R21 K52 ["UISizeConstraint"]
      266 DUPTABLE                         R22 K60 [{"MaxSize"}]
      267 GETIMPORT                        R23 K12 [Vector2.new]
      269 GETTABLEKS                       R24 R1 K61 ["MaxWidth"]
      271 LOADK                            R25 K13 [∞]
      272 CALL                             R23 2 1
      273 SETTABLEKS                       R23 R22 K59 ["MaxSize"]
      275 CALL                             R20 2 1
      276 SETTABLEKS                       R20 R19 K52 ["UISizeConstraint"]
      278 GETUPVAL                         R21 0
      279 GETTABLEKS                       R20 R21 K22 ["createElement"]
      281 LOADK                            R21 K53 ["UIStroke"]
      282 DUPTABLE                         R22 K65 [{"ApplyStrokeMode", "Color", "Thickness"}]
      283 GETIMPORT                        R23 K67 [Enum.ApplyStrokeMode.Border]
      285 SETTABLEKS                       R23 R22 K62 ["ApplyStrokeMode"]
      287 GETTABLEKS                       R23 R1 K68 ["StrokeColor"]
      289 SETTABLEKS                       R23 R22 K63 ["Color"]
      291 GETTABLEKS                       R23 R1 K69 ["StrokeThickness"]
      293 SETTABLEKS                       R23 R22 K64 ["Thickness"]
      295 CALL                             R20 2 1
      296 SETTABLEKS                       R20 R19 K53 ["UIStroke"]
      298 MOVE                             R20 R15
      299 JUMPIFNOT                        R20 ; [+27]
      300 GETUPVAL                         R21 0
      301 GETTABLEKS                       R20 R21 K22 ["createElement"]
      303 GETUPVAL                         R21 7
      304 DUPTABLE                         R22 K72 [{"Image", "ImageColor3", "LayoutOrder", "Position", "Size"}]
      305 GETTABLEKS                       R23 R1 K21 ["Icon"]
      307 SETTABLEKS                       R23 R22 K54 ["Image"]
      309 GETTABLEKS                       R23 R1 K73 ["TextColor"]
      311 SETTABLEKS                       R23 R22 K70 ["ImageColor3"]
      313 NAMECALL                         R23 R2 K74 ["getNextOrder"]
      315 CALL                             R23 1 1
      316 SETTABLEKS                       R23 R22 K71 ["LayoutOrder"]
      318 GETTABLEKS                       R23 R1 K75 ["IconPosition"]
      320 SETTABLEKS                       R23 R22 K39 ["Position"]
      322 GETTABLEKS                       R23 R1 K76 ["IconSize"]
      324 SETTABLEKS                       R23 R22 K41 ["Size"]
      326 CALL                             R20 2 1
      327 SETTABLEKS                       R20 R19 K54 ["Image"]
      329 GETUPVAL                         R21 0
      330 GETTABLEKS                       R20 R21 K22 ["createElement"]
      332 GETUPVAL                         R21 5
      333 DUPTABLE                         R22 K79 [{"AnchorPoint", "AutomaticSize", "LayoutOrder", "Position", "Size", "Layout", "Spacing"}]
      334 GETIMPORT                        R23 K12 [Vector2.new]
      336 LOADN                            R24 1
      337 LOADN                            R25 0
      338 CALL                             R23 2 1
      339 SETTABLEKS                       R23 R22 K24 ["AnchorPoint"]
      341 GETIMPORT                        R23 K28 [Enum.AutomaticSize.Y]
      343 SETTABLEKS                       R23 R22 K26 ["AutomaticSize"]
      345 NAMECALL                         R23 R2 K74 ["getNextOrder"]
      347 CALL                             R23 1 1
      348 SETTABLEKS                       R23 R22 K71 ["LayoutOrder"]
      350 GETIMPORT                        R23 K81 [UDim2.fromScale]
      352 LOADN                            R24 1
      353 LOADN                            R25 0
      354 CALL                             R23 2 1
      355 SETTABLEKS                       R23 R22 K39 ["Position"]
      357 GETIMPORT                        R23 K35 [UDim2.new]
      359 GETIMPORT                        R25 K37 [UDim.new]
      361 LOADN                            R26 1
      362 LOADN                            R27 0
      363 CALL                             R25 2 1
      364 JUMPIFNOT                        R15 ; [+12]
      365 GETTABLEKS                       R28 R1 K76 ["IconSize"]
      367 GETTABLEKS                       R27 R28 K15 ["X"]
      369 GETIMPORT                        R28 K37 [UDim.new]
      371 LOADN                            R29 0
      372 GETTABLEKS                       R30 R1 K82 ["ContentsSpacing"]
      374 CALL                             R28 2 1
      375 ADD                              R26 R27 R28
      376 JUMP                             ; [+3]
      377 GETIMPORT                        R26 K37 [UDim.new]
      379 CALL                             R26 0 1
      380 SUB                              R24 R25 R26
      381 GETIMPORT                        R25 K37 [UDim.new]
      383 LOADN                            R26 0
      384 LOADN                            R27 0
      385 CALL                             R25 2 -1
      386 CALL                             R23 -1 1
      387 SETTABLEKS                       R23 R22 K41 ["Size"]
      389 GETIMPORT                        R23 K85 [Enum.FillDirection.Vertical]
      391 SETTABLEKS                       R23 R22 K77 ["Layout"]
      393 LOADN                            R23 2
      394 SETTABLEKS                       R23 R22 K78 ["Spacing"]
      396 DUPTABLE                         R23 K88 [{"Title", "Description", "DescriptionWithLink"}]
      397 GETUPVAL                         R25 0
      398 GETTABLEKS                       R24 R25 K22 ["createElement"]
      400 GETUPVAL                         R25 5
      401 DUPTABLE                         R26 K89 [{"AutomaticSize", "LayoutOrder", "Size"}]
      402 GETIMPORT                        R27 K28 [Enum.AutomaticSize.Y]
      404 SETTABLEKS                       R27 R26 K26 ["AutomaticSize"]
      406 NAMECALL                         R27 R2 K74 ["getNextOrder"]
      408 CALL                             R27 1 1
      409 SETTABLEKS                       R27 R26 K71 ["LayoutOrder"]
      411 GETIMPORT                        R27 K81 [UDim2.fromScale]
      413 LOADN                            R28 1
      414 LOADN                            R29 0
      415 CALL                             R27 2 1
      416 SETTABLEKS                       R27 R26 K41 ["Size"]
      418 DUPTABLE                         R27 K92 [{"LeftSide", "RightSide"}]
      419 GETUPVAL                         R29 0
      420 GETTABLEKS                       R28 R29 K22 ["createElement"]
      422 GETUPVAL                         R29 5
      423 DUPTABLE                         R30 K93 [{"AutomaticSize", "Layout", "Spacing"}]
      424 GETIMPORT                        R31 K95 [Enum.AutomaticSize.XY]
      426 SETTABLEKS                       R31 R30 K26 ["AutomaticSize"]
      428 GETIMPORT                        R31 K97 [Enum.FillDirection.Horizontal]
      430 SETTABLEKS                       R31 R30 K77 ["Layout"]
      432 GETTABLEKS                       R31 R1 K82 ["ContentsSpacing"]
      434 SETTABLEKS                       R31 R30 K78 ["Spacing"]
      436 DUPTABLE                         R31 K99 [{"TitleSpace"}]
      437 GETUPVAL                         R33 0
      438 GETTABLEKS                       R32 R33 K22 ["createElement"]
      440 GETUPVAL                         R33 5
      441 NEWTABLE                         R34 4 0
      443 GETIMPORT                        R35 K95 [Enum.AutomaticSize.XY]
      445 SETTABLEKS                       R35 R34 K26 ["AutomaticSize"]
      447 NAMECALL                         R35 R2 K74 ["getNextOrder"]
      449 CALL                             R35 1 1
      450 SETTABLEKS                       R35 R34 K71 ["LayoutOrder"]
      452 GETIMPORT                        R35 K101 [UDim2.fromOffset]
      454 LOADN                            R36 0
      455 LOADN                            R37 0
      456 CALL                             R35 2 1
      457 SETTABLEKS                       R35 R34 K41 ["Size"]
      459 GETUPVAL                         R37 0
      460 GETTABLEKS                       R36 R37 K102 ["Change"]
      462 GETTABLEKS                       R35 R36 K103 ["AbsolutePosition"]
      464 NEWCLOSURE                       R36 P1
      465 CAPTURE                          VAL R6
      466 SETTABLE                         R36 R34 R35
      467 DUPTABLE                         R35 K105 [{"MaxSizeContraint", "Title"}]
      468 GETUPVAL                         R37 0
      469 GETTABLEKS                       R36 R37 K22 ["createElement"]
      471 LOADK                            R37 K52 ["UISizeConstraint"]
      472 DUPTABLE                         R38 K107 [{"MaxSize", "MinSize"}]
      473 GETIMPORT                        R39 K12 [Vector2.new]
      475 MOVE                             R40 R10
      476 LOADK                            R41 K13 [∞]
      477 CALL                             R39 2 1
      478 SETTABLEKS                       R39 R38 K59 ["MaxSize"]
      480 GETIMPORT                        R39 K12 [Vector2.new]
      482 LOADN                            R40 0
      483 LOADN                            R41 0
      484 CALL                             R39 2 1
      485 SETTABLEKS                       R39 R38 K106 ["MinSize"]
      487 CALL                             R36 2 1
      488 SETTABLEKS                       R36 R35 K104 ["MaxSizeContraint"]
      490 GETUPVAL                         R37 0
      491 GETTABLEKS                       R36 R37 K22 ["createElement"]
      493 GETUPVAL                         R37 8
      494 DUPTABLE                         R38 K112 [{"Font", "Text", "TextColor", "TextSize", "AutomaticSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      495 GETTABLEKS                       R39 R1 K9 ["TitleFont"]
      497 SETTABLEKS                       R39 R38 K108 ["Font"]
      499 SETTABLEKS                       R12 R38 K19 ["Text"]
      501 GETTABLEKS                       R39 R1 K73 ["TextColor"]
      503 SETTABLEKS                       R39 R38 K73 ["TextColor"]
      505 GETTABLEKS                       R39 R1 K10 ["TextSize"]
      507 SETTABLEKS                       R39 R38 K10 ["TextSize"]
      509 GETIMPORT                        R39 K95 [Enum.AutomaticSize.XY]
      511 SETTABLEKS                       R39 R38 K26 ["AutomaticSize"]
      513 LOADB                            R39 1
      514 SETTABLEKS                       R39 R38 K109 ["TextWrapped"]
      516 GETIMPORT                        R39 K114 [Enum.TextXAlignment.Left]
      518 SETTABLEKS                       R39 R38 K110 ["TextXAlignment"]
      520 GETUPVAL                         R40 9
      521 CALL                             R40 0 1
      522 JUMPIFNOT                        R40 ; [+3]
      523 GETIMPORT                        R39 K116 [Enum.TextYAlignment.Top]
      525 JUMP                             ; [+1]
      526 LOADNIL                          R39
      527 SETTABLEKS                       R39 R38 K111 ["TextYAlignment"]
      529 CALL                             R36 2 1
      530 SETTABLEKS                       R36 R35 K8 ["Title"]
      532 CALL                             R32 3 1
      533 SETTABLEKS                       R32 R31 K98 ["TitleSpace"]
      535 CALL                             R28 3 1
      536 SETTABLEKS                       R28 R27 K90 ["LeftSide"]
      538 GETUPVAL                         R29 0
      539 GETTABLEKS                       R28 R29 K22 ["createElement"]
      541 GETUPVAL                         R29 5
      542 NEWTABLE                         R30 8 0
      544 GETIMPORT                        R31 K12 [Vector2.new]
      546 LOADN                            R32 1
      547 LOADN                            R33 0
      548 CALL                             R31 2 1
      549 SETTABLEKS                       R31 R30 K24 ["AnchorPoint"]
      551 GETIMPORT                        R31 K117 [Enum.AutomaticSize.X]
      553 SETTABLEKS                       R31 R30 K26 ["AutomaticSize"]
      555 GETIMPORT                        R31 K81 [UDim2.fromScale]
      557 LOADN                            R32 1
      558 LOADN                            R33 0
      559 CALL                             R31 2 1
      560 SETTABLEKS                       R31 R30 K39 ["Position"]
      562 GETIMPORT                        R31 K101 [UDim2.fromOffset]
      564 LOADN                            R32 0
      565 LOADN                            R33 18
      566 CALL                             R31 2 1
      567 SETTABLEKS                       R31 R30 K41 ["Size"]
      569 GETIMPORT                        R31 K97 [Enum.FillDirection.Horizontal]
      571 SETTABLEKS                       R31 R30 K77 ["Layout"]
      573 GETTABLEKS                       R31 R1 K82 ["ContentsSpacing"]
      575 SETTABLEKS                       R31 R30 K78 ["Spacing"]
      577 GETUPVAL                         R33 0
      578 GETTABLEKS                       R32 R33 K102 ["Change"]
      580 GETTABLEKS                       R31 R32 K103 ["AbsolutePosition"]
      582 NEWCLOSURE                       R32 P2
      583 CAPTURE                          VAL R8
      584 SETTABLE                         R32 R30 R31
      585 DUPTABLE                         R31 K120 [{"PrimaryActionSpace", "Close"}]
      586 GETUPVAL                         R33 0
      587 GETTABLEKS                       R32 R33 K22 ["createElement"]
      589 GETUPVAL                         R33 5
      590 DUPTABLE                         R34 K89 [{"AutomaticSize", "LayoutOrder", "Size"}]
      591 GETIMPORT                        R35 K28 [Enum.AutomaticSize.Y]
      593 SETTABLEKS                       R35 R34 K26 ["AutomaticSize"]
      595 NAMECALL                         R35 R2 K74 ["getNextOrder"]
      597 CALL                             R35 1 1
      598 SETTABLEKS                       R35 R34 K71 ["LayoutOrder"]
      600 GETIMPORT                        R35 K101 [UDim2.fromOffset]
      602 MOVE                             R36 R14
      603 LOADN                            R37 0
      604 CALL                             R35 2 1
      605 SETTABLEKS                       R35 R34 K41 ["Size"]
      607 DUPTABLE                         R35 K121 [{"PrimaryAction"}]
      608 GETTABLEKS                       R37 R0 K18 ["PrimaryAction"]
      610 JUMPIFEQKNIL                     R37 ; [+42]
      612 ADD                              R37 R5 R13
      613 JUMPIFNOTLT                      R37 R7 ; [+39]
      615 GETUPVAL                         R37 0
      616 GETTABLEKS                       R36 R37 K22 ["createElement"]
      618 GETUPVAL                         R37 8
      619 DUPTABLE                         R38 K123 [{"AutomaticSize", "Font", "LayoutOrder", "RichText", "Text", "TextColor"}]
      620 GETIMPORT                        R39 K95 [Enum.AutomaticSize.XY]
      622 SETTABLEKS                       R39 R38 K26 ["AutomaticSize"]
      624 GETTABLEKS                       R39 R1 K20 ["PrimaryActionFont"]
      626 SETTABLEKS                       R39 R38 K108 ["Font"]
      628 NAMECALL                         R39 R2 K74 ["getNextOrder"]
      630 CALL                             R39 1 1
      631 SETTABLEKS                       R39 R38 K71 ["LayoutOrder"]
      633 LOADB                            R39 1
      634 SETTABLEKS                       R39 R38 K122 ["RichText"]
      636 LOADK                            R40 K124 ["<u>%*</u>"]
      637 GETTABLEKS                       R43 R0 K18 ["PrimaryAction"]
      639 GETTABLEKS                       R42 R43 K19 ["Text"]
      641 NAMECALL                         R40 R40 K125 ["format"]
      643 CALL                             R40 2 1
      644 MOVE                             R39 R40
      645 SETTABLEKS                       R39 R38 K19 ["Text"]
      647 GETTABLEKS                       R39 R1 K73 ["TextColor"]
      649 SETTABLEKS                       R39 R38 K73 ["TextColor"]
      651 CALL                             R36 2 1
      652 JUMP                             ; [+1]
      653 LOADNIL                          R36
      654 SETTABLEKS                       R36 R35 K18 ["PrimaryAction"]
      656 CALL                             R32 3 1
      657 SETTABLEKS                       R32 R31 K118 ["PrimaryActionSpace"]
      659 GETTABLEKS                       R32 R0 K126 ["OnClose"]
      661 JUMPIFNOT                        R32 ; [+182]
      662 GETUPVAL                         R33 0
      663 GETTABLEKS                       R32 R33 K22 ["createElement"]
      665 LOADK                            R33 K127 ["TextButton"]
      666 NEWTABLE                         R34 8 0
      668 LOADN                            R35 1
      669 SETTABLEKS                       R35 R34 K128 ["BackgroundTransparency"]
      671 NAMECALL                         R35 R2 K74 ["getNextOrder"]
      673 CALL                             R35 1 1
      674 SETTABLEKS                       R35 R34 K71 ["LayoutOrder"]
      676 GETIMPORT                        R35 K81 [UDim2.fromScale]
      678 LOADN                            R36 1
      679 LOADN                            R37 1
      680 CALL                             R35 2 1
      681 SETTABLEKS                       R35 R34 K41 ["Size"]
      683 LOADK                            R35 K0 [""]
      684 SETTABLEKS                       R35 R34 K19 ["Text"]
      686 GETUPVAL                         R37 0
      687 GETTABLEKS                       R36 R37 K45 ["Event"]
      689 GETTABLEKS                       R35 R36 K129 ["Activated"]
      691 GETTABLEKS                       R36 R0 K126 ["OnClose"]
      693 SETTABLE                         R36 R34 R35
      694 GETUPVAL                         R37 0
      695 GETTABLEKS                       R36 R37 K45 ["Event"]
      697 GETTABLEKS                       R35 R36 K46 ["MouseEnter"]
      699 GETTABLEKS                       R36 R4 K47 ["enable"]
      701 SETTABLE                         R36 R34 R35
      702 GETUPVAL                         R37 0
      703 GETTABLEKS                       R36 R37 K45 ["Event"]
      705 GETTABLEKS                       R35 R36 K48 ["MouseLeave"]
      707 GETTABLEKS                       R36 R4 K49 ["disable"]
      709 SETTABLE                         R36 R34 R35
      710 DUPTABLE                         R35 K133 [{"UIAspectRatioConstraint", "IconContents", "HoverBackground"}]
      711 GETUPVAL                         R37 0
      712 GETTABLEKS                       R36 R37 K22 ["createElement"]
      714 LOADK                            R37 K130 ["UIAspectRatioConstraint"]
      715 CALL                             R36 1 1
      716 SETTABLEKS                       R36 R35 K130 ["UIAspectRatioConstraint"]
      718 GETUPVAL                         R37 0
      719 GETTABLEKS                       R36 R37 K22 ["createElement"]
      721 GETUPVAL                         R37 5
      722 DUPTABLE                         R38 K134 [{"Padding"}]
      723 DUPTABLE                         R39 K136 [{"Left", "Right", "Top"}]
      724 LOADN                            R40 4
      725 SETTABLEKS                       R40 R39 K113 ["Left"]
      727 LOADN                            R40 4
      728 SETTABLEKS                       R40 R39 K135 ["Right"]
      730 LOADN                            R40 2
      731 SETTABLEKS                       R40 R39 K115 ["Top"]
      733 SETTABLEKS                       R39 R38 K44 ["Padding"]
      735 DUPTABLE                         R39 K137 [{"Icon"}]
      736 GETUPVAL                         R41 0
      737 GETTABLEKS                       R40 R41 K22 ["createElement"]
      739 GETUPVAL                         R41 7
      740 DUPTABLE                         R42 K138 [{"AnchorPoint", "Image", "ImageColor3", "Position", "Size"}]
      741 GETIMPORT                        R43 K12 [Vector2.new]
      743 LOADK                            R44 K23 [0.5]
      744 LOADK                            R45 K23 [0.5]
      745 CALL                             R43 2 1
      746 SETTABLEKS                       R43 R42 K24 ["AnchorPoint"]
      748 GETTABLEKS                       R43 R1 K139 ["CloseButtonImage"]
      750 SETTABLEKS                       R43 R42 K54 ["Image"]
      752 GETTABLEKS                       R43 R1 K73 ["TextColor"]
      754 SETTABLEKS                       R43 R42 K70 ["ImageColor3"]
      756 GETIMPORT                        R43 K81 [UDim2.fromScale]
      758 LOADK                            R44 K23 [0.5]
      759 LOADK                            R45 K23 [0.5]
      760 CALL                             R43 2 1
      761 SETTABLEKS                       R43 R42 K39 ["Position"]
      763 GETIMPORT                        R43 K81 [UDim2.fromScale]
      765 LOADN                            R44 1
      766 LOADN                            R45 1
      767 CALL                             R43 2 1
      768 SETTABLEKS                       R43 R42 K41 ["Size"]
      770 DUPTABLE                         R43 K140 [{"UIAspectRatioConstraint"}]
      771 GETUPVAL                         R45 0
      772 GETTABLEKS                       R44 R45 K22 ["createElement"]
      774 LOADK                            R45 K130 ["UIAspectRatioConstraint"]
      775 CALL                             R44 1 1
      776 SETTABLEKS                       R44 R43 K130 ["UIAspectRatioConstraint"]
      778 CALL                             R40 3 1
      779 SETTABLEKS                       R40 R39 K21 ["Icon"]
      781 CALL                             R36 3 1
      782 SETTABLEKS                       R36 R35 K131 ["IconContents"]
      784 GETTABLEKS                       R36 R4 K29 ["enabled"]
      786 JUMPIFNOT                        R36 ; [+54]
      787 GETUPVAL                         R37 0
      788 GETTABLEKS                       R36 R37 K22 ["createElement"]
      790 GETUPVAL                         R37 5
      791 DUPTABLE                         R38 K142 [{"AnchorPoint", "BackgroundColor3", "Position", "Size", "Transparency", "ZIndex"}]
      792 GETIMPORT                        R39 K12 [Vector2.new]
      794 LOADK                            R40 K23 [0.5]
      795 LOADK                            R41 K23 [0.5]
      796 CALL                             R39 2 1
      797 SETTABLEKS                       R39 R38 K24 ["AnchorPoint"]
      799 GETTABLEKS                       R39 R1 K143 ["HoverCircleColor"]
      801 SETTABLEKS                       R39 R38 K33 ["BackgroundColor3"]
      803 GETIMPORT                        R39 K81 [UDim2.fromScale]
      805 LOADK                            R40 K23 [0.5]
      806 LOADK                            R41 K23 [0.5]
      807 CALL                             R39 2 1
      808 SETTABLEKS                       R39 R38 K39 ["Position"]
      810 GETTABLEKS                       R40 R1 K76 ["IconSize"]
      812 GETTABLEKS                       R41 R1 K144 ["HoverCircleAdditionalSize"]
      814 ADD                              R39 R40 R41
      815 SETTABLEKS                       R39 R38 K41 ["Size"]
      817 GETTABLEKS                       R39 R1 K145 ["HoverCircleTransparency"]
      819 SETTABLEKS                       R39 R38 K141 ["Transparency"]
      821 LOADN                            R39 0
      822 SETTABLEKS                       R39 R38 K42 ["ZIndex"]
      824 DUPTABLE                         R39 K146 [{"UICorner"}]
      825 GETUPVAL                         R41 0
      826 GETTABLEKS                       R40 R41 K22 ["createElement"]
      828 LOADK                            R41 K51 ["UICorner"]
      829 DUPTABLE                         R42 K58 [{"CornerRadius"}]
      830 GETIMPORT                        R43 K37 [UDim.new]
      832 LOADN                            R44 1
      833 LOADN                            R45 0
      834 CALL                             R43 2 1
      835 SETTABLEKS                       R43 R42 K57 ["CornerRadius"]
      837 CALL                             R40 2 1
      838 SETTABLEKS                       R40 R39 K51 ["UICorner"]
      840 CALL                             R36 3 1
      841 SETTABLEKS                       R36 R35 K132 ["HoverBackground"]
      843 CALL                             R32 3 1
      844 SETTABLEKS                       R32 R31 K119 ["Close"]
      846 CALL                             R28 3 1
      847 SETTABLEKS                       R28 R27 K91 ["RightSide"]
      849 CALL                             R24 3 1
      850 SETTABLEKS                       R24 R23 K8 ["Title"]
      852 GETTABLEKS                       R24 R0 K86 ["Description"]
      854 JUMPIFNOT                        R24 ; [+45]
      855 GETUPVAL                         R25 9
      856 CALL                             R25 0 1
      857 JUMPIFNOT                        R25 ; [+5]
      858 LOADB                            R24 0
      859 GETTABLEKS                       R25 R0 K147 ["LinkMap"]
      861 JUMPIFNOTEQKNIL                  R25 ; [+38]
      863 GETUPVAL                         R25 0
      864 GETTABLEKS                       R24 R25 K22 ["createElement"]
      866 GETUPVAL                         R25 8
      867 DUPTABLE                         R26 K148 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextWrapped", "TextXAlignment"}]
      868 GETIMPORT                        R27 K28 [Enum.AutomaticSize.Y]
      870 SETTABLEKS                       R27 R26 K26 ["AutomaticSize"]
      872 NAMECALL                         R27 R2 K74 ["getNextOrder"]
      874 CALL                             R27 1 1
      875 SETTABLEKS                       R27 R26 K71 ["LayoutOrder"]
      877 GETIMPORT                        R27 K81 [UDim2.fromScale]
      879 LOADN                            R28 1
      880 LOADN                            R29 0
      881 CALL                             R27 2 1
      882 SETTABLEKS                       R27 R26 K41 ["Size"]
      884 GETTABLEKS                       R27 R0 K86 ["Description"]
      886 SETTABLEKS                       R27 R26 K19 ["Text"]
      888 GETTABLEKS                       R27 R1 K73 ["TextColor"]
      890 SETTABLEKS                       R27 R26 K73 ["TextColor"]
      892 LOADB                            R27 1
      893 SETTABLEKS                       R27 R26 K109 ["TextWrapped"]
      895 GETIMPORT                        R27 K114 [Enum.TextXAlignment.Left]
      897 SETTABLEKS                       R27 R26 K110 ["TextXAlignment"]
      899 CALL                             R24 2 1
      900 SETTABLEKS                       R24 R23 K86 ["Description"]
      902 GETTABLEKS                       R24 R0 K86 ["Description"]
      904 JUMPIFNOT                        R24 ; [+67]
      905 GETUPVAL                         R24 9
      906 CALL                             R24 0 1
      907 JUMPIFNOT                        R24 ; [+64]
      908 LOADB                            R24 0
      909 GETTABLEKS                       R25 R0 K147 ["LinkMap"]
      911 JUMPIFEQKNIL                     R25 ; [+60]
      913 GETUPVAL                         R25 0
      914 GETTABLEKS                       R24 R25 K22 ["createElement"]
      916 GETUPVAL                         R25 10
      917 DUPTABLE                         R26 K151 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "LinkMap", "Size", "Text", "TextColor", "TextProps", "TextWrapped", "TextXAlignment"}]
      918 GETIMPORT                        R27 K28 [Enum.AutomaticSize.Y]
      920 SETTABLEKS                       R27 R26 K26 ["AutomaticSize"]
      922 GETIMPORT                        R27 K152 [Enum.HorizontalAlignment.Left]
      924 SETTABLEKS                       R27 R26 K149 ["HorizontalAlignment"]
      926 NAMECALL                         R27 R2 K74 ["getNextOrder"]
      928 CALL                             R27 1 1
      929 SETTABLEKS                       R27 R26 K71 ["LayoutOrder"]
      931 GETTABLEKS                       R27 R0 K147 ["LinkMap"]
      933 SETTABLEKS                       R27 R26 K147 ["LinkMap"]
      935 GETIMPORT                        R27 K81 [UDim2.fromScale]
      937 LOADN                            R28 1
      938 LOADN                            R29 0
      939 CALL                             R27 2 1
      940 SETTABLEKS                       R27 R26 K41 ["Size"]
      942 GETTABLEKS                       R27 R0 K86 ["Description"]
      944 SETTABLEKS                       R27 R26 K19 ["Text"]
      946 GETTABLEKS                       R27 R1 K73 ["TextColor"]
      948 SETTABLEKS                       R27 R26 K73 ["TextColor"]
      950 DUPTABLE                         R27 K153 [{"Font", "TextSize", "TextXAlignment"}]
      951 GETIMPORT                        R28 K155 [Enum.Font.SourceSans]
      953 SETTABLEKS                       R28 R27 K108 ["Font"]
      955 LOADN                            R28 18
      956 SETTABLEKS                       R28 R27 K10 ["TextSize"]
      958 GETIMPORT                        R28 K114 [Enum.TextXAlignment.Left]
      960 SETTABLEKS                       R28 R27 K110 ["TextXAlignment"]
      962 SETTABLEKS                       R27 R26 K150 ["TextProps"]
      964 LOADB                            R27 1
      965 SETTABLEKS                       R27 R26 K109 ["TextWrapped"]
      967 GETIMPORT                        R27 K114 [Enum.TextXAlignment.Left]
      969 SETTABLEKS                       R27 R26 K110 ["TextXAlignment"]
      971 CALL                             R24 2 1
      972 SETTABLEKS                       R24 R23 K87 ["DescriptionWithLink"]
      974 CALL                             R20 3 1
      975 SETTABLEKS                       R20 R19 K55 ["Contents"]
      977 CALL                             R16 3 -1
      978 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 LOADK                            R4 K6 ["UI"]
       10 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R1 R2 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R4 R1 K11 ["Util"]
       19 GETTABLEKS                       R3 R4 K12 ["React"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R6 R1 K6 ["UI"]
       26 GETTABLEKS                       R5 R6 K13 ["Components"]
       28 GETTABLEKS                       R4 R5 K14 ["Image"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K10 [require]
       33 GETTABLEKS                       R7 R1 K6 ["UI"]
       35 GETTABLEKS                       R6 R7 K13 ["Components"]
       37 GETTABLEKS                       R5 R6 K15 ["TextLabel"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K10 [require]
       42 GETTABLEKS                       R8 R1 K6 ["UI"]
       44 GETTABLEKS                       R7 R8 K13 ["Components"]
       46 GETTABLEKS                       R6 R7 K16 ["TextWithLinks"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K10 [require]
       51 GETTABLEKS                       R9 R1 K6 ["UI"]
       53 GETTABLEKS                       R8 R9 K13 ["Components"]
       55 GETTABLEKS                       R7 R8 K17 ["Pane"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K10 [require]
       60 GETTABLEKS                       R9 R1 K18 ["Style"]
       62 GETTABLEKS                       R8 R9 K19 ["Colors"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K10 [require]
       67 GETTABLEKS                       R11 R1 K6 ["UI"]
       69 GETTABLEKS                       R10 R11 K20 ["ContextServices"]
       71 GETTABLEKS                       R9 R10 K21 ["Stylizer"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K10 [require]
       76 GETTABLEKS                       R11 R1 K11 ["Util"]
       78 GETTABLEKS                       R10 R11 K22 ["LayoutOrderIterator"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K10 [require]
       83 GETIMPORT                        R12 K5 [script]
       85 GETTABLEKS                       R11 R12 K23 ["style"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K10 [require]
       90 GETTABLEKS                       R13 R1 K24 ["SharedFlags"]
       92 GETTABLEKS                       R12 R13 K25 ["getFFlagDevFrameworkAlertAddTextLinks"]
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
