PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["endSelectionOnDrag"]
        2 CALL                             R1 0 0
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["reachedMinimalMouseDistance"]
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 RETURN                           R1 1
