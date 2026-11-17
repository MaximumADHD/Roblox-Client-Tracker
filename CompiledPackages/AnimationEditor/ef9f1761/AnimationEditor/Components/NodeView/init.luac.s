PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["close"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_5:
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
      118 GETUPVAL                         R18 4
      119 GETTABLEKS                       R18 R18 K2 ["useSignalState"]
      121 GETTABLEKS                       R19 R2 K3 ["observeSelectedGraphInstanceId"]
      123 CALL                             R18 1 1
      124 MOVE                             R19 R17
      125 CALL                             R19 0 1
      126 GETUPVAL                         R20 0
      127 GETTABLEKS                       R20 R20 K7 ["useEffect"]
      129 NEWCLOSURE                       R21 P3
      130 CAPTURE                          UPVAL U7
      131 CAPTURE                          VAL R3
      132 NEWTABLE                         R22 0 2
      134 ORK                              R23 R18 K8 [""]
      135 MOVE                             R24 R3
      136 SETLIST                          R22 R23 2 [1]
      138 CALL                             R20 2 0
      139 GETUPVAL                         R20 0
      140 GETTABLEKS                       R20 R20 K13 ["createElement"]
      142 GETUPVAL                         R21 0
      143 GETTABLEKS                       R21 R21 K14 ["Fragment"]
      145 LOADNIL                          R22
      146 DUPTABLE                         R23 K17 [{"Contents", "MaskEditorPopup"}]
      147 GETUPVAL                         R24 0
      148 GETTABLEKS                       R24 R24 K13 ["createElement"]
      150 GETUPVAL                         R25 8
      151 GETTABLEKS                       R25 R25 K18 ["View"]
      153 DUPTABLE                         R26 K22 [{["tag"] = "col size-full-full", ["ref"]}]
      154 SETTABLEKS                       R16 R26 K21 ["ref"]
      156 DUPTABLE                         R27 K24 [{"Contents", "GraphNotPlayedBannerOverlay"}]
      157 GETUPVAL                         R28 0
      158 GETTABLEKS                       R28 R28 K13 ["createElement"]
      160 GETUPVAL                         R29 8
      161 GETTABLEKS                       R29 R29 K18 ["View"]
      163 DUPTABLE                         R30 K27 [{["tag"] = "fill size-full-0", ["LayoutOrder"]}]
      164 MOVE                             R31 R17
      165 CALL                             R31 0 1
      166 SETTABLEKS                       R31 R30 K26 ["LayoutOrder"]
      168 JUMPIFEQKNIL                     R5 ; [+43]
      170 GETUPVAL                         R31 0
      171 GETTABLEKS                       R31 R31 K13 ["createElement"]
      173 GETUPVAL                         R32 9
      174 DUPTABLE                         R33 K30 [{"nodeId", "pluginGui"}]
      175 SETTABLEKS                       R5 R33 K28 ["nodeId"]
      177 GETTABLEKS                       R34 R0 K29 ["pluginGui"]
      179 SETTABLEKS                       R34 R33 K29 ["pluginGui"]
      181 DUPTABLE                         R34 K32 [{"MenuItemsContext"}]
      182 GETUPVAL                         R35 0
      183 GETTABLEKS                       R35 R35 K13 ["createElement"]
      185 GETUPVAL                         R36 10
      186 GETTABLEKS                       R36 R36 K33 ["Provider"]
      188 NEWTABLE                         R37 0 0
      190 DUPTABLE                         R38 K35 [{"MenuBarPortal"}]
      191 GETUPVAL                         R39 0
      192 GETTABLEKS                       R39 R39 K13 ["createElement"]
      194 GETUPVAL                         R40 11
      195 DUPTABLE                         R41 K39 [{"LayoutOrder", "menuOpen", "setMenuOpen", "portalTarget"}]
      196 SETTABLEKS                       R19 R41 K26 ["LayoutOrder"]
      198 SETTABLEKS                       R11 R41 K36 ["menuOpen"]
      200 SETTABLEKS                       R12 R41 K37 ["setMenuOpen"]
      202 SETTABLEKS                       R14 R41 K38 ["portalTarget"]
      204 CALL                             R39 2 1
      205 SETTABLEKS                       R39 R38 K34 ["MenuBarPortal"]
      207 CALL                             R35 3 1
      208 SETTABLEKS                       R35 R34 K31 ["MenuItemsContext"]
      210 CALL                             R31 3 1
      211 JUMP                             ; [+82]
      212 GETUPVAL                         R31 0
      213 GETTABLEKS                       R31 R31 K13 ["createElement"]
      215 GETUPVAL                         R32 12
      216 GETTABLEKS                       R32 R32 K40 ["GraphingCanvas"]
      218 DUPTABLE                         R33 K46 [{"initialGraphRect", "initialViewportPosition", "initialZoomRatio", "onSaveViewState", "key"}]
      219 GETTABLEKS                       R34 R1 K47 ["graphRect"]
      221 SETTABLEKS                       R34 R33 K41 ["initialGraphRect"]
      223 JUMPIFNOT                        R10 ; [+3]
      224 GETTABLEKS                       R34 R10 K48 ["position"]
      226 JUMP                             ; [+1]
      227 LOADNIL                          R34
      228 SETTABLEKS                       R34 R33 K42 ["initialViewportPosition"]
      230 JUMPIFNOT                        R10 ; [+3]
      231 GETTABLEKS                       R34 R10 K49 ["zoomRatio"]
      233 JUMP                             ; [+1]
      234 LOADNIL                          R34
      235 SETTABLEKS                       R34 R33 K43 ["initialZoomRatio"]
      237 GETUPVAL                         R35 5
      238 CALL                             R35 0 1
      239 JUMPIFNOT                        R35 ; [+2]
      240 MOVE                             R34 R9
      241 JUMP                             ; [+1]
      242 LOADNIL                          R34
      243 SETTABLEKS                       R34 R33 K44 ["onSaveViewState"]
      245 LOADK                            R34 K50 ["Graph_%*"]
      246 MOVE                             R36 R4
      247 NAMECALL                         R34 R34 K51 ["format"]
      249 CALL                             R34 2 1
      250 SETTABLEKS                       R34 R33 K45 ["key"]
      252 DUPTABLE                         R34 K53 [{"MenuItemsContext", "NodeStudioActionOverrides"}]
      253 GETUPVAL                         R35 0
      254 GETTABLEKS                       R35 R35 K13 ["createElement"]
      256 GETUPVAL                         R36 10
      257 GETTABLEKS                       R36 R36 K33 ["Provider"]
      259 NEWTABLE                         R37 0 0
      261 DUPTABLE                         R38 K35 [{"MenuBarPortal"}]
      262 GETUPVAL                         R39 0
      263 GETTABLEKS                       R39 R39 K13 ["createElement"]
      265 GETUPVAL                         R40 11
      266 DUPTABLE                         R41 K39 [{"LayoutOrder", "menuOpen", "setMenuOpen", "portalTarget"}]
      267 SETTABLEKS                       R19 R41 K26 ["LayoutOrder"]
      269 SETTABLEKS                       R11 R41 K36 ["menuOpen"]
      271 SETTABLEKS                       R12 R41 K37 ["setMenuOpen"]
      273 SETTABLEKS                       R14 R41 K38 ["portalTarget"]
      275 CALL                             R39 2 1
      276 SETTABLEKS                       R39 R38 K34 ["MenuBarPortal"]
      278 CALL                             R35 3 1
      279 SETTABLEKS                       R35 R34 K31 ["MenuItemsContext"]
      281 GETUPVAL                         R35 0
      282 GETTABLEKS                       R35 R35 K13 ["createElement"]
      284 GETUPVAL                         R36 13
      285 DUPTABLE                         R37 K54 [{"pluginGui"}]
      286 GETTABLEKS                       R38 R0 K29 ["pluginGui"]
      288 SETTABLEKS                       R38 R37 K29 ["pluginGui"]
      290 CALL                             R35 2 1
      291 SETTABLEKS                       R35 R34 K52 ["NodeStudioActionOverrides"]
      293 CALL                             R31 3 1
      294 CALL                             R28 3 1
      295 SETTABLEKS                       R28 R27 K15 ["Contents"]
      297 GETUPVAL                         R28 0
      298 GETTABLEKS                       R28 R28 K13 ["createElement"]
      300 GETUPVAL                         R29 14
      301 DUPTABLE                         R30 K56 [{"anchorRef"}]
      302 SETTABLEKS                       R13 R30 K55 ["anchorRef"]
      304 CALL                             R28 2 1
      305 SETTABLEKS                       R28 R27 K23 ["GraphNotPlayedBannerOverlay"]
      307 CALL                             R24 3 1
      308 SETTABLEKS                       R24 R23 K15 ["Contents"]
      310 GETUPVAL                         R24 0
      311 GETTABLEKS                       R24 R24 K13 ["createElement"]
      313 GETUPVAL                         R25 15
      314 CALL                             R24 1 1
      315 SETTABLEKS                       R24 R23 K16 ["MaskEditorPopup"]
      317 CALL                             R20 3 -1
      318 RETURN                           R20 -1

PROTO_6:
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
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K7 ["NodeView"]
       29 GETTABLEKS                       R4 R4 K11 ["GraphNotPlayedBanner"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K12 ["Masks"]
       38 GETTABLEKS                       R5 R5 K13 ["MaskEditorPopup"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K14 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K15 ["MenuItemsContext"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K14 ["Contexts"]
       52 GETTABLEKS                       R7 R7 K16 ["NativeGraphContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Parent"]
       59 GETTABLEKS                       R8 R8 K17 ["NodeGraphing"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Components"]
       66 GETTABLEKS                       R9 R9 K18 ["NodeStudioActionOverrides"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K9 ["Parent"]
       73 GETTABLEKS                       R10 R10 K19 ["React"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K9 ["Parent"]
       80 GETTABLEKS                       R11 R11 K20 ["ReactRoblox"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K9 ["Parent"]
       87 GETTABLEKS                       R12 R12 K21 ["ReactUtils"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K14 ["Contexts"]
       94 GETTABLEKS                       R13 R13 K22 ["SelectedGraphContext"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K9 ["Parent"]
      101 GETTABLEKS                       R14 R14 K23 ["SignalsReact"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K9 ["Parent"]
      108 GETTABLEKS                       R15 R15 K24 ["StateMachineGraphing"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K6 ["Components"]
      115 GETTABLEKS                       R16 R16 K7 ["NodeView"]
      117 GETTABLEKS                       R16 R16 K25 ["StateMachine"]
      119 GETTABLEKS                       R16 R16 K26 ["StateMachineView"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K5 [require]
      124 GETTABLEKS                       R17 R0 K27 ["Flags"]
      126 GETTABLEKS                       R17 R17 K28 ["getFFlagAnimGraphUI_PoseStateMachineNode"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K5 [require]
      131 GETTABLEKS                       R18 R0 K27 ["Flags"]
      133 GETTABLEKS                       R18 R18 K29 ["getFFlagAnimGraphUI_RestoreViewOnBack"]
      135 CALL                             R17 1 1
      136 GETTABLEKS                       R18 R14 K30 ["NavContext"]
      138 DUPCLOSURE                       R19 K31 [PROTO_0]
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R1
      142 DUPCLOSURE                       R20 K32 [PROTO_5]
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R4
      159 DUPCLOSURE                       R21 K33 [PROTO_6]
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R18
      164 RETURN                           R21 1
