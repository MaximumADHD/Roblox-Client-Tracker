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
       25 DUPTABLE                         R6 K10 [{"Color3", "Thickness", "ObserveThickness", "Points"}]
       26 GETTABLEKS                       R7 R0 K6 ["Color3"]
       28 SETTABLEKS                       R7 R6 K6 ["Color3"]
       30 GETTABLEKS                       R7 R0 K7 ["Thickness"]
       32 SETTABLEKS                       R7 R6 K7 ["Thickness"]
       34 GETTABLEKS                       R7 R0 K8 ["ObserveThickness"]
       36 SETTABLEKS                       R7 R6 K8 ["ObserveThickness"]
       38 NEWTABLE                         R7 0 5
       40 DUPTABLE                         R8 K15 [{["Position"], ["LeftTangent"] = , ["RightTangent"]}]
       41 GETIMPORT                        R9 K18 [Vector2.new]
       43 MOVE                             R10 R1
       44 LOADN                            R11 0
       45 CALL                             R9 2 1
       46 SETTABLEKS                       R9 R8 K11 ["Position"]
       48 GETIMPORT                        R9 K18 [Vector2.new]
       50 MOVE                             R10 R3
       51 MOVE                             R11 R2
       52 CALL                             R9 2 1
       53 SETTABLEKS                       R9 R8 K14 ["RightTangent"]
       55 DUPTABLE                         R9 K19 [{"Position", "LeftTangent", "RightTangent"}]
       56 GETIMPORT                        R10 K18 [Vector2.new]
       58 LOADN                            R11 0
       59 MOVE                             R12 R1
       60 CALL                             R10 2 1
       61 SETTABLEKS                       R10 R9 K11 ["Position"]
       63 GETIMPORT                        R10 K18 [Vector2.new]
       65 MOVE                             R11 R2
       66 MOVE                             R12 R3
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K12 ["LeftTangent"]
       70 GETIMPORT                        R10 K18 [Vector2.new]
       72 MINUS                            R11 R2
       73 MOVE                             R12 R3
       74 CALL                             R10 2 1
       75 SETTABLEKS                       R10 R9 K14 ["RightTangent"]
       77 DUPTABLE                         R10 K19 [{"Position", "LeftTangent", "RightTangent"}]
       78 GETIMPORT                        R11 K18 [Vector2.new]
       80 MINUS                            R12 R1
       81 LOADN                            R13 0
       82 CALL                             R11 2 1
       83 SETTABLEKS                       R11 R10 K11 ["Position"]
       85 GETIMPORT                        R11 K18 [Vector2.new]
       87 MINUS                            R12 R3
       88 MOVE                             R13 R2
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K12 ["LeftTangent"]
       92 GETIMPORT                        R11 K18 [Vector2.new]
       94 MINUS                            R12 R3
       95 MINUS                            R13 R2
       96 CALL                             R11 2 1
       97 SETTABLEKS                       R11 R10 K14 ["RightTangent"]
       99 DUPTABLE                         R11 K19 [{"Position", "LeftTangent", "RightTangent"}]
      100 GETIMPORT                        R12 K18 [Vector2.new]
      102 LOADN                            R13 0
      103 MINUS                            R14 R1
      104 CALL                             R12 2 1
      105 SETTABLEKS                       R12 R11 K11 ["Position"]
      107 GETIMPORT                        R12 K18 [Vector2.new]
      109 MINUS                            R13 R2
      110 MINUS                            R14 R3
      111 CALL                             R12 2 1
      112 SETTABLEKS                       R12 R11 K12 ["LeftTangent"]
      114 GETIMPORT                        R12 K18 [Vector2.new]
      116 MOVE                             R13 R2
      117 MINUS                            R14 R3
      118 CALL                             R12 2 1
      119 SETTABLEKS                       R12 R11 K14 ["RightTangent"]
      121 DUPTABLE                         R12 K20 [{["Position"], ["LeftTangent"], ["RightTangent"] = }]
      122 GETIMPORT                        R13 K18 [Vector2.new]
      124 MOVE                             R14 R1
      125 LOADN                            R15 0
      126 CALL                             R13 2 1
      127 SETTABLEKS                       R13 R12 K11 ["Position"]
      129 GETIMPORT                        R13 K18 [Vector2.new]
      131 MINUS                            R14 R3
      132 MINUS                            R15 R2
      133 CALL                             R13 2 1
      134 SETTABLEKS                       R13 R12 K12 ["LeftTangent"]
      136 SETLIST                          R7 R8 5 [1]
      138 SETTABLEKS                       R7 R6 K9 ["Points"]
      140 CALL                             R4 2 -1
      141 RETURN                           R4 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Signals"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["Graphing"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_0]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 RETURN                           R4 1
