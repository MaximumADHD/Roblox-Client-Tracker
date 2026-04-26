PROTO_0:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R1 K0 ["Y"]
        3 GETTABLEKS                       R5 R0 K1 ["AbsolutePosition"]
        5 GETTABLEKS                       R4 R5 K0 ["Y"]
        7 JUMPIFNOTLE                      R4 R3 ; [+39]
        9 LOADB                            R2 0
       10 GETTABLEKS                       R3 R1 K0 ["Y"]
       12 GETTABLEKS                       R6 R0 K1 ["AbsolutePosition"]
       14 GETTABLEKS                       R5 R6 K0 ["Y"]
       16 GETTABLEKS                       R7 R0 K2 ["AbsoluteSize"]
       18 GETTABLEKS                       R6 R7 K0 ["Y"]
       20 ADD                              R4 R5 R6
       21 JUMPIFNOTLE                      R3 R4 ; [+25]
       23 LOADB                            R2 0
       24 GETTABLEKS                       R3 R1 K3 ["X"]
       26 GETTABLEKS                       R5 R0 K1 ["AbsolutePosition"]
       28 GETTABLEKS                       R4 R5 K3 ["X"]
       30 JUMPIFNOTLE                      R4 R3 ; [+16]
       32 GETTABLEKS                       R3 R1 K3 ["X"]
       34 GETTABLEKS                       R6 R0 K1 ["AbsolutePosition"]
       36 GETTABLEKS                       R5 R6 K3 ["X"]
       38 GETTABLEKS                       R7 R0 K2 ["AbsoluteSize"]
       40 GETTABLEKS                       R6 R7 K3 ["X"]
       42 ADD                              R4 R5 R6
       43 JUMPIFLE                         R3 R4 ; [+2]
       45 LOADB                            R2 0 +1
       46 LOADB                            R2 1
       47 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
