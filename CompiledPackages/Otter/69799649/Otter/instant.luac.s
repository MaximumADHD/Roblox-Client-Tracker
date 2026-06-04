PROTO_0:
        0 DUPTABLE                         R0 K2 [{"value", "complete"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["value"]
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K1 ["complete"]
        7 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"step"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R2 R1 K0 ["step"]
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["types"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_1]
       11 RETURN                           R1 1
