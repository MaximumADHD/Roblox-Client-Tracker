PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["editableMesh"]
        3 NAMECALL                         R1 R1 K1 ["GetEditableMeshVerts"]
        5 CALL                             R1 2 1
        6 LOADK                            R2 K2 [∞]
        7 LOADK                            R3 K3 [-∞]
        8 LOADK                            R4 K2 [∞]
        9 LOADK                            R5 K3 [-∞]
       10 LOADK                            R6 K2 [∞]
       11 LOADK                            R7 K3 [-∞]
       12 LOADN                            R10 1
       13 LENGTH                           R8 R1
       14 LOADN                            R9 1
       15 FORNPREP                         R8
       16 GETTABLE                         R11 R1 R10
       17 GETTABLEKS                       R14 R11 K4 ["X"]
       19 FASTCALL2                        MATH_MIN R2 R14 ; [+4]
       21 MOVE                             R13 R2
       22 GETIMPORT                        R12 K7 [math.min]
       24 CALL                             R12 2 1
       25 MOVE                             R2 R12
       26 GETTABLEKS                       R14 R11 K8 ["Y"]
       28 FASTCALL2                        MATH_MIN R4 R14 ; [+4]
       30 MOVE                             R13 R4
       31 GETIMPORT                        R12 K7 [math.min]
       33 CALL                             R12 2 1
       34 MOVE                             R4 R12
       35 GETTABLEKS                       R14 R11 K9 ["Z"]
       37 FASTCALL2                        MATH_MIN R6 R14 ; [+4]
       39 MOVE                             R13 R6
       40 GETIMPORT                        R12 K7 [math.min]
       42 CALL                             R12 2 1
       43 MOVE                             R6 R12
       44 GETTABLEKS                       R14 R11 K4 ["X"]
       46 FASTCALL2                        MATH_MAX R3 R14 ; [+4]
       48 MOVE                             R13 R3
       49 GETIMPORT                        R12 K11 [math.max]
       51 CALL                             R12 2 1
       52 MOVE                             R3 R12
       53 GETTABLEKS                       R14 R11 K8 ["Y"]
       55 FASTCALL2                        MATH_MAX R5 R14 ; [+4]
       57 MOVE                             R13 R5
       58 GETIMPORT                        R12 K11 [math.max]
       60 CALL                             R12 2 1
       61 MOVE                             R5 R12
       62 GETTABLEKS                       R14 R11 K9 ["Z"]
       64 FASTCALL2                        MATH_MAX R7 R14 ; [+4]
       66 MOVE                             R13 R7
       67 GETIMPORT                        R12 K11 [math.max]
       69 CALL                             R12 2 1
       70 MOVE                             R7 R12
       71 FORNLOOP                         R8
       72 SUB                              R9 R3 R2
       73 SUB                              R10 R5 R4
       74 SUB                              R11 R7 R6
       75 FASTCALL                         VECTOR ; [+2]
       76 GETIMPORT                        R8 K14 [Vector3.new]
       78 CALL                             R8 3 1
       79 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["util"]
       17 GETTABLEKS                       R3 R3 K10 ["Types"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K11 [PROTO_0]
       21 CAPTURE                          VAL R0
       22 RETURN                           R3 1
