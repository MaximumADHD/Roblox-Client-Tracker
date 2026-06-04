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
        0 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K4 [{"showMaskEditor", "setShowMaskEditor", "selectedMaskId", "setSelectedMaskId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["showMaskEditor"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setShowMaskEditor"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K2 ["selectedMaskId"]
       10 DUPCLOSURE                       R1 K5 [PROTO_3]
       11 SETTABLEKS                       R1 R0 K3 ["setSelectedMaskId"]
       13 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
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
       47 GETTABLEKS                       R9 R9 K7 ["useMemo"]
       49 NEWCLOSURE                       R10 P0
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R7
       52 NEWTABLE                         R11 0 1
       54 MOVE                             R12 R6
       55 SETLIST                          R11 R12 1 [1]
       57 CALL                             R9 2 1
       58 GETUPVAL                         R10 6
       59 GETTABLEKS                       R10 R10 K8 ["createNextOrder"]
       61 CALL                             R10 0 1
       62 GETUPVAL                         R12 3
       63 CALL                             R12 0 1
       64 JUMPIFNOT                        R12 ; [+7]
       65 GETUPVAL                         R11 5
       66 GETTABLEKS                       R11 R11 K2 ["useSignalState"]
       68 GETTABLEKS                       R12 R2 K3 ["observeSelectedGraphInstanceId"]
       70 CALL                             R11 1 1
       71 JUMP                             ; [+2]
       72 GETTABLEKS                       R11 R1 K9 ["selectedGraphInstanceId_DEPRECATED"]
       74 GETUPVAL                         R12 0
       75 GETTABLEKS                       R12 R12 K10 ["createElement"]
       77 GETUPVAL                         R14 7
       78 CALL                             R14 0 1
       79 JUMPIFNOT                        R14 ; [+4]
       80 GETUPVAL                         R13 0
       81 GETTABLEKS                       R13 R13 K11 ["Fragment"]
       83 JUMP                             ; [+3]
       84 GETUPVAL                         R13 6
       85 GETTABLEKS                       R13 R13 K12 ["ContextStack"]
       87 GETUPVAL                         R15 7
       88 CALL                             R15 0 1
       89 JUMPIFNOT                        R15 ; [+2]
       90 LOADNIL                          R14
       91 JUMP                             ; [+19]
       92 DUPTABLE                         R14 K14 [{"providers"}]
       93 NEWTABLE                         R15 0 1
       95 GETUPVAL                         R16 0
       96 GETTABLEKS                       R16 R16 K10 ["createElement"]
       98 GETUPVAL                         R17 8
       99 GETTABLEKS                       R17 R17 K1 ["Context"]
      101 GETTABLEKS                       R17 R17 K15 ["Provider"]
      103 DUPTABLE                         R18 K17 [{"value"}]
      104 SETTABLEKS                       R9 R18 K16 ["value"]
      106 CALL                             R16 2 -1
      107 SETLIST                          R15 R16 -1 [1]
      109 SETTABLEKS                       R15 R14 K13 ["providers"]
      111 DUPTABLE                         R15 K20 [{"Contents", "MaskEditorPopup"}]
      112 GETUPVAL                         R16 0
      113 GETTABLEKS                       R16 R16 K10 ["createElement"]
      115 GETUPVAL                         R17 9
      116 GETTABLEKS                       R17 R17 K21 ["View"]
      118 DUPTABLE                         R18 K24 [{"tag", "ref"}]
      119 LOADK                            R19 K25 ["size-full-full col"]
      120 SETTABLEKS                       R19 R18 K22 ["tag"]
      122 SETTABLEKS                       R8 R18 K23 ["ref"]
      124 DUPTABLE                         R19 K28 [{"MenuBar", "Contents", "GraphNotPlayedBannerOverlay"}]
      125 GETUPVAL                         R20 0
      126 GETTABLEKS                       R20 R20 K10 ["createElement"]
      128 GETUPVAL                         R21 10
      129 DUPTABLE                         R22 K32 [{"LayoutOrder", "menuOpen", "setMenuOpen"}]
      130 MOVE                             R23 R10
      131 CALL                             R23 0 1
      132 SETTABLEKS                       R23 R22 K29 ["LayoutOrder"]
      134 SETTABLEKS                       R4 R22 K30 ["menuOpen"]
      136 SETTABLEKS                       R5 R22 K31 ["setMenuOpen"]
      138 CALL                             R20 2 1
      139 SETTABLEKS                       R20 R19 K26 ["MenuBar"]
      141 GETUPVAL                         R20 0
      142 GETTABLEKS                       R20 R20 K10 ["createElement"]
      144 GETUPVAL                         R21 9
      145 GETTABLEKS                       R21 R21 K21 ["View"]
      147 DUPTABLE                         R22 K33 [{"tag", "LayoutOrder"}]
      148 LOADK                            R23 K34 ["size-full-0 fill"]
      149 SETTABLEKS                       R23 R22 K22 ["tag"]
      151 MOVE                             R23 R10
      152 CALL                             R23 0 1
      153 SETTABLEKS                       R23 R22 K29 ["LayoutOrder"]
      155 JUMPIFNOTEQKNIL                  R11 ; [+7]
      157 GETUPVAL                         R23 0
      158 GETTABLEKS                       R23 R23 K10 ["createElement"]
      160 GETUPVAL                         R24 11
      161 CALL                             R23 1 1
      162 JUMP                             ; [+24]
      163 GETUPVAL                         R23 0
      164 GETTABLEKS                       R23 R23 K10 ["createElement"]
      166 GETUPVAL                         R24 12
      167 GETTABLEKS                       R24 R24 K35 ["GraphingCanvas"]
      169 DUPTABLE                         R25 K38 [{"initialGraphRect", "key"}]
      170 GETTABLEKS                       R26 R1 K39 ["graphRect"]
      172 SETTABLEKS                       R26 R25 K36 ["initialGraphRect"]
      174 GETUPVAL                         R27 2
      175 JUMPIFNOT                        R27 ; [+7]
      176 LOADK                            R27 K40 ["Graph_%*"]
      177 MOVE                             R29 R3
      178 NAMECALL                         R27 R27 K41 ["format"]
      180 CALL                             R27 2 1
      181 MOVE                             R26 R27
      182 JUMP                             ; [+1]
      183 LOADNIL                          R26
      184 SETTABLEKS                       R26 R25 K37 ["key"]
      186 CALL                             R23 2 1
      187 CALL                             R20 3 1
      188 SETTABLEKS                       R20 R19 K18 ["Contents"]
      190 GETUPVAL                         R20 0
      191 GETTABLEKS                       R20 R20 K10 ["createElement"]
      193 GETUPVAL                         R21 13
      194 DUPTABLE                         R22 K43 [{"anchorRef"}]
      195 SETTABLEKS                       R8 R22 K42 ["anchorRef"]
      197 CALL                             R20 2 1
      198 SETTABLEKS                       R20 R19 K27 ["GraphNotPlayedBannerOverlay"]
      200 CALL                             R16 3 1
      201 SETTABLEKS                       R16 R15 K18 ["Contents"]
      203 GETUPVAL                         R17 7
      204 CALL                             R17 0 1
      205 JUMPIF                           R17 ; [+1]
      206 JUMPIFNOT                        R6 ; [+16]
      207 GETUPVAL                         R16 0
      208 GETTABLEKS                       R16 R16 K10 ["createElement"]
      210 GETUPVAL                         R17 14
      211 DUPTABLE                         R18 K45 [{"onClose"}]
      212 GETUPVAL                         R20 7
      213 CALL                             R20 0 1
      214 JUMPIF                           R20 ; [+3]
      215 NEWCLOSURE                       R19 P1
      216 CAPTURE                          VAL R7
      217 JUMP                             ; [+1]
      218 DUPCLOSURE                       R19 K46 [PROTO_6]
      219 SETTABLEKS                       R19 R18 K44 ["onClose"]
      221 CALL                             R16 2 1
      222 JUMP                             ; [+1]
      223 LOADNIL                          R16
      224 SETTABLEKS                       R16 R15 K19 ["MaskEditorPopup"]
      226 CALL                             R12 3 -1
      227 RETURN                           R12 -1

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
       66 GETTABLEKS                       R9 R9 K19 ["NativeGraphContext"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K13 ["Parent"]
       73 GETTABLEKS                       R10 R10 K20 ["NodeGraphing"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K13 ["Parent"]
       80 GETTABLEKS                       R11 R11 K21 ["React"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K13 ["Parent"]
       87 GETTABLEKS                       R12 R12 K22 ["ReactUtils"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K9 ["Contexts"]
       94 GETTABLEKS                       R13 R13 K23 ["SelectedGraphContext"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K13 ["Parent"]
      101 GETTABLEKS                       R14 R14 K24 ["SignalsReact"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K11 ["Flags"]
      108 GETTABLEKS                       R15 R15 K25 ["getFFlagAnimGraphUIMaskMenu"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K11 ["Flags"]
      115 GETTABLEKS                       R16 R16 K26 ["getFFlagAnimGraphUI_RunTimeDebug"]
      117 CALL                             R15 1 1
      118 DUPCLOSURE                       R16 K27 [PROTO_2]
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R4
      123 DUPCLOSURE                       R17 K28 [PROTO_7]
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R6
      139 RETURN                           R17 1
