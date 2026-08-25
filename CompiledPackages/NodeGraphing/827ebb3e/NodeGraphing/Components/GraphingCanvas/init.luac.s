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
      118 NEWTABLE                         R14 16 0
      120 GETUPVAL                         R15 0
      121 GETTABLEKS                       R15 R15 K18 ["createElement"]
      123 GETUPVAL                         R16 10
      124 DUPTABLE                         R17 K20 [{"ZIndex"}]
      125 MOVE                             R18 R13
      126 CALL                             R18 0 1
      127 SETTABLEKS                       R18 R17 K19 ["ZIndex"]
      129 CALL                             R15 2 1
      130 SETTABLEKS                       R15 R14 K21 ["GraphingCanvasBackground"]
      132 GETUPVAL                         R15 0
      133 GETTABLEKS                       R15 R15 K18 ["createElement"]
      135 GETUPVAL                         R16 11
      136 DUPTABLE                         R17 K20 [{"ZIndex"}]
      137 MOVE                             R18 R13
      138 CALL                             R18 0 1
      139 SETTABLEKS                       R18 R17 K19 ["ZIndex"]
      141 CALL                             R15 2 1
      142 SETTABLEKS                       R15 R14 K22 ["GraphingCanvasBackgroundDragger"]
      144 GETUPVAL                         R15 0
      145 GETTABLEKS                       R15 R15 K18 ["createElement"]
      147 GETUPVAL                         R16 12
      148 DUPTABLE                         R17 K20 [{"ZIndex"}]
      149 MOVE                             R18 R13
      150 CALL                             R18 0 1
      151 SETTABLEKS                       R18 R17 K19 ["ZIndex"]
      153 CALL                             R15 2 1
      154 SETTABLEKS                       R15 R14 K23 ["NodeSelectionBox"]
      156 GETTABLEKS                       R15 R0 K24 ["childrenBehindNodes"]
      158 JUMPIFNOT                        R15 ; [+21]
      159 GETUPVAL                         R15 0
      160 GETTABLEKS                       R15 R15 K18 ["createElement"]
      162 LOADK                            R16 K25 ["Frame"]
      163 DUPTABLE                         R17 K29 [{["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"]}]
      164 GETIMPORT                        R18 K32 [UDim2.fromScale]
      166 LOADN                            R19 1
      167 LOADN                            R20 1
      168 CALL                             R18 2 1
      169 SETTABLEKS                       R18 R17 K26 ["Size"]
      171 MOVE                             R18 R13
      172 CALL                             R18 0 1
      173 SETTABLEKS                       R18 R17 K19 ["ZIndex"]
      175 GETTABLEKS                       R18 R0 K24 ["childrenBehindNodes"]
      177 CALL                             R15 3 1
      178 SETTABLEKS                       R15 R14 K33 ["ChildrenBehindNodes"]
      180 GETUPVAL                         R15 0
      181 GETTABLEKS                       R15 R15 K18 ["createElement"]
      183 GETUPVAL                         R16 13
      184 DUPTABLE                         R17 K20 [{"ZIndex"}]
      185 MOVE                             R18 R13
      186 CALL                             R18 0 1
      187 SETTABLEKS                       R18 R17 K19 ["ZIndex"]
      189 CALL                             R15 2 1
      190 SETTABLEKS                       R15 R14 K34 ["CompositorNodes"]
      192 GETUPVAL                         R15 0
      193 GETTABLEKS                       R15 R15 K18 ["createElement"]
      195 GETUPVAL                         R16 14
      196 CALL                             R15 1 1
      197 SETTABLEKS                       R15 R14 K35 ["GraphingCanvasContextMenuAnchor"]
      199 GETUPVAL                         R15 0
      200 GETTABLEKS                       R15 R15 K18 ["createElement"]
      202 GETUPVAL                         R16 15
      203 CALL                             R15 1 1
      204 SETTABLEKS                       R15 R14 K36 ["NodeRightClickMenuAnchor"]
      206 GETUPVAL                         R15 0
      207 GETTABLEKS                       R15 R15 K18 ["createElement"]
      209 GETUPVAL                         R16 16
      210 DUPTABLE                         R17 K20 [{"ZIndex"}]
      211 MOVE                             R18 R13
      212 CALL                             R18 0 1
      213 SETTABLEKS                       R18 R17 K19 ["ZIndex"]
      215 CALL                             R15 2 1
      216 SETTABLEKS                       R15 R14 K37 ["GraphingCanvasKeyboardInput"]
      218 GETUPVAL                         R15 0
      219 GETTABLEKS                       R15 R15 K18 ["createElement"]
      221 GETUPVAL                         R16 17
      222 DUPTABLE                         R17 K20 [{"ZIndex"}]
      223 MOVE                             R18 R13
      224 CALL                             R18 0 1
      225 SETTABLEKS                       R18 R17 K19 ["ZIndex"]
      227 CALL                             R15 2 1
      228 SETTABLEKS                       R15 R14 K38 ["GraphingCanvasScroller"]
      230 GETUPVAL                         R15 18
      231 JUMPIFNOT                        R15 ; [+14]
      232 GETUPVAL                         R15 0
      233 GETTABLEKS                       R15 R15 K18 ["createElement"]
      235 GETUPVAL                         R16 19
      236 GETTABLEKS                       R16 R16 K39 ["InputDetector"]
      238 DUPTABLE                         R17 K20 [{"ZIndex"}]
      239 MOVE                             R18 R13
      240 CALL                             R18 0 1
      241 SETTABLEKS                       R18 R17 K19 ["ZIndex"]
      243 CALL                             R15 2 1
      244 SETTABLEKS                       R15 R14 K40 ["CompositorConnectionInputDetector"]
      246 GETUPVAL                         R15 20
      247 CALL                             R15 0 1
      248 JUMPIFNOT                        R15 ; [+16]
      249 GETUPVAL                         R15 0
      250 GETTABLEKS                       R15 R15 K18 ["createElement"]
      252 GETUPVAL                         R16 8
      253 GETTABLEKS                       R16 R16 K41 ["View"]
      255 DUPTABLE                         R17 K45 [{["tag"] = "size-full-full", ["ZIndex"], ["ref"]}]
      256 MOVE                             R18 R13
      257 CALL                             R18 0 1
      258 SETTABLEKS                       R18 R17 K19 ["ZIndex"]
      260 SETTABLEKS                       R10 R17 K44 ["ref"]
      262 CALL                             R15 2 1
      263 SETTABLEKS                       R15 R14 K46 ["CanvasOverlayLayer"]
      265 GETUPVAL                         R15 0
      266 GETTABLEKS                       R15 R15 K18 ["createElement"]
      268 GETUPVAL                         R16 8
      269 GETTABLEKS                       R16 R16 K41 ["View"]
      271 DUPTABLE                         R17 K47 [{["tag"] = "size-full-full", ["ref"]}]
      272 SETTABLEKS                       R8 R17 K44 ["ref"]
      274 DUPTABLE                         R18 K49 [{"Contexts"}]
      275 GETUPVAL                         R19 0
      276 GETTABLEKS                       R19 R19 K18 ["createElement"]
      278 GETUPVAL                         R20 9
      279 GETTABLEKS                       R20 R20 K50 ["ContextStack"]
      281 DUPTABLE                         R21 K52 [{"providers"}]
      282 NEWTABLE                         R22 0 4
      284 GETUPVAL                         R23 0
      285 GETTABLEKS                       R23 R23 K18 ["createElement"]
      287 GETUPVAL                         R24 21
      288 GETTABLEKS                       R24 R24 K1 ["Context"]
      290 GETTABLEKS                       R24 R24 K53 ["Provider"]
      292 DUPTABLE                         R25 K55 [{"value"}]
      293 SETTABLEKS                       R11 R25 K54 ["value"]
      295 CALL                             R23 2 1
      296 GETUPVAL                         R24 0
      297 GETTABLEKS                       R24 R24 K18 ["createElement"]
      299 GETUPVAL                         R25 22
      300 GETTABLEKS                       R25 R25 K53 ["Provider"]
      302 CALL                             R24 1 1
      303 GETUPVAL                         R25 0
      304 GETTABLEKS                       R25 R25 K18 ["createElement"]
      306 GETUPVAL                         R26 23
      307 GETTABLEKS                       R26 R26 K53 ["Provider"]
      309 CALL                             R25 1 1
      310 GETUPVAL                         R27 18
      311 JUMPIFNOT                        R27 ; [+8]
      312 GETUPVAL                         R26 0
      313 GETTABLEKS                       R26 R26 K18 ["createElement"]
      315 GETUPVAL                         R27 0
      316 GETTABLEKS                       R27 R27 K56 ["Fragment"]
      318 CALL                             R26 1 1
      319 JUMP                             ; [+7]
      320 GETUPVAL                         R26 0
      321 GETTABLEKS                       R26 R26 K18 ["createElement"]
      323 GETUPVAL                         R27 19
      324 GETTABLEKS                       R27 R27 K53 ["Provider"]
      326 CALL                             R26 1 1
      327 SETLIST                          R22 R23 4 [1]
      329 SETTABLEKS                       R22 R21 K51 ["providers"]
      331 DUPTABLE                         R22 K60 [{"Canvas", "ParameterPane", "Children"}]
      332 GETUPVAL                         R23 0
      333 GETTABLEKS                       R23 R23 K18 ["createElement"]
      335 GETUPVAL                         R24 24
      336 GETTABLEKS                       R24 R24 K57 ["Canvas"]
      338 DUPTABLE                         R25 K72 [{"ref", "GraphRect", "ViewportRect", "Size", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundColor3", "CanvasBackgroundTransparency", "ViewportBackgroundColor3", "ViewportBackgroundTransparency", "childrenUnclipped"}]
      339 SETTABLEKS                       R3 R25 K44 ["ref"]
      341 GETUPVAL                         R27 6
      342 JUMPIFNOT                        R27 ; [+2]
      343 LOADNIL                          R26
      344 JUMP                             ; [+1]
      345 MOVE                             R26 R6
      346 SETTABLEKS                       R26 R25 K61 ["GraphRect"]
      348 GETUPVAL                         R27 6
      349 JUMPIFNOT                        R27 ; [+2]
      350 LOADNIL                          R26
      351 JUMP                             ; [+1]
      352 MOVE                             R26 R5
      353 SETTABLEKS                       R26 R25 K62 ["ViewportRect"]
      355 GETIMPORT                        R26 K32 [UDim2.fromScale]
      357 LOADN                            R27 1
      358 LOADN                            R28 1
      359 CALL                             R26 2 1
      360 SETTABLEKS                       R26 R25 K26 ["Size"]
      362 GETIMPORT                        R26 K75 [UDim.new]
      364 LOADN                            R27 0
      365 LOADN                            R28 0
      366 CALL                             R26 2 1
      367 SETTABLEKS                       R26 R25 K63 ["ViewportPaddingLeft"]
      369 GETIMPORT                        R26 K75 [UDim.new]
      371 LOADN                            R27 0
      372 LOADN                            R28 0
      373 CALL                             R26 2 1
      374 SETTABLEKS                       R26 R25 K64 ["ViewportPaddingRight"]
      376 GETIMPORT                        R26 K75 [UDim.new]
      378 LOADN                            R27 0
      379 LOADN                            R28 0
      380 CALL                             R26 2 1
      381 SETTABLEKS                       R26 R25 K65 ["ViewportPaddingBottom"]
      383 GETIMPORT                        R26 K75 [UDim.new]
      385 LOADN                            R27 0
      386 LOADN                            R28 0
      387 CALL                             R26 2 1
      388 SETTABLEKS                       R26 R25 K66 ["ViewportPaddingTop"]
      390 GETTABLEKS                       R26 R12 K76 ["Color"]
      392 GETTABLEKS                       R26 R26 K77 ["Surface"]
      394 GETTABLEKS                       R26 R26 K78 ["Surface_100"]
      396 GETTABLEKS                       R26 R26 K79 ["Color3"]
      398 SETTABLEKS                       R26 R25 K67 ["CanvasBackgroundColor3"]
      400 GETTABLEKS                       R26 R12 K76 ["Color"]
      402 GETTABLEKS                       R26 R26 K77 ["Surface"]
      404 GETTABLEKS                       R26 R26 K78 ["Surface_100"]
      406 GETTABLEKS                       R26 R26 K80 ["Transparency"]
      408 SETTABLEKS                       R26 R25 K68 ["CanvasBackgroundTransparency"]
      410 GETTABLEKS                       R26 R12 K76 ["Color"]
      412 GETTABLEKS                       R26 R26 K77 ["Surface"]
      414 GETTABLEKS                       R26 R26 K78 ["Surface_100"]
      416 GETTABLEKS                       R26 R26 K79 ["Color3"]
      418 SETTABLEKS                       R26 R25 K69 ["ViewportBackgroundColor3"]
      420 GETTABLEKS                       R26 R12 K76 ["Color"]
      422 GETTABLEKS                       R26 R26 K77 ["Surface"]
      424 GETTABLEKS                       R26 R26 K78 ["Surface_100"]
      426 GETTABLEKS                       R26 R26 K80 ["Transparency"]
      428 SETTABLEKS                       R26 R25 K70 ["ViewportBackgroundTransparency"]
      430 DUPTABLE                         R26 K82 [{"ConnectionContexts"}]
      431 GETUPVAL                         R27 0
      432 GETTABLEKS                       R27 R27 K18 ["createElement"]
      434 GETUPVAL                         R28 9
      435 GETTABLEKS                       R28 R28 K50 ["ContextStack"]
      437 DUPTABLE                         R29 K52 [{"providers"}]
      438 NEWTABLE                         R30 0 4
      440 GETUPVAL                         R31 0
      441 GETTABLEKS                       R31 R31 K18 ["createElement"]
      443 GETUPVAL                         R32 19
      444 GETTABLEKS                       R32 R32 K53 ["Provider"]
      446 CALL                             R31 1 1
      447 GETUPVAL                         R32 0
      448 GETTABLEKS                       R32 R32 K18 ["createElement"]
      450 GETUPVAL                         R33 25
      451 GETTABLEKS                       R33 R33 K53 ["Provider"]
      453 CALL                             R32 1 1
      454 GETUPVAL                         R33 0
      455 GETTABLEKS                       R33 R33 K18 ["createElement"]
      457 GETUPVAL                         R34 26
      458 GETTABLEKS                       R34 R34 K53 ["Provider"]
      460 CALL                             R33 1 1
      461 GETUPVAL                         R34 0
      462 GETTABLEKS                       R34 R34 K18 ["createElement"]
      464 GETUPVAL                         R35 27
      465 GETTABLEKS                       R35 R35 K53 ["Provider"]
      467 CALL                             R34 1 -1
      468 SETLIST                          R30 R31 -1 [1]
      470 SETTABLEKS                       R30 R29 K51 ["providers"]
      472 MOVE                             R30 R14
      473 CALL                             R27 3 1
      474 SETTABLEKS                       R27 R26 K81 ["ConnectionContexts"]
      476 SETTABLEKS                       R26 R25 K71 ["childrenUnclipped"]
      478 CALL                             R23 2 1
      479 SETTABLEKS                       R23 R22 K57 ["Canvas"]
      481 GETUPVAL                         R24 2
      482 JUMPIFNOT                        R24 ; [+2]
      483 MOVE                             R23 R2
      484 JUMPIFNOT                        R23 ; [+12]
      485 GETUPVAL                         R23 0
      486 GETTABLEKS                       R23 R23 K18 ["createElement"]
      488 GETUPVAL                         R24 28
      489 DUPTABLE                         R25 K84 [{"canvasFrameRef", "ZIndex"}]
      490 SETTABLEKS                       R7 R25 K83 ["canvasFrameRef"]
      492 MOVE                             R26 R13
      493 CALL                             R26 0 1
      494 SETTABLEKS                       R26 R25 K19 ["ZIndex"]
      496 CALL                             R23 2 1
      497 SETTABLEKS                       R23 R22 K58 ["ParameterPane"]
      499 GETUPVAL                         R23 0
      500 GETTABLEKS                       R23 R23 K18 ["createElement"]
      502 GETUPVAL                         R24 0
      503 GETTABLEKS                       R24 R24 K56 ["Fragment"]
      505 NEWTABLE                         R25 0 0
      507 GETTABLEKS                       R26 R0 K85 ["children"]
      509 CALL                             R23 3 1
      510 SETTABLEKS                       R23 R22 K59 ["Children"]
      512 CALL                             R19 3 1
      513 SETTABLEKS                       R19 R18 K48 ["Contexts"]
      515 CALL                             R15 3 -1
      516 RETURN                           R15 -1

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
       20 DUPTABLE                         R7 K8 [{"childrenBehindNodes"}]
       21 GETTABLEKS                       R8 R0 K7 ["childrenBehindNodes"]
       23 SETTABLEKS                       R8 R7 K7 ["childrenBehindNodes"]
       25 GETTABLEKS                       R8 R0 K9 ["children"]
       27 CALL                             R5 3 1
       28 SETTABLEKS                       R5 R4 K5 ["Inner"]
       30 CALL                             R1 3 -1
       31 RETURN                           R1 -1

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
