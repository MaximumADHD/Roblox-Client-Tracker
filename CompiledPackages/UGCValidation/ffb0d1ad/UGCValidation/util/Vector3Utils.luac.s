PROTO_0:
        0 JUMPIFNOTEQKB                    R3 TRUE ; [+45]
        2 LOADB                            R4 0
        3 GETTABLEKS                       R5 R0 K0 ["X"]
        5 GETTABLEKS                       R6 R1 K0 ["X"]
        7 JUMPIFNOTLT                      R6 R5 ; [+37]
        9 LOADB                            R4 0
       10 GETTABLEKS                       R5 R0 K0 ["X"]
       12 GETTABLEKS                       R6 R2 K0 ["X"]
       14 JUMPIFNOTLT                      R5 R6 ; [+30]
       16 LOADB                            R4 0
       17 GETTABLEKS                       R5 R0 K1 ["Y"]
       19 GETTABLEKS                       R6 R1 K1 ["Y"]
       21 JUMPIFNOTLT                      R6 R5 ; [+23]
       23 LOADB                            R4 0
       24 GETTABLEKS                       R5 R0 K1 ["Y"]
       26 GETTABLEKS                       R6 R2 K1 ["Y"]
       28 JUMPIFNOTLT                      R5 R6 ; [+16]
       30 LOADB                            R4 0
       31 GETTABLEKS                       R5 R0 K2 ["Z"]
       33 GETTABLEKS                       R6 R1 K2 ["Z"]
       35 JUMPIFNOTLT                      R6 R5 ; [+9]
       37 GETTABLEKS                       R5 R0 K2 ["Z"]
       39 GETTABLEKS                       R6 R2 K2 ["Z"]
       41 JUMPIFLT                         R5 R6 ; [+2]
       43 LOADB                            R4 0 +1
       44 LOADB                            R4 1
       45 RETURN                           R4 1
       46 LOADB                            R4 0
       47 GETTABLEKS                       R5 R0 K0 ["X"]
       49 GETTABLEKS                       R6 R1 K0 ["X"]
       51 JUMPIFNOTLE                      R6 R5 ; [+37]
       53 LOADB                            R4 0
       54 GETTABLEKS                       R5 R0 K0 ["X"]
       56 GETTABLEKS                       R6 R2 K0 ["X"]
       58 JUMPIFNOTLE                      R5 R6 ; [+30]
       60 LOADB                            R4 0
       61 GETTABLEKS                       R5 R0 K1 ["Y"]
       63 GETTABLEKS                       R6 R1 K1 ["Y"]
       65 JUMPIFNOTLE                      R6 R5 ; [+23]
       67 LOADB                            R4 0
       68 GETTABLEKS                       R5 R0 K1 ["Y"]
       70 GETTABLEKS                       R6 R2 K1 ["Y"]
       72 JUMPIFNOTLE                      R5 R6 ; [+16]
       74 LOADB                            R4 0
       75 GETTABLEKS                       R5 R0 K2 ["Z"]
       77 GETTABLEKS                       R6 R1 K2 ["Z"]
       79 JUMPIFNOTLE                      R6 R5 ; [+9]
       81 GETTABLEKS                       R5 R0 K2 ["Z"]
       83 GETTABLEKS                       R6 R2 K2 ["Z"]
       85 JUMPIFLE                         R5 R6 ; [+2]
       87 LOADB                            R4 0 +1
       88 LOADB                            R4 1
       89 RETURN                           R4 1

PROTO_1:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 GETTABLEKS                       R4 R1 K0 ["X"]
        5 JUMPIFNOTLE                      R3 R4 ; [+16]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R0 K1 ["Y"]
       10 GETTABLEKS                       R4 R1 K1 ["Y"]
       12 JUMPIFNOTLE                      R3 R4 ; [+9]
       14 GETTABLEKS                       R3 R0 K2 ["Z"]
       16 GETTABLEKS                       R4 R1 K2 ["Z"]
       18 JUMPIFLE                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["isInRange"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["isFirstLessOrEqual"]
        9 RETURN                           R0 1
