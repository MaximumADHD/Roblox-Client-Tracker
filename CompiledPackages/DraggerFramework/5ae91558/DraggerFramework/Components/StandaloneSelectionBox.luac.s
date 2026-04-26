PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["_dummyPartRef"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Size"]
        4 LOADK                            R3 K2 [{1, 1, 1}]
        5 NAMECALL                         R1 R1 K3 ["Min"]
        7 CALL                             R1 2 1
        8 GETTABLEKS                       R5 R0 K0 ["props"]
       10 GETTABLEKS                       R4 R5 K1 ["Size"]
       12 DIVK                             R3 R4 K4 [2]
       13 DIVK                             R4 R1 K4 [2]
       14 SUB                              R2 R3 R4
       15 GETTABLEKS                       R4 R0 K0 ["props"]
       17 GETTABLEKS                       R3 R4 K5 ["Container"]
       19 JUMPIF                           R3 ; [+1]
       20 GETUPVAL                         R3 0
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K6 ["createElement"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R5 R6 K7 ["Portal"]
       27 DUPTABLE                         R6 K9 [{"target"}]
       28 SETTABLEKS                       R3 R6 K8 ["target"]
       30 DUPTABLE                         R7 K12 [{"DummyModel", "SelectionBox"}]
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R8 R9 K6 ["createElement"]
       34 LOADK                            R9 K13 ["Model"]
       35 NEWTABLE                         R10 1 0
       37 GETUPVAL                         R12 1
       38 GETTABLEKS                       R11 R12 K14 ["Ref"]
       40 GETTABLEKS                       R12 R0 K15 ["_dummyPartRef"]
       42 SETTABLE                         R12 R10 R11
       43 DUPTABLE                         R11 K18 [{"DummyPart1", "DummyPart2"}]
       44 GETUPVAL                         R13 1
       45 GETTABLEKS                       R12 R13 K6 ["createElement"]
       47 LOADK                            R13 K19 ["Part"]
       48 DUPTABLE                         R14 K25 [{"Shape", "Anchored", "CanCollide", "CFrame", "Size", "Transparency"}]
       49 GETIMPORT                        R15 K29 [Enum.PartType.Block]
       51 SETTABLEKS                       R15 R14 K20 ["Shape"]
       53 LOADB                            R15 1
       54 SETTABLEKS                       R15 R14 K21 ["Anchored"]
       56 LOADB                            R15 0
       57 SETTABLEKS                       R15 R14 K22 ["CanCollide"]
       59 GETTABLEKS                       R17 R0 K0 ["props"]
       61 GETTABLEKS                       R16 R17 K23 ["CFrame"]
       63 GETIMPORT                        R17 K31 [CFrame.new]
       65 MINUS                            R18 R2
       66 CALL                             R17 1 1
       67 MUL                              R15 R16 R17
       68 SETTABLEKS                       R15 R14 K23 ["CFrame"]
       70 SETTABLEKS                       R1 R14 K1 ["Size"]
       72 LOADN                            R15 0
       73 SETTABLEKS                       R15 R14 K24 ["Transparency"]
       75 CALL                             R12 2 1
       76 SETTABLEKS                       R12 R11 K16 ["DummyPart1"]
       78 GETUPVAL                         R13 1
       79 GETTABLEKS                       R12 R13 K6 ["createElement"]
       81 LOADK                            R13 K19 ["Part"]
       82 DUPTABLE                         R14 K25 [{"Shape", "Anchored", "CanCollide", "CFrame", "Size", "Transparency"}]
       83 GETIMPORT                        R15 K29 [Enum.PartType.Block]
       85 SETTABLEKS                       R15 R14 K20 ["Shape"]
       87 LOADB                            R15 1
       88 SETTABLEKS                       R15 R14 K21 ["Anchored"]
       90 LOADB                            R15 0
       91 SETTABLEKS                       R15 R14 K22 ["CanCollide"]
       93 GETTABLEKS                       R17 R0 K0 ["props"]
       95 GETTABLEKS                       R16 R17 K23 ["CFrame"]
       97 GETIMPORT                        R17 K31 [CFrame.new]
       99 MOVE                             R18 R2
      100 CALL                             R17 1 1
      101 MUL                              R15 R16 R17
      102 SETTABLEKS                       R15 R14 K23 ["CFrame"]
      104 SETTABLEKS                       R1 R14 K1 ["Size"]
      106 LOADN                            R15 0
      107 SETTABLEKS                       R15 R14 K24 ["Transparency"]
      109 CALL                             R12 2 1
      110 SETTABLEKS                       R12 R11 K17 ["DummyPart2"]
      112 CALL                             R8 3 1
      113 SETTABLEKS                       R8 R7 K10 ["DummyModel"]
      115 GETUPVAL                         R9 1
      116 GETTABLEKS                       R8 R9 K6 ["createElement"]
      118 LOADK                            R9 K11 ["SelectionBox"]
      119 DUPTABLE                         R10 K37 [{"Adornee", "Color3", "LineThickness", "SurfaceTransparency", "Transparency", "StudioSelectionBox"}]
      120 GETTABLEKS                       R11 R0 K15 ["_dummyPartRef"]
      122 SETTABLEKS                       R11 R10 K32 ["Adornee"]
      124 GETTABLEKS                       R12 R0 K0 ["props"]
      126 GETTABLEKS                       R11 R12 K38 ["Color"]
      128 SETTABLEKS                       R11 R10 K33 ["Color3"]
      130 GETTABLEKS                       R12 R0 K0 ["props"]
      132 GETTABLEKS                       R11 R12 K34 ["LineThickness"]
      134 SETTABLEKS                       R11 R10 K34 ["LineThickness"]
      136 LOADN                            R11 1
      137 SETTABLEKS                       R11 R10 K35 ["SurfaceTransparency"]
      139 LOADN                            R11 0
      140 SETTABLEKS                       R11 R10 K24 ["Transparency"]
      142 LOADB                            R11 1
      143 SETTABLEKS                       R11 R10 K36 ["StudioSelectionBox"]
      145 CALL                             R8 2 1
      146 SETTABLEKS                       R8 R7 K11 ["SelectionBox"]
      148 CALL                             R4 3 -1
      149 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETTABLEKS                       R3 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R3 K6 ["Parent"]
       17 GETIMPORT                        R3 K8 [require]
       19 GETTABLEKS                       R5 R2 K9 ["Packages"]
       21 GETTABLEKS                       R4 R5 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R3 K11 ["PureComponent"]
       26 LOADK                            R6 K12 ["StandaloneSelectionBox"]
       27 NAMECALL                         R4 R4 K13 ["extend"]
       29 CALL                             R4 2 1
       30 DUPCLOSURE                       R5 K14 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R5 R4 K15 ["init"]
       34 DUPCLOSURE                       R5 K16 [PROTO_1]
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R5 R4 K17 ["render"]
       39 RETURN                           R4 1
