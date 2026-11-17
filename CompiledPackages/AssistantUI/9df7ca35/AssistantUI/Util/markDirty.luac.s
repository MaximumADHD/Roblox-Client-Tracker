PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFNOT                        R5 ; [+6]
        5 GETTABLEKS                       R6 R5 K0 ["ephemeral"]
        7 JUMPIF                           R6 ; [+3]
        8 LOADB                            R6 1
        9 SETTABLEKS                       R6 R5 K1 ["isDirty"]
       11 FORGLOOP                         R1 2 ; [-8]
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
