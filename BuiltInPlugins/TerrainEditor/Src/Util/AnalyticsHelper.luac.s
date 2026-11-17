PROTO_0:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R1 R1 K2 ["Terrain"]
        4 JUMPIFEQKNIL                     R0 ; [+3]
        6 JUMPIFNOTEQKNIL                  R1 ; [+4]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 RETURN                           R2 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R1 K3 ["GetMaterialSlot"]
       14 CALL                             R2 2 2
       15 MOVE                             R4 R2
       16 JUMPIFEQKS                       R3 K4 [""] ; [+3]
       18 MOVE                             R5 R3
       19 RETURN                           R4 2
       20 LOADNIL                          R5
       21 RETURN                           R4 2

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["MaterialSettings"]
        3 GETTABLE                         R5 R0 R6
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K1 ["AutoMaterial"]
        7 GETTABLE                         R4 R5 R6
        8 JUMPIFEQKB                       R4 TRUE ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 LOADB                            R4 1
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K0 ["MaterialSettings"]
       16 GETTABLE                         R6 R0 R7
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K2 ["FillMode"]
       20 GETTABLE                         R5 R6 R7
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K3 ["Replace"]
       24 JUMPIFEQ                         R5 R6 ; [+16]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K0 ["MaterialSettings"]
       29 GETTABLE                         R6 R0 R7
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K4 ["MaterialMode"]
       33 GETTABLE                         R5 R6 R7
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R6 R6 K3 ["Replace"]
       37 JUMPIFEQ                         R5 R6 ; [+2]
       39 LOADB                            R4 0 +1
       40 LOADB                            R4 1
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K0 ["MaterialSettings"]
       44 GETTABLE                         R6 R0 R7
       45 GETUPVAL                         R7 1
       46 GETTABLEKS                       R7 R7 K5 ["SourceMaterial"]
       48 GETTABLE                         R5 R6 R7
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R8 R8 K0 ["MaterialSettings"]
       52 GETTABLE                         R7 R0 R8
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K6 ["TargetMaterial"]
       56 GETTABLE                         R6 R7 R8
       57 JUMPIFNOT                        R2 ; [+7]
       58 GETTABLEKS                       R8 R2 K7 ["usingSlots"]
       60 JUMPIFEQKNIL                     R8 ; [+4]
       62 GETTABLEKS                       R7 R2 K7 ["usingSlots"]
       64 JUMP                             ; [+2]
       65 GETUPVAL                         R7 4
       66 CALL                             R7 0 1
       67 NOT                              R8 R3
       68 JUMPIF                           R7 ; [+24]
       69 DUPTABLE                         R9 K14 [{["autoMaterial"], ["material"], ["replace"], ["secondaryMaterial"], ["tool"], ["usingSlots"] = False}]
       70 SETTABLEKS                       R3 R9 K8 ["autoMaterial"]
       72 JUMPIFNOT                        R8 ; [+5]
       73 JUMPIFNOT                        R4 ; [+2]
       74 MOVE                             R10 R6
       75 JUMP                             ; [+3]
       76 MOVE                             R10 R5
       77 JUMP                             ; [+1]
       78 LOADNIL                          R10
       79 SETTABLEKS                       R10 R9 K9 ["material"]
       81 SETTABLEKS                       R4 R9 K10 ["replace"]
       83 JUMPIFNOT                        R8 ; [+3]
       84 JUMPIFNOT                        R4 ; [+2]
       85 MOVE                             R10 R5
       86 JUMP                             ; [+1]
       87 LOADNIL                          R10
       88 SETTABLEKS                       R10 R9 K11 ["secondaryMaterial"]
       90 SETTABLEKS                       R1 R9 K12 ["tool"]
       92 RETURN                           R9 1
       93 JUMPIFNOT                        R2 ; [+6]
       94 GETTABLEKS                       R10 R2 K15 ["resolveMaterialSlot"]
       96 JUMPIFNOT                        R10 ; [+3]
       97 GETTABLEKS                       R9 R2 K15 ["resolveMaterialSlot"]
       99 JUMP                             ; [+1]
      100 GETUPVAL                         R9 5
      101 JUMPIFNOT                        R4 ; [+9]
      102 GETUPVAL                         R12 0
      103 GETTABLEKS                       R12 R12 K0 ["MaterialSettings"]
      105 GETTABLE                         R11 R0 R12
      106 GETUPVAL                         R12 1
      107 GETTABLEKS                       R12 R12 K16 ["TargetMaterialSlot"]
      109 GETTABLE                         R10 R11 R12
      110 JUMP                             ; [+8]
      111 GETUPVAL                         R12 0
      112 GETTABLEKS                       R12 R12 K0 ["MaterialSettings"]
      114 GETTABLE                         R11 R0 R12
      115 GETUPVAL                         R12 1
      116 GETTABLEKS                       R12 R12 K17 ["SourceMaterialSlot"]
      118 GETTABLE                         R10 R11 R12
      119 JUMPIFNOT                        R4 ; [+9]
      120 GETUPVAL                         R13 0
      121 GETTABLEKS                       R13 R13 K0 ["MaterialSettings"]
      123 GETTABLE                         R12 R0 R13
      124 GETUPVAL                         R13 1
      125 GETTABLEKS                       R13 R13 K17 ["SourceMaterialSlot"]
      127 GETTABLE                         R11 R12 R13
      128 JUMP                             ; [+1]
      129 LOADNIL                          R11
      130 LOADNIL                          R12
      131 LOADNIL                          R13
      132 LOADNIL                          R14
      133 LOADNIL                          R15
      134 JUMPIFNOT                        R8 ; [+11]
      135 MOVE                             R16 R9
      136 MOVE                             R17 R10
      137 CALL                             R16 1 2
      138 MOVE                             R12 R16
      139 MOVE                             R13 R17
      140 JUMPIFNOT                        R4 ; [+5]
      141 MOVE                             R16 R9
      142 MOVE                             R17 R11
      143 CALL                             R16 1 2
      144 MOVE                             R14 R16
      145 MOVE                             R15 R17
      146 DUPTABLE                         R16 K25 [{["autoMaterial"], ["baseMaterial"], ["isVariant"], ["replace"], ["secondaryBaseMaterial"], ["secondaryIsVariant"], ["secondarySlotIndex"], ["slotIndex"], ["tool"], ["usingSlots"] = True}]
      147 SETTABLEKS                       R3 R16 K8 ["autoMaterial"]
      149 SETTABLEKS                       R12 R16 K18 ["baseMaterial"]
      151 JUMPIFEQKNIL                     R12 ; [+6]
      153 JUMPIFNOTEQKNIL                  R13 ; [+2]
      155 LOADB                            R17 0 +1
      156 LOADB                            R17 1
      157 JUMP                             ; [+1]
      158 LOADNIL                          R17
      159 SETTABLEKS                       R17 R16 K19 ["isVariant"]
      161 SETTABLEKS                       R4 R16 K10 ["replace"]
      163 SETTABLEKS                       R14 R16 K20 ["secondaryBaseMaterial"]
      165 JUMPIFEQKNIL                     R14 ; [+6]
      167 JUMPIFNOTEQKNIL                  R15 ; [+2]
      169 LOADB                            R17 0 +1
      170 LOADB                            R17 1
      171 JUMP                             ; [+1]
      172 LOADNIL                          R17
      173 SETTABLEKS                       R17 R16 K21 ["secondaryIsVariant"]
      175 JUMPIFNOT                        R8 ; [+2]
      176 MOVE                             R17 R11
      177 JUMP                             ; [+1]
      178 LOADNIL                          R17
      179 SETTABLEKS                       R17 R16 K22 ["secondarySlotIndex"]
      181 JUMPIFNOT                        R8 ; [+2]
      182 MOVE                             R17 R10
      183 JUMP                             ; [+1]
      184 LOADNIL                          R17
      185 SETTABLEKS                       R17 R16 K23 ["slotIndex"]
      187 SETTABLEKS                       R1 R16 K12 ["tool"]
      189 RETURN                           R16 1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["TerrainMaterialTelemetry"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K11 ["Flags"]
       31 GETTABLEKS                       R4 R4 K12 ["getFFlagEnableTerrainPalette"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Resources"]
       40 GETTABLEKS                       R5 R5 K13 ["Constants"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K14 ["Types"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R5 K15 ["BrushSettings"]
       52 GETTABLEKS                       R7 R5 K16 ["Category"]
       54 GETTABLEKS                       R8 R5 K17 ["FillMode"]
       56 GETTABLEKS                       R9 R5 K18 ["MaterialMode"]
       58 GETTABLEKS                       R10 R5 K19 ["MaterialSettings"]
       60 GETTABLEKS                       R11 R5 K20 ["SeaLevelSettings"]
       62 GETTABLEKS                       R12 R5 K21 ["SelectionSettings"]
       64 GETTABLEKS                       R13 R5 K22 ["Tool"]
       66 GETTABLEKS                       R14 R5 K23 ["TransformSettings"]
       68 NEWTABLE                         R15 8 0
       70 DUPCLOSURE                       R16 K24 [PROTO_0]
       71 DUPCLOSURE                       R17 K25 [PROTO_1]
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R6
       74 SETTABLEKS                       R17 R15 K26 ["getBrushPayload"]
       76 DUPCLOSURE                       R17 K27 [PROTO_2]
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R16
       83 SETTABLEKS                       R17 R15 K28 ["getMaterialPayload"]
       85 DUPCLOSURE                       R17 K29 [PROTO_3]
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R12
       91 SETTABLEKS                       R17 R15 K30 ["getRegionPayload"]
       93 DUPCLOSURE                       R17 K31 [PROTO_4]
       94 CAPTURE                          VAL R4
       95 SETTABLEKS                       R17 R15 K32 ["NormalizeBrushTimer"]
       97 DUPCLOSURE                       R17 K33 [PROTO_5]
       98 CAPTURE                          VAL R4
       99 SETTABLEKS                       R17 R15 K34 ["NormalizeDepthFirstSearch"]
      101 DUPCLOSURE                       R17 K35 [PROTO_6]
      102 CAPTURE                          VAL R4
      103 SETTABLEKS                       R17 R15 K36 ["NormalizeRegionTimer"]
      105 RETURN                           R15 1
