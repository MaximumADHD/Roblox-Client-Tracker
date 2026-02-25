PROTO_0:
        0 LOADK                            R0 K0 ["ViewportRootMaxAreaFactor"]
        1 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ViewportRootMaxAreaFactor"]
        3 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ViewportRootMaxAreaFactor"]
        4 LOADN                            R3 30
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 0
        8 DUPTABLE                         R0 K6 [{"Name", "Get"}]
        9 DUPCLOSURE                       R1 K7 [PROTO_0]
       10 SETTABLEKS                       R1 R0 K4 ["Name"]
       12 DUPCLOSURE                       R1 K8 [PROTO_1]
       13 SETTABLEKS                       R1 R0 K5 ["Get"]
       15 RETURN                           R0 1
