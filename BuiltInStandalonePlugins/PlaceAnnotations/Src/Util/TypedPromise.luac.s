PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R3 K9 ["Promise"]
       18 DUPCLOSURE                       R3 K10 [PROTO_0]
       19 DUPCLOSURE                       R4 K11 [PROTO_1]
       20 DUPTABLE                         R5 K14 [{"PromiseFactory", "castToPromise"}]
       21 MOVE                             R6 R2
       22 SETTABLEKS                       R6 R5 K12 ["PromiseFactory"]
       24 SETTABLEKS                       R3 R5 K13 ["castToPromise"]
       26 RETURN                           R5 1
