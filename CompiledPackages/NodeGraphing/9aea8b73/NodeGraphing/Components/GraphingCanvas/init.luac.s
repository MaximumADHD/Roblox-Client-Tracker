PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeAbsoluteSize"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["setAbsoluteSize"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeRenderedGraphRect"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["observeViewportRect"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["current"]
       13 JUMPIFNOT                        R3 ; [+5]
       14 GETTABLEKS                       R4 R3 K3 ["update"]
       16 MOVE                             R5 R1
       17 MOVE                             R6 R2
       18 CALL                             R4 2 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["setFrame"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K1 [{"layer"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["layer"]
        4 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K2 ["useConsumerHasParameters"]
       12 CALL                             R2 0 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["useRef"]
       18 LOADNIL                          R4
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 4
       21 CALL                             R4 0 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R7 0 2
       31 GETTABLEKS                       R8 R1 K5 ["setAbsoluteSize"]
       33 GETTABLEKS                       R9 R4 K6 ["observeAbsoluteSize"]
       35 SETLIST                          R7 R8 2 [1]
       37 CALL                             R5 2 0
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K7 ["useLayoutEffect"]
       41 NEWCLOSURE                       R6 P1
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 NEWTABLE                         R7 0 2
       47 GETTABLEKS                       R8 R1 K8 ["observeViewportRect"]
       49 GETTABLEKS                       R9 R1 K9 ["observeRenderedGraphRect"]
       51 SETLIST                          R7 R8 2 [1]
       53 CALL                             R5 2 0
       54 GETUPVAL                         R6 6
       55 JUMPIFNOT                        R6 ; [+2]
       56 LOADNIL                          R5
       57 JUMP                             ; [+6]
       58 GETUPVAL                         R5 7
       59 GETTABLEKS                       R5 R5 K10 ["useSignalState"]
       61 GETTABLEKS                       R6 R1 K8 ["observeViewportRect"]
       63 CALL                             R5 1 1
       64 GETUPVAL                         R7 6
       65 JUMPIFNOT                        R7 ; [+2]
       66 LOADNIL                          R6
       67 JUMP                             ; [+6]
       68 GETUPVAL                         R6 7
       69 GETTABLEKS                       R6 R6 K10 ["useSignalState"]
       71 GETTABLEKS                       R7 R1 K9 ["observeRenderedGraphRect"]
       73 CALL                             R6 1 1
       74 GETUPVAL                         R7 0
       75 GETTABLEKS                       R7 R7 K3 ["useRef"]
       77 LOADNIL                          R8
       78 CALL                             R7 1 1
       79 GETUPVAL                         R8 0
       80 GETTABLEKS                       R8 R8 K11 ["useCallback"]
       82 NEWCLOSURE                       R9 P2
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R4
       85 NEWTABLE                         R10 0 1
       87 GETTABLEKS                       R11 R4 K12 ["setFrame"]
       89 SETLIST                          R10 R11 1 [1]
       91 CALL                             R8 2 1
       92 GETUPVAL                         R9 0
       93 GETTABLEKS                       R9 R9 K13 ["useState"]
       95 LOADNIL                          R10
       96 CALL                             R9 1 2
       97 GETUPVAL                         R11 0
       98 GETTABLEKS                       R11 R11 K14 ["useMemo"]
      100 NEWCLOSURE                       R12 P3
      101 CAPTURE                          VAL R9
      102 NEWTABLE                         R13 0 1
      104 MOVE                             R14 R9
      105 SETLIST                          R13 R14 1 [1]
      107 CALL                             R11 2 1
      108 GETUPVAL                         R12 8
      109 GETTABLEKS                       R12 R12 K15 ["Hooks"]
      111 GETTABLEKS                       R12 R12 K16 ["useTokens"]
      113 CALL                             R12 0 1
      114 GETUPVAL                         R13 9
      115 GETTABLEKS                       R13 R13 K17 ["createNextOrder"]
      117 CALL                             R13 0 1
      118 DUPTABLE                         R14 K28 [{"GraphingCanvasBackground", "GraphingCanvasBackgroundDragger", "NodeSelectionBox", "CompositorNodes", "GraphingCanvasContextMenuAnchor", "NodeRightClickMenuAnchor", "GraphingCanvasKeyboardInput", "GraphingCanvasScroller", "CompositorConnectionInputDetector", "CanvasOverlayLayer"}]
      119 GETUPVAL                         R15 0
      120 GETTABLEKS                       R15 R15 K29 ["createElement"]
      122 GETUPVAL                         R16 10
      123 DUPTABLE                         R17 K31 [{"ZIndex"}]
      124 MOVE                             R18 R13
      125 CALL                             R18 0 1
      126 SETTABLEKS                       R18 R17 K30 ["ZIndex"]
      128 CALL                             R15 2 1
      129 SETTABLEKS                       R15 R14 K18 ["GraphingCanvasBackground"]
      131 GETUPVAL                         R15 0
      132 GETTABLEKS                       R15 R15 K29 ["createElement"]
      134 GETUPVAL                         R16 11
      135 DUPTABLE                         R17 K31 [{"ZIndex"}]
      136 MOVE                             R18 R13
      137 CALL                             R18 0 1
      138 SETTABLEKS                       R18 R17 K30 ["ZIndex"]
      140 CALL                             R15 2 1
      141 SETTABLEKS                       R15 R14 K19 ["GraphingCanvasBackgroundDragger"]
      143 GETUPVAL                         R15 0
      144 GETTABLEKS                       R15 R15 K29 ["createElement"]
      146 GETUPVAL                         R16 12
      147 DUPTABLE                         R17 K31 [{"ZIndex"}]
      148 MOVE                             R18 R13
      149 CALL                             R18 0 1
      150 SETTABLEKS                       R18 R17 K30 ["ZIndex"]
      152 CALL                             R15 2 1
      153 SETTABLEKS                       R15 R14 K20 ["NodeSelectionBox"]
      155 GETUPVAL                         R15 0
      156 GETTABLEKS                       R15 R15 K29 ["createElement"]
      158 GETUPVAL                         R16 13
      159 DUPTABLE                         R17 K31 [{"ZIndex"}]
      160 MOVE                             R18 R13
      161 CALL                             R18 0 1
      162 SETTABLEKS                       R18 R17 K30 ["ZIndex"]
      164 CALL                             R15 2 1
      165 SETTABLEKS                       R15 R14 K21 ["CompositorNodes"]
      167 GETUPVAL                         R15 0
      168 GETTABLEKS                       R15 R15 K29 ["createElement"]
      170 GETUPVAL                         R16 14
      171 CALL                             R15 1 1
      172 SETTABLEKS                       R15 R14 K22 ["GraphingCanvasContextMenuAnchor"]
      174 GETUPVAL                         R15 0
      175 GETTABLEKS                       R15 R15 K29 ["createElement"]
      177 GETUPVAL                         R16 15
      178 CALL                             R15 1 1
      179 SETTABLEKS                       R15 R14 K23 ["NodeRightClickMenuAnchor"]
      181 GETUPVAL                         R15 0
      182 GETTABLEKS                       R15 R15 K29 ["createElement"]
      184 GETUPVAL                         R16 16
      185 DUPTABLE                         R17 K31 [{"ZIndex"}]
      186 MOVE                             R18 R13
      187 CALL                             R18 0 1
      188 SETTABLEKS                       R18 R17 K30 ["ZIndex"]
      190 CALL                             R15 2 1
      191 SETTABLEKS                       R15 R14 K24 ["GraphingCanvasKeyboardInput"]
      193 GETUPVAL                         R15 0
      194 GETTABLEKS                       R15 R15 K29 ["createElement"]
      196 GETUPVAL                         R16 17
      197 DUPTABLE                         R17 K31 [{"ZIndex"}]
      198 MOVE                             R18 R13
      199 CALL                             R18 0 1
      200 SETTABLEKS                       R18 R17 K30 ["ZIndex"]
      202 CALL                             R15 2 1
      203 SETTABLEKS                       R15 R14 K25 ["GraphingCanvasScroller"]
      205 GETUPVAL                         R15 18
      206 JUMPIFNOT                        R15 ; [+12]
      207 GETUPVAL                         R15 0
      208 GETTABLEKS                       R15 R15 K29 ["createElement"]
      210 GETUPVAL                         R16 19
      211 GETTABLEKS                       R16 R16 K32 ["InputDetector"]
      213 DUPTABLE                         R17 K31 [{"ZIndex"}]
      214 MOVE                             R18 R13
      215 CALL                             R18 0 1
      216 SETTABLEKS                       R18 R17 K30 ["ZIndex"]
      218 CALL                             R15 2 1
      219 SETTABLEKS                       R15 R14 K26 ["CompositorConnectionInputDetector"]
      221 GETUPVAL                         R16 20
      222 CALL                             R16 0 1
      223 JUMPIFNOT                        R16 ; [+15]
      224 GETUPVAL                         R15 0
      225 GETTABLEKS                       R15 R15 K29 ["createElement"]
      227 GETUPVAL                         R16 8
      228 GETTABLEKS                       R16 R16 K33 ["View"]
      230 DUPTABLE                         R17 K37 [{["tag"] = "size-full-full", ["ZIndex"], ["ref"]}]
      231 MOVE                             R18 R13
      232 CALL                             R18 0 1
      233 SETTABLEKS                       R18 R17 K30 ["ZIndex"]
      235 SETTABLEKS                       R10 R17 K36 ["ref"]
      237 CALL                             R15 2 1
      238 JUMP                             ; [+1]
      239 LOADNIL                          R15
      240 SETTABLEKS                       R15 R14 K27 ["CanvasOverlayLayer"]
      242 GETUPVAL                         R15 0
      243 GETTABLEKS                       R15 R15 K29 ["createElement"]
      245 GETUPVAL                         R16 8
      246 GETTABLEKS                       R16 R16 K33 ["View"]
      248 DUPTABLE                         R17 K38 [{["tag"] = "size-full-full", ["ref"]}]
      249 SETTABLEKS                       R8 R17 K36 ["ref"]
      251 DUPTABLE                         R18 K40 [{"Contexts"}]
      252 GETUPVAL                         R19 0
      253 GETTABLEKS                       R19 R19 K29 ["createElement"]
      255 GETUPVAL                         R20 9
      256 GETTABLEKS                       R20 R20 K41 ["ContextStack"]
      258 DUPTABLE                         R21 K43 [{"providers"}]
      259 NEWTABLE                         R22 0 4
      261 GETUPVAL                         R23 0
      262 GETTABLEKS                       R23 R23 K29 ["createElement"]
      264 GETUPVAL                         R24 21
      265 GETTABLEKS                       R24 R24 K1 ["Context"]
      267 GETTABLEKS                       R24 R24 K44 ["Provider"]
      269 DUPTABLE                         R25 K46 [{"value"}]
      270 SETTABLEKS                       R11 R25 K45 ["value"]
      272 CALL                             R23 2 1
      273 GETUPVAL                         R24 0
      274 GETTABLEKS                       R24 R24 K29 ["createElement"]
      276 GETUPVAL                         R25 22
      277 GETTABLEKS                       R25 R25 K44 ["Provider"]
      279 CALL                             R24 1 1
      280 GETUPVAL                         R25 0
      281 GETTABLEKS                       R25 R25 K29 ["createElement"]
      283 GETUPVAL                         R26 23
      284 GETTABLEKS                       R26 R26 K44 ["Provider"]
      286 CALL                             R25 1 1
      287 GETUPVAL                         R27 18
      288 JUMPIFNOT                        R27 ; [+8]
      289 GETUPVAL                         R26 0
      290 GETTABLEKS                       R26 R26 K29 ["createElement"]
      292 GETUPVAL                         R27 0
      293 GETTABLEKS                       R27 R27 K47 ["Fragment"]
      295 CALL                             R26 1 1
      296 JUMP                             ; [+7]
      297 GETUPVAL                         R26 0
      298 GETTABLEKS                       R26 R26 K29 ["createElement"]
      300 GETUPVAL                         R27 19
      301 GETTABLEKS                       R27 R27 K44 ["Provider"]
      303 CALL                             R26 1 1
      304 SETLIST                          R22 R23 4 [1]
      306 SETTABLEKS                       R22 R21 K42 ["providers"]
      308 DUPTABLE                         R22 K51 [{"Canvas", "ParameterPane", "Children"}]
      309 GETUPVAL                         R23 0
      310 GETTABLEKS                       R23 R23 K29 ["createElement"]
      312 GETUPVAL                         R24 24
      313 GETTABLEKS                       R24 R24 K48 ["Canvas"]
      315 DUPTABLE                         R25 K64 [{"ref", "GraphRect", "ViewportRect", "Size", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundColor3", "CanvasBackgroundTransparency", "ViewportBackgroundColor3", "ViewportBackgroundTransparency", "childrenUnclipped"}]
      316 SETTABLEKS                       R3 R25 K36 ["ref"]
      318 GETUPVAL                         R27 6
      319 JUMPIFNOT                        R27 ; [+2]
      320 LOADNIL                          R26
      321 JUMP                             ; [+1]
      322 MOVE                             R26 R6
      323 SETTABLEKS                       R26 R25 K52 ["GraphRect"]
      325 GETUPVAL                         R27 6
      326 JUMPIFNOT                        R27 ; [+2]
      327 LOADNIL                          R26
      328 JUMP                             ; [+1]
      329 MOVE                             R26 R5
      330 SETTABLEKS                       R26 R25 K53 ["ViewportRect"]
      332 GETIMPORT                        R26 K67 [UDim2.fromScale]
      334 LOADN                            R27 1
      335 LOADN                            R28 1
      336 CALL                             R26 2 1
      337 SETTABLEKS                       R26 R25 K54 ["Size"]
      339 GETIMPORT                        R26 K70 [UDim.new]
      341 LOADN                            R27 0
      342 LOADN                            R28 0
      343 CALL                             R26 2 1
      344 SETTABLEKS                       R26 R25 K55 ["ViewportPaddingLeft"]
      346 GETIMPORT                        R26 K70 [UDim.new]
      348 LOADN                            R27 0
      349 LOADN                            R28 0
      350 CALL                             R26 2 1
      351 SETTABLEKS                       R26 R25 K56 ["ViewportPaddingRight"]
      353 GETIMPORT                        R26 K70 [UDim.new]
      355 LOADN                            R27 0
      356 LOADN                            R28 0
      357 CALL                             R26 2 1
      358 SETTABLEKS                       R26 R25 K57 ["ViewportPaddingBottom"]
      360 GETIMPORT                        R26 K70 [UDim.new]
      362 LOADN                            R27 0
      363 LOADN                            R28 0
      364 CALL                             R26 2 1
      365 SETTABLEKS                       R26 R25 K58 ["ViewportPaddingTop"]
      367 GETTABLEKS                       R26 R12 K71 ["Color"]
      369 GETTABLEKS                       R26 R26 K72 ["Surface"]
      371 GETTABLEKS                       R26 R26 K73 ["Surface_100"]
      373 GETTABLEKS                       R26 R26 K74 ["Color3"]
      375 SETTABLEKS                       R26 R25 K59 ["CanvasBackgroundColor3"]
      377 GETTABLEKS                       R26 R12 K71 ["Color"]
      379 GETTABLEKS                       R26 R26 K72 ["Surface"]
      381 GETTABLEKS                       R26 R26 K73 ["Surface_100"]
      383 GETTABLEKS                       R26 R26 K75 ["Transparency"]
      385 SETTABLEKS                       R26 R25 K60 ["CanvasBackgroundTransparency"]
      387 GETTABLEKS                       R26 R12 K71 ["Color"]
      389 GETTABLEKS                       R26 R26 K72 ["Surface"]
      391 GETTABLEKS                       R26 R26 K73 ["Surface_100"]
      393 GETTABLEKS                       R26 R26 K74 ["Color3"]
      395 SETTABLEKS                       R26 R25 K61 ["ViewportBackgroundColor3"]
      397 GETTABLEKS                       R26 R12 K71 ["Color"]
      399 GETTABLEKS                       R26 R26 K72 ["Surface"]
      401 GETTABLEKS                       R26 R26 K73 ["Surface_100"]
      403 GETTABLEKS                       R26 R26 K75 ["Transparency"]
      405 SETTABLEKS                       R26 R25 K62 ["ViewportBackgroundTransparency"]
      407 DUPTABLE                         R26 K77 [{"ConnectionContexts"}]
      408 GETUPVAL                         R27 0
      409 GETTABLEKS                       R27 R27 K29 ["createElement"]
      411 GETUPVAL                         R28 9
      412 GETTABLEKS                       R28 R28 K41 ["ContextStack"]
      414 DUPTABLE                         R29 K43 [{"providers"}]
      415 NEWTABLE                         R30 0 4
      417 GETUPVAL                         R31 0
      418 GETTABLEKS                       R31 R31 K29 ["createElement"]
      420 GETUPVAL                         R32 19
      421 GETTABLEKS                       R32 R32 K44 ["Provider"]
      423 CALL                             R31 1 1
      424 GETUPVAL                         R32 0
      425 GETTABLEKS                       R32 R32 K29 ["createElement"]
      427 GETUPVAL                         R33 25
      428 GETTABLEKS                       R33 R33 K44 ["Provider"]
      430 CALL                             R32 1 1
      431 GETUPVAL                         R33 0
      432 GETTABLEKS                       R33 R33 K29 ["createElement"]
      434 GETUPVAL                         R34 26
      435 GETTABLEKS                       R34 R34 K44 ["Provider"]
      437 CALL                             R33 1 1
      438 GETUPVAL                         R34 0
      439 GETTABLEKS                       R34 R34 K29 ["createElement"]
      441 GETUPVAL                         R35 27
      442 GETTABLEKS                       R35 R35 K44 ["Provider"]
      444 CALL                             R34 1 -1
      445 SETLIST                          R30 R31 -1 [1]
      447 SETTABLEKS                       R30 R29 K42 ["providers"]
      449 MOVE                             R30 R14
      450 CALL                             R27 3 1
      451 SETTABLEKS                       R27 R26 K76 ["ConnectionContexts"]
      453 SETTABLEKS                       R26 R25 K63 ["childrenUnclipped"]
      455 CALL                             R23 2 1
      456 SETTABLEKS                       R23 R22 K48 ["Canvas"]
      458 GETUPVAL                         R24 2
      459 JUMPIFNOT                        R24 ; [+2]
      460 MOVE                             R23 R2
      461 JUMPIFNOT                        R23 ; [+8]
      462 GETUPVAL                         R23 0
      463 GETTABLEKS                       R23 R23 K29 ["createElement"]
      465 GETUPVAL                         R24 28
      466 DUPTABLE                         R25 K79 [{"canvasFrameRef"}]
      467 SETTABLEKS                       R7 R25 K78 ["canvasFrameRef"]
      469 CALL                             R23 2 1
      470 SETTABLEKS                       R23 R22 K49 ["ParameterPane"]
      472 GETUPVAL                         R23 0
      473 GETTABLEKS                       R23 R23 K29 ["createElement"]
      475 GETUPVAL                         R24 0
      476 GETTABLEKS                       R24 R24 K47 ["Fragment"]
      478 NEWTABLE                         R25 0 0
      480 GETTABLEKS                       R26 R0 K80 ["children"]
      482 CALL                             R23 3 1
      483 SETTABLEKS                       R23 R22 K50 ["Children"]
      485 CALL                             R19 3 1
      486 SETTABLEKS                       R19 R18 K39 ["Contexts"]
      488 CALL                             R15 3 -1
      489 RETURN                           R15 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K4 [{"initialGraphRect", "renderStepped"}]
        7 GETTABLEKS                       R4 R0 K2 ["initialGraphRect"]
        9 SETTABLEKS                       R4 R3 K2 ["initialGraphRect"]
       11 GETTABLEKS                       R4 R0 K3 ["renderStepped"]
       13 SETTABLEKS                       R4 R3 K3 ["renderStepped"]
       15 DUPTABLE                         R4 K6 [{"Inner"}]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["createElement"]
       19 GETUPVAL                         R6 2
       20 NEWTABLE                         R7 0 0
       22 GETTABLEKS                       R8 R0 K7 ["children"]
       24 CALL                             R5 3 1
       25 SETTABLEKS                       R5 R4 K5 ["Inner"]
       27 CALL                             R1 3 -1
       28 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CanvasOverlayContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["CompositorConnectionContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K9 ["CompositorCurveDragContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K10 ["CompositorNodes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Flags"]
       39 GETTABLEKS                       R6 R6 K12 ["FFlagAnimGraphUI_AllowNoParameters"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Flags"]
       46 GETTABLEKS                       R7 R7 K13 ["FFlagAnimGraphUI_ClickTogglePins"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K11 ["Flags"]
       53 GETTABLEKS                       R8 R8 K14 ["FFlagAnimGraphUI_PerfFixes_7123"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Parent"]
       60 GETTABLEKS                       R9 R9 K16 ["Foundation"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K15 ["Parent"]
       67 GETTABLEKS                       R10 R10 K17 ["Graphing"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETIMPORT                        R11 K1 [script]
       74 GETTABLEKS                       R11 R11 K18 ["GraphingCanvasBackground"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Components"]
       81 GETTABLEKS                       R12 R12 K19 ["GraphingCanvasBackgroundDragContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Components"]
       88 GETTABLEKS                       R13 R13 K20 ["GraphingCanvasBackgroundDragger"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETIMPORT                        R14 K1 [script]
       95 GETTABLEKS                       R14 R14 K21 ["GraphingCanvasContextMenuAnchor"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETIMPORT                        R15 K1 [script]
      102 GETTABLEKS                       R15 R15 K22 ["GraphingCanvasKeyboardInput"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETIMPORT                        R16 K1 [script]
      109 GETTABLEKS                       R16 R16 K23 ["GraphingCanvasScroller"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETTABLEKS                       R17 R0 K6 ["Components"]
      116 GETTABLEKS                       R17 R17 K24 ["InsertNodeContext"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R18 R0 K6 ["Components"]
      123 GETTABLEKS                       R18 R18 K25 ["ModifierKeysContext"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETIMPORT                        R19 K1 [script]
      130 GETTABLEKS                       R19 R19 K26 ["NodeRightClickMenuAnchor"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K5 [require]
      135 GETTABLEKS                       R20 R0 K6 ["Components"]
      137 GETTABLEKS                       R20 R20 K27 ["NodeSelectionBox"]
      139 CALL                             R19 1 1
      140 GETIMPORT                        R20 K5 [require]
      142 GETTABLEKS                       R21 R0 K6 ["Components"]
      144 GETTABLEKS                       R21 R21 K28 ["NodeSelectionBoxDragContext"]
      146 CALL                             R20 1 1
      147 GETIMPORT                        R21 K5 [require]
      149 GETTABLEKS                       R22 R0 K6 ["Components"]
      151 GETTABLEKS                       R22 R22 K29 ["ParameterContext"]
      153 CALL                             R21 1 1
      154 GETIMPORT                        R22 K5 [require]
      156 GETTABLEKS                       R23 R0 K6 ["Components"]
      158 GETTABLEKS                       R23 R23 K30 ["ParameterPane"]
      160 CALL                             R22 1 1
      161 GETIMPORT                        R23 K5 [require]
      163 GETTABLEKS                       R24 R0 K15 ["Parent"]
      165 GETTABLEKS                       R24 R24 K31 ["React"]
      167 CALL                             R23 1 1
      168 GETIMPORT                        R24 K5 [require]
      170 GETTABLEKS                       R25 R0 K15 ["Parent"]
      172 GETTABLEKS                       R25 R25 K32 ["ReactUtils"]
      174 CALL                             R24 1 1
      175 GETIMPORT                        R25 K5 [require]
      177 GETTABLEKS                       R26 R0 K15 ["Parent"]
      179 GETTABLEKS                       R26 R26 K33 ["Signals"]
      181 CALL                             R25 1 1
      182 GETIMPORT                        R26 K5 [require]
      184 GETTABLEKS                       R27 R0 K15 ["Parent"]
      186 GETTABLEKS                       R27 R27 K34 ["SignalsReact"]
      188 CALL                             R26 1 1
      189 GETIMPORT                        R27 K5 [require]
      191 GETTABLEKS                       R28 R0 K6 ["Components"]
      193 GETTABLEKS                       R28 R28 K35 ["ViewportRectContext"]
      195 CALL                             R27 1 1
      196 GETIMPORT                        R28 K5 [require]
      198 GETTABLEKS                       R29 R0 K36 ["Hooks"]
      200 GETTABLEKS                       R29 R29 K37 ["useAbsoluteSize"]
      202 CALL                             R28 1 1
      203 GETIMPORT                        R29 K5 [require]
      205 GETTABLEKS                       R30 R0 K11 ["Flags"]
      207 GETTABLEKS                       R30 R30 K38 ["getFFlagAnimGraphUISpotlightClipping"]
      209 CALL                             R29 1 1
      210 DUPCLOSURE                       R30 K39 [PROTO_6]
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R27
      213 CAPTURE                          VAL R5
      214 CAPTURE                          VAL R21
      215 CAPTURE                          VAL R28
      216 CAPTURE                          VAL R25
      217 CAPTURE                          VAL R7
      218 CAPTURE                          VAL R26
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R24
      221 CAPTURE                          VAL R10
      222 CAPTURE                          VAL R12
      223 CAPTURE                          VAL R19
      224 CAPTURE                          VAL R4
      225 CAPTURE                          VAL R13
      226 CAPTURE                          VAL R18
      227 CAPTURE                          VAL R14
      228 CAPTURE                          VAL R15
      229 CAPTURE                          VAL R6
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R29
      232 CAPTURE                          VAL R1
      233 CAPTURE                          VAL R17
      234 CAPTURE                          VAL R16
      235 CAPTURE                          VAL R9
      236 CAPTURE                          VAL R3
      237 CAPTURE                          VAL R20
      238 CAPTURE                          VAL R11
      239 CAPTURE                          VAL R22
      240 DUPCLOSURE                       R31 K40 [PROTO_7]
      241 CAPTURE                          VAL R23
      242 CAPTURE                          VAL R27
      243 CAPTURE                          VAL R30
      244 RETURN                           R31 1
