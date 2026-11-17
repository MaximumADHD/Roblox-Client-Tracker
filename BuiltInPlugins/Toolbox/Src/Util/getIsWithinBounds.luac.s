PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["X"]
        2 JUMPIFEQKN                       R3 K1 [0] ; [+5]
        4 GETTABLEKS                       R3 R1 K2 ["Y"]
        6 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
        8 LOADB                            R3 0
        9 RETURN                           R3 1
       10 LOADB                            R3 0
       11 GETTABLEKS                       R4 R0 K0 ["X"]
       13 GETTABLEKS                       R5 R2 K0 ["X"]
       15 JUMPIFNOTLE                      R5 R4 ; [+29]
       17 LOADB                            R3 0
       18 GETTABLEKS                       R4 R0 K0 ["X"]
       20 GETTABLEKS                       R6 R1 K0 ["X"]
       22 GETTABLEKS                       R7 R2 K0 ["X"]
       24 ADD                              R5 R6 R7
       25 JUMPIFNOTLE                      R4 R5 ; [+19]
       27 LOADB                            R3 0
       28 GETTABLEKS                       R4 R0 K2 ["Y"]
       30 GETTABLEKS                       R5 R2 K2 ["Y"]
       32 JUMPIFNOTLE                      R5 R4 ; [+12]
       34 GETTABLEKS                       R4 R0 K2 ["Y"]
       36 GETTABLEKS                       R6 R1 K2 ["Y"]
       38 GETTABLEKS                       R7 R2 K2 ["Y"]
       40 ADD                              R5 R6 R7
       41 JUMPIFLE                         R4 R5 ; [+2]
       43 LOADB                            R3 0 +1
       44 LOADB                            R3 1
       45 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
