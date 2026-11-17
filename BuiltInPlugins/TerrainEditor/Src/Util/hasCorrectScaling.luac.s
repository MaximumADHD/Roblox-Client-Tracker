PROTO_0:
        0 GETTABLEKS                       R4 R1 K0 ["X"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["VoxelResolution"]
        5 DIV                              R3 R4 R5
        6 GETTABLEKS                       R4 R0 K2 ["Width"]
        8 DIV                              R2 R3 R4
        9 GETTABLEKS                       R5 R1 K3 ["Z"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K1 ["VoxelResolution"]
       14 DIV                              R4 R5 R6
       15 GETTABLEKS                       R5 R0 K4 ["Height"]
       17 DIV                              R3 R4 R5
       18 LOADB                            R4 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K5 ["MaxScaleFactor"]
       22 JUMPIFLE                         R2 R5 ; [+8]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K5 ["MaxScaleFactor"]
       27 JUMPIFLE                         R3 R5 ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 RETURN                           R4 1

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
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 RETURN                           R3 1
