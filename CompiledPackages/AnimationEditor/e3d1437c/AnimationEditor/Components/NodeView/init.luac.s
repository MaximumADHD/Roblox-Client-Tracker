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
       25 GETTABLEKS                       R5 R2 K3 ["graphPayloadMap"]
       27 GETUPVAL                         R8 5
       28 GETTABLEKS                       R7 R8 K4 ["Hooks"]
       30 GETTABLEKS                       R6 R7 K5 ["useTokens"]
       32 CALL                             R6 0 1
       33 GETUPVAL                         R7 6
       34 CALL                             R7 0 1
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R8 R9 K6 ["useRef"]
       38 GETTABLEKS                       R9 R7 K7 ["absoluteSize"]
       40 CALL                             R8 1 1
       41 GETTABLEKS                       R9 R7 K7 ["absoluteSize"]
       43 SETTABLEKS                       R9 R8 K8 ["current"]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R9 R10 K9 ["useState"]
       48 LOADK                            R10 K10 [""]
       49 CALL                             R9 1 2
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R11 R12 K9 ["useState"]
       53 LOADB                            R12 0
       54 CALL                             R11 1 2
       55 GETUPVAL                         R14 0
       56 GETTABLEKS                       R13 R14 K6 ["useRef"]
       58 LOADNIL                          R14
       59 CALL                             R13 1 1
       60 GETUPVAL                         R15 0
       61 GETTABLEKS                       R14 R15 K11 ["useEffect"]
       63 NEWCLOSURE                       R15 P0
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R3
       66 NEWTABLE                         R16 0 2
       68 GETTABLEKS                       R17 R3 K12 ["setAbsoluteSize"]
       70 GETTABLEKS                       R18 R7 K7 ["absoluteSize"]
       72 SETLIST                          R16 R17 2 [1]
       74 CALL                             R14 2 0
       75 GETUPVAL                         R15 0
       76 GETTABLEKS                       R14 R15 K13 ["useCallback"]
       78 NEWCLOSURE                       R15 P1
       79 CAPTURE                          VAL R1
       80 NEWTABLE                         R16 0 1
       82 GETTABLEKS                       R17 R1 K14 ["showMenu"]
       84 SETLIST                          R16 R17 1 [1]
       86 CALL                             R14 2 1
       87 NEWTABLE                         R15 0 0
       89 JUMPIFNOT                        R5 ; [+98]
       90 GETTABLEKS                       R16 R5 K15 ["lookup"]
       92 JUMPIFNOT                        R16 ; [+95]
       93 GETIMPORT                        R16 K17 [next]
       95 GETTABLEKS                       R17 R5 K15 ["lookup"]
       97 CALL                             R16 1 1
       98 JUMPIFEQKNIL                     R16 ; [+89]
      100 DUPTABLE                         R16 K19 [{"CompositorConnectionContext"}]
      101 GETUPVAL                         R18 0
      102 GETTABLEKS                       R17 R18 K20 ["createElement"]
      104 GETUPVAL                         R19 4
      105 GETTABLEKS                       R18 R19 K21 ["ContextStack"]
      107 DUPTABLE                         R19 K23 [{"providers"}]
      108 NEWTABLE                         R20 0 1
      110 GETUPVAL                         R22 0
      111 GETTABLEKS                       R21 R22 K20 ["createElement"]
      113 GETUPVAL                         R23 7
      114 GETTABLEKS                       R22 R23 K24 ["Provider"]
      116 CALL                             R21 1 -1
      117 SETLIST                          R20 R21 -1 [1]
      119 SETTABLEKS                       R20 R19 K22 ["providers"]
      121 DUPTABLE                         R20 K30 [{"NodeViewScroller", "NodeViewBackground", "NodeSelectionBox", "CompositorNodes", "InsertNodeMenuAnchor"}]
      122 GETUPVAL                         R22 0
      123 GETTABLEKS                       R21 R22 K20 ["createElement"]
      125 GETUPVAL                         R22 8
      126 DUPTABLE                         R23 K34 [{"absoluteSizeRef", "onRightClick", "ZIndex"}]
      127 SETTABLEKS                       R8 R23 K31 ["absoluteSizeRef"]
      129 SETTABLEKS                       R14 R23 K32 ["onRightClick"]
      131 LOADN                            R24 2
      132 SETTABLEKS                       R24 R23 K33 ["ZIndex"]
      134 CALL                             R21 2 1
      135 SETTABLEKS                       R21 R20 K25 ["NodeViewScroller"]
      137 GETUPVAL                         R22 0
      138 GETTABLEKS                       R21 R22 K20 ["createElement"]
      140 GETUPVAL                         R22 9
      141 DUPTABLE                         R23 K35 [{"absoluteSizeRef", "ZIndex"}]
      142 SETTABLEKS                       R8 R23 K31 ["absoluteSizeRef"]
      144 LOADN                            R24 0
      145 SETTABLEKS                       R24 R23 K33 ["ZIndex"]
      147 CALL                             R21 2 1
      148 SETTABLEKS                       R21 R20 K26 ["NodeViewBackground"]
      150 GETUPVAL                         R22 0
      151 GETTABLEKS                       R21 R22 K20 ["createElement"]
      153 GETUPVAL                         R22 10
      154 DUPTABLE                         R23 K36 [{"ZIndex"}]
      155 LOADN                            R24 3
      156 SETTABLEKS                       R24 R23 K33 ["ZIndex"]
      158 CALL                             R21 2 1
      159 SETTABLEKS                       R21 R20 K27 ["NodeSelectionBox"]
      161 GETUPVAL                         R22 0
      162 GETTABLEKS                       R21 R22 K20 ["createElement"]
      164 GETUPVAL                         R22 11
      165 DUPTABLE                         R23 K38 [{"FramePayload", "ZIndex", "absoluteSizeRef"}]
      166 SETTABLEKS                       R5 R23 K37 ["FramePayload"]
      168 LOADN                            R24 3
      169 SETTABLEKS                       R24 R23 K33 ["ZIndex"]
      171 SETTABLEKS                       R8 R23 K31 ["absoluteSizeRef"]
      173 CALL                             R21 2 1
      174 SETTABLEKS                       R21 R20 K28 ["CompositorNodes"]
      176 GETUPVAL                         R22 0
      177 GETTABLEKS                       R21 R22 K20 ["createElement"]
      179 GETUPVAL                         R22 12
      180 CALL                             R21 1 1
      181 SETTABLEKS                       R21 R20 K29 ["InsertNodeMenuAnchor"]
      183 CALL                             R17 3 1
      184 SETTABLEKS                       R17 R16 K18 ["CompositorConnectionContext"]
      186 MOVE                             R15 R16
      187 JUMP                             ; [+14]
      188 DUPTABLE                         R16 K40 [{"Empty"}]
      189 GETUPVAL                         R18 0
      190 GETTABLEKS                       R17 R18 K20 ["createElement"]
      192 GETUPVAL                         R18 13
      193 DUPTABLE                         R19 K42 [{"absoluteSizeRef", "nextZIndex"}]
      194 SETTABLEKS                       R8 R19 K31 ["absoluteSizeRef"]
      196 SETTABLEKS                       R4 R19 K41 ["nextZIndex"]
      198 CALL                             R17 2 1
      199 SETTABLEKS                       R17 R16 K39 ["Empty"]
      201 MOVE                             R15 R16
      202 GETUPVAL                         R17 0
      203 GETTABLEKS                       R16 R17 K20 ["createElement"]
      205 GETUPVAL                         R18 4
      206 GETTABLEKS                       R17 R18 K21 ["ContextStack"]
      208 DUPTABLE                         R18 K23 [{"providers"}]
      209 NEWTABLE                         R19 0 1
      211 GETUPVAL                         R21 0
      212 GETTABLEKS                       R20 R21 K20 ["createElement"]
      214 GETUPVAL                         R23 14
      215 GETTABLEKS                       R22 R23 K1 ["Context"]
      217 GETTABLEKS                       R21 R22 K24 ["Provider"]
      219 DUPTABLE                         R22 K44 [{"value"}]
      220 DUPTABLE                         R23 K47 [{"showMaskEditor", "setShowMaskEditor"}]
      221 SETTABLEKS                       R11 R23 K45 ["showMaskEditor"]
      223 SETTABLEKS                       R12 R23 K46 ["setShowMaskEditor"]
      225 SETTABLEKS                       R23 R22 K43 ["value"]
      227 CALL                             R20 2 -1
      228 SETLIST                          R19 R20 -1 [1]
      230 SETTABLEKS                       R19 R18 K22 ["providers"]
      232 DUPTABLE                         R19 K49 [{"Root"}]
      233 GETUPVAL                         R21 0
      234 GETTABLEKS                       R20 R21 K20 ["createElement"]
      236 GETUPVAL                         R22 5
      237 GETTABLEKS                       R21 R22 K50 ["View"]
      239 DUPTABLE                         R22 K53 [{"tag", "LayoutOrder"}]
      240 LOADK                            R23 K54 ["size-full-full col"]
      241 SETTABLEKS                       R23 R22 K51 ["tag"]
      243 GETTABLEKS                       R23 R0 K52 ["LayoutOrder"]
      245 SETTABLEKS                       R23 R22 K52 ["LayoutOrder"]
      247 DUPTABLE                         R23 K59 [{"MenuBar", "CanvasFrame", "MaskEditorPopup", "GraphNotPlayedBannerOverlay"}]
      248 GETUPVAL                         R25 0
      249 GETTABLEKS                       R24 R25 K20 ["createElement"]
      251 GETUPVAL                         R25 15
      252 DUPTABLE                         R26 K62 [{"LayoutOrder", "ZIndex", "menuOpen", "setMenuOpen"}]
      253 LOADN                            R27 1
      254 SETTABLEKS                       R27 R26 K52 ["LayoutOrder"]
      256 LOADN                            R27 2
      257 SETTABLEKS                       R27 R26 K33 ["ZIndex"]
      259 SETTABLEKS                       R9 R26 K60 ["menuOpen"]
      261 SETTABLEKS                       R10 R26 K61 ["setMenuOpen"]
      263 CALL                             R24 2 1
      264 SETTABLEKS                       R24 R23 K55 ["MenuBar"]
      266 GETUPVAL                         R25 0
      267 GETTABLEKS                       R24 R25 K20 ["createElement"]
      269 GETUPVAL                         R26 5
      270 GETTABLEKS                       R25 R26 K50 ["View"]
      272 DUPTABLE                         R26 K65 [{"LayoutOrder", "Size", "ref"}]
      273 LOADN                            R27 2
      274 SETTABLEKS                       R27 R26 K52 ["LayoutOrder"]
      276 GETIMPORT                        R27 K68 [UDim2.new]
      278 LOADN                            R28 1
      279 LOADN                            R29 0
      280 LOADN                            R30 1
      281 LOADN                            R31 224
      282 CALL                             R27 4 1
      283 SETTABLEKS                       R27 R26 K63 ["Size"]
      285 NEWCLOSURE                       R27 P2
      286 CAPTURE                          VAL R7
      287 CAPTURE                          VAL R13
      288 SETTABLEKS                       R27 R26 K64 ["ref"]
      290 DUPTABLE                         R27 K71 [{"Canvas", "ParameterPane"}]
      291 GETUPVAL                         R29 0
      292 GETTABLEKS                       R28 R29 K20 ["createElement"]
      294 GETUPVAL                         R30 16
      295 GETTABLEKS                       R29 R30 K69 ["Canvas"]
      297 DUPTABLE                         R30 K83 [{"Size", "GraphRect", "ViewportRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundColor3", "CanvasBackgroundTransparency", "ViewportBackgroundColor3", "ViewportBackgroundTransparency", "childrenUnclipped"}]
      298 GETIMPORT                        R31 K85 [UDim2.fromScale]
      300 LOADN                            R32 1
      301 LOADN                            R33 1
      302 CALL                             R31 2 1
      303 SETTABLEKS                       R31 R30 K63 ["Size"]
      305 GETTABLEKS                       R31 R3 K86 ["renderedGraphRect"]
      307 SETTABLEKS                       R31 R30 K72 ["GraphRect"]
      309 GETTABLEKS                       R31 R3 K87 ["viewportRect"]
      311 SETTABLEKS                       R31 R30 K73 ["ViewportRect"]
      313 GETIMPORT                        R31 K89 [UDim.new]
      315 LOADN                            R32 0
      316 LOADN                            R33 0
      317 CALL                             R31 2 1
      318 SETTABLEKS                       R31 R30 K74 ["ViewportPaddingLeft"]
      320 GETIMPORT                        R31 K89 [UDim.new]
      322 LOADN                            R32 0
      323 LOADN                            R33 0
      324 CALL                             R31 2 1
      325 SETTABLEKS                       R31 R30 K75 ["ViewportPaddingRight"]
      327 GETIMPORT                        R31 K89 [UDim.new]
      329 LOADN                            R32 0
      330 LOADN                            R33 0
      331 CALL                             R31 2 1
      332 SETTABLEKS                       R31 R30 K76 ["ViewportPaddingBottom"]
      334 GETIMPORT                        R31 K89 [UDim.new]
      336 LOADN                            R32 0
      337 LOADN                            R33 0
      338 CALL                             R31 2 1
      339 SETTABLEKS                       R31 R30 K77 ["ViewportPaddingTop"]
      341 GETTABLEKS                       R34 R6 K90 ["Color"]
      343 GETTABLEKS                       R33 R34 K91 ["Surface"]
      345 GETTABLEKS                       R32 R33 K92 ["Surface_100"]
      347 GETTABLEKS                       R31 R32 K93 ["Color3"]
      349 SETTABLEKS                       R31 R30 K78 ["CanvasBackgroundColor3"]
      351 GETTABLEKS                       R34 R6 K90 ["Color"]
      353 GETTABLEKS                       R33 R34 K91 ["Surface"]
      355 GETTABLEKS                       R32 R33 K92 ["Surface_100"]
      357 GETTABLEKS                       R31 R32 K94 ["Transparency"]
      359 SETTABLEKS                       R31 R30 K79 ["CanvasBackgroundTransparency"]
      361 GETTABLEKS                       R34 R6 K90 ["Color"]
      363 GETTABLEKS                       R33 R34 K91 ["Surface"]
      365 GETTABLEKS                       R32 R33 K92 ["Surface_100"]
      367 GETTABLEKS                       R31 R32 K93 ["Color3"]
      369 SETTABLEKS                       R31 R30 K80 ["ViewportBackgroundColor3"]
      371 GETTABLEKS                       R34 R6 K90 ["Color"]
      373 GETTABLEKS                       R33 R34 K91 ["Surface"]
      375 GETTABLEKS                       R32 R33 K92 ["Surface_100"]
      377 GETTABLEKS                       R31 R32 K94 ["Transparency"]
      379 SETTABLEKS                       R31 R30 K81 ["ViewportBackgroundTransparency"]
      381 DUPTABLE                         R31 K97 [{"CanvasScrollingFrame", "Children"}]
      382 GETUPVAL                         R33 0
      383 GETTABLEKS                       R32 R33 K20 ["createElement"]
      385 GETUPVAL                         R33 17
      386 CALL                             R32 1 1
      387 SETTABLEKS                       R32 R31 K95 ["CanvasScrollingFrame"]
      389 GETUPVAL                         R33 0
      390 GETTABLEKS                       R32 R33 K20 ["createElement"]
      392 GETUPVAL                         R34 0
      393 GETTABLEKS                       R33 R34 K98 ["Fragment"]
      395 NEWTABLE                         R34 0 0
      397 MOVE                             R35 R15
      398 CALL                             R32 3 1
      399 SETTABLEKS                       R32 R31 K96 ["Children"]
      401 SETTABLEKS                       R31 R30 K82 ["childrenUnclipped"]
      403 CALL                             R28 2 1
      404 SETTABLEKS                       R28 R27 K69 ["Canvas"]
      406 GETUPVAL                         R29 0
      407 GETTABLEKS                       R28 R29 K20 ["createElement"]
      409 GETUPVAL                         R29 18
      410 CALL                             R28 1 1
      411 SETTABLEKS                       R28 R27 K70 ["ParameterPane"]
      413 CALL                             R24 3 1
      414 SETTABLEKS                       R24 R23 K56 ["CanvasFrame"]
      416 JUMPIFNOT                        R11 ; [+11]
      417 GETUPVAL                         R25 0
      418 GETTABLEKS                       R24 R25 K20 ["createElement"]
      420 GETUPVAL                         R25 19
      421 DUPTABLE                         R26 K100 [{"onClose"}]
      422 NEWCLOSURE                       R27 P3
      423 CAPTURE                          VAL R12
      424 SETTABLEKS                       R27 R26 K99 ["onClose"]
      426 CALL                             R24 2 1
      427 JUMP                             ; [+1]
      428 LOADNIL                          R24
      429 SETTABLEKS                       R24 R23 K57 ["MaskEditorPopup"]
      431 GETUPVAL                         R25 0
      432 GETTABLEKS                       R24 R25 K20 ["createElement"]
      434 GETUPVAL                         R25 20
      435 DUPTABLE                         R26 K102 [{"anchorRef"}]
      436 SETTABLEKS                       R13 R26 K101 ["anchorRef"]
      438 CALL                             R24 2 1
      439 SETTABLEKS                       R24 R23 K58 ["GraphNotPlayedBannerOverlay"]
      441 CALL                             R20 3 1
      442 SETTABLEKS                       R20 R19 K48 ["Root"]
      444 CALL                             R16 3 -1
      445 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["CompositorConnectionContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["NodeView"]
       20 GETTABLEKS                       R3 R4 K10 ["CompositorMenu"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Components"]
       27 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       29 GETTABLEKS                       R4 R5 K11 ["CompositorNodes"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Contexts"]
       36 GETTABLEKS                       R5 R6 K12 ["CreateGraphContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Parent"]
       43 GETTABLEKS                       R6 R7 K14 ["Foundation"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K8 ["Components"]
       50 GETTABLEKS                       R8 R9 K9 ["NodeView"]
       52 GETTABLEKS                       R7 R8 K15 ["GraphNotPlayedBanner"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R9 R0 K13 ["Parent"]
       59 GETTABLEKS                       R8 R9 K16 ["Graphing"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R10 R0 K6 ["Contexts"]
       66 GETTABLEKS                       R9 R10 K17 ["InsertNodeContext"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R12 R0 K8 ["Components"]
       73 GETTABLEKS                       R11 R12 K9 ["NodeView"]
       75 GETTABLEKS                       R10 R11 K18 ["InsertNodeMenuAnchor"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETIMPORT                        R13 K1 [script]
       82 GETTABLEKS                       R12 R13 K19 ["Masks"]
       84 GETTABLEKS                       R11 R12 K20 ["MaskEditorPopup"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R13 R0 K6 ["Contexts"]
       91 GETTABLEKS                       R12 R13 K21 ["MaskEditorVisibilityContext"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R14 R0 K6 ["Contexts"]
       98 GETTABLEKS                       R13 R14 K22 ["NativeGraphContext"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R16 R0 K8 ["Components"]
      105 GETTABLEKS                       R15 R16 K9 ["NodeView"]
      107 GETTABLEKS                       R14 R15 K23 ["NodeScrollingFrame"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R17 R0 K8 ["Components"]
      114 GETTABLEKS                       R16 R17 K9 ["NodeView"]
      116 GETTABLEKS                       R15 R16 K24 ["NodeSelectionBox"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R18 R0 K8 ["Components"]
      123 GETTABLEKS                       R17 R18 K9 ["NodeView"]
      125 GETTABLEKS                       R16 R17 K25 ["NodeViewBackground"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R19 R0 K8 ["Components"]
      132 GETTABLEKS                       R18 R19 K9 ["NodeView"]
      134 GETTABLEKS                       R17 R18 K26 ["NodeViewScroller"]
      136 CALL                             R16 1 1
      137 GETIMPORT                        R17 K5 [require]
      139 GETTABLEKS                       R20 R0 K8 ["Components"]
      141 GETTABLEKS                       R19 R20 K9 ["NodeView"]
      143 GETTABLEKS                       R18 R19 K27 ["ParameterPane"]
      145 CALL                             R17 1 1
      146 GETIMPORT                        R18 K5 [require]
      148 GETTABLEKS                       R20 R0 K13 ["Parent"]
      150 GETTABLEKS                       R19 R20 K28 ["React"]
      152 CALL                             R18 1 1
      153 GETIMPORT                        R19 K5 [require]
      155 GETTABLEKS                       R21 R0 K13 ["Parent"]
      157 GETTABLEKS                       R20 R21 K29 ["ReactUtils"]
      159 CALL                             R19 1 1
      160 GETIMPORT                        R20 K5 [require]
      162 GETTABLEKS                       R22 R0 K6 ["Contexts"]
      164 GETTABLEKS                       R21 R22 K30 ["ViewportRectContext"]
      166 CALL                             R20 1 1
      167 GETIMPORT                        R21 K5 [require]
      169 GETTABLEKS                       R23 R0 K31 ["Hooks"]
      171 GETTABLEKS                       R22 R23 K32 ["useAbsoluteSize"]
      173 CALL                             R21 1 1
      174 DUPCLOSURE                       R22 K33 [PROTO_2]
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R15
      179 DUPCLOSURE                       R23 K34 [PROTO_7]
      180 CAPTURE                          VAL R18
      181 CAPTURE                          VAL R8
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R21
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R15
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R3
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R11
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R7
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R17
      199 CAPTURE                          VAL R10
      200 CAPTURE                          VAL R6
      201 RETURN                           R23 1
