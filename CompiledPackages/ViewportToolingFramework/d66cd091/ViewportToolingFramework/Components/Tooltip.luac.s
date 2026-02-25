PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Description"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+4]
        5 GETIMPORT                        R0 K3 [Vector2.zero]
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["Description"]
       12 LOADN                            R3 14
       13 GETUPVAL                         R4 2
       14 GETIMPORT                        R5 K5 [Vector2.new]
       16 LOADN                            R6 180
       17 LOADK                            R7 K6 [∞]
       18 CALL                             R5 2 -1
       19 NAMECALL                         R0 R0 K7 ["GetTextSize"]
       21 CALL                             R0 -1 -1
       22 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 1
        7 GETUPVAL                         R3 3
        8 NAMECALL                         R3 R3 K1 ["use"]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQKNIL                  R3 ; [+2]
       13 LOADB                            R5 0 +1
       14 LOADB                            R5 1
       15 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       17 LOADK                            R6 K2 ["Tooltip mounting without a Focus"]
       18 GETIMPORT                        R4 K4 [assert]
       20 CALL                             R4 2 0
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K5 ["useState"]
       24 GETIMPORT                        R5 K8 [Vector2.new]
       26 CALL                             R5 0 -1
       27 CALL                             R4 -1 2
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R6 R7 K5 ["useState"]
       31 GETIMPORT                        R7 K8 [Vector2.new]
       33 CALL                             R7 0 -1
       34 CALL                             R6 -1 2
       35 GETUPVAL                         R8 4
       36 LOADB                            R9 0
       37 CALL                             R8 1 1
       38 GETUPVAL                         R10 5
       39 GETTABLEKS                       R9 R10 K7 ["new"]
       41 CALL                             R9 0 1
       42 LOADNIL                          R10
       43 GETUPVAL                         R11 6
       44 CALL                             R11 0 1
       45 JUMPIFNOT                        R11 ; [+16]
       46 GETUPVAL                         R12 0
       47 GETTABLEKS                       R11 R12 K9 ["useMemo"]
       49 NEWCLOSURE                       R12 P0
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U7
       52 CAPTURE                          UPVAL U8
       53 NEWTABLE                         R13 0 1
       55 GETTABLEKS                       R14 R0 K10 ["Description"]
       57 SETLIST                          R13 R14 1 [1]
       59 CALL                             R11 2 1
       60 MOVE                             R10 R11
       61 JUMP                             ; [+22]
       62 GETTABLEKS                       R11 R0 K10 ["Description"]
       64 JUMPIFNOT                        R11 ; [+15]
       65 GETUPVAL                         R11 7
       66 GETTABLEKS                       R13 R0 K10 ["Description"]
       68 LOADN                            R14 14
       69 GETUPVAL                         R15 8
       70 GETIMPORT                        R16 K8 [Vector2.new]
       72 LOADN                            R17 180
       73 LOADK                            R18 K11 [∞]
       74 CALL                             R16 2 -1
       75 NAMECALL                         R11 R11 K12 ["GetTextSize"]
       77 CALL                             R11 -1 1
       78 MOVE                             R10 R11
       79 JUMP                             ; [+4]
       80 GETIMPORT                        R11 K8 [Vector2.new]
       82 CALL                             R11 0 1
       83 MOVE                             R10 R11
       84 GETUPVAL                         R12 0
       85 GETTABLEKS                       R11 R12 K13 ["createElement"]
       87 LOADK                            R12 K14 ["Frame"]
       88 NEWTABLE                         R13 8 0
       90 GETUPVAL                         R15 0
       91 GETTABLEKS                       R14 R15 K15 ["Tag"]
       93 LOADK                            R15 K16 ["X-Fill"]
       94 SETTABLE                         R15 R13 R14
       95 GETUPVAL                         R16 0
       96 GETTABLEKS                       R15 R16 K17 ["Change"]
       98 GETTABLEKS                       R14 R15 K18 ["AbsolutePosition"]
      100 NEWCLOSURE                       R15 P1
      101 CAPTURE                          VAL R5
      102 SETTABLE                         R15 R13 R14
      103 GETUPVAL                         R16 0
      104 GETTABLEKS                       R15 R16 K17 ["Change"]
      106 GETTABLEKS                       R14 R15 K19 ["AbsoluteSize"]
      108 NEWCLOSURE                       R15 P2
      109 CAPTURE                          VAL R7
      110 SETTABLE                         R15 R13 R14
      111 GETUPVAL                         R16 0
      112 GETTABLEKS                       R15 R16 K20 ["Event"]
      114 GETTABLEKS                       R14 R15 K21 ["MouseEnter"]
      116 GETTABLEKS                       R15 R8 K22 ["enable"]
      118 SETTABLE                         R15 R13 R14
      119 GETUPVAL                         R16 0
      120 GETTABLEKS                       R15 R16 K20 ["Event"]
      122 GETTABLEKS                       R14 R15 K23 ["MouseLeave"]
      124 GETTABLEKS                       R15 R8 K24 ["disable"]
      126 SETTABLE                         R15 R13 R14
      127 DUPTABLE                         R14 K26 [{"VisibleTooltip"}]
      128 GETTABLEKS                       R15 R8 K27 ["enabled"]
      130 JUMPIFNOT                        R15 ; [+379]
      131 GETUPVAL                         R16 9
      132 GETTABLEKS                       R15 R16 K28 ["createPortal"]
      134 GETUPVAL                         R17 0
      135 GETTABLEKS                       R16 R17 K13 ["createElement"]
      137 LOADK                            R17 K29 ["Folder"]
      138 NEWTABLE                         R18 0 0
      140 DUPTABLE                         R19 K32 [{"AvoidFOUC", "StyleLink"}]
      141 GETUPVAL                         R21 10
      142 CALL                             R21 0 1
      143 JUMPIFNOT                        R21 ; [+170]
      144 GETUPVAL                         R21 0
      145 GETTABLEKS                       R20 R21 K13 ["createElement"]
      147 LOADK                            R21 K14 ["Frame"]
      148 DUPTABLE                         R22 K37 [{"BackgroundTransparency", "Position", "Size", "ZIndex"}]
      149 LOADN                            R23 1
      150 SETTABLEKS                       R23 R22 K33 ["BackgroundTransparency"]
      152 GETIMPORT                        R23 K40 [UDim2.fromOffset]
      154 GETTABLEKS                       R24 R4 K41 ["X"]
      156 GETTABLEKS                       R25 R4 K42 ["Y"]
      158 CALL                             R23 2 1
      159 SETTABLEKS                       R23 R22 K34 ["Position"]
      161 GETIMPORT                        R23 K40 [UDim2.fromOffset]
      163 GETTABLEKS                       R24 R6 K41 ["X"]
      165 GETTABLEKS                       R25 R6 K42 ["Y"]
      167 CALL                             R23 2 1
      168 SETTABLEKS                       R23 R22 K35 ["Size"]
      170 LOADN                            R23 100
      171 SETTABLEKS                       R23 R22 K36 ["ZIndex"]
      173 DUPTABLE                         R23 K44 [{"Tooltip"}]
      174 GETUPVAL                         R25 0
      175 GETTABLEKS                       R24 R25 K13 ["createElement"]
      177 LOADK                            R25 K14 ["Frame"]
      178 NEWTABLE                         R26 1 0
      180 GETUPVAL                         R28 0
      181 GETTABLEKS                       R27 R28 K15 ["Tag"]
      183 LOADK                            R29 K45 ["VPF-Tooltip VPF-Tooltip--%* X-ColumnS"]
      184 GETTABLEKS                       R31 R1 K46 ["Direction"]
      186 NAMECALL                         R29 R29 K47 ["format"]
      188 CALL                             R29 2 1
      189 MOVE                             R28 R29
      190 SETTABLE                         R28 R26 R27
      191 DUPTABLE                         R27 K51 [{"UIPadding", "UISizeConstraint", "Title", "Description"}]
      192 GETUPVAL                         R29 0
      193 GETTABLEKS                       R28 R29 K13 ["createElement"]
      195 LOADK                            R29 K48 ["UIPadding"]
      196 DUPTABLE                         R30 K56 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      197 GETIMPORT                        R31 K58 [UDim.new]
      199 LOADN                            R32 0
      200 LOADN                            R33 5
      201 CALL                             R31 2 1
      202 SETTABLEKS                       R31 R30 K52 ["PaddingLeft"]
      204 GETIMPORT                        R31 K58 [UDim.new]
      206 LOADN                            R32 0
      207 LOADN                            R33 5
      208 CALL                             R31 2 1
      209 SETTABLEKS                       R31 R30 K53 ["PaddingRight"]
      211 GETIMPORT                        R31 K58 [UDim.new]
      213 LOADN                            R32 0
      214 LOADN                            R33 5
      215 CALL                             R31 2 1
      216 SETTABLEKS                       R31 R30 K54 ["PaddingTop"]
      218 GETIMPORT                        R31 K58 [UDim.new]
      220 LOADN                            R32 0
      221 LOADN                            R33 5
      222 CALL                             R31 2 1
      223 SETTABLEKS                       R31 R30 K55 ["PaddingBottom"]
      225 CALL                             R28 2 1
      226 SETTABLEKS                       R28 R27 K48 ["UIPadding"]
      228 GETUPVAL                         R29 0
      229 GETTABLEKS                       R28 R29 K13 ["createElement"]
      231 LOADK                            R29 K49 ["UISizeConstraint"]
      232 DUPTABLE                         R30 K60 [{"MaxSize"}]
      233 GETIMPORT                        R31 K8 [Vector2.new]
      235 LOADN                            R32 180
      236 LOADK                            R33 K11 [∞]
      237 CALL                             R31 2 1
      238 SETTABLEKS                       R31 R30 K59 ["MaxSize"]
      240 CALL                             R28 2 1
      241 SETTABLEKS                       R28 R27 K49 ["UISizeConstraint"]
      243 GETUPVAL                         R29 0
      244 GETTABLEKS                       R28 R29 K13 ["createElement"]
      246 LOADK                            R29 K61 ["TextLabel"]
      247 NEWTABLE                         R30 4 0
      249 NAMECALL                         R31 R9 K62 ["getNextOrder"]
      251 CALL                             R31 1 1
      252 SETTABLEKS                       R31 R30 K63 ["LayoutOrder"]
      254 GETTABLEKS                       R31 R0 K50 ["Title"]
      256 SETTABLEKS                       R31 R30 K64 ["Text"]
      258 GETUPVAL                         R32 0
      259 GETTABLEKS                       R31 R32 K15 ["Tag"]
      261 LOADK                            R32 K65 ["VPF-Tooltip__Title"]
      262 SETTABLE                         R32 R30 R31
      263 CALL                             R28 2 1
      264 SETTABLEKS                       R28 R27 K50 ["Title"]
      266 GETTABLEKS                       R28 R0 K10 ["Description"]
      268 JUMPIFNOT                        R28 ; [+38]
      269 GETUPVAL                         R29 0
      270 GETTABLEKS                       R28 R29 K13 ["createElement"]
      272 LOADK                            R29 K61 ["TextLabel"]
      273 NEWTABLE                         R30 8 0
      275 NAMECALL                         R31 R9 K62 ["getNextOrder"]
      277 CALL                             R31 1 1
      278 SETTABLEKS                       R31 R30 K63 ["LayoutOrder"]
      280 GETUPVAL                         R31 8
      281 SETTABLEKS                       R31 R30 K66 ["Font"]
      283 GETIMPORT                        R31 K40 [UDim2.fromOffset]
      285 GETTABLEKS                       R33 R10 K41 ["X"]
      287 ADDK                             R32 R33 K67 [5]
      288 GETTABLEKS                       R34 R10 K42 ["Y"]
      290 ADDK                             R33 R34 K67 [5]
      291 CALL                             R31 2 1
      292 SETTABLEKS                       R31 R30 K35 ["Size"]
      294 GETTABLEKS                       R31 R0 K10 ["Description"]
      296 SETTABLEKS                       R31 R30 K64 ["Text"]
      298 LOADN                            R31 14
      299 SETTABLEKS                       R31 R30 K68 ["TextSize"]
      301 GETUPVAL                         R32 0
      302 GETTABLEKS                       R31 R32 K15 ["Tag"]
      304 LOADK                            R32 K69 ["VPF-Tooltip__Description"]
      305 SETTABLE                         R32 R30 R31
      306 CALL                             R28 2 1
      307 SETTABLEKS                       R28 R27 K10 ["Description"]
      309 CALL                             R24 3 1
      310 SETTABLEKS                       R24 R23 K43 ["Tooltip"]
      312 CALL                             R20 3 1
      313 JUMP                             ; [+179]
      314 GETUPVAL                         R21 0
      315 GETTABLEKS                       R20 R21 K13 ["createElement"]
      317 GETUPVAL                         R21 11
      318 NEWTABLE                         R22 0 0
      320 DUPTABLE                         R23 K26 [{"VisibleTooltip"}]
      321 GETUPVAL                         R25 0
      322 GETTABLEKS                       R24 R25 K13 ["createElement"]
      324 LOADK                            R25 K14 ["Frame"]
      325 DUPTABLE                         R26 K37 [{"BackgroundTransparency", "Position", "Size", "ZIndex"}]
      326 LOADN                            R27 1
      327 SETTABLEKS                       R27 R26 K33 ["BackgroundTransparency"]
      329 GETIMPORT                        R27 K40 [UDim2.fromOffset]
      331 GETTABLEKS                       R28 R4 K41 ["X"]
      333 GETTABLEKS                       R29 R4 K42 ["Y"]
      335 CALL                             R27 2 1
      336 SETTABLEKS                       R27 R26 K34 ["Position"]
      338 GETIMPORT                        R27 K40 [UDim2.fromOffset]
      340 GETTABLEKS                       R28 R6 K41 ["X"]
      342 GETTABLEKS                       R29 R6 K42 ["Y"]
      344 CALL                             R27 2 1
      345 SETTABLEKS                       R27 R26 K35 ["Size"]
      347 LOADN                            R27 100
      348 SETTABLEKS                       R27 R26 K36 ["ZIndex"]
      350 DUPTABLE                         R27 K44 [{"Tooltip"}]
      351 GETUPVAL                         R29 0
      352 GETTABLEKS                       R28 R29 K13 ["createElement"]
      354 LOADK                            R29 K14 ["Frame"]
      355 NEWTABLE                         R30 1 0
      357 GETUPVAL                         R32 0
      358 GETTABLEKS                       R31 R32 K15 ["Tag"]
      360 LOADK                            R33 K45 ["VPF-Tooltip VPF-Tooltip--%* X-ColumnS"]
      361 GETTABLEKS                       R35 R1 K46 ["Direction"]
      363 NAMECALL                         R33 R33 K47 ["format"]
      365 CALL                             R33 2 1
      366 MOVE                             R32 R33
      367 SETTABLE                         R32 R30 R31
      368 DUPTABLE                         R31 K51 [{"UIPadding", "UISizeConstraint", "Title", "Description"}]
      369 GETUPVAL                         R33 0
      370 GETTABLEKS                       R32 R33 K13 ["createElement"]
      372 LOADK                            R33 K48 ["UIPadding"]
      373 DUPTABLE                         R34 K56 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      374 GETIMPORT                        R35 K58 [UDim.new]
      376 LOADN                            R36 0
      377 LOADN                            R37 5
      378 CALL                             R35 2 1
      379 SETTABLEKS                       R35 R34 K52 ["PaddingLeft"]
      381 GETIMPORT                        R35 K58 [UDim.new]
      383 LOADN                            R36 0
      384 LOADN                            R37 5
      385 CALL                             R35 2 1
      386 SETTABLEKS                       R35 R34 K53 ["PaddingRight"]
      388 GETIMPORT                        R35 K58 [UDim.new]
      390 LOADN                            R36 0
      391 LOADN                            R37 5
      392 CALL                             R35 2 1
      393 SETTABLEKS                       R35 R34 K54 ["PaddingTop"]
      395 GETIMPORT                        R35 K58 [UDim.new]
      397 LOADN                            R36 0
      398 LOADN                            R37 5
      399 CALL                             R35 2 1
      400 SETTABLEKS                       R35 R34 K55 ["PaddingBottom"]
      402 CALL                             R32 2 1
      403 SETTABLEKS                       R32 R31 K48 ["UIPadding"]
      405 GETUPVAL                         R33 0
      406 GETTABLEKS                       R32 R33 K13 ["createElement"]
      408 LOADK                            R33 K49 ["UISizeConstraint"]
      409 DUPTABLE                         R34 K60 [{"MaxSize"}]
      410 GETIMPORT                        R35 K8 [Vector2.new]
      412 LOADN                            R36 180
      413 LOADK                            R37 K11 [∞]
      414 CALL                             R35 2 1
      415 SETTABLEKS                       R35 R34 K59 ["MaxSize"]
      417 CALL                             R32 2 1
      418 SETTABLEKS                       R32 R31 K49 ["UISizeConstraint"]
      420 GETUPVAL                         R33 0
      421 GETTABLEKS                       R32 R33 K13 ["createElement"]
      423 LOADK                            R33 K61 ["TextLabel"]
      424 NEWTABLE                         R34 4 0
      426 NAMECALL                         R35 R9 K62 ["getNextOrder"]
      428 CALL                             R35 1 1
      429 SETTABLEKS                       R35 R34 K63 ["LayoutOrder"]
      431 GETTABLEKS                       R35 R0 K50 ["Title"]
      433 SETTABLEKS                       R35 R34 K64 ["Text"]
      435 GETUPVAL                         R36 0
      436 GETTABLEKS                       R35 R36 K15 ["Tag"]
      438 LOADK                            R36 K65 ["VPF-Tooltip__Title"]
      439 SETTABLE                         R36 R34 R35
      440 CALL                             R32 2 1
      441 SETTABLEKS                       R32 R31 K50 ["Title"]
      443 GETTABLEKS                       R32 R0 K10 ["Description"]
      445 JUMPIFNOT                        R32 ; [+38]
      446 GETUPVAL                         R33 0
      447 GETTABLEKS                       R32 R33 K13 ["createElement"]
      449 LOADK                            R33 K61 ["TextLabel"]
      450 NEWTABLE                         R34 8 0
      452 NAMECALL                         R35 R9 K62 ["getNextOrder"]
      454 CALL                             R35 1 1
      455 SETTABLEKS                       R35 R34 K63 ["LayoutOrder"]
      457 GETUPVAL                         R35 8
      458 SETTABLEKS                       R35 R34 K66 ["Font"]
      460 GETIMPORT                        R35 K40 [UDim2.fromOffset]
      462 GETTABLEKS                       R37 R10 K41 ["X"]
      464 ADDK                             R36 R37 K67 [5]
      465 GETTABLEKS                       R38 R10 K42 ["Y"]
      467 ADDK                             R37 R38 K67 [5]
      468 CALL                             R35 2 1
      469 SETTABLEKS                       R35 R34 K35 ["Size"]
      471 GETTABLEKS                       R35 R0 K10 ["Description"]
      473 SETTABLEKS                       R35 R34 K64 ["Text"]
      475 LOADN                            R35 14
      476 SETTABLEKS                       R35 R34 K68 ["TextSize"]
      478 GETUPVAL                         R36 0
      479 GETTABLEKS                       R35 R36 K15 ["Tag"]
      481 LOADK                            R36 K69 ["VPF-Tooltip__Description"]
      482 SETTABLE                         R36 R34 R35
      483 CALL                             R32 2 1
      484 SETTABLEKS                       R32 R31 K10 ["Description"]
      486 CALL                             R28 3 1
      487 SETTABLEKS                       R28 R27 K43 ["Tooltip"]
      489 CALL                             R24 3 1
      490 SETTABLEKS                       R24 R23 K25 ["VisibleTooltip"]
      492 CALL                             R20 3 1
      493 SETTABLEKS                       R20 R19 K30 ["AvoidFOUC"]
      495 GETUPVAL                         R21 0
      496 GETTABLEKS                       R20 R21 K13 ["createElement"]
      498 LOADK                            R21 K31 ["StyleLink"]
      499 DUPTABLE                         R22 K71 [{"StyleSheet"}]
      500 SETTABLEKS                       R2 R22 K70 ["StyleSheet"]
      502 CALL                             R20 2 1
      503 SETTABLEKS                       R20 R19 K31 ["StyleLink"]
      505 CALL                             R16 3 1
      506 NAMECALL                         R17 R3 K72 ["get"]
      508 CALL                             R17 1 -1
      509 CALL                             R15 -1 1
      510 SETTABLEKS                       R15 R14 K25 ["VisibleTooltip"]
      512 CALL                             R11 3 -1
      513 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["TextService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Parent"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Parent"]
       31 GETTABLEKS                       R5 R6 K13 ["ReactRoblox"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K14 ["Components"]
       38 GETTABLEKS                       R6 R7 K15 ["DEPRECATED_AvoidFOUC"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R0 K16 ["Util"]
       45 GETTABLEKS                       R7 R8 K17 ["ToolbarBaseContext"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R9 R0 K18 ["Hooks"]
       52 GETTABLEKS                       R8 R9 K19 ["useStyleSheet"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R10 R0 K18 ["Hooks"]
       59 GETTABLEKS                       R9 R10 K20 ["useToggleState"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R10 R2 K16 ["Util"]
       64 GETTABLEKS                       R9 R10 K21 ["LayoutOrderIterator"]
       66 GETTABLEKS                       R11 R2 K22 ["ContextServices"]
       68 GETTABLEKS                       R10 R11 K23 ["Focus"]
       70 GETIMPORT                        R11 K9 [require]
       72 GETTABLEKS                       R13 R0 K24 ["Flags"]
       74 GETTABLEKS                       R12 R13 K25 ["getFFlagViewportToolingFrameworkSplitButtons"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K9 [require]
       79 GETTABLEKS                       R14 R0 K24 ["Flags"]
       81 GETTABLEKS                       R13 R14 K26 ["getFFlagViewportToolingFrameworkButtonDisabled"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K30 [Enum.Font.SourceSans]
       86 DUPCLOSURE                       R14 K31 [PROTO_3]
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R5
       99 RETURN                           R14 1
