PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Ref"]
        3 JUMPIFEQKS                       R1 K1 ["ref"] ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["Roact"]
       11 CALL                             R2 1 1
       12 DUPCLOSURE                       R3 K6 [PROTO_0]
       13 CAPTURE                          VAL R2
       14 RETURN                           R3 1
