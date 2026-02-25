PROTO_0:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["TerrainType"]
        3 GETTABLEKS                       R4 R5 K1 ["Volcano"]
        5 JUMPIFEQ                         R3 R4 ; [+15]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K0 ["TerrainType"]
       10 GETTABLEKS                       R4 R5 K2 ["Mountain"]
       12 JUMPIFEQ                         R3 R4 ; [+8]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K0 ["TerrainType"]
       17 GETTABLEKS                       R4 R5 K3 ["Mesa"]
       19 JUMPIFNOTEQ                      R3 R4 ; [+8]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K4 ["EmptyThreshold"]
       24 MOVE                             R5 R0
       25 MOVE                             R6 R1
       26 CALL                             R4 2 -1
       27 RETURN                           R4 -1
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K0 ["TerrainType"]
       31 GETTABLEKS                       R4 R5 K5 ["Crater"]
       33 JUMPIFEQ                         R3 R4 ; [+8]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R5 R6 K0 ["TerrainType"]
       38 GETTABLEKS                       R4 R5 K6 ["Lake"]
       40 JUMPIFNOTEQ                      R3 R4 ; [+8]
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R4 R5 K7 ["OccupiedThreshold"]
       45 MOVE                             R5 R0
       46 MOVE                             R6 R1
       47 CALL                             R4 2 -1
       48 RETURN                           R4 -1
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R4 R5 K8 ["SurfaceThreshold"]
       52 MOVE                             R5 R0
       53 MOVE                             R6 R1
       54 MOVE                             R7 R2
       55 CALL                             R4 3 -1
       56 RETURN                           R4 -1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["Position"]
        2 DIVK                             R5 R1 K1 [2]
        3 SUB                              R3 R4 R5
        4 LOADN                            R5 0
        5 GETUPVAL                         R8 0
        6 GETTABLEKS                       R7 R8 K2 ["PlacementSnap"]
        8 GETUPVAL                         R9 0
        9 GETTABLEKS                       R8 R9 K3 ["VoxelResolution"]
       11 MUL                              R6 R7 R8
       12 LOADN                            R7 0
       13 FASTCALL                         VECTOR ; [+2]
       14 GETIMPORT                        R4 K6 [Vector3.new]
       16 CALL                             R4 3 1
       17 SUB                              R2 R3 R4
       18 GETTABLEKS                       R4 R0 K0 ["Position"]
       20 GETTABLEKS                       R7 R1 K7 ["X"]
       22 GETTABLEKS                       R9 R1 K8 ["Y"]
       24 MINUS                            R8 R9
       25 GETTABLEKS                       R9 R1 K9 ["Z"]
       27 FASTCALL                         VECTOR ; [+2]
       28 GETIMPORT                        R6 K6 [Vector3.new]
       30 CALL                             R6 3 1
       31 DIVK                             R5 R6 K1 [2]
       32 ADD                              R3 R4 R5
       33 GETIMPORT                        R4 K11 [Region3.new]
       35 MOVE                             R5 R2
       36 MOVE                             R6 R3
       37 CALL                             R4 2 1
       38 GETIMPORT                        R6 K13 [game]
       40 LOADK                            R8 K14 ["Workspace"]
       41 NAMECALL                         R6 R6 K15 ["GetService"]
       43 CALL                             R6 2 1
       44 GETTABLEKS                       R5 R6 K16 ["Terrain"]
       46 FASTCALL2K                       ASSERT R5 K17 ; [+5]
       48 MOVE                             R7 R5
       49 LOADK                            R8 K17 ["Terrain should exist"]
       50 GETIMPORT                        R6 K19 [assert]
       52 CALL                             R6 2 0
       53 MOVE                             R8 R4
       54 LOADN                            R9 4
       55 NAMECALL                         R6 R5 K20 ["ReadVoxels"]
       57 CALL                             R6 3 2
       58 LENGTH                           R8 R6
       59 GETTABLEN                        R10 R6 1
       60 LENGTH                           R9 R10
       61 GETTABLEN                        R12 R6 1
       62 GETTABLEN                        R11 R12 1
       63 LENGTH                           R10 R11
       64 MOVE                             R13 R9
       65 LOADN                            R11 1
       66 LOADN                            R12 255
       67 FORNPREP                         R11
       68 LOADB                            R14 0
       69 LOADN                            R17 1
       70 MOVE                             R15 R8
       71 LOADN                            R16 1
       72 FORNPREP                         R15
       73 LOADN                            R20 1
       74 MOVE                             R18 R10
       75 LOADN                            R19 1
       76 FORNPREP                         R18
       77 GETTABLE                         R23 R7 R17
       78 GETTABLE                         R22 R23 R13
       79 GETTABLE                         R21 R22 R20
       80 JUMPIFNOTEQKN                    R21 K21 [0] ; [+9]
       82 GETTABLE                         R23 R6 R17
       83 GETTABLE                         R22 R23 R13
       84 GETTABLE                         R21 R22 R20
       85 GETIMPORT                        R22 K25 [Enum.Material.Air]
       87 JUMPIFNOTEQ                      R21 R22 ; [+2]
       89 LOADB                            R14 1
       90 FORNLOOP                         R18
       91 FORNLOOP                         R15
       92 JUMPIF                           R14 ; [+15]
       93 SUB                              R15 R9 R13
       94 LOADN                            R19 0
       95 LOADN                            R21 0
       96 FASTCALL3                        VECTOR R19 R15 R21
       98 MOVE                             R20 R15
       99 GETIMPORT                        R18 K6 [Vector3.new]
      101 CALL                             R18 3 1
      102 GETUPVAL                         R20 0
      103 GETTABLEKS                       R19 R20 K3 ["VoxelResolution"]
      105 MUL                              R17 R18 R19
      106 ADD                              R16 R0 R17
      107 RETURN                           R16 1
      108 FORNLOOP                         R11
      109 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["Position"]
        2 GETTABLEKS                       R7 R1 K2 ["X"]
        4 MINUS                            R6 R7
        5 GETTABLEKS                       R7 R1 K3 ["Y"]
        7 GETTABLEKS                       R9 R1 K4 ["Z"]
        9 MINUS                            R8 R9
       10 FASTCALL                         VECTOR ; [+2]
       11 GETIMPORT                        R5 K7 [Vector3.new]
       13 CALL                             R5 3 1
       14 DIVK                             R4 R5 K1 [2]
       15 ADD                              R2 R3 R4
       16 GETTABLEKS                       R5 R0 K0 ["Position"]
       18 DIVK                             R6 R1 K1 [2]
       19 ADD                              R4 R5 R6
       20 LOADN                            R6 0
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K8 ["PlacementSnap"]
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R9 R10 K9 ["VoxelResolution"]
       27 MUL                              R7 R8 R9
       28 LOADN                            R8 0
       29 FASTCALL                         VECTOR ; [+2]
       30 GETIMPORT                        R5 K7 [Vector3.new]
       32 CALL                             R5 3 1
       33 ADD                              R3 R4 R5
       34 GETIMPORT                        R4 K11 [Region3.new]
       36 MOVE                             R5 R2
       37 MOVE                             R6 R3
       38 CALL                             R4 2 1
       39 GETIMPORT                        R6 K13 [game]
       41 LOADK                            R8 K14 ["Workspace"]
       42 NAMECALL                         R6 R6 K15 ["GetService"]
       44 CALL                             R6 2 1
       45 GETTABLEKS                       R5 R6 K16 ["Terrain"]
       47 FASTCALL2K                       ASSERT R5 K17 ; [+5]
       49 MOVE                             R7 R5
       50 LOADK                            R8 K17 ["Terrain should exist"]
       51 GETIMPORT                        R6 K19 [assert]
       53 CALL                             R6 2 0
       54 MOVE                             R8 R4
       55 LOADN                            R9 4
       56 NAMECALL                         R6 R5 K20 ["ReadVoxels"]
       58 CALL                             R6 3 2
       59 LENGTH                           R8 R6
       60 GETTABLEN                        R10 R6 1
       61 LENGTH                           R9 R10
       62 GETTABLEN                        R12 R6 1
       63 GETTABLEN                        R11 R12 1
       64 LENGTH                           R10 R11
       65 LOADN                            R13 1
       66 MOVE                             R11 R9
       67 LOADN                            R12 1
       68 FORNPREP                         R11
       69 LOADB                            R14 0
       70 LOADN                            R17 1
       71 MOVE                             R15 R8
       72 LOADN                            R16 1
       73 FORNPREP                         R15
       74 LOADN                            R20 1
       75 MOVE                             R18 R10
       76 LOADN                            R19 1
       77 FORNPREP                         R18
       78 GETTABLE                         R23 R7 R17
       79 GETTABLE                         R22 R23 R13
       80 GETTABLE                         R21 R22 R20
       81 JUMPIFEQKN                       R21 K21 [0] ; [+9]
       83 GETTABLE                         R23 R6 R17
       84 GETTABLE                         R22 R23 R13
       85 GETTABLE                         R21 R22 R20
       86 GETIMPORT                        R22 K25 [Enum.Material.Air]
       88 JUMPIFEQ                         R21 R22 ; [+2]
       90 LOADB                            R14 1
       91 FORNLOOP                         R18
       92 FORNLOOP                         R15
       93 JUMPIF                           R14 ; [+13]
       94 LOADN                            R18 0
       95 SUBK                             R19 R13 K26 [1]
       96 LOADN                            R20 0
       97 FASTCALL                         VECTOR ; [+2]
       98 GETIMPORT                        R17 K7 [Vector3.new]
      100 CALL                             R17 3 1
      101 GETUPVAL                         R19 0
      102 GETTABLEKS                       R18 R19 K9 ["VoxelResolution"]
      104 MUL                              R16 R17 R18
      105 ADD                              R15 R0 R16
      106 RETURN                           R15 1
      107 FORNLOOP                         R11
      108 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R8 R1 K1 ["Y"]
        2 MUL                              R7 R8 R2
        3 MULK                             R6 R7 K0 [0.5]
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R7 R8 K2 ["VoxelResolution"]
        7 DIV                              R5 R6 R7
        8 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        9 GETIMPORT                        R4 K5 [math.floor]
       11 CALL                             R4 1 1
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K2 ["VoxelResolution"]
       15 MUL                              R3 R4 R5
       16 LOADN                            R6 0
       17 GETTABLEKS                       R10 R1 K1 ["Y"]
       19 DIVK                             R9 R10 K6 [2]
       20 MINUS                            R8 R9
       21 ADD                              R7 R8 R3
       22 LOADN                            R8 0
       23 FASTCALL                         VECTOR ; [+2]
       24 GETIMPORT                        R5 K9 [Vector3.new]
       26 CALL                             R5 3 1
       27 ADD                              R4 R0 R5
       28 RETURN                           R4 1

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
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 4 0
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 SETTABLEKS                       R4 R3 K11 ["Place"]
       30 DUPCLOSURE                       R4 K12 [PROTO_1]
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R4 R3 K13 ["EmptyThreshold"]
       34 DUPCLOSURE                       R4 K14 [PROTO_2]
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R4 R3 K15 ["OccupiedThreshold"]
       38 DUPCLOSURE                       R4 K16 [PROTO_3]
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R4 R3 K17 ["SurfaceThreshold"]
       42 RETURN                           R3 1
