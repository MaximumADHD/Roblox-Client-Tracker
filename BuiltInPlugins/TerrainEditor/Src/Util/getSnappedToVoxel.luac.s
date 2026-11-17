PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["VoxelResolution"]
        3 DIV                              R1 R0 R2
        4 GETTABLEKS                       R5 R1 K1 ["X"]
        6 FASTCALL1                        MATH_ROUND R5 ; [+2]
        7 GETIMPORT                        R4 K4 [math.round]
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R6 R1 K5 ["Y"]
       12 FASTCALL1                        MATH_ROUND R6 ; [+2]
       13 GETIMPORT                        R5 K4 [math.round]
       15 CALL                             R5 1 1
       16 GETTABLEKS                       R7 R1 K6 ["Z"]
       18 FASTCALL1                        MATH_ROUND R7 ; [+2]
       19 GETIMPORT                        R6 K4 [math.round]
       21 CALL                             R6 1 1
       22 FASTCALL                         VECTOR ; [+2]
       23 GETIMPORT                        R3 K9 [Vector3.new]
       25 CALL                             R3 3 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K0 ["VoxelResolution"]
       29 MUL                              R2 R3 R4
       30 RETURN                           R2 1

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
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
