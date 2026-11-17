PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [Region3.new]
        3 LOADK                            R2 K3 [{-64, -64, -64}]
        4 LOADK                            R3 K4 [{64, 64, 64}]
        5 CALL                             R1 2 -1
        6 CALL                             R0 -1 2
        7 RETURN                           R0 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
