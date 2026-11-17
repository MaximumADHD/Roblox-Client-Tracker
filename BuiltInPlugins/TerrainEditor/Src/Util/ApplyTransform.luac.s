PROTO_0:
        0 JUMPIF                           R4 ; [+6]
        1 GETTABLEKS                       R7 R2 K0 ["Rotation"]
        3 MOVE                             R8 R3
        4 NAMECALL                         R5 R1 K1 ["ApplyTransform"]
        6 CALL                             R5 3 0
        7 GETUPVAL                         R5 0
        8 MOVE                             R6 R2
        9 MOVE                             R7 R3
       10 CALL                             R5 2 1
       11 MOVE                             R8 R1
       12 GETTABLEKS                       R9 R5 K2 ["Min"]
       14 LOADB                            R10 0
       15 NAMECALL                         R6 R0 K3 ["PasteRegion"]
       17 CALL                             R6 4 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["ConvertTransformToRegion"]
       15 CALL                             R2 1 1
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
