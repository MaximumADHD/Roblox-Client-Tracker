PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 MOVE                             R8 R2
        8 MOVE                             R9 R7
        9 MOVE                             R10 R6
       10 CALL                             R8 2 1
       11 JUMPIF                           R8 ; [+2]
       12 LOADB                            R8 0
       13 RETURN                           R8 1
       14 FORGLOOP                         R3 2 ; [-8]
       16 LOADB                            R3 1
       17 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1
