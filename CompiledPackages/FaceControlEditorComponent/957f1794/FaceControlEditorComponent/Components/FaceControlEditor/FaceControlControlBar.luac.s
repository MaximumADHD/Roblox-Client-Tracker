PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setFocusEnabledAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getDefaultPropertiesValues"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["setSliderValuesAsync"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["Context"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K1 ["useContext"]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K2 ["Context"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R4 R3 K3 ["focusEnabled"]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R7 0 1
       27 MOVE                             R8 R3
       28 SETLIST                          R7 R8 1 [1]
       30 CALL                             R5 2 1
       31 NEWCLOSURE                       R6 P1
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R2
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K5 ["createElement"]
       37 GETUPVAL                         R8 5
       38 GETTABLEKS                       R8 R8 K6 ["View"]
       40 DUPTABLE                         R9 K12 [{["Size"], ["tag"] = "bg-surface-100 row align-y-center align-x-right gap-medium clip padding-small wrap auto-y", ["ZIndex"] = 1000}]
       41 GETIMPORT                        R10 K15 [UDim2.new]
       43 LOADN                            R11 1
       44 LOADN                            R12 0
       45 LOADN                            R13 0
       46 GETUPVAL                         R14 6
       47 GETTABLEKS                       R14 R14 K16 ["FACE_CONTROLS_EDITOR_TOGGLES_CONTAINER_HEIGHT"]
       49 CALL                             R10 4 1
       50 SETTABLEKS                       R10 R9 K7 ["Size"]
       52 DUPTABLE                         R10 K20 [{"SymmetryCheckbox", "FocusFaceCheckbox", "ResetAllButton"}]
       53 GETUPVAL                         R11 1
       54 GETTABLEKS                       R11 R11 K5 ["createElement"]
       56 GETUPVAL                         R12 5
       57 GETTABLEKS                       R12 R12 K21 ["Checkbox"]
       59 DUPTABLE                         R13 K28 [{["label"], ["size"] = "XSmall", ["isChecked"], ["onActivated"], ["LayoutOrder"]}]
       60 GETTABLEKS                       R14 R0 K29 ["localizationFunction"]
       62 LOADK                            R15 K17 ["SymmetryCheckbox"]
       63 CALL                             R14 1 1
       64 SETTABLEKS                       R14 R13 K22 ["label"]
       66 GETTABLEKS                       R14 R0 K30 ["isSymmetryEnabled"]
       68 SETTABLEKS                       R14 R13 K25 ["isChecked"]
       70 GETTABLEKS                       R14 R0 K31 ["setIsSymmetryEnabled"]
       72 SETTABLEKS                       R14 R13 K26 ["onActivated"]
       74 MOVE                             R14 R1
       75 CALL                             R14 0 1
       76 SETTABLEKS                       R14 R13 K27 ["LayoutOrder"]
       78 CALL                             R11 2 1
       79 SETTABLEKS                       R11 R10 K17 ["SymmetryCheckbox"]
       81 GETUPVAL                         R11 1
       82 GETTABLEKS                       R11 R11 K5 ["createElement"]
       84 GETUPVAL                         R12 5
       85 GETTABLEKS                       R12 R12 K21 ["Checkbox"]
       87 DUPTABLE                         R13 K28 [{["label"], ["size"] = "XSmall", ["isChecked"], ["onActivated"], ["LayoutOrder"]}]
       88 GETTABLEKS                       R14 R0 K29 ["localizationFunction"]
       90 LOADK                            R15 K18 ["FocusFaceCheckbox"]
       91 CALL                             R14 1 1
       92 SETTABLEKS                       R14 R13 K22 ["label"]
       94 SETTABLEKS                       R4 R13 K25 ["isChecked"]
       96 SETTABLEKS                       R5 R13 K26 ["onActivated"]
       98 MOVE                             R14 R1
       99 CALL                             R14 0 1
      100 SETTABLEKS                       R14 R13 K27 ["LayoutOrder"]
      102 CALL                             R11 2 1
      103 SETTABLEKS                       R11 R10 K18 ["FocusFaceCheckbox"]
      105 GETUPVAL                         R11 1
      106 GETTABLEKS                       R11 R11 K5 ["createElement"]
      108 GETUPVAL                         R12 5
      109 GETTABLEKS                       R12 R12 K32 ["Button"]
      111 DUPTABLE                         R13 K34 [{["text"], ["size"] = "XSmall", ["onActivated"], ["LayoutOrder"]}]
      112 GETTABLEKS                       R14 R0 K29 ["localizationFunction"]
      114 LOADK                            R15 K19 ["ResetAllButton"]
      115 CALL                             R14 1 1
      116 SETTABLEKS                       R14 R13 K33 ["text"]
      118 SETTABLEKS                       R6 R13 K26 ["onActivated"]
      120 MOVE                             R14 R1
      121 CALL                             R14 0 1
      122 SETTABLEKS                       R14 R13 K27 ["LayoutOrder"]
      124 CALL                             R11 2 1
      125 SETTABLEKS                       R11 R10 K19 ["ResetAllButton"]
      127 CALL                             R7 3 -1
      128 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["FaceControlEditor"]
       15 GETTABLEKS                       R3 R3 K9 ["FaceControlEditorConstants"]
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
       35 GETTABLEKS                       R7 R0 K7 ["Components"]
       37 GETTABLEKS                       R7 R7 K8 ["FaceControlEditor"]
       39 GETTABLEKS                       R7 R7 K13 ["FaceControlsHandler"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Contexts"]
       46 GETTABLEKS                       R8 R8 K15 ["FaceControlEditorContext"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K14 ["Contexts"]
       53 GETTABLEKS                       R9 R9 K16 ["FocusOnFaceContext"]
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
