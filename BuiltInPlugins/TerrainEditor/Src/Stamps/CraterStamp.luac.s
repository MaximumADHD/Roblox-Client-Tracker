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
       10 GETTABLEKS                       R4 R0 K0 ["_payload"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K1 ["BuildSettings"]
       15 GETTABLE                         R3 R4 R5
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K3 ["NoiseStrength"]
       19 GETTABLE                         R2 R3 R4
       20 GETTABLEKS                       R5 R0 K0 ["_payload"]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K1 ["BuildSettings"]
       25 GETTABLE                         R4 R5 R6
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R5 R6 K4 ["FillBottom"]
       29 GETTABLE                         R3 R4 R5
       30 GETTABLEKS                       R6 R0 K0 ["_payload"]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K1 ["BuildSettings"]
       35 GETTABLE                         R5 R6 R7
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R6 R7 K5 ["RimHeight"]
       39 GETTABLE                         R4 R5 R6
       40 DUPTABLE                         R5 K9 [{"center2d", "hillWidth", "hillHeight"}]
       41 GETIMPORT                        R6 K12 [Vector2.new]
       43 LOADK                            R7 K13 [0.5]
       44 LOADK                            R8 K13 [0.5]
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R5 K6 ["center2d"]
       48 LOADK                            R6 K14 [0.2]
       49 SETTABLEKS                       R6 R5 K7 ["hillWidth"]
       51 LOADK                            R6 K15 [1.7]
       52 SETTABLEKS                       R6 R5 K8 ["hillHeight"]
       54 MOVE                             R8 R5
       55 NAMECALL                         R6 R0 K16 ["generateHill"]
       57 CALL                             R6 2 0
       58 GETIMPORT                        R6 K19 [table.create]
       60 GETTABLEKS                       R7 R0 K20 ["_mapSize"]
       62 LOADB                            R8 0
       63 CALL                             R6 2 1
       64 SETTABLEKS                       R6 R0 K21 ["_fillBottomPositions"]
       66 SUBRK                            R8 R23 K4 ["FillBottom"]
       67 MULK                             R7 R8 K22 [0.25]
       68 ADDK                             R6 R7 K13 [0.5]
       69 SUBRK                            R7 R23 K6 ["center2d"]
       70 SUBRK                            R8 R23 K3 ["NoiseStrength"]
       71 LOADN                            R11 1
       72 GETTABLEKS                       R9 R0 K20 ["_mapSize"]
       74 LOADN                            R10 1
       75 FORNPREP                         R9
       76 GETTABLEKS                       R13 R0 K24 ["_noiseMap"]
       78 GETTABLE                         R12 R13 R11
       79 GETUPVAL                         R14 2
       80 GETTABLEKS                       R13 R14 K25 ["Max"]
       82 MOVE                             R14 R12
       83 MOVE                             R15 R7
       84 LOADK                            R16 K26 [0.1]
       85 CALL                             R13 3 1
       86 JUMPIFNOTLT                      R7 R13 ; [+29]
       88 LOADN                            R15 0
       89 JUMPIFNOTLT                      R15 R8 ; [+4]
       91 SUB                              R15 R12 R7
       92 DIV                              R14 R15 R8
       93 JUMP                             ; [+1]
       94 LOADN                            R14 0
       95 LOADN                            R17 0
       96 LOADN                            R18 1
       97 FASTCALL3                        MATH_CLAMP R14 R17 R18
       99 MOVE                             R16 R14
      100 GETIMPORT                        R15 K29 [math.clamp]
      102 CALL                             R15 3 1
      103 MOVE                             R14 R15
      104 SUBRK                            R16 R23 K14 [0.2]
      105 POWK                             R15 R16 K30 [4]
      106 SUBRK                            R14 R23 K15 [1.7]
      107 GETTABLEKS                       R15 R0 K24 ["_noiseMap"]
      109 MUL                              R17 R14 R8
      110 SUB                              R16 R7 R17
      111 SETTABLE                         R16 R15 R11
      112 GETTABLEKS                       R15 R0 K21 ["_fillBottomPositions"]
      114 LOADB                            R16 1
      115 SETTABLE                         R16 R15 R11
      116 FORNLOOP                         R9
      117 LOADN                            R9 0
      118 JUMPIFNOTLT                      R9 R1 ; [+7]
      120 LOADN                            R9 0
      121 JUMPIFNOTLT                      R9 R2 ; [+4]
      123 NAMECALL                         R9 R0 K31 ["addErosion"]
      125 CALL                             R9 1 0
      126 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_heightMapFromNoise"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K4 ["_heightMap"]
        7 GETTABLEKS                       R1 R0 K5 ["_addBlending"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R1 R0 K6 ["_sliceY"]
       13 LOADN                            R4 1
       14 GETTABLEKS                       R2 R0 K7 ["_mapSize"]
       16 LOADN                            R3 1
       17 FORNPREP                         R2
       18 GETTABLEKS                       R6 R0 K3 ["_heightMapFromNoise"]
       20 GETTABLE                         R5 R6 R4
       21 GETTABLEKS                       R7 R0 K8 ["_heightmapCache"]
       23 GETTABLE                         R6 R7 R4
       24 GETTABLEKS                       R8 R0 K9 ["_blendingFactorMap"]
       26 GETTABLE                         R7 R8 R4
       27 GETTABLEKS                       R8 R0 K4 ["_heightMap"]
       29 SUBRK                            R11 R10 K7 ["_mapSize"]
       30 MUL                              R10 R11 R5
       31 MUL                              R11 R7 R6
       32 ADD                              R9 R10 R11
       33 SETTABLE                         R9 R8 R4
       34 GETTABLEKS                       R9 R0 K11 ["_rimPositions"]
       36 GETTABLE                         R8 R9 R4
       37 JUMPIFNOT                        R8 ; [+10]
       38 GETTABLEKS                       R10 R0 K4 ["_heightMap"]
       40 GETTABLE                         R9 R10 R4
       41 FASTCALL2                        MATH_MIN R9 R1 ; [+4]
       43 MOVE                             R10 R1
       44 GETIMPORT                        R8 K14 [math.min]
       46 CALL                             R8 2 1
       47 MOVE                             R1 R8
       48 FORNLOOP                         R2
       49 LOADN                            R4 1
       50 GETTABLEKS                       R2 R0 K7 ["_mapSize"]
       52 LOADN                            R3 1
       53 FORNPREP                         R2
       54 GETTABLEKS                       R6 R0 K15 ["_fillBottomPositions"]
       56 GETTABLE                         R5 R6 R4
       57 JUMPIFNOT                        R5 ; [+12]
       58 GETTABLEKS                       R5 R0 K4 ["_heightMap"]
       60 GETTABLEKS                       R8 R0 K4 ["_heightMap"]
       62 GETTABLE                         R7 R8 R4
       63 FASTCALL2                        MATH_MIN R7 R1 ; [+4]
       65 MOVE                             R8 R1
       66 GETIMPORT                        R6 K14 [math.min]
       68 CALL                             R6 2 1
       69 SETTABLE                         R6 R5 R4
       70 FORNLOOP                         R2
       71 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K1 ["_payload"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K2 ["BuildSettings"]
        5 GETTABLE                         R3 R4 R5
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K3 ["RimHeight"]
        9 GETTABLE                         R2 R3 R4
       10 ORK                              R1 R2 K0 [0]
       11 LOADN                            R4 1
       12 ADD                              R3 R4 R1
       13 MULK                             R2 R3 K4 [0.25]
       14 SUBRK                            R5 R6 K1 ["_payload"]
       15 MULK                             R4 R5 K4 [0.25]
       16 ADDK                             R3 R4 K5 [0.5]
       17 GETTABLEKS                       R7 R0 K7 ["_medianHeightCache"]
       19 GETTABLEKS                       R8 R0 K8 ["_meanHeightCache"]
       21 SUB                              R6 R7 R8
       22 FASTCALL1                        MATH_ABS R6 ; [+2]
       23 GETIMPORT                        R5 K11 [math.abs]
       25 CALL                             R5 1 1
       26 LOADN                            R6 5
       27 JUMPIFLT                         R5 R6 ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 MOVE                             R5 R4
       32 JUMPIFNOT                        R5 ; [+10]
       33 GETTABLEKS                       R7 R0 K12 ["_sliceY"]
       35 GETTABLEKS                       R8 R0 K7 ["_medianHeightCache"]
       37 SUB                              R6 R7 R8
       38 LOADN                            R7 5
       39 JUMPIFLT                         R6 R7 ; [+2]
       41 LOADB                            R5 0 +1
       42 LOADB                            R5 1
       43 GETIMPORT                        R6 K15 [table.create]
       45 GETTABLEKS                       R7 R0 K16 ["_mapSize"]
       47 LOADN                            R8 0
       48 CALL                             R6 2 1
       49 SETTABLEKS                       R6 R0 K17 ["_heightMapFromNoise"]
       51 GETIMPORT                        R6 K15 [table.create]
       53 GETTABLEKS                       R7 R0 K16 ["_mapSize"]
       55 LOADB                            R8 0
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R0 K18 ["_rimPositions"]
       59 LOADN                            R8 1
       60 GETTABLEKS                       R6 R0 K16 ["_mapSize"]
       62 LOADN                            R7 1
       63 FORNPREP                         R6
       64 GETTABLEKS                       R11 R0 K19 ["_noiseMap"]
       66 GETTABLE                         R10 R11 R8
       67 LOADN                            R11 255
       68 FASTCALL3                        MATH_CLAMP R10 R11 R2
       70 MOVE                             R12 R2
       71 GETIMPORT                        R9 K21 [math.clamp]
       73 CALL                             R9 3 1
       74 GETTABLEKS                       R10 R0 K18 ["_rimPositions"]
       76 JUMPIFLE                         R2 R9 ; [+2]
       78 LOADB                            R11 0 +1
       79 LOADB                            R11 1
       80 SETTABLE                         R11 R10 R8
       81 JUMPIFNOT                        R5 ; [+4]
       82 GETTABLEKS                       R11 R0 K22 ["_heightmapCache"]
       84 GETTABLE                         R10 R11 R8
       85 JUMP                             ; [+2]
       86 GETTABLEKS                       R10 R0 K12 ["_sliceY"]
       88 ADD                              R12 R3 R9
       89 MUL                              R11 R10 R12
       90 GETTABLEKS                       R12 R0 K17 ["_heightMapFromNoise"]
       92 LOADN                            R15 1
       93 GETTABLEKS                       R16 R0 K12 ["_sliceY"]
       95 FASTCALL3                        MATH_CLAMP R11 R15 R16
       97 MOVE                             R14 R11
       98 GETIMPORT                        R13 K21 [math.clamp]
      100 CALL                             R13 3 1
      101 SETTABLE                         R13 R12 R8
      102 FORNLOOP                         R6
      103 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["_getHeightMapCacheTopDown"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["MountainBaseStamp"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["BuildSettings"]
       25 GETTABLEKS                       R4 R2 K11 ["Category"]
       27 GETTABLEKS                       R5 R2 K12 ["TerrainType"]
       29 GETTABLEKS                       R8 R0 K8 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Util"]
       33 GETTABLEKS                       R6 R7 K14 ["Generation"]
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R6 K15 ["SmoothMinMax"]
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R10 R5 K16 ["Crater"]
       42 NAMECALL                         R8 R1 K17 ["new"]
       44 CALL                             R8 2 1
       45 DUPCLOSURE                       R9 K18 [PROTO_0]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R9 R8 K19 ["init"]
       49 DUPCLOSURE                       R9 K20 [PROTO_1]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R7
       53 SETTABLEKS                       R9 R8 K21 ["generateNoiseMap"]
       55 DUPCLOSURE                       R9 K22 [PROTO_2]
       56 SETTABLEKS                       R9 R8 K23 ["blendHeightMap"]
       58 DUPCLOSURE                       R9 K24 [PROTO_3]
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R9 R8 K25 ["generateHeightMap"]
       63 DUPCLOSURE                       R9 K26 [PROTO_4]
       64 SETTABLEKS                       R9 R8 K27 ["generateHeightMapCacheTopDown"]
       66 DUPCLOSURE                       R9 K28 [PROTO_5]
       67 SETTABLEKS                       R9 R8 K29 ["generateHeightMapCacheBottomUp"]
       69 RETURN                           R8 1
