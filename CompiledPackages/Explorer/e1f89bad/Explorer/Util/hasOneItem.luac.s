PROTO_0:
        0 LOADB                            R1 0
        1 GETIMPORT                        R2 K1 [next]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFEQKNIL                     R2 ; [+13]
        7 GETIMPORT                        R2 K1 [next]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R4 K1 [next]
       12 MOVE                             R5 R0
       13 CALL                             R4 1 1
       14 CALL                             R2 2 1
       15 JUMPIFEQKNIL                     R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
