PROTO_0:
        0 DUPTABLE                         R2 K2 [{"verticalScroll", "verticalZoom"}]
        1 SETTABLEKS                       R0 R2 K0 ["verticalScroll"]
        3 SETTABLEKS                       R1 R2 K1 ["verticalZoom"]
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Action"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 GETIMPORT                        R2 K3 [script]
       13 GETTABLEKS                       R2 R2 K6 ["Name"]
       15 DUPCLOSURE                       R3 K7 [PROTO_0]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1
