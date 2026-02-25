PROTO_0:
        0 DUPTABLE                         R1 K1 [{"isFailed"}]
        1 SETTABLEKS                       R0 R1 K0 ["isFailed"]
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Packages"]
       13 GETTABLEKS                       R3 R4 K6 ["Rodux"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R1 R2 K7 ["makeActionCreator"]
       18 MOVE                             R2 R1
       19 GETIMPORT                        R4 K1 [script]
       21 GETTABLEKS                       R3 R4 K8 ["Name"]
       23 DUPCLOSURE                       R4 K9 [PROTO_0]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1
