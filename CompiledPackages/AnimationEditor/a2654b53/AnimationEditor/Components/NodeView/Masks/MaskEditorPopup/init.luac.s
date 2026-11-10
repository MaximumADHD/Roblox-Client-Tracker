PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setShowMaskEditor"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 NAMECALL                         R0 R0 K2 ["use"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["Hooks"]
       11 GETTABLEKS                       R1 R1 K4 ["useStyleSheet"]
       13 CALL                             R1 0 1
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K5 ["useContext"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K6 ["Context"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K5 ["useContext"]
       24 GETUPVAL                         R4 4
       25 GETTABLEKS                       R4 R4 K6 ["Context"]
       27 CALL                             R3 1 1
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K7 ["useState"]
       31 LOADNIL                          R5
       32 CALL                             R4 1 2
       33 GETUPVAL                         R6 5
       34 GETTABLEKS                       R6 R6 K8 ["createNextOrder"]
       36 CALL                             R6 0 1
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R7 R7 K9 ["useCallback"]
       40 NEWCLOSURE                       R8 P0
       41 CAPTURE                          VAL R2
       42 NEWTABLE                         R9 0 1
       44 GETTABLEKS                       R10 R2 K10 ["setShowMaskEditor"]
       46 SETLIST                          R9 R10 1 [1]
       48 CALL                             R7 2 1
       49 GETTABLEKS                       R8 R2 K11 ["showMaskEditor"]
       51 JUMPIF                           R8 ; [+2]
       52 LOADNIL                          R8
       53 RETURN                           R8 1
       54 GETUPVAL                         R8 2
       55 GETTABLEKS                       R8 R8 K12 ["createElement"]
       57 GETTABLEKS                       R9 R3 K13 ["popupComponent"]
       59 DUPTABLE                         R10 K19 [{["id"] = "MaskEditorPopup", ["onClose"], ["title"], ["size"]}]
       60 SETTABLEKS                       R7 R10 K16 ["onClose"]
       62 LOADK                            R13 K20 ["Common"]
       63 LOADK                            R14 K21 ["AnimationEditor"]
       64 LOADK                            R15 K15 ["MaskEditorPopup"]
       65 LOADK                            R16 K22 ["Title"]
       66 NAMECALL                         R11 R0 K23 ["getExternalText"]
       68 CALL                             R11 5 1
       69 SETTABLEKS                       R11 R10 K17 ["title"]
       71 GETIMPORT                        R11 K26 [Vector2.new]
       73 LOADN                            R12 450
       74 LOADN                            R13 460
       75 CALL                             R11 2 1
       76 SETTABLEKS                       R11 R10 K18 ["size"]
       78 GETUPVAL                         R11 2
       79 GETTABLEKS                       R11 R11 K12 ["createElement"]
       81 GETUPVAL                         R12 1
       82 GETTABLEKS                       R12 R12 K27 ["OverlayProvider"]
       84 DUPTABLE                         R13 K29 [{"gui"}]
       85 SETTABLEKS                       R4 R13 K28 ["gui"]
       87 DUPTABLE                         R14 K33 [{"StyleLink", "View", "Overlay"}]
       88 GETUPVAL                         R15 2
       89 GETTABLEKS                       R15 R15 K12 ["createElement"]
       91 LOADK                            R16 K30 ["StyleLink"]
       92 DUPTABLE                         R17 K35 [{"StyleSheet"}]
       93 SETTABLEKS                       R1 R17 K34 ["StyleSheet"]
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K30 ["StyleLink"]
       98 GETUPVAL                         R15 2
       99 GETTABLEKS                       R15 R15 K12 ["createElement"]
      101 GETUPVAL                         R16 1
      102 GETTABLEKS                       R16 R16 K31 ["View"]
      104 DUPTABLE                         R17 K38 [{["tag"] = "row gap-large size-full padding-xlarge bg-surface-200"}]
      105 DUPTABLE                         R18 K41 [{"MasksSidebar", "MaskControls"}]
      106 GETUPVAL                         R19 2
      107 GETTABLEKS                       R19 R19 K12 ["createElement"]
      109 GETUPVAL                         R20 6
      110 DUPTABLE                         R21 K43 [{"layoutOrder"}]
      111 MOVE                             R22 R6
      112 CALL                             R22 0 1
      113 SETTABLEKS                       R22 R21 K42 ["layoutOrder"]
      115 CALL                             R19 2 1
      116 SETTABLEKS                       R19 R18 K39 ["MasksSidebar"]
      118 GETUPVAL                         R19 2
      119 GETTABLEKS                       R19 R19 K12 ["createElement"]
      121 GETUPVAL                         R20 1
      122 GETTABLEKS                       R20 R20 K31 ["View"]
      124 DUPTABLE                         R21 K46 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      125 MOVE                             R22 R6
      126 CALL                             R22 0 1
      127 SETTABLEKS                       R22 R21 K45 ["LayoutOrder"]
      129 GETTABLEKS                       R23 R2 K47 ["selectedMaskId"]
      131 JUMPIFNOT                        R23 ; [+6]
      132 GETUPVAL                         R22 2
      133 GETTABLEKS                       R22 R22 K12 ["createElement"]
      135 GETUPVAL                         R23 7
      136 CALL                             R22 1 1
      137 JUMP                             ; [+1]
      138 LOADNIL                          R22
      139 CALL                             R19 3 1
      140 SETTABLEKS                       R19 R18 K40 ["MaskControls"]
      142 CALL                             R15 3 1
      143 SETTABLEKS                       R15 R14 K31 ["View"]
      145 GETUPVAL                         R15 2
      146 GETTABLEKS                       R15 R15 K12 ["createElement"]
      148 GETUPVAL                         R16 1
      149 GETTABLEKS                       R16 R16 K31 ["View"]
      151 DUPTABLE                         R17 K52 [{["tag"] = "size-full", ["ref"], ["ZIndex"] = 100}]
      152 SETTABLEKS                       R5 R17 K49 ["ref"]
      154 CALL                             R15 2 1
      155 SETTABLEKS                       R15 R14 K32 ["Overlay"]
      157 CALL                             R11 3 -1
      158 CALL                             R8 -1 -1
      159 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["MaskConfiguration"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K11 ["MaskEditorVisibilityContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K12 ["MasksSidebar"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K10 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K13 ["PopupContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Parent"]
       53 GETTABLEKS                       R8 R8 K14 ["React"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Parent"]
       60 GETTABLEKS                       R9 R9 K15 ["ReactUtils"]
       62 CALL                             R8 1 1
       63 DUPCLOSURE                       R9 K16 [PROTO_1]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R3
       72 RETURN                           R9 1
