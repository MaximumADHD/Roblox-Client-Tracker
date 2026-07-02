PROTO_0:
        0 JUMPIFNOTEQ                      R0 R1 ; [+11]
        2 LOADB                            R2 1
        3 JUMPIFNOTEQKN                    R0 K0 [0] ; [+7]
        5 DIVRK                            R3 K1 [1] R0
        6 DIVRK                            R4 K1 [1] R1
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1
       12 LOADB                            R2 0
       13 JUMPIFEQ                         R0 R0 ; [+5]
       15 JUMPIFNOTEQ                      R1 R1 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
