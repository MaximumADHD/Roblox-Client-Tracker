PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useToggleState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["useState"]
       10 LOADNIL                          R4
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K2 ["createNextOrder"]
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K3 ["createElement"]
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R7 R7 K4 ["View"]
       22 DUPTABLE                         R8 K8 [{["tag"] = "size-full-full", ["ref"]}]
       23 SETTABLEKS                       R4 R8 K7 ["ref"]
       25 NEWTABLE                         R9 0 1
       27 GETUPVAL                         R10 2
       28 GETTABLEKS                       R10 R10 K3 ["createElement"]
       30 GETUPVAL                         R11 1
       31 GETTABLEKS                       R11 R11 K9 ["ContextStack"]
       33 DUPTABLE                         R12 K11 [{"providers"}]
       34 NEWTABLE                         R13 0 1
       36 GETUPVAL                         R14 2
       37 GETTABLEKS                       R14 R14 K3 ["createElement"]
       39 GETUPVAL                         R15 3
       40 GETTABLEKS                       R15 R15 K12 ["FoundationProvider"]
       42 DUPTABLE                         R16 K17 [{["theme"], ["device"] = "Desktop", ["overlayGui"]}]
       43 SETTABLEKS                       R1 R16 K13 ["theme"]
       45 SETTABLEKS                       R3 R16 K16 ["overlayGui"]
       47 CALL                             R14 2 -1
       48 SETLIST                          R13 R14 -1 [1]
       50 SETTABLEKS                       R13 R12 K10 ["providers"]
       52 DUPTABLE                         R13 K19 [{"Container"}]
       53 GETUPVAL                         R14 2
       54 GETTABLEKS                       R14 R14 K3 ["createElement"]
       56 GETUPVAL                         R15 3
       57 GETTABLEKS                       R15 R15 K4 ["View"]
       59 DUPTABLE                         R16 K22 [{["tag"] = "face-editor-container size-full-full", ["LayoutOrder"]}]
       60 MOVE                             R17 R5
       61 CALL                             R17 0 1
       62 SETTABLEKS                       R17 R16 K21 ["LayoutOrder"]
       64 DUPTABLE                         R17 K26 [{"UIListLayout", "ControlBar", "ImageContainer"}]
       65 GETUPVAL                         R18 2
       66 GETTABLEKS                       R18 R18 K3 ["createElement"]
       68 LOADK                            R19 K23 ["UIListLayout"]
       69 DUPTABLE                         R20 K31 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
       70 GETIMPORT                        R21 K33 [Enum.SortOrder.LayoutOrder]
       72 SETTABLEKS                       R21 R20 K27 ["SortOrder"]
       74 GETIMPORT                        R21 K35 [Enum.FillDirection.Vertical]
       76 SETTABLEKS                       R21 R20 K28 ["FillDirection"]
       78 GETIMPORT                        R21 K37 [Enum.HorizontalAlignment.Right]
       80 SETTABLEKS                       R21 R20 K29 ["HorizontalAlignment"]
       82 GETIMPORT                        R21 K39 [Enum.VerticalAlignment.Top]
       84 SETTABLEKS                       R21 R20 K30 ["VerticalAlignment"]
       86 CALL                             R18 2 1
       87 SETTABLEKS                       R18 R17 K23 ["UIListLayout"]
       89 GETUPVAL                         R18 2
       90 GETTABLEKS                       R18 R18 K3 ["createElement"]
       92 GETUPVAL                         R19 4
       93 DUPTABLE                         R20 K43 [{"isSymmetryEnabled", "setIsSymmetryEnabled", "localizationFunction", "LayoutOrder"}]
       94 GETTABLEKS                       R21 R2 K44 ["enabled"]
       96 SETTABLEKS                       R21 R20 K40 ["isSymmetryEnabled"]
       98 GETTABLEKS                       R21 R2 K45 ["toggle"]
      100 SETTABLEKS                       R21 R20 K41 ["setIsSymmetryEnabled"]
      102 GETTABLEKS                       R21 R0 K42 ["localizationFunction"]
      104 SETTABLEKS                       R21 R20 K42 ["localizationFunction"]
      106 MOVE                             R21 R5
      107 CALL                             R21 0 1
      108 SETTABLEKS                       R21 R20 K21 ["LayoutOrder"]
      110 CALL                             R18 2 1
      111 SETTABLEKS                       R18 R17 K24 ["ControlBar"]
      113 GETUPVAL                         R18 2
      114 GETTABLEKS                       R18 R18 K3 ["createElement"]
      116 GETUPVAL                         R19 5
      117 DUPTABLE                         R20 K46 [{"isSymmetryEnabled"}]
      118 GETTABLEKS                       R21 R2 K44 ["enabled"]
      120 SETTABLEKS                       R21 R20 K40 ["isSymmetryEnabled"]
      122 CALL                             R18 2 1
      123 SETTABLEKS                       R18 R17 K25 ["ImageContainer"]
      125 CALL                             R14 3 1
      126 SETTABLEKS                       R14 R13 K18 ["Container"]
      128 CALL                             R10 3 -1
      129 SETLIST                          R9 R10 -1 [1]
      131 CALL                             R6 3 -1
      132 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["FaceControlEditor"]
       30 GETTABLEKS                       R6 R6 K12 ["FaceControlControlBar"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K10 ["Components"]
       37 GETTABLEKS                       R7 R7 K11 ["FaceControlEditor"]
       39 GETTABLEKS                       R7 R7 K13 ["FaceImageContainer"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Hooks"]
       46 GETTABLEKS                       R8 R8 K15 ["useFoundationStudioTheme"]
       48 CALL                             R7 1 1
       49 DUPCLOSURE                       R8 K16 [PROTO_0]
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 RETURN                           R8 1
