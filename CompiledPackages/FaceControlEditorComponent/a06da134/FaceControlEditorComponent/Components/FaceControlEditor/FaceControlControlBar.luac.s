PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setFocusEnabledAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getDefaultPropertiesValues"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["setSliderValuesAsync"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useContext"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["Context"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K1 ["useContext"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R4 R5 K2 ["Context"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R4 R3 K3 ["focusEnabled"]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K4 ["useCallback"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R7 0 1
       27 MOVE                             R8 R3
       28 SETLIST                          R7 R8 1 [1]
       30 CALL                             R5 2 1
       31 NEWCLOSURE                       R6 P1
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R2
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R7 R8 K5 ["createElement"]
       37 GETUPVAL                         R9 5
       38 GETTABLEKS                       R8 R9 K6 ["View"]
       40 DUPTABLE                         R9 K10 [{"Size", "tag", "ZIndex"}]
       41 GETIMPORT                        R10 K13 [UDim2.new]
       43 LOADN                            R11 1
       44 LOADN                            R12 0
       45 LOADN                            R13 0
       46 GETUPVAL                         R15 6
       47 GETTABLEKS                       R14 R15 K14 ["FACE_CONTROLS_EDITOR_TOGGLES_CONTAINER_HEIGHT"]
       49 CALL                             R10 4 1
       50 SETTABLEKS                       R10 R9 K7 ["Size"]
       52 LOADK                            R10 K15 ["bg-surface-100 row align-y-center align-x-right gap-medium clip padding-small wrap auto-y"]
       53 SETTABLEKS                       R10 R9 K8 ["tag"]
       55 LOADN                            R10 232
       56 SETTABLEKS                       R10 R9 K9 ["ZIndex"]
       58 DUPTABLE                         R10 K19 [{"SymmetryCheckbox", "FocusFaceCheckbox", "ResetAllButton"}]
       59 GETUPVAL                         R12 1
       60 GETTABLEKS                       R11 R12 K5 ["createElement"]
       62 GETUPVAL                         R13 5
       63 GETTABLEKS                       R12 R13 K20 ["Checkbox"]
       65 DUPTABLE                         R13 K26 [{"label", "size", "isChecked", "onActivated", "LayoutOrder"}]
       66 GETTABLEKS                       R14 R0 K27 ["localizationFunction"]
       68 LOADK                            R15 K16 ["SymmetryCheckbox"]
       69 CALL                             R14 1 1
       70 SETTABLEKS                       R14 R13 K21 ["label"]
       72 LOADK                            R14 K28 ["XSmall"]
       73 SETTABLEKS                       R14 R13 K22 ["size"]
       75 GETTABLEKS                       R14 R0 K29 ["isSymmetryEnabled"]
       77 SETTABLEKS                       R14 R13 K23 ["isChecked"]
       79 GETTABLEKS                       R14 R0 K30 ["setIsSymmetryEnabled"]
       81 SETTABLEKS                       R14 R13 K24 ["onActivated"]
       83 MOVE                             R14 R1
       84 CALL                             R14 0 1
       85 SETTABLEKS                       R14 R13 K25 ["LayoutOrder"]
       87 CALL                             R11 2 1
       88 SETTABLEKS                       R11 R10 K16 ["SymmetryCheckbox"]
       90 GETUPVAL                         R12 1
       91 GETTABLEKS                       R11 R12 K5 ["createElement"]
       93 GETUPVAL                         R13 5
       94 GETTABLEKS                       R12 R13 K20 ["Checkbox"]
       96 DUPTABLE                         R13 K26 [{"label", "size", "isChecked", "onActivated", "LayoutOrder"}]
       97 GETTABLEKS                       R14 R0 K27 ["localizationFunction"]
       99 LOADK                            R15 K17 ["FocusFaceCheckbox"]
      100 CALL                             R14 1 1
      101 SETTABLEKS                       R14 R13 K21 ["label"]
      103 LOADK                            R14 K28 ["XSmall"]
      104 SETTABLEKS                       R14 R13 K22 ["size"]
      106 SETTABLEKS                       R4 R13 K23 ["isChecked"]
      108 SETTABLEKS                       R5 R13 K24 ["onActivated"]
      110 MOVE                             R14 R1
      111 CALL                             R14 0 1
      112 SETTABLEKS                       R14 R13 K25 ["LayoutOrder"]
      114 CALL                             R11 2 1
      115 SETTABLEKS                       R11 R10 K17 ["FocusFaceCheckbox"]
      117 GETUPVAL                         R12 1
      118 GETTABLEKS                       R11 R12 K5 ["createElement"]
      120 GETUPVAL                         R13 5
      121 GETTABLEKS                       R12 R13 K31 ["Button"]
      123 DUPTABLE                         R13 K33 [{"text", "size", "onActivated", "LayoutOrder"}]
      124 GETTABLEKS                       R14 R0 K27 ["localizationFunction"]
      126 LOADK                            R15 K18 ["ResetAllButton"]
      127 CALL                             R14 1 1
      128 SETTABLEKS                       R14 R13 K32 ["text"]
      130 LOADK                            R14 K28 ["XSmall"]
      131 SETTABLEKS                       R14 R13 K22 ["size"]
      133 SETTABLEKS                       R6 R13 K24 ["onActivated"]
      135 MOVE                             R14 R1
      136 CALL                             R14 0 1
      137 SETTABLEKS                       R14 R13 K25 ["LayoutOrder"]
      139 CALL                             R11 2 1
      140 SETTABLEKS                       R11 R10 K18 ["ResetAllButton"]
      142 CALL                             R7 3 -1
      143 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["FaceControlEditor"]
       15 GETTABLEKS                       R3 R4 K9 ["FaceControlEditorConstants"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K12 ["ReactUtils"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R9 R0 K7 ["Components"]
       37 GETTABLEKS                       R8 R9 K8 ["FaceControlEditor"]
       39 GETTABLEKS                       R7 R8 K13 ["FaceControlsHandler"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Contexts"]
       46 GETTABLEKS                       R8 R9 K15 ["FaceControlEditorContext"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K14 ["Contexts"]
       53 GETTABLEKS                       R9 R10 K16 ["FocusOnFaceContext"]
       55 CALL                             R8 1 1
       56 DUPCLOSURE                       R9 K17 [PROTO_2]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R2
       64 RETURN                           R9 1
