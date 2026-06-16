PROTO_0:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_1:
        0 LOADN                            R2 0
        1 MOVE                             R3 R1
        2 JUMPIF                           R3 ; [+1]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 MOVE                             R9 R3
        9 MOVE                             R10 R8
       10 MOVE                             R11 R7
       11 CALL                             R9 2 1
       12 JUMPIFNOT                        R9 ; [+1]
       13 ADDK                             R2 R2 K0 [1]
       14 FORGLOOP                         R4 2 ; [-7]
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1
