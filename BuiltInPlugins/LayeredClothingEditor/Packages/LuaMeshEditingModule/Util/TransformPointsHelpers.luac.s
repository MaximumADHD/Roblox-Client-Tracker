PROTO_0:
        0 NEWTABLE                         R4 0 0
        2 GETIMPORT                        R5 K1 [pairs]
        4 MOVE                             R6 R2
        5 CALL                             R5 1 3
        6 FORGPREP_NEXT                    R5
        7 MOVE                             R12 R8
        8 NAMECALL                         R10 R0 K2 ["getMeshOrigin"]
       10 CALL                             R10 2 1
       11 GETTABLE                         R11 R4 R8
       12 JUMPIF                           R11 ; [+3]
       13 NEWTABLE                         R11 0 0
       15 SETTABLE                         R11 R4 R8
       16 GETIMPORT                        R11 K1 [pairs]
       18 MOVE                             R12 R9
       19 CALL                             R11 1 3
       20 FORGPREP_NEXT                    R11
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
       33 FORGLOOP                         R5 2 ; [-27]
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
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 CALL                             R5 4 1
        6 GETIMPORT                        R6 K1 [pairs]
        8 MOVE                             R7 R5
        9 CALL                             R6 1 3
       10 FORGPREP_NEXT                    R6
       11 GETTABLE                         R11 R2 R9
       12 GETIMPORT                        R12 K1 [pairs]
       14 MOVE                             R13 R10
       15 CALL                             R12 1 3
       16 FORGPREP_NEXT                    R12
       17 SETTABLE                         R16 R11 R15
       18 FORGLOOP                         R12 2 ; [-2]
       20 FORGLOOP                         R6 2 ; [-10]
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 CALL                             R4 4 1
        6 MOVE                             R7 R4
        7 NAMECALL                         R5 R0 K0 ["updateVertexData"]
        9 CALL                             R5 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+27]
        3 LOADN                            R4 0
        4 JUMPIFNOTLT                      R3 R4 ; [+25]
        6 GETTABLEKS                       R4 R2 K0 ["RightVector"]
        8 GETIMPORT                        R5 K3 [CFrame.new]
       10 GETTABLEKS                       R7 R1 K4 ["Position"]
       12 LOADN                            R10 2
       13 MOVE                             R14 R4
       14 NAMECALL                         R12 R7 K5 ["Dot"]
       16 CALL                             R12 2 1
       17 MOVE                             R15 R4
       18 NAMECALL                         R13 R4 K5 ["Dot"]
       20 CALL                             R13 2 1
       21 DIV                              R11 R12 R13
       22 MUL                              R9 R10 R11
       23 MUL                              R8 R9 R4
       24 SUB                              R6 R7 R8
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R6 R1 K6 ["Rotation"]
       28 MUL                              R1 R5 R6
       29 MINUS                            R3 R3
       30 GETTABLEKS                       R6 R1 K7 ["p"]
       32 SUB                              R5 R1 R6
       33 GETTABLEKS                       R7 R1 K7 ["p"]
       35 MUL                              R6 R7 R3
       36 ADD                              R4 R5 R6
       37 NAMECALL                         R6 R2 K8 ["inverse"]
       39 CALL                             R6 1 1
       40 MUL                              R8 R2 R0
       41 MUL                              R7 R4 R8
       42 MUL                              R5 R6 R7
       43 RETURN                           R5 1

PROTO_5:
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
       28 NAMECALL                         R7 R2 K7 ["inverse"]
       30 CALL                             R7 1 1
       31 MUL                              R8 R3 R0
       32 MUL                              R6 R7 R8
       33 NAMECALL                         R9 R3 K7 ["inverse"]
       35 CALL                             R9 1 1
       36 MUL                              R8 R9 R2
       37 MUL                              R9 R5 R6
       38 MUL                              R7 R8 R9
       39 RETURN                           R7 1

PROTO_6:
        0 MUL                              R2 R2 R5
        1 GETIMPORT                        R6 K2 [CFrame.fromAxisAngle]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 CALL                             R6 2 1
        6 MUL                              R8 R4 R0
        7 SUB                              R7 R8 R3
        8 NAMECALL                         R9 R4 K3 ["inverse"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R3 K7 ["getFFlagAvatarPreviewerCageEditingTools"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 DUPCLOSURE                       R4 K9 [PROTO_1]
       18 DUPCLOSURE                       R5 K10 [PROTO_2]
       19 CAPTURE                          VAL R3
       20 SETTABLEKS                       R5 R2 K11 ["transformControlPoints"]
       22 DUPCLOSURE                       R5 K12 [PROTO_3]
       23 CAPTURE                          VAL R3
       24 SETTABLEKS                       R5 R2 K13 ["transformVertices"]
       26 DUPCLOSURE                       R5 K14 [PROTO_4]
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R5 R2 K15 ["translatePoint"]
       30 DUPCLOSURE                       R5 K16 [PROTO_5]
       31 SETTABLEKS                       R5 R2 K17 ["scalePoint"]
       33 DUPCLOSURE                       R5 K18 [PROTO_6]
       34 SETTABLEKS                       R5 R2 K19 ["rotatePoint"]
       36 RETURN                           R2 1
