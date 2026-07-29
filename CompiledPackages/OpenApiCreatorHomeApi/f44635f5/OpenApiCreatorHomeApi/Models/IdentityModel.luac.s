PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"fromResponse", "toRequest"}]
        1 DUPCLOSURE                       R1 K3 [PROTO_0]
        2 SETTABLEKS                       R1 R0 K0 ["fromResponse"]
        4 DUPCLOSURE                       R1 K4 [PROTO_1]
        5 SETTABLEKS                       R1 R0 K1 ["toRequest"]
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreatorHomeApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 1 0
       16 DUPCLOSURE                       R4 K8 [PROTO_2]
       17 SETTABLEKS                       R4 R3 K9 ["create"]
       19 RETURN                           R3 1
