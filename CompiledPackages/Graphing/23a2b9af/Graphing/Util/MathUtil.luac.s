PROTO_0:
        0 MUL                              R4 R1 R2
        1 SUBRK                            R6 R0 K2 [NULL]
        2 MUL                              R5 R0 R6
        3 ADD                              R3 R4 R5
        4 RETURN                           R3 1

PROTO_1:
        0 SUB                              R4 R1 R0
        1 JUMPIFEQKN                       R4 K0 [0] ; [+5]
        3 SUB                              R4 R2 R0
        4 SUB                              R5 R1 R0
        5 DIV                              R3 R4 R5
        6 RETURN                           R3 1
        7 LOADN                            R3 0
        8 RETURN                           R3 1

PROTO_2:
        0 FASTCALL1                        MATH_ABS R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K2 [math.abs]
        4 CALL                             R4 1 1
        5 FASTCALL2                        MATH_POW R4 R1 ; [+4]
        7 MOVE                             R5 R1
        8 GETIMPORT                        R3 K4 [math.pow]
       10 CALL                             R3 2 1
       11 FASTCALL1                        MATH_SIGN R0 ; [+3]
       12 MOVE                             R5 R0
       13 GETIMPORT                        R4 K6 [math.sign]
       15 CALL                             R4 1 1
       16 MUL                              R2 R3 R4
       17 RETURN                           R2 1

PROTO_3:
        0 JUMPIFNOTEQKN                    R0 K0 [10] ; [+7]
        2 FASTCALL1                        MATH_LOG10 R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K3 [math.log10]
        6 CALL                             R2 1 1
        7 RETURN                           R2 1
        8 FASTCALL1                        MATH_LOG R1 ; [+3]
        9 MOVE                             R4 R1
       10 GETIMPORT                        R3 K5 [math.log]
       12 CALL                             R3 1 1
       13 FASTCALL1                        MATH_LOG R0 ; [+3]
       14 MOVE                             R5 R0
       15 GETIMPORT                        R4 K5 [math.log]
       17 CALL                             R4 1 1
       18 DIV                              R2 R3 R4
       19 RETURN                           R2 1

PROTO_4:
        0 DIV                              R4 R0 R1
        1 FASTCALL1                        MATH_ROUND R4 ; [+2]
        2 GETIMPORT                        R3 K2 [math.round]
        4 CALL                             R3 1 1
        5 MUL                              R2 R3 R1
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["lerp"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["inverseLerp"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["signedPow"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["log"]
       15 DUPCLOSURE                       R1 K8 [PROTO_4]
       16 SETTABLEKS                       R1 R0 K9 ["roundToNearest"]
       18 RETURN                           R0 1
