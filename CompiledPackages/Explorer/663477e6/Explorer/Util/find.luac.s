PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 MOVE                             R7 R1
        5 MOVE                             R8 R6
        6 CALL                             R7 1 1
        7 JUMPIFNOT                        R7 ; [+3]
        8 MOVE                             R7 R6
        9 MOVE                             R8 R5
       10 RETURN                           R7 2
       11 FORGLOOP                         R2 2 ; [-8]
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
