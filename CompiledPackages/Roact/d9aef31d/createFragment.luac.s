PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["Element"]
        6 SETTABLE                         R3 R1 R2
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["Fragment"]
       11 SETTABLE                         R3 R1 R2
       12 SETTABLEKS                       R0 R1 K2 ["elements"]
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["ElementKind"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Type"]
       18 CALL                             R1 1 1
       19 DUPCLOSURE                       R2 K7 [PROTO_0]
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 RETURN                           R2 1
