PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fflagEarlyTesterEligibilityFilter"]
        3 JUMPIFNOT                        R2 ; [+2]
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 GETTABLE                         R3 R0 R1
        9 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
