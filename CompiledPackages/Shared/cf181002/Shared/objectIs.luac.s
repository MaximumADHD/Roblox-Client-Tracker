PROTO_0:
        0 JUMPIFNOTEQ                      R0 R1 ; [+9]
        2 LOADB                            R2 1
        3 JUMPIFNOTEQKN                    R0 K0 [0] ; [+13]
        5 LOADB                            R2 1
        6 DIVRK                            R3 K1 [1] R0
        7 DIVRK                            R4 K1 [1] R1
        8 JUMPIFEQ                         R3 R4 ; [+8]
       10 LOADB                            R2 0
       11 JUMPIFEQ                         R0 R0 ; [+5]
       13 JUMPIFNOTEQ                      R1 R1 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
