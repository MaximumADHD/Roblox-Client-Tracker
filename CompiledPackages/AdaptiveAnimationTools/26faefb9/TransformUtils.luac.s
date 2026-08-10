PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["ToAxisAngle"]
        2 CALL                             R1 1 2
        3 JUMPIFNOTEQ                      R2 R2 ; [+8]
        5 MOVE                             R5 R1
        6 NAMECALL                         R3 R1 K1 ["Dot"]
        8 CALL                             R3 2 1
        9 LOADK                            R4 K2 [1E-10]
       10 JUMPIFNOTLT                      R3 R4 ; [+4]
       12 LOADK                            R3 K3 [{1, 0, 0}]
       13 LOADN                            R4 0
       14 RETURN                           R3 2
       15 RETURN                           R1 2

PROTO_1:
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
       37 JUMPIFNOT                        R4 ; [+32]
       38 NAMECALL                         R7 R0 K8 ["ToAxisAngle"]
       40 CALL                             R7 1 2
       41 JUMPIFNOTEQ                      R8 R8 ; [+8]
       43 MOVE                             R11 R7
       44 NAMECALL                         R9 R7 K9 ["Dot"]
       46 CALL                             R9 2 1
       47 LOADK                            R10 K10 [1E-10]
       48 JUMPIFNOTLT                      R9 R10 ; [+4]
       50 LOADK                            R5 K11 [{1, 0, 0}]
       51 LOADN                            R6 0
       52 JUMP                             ; [+2]
       53 MOVE                             R5 R7
       54 MOVE                             R6 R8
       55 MOVE                             R9 R5
       56 NAMECALL                         R7 R1 K12 ["VectorToObjectSpace"]
       58 CALL                             R7 2 1
       59 GETIMPORT                        R8 K15 [CFrame.fromAxisAngle]
       61 MOVE                             R9 R7
       62 MOVE                             R10 R6
       63 CALL                             R8 2 1
       64 MUL                              R9 R1 R8
       65 NAMECALL                         R11 R1 K16 ["Inverse"]
       67 CALL                             R11 1 1
       68 MUL                              R10 R11 R9
       69 RETURN                           R10 1
       70 MUL                              R5 R0 R1
       71 NAMECALL                         R7 R1 K16 ["Inverse"]
       73 CALL                             R7 1 1
       74 MUL                              R6 R7 R5
       75 RETURN                           R6 1

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["mirrorTransformMotor6DDelta"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["mirrorTransformAnimationConstraint"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1

PROTO_3:
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
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 DUPCLOSURE                       R3 K8 [PROTO_1]
       14 DUPCLOSURE                       R4 K9 [PROTO_2]
       15 CAPTURE                          VAL R1
       16 DUPCLOSURE                       R5 K10 [PROTO_3]
       17 DUPTABLE                         R6 K16 [{"axisAngleFromRotation", "isIdentityTransform", "computeTransformAdjustment", "computeMirroredDelta", "computeMirroredWorldForCopy"}]
       18 SETTABLEKS                       R2 R6 K11 ["axisAngleFromRotation"]
       20 GETTABLEKS                       R7 R1 K12 ["isIdentityTransform"]
       22 SETTABLEKS                       R7 R6 K12 ["isIdentityTransform"]
       24 SETTABLEKS                       R3 R6 K13 ["computeTransformAdjustment"]
       26 SETTABLEKS                       R4 R6 K14 ["computeMirroredDelta"]
       28 SETTABLEKS                       R5 R6 K15 ["computeMirroredWorldForCopy"]
       30 RETURN                           R6 1
