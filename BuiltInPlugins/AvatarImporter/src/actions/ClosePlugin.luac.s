PROTO_0:
        0 DUPTABLE                         R1 K1 [{"force"}]
        1 JUMPIFEQKB                       R0 TRUE ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K0 ["force"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["src"]
       13 GETTABLEKS                       R3 R4 K6 ["actions"]
       15 GETTABLEKS                       R2 R3 K7 ["Action"]
       17 CALL                             R1 1 1
       18 MOVE                             R2 R1
       19 GETIMPORT                        R4 K1 [script]
       21 GETTABLEKS                       R3 R4 K8 ["Name"]
       23 DUPCLOSURE                       R4 K9 [PROTO_0]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1
