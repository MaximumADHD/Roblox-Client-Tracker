PROTO_0:
        0 JUMPIFNOT                        R0 ; [+14]
        1 JUMPIFNOT                        R1 ; [+13]
        2 JUMPIFNOT                        R2 ; [+12]
        3 JUMPIFEQKS                       R2 K0 [""] ; [+11]
        5 GETTABLE                         R3 R0 R2
        6 JUMPIFNOT                        R3 ; [+8]
        7 GETTABLE                         R3 R1 R2
        8 JUMPIFNOT                        R3 ; [+6]
        9 GETTABLE                         R3 R0 R2
       10 GETTABLE                         R4 R1 R2
       11 JUMPIFNOTEQ                      R3 R4 ; [+3]
       13 LOADB                            R3 1
       14 RETURN                           R3 1
       15 LOADB                            R3 0
       16 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
