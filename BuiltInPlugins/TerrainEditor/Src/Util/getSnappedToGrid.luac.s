PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["VoxelResolution"]
        3 MUL                              R3 R1 R4
        4 DIV                              R2 R0 R3
        5 GETTABLEKS                       R7 R2 K1 ["X"]
        7 FASTCALL1                        MATH_ROUND R7 ; [+2]
        8 GETIMPORT                        R6 K4 [math.round]
       10 CALL                             R6 1 1
       11 GETTABLEKS                       R8 R2 K5 ["Y"]
       13 FASTCALL1                        MATH_ROUND R8 ; [+2]
       14 GETIMPORT                        R7 K4 [math.round]
       16 CALL                             R7 1 1
       17 GETTABLEKS                       R9 R2 K6 ["Z"]
       19 FASTCALL1                        MATH_ROUND R9 ; [+2]
       20 GETIMPORT                        R8 K4 [math.round]
       22 CALL                             R8 1 1
       23 FASTCALL                         VECTOR ; [+2]
       24 GETIMPORT                        R5 K9 [Vector3.new]
       26 CALL                             R5 3 1
       27 MUL                              R4 R5 R1
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K0 ["VoxelResolution"]
       31 MUL                              R3 R4 R5
       32 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Resources"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
