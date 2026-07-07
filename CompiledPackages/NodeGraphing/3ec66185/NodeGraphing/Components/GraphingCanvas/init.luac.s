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
       92 GETUPVAL                         R9 8
       93 GETTABLEKS                       R9 R9 K13 ["Hooks"]
       95 GETTABLEKS                       R9 R9 K14 ["useTokens"]
       97 CALL                             R9 0 1
       98 GETUPVAL                         R10 9
       99 GETTABLEKS                       R10 R10 K15 ["createNextOrder"]
      101 CALL                             R10 0 1
      102 DUPTABLE                         R11 K24 [{"GraphingCanvasBackground", "GraphingCanvasBackgroundDragger", "NodeSelectionBox", "CompositorNodes", "GraphingCanvasContextMenuAnchor", "GraphingCanvasKeyboardInput", "GraphingCanvasScroller", "CompositorConnectionInputDetector"}]
      103 GETUPVAL                         R12 0
      104 GETTABLEKS                       R12 R12 K25 ["createElement"]
      106 GETUPVAL                         R13 10
      107 DUPTABLE                         R14 K27 [{"ZIndex"}]
      108 MOVE                             R15 R10
      109 CALL                             R15 0 1
      110 SETTABLEKS                       R15 R14 K26 ["ZIndex"]
      112 CALL                             R12 2 1
      113 SETTABLEKS                       R12 R11 K16 ["GraphingCanvasBackground"]
      115 GETUPVAL                         R13 11
      116 CALL                             R13 0 1
      117 JUMPIFNOT                        R13 ; [+11]
      118 GETUPVAL                         R12 0
      119 GETTABLEKS                       R12 R12 K25 ["createElement"]
      121 GETUPVAL                         R13 12
      122 DUPTABLE                         R14 K27 [{"ZIndex"}]
      123 MOVE                             R15 R10
      124 CALL                             R15 0 1
      125 SETTABLEKS                       R15 R14 K26 ["ZIndex"]
      127 CALL                             R12 2 1
      128 JUMP                             ; [+1]
      129 LOADNIL                          R12
      130 SETTABLEKS                       R12 R11 K17 ["GraphingCanvasBackgroundDragger"]
      132 GETUPVAL                         R12 0
      133 GETTABLEKS                       R12 R12 K25 ["createElement"]
      135 GETUPVAL                         R13 13
      136 DUPTABLE                         R14 K27 [{"ZIndex"}]
      137 MOVE                             R15 R10
      138 CALL                             R15 0 1
      139 SETTABLEKS                       R15 R14 K26 ["ZIndex"]
      141 CALL                             R12 2 1
      142 SETTABLEKS                       R12 R11 K18 ["NodeSelectionBox"]
      144 GETUPVAL                         R12 0
      145 GETTABLEKS                       R12 R12 K25 ["createElement"]
      147 GETUPVAL                         R13 14
      148 DUPTABLE                         R14 K27 [{"ZIndex"}]
      149 MOVE                             R15 R10
      150 CALL                             R15 0 1
      151 SETTABLEKS                       R15 R14 K26 ["ZIndex"]
      153 CALL                             R12 2 1
      154 SETTABLEKS                       R12 R11 K19 ["CompositorNodes"]
      156 GETUPVAL                         R12 0
      157 GETTABLEKS                       R12 R12 K25 ["createElement"]
      159 GETUPVAL                         R13 15
      160 CALL                             R12 1 1
      161 SETTABLEKS                       R12 R11 K20 ["GraphingCanvasContextMenuAnchor"]
      163 GETUPVAL                         R12 0
      164 GETTABLEKS                       R12 R12 K25 ["createElement"]
      166 GETUPVAL                         R13 16
      167 DUPTABLE                         R14 K27 [{"ZIndex"}]
      168 MOVE                             R15 R10
      169 CALL                             R15 0 1
      170 SETTABLEKS                       R15 R14 K26 ["ZIndex"]
      172 CALL                             R12 2 1
      173 SETTABLEKS                       R12 R11 K21 ["GraphingCanvasKeyboardInput"]
      175 GETUPVAL                         R12 0
      176 GETTABLEKS                       R12 R12 K25 ["createElement"]
      178 GETUPVAL                         R13 17
      179 DUPTABLE                         R14 K27 [{"ZIndex"}]
      180 MOVE                             R15 R10
      181 CALL                             R15 0 1
      182 SETTABLEKS                       R15 R14 K26 ["ZIndex"]
      184 CALL                             R12 2 1
      185 SETTABLEKS                       R12 R11 K22 ["GraphingCanvasScroller"]
      187 GETUPVAL                         R12 18
      188 JUMPIFNOT                        R12 ; [+12]
      189 GETUPVAL                         R12 0
      190 GETTABLEKS                       R12 R12 K25 ["createElement"]
      192 GETUPVAL                         R13 19
      193 GETTABLEKS                       R13 R13 K28 ["InputDetector"]
      195 DUPTABLE                         R14 K27 [{"ZIndex"}]
      196 MOVE                             R15 R10
      197 CALL                             R15 0 1
      198 SETTABLEKS                       R15 R14 K26 ["ZIndex"]
      200 CALL                             R12 2 1
      201 SETTABLEKS                       R12 R11 K23 ["CompositorConnectionInputDetector"]
      203 GETUPVAL                         R12 0
      204 GETTABLEKS                       R12 R12 K25 ["createElement"]
      206 GETUPVAL                         R13 8
      207 GETTABLEKS                       R13 R13 K29 ["View"]
      209 DUPTABLE                         R14 K33 [{["tag"] = "size-full-full", ["ref"]}]
      210 SETTABLEKS                       R8 R14 K32 ["ref"]
      212 DUPTABLE                         R15 K35 [{"Contexts"}]
      213 GETUPVAL                         R16 0
      214 GETTABLEKS                       R16 R16 K25 ["createElement"]
      216 GETUPVAL                         R17 9
      217 GETTABLEKS                       R17 R17 K36 ["ContextStack"]
      219 DUPTABLE                         R18 K38 [{"providers"}]
      220 NEWTABLE                         R19 0 3
      222 GETUPVAL                         R20 0
      223 GETTABLEKS                       R20 R20 K25 ["createElement"]
      225 GETUPVAL                         R21 20
      226 GETTABLEKS                       R21 R21 K39 ["Provider"]
      228 CALL                             R20 1 1
      229 GETUPVAL                         R21 0
      230 GETTABLEKS                       R21 R21 K25 ["createElement"]
      232 GETUPVAL                         R22 21
      233 GETTABLEKS                       R22 R22 K39 ["Provider"]
      235 CALL                             R21 1 1
      236 GETUPVAL                         R23 18
      237 JUMPIFNOT                        R23 ; [+8]
      238 GETUPVAL                         R22 0
      239 GETTABLEKS                       R22 R22 K25 ["createElement"]
      241 GETUPVAL                         R23 0
      242 GETTABLEKS                       R23 R23 K40 ["Fragment"]
      244 CALL                             R22 1 1
      245 JUMP                             ; [+7]
      246 GETUPVAL                         R22 0
      247 GETTABLEKS                       R22 R22 K25 ["createElement"]
      249 GETUPVAL                         R23 19
      250 GETTABLEKS                       R23 R23 K39 ["Provider"]
      252 CALL                             R22 1 1
      253 SETLIST                          R19 R20 3 [1]
      255 SETTABLEKS                       R19 R18 K37 ["providers"]
      257 DUPTABLE                         R19 K44 [{"Canvas", "ParameterPane", "Children"}]
      258 GETUPVAL                         R20 0
      259 GETTABLEKS                       R20 R20 K25 ["createElement"]
      261 GETUPVAL                         R21 22
      262 GETTABLEKS                       R21 R21 K41 ["Canvas"]
      264 DUPTABLE                         R22 K57 [{"ref", "GraphRect", "ViewportRect", "Size", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundColor3", "CanvasBackgroundTransparency", "ViewportBackgroundColor3", "ViewportBackgroundTransparency", "childrenUnclipped"}]
      265 SETTABLEKS                       R3 R22 K32 ["ref"]
      267 GETUPVAL                         R24 6
      268 JUMPIFNOT                        R24 ; [+2]
      269 LOADNIL                          R23
      270 JUMP                             ; [+1]
      271 MOVE                             R23 R6
      272 SETTABLEKS                       R23 R22 K45 ["GraphRect"]
      274 GETUPVAL                         R24 6
      275 JUMPIFNOT                        R24 ; [+2]
      276 LOADNIL                          R23
      277 JUMP                             ; [+1]
      278 MOVE                             R23 R5
      279 SETTABLEKS                       R23 R22 K46 ["ViewportRect"]
      281 GETIMPORT                        R23 K60 [UDim2.fromScale]
      283 LOADN                            R24 1
      284 LOADN                            R25 1
      285 CALL                             R23 2 1
      286 SETTABLEKS                       R23 R22 K47 ["Size"]
      288 GETIMPORT                        R23 K63 [UDim.new]
      290 LOADN                            R24 0
      291 LOADN                            R25 0
      292 CALL                             R23 2 1
      293 SETTABLEKS                       R23 R22 K48 ["ViewportPaddingLeft"]
      295 GETIMPORT                        R23 K63 [UDim.new]
      297 LOADN                            R24 0
      298 LOADN                            R25 0
      299 CALL                             R23 2 1
      300 SETTABLEKS                       R23 R22 K49 ["ViewportPaddingRight"]
      302 GETIMPORT                        R23 K63 [UDim.new]
      304 LOADN                            R24 0
      305 LOADN                            R25 0
      306 CALL                             R23 2 1
      307 SETTABLEKS                       R23 R22 K50 ["ViewportPaddingBottom"]
      309 GETIMPORT                        R23 K63 [UDim.new]
      311 LOADN                            R24 0
      312 LOADN                            R25 0
      313 CALL                             R23 2 1
      314 SETTABLEKS                       R23 R22 K51 ["ViewportPaddingTop"]
      316 GETTABLEKS                       R23 R9 K64 ["Color"]
      318 GETTABLEKS                       R23 R23 K65 ["Surface"]
      320 GETTABLEKS                       R23 R23 K66 ["Surface_100"]
      322 GETTABLEKS                       R23 R23 K67 ["Color3"]
      324 SETTABLEKS                       R23 R22 K52 ["CanvasBackgroundColor3"]
      326 GETTABLEKS                       R23 R9 K64 ["Color"]
      328 GETTABLEKS                       R23 R23 K65 ["Surface"]
      330 GETTABLEKS                       R23 R23 K66 ["Surface_100"]
      332 GETTABLEKS                       R23 R23 K68 ["Transparency"]
      334 SETTABLEKS                       R23 R22 K53 ["CanvasBackgroundTransparency"]
      336 GETTABLEKS                       R23 R9 K64 ["Color"]
      338 GETTABLEKS                       R23 R23 K65 ["Surface"]
      340 GETTABLEKS                       R23 R23 K66 ["Surface_100"]
      342 GETTABLEKS                       R23 R23 K67 ["Color3"]
      344 SETTABLEKS                       R23 R22 K54 ["ViewportBackgroundColor3"]
      346 GETTABLEKS                       R23 R9 K64 ["Color"]
      348 GETTABLEKS                       R23 R23 K65 ["Surface"]
      350 GETTABLEKS                       R23 R23 K66 ["Surface_100"]
      352 GETTABLEKS                       R23 R23 K68 ["Transparency"]
      354 SETTABLEKS                       R23 R22 K55 ["ViewportBackgroundTransparency"]
      356 GETUPVAL                         R24 18
      357 JUMPIF                           R24 ; [+3]
      358 GETUPVAL                         R24 11
      359 CALL                             R24 0 1
      360 JUMPIFNOT                        R24 ; [+66]
      361 DUPTABLE                         R23 K71 [{"CompositorConnectionContext", "ConnectionContexts"}]
      362 GETUPVAL                         R25 11
      363 CALL                             R25 0 1
      364 NOT                              R24 R25
      365 JUMPIFNOT                        R24 ; [+10]
      366 GETUPVAL                         R24 0
      367 GETTABLEKS                       R24 R24 K25 ["createElement"]
      369 GETUPVAL                         R25 19
      370 GETTABLEKS                       R25 R25 K39 ["Provider"]
      372 NEWTABLE                         R26 0 0
      374 MOVE                             R27 R11
      375 CALL                             R24 3 1
      376 SETTABLEKS                       R24 R23 K69 ["CompositorConnectionContext"]
      378 GETUPVAL                         R24 11
      379 CALL                             R24 0 1
      380 JUMPIFNOT                        R24 ; [+43]
      381 GETUPVAL                         R24 0
      382 GETTABLEKS                       R24 R24 K25 ["createElement"]
      384 GETUPVAL                         R25 9
      385 GETTABLEKS                       R25 R25 K36 ["ContextStack"]
      387 DUPTABLE                         R26 K38 [{"providers"}]
      388 NEWTABLE                         R27 0 4
      390 GETUPVAL                         R28 0
      391 GETTABLEKS                       R28 R28 K25 ["createElement"]
      393 GETUPVAL                         R29 19
      394 GETTABLEKS                       R29 R29 K39 ["Provider"]
      396 CALL                             R28 1 1
      397 GETUPVAL                         R29 0
      398 GETTABLEKS                       R29 R29 K25 ["createElement"]
      400 GETUPVAL                         R30 23
      401 GETTABLEKS                       R30 R30 K39 ["Provider"]
      403 CALL                             R29 1 1
      404 GETUPVAL                         R30 0
      405 GETTABLEKS                       R30 R30 K25 ["createElement"]
      407 GETUPVAL                         R31 24
      408 GETTABLEKS                       R31 R31 K39 ["Provider"]
      410 CALL                             R30 1 1
      411 GETUPVAL                         R31 0
      412 GETTABLEKS                       R31 R31 K25 ["createElement"]
      414 GETUPVAL                         R32 25
      415 GETTABLEKS                       R32 R32 K39 ["Provider"]
      417 CALL                             R31 1 -1
      418 SETLIST                          R27 R28 -1 [1]
      420 SETTABLEKS                       R27 R26 K37 ["providers"]
      422 MOVE                             R27 R11
      423 CALL                             R24 3 1
      424 SETTABLEKS                       R24 R23 K70 ["ConnectionContexts"]
      426 JUMP                             ; [+1]
      427 MOVE                             R23 R11
      428 SETTABLEKS                       R23 R22 K56 ["childrenUnclipped"]
      430 CALL                             R20 2 1
      431 SETTABLEKS                       R20 R19 K41 ["Canvas"]
      433 GETUPVAL                         R21 2
      434 JUMPIFNOT                        R21 ; [+2]
      435 MOVE                             R20 R2
      436 JUMPIFNOT                        R20 ; [+8]
      437 GETUPVAL                         R20 0
      438 GETTABLEKS                       R20 R20 K25 ["createElement"]
      440 GETUPVAL                         R21 26
      441 DUPTABLE                         R22 K73 [{"canvasFrameRef"}]
      442 SETTABLEKS                       R7 R22 K72 ["canvasFrameRef"]
      444 CALL                             R20 2 1
      445 SETTABLEKS                       R20 R19 K42 ["ParameterPane"]
      447 GETUPVAL                         R20 0
      448 GETTABLEKS                       R20 R20 K25 ["createElement"]
      450 GETUPVAL                         R21 0
      451 GETTABLEKS                       R21 R21 K40 ["Fragment"]
      453 NEWTABLE                         R22 0 0
      455 GETTABLEKS                       R23 R0 K74 ["children"]
      457 CALL                             R20 3 1
      458 SETTABLEKS                       R20 R19 K43 ["Children"]
      460 CALL                             R16 3 1
      461 SETTABLEKS                       R16 R15 K34 ["Contexts"]
      463 CALL                             R12 3 -1
      464 RETURN                           R12 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"initialGraphRect"}]
        7 GETTABLEKS                       R4 R0 K2 ["initialGraphRect"]
        9 SETTABLEKS                       R4 R3 K2 ["initialGraphRect"]
       11 DUPTABLE                         R4 K5 [{"Inner"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 2
       16 NEWTABLE                         R7 0 0
       18 GETTABLEKS                       R8 R0 K6 ["children"]
       20 CALL                             R5 3 1
       21 SETTABLEKS                       R5 R4 K4 ["Inner"]
       23 CALL                             R1 3 -1
       24 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CompositorConnectionContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["CompositorCurveDragContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K9 ["CompositorNodes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Flags"]
       32 GETTABLEKS                       R5 R5 K11 ["FFlagAnimGraphUI_AllowNoParameters"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Flags"]
       39 GETTABLEKS                       R6 R6 K12 ["FFlagAnimGraphUI_ClickTogglePins"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K10 ["Flags"]
       46 GETTABLEKS                       R7 R7 K13 ["FFlagAnimGraphUI_PerfFixes_7123"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Parent"]
       53 GETTABLEKS                       R8 R8 K15 ["Foundation"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K14 ["Parent"]
       60 GETTABLEKS                       R9 R9 K16 ["Graphing"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETIMPORT                        R10 K1 [script]
       67 GETTABLEKS                       R10 R10 K17 ["GraphingCanvasBackground"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["Components"]
       74 GETTABLEKS                       R11 R11 K18 ["GraphingCanvasBackgroundDragContext"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Components"]
       81 GETTABLEKS                       R12 R12 K19 ["GraphingCanvasBackgroundDragger"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETIMPORT                        R13 K1 [script]
       88 GETTABLEKS                       R13 R13 K20 ["GraphingCanvasContextMenuAnchor"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETIMPORT                        R14 K1 [script]
       95 GETTABLEKS                       R14 R14 K21 ["GraphingCanvasKeyboardInput"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETIMPORT                        R15 K1 [script]
      102 GETTABLEKS                       R15 R15 K22 ["GraphingCanvasScroller"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K6 ["Components"]
      109 GETTABLEKS                       R16 R16 K23 ["InsertNodeContext"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETTABLEKS                       R17 R0 K6 ["Components"]
      116 GETTABLEKS                       R17 R17 K24 ["ModifierKeysContext"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R18 R0 K6 ["Components"]
      123 GETTABLEKS                       R18 R18 K25 ["NodeSelectionBox"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETTABLEKS                       R19 R0 K6 ["Components"]
      130 GETTABLEKS                       R19 R19 K26 ["NodeSelectionBoxDragContext"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K5 [require]
      135 GETTABLEKS                       R20 R0 K6 ["Components"]
      137 GETTABLEKS                       R20 R20 K27 ["ParameterContext"]
      139 CALL                             R19 1 1
      140 GETIMPORT                        R20 K5 [require]
      142 GETTABLEKS                       R21 R0 K6 ["Components"]
      144 GETTABLEKS                       R21 R21 K28 ["ParameterPane"]
      146 CALL                             R20 1 1
      147 GETIMPORT                        R21 K5 [require]
      149 GETTABLEKS                       R22 R0 K14 ["Parent"]
      151 GETTABLEKS                       R22 R22 K29 ["React"]
      153 CALL                             R21 1 1
      154 GETIMPORT                        R22 K5 [require]
      156 GETTABLEKS                       R23 R0 K14 ["Parent"]
      158 GETTABLEKS                       R23 R23 K30 ["ReactUtils"]
      160 CALL                             R22 1 1
      161 GETIMPORT                        R23 K5 [require]
      163 GETTABLEKS                       R24 R0 K14 ["Parent"]
      165 GETTABLEKS                       R24 R24 K31 ["Signals"]
      167 CALL                             R23 1 1
      168 GETIMPORT                        R24 K5 [require]
      170 GETTABLEKS                       R25 R0 K14 ["Parent"]
      172 GETTABLEKS                       R25 R25 K32 ["SignalsReact"]
      174 CALL                             R24 1 1
      175 GETIMPORT                        R25 K5 [require]
      177 GETTABLEKS                       R26 R0 K6 ["Components"]
      179 GETTABLEKS                       R26 R26 K33 ["ViewportRectContext"]
      181 CALL                             R25 1 1
      182 GETIMPORT                        R26 K5 [require]
      184 GETTABLEKS                       R27 R0 K34 ["Hooks"]
      186 GETTABLEKS                       R27 R27 K35 ["useAbsoluteSize"]
      188 CALL                             R26 1 1
      189 GETIMPORT                        R27 K5 [require]
      191 GETTABLEKS                       R28 R0 K10 ["Flags"]
      193 GETTABLEKS                       R28 R28 K36 ["getFFlagAnimGraphUIImplementNoodleDragging"]
      195 CALL                             R27 1 1
      196 DUPCLOSURE                       R28 K37 [PROTO_5]
      197 CAPTURE                          VAL R21
      198 CAPTURE                          VAL R25
      199 CAPTURE                          VAL R4
      200 CAPTURE                          VAL R19
      201 CAPTURE                          VAL R26
      202 CAPTURE                          VAL R23
      203 CAPTURE                          VAL R6
      204 CAPTURE                          VAL R24
      205 CAPTURE                          VAL R7
      206 CAPTURE                          VAL R22
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R27
      209 CAPTURE                          VAL R11
      210 CAPTURE                          VAL R17
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R13
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R5
      216 CAPTURE                          VAL R1
      217 CAPTURE                          VAL R16
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R2
      221 CAPTURE                          VAL R18
      222 CAPTURE                          VAL R10
      223 CAPTURE                          VAL R20
      224 DUPCLOSURE                       R29 K38 [PROTO_6]
      225 CAPTURE                          VAL R21
      226 CAPTURE                          VAL R25
      227 CAPTURE                          VAL R28
      228 RETURN                           R29 1
