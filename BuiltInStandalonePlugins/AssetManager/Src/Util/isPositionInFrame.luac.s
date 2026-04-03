PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R3 R1 K1 ["AbsolutePosition"]
        4 LOADB                            R4 0
        5 GETTABLEKS                       R5 R0 K2 ["X"]
        7 GETTABLEKS                       R7 R3 K2 ["X"]
        9 ADDK                             R6 R7 K3 [1]
       10 JUMPIFNOTLE                      R6 R5 ; [+32]
       12 LOADB                            R4 0
       13 GETTABLEKS                       R5 R0 K2 ["X"]
       15 GETTABLEKS                       R8 R3 K2 ["X"]
       17 GETTABLEKS                       R9 R2 K2 ["X"]
       19 ADD                              R7 R8 R9
       20 SUBK                             R6 R7 K3 [1]
       21 JUMPIFNOTLE                      R5 R6 ; [+21]
       23 LOADB                            R4 0
       24 GETTABLEKS                       R5 R0 K4 ["Y"]
       26 GETTABLEKS                       R7 R3 K4 ["Y"]
       28 ADDK                             R6 R7 K3 [1]
       29 JUMPIFNOTLE                      R6 R5 ; [+13]
       31 GETTABLEKS                       R5 R0 K4 ["Y"]
       33 GETTABLEKS                       R8 R3 K4 ["Y"]
       35 GETTABLEKS                       R9 R2 K4 ["Y"]
       37 ADD                              R7 R8 R9
       38 SUBK                             R6 R7 K3 [1]
       39 JUMPIFLE                         R5 R6 ; [+2]
       41 LOADB                            R4 0 +1
       42 LOADB                            R4 1
       43 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
