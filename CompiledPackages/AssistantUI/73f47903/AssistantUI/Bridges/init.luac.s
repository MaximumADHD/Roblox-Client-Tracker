PROTO_0:
        0 DUPTABLE                         R1 K1 [{"ReadFile"}]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["ReadFile"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["BridgeMetaTypes"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["createReadFileBridge"]
       14 CALL                             R1 1 1
       15 DUPCLOSURE                       R2 K6 [PROTO_0]
       16 CAPTURE                          VAL R1
       17 DUPTABLE                         R3 K8 [{"createBridges"}]
       18 SETTABLEKS                       R2 R3 K7 ["createBridges"]
       20 RETURN                           R3 1
