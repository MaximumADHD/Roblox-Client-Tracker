PROTO_0:
        0 SUB                              R4 R1 R0
        1 GETUPVAL                         R5 0
        2 DIV                              R3 R4 R5
        3 LOADN                            R4 0
        4 LOADN                            R5 1
        5 FASTCALL                         MATH_CLAMP ; [+2]
        6 GETIMPORT                        R2 K2 [math.clamp]
        8 CALL                             R2 3 1
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["VoxelResolution"]
       18 DUPCLOSURE                       R3 K10 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
