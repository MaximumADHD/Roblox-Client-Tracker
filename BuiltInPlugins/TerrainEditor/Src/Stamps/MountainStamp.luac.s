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
       20 GETTABLEKS                       R7 R0 K0 ["_payload"]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K1 ["BuildSettings"]
       25 GETTABLE                         R6 R7 R8
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R7 R8 K5 ["AdvancedNoise"]
       29 GETTABLE                         R5 R6 R7
       30 GETTABLEKS                       R4 R5 K4 ["Children"]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R5 R6 K6 ["Offset"]
       35 GETTABLE                         R3 R4 R5
       36 GETTABLEKS                       R9 R0 K0 ["_payload"]
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R10 R11 K1 ["BuildSettings"]
       41 GETTABLE                         R8 R9 R10
       42 GETUPVAL                         R10 1
       43 GETTABLEKS                       R9 R10 K5 ["AdvancedNoise"]
       45 GETTABLE                         R7 R8 R9
       46 GETTABLEKS                       R6 R7 K4 ["Children"]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R7 R8 K8 ["Seed"]
       51 GETTABLE                         R5 R6 R7
       52 MULK                             R4 R5 K7 [3.14159265358979]
       53 DUPTABLE                         R5 K11 [{"hillWidth", "hillHeight"}]
       54 LOADK                            R6 K12 [0.2]
       55 SETTABLEKS                       R6 R5 K9 ["hillWidth"]
       57 LOADK                            R6 K13 [0.85]
       58 SETTABLEKS                       R6 R5 K10 ["hillHeight"]
       60 LOADN                            R7 0
       61 JUMPIFNOTLT                      R7 R1 ; [+6]
       63 LOADN                            R7 0
       64 JUMPIFNOTLT                      R7 R2 ; [+3]
       66 LOADB                            R6 1
       67 JUMP                             ; [+1]
       68 LOADB                            R6 0
       69 JUMPIFNOT                        R6 ; [+13]
       70 DUPTABLE                         R7 K18 [{"frequency", "amplitude", "offset", "seed"}]
       71 MULK                             R8 R1 K19 [0.05]
       72 SETTABLEKS                       R8 R7 K14 ["frequency"]
       74 MULK                             R9 R2 K21 [0.16]
       75 MULK                             R8 R9 K20 [2]
       76 SETTABLEKS                       R8 R7 K15 ["amplitude"]
       78 SETTABLEKS                       R3 R7 K16 ["offset"]
       80 SETTABLEKS                       R4 R7 K17 ["seed"]
       82 JUMP                             ; [+1]
       83 LOADNIL                          R7
       84 MOVE                             R10 R5
       85 MOVE                             R11 R7
       86 NAMECALL                         R8 R0 K22 ["generateHill"]
       88 CALL                             R8 3 0
       89 JUMPIFNOT                        R6 ; [+6]
       90 NAMECALL                         R8 R0 K23 ["addErosion"]
       92 CALL                             R8 1 0
       93 NAMECALL                         R8 R0 K24 ["addMacroNoise"]
       95 CALL                             R8 1 0
       96 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K2 [table.create]
        2 GETTABLEKS                       R3 R0 K3 ["_mapSize"]
        4 LOADN                            R4 0
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K4 ["_blendingFactorMap"]
        8 LOADN                            R2 0
        9 JUMPIFNOTLT                      R2 R1 ; [+22]
       11 DUPTABLE                         R2 K8 [{"PreserveDistance", "PreserveRatio", "BlendingStrength"}]
       12 LOADN                            R3 1
       13 SETTABLEKS                       R3 R2 K5 ["PreserveDistance"]
       15 LOADK                            R3 K9 [0.2]
       16 SETTABLEKS                       R3 R2 K6 ["PreserveRatio"]
       18 SETTABLEKS                       R1 R2 K7 ["BlendingStrength"]
       20 GETUPVAL                         R3 0
       21 GETIMPORT                        R4 K12 [Vector2.new]
       23 GETTABLEKS                       R5 R0 K13 ["_sliceX"]
       25 GETTABLEKS                       R6 R0 K14 ["_sliceZ"]
       27 CALL                             R4 2 1
       28 MOVE                             R5 R2
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R0 K4 ["_blendingFactorMap"]
       32 RETURN                           R0 0

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
       37 GETTABLEKS                       R8 R6 K15 ["GetBlendingFactorMap"]
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R10 R5 K16 ["Mountain"]
       42 NAMECALL                         R8 R1 K17 ["new"]
       44 CALL                             R8 2 1
       45 DUPCLOSURE                       R9 K18 [PROTO_0]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R9 R8 K19 ["init"]
       49 DUPCLOSURE                       R9 K20 [PROTO_1]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R9 R8 K21 ["generateNoiseMap"]
       54 DUPCLOSURE                       R9 K22 [PROTO_2]
       55 CAPTURE                          VAL R7
       56 SETTABLEKS                       R9 R8 K23 ["updateBlendingFactorMap"]
       58 RETURN                           R8 1
