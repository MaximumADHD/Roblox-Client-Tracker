PROTO_0:
        0 JUMPIFNOT                        R0 ; [+24]
        1 JUMPIFNOT                        R1 ; [+23]
        2 MOVE                             R4 R2
        3 GETTABLEKS                       R5 R0 K0 ["X"]
        5 GETTABLEKS                       R6 R1 K0 ["X"]
        7 CALL                             R4 2 1
        8 MOVE                             R5 R2
        9 GETTABLEKS                       R6 R0 K1 ["Y"]
       11 GETTABLEKS                       R7 R1 K1 ["Y"]
       13 CALL                             R5 2 1
       14 MOVE                             R6 R2
       15 GETTABLEKS                       R7 R0 K2 ["Z"]
       17 GETTABLEKS                       R8 R1 K2 ["Z"]
       19 CALL                             R6 2 -1
       20 FASTCALL                         VECTOR ; [+2]
       21 GETIMPORT                        R3 K5 [Vector3.new]
       23 CALL                             R3 -1 1
       24 RETURN                           R3 1
       25 OR                               R3 R0 R1
       26 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R5 K2 [math.min]
        2 JUMPIFNOT                        R0 ; [+31]
        3 JUMPIFNOT                        R2 ; [+30]
        4 GETTABLEKS                       R8 R0 K3 ["X"]
        6 GETTABLEKS                       R9 R2 K3 ["X"]
        8 FASTCALL2                        MATH_MIN R8 R9 ; [+2]
       10 MOVE                             R7 R5
       11 CALL                             R7 2 1
       12 GETTABLEKS                       R9 R0 K4 ["Y"]
       14 GETTABLEKS                       R10 R2 K4 ["Y"]
       16 FASTCALL2                        MATH_MIN R9 R10 ; [+2]
       18 MOVE                             R8 R5
       19 CALL                             R8 2 1
       20 GETTABLEKS                       R10 R0 K5 ["Z"]
       22 GETTABLEKS                       R11 R2 K5 ["Z"]
       24 FASTCALL2                        MATH_MIN R10 R11 ; [+2]
       26 MOVE                             R9 R5
       27 CALL                             R9 2 1
       28 FASTCALL                         VECTOR ; [+2]
       29 GETIMPORT                        R6 K8 [Vector3.new]
       31 CALL                             R6 3 1
       32 MOVE                             R4 R6
       33 JUMP                             ; [+1]
       34 OR                               R4 R0 R2
       35 GETIMPORT                        R6 K10 [math.max]
       37 JUMPIFNOT                        R1 ; [+31]
       38 JUMPIFNOT                        R3 ; [+30]
       39 GETTABLEKS                       R9 R1 K3 ["X"]
       41 GETTABLEKS                       R10 R3 K3 ["X"]
       43 FASTCALL2                        MATH_MAX R9 R10 ; [+2]
       45 MOVE                             R8 R6
       46 CALL                             R8 2 1
       47 GETTABLEKS                       R10 R1 K4 ["Y"]
       49 GETTABLEKS                       R11 R3 K4 ["Y"]
       51 FASTCALL2                        MATH_MAX R10 R11 ; [+2]
       53 MOVE                             R9 R6
       54 CALL                             R9 2 1
       55 GETTABLEKS                       R11 R1 K5 ["Z"]
       57 GETTABLEKS                       R12 R3 K5 ["Z"]
       59 FASTCALL2                        MATH_MAX R11 R12 ; [+2]
       61 MOVE                             R10 R6
       62 CALL                             R10 2 1
       63 FASTCALL                         VECTOR ; [+2]
       64 GETIMPORT                        R7 K8 [Vector3.new]
       66 CALL                             R7 3 1
       67 MOVE                             R5 R7
       68 RETURN                           R4 2
       69 OR                               R5 R1 R3
       70 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 RETURN                           R1 1
