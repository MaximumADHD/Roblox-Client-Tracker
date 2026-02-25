PROTO_0:
        0 ORK                              R0 R0 K0 [0]
        1 ORK                              R1 R1 K0 [0]
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R3
        5 RETURN                           R3 1
        6 GETIMPORT                        R3 K4 [Enum.SortDirection.Descending]
        8 JUMPIFNOTEQ                      R2 R3 ; [+6]
       10 JUMPIFLT                         R0 R1 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 RETURN                           R3 1
       15 JUMPIFLT                         R1 R0 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
