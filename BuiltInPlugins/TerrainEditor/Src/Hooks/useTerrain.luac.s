PROTO_0:
        0 LOADNIL                          R2
        1 JUMPIFNOT                        R0 ; [+5]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 NEWTABLE                         R2 0 0
        6 JUMP                             ; [+6]
        7 GETIMPORT                        R3 K1 [game]
        9 GETTABLEKS                       R3 R3 K2 ["Workspace"]
       11 GETTABLEKS                       R2 R3 K3 ["Terrain"]
       13 GETUPVAL                         R3 0
       14 MOVE                             R4 R2
       15 CALL                             R3 1 1
       16 MOVE                             R2 R3
       17 RETURN                           R2 1

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
