PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setShowMaskEditor"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
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
       22 GETTABLEKS                       R4 R4 K5 ["useContext"]
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K6 ["Context"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K7 ["useState"]
       31 LOADNIL                          R6
       32 CALL                             R5 1 2
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K7 ["useState"]
       36 LOADNIL                          R8
       37 CALL                             R7 1 2
       38 GETUPVAL                         R9 5
       39 GETTABLEKS                       R9 R9 K8 ["createNextOrder"]
       41 CALL                             R9 0 1
       42 GETUPVAL                         R10 2
       43 GETTABLEKS                       R10 R10 K9 ["useCallback"]
       45 NEWCLOSURE                       R11 P0
       46 CAPTURE                          VAL R3
       47 NEWTABLE                         R12 0 1
       49 GETTABLEKS                       R13 R3 K10 ["setShowMaskEditor"]
       51 SETLIST                          R12 R13 1 [1]
       53 CALL                             R10 2 1
       54 GETUPVAL                         R11 6
       55 CALL                             R11 0 1
       56 JUMPIFNOT                        R11 ; [+5]
       57 GETTABLEKS                       R11 R3 K11 ["showMaskEditor"]
       59 JUMPIF                           R11 ; [+2]
       60 LOADNIL                          R11
       61 RETURN                           R11 1
       62 GETUPVAL                         R11 2
       63 GETTABLEKS                       R11 R11 K12 ["createElement"]
       65 GETTABLEKS                       R12 R4 K13 ["popupComponent"]
       67 DUPTABLE                         R13 K19 [{["id"] = "MaskEditorPopup", ["onClose"], ["title"], ["size"]}]
       68 GETUPVAL                         R15 6
       69 CALL                             R15 0 1
       70 JUMPIFNOT                        R15 ; [+2]
       71 MOVE                             R14 R10
       72 JUMP                             ; [+2]
       73 GETTABLEKS                       R14 R0 K16 ["onClose"]
       75 SETTABLEKS                       R14 R13 K16 ["onClose"]
       77 LOADK                            R16 K20 ["Common"]
       78 LOADK                            R17 K21 ["AnimationEditor"]
       79 LOADK                            R18 K15 ["MaskEditorPopup"]
       80 LOADK                            R19 K22 ["Title"]
       81 NAMECALL                         R14 R1 K23 ["getExternalText"]
       83 CALL                             R14 5 1
       84 SETTABLEKS                       R14 R13 K17 ["title"]
       86 GETIMPORT                        R14 K26 [Vector2.new]
       88 LOADN                            R15 450
       89 LOADN                            R16 460
       90 CALL                             R14 2 1
       91 SETTABLEKS                       R14 R13 K18 ["size"]
       93 GETUPVAL                         R14 2
       94 GETTABLEKS                       R14 R14 K12 ["createElement"]
       96 GETUPVAL                         R15 1
       97 GETTABLEKS                       R15 R15 K27 ["OverlayProvider"]
       99 DUPTABLE                         R16 K29 [{"gui"}]
      100 SETTABLEKS                       R7 R16 K28 ["gui"]
      102 DUPTABLE                         R17 K33 [{"StyleLink", "View", "Overlay"}]
      103 GETUPVAL                         R18 2
      104 GETTABLEKS                       R18 R18 K12 ["createElement"]
      106 LOADK                            R19 K30 ["StyleLink"]
      107 DUPTABLE                         R20 K35 [{"StyleSheet"}]
      108 SETTABLEKS                       R2 R20 K34 ["StyleSheet"]
      110 CALL                             R18 2 1
      111 SETTABLEKS                       R18 R17 K30 ["StyleLink"]
      113 GETUPVAL                         R18 2
      114 GETTABLEKS                       R18 R18 K12 ["createElement"]
      116 GETUPVAL                         R19 1
      117 GETTABLEKS                       R19 R19 K31 ["View"]
      119 DUPTABLE                         R20 K38 [{["tag"] = "row gap-large size-full padding-xlarge bg-surface-200"}]
      120 DUPTABLE                         R21 K41 [{"MasksSidebar", "MaskControls"}]
      121 GETUPVAL                         R22 2
      122 GETTABLEKS                       R22 R22 K12 ["createElement"]
      124 GETUPVAL                         R23 7
      125 DUPTABLE                         R24 K45 [{"layoutOrder", "selectedMaskId", "setSelectedMaskId"}]
      126 MOVE                             R25 R9
      127 CALL                             R25 0 1
      128 SETTABLEKS                       R25 R24 K42 ["layoutOrder"]
      130 GETUPVAL                         R26 6
      131 CALL                             R26 0 1
      132 JUMPIF                           R26 ; [+2]
      133 MOVE                             R25 R5
      134 JUMP                             ; [+1]
      135 LOADNIL                          R25
      136 SETTABLEKS                       R25 R24 K43 ["selectedMaskId"]
      138 GETUPVAL                         R26 6
      139 CALL                             R26 0 1
      140 JUMPIF                           R26 ; [+2]
      141 MOVE                             R25 R6
      142 JUMP                             ; [+1]
      143 LOADNIL                          R25
      144 SETTABLEKS                       R25 R24 K44 ["setSelectedMaskId"]
      146 CALL                             R22 2 1
      147 SETTABLEKS                       R22 R21 K39 ["MasksSidebar"]
      149 GETUPVAL                         R22 2
      150 GETTABLEKS                       R22 R22 K12 ["createElement"]
      152 GETUPVAL                         R23 1
      153 GETTABLEKS                       R23 R23 K31 ["View"]
      155 DUPTABLE                         R24 K48 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      156 MOVE                             R25 R9
      157 CALL                             R25 0 1
      158 SETTABLEKS                       R25 R24 K47 ["LayoutOrder"]
      160 GETUPVAL                         R26 6
      161 CALL                             R26 0 1
      162 JUMPIF                           R26 ; [+1]
      163 JUMPIF                           R5 ; [+6]
      164 GETUPVAL                         R26 6
      165 CALL                             R26 0 1
      166 JUMPIFNOT                        R26 ; [+18]
      167 GETTABLEKS                       R26 R3 K43 ["selectedMaskId"]
      169 JUMPIFNOT                        R26 ; [+15]
      170 GETUPVAL                         R25 2
      171 GETTABLEKS                       R25 R25 K12 ["createElement"]
      173 GETUPVAL                         R26 8
      174 DUPTABLE                         R27 K49 [{"selectedMaskId"}]
      175 GETUPVAL                         R29 6
      176 CALL                             R29 0 1
      177 JUMPIF                           R29 ; [+2]
      178 MOVE                             R28 R5
      179 JUMP                             ; [+1]
      180 LOADNIL                          R28
      181 SETTABLEKS                       R28 R27 K43 ["selectedMaskId"]
      183 CALL                             R25 2 1
      184 JUMP                             ; [+1]
      185 LOADNIL                          R25
      186 CALL                             R22 3 1
      187 SETTABLEKS                       R22 R21 K40 ["MaskControls"]
      189 CALL                             R18 3 1
      190 SETTABLEKS                       R18 R17 K31 ["View"]
      192 GETUPVAL                         R18 2
      193 GETTABLEKS                       R18 R18 K12 ["createElement"]
      195 GETUPVAL                         R19 1
      196 GETTABLEKS                       R19 R19 K31 ["View"]
      198 DUPTABLE                         R20 K54 [{["tag"] = "size-full", ["ref"], ["ZIndex"] = 100}]
      199 SETTABLEKS                       R8 R20 K51 ["ref"]
      201 CALL                             R18 2 1
      202 SETTABLEKS                       R18 R17 K32 ["Overlay"]
      204 CALL                             R14 3 -1
      205 CALL                             R11 -1 -1
      206 RETURN                           R11 -1

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
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K16 ["Flags"]
       67 GETTABLEKS                       R10 R10 K17 ["getFFlagAnimGraphUIMaskMenu"]
       69 CALL                             R9 1 1
       70 DUPCLOSURE                       R10 K18 [PROTO_1]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R3
       80 RETURN                           R10 1
