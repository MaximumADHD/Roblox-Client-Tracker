PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteWindowSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R3 K1 ["X"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R3 R0 K0 ["CanvasPosition"]
        9 GETTABLEKS                       R2 R3 K2 ["Y"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K3 ["session"]
       15 GETTABLEKS                       R1 R2 K4 ["getSearch"]
       17 CALL                             R1 0 1
       18 JUMPIFNOTEQKS                    R1 K5 [""] ; [+6]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
       23 SETTABLEKS                       R2 R1 K6 ["current"]
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["ScrollingFrame not mounted yet"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["current"]
       17 GETTABLEKS                       R1 R2 K4 ["AbsoluteSize"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 2
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K0 ["current"]
       24 GETTABLEKS                       R2 R3 K5 ["CanvasPosition"]
       26 GETTABLEKS                       R1 R2 K6 ["X"]
       28 CALL                             R0 1 0
       29 GETUPVAL                         R0 3
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K0 ["current"]
       33 GETTABLEKS                       R2 R3 K5 ["CanvasPosition"]
       35 GETTABLEKS                       R1 R2 K7 ["Y"]
       37 CALL                             R0 1 0
       38 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_6:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 LOADN                            R2 0
        3 GETTABLEKS                       R3 R0 K3 ["yPixels"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Frame"]
        2 DUPTABLE                         R4 K5 [{"BackgroundTransparency", "Position", "Size", "ZIndex"}]
        3 LOADN                            R5 1
        4 SETTABLEKS                       R5 R4 K1 ["BackgroundTransparency"]
        6 GETTABLEKS                       R5 R0 K6 ["getBinding"]
        8 CALL                             R5 0 1
        9 DUPCLOSURE                       R7 K7 [PROTO_6]
       10 NAMECALL                         R5 R5 K8 ["map"]
       12 CALL                             R5 2 1
       13 SETTABLEKS                       R5 R4 K2 ["Position"]
       15 GETIMPORT                        R5 K11 [UDim2.new]
       17 LOADN                            R6 1
       18 LOADN                            R7 0
       19 LOADN                            R8 0
       20 GETUPVAL                         R10 1
       21 GETTABLEKS                       R9 R10 K12 ["explorerRowHeight"]
       23 CALL                             R5 4 1
       24 SETTABLEKS                       R5 R4 K3 ["Size"]
       26 LOADN                            R5 2
       27 SETTABLEKS                       R5 R4 K4 ["ZIndex"]
       29 GETUPVAL                         R5 0
       30 GETUPVAL                         R6 2
       31 DUPTABLE                         R7 K19 [{"visibleNodeObservable", "draggingTargetObservable", "dragToExpand", "clockBinding", "session", "textLabelRef"}]
       32 SETTABLEKS                       R0 R7 K13 ["visibleNodeObservable"]
       34 GETUPVAL                         R8 3
       35 SETTABLEKS                       R8 R7 K14 ["draggingTargetObservable"]
       37 GETUPVAL                         R8 4
       38 SETTABLEKS                       R8 R7 K15 ["dragToExpand"]
       40 GETUPVAL                         R8 5
       41 SETTABLEKS                       R8 R7 K16 ["clockBinding"]
       43 GETUPVAL                         R9 6
       44 GETTABLEKS                       R8 R9 K17 ["session"]
       46 SETTABLEKS                       R8 R7 K17 ["session"]
       48 GETUPVAL                         R9 7
       49 GETTABLE                         R8 R9 R1
       50 SETTABLEKS                       R8 R7 K18 ["textLabelRef"]
       52 CALL                             R5 2 -1
       53 CALL                             R2 -1 1
       54 RETURN                           R2 1

PROTO_8:
        0 JUMPIFEQKS                       R0 K0 ["Vertical"] ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_9:
        0 JUMPIFEQKS                       R0 K0 ["Horizontal"] ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 LOADN                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K1 ["useRef"]
       13 GETIMPORT                        R6 K4 [Vector2.new]
       15 CALL                             R6 0 -1
       16 CALL                             R5 -1 1
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K0 ["useState"]
       20 GETIMPORT                        R7 K4 [Vector2.new]
       22 CALL                             R7 0 -1
       23 CALL                             R6 -1 2
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R8 R9 K5 ["useBinding"]
       27 GETIMPORT                        R9 K4 [Vector2.new]
       29 CALL                             R9 0 -1
       30 CALL                             R8 -1 2
       31 GETUPVAL                         R11 1
       32 GETTABLEKS                       R10 R11 K0 ["useState"]
       34 GETUPVAL                         R12 2
       35 GETTABLEKS                       R11 R12 K6 ["minSearchHeaderHeight"]
       37 CALL                             R10 1 2
       38 GETUPVAL                         R13 1
       39 GETTABLEKS                       R12 R13 K7 ["useCallback"]
       41 NEWCLOSURE                       R13 P0
       42 CAPTURE                          VAL R9
       43 NEWTABLE                         R14 0 0
       45 CALL                             R12 2 1
       46 GETUPVAL                         R14 1
       47 GETTABLEKS                       R13 R14 K7 ["useCallback"]
       49 NEWCLOSURE                       R14 P1
       50 CAPTURE                          VAL R7
       51 NEWTABLE                         R15 0 0
       53 CALL                             R13 2 1
       54 GETUPVAL                         R15 1
       55 GETTABLEKS                       R14 R15 K7 ["useCallback"]
       57 NEWCLOSURE                       R15 P2
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R5
       62 NEWTABLE                         R16 0 0
       64 CALL                             R14 2 1
       65 GETUPVAL                         R16 1
       66 GETTABLEKS                       R15 R16 K7 ["useCallback"]
       68 NEWCLOSURE                       R16 P3
       69 CAPTURE                          VAL R11
       70 NEWTABLE                         R17 0 0
       72 CALL                             R15 2 1
       73 GETUPVAL                         R17 1
       74 GETTABLEKS                       R16 R17 K1 ["useRef"]
       76 LOADNIL                          R17
       77 CALL                             R16 1 1
       78 GETUPVAL                         R18 1
       79 GETTABLEKS                       R17 R18 K1 ["useRef"]
       81 LOADNIL                          R18
       82 CALL                             R17 1 1
       83 GETUPVAL                         R18 3
       84 CALL                             R18 0 1
       85 GETUPVAL                         R20 1
       86 GETTABLEKS                       R19 R20 K8 ["useEffect"]
       88 NEWCLOSURE                       R20 P4
       89 CAPTURE                          VAL R16
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R2
       93 NEWTABLE                         R21 0 0
       95 CALL                             R19 2 0
       96 GETUPVAL                         R19 4
       97 GETTABLEKS                       R20 R0 K9 ["session"]
       99 GETTABLEKS                       R21 R6 K10 ["Y"]
      101 MOVE                             R22 R1
      102 CALL                             R19 3 1
      103 GETUPVAL                         R20 5
      104 GETTABLEKS                       R21 R0 K9 ["session"]
      106 MOVE                             R22 R19
      107 MOVE                             R23 R1
      108 MOVE                             R24 R16
      109 GETTABLEKS                       R25 R0 K11 ["windowRef"]
      111 CALL                             R20 5 1
      112 GETUPVAL                         R21 6
      113 GETTABLEKS                       R22 R20 K12 ["windowIsHoveredObservable"]
      115 CALL                             R21 1 0
      116 GETUPVAL                         R21 7
      117 GETTABLEKS                       R22 R0 K9 ["session"]
      119 CALL                             R21 1 1
      120 GETUPVAL                         R22 8
      121 MOVE                             R23 R19
      122 CALL                             R22 1 1
      123 GETUPVAL                         R23 9
      124 GETTABLEKS                       R24 R0 K9 ["session"]
      126 CALL                             R23 1 0
      127 GETUPVAL                         R23 10
      128 GETTABLEKS                       R24 R0 K9 ["session"]
      130 CALL                             R23 1 0
      131 GETUPVAL                         R23 11
      132 GETTABLEKS                       R24 R0 K9 ["session"]
      134 CALL                             R23 1 0
      135 GETUPVAL                         R23 12
      136 GETTABLEKS                       R24 R0 K9 ["session"]
      138 MOVE                             R25 R16
      139 CALL                             R23 2 1
      140 GETUPVAL                         R24 13
      141 CALL                             R24 0 1
      142 GETUPVAL                         R25 14
      143 MOVE                             R26 R16
      144 CALL                             R25 1 1
      145 GETUPVAL                         R26 15
      146 GETTABLEKS                       R27 R0 K9 ["session"]
      148 MOVE                             R28 R19
      149 MOVE                             R29 R16
      150 MOVE                             R30 R1
      151 GETTABLEKS                       R31 R25 K13 ["startImmediately"]
      153 CALL                             R26 5 1
      154 GETUPVAL                         R27 16
      155 GETTABLEKS                       R28 R0 K9 ["session"]
      157 GETTABLEKS                       R29 R26 K14 ["start"]
      159 MOVE                             R30 R16
      160 CALL                             R27 3 1
      161 GETUPVAL                         R28 17
      162 GETTABLEKS                       R29 R0 K9 ["session"]
      164 MOVE                             R30 R16
      165 GETTABLEKS                       R32 R26 K15 ["activeBoxSelect"]
      167 JUMPIFEQKNIL                     R32 ; [+2]
      169 LOADB                            R31 0 +1
      170 LOADB                            R31 1
      171 CALL                             R28 3 1
      172 GETUPVAL                         R29 18
      173 GETTABLEKS                       R30 R0 K9 ["session"]
      175 GETTABLEKS                       R31 R28 K16 ["tryScrollingToId"]
      177 CALL                             R29 2 0
      178 GETUPVAL                         R29 19
      179 GETTABLEKS                       R30 R0 K9 ["session"]
      181 GETTABLEKS                       R31 R28 K16 ["tryScrollingToId"]
      183 MOVE                             R32 R16
      184 MOVE                             R33 R5
      185 CALL                             R29 4 0
      186 GETUPVAL                         R29 20
      187 GETTABLEKS                       R30 R0 K9 ["session"]
      189 GETTABLEKS                       R31 R28 K16 ["tryScrollingToId"]
      191 CALL                             R29 2 0
      192 GETUPVAL                         R29 21
      193 GETTABLEKS                       R30 R0 K9 ["session"]
      195 GETTABLEKS                       R31 R28 K16 ["tryScrollingToId"]
      197 CALL                             R29 2 0
      198 GETUPVAL                         R29 22
      199 GETTABLEKS                       R30 R0 K9 ["session"]
      201 GETTABLEKS                       R31 R28 K16 ["tryScrollingToId"]
      203 CALL                             R29 2 0
      204 GETUPVAL                         R29 23
      205 CALL                             R29 0 1
      206 JUMPIFNOT                        R29 ; [+2]
      207 GETUPVAL                         R29 24
      208 CALL                             R29 0 0
      209 GETUPVAL                         R29 25
      210 CALL                             R29 0 1
      211 JUMPIFNOT                        R29 ; [+4]
      212 GETUPVAL                         R29 26
      213 GETTABLEKS                       R30 R0 K9 ["session"]
      215 CALL                             R29 1 0
      216 GETUPVAL                         R29 27
      217 GETTABLEKS                       R30 R0 K9 ["session"]
      219 MOVE                             R31 R19
      220 CALL                             R29 2 1
      221 GETUPVAL                         R30 28
      222 GETTABLEKS                       R31 R0 K9 ["session"]
      224 MOVE                             R32 R29
      225 CALL                             R30 2 0
      226 GETUPVAL                         R30 29
      227 GETTABLEKS                       R31 R0 K9 ["session"]
      229 MOVE                             R32 R16
      230 MOVE                             R33 R29
      231 GETTABLEKS                       R34 R6 K17 ["X"]
      233 CALL                             R30 4 1
      234 GETUPVAL                         R31 30
      235 LENGTH                           R32 R19
      236 LOADNIL                          R33
      237 CALL                             R31 2 1
      238 GETUPVAL                         R33 25
      239 CALL                             R33 0 1
      240 JUMPIFNOT                        R33 ; [+3]
      241 GETUPVAL                         R32 31
      242 CALL                             R32 0 1
      243 JUMP                             ; [+1]
      244 LOADNIL                          R32
      245 GETUPVAL                         R33 32
      246 LOADK                            R34 K18 ["TextButton"]
      247 NEWTABLE                         R35 4 0
      249 LOADN                            R36 1
      250 SETTABLEKS                       R36 R35 K19 ["BackgroundTransparency"]
      252 GETIMPORT                        R36 K22 [UDim2.fromScale]
      254 LOADN                            R37 1
      255 LOADN                            R38 1
      256 CALL                             R36 2 1
      257 SETTABLEKS                       R36 R35 K23 ["Size"]
      259 LOADK                            R36 K24 [""]
      260 SETTABLEKS                       R36 R35 K25 ["Text"]
      262 GETUPVAL                         R38 1
      263 GETTABLEKS                       R37 R38 K26 ["Event"]
      265 GETTABLEKS                       R36 R37 K27 ["InputBegan"]
      267 GETTABLEKS                       R37 R27 K28 ["inputBegan"]
      269 SETTABLE                         R37 R35 R36
      270 DUPTABLE                         R36 K31 [{"SearchBox", "Contents"}]
      271 GETUPVAL                         R37 32
      272 GETUPVAL                         R38 33
      273 DUPTABLE                         R39 K37 [{"headerRef", "onSearchHeaderSizeChange", "session", "windowHeight", "windowHoveredObservable", "zIndex"}]
      274 SETTABLEKS                       R17 R39 K32 ["headerRef"]
      276 SETTABLEKS                       R15 R39 K33 ["onSearchHeaderSizeChange"]
      278 GETTABLEKS                       R40 R0 K9 ["session"]
      280 SETTABLEKS                       R40 R39 K9 ["session"]
      282 GETTABLEKS                       R40 R6 K10 ["Y"]
      284 SETTABLEKS                       R40 R39 K34 ["windowHeight"]
      286 GETTABLEKS                       R40 R20 K12 ["windowIsHoveredObservable"]
      288 SETTABLEKS                       R40 R39 K35 ["windowHoveredObservable"]
      290 LOADN                            R40 2
      291 SETTABLEKS                       R40 R39 K36 ["zIndex"]
      293 CALL                             R37 2 1
      294 SETTABLEKS                       R37 R36 K29 ["SearchBox"]
      296 GETUPVAL                         R37 32
      297 LOADK                            R38 K38 ["Frame"]
      298 DUPTABLE                         R39 K41 [{"BackgroundTransparency", "ClipsDescendants", "Position", "Size"}]
      299 LOADN                            R40 1
      300 SETTABLEKS                       R40 R39 K19 ["BackgroundTransparency"]
      302 LOADB                            R40 1
      303 SETTABLEKS                       R40 R39 K39 ["ClipsDescendants"]
      305 GETIMPORT                        R40 K43 [UDim2.fromOffset]
      307 LOADN                            R41 0
      308 MOVE                             R42 R10
      309 CALL                             R40 2 1
      310 SETTABLEKS                       R40 R39 K40 ["Position"]
      312 GETIMPORT                        R40 K44 [UDim2.new]
      314 LOADN                            R41 1
      315 LOADN                            R42 0
      316 LOADN                            R43 1
      317 MINUS                            R44 R10
      318 CALL                             R40 4 1
      319 SETTABLEKS                       R40 R39 K23 ["Size"]
      321 DUPTABLE                         R40 K52 [{"Padding", "Underlays", "ScrollingFrame", "VerticalScrollBarBorder", "HorizontalScrollBarBorder", "Overlays", "GradualEdgeScroll"}]
      322 GETUPVAL                         R41 32
      323 LOADK                            R42 K53 ["UIPadding"]
      324 DUPTABLE                         R43 K56 [{"PaddingRight", "PaddingBottom"}]
      325 GETIMPORT                        R44 K58 [UDim.new]
      327 LOADN                            R45 0
      328 GETUPVAL                         R47 2
      329 GETTABLEKS                       R46 R47 K59 ["sessionViewScrollBarPadding"]
      331 CALL                             R44 2 1
      332 SETTABLEKS                       R44 R43 K54 ["PaddingRight"]
      334 GETIMPORT                        R44 K58 [UDim.new]
      336 LOADN                            R45 0
      337 GETUPVAL                         R47 2
      338 GETTABLEKS                       R46 R47 K59 ["sessionViewScrollBarPadding"]
      340 CALL                             R44 2 1
      341 SETTABLEKS                       R44 R43 K55 ["PaddingBottom"]
      343 CALL                             R41 2 1
      344 SETTABLEKS                       R41 R40 K45 ["Padding"]
      346 GETUPVAL                         R41 32
      347 GETUPVAL                         R42 34
      348 DUPTABLE                         R43 K68 [{"session", "viewportSizeBinding", "scrollHeightObservable", "visibleNodeObservables", "draggingTargetObservable", "scrollingFrameRef", "startEdgeScrolling", "startBoxSelect", "textLabelRefs", "zIndex"}]
      349 GETTABLEKS                       R44 R0 K9 ["session"]
      351 SETTABLEKS                       R44 R43 K9 ["session"]
      353 SETTABLEKS                       R8 R43 K60 ["viewportSizeBinding"]
      355 SETTABLEKS                       R1 R43 K61 ["scrollHeightObservable"]
      357 SETTABLEKS                       R19 R43 K62 ["visibleNodeObservables"]
      359 SETTABLEKS                       R23 R43 K63 ["draggingTargetObservable"]
      361 SETTABLEKS                       R16 R43 K64 ["scrollingFrameRef"]
      363 GETTABLEKS                       R44 R25 K69 ["startGradually"]
      365 SETTABLEKS                       R44 R43 K65 ["startEdgeScrolling"]
      367 GETTABLEKS                       R44 R26 K14 ["start"]
      369 SETTABLEKS                       R44 R43 K66 ["startBoxSelect"]
      371 SETTABLEKS                       R31 R43 K67 ["textLabelRefs"]
      373 MOVE                             R44 R18
      374 CALL                             R44 0 1
      375 SETTABLEKS                       R44 R43 K36 ["zIndex"]
      377 CALL                             R41 2 1
      378 SETTABLEKS                       R41 R40 K46 ["Underlays"]
      380 GETUPVAL                         R41 32
      381 LOADK                            R42 K47 ["ScrollingFrame"]
      382 NEWTABLE                         R43 16 0
      384 LOADB                            R44 0
      385 SETTABLEKS                       R44 R43 K70 ["SmoothScroll"]
      387 GETUPVAL                         R47 2
      388 GETTABLEKS                       R46 R47 K72 ["explorerRowHeight"]
      390 GETUPVAL                         R48 2
      391 GETTABLEKS                       R47 R48 K73 ["explorerScrollRate"]
      393 MUL                              R45 R46 R47
      394 DIVK                             R44 R45 K71 [140]
      395 SETTABLEKS                       R44 R43 K74 ["ScrollRate"]
      397 LOADN                            R44 1
      398 SETTABLEKS                       R44 R43 K19 ["BackgroundTransparency"]
      400 GETUPVAL                         R45 2
      401 GETTABLEKS                       R44 R45 K59 ["sessionViewScrollBarPadding"]
      403 SETTABLEKS                       R44 R43 K75 ["BorderSizePixel"]
      405 GETUPVAL                         R44 35
      406 DUPCLOSURE                       R45 K76 [PROTO_5]
      407 MOVE                             R46 R22
      408 MOVE                             R47 R21
      409 CALL                             R44 3 1
      410 SETTABLEKS                       R44 R43 K77 ["CanvasSize"]
      412 GETUPVAL                         R45 2
      413 GETTABLEKS                       R44 R45 K78 ["sessionViewScrollBarWidth"]
      415 SETTABLEKS                       R44 R43 K79 ["ScrollBarThickness"]
      417 GETIMPORT                        R44 K22 [UDim2.fromScale]
      419 LOADN                            R45 1
      420 LOADN                            R46 1
      421 CALL                             R44 2 1
      422 SETTABLEKS                       R44 R43 K23 ["Size"]
      424 GETIMPORT                        R44 K83 [Enum.ScrollBarInset.Always]
      426 SETTABLEKS                       R44 R43 K84 ["VerticalScrollBarInset"]
      428 MOVE                             R44 R18
      429 CALL                             R44 0 1
      430 SETTABLEKS                       R44 R43 K85 ["ZIndex"]
      432 GETUPVAL                         R46 1
      433 GETTABLEKS                       R45 R46 K86 ["Change"]
      435 GETTABLEKS                       R44 R45 K87 ["AbsoluteWindowSize"]
      437 SETTABLE                         R12 R43 R44
      438 GETUPVAL                         R46 1
      439 GETTABLEKS                       R45 R46 K86 ["Change"]
      441 GETTABLEKS                       R44 R45 K88 ["AbsoluteSize"]
      443 SETTABLE                         R13 R43 R44
      444 GETUPVAL                         R46 1
      445 GETTABLEKS                       R45 R46 K86 ["Change"]
      447 GETTABLEKS                       R44 R45 K89 ["CanvasPosition"]
      449 SETTABLE                         R14 R43 R44
      450 GETUPVAL                         R46 1
      451 GETTABLEKS                       R45 R46 K26 ["Event"]
      453 GETTABLEKS                       R44 R45 K90 ["InputChanged"]
      455 GETTABLEKS                       R45 R30 K91 ["inputChanged"]
      457 SETTABLE                         R45 R43 R44
      458 GETUPVAL                         R45 1
      459 GETTABLEKS                       R44 R45 K92 ["Tag"]
      461 LOADK                            R45 K93 ["Explorer-ScrollingFrame data-testid=Explorer-SessionView-ScrollingFrame"]
      462 SETTABLE                         R45 R43 R44
      463 SETTABLEKS                       R16 R43 K94 ["ref"]
      465 DUPTABLE                         R44 K96 [{"BoxSelect"}]
      466 GETTABLEKS                       R45 R26 K15 ["activeBoxSelect"]
      468 JUMPIFNOT                        R45 ; [+23]
      469 GETUPVAL                         R45 32
      470 GETUPVAL                         R46 36
      471 DUPTABLE                         R47 K99 [{"activeBoxSelect", "scrollingFrameRef", "scrollHeightBinding", "scrollWidthBinding", "zIndex"}]
      472 GETTABLEKS                       R48 R26 K15 ["activeBoxSelect"]
      474 SETTABLEKS                       R48 R47 K15 ["activeBoxSelect"]
      476 SETTABLEKS                       R16 R47 K64 ["scrollingFrameRef"]
      478 GETTABLEKS                       R48 R1 K100 ["getBinding"]
      480 CALL                             R48 0 1
      481 SETTABLEKS                       R48 R47 K97 ["scrollHeightBinding"]
      483 GETTABLEKS                       R48 R3 K100 ["getBinding"]
      485 CALL                             R48 0 1
      486 SETTABLEKS                       R48 R47 K98 ["scrollWidthBinding"]
      488 LOADN                            R48 3
      489 SETTABLEKS                       R48 R47 K36 ["zIndex"]
      491 CALL                             R45 2 1
      492 SETTABLEKS                       R45 R44 K95 ["BoxSelect"]
      494 GETUPVAL                         R45 37
      495 MOVE                             R46 R19
      496 NEWCLOSURE                       R47 P6
      497 CAPTURE                          UPVAL U32
      498 CAPTURE                          UPVAL U2
      499 CAPTURE                          UPVAL U38
      500 CAPTURE                          VAL R23
      501 CAPTURE                          VAL R24
      502 CAPTURE                          VAL R32
      503 CAPTURE                          VAL R0
      504 CAPTURE                          VAL R31
      505 CALL                             R45 2 -1
      506 CALL                             R41 -1 1
      507 SETTABLEKS                       R41 R40 K47 ["ScrollingFrame"]
      509 GETUPVAL                         R41 32
      510 LOADK                            R42 K38 ["Frame"]
      511 NEWTABLE                         R43 8 0
      513 GETIMPORT                        R44 K4 [Vector2.new]
      515 LOADK                            R45 K101 [0.5]
      516 LOADN                            R46 0
      517 CALL                             R44 2 1
      518 SETTABLEKS                       R44 R43 K102 ["AnchorPoint"]
      520 LOADN                            R44 0
      521 SETTABLEKS                       R44 R43 K75 ["BorderSizePixel"]
      523 GETIMPORT                        R44 K44 [UDim2.new]
      525 LOADN                            R45 1
      526 GETUPVAL                         R49 2
      527 GETTABLEKS                       R48 R49 K78 ["sessionViewScrollBarWidth"]
      529 GETUPVAL                         R50 2
      530 GETTABLEKS                       R49 R50 K59 ["sessionViewScrollBarPadding"]
      532 ADD                              R47 R48 R49
      533 MINUS                            R46 R47
      534 LOADN                            R47 0
      535 LOADN                            R48 0
      536 CALL                             R44 4 1
      537 SETTABLEKS                       R44 R43 K40 ["Position"]
      539 GETIMPORT                        R44 K44 [UDim2.new]
      541 LOADN                            R45 0
      542 LOADN                            R46 1
      543 LOADN                            R47 1
      544 LOADN                            R48 0
      545 CALL                             R44 4 1
      546 SETTABLEKS                       R44 R43 K23 ["Size"]
      548 MOVE                             R44 R18
      549 CALL                             R44 0 1
      550 SETTABLEKS                       R44 R43 K85 ["ZIndex"]
      552 GETTABLEKS                       R45 R30 K103 ["activeScrollBarObservable"]
      554 GETTABLEKS                       R44 R45 K100 ["getBinding"]
      556 CALL                             R44 0 1
      557 DUPCLOSURE                       R46 K104 [PROTO_8]
      558 NAMECALL                         R44 R44 K105 ["map"]
      560 CALL                             R44 2 1
      561 SETTABLEKS                       R44 R43 K106 ["Visible"]
      563 GETUPVAL                         R45 1
      564 GETTABLEKS                       R44 R45 K92 ["Tag"]
      566 LOADK                            R45 K107 ["Explorer-BG-Input data-testid=Explorer-Vertical-Scroll-Border"]
      567 SETTABLE                         R45 R43 R44
      568 CALL                             R41 2 1
      569 SETTABLEKS                       R41 R40 K48 ["VerticalScrollBarBorder"]
      571 GETUPVAL                         R41 32
      572 LOADK                            R42 K38 ["Frame"]
      573 NEWTABLE                         R43 8 0
      575 GETIMPORT                        R44 K4 [Vector2.new]
      577 LOADN                            R45 0
      578 LOADK                            R46 K101 [0.5]
      579 CALL                             R44 2 1
      580 SETTABLEKS                       R44 R43 K102 ["AnchorPoint"]
      582 LOADN                            R44 0
      583 SETTABLEKS                       R44 R43 K75 ["BorderSizePixel"]
      585 GETIMPORT                        R44 K44 [UDim2.new]
      587 LOADN                            R45 0
      588 LOADN                            R46 0
      589 LOADN                            R47 1
      590 GETUPVAL                         R51 2
      591 GETTABLEKS                       R50 R51 K78 ["sessionViewScrollBarWidth"]
      593 GETUPVAL                         R52 2
      594 GETTABLEKS                       R51 R52 K59 ["sessionViewScrollBarPadding"]
      596 ADD                              R49 R50 R51
      597 MINUS                            R48 R49
      598 CALL                             R44 4 1
      599 SETTABLEKS                       R44 R43 K40 ["Position"]
      601 GETIMPORT                        R44 K44 [UDim2.new]
      603 LOADN                            R45 1
      604 LOADN                            R46 0
      605 LOADN                            R47 0
      606 LOADN                            R48 1
      607 CALL                             R44 4 1
      608 SETTABLEKS                       R44 R43 K23 ["Size"]
      610 MOVE                             R44 R18
      611 CALL                             R44 0 1
      612 SETTABLEKS                       R44 R43 K85 ["ZIndex"]
      614 GETTABLEKS                       R45 R30 K103 ["activeScrollBarObservable"]
      616 GETTABLEKS                       R44 R45 K100 ["getBinding"]
      618 CALL                             R44 0 1
      619 DUPCLOSURE                       R46 K108 [PROTO_9]
      620 NAMECALL                         R44 R44 K105 ["map"]
      622 CALL                             R44 2 1
      623 SETTABLEKS                       R44 R43 K106 ["Visible"]
      625 GETUPVAL                         R45 1
      626 GETTABLEKS                       R44 R45 K92 ["Tag"]
      628 LOADK                            R45 K109 ["Explorer-BG-Input data-testid=Explorer-Horizontal-Scroll-Border"]
      629 SETTABLE                         R45 R43 R44
      630 CALL                             R41 2 1
      631 SETTABLEKS                       R41 R40 K49 ["HorizontalScrollBarBorder"]
      633 GETUPVAL                         R41 32
      634 GETUPVAL                         R42 39
      635 DUPTABLE                         R43 K112 [{"session", "viewportSizeBinding", "scrollHeightObservable", "scrollWidthObservable", "visibleNodeObservables", "draggingTargetObservable", "boxSelecting", "windowIsHoveredObservable", "scrollingFrameRef", "zIndex"}]
      636 GETTABLEKS                       R44 R0 K9 ["session"]
      638 SETTABLEKS                       R44 R43 K9 ["session"]
      640 SETTABLEKS                       R8 R43 K60 ["viewportSizeBinding"]
      642 SETTABLEKS                       R1 R43 K61 ["scrollHeightObservable"]
      644 SETTABLEKS                       R3 R43 K110 ["scrollWidthObservable"]
      646 SETTABLEKS                       R19 R43 K62 ["visibleNodeObservables"]
      648 SETTABLEKS                       R23 R43 K63 ["draggingTargetObservable"]
      650 GETTABLEKS                       R45 R26 K15 ["activeBoxSelect"]
      652 JUMPIFNOTEQKNIL                  R45 ; [+2]
      654 LOADB                            R44 0 +1
      655 LOADB                            R44 1
      656 SETTABLEKS                       R44 R43 K111 ["boxSelecting"]
      658 GETTABLEKS                       R44 R20 K12 ["windowIsHoveredObservable"]
      660 SETTABLEKS                       R44 R43 K12 ["windowIsHoveredObservable"]
      662 SETTABLEKS                       R16 R43 K64 ["scrollingFrameRef"]
      664 MOVE                             R44 R18
      665 CALL                             R44 0 1
      666 SETTABLEKS                       R44 R43 K36 ["zIndex"]
      668 CALL                             R41 2 1
      669 SETTABLEKS                       R41 R40 K50 ["Overlays"]
      671 GETTABLEKS                       R41 R25 K113 ["activeEdgeScroll"]
      673 JUMPIFNOT                        R41 ; [+17]
      674 GETTABLEKS                       R42 R25 K113 ["activeEdgeScroll"]
      676 GETTABLEKS                       R41 R42 K114 ["gradual"]
      678 JUMPIFNOT                        R41 ; [+12]
      679 GETUPVAL                         R41 32
      680 GETUPVAL                         R42 40
      681 DUPTABLE                         R43 K115 [{"activeEdgeScroll", "zIndex"}]
      682 GETTABLEKS                       R44 R25 K113 ["activeEdgeScroll"]
      684 SETTABLEKS                       R44 R43 K113 ["activeEdgeScroll"]
      686 MOVE                             R44 R18
      687 CALL                             R44 0 1
      688 SETTABLEKS                       R44 R43 K36 ["zIndex"]
      690 CALL                             R41 2 1
      691 SETTABLEKS                       R41 R40 K51 ["GradualEdgeScroll"]
      693 CALL                             R37 3 1
      694 SETTABLEKS                       R37 R36 K30 ["Contents"]
      696 CALL                             R33 3 -1
      697 RETURN                           R33 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["BoxSelectIndicator"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["Constants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R5 K10 ["ExplorerNodeRow"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R6 K11 ["GradualEdgeScroll"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Util"]
       39 GETTABLEKS                       R6 R7 K12 ["Observable"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R8 K13 ["Overlays"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K14 ["Parent"]
       53 GETTABLEKS                       R8 R9 K15 ["React"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K16 ["RpcTypes"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R11 R0 K6 ["Components"]
       65 GETTABLEKS                       R10 R11 K17 ["SearchBox"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R12 R0 K6 ["Components"]
       72 GETTABLEKS                       R11 R12 K18 ["Underlays"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R13 R0 K8 ["Util"]
       79 GETTABLEKS                       R12 R13 K19 ["createNextOrder"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R14 R0 K20 ["Flags"]
       86 GETTABLEKS                       R13 R14 K21 ["getFFlagExplorerDeleteThenFocus"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R15 R0 K20 ["Flags"]
       93 GETTABLEKS                       R14 R15 K22 ["getFFlagExplorerStreaming"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R16 R0 K8 ["Util"]
      100 GETTABLEKS                       R15 R16 K23 ["getScrollBarOrientation"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R17 R0 K8 ["Util"]
      107 GETTABLEKS                       R16 R17 K24 ["joinAndMapBindings"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R18 R0 K8 ["Util"]
      114 GETTABLEKS                       R17 R18 K25 ["mapValues"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R19 R0 K26 ["Hooks"]
      121 GETTABLEKS                       R18 R19 K27 ["useBlankSpaceClicking"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R20 R0 K26 ["Hooks"]
      128 GETTABLEKS                       R19 R20 K28 ["useBoxSelect"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K5 [require]
      133 GETTABLEKS                       R21 R0 K26 ["Hooks"]
      135 GETTABLEKS                       R20 R21 K29 ["useClickTracker"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K5 [require]
      140 GETTABLEKS                       R22 R0 K26 ["Hooks"]
      142 GETTABLEKS                       R21 R22 K30 ["useContextMenu"]
      144 CALL                             R20 1 1
      145 GETIMPORT                        R21 K5 [require]
      147 GETTABLEKS                       R23 R0 K26 ["Hooks"]
      149 GETTABLEKS                       R22 R23 K31 ["useDeleteThenFocus"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K5 [require]
      154 GETTABLEKS                       R24 R0 K26 ["Hooks"]
      156 GETTABLEKS                       R23 R24 K32 ["useDragAndDrop"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K5 [require]
      161 GETTABLEKS                       R25 R0 K26 ["Hooks"]
      163 GETTABLEKS                       R24 R25 K33 ["useDragToExpand"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K5 [require]
      168 GETTABLEKS                       R26 R0 K26 ["Hooks"]
      170 GETTABLEKS                       R25 R26 K34 ["useEdgeScrolling"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K5 [require]
      175 GETTABLEKS                       R27 R0 K26 ["Hooks"]
      177 GETTABLEKS                       R26 R27 K35 ["useExpandAllAndCollapseAll"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K5 [require]
      182 GETTABLEKS                       R28 R0 K26 ["Hooks"]
      184 GETTABLEKS                       R27 R28 K36 ["useGlobalClock"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K5 [require]
      189 GETTABLEKS                       R29 R0 K26 ["Hooks"]
      191 GETTABLEKS                       R28 R29 K37 ["useHoverTracker"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K5 [require]
      196 GETTABLEKS                       R30 R0 K26 ["Hooks"]
      198 GETTABLEKS                       R29 R30 K38 ["useItemsPerPageRef"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K5 [require]
      203 GETTABLEKS                       R31 R0 K26 ["Hooks"]
      205 GETTABLEKS                       R30 R31 K39 ["useNavigationShortcuts"]
      207 CALL                             R29 1 1
      208 GETIMPORT                        R30 K5 [require]
      210 GETTABLEKS                       R32 R0 K26 ["Hooks"]
      212 GETTABLEKS                       R31 R32 K40 ["usePageScrolling"]
      214 CALL                             R30 1 1
      215 GETIMPORT                        R31 K5 [require]
      217 GETTABLEKS                       R33 R0 K26 ["Hooks"]
      219 GETTABLEKS                       R32 R33 K41 ["useRefs"]
      221 CALL                             R31 1 1
      222 GETIMPORT                        R32 K5 [require]
      224 GETTABLEKS                       R34 R0 K26 ["Hooks"]
      226 GETTABLEKS                       R33 R34 K42 ["useRename"]
      228 CALL                             R32 1 1
      229 GETIMPORT                        R33 K5 [require]
      231 GETTABLEKS                       R35 R0 K26 ["Hooks"]
      233 GETTABLEKS                       R34 R35 K43 ["useRequestSavedFields"]
      235 CALL                             R33 1 1
      236 GETIMPORT                        R34 K5 [require]
      238 GETTABLEKS                       R36 R0 K26 ["Hooks"]
      240 GETTABLEKS                       R35 R36 K44 ["useScrollAfterSearchCleared"]
      242 CALL                             R34 1 1
      243 GETIMPORT                        R35 K5 [require]
      245 GETTABLEKS                       R37 R0 K26 ["Hooks"]
      247 GETTABLEKS                       R36 R37 K45 ["useScrollToId"]
      249 CALL                             R35 1 1
      250 GETIMPORT                        R36 K5 [require]
      252 GETTABLEKS                       R38 R0 K26 ["Hooks"]
      254 GETTABLEKS                       R37 R38 K46 ["useScrollToSelection"]
      256 CALL                             R36 1 1
      257 GETIMPORT                        R37 K5 [require]
      259 GETTABLEKS                       R39 R0 K26 ["Hooks"]
      261 GETTABLEKS                       R38 R39 K47 ["useSelectAll"]
      263 CALL                             R37 1 1
      264 GETIMPORT                        R38 K5 [require]
      266 GETTABLEKS                       R40 R0 K26 ["Hooks"]
      268 GETTABLEKS                       R39 R40 K48 ["useSessionCanvasHeight"]
      270 CALL                             R38 1 1
      271 GETIMPORT                        R39 K5 [require]
      273 GETTABLEKS                       R41 R0 K26 ["Hooks"]
      275 GETTABLEKS                       R40 R41 K49 ["useSessionCanvasWidth"]
      277 CALL                             R39 1 1
      278 GETIMPORT                        R40 K5 [require]
      280 GETTABLEKS                       R42 R0 K26 ["Hooks"]
      282 GETTABLEKS                       R41 R42 K50 ["useStreamingActions"]
      284 CALL                             R40 1 1
      285 GETIMPORT                        R41 K5 [require]
      287 GETTABLEKS                       R43 R0 K26 ["Hooks"]
      289 GETTABLEKS                       R42 R43 K51 ["useVisibleExplorerNodeRange"]
      291 CALL                             R41 1 1
      292 GETIMPORT                        R42 K5 [require]
      294 GETTABLEKS                       R44 R0 K26 ["Hooks"]
      296 GETTABLEKS                       R43 R44 K52 ["useZoomExtents"]
      298 CALL                             R42 1 1
      299 GETTABLEKS                       R43 R7 K53 ["createElement"]
      301 DUPCLOSURE                       R44 K54 [PROTO_10]
      302 CAPTURE                          VAL R5
      303 CAPTURE                          VAL R7
      304 CAPTURE                          VAL R2
      305 CAPTURE                          VAL R11
      306 CAPTURE                          VAL R41
      307 CAPTURE                          VAL R27
      308 CAPTURE                          VAL R19
      309 CAPTURE                          VAL R38
      310 CAPTURE                          VAL R39
      311 CAPTURE                          VAL R20
      312 CAPTURE                          VAL R33
      313 CAPTURE                          VAL R37
      314 CAPTURE                          VAL R22
      315 CAPTURE                          VAL R23
      316 CAPTURE                          VAL R24
      317 CAPTURE                          VAL R18
      318 CAPTURE                          VAL R17
      319 CAPTURE                          VAL R35
      320 CAPTURE                          VAL R36
      321 CAPTURE                          VAL R34
      322 CAPTURE                          VAL R42
      323 CAPTURE                          VAL R25
      324 CAPTURE                          VAL R32
      325 CAPTURE                          VAL R12
      326 CAPTURE                          VAL R21
      327 CAPTURE                          VAL R13
      328 CAPTURE                          VAL R40
      329 CAPTURE                          VAL R28
      330 CAPTURE                          VAL R29
      331 CAPTURE                          VAL R30
      332 CAPTURE                          VAL R31
      333 CAPTURE                          VAL R26
      334 CAPTURE                          VAL R43
      335 CAPTURE                          VAL R9
      336 CAPTURE                          VAL R10
      337 CAPTURE                          VAL R15
      338 CAPTURE                          VAL R1
      339 CAPTURE                          VAL R16
      340 CAPTURE                          VAL R3
      341 CAPTURE                          VAL R6
      342 CAPTURE                          VAL R4
      343 RETURN                           R44 1
