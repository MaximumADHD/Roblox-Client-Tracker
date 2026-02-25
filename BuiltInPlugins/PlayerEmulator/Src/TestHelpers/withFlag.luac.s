PROTO_0:
        0 GETIMPORT                        R3 K1 [game]
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 NAMECALL                         R3 R3 K2 ["SetFastFlagForTesting"]
        6 CALL                             R3 3 1
        7 GETIMPORT                        R4 K4 [pcall]
        9 MOVE                             R5 R2
       10 CALL                             R4 1 2
       11 GETIMPORT                        R6 K1 [game]
       13 MOVE                             R8 R0
       14 MOVE                             R9 R3
       15 NAMECALL                         R6 R6 K2 ["SetFastFlagForTesting"]
       17 CALL                             R6 3 0
       18 FASTCALL2                        ASSERT R4 R5 ; [+5]
       20 MOVE                             R7 R4
       21 MOVE                             R8 R5
       22 GETIMPORT                        R6 K6 [assert]
       24 CALL                             R6 2 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
