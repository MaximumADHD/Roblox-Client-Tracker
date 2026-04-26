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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeRenderedGraphRect"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["observeViewportRect"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K2 ["current"]
       13 JUMPIFNOT                        R3 ; [+5]
       14 GETTABLEKS                       R4 R3 K3 ["update"]
       16 MOVE                             R5 R1
       17 MOVE                             R6 R2
       18 CALL                             R4 2 0
       19 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["createEffect"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["setFrame"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
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
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R3 R4 K2 ["createNextOrder"]
       17 CALL                             R3 0 1
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R5 R6 K3 ["Hooks"]
       21 GETTABLEKS                       R4 R5 K4 ["useTokens"]
       23 CALL                             R4 0 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K0 ["useContext"]
       27 GETUPVAL                         R7 5
       28 GETTABLEKS                       R6 R7 K1 ["Context"]
       30 CALL                             R5 1 1
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
       49 GETTABLEKS                       R12 R13 K7 ["useRef"]
       51 LOADNIL                          R13
       52 CALL                             R12 1 1
       53 GETUPVAL                         R14 0
       54 GETTABLEKS                       R13 R14 K8 ["useEffect"]
       56 NEWCLOSURE                       R14 P0
       57 CAPTURE                          UPVAL U7
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R5
       60 NEWTABLE                         R15 0 2
       62 GETTABLEKS                       R16 R5 K9 ["setAbsoluteSize"]
       64 GETTABLEKS                       R17 R6 K10 ["observeAbsoluteSize"]
       66 SETLIST                          R15 R16 2 [1]
       68 CALL                             R13 2 0
       69 GETUPVAL                         R14 0
       70 GETTABLEKS                       R13 R14 K11 ["useCallback"]
       72 NEWCLOSURE                       R14 P1
       73 CAPTURE                          VAL R1
       74 NEWTABLE                         R15 0 1
       76 GETTABLEKS                       R16 R1 K12 ["showMenu"]
       78 SETLIST                          R15 R16 1 [1]
       80 CALL                             R13 2 1
       81 NEWTABLE                         R14 0 0
       83 GETTABLEKS                       R15 R2 K13 ["selectedGraphInstanceId"]
       85 JUMPIFNOT                        R15 ; [+56]
       86 DUPTABLE                         R15 K19 [{"NodeViewScroller", "NodeViewBackground", "NodeSelectionBox", "CompositorNodes", "ContextMenuAnchor"}]
       87 GETUPVAL                         R17 0
       88 GETTABLEKS                       R16 R17 K20 ["createElement"]
       90 GETUPVAL                         R17 8
       91 DUPTABLE                         R18 K23 [{"onRightClick", "ZIndex"}]
       92 SETTABLEKS                       R13 R18 K21 ["onRightClick"]
       94 LOADN                            R19 2
       95 SETTABLEKS                       R19 R18 K22 ["ZIndex"]
       97 CALL                             R16 2 1
       98 SETTABLEKS                       R16 R15 K14 ["NodeViewScroller"]
      100 GETUPVAL                         R17 0
      101 GETTABLEKS                       R16 R17 K20 ["createElement"]
      103 GETUPVAL                         R17 9
      104 DUPTABLE                         R18 K24 [{"ZIndex"}]
      105 LOADN                            R19 0
      106 SETTABLEKS                       R19 R18 K22 ["ZIndex"]
      108 CALL                             R16 2 1
      109 SETTABLEKS                       R16 R15 K15 ["NodeViewBackground"]
      111 GETUPVAL                         R17 0
      112 GETTABLEKS                       R16 R17 K20 ["createElement"]
      114 GETUPVAL                         R17 10
      115 DUPTABLE                         R18 K24 [{"ZIndex"}]
      116 LOADN                            R19 3
      117 SETTABLEKS                       R19 R18 K22 ["ZIndex"]
      119 CALL                             R16 2 1
      120 SETTABLEKS                       R16 R15 K16 ["NodeSelectionBox"]
      122 GETUPVAL                         R17 0
      123 GETTABLEKS                       R16 R17 K20 ["createElement"]
      125 GETUPVAL                         R17 11
      126 DUPTABLE                         R18 K24 [{"ZIndex"}]
      127 LOADN                            R19 3
      128 SETTABLEKS                       R19 R18 K22 ["ZIndex"]
      130 CALL                             R16 2 1
      131 SETTABLEKS                       R16 R15 K17 ["CompositorNodes"]
      133 GETUPVAL                         R17 0
      134 GETTABLEKS                       R16 R17 K20 ["createElement"]
      136 GETUPVAL                         R17 12
      137 CALL                             R16 1 1
      138 SETTABLEKS                       R16 R15 K18 ["ContextMenuAnchor"]
      140 MOVE                             R14 R15
      141 JUMP                             ; [+12]
      142 DUPTABLE                         R15 K26 [{"Empty"}]
      143 GETUPVAL                         R17 0
      144 GETTABLEKS                       R16 R17 K20 ["createElement"]
      146 GETUPVAL                         R17 13
      147 DUPTABLE                         R18 K28 [{"nextZIndex"}]
      148 SETTABLEKS                       R3 R18 K27 ["nextZIndex"]
      150 CALL                             R16 2 1
      151 SETTABLEKS                       R16 R15 K25 ["Empty"]
      153 MOVE                             R14 R15
      154 GETUPVAL                         R16 0
      155 GETTABLEKS                       R15 R16 K29 ["useLayoutEffect"]
      157 NEWCLOSURE                       R16 P2
      158 CAPTURE                          UPVAL U14
      159 CAPTURE                          UPVAL U7
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R12
      162 NEWTABLE                         R17 0 2
      164 GETTABLEKS                       R18 R5 K30 ["observeViewportRect"]
      166 GETTABLEKS                       R19 R5 K31 ["observeRenderedGraphRect"]
      168 SETLIST                          R17 R18 2 [1]
      170 CALL                             R15 2 0
      171 GETUPVAL                         R16 14
      172 CALL                             R16 0 1
      173 JUMPIF                           R16 ; [+7]
      174 GETUPVAL                         R16 15
      175 GETTABLEKS                       R15 R16 K32 ["useSignalState"]
      177 GETTABLEKS                       R16 R5 K30 ["observeViewportRect"]
      179 CALL                             R15 1 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R15
      182 GETUPVAL                         R17 14
      183 CALL                             R17 0 1
      184 JUMPIF                           R17 ; [+7]
      185 GETUPVAL                         R17 15
      186 GETTABLEKS                       R16 R17 K32 ["useSignalState"]
      188 GETTABLEKS                       R17 R5 K31 ["observeRenderedGraphRect"]
      190 CALL                             R16 1 1
      191 JUMP                             ; [+1]
      192 LOADNIL                          R16
      193 GETUPVAL                         R18 0
      194 GETTABLEKS                       R17 R18 K11 ["useCallback"]
      196 NEWCLOSURE                       R18 P3
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R6
      199 NEWTABLE                         R19 0 1
      201 GETTABLEKS                       R20 R6 K33 ["setFrame"]
      203 SETLIST                          R19 R20 1 [1]
      205 CALL                             R17 2 1
      206 GETUPVAL                         R19 0
      207 GETTABLEKS                       R18 R19 K20 ["createElement"]
      209 GETUPVAL                         R20 3
      210 GETTABLEKS                       R19 R20 K34 ["ContextStack"]
      212 DUPTABLE                         R20 K36 [{"providers"}]
      213 NEWTABLE                         R21 0 1
      215 GETUPVAL                         R23 0
      216 GETTABLEKS                       R22 R23 K20 ["createElement"]
      218 GETUPVAL                         R25 16
      219 GETTABLEKS                       R24 R25 K1 ["Context"]
      221 GETTABLEKS                       R23 R24 K37 ["Provider"]
      223 DUPTABLE                         R24 K39 [{"value"}]
      224 DUPTABLE                         R25 K42 [{"showMaskEditor", "setShowMaskEditor"}]
      225 SETTABLEKS                       R9 R25 K40 ["showMaskEditor"]
      227 SETTABLEKS                       R10 R25 K41 ["setShowMaskEditor"]
      229 SETTABLEKS                       R25 R24 K38 ["value"]
      231 CALL                             R22 2 -1
      232 SETLIST                          R21 R22 -1 [1]
      234 SETTABLEKS                       R21 R20 K35 ["providers"]
      236 DUPTABLE                         R21 K44 [{"Root"}]
      237 GETUPVAL                         R23 0
      238 GETTABLEKS                       R22 R23 K20 ["createElement"]
      240 GETUPVAL                         R24 4
      241 GETTABLEKS                       R23 R24 K45 ["View"]
      243 DUPTABLE                         R24 K48 [{"tag", "LayoutOrder"}]
      244 LOADK                            R25 K49 ["size-full-full col"]
      245 SETTABLEKS                       R25 R24 K46 ["tag"]
      247 GETTABLEKS                       R25 R0 K47 ["LayoutOrder"]
      249 SETTABLEKS                       R25 R24 K47 ["LayoutOrder"]
      251 DUPTABLE                         R25 K54 [{"MenuBar", "CanvasFrame", "MaskEditorPopup", "GraphNotPlayedBannerOverlay"}]
      252 GETUPVAL                         R27 0
      253 GETTABLEKS                       R26 R27 K20 ["createElement"]
      255 GETUPVAL                         R27 17
      256 DUPTABLE                         R28 K57 [{"LayoutOrder", "ZIndex", "menuOpen", "setMenuOpen"}]
      257 LOADN                            R29 1
      258 SETTABLEKS                       R29 R28 K47 ["LayoutOrder"]
      260 LOADN                            R29 2
      261 SETTABLEKS                       R29 R28 K22 ["ZIndex"]
      263 SETTABLEKS                       R7 R28 K55 ["menuOpen"]
      265 SETTABLEKS                       R8 R28 K56 ["setMenuOpen"]
      267 CALL                             R26 2 1
      268 SETTABLEKS                       R26 R25 K50 ["MenuBar"]
      270 GETUPVAL                         R27 0
      271 GETTABLEKS                       R26 R27 K20 ["createElement"]
      273 GETUPVAL                         R28 4
      274 GETTABLEKS                       R27 R28 K45 ["View"]
      276 DUPTABLE                         R28 K60 [{"LayoutOrder", "Size", "ref"}]
      277 LOADN                            R29 2
      278 SETTABLEKS                       R29 R28 K47 ["LayoutOrder"]
      280 GETIMPORT                        R29 K63 [UDim2.new]
      282 LOADN                            R30 1
      283 LOADN                            R31 0
      284 LOADN                            R32 1
      285 LOADN                            R33 224
      286 CALL                             R29 4 1
      287 SETTABLEKS                       R29 R28 K58 ["Size"]
      289 SETTABLEKS                       R17 R28 K59 ["ref"]
      291 DUPTABLE                         R29 K66 [{"Canvas", "ParameterPane"}]
      292 GETUPVAL                         R31 0
      293 GETTABLEKS                       R30 R31 K20 ["createElement"]
      295 GETUPVAL                         R32 18
      296 GETTABLEKS                       R31 R32 K64 ["Canvas"]
      298 DUPTABLE                         R32 K78 [{"ref", "Size", "GraphRect", "ViewportRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundColor3", "CanvasBackgroundTransparency", "ViewportBackgroundColor3", "ViewportBackgroundTransparency", "childrenUnclipped"}]
      299 SETTABLEKS                       R12 R32 K59 ["ref"]
      301 GETIMPORT                        R33 K80 [UDim2.fromScale]
      303 LOADN                            R34 1
      304 LOADN                            R35 1
      305 CALL                             R33 2 1
      306 SETTABLEKS                       R33 R32 K58 ["Size"]
      308 SETTABLEKS                       R16 R32 K67 ["GraphRect"]
      310 SETTABLEKS                       R15 R32 K68 ["ViewportRect"]
      312 GETIMPORT                        R33 K82 [UDim.new]
      314 LOADN                            R34 0
      315 LOADN                            R35 0
      316 CALL                             R33 2 1
      317 SETTABLEKS                       R33 R32 K69 ["ViewportPaddingLeft"]
      319 GETIMPORT                        R33 K82 [UDim.new]
      321 LOADN                            R34 0
      322 LOADN                            R35 0
      323 CALL                             R33 2 1
      324 SETTABLEKS                       R33 R32 K70 ["ViewportPaddingRight"]
      326 GETIMPORT                        R33 K82 [UDim.new]
      328 LOADN                            R34 0
      329 LOADN                            R35 0
      330 CALL                             R33 2 1
      331 SETTABLEKS                       R33 R32 K71 ["ViewportPaddingBottom"]
      333 GETIMPORT                        R33 K82 [UDim.new]
      335 LOADN                            R34 0
      336 LOADN                            R35 0
      337 CALL                             R33 2 1
      338 SETTABLEKS                       R33 R32 K72 ["ViewportPaddingTop"]
      340 GETTABLEKS                       R36 R4 K83 ["Color"]
      342 GETTABLEKS                       R35 R36 K84 ["Surface"]
      344 GETTABLEKS                       R34 R35 K85 ["Surface_100"]
      346 GETTABLEKS                       R33 R34 K86 ["Color3"]
      348 SETTABLEKS                       R33 R32 K73 ["CanvasBackgroundColor3"]
      350 GETTABLEKS                       R36 R4 K83 ["Color"]
      352 GETTABLEKS                       R35 R36 K84 ["Surface"]
      354 GETTABLEKS                       R34 R35 K85 ["Surface_100"]
      356 GETTABLEKS                       R33 R34 K87 ["Transparency"]
      358 SETTABLEKS                       R33 R32 K74 ["CanvasBackgroundTransparency"]
      360 GETTABLEKS                       R36 R4 K83 ["Color"]
      362 GETTABLEKS                       R35 R36 K84 ["Surface"]
      364 GETTABLEKS                       R34 R35 K85 ["Surface_100"]
      366 GETTABLEKS                       R33 R34 K86 ["Color3"]
      368 SETTABLEKS                       R33 R32 K75 ["ViewportBackgroundColor3"]
      370 GETTABLEKS                       R36 R4 K83 ["Color"]
      372 GETTABLEKS                       R35 R36 K84 ["Surface"]
      374 GETTABLEKS                       R34 R35 K85 ["Surface_100"]
      376 GETTABLEKS                       R33 R34 K87 ["Transparency"]
      378 SETTABLEKS                       R33 R32 K76 ["ViewportBackgroundTransparency"]
      380 DUPTABLE                         R33 K90 [{"CanvasScrollingFrame", "Children"}]
      381 GETUPVAL                         R35 0
      382 GETTABLEKS                       R34 R35 K20 ["createElement"]
      384 GETUPVAL                         R35 19
      385 CALL                             R34 1 1
      386 SETTABLEKS                       R34 R33 K88 ["CanvasScrollingFrame"]
      388 GETUPVAL                         R35 0
      389 GETTABLEKS                       R34 R35 K20 ["createElement"]
      391 GETUPVAL                         R36 0
      392 GETTABLEKS                       R35 R36 K91 ["Fragment"]
      394 NEWTABLE                         R36 0 0
      396 MOVE                             R37 R14
      397 CALL                             R34 3 1
      398 SETTABLEKS                       R34 R33 K89 ["Children"]
      400 SETTABLEKS                       R33 R32 K77 ["childrenUnclipped"]
      402 CALL                             R30 2 1
      403 SETTABLEKS                       R30 R29 K64 ["Canvas"]
      405 GETUPVAL                         R31 0
      406 GETTABLEKS                       R30 R31 K20 ["createElement"]
      408 GETUPVAL                         R31 20
      409 DUPTABLE                         R32 K93 [{"canvasFrameRef"}]
      410 SETTABLEKS                       R11 R32 K92 ["canvasFrameRef"]
      412 CALL                             R30 2 1
      413 SETTABLEKS                       R30 R29 K65 ["ParameterPane"]
      415 CALL                             R26 3 1
      416 SETTABLEKS                       R26 R25 K51 ["CanvasFrame"]
      418 JUMPIFNOT                        R9 ; [+11]
      419 GETUPVAL                         R27 0
      420 GETTABLEKS                       R26 R27 K20 ["createElement"]
      422 GETUPVAL                         R27 21
      423 DUPTABLE                         R28 K95 [{"onClose"}]
      424 NEWCLOSURE                       R29 P4
      425 CAPTURE                          VAL R10
      426 SETTABLEKS                       R29 R28 K94 ["onClose"]
      428 CALL                             R26 2 1
      429 JUMP                             ; [+1]
      430 LOADNIL                          R26
      431 SETTABLEKS                       R26 R25 K52 ["MaskEditorPopup"]
      433 GETUPVAL                         R27 0
      434 GETTABLEKS                       R26 R27 K20 ["createElement"]
      436 GETUPVAL                         R27 22
      437 DUPTABLE                         R28 K97 [{"anchorRef"}]
      438 SETTABLEKS                       R11 R28 K96 ["anchorRef"]
      440 CALL                             R26 2 1
      441 SETTABLEKS                       R26 R25 K53 ["GraphNotPlayedBannerOverlay"]
      443 CALL                             R22 3 1
      444 SETTABLEKS                       R22 R21 K43 ["Root"]
      446 CALL                             R18 3 -1
      447 RETURN                           R18 -1

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
      176 GETTABLEKS                       R24 R0 K32 ["Flags"]
      178 GETTABLEKS                       R23 R24 K33 ["getFFlagAnimationEditorZoomJump"]
      180 CALL                             R22 1 1
      181 GETIMPORT                        R23 K5 [require]
      183 GETTABLEKS                       R25 R0 K34 ["Hooks"]
      185 GETTABLEKS                       R24 R25 K35 ["useAbsoluteSize"]
      187 CALL                             R23 1 1
      188 DUPCLOSURE                       R24 K36 [PROTO_2]
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R4
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R14
      193 DUPCLOSURE                       R25 K37 [PROTO_10]
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R8
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R18
      198 CAPTURE                          VAL R5
      199 CAPTURE                          VAL R21
      200 CAPTURE                          VAL R23
      201 CAPTURE                          VAL R19
      202 CAPTURE                          VAL R15
      203 CAPTURE                          VAL R14
      204 CAPTURE                          VAL R13
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R24
      208 CAPTURE                          VAL R22
      209 CAPTURE                          VAL R20
      210 CAPTURE                          VAL R10
      211 CAPTURE                          VAL R1
      212 CAPTURE                          VAL R7
      213 CAPTURE                          VAL R12
      214 CAPTURE                          VAL R16
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R6
      217 RETURN                           R25 1
