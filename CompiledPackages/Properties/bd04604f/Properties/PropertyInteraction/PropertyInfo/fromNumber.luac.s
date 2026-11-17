PROTO_0:
        0 DUPTABLE                         R5 K4 [{[1] = "number", ["readonly"], ["extra"]}]
        1 SETTABLEKS                       R0 R5 K2 ["readonly"]
        3 DUPTABLE                         R6 K9 [{[1] = "number", ["precision"], ["unit"], ["min"], ["max"]}]
        4 SETTABLEKS                       R1 R6 K5 ["precision"]
        6 SETTABLEKS                       R2 R6 K6 ["unit"]
        8 SETTABLEKS                       R3 R6 K7 ["min"]
       10 SETTABLEKS                       R4 R6 K8 ["max"]
       12 SETTABLEKS                       R6 R5 K3 ["extra"]
       14 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 RETURN                           R2 1
