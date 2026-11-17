PROTO_0:
        0 DUPTABLE                         R1 K3 [{"Props", "Style", "Summary"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["Props"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["Style"]
        9 GETTABLEKS                       R2 R0 K4 ["name"]
       11 SETTABLEKS                       R2 R1 K2 ["Summary"]
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["DocParser_stubbed"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 SETTABLEKS                       R1 R0 K7 ["parse"]
       13 RETURN                           R0 1
