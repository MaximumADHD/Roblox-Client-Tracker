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
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

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
       34 GETTABLEKS                       R6 R6 K5 ["useState"]
       36 LOADK                            R7 K6 [""]
       37 CALL                             R6 1 2
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K7 ["useRef"]
       41 LOADNIL                          R9
       42 CALL                             R8 1 1
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R9 R9 K5 ["useState"]
       46 LOADNIL                          R10
       47 CALL                             R9 1 2
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R11 R11 K8 ["useCallback"]
       51 NEWCLOSURE                       R12 P0
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R10
       54 NEWTABLE                         R13 0 0
       56 CALL                             R11 2 1
       57 GETUPVAL                         R12 5
       58 GETTABLEKS                       R12 R12 K9 ["createNextOrder"]
       60 CALL                             R12 0 1
       61 GETUPVAL                         R14 6
       62 CALL                             R14 0 1
       63 JUMPIFNOT                        R14 ; [+7]
       64 GETUPVAL                         R13 4
       65 GETTABLEKS                       R13 R13 K2 ["useSignalState"]
       67 GETTABLEKS                       R14 R2 K3 ["observeSelectedGraphInstanceId"]
       69 CALL                             R13 1 1
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R13 R1 K10 ["selectedGraphInstanceId_DEPRECATED"]
       73 GETUPVAL                         R15 6
       74 CALL                             R15 0 1
       75 JUMPIFNOT                        R15 ; [+3]
       76 MOVE                             R14 R12
       77 CALL                             R14 0 1
       78 JUMP                             ; [+1]
       79 LOADNIL                          R14
       80 GETUPVAL                         R15 0
       81 GETTABLEKS                       R15 R15 K11 ["createElement"]
       83 GETUPVAL                         R16 0
       84 GETTABLEKS                       R16 R16 K12 ["Fragment"]
       86 LOADNIL                          R17
       87 DUPTABLE                         R18 K15 [{"Contents", "MaskEditorPopup"}]
       88 GETUPVAL                         R19 0
       89 GETTABLEKS                       R19 R19 K11 ["createElement"]
       91 GETUPVAL                         R20 7
       92 GETTABLEKS                       R20 R20 K16 ["View"]
       94 DUPTABLE                         R21 K20 [{["tag"] = "col size-full-full", ["ref"]}]
       95 SETTABLEKS                       R11 R21 K19 ["ref"]
       97 DUPTABLE                         R22 K23 [{"MenuBar", "Contents", "GraphNotPlayedBannerOverlay"}]
       98 GETUPVAL                         R24 6
       99 CALL                             R24 0 1
      100 JUMPIFNOT                        R24 ; [+2]
      101 LOADNIL                          R23
      102 JUMP                             ; [+14]
      103 GETUPVAL                         R23 0
      104 GETTABLEKS                       R23 R23 K11 ["createElement"]
      106 GETUPVAL                         R24 8
      107 DUPTABLE                         R25 K27 [{"LayoutOrder", "menuOpen", "setMenuOpen"}]
      108 MOVE                             R26 R12
      109 CALL                             R26 0 1
      110 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      112 SETTABLEKS                       R6 R25 K25 ["menuOpen"]
      114 SETTABLEKS                       R7 R25 K26 ["setMenuOpen"]
      116 CALL                             R23 2 1
      117 SETTABLEKS                       R23 R22 K21 ["MenuBar"]
      119 GETUPVAL                         R23 0
      120 GETTABLEKS                       R23 R23 K11 ["createElement"]
      122 GETUPVAL                         R24 7
      123 GETTABLEKS                       R24 R24 K16 ["View"]
      125 DUPTABLE                         R25 K29 [{["tag"] = "fill size-full-0", ["LayoutOrder"]}]
      126 MOVE                             R26 R12
      127 CALL                             R26 0 1
      128 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      130 JUMPIFEQKNIL                     R5 ; [+48]
      132 GETUPVAL                         R26 0
      133 GETTABLEKS                       R26 R26 K11 ["createElement"]
      135 GETUPVAL                         R27 9
      136 DUPTABLE                         R28 K32 [{"nodeId", "pluginGui"}]
      137 SETTABLEKS                       R5 R28 K30 ["nodeId"]
      139 GETTABLEKS                       R29 R0 K31 ["pluginGui"]
      141 SETTABLEKS                       R29 R28 K31 ["pluginGui"]
      143 DUPTABLE                         R29 K34 [{"MenuItemsContext"}]
      144 GETUPVAL                         R31 6
      145 CALL                             R31 0 1
      146 JUMPIFNOT                        R31 ; [+27]
      147 GETUPVAL                         R30 0
      148 GETTABLEKS                       R30 R30 K11 ["createElement"]
      150 GETUPVAL                         R31 10
      151 GETTABLEKS                       R31 R31 K35 ["Provider"]
      153 NEWTABLE                         R32 0 0
      155 DUPTABLE                         R33 K37 [{"MenuBarPortal"}]
      156 GETUPVAL                         R34 0
      157 GETTABLEKS                       R34 R34 K11 ["createElement"]
      159 GETUPVAL                         R35 11
      160 DUPTABLE                         R36 K39 [{"LayoutOrder", "menuOpen", "setMenuOpen", "portalTarget"}]
      161 SETTABLEKS                       R14 R36 K24 ["LayoutOrder"]
      163 SETTABLEKS                       R6 R36 K25 ["menuOpen"]
      165 SETTABLEKS                       R7 R36 K26 ["setMenuOpen"]
      167 SETTABLEKS                       R9 R36 K38 ["portalTarget"]
      169 CALL                             R34 2 1
      170 SETTABLEKS                       R34 R33 K36 ["MenuBarPortal"]
      172 CALL                             R30 3 1
      173 JUMP                             ; [+1]
      174 LOADNIL                          R30
      175 SETTABLEKS                       R30 R29 K33 ["MenuItemsContext"]
      177 CALL                             R26 3 1
      178 JUMP                             ; [+77]
      179 JUMPIFNOTEQKNIL                  R13 ; [+10]
      181 GETUPVAL                         R27 6
      182 CALL                             R27 0 1
      183 JUMPIF                           R27 ; [+6]
      184 GETUPVAL                         R26 0
      185 GETTABLEKS                       R26 R26 K11 ["createElement"]
      187 GETUPVAL                         R27 12
      188 CALL                             R26 1 1
      189 JUMP                             ; [+66]
      190 GETUPVAL                         R26 0
      191 GETTABLEKS                       R26 R26 K11 ["createElement"]
      193 GETUPVAL                         R27 13
      194 GETTABLEKS                       R27 R27 K40 ["GraphingCanvas"]
      196 DUPTABLE                         R28 K43 [{"initialGraphRect", "key"}]
      197 GETTABLEKS                       R29 R1 K44 ["graphRect"]
      199 SETTABLEKS                       R29 R28 K41 ["initialGraphRect"]
      201 LOADK                            R30 K45 ["Graph_%*"]
      202 MOVE                             R32 R4
      203 NAMECALL                         R30 R30 K46 ["format"]
      205 CALL                             R30 2 1
      206 MOVE                             R29 R30
      207 SETTABLEKS                       R29 R28 K42 ["key"]
      209 DUPTABLE                         R29 K48 [{"MenuItemsContext", "NodeStudioActionOverrides"}]
      210 GETUPVAL                         R31 6
      211 CALL                             R31 0 1
      212 JUMPIFNOT                        R31 ; [+27]
      213 GETUPVAL                         R30 0
      214 GETTABLEKS                       R30 R30 K11 ["createElement"]
      216 GETUPVAL                         R31 10
      217 GETTABLEKS                       R31 R31 K35 ["Provider"]
      219 NEWTABLE                         R32 0 0
      221 DUPTABLE                         R33 K37 [{"MenuBarPortal"}]
      222 GETUPVAL                         R34 0
      223 GETTABLEKS                       R34 R34 K11 ["createElement"]
      225 GETUPVAL                         R35 11
      226 DUPTABLE                         R36 K39 [{"LayoutOrder", "menuOpen", "setMenuOpen", "portalTarget"}]
      227 SETTABLEKS                       R14 R36 K24 ["LayoutOrder"]
      229 SETTABLEKS                       R6 R36 K25 ["menuOpen"]
      231 SETTABLEKS                       R7 R36 K26 ["setMenuOpen"]
      233 SETTABLEKS                       R9 R36 K38 ["portalTarget"]
      235 CALL                             R34 2 1
      236 SETTABLEKS                       R34 R33 K36 ["MenuBarPortal"]
      238 CALL                             R30 3 1
      239 JUMP                             ; [+1]
      240 LOADNIL                          R30
      241 SETTABLEKS                       R30 R29 K33 ["MenuItemsContext"]
      243 GETUPVAL                         R30 0
      244 GETTABLEKS                       R30 R30 K11 ["createElement"]
      246 GETUPVAL                         R31 14
      247 DUPTABLE                         R32 K49 [{"pluginGui"}]
      248 GETTABLEKS                       R33 R0 K31 ["pluginGui"]
      250 SETTABLEKS                       R33 R32 K31 ["pluginGui"]
      252 CALL                             R30 2 1
      253 SETTABLEKS                       R30 R29 K47 ["NodeStudioActionOverrides"]
      255 CALL                             R26 3 1
      256 CALL                             R23 3 1
      257 SETTABLEKS                       R23 R22 K13 ["Contents"]
      259 GETUPVAL                         R23 0
      260 GETTABLEKS                       R23 R23 K11 ["createElement"]
      262 GETUPVAL                         R24 15
      263 DUPTABLE                         R25 K51 [{"anchorRef"}]
      264 SETTABLEKS                       R8 R25 K50 ["anchorRef"]
      266 CALL                             R23 2 1
      267 SETTABLEKS                       R23 R22 K22 ["GraphNotPlayedBannerOverlay"]
      269 CALL                             R19 3 1
      270 SETTABLEKS                       R19 R18 K13 ["Contents"]
      272 GETUPVAL                         R19 0
      273 GETTABLEKS                       R19 R19 K11 ["createElement"]
      275 GETUPVAL                         R20 16
      276 CALL                             R19 1 1
      277 SETTABLEKS                       R19 R18 K14 ["MaskEditorPopup"]
      279 CALL                             R15 3 -1
      280 RETURN                           R15 -1

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
      133 GETTABLEKS                       R18 R18 K29 ["getFFlagAnimGraphUI_RunTimeDebug"]
      135 CALL                             R17 1 1
      136 GETIMPORT                        R18 K5 [require]
      138 GETTABLEKS                       R19 R0 K28 ["Flags"]
      140 GETTABLEKS                       R19 R19 K30 ["getFFlagAnimGraphUI_StateMachineNode"]
      142 CALL                             R18 1 1
      143 GETTABLEKS                       R19 R15 K31 ["NavContext"]
      145 DUPCLOSURE                       R20 K32 [PROTO_2]
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R3
      150 DUPCLOSURE                       R21 K33 [PROTO_3]
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R1
      154 DUPCLOSURE                       R22 K34 [PROTO_5]
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R5
      172 DUPCLOSURE                       R23 K35 [PROTO_6]
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R22
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R19
      177 RETURN                           R23 1
