PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"Hovering"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["Hovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"Hovering"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["Hovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"Hovering"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Hovering"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 GETUPVAL                         R1 0
        7 JUMPIF                           R1 ; [+8]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K3 ["mouseEnter"]
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K4 ["mouseLeave"]
       16 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R4 0
        5 JUMPIFNOT                        R4 ; [+5]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["Tag"]
        9 GETTABLE                         R3 R1 R4
       10 JUMP                             ; [+1]
       11 LOADNIL                          R3
       12 GETUPVAL                         R5 0
       13 JUMPIFNOT                        R5 ; [+6]
       14 GETTABLEKS                       R4 R1 K3 ["Style"]
       16 JUMPIF                           R4 ; [+5]
       17 NEWTABLE                         R4 0 0
       19 JUMP                             ; [+2]
       20 GETTABLEKS                       R4 R1 K4 ["Stylizer"]
       22 GETUPVAL                         R5 0
       23 JUMPIFNOT                        R5 ; [+14]
       24 FASTCALL1                        TYPEOF R4 ; [+3]
       25 MOVE                             R6 R4
       26 GETIMPORT                        R5 K6 [typeof]
       28 CALL                             R5 1 1
       29 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+8]
       31 GETUPVAL                         R5 2
       32 MOVE                             R6 R3
       33 MOVE                             R7 R4
       34 CALL                             R5 2 1
       35 MOVE                             R3 R5
       36 NEWTABLE                         R4 0 0
       38 GETTABLEKS                       R5 R1 K8 ["AnchorPoint"]
       40 GETTABLEKS                       R6 R1 K9 ["Position"]
       42 GETTABLEKS                       R7 R1 K10 ["Rotation"]
       44 GETUPVAL                         R9 0
       45 JUMPIFNOT                        R9 ; [+8]
       46 GETUPVAL                         R8 3
       47 MOVE                             R9 R3
       48 LOADK                            R10 K11 ["Disabled"]
       49 CALL                             R8 2 1
       50 JUMPIF                           R8 ; [+5]
       51 GETTABLEKS                       R8 R1 K11 ["Disabled"]
       53 JUMP                             ; [+2]
       54 GETTABLEKS                       R8 R1 K11 ["Disabled"]
       56 GETUPVAL                         R10 0
       57 JUMPIFNOT                        R10 ; [+2]
       58 LOADNIL                          R9
       59 JUMP                             ; [+2]
       60 GETTABLEKS                       R9 R2 K12 ["Hovering"]
       62 GETUPVAL                         R11 0
       63 JUMPIFNOT                        R11 ; [+6]
       64 GETTABLEKS                       R10 R1 K13 ["BackgroundColor3"]
       66 JUMPIF                           R10 ; [+9]
       67 GETTABLEKS                       R10 R1 K14 ["BackgroundColor"]
       69 JUMP                             ; [+6]
       70 GETUPVAL                         R10 4
       71 GETTABLEKS                       R11 R1 K14 ["BackgroundColor"]
       73 GETTABLEKS                       R12 R4 K14 ["BackgroundColor"]
       75 CALL                             R10 2 1
       76 GETUPVAL                         R12 0
       77 JUMPIFNOT                        R12 ; [+3]
       78 GETTABLEKS                       R11 R1 K15 ["HoverColor"]
       80 JUMP                             ; [+8]
       81 GETUPVAL                         R11 4
       82 GETTABLEKS                       R12 R1 K15 ["HoverColor"]
       84 GETTABLEKS                       R14 R4 K16 ["Hover"]
       86 GETTABLEKS                       R13 R14 K17 ["Background"]
       88 CALL                             R11 2 1
       89 GETTABLEKS                       R13 R1 K18 ["OnClick"]
       91 JUMPIFNOT                        R13 ; [+3]
       92 JUMPIFNOT                        R9 ; [+2]
       93 MOVE                             R12 R11
       94 JUMP                             ; [+1]
       95 MOVE                             R12 R10
       96 JUMPIFNOT                        R8 ; [+10]
       97 GETTABLEKS                       R13 R4 K11 ["Disabled"]
       99 JUMPIFNOT                        R13 ; [+5]
      100 GETTABLEKS                       R13 R4 K11 ["Disabled"]
      102 GETTABLEKS                       R12 R13 K17 ["Background"]
      104 JUMP                             ; [+2]
      105 LOADNIL                          R12
      106 JUMP                             ; [0]
      107 GETUPVAL                         R14 0
      108 JUMPIFNOT                        R14 ; [+3]
      109 GETTABLEKS                       R13 R1 K19 ["Size"]
      111 JUMP                             ; [+6]
      112 GETUPVAL                         R13 4
      113 GETTABLEKS                       R14 R1 K19 ["Size"]
      115 GETTABLEKS                       R15 R4 K19 ["Size"]
      117 CALL                             R13 2 1
      118 GETTABLEKS                       R15 R1 K3 ["Style"]
      120 JUMPIFNOTEQKS                    R15 K20 ["IconOnly"] ; [+3]
      122 LOADNIL                          R14
      123 JUMP                             ; [+2]
      124 GETTABLEKS                       R14 R1 K21 ["BackgroundStyle"]
      126 GETUPVAL                         R16 0
      127 JUMPIFNOT                        R16 ; [+3]
      128 GETTABLEKS                       R15 R1 K22 ["TextColor"]
      130 JUMP                             ; [+6]
      131 GETUPVAL                         R15 4
      132 GETTABLEKS                       R16 R1 K22 ["TextColor"]
      134 GETTABLEKS                       R17 R4 K22 ["TextColor"]
      136 CALL                             R15 2 1
      137 GETUPVAL                         R17 0
      138 JUMPIFNOT                        R17 ; [+3]
      139 GETTABLEKS                       R16 R1 K23 ["DisabledTextColor"]
      141 JUMP                             ; [+8]
      142 GETUPVAL                         R16 4
      143 GETTABLEKS                       R17 R1 K23 ["DisabledTextColor"]
      145 GETTABLEKS                       R19 R4 K11 ["Disabled"]
      147 GETTABLEKS                       R18 R19 K22 ["TextColor"]
      149 CALL                             R16 2 1
      150 JUMPIF                           R8 ; [+3]
      151 GETTABLEKS                       R18 R1 K18 ["OnClick"]
      153 JUMPIF                           R18 ; [+2]
      154 MOVE                             R17 R16
      155 JUMP                             ; [+1]
      156 MOVE                             R17 R15
      157 GETUPVAL                         R19 0
      158 JUMPIFNOT                        R19 ; [+3]
      159 GETTABLEKS                       R18 R1 K24 ["IconColor"]
      161 JUMP                             ; [+6]
      162 GETUPVAL                         R18 4
      163 GETTABLEKS                       R19 R1 K24 ["IconColor"]
      165 GETTABLEKS                       R20 R4 K24 ["IconColor"]
      167 CALL                             R18 2 1
      168 GETUPVAL                         R20 0
      169 JUMPIFNOT                        R20 ; [+2]
      170 LOADNIL                          R19
      171 JUMP                             ; [+6]
      172 GETUPVAL                         R19 4
      173 GETTABLEKS                       R20 R1 K25 ["IconScaleType"]
      175 GETTABLEKS                       R21 R4 K25 ["IconScaleType"]
      177 CALL                             R19 2 1
      178 GETUPVAL                         R21 0
      179 JUMPIF                           R21 ; [+7]
      180 GETUPVAL                         R20 4
      181 GETTABLEKS                       R21 R1 K26 ["BorderColor"]
      183 GETTABLEKS                       R22 R4 K26 ["BorderColor"]
      185 CALL                             R20 2 1
      186 JUMP                             ; [+2]
      187 GETTABLEKS                       R20 R1 K26 ["BorderColor"]
      189 GETUPVAL                         R22 0
      190 JUMPIFNOT                        R22 ; [+3]
      191 GETTABLEKS                       R21 R1 K27 ["IconSize"]
      193 JUMP                             ; [+6]
      194 GETUPVAL                         R21 4
      195 GETTABLEKS                       R22 R1 K27 ["IconSize"]
      197 GETTABLEKS                       R23 R4 K27 ["IconSize"]
      199 CALL                             R21 2 1
      200 GETUPVAL                         R23 0
      201 JUMPIFNOT                        R23 ; [+3]
      202 GETTABLEKS                       R22 R1 K28 ["Padding"]
      204 JUMP                             ; [+6]
      205 GETUPVAL                         R22 4
      206 GETTABLEKS                       R23 R1 K28 ["Padding"]
      208 GETTABLEKS                       R24 R4 K28 ["Padding"]
      210 CALL                             R22 2 1
      211 GETUPVAL                         R24 0
      212 JUMPIFNOT                        R24 ; [+3]
      213 GETTABLEKS                       R23 R1 K29 ["Spacing"]
      215 JUMP                             ; [+6]
      216 GETUPVAL                         R23 4
      217 GETTABLEKS                       R24 R1 K29 ["Spacing"]
      219 GETTABLEKS                       R25 R4 K29 ["Spacing"]
      221 CALL                             R23 2 1
      222 LOADNIL                          R24
      223 GETUPVAL                         R25 0
      224 JUMPIF                           R25 ; [+82]
      225 LOADN                            R26 2
      226 MUL                              R25 R26 R21
      227 GETIMPORT                        R26 K32 [UDim2.new]
      229 LOADN                            R27 1
      230 MINUS                            R28 R25
      231 LOADN                            R29 1
      232 LOADN                            R30 0
      233 CALL                             R26 4 1
      234 MOVE                             R24 R26
      235 GETTABLEKS                       R26 R1 K33 ["AutomaticSize"]
      237 GETIMPORT                        R27 K36 [Enum.AutomaticSize.XY]
      239 JUMPIFNOTEQ                      R26 R27 ; [+17]
      241 GETTABLEKS                       R26 R1 K19 ["Size"]
      243 JUMPIF                           R26 ; [+6]
      244 GETIMPORT                        R26 K38 [UDim2.fromScale]
      246 LOADN                            R27 0
      247 LOADN                            R28 0
      248 CALL                             R26 2 1
      249 MOVE                             R13 R26
      250 GETIMPORT                        R26 K38 [UDim2.fromScale]
      252 LOADN                            R27 0
      253 LOADN                            R28 0
      254 CALL                             R26 2 1
      255 MOVE                             R24 R26
      256 JUMP                             ; [+45]
      257 GETTABLEKS                       R26 R1 K33 ["AutomaticSize"]
      259 GETIMPORT                        R27 K40 [Enum.AutomaticSize.X]
      261 JUMPIFNOTEQ                      R26 R27 ; [+17]
      263 GETTABLEKS                       R26 R1 K19 ["Size"]
      265 JUMPIF                           R26 ; [+6]
      266 GETIMPORT                        R26 K38 [UDim2.fromScale]
      268 LOADN                            R27 0
      269 LOADN                            R28 1
      270 CALL                             R26 2 1
      271 MOVE                             R13 R26
      272 GETIMPORT                        R26 K38 [UDim2.fromScale]
      274 LOADN                            R27 0
      275 LOADN                            R28 1
      276 CALL                             R26 2 1
      277 MOVE                             R24 R26
      278 JUMP                             ; [+23]
      279 GETTABLEKS                       R26 R1 K33 ["AutomaticSize"]
      281 GETIMPORT                        R27 K42 [Enum.AutomaticSize.Y]
      283 JUMPIFNOTEQ                      R26 R27 ; [+18]
      285 GETTABLEKS                       R26 R1 K19 ["Size"]
      287 JUMPIF                           R26 ; [+6]
      288 GETIMPORT                        R26 K38 [UDim2.fromScale]
      290 LOADN                            R27 1
      291 LOADN                            R28 0
      292 CALL                             R26 2 1
      293 MOVE                             R13 R26
      294 GETIMPORT                        R26 K32 [UDim2.new]
      296 LOADN                            R27 1
      297 MINUS                            R28 R25
      298 LOADN                            R29 0
      299 LOADN                            R30 0
      300 CALL                             R26 4 1
      301 MOVE                             R24 R26
      302 GETTABLEKS                       R26 R1 K3 ["Style"]
      304 JUMPIFNOTEQKS                    R26 K43 ["Link"] ; [+2]
      306 LOADNIL                          R14
      307 NEWTABLE                         R25 16 0
      309 SETTABLEKS                       R5 R25 K8 ["AnchorPoint"]
      311 GETTABLEKS                       R26 R1 K33 ["AutomaticSize"]
      313 SETTABLEKS                       R26 R25 K33 ["AutomaticSize"]
      315 GETTABLEKS                       R26 R1 K44 ["SizeConstraint"]
      317 SETTABLEKS                       R26 R25 K44 ["SizeConstraint"]
      319 LOADN                            R26 1
      320 SETTABLEKS                       R26 R25 K45 ["BackgroundTransparency"]
      322 GETTABLEKS                       R26 R1 K46 ["LayoutOrder"]
      324 SETTABLEKS                       R26 R25 K46 ["LayoutOrder"]
      326 SETTABLEKS                       R6 R25 K9 ["Position"]
      328 SETTABLEKS                       R13 R25 K19 ["Size"]
      330 LOADK                            R26 K47 [""]
      331 SETTABLEKS                       R26 R25 K48 ["Text"]
      333 SETTABLEKS                       R7 R25 K10 ["Rotation"]
      335 GETTABLEKS                       R26 R1 K49 ["ZIndex"]
      337 SETTABLEKS                       R26 R25 K49 ["ZIndex"]
      339 GETUPVAL                         R27 5
      340 GETTABLEKS                       R26 R27 K50 ["Ref"]
      342 GETTABLEKS                       R27 R1 K51 ["ForwardRef"]
      344 SETTABLE                         R27 R25 R26
      345 GETUPVAL                         R28 5
      346 GETTABLEKS                       R27 R28 K52 ["Event"]
      348 GETTABLEKS                       R26 R27 K53 ["Activated"]
      350 GETTABLEKS                       R28 R1 K11 ["Disabled"]
      352 JUMPIF                           R28 ; [+3]
      353 GETTABLEKS                       R27 R1 K18 ["OnClick"]
      355 JUMPIF                           R27 ; [+1]
      356 LOADNIL                          R27
      357 SETTABLE                         R27 R25 R26
      358 GETUPVAL                         R28 5
      359 GETTABLEKS                       R27 R28 K52 ["Event"]
      361 GETTABLEKS                       R26 R27 K54 ["MouseButton2Click"]
      363 GETTABLEKS                       R28 R1 K11 ["Disabled"]
      365 JUMPIF                           R28 ; [+3]
      366 GETTABLEKS                       R27 R1 K55 ["OnRightClick"]
      368 JUMPIF                           R27 ; [+1]
      369 LOADNIL                          R27
      370 SETTABLE                         R27 R25 R26
      371 GETUPVAL                         R28 5
      372 GETTABLEKS                       R27 R28 K52 ["Event"]
      374 GETTABLEKS                       R26 R27 K56 ["MouseEnter"]
      376 GETTABLEKS                       R27 R0 K57 ["mouseEnter"]
      378 SETTABLE                         R27 R25 R26
      379 GETUPVAL                         R28 5
      380 GETTABLEKS                       R27 R28 K52 ["Event"]
      382 GETTABLEKS                       R26 R27 K58 ["MouseLeave"]
      384 GETTABLEKS                       R27 R0 K59 ["mouseLeave"]
      386 SETTABLE                         R27 R25 R26
      387 GETUPVAL                         R27 0
      388 JUMPIFNOT                        R27 ; [+5]
      389 GETUPVAL                         R26 3
      390 MOVE                             R27 R3
      391 LOADK                            R28 K20 ["IconOnly"]
      392 CALL                             R26 2 1
      393 JUMP                             ; [+1]
      394 LOADNIL                          R26
      395 LOADNIL                          R27
      396 LOADNIL                          R28
      397 GETUPVAL                         R29 0
      398 JUMPIFNOT                        R29 ; [+86]
      399 GETUPVAL                         R29 6
      400 JUMPIFNOT                        R29 ; [+34]
      401 GETTABLEKS                       R30 R1 K60 ["OverrideTags"]
      403 JUMPIFNOT                        R30 ; [+11]
      404 GETUPVAL                         R31 1
      405 GETTABLEKS                       R30 R31 K2 ["Tag"]
      407 GETTABLE                         R29 R1 R30
      408 JUMPIF                           R29 ; [+11]
      409 GETUPVAL                         R29 2
      410 LOADK                            R30 K61 ["Component-IconButton"]
      411 MOVE                             R31 R3
      412 LOADK                            R32 K62 ["X-Fit"]
      413 CALL                             R29 3 1
      414 JUMP                             ; [+5]
      415 GETUPVAL                         R29 2
      416 LOADK                            R30 K61 ["Component-IconButton"]
      417 MOVE                             R31 R3
      418 LOADK                            R32 K62 ["X-Fit"]
      419 CALL                             R29 3 1
      420 GETUPVAL                         R30 2
      421 MOVE                             R31 R29
      422 GETUPVAL                         R33 7
      423 JUMPIFNOTEQ                      R13 R33 ; [+3]
      425 LOADK                            R32 K63 ["X-DefaultSize"]
      426 JUMP                             ; [+1]
      427 LOADNIL                          R32
      428 CALL                             R30 2 1
      429 MOVE                             R29 R30
      430 GETUPVAL                         R31 1
      431 GETTABLEKS                       R30 R31 K2 ["Tag"]
      433 SETTABLE                         R29 R25 R30
      434 JUMP                             ; [+23]
      435 GETUPVAL                         R30 1
      436 GETTABLEKS                       R29 R30 K2 ["Tag"]
      438 GETTABLEKS                       R31 R1 K60 ["OverrideTags"]
      440 JUMPIFNOT                        R31 ; [+11]
      441 GETUPVAL                         R32 1
      442 GETTABLEKS                       R31 R32 K2 ["Tag"]
      444 GETTABLE                         R30 R1 R31
      445 JUMPIF                           R30 ; [+11]
      446 GETUPVAL                         R30 2
      447 LOADK                            R31 K61 ["Component-IconButton"]
      448 MOVE                             R32 R3
      449 LOADK                            R33 K62 ["X-Fit"]
      450 CALL                             R30 3 1
      451 JUMP                             ; [+5]
      452 GETUPVAL                         R30 2
      453 LOADK                            R31 K61 ["Component-IconButton"]
      454 MOVE                             R32 R3
      455 LOADK                            R33 K62 ["X-Fit"]
      456 CALL                             R30 3 1
      457 SETTABLE                         R30 R25 R29
      458 JUMPIF                           R26 ; [+5]
      459 GETUPVAL                         R29 3
      460 MOVE                             R30 R3
      461 LOADK                            R31 K43 ["Link"]
      462 CALL                             R29 2 1
      463 JUMPIFNOT                        R29 ; [+2]
      464 LOADK                            R27 K47 [""]
      465 JUMP                             ; [+19]
      466 JUMPIFNOT                        R8 ; [+2]
      467 LOADK                            R27 K64 ["Muted"]
      468 JUMP                             ; [+16]
      469 GETUPVAL                         R29 3
      470 MOVE                             R30 R3
      471 LOADK                            R31 K65 ["Primary"]
      472 CALL                             R29 2 1
      473 JUMPIFNOT                        R29 ; [+3]
      474 LOADK                            R27 K65 ["Primary"]
      475 LOADK                            R28 K66 ["Contrast"]
      476 JUMP                             ; [+8]
      477 GETUPVAL                         R29 3
      478 MOVE                             R30 R3
      479 LOADK                            R31 K67 ["PrimaryBrand"]
      480 CALL                             R29 2 1
      481 JUMPIFNOT                        R29 ; [+2]
      482 LOADK                            R27 K67 ["PrimaryBrand"]
      483 JUMP                             ; [+1]
      484 LOADK                            R27 K68 ["Secondary"]
      485 LOADNIL                          R29
      486 GETTABLEKS                       R30 R1 K69 ["LeftIcon"]
      488 JUMPIFNOT                        R30 ; [+92]
      489 GETUPVAL                         R30 0
      490 JUMPIFNOT                        R30 ; [+45]
      491 GETTABLEKS                       R31 R1 K71 ["IconTag"]
      493 ORK                              R30 R31 K70 ["Icon16"]
      494 GETUPVAL                         R32 5
      495 GETTABLEKS                       R31 R32 K72 ["createElement"]
      497 GETUPVAL                         R32 8
      498 GETTABLEKS                       R35 R1 K69 ["LeftIcon"]
      500 FASTCALL1                        TYPEOF R35 ; [+2]
      501 GETIMPORT                        R34 K6 [typeof]
      503 CALL                             R34 1 1
      504 JUMPIFNOTEQKS                    R34 K73 ["table"] ; [+15]
      506 GETUPVAL                         R33 9
      507 NEWTABLE                         R34 2 0
      509 LOADN                            R35 1
      510 SETTABLEKS                       R35 R34 K46 ["LayoutOrder"]
      512 GETUPVAL                         R36 1
      513 GETTABLEKS                       R35 R36 K2 ["Tag"]
      515 SETTABLE                         R30 R34 R35
      516 GETTABLEKS                       R35 R1 K69 ["LeftIcon"]
      518 CALL                             R33 2 1
      519 JUMP                             ; [+13]
      520 NEWTABLE                         R33 4 0
      522 LOADN                            R34 1
      523 SETTABLEKS                       R34 R33 K46 ["LayoutOrder"]
      525 GETTABLEKS                       R34 R1 K69 ["LeftIcon"]
      527 SETTABLEKS                       R34 R33 K74 ["Image"]
      529 GETUPVAL                         R35 1
      530 GETTABLEKS                       R34 R35 K2 ["Tag"]
      532 SETTABLE                         R30 R33 R34
      533 CALL                             R31 2 1
      534 MOVE                             R29 R31
      535 JUMP                             ; [+45]
      536 GETUPVAL                         R31 5
      537 GETTABLEKS                       R30 R31 K72 ["createElement"]
      539 GETUPVAL                         R31 10
      540 GETTABLEKS                       R34 R1 K69 ["LeftIcon"]
      542 FASTCALL1                        TYPEOF R34 ; [+2]
      543 GETIMPORT                        R33 K6 [typeof]
      545 CALL                             R33 1 1
      546 JUMPIFNOTEQKS                    R33 K73 ["table"] ; [+10]
      548 GETUPVAL                         R32 9
      549 GETTABLEKS                       R33 R1 K69 ["LeftIcon"]
      551 DUPTABLE                         R34 K75 [{"LayoutOrder"}]
      552 LOADN                            R35 1
      553 SETTABLEKS                       R35 R34 K46 ["LayoutOrder"]
      555 CALL                             R32 2 1
      556 JUMP                             ; [+22]
      557 DUPTABLE                         R32 K77 [{"LayoutOrder", "ScaleType", "Size", "Style"}]
      558 LOADN                            R33 1
      559 SETTABLEKS                       R33 R32 K46 ["LayoutOrder"]
      561 SETTABLEKS                       R19 R32 K76 ["ScaleType"]
      563 GETIMPORT                        R33 K79 [UDim2.fromOffset]
      565 MOVE                             R34 R21
      566 MOVE                             R35 R21
      567 CALL                             R33 2 1
      568 SETTABLEKS                       R33 R32 K19 ["Size"]
      570 DUPTABLE                         R33 K80 [{"Background", "Image"}]
      571 SETTABLEKS                       R18 R33 K17 ["Background"]
      573 GETTABLEKS                       R34 R1 K69 ["LeftIcon"]
      575 SETTABLEKS                       R34 R33 K74 ["Image"]
      577 SETTABLEKS                       R33 R32 K3 ["Style"]
      579 CALL                             R30 2 1
      580 MOVE                             R29 R30
      581 LOADNIL                          R30
      582 GETTABLEKS                       R31 R1 K81 ["RightIcon"]
      584 JUMPIFNOT                        R31 ; [+95]
      585 GETUPVAL                         R31 0
      586 JUMPIFNOT                        R31 ; [+48]
      587 GETTABLEKS                       R32 R1 K71 ["IconTag"]
      589 ORK                              R31 R32 K70 ["Icon16"]
      590 GETUPVAL                         R33 5
      591 GETTABLEKS                       R32 R33 K72 ["createElement"]
      593 GETUPVAL                         R33 8
      594 GETTABLEKS                       R36 R1 K81 ["RightIcon"]
      596 FASTCALL1                        TYPEOF R36 ; [+2]
      597 GETIMPORT                        R35 K6 [typeof]
      599 CALL                             R35 1 1
      600 JUMPIFNOTEQKS                    R35 K73 ["table"] ; [+15]
      602 GETUPVAL                         R34 9
      603 NEWTABLE                         R35 2 0
      605 LOADN                            R36 1
      606 SETTABLEKS                       R36 R35 K46 ["LayoutOrder"]
      608 GETUPVAL                         R37 1
      609 GETTABLEKS                       R36 R37 K2 ["Tag"]
      611 SETTABLE                         R31 R35 R36
      612 GETTABLEKS                       R36 R1 K81 ["RightIcon"]
      614 CALL                             R34 2 1
      615 JUMP                             ; [+16]
      616 NEWTABLE                         R34 4 0
      618 LOADN                            R35 3
      619 SETTABLEKS                       R35 R34 K46 ["LayoutOrder"]
      621 GETTABLEKS                       R35 R1 K81 ["RightIcon"]
      623 SETTABLEKS                       R35 R34 K74 ["Image"]
      625 GETUPVAL                         R36 1
      626 GETTABLEKS                       R35 R36 K2 ["Tag"]
      628 GETTABLEKS                       R37 R1 K71 ["IconTag"]
      630 ORK                              R36 R37 K70 ["Icon16"]
      631 SETTABLE                         R36 R34 R35
      632 CALL                             R32 2 1
      633 MOVE                             R30 R32
      634 JUMP                             ; [+45]
      635 GETUPVAL                         R32 5
      636 GETTABLEKS                       R31 R32 K72 ["createElement"]
      638 GETUPVAL                         R32 10
      639 GETTABLEKS                       R35 R1 K81 ["RightIcon"]
      641 FASTCALL1                        TYPEOF R35 ; [+2]
      642 GETIMPORT                        R34 K6 [typeof]
      644 CALL                             R34 1 1
      645 JUMPIFNOTEQKS                    R34 K73 ["table"] ; [+10]
      647 GETUPVAL                         R33 9
      648 GETTABLEKS                       R34 R1 K81 ["RightIcon"]
      650 DUPTABLE                         R35 K75 [{"LayoutOrder"}]
      651 LOADN                            R36 3
      652 SETTABLEKS                       R36 R35 K46 ["LayoutOrder"]
      654 CALL                             R33 2 1
      655 JUMP                             ; [+22]
      656 DUPTABLE                         R33 K77 [{"LayoutOrder", "ScaleType", "Size", "Style"}]
      657 LOADN                            R34 3
      658 SETTABLEKS                       R34 R33 K46 ["LayoutOrder"]
      660 SETTABLEKS                       R19 R33 K76 ["ScaleType"]
      662 GETIMPORT                        R34 K79 [UDim2.fromOffset]
      664 MOVE                             R35 R21
      665 MOVE                             R36 R21
      666 CALL                             R34 2 1
      667 SETTABLEKS                       R34 R33 K19 ["Size"]
      669 DUPTABLE                         R34 K80 [{"Background", "Image"}]
      670 SETTABLEKS                       R18 R34 K17 ["Background"]
      672 GETTABLEKS                       R35 R1 K81 ["RightIcon"]
      674 SETTABLEKS                       R35 R34 K74 ["Image"]
      676 SETTABLEKS                       R34 R33 K3 ["Style"]
      678 CALL                             R31 2 1
      679 MOVE                             R30 R31
      680 GETUPVAL                         R32 5
      681 GETTABLEKS                       R31 R32 K72 ["createElement"]
      683 LOADK                            R32 K82 ["TextButton"]
      684 MOVE                             R33 R25
      685 DUPTABLE                         R34 K86 [{"Content", "Tooltip", "HoverArea"}]
      686 GETUPVAL                         R36 5
      687 GETTABLEKS                       R35 R36 K72 ["createElement"]
      689 GETUPVAL                         R36 10
      690 GETUPVAL                         R38 0
      691 JUMPIFNOT                        R38 ; [+58]
      692 NEWTABLE                         R37 8 0
      694 GETTABLEKS                       R38 R1 K33 ["AutomaticSize"]
      696 SETTABLEKS                       R38 R37 K33 ["AutomaticSize"]
      698 SETTABLEKS                       R12 R37 K13 ["BackgroundColor3"]
      700 SETTABLEKS                       R20 R37 K26 ["BorderColor"]
      702 SETTABLEKS                       R13 R37 K19 ["Size"]
      704 GETUPVAL                         R39 1
      705 GETTABLEKS                       R38 R39 K2 ["Tag"]
      707 GETTABLEKS                       R40 R1 K60 ["OverrideTags"]
      709 JUMPIFNOT                        R40 ; [+20]
      710 GETTABLEKS                       R39 R1 K87 ["PaneTags"]
      712 JUMPIF                           R39 ; [+35]
      713 GETUPVAL                         R39 2
      714 LOADK                            R40 K88 ["X-Fit X-RowM"]
      715 JUMPIFNOT                        R26 ; [+2]
      716 LOADNIL                          R41
      717 JUMP                             ; [+1]
      718 LOADK                            R41 K89 ["X-Corner"]
      719 MOVE                             R42 R27
      720 GETUPVAL                         R44 3
      721 MOVE                             R45 R3
      722 LOADK                            R46 K90 ["Compact"]
      723 CALL                             R44 2 1
      724 JUMPIFNOT                        R44 ; [+2]
      725 LOADK                            R43 K91 ["X-PadS"]
      726 JUMP                             ; [+1]
      727 LOADK                            R43 K92 ["X-Pad"]
      728 CALL                             R39 4 1
      729 JUMP                             ; [+18]
      730 GETUPVAL                         R39 2
      731 LOADK                            R40 K88 ["X-Fit X-RowM"]
      732 JUMPIFNOT                        R26 ; [+2]
      733 LOADNIL                          R41
      734 JUMP                             ; [+1]
      735 LOADK                            R41 K89 ["X-Corner"]
      736 MOVE                             R42 R27
      737 GETUPVAL                         R44 3
      738 MOVE                             R45 R3
      739 LOADK                            R46 K90 ["Compact"]
      740 CALL                             R44 2 1
      741 JUMPIFNOT                        R44 ; [+2]
      742 LOADK                            R43 K91 ["X-PadS"]
      743 JUMP                             ; [+1]
      744 LOADK                            R43 K92 ["X-Pad"]
      745 GETTABLEKS                       R44 R1 K87 ["PaneTags"]
      747 CALL                             R39 5 1
      748 SETTABLE                         R39 R37 R38
      749 JUMP                             ; [+25]
      750 DUPTABLE                         R37 K95 [{"AutomaticSize", "BackgroundColor", "BorderColor", "ImageTransparency", "Layout", "Padding", "Size", "Spacing", "Style"}]
      751 GETTABLEKS                       R38 R1 K33 ["AutomaticSize"]
      753 SETTABLEKS                       R38 R37 K33 ["AutomaticSize"]
      755 SETTABLEKS                       R12 R37 K14 ["BackgroundColor"]
      757 SETTABLEKS                       R20 R37 K26 ["BorderColor"]
      759 GETTABLEKS                       R38 R1 K93 ["ImageTransparency"]
      761 SETTABLEKS                       R38 R37 K93 ["ImageTransparency"]
      763 GETIMPORT                        R38 K98 [Enum.FillDirection.Horizontal]
      765 SETTABLEKS                       R38 R37 K94 ["Layout"]
      767 SETTABLEKS                       R22 R37 K28 ["Padding"]
      769 SETTABLEKS                       R13 R37 K19 ["Size"]
      771 SETTABLEKS                       R23 R37 K29 ["Spacing"]
      773 SETTABLEKS                       R14 R37 K3 ["Style"]
      775 DUPTABLE                         R38 K99 [{"LeftIcon", "Text", "RightIcon"}]
      776 SETTABLEKS                       R29 R38 K69 ["LeftIcon"]
      778 GETTABLEKS                       R39 R1 K48 ["Text"]
      780 JUMPIFNOT                        R39 ; [+53]
      781 GETUPVAL                         R40 5
      782 GETTABLEKS                       R39 R40 K72 ["createElement"]
      784 GETUPVAL                         R40 11
      785 GETUPVAL                         R42 0
      786 JUMPIFNOT                        R42 ; [+22]
      787 NEWTABLE                         R41 4 0
      789 LOADN                            R42 2
      790 SETTABLEKS                       R42 R41 K46 ["LayoutOrder"]
      792 GETTABLEKS                       R42 R1 K48 ["Text"]
      794 SETTABLEKS                       R42 R41 K48 ["Text"]
      796 GETUPVAL                         R43 1
      797 GETTABLEKS                       R42 R43 K2 ["Tag"]
      799 GETUPVAL                         R43 2
      800 LOADK                            R44 K62 ["X-Fit"]
      801 JUMPIFNOT                        R8 ; [+2]
      802 LOADK                            R45 K11 ["Disabled"]
      803 JUMP                             ; [+1]
      804 LOADNIL                          R45
      805 ORK                              R46 R28 K100 []
      806 CALL                             R43 3 1
      807 SETTABLE                         R43 R41 R42
      808 JUMP                             ; [+24]
      809 DUPTABLE                         R41 K103 [{"AutomaticSize", "Text", "TextColor", "Size", "LayoutOrder", "TextXAlignment", "TextYAlignment"}]
      810 GETTABLEKS                       R42 R1 K33 ["AutomaticSize"]
      812 SETTABLEKS                       R42 R41 K33 ["AutomaticSize"]
      814 GETTABLEKS                       R42 R1 K48 ["Text"]
      816 SETTABLEKS                       R42 R41 K48 ["Text"]
      818 SETTABLEKS                       R17 R41 K22 ["TextColor"]
      820 SETTABLEKS                       R24 R41 K19 ["Size"]
      822 LOADN                            R42 2
      823 SETTABLEKS                       R42 R41 K46 ["LayoutOrder"]
      825 GETTABLEKS                       R42 R1 K101 ["TextXAlignment"]
      827 SETTABLEKS                       R42 R41 K101 ["TextXAlignment"]
      829 GETTABLEKS                       R42 R1 K102 ["TextYAlignment"]
      831 SETTABLEKS                       R42 R41 K102 ["TextYAlignment"]
      833 CALL                             R39 2 1
      834 SETTABLEKS                       R39 R38 K48 ["Text"]
      836 SETTABLEKS                       R30 R38 K81 ["RightIcon"]
      838 CALL                             R35 3 1
      839 SETTABLEKS                       R35 R34 K83 ["Content"]
      841 GETTABLEKS                       R35 R1 K104 ["TooltipText"]
      843 JUMPIFNOT                        R35 ; [+14]
      844 GETUPVAL                         R36 5
      845 GETTABLEKS                       R35 R36 K72 ["createElement"]
      847 GETUPVAL                         R36 12
      848 DUPTABLE                         R37 K105 [{"Style", "Text"}]
      849 GETTABLEKS                       R38 R1 K106 ["TooltipStyle"]
      851 SETTABLEKS                       R38 R37 K3 ["Style"]
      853 GETTABLEKS                       R38 R1 K104 ["TooltipText"]
      855 SETTABLEKS                       R38 R37 K48 ["Text"]
      857 CALL                             R35 2 1
      858 SETTABLEKS                       R35 R34 K84 ["Tooltip"]
      860 GETTABLEKS                       R36 R1 K107 ["Cursor"]
      862 JUMPIFNOT                        R36 ; [+11]
      863 GETUPVAL                         R36 5
      864 GETTABLEKS                       R35 R36 K72 ["createElement"]
      866 GETUPVAL                         R36 13
      867 DUPTABLE                         R37 K108 [{"Cursor"}]
      868 GETTABLEKS                       R38 R1 K107 ["Cursor"]
      870 SETTABLEKS                       R38 R37 K107 ["Cursor"]
      872 CALL                             R35 2 1
      873 JUMP                             ; [+1]
      874 LOADNIL                          R35
      875 SETTABLEKS                       R35 R34 K85 ["HoverArea"]
      877 CALL                             R31 3 -1
      878 RETURN                           R31 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["SharedFlags"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["getFFlagDeveloperFrameworkMigrateStylingV2"]
       23 CALL                             R3 0 1
       24 GETIMPORT                        R4 K6 [require]
       26 GETTABLEKS                       R6 R0 K4 ["Parent"]
       28 GETTABLEKS                       R5 R6 K10 ["Dash"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R4 K11 ["join"]
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K2 ["UI"]
       37 GETTABLEKS                       R7 R8 K12 ["ContextServices"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R6 K13 ["withContext"]
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R10 R0 K14 ["Wrappers"]
       46 GETTABLEKS                       R9 R10 K15 ["withForwardRef"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R10 R0 K4 ["Parent"]
       51 LOADK                            R12 K16 ["React"]
       52 NAMECALL                         R10 R10 K17 ["FindFirstChild"]
       54 CALL                             R10 2 1
       55 JUMPIFNOT                        R10 ; [+8]
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K4 ["Parent"]
       60 GETTABLEKS                       R10 R11 K16 ["React"]
       62 CALL                             R9 1 1
       63 JUMP                             ; [+1]
       64 LOADNIL                          R9
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K18 ["Styling"]
       69 GETTABLEKS                       R11 R12 K19 ["supportsStyleSheets"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K18 ["Styling"]
       76 GETTABLEKS                       R12 R13 K20 ["joinTags"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R14 R0 K18 ["Styling"]
       83 GETTABLEKS                       R13 R14 K21 ["hasTag"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K22 ["Util"]
       90 CALL                             R13 1 1
       91 GETTABLEKS                       R14 R13 K23 ["prioritize"]
       93 GETIMPORT                        R15 K6 [require]
       95 GETTABLEKS                       R18 R0 K2 ["UI"]
       97 GETTABLEKS                       R17 R18 K24 ["Components"]
       99 GETTABLEKS                       R16 R17 K25 ["Pane"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K6 [require]
      104 GETTABLEKS                       R19 R0 K2 ["UI"]
      106 GETTABLEKS                       R18 R19 K24 ["Components"]
      108 GETTABLEKS                       R17 R18 K26 ["TextLabel"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K6 [require]
      113 GETTABLEKS                       R20 R0 K2 ["UI"]
      115 GETTABLEKS                       R19 R20 K24 ["Components"]
      117 GETTABLEKS                       R18 R19 K27 ["Tooltip"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K6 [require]
      122 GETTABLEKS                       R21 R0 K2 ["UI"]
      124 GETTABLEKS                       R20 R21 K24 ["Components"]
      126 GETTABLEKS                       R19 R20 K28 ["HoverArea"]
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K6 [require]
      131 GETTABLEKS                       R22 R0 K2 ["UI"]
      133 GETTABLEKS                       R21 R22 K24 ["Components"]
      135 GETTABLEKS                       R20 R21 K29 ["Image"]
      137 CALL                             R19 1 1
      138 GETTABLEKS                       R20 R1 K30 ["PureComponent"]
      140 LOADK                            R22 K31 ["IconButton"]
      141 NAMECALL                         R20 R20 K32 ["extend"]
      143 CALL                             R20 2 1
      144 GETIMPORT                        R21 K35 [UDim2.fromScale]
      146 LOADN                            R22 0
      147 LOADN                            R23 0
      148 CALL                             R21 2 1
      149 DUPTABLE                         R22 K41 [{"BackgroundStyle", "Disabled", "LayoutOrder", "TextXAlignment", "TextYAlignment"}]
      150 JUMPIFNOT                        R10 ; [+2]
      151 LOADNIL                          R23
      152 JUMP                             ; [+1]
      153 LOADK                            R23 K42 ["BorderBox"]
      154 SETTABLEKS                       R23 R22 K36 ["BackgroundStyle"]
      156 LOADB                            R23 0
      157 SETTABLEKS                       R23 R22 K37 ["Disabled"]
      159 LOADN                            R23 0
      160 SETTABLEKS                       R23 R22 K38 ["LayoutOrder"]
      162 JUMPIFNOT                        R10 ; [+2]
      163 LOADNIL                          R23
      164 JUMP                             ; [+2]
      165 GETIMPORT                        R23 K45 [Enum.TextXAlignment.Left]
      167 SETTABLEKS                       R23 R22 K39 ["TextXAlignment"]
      169 JUMPIFNOT                        R10 ; [+2]
      170 LOADNIL                          R23
      171 JUMP                             ; [+2]
      172 GETIMPORT                        R23 K47 [Enum.TextYAlignment.Center]
      174 SETTABLEKS                       R23 R22 K40 ["TextYAlignment"]
      176 SETTABLEKS                       R22 R20 K48 ["defaultProps"]
      178 DUPCLOSURE                       R22 K49 [PROTO_2]
      179 CAPTURE                          VAL R10
      180 SETTABLEKS                       R22 R20 K50 ["init"]
      182 DUPCLOSURE                       R22 K51 [PROTO_3]
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R1
      189 CAPTURE                          VAL R3
      190 CAPTURE                          VAL R21
      191 CAPTURE                          VAL R19
      192 CAPTURE                          VAL R5
      193 CAPTURE                          VAL R15
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R18
      197 SETTABLEKS                       R22 R20 K52 ["render"]
      199 MOVE                             R22 R7
      200 DUPTABLE                         R23 K54 [{"Stylizer"}]
      201 JUMPIFNOT                        R10 ; [+2]
      202 LOADNIL                          R24
      203 JUMP                             ; [+2]
      204 GETTABLEKS                       R24 R6 K53 ["Stylizer"]
      206 SETTABLEKS                       R24 R23 K53 ["Stylizer"]
      208 CALL                             R22 1 1
      209 MOVE                             R23 R20
      210 CALL                             R22 1 1
      211 MOVE                             R20 R22
      212 MOVE                             R22 R8
      213 MOVE                             R23 R20
      214 CALL                             R22 1 -1
      215 RETURN                           R22 -1
