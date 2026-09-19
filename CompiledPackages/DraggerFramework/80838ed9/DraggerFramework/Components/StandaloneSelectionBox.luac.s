PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["_dummyPartRef"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Size"]
        4 LOADK                            R3 K2 [{1, 1, 1}]
        5 NAMECALL                         R1 R1 K3 ["Min"]
        7 CALL                             R1 2 1
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R4 R4 K1 ["Size"]
       12 DIVK                             R3 R4 K4 [2]
       13 DIVK                             R4 R1 K4 [2]
       14 SUB                              R2 R3 R4
       15 GETTABLEKS                       R3 R0 K0 ["props"]
       17 GETTABLEKS                       R3 R3 K5 ["Container"]
       19 JUMPIF                           R3 ; [+1]
       20 GETUPVAL                         R3 0
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K6 ["createElement"]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K7 ["Portal"]
       27 DUPTABLE                         R6 K9 [{"target"}]
       28 SETTABLEKS                       R3 R6 K8 ["target"]
       30 DUPTABLE                         R7 K12 [{"DummyModel", "SelectionBox"}]
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R8 R8 K6 ["createElement"]
       34 LOADK                            R9 K13 ["Model"]
       35 NEWTABLE                         R10 1 0
       37 GETUPVAL                         R11 1
       38 GETTABLEKS                       R11 R11 K14 ["Ref"]
       40 GETTABLEKS                       R12 R0 K15 ["_dummyPartRef"]
       42 SETTABLE                         R12 R10 R11
       43 DUPTABLE                         R11 K18 [{"DummyPart1", "DummyPart2"}]
       44 GETUPVAL                         R12 1
       45 GETTABLEKS                       R12 R12 K6 ["createElement"]
       47 LOADK                            R13 K19 ["Part"]
       48 DUPTABLE                         R14 K28 [{["Shape"], ["Anchored"] = True, ["CanCollide"] = False, ["CFrame"], ["Size"], ["Transparency"] = 0}]
       49 GETIMPORT                        R15 K32 [Enum.PartType.Block]
       51 SETTABLEKS                       R15 R14 K20 ["Shape"]
       53 GETTABLEKS                       R16 R0 K0 ["props"]
       55 GETTABLEKS                       R16 R16 K25 ["CFrame"]
       57 GETIMPORT                        R17 K34 [CFrame.new]
       59 MINUS                            R18 R2
       60 CALL                             R17 1 1
       61 MUL                              R15 R16 R17
       62 SETTABLEKS                       R15 R14 K25 ["CFrame"]
       64 SETTABLEKS                       R1 R14 K1 ["Size"]
       66 CALL                             R12 2 1
       67 SETTABLEKS                       R12 R11 K16 ["DummyPart1"]
       69 GETUPVAL                         R12 1
       70 GETTABLEKS                       R12 R12 K6 ["createElement"]
       72 LOADK                            R13 K19 ["Part"]
       73 DUPTABLE                         R14 K28 [{["Shape"], ["Anchored"] = True, ["CanCollide"] = False, ["CFrame"], ["Size"], ["Transparency"] = 0}]
       74 GETIMPORT                        R15 K32 [Enum.PartType.Block]
       76 SETTABLEKS                       R15 R14 K20 ["Shape"]
       78 GETTABLEKS                       R16 R0 K0 ["props"]
       80 GETTABLEKS                       R16 R16 K25 ["CFrame"]
       82 GETIMPORT                        R17 K34 [CFrame.new]
       84 MOVE                             R18 R2
       85 CALL                             R17 1 1
       86 MUL                              R15 R16 R17
       87 SETTABLEKS                       R15 R14 K25 ["CFrame"]
       89 SETTABLEKS                       R1 R14 K1 ["Size"]
       91 CALL                             R12 2 1
       92 SETTABLEKS                       R12 R11 K17 ["DummyPart2"]
       94 CALL                             R8 3 1
       95 SETTABLEKS                       R8 R7 K10 ["DummyModel"]
       97 GETUPVAL                         R8 1
       98 GETTABLEKS                       R8 R8 K6 ["createElement"]
      100 LOADK                            R9 K11 ["SelectionBox"]
      101 DUPTABLE                         R10 K41 [{["Adornee"], ["Color3"], ["LineThickness"], ["SurfaceTransparency"] = 1, ["Transparency"] = 0, ["StudioSelectionBox"] = True}]
      102 GETTABLEKS                       R11 R0 K15 ["_dummyPartRef"]
      104 SETTABLEKS                       R11 R10 K35 ["Adornee"]
      106 GETTABLEKS                       R11 R0 K0 ["props"]
      108 GETTABLEKS                       R11 R11 K42 ["Color"]
      110 SETTABLEKS                       R11 R10 K36 ["Color3"]
      112 GETTABLEKS                       R11 R0 K0 ["props"]
      114 GETTABLEKS                       R11 R11 K37 ["LineThickness"]
      116 SETTABLEKS                       R11 R10 K37 ["LineThickness"]
      118 CALL                             R8 2 1
      119 SETTABLEKS                       R8 R7 K11 ["SelectionBox"]
      121 CALL                             R4 3 -1
      122 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R2 K6 ["Parent"]
       17 GETIMPORT                        R3 K8 [require]
       19 GETTABLEKS                       R4 R2 K9 ["Packages"]
       21 GETTABLEKS                       R4 R4 K10 ["Roact"]
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
