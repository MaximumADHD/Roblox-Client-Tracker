PROTO_0:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 LOADNIL                          R7
        6 JUMPIFNOT                        R1 ; [+6]
        7 MOVE                             R8 R1
        8 MOVE                             R9 R6
        9 MOVE                             R10 R5
       10 CALL                             R8 2 1
       11 MOVE                             R7 R8
       12 JUMP                             ; [+1]
       13 MOVE                             R7 R6
       14 JUMPIFEQKNIL                     R7 ; [+2]
       16 RETURN                           R7 1
       17 FORGLOOP                         R2 2 ; [-13]
       19 LOADNIL                          R2
       20 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
