PROTO_0:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R2
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 MOVE                             R12 R8
        7 NAMECALL                         R10 R0 K0 ["getMeshOriginWorld"]
        9 CALL                             R10 2 1
       10 JUMPIFEQKNIL                     R10 ; [+22]
       12 GETTABLE                         R11 R4 R8
       13 JUMPIF                           R11 ; [+3]
       14 NEWTABLE                         R11 0 0
       16 SETTABLE                         R11 R4 R8
       17 MOVE                             R11 R9
       18 LOADNIL                          R12
       19 LOADNIL                          R13
       20 FORGPREP                         R11
       21 GETTABLE                         R17 R1 R8
       22 GETTABLE                         R16 R17 R14
       23 JUMPIFNOT                        R16 ; [+7]
       24 MOVE                             R17 R3
       25 MOVE                             R18 R10
       26 MOVE                             R19 R16
       27 MOVE                             R20 R15
       28 CALL                             R17 3 1
       29 GETTABLE                         R18 R4 R8
       30 SETTABLE                         R17 R18 R14
       31 FORGLOOP                         R11 2 ; [-11]
       33 FORGLOOP                         R5 2 ; [-28]
       35 RETURN                           R4 1

PROTO_1:
        0 LOADN                            R5 2
        1 MOVE                             R9 R1
        2 NAMECALL                         R7 R0 K0 ["Dot"]
        4 CALL                             R7 2 1
        5 MOVE                             R10 R1
        6 NAMECALL                         R8 R1 K0 ["Dot"]
        8 CALL                             R8 2 1
        9 DIV                              R6 R7 R8
       10 MUL                              R4 R5 R6
       11 MUL                              R3 R4 R1
       12 SUB                              R2 R0 R3
       13 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getTransformedPoints"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 MOVE                             R8 R3
        7 CALL                             R4 4 1
        8 GETUPVAL                         R5 1
        9 MOVE                             R6 R1
       10 CALL                             R5 1 1
       11 MOVE                             R6 R4
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 GETTABLE                         R11 R5 R9
       16 MOVE                             R12 R10
       17 LOADNIL                          R13
       18 LOADNIL                          R14
       19 FORGPREP                         R12
       20 SETTABLE                         R16 R11 R15
       21 FORGLOOP                         R12 2 ; [-2]
       23 FORGLOOP                         R6 2 ; [-9]
       25 GETIMPORT                        R6 K3 [table.freeze]
       27 MOVE                             R7 R5
       28 CALL                             R6 1 -1
       29 RETURN                           R6 -1

PROTO_3:
        0 LOADN                            R4 0
        1 JUMPIFNOTLT                      R3 R4 ; [+25]
        3 GETTABLEKS                       R4 R2 K0 ["RightVector"]
        5 GETIMPORT                        R5 K3 [CFrame.new]
        7 GETTABLEKS                       R7 R1 K4 ["Position"]
        9 LOADN                            R10 2
       10 MOVE                             R14 R4
       11 NAMECALL                         R12 R7 K5 ["Dot"]
       13 CALL                             R12 2 1
       14 MOVE                             R15 R4
       15 NAMECALL                         R13 R4 K5 ["Dot"]
       17 CALL                             R13 2 1
       18 DIV                              R11 R12 R13
       19 MUL                              R9 R10 R11
       20 MUL                              R8 R9 R4
       21 SUB                              R6 R7 R8
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R6 R1 K6 ["Rotation"]
       25 MUL                              R1 R5 R6
       26 MINUS                            R3 R3
       27 GETTABLEKS                       R6 R1 K4 ["Position"]
       29 SUB                              R5 R1 R6
       30 GETTABLEKS                       R7 R1 K4 ["Position"]
       32 MUL                              R6 R7 R3
       33 ADD                              R4 R5 R6
       34 NAMECALL                         R6 R2 K7 ["Inverse"]
       36 CALL                             R6 1 1
       37 MUL                              R8 R2 R0
       38 MUL                              R7 R4 R8
       39 MUL                              R5 R6 R7
       40 RETURN                           R5 1

PROTO_4:
        0 GETTABLEKS                       R9 R1 K1 ["X"]
        2 SUBRK                            R8 R0 K9 [NULL]
        3 SUBRK                            R9 R0 K4 ["Vector3"]
        4 MUL                              R7 R8 R9
        5 GETTABLEKS                       R8 R1 K1 ["X"]
        7 ADD                              R6 R7 R8
        8 GETTABLEKS                       R10 R1 K2 ["Y"]
       10 SUBRK                            R9 R0 K10 [NULL]
       11 SUBRK                            R10 R0 K4 ["Vector3"]
       12 MUL                              R8 R9 R10
       13 GETTABLEKS                       R9 R1 K2 ["Y"]
       15 ADD                              R7 R8 R9
       16 GETTABLEKS                       R11 R1 K3 ["Z"]
       18 SUBRK                            R10 R0 K11 [NULL]
       19 SUBRK                            R11 R0 K4 ["Vector3"]
       20 MUL                              R9 R10 R11
       21 GETTABLEKS                       R10 R1 K3 ["Z"]
       23 ADD                              R8 R9 R10
       24 FASTCALL                         VECTOR ; [+2]
       25 GETIMPORT                        R5 K6 [Vector3.new]
       27 CALL                             R5 3 1
       28 NAMECALL                         R7 R2 K7 ["Inverse"]
       30 CALL                             R7 1 1
       31 MUL                              R8 R3 R0
       32 MUL                              R6 R7 R8
       33 NAMECALL                         R9 R3 K7 ["Inverse"]
       35 CALL                             R9 1 1
       36 MUL                              R8 R9 R2
       37 MUL                              R9 R5 R6
       38 MUL                              R7 R8 R9
       39 RETURN                           R7 1

PROTO_5:
        0 MUL                              R2 R2 R5
        1 GETIMPORT                        R6 K2 [CFrame.fromAxisAngle]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 CALL                             R6 2 1
        6 MUL                              R8 R4 R0
        7 SUB                              R7 R8 R3
        8 NAMECALL                         R9 R4 K3 ["Inverse"]
       10 CALL                             R9 1 1
       11 MUL                              R11 R6 R7
       12 ADD                              R10 R11 R3
       13 MUL                              R8 R9 R10
       14 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["MeshEditingContexts"]
       11 GETTABLEKS                       R2 R2 K7 ["MeshEditingContextBase"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["deepCopy"]
       25 CALL                             R3 1 1
       26 NEWTABLE                         R4 8 0
       28 DUPCLOSURE                       R5 K11 [PROTO_0]
       29 SETTABLEKS                       R5 R4 K12 ["getTransformedPoints"]
       31 DUPCLOSURE                       R5 K13 [PROTO_1]
       32 DUPCLOSURE                       R6 K14 [PROTO_2]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R3
       35 SETTABLEKS                       R6 R4 K15 ["applyTransformControlPoints"]
       37 DUPCLOSURE                       R6 K16 [PROTO_3]
       38 SETTABLEKS                       R6 R4 K17 ["translatePoint"]
       40 DUPCLOSURE                       R6 K18 [PROTO_4]
       41 SETTABLEKS                       R6 R4 K19 ["scalePoint"]
       43 DUPCLOSURE                       R6 K20 [PROTO_5]
       44 SETTABLEKS                       R6 R4 K21 ["rotatePoint"]
       46 RETURN                           R4 1
