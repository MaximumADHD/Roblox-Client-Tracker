PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADB                            R2 0
        3 RETURN                           R2 1
        4 MOVE                             R2 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 JUMPIFNOTEQ                      R6 R1 ; [+3]
       10 LOADB                            R7 1
       11 RETURN                           R7 1
       12 FORGLOOP                         R2 2 ; [-5]
       14 LOADB                            R2 0
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
