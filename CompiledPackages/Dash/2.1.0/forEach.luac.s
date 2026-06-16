PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 MOVE                             R7 R1
        5 MOVE                             R8 R6
        6 MOVE                             R9 R5
        7 CALL                             R7 2 0
        8 FORGLOOP                         R2 2 ; [-5]
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
