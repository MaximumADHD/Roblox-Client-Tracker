PROTO_0:
        0 DUPTABLE                         R3 K3 [{"Level", "Type", "Context"}]
        1 SETTABLEKS                       R0 R3 K0 ["Level"]
        3 SETTABLEKS                       R1 R3 K1 ["Type"]
        5 SETTABLEKS                       R2 R3 K2 ["Context"]
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
