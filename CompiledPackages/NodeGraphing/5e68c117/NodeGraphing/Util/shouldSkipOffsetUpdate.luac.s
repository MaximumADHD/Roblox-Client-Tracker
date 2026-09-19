PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R4 0
        2 RETURN                           R4 1
        3 GETTABLEKS                       R4 R1 K0 ["X"]
        5 LOADN                            R5 0
        6 JUMPIFLT                         R4 R5 ; [+6]
        8 GETTABLEKS                       R4 R1 K1 ["Y"]
       10 LOADN                            R5 0
       11 JUMPIFNOTLT                      R4 R5 ; [+3]
       13 LOADB                            R4 1
       14 RETURN                           R4 1
       15 JUMPIFNOT                        R2 ; [+16]
       16 JUMPIFNOT                        R3 ; [+15]
       17 ADD                              R4 R2 R3
       18 GETTABLEKS                       R5 R1 K0 ["X"]
       20 GETTABLEKS                       R6 R4 K0 ["X"]
       22 JUMPIFLT                         R6 R5 ; [+7]
       24 GETTABLEKS                       R5 R1 K1 ["Y"]
       26 GETTABLEKS                       R6 R4 K1 ["Y"]
       28 JUMPIFNOTLT                      R6 R5 ; [+3]
       30 LOADB                            R5 1
       31 RETURN                           R5 1
       32 LOADB                            R4 0
       33 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
