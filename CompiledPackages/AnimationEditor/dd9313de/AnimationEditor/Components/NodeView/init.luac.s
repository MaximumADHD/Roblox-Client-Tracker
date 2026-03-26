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
       34 DUPTABLE                         R9 K14 [{"absoluteSizeRef", "ZIndex"}]
       35 GETTABLEKS                       R10 R0 K12 ["absoluteSizeRef"]
       37 SETTABLEKS                       R10 R9 K12 ["absoluteSizeRef"]
       39 GETTABLEKS                       R10 R0 K15 ["nextZIndex"]
       41 CALL                             R10 0 1
       42 SETTABLEKS                       R10 R9 K13 ["ZIndex"]
       44 CALL                             R7 2 1
       45 SETTABLEKS                       R7 R6 K9 ["NodeViewBackground"]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R7 R8 K4 ["createElement"]
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R8 R9 K5 ["View"]
       53 DUPTABLE                         R9 K16 [{"tag", "ZIndex"}]
       54 LOADK                            R10 K17 ["col gap-xlarge auto-xy position-center-center anchor-center-center align-x-center"]
       55 SETTABLEKS                       R10 R9 K6 ["tag"]
       57 GETTABLEKS                       R10 R0 K15 ["nextZIndex"]
       59 CALL                             R10 0 1
       60 SETTABLEKS                       R10 R9 K13 ["ZIndex"]
       62 DUPTABLE                         R10 K20 [{"Text", "CreateGraph"}]
       63 GETUPVAL                         R12 0
       64 GETTABLEKS                       R11 R12 K4 ["createElement"]
       66 GETUPVAL                         R13 2
       67 GETTABLEKS                       R12 R13 K18 ["Text"]
       69 DUPTABLE                         R13 K22 [{"tag", "Text", "LayoutOrder"}]
       70 LOADK                            R14 K23 ["h2 auto-x anchor-center-center"]
       71 SETTABLEKS                       R14 R13 K6 ["tag"]
       73 GETTABLEKS                       R15 R1 K24 ["canCreateGraph"]
       75 JUMPIFNOT                        R15 ; [+10]
       76 GETTABLEKS                       R15 R1 K25 ["selectedTargetName"]
       78 JUMPIFNOT                        R15 ; [+7]
       79 GETIMPORT                        R14 K28 [string.format]
       81 LOADK                            R15 K29 ["\"%s\" selected."]
       82 GETTABLEKS                       R16 R1 K25 ["selectedTargetName"]
       84 CALL                             R14 2 1
       85 JUMP                             ; [+1]
       86 LOADK                            R14 K30 ["Select an object to animate."]
       87 SETTABLEKS                       R14 R13 K18 ["Text"]
       89 LOADN                            R14 1
       90 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
       92 CALL                             R11 2 1
       93 SETTABLEKS                       R11 R10 K18 ["Text"]
       95 GETUPVAL                         R12 0
       96 GETTABLEKS                       R11 R12 K4 ["createElement"]
       98 GETUPVAL                         R13 2
       99 GETTABLEKS                       R12 R13 K31 ["Button"]
      101 DUPTABLE                         R13 K35 [{"tag", "text", "isDisabled", "LayoutOrder", "onActivated"}]
      102 LOADK                            R14 K36 ["size-medium auto-x anchor-center-center"]
      103 SETTABLEKS                       R14 R13 K6 ["tag"]
      105 LOADK                            R14 K37 ["Create Graph"]
      106 SETTABLEKS                       R14 R13 K32 ["text"]
      108 GETTABLEKS                       R15 R1 K24 ["canCreateGraph"]
      110 NOT                              R14 R15
      111 SETTABLEKS                       R14 R13 K33 ["isDisabled"]
      113 LOADN                            R14 2
      114 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      116 SETTABLEKS                       R2 R13 K34 ["onActivated"]
      118 CALL                             R11 2 1
      119 SETTABLEKS                       R11 R10 K19 ["CreateGraph"]
      121 CALL                             R7 3 1
      122 SETTABLEKS                       R7 R6 K10 ["CenterBox"]
      124 CALL                             R3 3 -1
      125 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["absoluteSize"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["setAbsoluteSize"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["absoluteSize"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["showMenu"]
        3 MOVE                             R2 R0
        4 LOADNIL                          R3
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setFrame"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R0 R1 K1 ["current"]
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
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
       34 GETTABLEKS                       R7 R8 K5 ["useRef"]
       36 GETTABLEKS                       R8 R6 K6 ["absoluteSize"]
       38 CALL                             R7 1 1
       39 GETTABLEKS                       R8 R6 K6 ["absoluteSize"]
       41 SETTABLEKS                       R8 R7 K7 ["current"]
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R8 R9 K8 ["useState"]
       46 LOADK                            R9 K9 [""]
       47 CALL                             R8 1 2
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R10 R11 K8 ["useState"]
       51 LOADB                            R11 0
       52 CALL                             R10 1 2
       53 GETUPVAL                         R13 0
       54 GETTABLEKS                       R12 R13 K5 ["useRef"]
       56 LOADNIL                          R13
       57 CALL                             R12 1 1
       58 GETUPVAL                         R14 0
       59 GETTABLEKS                       R13 R14 K10 ["useEffect"]
       61 NEWCLOSURE                       R14 P0
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R3
       64 NEWTABLE                         R15 0 2
       66 GETTABLEKS                       R16 R3 K11 ["setAbsoluteSize"]
       68 GETTABLEKS                       R17 R6 K6 ["absoluteSize"]
       70 SETLIST                          R15 R16 2 [1]
       72 CALL                             R13 2 0
       73 GETUPVAL                         R14 0
       74 GETTABLEKS                       R13 R14 K12 ["useCallback"]
       76 NEWCLOSURE                       R14 P1
       77 CAPTURE                          VAL R1
       78 NEWTABLE                         R15 0 1
       80 GETTABLEKS                       R16 R1 K13 ["showMenu"]
       82 SETLIST                          R15 R16 1 [1]
       84 CALL                             R13 2 1
       85 NEWTABLE                         R14 0 0
       87 GETTABLEKS                       R15 R2 K14 ["selectedGraphInstanceId"]
       89 JUMPIFNOT                        R15 ; [+62]
       90 DUPTABLE                         R15 K20 [{"NodeViewScroller", "NodeViewBackground", "NodeSelectionBox", "CompositorNodes", "InsertNodeMenuAnchor"}]
       91 GETUPVAL                         R17 0
       92 GETTABLEKS                       R16 R17 K21 ["createElement"]
       94 GETUPVAL                         R17 7
       95 DUPTABLE                         R18 K25 [{"absoluteSizeRef", "onRightClick", "ZIndex"}]
       96 SETTABLEKS                       R7 R18 K22 ["absoluteSizeRef"]
       98 SETTABLEKS                       R13 R18 K23 ["onRightClick"]
      100 LOADN                            R19 2
      101 SETTABLEKS                       R19 R18 K24 ["ZIndex"]
      103 CALL                             R16 2 1
      104 SETTABLEKS                       R16 R15 K15 ["NodeViewScroller"]
      106 GETUPVAL                         R17 0
      107 GETTABLEKS                       R16 R17 K21 ["createElement"]
      109 GETUPVAL                         R17 8
      110 DUPTABLE                         R18 K26 [{"absoluteSizeRef", "ZIndex"}]
      111 SETTABLEKS                       R7 R18 K22 ["absoluteSizeRef"]
      113 LOADN                            R19 0
      114 SETTABLEKS                       R19 R18 K24 ["ZIndex"]
      116 CALL                             R16 2 1
      117 SETTABLEKS                       R16 R15 K16 ["NodeViewBackground"]
      119 GETUPVAL                         R17 0
      120 GETTABLEKS                       R16 R17 K21 ["createElement"]
      122 GETUPVAL                         R17 9
      123 DUPTABLE                         R18 K27 [{"ZIndex"}]
      124 LOADN                            R19 3
      125 SETTABLEKS                       R19 R18 K24 ["ZIndex"]
      127 CALL                             R16 2 1
      128 SETTABLEKS                       R16 R15 K17 ["NodeSelectionBox"]
      130 GETUPVAL                         R17 0
      131 GETTABLEKS                       R16 R17 K21 ["createElement"]
      133 GETUPVAL                         R17 10
      134 DUPTABLE                         R18 K28 [{"ZIndex", "absoluteSizeRef"}]
      135 LOADN                            R19 3
      136 SETTABLEKS                       R19 R18 K24 ["ZIndex"]
      138 SETTABLEKS                       R7 R18 K22 ["absoluteSizeRef"]
      140 CALL                             R16 2 1
      141 SETTABLEKS                       R16 R15 K18 ["CompositorNodes"]
      143 GETUPVAL                         R17 0
      144 GETTABLEKS                       R16 R17 K21 ["createElement"]
      146 GETUPVAL                         R17 11
      147 CALL                             R16 1 1
      148 SETTABLEKS                       R16 R15 K19 ["InsertNodeMenuAnchor"]
      150 MOVE                             R14 R15
      151 JUMP                             ; [+14]
      152 DUPTABLE                         R15 K30 [{"Empty"}]
      153 GETUPVAL                         R17 0
      154 GETTABLEKS                       R16 R17 K21 ["createElement"]
      156 GETUPVAL                         R17 12
      157 DUPTABLE                         R18 K32 [{"absoluteSizeRef", "nextZIndex"}]
      158 SETTABLEKS                       R7 R18 K22 ["absoluteSizeRef"]
      160 SETTABLEKS                       R4 R18 K31 ["nextZIndex"]
      162 CALL                             R16 2 1
      163 SETTABLEKS                       R16 R15 K29 ["Empty"]
      165 MOVE                             R14 R15
      166 GETUPVAL                         R16 0
      167 GETTABLEKS                       R15 R16 K21 ["createElement"]
      169 GETUPVAL                         R17 4
      170 GETTABLEKS                       R16 R17 K33 ["ContextStack"]
      172 DUPTABLE                         R17 K35 [{"providers"}]
      173 NEWTABLE                         R18 0 1
      175 GETUPVAL                         R20 0
      176 GETTABLEKS                       R19 R20 K21 ["createElement"]
      178 GETUPVAL                         R22 13
      179 GETTABLEKS                       R21 R22 K1 ["Context"]
      181 GETTABLEKS                       R20 R21 K36 ["Provider"]
      183 DUPTABLE                         R21 K38 [{"value"}]
      184 DUPTABLE                         R22 K41 [{"showMaskEditor", "setShowMaskEditor"}]
      185 SETTABLEKS                       R10 R22 K39 ["showMaskEditor"]
      187 SETTABLEKS                       R11 R22 K40 ["setShowMaskEditor"]
      189 SETTABLEKS                       R22 R21 K37 ["value"]
      191 CALL                             R19 2 -1
      192 SETLIST                          R18 R19 -1 [1]
      194 SETTABLEKS                       R18 R17 K34 ["providers"]
      196 DUPTABLE                         R18 K43 [{"Root"}]
      197 GETUPVAL                         R20 0
      198 GETTABLEKS                       R19 R20 K21 ["createElement"]
      200 GETUPVAL                         R21 5
      201 GETTABLEKS                       R20 R21 K44 ["View"]
      203 DUPTABLE                         R21 K47 [{"tag", "LayoutOrder"}]
      204 LOADK                            R22 K48 ["size-full-full col"]
      205 SETTABLEKS                       R22 R21 K45 ["tag"]
      207 GETTABLEKS                       R22 R0 K46 ["LayoutOrder"]
      209 SETTABLEKS                       R22 R21 K46 ["LayoutOrder"]
      211 DUPTABLE                         R22 K53 [{"MenuBar", "CanvasFrame", "MaskEditorPopup", "GraphNotPlayedBannerOverlay"}]
      212 GETUPVAL                         R24 0
      213 GETTABLEKS                       R23 R24 K21 ["createElement"]
      215 GETUPVAL                         R24 14
      216 DUPTABLE                         R25 K56 [{"LayoutOrder", "ZIndex", "menuOpen", "setMenuOpen"}]
      217 LOADN                            R26 1
      218 SETTABLEKS                       R26 R25 K46 ["LayoutOrder"]
      220 LOADN                            R26 2
      221 SETTABLEKS                       R26 R25 K24 ["ZIndex"]
      223 SETTABLEKS                       R8 R25 K54 ["menuOpen"]
      225 SETTABLEKS                       R9 R25 K55 ["setMenuOpen"]
      227 CALL                             R23 2 1
      228 SETTABLEKS                       R23 R22 K49 ["MenuBar"]
      230 GETUPVAL                         R24 0
      231 GETTABLEKS                       R23 R24 K21 ["createElement"]
      233 GETUPVAL                         R25 5
      234 GETTABLEKS                       R24 R25 K44 ["View"]
      236 DUPTABLE                         R25 K59 [{"LayoutOrder", "Size", "ref"}]
      237 LOADN                            R26 2
      238 SETTABLEKS                       R26 R25 K46 ["LayoutOrder"]
      240 GETIMPORT                        R26 K62 [UDim2.new]
      242 LOADN                            R27 1
      243 LOADN                            R28 0
      244 LOADN                            R29 1
      245 LOADN                            R30 224
      246 CALL                             R26 4 1
      247 SETTABLEKS                       R26 R25 K57 ["Size"]
      249 NEWCLOSURE                       R26 P2
      250 CAPTURE                          VAL R6
      251 CAPTURE                          VAL R12
      252 SETTABLEKS                       R26 R25 K58 ["ref"]
      254 DUPTABLE                         R26 K65 [{"Canvas", "ParameterPane"}]
      255 GETUPVAL                         R28 0
      256 GETTABLEKS                       R27 R28 K21 ["createElement"]
      258 GETUPVAL                         R29 15
      259 GETTABLEKS                       R28 R29 K63 ["Canvas"]
      261 DUPTABLE                         R29 K77 [{"Size", "GraphRect", "ViewportRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundColor3", "CanvasBackgroundTransparency", "ViewportBackgroundColor3", "ViewportBackgroundTransparency", "childrenUnclipped"}]
      262 GETIMPORT                        R30 K79 [UDim2.fromScale]
      264 LOADN                            R31 1
      265 LOADN                            R32 1
      266 CALL                             R30 2 1
      267 SETTABLEKS                       R30 R29 K57 ["Size"]
      269 GETTABLEKS                       R30 R3 K80 ["renderedGraphRect"]
      271 SETTABLEKS                       R30 R29 K66 ["GraphRect"]
      273 GETTABLEKS                       R30 R3 K81 ["viewportRect"]
      275 SETTABLEKS                       R30 R29 K67 ["ViewportRect"]
      277 GETIMPORT                        R30 K83 [UDim.new]
      279 LOADN                            R31 0
      280 LOADN                            R32 0
      281 CALL                             R30 2 1
      282 SETTABLEKS                       R30 R29 K68 ["ViewportPaddingLeft"]
      284 GETIMPORT                        R30 K83 [UDim.new]
      286 LOADN                            R31 0
      287 LOADN                            R32 0
      288 CALL                             R30 2 1
      289 SETTABLEKS                       R30 R29 K69 ["ViewportPaddingRight"]
      291 GETIMPORT                        R30 K83 [UDim.new]
      293 LOADN                            R31 0
      294 LOADN                            R32 0
      295 CALL                             R30 2 1
      296 SETTABLEKS                       R30 R29 K70 ["ViewportPaddingBottom"]
      298 GETIMPORT                        R30 K83 [UDim.new]
      300 LOADN                            R31 0
      301 LOADN                            R32 0
      302 CALL                             R30 2 1
      303 SETTABLEKS                       R30 R29 K71 ["ViewportPaddingTop"]
      305 GETTABLEKS                       R33 R5 K84 ["Color"]
      307 GETTABLEKS                       R32 R33 K85 ["Surface"]
      309 GETTABLEKS                       R31 R32 K86 ["Surface_100"]
      311 GETTABLEKS                       R30 R31 K87 ["Color3"]
      313 SETTABLEKS                       R30 R29 K72 ["CanvasBackgroundColor3"]
      315 GETTABLEKS                       R33 R5 K84 ["Color"]
      317 GETTABLEKS                       R32 R33 K85 ["Surface"]
      319 GETTABLEKS                       R31 R32 K86 ["Surface_100"]
      321 GETTABLEKS                       R30 R31 K88 ["Transparency"]
      323 SETTABLEKS                       R30 R29 K73 ["CanvasBackgroundTransparency"]
      325 GETTABLEKS                       R33 R5 K84 ["Color"]
      327 GETTABLEKS                       R32 R33 K85 ["Surface"]
      329 GETTABLEKS                       R31 R32 K86 ["Surface_100"]
      331 GETTABLEKS                       R30 R31 K87 ["Color3"]
      333 SETTABLEKS                       R30 R29 K74 ["ViewportBackgroundColor3"]
      335 GETTABLEKS                       R33 R5 K84 ["Color"]
      337 GETTABLEKS                       R32 R33 K85 ["Surface"]
      339 GETTABLEKS                       R31 R32 K86 ["Surface_100"]
      341 GETTABLEKS                       R30 R31 K88 ["Transparency"]
      343 SETTABLEKS                       R30 R29 K75 ["ViewportBackgroundTransparency"]
      345 DUPTABLE                         R30 K91 [{"CanvasScrollingFrame", "Children"}]
      346 GETUPVAL                         R32 0
      347 GETTABLEKS                       R31 R32 K21 ["createElement"]
      349 GETUPVAL                         R32 16
      350 CALL                             R31 1 1
      351 SETTABLEKS                       R31 R30 K89 ["CanvasScrollingFrame"]
      353 GETUPVAL                         R32 0
      354 GETTABLEKS                       R31 R32 K21 ["createElement"]
      356 GETUPVAL                         R33 0
      357 GETTABLEKS                       R32 R33 K92 ["Fragment"]
      359 NEWTABLE                         R33 0 0
      361 MOVE                             R34 R14
      362 CALL                             R31 3 1
      363 SETTABLEKS                       R31 R30 K90 ["Children"]
      365 SETTABLEKS                       R30 R29 K76 ["childrenUnclipped"]
      367 CALL                             R27 2 1
      368 SETTABLEKS                       R27 R26 K63 ["Canvas"]
      370 GETUPVAL                         R28 0
      371 GETTABLEKS                       R27 R28 K21 ["createElement"]
      373 GETUPVAL                         R28 17
      374 CALL                             R27 1 1
      375 SETTABLEKS                       R27 R26 K64 ["ParameterPane"]
      377 CALL                             R23 3 1
      378 SETTABLEKS                       R23 R22 K50 ["CanvasFrame"]
      380 JUMPIFNOT                        R10 ; [+11]
      381 GETUPVAL                         R24 0
      382 GETTABLEKS                       R23 R24 K21 ["createElement"]
      384 GETUPVAL                         R24 18
      385 DUPTABLE                         R25 K94 [{"onClose"}]
      386 NEWCLOSURE                       R26 P3
      387 CAPTURE                          VAL R11
      388 SETTABLEKS                       R26 R25 K93 ["onClose"]
      390 CALL                             R23 2 1
      391 JUMP                             ; [+1]
      392 LOADNIL                          R23
      393 SETTABLEKS                       R23 R22 K51 ["MaskEditorPopup"]
      395 GETUPVAL                         R24 0
      396 GETTABLEKS                       R23 R24 K21 ["createElement"]
      398 GETUPVAL                         R24 19
      399 DUPTABLE                         R25 K96 [{"anchorRef"}]
      400 SETTABLEKS                       R12 R25 K95 ["anchorRef"]
      402 CALL                             R23 2 1
      403 SETTABLEKS                       R23 R22 K52 ["GraphNotPlayedBannerOverlay"]
      405 CALL                             R19 3 1
      406 SETTABLEKS                       R19 R18 K42 ["Root"]
      408 CALL                             R15 3 -1
      409 RETURN                           R15 -1

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
       27 GETTABLEKS                       R5 R0 K10 ["Contexts"]
       29 GETTABLEKS                       R4 R5 K11 ["CreateGraphContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Parent"]
       36 GETTABLEKS                       R5 R6 K13 ["Foundation"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K6 ["Components"]
       43 GETTABLEKS                       R7 R8 K7 ["NodeView"]
       45 GETTABLEKS                       R6 R7 K14 ["GraphNotPlayedBanner"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R8 R0 K12 ["Parent"]
       52 GETTABLEKS                       R7 R8 K15 ["Graphing"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R9 R0 K10 ["Contexts"]
       59 GETTABLEKS                       R8 R9 K16 ["InsertNodeContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R11 R0 K6 ["Components"]
       66 GETTABLEKS                       R10 R11 K7 ["NodeView"]
       68 GETTABLEKS                       R9 R10 K17 ["InsertNodeMenuAnchor"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETIMPORT                        R12 K1 [script]
       75 GETTABLEKS                       R11 R12 K18 ["Masks"]
       77 GETTABLEKS                       R10 R11 K19 ["MaskEditorPopup"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R12 R0 K10 ["Contexts"]
       84 GETTABLEKS                       R11 R12 K20 ["MaskEditorVisibilityContext"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R13 R0 K10 ["Contexts"]
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
      141 GETTABLEKS                       R19 R0 K12 ["Parent"]
      143 GETTABLEKS                       R18 R19 K27 ["React"]
      145 CALL                             R17 1 1
      146 GETIMPORT                        R18 K5 [require]
      148 GETTABLEKS                       R20 R0 K12 ["Parent"]
      150 GETTABLEKS                       R19 R20 K28 ["ReactUtils"]
      152 CALL                             R18 1 1
      153 GETIMPORT                        R19 K5 [require]
      155 GETTABLEKS                       R21 R0 K10 ["Contexts"]
      157 GETTABLEKS                       R20 R21 K29 ["ViewportRectContext"]
      159 CALL                             R19 1 1
      160 GETIMPORT                        R20 K5 [require]
      162 GETTABLEKS                       R22 R0 K30 ["Hooks"]
      164 GETTABLEKS                       R21 R22 K31 ["useAbsoluteSize"]
      166 CALL                             R20 1 1
      167 DUPCLOSURE                       R21 K32 [PROTO_2]
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R14
      172 DUPCLOSURE                       R22 K33 [PROTO_7]
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R18
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R20
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R13
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R8
      185 CAPTURE                          VAL R21
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R12
      190 CAPTURE                          VAL R16
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R5
      193 RETURN                           R22 1
