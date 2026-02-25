PROTO_0:
        0 LOADN                            R5 1
        1 DIV                              R6 R0 R1
        2 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
        4 GETIMPORT                        R4 K3 [math.min]
        6 CALL                             R4 2 1
        7 MULK                             R3 R4 K0 [1.5707963267949]
        8 FASTCALL1                        MATH_COS R3 ; [+2]
        9 GETIMPORT                        R2 K5 [math.cos]
       11 CALL                             R2 1 1
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
