PROTO_0:
        0 MULK                             R5 R2 K0 [0.5]
        1 FASTCALL3                        VECTOR R1 R5 R1
        3 MOVE                             R4 R1
        4 MOVE                             R6 R1
        5 GETIMPORT                        R3 K3 [Vector3.new]
        7 CALL                             R3 3 1
        8 SUB                              R4 R0 R3
        9 ADD                              R5 R0 R3
       10 GETTABLEKS                       R9 R4 K4 ["X"]
       12 GETUPVAL                         R10 0
       13 GETTABLEKS                       R10 R10 K5 ["VoxelResolution"]
       15 DIV                              R8 R9 R10
       16 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       17 GETIMPORT                        R7 K8 [math.floor]
       19 CALL                             R7 1 1
       20 GETTABLEKS                       R10 R4 K9 ["Y"]
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R11 R11 K5 ["VoxelResolution"]
       25 DIV                              R9 R10 R11
       26 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       27 GETIMPORT                        R8 K8 [math.floor]
       29 CALL                             R8 1 1
       30 GETTABLEKS                       R11 R4 K10 ["Z"]
       32 GETUPVAL                         R12 0
       33 GETTABLEKS                       R12 R12 K5 ["VoxelResolution"]
       35 DIV                              R10 R11 R12
       36 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       37 GETIMPORT                        R9 K8 [math.floor]
       39 CALL                             R9 1 1
       40 FASTCALL                         VECTOR ; [+2]
       41 GETIMPORT                        R6 K3 [Vector3.new]
       43 CALL                             R6 3 1
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K5 ["VoxelResolution"]
       47 MUL                              R4 R6 R7
       48 GETTABLEKS                       R9 R5 K4 ["X"]
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R10 R10 K5 ["VoxelResolution"]
       53 DIV                              R8 R9 R10
       54 FASTCALL1                        MATH_CEIL R8 ; [+2]
       55 GETIMPORT                        R7 K12 [math.ceil]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R10 R5 K9 ["Y"]
       60 GETUPVAL                         R11 0
       61 GETTABLEKS                       R11 R11 K5 ["VoxelResolution"]
       63 DIV                              R9 R10 R11
       64 FASTCALL1                        MATH_CEIL R9 ; [+2]
       65 GETIMPORT                        R8 K12 [math.ceil]
       67 CALL                             R8 1 1
       68 GETTABLEKS                       R11 R5 K10 ["Z"]
       70 GETUPVAL                         R12 0
       71 GETTABLEKS                       R12 R12 K5 ["VoxelResolution"]
       73 DIV                              R10 R11 R12
       74 FASTCALL1                        MATH_CEIL R10 ; [+2]
       75 GETIMPORT                        R9 K12 [math.ceil]
       77 CALL                             R9 1 1
       78 FASTCALL                         VECTOR ; [+2]
       79 GETIMPORT                        R6 K3 [Vector3.new]
       81 CALL                             R6 3 1
       82 GETUPVAL                         R7 0
       83 GETTABLEKS                       R7 R7 K5 ["VoxelResolution"]
       85 MUL                              R5 R6 R7
       86 RETURN                           R4 2

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
