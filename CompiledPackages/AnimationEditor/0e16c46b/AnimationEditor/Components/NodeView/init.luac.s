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
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADK                            R3 K3 [""]
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K2 ["useState"]
       15 LOADB                            R5 0
       16 CALL                             R4 1 2
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K4 ["useRef"]
       20 LOADNIL                          R7
       21 CALL                             R6 1 1
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K5 ["createNextOrder"]
       25 CALL                             R7 0 1
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K6 ["createElement"]
       29 GETUPVAL                         R9 2
       30 GETTABLEKS                       R9 R9 K7 ["ContextStack"]
       32 DUPTABLE                         R10 K9 [{"providers"}]
       33 NEWTABLE                         R11 0 1
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R12 R12 K6 ["createElement"]
       38 GETUPVAL                         R13 3
       39 GETTABLEKS                       R13 R13 K1 ["Context"]
       41 GETTABLEKS                       R13 R13 K10 ["Provider"]
       43 DUPTABLE                         R14 K12 [{"value"}]
       44 DUPTABLE                         R15 K15 [{"showMaskEditor", "setShowMaskEditor"}]
       45 SETTABLEKS                       R4 R15 K13 ["showMaskEditor"]
       47 SETTABLEKS                       R5 R15 K14 ["setShowMaskEditor"]
       49 SETTABLEKS                       R15 R14 K11 ["value"]
       51 CALL                             R12 2 -1
       52 SETLIST                          R11 R12 -1 [1]
       54 SETTABLEKS                       R11 R10 K8 ["providers"]
       56 DUPTABLE                         R11 K18 [{"Contents", "MaskEditorPopup"}]
       57 GETUPVAL                         R12 0
       58 GETTABLEKS                       R12 R12 K6 ["createElement"]
       60 GETUPVAL                         R13 4
       61 GETTABLEKS                       R13 R13 K19 ["View"]
       63 DUPTABLE                         R14 K22 [{"tag", "ref"}]
       64 LOADK                            R15 K23 ["size-full-full col"]
       65 SETTABLEKS                       R15 R14 K20 ["tag"]
       67 SETTABLEKS                       R6 R14 K21 ["ref"]
       69 DUPTABLE                         R15 K26 [{"MenuBar", "Contents", "GraphNotPlayedBannerOverlay"}]
       70 GETUPVAL                         R16 0
       71 GETTABLEKS                       R16 R16 K6 ["createElement"]
       73 GETUPVAL                         R17 5
       74 DUPTABLE                         R18 K30 [{"LayoutOrder", "menuOpen", "setMenuOpen"}]
       75 MOVE                             R19 R7
       76 CALL                             R19 0 1
       77 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
       79 SETTABLEKS                       R2 R18 K28 ["menuOpen"]
       81 SETTABLEKS                       R3 R18 K29 ["setMenuOpen"]
       83 CALL                             R16 2 1
       84 SETTABLEKS                       R16 R15 K24 ["MenuBar"]
       86 GETUPVAL                         R16 0
       87 GETTABLEKS                       R16 R16 K6 ["createElement"]
       89 GETUPVAL                         R17 4
       90 GETTABLEKS                       R17 R17 K19 ["View"]
       92 DUPTABLE                         R18 K31 [{"tag", "LayoutOrder"}]
       93 LOADK                            R19 K32 ["size-full-0 fill"]
       94 SETTABLEKS                       R19 R18 K20 ["tag"]
       96 MOVE                             R19 R7
       97 CALL                             R19 0 1
       98 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
      100 GETTABLEKS                       R20 R1 K33 ["selectedGraphInstanceId"]
      102 JUMPIFNOTEQKNIL                  R20 ; [+7]
      104 GETUPVAL                         R19 0
      105 GETTABLEKS                       R19 R19 K6 ["createElement"]
      107 GETUPVAL                         R20 6
      108 CALL                             R19 1 1
      109 JUMP                             ; [+12]
      110 GETUPVAL                         R19 0
      111 GETTABLEKS                       R19 R19 K6 ["createElement"]
      113 GETUPVAL                         R20 7
      114 GETTABLEKS                       R20 R20 K34 ["GraphingCanvas"]
      116 DUPTABLE                         R21 K36 [{"initialGraphRect"}]
      117 GETTABLEKS                       R22 R1 K37 ["graphRect"]
      119 SETTABLEKS                       R22 R21 K35 ["initialGraphRect"]
      121 CALL                             R19 2 1
      122 CALL                             R16 3 1
      123 SETTABLEKS                       R16 R15 K16 ["Contents"]
      125 GETUPVAL                         R16 0
      126 GETTABLEKS                       R16 R16 K6 ["createElement"]
      128 GETUPVAL                         R17 8
      129 DUPTABLE                         R18 K39 [{"anchorRef"}]
      130 SETTABLEKS                       R6 R18 K38 ["anchorRef"]
      132 CALL                             R16 2 1
      133 SETTABLEKS                       R16 R15 K25 ["GraphNotPlayedBannerOverlay"]
      135 CALL                             R12 3 1
      136 SETTABLEKS                       R12 R11 K16 ["Contents"]
      138 JUMPIFNOT                        R4 ; [+11]
      139 GETUPVAL                         R12 0
      140 GETTABLEKS                       R12 R12 K6 ["createElement"]
      142 GETUPVAL                         R13 9
      143 DUPTABLE                         R14 K41 [{"onClose"}]
      144 NEWCLOSURE                       R15 P0
      145 CAPTURE                          VAL R5
      146 SETTABLEKS                       R15 R14 K40 ["onClose"]
      148 CALL                             R12 2 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R12
      151 SETTABLEKS                       R12 R11 K17 ["MaskEditorPopup"]
      153 CALL                             R8 3 -1
      154 RETURN                           R8 -1

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
       59 GETTABLEKS                       R8 R8 K17 ["NativeGraphContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K11 ["Parent"]
       66 GETTABLEKS                       R9 R9 K18 ["NodeGraphing"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K11 ["Parent"]
       73 GETTABLEKS                       R10 R10 K19 ["React"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K11 ["Parent"]
       80 GETTABLEKS                       R11 R11 K20 ["ReactUtils"]
       82 CALL                             R10 1 1
       83 DUPCLOSURE                       R11 K21 [PROTO_2]
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R3
       88 DUPCLOSURE                       R12 K22 [PROTO_4]
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R5
       99 RETURN                           R12 1
