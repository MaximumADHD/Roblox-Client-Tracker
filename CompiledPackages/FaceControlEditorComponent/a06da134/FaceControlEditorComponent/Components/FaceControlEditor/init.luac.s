PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useToggleState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K1 ["useState"]
       10 LOADNIL                          R4
       11 CALL                             R3 1 2
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K2 ["createNextOrder"]
       15 CALL                             R5 0 1
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R6 R7 K3 ["createElement"]
       19 GETUPVAL                         R8 3
       20 GETTABLEKS                       R7 R8 K4 ["View"]
       22 DUPTABLE                         R8 K7 [{"tag", "ref"}]
       23 LOADK                            R9 K8 ["size-full-full"]
       24 SETTABLEKS                       R9 R8 K5 ["tag"]
       26 SETTABLEKS                       R4 R8 K6 ["ref"]
       28 NEWTABLE                         R9 0 1
       30 GETUPVAL                         R11 2
       31 GETTABLEKS                       R10 R11 K3 ["createElement"]
       33 GETUPVAL                         R12 1
       34 GETTABLEKS                       R11 R12 K9 ["ContextStack"]
       36 DUPTABLE                         R12 K11 [{"providers"}]
       37 NEWTABLE                         R13 0 1
       39 GETUPVAL                         R15 2
       40 GETTABLEKS                       R14 R15 K3 ["createElement"]
       42 GETUPVAL                         R16 3
       43 GETTABLEKS                       R15 R16 K12 ["FoundationProvider"]
       45 DUPTABLE                         R16 K16 [{"theme", "device", "overlayGui"}]
       46 SETTABLEKS                       R1 R16 K13 ["theme"]
       48 LOADK                            R17 K17 ["Desktop"]
       49 SETTABLEKS                       R17 R16 K14 ["device"]
       51 SETTABLEKS                       R3 R16 K15 ["overlayGui"]
       53 CALL                             R14 2 -1
       54 SETLIST                          R13 R14 -1 [1]
       56 SETTABLEKS                       R13 R12 K10 ["providers"]
       58 DUPTABLE                         R13 K19 [{"Container"}]
       59 GETUPVAL                         R15 2
       60 GETTABLEKS                       R14 R15 K3 ["createElement"]
       62 GETUPVAL                         R16 3
       63 GETTABLEKS                       R15 R16 K4 ["View"]
       65 DUPTABLE                         R16 K21 [{"tag", "LayoutOrder"}]
       66 LOADK                            R17 K22 ["face-editor-container size-full-full"]
       67 SETTABLEKS                       R17 R16 K5 ["tag"]
       69 MOVE                             R17 R5
       70 CALL                             R17 0 1
       71 SETTABLEKS                       R17 R16 K20 ["LayoutOrder"]
       73 DUPTABLE                         R17 K26 [{"UIListLayout", "ControlBar", "ImageContainer"}]
       74 GETUPVAL                         R19 2
       75 GETTABLEKS                       R18 R19 K3 ["createElement"]
       77 LOADK                            R19 K23 ["UIListLayout"]
       78 DUPTABLE                         R20 K31 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
       79 GETIMPORT                        R21 K33 [Enum.SortOrder.LayoutOrder]
       81 SETTABLEKS                       R21 R20 K27 ["SortOrder"]
       83 GETIMPORT                        R21 K35 [Enum.FillDirection.Vertical]
       85 SETTABLEKS                       R21 R20 K28 ["FillDirection"]
       87 GETIMPORT                        R21 K37 [Enum.HorizontalAlignment.Right]
       89 SETTABLEKS                       R21 R20 K29 ["HorizontalAlignment"]
       91 GETIMPORT                        R21 K39 [Enum.VerticalAlignment.Top]
       93 SETTABLEKS                       R21 R20 K30 ["VerticalAlignment"]
       95 CALL                             R18 2 1
       96 SETTABLEKS                       R18 R17 K23 ["UIListLayout"]
       98 GETUPVAL                         R19 2
       99 GETTABLEKS                       R18 R19 K3 ["createElement"]
      101 GETUPVAL                         R19 4
      102 DUPTABLE                         R20 K43 [{"isSymmetryEnabled", "setIsSymmetryEnabled", "localizationFunction", "LayoutOrder"}]
      103 GETTABLEKS                       R21 R2 K44 ["enabled"]
      105 SETTABLEKS                       R21 R20 K40 ["isSymmetryEnabled"]
      107 GETTABLEKS                       R21 R2 K45 ["toggle"]
      109 SETTABLEKS                       R21 R20 K41 ["setIsSymmetryEnabled"]
      111 GETTABLEKS                       R21 R0 K42 ["localizationFunction"]
      113 SETTABLEKS                       R21 R20 K42 ["localizationFunction"]
      115 MOVE                             R21 R5
      116 CALL                             R21 0 1
      117 SETTABLEKS                       R21 R20 K20 ["LayoutOrder"]
      119 CALL                             R18 2 1
      120 SETTABLEKS                       R18 R17 K24 ["ControlBar"]
      122 GETUPVAL                         R19 2
      123 GETTABLEKS                       R18 R19 K3 ["createElement"]
      125 GETUPVAL                         R19 5
      126 DUPTABLE                         R20 K46 [{"isSymmetryEnabled"}]
      127 GETTABLEKS                       R21 R2 K44 ["enabled"]
      129 SETTABLEKS                       R21 R20 K40 ["isSymmetryEnabled"]
      131 CALL                             R18 2 1
      132 SETTABLEKS                       R18 R17 K25 ["ImageContainer"]
      134 CALL                             R14 3 1
      135 SETTABLEKS                       R14 R13 K18 ["Container"]
      137 CALL                             R10 3 -1
      138 SETLIST                          R9 R10 -1 [1]
      140 CALL                             R6 3 -1
      141 RETURN                           R6 -1

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
       26 GETTABLEKS                       R8 R0 K10 ["Components"]
       28 GETTABLEKS                       R7 R8 K11 ["FaceControlEditor"]
       30 GETTABLEKS                       R6 R7 K12 ["FaceControlControlBar"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R9 R0 K10 ["Components"]
       37 GETTABLEKS                       R8 R9 K11 ["FaceControlEditor"]
       39 GETTABLEKS                       R7 R8 K13 ["FaceImageContainer"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Hooks"]
       46 GETTABLEKS                       R8 R9 K15 ["useFoundationStudioTheme"]
       48 CALL                             R7 1 1
       49 DUPCLOSURE                       R8 K16 [PROTO_0]
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 RETURN                           R8 1
