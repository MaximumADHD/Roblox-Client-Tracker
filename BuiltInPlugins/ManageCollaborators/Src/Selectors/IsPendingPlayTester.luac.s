PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R2 R0 K0 ["PendingPlayTesters"]
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 GETTABLEKS                       R3 R2 K1 ["NewPlayTesters"]
        8 JUMPIF                           R3 ; [+5]
        9 GETTABLEKS                       R3 R2 K2 ["CurrentPlayTesters"]
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 GETTABLE                         R5 R3 R1
       15 JUMPIFNOTEQKNIL                  R5 ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
