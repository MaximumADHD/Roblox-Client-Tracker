PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R2 0
        2 RETURN                           R2 1
        3 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        5 GETTABLEKS                       R3 R0 K1 ["AbsoluteSize"]
        7 GETTABLEKS                       R4 R2 K2 ["X"]
        9 GETTABLEKS                       R5 R2 K3 ["Y"]
       11 GETTABLEKS                       R8 R2 K2 ["X"]
       13 GETTABLEKS                       R9 R3 K2 ["X"]
       15 ADD                              R6 R8 R9
       16 GETTABLEKS                       R8 R2 K3 ["Y"]
       18 GETTABLEKS                       R9 R3 K3 ["Y"]
       20 ADD                              R7 R8 R9
       21 LOADB                            R8 0
       22 GETTABLEKS                       R9 R1 K2 ["X"]
       24 JUMPIFNOTLE                      R4 R9 ; [+17]
       26 LOADB                            R8 0
       27 GETTABLEKS                       R9 R1 K2 ["X"]
       29 JUMPIFNOTLE                      R9 R6 ; [+12]
       31 LOADB                            R8 0
       32 GETTABLEKS                       R9 R1 K3 ["Y"]
       34 JUMPIFNOTLE                      R5 R9 ; [+7]
       36 GETTABLEKS                       R9 R1 K3 ["Y"]
       38 JUMPIFLE                         R9 R7 ; [+2]
       40 LOADB                            R8 0 +1
       41 LOADB                            R8 1
       42 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
