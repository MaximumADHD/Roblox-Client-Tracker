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
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["useSignalState"]
       17 GETTABLEKS                       R4 R2 K3 ["observeSelectedGraphInstanceId"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K4 ["useState"]
       23 LOADK                            R5 K5 [""]
       24 CALL                             R4 1 2
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K6 ["useRef"]
       28 LOADNIL                          R7
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K4 ["useState"]
       33 LOADNIL                          R8
       34 CALL                             R7 1 2
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       38 NEWCLOSURE                       R10 P0
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R8
       41 NEWTABLE                         R11 0 0
       43 CALL                             R9 2 1
       44 GETUPVAL                         R10 4
       45 GETTABLEKS                       R10 R10 K8 ["createNextOrder"]
       47 CALL                             R10 0 1
       48 GETUPVAL                         R12 5
       49 CALL                             R12 0 1
       50 JUMPIFNOT                        R12 ; [+7]
       51 GETUPVAL                         R11 3
       52 GETTABLEKS                       R11 R11 K2 ["useSignalState"]
       54 GETTABLEKS                       R12 R2 K3 ["observeSelectedGraphInstanceId"]
       56 CALL                             R11 1 1
       57 JUMP                             ; [+2]
       58 GETTABLEKS                       R11 R1 K9 ["selectedGraphInstanceId_DEPRECATED"]
       60 GETUPVAL                         R13 5
       61 CALL                             R13 0 1
       62 JUMPIFNOT                        R13 ; [+3]
       63 MOVE                             R12 R10
       64 CALL                             R12 0 1
       65 JUMP                             ; [+1]
       66 LOADNIL                          R12
       67 GETUPVAL                         R13 0
       68 GETTABLEKS                       R13 R13 K10 ["createElement"]
       70 GETUPVAL                         R14 0
       71 GETTABLEKS                       R14 R14 K11 ["Fragment"]
       73 LOADNIL                          R15
       74 DUPTABLE                         R16 K14 [{"Contents", "MaskEditorPopup"}]
       75 GETUPVAL                         R17 0
       76 GETTABLEKS                       R17 R17 K10 ["createElement"]
       78 GETUPVAL                         R18 6
       79 GETTABLEKS                       R18 R18 K15 ["View"]
       81 DUPTABLE                         R19 K19 [{["tag"] = "col size-full-full", ["ref"]}]
       82 SETTABLEKS                       R9 R19 K18 ["ref"]
       84 DUPTABLE                         R20 K22 [{"MenuBar", "Contents", "GraphNotPlayedBannerOverlay"}]
       85 GETUPVAL                         R22 5
       86 CALL                             R22 0 1
       87 JUMPIFNOT                        R22 ; [+2]
       88 LOADNIL                          R21
       89 JUMP                             ; [+14]
       90 GETUPVAL                         R21 0
       91 GETTABLEKS                       R21 R21 K10 ["createElement"]
       93 GETUPVAL                         R22 7
       94 DUPTABLE                         R23 K26 [{"LayoutOrder", "menuOpen", "setMenuOpen"}]
       95 MOVE                             R24 R10
       96 CALL                             R24 0 1
       97 SETTABLEKS                       R24 R23 K23 ["LayoutOrder"]
       99 SETTABLEKS                       R4 R23 K24 ["menuOpen"]
      101 SETTABLEKS                       R5 R23 K25 ["setMenuOpen"]
      103 CALL                             R21 2 1
      104 SETTABLEKS                       R21 R20 K20 ["MenuBar"]
      106 GETUPVAL                         R21 0
      107 GETTABLEKS                       R21 R21 K10 ["createElement"]
      109 GETUPVAL                         R22 6
      110 GETTABLEKS                       R22 R22 K15 ["View"]
      112 DUPTABLE                         R23 K28 [{["tag"] = "fill size-full-0", ["LayoutOrder"]}]
      113 MOVE                             R24 R10
      114 CALL                             R24 0 1
      115 SETTABLEKS                       R24 R23 K23 ["LayoutOrder"]
      117 JUMPIFNOTEQKNIL                  R11 ; [+10]
      119 GETUPVAL                         R25 5
      120 CALL                             R25 0 1
      121 JUMPIF                           R25 ; [+6]
      122 GETUPVAL                         R24 0
      123 GETTABLEKS                       R24 R24 K10 ["createElement"]
      125 GETUPVAL                         R25 8
      126 CALL                             R24 1 1
      127 JUMP                             ; [+66]
      128 GETUPVAL                         R24 0
      129 GETTABLEKS                       R24 R24 K10 ["createElement"]
      131 GETUPVAL                         R25 9
      132 GETTABLEKS                       R25 R25 K29 ["GraphingCanvas"]
      134 DUPTABLE                         R26 K32 [{"initialGraphRect", "key"}]
      135 GETTABLEKS                       R27 R1 K33 ["graphRect"]
      137 SETTABLEKS                       R27 R26 K30 ["initialGraphRect"]
      139 LOADK                            R28 K34 ["Graph_%*"]
      140 MOVE                             R30 R3
      141 NAMECALL                         R28 R28 K35 ["format"]
      143 CALL                             R28 2 1
      144 MOVE                             R27 R28
      145 SETTABLEKS                       R27 R26 K31 ["key"]
      147 DUPTABLE                         R27 K38 [{"MenuItemsContext", "NodeStudioActionOverrides"}]
      148 GETUPVAL                         R29 5
      149 CALL                             R29 0 1
      150 JUMPIFNOT                        R29 ; [+27]
      151 GETUPVAL                         R28 0
      152 GETTABLEKS                       R28 R28 K10 ["createElement"]
      154 GETUPVAL                         R29 10
      155 GETTABLEKS                       R29 R29 K39 ["Provider"]
      157 NEWTABLE                         R30 0 0
      159 DUPTABLE                         R31 K41 [{"MenuBarPortal"}]
      160 GETUPVAL                         R32 0
      161 GETTABLEKS                       R32 R32 K10 ["createElement"]
      163 GETUPVAL                         R33 11
      164 DUPTABLE                         R34 K43 [{"LayoutOrder", "menuOpen", "setMenuOpen", "portalTarget"}]
      165 SETTABLEKS                       R12 R34 K23 ["LayoutOrder"]
      167 SETTABLEKS                       R4 R34 K24 ["menuOpen"]
      169 SETTABLEKS                       R5 R34 K25 ["setMenuOpen"]
      171 SETTABLEKS                       R7 R34 K42 ["portalTarget"]
      173 CALL                             R32 2 1
      174 SETTABLEKS                       R32 R31 K40 ["MenuBarPortal"]
      176 CALL                             R28 3 1
      177 JUMP                             ; [+1]
      178 LOADNIL                          R28
      179 SETTABLEKS                       R28 R27 K36 ["MenuItemsContext"]
      181 GETUPVAL                         R28 0
      182 GETTABLEKS                       R28 R28 K10 ["createElement"]
      184 GETUPVAL                         R29 12
      185 DUPTABLE                         R30 K45 [{"pluginGui"}]
      186 GETTABLEKS                       R31 R0 K44 ["pluginGui"]
      188 SETTABLEKS                       R31 R30 K44 ["pluginGui"]
      190 CALL                             R28 2 1
      191 SETTABLEKS                       R28 R27 K37 ["NodeStudioActionOverrides"]
      193 CALL                             R24 3 1
      194 CALL                             R21 3 1
      195 SETTABLEKS                       R21 R20 K12 ["Contents"]
      197 GETUPVAL                         R21 0
      198 GETTABLEKS                       R21 R21 K10 ["createElement"]
      200 GETUPVAL                         R22 13
      201 DUPTABLE                         R23 K47 [{"anchorRef"}]
      202 SETTABLEKS                       R6 R23 K46 ["anchorRef"]
      204 CALL                             R21 2 1
      205 SETTABLEKS                       R21 R20 K21 ["GraphNotPlayedBannerOverlay"]
      207 CALL                             R17 3 1
      208 SETTABLEKS                       R17 R16 K12 ["Contents"]
      210 GETUPVAL                         R17 0
      211 GETTABLEKS                       R17 R17 K10 ["createElement"]
      213 GETUPVAL                         R18 14
      214 CALL                             R17 1 1
      215 SETTABLEKS                       R17 R16 K13 ["MaskEditorPopup"]
      217 CALL                             R13 3 -1
      218 RETURN                           R13 -1

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
      113 GETTABLEKS                       R16 R0 K25 ["Flags"]
      115 GETTABLEKS                       R16 R16 K26 ["getFFlagAnimGraphUI_RunTimeDebug"]
      117 CALL                             R15 1 1
      118 DUPCLOSURE                       R16 K27 [PROTO_2]
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R3
      123 DUPCLOSURE                       R17 K28 [PROTO_3]
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R1
      127 DUPCLOSURE                       R18 K29 [PROTO_5]
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R5
      143 RETURN                           R18 1
