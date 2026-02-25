PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_payload"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["BuildSettings"]
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["NoiseScale"]
        9 GETTABLE                         R1 R2 R3
       10 GETTABLEKS                       R6 R0 K0 ["_payload"]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K1 ["BuildSettings"]
       15 GETTABLE                         R5 R6 R7
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R6 R7 K4 ["AdvancedNoise"]
       19 GETTABLE                         R4 R5 R6
       20 GETTABLEKS                       R3 R4 K3 ["Children"]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K5 ["Offset"]
       25 GETTABLE                         R2 R3 R4
       26 GETTABLEKS                       R8 R0 K0 ["_payload"]
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R9 R10 K1 ["BuildSettings"]
       31 GETTABLE                         R7 R8 R9
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R8 R9 K4 ["AdvancedNoise"]
       35 GETTABLE                         R6 R7 R8
       36 GETTABLEKS                       R5 R6 K3 ["Children"]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R6 R7 K7 ["Seed"]
       41 GETTABLE                         R4 R5 R6
       42 MULK                             R3 R4 K6 [3.14159265358979]
       43 GETIMPORT                        R4 K10 [table.create]
       45 GETTABLEKS                       R5 R0 K11 ["_mapSize"]
       47 LOADN                            R6 0
       48 CALL                             R4 2 1
       49 SETTABLEKS                       R4 R0 K12 ["_noiseMap"]
       51 LOADN                            R4 0
       52 JUMPIFNOTLT                      R4 R1 ; [+51]
       54 DIVRK                            R4 R13 K1 ["BuildSettings"]
       55 LOADN                            R7 1
       56 GETTABLEKS                       R5 R0 K14 ["_sliceX"]
       58 LOADN                            R6 1
       59 FORNPREP                         R5
       60 LOADN                            R10 1
       61 GETTABLEKS                       R8 R0 K15 ["_sliceZ"]
       63 LOADN                            R9 1
       64 FORNPREP                         R8
       65 MOVE                             R13 R7
       66 MOVE                             R14 R10
       67 NAMECALL                         R11 R0 K16 ["getIndex"]
       69 CALL                             R11 3 1
       70 GETTABLEKS                       R12 R0 K17 ["_getRotatedPoint"]
       72 SUBK                             R13 R7 K18 [0.5]
       73 SUBK                             R14 R10 K18 [0.5]
       74 CALL                             R12 2 2
       75 GETUPVAL                         R16 2
       76 MUL                              R15 R12 R16
       77 GETTABLEKS                       R16 R2 K19 ["X"]
       79 SUB                              R14 R15 R16
       80 GETUPVAL                         R17 2
       81 MUL                              R16 R13 R17
       82 GETTABLEKS                       R17 R2 K20 ["Y"]
       84 SUB                              R15 R16 R17
       85 GETUPVAL                         R16 3
       86 MOVE                             R17 R14
       87 MOVE                             R18 R15
       88 MOVE                             R19 R3
       89 MOVE                             R20 R4
       90 CALL                             R16 4 1
       91 MULK                             R17 R16 K18 [0.5]
       92 ADDK                             R16 R17 K18 [0.5]
       93 GETUPVAL                         R18 4
       94 GETTABLEKS                       R17 R18 K21 ["Ridge"]
       96 MOVE                             R18 R16
       97 CALL                             R17 1 1
       98 MOVE                             R16 R17
       99 GETTABLEKS                       R17 R0 K12 ["_noiseMap"]
      101 SETTABLE                         R16 R17 R11
      102 FORNLOOP                         R8
      103 FORNLOOP                         R5
      104 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_payload"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["BuildSettings"]
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["NoiseScale"]
        9 GETTABLE                         R1 R2 R3
       10 GETTABLEKS                       R4 R0 K0 ["_payload"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K1 ["BuildSettings"]
       15 GETTABLE                         R3 R4 R5
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K3 ["NoiseStrength"]
       19 GETTABLE                         R2 R3 R4
       20 LOADN                            R4 0
       21 JUMPIFNOTLT                      R4 R1 ; [+3]
       23 MOVE                             R3 R2
       24 JUMP                             ; [+1]
       25 LOADN                            R3 0
       26 GETTABLEKS                       R5 R0 K4 ["_sliceY"]
       28 SUBRK                            R6 R5 K3 ["NoiseStrength"]
       29 MUL                              R4 R5 R6
       30 GETIMPORT                        R5 K8 [table.create]
       32 GETTABLEKS                       R6 R0 K9 ["_mapSize"]
       34 LOADN                            R7 0
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R0 K10 ["_heightMapFromNoise"]
       38 LOADN                            R7 1
       39 GETTABLEKS                       R5 R0 K9 ["_mapSize"]
       41 LOADN                            R6 1
       42 FORNPREP                         R5
       43 GETTABLEKS                       R9 R0 K11 ["_noiseMap"]
       45 GETTABLE                         R8 R9 R7
       46 GETTABLEKS                       R11 R0 K4 ["_sliceY"]
       48 MUL                              R10 R11 R3
       49 MUL                              R9 R10 R8
       50 ADD                              R10 R4 R9
       51 GETTABLEKS                       R11 R0 K10 ["_heightMapFromNoise"]
       53 LOADN                            R14 1
       54 GETTABLEKS                       R15 R0 K4 ["_sliceY"]
       56 FASTCALL3                        MATH_CLAMP R10 R14 R15
       58 MOVE                             R13 R10
       59 GETIMPORT                        R12 K14 [math.clamp]
       61 CALL                             R12 3 1
       62 SETTABLE                         R12 R11 R7
       63 FORNLOOP                         R5
       64 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["BaseStamp"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K8 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Resources"]
       22 GETTABLEKS                       R3 R4 K10 ["Constants"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K11 ["VoxelResolution"]
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R6 R0 K8 ["Src"]
       31 GETTABLEKS                       R5 R6 K12 ["Types"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K13 ["BuildSettings"]
       36 GETTABLEKS                       R6 R4 K14 ["Category"]
       38 GETTABLEKS                       R7 R4 K15 ["TerrainType"]
       40 GETTABLEKS                       R10 R0 K8 ["Src"]
       42 GETTABLEKS                       R9 R10 K16 ["Util"]
       44 GETTABLEKS                       R8 R9 K17 ["Generation"]
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R10 R8 K18 ["FractalNoise"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R8 K19 ["Filter"]
       55 CALL                             R10 1 1
       56 MOVE                             R11 R9
       57 LOADN                            R12 1
       58 LOADN                            R13 1
       59 LOADN                            R14 1
       60 CALL                             R11 3 1
       61 GETTABLEKS                       R14 R7 K20 ["Desert"]
       63 NAMECALL                         R12 R1 K21 ["new"]
       65 CALL                             R12 2 1
       66 DUPCLOSURE                       R13 K22 [PROTO_0]
       67 CAPTURE                          VAL R1
       68 SETTABLEKS                       R13 R12 K23 ["init"]
       70 DUPCLOSURE                       R13 K24 [PROTO_1]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R10
       76 SETTABLEKS                       R13 R12 K25 ["generateNoiseMap"]
       78 DUPCLOSURE                       R13 K26 [PROTO_2]
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R5
       81 SETTABLEKS                       R13 R12 K27 ["generateHeightMap"]
       83 RETURN                           R12 1
