PROTO_0:
        0 DUPTABLE                         R1 K1 [{"IsOwned"}]
        1 GETIMPORT                        R2 K3 [require]
        3 GETIMPORT                        R4 K5 [script]
        5 GETTABLEKS                       R3 R4 K0 ["IsOwned"]
        7 CALL                             R2 1 1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K0 ["IsOwned"]
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
