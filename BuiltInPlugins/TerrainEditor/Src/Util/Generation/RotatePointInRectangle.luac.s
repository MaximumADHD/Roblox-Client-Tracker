PROTO_0:
        0 FASTCALL1                        MATH_COS R2 ; [+3]
        1 MOVE                             R4 R2
        2 GETIMPORT                        R3 K2 [math.cos]
        4 CALL                             R3 1 1
        5 FASTCALL1                        MATH_SIN R2 ; [+3]
        6 MOVE                             R5 R2
        7 GETIMPORT                        R4 K4 [math.sin]
        9 CALL                             R4 1 1
       10 MUL                              R6 R0 R3
       11 MUL                              R7 R1 R4
       12 SUB                              R5 R6 R7
       13 MUL                              R7 R0 R4
       14 MUL                              R8 R1 R3
       15 ADD                              R6 R7 R8
       16 RETURN                           R5 2

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKN                       R2 K0 [0] ; [+4]
        3 GETUPVAL                         R2 0
        4 JUMPIFNOTEQKN                    R2 K1 [360] ; [+2]
        6 RETURN                           R0 2
        7 GETUPVAL                         R5 1
        8 SUB                              R4 R0 R5
        9 GETUPVAL                         R6 2
       10 SUB                              R5 R1 R6
       11 GETUPVAL                         R6 0
       12 FASTCALL1                        MATH_COS R6 ; [+3]
       13 MOVE                             R8 R6
       14 GETIMPORT                        R7 K4 [math.cos]
       16 CALL                             R7 1 1
       17 FASTCALL1                        MATH_SIN R6 ; [+3]
       18 MOVE                             R9 R6
       19 GETIMPORT                        R8 K6 [math.sin]
       21 CALL                             R8 1 1
       22 MUL                              R10 R4 R7
       23 MUL                              R11 R5 R8
       24 SUB                              R9 R10 R11
       25 MUL                              R11 R4 R8
       26 MUL                              R12 R5 R7
       27 ADD                              R10 R11 R12
       28 MOVE                             R2 R9
       29 MOVE                             R3 R10
       30 GETUPVAL                         R5 1
       31 ADD                              R4 R2 R5
       32 GETUPVAL                         R6 2
       33 ADD                              R5 R3 R6
       34 RETURN                           R4 2

PROTO_2:
        0 DIVK                             R3 R0 K0 [2]
        1 DIVK                             R4 R1 K0 [2]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R3
        5 CAPTURE                          VAL R4
        6 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_2]
        3 RETURN                           R1 1
