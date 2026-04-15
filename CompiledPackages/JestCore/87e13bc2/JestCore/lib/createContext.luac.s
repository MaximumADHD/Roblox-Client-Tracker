PROTO_0:
        0 DUPTABLE                         R2 K1 [{"config"}]
        1 SETTABLEKS                       R0 R2 K0 ["config"]
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 NEWTABLE                         R1 1 0
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["JestTypes"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R0 K6 ["JestRuntime"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K7 [PROTO_0]
       22 SETTABLEKS                       R4 R1 K8 ["default"]
       24 RETURN                           R1 1
