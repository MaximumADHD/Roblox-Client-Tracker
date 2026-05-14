PROTO_0:
        0 JUMPIFNOT                        R0 ; [+14]
        1 GETTABLEKS                       R1 R0 K0 ["Distance"]
        3 JUMPIFEQ                         R1 R1 ; [+3]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R0 K1 ["Normal"]
        9 JUMPIFEQ                         R2 R2 ; [+3]
       11 LOADB                            R3 0
       12 RETURN                           R3 1
       13 LOADB                            R3 1
       14 RETURN                           R3 1
       15 LOADB                            R1 0
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
