PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+7]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["warn"]
        6 LOADK                            R3 K1 ["The legacy Roact API '%s' is deprecated, and will be removed in a future release.\n\n%s"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 CALL                             R2 3 0
       10 GETUPVAL                         R2 0
       11 LOADB                            R3 1
       12 SETTABLE                         R3 R2 R0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Shared"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R1 R2 K6 ["console"]
       14 NEWTABLE                         R2 0 0
       16 DUPCLOSURE                       R3 K7 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 RETURN                           R3 1
