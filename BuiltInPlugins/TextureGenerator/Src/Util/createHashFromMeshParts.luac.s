PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["createPartGroup"]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 NAMECALL                         R3 R2 K1 ["GetMeshIdsHash"]
        7 CALL                             R3 1 1
        8 JUMPIF                           R3 ; [+1]
        9 LOADK                            R3 K2 [""]
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 RETURN                           R1 1
