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
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["Tag"]
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
       84 GETTABLEKS                       R13 R4 K16 ["Hover"]
       86 GETTABLEKS                       R13 R13 K17 ["Background"]
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
      145 GETTABLEKS                       R18 R4 K11 ["Disabled"]
      147 GETTABLEKS                       R18 R18 K22 ["TextColor"]
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
      339 GETUPVAL                         R26 5
      340 GETTABLEKS                       R26 R26 K50 ["Ref"]
      342 GETTABLEKS                       R27 R1 K51 ["ForwardRef"]
      344 SETTABLE                         R27 R25 R26
      345 GETUPVAL                         R26 5
      346 GETTABLEKS                       R26 R26 K52 ["Event"]
      348 GETTABLEKS                       R26 R26 K53 ["Activated"]
      350 GETTABLEKS                       R28 R1 K11 ["Disabled"]
      352 JUMPIF                           R28 ; [+3]
      353 GETTABLEKS                       R27 R1 K18 ["OnClick"]
      355 JUMPIF                           R27 ; [+1]
      356 LOADNIL                          R27
      357 SETTABLE                         R27 R25 R26
      358 GETUPVAL                         R26 5
      359 GETTABLEKS                       R26 R26 K52 ["Event"]
      361 GETTABLEKS                       R26 R26 K54 ["MouseButton2Click"]
      363 GETTABLEKS                       R28 R1 K11 ["Disabled"]
      365 JUMPIF                           R28 ; [+3]
      366 GETTABLEKS                       R27 R1 K55 ["OnRightClick"]
      368 JUMPIF                           R27 ; [+1]
      369 LOADNIL                          R27
      370 SETTABLE                         R27 R25 R26
      371 GETUPVAL                         R26 5
      372 GETTABLEKS                       R26 R26 K52 ["Event"]
      374 GETTABLEKS                       R26 R26 K56 ["MouseEnter"]
      376 GETTABLEKS                       R27 R0 K57 ["mouseEnter"]
      378 SETTABLE                         R27 R25 R26
      379 GETUPVAL                         R26 5
      380 GETTABLEKS                       R26 R26 K52 ["Event"]
      382 GETTABLEKS                       R26 R26 K58 ["MouseLeave"]
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
      398 JUMPIFNOT                        R29 ; [+60]
      399 GETTABLEKS                       R30 R1 K60 ["OverrideTags"]
      401 JUMPIFNOT                        R30 ; [+11]
      402 GETUPVAL                         R30 1
      403 GETTABLEKS                       R30 R30 K2 ["Tag"]
      405 GETTABLE                         R29 R1 R30
      406 JUMPIF                           R29 ; [+11]
      407 GETUPVAL                         R29 2
      408 LOADK                            R30 K61 ["Component-IconButton"]
      409 MOVE                             R31 R3
      410 LOADK                            R32 K62 ["X-Fit"]
      411 CALL                             R29 3 1
      412 JUMP                             ; [+5]
      413 GETUPVAL                         R29 2
      414 LOADK                            R30 K61 ["Component-IconButton"]
      415 MOVE                             R31 R3
      416 LOADK                            R32 K62 ["X-Fit"]
      417 CALL                             R29 3 1
      418 GETUPVAL                         R30 2
      419 MOVE                             R31 R29
      420 GETUPVAL                         R33 6
      421 JUMPIFNOTEQ                      R13 R33 ; [+3]
      423 LOADK                            R32 K63 ["X-DefaultSize"]
      424 JUMP                             ; [+1]
      425 LOADNIL                          R32
      426 CALL                             R30 2 1
      427 MOVE                             R29 R30
      428 GETUPVAL                         R30 1
      429 GETTABLEKS                       R30 R30 K2 ["Tag"]
      431 SETTABLE                         R29 R25 R30
      432 JUMPIF                           R26 ; [+5]
      433 GETUPVAL                         R30 3
      434 MOVE                             R31 R3
      435 LOADK                            R32 K43 ["Link"]
      436 CALL                             R30 2 1
      437 JUMPIFNOT                        R30 ; [+2]
      438 LOADK                            R27 K47 [""]
      439 JUMP                             ; [+19]
      440 JUMPIFNOT                        R8 ; [+2]
      441 LOADK                            R27 K64 ["Muted"]
      442 JUMP                             ; [+16]
      443 GETUPVAL                         R30 3
      444 MOVE                             R31 R3
      445 LOADK                            R32 K65 ["Primary"]
      446 CALL                             R30 2 1
      447 JUMPIFNOT                        R30 ; [+3]
      448 LOADK                            R27 K65 ["Primary"]
      449 LOADK                            R28 K66 ["Contrast"]
      450 JUMP                             ; [+8]
      451 GETUPVAL                         R30 3
      452 MOVE                             R31 R3
      453 LOADK                            R32 K67 ["PrimaryBrand"]
      454 CALL                             R30 2 1
      455 JUMPIFNOT                        R30 ; [+2]
      456 LOADK                            R27 K67 ["PrimaryBrand"]
      457 JUMP                             ; [+1]
      458 LOADK                            R27 K68 ["Secondary"]
      459 LOADNIL                          R29
      460 GETTABLEKS                       R30 R1 K69 ["LeftIcon"]
      462 JUMPIFNOT                        R30 ; [+92]
      463 GETUPVAL                         R30 0
      464 JUMPIFNOT                        R30 ; [+45]
      465 GETTABLEKS                       R31 R1 K71 ["IconTag"]
      467 ORK                              R30 R31 K70 ["Icon16"]
      468 GETUPVAL                         R31 5
      469 GETTABLEKS                       R31 R31 K72 ["createElement"]
      471 GETUPVAL                         R32 7
      472 GETTABLEKS                       R35 R1 K69 ["LeftIcon"]
      474 FASTCALL1                        TYPEOF R35 ; [+2]
      475 GETIMPORT                        R34 K6 [typeof]
      477 CALL                             R34 1 1
      478 JUMPIFNOTEQKS                    R34 K73 ["table"] ; [+15]
      480 GETUPVAL                         R33 8
      481 NEWTABLE                         R34 2 0
      483 LOADN                            R35 1
      484 SETTABLEKS                       R35 R34 K46 ["LayoutOrder"]
      486 GETUPVAL                         R35 1
      487 GETTABLEKS                       R35 R35 K2 ["Tag"]
      489 SETTABLE                         R30 R34 R35
      490 GETTABLEKS                       R35 R1 K69 ["LeftIcon"]
      492 CALL                             R33 2 1
      493 JUMP                             ; [+13]
      494 NEWTABLE                         R33 4 0
      496 LOADN                            R34 1
      497 SETTABLEKS                       R34 R33 K46 ["LayoutOrder"]
      499 GETTABLEKS                       R34 R1 K69 ["LeftIcon"]
      501 SETTABLEKS                       R34 R33 K74 ["Image"]
      503 GETUPVAL                         R34 1
      504 GETTABLEKS                       R34 R34 K2 ["Tag"]
      506 SETTABLE                         R30 R33 R34
      507 CALL                             R31 2 1
      508 MOVE                             R29 R31
      509 JUMP                             ; [+45]
      510 GETUPVAL                         R30 5
      511 GETTABLEKS                       R30 R30 K72 ["createElement"]
      513 GETUPVAL                         R31 9
      514 GETTABLEKS                       R34 R1 K69 ["LeftIcon"]
      516 FASTCALL1                        TYPEOF R34 ; [+2]
      517 GETIMPORT                        R33 K6 [typeof]
      519 CALL                             R33 1 1
      520 JUMPIFNOTEQKS                    R33 K73 ["table"] ; [+10]
      522 GETUPVAL                         R32 8
      523 GETTABLEKS                       R33 R1 K69 ["LeftIcon"]
      525 DUPTABLE                         R34 K75 [{"LayoutOrder"}]
      526 LOADN                            R35 1
      527 SETTABLEKS                       R35 R34 K46 ["LayoutOrder"]
      529 CALL                             R32 2 1
      530 JUMP                             ; [+22]
      531 DUPTABLE                         R32 K77 [{"LayoutOrder", "ScaleType", "Size", "Style"}]
      532 LOADN                            R33 1
      533 SETTABLEKS                       R33 R32 K46 ["LayoutOrder"]
      535 SETTABLEKS                       R19 R32 K76 ["ScaleType"]
      537 GETIMPORT                        R33 K79 [UDim2.fromOffset]
      539 MOVE                             R34 R21
      540 MOVE                             R35 R21
      541 CALL                             R33 2 1
      542 SETTABLEKS                       R33 R32 K19 ["Size"]
      544 DUPTABLE                         R33 K80 [{"Background", "Image"}]
      545 SETTABLEKS                       R18 R33 K17 ["Background"]
      547 GETTABLEKS                       R34 R1 K69 ["LeftIcon"]
      549 SETTABLEKS                       R34 R33 K74 ["Image"]
      551 SETTABLEKS                       R33 R32 K3 ["Style"]
      553 CALL                             R30 2 1
      554 MOVE                             R29 R30
      555 LOADNIL                          R30
      556 GETTABLEKS                       R31 R1 K81 ["RightIcon"]
      558 JUMPIFNOT                        R31 ; [+95]
      559 GETUPVAL                         R31 0
      560 JUMPIFNOT                        R31 ; [+48]
      561 GETTABLEKS                       R32 R1 K71 ["IconTag"]
      563 ORK                              R31 R32 K70 ["Icon16"]
      564 GETUPVAL                         R32 5
      565 GETTABLEKS                       R32 R32 K72 ["createElement"]
      567 GETUPVAL                         R33 7
      568 GETTABLEKS                       R36 R1 K81 ["RightIcon"]
      570 FASTCALL1                        TYPEOF R36 ; [+2]
      571 GETIMPORT                        R35 K6 [typeof]
      573 CALL                             R35 1 1
      574 JUMPIFNOTEQKS                    R35 K73 ["table"] ; [+15]
      576 GETUPVAL                         R34 8
      577 NEWTABLE                         R35 2 0
      579 LOADN                            R36 1
      580 SETTABLEKS                       R36 R35 K46 ["LayoutOrder"]
      582 GETUPVAL                         R36 1
      583 GETTABLEKS                       R36 R36 K2 ["Tag"]
      585 SETTABLE                         R31 R35 R36
      586 GETTABLEKS                       R36 R1 K81 ["RightIcon"]
      588 CALL                             R34 2 1
      589 JUMP                             ; [+16]
      590 NEWTABLE                         R34 4 0
      592 LOADN                            R35 3
      593 SETTABLEKS                       R35 R34 K46 ["LayoutOrder"]
      595 GETTABLEKS                       R35 R1 K81 ["RightIcon"]
      597 SETTABLEKS                       R35 R34 K74 ["Image"]
      599 GETUPVAL                         R35 1
      600 GETTABLEKS                       R35 R35 K2 ["Tag"]
      602 GETTABLEKS                       R37 R1 K71 ["IconTag"]
      604 ORK                              R36 R37 K70 ["Icon16"]
      605 SETTABLE                         R36 R34 R35
      606 CALL                             R32 2 1
      607 MOVE                             R30 R32
      608 JUMP                             ; [+45]
      609 GETUPVAL                         R31 5
      610 GETTABLEKS                       R31 R31 K72 ["createElement"]
      612 GETUPVAL                         R32 9
      613 GETTABLEKS                       R35 R1 K81 ["RightIcon"]
      615 FASTCALL1                        TYPEOF R35 ; [+2]
      616 GETIMPORT                        R34 K6 [typeof]
      618 CALL                             R34 1 1
      619 JUMPIFNOTEQKS                    R34 K73 ["table"] ; [+10]
      621 GETUPVAL                         R33 8
      622 GETTABLEKS                       R34 R1 K81 ["RightIcon"]
      624 DUPTABLE                         R35 K75 [{"LayoutOrder"}]
      625 LOADN                            R36 3
      626 SETTABLEKS                       R36 R35 K46 ["LayoutOrder"]
      628 CALL                             R33 2 1
      629 JUMP                             ; [+22]
      630 DUPTABLE                         R33 K77 [{"LayoutOrder", "ScaleType", "Size", "Style"}]
      631 LOADN                            R34 3
      632 SETTABLEKS                       R34 R33 K46 ["LayoutOrder"]
      634 SETTABLEKS                       R19 R33 K76 ["ScaleType"]
      636 GETIMPORT                        R34 K79 [UDim2.fromOffset]
      638 MOVE                             R35 R21
      639 MOVE                             R36 R21
      640 CALL                             R34 2 1
      641 SETTABLEKS                       R34 R33 K19 ["Size"]
      643 DUPTABLE                         R34 K80 [{"Background", "Image"}]
      644 SETTABLEKS                       R18 R34 K17 ["Background"]
      646 GETTABLEKS                       R35 R1 K81 ["RightIcon"]
      648 SETTABLEKS                       R35 R34 K74 ["Image"]
      650 SETTABLEKS                       R34 R33 K3 ["Style"]
      652 CALL                             R31 2 1
      653 MOVE                             R30 R31
      654 GETUPVAL                         R31 5
      655 GETTABLEKS                       R31 R31 K72 ["createElement"]
      657 LOADK                            R32 K82 ["TextButton"]
      658 MOVE                             R33 R25
      659 DUPTABLE                         R34 K86 [{"Content", "Tooltip", "HoverArea"}]
      660 GETUPVAL                         R35 5
      661 GETTABLEKS                       R35 R35 K72 ["createElement"]
      663 GETUPVAL                         R36 9
      664 GETUPVAL                         R38 0
      665 JUMPIFNOT                        R38 ; [+58]
      666 NEWTABLE                         R37 8 0
      668 GETTABLEKS                       R38 R1 K33 ["AutomaticSize"]
      670 SETTABLEKS                       R38 R37 K33 ["AutomaticSize"]
      672 SETTABLEKS                       R12 R37 K13 ["BackgroundColor3"]
      674 SETTABLEKS                       R20 R37 K26 ["BorderColor"]
      676 SETTABLEKS                       R13 R37 K19 ["Size"]
      678 GETUPVAL                         R38 1
      679 GETTABLEKS                       R38 R38 K2 ["Tag"]
      681 GETTABLEKS                       R40 R1 K60 ["OverrideTags"]
      683 JUMPIFNOT                        R40 ; [+20]
      684 GETTABLEKS                       R39 R1 K87 ["PaneTags"]
      686 JUMPIF                           R39 ; [+35]
      687 GETUPVAL                         R39 2
      688 LOADK                            R40 K88 ["X-Fit X-RowM"]
      689 JUMPIFNOT                        R26 ; [+2]
      690 LOADNIL                          R41
      691 JUMP                             ; [+1]
      692 LOADK                            R41 K89 ["X-Corner"]
      693 MOVE                             R42 R27
      694 GETUPVAL                         R44 3
      695 MOVE                             R45 R3
      696 LOADK                            R46 K90 ["Compact"]
      697 CALL                             R44 2 1
      698 JUMPIFNOT                        R44 ; [+2]
      699 LOADK                            R43 K91 ["X-PadS"]
      700 JUMP                             ; [+1]
      701 LOADK                            R43 K92 ["X-Pad"]
      702 CALL                             R39 4 1
      703 JUMP                             ; [+18]
      704 GETUPVAL                         R39 2
      705 LOADK                            R40 K88 ["X-Fit X-RowM"]
      706 JUMPIFNOT                        R26 ; [+2]
      707 LOADNIL                          R41
      708 JUMP                             ; [+1]
      709 LOADK                            R41 K89 ["X-Corner"]
      710 MOVE                             R42 R27
      711 GETUPVAL                         R44 3
      712 MOVE                             R45 R3
      713 LOADK                            R46 K90 ["Compact"]
      714 CALL                             R44 2 1
      715 JUMPIFNOT                        R44 ; [+2]
      716 LOADK                            R43 K91 ["X-PadS"]
      717 JUMP                             ; [+1]
      718 LOADK                            R43 K92 ["X-Pad"]
      719 GETTABLEKS                       R44 R1 K87 ["PaneTags"]
      721 CALL                             R39 5 1
      722 SETTABLE                         R39 R37 R38
      723 JUMP                             ; [+25]
      724 DUPTABLE                         R37 K95 [{"AutomaticSize", "BackgroundColor", "BorderColor", "ImageTransparency", "Layout", "Padding", "Size", "Spacing", "Style"}]
      725 GETTABLEKS                       R38 R1 K33 ["AutomaticSize"]
      727 SETTABLEKS                       R38 R37 K33 ["AutomaticSize"]
      729 SETTABLEKS                       R12 R37 K14 ["BackgroundColor"]
      731 SETTABLEKS                       R20 R37 K26 ["BorderColor"]
      733 GETTABLEKS                       R38 R1 K93 ["ImageTransparency"]
      735 SETTABLEKS                       R38 R37 K93 ["ImageTransparency"]
      737 GETIMPORT                        R38 K98 [Enum.FillDirection.Horizontal]
      739 SETTABLEKS                       R38 R37 K94 ["Layout"]
      741 SETTABLEKS                       R22 R37 K28 ["Padding"]
      743 SETTABLEKS                       R13 R37 K19 ["Size"]
      745 SETTABLEKS                       R23 R37 K29 ["Spacing"]
      747 SETTABLEKS                       R14 R37 K3 ["Style"]
      749 DUPTABLE                         R38 K99 [{"LeftIcon", "Text", "RightIcon"}]
      750 SETTABLEKS                       R29 R38 K69 ["LeftIcon"]
      752 GETTABLEKS                       R39 R1 K48 ["Text"]
      754 JUMPIFNOT                        R39 ; [+53]
      755 GETUPVAL                         R39 5
      756 GETTABLEKS                       R39 R39 K72 ["createElement"]
      758 GETUPVAL                         R40 10
      759 GETUPVAL                         R42 0
      760 JUMPIFNOT                        R42 ; [+22]
      761 NEWTABLE                         R41 4 0
      763 LOADN                            R42 2
      764 SETTABLEKS                       R42 R41 K46 ["LayoutOrder"]
      766 GETTABLEKS                       R42 R1 K48 ["Text"]
      768 SETTABLEKS                       R42 R41 K48 ["Text"]
      770 GETUPVAL                         R42 1
      771 GETTABLEKS                       R42 R42 K2 ["Tag"]
      773 GETUPVAL                         R43 2
      774 LOADK                            R44 K62 ["X-Fit"]
      775 JUMPIFNOT                        R8 ; [+2]
      776 LOADK                            R45 K11 ["Disabled"]
      777 JUMP                             ; [+1]
      778 LOADNIL                          R45
      779 ORK                              R46 R28 K100 []
      780 CALL                             R43 3 1
      781 SETTABLE                         R43 R41 R42
      782 JUMP                             ; [+24]
      783 DUPTABLE                         R41 K103 [{"AutomaticSize", "Text", "TextColor", "Size", "LayoutOrder", "TextXAlignment", "TextYAlignment"}]
      784 GETTABLEKS                       R42 R1 K33 ["AutomaticSize"]
      786 SETTABLEKS                       R42 R41 K33 ["AutomaticSize"]
      788 GETTABLEKS                       R42 R1 K48 ["Text"]
      790 SETTABLEKS                       R42 R41 K48 ["Text"]
      792 SETTABLEKS                       R17 R41 K22 ["TextColor"]
      794 SETTABLEKS                       R24 R41 K19 ["Size"]
      796 LOADN                            R42 2
      797 SETTABLEKS                       R42 R41 K46 ["LayoutOrder"]
      799 GETTABLEKS                       R42 R1 K101 ["TextXAlignment"]
      801 SETTABLEKS                       R42 R41 K101 ["TextXAlignment"]
      803 GETTABLEKS                       R42 R1 K102 ["TextYAlignment"]
      805 SETTABLEKS                       R42 R41 K102 ["TextYAlignment"]
      807 CALL                             R39 2 1
      808 SETTABLEKS                       R39 R38 K48 ["Text"]
      810 SETTABLEKS                       R30 R38 K81 ["RightIcon"]
      812 CALL                             R35 3 1
      813 SETTABLEKS                       R35 R34 K83 ["Content"]
      815 GETTABLEKS                       R35 R1 K104 ["TooltipText"]
      817 JUMPIFNOT                        R35 ; [+14]
      818 GETUPVAL                         R35 5
      819 GETTABLEKS                       R35 R35 K72 ["createElement"]
      821 GETUPVAL                         R36 11
      822 DUPTABLE                         R37 K105 [{"Style", "Text"}]
      823 GETTABLEKS                       R38 R1 K106 ["TooltipStyle"]
      825 SETTABLEKS                       R38 R37 K3 ["Style"]
      827 GETTABLEKS                       R38 R1 K104 ["TooltipText"]
      829 SETTABLEKS                       R38 R37 K48 ["Text"]
      831 CALL                             R35 2 1
      832 SETTABLEKS                       R35 R34 K84 ["Tooltip"]
      834 GETTABLEKS                       R36 R1 K107 ["Cursor"]
      836 JUMPIFNOT                        R36 ; [+11]
      837 GETUPVAL                         R35 5
      838 GETTABLEKS                       R35 R35 K72 ["createElement"]
      840 GETUPVAL                         R36 12
      841 DUPTABLE                         R37 K108 [{"Cursor"}]
      842 GETTABLEKS                       R38 R1 K107 ["Cursor"]
      844 SETTABLEKS                       R38 R37 K107 ["Cursor"]
      846 CALL                             R35 2 1
      847 JUMP                             ; [+1]
      848 LOADNIL                          R35
      849 SETTABLEKS                       R35 R34 K85 ["HoverArea"]
      851 CALL                             R31 3 -1
      852 RETURN                           R31 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["join"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R5 K10 ["ContextServices"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K11 ["withContext"]
       34 GETIMPORT                        R6 K6 [require]
       36 GETTABLEKS                       R7 R0 K12 ["Wrappers"]
       38 GETTABLEKS                       R7 R7 K13 ["withForwardRef"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R8 R0 K4 ["Parent"]
       43 LOADK                            R10 K14 ["React"]
       44 NAMECALL                         R8 R8 K15 ["FindFirstChild"]
       46 CALL                             R8 2 1
       47 JUMPIFNOT                        R8 ; [+8]
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K4 ["Parent"]
       52 GETTABLEKS                       R8 R8 K14 ["React"]
       54 CALL                             R7 1 1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R7
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R0 K16 ["Styling"]
       61 GETTABLEKS                       R9 R9 K17 ["supportsStyleSheets"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R10 R0 K16 ["Styling"]
       68 GETTABLEKS                       R10 R10 K18 ["joinTags"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETTABLEKS                       R11 R0 K16 ["Styling"]
       75 GETTABLEKS                       R11 R11 K19 ["hasTag"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K6 [require]
       80 GETTABLEKS                       R12 R0 K20 ["Util"]
       82 CALL                             R11 1 1
       83 GETTABLEKS                       R12 R11 K21 ["prioritize"]
       85 GETIMPORT                        R13 K6 [require]
       87 GETTABLEKS                       R14 R0 K2 ["UI"]
       89 GETTABLEKS                       R14 R14 K22 ["Components"]
       91 GETTABLEKS                       R14 R14 K23 ["Pane"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K6 [require]
       96 GETTABLEKS                       R15 R0 K2 ["UI"]
       98 GETTABLEKS                       R15 R15 K22 ["Components"]
      100 GETTABLEKS                       R15 R15 K24 ["TextLabel"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K6 [require]
      105 GETTABLEKS                       R16 R0 K2 ["UI"]
      107 GETTABLEKS                       R16 R16 K22 ["Components"]
      109 GETTABLEKS                       R16 R16 K25 ["Tooltip"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K6 [require]
      114 GETTABLEKS                       R17 R0 K2 ["UI"]
      116 GETTABLEKS                       R17 R17 K22 ["Components"]
      118 GETTABLEKS                       R17 R17 K26 ["HoverArea"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K6 [require]
      123 GETTABLEKS                       R18 R0 K2 ["UI"]
      125 GETTABLEKS                       R18 R18 K22 ["Components"]
      127 GETTABLEKS                       R18 R18 K27 ["Image"]
      129 CALL                             R17 1 1
      130 GETTABLEKS                       R18 R1 K28 ["PureComponent"]
      132 LOADK                            R20 K29 ["IconButton"]
      133 NAMECALL                         R18 R18 K30 ["extend"]
      135 CALL                             R18 2 1
      136 GETIMPORT                        R19 K33 [UDim2.fromScale]
      138 LOADN                            R20 0
      139 LOADN                            R21 0
      140 CALL                             R19 2 1
      141 DUPTABLE                         R20 K39 [{"BackgroundStyle", "Disabled", "LayoutOrder", "TextXAlignment", "TextYAlignment"}]
      142 JUMPIFNOT                        R8 ; [+2]
      143 LOADNIL                          R21
      144 JUMP                             ; [+1]
      145 LOADK                            R21 K40 ["BorderBox"]
      146 SETTABLEKS                       R21 R20 K34 ["BackgroundStyle"]
      148 LOADB                            R21 0
      149 SETTABLEKS                       R21 R20 K35 ["Disabled"]
      151 LOADN                            R21 0
      152 SETTABLEKS                       R21 R20 K36 ["LayoutOrder"]
      154 JUMPIFNOT                        R8 ; [+2]
      155 LOADNIL                          R21
      156 JUMP                             ; [+2]
      157 GETIMPORT                        R21 K43 [Enum.TextXAlignment.Left]
      159 SETTABLEKS                       R21 R20 K37 ["TextXAlignment"]
      161 JUMPIFNOT                        R8 ; [+2]
      162 LOADNIL                          R21
      163 JUMP                             ; [+2]
      164 GETIMPORT                        R21 K45 [Enum.TextYAlignment.Center]
      166 SETTABLEKS                       R21 R20 K38 ["TextYAlignment"]
      168 SETTABLEKS                       R20 R18 K46 ["defaultProps"]
      170 DUPCLOSURE                       R20 K47 [PROTO_2]
      171 CAPTURE                          VAL R8
      172 SETTABLEKS                       R20 R18 K48 ["init"]
      174 DUPCLOSURE                       R20 K49 [PROTO_3]
      175 CAPTURE                          VAL R8
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R12
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R14
      186 CAPTURE                          VAL R15
      187 CAPTURE                          VAL R16
      188 SETTABLEKS                       R20 R18 K50 ["render"]
      190 MOVE                             R20 R5
      191 DUPTABLE                         R21 K52 [{"Stylizer"}]
      192 JUMPIFNOT                        R8 ; [+2]
      193 LOADNIL                          R22
      194 JUMP                             ; [+2]
      195 GETTABLEKS                       R22 R4 K51 ["Stylizer"]
      197 SETTABLEKS                       R22 R21 K51 ["Stylizer"]
      199 CALL                             R20 1 1
      200 MOVE                             R21 R18
      201 CALL                             R20 1 1
      202 MOVE                             R18 R20
      203 MOVE                             R20 R6
      204 MOVE                             R21 R18
      205 CALL                             R20 1 -1
      206 RETURN                           R20 -1
