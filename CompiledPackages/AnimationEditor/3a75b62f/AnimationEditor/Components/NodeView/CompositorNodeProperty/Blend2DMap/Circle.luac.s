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
       25 DUPTABLE                         R6 K8 [{"Color3", "Points"}]
       26 GETTABLEKS                       R7 R0 K6 ["Color3"]
       28 SETTABLEKS                       R7 R6 K6 ["Color3"]
       30 NEWTABLE                         R7 0 5
       32 DUPTABLE                         R8 K12 [{"Position", "LeftTangent", "RightTangent"}]
       33 GETIMPORT                        R9 K15 [Vector2.new]
       35 MOVE                             R10 R1
       36 LOADN                            R11 0
       37 CALL                             R9 2 1
       38 SETTABLEKS                       R9 R8 K9 ["Position"]
       40 LOADNIL                          R9
       41 SETTABLEKS                       R9 R8 K10 ["LeftTangent"]
       43 GETIMPORT                        R9 K15 [Vector2.new]
       45 MOVE                             R10 R3
       46 MOVE                             R11 R2
       47 CALL                             R9 2 1
       48 SETTABLEKS                       R9 R8 K11 ["RightTangent"]
       50 DUPTABLE                         R9 K12 [{"Position", "LeftTangent", "RightTangent"}]
       51 GETIMPORT                        R10 K15 [Vector2.new]
       53 LOADN                            R11 0
       54 MOVE                             R12 R1
       55 CALL                             R10 2 1
       56 SETTABLEKS                       R10 R9 K9 ["Position"]
       58 GETIMPORT                        R10 K15 [Vector2.new]
       60 MOVE                             R11 R2
       61 MOVE                             R12 R3
       62 CALL                             R10 2 1
       63 SETTABLEKS                       R10 R9 K10 ["LeftTangent"]
       65 GETIMPORT                        R10 K15 [Vector2.new]
       67 MINUS                            R11 R2
       68 MOVE                             R12 R3
       69 CALL                             R10 2 1
       70 SETTABLEKS                       R10 R9 K11 ["RightTangent"]
       72 DUPTABLE                         R10 K12 [{"Position", "LeftTangent", "RightTangent"}]
       73 GETIMPORT                        R11 K15 [Vector2.new]
       75 MINUS                            R12 R1
       76 LOADN                            R13 0
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K9 ["Position"]
       80 GETIMPORT                        R11 K15 [Vector2.new]
       82 MINUS                            R12 R3
       83 MOVE                             R13 R2
       84 CALL                             R11 2 1
       85 SETTABLEKS                       R11 R10 K10 ["LeftTangent"]
       87 GETIMPORT                        R11 K15 [Vector2.new]
       89 MINUS                            R12 R3
       90 MINUS                            R13 R2
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K11 ["RightTangent"]
       94 DUPTABLE                         R11 K12 [{"Position", "LeftTangent", "RightTangent"}]
       95 GETIMPORT                        R12 K15 [Vector2.new]
       97 LOADN                            R13 0
       98 MINUS                            R14 R1
       99 CALL                             R12 2 1
      100 SETTABLEKS                       R12 R11 K9 ["Position"]
      102 GETIMPORT                        R12 K15 [Vector2.new]
      104 MINUS                            R13 R2
      105 MINUS                            R14 R3
      106 CALL                             R12 2 1
      107 SETTABLEKS                       R12 R11 K10 ["LeftTangent"]
      109 GETIMPORT                        R12 K15 [Vector2.new]
      111 MOVE                             R13 R2
      112 MINUS                            R14 R3
      113 CALL                             R12 2 1
      114 SETTABLEKS                       R12 R11 K11 ["RightTangent"]
      116 DUPTABLE                         R12 K12 [{"Position", "LeftTangent", "RightTangent"}]
      117 GETIMPORT                        R13 K15 [Vector2.new]
      119 MOVE                             R14 R1
      120 LOADN                            R15 0
      121 CALL                             R13 2 1
      122 SETTABLEKS                       R13 R12 K9 ["Position"]
      124 GETIMPORT                        R13 K15 [Vector2.new]
      126 MINUS                            R14 R3
      127 MINUS                            R15 R2
      128 CALL                             R13 2 1
      129 SETTABLEKS                       R13 R12 K10 ["LeftTangent"]
      131 LOADNIL                          R13
      132 SETTABLEKS                       R13 R12 K11 ["RightTangent"]
      134 SETLIST                          R7 R8 5 [1]
      136 SETTABLEKS                       R7 R6 K7 ["Points"]
      138 CALL                             R4 2 -1
      139 RETURN                           R4 -1

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
