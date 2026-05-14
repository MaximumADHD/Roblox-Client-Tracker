PROTO_0:
        0 DUPTABLE                         R3 K3 [{"assets", "totalResults", "cursor"}]
        1 SETTABLEKS                       R0 R3 K0 ["assets"]
        3 SETTABLEKS                       R1 R3 K1 ["totalResults"]
        5 SETTABLEKS                       R2 R3 K2 ["cursor"]
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Framework"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R2 R2 K7 ["Util"]
       18 GETTABLEKS                       R3 R2 K8 ["Action"]
       20 MOVE                             R4 R3
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K9 ["Name"]
       25 DUPCLOSURE                       R6 K10 [PROTO_0]
       26 CALL                             R4 2 -1
       27 RETURN                           R4 -1
