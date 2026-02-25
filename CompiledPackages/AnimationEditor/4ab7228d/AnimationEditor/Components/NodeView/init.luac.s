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
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
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
       56 GETTABLEKS                       R13 R14 K11 ["useEffect"]
       58 NEWCLOSURE                       R14 P0
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R3
       61 NEWTABLE                         R15 0 2
       63 GETTABLEKS                       R16 R3 K12 ["setAbsoluteSize"]
       65 GETTABLEKS                       R17 R7 K7 ["absoluteSize"]
       67 SETLIST                          R15 R16 2 [1]
       69 CALL                             R13 2 0
       70 GETUPVAL                         R14 0
       71 GETTABLEKS                       R13 R14 K13 ["useCallback"]
       73 NEWCLOSURE                       R14 P1
       74 CAPTURE                          VAL R1
       75 NEWTABLE                         R15 0 1
       77 GETTABLEKS                       R16 R1 K14 ["showMenu"]
       79 SETLIST                          R15 R16 1 [1]
       81 CALL                             R13 2 1
       82 NEWTABLE                         R14 0 0
       84 JUMPIFNOT                        R5 ; [+98]
       85 GETTABLEKS                       R15 R5 K15 ["lookup"]
       87 JUMPIFNOT                        R15 ; [+95]
       88 GETIMPORT                        R15 K17 [next]
       90 GETTABLEKS                       R16 R5 K15 ["lookup"]
       92 CALL                             R15 1 1
       93 JUMPIFEQKNIL                     R15 ; [+89]
       95 DUPTABLE                         R15 K19 [{"CompositorConnectionContext"}]
       96 GETUPVAL                         R17 0
       97 GETTABLEKS                       R16 R17 K20 ["createElement"]
       99 GETUPVAL                         R18 4
      100 GETTABLEKS                       R17 R18 K21 ["ContextStack"]
      102 DUPTABLE                         R18 K23 [{"providers"}]
      103 NEWTABLE                         R19 0 1
      105 GETUPVAL                         R21 0
      106 GETTABLEKS                       R20 R21 K20 ["createElement"]
      108 GETUPVAL                         R22 7
      109 GETTABLEKS                       R21 R22 K24 ["Provider"]
      111 CALL                             R20 1 -1
      112 SETLIST                          R19 R20 -1 [1]
      114 SETTABLEKS                       R19 R18 K22 ["providers"]
      116 DUPTABLE                         R19 K30 [{"NodeViewScroller", "NodeViewBackground", "NodeSelectionBox", "CompositorNodes", "InsertNodeMenuAnchor"}]
      117 GETUPVAL                         R21 0
      118 GETTABLEKS                       R20 R21 K20 ["createElement"]
      120 GETUPVAL                         R21 8
      121 DUPTABLE                         R22 K34 [{"absoluteSizeRef", "onRightClick", "ZIndex"}]
      122 SETTABLEKS                       R8 R22 K31 ["absoluteSizeRef"]
      124 SETTABLEKS                       R13 R22 K32 ["onRightClick"]
      126 LOADN                            R23 2
      127 SETTABLEKS                       R23 R22 K33 ["ZIndex"]
      129 CALL                             R20 2 1
      130 SETTABLEKS                       R20 R19 K25 ["NodeViewScroller"]
      132 GETUPVAL                         R21 0
      133 GETTABLEKS                       R20 R21 K20 ["createElement"]
      135 GETUPVAL                         R21 9
      136 DUPTABLE                         R22 K35 [{"absoluteSizeRef", "ZIndex"}]
      137 SETTABLEKS                       R8 R22 K31 ["absoluteSizeRef"]
      139 LOADN                            R23 0
      140 SETTABLEKS                       R23 R22 K33 ["ZIndex"]
      142 CALL                             R20 2 1
      143 SETTABLEKS                       R20 R19 K26 ["NodeViewBackground"]
      145 GETUPVAL                         R21 0
      146 GETTABLEKS                       R20 R21 K20 ["createElement"]
      148 GETUPVAL                         R21 10
      149 DUPTABLE                         R22 K36 [{"ZIndex"}]
      150 LOADN                            R23 3
      151 SETTABLEKS                       R23 R22 K33 ["ZIndex"]
      153 CALL                             R20 2 1
      154 SETTABLEKS                       R20 R19 K27 ["NodeSelectionBox"]
      156 GETUPVAL                         R21 0
      157 GETTABLEKS                       R20 R21 K20 ["createElement"]
      159 GETUPVAL                         R21 11
      160 DUPTABLE                         R22 K38 [{"FramePayload", "ZIndex", "absoluteSizeRef"}]
      161 SETTABLEKS                       R5 R22 K37 ["FramePayload"]
      163 LOADN                            R23 3
      164 SETTABLEKS                       R23 R22 K33 ["ZIndex"]
      166 SETTABLEKS                       R8 R22 K31 ["absoluteSizeRef"]
      168 CALL                             R20 2 1
      169 SETTABLEKS                       R20 R19 K28 ["CompositorNodes"]
      171 GETUPVAL                         R21 0
      172 GETTABLEKS                       R20 R21 K20 ["createElement"]
      174 GETUPVAL                         R21 12
      175 CALL                             R20 1 1
      176 SETTABLEKS                       R20 R19 K29 ["InsertNodeMenuAnchor"]
      178 CALL                             R16 3 1
      179 SETTABLEKS                       R16 R15 K18 ["CompositorConnectionContext"]
      181 MOVE                             R14 R15
      182 JUMP                             ; [+14]
      183 DUPTABLE                         R15 K40 [{"Empty"}]
      184 GETUPVAL                         R17 0
      185 GETTABLEKS                       R16 R17 K20 ["createElement"]
      187 GETUPVAL                         R17 13
      188 DUPTABLE                         R18 K42 [{"absoluteSizeRef", "nextZIndex"}]
      189 SETTABLEKS                       R8 R18 K31 ["absoluteSizeRef"]
      191 SETTABLEKS                       R4 R18 K41 ["nextZIndex"]
      193 CALL                             R16 2 1
      194 SETTABLEKS                       R16 R15 K39 ["Empty"]
      196 MOVE                             R14 R15
      197 GETUPVAL                         R16 0
      198 GETTABLEKS                       R15 R16 K20 ["createElement"]
      200 GETUPVAL                         R17 4
      201 GETTABLEKS                       R16 R17 K21 ["ContextStack"]
      203 DUPTABLE                         R17 K23 [{"providers"}]
      204 NEWTABLE                         R18 0 1
      206 GETUPVAL                         R20 0
      207 GETTABLEKS                       R19 R20 K20 ["createElement"]
      209 GETUPVAL                         R22 14
      210 GETTABLEKS                       R21 R22 K1 ["Context"]
      212 GETTABLEKS                       R20 R21 K24 ["Provider"]
      214 DUPTABLE                         R21 K44 [{"value"}]
      215 DUPTABLE                         R22 K47 [{"showMaskEditor", "setShowMaskEditor"}]
      216 SETTABLEKS                       R11 R22 K45 ["showMaskEditor"]
      218 SETTABLEKS                       R12 R22 K46 ["setShowMaskEditor"]
      220 SETTABLEKS                       R22 R21 K43 ["value"]
      222 CALL                             R19 2 -1
      223 SETLIST                          R18 R19 -1 [1]
      225 SETTABLEKS                       R18 R17 K22 ["providers"]
      227 DUPTABLE                         R18 K49 [{"Root"}]
      228 GETUPVAL                         R20 0
      229 GETTABLEKS                       R19 R20 K20 ["createElement"]
      231 GETUPVAL                         R21 5
      232 GETTABLEKS                       R20 R21 K50 ["View"]
      234 DUPTABLE                         R21 K53 [{"tag", "LayoutOrder"}]
      235 LOADK                            R22 K54 ["size-full-full col"]
      236 SETTABLEKS                       R22 R21 K51 ["tag"]
      238 GETTABLEKS                       R22 R0 K52 ["LayoutOrder"]
      240 SETTABLEKS                       R22 R21 K52 ["LayoutOrder"]
      242 DUPTABLE                         R22 K58 [{"MenuBar", "CanvasFrame", "MaskEditorPopup"}]
      243 GETUPVAL                         R24 0
      244 GETTABLEKS                       R23 R24 K20 ["createElement"]
      246 GETUPVAL                         R24 15
      247 DUPTABLE                         R25 K61 [{"LayoutOrder", "ZIndex", "menuOpen", "setMenuOpen"}]
      248 LOADN                            R26 1
      249 SETTABLEKS                       R26 R25 K52 ["LayoutOrder"]
      251 LOADN                            R26 2
      252 SETTABLEKS                       R26 R25 K33 ["ZIndex"]
      254 SETTABLEKS                       R9 R25 K59 ["menuOpen"]
      256 SETTABLEKS                       R10 R25 K60 ["setMenuOpen"]
      258 CALL                             R23 2 1
      259 SETTABLEKS                       R23 R22 K55 ["MenuBar"]
      261 GETUPVAL                         R24 0
      262 GETTABLEKS                       R23 R24 K20 ["createElement"]
      264 GETUPVAL                         R25 5
      265 GETTABLEKS                       R24 R25 K50 ["View"]
      267 DUPTABLE                         R25 K64 [{"LayoutOrder", "Size", "ref"}]
      268 LOADN                            R26 2
      269 SETTABLEKS                       R26 R25 K52 ["LayoutOrder"]
      271 GETIMPORT                        R26 K67 [UDim2.new]
      273 LOADN                            R27 1
      274 LOADN                            R28 0
      275 LOADN                            R29 1
      276 LOADN                            R30 224
      277 CALL                             R26 4 1
      278 SETTABLEKS                       R26 R25 K62 ["Size"]
      280 GETTABLEKS                       R26 R7 K68 ["setFrame"]
      282 SETTABLEKS                       R26 R25 K63 ["ref"]
      284 DUPTABLE                         R26 K71 [{"Canvas", "ParameterPane"}]
      285 GETUPVAL                         R28 0
      286 GETTABLEKS                       R27 R28 K20 ["createElement"]
      288 GETUPVAL                         R29 16
      289 GETTABLEKS                       R28 R29 K69 ["Canvas"]
      291 DUPTABLE                         R29 K83 [{"Size", "GraphRect", "ViewportRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundColor3", "CanvasBackgroundTransparency", "ViewportBackgroundColor3", "ViewportBackgroundTransparency", "childrenUnclipped"}]
      292 GETIMPORT                        R30 K85 [UDim2.fromScale]
      294 LOADN                            R31 1
      295 LOADN                            R32 1
      296 CALL                             R30 2 1
      297 SETTABLEKS                       R30 R29 K62 ["Size"]
      299 GETTABLEKS                       R30 R3 K86 ["renderedGraphRect"]
      301 SETTABLEKS                       R30 R29 K72 ["GraphRect"]
      303 GETTABLEKS                       R30 R3 K87 ["viewportRect"]
      305 SETTABLEKS                       R30 R29 K73 ["ViewportRect"]
      307 GETIMPORT                        R30 K89 [UDim.new]
      309 LOADN                            R31 0
      310 LOADN                            R32 0
      311 CALL                             R30 2 1
      312 SETTABLEKS                       R30 R29 K74 ["ViewportPaddingLeft"]
      314 GETIMPORT                        R30 K89 [UDim.new]
      316 LOADN                            R31 0
      317 LOADN                            R32 0
      318 CALL                             R30 2 1
      319 SETTABLEKS                       R30 R29 K75 ["ViewportPaddingRight"]
      321 GETIMPORT                        R30 K89 [UDim.new]
      323 LOADN                            R31 0
      324 LOADN                            R32 0
      325 CALL                             R30 2 1
      326 SETTABLEKS                       R30 R29 K76 ["ViewportPaddingBottom"]
      328 GETIMPORT                        R30 K89 [UDim.new]
      330 LOADN                            R31 0
      331 LOADN                            R32 0
      332 CALL                             R30 2 1
      333 SETTABLEKS                       R30 R29 K77 ["ViewportPaddingTop"]
      335 GETTABLEKS                       R33 R6 K90 ["Color"]
      337 GETTABLEKS                       R32 R33 K91 ["Surface"]
      339 GETTABLEKS                       R31 R32 K92 ["Surface_100"]
      341 GETTABLEKS                       R30 R31 K93 ["Color3"]
      343 SETTABLEKS                       R30 R29 K78 ["CanvasBackgroundColor3"]
      345 GETTABLEKS                       R33 R6 K90 ["Color"]
      347 GETTABLEKS                       R32 R33 K91 ["Surface"]
      349 GETTABLEKS                       R31 R32 K92 ["Surface_100"]
      351 GETTABLEKS                       R30 R31 K94 ["Transparency"]
      353 SETTABLEKS                       R30 R29 K79 ["CanvasBackgroundTransparency"]
      355 GETTABLEKS                       R33 R6 K90 ["Color"]
      357 GETTABLEKS                       R32 R33 K91 ["Surface"]
      359 GETTABLEKS                       R31 R32 K92 ["Surface_100"]
      361 GETTABLEKS                       R30 R31 K93 ["Color3"]
      363 SETTABLEKS                       R30 R29 K80 ["ViewportBackgroundColor3"]
      365 GETTABLEKS                       R33 R6 K90 ["Color"]
      367 GETTABLEKS                       R32 R33 K91 ["Surface"]
      369 GETTABLEKS                       R31 R32 K92 ["Surface_100"]
      371 GETTABLEKS                       R30 R31 K94 ["Transparency"]
      373 SETTABLEKS                       R30 R29 K81 ["ViewportBackgroundTransparency"]
      375 DUPTABLE                         R30 K97 [{"CanvasScrollingFrame", "Children"}]
      376 GETUPVAL                         R32 0
      377 GETTABLEKS                       R31 R32 K20 ["createElement"]
      379 GETUPVAL                         R32 17
      380 CALL                             R31 1 1
      381 SETTABLEKS                       R31 R30 K95 ["CanvasScrollingFrame"]
      383 GETUPVAL                         R32 0
      384 GETTABLEKS                       R31 R32 K20 ["createElement"]
      386 GETUPVAL                         R33 0
      387 GETTABLEKS                       R32 R33 K98 ["Fragment"]
      389 NEWTABLE                         R33 0 0
      391 MOVE                             R34 R14
      392 CALL                             R31 3 1
      393 SETTABLEKS                       R31 R30 K96 ["Children"]
      395 SETTABLEKS                       R30 R29 K82 ["childrenUnclipped"]
      397 CALL                             R27 2 1
      398 SETTABLEKS                       R27 R26 K69 ["Canvas"]
      400 GETUPVAL                         R28 0
      401 GETTABLEKS                       R27 R28 K20 ["createElement"]
      403 GETUPVAL                         R28 18
      404 CALL                             R27 1 1
      405 SETTABLEKS                       R27 R26 K70 ["ParameterPane"]
      407 CALL                             R23 3 1
      408 SETTABLEKS                       R23 R22 K56 ["CanvasFrame"]
      410 JUMPIFNOT                        R11 ; [+11]
      411 GETUPVAL                         R24 0
      412 GETTABLEKS                       R23 R24 K20 ["createElement"]
      414 GETUPVAL                         R24 19
      415 DUPTABLE                         R25 K100 [{"onClose"}]
      416 NEWCLOSURE                       R26 P2
      417 CAPTURE                          VAL R12
      418 SETTABLEKS                       R26 R25 K99 ["onClose"]
      420 CALL                             R23 2 1
      421 JUMP                             ; [+1]
      422 LOADNIL                          R23
      423 SETTABLEKS                       R23 R22 K57 ["MaskEditorPopup"]
      425 CALL                             R19 3 1
      426 SETTABLEKS                       R19 R18 K48 ["Root"]
      428 CALL                             R15 3 -1
      429 RETURN                           R15 -1

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
       48 GETTABLEKS                       R8 R0 K13 ["Parent"]
       50 GETTABLEKS                       R7 R8 K15 ["Graphing"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K6 ["Contexts"]
       57 GETTABLEKS                       R8 R9 K16 ["InsertNodeContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R11 R0 K8 ["Components"]
       64 GETTABLEKS                       R10 R11 K9 ["NodeView"]
       66 GETTABLEKS                       R9 R10 K17 ["InsertNodeMenuAnchor"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETIMPORT                        R12 K1 [script]
       73 GETTABLEKS                       R11 R12 K18 ["Masks"]
       75 GETTABLEKS                       R10 R11 K19 ["MaskEditorPopup"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R12 R0 K6 ["Contexts"]
       82 GETTABLEKS                       R11 R12 K20 ["MaskEditorVisibilityContext"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R13 R0 K6 ["Contexts"]
       89 GETTABLEKS                       R12 R13 K21 ["NativeGraphContext"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R15 R0 K8 ["Components"]
       96 GETTABLEKS                       R14 R15 K9 ["NodeView"]
       98 GETTABLEKS                       R13 R14 K22 ["NodeScrollingFrame"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R16 R0 K8 ["Components"]
      105 GETTABLEKS                       R15 R16 K9 ["NodeView"]
      107 GETTABLEKS                       R14 R15 K23 ["NodeSelectionBox"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R17 R0 K8 ["Components"]
      114 GETTABLEKS                       R16 R17 K9 ["NodeView"]
      116 GETTABLEKS                       R15 R16 K24 ["NodeViewBackground"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R18 R0 K8 ["Components"]
      123 GETTABLEKS                       R17 R18 K9 ["NodeView"]
      125 GETTABLEKS                       R16 R17 K25 ["NodeViewScroller"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R19 R0 K8 ["Components"]
      132 GETTABLEKS                       R18 R19 K9 ["NodeView"]
      134 GETTABLEKS                       R17 R18 K26 ["ParameterPane"]
      136 CALL                             R16 1 1
      137 GETIMPORT                        R17 K5 [require]
      139 GETTABLEKS                       R19 R0 K13 ["Parent"]
      141 GETTABLEKS                       R18 R19 K27 ["React"]
      143 CALL                             R17 1 1
      144 GETIMPORT                        R18 K5 [require]
      146 GETTABLEKS                       R20 R0 K13 ["Parent"]
      148 GETTABLEKS                       R19 R20 K28 ["ReactUtils"]
      150 CALL                             R18 1 1
      151 GETIMPORT                        R19 K5 [require]
      153 GETTABLEKS                       R21 R0 K6 ["Contexts"]
      155 GETTABLEKS                       R20 R21 K29 ["ViewportRectContext"]
      157 CALL                             R19 1 1
      158 GETIMPORT                        R20 K5 [require]
      160 GETTABLEKS                       R22 R0 K30 ["Hooks"]
      162 GETTABLEKS                       R21 R22 K31 ["useAbsoluteSize"]
      164 CALL                             R20 1 1
      165 DUPCLOSURE                       R21 K32 [PROTO_2]
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R14
      170 DUPCLOSURE                       R22 K33 [PROTO_6]
      171 CAPTURE                          VAL R17
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R19
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R20
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R15
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R6
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R9
      191 RETURN                           R22 1
