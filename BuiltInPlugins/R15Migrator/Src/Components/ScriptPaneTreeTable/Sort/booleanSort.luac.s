PROTO_0:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADN                            R3 1
        2 JUMP                             ; [+1]
        3 LOADN                            R3 0
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADN                            R4 1
        6 JUMP                             ; [+1]
        7 LOADN                            R4 0
        8 JUMPIFNOTEQ                      R3 R4 ; [+3]
       10 LOADNIL                          R5
       11 RETURN                           R5 1
       12 GETIMPORT                        R5 K3 [Enum.SortDirection.Descending]
       14 JUMPIFNOTEQ                      R2 R5 ; [+6]
       16 JUMPIFLT                         R3 R4 ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 RETURN                           R5 1
       21 JUMPIFLT                         R4 R3 ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
