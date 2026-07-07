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
        0 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K5 [{[1], ["setShowMaskEditor"], ["selectedMaskId"] = , ["setSelectedMaskId"]}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["showMaskEditor"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setShowMaskEditor"]
        7 DUPCLOSURE                       R1 K6 [PROTO_5]
        8 SETTABLEKS                       R1 R0 K4 ["setSelectedMaskId"]
       10 RETURN                           R0 1

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
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["useSignalState"]
       17 GETTABLEKS                       R4 R2 K3 ["observeSelectedGraphInstanceId"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K4 ["useState"]
       23 LOADK                            R5 K5 [""]
       24 CALL                             R4 1 2
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K4 ["useState"]
       28 LOADB                            R7 0
       29 CALL                             R6 1 2
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K6 ["useRef"]
       33 LOADNIL                          R9
       34 CALL                             R8 1 1
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K4 ["useState"]
       38 LOADNIL                          R10
       39 CALL                             R9 1 2
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K7 ["useCallback"]
       43 NEWCLOSURE                       R12 P0
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R10
       46 NEWTABLE                         R13 0 0
       48 CALL                             R11 2 1
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R12 R12 K8 ["useMemo"]
       52 NEWCLOSURE                       R13 P1
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R7
       55 NEWTABLE                         R14 0 1
       57 MOVE                             R15 R6
       58 SETLIST                          R14 R15 1 [1]
       60 CALL                             R12 2 1
       61 GETUPVAL                         R13 4
       62 GETTABLEKS                       R13 R13 K9 ["createNextOrder"]
       64 CALL                             R13 0 1
       65 GETUPVAL                         R15 5
       66 CALL                             R15 0 1
       67 JUMPIFNOT                        R15 ; [+7]
       68 GETUPVAL                         R14 3
       69 GETTABLEKS                       R14 R14 K2 ["useSignalState"]
       71 GETTABLEKS                       R15 R2 K3 ["observeSelectedGraphInstanceId"]
       73 CALL                             R14 1 1
       74 JUMP                             ; [+2]
       75 GETTABLEKS                       R14 R1 K10 ["selectedGraphInstanceId_DEPRECATED"]
       77 GETUPVAL                         R16 5
       78 CALL                             R16 0 1
       79 JUMPIFNOT                        R16 ; [+3]
       80 MOVE                             R15 R13
       81 CALL                             R15 0 1
       82 JUMP                             ; [+1]
       83 LOADNIL                          R15
       84 GETUPVAL                         R16 0
       85 GETTABLEKS                       R16 R16 K11 ["createElement"]
       87 GETUPVAL                         R18 6
       88 CALL                             R18 0 1
       89 JUMPIFNOT                        R18 ; [+4]
       90 GETUPVAL                         R17 0
       91 GETTABLEKS                       R17 R17 K12 ["Fragment"]
       93 JUMP                             ; [+3]
       94 GETUPVAL                         R17 4
       95 GETTABLEKS                       R17 R17 K13 ["ContextStack"]
       97 GETUPVAL                         R19 6
       98 CALL                             R19 0 1
       99 JUMPIFNOT                        R19 ; [+2]
      100 LOADNIL                          R18
      101 JUMP                             ; [+19]
      102 DUPTABLE                         R18 K15 [{"providers"}]
      103 NEWTABLE                         R19 0 1
      105 GETUPVAL                         R20 0
      106 GETTABLEKS                       R20 R20 K11 ["createElement"]
      108 GETUPVAL                         R21 7
      109 GETTABLEKS                       R21 R21 K1 ["Context"]
      111 GETTABLEKS                       R21 R21 K16 ["Provider"]
      113 DUPTABLE                         R22 K18 [{"value"}]
      114 SETTABLEKS                       R12 R22 K17 ["value"]
      116 CALL                             R20 2 -1
      117 SETLIST                          R19 R20 -1 [1]
      119 SETTABLEKS                       R19 R18 K14 ["providers"]
      121 DUPTABLE                         R19 K21 [{"Contents", "MaskEditorPopup"}]
      122 GETUPVAL                         R20 0
      123 GETTABLEKS                       R20 R20 K11 ["createElement"]
      125 GETUPVAL                         R21 8
      126 GETTABLEKS                       R21 R21 K22 ["View"]
      128 DUPTABLE                         R22 K26 [{["tag"] = "col size-full-full", ["ref"]}]
      129 SETTABLEKS                       R11 R22 K25 ["ref"]
      131 DUPTABLE                         R23 K29 [{"MenuBar", "Contents", "GraphNotPlayedBannerOverlay"}]
      132 GETUPVAL                         R25 5
      133 CALL                             R25 0 1
      134 JUMPIFNOT                        R25 ; [+2]
      135 LOADNIL                          R24
      136 JUMP                             ; [+14]
      137 GETUPVAL                         R24 0
      138 GETTABLEKS                       R24 R24 K11 ["createElement"]
      140 GETUPVAL                         R25 9
      141 DUPTABLE                         R26 K33 [{"LayoutOrder", "menuOpen", "setMenuOpen"}]
      142 MOVE                             R27 R13
      143 CALL                             R27 0 1
      144 SETTABLEKS                       R27 R26 K30 ["LayoutOrder"]
      146 SETTABLEKS                       R4 R26 K31 ["menuOpen"]
      148 SETTABLEKS                       R5 R26 K32 ["setMenuOpen"]
      150 CALL                             R24 2 1
      151 SETTABLEKS                       R24 R23 K27 ["MenuBar"]
      153 GETUPVAL                         R24 0
      154 GETTABLEKS                       R24 R24 K11 ["createElement"]
      156 GETUPVAL                         R25 8
      157 GETTABLEKS                       R25 R25 K22 ["View"]
      159 DUPTABLE                         R26 K35 [{["tag"] = "fill size-full-0", ["LayoutOrder"]}]
      160 MOVE                             R27 R13
      161 CALL                             R27 0 1
      162 SETTABLEKS                       R27 R26 K30 ["LayoutOrder"]
      164 JUMPIFNOTEQKNIL                  R14 ; [+10]
      166 GETUPVAL                         R28 5
      167 CALL                             R28 0 1
      168 JUMPIF                           R28 ; [+6]
      169 GETUPVAL                         R27 0
      170 GETTABLEKS                       R27 R27 K11 ["createElement"]
      172 GETUPVAL                         R28 10
      173 CALL                             R27 1 1
      174 JUMP                             ; [+71]
      175 GETUPVAL                         R27 0
      176 GETTABLEKS                       R27 R27 K11 ["createElement"]
      178 GETUPVAL                         R28 11
      179 GETTABLEKS                       R28 R28 K36 ["GraphingCanvas"]
      181 DUPTABLE                         R29 K39 [{"initialGraphRect", "key"}]
      182 GETTABLEKS                       R30 R1 K40 ["graphRect"]
      184 SETTABLEKS                       R30 R29 K37 ["initialGraphRect"]
      186 LOADK                            R31 K41 ["Graph_%*"]
      187 MOVE                             R33 R3
      188 NAMECALL                         R31 R31 K42 ["format"]
      190 CALL                             R31 2 1
      191 MOVE                             R30 R31
      192 SETTABLEKS                       R30 R29 K38 ["key"]
      194 DUPTABLE                         R30 K45 [{"MenuItemsContext", "NodeStudioActionOverrides"}]
      195 GETUPVAL                         R32 5
      196 CALL                             R32 0 1
      197 JUMPIFNOT                        R32 ; [+27]
      198 GETUPVAL                         R31 0
      199 GETTABLEKS                       R31 R31 K11 ["createElement"]
      201 GETUPVAL                         R32 12
      202 GETTABLEKS                       R32 R32 K16 ["Provider"]
      204 NEWTABLE                         R33 0 0
      206 DUPTABLE                         R34 K47 [{"MenuBarPortal"}]
      207 GETUPVAL                         R35 0
      208 GETTABLEKS                       R35 R35 K11 ["createElement"]
      210 GETUPVAL                         R36 13
      211 DUPTABLE                         R37 K49 [{"LayoutOrder", "menuOpen", "setMenuOpen", "portalTarget"}]
      212 SETTABLEKS                       R15 R37 K30 ["LayoutOrder"]
      214 SETTABLEKS                       R4 R37 K31 ["menuOpen"]
      216 SETTABLEKS                       R5 R37 K32 ["setMenuOpen"]
      218 SETTABLEKS                       R9 R37 K48 ["portalTarget"]
      220 CALL                             R35 2 1
      221 SETTABLEKS                       R35 R34 K46 ["MenuBarPortal"]
      223 CALL                             R31 3 1
      224 JUMP                             ; [+1]
      225 LOADNIL                          R31
      226 SETTABLEKS                       R31 R30 K43 ["MenuItemsContext"]
      228 GETUPVAL                         R32 14
      229 CALL                             R32 0 1
      230 JUMPIFNOT                        R32 ; [+11]
      231 GETUPVAL                         R31 0
      232 GETTABLEKS                       R31 R31 K11 ["createElement"]
      234 GETUPVAL                         R32 15
      235 DUPTABLE                         R33 K51 [{"pluginGui"}]
      236 GETTABLEKS                       R34 R0 K50 ["pluginGui"]
      238 SETTABLEKS                       R34 R33 K50 ["pluginGui"]
      240 CALL                             R31 2 1
      241 JUMP                             ; [+1]
      242 LOADNIL                          R31
      243 SETTABLEKS                       R31 R30 K44 ["NodeStudioActionOverrides"]
      245 CALL                             R27 3 1
      246 CALL                             R24 3 1
      247 SETTABLEKS                       R24 R23 K19 ["Contents"]
      249 GETUPVAL                         R24 0
      250 GETTABLEKS                       R24 R24 K11 ["createElement"]
      252 GETUPVAL                         R25 16
      253 DUPTABLE                         R26 K53 [{"anchorRef"}]
      254 SETTABLEKS                       R8 R26 K52 ["anchorRef"]
      256 CALL                             R24 2 1
      257 SETTABLEKS                       R24 R23 K28 ["GraphNotPlayedBannerOverlay"]
      259 CALL                             R20 3 1
      260 SETTABLEKS                       R20 R19 K19 ["Contents"]
      262 GETUPVAL                         R21 6
      263 CALL                             R21 0 1
      264 JUMPIF                           R21 ; [+1]
      265 JUMPIFNOT                        R6 ; [+16]
      266 GETUPVAL                         R20 0
      267 GETTABLEKS                       R20 R20 K11 ["createElement"]
      269 GETUPVAL                         R21 17
      270 DUPTABLE                         R22 K55 [{"onClose"}]
      271 GETUPVAL                         R24 6
      272 CALL                             R24 0 1
      273 JUMPIF                           R24 ; [+3]
      274 NEWCLOSURE                       R23 P2
      275 CAPTURE                          VAL R7
      276 JUMP                             ; [+1]
      277 DUPCLOSURE                       R23 K56 [PROTO_8]
      278 SETTABLEKS                       R23 R22 K54 ["onClose"]
      280 CALL                             R20 2 1
      281 JUMP                             ; [+1]
      282 LOADNIL                          R20
      283 SETTABLEKS                       R20 R19 K20 ["MaskEditorPopup"]
      285 CALL                             R16 3 -1
      286 RETURN                           R16 -1

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
       52 GETTABLEKS                       R7 R7 K16 ["MaskEditorVisibilityContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Contexts"]
       59 GETTABLEKS                       R8 R8 K17 ["MenuItemsContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K9 ["Contexts"]
       66 GETTABLEKS                       R9 R9 K18 ["NativeGraphContext"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K11 ["Parent"]
       73 GETTABLEKS                       R10 R10 K19 ["NodeGraphing"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K6 ["Components"]
       80 GETTABLEKS                       R11 R11 K20 ["NodeStudioActionOverrides"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K11 ["Parent"]
       87 GETTABLEKS                       R12 R12 K21 ["React"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K11 ["Parent"]
       94 GETTABLEKS                       R13 R13 K22 ["ReactRoblox"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K11 ["Parent"]
      101 GETTABLEKS                       R14 R14 K23 ["ReactUtils"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K9 ["Contexts"]
      108 GETTABLEKS                       R15 R15 K24 ["SelectedGraphContext"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K11 ["Parent"]
      115 GETTABLEKS                       R16 R16 K25 ["SignalsReact"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K26 ["Flags"]
      122 GETTABLEKS                       R17 R17 K27 ["getFFlagAnimGraphUIMaskMenu"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K26 ["Flags"]
      129 GETTABLEKS                       R18 R18 K28 ["getFFlagAnimGraphUIStudioActionOverrides"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K26 ["Flags"]
      136 GETTABLEKS                       R19 R19 K29 ["getFFlagAnimGraphUI_RunTimeDebug"]
      138 CALL                             R18 1 1
      139 DUPCLOSURE                       R19 K30 [PROTO_2]
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R3
      144 DUPCLOSURE                       R20 K31 [PROTO_3]
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R1
      148 DUPCLOSURE                       R21 K32 [PROTO_9]
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R18
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R19
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R20
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R5
      167 RETURN                           R21 1
