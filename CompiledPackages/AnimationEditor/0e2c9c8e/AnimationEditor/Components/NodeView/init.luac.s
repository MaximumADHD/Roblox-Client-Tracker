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
       29 DUPTABLE                         R5 K8 [{"tag"}]
       30 LOADK                            R6 K9 ["size-full-full"]
       31 SETTABLEKS                       R6 R5 K7 ["tag"]
       33 DUPTABLE                         R6 K11 [{"CenterBox"}]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K5 ["createElement"]
       37 GETUPVAL                         R8 3
       38 GETTABLEKS                       R8 R8 K6 ["View"]
       40 DUPTABLE                         R9 K13 [{"tag", "ZIndex"}]
       41 LOADK                            R10 K14 ["col gap-xlarge auto-xy position-center-center anchor-center-center align-x-center"]
       42 SETTABLEKS                       R10 R9 K7 ["tag"]
       44 MOVE                             R10 R2
       45 CALL                             R10 0 1
       46 SETTABLEKS                       R10 R9 K12 ["ZIndex"]
       48 DUPTABLE                         R10 K17 [{"Text", "CreateGraph"}]
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R11 R11 K5 ["createElement"]
       52 GETUPVAL                         R12 3
       53 GETTABLEKS                       R12 R12 K15 ["Text"]
       55 DUPTABLE                         R13 K19 [{"tag", "Text", "LayoutOrder"}]
       56 LOADK                            R14 K20 ["h2 auto-x anchor-center-center"]
       57 SETTABLEKS                       R14 R13 K7 ["tag"]
       59 GETTABLEKS                       R15 R0 K21 ["canCreateGraph"]
       61 JUMPIFNOT                        R15 ; [+10]
       62 GETTABLEKS                       R15 R0 K22 ["selectedTargetName"]
       64 JUMPIFNOT                        R15 ; [+7]
       65 GETIMPORT                        R14 K25 [string.format]
       67 LOADK                            R15 K26 ["\"%s\" selected."]
       68 GETTABLEKS                       R16 R0 K22 ["selectedTargetName"]
       70 CALL                             R14 2 1
       71 JUMP                             ; [+1]
       72 LOADK                            R14 K27 ["Select an object to animate."]
       73 SETTABLEKS                       R14 R13 K15 ["Text"]
       75 LOADN                            R14 1
       76 SETTABLEKS                       R14 R13 K18 ["LayoutOrder"]
       78 CALL                             R11 2 1
       79 SETTABLEKS                       R11 R10 K15 ["Text"]
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R11 R11 K5 ["createElement"]
       84 GETUPVAL                         R12 3
       85 GETTABLEKS                       R12 R12 K28 ["Button"]
       87 DUPTABLE                         R13 K32 [{"tag", "text", "isDisabled", "LayoutOrder", "onActivated"}]
       88 LOADK                            R14 K33 ["size-medium auto-x anchor-center-center"]
       89 SETTABLEKS                       R14 R13 K7 ["tag"]
       91 LOADK                            R14 K34 ["Create Graph"]
       92 SETTABLEKS                       R14 R13 K29 ["text"]
       94 GETTABLEKS                       R15 R0 K21 ["canCreateGraph"]
       96 NOT                              R14 R15
       97 SETTABLEKS                       R14 R13 K30 ["isDisabled"]
       99 LOADN                            R14 2
      100 SETTABLEKS                       R14 R13 K18 ["LayoutOrder"]
      102 SETTABLEKS                       R1 R13 K31 ["onActivated"]
      104 CALL                             R11 2 1
      105 SETTABLEKS                       R11 R10 K16 ["CreateGraph"]
      107 CALL                             R7 3 1
      108 SETTABLEKS                       R7 R6 K10 ["CenterBox"]
      110 CALL                             R3 3 -1
      111 RETURN                           R3 -1

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
        0 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K4 [{"showMaskEditor", "setShowMaskEditor", "selectedMaskId", "setSelectedMaskId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["showMaskEditor"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setShowMaskEditor"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K2 ["selectedMaskId"]
       10 DUPCLOSURE                       R1 K5 [PROTO_5]
       11 SETTABLEKS                       R1 R0 K3 ["setSelectedMaskId"]
       13 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 JUMPIF                           R3 ; [+3]
        9 GETUPVAL                         R3 3
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+8]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["useContext"]
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R3 R3 K1 ["Context"]
       18 CALL                             R2 1 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R2
       21 GETUPVAL                         R4 2
       22 JUMPIFNOT                        R4 ; [+7]
       23 GETUPVAL                         R3 5
       24 GETTABLEKS                       R3 R3 K2 ["useSignalState"]
       26 GETTABLEKS                       R4 R2 K3 ["observeSelectedGraphInstanceId"]
       28 CALL                             R3 1 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K4 ["useState"]
       34 LOADK                            R5 K5 [""]
       35 CALL                             R4 1 2
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K4 ["useState"]
       39 LOADB                            R7 0
       40 CALL                             R6 1 2
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K6 ["useRef"]
       44 LOADNIL                          R9
       45 CALL                             R8 1 1
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K4 ["useState"]
       49 LOADNIL                          R10
       50 CALL                             R9 1 2
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R11 R11 K7 ["useCallback"]
       54 NEWCLOSURE                       R12 P0
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R10
       57 NEWTABLE                         R13 0 0
       59 CALL                             R11 2 1
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R12 R12 K8 ["useMemo"]
       63 NEWCLOSURE                       R13 P1
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R7
       66 NEWTABLE                         R14 0 1
       68 MOVE                             R15 R6
       69 SETLIST                          R14 R15 1 [1]
       71 CALL                             R12 2 1
       72 GETUPVAL                         R13 6
       73 GETTABLEKS                       R13 R13 K9 ["createNextOrder"]
       75 CALL                             R13 0 1
       76 GETUPVAL                         R15 3
       77 CALL                             R15 0 1
       78 JUMPIFNOT                        R15 ; [+7]
       79 GETUPVAL                         R14 5
       80 GETTABLEKS                       R14 R14 K2 ["useSignalState"]
       82 GETTABLEKS                       R15 R2 K3 ["observeSelectedGraphInstanceId"]
       84 CALL                             R14 1 1
       85 JUMP                             ; [+2]
       86 GETTABLEKS                       R14 R1 K10 ["selectedGraphInstanceId_DEPRECATED"]
       88 GETUPVAL                         R16 3
       89 CALL                             R16 0 1
       90 JUMPIFNOT                        R16 ; [+3]
       91 MOVE                             R15 R13
       92 CALL                             R15 0 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R15
       95 GETUPVAL                         R16 0
       96 GETTABLEKS                       R16 R16 K11 ["createElement"]
       98 GETUPVAL                         R18 7
       99 CALL                             R18 0 1
      100 JUMPIFNOT                        R18 ; [+4]
      101 GETUPVAL                         R17 0
      102 GETTABLEKS                       R17 R17 K12 ["Fragment"]
      104 JUMP                             ; [+3]
      105 GETUPVAL                         R17 6
      106 GETTABLEKS                       R17 R17 K13 ["ContextStack"]
      108 GETUPVAL                         R19 7
      109 CALL                             R19 0 1
      110 JUMPIFNOT                        R19 ; [+2]
      111 LOADNIL                          R18
      112 JUMP                             ; [+19]
      113 DUPTABLE                         R18 K15 [{"providers"}]
      114 NEWTABLE                         R19 0 1
      116 GETUPVAL                         R20 0
      117 GETTABLEKS                       R20 R20 K11 ["createElement"]
      119 GETUPVAL                         R21 8
      120 GETTABLEKS                       R21 R21 K1 ["Context"]
      122 GETTABLEKS                       R21 R21 K16 ["Provider"]
      124 DUPTABLE                         R22 K18 [{"value"}]
      125 SETTABLEKS                       R12 R22 K17 ["value"]
      127 CALL                             R20 2 -1
      128 SETLIST                          R19 R20 -1 [1]
      130 SETTABLEKS                       R19 R18 K14 ["providers"]
      132 DUPTABLE                         R19 K21 [{"Contents", "MaskEditorPopup"}]
      133 GETUPVAL                         R20 0
      134 GETTABLEKS                       R20 R20 K11 ["createElement"]
      136 GETUPVAL                         R21 9
      137 GETTABLEKS                       R21 R21 K22 ["View"]
      139 DUPTABLE                         R22 K25 [{"tag", "ref"}]
      140 LOADK                            R23 K26 ["size-full-full col"]
      141 SETTABLEKS                       R23 R22 K23 ["tag"]
      143 SETTABLEKS                       R11 R22 K24 ["ref"]
      145 DUPTABLE                         R23 K29 [{"MenuBar", "Contents", "GraphNotPlayedBannerOverlay"}]
      146 GETUPVAL                         R25 3
      147 CALL                             R25 0 1
      148 JUMPIFNOT                        R25 ; [+2]
      149 LOADNIL                          R24
      150 JUMP                             ; [+14]
      151 GETUPVAL                         R24 0
      152 GETTABLEKS                       R24 R24 K11 ["createElement"]
      154 GETUPVAL                         R25 10
      155 DUPTABLE                         R26 K33 [{"LayoutOrder", "menuOpen", "setMenuOpen"}]
      156 MOVE                             R27 R13
      157 CALL                             R27 0 1
      158 SETTABLEKS                       R27 R26 K30 ["LayoutOrder"]
      160 SETTABLEKS                       R4 R26 K31 ["menuOpen"]
      162 SETTABLEKS                       R5 R26 K32 ["setMenuOpen"]
      164 CALL                             R24 2 1
      165 SETTABLEKS                       R24 R23 K27 ["MenuBar"]
      167 GETUPVAL                         R24 0
      168 GETTABLEKS                       R24 R24 K11 ["createElement"]
      170 GETUPVAL                         R25 9
      171 GETTABLEKS                       R25 R25 K22 ["View"]
      173 DUPTABLE                         R26 K34 [{"tag", "LayoutOrder"}]
      174 LOADK                            R27 K35 ["size-full-0 fill"]
      175 SETTABLEKS                       R27 R26 K23 ["tag"]
      177 MOVE                             R27 R13
      178 CALL                             R27 0 1
      179 SETTABLEKS                       R27 R26 K30 ["LayoutOrder"]
      181 JUMPIFNOTEQKNIL                  R14 ; [+10]
      183 GETUPVAL                         R28 3
      184 CALL                             R28 0 1
      185 JUMPIF                           R28 ; [+6]
      186 GETUPVAL                         R27 0
      187 GETTABLEKS                       R27 R27 K11 ["createElement"]
      189 GETUPVAL                         R28 11
      190 CALL                             R27 1 1
      191 JUMP                             ; [+58]
      192 GETUPVAL                         R27 0
      193 GETTABLEKS                       R27 R27 K11 ["createElement"]
      195 GETUPVAL                         R28 12
      196 GETTABLEKS                       R28 R28 K36 ["GraphingCanvas"]
      198 DUPTABLE                         R29 K39 [{"initialGraphRect", "key"}]
      199 GETTABLEKS                       R30 R1 K40 ["graphRect"]
      201 SETTABLEKS                       R30 R29 K37 ["initialGraphRect"]
      203 GETUPVAL                         R31 2
      204 JUMPIFNOT                        R31 ; [+7]
      205 LOADK                            R31 K41 ["Graph_%*"]
      206 MOVE                             R33 R3
      207 NAMECALL                         R31 R31 K42 ["format"]
      209 CALL                             R31 2 1
      210 MOVE                             R30 R31
      211 JUMP                             ; [+1]
      212 LOADNIL                          R30
      213 SETTABLEKS                       R30 R29 K38 ["key"]
      215 DUPTABLE                         R30 K44 [{"MenuItemsContext"}]
      216 GETUPVAL                         R32 3
      217 CALL                             R32 0 1
      218 JUMPIFNOT                        R32 ; [+27]
      219 GETUPVAL                         R31 0
      220 GETTABLEKS                       R31 R31 K11 ["createElement"]
      222 GETUPVAL                         R32 13
      223 GETTABLEKS                       R32 R32 K16 ["Provider"]
      225 NEWTABLE                         R33 0 0
      227 DUPTABLE                         R34 K46 [{"MenuBarPortal"}]
      228 GETUPVAL                         R35 0
      229 GETTABLEKS                       R35 R35 K11 ["createElement"]
      231 GETUPVAL                         R36 14
      232 DUPTABLE                         R37 K48 [{"LayoutOrder", "menuOpen", "setMenuOpen", "portalTarget"}]
      233 SETTABLEKS                       R15 R37 K30 ["LayoutOrder"]
      235 SETTABLEKS                       R4 R37 K31 ["menuOpen"]
      237 SETTABLEKS                       R5 R37 K32 ["setMenuOpen"]
      239 SETTABLEKS                       R9 R37 K47 ["portalTarget"]
      241 CALL                             R35 2 1
      242 SETTABLEKS                       R35 R34 K45 ["MenuBarPortal"]
      244 CALL                             R31 3 1
      245 JUMP                             ; [+1]
      246 LOADNIL                          R31
      247 SETTABLEKS                       R31 R30 K43 ["MenuItemsContext"]
      249 CALL                             R27 3 1
      250 CALL                             R24 3 1
      251 SETTABLEKS                       R24 R23 K19 ["Contents"]
      253 GETUPVAL                         R24 0
      254 GETTABLEKS                       R24 R24 K11 ["createElement"]
      256 GETUPVAL                         R25 15
      257 DUPTABLE                         R26 K50 [{"anchorRef"}]
      258 SETTABLEKS                       R8 R26 K49 ["anchorRef"]
      260 CALL                             R24 2 1
      261 SETTABLEKS                       R24 R23 K28 ["GraphNotPlayedBannerOverlay"]
      263 CALL                             R20 3 1
      264 SETTABLEKS                       R20 R19 K19 ["Contents"]
      266 GETUPVAL                         R21 7
      267 CALL                             R21 0 1
      268 JUMPIF                           R21 ; [+1]
      269 JUMPIFNOT                        R6 ; [+16]
      270 GETUPVAL                         R20 0
      271 GETTABLEKS                       R20 R20 K11 ["createElement"]
      273 GETUPVAL                         R21 16
      274 DUPTABLE                         R22 K52 [{"onClose"}]
      275 GETUPVAL                         R24 7
      276 CALL                             R24 0 1
      277 JUMPIF                           R24 ; [+3]
      278 NEWCLOSURE                       R23 P2
      279 CAPTURE                          VAL R7
      280 JUMP                             ; [+1]
      281 DUPCLOSURE                       R23 K53 [PROTO_8]
      282 SETTABLEKS                       R23 R22 K51 ["onClose"]
      284 CALL                             R20 2 1
      285 JUMP                             ; [+1]
      286 LOADNIL                          R20
      287 SETTABLEKS                       R20 R19 K20 ["MaskEditorPopup"]
      289 CALL                             R16 3 -1
      290 RETURN                           R16 -1

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
       25 GETTABLEKS                       R4 R0 K11 ["Flags"]
       27 GETTABLEKS                       R4 R4 K12 ["FFlagAnimationEditorFixViewportRectError"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Parent"]
       34 GETTABLEKS                       R5 R5 K14 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Components"]
       41 GETTABLEKS                       R6 R6 K7 ["NodeView"]
       43 GETTABLEKS                       R6 R6 K15 ["GraphNotPlayedBanner"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K16 ["Masks"]
       52 GETTABLEKS                       R7 R7 K17 ["MaskEditorPopup"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Contexts"]
       59 GETTABLEKS                       R8 R8 K18 ["MaskEditorVisibilityContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K9 ["Contexts"]
       66 GETTABLEKS                       R9 R9 K19 ["MenuItemsContext"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K9 ["Contexts"]
       73 GETTABLEKS                       R10 R10 K20 ["NativeGraphContext"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K13 ["Parent"]
       80 GETTABLEKS                       R11 R11 K21 ["NodeGraphing"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K13 ["Parent"]
       87 GETTABLEKS                       R12 R12 K22 ["React"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K13 ["Parent"]
       94 GETTABLEKS                       R13 R13 K23 ["ReactRoblox"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K13 ["Parent"]
      101 GETTABLEKS                       R14 R14 K24 ["ReactUtils"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K9 ["Contexts"]
      108 GETTABLEKS                       R15 R15 K25 ["SelectedGraphContext"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K13 ["Parent"]
      115 GETTABLEKS                       R16 R16 K26 ["SignalsReact"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K11 ["Flags"]
      122 GETTABLEKS                       R17 R17 K27 ["getFFlagAnimGraphUIMaskMenu"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K11 ["Flags"]
      129 GETTABLEKS                       R18 R18 K28 ["getFFlagAnimGraphUI_RunTimeDebug"]
      131 CALL                             R17 1 1
      132 DUPCLOSURE                       R18 K29 [PROTO_2]
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R4
      137 DUPCLOSURE                       R19 K30 [PROTO_3]
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R1
      141 DUPCLOSURE                       R20 K31 [PROTO_9]
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R6
      159 RETURN                           R20 1
