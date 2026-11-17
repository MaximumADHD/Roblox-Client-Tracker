PROTO_0:
        0 ORK                              R3 R2 K0 [0]
        1 GETTABLEKS                       R4 R1 K1 ["AbsoluteSize"]
        3 GETTABLEKS                       R5 R1 K2 ["AbsolutePosition"]
        5 LOADB                            R6 0
        6 GETTABLEKS                       R7 R0 K3 ["X"]
        8 GETTABLEKS                       R9 R5 K3 ["X"]
       10 ADD                              R8 R9 R3
       11 JUMPIFNOTLE                      R8 R7 ; [+32]
       13 LOADB                            R6 0
       14 GETTABLEKS                       R7 R0 K3 ["X"]
       16 GETTABLEKS                       R10 R5 K3 ["X"]
       18 GETTABLEKS                       R11 R4 K3 ["X"]
       20 ADD                              R9 R10 R11
       21 SUB                              R8 R9 R3
       22 JUMPIFNOTLE                      R7 R8 ; [+21]
       24 LOADB                            R6 0
       25 GETTABLEKS                       R7 R0 K4 ["Y"]
       27 GETTABLEKS                       R9 R5 K4 ["Y"]
       29 ADD                              R8 R9 R3
       30 JUMPIFNOTLE                      R8 R7 ; [+13]
       32 GETTABLEKS                       R7 R0 K4 ["Y"]
       34 GETTABLEKS                       R10 R5 K4 ["Y"]
       36 GETTABLEKS                       R11 R4 K4 ["Y"]
       38 ADD                              R9 R10 R11
       39 SUB                              R8 R9 R3
       40 JUMPIFLE                         R7 R8 ; [+2]
       42 LOADB                            R6 0 +1
       43 LOADB                            R6 1
       44 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
