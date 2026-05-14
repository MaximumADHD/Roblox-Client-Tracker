PROTO_0:
        0 DUPTABLE                         R3 K7 [{"averageTime", "height", "locked", "shape", "size", "strength", "tool"}]
        1 SETTABLEKS                       R1 R3 K0 ["averageTime"]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K8 ["BrushSettings"]
        6 GETTABLE                         R5 R0 R6
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K9 ["BrushSize"]
       10 GETTABLE                         R4 R5 R6
       11 GETTABLEKS                       R4 R4 K10 ["Height"]
       13 SETTABLEKS                       R4 R3 K1 ["height"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K8 ["BrushSettings"]
       18 GETTABLE                         R6 R0 R7
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K9 ["BrushSize"]
       22 GETTABLE                         R5 R6 R7
       23 GETTABLEKS                       R5 R5 K11 ["Locked"]
       25 JUMPIFNOT                        R5 ; [+2]
       26 LOADB                            R4 1
       27 JUMP                             ; [+1]
       28 LOADB                            R4 0
       29 SETTABLEKS                       R4 R3 K2 ["locked"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K8 ["BrushSettings"]
       34 GETTABLE                         R5 R0 R6
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K12 ["BrushShape"]
       38 GETTABLE                         R4 R5 R6
       39 SETTABLEKS                       R4 R3 K3 ["shape"]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K8 ["BrushSettings"]
       44 GETTABLE                         R5 R0 R6
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K9 ["BrushSize"]
       48 GETTABLE                         R4 R5 R6
       49 GETTABLEKS                       R4 R4 K13 ["Size"]
       51 SETTABLEKS                       R4 R3 K4 ["size"]
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K8 ["BrushSettings"]
       56 GETTABLE                         R5 R0 R6
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K14 ["Strength"]
       60 GETTABLE                         R4 R5 R6
       61 SETTABLEKS                       R4 R3 K5 ["strength"]
       63 SETTABLEKS                       R2 R3 K6 ["tool"]
       65 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["MaterialSettings"]
        3 GETTABLE                         R3 R0 R4
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["AutoMaterial"]
        7 GETTABLE                         R2 R3 R4
        8 LOADB                            R3 1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K0 ["MaterialSettings"]
       12 GETTABLE                         R5 R0 R6
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K2 ["FillMode"]
       16 GETTABLE                         R4 R5 R6
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K3 ["Replace"]
       20 JUMPIFEQ                         R4 R5 ; [+16]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K0 ["MaterialSettings"]
       25 GETTABLE                         R5 R0 R6
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K4 ["MaterialMode"]
       29 GETTABLE                         R4 R5 R6
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R5 R5 K3 ["Replace"]
       33 JUMPIFEQ                         R4 R5 ; [+2]
       35 LOADB                            R3 0 +1
       36 LOADB                            R3 1
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K0 ["MaterialSettings"]
       40 GETTABLE                         R5 R0 R6
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K5 ["SourceMaterial"]
       44 GETTABLE                         R4 R5 R6
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K0 ["MaterialSettings"]
       48 GETTABLE                         R6 R0 R7
       49 GETUPVAL                         R7 1
       50 GETTABLEKS                       R7 R7 K6 ["TargetMaterial"]
       52 GETTABLE                         R5 R6 R7
       53 JUMPIFNOT                        R3 ; [+2]
       54 MOVE                             R6 R5
       55 JUMP                             ; [+1]
       56 MOVE                             R6 R4
       57 JUMPIFNOT                        R3 ; [+2]
       58 MOVE                             R7 R4
       59 JUMP                             ; [+1]
       60 LOADNIL                          R7
       61 DUPTABLE                         R8 K12 [{"autoMaterial", "replace", "material", "secondaryMaterial", "tool"}]
       62 SETTABLEKS                       R2 R8 K7 ["autoMaterial"]
       64 SETTABLEKS                       R3 R8 K8 ["replace"]
       66 JUMPIF                           R2 ; [+2]
       67 MOVE                             R9 R6
       68 JUMP                             ; [+1]
       69 LOADNIL                          R9
       70 SETTABLEKS                       R9 R8 K9 ["material"]
       72 JUMPIF                           R2 ; [+2]
       73 MOVE                             R9 R7
       74 JUMP                             ; [+1]
       75 LOADNIL                          R9
       76 SETTABLEKS                       R9 R8 K10 ["secondaryMaterial"]
       78 SETTABLEKS                       R1 R8 K11 ["tool"]
       80 RETURN                           R8 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["SeaLevel"]
        3 JUMPIFNOTEQ                      R2 R4 ; [+10]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K1 ["SeaLevelSettings"]
        8 GETTABLE                         R4 R0 R5
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K2 ["Size"]
       12 GETTABLE                         R3 R4 R5
       13 JUMP                             ; [+22]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K3 ["Transform"]
       17 JUMPIFNOTEQ                      R2 R4 ; [+10]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K4 ["TransformSettings"]
       22 GETTABLE                         R4 R0 R5
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K2 ["Size"]
       26 GETTABLE                         R3 R4 R5
       27 JUMP                             ; [+8]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K5 ["SelectionSettings"]
       31 GETTABLE                         R4 R0 R5
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R5 R5 K2 ["Size"]
       35 GETTABLE                         R3 R4 R5
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K0 ["SeaLevel"]
       39 JUMPIFNOTEQ                      R2 R5 ; [+10]
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K1 ["SeaLevelSettings"]
       44 GETTABLE                         R5 R0 R6
       45 GETUPVAL                         R6 2
       46 GETTABLEKS                       R6 R6 K3 ["Transform"]
       48 GETTABLE                         R4 R5 R6
       49 JUMP                             ; [+22]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K3 ["Transform"]
       53 JUMPIFNOTEQ                      R2 R5 ; [+10]
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K4 ["TransformSettings"]
       58 GETTABLE                         R5 R0 R6
       59 GETUPVAL                         R6 3
       60 GETTABLEKS                       R6 R6 K3 ["Transform"]
       62 GETTABLE                         R4 R5 R6
       63 JUMP                             ; [+8]
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R6 R6 K5 ["SelectionSettings"]
       67 GETTABLE                         R5 R0 R6
       68 GETUPVAL                         R6 4
       69 GETTABLEKS                       R6 R6 K3 ["Transform"]
       71 GETTABLE                         R4 R5 R6
       72 DUPTABLE                         R5 K11 [{"averageTime", "position", "rotation", "size", "tool"}]
       73 SETTABLEKS                       R1 R5 K6 ["averageTime"]
       75 GETTABLEKS                       R6 R4 K12 ["Position"]
       77 SETTABLEKS                       R6 R5 K7 ["position"]
       79 GETTABLEKS                       R6 R4 K13 ["Rotation"]
       81 SETTABLEKS                       R6 R5 K8 ["rotation"]
       83 SETTABLEKS                       R3 R5 K9 ["size"]
       85 SETTABLEKS                       R2 R5 K10 ["tool"]
       87 RETURN                           R5 1

PROTO_3:
        0 GETIMPORT                        R4 K2 [os.clock]
        2 CALL                             R4 0 1
        3 SUB                              R3 R4 R0
        4 MUL                              R5 R1 R1
        5 MUL                              R4 R5 R2
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R9 R9 K5 ["BrushNormalization"]
        9 POWK                             R8 R9 K4 [3]
       10 DIV                              R7 R8 R4
       11 MUL                              R6 R3 R7
       12 MULK                             R5 R6 K3 [1000]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K6 ["BrushNormalizationMinVolume"]
       16 JUMPIFNOTLT                      R4 R6 ; [+3]
       18 LOADNIL                          R6
       19 RETURN                           R6 1
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K7 ["SpikeThreshold"]
       23 JUMPIFNOTLT                      R7 R5 ; [+5]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K7 ["SpikeThreshold"]
       28 RETURN                           R6 1
       29 MOVE                             R6 R5
       30 RETURN                           R6 1

PROTO_4:
        0 GETIMPORT                        R3 K2 [os.clock]
        2 CALL                             R3 0 1
        3 SUB                              R2 R3 R0
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K5 ["BrushNormalization"]
        7 POWK                             R6 R7 K4 [2]
        8 DIV                              R5 R6 R1
        9 MUL                              R4 R2 R5
       10 MULK                             R3 R4 K3 [1000]
       11 RETURN                           R3 1

PROTO_5:
        0 GETIMPORT                        R3 K2 [os.clock]
        2 CALL                             R3 0 1
        3 SUB                              R2 R3 R0
        4 GETTABLEKS                       R5 R1 K3 ["X"]
        6 GETTABLEKS                       R6 R1 K4 ["Y"]
        8 MUL                              R4 R5 R6
        9 GETTABLEKS                       R5 R1 K5 ["Z"]
       11 MUL                              R3 R4 R5
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K8 ["RegionNormalization"]
       15 POWK                             R7 R8 K7 [3]
       16 DIV                              R6 R7 R3
       17 MUL                              R5 R2 R6
       18 MULK                             R4 R5 K6 [1000]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K9 ["BrushNormalizationMinVolume"]
       22 JUMPIFNOTLT                      R3 R5 ; [+3]
       24 LOADNIL                          R5
       25 RETURN                           R5 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K10 ["SpikeThreshold"]
       29 JUMPIFNOTLT                      R6 R4 ; [+5]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K10 ["SpikeThreshold"]
       34 RETURN                           R5 1
       35 MOVE                             R5 R4
       36 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["AnalyticsHandlers"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Resources"]
       22 GETTABLEKS                       R3 R3 K9 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Types"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K11 ["BrushSettings"]
       34 GETTABLEKS                       R5 R3 K12 ["Category"]
       36 GETTABLEKS                       R6 R3 K13 ["FillMode"]
       38 GETTABLEKS                       R7 R3 K14 ["MaterialMode"]
       40 GETTABLEKS                       R8 R3 K15 ["MaterialSettings"]
       42 GETTABLEKS                       R9 R3 K16 ["SeaLevelSettings"]
       44 GETTABLEKS                       R10 R3 K17 ["SelectionSettings"]
       46 GETTABLEKS                       R11 R3 K18 ["Tool"]
       48 GETTABLEKS                       R12 R3 K19 ["TransformSettings"]
       50 NEWTABLE                         R13 8 0
       52 DUPCLOSURE                       R14 K20 [PROTO_0]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R14 R13 K21 ["getBrushPayload"]
       57 DUPCLOSURE                       R14 K22 [PROTO_1]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R7
       62 SETTABLEKS                       R14 R13 K23 ["getMaterialPayload"]
       64 DUPCLOSURE                       R14 K24 [PROTO_2]
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R10
       70 SETTABLEKS                       R14 R13 K25 ["getRegionPayload"]
       72 DUPCLOSURE                       R14 K26 [PROTO_3]
       73 CAPTURE                          VAL R2
       74 SETTABLEKS                       R14 R13 K27 ["NormalizeBrushTimer"]
       76 DUPCLOSURE                       R14 K28 [PROTO_4]
       77 CAPTURE                          VAL R2
       78 SETTABLEKS                       R14 R13 K29 ["NormalizeDepthFirstSearch"]
       80 DUPCLOSURE                       R14 K30 [PROTO_5]
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R14 R13 K31 ["NormalizeRegionTimer"]
       84 RETURN                           R13 1
