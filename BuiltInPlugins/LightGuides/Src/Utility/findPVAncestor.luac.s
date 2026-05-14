PROTO_0:
        0 LOADK                            R3 K0 ["PVInstance"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R1 1
        6 GETIMPORT                        R3 K3 [workspace]
        8 GETTABLEKS                       R3 R3 K4 ["Terrain"]
       10 OR                               R2 R3 R0
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
