PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fflagEarlyTesterEligibilityFilter"]
        3 JUMPIFNOT                        R1 ; [+13]
        4 LOADB                            R1 0
        5 GETTABLEKS                       R2 R0 K1 ["PendingPlayTesters"]
        7 JUMPIFEQKNIL                     R2 ; [+9]
        9 GETTABLEKS                       R2 R0 K1 ["PendingPlayTesters"]
       11 GETTABLEKS                       R2 R2 K2 ["EligibilityPendingLoad"]
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Bin"]
       13 GETTABLEKS                       R1 R1 K6 ["defineLuaFlags"]
       15 CALL                             R0 1 1
       16 DUPCLOSURE                       R1 K7 [PROTO_0]
       17 CAPTURE                          VAL R0
       18 RETURN                           R1 1
