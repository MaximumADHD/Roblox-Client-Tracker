PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Radius"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["Radius"]
        5 LOADN                            R2 0
        6 JUMPIFNOTLE                      R1 R2 ; [+3]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 GETTABLEKS                       R2 R0 K0 ["Radius"]
       12 MULK                             R1 R2 K1 [1.00005507808]
       13 GETTABLEKS                       R3 R0 K0 ["Radius"]
       15 MULK                             R2 R3 K2 [0.55342925736]
       16 GETTABLEKS                       R4 R0 K0 ["Radius"]
       18 MULK                             R3 R4 K3 [-0.00132180118999992]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K4 ["createElement"]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K5 ["Curve"]
       25 DUPTABLE                         R6 K9 [{"Color3", "Thickness", "Points"}]
       26 GETTABLEKS                       R7 R0 K6 ["Color3"]
       28 SETTABLEKS                       R7 R6 K6 ["Color3"]
       30 GETTABLEKS                       R7 R0 K7 ["Thickness"]
       32 SETTABLEKS                       R7 R6 K7 ["Thickness"]
       34 NEWTABLE                         R7 0 5
       36 DUPTABLE                         R8 K14 [{["Position"], ["LeftTangent"] = , ["RightTangent"]}]
       37 GETIMPORT                        R9 K17 [Vector2.new]
       39 MOVE                             R10 R1
       40 LOADN                            R11 0
       41 CALL                             R9 2 1
       42 SETTABLEKS                       R9 R8 K10 ["Position"]
       44 GETIMPORT                        R9 K17 [Vector2.new]
       46 MOVE                             R10 R3
       47 MOVE                             R11 R2
       48 CALL                             R9 2 1
       49 SETTABLEKS                       R9 R8 K13 ["RightTangent"]
       51 DUPTABLE                         R9 K18 [{"Position", "LeftTangent", "RightTangent"}]
       52 GETIMPORT                        R10 K17 [Vector2.new]
       54 LOADN                            R11 0
       55 MOVE                             R12 R1
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K10 ["Position"]
       59 GETIMPORT                        R10 K17 [Vector2.new]
       61 MOVE                             R11 R2
       62 MOVE                             R12 R3
       63 CALL                             R10 2 1
       64 SETTABLEKS                       R10 R9 K11 ["LeftTangent"]
       66 GETIMPORT                        R10 K17 [Vector2.new]
       68 MINUS                            R11 R2
       69 MOVE                             R12 R3
       70 CALL                             R10 2 1
       71 SETTABLEKS                       R10 R9 K13 ["RightTangent"]
       73 DUPTABLE                         R10 K18 [{"Position", "LeftTangent", "RightTangent"}]
       74 GETIMPORT                        R11 K17 [Vector2.new]
       76 MINUS                            R12 R1
       77 LOADN                            R13 0
       78 CALL                             R11 2 1
       79 SETTABLEKS                       R11 R10 K10 ["Position"]
       81 GETIMPORT                        R11 K17 [Vector2.new]
       83 MINUS                            R12 R3
       84 MOVE                             R13 R2
       85 CALL                             R11 2 1
       86 SETTABLEKS                       R11 R10 K11 ["LeftTangent"]
       88 GETIMPORT                        R11 K17 [Vector2.new]
       90 MINUS                            R12 R3
       91 MINUS                            R13 R2
       92 CALL                             R11 2 1
       93 SETTABLEKS                       R11 R10 K13 ["RightTangent"]
       95 DUPTABLE                         R11 K18 [{"Position", "LeftTangent", "RightTangent"}]
       96 GETIMPORT                        R12 K17 [Vector2.new]
       98 LOADN                            R13 0
       99 MINUS                            R14 R1
      100 CALL                             R12 2 1
      101 SETTABLEKS                       R12 R11 K10 ["Position"]
      103 GETIMPORT                        R12 K17 [Vector2.new]
      105 MINUS                            R13 R2
      106 MINUS                            R14 R3
      107 CALL                             R12 2 1
      108 SETTABLEKS                       R12 R11 K11 ["LeftTangent"]
      110 GETIMPORT                        R12 K17 [Vector2.new]
      112 MOVE                             R13 R2
      113 MINUS                            R14 R3
      114 CALL                             R12 2 1
      115 SETTABLEKS                       R12 R11 K13 ["RightTangent"]
      117 DUPTABLE                         R12 K19 [{["Position"], ["LeftTangent"], ["RightTangent"] = }]
      118 GETIMPORT                        R13 K17 [Vector2.new]
      120 MOVE                             R14 R1
      121 LOADN                            R15 0
      122 CALL                             R13 2 1
      123 SETTABLEKS                       R13 R12 K10 ["Position"]
      125 GETIMPORT                        R13 K17 [Vector2.new]
      127 MINUS                            R14 R3
      128 MINUS                            R15 R2
      129 CALL                             R13 2 1
      130 SETTABLEKS                       R13 R12 K11 ["LeftTangent"]
      132 SETLIST                          R7 R8 5 [1]
      134 SETTABLEKS                       R7 R6 K8 ["Points"]
      136 CALL                             R4 2 -1
      137 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Graphing"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
