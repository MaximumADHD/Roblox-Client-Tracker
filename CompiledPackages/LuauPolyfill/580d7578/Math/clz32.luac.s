PROTO_0:
        0 FASTCALL2K                       BIT32_RSHIFT R0 K0 ; [+4]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 [0]
        4 GETUPVAL                         R1 0
        5 CALL                             R1 2 1
        6 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        8 LOADN                            R2 32
        9 RETURN                           R2 1
       10 FASTCALL1                        MATH_LOG R1 ; [+2]
       11 MOVE                             R6 R1
       12 GETUPVAL                         R5 1
       13 CALL                             R5 1 1
       14 DIVK                             R4 R5 K2 [0.693147180559945]
       15 FASTCALL1                        MATH_FLOOR R4 ; [+1]
       16 GETUPVAL                         R3 2
       17 CALL                             R3 1 1
       18 SUBRK                            R2 R1 K3 [NULL]
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [bit32.rshift]
        3 GETIMPORT                        R1 K5 [math.log]
        5 GETIMPORT                        R2 K7 [math.floor]
        7 DUPCLOSURE                       R3 K8 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 RETURN                           R3 1
