PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnClick"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 LOADK                            R4 K1 ["PointingHand"]
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 3
       10 LOADB                            R6 0
       11 CALL                             R5 1 2
       12 GETUPVAL                         R7 3
       13 LOADNIL                          R8
       14 CALL                             R7 1 2
       15 GETUPVAL                         R9 3
       16 GETIMPORT                        R10 K4 [Vector2.new]
       18 LOADN                            R11 0
       19 LOADN                            R12 0
       20 CALL                             R10 2 -1
       21 CALL                             R9 -1 2
       22 GETUPVAL                         R11 4
       23 LOADNIL                          R12
       24 CALL                             R11 1 1
       25 GETUPVAL                         R13 5
       26 GETTABLEKS                       R12 R13 K5 ["useContextMenuActions"]
       28 CALL                             R12 0 1
       29 GETUPVAL                         R13 6
       30 GETTABLEKS                       R14 R0 K6 ["Cell"]
       32 MOVE                             R15 R12
       33 JUMPIF                           R15 ; [+2]
       34 NEWTABLE                         R15 0 0
       36 CALL                             R13 2 1
       37 GETTABLEKS                       R15 R0 K6 ["Cell"]
       39 GETTABLEKS                       R14 R15 K7 ["IsPlaceholder"]
       41 JUMPIFNOT                        R14 ; [+17]
       42 GETUPVAL                         R15 7
       43 GETTABLEKS                       R14 R15 K8 ["createElement"]
       45 GETUPVAL                         R16 8
       46 GETTABLEKS                       R15 R16 K9 ["Component"]
       48 DUPTABLE                         R16 K12 [{"Size", "Position"}]
       49 GETTABLEKS                       R17 R0 K10 ["Size"]
       51 SETTABLEKS                       R17 R16 K10 ["Size"]
       53 GETTABLEKS                       R17 R0 K11 ["Position"]
       55 SETTABLEKS                       R17 R16 K11 ["Position"]
       57 CALL                             R14 2 -1
       58 RETURN                           R14 -1
       59 GETTABLEKS                       R14 R0 K6 ["Cell"]
       61 LOADNIL                          R15
       62 GETTABLEKS                       R16 R14 K13 ["LastViewed"]
       64 JUMPIFNOT                        R16 ; [+6]
       65 GETUPVAL                         R16 9
       66 GETTABLEKS                       R17 R14 K13 ["LastViewed"]
       68 MOVE                             R18 R1
       69 CALL                             R16 2 1
       70 MOVE                             R15 R16
       71 NEWTABLE                         R16 0 0
       73 GETTABLEKS                       R17 R14 K14 ["TeamCreatePresence"]
       75 JUMPIFNOT                        R17 ; [+254]
       76 LOADN                            R17 2
       77 GETUPVAL                         R18 10
       78 JUMPIFNOT                        R18 ; [+7]
       79 GETTABLEKS                       R19 R14 K14 ["TeamCreatePresence"]
       81 LENGTH                           R18 R19
       82 GETUPVAL                         R19 11
       83 JUMPIFNOTEQ                      R18 R19 ; [+2]
       85 LOADN                            R17 3
       86 LOADN                            R20 1
       87 GETTABLEKS                       R23 R14 K14 ["TeamCreatePresence"]
       89 LENGTH                           R22 R23
       90 FASTCALL2                        MATH_MIN R22 R17 ; [+4]
       92 MOVE                             R23 R17
       93 GETIMPORT                        R21 K17 [math.min]
       95 CALL                             R21 2 1
       96 MOVE                             R18 R21
       97 LOADN                            R19 1
       98 FORNPREP                         R18
       99 MOVE                             R22 R16
      100 GETUPVAL                         R24 7
      101 GETTABLEKS                       R23 R24 K8 ["createElement"]
      103 LOADK                            R24 K18 ["Frame"]
      104 NEWTABLE                         R25 2 0
      106 GETIMPORT                        R26 K20 [UDim2.new]
      108 LOADN                            R27 0
      109 LOADN                            R28 35
      110 LOADN                            R29 0
      111 LOADN                            R30 35
      112 CALL                             R26 4 1
      113 SETTABLEKS                       R26 R25 K10 ["Size"]
      115 GETUPVAL                         R27 7
      116 GETTABLEKS                       R26 R27 K21 ["Tag"]
      118 LOADK                            R27 K22 ["X-Fit X-Middle X-Center StartPage-TeamCreateOnlineBackground StartPage-Circular"]
      119 SETTABLE                         R27 R25 R26
      120 NEWTABLE                         R26 0 1
      122 GETUPVAL                         R28 7
      123 GETTABLEKS                       R27 R28 K8 ["createElement"]
      125 LOADK                            R28 K18 ["Frame"]
      126 NEWTABLE                         R29 2 0
      128 GETIMPORT                        R30 K20 [UDim2.new]
      130 LOADN                            R31 0
      131 LOADN                            R32 30
      132 LOADN                            R33 0
      133 LOADN                            R34 30
      134 CALL                             R30 4 1
      135 SETTABLEKS                       R30 R29 K10 ["Size"]
      137 GETUPVAL                         R31 7
      138 GETTABLEKS                       R30 R31 K21 ["Tag"]
      140 LOADK                            R31 K23 ["X-Fit X-Middle X-Center StartPage-Standard StartPage-Circular"]
      141 SETTABLE                         R31 R29 R30
      142 NEWTABLE                         R30 0 1
      144 GETUPVAL                         R32 7
      145 GETTABLEKS                       R31 R32 K8 ["createElement"]
      147 GETUPVAL                         R32 12
      148 DUPTABLE                         R33 K25 [{"Style", "Size"}]
      149 DUPTABLE                         R34 K27 [{"Image"}]
      150 GETTABLEKS                       R36 R14 K14 ["TeamCreatePresence"]
      152 GETTABLE                         R35 R36 R20
      153 SETTABLEKS                       R35 R34 K26 ["Image"]
      155 SETTABLEKS                       R34 R33 K24 ["Style"]
      157 GETIMPORT                        R34 K20 [UDim2.new]
      159 LOADN                            R35 0
      160 LOADN                            R36 30
      161 LOADN                            R37 0
      162 LOADN                            R38 30
      163 CALL                             R34 4 1
      164 SETTABLEKS                       R34 R33 K10 ["Size"]
      166 CALL                             R31 2 -1
      167 SETLIST                          R30 R31 -1 [1]
      169 CALL                             R27 3 -1
      170 SETLIST                          R26 R27 -1 [1]
      172 CALL                             R23 3 -1
      173 FASTCALL                         TABLE_INSERT ; [+2]
      174 GETIMPORT                        R21 K30 [table.insert]
      176 CALL                             R21 -1 0
      177 FORNLOOP                         R18
      178 GETTABLEKS                       R19 R14 K14 ["TeamCreatePresence"]
      180 LENGTH                           R18 R19
      181 GETUPVAL                         R19 11
      182 JUMPIFNOTLT                      R19 R18 ; [+147]
      184 GETUPVAL                         R18 10
      185 JUMPIFNOT                        R18 ; [+73]
      186 MOVE                             R19 R16
      187 GETUPVAL                         R21 7
      188 GETTABLEKS                       R20 R21 K8 ["createElement"]
      190 LOADK                            R21 K18 ["Frame"]
      191 NEWTABLE                         R22 2 0
      193 GETIMPORT                        R23 K20 [UDim2.new]
      195 LOADN                            R24 0
      196 LOADN                            R25 35
      197 LOADN                            R26 0
      198 LOADN                            R27 35
      199 CALL                             R23 4 1
      200 SETTABLEKS                       R23 R22 K10 ["Size"]
      202 GETUPVAL                         R24 7
      203 GETTABLEKS                       R23 R24 K21 ["Tag"]
      205 LOADK                            R24 K23 ["X-Fit X-Middle X-Center StartPage-Standard StartPage-Circular"]
      206 SETTABLE                         R24 R22 R23
      207 NEWTABLE                         R23 0 1
      209 GETUPVAL                         R25 7
      210 GETTABLEKS                       R24 R25 K8 ["createElement"]
      212 LOADK                            R25 K31 ["TextLabel"]
      213 NEWTABLE                         R26 8 0
      215 GETIMPORT                        R27 K20 [UDim2.new]
      217 LOADN                            R28 0
      218 LOADN                            R29 30
      219 LOADN                            R30 0
      220 LOADN                            R31 30
      221 CALL                             R27 4 1
      222 SETTABLEKS                       R27 R26 K10 ["Size"]
      224 LOADK                            R28 K32 ["+"]
      225 GETTABLEKS                       R33 R14 K14 ["TeamCreatePresence"]
      227 LENGTH                           R32 R33
      228 GETUPVAL                         R33 11
      229 SUB                              R31 R32 R33
      230 ADDK                             R30 R31 K33 [1]
      231 FASTCALL1                        TOSTRING R30 ; [+2]
      232 GETIMPORT                        R29 K35 [tostring]
      234 CALL                             R29 1 1
      235 CONCAT                           R27 R28 R29
      236 SETTABLEKS                       R27 R26 K36 ["Text"]
      238 GETIMPORT                        R27 K40 [Enum.Font.BuilderSans]
      240 SETTABLEKS                       R27 R26 K38 ["Font"]
      242 LOADN                            R27 18
      243 SETTABLEKS                       R27 R26 K41 ["TextSize"]
      245 GETUPVAL                         R28 7
      246 GETTABLEKS                       R27 R28 K21 ["Tag"]
      248 LOADK                            R28 K42 ["X-Fit X-Transparent StartPage-StandardDarkTextColor"]
      249 SETTABLE                         R28 R26 R27
      250 CALL                             R24 2 -1
      251 SETLIST                          R23 R24 -1 [1]
      253 CALL                             R20 3 -1
      254 FASTCALL                         TABLE_INSERT ; [+2]
      255 GETIMPORT                        R18 K30 [table.insert]
      257 CALL                             R18 -1 0
      258 JUMP                             ; [+71]
      259 MOVE                             R19 R16
      260 GETUPVAL                         R21 7
      261 GETTABLEKS                       R20 R21 K8 ["createElement"]
      263 LOADK                            R21 K18 ["Frame"]
      264 NEWTABLE                         R22 2 0
      266 GETIMPORT                        R23 K20 [UDim2.new]
      268 LOADN                            R24 0
      269 LOADN                            R25 35
      270 LOADN                            R26 0
      271 LOADN                            R27 35
      272 CALL                             R23 4 1
      273 SETTABLEKS                       R23 R22 K10 ["Size"]
      275 GETUPVAL                         R24 7
      276 GETTABLEKS                       R23 R24 K21 ["Tag"]
      278 LOADK                            R24 K23 ["X-Fit X-Middle X-Center StartPage-Standard StartPage-Circular"]
      279 SETTABLE                         R24 R22 R23
      280 NEWTABLE                         R23 0 1
      282 GETUPVAL                         R25 7
      283 GETTABLEKS                       R24 R25 K8 ["createElement"]
      285 LOADK                            R25 K31 ["TextLabel"]
      286 NEWTABLE                         R26 8 0
      288 GETIMPORT                        R27 K20 [UDim2.new]
      290 LOADN                            R28 0
      291 LOADN                            R29 30
      292 LOADN                            R30 0
      293 LOADN                            R31 30
      294 CALL                             R27 4 1
      295 SETTABLEKS                       R27 R26 K10 ["Size"]
      297 LOADK                            R28 K32 ["+"]
      298 GETTABLEKS                       R32 R14 K14 ["TeamCreatePresence"]
      300 LENGTH                           R31 R32
      301 GETUPVAL                         R32 11
      302 SUB                              R30 R31 R32
      303 FASTCALL1                        TOSTRING R30 ; [+2]
      304 GETIMPORT                        R29 K35 [tostring]
      306 CALL                             R29 1 1
      307 CONCAT                           R27 R28 R29
      308 SETTABLEKS                       R27 R26 K36 ["Text"]
      310 GETIMPORT                        R27 K40 [Enum.Font.BuilderSans]
      312 SETTABLEKS                       R27 R26 K38 ["Font"]
      314 LOADN                            R27 18
      315 SETTABLEKS                       R27 R26 K41 ["TextSize"]
      317 GETUPVAL                         R28 7
      318 GETTABLEKS                       R27 R28 K21 ["Tag"]
      320 LOADK                            R28 K42 ["X-Fit X-Transparent StartPage-StandardDarkTextColor"]
      321 SETTABLE                         R28 R26 R27
      322 CALL                             R24 2 -1
      323 SETLIST                          R23 R24 -1 [1]
      325 CALL                             R20 3 -1
      326 FASTCALL                         TABLE_INSERT ; [+2]
      327 GETIMPORT                        R18 K30 [table.insert]
      329 CALL                             R18 -1 0
      330 LOADNIL                          R17
      331 GETTABLEKS                       R18 R14 K43 ["ImageUrl"]
      333 JUMPIFNOT                        R18 ; [+111]
      334 GETUPVAL                         R18 13
      335 JUMPIFNOT                        R18 ; [+109]
      336 GETUPVAL                         R19 7
      337 GETTABLEKS                       R18 R19 K8 ["createElement"]
      339 GETUPVAL                         R19 12
      340 NEWTABLE                         R20 4 0
      342 DUPTABLE                         R21 K27 [{"Image"}]
      343 GETTABLEKS                       R22 R14 K43 ["ImageUrl"]
      345 SETTABLEKS                       R22 R21 K26 ["Image"]
      347 SETTABLEKS                       R21 R20 K24 ["Style"]
      349 GETTABLEKS                       R21 R0 K44 ["ImageSize"]
      351 SETTABLEKS                       R21 R20 K10 ["Size"]
      353 MOVE                             R21 R2
      354 CALL                             R21 0 1
      355 SETTABLEKS                       R21 R20 K45 ["LayoutOrder"]
      357 GETUPVAL                         R22 7
      358 GETTABLEKS                       R21 R22 K21 ["Tag"]
      360 LOADK                            R22 K46 ["X-Corner"]
      361 SETTABLE                         R22 R20 R21
      362 DUPTABLE                         R21 K49 [{"Difficulty", "Collaborators"}]
      363 GETTABLEKS                       R23 R0 K50 ["IsDifficultyVisible"]
      365 JUMPIFNOT                        R23 ; [+58]
      366 GETTABLEKS                       R23 R14 K47 ["Difficulty"]
      368 JUMPIFNOT                        R23 ; [+55]
      369 GETTABLEKS                       R23 R14 K47 ["Difficulty"]
      371 JUMPIFEQKS                       R23 K51 [""] ; [+52]
      373 GETUPVAL                         R23 7
      374 GETTABLEKS                       R22 R23 K8 ["createElement"]
      376 LOADK                            R23 K18 ["Frame"]
      377 NEWTABLE                         R24 1 0
      379 GETUPVAL                         R26 7
      380 GETTABLEKS                       R25 R26 K21 ["Tag"]
      382 LOADK                            R26 K52 ["X-Pad X-Fill X-Top X-Left X-Transparent"]
      383 SETTABLE                         R26 R24 R25
      384 GETUPVAL                         R26 14
      385 JUMPIFNOT                        R26 ; [+16]
      386 GETUPVAL                         R26 7
      387 GETTABLEKS                       R25 R26 K8 ["createElement"]
      389 GETUPVAL                         R26 15
      390 DUPTABLE                         R27 K55 [{"text", "variant"}]
      391 GETTABLEKS                       R28 R14 K47 ["Difficulty"]
      393 SETTABLEKS                       R28 R27 K53 ["text"]
      395 GETUPVAL                         R29 16
      396 GETTABLEKS                       R28 R29 K56 ["Neutral"]
      398 SETTABLEKS                       R28 R27 K54 ["variant"]
      400 CALL                             R25 2 1
      401 JUMP                             ; [+20]
      402 NEWTABLE                         R25 0 1
      404 GETUPVAL                         R27 7
      405 GETTABLEKS                       R26 R27 K8 ["createElement"]
      407 GETUPVAL                         R27 17
      408 NEWTABLE                         R28 2 0
      410 GETTABLEKS                       R29 R14 K47 ["Difficulty"]
      412 SETTABLEKS                       R29 R28 K36 ["Text"]
      414 GETUPVAL                         R30 7
      415 GETTABLEKS                       R29 R30 K21 ["Tag"]
      417 LOADK                            R30 K57 ["X-Fit"]
      418 SETTABLE                         R30 R28 R29
      419 CALL                             R26 2 1
      420 SETLIST                          R25 R26 1 [1]
      422 CALL                             R22 3 1
      423 JUMP                             ; [+1]
      424 LOADNIL                          R22
      425 SETTABLEKS                       R22 R21 K47 ["Difficulty"]
      427 GETUPVAL                         R23 7
      428 GETTABLEKS                       R22 R23 K8 ["createElement"]
      430 LOADK                            R23 K18 ["Frame"]
      431 NEWTABLE                         R24 1 0
      433 GETUPVAL                         R26 7
      434 GETTABLEKS                       R25 R26 K21 ["Tag"]
      436 LOADK                            R26 K58 ["X-Pad X-Bottom X-Right X-Fill X-Row X-Transparent"]
      437 SETTABLE                         R26 R24 R25
      438 MOVE                             R25 R16
      439 CALL                             R22 3 1
      440 SETTABLEKS                       R22 R21 K48 ["Collaborators"]
      442 CALL                             R18 3 1
      443 MOVE                             R17 R18
      444 JUMP                             ; [+119]
      445 GETTABLEKS                       R18 R14 K43 ["ImageUrl"]
      447 JUMPIFNOT                        R18 ; [+48]
      448 GETUPVAL                         R18 13
      449 JUMPIF                           R18 ; [+46]
      450 GETUPVAL                         R19 7
      451 GETTABLEKS                       R18 R19 K8 ["createElement"]
      453 GETUPVAL                         R19 12
      454 NEWTABLE                         R20 4 0
      456 DUPTABLE                         R21 K27 [{"Image"}]
      457 GETTABLEKS                       R22 R14 K43 ["ImageUrl"]
      459 SETTABLEKS                       R22 R21 K26 ["Image"]
      461 SETTABLEKS                       R21 R20 K24 ["Style"]
      463 GETTABLEKS                       R21 R0 K44 ["ImageSize"]
      465 SETTABLEKS                       R21 R20 K10 ["Size"]
      467 MOVE                             R21 R2
      468 CALL                             R21 0 1
      469 SETTABLEKS                       R21 R20 K45 ["LayoutOrder"]
      471 GETUPVAL                         R22 7
      472 GETTABLEKS                       R21 R22 K21 ["Tag"]
      474 LOADK                            R22 K59 ["X-Corner X-Bottom X-Right"]
      475 SETTABLE                         R22 R20 R21
      476 NEWTABLE                         R21 0 1
      478 GETUPVAL                         R23 7
      479 GETTABLEKS                       R22 R23 K8 ["createElement"]
      481 LOADK                            R23 K18 ["Frame"]
      482 NEWTABLE                         R24 1 0
      484 GETUPVAL                         R26 7
      485 GETTABLEKS                       R25 R26 K21 ["Tag"]
      487 LOADK                            R26 K60 ["X-Pad X-Fit X-Row X-Transparent"]
      488 SETTABLE                         R26 R24 R25
      489 MOVE                             R25 R16
      490 CALL                             R22 3 -1
      491 SETLIST                          R21 R22 -1 [1]
      493 CALL                             R18 3 1
      494 MOVE                             R17 R18
      495 JUMP                             ; [+68]
      496 GETTABLEKS                       R18 R14 K61 ["NoLoadableImage"]
      498 JUMPIFNOT                        R18 ; [+52]
      499 GETUPVAL                         R19 7
      500 GETTABLEKS                       R18 R19 K8 ["createElement"]
      502 LOADK                            R19 K18 ["Frame"]
      503 NEWTABLE                         R20 4 0
      505 GETTABLEKS                       R21 R0 K44 ["ImageSize"]
      507 SETTABLEKS                       R21 R20 K10 ["Size"]
      509 LOADK                            R21 K62 [0.84]
      510 SETTABLEKS                       R21 R20 K63 ["BackgroundTransparency"]
      512 MOVE                             R21 R2
      513 CALL                             R21 0 1
      514 SETTABLEKS                       R21 R20 K45 ["LayoutOrder"]
      516 GETUPVAL                         R22 7
      517 GETTABLEKS                       R21 R22 K21 ["Tag"]
      519 LOADK                            R22 K64 ["X-Corner X-Center X-Middle StartPage-StandardDarkBackground"]
      520 SETTABLE                         R22 R20 R21
      521 GETUPVAL                         R22 7
      522 GETTABLEKS                       R21 R22 K8 ["createElement"]
      524 GETUPVAL                         R22 12
      525 NEWTABLE                         R23 4 0
      527 DUPTABLE                         R24 K27 [{"Image"}]
      528 LOADK                            R25 K65 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"]
      529 SETTABLEKS                       R25 R24 K26 ["Image"]
      531 SETTABLEKS                       R24 R23 K24 ["Style"]
      533 GETIMPORT                        R24 K20 [UDim2.new]
      535 LOADN                            R25 0
      536 LOADN                            R26 100
      537 LOADN                            R27 0
      538 LOADN                            R28 100
      539 CALL                             R24 4 1
      540 SETTABLEKS                       R24 R23 K10 ["Size"]
      542 GETUPVAL                         R25 7
      543 GETTABLEKS                       R24 R25 K21 ["Tag"]
      545 LOADK                            R25 K46 ["X-Corner"]
      546 SETTABLE                         R25 R23 R24
      547 CALL                             R21 2 -1
      548 CALL                             R18 -1 1
      549 MOVE                             R17 R18
      550 JUMP                             ; [+13]
      551 GETUPVAL                         R19 7
      552 GETTABLEKS                       R18 R19 K8 ["createElement"]
      554 GETUPVAL                         R20 8
      555 GETTABLEKS                       R19 R20 K9 ["Component"]
      557 DUPTABLE                         R20 K66 [{"Size"}]
      558 GETTABLEKS                       R21 R0 K44 ["ImageSize"]
      560 SETTABLEKS                       R21 R20 K10 ["Size"]
      562 CALL                             R18 2 1
      563 MOVE                             R17 R18
      564 GETUPVAL                         R19 7
      565 GETTABLEKS                       R18 R19 K8 ["createElement"]
      567 LOADK                            R19 K67 ["TextButton"]
      568 NEWTABLE                         R20 8 0
      570 GETTABLEKS                       R21 R0 K11 ["Position"]
      572 SETTABLEKS                       R21 R20 K11 ["Position"]
      574 GETTABLEKS                       R21 R0 K10 ["Size"]
      576 SETTABLEKS                       R21 R20 K10 ["Size"]
      578 GETUPVAL                         R23 7
      579 GETTABLEKS                       R22 R23 K68 ["Event"]
      581 GETTABLEKS                       R21 R22 K69 ["Activated"]
      583 NEWCLOSURE                       R22 P0
      584 CAPTURE                          VAL R0
      585 CAPTURE                          VAL R14
      586 CAPTURE                          VAL R6
      587 SETTABLE                         R22 R20 R21
      588 GETUPVAL                         R23 7
      589 GETTABLEKS                       R22 R23 K68 ["Event"]
      591 GETTABLEKS                       R21 R22 K70 ["MouseEnter"]
      593 SETTABLE                         R3 R20 R21
      594 GETUPVAL                         R23 7
      595 GETTABLEKS                       R22 R23 K68 ["Event"]
      597 GETTABLEKS                       R21 R22 K71 ["MouseLeave"]
      599 SETTABLE                         R4 R20 R21
      600 GETUPVAL                         R22 7
      601 GETTABLEKS                       R21 R22 K21 ["Tag"]
      603 LOADK                            R22 K72 ["X-Transparent data-testid=--start-page-InfoTile"]
      604 SETTABLE                         R22 R20 R21
      605 DUPTABLE                         R21 K74 [{"Child"}]
      606 GETUPVAL                         R23 7
      607 GETTABLEKS                       R22 R23 K8 ["createElement"]
      609 LOADK                            R23 K18 ["Frame"]
      610 NEWTABLE                         R24 1 0
      612 GETUPVAL                         R26 7
      613 GETTABLEKS                       R25 R26 K21 ["Tag"]
      615 LOADK                            R26 K75 ["X-Fill StartPage-TileBackground StartPage-TilePadding StartPage-RoundedCorner8 X-Column"]
      616 SETTABLE                         R26 R24 R25
      617 DUPTABLE                         R25 K77 [{"Image", "Body"}]
      618 SETTABLEKS                       R17 R25 K26 ["Image"]
      620 GETUPVAL                         R27 7
      621 GETTABLEKS                       R26 R27 K8 ["createElement"]
      623 LOADK                            R27 K18 ["Frame"]
      624 NEWTABLE                         R28 2 0
      626 MOVE                             R29 R2
      627 CALL                             R29 0 1
      628 SETTABLEKS                       R29 R28 K45 ["LayoutOrder"]
      630 GETUPVAL                         R30 7
      631 GETTABLEKS                       R29 R30 K21 ["Tag"]
      633 LOADK                            R30 K78 ["X-Fit X-Row StartPage-DescPadding X-Transparent"]
      634 SETTABLE                         R30 R28 R29
      635 DUPTABLE                         R29 K82 [{"Options", "Kebab", "Focus"}]
      636 GETUPVAL                         R31 7
      637 GETTABLEKS                       R30 R31 K8 ["createElement"]
      639 LOADK                            R31 K18 ["Frame"]
      640 NEWTABLE                         R32 4 0
      642 GETIMPORT                        R33 K20 [UDim2.new]
      644 LOADN                            R34 0
      645 LOADN                            R35 170
      646 LOADN                            R36 1
      647 LOADN                            R37 56
      648 CALL                             R33 4 1
      649 SETTABLEKS                       R33 R32 K10 ["Size"]
      651 MOVE                             R33 R2
      652 CALL                             R33 0 1
      653 SETTABLEKS                       R33 R32 K45 ["LayoutOrder"]
      655 GETUPVAL                         R34 7
      656 GETTABLEKS                       R33 R34 K21 ["Tag"]
      658 LOADK                            R34 K83 ["X-Fit X-Top StartPage-SearchResultRowColumn X-Transparent"]
      659 SETTABLE                         R34 R32 R33
      660 DUPTABLE                         R33 K90 [{"Privacy", "Title", "FormattedDate", "Description", "CreatorName", "Categories"}]
      661 GETTABLEKS                       R35 R0 K91 ["IsPrivacyVisible"]
      663 JUMPIFNOT                        R35 ; [+72]
      664 GETTABLEKS                       R35 R14 K92 ["PrivacyType"]
      666 JUMPIFNOT                        R35 ; [+69]
      667 GETUPVAL                         R35 7
      668 GETTABLEKS                       R34 R35 K8 ["createElement"]
      670 LOADK                            R35 K18 ["Frame"]
      671 NEWTABLE                         R36 2 0
      673 MOVE                             R37 R2
      674 CALL                             R37 0 1
      675 SETTABLEKS                       R37 R36 K45 ["LayoutOrder"]
      677 GETUPVAL                         R38 7
      678 GETTABLEKS                       R37 R38 K21 ["Tag"]
      680 LOADK                            R38 K93 ["X-RowS X-Fit X-Transparent"]
      681 SETTABLE                         R38 R36 R37
      682 GETUPVAL                         R38 14
      683 JUMPIFNOT                        R38 ; [+25]
      684 GETUPVAL                         R38 7
      685 GETTABLEKS                       R37 R38 K8 ["createElement"]
      687 GETUPVAL                         R38 15
      688 DUPTABLE                         R39 K55 [{"text", "variant"}]
      689 LOADK                            R42 K94 ["Plugin"]
      690 LOADK                            R44 K95 ["PrivacyType.%*"]
      691 GETTABLEKS                       R46 R14 K92 ["PrivacyType"]
      693 NAMECALL                         R44 R44 K96 ["format"]
      695 CALL                             R44 2 1
      696 MOVE                             R43 R44
      697 NAMECALL                         R40 R1 K97 ["getText"]
      699 CALL                             R40 3 1
      700 SETTABLEKS                       R40 R39 K53 ["text"]
      702 GETUPVAL                         R41 16
      703 GETTABLEKS                       R40 R41 K56 ["Neutral"]
      705 SETTABLEKS                       R40 R39 K54 ["variant"]
      707 CALL                             R37 2 1
      708 JUMP                             ; [+25]
      709 GETUPVAL                         R38 7
      710 GETTABLEKS                       R37 R38 K8 ["createElement"]
      712 GETUPVAL                         R38 17
      713 NEWTABLE                         R39 2 0
      715 LOADK                            R42 K94 ["Plugin"]
      716 LOADK                            R44 K95 ["PrivacyType.%*"]
      717 GETTABLEKS                       R46 R14 K92 ["PrivacyType"]
      719 NAMECALL                         R44 R44 K96 ["format"]
      721 CALL                             R44 2 1
      722 MOVE                             R43 R44
      723 NAMECALL                         R40 R1 K97 ["getText"]
      725 CALL                             R40 3 1
      726 SETTABLEKS                       R40 R39 K36 ["Text"]
      728 GETUPVAL                         R41 7
      729 GETTABLEKS                       R40 R41 K21 ["Tag"]
      731 LOADK                            R41 K57 ["X-Fit"]
      732 SETTABLE                         R41 R39 R40
      733 CALL                             R37 2 1
      734 CALL                             R34 3 1
      735 JUMP                             ; [+1]
      736 LOADNIL                          R34
      737 SETTABLEKS                       R34 R33 K84 ["Privacy"]
      739 GETUPVAL                         R35 7
      740 GETTABLEKS                       R34 R35 K8 ["createElement"]
      742 LOADK                            R35 K31 ["TextLabel"]
      743 NEWTABLE                         R36 8 0
      745 GETIMPORT                        R37 K100 [Enum.AutomaticSize.Y]
      747 SETTABLEKS                       R37 R36 K98 ["AutomaticSize"]
      749 GETTABLEKS                       R37 R14 K101 ["Name"]
      751 SETTABLEKS                       R37 R36 K36 ["Text"]
      753 LOADB                            R37 1
      754 SETTABLEKS                       R37 R36 K102 ["TextWrapped"]
      756 GETIMPORT                        R37 K105 [Enum.TextTruncate.AtEnd]
      758 SETTABLEKS                       R37 R36 K103 ["TextTruncate"]
      760 GETIMPORT                        R37 K108 [Enum.TextXAlignment.Left]
      762 SETTABLEKS                       R37 R36 K106 ["TextXAlignment"]
      764 GETIMPORT                        R37 K20 [UDim2.new]
      766 LOADN                            R38 1
      767 LOADN                            R39 226
      768 LOADN                            R40 0
      769 LOADN                            R41 0
      770 CALL                             R37 4 1
      771 SETTABLEKS                       R37 R36 K10 ["Size"]
      773 MOVE                             R37 R2
      774 CALL                             R37 0 1
      775 SETTABLEKS                       R37 R36 K45 ["LayoutOrder"]
      777 GETUPVAL                         R38 7
      778 GETTABLEKS                       R37 R38 K21 ["Tag"]
      780 LOADK                            R38 K109 ["StartPage-TextColor StartPage-TextSize StartPage-FontBold X-Transparent"]
      781 SETTABLE                         R38 R36 R37
      782 DUPTABLE                         R37 K66 [{"Size"}]
      783 GETUPVAL                         R39 7
      784 GETTABLEKS                       R38 R39 K8 ["createElement"]
      786 LOADK                            R39 K110 ["UISizeConstraint"]
      787 DUPTABLE                         R40 K112 [{"MaxSize"}]
      788 GETIMPORT                        R41 K4 [Vector2.new]
      790 LOADK                            R42 K113 [∞]
      791 LOADN                            R43 50
      792 CALL                             R41 2 1
      793 SETTABLEKS                       R41 R40 K111 ["MaxSize"]
      795 CALL                             R38 2 1
      796 SETTABLEKS                       R38 R37 K10 ["Size"]
      798 CALL                             R34 3 1
      799 SETTABLEKS                       R34 R33 K85 ["Title"]
      801 JUMPIFNOT                        R15 ; [+37]
      802 GETTABLEKS                       R35 R0 K114 ["IsDateModifiedVisible"]
      804 JUMPIFNOT                        R35 ; [+34]
      805 GETUPVAL                         R35 7
      806 GETTABLEKS                       R34 R35 K8 ["createElement"]
      808 LOADK                            R35 K31 ["TextLabel"]
      809 NEWTABLE                         R36 8 0
      811 LOADK                            R39 K94 ["Plugin"]
      812 LOADK                            R40 K115 ["LastModified"]
      813 DUPTABLE                         R41 K117 [{"lastModified"}]
      814 SETTABLEKS                       R15 R41 K116 ["lastModified"]
      816 NAMECALL                         R37 R1 K97 ["getText"]
      818 CALL                             R37 4 1
      819 SETTABLEKS                       R37 R36 K36 ["Text"]
      821 LOADN                            R37 12
      822 SETTABLEKS                       R37 R36 K41 ["TextSize"]
      824 GETIMPORT                        R37 K108 [Enum.TextXAlignment.Left]
      826 SETTABLEKS                       R37 R36 K106 ["TextXAlignment"]
      828 MOVE                             R37 R2
      829 CALL                             R37 0 1
      830 SETTABLEKS                       R37 R36 K45 ["LayoutOrder"]
      832 GETUPVAL                         R38 7
      833 GETTABLEKS                       R37 R38 K21 ["Tag"]
      835 LOADK                            R38 K118 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      836 SETTABLE                         R38 R36 R37
      837 CALL                             R34 2 1
      838 JUMP                             ; [+1]
      839 LOADNIL                          R34
      840 SETTABLEKS                       R34 R33 K86 ["FormattedDate"]
      842 GETTABLEKS                       R35 R14 K87 ["Description"]
      844 JUMPIFNOT                        R35 ; [+34]
      845 GETTABLEKS                       R35 R0 K119 ["IsDescriptionVisible"]
      847 JUMPIFNOT                        R35 ; [+31]
      848 GETUPVAL                         R35 7
      849 GETTABLEKS                       R34 R35 K8 ["createElement"]
      851 LOADK                            R35 K31 ["TextLabel"]
      852 NEWTABLE                         R36 8 0
      854 GETTABLEKS                       R37 R14 K87 ["Description"]
      856 SETTABLEKS                       R37 R36 K36 ["Text"]
      858 LOADN                            R37 12
      859 SETTABLEKS                       R37 R36 K41 ["TextSize"]
      861 LOADB                            R37 1
      862 SETTABLEKS                       R37 R36 K102 ["TextWrapped"]
      864 GETIMPORT                        R37 K108 [Enum.TextXAlignment.Left]
      866 SETTABLEKS                       R37 R36 K106 ["TextXAlignment"]
      868 MOVE                             R37 R2
      869 CALL                             R37 0 1
      870 SETTABLEKS                       R37 R36 K45 ["LayoutOrder"]
      872 GETUPVAL                         R38 7
      873 GETTABLEKS                       R37 R38 K21 ["Tag"]
      875 LOADK                            R38 K118 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      876 SETTABLE                         R38 R36 R37
      877 CALL                             R34 2 1
      878 JUMP                             ; [+1]
      879 LOADNIL                          R34
      880 SETTABLEKS                       R34 R33 K87 ["Description"]
      882 GETTABLEKS                       R35 R14 K88 ["CreatorName"]
      884 JUMPIFNOT                        R35 ; [+34]
      885 GETTABLEKS                       R35 R0 K120 ["IsCreatorNameVisible"]
      887 JUMPIFNOT                        R35 ; [+31]
      888 GETUPVAL                         R35 7
      889 GETTABLEKS                       R34 R35 K8 ["createElement"]
      891 LOADK                            R35 K31 ["TextLabel"]
      892 NEWTABLE                         R36 8 0
      894 GETTABLEKS                       R37 R14 K88 ["CreatorName"]
      896 SETTABLEKS                       R37 R36 K36 ["Text"]
      898 LOADN                            R37 12
      899 SETTABLEKS                       R37 R36 K41 ["TextSize"]
      901 LOADB                            R37 1
      902 SETTABLEKS                       R37 R36 K102 ["TextWrapped"]
      904 GETIMPORT                        R37 K108 [Enum.TextXAlignment.Left]
      906 SETTABLEKS                       R37 R36 K106 ["TextXAlignment"]
      908 MOVE                             R37 R2
      909 CALL                             R37 0 1
      910 SETTABLEKS                       R37 R36 K45 ["LayoutOrder"]
      912 GETUPVAL                         R38 7
      913 GETTABLEKS                       R37 R38 K21 ["Tag"]
      915 LOADK                            R38 K118 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      916 SETTABLE                         R38 R36 R37
      917 CALL                             R34 2 1
      918 JUMP                             ; [+1]
      919 LOADNIL                          R34
      920 SETTABLEKS                       R34 R33 K88 ["CreatorName"]
      922 GETUPVAL                         R35 13
      923 JUMPIFNOT                        R35 ; [+48]
      924 GETTABLEKS                       R35 R14 K89 ["Categories"]
      926 JUMPIFNOT                        R35 ; [+45]
      927 GETTABLEKS                       R35 R0 K121 ["IsCategoriesVisible"]
      929 JUMPIFNOT                        R35 ; [+42]
      930 GETUPVAL                         R35 7
      931 GETTABLEKS                       R34 R35 K8 ["createElement"]
      933 LOADK                            R35 K31 ["TextLabel"]
      934 NEWTABLE                         R36 8 0
      936 LOADK                            R38 K122 ["<i>"]
      937 GETIMPORT                        R41 K124 [table.concat]
      939 GETTABLEKS                       R42 R14 K89 ["Categories"]
      941 LOADK                            R43 K125 [", "]
      942 CALL                             R41 2 1
      943 MOVE                             R39 R41
      944 LOADK                            R40 K126 ["</i>"]
      945 CONCAT                           R37 R38 R40
      946 SETTABLEKS                       R37 R36 K36 ["Text"]
      948 LOADN                            R37 12
      949 SETTABLEKS                       R37 R36 K41 ["TextSize"]
      951 LOADB                            R37 1
      952 SETTABLEKS                       R37 R36 K102 ["TextWrapped"]
      954 LOADB                            R37 1
      955 SETTABLEKS                       R37 R36 K127 ["RichText"]
      957 GETIMPORT                        R37 K108 [Enum.TextXAlignment.Left]
      959 SETTABLEKS                       R37 R36 K106 ["TextXAlignment"]
      961 MOVE                             R37 R2
      962 CALL                             R37 0 1
      963 SETTABLEKS                       R37 R36 K45 ["LayoutOrder"]
      965 GETUPVAL                         R38 7
      966 GETTABLEKS                       R37 R38 K21 ["Tag"]
      968 LOADK                            R38 K118 ["X-Fit StartPage-MutedTextColor X-Transparent StartPage-Font"]
      969 SETTABLE                         R38 R36 R37
      970 CALL                             R34 2 1
      971 JUMP                             ; [+1]
      972 LOADNIL                          R34
      973 SETTABLEKS                       R34 R33 K89 ["Categories"]
      975 CALL                             R30 3 1
      976 SETTABLEKS                       R30 R29 K79 ["Options"]
      978 GETTABLEKS                       R31 R0 K128 ["IsDropdownMenuVisible"]
      980 JUMPIFNOT                        R31 ; [+72]
      981 LENGTH                           R31 R13
      982 LOADN                            R32 0
      983 JUMPIFLT                         R32 R31 ; [+3]
      985 GETUPVAL                         R31 18
      986 JUMPIF                           R31 ; [+66]
      987 GETUPVAL                         R31 7
      988 GETTABLEKS                       R30 R31 K8 ["createElement"]
      990 LOADK                            R31 K129 ["ImageButton"]
      991 NEWTABLE                         R32 16 0
      993 GETIMPORT                        R33 K20 [UDim2.new]
      995 LOADN                            R34 1
      996 LOADN                            R35 224
      997 LOADN                            R36 0
      998 LOADN                            R37 0
      999 CALL                             R33 4 1
     1000 SETTABLEKS                       R33 R32 K11 ["Position"]
     1002 LOADB                            R33 0
     1003 SETTABLEKS                       R33 R32 K130 ["Selectable"]
     1005 GETUPVAL                         R35 7
     1006 GETTABLEKS                       R34 R35 K68 ["Event"]
     1008 GETTABLEKS                       R33 R34 K69 ["Activated"]
     1010 NEWCLOSURE                       R34 P1
     1011 CAPTURE                          VAL R6
     1012 SETTABLE                         R34 R32 R33
     1013 GETUPVAL                         R35 7
     1014 GETTABLEKS                       R34 R35 K68 ["Event"]
     1016 GETTABLEKS                       R33 R34 K70 ["MouseEnter"]
     1018 SETTABLE                         R3 R32 R33
     1019 GETUPVAL                         R35 7
     1020 GETTABLEKS                       R34 R35 K68 ["Event"]
     1022 GETTABLEKS                       R33 R34 K71 ["MouseLeave"]
     1024 SETTABLE                         R4 R32 R33
     1025 GETUPVAL                         R35 7
     1026 GETTABLEKS                       R34 R35 K131 ["Change"]
     1028 GETTABLEKS                       R33 R34 K132 ["AbsolutePosition"]
     1030 NEWCLOSURE                       R34 P2
     1031 CAPTURE                          VAL R8
     1032 SETTABLE                         R34 R32 R33
     1033 GETUPVAL                         R34 18
     1034 JUMPIFNOT                        R34 ; [+2]
     1035 MOVE                             R33 R11
     1036 JUMP                             ; [+1]
     1037 LOADNIL                          R33
     1038 SETTABLEKS                       R33 R32 K133 ["ref"]
     1040 MOVE                             R33 R2
     1041 CALL                             R33 0 1
     1042 SETTABLEKS                       R33 R32 K45 ["LayoutOrder"]
     1044 GETUPVAL                         R34 7
     1045 GETTABLEKS                       R33 R34 K21 ["Tag"]
     1047 LOADK                            R34 K134 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
     1048 SETTABLE                         R34 R32 R33
     1049 NEWTABLE                         R33 0 0
     1051 CALL                             R30 3 1
     1052 JUMP                             ; [+1]
     1053 LOADNIL                          R30
     1054 SETTABLEKS                       R30 R29 K80 ["Kebab"]
     1056 JUMPIFNOT                        R5 ; [+120]
     1057 GETUPVAL                         R31 18
     1058 JUMPIFNOT                        R31 ; [+21]
     1059 GETUPVAL                         R31 7
     1060 GETTABLEKS                       R30 R31 K8 ["createElement"]
     1062 GETUPVAL                         R31 19
     1063 DUPTABLE                         R32 K140 [{"isOpen", "actions", "onClose", "onItemActivated", "anchorRef"}]
     1064 SETTABLEKS                       R5 R32 K135 ["isOpen"]
     1066 SETTABLEKS                       R13 R32 K136 ["actions"]
     1068 NEWCLOSURE                       R33 P3
     1069 CAPTURE                          VAL R6
     1070 SETTABLEKS                       R33 R32 K137 ["onClose"]
     1072 NEWCLOSURE                       R33 P4
     1073 CAPTURE                          VAL R6
     1074 SETTABLEKS                       R33 R32 K138 ["onItemActivated"]
     1076 SETTABLEKS                       R11 R32 K139 ["anchorRef"]
     1078 CALL                             R30 2 1
     1079 JUMP                             ; [+98]
     1080 GETUPVAL                         R31 7
     1081 GETTABLEKS                       R30 R31 K8 ["createElement"]
     1083 GETUPVAL                         R31 20
     1084 NEWTABLE                         R32 2 0
     1086 NEWCLOSURE                       R33 P5
     1087 CAPTURE                          VAL R6
     1088 SETTABLEKS                       R33 R32 K141 ["OnFocusLost"]
     1090 GETUPVAL                         R34 7
     1091 GETTABLEKS                       R33 R34 K21 ["Tag"]
     1093 LOADK                            R34 K142 ["X-Fill X-Transparent"]
     1094 SETTABLE                         R34 R32 R33
     1095 GETUPVAL                         R34 7
     1096 GETTABLEKS                       R33 R34 K8 ["createElement"]
     1098 GETUPVAL                         R34 19
     1099 NEWTABLE                         R35 8 0
     1101 GETUPVAL                         R37 21
     1102 JUMPIFNOT                        R37 ; [+11]
     1103 GETIMPORT                        R36 K20 [UDim2.new]
     1105 LOADN                            R37 0
     1106 GETTABLEKS                       R39 R7 K144 ["X"]
     1108 ADDK                             R38 R39 K143 [32]
     1109 LOADN                            R39 0
     1110 GETTABLEKS                       R40 R7 K99 ["Y"]
     1112 CALL                             R36 4 1
     1113 JUMP                             ; [+16]
     1114 GETIMPORT                        R36 K20 [UDim2.new]
     1116 LOADN                            R37 0
     1117 GETTABLEKS                       R40 R7 K144 ["X"]
     1119 GETTABLEKS                       R41 R9 K144 ["X"]
     1121 SUB                              R39 R40 R41
     1122 ADDK                             R38 R39 K143 [32]
     1123 LOADN                            R39 0
     1124 GETTABLEKS                       R41 R7 K99 ["Y"]
     1126 GETTABLEKS                       R42 R9 K99 ["Y"]
     1128 SUB                              R40 R41 R42
     1129 CALL                             R36 4 1
     1130 SETTABLEKS                       R36 R35 K11 ["Position"]
     1132 GETUPVAL                         R37 21
     1133 JUMPIFNOT                        R37 ; [+2]
     1134 NOT                              R36 R5
     1135 JUMP                             ; [+13]
     1136 NOT                              R36 R5
     1137 JUMPIF                           R36 ; [+11]
     1138 LOADB                            R36 1
     1139 GETTABLEKS                       R37 R9 K144 ["X"]
     1141 JUMPIFEQKN                       R37 K145 [0] ; [+7]
     1143 GETTABLEKS                       R37 R9 K99 ["Y"]
     1145 JUMPIFEQKN                       R37 K145 [0] ; [+2]
     1147 LOADB                            R36 0 +1
     1148 LOADB                            R36 1
     1149 SETTABLEKS                       R36 R35 K146 ["Hide"]
     1151 GETTABLEKS                       R36 R0 K147 ["KebabMenu"]
     1153 SETTABLEKS                       R36 R35 K147 ["KebabMenu"]
     1155 SETTABLEKS                       R14 R35 K6 ["Cell"]
     1157 NEWCLOSURE                       R36 P6
     1158 CAPTURE                          VAL R6
     1159 SETTABLEKS                       R36 R35 K148 ["OnItemActivated"]
     1161 NEWCLOSURE                       R36 P7
     1162 CAPTURE                          VAL R10
     1163 SETTABLEKS                       R36 R35 K149 ["MenuContainerSizeChanged"]
     1165 GETUPVAL                         R37 7
     1166 GETTABLEKS                       R36 R37 K21 ["Tag"]
     1168 GETUPVAL                         R38 21
     1169 JUMPIFNOT                        R38 ; [+2]
     1170 LOADK                            R37 K150 ["StartPage-Anchor-Bottom-Right"]
     1171 JUMP                             ; [+1]
     1172 LOADNIL                          R37
     1173 SETTABLE                         R37 R35 R36
     1174 CALL                             R33 2 -1
     1175 CALL                             R30 -1 1
     1176 JUMP                             ; [+1]
     1177 LOADNIL                          R30
     1178 SETTABLEKS                       R30 R29 K81 ["Focus"]
     1180 CALL                             R26 3 1
     1181 SETTABLEKS                       R26 R25 K76 ["Body"]
     1183 CALL                             R22 3 1
     1184 SETTABLEKS                       R22 R21 K73 ["Child"]
     1186 CALL                             R18 3 -1
     1187 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagLuaStartPageTutorialInfoTile"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R5 R0 K6 ["Src"]
       21 GETTABLEKS                       R4 R5 K7 ["SharedFlags"]
       23 GETTABLEKS                       R3 R4 K9 ["getFFlagLuaStartPageFoundationPill"]
       25 CALL                             R2 1 1
       26 CALL                             R2 0 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K7 ["SharedFlags"]
       33 GETTABLEKS                       R4 R5 K10 ["getFFlagLuaStartPageFixCollaboratorOverflow"]
       35 CALL                             R3 1 1
       36 CALL                             R3 0 1
       37 GETIMPORT                        R4 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Packages"]
       41 GETTABLEKS                       R5 R6 K12 ["React"]
       43 CALL                             R4 1 1
       44 GETTABLEKS                       R5 R4 K13 ["useState"]
       46 GETTABLEKS                       R6 R4 K14 ["useRef"]
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R9 R0 K11 ["Packages"]
       52 GETTABLEKS                       R8 R9 K15 ["Framework"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R9 R7 K16 ["Util"]
       57 GETTABLEKS                       R8 R9 K17 ["counter"]
       59 GETTABLEKS                       R10 R7 K18 ["ContextServices"]
       61 GETTABLEKS                       R9 R10 K19 ["Localization"]
       63 GETTABLEKS                       R10 R7 K20 ["UI"]
       65 GETTABLEKS                       R11 R10 K21 ["Image"]
       67 GETTABLEKS                       R12 R10 K22 ["CaptureFocus"]
       69 GETIMPORT                        R13 K5 [require]
       71 GETTABLEKS                       R15 R0 K6 ["Src"]
       73 GETTABLEKS                       R14 R15 K23 ["Types"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K5 [require]
       78 GETTABLEKS                       R17 R0 K6 ["Src"]
       80 GETTABLEKS                       R16 R17 K24 ["Components"]
       82 GETTABLEKS                       R15 R16 K25 ["Shimmer"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K5 [require]
       87 GETTABLEKS                       R18 R0 K6 ["Src"]
       89 GETTABLEKS                       R17 R18 K7 ["SharedFlags"]
       91 GETTABLEKS                       R16 R17 K26 ["getFFlagLuaStartPageTableContextMenu"]
       93 CALL                             R15 1 1
       94 CALL                             R15 0 1
       95 JUMPIFNOT                        R15 ; [+12]
       96 GETIMPORT                        R16 K5 [require]
       98 GETTABLEKS                       R20 R0 K6 ["Src"]
      100 GETTABLEKS                       R19 R20 K27 ["Foundation"]
      102 GETTABLEKS                       R18 R19 K24 ["Components"]
      104 GETTABLEKS                       R17 R18 K28 ["ContextMenu"]
      106 CALL                             R16 1 1
      107 JUMP                             ; [+9]
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R19 R0 K6 ["Src"]
      112 GETTABLEKS                       R18 R19 K24 ["Components"]
      114 GETTABLEKS                       R17 R18 K28 ["ContextMenu"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R20 R0 K6 ["Src"]
      121 GETTABLEKS                       R19 R20 K24 ["Components"]
      123 GETTABLEKS                       R18 R19 K29 ["Pill"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETTABLEKS                       R21 R0 K6 ["Src"]
      130 GETTABLEKS                       R20 R21 K30 ["Hooks"]
      132 GETTABLEKS                       R19 R20 K31 ["useCursor"]
      134 CALL                             R18 1 1
      135 GETIMPORT                        R19 K5 [require]
      137 GETTABLEKS                       R22 R0 K6 ["Src"]
      139 GETTABLEKS                       R21 R22 K32 ["Contexts"]
      141 GETTABLEKS                       R20 R21 K33 ["ContextMenuActions"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K5 [require]
      146 GETTABLEKS                       R23 R0 K6 ["Src"]
      148 GETTABLEKS                       R22 R23 K30 ["Hooks"]
      150 GETTABLEKS                       R21 R22 K34 ["useCellContextActions"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R24 R0 K6 ["Src"]
      157 GETTABLEKS                       R23 R24 K16 ["Util"]
      159 GETTABLEKS                       R22 R23 K35 ["formatISOTimestamp"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K5 [require]
      164 GETTABLEKS                       R25 R0 K6 ["Src"]
      166 GETTABLEKS                       R24 R25 K16 ["Util"]
      168 GETTABLEKS                       R23 R24 K27 ["Foundation"]
      170 CALL                             R22 1 1
      171 GETTABLEKS                       R23 R22 K36 ["Badge"]
      173 GETTABLEKS                       R25 R22 K37 ["Enums"]
      175 GETTABLEKS                       R24 R25 K38 ["BadgeVariant"]
      177 GETIMPORT                        R25 K40 [game]
      179 LOADK                            R27 K41 ["DontLayoutInvisibleGuiObjects"]
      180 NAMECALL                         R25 R25 K42 ["GetEngineFeature"]
      182 CALL                             R25 2 1
      183 JUMPIFNOT                        R3 ; [+2]
      184 LOADN                            R26 3
      185 JUMP                             ; [+1]
      186 LOADN                            R26 2
      187 DUPCLOSURE                       R27 K43 [PROTO_8]
      188 CAPTURE                          VAL R9
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R6
      193 CAPTURE                          VAL R19
      194 CAPTURE                          VAL R20
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R14
      197 CAPTURE                          VAL R21
      198 CAPTURE                          VAL R3
      199 CAPTURE                          VAL R26
      200 CAPTURE                          VAL R11
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R23
      204 CAPTURE                          VAL R24
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R15
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R12
      209 CAPTURE                          VAL R25
      210 RETURN                           R27 1
