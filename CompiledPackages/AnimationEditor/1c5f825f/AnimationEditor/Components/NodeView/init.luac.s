PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createNewGraphAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["useCallback"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R3 0 1
       14 GETTABLEKS                       R4 R0 K3 ["createNewGraphAsync"]
       16 SETLIST                          R3 R4 1 [1]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K4 ["createNextOrder"]
       22 CALL                             R2 0 1
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K5 ["createElement"]
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K6 ["View"]
       29 DUPTABLE                         R5 K9 [{["tag"] = "size-full-full"}]
       30 DUPTABLE                         R6 K11 [{"CenterBox"}]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K5 ["createElement"]
       34 GETUPVAL                         R8 3
       35 GETTABLEKS                       R8 R8 K6 ["View"]
       37 DUPTABLE                         R9 K14 [{["tag"] = "col align-x-center gap-xlarge position-center-center anchor-center-center auto-xy", ["ZIndex"]}]
       38 MOVE                             R10 R2
       39 CALL                             R10 0 1
       40 SETTABLEKS                       R10 R9 K13 ["ZIndex"]
       42 DUPTABLE                         R10 K17 [{"Text", "CreateGraph"}]
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R11 R11 K5 ["createElement"]
       46 GETUPVAL                         R12 3
       47 GETTABLEKS                       R12 R12 K15 ["Text"]
       49 DUPTABLE                         R13 K21 [{["tag"] = "anchor-center-center auto-x", ["Text"], ["LayoutOrder"] = 1}]
       50 GETTABLEKS                       R15 R0 K22 ["canCreateGraph"]
       52 JUMPIFNOT                        R15 ; [+10]
       53 GETTABLEKS                       R15 R0 K23 ["selectedTargetName"]
       55 JUMPIFNOT                        R15 ; [+7]
       56 GETIMPORT                        R14 K26 [string.format]
       58 LOADK                            R15 K27 ["\"%s\" selected."]
       59 GETTABLEKS                       R16 R0 K23 ["selectedTargetName"]
       61 CALL                             R14 2 1
       62 JUMP                             ; [+1]
       63 LOADK                            R14 K28 ["Select an object to animate."]
       64 SETTABLEKS                       R14 R13 K15 ["Text"]
       66 CALL                             R11 2 1
       67 SETTABLEKS                       R11 R10 K15 ["Text"]
       69 GETUPVAL                         R11 0
       70 GETTABLEKS                       R11 R11 K5 ["createElement"]
       72 GETUPVAL                         R12 3
       73 GETTABLEKS                       R12 R12 K29 ["Button"]
       75 DUPTABLE                         R13 K35 [{["tag"] = "anchor-center-center auto-x", ["text"] = "Create Graph", ["isDisabled"], ["LayoutOrder"] = 2, ["onActivated"]}]
       76 GETTABLEKS                       R15 R0 K22 ["canCreateGraph"]
       78 NOT                              R14 R15
       79 SETTABLEKS                       R14 R13 K32 ["isDisabled"]
       81 SETTABLEKS                       R1 R13 K34 ["onActivated"]
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K16 ["CreateGraph"]
       86 CALL                             R7 3 1
       87 SETTABLEKS                       R7 R6 K10 ["CenterBox"]
       89 CALL                             R3 3 -1
       90 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["portalTarget"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["createPortal"]
        8 DUPTABLE                         R2 K3 [{"MenuBar"}]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K4 ["createElement"]
       12 GETUPVAL                         R4 2
       13 DUPTABLE                         R5 K8 [{"LayoutOrder", "menuOpen", "setMenuOpen"}]
       14 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       16 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       18 GETTABLEKS                       R6 R0 K6 ["menuOpen"]
       20 SETTABLEKS                       R6 R5 K6 ["menuOpen"]
       22 GETTABLEKS                       R6 R0 K7 ["setMenuOpen"]
       24 SETTABLEKS                       R6 R5 K7 ["setMenuOpen"]
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R2 K2 ["MenuBar"]
       29 GETTABLEKS                       R3 R0 K0 ["portalTarget"]
       31 LOADK                            R4 K2 ["MenuBar"]
       32 CALL                             R1 3 -1
       33 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+12]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"graphId", "position", "zoomRatio"}]
        5 GETUPVAL                         R4 0
        6 SETTABLEKS                       R4 R3 K0 ["graphId"]
        8 SETTABLEKS                       R0 R3 K1 ["position"]
       10 SETTABLEKS                       R1 R3 K2 ["zoomRatio"]
       12 SETTABLEKS                       R3 R2 K4 ["current"]
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["close"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K2 ["useSignalState"]
       24 GETTABLEKS                       R5 R2 K3 ["observeSelectedGraphInstanceId"]
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 4
       28 GETTABLEKS                       R5 R5 K2 ["useSignalState"]
       30 GETTABLEKS                       R6 R3 K4 ["observeOpenNodeId"]
       32 CALL                             R5 1 1
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K5 ["useRef"]
       36 LOADNIL                          R7
       37 CALL                             R6 1 1
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K5 ["useRef"]
       41 LOADNIL                          R8
       42 CALL                             R7 1 1
       43 LOADB                            R8 0
       44 GETTABLEKS                       R9 R7 K6 ["current"]
       46 JUMPIFEQKNIL                     R9 ; [+5]
       48 JUMPIFEQKNIL                     R5 ; [+2]
       50 LOADB                            R8 0 +1
       51 LOADB                            R8 1
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R9 R9 K7 ["useEffect"]
       55 NEWCLOSURE                       R10 P0
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R5
       58 NEWTABLE                         R11 0 1
       60 ORK                              R12 R5 K8 [""]
       61 SETLIST                          R11 R12 1 [1]
       63 CALL                             R9 2 0
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K9 ["useCallback"]
       67 NEWCLOSURE                       R10 P1
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R6
       70 NEWTABLE                         R11 0 1
       72 ORK                              R12 R4 K8 [""]
       73 SETLIST                          R11 R12 1 [1]
       75 CALL                             R9 2 1
       76 LOADNIL                          R10
       77 GETUPVAL                         R11 5
       78 CALL                             R11 0 1
       79 JUMPIFNOT                        R11 ; [+10]
       80 JUMPIFNOT                        R8 ; [+9]
       81 GETTABLEKS                       R11 R6 K6 ["current"]
       83 JUMPIFEQKNIL                     R11 ; [+6]
       85 GETTABLEKS                       R12 R11 K10 ["graphId"]
       87 JUMPIFNOTEQ                      R12 R4 ; [+2]
       89 MOVE                             R10 R11
       90 GETUPVAL                         R11 0
       91 GETTABLEKS                       R11 R11 K11 ["useState"]
       93 LOADK                            R12 K8 [""]
       94 CALL                             R11 1 2
       95 GETUPVAL                         R13 0
       96 GETTABLEKS                       R13 R13 K5 ["useRef"]
       98 LOADNIL                          R14
       99 CALL                             R13 1 1
      100 GETUPVAL                         R14 0
      101 GETTABLEKS                       R14 R14 K11 ["useState"]
      103 LOADNIL                          R15
      104 CALL                             R14 1 2
      105 GETUPVAL                         R16 0
      106 GETTABLEKS                       R16 R16 K9 ["useCallback"]
      108 NEWCLOSURE                       R17 P2
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R15
      111 NEWTABLE                         R18 0 0
      113 CALL                             R16 2 1
      114 GETUPVAL                         R17 6
      115 GETTABLEKS                       R17 R17 K12 ["createNextOrder"]
      117 CALL                             R17 0 1
      118 GETUPVAL                         R19 7
      119 CALL                             R19 0 1
      120 JUMPIFNOT                        R19 ; [+7]
      121 GETUPVAL                         R18 4
      122 GETTABLEKS                       R18 R18 K2 ["useSignalState"]
      124 GETTABLEKS                       R19 R2 K3 ["observeSelectedGraphInstanceId"]
      126 CALL                             R18 1 1
      127 JUMP                             ; [+2]
      128 GETTABLEKS                       R18 R1 K13 ["selectedGraphInstanceId_DEPRECATED"]
      130 GETUPVAL                         R20 7
      131 CALL                             R20 0 1
      132 JUMPIFNOT                        R20 ; [+3]
      133 MOVE                             R19 R17
      134 CALL                             R19 0 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R19
      137 GETUPVAL                         R20 0
      138 GETTABLEKS                       R20 R20 K7 ["useEffect"]
      140 NEWCLOSURE                       R21 P3
      141 CAPTURE                          UPVAL U8
      142 CAPTURE                          VAL R3
      143 NEWTABLE                         R22 0 2
      145 ORK                              R23 R18 K8 [""]
      146 MOVE                             R24 R3
      147 SETLIST                          R22 R23 2 [1]
      149 CALL                             R20 2 0
      150 GETUPVAL                         R20 0
      151 GETTABLEKS                       R20 R20 K14 ["createElement"]
      153 GETUPVAL                         R21 0
      154 GETTABLEKS                       R21 R21 K15 ["Fragment"]
      156 LOADNIL                          R22
      157 DUPTABLE                         R23 K18 [{"Contents", "MaskEditorPopup"}]
      158 GETUPVAL                         R24 0
      159 GETTABLEKS                       R24 R24 K14 ["createElement"]
      161 GETUPVAL                         R25 9
      162 GETTABLEKS                       R25 R25 K19 ["View"]
      164 DUPTABLE                         R26 K23 [{["tag"] = "col size-full-full", ["ref"]}]
      165 SETTABLEKS                       R16 R26 K22 ["ref"]
      167 DUPTABLE                         R27 K26 [{"MenuBar", "Contents", "GraphNotPlayedBannerOverlay"}]
      168 GETUPVAL                         R29 7
      169 CALL                             R29 0 1
      170 JUMPIFNOT                        R29 ; [+2]
      171 LOADNIL                          R28
      172 JUMP                             ; [+14]
      173 GETUPVAL                         R28 0
      174 GETTABLEKS                       R28 R28 K14 ["createElement"]
      176 GETUPVAL                         R29 10
      177 DUPTABLE                         R30 K30 [{"LayoutOrder", "menuOpen", "setMenuOpen"}]
      178 MOVE                             R31 R17
      179 CALL                             R31 0 1
      180 SETTABLEKS                       R31 R30 K27 ["LayoutOrder"]
      182 SETTABLEKS                       R11 R30 K28 ["menuOpen"]
      184 SETTABLEKS                       R12 R30 K29 ["setMenuOpen"]
      186 CALL                             R28 2 1
      187 SETTABLEKS                       R28 R27 K24 ["MenuBar"]
      189 GETUPVAL                         R28 0
      190 GETTABLEKS                       R28 R28 K14 ["createElement"]
      192 GETUPVAL                         R29 9
      193 GETTABLEKS                       R29 R29 K19 ["View"]
      195 DUPTABLE                         R30 K32 [{["tag"] = "fill size-full-0", ["LayoutOrder"]}]
      196 MOVE                             R31 R17
      197 CALL                             R31 0 1
      198 SETTABLEKS                       R31 R30 K27 ["LayoutOrder"]
      200 JUMPIFEQKNIL                     R5 ; [+48]
      202 GETUPVAL                         R31 0
      203 GETTABLEKS                       R31 R31 K14 ["createElement"]
      205 GETUPVAL                         R32 11
      206 DUPTABLE                         R33 K35 [{"nodeId", "pluginGui"}]
      207 SETTABLEKS                       R5 R33 K33 ["nodeId"]
      209 GETTABLEKS                       R34 R0 K34 ["pluginGui"]
      211 SETTABLEKS                       R34 R33 K34 ["pluginGui"]
      213 DUPTABLE                         R34 K37 [{"MenuItemsContext"}]
      214 GETUPVAL                         R36 7
      215 CALL                             R36 0 1
      216 JUMPIFNOT                        R36 ; [+27]
      217 GETUPVAL                         R35 0
      218 GETTABLEKS                       R35 R35 K14 ["createElement"]
      220 GETUPVAL                         R36 12
      221 GETTABLEKS                       R36 R36 K38 ["Provider"]
      223 NEWTABLE                         R37 0 0
      225 DUPTABLE                         R38 K40 [{"MenuBarPortal"}]
      226 GETUPVAL                         R39 0
      227 GETTABLEKS                       R39 R39 K14 ["createElement"]
      229 GETUPVAL                         R40 13
      230 DUPTABLE                         R41 K42 [{"LayoutOrder", "menuOpen", "setMenuOpen", "portalTarget"}]
      231 SETTABLEKS                       R19 R41 K27 ["LayoutOrder"]
      233 SETTABLEKS                       R11 R41 K28 ["menuOpen"]
      235 SETTABLEKS                       R12 R41 K29 ["setMenuOpen"]
      237 SETTABLEKS                       R14 R41 K41 ["portalTarget"]
      239 CALL                             R39 2 1
      240 SETTABLEKS                       R39 R38 K39 ["MenuBarPortal"]
      242 CALL                             R35 3 1
      243 JUMP                             ; [+1]
      244 LOADNIL                          R35
      245 SETTABLEKS                       R35 R34 K36 ["MenuItemsContext"]
      247 CALL                             R31 3 1
      248 JUMP                             ; [+98]
      249 JUMPIFNOTEQKNIL                  R18 ; [+10]
      251 GETUPVAL                         R32 7
      252 CALL                             R32 0 1
      253 JUMPIF                           R32 ; [+6]
      254 GETUPVAL                         R31 0
      255 GETTABLEKS                       R31 R31 K14 ["createElement"]
      257 GETUPVAL                         R32 14
      258 CALL                             R31 1 1
      259 JUMP                             ; [+87]
      260 GETUPVAL                         R31 0
      261 GETTABLEKS                       R31 R31 K14 ["createElement"]
      263 GETUPVAL                         R32 15
      264 GETTABLEKS                       R32 R32 K43 ["GraphingCanvas"]
      266 DUPTABLE                         R33 K49 [{"initialGraphRect", "initialViewportPosition", "initialZoomRatio", "onSaveViewState", "key"}]
      267 GETTABLEKS                       R34 R1 K50 ["graphRect"]
      269 SETTABLEKS                       R34 R33 K44 ["initialGraphRect"]
      271 JUMPIFNOT                        R10 ; [+3]
      272 GETTABLEKS                       R34 R10 K51 ["position"]
      274 JUMP                             ; [+1]
      275 LOADNIL                          R34
      276 SETTABLEKS                       R34 R33 K45 ["initialViewportPosition"]
      278 JUMPIFNOT                        R10 ; [+3]
      279 GETTABLEKS                       R34 R10 K52 ["zoomRatio"]
      281 JUMP                             ; [+1]
      282 LOADNIL                          R34
      283 SETTABLEKS                       R34 R33 K46 ["initialZoomRatio"]
      285 GETUPVAL                         R35 5
      286 CALL                             R35 0 1
      287 JUMPIFNOT                        R35 ; [+2]
      288 MOVE                             R34 R9
      289 JUMP                             ; [+1]
      290 LOADNIL                          R34
      291 SETTABLEKS                       R34 R33 K47 ["onSaveViewState"]
      293 LOADK                            R34 K53 ["Graph_%*"]
      294 MOVE                             R36 R4
      295 NAMECALL                         R34 R34 K54 ["format"]
      297 CALL                             R34 2 1
      298 SETTABLEKS                       R34 R33 K48 ["key"]
      300 DUPTABLE                         R34 K56 [{"MenuItemsContext", "NodeStudioActionOverrides"}]
      301 GETUPVAL                         R36 7
      302 CALL                             R36 0 1
      303 JUMPIFNOT                        R36 ; [+27]
      304 GETUPVAL                         R35 0
      305 GETTABLEKS                       R35 R35 K14 ["createElement"]
      307 GETUPVAL                         R36 12
      308 GETTABLEKS                       R36 R36 K38 ["Provider"]
      310 NEWTABLE                         R37 0 0
      312 DUPTABLE                         R38 K40 [{"MenuBarPortal"}]
      313 GETUPVAL                         R39 0
      314 GETTABLEKS                       R39 R39 K14 ["createElement"]
      316 GETUPVAL                         R40 13
      317 DUPTABLE                         R41 K42 [{"LayoutOrder", "menuOpen", "setMenuOpen", "portalTarget"}]
      318 SETTABLEKS                       R19 R41 K27 ["LayoutOrder"]
      320 SETTABLEKS                       R11 R41 K28 ["menuOpen"]
      322 SETTABLEKS                       R12 R41 K29 ["setMenuOpen"]
      324 SETTABLEKS                       R14 R41 K41 ["portalTarget"]
      326 CALL                             R39 2 1
      327 SETTABLEKS                       R39 R38 K39 ["MenuBarPortal"]
      329 CALL                             R35 3 1
      330 JUMP                             ; [+1]
      331 LOADNIL                          R35
      332 SETTABLEKS                       R35 R34 K36 ["MenuItemsContext"]
      334 GETUPVAL                         R35 0
      335 GETTABLEKS                       R35 R35 K14 ["createElement"]
      337 GETUPVAL                         R36 16
      338 DUPTABLE                         R37 K57 [{"pluginGui"}]
      339 GETTABLEKS                       R38 R0 K34 ["pluginGui"]
      341 SETTABLEKS                       R38 R37 K34 ["pluginGui"]
      343 CALL                             R35 2 1
      344 SETTABLEKS                       R35 R34 K55 ["NodeStudioActionOverrides"]
      346 CALL                             R31 3 1
      347 CALL                             R28 3 1
      348 SETTABLEKS                       R28 R27 K16 ["Contents"]
      350 GETUPVAL                         R28 0
      351 GETTABLEKS                       R28 R28 K14 ["createElement"]
      353 GETUPVAL                         R29 17
      354 DUPTABLE                         R30 K59 [{"anchorRef"}]
      355 SETTABLEKS                       R13 R30 K58 ["anchorRef"]
      357 CALL                             R28 2 1
      358 SETTABLEKS                       R28 R27 K25 ["GraphNotPlayedBannerOverlay"]
      360 CALL                             R24 3 1
      361 SETTABLEKS                       R24 R23 K16 ["Contents"]
      363 GETUPVAL                         R24 0
      364 GETTABLEKS                       R24 R24 K14 ["createElement"]
      366 GETUPVAL                         R25 18
      367 CALL                             R24 1 1
      368 SETTABLEKS                       R24 R23 K17 ["MaskEditorPopup"]
      370 CALL                             R20 3 -1
      371 RETURN                           R20 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 2
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+13]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["createElement"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K1 ["Provider"]
       15 NEWTABLE                         R4 0 0
       17 DUPTABLE                         R5 K3 [{"Inner"}]
       18 SETTABLEKS                       R1 R5 K2 ["Inner"]
       20 CALL                             R2 3 -1
       21 RETURN                           R2 -1
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorMenu"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["CreateGraphContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R4 K12 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Components"]
       34 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       36 GETTABLEKS                       R5 R5 K13 ["GraphNotPlayedBanner"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K14 ["Masks"]
       45 GETTABLEKS                       R6 R6 K15 ["MaskEditorPopup"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Contexts"]
       52 GETTABLEKS                       R7 R7 K16 ["MenuItemsContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Contexts"]
       59 GETTABLEKS                       R8 R8 K17 ["NativeGraphContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K11 ["Parent"]
       66 GETTABLEKS                       R9 R9 K18 ["NodeGraphing"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K6 ["Components"]
       73 GETTABLEKS                       R10 R10 K19 ["NodeStudioActionOverrides"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K11 ["Parent"]
       80 GETTABLEKS                       R11 R11 K20 ["React"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K11 ["Parent"]
       87 GETTABLEKS                       R12 R12 K21 ["ReactRoblox"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K11 ["Parent"]
       94 GETTABLEKS                       R13 R13 K22 ["ReactUtils"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K9 ["Contexts"]
      101 GETTABLEKS                       R14 R14 K23 ["SelectedGraphContext"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K11 ["Parent"]
      108 GETTABLEKS                       R15 R15 K24 ["SignalsReact"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K11 ["Parent"]
      115 GETTABLEKS                       R16 R16 K25 ["StateMachineGraphing"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K6 ["Components"]
      122 GETTABLEKS                       R17 R17 K7 ["NodeView"]
      124 GETTABLEKS                       R17 R17 K26 ["StateMachine"]
      126 GETTABLEKS                       R17 R17 K27 ["StateMachineView"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K5 [require]
      131 GETTABLEKS                       R18 R0 K28 ["Flags"]
      133 GETTABLEKS                       R18 R18 K29 ["getFFlagAnimGraphUI_PoseStateMachineNode"]
      135 CALL                             R17 1 1
      136 GETIMPORT                        R18 K5 [require]
      138 GETTABLEKS                       R19 R0 K28 ["Flags"]
      140 GETTABLEKS                       R19 R19 K30 ["getFFlagAnimGraphUI_RestoreViewOnBack"]
      142 CALL                             R18 1 1
      143 GETIMPORT                        R19 K5 [require]
      145 GETTABLEKS                       R20 R0 K28 ["Flags"]
      147 GETTABLEKS                       R20 R20 K31 ["getFFlagAnimGraphUI_RunTimeDebug"]
      149 CALL                             R19 1 1
      150 GETTABLEKS                       R20 R15 K32 ["NavContext"]
      152 DUPCLOSURE                       R21 K33 [PROTO_2]
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R3
      157 DUPCLOSURE                       R22 K34 [PROTO_3]
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R1
      161 DUPCLOSURE                       R23 K35 [PROTO_8]
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R20
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R12
      169 CAPTURE                          VAL R19
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R6
      175 CAPTURE                          VAL R22
      176 CAPTURE                          VAL R21
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R5
      181 DUPCLOSURE                       R24 K36 [PROTO_9]
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R23
      184 CAPTURE                          VAL R17
      185 CAPTURE                          VAL R20
      186 RETURN                           R24 1
