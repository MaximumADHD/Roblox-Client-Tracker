PROTO_0:
        0 ORK                              R3 R2 K0 [1E-12]
        1 SUB                              R6 R0 R1
        2 FASTCALL1                        MATH_ABS R6 ; [+2]
        3 GETIMPORT                        R5 K3 [math.abs]
        5 CALL                             R5 1 1
        6 JUMPIFLE                         R5 R3 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
