PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["Hooks"]
       11 GETTABLEKS                       R2 R2 K4 ["useStyleSheet"]
       13 CALL                             R2 0 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K5 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K6 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K7 ["useState"]
       24 LOADNIL                          R5
       25 CALL                             R4 1 2
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K7 ["useState"]
       29 LOADNIL                          R7
       30 CALL                             R6 1 2
       31 GETUPVAL                         R8 4
       32 GETTABLEKS                       R8 R8 K8 ["createNextOrder"]
       34 CALL                             R8 0 1
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R9 R9 K9 ["createElement"]
       38 GETTABLEKS                       R10 R3 K10 ["popupComponent"]
       40 DUPTABLE                         R11 K15 [{"id", "onClose", "title", "size"}]
       41 LOADK                            R12 K16 ["MaskEditorPopup"]
       42 SETTABLEKS                       R12 R11 K11 ["id"]
       44 GETTABLEKS                       R12 R0 K12 ["onClose"]
       46 SETTABLEKS                       R12 R11 K12 ["onClose"]
       48 LOADK                            R14 K17 ["Common"]
       49 LOADK                            R15 K18 ["AnimationEditor"]
       50 LOADK                            R16 K16 ["MaskEditorPopup"]
       51 LOADK                            R17 K19 ["Title"]
       52 NAMECALL                         R12 R1 K20 ["getExternalText"]
       54 CALL                             R12 5 1
       55 SETTABLEKS                       R12 R11 K13 ["title"]
       57 GETIMPORT                        R12 K23 [Vector2.new]
       59 LOADN                            R13 194
       60 LOADN                            R14 204
       61 CALL                             R12 2 1
       62 SETTABLEKS                       R12 R11 K14 ["size"]
       64 GETUPVAL                         R12 2
       65 GETTABLEKS                       R12 R12 K9 ["createElement"]
       67 GETUPVAL                         R13 1
       68 GETTABLEKS                       R13 R13 K24 ["OverlayProvider"]
       70 DUPTABLE                         R14 K26 [{"gui"}]
       71 SETTABLEKS                       R6 R14 K25 ["gui"]
       73 DUPTABLE                         R15 K30 [{"StyleLink", "View", "Overlay"}]
       74 GETUPVAL                         R16 2
       75 GETTABLEKS                       R16 R16 K9 ["createElement"]
       77 LOADK                            R17 K27 ["StyleLink"]
       78 DUPTABLE                         R18 K32 [{"StyleSheet"}]
       79 SETTABLEKS                       R2 R18 K31 ["StyleSheet"]
       81 CALL                             R16 2 1
       82 SETTABLEKS                       R16 R15 K27 ["StyleLink"]
       84 GETUPVAL                         R16 2
       85 GETTABLEKS                       R16 R16 K9 ["createElement"]
       87 GETUPVAL                         R17 1
       88 GETTABLEKS                       R17 R17 K28 ["View"]
       90 DUPTABLE                         R18 K34 [{"tag"}]
       91 LOADK                            R19 K35 ["size-full bg-surface-200 padding-xlarge row gap-large"]
       92 SETTABLEKS                       R19 R18 K33 ["tag"]
       94 DUPTABLE                         R19 K38 [{"MasksSidebar", "MaskControls"}]
       95 GETUPVAL                         R20 2
       96 GETTABLEKS                       R20 R20 K9 ["createElement"]
       98 GETUPVAL                         R21 5
       99 DUPTABLE                         R22 K42 [{"layoutOrder", "selectedMaskId", "setSelectedMaskId"}]
      100 MOVE                             R23 R8
      101 CALL                             R23 0 1
      102 SETTABLEKS                       R23 R22 K39 ["layoutOrder"]
      104 SETTABLEKS                       R4 R22 K40 ["selectedMaskId"]
      106 SETTABLEKS                       R5 R22 K41 ["setSelectedMaskId"]
      108 CALL                             R20 2 1
      109 SETTABLEKS                       R20 R19 K36 ["MasksSidebar"]
      111 GETUPVAL                         R20 2
      112 GETTABLEKS                       R20 R20 K9 ["createElement"]
      114 GETUPVAL                         R21 1
      115 GETTABLEKS                       R21 R21 K28 ["View"]
      117 DUPTABLE                         R22 K44 [{"tag", "LayoutOrder"}]
      118 LOADK                            R23 K45 ["size-0-full grow"]
      119 SETTABLEKS                       R23 R22 K33 ["tag"]
      121 MOVE                             R23 R8
      122 CALL                             R23 0 1
      123 SETTABLEKS                       R23 R22 K43 ["LayoutOrder"]
      125 MOVE                             R23 R4
      126 JUMPIFNOT                        R23 ; [+8]
      127 GETUPVAL                         R23 2
      128 GETTABLEKS                       R23 R23 K9 ["createElement"]
      130 GETUPVAL                         R24 6
      131 DUPTABLE                         R25 K46 [{"selectedMaskId"}]
      132 SETTABLEKS                       R4 R25 K40 ["selectedMaskId"]
      134 CALL                             R23 2 1
      135 CALL                             R20 3 1
      136 SETTABLEKS                       R20 R19 K37 ["MaskControls"]
      138 CALL                             R16 3 1
      139 SETTABLEKS                       R16 R15 K28 ["View"]
      141 GETUPVAL                         R16 2
      142 GETTABLEKS                       R16 R16 K9 ["createElement"]
      144 GETUPVAL                         R17 1
      145 GETTABLEKS                       R17 R17 K28 ["View"]
      147 DUPTABLE                         R18 K49 [{"tag", "ref", "ZIndex"}]
      148 LOADK                            R19 K50 ["size-full"]
      149 SETTABLEKS                       R19 R18 K33 ["tag"]
      151 SETTABLEKS                       R7 R18 K47 ["ref"]
      153 LOADN                            R19 100
      154 SETTABLEKS                       R19 R18 K48 ["ZIndex"]
      156 CALL                             R16 2 1
      157 SETTABLEKS                       R16 R15 K29 ["Overlay"]
      159 CALL                             R12 3 -1
      160 CALL                             R9 -1 -1
      161 RETURN                           R9 -1

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
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K10 ["MasksSidebar"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K12 ["PopupContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K13 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Parent"]
       53 GETTABLEKS                       R8 R8 K14 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K15 [PROTO_0]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R3
       64 RETURN                           R8 1
