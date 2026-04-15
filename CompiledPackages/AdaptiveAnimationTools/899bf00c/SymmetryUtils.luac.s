PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 NAMECALL                         R2 R0 K1 ["ToEulerAnglesYXZ"]
        4 CALL                             R2 1 3
        5 GETIMPORT                        R6 K4 [CFrame.new]
        7 GETTABLEKS                       R8 R1 K5 ["X"]
        9 MINUS                            R7 R8
       10 GETTABLEKS                       R8 R1 K6 ["Y"]
       12 GETTABLEKS                       R9 R1 K7 ["Z"]
       14 CALL                             R6 3 1
       15 GETIMPORT                        R7 K9 [CFrame.fromEulerAnglesYXZ]
       17 MINUS                            R8 R2
       18 MOVE                             R9 R3
       19 MINUS                            R10 R4
       20 CALL                             R7 3 1
       21 MUL                              R5 R6 R7
       22 RETURN                           R5 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [CFrame.fromMatrix]
        2 LOADK                            R2 K3 [{0, 0, 0}]
        3 LOADK                            R3 K4 [{-1, 0, 0}]
        4 LOADK                            R4 K5 [{0, 1, 0}]
        5 LOADK                            R5 K6 [{0, 0, 1}]
        6 CALL                             R1 4 1
        7 MUL                              R3 R1 R0
        8 MUL                              R2 R3 R1
        9 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["mirrorTransformMotor6D"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["mirrorTransformAnimationConstraint"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 SUB                              R4 R0 R1
        1 FASTCALL1                        MATH_ABS R4 ; [+2]
        2 GETIMPORT                        R3 K2 [math.abs]
        4 CALL                             R3 1 1
        5 LOADK                            R4 K3 [1E-06]
        6 JUMPIFLT                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 LOADK                            R4 K1 [{0, 0, 0}]
        3 NAMECALL                         R2 R1 K2 ["FuzzyEq"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+2]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R0 K3 ["XVector"]
       11 GETTABLEKS                       R3 R0 K4 ["YVector"]
       13 GETTABLEKS                       R4 R0 K5 ["ZVector"]
       15 DUPCLOSURE                       R5 K6 [PROTO_3]
       16 GETTABLEKS                       R7 R2 K7 ["X"]
       18 SUBK                             R9 R7 K8 [1]
       19 FASTCALL1                        MATH_ABS R9 ; [+2]
       20 GETIMPORT                        R8 K11 [math.abs]
       22 CALL                             R8 1 1
       23 LOADK                            R9 K12 [1E-06]
       24 JUMPIFLT                         R8 R9 ; [+2]
       26 LOADB                            R6 0 +1
       27 LOADB                            R6 1
       28 JUMPIFNOT                        R6 ; [+103]
       29 GETTABLEKS                       R7 R2 K13 ["Y"]
       31 SUBK                             R9 R7 K14 [0]
       32 FASTCALL1                        MATH_ABS R9 ; [+2]
       33 GETIMPORT                        R8 K11 [math.abs]
       35 CALL                             R8 1 1
       36 LOADK                            R9 K12 [1E-06]
       37 JUMPIFLT                         R8 R9 ; [+2]
       39 LOADB                            R6 0 +1
       40 LOADB                            R6 1
       41 JUMPIFNOT                        R6 ; [+90]
       42 GETTABLEKS                       R7 R2 K15 ["Z"]
       44 SUBK                             R9 R7 K14 [0]
       45 FASTCALL1                        MATH_ABS R9 ; [+2]
       46 GETIMPORT                        R8 K11 [math.abs]
       48 CALL                             R8 1 1
       49 LOADK                            R9 K12 [1E-06]
       50 JUMPIFLT                         R8 R9 ; [+2]
       52 LOADB                            R6 0 +1
       53 LOADB                            R6 1
       54 JUMPIFNOT                        R6 ; [+77]
       55 GETTABLEKS                       R7 R3 K7 ["X"]
       57 SUBK                             R9 R7 K14 [0]
       58 FASTCALL1                        MATH_ABS R9 ; [+2]
       59 GETIMPORT                        R8 K11 [math.abs]
       61 CALL                             R8 1 1
       62 LOADK                            R9 K12 [1E-06]
       63 JUMPIFLT                         R8 R9 ; [+2]
       65 LOADB                            R6 0 +1
       66 LOADB                            R6 1
       67 JUMPIFNOT                        R6 ; [+64]
       68 GETTABLEKS                       R7 R3 K13 ["Y"]
       70 SUBK                             R9 R7 K8 [1]
       71 FASTCALL1                        MATH_ABS R9 ; [+2]
       72 GETIMPORT                        R8 K11 [math.abs]
       74 CALL                             R8 1 1
       75 LOADK                            R9 K12 [1E-06]
       76 JUMPIFLT                         R8 R9 ; [+2]
       78 LOADB                            R6 0 +1
       79 LOADB                            R6 1
       80 JUMPIFNOT                        R6 ; [+51]
       81 GETTABLEKS                       R7 R3 K15 ["Z"]
       83 SUBK                             R9 R7 K14 [0]
       84 FASTCALL1                        MATH_ABS R9 ; [+2]
       85 GETIMPORT                        R8 K11 [math.abs]
       87 CALL                             R8 1 1
       88 LOADK                            R9 K12 [1E-06]
       89 JUMPIFLT                         R8 R9 ; [+2]
       91 LOADB                            R6 0 +1
       92 LOADB                            R6 1
       93 JUMPIFNOT                        R6 ; [+38]
       94 GETTABLEKS                       R7 R4 K7 ["X"]
       96 SUBK                             R9 R7 K14 [0]
       97 FASTCALL1                        MATH_ABS R9 ; [+2]
       98 GETIMPORT                        R8 K11 [math.abs]
      100 CALL                             R8 1 1
      101 LOADK                            R9 K12 [1E-06]
      102 JUMPIFLT                         R8 R9 ; [+2]
      104 LOADB                            R6 0 +1
      105 LOADB                            R6 1
      106 JUMPIFNOT                        R6 ; [+25]
      107 GETTABLEKS                       R7 R4 K13 ["Y"]
      109 SUBK                             R9 R7 K14 [0]
      110 FASTCALL1                        MATH_ABS R9 ; [+2]
      111 GETIMPORT                        R8 K11 [math.abs]
      113 CALL                             R8 1 1
      114 LOADK                            R9 K12 [1E-06]
      115 JUMPIFLT                         R8 R9 ; [+2]
      117 LOADB                            R6 0 +1
      118 LOADB                            R6 1
      119 JUMPIFNOT                        R6 ; [+12]
      120 GETTABLEKS                       R7 R4 K15 ["Z"]
      122 SUBK                             R9 R7 K8 [1]
      123 FASTCALL1                        MATH_ABS R9 ; [+2]
      124 GETIMPORT                        R8 K11 [math.abs]
      126 CALL                             R8 1 1
      127 LOADK                            R9 K12 [1E-06]
      128 JUMPIFLT                         R8 R9 ; [+2]
      130 LOADB                            R6 0 +1
      131 LOADB                            R6 1
      132 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["mirrorTransformMotor6D"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["mirrorTransformAnimationConstraint"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K5 ["getMirroredTransform"]
       13 DUPCLOSURE                       R1 K6 [PROTO_4]
       14 SETTABLEKS                       R1 R0 K7 ["isIdentityTransform"]
       16 RETURN                           R0 1
