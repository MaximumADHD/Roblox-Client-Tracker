PROTO_0:
        0 DUPTABLE                         R2 K1 [{"value"}]
        1 DUPTABLE                         R3 K3 [{"value", "multiple"}]
        2 GETTABLEKS                       R4 R1 K4 ["Uri"]
        4 SETTABLEKS                       R4 R3 K0 ["value"]
        6 LOADB                            R4 0
        7 SETTABLEKS                       R4 R3 K2 ["multiple"]
        9 SETTABLEKS                       R3 R2 K0 ["value"]
       11 RETURN                           R2 1

PROTO_1:
        0 LOADB                            R3 0
        1 RETURN                           R3 1

PROTO_2:
        0 LOADNIL                          R6
        1 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["RpcTypes"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 DUPCLOSURE                       R3 K8 [PROTO_1]
       14 DUPCLOSURE                       R4 K9 [PROTO_2]
       15 DUPTABLE                         R5 K13 [{"initParts", "addToAggregation", "setPart"}]
       16 SETTABLEKS                       R2 R5 K10 ["initParts"]
       18 SETTABLEKS                       R3 R5 K11 ["addToAggregation"]
       20 SETTABLEKS                       R4 R5 K12 ["setPart"]
       22 RETURN                           R5 1
