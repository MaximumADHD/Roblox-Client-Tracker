PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 LOADNIL                          R7
        5 JUMPIFNOT                        R1 ; [+6]
        6 MOVE                             R8 R1
        7 MOVE                             R9 R6
        8 MOVE                             R10 R5
        9 CALL                             R8 2 1
       10 MOVE                             R7 R8
       11 JUMP                             ; [+1]
       12 MOVE                             R7 R6
       13 JUMPIFEQKNIL                     R7 ; [+2]
       15 RETURN                           R7 1
       16 FORGLOOP                         R2 2 ; [-13]
       18 LOADNIL                          R2
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
