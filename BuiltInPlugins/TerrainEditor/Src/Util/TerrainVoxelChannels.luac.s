PROTO_0:
        0 LOADB                            R1 0
        1 MODK                             R2 R0 K0 [1]
        2 JUMPIFNOTEQKN                    R2 K1 [0] ; [+10]
        4 LOADB                            R1 0
        5 LOADN                            R2 0
        6 JUMPIFNOTLE                      R2 R0 ; [+6]
        8 LOADN                            R2 63
        9 JUMPIFLE                         R0 R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R2 0
        1 MODK                             R3 R1 K0 [1]
        2 JUMPIFNOTEQKN                    R3 K1 [0] ; [+10]
        4 LOADB                            R2 0
        5 LOADN                            R3 0
        6 JUMPIFNOTLE                      R3 R1 ; [+6]
        8 LOADN                            R3 63
        9 JUMPIFLE                         R1 R3 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 JUMPIF                           R2 ; [+2]
       14 LOADB                            R2 0
       15 RETURN                           R2 1
       16 JUMPIFEQKN                       R1 K1 [0] ; [+3]
       18 JUMPIFNOTEQKN                    R1 K0 [1] ; [+3]
       20 LOADB                            R2 1
       21 RETURN                           R2 1
       22 MOVE                             R5 R1
       23 NAMECALL                         R3 R0 K2 ["GetMaterialSlot"]
       25 CALL                             R3 2 1
       26 JUMPIFNOTEQKNIL                  R3 ; [+2]
       28 LOADB                            R2 0 +1
       29 LOADB                            R2 1
       30 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["isSlotValid"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 LOADK                            R5 K1 ["Invalid terrain material slot index: %*"]
        7 MOVE                             R7 R1
        8 NAMECALL                         R5 R5 K2 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 FASTCALL2                        ASSERT R3 R4 ; [+3]
       14 GETIMPORT                        R2 K4 [assert]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R4 R1
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["VoxelResolution"]
        4 GETUPVAL                         R6 1
        5 NAMECALL                         R2 R0 K1 ["ReadVoxelChannels"]
        7 CALL                             R2 4 1
        8 DUPTABLE                         R3 K5 [{"SolidMaterialIndex", "SolidOccupancy", "LiquidOccupancy"}]
        9 GETTABLEKS                       R4 R2 K2 ["SolidMaterialIndex"]
       11 SETTABLEKS                       R4 R3 K2 ["SolidMaterialIndex"]
       13 GETTABLEKS                       R4 R2 K3 ["SolidOccupancy"]
       15 SETTABLEKS                       R4 R3 K3 ["SolidOccupancy"]
       17 GETTABLEKS                       R4 R2 K4 ["LiquidOccupancy"]
       19 SETTABLEKS                       R4 R3 K4 ["LiquidOccupancy"]
       21 RETURN                           R3 1

PROTO_4:
        0 MOVE                             R5 R1
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K0 ["VoxelResolution"]
        4 MOVE                             R7 R2
        5 NAMECALL                         R3 R0 K1 ["WriteVoxelChannels"]
        7 CALL                             R3 4 0
        8 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R4 R2
        1 LOADNIL                          R5
        2 LOADNIL                          R6
        3 FORGPREP                         R4
        4 GETUPVAL                         R9 0
        5 GETTABLEKS                       R9 R9 K0 ["assertSlotValid"]
        7 MOVE                             R10 R0
        8 MOVE                             R11 R8
        9 CALL                             R9 2 0
       10 FORGLOOP                         R4 2 ; [-7]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K1 ["read"]
       15 MOVE                             R5 R0
       16 MOVE                             R6 R1
       17 CALL                             R4 2 1
       18 MOVE                             R5 R3
       19 MOVE                             R6 R4
       20 CALL                             R5 1 1
       21 JUMPIFNOT                        R5 ; [+7]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K2 ["write"]
       25 MOVE                             R7 R0
       26 MOVE                             R8 R1
       27 MOVE                             R9 R4
       28 CALL                             R6 3 0
       29 RETURN                           R5 1

PROTO_6:
        0 LOADB                            R4 0
        1 MODK                             R5 R1 K0 [1]
        2 JUMPIFNOTEQKN                    R5 K1 [0] ; [+10]
        4 LOADB                            R4 0
        5 LOADN                            R5 0
        6 JUMPIFNOTLE                      R5 R1 ; [+6]
        8 LOADN                            R5 63
        9 JUMPIFLE                         R1 R5 ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 LOADK                            R6 K2 ["Invalid terrain material slot index: %*"]
       14 MOVE                             R8 R1
       15 NAMECALL                         R6 R6 K3 ["format"]
       17 CALL                             R6 2 1
       18 MOVE                             R5 R6
       19 FASTCALL2                        ASSERT R4 R5 ; [+3]
       21 GETIMPORT                        R3 K5 [assert]
       23 CALL                             R3 2 0
       24 MOVE                             R3 R2
       25 JUMPIF                           R3 ; [+9]
       26 GETTABLEKS                       R4 R0 K6 ["occupancy"]
       28 GETTABLEKS                       R5 R0 K7 ["liquidOccupancy"]
       30 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       32 GETIMPORT                        R3 K10 [math.max]
       34 CALL                             R3 2 1
       35 LOADB                            R5 0
       36 LOADN                            R6 0
       37 JUMPIFNOTLE                      R6 R3 ; [+6]
       39 LOADN                            R6 1
       40 JUMPIFLE                         R3 R6 ; [+2]
       42 LOADB                            R5 0 +1
       43 LOADB                            R5 1
       44 LOADK                            R7 K11 ["Invalid terrain occupancy: %*"]
       45 MOVE                             R9 R3
       46 NAMECALL                         R7 R7 K3 ["format"]
       48 CALL                             R7 2 1
       49 MOVE                             R6 R7
       50 FASTCALL2                        ASSERT R5 R6 ; [+3]
       52 GETIMPORT                        R4 K5 [assert]
       54 CALL                             R4 2 0
       55 LOADNIL                          R4
       56 JUMPIFNOTEQKN                    R1 K1 [0] ; [+4]
       58 DUPTABLE                         R5 K13 [{["materialIndex"] = 0, ["occupancy"] = 0, ["liquidOccupancy"] = 0}]
       59 MOVE                             R4 R5
       60 JUMP                             ; [+13]
       61 JUMPIFNOTEQKN                    R1 K0 [1] ; [+6]
       63 DUPTABLE                         R5 K14 [{["materialIndex"] = 0, ["occupancy"] = 0, ["liquidOccupancy"]}]
       64 SETTABLEKS                       R3 R5 K7 ["liquidOccupancy"]
       66 MOVE                             R4 R5
       67 JUMP                             ; [+6]
       68 DUPTABLE                         R5 K15 [{["materialIndex"], ["occupancy"], ["liquidOccupancy"] = 0}]
       69 SETTABLEKS                       R1 R5 K12 ["materialIndex"]
       71 SETTABLEKS                       R3 R5 K6 ["occupancy"]
       73 MOVE                             R4 R5
       74 LOADB                            R5 1
       75 GETTABLEKS                       R6 R4 K12 ["materialIndex"]
       77 GETTABLEKS                       R7 R0 K12 ["materialIndex"]
       79 JUMPIFNOTEQ                      R6 R7 ; [+16]
       81 LOADB                            R5 1
       82 GETTABLEKS                       R6 R4 K6 ["occupancy"]
       84 GETTABLEKS                       R7 R0 K6 ["occupancy"]
       86 JUMPIFNOTEQ                      R6 R7 ; [+9]
       88 GETTABLEKS                       R6 R4 K7 ["liquidOccupancy"]
       90 GETTABLEKS                       R7 R0 K7 ["liquidOccupancy"]
       92 JUMPIFNOTEQ                      R6 R7 ; [+2]
       94 LOADB                            R5 0 +1
       95 LOADB                            R5 1
       96 JUMPIFNOT                        R5 ; [+2]
       97 MOVE                             R6 R4
       98 JUMP                             ; [+1]
       99 MOVE                             R6 R0
      100 MOVE                             R7 R5
      101 RETURN                           R6 2

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
       16 NEWTABLE                         R2 0 3
       18 LOADK                            R3 K9 ["SolidMaterialIndex"]
       19 LOADK                            R4 K10 ["SolidOccupancy"]
       20 LOADK                            R5 K11 ["LiquidOccupancy"]
       21 SETLIST                          R2 R3 3 [1]
       23 DUPTABLE                         R3 K16 [{["AIR_SLOT_INDEX"] = 0, ["WATER_SLOT_INDEX"] = 1}]
       24 DUPCLOSURE                       R4 K17 [PROTO_0]
       25 DUPCLOSURE                       R5 K18 [PROTO_1]
       26 SETTABLEKS                       R5 R3 K19 ["isSlotValid"]
       28 DUPCLOSURE                       R5 K20 [PROTO_2]
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R5 R3 K21 ["assertSlotValid"]
       32 DUPCLOSURE                       R5 K22 [PROTO_3]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R5 R3 K23 ["read"]
       37 DUPCLOSURE                       R5 K24 [PROTO_4]
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R5 R3 K25 ["write"]
       41 DUPCLOSURE                       R5 K26 [PROTO_5]
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R5 R3 K27 ["edit"]
       45 DUPCLOSURE                       R5 K28 [PROTO_6]
       46 SETTABLEKS                       R5 R3 K29 ["transition"]
       48 RETURN                           R3 1
