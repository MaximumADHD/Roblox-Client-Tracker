PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 LOADN                            R4 0
        4 CALL                             R2 2 1
        5 NOT                              R1 R2
        6 JUMPIF                           R1 ; [+13]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R3 R0 K1 ["Y"]
       10 LOADN                            R4 0
       11 CALL                             R2 2 1
       12 NOT                              R1 R2
       13 JUMPIF                           R1 ; [+6]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R3 R0 K2 ["Z"]
       17 LOADN                            R4 0
       18 CALL                             R2 2 1
       19 NOT                              R1 R2
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["floatEquals"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
