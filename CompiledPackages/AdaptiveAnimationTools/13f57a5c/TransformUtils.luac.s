PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+16]
        3 NAMECALL                         R1 R0 K0 ["ToAxisAngle"]
        5 CALL                             R1 1 2
        6 JUMPIFNOTEQ                      R2 R2 ; [+8]
        8 MOVE                             R5 R1
        9 NAMECALL                         R3 R1 K1 ["Dot"]
       11 CALL                             R3 2 1
       12 LOADK                            R4 K2 [1E-10]
       13 JUMPIFNOTLT                      R3 R4 ; [+4]
       15 LOADK                            R3 K3 [{1, 0, 0}]
       16 LOADN                            R4 0
       17 RETURN                           R3 2
       18 RETURN                           R1 2
       19 GETTABLEKS                       R1 R0 K4 ["XVector"]
       21 GETTABLEKS                       R2 R0 K5 ["YVector"]
       23 GETTABLEKS                       R3 R0 K6 ["ZVector"]
       25 GETTABLEKS                       R6 R1 K7 ["X"]
       27 GETTABLEKS                       R7 R2 K8 ["Y"]
       29 ADD                              R5 R6 R7
       30 GETTABLEKS                       R6 R3 K9 ["Z"]
       32 ADD                              R4 R5 R6
       33 LOADN                            R6 255
       34 LOADN                            R8 1
       35 SUBK                             R10 R4 K11 [1]
       36 DIVK                             R9 R10 K10 [2]
       37 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       39 GETIMPORT                        R7 K14 [math.min]
       41 CALL                             R7 2 1
       42 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       44 GETIMPORT                        R5 K16 [math.max]
       46 CALL                             R5 2 1
       47 FASTCALL1                        MATH_ACOS R5 ; [+3]
       48 MOVE                             R7 R5
       49 GETIMPORT                        R6 K18 [math.acos]
       51 CALL                             R6 1 1
       52 LOADK                            R7 K19 [1E-08]
       53 JUMPIFNOTLT                      R6 R7 ; [+4]
       55 LOADK                            R7 K3 [{1, 0, 0}]
       56 LOADN                            R8 0
       57 RETURN                           R7 2
       58 FASTCALL1                        MATH_SIN R6 ; [+3]
       59 MOVE                             R9 R6
       60 GETIMPORT                        R8 K21 [math.sin]
       62 CALL                             R8 1 1
       63 MULK                             R7 R8 K10 [2]
       64 GETTABLEKS                       R11 R3 K8 ["Y"]
       66 GETTABLEKS                       R12 R2 K9 ["Z"]
       68 SUB                              R10 R11 R12
       69 DIV                              R9 R10 R7
       70 GETTABLEKS                       R12 R1 K9 ["Z"]
       72 GETTABLEKS                       R13 R3 K7 ["X"]
       74 SUB                              R11 R12 R13
       75 DIV                              R10 R11 R7
       76 GETTABLEKS                       R13 R2 K7 ["X"]
       78 GETTABLEKS                       R14 R1 K8 ["Y"]
       80 SUB                              R12 R13 R14
       81 DIV                              R11 R12 R7
       82 FASTCALL                         VECTOR ; [+2]
       83 GETIMPORT                        R8 K24 [Vector3.new]
       85 CALL                             R8 3 1
       86 GETTABLEKS                       R9 R8 K25 ["Unit"]
       88 MOVE                             R10 R6
       89 RETURN                           R9 2

PROTO_1:
        0 SUB                              R4 R0 R1
        1 FASTCALL1                        MATH_ABS R4 ; [+2]
        2 GETIMPORT                        R3 K2 [math.abs]
        4 CALL                             R3 1 1
        5 LOADK                            R4 K3 [1E-06]
        6 JUMPIFLT                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["isIdentityTransform"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETTABLEKS                       R1 R0 K1 ["Position"]
       11 LOADK                            R4 K2 [{0, 0, 0}]
       12 NAMECALL                         R2 R1 K3 ["FuzzyEq"]
       14 CALL                             R2 2 1
       15 JUMPIF                           R2 ; [+2]
       16 LOADB                            R2 0
       17 RETURN                           R2 1
       18 GETTABLEKS                       R2 R0 K4 ["XVector"]
       20 GETTABLEKS                       R3 R0 K5 ["YVector"]
       22 GETTABLEKS                       R4 R0 K6 ["ZVector"]
       24 DUPCLOSURE                       R5 K7 [PROTO_1]
       25 GETTABLEKS                       R7 R2 K8 ["X"]
       27 SUBK                             R9 R7 K9 [1]
       28 FASTCALL1                        MATH_ABS R9 ; [+2]
       29 GETIMPORT                        R8 K12 [math.abs]
       31 CALL                             R8 1 1
       32 LOADK                            R9 K13 [1E-06]
       33 JUMPIFLT                         R8 R9 ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 JUMPIFNOT                        R6 ; [+103]
       38 GETTABLEKS                       R7 R2 K14 ["Y"]
       40 SUBK                             R9 R7 K15 [0]
       41 FASTCALL1                        MATH_ABS R9 ; [+2]
       42 GETIMPORT                        R8 K12 [math.abs]
       44 CALL                             R8 1 1
       45 LOADK                            R9 K13 [1E-06]
       46 JUMPIFLT                         R8 R9 ; [+2]
       48 LOADB                            R6 0 +1
       49 LOADB                            R6 1
       50 JUMPIFNOT                        R6 ; [+90]
       51 GETTABLEKS                       R7 R2 K16 ["Z"]
       53 SUBK                             R9 R7 K15 [0]
       54 FASTCALL1                        MATH_ABS R9 ; [+2]
       55 GETIMPORT                        R8 K12 [math.abs]
       57 CALL                             R8 1 1
       58 LOADK                            R9 K13 [1E-06]
       59 JUMPIFLT                         R8 R9 ; [+2]
       61 LOADB                            R6 0 +1
       62 LOADB                            R6 1
       63 JUMPIFNOT                        R6 ; [+77]
       64 GETTABLEKS                       R7 R3 K8 ["X"]
       66 SUBK                             R9 R7 K15 [0]
       67 FASTCALL1                        MATH_ABS R9 ; [+2]
       68 GETIMPORT                        R8 K12 [math.abs]
       70 CALL                             R8 1 1
       71 LOADK                            R9 K13 [1E-06]
       72 JUMPIFLT                         R8 R9 ; [+2]
       74 LOADB                            R6 0 +1
       75 LOADB                            R6 1
       76 JUMPIFNOT                        R6 ; [+64]
       77 GETTABLEKS                       R7 R3 K14 ["Y"]
       79 SUBK                             R9 R7 K9 [1]
       80 FASTCALL1                        MATH_ABS R9 ; [+2]
       81 GETIMPORT                        R8 K12 [math.abs]
       83 CALL                             R8 1 1
       84 LOADK                            R9 K13 [1E-06]
       85 JUMPIFLT                         R8 R9 ; [+2]
       87 LOADB                            R6 0 +1
       88 LOADB                            R6 1
       89 JUMPIFNOT                        R6 ; [+51]
       90 GETTABLEKS                       R7 R3 K16 ["Z"]
       92 SUBK                             R9 R7 K15 [0]
       93 FASTCALL1                        MATH_ABS R9 ; [+2]
       94 GETIMPORT                        R8 K12 [math.abs]
       96 CALL                             R8 1 1
       97 LOADK                            R9 K13 [1E-06]
       98 JUMPIFLT                         R8 R9 ; [+2]
      100 LOADB                            R6 0 +1
      101 LOADB                            R6 1
      102 JUMPIFNOT                        R6 ; [+38]
      103 GETTABLEKS                       R7 R4 K8 ["X"]
      105 SUBK                             R9 R7 K15 [0]
      106 FASTCALL1                        MATH_ABS R9 ; [+2]
      107 GETIMPORT                        R8 K12 [math.abs]
      109 CALL                             R8 1 1
      110 LOADK                            R9 K13 [1E-06]
      111 JUMPIFLT                         R8 R9 ; [+2]
      113 LOADB                            R6 0 +1
      114 LOADB                            R6 1
      115 JUMPIFNOT                        R6 ; [+25]
      116 GETTABLEKS                       R7 R4 K14 ["Y"]
      118 SUBK                             R9 R7 K15 [0]
      119 FASTCALL1                        MATH_ABS R9 ; [+2]
      120 GETIMPORT                        R8 K12 [math.abs]
      122 CALL                             R8 1 1
      123 LOADK                            R9 K13 [1E-06]
      124 JUMPIFLT                         R8 R9 ; [+2]
      126 LOADB                            R6 0 +1
      127 LOADB                            R6 1
      128 JUMPIFNOT                        R6 ; [+12]
      129 GETTABLEKS                       R7 R4 K16 ["Z"]
      131 SUBK                             R9 R7 K9 [1]
      132 FASTCALL1                        MATH_ABS R9 ; [+2]
      133 GETIMPORT                        R8 K12 [math.abs]
      135 CALL                             R8 1 1
      136 LOADK                            R9 K13 [1E-06]
      137 JUMPIFLT                         R8 R9 ; [+2]
      139 LOADB                            R6 0 +1
      140 LOADB                            R6 1
      141 RETURN                           R6 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["Position"]
        2 JUMPIFEQKNIL                     R2 ; [+3]
        4 MOVE                             R4 R2
        5 JUMP                             ; [+31]
        6 LOADB                            R4 0
        7 GETTABLEKS                       R6 R3 K1 ["X"]
        9 FASTCALL1                        MATH_ABS R6 ; [+2]
       10 GETIMPORT                        R5 K4 [math.abs]
       12 CALL                             R5 1 1
       13 LOADK                            R6 K5 [1E-06]
       14 JUMPIFNOTLT                      R5 R6 ; [+22]
       16 LOADB                            R4 0
       17 GETTABLEKS                       R6 R3 K6 ["Y"]
       19 FASTCALL1                        MATH_ABS R6 ; [+2]
       20 GETIMPORT                        R5 K4 [math.abs]
       22 CALL                             R5 1 1
       23 LOADK                            R6 K5 [1E-06]
       24 JUMPIFNOTLT                      R5 R6 ; [+12]
       26 GETTABLEKS                       R6 R3 K7 ["Z"]
       28 FASTCALL1                        MATH_ABS R6 ; [+2]
       29 GETIMPORT                        R5 K4 [math.abs]
       31 CALL                             R5 1 1
       32 LOADK                            R6 K5 [1E-06]
       33 JUMPIFLT                         R5 R6 ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 JUMPIFNOT                        R4 ; [+23]
       38 GETUPVAL                         R5 0
       39 MOVE                             R6 R0
       40 CALL                             R5 1 2
       41 MOVE                             R9 R5
       42 NAMECALL                         R7 R1 K8 ["VectorToObjectSpace"]
       44 CALL                             R7 2 1
       45 GETIMPORT                        R8 K11 [CFrame.fromAxisAngle]
       47 GETUPVAL                         R10 1
       48 CALL                             R10 0 1
       49 JUMPIFNOT                        R10 ; [+2]
       50 MOVE                             R9 R7
       51 JUMP                             ; [+1]
       52 MINUS                            R9 R7
       53 MOVE                             R10 R6
       54 CALL                             R8 2 1
       55 MUL                              R9 R1 R8
       56 NAMECALL                         R11 R1 K12 ["Inverse"]
       58 CALL                             R11 1 1
       59 MUL                              R10 R11 R9
       60 RETURN                           R10 1
       61 MUL                              R5 R0 R1
       62 NAMECALL                         R7 R1 K12 ["Inverse"]
       64 CALL                             R7 1 1
       65 MUL                              R6 R7 R5
       66 RETURN                           R6 1

PROTO_4:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["mirrorTransformMotor6DDelta"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+6]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K1 ["mirrorTransformAnimationConstraint"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1
       16 GETIMPORT                        R2 K4 [CFrame.fromMatrix]
       18 LOADK                            R3 K5 [{0, 0, 0}]
       19 LOADK                            R4 K6 [{-1, 0, 0}]
       20 LOADK                            R5 K7 [{0, 1, 0}]
       21 LOADK                            R6 K8 [{0, 0, 1}]
       22 CALL                             R2 4 1
       23 MUL                              R4 R2 R0
       24 MUL                              R3 R4 R2
       25 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R3 R1 K0 ["XVector"]
        2 GETTABLEKS                       R5 R2 K0 ["XVector"]
        4 NAMECALL                         R3 R3 K1 ["Dot"]
        6 CALL                             R3 2 1
        7 LOADN                            R5 0
        8 JUMPIFLT                         R3 R5 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 JUMPIFNOT                        R4 ; [+10]
       13 GETIMPORT                        R5 K4 [CFrame.fromMatrix]
       15 LOADK                            R6 K5 [{0, 0, 0}]
       16 LOADK                            R7 K6 [{-1, 0, 0}]
       17 LOADK                            R8 K7 [{0, 1, 0}]
       18 LOADK                            R9 K8 [{0, 0, 1}]
       19 CALL                             R5 4 1
       20 MUL                              R7 R5 R0
       21 MUL                              R6 R7 R5
       22 RETURN                           R6 1
       23 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["SymmetryUtils"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Flags"]
       16 GETTABLEKS                       R3 R4 K8 ["getFFlagAdaptiveAnimationConstraints"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K7 ["Flags"]
       23 GETTABLEKS                       R4 R5 K9 ["getFFlagAdaptiveAnimationNaNFix"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K10 [PROTO_0]
       27 CAPTURE                          VAL R3
       28 DUPCLOSURE                       R5 K11 [PROTO_2]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 DUPCLOSURE                       R6 K12 [PROTO_3]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 DUPCLOSURE                       R7 K13 [PROTO_4]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 DUPCLOSURE                       R8 K14 [PROTO_5]
       38 DUPTABLE                         R9 K20 [{"axisAngleFromRotation", "isIdentityTransform", "computeTransformAdjustment", "computeMirroredDelta", "computeMirroredWorldForCopy"}]
       39 SETTABLEKS                       R4 R9 K15 ["axisAngleFromRotation"]
       41 SETTABLEKS                       R5 R9 K16 ["isIdentityTransform"]
       43 SETTABLEKS                       R6 R9 K17 ["computeTransformAdjustment"]
       45 SETTABLEKS                       R7 R9 K18 ["computeMirroredDelta"]
       47 SETTABLEKS                       R8 R9 K19 ["computeMirroredWorldForCopy"]
       49 RETURN                           R9 1
