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
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K4 ["createElement"]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K5 ["Curve"]
       25 DUPTABLE                         R6 K9 [{"Color3", "Thickness", "Points"}]
       26 GETTABLEKS                       R7 R0 K6 ["Color3"]
       28 SETTABLEKS                       R7 R6 K6 ["Color3"]
       30 GETTABLEKS                       R7 R0 K7 ["Thickness"]
       32 SETTABLEKS                       R7 R6 K7 ["Thickness"]
       34 NEWTABLE                         R7 0 5
       36 DUPTABLE                         R8 K13 [{"Position", "LeftTangent", "RightTangent"}]
       37 GETIMPORT                        R9 K16 [Vector2.new]
       39 MOVE                             R10 R1
       40 LOADN                            R11 0
       41 CALL                             R9 2 1
       42 SETTABLEKS                       R9 R8 K10 ["Position"]
       44 LOADNIL                          R9
       45 SETTABLEKS                       R9 R8 K11 ["LeftTangent"]
       47 GETIMPORT                        R9 K16 [Vector2.new]
       49 MOVE                             R10 R3
       50 MOVE                             R11 R2
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K12 ["RightTangent"]
       54 DUPTABLE                         R9 K13 [{"Position", "LeftTangent", "RightTangent"}]
       55 GETIMPORT                        R10 K16 [Vector2.new]
       57 LOADN                            R11 0
       58 MOVE                             R12 R1
       59 CALL                             R10 2 1
       60 SETTABLEKS                       R10 R9 K10 ["Position"]
       62 GETIMPORT                        R10 K16 [Vector2.new]
       64 MOVE                             R11 R2
       65 MOVE                             R12 R3
       66 CALL                             R10 2 1
       67 SETTABLEKS                       R10 R9 K11 ["LeftTangent"]
       69 GETIMPORT                        R10 K16 [Vector2.new]
       71 MINUS                            R11 R2
       72 MOVE                             R12 R3
       73 CALL                             R10 2 1
       74 SETTABLEKS                       R10 R9 K12 ["RightTangent"]
       76 DUPTABLE                         R10 K13 [{"Position", "LeftTangent", "RightTangent"}]
       77 GETIMPORT                        R11 K16 [Vector2.new]
       79 MINUS                            R12 R1
       80 LOADN                            R13 0
       81 CALL                             R11 2 1
       82 SETTABLEKS                       R11 R10 K10 ["Position"]
       84 GETIMPORT                        R11 K16 [Vector2.new]
       86 MINUS                            R12 R3
       87 MOVE                             R13 R2
       88 CALL                             R11 2 1
       89 SETTABLEKS                       R11 R10 K11 ["LeftTangent"]
       91 GETIMPORT                        R11 K16 [Vector2.new]
       93 MINUS                            R12 R3
       94 MINUS                            R13 R2
       95 CALL                             R11 2 1
       96 SETTABLEKS                       R11 R10 K12 ["RightTangent"]
       98 DUPTABLE                         R11 K13 [{"Position", "LeftTangent", "RightTangent"}]
       99 GETIMPORT                        R12 K16 [Vector2.new]
      101 LOADN                            R13 0
      102 MINUS                            R14 R1
      103 CALL                             R12 2 1
      104 SETTABLEKS                       R12 R11 K10 ["Position"]
      106 GETIMPORT                        R12 K16 [Vector2.new]
      108 MINUS                            R13 R2
      109 MINUS                            R14 R3
      110 CALL                             R12 2 1
      111 SETTABLEKS                       R12 R11 K11 ["LeftTangent"]
      113 GETIMPORT                        R12 K16 [Vector2.new]
      115 MOVE                             R13 R2
      116 MINUS                            R14 R3
      117 CALL                             R12 2 1
      118 SETTABLEKS                       R12 R11 K12 ["RightTangent"]
      120 DUPTABLE                         R12 K13 [{"Position", "LeftTangent", "RightTangent"}]
      121 GETIMPORT                        R13 K16 [Vector2.new]
      123 MOVE                             R14 R1
      124 LOADN                            R15 0
      125 CALL                             R13 2 1
      126 SETTABLEKS                       R13 R12 K10 ["Position"]
      128 GETIMPORT                        R13 K16 [Vector2.new]
      130 MINUS                            R14 R3
      131 MINUS                            R15 R2
      132 CALL                             R13 2 1
      133 SETTABLEKS                       R13 R12 K11 ["LeftTangent"]
      135 LOADNIL                          R13
      136 SETTABLEKS                       R13 R12 K12 ["RightTangent"]
      138 SETLIST                          R7 R8 5 [1]
      140 SETTABLEKS                       R7 R6 K8 ["Points"]
      142 CALL                             R4 2 -1
      143 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Graphing"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
