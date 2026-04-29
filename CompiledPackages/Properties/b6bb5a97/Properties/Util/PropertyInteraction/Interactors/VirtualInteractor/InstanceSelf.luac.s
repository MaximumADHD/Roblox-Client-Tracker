PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R3 K2 ["Cannot write readonly property Instance.Self"]
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["VirtualPropertyDataTypes"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 DUPCLOSURE                       R2 K7 [PROTO_1]
       12 DUPTABLE                         R3 K10 [{"read", "write"}]
       13 SETTABLEKS                       R1 R3 K8 ["read"]
       15 SETTABLEKS                       R2 R3 K9 ["write"]
       17 RETURN                           R3 1
