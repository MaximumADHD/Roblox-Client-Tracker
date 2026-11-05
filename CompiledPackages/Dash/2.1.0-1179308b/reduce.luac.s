PROTO_0:
        0 MOVE                             R3 R2
        1 MOVE                             R4 R0
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 FORGPREP                         R4
        5 MOVE                             R9 R1
        6 MOVE                             R10 R3
        7 MOVE                             R11 R8
        8 MOVE                             R12 R7
        9 CALL                             R9 3 1
       10 MOVE                             R3 R9
       11 FORGLOOP                         R4 2 ; [-7]
       13 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
