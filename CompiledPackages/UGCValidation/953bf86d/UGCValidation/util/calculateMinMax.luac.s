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
        2 JUMPIFNOT                        R0 ; [+25]
        3 JUMPIFNOT                        R2 ; [+24]
        4 MOVE                             R7 R5
        5 GETTABLEKS                       R8 R0 K3 ["X"]
        7 GETTABLEKS                       R9 R2 K3 ["X"]
        9 CALL                             R7 2 1
       10 MOVE                             R8 R5
       11 GETTABLEKS                       R9 R0 K4 ["Y"]
       13 GETTABLEKS                       R10 R2 K4 ["Y"]
       15 CALL                             R8 2 1
       16 MOVE                             R9 R5
       17 GETTABLEKS                       R10 R0 K5 ["Z"]
       19 GETTABLEKS                       R11 R2 K5 ["Z"]
       21 CALL                             R9 2 -1
       22 FASTCALL                         VECTOR ; [+2]
       23 GETIMPORT                        R6 K8 [Vector3.new]
       25 CALL                             R6 -1 1
       26 MOVE                             R4 R6
       27 JUMP                             ; [+1]
       28 OR                               R4 R0 R2
       29 GETIMPORT                        R6 K10 [math.max]
       31 JUMPIFNOT                        R1 ; [+25]
       32 JUMPIFNOT                        R3 ; [+24]
       33 MOVE                             R8 R6
       34 GETTABLEKS                       R9 R1 K3 ["X"]
       36 GETTABLEKS                       R10 R3 K3 ["X"]
       38 CALL                             R8 2 1
       39 MOVE                             R9 R6
       40 GETTABLEKS                       R10 R1 K4 ["Y"]
       42 GETTABLEKS                       R11 R3 K4 ["Y"]
       44 CALL                             R9 2 1
       45 MOVE                             R10 R6
       46 GETTABLEKS                       R11 R1 K5 ["Z"]
       48 GETTABLEKS                       R12 R3 K5 ["Z"]
       50 CALL                             R10 2 -1
       51 FASTCALL                         VECTOR ; [+2]
       52 GETIMPORT                        R7 K8 [Vector3.new]
       54 CALL                             R7 -1 1
       55 MOVE                             R5 R7
       56 RETURN                           R4 2
       57 OR                               R5 R1 R3
       58 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 RETURN                           R1 1
