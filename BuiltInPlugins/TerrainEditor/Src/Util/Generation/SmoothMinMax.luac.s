PROTO_0:
        0 SUB                              R6 R0 R1
        1 FASTCALL1                        MATH_ABS R6 ; [+2]
        2 GETIMPORT                        R5 K2 [math.abs]
        4 CALL                             R5 1 1
        5 SUB                              R4 R2 R5
        6 FASTCALL2K                       MATH_MAX R4 K3 ; [+4]
        8 LOADK                            R5 K3 [0]
        9 GETIMPORT                        R3 K5 [math.max]
       11 CALL                             R3 2 1
       12 FASTCALL2                        MATH_MAX R0 R1 ; [+5]
       14 MOVE                             R6 R0
       15 MOVE                             R7 R1
       16 GETIMPORT                        R5 K5 [math.max]
       18 CALL                             R5 2 1
       19 MUL                              R8 R3 R3
       20 MUL                              R7 R8 R3
       21 MULK                             R9 R2 K6 [6]
       22 MUL                              R8 R9 R2
       23 DIV                              R6 R7 R8
       24 ADD                              R4 R5 R6
       25 RETURN                           R4 1

PROTO_1:
        0 SUB                              R6 R0 R1
        1 FASTCALL1                        MATH_ABS R6 ; [+2]
        2 GETIMPORT                        R5 K2 [math.abs]
        4 CALL                             R5 1 1
        5 SUB                              R4 R2 R5
        6 FASTCALL2K                       MATH_MAX R4 K3 ; [+4]
        8 LOADK                            R5 K3 [0]
        9 GETIMPORT                        R3 K5 [math.max]
       11 CALL                             R3 2 1
       12 FASTCALL2                        MATH_MIN R0 R1 ; [+5]
       14 MOVE                             R6 R0
       15 MOVE                             R7 R1
       16 GETIMPORT                        R5 K7 [math.min]
       18 CALL                             R5 2 1
       19 MUL                              R8 R3 R3
       20 MUL                              R7 R8 R3
       21 MULK                             R9 R2 K8 [6]
       22 MUL                              R8 R9 R2
       23 DIV                              R6 R7 R8
       24 SUB                              R4 R5 R6
       25 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["Max"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["Min"]
        9 RETURN                           R0 1
