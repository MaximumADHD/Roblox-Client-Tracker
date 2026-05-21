PROTO_0:
        0 SUB                              R3 R0 R1
        1 LOADB                            R4 0
        2 GETTABLEKS                       R5 R3 K0 ["X"]
        4 GETTABLEKS                       R8 R2 K0 ["X"]
        6 MINUS                            R7 R8
        7 DIVK                             R6 R7 K1 [2]
        8 JUMPIFNOTLE                      R6 R5 ; [+44]
       10 LOADB                            R4 0
       11 GETTABLEKS                       R5 R3 K0 ["X"]
       13 GETTABLEKS                       R7 R2 K0 ["X"]
       15 DIVK                             R6 R7 K1 [2]
       16 JUMPIFNOTLE                      R5 R6 ; [+36]
       18 LOADB                            R4 0
       19 GETTABLEKS                       R5 R3 K2 ["Y"]
       21 GETTABLEKS                       R8 R2 K2 ["Y"]
       23 MINUS                            R7 R8
       24 DIVK                             R6 R7 K1 [2]
       25 JUMPIFNOTLE                      R6 R5 ; [+27]
       27 LOADB                            R4 0
       28 GETTABLEKS                       R5 R3 K2 ["Y"]
       30 GETTABLEKS                       R7 R2 K2 ["Y"]
       32 DIVK                             R6 R7 K1 [2]
       33 JUMPIFNOTLE                      R5 R6 ; [+19]
       35 LOADB                            R4 0
       36 GETTABLEKS                       R5 R3 K3 ["Z"]
       38 GETTABLEKS                       R8 R2 K3 ["Z"]
       40 MINUS                            R7 R8
       41 DIVK                             R6 R7 K1 [2]
       42 JUMPIFNOTLE                      R6 R5 ; [+10]
       44 GETTABLEKS                       R5 R3 K3 ["Z"]
       46 GETTABLEKS                       R7 R2 K3 ["Z"]
       48 DIVK                             R6 R7 K1 [2]
       49 JUMPIFLE                         R5 R6 ; [+2]
       51 LOADB                            R4 0 +1
       52 LOADB                            R4 1
       53 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["pointInAxisAlignedBounds"]
        6 RETURN                           R0 1
