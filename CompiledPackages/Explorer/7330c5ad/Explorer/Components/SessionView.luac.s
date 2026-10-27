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
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        9 GETTABLEKS                       R2 R2 K2 ["Y"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K3 ["session"]
       15 GETTABLEKS                       R1 R1 K4 ["getSearch"]
       17 CALL                             R1 0 1
       18 JUMPIFNOTEQKS                    R1 K5 [""] ; [+6]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
       23 SETTABLEKS                       R2 R1 K6 ["current"]
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["ScrollingFrame not mounted yet"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["current"]
       17 GETTABLEKS                       R1 R1 K4 ["AbsoluteSize"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 2
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K0 ["current"]
       24 GETTABLEKS                       R1 R1 K5 ["CanvasPosition"]
       26 GETTABLEKS                       R1 R1 K6 ["X"]
       28 CALL                             R0 1 0
       29 GETUPVAL                         R0 3
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K0 ["current"]
       33 GETTABLEKS                       R1 R1 K5 ["CanvasPosition"]
       35 GETTABLEKS                       R1 R1 K7 ["Y"]
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
        2 DUPTABLE                         R4 K7 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["ZIndex"] = 2}]
        3 GETTABLEKS                       R5 R0 K8 ["getBinding"]
        5 CALL                             R5 0 1
        6 DUPCLOSURE                       R7 K9 [PROTO_6]
        7 NAMECALL                         R5 R5 K10 ["map"]
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K3 ["Position"]
       12 GETIMPORT                        R5 K13 [UDim2.new]
       14 LOADN                            R6 1
       15 LOADN                            R7 0
       16 LOADN                            R8 0
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R9 R9 K14 ["explorerRowHeight"]
       20 CALL                             R5 4 1
       21 SETTABLEKS                       R5 R4 K4 ["Size"]
       23 GETUPVAL                         R5 0
       24 GETUPVAL                         R6 2
       25 DUPTABLE                         R7 K21 [{"visibleNodeObservable", "draggingTargetObservable", "dragToExpand", "clockBinding", "session", "textLabelRef"}]
       26 SETTABLEKS                       R0 R7 K15 ["visibleNodeObservable"]
       28 GETUPVAL                         R8 3
       29 SETTABLEKS                       R8 R7 K16 ["draggingTargetObservable"]
       31 GETUPVAL                         R8 4
       32 SETTABLEKS                       R8 R7 K17 ["dragToExpand"]
       34 GETUPVAL                         R8 5
       35 SETTABLEKS                       R8 R7 K18 ["clockBinding"]
       37 GETUPVAL                         R8 6
       38 GETTABLEKS                       R8 R8 K19 ["session"]
       40 SETTABLEKS                       R8 R7 K19 ["session"]
       42 GETUPVAL                         R9 7
       43 GETTABLE                         R8 R9 R1
       44 SETTABLEKS                       R8 R7 K20 ["textLabelRef"]
       46 CALL                             R5 2 -1
       47 CALL                             R2 -1 1
       48 RETURN                           R2 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADN                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K1 ["useRef"]
       13 GETIMPORT                        R6 K4 [Vector2.new]
       15 CALL                             R6 0 -1
       16 CALL                             R5 -1 1
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K0 ["useState"]
       20 GETIMPORT                        R7 K4 [Vector2.new]
       22 CALL                             R7 0 -1
       23 CALL                             R6 -1 2
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K5 ["useBinding"]
       27 GETIMPORT                        R9 K4 [Vector2.new]
       29 CALL                             R9 0 -1
       30 CALL                             R8 -1 2
       31 GETUPVAL                         R10 1
       32 GETTABLEKS                       R10 R10 K0 ["useState"]
       34 GETUPVAL                         R11 2
       35 GETTABLEKS                       R11 R11 K6 ["minSearchHeaderHeight"]
       37 CALL                             R10 1 2
       38 GETUPVAL                         R12 1
       39 GETTABLEKS                       R12 R12 K7 ["useCallback"]
       41 NEWCLOSURE                       R13 P0
       42 CAPTURE                          VAL R9
       43 NEWTABLE                         R14 0 0
       45 CALL                             R12 2 1
       46 GETUPVAL                         R13 1
       47 GETTABLEKS                       R13 R13 K7 ["useCallback"]
       49 NEWCLOSURE                       R14 P1
       50 CAPTURE                          VAL R7
       51 NEWTABLE                         R15 0 0
       53 CALL                             R13 2 1
       54 GETUPVAL                         R14 1
       55 GETTABLEKS                       R14 R14 K7 ["useCallback"]
       57 NEWCLOSURE                       R15 P2
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R5
       62 NEWTABLE                         R16 0 0
       64 CALL                             R14 2 1
       65 GETUPVAL                         R15 1
       66 GETTABLEKS                       R15 R15 K7 ["useCallback"]
       68 NEWCLOSURE                       R16 P3
       69 CAPTURE                          VAL R11
       70 NEWTABLE                         R17 0 0
       72 CALL                             R15 2 1
       73 GETUPVAL                         R16 1
       74 GETTABLEKS                       R16 R16 K1 ["useRef"]
       76 LOADNIL                          R17
       77 CALL                             R16 1 1
       78 GETUPVAL                         R17 1
       79 GETTABLEKS                       R17 R17 K1 ["useRef"]
       81 LOADNIL                          R18
       82 CALL                             R17 1 1
       83 GETUPVAL                         R18 3
       84 CALL                             R18 0 1
       85 GETUPVAL                         R19 1
       86 GETTABLEKS                       R19 R19 K8 ["useEffect"]
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
      262 GETUPVAL                         R36 1
      263 GETTABLEKS                       R36 R36 K26 ["Event"]
      265 GETTABLEKS                       R36 R36 K27 ["InputBegan"]
      267 GETTABLEKS                       R37 R27 K28 ["inputBegan"]
      269 SETTABLE                         R37 R35 R36
      270 DUPTABLE                         R36 K31 [{"SearchBox", "Contents"}]
      271 GETUPVAL                         R37 32
      272 GETUPVAL                         R38 33
      273 DUPTABLE                         R39 K38 [{["headerRef"], ["onSearchHeaderSizeChange"], ["session"], ["windowHeight"], ["windowHoveredObservable"], ["zIndex"] = 2}]
      274 SETTABLEKS                       R17 R39 K32 ["headerRef"]
      276 SETTABLEKS                       R15 R39 K33 ["onSearchHeaderSizeChange"]
      278 GETTABLEKS                       R40 R0 K9 ["session"]
      280 SETTABLEKS                       R40 R39 K9 ["session"]
      282 GETTABLEKS                       R40 R6 K10 ["Y"]
      284 SETTABLEKS                       R40 R39 K34 ["windowHeight"]
      286 GETTABLEKS                       R40 R20 K12 ["windowIsHoveredObservable"]
      288 SETTABLEKS                       R40 R39 K35 ["windowHoveredObservable"]
      290 CALL                             R37 2 1
      291 SETTABLEKS                       R37 R36 K29 ["SearchBox"]
      293 GETUPVAL                         R37 32
      294 LOADK                            R38 K39 ["Frame"]
      295 DUPTABLE                         R39 K44 [{["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True, ["Position"], ["Size"]}]
      296 GETIMPORT                        R40 K46 [UDim2.fromOffset]
      298 LOADN                            R41 0
      299 MOVE                             R42 R10
      300 CALL                             R40 2 1
      301 SETTABLEKS                       R40 R39 K43 ["Position"]
      303 GETIMPORT                        R40 K47 [UDim2.new]
      305 LOADN                            R41 1
      306 LOADN                            R42 0
      307 LOADN                            R43 1
      308 MINUS                            R44 R10
      309 CALL                             R40 4 1
      310 SETTABLEKS                       R40 R39 K23 ["Size"]
      312 DUPTABLE                         R40 K55 [{"Padding", "Underlays", "ScrollingFrame", "VerticalScrollBarBorder", "HorizontalScrollBarBorder", "Overlays", "GradualEdgeScroll"}]
      313 GETUPVAL                         R41 32
      314 LOADK                            R42 K56 ["UIPadding"]
      315 DUPTABLE                         R43 K59 [{"PaddingRight", "PaddingBottom"}]
      316 GETIMPORT                        R44 K61 [UDim.new]
      318 LOADN                            R45 0
      319 GETUPVAL                         R46 2
      320 GETTABLEKS                       R46 R46 K62 ["sessionViewScrollBarPadding"]
      322 CALL                             R44 2 1
      323 SETTABLEKS                       R44 R43 K57 ["PaddingRight"]
      325 GETIMPORT                        R44 K61 [UDim.new]
      327 LOADN                            R45 0
      328 GETUPVAL                         R46 2
      329 GETTABLEKS                       R46 R46 K62 ["sessionViewScrollBarPadding"]
      331 CALL                             R44 2 1
      332 SETTABLEKS                       R44 R43 K58 ["PaddingBottom"]
      334 CALL                             R41 2 1
      335 SETTABLEKS                       R41 R40 K48 ["Padding"]
      337 GETUPVAL                         R41 32
      338 GETUPVAL                         R42 34
      339 DUPTABLE                         R43 K71 [{"session", "viewportSizeBinding", "scrollHeightObservable", "visibleNodeObservables", "draggingTargetObservable", "scrollingFrameRef", "startEdgeScrolling", "startBoxSelect", "textLabelRefs", "zIndex"}]
      340 GETTABLEKS                       R44 R0 K9 ["session"]
      342 SETTABLEKS                       R44 R43 K9 ["session"]
      344 SETTABLEKS                       R8 R43 K63 ["viewportSizeBinding"]
      346 SETTABLEKS                       R1 R43 K64 ["scrollHeightObservable"]
      348 SETTABLEKS                       R19 R43 K65 ["visibleNodeObservables"]
      350 SETTABLEKS                       R23 R43 K66 ["draggingTargetObservable"]
      352 SETTABLEKS                       R16 R43 K67 ["scrollingFrameRef"]
      354 GETTABLEKS                       R44 R25 K72 ["startGradually"]
      356 SETTABLEKS                       R44 R43 K68 ["startEdgeScrolling"]
      358 GETTABLEKS                       R44 R26 K14 ["start"]
      360 SETTABLEKS                       R44 R43 K69 ["startBoxSelect"]
      362 SETTABLEKS                       R31 R43 K70 ["textLabelRefs"]
      364 MOVE                             R44 R18
      365 CALL                             R44 0 1
      366 SETTABLEKS                       R44 R43 K36 ["zIndex"]
      368 CALL                             R41 2 1
      369 SETTABLEKS                       R41 R40 K49 ["Underlays"]
      371 GETUPVAL                         R41 32
      372 LOADK                            R42 K50 ["ScrollingFrame"]
      373 NEWTABLE                         R43 16 0
      375 LOADB                            R44 0
      376 SETTABLEKS                       R44 R43 K73 ["SmoothScroll"]
      378 GETUPVAL                         R46 2
      379 GETTABLEKS                       R46 R46 K75 ["explorerRowHeight"]
      381 GETUPVAL                         R47 2
      382 GETTABLEKS                       R47 R47 K76 ["explorerScrollRate"]
      384 MUL                              R45 R46 R47
      385 DIVK                             R44 R45 K74 [140]
      386 SETTABLEKS                       R44 R43 K77 ["ScrollRate"]
      388 LOADN                            R44 1
      389 SETTABLEKS                       R44 R43 K19 ["BackgroundTransparency"]
      391 GETUPVAL                         R44 2
      392 GETTABLEKS                       R44 R44 K62 ["sessionViewScrollBarPadding"]
      394 SETTABLEKS                       R44 R43 K78 ["BorderSizePixel"]
      396 GETUPVAL                         R44 35
      397 DUPCLOSURE                       R45 K79 [PROTO_5]
      398 MOVE                             R46 R22
      399 MOVE                             R47 R21
      400 CALL                             R44 3 1
      401 SETTABLEKS                       R44 R43 K80 ["CanvasSize"]
      403 GETUPVAL                         R44 2
      404 GETTABLEKS                       R44 R44 K81 ["sessionViewScrollBarWidth"]
      406 SETTABLEKS                       R44 R43 K82 ["ScrollBarThickness"]
      408 GETIMPORT                        R44 K22 [UDim2.fromScale]
      410 LOADN                            R45 1
      411 LOADN                            R46 1
      412 CALL                             R44 2 1
      413 SETTABLEKS                       R44 R43 K23 ["Size"]
      415 GETIMPORT                        R44 K86 [Enum.ScrollBarInset.Always]
      417 SETTABLEKS                       R44 R43 K87 ["VerticalScrollBarInset"]
      419 MOVE                             R44 R18
      420 CALL                             R44 0 1
      421 SETTABLEKS                       R44 R43 K88 ["ZIndex"]
      423 GETUPVAL                         R44 1
      424 GETTABLEKS                       R44 R44 K89 ["Change"]
      426 GETTABLEKS                       R44 R44 K90 ["AbsoluteWindowSize"]
      428 SETTABLE                         R12 R43 R44
      429 GETUPVAL                         R44 1
      430 GETTABLEKS                       R44 R44 K89 ["Change"]
      432 GETTABLEKS                       R44 R44 K91 ["AbsoluteSize"]
      434 SETTABLE                         R13 R43 R44
      435 GETUPVAL                         R44 1
      436 GETTABLEKS                       R44 R44 K89 ["Change"]
      438 GETTABLEKS                       R44 R44 K92 ["CanvasPosition"]
      440 SETTABLE                         R14 R43 R44
      441 GETUPVAL                         R44 1
      442 GETTABLEKS                       R44 R44 K26 ["Event"]
      444 GETTABLEKS                       R44 R44 K93 ["InputChanged"]
      446 GETTABLEKS                       R45 R30 K94 ["inputChanged"]
      448 SETTABLE                         R45 R43 R44
      449 GETUPVAL                         R44 1
      450 GETTABLEKS                       R44 R44 K95 ["Tag"]
      452 LOADK                            R45 K96 ["Explorer-ScrollingFrame data-testid=Explorer-SessionView-ScrollingFrame"]
      453 SETTABLE                         R45 R43 R44
      454 SETTABLEKS                       R16 R43 K97 ["ref"]
      456 DUPTABLE                         R44 K99 [{"BoxSelect"}]
      457 GETTABLEKS                       R45 R26 K15 ["activeBoxSelect"]
      459 JUMPIFNOT                        R45 ; [+20]
      460 GETUPVAL                         R45 32
      461 GETUPVAL                         R46 36
      462 DUPTABLE                         R47 K103 [{["activeBoxSelect"], ["scrollingFrameRef"], ["scrollHeightBinding"], ["scrollWidthBinding"], ["zIndex"] = 3}]
      463 GETTABLEKS                       R48 R26 K15 ["activeBoxSelect"]
      465 SETTABLEKS                       R48 R47 K15 ["activeBoxSelect"]
      467 SETTABLEKS                       R16 R47 K67 ["scrollingFrameRef"]
      469 GETTABLEKS                       R48 R1 K104 ["getBinding"]
      471 CALL                             R48 0 1
      472 SETTABLEKS                       R48 R47 K100 ["scrollHeightBinding"]
      474 GETTABLEKS                       R48 R3 K104 ["getBinding"]
      476 CALL                             R48 0 1
      477 SETTABLEKS                       R48 R47 K101 ["scrollWidthBinding"]
      479 CALL                             R45 2 1
      480 SETTABLEKS                       R45 R44 K98 ["BoxSelect"]
      482 GETUPVAL                         R45 37
      483 MOVE                             R46 R19
      484 NEWCLOSURE                       R47 P6
      485 CAPTURE                          UPVAL U32
      486 CAPTURE                          UPVAL U2
      487 CAPTURE                          UPVAL U38
      488 CAPTURE                          VAL R23
      489 CAPTURE                          VAL R24
      490 CAPTURE                          VAL R32
      491 CAPTURE                          VAL R0
      492 CAPTURE                          VAL R31
      493 CALL                             R45 2 -1
      494 CALL                             R41 -1 1
      495 SETTABLEKS                       R41 R40 K50 ["ScrollingFrame"]
      497 GETUPVAL                         R41 32
      498 LOADK                            R42 K39 ["Frame"]
      499 NEWTABLE                         R43 8 0
      501 GETIMPORT                        R44 K4 [Vector2.new]
      503 LOADK                            R45 K105 [0.5]
      504 LOADN                            R46 0
      505 CALL                             R44 2 1
      506 SETTABLEKS                       R44 R43 K106 ["AnchorPoint"]
      508 LOADN                            R44 0
      509 SETTABLEKS                       R44 R43 K78 ["BorderSizePixel"]
      511 GETIMPORT                        R44 K47 [UDim2.new]
      513 LOADN                            R45 1
      514 GETUPVAL                         R48 2
      515 GETTABLEKS                       R48 R48 K81 ["sessionViewScrollBarWidth"]
      517 GETUPVAL                         R49 2
      518 GETTABLEKS                       R49 R49 K62 ["sessionViewScrollBarPadding"]
      520 ADD                              R47 R48 R49
      521 MINUS                            R46 R47
      522 LOADN                            R47 0
      523 LOADN                            R48 0
      524 CALL                             R44 4 1
      525 SETTABLEKS                       R44 R43 K43 ["Position"]
      527 GETIMPORT                        R44 K47 [UDim2.new]
      529 LOADN                            R45 0
      530 LOADN                            R46 1
      531 LOADN                            R47 1
      532 LOADN                            R48 0
      533 CALL                             R44 4 1
      534 SETTABLEKS                       R44 R43 K23 ["Size"]
      536 MOVE                             R44 R18
      537 CALL                             R44 0 1
      538 SETTABLEKS                       R44 R43 K88 ["ZIndex"]
      540 GETTABLEKS                       R44 R30 K107 ["activeScrollBarObservable"]
      542 GETTABLEKS                       R44 R44 K104 ["getBinding"]
      544 CALL                             R44 0 1
      545 DUPCLOSURE                       R46 K108 [PROTO_8]
      546 NAMECALL                         R44 R44 K109 ["map"]
      548 CALL                             R44 2 1
      549 SETTABLEKS                       R44 R43 K110 ["Visible"]
      551 GETUPVAL                         R44 1
      552 GETTABLEKS                       R44 R44 K95 ["Tag"]
      554 LOADK                            R45 K111 ["Explorer-BG-Input data-testid=Explorer-Vertical-Scroll-Border"]
      555 SETTABLE                         R45 R43 R44
      556 CALL                             R41 2 1
      557 SETTABLEKS                       R41 R40 K51 ["VerticalScrollBarBorder"]
      559 GETUPVAL                         R41 32
      560 LOADK                            R42 K39 ["Frame"]
      561 NEWTABLE                         R43 8 0
      563 GETIMPORT                        R44 K4 [Vector2.new]
      565 LOADN                            R45 0
      566 LOADK                            R46 K105 [0.5]
      567 CALL                             R44 2 1
      568 SETTABLEKS                       R44 R43 K106 ["AnchorPoint"]
      570 LOADN                            R44 0
      571 SETTABLEKS                       R44 R43 K78 ["BorderSizePixel"]
      573 GETIMPORT                        R44 K47 [UDim2.new]
      575 LOADN                            R45 0
      576 LOADN                            R46 0
      577 LOADN                            R47 1
      578 GETUPVAL                         R50 2
      579 GETTABLEKS                       R50 R50 K81 ["sessionViewScrollBarWidth"]
      581 GETUPVAL                         R51 2
      582 GETTABLEKS                       R51 R51 K62 ["sessionViewScrollBarPadding"]
      584 ADD                              R49 R50 R51
      585 MINUS                            R48 R49
      586 CALL                             R44 4 1
      587 SETTABLEKS                       R44 R43 K43 ["Position"]
      589 GETIMPORT                        R44 K47 [UDim2.new]
      591 LOADN                            R45 1
      592 LOADN                            R46 0
      593 LOADN                            R47 0
      594 LOADN                            R48 1
      595 CALL                             R44 4 1
      596 SETTABLEKS                       R44 R43 K23 ["Size"]
      598 MOVE                             R44 R18
      599 CALL                             R44 0 1
      600 SETTABLEKS                       R44 R43 K88 ["ZIndex"]
      602 GETTABLEKS                       R44 R30 K107 ["activeScrollBarObservable"]
      604 GETTABLEKS                       R44 R44 K104 ["getBinding"]
      606 CALL                             R44 0 1
      607 DUPCLOSURE                       R46 K112 [PROTO_9]
      608 NAMECALL                         R44 R44 K109 ["map"]
      610 CALL                             R44 2 1
      611 SETTABLEKS                       R44 R43 K110 ["Visible"]
      613 GETUPVAL                         R44 1
      614 GETTABLEKS                       R44 R44 K95 ["Tag"]
      616 LOADK                            R45 K113 ["Explorer-BG-Input data-testid=Explorer-Horizontal-Scroll-Border"]
      617 SETTABLE                         R45 R43 R44
      618 CALL                             R41 2 1
      619 SETTABLEKS                       R41 R40 K52 ["HorizontalScrollBarBorder"]
      621 GETUPVAL                         R41 32
      622 GETUPVAL                         R42 39
      623 DUPTABLE                         R43 K116 [{"session", "viewportSizeBinding", "scrollHeightObservable", "scrollWidthObservable", "visibleNodeObservables", "draggingTargetObservable", "boxSelecting", "windowIsHoveredObservable", "scrollingFrameRef", "zIndex"}]
      624 GETTABLEKS                       R44 R0 K9 ["session"]
      626 SETTABLEKS                       R44 R43 K9 ["session"]
      628 SETTABLEKS                       R8 R43 K63 ["viewportSizeBinding"]
      630 SETTABLEKS                       R1 R43 K64 ["scrollHeightObservable"]
      632 SETTABLEKS                       R3 R43 K114 ["scrollWidthObservable"]
      634 SETTABLEKS                       R19 R43 K65 ["visibleNodeObservables"]
      636 SETTABLEKS                       R23 R43 K66 ["draggingTargetObservable"]
      638 GETTABLEKS                       R45 R26 K15 ["activeBoxSelect"]
      640 JUMPIFNOTEQKNIL                  R45 ; [+2]
      642 LOADB                            R44 0 +1
      643 LOADB                            R44 1
      644 SETTABLEKS                       R44 R43 K115 ["boxSelecting"]
      646 GETTABLEKS                       R44 R20 K12 ["windowIsHoveredObservable"]
      648 SETTABLEKS                       R44 R43 K12 ["windowIsHoveredObservable"]
      650 SETTABLEKS                       R16 R43 K67 ["scrollingFrameRef"]
      652 MOVE                             R44 R18
      653 CALL                             R44 0 1
      654 SETTABLEKS                       R44 R43 K36 ["zIndex"]
      656 CALL                             R41 2 1
      657 SETTABLEKS                       R41 R40 K53 ["Overlays"]
      659 GETTABLEKS                       R41 R25 K117 ["activeEdgeScroll"]
      661 JUMPIFNOT                        R41 ; [+17]
      662 GETTABLEKS                       R41 R25 K117 ["activeEdgeScroll"]
      664 GETTABLEKS                       R41 R41 K118 ["gradual"]
      666 JUMPIFNOT                        R41 ; [+12]
      667 GETUPVAL                         R41 32
      668 GETUPVAL                         R42 40
      669 DUPTABLE                         R43 K119 [{"activeEdgeScroll", "zIndex"}]
      670 GETTABLEKS                       R44 R25 K117 ["activeEdgeScroll"]
      672 SETTABLEKS                       R44 R43 K117 ["activeEdgeScroll"]
      674 MOVE                             R44 R18
      675 CALL                             R44 0 1
      676 SETTABLEKS                       R44 R43 K36 ["zIndex"]
      678 CALL                             R41 2 1
      679 SETTABLEKS                       R41 R40 K54 ["GradualEdgeScroll"]
      681 CALL                             R37 3 1
      682 SETTABLEKS                       R37 R36 K30 ["Contents"]
      684 CALL                             R33 3 -1
      685 RETURN                           R33 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["BoxSelectIndicator"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["Constants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["ExplorerNodeRow"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["GradualEdgeScroll"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Util"]
       39 GETTABLEKS                       R6 R6 K12 ["Observable"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R7 K13 ["Overlays"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Parent"]
       53 GETTABLEKS                       R8 R8 K15 ["React"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K16 ["RpcTypes"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["Components"]
       65 GETTABLEKS                       R10 R10 K17 ["SearchBox"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K6 ["Components"]
       72 GETTABLEKS                       R11 R11 K18 ["Underlays"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K8 ["Util"]
       79 GETTABLEKS                       R12 R12 K19 ["createNextOrder"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K20 ["Flags"]
       86 GETTABLEKS                       R13 R13 K21 ["getFFlagExplorerDeleteThenFocus"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K20 ["Flags"]
       93 GETTABLEKS                       R14 R14 K22 ["getFFlagExplorerStreaming"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K8 ["Util"]
      100 GETTABLEKS                       R15 R15 K23 ["getScrollBarOrientation"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K8 ["Util"]
      107 GETTABLEKS                       R16 R16 K24 ["joinAndMapBindings"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K8 ["Util"]
      114 GETTABLEKS                       R17 R17 K25 ["mapValues"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K26 ["Hooks"]
      121 GETTABLEKS                       R18 R18 K27 ["useBlankSpaceClicking"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K26 ["Hooks"]
      128 GETTABLEKS                       R19 R19 K28 ["useBoxSelect"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K5 [require]
      133 GETTABLEKS                       R20 R0 K26 ["Hooks"]
      135 GETTABLEKS                       R20 R20 K29 ["useClickTracker"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K5 [require]
      140 GETTABLEKS                       R21 R0 K26 ["Hooks"]
      142 GETTABLEKS                       R21 R21 K30 ["useContextMenu"]
      144 CALL                             R20 1 1
      145 GETIMPORT                        R21 K5 [require]
      147 GETTABLEKS                       R22 R0 K26 ["Hooks"]
      149 GETTABLEKS                       R22 R22 K31 ["useDeleteThenFocus"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K5 [require]
      154 GETTABLEKS                       R23 R0 K26 ["Hooks"]
      156 GETTABLEKS                       R23 R23 K32 ["useDragAndDrop"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K5 [require]
      161 GETTABLEKS                       R24 R0 K26 ["Hooks"]
      163 GETTABLEKS                       R24 R24 K33 ["useDragToExpand"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K5 [require]
      168 GETTABLEKS                       R25 R0 K26 ["Hooks"]
      170 GETTABLEKS                       R25 R25 K34 ["useEdgeScrolling"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K5 [require]
      175 GETTABLEKS                       R26 R0 K26 ["Hooks"]
      177 GETTABLEKS                       R26 R26 K35 ["useExpandAllAndCollapseAll"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K5 [require]
      182 GETTABLEKS                       R27 R0 K26 ["Hooks"]
      184 GETTABLEKS                       R27 R27 K36 ["useGlobalClock"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K5 [require]
      189 GETTABLEKS                       R28 R0 K26 ["Hooks"]
      191 GETTABLEKS                       R28 R28 K37 ["useHoverTracker"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K5 [require]
      196 GETTABLEKS                       R29 R0 K26 ["Hooks"]
      198 GETTABLEKS                       R29 R29 K38 ["useItemsPerPageRef"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K5 [require]
      203 GETTABLEKS                       R30 R0 K26 ["Hooks"]
      205 GETTABLEKS                       R30 R30 K39 ["useNavigationShortcuts"]
      207 CALL                             R29 1 1
      208 GETIMPORT                        R30 K5 [require]
      210 GETTABLEKS                       R31 R0 K26 ["Hooks"]
      212 GETTABLEKS                       R31 R31 K40 ["usePageScrolling"]
      214 CALL                             R30 1 1
      215 GETIMPORT                        R31 K5 [require]
      217 GETTABLEKS                       R32 R0 K26 ["Hooks"]
      219 GETTABLEKS                       R32 R32 K41 ["useRefs"]
      221 CALL                             R31 1 1
      222 GETIMPORT                        R32 K5 [require]
      224 GETTABLEKS                       R33 R0 K26 ["Hooks"]
      226 GETTABLEKS                       R33 R33 K42 ["useRename"]
      228 CALL                             R32 1 1
      229 GETIMPORT                        R33 K5 [require]
      231 GETTABLEKS                       R34 R0 K26 ["Hooks"]
      233 GETTABLEKS                       R34 R34 K43 ["useRequestSavedFields"]
      235 CALL                             R33 1 1
      236 GETIMPORT                        R34 K5 [require]
      238 GETTABLEKS                       R35 R0 K26 ["Hooks"]
      240 GETTABLEKS                       R35 R35 K44 ["useScrollAfterSearchCleared"]
      242 CALL                             R34 1 1
      243 GETIMPORT                        R35 K5 [require]
      245 GETTABLEKS                       R36 R0 K26 ["Hooks"]
      247 GETTABLEKS                       R36 R36 K45 ["useScrollToId"]
      249 CALL                             R35 1 1
      250 GETIMPORT                        R36 K5 [require]
      252 GETTABLEKS                       R37 R0 K26 ["Hooks"]
      254 GETTABLEKS                       R37 R37 K46 ["useScrollToSelection"]
      256 CALL                             R36 1 1
      257 GETIMPORT                        R37 K5 [require]
      259 GETTABLEKS                       R38 R0 K26 ["Hooks"]
      261 GETTABLEKS                       R38 R38 K47 ["useSelectAll"]
      263 CALL                             R37 1 1
      264 GETIMPORT                        R38 K5 [require]
      266 GETTABLEKS                       R39 R0 K26 ["Hooks"]
      268 GETTABLEKS                       R39 R39 K48 ["useSessionCanvasHeight"]
      270 CALL                             R38 1 1
      271 GETIMPORT                        R39 K5 [require]
      273 GETTABLEKS                       R40 R0 K26 ["Hooks"]
      275 GETTABLEKS                       R40 R40 K49 ["useSessionCanvasWidth"]
      277 CALL                             R39 1 1
      278 GETIMPORT                        R40 K5 [require]
      280 GETTABLEKS                       R41 R0 K26 ["Hooks"]
      282 GETTABLEKS                       R41 R41 K50 ["useStreamingActions"]
      284 CALL                             R40 1 1
      285 GETIMPORT                        R41 K5 [require]
      287 GETTABLEKS                       R42 R0 K26 ["Hooks"]
      289 GETTABLEKS                       R42 R42 K51 ["useVisibleExplorerNodeRange"]
      291 CALL                             R41 1 1
      292 GETIMPORT                        R42 K5 [require]
      294 GETTABLEKS                       R43 R0 K26 ["Hooks"]
      296 GETTABLEKS                       R43 R43 K52 ["useZoomExtents"]
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
