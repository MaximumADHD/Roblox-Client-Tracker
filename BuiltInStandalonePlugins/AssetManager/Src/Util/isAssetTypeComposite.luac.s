PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["AssetType"]
        4 GETTABLEKS                       R2 R3 K1 ["Model"]
        6 JUMPIFEQ                         R0 R2 ; [+10]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["AssetType"]
       11 GETTABLEKS                       R2 R3 K2 ["MeshPart"]
       13 JUMPIFEQ                         R0 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
