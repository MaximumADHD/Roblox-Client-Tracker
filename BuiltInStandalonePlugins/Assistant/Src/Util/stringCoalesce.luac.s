PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 MOVE                             R1 R0
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 JUMPIFNOT                        R5 ; [+3]
       11 JUMPIFEQKS                       R5 K0 [""] ; [+2]
       13 RETURN                           R5 1
       14 FORGLOOP                         R1 2 ; [-5]
       16 LOADK                            R1 K0 [""]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
