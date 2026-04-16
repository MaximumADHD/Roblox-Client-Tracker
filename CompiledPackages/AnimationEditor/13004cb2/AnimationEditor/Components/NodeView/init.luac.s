PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createNewGraphAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useCallback"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R4 0 1
       14 GETTABLEKS                       R5 R1 K3 ["createNewGraphAsync"]
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K4 ["createElement"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R4 R5 K5 ["View"]
       25 DUPTABLE                         R5 K7 [{"tag"}]
       26 LOADK                            R6 K8 ["size-full-full"]
       27 SETTABLEKS                       R6 R5 K6 ["tag"]
       29 DUPTABLE                         R6 K11 [{"NodeViewBackground", "CenterBox"}]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K4 ["createElement"]
       33 GETUPVAL                         R8 3
       34 DUPTABLE                         R9 K13 [{"ZIndex"}]
       35 GETTABLEKS                       R10 R0 K14 ["nextZIndex"]
       37 CALL                             R10 0 1
       38 SETTABLEKS                       R10 R9 K12 ["ZIndex"]
       40 CALL                             R7 2 1
       41 SETTABLEKS                       R7 R6 K9 ["NodeViewBackground"]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R7 R8 K4 ["createElement"]
       46 GETUPVAL                         R9 2
       47 GETTABLEKS                       R8 R9 K5 ["View"]
       49 DUPTABLE                         R9 K15 [{"tag", "ZIndex"}]
       50 LOADK                            R10 K16 ["col gap-xlarge auto-xy position-center-center anchor-center-center align-x-center"]
       51 SETTABLEKS                       R10 R9 K6 ["tag"]
       53 GETTABLEKS                       R10 R0 K14 ["nextZIndex"]
       55 CALL                             R10 0 1
       56 SETTABLEKS                       R10 R9 K12 ["ZIndex"]
       58 DUPTABLE                         R10 K19 [{"Text", "CreateGraph"}]
       59 GETUPVAL                         R12 0
       60 GETTABLEKS                       R11 R12 K4 ["createElement"]
       62 GETUPVAL                         R13 2
       63 GETTABLEKS                       R12 R13 K17 ["Text"]
       65 DUPTABLE                         R13 K21 [{"tag", "Text", "LayoutOrder"}]
       66 LOADK                            R14 K22 ["h2 auto-x anchor-center-center"]
       67 SETTABLEKS                       R14 R13 K6 ["tag"]
       69 GETTABLEKS                       R15 R1 K23 ["canCreateGraph"]
       71 JUMPIFNOT                        R15 ; [+10]
       72 GETTABLEKS                       R15 R1 K24 ["selectedTargetName"]
       74 JUMPIFNOT                        R15 ; [+7]
       75 GETIMPORT                        R14 K27 [string.format]
       77 LOADK                            R15 K28 ["\"%s\" selected."]
       78 GETTABLEKS                       R16 R1 K24 ["selectedTargetName"]
       80 CALL                             R14 2 1
       81 JUMP                             ; [+1]
       82 LOADK                            R14 K29 ["Select an object to animate."]
       83 SETTABLEKS                       R14 R13 K17 ["Text"]
       85 LOADN                            R14 1
       86 SETTABLEKS                       R14 R13 K20 ["LayoutOrder"]
       88 CALL                             R11 2 1
       89 SETTABLEKS                       R11 R10 K17 ["Text"]
       91 GETUPVAL                         R12 0
       92 GETTABLEKS                       R11 R12 K4 ["createElement"]
       94 GETUPVAL                         R13 2
       95 GETTABLEKS                       R12 R13 K30 ["Button"]
       97 DUPTABLE                         R13 K34 [{"tag", "text", "isDisabled", "LayoutOrder", "onActivated"}]
       98 LOADK                            R14 K35 ["size-medium auto-x anchor-center-center"]
       99 SETTABLEKS                       R14 R13 K6 ["tag"]
      101 LOADK                            R14 K36 ["Create Graph"]
      102 SETTABLEKS                       R14 R13 K31 ["text"]
      104 GETTABLEKS                       R15 R1 K23 ["canCreateGraph"]
      106 NOT                              R14 R15
      107 SETTABLEKS                       R14 R13 K32 ["isDisabled"]
      109 LOADN                            R14 2
      110 SETTABLEKS                       R14 R13 K20 ["LayoutOrder"]
      112 SETTABLEKS                       R2 R13 K33 ["onActivated"]
      114 CALL                             R11 2 1
      115 SETTABLEKS                       R11 R10 K18 ["CreateGraph"]
      117 CALL                             R7 3 1
      118 SETTABLEKS                       R7 R6 K10 ["CenterBox"]
      120 CALL                             R3 3 -1
      121 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeAbsoluteSize"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K1 ["setAbsoluteSize"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["showMenu"]
        3 MOVE                             R2 R0
        4 LOADNIL                          R3
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["setFrame"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["useContext"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R4 R5 K2 ["createNextOrder"]
       24 CALL                             R4 0 1
       25 GETUPVAL                         R7 5
       26 GETTABLEKS                       R6 R7 K3 ["Hooks"]
       28 GETTABLEKS                       R5 R6 K4 ["useTokens"]
       30 CALL                             R5 0 1
       31 GETUPVAL                         R6 6
       32 CALL                             R6 0 1
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R7 R8 K5 ["useState"]
       36 LOADK                            R8 K6 [""]
       37 CALL                             R7 1 2
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R9 R10 K5 ["useState"]
       41 LOADB                            R10 0
       42 CALL                             R9 1 2
       43 GETUPVAL                         R12 0
       44 GETTABLEKS                       R11 R12 K7 ["useRef"]
       46 LOADNIL                          R12
       47 CALL                             R11 1 1
       48 GETUPVAL                         R13 0
       49 GETTABLEKS                       R12 R13 K8 ["useEffect"]
       51 NEWCLOSURE                       R13 P0
       52 CAPTURE                          UPVAL U7
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R3
       55 NEWTABLE                         R14 0 2
       57 GETTABLEKS                       R15 R3 K9 ["setAbsoluteSize"]
       59 GETTABLEKS                       R16 R6 K10 ["observeAbsoluteSize"]
       61 SETLIST                          R14 R15 2 [1]
       63 CALL                             R12 2 0
       64 GETUPVAL                         R13 0
       65 GETTABLEKS                       R12 R13 K11 ["useCallback"]
       67 NEWCLOSURE                       R13 P1
       68 CAPTURE                          VAL R1
       69 NEWTABLE                         R14 0 1
       71 GETTABLEKS                       R15 R1 K12 ["showMenu"]
       73 SETLIST                          R14 R15 1 [1]
       75 CALL                             R12 2 1
       76 NEWTABLE                         R13 0 0
       78 GETTABLEKS                       R14 R2 K13 ["selectedGraphInstanceId"]
       80 JUMPIFNOT                        R14 ; [+56]
       81 DUPTABLE                         R14 K19 [{"NodeViewScroller", "NodeViewBackground", "NodeSelectionBox", "CompositorNodes", "ContextMenuAnchor"}]
       82 GETUPVAL                         R16 0
       83 GETTABLEKS                       R15 R16 K20 ["createElement"]
       85 GETUPVAL                         R16 8
       86 DUPTABLE                         R17 K23 [{"onRightClick", "ZIndex"}]
       87 SETTABLEKS                       R12 R17 K21 ["onRightClick"]
       89 LOADN                            R18 2
       90 SETTABLEKS                       R18 R17 K22 ["ZIndex"]
       92 CALL                             R15 2 1
       93 SETTABLEKS                       R15 R14 K14 ["NodeViewScroller"]
       95 GETUPVAL                         R16 0
       96 GETTABLEKS                       R15 R16 K20 ["createElement"]
       98 GETUPVAL                         R16 9
       99 DUPTABLE                         R17 K24 [{"ZIndex"}]
      100 LOADN                            R18 0
      101 SETTABLEKS                       R18 R17 K22 ["ZIndex"]
      103 CALL                             R15 2 1
      104 SETTABLEKS                       R15 R14 K15 ["NodeViewBackground"]
      106 GETUPVAL                         R16 0
      107 GETTABLEKS                       R15 R16 K20 ["createElement"]
      109 GETUPVAL                         R16 10
      110 DUPTABLE                         R17 K24 [{"ZIndex"}]
      111 LOADN                            R18 3
      112 SETTABLEKS                       R18 R17 K22 ["ZIndex"]
      114 CALL                             R15 2 1
      115 SETTABLEKS                       R15 R14 K16 ["NodeSelectionBox"]
      117 GETUPVAL                         R16 0
      118 GETTABLEKS                       R15 R16 K20 ["createElement"]
      120 GETUPVAL                         R16 11
      121 DUPTABLE                         R17 K24 [{"ZIndex"}]
      122 LOADN                            R18 3
      123 SETTABLEKS                       R18 R17 K22 ["ZIndex"]
      125 CALL                             R15 2 1
      126 SETTABLEKS                       R15 R14 K17 ["CompositorNodes"]
      128 GETUPVAL                         R16 0
      129 GETTABLEKS                       R15 R16 K20 ["createElement"]
      131 GETUPVAL                         R16 12
      132 CALL                             R15 1 1
      133 SETTABLEKS                       R15 R14 K18 ["ContextMenuAnchor"]
      135 MOVE                             R13 R14
      136 JUMP                             ; [+12]
      137 DUPTABLE                         R14 K26 [{"Empty"}]
      138 GETUPVAL                         R16 0
      139 GETTABLEKS                       R15 R16 K20 ["createElement"]
      141 GETUPVAL                         R16 13
      142 DUPTABLE                         R17 K28 [{"nextZIndex"}]
      143 SETTABLEKS                       R4 R17 K27 ["nextZIndex"]
      145 CALL                             R15 2 1
      146 SETTABLEKS                       R15 R14 K25 ["Empty"]
      148 MOVE                             R13 R14
      149 GETUPVAL                         R15 14
      150 GETTABLEKS                       R14 R15 K29 ["useSignalState"]
      152 GETTABLEKS                       R15 R3 K30 ["observeViewportRect"]
      154 CALL                             R14 1 1
      155 GETUPVAL                         R16 14
      156 GETTABLEKS                       R15 R16 K29 ["useSignalState"]
      158 GETTABLEKS                       R16 R3 K31 ["observeRenderedGraphRect"]
      160 CALL                             R15 1 1
      161 GETUPVAL                         R17 0
      162 GETTABLEKS                       R16 R17 K11 ["useCallback"]
      164 NEWCLOSURE                       R17 P2
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R6
      167 NEWTABLE                         R18 0 1
      169 GETTABLEKS                       R19 R6 K32 ["setFrame"]
      171 SETLIST                          R18 R19 1 [1]
      173 CALL                             R16 2 1
      174 GETUPVAL                         R18 0
      175 GETTABLEKS                       R17 R18 K20 ["createElement"]
      177 GETUPVAL                         R19 4
      178 GETTABLEKS                       R18 R19 K33 ["ContextStack"]
      180 DUPTABLE                         R19 K35 [{"providers"}]
      181 NEWTABLE                         R20 0 1
      183 GETUPVAL                         R22 0
      184 GETTABLEKS                       R21 R22 K20 ["createElement"]
      186 GETUPVAL                         R24 15
      187 GETTABLEKS                       R23 R24 K1 ["Context"]
      189 GETTABLEKS                       R22 R23 K36 ["Provider"]
      191 DUPTABLE                         R23 K38 [{"value"}]
      192 DUPTABLE                         R24 K41 [{"showMaskEditor", "setShowMaskEditor"}]
      193 SETTABLEKS                       R9 R24 K39 ["showMaskEditor"]
      195 SETTABLEKS                       R10 R24 K40 ["setShowMaskEditor"]
      197 SETTABLEKS                       R24 R23 K37 ["value"]
      199 CALL                             R21 2 -1
      200 SETLIST                          R20 R21 -1 [1]
      202 SETTABLEKS                       R20 R19 K34 ["providers"]
      204 DUPTABLE                         R20 K43 [{"Root"}]
      205 GETUPVAL                         R22 0
      206 GETTABLEKS                       R21 R22 K20 ["createElement"]
      208 GETUPVAL                         R23 5
      209 GETTABLEKS                       R22 R23 K44 ["View"]
      211 DUPTABLE                         R23 K47 [{"tag", "LayoutOrder"}]
      212 LOADK                            R24 K48 ["size-full-full col"]
      213 SETTABLEKS                       R24 R23 K45 ["tag"]
      215 GETTABLEKS                       R24 R0 K46 ["LayoutOrder"]
      217 SETTABLEKS                       R24 R23 K46 ["LayoutOrder"]
      219 DUPTABLE                         R24 K53 [{"MenuBar", "CanvasFrame", "MaskEditorPopup", "GraphNotPlayedBannerOverlay"}]
      220 GETUPVAL                         R26 0
      221 GETTABLEKS                       R25 R26 K20 ["createElement"]
      223 GETUPVAL                         R26 16
      224 DUPTABLE                         R27 K56 [{"LayoutOrder", "ZIndex", "menuOpen", "setMenuOpen"}]
      225 LOADN                            R28 1
      226 SETTABLEKS                       R28 R27 K46 ["LayoutOrder"]
      228 LOADN                            R28 2
      229 SETTABLEKS                       R28 R27 K22 ["ZIndex"]
      231 SETTABLEKS                       R7 R27 K54 ["menuOpen"]
      233 SETTABLEKS                       R8 R27 K55 ["setMenuOpen"]
      235 CALL                             R25 2 1
      236 SETTABLEKS                       R25 R24 K49 ["MenuBar"]
      238 GETUPVAL                         R26 0
      239 GETTABLEKS                       R25 R26 K20 ["createElement"]
      241 GETUPVAL                         R27 5
      242 GETTABLEKS                       R26 R27 K44 ["View"]
      244 DUPTABLE                         R27 K59 [{"LayoutOrder", "Size", "ref"}]
      245 LOADN                            R28 2
      246 SETTABLEKS                       R28 R27 K46 ["LayoutOrder"]
      248 GETIMPORT                        R28 K62 [UDim2.new]
      250 LOADN                            R29 1
      251 LOADN                            R30 0
      252 LOADN                            R31 1
      253 LOADN                            R32 224
      254 CALL                             R28 4 1
      255 SETTABLEKS                       R28 R27 K57 ["Size"]
      257 SETTABLEKS                       R16 R27 K58 ["ref"]
      259 DUPTABLE                         R28 K65 [{"Canvas", "ParameterPane"}]
      260 GETUPVAL                         R30 0
      261 GETTABLEKS                       R29 R30 K20 ["createElement"]
      263 GETUPVAL                         R31 17
      264 GETTABLEKS                       R30 R31 K63 ["Canvas"]
      266 DUPTABLE                         R31 K77 [{"Size", "GraphRect", "ViewportRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundColor3", "CanvasBackgroundTransparency", "ViewportBackgroundColor3", "ViewportBackgroundTransparency", "childrenUnclipped"}]
      267 GETIMPORT                        R32 K79 [UDim2.fromScale]
      269 LOADN                            R33 1
      270 LOADN                            R34 1
      271 CALL                             R32 2 1
      272 SETTABLEKS                       R32 R31 K57 ["Size"]
      274 SETTABLEKS                       R15 R31 K66 ["GraphRect"]
      276 SETTABLEKS                       R14 R31 K67 ["ViewportRect"]
      278 GETIMPORT                        R32 K81 [UDim.new]
      280 LOADN                            R33 0
      281 LOADN                            R34 0
      282 CALL                             R32 2 1
      283 SETTABLEKS                       R32 R31 K68 ["ViewportPaddingLeft"]
      285 GETIMPORT                        R32 K81 [UDim.new]
      287 LOADN                            R33 0
      288 LOADN                            R34 0
      289 CALL                             R32 2 1
      290 SETTABLEKS                       R32 R31 K69 ["ViewportPaddingRight"]
      292 GETIMPORT                        R32 K81 [UDim.new]
      294 LOADN                            R33 0
      295 LOADN                            R34 0
      296 CALL                             R32 2 1
      297 SETTABLEKS                       R32 R31 K70 ["ViewportPaddingBottom"]
      299 GETIMPORT                        R32 K81 [UDim.new]
      301 LOADN                            R33 0
      302 LOADN                            R34 0
      303 CALL                             R32 2 1
      304 SETTABLEKS                       R32 R31 K71 ["ViewportPaddingTop"]
      306 GETTABLEKS                       R35 R5 K82 ["Color"]
      308 GETTABLEKS                       R34 R35 K83 ["Surface"]
      310 GETTABLEKS                       R33 R34 K84 ["Surface_100"]
      312 GETTABLEKS                       R32 R33 K85 ["Color3"]
      314 SETTABLEKS                       R32 R31 K72 ["CanvasBackgroundColor3"]
      316 GETTABLEKS                       R35 R5 K82 ["Color"]
      318 GETTABLEKS                       R34 R35 K83 ["Surface"]
      320 GETTABLEKS                       R33 R34 K84 ["Surface_100"]
      322 GETTABLEKS                       R32 R33 K86 ["Transparency"]
      324 SETTABLEKS                       R32 R31 K73 ["CanvasBackgroundTransparency"]
      326 GETTABLEKS                       R35 R5 K82 ["Color"]
      328 GETTABLEKS                       R34 R35 K83 ["Surface"]
      330 GETTABLEKS                       R33 R34 K84 ["Surface_100"]
      332 GETTABLEKS                       R32 R33 K85 ["Color3"]
      334 SETTABLEKS                       R32 R31 K74 ["ViewportBackgroundColor3"]
      336 GETTABLEKS                       R35 R5 K82 ["Color"]
      338 GETTABLEKS                       R34 R35 K83 ["Surface"]
      340 GETTABLEKS                       R33 R34 K84 ["Surface_100"]
      342 GETTABLEKS                       R32 R33 K86 ["Transparency"]
      344 SETTABLEKS                       R32 R31 K75 ["ViewportBackgroundTransparency"]
      346 DUPTABLE                         R32 K89 [{"CanvasScrollingFrame", "Children"}]
      347 GETUPVAL                         R34 0
      348 GETTABLEKS                       R33 R34 K20 ["createElement"]
      350 GETUPVAL                         R34 18
      351 CALL                             R33 1 1
      352 SETTABLEKS                       R33 R32 K87 ["CanvasScrollingFrame"]
      354 GETUPVAL                         R34 0
      355 GETTABLEKS                       R33 R34 K20 ["createElement"]
      357 GETUPVAL                         R35 0
      358 GETTABLEKS                       R34 R35 K90 ["Fragment"]
      360 NEWTABLE                         R35 0 0
      362 MOVE                             R36 R13
      363 CALL                             R33 3 1
      364 SETTABLEKS                       R33 R32 K88 ["Children"]
      366 SETTABLEKS                       R32 R31 K76 ["childrenUnclipped"]
      368 CALL                             R29 2 1
      369 SETTABLEKS                       R29 R28 K63 ["Canvas"]
      371 GETUPVAL                         R30 0
      372 GETTABLEKS                       R29 R30 K20 ["createElement"]
      374 GETUPVAL                         R30 19
      375 DUPTABLE                         R31 K92 [{"canvasFrameRef"}]
      376 SETTABLEKS                       R11 R31 K91 ["canvasFrameRef"]
      378 CALL                             R29 2 1
      379 SETTABLEKS                       R29 R28 K64 ["ParameterPane"]
      381 CALL                             R25 3 1
      382 SETTABLEKS                       R25 R24 K50 ["CanvasFrame"]
      384 JUMPIFNOT                        R9 ; [+11]
      385 GETUPVAL                         R26 0
      386 GETTABLEKS                       R25 R26 K20 ["createElement"]
      388 GETUPVAL                         R26 20
      389 DUPTABLE                         R27 K94 [{"onClose"}]
      390 NEWCLOSURE                       R28 P3
      391 CAPTURE                          VAL R10
      392 SETTABLEKS                       R28 R27 K93 ["onClose"]
      394 CALL                             R25 2 1
      395 JUMP                             ; [+1]
      396 LOADNIL                          R25
      397 SETTABLEKS                       R25 R24 K51 ["MaskEditorPopup"]
      399 GETUPVAL                         R26 0
      400 GETTABLEKS                       R25 R26 K20 ["createElement"]
      402 GETUPVAL                         R26 21
      403 DUPTABLE                         R27 K96 [{"anchorRef"}]
      404 SETTABLEKS                       R11 R27 K95 ["anchorRef"]
      406 CALL                             R25 2 1
      407 SETTABLEKS                       R25 R24 K52 ["GraphNotPlayedBannerOverlay"]
      409 CALL                             R21 3 1
      410 SETTABLEKS                       R21 R20 K42 ["Root"]
      412 CALL                             R17 3 -1
      413 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R3 K8 ["CompositorMenu"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Components"]
       20 GETTABLEKS                       R4 R5 K7 ["NodeView"]
       22 GETTABLEKS                       R3 R4 K9 ["CompositorNodes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Components"]
       29 GETTABLEKS                       R5 R6 K7 ["NodeView"]
       31 GETTABLEKS                       R4 R5 K10 ["ContextMenuAnchor"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Contexts"]
       38 GETTABLEKS                       R5 R6 K12 ["CreateGraphContext"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R7 R0 K13 ["Parent"]
       45 GETTABLEKS                       R6 R7 K14 ["Foundation"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K6 ["Components"]
       52 GETTABLEKS                       R8 R9 K7 ["NodeView"]
       54 GETTABLEKS                       R7 R8 K15 ["GraphNotPlayedBanner"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R9 R0 K13 ["Parent"]
       61 GETTABLEKS                       R8 R9 K16 ["Graphing"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R10 R0 K11 ["Contexts"]
       68 GETTABLEKS                       R9 R10 K17 ["InsertNodeContext"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETIMPORT                        R12 K1 [script]
       75 GETTABLEKS                       R11 R12 K18 ["Masks"]
       77 GETTABLEKS                       R10 R11 K19 ["MaskEditorPopup"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R12 R0 K11 ["Contexts"]
       84 GETTABLEKS                       R11 R12 K20 ["MaskEditorVisibilityContext"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R13 R0 K11 ["Contexts"]
       91 GETTABLEKS                       R12 R13 K21 ["NativeGraphContext"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R15 R0 K6 ["Components"]
       98 GETTABLEKS                       R14 R15 K7 ["NodeView"]
      100 GETTABLEKS                       R13 R14 K22 ["NodeScrollingFrame"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R16 R0 K6 ["Components"]
      107 GETTABLEKS                       R15 R16 K7 ["NodeView"]
      109 GETTABLEKS                       R14 R15 K23 ["NodeSelectionBox"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R17 R0 K6 ["Components"]
      116 GETTABLEKS                       R16 R17 K7 ["NodeView"]
      118 GETTABLEKS                       R15 R16 K24 ["NodeViewBackground"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R18 R0 K6 ["Components"]
      125 GETTABLEKS                       R17 R18 K7 ["NodeView"]
      127 GETTABLEKS                       R16 R17 K25 ["NodeViewScroller"]
      129 CALL                             R15 1 1
      130 GETIMPORT                        R16 K5 [require]
      132 GETTABLEKS                       R19 R0 K6 ["Components"]
      134 GETTABLEKS                       R18 R19 K7 ["NodeView"]
      136 GETTABLEKS                       R17 R18 K26 ["ParameterPane"]
      138 CALL                             R16 1 1
      139 GETIMPORT                        R17 K5 [require]
      141 GETTABLEKS                       R19 R0 K13 ["Parent"]
      143 GETTABLEKS                       R18 R19 K27 ["React"]
      145 CALL                             R17 1 1
      146 GETIMPORT                        R18 K5 [require]
      148 GETTABLEKS                       R20 R0 K13 ["Parent"]
      150 GETTABLEKS                       R19 R20 K28 ["ReactUtils"]
      152 CALL                             R18 1 1
      153 GETIMPORT                        R19 K5 [require]
      155 GETTABLEKS                       R21 R0 K13 ["Parent"]
      157 GETTABLEKS                       R20 R21 K29 ["Signals"]
      159 CALL                             R19 1 1
      160 GETIMPORT                        R20 K5 [require]
      162 GETTABLEKS                       R22 R0 K13 ["Parent"]
      164 GETTABLEKS                       R21 R22 K30 ["SignalsReact"]
      166 CALL                             R20 1 1
      167 GETIMPORT                        R21 K5 [require]
      169 GETTABLEKS                       R23 R0 K11 ["Contexts"]
      171 GETTABLEKS                       R22 R23 K31 ["ViewportRectContext"]
      173 CALL                             R21 1 1
      174 GETIMPORT                        R22 K5 [require]
      176 GETTABLEKS                       R24 R0 K32 ["Hooks"]
      178 GETTABLEKS                       R23 R24 K33 ["useAbsoluteSize"]
      180 CALL                             R22 1 1
      181 DUPCLOSURE                       R23 K34 [PROTO_2]
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R4
      184 CAPTURE                          VAL R5
      185 CAPTURE                          VAL R14
      186 DUPCLOSURE                       R24 K35 [PROTO_8]
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R21
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R5
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R19
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R14
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R2
      199 CAPTURE                          VAL R3
      200 CAPTURE                          VAL R23
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R10
      203 CAPTURE                          VAL R1
      204 CAPTURE                          VAL R7
      205 CAPTURE                          VAL R12
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R6
      209 RETURN                           R24 1
